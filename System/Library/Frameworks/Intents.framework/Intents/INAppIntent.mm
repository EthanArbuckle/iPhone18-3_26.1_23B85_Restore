@interface INAppIntent
+ (id)INVCVoiceShortcutClientCreationBlock;
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
+ (void)setINVCVoiceShortcutClientCreationBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRetryableError:(id)error;
- (INAppIntent)initWithAppBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier appIntentIdentifier:(id)intentIdentifier serializedParameters:(id)parameters;
- (INAppIntent)initWithAppBundleIdentifier:(id)identifier linkAction:(id)action linkActionMetadata:(id)metadata;
- (INAppIntent)initWithCoder:(id)coder;
- (INAppIntent)initWithJSONDictionary:(id)dictionary;
- (INVCVoiceShortcutClient)voiceShortcutClient;
- (LNAction)linkAction;
- (id)_dictionaryRepresentation;
- (id)_nonNilParameters;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)valueForKey:(id)key;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (int64_t)_indexingHash;
- (unint64_t)hash;
- (void)_setExtensionBundleId:(id)id;
- (void)_setLaunchId:(id)id;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INAppIntent

- (int64_t)_indexingHash
{
  result = self->_indexingHash;
  if (!result)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69AA8A0]);
    _dictionaryRepresentation = [(INAppIntent *)self _dictionaryRepresentation];
    v6 = [v4 combineContentsOfPropertyListObject:_dictionaryRepresentation];

    self->_indexingHash = [v4 finalize];
    return self->_indexingHash;
  }

  return result;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  _dictionaryRepresentation = [(INAppIntent *)self _dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"%@", _dictionaryRepresentation];

  return v4;
}

- (id)_dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  launchId = [(INAppIntent *)self launchId];
  [v3 if_setObjectIfNonNil:launchId forKey:@"_launchId"];

  extensionBundleId = [(INAppIntent *)self extensionBundleId];
  [v3 if_setObjectIfNonNil:extensionBundleId forKey:@"_extensionBundleId"];

  appIntentIdentifier = [(INAppIntent *)self appIntentIdentifier];
  [v3 if_setObjectIfNonNil:appIntentIdentifier forKey:@"appIntentIdentifier"];

  serializedParameters = [(INAppIntent *)self serializedParameters];
  [v3 if_setObjectIfNonNil:serializedParameters forKey:@"serializedParameters"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_36:

      goto LABEL_37;
    }

    launchId = [(INAppIntent *)self launchId];
    launchId2 = [(INAppIntent *)v6 launchId];
    v9 = launchId;
    v10 = launchId2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_34;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    extensionBundleId = [(INAppIntent *)self extensionBundleId];
    extensionBundleId2 = [(INAppIntent *)v6 extensionBundleId];
    v14 = extensionBundleId;
    v18 = extensionBundleId2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_33;
      }

      v21 = [v14 isEqualToString:v18];

      if (!v21)
      {
        LOBYTE(v12) = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    appIntentIdentifier = [(INAppIntent *)self appIntentIdentifier];
    appIntentIdentifier2 = [(INAppIntent *)v6 appIntentIdentifier];
    v24 = appIntentIdentifier;
    v25 = appIntentIdentifier2;
    v32 = v24;
    v33 = v25;
    if (v24 != v25)
    {
      LOBYTE(v12) = 0;
      v26 = v24;
      if (v24)
      {
        v27 = v25;
        if (v25)
        {
          v20 = v32;
          v12 = [v32 isEqualToString:v25];

          if (!v12)
          {
            goto LABEL_32;
          }

          goto LABEL_24;
        }
      }

      else
      {
        v27 = v25;
      }

LABEL_31:

      v20 = v32;
LABEL_32:
      v19 = v33;
LABEL_33:

      goto LABEL_34;
    }

LABEL_24:
    serializedParameters = [(INAppIntent *)self serializedParameters];
    serializedParameters2 = [(INAppIntent *)v6 serializedParameters];
    v26 = serializedParameters;
    v30 = serializedParameters2;
    v27 = v30;
    if (v26 == v30)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v26 && v30)
      {
        LOBYTE(v12) = [v26 isEqualToDictionary:v30];
      }
    }

    goto LABEL_31;
  }

  LOBYTE(v12) = 1;
LABEL_37:

  return v12;
}

- (unint64_t)hash
{
  launchId = [(INAppIntent *)self launchId];
  v4 = [launchId hash];
  extensionBundleId = [(INAppIntent *)self extensionBundleId];
  v6 = [extensionBundleId hash] ^ v4;
  appIntentIdentifier = [(INAppIntent *)self appIntentIdentifier];
  v8 = [appIntentIdentifier hash];
  serializedParameters = [(INAppIntent *)self serializedParameters];
  v10 = v8 ^ [serializedParameters hash];

  return v6 ^ v10;
}

