@interface ADAccount
+ (BOOL)setActiveAccountIdentifier:(id)a3;
+ (id)_accountForIdentifier:(id)a3 infoDictionary:(id)a4 intanceContext:(id)a5 isReadOnly:(BOOL)a6 isCoupledToHost:(BOOL)a7;
+ (id)accountForIdentifier:(id)a3;
+ (id)activeAccountForInstanceContext:(id)a3;
- (ADAccount)init;
- (ADAccount)initWithMessageDictionary:(id)a3;
- (BOOL)_onQueueSetKeychainValue:(id)a3 forKey:(id)a4;
- (BOOL)_setKeychainValueSync:(id)a3 forKey:(id)a4;
- (BOOL)setLocalCryptoKeyData:(id)a3;
- (BOOL)setValidationDataSync:(id)a3;
- (BOOL)watchExistsForAssistantId:(id)a3;
- (NSString)hostname;
- (NSString)identifier;
- (NSString)localeIdentifier;
- (NSString)peerHostname;
- (id)_hostnameOverride;
- (id)_hostnameQAOverride;
- (id)_infoDictionaryForPreferences;
- (id)_keychainValueForKey:(id)a3;
- (id)_preferences;
- (id)_serverOverrideFromPreferences;
- (id)aceHostCluster;
- (id)connectionPolicyExpirationDate;
- (id)description;
- (id)localCryptoKeyData;
- (id)messageDictionary;
- (id)pairedWatches;
- (id)saConnectionPolicy;
- (id)saRemoteDevice:(id)a3;
- (id)serverCertificateData;
- (id)validationData;
- (int64_t)connectionPolicyStatus;
- (void)_markKeychainValuesAsDirty;
- (void)_removeKeychainValueForKey:(id)a3;
- (void)_setKeychainValue:(id)a3 forKey:(id)a4;
- (void)clearAssistantData;
- (void)clearAssistantDataDuringForcedRedirect;
- (void)removeAndSave;
- (void)resetCachedHostname;
- (void)save;
- (void)setAssistantIdentifier:(id)a3;
- (void)setHostname:(id)a3;
- (void)setLoggingAssistantIdentifier:(id)a3;
- (void)setPairedWatches:(id)a3;
- (void)setPeerAssistantIdentifier:(id)a3;
- (void)setPeerHostname:(id)a3;
- (void)setPeerLanguageCode:(id)a3;
- (void)setPeerLoggingAssistantIdentifier:(id)a3;
- (void)setPeerSiriEnabled:(BOOL)a3;
- (void)setPeerSpeechIdentifier:(id)a3;
- (void)setPeerUserAgentString:(id)a3;
- (void)setServerCertificateData:(id)a3;
- (void)setSpeechIdentifier:(id)a3;
- (void)setValidationData:(id)a3;
- (void)setValidationExpiration:(id)a3;
- (void)updateAssistantIdentifiers;
- (void)updateGizmoData:(id)a3 forUniqueId:(id)a4;
@end

@implementation ADAccount

- (ADAccount)init
{
  v7.receiver = self;
  v7.super_class = ADAccount;
  v2 = [(ADAccount *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create(0, v3);

    keychainQueue = v2->_keychainQueue;
    v2->_keychainQueue = v4;
  }

  return v2;
}

- (id)description
{
  v3 = [NSString alloc];
  v7.receiver = self;
  v7.super_class = ADAccount;
  v4 = [(ADAccount *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ {identifier = %@, label = %@, assistantIdentifier = %@, speechIdentifier = %@} (needsCreation = %d, needsDestruction = %d, isReadOnly = %d)", v4, self->_identifier, self->_label, self->_assistantIdentifier, self->_speechIdentifier, self->_needsCreation, self->_needsDestruction, self->_isReadOnly];

  return v5;
}

- (NSString)hostname
{
  cachedHostname = self->_cachedHostname;
  if (cachedHostname)
  {
    v3 = cachedHostname;
  }

  else
  {
    if (AFIsInternalInstall())
    {
      v5 = [(ADAccount *)self _hostnameOverride];
      hostname = v5;
      if (v5 || (hostname = self->_hostname) != 0)
      {
        v7 = hostname;
      }

      else
      {
        v7 = @"https://guzzoni.apple.com";
      }
    }

    else
    {
      v7 = @"https://guzzoni.apple.com";
    }

    v8 = [(ADAccount *)self _hostnameQAOverride];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    v11 = v10;

    v12 = [v11 copy];
    v13 = self->_cachedHostname;
    self->_cachedHostname = v12;

    v3 = self->_cachedHostname;
  }

  return v3;
}

- (id)_hostnameOverride
{
  v3 = AFInternalConfigValueForKey();
  v4 = self->_predefinedServer;
  if (!v4)
  {
    if (AFPreferencesShouldIgnoreInternalConfig())
    {
      v4 = 0;
LABEL_14:
      v5 = 0;
      goto LABEL_15;
    }

    hostname = self->_hostname;
    if (hostname && ![(NSString *)hostname isEqualToString:@"https://guzzoni.apple.com"])
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000CB53C;
      v11[3] = &unk_100510C28;
      v11[4] = self;
      v8 = [v3 keysOfEntriesPassingTest:v11];
      if ([v8 count])
      {
        v4 = [v8 anyObject];
      }

      else
      {
        v9 = AFInternalConfigValueForKey();
        v4 = [v9 objectForKey:self->_hostname];
      }

      if (!v4)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = AFInternalConfigValueForKey();
      if (!v4)
      {
        goto LABEL_14;
      }
    }

    [(ADAccount *)self setPredefinedServer:v4];
  }

  v5 = [v3 objectForKey:v4];
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "[ADAccount _hostnameOverride]";
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Found Predefined Server '%@' = %@", buf, 0x20u);
  }

LABEL_15:

  return v5;
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (!identifier)
  {
    v4 = SiriCoreUUIDStringCreate();
    v5 = self->_identifier;
    self->_identifier = v4;

    [(ADAccount *)self _markKeychainValuesAsDirty];
    identifier = self->_identifier;
  }

  return identifier;
}

- (id)messageDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:kAFAccountInfoIdentifierKey];
  }

  label = self->_label;
  if (label)
  {
    [v4 setObject:label forKey:kAFAccountInfoLabelKey];
  }

  assistantIdentifier = self->_assistantIdentifier;
  if (assistantIdentifier)
  {
    [v4 setObject:assistantIdentifier forKey:kAFAccountInfoAssistantIdentifierKey];
  }

  loggingAssistantIdentifier = self->_loggingAssistantIdentifier;
  if (loggingAssistantIdentifier)
  {
    [v4 setObject:loggingAssistantIdentifier forKey:kAFAccountInfoLoggingAssistantIdentifierKey];
  }

  speechIdentifier = self->_speechIdentifier;
  if (speechIdentifier)
  {
    [v4 setObject:speechIdentifier forKey:kAFAccountInfoSpeechIdentifierKey];
  }

  v10 = [(ADAccount *)self hostname];
  [v4 setObject:v10 forKey:kAFAccountInfoHostnameKey];

  peerAssistantIdentifier = self->_peerAssistantIdentifier;
  if (peerAssistantIdentifier)
  {
    [v4 setObject:peerAssistantIdentifier forKey:kAFAccountInfoPeerAssistantIdentifierKey];
  }

  peerLoggingAssistantIdentifier = self->_peerLoggingAssistantIdentifier;
  if (peerLoggingAssistantIdentifier)
  {
    [v4 setObject:peerLoggingAssistantIdentifier forKey:kAFAccountInfoPeerLoggingAssistantIdentifierKey];
  }

  peerSpeechIdentifier = self->_peerSpeechIdentifier;
  if (peerSpeechIdentifier)
  {
    [v4 setObject:peerSpeechIdentifier forKey:kAFAccountInfoPeerSpeechIdentifierKey];
  }

  peerUserAgentString = self->_peerUserAgentString;
  if (peerUserAgentString)
  {
    [v4 setObject:peerUserAgentString forKey:kAFAccountInfoPeerUserAgentStringKey];
  }

  peerLanguageCode = self->_peerLanguageCode;
  if (peerLanguageCode)
  {
    [v4 setObject:peerLanguageCode forKey:kAFAccountInfoPeerLanguageCodeKey];
  }

  v16 = [NSNumber numberWithBool:self->_peerSiriEnabled];
  [v4 setObject:v16 forKey:kAFAccountInfoPeerSiriEnabledKey];

  peerHostname = self->_peerHostname;
  if (peerHostname)
  {
    [v4 setObject:peerHostname forKey:kAFAccountInfoPeerHostnameKey];
  }

  group = self->_group;
  if (group)
  {
    [v4 setObject:group forKey:kAFAccountInfoGroupKey];
  }

  predefinedServer = self->_predefinedServer;
  if (predefinedServer)
  {
    [v4 setObject:predefinedServer forKey:kAFAccountInfoPredefinedServerKey];
  }

  aceHost = self->_aceHost;
  if (aceHost)
  {
    [v4 setObject:aceHost forKey:kAFAccountInfoAceHostKey];
  }

  connectionPolicy = self->_connectionPolicy;
  if (connectionPolicy)
  {
    [v4 setObject:connectionPolicy forKey:kAFAccountInfoConnectionPolicyKey];
  }

  connectionPolicyDate = self->_connectionPolicyDate;
  if (connectionPolicyDate)
  {
    [v4 setObject:connectionPolicyDate forKey:kAFAccountInfoConnectionPolicyDateKey];
  }

  connectionPolicyFirstFailureDate = self->_connectionPolicyFirstFailureDate;
  if (connectionPolicyFirstFailureDate)
  {
    [v4 setObject:connectionPolicyFirstFailureDate forKey:kAFAccountInfoConnectionPolicyFirstFailureDateKey];
  }

  connectionPolicyHostname = self->_connectionPolicyHostname;
  if (connectionPolicyHostname)
  {
    [v4 setObject:connectionPolicyHostname forKey:kAFAccountInfoConnectionPolicyHostnameKey];
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier)
  {
    [v4 setObject:localeIdentifier forKey:kAFAccountInfoLocaleIdentifierKey];
  }

  v26 = [NSNumber numberWithBool:self->_needsCreation];
  [v4 setObject:v26 forKey:kAFAccountInfoNeedsCreationKey];

  v27 = [NSNumber numberWithBool:self->_needsDestruction];
  [v4 setObject:v27 forKey:kAFAccountInfoNeedsDestructionKey];

  return v4;
}

