@interface INIntentResponse
+ (id)responseFailure;
+ (id)responseSuccess;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromIntentResponseCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
+ (int64_t)_intentHandlingStatusFromCode:(int64_t)a3;
+ (void)initialize;
- (BOOL)_commonInit;
- (BOOL)_enumerateWithValueProcessingBlock:(id)a3;
- (BOOL)_intents_enumerateObjectsOfClass:(Class)a3 withBlock:(id)a4;
- (BOOL)_isValidKey:(id)a3;
- (INCodableDescription)_codableDescription;
- (INImage)_keyImage;
- (INIntentResponse)init;
- (INIntentResponse)initWithBackingStore:(id)a3;
- (INIntentResponse)initWithCoder:(id)a3;
- (INIntentResponse)initWithPropertiesByName:(id)a3;
- (INIntentResponseCodableCode)_intentResponseCodableCode;
- (INIntentResponseDescription)_instanceDescription;
- (NSDictionary)_JSONDictionaryRepresentation;
- (NSDictionary)propertiesByName;
- (NSString)_className;
- (NSString)_payloadResponseTypeName;
- (PBCodable)_responseMessagePBRepresentation;
- (_INPBIntentResponse)backingStore;
- (id)_dictionaryRepresentation;
- (id)_inCodable;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (id)_intents_cacheableObjects;
- (id)_originatingBundleIdentifier;
- (id)_payloadResponseMessageData;
- (id)_propertiesByNameForLanguage:(id)a3;
- (id)_propertiesByNameWithLocalizer:(id)a3;
- (id)_querySchemaWithBlock:(id)a3;
- (id)_responseTemplateForLanguage:(id)a3;
- (id)_responseTemplateWithLocalizer:(id)a3 requiresSiriCompatibility:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionAtIndent:(unint64_t)a3;
- (id)intentSlotDescriptions;
- (id)localizeValueOfSlotDescription:(id)a3 withLocalizer:(id)a4;
- (id)valueForKey:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (int64_t)_code;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentHandlingStatus;
- (int64_t)_intentResponseCode;
- (int64_t)_intents_toggleState;
- (int64_t)_stageWithName:(id)a3;
- (int64_t)_type;
- (void)_intents_updateContainerWithCache:(id)a3;
- (void)_setCode:(int64_t)a3;
- (void)_setPayloadResponseMessageData:(id)a3;
- (void)_setPayloadResponseTypeName:(id)a3;
- (void)_setResponseMessagePBRepresentation:(id)a3;
- (void)_updateWithJSONDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setPropertiesByName:(id)a3;
- (void)setUserActivity:(NSUserActivity *)userActivity;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation INIntentResponse

