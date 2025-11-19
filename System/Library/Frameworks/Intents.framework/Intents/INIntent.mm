@interface INIntent
+ (id)_sharedExtensionContextUUIDForIntentClassName:(id)a3;
+ (id)intentDescription;
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
+ (id)typeName;
+ (void)_setSharedExtensionContextUUID:(id)a3 forIntentClassName:(id)a4;
+ (void)initialize;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_intents_preferredScaledImageSize;
- (BOOL)_enumerateWithValueProcessingBlock:(id)a3;
- (BOOL)_hasMatchingIntentHandlerIncludingRemoteExecution:(BOOL)a3;
- (BOOL)_hasTitle;
- (BOOL)_intents_enumerateObjectsOfClass:(Class)a3 withBlock:(id)a4;
- (BOOL)_isConfigurable;
- (BOOL)_isEligibleForSuggestions;
- (BOOL)_isPrimaryDisplayDisabled;
- (BOOL)_isUserConfirmationRequired;
- (BOOL)_isValidKey:(id)a3;
- (BOOL)_isValueValidForKey:(id)a3 unsupportedReason:(id *)a4;
- (BOOL)_supportsBackgroundExecutionWithOptions:(unint64_t)a3;
- (BOOL)configureAttributeSet:(id)a3 includingData:(BOOL)a4;
- (BOOL)didAuthenticateAppProtection;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGenericIntent;
- (INAppIntent)_asMigratedAppIntent;
- (INImage)_defaultImage;
- (INImage)_keyImage;
- (INImage)imageForParameterNamed:(NSString *)parameterName;
- (INIntent)init;
- (INIntent)initWithCoder:(id)a3;
- (INIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (INIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
- (INIntentCodableDescription)_codableDescription;
- (INIntentKeyParameter)_keyParameter;
- (INShortcutAvailabilityOptions)shortcutAvailability;
- (NSArray)_codableAttributes;
- (NSArray)_parameterImages;
- (NSArray)_parametersForcedToNeedsValue;
- (NSArray)_sortedParameterImages;
- (NSArray)airPlayRouteIds;
- (NSDictionary)_JSONDictionaryRepresentation;
- (NSDictionary)_configurableParameterCombinations;
- (NSDictionary)_parameterCombinations;
- (NSDictionary)_resolvableParameterCombinations;
- (NSDictionary)parametersByName;
- (NSNumber)_endpointMediaPlaybackEnabled;
- (NSNumber)_isOwnedByCurrentUser;
- (NSNumber)_msLimitReached;
- (NSOrderedSet)_displayOrderedAttributes;
- (NSString)_categoryVerb;
- (NSString)_endpointId;
- (NSString)_localizedVerb;
- (NSString)_mediaRouteId;
- (NSString)_nanoLaunchId;
- (NSString)_originatingDeviceIDSIdentifier;
- (NSString)_originatingDeviceRapportEffectiveIdentifier;
- (NSString)_originatingDeviceRapportMediaSystemIdentifier;
- (NSString)_preferredAudioOutputRouteId;
- (NSString)_uiExtensionBundleId;
- (NSString)debugDescription;
- (NSString)domain;
- (NSString)extensionBundleId;
- (NSString)intentDescription;
- (NSString)intentId;
- (NSString)launchId;
- (NSString)suggestedInvocationPhrase;
- (NSString)typeName;
- (NSString)utteranceString;
- (NSString)verb;
- (_INPBIntentMetadata)_metadata;
- (id)_JSONDictionaryRepresentationWithConfiguration:(id)a3;
- (id)_backingStoreData;
- (id)_className;
- (id)_copyApplyingNewBackingStoreData:(id)a3 error:(id *)a4;
- (id)_copyWithoutBackingStoreData:(id *)a3;
- (id)_currentParameterCombination;
- (id)_defaultImageName;
- (id)_dictionaryRepresentation;
- (id)_displayOrderedNonNilParameters;
- (id)_emptyCopy;
- (id)_imageForParameter:(id)a3;
- (id)_inCodable;
- (id)_init;
- (id)_initWithIdentifier:(id)a3 backingStore:(id)a4 schema:(id)a5 error:(id *)a6;
- (id)_initWithIdentifier:(id)a3 schema:(id)a4 name:(id)a5 data:(id)a6;
- (id)_intentInstanceDescription;
- (id)_intents_backgroundHandlingAssertionForBundleIdentifier:(id)a3 context:(unint64_t)a4 error:(id *)a5;
- (id)_intents_bestBundleIdentifier;
- (id)_intents_bundleIdForDisplay;
- (id)_intents_bundleIdForLaunching;
- (id)_keyCodableAttributes;
- (id)_keyImageWithIntentDescriptionStrategy;
- (id)_localizedCombinationStringForKey:(id)a3 value:(id)a4 localizationTable:(id)a5 bundleURL:(id)a6 localizer:(id)a7;
- (id)_nonNilParameters;
- (id)_querySchemaWithBlock:(id)a3 contentOptions:(unint64_t)a4;
- (id)_subtitleForLanguage:(id)a3;
- (id)_subtitleWithLocalizer:(id)a3 fromBundleURL:(id)a4;
- (id)_titleForLanguage:(id)a3;
- (id)_titleWithLocalizer:(id)a3 fromBundleURL:(id)a4;
- (id)_typedBackingStore;
- (id)_validParameterCombinationsWithSchema:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionAtIndent:(unint64_t)a3;
- (id)intentSlotDescriptions;
- (id)localizeValueOfSlotDescription:(id)a3 withLocalizer:(id)a4;
- (id)valueForKey:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (int64_t)_executionContext;
- (int64_t)_idiom;
- (int64_t)_indexingHash;
- (int64_t)_intentCategory;
- (int64_t)_intents_toggleState;
- (int64_t)_type;
- (int64_t)triggerMethod;
- (void)_injectProxiesForImages:(id)a3 completion:(id)a4;
- (void)_injectProxiesForImagesUsingCustomCodableStrategy:(id)a3 completion:(id)a4;
- (void)_injectProxiesForParameterImages:(id)a3 completion:(id)a4;
- (void)_injectProxyForDefaultImage:(id)a3 completion:(id)a4;
- (void)_intents_allowAppToInitiatePlaybackForBundleIdentifier:(id)a3 context:(unint64_t)a4 error:(id *)a5;
- (void)_setAirPlayRouteIds:(id)a3;
- (void)_setCategoryVerb:(id)a3;
- (void)_setDefaultImage:(id)a3;
- (void)_setEndpointMediaPlaybackEnabled:(id)a3;
- (void)_setExecutionContext:(int64_t)a3;
- (void)_setExtensionBundleId:(id)a3;
- (void)_setIdiom:(int64_t)a3;
- (void)_setImage:(id)a3 forParameter:(id)a4;
- (void)_setIntentCategory:(int64_t)a3;
- (void)_setIsOwnedByCurrentUser:(id)a3;
- (void)_setLaunchId:(id)a3;
- (void)_setMSLimitReached:(id)a3;
- (void)_setMetadata:(id)a3;
- (void)_setNanoLaunchId:(id)a3;
- (void)_setOriginatingDeviceIdsIdentifier:(id)a3;
- (void)_setOriginatingDeviceRapportEffectiveIdentifier:(id)a3;
- (void)_setOriginatingDeviceRapportMediaSystemIdentifier:(id)a3;
- (void)_setParameterImages:(id)a3;
- (void)_setParametersForcedToNeedsValue:(id)a3;
- (void)_setUiExtensionBundleId:(id)a3;
- (void)_updateWithJSONDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setDomain:(id)a3;
- (void)setDonationMetadata:(INIntentDonationMetadata *)donationMetadata;
- (void)setImage:(INImage *)image forParameterNamed:(NSString *)parameterName;
- (void)setParametersByName:(id)a3;
- (void)setShortcutAvailability:(INShortcutAvailabilityOptions)shortcutAvailability;
- (void)setSuggestedInvocationPhrase:(NSString *)suggestedInvocationPhrase;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- (void)setVerb:(id)a3;
- (void)trimDataAgainstTCCForAuditToken:(id *)a3 bundle:(id)a4;
@end

@implementation INIntent

+ (void)initialize
{
  if (objc_opt_class() == a1 && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

- (INIntent)init
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    goto LABEL_9;
  }

  v4 = objc_opt_class();
  if (![v4 isSubclassOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = [objc_opt_class() intentDescription];

  if (v5)
  {
    goto LABEL_9;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if (([objc_opt_class() shouldSkipDefaultSchemaCheck] & 1) == 0)
  {
    if ([INSchema _defaultSchemaCanSupportIntent:v7])
    {
      v8 = +[INSchema defaultSchema];
      v9 = [v8 intentWithName:v7];

      if (v9)
      {
        goto LABEL_8;
      }
    }
  }

  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [INSchema _defaultSchemaForBundle:v10];
  v9 = [v11 intentWithName:v7];

  if (v9)
  {
LABEL_8:
    v12 = v9;

    self = v12;
LABEL_9:
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];
    v15 = [(INIntent *)self initWithIdentifier:v14 backingStore:0];

    v16 = [(INIntent *)v15 launchId];

    if (!v16)
    {
      v17 = INContainingBundleIdentifierForCurrentProcess();
      [(INIntent *)v15 _setLaunchId:v17];
    }

    self = v15;
    v18 = self;
    goto LABEL_12;
  }

  v21 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    v22 = 136315394;
    v23 = "[INIntent init]";
    v24 = 2112;
    v25 = v7;
    _os_log_error_impl(&dword_18E991000, v21, OS_LOG_TYPE_ERROR, "%s Unable to initialize '%@'. Please make sure that your intent definition file is valid.", &v22, 0x16u);
  }

  v18 = 0;
LABEL_12:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (id)intentDescription
{
  v2 = objc_opt_class();

  return INIntentSchemaGetIntentDescriptionWithFacadeClass(v2);
}

- (NSString)_categoryVerb
{
  if ([(INIntent *)self _intentCategory]== 10 && (v3 = [(INIntent *)self _intents_toggleState]) != 0)
  {
    v4 = @"Turn Off";
    if (v3 != 2)
    {
      v4 = 0;
    }

    if (v3 == 1)
    {
      v4 = @"Turn On";
    }

    v5 = v4;
  }

  else
  {
    v6 = [(INIntent *)self _metadata];
    v7 = [v6 categoryVerb];
    if ([v7 length])
    {
      v8 = [(INIntent *)self _metadata];
      v5 = [v8 categoryVerb];
    }

    else
    {
      v5 = @"Do";
    }
  }

  return v5;
}

- (NSString)launchId
{
  v2 = [(INIntent *)self _metadata];
  v3 = [v2 launchId];

  return v3;
}

- (_INPBIntentMetadata)_metadata
{
  if ([(INIntent *)self _type]== 2)
  {
    v3 = [(INIntent *)self _inCodable];
    v4 = [v3 valueForPropertyNamed:@"_metadata"];
LABEL_5:
    v5 = v4;

    goto LABEL_7;
  }

  if ([(INIntent *)self _type]== 3)
  {
    v3 = [(INIntent *)self _typedBackingStore];
    v4 = [v3 metadata];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (int64_t)_type
{
  v3 = [(INIntent *)self backingStore];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 2;
  }

  if ([(INIntent *)self isGenericIntent])
  {
    return 3;
  }

  v6 = objc_opt_class();
  v7 = INIntentSchemaGetIntentDescriptionWithFacadeClass(v6);
  v8 = [v7 type];

  return v8 != 0;
}

- (BOOL)isGenericIntent
{
  v2 = [(INIntent *)self backingStore];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (int64_t)_intentCategory
{
  v3 = [(INIntent *)self _metadata];
  v4 = [v3 hasIntentCategory];
  v5 = [(INIntent *)self _metadata];
  v6 = [v5 intentCategory];
  if (v4 && (v6 - 1) <= 0x14)
  {
    v7 = qword_18EE5F3F0[v6 - 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_className
{
  v3 = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(INIntent *)self backingStore];
    v5 = [v4 _objectDescription];
    v6 = [v5 className];
  }

  else
  {
    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
  }

  return v6;
}

- (id)_inCodable
{
  v3 = [(INIntent *)self backingStore];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(INIntent *)self backingStore];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = INIntent;
  return [(INIntent *)&v3 init];
}

- (NSDictionary)_parameterCombinations
{
  parameterCombinations = self->_parameterCombinations;
  if (!parameterCombinations)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__INIntent__parameterCombinations__block_invoke;
    v7[3] = &unk_1E7283CE0;
    v7[4] = self;
    v4 = [(INIntent *)self _querySchemaWithBlock:v7 contentOptions:8];
    v5 = self->_parameterCombinations;
    self->_parameterCombinations = v4;

    parameterCombinations = self->_parameterCombinations;
  }

  return parameterCombinations;
}

- (id)_nonNilParameters
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(INIntent *)self backingStore];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(INIntent *)self backingStore];
    v6 = [v5 _nonNilAttributes];
  }

  else
  {
    v7 = [objc_opt_class() intentDescription];
    v6 = [MEMORY[0x1E695DFA8] set];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [v7 slotDescriptions];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v13 facadePropertyName];
          v15 = [(INIntent *)self valueForKey:v14];

          if ((INObjectIsConsideredNil(v15, [v13 isEnum]) & 1) == 0)
          {
            v16 = [v13 facadePropertyName];
            [v6 addObject:v16];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v6;
}

- (INIntentCodableDescription)_codableDescription
{
  v3 = [(INIntent *)self _inCodable];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _objectDescription];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __31__INIntent__codableDescription__block_invoke;
    v10[3] = &unk_1E7283DA8;
    v10[4] = self;
    v5 = [(INIntent *)self _querySchemaWithBlock:v10 contentOptions:31];
  }

  v6 = v5;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (BOOL)_hasTitle
{
  v3 = [(INIntent *)self _nonNilParameters];
  v4 = [v3 mutableCopy];

  v5 = [objc_opt_class() _ignoredParameters];
  [v4 minusSet:v5];

  v6 = [(INIntent *)self _parameterCombinations];
  v7 = [v6 objectForKey:v4];

  if (v7 && ([v7 titleFormatString], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v9))
  {
    v10 = 1;
  }

  else
  {
    v11 = [(INIntent *)self backingStore];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(INIntent *)self backingStore];
      v13 = [v12 _objectDescription];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v15 = [(INIntent *)self backingStore];
      v11 = [v15 _objectDescription];

      v16 = [v11 title];
      v10 = [v16 length] != 0;
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_10:

  return v10;
}

- (id)_intentInstanceDescription
{
  v3 = [(INIntent *)self backingStore];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(INIntent *)self backingStore];
    v36 = [v5 _objectDescription];
    v6 = [v36 typeName];
    v7 = [(INIntent *)self _className];
    v8 = [(NSString *)v7 stringByAppendingString:@"Response"];
    v9 = objc_opt_class();
    v10 = NSClassFromString(v8);
    if (v10 && (v11 = v10, [(objc_class *)v10 isSubclassOfClass:v9]))
    {
      v12 = v11;
      v13 = v11;
    }

    else
    {

      v8 = @"INIntentResponse";
    }

    v15 = [(INIntent *)self extensionBundleId];
    if (![v15 length])
    {
      v16 = [(INIntent *)self _intents_launchIdForCurrentPlatform];
      v37 = v15;
      INExtractAppInfoFromSiriLaunchId(v16, &v37, 0);
      v17 = v37;

      v15 = v17;
    }

    if ([v15 length] && -[NSString length](v7, "length"))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", @"sirikit.intents.custom.", v15, v7];
    }

    else
    {
      v34 = 0;
    }

    v33 = [INIntentDescription alloc];
    v18 = objc_opt_class();
    v19 = NSClassFromString(v7);
    v35 = v8;
    if (v19)
    {
      v20 = v19;
      v21 = v7;
      if ([(objc_class *)v19 isSubclassOfClass:v18])
      {
        v22 = v20;
      }

      else
      {
        v22 = 0;
      }

      v19 = v22;
    }

    else
    {
      v21 = v7;
    }

    v23 = v19;
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"handle%@:completion:", v6];
    v25 = NSSelectorFromString(v24);
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"confirm%@:completion:", v6];
    v27 = NSSelectorFromString(v26);
    INIntentSlotDescriptionsWithCodable(v5);
    v29 = v28 = v5;
    v32 = v25;
    v30 = v21;
    v14 = [(INIntentDescription *)v33 initWithName:v21 responseName:v35 facadeClass:v23 dataClass:0 type:v34 isPrivate:0 handleSelector:v32 confirmSelector:v27 slotsByName:v29];
  }

  else
  {
    v14 = [objc_opt_class() intentDescription];
  }

  return v14;
}

