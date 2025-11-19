@interface _INPBIntentMetadata
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (_INPBIntentMetadata)initWithCoder:(id)a3;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsExecutionContext:(id)a3;
- (int)StringAsIdiom:(id)a3;
- (int)StringAsIntentCategory:(id)a3;
- (int)StringAsRequiredEntitlements:(id)a3;
- (int)StringAsShortcutAvailabilities:(id)a3;
- (int)StringAsTriggerMethod:(id)a3;
- (unint64_t)hash;
- (void)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (void)addAirPlayRouteIds:(id)a3;
- (void)addForceNeedsValueForParameter:(id)a3;
- (void)addParameterImages:(id)a3;
- (void)addRequiredEntitlement:(int)a3;
- (void)addShortcutAvailability:(int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAirPlayRouteIds:(id)a3;
- (void)setAuditTokenData:(id)a3;
- (void)setCategoryVerb:(id)a3;
- (void)setEndpointId:(id)a3;
- (void)setExecutionContext:(int)a3;
- (void)setForceNeedsValueForParameters:(id)a3;
- (void)setHasBackgroundLaunch:(BOOL)a3;
- (void)setHasBypassAppProtectionAuthentication:(BOOL)a3;
- (void)setHasConfirmed:(BOOL)a3;
- (void)setHasEndpointMediaPlaybackEnabled:(BOOL)a3;
- (void)setHasIdiom:(BOOL)a3;
- (void)setHasIntentCategory:(BOOL)a3;
- (void)setHasIsOwnedByCurrentUser:(BOOL)a3;
- (void)setHasIsPrimaryDisplayDisabled:(BOOL)a3;
- (void)setHasMsLimitReached:(BOOL)a3;
- (void)setHasShowsWhenRun:(BOOL)a3;
- (void)setHasTriggerMethod:(BOOL)a3;
- (void)setHasUserConfirmationRequired:(BOOL)a3;
- (void)setHasVersioningHash:(BOOL)a3;
- (void)setIdiom:(int)a3;
- (void)setIntentCategory:(int)a3;
- (void)setIntentDescription:(id)a3;
- (void)setIntentId:(id)a3;
- (void)setLaunchId:(id)a3;
- (void)setMediaRouteId:(id)a3;
- (void)setNanoLaunchId:(id)a3;
- (void)setOriginatingDeviceIdsIdentifier:(id)a3;
- (void)setOriginatingDeviceRapportEffectiveId:(id)a3;
- (void)setOriginatingDeviceRapportMediaSystemId:(id)a3;
- (void)setParameterImages:(id)a3;
- (void)setPreferredAudioOutputRouteId:(id)a3;
- (void)setSuggestedInvocationPhrase:(id)a3;
- (void)setSystemExtensionBundleId:(id)a3;
- (void)setSystemUIExtensionBundleId:(id)a3;
- (void)setTriggerMethod:(int)a3;
- (void)writeTo:(id)a3;
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_categoryVerb)
  {
    v4 = [(_INPBIntentMetadata *)self categoryVerb];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"_categoryVerb"];
  }

  v6 = [(_INPBIntentMetadata *)self defaultImageValue];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"_defaultImageValue"];

  if ([(_INPBIntentMetadata *)self hasExecutionContext])
  {
    v8 = [(_INPBIntentMetadata *)self executionContext];
    if ((v8 - 1) >= 0xA)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = *(&off_1E727E330 + (v8 - 1));
    }

    [v3 setObject:v9 forKeyedSubscript:@"_executionContext"];
  }

  if ([(_INPBIntentMetadata *)self hasIntentCategory])
  {
    v10 = [(_INPBIntentMetadata *)self intentCategory];
    v11 = v10 - 1;
    if (v10 - 1) < 0x15 && ((0x1FFDFFu >> v11))
    {
      v12 = *(&off_1E727E380 + v11);
    }

    else
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    [v3 setObject:v12 forKeyedSubscript:@"_intentCategory"];
  }

  if (self->_launchId)
  {
    v13 = [(_INPBIntentMetadata *)self launchId];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"_launchId"];
  }

  if (self->_nanoLaunchId)
  {
    v15 = [(_INPBIntentMetadata *)self nanoLaunchId];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"_nanoLaunchId"];
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

    [v3 setObject:v17 forKeyedSubscript:@"_requiredEntitlement"];
  }

  if (self->_systemExtensionBundleId)
  {
    v21 = [(_INPBIntentMetadata *)self systemExtensionBundleId];
    v22 = [v21 copy];
    [v3 setObject:v22 forKeyedSubscript:@"_systemExtensionBundleId"];
  }

  if (self->_systemUIExtensionBundleId)
  {
    v23 = [(_INPBIntentMetadata *)self systemUIExtensionBundleId];
    v24 = [v23 copy];
    [v3 setObject:v24 forKeyedSubscript:@"_systemUIExtensionBundleId"];
  }

  if (self->_airPlayRouteIds)
  {
    v25 = [(_INPBIntentMetadata *)self airPlayRouteIds];
    v26 = [v25 copy];
    [v3 setObject:v26 forKeyedSubscript:@"airPlayRouteIds"];
  }

  if (self->_auditTokenData)
  {
    v27 = [(_INPBIntentMetadata *)self auditTokenData];
    v28 = [v27 copy];
    [v3 setObject:v28 forKeyedSubscript:@"auditTokenData"];
  }

  if ([(_INPBIntentMetadata *)self hasBackgroundLaunch])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentMetadata backgroundLaunch](self, "backgroundLaunch")}];
    [v3 setObject:v29 forKeyedSubscript:@"backgroundLaunch"];
  }

  if ([(_INPBIntentMetadata *)self hasBypassAppProtectionAuthentication])
  {
    v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentMetadata bypassAppProtectionAuthentication](self, "bypassAppProtectionAuthentication")}];
    [v3 setObject:v30 forKeyedSubscript:@"bypassAppProtectionAuthentication"];
  }

  if ([(_INPBIntentMetadata *)self hasConfirmed])
  {
    v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentMetadata confirmed](self, "confirmed")}];
    [v3 setObject:v31 forKeyedSubscript:@"confirmed"];
  }

  if (self->_endpointId)
  {
    v32 = [(_INPBIntentMetadata *)self endpointId];
    v33 = [v32 copy];
    [v3 setObject:v33 forKeyedSubscript:@"endpointId"];
  }

  if ([(_INPBIntentMetadata *)self hasEndpointMediaPlaybackEnabled])
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentMetadata endpointMediaPlaybackEnabled](self, "endpointMediaPlaybackEnabled")}];
    [v3 setObject:v34 forKeyedSubscript:@"endpointMediaPlaybackEnabled"];
  }

  if (self->_forceNeedsValueForParameters)
  {
    v35 = [(_INPBIntentMetadata *)self forceNeedsValueForParameters];
    v36 = [v35 copy];
    [v3 setObject:v36 forKeyedSubscript:@"forceNeedsValueForParameter"];
  }

  if ([(_INPBIntentMetadata *)self hasIdiom])
  {
    v37 = [(_INPBIntentMetadata *)self idiom];
    if ((v37 - 1) >= 7)
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v37];
    }

    else
    {
      v38 = *(&off_1E727E428 + (v37 - 1));
    }

    [v3 setObject:v38 forKeyedSubscript:@"idiom"];
  }

  if (self->_intentDescription)
  {
    v39 = [(_INPBIntentMetadata *)self intentDescription];
    v40 = [v39 copy];
    [v3 setObject:v40 forKeyedSubscript:@"intentDescription"];
  }

  if (self->_intentId)
  {
    v41 = [(_INPBIntentMetadata *)self intentId];
    v42 = [v41 copy];
    [v3 setObject:v42 forKeyedSubscript:@"intent_id"];
  }

  if ([(_INPBIntentMetadata *)self hasIsOwnedByCurrentUser])
  {
    v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentMetadata isOwnedByCurrentUser](self, "isOwnedByCurrentUser")}];
    [v3 setObject:v43 forKeyedSubscript:@"isOwnedByCurrentUser"];
  }

  if ([(_INPBIntentMetadata *)self hasIsPrimaryDisplayDisabled])
  {
    v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentMetadata isPrimaryDisplayDisabled](self, "isPrimaryDisplayDisabled")}];
    [v3 setObject:v44 forKeyedSubscript:@"isPrimaryDisplayDisabled"];
  }

  if (self->_mediaRouteId)
  {
    v45 = [(_INPBIntentMetadata *)self mediaRouteId];
    v46 = [v45 copy];
    [v3 setObject:v46 forKeyedSubscript:@"mediaRouteId"];
  }

  if ([(_INPBIntentMetadata *)self hasMsLimitReached])
  {
    v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentMetadata msLimitReached](self, "msLimitReached")}];
    [v3 setObject:v47 forKeyedSubscript:@"msLimitReached"];
  }

  if (self->_originatingDeviceIdsIdentifier)
  {
    v48 = [(_INPBIntentMetadata *)self originatingDeviceIdsIdentifier];
    v49 = [v48 copy];
    [v3 setObject:v49 forKeyedSubscript:@"originatingDeviceIdsIdentifier"];
  }

  if (self->_originatingDeviceRapportEffectiveId)
  {
    v50 = [(_INPBIntentMetadata *)self originatingDeviceRapportEffectiveId];
    v51 = [v50 copy];
    [v3 setObject:v51 forKeyedSubscript:@"originatingDeviceRapportEffectiveId"];
  }

  if (self->_originatingDeviceRapportMediaSystemId)
  {
    v52 = [(_INPBIntentMetadata *)self originatingDeviceRapportMediaSystemId];
    v53 = [v52 copy];
    [v3 setObject:v53 forKeyedSubscript:@"originatingDeviceRapportMediaSystemId"];
  }

  if ([(NSArray *)self->_parameterImages count])
  {
    v54 = [MEMORY[0x1E695DF70] array];
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

          v60 = [*(*(&v79 + 1) + 8 * i) dictionaryRepresentation];
          [v54 addObject:v60];
        }

        v57 = [(NSArray *)v55 countByEnumeratingWithState:&v79 objects:v83 count:16];
      }

      while (v57);
    }

    [v3 setObject:v54 forKeyedSubscript:@"parameterImages"];
  }

  if (self->_preferredAudioOutputRouteId)
  {
    v61 = [(_INPBIntentMetadata *)self preferredAudioOutputRouteId];
    v62 = [v61 copy];
    [v3 setObject:v62 forKeyedSubscript:@"preferredAudioOutputRouteId"];
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

    [v3 setObject:v63 forKeyedSubscript:@"shortcutAvailability"];
  }

  if ([(_INPBIntentMetadata *)self hasShowsWhenRun])
  {
    v67 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentMetadata showsWhenRun](self, "showsWhenRun")}];
    [v3 setObject:v67 forKeyedSubscript:@"showsWhenRun"];
  }

  if (self->_suggestedInvocationPhrase)
  {
    v68 = [(_INPBIntentMetadata *)self suggestedInvocationPhrase];
    v69 = [v68 copy];
    [v3 setObject:v69 forKeyedSubscript:@"suggestedInvocationPhrase"];
  }

  if ([(_INPBIntentMetadata *)self hasTriggerMethod])
  {
    v70 = [(_INPBIntentMetadata *)self triggerMethod];
    if (v70 > 19)
    {
      if (v70 == 20)
      {
        v71 = @"RemoteButton";
        goto LABEL_105;
      }

      if (v70 == 30)
      {
        v71 = @"VoiceTrigger";
        goto LABEL_105;
      }
    }

    else
    {
      if (!v70)
      {
        v71 = @"Other";
        goto LABEL_105;
      }

      if (v70 == 10)
      {
        v71 = @"HomeButton";
LABEL_105:
        [v3 setObject:v71 forKeyedSubscript:@"triggerMethod"];

        goto LABEL_106;
      }
    }

    v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v70];
    goto LABEL_105;
  }

