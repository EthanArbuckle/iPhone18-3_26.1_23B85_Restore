@interface AFAccount
- (AFAccount)initWithCoder:(id)coder;
- (AFAccount)initWithMessageDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)messageDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFAccount

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [v5 identifier];
    identifier2 = [(AFAccount *)self identifier];
    if ([identifier isEqualToString:identifier2])
    {
      label = [v5 label];
      label2 = [(AFAccount *)self label];
      if ([label isEqualToString:label2])
      {
        assistantIdentifier = [v5 assistantIdentifier];
        assistantIdentifier2 = [(AFAccount *)self assistantIdentifier];
        if ([assistantIdentifier isEqualToString:assistantIdentifier2])
        {
          loggingAssistantIdentifier = [v5 loggingAssistantIdentifier];
          loggingAssistantIdentifier2 = [(AFAccount *)self loggingAssistantIdentifier];
          v72 = loggingAssistantIdentifier;
          v14 = loggingAssistantIdentifier;
          v15 = loggingAssistantIdentifier2;
          if ([v14 isEqualToString:loggingAssistantIdentifier2])
          {
            v69 = v15;
            speechIdentifier = [v5 speechIdentifier];
            speechIdentifier2 = [(AFAccount *)self speechIdentifier];
            v71 = speechIdentifier;
            if ([speechIdentifier isEqualToString:speechIdentifier2])
            {
              hostname = [v5 hostname];
              hostname2 = [(AFAccount *)self hostname];
              v68 = hostname;
              if ([hostname isEqualToString:hostname2])
              {
                peerAssistantIdentifier = [v5 peerAssistantIdentifier];
                peerAssistantIdentifier2 = [(AFAccount *)self peerAssistantIdentifier];
                v66 = peerAssistantIdentifier;
                v20 = peerAssistantIdentifier;
                v21 = peerAssistantIdentifier2;
                if ([v20 isEqualToString:peerAssistantIdentifier2])
                {
                  v65 = v21;
                  peerLoggingAssistantIdentifier = [v5 peerLoggingAssistantIdentifier];
                  peerLoggingAssistantIdentifier2 = [(AFAccount *)self peerLoggingAssistantIdentifier];
                  v64 = peerLoggingAssistantIdentifier;
                  if ([peerLoggingAssistantIdentifier isEqualToString:peerLoggingAssistantIdentifier2])
                  {
                    peerSpeechIdentifier = [v5 peerSpeechIdentifier];
                    peerSpeechIdentifier2 = [(AFAccount *)self peerSpeechIdentifier];
                    v62 = peerSpeechIdentifier;
                    if ([peerSpeechIdentifier isEqualToString:peerSpeechIdentifier2])
                    {
                      peerUserAgentString = [v5 peerUserAgentString];
                      peerUserAgentString2 = [(AFAccount *)self peerUserAgentString];
                      v60 = peerUserAgentString;
                      v26 = peerUserAgentString;
                      v27 = peerUserAgentString2;
                      if ([v26 isEqualToString:peerUserAgentString2])
                      {
                        v59 = v27;
                        predefinedServer = [v5 predefinedServer];
                        predefinedServer2 = [(AFAccount *)self predefinedServer];
                        v58 = predefinedServer;
                        v30 = predefinedServer;
                        v31 = predefinedServer2;
                        if ([v30 isEqualToString:predefinedServer2])
                        {
                          v57 = v31;
                          aceHost = [v5 aceHost];
                          aceHost2 = [(AFAccount *)self aceHost];
                          v56 = aceHost;
                          v34 = aceHost;
                          v35 = aceHost2;
                          if ([v34 isEqualToString:aceHost2])
                          {
                            connectionPolicy = [v5 connectionPolicy];
                            connectionPolicy2 = [(AFAccount *)self connectionPolicy];
                            if ([connectionPolicy isEqual:?])
                            {
                              v53 = v35;
                              connectionPolicyDate = [v5 connectionPolicyDate];
                              [(AFAccount *)self connectionPolicyDate];
                              v52 = v51 = connectionPolicyDate;
                              if ([connectionPolicyDate isEqual:?])
                              {
                                connectionPolicyHostname = [v5 connectionPolicyHostname];
                                connectionPolicyHostname2 = [(AFAccount *)self connectionPolicyHostname];
                                v50 = connectionPolicyHostname;
                                if ([connectionPolicyHostname isEqualToString:?])
                                {
                                  group = [v5 group];
                                  group2 = [(AFAccount *)self group];
                                  v48 = group;
                                  if ([group isEqualToString:?])
                                  {
                                    lastSyncDates = [v5 lastSyncDates];
                                    lastSyncDates2 = [(AFAccount *)self lastSyncDates];
                                    v46 = lastSyncDates;
                                    v41 = lastSyncDates;
                                    v42 = lastSyncDates2;
                                    if ([v41 isEqual:?])
                                    {
                                      isActive = [v5 isActive];
                                      v43 = isActive ^ [(AFAccount *)self isActive]^ 1;
                                    }

                                    else
                                    {
                                      LOBYTE(v43) = 0;
                                    }
                                  }

                                  else
                                  {
                                    LOBYTE(v43) = 0;
                                  }
                                }

                                else
                                {
                                  LOBYTE(v43) = 0;
                                }
                              }

                              else
                              {
                                LOBYTE(v43) = 0;
                              }

                              v35 = v53;
                            }

                            else
                            {
                              LOBYTE(v43) = 0;
                            }
                          }

                          else
                          {
                            LOBYTE(v43) = 0;
                          }

                          v31 = v57;
                        }

                        else
                        {
                          LOBYTE(v43) = 0;
                        }

                        v27 = v59;
                      }

                      else
                      {
                        LOBYTE(v43) = 0;
                      }
                    }

                    else
                    {
                      LOBYTE(v43) = 0;
                    }

                    v21 = v65;
                  }

                  else
                  {
                    LOBYTE(v43) = 0;
                    v21 = v65;
                  }
                }

                else
                {
                  LOBYTE(v43) = 0;
                }
              }

              else
              {
                LOBYTE(v43) = 0;
              }

              v15 = v69;
            }

            else
            {
              LOBYTE(v43) = 0;
              v15 = v69;
            }
          }

          else
          {
            LOBYTE(v43) = 0;
          }
        }

        else
        {
          LOBYTE(v43) = 0;
        }
      }

      else
      {
        LOBYTE(v43) = 0;
      }
    }

    else
    {
      LOBYTE(v43) = 0;
    }
  }

  else
  {
    LOBYTE(v43) = 0;
  }

  return v43;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  identifier = [(AFAccount *)self identifier];
  [v4 setIdentifier:identifier];

  label = [(AFAccount *)self label];
  [v4 setLabel:label];

  assistantIdentifier = [(AFAccount *)self assistantIdentifier];
  [v4 setAssistantIdentifier:assistantIdentifier];

  loggingAssistantIdentifier = [(AFAccount *)self loggingAssistantIdentifier];
  [v4 setLoggingAssistantIdentifier:loggingAssistantIdentifier];

  speechIdentifier = [(AFAccount *)self speechIdentifier];
  [v4 setSpeechIdentifier:speechIdentifier];

  hostname = [(AFAccount *)self hostname];
  [v4 setHostname:hostname];

  peerAssistantIdentifier = [(AFAccount *)self peerAssistantIdentifier];
  [v4 setPeerAssistantIdentifier:peerAssistantIdentifier];

  peerLoggingAssistantIdentifier = [(AFAccount *)self peerLoggingAssistantIdentifier];
  [v4 setPeerLoggingAssistantIdentifier:peerLoggingAssistantIdentifier];

  peerSpeechIdentifier = [(AFAccount *)self peerSpeechIdentifier];
  [v4 setPeerSpeechIdentifier:peerSpeechIdentifier];

  peerUserAgentString = [(AFAccount *)self peerUserAgentString];
  [v4 setPeerUserAgentString:peerUserAgentString];

  predefinedServer = [(AFAccount *)self predefinedServer];
  [v4 setPredefinedServer:predefinedServer];

  aceHost = [(AFAccount *)self aceHost];
  [v4 setAceHost:aceHost];

  connectionPolicy = [(AFAccount *)self connectionPolicy];
  [v4 setConnectionPolicy:connectionPolicy];

  connectionPolicyDate = [(AFAccount *)self connectionPolicyDate];
  [v4 setConnectionPolicyDate:connectionPolicyDate];

  connectionPolicyHostname = [(AFAccount *)self connectionPolicyHostname];
  [v4 setConnectionPolicyHostname:connectionPolicyHostname];

  connectionPolicyFirstFailureDate = [(AFAccount *)self connectionPolicyFirstFailureDate];
  [v4 setConnectionPolicyFirstFailureDate:connectionPolicyFirstFailureDate];

  group = [(AFAccount *)self group];
  [v4 setGroup:group];

  lastSyncDates = [(AFAccount *)self lastSyncDates];
  [v4 setLastSyncDates:lastSyncDates];

  localeIdentifier = [(AFAccount *)self localeIdentifier];
  [v4 setLocaleIdentifier:localeIdentifier];

  [v4 setIsActive:{-[AFAccount isActive](self, "isActive")}];
  return v4;
}