- (NSString)extensionBundleId
{
  v2 = [(INIntent *)self _metadata];
  v3 = [v2 systemExtensionBundleId];

  return v3;
}

- (INImage)_defaultImage
{
  v3 = [(INIntent *)self _metadata];
  v4 = [v3 defaultImageValue];

  if (v4)
  {
    v5 = INIntentSlotValueTransformFromImageValue(v4);
  }

  else
  {
    v6 = [(INIntent *)self _defaultImageName];
    if (v6)
    {
      v5 = [INImage imageNamed:v6];
      v7 = [INImage imageNamed:v6];
      [(INIntent *)self _setDefaultImage:v7];
    }

    else
    {
      v5 = 0;
    }
  }

  v8 = [(INIntent *)self extensionBundleId];
  if (v8)
  {
    [v5 _setBundleIdentifier:v8];
  }

  else
  {
    v9 = [(INIntent *)self launchId];
    [v5 _setBundleIdentifier:v9];
  }

  return v5;
}

- (id)_defaultImageName
{
  v3 = [(INIntent *)self _className];
  v4 = [(INIntent *)self _inCodable];
  v5 = [v4 _objectDescription];

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __29__INIntent__defaultImageName__block_invoke;
    v8[3] = &unk_1E7283C18;
    v9 = v3;
    v5 = [(INIntent *)self _querySchemaWithBlock:v8 contentOptions:31];
  }

  v6 = [v5 defaultImageName];

  return v6;
}

- (NSArray)_parameterImages
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [(INIntent *)self _metadata];
  v4 = [v3 parameterImages];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [INParameterImage alloc];
        v11 = objc_opt_class();
        v12 = [v9 key];
        v13 = [INParameter parameterForClass:v11 keyPath:v12];
        v14 = [v9 pairImageValues];
        v15 = [v14 firstObject];
        v16 = INIntentSlotValueTransformFromImageValue(v15);
        v17 = [(INParameterImage *)v10 initWithParameter:v13 image:v16];
        [v22 addObject:v17];
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v18 = [v22 copy];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (int64_t)_indexingHash
{
  result = self->_indexingHash;
  if (!result)
  {
    if ([(INIntent *)self _type]== 2)
    {
      v4 = objc_alloc_init(INJSONEncoderConfiguration);
      v5 = [(INIntent *)self _JSONDictionaryRepresentationWithConfiguration:v4];
      v6 = [v5 objectForKeyedSubscript:@"parameters"];
    }

    else
    {
      v4 = [(INIntent *)self _dictionaryRepresentation];
      v6 = [v4 _intents_indexingRepresentation];
    }

    v7 = [v6 mutableCopy];
    v8 = [(INIntent *)self launchId];

    if (v8)
    {
      v9 = [(INIntent *)self launchId];
      [v7 setObject:v9 forKey:@"_launchId"];
    }

    v10 = [(INIntent *)self extensionBundleId];

    if (v10)
    {
      v11 = [(INIntent *)self extensionBundleId];
      [v7 setObject:v11 forKey:@"_extensionBundleId"];
    }

    v12 = [(INIntent *)self _className];
    [v7 setObject:v12 forKey:@"_className"];

    v13 = objc_alloc_init(MEMORY[0x1E69AA8A0]);
    v14 = [v13 combineContentsOfPropertyListObject:v7];
    self->_indexingHash = [v13 finalize];

    return self->_indexingHash;
  }

  return result;
}

- (NSString)suggestedInvocationPhrase
{
  v2 = [(INIntent *)self _metadata];
  v3 = [v2 suggestedInvocationPhrase];
  v4 = [v3 _intents_decodeFromProto];

  return v4;
}

- (NSString)intentDescription
{
  v2 = [(INIntent *)self _metadata];
  v3 = [v2 intentDescription];

  return v3;
}

- (id)_dictionaryRepresentation
{
  v2 = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 dictionaryRepresentation];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  return v3;
}

- (NSString)typeName
{
  v3 = [(INIntent *)self backingStore];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(INIntent *)self launchId];
    v15 = 0;
    INExtractAppInfoFromSiriLaunchId(v5, &v15, 0);
    v6 = v15;

    v7 = [(INIntent *)self extensionBundleId];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;

    if (!v10)
    {
      v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v10 = [v11 bundleIdentifier];
    }

    v12 = [(INIntent *)self _className];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", @"sirikit.intents.custom.", v10, v12];
  }

  else
  {
    v13 = [objc_opt_class() typeName];
  }

  return v13;
}

- (id)_typedBackingStore
{
  v2 = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_intents_preferredScaledImageSize
{
  v2 = 390.0;
  v3 = 390.0;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (NSString)intentId
{
  v2 = [(INIntent *)self _metadata];
  v3 = [v2 intentId];

  return v3;
}

+ (id)typeName
{
  v2 = INIntentSchemaGetIntentDescriptionWithFacadeClass(a1);
  v3 = [v2 type];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"GenericIntent";
  }

  return v4;
}

- (id)intentSlotDescriptions
{
  v2 = objc_opt_class();
  v3 = INIntentSchemaGetIntentDescriptionWithFacadeClass(v2);
  v4 = [v3 slotDescriptions];

  return v4;
}

- (NSArray)airPlayRouteIds
{
  v2 = [(INIntent *)self _metadata];
  v3 = [v2 airPlayRouteIds];

  return v3;
}

- (int64_t)_executionContext
{
  v3 = [(INIntent *)self _metadata];
  v4 = [v3 hasExecutionContext];
  v5 = [(INIntent *)self _metadata];
  v6 = [v5 executionContext];
  if (((v6 - 1 < 0xA) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_intents_bundleIdForDisplay
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(INIntent *)self _intents_bestBundleIdentifier];
  if (v3)
  {
    objc_opt_class();
    v4 = ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && [(INIntent *)self preferredCallProvider]== 2;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v3;
    v9 = v7;
    if (_INSpecialCaseDisplayableBundleIdentifier_onceToken != -1)
    {
      dispatch_once(&_INSpecialCaseDisplayableBundleIdentifier_onceToken, &__block_literal_global_10);
    }

    v10 = [_INSpecialCaseDisplayableBundleIdentifier_overrides objectForKeyedSubscript:v8];
    v11 = [v10 objectForKeyedSubscript:v9];

    if ([v11 count])
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x3032000000;
      v23 = __Block_byref_object_copy__37078;
      v24 = __Block_byref_object_dispose__37079;
      v25 = 0;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = ___INSpecialCaseDisplayableBundleIdentifier_block_invoke_24;
      v19[3] = &unk_1E7280290;
      v19[4] = &v20;
      [v11 enumerateObjectsUsingBlock:v19];
      if ((v4 & [v21[5] isEqualToString:@"com.apple.mobilephone"]) == 1)
      {
        v12 = v21[5];
        v21[5] = @"com.apple.facetime";
      }

      v13 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        v14 = v21[5];
        *buf = 136315394;
        v27 = "_INSpecialCaseDisplayableBundleIdentifier";
        v28 = 2114;
        v29 = v14;
        _os_log_impl(&dword_18E991000, v13, OS_LOG_TYPE_INFO, "%s Choosing displayableApplicationBundleIdentifier=%{public}@, from displayableBundleIdentifierOverrides", buf, 0x16u);
      }

      v15 = v21[5];
      _Block_object_dispose(&v20, 8);
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = INLocalAppBundleIdentifierForIntentBundleIdentifier(v8);
    }

    v5 = v16;
  }

  else
  {
    v5 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_intents_bestBundleIdentifier
{
  v3 = [(INIntent *)self _intents_launchIdForCurrentPlatform];
  v10 = 0;
  INExtractAppInfoFromSiriLaunchId(v3, &v10, 0);
  v4 = v10;

  if (!v4)
  {
    v5 = [(INIntent *)self extensionBundleId];
    v6 = INAppProxyForAppOrContainedPluginWithBundleIdentifier(v5);
    v7 = v6;
    if (v6)
    {
      v8 = [v6 bundleIdentifier];
    }

    else
    {
      v8 = v5;
    }

    v4 = v8;
  }

  return v4;
}

- (NSString)_uiExtensionBundleId
{
  v2 = [(INIntent *)self _metadata];
  v3 = [v2 systemUIExtensionBundleId];

  return v3;
}

- (NSString)verb
{
  v2 = [(INIntent *)self _typedBackingStore];
  v3 = [v2 verb];

  return v3;
}

- (INShortcutAvailabilityOptions)shortcutAvailability
{
  v8 = 0;
  v3 = [(INIntent *)self _metadata];
  v4 = [v3 shortcutAvailabilitiesCount];

  if (!v4)
  {
    return 0;
  }

  for (i = 0; i != v4; ++i)
  {
    v6 = [(INIntent *)self _metadata];
    INShortcutAvailabilityOptionsAddBackingType(&v8, [v6 shortcutAvailabilityAtIndex:i]);
  }

  return v8;
}

- (NSString)domain
{
  v2 = [(INIntent *)self _typedBackingStore];
  v3 = [v2 domain];

  return v3;
}

- (NSString)debugDescription
{
  v2 = [(INIntent *)self _redactedDictionaryRepresentation];
  v3 = [v2 descriptionAtIndent:0];

  return v3;
}

id __34__INIntent__parameterCombinations__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _className];
  v5 = [v3 _parameterCombinationsForClassName:v4];

  return v5;
}

- (void)_injectProxiesForImages:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__INIntent_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
  v10[3] = &unk_1E727D7B8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(INIntent *)self _injectProxyForDefaultImage:v9 completion:v10];
}

void __70__INIntent_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__INIntent_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_2;
  v5[3] = &unk_1E727D7B8;
  v6 = v4;
  v7 = *(a1 + 40);
  [a2 _injectProxiesForParameterImages:v6 completion:v5];
}

void __70__INIntent_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 backingStore];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (isKindOfClass)
  {
    [v7 _injectProxiesForImagesUsingCustomCodableStrategy:v5 completion:v6];
  }

  else
  {
    [v7 _injectProxiesForImagesUsingIntentSlotDescriptionStrategy:v5 completion:v6];
  }
}