LABEL_106:
  if ([(_INPBIntentMetadata *)self hasUserConfirmationRequired])
  {
    v72 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentMetadata userConfirmationRequired](self, "userConfirmationRequired")}];
    [v3 setObject:v72 forKeyedSubscript:@"userConfirmationRequired"];
  }

  v73 = [(_INPBIntentMetadata *)self userUtterance];
  v74 = [v73 dictionaryRepresentation];
  [v3 setObject:v74 forKeyedSubscript:@"userUtterance"];

  if ([(_INPBIntentMetadata *)self hasVersioningHash])
  {
    v75 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_INPBIntentMetadata versioningHash](self, "versioningHash")}];
    [v3 setObject:v75 forKeyedSubscript:@"versioningHash"];
  }

  v76 = v3;

  v77 = *MEMORY[0x1E69E9840];
  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_156;
  }

  v5 = [(_INPBIntentMetadata *)self categoryVerb];
  v6 = [v4 categoryVerb];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_155;
  }

  v7 = [(_INPBIntentMetadata *)self categoryVerb];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBIntentMetadata *)self categoryVerb];
    v10 = [v4 categoryVerb];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentMetadata *)self defaultImageValue];
  v6 = [v4 defaultImageValue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_155;
  }

  v12 = [(_INPBIntentMetadata *)self defaultImageValue];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBIntentMetadata *)self defaultImageValue];
    v15 = [v4 defaultImageValue];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  v17 = [(_INPBIntentMetadata *)self hasExecutionContext];
  if (v17 != [v4 hasExecutionContext])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasExecutionContext])
  {
    if ([v4 hasExecutionContext])
    {
      executionContext = self->_executionContext;
      if (executionContext != [v4 executionContext])
      {
        goto LABEL_156;
      }
    }
  }

  v19 = [(_INPBIntentMetadata *)self hasIntentCategory];
  if (v19 != [v4 hasIntentCategory])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasIntentCategory])
  {
    if ([v4 hasIntentCategory])
    {
      intentCategory = self->_intentCategory;
      if (intentCategory != [v4 intentCategory])
      {
        goto LABEL_156;
      }
    }
  }

  v5 = [(_INPBIntentMetadata *)self launchId];
  v6 = [v4 launchId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_155;
  }

  v21 = [(_INPBIntentMetadata *)self launchId];
  if (v21)
  {
    v22 = v21;
    v23 = [(_INPBIntentMetadata *)self launchId];
    v24 = [v4 launchId];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentMetadata *)self nanoLaunchId];
  v6 = [v4 nanoLaunchId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_155;
  }

  v26 = [(_INPBIntentMetadata *)self nanoLaunchId];
  if (v26)
  {
    v27 = v26;
    v28 = [(_INPBIntentMetadata *)self nanoLaunchId];
    v29 = [v4 nanoLaunchId];
    v30 = [v28 isEqual:v29];

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

  v5 = [(_INPBIntentMetadata *)self systemExtensionBundleId];
  v6 = [v4 systemExtensionBundleId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_155;
  }

  v31 = [(_INPBIntentMetadata *)self systemExtensionBundleId];
  if (v31)
  {
    v32 = v31;
    v33 = [(_INPBIntentMetadata *)self systemExtensionBundleId];
    v34 = [v4 systemExtensionBundleId];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentMetadata *)self systemUIExtensionBundleId];
  v6 = [v4 systemUIExtensionBundleId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_155;
  }

  v36 = [(_INPBIntentMetadata *)self systemUIExtensionBundleId];
  if (v36)
  {
    v37 = v36;
    v38 = [(_INPBIntentMetadata *)self systemUIExtensionBundleId];
    v39 = [v4 systemUIExtensionBundleId];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentMetadata *)self airPlayRouteIds];
  v6 = [v4 airPlayRouteIds];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_155;
  }

  v41 = [(_INPBIntentMetadata *)self airPlayRouteIds];
  if (v41)
  {
    v42 = v41;
    v43 = [(_INPBIntentMetadata *)self airPlayRouteIds];
    v44 = [v4 airPlayRouteIds];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentMetadata *)self auditTokenData];
  v6 = [v4 auditTokenData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_155;
  }

  v46 = [(_INPBIntentMetadata *)self auditTokenData];
  if (v46)
  {
    v47 = v46;
    v48 = [(_INPBIntentMetadata *)self auditTokenData];
    v49 = [v4 auditTokenData];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  v51 = [(_INPBIntentMetadata *)self hasBypassAppProtectionAuthentication];
  if (v51 != [v4 hasBypassAppProtectionAuthentication])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasBypassAppProtectionAuthentication])
  {
    if ([v4 hasBypassAppProtectionAuthentication])
    {
      bypassAppProtectionAuthentication = self->_bypassAppProtectionAuthentication;
      if (bypassAppProtectionAuthentication != [v4 bypassAppProtectionAuthentication])
      {
        goto LABEL_156;
      }
    }
  }

  v53 = [(_INPBIntentMetadata *)self hasBackgroundLaunch];
  if (v53 != [v4 hasBackgroundLaunch])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasBackgroundLaunch])
  {
    if ([v4 hasBackgroundLaunch])
    {
      backgroundLaunch = self->_backgroundLaunch;
      if (backgroundLaunch != [v4 backgroundLaunch])
      {
        goto LABEL_156;
      }
    }
  }

  v55 = [(_INPBIntentMetadata *)self hasConfirmed];
  if (v55 != [v4 hasConfirmed])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasConfirmed])
  {
    if ([v4 hasConfirmed])
    {
      confirmed = self->_confirmed;
      if (confirmed != [v4 confirmed])
      {
        goto LABEL_156;
      }
    }
  }

  v5 = [(_INPBIntentMetadata *)self endpointId];
  v6 = [v4 endpointId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_155;
  }

  v57 = [(_INPBIntentMetadata *)self endpointId];
  if (v57)
  {
    v58 = v57;
    v59 = [(_INPBIntentMetadata *)self endpointId];
    v60 = [v4 endpointId];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  v62 = [(_INPBIntentMetadata *)self hasEndpointMediaPlaybackEnabled];
  if (v62 != [v4 hasEndpointMediaPlaybackEnabled])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasEndpointMediaPlaybackEnabled])
  {
    if ([v4 hasEndpointMediaPlaybackEnabled])
    {
      endpointMediaPlaybackEnabled = self->_endpointMediaPlaybackEnabled;
      if (endpointMediaPlaybackEnabled != [v4 endpointMediaPlaybackEnabled])
      {
        goto LABEL_156;
      }
    }
  }

  v5 = [(_INPBIntentMetadata *)self forceNeedsValueForParameters];
  v6 = [v4 forceNeedsValueForParameters];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_155;
  }

  v64 = [(_INPBIntentMetadata *)self forceNeedsValueForParameters];
  if (v64)
  {
    v65 = v64;
    v66 = [(_INPBIntentMetadata *)self forceNeedsValueForParameters];
    v67 = [v4 forceNeedsValueForParameters];
    v68 = [v66 isEqual:v67];

    if (!v68)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  v69 = [(_INPBIntentMetadata *)self hasIdiom];
  if (v69 != [v4 hasIdiom])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasIdiom])
  {
    if ([v4 hasIdiom])
    {
      idiom = self->_idiom;
      if (idiom != [v4 idiom])
      {
        goto LABEL_156;
      }
    }
  }

  v5 = [(_INPBIntentMetadata *)self intentDescription];
  v6 = [v4 intentDescription];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_155;
  }

  v71 = [(_INPBIntentMetadata *)self intentDescription];
  if (v71)
  {
    v72 = v71;
    v73 = [(_INPBIntentMetadata *)self intentDescription];
    v74 = [v4 intentDescription];
    v75 = [v73 isEqual:v74];

    if (!v75)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentMetadata *)self intentId];
  v6 = [v4 intentId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_155;
  }

  v76 = [(_INPBIntentMetadata *)self intentId];
  if (v76)
  {
    v77 = v76;
    v78 = [(_INPBIntentMetadata *)self intentId];
    v79 = [v4 intentId];
    v80 = [v78 isEqual:v79];

    if (!v80)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  v81 = [(_INPBIntentMetadata *)self hasIsOwnedByCurrentUser];
  if (v81 != [v4 hasIsOwnedByCurrentUser])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasIsOwnedByCurrentUser])
  {
    if ([v4 hasIsOwnedByCurrentUser])
    {
      isOwnedByCurrentUser = self->_isOwnedByCurrentUser;
      if (isOwnedByCurrentUser != [v4 isOwnedByCurrentUser])
      {
        goto LABEL_156;
      }
    }
  }

  v83 = [(_INPBIntentMetadata *)self hasIsPrimaryDisplayDisabled];
  if (v83 != [v4 hasIsPrimaryDisplayDisabled])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasIsPrimaryDisplayDisabled])
  {
    if ([v4 hasIsPrimaryDisplayDisabled])
    {
      isPrimaryDisplayDisabled = self->_isPrimaryDisplayDisabled;
      if (isPrimaryDisplayDisabled != [v4 isPrimaryDisplayDisabled])
      {
        goto LABEL_156;
      }
    }
  }

  v5 = [(_INPBIntentMetadata *)self mediaRouteId];
  v6 = [v4 mediaRouteId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_155;
  }

  v85 = [(_INPBIntentMetadata *)self mediaRouteId];
  if (v85)
  {
    v86 = v85;
    v87 = [(_INPBIntentMetadata *)self mediaRouteId];
    v88 = [v4 mediaRouteId];
    v89 = [v87 isEqual:v88];

    if (!v89)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  v90 = [(_INPBIntentMetadata *)self hasMsLimitReached];
  if (v90 != [v4 hasMsLimitReached])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasMsLimitReached])
  {
    if ([v4 hasMsLimitReached])
    {
      msLimitReached = self->_msLimitReached;
      if (msLimitReached != [v4 msLimitReached])
      {
        goto LABEL_156;
      }
    }
  }

  v5 = [(_INPBIntentMetadata *)self originatingDeviceIdsIdentifier];
  v6 = [v4 originatingDeviceIdsIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_155;
  }

  v92 = [(_INPBIntentMetadata *)self originatingDeviceIdsIdentifier];
  if (v92)
  {
    v93 = v92;
    v94 = [(_INPBIntentMetadata *)self originatingDeviceIdsIdentifier];
    v95 = [v4 originatingDeviceIdsIdentifier];
    v96 = [v94 isEqual:v95];

    if (!v96)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentMetadata *)self originatingDeviceRapportEffectiveId];
  v6 = [v4 originatingDeviceRapportEffectiveId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_155;
  }

  v97 = [(_INPBIntentMetadata *)self originatingDeviceRapportEffectiveId];
  if (v97)
  {
    v98 = v97;
    v99 = [(_INPBIntentMetadata *)self originatingDeviceRapportEffectiveId];
    v100 = [v4 originatingDeviceRapportEffectiveId];
    v101 = [v99 isEqual:v100];

    if (!v101)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentMetadata *)self originatingDeviceRapportMediaSystemId];
  v6 = [v4 originatingDeviceRapportMediaSystemId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_155;
  }

  v102 = [(_INPBIntentMetadata *)self originatingDeviceRapportMediaSystemId];
  if (v102)
  {
    v103 = v102;
    v104 = [(_INPBIntentMetadata *)self originatingDeviceRapportMediaSystemId];
    v105 = [v4 originatingDeviceRapportMediaSystemId];
    v106 = [v104 isEqual:v105];

    if (!v106)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentMetadata *)self parameterImages];
  v6 = [v4 parameterImages];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_155;
  }

  v107 = [(_INPBIntentMetadata *)self parameterImages];
  if (v107)
  {
    v108 = v107;
    v109 = [(_INPBIntentMetadata *)self parameterImages];
    v110 = [v4 parameterImages];
    v111 = [v109 isEqual:v110];

    if (!v111)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentMetadata *)self preferredAudioOutputRouteId];
  v6 = [v4 preferredAudioOutputRouteId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_155;
  }

  v112 = [(_INPBIntentMetadata *)self preferredAudioOutputRouteId];
  if (v112)
  {
    v113 = v112;
    v114 = [(_INPBIntentMetadata *)self preferredAudioOutputRouteId];
    v115 = [v4 preferredAudioOutputRouteId];
    v116 = [v114 isEqual:v115];

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

  v117 = [(_INPBIntentMetadata *)self hasShowsWhenRun];
  if (v117 != [v4 hasShowsWhenRun])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasShowsWhenRun])
  {
    if ([v4 hasShowsWhenRun])
    {
      showsWhenRun = self->_showsWhenRun;
      if (showsWhenRun != [v4 showsWhenRun])
      {
        goto LABEL_156;
      }
    }
  }

  v5 = [(_INPBIntentMetadata *)self suggestedInvocationPhrase];
  v6 = [v4 suggestedInvocationPhrase];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_155;
  }

  v119 = [(_INPBIntentMetadata *)self suggestedInvocationPhrase];
  if (v119)
  {
    v120 = v119;
    v121 = [(_INPBIntentMetadata *)self suggestedInvocationPhrase];
    v122 = [v4 suggestedInvocationPhrase];
    v123 = [v121 isEqual:v122];

    if (!v123)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  v124 = [(_INPBIntentMetadata *)self hasTriggerMethod];
  if (v124 != [v4 hasTriggerMethod])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasTriggerMethod])
  {
    if ([v4 hasTriggerMethod])
    {
      triggerMethod = self->_triggerMethod;
      if (triggerMethod != [v4 triggerMethod])
      {
        goto LABEL_156;
      }
    }
  }

  v126 = [(_INPBIntentMetadata *)self hasUserConfirmationRequired];
  if (v126 != [v4 hasUserConfirmationRequired])
  {
    goto LABEL_156;
  }

  if ([(_INPBIntentMetadata *)self hasUserConfirmationRequired])
  {
    if ([v4 hasUserConfirmationRequired])
    {
      userConfirmationRequired = self->_userConfirmationRequired;
      if (userConfirmationRequired != [v4 userConfirmationRequired])
      {
        goto LABEL_156;
      }
    }
  }

  v5 = [(_INPBIntentMetadata *)self userUtterance];
  v6 = [v4 userUtterance];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_155:

    goto LABEL_156;
  }

  v128 = [(_INPBIntentMetadata *)self userUtterance];
  if (v128)
  {
    v129 = v128;
    v130 = [(_INPBIntentMetadata *)self userUtterance];
    v131 = [v4 userUtterance];
    v132 = [v130 isEqual:v131];

    if (!v132)
    {
      goto LABEL_156;
    }
  }

  else
  {
  }

  v135 = [(_INPBIntentMetadata *)self hasVersioningHash];
  if (v135 == [v4 hasVersioningHash])
  {
    if (!-[_INPBIntentMetadata hasVersioningHash](self, "hasVersioningHash") || ![v4 hasVersioningHash] || (versioningHash = self->_versioningHash, versioningHash == objc_msgSend(v4, "versioningHash")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBIntentMetadata allocWithZone:](_INPBIntentMetadata init];
  v6 = [(NSString *)self->_categoryVerb copyWithZone:a3];
  [(_INPBIntentMetadata *)v5 setCategoryVerb:v6];

  v7 = [(_INPBImageValue *)self->_defaultImageValue copyWithZone:a3];
  [(_INPBIntentMetadata *)v5 setDefaultImageValue:v7];

  if ([(_INPBIntentMetadata *)self hasExecutionContext])
  {
    [(_INPBIntentMetadata *)v5 setExecutionContext:[(_INPBIntentMetadata *)self executionContext]];
  }

  if ([(_INPBIntentMetadata *)self hasIntentCategory])
  {
    [(_INPBIntentMetadata *)v5 setIntentCategory:[(_INPBIntentMetadata *)self intentCategory]];
  }

  v8 = [(NSString *)self->_launchId copyWithZone:a3];
  [(_INPBIntentMetadata *)v5 setLaunchId:v8];

  v9 = [(NSString *)self->_nanoLaunchId copyWithZone:a3];
  [(_INPBIntentMetadata *)v5 setNanoLaunchId:v9];

  PBRepeatedInt32Copy();
  v10 = [(NSString *)self->_systemExtensionBundleId copyWithZone:a3];
  [(_INPBIntentMetadata *)v5 setSystemExtensionBundleId:v10];

  v11 = [(NSString *)self->_systemUIExtensionBundleId copyWithZone:a3];
  [(_INPBIntentMetadata *)v5 setSystemUIExtensionBundleId:v11];

  v12 = [(NSArray *)self->_airPlayRouteIds copyWithZone:a3];
  [(_INPBIntentMetadata *)v5 setAirPlayRouteIds:v12];

  v13 = [(NSData *)self->_auditTokenData copyWithZone:a3];
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

  v14 = [(NSString *)self->_endpointId copyWithZone:a3];
  [(_INPBIntentMetadata *)v5 setEndpointId:v14];

  if ([(_INPBIntentMetadata *)self hasEndpointMediaPlaybackEnabled])
  {
    [(_INPBIntentMetadata *)v5 setEndpointMediaPlaybackEnabled:[(_INPBIntentMetadata *)self endpointMediaPlaybackEnabled]];
  }

  v15 = [(NSArray *)self->_forceNeedsValueForParameters copyWithZone:a3];
  [(_INPBIntentMetadata *)v5 setForceNeedsValueForParameters:v15];

  if ([(_INPBIntentMetadata *)self hasIdiom])
  {
    [(_INPBIntentMetadata *)v5 setIdiom:[(_INPBIntentMetadata *)self idiom]];
  }

  v16 = [(NSString *)self->_intentDescription copyWithZone:a3];
  [(_INPBIntentMetadata *)v5 setIntentDescription:v16];

  v17 = [(NSString *)self->_intentId copyWithZone:a3];
  [(_INPBIntentMetadata *)v5 setIntentId:v17];

  if ([(_INPBIntentMetadata *)self hasIsOwnedByCurrentUser])
  {
    [(_INPBIntentMetadata *)v5 setIsOwnedByCurrentUser:[(_INPBIntentMetadata *)self isOwnedByCurrentUser]];
  }

  if ([(_INPBIntentMetadata *)self hasIsPrimaryDisplayDisabled])
  {
    [(_INPBIntentMetadata *)v5 setIsPrimaryDisplayDisabled:[(_INPBIntentMetadata *)self isPrimaryDisplayDisabled]];
  }

  v18 = [(NSString *)self->_mediaRouteId copyWithZone:a3];
  [(_INPBIntentMetadata *)v5 setMediaRouteId:v18];

  if ([(_INPBIntentMetadata *)self hasMsLimitReached])
  {
    [(_INPBIntentMetadata *)v5 setMsLimitReached:[(_INPBIntentMetadata *)self msLimitReached]];
  }

  v19 = [(NSString *)self->_originatingDeviceIdsIdentifier copyWithZone:a3];
  [(_INPBIntentMetadata *)v5 setOriginatingDeviceIdsIdentifier:v19];

  v20 = [(NSString *)self->_originatingDeviceRapportEffectiveId copyWithZone:a3];
  [(_INPBIntentMetadata *)v5 setOriginatingDeviceRapportEffectiveId:v20];

  v21 = [(NSString *)self->_originatingDeviceRapportMediaSystemId copyWithZone:a3];
  [(_INPBIntentMetadata *)v5 setOriginatingDeviceRapportMediaSystemId:v21];

  v22 = [(NSArray *)self->_parameterImages copyWithZone:a3];
  [(_INPBIntentMetadata *)v5 setParameterImages:v22];

  v23 = [(NSString *)self->_preferredAudioOutputRouteId copyWithZone:a3];
  [(_INPBIntentMetadata *)v5 setPreferredAudioOutputRouteId:v23];

  PBRepeatedInt32Copy();
  if ([(_INPBIntentMetadata *)self hasShowsWhenRun])
  {
    [(_INPBIntentMetadata *)v5 setShowsWhenRun:[(_INPBIntentMetadata *)self showsWhenRun]];
  }

  v24 = [(NSString *)self->_suggestedInvocationPhrase copyWithZone:a3];
  [(_INPBIntentMetadata *)v5 setSuggestedInvocationPhrase:v24];

  if ([(_INPBIntentMetadata *)self hasTriggerMethod])
  {
    [(_INPBIntentMetadata *)v5 setTriggerMethod:[(_INPBIntentMetadata *)self triggerMethod]];
  }

  if ([(_INPBIntentMetadata *)self hasUserConfirmationRequired])
  {
    [(_INPBIntentMetadata *)v5 setUserConfirmationRequired:[(_INPBIntentMetadata *)self userConfirmationRequired]];
  }

  v25 = [(_INPBString *)self->_userUtterance copyWithZone:a3];
  [(_INPBIntentMetadata *)v5 setUserUtterance:v25];

  if ([(_INPBIntentMetadata *)self hasVersioningHash])
  {
    [(_INPBIntentMetadata *)v5 setVersioningHash:[(_INPBIntentMetadata *)self versioningHash]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBIntentMetadata *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBIntentMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBIntentMetadata *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v91 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBIntentMetadata *)self categoryVerb];

  if (v5)
  {
    categoryVerb = self->_categoryVerb;
    PBDataWriterWriteStringField();
  }

  v7 = [(_INPBIntentMetadata *)self defaultImageValue];

  if (v7)
  {
    v8 = [(_INPBIntentMetadata *)self defaultImageValue];
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

  v11 = [(_INPBIntentMetadata *)self launchId];

  if (v11)
  {
    launchId = self->_launchId;
    PBDataWriterWriteStringField();
  }

  v13 = [(_INPBIntentMetadata *)self nanoLaunchId];

  if (v13)
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

  v17 = [(_INPBIntentMetadata *)self systemExtensionBundleId];

  if (v17)
  {
    systemExtensionBundleId = self->_systemExtensionBundleId;
    PBDataWriterWriteStringField();
  }

  v19 = [(_INPBIntentMetadata *)self systemUIExtensionBundleId];

  if (v19)
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

  v27 = [(_INPBIntentMetadata *)self auditTokenData];

  if (v27)
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

  v32 = [(_INPBIntentMetadata *)self endpointId];

  if (v32)
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

  v42 = [(_INPBIntentMetadata *)self intentDescription];

  if (v42)
  {
    intentDescription = self->_intentDescription;
    PBDataWriterWriteStringField();
  }

  v44 = [(_INPBIntentMetadata *)self intentId];

  if (v44)
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

  v48 = [(_INPBIntentMetadata *)self mediaRouteId];

  if (v48)
  {
    mediaRouteId = self->_mediaRouteId;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBIntentMetadata *)self hasMsLimitReached])
  {
    msLimitReached = self->_msLimitReached;
    PBDataWriterWriteBOOLField();
  }

  v51 = [(_INPBIntentMetadata *)self originatingDeviceIdsIdentifier];

  if (v51)
  {
    originatingDeviceIdsIdentifier = self->_originatingDeviceIdsIdentifier;
    PBDataWriterWriteStringField();
  }

  v53 = [(_INPBIntentMetadata *)self originatingDeviceRapportEffectiveId];

  if (v53)
  {
    originatingDeviceRapportEffectiveId = self->_originatingDeviceRapportEffectiveId;
    PBDataWriterWriteStringField();
  }

  v55 = [(_INPBIntentMetadata *)self originatingDeviceRapportMediaSystemId];

  if (v55)
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

  v63 = [(_INPBIntentMetadata *)self preferredAudioOutputRouteId];

  if (v63)
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

  v68 = [(_INPBIntentMetadata *)self suggestedInvocationPhrase];

  if (v68)
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

  v72 = [(_INPBIntentMetadata *)self userUtterance];

  if (v72)
  {
    v73 = [(_INPBIntentMetadata *)self userUtterance];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBIntentMetadata *)self hasVersioningHash])
  {
    versioningHash = self->_versioningHash;
    PBDataWriterWriteUint64Field();
  }

  v75 = *MEMORY[0x1E69E9840];
}

