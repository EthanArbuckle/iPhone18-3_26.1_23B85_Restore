@interface _MFMailCompositionContext
+ (id)log;
+ (id)processMessageBody:(id)a3 asHTML:(BOOL)a4;
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
- (_MFMailCompositionContext)initWithComposeType:(int64_t)a3 RFC822Data:(id)a4;
- (_MFMailCompositionContext)initWithComposeType:(int64_t)a3 objectID:(id)a4 mailboxID:(id)a5 subject:(id)a6 autosaveID:(id)a7 messageRepository:(id)a8 mailboxProvider:(id)a9;
- (_MFMailCompositionContext)initWithCompositionValueRepresentation:(id)a3 hostApplicationBundleIdentifier:(id)a4;
- (_MFMailCompositionContext)initWithCompositionValues:(id)a3 hostApplicationBundleIdentifier:(id)a4 messageRepository:(id)a5 mailboxProvider:(id)a6;
- (_MFMailCompositionContext)initWithHandoffActivityPayload:(id)a3;
- (_MFMailCompositionContext)initWithOpenMailComposeContext:(id)a3;
- (_MFMailCompositionContext)initWithURL:(id)a3 composeType:(int64_t)a4 originalMessage:(id)a5 legacyMessage:(id)a6 isEML:(BOOL)a7;
- (_MFMailCompositionContextDelegate)delegate;
- (id)addAttachmentData:(id)a3 mimeType:(id)a4 fileName:(id)a5;
- (id)addAttachmentData:(id)a3 mimeType:(id)a4 fileName:(id)a5 contentID:(id)a6;
- (id)addAttachmentDataItemProvider:(id)a3 mimeType:(id)a4 filename:(id)a5 contentID:(id)a6;
- (id)initDraftRestoreOfMessage:(id)a3 legacyMessage:(id)a4 draftSubject:(id)a5;
- (id)initRecoveredAutosavedMessageWithIdentifier:(id)a3 draftSubject:(id)a4 composeType:(int64_t)a5 messageRepository:(id)a6 originalMessageObjectID:(id)a7;
- (int)sourceAccountManagement;
- (int64_t)ckSharePermissionType;
- (int64_t)composeType;
- (int64_t)defaultContentVariationIndex;
- (unint64_t)caretPosition;
- (unint64_t)sendLaterContext;
- (void)_loadMessageWithAutosaveIdentifier:(id)a3 messageRepository:(id)a4 originalMessageObjectID:(id)a5;
- (void)_loadMessageWithObjectID:(id)a3 mailboxObjectID:(id)a4 messageRepository:(id)a5 mailboxProvider:(id)a6;
- (void)_notifyDidFinishLoadingWithLegacyMessage:(id)a3;
- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5;
- (void)dealloc;
- (void)insertAttachmentWithData:(id)a3 fileName:(id)a4 mimeType:(id)a5 contentID:(id)a6;
- (void)insertAttachmentWithURL:(id)a3;
- (void)insertDeferredAttachmentsIntoComposeWebView:(id)a3;
- (void)removeAttachment:(id)a3;
- (void)setAutosaveIdentifier:(id)a3;
- (void)setBccRecipients:(id)a3;
- (void)setCaretPosition:(unint64_t)a3;
- (void)setCcRecipients:(id)a3;
- (void)setCkContainerSetupInfo:(id)a3;
- (void)setCkShare:(id)a3;
- (void)setCkShareAllowOthersToInvite:(BOOL)a3;
- (void)setCkSharePermissionType:(int64_t)a3;
- (void)setCloudPhotoIDs:(id)a3;
- (void)setComposeType:(int64_t)a3;
- (void)setContentText:(id)a3;
- (void)setContentURLs:(id)a3;
- (void)setContentVariations:(id)a3;
- (void)setDefaultContentVariationIndex:(int64_t)a3;
- (void)setDeferredAttachments:(id)a3;
- (void)setFrom:(id)a3;
- (void)setHideMyEmailFrom:(id)a3;
- (void)setIncludeAttachments:(BOOL)a3;
- (void)setIsHTML:(BOOL)a3;
- (void)setIsUsingDefaultAccount:(BOOL)a3;
- (void)setMailtoURL:(id)a3;
- (void)setMessageBody:(id)a3;
- (void)setMessageBody:(id)a3 isHTML:(BOOL)a4;
- (void)setOriginalContent:(id)a3;
- (void)setOriginalMessage:(id)a3;
- (void)setPhotoIDs:(id)a3;
- (void)setPreferredSendingEmailAddress:(id)a3;
- (void)setPrefersFirstLineSelection:(BOOL)a3;
- (void)setSendLaterContext:(unint64_t)a3;
- (void)setSendLaterDate:(id)a3;
- (void)setSerializedMailboxObjectID:(id)a3;
- (void)setSerializedMessageObjectID:(id)a3;
- (void)setShareSheetSessionID:(id)a3;
- (void)setSharingSandboxingURLWrapper:(id)a3;
- (void)setShowContentImmediately:(BOOL)a3;
- (void)setShowKeyboardImmediately:(BOOL)a3;
- (void)setSourceAccountManagement:(int)a3;
- (void)setSubject:(id)a3;
- (void)setToRecipients:(id)a3;
- (void)setUTITypes:(id)a3;
- (void)switchToReplyAllWithDelegate:(id)a3;
- (void)switchToReplyWithDelegate:(id)a3;
@end

