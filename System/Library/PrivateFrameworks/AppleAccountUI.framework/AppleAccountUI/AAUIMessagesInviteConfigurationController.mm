@interface AAUIMessagesInviteConfigurationController
- (AAUIInviteControllerDelegate)delegate;
- (AAUIMessagesInviteConfigurationController)initWithInviteContext:(id)a3 flow:(unint64_t)a4 presentingController:(id)a5;
- (id)_bubbleImageForFlow:(unint64_t)a3;
- (id)_messageComposeViewController;
- (id)_messageComposeViewControllerUpsell;
- (void)_presentInviteControllerWithCompletion:(id)a3;
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)messageComposeViewController:(id)a3 shouldSendMessage:(id)a4 toRecipients:(id)a5 completion:(id)a6;
- (void)presentWhenReadyWithCompletion:(id)a3;
@end

@implementation AAUIMessagesInviteConfigurationController

- (AAUIMessagesInviteConfigurationController)initWithInviteContext:(id)a3 flow:(unint64_t)a4 presentingController:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [(AAUIMessagesInviteConfigurationController *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_flow = a4;
    objc_storeStrong(&v11->_context, a3);
    objc_storeStrong(&v12->_presentingViewController, a5);
  }

  return v12;
}

- (void)presentWhenReadyWithCompletion:(id)a3
{
  v4 = a3;
  if (self->_linkMetadata)
  {
    [(AAUIMessagesInviteConfigurationController *)self _presentInviteControllerWithCompletion:v4];
  }

  else
  {
    v5 = [[AAUIInviteLinkMetadataProvider alloc] initWithContext:self->_context];
    v6 = [(AAUIMessagesInviteConfigurationController *)self _bubbleImageForFlow:self->_flow];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__AAUIMessagesInviteConfigurationController_presentWhenReadyWithCompletion___block_invoke;
    v7[3] = &unk_1E820C828;
    v7[4] = self;
    v8 = v4;
    [(AAUIInviteLinkMetadataProvider *)v5 loadMetadataWithImage:v6 completion:v7];
  }
}

void __76__AAUIMessagesInviteConfigurationController_presentWhenReadyWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0, v5);
    }
  }

  else
  {
    v7 = [v10 bubbleMetadata];
    v8 = *(a1 + 32);
    v9 = *(v8 + 24);
    *(v8 + 24) = v7;

    [*(a1 + 32) _presentInviteControllerWithCompletion:*(a1 + 40)];
  }
}

- (id)_bubbleImageForFlow:(unint64_t)a3
{
  if (!a3)
  {
    v3 = @"custodian_message_bubble";
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v3 = @"beneficiary_message_bubble";
LABEL_5:
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v4 imageNamed:v3 inBundle:v5];

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)_messageComposeViewController
{
  messageComposeViewController = self->_messageComposeViewController;
  if (!messageComposeViewController)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6973F10]);
    v5 = self->_messageComposeViewController;
    self->_messageComposeViewController = v4;

    [(MFMessageComposeViewController *)self->_messageComposeViewController setMessageComposeDelegate:self];
    v6 = self->_messageComposeViewController;
    v7 = [(LPLinkMetadata *)self->_linkMetadata dataRepresentation];
    v8 = [(AAMessagesInviteContext *)self->_context inviteURL];
    [(MFMessageComposeViewController *)v6 addRichLinkData:v7 withWebpageURL:v8];

    v9 = self->_messageComposeViewController;
    v10 = [(AAMessagesInviteContext *)self->_context recipients];
    [(MFMessageComposeViewController *)v9 setRecipients:v10];

    [(MFMessageComposeViewController *)self->_messageComposeViewController _setCanEditRecipients:0];
    v11 = self->_messageComposeViewController;
    v12 = [(AAMessagesInviteContext *)self->_context messageBody];
    [(MFMessageComposeViewController *)v11 setBody:v12];

    messageComposeViewController = self->_messageComposeViewController;
  }

  return messageComposeViewController;
}

