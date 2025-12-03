@interface _MFMailCompositionContext
+ (id)log;
+ (id)processMessageBody:(id)body asHTML:(BOOL)l;
- (BOOL)ckShareAllowOthersToInvite;
- (BOOL)hasDuetDonationContext;
- (BOOL)includeAttachments;
- (BOOL)isHTML;
- (BOOL)isUsingDefaultAccount;
- (BOOL)prefersFirstLineSelection;
- (BOOL)showContentImmediately;
- (BOOL)showKeyboardImmediately;
- (CKContainerSetupInfo)ckContainerSetupInfo;
- (CKShare)ckShare;
- (FPSandboxingURLWrapper)sharingSandboxingURLWrapper;
- (MFMailCompositionValues)compositionValues;
- (NSArray)UTITypes;
- (NSArray)bccRecipients;
- (NSArray)ccRecipients;
- (NSArray)cloudPhotoIDs;
- (NSArray)contentText;
- (NSArray)contentURLs;
- (NSArray)originalContent;
- (NSArray)photoIDs;
- (NSArray)toRecipients;
- (NSData)serializedMailboxObjectID;
- (NSData)serializedMessageObjectID;
- (NSDate)sendLaterDate;
- (NSMutableArray)contentVariations;
- (NSMutableArray)deferredAttachments;
- (NSString)autosaveIdentifier;
- (NSString)from;
- (NSString)hideMyEmailFrom;
- (NSString)messageBody;
- (NSString)preferredSendingEmailAddress;
- (NSString)shareSheetSessionID;
- (NSString)subject;
- (NSURL)mailtoURL;
- (_MFMailCompositionContext)initWithComposeType:(int64_t)type RFC822Data:(id)data;
- (_MFMailCompositionContext)initWithComposeType:(int64_t)type objectID:(id)d mailboxID:(id)iD subject:(id)subject autosaveID:(id)autosaveID messageRepository:(id)repository mailboxProvider:(id)provider;
- (_MFMailCompositionContext)initWithCompositionValueRepresentation:(id)representation hostApplicationBundleIdentifier:(id)identifier;
- (_MFMailCompositionContext)initWithCompositionValues:(id)values hostApplicationBundleIdentifier:(id)identifier messageRepository:(id)repository mailboxProvider:(id)provider;
- (_MFMailCompositionContext)initWithHandoffActivityPayload:(id)payload;
- (_MFMailCompositionContext)initWithOpenMailComposeContext:(id)context;
- (_MFMailCompositionContext)initWithURL:(id)l composeType:(int64_t)type originalMessage:(id)message legacyMessage:(id)legacyMessage isEML:(BOOL)mL;
- (_MFMailCompositionContextDelegate)delegate;
- (id)addAttachmentData:(id)data mimeType:(id)type fileName:(id)name;
- (id)addAttachmentData:(id)data mimeType:(id)type fileName:(id)name contentID:(id)d;
- (id)addAttachmentDataItemProvider:(id)provider mimeType:(id)type filename:(id)filename contentID:(id)d;
- (id)initDraftRestoreOfMessage:(id)message legacyMessage:(id)legacyMessage draftSubject:(id)subject;
- (id)initRecoveredAutosavedMessageWithIdentifier:(id)identifier draftSubject:(id)subject composeType:(int64_t)type messageRepository:(id)repository originalMessageObjectID:(id)d;
- (int)sourceAccountManagement;
- (int64_t)ckSharePermissionType;
- (int64_t)composeType;
- (int64_t)defaultContentVariationIndex;
- (unint64_t)caretPosition;
- (unint64_t)sendLaterContext;
- (void)_loadMessageWithAutosaveIdentifier:(id)identifier messageRepository:(id)repository originalMessageObjectID:(id)d;
- (void)_loadMessageWithObjectID:(id)d mailboxObjectID:(id)iD messageRepository:(id)repository mailboxProvider:(id)provider;
- (void)_notifyDidFinishLoadingWithLegacyMessage:(id)message;
- (void)collection:(id)collection replacedExistingItemID:(id)d withNewItemID:(id)iD;
- (void)dealloc;
- (void)insertAttachmentWithData:(id)data fileName:(id)name mimeType:(id)type contentID:(id)d;
- (void)insertAttachmentWithURL:(id)l;
- (void)insertDeferredAttachmentsIntoComposeWebView:(id)view;
- (void)removeAttachment:(id)attachment;
- (void)setAutosaveIdentifier:(id)identifier;
- (void)setBccRecipients:(id)recipients;
- (void)setCaretPosition:(unint64_t)position;
- (void)setCcRecipients:(id)recipients;
- (void)setCkContainerSetupInfo:(id)info;
- (void)setCkShare:(id)share;
- (void)setCkShareAllowOthersToInvite:(BOOL)invite;
- (void)setCkSharePermissionType:(int64_t)type;
- (void)setCloudPhotoIDs:(id)ds;
- (void)setComposeType:(int64_t)type;
- (void)setContentText:(id)text;
- (void)setContentURLs:(id)ls;
- (void)setContentVariations:(id)variations;
- (void)setDefaultContentVariationIndex:(int64_t)index;
- (void)setDeferredAttachments:(id)attachments;
- (void)setFrom:(id)from;
- (void)setHideMyEmailFrom:(id)from;
- (void)setIncludeAttachments:(BOOL)attachments;
- (void)setIsHTML:(BOOL)l;
- (void)setIsUsingDefaultAccount:(BOOL)account;
- (void)setMailtoURL:(id)l;
- (void)setMessageBody:(id)body;
- (void)setMessageBody:(id)body isHTML:(BOOL)l;
- (void)setOriginalContent:(id)content;
- (void)setOriginalMessage:(id)message;
- (void)setPhotoIDs:(id)ds;
- (void)setPreferredSendingEmailAddress:(id)address;
- (void)setPrefersFirstLineSelection:(BOOL)selection;
- (void)setSendLaterContext:(unint64_t)context;
- (void)setSendLaterDate:(id)date;
- (void)setSerializedMailboxObjectID:(id)d;
- (void)setSerializedMessageObjectID:(id)d;
- (void)setShareSheetSessionID:(id)d;
- (void)setSharingSandboxingURLWrapper:(id)wrapper;
- (void)setShowContentImmediately:(BOOL)immediately;
- (void)setShowKeyboardImmediately:(BOOL)immediately;
- (void)setSourceAccountManagement:(int)management;
- (void)setSubject:(id)subject;
- (void)setToRecipients:(id)recipients;
- (void)setUTITypes:(id)types;
- (void)switchToReplyAllWithDelegate:(id)delegate;
- (void)switchToReplyWithDelegate:(id)delegate;
@end

