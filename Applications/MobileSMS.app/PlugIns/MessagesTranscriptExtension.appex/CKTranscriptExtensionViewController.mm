@interface CKTranscriptExtensionViewController
+ (void)initialize;
- (CKDetailsNavigationController)detailsNavigationController;
- (NSExtension)weakExtension;
- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)controller;
- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)controller;
- (void)chatControllerDidChangeBackground:(id)background;
- (void)doneButtonPressedForChatController:(id)controller;
- (void)presentConversationWithMessageGUID:(id)d attachmentGUID:(id)iD;
- (void)viewDidLoad;
@end

@implementation CKTranscriptExtensionViewController

+ (void)initialize
{
  if (CKIsRunningInMessagesTranscriptExtension())
  {
    if (qword_100008B30 != -1)
    {
      sub_100001A30();
    }

    v2 = dispatch_get_global_queue(2, 0);
    dispatch_async(v2, &stru_100004290);

    dispatch_async(&_dispatch_main_q, &stru_1000042B0);
  }
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = CKTranscriptExtensionViewController;
  [(CKTranscriptExtensionViewController *)&v12 viewDidLoad];
  extensionContext = [(CKTranscriptExtensionViewController *)self extensionContext];
  inputItems = [extensionContext inputItems];
  firstObject = [inputItems firstObject];

  if (firstObject)
  {
    userInfo = [firstObject userInfo];
    v7 = [userInfo valueForKey:@"messageGUID"];

    userInfo2 = [firstObject userInfo];
    v9 = [userInfo2 valueForKey:@"attachmentGUID"];

    if (![v7 length])
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "chatGUID or messageGUID key not provided in extension context", v11, 2u);
        }
      }

      exit(0);
    }

    [(CKTranscriptExtensionViewController *)self presentConversationWithMessageGUID:v7 attachmentGUID:v9];
  }
}

- (void)presentConversationWithMessageGUID:(id)d attachmentGUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = [CKSocialLayerChatController chatIdentifierForMessageWithGUID:dCopy];
  v9 = +[IMChatRegistry sharedRegistry];
  v10 = [v9 existingChatWithChatIdentifier:v8];

  if (!v10)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = dCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "The messageGUID %@ doesn't correspond to a chat. Nothing to present.", &v15, 0xCu);
      }
    }

    exit(0);
  }

  v11 = [[CKConversation alloc] initWithChat:v10];
  [v11 setLoadedMessageCount:50];
  v12 = [[CKSocialLayerChatController alloc] initWithConversation:v11];
  [v12 setMessageGUID:dCopy];
  [v12 setAttachmentGUID:iDCopy];
  [v12 setDelegate:self];
  v17 = v12;
  v13 = [NSArray arrayWithObjects:&v17 count:1];
  [(CKTranscriptExtensionViewController *)self setViewControllers:v13];
}

- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)controller
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)controller
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)chatControllerDidChangeBackground:(id)background
{
  backgroundCopy = background;
  transcriptBackground = [backgroundCopy transcriptBackground];
  viewIfLoaded = [(CKTranscriptExtensionViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  windowScene = [window windowScene];
  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = backgroundCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Did change background on chat controller: %@", &v17, 0xCu);
  }

  if (transcriptBackground)
  {
    v10 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [transcriptBackground luminance];
      v10 = v11;
    }

    if (objc_opt_respondsToSelector())
    {
      contentDerivedUserInterfaceStyle = [transcriptBackground contentDerivedUserInterfaceStyle];
    }

    else
    {
      contentDerivedUserInterfaceStyle = 1;
    }

    traitOverrides = [windowScene traitOverrides];
    [traitOverrides setNSIntegerValue:objc_msgSend(&__kCFBooleanTrue forTrait:{"integerValue"), objc_opt_class()}];

    traitOverrides2 = [windowScene traitOverrides];
    [traitOverrides2 setCGFloatValue:objc_opt_class() forTrait:v10];

    [window setOverrideUserInterfaceStyle:contentDerivedUserInterfaceStyle];
  }

  else
  {
    traitOverrides3 = [windowScene traitOverrides];
    [traitOverrides3 removeTrait:objc_opt_class()];

    traitOverrides4 = [windowScene traitOverrides];
    [traitOverrides4 removeTrait:objc_opt_class()];
  }
}

- (void)doneButtonPressedForChatController:(id)controller
{
  extensionContext = [(CKTranscriptExtensionViewController *)self extensionContext];
  _auxiliaryConnection = [extensionContext _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];

  [remoteObjectProxy requestDismissal];
}

- (NSExtension)weakExtension
{
  WeakRetained = objc_loadWeakRetained(&self->_weakExtension);

  return WeakRetained;
}

- (CKDetailsNavigationController)detailsNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsNavigationController);

  return WeakRetained;
}

@end