- (id)_hostnameQAOverride
{
  if (self->_hasCachedHostnameQAOverride)
  {
    v3 = self->_cachedHostnameQAOverride;
  }

  else
  {
    v4 = [(ADAccount *)self _serverOverrideFromPreferences];
    v5 = v4;
    if (v4)
    {
      if (([v4 hasSuffix:@"apple.com"] & 1) != 0 || (objc_msgSend(v5, "rangeOfString:", @"apple.com:"), v6))
      {
        v7 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v12 = 136315394;
          v13 = "[ADAccount _hostnameQAOverride]";
          v14 = 2112;
          v15 = v5;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Using Server Override %@", &v12, 0x16u);
        }
      }

      else
      {
        v8 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v12 = 136315394;
          v13 = "[ADAccount _hostnameQAOverride]";
          v14 = 2112;
          v15 = v5;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Bad server override %@", &v12, 0x16u);
        }

        v5 = 0;
      }
    }

    self->_hasCachedHostnameQAOverride = 1;
    cachedHostnameQAOverride = self->_cachedHostnameQAOverride;
    self->_cachedHostnameQAOverride = v5;
    v10 = v5;

    v3 = self->_cachedHostnameQAOverride;
  }

  return v3;
}

- (id)_serverOverrideFromPreferences
{
  v2 = [(ADAccount *)self _preferences];
  v3 = [v2 serverOverride];

  return v3;
}

- (id)_preferences
{
  instanceContext = self->_instanceContext;
  if (!instanceContext || [(AFInstanceContext *)instanceContext isCurrent])
  {
    v4 = +[ADPreferences sharedPreferences];
  }

  else
  {
    v4 = [[ADPreferences alloc] initWithInstanceContext:self->_instanceContext];
  }

  return v4;
}

- (id)validationData
{
  cachedValidationData = self->_cachedValidationData;
  if (!cachedValidationData)
  {
    v4 = [(ADAccount *)self _keychainValueForKey:@"Validation Data"];
    v5 = [v4 copy];
    v6 = self->_cachedValidationData;
    self->_cachedValidationData = v5;

    cachedValidationData = self->_cachedValidationData;
  }

  return cachedValidationData;
}

- (void)save
{
  isReadOnly = self->_isReadOnly;
  v4 = AFSiriLogContextDaemon;
  v5 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (isReadOnly)
  {
    if (!v5)
    {
      return;
    }

    v6 = v4;
    v7 = [(ADAccount *)self identifier];
    v28 = 136315394;
    v29 = "[ADAccount save]";
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Unable to save account info %@ because it is read only.", &v28, 0x16u);
  }

  else
  {
    if (v5)
    {
      v8 = v4;
      v9 = [(ADAccount *)self identifier];
      v28 = 136315394;
      v29 = "[ADAccount save]";
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Saving account info %@", &v28, 0x16u);
    }

    v6 = [(ADAccount *)self _preferences];
    v10 = [(ADAccount *)self identifier];
    v11 = [v6 accountInfoForIdentifier:v10];

    if (v11)
    {
      v12 = [v11 valueForKey:@"Assistant Identifier"];
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        assistantIdentifier = self->_assistantIdentifier;
        v28 = 136315651;
        v29 = "[ADAccount save]";
        v30 = 2113;
        v31 = v12;
        v32 = 2113;
        v33 = assistantIdentifier;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s oldAssistantID:%{private}@\tnewAssistantID:%{private}@", &v28, 0x20u);
      }

      v15 = self->_assistantIdentifier;
      v16 = !v12 && v15 || ([v12 isEqualToString:v15] & 1) == 0;
      v18 = [v11 valueForKey:@"Speech Identifier"];
      v19 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        speechIdentifier = self->_speechIdentifier;
        v28 = 136315651;
        v29 = "[ADAccount save]";
        v30 = 2113;
        v31 = v18;
        v32 = 2113;
        v33 = speechIdentifier;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s oldSpeechID:%{private}@\tnewSpeechID:%{private}@", &v28, 0x20u);
      }

      v21 = self->_speechIdentifier;
      v17 = !v18 && v21 || ([v18 isEqualToString:v21] & 1) == 0;
    }

    else
    {
      v17 = 1;
      v16 = 1;
    }

    v22 = [(ADAccount *)self _infoDictionaryForPreferences];
    v23 = [(ADAccount *)self identifier];
    [v6 setAccountInfo:v22 forIdentifier:v23];

    [v6 synchronize];
    if (self->_sharedDataChanged)
    {
      v24 = +[NSNotificationCenter defaultCenter];
      [v24 postNotificationName:@"ADSharedDataDidChangeNotification" object:0];

      self->_sharedDataChanged = 0;
    }

    if (v16)
    {
      v25 = +[NSNotificationCenter defaultCenter];
      [v25 postNotificationName:@"ADActiveAccountIdentifierDidChangeNotification" object:0];

      if (self->_assistantIdentifier)
      {
        v26 = +[NSNotificationCenter defaultCenter];
        [v26 postNotificationName:@"AssistantAccountCreated" object:0];
      }
    }

    if (v17)
    {
      v27 = objc_alloc_init(ADAnalyticsFBFDeliveryInfrastructure);
      [(ADAnalyticsFBFDeliveryInfrastructure *)v27 deliverLogViewerIdentifier:self->_speechIdentifier];
    }
  }
}

