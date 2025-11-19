@interface BCMessage
+ (id)defaultBubbleTitleFor:(id)a3;
- (BCMessage)initWithData:(id)a3 url:(id)a4 messageGUID:(id)a5 isFromMe:(BOOL)a6;
- (BOOL)isVersionSupported;
- (NSData)data;
- (NSDictionary)dictionaryValue;
- (NSString)rootKey;
- (NSURL)url;
- (UIImage)image;
- (id)encodedStringForDictionary:(uint64_t)a1;
- (id)initFromOriginalMessage:(id)a3 rootKey:(id)a4 rootObject:(id)a5 receivedMessage:(id)a6 replyMessage:(id)a7;
- (id)makeRootObjectWithMessageData:(id)a3 dictionary:(id)a4 imageDictionary:(id)a5 version:(int64_t)a6;
- (int64_t)style;
- (int64_t)type;
- (uint64_t)isAnyUnknownRootKey;
- (void)updateTitles;
@end

@implementation BCMessage

- (BCMessage)initWithData:(id)a3 url:(id)a4 messageGUID:(id)a5 isFromMe:(BOOL)a6
{
  v6 = a6;
  v81 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = LogCategory_Daemon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v50 = [v10 description];
    v51 = [v11 description];
    *buf = 138412802;
    v76 = v50;
    v77 = 2112;
    v78 = v51;
    v79 = 1024;
    v80 = v6;
    _os_log_debug_impl(&dword_236EA0000, v13, OS_LOG_TYPE_DEBUG, "BCMessage: initWithData: %@ url: %@ isFromMe: %d", buf, 0x1Cu);
  }

  v74.receiver = self;
  v74.super_class = BCMessage;
  v14 = [(BCMessage *)&v74 init];
  if (!v14)
  {
    goto LABEL_35;
  }

  v15 = [[BCMessageData alloc] initWithUrl:v11 data:v10];
  objc_storeStrong(&v14->_messageData, v15);
  v16 = [(BCMessageData *)v15 combinedDictionary];

  if (!v16)
  {
    v47 = LogCategory_Daemon();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_236EA0000, v47, OS_LOG_TYPE_ERROR, "BCMessage: Error intializing, missing data", buf, 2u);
    }

    goto LABEL_22;
  }

  v73 = v10;
  v17 = v12;
  v18 = [(BCMessageData *)v15 combinedDictionary];
  v19 = [v18 objectForKeyedSubscript:@"version"];
  v20 = [(BCMessageData *)v15 combinedDictionary];
  v21 = v20;
  if (v19)
  {
    v22 = @"version";
  }

  else
  {
    v22 = @"mspVersion";
  }

  v23 = [v20 objectForKeyedSubscript:v22];

  v24 = v23;
  if (!v23)
  {
    v48 = LogCategory_Daemon();
    v12 = v17;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_236EA0000, v48, OS_LOG_TYPE_ERROR, "BCMessage: Cannot initialize with nil version", buf, 2u);
    }

    v10 = v73;
    goto LABEL_21;
  }

  v25 = [v23 integerValue];
  v14->_version = v25;
  if (v25 <= 0)
  {
    v48 = LogCategory_Daemon();
    v12 = v17;
    v10 = v73;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      version = v14->_version;
      *buf = 134217984;
      v76 = version;
      _os_log_error_impl(&dword_236EA0000, v48, OS_LOG_TYPE_ERROR, "BCMessage: Unexpected payload version %ld", buf, 0xCu);
    }

LABEL_21:

