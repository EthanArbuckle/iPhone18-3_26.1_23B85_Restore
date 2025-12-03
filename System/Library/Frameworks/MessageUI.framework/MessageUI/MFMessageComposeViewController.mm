@interface MFMessageComposeViewController
+ (BOOL)_canSendText;
+ (BOOL)canSendAttachments;
+ (BOOL)canSendPhotos:(int)photos videos:(int)videos audioClips:(int)clips;
+ (BOOL)canSendSubject;
+ (BOOL)canSendText;
+ (BOOL)isSupportedAttachmentUTI:(NSString *)uti;
+ (BOOL)isiMessageEnabled;
+ (id)log;
+ (void)_setupAccountMonitor;
+ (void)_startListeningForAvailabilityNotifications;
+ (void)_updateServiceAvailability;
+ (void)initialize;
- (BOOL)_isAudioMIMEType:(id)type;
- (BOOL)_isImageMIMEType:(id)type;
- (BOOL)_isVideoMIMEType:(id)type;
- (BOOL)addAttachmentData:(NSData *)attachmentData typeIdentifier:(NSString *)uti filename:(NSString *)filename;
- (BOOL)addAttachmentData:(id)data withAlternateFilename:(id)filename;
- (BOOL)addAttachmentURL:(NSURL *)attachmentURL withAlternateFilename:(NSString *)alternateFilename;
- (BOOL)addRichLinkData:(id)data withWebpageURL:(id)l;
- (BOOL)canAddAttachmentURL:(id)l;
- (BOOL)insertCollaborationItemProvider:(NSItemProvider *)itemProvider;
- (BOOL)insertCollaborationItemProvider:(id)provider collaborationOptions:(id)options collaborationMetadata:(id)metadata isCollaboration:(BOOL)collaboration;
- (BOOL)insertCollaborationItemProvider:(id)provider collaborationShareOptions:(id)options collaborationMetadata:(id)metadata isCollaboration:(BOOL)collaboration;
- (BOOL)insertGroupActivity:(id)activity;
- (MFMessageComposeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_MIMETypeForURL:(id)l;
- (id)_contentTypeForMIMEType:(id)type;
- (id)messageComposeDelegate;
- (void)_insertCKSMSComposeFileDataForItemProvider:(id)provider collaborationShareOptions:(id)options collaborationMetadata:(id)metadata sendAsCopyURL:(id)l isCollaboration:(BOOL)collaboration outReturnResult:(BOOL *)result;
- (void)_loadSWCopyRepresentationForItemProvider:(id)provider completionHandler:(id)handler;
- (void)_loadSWCopyRepresentationForItemProvider:(id)provider forTypeIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_setCanEditRecipients:(BOOL)recipients;
- (void)_setNavBarTitle:(id)title;
- (void)_setShouldDisableEntryField:(BOOL)field;
- (void)_setShouldIgnoreEmailsWhenSending:(BOOL)sending;
- (void)_updateAttachmentCountForAttachmentURL:(id)l;
- (void)dealloc;
- (void)disableUserAttachments;
- (void)insertSharedItemAndReturnEntryViewFrame:(id)frame withAlternateFilename:(id)filename completion:(id)completion;
- (void)setMessage:(id)message withExtensionBundleIdentifier:(id)identifier;
- (void)setModalPresentationStyle:(int64_t)style;
- (void)setUPIVerificationCodeSendCompletion:(id)completion;
- (void)showSharedItemInEntryView;
- (void)smsComposeControllerCancelled:(id)cancelled;
- (void)smsComposeControllerEntryViewContentInserted:(id)inserted;
- (void)smsComposeControllerSendStarted:(id)started;
- (void)smsComposeControllerSendStarted:(id)started withText:(id)text messageGUID:(id)d;
- (void)smsComposeControllerShouldSendMessageWithText:(id)text toRecipients:(id)recipients completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MFMessageComposeViewController

+ (BOOL)canSendText
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  effectiveWhitelistedAppBundleIDs = [mEMORY[0x1E69ADFB8] effectiveWhitelistedAppBundleIDs];
  v5 = effectiveWhitelistedAppBundleIDs;
  if (effectiveWhitelistedAppBundleIDs && ![effectiveWhitelistedAppBundleIDs containsObject:@"com.apple.MobileSMS"])
  {
    v6 = 0;
  }

  else
  {
    [self _updateServiceAvailability];
    v6 = 1;
  }

  if (sServiceAvailability > 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)_updateServiceAvailability
{
  v2 = sServiceAvailability;
  _canSendText = [self _canSendText];
  if (sServiceAvailability != _canSendText)
  {
    sServiceAvailability = _canSendText;
    if (v2 != -1)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:_canSendText];
      v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v6, @"__kMFMessageComposeViewControllerTextMessageAvailabilityKey", 0}];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"__kMFMessageComposeViewControllerTextMessageAvailabilityDidChangeNotification" object:0 userInfo:v4];
    }
  }
}

+ (BOOL)_canSendText
{
  if (MGGetBoolAnswer())
  {
    return 1;
  }

  return +[MFMessageComposeViewController isiMessageEnabled];
}

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__MFMessageComposeViewController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_8 != -1)
  {
    dispatch_once(&log_onceToken_8, block);
  }

  v2 = log_log_8;

  return v2;
}

void __37__MFMessageComposeViewController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_8;
  log_log_8 = v1;
}

+ (void)_setupAccountMonitor
{
  if (_setupAccountMonitor_accountMonitorToken != -1)
  {
    +[MFMessageComposeViewController _setupAccountMonitor];
  }
}

void __54__MFMessageComposeViewController__setupAccountMonitor__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v0 bundleIdentifier];

  v1 = [MEMORY[0x1E696AFB0] UUID];
  v2 = [v1 UUIDString];

  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MFMessageComposeViewController:%@#%@", v6, v2];
  v4 = sMFListenerName;
  sMFListenerName = v3;

  v5 = [MEMORY[0x1E699BE68] sharedInstance];
  [v5 addListenerID:sMFListenerName forService:1];
}

+ (BOOL)canSendSubject
{
  if (+[MFMessageComposeViewController isMMSEnabled])
  {
    return 1;
  }

  return +[MFMessageComposeViewController isiMessageEnabled];
}

+ (BOOL)canSendAttachments
{
  if (+[MFMessageComposeViewController isMMSEnabled])
  {
    return 1;
  }

  return +[MFMessageComposeViewController isiMessageEnabled];
}