- (void)setHasVersioningHash:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasUserConfirmationRequired:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (int)StringAsTriggerMethod:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Other"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"HomeButton"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"RemoteButton"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"VoiceTrigger"])
  {
    v4 = 30;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTriggerMethod:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setTriggerMethod:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7FF;
  }

  else
  {
    *&self->_has = has | 0x800;
    self->_triggerMethod = a3;
  }
}

- (void)setSuggestedInvocationPhrase:(id)a3
{
  v4 = [a3 copy];
  suggestedInvocationPhrase = self->_suggestedInvocationPhrase;
  self->_suggestedInvocationPhrase = v4;

  MEMORY[0x1EEE66BB8](v4, suggestedInvocationPhrase);
}

- (void)setHasShowsWhenRun:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (int)StringAsShortcutAvailabilities:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SLEEP_MINDFULNESS"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SLEEP_JOURNALING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SLEEP_MUSIC"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SLEEP_PODCASTS"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SLEEP_READING"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SLEEP_WRAP_UP_YOUR_DAY"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SLEEP_YOGA_AND_STRETCHING"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addShortcutAvailability:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)setPreferredAudioOutputRouteId:(id)a3
{
  v4 = [a3 copy];
  preferredAudioOutputRouteId = self->_preferredAudioOutputRouteId;
  self->_preferredAudioOutputRouteId = v4;

  MEMORY[0x1EEE66BB8](v4, preferredAudioOutputRouteId);
}