+ (void)initialize
{
  if (objc_opt_class() == a1 && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

- (int64_t)_type
{
  v3 = objc_opt_class();
  v4 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass(v3);
  v5 = [v4 type];

  if (v5)
  {
    return 1;
  }

  v7 = [(INIntentResponse *)self _payloadResponseTypeName];
  v8 = [v7 hasPrefix:@"sirikit.intents.custom."];

  if (v8)
  {
    return 2;
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (PBCodable)_responseMessagePBRepresentation
{
  responseMessagePBRepresentation = self->_responseMessagePBRepresentation;
  if (!responseMessagePBRepresentation)
  {
    v4 = [(INIntentResponse *)self _payloadResponseMessageData];
    v5 = [(INIntentResponse *)self _type];
    if (v5 > 1)
    {
      if (v5 != 3)
      {
        if (v5 == 2)
        {
          v11 = [INCodable alloc];
          if (v4)
          {
            v12 = v4;
          }

          else
          {
            v12 = 0;
          }

          v10 = [(INCodable *)v11 initWithCodableDescription:self->_codableDescription data:v12];
          goto LABEL_15;
        }

        goto LABEL_16;
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        v6 = objc_opt_class();
        v7 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass(v6);
        v8 = [v7 dataClass];

        v9 = v8;
        if (!v4)
        {
LABEL_6:
          v10 = objc_alloc_init(v9);
LABEL_15:
          v13 = self->_responseMessagePBRepresentation;
          self->_responseMessagePBRepresentation = v10;

          goto LABEL_16;
        }

LABEL_12:
        v10 = [[v9 alloc] initWithData:v4];
        goto LABEL_15;
      }

LABEL_16:

      responseMessagePBRepresentation = self->_responseMessagePBRepresentation;
      goto LABEL_17;
    }

    v9 = _INPBGenericIntentResponse;
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_17:

  return responseMessagePBRepresentation;
}

- (id)_payloadResponseMessageData
{
  v2 = [(_INPBIntentResponse *)self->_backingStore payloadSuccess];
  v3 = [v2 responseMessageData];

  return v3;
}

- (int64_t)_code
{
  code = self->_code;
  if (code)
  {
    return code;
  }

  if ([(INIntentResponse *)self _type]== 2)
  {
    v5 = [(INIntentResponse *)self _inCodable];
    v6 = [v5 valueForPropertyNamed:@"_code"];
    code = [v6 integerValue];

    if (code > 99)
    {
      return code;
    }
  }

  if ([(_INPBIntentResponse *)self->_backingStore hasType])
  {
    v7 = [(_INPBIntentResponse *)self->_backingStore type];
  }

  else
  {
    v7 = 3;
  }

  if ([(_INPBIntentResponse *)self->_backingStore hasPayloadFailure])
  {
    v8 = [(_INPBIntentResponse *)self->_backingStore payloadFailure];
    if ([v8 hasErrorCode])
    {
      v9 = [v8 errorCode];
    }

    else
    {
      v9 = 0x7FFFFFFFLL;
    }

    if ([v8 hasAppLaunchRequested])
    {
      v10 = [v8 appLaunchRequested];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0x7FFFFFFFLL;
  }

  v11 = objc_opt_class();

  return [v11 _codeFromType:v7 errorCode:v9 appLaunchRequested:v10];
}

- (id)intentSlotDescriptions
{
  v2 = objc_opt_class();
  v3 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass(v2);
  v4 = [v3 slotsByName];
  v5 = [v4 allValues];

  return v5;
}

- (id)_inCodable
{
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_intentHandlingStatus
{
  v2 = [(INIntentResponse *)self _intentResponseCode];
  if ((v2 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F0F8[v2 - 1];
  }
}

- (_INPBIntentResponse)backingStore
{
  if ([(INIntentResponse *)self _type]== 2 && ([(INIntentResponse *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
  {
    [(INIntentResponse *)self _setCode:[(INIntentResponse *)self code]];
  }

  backingStore = self->_backingStore;

  return backingStore;
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = objc_opt_class();
  v5 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass(v4);
  v6 = [v5 slotsByName];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __61__INIntentResponse_INCacheSupport___intents_cacheableObjects__block_invoke;
  v15 = &unk_1E72840F0;
  v16 = self;
  v7 = v3;
  v17 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:&v12];

  v8 = [(INIntentResponse *)self userActivity:v12];
  if (v8)
  {
    [v7 addObject:v8];
  }

  if ([v7 count])
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

uint64_t __61__INIntentResponse_INCacheSupport___intents_cacheableObjects__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 facadePropertyName];
  v10 = [v4 valueForKeyPath:v5];

  v7 = v10;
  if (v10)
  {
    if ([v10 conformsToProtocol:&unk_1F02FF8D8])
    {
      [*(a1 + 40) addObject:v10];
    }

    v6 = [v10 conformsToProtocol:&unk_1F02E1EC8];
    v7 = v10;
    if (v6)
    {
      v8 = [v10 _intents_cacheableObjects];
      if ([v8 count])
      {
        [*(a1 + 40) unionSet:v8];
      }

      v7 = v10;
    }
  }

  return MEMORY[0x1EEE66BB8](v6, v7);
}

- (BOOL)_commonInit
{
  v3 = [(_INPBIntentResponse *)self->_backingStore payloadSuccess];
  v4 = [v3 responseTypeName];
  v17 = 0;
  v18 = 0;
  v5 = INSchemaWithTypeName(v4, &v18, &v17);
  v6 = v18;
  v7 = v17;

  if (v5)
  {
    v8 = [v5 intentResponseCodableDescriptionWithIntentResponseClassName:v6];
    if (!v8)
    {
      NSLog(@"Unable to initialize '%@'. Please make sure that your intent definition file is valid.", v6);
      v15 = 0;
      goto LABEL_9;
    }

    v9 = v8;
    v10 = [INCodable alloc];
    v11 = [(_INPBIntentResponse *)self->_backingStore payloadSuccess];
    v12 = [v11 responseMessageData];
    v13 = [(INCodable *)v10 initWithCodableDescription:v9 data:v12];

    [(INIntentResponse *)self _setResponseMessagePBRepresentation:v13];
    if (([(INIntentResponse *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
      v14 = [(INIntentResponse *)self code];
      if (v14 != [(INIntentResponse *)self _code])
      {
        [(INIntentResponse *)self setCode:[(INIntentResponse *)self _code]];
      }
    }
  }

  v15 = 1;
LABEL_9:

  return v15;
}

- (NSString)_payloadResponseTypeName
{
  v2 = [(_INPBIntentResponse *)self->_backingStore payloadSuccess];
  v3 = [v2 responseTypeName];

  return v3;
}

- (id)localizeValueOfSlotDescription:(id)a3 withLocalizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 facadePropertyName];
  v9 = [(INIntentResponse *)self valueForKey:v8];
  v10 = [v7 localizeValue:v9 withLocalizer:v6];

  return v10;
}

- (int64_t)_intents_toggleState
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(INIntentResponse *)self _instanceDescription];
  v4 = [v3 slotsByName];

  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [(INIntentResponse *)self _instanceDescription];
        v11 = [v10 slotsByName];
        v12 = [v11 objectForKey:v9];

        if ([v12 valueType] == 204)
        {
          v14 = [(INIntentResponse *)self valueForKey:v9];
          v13 = [v14 integerValue];

          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)_propertiesByNameWithLocalizer:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF90];
  v6 = [(INIntentResponse *)self propertiesByName];
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(v6, "count")}];

  v8 = [(INIntentResponse *)self propertiesByName];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __59__INIntentResponse_Custom___propertiesByNameWithLocalizer___block_invoke;
  v16 = &unk_1E72831C0;
  v17 = v7;
  v18 = v4;
  v9 = v4;
  v10 = v7;
  [v8 enumerateKeysAndObjectsUsingBlock:&v13];

  v11 = [v10 copy];

  return v11;
}

void __59__INIntentResponse_Custom___propertiesByNameWithLocalizer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [a3 _intents_localizedCopyWithLocalizer:v5];
  [v4 setObject:v7 forKey:v6];
}

- (id)_propertiesByNameForLanguage:(id)a3
{
  v4 = [INStringLocalizer localizerForLanguage:a3];
  v5 = [(INIntentResponse *)self _propertiesByNameWithLocalizer:v4];

  return v5;
}

- (id)_responseTemplateWithLocalizer:(id)a3 requiresSiriCompatibility:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(INIntentResponse *)self _type]== 2)
  {
    v7 = [(INIntentResponse *)self _intentResponseCodableCode];
    v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    v9 = [(INIntentResponse *)self _originatingBundleIdentifier];
    v10 = [v6 bundleWithIdentifier:v9 fileURL:0];

    if (!v10)
    {
      v11 = _INVCIntentDefinitionManagerClass();
      v12 = [(INIntentResponse *)self _originatingBundleIdentifier];
      v13 = [v11 intentDefinitionURLsForBundleID:v12];
      v14 = [v13 firstObject];
      v15 = [v14 URLByDeletingLastPathComponent];

      v16 = [(INIntentResponse *)self _originatingBundleIdentifier];
      v10 = [v6 bundleWithIdentifier:v16 fileURL:v15];

      if (!v10)
      {
        goto LABEL_26;
      }
    }

    if (!v4 || [v6 matchesBundleLocalizations:v10])
    {
      v17 = [v7 conciseFormatStringLocID];
      v18 = [v7 formatStringLocID];
      v19 = [v7 conciseFormatString];
      v20 = [v7 formatString];
      v21 = v20;
      v35 = v18;
      v36 = v17;
      if (v18)
      {
        v22 = v18;
      }

      else
      {
        v22 = v17;
      }

      if (v17)
      {
        v23 = v17;
      }

      else
      {
        v23 = v18;
      }

      if (v20)
      {
        v24 = v20;
      }

      else
      {
        v24 = v19;
      }

      if (v19)
      {
        v25 = v19;
      }

      else
      {
        v25 = v20;
      }

      v38 = v6;
      if (v4)
      {
        v26 = v22;
      }

      else
      {
        v26 = v23;
      }

      if (v4)
      {
        v27 = v24;
      }

      else
      {
        v27 = v25;
      }

      v28 = v27;
      v29 = v26;
      [v8 _objectDescription];
      v30 = v37 = v7;
      v31 = [v30 _localizationTable];
      v32 = [v31 tableName];
      v33 = INLocalizedFormatStringFromCodable(v29, v28, v32, v10, v38, v8, 0, 0, 0);

      v6 = v38;
      v7 = v37;
    }

    else
    {
LABEL_26:
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)_responseTemplateForLanguage:(id)a3
{
  v4 = [INStringLocalizer localizerForLanguage:a3];
  v5 = [(INIntentResponse *)self _responseTemplateWithLocalizer:v4];

  return v5;
}

- (id)_originatingBundleIdentifier
{
  v3 = [(INIntentResponse *)self _payloadResponseTypeName];
  v4 = [v3 hasPrefix:@"sirikit.intents.custom."];

  if (v4)
  {
    v5 = [(INIntentResponse *)self _payloadResponseTypeName];
    v6 = [v5 substringFromIndex:{objc_msgSend(@"sirikit.intents.custom.", "length")}];
    v7 = [v6 componentsSeparatedByString:@"."];

    v8 = [v7 subarrayWithRange:{0, objc_msgSend(v7, "count") - 1}];
    v9 = [v8 componentsJoinedByString:@"."];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_intents_updateContainerWithCache:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass(v5);
  v7 = [v6 slotsByName];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__INIntentResponse_INCacheSupport___intents_updateContainerWithCache___block_invoke;
  v9[3] = &unk_1E72840F0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
}

void __70__INIntentResponse_INCacheSupport___intents_updateContainerWithCache___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v17 = v4;
  v6 = [v4 facadePropertyName];
  v7 = [v5 valueForKeyPath:v6];

  if (v7)
  {
    if ([v7 conformsToProtocol:&unk_1F02E1EC8])
    {
      [v7 _intents_updateContainerWithCache:*(a1 + 40)];
      v8 = *(a1 + 32);
      v9 = [v17 facadePropertyName];
      [v8 setValue:v7 forKeyPath:v9];
LABEL_4:

      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = *(a1 + 40);
      v11 = [v7 _identifier];
      v12 = [v10 cacheableObjectForIdentifier:v11];

      if (v12)
      {
        v13 = *(a1 + 40);
        v14 = [v7 _identifier];
        v9 = [v13 cacheableObjectForIdentifier:v14];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 _imageSize];
          [v7 _setImageSize:?];
          v15 = *(a1 + 32);
          v16 = [v17 facadePropertyName];
          [v15 setValue:v7 forKeyPath:v16];
        }

        goto LABEL_4;
      }
    }
  }

LABEL_9:
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(INIntentResponse *)self _inCodable];
  v9 = v8;
  if (v8)
  {
    if ([v8 isValidKey:v7])
    {
      [v9 setValue:v6 forPropertyNamed:v7];
      v10 = [v9 data];
      [(INIntentResponse *)self _setPayloadResponseMessageData:v10];
    }

    else
    {
      v11 = INSiriLogContextIntents;
      if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_7;
      }

      v10 = v11;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 136315650;
      v17 = "[INIntentResponse setValue:forUndefinedKey:]";
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v14;
      _os_log_fault_impl(&dword_18E991000, v10, OS_LOG_TYPE_FAULT, "%s '%@' is an invalid parameter for '%@'. Please make sure that your intent definition file is valid.", buf, 0x20u);
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = INIntentResponse;
    [(INIntentResponse *)&v15 setValue:v6 forUndefinedKey:v7];
  }

LABEL_7:

  v12 = *MEMORY[0x1E69E9840];
}

- (id)valueForUndefinedKey:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INIntentResponse *)self _inCodable];
  v6 = v5;
  if (!v5)
  {
    v15.receiver = self;
    v15.super_class = INIntentResponse;
    v7 = [(INIntentResponse *)&v15 valueForUndefinedKey:v4];
    goto LABEL_5;
  }

  if ([v5 isValidKey:v4])
  {
    v7 = [v6 valueForPropertyNamed:v4];
LABEL_5:
    v8 = v7;
    goto LABEL_9;
  }

  v9 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
  {
    v12 = v9;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 136315650;
    v17 = "[INIntentResponse valueForUndefinedKey:]";
    v18 = 2112;
    v19 = v4;
    v20 = 2112;
    v21 = v14;
    _os_log_fault_impl(&dword_18E991000, v12, OS_LOG_TYPE_FAULT, "%s '%@' is an invalid parameter for '%@'. Please make sure that your intent definition file is valid.", buf, 0x20u);
  }

  v8 = 0;
