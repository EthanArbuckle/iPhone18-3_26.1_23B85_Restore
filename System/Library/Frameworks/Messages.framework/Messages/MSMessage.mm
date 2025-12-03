@interface MSMessage
- (BOOL)isEqual:(id)equal;
- (MSMessage)init;
- (MSMessage)initWithCoder:(id)coder;
- (MSMessage)initWithSession:(MSSession *)session;
- (id)_payloadDataFromAppIconData:(id)data appName:(id)name adamID:(id)d allowDataPayloads:(BOOL)payloads;
- (id)_pluginPayloadWithAppIconData:(id)data appName:(id)name adamID:(id)d allowDataPayloads:(BOOL)payloads;
- (id)_sanitizedCopy;
- (id)_shallowCopy;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_mergeSanitizedDataFromMessage:(id)message;
- (void)_mergeSanitizedKeepingModifiedMessage:(id)message;
- (void)_sanitize;
- (void)encodeWithCoder:(id)coder;
- (void)setURL:(NSURL *)URL;
@end

@implementation MSMessage

- (MSMessage)initWithSession:(MSSession *)session
{
  v5 = session;
  v9.receiver = self;
  v9.super_class = MSMessage;
  v6 = [(MSMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
  }

  return v7;
}

- (MSMessage)initWithCoder:(id)coder
{
  v40[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(MSMessage *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"session"];
    session = v5->_session;
    v5->_session = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityLabel"];
    accessibilityLabel = v5->_accessibilityLabel;
    v5->_accessibilityLabel = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusText"];
    statusText = v5->_statusText;
    v5->_statusText = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"summaryText"];
    summaryText = v5->_summaryText;
    v5->_summaryText = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"breadcrumbText"];
    breadcrumbText = v5->_breadcrumbText;
    v5->_breadcrumbText = v16;

    v5->_shouldExpire = [coderCopy decodeBoolForKey:@"shouldExpire"];
    v5->_pending = [coderCopy decodeBoolForKey:@"pending"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"time"];
    time = v5->_time;
    v5->_time = v18;

    v20 = MEMORY[0x1E695DFD8];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v40[2] = objc_opt_class();
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
    v22 = [v20 setWithArray:v21];

    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"balloonLayout"];
    layout = v5->_layout;
    v5->_layout = v23;

    v5->_isFromMe = [coderCopy decodeBoolForKey:@"isFromMe"];
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderPID"];
    senderParticipantIdentifier = v5->_senderParticipantIdentifier;
    v5->_senderParticipantIdentifier = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderAddress"];
    senderAddress = v5->_senderAddress;
    v5->_senderAddress = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"guid"];
    guid = v5->_guid;
    v5->_guid = v29;

    v5->_requiresValidation = [coderCopy decodeBoolForKey:@"requiresValidation"];
    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->__data;
    v5->__data = v31;

    v33 = MEMORY[0x1E695DFD8];
    v39 = objc_opt_class();
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    v35 = [v33 setWithArray:v34];

    v36 = [coderCopy decodeArrayOfObjectsOfClasses:v35 forKey:@"customAcknowledgements"];
    customAcknowledgements = v5->_customAcknowledgements;
    v5->_customAcknowledgements = v36;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  session = self->_session;
  coderCopy = coder;
  [coderCopy encodeObject:session forKey:@"session"];
  [coderCopy encodeObject:self->_accessibilityLabel forKey:@"accessibilityLabel"];
  [coderCopy encodeObject:self->_URL forKey:@"URL"];
  [coderCopy encodeObject:self->_statusText forKey:@"statusText"];
  [coderCopy encodeObject:self->_summaryText forKey:@"summaryText"];
  [coderCopy encodeObject:self->_breadcrumbText forKey:@"breadcrumbText"];
  [coderCopy encodeObject:self->_layout forKey:@"balloonLayout"];
  [coderCopy encodeBool:self->_shouldExpire forKey:@"shouldExpire"];
  [coderCopy encodeBool:self->_pending forKey:@"pending"];
  [coderCopy encodeObject:self->_time forKey:@"time"];
  [coderCopy encodeBool:self->_isFromMe forKey:@"isFromMe"];
  [coderCopy encodeObject:self->_senderParticipantIdentifier forKey:@"senderPID"];
  [coderCopy encodeObject:self->_senderAddress forKey:@"senderAddress"];
  [coderCopy encodeObject:self->_guid forKey:@"guid"];
  [coderCopy encodeBool:self->_requiresValidation forKey:@"requiresValidation"];
  [coderCopy encodeObject:self->__data forKey:@"data"];
  [coderCopy encodeObject:self->_customAcknowledgements forKey:@"customAcknowledgements"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [MSMessage allocWithZone:?];
  session = [(MSMessage *)self session];
  v7 = [(MSMessage *)v5 initWithSession:session];

  v8 = [(NSString *)self->_accessibilityLabel copyWithZone:zone];
  [(MSMessage *)v7 setAccessibilityLabel:v8];

  v9 = [(NSURL *)self->_URL copyWithZone:zone];
  [(MSMessage *)v7 setURL:v9];

  v10 = [(MSMessageLayout *)self->_layout copyWithZone:zone];
  [(MSMessage *)v7 setLayout:v10];

  v11 = [(NSString *)self->_statusText copyWithZone:zone];
  [(MSMessage *)v7 setStatusText:v11];

  v12 = [(NSString *)self->_summaryText copyWithZone:zone];
  [(MSMessage *)v7 setSummaryText:v12];

  v13 = [(NSString *)self->_breadcrumbText copyWithZone:zone];
  [(MSMessage *)v7 setBreadcrumbText:v13];

  [(MSMessage *)v7 setShouldExpire:self->_shouldExpire];
  [(MSMessage *)v7 setPending:self->_pending];
  v14 = [(NSDate *)self->_time copyWithZone:zone];
  [(MSMessage *)v7 setTime:v14];

  v15 = [(NSUUID *)self->_senderParticipantIdentifier copyWithZone:zone];
  [(MSMessage *)v7 setSenderParticipantIdentifier:v15];

  v16 = [(NSString *)self->_senderAddress copyWithZone:zone];
  [(MSMessage *)v7 setSenderAddress:v16];

  v17 = [(NSString *)self->_guid copyWithZone:zone];
  [(MSMessage *)v7 setGuid:v17];

  [(MSMessage *)v7 setIsFromMe:self->_isFromMe];
  [(MSMessage *)v7 setRequiresValidation:self->_requiresValidation];
  v18 = [(NSData *)self->__data copyWithZone:zone];
  [(MSMessage *)v7 set_data:v18];

  v19 = [(NSArray *)self->_customAcknowledgements copyWithZone:zone];
  [(MSMessage *)v7 setCustomAcknowledgements:v19];

  return v7;
}