- (void)addParameterImages:(id)a3
{
  v4 = a3;
  parameterImages = self->_parameterImages;
  v8 = v4;
  if (!parameterImages)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_parameterImages;
    self->_parameterImages = v6;

    v4 = v8;
    parameterImages = self->_parameterImages;
  }

  [(NSArray *)parameterImages addObject:v4];
}

- (void)setParameterImages:(id)a3
{
  v4 = [a3 mutableCopy];
  parameterImages = self->_parameterImages;
  self->_parameterImages = v4;

  MEMORY[0x1EEE66BB8](v4, parameterImages);
}

- (void)setOriginatingDeviceRapportMediaSystemId:(id)a3
{
  v4 = [a3 copy];
  originatingDeviceRapportMediaSystemId = self->_originatingDeviceRapportMediaSystemId;
  self->_originatingDeviceRapportMediaSystemId = v4;

  MEMORY[0x1EEE66BB8](v4, originatingDeviceRapportMediaSystemId);
}

- (void)setOriginatingDeviceRapportEffectiveId:(id)a3
{
  v4 = [a3 copy];
  originatingDeviceRapportEffectiveId = self->_originatingDeviceRapportEffectiveId;
  self->_originatingDeviceRapportEffectiveId = v4;

  MEMORY[0x1EEE66BB8](v4, originatingDeviceRapportEffectiveId);
}