+ (BOOL)isSupportedAttachmentUTI:(NSString *)uti
{
  v3 = [MEMORY[0x1E6982C40] typeWithIdentifier:uti];
  if (+[MFMessageComposeViewController isiMessageEnabled])
  {
    goto LABEL_2;
  }

  if (!+[MFMessageComposeViewController isMMSEnabled])
  {
    v5 = MEMORY[0x1E6983020];
    goto LABEL_9;
  }

  if (([v3 conformsToType:*MEMORY[0x1E6982CD0]] & 1) == 0 && (objc_msgSend(v3, "conformsToType:", *MEMORY[0x1E6982CD8]) & 1) == 0 && (objc_msgSend(v3, "conformsToType:", *MEMORY[0x1E6983078]) & 1) == 0)
  {
    v5 = MEMORY[0x1E6982E30];
LABEL_9:
    v4 = [v3 conformsToType:*v5];
    goto LABEL_10;
  }

LABEL_2:
  v4 = 1;
LABEL_10:

  return v4;
}

+ (void)_startListeningForAvailabilityNotifications
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__MFMessageComposeViewController__startListeningForAvailabilityNotifications__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_startListeningForAvailabilityNotifications_listenerToken != -1)
  {
    dispatch_once(&_startListeningForAvailabilityNotifications_listenerToken, block);
  }
}

void __77__MFMessageComposeViewController__startListeningForAvailabilityNotifications__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  name = [v2 initWithFormat:@"%@%@", *MEMORY[0x1E69A28D8], *MEMORY[0x1E69A28F0]];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _SMSCapabilityChanged, name, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:sel__serviceAvailabilityChanged_ name:*MEMORY[0x1E699BE60] object:0];
}