LABEL_22:
    v49 = 0;
    goto LABEL_36;
  }

  v26 = [(BCMessageData *)v15 combinedDictionary];
  v27 = [v26 objectForKeyedSubscript:@"requestIdentifier"];

  v12 = v17;
  obj = v27;
  if (v27)
  {
    v70 = v24;
    v28 = [BCImageStore alloc];
    v29 = [(BCMessageData *)v15 imagesArray];
    v30 = [(BCImageStore *)v28 initWithArray:v29];

    v31 = [(BCMessageData *)v15 combinedDictionary];
    v32 = [(BCMessage *)v14 rootKey];
    v33 = [v31 objectForKey:v32];

    v34 = [(BCImageStore *)v30 dictionary];
    v14->_isFromMe = v6;
    v69 = v30;
    objc_storeStrong(&v14->_imageStore, v30);
    if ([(BCMessage *)v14 isVersionSupported])
    {
      v35 = [(BCMessage *)v14 makeRootObjectWithMessageData:v15 dictionary:v33 imageDictionary:v34 version:v14->_version];
      v36 = v34;
      rootObject = v14->_rootObject;
      v14->_rootObject = v35;
      v67 = v35;

      v38 = [BCMessageInfo alloc];
      v39 = [(BCMessageData *)v15 replyMessageDictionary];
      v40 = [(BCMessageInfo *)v38 initWithDictionary:v39 imageDictionary:v36];
      replyMessage = v14->_replyMessage;
      v14->_replyMessage = v40;

      v42 = [BCMessageInfo alloc];
      v43 = [(BCMessageData *)v15 receivedMessageDictionary];
      v44 = v42;
      v34 = v36;
      v45 = [(BCMessageInfo *)v44 initWithDictionary:v43 imageDictionary:v36];
      receivedMessage = v14->_receivedMessage;
      v14->_receivedMessage = v45;
    }

    else
    {
      v43 = LogCategory_Daemon();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v53 = [(BCMessage *)v14 type];
        v54 = v14->_version;
        *buf = 134218240;
        v76 = v53;
        v77 = 2048;
        v78 = v54;
        _os_log_impl(&dword_236EA0000, v43, OS_LOG_TYPE_DEFAULT, "BCMessage: Cannot create rootObject for BCMessage of type %ld since version %ld of payload is not supported", buf, 0x16u);
      }
    }

    v55 = v70;

    objc_storeStrong(&v14->_requestIdentifier, obj);
    v56 = LogCategory_Daemon();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      [(BCMessageData *)v15 combinedDictionary];
      v65 = v64 = v34;
      *buf = 138412290;
      v76 = v65;
      _os_log_debug_impl(&dword_236EA0000, v56, OS_LOG_TYPE_DEBUG, "BCMessage: messageData: %@ ", buf, 0xCu);

      v34 = v64;
    }

    v57 = LogCategory_Daemon();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v68 = [(BCMessageData *)v15 combinedDictionary];
      [v68 objectForKeyedSubscript:@"version"];
      v72 = v33;
      v59 = v58 = v34;
      v60 = [(BCMessageData *)v15 combinedDictionary];
      v61 = [v60 objectForKeyedSubscript:@"mspVersion"];
      *buf = 138412546;
      v76 = v59;
      v77 = 2112;
      v78 = v61;
      _os_log_impl(&dword_236EA0000, v57, OS_LOG_TYPE_DEFAULT, "BCMessage: version: %@ mspVersion: %@", buf, 0x16u);

      v55 = v70;
      v34 = v58;
      v33 = v72;
    }

    if (v12)
    {
      objc_storeStrong(&v14->_messageGUID, a5);
      [(BCMessage *)v14 updateTitles];
    }

    v10 = v73;
LABEL_35:
    v49 = v14;
    goto LABEL_36;
  }

  v52 = LogCategory_Daemon();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_236EA0000, v52, OS_LOG_TYPE_ERROR, "BCMessage: Cannot initialize with nil request identifier", buf, 2u);
  }

  v49 = 0;
  v10 = v73;
LABEL_36:

  v62 = *MEMORY[0x277D85DE8];
  return v49;
}