LABEL_9:

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _inCodable];
  v6 = v5;
  if (v5 && [v5 isValidKey:v4])
  {
    v7 = [v6 valueForPropertyNamed:v4];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = INIntentResponse;
    v7 = [(INIntentResponse *)&v10 valueForKey:v4];
  }

  v8 = v7;

  return v8;
}

- (id)_querySchemaWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(_INPBIntentResponse *)self->_backingStore payloadSuccess];
  v6 = [v5 responseTypeName];
  v14 = 0;
  v15 = 0;
  v7 = INSchemaWithTypeName(v6, &v15, &v14);
  v8 = v15;

  v9 = v4[2](v4, v7);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = [INSchema _defaultSchemaForBundle:v11];

    v10 = v4[2](v4, v12);
    v7 = v12;
  }

  return v10;
}

- (BOOL)_isValidKey:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _inCodable];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 isValidKey:v4];
  }

  else
  {
    NSSelectorFromString(v4);

    v7 = objc_opt_respondsToSelector();
  }

  return v7 & 1;
}

- (void)_setResponseMessagePBRepresentation:(id)a3
{
  objc_storeStrong(&self->_responseMessagePBRepresentation, a3);
  v5 = a3;
  v6 = [v5 data];

  [(INIntentResponse *)self _setPayloadResponseMessageData:v6];
}