- (id)_shallowCopy
{
  v3 = [[MSMessage alloc] initWithSession:self->_session];
  [(MSMessage *)v3 setAccessibilityLabel:self->_accessibilityLabel];
  [(MSMessage *)v3 setURL:self->_URL];
  [(MSMessage *)v3 setLayout:self->_layout];
  [(MSMessage *)v3 setStatusText:self->_statusText];
  [(MSMessage *)v3 setSummaryText:self->_summaryText];
  [(MSMessage *)v3 setBreadcrumbText:self->_breadcrumbText];
  [(MSMessage *)v3 setShouldExpire:self->_shouldExpire];
  [(MSMessage *)v3 setPending:self->_pending];
  [(MSMessage *)v3 setTime:self->_time];
  [(MSMessage *)v3 setSenderParticipantIdentifier:self->_senderParticipantIdentifier];
  [(MSMessage *)v3 setSenderAddress:self->_senderAddress];
  [(MSMessage *)v3 setGuid:self->_guid];
  [(MSMessage *)v3 setIsFromMe:self->_isFromMe];
  [(MSMessage *)v3 setRequiresValidation:self->_requiresValidation];
  [(MSMessage *)v3 set_data:self->__data];
  [(MSMessage *)v3 setCustomAcknowledgements:self->_customAcknowledgements];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v47 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      session = self->_session;
      session = [(MSMessage *)v5 session];
      if (session == session || [(MSSession *)session isEqual:session])
      {
        URL = self->_URL;
        v9 = [(MSMessage *)v5 URL];
        if (URL == v9 || [(NSURL *)URL isEqual:v9])
        {
          accessibilityLabel = self->_accessibilityLabel;
          accessibilityLabel = [(MSMessage *)v5 accessibilityLabel];
          if (accessibilityLabel == accessibilityLabel || [(NSString *)accessibilityLabel isEqualToString:accessibilityLabel])
          {
            layout = self->_layout;
            layout = [(MSMessage *)v5 layout];
            if (layout == layout || [(MSMessageLayout *)layout isEqual:layout])
            {
              statusText = self->_statusText;
              statusText = [(MSMessage *)v5 statusText];
              if (statusText == statusText || [(NSString *)statusText isEqualToString:statusText])
              {
                summaryText = self->_summaryText;
                summaryText = [(MSMessage *)v5 summaryText];
                if ((summaryText == summaryText || [(NSString *)summaryText isEqualToString:summaryText]) && (shouldExpire = self->_shouldExpire, shouldExpire == [(MSMessage *)v5 shouldExpire]) && (pending = self->_pending, pending == [(MSMessage *)v5 isPending]))
                {
                  senderParticipantIdentifier = self->_senderParticipantIdentifier;
                  senderParticipantIdentifier = [(MSMessage *)v5 senderParticipantIdentifier];
                  if (senderParticipantIdentifier == senderParticipantIdentifier || (v22 = senderParticipantIdentifier, v23 = senderParticipantIdentifier, v24 = [(NSUUID *)v22 isEqual:senderParticipantIdentifier], senderParticipantIdentifier = v23, v24))
                  {
                    v51 = senderParticipantIdentifier;
                    senderAddress = self->_senderAddress;
                    senderAddress = [(MSMessage *)v5 senderAddress];
                    if (senderAddress == senderAddress || (v27 = senderAddress, v28 = senderAddress, v29 = [(NSString *)v27 isEqual:senderAddress], senderAddress = v28, v29))
                    {
                      v50 = senderAddress;
                      guid = self->_guid;
                      guid = [(MSMessage *)v5 guid];
                      if (guid == guid || (v32 = guid, v33 = guid, v34 = [(NSString *)v32 isEqual:guid], guid = v33, v34))
                      {
                        v49 = guid;
                        requiresValidation = self->_requiresValidation;
                        if (requiresValidation == [(MSMessage *)v5 requiresValidation])
                        {
                          data = self->__data;
                          _data = [(MSMessage *)v5 _data];
                          if (data == _data || (v38 = data, v39 = _data, v40 = [(NSData *)v38 isEqual:_data], _data = v39, v40))
                          {
                            v41 = _data;
                            customAcknowledgements = self->_customAcknowledgements;
                            customAcknowledgements = [(MSMessage *)v5 customAcknowledgements];
                            if (customAcknowledgements == customAcknowledgements)
                            {
                              v47 = 1;
                            }

                            else
                            {
                              v44 = customAcknowledgements;
                              v45 = customAcknowledgements;
                              v46 = [(NSArray *)v44 isEqual:customAcknowledgements];
                              customAcknowledgements = v45;
                              v47 = v46;
                            }

                            _data = v41;
                          }

                          else
                          {
                            v47 = 0;
                          }
                        }

                        else
                        {
                          v47 = 0;
                        }

                        guid = v49;
                      }

                      else
                      {
                        v47 = 0;
                      }

                      senderAddress = v50;
                    }

                    else
                    {
                      v47 = 0;
                    }

                    senderParticipantIdentifier = v51;
                  }

                  else
                  {
                    v47 = 0;
                  }
                }

                else
                {
                  v47 = 0;
                }
              }

              else
              {
                v47 = 0;
              }
            }

            else
            {
              v47 = 0;
            }
          }

          else
          {
            v47 = 0;
          }
        }

        else
        {
          v47 = 0;
        }
      }

      else
      {
        v47 = 0;
      }
    }

    else
    {
      v47 = 0;
    }
  }

  return v47;
}