- (void)_injectProxiesForParameterImages:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(INIntent *)self _parameterImages];
  v9 = [v8 valueForKey:@"image"];
  v10 = [(INIntent *)self copy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__INIntent_INImageProxyInjecting___injectProxiesForParameterImages_completion___block_invoke;
  v13[3] = &unk_1E727D790;
  v14 = v8;
  v15 = v10;
  v16 = v6;
  v11 = v6;
  v12 = v8;
  [v9 _injectProxiesForImages:v7 completion:v13];
}

void __79__INIntent_INImageProxyInjecting___injectProxiesForParameterImages_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a2;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __79__INIntent_INImageProxyInjecting___injectProxiesForParameterImages_completion___block_invoke_2;
  v11 = &unk_1E727D768;
  v6 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:&v8];

  [*(a1 + 40) _setParameterImages:{v6, v8, v9, v10, v11}];
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, *(a1 + 40));
  }
}

void __79__INIntent_INImageProxyInjecting___injectProxiesForParameterImages_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [INParameterImage alloc];
  v10 = [*(a1 + 40) objectAtIndex:a3];
  v8 = [v10 parameter];
  v9 = [(INParameterImage *)v7 initWithParameter:v8 image:v6];

  [v5 addObject:v9];
}

- (void)_injectProxyForDefaultImage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(INIntent *)self _defaultImage];
  if (v8)
  {
    v9 = [(INIntent *)self copy];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__INIntent_INImageProxyInjecting___injectProxyForDefaultImage_completion___block_invoke;
    v10[3] = &unk_1E7285CD0;
    v10[4] = v9;
    v11 = v7;
    v6[2](v6, v8, v10);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, self);
  }
}

uint64_t __74__INIntent_INImageProxyInjecting___injectProxyForDefaultImage_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _setDefaultImage:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)_injectProxiesForImagesUsingCustomCodableStrategy:(id)a3 completion:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v29 = a4;
  v31 = [(INIntent *)self copy];
  group = dispatch_group_create();
  v28 = dispatch_queue_create("com.apple.intents.custom-codable-strategy-queue", MEMORY[0x1E69E96A8]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v34 = self;
  v6 = [(INIntent *)self _codableDescription];
  v7 = [v6 attributes];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v46;
    v11 = 0x1E727A000uLL;
    do
    {
      v12 = 0;
      v33 = v9;
      do
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v45 + 1) + 8 * v12);
        v14 = *(v11 + 3104);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v13;
          v16 = [v15 valueTransformer];
          v17 = [objc_opt_class() transformedValueClass];
          v18 = NSStringFromSelector([v15 getter]);
          v19 = [(INIntent *)v34 backingStore];
          v20 = [v19 valueForKey:v18];

          if (v20)
          {
            v21 = v10;
            v22 = NSStringFromClass(v17);
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            v25 = [v22 isEqualToString:v24];

            if (v25)
            {
              v26 = v20;
              dispatch_group_enter(group);
              v41[0] = MEMORY[0x1E69E9820];
              v41[1] = 3221225472;
              v41[2] = __96__INIntent_INImageProxyInjecting___injectProxiesForImagesUsingCustomCodableStrategy_completion___block_invoke;
              v41[3] = &unk_1E727D740;
              v42 = group;
              v43 = v31;
              v44 = v18;
              v32[2](v32, v26, v41);

              v10 = v21;
              v9 = v33;
              v11 = 0x1E727A000;
            }

            else
            {
              v10 = v21;
              v9 = v33;
              v11 = 0x1E727A000;
              if ([(objc_class *)v17 conformsToProtocol:&unk_1F02E20C8])
              {
                dispatch_group_enter(group);
                v38[0] = MEMORY[0x1E69E9820];
                v38[1] = 3221225472;
                v38[2] = __96__INIntent_INImageProxyInjecting___injectProxiesForImagesUsingCustomCodableStrategy_completion___block_invoke_2;
                v38[3] = &unk_1E727D7F8;
                v38[4] = v31;
                v39 = v18;
                v40 = group;
                [v20 _injectProxiesForImages:v32 completion:v38];
              }
            }
          }
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v9);
  }

  if (v29)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__INIntent_INImageProxyInjecting___injectProxiesForImagesUsingCustomCodableStrategy_completion___block_invoke_3;
    block[3] = &unk_1E7287140;
    block[4] = v31;
    v37 = v29;
    dispatch_group_notify(group, v28, block);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __96__INIntent_INImageProxyInjecting___injectProxiesForImagesUsingCustomCodableStrategy_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
  if (v4)
  {
    v3 = [*(a1 + 40) backingStore];
    [v3 setValue:v4 forKey:*(a1 + 48)];
  }
}

void __96__INIntent_INImageProxyInjecting___injectProxiesForImagesUsingCustomCodableStrategy_completion___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 backingStore];
  [v5 setValue:v4 forKey:a1[5]];

  v6 = a1[6];

  dispatch_group_leave(v6);
}

- (void)_intents_allowAppToInitiatePlaybackForBundleIdentifier:(id)a3 context:(unint64_t)a4 error:(id *)a5
{
  if (!a4)
  {
    v14[7] = v5;
    v14[8] = v6;
    v8 = a3;
    v9 = [getAVSystemControllerClass() sharedAVSystemController];
    v10 = getAVSystemController_AllowAppToInitiatePlaybackTemporarilyAttribute();
    v14[0] = 0;
    v11 = [v9 setAttribute:v8 forKey:v10 error:v14];

    v12 = v14[0];
    if ((v11 & 1) == 0)
    {
      v13 = v12;
      *a5 = v12;
    }
  }
}

- (id)_intents_backgroundHandlingAssertionForBundleIdentifier:(id)a3 context:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if ([(INIntent *)self _type]== 2)
  {
    [(INIntent *)self _intents_allowAppToInitiatePlaybackForBundleIdentifier:v8 context:a4 error:a5];
  }

  v9 = [MEMORY[0x1E695FBE0] newAssertionForBundleIdentifier:v8 withReason:@"User is directly engaging with the app in Siri" level:1];

  return v9;
}

- (int64_t)_intents_toggleState
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(INIntent *)self _intentInstanceDescription];
  v4 = [v3 slotDescriptions];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 valueType] == 204)
        {
          v11 = [v9 name];
          v12 = [(INIntent *)self valueForKey:v11];

          v10 = [v12 integerValue];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)localizeValueOfSlotDescription:(id)a3 withLocalizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 facadePropertyName];
  v9 = [(INIntent *)self valueForKey:v8];
  v10 = [v7 localizeValue:v9 withLocalizer:v6];

  return v10;
}

- (id)_localizedCombinationStringForKey:(id)a3 value:(id)a4 localizationTable:(id)a5 bundleURL:(id)a6 localizer:(id)a7
{
  v12 = a3;
  v41 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v13 bundleIdentifier];
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = v16;
  v18 = [(INIntent *)self extensionBundleId];
  v19 = [v13 bundleIdentifier];
  if ([v18 containsString:v19])
  {
    v20 = [(INIntent *)self extensionBundleId];
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
LABEL_6:
    v21 = [(INIntent *)self _intents_launchIdForCurrentPlatform];
    v44 = 0;
    INExtractAppInfoFromSiriLaunchId(v21, &v44, 0);
    v20 = v44;
  }

  if ([v15 bundleWithIdentifier:0 fileURL:v14])
  {
    if (v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
    [v15 bundleWithIdentifier:v20 fileURL:0];
    if (v14)
    {
      goto LABEL_16;
    }
  }

  v22 = [v15 languageCode];

  if (!v22 && v20)
  {
    v23 = _INVCIntentDefinitionManagerClass();
    if (objc_opt_respondsToSelector())
    {
      v14 = [v23 intentDefinitionBundleURLForBundleID:v20];
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_16:
  v24 = [v15 bundleWithIdentifier:v20 fileURL:v14];
  v25 = [v15 languageCode];
  v39 = v13;
  v26 = [v13 tableName];
  v40 = v12;
  if ([(INIntent *)self _type]!= 2)
  {
    v42 = v25;
    v29 = INLocalizedFormatStringFromSlotComposing(v12, v41, v26, v24, v15, self, MEMORY[0x1E695E0F8], &v42);
    v30 = v42;

    if (v29)
    {
      v33 = [v15 languageCode];
      if ([v33 isEqualToString:v30])
      {
        v34 = v15;
      }

      else
      {
        v34 = [INStringLocalizer localizerForLanguage:v30];
      }

      v36 = v34;

      v35 = INReplaceVariablesInFormatStringFromSlotComposing(v29, v36, self);
      goto LABEL_28;
    }

LABEL_23:
    v35 = 0;
    goto LABEL_29;
  }

  v27 = [v20 hasPrefix:@"com.apple."];
  v28 = [(INIntent *)self backingStore];
  v43 = v25;
  v29 = INLocalizedFormatStringFromCodable(v12, v41, v26, v24, v15, v28, 0, &v43, v27);
  v30 = v43;

  if (!v29)
  {
    goto LABEL_23;
  }

  v31 = [v15 languageCode];
  if ([v31 isEqualToString:v30])
  {
    v32 = v15;
  }

  else
  {
    v32 = [INStringLocalizer localizerForLanguage:v30];
  }

  v36 = v32;

  v37 = [(INIntent *)self backingStore];
  v35 = INReplaceVariablesInFormatStringFromCodable(v29, v36, v37, 0, v27);

LABEL_28:
LABEL_29:

  return v35;
}

- (NSString)_localizedVerb
{
  v2 = [(INIntent *)self _categoryVerb];
  v3 = INLocalizedStringWithLocalizer(v2, 0, 0);

  return v3;
}

- (id)_subtitleWithLocalizer:(id)a3 fromBundleURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(INIntent *)self _nonNilParameters];
  v9 = [v8 mutableCopy];

  v10 = [objc_opt_class() _ignoredParameters];
  [v9 minusSet:v10];

  v11 = [(INIntent *)self _parameterCombinations];
  v12 = [v11 objectForKey:v9];

  if (!v12)
  {
    v16 = 0;
    goto LABEL_17;
  }

  if ([(INIntent *)self _type]== 2)
  {
    v13 = [v12 subtitleFormatStringLocID];
    v14 = [v12 subtitleFormatString];
    v15 = [v12 _localizationTable];
    v16 = [(INIntent *)self _localizedCombinationStringForKey:v13 value:v14 localizationTable:v15 bundleURL:v7 localizer:v6];

    goto LABEL_17;
  }

  v17 = [(INIntent *)self _intents_launchIdForCurrentPlatform];
  v50 = 0;
  INExtractAppInfoFromSiriLaunchId(v17, &v50, 0);
  v18 = v50;

  v19 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v18];
  v48 = v19;
  if (v19)
  {
    v20 = MEMORY[0x1E695DFD8];
    v21 = [v19 siriActionDefinitionURLs];
    v22 = [v21 allKeys];
    v23 = [v20 setWithArray:v22];

LABEL_9:
    goto LABEL_10;
  }

  if (v18)
  {
    v21 = [_INVCIntentDefinitionManagerClass() appInfoForBundleID:v18];
    v23 = [v21 definedIntents];
    goto LABEL_9;
  }

  v23 = 0;
LABEL_10:
  v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  v47 = v23;
  v27 = [v23 containsObject:v26];

  v49 = v24;
  if (!v27)
  {
    v31 = [v12 subtitleFormatStringLocID];
    v34 = [v12 subtitleFormatString];
    v38 = [v12 _localizationTable];
    v39 = v24;
    v35 = v38;
    v36 = [v39 bundleURL];
    v40 = self;
    v41 = v31;
    v42 = v34;
    v43 = v35;
    v44 = v36;
LABEL_15:
    v16 = [(INIntent *)v40 _localizedCombinationStringForKey:v41 value:v42 localizationTable:v43 bundleURL:v44 localizer:v6];
    goto LABEL_16;
  }

  v28 = [INSchema _defaultSchemaForBundle:v24];
  v29 = [(INIntent *)self _className];
  v30 = [v28 _parameterCombinationsForClassName:v29];
  v31 = [v30 objectForKey:v9];

  v32 = [v31 subtitleFormatString];
  v33 = [v12 subtitleFormatString];
  LODWORD(v30) = [v32 isEqualToString:v33];

  if (!v30)
  {
    v34 = [v12 subtitleFormatStringLocID];
    v35 = [v12 subtitleFormatString];
    v36 = [v12 _localizationTable];
    v40 = self;
    v41 = v34;
    v42 = v35;
    v43 = v36;
    v44 = v7;
    goto LABEL_15;
  }

  v34 = [v31 subtitleFormatStringLocID];
  v35 = [v31 subtitleFormatString];
  v36 = [v31 _localizationTable];
  [v49 bundleURL];
  v37 = v46 = v18;
  v16 = [(INIntent *)self _localizedCombinationStringForKey:v34 value:v35 localizationTable:v36 bundleURL:v37 localizer:v6];

  v18 = v46;
LABEL_16:

LABEL_17:

  return v16;
}

- (id)_subtitleForLanguage:(id)a3
{
  v4 = a3;
  v5 = +[INIntentSummaryCache sharedCache];
  v13 = 0;
  v6 = [v5 getSubtitle:&v13 forIntent:self languageCode:v4];
  v7 = v13;

  if ((v6 & 1) == 0)
  {
    v8 = [INStringLocalizer localizerForLanguage:v4];
    v9 = [(INIntent *)self _subtitleWithLocalizer:v8 fromBundleURL:0];

    v10 = +[INIntentSummaryCache sharedCache];
    [v10 setSubtitle:v9 forIntent:self languageCode:v4];

    v7 = v9;
  }

  v11 = v7;

  return v7;
}

