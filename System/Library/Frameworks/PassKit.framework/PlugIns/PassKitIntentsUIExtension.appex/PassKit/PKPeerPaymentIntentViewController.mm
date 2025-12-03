@interface PKPeerPaymentIntentViewController
- (CGSize)_desiredSize;
- (id)localizedPeerPaymentSiriString:(id)string;
- (void)_configureSnippetContentViewWithCurrency:(id)currency amount:(id)amount note:(id)note toFieldText:(id)text bubbleViewState:(unint64_t)state recipient:(id)recipient;
- (void)configureViewForParameters:(id)parameters ofInteraction:(id)interaction interactiveBehavior:(unint64_t)behavior context:(unint64_t)context completion:(id)completion;
- (void)configureWithInteraction:(id)interaction context:(unint64_t)context completion:(id)completion;
- (void)viewDidLayoutSubviews;
@end

@implementation PKPeerPaymentIntentViewController

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentIntentViewController;
  [(PKPeerPaymentIntentViewController *)&v5 viewDidLayoutSubviews];
  snippetContentView = self->_snippetContentView;
  if (snippetContentView)
  {
    view = [(PKPeerPaymentIntentViewController *)self view];
    [view bounds];
    [(PKPeerPaymentSiriSnippetContentView *)snippetContentView setFrame:?];
  }
}

- (void)configureViewForParameters:(id)parameters ofInteraction:(id)interaction interactiveBehavior:(unint64_t)behavior context:(unint64_t)context completion:(id)completion
{
  parametersCopy = parameters;
  interactionCopy = interaction;
  completionCopy = completion;
  intent = [interactionCopy intent];
  v15 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *buf = 138543618;
    v43 = v17;
    v44 = 2112;
    v45 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Configuring view for %{public}@ with parameter key paths: %@", buf, 0x16u);
  }

  if ([parametersCopy count])
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = parametersCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received unexpected parameter render request containing a non-empty parameter set. Displaying generic UI for parameters: %@", buf, 0xCu);
    }

LABEL_6:

    (*(completionCopy + 2))(completionCopy, 0, 0, CGSizeZero.width, CGSizeZero.height);
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = self;
    contextCopy = context;
    v18 = objc_opt_class();
    v35 = NSStringFromSelector("payee");
    v34 = [INParameter parameterForClass:v18 keyPath:?];
    v41[0] = v34;
    v19 = objc_opt_class();
    v33 = NSStringFromSelector("currencyAmount");
    v20 = [INParameter parameterForClass:v19 keyPath:?];
    v41[1] = v20;
    v21 = objc_opt_class();
    v22 = NSStringFromSelector("note");
    v23 = [INParameter parameterForClass:v21 keyPath:v22];
    v41[2] = v23;
    v24 = [INParameter parameterForClass:objc_opt_class() keyPath:@"paymentRecord.feeAmount"];
    v41[3] = v24;
    v25 = [NSArray arrayWithObjects:v41 count:4];

    context = contextCopy;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138543618;
        v43 = v31;
        v44 = 2112;
        v45 = parametersCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received unexpected intent class: %{public}@. Displaying generic UI for parameters: %@", buf, 0x16u);
      }

      goto LABEL_6;
    }

    selfCopy2 = self;
    v26 = objc_opt_class();
    v35 = NSStringFromSelector("payer");
    v34 = [INParameter parameterForClass:v26 keyPath:?];
    v40[0] = v34;
    v27 = objc_opt_class();
    v33 = NSStringFromSelector("currencyAmount");
    v20 = [INParameter parameterForClass:v27 keyPath:?];
    v40[1] = v20;
    v28 = objc_opt_class();
    v22 = NSStringFromSelector("note");
    v23 = [INParameter parameterForClass:v28 keyPath:v22];
    v40[2] = v23;
    v25 = [NSArray arrayWithObjects:v40 count:3];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v25;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Rendering the primary content view. Telling Siri the following parameters were rendered: %@", buf, 0xCu);
  }

  [NSSet setWithArray:v25];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000014D0;
  v38 = v37[3] = &unk_100008258;
  v39 = completionCopy;
  v29 = v38;
  [(PKPeerPaymentIntentViewController *)selfCopy2 configureWithInteraction:interactionCopy context:context completion:v37];

LABEL_14:
}

