@interface MFEMMessageStore
+ (id)headersForDraftRestoration;
- (BOOL)_isDisplayableImageContentItem:(id)a3;
- (MFEMMessageStore)initWithEMMessage:(id)a3 messageClass:(Class)a4 mailboxUid:(id)a5 skipAttachmentDownload:(BOOL)a6;
- (MFMailMessage)legacyMessage;
- (MailAccount)account;
- (id)_markupStringForDisplayForContentItem:(id)a3;
- (id)_requestMessageContentRepresentationFetchIfNotAvailable:(BOOL)a3;
- (id)bodyForMessage:(id)a3 fetchIfNotAvailable:(BOOL)a4 updateFlags:(BOOL)a5;
- (id)dataForMimePart:(id)a3 inRange:(_NSRange)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6 didDownload:(BOOL *)a7;
- (id)headerDataForMessage:(id)a3 downloadIfNecessary:(BOOL)a4;
- (void)contentObjectID:(id)a3 generateHTMLSnippetsForRelatedContentItems:(id)a4 completionHandler:(id)a5;
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

- (MFEMMessageStore)initWithEMMessage:(id)a3 messageClass:(Class)a4 mailboxUid:(id)a5 skipAttachmentDownload:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = MFEMMessageStore;
  v12 = [(MFEMMessageStore *)&v18 init];
  v13 = v12;
  if (v12)
  {
    [(MFEMMessageStore *)v12 setMessageClass:a4];
    [(MFEMMessageStore *)v13 setMessage:v10];
    objc_storeStrong(&v13->_mailbox, a5);
    [(MFEMMessageStore *)v13 setSkipAttachmentDownload:v6];
    v14 = [MEMORY[0x1E69AD710] copyNewMimeBoundary];
    [(MFEMMessageStore *)v13 setMimeBoundary:v14];

    v15 = [MEMORY[0x1E695DF90] dictionary];
    [(MFEMMessageStore *)v13 setContentIDsToContentItems:v15];

    v16 = [MEMORY[0x1E695DF90] dictionary];
    [(MFEMMessageStore *)v13 setContentIDsToRepresentations:v16];
  }

  return v13;
}

- (void)dealloc
{
  v3 = [(NSMutableDictionary *)self->_contentIDsToRepresentations allValues];
  [v3 makeObjectsPerformSelector:sel_cancel];

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

- (id)_requestMessageContentRepresentationFetchIfNotAvailable:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(MFEMMessageStore *)self bodyRepresentation];

  if (v5)
  {
    v6 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BE819000, v6, OS_LOG_TYPE_DEFAULT, "Returning cached body repsentation", buf, 2u);
    }

    v7 = [(MFEMMessageStore *)self bodyRepresentation];
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
    v23[4] = v3;
    v9 = [v8 initWithBuilder:v23];
    v10 = [MEMORY[0x1E699B868] promise];
    message = self->_message;
    v12 = [v10 completionHandlerAdapter];
    v13 = [(EMMessage *)message requestRepresentationWithOptions:v9 delegate:self completionHandler:v12];

    v14 = [v10 future];
    v22 = 0;
    v7 = [v14 result:&v22];
    v15 = v22;

    if (v7)
    {
      os_unfair_lock_lock(&self->_lock);
      v16 = MEMORY[0x1E695DEF0];
      v17 = [v7 contentURL];
      v18 = [v16 dataWithContentsOfURL:v17 options:8 error:0];
      [(MFEMMessageStore *)self setBodyHTMLData:v18];

      [(MFEMMessageStore *)self setBodyRepresentation:v7];
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v19 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [v15 ef_publicDescription];
        [(MFEMMessageStore *)v20 _requestMessageContentRepresentationFetchIfNotAvailable:buf, v19];
      }
    }
  }

  return v7;
}

void __76__MFEMMessageStore__requestMessageContentRepresentationFetchIfNotAvailable___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setRequestedRepresentation:*MEMORY[0x1E699A700]];
  [v4 setNetworkUsage:*(a1 + 32)];
  v3 = +[MFEMMessageStore headersForDraftRestoration];
  [v4 setRequestedHeaderKeys:v3];
}