- (id)_titleWithLocalizer:(id)a3 fromBundleURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(INIntent *)self _nonNilParameters];
  v9 = [v8 mutableCopy];

  v10 = [objc_opt_class() _ignoredParameters];
  [v9 minusSet:v10];

  v11 = [(INIntent *)self _parameterCombinations];
  v12 = [v11 objectForKey:v9];

  if (!v12)
  {
    v16 = 0;
    goto LABEL_17;
  }

  if ([(INIntent *)self _type]== 2)
  {
    v13 = [v12 titleFormatStringLocID];
    v14 = [v12 titleFormatString];
    v15 = [v12 _localizationTable];
    v16 = [(INIntent *)self _localizedCombinationStringForKey:v13 value:v14 localizationTable:v15 bundleURL:v7 localizer:v6];

    goto LABEL_17;
  }

  v17 = [(INIntent *)self _intents_launchIdForCurrentPlatform];
  v71 = 0;
  INExtractAppInfoFromSiriLaunchId(v17, &v71, 0);
  v18 = v71;

  v19 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v18];
  v67 = v19;
  v68 = v18;
  if (v19)
  {
    v20 = MEMORY[0x1E695DFD8];
    v21 = [v19 siriActionDefinitionURLs];
    v22 = [v21 allKeys];
    v18 = [v20 setWithArray:v22];
  }

  else
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    v21 = [_INVCIntentDefinitionManagerClass() appInfoForBundleID:v18];
    v18 = [v21 definedIntents];
  }

LABEL_10:
  v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v66 = v18;
  v26 = [v18 containsObject:v25];

  v65 = v9;
  if (!v26)
  {
    v30 = [v12 titleFormatStringLocID];
    v33 = [v12 titleFormatString];
    v34 = [v12 _localizationTable];
    v35 = [v23 bundleURL];
    v39 = self;
    v40 = v30;
    v41 = v33;
    v42 = v34;
    v43 = v35;
LABEL_15:
    [(INIntent *)v39 _localizedCombinationStringForKey:v40 value:v41 localizationTable:v42 bundleURL:v43 localizer:v6];
    v16 = v38 = v23;
    goto LABEL_16;
  }

  v27 = [INSchema _defaultSchemaForBundle:v23];
  v28 = [(INIntent *)self _className];
  v29 = [v27 _parameterCombinationsForClassName:v28];
  v30 = [v29 objectForKey:v9];

  v31 = [v30 titleFormatString];
  v32 = [v12 titleFormatString];
  LODWORD(v29) = [v31 isEqualToString:v32];

  if (!v29)
  {
    v33 = [v12 titleFormatStringLocID];
    v34 = [v12 titleFormatString];
    v35 = [v12 _localizationTable];
    v39 = self;
    v40 = v33;
    v41 = v34;
    v42 = v35;
    v43 = v7;
    goto LABEL_15;
  }

  v33 = [v30 titleFormatStringLocID];
  v34 = [v30 titleFormatString];
  v35 = [v30 _localizationTable];
  [v23 bundleURL];
  v63 = v7;
  v37 = v36 = v6;
  [(INIntent *)self _localizedCombinationStringForKey:v33 value:v34 localizationTable:v35 bundleURL:v37 localizer:v36];
  v16 = v38 = v23;

  v6 = v36;
  v7 = v63;
LABEL_16:

  v9 = v65;
LABEL_17:
  if ([v16 length])
  {
    goto LABEL_31;
  }

  v44 = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v45 = v6;
    v46 = [(INIntent *)self backingStore];
    v47 = [v46 _objectDescription];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v6 = v45;
      goto LABEL_31;
    }

    v49 = [(INIntent *)self backingStore];
    v44 = [v49 _objectDescription];

    v50 = [v44 title];

    v51 = [(INIntent *)self _intents_launchIdForCurrentPlatform];
    v70 = 0;
    INExtractAppInfoFromSiriLaunchId(v51, &v70, 0);
    v52 = v70;

    if (v52)
    {
      v6 = v45;
      v53 = [v45 bundleWithIdentifier:v52 fileURL:0];
      if (v53)
      {
        v54 = v53;
        v69 = v50;
        v64 = v7;
        v55 = [v44 titleLocID];
        v56 = [v44 titleLocID];
        v57 = [v44 _localizationTable];
        v58 = [v57 tableName];
        v59 = INLocalizedStringFromBundle(v55, v56, v58, v45, v54, 0);

        if ([v59 length] && (objc_msgSend(v44, "titleLocID"), v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v60, "isEqualToString:", v59), v60, (v61 & 1) == 0))
        {
          v50 = v59;

          v6 = v45;
          v7 = v64;
        }

        else
        {
          v6 = v45;
          v7 = v64;
          v50 = v69;
        }
      }
    }

    else
    {
      v6 = v45;
    }

    v16 = v50;
  }

LABEL_31:

  return v16;
}

- (id)_titleForLanguage:(id)a3
{
  v4 = a3;
  v5 = +[INIntentSummaryCache sharedCache];
  v13 = 0;
  v6 = [v5 getTitle:&v13 forIntent:self languageCode:v4];
  v7 = v13;

  if ((v6 & 1) == 0)
  {
    v8 = [INStringLocalizer localizerForLanguage:v4];
    v9 = [(INIntent *)self _titleWithLocalizer:v8 fromBundleURL:0];

    v10 = +[INIntentSummaryCache sharedCache];
    [v10 setTitle:v9 forIntent:self languageCode:v4];

    v7 = v9;
  }

  v11 = v7;

  return v7;
}

- (id)_intents_bundleIdForLaunching
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(INIntent *)self _intents_bestBundleIdentifier];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = v2;
    v6 = v4;
    if (_INSpecialCaseLaunchableBundleIdentifier_onceToken != -1)
    {
      dispatch_once(&_INSpecialCaseLaunchableBundleIdentifier_onceToken, &__block_literal_global_37100);
    }

    v7 = [_INSpecialCaseLaunchableBundleIdentifier_overrides objectForKeyedSubscript:v5];
    v8 = [v7 objectForKeyedSubscript:v6];

    if (v8)
    {
      v9 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        v14 = 136315394;
        v15 = "_INSpecialCaseLaunchableBundleIdentifier";
        v16 = 2114;
        v17 = v8;
        _os_log_impl(&dword_18E991000, v9, OS_LOG_TYPE_INFO, "%s Choosing launchableApplicationBundleIdentifier=%{public}@, from launchableBundleIdentifierOverrides", &v14, 0x16u);
      }

      v10 = v8;
    }

    else
    {

      v10 = INLocalAppBundleIdentifierForIntentBundleIdentifier(v5);
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (INImage)_keyImage
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(INIntent *)self _sortedParameterImages];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v4)
  {

LABEL_14:
    if ([(INIntent *)self _type]!= 1 || ([(INIntent *)self _keyImageWithIntentDescriptionStrategy], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = [(INIntent *)self _defaultImage];
    }

    goto LABEL_17;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v17;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v16 + 1) + 8 * i);
      v10 = [v9 image];
      if (v10)
      {
        v11 = [v9 parameter];
        v12 = [v11 _parameterValueForParameterizedObject:self];

        if (v12)
        {
          v13 = v10;

          v6 = v13;
        }
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v5);

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_17:
  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_keyImageWithIntentDescriptionStrategy
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

+ (void)_setSharedExtensionContextUUID:(id)a3 forIntentClassName:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = a3;
    os_unfair_lock_lock(&sharedContextExtensionUUIDDictionaryLock);
    v7 = sharedContextExtensionUUIDDictionary;
    if (!sharedContextExtensionUUIDDictionary)
    {
      sharedContextExtensionUUIDDictionary = MEMORY[0x1E695E0F8];
      v7 = MEMORY[0x1E695E0F8];
    }

    v10 = [v7 mutableCopy];
    [v10 setObject:v6 forKeyedSubscript:v5];

    v8 = [v10 copy];
    v9 = sharedContextExtensionUUIDDictionary;
    sharedContextExtensionUUIDDictionary = v8;

    os_unfair_lock_unlock(&sharedContextExtensionUUIDDictionaryLock);
  }
}

+ (id)_sharedExtensionContextUUIDForIntentClassName:(id)a3
{
  if (a3)
  {
    v3 = a3;
    os_unfair_lock_lock(&sharedContextExtensionUUIDDictionaryLock);
    v4 = [sharedContextExtensionUUIDDictionary objectForKeyedSubscript:v3];

    os_unfair_lock_unlock(&sharedContextExtensionUUIDDictionaryLock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)configureAttributeSet:(id)a3 includingData:(BOOL)a4
{
  v47 = a4;
  v56 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 displayName];

  if (!v6)
  {
    v7 = [(INIntent *)self _title];
    [v5 setDisplayName:v7];
  }

  v8 = [v5 contentDescription];

  if (!v8)
  {
    v9 = [(INIntent *)self _subtitle];
    [v5 setContentDescription:v9];
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = [(INIntent *)self launchId];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"no-launchId";
  }

  v14 = [(INIntent *)self extensionBundleId];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"no-extensionBundleId";
  }

  v17 = [v5 displayName];
  v18 = [v17 length];
  if (v18)
  {
    [v5 displayName];
  }

  else
  {
    v46 = [MEMORY[0x1E696AFB0] UUID];
    [v46 UUIDString];
  }
  v19 = ;
  v20 = [v10 stringWithFormat:@"%@-%@-%@", v13, v16, v19];
  [v5 setUniqueIdentifier:v20];

  if (!v18)
  {

    v19 = v46;
  }

  v21 = [(INIntent *)self _spotlightContentType];
  [v5 setContentType:v21];

  v22 = [(INIntent *)self _className];
  [v5 setAttribute:v22 forKey:@"_kMDItemIntentClass"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[INIntent _supportsBackgroundExecutionWithOptions:](self, "_supportsBackgroundExecutionWithOptions:", 0)}];
  [v5 setBackgroundRunnable:v23];

  v24 = [(INIntent *)self _categoryVerb];
  v25 = [(INIntent *)self _categoryVerb];
  v26 = INCSLocalizedString(v24, v25);
  [v5 setPunchoutLabel:v26];

  v27 = [v5 thumbnailData];
  if (v27)
  {
  }

  else
  {
    v28 = [v5 thumbnailURL];

    if (!v28)
    {
      v29 = [(INIntent *)self keyImage];
      v30 = v29;
      if (v29)
      {
        v31 = [v29 _uri];
        v32 = [v31 isFileURL];

        if (v32)
        {
          v33 = [v30 _uri];
          [v5 setThumbnailURL:v33];
        }

        else
        {
          v34 = [v30 _imageData];
          if (![v34 length])
          {
            v35 = +[INImageServiceConnection sharedConnection];
            v49 = 0;
            v36 = [v35 loadDataImageFromImage:v30 scaledSize:&v49 error:{0.0, 0.0}];
            v37 = v49;
            v38 = [v36 _imageData];

            if (v37)
            {
              v39 = INSiriLogContextIntents;
              if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v51 = "[INIntent configureAttributeSet:includingData:]";
                v52 = 2112;
                v53 = v30;
                v54 = 2112;
                v55 = v37;
                _os_log_error_impl(&dword_18E991000, v39, OS_LOG_TYPE_ERROR, "%s Failed to load image data for %@ for indexing: %@", buf, 0x20u);
              }
            }

            v34 = v38;
          }

          if ([v34 length])
          {
            [v5 setThumbnailData:v34];
          }
        }
      }
    }
  }

  if (v47)
  {
    v48 = 0;
    v40 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v48];
    v41 = v48;
    v42 = v40 != 0;
    if (v40)
    {
      [v5 setAttribute:v40 forKey:@"_kMDItemUserActivityData"];
    }

    else
    {
      v43 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v51 = "[INIntent configureAttributeSet:includingData:]";
        v52 = 2112;
        v53 = v41;
        _os_log_error_impl(&dword_18E991000, v43, OS_LOG_TYPE_ERROR, "%s Failed to encode intent into attribute set: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v42 = 1;
  }

  v44 = *MEMORY[0x1E69E9840];
  return v42;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(INIntent *)self _inCodable];
  v9 = [(INIntent *)self _inCodable];

  if (v9)
  {
    if ([v8 isValidKey:v7])
    {
      [v8 setValue:v6 forPropertyNamed:v7];
    }

    else
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __37__INIntent_setValue_forUndefinedKey___block_invoke;
      v17[3] = &unk_1E7283DA8;
      v17[4] = self;
      v10 = [(INIntent *)self _querySchemaWithBlock:v17 contentOptions:31];
      [v8 _setObjectDescription:v10];
      if ([v8 isValidKey:v7])
      {
        [v8 setValue:v6 forPropertyNamed:v7];
      }

      else
      {
        v11 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
        {
          v13 = v11;
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          *buf = 136315650;
          v19 = "[INIntent setValue:forUndefinedKey:]";
          v20 = 2112;
          v21 = v7;
          v22 = 2112;
          v23 = v15;
          _os_log_fault_impl(&dword_18E991000, v13, OS_LOG_TYPE_FAULT, "%s '%@' is an invalid parameter for '%@'. Please make sure that your intent definition file is valid.", buf, 0x20u);
        }
      }
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = INIntent;
    [(INIntent *)&v16 setValue:v6 forUndefinedKey:v7];
  }

  v12 = *MEMORY[0x1E69E9840];
}

