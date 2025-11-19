@interface ATXAction
+ (BOOL)_isTVIntent:(id)a3 bundleId:(id)a4;
+ (id)_extractValueInKeyValueBlob:(id)a3 withKey:(id)a4;
+ (id)actionFromProactiveSuggestion:(id)a3;
+ (id)atx_doNotDisturbForCurrentLocationActionWithTitle:(id)a3 subtitle:(id)a4 heuristicName:(id)a5;
+ (id)atx_doNotDisturbForEventActionWithTitle:(id)a3 subtitle:(id)a4 eventTitle:(id)a5 eventIdentifier:(id)a6 eventUniqueID:(id)a7 heuristicName:(id)a8;
+ (id)atx_sendMessageActionWithTitle:(id)a3 subtitle:(id)a4 recipientName:(id)a5 recipientHandle:(id)a6 text:(id)a7 contactIdentifier:(id)a8 conversationIdentifier:(id)a9 eventIdentifier:(id)a10 heuristicName:(id)a11;
+ (id)atx_setAirplaneModeActionWithTitle:(id)a3 subtitle:(id)a4;
+ (id)atx_setAlarmActionWithTitle:(id)a3 subtitle:(id)a4 eventIdentifier:(id)a5 eventTitle:(id)a6 alarmDate:(id)a7 heuristicName:(id)a8;
+ (id)atx_showCheckInActionWithTeamId:(id)a3 userActivityString:(id)a4 subtitle:(id)a5 overrideBundleId:(id)a6 suggestedEventUniqueKey:(id)a7 heuristicName:(id)a8 criteria:(id)a9;
+ (id)atx_startAudioCallActionWithTitle:(id)a3 subtitle:(id)a4 recipientName:(id)a5 recipientHandle:(id)a6 callService:(id)a7 contactIdentifier:(id)a8 eventIdentifier:(id)a9 heuristicName:(id)a10;
+ (id)atx_startCallActionWithTitle:(id)a3 subtitle:(id)a4 recipientName:(id)a5 recipientHandle:(id)a6 callService:(id)a7 contactIdentifier:(id)a8 eventIdentifier:(id)a9 heuristicName:(id)a10 mediaType:(id)a11;
+ (id)atx_startVideoCallActionWithTitle:(id)a3 subtitle:(id)a4 recipientName:(id)a5 recipientHandle:(id)a6 callService:(id)a7 contactIdentifier:(id)a8 eventIdentifier:(id)a9 heuristicName:(id)a10;
+ (id)atx_updateAlarmActionWithTitle:(id)a3 subtitle:(id)a4 alarmID:(id)a5 alarmTitle:(id)a6 heuristicName:(id)a7;
+ (id)atx_userActivityActionWithBestAppSuggestion:(id)a3 title:(id)a4 subtitle:(id)a5 bundleID:(id)a6 activityType:(id)a7 heuristicName:(id)a8;
+ (id)atx_userActivityActionWithTitle:(id)a3 subtitle:(id)a4 bundleID:(id)a5 activityType:(id)a6 urlString:(id)a7 userInfo:(id)a8 heuristicName:(id)a9;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)getActionKeyForBundleId:(id)a3 actionType:(id)a4;
+ (id)getDateFromUserActivityString:(id)a3 forActionKey:(id)a4;
+ (id)unarchivedActionFromData:(id)a3;
+ (id)webUrlParsedForUserActivityWithUrlString:(id)a3;
+ (unint64_t)_userActivityHashForUserInfoDict:(id)a3 activityType:(id)a4 webpageURL:(id)a5;
- (ATXAction)actionWithRouteInfo:(id)a3;
- (ATXAction)initWithActivityProxy:(id)a3 activity:(id)a4 activityString:(id)a5 itemIdentifier:(id)a6 contentAttributeSet:(id)a7 intent:(id)a8 menuItemPath:(id)a9 actionUUID:(id)a10 bundleId:(id)a11 type:(unint64_t)a12 heuristic:(id)a13 heuristicMetadata:(id)a14 criteria:(id)a15 isFutureMedia:(BOOL)a16 routeInfo:(id)a17 title:(id)a18 subtitle:(id)a19 languageCode:(id)a20 cachedHash:(id)a21 toolInvocationID:(id)a22 encodedToolInvocation:(id)a23 parameterKeysForToolInvocation:(id)a24;
- (ATXAction)initWithCoder:(id)a3;
- (ATXAction)initWithIntent:(id)a3 actionUUID:(id)a4 bundleId:(id)a5 heuristic:(id)a6 heuristicMetadata:(id)a7 criteria:(id)a8 isFutureMedia:(BOOL)a9 title:(id)a10 subtitle:(id)a11;
- (ATXAction)initWithNSUserActivity:(id)a3 actionUUID:(id)a4 bundleId:(id)a5 contentAttributeSet:(id)a6 itemIdentifier:(id)a7 heuristic:(id)a8 heuristicMetadata:(id)a9 criteria:(id)a10 isFutureMedia:(BOOL)a11 title:(id)a12 subtitle:(id)a13;
- (ATXAction)initWithProto:(id)a3;
- (ATXAction)initWithProtoData:(id)a3;
- (ATXActionCriteria)criteria;
- (BOOL)_shouldUseCachedTitle:(id)a3 cachedLanguageCode:(id)a4;
- (BOOL)hasActionTitle;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAction:(id)a3;
- (BOOL)isTVAction;
- (BOOL)isTVWhiteListedLongFormMedia;
- (NSString)description;
- (NSUserActivity)userActivity;
- (id)_bundleIdForDisplay;
- (id)_initWithCoder:(id)a3;
- (id)_spotlightContentType;
- (id)actionDescription;
- (id)actionKey;
- (id)actionSubtitle;
- (id)actionTitle;
- (id)archivedDataForAction;
- (id)canonicalIdentifier;
- (id)copyWithParameterAllowList:(id)a3 metadataProvider:(id)a4;
- (id)dateForAction;
- (id)encodeAsProto;
- (id)initFromBestAppSuggestion:(id)a3 activity:(id)a4 actionUUID:(id)a5 bundleId:(id)a6 contentAttributeSet:(id)a7 itemIdentifier:(id)a8 heuristic:(id)a9 heuristicMetadata:(id)a10 criteria:(id)a11 isFutureMedia:(BOOL)a12 title:(id)a13 subtitle:(id)a14;
- (id)json;
- (id)obfuscatedJsonWithMapping:(id)a3;
- (id)predictionTypeStringForPET;
- (id)proto;
- (id)slotSet;
- (id)underlyingInteraction;
- (id)userActivityWebpageURL;
- (unint64_t)_hash;
- (unint64_t)hash;
- (unint64_t)hashSlotSetWithNonNilParameters:(id)a3;
- (unint64_t)paramHash;
- (unint64_t)userActivityHash;
- (void)_spotlightContentType;
- (void)actionKey;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)invalidateCachedHash;
- (void)proto;
- (void)setHeuristic:(id)a3;
- (void)setLaunchIdForIntent:(id)a3;
- (void)setSubtitleForSerializationToCache;
- (void)setTitle:(id)a3;
- (void)setTitleForSerializationToCache;
@end

@implementation ATXAction

- (unint64_t)hash
{
  v2 = self;
  objc_sync_enter(v2);
  cachedHash = v2->_cachedHash;
  if (cachedHash)
  {
    v4 = [(NSNumber *)cachedHash unsignedIntegerValue];
  }

  else
  {
    v4 = [(ATXAction *)v2 _hash];
    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:v4];
    v6 = v2->_cachedHash;
    v2->_cachedHash = v5;
  }

  objc_sync_exit(v2);

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E698B000] sharedInstance];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = ATXAction;
  [(ATXAction *)&v4 dealloc];
}

- (void)setSubtitleForSerializationToCache
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    languageCode = self->_languageCode;
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = languageCode;
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "%@ - Setting subtitle for serialization for language code: %@.", &v9, 0x16u);
  }

  v7 = [(ATXAction *)self actionSubtitle];
  subtitle = self->_subtitle;
  self->_subtitle = v7;

  [(ATXAction *)self invalidateCachedHash];
}

- (void)invalidateCachedHash
{
  obj = self;
  objc_sync_enter(obj);
  cachedHash = obj->_cachedHash;
  obj->_cachedHash = 0;

  objc_sync_exit(obj);
}

- (id)encodeAsProto
{
  v2 = [(ATXAction *)self proto];
  v3 = [v2 data];

  return v3;
}

- (id)proto
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(ATXAction *)self bundleId];
  [v3 setBundleId:v4];

  [v3 setActionType:{-[ATXAction actionType](self, "actionType")}];
  v5 = [(ATXAction *)self heuristic];
  [v3 setHeuristic:v5];

  [v3 setIsFutureMedia:{-[ATXAction isFutureMedia](self, "isFutureMedia")}];
  v6 = [(ATXAction *)self _title];
  [v3 setTitle:v6];

  v7 = [(ATXAction *)self _subtitle];
  [v3 setSubtitle:v7];

  [v3 setUserActivityHash:{-[ATXAction userActivityHash](self, "userActivityHash")}];
  v8 = [(ATXAction *)self userActivityString];
  [v3 setActivityString:v8];

  v9 = [(ATXAction *)self itemIdentifier];
  [v3 setItemIdentifier:v9];

  v10 = [(ATXAction *)self actionUUID];
  v11 = [v10 UUIDString];
  [v3 setUuid:v11];

  [v3 setLanguageCode:self->_languageCode];
  v12 = [(ATXAVRouteInfo *)self->_routeInfo proto];
  [v3 setRouteInfo:v12];

  v13 = [(ATXActionCriteria *)self->_criteria proto];
  [v3 setCriteria:v13];

  [v3 setCachedHash:{-[ATXAction hash](self, "hash")}];
  if (self->_contentAttributeSet)
  {
    v14 = objc_autoreleasePoolPush();
    contentAttributeSet = self->_contentAttributeSet;
    v54 = 0;
    v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:contentAttributeSet requiringSecureCoding:1 error:&v54];
    v17 = v54;
    [v3 setContentAttributeSet:v16];

    objc_autoreleasePoolPop(v14);
    if (v17)
    {
      v18 = __atxlog_handle_default();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [ATXAction proto];
      }
    }
  }

  if (self->_heuristicMetadata)
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSDictionary count](self->_heuristicMetadata, "count")}];
    heuristicMetadata = self->_heuristicMetadata;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __18__ATXAction_proto__block_invoke;
    v52[3] = &unk_1E80C1B60;
    v53 = v19;
    v21 = v19;
    [(NSDictionary *)heuristicMetadata enumerateKeysAndObjectsUsingBlock:v52];
    [v3 setHeuristicMetadatas:v21];
  }

  v22 = [(ATXLazyIntent *)self->_lazyIntent intentData];

  if (v22)
  {
    v23 = [(ATXLazyIntent *)self->_lazyIntent intentData];
    [v3 setIntent:v23];
LABEL_11:

    goto LABEL_12;
  }

  v40 = [(ATXAction *)self intent];

  if (v40)
  {
    v41 = objc_autoreleasePoolPush();
    v42 = MEMORY[0x1E696ACC8];
    v43 = [(ATXAction *)self intent];
    v51 = 0;
    v44 = [v42 archivedDataWithRootObject:v43 requiringSecureCoding:1 error:&v51];
    v23 = v51;
    [v3 setIntent:v44];

    objc_autoreleasePoolPop(v41);
    if (v23)
    {
      v45 = __atxlog_handle_default();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        [ATXAction proto];
      }
    }

    goto LABEL_11;
  }

LABEL_12:
  v24 = [(ATXAction *)self userActivityProxy];

  if (v24)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = MEMORY[0x1E696ACC8];
    v27 = [(ATXAction *)self userActivityProxy];
    v50 = 0;
    v28 = [v26 archivedDataWithRootObject:v27 requiringSecureCoding:1 error:&v50];
    v29 = v50;
    [v3 setUserActivityProxy:v28];

    objc_autoreleasePoolPop(v25);
    if (v29)
    {
      v30 = __atxlog_handle_default();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        [ATXAction proto];
      }
    }
  }

  if ([(NSArray *)self->_predictableParameterCombinations count])
  {
    v31 = [(NSArray *)self->_predictableParameterCombinations _pas_mappedArrayWithTransform:&__block_literal_global_128];
    v32 = [v31 mutableCopy];
    [v3 setPredictableParameterCombinations:v32];
  }

  if ([(NSArray *)self->_menuItemPath count])
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v33 = self->_menuItemPath;
    v34 = [(NSArray *)v33 countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v47;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v47 != v36)
          {
            objc_enumerationMutation(v33);
          }

          [v3 addMenuItemPathComponent:{*(*(&v46 + 1) + 8 * i), v46}];
        }

        v35 = [(NSArray *)v33 countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v35);
    }
  }

  if (self->_toolInvocationID)
  {
    [v3 setToolInvocationID:?];
    [v3 setEncodedToolInvocation:self->_encodedToolInvocation];
    v38 = [(NSArray *)self->_parameterKeysForToolInvocation mutableCopy];
    [v3 setParameterKeysForToolInvocations:v38];
  }

  return v3;
}

- (unint64_t)userActivityHash
{
  v2 = self;
  objc_sync_enter(v2);
  if ((v2->_actionType | 4) == 5 && !v2->_userActivityHash)
  {
    v3 = [(ATXAction *)v2 userActivity];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 userInfo];
      v6 = [v4 activityType];
      v7 = [v4 webpageURL];
      v2->_userActivityHash = [ATXAction _userActivityHashForUserInfoDict:v5 activityType:v6 webpageURL:v7];
    }

    else
    {
      v2->_userActivityHash = -1;
    }
  }

  userActivityHash = v2->_userActivityHash;
  objc_sync_exit(v2);

  return userActivityHash;
}