- (id)_infoDictionaryForPreferences
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = v3;
  label = self->_label;
  if (label)
  {
    [v3 setObject:label forKey:@"Label"];
  }

  hostname = self->_hostname;
  if (hostname)
  {
    [v4 setObject:hostname forKey:@"Hostname"];
  }

  group = self->_group;
  if (group)
  {
    [v4 setObject:group forKey:@"Group"];
  }

  predefinedServer = self->_predefinedServer;
  if (predefinedServer)
  {
    [v4 setObject:predefinedServer forKey:@"Predefined Server"];
  }

  aceHost = self->_aceHost;
  if (aceHost)
  {
    [v4 setObject:aceHost forKey:@"Ace Host"];
  }

  connectionPolicy = self->_connectionPolicy;
  if (connectionPolicy)
  {
    [v4 setObject:connectionPolicy forKey:@"Connection Policy"];
  }

  connectionPolicyDate = self->_connectionPolicyDate;
  if (connectionPolicyDate)
  {
    [v4 setObject:connectionPolicyDate forKey:@"Connection Policy Date"];
  }

  connectionPolicyFirstFailureDate = self->_connectionPolicyFirstFailureDate;
  if (connectionPolicyFirstFailureDate)
  {
    [v4 setObject:connectionPolicyFirstFailureDate forKey:@"Connection Policy First Failure Date"];
  }

  connectionPolicyHostname = self->_connectionPolicyHostname;
  if (connectionPolicyHostname)
  {
    [v4 setObject:connectionPolicyHostname forKey:@"Connection Policy Hostname"];
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier)
  {
    [v4 setObject:localeIdentifier forKey:@"Locale Identifier"];
  }

  lastAssistantDataAnchor = self->_lastAssistantDataAnchor;
  if (lastAssistantDataAnchor)
  {
    [v4 setObject:lastAssistantDataAnchor forKey:@"Last Assistant Data Anchor"];
  }

  validationExpiration = self->_validationExpiration;
  if (validationExpiration)
  {
    [v4 setObject:validationExpiration forKey:@"Validation Expiration"];
  }

  validationVersion = self->_validationVersion;
  if (validationVersion)
  {
    [v4 setObject:validationVersion forKey:@"Validation Version"];
  }

  peerHostname = self->_peerHostname;
  if (peerHostname)
  {
    [v4 setObject:peerHostname forKey:@"Peer Hostname"];
  }

  if (self->_needsCreation)
  {
    v19 = [NSNumber numberWithBool:1];
    [v4 setObject:v19 forKey:@"Needs Creation"];
  }

  if (self->_needsDestruction)
  {
    v20 = [NSNumber numberWithBool:1];
    [v4 setObject:v20 forKey:@"Needs Destruction"];
  }

  v21 = AFBuildVersion();
  if (v21)
  {
    [v4 setObject:v21 forKey:@"Build Version"];
  }

  if (self->_identifier)
  {
    v22 = self->_assistantIdentifier;
    v37 = self->_loggingAssistantIdentifier;
    v23 = self->_speechIdentifier;
    v24 = self->_peerAssistantIdentifier;
    v39 = self->_peerLoggingAssistantIdentifier;
    v41 = self->_peerSpeechIdentifier;
    v25 = self->_peerUserAgentString;
    v26 = self->_peerLanguageCode;
    peerSiriEnabled = self->_peerSiriEnabled;
    v28 = [(ADAccount *)self pairedWatches];
    queue = self->_keychainQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001C2D8;
    block[3] = &unk_100516278;
    block[4] = self;
    v47 = v22;
    v29 = v22;
    v48 = v37;
    v49 = v23;
    v50 = v24;
    v51 = v39;
    v52 = v41;
    v53 = v25;
    v56 = peerSiriEnabled;
    v54 = v26;
    v55 = v28;
    v45 = v28;
    v44 = v26;
    v43 = v25;
    v42 = v41;
    v40 = v39;
    v30 = v24;
    v31 = v23;
    v32 = v37;
    v33 = v29;
    dispatch_async(queue, block);
  }

  if ([v4 count])
  {
    v34 = v4;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;

  return v34;
}

- (id)pairedWatches
{
  v3 = objc_alloc_init(NSMutableSet);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_pairedWatches;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) copy];
        [v3 addObject:v9];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)removeAndSave
{
  if (self->_identifier)
  {
    if (self->_isReadOnly)
    {
      v3 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v4 = v3;
        v5 = [(ADAccount *)self identifier];
        *buf = 136315394;
        v8 = "[ADAccount removeAndSave]";
        v9 = 2112;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Unable to remove and save account info %@ because it is read only.", buf, 0x16u);
      }
    }

    else
    {
      v6 = [(ADAccount *)self _preferences];
      [v6 setAccountInfo:0 forIdentifier:self->_identifier];
      [v6 synchronize];
      [(ADAccount *)self setServerCertificateData:0];
      [(ADAccount *)self setValidationData:0];
      [(ADAccount *)self setLocalCryptoKeyData:0];
      [(ADAccount *)self _removeKeychainValueForKey:@"Assistant Identifier"];
      [(ADAccount *)self _removeKeychainValueForKey:@"Logging Assistant Identifier"];
      [(ADAccount *)self _removeKeychainValueForKey:@"Speech Identifier"];
      if ((AFIsNano() & 1) != 0 || AFIsHorseman())
      {
        [(ADAccount *)self _removeKeychainValueForKey:@"Peer Assistant Identifier"];
        [(ADAccount *)self _removeKeychainValueForKey:@"Peer Logging Assistant Identifier"];
        [(ADAccount *)self _removeKeychainValueForKey:@"Peer Speech Identifier"];
        [(ADAccount *)self _removeKeychainValueForKey:@"Peer User Agent String"];
        [(ADAccount *)self _removeKeychainValueForKey:@"Peer Language Code"];
        [(ADAccount *)self _removeKeychainValueForKey:@"Peer Siri Enabled"];
      }

      if (AFSupportsPairedDevice() && (AFIsNano() & 1) == 0)
      {
        [(ADAccount *)self _removeKeychainValueForKey:@"Watch Data Exists"];
      }

      [(ADAccount *)self _markKeychainValuesAsDirty];
    }
  }
}