id __37__INIntent_setValue_forUndefinedKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _className];
  v5 = [v3 intentCodableDescriptionWithIntentClassName:v4];

  return v5;
}

- (id)valueForUndefinedKey:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INIntent *)self _inCodable];
  v6 = v5;
  if (!v5)
  {
    v17.receiver = self;
    v17.super_class = INIntent;
    v8 = [(INIntent *)&v17 valueForUndefinedKey:v4];
    goto LABEL_7;
  }

  if ([v5 isValidKey:v4])
  {
LABEL_5:
    v8 = [v6 valueForPropertyNamed:v4];
LABEL_7:
    v9 = v8;
    goto LABEL_8;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __33__INIntent_valueForUndefinedKey___block_invoke;
  v16[3] = &unk_1E7283DA8;
  v16[4] = self;
  v7 = [(INIntent *)self _querySchemaWithBlock:v16 contentOptions:31];
  [v6 _setObjectDescription:v7];
  if ([v6 isValidKey:v4])
  {

    goto LABEL_5;
  }

  v12 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
  {
    v13 = v12;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 136315650;
    v19 = "[INIntent valueForUndefinedKey:]";
    v20 = 2112;
    v21 = v4;
    v22 = 2112;
    v23 = v15;
    _os_log_fault_impl(&dword_18E991000, v13, OS_LOG_TYPE_FAULT, "%s '%@' is an invalid parameter for '%@'. Please make sure that your intent definition file is valid.", buf, 0x20u);
  }

  v9 = 0;
LABEL_8:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __33__INIntent_valueForUndefinedKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _className];
  v5 = [v3 intentCodableDescriptionWithIntentClassName:v4];

  return v5;
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v5 = [(INIntent *)self _inCodable];
  v6 = v5;
  if (v5 && [v5 isValidKey:v4])
  {
    v7 = [v6 valueForPropertyNamed:v4];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = INIntent;
    v7 = [(INIntent *)&v10 valueForKey:v4];
  }

  v8 = v7;

  return v8;
}

- (BOOL)_isValueValidForKey:(id)a3 unsupportedReason:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  if ([(INIntent *)self _isValidKey:v6])
  {
    v7 = [(INIntent *)self valueForKey:v6];
    if (v7)
    {
      v8 = [(INIntent *)self _codableDescription];
      v9 = [v8 attributeByName:v6];

      v10 = [v9 unsupportedReasons];
      v11 = [v10 count];

      if (v11)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v12 = [v9 unsupportedReasons];
        v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v13)
        {
          v14 = v13;
          v29 = v6;
          v15 = *v31;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v31 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v30 + 1) + 8 * i);
              v18 = [v17 predicateFormat];
              v19 = [v18 length];

              if (v19)
              {
                v20 = MEMORY[0x1E696AE18];
                v21 = [v17 predicateFormat];
                v22 = [v20 predicateWithFormat:v21, v7];

                v23 = [v22 evaluateWithObject:v9];
                v24 = v23;
                if (a4 && (v23 & 1) == 0)
                {
                  v25 = v17;
                  *a4 = v17;
                }

                if (!v24)
                {
                  v26 = 0;
                  goto LABEL_23;
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }

          v26 = 1;
LABEL_23:
          v6 = v29;
        }

        else
        {
          v26 = 1;
        }
      }

      else
      {
        v26 = 1;
      }
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (BOOL)_isValidKey:(id)a3
{
  v4 = a3;
  v5 = [(INIntent *)self _inCodable];
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

- (INAppIntent)_asMigratedAppIntent
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = _INVCVoiceShortcutClient();
  if (!v3)
  {
    v7 = INSiriLogContextIntents;
    if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      v4 = 0;
      goto LABEL_11;
    }

    *buf = 136315138;
    v13 = "[INIntent _asMigratedAppIntent]";
    v8 = "%s No VoiceShortcutClient; completing with nil";
LABEL_15:
    _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
    goto LABEL_10;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = INSiriLogContextIntents;
    if (!os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 136315138;
    v13 = "[INIntent _asMigratedAppIntent]";
    v8 = "%s VoiceShortcutClient hasn't implement migratedAppIntentWithINIntent:error: yet.";
    goto LABEL_15;
  }

  v11 = 0;
  v4 = [v3 migratedAppIntentWithINIntent:self error:&v11];
  v5 = v11;
  if (!v4)
  {
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[INIntent _asMigratedAppIntent]";
      v14 = 2114;
      v15 = v5;
      _os_log_error_impl(&dword_18E991000, v6, OS_LOG_TYPE_ERROR, "%s No AppIntent; returning nil. Error: %{public}@", buf, 0x16u);
    }
  }

LABEL_11:
  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

- (INIntentKeyParameter)_keyParameter
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_keyParameterLock);
  if (!self->_hasLoadedKeyParameter)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = [(INIntent *)self _keyCodableAttributes];
    v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v20;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v19 + 1) + 8 * i);
          v9 = [v8 propertyName];
          if ([(INIntent *)self _isValidKey:v9])
          {
            v10 = [(INIntent *)self valueForKey:v9];
            if (v10)
            {
              v11 = v10;
              v12 = [INIntentKeyParameter alloc];
              v13 = [(INIntent *)self imageForParameterNamed:v9];
              v14 = [(INIntentKeyParameter *)v12 initWithCodableAttribute:v8 value:v11 image:v13];
              keyParameter = self->_keyParameter;
              self->_keyParameter = v14;

              goto LABEL_13;
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    self->_hasLoadedKeyParameter = 1;
  }

  os_unfair_lock_unlock(&self->_keyParameterLock);
  v16 = self->_keyParameter;
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

id __31__INIntent__codableDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _className];
  v5 = [v3 intentCodableDescriptionWithIntentClassName:v4];

  return v5;
}

- (void)_updateWithJSONDictionary:(id)a3
{
  v29 = a3;
  v4 = objc_alloc_init(INJSONDecoder);
  v5 = [(INIntent *)self _metadata];
  v6 = [v29 objectForKeyedSubscript:@"metadata"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = MEMORY[0x1E695E0F8];
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  [(INJSONDecoder *)v4 decodeObject:v5 withCodableDescription:0 from:v10];

  v11 = [(INIntent *)self _codableDescription];
  v12 = [v29 objectForKeyedSubscript:@"parameters"];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v9;
  }

  [(INJSONDecoder *)v4 decodeObject:self withCodableDescription:v11 from:v15];

  v16 = [INParameterContexts alloc];
  v17 = [v29 objectForKeyedSubscript:@"parameterContexts"];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v9;
  }

  v21 = [(INParameterContexts *)v16 _initWithIntent:self decoder:v4 JSONDictionary:v20];

  [(INIntent *)self _setParameterContexts:v21];
  v22 = [(INIntent *)self _codableDescription];
  if (v22)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  v25 = [v24 _nullable_schema];
  v26 = [(INIntent *)self _className];
  v27 = [v25 intentResponseCodableDescriptionWithIntentClassName:v26];

  v28 = [v25 _types];
  [v24 _reestablishReferencedCodableDescriptionsUsingTypes:v28 intentResponseCodableDescription:v27];
}

- (NSDictionary)_JSONDictionaryRepresentation
{
  v3 = objc_alloc_init(INJSONEncoderConfiguration);
  v4 = +[INPreferences siriLanguageCode];
  [(INJSONEncoderConfiguration *)v3 setLanguageCode:v4];

  v5 = [(INIntent *)self _JSONDictionaryRepresentationWithConfiguration:v3];

  return v5;
}

- (id)_JSONDictionaryRepresentationWithConfiguration:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [[INJSONEncoder alloc] initWithConfiguration:v5];

  v8 = [(INIntent *)self typeName];
  [v6 if_setObjectIfNonNil:v8 forKey:@"typeName"];

  v9 = [(INIntent *)self _metadata];
  v10 = [(INJSONEncoder *)v7 encodeObject:v9];
  [v6 if_setObjectIfNonNil:v10 forKey:@"metadata"];

  v11 = [(INIntent *)self _codableDescription];
  v12 = [(INJSONEncoder *)v7 encodeObject:self withCodableDescription:v11];
  [v6 if_setObjectIfNonNil:v12 forKey:@"parameters"];

  return v6;
}

- (void)setParametersByName:(id)a3
{
  v4 = a3;
  v5 = [(INIntent *)self _typedBackingStore];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __32__INIntent_setParametersByName___block_invoke;
    v12[3] = &unk_1E7285238;
    v13 = v6;
    v7 = v6;
    [v4 enumerateKeysAndObjectsUsingBlock:v12];
    v8 = [(INIntent *)self _typedBackingStore];
    [v8 setParameters:v7];
  }

  else
  {
    v9 = [(INIntent *)self backingStore];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __32__INIntent_setParametersByName___block_invoke_2;
      v11[3] = &unk_1E7285238;
      v11[4] = self;
      [v4 enumerateKeysAndObjectsUsingBlock:v11];
    }
  }
}

void __32__INIntent_setParametersByName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = INIntentSlotValueTransformToProperty(a3, a2);
  [v3 addObject:v4];
}