- (unint64_t)_hash
{
  v2 = self;
  v67 = *MEMORY[0x1E69E9840];
  v3 = [(ATXAction *)self userActivityHash];
  v4 = v2->_actionType - v3 + 32 * v3;
  v5 = [(NSString *)v2->_bundleId hash]- v4 + 32 * v4;
  v6 = [(NSString *)v2->_heuristic hash];
  v7 = v2->_isFutureMedia - (v6 - v5 + 32 * v5) + 32 * (v6 - v5 + 32 * v5);
  if ([(ATXAction *)v2 isHeuristic])
  {
    v8 = [(NSString *)v2->_title hash]- v7 + 32 * v7;
    v7 = [(NSString *)v2->_subtitle hash]- v8 + 32 * v8;
  }

  v9 = [(ATXAction *)v2 intent];
  v10 = v9;
  actionType = v2->_actionType;
  if (!actionType)
  {
    if (!v9)
    {
      goto LABEL_53;
    }

    goto LABEL_8;
  }

  if (actionType == 2 && v9)
  {
LABEL_8:
    v12 = [v9 atx_nonNilParameters];
    v48 = v2;
    v7 = [(ATXAction *)v2 hashSlotSetWithNonNilParameters:v12]- v7 + 32 * v7;
    v47 = v10;
    v13 = [v10 atx_nonNilParametersByName];
    v14 = [v12 allObjects];
    v15 = [v14 sortedArrayUsingSelector:sel_compare_];

    v50 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v16 = v12;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v15;
    v17 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v61;
      v20 = v50;
      v49 = v13;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v61 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v60 + 1) + 8 * i);
          if (!v16 || [v16 containsObject:*(*(&v60 + 1) + 8 * i)])
          {
            v23 = [v22 hash];
            v24 = [v13 objectForKeyedSubscript:v22];
            v25 = v24;
            if (v24)
            {
              v26 = v24;
            }

            else
            {
              v26 = [MEMORY[0x1E695DFB0] null];
            }

            v27 = v26;
            v7 = v23 - v7 + 32 * v7;

            [v20 addObject:v27];
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v28 = [v27 atx_locationHashWithLevel:17];
                v7 = 31 * (31 * v7 + HIDWORD(v28)) + v28;
              }

              else
              {
                v29 = [v27 location];
                v30 = [v29 atx_locationHashWithLevel:17];
                v7 = 31 * (31 * v7 + HIDWORD(v30)) + v30;
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v58 = 0u;
                v59 = 0u;
                v56 = 0u;
                v57 = 0u;
                v31 = v27;
                v32 = [v31 countByEnumeratingWithState:&v56 objects:v65 count:16];
                if (v32)
                {
                  v33 = v32;
                  v34 = *v57;
                  do
                  {
                    for (j = 0; j != v33; ++j)
                    {
                      if (*v57 != v34)
                      {
                        objc_enumerationMutation(v31);
                      }

                      v7 = [*(*(&v56 + 1) + 8 * j) hash] - v7 + 32 * v7;
                    }

                    v33 = [v31 countByEnumeratingWithState:&v56 objects:v65 count:16];
                  }

                  while (v33);
                }

                v13 = v49;
                v20 = v50;
              }

              else
              {
                v7 = [v27 hash] - v7 + 32 * v7;
              }
            }
          }
        }

        v18 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v18);
    }

    else
    {
      v20 = v50;
    }

    v10 = v47;
    v2 = v48;
    actionType = v48->_actionType;
  }

  if (actionType == 6)
  {
    v36 = [(ATXAction *)v2 menuItemPath];

    if (v36)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v37 = [(ATXAction *)v2 menuItemPath];
      v38 = [v37 countByEnumeratingWithState:&v52 objects:v64 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v53;
        do
        {
          for (k = 0; k != v39; ++k)
          {
            if (*v53 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v7 = [*(*(&v52 + 1) + 8 * k) hash] - v7 + 32 * v7;
          }

          v39 = [v37 countByEnumeratingWithState:&v52 objects:v64 count:16];
        }

        while (v39);
      }
    }

    actionType = v2->_actionType;
  }

  if (actionType == 7)
  {
    v42 = [(ATXAction *)v2 encodedToolInvocation];

    if (v42)
    {
      v43 = MEMORY[0x1E69C5B68];
      v44 = [(ATXAction *)v2 encodedToolInvocation];
      v45 = [v43 canonicalIdentifierForEncodedToolInvocationWithEncodedInvocation:v44];
      v7 = [v45 hash] - v7 + 32 * v7;
    }
  }

LABEL_53:

  return v7;
}

- (unint64_t)paramHash
{
  v3 = [(ATXAction *)self slotSet];
  v4 = [[ATXSlotResolutionParameters alloc] initWithAction:self slots:v3];
  v5 = [(ATXSlotResolutionParameters *)v4 hash];

  return v5;
}

- (id)actionKey
{
  heuristic = self->_heuristic;
  if (heuristic)
  {
    v3 = heuristic;
    goto LABEL_21;
  }

  if ([(ATXAction *)self actionType]== 1 || [(ATXAction *)self actionType]== 5)
  {
    v5 = [(ATXAction *)self userActivity];
    v6 = [v5 activityType];

    if (v6)
    {
      v7 = [(ATXAction *)self userActivity];
      v8 = [v7 activityType];
      v9 = [ATXAction getNSUATypefromActivityType:v8];

LABEL_10:
      goto LABEL_11;
    }
  }

  if (![(ATXAction *)self actionType]|| [(ATXAction *)self actionType]== 2)
  {
    v7 = [(ATXAction *)self intent];
    v9 = [v7 _className];
    goto LABEL_10;
  }

  if ([(ATXAction *)self actionType]== 6)
  {
    v9 = @"RunIntelligenceCommand";
    goto LABEL_11;
  }

  if ([(ATXAction *)self actionType]== 7)
  {
    v9 = [(ATXAction *)self toolInvocationID];
LABEL_11:
    v10 = [(ATXAction *)self bundleId];

    if (v10)
    {
      if (v9)
      {
        v11 = [(ATXAction *)self bundleId];
        v3 = [ATXAction getActionKeyForBundleId:v11 actionType:v9];

LABEL_20:
        goto LABEL_21;
      }

      v9 = __atxlog_handle_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [ATXAction actionKey];
      }
    }

    else
    {
      v12 = __atxlog_handle_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [ATXAction actionKey];
      }
    }

    v3 = 0;
    goto LABEL_20;
  }

  v3 = 0;
LABEL_21:

  return v3;
}

- (id)slotSet
{
  actionType = self->_actionType;
  switch(actionType)
  {
    case 0uLL:
      goto LABEL_4;
    case 7uLL:
      v8 = [ATXSlotSet alloc];
      v9 = MEMORY[0x1E695DFD8];
      v10 = [(ATXAction *)self parameterKeysForToolInvocation];
      v11 = [v9 setWithArray:v10];
      v7 = [(ATXSlotSet *)v8 initWithParameters:v11];

      break;
    case 2uLL:
LABEL_4:
      v4 = [ATXSlotSet alloc];
      v5 = [(ATXAction *)self intent];
      v6 = [v5 atx_nonNilParameters];
      v7 = [(ATXSlotSet *)v4 initWithParameters:v6];

      break;
    default:
      v7 = [[ATXSlotSet alloc] initWithOpaqueParameters];
      break;
  }

  return v7;
}

- (id)userActivityWebpageURL
{
  if ((self->_actionType | 4) == 5)
  {
    v2 = [(ATXAction *)self userActivity];
    v3 = [v2 webpageURL];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSUserActivity)userActivity
{
  v2 = self;
  objc_sync_enter(v2);
  userActivity = v2->_userActivity;
  if (!userActivity)
  {
    v4 = objc_autoreleasePoolPush();
    if (([(ATXAction *)v2 actionType]== 1 || [(ATXAction *)v2 actionType]== 5) && v2->_userActivityString)
    {
      v5 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithUserActivityStrings:v2->_userActivityString secondaryString:0 optionalData:0];
      v6 = v2->_userActivity;
      v2->_userActivity = v5;

      [(NSUserActivity *)v2->_userActivity setContentAttributeSet:v2->_contentAttributeSet];
    }

    objc_autoreleasePoolPop(v4);
    userActivity = v2->_userActivity;
  }

  v7 = userActivity;
  objc_sync_exit(v2);

  return v7;
}

- (BOOL)hasActionTitle
{
  if (![(ATXAction *)self _shouldUseCachedTitle:self->_title cachedLanguageCode:self->_languageCode])
  {
    actionType = self->_actionType;
    if (actionType <= 4)
    {
      if (!actionType)
      {
LABEL_6:
        v4 = [(ATXAction *)self intent];
        v5 = [v4 _hasTitle];
LABEL_13:

        return v5;
      }

      if (actionType != 1)
      {
        if (actionType == 2)
        {
          goto LABEL_6;
        }

LABEL_15:
        reportInvalidActionTypeAndCrash(actionType);
      }

      v4 = [(ATXAction *)self userActivity];
      v6 = [v4 title];
LABEL_12:
      v7 = v6;
      v5 = [v6 length] != 0;

      goto LABEL_13;
    }

    if ((actionType - 6) >= 2)
    {
      if (actionType != 5)
      {
        goto LABEL_15;
      }

      v4 = [(ATXAction *)self userActivityProxy];
      v6 = [v4 activityTitle];
      goto LABEL_12;
    }
  }

  return 1;
}

- (ATXAction)initWithIntent:(id)a3 actionUUID:(id)a4 bundleId:(id)a5 heuristic:(id)a6 heuristicMetadata:(id)a7 criteria:(id)a8 isFutureMedia:(BOOL)a9 title:(id)a10 subtitle:(id)a11
{
  v17 = a11;
  v18 = a10;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [[ATXLazyIntent alloc] initWithIntent:v24];
  v26 = [v24 _type] == 2;

  LOBYTE(v29) = a9;
  v27 = [(ATXAction *)self initWithActivityProxy:0 activity:0 activityString:0 itemIdentifier:0 contentAttributeSet:0 intent:v25 menuItemPath:0 actionUUID:v23 bundleId:v22 type:2 * v26 heuristic:v21 heuristicMetadata:v20 criteria:v19 isFutureMedia:v29 routeInfo:0 title:v18 subtitle:v17 languageCode:0 cachedHash:0 toolInvocationID:0 encodedToolInvocation:0 parameterKeysForToolInvocation:0];

  return v27;
}

- (ATXAction)initWithNSUserActivity:(id)a3 actionUUID:(id)a4 bundleId:(id)a5 contentAttributeSet:(id)a6 itemIdentifier:(id)a7 heuristic:(id)a8 heuristicMetadata:(id)a9 criteria:(id)a10 isFutureMedia:(BOOL)a11 title:(id)a12 subtitle:(id)a13
{
  v48 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v33 = a4;
  v34 = a5;
  v19 = a6;
  v35 = a7;
  v36 = a8;
  v37 = a9;
  v20 = a10;
  v21 = a12;
  v22 = a13;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__2;
  v45 = __Block_byref_object_dispose__2;
  v46 = 0;
  v23 = dispatch_semaphore_create(0);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __157__ATXAction_initWithNSUserActivity_actionUUID_bundleId_contentAttributeSet_itemIdentifier_heuristic_heuristicMetadata_criteria_isFutureMedia_title_subtitle___block_invoke;
  v38[3] = &unk_1E80C1B18;
  v40 = &v41;
  v24 = v23;
  v39 = v24;
  [v18 _createUserActivityStringsWithOptions:0 completionHandler:v38];
  if ([MEMORY[0x1E69C5D10] waitForSemaphore:v24 timeoutSeconds:1.0] == 1)
  {
    __atxlog_handle_default();
    v26 = v25 = self;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      [ATXAction initWithNSUserActivity:v28 actionUUID:buf bundleId:v26 contentAttributeSet:? itemIdentifier:? heuristic:? heuristicMetadata:? criteria:? isFutureMedia:? title:? subtitle:?];
    }

    v29 = 0;
LABEL_5:

    goto LABEL_10;
  }

  v29 = v42[5];
  v25 = self;
  if (v29)
  {
    v26 = v19;
    if (!v19)
    {
      v26 = [v18 contentAttributeSet];
      v25 = self;
    }

    LOBYTE(v31) = a11;
    v25 = [(ATXAction *)v25 initWithActivityProxy:0 activity:v18 activityString:v29 itemIdentifier:v35 contentAttributeSet:v26 intent:0 menuItemPath:0 actionUUID:v33 bundleId:v34 type:1 heuristic:v36 heuristicMetadata:v37 criteria:v20 isFutureMedia:v31 routeInfo:0 title:v21 subtitle:v22 languageCode:0 cachedHash:0 toolInvocationID:0 encodedToolInvocation:0 parameterKeysForToolInvocation:0];
    v29 = v25;
    if (!v19)
    {
      goto LABEL_5;
    }
  }

LABEL_10:

  _Block_object_dispose(&v41, 8);
  return v29;
}