- (void)setOriginatingDeviceIdsIdentifier:(id)a3
{
  v4 = [a3 copy];
  originatingDeviceIdsIdentifier = self->_originatingDeviceIdsIdentifier;
  self->_originatingDeviceIdsIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, originatingDeviceIdsIdentifier);
}

- (void)setHasMsLimitReached:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setMediaRouteId:(id)a3
{
  v4 = [a3 copy];
  mediaRouteId = self->_mediaRouteId;
  self->_mediaRouteId = v4;

  MEMORY[0x1EEE66BB8](v4, mediaRouteId);
}

- (void)setHasIsPrimaryDisplayDisabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasIsOwnedByCurrentUser:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setIntentId:(id)a3
{
  v4 = [a3 copy];
  intentId = self->_intentId;
  self->_intentId = v4;

  MEMORY[0x1EEE66BB8](v4, intentId);
}

- (void)setIntentDescription:(id)a3
{
  v4 = [a3 copy];
  intentDescription = self->_intentDescription;
  self->_intentDescription = v4;

  MEMORY[0x1EEE66BB8](v4, intentDescription);
}

- (int)StringAsIdiom:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PHONE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PAD"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WATCH"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HOME_POD"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CARPLAY"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"APPLE_TV"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"MAC"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasIdiom:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setIdiom:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFBF;
  }

  else
  {
    *&self->_has = has | 0x40;
    self->_idiom = a3;
  }
}

