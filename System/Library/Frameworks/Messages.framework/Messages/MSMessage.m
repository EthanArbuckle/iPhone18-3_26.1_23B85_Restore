@interface MSMessage
- (BOOL)isEqual:(id)a3;
- (MSMessage)init;
- (MSMessage)initWithCoder:(id)a3;
- (MSMessage)initWithSession:(MSSession *)session;
- (id)_payloadDataFromAppIconData:(id)a3 appName:(id)a4 adamID:(id)a5 allowDataPayloads:(BOOL)a6;
- (id)_pluginPayloadWithAppIconData:(id)a3 appName:(id)a4 adamID:(id)a5 allowDataPayloads:(BOOL)a6;
- (id)_sanitizedCopy;
- (id)_shallowCopy;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_mergeSanitizedDataFromMessage:(id)a3;
- (void)_mergeSanitizedKeepingModifiedMessage:(id)a3;
- (void)_sanitize;
- (void)encodeWithCoder:(id)a3;
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

- (MSMessage)initWithCoder:(id)a3
{
  v40[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MSMessage *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"session"];
    session = v5->_session;
    v5->_session = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityLabel"];
    accessibilityLabel = v5->_accessibilityLabel;
    v5->_accessibilityLabel = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusText"];
    statusText = v5->_statusText;
    v5->_statusText = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"summaryText"];
    summaryText = v5->_summaryText;
    v5->_summaryText = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"breadcrumbText"];
    breadcrumbText = v5->_breadcrumbText;
    v5->_breadcrumbText = v16;

    v5->_shouldExpire = [v4 decodeBoolForKey:@"shouldExpire"];
    v5->_pending = [v4 decodeBoolForKey:@"pending"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"time"];
    time = v5->_time;
    v5->_time = v18;

    v20 = MEMORY[0x1E695DFD8];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v40[2] = objc_opt_class();
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
    v22 = [v20 setWithArray:v21];

    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"balloonLayout"];
    layout = v5->_layout;
    v5->_layout = v23;

    v5->_isFromMe = [v4 decodeBoolForKey:@"isFromMe"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderPID"];
    senderParticipantIdentifier = v5->_senderParticipantIdentifier;
    v5->_senderParticipantIdentifier = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderAddress"];
    senderAddress = v5->_senderAddress;
    v5->_senderAddress = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"guid"];
    guid = v5->_guid;
    v5->_guid = v29;

    v5->_requiresValidation = [v4 decodeBoolForKey:@"requiresValidation"];
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->__data;
    v5->__data = v31;

    v33 = MEMORY[0x1E695DFD8];
    v39 = objc_opt_class();
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    v35 = [v33 setWithArray:v34];

    v36 = [v4 decodeArrayOfObjectsOfClasses:v35 forKey:@"customAcknowledgements"];
    customAcknowledgements = v5->_customAcknowledgements;
    v5->_customAcknowledgements = v36;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  session = self->_session;
  v5 = a3;
  [v5 encodeObject:session forKey:@"session"];
  [v5 encodeObject:self->_accessibilityLabel forKey:@"accessibilityLabel"];
  [v5 encodeObject:self->_URL forKey:@"URL"];
  [v5 encodeObject:self->_statusText forKey:@"statusText"];
  [v5 encodeObject:self->_summaryText forKey:@"summaryText"];
  [v5 encodeObject:self->_breadcrumbText forKey:@"breadcrumbText"];
  [v5 encodeObject:self->_layout forKey:@"balloonLayout"];
  [v5 encodeBool:self->_shouldExpire forKey:@"shouldExpire"];
  [v5 encodeBool:self->_pending forKey:@"pending"];
  [v5 encodeObject:self->_time forKey:@"time"];
  [v5 encodeBool:self->_isFromMe forKey:@"isFromMe"];
  [v5 encodeObject:self->_senderParticipantIdentifier forKey:@"senderPID"];
  [v5 encodeObject:self->_senderAddress forKey:@"senderAddress"];
  [v5 encodeObject:self->_guid forKey:@"guid"];
  [v5 encodeBool:self->_requiresValidation forKey:@"requiresValidation"];
  [v5 encodeObject:self->__data forKey:@"data"];
  [v5 encodeObject:self->_customAcknowledgements forKey:@"customAcknowledgements"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [MSMessage allocWithZone:?];
  v6 = [(MSMessage *)self session];
  v7 = [(MSMessage *)v5 initWithSession:v6];

  v8 = [(NSString *)self->_accessibilityLabel copyWithZone:a3];
  [(MSMessage *)v7 setAccessibilityLabel:v8];

  v9 = [(NSURL *)self->_URL copyWithZone:a3];
  [(MSMessage *)v7 setURL:v9];

  v10 = [(MSMessageLayout *)self->_layout copyWithZone:a3];
  [(MSMessage *)v7 setLayout:v10];

  v11 = [(NSString *)self->_statusText copyWithZone:a3];
  [(MSMessage *)v7 setStatusText:v11];

  v12 = [(NSString *)self->_summaryText copyWithZone:a3];
  [(MSMessage *)v7 setSummaryText:v12];

  v13 = [(NSString *)self->_breadcrumbText copyWithZone:a3];
  [(MSMessage *)v7 setBreadcrumbText:v13];

  [(MSMessage *)v7 setShouldExpire:self->_shouldExpire];
  [(MSMessage *)v7 setPending:self->_pending];
  v14 = [(NSDate *)self->_time copyWithZone:a3];
  [(MSMessage *)v7 setTime:v14];

  v15 = [(NSUUID *)self->_senderParticipantIdentifier copyWithZone:a3];
  [(MSMessage *)v7 setSenderParticipantIdentifier:v15];

  v16 = [(NSString *)self->_senderAddress copyWithZone:a3];
  [(MSMessage *)v7 setSenderAddress:v16];

  v17 = [(NSString *)self->_guid copyWithZone:a3];
  [(MSMessage *)v7 setGuid:v17];

  [(MSMessage *)v7 setIsFromMe:self->_isFromMe];
  [(MSMessage *)v7 setRequiresValidation:self->_requiresValidation];
  v18 = [(NSData *)self->__data copyWithZone:a3];
  [(MSMessage *)v7 set_data:v18];

  v19 = [(NSArray *)self->_customAcknowledgements copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v47 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      session = self->_session;
      v7 = [(MSMessage *)v5 session];
      if (session == v7 || [(MSSession *)session isEqual:v7])
      {
        URL = self->_URL;
        v9 = [(MSMessage *)v5 URL];
        if (URL == v9 || [(NSURL *)URL isEqual:v9])
        {
          accessibilityLabel = self->_accessibilityLabel;
          v11 = [(MSMessage *)v5 accessibilityLabel];
          if (accessibilityLabel == v11 || [(NSString *)accessibilityLabel isEqualToString:v11])
          {
            layout = self->_layout;
            v13 = [(MSMessage *)v5 layout];
            if (layout == v13 || [(MSMessageLayout *)layout isEqual:v13])
            {
              statusText = self->_statusText;
              v15 = [(MSMessage *)v5 statusText];
              if (statusText == v15 || [(NSString *)statusText isEqualToString:v15])
              {
                summaryText = self->_summaryText;
                v17 = [(MSMessage *)v5 summaryText];
                if ((summaryText == v17 || [(NSString *)summaryText isEqualToString:v17]) && (shouldExpire = self->_shouldExpire, shouldExpire == [(MSMessage *)v5 shouldExpire]) && (pending = self->_pending, pending == [(MSMessage *)v5 isPending]))
                {
                  senderParticipantIdentifier = self->_senderParticipantIdentifier;
                  v21 = [(MSMessage *)v5 senderParticipantIdentifier];
                  if (senderParticipantIdentifier == v21 || (v22 = senderParticipantIdentifier, v23 = v21, v24 = [(NSUUID *)v22 isEqual:v21], v21 = v23, v24))
                  {
                    v51 = v21;
                    senderAddress = self->_senderAddress;
                    v26 = [(MSMessage *)v5 senderAddress];
                    if (senderAddress == v26 || (v27 = senderAddress, v28 = v26, v29 = [(NSString *)v27 isEqual:v26], v26 = v28, v29))
                    {
                      v50 = v26;
                      guid = self->_guid;
                      v31 = [(MSMessage *)v5 guid];
                      if (guid == v31 || (v32 = guid, v33 = v31, v34 = [(NSString *)v32 isEqual:v31], v31 = v33, v34))
                      {
                        v49 = v31;
                        requiresValidation = self->_requiresValidation;
                        if (requiresValidation == [(MSMessage *)v5 requiresValidation])
                        {
                          data = self->__data;
                          v37 = [(MSMessage *)v5 _data];
                          if (data == v37 || (v38 = data, v39 = v37, v40 = [(NSData *)v38 isEqual:v37], v37 = v39, v40))
                          {
                            v41 = v37;
                            customAcknowledgements = self->_customAcknowledgements;
                            v43 = [(MSMessage *)v5 customAcknowledgements];
                            if (customAcknowledgements == v43)
                            {
                              v47 = 1;
                            }

                            else
                            {
                              v44 = customAcknowledgements;
                              v45 = v43;
                              v46 = [(NSArray *)v44 isEqual:v43];
                              v43 = v45;
                              v47 = v46;
                            }

                            v37 = v41;
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

                        v31 = v49;
                      }

                      else
                      {
                        v47 = 0;
                      }

                      v26 = v50;
                    }

                    else
                    {
                      v47 = 0;
                    }

                    v21 = v51;
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
    v8 = [(NSURL *)v17 scheme];
    if (!v8)
    {
LABEL_7:
      objc_storeStrong(p_URL, URL);
      goto LABEL_8;
    }

    v9 = v8;
    v10 = [(NSURL *)v17 scheme];
    v11 = [v10 lowercaseString];
    if ([v11 isEqualToString:@"http"])
    {
LABEL_6:

      goto LABEL_7;
    }

    v12 = [(NSURL *)v17 scheme];
    v13 = [v12 lowercaseString];
    if ([v13 isEqualToString:@"https"])
    {

      goto LABEL_6;
    }

    v14 = [(NSURL *)v17 scheme];
    v15 = [v14 lowercaseString];
    v16 = [v15 isEqualToString:@"data"];

    if (v16)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (id)_sanitizedCopy
{
  v2 = [(MSMessage *)self _shallowCopy];
  [v2 _sanitize];

  return v2;
}

- (void)_sanitize
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(MSMessage *)self layout];
  v4 = [v3 _sanitizedCopy];
  [(MSMessage *)self setLayout:v4];

  [(MSMessage *)self setStatusText:0];
  [(MSMessage *)self setSummaryText:0];
  [(MSMessage *)self setAccessibilityLabel:0];
  [(MSMessage *)self setSenderAddress:0];
  [(MSMessage *)self setGuid:0];
  v5 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(MSMessage *)self customAcknowledgements];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) _sanitizedCopy];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(MSMessage *)self setCustomAcknowledgements:v5];
}

- (void)_mergeSanitizedDataFromMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 layout];
  [(MSMessage *)self setLayout:v5];

  v6 = [v4 statusText];
  [(MSMessage *)self setStatusText:v6];

  v7 = [v4 summaryText];
  [(MSMessage *)self setSummaryText:v7];

  v8 = [v4 accessibilityLabel];
  [(MSMessage *)self setAccessibilityLabel:v8];

  v9 = [v4 senderAddress];
  [(MSMessage *)self setSenderAddress:v9];

  v10 = [v4 guid];
  [(MSMessage *)self setGuid:v10];

  v11 = [v4 customAcknowledgements];

  [(MSMessage *)self setCustomAcknowledgements:v11];
}

- (void)_mergeSanitizedKeepingModifiedMessage:(id)a3
{
  v18 = a3;
  v4 = [(MSMessage *)self layout];

  if (!v4)
  {
    v5 = [v18 layout];
    [(MSMessage *)self setLayout:v5];
  }

  v6 = [(MSMessage *)self statusText];

  if (!v6)
  {
    v7 = [v18 statusText];
    [(MSMessage *)self setStatusText:v7];
  }

  v8 = [(MSMessage *)self summaryText];

  if (!v8)
  {
    v9 = [v18 summaryText];
    [(MSMessage *)self setSummaryText:v9];
  }

  v10 = [(MSMessage *)self accessibilityLabel];

  if (!v10)
  {
    v11 = [v18 accessibilityLabel];
    [(MSMessage *)self setAccessibilityLabel:v11];
  }

  v12 = [(MSMessage *)self senderAddress];

  if (!v12)
  {
    v13 = [v18 senderAddress];
    [(MSMessage *)self setSenderAddress:v13];
  }

  v14 = [(MSMessage *)self guid];

  if (!v14)
  {
    v15 = [v18 guid];
    [(MSMessage *)self setGuid:v15];
  }

  v16 = [(MSMessage *)self customAcknowledgements];

  if (!v16)
  {
    v17 = [v18 customAcknowledgements];
    [(MSMessage *)self setCustomAcknowledgements:v17];
  }
}

- (id)_pluginPayloadWithAppIconData:(id)a3 appName:(id)a4 adamID:(id)a5 allowDataPayloads:(BOOL)a6
{
  v6 = a6;
  v42[1] = *MEMORY[0x1E69E9840];
  v35 = a3;
  v36 = a4;
  v10 = a5;
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

  v12 = v6;
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
  v17 = [(MSMessage *)self layout];
  v18 = [(MSMessage *)self layout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v20 = [v17 alternateLayout];
LABEL_12:
    v21 = v20;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v17;
    goto LABEL_12;
  }

  v21 = 0;
LABEL_14:
  v22 = [v21 image];

  if (!v22)
  {
    v27 = [v21 mediaFileURL];

    if (!v27)
    {
      v26 = 0;
      goto LABEL_21;
    }

    v26 = [v21 mediaFileURL];
    if (!v26)
    {
      goto LABEL_21;
    }

LABEL_19:
    v42[0] = v26;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    [v16 setAttachments:v28];

    goto LABEL_21;
  }

  v23 = [v21 image];
  v24 = UIImageJPEGRepresentation(v23, 0.5);
  v25 = +[_MSTempFileManager sharedInstance];
  v26 = [v25 writeTemporaryFileWithData:v24 type:*MEMORY[0x1E6963808]];

  if (v26)
  {
    goto LABEL_19;
  }

LABEL_21:
  v29 = [(MSMessage *)self _payloadDataFromAppIconData:v35 appName:v36 adamID:v10 allowDataPayloads:v12];
  if (v29)
  {
    [v16 setData:v29];
  }

  v30 = [(MSMessage *)self summaryText];
  [v16 setBreadcrumbText:v30];

  v31 = [(MSMessage *)self statusText];
  [v16 setStatusText:v31];

  [v16 setShouldExpire:{-[MSMessage shouldExpire](self, "shouldExpire")}];
  [v16 setRequiresValidation:{-[MSMessage requiresValidation](self, "requiresValidation")}];
  v32 = [(MSMessage *)self layout];
  objc_opt_class();
  LOBYTE(v31) = objc_opt_isKindOfClass();

  if (v31)
  {
    v33 = [(MSMessage *)self layout];
    [v16 setLiveEditableInEntryView:{objc_msgSend(v33, "liveEditableInEntryView")}];
  }

  return v16;
}

- (id)_payloadDataFromAppIconData:(id)a3 appName:(id)a4 adamID:(id)a5 allowDataPayloads:(BOOL)a6
{
  v6 = a6;
  v83[6] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x1E695DF90] dictionary];
  v14 = [(MSMessage *)self layout];
  v15 = [(MSMessage *)self session];
  v16 = [v15 identifier];

  if (v16)
  {
    v17 = [(MSMessage *)self session];
    v18 = [v17 identifier];
    [v13 setObject:v18 forKey:*MEMORY[0x1E69A6F18]];
  }

  v19 = [(MSMessage *)self URL];

  if (v19)
  {
    v20 = [(MSMessage *)self URL];
    [v13 setObject:v20 forKey:*MEMORY[0x1E69A6F10]];
  }

  if (v6)
  {
    v21 = [(MSMessage *)self _data];

    if (v21)
    {
      v22 = [(MSMessage *)self _data];
      [v13 setObject:v22 forKey:*MEMORY[0x1E69A6EE0]];
    }
  }

  v23 = [(MSMessage *)self accessibilityLabel];

  if (v23)
  {
    v24 = [(MSMessage *)self accessibilityLabel];
    [v13 setObject:v24 forKey:*MEMORY[0x1E69A6EA8]];
  }

  if (v10)
  {
    v25 = [v10 _FTCopyGzippedData];
    [v13 setObject:v25 forKey:*MEMORY[0x1E69A6EB8]];
  }

  if (v11)
  {
    [v13 setObject:v11 forKey:*MEMORY[0x1E69A6EC0]];
  }

  if (v12)
  {
    [v13 setObject:v12 forKey:*MEMORY[0x1E69A6EB0]];
  }

  else
  {
    v26 = [(MSMessage *)self overriddenAdamID];

    if (v26)
    {
      v27 = [(MSMessage *)self overriddenAdamID];
      [v13 setObject:v27 forKey:*MEMORY[0x1E69A6EB0]];
    }
  }

  v28 = [(MSMessage *)self statusText];

  if (v28)
  {
    v29 = [(MSMessage *)self statusText];
    [v13 setObject:v29 forKey:*MEMORY[0x1E69A6F08]];
  }

  v30 = [(MSMessage *)self summaryText];

  if (v30)
  {
    v31 = [(MSMessage *)self summaryText];
    [v13 setObject:v31 forKey:*MEMORY[0x1E69A6EF0]];
  }

  objc_opt_class();
  v77 = v11;
  v78 = v10;
  v76 = v12;
  if (objc_opt_isKindOfClass())
  {
    v32 = v14;
LABEL_28:
    v73 = 0;
    v74 = 0;
    v75 = 0;
    goto LABEL_34;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v32 = 0;
    goto LABEL_28;
  }

  v33 = [v14 alternateLayout];
  v34 = [v14 requiredCapabilities];
  v73 = [v14 sendAlternateLayoutAsText];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v74 = [v33 linkMetadata];
    v32 = objc_alloc_init(MSMessageTemplateLayout);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v33;
    }

    else
    {
      v32 = 0;
    }

    v74 = 0;
  }

  v75 = v34;

