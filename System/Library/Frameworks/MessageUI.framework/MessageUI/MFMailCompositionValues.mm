@interface MFMailCompositionValues
- (MFMailCompositionValues)init;
- (MFMailCompositionValues)initWithCoder:(id)coder;
- (MFMailCompositionValues)initWithDictionaryRepresentation:(id)representation;
- (id)addContentVariationWithName:(id)name;
- (id)dictionaryRepresentation;
- (void)_processDictionaryRepresentation:(id)representation;
- (void)encodeWithCoder:(id)coder;
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

- (MFMailCompositionValues)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [(MFMailCompositionValues *)self init];
  v6 = v5;
  if (v5)
  {
    [(MFMailCompositionValues *)v5 _processDictionaryRepresentation:representationCopy];
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mailtoURL = [(MFMailCompositionValues *)self mailtoURL];
  [v3 ef_setOptionalObject:mailtoURL forKey:@"URL"];

  autosaveIdentifier = [(MFMailCompositionValues *)self autosaveIdentifier];
  [v3 ef_setOptionalObject:autosaveIdentifier forKey:@"AutosaveIdentifier"];

  messageBody = [(MFMailCompositionValues *)self messageBody];
  [v3 ef_setOptionalObject:messageBody forKey:@"Body"];

  from = [(MFMailCompositionValues *)self from];
  [v3 ef_setOptionalObject:from forKey:@"From"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailCompositionValues isHTML](self, "isHTML")}];
  [v3 ef_setOptionalObject:v8 forKey:@"BodyIsHTML"];

  subject = [(MFMailCompositionValues *)self subject];
  [v3 ef_setOptionalObject:subject forKey:@"Subject"];

  hideMyEmailFrom = [(MFMailCompositionValues *)self hideMyEmailFrom];
  [v3 ef_setOptionalObject:hideMyEmailFrom forKey:@"HideMyEmailFrom"];

  toRecipients = [(MFMailCompositionValues *)self toRecipients];
  [v3 ef_setOptionalObject:toRecipients forKey:@"ToRecipients"];

  ccRecipients = [(MFMailCompositionValues *)self ccRecipients];
  [v3 ef_setOptionalObject:ccRecipients forKey:@"CcRecipients"];

  bccRecipients = [(MFMailCompositionValues *)self bccRecipients];
  [v3 ef_setOptionalObject:bccRecipients forKey:@"BccRecipients"];

  originalContent = [(MFMailCompositionValues *)self originalContent];
  [v3 ef_setOptionalObject:originalContent forKey:@"OriginalContent"];

  preferredSendingEmailAddress = [(MFMailCompositionValues *)self preferredSendingEmailAddress];
  [v3 ef_setOptionalObject:preferredSendingEmailAddress forKey:@"PreferredSendingEmailAddress"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailCompositionValues showKeyboardImmediately](self, "showKeyboardImmediately")}];
  [v3 ef_setOptionalObject:v16 forKey:@"ShowKeyboardImmediately"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailCompositionValues showContentImmediately](self, "showContentImmediately")}];
  [v3 ef_setOptionalObject:v17 forKey:@"ShowContentImmediately"];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MFMailCompositionValues sourceAccountManagement](self, "sourceAccountManagement")}];
  [v3 ef_setOptionalObject:v18 forKey:@"SourceAccountManagement"];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MFMailCompositionValues caretPosition](self, "caretPosition")}];
  [v3 ef_setOptionalObject:v19 forKey:@"CaretPosition"];

  uTITypes = [(MFMailCompositionValues *)self UTITypes];
  [v3 ef_setOptionalObject:uTITypes forKey:@"UTITypes"];

  photoIDs = [(MFMailCompositionValues *)self photoIDs];
  [v3 ef_setOptionalObject:photoIDs forKey:@"PhotoIDs"];

  cloudPhotoIDs = [(MFMailCompositionValues *)self cloudPhotoIDs];
  [v3 ef_setOptionalObject:cloudPhotoIDs forKey:@"CloudPhotoIDs"];

  contentText = [(MFMailCompositionValues *)self contentText];
  [v3 ef_setOptionalObject:contentText forKey:@"ContentText"];

  contentURLs = [(MFMailCompositionValues *)self contentURLs];
  [v3 ef_setOptionalObject:contentURLs forKey:@"ContentURLs"];

  contentVariations = [(MFMailCompositionValues *)self contentVariations];
  [v3 ef_setOptionalObject:contentVariations forKey:@"ContentVariations"];

  v26 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MFMailCompositionValues defaultContentVariationIndex](self, "defaultContentVariationIndex")}];
  [v3 ef_setOptionalObject:v26 forKey:@"DefaultContentVariationIndex"];

  shareSheetSessionID = [(MFMailCompositionValues *)self shareSheetSessionID];
  [v3 ef_setOptionalObject:shareSheetSessionID forKey:@"ShareSheetSessionID"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailCompositionValues isUsingDefaultAccount](self, "isUsingDefaultAccount")}];
  [v3 ef_setOptionalObject:v28 forKey:@"IsUsingDefaultAccount"];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailCompositionValues prefersFirstLineSelection](self, "prefersFirstLineSelection")}];
  [v3 ef_setOptionalObject:v29 forKey:@"PrefersFirstLineSelection"];

  v30 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MFMailCompositionValues composeType](self, "composeType")}];
  [v3 ef_setOptionalObject:v30 forKey:@"ComposeType"];

  serializedMessageObjectID = [(MFMailCompositionValues *)self serializedMessageObjectID];
  [v3 ef_setOptionalObject:serializedMessageObjectID forKey:@"SerializedMessageObjectID"];

  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailCompositionValues includeAttachments](self, "includeAttachments")}];
  [v3 ef_setOptionalObject:v32 forKey:@"IncludeAttachments"];

  serializedMailboxObjectID = [(MFMailCompositionValues *)self serializedMailboxObjectID];
  [v3 ef_setOptionalObject:serializedMailboxObjectID forKey:@"SerializedMailboxObjectID"];

  deferredAttachments = [(MFMailCompositionValues *)self deferredAttachments];
  [v3 ef_setOptionalObject:deferredAttachments forKey:@"DeferredAttachments"];

  sendLaterDate = [(MFMailCompositionValues *)self sendLaterDate];
  [v3 ef_setOptionalObject:sendLaterDate forKey:@"SendLaterDate"];

  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MFMailCompositionValues sendLaterContext](self, "sendLaterContext")}];
  [v3 ef_setOptionalObject:v36 forKey:@"SendLaterContext"];

  sharingSandboxingURLWrapper = [(MFMailCompositionValues *)self sharingSandboxingURLWrapper];
  [v3 ef_setOptionalObject:sharingSandboxingURLWrapper forKey:@"SharingSandboxingURLWrapper"];

  ckShare = [(MFMailCompositionValues *)self ckShare];
  [v3 ef_setOptionalObject:ckShare forKey:@"CKShare"];

  ckContainerSetupInfo = [(MFMailCompositionValues *)self ckContainerSetupInfo];
  [v3 ef_setOptionalObject:ckContainerSetupInfo forKey:@"CKContainerSetupInfo"];

  v40 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MFMailCompositionValues ckSharePermissionType](self, "ckSharePermissionType")}];
  [v3 ef_setOptionalObject:v40 forKey:@"CKSharePermissionType"];

  v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFMailCompositionValues ckShareAllowOthersToInvite](self, "ckShareAllowOthersToInvite")}];
  [v3 ef_setOptionalObject:v41 forKey:@"CKShareAllowOthersToInvite"];

  return v3;
}