@implementation _MFMailCompositionContext

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32___MFMailCompositionContext_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_6 != -1)
  {
    dispatch_once(&log_onceToken_6, block);
  }

  v2 = log_log_6;

  return v2;
}

- (_MFMailCompositionContext)initWithComposeType:(int64_t)type RFC822Data:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v7 = [MEMORY[0x1E69B1628] messageWithRFC822Data:dataCopy];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(_MFMailCompositionContext *)self initWithURL:0 composeType:type originalMessage:0 legacyMessage:v7];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [objc_alloc(MEMORY[0x1E69B1688]) initWithMessageData:dataCopy parentPart:0];
    attachmentManager = v9->_attachmentManager;
    messageURL = [v7 messageURL];
    [(MFAttachmentComposeManager *)attachmentManager addProvider:v10 forBaseURL:messageURL];
  }

  return v9;
}

- (_MFMailCompositionContext)initWithURL:(id)l composeType:(int64_t)type originalMessage:(id)message legacyMessage:(id)legacyMessage isEML:(BOOL)mL
{
  v64[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  messageCopy = message;
  legacyMessageCopy = legacyMessage;
  v63.receiver = self;
  v63.super_class = _MFMailCompositionContext;
  v15 = [(_MFMailCompositionContext *)&v63 init];
  v16 = v15;
  v17 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_legacyMessage, legacyMessage);
    objc_storeStrong(&v16->_originalMessage, message);
    [(_MFMailCompositionContext *)v17 setComposeType:type];
    objectID = [messageCopy objectID];
    serializedRepresentation = [objectID serializedRepresentation];
    [(_MFMailCompositionContext *)v17 setSerializedMessageObjectID:serializedRepresentation];

    v20 = MFMessageComposeLoadingSignpostLog();
    v17->_signpostID = os_signpost_id_generate(v20);

    if (messageCopy && !mL)
    {
      v21 = [MEMORY[0x1E699ADA0] predicateForMessagesInConversation:{objc_msgSend(messageCopy, "conversationID")}];
      v22 = objc_alloc(MEMORY[0x1E699AE28]);
      v23 = objc_opt_class();
      v24 = [MEMORY[0x1E699ADA0] sortDescriptorForDateAscending:0];
      v64[0] = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:1];
      v26 = [v22 initWithTargetClass:v23 predicate:v21 sortDescriptors:v25 queryOptions:0 label:@"MFMailCompositionContext"];

      v27 = objc_alloc(MEMORY[0x1E699AD90]);
      repository = [messageCopy repository];
      v29 = [v27 initWithQuery:v26 repository:repository];
      messageList = v17->_messageList;
      v17->_messageList = v29;

      [(EMMessageList *)v17->_messageList beginObserving:v17];
    }

    if (legacyMessageCopy && type <= 9 && ((1 << type) & 0x274) != 0)
    {
      if ([legacyMessageCopy sourceIsManaged])
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }

      [(_MFMailCompositionContext *)v17 setSourceAccountManagement:v31];
    }

    if (lCopy)
    {
      v32 = [objc_alloc(MEMORY[0x1E699AD10]) initWithURL:lCopy];
      toRecipients = [v32 toRecipients];
      v34 = [toRecipients ef_map:&__block_literal_global_25];
      [(_MFMailCompositionContext *)v17 setToRecipients:v34];

      ccRecipients = [v32 ccRecipients];
      v36 = [ccRecipients ef_map:&__block_literal_global_62];
      [(_MFMailCompositionContext *)v17 setCcRecipients:v36];

      bccRecipients = [v32 bccRecipients];
      v38 = [bccRecipients ef_map:&__block_literal_global_64];
      [(_MFMailCompositionContext *)v17 setBccRecipients:v38];

      subject = [v32 subject];
      [(_MFMailCompositionContext *)v17 setSubject:subject];

      from = [v32 from];

      if (from)
      {
        from2 = [v32 from];
        [(_MFMailCompositionContext *)v17 setHideMyEmailFrom:from2];
      }

      body = [v32 body];
      [(_MFMailCompositionContext *)v17 setMessageBody:body isHTML:1];
    }

    defaultManager = [MEMORY[0x1E69B15D0] defaultManager];
    attachmentManager = v17->_attachmentManager;
    v17->_attachmentManager = defaultManager;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v45 = objc_alloc_init(MEMORY[0x1E69B15C0]);
      v46 = v17->_attachmentManager;
      v17->_attachmentManager = v45;
    }

    if (legacyMessageCopy)
    {
      v47 = [objc_alloc(MEMORY[0x1E69B1688]) initWithMessage:legacyMessageCopy];
      v48 = v17->_attachmentManager;
      messageURL = [legacyMessageCopy messageURL];
      [(MFAttachmentComposeManager *)v48 addProvider:v47 forBaseURL:messageURL];
    }

    v50 = objc_alloc_init(MEMORY[0x1E69B15C8]);
    attachmentContext = v17->_attachmentContext;
    v17->_attachmentContext = v50;

    messageURL2 = [(MFMailMessage *)v17->_legacyMessage messageURL];
    [(MFAttachmentCompositionContext *)v17->_attachmentContext setAttachmentsBaseURL:messageURL2];

    [(MFAttachmentCompositionContext *)v17->_attachmentContext setAttachmentsManager:v17->_attachmentManager];
    [(_MFMailCompositionContext *)v17 setShowContentImmediately:1];
    [(_MFMailCompositionContext *)v17 setCaretPosition:0x7FFFFFFFFFFFFFFFLL];
    [(_MFMailCompositionContext *)v17 setDefaultContentVariationIndex:0x7FFFFFFFFFFFFFFFLL];
    v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(_MFMailCompositionContext *)v17 setDeferredAttachments:v53];

    em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
    v55 = [em_userDefaults objectForKey:@"IncludeAttachmentReplies"];
    stringValue = [v55 stringValue];

    if (stringValue)
    {
      v57 = [stringValue isEqualToString:@"IncludeAttachmentRepliesWhenAdding"];
    }

    else
    {
      v57 = 1;
    }

    v17->_includeAttachmentsWhenAdding = v57;
    v58 = MEMORY[0x1E699B978];
    v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.mail.MFMailCompositionContext.observationScheduler"];
    v60 = [v58 serialDispatchQueueSchedulerWithName:v59];
    observationScheduler = v17->_observationScheduler;
    v17->_observationScheduler = v60;

    v17->_isQuickReply = 0;
  }

  return v17;
}