- (id)headerDataForMessage:(id)a3 downloadIfNecessary:(BOOL)a4
{
  v4 = a4;
  v44 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E69AD740]);
  v7 = MEMORY[0x1E696AEC0];
  v8 = [(MFEMMessageStore *)self mimeBoundary];
  v9 = [v7 stringWithFormat:@"multipart/related boundary=%@", v8];;
  [v6 setHeader:v9 forKey:*MEMORY[0x1E699B0D0]];

  v10 = [(EMMessage *)self->_message subject];
  v11 = [v10 subjectString];

  v37 = v11;
  if (v11)
  {
    [v6 setHeader:v11 forKey:*MEMORY[0x1E699B178]];
  }

  v38 = [(MFEMMessageStore *)self _requestMessageContentRepresentationFetchIfNotAvailable:v4];
  if (v38)
  {
    v12 = [v38 publicMessageURL];
    v13 = [v12 resourceSpecifier];
    v14 = [v13 stringByRemovingPercentEncoding];
    [v6 setHeader:v14 forKey:*MEMORY[0x1E699B130]];

    v15 = [v38 requestedHeaders];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v16 = [v15 headerKeys];
    v17 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v17)
    {
      v18 = *v40;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v39 + 1) + 8 * i);
          v21 = [v15 headersForKey:v20];
          if (v21)
          {
            [v6 setHeader:v21 forKey:v20];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v17);
    }
  }

  v22 = [(EMMessage *)self->_message senderList];
  v23 = [v22 ef_map:&__block_literal_global_33];
  [v6 setAddressListForSender:v23];

  v24 = [(EMMessage *)self->_message toList];
  v25 = [v24 ef_map:&__block_literal_global_33];
  [v6 setAddressListForTo:v25];

  v26 = [(EMMessage *)self->_message ccList];
  v27 = [v26 ef_map:&__block_literal_global_33];
  [v6 setAddressListForCc:v27];

  v28 = [(EMMessage *)self->_message bccList];
  v29 = [v28 ef_map:&__block_literal_global_33];
  [v6 setAddressListForBcc:v29];

  v30 = [v38 replyToList];
  [v6 setAddressListForReplyTo:v30];

  v31 = [(EMMessage *)self->_message date];
  v32 = [v31 ec_descriptionForMimeHeaders];
  [v6 setHeader:v32 forKey:*MEMORY[0x1E699B0D8]];

  v33 = [(EMMessage *)self->_message documentID];
  v34 = [v33 UUIDString];

  if (v34)
  {
    [v6 setHeader:v34 forKey:*MEMORY[0x1E699B1C0]];
  }

  v35 = [v6 encodedHeaders];

  return v35;
}

id __61__MFEMMessageStore_headerDataForMessage_downloadIfNecessary___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 stringValue];

  return v2;
}

- (id)bodyForMessage:(id)a3 fetchIfNotAvailable:(BOOL)a4 updateFlags:(BOOL)a5
{
  v5 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v26 = objc_alloc_init(MEMORY[0x1E69AD710]);
  v31 = objc_alloc_init(MEMORY[0x1E69B1630]);
  [v26 setMessage:v24];
  [v26 setTopLevelPart:v31];
  [v31 setMimeBody:v26];
  v27 = [(MFEMMessageStore *)self _requestMessageContentRepresentationFetchIfNotAvailable:v5];
  v25 = [(MFEMMessageStore *)self mimeBoundary];
  [v31 setType:@"multipart"];
  [v31 setSubtype:@"related"];
  [v31 setBodyParameter:v25 forKey:@"boundary"];
  v28 = objc_alloc_init(MEMORY[0x1E69B1630]);
  [v28 setType:@"text"];
  [v28 setSubtype:@"html"];
  v7 = [(MFEMMessageStore *)self bodyHTMLData];
  [v28 setRange:{0, objc_msgSend(v7, "length")}];

  [v31 addSubpart:v28];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [v27 relatedContentItems];
  v30 = self;
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
        v13 = [v11 type];
        v14 = [v13 preferredMIMEType];

        if (!v14 || (v15 = [v14 rangeOfString:@"/"], v15 == 0x7FFFFFFFFFFFFFFFLL) || objc_msgSend(v14, "length") <= (v15 + 1))
        {
          v17 = @"octet-stream";
          v16 = @"application";
        }

        else
        {
          v16 = [v14 substringToIndex:v15];
          v17 = [v14 substringFromIndex:v15 + 1];
        }

        [v12 setType:{v16, v24}];
        [v12 setSubtype:v17];
        v18 = [v11 contentID];
        [v12 setContentID:v18];

        [v12 setDisposition:@"attachment"];
        v19 = [v11 displayName];
        [v12 setDispositionParameter:v19 forKey:@"filename"];

        [v12 setRange:{0, objc_msgSend(v11, "dataTransferByteCount")}];
        [v12 setContentTransferEncoding:@"binary"];
        [v31 addSubpart:v12];
        v20 = [(MFEMMessageStore *)v30 contentIDsToContentItems];
        v21 = [v11 contentID];
        [v20 setObject:v11 forKeyedSubscript:v21];
      }

      v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }

  v22 = [v27 securityInformation];
  [v26 setIsEncrypted:{objc_msgSend(v22, "isEncrypted")}];

  return v26;
}