@implementation _MFMailCompositionContext

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32___MFMailCompositionContext_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_6 != -1)
  {
    dispatch_once(&log_onceToken_6, block);
  }

  v2 = log_log_6;

  return v2;
}

- (_MFMailCompositionContext)initWithComposeType:(int64_t)a3 RFC822Data:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [MEMORY[0x1E69B1628] messageWithRFC822Data:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(_MFMailCompositionContext *)self initWithURL:0 composeType:a3 originalMessage:0 legacyMessage:v7];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [objc_alloc(MEMORY[0x1E69B1688]) initWithMessageData:v6 parentPart:0];
    attachmentManager = v9->_attachmentManager;
    v12 = [v7 messageURL];
    [(MFAttachmentComposeManager *)attachmentManager addProvider:v10 forBaseURL:v12];
  }

  return v9;
}

- (_MFMailCompositionContext)initWithURL:(id)a3 composeType:(int64_t)a4 originalMessage:(id)a5 legacyMessage:(id)a6 isEML:(BOOL)a7
{
  v64[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v63.receiver = self;
  v63.super_class = _MFMailCompositionContext;
  v15 = [(_MFMailCompositionContext *)&v63 init];
  v16 = v15;
  v17 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_legacyMessage, a6);
    objc_storeStrong(&v16->_originalMessage, a5);
    [(_MFMailCompositionContext *)v17 setComposeType:a4];
    v18 = [v13 objectID];
    v19 = [v18 serializedRepresentation];
    [(_MFMailCompositionContext *)v17 setSerializedMessageObjectID:v19];

    v20 = MFMessageComposeLoadingSignpostLog();
    v17->_signpostID = os_signpost_id_generate(v20);

    if (v13 && !a7)
    {
      v21 = [MEMORY[0x1E699ADA0] predicateForMessagesInConversation:{objc_msgSend(v13, "conversationID")}];
      v22 = objc_alloc(MEMORY[0x1E699AE28]);
      v23 = objc_opt_class();
      v24 = [MEMORY[0x1E699ADA0] sortDescriptorForDateAscending:0];
      v64[0] = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:1];
      v26 = [v22 initWithTargetClass:v23 predicate:v21 sortDescriptors:v25 queryOptions:0 label:@"MFMailCompositionContext"];

      v27 = objc_alloc(MEMORY[0x1E699AD90]);
      v28 = [v13 repository];
      v29 = [v27 initWithQuery:v26 repository:v28];
      messageList = v17->_messageList;
      v17->_messageList = v29;

      [(EMMessageList *)v17->_messageList beginObserving:v17];
    }

    if (v14 && a4 <= 9 && ((1 << a4) & 0x274) != 0)
    {
      if ([v14 sourceIsManaged])
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }

      [(_MFMailCompositionContext *)v17 setSourceAccountManagement:v31];
    }

    if (v12)
    {
      v32 = [objc_alloc(MEMORY[0x1E699AD10]) initWithURL:v12];
      v33 = [v32 toRecipients];
      v34 = [v33 ef_map:&__block_literal_global_25];
      [(_MFMailCompositionContext *)v17 setToRecipients:v34];

      v35 = [v32 ccRecipients];
      v36 = [v35 ef_map:&__block_literal_global_62];
      [(_MFMailCompositionContext *)v17 setCcRecipients:v36];

      v37 = [v32 bccRecipients];
      v38 = [v37 ef_map:&__block_literal_global_64];
      [(_MFMailCompositionContext *)v17 setBccRecipients:v38];

      v39 = [v32 subject];
      [(_MFMailCompositionContext *)v17 setSubject:v39];

      v40 = [v32 from];

      if (v40)
      {
        v41 = [v32 from];
        [(_MFMailCompositionContext *)v17 setHideMyEmailFrom:v41];
      }

      v42 = [v32 body];
      [(_MFMailCompositionContext *)v17 setMessageBody:v42 isHTML:1];
    }

    v43 = [MEMORY[0x1E69B15D0] defaultManager];
    attachmentManager = v17->_attachmentManager;
    v17->_attachmentManager = v43;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v45 = objc_alloc_init(MEMORY[0x1E69B15C0]);
      v46 = v17->_attachmentManager;
      v17->_attachmentManager = v45;
    }

    if (v14)
    {
      v47 = [objc_alloc(MEMORY[0x1E69B1688]) initWithMessage:v14];
      v48 = v17->_attachmentManager;
      v49 = [v14 messageURL];
      [(MFAttachmentComposeManager *)v48 addProvider:v47 forBaseURL:v49];
    }

    v50 = objc_alloc_init(MEMORY[0x1E69B15C8]);
    attachmentContext = v17->_attachmentContext;
    v17->_attachmentContext = v50;

    v52 = [(MFMailMessage *)v17->_legacyMessage messageURL];
    [(MFAttachmentCompositionContext *)v17->_attachmentContext setAttachmentsBaseURL:v52];

    [(MFAttachmentCompositionContext *)v17->_attachmentContext setAttachmentsManager:v17->_attachmentManager];
    [(_MFMailCompositionContext *)v17 setShowContentImmediately:1];
    [(_MFMailCompositionContext *)v17 setCaretPosition:0x7FFFFFFFFFFFFFFFLL];
    [(_MFMailCompositionContext *)v17 setDefaultContentVariationIndex:0x7FFFFFFFFFFFFFFFLL];
    v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(_MFMailCompositionContext *)v17 setDeferredAttachments:v53];

    v54 = [MEMORY[0x1E695E000] em_userDefaults];
    v55 = [v54 objectForKey:@"IncludeAttachmentReplies"];
    v56 = [v55 stringValue];

    if (v56)
    {
      v57 = [v56 isEqualToString:@"IncludeAttachmentRepliesWhenAdding"];
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

- (id)initRecoveredAutosavedMessageWithIdentifier:(id)a3 draftSubject:(id)a4 composeType:(int64_t)a5 messageRepository:(id)a6 originalMessageObjectID:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [(_MFMailCompositionContext *)self initWithURL:0 composeType:a5 originalMessage:0 legacyMessage:0];
  v17 = v16;
  if (v16)
  {
    v16->_isLoadingMessageData = 1;
    objc_storeStrong(&v16->_draftSubject, a4);
    [(_MFMailCompositionContext *)v17 setAutosaveIdentifier:v12];
    [(_MFMailCompositionContext *)v17 _loadMessageWithAutosaveIdentifier:v12 messageRepository:v14 originalMessageObjectID:v15];
  }

  return v17;
}

