@interface MFMailComposeViewController
+ (BOOL)hasAutosavedMessageWithIdentifier:(id)identifier;
+ (id)log;
+ (void)removeAutosavedMessageWithIdentifier:(id)identifier;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (MFMailComposeViewController)initWithURL:(id)l sourceAccountManagement:(int)management;
- (_UIRemoteViewController)_containedRemoteViewController;
- (id)UTITypes;
- (id)_addAttachmentItemProvider:(id)provider mimeType:(id)type fileName:(id)name;
- (id)_addAttachmentWithFileURL:(id)l mimeType:(id)type;
- (id)_addContentVariationWithName:(id)name;
- (id)_validEmailAddressesFromArray:(id)array;
- (id)cloudPhotoIDs;
- (id)contentText;
- (id)contentURLs;
- (id)mailComposeDelegate;
- (id)photoIDs;
- (id)shareSheetSessionID;
- (void)__viewControllerWillBePresented:(BOOL)presented;
- (void)_addAttachmentDataItemProvider:(id)provider mimeType:(id)type fileName:(id)name forContentVariation:(id)variation;
- (void)_presentComposeInNewWindowWithCompletion:(id)completion;
- (void)_setCKShare:(id)share setupContainerInfo:(id)info permissionType:(int64_t)type allowOthersToInvite:(BOOL)invite;
- (void)_setCKShareURLWrapper:(id)wrapper share:(id)share permissionType:(int64_t)type allowOthersToInvite:(BOOL)invite;
- (void)_setDefaultContentVariation:(id)variation;
- (void)_setMessageBody:(id)body isHTML:(BOOL)l forContentVariation:(id)variation;
- (void)addAttachmentData:(NSData *)attachment mimeType:(NSString *)mimeType fileName:(NSString *)filename;
- (void)addSetupAnimationBlock:(id)block;
- (void)autosaveWithHandler:(id)handler;
- (void)currentAttachmentLimitWithHandler:(id)handler;
- (void)finalizeCompositionValues;
- (void)insertCollaborationItemProvider:(id)provider completionHandler:(id)handler;
- (void)loadCKShare:(id)share completionHandler:(id)handler;
- (void)recoverAutosavedMessageWithIdentifier:(id)identifier;
- (void)requestFramesForAttachmentsWithIdentifiers:(id)identifiers resultHandler:(id)handler;
- (void)setBccRecipients:(NSArray *)bccRecipients;
- (void)setCaretPosition:(unint64_t)position;
- (void)setCcRecipients:(NSArray *)ccRecipients;
- (void)setCloudPhotoIDs:(id)ds;
- (void)setContentText:(id)text;
- (void)setContentURLs:(id)ls;
- (void)setContentVisible:(BOOL)visible;
- (void)setHideMyEmailFrom:(id)from;
- (void)setKeyboardVisible:(BOOL)visible;
- (void)setMailComposeDelegate:(id)mailComposeDelegate;
- (void)setMessageBody:(NSString *)body isHTML:(BOOL)isHTML;
- (void)setPhotoIDs:(id)ds;
- (void)setPreferredSendingEmailAddress:(NSString *)emailAddress;
- (void)setShareSheetSessionID:(id)d;
- (void)setSourceAccountManagement:(int)management;
- (void)setSubject:(NSString *)subject;
- (void)setToRecipients:(NSArray *)toRecipients;
- (void)setUTITypes:(id)types;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MFMailComposeViewController

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__MFMailComposeViewController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_5 != -1)
  {
    dispatch_once(&log_onceToken_5, block);
  }

  v2 = log_log_5;

  return v2;
}

void __34__MFMailComposeViewController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_5;
  log_log_5 = v1;
}