- (unint64_t)hash
{
  v3 = [(MSSession *)self->_session hash];
  v4 = [(NSString *)self->_accessibilityLabel hash]^ v3;
  v5 = [(MSMessageLayout *)self->_layout hash];
  v6 = v4 ^ v5 ^ [(NSURL *)self->_URL hash];
  v7 = [(NSString *)self->_statusText hash];
  v8 = v6 ^ v7 ^ [(NSString *)self->_summaryText hash]^ self->_shouldExpire;
  isFromMe = self->_isFromMe;
  v10 = isFromMe ^ [(NSUUID *)self->_senderParticipantIdentifier hash];
  v11 = v10 ^ [(NSString *)self->_senderAddress hash];
  v12 = v8 ^ v11 ^ [(NSString *)self->_guid hash];
  return v12 ^ [(NSArray *)self->_customAcknowledgements hash];
}

- (MSMessage)init
{
  v3.receiver = self;
  v3.super_class = MSMessage;
  return [(MSMessage *)&v3 init];
}

- (void)setURL:(NSURL *)URL
{
  v5 = URL;
  v7 = self->_URL;
  p_URL = &self->_URL;
  v17 = v5;
  if (([(NSURL *)v7 isEqual:?]& 1) == 0)
  {
    scheme = [(NSURL *)v17 scheme];
    if (!scheme)
    {
LABEL_7:
      objc_storeStrong(p_URL, URL);
      goto LABEL_8;
    }

    v9 = scheme;
    scheme2 = [(NSURL *)v17 scheme];
    lowercaseString = [scheme2 lowercaseString];
    if ([lowercaseString isEqualToString:@"http"])
    {
LABEL_6:

      goto LABEL_7;
    }

    scheme3 = [(NSURL *)v17 scheme];
    lowercaseString2 = [scheme3 lowercaseString];
    if ([lowercaseString2 isEqualToString:@"https"])
    {

      goto LABEL_6;
    }

    scheme4 = [(NSURL *)v17 scheme];
    lowercaseString3 = [scheme4 lowercaseString];
    v16 = [lowercaseString3 isEqualToString:@"data"];

    if (v16)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (id)_sanitizedCopy
{
  _shallowCopy = [(MSMessage *)self _shallowCopy];
  [_shallowCopy _sanitize];

  return _shallowCopy;
}

- (void)_sanitize
{
  v17 = *MEMORY[0x1E69E9840];
  layout = [(MSMessage *)self layout];
  _sanitizedCopy = [layout _sanitizedCopy];
  [(MSMessage *)self setLayout:_sanitizedCopy];

  [(MSMessage *)self setStatusText:0];
  [(MSMessage *)self setSummaryText:0];
  [(MSMessage *)self setAccessibilityLabel:0];
  [(MSMessage *)self setSenderAddress:0];
  [(MSMessage *)self setGuid:0];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  customAcknowledgements = [(MSMessage *)self customAcknowledgements];
  v7 = [customAcknowledgements countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(customAcknowledgements);
        }

        _sanitizedCopy2 = [*(*(&v12 + 1) + 8 * v10) _sanitizedCopy];
        [array addObject:_sanitizedCopy2];

        ++v10;
      }

      while (v8 != v10);
      v8 = [customAcknowledgements countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(MSMessage *)self setCustomAcknowledgements:array];
}

- (void)_mergeSanitizedDataFromMessage:(id)message
{
  messageCopy = message;
  layout = [messageCopy layout];
  [(MSMessage *)self setLayout:layout];

  statusText = [messageCopy statusText];
  [(MSMessage *)self setStatusText:statusText];

  summaryText = [messageCopy summaryText];
  [(MSMessage *)self setSummaryText:summaryText];

  accessibilityLabel = [messageCopy accessibilityLabel];
  [(MSMessage *)self setAccessibilityLabel:accessibilityLabel];

  senderAddress = [messageCopy senderAddress];
  [(MSMessage *)self setSenderAddress:senderAddress];

  guid = [messageCopy guid];
  [(MSMessage *)self setGuid:guid];

  customAcknowledgements = [messageCopy customAcknowledgements];

  [(MSMessage *)self setCustomAcknowledgements:customAcknowledgements];
}

- (void)_mergeSanitizedKeepingModifiedMessage:(id)message
{
  messageCopy = message;
  layout = [(MSMessage *)self layout];

  if (!layout)
  {
    layout2 = [messageCopy layout];
    [(MSMessage *)self setLayout:layout2];
  }

  statusText = [(MSMessage *)self statusText];

  if (!statusText)
  {
    statusText2 = [messageCopy statusText];
    [(MSMessage *)self setStatusText:statusText2];
  }

  summaryText = [(MSMessage *)self summaryText];

  if (!summaryText)
  {
    summaryText2 = [messageCopy summaryText];
    [(MSMessage *)self setSummaryText:summaryText2];
  }

  accessibilityLabel = [(MSMessage *)self accessibilityLabel];

  if (!accessibilityLabel)
  {
    accessibilityLabel2 = [messageCopy accessibilityLabel];
    [(MSMessage *)self setAccessibilityLabel:accessibilityLabel2];
  }

  senderAddress = [(MSMessage *)self senderAddress];

  if (!senderAddress)
  {
    senderAddress2 = [messageCopy senderAddress];
    [(MSMessage *)self setSenderAddress:senderAddress2];
  }

  guid = [(MSMessage *)self guid];

  if (!guid)
  {
    guid2 = [messageCopy guid];
    [(MSMessage *)self setGuid:guid2];
  }

  customAcknowledgements = [(MSMessage *)self customAcknowledgements];

  if (!customAcknowledgements)
  {
    customAcknowledgements2 = [messageCopy customAcknowledgements];
    [(MSMessage *)self setCustomAcknowledgements:customAcknowledgements2];
  }
}

- (id)_pluginPayloadWithAppIconData:(id)data appName:(id)name adamID:(id)d allowDataPayloads:(BOOL)payloads
{
  payloadsCopy = payloads;
  v42[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  nameCopy = name;
  dCopy = d;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v11 = getCKBrowserItemPayloadClass_softClass;
  v41 = getCKBrowserItemPayloadClass_softClass;
  if (!getCKBrowserItemPayloadClass_softClass)
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __getCKBrowserItemPayloadClass_block_invoke;
    v37[3] = &unk_1E83A2BA8;
    v37[4] = &v38;
    __getCKBrowserItemPayloadClass_block_invoke(v37);
    v11 = v39[3];
  }

  v12 = payloadsCopy;
  v13 = v11;
  _Block_object_dispose(&v38, 8);
  v14 = IMLogHandleForCategory();
  v15 = v14;
  if (v11)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [MSMessage _pluginPayloadWithAppIconData:v11 appName:v15 adamID:? allowDataPayloads:?];
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [MSMessage _pluginPayloadWithAppIconData:appName:adamID:allowDataPayloads:];
  }

  v16 = objc_alloc_init(v11);
  layout = [(MSMessage *)self layout];
  layout2 = [(MSMessage *)self layout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    alternateLayout = [layout alternateLayout];
LABEL_12:
    v21 = alternateLayout;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    alternateLayout = layout;
    goto LABEL_12;
  }

  v21 = 0;
LABEL_14:
  image = [v21 image];

  if (!image)
  {
    mediaFileURL = [v21 mediaFileURL];

    if (!mediaFileURL)
    {
      mediaFileURL2 = 0;
      goto LABEL_21;
    }

    mediaFileURL2 = [v21 mediaFileURL];
    if (!mediaFileURL2)
    {
      goto LABEL_21;
    }

LABEL_19:
    v42[0] = mediaFileURL2;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    [v16 setAttachments:v28];

    goto LABEL_21;
  }

  image2 = [v21 image];
  v24 = UIImageJPEGRepresentation(image2, 0.5);
  v25 = +[_MSTempFileManager sharedInstance];
  mediaFileURL2 = [v25 writeTemporaryFileWithData:v24 type:*MEMORY[0x1E6963808]];

  if (mediaFileURL2)
  {
    goto LABEL_19;
  }

LABEL_21:
  v29 = [(MSMessage *)self _payloadDataFromAppIconData:dataCopy appName:nameCopy adamID:dCopy allowDataPayloads:v12];
  if (v29)
  {
    [v16 setData:v29];
  }

  summaryText = [(MSMessage *)self summaryText];
  [v16 setBreadcrumbText:summaryText];

  statusText = [(MSMessage *)self statusText];
  [v16 setStatusText:statusText];

  [v16 setShouldExpire:{-[MSMessage shouldExpire](self, "shouldExpire")}];
  [v16 setRequiresValidation:{-[MSMessage requiresValidation](self, "requiresValidation")}];
  layout3 = [(MSMessage *)self layout];
  objc_opt_class();
  LOBYTE(statusText) = objc_opt_isKindOfClass();

  if (statusText)
  {
    layout4 = [(MSMessage *)self layout];
    [v16 setLiveEditableInEntryView:{objc_msgSend(layout4, "liveEditableInEntryView")}];
  }

  return v16;
}