- (id)initRecoveredAutosavedMessageWithIdentifier:(id)identifier draftSubject:(id)subject composeType:(int64_t)type messageRepository:(id)repository originalMessageObjectID:(id)d
{
  identifierCopy = identifier;
  subjectCopy = subject;
  repositoryCopy = repository;
  dCopy = d;
  v16 = [(_MFMailCompositionContext *)self initWithURL:0 composeType:type originalMessage:0 legacyMessage:0];
  v17 = v16;
  if (v16)
  {
    v16->_isLoadingMessageData = 1;
    objc_storeStrong(&v16->_draftSubject, subject);
    [(_MFMailCompositionContext *)v17 setAutosaveIdentifier:identifierCopy];
    [(_MFMailCompositionContext *)v17 _loadMessageWithAutosaveIdentifier:identifierCopy messageRepository:repositoryCopy originalMessageObjectID:dCopy];
  }

  return v17;
}

- (id)initDraftRestoreOfMessage:(id)message legacyMessage:(id)legacyMessage draftSubject:(id)subject
{
  subjectCopy = subject;
  v10 = [(_MFMailCompositionContext *)self initWithURL:0 composeType:2 originalMessage:message legacyMessage:legacyMessage];
  v11 = v10;
  if (v10)
  {
    v10->_isLoadingMessageData = 0;
    objc_storeStrong(&v10->_draftSubject, subject);
  }

  return v11;
}

- (_MFMailCompositionContext)initWithHandoffActivityPayload:(id)payload
{
  payloadCopy = payload;
  v5 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E69ADC78]];
  v6 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E69ADC88]];
  v7 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E69ADC68]];
  v8 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E69ADC60]];
  v9 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E69ADC80]];
  v10 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E69ADC70]];
  v11 = [[_MFMailCompositionContext alloc] initWithComposeType:0];

  [(_MFMailCompositionContext *)v11 setShowKeyboardImmediately:1];
  if (v5)
  {
    [(_MFMailCompositionContext *)v11 setPreferredSendingEmailAddress:v5];
  }

  [(_MFMailCompositionContext *)v11 setToRecipients:v6];
  [(_MFMailCompositionContext *)v11 setCcRecipients:v7];
  [(_MFMailCompositionContext *)v11 setBccRecipients:v8];
  [(_MFMailCompositionContext *)v11 setSubject:v9];
  [(_MFMailCompositionContext *)v11 setMessageBody:v10 isHTML:0];

  return v11;
}

- (_MFMailCompositionContext)initWithCompositionValueRepresentation:(id)representation hostApplicationBundleIdentifier:(id)identifier
{
  representationCopy = representation;
  identifierCopy = identifier;
  v8 = [[MFMailCompositionValues alloc] initWithDictionaryRepresentation:representationCopy];
  autosaveIdentifier = [(MFMailCompositionValues *)v8 autosaveIdentifier];
  mailtoURL = [(MFMailCompositionValues *)v8 mailtoURL];
  subject = [(MFMailCompositionValues *)v8 subject];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v12 = [(_MFMailCompositionContext *)self initRecoveredAutosavedMessageWithIdentifier:autosaveIdentifier draftSubject:subject messageRepository:0 originalMessageObjectID:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(_MFMailCompositionContext *)self initWithURL:mailtoURL];
    }

    else
    {
      v12 = [(_MFMailCompositionContext *)self initWithCompositionValues:v8 hostApplicationBundleIdentifier:identifierCopy];
    }
  }

  v13 = v12;

  return v13;
}

- (_MFMailCompositionContext)initWithCompositionValues:(id)values hostApplicationBundleIdentifier:(id)identifier messageRepository:(id)repository mailboxProvider:(id)provider
{
  valuesCopy = values;
  identifierCopy = identifier;
  repositoryCopy = repository;
  providerCopy = provider;
  v16 = -[_MFMailCompositionContext initWithComposeType:](self, "initWithComposeType:", [valuesCopy composeType]);
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_compositionValues, values);
    objc_storeStrong(&v17->_originatingBundleID, identifier);
    serializedMessageObjectID = [valuesCopy serializedMessageObjectID];
    if (serializedMessageObjectID)
    {
      if (!repositoryCopy)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v17 file:@"MFMailCompositionContext.m" lineNumber:319 description:@"Expected repository to load message"];
      }

      v19 = [MEMORY[0x1E699ADA8] objectIDFromSerializedRepresentation:serializedMessageObjectID];
      serializedMailboxObjectID = [valuesCopy serializedMailboxObjectID];
      if (serializedMailboxObjectID)
      {
        v21 = [MEMORY[0x1E699AD20] objectIDFromSerializedRepresentation:serializedMailboxObjectID];
      }

      else
      {
        v22 = MFComposeLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BE819000, v22, OS_LOG_TYPE_DEFAULT, "Mailbox object ID is not available, fallback to default", buf, 2u);
        }

        v21 = 0;
      }

      deferredAttachments = [valuesCopy deferredAttachments];
      [(_MFMailCompositionContext *)v17 setDeferredAttachments:deferredAttachments];

      [(_MFMailCompositionContext *)v17 _loadMessageWithObjectID:v19 mailboxObjectID:v21 messageRepository:repositoryCopy mailboxProvider:providerCopy];
    }
  }

  return v17;
}