- (NSDictionary)parametersByName
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(INIntent *)self _typedBackingStore];

  if (v3)
  {
    v4 = [(INIntent *)self _typedBackingStore];
    v5 = [v4 parameters];

    if ([v5 count])
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
    }

    else
    {
      v6 = 0;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          v17 = [v16 role];
          if (v17)
          {
            v18 = INIntentSlotValueTransformFromProperty(v16);
            [v6 setObject:v18 forKeyedSubscript:v17];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    v10 = [v6 copy];
  }

  else
  {
    v7 = [(INIntent *)self backingStore];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [(INIntent *)self backingStore];
      v10 = [v9 _dictionaryRepresentationWithNullValues:0];
    }

    else
    {
      v10 = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v10;
}

- (NSArray)_parametersForcedToNeedsValue
{
  v2 = [(INIntent *)self _metadata];
  v3 = [v2 forceNeedsValueForParameters];

  return v3;
}

- (void)_setParametersForcedToNeedsValue:(id)a3
{
  v4 = a3;
  v5 = [(INIntent *)self _metadata];
  [v5 setForceNeedsValueForParameters:v4];
}

- (void)setVerb:(id)a3
{
  v4 = a3;
  v5 = [(INIntent *)self _typedBackingStore];
  [v5 setVerb:v4];
}

- (void)setDomain:(id)a3
{
  v4 = a3;
  v5 = [(INIntent *)self _typedBackingStore];
  [v5 setDomain:v4];
}

- (INIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = INIntent;
  v11 = [(INIntent *)&v16 init];
  if (v11)
  {
    v12 = objc_alloc_init(_INPBGenericIntent);
    backingStore = v11->_backingStore;
    v11->_backingStore = &v12->super;

    v14 = objc_alloc_init(_INPBIntentMetadata);
    [(INIntent *)v11 _setMetadata:v14];

    [(INIntent *)v11 setDomain:v8];
    [(INIntent *)v11 setVerb:v9];
    [(INIntent *)v11 setParametersByName:v10];
    [(INIntent *)v11 _setIntentCategory:0];
    [(INIntent *)v11 _setCategoryVerb:@"Do"];
  }

  return v11;
}

- (NSOrderedSet)_displayOrderedAttributes
{
  v2 = [(INIntent *)self _codableDescription];
  v3 = [v2 displayOrderedAttributes];

  return v3;
}

- (NSArray)_codableAttributes
{
  v2 = [(INIntent *)self _codableDescription];
  v3 = [v2 attributes];
  v4 = [v3 allValues];

  return v4;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INIntent;
  v6 = [(INIntent *)&v11 description];
  v7 = [(INIntent *)self _redactedDictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (INIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = INIntent;
  v5 = [(INIntent *)&v39 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(INIntent *)v5 setIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backingStore"];
    [(INIntent *)v5 setBackingStore:v7];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"parameterCombinations"];
    parameterCombinations = v5->_parameterCombinations;
    v5->_parameterCombinations = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordRoute"];
    [(INIntent *)v5 _setRecordRoute:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordDeviceUID"];
    recordDeviceUID = v5->_recordDeviceUID;
    v5->_recordDeviceUID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordDeviceIdentifier"];
    recordDeviceIdentifier = v5->_recordDeviceIdentifier;
    v5->_recordDeviceIdentifier = v18;

    v5->_audioSessionID = [v4 decodeInt32ForKey:@"audioSessionID"];
    v5->_shouldForwardToAppOnSucccess = [v4 decodeBoolForKey:@"_shouldForwardToAppOnSucccess"];
    v5->_indexingHash = [v4 decodeInt64ForKey:@"_indexingHash"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"donationMetadata"];
    donationMetadata = v5->_donationMetadata;
    v5->_donationMetadata = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v22 setWithObjects:{v23, v24, v25, v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"_parameterContexts"];

    v29 = v28;
    if (v29)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    v32 = [v31 allKeys];

    v33 = [v32 count];
    if (v33)
    {
      v34 = objc_alloc_init(INJSONDecoder);
      v35 = [(INIntent *)v5 _codableDescription];
      v36 = [INParameterContexts _intents_decodeWithJSONDecoder:v34 codableDescription:v35 from:v29];
      parameterContexts = v5->_parameterContexts;
      v5->_parameterContexts = v36;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  [v9 encodeObject:self->_identifier forKey:@"identifier"];
  [v9 encodeObject:self->_backingStore forKey:@"backingStore"];
  [v9 encodeObject:self->_parameterCombinations forKey:@"parameterCombinations"];
  [v9 encodeObject:self->_recordRoute forKey:@"recordRoute"];
  [v9 encodeObject:self->_recordDeviceUID forKey:@"recordDeviceUID"];
  [v9 encodeObject:self->_recordDeviceIdentifier forKey:@"recordDeviceIdentifier"];
  [v9 encodeInt32:self->_audioSessionID forKey:@"audioSessionID"];
  [v9 encodeInt64:self->_indexingHash forKey:@"_indexingHash"];
  [v9 encodeObject:self->_donationMetadata forKey:@"donationMetadata"];
  [v9 encodeBool:self->_shouldForwardToAppOnSucccess forKey:@"_shouldForwardToAppOnSucccess"];
  parameterContexts = self->_parameterContexts;
  if (parameterContexts && ![(INParameterContexts *)parameterContexts _isEmpty])
  {
    v5 = self->_parameterContexts;
    v6 = objc_alloc_init(INJSONEncoder);
    v7 = [(INIntent *)self _codableDescription];
    v8 = [(INParameterContexts *)v5 _intents_encodeWithJSONEncoder:v6 codableDescription:v7];

    [v9 encodeObject:v8 forKey:@"_parameterContexts"];
  }
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  [v7 intents_setPlistSafeObject:self->_identifier forKey:@"identifier"];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__90461;
  v42 = __Block_byref_object_dispose__90462;
  v43 = 0;
  backingStore = self->_backingStore;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = self->_backingStore;
    v10 = (v39 + 5);
    obj = v39[5];
    [v7 intents_setWidgetPlistRepresentable:v9 forKey:@"backingStore" parameters:v6 error:&obj];
    objc_storeStrong(v10, obj);
  }

  else
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = self->_backingStore;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v11 stringWithFormat:@"Unsupported backing store type: %@", v14];
    v16 = INIntentError(8001, v15, 0);
    v17 = v39[5];
    v39[5] = v16;
  }

  v18 = v39[5];
  if (v18)
  {
    if (a4)
    {
      v19 = 0;
      *a4 = v18;
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if (self->_parameterCombinations)
  {
    v20 = [MEMORY[0x1E695DF70] array];
    parameterCombinations = self->_parameterCombinations;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __62__INIntent_widgetPlistableRepresentationWithParameters_error___block_invoke;
    v32[3] = &unk_1E7283D30;
    v33 = v6;
    v36 = &v38;
    v22 = v20;
    v34 = v22;
    v35 = self;
    [(NSDictionary *)parameterCombinations enumerateKeysAndObjectsUsingBlock:v32];
    v23 = v39[5];
    if (v23)
    {
      if (a4)
      {
        v24 = v23;
        *a4 = v23;
      }
    }

    else
    {
      [v7 intents_setPlistSafeObject:v22 forKey:@"parameterCombinations"];
    }

    if (v23)
    {
LABEL_13:
      v19 = 0;
      goto LABEL_20;
    }
  }

  if (self->_indexingHash)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
    [v7 intents_setPlistSafeObject:v25 forKey:@"_indexingHash"];
  }

  parameterContexts = self->_parameterContexts;
  if (parameterContexts && ![(INParameterContexts *)parameterContexts _isEmpty])
  {
    v27 = self->_parameterContexts;
    v28 = objc_alloc_init(INJSONEncoder);
    v29 = [(INIntent *)self _codableDescription];
    v30 = [(INParameterContexts *)v27 _intents_encodeWithJSONEncoder:v28 codableDescription:v29];

    [v7 intents_setPlistSafeObject:v30 forKey:@"_parameterContexts"];
  }

  v19 = v7;
LABEL_20:
  _Block_object_dispose(&v38, 8);

  return v19;
}

void __62__INIntent_widgetPlistableRepresentationWithParameters_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = *(*(a1 + 56) + 8);
  obj = *(v9 + 40);
  v10 = [a3 widgetPlistableRepresentationWithParameters:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  if (v10)
  {
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v12 = [v7 allObjects];
    [v11 addObject:v12];

    [v11 addObject:v10];
    [*(a1 + 40) addObject:v11];
  }

  else
  {
    *a4 = 1;
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to encode INParameterCombination for intent: %@", *(a1 + 48)];
    v13 = INIntentError(8001, v11, *(*(*(a1 + 56) + 8) + 40));
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

- (id)_backingStoreData
{
  v10[2] = *MEMORY[0x1E69E9840];
  backingStore = self->_backingStore;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    v9[0] = @"id";
    v9[1] = @"data";
    v10[0] = identifier;
    v5 = [(PBCodable *)self->_backingStore data];
    v10[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_copyApplyingNewBackingStoreData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKey:@"data"];
  v8 = [v6 objectForKey:@"id"];

  if (!v8)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to create new intent from backing store data:  Identifier not found"];
    v21 = INIntentError(8001, v20, 0);

    if (v21)
    {
      if (a4)
      {
        v22 = v21;
        *a4 = v21;
      }

LABEL_12:
      v10 = 0;
      goto LABEL_13;
    }
  }

  backingStore = self->_backingStore;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = self->_backingStore;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v13 stringWithFormat:@"Unsupported backing store to set data on: %@", v16];
    v18 = INIntentError(8001, v17, 0);

    if (a4 && v18)
    {
      v19 = v18;
      *a4 = v18;
    }

    goto LABEL_12;
  }

  v10 = [(INIntent *)self copyWithZone:0];
  [v10[12] _setData:v7 error:a4];
  v11 = [v8 copy];
  v12 = v10[10];
  v10[10] = v11;

  v10[8] = 0;
LABEL_13:

  return v10;
}

- (id)_copyWithoutBackingStoreData:(id *)a3
{
  backingStore = self->_backingStore;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(INIntent *)self copyWithZone:0];
    [v6[12] _setData:0 error:a3];
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v7 UUIDString];
    v9 = v6[10];
    v6[10] = v8;

    v6[8] = 0;
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = self->_backingStore;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v10 stringWithFormat:@"Unsupported backing store to set data on: %@", v13];
    v15 = INIntentError(8001, v14, 0);

    if (a3 && v15)
    {
      v16 = v15;
      *a3 = v15;
    }

    return 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "_init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_identifier copyWithZone:a3];
    v7 = *(v5 + 80);
    *(v5 + 80) = v6;

    v8 = [(PBCodable *)self->_backingStore copy];
    v9 = *(v5 + 96);
    *(v5 + 96) = v8;

    objc_storeStrong((v5 + 40), self->_parameterCombinations);
    v10 = [(NSString *)self->_recordRoute copyWithZone:a3];
    v11 = *(v5 + 104);
    *(v5 + 104) = v10;

    objc_storeStrong((v5 + 112), self->_recordDeviceUID);
    v12 = [(NSString *)self->_recordDeviceIdentifier copyWithZone:a3];
    v13 = *(v5 + 120);
    *(v5 + 120) = v12;

    *(v5 + 36) = self->_audioSessionID;
    objc_storeStrong((v5 + 56), self->_parameterContexts);
    *(v5 + 32) = self->_shouldForwardToAppOnSucccess;
    *(v5 + 64) = self->_indexingHash;
    v14 = [(INIntentDonationMetadata *)self->_donationMetadata copyWithZone:a3];
    v15 = *(v5 + 88);
    *(v5 + 88) = v14;
  }

  return v5;
}

- (id)_emptyCopy
{
  v3 = [(INIntent *)self _inCodable];

  if (v3)
  {
    v4 = [(INIntent *)self copy];
    v5 = [v4 _inCodable];
    [v5 setNilValueForAllKeys];
  }

  else
  {
    v4 = [objc_alloc(objc_opt_class()) _init];
    if (!v4)
    {
      goto LABEL_6;
    }

    backingStore = self->_backingStore;
    v7 = objc_alloc_init(objc_opt_class());
    v8 = *(v4 + 96);
    *(v4 + 96) = v7;

    objc_storeStrong((v4 + 40), self->_parameterCombinations);
    objc_storeStrong((v4 + 104), self->_recordRoute);
    objc_storeStrong((v4 + 112), self->_recordDeviceUID);
    objc_storeStrong((v4 + 120), self->_recordDeviceIdentifier);
    *(v4 + 36) = self->_audioSessionID;
    objc_storeStrong((v4 + 56), self->_parameterContexts);
    *(v4 + 32) = self->_shouldForwardToAppOnSucccess;
    v5 = [(INIntent *)self _metadata];
    [v4 _setMetadata:v5];
  }

LABEL_6:
  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];
  v11 = *(v4 + 80);
  *(v4 + 80) = v10;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    identifier = self->_identifier;
    v8 = 0;
    if (identifier == v5[10] || [(NSString *)identifier isEqual:?])
    {
      backingStore = self->_backingStore;
      if (backingStore == v5[12] || [(PBCodable *)backingStore isEqual:?])
      {
        v8 = 1;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)trimDataAgainstTCCForAuditToken:(id *)a3 bundle:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(INIntent *)self _metadata];
  v8 = INPrivacyEntitlementOptionsForIntentMetadata(v7);

  if (v8)
  {
    v9 = *&a3->var0[4];
    *v17 = *a3->var0;
    *&v17[16] = v9;
    v10 = INPrivacyEntitlementOptionsMissingForExtension(v8, v17, v6);
    if (v10)
    {
      v11 = v10;
      v12 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        v13 = v12;
        v14 = INPrivacyEntitlementOptionsGetNames(v11);
        *v17 = 136315394;
        *&v17[4] = "[INIntent trimDataAgainstTCCForAuditToken:bundle:]";
        *&v17[12] = 2114;
        *&v17[14] = v14;
        _os_log_impl(&dword_18E991000, v13, OS_LOG_TYPE_INFO, "%s Missing required entitlement: %{public}@, redacting data accordingly", v17, 0x16u);
      }

      v15 = INContainingAppBundleIdentifierForBundle(v6);
      [(INIntent *)self _redactForMissingPrivacyEntitlementOptions:v11 containingAppBundleId:v15];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isUserConfirmationRequired
{
  v2 = [(INIntent *)self _metadata];
  v3 = [v2 userConfirmationRequired];

  return v3;
}

- (id)_displayOrderedNonNilParameters
{
  v3 = MEMORY[0x1E695DFA0];
  v4 = [(INIntent *)self _nonNilParameters];
  v5 = [v3 orderedSetWithSet:v4];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__INIntent__displayOrderedNonNilParameters__block_invoke;
  v8[3] = &unk_1E7283D08;
  v8[4] = self;
  [v5 sortUsingComparator:v8];
  v6 = [v5 copy];

  return v6;
}

uint64_t __43__INIntent__displayOrderedNonNilParameters__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 _codableDescription];
  v9 = [v8 attributeByName:v7];

  v10 = [*(a1 + 32) _codableDescription];
  v11 = [v10 attributeByName:v6];

  if (v9 || !v11)
  {
    if (!v9 || v11)
    {
      if (v9 | v11)
      {
        v13 = [v9 displayPriorityRank];
        v14 = [v11 displayPriorityRank];
        v12 = [v13 compare:v14];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)_isEligibleForSuggestions
{
  v2 = [(INIntent *)self _codableDescription];
  v3 = [v2 isEligibleForSuggestions];

  return v3;
}

- (BOOL)_isConfigurable
{
  v2 = [(INIntent *)self _codableDescription];
  v3 = [v2 isConfigurable];

  return v3;
}

- (BOOL)_hasMatchingIntentHandlerIncludingRemoteExecution:(BOOL)a3
{
  v3 = a3;
  v5 = [(INIntent *)self extensionBundleId];
  v6 = [v5 length];

  if (v6)
  {
    v7 = 0;
    LOBYTE(v8) = 1;
  }

  else
  {
    v9 = [(INIntent *)self launchId];
    v17 = 0;
    INExtractAppInfoFromSiriLaunchId(v9, &v17, 0);
    v7 = v17;

    v10 = [INAppInfo appInfoWithIntent:self];
    v11 = [v10 supportedIntents];
    v12 = [(INIntent *)self _className];
    v8 = [v11 containsObject:v12];

    if (!v8 && v3 && v7)
    {
      v13 = [_INVCIntentDefinitionManagerClass() appInfoForBundleID:v7];
      v14 = [v13 supportedActionsByExtensions];
      v15 = [(INIntent *)self _className];
      LOBYTE(v8) = [v14 containsObject:v15];
    }
  }

  return v8;
}

- (BOOL)_supportsBackgroundExecutionWithOptions:(unint64_t)a3
{
  v4 = [(INIntent *)self _hasMatchingIntentHandlerIncludingRemoteExecution:a3 & 1];
  v5 = [(INIntent *)self _currentParameterCombination];
  v6 = v5;
  if (v5)
  {
    v4 &= [v5 supportsBackgroundExecution];
  }

  return v4;
}

- (id)_validParameterCombinationsWithSchema:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(INIntent *)self _className];
    v6 = [v4 _parameterCombinationsForClassName:v5];
  }

  else
  {
    v6 = [(INIntent *)self _parameterCombinations];
  }

  v7 = [(INIntent *)self _nonNilParameters];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([v14 isSubsetOfSet:{v7, v18}])
        {
          v15 = [v9 objectForKey:v14];
          [v8 setObject:v15 forKey:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

- (NSDictionary)_resolvableParameterCombinations
{
  v3 = [(INIntent *)self _codableDescription];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [(INIntent *)self _parameterCombinations];
  v7 = [v5 resolvableParameterCombinationsWithParameterCombinations:v6];

  return v7;
}

- (NSDictionary)_configurableParameterCombinations
{
  configurableParameterCombinations = self->_configurableParameterCombinations;
  if (!configurableParameterCombinations)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__INIntent__configurableParameterCombinations__block_invoke;
    v7[3] = &unk_1E7283CE0;
    v7[4] = self;
    v4 = [(INIntent *)self _querySchemaWithBlock:v7 contentOptions:16];
    v5 = self->_configurableParameterCombinations;
    self->_configurableParameterCombinations = v4;

    configurableParameterCombinations = self->_configurableParameterCombinations;
  }

  return configurableParameterCombinations;
}

id __46__INIntent__configurableParameterCombinations__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _className];
  v5 = [v3 _configurableParameterCombinationsForClassName:v4];

  return v5;
}