+ (BOOL)canSendPhotos:(int)photos videos:(int)videos audioClips:(int)clips
{
  v5 = *&clips;
  v6 = *&videos;
  v7 = *&photos;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v8 = getIMSPIShareSheetCanSendMediaSymbolLoc_ptr;
  v16 = getIMSPIShareSheetCanSendMediaSymbolLoc_ptr;
  if (!getIMSPIShareSheetCanSendMediaSymbolLoc_ptr)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getIMSPIShareSheetCanSendMediaSymbolLoc_block_invoke;
    v12[3] = &unk_1E806CA38;
    v12[4] = &v13;
    __getIMSPIShareSheetCanSendMediaSymbolLoc_block_invoke(v12);
    v8 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (v8)
  {
    return v8(v7, v6, v5);
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL soft_IMSPIShareSheetCanSendMedia(int, int, int)"}];
  [currentHandler handleFailureInFunction:v11 file:@"MFMessageComposeViewController.m" lineNumber:67 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

+ (void)initialize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MFMessageComposeViewController_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (MFMessageComposeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  bundleCopy = bundle;
  if ([objc_opt_class() canSendText])
  {
    v17.receiver = self;
    v17.super_class = MFMessageComposeViewController;
    v8 = [(MFMessageComposeViewController *)&v17 initWithNibName:nameCopy bundle:bundleCopy];
    v9 = v8;
    if (v8)
    {
      [(MFMessageComposeViewController *)v8 setPreferredPresentationStyle:1];
      gotLoadHelper_x8__OBJC_CLASS___CKSMSComposeController(v10);
      v12 = [objc_alloc(*(v11 + 3184)) initWithNavigationController:v9];
      [v12 setDelegate:v9];
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        [(MFMessageComposeViewController *)v9 disableUserAttachments];
      }

      [(MFMessageComposeViewController *)v9 pushViewController:v12 animated:0];
      [(MFMessageComposeViewController *)v9 setCurrentAttachedVideoCount:0];
      [(MFMessageComposeViewController *)v9 setCurrentAttachedAudioCount:0];
      [(MFMessageComposeViewController *)v9 setCurrentAttachedImageCount:0];
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v14 = +[MFMessageComposeViewController log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      [(MFMessageComposeViewController *)v15 initWithNibName:buf bundle:v14];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)canAddAttachmentURL:(id)l
{
  lCopy = l;
  if ([lCopy isFileURL])
  {
    v6 = [(MFMessageComposeViewController *)self _MIMETypeForURL:lCopy];
    gotLoadHelper_x25__OBJC_CLASS___CKSMSComposeController(v7);
    v8 = [*(v3 + 3184) acceptsMIMEType:v6];
    v9 = [(MFMessageComposeViewController *)self _isVideoMIMEType:v6];
    v10 = [(MFMessageComposeViewController *)self _isAudioMIMEType:v6];
    v11 = [(MFMessageComposeViewController *)self _isImageMIMEType:v6];
    if (v9 || v10 || v11)
    {
      v12 = [*(v3 + 3184) canSendPhotos:(LODWORD(self->_currentAttachedImageCount) + v11) videos:(LODWORD(self->_currentAttachedVideoCount) + v9) audioClips:(LODWORD(self->_currentAttachedAudioCount) + v10)];
    }

    else
    {
      v12 = 0;
    }

    v13 = v8 & v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_MIMETypeForURL:(id)l
{
  lCopy = l;
  mEMORY[0x1E696AF48] = [MEMORY[0x1E696AF48] sharedMappings];
  pathExtension = [lCopy pathExtension];
  v6 = [mEMORY[0x1E696AF48] MIMETypeForExtension:pathExtension];

  return v6;
}

- (id)_contentTypeForMIMEType:(id)type
{
  v3 = [type componentsSeparatedByString:@"/"];
  if ([v3 count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndex:0];
  }

  return v4;
}

- (BOOL)_isVideoMIMEType:(id)type
{
  v3 = [(MFMessageComposeViewController *)self _contentTypeForMIMEType:type];
  v4 = [v3 isEqualToIgnoringCase:@"video"];

  return v4;
}

- (BOOL)_isAudioMIMEType:(id)type
{
  v3 = [(MFMessageComposeViewController *)self _contentTypeForMIMEType:type];
  v4 = [v3 isEqualToIgnoringCase:@"audio"];

  return v4;
}

- (BOOL)_isImageMIMEType:(id)type
{
  v3 = [(MFMessageComposeViewController *)self _contentTypeForMIMEType:type];
  v4 = [v3 isEqualToIgnoringCase:@"image"];

  return v4;
}

- (BOOL)addAttachmentURL:(NSURL *)attachmentURL withAlternateFilename:(NSString *)alternateFilename
{
  v6 = attachmentURL;
  v7 = alternateFilename;
  if (-[NSURL isFileURL](v6, "isFileURL") || (-[NSURL scheme](v6, "scheme"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isEqualToString:@"assets-library"], v8, (v9 & 1) != 0))
  {
    topViewController = [(MFMessageComposeViewController *)self topViewController];
    v11 = topViewController;
    if (topViewController && [topViewController insertAttachmentWithURL:v6 andDescription:v7])
    {
      [(MFMessageComposeViewController *)self _updateAttachmentCountForAttachmentURL:v6];
      v12 = 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)addAttachmentData:(NSData *)attachmentData typeIdentifier:(NSString *)uti filename:(NSString *)filename
{
  v8 = attachmentData;
  v9 = uti;
  v10 = filename;
  if (!v9)
  {
    goto LABEL_7;
  }

  v11 = [(NSString *)v9 length];
  v12 = 0;
  if (!v8 || !v11)
  {
    goto LABEL_10;
  }

  if (![(NSData *)v8 length])
  {
LABEL_7:
    v12 = 0;
    goto LABEL_10;
  }

  topViewController = [(MFMessageComposeViewController *)self topViewController];
  if (topViewController)
  {
    v14 = [MEMORY[0x1E6982C40] typeWithIdentifier:v9];
    preferredMIMEType = [v14 preferredMIMEType];
    v12 = [topViewController insertData:v8 MIMEType:preferredMIMEType exportedFilename:v10];
  }

  else
  {
    v12 = 0;
  }

LABEL_10:
  return v12;
}

- (BOOL)addAttachmentData:(id)data withAlternateFilename:(id)filename
{
  dataCopy = data;
  filenameCopy = filename;
  if (dataCopy && [dataCopy length])
  {
    topViewController = [(MFMessageComposeViewController *)self topViewController];
    if (topViewController)
    {
      mEMORY[0x1E696AF48] = [MEMORY[0x1E696AF48] sharedMappings];
      pathExtension = [filenameCopy pathExtension];
      v11 = [mEMORY[0x1E696AF48] MIMETypeForExtension:pathExtension];

      v12 = [topViewController insertData:dataCopy MIMEType:v11 exportedFilename:filenameCopy];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)insertSharedItemAndReturnEntryViewFrame:(id)frame withAlternateFilename:(id)filename completion:(id)completion
{
  frameCopy = frame;
  filenameCopy = filename;
  completionCopy = completion;
  topViewController = [(MFMessageComposeViewController *)self topViewController];
  if (topViewController)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __107__MFMessageComposeViewController_insertSharedItemAndReturnEntryViewFrame_withAlternateFilename_completion___block_invoke;
    v12[3] = &unk_1E806FFF0;
    v13 = completionCopy;
    [topViewController insertItemForSendingAndCalculateEntryViewFrame:frameCopy withAlternateFilename:filenameCopy completion:v12];
  }
}

void __107__MFMessageComposeViewController_insertSharedItemAndReturnEntryViewFrame_withAlternateFilename_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  [v3 CGRectValue];
  (*(v4 + 16))(v4);
}

- (void)_insertCKSMSComposeFileDataForItemProvider:(id)provider collaborationShareOptions:(id)options collaborationMetadata:(id)metadata sendAsCopyURL:(id)l isCollaboration:(BOOL)collaboration outReturnResult:(BOOL *)result
{
  collaborationCopy = collaboration;
  providerCopy = provider;
  optionsCopy = options;
  metadataCopy = metadata;
  lCopy = l;
  topViewController = [(MFMessageComposeViewController *)self topViewController];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = +[MFMessageComposeViewController log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BE819000, v20, OS_LOG_TYPE_DEFAULT, "Calling new compose SPI with nil URL for spinner.", buf, 2u);
    }

    topViewController2 = [(MFMessageComposeViewController *)self topViewController];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __171__MFMessageComposeViewController__insertCKSMSComposeFileDataForItemProvider_collaborationShareOptions_collaborationMetadata_sendAsCopyURL_isCollaboration_outReturnResult___block_invoke;
    v32[3] = &unk_1E8070088;
    v33 = providerCopy;
    selfCopy = self;
    v35 = optionsCopy;
    v36 = metadataCopy;
    v39 = collaborationCopy;
    v37 = lCopy;
    resultCopy = result;
    [topViewController2 insertFileURLForCollaboration:0 collaborationShareOptions:v35 metadata:v36 sendAsCopyURL:v37 isCollaboration:collaborationCopy completionHandler:v32];

    v22 = v33;
LABEL_9:

    goto LABEL_10;
  }

  topViewController3 = [(MFMessageComposeViewController *)self topViewController];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    v25 = +[MFMessageComposeViewController log];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BE819000, v25, OS_LOG_TYPE_DEFAULT, "Using legacy CKSMSComposeController SPI for FileProvider", buf, 2u);
    }

    v26 = objc_opt_class();
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __171__MFMessageComposeViewController__insertCKSMSComposeFileDataForItemProvider_collaborationShareOptions_collaborationMetadata_sendAsCopyURL_isCollaboration_outReturnResult___block_invoke_272;
    v28[3] = &unk_1E80700B0;
    v28[4] = self;
    v29 = optionsCopy;
    v30 = metadataCopy;
    v31 = collaborationCopy;
    v27 = [providerCopy loadObjectOfClass:v26 completionHandler:v28];

    v22 = v29;
    goto LABEL_9;
  }

LABEL_10:
}

void __171__MFMessageComposeViewController__insertCKSMSComposeFileDataForItemProvider_collaborationShareOptions_collaborationMetadata_sendAsCopyURL_isCollaboration_outReturnResult___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __171__MFMessageComposeViewController__insertCKSMSComposeFileDataForItemProvider_collaborationShareOptions_collaborationMetadata_sendAsCopyURL_isCollaboration_outReturnResult___block_invoke_2;
  v10[3] = &unk_1E8070060;
  v9 = *(a1 + 40);
  v4 = *(&v9 + 1);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v11 = v9;
  v12 = v7;
  v14 = *(a1 + 80);
  v13 = *(a1 + 72);
  v8 = [v2 loadObjectOfClass:v3 completionHandler:v10];
}

void __171__MFMessageComposeViewController__insertCKSMSComposeFileDataForItemProvider_collaborationShareOptions_collaborationMetadata_sendAsCopyURL_isCollaboration_outReturnResult___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[MFMessageComposeViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "Loading item provider for type file URL. URL: %@{public} and metadata", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __171__MFMessageComposeViewController__insertCKSMSComposeFileDataForItemProvider_collaborationShareOptions_collaborationMetadata_sendAsCopyURL_isCollaboration_outReturnResult___block_invoke_265;
  block[3] = &unk_1E8070038;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = v3;
  v6 = v5;
  v7 = *(a1 + 48);
  *&v8 = *(a1 + 56);
  *(&v8 + 1) = *(a1 + 64);
  v15 = *(a1 + 72);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v13 = v9;
  v14 = v8;
  v10 = v3;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
}

void __171__MFMessageComposeViewController__insertCKSMSComposeFileDataForItemProvider_collaborationShareOptions_collaborationMetadata_sendAsCopyURL_isCollaboration_outReturnResult___block_invoke_265(uint64_t a1)
{
  v2 = [*(a1 + 32) topViewController];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __171__MFMessageComposeViewController__insertCKSMSComposeFileDataForItemProvider_collaborationShareOptions_collaborationMetadata_sendAsCopyURL_isCollaboration_outReturnResult___block_invoke_2_266;
  v8[3] = &__block_descriptor_40_e8_v12__0B8l;
  v8[4] = *(a1 + 72);
  [v2 insertFileURLForCollaboration:v3 collaborationShareOptions:v4 metadata:v5 sendAsCopyURL:v6 isCollaboration:v7 completionHandler:v8];
}

uint64_t __171__MFMessageComposeViewController__insertCKSMSComposeFileDataForItemProvider_collaborationShareOptions_collaborationMetadata_sendAsCopyURL_isCollaboration_outReturnResult___block_invoke_2_266(uint64_t result, char a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    *v2 = a2;
  }

  return result;
}

void __171__MFMessageComposeViewController__insertCKSMSComposeFileDataForItemProvider_collaborationShareOptions_collaborationMetadata_sendAsCopyURL_isCollaboration_outReturnResult___block_invoke_272(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[MFMessageComposeViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "Loading item provider for type file URL. URL: %@{public} and metadata", &v6, 0xCu);
  }

  v5 = [*(a1 + 32) topViewController];
  [v5 insertFileURLForCollaboration:v3 collaborationShareOptions:*(a1 + 40) metadata:*(a1 + 48) isCollaboration:*(a1 + 56)];
}

- (void)_loadSWCopyRepresentationForItemProvider:(id)provider completionHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  v7 = getSWCopyRepresentationTypeIdentifier_0();
  [(MFMessageComposeViewController *)self _loadSWCopyRepresentationForItemProvider:providerCopy forTypeIdentifier:v7 completionHandler:handlerCopy];
}