- (_MFMailCompositionContext)initWithComposeType:(int64_t)type objectID:(id)d mailboxID:(id)iD subject:(id)subject autosaveID:(id)autosaveID messageRepository:(id)repository mailboxProvider:(id)provider
{
  dCopy = d;
  iDCopy = iD;
  subjectCopy = subject;
  autosaveIDCopy = autosaveID;
  repositoryCopy = repository;
  providerCopy = provider;
  if (dCopy)
  {
    if (repositoryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFMailCompositionContext.m" lineNumber:339 description:{@"Invalid parameter not satisfying: %@", @"objectID"}];

    if (repositoryCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"MFMailCompositionContext.m" lineNumber:340 description:{@"Invalid parameter not satisfying: %@", @"messageRepository"}];

LABEL_3:
  v22 = [(_MFMailCompositionContext *)self initWithURL:0 composeType:type originalMessage:0 legacyMessage:0];
  if (v22)
  {
    v23 = [MFComposeTypeFactory subjectFromSubject:subjectCopy withComposeType:type];
    [(_MFMailCompositionContext *)v22 setSubject:v23];

    [(_MFMailCompositionContext *)v22 setAutosaveIdentifier:autosaveIDCopy];
    serializedRepresentation = [dCopy serializedRepresentation];
    [(_MFMailCompositionContext *)v22 setSerializedMessageObjectID:serializedRepresentation];

    serializedRepresentation2 = [iDCopy serializedRepresentation];
    [(_MFMailCompositionContext *)v22 setSerializedMailboxObjectID:serializedRepresentation2];

    [(_MFMailCompositionContext *)v22 _loadMessageWithObjectID:dCopy mailboxObjectID:iDCopy messageRepository:repositoryCopy mailboxProvider:providerCopy];
  }

  return v22;
}

- (void)_loadMessageWithObjectID:(id)d mailboxObjectID:(id)iD messageRepository:(id)repository mailboxProvider:(id)provider
{
  iDCopy = iD;
  providerCopy = provider;
  self->_isLoadingMessageData = 1;
  v12 = [repository messageForObjectID:d];
  objc_initWeak(&location, self);
  mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __104___MFMailCompositionContext__loadMessageWithObjectID_mailboxObjectID_messageRepository_mailboxProvider___block_invoke;
  v19[3] = &unk_1E806FB90;
  objc_copyWeak(&v22, &location);
  v14 = providerCopy;
  v20 = v14;
  v15 = iDCopy;
  v21 = v15;
  [v12 onScheduler:mainThreadScheduler addSuccessBlock:v19];

  mainThreadScheduler2 = [MEMORY[0x1E699B978] mainThreadScheduler];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __104___MFMailCompositionContext__loadMessageWithObjectID_mailboxObjectID_messageRepository_mailboxProvider___block_invoke_99;
  v17[3] = &unk_1E806FBB8;
  objc_copyWeak(&v18, &location);
  [v12 onScheduler:mainThreadScheduler2 addFailureBlock:v17];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)_loadMessageWithAutosaveIdentifier:(id)identifier messageRepository:(id)repository originalMessageObjectID:(id)d
{
  identifierCopy = identifier;
  repositoryCopy = repository;
  dCopy = d;
  autosave = [MEMORY[0x1E69ADAC8] autosave];
  v12 = [autosave autosavedMessageDataWithIdentifier:identifierCopy];

  nullFuture = [MEMORY[0x1E699B7C8] nullFuture];
  if (_os_feature_enabled_impl() && EMIsGreymatterSupported() && (*(*MEMORY[0x1E699B748] + 16))())
  {
    v14 = [repositoryCopy messageForObjectID:dCopy];

    nullFuture = v14;
  }

  v15 = [MEMORY[0x1E699B978] globalAsyncSchedulerWithQualityOfService:33];
  v16 = MFComposeLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [_MFMailCompositionContext _loadMessageWithAutosaveIdentifier:identifierCopy messageRepository:self originalMessageObjectID:v16];
  }

  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __106___MFMailCompositionContext__loadMessageWithAutosaveIdentifier_messageRepository_originalMessageObjectID___block_invoke;
  v24[3] = &unk_1E806FC58;
  objc_copyWeak(&v27, &location);
  v17 = identifierCopy;
  v25 = v17;
  v18 = nullFuture;
  v26 = v18;
  [v12 onScheduler:v15 addSuccessBlock:v24];
  mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __106___MFMailCompositionContext__loadMessageWithAutosaveIdentifier_messageRepository_originalMessageObjectID___block_invoke_2_108;
  v21[3] = &unk_1E806FC08;
  objc_copyWeak(&v23, &location);
  v20 = v17;
  v22 = v20;
  [v12 onScheduler:mainThreadScheduler addFailureBlock:v21];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (void)_notifyDidFinishLoadingWithLegacyMessage:(id)message
{
  objc_storeStrong(&self->_legacyMessage, message);
  messageCopy = message;
  self->_isLoadingMessageData = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained mailCompositionContext:self didFinishLoadingMessage:0 legacyMessage:messageCopy error:0];
}

- (_MFMailCompositionContext)initWithOpenMailComposeContext:(id)context
{
  v41 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  compositionValues = [contextCopy compositionValues];
  hostApplicationBundleIdentifier = [contextCopy hostApplicationBundleIdentifier];
  v6 = [(_MFMailCompositionContext *)self initWithCompositionValueRepresentation:compositionValues hostApplicationBundleIdentifier:hostApplicationBundleIdentifier];

  if (v6)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    attachments = [contextCopy attachments];
    v8 = [attachments countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v8)
    {
      v9 = *v35;
      obj = attachments;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          data = [v11 data];

          if (data)
          {
            data2 = [v11 data];
            mimeType = [v11 mimeType];
            fileName = [v11 fileName];
            v16 = [(_MFMailCompositionContext *)v6 addAttachmentData:data2 mimeType:mimeType fileName:fileName];
          }

          else
          {
            fileURL = [v11 fileURL];

            if (fileURL)
            {
              v18 = MEMORY[0x1E69B15E8];
              fileURL2 = [v11 fileURL];
              data2 = [v18 securityScopedURL:fileURL2];

              startReadAccess = [data2 startReadAccess];
              lastPathComponent = [startReadAccess lastPathComponent];
              if (![lastPathComponent length])
              {
                fileName2 = [v11 fileName];

                lastPathComponent = fileName2;
              }

              v33 = 0;
              v23 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:startReadAccess options:0 error:&v33];
              v24 = v33;
              if (v23)
              {
                mimeType2 = [v11 mimeType];
                v26 = [(_MFMailCompositionContext *)v6 addAttachmentData:v23 mimeType:mimeType2 fileName:lastPathComponent];
              }

              else
              {
                mimeType2 = MFComposeLog();
                if (os_log_type_enabled(mimeType2, OS_LOG_TYPE_ERROR))
                {
                  ef_publicDescription = [v24 ef_publicDescription];
                  [(_MFMailCompositionContext *)ef_publicDescription initWithOpenMailComposeContext:v38, &v39, mimeType2];
                }
              }

              [data2 stopAccess];
            }

            else
            {
              data2 = MFComposeLog();
              if (os_log_type_enabled(data2, OS_LOG_TYPE_ERROR))
              {
                [(_MFMailCompositionContext *)&v31 initWithOpenMailComposeContext:v32, data2];
              }
            }
          }
        }

        attachments = obj;
        v8 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v8);
    }
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(EMMessageList *)self->_messageList stopObserving:self];
  v4.receiver = self;
  v4.super_class = _MFMailCompositionContext;
  [(_MFMailCompositionContext *)&v4 dealloc];
}