void __157__ATXAction_initWithNSUserActivity_actionUUID_bundleId_contentAttributeSet_itemIdentifier_heuristic_heuristicMetadata_criteria_isFutureMedia_title_subtitle___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  if (!a5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)initFromBestAppSuggestion:(id)a3 activity:(id)a4 actionUUID:(id)a5 bundleId:(id)a6 contentAttributeSet:(id)a7 itemIdentifier:(id)a8 heuristic:(id)a9 heuristicMetadata:(id)a10 criteria:(id)a11 isFutureMedia:(BOOL)a12 title:(id)a13 subtitle:(id)a14
{
  v38 = a3;
  v19 = a4;
  v37 = a5;
  v41 = a6;
  v20 = a7;
  v40 = a8;
  v39 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a13;
  v24 = a14;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__2;
  v49 = __Block_byref_object_dispose__2;
  v50 = 0;
  if (v19)
  {
    v25 = dispatch_semaphore_create(0);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __169__ATXAction_initFromBestAppSuggestion_activity_actionUUID_bundleId_contentAttributeSet_itemIdentifier_heuristic_heuristicMetadata_criteria_isFutureMedia_title_subtitle___block_invoke;
    v42[3] = &unk_1E80C1B18;
    v44 = &v45;
    v26 = v25;
    v43 = v26;
    [v19 _createUserActivityStringsWithOptions:0 completionHandler:v42];
    v27 = [MEMORY[0x1E69C5D10] waitForSemaphore:v26 timeoutSeconds:1.0];

    v29 = v37;
    v28 = v38;
    if (v27 == 1)
    {
      v30 = 0;
      v31 = self;
      goto LABEL_11;
    }

    v32 = v46[5];
  }

  else
  {
    v32 = 0;
    v29 = v37;
    v28 = v38;
  }

  v33 = v20;
  if (!v20)
  {
    v33 = [v19 contentAttributeSet];
  }

  LOBYTE(v35) = a12;
  v31 = [(ATXAction *)self initWithActivityProxy:v28 activity:v19 activityString:v32 itemIdentifier:v40 contentAttributeSet:v33 intent:0 menuItemPath:0 actionUUID:v29 bundleId:v41 type:5 heuristic:v39 heuristicMetadata:v21 criteria:v22 isFutureMedia:v35 routeInfo:0 title:v23 subtitle:v24 languageCode:0 cachedHash:0 toolInvocationID:0 encodedToolInvocation:0 parameterKeysForToolInvocation:0];
  if (!v20)
  {
  }

  v30 = v31;
LABEL_11:
  _Block_object_dispose(&v45, 8);

  return v30;
}

void __169__ATXAction_initFromBestAppSuggestion_activity_actionUUID_bundleId_contentAttributeSet_itemIdentifier_heuristic_heuristicMetadata_criteria_isFutureMedia_title_subtitle___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (ATXAction)initWithActivityProxy:(id)a3 activity:(id)a4 activityString:(id)a5 itemIdentifier:(id)a6 contentAttributeSet:(id)a7 intent:(id)a8 menuItemPath:(id)a9 actionUUID:(id)a10 bundleId:(id)a11 type:(unint64_t)a12 heuristic:(id)a13 heuristicMetadata:(id)a14 criteria:(id)a15 isFutureMedia:(BOOL)a16 routeInfo:(id)a17 title:(id)a18 subtitle:(id)a19 languageCode:(id)a20 cachedHash:(id)a21 toolInvocationID:(id)a22 encodedToolInvocation:(id)a23 parameterKeysForToolInvocation:(id)a24
{
  v81 = a3;
  v75 = a4;
  v60 = a5;
  v28 = a5;
  v61 = a6;
  v74 = a6;
  v80 = a7;
  v62 = a8;
  v29 = a8;
  v30 = a9;
  v73 = a10;
  v31 = a11;
  v69 = a13;
  v68 = a14;
  v65 = a15;
  v63 = a17;
  v71 = a18;
  v70 = a19;
  v78 = a20;
  v67 = a21;
  v82 = a22;
  v66 = a23;
  v77 = a24;
  v72 = v31;
  if (!v31)
  {
    [ATXAction initWithActivityProxy:activity:activityString:itemIdentifier:contentAttributeSet:intent:menuItemPath:actionUUID:bundleId:type:heuristic:heuristicMetadata:criteria:isFutureMedia:routeInfo:title:subtitle:languageCode:cachedHash:toolInvocationID:encodedToolInvocation:parameterKeysForToolInvocation:];
  }

  v32 = (v28 | v29) != 0;
  v33 = v81;
  v34 = v29;
  v64 = v29;
  if (v30 || v81 || v28 | v29 || v82)
  {
    v36 = v68;
    v35 = v69;
    v37 = v65;
    v38 = v63;
    v39 = self;
    if (v81)
    {
      if (v30 | v82)
      {
        v32 = 1;
      }

      if (v32 == 1)
      {
        [ATXAction initWithActivityProxy:activity:activityString:itemIdentifier:contentAttributeSet:intent:menuItemPath:actionUUID:bundleId:type:heuristic:heuristicMetadata:criteria:isFutureMedia:routeInfo:title:subtitle:languageCode:cachedHash:toolInvocationID:encodedToolInvocation:parameterKeysForToolInvocation:];
LABEL_41:

        goto LABEL_28;
      }

      goto LABEL_28;
    }

    if (v82)
    {
      if (((v30 == 0) & ~v32) != 0)
      {
        goto LABEL_28;
      }

      [ATXAction initWithActivityProxy:activity:activityString:itemIdentifier:contentAttributeSet:intent:menuItemPath:actionUUID:bundleId:type:heuristic:heuristicMetadata:criteria:isFutureMedia:routeInfo:title:subtitle:languageCode:cachedHash:toolInvocationID:encodedToolInvocation:parameterKeysForToolInvocation:];
      goto LABEL_41;
    }
  }

  else
  {
    v40 = v29;
    v39 = self;
    [ATXAction initWithActivityProxy:activity:activityString:itemIdentifier:contentAttributeSet:intent:menuItemPath:actionUUID:bundleId:type:heuristic:heuristicMetadata:criteria:isFutureMedia:routeInfo:title:subtitle:languageCode:cachedHash:toolInvocationID:encodedToolInvocation:parameterKeysForToolInvocation:];
    v34 = v40;
    v36 = v68;
    v35 = v69;
    v37 = v65;
    v38 = v63;
  }

  if (v34)
  {
    v41 = (v28 | v30) == 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = !v41;
  if (v30)
  {
    v43 = v28 == 0;
  }

  else
  {
    v43 = 1;
  }

  if (!v43 || v42)
  {
    [ATXAction initWithActivityProxy:activity:activityString:itemIdentifier:contentAttributeSet:intent:menuItemPath:actionUUID:bundleId:type:heuristic:heuristicMetadata:criteria:isFutureMedia:routeInfo:title:subtitle:languageCode:cachedHash:toolInvocationID:encodedToolInvocation:parameterKeysForToolInvocation:];
    goto LABEL_41;
  }

LABEL_28:
  if (a12 >= 8)
  {
    [ATXAction initWithActivityProxy:activity:activityString:itemIdentifier:contentAttributeSet:intent:menuItemPath:actionUUID:bundleId:type:heuristic:heuristicMetadata:criteria:isFutureMedia:routeInfo:title:subtitle:languageCode:cachedHash:toolInvocationID:encodedToolInvocation:parameterKeysForToolInvocation:];
  }

  v83.receiver = v39;
  v83.super_class = ATXAction;
  v44 = [(ATXAction *)&v83 init];
  v45 = v44;
  if (v44)
  {
    objc_storeStrong(&v44->_userActivityProxy, a3);
    objc_storeStrong(&v45->_userActivity, a4);
    objc_storeStrong(&v45->_userActivityString, v60);
    objc_storeStrong(&v45->_itemIdentifier, v61);
    if (v80)
    {
      v46 = v80;
    }

    else
    {
      v46 = objc_opt_new();
    }

    contentAttributeSet = v45->_contentAttributeSet;
    v45->_contentAttributeSet = v46;

    objc_storeStrong(&v45->_lazyIntent, v62);
    objc_storeStrong(&v45->_actionUUID, a10);
    objc_storeStrong(&v45->_bundleId, a11);
    v45->_actionType = a12;
    objc_storeStrong(&v45->_heuristic, a13);
    objc_storeStrong(&v45->_heuristicMetadata, a14);
    objc_storeStrong(&v45->_criteria, a15);
    v45->_isFutureMedia = a16;
    objc_storeStrong(&v45->_routeInfo, a17);
    objc_storeStrong(&v45->_title, a18);
    objc_storeStrong(&v45->_subtitle, a19);
    if (v78)
    {
      v48 = v78;
      languageCode = v45->_languageCode;
      v45->_languageCode = v48;
    }

    else
    {
      languageCode = [MEMORY[0x1E695DF58] currentLocale];
      v50 = [languageCode localeIdentifier];
      v51 = v45->_languageCode;
      v45->_languageCode = v50;
    }

    v33 = v81;

    v45->_isTVWhiteListedLongFormMediaDoNotUseDirectly = 0;
    objc_storeStrong(&v45->_cachedHash, a21);
    v52 = [v30 copy];
    menuItemPath = v45->_menuItemPath;
    v45->_menuItemPath = v52;

    objc_storeStrong(&v45->_toolInvocationID, a22);
    objc_storeStrong(&v45->_encodedToolInvocation, a23);
    v54 = [v77 copy];
    parameterKeysForToolInvocation = v45->_parameterKeysForToolInvocation;
    v45->_parameterKeysForToolInvocation = v54;

    [(ATXLazyIntent *)v45->_lazyIntent setDelegate:v45];
    v56 = [MEMORY[0x1E698B000] sharedInstance];
    [v56 registerObserver:v45];

    if ([(ATXLazyIntent *)v45->_lazyIntent isDeserialized])
    {
      v57 = [(ATXLazyIntent *)v45->_lazyIntent intent];
      [(ATXAction *)v45 setLaunchIdForIntent:v57];
    }
  }

  return v45;
}

- (ATXAction)actionWithRouteInfo:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [ATXAction alloc];
    LOBYTE(v8) = self->_isFutureMedia;
    v6 = [(ATXAction *)v5 initWithActivityProxy:0 activity:self->_userActivity activityString:self->_userActivityString itemIdentifier:self->_itemIdentifier contentAttributeSet:self->_contentAttributeSet intent:self->_lazyIntent menuItemPath:self->_menuItemPath actionUUID:self->_actionUUID bundleId:self->_bundleId type:self->_actionType heuristic:self->_heuristic heuristicMetadata:self->_heuristicMetadata criteria:self->_criteria isFutureMedia:v8 routeInfo:v4 title:self->_title subtitle:self->_subtitle languageCode:self->_languageCode cachedHash:self->_cachedHash toolInvocationID:self->_toolInvocationID encodedToolInvocation:self->_encodedToolInvocation parameterKeysForToolInvocation:self->_parameterKeysForToolInvocation];
  }

  else
  {
    v6 = self;
  }

  return v6;
}

- (BOOL)isTVWhiteListedLongFormMedia
{
  v3 = [(ATXAction *)self intent];
  if ([ATXAction _isTVIntent:v3 bundleId:self->_bundleId])
  {
    v4 = v3;
    v5 = [v4 proxiedBundleIdentifier];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 proxiedBundleIdentifier];
      v8 = [ATXAVRoutingUtils isTVExperienceAppWithBundleId:v7];

      if (v8)
      {
        self->_isTVWhiteListedLongFormMediaDoNotUseDirectly = 1;
      }
    }
  }

  isTVWhiteListedLongFormMediaDoNotUseDirectly = self->_isTVWhiteListedLongFormMediaDoNotUseDirectly;

  return isTVWhiteListedLongFormMediaDoNotUseDirectly;
}

+ (BOOL)_isTVIntent:(id)a3 bundleId:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [ATXAVRoutingUtils isTVAppWithBundleId:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXAction *)self isEqualToAction:v5];
  }

  return v6;
}