- (void)_processDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"URL"];
  [(MFMailCompositionValues *)self setMailtoURL:v5];

  v6 = [representationCopy objectForKeyedSubscript:@"AutosaveIdentifier"];
  [(MFMailCompositionValues *)self setAutosaveIdentifier:v6];

  v7 = [representationCopy objectForKeyedSubscript:@"Subject"];
  [(MFMailCompositionValues *)self setSubject:v7];

  v8 = [representationCopy objectForKeyedSubscript:@"HideMyEmailFrom"];
  [(MFMailCompositionValues *)self setHideMyEmailFrom:v8];

  v9 = [representationCopy objectForKeyedSubscript:@"From"];
  [(MFMailCompositionValues *)self setFrom:v9];

  v10 = [representationCopy objectForKeyedSubscript:@"ToRecipients"];
  [(MFMailCompositionValues *)self setToRecipients:v10];

  v11 = [representationCopy objectForKeyedSubscript:@"CcRecipients"];
  [(MFMailCompositionValues *)self setCcRecipients:v11];

  v12 = [representationCopy objectForKeyedSubscript:@"BccRecipients"];
  [(MFMailCompositionValues *)self setBccRecipients:v12];

  v13 = [representationCopy objectForKeyedSubscript:@"OriginalContent"];
  [(MFMailCompositionValues *)self setOriginalContent:v13];

  v14 = [representationCopy objectForKeyedSubscript:@"UTITypes"];
  [(MFMailCompositionValues *)self setUTITypes:v14];

  v15 = [representationCopy objectForKeyedSubscript:@"PhotoIDs"];
  [(MFMailCompositionValues *)self setPhotoIDs:v15];

  v16 = [representationCopy objectForKeyedSubscript:@"CloudPhotoIDs"];
  [(MFMailCompositionValues *)self setCloudPhotoIDs:v16];

  v17 = [representationCopy objectForKeyedSubscript:@"ContentText"];
  [(MFMailCompositionValues *)self setContentText:v17];

  v18 = [representationCopy objectForKeyedSubscript:@"ContentURLs"];
  [(MFMailCompositionValues *)self setContentURLs:v18];

  v19 = [representationCopy objectForKeyedSubscript:@"ContentVariations"];
  [(MFMailCompositionValues *)self setContentVariations:v19];

  v20 = [representationCopy objectForKeyedSubscript:@"SerializedMessageObjectID"];
  [(MFMailCompositionValues *)self setSerializedMessageObjectID:v20];

  v21 = [representationCopy objectForKeyedSubscript:@"SerializedMailboxObjectID"];
  [(MFMailCompositionValues *)self setSerializedMailboxObjectID:v21];

  v22 = [representationCopy objectForKeyedSubscript:@"ShowKeyboardImmediately"];
  -[MFMailCompositionValues setShowKeyboardImmediately:](self, "setShowKeyboardImmediately:", [v22 BOOLValue]);

  v23 = [representationCopy objectForKeyedSubscript:@"ShowContentImmediately"];
  -[MFMailCompositionValues setShowContentImmediately:](self, "setShowContentImmediately:", [v23 BOOLValue]);

  v24 = [representationCopy objectForKeyedSubscript:@"CaretPosition"];
  -[MFMailCompositionValues setCaretPosition:](self, "setCaretPosition:", [v24 unsignedIntegerValue]);

  v25 = [representationCopy objectForKeyedSubscript:@"DefaultContentVariationIndex"];
  -[MFMailCompositionValues setDefaultContentVariationIndex:](self, "setDefaultContentVariationIndex:", [v25 integerValue]);

  v26 = [representationCopy objectForKeyedSubscript:@"IsUsingDefaultAccount"];
  -[MFMailCompositionValues setIsUsingDefaultAccount:](self, "setIsUsingDefaultAccount:", [v26 BOOLValue]);

  v27 = [representationCopy objectForKeyedSubscript:@"PrefersFirstLineSelection"];
  -[MFMailCompositionValues setPrefersFirstLineSelection:](self, "setPrefersFirstLineSelection:", [v27 BOOLValue]);

  v28 = [representationCopy objectForKeyedSubscript:@"ComposeType"];
  -[MFMailCompositionValues setComposeType:](self, "setComposeType:", [v28 integerValue]);

  v29 = [representationCopy objectForKeyedSubscript:@"IncludeAttachments"];
  -[MFMailCompositionValues setIncludeAttachments:](self, "setIncludeAttachments:", [v29 BOOLValue]);

  v30 = [representationCopy objectForKeyedSubscript:@"DeferredAttachments"];
  [(MFMailCompositionValues *)self setDeferredAttachments:v30];

  v31 = [representationCopy objectForKeyedSubscript:@"SourceAccountManagement"];
  -[MFMailCompositionValues setSourceAccountManagement:](self, "setSourceAccountManagement:", [v31 intValue]);

  v32 = [representationCopy objectForKeyedSubscript:@"SendLaterDate"];
  [(MFMailCompositionValues *)self setSendLaterDate:v32];

  v33 = [representationCopy objectForKeyedSubscript:@"SendLaterContext"];
  -[MFMailCompositionValues setSendLaterContext:](self, "setSendLaterContext:", [v33 integerValue]);

  v34 = [representationCopy objectForKeyedSubscript:@"SharingSandboxingURLWrapper"];
  [(MFMailCompositionValues *)self setSharingSandboxingURLWrapper:v34];

  v35 = [representationCopy objectForKeyedSubscript:@"CKShare"];
  [(MFMailCompositionValues *)self setCkShare:v35];

  v36 = [representationCopy objectForKeyedSubscript:@"CKContainerSetupInfo"];
  [(MFMailCompositionValues *)self setCkContainerSetupInfo:v36];

  v37 = [representationCopy objectForKeyedSubscript:@"CKSharePermissionType"];
  -[MFMailCompositionValues setCkSharePermissionType:](self, "setCkSharePermissionType:", [v37 integerValue]);

  v38 = [representationCopy objectForKeyedSubscript:@"CKShareAllowOthersToInvite"];
  -[MFMailCompositionValues setCkShareAllowOthersToInvite:](self, "setCkShareAllowOthersToInvite:", [v38 BOOLValue]);

  v39 = [representationCopy objectForKeyedSubscript:@"BodyIsHTML"];
  bOOLValue = [v39 BOOLValue];

  [(MFMailCompositionValues *)self setIsHTML:bOOLValue];
  v41 = [representationCopy objectForKeyedSubscript:@"Body"];
  if (v41)
  {
    v42 = [_MFMailCompositionContext processMessageBody:v41 asHTML:[(MFMailCompositionValues *)self isHTML]];
    [(MFMailCompositionValues *)self setMessageBody:v42];
  }

  v43 = [representationCopy objectForKeyedSubscript:@"PreferredSendingEmailAddress"];
  if (v43)
  {
    mailAccounts = [MEMORY[0x1E69B16A8] mailAccounts];
    v45 = [MEMORY[0x1E69B16A8] accountContainingEmailAddress:v43];
    if (v45)
    {
      [(MFMailCompositionValues *)self setPreferredSendingEmailAddress:v43];
    }
  }

  v46 = [representationCopy objectForKeyedSubscript:@"ShareSheetSessionID"];
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