- (id)_currentParameterCombination
{
  v3 = [(INIntent *)self _parameterCombinations];
  v4 = [(INIntent *)self _nonNilParameters];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (id)_querySchemaWithBlock:(id)a3 contentOptions:(unint64_t)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(INIntent *)self launchId];

  if (!v7)
  {
    v15 = 0;
LABEL_23:
    v32 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v33 = [INSchema _defaultSchemaForBundle:v32 contentOptions:a4];

    v24 = v6[2](v6, v33);
    v15 = v33;
    goto LABEL_24;
  }

  v8 = [(INIntent *)self launchId];
  v38 = 0;
  INExtractAppInfoFromSiriLaunchId(v8, &v38, 0);
  v9 = v38;

  CanMapLSDatabase = INThisProcessCanMapLSDatabase(0);
  v11 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
  v12 = [v11 bundleIdentifier];
  v13 = [v12 isEqualToString:v9];

  if (v13)
  {
    v14 = v11;
  }

  else if (CanMapLSDatabase)
  {
    v37 = 0;
    v14 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v9 allowPlaceholder:0 error:&v37];
    v16 = v37;
    if (v16)
    {
      v17 = v16;
      v18 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v41 = "[INIntent _querySchemaWithBlock:contentOptions:]";
        v42 = 2114;
        v43 = v9;
        v44 = 2114;
        v45 = v17;
        _os_log_error_impl(&dword_18E991000, v18, OS_LOG_TYPE_ERROR, "%s Unable to get bundle record with identifier: %{public}@, error: %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v19 = [v14 intentDefinitionURLs];
  v20 = [(INIntent *)self _className];
  v21 = [v19 objectForKey:v20];

  if (v21)
  {
    v22 = v14;
    v36 = v11;
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v25 = v23;

    v26 = [v25 containingBundleRecord];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v22;
    }

    v29 = v28;

    v30 = [v29 bundleIdentifier];

    v39 = v21;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    v15 = [INSchema _schemaWithIntentDefinitionURLs:v31 bundleIdentifier:v9 mainBundleIdentifier:v30 contentOptions:a4];

    v24 = v6[2](v6, v15);

    v11 = v36;
  }

  else
  {
    v15 = 0;
    v24 = 0;
  }

  if (!v24)
  {
    goto LABEL_23;
  }

LABEL_24:

  v34 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)_setParameterImages:(id)a3
{
  v4 = a3;
  v5 = [(INIntent *)self _parameterImages];
  v6 = [v5 isEqualToArray:v4];

  if ((v6 & 1) == 0)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __32__INIntent__setParameterImages___block_invoke;
    v10[3] = &unk_1E7283CB8;
    v11 = v7;
    v8 = v7;
    [v4 enumerateObjectsUsingBlock:v10];
    v9 = [(INIntent *)self _metadata];
    [v9 setParameterImages:v8];
  }
}

void __32__INIntent__setParameterImages___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 parameter];
  v5 = [v4 parameterKeyPath];
  v6 = [v3 image];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = objc_alloc_init(_INPBPair);
    v8 = INIntentSlotValueTransformToImageValue(v6);
    v16 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    [(_INPBPair *)v7 setPairImageValues:v9];

    [(_INPBPair *)v7 setKey:v5];
    [*(a1 + 32) addObject:v7];
  }

  else
  {

    v10 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v12 = v10;
      v13 = [v3 image];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 136315650;
      v18 = "[INIntent _setParameterImages:]_block_invoke";
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v5;
      _os_log_error_impl(&dword_18E991000, v12, OS_LOG_TYPE_ERROR, "%s Wrong image class (%@) for parameter keyPath: %@", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (NSArray)_sortedParameterImages
{
  v3 = [(INIntent *)self _parameterImages];
  if ([(INIntent *)self _type]== 1)
  {
    v4 = v13;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v5 = __34__INIntent__sortedParameterImages__block_invoke;
  }

  else
  {
    v6 = v3;
    if ([(INIntent *)self _type]!= 2)
    {
      goto LABEL_7;
    }

    v4 = v12;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v5 = __34__INIntent__sortedParameterImages__block_invoke_2;
  }

  v4[2] = v5;
  v4[3] = &unk_1E7283C68;
  v4[4] = self;
  v7 = MEMORY[0x193AD7780]();
  v6 = v3;
  if (v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __34__INIntent__sortedParameterImages__block_invoke_3;
    v10[3] = &unk_1E7283C90;
    v11 = v7;
    v8 = v7;
    v6 = [v3 sortedArrayUsingComparator:v10];
  }

LABEL_7:

  return v6;
}

uint64_t __34__INIntent__sortedParameterImages__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 parameter];
  v4 = [v3 parameterKeyPath];
  v5 = [v4 pathComponents];
  v6 = [v5 firstObject];

  v7 = [*(a1 + 32) _intentInstanceDescription];
  v8 = [v7 slotByName:v6];
  v9 = [v8 tag];

  return v9;
}

uint64_t __34__INIntent__sortedParameterImages__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _inCodable];
  v5 = [v4 _objectDescription];

  v6 = [v5 displayOrderedAttributes];
  v7 = [v3 parameter];

  v8 = [v7 parameterKeyPath];
  v9 = [v8 pathComponents];
  v10 = [v9 firstObject];

  v11 = [v5 attributeByName:v10];
  v12 = [v6 indexOfObject:v11];

  return v12;
}

uint64_t __34__INIntent__sortedParameterImages__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = v6(v5, a2);
  v9 = (*(*(a1 + 32) + 16))();

  if (v8 >= v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  if (v8 > v9)
  {
    return 1;
  }

  else
  {
    return v10;
  }
}

- (id)_imageForParameter:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(INIntent *)self _parameterImages];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 parameter];
        v11 = [v10 isEqualToParameter:v4];

        if (v11)
        {
          v6 = [v9 image];
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_setImage:(id)a3 forParameter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [(INIntent *)self _parameterImages];
  if (v10)
  {
    v12 = [[INParameterImage alloc] initWithParameter:v7 image:v10];
    v13 = [v11 arrayByAddingObject:v12];
    [(INIntent *)self _setParameterImages:v13];
  }

  else
  {
    v14 = MEMORY[0x1E696AE18];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __35__INIntent__setImage_forParameter___block_invoke;
    v17[3] = &unk_1E7283C40;
    v18 = v7;
    v15 = [v14 predicateWithBlock:v17];
    v16 = [v11 filteredArrayUsingPredicate:v15];
    [(INIntent *)self _setParameterImages:v16];
  }
}

uint64_t __35__INIntent__setImage_forParameter___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 parameter];
  LODWORD(a1) = [v3 isEqualToParameter:*(a1 + 32)];

  return a1 ^ 1;
}

- (id)_keyCodableAttributes
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = [(INIntent *)self _codableDescription];
  v4 = [v3 keyAttribute];
  v5 = [v2 if_arrayWithObjectIfNonNil:v4];

  return v5;
}

- (INImage)imageForParameterNamed:(NSString *)parameterName
{
  v4 = parameterName;
  v5 = [INParameter parameterForClass:objc_opt_class() keyPath:v4];

  v6 = [(INIntent *)self _imageForParameter:v5];

  return v6;
}

- (void)setImage:(INImage *)image forParameterNamed:(NSString *)parameterName
{
  v6 = parameterName;
  v7 = image;
  v8 = [INParameter parameterForClass:objc_opt_class() keyPath:v6];

  [(INIntent *)self _setImage:v7 forParameter:v8];
}

- (BOOL)didAuthenticateAppProtection
{
  v2 = [(INIntent *)self _metadata];
  v3 = [v2 bypassAppProtectionAuthentication];

  return v3;
}

- (NSString)_preferredAudioOutputRouteId
{
  v2 = [(INIntent *)self _metadata];
  v3 = [v2 preferredAudioOutputRouteId];

  return v3;
}

- (NSString)_mediaRouteId
{
  v2 = [(INIntent *)self _metadata];
  v3 = [v2 mediaRouteId];

  return v3;
}

- (NSString)_endpointId
{
  v2 = [(INIntent *)self _metadata];
  v3 = [v2 endpointId];

  return v3;
}

- (void)_setAirPlayRouteIds:(id)a3
{
  v4 = a3;
  v5 = [(INIntent *)self _metadata];
  [v5 setAirPlayRouteIds:v4];
}

- (void)setDonationMetadata:(INIntentDonationMetadata *)donationMetadata
{
  v4 = [(INIntentDonationMetadata *)donationMetadata copy];
  v5 = self->_donationMetadata;
  self->_donationMetadata = v4;

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setShortcutAvailability:(INShortcutAvailabilityOptions)shortcutAvailability
{
  v5 = [(INIntent *)self _metadata];
  [v5 clearShortcutAvailabilities];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__INIntent_setShortcutAvailability___block_invoke;
  v6[3] = &unk_1E7288628;
  v6[4] = self;
  INShortcutAvailabilityOptionsEnumerateBackingTypes(shortcutAvailability, v6);
}

void __36__INIntent_setShortcutAvailability___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _metadata];
  [v3 addShortcutAvailability:a2];
}

- (void)setSuggestedInvocationPhrase:(NSString *)suggestedInvocationPhrase
{
  v4 = suggestedInvocationPhrase;
  v6 = [(INIntent *)self _metadata];
  v5 = [(NSString *)v4 _intents_encodeForProto];

  [v6 setSuggestedInvocationPhrase:v5];
}

- (void)_setEndpointMediaPlaybackEnabled:(id)a3
{
  v6 = a3;
  v4 = [(INIntent *)self _metadata];
  if (v6)
  {
    v5 = [v6 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  [v4 setEndpointMediaPlaybackEnabled:v5];
}

- (NSNumber)_endpointMediaPlaybackEnabled
{
  v3 = [(INIntent *)self _metadata];
  if ([v3 hasEndpointMediaPlaybackEnabled])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INIntent *)self _metadata];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "endpointMediaPlaybackEnabled")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setMSLimitReached:(id)a3
{
  v6 = a3;
  v4 = [(INIntent *)self _metadata];
  if (v6)
  {
    v5 = [v6 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  [v4 setMsLimitReached:v5];
}

- (NSNumber)_msLimitReached
{
  v3 = [(INIntent *)self _metadata];
  if ([v3 hasMsLimitReached])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INIntent *)self _metadata];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "msLimitReached")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setIsOwnedByCurrentUser:(id)a3
{
  v5 = a3;
  v4 = [(INIntent *)self _metadata];
  if (v5)
  {
    [v4 setIsOwnedByCurrentUser:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v4 setHasIsOwnedByCurrentUser:0];
  }
}

- (NSNumber)_isOwnedByCurrentUser
{
  v3 = [(INIntent *)self _metadata];
  if ([v3 hasIsOwnedByCurrentUser])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(INIntent *)self _metadata];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "isOwnedByCurrentUser")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setOriginatingDeviceRapportEffectiveIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(INIntent *)self _metadata];
  [v5 setOriginatingDeviceRapportEffectiveId:v4];
}

- (NSString)_originatingDeviceRapportEffectiveIdentifier
{
  v2 = [(INIntent *)self _metadata];
  v3 = [v2 originatingDeviceRapportEffectiveId];

  return v3;
}

- (void)_setOriginatingDeviceRapportMediaSystemIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(INIntent *)self _metadata];
  [v5 setOriginatingDeviceRapportMediaSystemId:v4];
}

- (NSString)_originatingDeviceRapportMediaSystemIdentifier
{
  v2 = [(INIntent *)self _metadata];
  v3 = [v2 originatingDeviceRapportMediaSystemId];

  return v3;
}

- (void)_setOriginatingDeviceIdsIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(INIntent *)self _metadata];
  [v5 setOriginatingDeviceIdsIdentifier:v4];
}

- (NSString)_originatingDeviceIDSIdentifier
{
  v2 = [(INIntent *)self _metadata];
  v3 = [v2 originatingDeviceIdsIdentifier];

  return v3;
}

- (BOOL)_isPrimaryDisplayDisabled
{
  v2 = [(INIntent *)self _metadata];
  v3 = [v2 isPrimaryDisplayDisabled];

  return v3;
}

- (void)_setIdiom:(int64_t)a3
{
  v4 = [(INIntent *)self _metadata];
  v6 = v4;
  if ((a3 - 1) < 7)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0x7FFFFFFFLL;
  }

  [v4 setIdiom:v5];
}