- (BOOL)isEqualToAction:(id)a3
{
  v4 = a3;
  v5 = self->_bundleId;
  v6 = v5;
  if (v5 == v4[11])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  p_actionType = &self->_actionType;
  actionType = self->_actionType;
  if (actionType != v4[12])
  {
    goto LABEL_38;
  }

  if (actionType > 4)
  {
    if (actionType > 6)
    {
      if (actionType != 7)
      {
        if (actionType != 8)
        {
          goto LABEL_26;
        }

LABEL_19:
        v23 = __atxlog_handle_default();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(ATXAction *)p_actionType isEqualToAction:v23, v24, v25, v26, v27, v28, v29];
        }

        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Encountered invalid ATXActionType value: %tu", *p_actionType}];
        goto LABEL_38;
      }

      v20 = [(ATXAction *)self encodedToolInvocation];
      v21 = [v4 encodedToolInvocation];
      v22 = [v20 isEqualToData:v21];
    }

    else
    {
      if (actionType == 5)
      {
        goto LABEL_22;
      }

      v20 = [(ATXAction *)self menuItemPath];
      v21 = [v4 menuItemPath];
      v22 = [v20 isEqualToArray:v21];
    }

    v31 = v22;

    if ((v31 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_26;
  }

  if (actionType > 2)
  {
    goto LABEL_19;
  }

  if (!actionType)
  {
LABEL_11:
    v10 = [(ATXAction *)self intent];
    v11 = [v10 _className];
    v12 = [v4 intent];
    v13 = [v12 _className];
    v14 = [v11 isEqual:v13];

    if (!v14)
    {
      goto LABEL_38;
    }

    v15 = [(ATXAction *)self intent];
    v16 = [v15 atx_nonNilParametersByName];
    v17 = [v4 intent];
    v18 = [v17 atx_nonNilParametersByName];
    v19 = [v16 atx_isFuzzyMatch:v18];

    if ((v19 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_26;
  }

  if (actionType != 1)
  {
    if (actionType != 2)
    {
      goto LABEL_26;
    }

    goto LABEL_11;
  }

LABEL_22:
  v30 = [(ATXAction *)self userActivityHash];
  if (v30 != [v4 userActivityHash])
  {
    goto LABEL_38;
  }

LABEL_26:
  v32 = self->_heuristic;
  v33 = v32;
  if (v32 == v4[15])
  {
  }

  else
  {
    v34 = [(NSString *)v32 isEqual:?];

    if ((v34 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if (self->_isFutureMedia == *(v4 + 73))
  {
    if ([(ATXAction *)self isHeuristic])
    {
      v35 = self->_title;
      v36 = v35;
      if (v35 == v4[4])
      {
      }

      else
      {
        v37 = [(NSString *)v35 isEqual:?];

        if ((v37 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      v38 = self->_subtitle;
      v39 = v38;
      if (v38 == v4[5])
      {
      }

      else
      {
        v40 = [(NSString *)v38 isEqual:?];

        if ((v40 & 1) == 0)
        {
          goto LABEL_38;
        }
      }
    }

    v41 = 1;
    goto LABEL_39;
  }

LABEL_38:
  v41 = 0;
LABEL_39:

  return v41;
}

- (id)canonicalIdentifier
{
  v3 = [(ATXAction *)self actionKey];
  v4 = v3;
  v5 = @"nilActionKey";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%lu", v6, -[ATXAction hash](self, "hash")];

  return v7;
}

- (ATXAction)initWithProto:(id)a3
{
  v88 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 intent];
      if (v6)
      {
        v7 = [[ATXLazyIntent alloc] initWithIntentData:v6];
      }

      else
      {
        v7 = 0;
      }

      v9 = [v5 userActivityProxy];
      v10 = [v9 length];

      if (v10)
      {
        v11 = objc_autoreleasePoolPush();
        v12 = MEMORY[0x1E696ACD0];
        v13 = objc_opt_class();
        v14 = [v5 userActivityProxy];
        v86 = 0;
        v10 = [v12 unarchivedObjectOfClass:v13 fromData:v14 error:&v86];
        v15 = v86;

        objc_autoreleasePoolPop(v11);
        if (v15)
        {
          v16 = __atxlog_handle_default();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            [ATXAction initWithProto:];
          }
        }
      }

      if ([v5 menuItemPathComponentsCount])
      {
        v17 = [v5 menuItemPathComponents];
      }

      else
      {
        v17 = 0;
      }

      v18 = [v5 toolInvocationID];
      if (v10 | v7 || (([v5 activityString], v19 = objc_claimAutoreleasedReturnValue(), (v20 = v19 | v17) != 0) ? (v21 = v19) : (v21 = 0), (v21, v20) || v18))
      {
        v8 = [v5 bundleId];

        if (v8)
        {
          v8 = [v5 uuid];

          if (v8)
          {
            v80 = v17;
            v22 = objc_alloc(MEMORY[0x1E696AFB0]);
            v23 = [v5 uuid];
            v24 = [v22 initWithUUIDString:v23];

            v79 = v24;
            if (v24)
            {
              v25 = [v5 contentAttributeSet];
              v26 = [v25 length];

              v77 = v18;
              v78 = v7;
              if (v26)
              {
                v27 = objc_autoreleasePoolPush();
                v28 = MEMORY[0x1E696ACD0];
                v29 = objc_opt_class();
                v30 = [v5 contentAttributeSet];
                v85 = 0;
                v76 = [v28 unarchivedObjectOfClass:v29 fromData:v30 error:&v85];
                v31 = v85;

                objc_autoreleasePoolPop(v27);
                if (v31)
                {
                  v32 = __atxlog_handle_default();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
                  {
                    [ATXAction initWithProto:];
                  }
                }
              }

              else
              {
                v76 = 0;
              }

              v71 = v6;
              v33 = [v5 heuristicMetadatas];
              v34 = [v33 count];

              v70 = v10;
              if (v34)
              {
                v35 = objc_alloc(MEMORY[0x1E695DF90]);
                v36 = [v5 heuristicMetadatas];
                v37 = [v35 initWithCapacity:{objc_msgSend(v36, "count")}];

                v83 = 0u;
                v84 = 0u;
                v81 = 0u;
                v82 = 0u;
                v38 = [v5 heuristicMetadatas];
                v39 = [v38 countByEnumeratingWithState:&v81 objects:v87 count:16];
                if (v39)
                {
                  v40 = v39;
                  v41 = *v82;
                  do
                  {
                    for (i = 0; i != v40; ++i)
                    {
                      if (*v82 != v41)
                      {
                        objc_enumerationMutation(v38);
                      }

                      v43 = *(*(&v81 + 1) + 8 * i);
                      v44 = [v43 key];

                      if (v44)
                      {
                        v45 = [v43 value];
                        v46 = [v43 key];
                        [v37 setObject:v45 forKeyedSubscript:v46];
                      }
                    }

                    v40 = [v38 countByEnumeratingWithState:&v81 objects:v87 count:16];
                  }

                  while (v40);
                }
              }

              else
              {
                v37 = 0;
              }

              v47 = [v5 predictableParameterCombinations];
              v48 = [v47 count];

              if (v48)
              {
                v49 = [v5 predictableParameterCombinations];
                v50 = [v49 _pas_mappedArrayWithTransform:&__block_literal_global_20];
              }

              else
              {
                v50 = 0;
              }

              v69 = v50;
              if ([v5 hasCachedHash])
              {
                v75 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:{-[NSObject cachedHash](v5, "cachedHash")}];
              }

              else
              {
                v75 = 0;
              }

              v74 = [v5 encodedToolInvocation];
              v51 = [v5 parameterKeysForToolInvocations];
              v73 = [v51 copy];

              v68 = [v5 activityString];
              v66 = [v5 itemIdentifier];
              v72 = [v5 bundleId];
              v65 = [v5 actionType];
              v63 = [v5 heuristic];
              v52 = [ATXActionCriteria alloc];
              v67 = [v5 criteria];
              v61 = [(ATXActionCriteria *)v52 initWithProto:v67];
              v62 = [v5 isFutureMedia];
              v53 = [ATXAVRouteInfo alloc];
              v64 = [v5 routeInfo];
              v60 = [(ATXAVRouteInfo *)v53 initWithProto:v64];
              v54 = [v5 title];
              v55 = [v5 subtitle];
              v56 = [v5 languageCode];
              LOBYTE(v59) = v62;
              v10 = v70;
              v57 = [(ATXAction *)self initWithActivityProxy:v70 activity:0 activityString:v68 itemIdentifier:v66 contentAttributeSet:v76 intent:v78 menuItemPath:v80 actionUUID:v79 bundleId:v72 type:v65 heuristic:v63 heuristicMetadata:v37 criteria:v61 isFutureMedia:v59 routeInfo:v60 title:v54 subtitle:v55 languageCode:v56 cachedHash:v75 toolInvocationID:v77 encodedToolInvocation:v74 parameterKeysForToolInvocation:v73];

              if (v57)
              {
                [(ATXAction *)v57 _setUserActivityHash:[v5 userActivityHash]];
                objc_storeStrong(&v57->_predictableParameterCombinations, v69);
              }

              self = v57;

              v8 = self;
              v6 = v71;
              v18 = v77;
              v7 = v78;
            }

            else
            {
              v8 = 0;
            }

            v17 = v80;
          }
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXAction *)self initWithProto:v5];
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

ATXActionPredictableParameters *__27__ATXAction_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [ATXActionPredictableParameters alloc];
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = [v2 parameterKeys];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = [v4 initWithArray:v6];
  v8 = [(ATXActionPredictableParameters *)v3 initWithParameterKeys:v7];

  return v8;
}

- (void)setLaunchIdForIntent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = [v4 launchId];

    v4 = v6;
    if (!v5)
    {
      [v6 _setLaunchId:self->_bundleId];
      v4 = v6;
    }
  }
}

- (ATXAction)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBAction alloc] initWithData:v4];

    self = [(ATXAction *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __18__ATXAction_proto__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(ATXPBHeuristicMetadata);
  [(ATXPBHeuristicMetadata *)v7 setKey:v6];

  [(ATXPBHeuristicMetadata *)v7 setValue:v5];
  [*(a1 + 32) addObject:v7];
}

ATXPBPredictableParameters *__18__ATXAction_proto__block_invoke_125(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(ATXPBPredictableParameters);
  v4 = [v2 parameterKeys];

  v5 = [v4 allObjects];
  v6 = [v5 mutableCopy];
  [(ATXPBPredictableParameters *)v3 setParameterKeys:v6];

  return v3;
}

- (unint64_t)hashSlotSetWithNonNilParameters:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 count];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4 += [*(*(&v12 + 1) + 8 * v9++) hash];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (v4 == HIDWORD(v4))
  {
    v10 = 1;
  }

  else
  {
    v10 = v4 ^ HIDWORD(v4);
  }

  return v10;
}

+ (unint64_t)_userActivityHashForUserInfoDict:(id)a3 activityType:(id)a4 webpageURL:(id)a5
{
  v77 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  context = objc_autoreleasePoolPush();
  *md = 0u;
  v76 = 0u;
  v10 = objc_opt_new();
  [v10 addObject:v8];
  v50 = v9;
  v11 = [v9 absoluteString];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F3E050C8;
  }

  [v10 addObject:v13];

  v14 = objc_opt_new();
  v54 = objc_opt_new();
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v66;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v66 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v65 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v14;
        }

        else
        {
          v21 = v54;
        }

        [v21 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v65 objects:v74 count:16];
    }

    while (v17);
  }

  [v14 sortUsingSelector:sel_compare_];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v22 = v14;
  v23 = [v22 countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v62;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v62 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v61 + 1) + 8 * j);
        [v10 addObject:v27];
        v28 = [v15 objectForKeyedSubscript:v27];
        v29 = plistableReplacementFor(v28);
        [v10 addObject:v29];
      }

      v24 = [v22 countByEnumeratingWithState:&v61 objects:v73 count:16];
    }

    while (v24);
  }

  if ([v54 count])
  {
    v47 = v22;
    v48 = v8;
    v52 = objc_opt_new();
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v54;
    v30 = [obj countByEnumeratingWithState:&v57 objects:v72 count:16];
    if (v30)
    {
      v31 = v30;
      v53 = *v58;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v58 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v57 + 1) + 8 * k);
          v34 = objc_autoreleasePoolPush();
          v35 = [v15 objectForKeyedSubscript:v33];
          v36 = plistableReplacementFor(v33);
          v71[0] = v36;
          v37 = plistableReplacementFor(v35);
          v71[1] = v37;
          v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];

          v56 = 0;
          v39 = [MEMORY[0x1E696AE40] dataWithPropertyList:v38 format:100 options:0 error:&v56];
          v40 = v56;
          if (v39)
          {
            [v52 addObject:v39];
          }

          else
          {
            v41 = __atxlog_handle_default();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v70 = v40;
              _os_log_fault_impl(&dword_1BF549000, v41, OS_LOG_TYPE_FAULT, "Error serializing: %@", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v34);
        }

        v31 = [obj countByEnumeratingWithState:&v57 objects:v72 count:16];
      }

      while (v31);
    }

    [v52 sortUsingComparator:&__block_literal_global_574];
    [v10 addObject:v52];

    v22 = v47;
    v8 = v48;
  }

  v55 = 0;
  v42 = [MEMORY[0x1E696AE40] dataWithPropertyList:v10 format:100 options:0 error:{&v55, v47, v48}];
  v43 = v55;
  if (v42)
  {
    CC_SHA256([v42 bytes], objc_msgSend(v42, "length"), md);
    if (*md <= 1uLL)
    {
      v44 = 1;
    }

    else
    {
      v44 = *md;
    }
  }

  else
  {
    v45 = __atxlog_handle_default();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      +[ATXAction _userActivityHashForUserInfoDict:activityType:webpageURL:];
    }

    v44 = 1;
  }

  objc_autoreleasePoolPop(context);
  return v44;
}

- (NSString)description
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"bundleId: %@\n", self->_bundleId];
  [v3 appendFormat:@"actionType: %lu\n", self->_actionType];
  v4 = [(NSUUID *)self->_actionUUID UUIDString];
  [v3 appendFormat:@"actionUUID: %@\n", v4];

  [v3 appendFormat:@"heuristic: %@\n", self->_heuristic];
  [v3 appendFormat:@"itemIdentifier: %@\n", self->_itemIdentifier];
  if (self->_isFutureMedia)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"isFutureMedia: %@\n", v5];
  [v3 appendFormat:@"criteria: %@\n", self->_criteria];
  if (ATXDetailedActionLoggingEnabled())
  {
    v6 = [(ATXAction *)self actionTitle];
    [v3 appendFormat:@"actionTitle: %@\n", v6];

    v7 = [(ATXAction *)self actionSubtitle];
    [v3 appendFormat:@"actionSubtitle: %@\n", v7];

    v8 = [(ATXAction *)self actionDescription];
    [v3 appendFormat:@"actionDescription: %@\n", v8];
  }

  v9 = [v3 copy];

  return v9;
}

- (id)actionDescription
{
  actionType = self->_actionType;
  v4 = @"No Intent or action";
  if (actionType > 1)
  {
    if (actionType != 2)
    {
      if (actionType != 5)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

LABEL_10:
    v5 = [(ATXAction *)self intent];
    v4 = [v5 description];
LABEL_11:

    goto LABEL_12;
  }

  if (!actionType)
  {
    goto LABEL_10;
  }

  if (actionType == 1)
  {
LABEL_7:
    v5 = [(ATXAction *)self userActivity];
    v6 = [v5 userInfo];
    v7 = [v6 description];
    userActivityString = v7;
    if (!v7)
    {
      userActivityString = self->_userActivityString;
    }

    v4 = userActivityString;

    goto LABEL_11;
  }

LABEL_12:

  return v4;
}

- (BOOL)_shouldUseCachedTitle:(id)a3 cachedLanguageCode:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([a3 length])
  {
    v7 = [MEMORY[0x1E695DF58] currentLocale];
    v8 = [v7 localeIdentifier];

    v9 = [v8 isEqualToString:v6];
    if (v9)
    {
      v10 = __atxlog_handle_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v15 = 138412546;
        v16 = v12;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "%@ - Using cached title because there is a matching cached languageCode: %@.", &v15, 0x16u);
      }
    }

    if (self->_heuristic)
    {
      v13 = 1;
    }

    else
    {
      v13 = v9;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setTitleForSerializationToCache
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    languageCode = self->_languageCode;
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = languageCode;
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "%@ - Setting title for serialization for language code: %@.", &v9, 0x16u);
  }

  v7 = [(ATXAction *)self actionTitle];
  title = self->_title;
  self->_title = v7;

  [(ATXAction *)self invalidateCachedHash];
}

