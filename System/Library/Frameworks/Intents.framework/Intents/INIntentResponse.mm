@interface INIntentResponse
+ (id)responseFailure;
+ (id)responseSuccess;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromIntentResponseCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
+ (int64_t)_intentHandlingStatusFromCode:(int64_t)code;
+ (void)initialize;
- (BOOL)_commonInit;
- (BOOL)_enumerateWithValueProcessingBlock:(id)block;
- (BOOL)_intents_enumerateObjectsOfClass:(Class)class withBlock:(id)block;
- (BOOL)_isValidKey:(id)key;
- (INCodableDescription)_codableDescription;
- (INImage)_keyImage;
- (INIntentResponse)init;
- (INIntentResponse)initWithBackingStore:(id)store;
- (INIntentResponse)initWithCoder:(id)coder;
- (INIntentResponse)initWithPropertiesByName:(id)name;
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
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (id)_intents_cacheableObjects;
- (id)_originatingBundleIdentifier;
- (id)_payloadResponseMessageData;
- (id)_propertiesByNameForLanguage:(id)language;
- (id)_propertiesByNameWithLocalizer:(id)localizer;
- (id)_querySchemaWithBlock:(id)block;
- (id)_responseTemplateForLanguage:(id)language;
- (id)_responseTemplateWithLocalizer:(id)localizer requiresSiriCompatibility:(BOOL)compatibility;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionAtIndent:(unint64_t)indent;
- (id)intentSlotDescriptions;
- (id)localizeValueOfSlotDescription:(id)description withLocalizer:(id)localizer;
- (id)valueForKey:(id)key;
- (id)valueForUndefinedKey:(id)key;
- (int64_t)_code;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentHandlingStatus;
- (int64_t)_intentResponseCode;
- (int64_t)_intents_toggleState;
- (int64_t)_stageWithName:(id)name;
- (int64_t)_type;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)_setCode:(int64_t)code;
- (void)_setPayloadResponseMessageData:(id)data;
- (void)_setPayloadResponseTypeName:(id)name;
- (void)_setResponseMessagePBRepresentation:(id)representation;
- (void)_updateWithJSONDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
- (void)setPropertiesByName:(id)name;
- (void)setUserActivity:(NSUserActivity *)userActivity;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation INIntentResponse