- (void)_loadSWCopyRepresentationForItemProvider:(id)provider forTypeIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __111__MFMessageComposeViewController__loadSWCopyRepresentationForItemProvider_forTypeIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_1E8070100;
  v11 = handlerCopy;
  v8 = handlerCopy;
  v9 = [provider loadInPlaceFileRepresentationForTypeIdentifier:identifier completionHandler:v10];
}

void __111__MFMessageComposeViewController__loadSWCopyRepresentationForItemProvider_forTypeIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (!v7 || v8)
  {
    v13 = +[MFMessageComposeViewController log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __111__MFMessageComposeViewController__loadSWCopyRepresentationForItemProvider_forTypeIdentifier_completionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__8;
    v24 = __Block_byref_object_dispose__8;
    v25 = v7;
    v10 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:0];
    v11 = v21[5];
    v19 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __111__MFMessageComposeViewController__loadSWCopyRepresentationForItemProvider_forTypeIdentifier_completionHandler___block_invoke_274;
    v14[3] = &unk_1E80700D8;
    v17 = &v20;
    v15 = 0;
    v18 = a3;
    v16 = *(a1 + 32);
    [v10 coordinateReadingItemAtURL:v11 options:1 error:&v19 byAccessor:v14];
    v12 = v19;

    _Block_object_dispose(&v20, 8);
  }
}

