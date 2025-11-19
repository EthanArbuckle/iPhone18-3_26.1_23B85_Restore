@interface MFMailCompositionValues
- (MFMailCompositionValues)init;
- (MFMailCompositionValues)initWithCoder:(id)a3;
- (MFMailCompositionValues)initWithDictionaryRepresentation:(id)a3;
- (id)addContentVariationWithName:(id)a3;
- (id)dictionaryRepresentation;
- (void)_processDictionaryRepresentation:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MFMailCompositionValues

- (MFMailCompositionValues)init
{
  v3.receiver = self;
  v3.super_class = MFMailCompositionValues;
  result = [(MFMailCompositionValues *)&v3 init];
  if (result)
  {
    result->_showContentImmediately = 1;
    result->_caretPosition = 0x7FFFFFFFFFFFFFFFLL;
    result->_defaultContentVariationIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (MFMailCompositionValues)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(MFMailCompositionValues *)self init];
  v6 = v5;
  if (v5)
  {
    [(MFMailCompositionValues *)v5 _processDictionaryRepresentation:v4];
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(MFMailCompositionValues *)self mailtoURL];
  [v3 ef_setOptionalObject:v4 forKey:@"URL"];

  v5 = [(MFMailCompositionValues *)self autosaveIdentifier];
  [v3 ef_setOptionalObject:v5 forKey:@"AutosaveIdentifier"];

  v6 = [(MFMailCompositionValues *)self messageBody];
  [v3 ef_setOptionalObject:v6 forKey:@"Body"];

  v7 = [(MFMailCompositionValues *)self from];
  [v3 ef_setOptionalObject:v7 forKey:@"From"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailCompositionValues isHTML](self, "isHTML")}];
  [v3 ef_setOptionalObject:v8 forKey:@"BodyIsHTML"];

  v9 = [(MFMailCompositionValues *)self subject];
  [v3 ef_setOptionalObject:v9 forKey:@"Subject"];

  v10 = [(MFMailCompositionValues *)self hideMyEmailFrom];
  [v3 ef_setOptionalObject:v10 forKey:@"HideMyEmailFrom"];

  v11 = [(MFMailCompositionValues *)self toRecipients];
  [v3 ef_setOptionalObject:v11 forKey:@"ToRecipients"];

  v12 = [(MFMailCompositionValues *)self ccRecipients];
  [v3 ef_setOptionalObject:v12 forKey:@"CcRecipients"];

  v13 = [(MFMailCompositionValues *)self bccRecipients];
  [v3 ef_setOptionalObject:v13 forKey:@"BccRecipients"];

  v14 = [(MFMailCompositionValues *)self originalContent];
  [v3 ef_setOptionalObject:v14 forKey:@"OriginalContent"];

  v15 = [(MFMailCompositionValues *)self preferredSendingEmailAddress];
  [v3 ef_setOptionalObject:v15 forKey:@"PreferredSendingEmailAddress"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailCompositionValues showKeyboardImmediately](self, "showKeyboardImmediately")}];
  [v3 ef_setOptionalObject:v16 forKey:@"ShowKeyboardImmediately"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailCompositionValues showContentImmediately](self, "showContentImmediately")}];
  [v3 ef_setOptionalObject:v17 forKey:@"ShowContentImmediately"];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MFMailCompositionValues sourceAccountManagement](self, "sourceAccountManagement")}];
  [v3 ef_setOptionalObject:v18 forKey:@"SourceAccountManagement"];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MFMailCompositionValues caretPosition](self, "caretPosition")}];
  [v3 ef_setOptionalObject:v19 forKey:@"CaretPosition"];

  v20 = [(MFMailCompositionValues *)self UTITypes];
  [v3 ef_setOptionalObject:v20 forKey:@"UTITypes"];

  v21 = [(MFMailCompositionValues *)self photoIDs];
  [v3 ef_setOptionalObject:v21 forKey:@"PhotoIDs"];

  v22 = [(MFMailCompositionValues *)self cloudPhotoIDs];
  [v3 ef_setOptionalObject:v22 forKey:@"CloudPhotoIDs"];

  v23 = [(MFMailCompositionValues *)self contentText];
  [v3 ef_setOptionalObject:v23 forKey:@"ContentText"];

  v24 = [(MFMailCompositionValues *)self contentURLs];
  [v3 ef_setOptionalObject:v24 forKey:@"ContentURLs"];

  v25 = [(MFMailCompositionValues *)self contentVariations];
  [v3 ef_setOptionalObject:v25 forKey:@"ContentVariations"];

  v26 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MFMailCompositionValues defaultContentVariationIndex](self, "defaultContentVariationIndex")}];
  [v3 ef_setOptionalObject:v26 forKey:@"DefaultContentVariationIndex"];

  v27 = [(MFMailCompositionValues *)self shareSheetSessionID];
  [v3 ef_setOptionalObject:v27 forKey:@"ShareSheetSessionID"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailCompositionValues isUsingDefaultAccount](self, "isUsingDefaultAccount")}];
  [v3 ef_setOptionalObject:v28 forKey:@"IsUsingDefaultAccount"];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailCompositionValues prefersFirstLineSelection](self, "prefersFirstLineSelection")}];
  [v3 ef_setOptionalObject:v29 forKey:@"PrefersFirstLineSelection"];

  v30 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MFMailCompositionValues composeType](self, "composeType")}];
  [v3 ef_setOptionalObject:v30 forKey:@"ComposeType"];

  v31 = [(MFMailCompositionValues *)self serializedMessageObjectID];
  [v3 ef_setOptionalObject:v31 forKey:@"SerializedMessageObjectID"];

  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailCompositionValues includeAttachments](self, "includeAttachments")}];
  [v3 ef_setOptionalObject:v32 forKey:@"IncludeAttachments"];

  v33 = [(MFMailCompositionValues *)self serializedMailboxObjectID];
  [v3 ef_setOptionalObject:v33 forKey:@"SerializedMailboxObjectID"];

  v34 = [(MFMailCompositionValues *)self deferredAttachments];
  [v3 ef_setOptionalObject:v34 forKey:@"DeferredAttachments"];

  v35 = [(MFMailCompositionValues *)self sendLaterDate];
  [v3 ef_setOptionalObject:v35 forKey:@"SendLaterDate"];

  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MFMailCompositionValues sendLaterContext](self, "sendLaterContext")}];
  [v3 ef_setOptionalObject:v36 forKey:@"SendLaterContext"];

  v37 = [(MFMailCompositionValues *)self sharingSandboxingURLWrapper];
  [v3 ef_setOptionalObject:v37 forKey:@"SharingSandboxingURLWrapper"];

  v38 = [(MFMailCompositionValues *)self ckShare];
  [v3 ef_setOptionalObject:v38 forKey:@"CKShare"];

  v39 = [(MFMailCompositionValues *)self ckContainerSetupInfo];
  [v3 ef_setOptionalObject:v39 forKey:@"CKContainerSetupInfo"];

  v40 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MFMailCompositionValues ckSharePermissionType](self, "ckSharePermissionType")}];
  [v3 ef_setOptionalObject:v40 forKey:@"CKSharePermissionType"];

  v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailCompositionValues ckShareAllowOthersToInvite](self, "ckShareAllowOthersToInvite")}];
  [v3 ef_setOptionalObject:v41 forKey:@"CKShareAllowOthersToInvite"];

  return v3;
}

