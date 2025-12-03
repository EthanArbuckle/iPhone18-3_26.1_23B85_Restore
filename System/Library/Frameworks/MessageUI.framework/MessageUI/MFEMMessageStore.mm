@interface MFEMMessageStore
+ (id)headersForDraftRestoration;
- (BOOL)_isDisplayableImageContentItem:(id)item;
- (MFEMMessageStore)initWithEMMessage:(id)message messageClass:(Class)class mailboxUid:(id)uid skipAttachmentDownload:(BOOL)download;
- (MFMailMessage)legacyMessage;
- (MailAccount)account;
- (id)_markupStringForDisplayForContentItem:(id)item;
- (id)_requestMessageContentRepresentationFetchIfNotAvailable:(BOOL)available;
- (id)bodyForMessage:(id)message fetchIfNotAvailable:(BOOL)available updateFlags:(BOOL)flags;
- (id)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download;
- (id)headerDataForMessage:(id)message downloadIfNecessary:(BOOL)necessary;
- (void)contentObjectID:(id)d generateHTMLSnippetsForRelatedContentItems:(id)items completionHandler:(id)handler;
- (void)dealloc;
@end

@implementation MFEMMessageStore

+ (id)headersForDraftRestoration
{
  if (headersForDraftRestoration_onceToken != -1)
  {
    +[MFEMMessageStore headersForDraftRestoration];
  }

  v3 = headersForDraftRestoration_headerKeys;

  return v3;
}

void __46__MFEMMessageStore_headersForDraftRestoration__block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E699B1A8];
  v4[0] = *MEMORY[0x1E699B1B8];
  v4[1] = v0;
  v1 = *MEMORY[0x1E699B0F0];
  v4[2] = *MEMORY[0x1E699B0E8];
  v4[3] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v3 = headersForDraftRestoration_headerKeys;
  headersForDraftRestoration_headerKeys = v2;
}

- (MFEMMessageStore)initWithEMMessage:(id)message messageClass:(Class)class mailboxUid:(id)uid skipAttachmentDownload:(BOOL)download
{
  downloadCopy = download;
  messageCopy = message;
  uidCopy = uid;
  v18.receiver = self;
  v18.super_class = MFEMMessageStore;
  v12 = [(MFEMMessageStore *)&v18 init];
  v13 = v12;
  if (v12)
  {
    [(MFEMMessageStore *)v12 setMessageClass:class];
    [(MFEMMessageStore *)v13 setMessage:messageCopy];
    objc_storeStrong(&v13->_mailbox, uid);
    [(MFEMMessageStore *)v13 setSkipAttachmentDownload:downloadCopy];
    copyNewMimeBoundary = [MEMORY[0x1E69AD710] copyNewMimeBoundary];
    [(MFEMMessageStore *)v13 setMimeBoundary:copyNewMimeBoundary];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(MFEMMessageStore *)v13 setContentIDsToContentItems:dictionary];

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [(MFEMMessageStore *)v13 setContentIDsToRepresentations:dictionary2];
  }

  return v13;
}

- (void)dealloc
{
  allValues = [(NSMutableDictionary *)self->_contentIDsToRepresentations allValues];
  [allValues makeObjectsPerformSelector:sel_cancel];

  v4.receiver = self;
  v4.super_class = MFEMMessageStore;
  [(MFEMMessageStore *)&v4 dealloc];
}

- (MFMailMessage)legacyMessage
{
  messageClass = self->_messageClass;
  if (!messageClass)
  {
    v4 = objc_opt_class();
    v5 = self->_messageClass;
    self->_messageClass = v4;

    messageClass = self->_messageClass;
  }

  v6 = objc_alloc_init(messageClass);
  [v6 setMessageStore:self];

  return v6;
}