- (void)addForceNeedsValueForParameter:(id)a3
{
  v4 = a3;
  forceNeedsValueForParameters = self->_forceNeedsValueForParameters;
  v8 = v4;
  if (!forceNeedsValueForParameters)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_forceNeedsValueForParameters;
    self->_forceNeedsValueForParameters = v6;

    v4 = v8;
    forceNeedsValueForParameters = self->_forceNeedsValueForParameters;
  }

  [(NSArray *)forceNeedsValueForParameters addObject:v4];
}

- (void)setForceNeedsValueForParameters:(id)a3
{
  v4 = [a3 mutableCopy];
  forceNeedsValueForParameters = self->_forceNeedsValueForParameters;
  self->_forceNeedsValueForParameters = v4;

  MEMORY[0x1EEE66BB8](v4, forceNeedsValueForParameters);
}

- (void)setHasEndpointMediaPlaybackEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setEndpointId:(id)a3
{
  v4 = [a3 copy];
  endpointId = self->_endpointId;
  self->_endpointId = v4;

  MEMORY[0x1EEE66BB8](v4, endpointId);
}

- (void)setHasConfirmed:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasBypassAppProtectionAuthentication:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasBackgroundLaunch:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setAuditTokenData:(id)a3
{
  v4 = [a3 copy];
  auditTokenData = self->_auditTokenData;
  self->_auditTokenData = v4;

  MEMORY[0x1EEE66BB8](v4, auditTokenData);
}

