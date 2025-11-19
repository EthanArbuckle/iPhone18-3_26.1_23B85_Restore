@interface INAppIntent
+ (id)INVCVoiceShortcutClientCreationBlock;
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
+ (void)setINVCVoiceShortcutClientCreationBlock:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isRetryableError:(id)a3;
- (INAppIntent)initWithAppBundleIdentifier:(id)a3 extensionBundleIdentifier:(id)a4 appIntentIdentifier:(id)a5 serializedParameters:(id)a6;
- (INAppIntent)initWithAppBundleIdentifier:(id)a3 linkAction:(id)a4 linkActionMetadata:(id)a5;
- (INAppIntent)initWithCoder:(id)a3;
- (INAppIntent)initWithJSONDictionary:(id)a3;
- (INVCVoiceShortcutClient)voiceShortcutClient;
- (LNAction)linkAction;
- (id)_dictionaryRepresentation;
- (id)_nonNilParameters;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)valueForKey:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (int64_t)_indexingHash;
- (unint64_t)hash;
- (void)_setExtensionBundleId:(id)a3;
- (void)_setLaunchId:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INAppIntent

- (int64_t)_indexingHash
{
  result = self->_indexingHash;
  if (!result)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69AA8A0]);
    v5 = [(INAppIntent *)self _dictionaryRepresentation];
    v6 = [v4 combineContentsOfPropertyListObject:v5];

    self->_indexingHash = [v4 finalize];
    return self->_indexingHash;
  }

  return result;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(INAppIntent *)self _dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (id)_dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(INAppIntent *)self launchId];
  [v3 if_setObjectIfNonNil:v4 forKey:@"_launchId"];

  v5 = [(INAppIntent *)self extensionBundleId];
  [v3 if_setObjectIfNonNil:v5 forKey:@"_extensionBundleId"];

  v6 = [(INAppIntent *)self appIntentIdentifier];
  [v3 if_setObjectIfNonNil:v6 forKey:@"appIntentIdentifier"];

  v7 = [(INAppIntent *)self serializedParameters];
  [v3 if_setObjectIfNonNil:v7 forKey:@"serializedParameters"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_36:

      goto LABEL_37;
    }

    v7 = [(INAppIntent *)self launchId];
    v8 = [(INAppIntent *)v6 launchId];
    v9 = v7;
    v10 = v8;
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

    v16 = [(INAppIntent *)self extensionBundleId];
    v17 = [(INAppIntent *)v6 extensionBundleId];
    v14 = v16;
    v18 = v17;
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

    v22 = [(INAppIntent *)self appIntentIdentifier];
    v23 = [(INAppIntent *)v6 appIntentIdentifier];
    v24 = v22;
    v25 = v23;
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
    v28 = [(INAppIntent *)self serializedParameters];
    v29 = [(INAppIntent *)v6 serializedParameters];
    v26 = v28;
    v30 = v29;
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
  v3 = [(INAppIntent *)self launchId];
  v4 = [v3 hash];
  v5 = [(INAppIntent *)self extensionBundleId];
  v6 = [v5 hash] ^ v4;
  v7 = [(INAppIntent *)self appIntentIdentifier];
  v8 = [v7 hash];
  v9 = [(INAppIntent *)self serializedParameters];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (INAppIntent)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"launchId"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleId"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"appIntentIdentifier"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"serializedParameters"];

  v15 = 0;
  v16 = v5;
  if (v4 && v6)
  {
    v17 = self;
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
      v20 = [v3 decodeObjectOfClass:v18 forKey:@"linkAction"];
      v21 = [(INAppIntent *)self initWithAppBundleIdentifier:v4 appIntentIdentifier:v6 serializedParameters:v14];
      v17 = v21;
      if (v21)
      {
        objc_storeStrong(&v21->_linkAction, v20);
      }

      [(INAppIntent *)v17 _setExtensionBundleId:v16];

      v15 = v17;
    }
  }

  else
  {
    v17 = self;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(INAppIntent *)self launchId];
  [v6 encodeObject:v4 forKey:@"launchId"];

  v5 = [(INAppIntent *)self extensionBundleId];
  [v6 encodeObject:v5 forKey:@"extensionBundleId"];

  [v6 encodeObject:self->_appIntentIdentifier forKey:@"appIntentIdentifier"];
  [v6 encodeObject:self->_serializedParameters forKey:@"serializedParameters"];
  [v6 encodeObject:self->_linkAction forKey:@"linkAction"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [(INAppIntent *)self launchId];
  [v5 intents_setPlistSafeObject:v6 forKey:@"launchId"];

  v7 = [(INAppIntent *)self extensionBundleId];
  [v5 intents_setPlistSafeObject:v7 forKey:@"extensionBundleId"];

  [v5 intents_setPlistSafeObject:self->_appIntentIdentifier forKey:@"appIntentIdentifier"];
  [v5 intents_setPlistSafeObject:self->_serializedParameters forKey:@"serializedParameters"];

  return v5;
}