- (id)initDraftRestoreOfMessage:(id)a3 legacyMessage:(id)a4 draftSubject:(id)a5
{
  v9 = a5;
  v10 = [(_MFMailCompositionContext *)self initWithURL:0 composeType:2 originalMessage:a3 legacyMessage:a4];
  v11 = v10;
  if (v10)
  {
    v10->_isLoadingMessageData = 0;
    objc_storeStrong(&v10->_draftSubject, a5);
  }

  return v11;
}

- (_MFMailCompositionContext)initWithHandoffActivityPayload:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69ADC78]];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69ADC88]];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69ADC68]];
  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69ADC60]];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69ADC80]];
  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69ADC70]];
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

- (_MFMailCompositionContext)initWithCompositionValueRepresentation:(id)a3 hostApplicationBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[MFMailCompositionValues alloc] initWithDictionaryRepresentation:v6];
  v9 = [(MFMailCompositionValues *)v8 autosaveIdentifier];
  v10 = [(MFMailCompositionValues *)v8 mailtoURL];
  v11 = [(MFMailCompositionValues *)v8 subject];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v12 = [(_MFMailCompositionContext *)self initRecoveredAutosavedMessageWithIdentifier:v9 draftSubject:v11 messageRepository:0 originalMessageObjectID:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(_MFMailCompositionContext *)self initWithURL:v10];
    }

    else
    {
      v12 = [(_MFMailCompositionContext *)self initWithCompositionValues:v8 hostApplicationBundleIdentifier:v7];
    }
  }

  v13 = v12;

  return v13;
}