- (int64_t)_codeWithName:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INIntentResponse *)self _className];
  v6 = [v5 stringByAppendingString:@"CodeUnspecified"];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [v5 stringByAppendingString:@"CodeReady"];
    v10 = [v4 isEqualToString:v9];

    if (v10)
    {
      v8 = 1;
    }

    else
    {
      v11 = [v5 stringByAppendingString:@"CodeInProgress"];
      v12 = [v4 isEqualToString:v11];

      if (v12)
      {
        v8 = 3;
      }

      else
      {
        v13 = [v5 stringByAppendingString:@"CodeSuccess"];
        v14 = [v4 isEqualToString:v13];

        if (v14)
        {
          v8 = 4;
        }

        else
        {
          v15 = [v5 stringByAppendingString:@"CodeFailure"];
          v16 = [v4 isEqualToString:v15];

          if (v16)
          {
            v8 = 5;
          }

          else
          {
            v17 = [v5 stringByAppendingString:@"CodeContinueInApp"];
            v18 = [v4 isEqualToString:v17];

            if (v18)
            {
              v8 = 2;
            }

            else
            {
              v19 = [v5 stringByAppendingString:@"CodeFailureRequiringAppLaunch"];
              v20 = [v4 isEqualToString:v19];

              if (v20)
              {
                v8 = 6;
              }

              else
              {
                v21 = [v5 stringByAppendingString:@"CodeUserConfirmationRequired"];
                v22 = [v4 isEqualToString:v21];

                if (v22)
                {
                  v8 = 8;
                }

                else
                {
                  v23 = [v5 stringByAppendingString:@"CodeHandleInApp"];
                  v24 = [v4 isEqualToString:v23];

                  if (v24)
                  {
                    v8 = 7;
                  }

                  else
                  {
                    v8 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = [(INIntentResponse *)self _inCodable];

  if (v25)
  {
    v26 = [(INIntentResponse *)self _inCodable];
    v27 = [v26 _objectDescription];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = [v27 responseCodes];
    v28 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v28)
    {
      v29 = v28;
      v42 = v27;
      v43 = v26;
      v41 = v8;
      v45 = v5;
      v30 = *v47;
      while (2)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v47 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v46 + 1) + 8 * i);
          v33 = [v32 name];
          v34 = MEMORY[0x1E696AEC0];
          v35 = [v33 substringToIndex:1];
          v36 = [v35 uppercaseString];
          v37 = [v33 substringFromIndex:1];
          v38 = [v34 stringWithFormat:@"%@Code%@%@", v45, v36, v37];

          if ([v4 isEqualToString:v38])
          {
            v8 = [v32 value];

            v5 = v45;
            goto LABEL_31;
          }
        }

        v29 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }

      v5 = v45;
      v8 = v41;
LABEL_31:
      v27 = v42;
      v26 = v43;
    }
  }

  v39 = *MEMORY[0x1E69E9840];
  return v8;
}

- (int64_t)_stageWithName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Confirm"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Handle"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPropertiesByName:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x1E695DF70];
    v7 = v5;
    v8 = [[v6 alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__INIntentResponse_setPropertiesByName___block_invoke;
    v11[3] = &unk_1E7285238;
    v12 = v8;
    v9 = v8;
    [v4 enumerateKeysAndObjectsUsingBlock:v11];
    [v7 setProperties:v9];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __40__INIntentResponse_setPropertiesByName___block_invoke_2;
      v10[3] = &unk_1E7285238;
      v10[4] = self;
      [v4 enumerateKeysAndObjectsUsingBlock:v10];
    }
  }
}