- (id)valueForKey:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(INAppIntent *)self serializedParameters];
    v6 = [v5 objectForKey:v4];
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
  v4 = [(INAppIntent *)self serializedParameters];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__INAppIntent__nonNilParameters__block_invoke;
  v7[3] = &unk_1E7288890;
  v5 = v3;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

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

- (BOOL)isRetryableError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqual:*MEMORY[0x1E696A250]])
  {
    v5 = [v3 code] == 4097 || objc_msgSend(v3, "code") == 4099;
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
    v4 = [objc_opt_class() INVCVoiceShortcutClientCreationBlock];

    if (v4)
    {
      v5 = [objc_opt_class() INVCVoiceShortcutClientCreationBlock];
      v6 = v5[2]();
      v7 = self->_voiceShortcutClient;
      self->_voiceShortcutClient = v6;
    }

    else
    {
      v8 = _INVCVoiceShortcutClient();
      v5 = self->_voiceShortcutClient;
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

  v5 = [(INAppIntent *)self voiceShortcutClient];
  if (!v5)
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
    v6 = [(INAppIntent *)self launchId];
    v7 = [(INAppIntent *)self appIntentIdentifier];
    v8 = [(INAppIntent *)self serializedParameters];
    v25 = 0;
    v9 = [v5 linkActionWithAppBundleIdentifier:v6 appIntentIdentifier:v7 serializedParameterStates:v8 error:&v25];
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

        v14 = [(INAppIntent *)self launchId];
        v15 = [(INAppIntent *)self appIntentIdentifier];
        v16 = [(INAppIntent *)self serializedParameters];
        v24 = 0;
        v17 = [v5 linkActionWithAppBundleIdentifier:v14 appIntentIdentifier:v15 serializedParameterStates:v16 error:&v24];
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

- (void)_setExtensionBundleId:(id)a3
{
  v4 = [a3 copy];
  extensionBundleId = self->_extensionBundleId;
  self->_extensionBundleId = v4;

  MEMORY[0x1EEE66BB8](v4, extensionBundleId);
}

- (void)_setLaunchId:(id)a3
{
  v4 = [a3 copy];
  launchId = self->_launchId;
  self->_launchId = v4;

  MEMORY[0x1EEE66BB8](v4, launchId);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(INAppIntent *)self launchId];
  v6 = [(INAppIntent *)self appIntentIdentifier];
  v7 = [(INAppIntent *)self serializedParameters];
  v8 = [v4 initWithAppBundleIdentifier:v5 appIntentIdentifier:v6 serializedParameters:v7];

  if (v8)
  {
    linkAction = self->_linkAction;
    if (linkAction)
    {
      objc_storeStrong(v8 + 19, linkAction);
    }
  }

  v10 = [(INAppIntent *)self extensionBundleId];
  [v8 _setExtensionBundleId:v10];

  return v8;
}

- (INAppIntent)initWithAppBundleIdentifier:(id)a3 linkAction:(id)a4 linkActionMetadata:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 valueForKey:@"identifier"];
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

  v14 = [(INAppIntent *)self voiceShortcutClient];
  if (!v14)
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
    v15 = [v14 serializedParametersForLinkAction:v9 actionMetadata:v10 error:&v30];
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
      v28 = [v9 identifier];
      *buf = 136315650;
      v32 = "[INAppIntent initWithAppBundleIdentifier:linkAction:linkActionMetadata:]";
      v33 = 2114;
      v34 = v28;
      v35 = 2114;
      v36 = v16;
      _os_log_error_impl(&dword_18E991000, v27, OS_LOG_TYPE_ERROR, "%s Unable to get serialized parameters for %{public}@ due to XPC interruption %{public}@ - attempting a retry", buf, 0x20u);
    }

    v29 = 0;
    v15 = [v14 serializedParametersForLinkAction:v9 actionMetadata:v10 error:&v29];
    v16 = v29;
    if (v15)
    {
LABEL_9:
      v17 = [(INAppIntent *)self initWithAppBundleIdentifier:v8 appIntentIdentifier:v13 serializedParameters:v15];
      self = v17;
      if (v17)
      {
        objc_storeStrong(&v17->_linkAction, a4);
        self = self;
        v18 = self;
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
        v26 = [v9 identifier];
        *buf = 136315650;
        v32 = "[INAppIntent initWithAppBundleIdentifier:linkAction:linkActionMetadata:]";
        v33 = 2114;
        v34 = v26;
        v35 = 2114;
        v36 = v16;
        _os_log_error_impl(&dword_18E991000, v25, OS_LOG_TYPE_ERROR, "%s Unable to get serialized parameters for %{public}@; returning nil. Error: %{public}@", buf, 0x20u);
      }

      v15 = 0;
    }

    v18 = 0;
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
  v18 = 0;