- (void)addAirPlayRouteIds:(id)a3
{
  v4 = a3;
  airPlayRouteIds = self->_airPlayRouteIds;
  v8 = v4;
  if (!airPlayRouteIds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_airPlayRouteIds;
    self->_airPlayRouteIds = v6;

    v4 = v8;
    airPlayRouteIds = self->_airPlayRouteIds;
  }

  [(NSArray *)airPlayRouteIds addObject:v4];
}

- (void)setAirPlayRouteIds:(id)a3
{
  v4 = [a3 mutableCopy];
  airPlayRouteIds = self->_airPlayRouteIds;
  self->_airPlayRouteIds = v4;

  MEMORY[0x1EEE66BB8](v4, airPlayRouteIds);
}

- (void)setSystemUIExtensionBundleId:(id)a3
{
  v4 = [a3 copy];
  systemUIExtensionBundleId = self->_systemUIExtensionBundleId;
  self->_systemUIExtensionBundleId = v4;

  MEMORY[0x1EEE66BB8](v4, systemUIExtensionBundleId);
}

- (void)setSystemExtensionBundleId:(id)a3
{
  v4 = [a3 copy];
  systemExtensionBundleId = self->_systemExtensionBundleId;
  self->_systemExtensionBundleId = v4;

  MEMORY[0x1EEE66BB8](v4, systemExtensionBundleId);
}

- (int)StringAsRequiredEntitlements:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"CONTACTS"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"LOCATION"])
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

- (void)addRequiredEntitlement:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)setNanoLaunchId:(id)a3
{
  v4 = [a3 copy];
  nanoLaunchId = self->_nanoLaunchId;
  self->_nanoLaunchId = v4;

  MEMORY[0x1EEE66BB8](v4, nanoLaunchId);
}

- (void)setLaunchId:(id)a3
{
  v4 = [a3 copy];
  launchId = self->_launchId;
  self->_launchId = v4;

  MEMORY[0x1EEE66BB8](v4, launchId);
}

- (int)StringAsIntentCategory:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CATEGORY_INFORMATION"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CATEGORY_PLAY_AUDIO"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CATEGORY_PLAY_VIDEO"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CATEGORY_ORDER"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CATEGORY_NAVIGATION"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"CATEGORY_START"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CATEGORY_SHARE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"CATEGORY_CREATE"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"CATEGORY_SEARCH"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"CATEGORY_TOGGLE"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"CATEGORY_DOWNLOAD"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"CATEGORY_LOG"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"CATEGORY_CHECK_IN"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"CATEGORY_WORKFLOW"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"CATEGORY_REQUEST"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"CATEGORY_SET"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"CATEGORY_CALL_AUDIO"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"CATEGORY_CALL_VIDEO"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"CATEGORY_PLAY_SOUND"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"CATEGORY_USER_ACTIVITY"])
  {
    v4 = 21;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasIntentCategory:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setIntentCategory:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_intentCategory = a3;
  }
}

- (int)StringAsExecutionContext:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ASSISTANT_DIALOG"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ASSISTANT_VOICE_SHORTCUT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"COVER_SHEET_PREDICTION"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SPOTLIGHT_PREDICTION"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SPOTLIGHT_SEARCH"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"MAPS"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"WORKFLOW"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"WATCH_FACE"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"ASSISTANT_VOICE_SHORTCUT_VIA_CLOUD_RELAY"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"CARPLAY_HOME_SCREEN"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setExecutionContext:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFFFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_executionContext = a3;
  }
}