- (void)updateTitles
{
  if ([a1 isFromMe])
  {
    [a1 replyMessage];
  }

  else
  {
    [a1 receivedMessage];
  }
  v25 = ;
  v2 = [v25 title];
  [a1 setTitle:v2];

  v3 = [v25 alternateTitle];

  if (v3)
  {
    v4 = [v25 alternateTitle];
    [v25 setTitle:v4];
  }

  v5 = [a1 title];
  if (!v5 || (v6 = v5, [a1 rootKey], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"error"), v7, v6, v8))
  {
    v9 = [BCMessage defaultBubbleTitleFor:a1];
    [v25 setTitle:v9];
  }

  v10 = [v25 subtitle];
  if (v10)
  {
    v11 = v10;
    v12 = [a1 rootKey];
    v13 = [v12 isEqualToString:@"error"];

    if ((v13 & 1) == 0)
    {
      v14 = objc_alloc(MEMORY[0x277CCA898]);
      v15 = [v25 subtitle];
      v16 = [v14 initWithString:v15];
      [a1 setSubtitle:v16];
    }
  }

  v17 = [a1 rootObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [[BCInternalAuthenticationManager alloc] initWithAuthenticationRequest:v17];
    v19 = [(BCInternalAuthenticationManager *)v18 title];
    [a1 setTitle:v19];

    v20 = objc_alloc(MEMORY[0x277CCA898]);
    v21 = [(BCInternalAuthenticationManager *)v18 subtitle];
    v22 = [v20 initWithString:v21];
    [a1 setSubtitle:v22];
  }

  v23 = [a1 title];
  [a1 setSummaryText:v23];

  v24 = [a1 title];
  [a1 setAccessibilityLabel:v24];
}

- (id)initFromOriginalMessage:(id)a3 rootKey:(id)a4 rootObject:(id)a5 receivedMessage:(id)a6 replyMessage:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = BCMessage;
  v17 = [(BCMessage *)&v25 init];
  if (v17)
  {
    v17->_version = [v12 version];
    v18 = [v12 requestIdentifier];
    requestIdentifier = v17->_requestIdentifier;
    v17->_requestIdentifier = v18;

    objc_storeStrong(&v17->_rootObject, a5);
    objc_storeStrong(&v17->_internalRootKey, a4);
    v17->_isFromMe = 1;
    objc_storeStrong(&v17->_replyMessage, a7);
    objc_storeStrong(&v17->_receivedMessage, a6);
    v20 = [v12 imageStore];
    imageStore = v17->_imageStore;
    v17->_imageStore = v20;

    v22 = [v12 messageGUID];
    messageGUID = v17->_messageGUID;
    v17->_messageGUID = v22;

    [(BCMessage *)v17 updateTitles];
  }

  return v17;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  v4 = [(BCMessage *)self rootObject];
  v5 = [v4 dictionaryValue];
  v6 = [(BCMessage *)self rootKey];
  [v3 setObject:v5 forKey:v6];

  v7 = [(BCMessage *)self requestIdentifier];
  [v3 setObject:v7 forKey:@"requestIdentifier"];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[BCMessage version](self, "version")];
  [v3 setObject:v8 forKey:@"version"];

  v9 = [(BCMessage *)self imageStore];
  v10 = [v9 rawArray];

  if (v10)
  {
    v11 = [(BCMessage *)self imageStore];
    v12 = [v11 rawArray];
    [v3 setObject:v12 forKey:@"images"];
  }

  v13 = [(BCMessage *)self receivedMessage];

  if (v13)
  {
    v14 = [(BCMessage *)self receivedMessage];
    v15 = [v14 dictionaryValue];
    [v3 setObject:v15 forKey:@"receivedMessage"];
  }

  v16 = [(BCMessage *)self replyMessage];

  if (v16)
  {
    v17 = [(BCMessage *)self replyMessage];
    v18 = [v17 dictionaryValue];
    [v3 setObject:v18 forKey:@"replyMessage"];
  }

  v19 = [v3 copy];

  return v19;
}

- (NSURL)url
{
  v3 = [(BCMessage *)self receivedMessage];
  v4 = [v3 dictionaryValue];
  v5 = [(BCMessage *)self encodedStringForDictionary:v4];

  v6 = [(BCMessage *)self replyMessage];
  v7 = [v6 dictionaryValue];
  v8 = [(BCMessage *)self encodedStringForDictionary:v7];

  v9 = [(BCMessage *)self dictionaryValue];
  v10 = [(BCMessage *)self encodedStringForDictionary:v9];

  v11 = objc_opt_new();
  v12 = objc_opt_new();
  if (v5)
  {
    v13 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"receivedMessage" value:v5];
    [v12 addObject:v13];
  }

  if (v8)
  {
    v14 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"replyMessage" value:v8];
    [v12 addObject:v14];
  }

  if (v10)
  {
    v15 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"images" value:v10];
    [v12 addObject:v15];
  }

  [v11 setQueryItems:v12];
  v16 = [v11 URL];

  return v16;
}