- (id)addContentVariationWithName:(id)name
{
  nameCopy = name;
  contentVariations = [(MFMailCompositionValues *)self contentVariations];
  if (!contentVariations)
  {
    contentVariations = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(MFMailCompositionValues *)self setContentVariations:contentVariations];
  }

  v6 = [[_MFMailComposeContentVariation alloc] initWithName:nameCopy];
  [contentVariations addObject:v6];
  if ([(MFMailCompositionValues *)self defaultContentVariationIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(MFMailCompositionValues *)self setDefaultContentVariationIndex:0];
  }

  return v6;
}

- (MFMailCompositionValues)initWithCoder:(id)coder
{
  coderCopy = coder;
  v91.receiver = self;
  v91.super_class = MFMailCompositionValues;
  v5 = [(MFMailCompositionValues *)&v91 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_mailtoURL"];
    mailtoURL = v5->_mailtoURL;
    v5->_mailtoURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_autosaveIdentifier"];
    autosaveIdentifier = v5->_autosaveIdentifier;
    v5->_autosaveIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_messageBody"];
    messageBody = v5->_messageBody;
    v5->_messageBody = v10;

    v5->_isHTML = [coderCopy decodeBoolForKey:@"EFPropertyKey_isHTML"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_subject"];
    subject = v5->_subject;
    v5->_subject = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_hideMyEmailFrom"];
    hideMyEmailFrom = v5->_hideMyEmailFrom;
    v5->_hideMyEmailFrom = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_from"];
    from = v5->_from;
    v5->_from = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"EFPropertyKey_toRecipients"];
    toRecipients = v5->_toRecipients;
    v5->_toRecipients = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"EFPropertyKey_ccRecipients"];
    ccRecipients = v5->_ccRecipients;
    v5->_ccRecipients = v26;

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"EFPropertyKey_bccRecipients"];
    bccRecipients = v5->_bccRecipients;
    v5->_bccRecipients = v31;

    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
    v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"EFPropertyKey_originalContent"];
    originalContent = v5->_originalContent;
    v5->_originalContent = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_preferredSendingEmailAddress"];
    preferredSendingEmailAddress = v5->_preferredSendingEmailAddress;
    v5->_preferredSendingEmailAddress = v38;

    v5->_showKeyboardImmediately = [coderCopy decodeBoolForKey:@"EFPropertyKey_showKeyboardImmediately"];
    v5->_showContentImmediately = [coderCopy decodeBoolForKey:@"EFPropertyKey_showContentImmediately"];
    v5->_sourceAccountManagement = [coderCopy decodeIntegerForKey:@"EFPropertyKey_sourceAccountManagement"];
    v5->_caretPosition = [coderCopy decodeIntegerForKey:@"EFPropertyKey_caretPosition"];
    v40 = MEMORY[0x1E695DFD8];
    v41 = objc_opt_class();
    v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
    v43 = [coderCopy decodeObjectOfClasses:v42 forKey:@"EFPropertyKey_UTITypes"];
    UTITypes = v5->_UTITypes;
    v5->_UTITypes = v43;

    v45 = MEMORY[0x1E695DFD8];
    v46 = objc_opt_class();
    v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
    v48 = [coderCopy decodeObjectOfClasses:v47 forKey:@"EFPropertyKey_photoIDs"];
    photoIDs = v5->_photoIDs;
    v5->_photoIDs = v48;

    v50 = MEMORY[0x1E695DFD8];
    v51 = objc_opt_class();
    v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
    v53 = [coderCopy decodeObjectOfClasses:v52 forKey:@"EFPropertyKey_cloudPhotoIDs"];
    cloudPhotoIDs = v5->_cloudPhotoIDs;
    v5->_cloudPhotoIDs = v53;

    v55 = MEMORY[0x1E695DFD8];
    v56 = objc_opt_class();
    v57 = [v55 setWithObjects:{v56, objc_opt_class(), 0}];
    v58 = [coderCopy decodeObjectOfClasses:v57 forKey:@"EFPropertyKey_contentText"];
    contentText = v5->_contentText;
    v5->_contentText = v58;

    v60 = MEMORY[0x1E695DFD8];
    v61 = objc_opt_class();
    v62 = [v60 setWithObjects:{v61, objc_opt_class(), 0}];
    v63 = [coderCopy decodeObjectOfClasses:v62 forKey:@"EFPropertyKey_contentURLs"];
    contentURLs = v5->_contentURLs;
    v5->_contentURLs = v63;

    v65 = MEMORY[0x1E695DFD8];
    v66 = objc_opt_class();
    v67 = [v65 setWithObjects:{v66, objc_opt_class(), 0}];
    v68 = [coderCopy decodeObjectOfClasses:v67 forKey:@"EFPropertyKey_contentVariations"];
    contentVariations = v5->_contentVariations;
    v5->_contentVariations = v68;

    v5->_defaultContentVariationIndex = [coderCopy decodeIntegerForKey:@"EFPropertyKey_defaultContentVariationIndex"];
    v70 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_shareSheetSessionID"];
    shareSheetSessionID = v5->_shareSheetSessionID;
    v5->_shareSheetSessionID = v70;

    v5->_isUsingDefaultAccount = [coderCopy decodeBoolForKey:@"EFPropertyKey_isUsingDefaultAccount"];
    v5->_prefersFirstLineSelection = [coderCopy decodeBoolForKey:@"EFPropertyKey_prefersFirstLineSelection"];
    v5->_composeType = [coderCopy decodeIntegerForKey:@"EFPropertyKey_composeType"];
    v72 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_serializedMessageObjectID"];
    serializedMessageObjectID = v5->_serializedMessageObjectID;
    v5->_serializedMessageObjectID = v72;

    v5->_includeAttachments = [coderCopy decodeBoolForKey:@"EFPropertyKey_includeAttachments"];
    v74 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_serializedMailboxObjectID"];
    serializedMailboxObjectID = v5->_serializedMailboxObjectID;
    v5->_serializedMailboxObjectID = v74;

    v76 = MEMORY[0x1E695DFD8];
    v77 = objc_opt_class();
    v78 = objc_opt_class();
    v79 = [v76 setWithObjects:{v77, v78, objc_opt_class(), 0}];
    v80 = [coderCopy decodeObjectOfClasses:v79 forKey:@"EFPropertyKey_deferredAttachments"];
    deferredAttachments = v5->_deferredAttachments;
    v5->_deferredAttachments = v80;

    v82 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_sendLaterDate"];
    sendLaterDate = v5->_sendLaterDate;
    v5->_sendLaterDate = v82;

    v84 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_sharingSandboxingURLWrapper"];
    sharingSandboxingURLWrapper = v5->_sharingSandboxingURLWrapper;
    v5->_sharingSandboxingURLWrapper = v84;

    v86 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_ckShare"];
    ckShare = v5->_ckShare;
    v5->_ckShare = v86;

    v88 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_ckContainerSetupInfo"];
    ckContainerSetupInfo = v5->_ckContainerSetupInfo;
    v5->_ckContainerSetupInfo = v88;

    v5->_ckSharePermissionType = [coderCopy decodeIntegerForKey:@"EFPropertyKey_ckSharePermissionType"];
    v5->_ckShareAllowOthersToInvite = [coderCopy decodeBoolForKey:@"EFPropertyKey_ckShareAllowOthersToInvite"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  mailtoURL = [(MFMailCompositionValues *)self mailtoURL];
  [coderCopy encodeObject:mailtoURL forKey:@"EFPropertyKey_mailtoURL"];

  autosaveIdentifier = [(MFMailCompositionValues *)self autosaveIdentifier];
  [coderCopy encodeObject:autosaveIdentifier forKey:@"EFPropertyKey_autosaveIdentifier"];

  messageBody = [(MFMailCompositionValues *)self messageBody];
  [coderCopy encodeObject:messageBody forKey:@"EFPropertyKey_messageBody"];

  [coderCopy encodeBool:-[MFMailCompositionValues isHTML](self forKey:{"isHTML"), @"EFPropertyKey_isHTML"}];
  subject = [(MFMailCompositionValues *)self subject];
  [coderCopy encodeObject:subject forKey:@"EFPropertyKey_subject"];

  hideMyEmailFrom = [(MFMailCompositionValues *)self hideMyEmailFrom];
  [coderCopy encodeObject:hideMyEmailFrom forKey:@"EFPropertyKey_hideMyEmailFrom"];

  from = [(MFMailCompositionValues *)self from];
  [coderCopy encodeObject:from forKey:@"EFPropertyKey_from"];

  toRecipients = [(MFMailCompositionValues *)self toRecipients];
  [coderCopy encodeObject:toRecipients forKey:@"EFPropertyKey_toRecipients"];

  ccRecipients = [(MFMailCompositionValues *)self ccRecipients];
  [coderCopy encodeObject:ccRecipients forKey:@"EFPropertyKey_ccRecipients"];

  bccRecipients = [(MFMailCompositionValues *)self bccRecipients];
  [coderCopy encodeObject:bccRecipients forKey:@"EFPropertyKey_bccRecipients"];

  originalContent = [(MFMailCompositionValues *)self originalContent];
  [coderCopy encodeObject:originalContent forKey:@"EFPropertyKey_originalContent"];

  preferredSendingEmailAddress = [(MFMailCompositionValues *)self preferredSendingEmailAddress];
  [coderCopy encodeObject:preferredSendingEmailAddress forKey:@"EFPropertyKey_preferredSendingEmailAddress"];

  [coderCopy encodeBool:-[MFMailCompositionValues showKeyboardImmediately](self forKey:{"showKeyboardImmediately"), @"EFPropertyKey_showKeyboardImmediately"}];
  [coderCopy encodeBool:-[MFMailCompositionValues showContentImmediately](self forKey:{"showContentImmediately"), @"EFPropertyKey_showContentImmediately"}];
  [coderCopy encodeInteger:-[MFMailCompositionValues sourceAccountManagement](self forKey:{"sourceAccountManagement"), @"EFPropertyKey_sourceAccountManagement"}];
  [coderCopy encodeInteger:-[MFMailCompositionValues caretPosition](self forKey:{"caretPosition"), @"EFPropertyKey_caretPosition"}];
  uTITypes = [(MFMailCompositionValues *)self UTITypes];
  [coderCopy encodeObject:uTITypes forKey:@"EFPropertyKey_UTITypes"];

  photoIDs = [(MFMailCompositionValues *)self photoIDs];
  [coderCopy encodeObject:photoIDs forKey:@"EFPropertyKey_photoIDs"];

  cloudPhotoIDs = [(MFMailCompositionValues *)self cloudPhotoIDs];
  [coderCopy encodeObject:cloudPhotoIDs forKey:@"EFPropertyKey_cloudPhotoIDs"];

  contentText = [(MFMailCompositionValues *)self contentText];
  [coderCopy encodeObject:contentText forKey:@"EFPropertyKey_contentText"];

  contentURLs = [(MFMailCompositionValues *)self contentURLs];
  [coderCopy encodeObject:contentURLs forKey:@"EFPropertyKey_contentURLs"];

  contentVariations = [(MFMailCompositionValues *)self contentVariations];
  [coderCopy encodeObject:contentVariations forKey:@"EFPropertyKey_contentVariations"];

  [coderCopy encodeInteger:-[MFMailCompositionValues defaultContentVariationIndex](self forKey:{"defaultContentVariationIndex"), @"EFPropertyKey_defaultContentVariationIndex"}];
  shareSheetSessionID = [(MFMailCompositionValues *)self shareSheetSessionID];
  [coderCopy encodeObject:shareSheetSessionID forKey:@"EFPropertyKey_shareSheetSessionID"];

  [coderCopy encodeBool:-[MFMailCompositionValues isUsingDefaultAccount](self forKey:{"isUsingDefaultAccount"), @"EFPropertyKey_isUsingDefaultAccount"}];
  [coderCopy encodeBool:-[MFMailCompositionValues prefersFirstLineSelection](self forKey:{"prefersFirstLineSelection"), @"EFPropertyKey_prefersFirstLineSelection"}];
  [coderCopy encodeInteger:-[MFMailCompositionValues composeType](self forKey:{"composeType"), @"EFPropertyKey_composeType"}];
  serializedMessageObjectID = [(MFMailCompositionValues *)self serializedMessageObjectID];
  [coderCopy encodeObject:serializedMessageObjectID forKey:@"EFPropertyKey_serializedMessageObjectID"];

  [coderCopy encodeBool:-[MFMailCompositionValues includeAttachments](self forKey:{"includeAttachments"), @"EFPropertyKey_includeAttachments"}];
  serializedMailboxObjectID = [(MFMailCompositionValues *)self serializedMailboxObjectID];
  [coderCopy encodeObject:serializedMailboxObjectID forKey:@"EFPropertyKey_serializedMailboxObjectID"];

  deferredAttachments = [(MFMailCompositionValues *)self deferredAttachments];
  [coderCopy encodeObject:deferredAttachments forKey:@"EFPropertyKey_deferredAttachments"];

  sendLaterDate = [(MFMailCompositionValues *)self sendLaterDate];
  [coderCopy encodeObject:sendLaterDate forKey:@"EFPropertyKey_sendLaterDate"];

  [coderCopy encodeInteger:-[MFMailCompositionValues sendLaterContext](self forKey:{"sendLaterContext"), @"EFPropertyKey_sendLaterContext"}];
  sharingSandboxingURLWrapper = [(MFMailCompositionValues *)self sharingSandboxingURLWrapper];
  [coderCopy encodeObject:sharingSandboxingURLWrapper forKey:@"EFPropertyKey_sharingSandboxingURLWrapper"];

  ckShare = [(MFMailCompositionValues *)self ckShare];
  [coderCopy encodeObject:ckShare forKey:@"EFPropertyKey_ckShare"];

  ckContainerSetupInfo = [(MFMailCompositionValues *)self ckContainerSetupInfo];
  [coderCopy encodeObject:ckContainerSetupInfo forKey:@"EFPropertyKey_ckContainerSetupInfo"];

  [coderCopy encodeInteger:-[MFMailCompositionValues ckSharePermissionType](self forKey:{"ckSharePermissionType"), @"EFPropertyKey_ckSharePermissionType"}];
  [coderCopy encodeBool:-[MFMailCompositionValues ckShareAllowOthersToInvite](self forKey:{"ckShareAllowOthersToInvite"), @"EFPropertyKey_ckShareAllowOthersToInvite"}];
}

@end