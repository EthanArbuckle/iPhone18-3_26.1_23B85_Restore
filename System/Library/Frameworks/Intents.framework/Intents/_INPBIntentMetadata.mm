@interface _INPBIntentMetadata
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (_INPBIntentMetadata)initWithCoder:(id)coder;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsExecutionContext:(id)context;
- (int)StringAsIdiom:(id)idiom;
- (int)StringAsIntentCategory:(id)category;
- (int)StringAsRequiredEntitlements:(id)entitlements;
- (int)StringAsShortcutAvailabilities:(id)availabilities;
- (int)StringAsTriggerMethod:(id)method;
- (unint64_t)hash;
- (void)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (void)addAirPlayRouteIds:(id)ids;
- (void)addForceNeedsValueForParameter:(id)parameter;
- (void)addParameterImages:(id)images;
- (void)addRequiredEntitlement:(int)entitlement;
- (void)addShortcutAvailability:(int)availability;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAirPlayRouteIds:(id)ids;
- (void)setAuditTokenData:(id)data;
- (void)setCategoryVerb:(id)verb;
- (void)setEndpointId:(id)id;
- (void)setExecutionContext:(int)context;
- (void)setForceNeedsValueForParameters:(id)parameters;
- (void)setHasBackgroundLaunch:(BOOL)launch;
- (void)setHasBypassAppProtectionAuthentication:(BOOL)authentication;
- (void)setHasConfirmed:(BOOL)confirmed;
- (void)setHasEndpointMediaPlaybackEnabled:(BOOL)enabled;
- (void)setHasIdiom:(BOOL)idiom;
- (void)setHasIntentCategory:(BOOL)category;
- (void)setHasIsOwnedByCurrentUser:(BOOL)user;
- (void)setHasIsPrimaryDisplayDisabled:(BOOL)disabled;
- (void)setHasMsLimitReached:(BOOL)reached;
- (void)setHasShowsWhenRun:(BOOL)run;
- (void)setHasTriggerMethod:(BOOL)method;
- (void)setHasUserConfirmationRequired:(BOOL)required;
- (void)setHasVersioningHash:(BOOL)hash;
- (void)setIdiom:(int)idiom;
- (void)setIntentCategory:(int)category;
- (void)setIntentDescription:(id)description;
- (void)setIntentId:(id)id;
- (void)setLaunchId:(id)id;
- (void)setMediaRouteId:(id)id;
- (void)setNanoLaunchId:(id)id;
- (void)setOriginatingDeviceIdsIdentifier:(id)identifier;
- (void)setOriginatingDeviceRapportEffectiveId:(id)id;
- (void)setOriginatingDeviceRapportMediaSystemId:(id)id;
- (void)setParameterImages:(id)images;
- (void)setPreferredAudioOutputRouteId:(id)id;
- (void)setSuggestedInvocationPhrase:(id)phrase;
- (void)setSystemExtensionBundleId:(id)id;
- (void)setSystemUIExtensionBundleId:(id)id;
- (void)setTriggerMethod:(int)method;
- (void)writeTo:(id)to;
@end

@implementation _INPBIntentMetadata

- (void)dealloc
{
  [(_INPBIntentMetadata *)self clearRequiredEntitlements];
  [(_INPBIntentMetadata *)self clearShortcutAvailabilities];
  v3.receiver = self;
  v3.super_class = _INPBIntentMetadata;
  [(_INPBIntentMetadata *)&v3 dealloc];
}

- (id)dictionaryRepresentation
{
  v84 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_categoryVerb)
  {
    categoryVerb = [(_INPBIntentMetadata *)self categoryVerb];
    v5 = [categoryVerb copy];
    [dictionary setObject:v5 forKeyedSubscript:@"_categoryVerb"];
  }

  defaultImageValue = [(_INPBIntentMetadata *)self defaultImageValue];
  dictionaryRepresentation = [defaultImageValue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"_defaultImageValue"];

  if ([(_INPBIntentMetadata *)self hasExecutionContext])
  {
    executionContext = [(_INPBIntentMetadata *)self executionContext];
    if ((executionContext - 1) >= 0xA)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", executionContext];
    }

    else
    {
      v9 = *(&off_1E727E330 + (executionContext - 1));
    }

    [dictionary setObject:v9 forKeyedSubscript:@"_executionContext"];
  }

  if ([(_INPBIntentMetadata *)self hasIntentCategory])
  {
    intentCategory = [(_INPBIntentMetadata *)self intentCategory];
    v11 = intentCategory - 1;
    if (intentCategory - 1) < 0x15 && ((0x1FFDFFu >> v11))
    {
      v12 = *(&off_1E727E380 + v11);
    }

    else
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", intentCategory];
    }

    [dictionary setObject:v12 forKeyedSubscript:@"_intentCategory"];
  }

  if (self->_launchId)
  {
    launchId = [(_INPBIntentMetadata *)self launchId];
    v14 = [launchId copy];
    [dictionary setObject:v14 forKeyedSubscript:@"_launchId"];
  }

  if (self->_nanoLaunchId)
  {
    nanoLaunchId = [(_INPBIntentMetadata *)self nanoLaunchId];
    v16 = [nanoLaunchId copy];
    [dictionary setObject:v16 forKeyedSubscript:@"_nanoLaunchId"];
  }

  if (self->_requiredEntitlements.count)
  {
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBIntentMetadata requiredEntitlementsCount](self, "requiredEntitlementsCount")}];
    if ([(_INPBIntentMetadata *)self requiredEntitlementsCount])
    {
      v18 = 0;
      do
      {
        v19 = self->_requiredEntitlements.list[v18];
        if (v19 == 1)
        {
          v20 = @"CONTACTS";
        }

        else if (v19 == 2)
        {
          v20 = @"LOCATION";
        }

        else
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_requiredEntitlements.list[v18]];
        }

        [v17 addObject:v20];

        ++v18;
      }

      while (v18 < [(_INPBIntentMetadata *)self requiredEntitlementsCount]);
    }

    [dictionary setObject:v17 forKeyedSubscript:@"_requiredEntitlement"];
  }

  if (self->_systemExtensionBundleId)
  {
    systemExtensionBundleId = [(_INPBIntentMetadata *)self systemExtensionBundleId];
    v22 = [systemExtensionBundleId copy];
    [dictionary setObject:v22 forKeyedSubscript:@"_systemExtensionBundleId"];
  }

  if (self->_systemUIExtensionBundleId)
  {
    systemUIExtensionBundleId = [(_INPBIntentMetadata *)self systemUIExtensionBundleId];
    v24 = [systemUIExtensionBundleId copy];
    [dictionary setObject:v24 forKeyedSubscript:@"_systemUIExtensionBundleId"];
  }

  if (self->_airPlayRouteIds)
  {
    airPlayRouteIds = [(_INPBIntentMetadata *)self airPlayRouteIds];
    v26 = [airPlayRouteIds copy];
    [dictionary setObject:v26 forKeyedSubscript:@"airPlayRouteIds"];
  }

  if (self->_auditTokenData)
  {
    auditTokenData = [(_INPBIntentMetadata *)self auditTokenData];
    v28 = [auditTokenData copy];
    [dictionary setObject:v28 forKeyedSubscript:@"auditTokenData"];
  }

  if ([(_INPBIntentMetadata *)self hasBackgroundLaunch])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentMetadata backgroundLaunch](self, "backgroundLaunch")}];
    [dictionary setObject:v29 forKeyedSubscript:@"backgroundLaunch"];
  }

  if ([(_INPBIntentMetadata *)self hasBypassAppProtectionAuthentication])
  {
    v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentMetadata bypassAppProtectionAuthentication](self, "bypassAppProtectionAuthentication")}];
    [dictionary setObject:v30 forKeyedSubscript:@"bypassAppProtectionAuthentication"];
  }

  if ([(_INPBIntentMetadata *)self hasConfirmed])
  {
    v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentMetadata confirmed](self, "confirmed")}];
    [dictionary setObject:v31 forKeyedSubscript:@"confirmed"];
  }

  if (self->_endpointId)
  {
    endpointId = [(_INPBIntentMetadata *)self endpointId];
    v33 = [endpointId copy];
    [dictionary setObject:v33 forKeyedSubscript:@"endpointId"];
  }

  if ([(_INPBIntentMetadata *)self hasEndpointMediaPlaybackEnabled])
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentMetadata endpointMediaPlaybackEnabled](self, "endpointMediaPlaybackEnabled")}];
    [dictionary setObject:v34 forKeyedSubscript:@"endpointMediaPlaybackEnabled"];
  }

  if (self->_forceNeedsValueForParameters)
  {
    forceNeedsValueForParameters = [(_INPBIntentMetadata *)self forceNeedsValueForParameters];
    v36 = [forceNeedsValueForParameters copy];
    [dictionary setObject:v36 forKeyedSubscript:@"forceNeedsValueForParameter"];
  }

  if ([(_INPBIntentMetadata *)self hasIdiom])
  {
    idiom = [(_INPBIntentMetadata *)self idiom];
    if ((idiom - 1) >= 7)
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", idiom];
    }

    else
    {
      v38 = *(&off_1E727E428 + (idiom - 1));
    }

    [dictionary setObject:v38 forKeyedSubscript:@"idiom"];
  }

  if (self->_intentDescription)
  {
    intentDescription = [(_INPBIntentMetadata *)self intentDescription];
    v40 = [intentDescription copy];
    [dictionary setObject:v40 forKeyedSubscript:@"intentDescription"];
  }

  if (self->_intentId)
  {
    intentId = [(_INPBIntentMetadata *)self intentId];
    v42 = [intentId copy];
    [dictionary setObject:v42 forKeyedSubscript:@"intent_id"];
  }

  if ([(_INPBIntentMetadata *)self hasIsOwnedByCurrentUser])
  {
    v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentMetadata isOwnedByCurrentUser](self, "isOwnedByCurrentUser")}];
    [dictionary setObject:v43 forKeyedSubscript:@"isOwnedByCurrentUser"];
  }

  if ([(_INPBIntentMetadata *)self hasIsPrimaryDisplayDisabled])
  {
    v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentMetadata isPrimaryDisplayDisabled](self, "isPrimaryDisplayDisabled")}];
    [dictionary setObject:v44 forKeyedSubscript:@"isPrimaryDisplayDisabled"];
  }

  if (self->_mediaRouteId)
  {
    mediaRouteId = [(_INPBIntentMetadata *)self mediaRouteId];
    v46 = [mediaRouteId copy];
    [dictionary setObject:v46 forKeyedSubscript:@"mediaRouteId"];
  }

  if ([(_INPBIntentMetadata *)self hasMsLimitReached])
  {
    v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentMetadata msLimitReached](self, "msLimitReached")}];
    [dictionary setObject:v47 forKeyedSubscript:@"msLimitReached"];
  }

  if (self->_originatingDeviceIdsIdentifier)
  {
    originatingDeviceIdsIdentifier = [(_INPBIntentMetadata *)self originatingDeviceIdsIdentifier];
    v49 = [originatingDeviceIdsIdentifier copy];
    [dictionary setObject:v49 forKeyedSubscript:@"originatingDeviceIdsIdentifier"];
  }

  if (self->_originatingDeviceRapportEffectiveId)
  {
    originatingDeviceRapportEffectiveId = [(_INPBIntentMetadata *)self originatingDeviceRapportEffectiveId];
    v51 = [originatingDeviceRapportEffectiveId copy];
    [dictionary setObject:v51 forKeyedSubscript:@"originatingDeviceRapportEffectiveId"];
  }

  if (self->_originatingDeviceRapportMediaSystemId)
  {
    originatingDeviceRapportMediaSystemId = [(_INPBIntentMetadata *)self originatingDeviceRapportMediaSystemId];
    v53 = [originatingDeviceRapportMediaSystemId copy];
    [dictionary setObject:v53 forKeyedSubscript:@"originatingDeviceRapportMediaSystemId"];
  }

  if ([(NSArray *)self->_parameterImages count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v55 = self->_parameterImages;
    v56 = [(NSArray *)v55 countByEnumeratingWithState:&v79 objects:v83 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v80;
      do
      {
        for (i = 0; i != v57; ++i)
        {
          if (*v80 != v58)
          {
            objc_enumerationMutation(v55);
          }

          dictionaryRepresentation2 = [*(*(&v79 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v57 = [(NSArray *)v55 countByEnumeratingWithState:&v79 objects:v83 count:16];
      }

      while (v57);
    }

    [dictionary setObject:array forKeyedSubscript:@"parameterImages"];
  }

  if (self->_preferredAudioOutputRouteId)
  {
    preferredAudioOutputRouteId = [(_INPBIntentMetadata *)self preferredAudioOutputRouteId];
    v62 = [preferredAudioOutputRouteId copy];
    [dictionary setObject:v62 forKeyedSubscript:@"preferredAudioOutputRouteId"];
  }

  if (self->_shortcutAvailabilities.count)
  {
    v63 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBIntentMetadata shortcutAvailabilitiesCount](self, "shortcutAvailabilitiesCount")}];
    if ([(_INPBIntentMetadata *)self shortcutAvailabilitiesCount])
    {
      v64 = 0;
      do
      {
        v65 = self->_shortcutAvailabilities.list[v64];
        if (v65 >= 7)
        {
          v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_shortcutAvailabilities.list[v64]];
        }

        else
        {
          v66 = *(&off_1E727E460 + v65);
        }

        [v63 addObject:v66];

        ++v64;
      }

      while (v64 < [(_INPBIntentMetadata *)self shortcutAvailabilitiesCount]);
    }

    [dictionary setObject:v63 forKeyedSubscript:@"shortcutAvailability"];
  }

  if ([(_INPBIntentMetadata *)self hasShowsWhenRun])
  {
    v67 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentMetadata showsWhenRun](self, "showsWhenRun")}];
    [dictionary setObject:v67 forKeyedSubscript:@"showsWhenRun"];
  }

  if (self->_suggestedInvocationPhrase)
  {
    suggestedInvocationPhrase = [(_INPBIntentMetadata *)self suggestedInvocationPhrase];
    v69 = [suggestedInvocationPhrase copy];
    [dictionary setObject:v69 forKeyedSubscript:@"suggestedInvocationPhrase"];
  }

  if ([(_INPBIntentMetadata *)self hasTriggerMethod])
  {
    triggerMethod = [(_INPBIntentMetadata *)self triggerMethod];
    if (triggerMethod > 19)
    {
      if (triggerMethod == 20)
      {
        v71 = @"RemoteButton";
        goto LABEL_105;
      }

      if (triggerMethod == 30)
      {
        v71 = @"VoiceTrigger";
        goto LABEL_105;
      }
    }

    else
    {
      if (!triggerMethod)
      {
        v71 = @"Other";
        goto LABEL_105;
      }

      if (triggerMethod == 10)
      {
        v71 = @"HomeButton";
LABEL_105:
        [dictionary setObject:v71 forKeyedSubscript:@"triggerMethod"];

        goto LABEL_106;
      }
    }

    v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", triggerMethod];
    goto LABEL_105;
  }