void __111__MFMessageComposeViewController__loadSWCopyRepresentationForItemProvider_forTypeIdentifier_completionHandler___block_invoke_274(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = a1 + 48;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    if (*(a1 + 56))
    {
      v6 = +[MFMessageComposeViewController log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "Send copy representation was loaded in place", buf, 2u);
      }
    }

    else
    {
      v7 = +[MFMessageComposeViewController log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BE819000, v7, OS_LOG_TYPE_DEFAULT, "Send copy representation was not loaded in place, will re-save file to temp directory", buf, 2u);
      }

      v6 = [MEMORY[0x1E696AC08] defaultManager];
      v20 = [*(*(*v5 + 8) + 40) lastPathComponent];
      v8 = [v6 temporaryDirectory];
      v22 = 0;
      v9 = [v6 URLForDirectory:99 inDomain:1 appropriateForURL:v8 create:1 error:&v22];
      v10 = v22;

      if (!v9)
      {
        v11 = +[MFMessageComposeViewController log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __111__MFMessageComposeViewController__loadSWCopyRepresentationForItemProvider_forTypeIdentifier_completionHandler___block_invoke_274_cold_1();
        }

        v9 = [v6 temporaryDirectory];
      }

      v12 = [v9 URLByAppendingPathComponent:v20];
      v13 = *(*(*v5 + 8) + 40);
      v21 = v10;
      v14 = [v6 copyItemAtURL:v13 toURL:v12 error:&v21];
      v15 = v21;

      if (v14)
      {
        objc_storeStrong((*(*v5 + 8) + 40), v12);
        v16 = +[MFMessageComposeViewController log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(*(*v5 + 8) + 40);
          *buf = 138412290;
          v24 = v17;
          _os_log_impl(&dword_1BE819000, v16, OS_LOG_TYPE_DEFAULT, "Successfully obtained sendCopyURL: %@", buf, 0xCu);
        }
      }

      else
      {
        v16 = +[MFMessageComposeViewController log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __111__MFMessageComposeViewController__loadSWCopyRepresentationForItemProvider_forTypeIdentifier_completionHandler___block_invoke_274_cold_2();
        }
      }
    }
  }

  else
  {
    v6 = +[MFMessageComposeViewController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __111__MFMessageComposeViewController__loadSWCopyRepresentationForItemProvider_forTypeIdentifier_completionHandler___block_invoke_274_cold_3();
    }
  }

  v18 = +[MFMessageComposeViewController log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138412290;
    v24 = v19;
    _os_log_impl(&dword_1BE819000, v18, OS_LOG_TYPE_DEFAULT, "Item provider is conforming to UTCopyRepresentationTypeIdentifier. sendCopyURL: %@", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)insertCollaborationItemProvider:(id)provider collaborationShareOptions:(id)options collaborationMetadata:(id)metadata isCollaboration:(BOOL)collaboration
{
  collaborationCopy = collaboration;
  v84 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  optionsCopy = options;
  metadataCopy = metadata;
  v13 = +[MFMessageComposeViewController log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = metadataCopy;
    _os_log_impl(&dword_1BE819000, v13, OS_LOG_TYPE_DEFAULT, "Invoking insertCollaborationItemProvider with metadata: %@{public}", &buf, 0xCu);
  }

  if (providerCopy)
  {
    *&v81 = 0;
    *(&v81 + 1) = &v81;
    v82 = 0x2050000000;
    v14 = get_SWPendingCollaborationClass_softClass;
    v83 = get_SWPendingCollaborationClass_softClass;
    if (!get_SWPendingCollaborationClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v78 = __get_SWPendingCollaborationClass_block_invoke;
      v79 = &unk_1E806CA38;
      v80 = &v81;
      __get_SWPendingCollaborationClass_block_invoke(&buf);
      v14 = *(*(&v81 + 1) + 24);
    }

    v15 = v14;
    _Block_object_dispose(&v81, 8);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v78 = 0x2020000000;
    LOBYTE(v79) = 0;
    if ([providerCopy canLoadObjectOfClass:objc_opt_class()])
    {
      v16 = getSWCopyRepresentationTypeIdentifier_0();
      v17 = [providerCopy hasItemConformingToTypeIdentifier:v16];

      if (v17)
      {
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke;
        v71[3] = &unk_1E8070128;
        v71[4] = self;
        v72 = providerCopy;
        v73 = optionsCopy;
        v76 = collaborationCopy;
        v74 = metadataCopy;
        p_buf = &buf;
        [(MFMessageComposeViewController *)self _loadSWCopyRepresentationForItemProvider:v72 completionHandler:v71];
      }

      else
      {
        v25 = +[MFMessageComposeViewController log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          registeredTypeIdentifiers = [providerCopy registeredTypeIdentifiers];
          LODWORD(v81) = 138412290;
          *(&v81 + 4) = registeredTypeIdentifiers;
          _os_log_impl(&dword_1BE819000, v25, OS_LOG_TYPE_DEFAULT, "Item provider does not have item conforming to UTCopyRepresentationTypeIdentifier. Registered type identifiers are: %@", &v81, 0xCu);
        }

        [(MFMessageComposeViewController *)self _insertCKSMSComposeFileDataForItemProvider:providerCopy collaborationShareOptions:optionsCopy collaborationMetadata:metadataCopy sendAsCopyURL:0 isCollaboration:collaborationCopy outReturnResult:*(&buf + 1) + 24];
      }

      v19 = *(*(&buf + 1) + 24);
      goto LABEL_39;
    }

    if ([providerCopy canLoadObjectOfClass:objc_opt_class()])
    {
      v20 = +[MFMessageComposeViewController log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v81) = 0;
        _os_log_impl(&dword_1BE819000, v20, OS_LOG_TYPE_DEFAULT, "Loading item provider for SWShareableContent", &v81, 2u);
      }

      topViewController = [(MFMessageComposeViewController *)self topViewController];
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        *&v81 = 0;
        *(&v81 + 1) = &v81;
        v82 = 0x2020000000;
        LOBYTE(v83) = 0;
        topViewController2 = [(MFMessageComposeViewController *)self topViewController];
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_280;
        v63[3] = &unk_1E80701C8;
        v69 = v14;
        v64 = providerCopy;
        selfCopy = self;
        v66 = optionsCopy;
        v70 = collaborationCopy;
        v67 = metadataCopy;
        v68 = &v81;
        [topViewController2 insertSWYPendingCollaboration:0 collaborationShareOptions:0 collaborationMetadata:0 sendAsCopyURL:0 isCollaboration:collaborationCopy completionHandler:v63];

        v19 = *(*(&v81 + 1) + 24);
LABEL_29:
        _Block_object_dispose(&v81, 8);
LABEL_39:
        _Block_object_dispose(&buf, 8);
        goto LABEL_40;
      }

      topViewController3 = [(MFMessageComposeViewController *)self topViewController];
      v34 = objc_opt_respondsToSelector();

      if (v34)
      {
        *&v81 = 0;
        *(&v81 + 1) = &v81;
        v82 = 0x2020000000;
        LOBYTE(v83) = 0;
        topViewController4 = [(MFMessageComposeViewController *)self topViewController];
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_4;
        v56[3] = &unk_1E8070240;
        v62 = v14;
        v57 = providerCopy;
        selfCopy2 = self;
        v59 = optionsCopy;
        v60 = metadataCopy;
        v61 = &v81;
        [topViewController4 insertSWYPendingCollaboration:0 collaborationShareOptions:0 collaborationMetadata:0 completionHandler:v56];

        v19 = *(*(&v81 + 1) + 24);
        goto LABEL_29;
      }

LABEL_30:
      v19 = 0;
      goto LABEL_39;
    }

    v24 = *MEMORY[0x1E695BB00];
    if (![providerCopy hasItemConformingToTypeIdentifier:*MEMORY[0x1E695BB00]])
    {
      v24 = *MEMORY[0x1E695BAF8];
      if (![providerCopy hasItemConformingToTypeIdentifier:*MEMORY[0x1E695BAF8]])
      {
        goto LABEL_30;
      }
    }

    v27 = v24;
    v28 = objc_opt_class();
    if (!v27)
    {
      goto LABEL_30;
    }

    *&v81 = 0;
    *(&v81 + 1) = &v81;
    v82 = 0x2020000000;
    LOBYTE(v83) = 0;
    topViewController5 = [(MFMessageComposeViewController *)self topViewController];
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      topViewController6 = [(MFMessageComposeViewController *)self topViewController];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_2_295;
      v48[3] = &unk_1E80701C8;
      v49 = providerCopy;
      v54 = v28;
      v50 = v27;
      selfCopy3 = self;
      v55 = collaborationCopy;
      v52 = optionsCopy;
      v53 = &v81;
      [topViewController6 insertCKShareForCollaboration:0 containerSetupInfo:0 collaborationShareOptions:v52 isCollaboration:collaborationCopy completionHandler:v48];

      v19 = *(*(&v81 + 1) + 24);
      topViewController7 = v49;
    }

    else
    {
      topViewController7 = [(MFMessageComposeViewController *)self topViewController];
      if (objc_opt_respondsToSelector())
      {
        v36 = [providerCopy canLoadObjectOfClass:objc_opt_class()];

        if (!v36)
        {
          v19 = 0;
          goto LABEL_38;
        }

        v37 = +[MFMessageComposeViewController log];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *v47 = 0;
          _os_log_impl(&dword_1BE819000, v37, OS_LOG_TYPE_DEFAULT, "Using legacy CKSMSComposeController SPI for CKShare.", v47, 2u);
        }

        v38 = objc_opt_class();
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_301;
        v41[3] = &unk_1E80702B8;
        v42 = v27;
        selfCopy4 = self;
        v46 = collaborationCopy;
        v44 = optionsCopy;
        v45 = v28;
        v39 = [providerCopy loadObjectOfClass:v38 completionHandler:v41];

        v19 = 1;
        topViewController7 = v42;
      }

      else
      {
        v19 = 0;
      }
    }

LABEL_38:
    _Block_object_dispose(&v81, 8);

    goto LABEL_39;
  }

  v18 = +[MFMessageComposeViewController log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [MFMessageComposeViewController insertCollaborationItemProvider:collaborationShareOptions:collaborationMetadata:isCollaboration:];
  }

  v19 = 0;
LABEL_40:

  return v19 & 1;
}

