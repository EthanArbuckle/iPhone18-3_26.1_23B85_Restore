@interface BCMessage
+ (id)defaultBubbleTitleFor:(id)for;
- (BCMessage)initWithData:(id)data url:(id)url messageGUID:(id)d isFromMe:(BOOL)me;
- (BOOL)isVersionSupported;
- (NSData)data;
- (NSDictionary)dictionaryValue;
- (NSString)rootKey;
- (NSURL)url;
- (UIImage)image;
- (id)encodedStringForDictionary:(uint64_t)dictionary;
- (id)initFromOriginalMessage:(id)message rootKey:(id)key rootObject:(id)object receivedMessage:(id)receivedMessage replyMessage:(id)replyMessage;
- (id)makeRootObjectWithMessageData:(id)data dictionary:(id)dictionary imageDictionary:(id)imageDictionary version:(int64_t)version;
- (int64_t)style;
- (int64_t)type;
- (uint64_t)isAnyUnknownRootKey;
- (void)updateTitles;
@end

@implementation BCMessage

- (BCMessage)initWithData:(id)data url:(id)url messageGUID:(id)d isFromMe:(BOOL)me
{
  meCopy = me;
  v81 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  urlCopy = url;
  dCopy = d;
  v13 = LogCategory_Daemon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v50 = [dataCopy description];
    v51 = [urlCopy description];
    *buf = 138412802;
    v76 = v50;
    v77 = 2112;
    v78 = v51;
    v79 = 1024;
    v80 = meCopy;
    _os_log_debug_impl(&dword_236EA0000, v13, OS_LOG_TYPE_DEBUG, "BCMessage: initWithData: %@ url: %@ isFromMe: %d", buf, 0x1Cu);
  }

  v74.receiver = self;
  v74.super_class = BCMessage;
  v14 = [(BCMessage *)&v74 init];
  if (!v14)
  {
    goto LABEL_35;
  }

  v15 = [[BCMessageData alloc] initWithUrl:urlCopy data:dataCopy];
  objc_storeStrong(&v14->_messageData, v15);
  combinedDictionary = [(BCMessageData *)v15 combinedDictionary];

  if (!combinedDictionary)
  {
    v47 = LogCategory_Daemon();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_236EA0000, v47, OS_LOG_TYPE_ERROR, "BCMessage: Error intializing, missing data", buf, 2u);
    }

    goto LABEL_22;
  }

  v73 = dataCopy;
  v17 = dCopy;
  combinedDictionary2 = [(BCMessageData *)v15 combinedDictionary];
  v19 = [combinedDictionary2 objectForKeyedSubscript:@"version"];
  combinedDictionary3 = [(BCMessageData *)v15 combinedDictionary];
  v21 = combinedDictionary3;
  if (v19)
  {
    v22 = @"version";
  }

  else
  {
    v22 = @"mspVersion";
  }

  v23 = [combinedDictionary3 objectForKeyedSubscript:v22];

  v24 = v23;
  if (!v23)
  {
    v48 = LogCategory_Daemon();
    dCopy = v17;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_236EA0000, v48, OS_LOG_TYPE_ERROR, "BCMessage: Cannot initialize with nil version", buf, 2u);
    }

    dataCopy = v73;
    goto LABEL_21;
  }

  integerValue = [v23 integerValue];
  v14->_version = integerValue;
  if (integerValue <= 0)
  {
    v48 = LogCategory_Daemon();
    dCopy = v17;
    dataCopy = v73;
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

  combinedDictionary4 = [(BCMessageData *)v15 combinedDictionary];
  v27 = [combinedDictionary4 objectForKeyedSubscript:@"requestIdentifier"];

  dCopy = v17;
  obj = v27;
  if (v27)
  {
    v70 = v24;
    v28 = [BCImageStore alloc];
    imagesArray = [(BCMessageData *)v15 imagesArray];
    v30 = [(BCImageStore *)v28 initWithArray:imagesArray];

    combinedDictionary5 = [(BCMessageData *)v15 combinedDictionary];
    rootKey = [(BCMessage *)v14 rootKey];
    v33 = [combinedDictionary5 objectForKey:rootKey];

    dictionary = [(BCImageStore *)v30 dictionary];
    v14->_isFromMe = meCopy;
    v69 = v30;
    objc_storeStrong(&v14->_imageStore, v30);
    if ([(BCMessage *)v14 isVersionSupported])
    {
      v35 = [(BCMessage *)v14 makeRootObjectWithMessageData:v15 dictionary:v33 imageDictionary:dictionary version:v14->_version];
      v36 = dictionary;
      rootObject = v14->_rootObject;
      v14->_rootObject = v35;
      v67 = v35;

      v38 = [BCMessageInfo alloc];
      replyMessageDictionary = [(BCMessageData *)v15 replyMessageDictionary];
      v40 = [(BCMessageInfo *)v38 initWithDictionary:replyMessageDictionary imageDictionary:v36];
      replyMessage = v14->_replyMessage;
      v14->_replyMessage = v40;

      v42 = [BCMessageInfo alloc];
      receivedMessageDictionary = [(BCMessageData *)v15 receivedMessageDictionary];
      v44 = v42;
      dictionary = v36;
      v45 = [(BCMessageInfo *)v44 initWithDictionary:receivedMessageDictionary imageDictionary:v36];
      receivedMessage = v14->_receivedMessage;
      v14->_receivedMessage = v45;
    }

    else
    {
      receivedMessageDictionary = LogCategory_Daemon();
      if (os_log_type_enabled(receivedMessageDictionary, OS_LOG_TYPE_DEFAULT))
      {
        type = [(BCMessage *)v14 type];
        v54 = v14->_version;
        *buf = 134218240;
        v76 = type;
        v77 = 2048;
        v78 = v54;
        _os_log_impl(&dword_236EA0000, receivedMessageDictionary, OS_LOG_TYPE_DEFAULT, "BCMessage: Cannot create rootObject for BCMessage of type %ld since version %ld of payload is not supported", buf, 0x16u);
      }
    }

    v55 = v70;

    objc_storeStrong(&v14->_requestIdentifier, obj);
    v56 = LogCategory_Daemon();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      [(BCMessageData *)v15 combinedDictionary];
      v65 = v64 = dictionary;
      *buf = 138412290;
      v76 = v65;
      _os_log_debug_impl(&dword_236EA0000, v56, OS_LOG_TYPE_DEBUG, "BCMessage: messageData: %@ ", buf, 0xCu);

      dictionary = v64;
    }

    v57 = LogCategory_Daemon();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      combinedDictionary6 = [(BCMessageData *)v15 combinedDictionary];
      [combinedDictionary6 objectForKeyedSubscript:@"version"];
      v72 = v33;
      v59 = v58 = dictionary;
      combinedDictionary7 = [(BCMessageData *)v15 combinedDictionary];
      v61 = [combinedDictionary7 objectForKeyedSubscript:@"mspVersion"];
      *buf = 138412546;
      v76 = v59;
      v77 = 2112;
      v78 = v61;
      _os_log_impl(&dword_236EA0000, v57, OS_LOG_TYPE_DEFAULT, "BCMessage: version: %@ mspVersion: %@", buf, 0x16u);

      v55 = v70;
      dictionary = v58;
      v33 = v72;
    }

    if (dCopy)
    {
      objc_storeStrong(&v14->_messageGUID, d);
      [(BCMessage *)v14 updateTitles];
    }

    dataCopy = v73;
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
  dataCopy = v73;