- (void)switchToReplyAllWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if ([(_MFMailCompositionContext *)self composeType]== 4)
  {
    [(_MFMailCompositionContext *)self setComposeType:5];
    [MFComposeTypeFactory setupSwitchToReplyAllWithModel:self delegate:delegateCopy];
  }
}

- (void)switchToReplyWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if ([(_MFMailCompositionContext *)self composeType]== 5)
  {
    [(_MFMailCompositionContext *)self setComposeType:4];
    [MFComposeTypeFactory setupSwitchToReplyWithModel:self delegate:delegateCopy];
  }
}

+ (id)processMessageBody:(id)body asHTML:(BOOL)l
{
  bodyCopy = body;
  v6 = bodyCopy;
  if (bodyCopy && !l)
  {
    ef_stringByEscapingForMessageBody = [bodyCopy ef_stringByEscapingForMessageBody];

    v6 = ef_stringByEscapingForMessageBody;
  }

  return v6;
}

- (void)setMessageBody:(id)body isHTML:(BOOL)l
{
  lCopy = l;
  bodyCopy = body;
  v6 = [objc_opt_class() processMessageBody:bodyCopy asHTML:lCopy];
  [(_MFMailCompositionContext *)self setMessageBody:v6];

  [(_MFMailCompositionContext *)self setIsHTML:lCopy];
}

- (id)addAttachmentData:(id)data mimeType:(id)type fileName:(id)name
{
  v5 = [(_MFMailCompositionContext *)self addAttachmentData:data mimeType:type fileName:name contentID:0];

  return v5;
}

- (id)addAttachmentData:(id)data mimeType:(id)type fileName:(id)name contentID:(id)d
{
  dataCopy = data;
  typeCopy = type;
  nameCopy = name;
  dCopy = d;
  attachmentManager = self->_attachmentManager;
  contextID = [(_MFMailCompositionContext *)self contextID];
  v16 = [(MFAttachmentComposeManager *)attachmentManager attachmentForData:dataCopy mimeType:typeCopy fileName:nameCopy contentID:dCopy context:contextID];

  return v16;
}

- (id)addAttachmentDataItemProvider:(id)provider mimeType:(id)type filename:(id)filename contentID:(id)d
{
  providerCopy = provider;
  typeCopy = type;
  filenameCopy = filename;
  dCopy = d;
  attachmentManager = self->_attachmentManager;
  contextID = [(_MFMailCompositionContext *)self contextID];
  v16 = [(MFAttachmentComposeManager *)attachmentManager attachmentForItemProvider:providerCopy mimeType:typeCopy fileName:filenameCopy contentID:dCopy context:contextID];

  return v16;
}

- (void)removeAttachment:(id)attachment
{
  attachmentManager = self->_attachmentManager;
  v4 = [attachment url];
  [(MFAttachmentComposeManager *)attachmentManager removeAttachmentForURL:?];
}

- (void)insertAttachmentWithURL:(id)l
{
  lCopy = l;
  composeWebView = [(_MFMailCompositionContext *)self composeWebView];

  if (composeWebView)
  {
    composeWebView2 = [(_MFMailCompositionContext *)self composeWebView];
    [composeWebView2 insertDocumentWithURL:lCopy isDrawingFile:0];
  }

  else
  {
    composeWebView2 = [(_MFMailCompositionContext *)self deferredAttachments];
    [composeWebView2 addObject:lCopy];
  }
}