- (id)encodedStringForDictionary:(uint64_t)a1
{
  v2 = 0;
  v12 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    v9 = 0;
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a2 options:1 error:&v9];
    v4 = v9;
    if (v4)
    {
      v5 = LogCategory_Daemon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v4;
        _os_log_error_impl(&dword_236EA0000, v5, OS_LOG_TYPE_ERROR, "BCMessage: error encoding dictionary %@", buf, 0xCu);
      }

      v2 = 0;
    }

    else
    {
      v6 = [v3 base64EncodedDataWithOptions:0];

      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
      v2 = [(NSString *)v5 normalizedBase64Encoded];
      v3 = v6;
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v2;
}

- (NSData)data
{
  v2 = MEMORY[0x277CCAAA0];
  v3 = [(BCMessage *)self dictionaryValue];
  v4 = [v2 dataWithJSONObject:v3 options:0 error:0];

  return v4;
}

- (int64_t)style
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(BCMessage *)self isFromMe])
  {
    [(BCMessage *)self replyMessage];
  }

  else
  {
    [(BCMessage *)self receivedMessage];
  }
  v3 = ;
  v4 = [v3 style];

  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_236EA0000, v5, OS_LOG_TYPE_DEFAULT, "BCMessage: style %@", &v9, 0xCu);
  }

  if ([v4 isEqualToString:@"small"])
  {
    v6 = 1;
  }

  else if ([v4 isEqualToString:@"large"])
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int64_t)type
{
  v3 = [(BCMessage *)self rootKey];
  v4 = [v3 isEqualToString:@"authenticate"];

  if (v4)
  {
    return 5;
  }

  v6 = [(BCMessage *)self rootKey];
  v7 = [v6 isEqualToString:@"internalAuthenticate"];

  if (v7)
  {
    return 6;
  }

  v8 = [(BCMessage *)self rootKey];
  v9 = [v8 isEqualToString:@"content"];

  if (v9)
  {
    return 3;
  }

  v10 = [(BCMessage *)self rootKey];
  v11 = [v10 isEqualToString:@"listPicker"];

  if (v11)
  {
    return 1;
  }

  v12 = [(BCMessage *)self rootKey];
  v13 = [v12 isEqualToString:@"quick-reply"];

  if (v13)
  {
    return 8;
  }

  v14 = [(BCMessage *)self rootKey];
  v15 = [v14 isEqualToString:@"event"];

  if (v15)
  {
    return 2;
  }

  v16 = [(BCMessage *)self rootKey];
  v17 = [v16 isEqualToString:@"payment"];

  if (v17)
  {
    return 0;
  }

  v18 = [(BCMessage *)self rootKey];
  v19 = [v18 isEqualToString:@"dynamic"];

  if (v19)
  {
    return 7;
  }

  v20 = [(BCMessage *)self rootKey];
  v21 = [v20 isEqualToString:@"unknown"];

  if (v21)
  {
    return 9;
  }

  else
  {
    return 4;
  }
}

- (UIImage)image
{
  if ([(BCMessage *)self isFromMe])
  {
    [(BCMessage *)self replyMessage];
  }

  else
  {
    [(BCMessage *)self receivedMessage];
  }
  v3 = ;
  v4 = [v3 image];

  return v4;
}