- (id)_requestMessageContentRepresentationFetchIfNotAvailable:(BOOL)available
{
  availableCopy = available;
  v25 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  bodyRepresentation = [(MFEMMessageStore *)self bodyRepresentation];

  if (bodyRepresentation)
  {
    v6 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "Returning cached body repsentation", buf, 2u);
    }

    bodyRepresentation2 = [(MFEMMessageStore *)self bodyRepresentation];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v8 = objc_alloc(MEMORY[0x1E699AC68]);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __76__MFEMMessageStore__requestMessageContentRepresentationFetchIfNotAvailable___block_invoke;
    v23[3] = &__block_descriptor_40_e42_v16__0___EMContentRequestOptionsBuilder__8l;
    v23[4] = availableCopy;
    v9 = [v8 initWithBuilder:v23];
    promise = [MEMORY[0x1E699B868] promise];
    message = self->_message;
    completionHandlerAdapter = [promise completionHandlerAdapter];
    v13 = [(EMMessage *)message requestRepresentationWithOptions:v9 delegate:self completionHandler:completionHandlerAdapter];

    future = [promise future];
    v22 = 0;
    bodyRepresentation2 = [future result:&v22];
    v15 = v22;

    if (bodyRepresentation2)
    {
      os_unfair_lock_lock(&self->_lock);
      v16 = MEMORY[0x1E695DEF0];
      contentURL = [bodyRepresentation2 contentURL];
      v18 = [v16 dataWithContentsOfURL:contentURL options:8 error:0];
      [(MFEMMessageStore *)self setBodyHTMLData:v18];

      [(MFEMMessageStore *)self setBodyRepresentation:bodyRepresentation2];
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v19 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription = [v15 ef_publicDescription];
        [(MFEMMessageStore *)ef_publicDescription _requestMessageContentRepresentationFetchIfNotAvailable:buf, v19];
      }
    }
  }

  return bodyRepresentation2;
}

void __76__MFEMMessageStore__requestMessageContentRepresentationFetchIfNotAvailable___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setRequestedRepresentation:*MEMORY[0x1E699A700]];
  [v4 setNetworkUsage:*(a1 + 32)];
  v3 = +[MFEMMessageStore headersForDraftRestoration];
  [v4 setRequestedHeaderKeys:v3];
}

- (id)headerDataForMessage:(id)message downloadIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v44 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E69AD740]);
  v7 = MEMORY[0x1E696AEC0];
  mimeBoundary = [(MFEMMessageStore *)self mimeBoundary];
  v9 = [v7 stringWithFormat:@"multipart/related boundary=%@", mimeBoundary];;
  [v6 setHeader:v9 forKey:*MEMORY[0x1E699B0D0]];

  subject = [(EMMessage *)self->_message subject];
  subjectString = [subject subjectString];

  v37 = subjectString;
  if (subjectString)
  {
    [v6 setHeader:subjectString forKey:*MEMORY[0x1E699B178]];
  }

  v38 = [(MFEMMessageStore *)self _requestMessageContentRepresentationFetchIfNotAvailable:necessaryCopy];
  if (v38)
  {
    publicMessageURL = [v38 publicMessageURL];
    resourceSpecifier = [publicMessageURL resourceSpecifier];
    stringByRemovingPercentEncoding = [resourceSpecifier stringByRemovingPercentEncoding];
    [v6 setHeader:stringByRemovingPercentEncoding forKey:*MEMORY[0x1E699B130]];

    requestedHeaders = [v38 requestedHeaders];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    headerKeys = [requestedHeaders headerKeys];
    v17 = [headerKeys countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v17)
    {
      v18 = *v40;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(headerKeys);
          }

          v20 = *(*(&v39 + 1) + 8 * i);
          v21 = [requestedHeaders headersForKey:v20];
          if (v21)
          {
            [v6 setHeader:v21 forKey:v20];
          }
        }

        v17 = [headerKeys countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v17);
    }
  }

  senderList = [(EMMessage *)self->_message senderList];
  v23 = [senderList ef_map:&__block_literal_global_33];
  [v6 setAddressListForSender:v23];

  toList = [(EMMessage *)self->_message toList];
  v25 = [toList ef_map:&__block_literal_global_33];
  [v6 setAddressListForTo:v25];

  ccList = [(EMMessage *)self->_message ccList];
  v27 = [ccList ef_map:&__block_literal_global_33];
  [v6 setAddressListForCc:v27];

  bccList = [(EMMessage *)self->_message bccList];
  v29 = [bccList ef_map:&__block_literal_global_33];
  [v6 setAddressListForBcc:v29];

  replyToList = [v38 replyToList];
  [v6 setAddressListForReplyTo:replyToList];

  date = [(EMMessage *)self->_message date];
  ec_descriptionForMimeHeaders = [date ec_descriptionForMimeHeaders];
  [v6 setHeader:ec_descriptionForMimeHeaders forKey:*MEMORY[0x1E699B0D8]];

  documentID = [(EMMessage *)self->_message documentID];
  uUIDString = [documentID UUIDString];

  if (uUIDString)
  {
    [v6 setHeader:uUIDString forKey:*MEMORY[0x1E699B1C0]];
  }

  encodedHeaders = [v6 encodedHeaders];

  return encodedHeaders;
}