- (MFMailComposeViewController)initWithURL:(id)l sourceAccountManagement:(int)management
{
  v4 = *&management;
  lCopy = l;
  if ([objc_opt_class() canSendMailSourceAccountManagement:v4])
  {
    v13.receiver = self;
    v13.super_class = MFMailComposeViewController;
    v7 = [(MFMailComposeViewController *)&v13 initWithNibName:0 bundle:0];
    if (v7)
    {
      if ([MEMORY[0x1E69DC938] mf_isPadIdiom])
      {
        [(MFMailComposeViewController *)v7 setModalPresentationStyle:1];
      }

      v8 = objc_alloc_init(MFMailComposeInternalViewController);
      v9 = v8;
      if (lCopy)
      {
        [(MFMailComposeInternalViewController *)v8 setURL:lCopy];
      }

      [(MFMailComposeViewController *)v7 pushViewController:v9 animated:0];
      objc_storeStrong(&v7->_internal, v9);
      [(MFMailComposeViewController *)v7 setSourceAccountManagement:v4];
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v11 = +[MFMailComposeViewController log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MFMailComposeViewController initWithURL:v11 sourceAccountManagement:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)__viewControllerWillBePresented:(BOOL)presented
{
  v4.receiver = self;
  v4.super_class = MFMailComposeViewController;
  [(MFMailComposeViewController *)&v4 __viewControllerWillBePresented:presented];
  [(MFMailComposeViewController *)self finalizeCompositionValues];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = MFMailComposeViewController;
  [(MFMailComposeViewController *)&v6 viewWillAppear:appear];
  [(MFMailComposeViewController *)self finalizeCompositionValues];
  setupAnimationBlock = self->_setupAnimationBlock;
  if (setupAnimationBlock)
  {
    setupAnimationBlock[2]();
    v5 = self->_setupAnimationBlock;
    self->_setupAnimationBlock = 0;
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MFMailComposeViewController;
  [(MFMailComposeViewController *)&v5 viewWillDisappear:disappear];
  if ([(MFMailComposeViewController *)self isBeingDismissed])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__MFMailComposeViewController_viewWillDisappear___block_invoke;
    block[3] = &unk_1E806C570;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __49__MFMailComposeViewController_viewWillDisappear___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MFMailComposeViewControllerIsBeingDismissed" object:*(a1 + 32)];
}

- (id)mailComposeDelegate
{
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  mailComposeDelegate = [_internalViewController mailComposeDelegate];

  return mailComposeDelegate;
}

- (void)setMailComposeDelegate:(id)mailComposeDelegate
{
  v5 = mailComposeDelegate;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  [_internalViewController setMailComposeDelegate:v5];
}

- (void)setSubject:(NSString *)subject
{
  v5 = subject;
  _impl = [(MFMailComposeViewController *)self _impl];
  [_impl setSubject:v5];
}

- (id)_validEmailAddressesFromArray:(id)array
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  arrayCopy = array;
  v4 = [arrayCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v6 = 0;
    v7 = *v16;
    *&v5 = 138412290;
    v14 = v5;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if (([v9 ea_isLegalCommentedEmailAddress] & 1) == 0)
        {
          v10 = +[MFMailComposeViewController log];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = v14;
            v20 = v9;
            _os_log_error_impl(&dword_1BE819000, v10, OS_LOG_TYPE_ERROR, "%@ is not a valid email address.", buf, 0xCu);
          }

          if (!v6)
          {
            v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          }

          [v6 addObject:v9];
        }
      }

      v4 = [arrayCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v4);

    if (v6)
    {
      v11 = [MEMORY[0x1E695DF70] arrayWithArray:arrayCopy];
      allObjects = [v6 allObjects];
      [v11 removeObjectsInArray:allObjects];

      goto LABEL_18;
    }
  }

  else
  {
  }

  v11 = arrayCopy;
  v6 = 0;
LABEL_18:

  return v11;
}

- (void)setToRecipients:(NSArray *)toRecipients
{
  v5 = [(MFMailComposeViewController *)self _validEmailAddressesFromArray:toRecipients];
  if ([v5 count])
  {
    _impl = [(MFMailComposeViewController *)self _impl];
    [_impl setToRecipients:v5];
  }
}

- (void)setCcRecipients:(NSArray *)ccRecipients
{
  v6 = ccRecipients;
  v4 = [(MFMailComposeViewController *)self _validEmailAddressesFromArray:?];
  if ([v4 count])
  {
    _impl = [(MFMailComposeViewController *)self _impl];
    [_impl setCcRecipients:v6];
  }
}

- (void)setBccRecipients:(NSArray *)bccRecipients
{
  v6 = bccRecipients;
  v4 = [(MFMailComposeViewController *)self _validEmailAddressesFromArray:?];
  if ([v4 count])
  {
    _impl = [(MFMailComposeViewController *)self _impl];
    [_impl setBccRecipients:v6];
  }
}

- (void)setMessageBody:(NSString *)body isHTML:(BOOL)isHTML
{
  v4 = isHTML;
  v7 = body;
  _impl = [(MFMailComposeViewController *)self _impl];
  [_impl setMessageBody:v7 isHTML:v4];
}

- (void)setHideMyEmailFrom:(id)from
{
  fromCopy = from;
  _impl = [(MFMailComposeViewController *)self _impl];
  [_impl setHideMyEmailFrom:fromCopy];
}

- (void)addAttachmentData:(NSData *)attachment mimeType:(NSString *)mimeType fileName:(NSString *)filename
{
  v12 = attachment;
  v8 = mimeType;
  v9 = filename;
  _impl = [(MFMailComposeViewController *)self _impl];
  v11 = [_impl addAttachmentData:v12 mimeType:v8 fileName:v9];
}

- (void)setPreferredSendingEmailAddress:(NSString *)emailAddress
{
  v4 = emailAddress;
  if (([(NSString *)v4 ea_isLegalCommentedEmailAddress]& 1) != 0)
  {
    _impl = [(MFMailComposeViewController *)self _impl];
    [_impl setPreferredSendingEmailAddress:v4];
  }

  else
  {
    _impl = +[MFMailComposeViewController log];
    if (os_log_type_enabled(_impl, OS_LOG_TYPE_ERROR))
    {
      [MFMailComposeViewController setPreferredSendingEmailAddress:];
    }
  }
}

- (void)insertCollaborationItemProvider:(id)provider completionHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  if ([providerCopy canLoadObjectOfClass:objc_opt_class()])
  {
    v8 = objc_opt_class();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __81__MFMailComposeViewController_insertCollaborationItemProvider_completionHandler___block_invoke;
    v22[3] = &unk_1E806FA98;
    v24 = handlerCopy;
    v22[4] = self;
    v23 = providerCopy;
    v9 = &v25;
    objc_copyWeak(&v25, &location);
    v10 = [v23 loadObjectOfClass:v8 completionHandler:v22];
    v11 = &v24;
    v12 = &v23;
LABEL_3:
    objc_destroyWeak(v9);

    goto LABEL_10;
  }

  if ([providerCopy canLoadObjectOfClass:objc_opt_class()])
  {
    v13 = getSWCopyRepresentationTypeIdentifier();
    v14 = [providerCopy hasItemConformingToTypeIdentifier:v13];

    if (v14)
    {
      v15 = getSWCopyRepresentationTypeIdentifier();
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __81__MFMailComposeViewController_insertCollaborationItemProvider_completionHandler___block_invoke_67;
      v18[3] = &unk_1E806FB10;
      v20 = handlerCopy;
      v18[4] = self;
      v19 = providerCopy;
      v9 = &v21;
      objc_copyWeak(&v21, &location);
      v16 = [v19 loadInPlaceFileRepresentationForTypeIdentifier:v15 completionHandler:v18];
      v11 = &v20;
      v12 = &v19;

      goto LABEL_3;
    }
  }

  v17 = +[MFMailComposeViewController log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [MFMailComposeViewController insertCollaborationItemProvider:v17 completionHandler:?];
  }

  (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_10:
  objc_destroyWeak(&location);
}

void __81__MFMailComposeViewController_insertCollaborationItemProvider_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v13 = +[MFMailComposeViewController log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __81__MFMailComposeViewController_insertCollaborationItemProvider_completionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = v5;
    v9 = [v8 shareOptions];
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __81__MFMailComposeViewController_insertCollaborationItemProvider_completionHandler___block_invoke_63;
    v14[3] = &unk_1E806FA70;
    v16 = *(a1 + 48);
    v12 = v9;
    v15 = v12;
    objc_copyWeak(&v17, (a1 + 56));
    [v10 loadCKShare:v11 completionHandler:v14];
    objc_destroyWeak(&v17);
  }
}