void __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_280(uint64_t a1)
{
  v2 = +[MFMessageComposeViewController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BE819000, v2, OS_LOG_TYPE_DEFAULT, "Loading item provider for _SWPendingCollaboration with nil items", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_281;
  v11[3] = &unk_1E80701A0;
  *&v5 = *(a1 + 32);
  *(&v5 + 1) = *(a1 + 40);
  v10 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  v15 = *(a1 + 80);
  v14 = *(a1 + 64);
  v9 = [v3 loadObjectOfClass:v4 completionHandler:v11];
}

void __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_281(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_2;
  block[3] = &unk_1E8070178;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v11 = v4;
  v12 = v5;
  v13 = v3;
  v14 = v6;
  v7 = *(a1 + 56);
  v17 = *(a1 + 72);
  v8 = *(a1 + 64);
  v15 = v7;
  v16 = v8;
  v9 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_2(uint64_t a1)
{
  v2 = +[MFMessageComposeViewController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BE819000, v2, OS_LOG_TYPE_DEFAULT, "Loading item provider for _SWPendingCollaboration with non nil items", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E6983020];
  v5 = [*MEMORY[0x1E6983020] identifier];
  v6 = [v3 hasItemConformingToTypeIdentifier:v5];

  v7 = *(a1 + 40);
  if (v6)
  {
    v8 = *(a1 + 32);
    v9 = [v4 identifier];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_282;
    v21[3] = &unk_1E8070128;
    v19 = *(a1 + 40);
    v10 = *(&v19 + 1);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    v22 = v19;
    v23 = v13;
    v25 = *(a1 + 80);
    v24 = *(a1 + 72);
    [v7 _loadSWCopyRepresentationForItemProvider:v8 forTypeIdentifier:v9 completionHandler:v21];
  }

  else
  {
    v14 = [*(a1 + 40) topViewController];
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = *(a1 + 80);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_3;
    v20[3] = &unk_1E8070150;
    v18 = *(a1 + 64);
    v20[4] = *(a1 + 72);
    [v14 insertSWYPendingCollaboration:v15 collaborationShareOptions:v16 collaborationMetadata:v18 sendAsCopyURL:0 isCollaboration:v17 completionHandler:v20];
  }
}

void __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_282(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) topViewController];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 72);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_2_283;
  v9[3] = &unk_1E8070150;
  v8 = *(a1 + 56);
  v9[4] = *(a1 + 64);
  [v4 insertSWYPendingCollaboration:v5 collaborationShareOptions:v6 collaborationMetadata:v8 sendAsCopyURL:v3 isCollaboration:v7 completionHandler:v9];
}

void __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_4(uint64_t a1)
{
  v2 = +[MFMessageComposeViewController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BE819000, v2, OS_LOG_TYPE_DEFAULT, "Loading item provider for _SWPendingCollaboration with nil items", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_287;
  v9[3] = &unk_1E8070218;
  v8 = *(a1 + 40);
  v5 = *(&v8 + 1);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = *(a1 + 64);
  v10 = v8;
  v11 = v6;
  v7 = [v3 loadObjectOfClass:v4 completionHandler:v9];
}

void __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_287(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_2_288;
  block[3] = &unk_1E80701F0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v3;
  v10 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_2_288(uint64_t a1)
{
  v2 = +[MFMessageComposeViewController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BE819000, v2, OS_LOG_TYPE_DEFAULT, "Loading item provider for _SWPendingCollaboration with non nil items", buf, 2u);
  }

  v3 = [*(a1 + 32) topViewController];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_289;
  v7[3] = &unk_1E8070150;
  v6 = *(a1 + 56);
  v7[4] = *(a1 + 64);
  [v3 insertSWYPendingCollaboration:v4 collaborationShareOptions:v5 collaborationMetadata:v6 completionHandler:v7];
}

void __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_2_295(uint64_t a1)
{
  v2 = +[MFMessageComposeViewController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BE819000, v2, OS_LOG_TYPE_DEFAULT, "Calling MVS SPI with nil URL.", buf, 2u);
  }

  if ([*(a1 + 32) canLoadObjectOfClass:objc_opt_class()])
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_296;
    v10[3] = &unk_1E8070290;
    *&v5 = *(a1 + 40);
    *(&v5 + 1) = *(a1 + 48);
    v9 = v5;
    v6 = *(a1 + 56);
    v13 = *(a1 + 80);
    *&v7 = v6;
    *(&v7 + 1) = *(a1 + 64);
    v11 = v9;
    v12 = v7;
    v8 = [v3 loadObjectOfClass:v4 completionHandler:v10];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

void __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_296(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[MFMessageComposeViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "Loading item provider for Type Identifier %@", buf, 0xCu);
  }

  if (v3)
  {
    v6 = v3;
    v7 = [v6 share];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_297;
    v14[3] = &unk_1E8070268;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v15 = v7;
    v16 = v8;
    v17 = v6;
    v10 = v9;
    v20 = *(a1 + 64);
    v11 = *(a1 + 56);
    v18 = v10;
    v19 = v11;
    v12 = v6;
    v13 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v14);
  }
}

void __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_297(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = +[MFMessageComposeViewController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) URL];
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1BE819000, v2, OS_LOG_TYPE_DEFAULT, "Calling MVS SPI with unloaded item provider. URL: %@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) topViewController];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 48) containerSetupInfo];
  v7 = *(a1 + 72);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_298;
  v9[3] = &unk_1E8070150;
  v8 = *(a1 + 56);
  v9[4] = *(a1 + 64);
  [v4 insertCKShareForCollaboration:v5 containerSetupInfo:v6 collaborationShareOptions:v8 isCollaboration:v7 completionHandler:v9];
}

void __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_301(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[MFMessageComposeViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "Loading item provider for Type Identifier %@", &v11, 0xCu);
  }

  if (v3)
  {
    v6 = v3;
    v7 = [v6 share];
    v8 = [*(a1 + 40) topViewController];
    v9 = [v6 containerSetupInfo];
    [v8 insertCKShareForCollaboration:v7 containerSetupInfo:v9 collaborationShareOptions:*(a1 + 48) isCollaboration:*(a1 + 64)];
  }

  else
  {
    v6 = +[MFMessageComposeViewController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_301_cold_1(v10, &v11, v6);
    }
  }
}

- (BOOL)insertCollaborationItemProvider:(id)provider collaborationOptions:(id)options collaborationMetadata:(id)metadata isCollaboration:(BOOL)collaboration
{
  collaborationCopy = collaboration;
  providerCopy = provider;
  optionsCopy = options;
  metadataCopy = metadata;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v13 = get_SWCollaborationShareOptionsClass_softClass;
  v22 = get_SWCollaborationShareOptionsClass_softClass;
  if (!get_SWCollaborationShareOptionsClass_softClass)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __get_SWCollaborationShareOptionsClass_block_invoke;
    v18[3] = &unk_1E806CA38;
    v18[4] = &v19;
    __get_SWCollaborationShareOptionsClass_block_invoke(v18);
    v13 = v20[3];
  }

  v14 = v13;
  _Block_object_dispose(&v19, 8);
  v15 = [[v13 alloc] initWithOptionsGroups:optionsCopy];
  v16 = [(MFMessageComposeViewController *)self insertCollaborationItemProvider:providerCopy collaborationShareOptions:v15 collaborationMetadata:metadataCopy isCollaboration:collaborationCopy];

  return v16;
}