void __40__INIntentResponse_setPropertiesByName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = INIntentSlotValueTransformToProperty(a3, a2);
  [v3 addObject:v4];
}

- (NSDictionary)propertiesByName
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 properties];
    if ([v3 count])
    {
      v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
    }

    else
    {
      v4 = 0;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 role];
          if (v12)
          {
            v13 = INIntentSlotValueTransformFromProperty(v11);
            [v4 setObject:v13 forKeyedSubscript:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v5 = [v4 copy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v2 _dictionaryRepresentationWithNullValues:0];
    }

    else
    {
      v5 = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (INIntentResponse)initWithPropertiesByName:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_INPBIntentResponse);
  v6 = [(INIntentResponse *)self initWithBackingStore:v5];

  if (v6)
  {
    [(INIntentResponse *)v6 setPropertiesByName:v4];
  }

  return v6;
}

- (INCodableDescription)_codableDescription
{
  codableDescription = self->_codableDescription;
  if (!codableDescription)
  {
    v4 = [(INIntentResponse *)self _inCodable];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 _objectDescription];
    }

    else
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __39__INIntentResponse__codableDescription__block_invoke;
      v9[3] = &unk_1E7285210;
      v9[4] = self;
      v6 = [(INIntentResponse *)self _querySchemaWithBlock:v9];
    }

    v7 = self->_codableDescription;
    self->_codableDescription = v6;

    codableDescription = self->_codableDescription;
  }

  return codableDescription;
}

id __39__INIntentResponse__codableDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _className];
  v5 = [v3 intentResponseCodableDescriptionWithIntentResponseClassName:v4];

  return v5;
}