- (int64_t)_idiom
{
  v3 = [(INIntent *)self _metadata];
  v4 = [v3 hasIdiom];
  v5 = [(INIntent *)self _metadata];
  v6 = [v5 idiom];
  if (((v6 - 1 < 7) & v4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)triggerMethod
{
  v3 = [(INIntent *)self _metadata];
  v4 = [v3 hasTriggerMethod];
  v5 = [(INIntent *)self _metadata];
  v6 = [v5 triggerMethod];
  v7 = 3;
  v8 = 4;
  if (v6 != 30)
  {
    v8 = 0;
  }

  if (v6 != 20)
  {
    v7 = v8;
  }

  v9 = 1;
  v10 = 2;
  if (v6 != 10)
  {
    v10 = 0;
  }

  if (v6)
  {
    v9 = v10;
  }

  if (v6 <= 19)
  {
    v7 = v9;
  }

  if (v4)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_setExecutionContext:(int64_t)a3
{
  v4 = [(INIntent *)self _metadata];
  v6 = v4;
  if ((a3 - 1) < 0xA)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0x7FFFFFFFLL;
  }

  [v4 setExecutionContext:v5];
}

- (void)_setNanoLaunchId:(id)a3
{
  v4 = a3;
  v5 = [(INIntent *)self _metadata];
  [v5 setNanoLaunchId:v4];
}

- (NSString)_nanoLaunchId
{
  v2 = [(INIntent *)self _metadata];
  v3 = [v2 nanoLaunchId];

  return v3;
}

- (void)_setUiExtensionBundleId:(id)a3
{
  v4 = a3;
  v5 = [(INIntent *)self _metadata];
  [v5 setSystemUIExtensionBundleId:v4];
}

- (void)_setExtensionBundleId:(id)a3
{
  v4 = a3;
  v5 = [(INIntent *)self _metadata];
  [v5 setSystemExtensionBundleId:v4];
}

- (void)_setLaunchId:(id)a3
{
  v4 = a3;
  v5 = [(INIntent *)self _metadata];
  [v5 setLaunchId:v4];
}

- (void)_setDefaultImage:(id)a3
{
  v4 = a3;
  v7 = [(INIntent *)self _metadata];
  v5 = INIntentSlotValueTransformToImageValue(v4);

  if (v5)
  {
    [v7 setDefaultImageValue:v5];
  }

  else
  {
    v6 = objc_alloc_init(_INPBImageValue);
    [v7 setDefaultImageValue:v6];
  }
}

- (void)_setCategoryVerb:(id)a3
{
  v4 = a3;
  v5 = [(INIntent *)self _metadata];
  [v5 setCategoryVerb:v4];
}

- (void)_setIntentCategory:(int64_t)a3
{
  v4 = [(INIntent *)self _metadata];
  if ((a3 - 1) > 0x13)
  {
    v5 = 0x7FFFFFFFLL;
  }

  else
  {
    v5 = dword_18EE5F3A0[a3 - 1];
  }

  v6 = v4;
  [v4 setIntentCategory:v5];
}

- (NSString)utteranceString
{
  v2 = [(INIntent *)self _metadata];
  v3 = [v2 userUtterance];
  v4 = INIntentSlotValueTransformFromString(v3);

  return v4;
}

- (void)_setMetadata:(id)a3
{
  v5 = a3;
  if ([(INIntent *)self _type]== 2)
  {
    v4 = [(INIntent *)self _inCodable];
    if ([v4 isValidKey:@"_metadata"])
    {
      [v4 setValue:v5 forPropertyNamed:@"_metadata"];
    }
  }

  else
  {
    if ([(INIntent *)self _type]!= 3)
    {
      goto LABEL_7;
    }

    v4 = [(INIntent *)self _typedBackingStore];
    [v4 setMetadata:v5];
  }

LABEL_7:
}

- (id)_initWithIdentifier:(id)a3 schema:(id)a4 name:(id)a5 data:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v11 intentCodableDescriptionWithIntentClassName:v12];
  if (v14)
  {
    v15 = objc_opt_class();
    v16 = NSClassFromString(v12);
    if (v16)
    {
      v17 = v16;
      if ([(objc_class *)v16 isSubclassOfClass:v15])
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v16 = v18;
    }

    v19 = INIntentSchemaGetIntentDescriptionWithFacadeClass(v16);

    if (v19)
    {
      v20 = objc_opt_class();
      v21 = NSClassFromString(v12);
      if (v21)
      {
        v22 = v21;
        if ([(objc_class *)v21 isSubclassOfClass:v20])
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        v21 = v23;
      }

      v24 = v21;
      v25 = INIntentSchemaGetIntentDescriptionWithFacadeClass(v24);
      v26 = [v25 dataClass];
      if (v26)
      {
        v27 = [[v26 alloc] initWithData:v13];
      }

      else
      {
        v27 = 0;
      }

      v28 = [[v24 alloc] _initWithIdentifier:v10 backingStore:v27 schema:v11 error:0];
    }

    else
    {
      v27 = [[INCodable alloc] initWithCodableDescription:v14 data:v13];
      v31 = 0;
      self = [(INIntent *)self _initWithIdentifier:v10 backingStore:v27 schema:v11 error:&v31];
      v28 = self;
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

- (id)_initWithIdentifier:(id)a3 backingStore:(id)a4 schema:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  if (!self)
  {
    goto LABEL_22;
  }

  v12 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v12;

  v14 = objc_opt_class();
  v15 = INIntentSchemaGetIntentDescriptionWithFacadeClass(v14);
  v16 = [v15 dataClass];
  if (v16)
  {
    v17 = v16;
    if (![v10 isMemberOfClass:v16])
    {
      v18 = objc_alloc_init(v17);
      goto LABEL_7;
    }

LABEL_6:
    v18 = [v10 copy];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v18 = [v10 _copyWithZone:0 error:a6];
LABEL_7:
  backingStore = self->_backingStore;
  self->_backingStore = v18;

LABEL_8:
  v20 = [(INIntent *)self _metadata];

  if (!v20)
  {
    v21 = objc_alloc_init(_INPBIntentMetadata);
    [(INIntent *)self _setMetadata:v21];
  }

  if (v11)
  {
    v22 = [(INIntent *)self _className];
    v23 = [v11 _parameterCombinationsForClassName:v22];
    parameterCombinations = self->_parameterCombinations;
    self->_parameterCombinations = v23;

    v25 = [(INIntent *)self _className];
    v26 = [v11 _configurableParameterCombinationsForClassName:v25];
    configurableParameterCombinations = self->_configurableParameterCombinations;
    self->_configurableParameterCombinations = v26;
  }

  v28 = [(INIntent *)self _metadata];
  [v28 setDefaultImageValue:0];

  if ([(INIntent *)self _type]!= 2)
  {
    goto LABEL_20;
  }

  v29 = [(INIntent *)self _inCodable];
  v30 = [v29 _objectDescription];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v32 = [(INIntent *)self _inCodable];
    v33 = [v32 _objectDescription];

    if (![(INIntent *)self _intentCategory])
    {
      -[INIntent _setIntentCategory:](self, "_setIntentCategory:", [v33 intentCategory]);
    }

    v34 = [(INIntent *)self _metadata];
    v35 = [v34 categoryVerb];
    v36 = [v35 length];

    if (!v36)
    {
      v37 = [v33 verb];
      [(INIntent *)self _setCategoryVerb:v37];
    }

    -[INIntent _setUserConfirmationRequired:](self, "_setUserConfirmationRequired:", [v33 userConfirmationRequired]);
    v38 = [v33 versioningHash];

    if (v38)
    {
      v39 = [(INIntent *)self _metadata];
      v40 = [v33 versioningHash];
      [v39 setVersioningHash:{objc_msgSend(v40, "unsignedLongLongValue")}];
    }
  }

  else
  {
LABEL_20:
    [(INIntent *)self _setIntentCategory:[(INIntent *)self _intentCategory]];
    v33 = [(INIntent *)self _categoryVerb];
    [(INIntent *)self _setCategoryVerb:v33];
  }

  self->_keyParameterLock._os_unfair_lock_opaque = 0;
LABEL_22:

  return self;
}

- (INIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v17.receiver = self;
  v17.super_class = INIntent;
  v7 = a4;
  v16 = 0;
  v8 = [[(INIntent *)&v17 init] _initWithIdentifier:v6 backingStore:v7 schema:0 error:&v16];

  v9 = v16;
  v10 = v8;
  v11 = v10;
  if (v9)
  {
    v12 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "[INIntent initWithIdentifier:backingStore:]";
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v9;
      _os_log_error_impl(&dword_18E991000, v12, OS_LOG_TYPE_ERROR, "%s Failed to initialize intent with identifier %@ due to error %@", buf, 0x20u);
    }

    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(a1);
  if (v7)
  {
    v8 = [v6 intents_stringForKey:@"identifier"];
    [v7 setIdentifier:v8];

    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__90461;
    v38 = __Block_byref_object_dispose__90462;
    v39 = 0;
    v9 = [v6 intents_safeObjectForKey:@"backingStore" ofType:objc_opt_class()];
    if (v9)
    {
      v10 = (v35 + 5);
      obj = v35[5];
      v11 = [INCodable makeFromWidgetPlistableRepresentation:v9 error:&obj];
      objc_storeStrong(v10, obj);
      v12 = v35[5];
      if (v12)
      {
        if (a4)
        {
          *a4 = v12;
        }

LABEL_12:

        _Block_object_dispose(&v34, 8);
        v17 = 0;
        goto LABEL_23;
      }

      v13 = v7[12];
      v7[12] = v11;
    }

    v11 = [v6 intents_safeObjectForKey:@"parameterCombinations" ofType:objc_opt_class()];
    if (v11)
    {
      v14 = [MEMORY[0x1E695DF90] dictionary];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __56__INIntent_makeFromWidgetPlistableRepresentation_error___block_invoke;
      v30[3] = &unk_1E7283D80;
      v32 = &v34;
      v15 = v14;
      v31 = v15;
      [v11 enumerateObjectsUsingBlock:v30];
      v16 = v35[5];
      if (v16)
      {
        if (a4)
        {
          *a4 = v16;
        }

        goto LABEL_12;
      }

      v18 = v7[5];
      v7[5] = v15;
      v19 = v15;
    }

    v7[8] = [v6 intents_int64ForKey:@"_indexingHash"];
    v20 = [v6 intents_safeObjectForKey:@"_parameterContexts" ofType:objc_opt_class()];
    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    v23 = [v22 allKeys];
    v24 = [v23 count];

    if (v24)
    {
      v25 = objc_alloc_init(INJSONDecoder);
      v26 = [v7 _codableDescription];
      v27 = [INParameterContexts _intents_decodeWithJSONDecoder:v25 codableDescription:v26 from:v20];
      v28 = v7[7];
      v7[7] = v27;
    }

    _Block_object_dispose(&v34, 8);
  }

  v17 = v7;
LABEL_23:

  return v17;
}

void __56__INIntent_makeFromWidgetPlistableRepresentation_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__90461;
    v17[4] = __Block_byref_object_dispose__90462;
    v18 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__INIntent_makeFromWidgetPlistableRepresentation_error___block_invoke_2;
    v13[3] = &unk_1E7283D58;
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v15 = v17;
    v16 = v8;
    v14 = v9;
    [v7 enumerateObjectsUsingBlock:v13];

    _Block_object_dispose(v17, 8);
  }

  else
  {
    *a4 = 1;
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to decode parameter combinations: %@", v6];
    v10 = INIntentError(8001, v7, *(*(*(a1 + 40) + 8) + 40));
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void __56__INIntent_makeFromWidgetPlistableRepresentation_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (a3 != 1)
  {
    if (a3)
    {
      goto LABEL_28;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_26;
    }

    v8 = v7;
    if (![v8 count])
    {
      v20 = [MEMORY[0x1E695DFD8] set];
      v21 = *(*(a1 + 40) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

LABEL_25:
LABEL_26:
      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        v23 = objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unable to decode parameter combination key (expected NSSet<NSString *> *, but received: %@"), v7;
        v24 = INIntentError(8001, v23, 0);
        v25 = *(*(a1 + 48) + 8);
        v26 = *(v25 + 40);
        *(v25 + 40) = v24;
      }

      goto LABEL_28;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      v13 = 1;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          objc_opt_class();
          v13 &= objc_opt_isKindOfClass();
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v11);

      if ((v13 & 1) == 0)
      {
        v16 = 0;
        v17 = 0;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v17 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    v16 = 1;
LABEL_23:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v17);
    if (v16)
    {
    }

    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = *(*(a1 + 48) + 8);
    obj = *(v18 + 40);
    v19 = [INParameterCombination makeFromWidgetPlistableRepresentation:v7 error:&obj];
    objc_storeStrong((v18 + 40), obj);
    if (v19 && *(*(*(a1 + 40) + 8) + 40))
    {
      [*(a1 + 32) setObject:v19 forKeyedSubscript:?];
    }
  }

  *a4 = 1;
LABEL_28:

  v27 = *MEMORY[0x1E69E9840];
}

- (BOOL)_enumerateWithValueProcessingBlock:(id)a3
{
  v4 = a3;
  v5 = [(INIntent *)self backingStore];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = INEnumerateObjectsInCodable(v5, v4);
  }

  else
  {

    v6 = INEnumerateObjectsInIntentSlotComposing(self, v4);
  }

  return v6;
}

- (BOOL)_intents_enumerateObjectsOfClass:(Class)a3 withBlock:(id)a4
{
  v5 = _INEnumerableValueProcessingBlock(a3, a4);
  LOBYTE(self) = [(INIntent *)self _enumerateWithValueProcessingBlock:v5];

  return self;
}

@end