+ (void)initialize
{
  if (objc_opt_class() == self && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

- (int64_t)_type
{
  v3 = objc_opt_class();
  v4 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass(v3);
  type = [v4 type];

  if (type)
  {
    return 1;
  }

  _payloadResponseTypeName = [(INIntentResponse *)self _payloadResponseTypeName];
  v8 = [_payloadResponseTypeName hasPrefix:@"sirikit.intents.custom."];

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
    _payloadResponseMessageData = [(INIntentResponse *)self _payloadResponseMessageData];
    _type = [(INIntentResponse *)self _type];
    if (_type > 1)
    {
      if (_type != 3)
      {
        if (_type == 2)
        {
          v11 = [INCodable alloc];
          if (_payloadResponseMessageData)
          {
            v12 = _payloadResponseMessageData;
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

    else if (_type)
    {
      if (_type == 1)
      {
        v6 = objc_opt_class();
        v7 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass(v6);
        dataClass = [v7 dataClass];

        v9 = dataClass;
        if (!_payloadResponseMessageData)
        {
LABEL_6:
          v10 = objc_alloc_init(v9);
LABEL_15:
          v13 = self->_responseMessagePBRepresentation;
          self->_responseMessagePBRepresentation = v10;

          goto LABEL_16;
        }

LABEL_12:
        v10 = [[v9 alloc] initWithData:_payloadResponseMessageData];
        goto LABEL_15;
      }

LABEL_16:

      responseMessagePBRepresentation = self->_responseMessagePBRepresentation;
      goto LABEL_17;
    }

    v9 = _INPBGenericIntentResponse;
    if (!_payloadResponseMessageData)
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
  payloadSuccess = [(_INPBIntentResponse *)self->_backingStore payloadSuccess];
  responseMessageData = [payloadSuccess responseMessageData];

  return responseMessageData;
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
    _inCodable = [(INIntentResponse *)self _inCodable];
    v6 = [_inCodable valueForPropertyNamed:@"_code"];
    code = [v6 integerValue];

    if (code > 99)
    {
      return code;
    }
  }

  if ([(_INPBIntentResponse *)self->_backingStore hasType])
  {
    type = [(_INPBIntentResponse *)self->_backingStore type];
  }

  else
  {
    type = 3;
  }

  if ([(_INPBIntentResponse *)self->_backingStore hasPayloadFailure])
  {
    payloadFailure = [(_INPBIntentResponse *)self->_backingStore payloadFailure];
    if ([payloadFailure hasErrorCode])
    {
      errorCode = [payloadFailure errorCode];
    }

    else
    {
      errorCode = 0x7FFFFFFFLL;
    }

    if ([payloadFailure hasAppLaunchRequested])
    {
      appLaunchRequested = [payloadFailure appLaunchRequested];
    }

    else
    {
      appLaunchRequested = 0;
    }
  }

  else
  {
    appLaunchRequested = 0;
    errorCode = 0x7FFFFFFFLL;
  }

  v11 = objc_opt_class();

  return [v11 _codeFromType:type errorCode:errorCode appLaunchRequested:appLaunchRequested];
}

- (id)intentSlotDescriptions
{
  v2 = objc_opt_class();
  v3 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass(v2);
  slotsByName = [v3 slotsByName];
  allValues = [slotsByName allValues];

  return allValues;
}

- (id)_inCodable
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  }

  else
  {
    _responseMessagePBRepresentation2 = 0;
  }

  return _responseMessagePBRepresentation2;
}

- (int64_t)_intentHandlingStatus
{
  _intentResponseCode = [(INIntentResponse *)self _intentResponseCode];
  if ((_intentResponseCode - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F0F8[_intentResponseCode - 1];
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
  slotsByName = [v5 slotsByName];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __61__INIntentResponse_INCacheSupport___intents_cacheableObjects__block_invoke;
  v15 = &unk_1E72840F0;
  selfCopy = self;
  v7 = v3;
  v17 = v7;
  [slotsByName enumerateKeysAndObjectsUsingBlock:&v12];

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
  payloadSuccess = [(_INPBIntentResponse *)self->_backingStore payloadSuccess];
  responseTypeName = [payloadSuccess responseTypeName];
  v17 = 0;
  v18 = 0;
  v5 = INSchemaWithTypeName(responseTypeName, &v18, &v17);
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
    payloadSuccess2 = [(_INPBIntentResponse *)self->_backingStore payloadSuccess];
    responseMessageData = [payloadSuccess2 responseMessageData];
    v13 = [(INCodable *)v10 initWithCodableDescription:v9 data:responseMessageData];

    [(INIntentResponse *)self _setResponseMessagePBRepresentation:v13];
    if (([(INIntentResponse *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
      code = [(INIntentResponse *)self code];
      if (code != [(INIntentResponse *)self _code])
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
  payloadSuccess = [(_INPBIntentResponse *)self->_backingStore payloadSuccess];
  responseTypeName = [payloadSuccess responseTypeName];

  return responseTypeName;
}

- (id)localizeValueOfSlotDescription:(id)description withLocalizer:(id)localizer
{
  localizerCopy = localizer;
  descriptionCopy = description;
  facadePropertyName = [descriptionCopy facadePropertyName];
  v9 = [(INIntentResponse *)self valueForKey:facadePropertyName];
  v10 = [descriptionCopy localizeValue:v9 withLocalizer:localizerCopy];

  return v10;
}

- (int64_t)_intents_toggleState
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  _instanceDescription = [(INIntentResponse *)self _instanceDescription];
  slotsByName = [_instanceDescription slotsByName];

  v5 = [slotsByName countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(slotsByName);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        _instanceDescription2 = [(INIntentResponse *)self _instanceDescription];
        slotsByName2 = [_instanceDescription2 slotsByName];
        v12 = [slotsByName2 objectForKey:v9];

        if ([v12 valueType] == 204)
        {
          v14 = [(INIntentResponse *)self valueForKey:v9];
          integerValue = [v14 integerValue];

          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [slotsByName countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  integerValue = 0;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
  return integerValue;
}

- (id)_propertiesByNameWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  v5 = MEMORY[0x1E695DF90];
  propertiesByName = [(INIntentResponse *)self propertiesByName];
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(propertiesByName, "count")}];

  propertiesByName2 = [(INIntentResponse *)self propertiesByName];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __59__INIntentResponse_Custom___propertiesByNameWithLocalizer___block_invoke;
  v16 = &unk_1E72831C0;
  v17 = v7;
  v18 = localizerCopy;
  v9 = localizerCopy;
  v10 = v7;
  [propertiesByName2 enumerateKeysAndObjectsUsingBlock:&v13];

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

- (id)_propertiesByNameForLanguage:(id)language
{
  v4 = [INStringLocalizer localizerForLanguage:language];
  v5 = [(INIntentResponse *)self _propertiesByNameWithLocalizer:v4];

  return v5;
}

- (id)_responseTemplateWithLocalizer:(id)localizer requiresSiriCompatibility:(BOOL)compatibility
{
  compatibilityCopy = compatibility;
  localizerCopy = localizer;
  if ([(INIntentResponse *)self _type]== 2)
  {
    _intentResponseCodableCode = [(INIntentResponse *)self _intentResponseCodableCode];
    _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
    _originatingBundleIdentifier = [(INIntentResponse *)self _originatingBundleIdentifier];
    v10 = [localizerCopy bundleWithIdentifier:_originatingBundleIdentifier fileURL:0];

    if (!v10)
    {
      v11 = _INVCIntentDefinitionManagerClass();
      _originatingBundleIdentifier2 = [(INIntentResponse *)self _originatingBundleIdentifier];
      v13 = [v11 intentDefinitionURLsForBundleID:_originatingBundleIdentifier2];
      firstObject = [v13 firstObject];
      uRLByDeletingLastPathComponent = [firstObject URLByDeletingLastPathComponent];

      _originatingBundleIdentifier3 = [(INIntentResponse *)self _originatingBundleIdentifier];
      v10 = [localizerCopy bundleWithIdentifier:_originatingBundleIdentifier3 fileURL:uRLByDeletingLastPathComponent];

      if (!v10)
      {
        goto LABEL_26;
      }
    }

    if (!compatibilityCopy || [localizerCopy matchesBundleLocalizations:v10])
    {
      conciseFormatStringLocID = [_intentResponseCodableCode conciseFormatStringLocID];
      formatStringLocID = [_intentResponseCodableCode formatStringLocID];
      conciseFormatString = [_intentResponseCodableCode conciseFormatString];
      formatString = [_intentResponseCodableCode formatString];
      v21 = formatString;
      v35 = formatStringLocID;
      v36 = conciseFormatStringLocID;
      if (formatStringLocID)
      {
        v22 = formatStringLocID;
      }

      else
      {
        v22 = conciseFormatStringLocID;
      }

      if (conciseFormatStringLocID)
      {
        v23 = conciseFormatStringLocID;
      }

      else
      {
        v23 = formatStringLocID;
      }

      if (formatString)
      {
        v24 = formatString;
      }

      else
      {
        v24 = conciseFormatString;
      }

      if (conciseFormatString)
      {
        v25 = conciseFormatString;
      }

      else
      {
        v25 = formatString;
      }

      v38 = localizerCopy;
      if (compatibilityCopy)
      {
        v26 = v22;
      }

      else
      {
        v26 = v23;
      }

      if (compatibilityCopy)
      {
        v27 = v24;
      }

      else
      {
        v27 = v25;
      }

      v28 = v27;
      v29 = v26;
      [_responseMessagePBRepresentation _objectDescription];
      v30 = v37 = _intentResponseCodableCode;
      _localizationTable = [v30 _localizationTable];
      tableName = [_localizationTable tableName];
      v33 = INLocalizedFormatStringFromCodable(v29, v28, tableName, v10, v38, _responseMessagePBRepresentation, 0, 0, 0);

      localizerCopy = v38;
      _intentResponseCodableCode = v37;
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

- (id)_responseTemplateForLanguage:(id)language
{
  v4 = [INStringLocalizer localizerForLanguage:language];
  v5 = [(INIntentResponse *)self _responseTemplateWithLocalizer:v4];

  return v5;
}

- (id)_originatingBundleIdentifier
{
  _payloadResponseTypeName = [(INIntentResponse *)self _payloadResponseTypeName];
  v4 = [_payloadResponseTypeName hasPrefix:@"sirikit.intents.custom."];

  if (v4)
  {
    _payloadResponseTypeName2 = [(INIntentResponse *)self _payloadResponseTypeName];
    v6 = [_payloadResponseTypeName2 substringFromIndex:{objc_msgSend(@"sirikit.intents.custom.", "length")}];
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

- (void)_intents_updateContainerWithCache:(id)cache
{
  cacheCopy = cache;
  v5 = objc_opt_class();
  v6 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass(v5);
  slotsByName = [v6 slotsByName];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__INIntentResponse_INCacheSupport___intents_updateContainerWithCache___block_invoke;
  v9[3] = &unk_1E72840F0;
  v9[4] = self;
  v10 = cacheCopy;
  v8 = cacheCopy;
  [slotsByName enumerateKeysAndObjectsUsingBlock:v9];
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

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  v22 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  _inCodable = [(INIntentResponse *)self _inCodable];
  v9 = _inCodable;
  if (_inCodable)
  {
    if ([_inCodable isValidKey:keyCopy])
    {
      [v9 setValue:valueCopy forPropertyNamed:keyCopy];
      data = [v9 data];
      [(INIntentResponse *)self _setPayloadResponseMessageData:data];
    }

    else
    {
      v11 = INSiriLogContextIntents;
      if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_7;
      }

      data = v11;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 136315650;
      v17 = "[INIntentResponse setValue:forUndefinedKey:]";
      v18 = 2112;
      v19 = keyCopy;
      v20 = 2112;
      v21 = v14;
      _os_log_fault_impl(&dword_18E991000, data, OS_LOG_TYPE_FAULT, "%s '%@' is an invalid parameter for '%@'. Please make sure that your intent definition file is valid.", buf, 0x20u);
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = INIntentResponse;
    [(INIntentResponse *)&v15 setValue:valueCopy forUndefinedKey:keyCopy];
  }

LABEL_7:

  v12 = *MEMORY[0x1E69E9840];
}

- (id)valueForUndefinedKey:(id)key
{
  v22 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  _inCodable = [(INIntentResponse *)self _inCodable];
  v6 = _inCodable;
  if (!_inCodable)
  {
    v15.receiver = self;
    v15.super_class = INIntentResponse;
    v7 = [(INIntentResponse *)&v15 valueForUndefinedKey:keyCopy];
    goto LABEL_5;
  }

  if ([_inCodable isValidKey:keyCopy])
  {
    v7 = [v6 valueForPropertyNamed:keyCopy];
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
    v19 = keyCopy;
    v20 = 2112;
    v21 = v14;
    _os_log_fault_impl(&dword_18E991000, v12, OS_LOG_TYPE_FAULT, "%s '%@' is an invalid parameter for '%@'. Please make sure that your intent definition file is valid.", buf, 0x20u);
  }

  v8 = 0;
LABEL_9:

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  _inCodable = [(INIntentResponse *)self _inCodable];
  v6 = _inCodable;
  if (_inCodable && [_inCodable isValidKey:keyCopy])
  {
    v7 = [v6 valueForPropertyNamed:keyCopy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = INIntentResponse;
    v7 = [(INIntentResponse *)&v10 valueForKey:keyCopy];
  }

  v8 = v7;

  return v8;
}

- (id)_querySchemaWithBlock:(id)block
{
  blockCopy = block;
  payloadSuccess = [(_INPBIntentResponse *)self->_backingStore payloadSuccess];
  responseTypeName = [payloadSuccess responseTypeName];
  v14 = 0;
  v15 = 0;
  v7 = INSchemaWithTypeName(responseTypeName, &v15, &v14);
  v8 = v15;

  v9 = blockCopy[2](blockCopy, v7);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = [INSchema _defaultSchemaForBundle:v11];

    v10 = blockCopy[2](blockCopy, v12);
    v7 = v12;
  }

  return v10;
}

- (BOOL)_isValidKey:(id)key
{
  keyCopy = key;
  _inCodable = [(INIntentResponse *)self _inCodable];
  v6 = _inCodable;
  if (_inCodable)
  {
    v7 = [_inCodable isValidKey:keyCopy];
  }

  else
  {
    NSSelectorFromString(keyCopy);

    v7 = objc_opt_respondsToSelector();
  }

  return v7 & 1;
}

- (void)_setResponseMessagePBRepresentation:(id)representation
{
  objc_storeStrong(&self->_responseMessagePBRepresentation, representation);
  representationCopy = representation;
  data = [representationCopy data];

  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (int64_t)_codeWithName:(id)name
{
  v51 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  _className = [(INIntentResponse *)self _className];
  v6 = [_className stringByAppendingString:@"CodeUnspecified"];
  v7 = [nameCopy isEqualToString:v6];

  if (v7)
  {
    value = 0;
  }

  else
  {
    v9 = [_className stringByAppendingString:@"CodeReady"];
    v10 = [nameCopy isEqualToString:v9];

    if (v10)
    {
      value = 1;
    }

    else
    {
      v11 = [_className stringByAppendingString:@"CodeInProgress"];
      v12 = [nameCopy isEqualToString:v11];

      if (v12)
      {
        value = 3;
      }

      else
      {
        v13 = [_className stringByAppendingString:@"CodeSuccess"];
        v14 = [nameCopy isEqualToString:v13];

        if (v14)
        {
          value = 4;
        }

        else
        {
          v15 = [_className stringByAppendingString:@"CodeFailure"];
          v16 = [nameCopy isEqualToString:v15];

          if (v16)
          {
            value = 5;
          }

          else
          {
            v17 = [_className stringByAppendingString:@"CodeContinueInApp"];
            v18 = [nameCopy isEqualToString:v17];

            if (v18)
            {
              value = 2;
            }

            else
            {
              v19 = [_className stringByAppendingString:@"CodeFailureRequiringAppLaunch"];
              v20 = [nameCopy isEqualToString:v19];

              if (v20)
              {
                value = 6;
              }

              else
              {
                v21 = [_className stringByAppendingString:@"CodeUserConfirmationRequired"];
                v22 = [nameCopy isEqualToString:v21];

                if (v22)
                {
                  value = 8;
                }

                else
                {
                  v23 = [_className stringByAppendingString:@"CodeHandleInApp"];
                  v24 = [nameCopy isEqualToString:v23];

                  if (v24)
                  {
                    value = 7;
                  }

                  else
                  {
                    value = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  _inCodable = [(INIntentResponse *)self _inCodable];

  if (_inCodable)
  {
    _inCodable2 = [(INIntentResponse *)self _inCodable];
    _objectDescription = [_inCodable2 _objectDescription];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = [_objectDescription responseCodes];
    v28 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v28)
    {
      v29 = v28;
      v42 = _objectDescription;
      v43 = _inCodable2;
      v41 = value;
      v45 = _className;
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
          name = [v32 name];
          v34 = MEMORY[0x1E696AEC0];
          v35 = [name substringToIndex:1];
          uppercaseString = [v35 uppercaseString];
          v37 = [name substringFromIndex:1];
          v38 = [v34 stringWithFormat:@"%@Code%@%@", v45, uppercaseString, v37];

          if ([nameCopy isEqualToString:v38])
          {
            value = [v32 value];

            _className = v45;
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

      _className = v45;
      value = v41;
LABEL_31:
      _objectDescription = v42;
      _inCodable2 = v43;
    }
  }

  v39 = *MEMORY[0x1E69E9840];
  return value;
}

- (int64_t)_stageWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Confirm"])
  {
    v4 = 1;
  }

  else if ([nameCopy isEqualToString:@"Handle"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPropertiesByName:(id)name
{
  nameCopy = name;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x1E695DF70];
    v7 = _responseMessagePBRepresentation;
    v8 = [[v6 alloc] initWithCapacity:{objc_msgSend(nameCopy, "count")}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__INIntentResponse_setPropertiesByName___block_invoke;
    v11[3] = &unk_1E7285238;
    v12 = v8;
    v9 = v8;
    [nameCopy enumerateKeysAndObjectsUsingBlock:v11];
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
      [nameCopy enumerateKeysAndObjectsUsingBlock:v10];
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
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    properties = [_responseMessagePBRepresentation properties];
    if ([properties count])
    {
      v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(properties, "count")}];
    }

    else
    {
      v4 = 0;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = properties;
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
          role = [v11 role];
          if (role)
          {
            v13 = INIntentSlotValueTransformFromProperty(v11);
            [v4 setObject:v13 forKeyedSubscript:role];
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
      v5 = [_responseMessagePBRepresentation _dictionaryRepresentationWithNullValues:0];
    }

    else
    {
      v5 = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (INIntentResponse)initWithPropertiesByName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc_init(_INPBIntentResponse);
  v6 = [(INIntentResponse *)self initWithBackingStore:v5];

  if (v6)
  {
    [(INIntentResponse *)v6 setPropertiesByName:nameCopy];
  }

  return v6;
}

- (INCodableDescription)_codableDescription
{
  codableDescription = self->_codableDescription;
  if (!codableDescription)
  {
    _inCodable = [(INIntentResponse *)self _inCodable];
    v5 = _inCodable;
    if (_inCodable)
    {
      _objectDescription = [_inCodable _objectDescription];
    }

    else
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __39__INIntentResponse__codableDescription__block_invoke;
      v9[3] = &unk_1E7285210;
      v9[4] = self;
      _objectDescription = [(INIntentResponse *)self _querySchemaWithBlock:v9];
    }

    v7 = self->_codableDescription;
    self->_codableDescription = _objectDescription;

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
  _className = [(INIntentResponse *)self _className];
  code = [(INIntentResponse *)self code];
  v5 = _className;
  v6 = v5;
  if (code > 8)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 stringByAppendingString:off_1E7285258[code]];
  }

  if (v7)
  {
    v8 = 0;
    v27[0] = @"code";
LABEL_6:
    null = v7;
    goto LABEL_13;
  }

  if (-[INIntentResponse _type](self, "_type") == 2 && (-[INIntentResponse _intentResponseCodableCode](self, "_intentResponseCodableCode"), v10 = objc_claimAutoreleasedReturnValue(), [v10 name], v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    v12 = MEMORY[0x1E696AEC0];
    _className2 = [(INIntentResponse *)self _className];
    v14 = [v11 substringToIndex:1];
    uppercaseString = [v14 uppercaseString];
    v16 = [v11 substringFromIndex:1];
    v7 = [v12 stringWithFormat:@"%@Code%@%@", _className2, uppercaseString, v16];

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

  null = [MEMORY[0x1E695DFB0] null];
  v7 = 0;
  v8 = 1;
LABEL_13:
  v27[1] = @"userActivity";
  v28[0] = null;
  userActivity = [(INIntentResponse *)self userActivity];
  null2 = userActivity;
  if (!userActivity)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v28[1] = null2;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  if (!userActivity)
  {
  }

  if (v8)
  {
  }

  _inCodable = [(INIntentResponse *)self _inCodable];

  if (_inCodable)
  {
    v21 = [v19 mutableCopy];
    _inCodable2 = [(INIntentResponse *)self _inCodable];
    dictionaryRepresentation = [_inCodable2 dictionaryRepresentation];
    [v21 addEntriesFromDictionary:dictionaryRepresentation];

    v24 = [v21 copy];
    v19 = v24;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INIntentResponse;
  v6 = [(INIntentResponse *)&v11 description];
  _redactedDictionaryRepresentation = [(INIntentResponse *)self _redactedDictionaryRepresentation];
  v8 = [_redactedDictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)_updateWithJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"properties"];
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
  _className = [(INIntentResponse *)self _className];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"status"];
  v10 = [v7 stringWithFormat:@"%@Code%@", _className, v9];
  [(INIntentResponse *)self _setCode:[(INIntentResponse *)self _codeWithName:v10]];

  v11 = [dictionaryCopy objectForKeyedSubscript:@"stage"];
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
  _codableDescription = [(INIntentResponse *)self _codableDescription];
  [(INJSONDecoder *)v15 decodeObject:self withCodableDescription:_codableDescription from:v6];

  v17 = objc_opt_class();
  v18 = [dictionaryCopy objectForKeyedSubscript:@"userActivity"];
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

  _codableDescription2 = [(INIntentResponse *)self _codableDescription];
  if (_codableDescription2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = _codableDescription2;
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

  _nullable_schema = [v26 _nullable_schema];
  _types = [_nullable_schema _types];
  [v26 _reestablishReferencedCodableDescriptionsUsingTypes:_types];

  v29 = [_nullable_schema intentCodableDescriptionWithIntentClassName:v23];
  _types2 = [_nullable_schema _types];
  [v29 _reestablishReferencedCodableDescriptionsUsingTypes:_types2 intentResponseCodableDescription:v26];
}

- (NSDictionary)_JSONDictionaryRepresentation
{
  v3 = [INJSONEncoder alloc];
  v4 = objc_alloc_init(INJSONEncoderConfiguration);
  v5 = +[INPreferences siriLanguageCode];
  [(INJSONEncoderConfiguration *)v4 setLanguageCode:v5];

  v6 = [(INJSONEncoder *)v3 initWithConfiguration:v4];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _dictionaryRepresentation = [(INIntentResponse *)self _dictionaryRepresentation];
  v9 = [_dictionaryRepresentation objectForKeyedSubscript:@"code"];
  _className = [(INIntentResponse *)self _className];
  v11 = [_className stringByAppendingString:@"Code"];
  v12 = [v9 substringFromIndex:{objc_msgSend(v11, "length")}];
  [v7 if_setObjectIfNonNil:v12 forKey:@"status"];

  _payloadResponseTypeName = [(INIntentResponse *)self _payloadResponseTypeName];
  [v7 if_setObjectIfNonNil:_payloadResponseTypeName forKey:@"typeName"];

  _codableDescription = [(INIntentResponse *)self _codableDescription];
  v15 = [(INJSONEncoder *)v6 encodeObject:self withCodableDescription:_codableDescription];
  [v7 if_setObjectIfNonNil:v15 forKey:@"properties"];

  userActivity = [(INIntentResponse *)self userActivity];
  v17 = [(INJSONEncoder *)v6 encodeObject:userActivity];
  [v7 if_setObjectIfNonNil:v17 forKey:@"userActivity"];

  return v7;
}

- (NSString)_className
{
  _payloadResponseTypeName = [(INIntentResponse *)self _payloadResponseTypeName];
  if ([_payloadResponseTypeName hasPrefix:@"sirikit.intents.custom."])
  {
    v3 = [_payloadResponseTypeName componentsSeparatedByString:@"."];
    lastObject = [v3 lastObject];
  }

  else
  {
    v5 = objc_opt_class();
    lastObject = NSStringFromClass(v5);
  }

  return lastObject;
}

- (INIntentResponseDescription)_instanceDescription
{
  if ([(INIntentResponse *)self _type]== 2)
  {
    v3 = [INIntentResponseDescription alloc];
    _className = [(INIntentResponse *)self _className];
    _className2 = [(INIntentResponse *)self _className];
    v6 = objc_opt_class();
    v7 = NSClassFromString(_className2);
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
    _payloadResponseTypeName = [(INIntentResponse *)self _payloadResponseTypeName];
    _inCodable = [(INIntentResponse *)self _inCodable];
    v13 = INIntentSlotDescriptionsWithCodable(_inCodable);
    v14 = [(INIntentResponseDescription *)v3 initWithName:_className facadeClass:v10 dataClass:0 type:_payloadResponseTypeName isPrivate:0 slotsByName:v13];
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
    _inCodable = [(INIntentResponse *)self _inCodable];
    _objectDescription = [_inCodable _objectDescription];
    v5 = [_objectDescription intentResponseCodeWithCode:{-[INIntentResponse code](self, "code")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_intentResponseCode
{
  code = [(INIntentResponse *)self code];
  if ([(INIntentResponse *)self _type]== 2)
  {
    _intentResponseCodableCode = [(INIntentResponse *)self _intentResponseCodableCode];
    if ([(INIntentResponse *)self code]>= 100)
    {
      if ([(INIntentResponse *)self _stage]== 1)
      {
        code = 1;
      }

      else
      {
        code = 4;
      }

      if (![_intentResponseCodableCode isSuccess])
      {
        code = 5;
      }
    }
  }

  return code;
}

- (void)_setPayloadResponseTypeName:(id)name
{
  backingStore = self->_backingStore;
  nameCopy = name;
  payloadSuccess = [(_INPBIntentResponse *)backingStore payloadSuccess];
  [payloadSuccess setResponseTypeName:nameCopy];
}

- (void)_setPayloadResponseMessageData:(id)data
{
  backingStore = self->_backingStore;
  dataCopy = data;
  payloadSuccess = [(_INPBIntentResponse *)backingStore payloadSuccess];
  [payloadSuccess setResponseMessageData:dataCopy];
}

- (INIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"backingStore"];

  v7 = [coderCopy decodeIntegerForKey:@"code"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userActivityData"];
  v9 = INUserActivityDeserializeFromData(v8);

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codableDescriptionData"];
  if (v10)
  {
    v18 = 0;
    v11 = [MEMORY[0x1E696ACD0] _in_safeUnarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v18];
    v12 = v18;
    if (v12)
    {
      v13 = v12;
      [coderCopy failWithError:v12];

LABEL_9:
      selfCopy = 0;
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
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[INIntentResponse code](self forKey:{"code"), @"code"}];
  v5 = INUserActivitySerializeToData(self->_userActivity);
  [coderCopy encodeObject:v5 forKey:@"userActivityData"];

  backingStore = [(INIntentResponse *)self backingStore];
  [coderCopy encodeObject:backingStore forKey:@"backingStore"];

  _inCodable = [(INIntentResponse *)self _inCodable];
  _objectDescription = [_inCodable _objectDescription];

  if (_objectDescription)
  {
    v11 = 0;
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:_objectDescription requiringSecureCoding:1 error:&v11];
    v10 = v11;
    if (v10)
    {
      [coderCopy failWithError:v10];
    }

    else
    {
      [coderCopy encodeObject:v9 forKey:@"codableDescriptionData"];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  backingStore = [(INIntentResponse *)self backingStore];
  v6 = [v4 initWithBackingStore:backingStore];

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
  _intents_copy = [(NSUserActivity *)v4 _intents_copy];
  v6 = self->_userActivity;
  self->_userActivity = _intents_copy;

  backingStore = self->_backingStore;
  v8 = INUserActivitySerializeToBackingStore(v4);

  [(_INPBIntentResponse *)backingStore setUserActivity:v8];
}

- (void)_setCode:(int64_t)code
{
  self->_code = code;
  if ([(INIntentResponse *)self _type]== 2)
  {
    _inCodable = [(INIntentResponse *)self _inCodable];
    if (code < 100)
    {
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:code];
    }

    if ([_inCodable isValidKey:@"_code"])
    {
      [_inCodable setValue:v6 forPropertyNamed:@"_code"];
    }

    [(INIntentResponse *)self _setResponseMessagePBRepresentation:_inCodable];
  }

  _type = [(INIntentResponse *)self _type];
  if (code < 100 || _type != 2)
  {
    -[_INPBIntentResponse setType:](self->_backingStore, "setType:", [objc_opt_class() _typeFromCode:code]);
    v8 = [objc_opt_class() _errorCodeFromCode:code];
    if (v8 != 0x7FFFFFFF)
    {
      v9 = v8;
      payloadFailure = [(_INPBIntentResponse *)self->_backingStore payloadFailure];
      [payloadFailure setErrorCode:v9];
    }

    if ([objc_opt_class() _appLaunchRequestedFromCode:code])
    {
      payloadFailure2 = [(_INPBIntentResponse *)self->_backingStore payloadFailure];
      [payloadFailure2 setAppLaunchRequested:1];
    }
  }
}

- (INIntentResponse)initWithBackingStore:(id)store
{
  storeCopy = store;
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
    userActivity = [storeCopy userActivity];
    v7 = INUserActivityDeserializeFromBackingStore(userActivity);
    userActivity = v5->_userActivity;
    v5->_userActivity = v7;

    v9 = [storeCopy copy];
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
    type = [v13 type];
    [(_INPBIntentResponsePayloadSuccess *)v11 setResponseTypeName:type];

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

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v22.receiver = self;
  v22.super_class = INIntentResponse;
  v8 = [(INIntentResponse *)&v22 init];
  p_isa = &v8->super.isa;
  if (v8)
  {
    objc_storeStrong(&v8->_userActivity, activity);
    v10 = objc_alloc_init(_INPBIntentResponse);
    v11 = p_isa[3];
    p_isa[3] = v10;

    v12 = objc_alloc_init(_INPBIntentResponsePayloadSuccess);
    v13 = objc_opt_class();
    v14 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass(v13);
    type = [v14 type];
    [(_INPBIntentResponsePayloadSuccess *)v12 setResponseTypeName:type];

    [p_isa[3] setPayloadSuccess:v12];
    v16 = p_isa[3];
    v17 = objc_alloc_init(_INPBIntentResponsePayloadFailure);
    [v16 setPayloadFailure:v17];

    if (activityCopy)
    {
      v18 = p_isa[3];
      v19 = INUserActivitySerializeToBackingStore(activityCopy);
      [v18 setUserActivity:v19];
    }

    if (![p_isa _commonInit])
    {

      v20 = 0;
      goto LABEL_8;
    }

    [p_isa setCode:code];
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
  type = [v6 type];

  if (type)
  {
    goto LABEL_20;
  }

  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  bundleIdentifier = [v8 bundleIdentifier];
  bundleRecordForCurrentProcess = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
  if_containingAppRecord = [bundleRecordForCurrentProcess if_containingAppRecord];
  v12 = if_containingAppRecord;
  if (if_containingAppRecord)
  {
    v13 = MEMORY[0x1E695DFD8];
    intentDefinitionURLs = [if_containingAppRecord intentDefinitionURLs];
    allKeys = [intentDefinitionURLs allKeys];
    v16 = [v13 setWithArray:allKeys];

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
        bundleIdentifier2 = [v12 bundleIdentifier];

        bundleIdentifier = bundleIdentifier2;
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
    v21 = [bundleRecordForCurrentProcess URL];
    bundleURL = [v8 bundleURL];
    v23 = [v21 if_isContainedByDirectoryAtURL:bundleURL];

    if (v23)
    {
      bundleIdentifier3 = [bundleRecordForCurrentProcess bundleIdentifier];

      bundleIdentifier = bundleIdentifier3;
    }
  }

LABEL_17:
  if (!bundleIdentifier)
  {
    bundlePath = [v8 bundlePath];
    bundleIdentifier = [bundlePath lastPathComponent];
  }

  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", @"sirikit.intents.custom.", bundleIdentifier, v29];
  [v2 _setPayloadResponseTypeName:v30];
  _commonInit = [v2 _commonInit];

  if (!_commonInit)
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

+ (int64_t)_intentHandlingStatusFromCode:(int64_t)code
{
  if ((code - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F158[code - 1];
  }
}

+ (int64_t)_codeFromIntentResponseCode:(int64_t)code
{
  v4 = [self _typeFromCode:code];

  return [self _codeFromType:v4 errorCode:0 appLaunchRequested:0];
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 6)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F138[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 3;
  v6 = 2;
  if (type != 4)
  {
    v6 = type == 5;
  }

  if (type != 2)
  {
    v5 = v6;
  }

  v7 = 4;
  v8 = 5;
  if (requested)
  {
    v8 = 6;
  }

  if (type != 1)
  {
    v8 = 0;
  }

  if (type)
  {
    v7 = v8;
  }

  if (type <= 1)
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
  v2 = [[self alloc] _initWithCode:0 userActivity:0];

  return v2;
}

+ (id)responseSuccess
{
  v2 = [[self alloc] _initWithCode:4 userActivity:0];

  return v2;
}

- (BOOL)_enumerateWithValueProcessingBlock:(id)block
{
  blockCopy = block;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (_responseMessagePBRepresentation && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (INEnumerateObjectsInCodable(_responseMessagePBRepresentation, blockCopy))
    {
      data = [_responseMessagePBRepresentation data];
      [(INIntentResponse *)self _setPayloadResponseMessageData:data];

      v7 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {

    v7 = INEnumerateObjectsInIntentSlotComposing(self, blockCopy);
    _responseMessagePBRepresentation = 0;
  }

  return v7;
}

- (BOOL)_intents_enumerateObjectsOfClass:(Class)class withBlock:(id)block
{
  v5 = _INEnumerableValueProcessingBlock(class, block);
  LOBYTE(self) = [(INIntentResponse *)self _enumerateWithValueProcessingBlock:v5];

  return self;
}

- (INImage)_keyImage
{
  v3 = INKeyImageUtilitiesSortedSubProducersForSlotComposingProducer(self);
  firstObject = [v3 firstObject];

  v5 = [firstObject valueForSlotComposer:self];
  if ([v5 conformsToProtocol:&unk_1F02E1E10])
  {
    _keyImage = [v5 _keyImage];
  }

  else
  {
    _keyImage = 0;
  }

  return _keyImage;
}

@end