LABEL_36:

  v62 = *MEMORY[0x277D85DE8];
  return v49;
}

- (void)updateTitles
{
  if ([self isFromMe])
  {
    [self replyMessage];
  }

  else
  {
    [self receivedMessage];
  }
  v25 = ;
  title = [v25 title];
  [self setTitle:title];

  alternateTitle = [v25 alternateTitle];

  if (alternateTitle)
  {
    alternateTitle2 = [v25 alternateTitle];
    [v25 setTitle:alternateTitle2];
  }

  title2 = [self title];
  if (!title2 || (v6 = title2, [self rootKey], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"error"), v7, v6, v8))
  {
    v9 = [BCMessage defaultBubbleTitleFor:self];
    [v25 setTitle:v9];
  }

  subtitle = [v25 subtitle];
  if (subtitle)
  {
    v11 = subtitle;
    rootKey = [self rootKey];
    v13 = [rootKey isEqualToString:@"error"];

    if ((v13 & 1) == 0)
    {
      v14 = objc_alloc(MEMORY[0x277CCA898]);
      subtitle2 = [v25 subtitle];
      v16 = [v14 initWithString:subtitle2];
      [self setSubtitle:v16];
    }
  }

  rootObject = [self rootObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [[BCInternalAuthenticationManager alloc] initWithAuthenticationRequest:rootObject];
    title3 = [(BCInternalAuthenticationManager *)v18 title];
    [self setTitle:title3];

    v20 = objc_alloc(MEMORY[0x277CCA898]);
    subtitle3 = [(BCInternalAuthenticationManager *)v18 subtitle];
    v22 = [v20 initWithString:subtitle3];
    [self setSubtitle:v22];
  }

  title4 = [self title];
  [self setSummaryText:title4];

  title5 = [self title];
  [self setAccessibilityLabel:title5];
}

