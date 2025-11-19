@interface AFAccount
- (AFAccount)initWithCoder:(id)a3;
- (AFAccount)initWithMessageDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)messageDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFAccount

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 identifier];
    v7 = [(AFAccount *)self identifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = [v5 label];
      v9 = [(AFAccount *)self label];
      if ([v8 isEqualToString:v9])
      {
        v10 = [v5 assistantIdentifier];
        v11 = [(AFAccount *)self assistantIdentifier];
        if ([v10 isEqualToString:v11])
        {
          v12 = [v5 loggingAssistantIdentifier];
          v13 = [(AFAccount *)self loggingAssistantIdentifier];
          v72 = v12;
          v14 = v12;
          v15 = v13;
          if ([v14 isEqualToString:v13])
          {
            v69 = v15;
            v16 = [v5 speechIdentifier];
            v70 = [(AFAccount *)self speechIdentifier];
            v71 = v16;
            if ([v16 isEqualToString:v70])
            {
              v17 = [v5 hostname];
              v67 = [(AFAccount *)self hostname];
              v68 = v17;
              if ([v17 isEqualToString:v67])
              {
                v18 = [v5 peerAssistantIdentifier];
                v19 = [(AFAccount *)self peerAssistantIdentifier];
                v66 = v18;
                v20 = v18;
                v21 = v19;
                if ([v20 isEqualToString:v19])
                {
                  v65 = v21;
                  v22 = [v5 peerLoggingAssistantIdentifier];
                  v63 = [(AFAccount *)self peerLoggingAssistantIdentifier];
                  v64 = v22;
                  if ([v22 isEqualToString:v63])
                  {
                    v23 = [v5 peerSpeechIdentifier];
                    v61 = [(AFAccount *)self peerSpeechIdentifier];
                    v62 = v23;
                    if ([v23 isEqualToString:v61])
                    {
                      v24 = [v5 peerUserAgentString];
                      v25 = [(AFAccount *)self peerUserAgentString];
                      v60 = v24;
                      v26 = v24;
                      v27 = v25;
                      if ([v26 isEqualToString:v25])
                      {
                        v59 = v27;
                        v28 = [v5 predefinedServer];
                        v29 = [(AFAccount *)self predefinedServer];
                        v58 = v28;
                        v30 = v28;
                        v31 = v29;
                        if ([v30 isEqualToString:v29])
                        {
                          v57 = v31;
                          v32 = [v5 aceHost];
                          v33 = [(AFAccount *)self aceHost];
                          v56 = v32;
                          v34 = v32;
                          v35 = v33;
                          if ([v34 isEqualToString:v33])
                          {
                            v55 = [v5 connectionPolicy];
                            v54 = [(AFAccount *)self connectionPolicy];
                            if ([v55 isEqual:?])
                            {
                              v53 = v35;
                              v36 = [v5 connectionPolicyDate];
                              [(AFAccount *)self connectionPolicyDate];
                              v52 = v51 = v36;
                              if ([v36 isEqual:?])
                              {
                                v37 = [v5 connectionPolicyHostname];
                                v49 = [(AFAccount *)self connectionPolicyHostname];
                                v50 = v37;
                                if ([v37 isEqualToString:?])
                                {
                                  v38 = [v5 group];
                                  v47 = [(AFAccount *)self group];
                                  v48 = v38;
                                  if ([v38 isEqualToString:?])
                                  {
                                    v39 = [v5 lastSyncDates];
                                    v40 = [(AFAccount *)self lastSyncDates];
                                    v46 = v39;
                                    v41 = v39;
                                    v42 = v40;
                                    if ([v41 isEqual:?])
                                    {
                                      v45 = [v5 isActive];
                                      v43 = v45 ^ [(AFAccount *)self isActive]^ 1;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(AFAccount *)self identifier];
  [v4 setIdentifier:v5];

  v6 = [(AFAccount *)self label];
  [v4 setLabel:v6];

  v7 = [(AFAccount *)self assistantIdentifier];
  [v4 setAssistantIdentifier:v7];

  v8 = [(AFAccount *)self loggingAssistantIdentifier];
  [v4 setLoggingAssistantIdentifier:v8];

  v9 = [(AFAccount *)self speechIdentifier];
  [v4 setSpeechIdentifier:v9];

  v10 = [(AFAccount *)self hostname];
  [v4 setHostname:v10];

  v11 = [(AFAccount *)self peerAssistantIdentifier];
  [v4 setPeerAssistantIdentifier:v11];

  v12 = [(AFAccount *)self peerLoggingAssistantIdentifier];
  [v4 setPeerLoggingAssistantIdentifier:v12];

  v13 = [(AFAccount *)self peerSpeechIdentifier];
  [v4 setPeerSpeechIdentifier:v13];

  v14 = [(AFAccount *)self peerUserAgentString];
  [v4 setPeerUserAgentString:v14];

  v15 = [(AFAccount *)self predefinedServer];
  [v4 setPredefinedServer:v15];

  v16 = [(AFAccount *)self aceHost];
  [v4 setAceHost:v16];

  v17 = [(AFAccount *)self connectionPolicy];
  [v4 setConnectionPolicy:v17];

  v18 = [(AFAccount *)self connectionPolicyDate];
  [v4 setConnectionPolicyDate:v18];

  v19 = [(AFAccount *)self connectionPolicyHostname];
  [v4 setConnectionPolicyHostname:v19];

  v20 = [(AFAccount *)self connectionPolicyFirstFailureDate];
  [v4 setConnectionPolicyFirstFailureDate:v20];

  v21 = [(AFAccount *)self group];
  [v4 setGroup:v21];

  v22 = [(AFAccount *)self lastSyncDates];
  [v4 setLastSyncDates:v22];

  v23 = [(AFAccount *)self localeIdentifier];
  [v4 setLocaleIdentifier:v23];

  [v4 setIsActive:{-[AFAccount isActive](self, "isActive")}];
  return v4;
}

- (AFAccount)initWithCoder:(id)a3
{
  v50[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v49.receiver = self;
  v49.super_class = AFAccount;
  v5 = [(AFAccount *)&v49 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
    label = v5->_label;
    v5->_label = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_assistantIdentifier"];
    assistantIdentifier = v5->_assistantIdentifier;
    v5->_assistantIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_loggingAssistantIdentifier"];
    loggingAssistantIdentifier = v5->_loggingAssistantIdentifier;
    v5->_loggingAssistantIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_speechIdentifier"];
    speechIdentifier = v5->_speechIdentifier;
    v5->_speechIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_hostname"];
    hostname = v5->_hostname;
    v5->_hostname = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_peerAssistantIdentifier"];
    peerAssistantIdentifier = v5->_peerAssistantIdentifier;
    v5->_peerAssistantIdentifier = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_peerLoggingAssistantIdentifier"];
    peerLoggingAssistantIdentifier = v5->_peerLoggingAssistantIdentifier;
    v5->_peerLoggingAssistantIdentifier = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_peerSpeechIdentifier"];
    peerSpeechIdentifier = v5->_peerSpeechIdentifier;
    v5->_peerSpeechIdentifier = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_peerUserAgentString"];
    peerUserAgentString = v5->_peerUserAgentString;
    v5->_peerUserAgentString = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_predefinedServer"];
    predefinedServer = v5->_predefinedServer;
    v5->_predefinedServer = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_aceHost"];
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
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"kAFAccountInfoConnectionPolicyKey"];
    connectionPolicy = v5->_connectionPolicy;
    v5->_connectionPolicy = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_connectionPolicyDate"];
    connectionPolicyDate = v5->_connectionPolicyDate;
    v5->_connectionPolicyDate = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_connectionPolicyHostname"];
    connectionPolicyHostname = v5->_connectionPolicyHostname;
    v5->_connectionPolicyHostname = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_connectionPolicyFirstFailureDate"];
    connectionPolicyFirstFailureDate = v5->_connectionPolicyFirstFailureDate;
    v5->_connectionPolicyFirstFailureDate = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_group"];
    group = v5->_group;
    v5->_group = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lastSyncDates"];
    lastSyncDates = v5->_lastSyncDates;
    v5->_lastSyncDates = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_localeIdentifier"];
    localeIdentifier = v5->_localeIdentifier;
    v5->_localeIdentifier = v45;

    v5->_isActive = [v4 decodeBoolForKey:@"_isActive"];
  }

  v47 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"_identifier"];
  [v5 encodeObject:self->_label forKey:@"_label"];
  [v5 encodeObject:self->_assistantIdentifier forKey:@"_assistantIdentifier"];
  [v5 encodeObject:self->_loggingAssistantIdentifier forKey:@"_loggingAssistantIdentifier"];
  [v5 encodeObject:self->_speechIdentifier forKey:@"_speechIdentifier"];
  [v5 encodeObject:self->_hostname forKey:@"_hostname"];
  [v5 encodeObject:self->_peerAssistantIdentifier forKey:@"_peerAssistantIdentifier"];
  [v5 encodeObject:self->_peerLoggingAssistantIdentifier forKey:@"_peerLoggingAssistantIdentifier"];
  [v5 encodeObject:self->_peerSpeechIdentifier forKey:@"_peerSpeechIdentifier"];
  [v5 encodeObject:self->_peerUserAgentString forKey:@"_peerUserAgentString"];
  [v5 encodeObject:self->_predefinedServer forKey:@"_predefinedServer"];
  [v5 encodeObject:self->_aceHost forKey:@"_aceHost"];
  [v5 encodeObject:self->_connectionPolicy forKey:@"_connectionPolicy"];
  [v5 encodeObject:self->_connectionPolicyDate forKey:@"_connectionPolicyDate"];
  [v5 encodeObject:self->_connectionPolicyHostname forKey:@"_connectionPolicyHostname"];
  [v5 encodeObject:self->_connectionPolicyFirstFailureDate forKey:@"_connectionPolicyFirstFailureDate"];
  [v5 encodeObject:self->_group forKey:@"_group"];
  [v5 encodeObject:self->_lastSyncDates forKey:@"_lastSyncDates"];
  [v5 encodeObject:self->_localeIdentifier forKey:@"_localeIdentifier"];
  [v5 encodeBool:self->_isActive forKey:@"_isActive"];
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

- (AFAccount)initWithMessageDictionary:(id)a3
{
  v4 = a3;
  v5 = [(AFAccount *)self init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"kAFAccountInfoIdentifierKey"];
    [(AFAccount *)v5 setIdentifier:v6];

    v7 = [v4 objectForKey:@"kAFAccountInfoLabelKey"];
    [(AFAccount *)v5 setLabel:v7];

    v8 = [v4 objectForKey:@"kAFAccountInfoAssistantIdentifierKey"];
    [(AFAccount *)v5 setAssistantIdentifier:v8];

    v9 = [v4 objectForKey:@"kAFAccountInfoLoggingAssistantIdentifierKey"];
    [(AFAccount *)v5 setLoggingAssistantIdentifier:v9];

    v10 = [v4 objectForKey:@"kAFAccountInfoSpeechIdentifierKey"];
    [(AFAccount *)v5 setSpeechIdentifier:v10];

    v11 = [v4 objectForKey:@"kAFAccountInfoHostnameKey"];
    [(AFAccount *)v5 setHostname:v11];

    v12 = [v4 objectForKey:@"kAFAccountInfoPeerAssistantIdentifierKey"];
    [(AFAccount *)v5 setPeerAssistantIdentifier:v12];

    v13 = [v4 objectForKey:@"kAFAccountInfoPeerLoggingAssistantIdentifierKey"];
    [(AFAccount *)v5 setPeerLoggingAssistantIdentifier:v13];

    v14 = [v4 objectForKey:@"kAFAccountInfoPeerSpeechIdentifierKey"];
    [(AFAccount *)v5 setPeerSpeechIdentifier:v14];

    v15 = [v4 objectForKey:@"kAFAccountInfoPeerUserAgentStringKey"];
    [(AFAccount *)v5 setPeerUserAgentString:v15];

    v16 = [v4 objectForKey:@"kAFAccountInfoPeerLanguageCodeKey"];
    [(AFAccount *)v5 setPeerLanguageCode:v16];

    v17 = [v4 objectForKey:@"kAFAccountInfoPeerSiriEnabledKey"];
    -[AFAccount setPeerSiriEnabled:](v5, "setPeerSiriEnabled:", [v17 BOOLValue]);

    v18 = [v4 objectForKey:@"kAFAccountInfoPeerHostnameKey"];
    [(AFAccount *)v5 setPeerHostname:v18];

    v19 = [v4 objectForKey:@"kAFAccountInfoPredefinedServerKey"];
    [(AFAccount *)v5 setPredefinedServer:v19];

    v20 = [v4 objectForKey:@"kAFAccountInfoAceHostKey"];
    [(AFAccount *)v5 setAceHost:v20];

    v21 = [v4 objectForKey:@"kAFAccountInfoConnectionPolicyKey"];
    [(AFAccount *)v5 setConnectionPolicy:v21];

    v22 = [v4 objectForKey:@"kAFAccountInfoConnectionPolicyDateKey"];
    [(AFAccount *)v5 setConnectionPolicyDate:v22];

    v23 = [v4 objectForKey:@"kAFAccountConnectionPolicyFirstFailureDate"];
    [(AFAccount *)v5 setConnectionPolicyFirstFailureDate:v23];

    v24 = [v4 objectForKey:@"kAFAccountInfoConnectionPolicyHostnameKey"];
    [(AFAccount *)v5 setConnectionPolicyHostname:v24];

    v25 = [v4 objectForKey:@"kAFAccountInfoGroupKey"];
    [(AFAccount *)v5 setGroup:v25];

    v26 = [v4 objectForKey:@"kAFAccountInfoLocaleIdentifierKey"];
    [(AFAccount *)v5 setLocaleIdentifier:v26];

    v27 = [v4 objectForKey:@"kAFAccountInfoIsActiveKey"];
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