- (_MFMailCompositionContext)initWithCompositionValues:(id)a3 hostApplicationBundleIdentifier:(id)a4 messageRepository:(id)a5 mailboxProvider:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = -[_MFMailCompositionContext initWithComposeType:](self, "initWithComposeType:", [v12 composeType]);
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_compositionValues, a3);
    objc_storeStrong(&v17->_originatingBundleID, a4);
    v18 = [v12 serializedMessageObjectID];
    if (v18)
    {
      if (!v14)
      {
        v25 = [MEMORY[0x1E696AAA8] currentHandler];
        [v25 handleFailureInMethod:a2 object:v17 file:@"MFMailCompositionContext.m" lineNumber:319 description:@"Expected repository to load message"];
      }

      v19 = [MEMORY[0x1E699ADA8] objectIDFromSerializedRepresentation:v18];
      v20 = [v12 serializedMailboxObjectID];
      if (v20)
      {
        v21 = [MEMORY[0x1E699AD20] objectIDFromSerializedRepresentation:v20];
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

      v23 = [v12 deferredAttachments];
      [(_MFMailCompositionContext *)v17 setDeferredAttachments:v23];

      [(_MFMailCompositionContext *)v17 _loadMessageWithObjectID:v19 mailboxObjectID:v21 messageRepository:v14 mailboxProvider:v15];
    }
  }

  return v17;
}

- (_MFMailCompositionContext)initWithComposeType:(int64_t)a3 objectID:(id)a4 mailboxID:(id)a5 subject:(id)a6 autosaveID:(id)a7 messageRepository:(id)a8 mailboxProvider:(id)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (v16)
  {
    if (v20)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"MFMailCompositionContext.m" lineNumber:339 description:{@"Invalid parameter not satisfying: %@", @"objectID"}];

    if (v20)
    {
      goto LABEL_3;
    }
  }

  v28 = [MEMORY[0x1E696AAA8] currentHandler];
  [v28 handleFailureInMethod:a2 object:self file:@"MFMailCompositionContext.m" lineNumber:340 description:{@"Invalid parameter not satisfying: %@", @"messageRepository"}];

LABEL_3:
  v22 = [(_MFMailCompositionContext *)self initWithURL:0 composeType:a3 originalMessage:0 legacyMessage:0];
  if (v22)
  {
    v23 = [MFComposeTypeFactory subjectFromSubject:v18 withComposeType:a3];
    [(_MFMailCompositionContext *)v22 setSubject:v23];

    [(_MFMailCompositionContext *)v22 setAutosaveIdentifier:v19];
    v24 = [v16 serializedRepresentation];
    [(_MFMailCompositionContext *)v22 setSerializedMessageObjectID:v24];

    v25 = [v17 serializedRepresentation];
    [(_MFMailCompositionContext *)v22 setSerializedMailboxObjectID:v25];

    [(_MFMailCompositionContext *)v22 _loadMessageWithObjectID:v16 mailboxObjectID:v17 messageRepository:v20 mailboxProvider:v21];
  }

  return v22;
}

- (void)_loadMessageWithObjectID:(id)a3 mailboxObjectID:(id)a4 messageRepository:(id)a5 mailboxProvider:(id)a6
{
  v10 = a4;
  v11 = a6;
  self->_isLoadingMessageData = 1;
  v12 = [a5 messageForObjectID:a3];
  objc_initWeak(&location, self);
  v13 = [MEMORY[0x1E699B978] mainThreadScheduler];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __104___MFMailCompositionContext__loadMessageWithObjectID_mailboxObjectID_messageRepository_mailboxProvider___block_invoke;
  v19[3] = &unk_1E806FB90;
  objc_copyWeak(&v22, &location);
  v14 = v11;
  v20 = v14;
  v15 = v10;
  v21 = v15;
  [v12 onScheduler:v13 addSuccessBlock:v19];

  v16 = [MEMORY[0x1E699B978] mainThreadScheduler];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __104___MFMailCompositionContext__loadMessageWithObjectID_mailboxObjectID_messageRepository_mailboxProvider___block_invoke_99;
  v17[3] = &unk_1E806FBB8;
  objc_copyWeak(&v18, &location);
  [v12 onScheduler:v16 addFailureBlock:v17];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)_loadMessageWithAutosaveIdentifier:(id)a3 messageRepository:(id)a4 originalMessageObjectID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69ADAC8] autosave];
  v12 = [v11 autosavedMessageDataWithIdentifier:v8];

  v13 = [MEMORY[0x1E699B7C8] nullFuture];
  if (_os_feature_enabled_impl() && EMIsGreymatterSupported() && (*(*MEMORY[0x1E699B748] + 16))())
  {
    v14 = [v9 messageForObjectID:v10];

    v13 = v14;
  }

  v15 = [MEMORY[0x1E699B978] globalAsyncSchedulerWithQualityOfService:33];
  v16 = MFComposeLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [_MFMailCompositionContext _loadMessageWithAutosaveIdentifier:v8 messageRepository:self originalMessageObjectID:v16];
  }

  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __106___MFMailCompositionContext__loadMessageWithAutosaveIdentifier_messageRepository_originalMessageObjectID___block_invoke;
  v24[3] = &unk_1E806FC58;
  objc_copyWeak(&v27, &location);
  v17 = v8;
  v25 = v17;
  v18 = v13;
  v26 = v18;
  [v12 onScheduler:v15 addSuccessBlock:v24];
  v19 = [MEMORY[0x1E699B978] mainThreadScheduler];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __106___MFMailCompositionContext__loadMessageWithAutosaveIdentifier_messageRepository_originalMessageObjectID___block_invoke_2_108;
  v21[3] = &unk_1E806FC08;
  objc_copyWeak(&v23, &location);
  v20 = v17;
  v22 = v20;
  [v12 onScheduler:v19 addFailureBlock:v21];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (void)_notifyDidFinishLoadingWithLegacyMessage:(id)a3
{
  objc_storeStrong(&self->_legacyMessage, a3);
  v5 = a3;
  self->_isLoadingMessageData = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained mailCompositionContext:self didFinishLoadingMessage:0 legacyMessage:v5 error:0];
}