LABEL_24:

  v23 = *MEMORY[0x1E69E9840];
  return v18;
}

- (INAppIntent)initWithAppBundleIdentifier:(id)a3 extensionBundleIdentifier:(id)a4 appIntentIdentifier:(id)a5 serializedParameters:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E696AFB0] UUID];
  v15 = [v14 UUIDString];
  v23.receiver = self;
  v23.super_class = INAppIntent;
  v16 = [(INIntent *)&v23 initWithIdentifier:v15 backingStore:0];

  if (v16)
  {
    [(INAppIntent *)v16 _setLaunchId:v10];
    [(INAppIntent *)v16 _setExtensionBundleId:v11];
    v17 = [v12 copy];
    appIntentIdentifier = v16->_appIntentIdentifier;
    v16->_appIntentIdentifier = v17;

    v19 = [v13 copy];
    serializedParameters = v16->_serializedParameters;
    v16->_serializedParameters = v19;

    v21 = v16;
  }

  return v16;
}

- (INAppIntent)initWithJSONDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"_launchId"];
  v6 = [v4 objectForKeyedSubscript:@"_extensionBundleId"];
  v7 = [v4 objectForKeyedSubscript:@"appIntentIdentifier"];
  v8 = [v4 objectForKeyedSubscript:@"serializedParameters"];

  v9 = [(INAppIntent *)self initWithAppBundleIdentifier:v5 extensionBundleIdentifier:v6 appIntentIdentifier:v7 serializedParameters:v8];
  return v9;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [v4 intents_stringForKey:@"launchId"];
  v6 = [v4 intents_stringForKey:@"extensionBundleId"];
  v7 = [v4 intents_stringForKey:@"appIntentIdentifier"];
  v8 = [v4 intents_safeObjectForKey:@"serializedParameters" ofType:objc_opt_class()];

  v9 = 0;
  if (v5 && v7 && v8)
  {
    v9 = [[INAppIntent alloc] initWithAppBundleIdentifier:v5 appIntentIdentifier:v7 serializedParameters:v8];
    [(INAppIntent *)v9 _setExtensionBundleId:v6];
  }

  return v9;
}

+ (void)setINVCVoiceShortcutClientCreationBlock:(id)a3
{
  v3 = [a3 copy];
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