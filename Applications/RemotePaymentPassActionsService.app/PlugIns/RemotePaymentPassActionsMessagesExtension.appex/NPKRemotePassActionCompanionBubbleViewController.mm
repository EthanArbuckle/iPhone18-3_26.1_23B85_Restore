@interface NPKRemotePassActionCompanionBubbleViewController
+ (id)_cardArtImageForMessage:(id)message;
+ (id)_fallbackHeaderImageForMessage:(id)message;
+ (id)_makeViewModelForMessage:(id)message;
- (CGSize)suggestedViewSizeThatFits:(CGSize)fits;
- (CGSize)suggestedViewSizeThatFits:(CGSize)fits message:(id)message;
- (NPKRemotePassActionCompanionBubbleViewController)initWithMessage:(id)message delegate:(id)delegate;
- (void)_setUpMessageBubbleForMessage:(id)message;
- (void)_updateMessageBubbleForMessage:(id)message;
- (void)remotePassActionRequestBubbleContentViewDidReceiveTap:(id)tap;
- (void)viewDidLoad;
@end

@implementation NPKRemotePassActionCompanionBubbleViewController

- (NPKRemotePassActionCompanionBubbleViewController)initWithMessage:(id)message delegate:(id)delegate
{
  messageCopy = message;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = NPKRemotePassActionCompanionBubbleViewController;
  v9 = [(NPKRemotePassActionCompanionBubbleViewController *)&v14 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_message, message);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v11 = [[NPKRemotePassActionCompanionBubbleContentView alloc] initWithDelegate:v10];
    bubbleContentView = v10->_bubbleContentView;
    v10->_bubbleContentView = v11;
  }

  return v10;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = NPKRemotePassActionCompanionBubbleViewController;
  [(NPKRemotePassActionCompanionBubbleViewController *)&v5 viewDidLoad];
  [(NPKRemotePassActionCompanionBubbleViewController *)self _setUpMessageBubbleForMessage:self->_message];
  backgroundColor = [(NPKRemotePassActionCompanionBubbleContentView *)self->_bubbleContentView backgroundColor];
  view = [(NPKRemotePassActionCompanionBubbleViewController *)self view];
  [view setBackgroundColor:backgroundColor];
}