- (id)initFromOriginalMessage:(id)message rootKey:(id)key rootObject:(id)object receivedMessage:(id)receivedMessage replyMessage:(id)replyMessage
{
  messageCopy = message;
  keyCopy = key;
  objectCopy = object;
  receivedMessageCopy = receivedMessage;
  replyMessageCopy = replyMessage;
  v25.receiver = self;
  v25.super_class = BCMessage;
  v17 = [(BCMessage *)&v25 init];
  if (v17)
  {
    v17->_version = [messageCopy version];
    requestIdentifier = [messageCopy requestIdentifier];
    requestIdentifier = v17->_requestIdentifier;
    v17->_requestIdentifier = requestIdentifier;

    objc_storeStrong(&v17->_rootObject, object);
    objc_storeStrong(&v17->_internalRootKey, key);
    v17->_isFromMe = 1;
    objc_storeStrong(&v17->_replyMessage, replyMessage);
    objc_storeStrong(&v17->_receivedMessage, receivedMessage);
    imageStore = [messageCopy imageStore];
    imageStore = v17->_imageStore;
    v17->_imageStore = imageStore;

    messageGUID = [messageCopy messageGUID];
    messageGUID = v17->_messageGUID;
    v17->_messageGUID = messageGUID;

    [(BCMessage *)v17 updateTitles];
  }

  return v17;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  rootObject = [(BCMessage *)self rootObject];
  dictionaryValue = [rootObject dictionaryValue];
  rootKey = [(BCMessage *)self rootKey];
  [v3 setObject:dictionaryValue forKey:rootKey];

  requestIdentifier = [(BCMessage *)self requestIdentifier];
  [v3 setObject:requestIdentifier forKey:@"requestIdentifier"];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[BCMessage version](self, "version")];
  [v3 setObject:v8 forKey:@"version"];

  imageStore = [(BCMessage *)self imageStore];
  rawArray = [imageStore rawArray];

  if (rawArray)
  {
    imageStore2 = [(BCMessage *)self imageStore];
    rawArray2 = [imageStore2 rawArray];
    [v3 setObject:rawArray2 forKey:@"images"];
  }

  receivedMessage = [(BCMessage *)self receivedMessage];

  if (receivedMessage)
  {
    receivedMessage2 = [(BCMessage *)self receivedMessage];
    dictionaryValue2 = [receivedMessage2 dictionaryValue];
    [v3 setObject:dictionaryValue2 forKey:@"receivedMessage"];
  }

  replyMessage = [(BCMessage *)self replyMessage];

  if (replyMessage)
  {
    replyMessage2 = [(BCMessage *)self replyMessage];
    dictionaryValue3 = [replyMessage2 dictionaryValue];
    [v3 setObject:dictionaryValue3 forKey:@"replyMessage"];
  }

  v19 = [v3 copy];

  return v19;
}