- (BOOL)insertGroupActivity:(id)activity
{
  v13 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v5 = activityCopy != 0;
  if (activityCopy)
  {
    v6 = +[MFMessageComposeViewController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = activityCopy;
      _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "Inserting groupActivity %@{public}", &v11, 0xCu);
    }

    topViewController = [(MFMessageComposeViewController *)self topViewController];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      v5 = 0;
      goto LABEL_10;
    }

    topViewController2 = [(MFMessageComposeViewController *)self topViewController];
    [topViewController2 insertGroupActivity:activityCopy];
  }

  else
  {
    topViewController2 = +[MFMessageComposeViewController log];
    if (os_log_type_enabled(topViewController2, OS_LOG_TYPE_ERROR))
    {
      [MFMessageComposeViewController insertGroupActivity:];
    }
  }

LABEL_10:
  return v5;
}

- (void)showSharedItemInEntryView
{
  topViewController = [(MFMessageComposeViewController *)self topViewController];
  if (topViewController)
  {
    [topViewController showInsertedItemInEntryView];
  }
}

- (BOOL)addRichLinkData:(id)data withWebpageURL:(id)l
{
  dataCopy = data;
  lCopy = l;
  if (lCopy)
  {
    topViewController = [(MFMessageComposeViewController *)self topViewController];
    v9 = topViewController;
    if (topViewController)
    {
      v10 = [topViewController insertRichLinkWithURL:lCopy andData:dataCopy];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setMessage:(id)message withExtensionBundleIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  identifierCopy = identifier;
  if (self->_message != messageCopy)
  {
    objc_storeStrong(&self->_message, message);
    if (self->_message)
    {
      topViewController = [(MFMessageComposeViewController *)self topViewController];
      v10 = topViewController;
      if (topViewController)
      {
        if (identifierCopy)
        {
          v11 = +[MFMessageComposeViewController log];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = 138412290;
            v13 = identifierCopy;
            _os_log_impl(&dword_1BE819000, v11, OS_LOG_TYPE_DEFAULT, "Passing override extensionBundleIdentifier: '%@' to CKSMSComposeController.", &v12, 0xCu);
          }

          if (objc_opt_respondsToSelector())
          {
            [v10 insertMessage:self->_message extensionBundleIdentifier:identifierCopy];
          }
        }

        else
        {
          [topViewController insertMessage:self->_message];
        }
      }
    }
  }
}

- (void)_updateAttachmentCountForAttachmentURL:(id)l
{
  v4 = [(MFMessageComposeViewController *)self _MIMETypeForURL:l];
  if ([(MFMessageComposeViewController *)self _isAudioMIMEType:?])
  {
    ++self->_currentAttachedAudioCount;
  }

  if ([(MFMessageComposeViewController *)self _isVideoMIMEType:v4])
  {
    ++self->_currentAttachedVideoCount;
  }

  if ([(MFMessageComposeViewController *)self _isImageMIMEType:v4])
  {
    ++self->_currentAttachedImageCount;
  }
}

- (void)disableUserAttachments
{
  topViewController = [(MFMessageComposeViewController *)self topViewController];
  [topViewController disableCameraAttachments];
}

- (void)dealloc
{
  topViewController = [(MFMessageComposeViewController *)self topViewController];
  [topViewController removeFromParentViewController];
  [topViewController setDelegate:0];
  [(MFMessageComposeViewController *)self setMessageComposeDelegate:0];
  [(MFMessageComposeViewController *)self setBody:0];
  [(MFMessageComposeViewController *)self setRecipients:0];

  v4.receiver = self;
  v4.super_class = MFMessageComposeViewController;
  [(MFMessageComposeViewController *)&v4 dealloc];
}

- (void)setModalPresentationStyle:(int64_t)style
{
  v3.receiver = self;
  v3.super_class = MFMessageComposeViewController;
  [(MFMessageComposeViewController *)&v3 setModalPresentationStyle:[(MFMessageComposeViewController *)self preferredPresentationStyle]];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = MFMessageComposeViewController;
  [(MFMessageComposeViewController *)&v5 viewDidLoad];
  view = [(MFMessageComposeViewController *)self view];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [view setBackgroundColor:whiteColor];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  topViewController = [(MFMessageComposeViewController *)self topViewController];
  [topViewController setServiceId:self->_serviceId];
  [topViewController setSuggestions:self->_suggestions];
  mf_dataForUICustomization = [(UIViewController *)self mf_dataForUICustomization];
  [topViewController setUICustomizationData:mf_dataForUICustomization];

  [topViewController setShareSheetSessionID:self->_shareSheetSessionID];
  if (self->_shareSheetSessionID || !self->_chatGUID)
  {
    v7 = objc_opt_respondsToSelector();
    body = self->_body;
    subject = self->_subject;
    recipients = self->_recipients;
    if (v7)
    {
      [topViewController setText:body subject:subject addresses:recipients shouldHideClearPluginButton:self->_shouldHideClearPluginButton];
    }

    else
    {
      [topViewController setText:body subject:subject addresses:recipients];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [topViewController setText:self->_body subject:self->_subject addresses:self->_recipients shouldHideClearPluginButton:self->_shouldHideClearPluginButton chatGUID:self->_chatGUID];
  }

  else
  {
    v11 = +[MFMessageComposeViewController log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MFMessageComposeViewController viewWillAppear:];
    }
  }

  [topViewController setUTIs:self->_UTITypes];
  [topViewController setPhotoIDs:self->_photoIDs];
  [topViewController setCloudPhotoIDs:self->_cloudPhotoIDs];
  [topViewController setContentURLs:self->_contentURLs];
  [topViewController setContentText:self->_contentText];
  v12.receiver = self;
  v12.super_class = MFMessageComposeViewController;
  [(MFMessageComposeViewController *)&v12 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = MFMessageComposeViewController;
  [(MFMessageComposeViewController *)&v5 viewDidAppear:appear];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  isPPTAvailable = [mEMORY[0x1E69DC668] isPPTAvailable];

  if (isPPTAvailable)
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_324);
  }
}

void __48__MFMessageComposeViewController_viewDidAppear___block_invoke()
{
  v0 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v0 postNotificationName:@"MFMessageShareComposeViewDidShow" object:0 userInfo:0 deliverImmediately:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MFMessageComposeViewController;
  [(MFMessageComposeViewController *)&v5 viewWillDisappear:disappear];
  if ([(MFMessageComposeViewController *)self isBeingDismissed])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__MFMessageComposeViewController_viewWillDisappear___block_invoke;
    block[3] = &unk_1E806C570;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __52__MFMessageComposeViewController_viewWillDisappear___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MFMessageComposeViewControllerIsBeingDismissed" object:*(a1 + 32)];
}

- (void)smsComposeControllerCancelled:(id)cancelled
{
  WeakRetained = objc_loadWeakRetained(&self->_messageComposeDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained messageComposeViewController:self didFinishWithResult:0];
  }
}

