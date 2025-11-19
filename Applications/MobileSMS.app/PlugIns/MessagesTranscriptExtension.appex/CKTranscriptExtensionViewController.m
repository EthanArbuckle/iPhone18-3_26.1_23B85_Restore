@interface CKTranscriptExtensionViewController
+ (void)initialize;
- (CKDetailsNavigationController)detailsNavigationController;
- (NSExtension)weakExtension;
- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)a3;
- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)a3;
- (void)chatControllerDidChangeBackground:(id)a3;
- (void)doneButtonPressedForChatController:(id)a3;
- (void)presentConversationWithMessageGUID:(id)a3 attachmentGUID:(id)a4;
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
  v3 = [(CKTranscriptExtensionViewController *)self extensionContext];
  v4 = [v3 inputItems];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [v5 userInfo];
    v7 = [v6 valueForKey:@"messageGUID"];

    v8 = [v5 userInfo];
    v9 = [v8 valueForKey:@"attachmentGUID"];

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

- (void)presentConversationWithMessageGUID:(id)a3 attachmentGUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CKSocialLayerChatController chatIdentifierForMessageWithGUID:v6];
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
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "The messageGUID %@ doesn't correspond to a chat. Nothing to present.", &v15, 0xCu);
      }
    }

    exit(0);
  }

  v11 = [[CKConversation alloc] initWithChat:v10];
  [v11 setLoadedMessageCount:50];
  v12 = [[CKSocialLayerChatController alloc] initWithConversation:v11];
  [v12 setMessageGUID:v6];
  [v12 setAttachmentGUID:v7];
  [v12 setDelegate:self];
  v17 = v12;
  v13 = [NSArray arrayWithObjects:&v17 count:1];
  [(CKTranscriptExtensionViewController *)self setViewControllers:v13];
}

- (UIEdgeInsets)initialSystemMinimumLayoutMarginsForChatController:(id)a3
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

- (UIEdgeInsets)initialSafeAreaInsetsForChatController:(id)a3
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

- (void)chatControllerDidChangeBackground:(id)a3
{
  v4 = a3;
  v5 = [v4 transcriptBackground];
  v6 = [(CKTranscriptExtensionViewController *)self viewIfLoaded];
  v7 = [v6 window];

  v8 = [v7 windowScene];
  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Did change background on chat controller: %@", &v17, 0xCu);
  }

  if (v5)
  {
    v10 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [v5 luminance];
      v10 = v11;
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = [v5 contentDerivedUserInterfaceStyle];
    }

    else
    {
      v12 = 1;
    }

    v15 = [v8 traitOverrides];
    [v15 setNSIntegerValue:objc_msgSend(&__kCFBooleanTrue forTrait:{"integerValue"), objc_opt_class()}];

    v16 = [v8 traitOverrides];
    [v16 setCGFloatValue:objc_opt_class() forTrait:v10];

    [v7 setOverrideUserInterfaceStyle:v12];
  }

  else
  {
    v13 = [v8 traitOverrides];
    [v13 removeTrait:objc_opt_class()];

    v14 = [v8 traitOverrides];
    [v14 removeTrait:objc_opt_class()];
  }
}

- (void)doneButtonPressedForChatController:(id)a3
{
  v3 = [(CKTranscriptExtensionViewController *)self extensionContext];
  v4 = [v3 _auxiliaryConnection];
  v5 = [v4 remoteObjectProxy];

  [v5 requestDismissal];
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