- (id)actionTitle
{
  if ([(ATXAction *)self _shouldUseCachedTitle:self->_title cachedLanguageCode:self->_languageCode])
  {
    goto LABEL_2;
  }

  actionType = self->_actionType;
  if (actionType > 4)
  {
    switch(actionType)
    {
      case 5:
        v5 = [(ATXAction *)self userActivityProxy];
        v6 = [v5 activityTitle];
        goto LABEL_15;
      case 6:
        v5 = [(ATXAction *)self menuItemPath];
        v6 = [v5 lastObject];
        goto LABEL_15;
      case 7:
LABEL_2:
        v3 = self->_title;
        goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (actionType)
  {
    if (actionType == 1)
    {
      v5 = [(ATXAction *)self userActivity];
      v6 = [v5 title];
      goto LABEL_15;
    }

    if (actionType != 2)
    {
LABEL_11:
      reportInvalidActionTypeAndCrash(actionType);
    }
  }

  v5 = [(ATXAction *)self intent];
  v6 = [v5 atx_titleWithEfficientLocalization];
LABEL_15:
  v3 = v6;

LABEL_16:

  return v3;
}

- (id)actionSubtitle
{
  if ([(ATXAction *)self _shouldUseCachedTitle:self->_subtitle cachedLanguageCode:self->_languageCode])
  {
    goto LABEL_2;
  }

  actionType = self->_actionType;
  if (actionType <= 4)
  {
    if (!actionType)
    {
LABEL_7:
      v5 = [(ATXAction *)self intent];
      v6 = [v5 atx_subtitleWithEfficientLocalization];
LABEL_15:

      goto LABEL_16;
    }

    if (actionType != 1)
    {
      if (actionType == 2)
      {
        goto LABEL_7;
      }

LABEL_20:
      reportInvalidActionTypeAndCrash(actionType);
    }

LABEL_11:
    v3 = [(CSSearchableItemAttributeSet *)self->_contentAttributeSet contentDescription];
    goto LABEL_12;
  }

  if (actionType == 7)
  {
LABEL_2:
    v3 = self->_subtitle;
LABEL_12:
    v6 = v3;
    goto LABEL_16;
  }

  if (actionType != 6)
  {
    if (actionType != 5)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  v7 = [(ATXAction *)self menuItemPath];
  v8 = [v7 count];

  if (v8)
  {
    v5 = [(ATXAction *)self menuItemPath];
    v9 = [(ATXAction *)self menuItemPath];
    v10 = [v5 subarrayWithRange:{0, objc_msgSend(v9, "count") - 1}];
    v6 = [v10 componentsJoinedByString:@" > "];

    goto LABEL_15;
  }

  v6 = &stru_1F3E050C8;
LABEL_16:

  return v6;
}

+ (id)getActionKeyForBundleId:(id)a3 actionType:(id)a4
{
  v5 = MEMORY[0x1E696AD60];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithCapacity:{objc_msgSend(v6, "length") + objc_msgSend(v7, "length") + objc_msgSend(@":", "length")}];
  [v8 appendString:v7];

  [v8 appendString:@":"];
  [v8 appendString:v6];

  return v8;
}

- (id)dateForAction
{
  if (self->_userActivityString)
  {
    v3 = [(ATXAction *)self actionKey];
    if (v3)
    {
      v4 = [ATXAction getDateFromUserActivityString:self->_userActivityString forActionKey:v3];
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

  return v4;
}

- (id)archivedDataForAction
{
  v3 = objc_autoreleasePoolPush();
  v9 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v9];
  v5 = v9;
  objc_autoreleasePoolPop(v3);
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXAction archivedDataForAction];
    }
  }

  return v4;
}

+ (id)unarchivedActionFromData:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v11 = 0;
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v11];
  v6 = v11;
  objc_autoreleasePoolPop(v4);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[ATXAction unarchivedActionFromData:];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)getDateFromUserActivityString:(id)a3 forActionKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    +[ATXAction getDateFromUserActivityString:forActionKey:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_29:
    +[ATXAction getDateFromUserActivityString:forActionKey:];
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_29;
  }

LABEL_3:
  if (![v6 containsString:@"{"] || !objc_msgSend(v6, "containsString:", @"}"))
  {
    goto LABEL_15;
  }

  v9 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"{}"];
  v10 = [v6 componentsSeparatedByCharactersInSet:v9];

  if ([v10 count] <= 1)
  {

LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v11 = [v10 objectAtIndexedSubscript:1];
  if ([v11 length] >= 2)
  {
    v12 = [v11 substringFromIndex:1];

    v11 = v12;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  if ([v8 isEqualToString:@"com.apple.news:NSUA_com.apple.news.articleViewing"])
  {
    v13 = [a1 _extractValueInKeyValueBlob:v11 withKey:@"contentURL"];
    if (v13)
    {
      v23 = 0;
      v14 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(19|20)\\d\\d[-/\\.](0[1-9]|1[012])[-/\\.](0[1-9]|[12][0-9]|3[01])" options:1 error:&v23];
      v15 = [v14 rangeOfFirstMatchInString:v13 options:0 range:{0, objc_msgSend(v13, "length")}];
      v17 = 0;
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = [v13 substringWithRange:{v15, v16}];
        v19 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v19 setDateFormat:@"yyyy-MM-dd"];
        v17 = [v19 dateFromString:v18];
      }

      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ([v8 isEqualToString:@"com.apple.mobilecal:NSUA_com.apple.calendar.continuity.event_selection"])
  {
    v21 = @"com.apple.calendarUIKit.userActivity.endDate";
    goto LABEL_24;
  }

  if (![v8 isEqualToString:@"com.apple.mobilecal:NSUA_com.apple.calendar.continuity.date_selection"])
  {
LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  v21 = @"com.apple.calendarUIKit.userActivity.date";
LABEL_24:
  v22 = [a1 _extractValueInKeyValueBlob:v11 withKey:v21];
  v13 = v22;
  if (!v22)
  {
LABEL_26:
    v17 = 0;
    goto LABEL_27;
  }

  v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v22, "integerValue")}];
LABEL_27:

LABEL_17:

  return v17;
}

+ (id)_extractValueInKeyValueBlob:(id)a3 withKey:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [a3 componentsSeparatedByString:{@", '", 0}];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 containsString:@"'="])
        {
          v12 = [v11 componentsSeparatedByString:@"'="];
          if ([v12 count] == 2)
          {
            v13 = [v12 objectAtIndexedSubscript:0];
            v14 = [v13 isEqualToString:v5];

            if (v14)
            {
              v16 = [v12 objectAtIndexedSubscript:1];
              v15 = [v16 stringByRemovingPercentEncoding];

              goto LABEL_14;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_14:

  return v15;
}

- (id)copyWithParameterAllowList:(id)a3 metadataProvider:(id)a4
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  actionType = self->_actionType;
  v9 = actionType > 6 || ((1 << actionType) & 0x62) == 0;
  v65 = v6;
  if (!v9 || v6 == 0 || actionType == 7)
  {
    v12 = self;
  }

  else
  {
    v14 = [(ATXAction *)self intent];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v16 = [(ATXAction *)self intent];
    v17 = v16;
    if (isKindOfClass)
    {
      v18 = [v16 atx_nonNilParameters];
      v19 = [v18 mutableCopy];

      [v19 minusSet:v6];
      v20 = [v17 launchId];

      if (v20)
      {
        if (!v7)
        {
          v7 = objc_alloc_init(MEMORY[0x1E69ACF60]);
        }

        v21 = [v17 launchId];
        v22 = [v17 appIntentIdentifier];
        v76 = 0;
        v23 = [v7 actionForBundleIdentifier:v21 andActionIdentifier:v22 error:&v76];
        v24 = v76;

        if (v23)
        {
          v25 = self;
          v26 = [v19 allObjects];
          v74[0] = MEMORY[0x1E69E9820];
          v74[1] = 3221225472;
          v74[2] = __57__ATXAction_copyWithParameterAllowList_metadataProvider___block_invoke;
          v74[3] = &unk_1E80C1BD0;
          v75 = v23;
          v27 = [v26 _pas_filteredArrayWithTest:v74];

          if ([v27 count])
          {
            v28 = [v17 serializedParameters];
            v60 = v7;
            v29 = [v28 mutableCopy];

            [v29 removeObjectsForKeys:v27];
            v30 = objc_alloc(MEMORY[0x1E696E730]);
            v31 = [v17 launchId];
            v32 = [v17 appIntentIdentifier];
            v33 = [v30 initWithAppBundleIdentifier:v31 appIntentIdentifier:v32 serializedParameters:v29];

            v34 = v25->_title;
            v35 = [ATXAction alloc];
            LOBYTE(v59) = v25->_isFutureMedia;
            v12 = [(ATXAction *)v35 initWithIntent:v33 actionUUID:v25->_actionUUID bundleId:v25->_bundleId heuristic:v25->_heuristic heuristicMetadata:v25->_heuristicMetadata criteria:0 isFutureMedia:v59 title:v34 subtitle:v25->_subtitle];

            v7 = v60;
          }

          else
          {
            v12 = v25;
          }
        }

        else
        {
          v58 = __atxlog_handle_action_prediction();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            [ATXAction copyWithParameterAllowList:metadataProvider:];
          }

          v12 = self;
        }
      }

      else
      {
        v57 = __atxlog_handle_action_prediction();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
        {
          [ATXAction copyWithParameterAllowList:metadataProvider:];
        }

        v12 = self;
      }
    }

    else
    {
      v36 = [v16 _emptyCopy];

      v62 = self;
      v37 = [(ATXAction *)self intent];
      v38 = [v37 atx_nonNilParameters];
      v39 = [v38 mutableCopy];

      [v39 intersectSet:v6];
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v40 = v39;
      v41 = [v40 countByEnumeratingWithState:&v70 objects:v78 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v71;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v71 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v70 + 1) + 8 * i);
            v46 = [v37 atx_parameterValueForKey:v45];
            [v36 setValue:v46 forKey:v45];
          }

          v42 = [v40 countByEnumeratingWithState:&v70 objects:v78 count:16];
        }

        while (v42);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v65 containsObject:@"buckets"] & 1) == 0)
      {
        v61 = v7;
        v63 = objc_opt_new();
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v47 = [(ATXAction *)v62 intent];
        v48 = [v47 buckets];

        obj = v48;
        v49 = [v48 countByEnumeratingWithState:&v66 objects:v77 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v67;
          v52 = 1;
          do
          {
            for (j = 0; j != v50; ++j)
            {
              if (*v67 != v51)
              {
                objc_enumerationMutation(obj);
              }

              v54 = *(*(&v66 + 1) + 8 * j);
              v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bucket_%i", v52];
              if ([v65 containsObject:v55])
              {
                [v63 addObject:v54];
              }

              v52 = (v52 + 1);
            }

            v50 = [obj countByEnumeratingWithState:&v66 objects:v77 count:16];
          }

          while (v50);
        }

        [v36 setValue:v63 forKey:@"buckets"];
        v7 = v61;
      }

      v56 = [ATXAction alloc];
      LOBYTE(v59) = v62->_isFutureMedia;
      v12 = [(ATXAction *)v56 initWithIntent:v36 actionUUID:v62->_actionUUID bundleId:v62->_bundleId heuristic:v62->_heuristic heuristicMetadata:v62->_heuristicMetadata criteria:0 isFutureMedia:v59 title:0 subtitle:0];
    }
  }

  return v12;
}

uint64_t __57__ATXAction_copyWithParameterAllowList_metadataProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) parameters];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__ATXAction_copyWithParameterAllowList_metadataProvider___block_invoke_2;
  v10[3] = &unk_1E80C1BA8;
  v11 = v3;
  v5 = v3;
  v6 = [v4 _pas_filteredArrayWithTest:v10];
  v7 = [v6 firstObject];

  v8 = [v7 isOptional];
  return v8;
}

uint64_t __57__ATXAction_copyWithParameterAllowList_metadataProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)json
{
  v20[8] = *MEMORY[0x1E69E9840];
  v20[0] = self->_bundleId;
  v19[0] = @"bundleId";
  v19[1] = @"description";
  v3 = [(ATXAction *)self actionDescription];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = v3;
  v20[1] = v3;
  v19[2] = @"type";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_actionType];
  v20[2] = v18;
  v19[3] = @"heuristic";
  heuristic = self->_heuristic;
  v6 = heuristic;
  if (!heuristic)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v6;
  v20[3] = v6;
  v19[4] = @"criteria";
  v7 = [(ATXAction *)self criteria];
  v8 = [v7 json];
  v20[4] = v8;
  v19[5] = @"actionUUID";
  v9 = [(NSUUID *)self->_actionUUID UUIDString];
  v20[5] = v9;
  v19[6] = @"actionTitle";
  v10 = [(ATXAction *)self actionTitle];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v20[6] = v11;
  v19[7] = @"actionSubtitle";
  v12 = [(ATXAction *)self actionSubtitle];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v20[7] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:8];
  if (!v12)
  {
  }

  if (!v10)
  {
  }

  if (!heuristic)
  {
  }

  if (!v4)
  {
  }

  return v14;
}