- (id)_payloadDataFromAppIconData:(id)data appName:(id)name adamID:(id)d allowDataPayloads:(BOOL)payloads
{
  payloadsCopy = payloads;
  v83[6] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  nameCopy = name;
  dCopy = d;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  layout = [(MSMessage *)self layout];
  session = [(MSMessage *)self session];
  identifier = [session identifier];

  if (identifier)
  {
    session2 = [(MSMessage *)self session];
    identifier2 = [session2 identifier];
    [dictionary setObject:identifier2 forKey:*MEMORY[0x1E69A6F18]];
  }

  v19 = [(MSMessage *)self URL];

  if (v19)
  {
    v20 = [(MSMessage *)self URL];
    [dictionary setObject:v20 forKey:*MEMORY[0x1E69A6F10]];
  }

  if (payloadsCopy)
  {
    _data = [(MSMessage *)self _data];

    if (_data)
    {
      _data2 = [(MSMessage *)self _data];
      [dictionary setObject:_data2 forKey:*MEMORY[0x1E69A6EE0]];
    }
  }

  accessibilityLabel = [(MSMessage *)self accessibilityLabel];

  if (accessibilityLabel)
  {
    accessibilityLabel2 = [(MSMessage *)self accessibilityLabel];
    [dictionary setObject:accessibilityLabel2 forKey:*MEMORY[0x1E69A6EA8]];
  }

  if (dataCopy)
  {
    _FTCopyGzippedData = [dataCopy _FTCopyGzippedData];
    [dictionary setObject:_FTCopyGzippedData forKey:*MEMORY[0x1E69A6EB8]];
  }

  if (nameCopy)
  {
    [dictionary setObject:nameCopy forKey:*MEMORY[0x1E69A6EC0]];
  }

  if (dCopy)
  {
    [dictionary setObject:dCopy forKey:*MEMORY[0x1E69A6EB0]];
  }

  else
  {
    overriddenAdamID = [(MSMessage *)self overriddenAdamID];

    if (overriddenAdamID)
    {
      overriddenAdamID2 = [(MSMessage *)self overriddenAdamID];
      [dictionary setObject:overriddenAdamID2 forKey:*MEMORY[0x1E69A6EB0]];
    }
  }

  statusText = [(MSMessage *)self statusText];

  if (statusText)
  {
    statusText2 = [(MSMessage *)self statusText];
    [dictionary setObject:statusText2 forKey:*MEMORY[0x1E69A6F08]];
  }

  summaryText = [(MSMessage *)self summaryText];

  if (summaryText)
  {
    summaryText2 = [(MSMessage *)self summaryText];
    [dictionary setObject:summaryText2 forKey:*MEMORY[0x1E69A6EF0]];
  }

  objc_opt_class();
  v77 = nameCopy;
  v78 = dataCopy;
  v76 = dCopy;
  if (objc_opt_isKindOfClass())
  {
    v32 = layout;
LABEL_28:
    sendAlternateLayoutAsText = 0;
    linkMetadata = 0;
    v75 = 0;
    goto LABEL_34;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v32 = 0;
    goto LABEL_28;
  }

  alternateLayout = [layout alternateLayout];
  requiredCapabilities = [layout requiredCapabilities];
  sendAlternateLayoutAsText = [layout sendAlternateLayoutAsText];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    linkMetadata = [alternateLayout linkMetadata];
    v32 = objc_alloc_init(MSMessageTemplateLayout);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = alternateLayout;
    }

    else
    {
      v32 = 0;
    }

    linkMetadata = 0;
  }

  v75 = requiredCapabilities;