id __61__MFEMMessageStore_headerDataForMessage_downloadIfNecessary___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 stringValue];

  return v2;
}

- (id)bodyForMessage:(id)message fetchIfNotAvailable:(BOOL)available updateFlags:(BOOL)flags
{
  availableCopy = available;
  v37 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v26 = objc_alloc_init(MEMORY[0x1E69AD710]);
  v31 = objc_alloc_init(MEMORY[0x1E69B1630]);
  [v26 setMessage:messageCopy];
  [v26 setTopLevelPart:v31];
  [v31 setMimeBody:v26];
  v27 = [(MFEMMessageStore *)self _requestMessageContentRepresentationFetchIfNotAvailable:availableCopy];
  mimeBoundary = [(MFEMMessageStore *)self mimeBoundary];
  [v31 setType:@"multipart"];
  [v31 setSubtype:@"related"];
  [v31 setBodyParameter:mimeBoundary forKey:@"boundary"];
  v28 = objc_alloc_init(MEMORY[0x1E69B1630]);
  [v28 setType:@"text"];
  [v28 setSubtype:@"html"];
  bodyHTMLData = [(MFEMMessageStore *)self bodyHTMLData];
  [v28 setRange:{0, objc_msgSend(bodyHTMLData, "length")}];

  [v31 addSubpart:v28];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [v27 relatedContentItems];
  selfCopy = self;
  v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = objc_alloc_init(MEMORY[0x1E69B1630]);
        type = [v11 type];
        preferredMIMEType = [type preferredMIMEType];

        if (!preferredMIMEType || (v15 = [preferredMIMEType rangeOfString:@"/"], v15 == 0x7FFFFFFFFFFFFFFFLL) || objc_msgSend(preferredMIMEType, "length") <= (v15 + 1))
        {
          v17 = @"octet-stream";
          v16 = @"application";
        }

        else
        {
          v16 = [preferredMIMEType substringToIndex:v15];
          v17 = [preferredMIMEType substringFromIndex:v15 + 1];
        }

        [v12 setType:{v16, messageCopy}];
        [v12 setSubtype:v17];
        contentID = [v11 contentID];
        [v12 setContentID:contentID];

        [v12 setDisposition:@"attachment"];
        displayName = [v11 displayName];
        [v12 setDispositionParameter:displayName forKey:@"filename"];

        [v12 setRange:{0, objc_msgSend(v11, "dataTransferByteCount")}];
        [v12 setContentTransferEncoding:@"binary"];
        [v31 addSubpart:v12];
        contentIDsToContentItems = [(MFEMMessageStore *)selfCopy contentIDsToContentItems];
        contentID2 = [v11 contentID];
        [contentIDsToContentItems setObject:v11 forKeyedSubscript:contentID2];
      }

      v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }

  securityInformation = [v27 securityInformation];
  [v26 setIsEncrypted:{objc_msgSend(securityInformation, "isEncrypted")}];

  return v26;
}