- (void)insertAttachmentWithData:(id)data fileName:(id)name mimeType:(id)type contentID:(id)d
{
  dataCopy = data;
  nameCopy = name;
  typeCopy = type;
  dCopy = d;
  composeWebView = [(_MFMailCompositionContext *)self composeWebView];

  if (composeWebView)
  {
    composeWebView2 = [(_MFMailCompositionContext *)self composeWebView];
    [composeWebView2 insertDocumentWithData:dataCopy fileName:nameCopy mimeType:typeCopy contentID:dCopy];
  }

  else
  {
    composeWebView2 = [(_MFMailCompositionContext *)self deferredAttachments];
    v15 = [MEMORY[0x1E69B15E0] attachmentData:dataCopy fileName:nameCopy mimeType:typeCopy contentID:dCopy];
    [composeWebView2 addObject:v15];
  }
}

- (void)insertDeferredAttachmentsIntoComposeWebView:(id)view
{
  v24 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [(_MFMailCompositionContext *)self setComposeWebView:viewCopy];
  deferredAttachments = [(_MFMailCompositionContext *)self deferredAttachments];
  if ([deferredAttachments count])
  {
    [viewCopy setCaretPosition:0];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = deferredAttachments;
    v5 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v5)
    {
      v6 = *v18;
      do
      {
        v7 = 0;
        do
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v17 + 1) + 8 * v7);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = v8;
            [viewCopy insertDocumentWithURL:v9 isDrawingFile:0];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v9 = v8;
              data = [v9 data];
              fileName = [v9 fileName];
              mimeType = [v9 mimeType];
              contentID = [v9 contentID];
              [viewCopy insertDocumentWithData:data fileName:fileName mimeType:mimeType contentID:contentID];
            }

            else
            {
              v9 = MFLogGeneral();
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
              {
                className = [v8 className];
                [(_MFMailCompositionContext *)className insertDeferredAttachmentsIntoComposeWebView:buf, &v22, v9];
              }
            }
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v5);
    }
  }
}

- (BOOL)hasDuetDonationContext
{
  uTITypes = [(_MFMailCompositionContext *)self UTITypes];
  if (uTITypes)
  {
    v4 = 1;
  }

  else
  {
    photoIDs = [(_MFMailCompositionContext *)self photoIDs];
    if (photoIDs)
    {
      v4 = 1;
    }

    else
    {
      cloudPhotoIDs = [(_MFMailCompositionContext *)self cloudPhotoIDs];
      if (cloudPhotoIDs)
      {
        v4 = 1;
      }

      else
      {
        contentURLs = [(_MFMailCompositionContext *)self contentURLs];
        if (contentURLs)
        {
          v4 = 1;
        }

        else
        {
          contentText = [(_MFMailCompositionContext *)self contentText];
          v4 = contentText != 0;
        }
      }
    }
  }

  return v4;
}

- (void)collection:(id)collection replacedExistingItemID:(id)d withNewItemID:(id)iD
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  originalMessage = [(_MFMailCompositionContext *)self originalMessage];
  itemID = [originalMessage itemID];
  v11 = [itemID isEqual:dCopy];

  if (v11)
  {
    v12 = MFComposeLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = dCopy;
      v18 = 2114;
      v19 = iDCopy;
      _os_log_impl(&dword_1BE819000, v12, OS_LOG_TYPE_DEFAULT, "Updating message itemID for Composition Context. Old itemID: %{public}@. New itemID:%{public}@", buf, 0x16u);
    }

    v13 = [(EMMessageList *)self->_messageList messageListItemForItemID:iDCopy];
    observationScheduler = [(_MFMailCompositionContext *)self observationScheduler];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77___MFMailCompositionContext_collection_replacedExistingItemID_withNewItemID___block_invoke;
    v15[3] = &unk_1E806FC80;
    v15[4] = self;
    [v13 onScheduler:observationScheduler addSuccessBlock:v15];
  }
}

- (NSURL)mailtoURL
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  mailtoURL = [compositionValues mailtoURL];

  return mailtoURL;
}

- (void)setMailtoURL:(id)l
{
  lCopy = l;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setMailtoURL:lCopy];
}

- (NSString)messageBody
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  messageBody = [compositionValues messageBody];

  return messageBody;
}

- (void)setMessageBody:(id)body
{
  bodyCopy = body;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setMessageBody:bodyCopy];
}

- (NSString)from
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  from = [compositionValues from];

  return from;
}

- (void)setFrom:(id)from
{
  fromCopy = from;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setFrom:fromCopy];
}

- (NSString)hideMyEmailFrom
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  hideMyEmailFrom = [compositionValues hideMyEmailFrom];

  return hideMyEmailFrom;
}

- (void)setHideMyEmailFrom:(id)from
{
  fromCopy = from;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setHideMyEmailFrom:fromCopy];
}

- (BOOL)isHTML
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  isHTML = [compositionValues isHTML];

  return isHTML;
}

- (void)setIsHTML:(BOOL)l
{
  lCopy = l;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setIsHTML:lCopy];
}

- (NSArray)toRecipients
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  toRecipients = [compositionValues toRecipients];

  return toRecipients;
}

- (void)setToRecipients:(id)recipients
{
  recipientsCopy = recipients;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setToRecipients:recipientsCopy];
}

- (NSArray)ccRecipients
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  ccRecipients = [compositionValues ccRecipients];

  return ccRecipients;
}

- (void)setCcRecipients:(id)recipients
{
  recipientsCopy = recipients;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setCcRecipients:recipientsCopy];
}

- (NSArray)bccRecipients
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  bccRecipients = [compositionValues bccRecipients];

  return bccRecipients;
}