- (void)updateAssistantIdentifiers
{
  v3 = +[NSUUID UUID];
  v4 = [v3 UUIDString];

  v5 = +[NSUUID UUID];
  v6 = [v5 UUIDString];

  v7 = +[NSUUID UUID];
  v8 = [v7 UUIDString];

  [(ADAccount *)self setAssistantIdentifier:v4];
  [(ADAccount *)self setLoggingAssistantIdentifier:v6];
  [(ADAccount *)self setSpeechIdentifier:v8];
  v9 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v10 = 136315906;
    v11 = "[ADAccount updateAssistantIdentifiers]";
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s assistantId created: %@ loggingAssistantId: %@ speechId: %@", &v10, 0x2Au);
  }
}

- (BOOL)_setKeychainValueSync:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_isReadOnly || !self->_identifier)
  {
    v9 = 0;
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    keychainQueue = self->_keychainQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000CAABC;
    v11[3] = &unk_100517400;
    v15 = &v16;
    v12 = v6;
    v13 = self;
    v14 = v7;
    dispatch_sync(keychainQueue, v11);
    v9 = *(v17 + 24);

    _Block_object_dispose(&v16, 8);
  }

  return v9 & 1;
}

- (BOOL)_onQueueSetKeychainValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_keychainQueue);
  if (self->_isReadOnly || !self->_identifier)
  {
    v8 = 0;
  }

  else
  {
    v8 = AFKeychainSetValueForAccountAndKey();
  }

  return v8;
}

- (void)_setKeychainValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_isReadOnly && self->_identifier)
  {
    keychainQueue = self->_keychainQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CAC44;
    block[3] = &unk_10051DB68;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(keychainQueue, block);
  }
}

- (void)_removeKeychainValueForKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_isReadOnly)
  {
    keychainQueue = self->_keychainQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000CAD00;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = v4;
    dispatch_async(keychainQueue, v7);
  }
}

- (id)_keychainValueForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000CAE1C;
  v16 = sub_1000CAE2C;
  v17 = 0;
  keychainQueue = self->_keychainQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CAE34;
  block[3] = &unk_10051C588;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(keychainQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)_markKeychainValuesAsDirty
{
  keychainQueue = self->_keychainQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CAEF8;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(keychainQueue, block);
}

- (id)aceHostCluster
{
  v2 = [(ADAccount *)self aceHost];
  v3 = [v2 componentsSeparatedByString:@":"];
  v4 = [v3 firstObject];

  return v4;
}

- (void)clearAssistantDataDuringForcedRedirect
{
  [(ADAccount *)self resetCachedHostname];
  [(ADAccount *)self setAceHost:0];
  [(ADAccount *)self setConnectionPolicy:0];
  [(ADAccount *)self setConnectionPolicyDate:0];
  [(ADAccount *)self setConnectionPolicyHostname:0];
  [(ADAccount *)self setLastAssistantDataAnchor:0];
  [(ADAccount *)self setNeedsCreation:0];
  [(ADAccount *)self setNeedsDestruction:0];
  [(ADAccount *)self setConnectionPolicyFailureCount:0];

  [(ADAccount *)self setConnectionPolicyFirstFailureDate:0];
}

- (void)clearAssistantData
{
  [(ADAccount *)self setAssistantIdentifier:0];
  [(ADAccount *)self setLoggingAssistantIdentifier:0];
  [(ADAccount *)self setSpeechIdentifier:0];
  [(ADAccount *)self setAceHost:0];
  [(ADAccount *)self setConnectionPolicy:0];
  [(ADAccount *)self setConnectionPolicyDate:0];
  [(ADAccount *)self setConnectionPolicyHostname:0];
  [(ADAccount *)self setLastAssistantDataAnchor:0];
  [(ADAccount *)self setNeedsCreation:0];
  [(ADAccount *)self setNeedsDestruction:0];
  [(ADAccount *)self setConnectionPolicyFailureCount:0];
  [(ADAccount *)self setConnectionPolicyFirstFailureDate:0];
  v3 = [(ADAccount *)self _preferences];
  [v3 setCountryCode:0];
}

- (BOOL)setLocalCryptoKeyData:(id)a3
{
  v4 = a3;
  v5 = [(ADAccount *)self _setKeychainValueSync:v4 forKey:@"Local Crypto Key Data"];
  if (v5)
  {
    v6 = [v4 copy];
    cachedLocalCryptoKeyData = self->_cachedLocalCryptoKeyData;
    self->_cachedLocalCryptoKeyData = v6;
  }

  return v5;
}

- (id)localCryptoKeyData
{
  cachedLocalCryptoKeyData = self->_cachedLocalCryptoKeyData;
  if (!cachedLocalCryptoKeyData)
  {
    v4 = [(ADAccount *)self _keychainValueForKey:@"Local Crypto Key Data"];
    v5 = [v4 copy];
    v6 = self->_cachedLocalCryptoKeyData;
    self->_cachedLocalCryptoKeyData = v5;

    cachedLocalCryptoKeyData = self->_cachedLocalCryptoKeyData;
  }

  return cachedLocalCryptoKeyData;
}

- (void)setValidationExpiration:(id)a3
{
  self->_validationExpiration = [a3 copy];

  _objc_release_x1();
}

- (BOOL)setValidationDataSync:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  cachedValidationData = self->_cachedValidationData;
  self->_cachedValidationData = v5;

  LOBYTE(self) = [(ADAccount *)self _setKeychainValueSync:v4 forKey:@"Validation Data"];
  return self;
}

- (void)setValidationData:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  cachedValidationData = self->_cachedValidationData;
  self->_cachedValidationData = v4;

  [(ADAccount *)self _setKeychainValue:v6 forKey:@"Validation Data"];
}

- (void)setServerCertificateData:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  cachedServerCertificateData = self->_cachedServerCertificateData;
  self->_cachedServerCertificateData = v4;

  [(ADAccount *)self _setKeychainValue:v6 forKey:@"Server Certificate Data"];
}

- (id)serverCertificateData
{
  cachedServerCertificateData = self->_cachedServerCertificateData;
  if (!cachedServerCertificateData)
  {
    v4 = [(ADAccount *)self _keychainValueForKey:@"Server Certificate Data"];
    v5 = [v4 copy];
    v6 = self->_cachedServerCertificateData;
    self->_cachedServerCertificateData = v5;

    cachedServerCertificateData = self->_cachedServerCertificateData;
  }

  return cachedServerCertificateData;
}

- (NSString)localeIdentifier
{
  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier)
  {
    v3 = localeIdentifier;
  }

  else
  {
    v4 = +[NSLocale autoupdatingCurrentLocale];
    v3 = [v4 localeIdentifier];
  }

  return v3;
}

- (void)resetCachedHostname
{
  cachedHostname = self->_cachedHostname;
  self->_cachedHostname = 0;

  self->_hasCachedHostnameQAOverride = 0;
}

- (void)setHostname:(id)a3
{
  v4 = a3;
  hostname = self->_hostname;
  if (hostname != v4)
  {
    v8 = v4;
    if (![(NSString *)hostname isEqualToString:v4])
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->_hostname;
      self->_hostname = v6;

      [(ADAccount *)self resetCachedHostname];
    }
  }

  _objc_release_x1();
}