- (INAppIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"launchId"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleId"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appIntentIdentifier"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"serializedParameters"];

  v15 = 0;
  v16 = v5;
  if (v4 && v6)
  {
    selfCopy2 = self;
    if (v14)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x2050000000;
      v18 = getLNActionClass_softClass;
      v28 = getLNActionClass_softClass;
      if (!getLNActionClass_softClass)
      {
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __getLNActionClass_block_invoke;
        v24[3] = &unk_1E72888B8;
        v24[4] = &v25;
        __getLNActionClass_block_invoke(v24);
        v18 = v26[3];
      }

      v19 = v18;
      _Block_object_dispose(&v25, 8);
      v20 = [coderCopy decodeObjectOfClass:v18 forKey:@"linkAction"];
      v21 = [(INAppIntent *)self initWithAppBundleIdentifier:v4 appIntentIdentifier:v6 serializedParameters:v14];
      selfCopy2 = v21;
      if (v21)
      {
        objc_storeStrong(&v21->_linkAction, v20);
      }

      [(INAppIntent *)selfCopy2 _setExtensionBundleId:v16];

      v15 = selfCopy2;
    }
  }

  else
  {
    selfCopy2 = self;
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  launchId = [(INAppIntent *)self launchId];
  [coderCopy encodeObject:launchId forKey:@"launchId"];

  extensionBundleId = [(INAppIntent *)self extensionBundleId];
  [coderCopy encodeObject:extensionBundleId forKey:@"extensionBundleId"];

  [coderCopy encodeObject:self->_appIntentIdentifier forKey:@"appIntentIdentifier"];
  [coderCopy encodeObject:self->_serializedParameters forKey:@"serializedParameters"];
  [coderCopy encodeObject:self->_linkAction forKey:@"linkAction"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  launchId = [(INAppIntent *)self launchId];
  [dictionary intents_setPlistSafeObject:launchId forKey:@"launchId"];

  extensionBundleId = [(INAppIntent *)self extensionBundleId];
  [dictionary intents_setPlistSafeObject:extensionBundleId forKey:@"extensionBundleId"];

  [dictionary intents_setPlistSafeObject:self->_appIntentIdentifier forKey:@"appIntentIdentifier"];
  [dictionary intents_setPlistSafeObject:self->_serializedParameters forKey:@"serializedParameters"];

  return dictionary;
}

- (id)valueForKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    serializedParameters = [(INAppIntent *)self serializedParameters];
    v6 = [serializedParameters objectForKey:keyCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_nonNilParameters
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  serializedParameters = [(INAppIntent *)self serializedParameters];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__INAppIntent__nonNilParameters__block_invoke;
  v7[3] = &unk_1E7288890;
  v5 = v3;
  v8 = v5;
  [serializedParameters enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __32__INAppIntent__nonNilParameters__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) addObject:v7];
    }
  }
}