- (id)_dictionaryRepresentation
{
  v28[2] = *MEMORY[0x1E69E9840];
  v3 = [(INIntentResponse *)self _className];
  v4 = [(INIntentResponse *)self code];
  v5 = v3;
  v6 = v5;
  if (v4 > 8)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 stringByAppendingString:off_1E7285258[v4]];
  }

  if (v7)
  {
    v8 = 0;
    v27[0] = @"code";
LABEL_6:
    v9 = v7;
    goto LABEL_13;
  }

  if (-[INIntentResponse _type](self, "_type") == 2 && (-[INIntentResponse _intentResponseCodableCode](self, "_intentResponseCodableCode"), v10 = objc_claimAutoreleasedReturnValue(), [v10 name], v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [(INIntentResponse *)self _className];
    v14 = [v11 substringToIndex:1];
    v15 = [v14 uppercaseString];
    v16 = [v11 substringFromIndex:1];
    v7 = [v12 stringWithFormat:@"%@Code%@%@", v13, v15, v16];

    v27[0] = @"code";
    if (v7)
    {
      v8 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v27[0] = @"code";
  }

  v9 = [MEMORY[0x1E695DFB0] null];
  v7 = 0;
  v8 = 1;
LABEL_13:
  v27[1] = @"userActivity";
  v28[0] = v9;
  v17 = [(INIntentResponse *)self userActivity];
  v18 = v17;
  if (!v17)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v28[1] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  if (!v17)
  {
  }

  if (v8)
  {
  }

  v20 = [(INIntentResponse *)self _inCodable];

  if (v20)
  {
    v21 = [v19 mutableCopy];
    v22 = [(INIntentResponse *)self _inCodable];
    v23 = [v22 dictionaryRepresentation];
    [v21 addEntriesFromDictionary:v23];

    v24 = [v21 copy];
    v19 = v24;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INIntentResponse;
  v6 = [(INIntentResponse *)&v11 description];
  v7 = [(INIntentResponse *)self _redactedDictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)_updateWithJSONDictionary:(id)a3
{
  v31 = a3;
  v4 = [v31 objectForKeyedSubscript:@"properties"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = MEMORY[0x1E696AEC0];
  v8 = [(INIntentResponse *)self _className];
  v9 = [v31 objectForKeyedSubscript:@"status"];
  v10 = [v7 stringWithFormat:@"%@Code%@", v8, v9];
  [(INIntentResponse *)self _setCode:[(INIntentResponse *)self _codeWithName:v10]];

  v11 = [v31 objectForKeyedSubscript:@"stage"];
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

  v14 = [(INIntentResponse *)self _stageWithName:v13];
  [(INIntentResponse *)self _setStage:v14];
  v15 = objc_alloc_init(INJSONDecoder);
  v16 = [(INIntentResponse *)self _codableDescription];
  [(INJSONDecoder *)v15 decodeObject:self withCodableDescription:v16 from:v6];

  v17 = objc_opt_class();
  v18 = [v31 objectForKeyedSubscript:@"userActivity"];
  v19 = [(INJSONDecoder *)v15 decodeObjectOfClass:v17 from:v18];
  [(INIntentResponse *)self setUserActivity:v19];

  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v22 = [v21 rangeOfString:@"Response" options:4];
  if (v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = 0;
  }

  else
  {
    v23 = [v21 substringToIndex:v22];
  }

  v24 = [(INIntentResponse *)self _codableDescription];
  if (v24)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  v27 = [v26 _nullable_schema];
  v28 = [v27 _types];
  [v26 _reestablishReferencedCodableDescriptionsUsingTypes:v28];

  v29 = [v27 intentCodableDescriptionWithIntentClassName:v23];
  v30 = [v27 _types];
  [v29 _reestablishReferencedCodableDescriptionsUsingTypes:v30 intentResponseCodableDescription:v26];
}

- (NSDictionary)_JSONDictionaryRepresentation
{
  v3 = [INJSONEncoder alloc];
  v4 = objc_alloc_init(INJSONEncoderConfiguration);
  v5 = +[INPreferences siriLanguageCode];
  [(INJSONEncoderConfiguration *)v4 setLanguageCode:v5];

  v6 = [(INJSONEncoder *)v3 initWithConfiguration:v4];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [(INIntentResponse *)self _dictionaryRepresentation];
  v9 = [v8 objectForKeyedSubscript:@"code"];
  v10 = [(INIntentResponse *)self _className];
  v11 = [v10 stringByAppendingString:@"Code"];
  v12 = [v9 substringFromIndex:{objc_msgSend(v11, "length")}];
  [v7 if_setObjectIfNonNil:v12 forKey:@"status"];

  v13 = [(INIntentResponse *)self _payloadResponseTypeName];
  [v7 if_setObjectIfNonNil:v13 forKey:@"typeName"];

  v14 = [(INIntentResponse *)self _codableDescription];
  v15 = [(INJSONEncoder *)v6 encodeObject:self withCodableDescription:v14];
  [v7 if_setObjectIfNonNil:v15 forKey:@"properties"];

  v16 = [(INIntentResponse *)self userActivity];
  v17 = [(INJSONEncoder *)v6 encodeObject:v16];
  [v7 if_setObjectIfNonNil:v17 forKey:@"userActivity"];

  return v7;
}

- (NSString)_className
{
  v2 = [(INIntentResponse *)self _payloadResponseTypeName];
  if ([v2 hasPrefix:@"sirikit.intents.custom."])
  {
    v3 = [v2 componentsSeparatedByString:@"."];
    v4 = [v3 lastObject];
  }

  else
  {
    v5 = objc_opt_class();
    v4 = NSStringFromClass(v5);
  }

  return v4;
}

- (INIntentResponseDescription)_instanceDescription
{
  if ([(INIntentResponse *)self _type]== 2)
  {
    v3 = [INIntentResponseDescription alloc];
    v4 = [(INIntentResponse *)self _className];
    v5 = [(INIntentResponse *)self _className];
    v6 = objc_opt_class();
    v7 = NSClassFromString(v5);
    if (v7)
    {
      v8 = v7;
      if ([(objc_class *)v7 isSubclassOfClass:v6])
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v7 = v9;
    }

    v10 = v7;
    v11 = [(INIntentResponse *)self _payloadResponseTypeName];
    v12 = [(INIntentResponse *)self _inCodable];
    v13 = INIntentSlotDescriptionsWithCodable(v12);
    v14 = [(INIntentResponseDescription *)v3 initWithName:v4 facadeClass:v10 dataClass:0 type:v11 isPrivate:0 slotsByName:v13];
  }

  else
  {
    v15 = objc_opt_class();
    v14 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass(v15);
  }

  return v14;
}

- (INIntentResponseCodableCode)_intentResponseCodableCode
{
  if ([(INIntentResponse *)self _type]== 2)
  {
    v3 = [(INIntentResponse *)self _inCodable];
    v4 = [v3 _objectDescription];
    v5 = [v4 intentResponseCodeWithCode:{-[INIntentResponse code](self, "code")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_intentResponseCode
{
  v3 = [(INIntentResponse *)self code];
  if ([(INIntentResponse *)self _type]== 2)
  {
    v4 = [(INIntentResponse *)self _intentResponseCodableCode];
    if ([(INIntentResponse *)self code]>= 100)
    {
      if ([(INIntentResponse *)self _stage]== 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = 4;
      }

      if (![v4 isSuccess])
      {
        v3 = 5;
      }
    }
  }

  return v3;
}

- (void)_setPayloadResponseTypeName:(id)a3
{
  backingStore = self->_backingStore;
  v4 = a3;
  v5 = [(_INPBIntentResponse *)backingStore payloadSuccess];
  [v5 setResponseTypeName:v4];
}

- (void)_setPayloadResponseMessageData:(id)a3
{
  backingStore = self->_backingStore;
  v4 = a3;
  v5 = [(_INPBIntentResponse *)backingStore payloadSuccess];
  [v5 setResponseMessageData:v4];
}

- (INIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"backingStore"];

  v7 = [v4 decodeIntegerForKey:@"code"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userActivityData"];
  v9 = INUserActivityDeserializeFromData(v8);

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"codableDescriptionData"];
  if (v10)
  {
    v18 = 0;
    v11 = [MEMORY[0x1E696ACD0] _in_safeUnarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v18];
    v12 = v18;
    if (v12)
    {
      v13 = v12;
      [v4 failWithError:v12];

LABEL_9:
      v15 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
  }

  v17.receiver = self;
  v17.super_class = INIntentResponse;
  v14 = [(INIntentResponse *)&v17 init];
  self = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_backingStore, v6);
    objc_storeStrong(&self->_userActivity, v9);
    objc_storeStrong(&self->_codableDescription, v11);
    if (![(INIntentResponse *)self _commonInit])
    {
      goto LABEL_9;
    }

    [(INIntentResponse *)self _setCode:v7];
    [(INIntentResponse *)self setCode:v7];
  }

  self = self;
  v15 = self;
LABEL_10:

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[INIntentResponse code](self forKey:{"code"), @"code"}];
  v5 = INUserActivitySerializeToData(self->_userActivity);
  [v4 encodeObject:v5 forKey:@"userActivityData"];

  v6 = [(INIntentResponse *)self backingStore];
  [v4 encodeObject:v6 forKey:@"backingStore"];

  v7 = [(INIntentResponse *)self _inCodable];
  v8 = [v7 _objectDescription];

  if (v8)
  {
    v11 = 0;
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v11];
    v10 = v11;
    if (v10)
    {
      [v4 failWithError:v10];
    }

    else
    {
      [v4 encodeObject:v9 forKey:@"codableDescriptionData"];
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(INIntentResponse *)self backingStore];
  v6 = [v4 initWithBackingStore:v5];

  if (v6)
  {
    objc_storeStrong(v6 + 5, self->_codableDescription);
    [v6 setCode:{-[INIntentResponse code](self, "code")}];
  }

  return v6;
}

- (void)setUserActivity:(NSUserActivity *)userActivity
{
  v4 = userActivity;
  v5 = [(NSUserActivity *)v4 _intents_copy];
  v6 = self->_userActivity;
  self->_userActivity = v5;

  backingStore = self->_backingStore;
  v8 = INUserActivitySerializeToBackingStore(v4);

  [(_INPBIntentResponse *)backingStore setUserActivity:v8];
}

- (void)_setCode:(int64_t)a3
{
  self->_code = a3;
  if ([(INIntentResponse *)self _type]== 2)
  {
    v5 = [(INIntentResponse *)self _inCodable];
    if (a3 < 100)
    {
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    }

    if ([v5 isValidKey:@"_code"])
    {
      [v5 setValue:v6 forPropertyNamed:@"_code"];
    }

    [(INIntentResponse *)self _setResponseMessagePBRepresentation:v5];
  }

  v7 = [(INIntentResponse *)self _type];
  if (a3 < 100 || v7 != 2)
  {
    -[_INPBIntentResponse setType:](self->_backingStore, "setType:", [objc_opt_class() _typeFromCode:a3]);
    v8 = [objc_opt_class() _errorCodeFromCode:a3];
    if (v8 != 0x7FFFFFFF)
    {
      v9 = v8;
      v10 = [(_INPBIntentResponse *)self->_backingStore payloadFailure];
      [v10 setErrorCode:v9];
    }

    if ([objc_opt_class() _appLaunchRequestedFromCode:a3])
    {
      v11 = [(_INPBIntentResponse *)self->_backingStore payloadFailure];
      [v11 setAppLaunchRequested:1];
    }
  }
}

- (INIntentResponse)initWithBackingStore:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = INIntentResponse;
  v5 = [(INIntentResponse *)&v19 init];
  if (!v5)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 userActivity];
    v7 = INUserActivityDeserializeFromBackingStore(v6);
    userActivity = v5->_userActivity;
    v5->_userActivity = v7;

    v9 = [v4 copy];
  }

  else
  {
    v9 = objc_alloc_init(_INPBIntentResponse);
  }

  backingStore = v5->_backingStore;
  v5->_backingStore = v9;

  if (![(_INPBIntentResponse *)v5->_backingStore hasType])
  {
    [(_INPBIntentResponse *)v5->_backingStore setType:3];
  }

  if (![(_INPBIntentResponse *)v5->_backingStore hasPayloadSuccess])
  {
    v11 = objc_alloc_init(_INPBIntentResponsePayloadSuccess);
    v12 = objc_opt_class();
    v13 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass(v12);
    v14 = [v13 type];
    [(_INPBIntentResponsePayloadSuccess *)v11 setResponseTypeName:v14];

    [(_INPBIntentResponse *)v5->_backingStore setPayloadSuccess:v11];
  }

  if (![(_INPBIntentResponse *)v5->_backingStore hasPayloadFailure])
  {
    v15 = v5->_backingStore;
    v16 = objc_alloc_init(_INPBIntentResponsePayloadFailure);
    [(_INPBIntentResponse *)v15 setPayloadFailure:v16];
  }

  if (![(INIntentResponse *)v5 _commonInit])
  {
    v17 = 0;
  }

  else
  {
LABEL_12:
    v17 = v5;
  }

  return v17;
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v7 = a4;
  v22.receiver = self;
  v22.super_class = INIntentResponse;
  v8 = [(INIntentResponse *)&v22 init];
  p_isa = &v8->super.isa;
  if (v8)
  {
    objc_storeStrong(&v8->_userActivity, a4);
    v10 = objc_alloc_init(_INPBIntentResponse);
    v11 = p_isa[3];
    p_isa[3] = v10;

    v12 = objc_alloc_init(_INPBIntentResponsePayloadSuccess);
    v13 = objc_opt_class();
    v14 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass(v13);
    v15 = [v14 type];
    [(_INPBIntentResponsePayloadSuccess *)v12 setResponseTypeName:v15];

    [p_isa[3] setPayloadSuccess:v12];
    v16 = p_isa[3];
    v17 = objc_alloc_init(_INPBIntentResponsePayloadFailure);
    [v16 setPayloadFailure:v17];

    if (v7)
    {
      v18 = p_isa[3];
      v19 = INUserActivitySerializeToBackingStore(v7);
      [v18 setUserActivity:v19];
    }

    if (![p_isa _commonInit])
    {

      v20 = 0;
      goto LABEL_8;
    }

    [p_isa setCode:a3];
  }

  v20 = p_isa;
LABEL_8:

  return v20;
}

- (INIntentResponse)init
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = [(INIntentResponse *)self _initWithCode:0 userActivity:0];
  if (!v2)
  {
    goto LABEL_20;
  }

  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    goto LABEL_20;
  }

  v4 = objc_opt_class();
  if (![v4 isSubclassOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = objc_opt_class();
  v6 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass(v5);
  v7 = [v6 type];

  if (v7)
  {
    goto LABEL_20;
  }

  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 bundleIdentifier];
  v10 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
  v11 = [v10 if_containingAppRecord];
  v12 = v11;
  if (v11)
  {
    v13 = MEMORY[0x1E695DFD8];
    v14 = [v11 intentDefinitionURLs];
    v15 = [v14 allKeys];
    v16 = [v13 setWithArray:v15];

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v18 rangeOfString:@"Response" options:4];
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {

      v20 = 0;
    }

    else
    {
      v20 = [v18 substringToIndex:v19];

      if (v20 && [v16 containsObject:v20])
      {
        v25 = [v12 bundleIdentifier];

        v9 = v25;
LABEL_16:

        goto LABEL_17;
      }
    }

    v26 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "[INIntentResponse init]";
      v37 = 2112;
      v38 = v12;
      v39 = 2112;
      v40 = v20;
      _os_log_error_impl(&dword_18E991000, v26, OS_LOG_TYPE_ERROR, "%s App bundle record <%@> doesn't contain intent %@, falling back to current bundle", buf, 0x20u);
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [v10 URL];
    v22 = [v8 bundleURL];
    v23 = [v21 if_isContainedByDirectoryAtURL:v22];

    if (v23)
    {
      v24 = [v10 bundleIdentifier];

      v9 = v24;
    }
  }

LABEL_17:
  if (!v9)
  {
    v27 = [v8 bundlePath];
    v9 = [v27 lastPathComponent];
  }

  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", @"sirikit.intents.custom.", v9, v29];
  [v2 _setPayloadResponseTypeName:v30];
  v31 = [v2 _commonInit];

  if (!v31)
  {
    v32 = 0;
    goto LABEL_21;
  }

LABEL_20:
  v32 = v2;
LABEL_21:

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

+ (int64_t)_intentHandlingStatusFromCode:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F158[a3 - 1];
  }
}