- (void)setSpeechIdentifier:(id)a3
{
  v4 = a3;
  speechIdentifier = self->_speechIdentifier;
  if (speechIdentifier != v4 && ![(NSString *)speechIdentifier isEqualToString:v4])
  {
    v6 = [(NSString *)v4 copy];
    v7 = self->_speechIdentifier;
    self->_speechIdentifier = v6;

    self->_sharedDataChanged = 1;
    keychainQueue = self->_keychainQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CB634;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(keychainQueue, block);
  }
}

- (void)setLoggingAssistantIdentifier:(id)a3
{
  v4 = a3;
  loggingAssistantIdentifier = self->_loggingAssistantIdentifier;
  if (loggingAssistantIdentifier != v4 && ![(NSString *)loggingAssistantIdentifier isEqualToString:v4])
  {
    v6 = [(NSString *)v4 copy];
    v7 = self->_loggingAssistantIdentifier;
    self->_loggingAssistantIdentifier = v6;

    self->_sharedDataChanged = 1;
    keychainQueue = self->_keychainQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CB704;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(keychainQueue, block);
  }
}

- (void)setAssistantIdentifier:(id)a3
{
  v4 = a3;
  assistantIdentifier = self->_assistantIdentifier;
  if (assistantIdentifier != v4 && ![(NSString *)assistantIdentifier isEqualToString:v4])
  {
    v6 = [(NSString *)v4 copy];
    v7 = self->_assistantIdentifier;
    self->_assistantIdentifier = v6;

    self->_sharedDataChanged = 1;
    keychainQueue = self->_keychainQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CB7D4;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(keychainQueue, block);
  }
}

- (ADAccount)initWithMessageDictionary:(id)a3
{
  v4 = a3;
  v5 = [(ADAccount *)self init];
  v6 = v5;
  if (v5)
  {
    v5->_isReadOnly = 1;
    v7 = [v4 objectForKey:kAFAccountInfoIdentifierKey];
    [(ADAccount *)v6 setIdentifier:v7];

    v8 = [v4 objectForKey:kAFAccountInfoLabelKey];
    [(ADAccount *)v6 setLabel:v8];

    v9 = [v4 objectForKey:kAFAccountInfoAssistantIdentifierKey];
    [(ADAccount *)v6 setAssistantIdentifier:v9];

    v10 = [v4 objectForKey:kAFAccountInfoLoggingAssistantIdentifierKey];
    [(ADAccount *)v6 setLoggingAssistantIdentifier:v10];

    v11 = [v4 objectForKey:kAFAccountInfoSpeechIdentifierKey];
    [(ADAccount *)v6 setSpeechIdentifier:v11];

    v12 = [v4 objectForKey:kAFAccountInfoHostnameKey];
    [(ADAccount *)v6 setHostname:v12];

    v13 = [v4 objectForKey:kAFAccountInfoPeerAssistantIdentifierKey];
    [(ADAccount *)v6 setPeerAssistantIdentifier:v13];

    v14 = [v4 objectForKey:kAFAccountInfoPeerLoggingAssistantIdentifierKey];
    [(ADAccount *)v6 setPeerLoggingAssistantIdentifier:v14];

    v15 = [v4 objectForKey:kAFAccountInfoPeerSpeechIdentifierKey];
    [(ADAccount *)v6 setPeerSpeechIdentifier:v15];

    v16 = [v4 objectForKey:kAFAccountInfoPeerUserAgentStringKey];
    [(ADAccount *)v6 setPeerUserAgentString:v16];

    v17 = [v4 objectForKey:kAFAccountInfoPeerLanguageCodeKey];
    [(ADAccount *)v6 setPeerLanguageCode:v17];

    v18 = [v4 objectForKey:kAFAccountInfoPeerSiriEnabledKey];
    -[ADAccount setPeerSiriEnabled:](v6, "setPeerSiriEnabled:", [v18 BOOLValue]);

    v19 = [v4 objectForKey:kAFAccountInfoPeerHostnameKey];
    [(ADAccount *)v6 setPeerHostname:v19];

    v20 = [v4 objectForKey:kAFAccountInfoPredefinedServerKey];
    [(ADAccount *)v6 setPredefinedServer:v20];

    v21 = [v4 objectForKey:kAFAccountInfoAceHostKey];
    [(ADAccount *)v6 setAceHost:v21];

    v22 = [v4 objectForKey:kAFAccountInfoConnectionPolicyKey];
    [(ADAccount *)v6 setConnectionPolicy:v22];

    v23 = [v4 objectForKey:kAFAccountInfoConnectionPolicyDateKey];
    [(ADAccount *)v6 setConnectionPolicyDate:v23];

    v24 = [v4 objectForKey:kAFAccountInfoConnectionPolicyFirstFailureDateKey];
    [(ADAccount *)v6 setConnectionPolicyFirstFailureDate:v24];

    v25 = [v4 objectForKey:kAFAccountInfoConnectionPolicyHostnameKey];
    [(ADAccount *)v6 setConnectionPolicyHostname:v25];

    v26 = [v4 objectForKey:kAFAccountInfoGroupKey];
    [(ADAccount *)v6 setGroup:v26];

    v27 = [v4 objectForKey:kAFAccountInfoLocaleIdentifierKey];
    [(ADAccount *)v6 setLocaleIdentifier:v27];
  }

  return v6;
}