- (_MFMailCompositionContext)initWithOpenMailComposeContext:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v4 = [v29 compositionValues];
  v5 = [v29 hostApplicationBundleIdentifier];
  v6 = [(_MFMailCompositionContext *)self initWithCompositionValueRepresentation:v4 hostApplicationBundleIdentifier:v5];

  if (v6)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = [v29 attachments];
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v8)
    {
      v9 = *v35;
      obj = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          v12 = [v11 data];

          if (v12)
          {
            v13 = [v11 data];
            v14 = [v11 mimeType];
            v15 = [v11 fileName];
            v16 = [(_MFMailCompositionContext *)v6 addAttachmentData:v13 mimeType:v14 fileName:v15];
          }

          else
          {
            v17 = [v11 fileURL];

            if (v17)
            {
              v18 = MEMORY[0x1E69B15E8];
              v19 = [v11 fileURL];
              v13 = [v18 securityScopedURL:v19];

              v20 = [v13 startReadAccess];
              v21 = [v20 lastPathComponent];
              if (![v21 length])
              {
                v22 = [v11 fileName];

                v21 = v22;
              }

              v33 = 0;
              v23 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v20 options:0 error:&v33];
              v24 = v33;
              if (v23)
              {
                v25 = [v11 mimeType];
                v26 = [(_MFMailCompositionContext *)v6 addAttachmentData:v23 mimeType:v25 fileName:v21];
              }

              else
              {
                v25 = MFComposeLog();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  v27 = [v24 ef_publicDescription];
                  [(_MFMailCompositionContext *)v27 initWithOpenMailComposeContext:v38, &v39, v25];
                }
              }

              [v13 stopAccess];
            }

            else
            {
              v13 = MFComposeLog();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                [(_MFMailCompositionContext *)&v31 initWithOpenMailComposeContext:v32, v13];
              }
            }
          }
        }

        v7 = obj;
        v8 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v8);
    }
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(EMMessageList *)self->_messageList stopObserving:self];
  v4.receiver = self;
  v4.super_class = _MFMailCompositionContext;
  [(_MFMailCompositionContext *)&v4 dealloc];
}

- (void)switchToReplyAllWithDelegate:(id)a3
{
  v4 = a3;
  if ([(_MFMailCompositionContext *)self composeType]== 4)
  {
    [(_MFMailCompositionContext *)self setComposeType:5];
    [MFComposeTypeFactory setupSwitchToReplyAllWithModel:self delegate:v4];
  }
}

- (void)switchToReplyWithDelegate:(id)a3
{
  v4 = a3;
  if ([(_MFMailCompositionContext *)self composeType]== 5)
  {
    [(_MFMailCompositionContext *)self setComposeType:4];
    [MFComposeTypeFactory setupSwitchToReplyWithModel:self delegate:v4];
  }
}

+ (id)processMessageBody:(id)a3 asHTML:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (v5 && !a4)
  {
    v7 = [v5 ef_stringByEscapingForMessageBody];

    v6 = v7;
  }

  return v6;
}

- (void)setMessageBody:(id)a3 isHTML:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [objc_opt_class() processMessageBody:v7 asHTML:v4];
  [(_MFMailCompositionContext *)self setMessageBody:v6];

  [(_MFMailCompositionContext *)self setIsHTML:v4];
}