void __81__MFMailComposeViewController_insertCollaborationItemProvider_completionHandler___block_invoke_63(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v15 = +[MFMailComposeViewController log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __81__MFMailComposeViewController_insertCollaborationItemProvider_completionHandler___block_invoke_63_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [*(a1 + 32) optionsGroups];
    v9 = CKSharingPermissionTypeFromOptionsGroups();

    v10 = [*(a1 + 32) optionsGroups];
    v11 = CKSharingAllowOthersToInviteFromOptionsGroups();

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v13 = [v5 share];
    v14 = [v5 containerSetupInfo];
    [WeakRetained _setCKShare:v13 setupContainerInfo:v14 permissionType:v9 allowOthersToInvite:v11];

    (*(*(a1 + 40) + 16))();
  }
}

void __81__MFMailComposeViewController_insertCollaborationItemProvider_completionHandler___block_invoke_67(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = v7;
  if (!v6 || v7)
  {
    v17 = +[MFMailComposeViewController log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __81__MFMailComposeViewController_insertCollaborationItemProvider_completionHandler___block_invoke_67_cold_1();
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_10;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __81__MFMailComposeViewController_insertCollaborationItemProvider_completionHandler___block_invoke_68;
  v20[3] = &unk_1E806FAE8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v23 = v9;
  v20[4] = v10;
  v21 = v11;
  v22 = v6;
  objc_copyWeak(v24, (a1 + 56));
  v12 = v22;
  v13 = v20;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v14 = getSWCollaborationMetadataForDocumentURLSymbolLoc_ptr;
  v29 = getSWCollaborationMetadataForDocumentURLSymbolLoc_ptr;
  if (!getSWCollaborationMetadataForDocumentURLSymbolLoc_ptr)
  {
    v24[1] = MEMORY[0x1E69E9820];
    v24[2] = 3221225472;
    v24[3] = __getSWCollaborationMetadataForDocumentURLSymbolLoc_block_invoke;
    v24[4] = &unk_1E806CA38;
    v25 = &v26;
    v15 = SharedWithYouCoreLibrary();
    v16 = dlsym(v15, "SWCollaborationMetadataForDocumentURL");
    *(v25[1] + 24) = v16;
    getSWCollaborationMetadataForDocumentURLSymbolLoc_ptr = *(v25[1] + 24);
    v14 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (v14)
  {
    v14(v12, v13);

    objc_destroyWeak(v24);
LABEL_10:

    return;
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void soft_SWCollaborationMetadataForDocumentURL(NSURL *__strong, void (^__strong)(_SWCollaborationMetadata *__strong, NSError *__strong))"}];
  [v18 handleFailureInFunction:v19 file:@"MFMailComposeViewController.m" lineNumber:51 description:{@"%s", dlerror()}];

  __break(1u);
}

void __81__MFMailComposeViewController_insertCollaborationItemProvider_completionHandler___block_invoke_68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v12 = +[MFMailComposeViewController log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __81__MFMailComposeViewController_insertCollaborationItemProvider_completionHandler___block_invoke_68_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = [v5 userSelectedShareOptions];
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __81__MFMailComposeViewController_insertCollaborationItemProvider_completionHandler___block_invoke_69;
    v13[3] = &unk_1E806FAC0;
    v16 = *(a1 + 56);
    v11 = v8;
    v14 = v11;
    v15 = *(a1 + 48);
    objc_copyWeak(&v17, (a1 + 64));
    [v9 loadCKShare:v10 completionHandler:v13];
    objc_destroyWeak(&v17);
  }
}

void __81__MFMailComposeViewController_insertCollaborationItemProvider_completionHandler___block_invoke_69(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v15 = +[MFMailComposeViewController log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __81__MFMailComposeViewController_insertCollaborationItemProvider_completionHandler___block_invoke_69_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = [*(a1 + 32) optionsGroups];
    v9 = CKSharingPermissionTypeFromOptionsGroups();

    v10 = [*(a1 + 32) optionsGroups];
    v11 = CKSharingAllowOthersToInviteFromOptionsGroups();

    v12 = [MEMORY[0x1E6967408] wrapperWithURL:*(a1 + 40) readonly:0 error:0];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v14 = [v5 share];
    [WeakRetained _setCKShareURLWrapper:v12 share:v14 permissionType:v9 allowOthersToInvite:v11];

    (*(*(a1 + 48) + 16))();
  }
}

- (void)setUTITypes:(id)types
{
  typesCopy = types;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  [_internalViewController setUTITypes:typesCopy];
}

- (id)UTITypes
{
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  uTITypes = [_internalViewController UTITypes];

  return uTITypes;
}

- (void)setPhotoIDs:(id)ds
{
  dsCopy = ds;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  [_internalViewController setPhotoIDs:dsCopy];
}

- (id)photoIDs
{
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  photoIDs = [_internalViewController photoIDs];

  return photoIDs;
}

- (void)setCloudPhotoIDs:(id)ds
{
  dsCopy = ds;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  [_internalViewController setCloudPhotoIDs:dsCopy];
}

- (id)cloudPhotoIDs
{
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  cloudPhotoIDs = [_internalViewController cloudPhotoIDs];

  return cloudPhotoIDs;
}

- (void)setContentText:(id)text
{
  textCopy = text;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  [_internalViewController setContentText:textCopy];
}

- (id)contentText
{
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  contentText = [_internalViewController contentText];

  return contentText;
}

- (void)setContentURLs:(id)ls
{
  lsCopy = ls;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  [_internalViewController setContentURLs:lsCopy];
}

- (id)contentURLs
{
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  contentURLs = [_internalViewController contentURLs];

  return contentURLs;
}

- (void)setShareSheetSessionID:(id)d
{
  dCopy = d;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  [_internalViewController setShareSheetSessionID:dCopy];
}

- (id)shareSheetSessionID
{
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  shareSheetSessionID = [_internalViewController shareSheetSessionID];

  return shareSheetSessionID;
}

- (id)_addAttachmentWithFileURL:(id)l mimeType:(id)type
{
  lCopy = l;
  typeCopy = type;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  v9 = [_internalViewController addAttachmentFileURL:lCopy mimeType:typeCopy];

  return v9;
}

- (id)_addAttachmentItemProvider:(id)provider mimeType:(id)type fileName:(id)name
{
  providerCopy = provider;
  typeCopy = type;
  nameCopy = name;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  v12 = [_internalViewController addAttachmentItemProvider:providerCopy mimeType:typeCopy fileName:nameCopy];

  return v12;
}

- (void)currentAttachmentLimitWithHandler:(id)handler
{
  handlerCopy = handler;
  handlerCopy[2](handlerCopy, [MEMORY[0x1E69B15B8] currentMessageLimit]);
}

- (void)requestFramesForAttachmentsWithIdentifiers:(id)identifiers resultHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  [_internalViewController requestFramesForAttachmentsWithIdentifiers:identifiersCopy resultHandler:handlerCopy];
}

- (void)setKeyboardVisible:(BOOL)visible
{
  visibleCopy = visible;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  [_internalViewController setShowKeyboardImmediately:visibleCopy];
}

- (void)setContentVisible:(BOOL)visible
{
  visibleCopy = visible;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  [_internalViewController setContentVisible:visibleCopy];
}

- (void)setSourceAccountManagement:(int)management
{
  v3 = *&management;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  [_internalViewController setSourceAccountManagement:v3];
}

- (id)_addContentVariationWithName:(id)name
{
  nameCopy = name;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  v6 = [_internalViewController addContentVariationWithName:nameCopy];

  return v6;
}

- (void)_setDefaultContentVariation:(id)variation
{
  variationCopy = variation;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  [_internalViewController setDefaultContentVariation:variationCopy];
}

- (void)_setMessageBody:(id)body isHTML:(BOOL)l forContentVariation:(id)variation
{
  lCopy = l;
  bodyCopy = body;
  variationCopy = variation;
  [variationCopy setBody:bodyCopy];
  [variationCopy setBodyIsHTML:lCopy];
}

- (void)_addAttachmentDataItemProvider:(id)provider mimeType:(id)type fileName:(id)name forContentVariation:(id)variation
{
  variationCopy = variation;
  v10 = [(MFMailComposeViewController *)self _addAttachmentItemProvider:provider mimeType:type fileName:name];
  [variationCopy addAttachmentIdentifier:v10];
}

- (void)finalizeCompositionValues
{
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  [_internalViewController finalizeCompositionValues];
}

- (void)addSetupAnimationBlock:(id)block
{
  blockCopy = block;
  v7 = blockCopy;
  if (self->_setupAnimationBlock)
  {
    __assert_rtn("[MFMailComposeViewController addSetupAnimationBlock:]", "MFMailComposeViewController.m", 507, "_setupAnimationBlock == NULL");
  }

  v5 = _Block_copy(blockCopy);
  setupAnimationBlock = self->_setupAnimationBlock;
  self->_setupAnimationBlock = v5;
}

- (void)setCaretPosition:(unint64_t)position
{
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  [_internalViewController setCaretPosition:position];
}

- (void)loadCKShare:(id)share completionHandler:(id)handler
{
  shareCopy = share;
  handlerCopy = handler;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__7;
  v15[4] = __Block_byref_object_dispose__7;
  v16 = 0;
  v7 = *MEMORY[0x1E695BB00];
  if (![shareCopy hasItemConformingToTypeIdentifier:*MEMORY[0x1E695BB00]])
  {
    v7 = *MEMORY[0x1E695BAF8];
    if (![shareCopy hasItemConformingToTypeIdentifier:*MEMORY[0x1E695BAF8]])
    {
      v8 = 0;
LABEL_7:
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B1560] code:1030 userInfo:&unk_1F3D16750];
      handlerCopy[2](handlerCopy, 0, v11);
      goto LABEL_8;
    }
  }

  v8 = v7;
  objc_opt_class();
  if (!v8 || ![shareCopy canLoadObjectOfClass:objc_opt_class()])
  {
    goto LABEL_7;
  }

  v9 = objc_opt_class();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__MFMailComposeViewController_loadCKShare_completionHandler___block_invoke;
  v12[3] = &unk_1E806FB38;
  v14 = v15;
  v13 = handlerCopy;
  v10 = [shareCopy loadObjectOfClass:v9 completionHandler:v12];
  v11 = v13;
LABEL_8:

  _Block_object_dispose(v15, 8);
}