- (BOOL)isRetryableError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqual:*MEMORY[0x1E696A250]])
  {
    v5 = [errorCopy code] == 4097 || objc_msgSend(errorCopy, "code") == 4099;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (INVCVoiceShortcutClient)voiceShortcutClient
{
  voiceShortcutClient = self->_voiceShortcutClient;
  if (!voiceShortcutClient)
  {
    iNVCVoiceShortcutClientCreationBlock = [objc_opt_class() INVCVoiceShortcutClientCreationBlock];

    if (iNVCVoiceShortcutClientCreationBlock)
    {
      iNVCVoiceShortcutClientCreationBlock2 = [objc_opt_class() INVCVoiceShortcutClientCreationBlock];
      v6 = iNVCVoiceShortcutClientCreationBlock2[2]();
      v7 = self->_voiceShortcutClient;
      self->_voiceShortcutClient = v6;
    }

    else
    {
      v8 = _INVCVoiceShortcutClient();
      iNVCVoiceShortcutClientCreationBlock2 = self->_voiceShortcutClient;
      self->_voiceShortcutClient = v8;
    }

    voiceShortcutClient = self->_voiceShortcutClient;
  }

  return voiceShortcutClient;
}

- (LNAction)linkAction
{
  v30 = *MEMORY[0x1E69E9840];
  linkAction = self->_linkAction;
  if (linkAction)
  {
    v3 = linkAction;
    goto LABEL_19;
  }

  voiceShortcutClient = [(INAppIntent *)self voiceShortcutClient];
  if (!voiceShortcutClient)
  {
    v20 = INSiriLogContextIntents;
    if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136315138;
    v27 = "[INAppIntent linkAction]";
    v21 = "%s No VoiceShortcutClient; completing with nil";
LABEL_23:
    _os_log_error_impl(&dword_18E991000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0xCu);
    goto LABEL_17;
  }

  if (objc_opt_respondsToSelector())
  {
    launchId = [(INAppIntent *)self launchId];
    appIntentIdentifier = [(INAppIntent *)self appIntentIdentifier];
    serializedParameters = [(INAppIntent *)self serializedParameters];
    v25 = 0;
    v9 = [voiceShortcutClient linkActionWithAppBundleIdentifier:launchId appIntentIdentifier:appIntentIdentifier serializedParameterStates:serializedParameters error:&v25];
    v10 = v25;
    v11 = self->_linkAction;
    self->_linkAction = v9;

    v12 = self->_linkAction;
    if (!v12)
    {
      if ([(INAppIntent *)self isRetryableError:v10])
      {
        v13 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v27 = "[INAppIntent linkAction]";
          v28 = 2114;
          v29 = v10;
          _os_log_error_impl(&dword_18E991000, v13, OS_LOG_TYPE_ERROR, "%s No linkAction due to XPC interruption %{public}@ - attempting a retry", buf, 0x16u);
        }

        launchId2 = [(INAppIntent *)self launchId];
        appIntentIdentifier2 = [(INAppIntent *)self appIntentIdentifier];
        serializedParameters2 = [(INAppIntent *)self serializedParameters];
        v24 = 0;
        v17 = [voiceShortcutClient linkActionWithAppBundleIdentifier:launchId2 appIntentIdentifier:appIntentIdentifier2 serializedParameterStates:serializedParameters2 error:&v24];
        v10 = v24;
        v18 = self->_linkAction;
        self->_linkAction = v17;
      }

      v12 = self->_linkAction;
      if (!v12)
      {
        v19 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v27 = "[INAppIntent linkAction]";
          v28 = 2114;
          v29 = v10;
          _os_log_error_impl(&dword_18E991000, v19, OS_LOG_TYPE_ERROR, "%s No LinkAction; returning nil. Error: %{public}@", buf, 0x16u);
          v12 = self->_linkAction;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    v3 = v12;

    goto LABEL_18;
  }

  v20 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v27 = "[INAppIntent linkAction]";
    v21 = "%s VoiceShortcutClient didn't implement linkActionWithAppBundleIdentifier yet.";
    goto LABEL_23;
  }

LABEL_17:
  v3 = 0;
LABEL_18:

LABEL_19:
  v22 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_setExtensionBundleId:(id)id
{
  v4 = [id copy];
  extensionBundleId = self->_extensionBundleId;
  self->_extensionBundleId = v4;

  MEMORY[0x1EEE66BB8](v4, extensionBundleId);
}

- (void)_setLaunchId:(id)id
{
  v4 = [id copy];
  launchId = self->_launchId;
  self->_launchId = v4;

  MEMORY[0x1EEE66BB8](v4, launchId);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  launchId = [(INAppIntent *)self launchId];
  appIntentIdentifier = [(INAppIntent *)self appIntentIdentifier];
  serializedParameters = [(INAppIntent *)self serializedParameters];
  v8 = [v4 initWithAppBundleIdentifier:launchId appIntentIdentifier:appIntentIdentifier serializedParameters:serializedParameters];

  if (v8)
  {
    linkAction = self->_linkAction;
    if (linkAction)
    {
      objc_storeStrong(v8 + 19, linkAction);
    }
  }

  extensionBundleId = [(INAppIntent *)self extensionBundleId];
  [v8 _setExtensionBundleId:extensionBundleId];

  return v8;
}

- (INAppIntent)initWithAppBundleIdentifier:(id)identifier linkAction:(id)action linkActionMetadata:(id)metadata
{
  v37 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  actionCopy = action;
  metadataCopy = metadata;
  v11 = [metadataCopy valueForKey:@"identifier"];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  voiceShortcutClient = [(INAppIntent *)self voiceShortcutClient];
  if (!voiceShortcutClient)
  {
    v19 = INSiriLogContextIntents;
    if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 136315138;
    v32 = "[INAppIntent initWithAppBundleIdentifier:linkAction:linkActionMetadata:]";
    v20 = "%s No VoiceShortcutClient; completing with nil";
LABEL_26:
    _os_log_error_impl(&dword_18E991000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
    goto LABEL_14;
  }

  if (objc_opt_respondsToSelector())
  {
    v30 = 0;
    v15 = [voiceShortcutClient serializedParametersForLinkAction:actionCopy actionMetadata:metadataCopy error:&v30];
    v16 = v30;
    if (v15)
    {
      goto LABEL_9;
    }

    if (![(INAppIntent *)self isRetryableError:v16])
    {
      goto LABEL_19;
    }

    v21 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v27 = v21;
      identifier = [actionCopy identifier];
      *buf = 136315650;
      v32 = "[INAppIntent initWithAppBundleIdentifier:linkAction:linkActionMetadata:]";
      v33 = 2114;
      v34 = identifier;
      v35 = 2114;
      v36 = v16;
      _os_log_error_impl(&dword_18E991000, v27, OS_LOG_TYPE_ERROR, "%s Unable to get serialized parameters for %{public}@ due to XPC interruption %{public}@ - attempting a retry", buf, 0x20u);
    }

    v29 = 0;
    v15 = [voiceShortcutClient serializedParametersForLinkAction:actionCopy actionMetadata:metadataCopy error:&v29];
    v16 = v29;
    if (v15)
    {
LABEL_9:
      v17 = [(INAppIntent *)self initWithAppBundleIdentifier:identifierCopy appIntentIdentifier:v13 serializedParameters:v15];
      self = v17;
      if (v17)
      {
        objc_storeStrong(&v17->_linkAction, action);
        self = self;
        selfCopy = self;
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
LABEL_19:
      v22 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v25 = v22;
        identifier2 = [actionCopy identifier];
        *buf = 136315650;
        v32 = "[INAppIntent initWithAppBundleIdentifier:linkAction:linkActionMetadata:]";
        v33 = 2114;
        v34 = identifier2;
        v35 = 2114;
        v36 = v16;
        _os_log_error_impl(&dword_18E991000, v25, OS_LOG_TYPE_ERROR, "%s Unable to get serialized parameters for %{public}@; returning nil. Error: %{public}@", buf, 0x20u);
      }

      v15 = 0;
    }

    selfCopy = 0;
    goto LABEL_23;
  }

  v19 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v32 = "[INAppIntent initWithAppBundleIdentifier:linkAction:linkActionMetadata:]";
    v20 = "%s VoiceShortcutClient didn't implement serializedParametersForLinkAction:actionMetadata:error: yet.";
    goto LABEL_26;
  }

LABEL_14:
  selfCopy = 0;
LABEL_24:

  v23 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (INAppIntent)initWithAppBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier appIntentIdentifier:(id)intentIdentifier serializedParameters:(id)parameters
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  intentIdentifierCopy = intentIdentifier;
  parametersCopy = parameters;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v23.receiver = self;
  v23.super_class = INAppIntent;
  v16 = [(INIntent *)&v23 initWithIdentifier:uUIDString backingStore:0];

  if (v16)
  {
    [(INAppIntent *)v16 _setLaunchId:identifierCopy];
    [(INAppIntent *)v16 _setExtensionBundleId:bundleIdentifierCopy];
    v17 = [intentIdentifierCopy copy];
    appIntentIdentifier = v16->_appIntentIdentifier;
    v16->_appIntentIdentifier = v17;

    v19 = [parametersCopy copy];
    serializedParameters = v16->_serializedParameters;
    v16->_serializedParameters = v19;

    v21 = v16;
  }

  return v16;
}

- (INAppIntent)initWithJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"_launchId"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"_extensionBundleId"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"appIntentIdentifier"];
  v8 = [dictionaryCopy objectForKeyedSubscript:@"serializedParameters"];

  v9 = [(INAppIntent *)self initWithAppBundleIdentifier:v5 extensionBundleIdentifier:v6 appIntentIdentifier:v7 serializedParameters:v8];
  return v9;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v5 = [representationCopy intents_stringForKey:@"launchId"];
  v6 = [representationCopy intents_stringForKey:@"extensionBundleId"];
  v7 = [representationCopy intents_stringForKey:@"appIntentIdentifier"];
  v8 = [representationCopy intents_safeObjectForKey:@"serializedParameters" ofType:objc_opt_class()];

  v9 = 0;
  if (v5 && v7 && v8)
  {
    v9 = [[INAppIntent alloc] initWithAppBundleIdentifier:v5 appIntentIdentifier:v7 serializedParameters:v8];
    [(INAppIntent *)v9 _setExtensionBundleId:v6];
  }

  return v9;
}

+ (void)setINVCVoiceShortcutClientCreationBlock:(id)block
{
  v3 = [block copy];
  v4 = _INVCVoiceShortcutClientCreationBlock;
  _INVCVoiceShortcutClientCreationBlock = v3;

  MEMORY[0x1EEE66BB8](v3, v4);
}

+ (id)INVCVoiceShortcutClientCreationBlock
{
  v2 = MEMORY[0x193AD7780](_INVCVoiceShortcutClientCreationBlock, a2);

  return v2;
}

@end