- (id)obfuscatedJsonWithMapping:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"criteria", @"actionUUID", @"actionType", @"heuristic", 0}];
  v6 = [(ATXAction *)self copyWithParameterWhitelist:v5];
  v7 = [v6 json];
  v8 = [v7 mutableCopy];

  [v8 removeObjectForKey:@"bundleId"];
  [v8 removeObjectForKey:@"description"];
  v9 = [(ATXAction *)self intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [(ATXAction *)self intent];
    v12 = [v11 conversationIdentifier];

    if (v12)
    {
      v13 = [v4 objectForKeyedSubscript:v12];
      if (!v13)
      {
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
        [v4 setObject:v13 forKeyedSubscript:v12];
      }

      [v8 setObject:v13 forKeyedSubscript:@"obfuscatedConversationIdentifier"];
    }
  }

  return v8;
}

- (ATXActionCriteria)criteria
{
  criteria = self->_criteria;
  if (criteria)
  {
    v3 = criteria;
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (void)setHeuristic:(id)a3
{
  v4 = [a3 copy];
  heuristic = self->_heuristic;
  self->_heuristic = v4;

  MEMORY[0x1EEE66BB8](v4, heuristic);
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8](v4, title);
}

- (id)predictionTypeStringForPET
{
  if ([(ATXAction *)self isHeuristic])
  {
    v3 = [@"heuristic_" stringByAppendingString:self->_heuristic];
  }

  else if ([(ATXAction *)self isFutureMedia])
  {
    v3 = @"upcoming_media";
  }

  else
  {
    v3 = @"default";
  }

  return v3;
}

- (id)_bundleIdForDisplay
{
  v3 = [(ATXAction *)self bundleId];
  v4 = [(ATXAction *)self intent];

  if (v4)
  {
    v5 = [(ATXAction *)self intent];
    v6 = [v5 _intents_bundleIdForDisplay];
LABEL_7:
    v9 = v6;
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v3;
    }

    v11 = v10;

    goto LABEL_11;
  }

  v7 = [(ATXAction *)self userActivity];
  if (v7)
  {

LABEL_6:
    v5 = [(ATXAction *)self bundleId];
    v6 = INDisplayableOrLaunchableBundleIdForBundleIdFromUserActivity();
    goto LABEL_7;
  }

  v8 = [(ATXAction *)self userActivityProxy];

  if (v8)
  {
    goto LABEL_6;
  }

  v11 = v3;
LABEL_11:

  return v11;
}

- (id)_spotlightContentType
{
  v3 = [(ATXAction *)self intent];
  if (!v3)
  {
    if (!self->_userActivityString && !self->_userActivityProxy)
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [ATXAction _spotlightContentType];
      }
    }

    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E696E5B0];
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && (-[ATXAction intent](self, "intent"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 callCapability], v6, v7 == 1))
  {
    v4 = MEMORY[0x1E696E590];
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && (-[ATXAction intent](self, "intent"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 callCapability], v8, v9 == 2))
  {
    v4 = MEMORY[0x1E696E5B8];
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_21:
    v4 = MEMORY[0x1E696E598];
    goto LABEL_22;
  }

  v10 = [(ATXAction *)self routeInfo];
  if (v10 && (v11 = v10, -[ATXAction routeInfo](self, "routeInfo"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isExternalRoute], v12, v11, (v13 & 1) != 0))
  {
    v4 = MEMORY[0x1E696E5A0];
  }

  else
  {
    v4 = MEMORY[0x1E696E5A8];
  }

LABEL_22:
  v14 = *v4;
  v15 = *v4;

  return v14;
}

+ (id)actionFromProactiveSuggestion:(id)a3
{
  v3 = a3;
  v4 = [v3 executableSpecification];
  v5 = [v4 executableType];

  if (v5 == 2)
  {
    v6 = [v3 executableSpecification];
    v7 = [v6 executableClassString];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 isEqualToString:v9];

    if (v10)
    {
      v11 = [v3 executableSpecification];
      v12 = [v11 executableObject];

      if (v12)
      {
        goto LABEL_11;
      }

      v13 = __atxlog_handle_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        +[ATXAction actionFromProactiveSuggestion:];
      }
    }

    else
    {
      v13 = __atxlog_handle_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        +[ATXAction actionFromProactiveSuggestion:];
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_11:

  return v12;
}