+ (id)_accountForIdentifier:(id)a3 infoDictionary:(id)a4 intanceContext:(id)a5 isReadOnly:(BOOL)a6 isCoupledToHost:(BOOL)a7
{
  v7 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v92 = "+[ADAccount _accountForIdentifier:infoDictionary:intanceContext:isReadOnly:isCoupledToHost:]";
    v93 = 2113;
    v94 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s %{private}@", buf, 0x16u);
  }

  v14 = objc_alloc_init(ADAccount);
  [(ADAccount *)v14 setInstanceContext:v12];
  [(ADAccount *)v14 setIsReadOnly:v7];
  [(ADAccount *)v14 setIdentifier:v10];
  v15 = [v11 objectForKey:@"Label"];
  [(ADAccount *)v14 setLabel:v15];

  v16 = [v11 objectForKey:@"Hostname"];
  [(ADAccount *)v14 setHostname:v16];

  v17 = [v11 objectForKey:@"Group"];
  [(ADAccount *)v14 setGroup:v17];

  v18 = [v11 objectForKey:@"Predefined Server"];
  [(ADAccount *)v14 setPredefinedServer:v18];

  v19 = [v11 objectForKey:@"Ace Host"];
  [(ADAccount *)v14 setAceHost:v19];

  v20 = AFBuildVersion();
  v21 = [v11 objectForKey:@"Build Version"];
  v22 = [v20 isEqualToString:v21];

  if (v22)
  {
    v23 = [v11 objectForKey:@"Connection Policy"];
    [(ADAccount *)v14 setConnectionPolicy:v23];

    v24 = [v11 objectForKey:@"Connection Policy Date"];
    [(ADAccount *)v14 setConnectionPolicyDate:v24];

    v25 = [v11 objectForKey:@"Connection Policy Hostname"];
    [(ADAccount *)v14 setConnectionPolicyHostname:v25];

    v26 = [v11 objectForKey:@"Connection Policy First Failure Date"];
    [(ADAccount *)v14 setConnectionPolicyFirstFailureDate:v26];
  }

  else
  {
    [(ADAccount *)v14 setConnectionPolicy:0];
    [(ADAccount *)v14 setConnectionPolicyDate:0];
    [(ADAccount *)v14 setConnectionPolicyHostname:0];
  }

  v27 = [v11 objectForKey:@"Locale Identifier"];
  [(ADAccount *)v14 setLocaleIdentifier:v27];

  v28 = [v11 objectForKey:@"Last Assistant Data Anchor"];
  [(ADAccount *)v14 setLastAssistantDataAnchor:v28];

  v29 = [v11 objectForKey:@"Validation Expiration"];
  [(ADAccount *)v14 setValidationExpiration:v29];

  v30 = [v11 objectForKey:@"Validation Version"];
  [(ADAccount *)v14 setValidationVersion:v30];

  v31 = [v11 objectForKey:@"Peer Hostname"];
  [(ADAccount *)v14 setPeerHostname:v31];

  v32 = [v11 objectForKey:@"Needs Creation"];
  -[ADAccount setNeedsCreation:](v14, "setNeedsCreation:", [v32 BOOLValue]);

  v33 = [v11 objectForKey:@"Needs Destruction"];
  -[ADAccount setNeedsDestruction:](v14, "setNeedsDestruction:", [v33 BOOLValue]);

  v34 = [(ADAccount *)v14 _keychainValueForKey:@"Assistant Identifier"];
  v35 = [(ADAccount *)v14 _keychainValueForKey:@"Logging Assistant Identifier"];
  v36 = [(ADAccount *)v14 _keychainValueForKey:@"Speech Identifier"];
  v85 = v36;
  if (v34)
  {
    v37 = [[NSString alloc] initWithData:v34 encoding:4];
    [(ADAccount *)v14 setAssistantIdentifier:v37];
  }

  else
  {
    v37 = [v11 objectForKey:@"Assistant Identifier"];
    if (v37)
    {
      v38 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v92 = "+[ADAccount _accountForIdentifier:infoDictionary:intanceContext:isReadOnly:isCoupledToHost:]";
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s Migrating assistantIdentifier", buf, 0xCu);
      }

      [(ADAccount *)v14 setAssistantIdentifier:v37];
      v39 = [v37 dataUsingEncoding:4];
      [(ADAccount *)v14 _setKeychainValue:v39 forKey:@"Assistant Identifier"];

      v36 = v85;
    }
  }

  if (v35)
  {
    v40 = [[NSString alloc] initWithData:v35 encoding:4];
    [(ADAccount *)v14 setLoggingAssistantIdentifier:v40];
  }

  else
  {
    v41 = [(ADAccount *)v14 assistantIdentifier];

    if (!v41)
    {
      goto LABEL_19;
    }

    v42 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v92 = "+[ADAccount _accountForIdentifier:infoDictionary:intanceContext:isReadOnly:isCoupledToHost:]";
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s Creating coupled assistantIdentifier", buf, 0xCu);
    }

    v43 = +[NSUUID UUID];
    v40 = [v43 UUIDString];

    [(ADAccount *)v14 setLoggingAssistantIdentifier:v40];
    v44 = [v40 dataUsingEncoding:4];
    [(ADAccount *)v14 _setKeychainValue:v44 forKey:@"Logging Assistant Identifier"];

    v36 = v85;
  }

LABEL_19:
  if (v36)
  {
    v45 = [[NSString alloc] initWithData:v36 encoding:4];
    [(ADAccount *)v14 setSpeechIdentifier:v45];
  }

  else
  {
    v45 = [v11 objectForKey:@"Speech Identifier"];
    if (v45)
    {
      v46 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v92 = "+[ADAccount _accountForIdentifier:infoDictionary:intanceContext:isReadOnly:isCoupledToHost:]";
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%s Migrating speechIdentifier", buf, 0xCu);
      }

      [(ADAccount *)v14 setSpeechIdentifier:v45];
      v47 = [v45 dataUsingEncoding:4];
      [(ADAccount *)v14 _setKeychainValue:v47 forKey:@"Speech Identifier"];

      v36 = v85;
    }
  }

  v83 = v35;
  v84 = v34;
  if ((AFIsNano() & 1) != 0 || AFIsHorseman())
  {
    v48 = [(ADAccount *)v14 _keychainValueForKey:@"Peer Assistant Identifier"];
    if (v48)
    {
      v49 = [[NSString alloc] initWithData:v48 encoding:4];
      [(ADAccount *)v14 setPeerAssistantIdentifier:v49];
    }

    v82 = v48;
    v50 = [(ADAccount *)v14 _keychainValueForKey:@"Peer Logging Assistant Identifier"];
    if (v50)
    {
      v51 = [[NSString alloc] initWithData:v50 encoding:4];
      [(ADAccount *)v14 setPeerLoggingAssistantIdentifier:v51];
    }

    v52 = [(ADAccount *)v14 _keychainValueForKey:@"Peer Speech Identifier"];
    if (v52)
    {
      v53 = [[NSString alloc] initWithData:v52 encoding:4];
      [(ADAccount *)v14 setPeerSpeechIdentifier:v53];
    }

    v54 = [(ADAccount *)v14 _keychainValueForKey:@"Peer User Agent String"];
    if (v54)
    {
      v55 = [[NSString alloc] initWithData:v54 encoding:4];
      [(ADAccount *)v14 setPeerUserAgentString:v55];
    }

    v56 = [(ADAccount *)v14 _keychainValueForKey:@"Peer Language Code"];
    if (v56)
    {
      v57 = [[NSString alloc] initWithData:v56 encoding:4];
      [(ADAccount *)v14 setPeerLanguageCode:v57];
    }

    v58 = [(ADAccount *)v14 _keychainValueForKey:@"Peer Siri Enabled"];
    if (v58)
    {
      v80 = v12;
      v59 = v10;
      v60 = [NSSet setWithObject:objc_opt_class()];
      v61 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v60 fromData:v58 error:0];

      if (objc_opt_respondsToSelector())
      {
        v62 = [v61 BOOLValue];
      }

      else
      {
        v62 = 0;
      }

      [(ADAccount *)v14 setPeerSiriEnabled:v62];

      v10 = v59;
      v12 = v80;
    }

    v35 = v83;
    v34 = v84;
    v36 = v85;
  }

  if (AFSupportsPairedDevice() && (AFIsNano() & 1) == 0)
  {
    v63 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v92 = "+[ADAccount _accountForIdentifier:infoDictionary:intanceContext:isReadOnly:isCoupledToHost:]";
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    v64 = [(ADAccount *)v14 _keychainValueForKey:@"Watch Data Exists"];
    if (v64)
    {
      v81 = v12;
      v65 = v10;
      v66 = objc_opt_class();
      v67 = objc_opt_class();
      v68 = [NSSet setWithObjects:v66, v67, objc_opt_class(), 0];
      v69 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v68 fromData:v64 error:0];

      v70 = objc_alloc_init(NSMutableSet);
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v71 = v69;
      v72 = [v71 countByEnumeratingWithState:&v86 objects:v90 count:16];
      if (v72)
      {
        v73 = v72;
        v74 = *v87;
        do
        {
          for (i = 0; i != v73; i = i + 1)
          {
            if (*v87 != v74)
            {
              objc_enumerationMutation(v71);
            }

            v76 = [*(*(&v86 + 1) + 8 * i) mutableCopy];
            [v70 addObject:v76];
          }

          v73 = [v71 countByEnumeratingWithState:&v86 objects:v90 count:16];
        }

        while (v73);
      }

      [(ADAccount *)v14 setPairedWatches:v70];
      v77 = +[ADPreferences sharedPreferences];
      [v77 setHasPairedWatches:{objc_msgSend(v70, "count") != 0}];

      v10 = v65;
      v12 = v81;
      v35 = v83;
      v34 = v84;
      v36 = v85;
    }
  }

  v14->_sharedDataChanged = 0;
  v78 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v92 = "+[ADAccount _accountForIdentifier:infoDictionary:intanceContext:isReadOnly:isCoupledToHost:]";
    v93 = 2113;
    v94 = v14;
    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "%s %{private}@", buf, 0x16u);
  }

  return v14;
}