- (NSString)rootKey
{
  if (self)
  {
    internalRootKey = self->_internalRootKey;
    if (internalRootKey)
    {
      v4 = internalRootKey;
      goto LABEL_19;
    }
  }

  v5 = [(BCMessage *)self messageData];
  v6 = [v5 combinedDictionary];
  v4 = @"internalAuthenticate";
  v7 = [v6 objectForKey:@"internalAuthenticate"];

  if (!v7)
  {
    v8 = [(BCMessage *)self messageData];
    v9 = [v8 combinedDictionary];
    v4 = @"authenticate";
    v10 = [v9 objectForKey:@"authenticate"];

    if (!v10)
    {
      v11 = [(BCMessage *)self messageData];
      v12 = [v11 combinedDictionary];
      v4 = @"listPicker";
      v13 = [v12 objectForKey:@"listPicker"];

      if (!v13)
      {
        v14 = [(BCMessage *)self messageData];
        v15 = [v14 combinedDictionary];
        v4 = @"quick-reply";
        v16 = [v15 objectForKey:@"quick-reply"];

        if (!v16)
        {
          v17 = [(BCMessage *)self messageData];
          v18 = [v17 combinedDictionary];
          v4 = @"event";
          v19 = [v18 objectForKey:@"event"];

          if (!v19)
          {
            v20 = [(BCMessage *)self messageData];
            v21 = [v20 combinedDictionary];
            v4 = @"content";
            v22 = [v21 objectForKey:@"content"];

            if (!v22)
            {
              v23 = [(BCMessage *)self messageData];
              v24 = [v23 combinedDictionary];
              v4 = @"payment";
              v25 = [v24 objectForKey:@"payment"];

              if (!v25)
              {
                v26 = [(BCMessage *)self messageData];
                v27 = [v26 combinedDictionary];
                v4 = @"dynamic";
                v28 = [v27 objectForKey:@"dynamic"];
                if (v28)
                {
                  v29 = v28;
                  v30 = [(BCMessage *)self messageData];
                  v31 = [v30 combinedDictionary];
                  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@", @"dynamic", @"data", @"encryptionKey"];
                  v33 = [v31 valueForKeyPath:v32];
                  v34 = [v33 length];

                  if (!v34)
                  {
                    goto LABEL_19;
                  }
                }

                else
                {
                }

                v35 = [(BCMessage *)self messageData];
                v36 = [v35 combinedDictionary];
                v4 = @"notification";
                v37 = [v36 objectForKey:@"notification"];

                if (!v37)
                {
                  if ([(BCMessage *)self isAnyUnknownRootKey])
                  {
                    v4 = @"unknown";
                  }

                  else
                  {
                    v4 = @"error";
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_19:

  return v4;
}

- (uint64_t)isAnyUnknownRootKey
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (qword_27DE8BA78 != -1)
    {
      dispatch_once(&qword_27DE8BA78, &__block_literal_global);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = [a1 messageData];
    v3 = [v2 combinedDictionary];
    v4 = [v3 allKeys];

    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v4);
          }

          if (![_MergedGlobals_4 containsObject:*(*(&v10 + 1) + 8 * i)])
          {
            v5 = 1;
            goto LABEL_14;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)makeRootObjectWithMessageData:(id)a3 dictionary:(id)a4 imageDictionary:(id)a5 version:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [v9 combinedDictionary];
  v12 = [v11 objectForKey:@"internalAuthenticate"];
  if (v12)
  {
    v13 = v12;
    v14 = [(BCMessage *)self isFromMe];

    if (v14)
    {
      v15 = BCInternalAuthenticationResponse;
LABEL_7:
      v18 = [[v15 alloc] initWithDictionary:v10];
LABEL_8:
      v19 = v18;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v16 = [v9 combinedDictionary];
  v17 = [v16 objectForKey:@"internalAuthenticate"];

  if (v17)
  {
    v15 = BCInternalAuthenticationRequest;
    goto LABEL_7;
  }

  v21 = [v9 combinedDictionary];
  v22 = [v21 objectForKey:@"authenticate"];
  if (v22)
  {
    v23 = v22;
    v24 = [(BCMessage *)self isFromMe];

    if (v24)
    {
      v18 = [BCOAuth2ResponseFactory makeResponseObjectWithDictionary:v10 version:a6];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v25 = [v9 combinedDictionary];
  v26 = [v25 objectForKey:@"authenticate"];

  if (v26)
  {
    v18 = [BCOAuth2RequestFactory makeRequestObjectWithDictionary:v10 version:a6];
    goto LABEL_8;
  }

  v19 = 0;
LABEL_9:

  return v19;
}

void __32__BCMessage_isAnyUnknownRootKey__block_invoke()
{
  v6[16] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB58]);
  v6[0] = @"images";
  v6[1] = @"mspVersion";
  v6[2] = @"data";
  v6[3] = @"receivedMessage";
  v6[4] = @"replyMessage";
  v6[5] = @"requestIdentifier";
  v6[6] = @"version";
  v6[7] = @"authenticate";
  v6[8] = @"content";
  v6[9] = @"event";
  v6[10] = @"internalAuthenticate";
  v6[11] = @"dynamic";
  v6[12] = @"listPicker";
  v6[13] = @"payment";
  v6[14] = @"quick-reply";
  v6[15] = @"notification";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:16];
  v2 = [v0 initWithArray:v1];

  v3 = [v2 copy];
  v4 = _MergedGlobals_4;
  _MergedGlobals_4 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isVersionSupported
{
  v3 = [(BCMessage *)self type];
  if (v3 > 0xA || ((0x5FFu >> v3) & 1) == 0)
  {
    return 0;
  }

  v4 = qword_236EB4E88[v3];
  return [(BCMessage *)self version]<= v4;
}

+ (id)defaultBubbleTitleFor:(id)a3
{
  v3 = a3;
  v4 = +[BCShared classBundle];
  v5 = [v4 localizedStringForKey:@"DEFAULT_ERROR_TITLE" value:&stru_2849DDCD8 table:0];

  if (v3)
  {
    v6 = [v3 rootKey];
    if ([v6 isEqualToString:@"unknown"])
    {

LABEL_8:
      v10 = @"ERROR_UNKNOWN_ROOT_KEY_iOS";
      goto LABEL_9;
    }

    v7 = [v3 isVersionSupported];

    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }

    v8 = [v3 rootKey];
    if ([v8 isEqualToString:@"listPicker"])
    {
      v9 = [v3 isFromMe];

      if (v9)
      {
        v10 = @"DEFAULT_LIST_PICKER_SELECTED_TITLE";
        goto LABEL_9;
      }
    }

    else
    {
    }

    v15 = [v3 rootKey];
    v16 = [v15 isEqualToString:@"listPicker"];

    if (v16)
    {
      v10 = @"DEFAULT_LIST_PICKER_TITLE";
    }

    else
    {
      v17 = [v3 rootKey];
      if ([v17 isEqualToString:@"event"])
      {
        v18 = [v3 isFromMe];

        if (v18)
        {
          v10 = @"DEFAULT_TIME_PICKER_SELECTED_TITLE";
          goto LABEL_9;
        }
      }

      else
      {
      }

      v19 = [v3 rootKey];
      v20 = [v19 isEqualToString:@"event"];

      if (v20)
      {
        v10 = @"DEFAULT_TIME_PICKER_TITLE";
      }

      else
      {
        v21 = [v3 rootKey];
        v22 = [v21 isEqualToString:@"payment"];

        if (v22)
        {
          v10 = @"ERROR_APPLE_PAY_TITLE";
        }

        else
        {
          v23 = [v3 rootKey];
          v24 = [v23 isEqualToString:@"authenticate"];

          if (v24 & 1) != 0 || ([v3 rootKey], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", @"internalAuthenticate"), v25, (v26))
          {
            v10 = @"DEFAULT_ERROR_TITLE";
          }

          else
          {
            v27 = [v3 rootKey];
            if ([v27 isEqualToString:@"dynamic"])
            {
              v28 = [v3 isFromMe];

              if (v28)
              {
                v10 = @"DEFAULT_JITAPPKIT_SELECTED_TITLE";
                goto LABEL_9;
              }
            }

            else
            {
            }

            v29 = [v3 rootKey];
            v30 = [v29 isEqualToString:@"dynamic"];

            if ((v30 & 1) == 0)
            {
              v31 = [v3 rootKey];
              v32 = [v31 isEqualToString:@"notification"];

              if ((v32 & 1) == 0)
              {
                goto LABEL_11;
              }

              v12 = @"Notification";
              goto LABEL_10;
            }

            v10 = @"DEFAULT_JITAPPKIT_TITLE";
          }
        }
      }
    }

LABEL_9:
    v11 = +[BCShared classBundle];
    v12 = [v11 localizedStringForKey:v10 value:&stru_2849DDCD8 table:0];

    v5 = v11;
LABEL_10:

    v5 = v12;
  }

LABEL_11:
  v13 = v5;

  return v5;
}

@end