- (id)underlyingInteraction
{
  v3 = [(ATXAction *)self intent];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696E8B8]);
    v5 = [(ATXAction *)self intent];
    v6 = [v4 initWithIntent:v5 response:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"heuristicMetadata"];

  v64[0] = 0;
  v9 = objc_opt_class();
  v10 = _decodeTopLevelObjectOrFail(v4, v9, @"INIntent", 0, v64);
  v11 = v10;
  if (v64[0])
  {

    v12 = 0;
  }

  else
  {
    v64[0] = 0;
    v13 = objc_opt_class();
    v14 = _decodeTopLevelObjectOrFail(v4, v13, @"userActivityProxy", 0, v64);
    v15 = v14;
    if (v64[0])
    {

      v12 = 0;
    }

    else
    {
      v64[0] = 0;
      v16 = objc_opt_class();
      v17 = _decodeTopLevelObjectOrFail(v4, v16, @"userActivityStr", 0, v64);
      v18 = v17;
      if (v64[0])
      {

        v12 = 0;
      }

      else
      {
        v64[0] = 0;
        v19 = objc_opt_class();
        v20 = _decodeTopLevelObjectOrFail(v4, v19, @"itemIdentifier", 0, v64);
        v21 = v20;
        if (v64[0])
        {

          v12 = 0;
        }

        else
        {
          v64[0] = 0;
          v22 = objc_opt_class();
          v23 = _decodeTopLevelObjectOrFail(v4, v22, @"contentAttributeSet", 0, v64);
          v24 = v23;
          if (v64[0])
          {

            v12 = 0;
          }

          else
          {
            if (v11)
            {
              v63 = [[ATXLazyIntent alloc] initWithIntent:v11];
            }

            else
            {
              v63 = 0;
            }

            v64[0] = 0;
            v25 = objc_opt_class();
            v26 = _decodeArrayOrFail(v4, v25, @"menuItemPath", v64);
            if (v64[0])
            {

              v12 = 0;
            }

            else
            {
              v62 = v26;
              v64[0] = 0;
              v27 = objc_opt_class();
              v28 = _decodeTopLevelObjectOrFail(v4, v27, @"actionUUID", 1, v64);
              if (v64[0])
              {

                v12 = 0;
              }

              else
              {
                v61 = v28;
                v64[0] = 0;
                v29 = objc_opt_class();
                v30 = _decodeTopLevelObjectOrFail(v4, v29, @"bundleId", 1, v64);
                if (v64[0])
                {

                  v12 = 0;
                }

                else
                {
                  v60 = v30;
                  v31 = [v4 decodeIntegerForKey:@"actionType"];
                  v64[0] = 0;
                  v32 = objc_opt_class();
                  v33 = _decodeTopLevelObjectOrFail(v4, v32, @"heuristic", 0, v64);
                  if (v64[0])
                  {

                    v12 = 0;
                  }

                  else
                  {
                    v59 = v33;
                    v64[0] = 0;
                    v34 = objc_opt_class();
                    v35 = _decodeTopLevelObjectOrFail(v4, v34, @"criteria", 0, v64);
                    if (v64[0])
                    {

                      v12 = 0;
                    }

                    else
                    {
                      v58 = v35;
                      v56 = [v4 decodeBoolForKey:@"isFutureMedia"];
                      v64[0] = 0;
                      v36 = objc_opt_class();
                      v37 = _decodeTopLevelObjectOrFail(v4, v36, @"routeInfo", 0, v64);
                      if (v64[0])
                      {

                        v12 = 0;
                      }

                      else
                      {
                        v57 = v37;
                        v64[0] = 0;
                        v38 = objc_opt_class();
                        v39 = _decodeTopLevelObjectOrFail(v4, v38, @"title", 0, v64);
                        if (v64[0])
                        {

                          v12 = 0;
                        }

                        else
                        {
                          v55 = v39;
                          v64[0] = 0;
                          v40 = objc_opt_class();
                          v41 = _decodeTopLevelObjectOrFail(v4, v40, @"subtitle", 0, v64);
                          if (v64[0])
                          {

                            v12 = 0;
                          }

                          else
                          {
                            v54 = v41;
                            v64[0] = 0;
                            v42 = objc_opt_class();
                            v43 = _decodeTopLevelObjectOrFail(v4, v42, @"languageCode", 0, v64);
                            if (v64[0])
                            {

                              v12 = 0;
                            }

                            else
                            {
                              v53 = v43;
                              v64[0] = 0;
                              v44 = objc_opt_class();
                              v52 = _decodeTopLevelObjectOrFail(v4, v44, @"toolInvocationID", 0, v64);
                              if (v64[0])
                              {

                                v12 = 0;
                              }

                              else
                              {
                                v64[0] = 0;
                                v45 = objc_opt_class();
                                v51 = _decodeTopLevelObjectOrFail(v4, v45, @"encodedToolInvocation", 0, v64);
                                if (v64[0])
                                {

                                  v12 = 0;
                                }

                                else
                                {
                                  v64[0] = 0;
                                  v46 = objc_opt_class();
                                  v47 = _decodeArrayOrFail(v4, v46, @"parameterKeysForToolInvocation", v64);
                                  v48 = v47;
                                  if (v64[0])
                                  {

                                    v12 = 0;
                                  }

                                  else
                                  {
                                    LOBYTE(v50) = v56;
                                    self = [(ATXAction *)self initWithActivityProxy:v15 activity:0 activityString:v18 itemIdentifier:v21 contentAttributeSet:v24 intent:v63 menuItemPath:v62 actionUUID:v61 bundleId:v60 type:v31 heuristic:v59 heuristicMetadata:v8 criteria:v58 isFutureMedia:v50 routeInfo:v57 title:v55 subtitle:v54 languageCode:v53 cachedHash:0 toolInvocationID:v52 encodedToolInvocation:v51 parameterKeysForToolInvocation:v47];

                                    v12 = self;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            if (v11)
            {
            }
          }
        }
      }
    }
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXAction *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];
  if (v5)
  {
    v6 = [(ATXAction *)self initWithProtoData:v5];
  }

  else
  {
    v6 = [(ATXAction *)self _initWithCoder:v4];
  }

  v7 = v6;

  return v7;
}

- (BOOL)isTVAction
{
  v2 = self;
  v3 = [(ATXAction *)self intent];
  LOBYTE(v2) = [ATXAction _isTVIntent:v3 bundleId:v2->_bundleId];

  return v2;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v5 = a3;
    v6 = [[a1 alloc] initWithProtoData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)atx_doNotDisturbForCurrentLocationActionWithTitle:(id)a3 subtitle:(id)a4 heuristicName:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = initializeDNDToggleDoNotDisturbIntent();
  v11 = v10;
  if (v10)
  {
    [v10 setValue:&unk_1F3E60468 forKey:@"state"];
    v12 = [objc_alloc(MEMORY[0x1E696E910]) initWithIdentifier:0 displayString:&stru_1F3E050C8];
    [v11 setValue:v12 forKey:@"location"];

    v13 = [ATXAction alloc];
    v14 = objc_opt_new();
    LOBYTE(v17) = 0;
    v15 = [(ATXAction *)v13 initWithIntent:v11 actionUUID:v14 bundleId:@"com.apple.Preferences" heuristic:v9 heuristicMetadata:0 criteria:0 isFutureMedia:v17 title:v7 subtitle:v8];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)atx_doNotDisturbForEventActionWithTitle:(id)a3 subtitle:(id)a4 eventTitle:(id)a5 eventIdentifier:(id)a6 eventUniqueID:(id)a7 heuristicName:(id)a8
{
  v29[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = initializeDNDToggleDoNotDisturbIntent();
  v20 = v19;
  if (v19)
  {
    [v19 setValue:&unk_1F3E60468 forKey:@"state"];
    v21 = [objc_alloc(MEMORY[0x1E696E910]) initWithIdentifier:v17 displayString:v15];
    [v20 setValue:v21 forKey:@"event"];

    if (v16)
    {
      v28 = @"eventIdentifier";
      v29[0] = v16;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    }

    else
    {
      v22 = 0;
    }

    v24 = [ATXAction alloc];
    v25 = objc_opt_new();
    LOBYTE(v27) = 0;
    v23 = [(ATXAction *)v24 initWithIntent:v20 actionUUID:v25 bundleId:@"com.apple.Preferences" heuristic:v18 heuristicMetadata:v22 criteria:0 isFutureMedia:v27 title:v13 subtitle:v14];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)atx_startCallActionWithTitle:(id)a3 subtitle:(id)a4 recipientName:(id)a5 recipientHandle:(id)a6 callService:(id)a7 contactIdentifier:(id)a8 eventIdentifier:(id)a9 heuristicName:(id)a10 mediaType:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = v25;
  if (!v25)
  {
    goto LABEL_5;
  }

  v27 = [v25 integerValue];
  if (v27)
  {
    if (v27 == 2)
    {
      v28 = [a1 atx_startVideoCallActionWithTitle:v17 subtitle:v18 recipientName:v19 recipientHandle:v20 callService:v21 contactIdentifier:v22 eventIdentifier:v23 heuristicName:v24];
      goto LABEL_7;
    }

    if (v27 == 1)
    {
LABEL_5:
      v28 = [a1 atx_startAudioCallActionWithTitle:v17 subtitle:v18 recipientName:v19 recipientHandle:v20 callService:v21 contactIdentifier:v22 eventIdentifier:v23 heuristicName:v24];
LABEL_7:
      v29 = v28;
      goto LABEL_13;
    }

    v30 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      +[ATXAction(Factory) atx_startCallActionWithTitle:subtitle:recipientName:recipientHandle:callService:contactIdentifier:eventIdentifier:heuristicName:mediaType:];
    }
  }

  else
  {
    v30 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      +[ATXAction(Factory) atx_startCallActionWithTitle:subtitle:recipientName:recipientHandle:callService:contactIdentifier:eventIdentifier:heuristicName:mediaType:];
    }
  }

  v29 = 0;
LABEL_13:

  return v29;
}

+ (id)atx_startVideoCallActionWithTitle:(id)a3 subtitle:(id)a4 recipientName:(id)a5 recipientHandle:(id)a6 callService:(id)a7 contactIdentifier:(id)a8 eventIdentifier:(id)a9 heuristicName:(id)a10
{
  v33[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a9;
  v19 = a10;
  v20 = personFromCallRecipient(a8, a6, a5);
  v21 = objc_alloc(MEMORY[0x1E696EA60]);
  v33[0] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v23 = [v21 initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:0 destinationType:1 contacts:v22 callCapability:2];

  v24 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    +[ATXAction(Factory) atx_startVideoCallActionWithTitle:subtitle:recipientName:recipientHandle:callService:contactIdentifier:eventIdentifier:heuristicName:];
  }

  if ([v17 isEqualToString:@"facetime"])
  {
    [v23 _setLaunchId:@"com.apple.InCallService"];
    [v23 _setExtensionBundleId:@"com.apple.TelephonyUtilities.PhoneIntentHandler"];
    [v23 setPreferredCallProvider:2];
    if (v18)
    {
      v31 = @"eventIdentifier";
      v32 = v18;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    }

    else
    {
      v25 = 0;
    }

    v27 = [ATXAction alloc];
    v28 = objc_opt_new();
    LOBYTE(v30) = 0;
    v26 = [(ATXAction *)v27 initWithIntent:v23 actionUUID:v28 bundleId:@"com.apple.InCallService" heuristic:v19 heuristicMetadata:v25 criteria:0 isFutureMedia:v30 title:v15 subtitle:v16];
  }

  else
  {
    v25 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      +[ATXAction(Factory) atx_startVideoCallActionWithTitle:subtitle:recipientName:recipientHandle:callService:contactIdentifier:eventIdentifier:heuristicName:];
    }

    v26 = 0;
  }

  return v26;
}

+ (id)atx_setAirplaneModeActionWithTitle:(id)a3 subtitle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = loadIntentWithBundleIdAndName(@"com.apple.ActionKit.BundledIntentHandler", @"WFSetAirplaneModeIntent");
  v9 = v8;
  if (v8)
  {
    [v8 _setExtensionBundleId:@"com.apple.ActionKit.BundledIntentHandler"];
    [v9 _setLaunchId:@"com.apple.ActionKit.BundledIntentHandler"];
    [v9 setValue:MEMORY[0x1E695E118] forKey:@"state"];
    [v9 setValue:&unk_1F3E60468 forKey:@"operation"];
    v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.proactive.HeuristicInterpreter"];
    v11 = [v10 URLForResource:@"AirplaneMode" withExtension:@"png"];

    if (v11)
    {
      v12 = [MEMORY[0x1E696E868] imageWithURL:v11];
      [v9 setImage:v12 forParameterNamed:@"state"];
    }

    v13 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      +[ATXAction(Factory) atx_setAirplaneModeActionWithTitle:subtitle:];
    }

    v14 = [ATXAction alloc];
    v15 = objc_opt_new();
    LOBYTE(v18) = 0;
    v16 = [(ATXAction *)v14 initWithIntent:v9 actionUUID:v15 bundleId:@"com.apple.Preferences" heuristic:@"enableAirplaneMode" heuristicMetadata:0 criteria:0 isFutureMedia:v18 title:v5 subtitle:v6];
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v16;
}

+ (id)atx_startAudioCallActionWithTitle:(id)a3 subtitle:(id)a4 recipientName:(id)a5 recipientHandle:(id)a6 callService:(id)a7 contactIdentifier:(id)a8 eventIdentifier:(id)a9 heuristicName:(id)a10
{
  v34[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a9;
  v19 = a10;
  v20 = personFromCallRecipient(a8, a6, a5);
  v21 = objc_alloc(MEMORY[0x1E696EA60]);
  v34[0] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v23 = [v21 initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:0 destinationType:1 contacts:v22 callCapability:1];

  v24 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    +[ATXAction(Factory) atx_startVideoCallActionWithTitle:subtitle:recipientName:recipientHandle:callService:contactIdentifier:eventIdentifier:heuristicName:];
  }

  if ([v17 isEqualToString:@"phone"])
  {
    v25 = 1;
LABEL_7:
    [v23 _setLaunchId:@"com.apple.InCallService"];
    [v23 _setExtensionBundleId:@"com.apple.TelephonyUtilities.PhoneIntentHandler"];
    [v23 setPreferredCallProvider:v25];
    [v23 setTTYType:1];
    if (v18)
    {
      v32 = @"eventIdentifier";
      v33 = v18;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    }

    else
    {
      v26 = 0;
    }

    v27 = [ATXAction alloc];
    v28 = objc_opt_new();
    LOBYTE(v31) = 0;
    v29 = [(ATXAction *)v27 initWithIntent:v23 actionUUID:v28 bundleId:@"com.apple.InCallService" heuristic:v19 heuristicMetadata:v26 criteria:0 isFutureMedia:v31 title:v15 subtitle:v16];

    goto LABEL_14;
  }

  if ([v17 isEqualToString:@"facetime"])
  {
    v25 = 2;
    goto LABEL_7;
  }

  v26 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    +[ATXAction(Factory) atx_startAudioCallActionWithTitle:subtitle:recipientName:recipientHandle:callService:contactIdentifier:eventIdentifier:heuristicName:];
  }

  v29 = 0;
LABEL_14:

  return v29;
}

+ (id)atx_sendMessageActionWithTitle:(id)a3 subtitle:(id)a4 recipientName:(id)a5 recipientHandle:(id)a6 text:(id)a7 contactIdentifier:(id)a8 conversationIdentifier:(id)a9 eventIdentifier:(id)a10 heuristicName:(id)a11
{
  v40[1] = *MEMORY[0x1E69E9840];
  v35 = a10;
  v17 = MEMORY[0x1E696E948];
  v37 = a11;
  v36 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [[v17 alloc] initWithValue:v20 type:0];
  v25 = [objc_alloc(MEMORY[0x1E696E940]) initWithPersonHandle:v24 nameComponents:0 displayName:v21 image:0 contactIdentifier:v18 customIdentifier:v20];

  v26 = objc_alloc(MEMORY[0x1E696E9E8]);
  v40[0] = v25;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v28 = [v26 initWithRecipients:v27 outgoingMessageType:0 content:v19 speakableGroupName:0 conversationIdentifier:v36 serviceName:0 sender:0 attachments:0];

  if (v35)
  {
    v38 = @"eventIdentifier";
    v39 = v35;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  }

  else
  {
    v29 = 0;
  }

  v30 = [ATXAction alloc];
  v31 = objc_opt_new();
  LOBYTE(v34) = 0;
  v32 = [(ATXAction *)v30 initWithIntent:v28 actionUUID:v31 bundleId:@"com.apple.MobileSMS" heuristic:v37 heuristicMetadata:v29 criteria:0 isFutureMedia:v34 title:v23 subtitle:v22];

  return v32;
}

+ (id)atx_userActivityActionWithBestAppSuggestion:(id)a3 title:(id)a4 subtitle:(id)a5 bundleID:(id)a6 activityType:(id)a7 heuristicName:(id)a8
{
  v12 = a5;
  v13 = MEMORY[0x1E69DF010];
  v14 = a8;
  v15 = a6;
  v16 = a4;
  v17 = a3;
  v18 = [[v13 alloc] initWithSuggestion:v17];

  if ([v12 length])
  {
    v19 = objc_alloc(MEMORY[0x1E6964E90]);
    v20 = [v19 initWithContentType:*MEMORY[0x1E6982D50]];
    [v20 setContentDescription:v12];
  }

  else
  {
    v21 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v21, OS_LOG_TYPE_INFO, "BestAppSuggestion didn't have a valid subtitle, either because it was an empty string or it was 'null'.", buf, 2u);
    }

    v20 = 0;
  }

  v22 = [ATXAction alloc];
  v23 = objc_opt_new();
  LOBYTE(v26) = 0;
  v24 = [(ATXAction *)v22 initFromBestAppSuggestion:v18 activity:0 actionUUID:v23 bundleId:v15 contentAttributeSet:v20 itemIdentifier:0 heuristic:v14 heuristicMetadata:0 criteria:0 isFutureMedia:v26 title:v16 subtitle:v12];

  return v24;
}

+ (id)webUrlParsedForUserActivityWithUrlString:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v4 = 0;
    goto LABEL_10;
  }

  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  if (v4 && (v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v4 resolvingAgainstBaseURL:1]) != 0)
  {
    v6 = v5;
    v7 = [v5 scheme];
    v8 = [v7 lowercaseString];

    if ([v8 isEqualToString:@"http"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"https"))
    {

LABEL_10:
      v4 = v4;
      v9 = v4;
      goto LABEL_15;
    }

    v10 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "Unsupported NSUA URL scheme: %@", &v12, 0xCu);
    }
  }

  else
  {
    v6 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v3;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "Invalid URL: '%@'", &v12, 0xCu);
    }
  }

  v9 = 0;
LABEL_15:

  return v9;
}

+ (id)atx_userActivityActionWithTitle:(id)a3 subtitle:(id)a4 bundleID:(id)a5 activityType:(id)a6 urlString:(id)a7 userInfo:(id)a8 heuristicName:(id)a9
{
  v43[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  context = objc_autoreleasePoolPush();
  v22 = [a1 webUrlParsedForUserActivityWithUrlString:v19];
  v39 = v18;
  v23 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:v18];
  v40 = v15;
  [v23 setTitle:v15];
  if (v20)
  {
    [v23 setUserInfo:v20];
  }

  if (v22)
  {
    [v23 setWebpageURL:v22];
  }

  v24 = [v22 host];
  v25 = [v24 isEqualToString:@"trackingshipment.apple.com"];

  if ([v22 atx_isOpenableFaceTimeURL])
  {

    v17 = @"com.apple.InCallService";
  }

  if (v22 && !(v25 & 1 | (([(__CFString *)v17 isEqualToString:@"com.apple.mobilesafari"]& 1) == 0)))
  {
    v28 = [v22 _lp_simplifiedDisplayString];
    v42 = @"contentDescription";
    v43[0] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    [v23 _setContentAttributes:v29];

    v30 = objc_alloc(MEMORY[0x1E6964E90]);
    v27 = [v30 initWithContentType:*MEMORY[0x1E6982D50]];
    [v27 setContentDescription:v28];
  }

  else if ([v16 length])
  {
    v26 = objc_alloc(MEMORY[0x1E6964E90]);
    v27 = [v26 initWithContentType:*MEMORY[0x1E6982D50]];
    [v27 setContentDescription:v16];
  }

  else
  {
    v31 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v31, OS_LOG_TYPE_INFO, "NSUA didn't have a valid subtitle, either because it was an empty string or it was 'null'.", buf, 2u);
    }

    v27 = 0;
  }

  v32 = v16;
  v33 = [ATXAction alloc];
  v34 = objc_opt_new();
  LOBYTE(v37) = 0;
  v35 = [(ATXAction *)v33 initWithNSUserActivity:v23 actionUUID:v34 bundleId:v17 contentAttributeSet:v27 itemIdentifier:0 heuristic:v21 heuristicMetadata:0 criteria:0 isFutureMedia:v37 title:0 subtitle:0];

  objc_autoreleasePoolPop(context);

  return v35;
}

+ (id)atx_updateAlarmActionWithTitle:(id)a3 subtitle:(id)a4 alarmID:(id)a5 alarmTitle:(id)a6 heuristicName:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v18 = getMTUpdateAlarmIntentClass_softClass;
  v34 = getMTUpdateAlarmIntentClass_softClass;
  if (!getMTUpdateAlarmIntentClass_softClass)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __getMTUpdateAlarmIntentClass_block_invoke;
    v30[3] = &unk_1E80C0758;
    v30[4] = &v31;
    __getMTUpdateAlarmIntentClass_block_invoke(v30);
    v18 = v32[3];
  }

  v19 = v18;
  _Block_object_dispose(&v31, 8);
  if (!v18)
  {
    [ATXAction(Factory) atx_updateAlarmActionWithTitle:a2 subtitle:a1 alarmID:? alarmTitle:? heuristicName:?];
  }

  v20 = objc_opt_new();
  [v20 _setExtensionBundleId:@"com.apple.mobiletimer-framework.MobileTimerIntents"];
  [v20 _setLaunchId:@"com.apple.mobiletimer"];
  [v20 _setNanoLaunchId:@"com.apple.NanoAlarm"];
  v21 = [objc_alloc(MEMORY[0x1E696E910]) initWithIdentifier:v15 displayString:v16];
  [v20 setAlarmID:v21];

  v22 = INIntentWithTypedIntent();
  if (v22)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [ATXAction alloc];
      v24 = objc_opt_new();
      LOBYTE(v29) = 0;
      v25 = [(ATXAction *)v23 initWithIntent:v22 actionUUID:v24 bundleId:@"com.apple.mobiletimer" heuristic:v17 heuristicMetadata:0 criteria:0 isFutureMedia:v29 title:v13 subtitle:v14];

      goto LABEL_15;
    }

    v27 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      +[ATXAction(Factory) atx_updateAlarmActionWithTitle:subtitle:alarmID:alarmTitle:heuristicName:];
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Generic intent created from MTUpdateAlarmIntent is not an INIntent object."];
  }

  else
  {
    v26 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      +[ATXAction(Factory) atx_updateAlarmActionWithTitle:subtitle:alarmID:alarmTitle:heuristicName:];
    }
  }

  v25 = 0;