LABEL_34:
  v35 = layout;
  v82[0] = *MEMORY[0x1E69A6940];
  caption = [(MSMessageTemplateLayout *)v32 caption];
  v37 = caption;
  if (caption)
  {
    v38 = caption;
  }

  else
  {
    v38 = &stru_1F4AC0718;
  }

  v83[0] = v38;
  v82[1] = *MEMORY[0x1E69A6960];
  subcaption = [(MSMessageTemplateLayout *)v32 subcaption];
  v40 = subcaption;
  if (subcaption)
  {
    v41 = subcaption;
  }

  else
  {
    v41 = &stru_1F4AC0718;
  }

  v83[1] = v41;
  v82[2] = *MEMORY[0x1E69A6958];
  trailingCaption = [(MSMessageTemplateLayout *)v32 trailingCaption];
  v43 = trailingCaption;
  if (trailingCaption)
  {
    v44 = trailingCaption;
  }

  else
  {
    v44 = &stru_1F4AC0718;
  }

  v83[2] = v44;
  v82[3] = *MEMORY[0x1E69A6968];
  trailingSubcaption = [(MSMessageTemplateLayout *)v32 trailingSubcaption];
  v46 = trailingSubcaption;
  if (trailingSubcaption)
  {
    v47 = trailingSubcaption;
  }

  else
  {
    v47 = &stru_1F4AC0718;
  }

  v83[3] = v47;
  v82[4] = *MEMORY[0x1E69A6950];
  imageTitle = [(MSMessageTemplateLayout *)v32 imageTitle];
  v49 = imageTitle;
  if (imageTitle)
  {
    v50 = imageTitle;
  }

  else
  {
    v50 = &stru_1F4AC0718;
  }

  v83[4] = v50;
  v82[5] = *MEMORY[0x1E69A6948];
  imageSubtitle = [(MSMessageTemplateLayout *)v32 imageSubtitle];
  v52 = imageSubtitle;
  if (imageSubtitle)
  {
    v53 = imageSubtitle;
  }

  else
  {
    v53 = &stru_1F4AC0718;
  }

  v83[5] = v53;
  v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:6];

  v55 = objc_opt_class();
  v56 = NSStringFromClass(v55);
  v57 = *MEMORY[0x1E69A6EC8];
  [dictionary setObject:v56 forKey:*MEMORY[0x1E69A6EC8]];
  v58 = *MEMORY[0x1E69A6ED0];
  [dictionary setObject:v54 forKey:*MEMORY[0x1E69A6ED0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary2 setObject:MEMORY[0x1E695E0F8] forKey:v58];
    v60 = objc_opt_class();
    v61 = NSStringFromClass(v60);
    [dictionary2 setObject:v61 forKey:v57];

    v81 = 0;
    v62 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:dictionary2 requiringSecureCoding:1 error:&v81];
    v63 = v81;
    if (v62)
    {
      [dictionary setObject:v62 forKey:*MEMORY[0x1E69A6ED8]];
    }

    else
    {
      v64 = IMLogHandleForCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        [MSMessage _payloadDataFromAppIconData:appName:adamID:allowDataPayloads:];
      }
    }
  }

  if (linkMetadata)
  {
    v80 = 0;
    v65 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:linkMetadata requiringSecureCoding:1 error:&v80];
    v66 = v80;
    if (v65)
    {
      if ([v65 length])
      {
        [dictionary setObject:v65 forKey:*MEMORY[0x1E69A6EE8]];
LABEL_68:

        goto LABEL_69;
      }

      v67 = IMLogHandleForCategory();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        [MSMessage _payloadDataFromAppIconData:appName:adamID:allowDataPayloads:];
      }
    }

    else
    {
      v67 = IMLogHandleForCategory();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        [MSMessage _payloadDataFromAppIconData:appName:adamID:allowDataPayloads:];
      }
    }

    goto LABEL_68;
  }