- (NSURL)url
{
  receivedMessage = [(BCMessage *)self receivedMessage];
  dictionaryValue = [receivedMessage dictionaryValue];
  v5 = [(BCMessage *)self encodedStringForDictionary:dictionaryValue];

  replyMessage = [(BCMessage *)self replyMessage];
  dictionaryValue2 = [replyMessage dictionaryValue];
  v8 = [(BCMessage *)self encodedStringForDictionary:dictionaryValue2];

  dictionaryValue3 = [(BCMessage *)self dictionaryValue];
  v10 = [(BCMessage *)self encodedStringForDictionary:dictionaryValue3];

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

- (id)encodedStringForDictionary:(uint64_t)dictionary
{
  normalizedBase64Encoded = 0;
  v12 = *MEMORY[0x277D85DE8];
  if (dictionary && a2)
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

      normalizedBase64Encoded = 0;
    }

    else
    {
      v6 = [v3 base64EncodedDataWithOptions:0];

      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
      normalizedBase64Encoded = [(NSString *)v5 normalizedBase64Encoded];
      v3 = v6;
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return normalizedBase64Encoded;
}

- (NSData)data
{
  v2 = MEMORY[0x277CCAAA0];
  dictionaryValue = [(BCMessage *)self dictionaryValue];
  v4 = [v2 dataWithJSONObject:dictionaryValue options:0 error:0];

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
  style = [v3 style];

  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = style;
    _os_log_impl(&dword_236EA0000, v5, OS_LOG_TYPE_DEFAULT, "BCMessage: style %@", &v9, 0xCu);
  }

  if ([style isEqualToString:@"small"])
  {
    v6 = 1;
  }

  else if ([style isEqualToString:@"large"])
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
  rootKey = [(BCMessage *)self rootKey];
  v4 = [rootKey isEqualToString:@"authenticate"];

  if (v4)
  {
    return 5;
  }

  rootKey2 = [(BCMessage *)self rootKey];
  v7 = [rootKey2 isEqualToString:@"internalAuthenticate"];

  if (v7)
  {
    return 6;
  }

  rootKey3 = [(BCMessage *)self rootKey];
  v9 = [rootKey3 isEqualToString:@"content"];

  if (v9)
  {
    return 3;
  }

  rootKey4 = [(BCMessage *)self rootKey];
  v11 = [rootKey4 isEqualToString:@"listPicker"];

  if (v11)
  {
    return 1;
  }

  rootKey5 = [(BCMessage *)self rootKey];
  v13 = [rootKey5 isEqualToString:@"quick-reply"];

  if (v13)
  {
    return 8;
  }

  rootKey6 = [(BCMessage *)self rootKey];
  v15 = [rootKey6 isEqualToString:@"event"];

  if (v15)
  {
    return 2;
  }

  rootKey7 = [(BCMessage *)self rootKey];
  v17 = [rootKey7 isEqualToString:@"payment"];

  if (v17)
  {
    return 0;
  }

  rootKey8 = [(BCMessage *)self rootKey];
  v19 = [rootKey8 isEqualToString:@"dynamic"];

  if (v19)
  {
    return 7;
  }

  rootKey9 = [(BCMessage *)self rootKey];
  v21 = [rootKey9 isEqualToString:@"unknown"];

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
  image = [v3 image];

  return image;
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

  messageData = [(BCMessage *)self messageData];
  combinedDictionary = [messageData combinedDictionary];
  v4 = @"internalAuthenticate";
  v7 = [combinedDictionary objectForKey:@"internalAuthenticate"];

  if (!v7)
  {
    messageData2 = [(BCMessage *)self messageData];
    combinedDictionary2 = [messageData2 combinedDictionary];
    v4 = @"authenticate";
    v10 = [combinedDictionary2 objectForKey:@"authenticate"];

    if (!v10)
    {
      messageData3 = [(BCMessage *)self messageData];
      combinedDictionary3 = [messageData3 combinedDictionary];
      v4 = @"listPicker";
      v13 = [combinedDictionary3 objectForKey:@"listPicker"];

      if (!v13)
      {
        messageData4 = [(BCMessage *)self messageData];
        combinedDictionary4 = [messageData4 combinedDictionary];
        v4 = @"quick-reply";
        v16 = [combinedDictionary4 objectForKey:@"quick-reply"];

        if (!v16)
        {
          messageData5 = [(BCMessage *)self messageData];
          combinedDictionary5 = [messageData5 combinedDictionary];
          v4 = @"event";
          v19 = [combinedDictionary5 objectForKey:@"event"];

          if (!v19)
          {
            messageData6 = [(BCMessage *)self messageData];
            combinedDictionary6 = [messageData6 combinedDictionary];
            v4 = @"content";
            v22 = [combinedDictionary6 objectForKey:@"content"];

            if (!v22)
            {
              messageData7 = [(BCMessage *)self messageData];
              combinedDictionary7 = [messageData7 combinedDictionary];
              v4 = @"payment";
              v25 = [combinedDictionary7 objectForKey:@"payment"];

              if (!v25)
              {
                messageData8 = [(BCMessage *)self messageData];
                combinedDictionary8 = [messageData8 combinedDictionary];
                v4 = @"dynamic";
                v28 = [combinedDictionary8 objectForKey:@"dynamic"];
                if (v28)
                {
                  v29 = v28;
                  messageData9 = [(BCMessage *)self messageData];
                  combinedDictionary9 = [messageData9 combinedDictionary];
                  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@", @"dynamic", @"data", @"encryptionKey"];
                  v33 = [combinedDictionary9 valueForKeyPath:v32];
                  v34 = [v33 length];

                  if (!v34)
                  {
                    goto LABEL_19;
                  }
                }

                else
                {
                }

                messageData10 = [(BCMessage *)self messageData];
                combinedDictionary10 = [messageData10 combinedDictionary];
                v4 = @"notification";
                v37 = [combinedDictionary10 objectForKey:@"notification"];

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
  if (self)
  {
    if (qword_27DE8BA78 != -1)
    {
      dispatch_once(&qword_27DE8BA78, &__block_literal_global);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    messageData = [self messageData];
    combinedDictionary = [messageData combinedDictionary];
    allKeys = [combinedDictionary allKeys];

    v5 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(allKeys);
          }

          if (![_MergedGlobals_4 containsObject:*(*(&v10 + 1) + 8 * i)])
          {
            v5 = 1;
            goto LABEL_14;
          }
        }

        v5 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)makeRootObjectWithMessageData:(id)data dictionary:(id)dictionary imageDictionary:(id)imageDictionary version:(int64_t)version
{
  dataCopy = data;
  dictionaryCopy = dictionary;
  combinedDictionary = [dataCopy combinedDictionary];
  v12 = [combinedDictionary objectForKey:@"internalAuthenticate"];
  if (v12)
  {
    v13 = v12;
    isFromMe = [(BCMessage *)self isFromMe];

    if (isFromMe)
    {
      v15 = BCInternalAuthenticationResponse;
LABEL_7:
      v18 = [[v15 alloc] initWithDictionary:dictionaryCopy];
LABEL_8:
      v19 = v18;
      goto LABEL_9;
    }
  }

  else
  {
  }

  combinedDictionary2 = [dataCopy combinedDictionary];
  v17 = [combinedDictionary2 objectForKey:@"internalAuthenticate"];

  if (v17)
  {
    v15 = BCInternalAuthenticationRequest;
    goto LABEL_7;
  }

  combinedDictionary3 = [dataCopy combinedDictionary];
  v22 = [combinedDictionary3 objectForKey:@"authenticate"];
  if (v22)
  {
    v23 = v22;
    isFromMe2 = [(BCMessage *)self isFromMe];

    if (isFromMe2)
    {
      v18 = [BCOAuth2ResponseFactory makeResponseObjectWithDictionary:dictionaryCopy version:version];
      goto LABEL_8;
    }
  }

  else
  {
  }

  combinedDictionary4 = [dataCopy combinedDictionary];
  v26 = [combinedDictionary4 objectForKey:@"authenticate"];

  if (v26)
  {
    v18 = [BCOAuth2RequestFactory makeRequestObjectWithDictionary:dictionaryCopy version:version];
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
  type = [(BCMessage *)self type];
  if (type > 0xA || ((0x5FFu >> type) & 1) == 0)
  {
    return 0;
  }

  v4 = qword_236EB4E88[type];
  return [(BCMessage *)self version]<= v4;
}

+ (id)defaultBubbleTitleFor:(id)for
{
  forCopy = for;
  v4 = +[BCShared classBundle];
  v5 = [v4 localizedStringForKey:@"DEFAULT_ERROR_TITLE" value:&stru_2849DDCD8 table:0];

  if (forCopy)
  {
    rootKey = [forCopy rootKey];
    if ([rootKey isEqualToString:@"unknown"])
    {

LABEL_8:
      v10 = @"ERROR_UNKNOWN_ROOT_KEY_iOS";
      goto LABEL_9;
    }

    isVersionSupported = [forCopy isVersionSupported];

    if ((isVersionSupported & 1) == 0)
    {
      goto LABEL_8;
    }

    rootKey2 = [forCopy rootKey];
    if ([rootKey2 isEqualToString:@"listPicker"])
    {
      isFromMe = [forCopy isFromMe];

      if (isFromMe)
      {
        v10 = @"DEFAULT_LIST_PICKER_SELECTED_TITLE";
        goto LABEL_9;
      }
    }

    else
    {
    }

    rootKey3 = [forCopy rootKey];
    v16 = [rootKey3 isEqualToString:@"listPicker"];

    if (v16)
    {
      v10 = @"DEFAULT_LIST_PICKER_TITLE";
    }

    else
    {
      rootKey4 = [forCopy rootKey];
      if ([rootKey4 isEqualToString:@"event"])
      {
        isFromMe2 = [forCopy isFromMe];

        if (isFromMe2)
        {
          v10 = @"DEFAULT_TIME_PICKER_SELECTED_TITLE";
          goto LABEL_9;
        }
      }

      else
      {
      }

      rootKey5 = [forCopy rootKey];
      v20 = [rootKey5 isEqualToString:@"event"];

      if (v20)
      {
        v10 = @"DEFAULT_TIME_PICKER_TITLE";
      }

      else
      {
        rootKey6 = [forCopy rootKey];
        v22 = [rootKey6 isEqualToString:@"payment"];

        if (v22)
        {
          v10 = @"ERROR_APPLE_PAY_TITLE";
        }

        else
        {
          rootKey7 = [forCopy rootKey];
          v24 = [rootKey7 isEqualToString:@"authenticate"];

          if (v24 & 1) != 0 || ([forCopy rootKey], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", @"internalAuthenticate"), v25, (v26))
          {
            v10 = @"DEFAULT_ERROR_TITLE";
          }

          else
          {
            rootKey8 = [forCopy rootKey];
            if ([rootKey8 isEqualToString:@"dynamic"])
            {
              isFromMe3 = [forCopy isFromMe];

              if (isFromMe3)
              {
                v10 = @"DEFAULT_JITAPPKIT_SELECTED_TITLE";
                goto LABEL_9;
              }
            }

            else
            {
            }

            rootKey9 = [forCopy rootKey];
            v30 = [rootKey9 isEqualToString:@"dynamic"];

            if ((v30 & 1) == 0)
            {
              rootKey10 = [forCopy rootKey];
              v32 = [rootKey10 isEqualToString:@"notification"];

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