- (id)dataForMimePart:(id)a3 inRange:(_NSRange)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6 didDownload:(BOOL *)a7
{
  v7 = a6;
  v48 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if ([v10 isAttachment])
  {
    if ((v7 & ~[(MFEMMessageStore *)self skipAttachmentDownload]) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v10 contentID];
    v13 = [(MFEMMessageStore *)self contentIDsToContentItems];
    v14 = [v13 objectForKeyedSubscript:v12];

    v15 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 ef_publicDescription];
      v17 = [v14 mailDropMetadata];
      *buf = 138544130;
      v41 = v16;
      v42 = 1024;
      v43 = v7;
      v44 = 1024;
      v45 = v17 != 0;
      v46 = 2048;
      v47 = v11;
      _os_log_impl(&dword_1BE819000, v15, OS_LOG_TYPE_DEFAULT, "Attempting to request content representation for contentItem: %{public}@, download: %{BOOL}d, isMaildrop: %{BOOL}d, networkUsage: %ld", buf, 0x22u);
    }

    if (v14 && ([v14 mailDropMetadata], v18 = objc_claimAutoreleasedReturnValue(), v19 = v18 == 0, v18, v19))
    {
      os_unfair_lock_lock(&self->_lock);
      v23 = [(MFEMMessageStore *)self contentIDsToRepresentations];
      v24 = [v23 objectForKeyedSubscript:v12];

      if (!v24)
      {
        v25 = objc_alloc(MEMORY[0x1E699AC68]);
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __87__MFEMMessageStore_dataForMimePart_inRange_isComplete_downloadIfNecessary_didDownload___block_invoke;
        v39[3] = &__block_descriptor_40_e42_v16__0___EMContentRequestOptionsBuilder__8l;
        v39[4] = v11;
        v26 = [v25 initWithBuilder:v39];
        v27 = [MEMORY[0x1E699B868] promise];
        v28 = [v27 completionHandlerAdapter];
        v29 = [v14 requestRepresentationWithOptions:v26 completionHandler:v28];

        v24 = [v27 future];
        v30 = [(MFEMMessageStore *)self contentIDsToRepresentations];
        [v30 setObject:v24 forKeyedSubscript:v12];
      }

      os_unfair_lock_unlock(&self->_lock);
      v38 = 0;
      v31 = [v24 result:&v38];
      v32 = v38;
      if (v31)
      {
        v33 = [v31 hasMoreContent];
        v34 = MEMORY[0x1E695DEF0];
        v35 = [v31 contentURL];
        v20 = [v34 dataWithContentsOfURL:v35 options:8 error:0];
        v21 = v33 ^ 1;
      }

      else
      {
        v35 = EMLogCategoryMessageLoading();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = [v32 ef_publicDescription];
          [MFEMMessageStore dataForMimePart:v36 inRange:buf isComplete:v35 downloadIfNecessary:? didDownload:?];
        }

        v20 = 0;
        v21 = 1;
      }
    }

    else
    {
      v20 = 0;
      v21 = 1;
    }

    if (a5)
    {
      *a5 = v21;
    }
  }

  else
  {
    if (a5)
    {
      v22 = [(MFEMMessageStore *)self bodyRepresentation];
      *a5 = [v22 hasMoreContent] ^ 1;
    }

    v20 = [(MFEMMessageStore *)self bodyHTMLData];
  }

  return v20;
}