- (void)_processDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"URL"];
  [(MFMailCompositionValues *)self setMailtoURL:v5];

  v6 = [v4 objectForKeyedSubscript:@"AutosaveIdentifier"];
  [(MFMailCompositionValues *)self setAutosaveIdentifier:v6];

  v7 = [v4 objectForKeyedSubscript:@"Subject"];
  [(MFMailCompositionValues *)self setSubject:v7];

  v8 = [v4 objectForKeyedSubscript:@"HideMyEmailFrom"];
  [(MFMailCompositionValues *)self setHideMyEmailFrom:v8];

  v9 = [v4 objectForKeyedSubscript:@"From"];
  [(MFMailCompositionValues *)self setFrom:v9];

  v10 = [v4 objectForKeyedSubscript:@"ToRecipients"];
  [(MFMailCompositionValues *)self setToRecipients:v10];

  v11 = [v4 objectForKeyedSubscript:@"CcRecipients"];
  [(MFMailCompositionValues *)self setCcRecipients:v11];

  v12 = [v4 objectForKeyedSubscript:@"BccRecipients"];
  [(MFMailCompositionValues *)self setBccRecipients:v12];

  v13 = [v4 objectForKeyedSubscript:@"OriginalContent"];
  [(MFMailCompositionValues *)self setOriginalContent:v13];

  v14 = [v4 objectForKeyedSubscript:@"UTITypes"];
  [(MFMailCompositionValues *)self setUTITypes:v14];

  v15 = [v4 objectForKeyedSubscript:@"PhotoIDs"];
  [(MFMailCompositionValues *)self setPhotoIDs:v15];

  v16 = [v4 objectForKeyedSubscript:@"CloudPhotoIDs"];
  [(MFMailCompositionValues *)self setCloudPhotoIDs:v16];

  v17 = [v4 objectForKeyedSubscript:@"ContentText"];
  [(MFMailCompositionValues *)self setContentText:v17];

  v18 = [v4 objectForKeyedSubscript:@"ContentURLs"];
  [(MFMailCompositionValues *)self setContentURLs:v18];

  v19 = [v4 objectForKeyedSubscript:@"ContentVariations"];
  [(MFMailCompositionValues *)self setContentVariations:v19];

  v20 = [v4 objectForKeyedSubscript:@"SerializedMessageObjectID"];
  [(MFMailCompositionValues *)self setSerializedMessageObjectID:v20];

  v21 = [v4 objectForKeyedSubscript:@"SerializedMailboxObjectID"];
  [(MFMailCompositionValues *)self setSerializedMailboxObjectID:v21];

  v22 = [v4 objectForKeyedSubscript:@"ShowKeyboardImmediately"];
  -[MFMailCompositionValues setShowKeyboardImmediately:](self, "setShowKeyboardImmediately:", [v22 BOOLValue]);

  v23 = [v4 objectForKeyedSubscript:@"ShowContentImmediately"];
  -[MFMailCompositionValues setShowContentImmediately:](self, "setShowContentImmediately:", [v23 BOOLValue]);

  v24 = [v4 objectForKeyedSubscript:@"CaretPosition"];
  -[MFMailCompositionValues setCaretPosition:](self, "setCaretPosition:", [v24 unsignedIntegerValue]);

  v25 = [v4 objectForKeyedSubscript:@"DefaultContentVariationIndex"];
  -[MFMailCompositionValues setDefaultContentVariationIndex:](self, "setDefaultContentVariationIndex:", [v25 integerValue]);

  v26 = [v4 objectForKeyedSubscript:@"IsUsingDefaultAccount"];
  -[MFMailCompositionValues setIsUsingDefaultAccount:](self, "setIsUsingDefaultAccount:", [v26 BOOLValue]);

  v27 = [v4 objectForKeyedSubscript:@"PrefersFirstLineSelection"];
  -[MFMailCompositionValues setPrefersFirstLineSelection:](self, "setPrefersFirstLineSelection:", [v27 BOOLValue]);

  v28 = [v4 objectForKeyedSubscript:@"ComposeType"];
  -[MFMailCompositionValues setComposeType:](self, "setComposeType:", [v28 integerValue]);

  v29 = [v4 objectForKeyedSubscript:@"IncludeAttachments"];
  -[MFMailCompositionValues setIncludeAttachments:](self, "setIncludeAttachments:", [v29 BOOLValue]);

  v30 = [v4 objectForKeyedSubscript:@"DeferredAttachments"];
  [(MFMailCompositionValues *)self setDeferredAttachments:v30];

  v31 = [v4 objectForKeyedSubscript:@"SourceAccountManagement"];
  -[MFMailCompositionValues setSourceAccountManagement:](self, "setSourceAccountManagement:", [v31 intValue]);

  v32 = [v4 objectForKeyedSubscript:@"SendLaterDate"];
  [(MFMailCompositionValues *)self setSendLaterDate:v32];

  v33 = [v4 objectForKeyedSubscript:@"SendLaterContext"];
  -[MFMailCompositionValues setSendLaterContext:](self, "setSendLaterContext:", [v33 integerValue]);

  v34 = [v4 objectForKeyedSubscript:@"SharingSandboxingURLWrapper"];
  [(MFMailCompositionValues *)self setSharingSandboxingURLWrapper:v34];

  v35 = [v4 objectForKeyedSubscript:@"CKShare"];
  [(MFMailCompositionValues *)self setCkShare:v35];

  v36 = [v4 objectForKeyedSubscript:@"CKContainerSetupInfo"];
  [(MFMailCompositionValues *)self setCkContainerSetupInfo:v36];

  v37 = [v4 objectForKeyedSubscript:@"CKSharePermissionType"];
  -[MFMailCompositionValues setCkSharePermissionType:](self, "setCkSharePermissionType:", [v37 integerValue]);

  v38 = [v4 objectForKeyedSubscript:@"CKShareAllowOthersToInvite"];
  -[MFMailCompositionValues setCkShareAllowOthersToInvite:](self, "setCkShareAllowOthersToInvite:", [v38 BOOLValue]);

  v39 = [v4 objectForKeyedSubscript:@"BodyIsHTML"];
  v40 = [v39 BOOLValue];

  [(MFMailCompositionValues *)self setIsHTML:v40];
  v41 = [v4 objectForKeyedSubscript:@"Body"];
  if (v41)
  {
    v42 = [_MFMailCompositionContext processMessageBody:v41 asHTML:[(MFMailCompositionValues *)self isHTML]];
    [(MFMailCompositionValues *)self setMessageBody:v42];
  }

  v43 = [v4 objectForKeyedSubscript:@"PreferredSendingEmailAddress"];
  if (v43)
  {
    v44 = [MEMORY[0x1E69B16A8] mailAccounts];
    v45 = [MEMORY[0x1E69B16A8] accountContainingEmailAddress:v43];
    if (v45)
    {
      [(MFMailCompositionValues *)self setPreferredSendingEmailAddress:v43];
    }
  }

  v46 = [v4 objectForKeyedSubscript:@"ShareSheetSessionID"];
  if (v46)
  {
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __60__MFMailCompositionValues__processDictionaryRepresentation___block_invoke;
    v47[3] = &unk_1E806D938;
    v47[4] = self;
    [MEMORY[0x1E69CDA60] requestMailRecipientsForSessionID:v46 completionHandler:v47];
    [(MFMailCompositionValues *)self setShareSheetSessionID:v46];
  }
}