void __61__MFMailComposeViewController_loadCKShare_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_setCKShareURLWrapper:(id)wrapper share:(id)share permissionType:(int64_t)type allowOthersToInvite:(BOOL)invite
{
  inviteCopy = invite;
  wrapperCopy = wrapper;
  shareCopy = share;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  [_internalViewController _setCKShareURLWrapper:wrapperCopy share:shareCopy permissionType:type allowOthersToInvite:inviteCopy];
}

- (void)_setCKShare:(id)share setupContainerInfo:(id)info permissionType:(int64_t)type allowOthersToInvite:(BOOL)invite
{
  inviteCopy = invite;
  shareCopy = share;
  infoCopy = info;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  [_internalViewController _setCKShare:shareCopy setupContainerInfo:infoCopy permissionType:type allowOthersToInvite:inviteCopy];
}

- (void)_presentComposeInNewWindowWithCompletion:(id)completion
{
  completionCopy = completion;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  [_internalViewController _presentComposeInNewWindowFromComposeViewController:self completion:completionCopy];
}

+ (BOOL)hasAutosavedMessageWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  autosave = [MEMORY[0x1E69ADAC8] autosave];
  v5 = [autosave hasAutosavedMessageWithIdentifier:identifierCopy];

  return v5;
}

- (void)recoverAutosavedMessageWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  [_internalViewController setAutosaveIdentifier:identifierCopy];
}

- (void)autosaveWithHandler:(id)handler
{
  handlerCopy = handler;
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MFMailComposeViewController_autosaveWithHandler___block_invoke;
  v7[3] = &unk_1E806F780;
  v6 = handlerCopy;
  v8 = v6;
  [_internalViewController autosaveWithHandler:v7];
}

+ (void)removeAutosavedMessageWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  autosave = [MEMORY[0x1E69ADAC8] autosave];
  [autosave removeAutosavedMessageWithIdentifier:identifierCopy];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  if ([MEMORY[0x1E69DC938] mf_isPadIdiom])
  {
    parentViewController = [(MFMailComposeViewController *)self parentViewController];
    v6 = parentViewController;
    if (parentViewController)
    {
      v7 = [parentViewController shouldAutorotateToInterfaceOrientation:orientation];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MFMailComposeViewController;
    return [(MFMailComposeViewController *)&v9 shouldAutorotateToInterfaceOrientation:orientation];
  }

  return v7;
}

- (_UIRemoteViewController)_containedRemoteViewController
{
  _internalViewController = [(MFMailComposeViewController *)self _internalViewController];
  remoteViewController = [_internalViewController remoteViewController];

  return remoteViewController;
}

@end