- (void)smsComposeControllerSendStarted:(id)started withText:(id)text messageGUID:(id)d
{
  startedCopy = started;
  dCopy = d;
  _deviceValidationSendCompletion = [(MFMessageComposeViewController *)self _deviceValidationSendCompletion];

  if (_deviceValidationSendCompletion)
  {
    if (dCopy)
    {
      _deviceValidationSendCompletion2 = [(MFMessageComposeViewController *)self _deviceValidationSendCompletion];
      [_MFMessageObserver observeMessageGUID:dCopy completion:_deviceValidationSendCompletion2];
    }

    else
    {
      NSLog(&cfstr_LikelyAttempte.isa);
    }

    [(MFMessageComposeViewController *)self set_deviceValidationSendCompletion:0];
  }

  [(MFMessageComposeViewController *)self smsComposeControllerSendStarted:startedCopy];
}

- (void)smsComposeControllerSendStarted:(id)started
{
  WeakRetained = objc_loadWeakRetained(&self->_messageComposeDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained messageComposeViewController:self didFinishWithResult:1];
  }
}

- (void)smsComposeControllerEntryViewContentInserted:(id)inserted
{
  WeakRetained = objc_loadWeakRetained(&self->_messageComposeDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained messageComposeViewControllerDidShowEntryViewContent:self];
  }
}

- (void)smsComposeControllerShouldSendMessageWithText:(id)text toRecipients:(id)recipients completion:(id)completion
{
  textCopy = text;
  recipientsCopy = recipients;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_messageComposeDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained messageComposeViewController:self shouldSendMessage:textCopy toRecipients:recipientsCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 1);
  }
}

+ (BOOL)isiMessageEnabled
{
  [self _setupAccountMonitor];
  mEMORY[0x1E699BE68] = [MEMORY[0x1E699BE68] sharedInstance];
  v3 = [mEMORY[0x1E699BE68] availabilityForListenerID:sMFListenerName forService:1];

  return v3 == 1;
}

- (void)_setCanEditRecipients:(BOOL)recipients
{
  recipientsCopy = recipients;
  topViewController = [(MFMessageComposeViewController *)self topViewController];
  [topViewController setCanEditRecipients:recipientsCopy];
}

- (void)_setShouldDisableEntryField:(BOOL)field
{
  fieldCopy = field;
  topViewController = [(MFMessageComposeViewController *)self topViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    topViewController2 = [(MFMessageComposeViewController *)self topViewController];
    [topViewController2 setShouldDisableEntryField:fieldCopy];
  }
}

- (void)_setNavBarTitle:(id)title
{
  titleCopy = title;
  topViewController = [(MFMessageComposeViewController *)self topViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    topViewController2 = [(MFMessageComposeViewController *)self topViewController];
    [topViewController2 setNavBarTitle:titleCopy];
  }
}

- (void)_setShouldIgnoreEmailsWhenSending:(BOOL)sending
{
  sendingCopy = sending;
  topViewController = [(MFMessageComposeViewController *)self topViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    topViewController2 = [(MFMessageComposeViewController *)self topViewController];
    [topViewController2 setShouldIgnoreEmailsWhenSending:sendingCopy];
  }
}

- (BOOL)insertCollaborationItemProvider:(NSItemProvider *)itemProvider
{
  v4 = itemProvider;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__MFMessageComposeViewController_insertCollaborationItemProvider___block_invoke;
  v9[3] = &unk_1E80702E0;
  v10 = v4;
  v11 = &v12;
  v9[4] = self;
  v5 = v4;
  v6 = [(NSItemProvider *)v5 loadDataRepresentationForTypeIdentifier:@"com.apple.SharedWithYou.SWCollaborationMetadata" completionHandler:v9];
  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __66__MFMessageComposeViewController_insertCollaborationItemProvider___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v7 = get_SWCollaborationMetadataClass_softClass;
  v17 = get_SWCollaborationMetadataClass_softClass;
  if (!get_SWCollaborationMetadataClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __get_SWCollaborationMetadataClass_block_invoke;
    v13[3] = &unk_1E806CA38;
    v13[4] = &v14;
    __get_SWCollaborationMetadataClass_block_invoke(v13);
    v7 = v15[3];
  }

  v8 = v7;
  _Block_object_dispose(&v14, 8);
  v9 = [v7 objectWithItemProviderData:v5 typeIdentifier:@"com.apple.SharedWithYou.SWCollaborationMetadata" error:0];
  v10 = a1[4];
  v11 = a1[5];
  v12 = [v9 defaultShareOptions];
  *(*(a1[6] + 8) + 24) = [v10 insertCollaborationItemProvider:v11 collaborationShareOptions:v12 collaborationMetadata:v9 isCollaboration:1];
}

- (void)setUPIVerificationCodeSendCompletion:(id)completion
{
  completionCopy = completion;
  if (MGGetBoolAnswer())
  {
    topViewController = [(MFMessageComposeViewController *)self topViewController];
    if (objc_opt_respondsToSelector())
    {
      [topViewController configureForDeviceValidation];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __71__MFMessageComposeViewController_setUPIVerificationCodeSendCompletion___block_invoke;
      aBlock[3] = &unk_1E806EF08;
      v8 = completionCopy;
      v6 = _Block_copy(aBlock);
      [(MFMessageComposeViewController *)self set_deviceValidationSendCompletion:v6];
    }
  }

  else
  {
    NSLog(&cfstr_SCannotBeUsedO.isa, "[MFMessageComposeViewController setUPIVerificationCodeSendCompletion:]");
  }
}

uint64_t __71__MFMessageComposeViewController_setUPIVerificationCodeSendCompletion___block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = +[MFMessageComposeViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "UPISupport Send completion called with didSend: %d", v7, 8u);
  }

  if ((a2 & 1) == 0)
  {
    v5 = [MEMORY[0x1E69B1650] sharedInstance];
    [v5 callRevokeTokenForUPI];
  }

  return (*(*(a1 + 32) + 16))();
}

- (id)messageComposeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_messageComposeDelegate);

  return WeakRetained;
}

- (void)initWithNibName:(os_log_t)log bundle:.cold.1(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "Unable to initialize due to + [%{public}@ canSendText] returns NO.", buf, 0xCu);
}

void __111__MFMessageComposeViewController__loadSWCopyRepresentationForItemProvider_forTypeIdentifier_completionHandler___block_invoke_274_cold_2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_4();
  v3 = v0;
  _os_log_error_impl(&dword_1BE819000, v1, OS_LOG_TYPE_ERROR, "Failed to copy file %@ to temporary directory with error %@", v2, 0x16u);
}

void __111__MFMessageComposeViewController__loadSWCopyRepresentationForItemProvider_forTypeIdentifier_completionHandler___block_invoke_274_cold_3()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __130__MFMessageComposeViewController_insertCollaborationItemProvider_collaborationShareOptions_collaborationMetadata_isCollaboration___block_invoke_301_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  v5 = a1;
  _os_log_error_impl(&dword_1BE819000, a3, OS_LOG_TYPE_ERROR, "Failed to load object of class '%@' for CKShare using legacy CKSMSComposeController SPI.", a2, 0xCu);
}

@end