- (id)addContentVariationWithName:(id)a3
{
  v4 = a3;
  v5 = [(MFMailCompositionValues *)self contentVariations];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(MFMailCompositionValues *)self setContentVariations:v5];
  }

  v6 = [[_MFMailComposeContentVariation alloc] initWithName:v4];
  [v5 addObject:v6];
  if ([(MFMailCompositionValues *)self defaultContentVariationIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(MFMailCompositionValues *)self setDefaultContentVariationIndex:0];
  }

  return v6;
}

- (MFMailCompositionValues)initWithCoder:(id)a3
{
  v4 = a3;
  v91.receiver = self;
  v91.super_class = MFMailCompositionValues;
  v5 = [(MFMailCompositionValues *)&v91 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_mailtoURL"];
    mailtoURL = v5->_mailtoURL;
    v5->_mailtoURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_autosaveIdentifier"];
    autosaveIdentifier = v5->_autosaveIdentifier;
    v5->_autosaveIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_messageBody"];
    messageBody = v5->_messageBody;
    v5->_messageBody = v10;

    v5->_isHTML = [v4 decodeBoolForKey:@"EFPropertyKey_isHTML"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_subject"];
    subject = v5->_subject;
    v5->_subject = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_hideMyEmailFrom"];
    hideMyEmailFrom = v5->_hideMyEmailFrom;
    v5->_hideMyEmailFrom = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_from"];
    from = v5->_from;
    v5->_from = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"EFPropertyKey_toRecipients"];
    toRecipients = v5->_toRecipients;
    v5->_toRecipients = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"EFPropertyKey_ccRecipients"];
    ccRecipients = v5->_ccRecipients;
    v5->_ccRecipients = v26;

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"EFPropertyKey_bccRecipients"];
    bccRecipients = v5->_bccRecipients;
    v5->_bccRecipients = v31;

    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
    v36 = [v4 decodeObjectOfClasses:v35 forKey:@"EFPropertyKey_originalContent"];
    originalContent = v5->_originalContent;
    v5->_originalContent = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_preferredSendingEmailAddress"];
    preferredSendingEmailAddress = v5->_preferredSendingEmailAddress;
    v5->_preferredSendingEmailAddress = v38;

    v5->_showKeyboardImmediately = [v4 decodeBoolForKey:@"EFPropertyKey_showKeyboardImmediately"];
    v5->_showContentImmediately = [v4 decodeBoolForKey:@"EFPropertyKey_showContentImmediately"];
    v5->_sourceAccountManagement = [v4 decodeIntegerForKey:@"EFPropertyKey_sourceAccountManagement"];
    v5->_caretPosition = [v4 decodeIntegerForKey:@"EFPropertyKey_caretPosition"];
    v40 = MEMORY[0x1E695DFD8];
    v41 = objc_opt_class();
    v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
    v43 = [v4 decodeObjectOfClasses:v42 forKey:@"EFPropertyKey_UTITypes"];
    UTITypes = v5->_UTITypes;
    v5->_UTITypes = v43;

    v45 = MEMORY[0x1E695DFD8];
    v46 = objc_opt_class();
    v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
    v48 = [v4 decodeObjectOfClasses:v47 forKey:@"EFPropertyKey_photoIDs"];
    photoIDs = v5->_photoIDs;
    v5->_photoIDs = v48;

    v50 = MEMORY[0x1E695DFD8];
    v51 = objc_opt_class();
    v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
    v53 = [v4 decodeObjectOfClasses:v52 forKey:@"EFPropertyKey_cloudPhotoIDs"];
    cloudPhotoIDs = v5->_cloudPhotoIDs;
    v5->_cloudPhotoIDs = v53;

    v55 = MEMORY[0x1E695DFD8];
    v56 = objc_opt_class();
    v57 = [v55 setWithObjects:{v56, objc_opt_class(), 0}];
    v58 = [v4 decodeObjectOfClasses:v57 forKey:@"EFPropertyKey_contentText"];
    contentText = v5->_contentText;
    v5->_contentText = v58;

    v60 = MEMORY[0x1E695DFD8];
    v61 = objc_opt_class();
    v62 = [v60 setWithObjects:{v61, objc_opt_class(), 0}];
    v63 = [v4 decodeObjectOfClasses:v62 forKey:@"EFPropertyKey_contentURLs"];
    contentURLs = v5->_contentURLs;
    v5->_contentURLs = v63;

    v65 = MEMORY[0x1E695DFD8];
    v66 = objc_opt_class();
    v67 = [v65 setWithObjects:{v66, objc_opt_class(), 0}];
    v68 = [v4 decodeObjectOfClasses:v67 forKey:@"EFPropertyKey_contentVariations"];
    contentVariations = v5->_contentVariations;
    v5->_contentVariations = v68;

    v5->_defaultContentVariationIndex = [v4 decodeIntegerForKey:@"EFPropertyKey_defaultContentVariationIndex"];
    v70 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_shareSheetSessionID"];
    shareSheetSessionID = v5->_shareSheetSessionID;
    v5->_shareSheetSessionID = v70;

    v5->_isUsingDefaultAccount = [v4 decodeBoolForKey:@"EFPropertyKey_isUsingDefaultAccount"];
    v5->_prefersFirstLineSelection = [v4 decodeBoolForKey:@"EFPropertyKey_prefersFirstLineSelection"];
    v5->_composeType = [v4 decodeIntegerForKey:@"EFPropertyKey_composeType"];
    v72 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_serializedMessageObjectID"];
    serializedMessageObjectID = v5->_serializedMessageObjectID;
    v5->_serializedMessageObjectID = v72;

    v5->_includeAttachments = [v4 decodeBoolForKey:@"EFPropertyKey_includeAttachments"];
    v74 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_serializedMailboxObjectID"];
    serializedMailboxObjectID = v5->_serializedMailboxObjectID;
    v5->_serializedMailboxObjectID = v74;

    v76 = MEMORY[0x1E695DFD8];
    v77 = objc_opt_class();
    v78 = objc_opt_class();
    v79 = [v76 setWithObjects:{v77, v78, objc_opt_class(), 0}];
    v80 = [v4 decodeObjectOfClasses:v79 forKey:@"EFPropertyKey_deferredAttachments"];
    deferredAttachments = v5->_deferredAttachments;
    v5->_deferredAttachments = v80;

    v82 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_sendLaterDate"];
    sendLaterDate = v5->_sendLaterDate;
    v5->_sendLaterDate = v82;

    v84 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_sharingSandboxingURLWrapper"];
    sharingSandboxingURLWrapper = v5->_sharingSandboxingURLWrapper;
    v5->_sharingSandboxingURLWrapper = v84;

    v86 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_ckShare"];
    ckShare = v5->_ckShare;
    v5->_ckShare = v86;

    v88 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_ckContainerSetupInfo"];
    ckContainerSetupInfo = v5->_ckContainerSetupInfo;
    v5->_ckContainerSetupInfo = v88;

    v5->_ckSharePermissionType = [v4 decodeIntegerForKey:@"EFPropertyKey_ckSharePermissionType"];
    v5->_ckShareAllowOthersToInvite = [v4 decodeBoolForKey:@"EFPropertyKey_ckShareAllowOthersToInvite"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v29 = a3;
  v4 = [(MFMailCompositionValues *)self mailtoURL];
  [v29 encodeObject:v4 forKey:@"EFPropertyKey_mailtoURL"];

  v5 = [(MFMailCompositionValues *)self autosaveIdentifier];
  [v29 encodeObject:v5 forKey:@"EFPropertyKey_autosaveIdentifier"];

  v6 = [(MFMailCompositionValues *)self messageBody];
  [v29 encodeObject:v6 forKey:@"EFPropertyKey_messageBody"];

  [v29 encodeBool:-[MFMailCompositionValues isHTML](self forKey:{"isHTML"), @"EFPropertyKey_isHTML"}];
  v7 = [(MFMailCompositionValues *)self subject];
  [v29 encodeObject:v7 forKey:@"EFPropertyKey_subject"];

  v8 = [(MFMailCompositionValues *)self hideMyEmailFrom];
  [v29 encodeObject:v8 forKey:@"EFPropertyKey_hideMyEmailFrom"];

  v9 = [(MFMailCompositionValues *)self from];
  [v29 encodeObject:v9 forKey:@"EFPropertyKey_from"];

  v10 = [(MFMailCompositionValues *)self toRecipients];
  [v29 encodeObject:v10 forKey:@"EFPropertyKey_toRecipients"];

  v11 = [(MFMailCompositionValues *)self ccRecipients];
  [v29 encodeObject:v11 forKey:@"EFPropertyKey_ccRecipients"];

  v12 = [(MFMailCompositionValues *)self bccRecipients];
  [v29 encodeObject:v12 forKey:@"EFPropertyKey_bccRecipients"];

  v13 = [(MFMailCompositionValues *)self originalContent];
  [v29 encodeObject:v13 forKey:@"EFPropertyKey_originalContent"];

  v14 = [(MFMailCompositionValues *)self preferredSendingEmailAddress];
  [v29 encodeObject:v14 forKey:@"EFPropertyKey_preferredSendingEmailAddress"];

  [v29 encodeBool:-[MFMailCompositionValues showKeyboardImmediately](self forKey:{"showKeyboardImmediately"), @"EFPropertyKey_showKeyboardImmediately"}];
  [v29 encodeBool:-[MFMailCompositionValues showContentImmediately](self forKey:{"showContentImmediately"), @"EFPropertyKey_showContentImmediately"}];
  [v29 encodeInteger:-[MFMailCompositionValues sourceAccountManagement](self forKey:{"sourceAccountManagement"), @"EFPropertyKey_sourceAccountManagement"}];
  [v29 encodeInteger:-[MFMailCompositionValues caretPosition](self forKey:{"caretPosition"), @"EFPropertyKey_caretPosition"}];
  v15 = [(MFMailCompositionValues *)self UTITypes];
  [v29 encodeObject:v15 forKey:@"EFPropertyKey_UTITypes"];

  v16 = [(MFMailCompositionValues *)self photoIDs];
  [v29 encodeObject:v16 forKey:@"EFPropertyKey_photoIDs"];

  v17 = [(MFMailCompositionValues *)self cloudPhotoIDs];
  [v29 encodeObject:v17 forKey:@"EFPropertyKey_cloudPhotoIDs"];

  v18 = [(MFMailCompositionValues *)self contentText];
  [v29 encodeObject:v18 forKey:@"EFPropertyKey_contentText"];

  v19 = [(MFMailCompositionValues *)self contentURLs];
  [v29 encodeObject:v19 forKey:@"EFPropertyKey_contentURLs"];

  v20 = [(MFMailCompositionValues *)self contentVariations];
  [v29 encodeObject:v20 forKey:@"EFPropertyKey_contentVariations"];

  [v29 encodeInteger:-[MFMailCompositionValues defaultContentVariationIndex](self forKey:{"defaultContentVariationIndex"), @"EFPropertyKey_defaultContentVariationIndex"}];
  v21 = [(MFMailCompositionValues *)self shareSheetSessionID];
  [v29 encodeObject:v21 forKey:@"EFPropertyKey_shareSheetSessionID"];

  [v29 encodeBool:-[MFMailCompositionValues isUsingDefaultAccount](self forKey:{"isUsingDefaultAccount"), @"EFPropertyKey_isUsingDefaultAccount"}];
  [v29 encodeBool:-[MFMailCompositionValues prefersFirstLineSelection](self forKey:{"prefersFirstLineSelection"), @"EFPropertyKey_prefersFirstLineSelection"}];
  [v29 encodeInteger:-[MFMailCompositionValues composeType](self forKey:{"composeType"), @"EFPropertyKey_composeType"}];
  v22 = [(MFMailCompositionValues *)self serializedMessageObjectID];
  [v29 encodeObject:v22 forKey:@"EFPropertyKey_serializedMessageObjectID"];

  [v29 encodeBool:-[MFMailCompositionValues includeAttachments](self forKey:{"includeAttachments"), @"EFPropertyKey_includeAttachments"}];
  v23 = [(MFMailCompositionValues *)self serializedMailboxObjectID];
  [v29 encodeObject:v23 forKey:@"EFPropertyKey_serializedMailboxObjectID"];

  v24 = [(MFMailCompositionValues *)self deferredAttachments];
  [v29 encodeObject:v24 forKey:@"EFPropertyKey_deferredAttachments"];

  v25 = [(MFMailCompositionValues *)self sendLaterDate];
  [v29 encodeObject:v25 forKey:@"EFPropertyKey_sendLaterDate"];

  [v29 encodeInteger:-[MFMailCompositionValues sendLaterContext](self forKey:{"sendLaterContext"), @"EFPropertyKey_sendLaterContext"}];
  v26 = [(MFMailCompositionValues *)self sharingSandboxingURLWrapper];
  [v29 encodeObject:v26 forKey:@"EFPropertyKey_sharingSandboxingURLWrapper"];

  v27 = [(MFMailCompositionValues *)self ckShare];
  [v29 encodeObject:v27 forKey:@"EFPropertyKey_ckShare"];

  v28 = [(MFMailCompositionValues *)self ckContainerSetupInfo];
  [v29 encodeObject:v28 forKey:@"EFPropertyKey_ckContainerSetupInfo"];

  [v29 encodeInteger:-[MFMailCompositionValues ckSharePermissionType](self forKey:{"ckSharePermissionType"), @"EFPropertyKey_ckSharePermissionType"}];
  [v29 encodeBool:-[MFMailCompositionValues ckShareAllowOthersToInvite](self forKey:{"ckShareAllowOthersToInvite"), @"EFPropertyKey_ckShareAllowOthersToInvite"}];
}

@end