- (id)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download
{
  necessaryCopy = necessary;
  v48 = *MEMORY[0x1E69E9840];
  partCopy = part;
  if ([partCopy isAttachment])
  {
    if ((necessaryCopy & ~[(MFEMMessageStore *)self skipAttachmentDownload]) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    contentID = [partCopy contentID];
    contentIDsToContentItems = [(MFEMMessageStore *)self contentIDsToContentItems];
    v14 = [contentIDsToContentItems objectForKeyedSubscript:contentID];

    v15 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [v14 ef_publicDescription];
      mailDropMetadata = [v14 mailDropMetadata];
      *buf = 138544130;
      v41 = ef_publicDescription;
      v42 = 1024;
      v43 = necessaryCopy;
      v44 = 1024;
      v45 = mailDropMetadata != 0;
      v46 = 2048;
      v47 = v11;
      _os_log_impl(&dword_1BE819000, v15, OS_LOG_TYPE_DEFAULT, "Attempting to request content representation for contentItem: %{public}@, download: %{BOOL}d, isMaildrop: %{BOOL}d, networkUsage: %ld", buf, 0x22u);
    }

    if (v14 && ([v14 mailDropMetadata], v18 = objc_claimAutoreleasedReturnValue(), v19 = v18 == 0, v18, v19))
    {
      os_unfair_lock_lock(&self->_lock);
      contentIDsToRepresentations = [(MFEMMessageStore *)self contentIDsToRepresentations];
      future = [contentIDsToRepresentations objectForKeyedSubscript:contentID];

      if (!future)
      {
        v25 = objc_alloc(MEMORY[0x1E699AC68]);
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __87__MFEMMessageStore_dataForMimePart_inRange_isComplete_downloadIfNecessary_didDownload___block_invoke;
        v39[3] = &__block_descriptor_40_e42_v16__0___EMContentRequestOptionsBuilder__8l;
        v39[4] = v11;
        v26 = [v25 initWithBuilder:v39];
        promise = [MEMORY[0x1E699B868] promise];
        completionHandlerAdapter = [promise completionHandlerAdapter];
        v29 = [v14 requestRepresentationWithOptions:v26 completionHandler:completionHandlerAdapter];

        future = [promise future];
        contentIDsToRepresentations2 = [(MFEMMessageStore *)self contentIDsToRepresentations];
        [contentIDsToRepresentations2 setObject:future forKeyedSubscript:contentID];
      }

      os_unfair_lock_unlock(&self->_lock);
      v38 = 0;
      v31 = [future result:&v38];
      v32 = v38;
      if (v31)
      {
        hasMoreContent = [v31 hasMoreContent];
        v34 = MEMORY[0x1E695DEF0];
        contentURL = [v31 contentURL];
        bodyHTMLData = [v34 dataWithContentsOfURL:contentURL options:8 error:0];
        v21 = hasMoreContent ^ 1;
      }

      else
      {
        contentURL = EMLogCategoryMessageLoading();
        if (os_log_type_enabled(contentURL, OS_LOG_TYPE_ERROR))
        {
          ef_publicDescription2 = [v32 ef_publicDescription];
          [MFEMMessageStore dataForMimePart:ef_publicDescription2 inRange:buf isComplete:contentURL downloadIfNecessary:? didDownload:?];
        }

        bodyHTMLData = 0;
        v21 = 1;
      }
    }

    else
    {
      bodyHTMLData = 0;
      v21 = 1;
    }

    if (complete)
    {
      *complete = v21;
    }
  }

  else
  {
    if (complete)
    {
      bodyRepresentation = [(MFEMMessageStore *)self bodyRepresentation];
      *complete = [bodyRepresentation hasMoreContent] ^ 1;
    }

    bodyHTMLData = [(MFEMMessageStore *)self bodyHTMLData];
  }

  return bodyHTMLData;
}

void __87__MFEMMessageStore_dataForMimePart_inRange_isComplete_downloadIfNecessary_didDownload___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setRequestedRepresentation:*MEMORY[0x1E699A710]];
  [v4 setNetworkUsage:*(a1 + 32)];
  v3 = +[MFEMMessageStore headersForDraftRestoration];
  [v4 setRequestedHeaderKeys:v3];
}