- (AFAccount)initWithCoder:(id)coder
{
  v50[5] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v49.receiver = self;
  v49.super_class = AFAccount;
  v5 = [(AFAccount *)&v49 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
    label = v5->_label;
    v5->_label = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_assistantIdentifier"];
    assistantIdentifier = v5->_assistantIdentifier;
    v5->_assistantIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_loggingAssistantIdentifier"];
    loggingAssistantIdentifier = v5->_loggingAssistantIdentifier;
    v5->_loggingAssistantIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_speechIdentifier"];
    speechIdentifier = v5->_speechIdentifier;
    v5->_speechIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_hostname"];
    hostname = v5->_hostname;
    v5->_hostname = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_peerAssistantIdentifier"];
    peerAssistantIdentifier = v5->_peerAssistantIdentifier;
    v5->_peerAssistantIdentifier = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_peerLoggingAssistantIdentifier"];
    peerLoggingAssistantIdentifier = v5->_peerLoggingAssistantIdentifier;
    v5->_peerLoggingAssistantIdentifier = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_peerSpeechIdentifier"];
    peerSpeechIdentifier = v5->_peerSpeechIdentifier;
    v5->_peerSpeechIdentifier = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_peerUserAgentString"];
    peerUserAgentString = v5->_peerUserAgentString;
    v5->_peerUserAgentString = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_predefinedServer"];
    predefinedServer = v5->_predefinedServer;
    v5->_predefinedServer = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_aceHost"];
    aceHost = v5->_aceHost;
    v5->_aceHost = v28;

    v30 = MEMORY[0x1E695DFD8];
    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v50[2] = objc_opt_class();
    v50[3] = objc_opt_class();
    v50[4] = objc_opt_class();
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:5];
    v32 = [v30 setWithArray:v31];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"kAFAccountInfoConnectionPolicyKey"];
    connectionPolicy = v5->_connectionPolicy;
    v5->_connectionPolicy = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_connectionPolicyDate"];
    connectionPolicyDate = v5->_connectionPolicyDate;
    v5->_connectionPolicyDate = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_connectionPolicyHostname"];
    connectionPolicyHostname = v5->_connectionPolicyHostname;
    v5->_connectionPolicyHostname = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_connectionPolicyFirstFailureDate"];
    connectionPolicyFirstFailureDate = v5->_connectionPolicyFirstFailureDate;
    v5->_connectionPolicyFirstFailureDate = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_group"];
    group = v5->_group;
    v5->_group = v41;

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lastSyncDates"];
    lastSyncDates = v5->_lastSyncDates;
    v5->_lastSyncDates = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_localeIdentifier"];
    localeIdentifier = v5->_localeIdentifier;
    v5->_localeIdentifier = v45;

    v5->_isActive = [coderCopy decodeBoolForKey:@"_isActive"];
  }

  v47 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"_identifier"];
  [coderCopy encodeObject:self->_label forKey:@"_label"];
  [coderCopy encodeObject:self->_assistantIdentifier forKey:@"_assistantIdentifier"];
  [coderCopy encodeObject:self->_loggingAssistantIdentifier forKey:@"_loggingAssistantIdentifier"];
  [coderCopy encodeObject:self->_speechIdentifier forKey:@"_speechIdentifier"];
  [coderCopy encodeObject:self->_hostname forKey:@"_hostname"];
  [coderCopy encodeObject:self->_peerAssistantIdentifier forKey:@"_peerAssistantIdentifier"];
  [coderCopy encodeObject:self->_peerLoggingAssistantIdentifier forKey:@"_peerLoggingAssistantIdentifier"];
  [coderCopy encodeObject:self->_peerSpeechIdentifier forKey:@"_peerSpeechIdentifier"];
  [coderCopy encodeObject:self->_peerUserAgentString forKey:@"_peerUserAgentString"];
  [coderCopy encodeObject:self->_predefinedServer forKey:@"_predefinedServer"];
  [coderCopy encodeObject:self->_aceHost forKey:@"_aceHost"];
  [coderCopy encodeObject:self->_connectionPolicy forKey:@"_connectionPolicy"];
  [coderCopy encodeObject:self->_connectionPolicyDate forKey:@"_connectionPolicyDate"];
  [coderCopy encodeObject:self->_connectionPolicyHostname forKey:@"_connectionPolicyHostname"];
  [coderCopy encodeObject:self->_connectionPolicyFirstFailureDate forKey:@"_connectionPolicyFirstFailureDate"];
  [coderCopy encodeObject:self->_group forKey:@"_group"];
  [coderCopy encodeObject:self->_lastSyncDates forKey:@"_lastSyncDates"];
  [coderCopy encodeObject:self->_localeIdentifier forKey:@"_localeIdentifier"];
  [coderCopy encodeBool:self->_isActive forKey:@"_isActive"];
}