+ (id)accountForIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[ADPreferences sharedPreferences];
  v6 = [v5 accountInfoForIdentifier:v4];
  v7 = [a1 _accountForIdentifier:v4 infoDictionary:v6 intanceContext:0 isReadOnly:0 isCoupledToHost:1];

  return v7;
}

+ (id)activeAccountForInstanceContext:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 isCurrent] & 1) == 0)
  {
    v5 = [[ADPreferences alloc] initWithInstanceContext:v4];
    v6 = 1;
  }

  else
  {
    v5 = +[ADPreferences sharedPreferences];
    v6 = 0;
  }

  v7 = [(ADPreferences *)v5 activeAccountIdentifier];
  v8 = [(ADPreferences *)v5 accountIdentifiers];
  v9 = v8;
  if (v7 && ([v8 containsObject:v7] & 1) != 0)
  {
LABEL_9:
    v11 = [(ADPreferences *)v5 accountInfoForIdentifier:v7];
    v12 = [ADAccount _accountForIdentifier:v7 infoDictionary:v11 intanceContext:v4 isReadOnly:v6 isCoupledToHost:1];

    if (v12)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ([v9 count])
  {
    v10 = [v9 objectAtIndex:0];

    v7 = v10;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v7 = 0;
  }

LABEL_12:
  v12 = objc_alloc_init(ADAccount);
  [(ADAccount *)v12 setIsReadOnly:v6];
  [(ADAccount *)v12 setInstanceContext:v4];
LABEL_13:

  return v12;
}

+ (BOOL)setActiveAccountIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[ADPreferences sharedPreferences];
  v5 = [v4 accountIdentifiers];
  v6 = [v5 containsObject:v3];

  if (v6)
  {
    [v4 setActiveAccountIdentifier:v3];
    [v4 synchronize];
  }

  return v6;
}

- (BOOL)watchExistsForAssistantId:(id)a3
{
  v4 = a3;
  v5 = self->_pairedWatches;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v22 = "[ADAccount(SharedData) watchExistsForAssistantId:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) objectForKey:{@"Watch Assistant Identifier", v16}];
        v13 = [v4 isEqualToString:v12];

        if (v13)
        {
          v14 = 1;
          goto LABEL_13;
        }
      }

      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (void)updateGizmoData:(id)a3 forUniqueId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_pairedWatches;
  v38 = [v6 assistantId];
  v9 = [v6 languageCode];
  v10 = [v6 userAgent];
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v46 = "[ADAccount(SharedData) updateGizmoData:forUniqueId:]";
    v47 = 2112;
    v48 = v6;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s data=%@", buf, 0x16u);
  }

  if (v6 && (![v6 siriEnabled] ? (v12 = 0) : (v12 = objc_msgSend(v6, "isFullUodEnabled") ^ 1), +[ADPreferences sharedPreferences](ADPreferences, "sharedPreferences"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "setIsSyncNeededForWatch:", v12), v13, v14 = AFSiriLogContextDaemon, os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG)))
  {
    *buf = 136315394;
    v46 = "[ADAccount(SharedData) updateGizmoData:forUniqueId:]";
    v47 = 1024;
    LODWORD(v48) = v12;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s updated preference for watch sync=%d", buf, 0x12u);
    if (!v7)
    {
LABEL_46:
      v32 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v46 = "[ADAccount(SharedData) updateGizmoData:forUniqueId:]";
        v47 = 2112;
        v48 = v38;
        v49 = 2112;
        v50 = v7;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s missing assistantId=%@ or uniqueId=%@", buf, 0x20u);
      }

      goto LABEL_48;
    }
  }

  else if (!v7)
  {
    goto LABEL_46;
  }

  if (!v38)
  {
    goto LABEL_46;
  }

  if (![(NSMutableSet *)v8 count])
  {
    goto LABEL_21;
  }

  v36 = v10;
  v37 = v9;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v15 = v8;
  v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = v16;
  v18 = *v41;
  v34 = v8;
  v35 = v6;
  v33 = self;
  while (2)
  {
    v19 = v7;
    for (i = 0; i != v17; i = i + 1)
    {
      if (*v41 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v21 = *(*(&v40 + 1) + 8 * i);
      v22 = [v21 objectForKey:@"Watch Assistant Identifier"];
      if ([v38 isEqualToString:v22])
      {
        v9 = v37;
        if (v37)
        {
          [v21 setObject:v37 forKey:@"Watch Language"];
        }

        v7 = v19;
        v10 = v36;
        if (v36)
        {
          [v21 setObject:v36 forKey:@"Watch User Agent String"];
        }

        [v21 setObject:v19 forKey:@"Watch Override Id"];
        v28 = AFSiriLogContextDaemon;
        v6 = v35;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v46 = "[ADAccount(SharedData) updateGizmoData:forUniqueId:]";
          _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%s updated assistant data", buf, 0xCu);
        }

        goto LABEL_43;
      }

      v23 = [v21 objectForKey:@"Watch Override Id"];
      if ([v23 isEqualToString:v19])
      {
        v9 = v37;
        if (v37)
        {
          [v21 setObject:v37 forKey:@"Watch Language"];
        }

        v7 = v19;
        v10 = v36;
        if (v36)
        {
          [v21 setObject:v36 forKey:@"Watch User Agent String"];
        }

        [v21 setObject:v38 forKey:@"Watch Assistant Identifier"];
        v29 = AFSiriLogContextDaemon;
        v6 = v35;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v46 = "[ADAccount(SharedData) updateGizmoData:forUniqueId:]";
          _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%s updated assistant for same device", buf, 0xCu);
        }

LABEL_43:
        self = v33;
        v8 = v34;
        goto LABEL_44;
      }
    }

    v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
    v7 = v19;
    v8 = v34;
    v6 = v35;
    self = v33;
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_20:

  v10 = v36;
  v9 = v37;
LABEL_21:
  if (!v8)
  {
    v24 = objc_alloc_init(NSMutableSet);
    pairedWatches = self->_pairedWatches;
    self->_pairedWatches = v24;
  }

  v26 = objc_alloc_init(NSMutableDictionary);
  v15 = v26;
  if (v9)
  {
    [(NSMutableSet *)v26 setObject:v9 forKey:@"Watch Language"];
  }

  if (v10)
  {
    [(NSMutableSet *)v15 setObject:v10 forKey:@"Watch User Agent String"];
  }

  [(NSMutableSet *)v15 setObject:v38 forKey:@"Watch Assistant Identifier"];
  [(NSMutableSet *)v15 setObject:v7 forKey:@"Watch Override Id"];
  v27 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v46 = "[ADAccount(SharedData) updateGizmoData:forUniqueId:]";
    _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%s inserted", buf, 0xCu);
  }

  [(NSMutableSet *)self->_pairedWatches addObject:v15];