void __87__MFEMMessageStore_dataForMimePart_inRange_isComplete_downloadIfNecessary_didDownload___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setRequestedRepresentation:*MEMORY[0x1E699A710]];
  [v4 setNetworkUsage:*(a1 + 32)];
  v3 = +[MFEMMessageStore headersForDraftRestoration];
  [v4 setRequestedHeaderKeys:v3];
}

- (void)contentObjectID:(id)a3 generateHTMLSnippetsForRelatedContentItems:(id)a4 completionHandler:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v7;
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
        v16 = [v14 contentID];
        [v9 setObject:v15 forKeyedSubscript:v16];
      }

      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v8[2](v8, v9, 0);
}

- (id)_markupStringForDisplayForContentItem:(id)a3
{
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 contentID];
  if ([v4 exchangeEventUID] <= 0)
  {
    if (([v4 isAvailableLocally] & 1) != 0 || !-[MFEMMessageStore skipAttachmentDownload](self, "skipAttachmentDownload"))
    {
      if ([(MFEMMessageStore *)self _isDisplayableImageContentItem:v4])
      {
        v33[0] = @"src";
        v11 = MFCreateURLForContentID();
        v33[1] = @"id";
        v34[0] = v11;
        v34[1] = v5;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

        v6 = [MEMORY[0x1E699B7D0] htmlSnippetWithTag:@"img" includeTrailingTag:0 attributes:v12];
      }

      else
      {
        v12 = [v4 displayName];
        v13 = [MEMORY[0x1E696AAE8] mainBundle];
        v14 = [v13 localizedStringForKey:@"UNAVAILABLE" value:&stru_1F3CF3758 table:@"Main"];

        v15 = MFCreateURLForContentID();
        v16 = v15;
        if (v12 && v14 && v5 && v15)
        {
          v31[0] = @"title";
          v31[1] = @"subtitle";
          v32[0] = v12;
          v32[1] = v14;
          v31[2] = @"id";
          v31[3] = @"src";
          v32[2] = v5;
          v32[3] = v15;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:4];
          v6 = [MEMORY[0x1E699B7D0] htmlSnippetWithTag:@"attachment" includeTrailingTag:1 attributes:v17];
        }

        else
        {
          v17 = EMLogCategoryMessageLoading();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            v19 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v12];
            v20 = [v4 ef_publicDescription];
            *buf = 138544386;
            v22 = v19;
            v23 = 2114;
            v24 = v14;
            v25 = 2114;
            v26 = v5;
            v27 = 2114;
            v28 = v16;
            v29 = 2114;
            v30 = v20;
            _os_log_fault_impl(&dword_1BE819000, v17, OS_LOG_TYPE_FAULT, "Error creating markup string: title: %{public}@, subtitle: %{public}@, id: %{public}@, URL: %{public}@, contentItem: %{public}@", buf, 0x34u);
          }

          v6 = @"<span></span>";
        }
      }
    }

    else
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [v4 displayName];
      v9 = [v7 stringWithFormat:@"<%@>", v8];
      v10 = [v9 ef_stringByEscapingForXML];
      v6 = [v7 stringWithFormat:@"<DIV>%@</DIV>", v10];
    }
  }

  else
  {
    v6 = @"<span></span>";
  }

  return v6;
}

- (BOOL)_isDisplayableImageContentItem:(id)a3
{
  v3 = [a3 type];
  if ([v3 conformsToType:*MEMORY[0x1E6982E58]] & 1) != 0 || (objc_msgSend(v3, "conformsToType:", *MEMORY[0x1E6982F28]) & 1) != 0 || (objc_msgSend(v3, "conformsToType:", *MEMORY[0x1E6982DE8]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 conformsToType:*MEMORY[0x1E6982E30]];
  }

  return v4;
}

- (MailAccount)account
{
  v2 = [(MFEMMessageStore *)self legacyMessage];
  v3 = [v2 account];

  return v3;
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