LABEL_15:

  return v25;
}

+ (id)atx_setAlarmActionWithTitle:(id)a3 subtitle:(id)a4 eventIdentifier:(id)a5 eventTitle:(id)a6 alarmDate:(id)a7 heuristicName:(id)a8
{
  v51[1] = *MEMORY[0x1E69E9840];
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v43 = a6;
  v44 = a7;
  v42 = a8;
  context = objc_autoreleasePoolPush();
  v15 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v16 = [v15 components:96 fromDate:v44];
  v17 = [v16 hour];
  v18 = [v16 minute];
  v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v20 = [v15 dateBySettingHour:v17 minute:v18 second:0 ofDate:v19 options:0];

  v21 = [MEMORY[0x1E696AB78] localizedStringFromDate:v20 dateStyle:0 timeStyle:1];
  v22 = MEMORY[0x1E696AEC0];
  [v20 timeIntervalSinceReferenceDate];
  v24 = [v22 stringWithFormat:@"%f", v23];
  v46 = 0;
  v47 = &v46;
  v48 = 0x2050000000;
  v25 = getMTCreateAlarmIntentClass_softClass;
  v49 = getMTCreateAlarmIntentClass_softClass;
  if (!getMTCreateAlarmIntentClass_softClass)
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __getMTCreateAlarmIntentClass_block_invoke;
    v45[3] = &unk_1E80C0758;
    v45[4] = &v46;
    __getMTCreateAlarmIntentClass_block_invoke(v45);
    v25 = v47[3];
  }

  v26 = v25;
  _Block_object_dispose(&v46, 8);
  if (!v25)
  {
    [ATXAction(Factory) atx_setAlarmActionWithTitle:a2 subtitle:a1 eventIdentifier:? eventTitle:? alarmDate:? heuristicName:?];
  }

  v27 = objc_opt_new();
  [v27 _setExtensionBundleId:@"com.apple.mobiletimer-framework.MobileTimerIntents"];
  [v27 _setLaunchId:@"com.apple.mobiletimer"];
  [v27 _setNanoLaunchId:@"com.apple.NanoAlarm"];
  [v27 setRequiresAppLaunch:1];
  [v27 setLabel:v43];
  v28 = [objc_alloc(MEMORY[0x1E696E910]) initWithIdentifier:v24 displayString:v21];
  [v27 setTime:v28];

  v29 = INIntentWithTypedIntent();
  if (v29)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v41)
      {
        v50 = @"eventIdentifier";
        v51[0] = v41;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
      }

      else
      {
        v30 = 0;
      }

      v34 = [ATXAction alloc];
      v35 = objc_opt_new();
      LOBYTE(v37) = 0;
      v33 = [(ATXAction *)v34 initWithIntent:v29 actionUUID:v35 bundleId:@"com.apple.mobiletimer" heuristic:v42 heuristicMetadata:v30 criteria:0 isFutureMedia:v37 title:v39 subtitle:v40];

      goto LABEL_18;
    }

    v32 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      +[ATXAction(Factory) atx_setAlarmActionWithTitle:subtitle:eventIdentifier:eventTitle:alarmDate:heuristicName:];
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Generic intent created from MTCreateAlarmIntent is not an INIntent object."];
  }

  else
  {
    v31 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      +[ATXAction(Factory) atx_setAlarmActionWithTitle:subtitle:eventIdentifier:eventTitle:alarmDate:heuristicName:];
    }
  }

  v33 = 0;
LABEL_18:

  objc_autoreleasePoolPop(context);

  return v33;
}

+ (id)atx_showCheckInActionWithTeamId:(id)a3 userActivityString:(id)a4 subtitle:(id)a5 overrideBundleId:(id)a6 suggestedEventUniqueKey:(id)a7 heuristicName:(id)a8 criteria:(id)a9
{
  v68 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if (![v14 length])
  {
    v24 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      +[ATXAction(Factory) atx_showCheckInActionWithTeamId:userActivityString:subtitle:overrideBundleId:suggestedEventUniqueKey:heuristicName:criteria:];
    }

    goto LABEL_15;
  }

  if (![v15 length])
  {
    v24 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      +[ATXAction(Factory) atx_showCheckInActionWithTeamId:userActivityString:subtitle:overrideBundleId:suggestedEventUniqueKey:heuristicName:criteria:];
    }

    goto LABEL_15;
  }

  if (![v16 length])
  {
    v24 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      +[ATXAction(Factory) atx_showCheckInActionWithTeamId:userActivityString:subtitle:overrideBundleId:suggestedEventUniqueKey:heuristicName:criteria:];
    }

LABEL_15:
    v26 = 0;
    goto LABEL_36;
  }

  v21 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithUserActivityStrings:v15 secondaryString:0 optionalData:0];
  v61 = v21;
  if (!v21)
  {
    v27 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      +[ATXAction(Factory) atx_showCheckInActionWithTeamId:userActivityString:subtitle:overrideBundleId:suggestedEventUniqueKey:heuristicName:criteria:];
    }

    v24 = 0;
    v26 = 0;
    goto LABEL_35;
  }

  v22 = v21;
  v57 = v19;
  v58 = v20;
  v59 = v16;
  v60 = v18;
  if (v17)
  {
    v23 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v67 = v17;
      _os_log_impl(&dword_1BF549000, v23, OS_LOG_TYPE_INFO, "atx_showCheckInAction: Using fallback bundle. Override bundle is: %@", buf, 0xCu);
    }

    v24 = v22;
    v25 = v17;
    goto LABEL_30;
  }

  v28 = [v21 activityType];
  v29 = _LSCopyAdvertisementStringForTeamIdentifierAndActivityType();

  v30 = v29;
  v55 = [MEMORY[0x1E69635F8] applicationRecordsForUserActivityType:v29 limit:1 error:0];
  v31 = [v55 firstObject];
  v32 = [v31 applicationState];
  v54 = v31;
  if (([v32 isInstalled] & 1) == 0)
  {

    goto LABEL_25;
  }

  v33 = [v31 bundleIdentifier];

  if (!v33)
  {
LABEL_25:
    v38 = [v22 webpageURL];

    v39 = __atxlog_handle_heuristic();
    v40 = v39;
    if (!v38)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        [ATXAction(Factory) atx_showCheckInActionWithTeamId:v22 userActivityString:v40 subtitle:? overrideBundleId:? suggestedEventUniqueKey:? heuristicName:? criteria:?];
      }

      v24 = 0;
      v26 = 0;
      v20 = v58;
      v27 = v30;
      goto LABEL_34;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v41 = [v22 activityType];
      *buf = 138412290;
      v67 = v41;
      _os_log_impl(&dword_1BF549000, v40, OS_LOG_TYPE_INFO, "atx_showCheckInAction: Could not find an installed app to handle activityType='%@'. Using webpageURL to handle in Safari.", buf, 0xCu);
    }

    v42 = objc_alloc(MEMORY[0x1E69636A8]);
    v43 = v22;
    v24 = [v42 initWithActivityType:*MEMORY[0x1E696AA68]];
    v44 = [v43 title];
    [v24 setTitle:v44];

    v45 = [v43 webpageURL];
    [v24 setWebpageURL:v45];

    v37 = @"com.apple.mobilesafari";
    v36 = v54;
    goto LABEL_29;
  }

  v34 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = [v22 activityType];
    *buf = 138412290;
    v67 = v35;
    _os_log_impl(&dword_1BF549000, v34, OS_LOG_TYPE_INFO, "atx_showCheckInAction: Found an installed app that can handle activityType='%@'", buf, 0xCu);
  }

  v24 = v22;
  v36 = v54;
  v37 = [v54 bundleIdentifier];
LABEL_29:

  v25 = v37;
  v16 = v59;
LABEL_30:
  v56 = v17;
  v64 = @"contentDescription";
  v65 = v16;
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  [v24 _setContentAttributes:v46];

  v47 = objc_alloc(MEMORY[0x1E6964E90]);
  v48 = [v47 initWithContentType:*MEMORY[0x1E6982D50]];
  [v48 setContentDescription:v16];
  if (v60)
  {
    v62 = @"uniqueKey";
    v63 = v60;
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  }

  else
  {
    v49 = 0;
  }

  v50 = [ATXAction alloc];
  v51 = objc_opt_new();
  LOBYTE(v53) = 0;
  v20 = v58;
  v26 = [(ATXAction *)v50 initWithNSUserActivity:v24 actionUUID:v51 bundleId:v25 contentAttributeSet:v48 itemIdentifier:0 heuristic:v57 heuristicMetadata:v49 criteria:v58 isFutureMedia:v53 title:0 subtitle:0];

  v27 = v25;
  v19 = v57;
  v18 = v60;
  v17 = v56;
LABEL_34:
  v16 = v59;
LABEL_35:

LABEL_36:

  return v26;
}

- (void)initWithNSUserActivity:(os_log_t)log actionUUID:bundleId:contentAttributeSet:itemIdentifier:heuristic:heuristicMetadata:criteria:isFutureMedia:title:subtitle:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%@ - timed out trying to fetch activityString from NSUserActivity", buf, 0xCu);
}

- (void)initWithActivityProxy:activity:activityString:itemIdentifier:contentAttributeSet:intent:menuItemPath:actionUUID:bundleId:type:heuristic:heuristicMetadata:criteria:isFutureMedia:routeInfo:title:subtitle:languageCode:cachedHash:toolInvocationID:encodedToolInvocation:parameterKeysForToolInvocation:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"bundleId" object:? file:? lineNumber:? description:?];
}

- (void)initWithActivityProxy:activity:activityString:itemIdentifier:contentAttributeSet:intent:menuItemPath:actionUUID:bundleId:type:heuristic:heuristicMetadata:criteria:isFutureMedia:routeInfo:title:subtitle:languageCode:cachedHash:toolInvocationID:encodedToolInvocation:parameterKeysForToolInvocation:.cold.2()
{
  OUTLINED_FUNCTION_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"intent || activityString || userActivityProxy || menuItemPath || toolInvocationID" object:? file:? lineNumber:? description:?];
}

- (uint64_t)initWithActivityProxy:activity:activityString:itemIdentifier:contentAttributeSet:intent:menuItemPath:actionUUID:bundleId:type:heuristic:heuristicMetadata:criteria:isFutureMedia:routeInfo:title:subtitle:languageCode:cachedHash:toolInvocationID:encodedToolInvocation:parameterKeysForToolInvocation:.cold.3()
{
  OUTLINED_FUNCTION_3_2();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  *v0 = v3;
  return [v3 handleFailureInMethod:v2 object:v1 file:@"ATXAction.m" lineNumber:368 description:{@"Invalid parameter not satisfying: %@", @"!(intent && activityString && menuItemPath) && !(intent && activityString) && !(intent && menuItemPath) && !(activityString && menuItemPath)"}];
}

- (uint64_t)initWithActivityProxy:activity:activityString:itemIdentifier:contentAttributeSet:intent:menuItemPath:actionUUID:bundleId:type:heuristic:heuristicMetadata:criteria:isFutureMedia:routeInfo:title:subtitle:languageCode:cachedHash:toolInvocationID:encodedToolInvocation:parameterKeysForToolInvocation:.cold.4()
{
  OUTLINED_FUNCTION_3_2();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  *v0 = v3;
  return [v3 handleFailureInMethod:v2 object:v1 file:@"ATXAction.m" lineNumber:365 description:{@"Invalid parameter not satisfying: %@", @"!intent && !activityString && !menuItemPath && !userActivityProxy"}];
}

- (uint64_t)initWithActivityProxy:activity:activityString:itemIdentifier:contentAttributeSet:intent:menuItemPath:actionUUID:bundleId:type:heuristic:heuristicMetadata:criteria:isFutureMedia:routeInfo:title:subtitle:languageCode:cachedHash:toolInvocationID:encodedToolInvocation:parameterKeysForToolInvocation:.cold.5()
{
  OUTLINED_FUNCTION_3_2();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  *v0 = v3;
  return [v3 handleFailureInMethod:v2 object:v1 file:@"ATXAction.m" lineNumber:363 description:{@"Invalid parameter not satisfying: %@", @"!intent && !activityString && !menuItemPath && !toolInvocationID"}];
}

- (void)initWithActivityProxy:activity:activityString:itemIdentifier:contentAttributeSet:intent:menuItemPath:actionUUID:bundleId:type:heuristic:heuristicMetadata:criteria:isFutureMedia:routeInfo:title:subtitle:languageCode:cachedHash:toolInvocationID:encodedToolInvocation:parameterKeysForToolInvocation:.cold.6()
{
  OUTLINED_FUNCTION_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"actionType < ATXActionTypeMax" object:? file:? lineNumber:? description:?];
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBAction proto", v5, 0xCu);
}

- (void)initWithProto:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithProto:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)proto
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_userActivityHashForUserInfoDict:activityType:webpageURL:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)getDateFromUserActivityString:forActionKey:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"userActivityString" object:? file:? lineNumber:? description:?];
}

+ (void)getDateFromUserActivityString:forActionKey:.cold.2()
{
  OUTLINED_FUNCTION_5();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"actionKey" object:? file:? lineNumber:? description:?];
}

- (void)actionKey
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)copyWithParameterAllowList:metadataProvider:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_spotlightContentType
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)actionFromProactiveSuggestion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)actionFromProactiveSuggestion:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

@end