- (void)setBccRecipients:(id)recipients
{
  recipientsCopy = recipients;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setBccRecipients:recipientsCopy];
}

- (NSString)preferredSendingEmailAddress
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  preferredSendingEmailAddress = [compositionValues preferredSendingEmailAddress];

  return preferredSendingEmailAddress;
}

- (void)setPreferredSendingEmailAddress:(id)address
{
  addressCopy = address;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setPreferredSendingEmailAddress:addressCopy];
}

- (BOOL)showKeyboardImmediately
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  showKeyboardImmediately = [compositionValues showKeyboardImmediately];

  return showKeyboardImmediately;
}

- (void)setShowKeyboardImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setShowKeyboardImmediately:immediatelyCopy];
}

- (BOOL)showContentImmediately
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  showContentImmediately = [compositionValues showContentImmediately];

  return showContentImmediately;
}

- (void)setShowContentImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setShowContentImmediately:immediatelyCopy];
}

- (int)sourceAccountManagement
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  sourceAccountManagement = [compositionValues sourceAccountManagement];

  return sourceAccountManagement;
}

- (void)setSourceAccountManagement:(int)management
{
  v3 = *&management;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setSourceAccountManagement:v3];
}

- (unint64_t)caretPosition
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  caretPosition = [compositionValues caretPosition];

  return caretPosition;
}

- (void)setCaretPosition:(unint64_t)position
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setCaretPosition:position];
}

- (NSArray)UTITypes
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  uTITypes = [compositionValues UTITypes];

  return uTITypes;
}

- (void)setUTITypes:(id)types
{
  typesCopy = types;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setUTITypes:typesCopy];
}

- (NSArray)photoIDs
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  photoIDs = [compositionValues photoIDs];

  return photoIDs;
}

- (void)setPhotoIDs:(id)ds
{
  dsCopy = ds;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setPhotoIDs:dsCopy];
}

- (NSArray)cloudPhotoIDs
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  cloudPhotoIDs = [compositionValues cloudPhotoIDs];

  return cloudPhotoIDs;
}

- (void)setCloudPhotoIDs:(id)ds
{
  dsCopy = ds;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setCloudPhotoIDs:dsCopy];
}

- (NSArray)contentText
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  contentText = [compositionValues contentText];

  return contentText;
}

- (void)setContentText:(id)text
{
  textCopy = text;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setContentText:textCopy];
}

- (NSArray)contentURLs
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  contentURLs = [compositionValues contentURLs];

  return contentURLs;
}

- (void)setContentURLs:(id)ls
{
  lsCopy = ls;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setContentURLs:lsCopy];
}

- (NSArray)originalContent
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  originalContent = [compositionValues originalContent];

  return originalContent;
}

- (void)setOriginalContent:(id)content
{
  contentCopy = content;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setOriginalContent:contentCopy];
}

- (NSMutableArray)contentVariations
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  contentVariations = [compositionValues contentVariations];

  return contentVariations;
}

- (void)setContentVariations:(id)variations
{
  variationsCopy = variations;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setContentVariations:variationsCopy];
}

- (int64_t)defaultContentVariationIndex
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  defaultContentVariationIndex = [compositionValues defaultContentVariationIndex];

  return defaultContentVariationIndex;
}

- (void)setDefaultContentVariationIndex:(int64_t)index
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setDefaultContentVariationIndex:index];
}

- (NSString)shareSheetSessionID
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  shareSheetSessionID = [compositionValues shareSheetSessionID];

  return shareSheetSessionID;
}

- (void)setShareSheetSessionID:(id)d
{
  dCopy = d;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setShareSheetSessionID:dCopy];
}

- (BOOL)isUsingDefaultAccount
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  isUsingDefaultAccount = [compositionValues isUsingDefaultAccount];

  return isUsingDefaultAccount;
}

- (void)setIsUsingDefaultAccount:(BOOL)account
{
  accountCopy = account;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setIsUsingDefaultAccount:accountCopy];
}

- (int64_t)composeType
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  composeType = [compositionValues composeType];

  return composeType;
}

- (void)setComposeType:(int64_t)type
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setComposeType:type];
}

- (BOOL)prefersFirstLineSelection
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  prefersFirstLineSelection = [compositionValues prefersFirstLineSelection];

  return prefersFirstLineSelection;
}

- (void)setPrefersFirstLineSelection:(BOOL)selection
{
  selectionCopy = selection;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setPrefersFirstLineSelection:selectionCopy];
}

- (NSData)serializedMessageObjectID
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  serializedMessageObjectID = [compositionValues serializedMessageObjectID];

  return serializedMessageObjectID;
}

- (void)setSerializedMessageObjectID:(id)d
{
  dCopy = d;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setSerializedMessageObjectID:dCopy];
}

- (BOOL)includeAttachments
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  includeAttachments = [compositionValues includeAttachments];

  return includeAttachments;
}

- (void)setIncludeAttachments:(BOOL)attachments
{
  attachmentsCopy = attachments;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setIncludeAttachments:attachmentsCopy];
}

- (NSData)serializedMailboxObjectID
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  serializedMailboxObjectID = [compositionValues serializedMailboxObjectID];

  return serializedMailboxObjectID;
}

- (void)setSerializedMailboxObjectID:(id)d
{
  dCopy = d;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setSerializedMailboxObjectID:dCopy];
}

- (NSMutableArray)deferredAttachments
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  deferredAttachments = [compositionValues deferredAttachments];

  return deferredAttachments;
}

- (void)setDeferredAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setDeferredAttachments:attachmentsCopy];
}

- (NSDate)sendLaterDate
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  sendLaterDate = [compositionValues sendLaterDate];

  return sendLaterDate;
}

- (void)setSendLaterDate:(id)date
{
  dateCopy = date;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setSendLaterDate:dateCopy];
}

- (unint64_t)sendLaterContext
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  sendLaterContext = [compositionValues sendLaterContext];

  return sendLaterContext;
}