- (id)messageDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:8];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"kAFAccountInfoIdentifierKey"];
  }

  label = self->_label;
  if (label)
  {
    [v4 setObject:label forKey:@"kAFAccountInfoLabelKey"];
  }

  hostname = self->_hostname;
  if (hostname)
  {
    [v4 setObject:hostname forKey:@"kAFAccountInfoHostnameKey"];
  }

  predefinedServer = self->_predefinedServer;
  if (predefinedServer)
  {
    [v4 setObject:predefinedServer forKey:@"kAFAccountInfoPredefinedServerKey"];
  }

  assistantIdentifier = self->_assistantIdentifier;
  if (assistantIdentifier)
  {
    [v4 setObject:assistantIdentifier forKey:@"kAFAccountInfoAssistantIdentifierKey"];
  }

  loggingAssistantIdentifier = self->_loggingAssistantIdentifier;
  if (loggingAssistantIdentifier)
  {
    [v4 setObject:loggingAssistantIdentifier forKey:@"kAFAccountInfoLoggingAssistantIdentifierKey"];
  }

  speechIdentifier = self->_speechIdentifier;
  if (speechIdentifier)
  {
    [v4 setObject:speechIdentifier forKey:@"kAFAccountInfoSpeechIdentifierKey"];
  }

  aceHost = self->_aceHost;
  if (aceHost)
  {
    [v4 setObject:aceHost forKey:@"kAFAccountInfoAceHostKey"];
  }

  peerAssistantIdentifier = self->_peerAssistantIdentifier;
  if (peerAssistantIdentifier)
  {
    [v4 setObject:peerAssistantIdentifier forKey:@"kAFAccountInfoPeerAssistantIdentifierKey"];
  }

  peerLoggingAssistantIdentifier = self->_peerLoggingAssistantIdentifier;
  if (peerLoggingAssistantIdentifier)
  {
    [v4 setObject:peerLoggingAssistantIdentifier forKey:@"kAFAccountInfoPeerLoggingAssistantIdentifierKey"];
  }

  peerSpeechIdentifier = self->_peerSpeechIdentifier;
  if (peerSpeechIdentifier)
  {
    [v4 setObject:peerSpeechIdentifier forKey:@"kAFAccountInfoPeerSpeechIdentifierKey"];
  }

  peerUserAgentString = self->_peerUserAgentString;
  if (peerUserAgentString)
  {
    [v4 setObject:peerUserAgentString forKey:@"kAFAccountInfoPeerUserAgentStringKey"];
  }

  peerLanguageCode = self->_peerLanguageCode;
  if (peerLanguageCode)
  {
    [v4 setObject:peerLanguageCode forKey:@"kAFAccountInfoPeerLanguageCodeKey"];
  }

  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_peerSiriEnabled];
  [v4 setObject:v18 forKey:@"kAFAccountInfoPeerSiriEnabledKey"];

  peerHostname = self->_peerHostname;
  if (peerHostname)
  {
    [v4 setObject:peerHostname forKey:@"kAFAccountInfoPeerHostnameKey"];
  }

  connectionPolicy = self->_connectionPolicy;
  if (connectionPolicy)
  {
    [v4 setObject:connectionPolicy forKey:@"kAFAccountInfoConnectionPolicyKey"];
  }

  connectionPolicyDate = self->_connectionPolicyDate;
  if (connectionPolicyDate)
  {
    [v4 setObject:connectionPolicyDate forKey:@"kAFAccountInfoConnectionPolicyDateKey"];
  }

  connectionPolicyFirstFailureDate = self->_connectionPolicyFirstFailureDate;
  if (connectionPolicyFirstFailureDate)
  {
    [v4 setObject:connectionPolicyFirstFailureDate forKey:@"kAFAccountConnectionPolicyFirstFailureDate"];
  }

  connectionPolicyHostname = self->_connectionPolicyHostname;
  if (connectionPolicyHostname)
  {
    [v4 setObject:connectionPolicyHostname forKey:@"kAFAccountInfoConnectionPolicyHostnameKey"];
  }

  group = self->_group;
  if (group)
  {
    [v4 setObject:group forKey:@"kAFAccountInfoGroupKey"];
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier)
  {
    [v4 setObject:localeIdentifier forKey:@"kAFAccountInfoLocaleIdentifierKey"];
  }

  return v4;
}