+ (int64_t)_codeFromIntentResponseCode:(int64_t)a3
{
  v4 = [a1 _typeFromCode:a3];

  return [a1 _codeFromType:v4 errorCode:0 appLaunchRequested:0];
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F138[a3 - 1];
  }
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  v5 = 3;
  v6 = 2;
  if (a3 != 4)
  {
    v6 = a3 == 5;
  }

  if (a3 != 2)
  {
    v5 = v6;
  }

  v7 = 4;
  v8 = 5;
  if (a5)
  {
    v8 = 6;
  }

  if (a3 != 1)
  {
    v8 = 0;
  }

  if (a3)
  {
    v7 = v8;
  }

  if (a3 <= 1)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

+ (id)responseFailure
{
  v2 = [[a1 alloc] _initWithCode:0 userActivity:0];

  return v2;
}

+ (id)responseSuccess
{
  v2 = [[a1 alloc] _initWithCode:4 userActivity:0];

  return v2;
}

- (BOOL)_enumerateWithValueProcessingBlock:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (INEnumerateObjectsInCodable(v5, v4))
    {
      v6 = [v5 data];
      [(INIntentResponse *)self _setPayloadResponseMessageData:v6];

      v7 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {

    v7 = INEnumerateObjectsInIntentSlotComposing(self, v4);
    v5 = 0;
  }

  return v7;
}

- (BOOL)_intents_enumerateObjectsOfClass:(Class)a3 withBlock:(id)a4
{
  v5 = _INEnumerableValueProcessingBlock(a3, a4);
  LOBYTE(self) = [(INIntentResponse *)self _enumerateWithValueProcessingBlock:v5];

  return self;
}

- (INImage)_keyImage
{
  v3 = INKeyImageUtilitiesSortedSubProducersForSlotComposingProducer(self);
  v4 = [v3 firstObject];

  v5 = [v4 valueForSlotComposer:self];
  if ([v5 conformsToProtocol:&unk_1F02E1E10])
  {
    v6 = [v5 _keyImage];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end