- (void)contentObjectID:(id)d generateHTMLSnippetsForRelatedContentItems:(id)items completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  handlerCopy = handler;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = itemsCopy;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [(MFEMMessageStore *)self _markupStringForDisplayForContentItem:v14, v17];
        contentID = [v14 contentID];
        [dictionary setObject:v15 forKeyedSubscript:contentID];
      }

      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  handlerCopy[2](handlerCopy, dictionary, 0);
}

- (id)_markupStringForDisplayForContentItem:(id)item
{
  v34[2] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  contentID = [itemCopy contentID];
  if ([itemCopy exchangeEventUID] <= 0)
  {
    if (([itemCopy isAvailableLocally] & 1) != 0 || !-[MFEMMessageStore skipAttachmentDownload](self, "skipAttachmentDownload"))
    {
      if ([(MFEMMessageStore *)self _isDisplayableImageContentItem:itemCopy])
      {
        v33[0] = @"src";
        v11 = MFCreateURLForContentID();
        v33[1] = @"id";
        v34[0] = v11;
        v34[1] = contentID;
        displayName = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

        v6 = [MEMORY[0x1E699B7D0] htmlSnippetWithTag:@"img" includeTrailingTag:0 attributes:displayName];
      }

      else
      {
        displayName = [itemCopy displayName];
        mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
        v14 = [mainBundle localizedStringForKey:@"UNAVAILABLE" value:&stru_1F3CF3758 table:@"Main"];

        v15 = MFCreateURLForContentID();
        v16 = v15;
        if (displayName && v14 && contentID && v15)
        {
          v31[0] = @"title";
          v31[1] = @"subtitle";
          v32[0] = displayName;
          v32[1] = v14;
          v31[2] = @"id";
          v31[3] = @"src";
          v32[2] = contentID;
          v32[3] = v15;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:4];
          v6 = [MEMORY[0x1E699B7D0] htmlSnippetWithTag:@"attachment" includeTrailingTag:1 attributes:v17];
        }

        else
        {
          v17 = EMLogCategoryMessageLoading();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            v19 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:displayName];
            ef_publicDescription = [itemCopy ef_publicDescription];
            *buf = 138544386;
            v22 = v19;
            v23 = 2114;
            v24 = v14;
            v25 = 2114;
            v26 = contentID;
            v27 = 2114;
            v28 = v16;
            v29 = 2114;
            v30 = ef_publicDescription;
            _os_log_fault_impl(&dword_1BE819000, v17, OS_LOG_TYPE_FAULT, "Error creating markup string: title: %{public}@, subtitle: %{public}@, id: %{public}@, URL: %{public}@, contentItem: %{public}@", buf, 0x34u);
          }

          v6 = @"<span></span>";
        }
      }
    }

    else
    {
      v7 = MEMORY[0x1E696AEC0];
      displayName2 = [itemCopy displayName];
      v9 = [v7 stringWithFormat:@"<%@>", displayName2];
      ef_stringByEscapingForXML = [v9 ef_stringByEscapingForXML];
      v6 = [v7 stringWithFormat:@"<DIV>%@</DIV>", ef_stringByEscapingForXML];
    }
  }

  else
  {
    v6 = @"<span></span>";
  }

  return v6;
}

- (BOOL)_isDisplayableImageContentItem:(id)item
{
  type = [item type];
  if ([type conformsToType:*MEMORY[0x1E6982E58]] & 1) != 0 || (objc_msgSend(type, "conformsToType:", *MEMORY[0x1E6982F28]) & 1) != 0 || (objc_msgSend(type, "conformsToType:", *MEMORY[0x1E6982DE8]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [type conformsToType:*MEMORY[0x1E6982E30]];
  }

  return v4;
}

- (MailAccount)account
{
  legacyMessage = [(MFEMMessageStore *)self legacyMessage];
  account = [legacyMessage account];

  return account;
}

- (void)_requestMessageContentRepresentationFetchIfNotAvailable:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "Error getting message content representation: %{public}@", buf, 0xCu);
}

- (void)dataForMimePart:(os_log_t)log inRange:isComplete:downloadIfNecessary:didDownload:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "Error getting attachment content representation: %{public}@", buf, 0xCu);
}

@end