LABEL_34:
  v35 = v14;
  v82[0] = *MEMORY[0x1E69A6940];
  v36 = [(MSMessageTemplateLayout *)v32 caption];
  v37 = v36;
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = &stru_1F4AC0718;
  }

  v83[0] = v38;
  v82[1] = *MEMORY[0x1E69A6960];
  v39 = [(MSMessageTemplateLayout *)v32 subcaption];
  v40 = v39;
  if (v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = &stru_1F4AC0718;
  }

  v83[1] = v41;
  v82[2] = *MEMORY[0x1E69A6958];
  v42 = [(MSMessageTemplateLayout *)v32 trailingCaption];
  v43 = v42;
  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = &stru_1F4AC0718;
  }

  v83[2] = v44;
  v82[3] = *MEMORY[0x1E69A6968];
  v45 = [(MSMessageTemplateLayout *)v32 trailingSubcaption];
  v46 = v45;
  if (v45)
  {
    v47 = v45;
  }

  else
  {
    v47 = &stru_1F4AC0718;
  }

  v83[3] = v47;
  v82[4] = *MEMORY[0x1E69A6950];
  v48 = [(MSMessageTemplateLayout *)v32 imageTitle];
  v49 = v48;
  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = &stru_1F4AC0718;
  }

  v83[4] = v50;
  v82[5] = *MEMORY[0x1E69A6948];
  v51 = [(MSMessageTemplateLayout *)v32 imageSubtitle];
  v52 = v51;
  if (v51)
  {
    v53 = v51;
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
  [v13 setObject:v56 forKey:*MEMORY[0x1E69A6EC8]];
  v58 = *MEMORY[0x1E69A6ED0];
  [v13 setObject:v54 forKey:*MEMORY[0x1E69A6ED0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v59 = [MEMORY[0x1E695DF90] dictionary];
    [v59 setObject:MEMORY[0x1E695E0F8] forKey:v58];
    v60 = objc_opt_class();
    v61 = NSStringFromClass(v60);
    [v59 setObject:v61 forKey:v57];

    v81 = 0;
    v62 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v59 requiringSecureCoding:1 error:&v81];
    v63 = v81;
    if (v62)
    {
      [v13 setObject:v62 forKey:*MEMORY[0x1E69A6ED8]];
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

  if (v74)
  {
    v80 = 0;
    v65 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v74 requiringSecureCoding:1 error:&v80];
    v66 = v80;
    if (v65)
    {
      if ([v65 length])
      {
        [v13 setObject:v65 forKey:*MEMORY[0x1E69A6EE8]];
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

  [v13 setObject:v68 forKey:*MEMORY[0x1E69A6EF8]];
  if (v73)
  {
    v70 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v13 setObject:v70 forKey:*MEMORY[0x1E69A6F00]];
LABEL_78:
  }

LABEL_80:
  v71 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:0];

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