LABEL_106:
  if ([(_INPBIntentMetadata *)self hasUserConfirmationRequired])
  {
    v72 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentMetadata userConfirmationRequired](self, "userConfirmationRequired")}];
    [dictionary setObject:v72 forKeyedSubscript:@"userConfirmationRequired"];
  }

  userUtterance = [(_INPBIntentMetadata *)self userUtterance];
  dictionaryRepresentation3 = [userUtterance dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"userUtterance"];

  if ([(_INPBIntentMetadata *)self hasVersioningHash])
  {
    v75 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_INPBIntentMetadata versioningHash](self, "versioningHash")}];
    [dictionary setObject:v75 forKeyedSubscript:@"versioningHash"];
  }

  v76 = dictionary;

  v77 = *MEMORY[0x1E69E9840];
  return dictionary;
}

- (unint64_t)hash
{
  v39 = [(NSString *)self->_categoryVerb hash];
  v38 = [(_INPBImageValue *)self->_defaultImageValue hash];
  if ([(_INPBIntentMetadata *)self hasExecutionContext])
  {
    v37 = 2654435761 * self->_executionContext;
  }

  else
  {
    v37 = 0;
  }

  if ([(_INPBIntentMetadata *)self hasIntentCategory])
  {
    v36 = 2654435761 * self->_intentCategory;
  }

  else
  {
    v36 = 0;
  }

  v35 = [(NSString *)self->_launchId hash];
  v34 = [(NSString *)self->_nanoLaunchId hash];
  v33 = PBRepeatedInt32Hash();
  v32 = [(NSString *)self->_systemExtensionBundleId hash];
  v31 = [(NSString *)self->_systemUIExtensionBundleId hash];
  v30 = [(NSArray *)self->_airPlayRouteIds hash];
  v29 = [(NSData *)self->_auditTokenData hash];
  if ([(_INPBIntentMetadata *)self hasBackgroundLaunch])
  {
    v28 = 2654435761 * self->_backgroundLaunch;
  }

  else
  {
    v28 = 0;
  }

  if ([(_INPBIntentMetadata *)self hasBypassAppProtectionAuthentication])
  {
    v27 = 2654435761 * self->_bypassAppProtectionAuthentication;
  }

  else
  {
    v27 = 0;
  }

  if ([(_INPBIntentMetadata *)self hasConfirmed])
  {
    v26 = 2654435761 * self->_confirmed;
  }

  else
  {
    v26 = 0;
  }

  v25 = [(NSString *)self->_endpointId hash];
  if ([(_INPBIntentMetadata *)self hasEndpointMediaPlaybackEnabled])
  {
    v24 = 2654435761 * self->_endpointMediaPlaybackEnabled;
  }

  else
  {
    v24 = 0;
  }

  v23 = [(NSArray *)self->_forceNeedsValueForParameters hash];
  if ([(_INPBIntentMetadata *)self hasIdiom])
  {
    v22 = 2654435761 * self->_idiom;
  }

  else
  {
    v22 = 0;
  }

  v21 = [(NSString *)self->_intentDescription hash];
  v20 = [(NSString *)self->_intentId hash];
  if ([(_INPBIntentMetadata *)self hasIsOwnedByCurrentUser])
  {
    v19 = 2654435761 * self->_isOwnedByCurrentUser;
  }

  else
  {
    v19 = 0;
  }

  if ([(_INPBIntentMetadata *)self hasIsPrimaryDisplayDisabled])
  {
    v18 = 2654435761 * self->_isPrimaryDisplayDisabled;
  }

  else
  {
    v18 = 0;
  }

  v17 = [(NSString *)self->_mediaRouteId hash];
  if ([(_INPBIntentMetadata *)self hasMsLimitReached])
  {
    v16 = 2654435761 * self->_msLimitReached;
  }

  else
  {
    v16 = 0;
  }

  v15 = [(NSString *)self->_originatingDeviceIdsIdentifier hash];
  v14 = [(NSString *)self->_originatingDeviceRapportEffectiveId hash];
  v13 = [(NSString *)self->_originatingDeviceRapportMediaSystemId hash];
  v3 = [(NSArray *)self->_parameterImages hash];
  v4 = [(NSString *)self->_preferredAudioOutputRouteId hash];
  v5 = PBRepeatedInt32Hash();
  if ([(_INPBIntentMetadata *)self hasShowsWhenRun])
  {
    v6 = 2654435761 * self->_showsWhenRun;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_suggestedInvocationPhrase hash];
  if ([(_INPBIntentMetadata *)self hasTriggerMethod])
  {
    v8 = 2654435761 * self->_triggerMethod;
  }

  else
  {
    v8 = 0;
  }

  if ([(_INPBIntentMetadata *)self hasUserConfirmationRequired])
  {
    v9 = 2654435761 * self->_userConfirmationRequired;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(_INPBString *)self->_userUtterance hash];
  if ([(_INPBIntentMetadata *)self hasVersioningHash])
  {
    v11 = 2654435761u * self->_versioningHash;
  }

  else
  {
    v11 = 0;
  }

  return v38 ^ v39 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_156;
  }

  categoryVerb = [(_INPBIntentMetadata *)self categoryVerb];
  categoryVerb2 = [equalCopy categoryVerb];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
    goto LABEL_155;
  }

  categoryVerb3 = [(_INPBIntentMetadata *)self categoryVerb];
  if (categoryVerb3)
  {
    v8 = categoryVerb3;
    categoryVerb4 = [(_INPBIntentMetadata *)self categoryVerb];
    categoryVerb5 = [equalCopy categoryVerb];
    v11 = [categoryVerb4 isEqual:categoryVerb5];

    if (!v11)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  categoryVerb = [(_INPBIntentMetadata *)self defaultImageValue];
  categoryVerb2 = [equalCopy defaultImageValue];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
    goto LABEL_155;
  }

  defaultImageValue = [(_INPBIntentMetadata *)self defaultImageValue];
  if (defaultImageValue)
  {
    v13 = defaultImageValue;
    defaultImageValue2 = [(_INPBIntentMetadata *)self defaultImageValue];
    defaultImageValue3 = [equalCopy defaultImageValue];
    v16 = [defaultImageValue2 isEqual:defaultImageValue3];

    if (!v16)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  hasExecutionContext = [(_INPBIntentMetadata *)self hasExecutionContext];
  if (hasExecutionContext != [equalCopy hasExecutionContext])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasExecutionContext])
  {
    if ([equalCopy hasExecutionContext])
    {
      executionContext = self->_executionContext;
      if (executionContext != [equalCopy executionContext])
      {
        goto LABEL_156;
      }
    }
  }

  hasIntentCategory = [(_INPBIntentMetadata *)self hasIntentCategory];
  if (hasIntentCategory != [equalCopy hasIntentCategory])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasIntentCategory])
  {
    if ([equalCopy hasIntentCategory])
    {
      intentCategory = self->_intentCategory;
      if (intentCategory != [equalCopy intentCategory])
      {
        goto LABEL_156;
      }
    }
  }

  categoryVerb = [(_INPBIntentMetadata *)self launchId];
  categoryVerb2 = [equalCopy launchId];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
    goto LABEL_155;
  }

  launchId = [(_INPBIntentMetadata *)self launchId];
  if (launchId)
  {
    v22 = launchId;
    launchId2 = [(_INPBIntentMetadata *)self launchId];
    launchId3 = [equalCopy launchId];
    v25 = [launchId2 isEqual:launchId3];

    if (!v25)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  categoryVerb = [(_INPBIntentMetadata *)self nanoLaunchId];
  categoryVerb2 = [equalCopy nanoLaunchId];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
    goto LABEL_155;
  }

  nanoLaunchId = [(_INPBIntentMetadata *)self nanoLaunchId];
  if (nanoLaunchId)
  {
    v27 = nanoLaunchId;
    nanoLaunchId2 = [(_INPBIntentMetadata *)self nanoLaunchId];
    nanoLaunchId3 = [equalCopy nanoLaunchId];
    v30 = [nanoLaunchId2 isEqual:nanoLaunchId3];

    if (!v30)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_156;
  }

  categoryVerb = [(_INPBIntentMetadata *)self systemExtensionBundleId];
  categoryVerb2 = [equalCopy systemExtensionBundleId];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
    goto LABEL_155;
  }

  systemExtensionBundleId = [(_INPBIntentMetadata *)self systemExtensionBundleId];
  if (systemExtensionBundleId)
  {
    v32 = systemExtensionBundleId;
    systemExtensionBundleId2 = [(_INPBIntentMetadata *)self systemExtensionBundleId];
    systemExtensionBundleId3 = [equalCopy systemExtensionBundleId];
    v35 = [systemExtensionBundleId2 isEqual:systemExtensionBundleId3];

    if (!v35)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  categoryVerb = [(_INPBIntentMetadata *)self systemUIExtensionBundleId];
  categoryVerb2 = [equalCopy systemUIExtensionBundleId];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
    goto LABEL_155;
  }

  systemUIExtensionBundleId = [(_INPBIntentMetadata *)self systemUIExtensionBundleId];
  if (systemUIExtensionBundleId)
  {
    v37 = systemUIExtensionBundleId;
    systemUIExtensionBundleId2 = [(_INPBIntentMetadata *)self systemUIExtensionBundleId];
    systemUIExtensionBundleId3 = [equalCopy systemUIExtensionBundleId];
    v40 = [systemUIExtensionBundleId2 isEqual:systemUIExtensionBundleId3];

    if (!v40)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  categoryVerb = [(_INPBIntentMetadata *)self airPlayRouteIds];
  categoryVerb2 = [equalCopy airPlayRouteIds];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
    goto LABEL_155;
  }

  airPlayRouteIds = [(_INPBIntentMetadata *)self airPlayRouteIds];
  if (airPlayRouteIds)
  {
    v42 = airPlayRouteIds;
    airPlayRouteIds2 = [(_INPBIntentMetadata *)self airPlayRouteIds];
    airPlayRouteIds3 = [equalCopy airPlayRouteIds];
    v45 = [airPlayRouteIds2 isEqual:airPlayRouteIds3];

    if (!v45)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  categoryVerb = [(_INPBIntentMetadata *)self auditTokenData];
  categoryVerb2 = [equalCopy auditTokenData];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
    goto LABEL_155;
  }

  auditTokenData = [(_INPBIntentMetadata *)self auditTokenData];
  if (auditTokenData)
  {
    v47 = auditTokenData;
    auditTokenData2 = [(_INPBIntentMetadata *)self auditTokenData];
    auditTokenData3 = [equalCopy auditTokenData];
    v50 = [auditTokenData2 isEqual:auditTokenData3];

    if (!v50)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  hasBypassAppProtectionAuthentication = [(_INPBIntentMetadata *)self hasBypassAppProtectionAuthentication];
  if (hasBypassAppProtectionAuthentication != [equalCopy hasBypassAppProtectionAuthentication])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasBypassAppProtectionAuthentication])
  {
    if ([equalCopy hasBypassAppProtectionAuthentication])
    {
      bypassAppProtectionAuthentication = self->_bypassAppProtectionAuthentication;
      if (bypassAppProtectionAuthentication != [equalCopy bypassAppProtectionAuthentication])
      {
        goto LABEL_156;
      }
    }
  }

  hasBackgroundLaunch = [(_INPBIntentMetadata *)self hasBackgroundLaunch];
  if (hasBackgroundLaunch != [equalCopy hasBackgroundLaunch])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasBackgroundLaunch])
  {
    if ([equalCopy hasBackgroundLaunch])
    {
      backgroundLaunch = self->_backgroundLaunch;
      if (backgroundLaunch != [equalCopy backgroundLaunch])
      {
        goto LABEL_156;
      }
    }
  }

  hasConfirmed = [(_INPBIntentMetadata *)self hasConfirmed];
  if (hasConfirmed != [equalCopy hasConfirmed])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasConfirmed])
  {
    if ([equalCopy hasConfirmed])
    {
      confirmed = self->_confirmed;
      if (confirmed != [equalCopy confirmed])
      {
        goto LABEL_156;
      }
    }
  }

  categoryVerb = [(_INPBIntentMetadata *)self endpointId];
  categoryVerb2 = [equalCopy endpointId];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
    goto LABEL_155;
  }

  endpointId = [(_INPBIntentMetadata *)self endpointId];
  if (endpointId)
  {
    v58 = endpointId;
    endpointId2 = [(_INPBIntentMetadata *)self endpointId];
    endpointId3 = [equalCopy endpointId];
    v61 = [endpointId2 isEqual:endpointId3];

    if (!v61)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  hasEndpointMediaPlaybackEnabled = [(_INPBIntentMetadata *)self hasEndpointMediaPlaybackEnabled];
  if (hasEndpointMediaPlaybackEnabled != [equalCopy hasEndpointMediaPlaybackEnabled])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasEndpointMediaPlaybackEnabled])
  {
    if ([equalCopy hasEndpointMediaPlaybackEnabled])
    {
      endpointMediaPlaybackEnabled = self->_endpointMediaPlaybackEnabled;
      if (endpointMediaPlaybackEnabled != [equalCopy endpointMediaPlaybackEnabled])
      {
        goto LABEL_156;
      }
    }
  }

  categoryVerb = [(_INPBIntentMetadata *)self forceNeedsValueForParameters];
  categoryVerb2 = [equalCopy forceNeedsValueForParameters];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
    goto LABEL_155;
  }

  forceNeedsValueForParameters = [(_INPBIntentMetadata *)self forceNeedsValueForParameters];
  if (forceNeedsValueForParameters)
  {
    v65 = forceNeedsValueForParameters;
    forceNeedsValueForParameters2 = [(_INPBIntentMetadata *)self forceNeedsValueForParameters];
    forceNeedsValueForParameters3 = [equalCopy forceNeedsValueForParameters];
    v68 = [forceNeedsValueForParameters2 isEqual:forceNeedsValueForParameters3];

    if (!v68)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  hasIdiom = [(_INPBIntentMetadata *)self hasIdiom];
  if (hasIdiom != [equalCopy hasIdiom])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasIdiom])
  {
    if ([equalCopy hasIdiom])
    {
      idiom = self->_idiom;
      if (idiom != [equalCopy idiom])
      {
        goto LABEL_156;
      }
    }
  }

  categoryVerb = [(_INPBIntentMetadata *)self intentDescription];
  categoryVerb2 = [equalCopy intentDescription];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
    goto LABEL_155;
  }

  intentDescription = [(_INPBIntentMetadata *)self intentDescription];
  if (intentDescription)
  {
    v72 = intentDescription;
    intentDescription2 = [(_INPBIntentMetadata *)self intentDescription];
    intentDescription3 = [equalCopy intentDescription];
    v75 = [intentDescription2 isEqual:intentDescription3];

    if (!v75)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  categoryVerb = [(_INPBIntentMetadata *)self intentId];
  categoryVerb2 = [equalCopy intentId];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
    goto LABEL_155;
  }

  intentId = [(_INPBIntentMetadata *)self intentId];
  if (intentId)
  {
    v77 = intentId;
    intentId2 = [(_INPBIntentMetadata *)self intentId];
    intentId3 = [equalCopy intentId];
    v80 = [intentId2 isEqual:intentId3];

    if (!v80)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  hasIsOwnedByCurrentUser = [(_INPBIntentMetadata *)self hasIsOwnedByCurrentUser];
  if (hasIsOwnedByCurrentUser != [equalCopy hasIsOwnedByCurrentUser])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasIsOwnedByCurrentUser])
  {
    if ([equalCopy hasIsOwnedByCurrentUser])
    {
      isOwnedByCurrentUser = self->_isOwnedByCurrentUser;
      if (isOwnedByCurrentUser != [equalCopy isOwnedByCurrentUser])
      {
        goto LABEL_156;
      }
    }
  }

  hasIsPrimaryDisplayDisabled = [(_INPBIntentMetadata *)self hasIsPrimaryDisplayDisabled];
  if (hasIsPrimaryDisplayDisabled != [equalCopy hasIsPrimaryDisplayDisabled])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasIsPrimaryDisplayDisabled])
  {
    if ([equalCopy hasIsPrimaryDisplayDisabled])
    {
      isPrimaryDisplayDisabled = self->_isPrimaryDisplayDisabled;
      if (isPrimaryDisplayDisabled != [equalCopy isPrimaryDisplayDisabled])
      {
        goto LABEL_156;
      }
    }
  }

  categoryVerb = [(_INPBIntentMetadata *)self mediaRouteId];
  categoryVerb2 = [equalCopy mediaRouteId];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
    goto LABEL_155;
  }

  mediaRouteId = [(_INPBIntentMetadata *)self mediaRouteId];
  if (mediaRouteId)
  {
    v86 = mediaRouteId;
    mediaRouteId2 = [(_INPBIntentMetadata *)self mediaRouteId];
    mediaRouteId3 = [equalCopy mediaRouteId];
    v89 = [mediaRouteId2 isEqual:mediaRouteId3];

    if (!v89)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  hasMsLimitReached = [(_INPBIntentMetadata *)self hasMsLimitReached];
  if (hasMsLimitReached != [equalCopy hasMsLimitReached])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasMsLimitReached])
  {
    if ([equalCopy hasMsLimitReached])
    {
      msLimitReached = self->_msLimitReached;
      if (msLimitReached != [equalCopy msLimitReached])
      {
        goto LABEL_156;
      }
    }
  }

  categoryVerb = [(_INPBIntentMetadata *)self originatingDeviceIdsIdentifier];
  categoryVerb2 = [equalCopy originatingDeviceIdsIdentifier];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
    goto LABEL_155;
  }

  originatingDeviceIdsIdentifier = [(_INPBIntentMetadata *)self originatingDeviceIdsIdentifier];
  if (originatingDeviceIdsIdentifier)
  {
    v93 = originatingDeviceIdsIdentifier;
    originatingDeviceIdsIdentifier2 = [(_INPBIntentMetadata *)self originatingDeviceIdsIdentifier];
    originatingDeviceIdsIdentifier3 = [equalCopy originatingDeviceIdsIdentifier];
    v96 = [originatingDeviceIdsIdentifier2 isEqual:originatingDeviceIdsIdentifier3];

    if (!v96)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  categoryVerb = [(_INPBIntentMetadata *)self originatingDeviceRapportEffectiveId];
  categoryVerb2 = [equalCopy originatingDeviceRapportEffectiveId];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
    goto LABEL_155;
  }

  originatingDeviceRapportEffectiveId = [(_INPBIntentMetadata *)self originatingDeviceRapportEffectiveId];
  if (originatingDeviceRapportEffectiveId)
  {
    v98 = originatingDeviceRapportEffectiveId;
    originatingDeviceRapportEffectiveId2 = [(_INPBIntentMetadata *)self originatingDeviceRapportEffectiveId];
    originatingDeviceRapportEffectiveId3 = [equalCopy originatingDeviceRapportEffectiveId];
    v101 = [originatingDeviceRapportEffectiveId2 isEqual:originatingDeviceRapportEffectiveId3];

    if (!v101)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  categoryVerb = [(_INPBIntentMetadata *)self originatingDeviceRapportMediaSystemId];
  categoryVerb2 = [equalCopy originatingDeviceRapportMediaSystemId];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
    goto LABEL_155;
  }

  originatingDeviceRapportMediaSystemId = [(_INPBIntentMetadata *)self originatingDeviceRapportMediaSystemId];
  if (originatingDeviceRapportMediaSystemId)
  {
    v103 = originatingDeviceRapportMediaSystemId;
    originatingDeviceRapportMediaSystemId2 = [(_INPBIntentMetadata *)self originatingDeviceRapportMediaSystemId];
    originatingDeviceRapportMediaSystemId3 = [equalCopy originatingDeviceRapportMediaSystemId];
    v106 = [originatingDeviceRapportMediaSystemId2 isEqual:originatingDeviceRapportMediaSystemId3];

    if (!v106)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  categoryVerb = [(_INPBIntentMetadata *)self parameterImages];
  categoryVerb2 = [equalCopy parameterImages];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
    goto LABEL_155;
  }

  parameterImages = [(_INPBIntentMetadata *)self parameterImages];
  if (parameterImages)
  {
    v108 = parameterImages;
    parameterImages2 = [(_INPBIntentMetadata *)self parameterImages];
    parameterImages3 = [equalCopy parameterImages];
    v111 = [parameterImages2 isEqual:parameterImages3];

    if (!v111)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  categoryVerb = [(_INPBIntentMetadata *)self preferredAudioOutputRouteId];
  categoryVerb2 = [equalCopy preferredAudioOutputRouteId];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
    goto LABEL_155;
  }

  preferredAudioOutputRouteId = [(_INPBIntentMetadata *)self preferredAudioOutputRouteId];
  if (preferredAudioOutputRouteId)
  {
    v113 = preferredAudioOutputRouteId;
    preferredAudioOutputRouteId2 = [(_INPBIntentMetadata *)self preferredAudioOutputRouteId];
    preferredAudioOutputRouteId3 = [equalCopy preferredAudioOutputRouteId];
    v116 = [preferredAudioOutputRouteId2 isEqual:preferredAudioOutputRouteId3];

    if (!v116)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_156;
  }

  hasShowsWhenRun = [(_INPBIntentMetadata *)self hasShowsWhenRun];
  if (hasShowsWhenRun != [equalCopy hasShowsWhenRun])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasShowsWhenRun])
  {
    if ([equalCopy hasShowsWhenRun])
    {
      showsWhenRun = self->_showsWhenRun;
      if (showsWhenRun != [equalCopy showsWhenRun])
      {
        goto LABEL_156;
      }
    }
  }

  categoryVerb = [(_INPBIntentMetadata *)self suggestedInvocationPhrase];
  categoryVerb2 = [equalCopy suggestedInvocationPhrase];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
    goto LABEL_155;
  }

  suggestedInvocationPhrase = [(_INPBIntentMetadata *)self suggestedInvocationPhrase];
  if (suggestedInvocationPhrase)
  {
    v120 = suggestedInvocationPhrase;
    suggestedInvocationPhrase2 = [(_INPBIntentMetadata *)self suggestedInvocationPhrase];
    suggestedInvocationPhrase3 = [equalCopy suggestedInvocationPhrase];
    v123 = [suggestedInvocationPhrase2 isEqual:suggestedInvocationPhrase3];

    if (!v123)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  hasTriggerMethod = [(_INPBIntentMetadata *)self hasTriggerMethod];
  if (hasTriggerMethod != [equalCopy hasTriggerMethod])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasTriggerMethod])
  {
    if ([equalCopy hasTriggerMethod])
    {
      triggerMethod = self->_triggerMethod;
      if (triggerMethod != [equalCopy triggerMethod])
      {
        goto LABEL_156;
      }
    }
  }

  hasUserConfirmationRequired = [(_INPBIntentMetadata *)self hasUserConfirmationRequired];
  if (hasUserConfirmationRequired != [equalCopy hasUserConfirmationRequired])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasUserConfirmationRequired])
  {
    if ([equalCopy hasUserConfirmationRequired])
    {
      userConfirmationRequired = self->_userConfirmationRequired;
      if (userConfirmationRequired != [equalCopy userConfirmationRequired])
      {
        goto LABEL_156;
      }
    }
  }

  categoryVerb = [(_INPBIntentMetadata *)self userUtterance];
  categoryVerb2 = [equalCopy userUtterance];
  if ((categoryVerb != 0) == (categoryVerb2 == 0))
  {
LABEL_155:

    goto LABEL_156;
  }

  userUtterance = [(_INPBIntentMetadata *)self userUtterance];
  if (userUtterance)
  {
    v129 = userUtterance;
    userUtterance2 = [(_INPBIntentMetadata *)self userUtterance];
    userUtterance3 = [equalCopy userUtterance];
    v132 = [userUtterance2 isEqual:userUtterance3];

    if (!v132)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  hasVersioningHash = [(_INPBIntentMetadata *)self hasVersioningHash];
  if (hasVersioningHash == [equalCopy hasVersioningHash])
  {
    if (!-[_INPBIntentMetadata hasVersioningHash](self, "hasVersioningHash") || ![equalCopy hasVersioningHash] || (versioningHash = self->_versioningHash, versioningHash == objc_msgSend(equalCopy, "versioningHash")))
    {
      v133 = 1;
      goto LABEL_157;
    }
  }

LABEL_156:
  v133 = 0;
LABEL_157:

  return v133;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBIntentMetadata allocWithZone:](_INPBIntentMetadata init];
  v6 = [(NSString *)self->_categoryVerb copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setCategoryVerb:v6];

  v7 = [(_INPBImageValue *)self->_defaultImageValue copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setDefaultImageValue:v7];

  if ([(_INPBIntentMetadata *)self hasExecutionContext])
  {
    [(_INPBIntentMetadata *)v5 setExecutionContext:[(_INPBIntentMetadata *)self executionContext]];
  }

  if ([(_INPBIntentMetadata *)self hasIntentCategory])
  {
    [(_INPBIntentMetadata *)v5 setIntentCategory:[(_INPBIntentMetadata *)self intentCategory]];
  }

  v8 = [(NSString *)self->_launchId copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setLaunchId:v8];

  v9 = [(NSString *)self->_nanoLaunchId copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setNanoLaunchId:v9];

  PBRepeatedInt32Copy();
  v10 = [(NSString *)self->_systemExtensionBundleId copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setSystemExtensionBundleId:v10];

  v11 = [(NSString *)self->_systemUIExtensionBundleId copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setSystemUIExtensionBundleId:v11];

  v12 = [(NSArray *)self->_airPlayRouteIds copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setAirPlayRouteIds:v12];

  v13 = [(NSData *)self->_auditTokenData copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setAuditTokenData:v13];

  if ([(_INPBIntentMetadata *)self hasBackgroundLaunch])
  {
    [(_INPBIntentMetadata *)v5 setBackgroundLaunch:[(_INPBIntentMetadata *)self backgroundLaunch]];
  }

  if ([(_INPBIntentMetadata *)self hasBypassAppProtectionAuthentication])
  {
    [(_INPBIntentMetadata *)v5 setBypassAppProtectionAuthentication:[(_INPBIntentMetadata *)self bypassAppProtectionAuthentication]];
  }

  if ([(_INPBIntentMetadata *)self hasConfirmed])
  {
    [(_INPBIntentMetadata *)v5 setConfirmed:[(_INPBIntentMetadata *)self confirmed]];
  }

  v14 = [(NSString *)self->_endpointId copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setEndpointId:v14];

  if ([(_INPBIntentMetadata *)self hasEndpointMediaPlaybackEnabled])
  {
    [(_INPBIntentMetadata *)v5 setEndpointMediaPlaybackEnabled:[(_INPBIntentMetadata *)self endpointMediaPlaybackEnabled]];
  }

  v15 = [(NSArray *)self->_forceNeedsValueForParameters copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setForceNeedsValueForParameters:v15];

  if ([(_INPBIntentMetadata *)self hasIdiom])
  {
    [(_INPBIntentMetadata *)v5 setIdiom:[(_INPBIntentMetadata *)self idiom]];
  }

  v16 = [(NSString *)self->_intentDescription copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setIntentDescription:v16];

  v17 = [(NSString *)self->_intentId copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setIntentId:v17];

  if ([(_INPBIntentMetadata *)self hasIsOwnedByCurrentUser])
  {
    [(_INPBIntentMetadata *)v5 setIsOwnedByCurrentUser:[(_INPBIntentMetadata *)self isOwnedByCurrentUser]];
  }

  if ([(_INPBIntentMetadata *)self hasIsPrimaryDisplayDisabled])
  {
    [(_INPBIntentMetadata *)v5 setIsPrimaryDisplayDisabled:[(_INPBIntentMetadata *)self isPrimaryDisplayDisabled]];
  }

  v18 = [(NSString *)self->_mediaRouteId copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setMediaRouteId:v18];

  if ([(_INPBIntentMetadata *)self hasMsLimitReached])
  {
    [(_INPBIntentMetadata *)v5 setMsLimitReached:[(_INPBIntentMetadata *)self msLimitReached]];
  }

  v19 = [(NSString *)self->_originatingDeviceIdsIdentifier copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setOriginatingDeviceIdsIdentifier:v19];

  v20 = [(NSString *)self->_originatingDeviceRapportEffectiveId copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setOriginatingDeviceRapportEffectiveId:v20];

  v21 = [(NSString *)self->_originatingDeviceRapportMediaSystemId copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setOriginatingDeviceRapportMediaSystemId:v21];

  v22 = [(NSArray *)self->_parameterImages copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setParameterImages:v22];

  v23 = [(NSString *)self->_preferredAudioOutputRouteId copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setPreferredAudioOutputRouteId:v23];

  PBRepeatedInt32Copy();
  if ([(_INPBIntentMetadata *)self hasShowsWhenRun])
  {
    [(_INPBIntentMetadata *)v5 setShowsWhenRun:[(_INPBIntentMetadata *)self showsWhenRun]];
  }

  v24 = [(NSString *)self->_suggestedInvocationPhrase copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setSuggestedInvocationPhrase:v24];

  if ([(_INPBIntentMetadata *)self hasTriggerMethod])
  {
    [(_INPBIntentMetadata *)v5 setTriggerMethod:[(_INPBIntentMetadata *)self triggerMethod]];
  }

  if ([(_INPBIntentMetadata *)self hasUserConfirmationRequired])
  {
    [(_INPBIntentMetadata *)v5 setUserConfirmationRequired:[(_INPBIntentMetadata *)self userConfirmationRequired]];
  }

  v25 = [(_INPBString *)self->_userUtterance copyWithZone:zone];
  [(_INPBIntentMetadata *)v5 setUserUtterance:v25];

  if ([(_INPBIntentMetadata *)self hasVersioningHash])
  {
    [(_INPBIntentMetadata *)v5 setVersioningHash:[(_INPBIntentMetadata *)self versioningHash]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBIntentMetadata *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBIntentMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBIntentMetadata *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v91 = *MEMORY[0x1E69E9840];
  toCopy = to;
  categoryVerb = [(_INPBIntentMetadata *)self categoryVerb];

  if (categoryVerb)
  {
    categoryVerb = self->_categoryVerb;
    PBDataWriterWriteStringField();
  }

  defaultImageValue = [(_INPBIntentMetadata *)self defaultImageValue];

  if (defaultImageValue)
  {
    defaultImageValue2 = [(_INPBIntentMetadata *)self defaultImageValue];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBIntentMetadata *)self hasExecutionContext])
  {
    executionContext = self->_executionContext;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBIntentMetadata *)self hasIntentCategory])
  {
    intentCategory = self->_intentCategory;
    PBDataWriterWriteInt32Field();
  }

  launchId = [(_INPBIntentMetadata *)self launchId];

  if (launchId)
  {
    launchId = self->_launchId;
    PBDataWriterWriteStringField();
  }

  nanoLaunchId = [(_INPBIntentMetadata *)self nanoLaunchId];

  if (nanoLaunchId)
  {
    nanoLaunchId = self->_nanoLaunchId;
    PBDataWriterWriteStringField();
  }

  if (self->_requiredEntitlements.count)
  {
    v15 = 0;
    do
    {
      v16 = self->_requiredEntitlements.list[v15];
      PBDataWriterWriteInt32Field();
      ++v15;
    }

    while (v15 < self->_requiredEntitlements.count);
  }

  systemExtensionBundleId = [(_INPBIntentMetadata *)self systemExtensionBundleId];

  if (systemExtensionBundleId)
  {
    systemExtensionBundleId = self->_systemExtensionBundleId;
    PBDataWriterWriteStringField();
  }

  systemUIExtensionBundleId = [(_INPBIntentMetadata *)self systemUIExtensionBundleId];

  if (systemUIExtensionBundleId)
  {
    systemUIExtensionBundleId = self->_systemUIExtensionBundleId;
    PBDataWriterWriteStringField();
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v21 = self->_airPlayRouteIds;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v84 objects:v90 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v85;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v85 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v84 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v23 = [(NSArray *)v21 countByEnumeratingWithState:&v84 objects:v90 count:16];
    }

    while (v23);
  }

  auditTokenData = [(_INPBIntentMetadata *)self auditTokenData];

  if (auditTokenData)
  {
    auditTokenData = self->_auditTokenData;
    PBDataWriterWriteDataField();
  }

  if ([(_INPBIntentMetadata *)self hasBackgroundLaunch])
  {
    backgroundLaunch = self->_backgroundLaunch;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBIntentMetadata *)self hasBypassAppProtectionAuthentication])
  {
    bypassAppProtectionAuthentication = self->_bypassAppProtectionAuthentication;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBIntentMetadata *)self hasConfirmed])
  {
    confirmed = self->_confirmed;
    PBDataWriterWriteBOOLField();
  }

  endpointId = [(_INPBIntentMetadata *)self endpointId];

  if (endpointId)
  {
    endpointId = self->_endpointId;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBIntentMetadata *)self hasEndpointMediaPlaybackEnabled])
  {
    endpointMediaPlaybackEnabled = self->_endpointMediaPlaybackEnabled;
    PBDataWriterWriteBOOLField();
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v35 = self->_forceNeedsValueForParameters;
  v36 = [(NSArray *)v35 countByEnumeratingWithState:&v80 objects:v89 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v81;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v81 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v80 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v37 = [(NSArray *)v35 countByEnumeratingWithState:&v80 objects:v89 count:16];
    }

    while (v37);
  }

  if ([(_INPBIntentMetadata *)self hasIdiom])
  {
    idiom = self->_idiom;
    PBDataWriterWriteInt32Field();
  }

  intentDescription = [(_INPBIntentMetadata *)self intentDescription];

  if (intentDescription)
  {
    intentDescription = self->_intentDescription;
    PBDataWriterWriteStringField();
  }

  intentId = [(_INPBIntentMetadata *)self intentId];

  if (intentId)
  {
    intentId = self->_intentId;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBIntentMetadata *)self hasIsOwnedByCurrentUser])
  {
    isOwnedByCurrentUser = self->_isOwnedByCurrentUser;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBIntentMetadata *)self hasIsPrimaryDisplayDisabled])
  {
    isPrimaryDisplayDisabled = self->_isPrimaryDisplayDisabled;
    PBDataWriterWriteBOOLField();
  }

  mediaRouteId = [(_INPBIntentMetadata *)self mediaRouteId];

  if (mediaRouteId)
  {
    mediaRouteId = self->_mediaRouteId;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBIntentMetadata *)self hasMsLimitReached])
  {
    msLimitReached = self->_msLimitReached;
    PBDataWriterWriteBOOLField();
  }

  originatingDeviceIdsIdentifier = [(_INPBIntentMetadata *)self originatingDeviceIdsIdentifier];

  if (originatingDeviceIdsIdentifier)
  {
    originatingDeviceIdsIdentifier = self->_originatingDeviceIdsIdentifier;
    PBDataWriterWriteStringField();
  }

  originatingDeviceRapportEffectiveId = [(_INPBIntentMetadata *)self originatingDeviceRapportEffectiveId];

  if (originatingDeviceRapportEffectiveId)
  {
    originatingDeviceRapportEffectiveId = self->_originatingDeviceRapportEffectiveId;
    PBDataWriterWriteStringField();
  }

  originatingDeviceRapportMediaSystemId = [(_INPBIntentMetadata *)self originatingDeviceRapportMediaSystemId];

  if (originatingDeviceRapportMediaSystemId)
  {
    originatingDeviceRapportMediaSystemId = self->_originatingDeviceRapportMediaSystemId;
    PBDataWriterWriteStringField();
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v57 = self->_parameterImages;
  v58 = [(NSArray *)v57 countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v77;
    do
    {
      for (k = 0; k != v59; ++k)
      {
        if (*v77 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v76 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v59 = [(NSArray *)v57 countByEnumeratingWithState:&v76 objects:v88 count:16];
    }

    while (v59);
  }

  preferredAudioOutputRouteId = [(_INPBIntentMetadata *)self preferredAudioOutputRouteId];

  if (preferredAudioOutputRouteId)
  {
    preferredAudioOutputRouteId = self->_preferredAudioOutputRouteId;
    PBDataWriterWriteStringField();
  }

  if (self->_shortcutAvailabilities.count)
  {
    v65 = 0;
    do
    {
      v66 = self->_shortcutAvailabilities.list[v65];
      PBDataWriterWriteInt32Field();
      ++v65;
    }

    while (v65 < self->_shortcutAvailabilities.count);
  }

  if ([(_INPBIntentMetadata *)self hasShowsWhenRun])
  {
    showsWhenRun = self->_showsWhenRun;
    PBDataWriterWriteBOOLField();
  }

  suggestedInvocationPhrase = [(_INPBIntentMetadata *)self suggestedInvocationPhrase];

  if (suggestedInvocationPhrase)
  {
    suggestedInvocationPhrase = self->_suggestedInvocationPhrase;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBIntentMetadata *)self hasTriggerMethod])
  {
    triggerMethod = self->_triggerMethod;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBIntentMetadata *)self hasUserConfirmationRequired])
  {
    userConfirmationRequired = self->_userConfirmationRequired;
    PBDataWriterWriteBOOLField();
  }

  userUtterance = [(_INPBIntentMetadata *)self userUtterance];

  if (userUtterance)
  {
    userUtterance2 = [(_INPBIntentMetadata *)self userUtterance];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBIntentMetadata *)self hasVersioningHash])
  {
    versioningHash = self->_versioningHash;
    PBDataWriterWriteUint64Field();
  }

  v75 = *MEMORY[0x1E69E9840];
}