- (id)_messageComposeViewControllerUpsell
{
  messageComposeViewController = self->_messageComposeViewController;
  if (!messageComposeViewController)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6973F10]);
    v5 = self->_messageComposeViewController;
    self->_messageComposeViewController = v4;

    [(MFMessageComposeViewController *)self->_messageComposeViewController setMessageComposeDelegate:self];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v6 = getMSMessageRichLinkLayoutClass_softClass;
    v32 = getMSMessageRichLinkLayoutClass_softClass;
    if (!getMSMessageRichLinkLayoutClass_softClass)
    {
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __getMSMessageRichLinkLayoutClass_block_invoke;
      v27 = &unk_1E820BE08;
      v28 = &v29;
      __getMSMessageRichLinkLayoutClass_block_invoke(&v24);
      v6 = v30[3];
    }

    v7 = v6;
    _Block_object_dispose(&v29, 8);
    v8 = [[v6 alloc] initWithLinkMetadata:self->_linkMetadata];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v9 = getMSMessageLiveLayoutClass_softClass;
    v32 = getMSMessageLiveLayoutClass_softClass;
    if (!getMSMessageLiveLayoutClass_softClass)
    {
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __getMSMessageLiveLayoutClass_block_invoke;
      v27 = &unk_1E820BE08;
      v28 = &v29;
      __getMSMessageLiveLayoutClass_block_invoke(&v24);
      v9 = v30[3];
    }

    v10 = v9;
    _Block_object_dispose(&v29, 8);
    v11 = [[v9 alloc] initWithAlternateLayout:v8];
    [v11 setRequiredCapabilities:&unk_1F44C0648];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v12 = getMSMessageClass_softClass;
    v32 = getMSMessageClass_softClass;
    if (!getMSMessageClass_softClass)
    {
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __getMSMessageClass_block_invoke;
      v27 = &unk_1E820BE08;
      v28 = &v29;
      __getMSMessageClass_block_invoke(&v24);
      v12 = v30[3];
    }

    v13 = v12;
    _Block_object_dispose(&v29, 8);
    v14 = [v12 alloc];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v15 = getMSSessionClass_softClass;
    v32 = getMSSessionClass_softClass;
    if (!getMSSessionClass_softClass)
    {
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __getMSSessionClass_block_invoke;
      v27 = &unk_1E820BE08;
      v28 = &v29;
      __getMSSessionClass_block_invoke(&v24);
      v15 = v30[3];
    }

    v16 = v15;
    _Block_object_dispose(&v29, 8);
    v17 = objc_alloc_init(v15);
    v18 = [v14 initWithSession:v17];

    [v18 setLayout:v11];
    v19 = [(AAMessagesInviteContext *)self->_context messageURL];
    [v18 setURL:v19];

    v20 = [(LPLinkMetadata *)self->_linkMetadata title];
    [v18 setSummaryText:v20];

    [(MFMessageComposeViewController *)self->_messageComposeViewController setMessage:v18 withExtensionBundleIdentifier:@"com.apple.AppleAccountUI.CustodianInviteMessageExtension"];
    v21 = self->_messageComposeViewController;
    v22 = [(AAMessagesInviteContext *)self->_context recipients];
    [(MFMessageComposeViewController *)v21 setRecipients:v22];

    [(MFMessageComposeViewController *)self->_messageComposeViewController _setCanEditRecipients:0];
    messageComposeViewController = self->_messageComposeViewController;
  }

  return messageComposeViewController;
}