- (void)setSendLaterContext:(unint64_t)context
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setSendLaterContext:context];
}

- (FPSandboxingURLWrapper)sharingSandboxingURLWrapper
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  sharingSandboxingURLWrapper = [compositionValues sharingSandboxingURLWrapper];

  return sharingSandboxingURLWrapper;
}

- (void)setSharingSandboxingURLWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setSharingSandboxingURLWrapper:wrapperCopy];
}

- (CKShare)ckShare
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  ckShare = [compositionValues ckShare];

  return ckShare;
}

- (void)setCkShare:(id)share
{
  shareCopy = share;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setCkShare:shareCopy];
}

- (CKContainerSetupInfo)ckContainerSetupInfo
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  ckContainerSetupInfo = [compositionValues ckContainerSetupInfo];

  return ckContainerSetupInfo;
}

- (void)setCkContainerSetupInfo:(id)info
{
  infoCopy = info;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setCkContainerSetupInfo:infoCopy];
}

- (int64_t)ckSharePermissionType
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  ckSharePermissionType = [compositionValues ckSharePermissionType];

  return ckSharePermissionType;
}

- (void)setCkSharePermissionType:(int64_t)type
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setCkSharePermissionType:type];
}

- (BOOL)ckShareAllowOthersToInvite
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  ckShareAllowOthersToInvite = [compositionValues ckShareAllowOthersToInvite];

  return ckShareAllowOthersToInvite;
}

- (void)setCkShareAllowOthersToInvite:(BOOL)invite
{
  inviteCopy = invite;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  [compositionValues setCkShareAllowOthersToInvite:inviteCopy];
}

- (MFMailCompositionValues)compositionValues
{
  compositionValues = self->_compositionValues;
  if (!compositionValues)
  {
    v4 = objc_alloc_init(MFMailCompositionValues);
    v5 = self->_compositionValues;
    self->_compositionValues = v4;

    compositionValues = self->_compositionValues;
  }

  return compositionValues;
}

- (NSString)subject
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  subject = [compositionValues subject];

  return subject;
}

- (void)setSubject:(id)subject
{
  subjectCopy = subject;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  subject = [compositionValues subject];
  v6 = [subjectCopy isEqualToString:subject];

  if ((v6 & 1) == 0)
  {
    newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v8 = [subjectCopy componentsSeparatedByCharactersInSet:newlineCharacterSet];

    v9 = [v8 componentsJoinedByString:@" "];
    compositionValues2 = [(_MFMailCompositionContext *)self compositionValues];
    [compositionValues2 setSubject:v9];
  }
}

- (NSString)autosaveIdentifier
{
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  autosaveIdentifier = [compositionValues autosaveIdentifier];

  if (!autosaveIdentifier)
  {
    legacyMessage = [(_MFMailCompositionContext *)self legacyMessage];
    documentID = [legacyMessage documentID];
    if (documentID)
    {
    }

    else
    {
      originalMessage = [(_MFMailCompositionContext *)self originalMessage];
      documentID = [originalMessage documentID];

      if (!documentID)
      {
        goto LABEL_6;
      }
    }

    v8 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v8 setScheme:*MEMORY[0x1E699A6C8]];
    [v8 setHost:@"document"];
    v9 = MEMORY[0x1E696AEC0];
    uUIDString = [documentID UUIDString];
    v11 = [v9 stringWithFormat:@"/%@", uUIDString];
    [v8 setPath:v11];

    v12 = [v8 URL];
    absoluteString = [v12 absoluteString];
    compositionValues2 = [(_MFMailCompositionContext *)self compositionValues];
    [compositionValues2 setAutosaveIdentifier:absoluteString];
  }

LABEL_6:
  compositionValues3 = [(_MFMailCompositionContext *)self compositionValues];
  autosaveIdentifier2 = [compositionValues3 autosaveIdentifier];

  return autosaveIdentifier2;
}

- (void)setAutosaveIdentifier:(id)identifier
{
  identifierCopy = identifier;
  compositionValues = [(_MFMailCompositionContext *)self compositionValues];
  autosaveIdentifier = [compositionValues autosaveIdentifier];
  v6 = [autosaveIdentifier isEqualToString:identifierCopy];

  if ((v6 & 1) == 0)
  {
    compositionValues2 = [(_MFMailCompositionContext *)self compositionValues];
    [compositionValues2 setAutosaveIdentifier:identifierCopy];
  }
}

- (void)setOriginalMessage:(id)message
{
  messageCopy = message;
  originalMessage = self->_originalMessage;
  v9 = messageCopy;
  if (originalMessage != messageCopy || ([(EMMessage *)originalMessage isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_originalMessage, message);
    objectID = [(EMMessage *)v9 objectID];
    serializedRepresentation = [objectID serializedRepresentation];
    [(_MFMailCompositionContext *)self setSerializedMessageObjectID:serializedRepresentation];
  }

  MEMORY[0x1EEE66BE0]();
}

- (_MFMailCompositionContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_loadMessageWithAutosaveIdentifier:(uint64_t)a1 messageRepository:(uint64_t)a2 originalMessageObjectID:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&dword_1BE819000, log, OS_LOG_TYPE_DEBUG, "Starting autosave fetch for %{public}@, self = %p", &v3, 0x16u);
}

- (void)initWithOpenMailComposeContext:(void *)a3 .cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "Could not create attachment data: %{public}@", buf, 0xCu);
}

- (void)initWithOpenMailComposeContext:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "Attachment wrapper has neither data nor fileURL. Skipping attachment.", buf, 2u);
}

- (void)insertDeferredAttachmentsIntoComposeWebView:(void *)a3 .cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_debug_impl(&dword_1BE819000, log, OS_LOG_TYPE_DEBUG, "[Attachment] Unknown deferred attachment class [%@]", buf, 0xCu);
}

@end