- (id)addAttachmentData:(id)a3 mimeType:(id)a4 fileName:(id)a5
{
  v5 = [(_MFMailCompositionContext *)self addAttachmentData:a3 mimeType:a4 fileName:a5 contentID:0];

  return v5;
}

- (id)addAttachmentData:(id)a3 mimeType:(id)a4 fileName:(id)a5 contentID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  attachmentManager = self->_attachmentManager;
  v15 = [(_MFMailCompositionContext *)self contextID];
  v16 = [(MFAttachmentComposeManager *)attachmentManager attachmentForData:v10 mimeType:v11 fileName:v12 contentID:v13 context:v15];

  return v16;
}

- (id)addAttachmentDataItemProvider:(id)a3 mimeType:(id)a4 filename:(id)a5 contentID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  attachmentManager = self->_attachmentManager;
  v15 = [(_MFMailCompositionContext *)self contextID];
  v16 = [(MFAttachmentComposeManager *)attachmentManager attachmentForItemProvider:v10 mimeType:v11 fileName:v12 contentID:v13 context:v15];

  return v16;
}

- (void)removeAttachment:(id)a3
{
  attachmentManager = self->_attachmentManager;
  v4 = [a3 url];
  [(MFAttachmentComposeManager *)attachmentManager removeAttachmentForURL:?];
}

- (void)insertAttachmentWithURL:(id)a3
{
  v6 = a3;
  v4 = [(_MFMailCompositionContext *)self composeWebView];

  if (v4)
  {
    v5 = [(_MFMailCompositionContext *)self composeWebView];
    [v5 insertDocumentWithURL:v6 isDrawingFile:0];
  }

  else
  {
    v5 = [(_MFMailCompositionContext *)self deferredAttachments];
    [v5 addObject:v6];
  }
}

- (void)insertAttachmentWithData:(id)a3 fileName:(id)a4 mimeType:(id)a5 contentID:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(_MFMailCompositionContext *)self composeWebView];

  if (v13)
  {
    v14 = [(_MFMailCompositionContext *)self composeWebView];
    [v14 insertDocumentWithData:v16 fileName:v10 mimeType:v11 contentID:v12];
  }

  else
  {
    v14 = [(_MFMailCompositionContext *)self deferredAttachments];
    v15 = [MEMORY[0x1E69B15E0] attachmentData:v16 fileName:v10 mimeType:v11 contentID:v12];
    [v14 addObject:v15];
  }
}

- (void)insertDeferredAttachmentsIntoComposeWebView:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(_MFMailCompositionContext *)self setComposeWebView:v4];
  v15 = [(_MFMailCompositionContext *)self deferredAttachments];
  if ([v15 count])
  {
    [v4 setCaretPosition:0];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = v15;
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
            [v4 insertDocumentWithURL:v9 isDrawingFile:0];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v9 = v8;
              v10 = [v9 data];
              v11 = [v9 fileName];
              v12 = [v9 mimeType];
              v13 = [v9 contentID];
              [v4 insertDocumentWithData:v10 fileName:v11 mimeType:v12 contentID:v13];
            }

            else
            {
              v9 = MFLogGeneral();
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
              {
                v14 = [v8 className];
                [(_MFMailCompositionContext *)v14 insertDeferredAttachmentsIntoComposeWebView:buf, &v22, v9];
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
  v3 = [(_MFMailCompositionContext *)self UTITypes];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(_MFMailCompositionContext *)self photoIDs];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(_MFMailCompositionContext *)self cloudPhotoIDs];
      if (v6)
      {
        v4 = 1;
      }

      else
      {
        v7 = [(_MFMailCompositionContext *)self contentURLs];
        if (v7)
        {
          v4 = 1;
        }

        else
        {
          v8 = [(_MFMailCompositionContext *)self contentText];
          v4 = v8 != 0;
        }
      }
    }
  }

  return v4;
}

- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(_MFMailCompositionContext *)self originalMessage];
  v10 = [v9 itemID];
  v11 = [v10 isEqual:v7];

  if (v11)
  {
    v12 = MFComposeLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = v7;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_1BE819000, v12, OS_LOG_TYPE_DEFAULT, "Updating message itemID for Composition Context. Old itemID: %{public}@. New itemID:%{public}@", buf, 0x16u);
    }

    v13 = [(EMMessageList *)self->_messageList messageListItemForItemID:v8];
    v14 = [(_MFMailCompositionContext *)self observationScheduler];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77___MFMailCompositionContext_collection_replacedExistingItemID_withNewItemID___block_invoke;
    v15[3] = &unk_1E806FC80;
    v15[4] = self;
    [v13 onScheduler:v14 addSuccessBlock:v15];
  }
}