- (void)configureWithInteraction:(id)interaction context:(unint64_t)context completion:(id)completion
{
  completionCopy = completion;
  intent = [interaction intent];
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = intent;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Configuring snippet for intent %@", &v24, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = intent;
    currencyAmount = [v10 currencyAmount];
    amount = [currencyAmount amount];

    currencyAmount2 = [v10 currencyAmount];
    currencyCode = [currencyAmount2 currencyCode];

    note = [v10 note];
    payee = [v10 payee];
    displayName = [payee displayName];

    payee2 = [v10 payee];
    v19 = 5;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      payee2 = 0;
      note = 0;
      currencyCode = 0;
      amount = 0;
      displayName = 0;
      goto LABEL_13;
    }

    v20 = intent;
    currencyAmount3 = [v20 currencyAmount];
    amount = [currencyAmount3 amount];

    currencyAmount4 = [v20 currencyAmount];
    currencyCode = [currencyAmount4 currencyCode];

    note = [v20 note];
    payer = [v20 payer];
    displayName = [payer displayName];

    payee2 = [v20 payer];
    v19 = 1;
  }

  if (amount)
  {
    if (currencyCode)
    {
      if (displayName)
      {
        [(PKPeerPaymentIntentViewController *)self _configureSnippetContentViewWithCurrency:currencyCode amount:amount note:note toFieldText:displayName bubbleViewState:v19 recipient:payee2];
        [(PKPeerPaymentSiriSnippetContentView *)self->_snippetContentView setNeedsLayout];
        if (completionCopy)
        {
          [(PKPeerPaymentIntentViewController *)self _desiredSize];
          completionCopy[2](completionCopy);
        }
      }
    }
  }

LABEL_13:
}

- (CGSize)_desiredSize
{
  extensionContext = [(PKPeerPaymentIntentViewController *)self extensionContext];
  [extensionContext hostedViewMaximumAllowedSize];
  v5 = v4;
  v7 = v6;

  [(PKPeerPaymentSiriSnippetContentView *)self->_snippetContentView sizeThatFits:v5, v7];
  v9 = v8;
  v11 = v10;
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134218240;
    v16 = v9;
    v17 = 2048;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Snippet content view desired size: %.1f x %.1f", &v15, 0x16u);
  }

  v13 = v9;
  v14 = v11;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)_configureSnippetContentViewWithCurrency:(id)currency amount:(id)amount note:(id)note toFieldText:(id)text bubbleViewState:(unint64_t)state recipient:(id)recipient
{
  recipientCopy = recipient;
  if (self->_snippetContentView)
  {
    peerPaymentBubbleView = self->_peerPaymentBubbleView;
    textCopy = text;
    noteCopy = note;
    amountCopy = amount;
    currencyCopy = currency;
    [(PKPeerPaymentBubbleView *)peerPaymentBubbleView setAmount:amountCopy];

    [(PKPeerPaymentBubbleView *)self->_peerPaymentBubbleView setCurrency:currencyCopy];
    [(PKPeerPaymentBubbleView *)self->_peerPaymentBubbleView setState:state];
    [(PKPeerPaymentSiriSnippetContentView *)self->_snippetContentView setToFieldText:textCopy];

    [(PKPeerPaymentSiriSnippetContentView *)self->_snippetContentView setMemoText:noteCopy];
  }

  else
  {
    textCopy2 = text;
    noteCopy2 = note;
    amountCopy2 = amount;
    currencyCopy2 = currency;
    v23 = [[PKPeerPaymentBubbleView alloc] initWithAmount:amountCopy2 currency:currencyCopy2 state:state];

    v24 = self->_peerPaymentBubbleView;
    self->_peerPaymentBubbleView = v23;

    [(PKPeerPaymentBubbleView *)self->_peerPaymentBubbleView setDisplaysCashLogo:1];
    [(PKPeerPaymentBubbleView *)self->_peerPaymentBubbleView setLiveRenderingEnabled:1];
    noteCopy = [[PKPeerPaymentMessageBalloonView alloc] initWithBubbleView:self->_peerPaymentBubbleView peerPaymentType:1];
    [noteCopy setHasTail:0];
    v25 = [[PKPeerPaymentSiriSnippetContentView alloc] initWithBalloonView:noteCopy];
    snippetContentView = self->_snippetContentView;
    self->_snippetContentView = v25;

    [(PKPeerPaymentSiriSnippetContentView *)self->_snippetContentView setToFieldText:textCopy2];
    [(PKPeerPaymentSiriSnippetContentView *)self->_snippetContentView setMemoText:noteCopy2];

    [(PKPeerPaymentSiriSnippetContentView *)self->_snippetContentView setRecipient:recipientCopy];
    view = [(PKPeerPaymentIntentViewController *)self view];
    [view addSubview:self->_snippetContentView];
  }
}

- (id)localizedPeerPaymentSiriString:(id)string
{
  stringCopy = string;
  v4 = PKPassKitBundle();
  v5 = [v4 assistantUILocalizedStringFromSiriLanguageForKey:stringCopy table:@"PeerPayment_Localizable"];

  return v5;
}

@end