- (void)_presentInviteControllerWithCompletion:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = +[AAUIMessagesInviteConfigurationController isAvailable];
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "_presentMessagesViewController - can send text: %d", buf, 8u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__AAUIMessagesInviteConfigurationController__presentInviteControllerWithCompletion___block_invoke;
  v8[3] = &unk_1E820B780;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  v7 = MEMORY[0x1E69E96A0];
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __84__AAUIMessagesInviteConfigurationController__presentInviteControllerWithCompletion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v3[2] != 0;
    *buf = 67109376;
    v18 = v4;
    v19 = 2048;
    v20 = [v3 uiVersion];
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "_presentMessagesViewController - has : _messageComposeViewController %d UIversion is: %ld", buf, 0x12u);
  }

  v5 = [*(a1 + 32) uiVersion];
  v6 = _AAUILogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 1)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Upsell flow...", buf, 2u);
    }

    v8 = [*(a1 + 32) _messageComposeViewControllerUpsell];
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Lets use the old flow...", buf, 2u);
    }

    v8 = [*(a1 + 32) _messageComposeViewController];
  }

  v9 = v8;
  if (v8 && +[AAUIMessagesInviteConfigurationController isAvailable])
  {
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = *(v11 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __84__AAUIMessagesInviteConfigurationController__presentInviteControllerWithCompletion___block_invoke_66;
    v15[3] = &unk_1E820B780;
    v15[4] = v11;
    v16 = v10;
    [v12 presentViewController:v9 animated:1 completion:v15];
  }

  else
  {
    v13 = _AAUILogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v13, OS_LOG_TYPE_DEFAULT, "Unable to present AAUIMessagesInViteConfigurationController", buf, 2u);
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, 0);
    }
  }
}

uint64_t __84__AAUIMessagesInviteConfigurationController__presentInviteControllerWithCompletion___block_invoke_66(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 16) != 0;
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "_presentMessagesViewController - has : _messageComposeViewController %d", v5, 8u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138412546;
    v25 = v10;
    v26 = 2048;
    v27 = a4;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "%@ MFMessageComposeVC delegate callback - didFinishWithResult:%ld", buf, 0x16u);
  }

  objc_storeStrong(&self->_presentingViewController, a3);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  v13 = _AAUILogSystem();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "Calling back to controller delegate", buf, 2u);
    }

    if (a4 == 1)
    {
      v15 = @"0";
    }

    else if (a4)
    {
      v15 = @"0";
      a4 = 2;
    }

    else
    {
      v15 = @"1";
    }

    v22 = @"userCancelled";
    v23 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __94__AAUIMessagesInviteConfigurationController_messageComposeViewController_didFinishWithResult___block_invoke;
    v18[3] = &unk_1E820C850;
    v18[4] = self;
    v20 = v16;
    v21 = a4;
    v19 = v7;
    v17 = v16;
    dispatch_async(MEMORY[0x1E69E96A0], v18);
  }

  else
  {
    if (a4)
    {
      if (a4 == 1)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "Message sent successfully", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [AAUIMessagesInviteConfigurationController messageComposeViewController:v14 didFinishWithResult:?];
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AAUIMessagesInviteConfigurationController messageComposeViewController:v14 didFinishWithResult:?];
    }

    [v7 dismissViewControllerAnimated:1 completion:0];
  }
}

void __94__AAUIMessagesInviteConfigurationController_messageComposeViewController_didFinishWithResult___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 48));
  [WeakRetained inviteController:a1[5] didFinishWithStatus:a1[7] recipients:*(a1[4] + 40) userInfo:a1[6] error:0];
}

- (void)messageComposeViewController:(id)a3 shouldSendMessage:(id)a4 toRecipients:(id)a5 completion:(id)a6
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a6;
  v10 = _AAUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v16 = 138412290;
    v17 = v12;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "%@ MFMessageComposeVC delegate callback - shouldSendMessage", &v16, 0xCu);
  }

  recipientAddresses = self->_recipientAddresses;
  self->_recipientAddresses = v8;
  v14 = v8;

  v15 = [(NSArray *)v14 count];
  v9[2](v9, v15 != 0);
}

- (AAUIInviteControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end