LABEL_44:

  [(ADAccount *)self save];
  v30 = +[ADPreferences sharedPreferences];
  [v30 setHasPairedWatches:{-[NSMutableSet count](self->_pairedWatches, "count") != 0}];

  keychainQueue = self->_keychainQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CD290;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(keychainQueue, block);
LABEL_48:
}

- (void)setPairedWatches:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_pairedWatches] & 1) == 0)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[ADAccount(SharedData) setPairedWatches:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    objc_storeStrong(&self->_pairedWatches, a3);
    keychainQueue = self->_keychainQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CD3E0;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(keychainQueue, block);
  }
}

- (void)setPeerSiriEnabled:(BOOL)a3
{
  if (self->_peerSiriEnabled != a3)
  {
    block[5] = v3;
    block[6] = v4;
    self->_peerSiriEnabled = a3;
    keychainQueue = self->_keychainQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CD47C;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(keychainQueue, block);
  }
}

- (void)setPeerLanguageCode:(id)a3
{
  v4 = a3;
  peerLanguageCode = self->_peerLanguageCode;
  if (peerLanguageCode != v4 && ![(NSString *)peerLanguageCode isEqualToString:v4])
  {
    v6 = [(NSString *)v4 copy];
    v7 = self->_peerLanguageCode;
    self->_peerLanguageCode = v6;

    keychainQueue = self->_keychainQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CD54C;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(keychainQueue, block);
  }
}

- (void)setPeerHostname:(id)a3
{
  self->_peerHostname = [a3 copy];

  _objc_release_x1();
}

- (NSString)peerHostname
{
  v3 = [(ADAccount *)self _hostnameQAOverride];
  peerHostname = v3;
  if (!v3)
  {
    peerHostname = self->_peerHostname;
  }

  v5 = peerHostname;

  return peerHostname;
}

- (void)setPeerUserAgentString:(id)a3
{
  v4 = a3;
  peerUserAgentString = self->_peerUserAgentString;
  if (peerUserAgentString != v4 && ![(NSString *)peerUserAgentString isEqualToString:v4])
  {
    v6 = [(NSString *)v4 copy];
    v7 = self->_peerUserAgentString;
    self->_peerUserAgentString = v6;

    keychainQueue = self->_keychainQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CD6AC;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(keychainQueue, block);
  }
}

- (void)setPeerSpeechIdentifier:(id)a3
{
  v4 = a3;
  peerSpeechIdentifier = self->_peerSpeechIdentifier;
  if (peerSpeechIdentifier != v4 && ![(NSString *)peerSpeechIdentifier isEqualToString:v4])
  {
    v6 = [(NSString *)v4 copy];
    v7 = self->_peerSpeechIdentifier;
    self->_peerSpeechIdentifier = v6;

    keychainQueue = self->_keychainQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CD77C;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(keychainQueue, block);
  }
}

- (void)setPeerLoggingAssistantIdentifier:(id)a3
{
  v4 = a3;
  peerLoggingAssistantIdentifier = self->_peerLoggingAssistantIdentifier;
  if (peerLoggingAssistantIdentifier != v4 && ![(NSString *)peerLoggingAssistantIdentifier isEqualToString:v4])
  {
    v6 = [(NSString *)v4 copy];
    v7 = self->_peerLoggingAssistantIdentifier;
    self->_peerLoggingAssistantIdentifier = v6;

    keychainQueue = self->_keychainQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CD844;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(keychainQueue, block);
  }
}

- (void)setPeerAssistantIdentifier:(id)a3
{
  v4 = a3;
  peerAssistantIdentifier = self->_peerAssistantIdentifier;
  if (peerAssistantIdentifier != v4 && ![(NSString *)peerAssistantIdentifier isEqualToString:v4])
  {
    v6 = [(NSString *)v4 copy];
    v7 = self->_peerAssistantIdentifier;
    self->_peerAssistantIdentifier = v6;

    keychainQueue = self->_keychainQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CD914;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(keychainQueue, block);
  }
}

- (id)saRemoteDevice:(id)a3
{
  v4 = a3;
  v5 = self->_pairedWatches;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v28 = "[ADAccount(RemoteDevice) saRemoteDevice:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v22 + 1) + 8 * v11);
      v13 = [v12 objectForKey:{@"Watch Override Id", v22}];
      v14 = [v4 isEqualToString:v13];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v15 = v12;

    if (!v15)
    {
      goto LABEL_16;
    }

    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v28 = "[ADAccount(RemoteDevice) saRemoteDevice:]";
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s Found paired watch", buf, 0xCu);
    }

    v17 = objc_alloc_init(SARemoteDevice);
    v18 = [v15 objectForKey:@"Watch Assistant Identifier"];
    [v17 setAssistantId:v18];

    v19 = [v15 objectForKey:@"Watch User Agent String"];
    [v17 setUserAgent:v19];

    v20 = [v15 objectForKey:@"Watch Language"];
    [v17 setLanguage:v20];

    [v17 setSiriEnabled:1];
  }

  else
  {
LABEL_11:

    v15 = 0;
LABEL_16:
    v17 = 0;
  }

  return v17;
}

- (int64_t)connectionPolicyStatus
{
  v3 = [(ADAccount *)self saConnectionPolicy];
  v4 = [(ADAccount *)self connectionPolicyDate];
  v5 = [(ADAccount *)self connectionPolicyHostname];
  if (v3)
  {
    if ([(ADAccount *)self needsCreation])
    {
      v6 = 1;
    }

    else if ([(ADAccount *)self needsDestruction])
    {
      v6 = 2;
    }

    else if (v4)
    {
      if (v5)
      {
        if ([(ADAccount *)self hasConnectionPolicyFailed])
        {
          v6 = 7;
        }

        else
        {
          v7 = [(ADAccount *)self connectionPolicyExpirationDate];
          [v7 timeIntervalSinceNow];
          if (v8 >= 0.0)
          {
            v9 = [(ADAccount *)self hostname];
            if ([v5 isEqualToString:v9])
            {
              v6 = 0;
            }

            else
            {
              v6 = 4;
            }
          }

          else
          {
            v6 = 3;
          }
        }
      }

      else
      {
        v6 = 6;
      }
    }

    else
    {
      v6 = 5;
    }
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (id)connectionPolicyExpirationDate
{
  v3 = [(ADAccount *)self saConnectionPolicy];
  v4 = [v3 timeToLive];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = fmin(v6, 604800.0);
  }

  else
  {
    v7 = 604800.0;
  }

  v8 = [(ADAccount *)self connectionPolicyDate];
  v9 = [v8 dateByAddingTimeInterval:v7];

  return v9;
}

- (id)saConnectionPolicy
{
  v2 = [(ADAccount *)self connectionPolicy];
  if (v2)
  {
    v3 = [[SAConnectionPolicy alloc] initWithDictionary:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end