- (AFAccount)initWithMessageDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(AFAccount *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"kAFAccountInfoIdentifierKey"];
    [(AFAccount *)v5 setIdentifier:v6];

    v7 = [dictionaryCopy objectForKey:@"kAFAccountInfoLabelKey"];
    [(AFAccount *)v5 setLabel:v7];

    v8 = [dictionaryCopy objectForKey:@"kAFAccountInfoAssistantIdentifierKey"];
    [(AFAccount *)v5 setAssistantIdentifier:v8];

    v9 = [dictionaryCopy objectForKey:@"kAFAccountInfoLoggingAssistantIdentifierKey"];
    [(AFAccount *)v5 setLoggingAssistantIdentifier:v9];

    v10 = [dictionaryCopy objectForKey:@"kAFAccountInfoSpeechIdentifierKey"];
    [(AFAccount *)v5 setSpeechIdentifier:v10];

    v11 = [dictionaryCopy objectForKey:@"kAFAccountInfoHostnameKey"];
    [(AFAccount *)v5 setHostname:v11];

    v12 = [dictionaryCopy objectForKey:@"kAFAccountInfoPeerAssistantIdentifierKey"];
    [(AFAccount *)v5 setPeerAssistantIdentifier:v12];

    v13 = [dictionaryCopy objectForKey:@"kAFAccountInfoPeerLoggingAssistantIdentifierKey"];
    [(AFAccount *)v5 setPeerLoggingAssistantIdentifier:v13];

    v14 = [dictionaryCopy objectForKey:@"kAFAccountInfoPeerSpeechIdentifierKey"];
    [(AFAccount *)v5 setPeerSpeechIdentifier:v14];

    v15 = [dictionaryCopy objectForKey:@"kAFAccountInfoPeerUserAgentStringKey"];
    [(AFAccount *)v5 setPeerUserAgentString:v15];

    v16 = [dictionaryCopy objectForKey:@"kAFAccountInfoPeerLanguageCodeKey"];
    [(AFAccount *)v5 setPeerLanguageCode:v16];

    v17 = [dictionaryCopy objectForKey:@"kAFAccountInfoPeerSiriEnabledKey"];
    -[AFAccount setPeerSiriEnabled:](v5, "setPeerSiriEnabled:", [v17 BOOLValue]);

    v18 = [dictionaryCopy objectForKey:@"kAFAccountInfoPeerHostnameKey"];
    [(AFAccount *)v5 setPeerHostname:v18];

    v19 = [dictionaryCopy objectForKey:@"kAFAccountInfoPredefinedServerKey"];
    [(AFAccount *)v5 setPredefinedServer:v19];

    v20 = [dictionaryCopy objectForKey:@"kAFAccountInfoAceHostKey"];
    [(AFAccount *)v5 setAceHost:v20];

    v21 = [dictionaryCopy objectForKey:@"kAFAccountInfoConnectionPolicyKey"];
    [(AFAccount *)v5 setConnectionPolicy:v21];

    v22 = [dictionaryCopy objectForKey:@"kAFAccountInfoConnectionPolicyDateKey"];
    [(AFAccount *)v5 setConnectionPolicyDate:v22];

    v23 = [dictionaryCopy objectForKey:@"kAFAccountConnectionPolicyFirstFailureDate"];
    [(AFAccount *)v5 setConnectionPolicyFirstFailureDate:v23];

    v24 = [dictionaryCopy objectForKey:@"kAFAccountInfoConnectionPolicyHostnameKey"];
    [(AFAccount *)v5 setConnectionPolicyHostname:v24];

    v25 = [dictionaryCopy objectForKey:@"kAFAccountInfoGroupKey"];
    [(AFAccount *)v5 setGroup:v25];

    v26 = [dictionaryCopy objectForKey:@"kAFAccountInfoLocaleIdentifierKey"];
    [(AFAccount *)v5 setLocaleIdentifier:v26];

    v27 = [dictionaryCopy objectForKey:@"kAFAccountInfoIsActiveKey"];
    v5->_isActive = [v27 BOOLValue];
  }

  return v5;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AFAccount;
  v3 = [(AFAccount *)&v7 description];
  aceHost = self->_aceHost;
  v5 = [v3 stringByAppendingFormat:@": %@ { Assistant: %@, Host: %@, Ace Host: %@, Group: %@ }", self->_identifier, self->_assistantIdentifier, self->_hostname, aceHost, self->_group];

  return v5;
}

@end