- (void)setCategoryVerb:(id)a3
{
  v4 = [a3 copy];
  categoryVerb = self->_categoryVerb;
  self->_categoryVerb = v4;

  MEMORY[0x1EEE66BB8](v4, categoryVerb);
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v76 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [(_INPBIntentMetadata *)self categoryVerb];
  [v6 if_setObjectIfNonNil:v7 forKey:@"categoryVerb"];

  v8 = [(_INPBIntentMetadata *)self launchId];
  [v6 if_setObjectIfNonNil:v8 forKey:@"launchId"];

  v9 = [(_INPBIntentMetadata *)self nanoLaunchId];
  [v6 if_setObjectIfNonNil:v9 forKey:@"nanoLaunchId"];

  v10 = [(_INPBIntentMetadata *)self systemExtensionBundleId];
  [v6 if_setObjectIfNonNil:v10 forKey:@"systemExtensionBundleId"];

  v11 = [(_INPBIntentMetadata *)self systemUIExtensionBundleId];
  [v6 if_setObjectIfNonNil:v11 forKey:@"systemUIExtensionBundleId"];

  v12 = [(_INPBIntentMetadata *)self intentDescription];
  [v6 if_setObjectIfNonNil:v12 forKey:@"intentDescription"];

  v13 = [(_INPBIntentMetadata *)self intentId];
  [v6 if_setObjectIfNonNil:v13 forKey:@"intentId"];

  v14 = [(_INPBIntentMetadata *)self originatingDeviceIdsIdentifier];
  [v6 if_setObjectIfNonNil:v14 forKey:@"originatingDeviceIdsIdentifier"];

  v15 = [(_INPBIntentMetadata *)self suggestedInvocationPhrase];
  [v6 if_setObjectIfNonNil:v15 forKey:@"suggestedInvocationPhrase"];

  v16 = [(_INPBIntentMetadata *)self auditTokenData];
  v17 = [v5 encodeObject:v16];
  [v6 if_setObjectIfNonNil:v17 forKey:@"auditTokenData"];

  v18 = [(_INPBIntentMetadata *)self endpointId];
  [v6 if_setObjectIfNonNil:v18 forKey:@"endpointId"];

  v19 = [(_INPBIntentMetadata *)self mediaRouteId];
  [v6 if_setObjectIfNonNil:v19 forKey:@"mediaRouteId"];

  v20 = [(_INPBIntentMetadata *)self preferredAudioOutputRouteId];
  [v6 if_setObjectIfNonNil:v20 forKey:@"preferredAudioOutputRouteId"];

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
    v22 = [(_INPBIntentMetadata *)self executionContext];
    if ((v22 - 1) >= 0xA)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v22];
    }

    else
    {
      v23 = off_1E7281B78[(v22 - 1)];
    }

    [v6 if_setObjectIfNonNil:v23 forKey:@"executionContext"];
  }

  else
  {
    [v6 if_setObjectIfNonNil:0 forKey:@"executionContext"];
  }

  if ([(_INPBIntentMetadata *)self hasIntentCategory])
  {
    v24 = [(_INPBIntentMetadata *)self intentCategory];
    v25 = v24 - 1;
    if (v24 - 1) < 0x15 && ((0x1FFDFFu >> v25))
    {
      v26 = off_1E7281BC8[v25];
    }

    else
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v24];
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

  v27 = [(_INPBIntentMetadata *)self triggerMethod];
  if (v27 > 19)
  {
    if (v27 == 20)
    {
      v28 = @"RemoteButton";
      goto LABEL_28;
    }

    if (v27 == 30)
    {
      v28 = @"VoiceTrigger";
      goto LABEL_28;
    }

LABEL_25:
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v27];
    goto LABEL_28;
  }

  if (!v27)
  {
    v28 = @"Other";
    goto LABEL_28;
  }

  if (v27 != 10)
  {
    goto LABEL_25;
  }

  v28 = @"HomeButton";
LABEL_28:
  [v6 if_setObjectIfNonNil:v28 forKey:@"triggerMethod"];

LABEL_29:
  v29 = [(_INPBIntentMetadata *)self defaultImageValue];
  v30 = INIntentSlotValueTransformFromImageValue(v29);
  v31 = v5;
  v32 = [v5 encodeObject:v30];
  v64 = v6;
  [v6 if_setObjectIfNonNil:v32 forKey:@"defaultImageValue"];

  v33 = MEMORY[0x1E695DF90];
  v34 = [(_INPBIntentMetadata *)self parameterImages];
  v65 = [v33 dictionaryWithCapacity:{objc_msgSend(v34, "count")}];

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v63 = self;
  v35 = [(_INPBIntentMetadata *)self parameterImages];
  v36 = [v35 countByEnumeratingWithState:&v70 objects:v75 count:16];
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
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v70 + 1) + 8 * i);
        v41 = [v40 pairImageValues];
        v42 = [v41 firstObject];
        v43 = INIntentSlotValueTransformFromImageValue(v42);
        v44 = [v31 encodeObject:v43];
        v45 = [v40 key];
        [v65 if_setObjectIfNonNil:v44 forKey:v45];
      }

      v37 = [v35 countByEnumeratingWithState:&v70 objects:v75 count:16];
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
  v47 = [(_INPBIntentMetadata *)v63 forceNeedsValueForParameters];
  v48 = [v47 countByEnumeratingWithState:&v66 objects:v74 count:16];
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
          objc_enumerationMutation(v47);
        }

        v52 = [v31 encodeObject:*(*(&v66 + 1) + 8 * j)];
        [v46 if_addObjectIfNonNil:v52];
      }

      v49 = [v47 countByEnumeratingWithState:&v66 objects:v74 count:16];
    }

    while (v49);
  }

  if ([v46 count])
  {
    [v64 if_setObjectIfNonNil:v46 forKey:@"forceNeedsValueForParameters"];
  }

  v53 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBIntentMetadata requiredEntitlementsCount](v63, "requiredEntitlementsCount")}];
  if ([(_INPBIntentMetadata *)v63 requiredEntitlementsCount])
  {
    v54 = 0;
    do
    {
      v55 = [(_INPBIntentMetadata *)v63 requiredEntitlementAtIndex:v54];
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

    while (v54 < [(_INPBIntentMetadata *)v63 requiredEntitlementsCount]);
  }

  if ([v53 count])
  {
    [v64 if_setObjectIfNonNil:v53 forKey:@"requiredEntitlements"];
  }

  v57 = [(_INPBIntentMetadata *)v63 userUtterance];
  v58 = INIntentSlotValueTransformFromString(v57);
  [v64 if_setObjectIfNonNil:v58 forKey:@"userUtterance"];

  if ([(_INPBIntentMetadata *)v63 hasVersioningHash])
  {
    v59 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_INPBIntentMetadata versioningHash](v63, "versioningHash")}];
    [v64 if_setObjectIfNonNil:v59 forKey:@"versioningHash"];
  }

  v60 = [v64 copy];

  v61 = *MEMORY[0x1E69E9840];

  return v60;
}

- (void)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v158 = *MEMORY[0x1E69E9840];
  v141 = a3;
  v7 = a4;
  v8 = a5;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v138 = v7;
    v9 = v8;

    v10 = [v9 objectForKeyedSubscript:@"categoryVerb"];
    v136 = v8;
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

    v41 = [v141 decodeObjectOfClass:v37 from:v40];
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
    v84 = [v141 decodeObjectOfClass:v82 from:v83];
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
    v89 = [v88 allKeys];
    v90 = [v89 countByEnumeratingWithState:&v151 objects:v157 count:16];
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
            objc_enumerationMutation(v89);
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
            v100 = [v141 decodeObjectOfClass:v98 from:v99];
            v101 = INIntentSlotValueTransformToImageValue(v100);
            [(_INPBPair *)v97 addPairImageValue:v101];

            [(_INPBIntentMetadata *)self addParameterImages:v97];
          }
        }

        v91 = [v89 countByEnumeratingWithState:&v151 objects:v157 count:16];
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

    v8 = v137;
    v7 = v138;
  }

  else
  {
  }

  v135 = *MEMORY[0x1E69E9840];
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(_INPBIntentMetadata);
  [(_INPBIntentMetadata *)v10 _intents_decodeWithJSONDecoder:v9 codableDescription:v8 from:v7];

  return v10;
}

@end