LABEL_69:
  if (![v75 count])
  {
    goto LABEL_80;
  }

  v79 = 0;
  v68 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v75 requiringSecureCoding:1 error:&v79];
  v69 = v79;
  if (!v68)
  {
    v70 = IMLogHandleForCategory();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      [MSMessage _payloadDataFromAppIconData:appName:adamID:allowDataPayloads:];
    }

    goto LABEL_78;
  }

  if (![v68 length])
  {
    v70 = IMLogHandleForCategory();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      [MSMessage _payloadDataFromAppIconData:appName:adamID:allowDataPayloads:];
    }

    goto LABEL_78;
  }

  [dictionary setObject:v68 forKey:*MEMORY[0x1E69A6EF8]];
  if (sendAlternateLayoutAsText)
  {
    v70 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [dictionary setObject:v70 forKey:*MEMORY[0x1E69A6F00]];
LABEL_78:
  }

LABEL_80:
  v71 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:dictionary requiringSecureCoding:1 error:0];

  return v71;
}

- (void)_pluginPayloadWithAppIconData:(objc_class *)a1 appName:(NSObject *)a2 adamID:allowDataPayloads:.cold.1(objc_class *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_1_0();
  v5 = 2080;
  OUTLINED_FUNCTION_1_1();
  v6 = "/Library/Caches/com.apple.xbs/Sources/Messages/ChatKit/Messages/Messages/Source/Extension/MSMessage.m";
  _os_log_debug_impl(&dword_1CADE6000, a2, OS_LOG_TYPE_DEBUG, "Failed archiving templateLayoutData. Error: %@", v4, 0x26u);
}

- (void)_pluginPayloadWithAppIconData:appName:adamID:allowDataPayloads:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)_payloadDataFromAppIconData:appName:adamID:allowDataPayloads:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_payloadDataFromAppIconData:appName:adamID:allowDataPayloads:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_payloadDataFromAppIconData:appName:adamID:allowDataPayloads:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end