- (void)setHasVersioningHash:(BOOL)hash
{
  if (hash)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasUserConfirmationRequired:(BOOL)required
{
  if (required)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (int)StringAsTriggerMethod:(id)method
{
  methodCopy = method;
  if ([methodCopy isEqualToString:@"Other"])
  {
    v4 = 0;
  }

  else if ([methodCopy isEqualToString:@"HomeButton"])
  {
    v4 = 10;
  }

  else if ([methodCopy isEqualToString:@"RemoteButton"])
  {
    v4 = 20;
  }

  else if ([methodCopy isEqualToString:@"VoiceTrigger"])
  {
    v4 = 30;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTriggerMethod:(BOOL)method
{
  if (method)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setTriggerMethod:(int)method
{
  has = self->_has;
  if (method == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7FF;
  }

  else
  {
    *&self->_has = has | 0x800;
    self->_triggerMethod = method;
  }
}

- (void)setSuggestedInvocationPhrase:(id)phrase
{
  v4 = [phrase copy];
  suggestedInvocationPhrase = self->_suggestedInvocationPhrase;
  self->_suggestedInvocationPhrase = v4;

  MEMORY[0x1EEE66BB8](v4, suggestedInvocationPhrase);
}

- (void)setHasShowsWhenRun:(BOOL)run
{
  if (run)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (int)StringAsShortcutAvailabilities:(id)availabilities
{
  availabilitiesCopy = availabilities;
  if ([availabilitiesCopy isEqualToString:@"SLEEP_MINDFULNESS"])
  {
    v4 = 0;
  }

  else if ([availabilitiesCopy isEqualToString:@"SLEEP_JOURNALING"])
  {
    v4 = 1;
  }

  else if ([availabilitiesCopy isEqualToString:@"SLEEP_MUSIC"])
  {
    v4 = 2;
  }

  else if ([availabilitiesCopy isEqualToString:@"SLEEP_PODCASTS"])
  {
    v4 = 3;
  }

  else if ([availabilitiesCopy isEqualToString:@"SLEEP_READING"])
  {
    v4 = 4;
  }

  else if ([availabilitiesCopy isEqualToString:@"SLEEP_WRAP_UP_YOUR_DAY"])
  {
    v4 = 5;
  }

  else if ([availabilitiesCopy isEqualToString:@"SLEEP_YOGA_AND_STRETCHING"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addShortcutAvailability:(int)availability
{
  if (availability != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)setPreferredAudioOutputRouteId:(id)id
{
  v4 = [id copy];
  preferredAudioOutputRouteId = self->_preferredAudioOutputRouteId;
  self->_preferredAudioOutputRouteId = v4;

  MEMORY[0x1EEE66BB8](v4, preferredAudioOutputRouteId);
}

- (void)addParameterImages:(id)images
{
  imagesCopy = images;
  parameterImages = self->_parameterImages;
  v8 = imagesCopy;
  if (!parameterImages)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_parameterImages;
    self->_parameterImages = array;

    imagesCopy = v8;
    parameterImages = self->_parameterImages;
  }

  [(NSArray *)parameterImages addObject:imagesCopy];
}

- (void)setParameterImages:(id)images
{
  v4 = [images mutableCopy];
  parameterImages = self->_parameterImages;
  self->_parameterImages = v4;

  MEMORY[0x1EEE66BB8](v4, parameterImages);
}

- (void)setOriginatingDeviceRapportMediaSystemId:(id)id
{
  v4 = [id copy];
  originatingDeviceRapportMediaSystemId = self->_originatingDeviceRapportMediaSystemId;
  self->_originatingDeviceRapportMediaSystemId = v4;

  MEMORY[0x1EEE66BB8](v4, originatingDeviceRapportMediaSystemId);
}

- (void)setOriginatingDeviceRapportEffectiveId:(id)id
{
  v4 = [id copy];
  originatingDeviceRapportEffectiveId = self->_originatingDeviceRapportEffectiveId;
  self->_originatingDeviceRapportEffectiveId = v4;

  MEMORY[0x1EEE66BB8](v4, originatingDeviceRapportEffectiveId);
}

- (void)setOriginatingDeviceIdsIdentifier:(id)identifier
{
  v4 = [identifier copy];
  originatingDeviceIdsIdentifier = self->_originatingDeviceIdsIdentifier;
  self->_originatingDeviceIdsIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, originatingDeviceIdsIdentifier);
}

- (void)setHasMsLimitReached:(BOOL)reached
{
  if (reached)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setMediaRouteId:(id)id
{
  v4 = [id copy];
  mediaRouteId = self->_mediaRouteId;
  self->_mediaRouteId = v4;

  MEMORY[0x1EEE66BB8](v4, mediaRouteId);
}

- (void)setHasIsPrimaryDisplayDisabled:(BOOL)disabled
{
  if (disabled)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasIsOwnedByCurrentUser:(BOOL)user
{
  if (user)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setIntentId:(id)id
{
  v4 = [id copy];
  intentId = self->_intentId;
  self->_intentId = v4;

  MEMORY[0x1EEE66BB8](v4, intentId);
}

- (void)setIntentDescription:(id)description
{
  v4 = [description copy];
  intentDescription = self->_intentDescription;
  self->_intentDescription = v4;

  MEMORY[0x1EEE66BB8](v4, intentDescription);
}

- (int)StringAsIdiom:(id)idiom
{
  idiomCopy = idiom;
  if ([idiomCopy isEqualToString:@"PHONE"])
  {
    v4 = 1;
  }

  else if ([idiomCopy isEqualToString:@"PAD"])
  {
    v4 = 2;
  }

  else if ([idiomCopy isEqualToString:@"WATCH"])
  {
    v4 = 3;
  }

  else if ([idiomCopy isEqualToString:@"HOME_POD"])
  {
    v4 = 4;
  }

  else if ([idiomCopy isEqualToString:@"CARPLAY"])
  {
    v4 = 5;
  }

  else if ([idiomCopy isEqualToString:@"APPLE_TV"])
  {
    v4 = 6;
  }

  else if ([idiomCopy isEqualToString:@"MAC"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasIdiom:(BOOL)idiom
{
  if (idiom)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setIdiom:(int)idiom
{
  has = self->_has;
  if (idiom == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFBF;
  }

  else
  {
    *&self->_has = has | 0x40;
    self->_idiom = idiom;
  }
}

- (void)addForceNeedsValueForParameter:(id)parameter
{
  parameterCopy = parameter;
  forceNeedsValueForParameters = self->_forceNeedsValueForParameters;
  v8 = parameterCopy;
  if (!forceNeedsValueForParameters)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_forceNeedsValueForParameters;
    self->_forceNeedsValueForParameters = array;

    parameterCopy = v8;
    forceNeedsValueForParameters = self->_forceNeedsValueForParameters;
  }

  [(NSArray *)forceNeedsValueForParameters addObject:parameterCopy];
}

- (void)setForceNeedsValueForParameters:(id)parameters
{
  v4 = [parameters mutableCopy];
  forceNeedsValueForParameters = self->_forceNeedsValueForParameters;
  self->_forceNeedsValueForParameters = v4;

  MEMORY[0x1EEE66BB8](v4, forceNeedsValueForParameters);
}

- (void)setHasEndpointMediaPlaybackEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setEndpointId:(id)id
{
  v4 = [id copy];
  endpointId = self->_endpointId;
  self->_endpointId = v4;

  MEMORY[0x1EEE66BB8](v4, endpointId);
}

- (void)setHasConfirmed:(BOOL)confirmed
{
  if (confirmed)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasBypassAppProtectionAuthentication:(BOOL)authentication
{
  if (authentication)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasBackgroundLaunch:(BOOL)launch
{
  if (launch)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setAuditTokenData:(id)data
{
  v4 = [data copy];
  auditTokenData = self->_auditTokenData;
  self->_auditTokenData = v4;

  MEMORY[0x1EEE66BB8](v4, auditTokenData);
}

- (void)addAirPlayRouteIds:(id)ids
{
  idsCopy = ids;
  airPlayRouteIds = self->_airPlayRouteIds;
  v8 = idsCopy;
  if (!airPlayRouteIds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_airPlayRouteIds;
    self->_airPlayRouteIds = array;

    idsCopy = v8;
    airPlayRouteIds = self->_airPlayRouteIds;
  }

  [(NSArray *)airPlayRouteIds addObject:idsCopy];
}

- (void)setAirPlayRouteIds:(id)ids
{
  v4 = [ids mutableCopy];
  airPlayRouteIds = self->_airPlayRouteIds;
  self->_airPlayRouteIds = v4;

  MEMORY[0x1EEE66BB8](v4, airPlayRouteIds);
}

- (void)setSystemUIExtensionBundleId:(id)id
{
  v4 = [id copy];
  systemUIExtensionBundleId = self->_systemUIExtensionBundleId;
  self->_systemUIExtensionBundleId = v4;

  MEMORY[0x1EEE66BB8](v4, systemUIExtensionBundleId);
}

- (void)setSystemExtensionBundleId:(id)id
{
  v4 = [id copy];
  systemExtensionBundleId = self->_systemExtensionBundleId;
  self->_systemExtensionBundleId = v4;

  MEMORY[0x1EEE66BB8](v4, systemExtensionBundleId);
}

- (int)StringAsRequiredEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  v4 = 1;
  if (([entitlementsCopy isEqualToString:@"CONTACTS"] & 1) == 0)
  {
    if ([entitlementsCopy isEqualToString:@"LOCATION"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)addRequiredEntitlement:(int)entitlement
{
  if (entitlement != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)setNanoLaunchId:(id)id
{
  v4 = [id copy];
  nanoLaunchId = self->_nanoLaunchId;
  self->_nanoLaunchId = v4;

  MEMORY[0x1EEE66BB8](v4, nanoLaunchId);
}

- (void)setLaunchId:(id)id
{
  v4 = [id copy];
  launchId = self->_launchId;
  self->_launchId = v4;

  MEMORY[0x1EEE66BB8](v4, launchId);
}

- (int)StringAsIntentCategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy isEqualToString:@"CATEGORY_INFORMATION"])
  {
    v4 = 1;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_PLAY_AUDIO"])
  {
    v4 = 2;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_PLAY_VIDEO"])
  {
    v4 = 3;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_ORDER"])
  {
    v4 = 4;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_NAVIGATION"])
  {
    v4 = 5;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_START"])
  {
    v4 = 6;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_SHARE"])
  {
    v4 = 7;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_CREATE"])
  {
    v4 = 8;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_SEARCH"])
  {
    v4 = 9;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_TOGGLE"])
  {
    v4 = 11;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_DOWNLOAD"])
  {
    v4 = 12;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_LOG"])
  {
    v4 = 13;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_CHECK_IN"])
  {
    v4 = 14;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_WORKFLOW"])
  {
    v4 = 15;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_REQUEST"])
  {
    v4 = 16;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_SET"])
  {
    v4 = 17;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_CALL_AUDIO"])
  {
    v4 = 18;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_CALL_VIDEO"])
  {
    v4 = 19;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_PLAY_SOUND"])
  {
    v4 = 20;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_USER_ACTIVITY"])
  {
    v4 = 21;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasIntentCategory:(BOOL)category
{
  if (category)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setIntentCategory:(int)category
{
  has = self->_has;
  if (category == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_intentCategory = category;
  }
}

- (int)StringAsExecutionContext:(id)context
{
  contextCopy = context;
  if ([contextCopy isEqualToString:@"ASSISTANT_DIALOG"])
  {
    v4 = 1;
  }

  else if ([contextCopy isEqualToString:@"ASSISTANT_VOICE_SHORTCUT"])
  {
    v4 = 2;
  }

  else if ([contextCopy isEqualToString:@"COVER_SHEET_PREDICTION"])
  {
    v4 = 3;
  }

  else if ([contextCopy isEqualToString:@"SPOTLIGHT_PREDICTION"])
  {
    v4 = 4;
  }

  else if ([contextCopy isEqualToString:@"SPOTLIGHT_SEARCH"])
  {
    v4 = 5;
  }

  else if ([contextCopy isEqualToString:@"MAPS"])
  {
    v4 = 6;
  }

  else if ([contextCopy isEqualToString:@"WORKFLOW"])
  {
    v4 = 7;
  }

  else if ([contextCopy isEqualToString:@"WATCH_FACE"])
  {
    v4 = 8;
  }

  else if ([contextCopy isEqualToString:@"ASSISTANT_VOICE_SHORTCUT_VIA_CLOUD_RELAY"])
  {
    v4 = 9;
  }

  else if ([contextCopy isEqualToString:@"CARPLAY_HOME_SCREEN"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setExecutionContext:(int)context
{
  has = self->_has;
  if (context == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_executionContext = context;
  }
}

- (void)setCategoryVerb:(id)verb
{
  v4 = [verb copy];
  categoryVerb = self->_categoryVerb;
  self->_categoryVerb = v4;

  MEMORY[0x1EEE66BB8](v4, categoryVerb);
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v76 = *MEMORY[0x1E69E9840];
  encoderCopy = encoder;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  categoryVerb = [(_INPBIntentMetadata *)self categoryVerb];
  [v6 if_setObjectIfNonNil:categoryVerb forKey:@"categoryVerb"];

  launchId = [(_INPBIntentMetadata *)self launchId];
  [v6 if_setObjectIfNonNil:launchId forKey:@"launchId"];

  nanoLaunchId = [(_INPBIntentMetadata *)self nanoLaunchId];
  [v6 if_setObjectIfNonNil:nanoLaunchId forKey:@"nanoLaunchId"];

  systemExtensionBundleId = [(_INPBIntentMetadata *)self systemExtensionBundleId];
  [v6 if_setObjectIfNonNil:systemExtensionBundleId forKey:@"systemExtensionBundleId"];

  systemUIExtensionBundleId = [(_INPBIntentMetadata *)self systemUIExtensionBundleId];
  [v6 if_setObjectIfNonNil:systemUIExtensionBundleId forKey:@"systemUIExtensionBundleId"];

  intentDescription = [(_INPBIntentMetadata *)self intentDescription];
  [v6 if_setObjectIfNonNil:intentDescription forKey:@"intentDescription"];

  intentId = [(_INPBIntentMetadata *)self intentId];
  [v6 if_setObjectIfNonNil:intentId forKey:@"intentId"];

  originatingDeviceIdsIdentifier = [(_INPBIntentMetadata *)self originatingDeviceIdsIdentifier];
  [v6 if_setObjectIfNonNil:originatingDeviceIdsIdentifier forKey:@"originatingDeviceIdsIdentifier"];

  suggestedInvocationPhrase = [(_INPBIntentMetadata *)self suggestedInvocationPhrase];
  [v6 if_setObjectIfNonNil:suggestedInvocationPhrase forKey:@"suggestedInvocationPhrase"];

  auditTokenData = [(_INPBIntentMetadata *)self auditTokenData];
  v17 = [encoderCopy encodeObject:auditTokenData];
  [v6 if_setObjectIfNonNil:v17 forKey:@"auditTokenData"];

  endpointId = [(_INPBIntentMetadata *)self endpointId];
  [v6 if_setObjectIfNonNil:endpointId forKey:@"endpointId"];

  mediaRouteId = [(_INPBIntentMetadata *)self mediaRouteId];
  [v6 if_setObjectIfNonNil:mediaRouteId forKey:@"mediaRouteId"];

  preferredAudioOutputRouteId = [(_INPBIntentMetadata *)self preferredAudioOutputRouteId];
  [v6 if_setObjectIfNonNil:preferredAudioOutputRouteId forKey:@"preferredAudioOutputRouteId"];

  [v6 if_setBoolIfYES:-[_INPBIntentMetadata msLimitReached](self forKey:{"msLimitReached"), @"msLimitReached"}];
  [v6 if_setBoolIfYES:-[_INPBIntentMetadata endpointMediaPlaybackEnabled](self forKey:{"endpointMediaPlaybackEnabled"), @"endpointMediaPlaybackEnabled"}];
  [v6 if_setBoolIfYES:-[_INPBIntentMetadata userConfirmationRequired](self forKey:{"userConfirmationRequired"), @"userConfirmationRequired"}];
  [v6 if_setBoolIfYES:-[_INPBIntentMetadata backgroundLaunch](self forKey:{"backgroundLaunch"), @"backgroundLaunch"}];
  [v6 if_setBoolIfYES:-[_INPBIntentMetadata confirmed](self forKey:{"confirmed"), @"confirmed"}];
  if ([(_INPBIntentMetadata *)self hasShowsWhenRun])
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentMetadata showsWhenRun](self, "showsWhenRun")}];
    [v6 setObject:v21 forKey:@"showsWhenRun"];
  }

  if ([(_INPBIntentMetadata *)self hasExecutionContext])
  {
    executionContext = [(_INPBIntentMetadata *)self executionContext];
    if ((executionContext - 1) >= 0xA)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", executionContext];
    }

    else
    {
      v23 = off_1E7281B78[(executionContext - 1)];
    }

    [v6 if_setObjectIfNonNil:v23 forKey:@"executionContext"];
  }

  else
  {
    [v6 if_setObjectIfNonNil:0 forKey:@"executionContext"];
  }

  if ([(_INPBIntentMetadata *)self hasIntentCategory])
  {
    intentCategory = [(_INPBIntentMetadata *)self intentCategory];
    v25 = intentCategory - 1;
    if (intentCategory - 1) < 0x15 && ((0x1FFDFFu >> v25))
    {
      v26 = off_1E7281BC8[v25];
    }

    else
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", intentCategory];
    }

    [v6 if_setObjectIfNonNil:v26 forKey:@"intentCategory"];
  }

  else
  {
    [v6 if_setObjectIfNonNil:0 forKey:@"intentCategory"];
  }

  if (![(_INPBIntentMetadata *)self hasTriggerMethod])
  {
    [v6 if_setObjectIfNonNil:0 forKey:@"triggerMethod"];
    goto LABEL_29;
  }

  triggerMethod = [(_INPBIntentMetadata *)self triggerMethod];
  if (triggerMethod > 19)
  {
    if (triggerMethod == 20)
    {
      v28 = @"RemoteButton";
      goto LABEL_28;
    }

    if (triggerMethod == 30)
    {
      v28 = @"VoiceTrigger";
      goto LABEL_28;
    }

LABEL_25:
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", triggerMethod];
    goto LABEL_28;
  }

  if (!triggerMethod)
  {
    v28 = @"Other";
    goto LABEL_28;
  }

  if (triggerMethod != 10)
  {
    goto LABEL_25;
  }

  v28 = @"HomeButton";
LABEL_28:
  [v6 if_setObjectIfNonNil:v28 forKey:@"triggerMethod"];

LABEL_29:
  defaultImageValue = [(_INPBIntentMetadata *)self defaultImageValue];
  v30 = INIntentSlotValueTransformFromImageValue(defaultImageValue);
  v31 = encoderCopy;
  v32 = [encoderCopy encodeObject:v30];
  v64 = v6;
  [v6 if_setObjectIfNonNil:v32 forKey:@"defaultImageValue"];

  v33 = MEMORY[0x1E695DF90];
  parameterImages = [(_INPBIntentMetadata *)self parameterImages];
  v65 = [v33 dictionaryWithCapacity:{objc_msgSend(parameterImages, "count")}];

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  selfCopy = self;
  parameterImages2 = [(_INPBIntentMetadata *)self parameterImages];
  v36 = [parameterImages2 countByEnumeratingWithState:&v70 objects:v75 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v71;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v71 != v38)
        {
          objc_enumerationMutation(parameterImages2);
        }

        v40 = *(*(&v70 + 1) + 8 * i);
        pairImageValues = [v40 pairImageValues];
        firstObject = [pairImageValues firstObject];
        v43 = INIntentSlotValueTransformFromImageValue(firstObject);
        v44 = [v31 encodeObject:v43];
        v45 = [v40 key];
        [v65 if_setObjectIfNonNil:v44 forKey:v45];
      }

      v37 = [parameterImages2 countByEnumeratingWithState:&v70 objects:v75 count:16];
    }

    while (v37);
  }

  if ([v65 count])
  {
    [v64 if_setObjectIfNonNil:v65 forKey:@"parameterImages"];
  }

  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  forceNeedsValueForParameters = [(_INPBIntentMetadata *)selfCopy forceNeedsValueForParameters];
  v48 = [forceNeedsValueForParameters countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v67;
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v67 != v50)
        {
          objc_enumerationMutation(forceNeedsValueForParameters);
        }

        v52 = [v31 encodeObject:*(*(&v66 + 1) + 8 * j)];
        [v46 if_addObjectIfNonNil:v52];
      }

      v49 = [forceNeedsValueForParameters countByEnumeratingWithState:&v66 objects:v74 count:16];
    }

    while (v49);
  }

  if ([v46 count])
  {
    [v64 if_setObjectIfNonNil:v46 forKey:@"forceNeedsValueForParameters"];
  }

  v53 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBIntentMetadata requiredEntitlementsCount](selfCopy, "requiredEntitlementsCount")}];
  if ([(_INPBIntentMetadata *)selfCopy requiredEntitlementsCount])
  {
    v54 = 0;
    do
    {
      v55 = [(_INPBIntentMetadata *)selfCopy requiredEntitlementAtIndex:v54];
      if (v55 == 1)
      {
        v56 = @"CONTACTS";
      }

      else if (v55 == 2)
      {
        v56 = @"LOCATION";
      }

      else
      {
        v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v55];
      }

      [v53 addObject:v56];

      ++v54;
    }

    while (v54 < [(_INPBIntentMetadata *)selfCopy requiredEntitlementsCount]);
  }

  if ([v53 count])
  {
    [v64 if_setObjectIfNonNil:v53 forKey:@"requiredEntitlements"];
  }

  userUtterance = [(_INPBIntentMetadata *)selfCopy userUtterance];
  v58 = INIntentSlotValueTransformFromString(userUtterance);
  [v64 if_setObjectIfNonNil:v58 forKey:@"userUtterance"];

  if ([(_INPBIntentMetadata *)selfCopy hasVersioningHash])
  {
    v59 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_INPBIntentMetadata versioningHash](selfCopy, "versioningHash")}];
    [v64 if_setObjectIfNonNil:v59 forKey:@"versioningHash"];
  }

  v60 = [v64 copy];

  v61 = *MEMORY[0x1E69E9840];

  return v60;
}

- (void)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  v158 = *MEMORY[0x1E69E9840];
  decoderCopy = decoder;
  descriptionCopy = description;
  fromCopy = from;
  if (fromCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v138 = descriptionCopy;
    v9 = fromCopy;

    v10 = [v9 objectForKeyedSubscript:@"categoryVerb"];
    v136 = fromCopy;
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    [(_INPBIntentMetadata *)self if_setValueIfNonNil:v12 forKey:@"categoryVerb"];
    v13 = [v9 objectForKeyedSubscript:@"launchId"];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    [(_INPBIntentMetadata *)self if_setValueIfNonNil:v15 forKey:@"launchId"];
    v16 = [v9 objectForKeyedSubscript:@"nanoLaunchId"];
    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    [(_INPBIntentMetadata *)self if_setValueIfNonNil:v18 forKey:@"nanoLaunchId"];
    v19 = [v9 objectForKeyedSubscript:@"systemExtensionBundleId"];
    if (v19)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    [(_INPBIntentMetadata *)self if_setValueIfNonNil:v21 forKey:@"systemExtensionBundleId"];
    v22 = [v9 objectForKeyedSubscript:@"systemUIExtensionBundleId"];
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

    [(_INPBIntentMetadata *)self if_setValueIfNonNil:v24 forKey:@"systemUIExtensionBundleId"];
    v25 = [v9 objectForKeyedSubscript:@"intentDescription"];
    if (v25)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    [(_INPBIntentMetadata *)self if_setValueIfNonNil:v27 forKey:@"intentDescription"];
    v28 = [v9 objectForKeyedSubscript:@"intentId"];
    if (v28)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;

    [(_INPBIntentMetadata *)self if_setValueIfNonNil:v30 forKey:@"intentId"];
    v31 = [v9 objectForKeyedSubscript:@"originatingDeviceIdsIdentifier"];
    if (v31)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;

    [(_INPBIntentMetadata *)self if_setValueIfNonNil:v33 forKey:@"originatingDeviceIdsIdentifier"];
    v34 = [v9 objectForKeyedSubscript:@"suggestedInvocationPhrase"];
    if (v34)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;

    [(_INPBIntentMetadata *)self if_setValueIfNonNil:v36 forKey:@"suggestedInvocationPhrase"];
    v37 = objc_opt_class();
    v38 = [v9 objectForKeyedSubscript:@"auditTokenData"];
    if (v38)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      v39 = 0;
    }

    v40 = v39;

    v41 = [decoderCopy decodeObjectOfClass:v37 from:v40];
    [(_INPBIntentMetadata *)self if_setValueIfNonNil:v41 forKey:@"auditTokenData"];

    v42 = [v9 objectForKeyedSubscript:@"endpointId"];
    if (v42)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = v42;
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      v43 = 0;
    }

    v44 = v43;

    [(_INPBIntentMetadata *)self if_setValueIfNonNil:v44 forKey:@"endpointId"];
    v45 = [v9 objectForKeyedSubscript:@"mediaRouteId"];
    if (v45)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v46 = v45;
      }

      else
      {
        v46 = 0;
      }
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;

    [(_INPBIntentMetadata *)self if_setValueIfNonNil:v47 forKey:@"mediaRouteId"];
    v48 = [v9 objectForKeyedSubscript:@"preferredAudioOutputRouteId"];
    if (v48)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      v49 = 0;
    }

    v50 = v49;

    [(_INPBIntentMetadata *)self if_setValueIfNonNil:v50 forKey:@"preferredAudioOutputRouteId"];
    v51 = [v9 objectForKeyedSubscript:@"msLimitReached"];
    if (v51)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = v51;
      }

      else
      {
        v52 = 0;
      }
    }

    else
    {
      v52 = 0;
    }

    v53 = v52;

    -[_INPBIntentMetadata setMsLimitReached:](self, "setMsLimitReached:", [v53 BOOLValue]);
    v54 = [v9 objectForKeyedSubscript:@"endpointMediaPlaybackEnabled"];
    if (v54)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v55 = v54;
      }

      else
      {
        v55 = 0;
      }
    }

    else
    {
      v55 = 0;
    }

    v56 = v55;

    -[_INPBIntentMetadata setEndpointMediaPlaybackEnabled:](self, "setEndpointMediaPlaybackEnabled:", [v56 BOOLValue]);
    v57 = [v9 objectForKeyedSubscript:@"userConfirmationRequired"];
    if (v57)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v58 = v57;
      }

      else
      {
        v58 = 0;
      }
    }

    else
    {
      v58 = 0;
    }

    v59 = v58;

    -[_INPBIntentMetadata setUserConfirmationRequired:](self, "setUserConfirmationRequired:", [v59 BOOLValue]);
    v60 = [v9 objectForKeyedSubscript:@"backgroundLaunch"];
    if (v60)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v61 = v60;
      }

      else
      {
        v61 = 0;
      }
    }

    else
    {
      v61 = 0;
    }

    v62 = v61;

    -[_INPBIntentMetadata setBackgroundLaunch:](self, "setBackgroundLaunch:", [v62 BOOLValue]);
    v63 = [v9 objectForKeyedSubscript:@"confirmed"];
    if (v63)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v64 = v63;
      }

      else
      {
        v64 = 0;
      }
    }

    else
    {
      v64 = 0;
    }

    v65 = v64;

    -[_INPBIntentMetadata setConfirmed:](self, "setConfirmed:", [v65 BOOLValue]);
    v66 = [v9 objectForKeyedSubscript:@"showsWhenRun"];
    if (v66)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v66 = v66;

        -[_INPBIntentMetadata setShowsWhenRun:](self, "setShowsWhenRun:", [v66 BOOLValue]);
      }
    }

    v67 = [v9 objectForKeyedSubscript:@"executionContext"];
    if (v67)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v68 = v67;
      }

      else
      {
        v68 = 0;
      }
    }

    else
    {
      v68 = 0;
    }

    v69 = v68;

    if (v69)
    {
      v70 = [v9 objectForKeyedSubscript:@"executionContext"];
      if ([v70 isEqualToString:@"ASSISTANT_DIALOG"])
      {
        v71 = 1;
      }

      else if ([v70 isEqualToString:@"ASSISTANT_VOICE_SHORTCUT"])
      {
        v71 = 2;
      }

      else if ([v70 isEqualToString:@"COVER_SHEET_PREDICTION"])
      {
        v71 = 3;
      }

      else if ([v70 isEqualToString:@"SPOTLIGHT_PREDICTION"])
      {
        v71 = 4;
      }

      else if ([v70 isEqualToString:@"SPOTLIGHT_SEARCH"])
      {
        v71 = 5;
      }

      else if ([v70 isEqualToString:@"MAPS"])
      {
        v71 = 6;
      }

      else if ([v70 isEqualToString:@"WORKFLOW"])
      {
        v71 = 7;
      }

      else if ([v70 isEqualToString:@"WATCH_FACE"])
      {
        v71 = 8;
      }

      else if ([v70 isEqualToString:@"ASSISTANT_VOICE_SHORTCUT_VIA_CLOUD_RELAY"])
      {
        v71 = 9;
      }

      else if ([v70 isEqualToString:@"CARPLAY_HOME_SCREEN"])
      {
        v71 = 10;
      }

      else
      {
        v71 = 1;
      }

      [(_INPBIntentMetadata *)self setExecutionContext:v71];
    }

    v72 = [v9 objectForKeyedSubscript:{@"intentCategory", v136}];
    if (v72)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v73 = v72;
      }

      else
      {
        v73 = 0;
      }
    }

    else
    {
      v73 = 0;
    }

    v74 = v73;

    v139 = v9;
    if (v74)
    {
      v75 = [v9 objectForKeyedSubscript:@"intentCategory"];
      if ([v75 isEqualToString:@"CATEGORY_INFORMATION"])
      {
        v76 = 1;
      }

      else if ([v75 isEqualToString:@"CATEGORY_PLAY_AUDIO"])
      {
        v76 = 2;
      }

      else if ([v75 isEqualToString:@"CATEGORY_PLAY_VIDEO"])
      {
        v76 = 3;
      }

      else if ([v75 isEqualToString:@"CATEGORY_ORDER"])
      {
        v76 = 4;
      }

      else if ([v75 isEqualToString:@"CATEGORY_NAVIGATION"])
      {
        v76 = 5;
      }

      else if ([v75 isEqualToString:@"CATEGORY_START"])
      {
        v76 = 6;
      }

      else if ([v75 isEqualToString:@"CATEGORY_SHARE"])
      {
        v76 = 7;
      }

      else if ([v75 isEqualToString:@"CATEGORY_CREATE"])
      {
        v76 = 8;
      }

      else if ([v75 isEqualToString:@"CATEGORY_SEARCH"])
      {
        v76 = 9;
      }

      else if ([v75 isEqualToString:@"CATEGORY_TOGGLE"])
      {
        v76 = 11;
      }

      else if ([v75 isEqualToString:@"CATEGORY_DOWNLOAD"])
      {
        v76 = 12;
      }

      else if ([v75 isEqualToString:@"CATEGORY_LOG"])
      {
        v76 = 13;
      }

      else if ([v75 isEqualToString:@"CATEGORY_CHECK_IN"])
      {
        v76 = 14;
      }

      else if ([v75 isEqualToString:@"CATEGORY_WORKFLOW"])
      {
        v76 = 15;
      }

      else if ([v75 isEqualToString:@"CATEGORY_REQUEST"])
      {
        v76 = 16;
      }

      else if ([v75 isEqualToString:@"CATEGORY_SET"])
      {
        v76 = 17;
      }

      else if ([v75 isEqualToString:@"CATEGORY_CALL_AUDIO"])
      {
        v76 = 18;
      }

      else if ([v75 isEqualToString:@"CATEGORY_CALL_VIDEO"])
      {
        v76 = 19;
      }

      else if ([v75 isEqualToString:@"CATEGORY_PLAY_SOUND"])
      {
        v76 = 20;
      }

      else if ([v75 isEqualToString:@"CATEGORY_USER_ACTIVITY"])
      {
        v76 = 21;
      }

      else
      {
        v76 = 1;
      }

      [(_INPBIntentMetadata *)self setIntentCategory:v76];
    }

    v77 = [v9 objectForKeyedSubscript:@"triggerMethod"];
    if (v77)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v78 = v77;
      }

      else
      {
        v78 = 0;
      }
    }

    else
    {
      v78 = 0;
    }

    v79 = v78;

    if (v79)
    {
      v80 = [v9 objectForKeyedSubscript:@"triggerMethod"];
      if ([v80 isEqualToString:@"Other"])
      {
        v81 = 0;
      }

      else if ([v80 isEqualToString:@"HomeButton"])
      {
        v81 = 10;
      }

      else if ([v80 isEqualToString:@"RemoteButton"])
      {
        v81 = 20;
      }

      else if ([v80 isEqualToString:@"VoiceTrigger"])
      {
        v81 = 30;
      }

      else
      {
        v81 = 0;
      }

      [(_INPBIntentMetadata *)self setTriggerMethod:v81];
    }

    v82 = objc_opt_class();
    v83 = [v9 objectForKeyedSubscript:@"defaultImageValue"];
    v84 = [decoderCopy decodeObjectOfClass:v82 from:v83];
    v85 = INIntentSlotValueTransformToImageValue(v84);
    [(_INPBIntentMetadata *)self setDefaultImageValue:v85];

    v86 = [v9 objectForKeyedSubscript:@"parameterImages"];
    if (v86)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v87 = v86;
      }

      else
      {
        v87 = 0;
      }
    }

    else
    {
      v87 = 0;
    }

    v88 = v87;

    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v140 = v88;
    allKeys = [v88 allKeys];
    v90 = [allKeys countByEnumeratingWithState:&v151 objects:v157 count:16];
    if (v90)
    {
      v91 = v90;
      v92 = *v152;
      do
      {
        for (i = 0; i != v91; ++i)
        {
          if (*v152 != v92)
          {
            objc_enumerationMutation(allKeys);
          }

          v94 = *(*(&v151 + 1) + 8 * i);
          if (v94)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v95 = v94;
            }

            else
            {
              v95 = 0;
            }
          }

          else
          {
            v95 = 0;
          }

          v96 = v95;

          if (v96)
          {
            v97 = objc_alloc_init(_INPBPair);
            [(_INPBPair *)v97 setKey:v94];
            v98 = objc_opt_class();
            v99 = [v140 objectForKeyedSubscript:v94];
            v100 = [decoderCopy decodeObjectOfClass:v98 from:v99];
            v101 = INIntentSlotValueTransformToImageValue(v100);
            [(_INPBPair *)v97 addPairImageValue:v101];

            [(_INPBIntentMetadata *)self addParameterImages:v97];
          }
        }

        v91 = [allKeys countByEnumeratingWithState:&v151 objects:v157 count:16];
      }

      while (v91);
    }

    v102 = [v9 objectForKeyedSubscript:@"forceNeedsValueForParameters"];
    if (v102)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v103 = v102;
      }

      else
      {
        v103 = 0;
      }
    }

    else
    {
      v103 = 0;
    }

    v104 = v103;

    v105 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v106 = v104;
    v107 = [v106 countByEnumeratingWithState:&v147 objects:v156 count:16];
    if (v107)
    {
      v108 = v107;
      v109 = *v148;
      do
      {
        for (j = 0; j != v108; ++j)
        {
          if (*v148 != v109)
          {
            objc_enumerationMutation(v106);
          }

          v111 = *(*(&v147 + 1) + 8 * j);
          if (v111)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v112 = v111;
            }

            else
            {
              v112 = 0;
            }
          }

          else
          {
            v112 = 0;
          }

          v113 = v112;

          [v105 if_addObjectIfNonNil:v113];
        }

        v108 = [v106 countByEnumeratingWithState:&v147 objects:v156 count:16];
      }

      while (v108);
    }

    [(_INPBIntentMetadata *)self setForceNeedsValueForParameters:v105];
    v114 = [v139 objectForKeyedSubscript:@"requiredEntitlements"];
    if (v114)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v115 = v114;
      }

      else
      {
        v115 = 0;
      }
    }

    else
    {
      v115 = 0;
    }

    v116 = v115;

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v117 = v116;
    v118 = [v117 countByEnumeratingWithState:&v143 objects:v155 count:16];
    if (v118)
    {
      v119 = v118;
      v120 = *v144;
      do
      {
        for (k = 0; k != v119; ++k)
        {
          if (*v144 != v120)
          {
            objc_enumerationMutation(v117);
          }

          v122 = *(*(&v143 + 1) + 8 * k);
          if (v122)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v123 = v122;
            }

            else
            {
              v123 = 0;
            }
          }

          else
          {
            v123 = 0;
          }

          v124 = v123;

          if (v124)
          {
            v125 = v122;
            if ([v125 isEqualToString:@"CONTACTS"])
            {
              v126 = 1;
            }

            else if ([v125 isEqualToString:@"LOCATION"])
            {
              v126 = 2;
            }

            else
            {
              v126 = 1;
            }

            [(_INPBIntentMetadata *)self addRequiredEntitlement:v126];
          }
        }

        v119 = [v117 countByEnumeratingWithState:&v143 objects:v155 count:16];
      }

      while (v119);
    }

    v127 = [v139 objectForKeyedSubscript:@"userUtterance"];
    if (v127)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v128 = v127;
      }

      else
      {
        v128 = 0;
      }
    }

    else
    {
      v128 = 0;
    }

    v129 = v128;

    v130 = INIntentSlotValueTransformToString(v129);
    [(_INPBIntentMetadata *)self setUserUtterance:v130];

    v131 = [v139 objectForKeyedSubscript:@"versioningHash"];
    if (v131)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v132 = v131;
      }

      else
      {
        v132 = 0;
      }
    }

    else
    {
      v132 = 0;
    }

    v133 = v132;

    if (v133)
    {
      v134 = [v139 objectForKeyedSubscript:@"versioningHash"];
      -[_INPBIntentMetadata setVersioningHash:](self, "setVersioningHash:", [v134 unsignedLongLongValue]);
    }

    fromCopy = v137;
    descriptionCopy = v138;
  }

  else
  {
  }

  v135 = *MEMORY[0x1E69E9840];
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  fromCopy = from;
  descriptionCopy = description;
  decoderCopy = decoder;
  v10 = objc_alloc_init(_INPBIntentMetadata);
  [(_INPBIntentMetadata *)v10 _intents_decodeWithJSONDecoder:decoderCopy codableDescription:descriptionCopy from:fromCopy];

  return v10;
}

@end