- (NSURL)mailtoURL
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 mailtoURL];

  return v3;
}

- (void)setMailtoURL:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setMailtoURL:v5];
}

- (NSString)messageBody
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 messageBody];

  return v3;
}

- (void)setMessageBody:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setMessageBody:v5];
}

- (NSString)from
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 from];

  return v3;
}

- (void)setFrom:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setFrom:v5];
}

- (NSString)hideMyEmailFrom
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 hideMyEmailFrom];

  return v3;
}

- (void)setHideMyEmailFrom:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setHideMyEmailFrom:v5];
}

- (BOOL)isHTML
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 isHTML];

  return v3;
}

- (void)setIsHTML:(BOOL)a3
{
  v3 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setIsHTML:v3];
}

- (NSArray)toRecipients
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 toRecipients];

  return v3;
}

- (void)setToRecipients:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setToRecipients:v5];
}

- (NSArray)ccRecipients
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 ccRecipients];

  return v3;
}

- (void)setCcRecipients:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setCcRecipients:v5];
}

- (NSArray)bccRecipients
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 bccRecipients];

  return v3;
}

- (void)setBccRecipients:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setBccRecipients:v5];
}

- (NSString)preferredSendingEmailAddress
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 preferredSendingEmailAddress];

  return v3;
}

- (void)setPreferredSendingEmailAddress:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setPreferredSendingEmailAddress:v5];
}

- (BOOL)showKeyboardImmediately
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 showKeyboardImmediately];

  return v3;
}

- (void)setShowKeyboardImmediately:(BOOL)a3
{
  v3 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setShowKeyboardImmediately:v3];
}

- (BOOL)showContentImmediately
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 showContentImmediately];

  return v3;
}

- (void)setShowContentImmediately:(BOOL)a3
{
  v3 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setShowContentImmediately:v3];
}

- (int)sourceAccountManagement
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 sourceAccountManagement];

  return v3;
}

- (void)setSourceAccountManagement:(int)a3
{
  v3 = *&a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setSourceAccountManagement:v3];
}

- (unint64_t)caretPosition
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 caretPosition];

  return v3;
}

- (void)setCaretPosition:(unint64_t)a3
{
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setCaretPosition:a3];
}

- (NSArray)UTITypes
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 UTITypes];

  return v3;
}

- (void)setUTITypes:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setUTITypes:v5];
}

- (NSArray)photoIDs
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 photoIDs];

  return v3;
}

- (void)setPhotoIDs:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setPhotoIDs:v5];
}

- (NSArray)cloudPhotoIDs
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 cloudPhotoIDs];

  return v3;
}

- (void)setCloudPhotoIDs:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setCloudPhotoIDs:v5];
}

- (NSArray)contentText
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 contentText];

  return v3;
}

- (void)setContentText:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setContentText:v5];
}

- (NSArray)contentURLs
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 contentURLs];

  return v3;
}

- (void)setContentURLs:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setContentURLs:v5];
}

- (NSArray)originalContent
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 originalContent];

  return v3;
}

- (void)setOriginalContent:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setOriginalContent:v5];
}

- (NSMutableArray)contentVariations
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 contentVariations];

  return v3;
}

- (void)setContentVariations:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setContentVariations:v5];
}

- (int64_t)defaultContentVariationIndex
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 defaultContentVariationIndex];

  return v3;
}

- (void)setDefaultContentVariationIndex:(int64_t)a3
{
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setDefaultContentVariationIndex:a3];
}

- (NSString)shareSheetSessionID
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 shareSheetSessionID];

  return v3;
}

- (void)setShareSheetSessionID:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setShareSheetSessionID:v5];
}

- (BOOL)isUsingDefaultAccount
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 isUsingDefaultAccount];

  return v3;
}

- (void)setIsUsingDefaultAccount:(BOOL)a3
{
  v3 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setIsUsingDefaultAccount:v3];
}

- (int64_t)composeType
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 composeType];

  return v3;
}

- (void)setComposeType:(int64_t)a3
{
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setComposeType:a3];
}

- (BOOL)prefersFirstLineSelection
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 prefersFirstLineSelection];

  return v3;
}

- (void)setPrefersFirstLineSelection:(BOOL)a3
{
  v3 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setPrefersFirstLineSelection:v3];
}

- (NSData)serializedMessageObjectID
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 serializedMessageObjectID];

  return v3;
}