- (CGSize)suggestedViewSizeThatFits:(CGSize)fits
{
  [(NPKRemotePassActionCompanionBubbleViewController *)self suggestedViewSizeThatFits:self->_message message:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)suggestedViewSizeThatFits:(CGSize)fits message:(id)message
{
  height = fits.height;
  v5 = fmin(fits.width, 230.0);
  messageCopy = message;
  v7 = [objc_opt_class() _makeViewModelForMessage:messageCopy];

  [NPKRemotePassActionCompanionBubbleContentView contentViewHeightForViewModel:v7 withWidth:v5];
  v9 = fmin(v8, height);
  if (v9 < 0.0)
  {
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 136446722;
        v16 = "[NPKRemotePassActionCompanionBubbleViewController suggestedViewSizeThatFits:message:]";
        v17 = 2082;
        v18 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook/RemotePaymentPassActionsCompanionMessagesExtension/NPKRemotePassActionCompanionBubbleViewController.m";
        v19 = 2048;
        v20 = 82;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Expected the content height to be a positive number!)", &v15, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v13 = v5 + 0.0;
  v14 = v9 + 0.0;
  result.height = v14;
  result.width = v13;
  return result;
}

+ (id)_makeViewModelForMessage:(id)message
{
  messageCopy = message;
  remotePassAction = [messageCopy remotePassAction];
  v6 = [self _cardArtImageForMessage:remotePassAction];
  if ([remotePassAction isResponse])
  {
    v7 = [NPKRemotePassActionCompanionBubbleContentViewModel alloc];
    passLocalizedDescription = [remotePassAction passLocalizedDescription];
    caption = [remotePassAction caption];
    v10 = [(NPKRemotePassActionCompanionBubbleContentViewModel *)v7 initWithCardArtImage:v6 shouldDimPass:0 titleText:passLocalizedDescription detailText:caption actionButtonText:0 showsActionButton:0];
  }

  else
  {
    if (([remotePassAction supportsTopUp] & 1) != 0 || objc_msgSend(remotePassAction, "supportsCommutePlanRenewal"))
    {
      passLocalizedDescription = [messageCopy request];
      v11 = [NPKRemotePassActionCompanionBubbleContentViewModel alloc];
      caption = [passLocalizedDescription caption];
      actionText = [passLocalizedDescription actionText];
      v13 = [messageCopy isFromMe] ^ 1;
      v14 = v11;
      v15 = v6;
      v16 = caption;
    }

    else
    {
      v17 = [NPKRemotePassActionCompanionBubbleContentViewModel alloc];
      passLocalizedDescription = [remotePassAction caption];
      caption = [NSBundle bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
      actionText = [caption localizedStringForKey:@"REQUEST_REMOTE_PAYMENT_PASS_ACTION_UPDATE_CAPTION" value:&stru_100014880 table:@"NanoPassKitUI-RemotePaymentPassAction"];
      v13 = [messageCopy isFromMe] ^ 1;
      v14 = v17;
      v15 = v6;
      v16 = passLocalizedDescription;
    }

    v10 = [(NPKRemotePassActionCompanionBubbleContentViewModel *)v14 initWithCardArtImage:v15 shouldDimPass:0 titleText:v16 detailText:0 actionButtonText:actionText showsActionButton:v13];
  }

  return v10;
}

+ (id)_cardArtImageForMessage:(id)message
{
  messageCopy = message;
  image = [messageCopy image];
  v6 = image;
  if (image)
  {
    v7 = image;
  }

  else
  {
    v7 = [self _fallbackHeaderImageForMessage:messageCopy];
  }

  v8 = v7;

  return v8;
}

+ (id)_fallbackHeaderImageForMessage:(id)message
{
  cardType = [message cardType];
  if (cardType <= 2)
  {
    v4 = [UIImage imageNamed:off_1000145A0[cardType]];
  }

  return v4;
}

- (void)_setUpMessageBubbleForMessage:(id)message
{
  messageCopy = message;
  if (self->_bubbleContentView)
  {
    v5 = [objc_opt_class() _makeViewModelForMessage:messageCopy];
    [(NPKRemotePassActionCompanionBubbleContentView *)self->_bubbleContentView setViewModel:v5];

    isFromMe = [messageCopy isFromMe];
    if (isFromMe)
    {
      v7 = -6.0;
    }

    else
    {
      v7 = 0.0;
    }

    if (isFromMe)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 6.0;
    }

    view = [(NPKRemotePassActionCompanionBubbleViewController *)self view];
    [view addSubview:self->_bubbleContentView];

    topAnchor = [(NPKRemotePassActionCompanionBubbleContentView *)self->_bubbleContentView topAnchor];
    view2 = [(NPKRemotePassActionCompanionBubbleViewController *)self view];
    topAnchor2 = [view2 topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v34[0] = v28;
    bottomAnchor = [(NPKRemotePassActionCompanionBubbleContentView *)self->_bubbleContentView bottomAnchor];
    view3 = [(NPKRemotePassActionCompanionBubbleViewController *)self view];
    bottomAnchor2 = [view3 bottomAnchor];
    v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    v34[1] = v10;
    leadingAnchor = [(NPKRemotePassActionCompanionBubbleContentView *)self->_bubbleContentView leadingAnchor];
    [(NPKRemotePassActionCompanionBubbleViewController *)self view];
    v12 = v31 = messageCopy;
    leadingAnchor2 = [v12 leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v8];
    v34[2] = v14;
    trailingAnchor = [(NPKRemotePassActionCompanionBubbleContentView *)self->_bubbleContentView trailingAnchor];
    view4 = [(NPKRemotePassActionCompanionBubbleViewController *)self view];
    trailingAnchor2 = [view4 trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v7];
    v34[3] = v18;
    v19 = [NSArray arrayWithObjects:v34 count:4];
    [NSLayoutConstraint activateConstraints:v19];

    messageCopy = v31;
    v20 = topAnchor;
  }

  else
  {
    v21 = pk_RemotePassAction_log();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

    if (!v22)
    {
      goto LABEL_10;
    }

    v20 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      bubbleContentView = self->_bubbleContentView;
      *buf = 138412290;
      v33 = bubbleContentView;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Warning: Unable to set up message bubble for nil message view! messageView: %@", buf, 0xCu);
    }
  }

LABEL_10:
}

- (void)_updateMessageBubbleForMessage:(id)message
{
  messageCopy = message;
  v5 = [objc_opt_class() _makeViewModelForMessage:messageCopy];

  [(NPKRemotePassActionCompanionBubbleContentView *)self->_bubbleContentView setViewModel:v5];
  view = [(NPKRemotePassActionCompanionBubbleViewController *)self view];
  [view setNeedsLayout];

  view2 = [(NPKRemotePassActionCompanionBubbleViewController *)self view];
  [view2 layoutIfNeeded];
}

- (void)remotePassActionRequestBubbleContentViewDidReceiveTap:(id)tap
{
  tapCopy = tap;
  v5 = pk_RemotePassAction_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      message = self->_message;
      v14 = 138412546;
      v15 = tapCopy;
      v16 = 2112;
      v17 = message;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Bubble view: %@ did receive tap for message: %@", &v14, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 remotePassActionRequestBubbleViewController:self didTapMessage:self->_message];
  }

  else
  {
    v11 = pk_RemotePassAction_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (!v12)
    {
      goto LABEL_8;
    }

    v10 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: Unable to handle tap. Did you forget to set the delegate? delegate: %@", &v14, 0xCu);
    }
  }

LABEL_8:
}

@end