- (void)setSerializedMessageObjectID:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setSerializedMessageObjectID:v5];
}

- (BOOL)includeAttachments
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 includeAttachments];

  return v3;
}

- (void)setIncludeAttachments:(BOOL)a3
{
  v3 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setIncludeAttachments:v3];
}

- (NSData)serializedMailboxObjectID
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 serializedMailboxObjectID];

  return v3;
}

- (void)setSerializedMailboxObjectID:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setSerializedMailboxObjectID:v5];
}

- (NSMutableArray)deferredAttachments
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 deferredAttachments];

  return v3;
}

- (void)setDeferredAttachments:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setDeferredAttachments:v5];
}

- (NSDate)sendLaterDate
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 sendLaterDate];

  return v3;
}

- (void)setSendLaterDate:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setSendLaterDate:v5];
}

- (unint64_t)sendLaterContext
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 sendLaterContext];

  return v3;
}

- (void)setSendLaterContext:(unint64_t)a3
{
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setSendLaterContext:a3];
}

- (FPSandboxingURLWrapper)sharingSandboxingURLWrapper
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 sharingSandboxingURLWrapper];

  return v3;
}

- (void)setSharingSandboxingURLWrapper:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setSharingSandboxingURLWrapper:v5];
}

- (CKShare)ckShare
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 ckShare];

  return v3;
}

- (void)setCkShare:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setCkShare:v5];
}

- (CKContainerSetupInfo)ckContainerSetupInfo
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 ckContainerSetupInfo];

  return v3;
}

- (void)setCkContainerSetupInfo:(id)a3
{
  v5 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setCkContainerSetupInfo:v5];
}

- (int64_t)ckSharePermissionType
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 ckSharePermissionType];

  return v3;
}

- (void)setCkSharePermissionType:(int64_t)a3
{
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setCkSharePermissionType:a3];
}

- (BOOL)ckShareAllowOthersToInvite
{
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 ckShareAllowOthersToInvite];

  return v3;
}

- (void)setCkShareAllowOthersToInvite:(BOOL)a3
{
  v3 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  [v4 setCkShareAllowOthersToInvite:v3];
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
  v2 = [(_MFMailCompositionContext *)self compositionValues];
  v3 = [v2 subject];

  return v3;
}

- (void)setSubject:(id)a3
{
  v11 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  v5 = [v4 subject];
  v6 = [v11 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v8 = [v11 componentsSeparatedByCharactersInSet:v7];

    v9 = [v8 componentsJoinedByString:@" "];
    v10 = [(_MFMailCompositionContext *)self compositionValues];
    [v10 setSubject:v9];
  }
}

- (NSString)autosaveIdentifier
{
  v3 = [(_MFMailCompositionContext *)self compositionValues];
  v4 = [v3 autosaveIdentifier];

  if (!v4)
  {
    v5 = [(_MFMailCompositionContext *)self legacyMessage];
    v6 = [v5 documentID];
    if (v6)
    {
    }

    else
    {
      v7 = [(_MFMailCompositionContext *)self originalMessage];
      v6 = [v7 documentID];

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v8 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v8 setScheme:*MEMORY[0x1E699A6C8]];
    [v8 setHost:@"document"];
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v6 UUIDString];
    v11 = [v9 stringWithFormat:@"/%@", v10];
    [v8 setPath:v11];

    v12 = [v8 URL];
    v13 = [v12 absoluteString];
    v14 = [(_MFMailCompositionContext *)self compositionValues];
    [v14 setAutosaveIdentifier:v13];
  }

LABEL_6:
  v15 = [(_MFMailCompositionContext *)self compositionValues];
  v16 = [v15 autosaveIdentifier];

  return v16;
}

- (void)setAutosaveIdentifier:(id)a3
{
  v8 = a3;
  v4 = [(_MFMailCompositionContext *)self compositionValues];
  v5 = [v4 autosaveIdentifier];
  v6 = [v5 isEqualToString:v8];

  if ((v6 & 1) == 0)
  {
    v7 = [(_MFMailCompositionContext *)self compositionValues];
    [v7 setAutosaveIdentifier:v8];
  }
}

- (void)setOriginalMessage:(id)a3
{
  v5 = a3;
  originalMessage = self->_originalMessage;
  v9 = v5;
  if (originalMessage != v5 || ([(EMMessage *)originalMessage isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_originalMessage, a3);
    v7 = [(EMMessage *)v9 objectID];
    v8 = [v7 serializedRepresentation];
    [(_MFMailCompositionContext *)self setSerializedMessageObjectID:v8];
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