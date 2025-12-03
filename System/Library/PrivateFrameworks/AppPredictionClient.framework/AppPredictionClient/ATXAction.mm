@interface ATXAction
+ (BOOL)_isTVIntent:(id)intent bundleId:(id)id;
+ (id)_extractValueInKeyValueBlob:(id)blob withKey:(id)key;
+ (id)actionFromProactiveSuggestion:(id)suggestion;
+ (id)atx_doNotDisturbForCurrentLocationActionWithTitle:(id)title subtitle:(id)subtitle heuristicName:(id)name;
+ (id)atx_doNotDisturbForEventActionWithTitle:(id)title subtitle:(id)subtitle eventTitle:(id)eventTitle eventIdentifier:(id)identifier eventUniqueID:(id)d heuristicName:(id)name;
+ (id)atx_sendMessageActionWithTitle:(id)title subtitle:(id)subtitle recipientName:(id)name recipientHandle:(id)handle text:(id)text contactIdentifier:(id)identifier conversationIdentifier:(id)conversationIdentifier eventIdentifier:(id)self0 heuristicName:(id)self1;
+ (id)atx_setAirplaneModeActionWithTitle:(id)title subtitle:(id)subtitle;
+ (id)atx_setAlarmActionWithTitle:(id)title subtitle:(id)subtitle eventIdentifier:(id)identifier eventTitle:(id)eventTitle alarmDate:(id)date heuristicName:(id)name;
+ (id)atx_showCheckInActionWithTeamId:(id)id userActivityString:(id)string subtitle:(id)subtitle overrideBundleId:(id)bundleId suggestedEventUniqueKey:(id)key heuristicName:(id)name criteria:(id)criteria;
+ (id)atx_startAudioCallActionWithTitle:(id)title subtitle:(id)subtitle recipientName:(id)name recipientHandle:(id)handle callService:(id)service contactIdentifier:(id)identifier eventIdentifier:(id)eventIdentifier heuristicName:(id)self0;
+ (id)atx_startCallActionWithTitle:(id)title subtitle:(id)subtitle recipientName:(id)name recipientHandle:(id)handle callService:(id)service contactIdentifier:(id)identifier eventIdentifier:(id)eventIdentifier heuristicName:(id)self0 mediaType:(id)self1;
+ (id)atx_startVideoCallActionWithTitle:(id)title subtitle:(id)subtitle recipientName:(id)name recipientHandle:(id)handle callService:(id)service contactIdentifier:(id)identifier eventIdentifier:(id)eventIdentifier heuristicName:(id)self0;
+ (id)atx_updateAlarmActionWithTitle:(id)title subtitle:(id)subtitle alarmID:(id)d alarmTitle:(id)alarmTitle heuristicName:(id)name;
+ (id)atx_userActivityActionWithBestAppSuggestion:(id)suggestion title:(id)title subtitle:(id)subtitle bundleID:(id)d activityType:(id)type heuristicName:(id)name;
+ (id)atx_userActivityActionWithTitle:(id)title subtitle:(id)subtitle bundleID:(id)d activityType:(id)type urlString:(id)string userInfo:(id)info heuristicName:(id)name;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)getActionKeyForBundleId:(id)id actionType:(id)type;
+ (id)getDateFromUserActivityString:(id)string forActionKey:(id)key;
+ (id)unarchivedActionFromData:(id)data;
+ (id)webUrlParsedForUserActivityWithUrlString:(id)string;
+ (unint64_t)_userActivityHashForUserInfoDict:(id)dict activityType:(id)type webpageURL:(id)l;
- (ATXAction)actionWithRouteInfo:(id)info;
- (ATXAction)initWithActivityProxy:(id)proxy activity:(id)activity activityString:(id)string itemIdentifier:(id)identifier contentAttributeSet:(id)set intent:(id)intent menuItemPath:(id)path actionUUID:(id)self0 bundleId:(id)self1 type:(unint64_t)self2 heuristic:(id)self3 heuristicMetadata:(id)self4 criteria:(id)self5 isFutureMedia:(BOOL)self6 routeInfo:(id)self7 title:(id)self8 subtitle:(id)self9 languageCode:(id)code cachedHash:(id)hash toolInvocationID:(id)iD encodedToolInvocation:(id)invocation parameterKeysForToolInvocation:(id)toolInvocation;
- (ATXAction)initWithCoder:(id)coder;
- (ATXAction)initWithIntent:(id)intent actionUUID:(id)d bundleId:(id)id heuristic:(id)heuristic heuristicMetadata:(id)metadata criteria:(id)criteria isFutureMedia:(BOOL)media title:(id)self0 subtitle:(id)self1;
- (ATXAction)initWithNSUserActivity:(id)activity actionUUID:(id)d bundleId:(id)id contentAttributeSet:(id)set itemIdentifier:(id)identifier heuristic:(id)heuristic heuristicMetadata:(id)metadata criteria:(id)self0 isFutureMedia:(BOOL)self1 title:(id)self2 subtitle:(id)self3;
- (ATXAction)initWithProto:(id)proto;
- (ATXAction)initWithProtoData:(id)data;
- (ATXActionCriteria)criteria;
- (BOOL)_shouldUseCachedTitle:(id)title cachedLanguageCode:(id)code;
- (BOOL)hasActionTitle;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAction:(id)action;
- (BOOL)isTVAction;
- (BOOL)isTVWhiteListedLongFormMedia;
- (NSString)description;
- (NSUserActivity)userActivity;
- (id)_bundleIdForDisplay;
- (id)_initWithCoder:(id)coder;
- (id)_spotlightContentType;
- (id)actionDescription;
- (id)actionKey;
- (id)actionSubtitle;
- (id)actionTitle;
- (id)archivedDataForAction;
- (id)canonicalIdentifier;
- (id)copyWithParameterAllowList:(id)list metadataProvider:(id)provider;
- (id)dateForAction;
- (id)encodeAsProto;
- (id)initFromBestAppSuggestion:(id)suggestion activity:(id)activity actionUUID:(id)d bundleId:(id)id contentAttributeSet:(id)set itemIdentifier:(id)identifier heuristic:(id)heuristic heuristicMetadata:(id)self0 criteria:(id)self1 isFutureMedia:(BOOL)self2 title:(id)self3 subtitle:(id)self4;
- (id)json;
- (id)obfuscatedJsonWithMapping:(id)mapping;
- (id)predictionTypeStringForPET;
- (id)proto;
- (id)slotSet;
- (id)underlyingInteraction;
- (id)userActivityWebpageURL;
- (unint64_t)_hash;
- (unint64_t)hash;
- (unint64_t)hashSlotSetWithNonNilParameters:(id)parameters;
- (unint64_t)paramHash;
- (unint64_t)userActivityHash;
- (void)_spotlightContentType;
- (void)actionKey;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidateCachedHash;
- (void)proto;
- (void)setHeuristic:(id)heuristic;
- (void)setLaunchIdForIntent:(id)intent;
- (void)setSubtitleForSerializationToCache;
- (void)setTitle:(id)title;
- (void)setTitleForSerializationToCache;
@end

@implementation ATXAction

- (unint64_t)hash
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedHash = selfCopy->_cachedHash;
  if (cachedHash)
  {
    unsignedIntegerValue = [(NSNumber *)cachedHash unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = [(ATXAction *)selfCopy _hash];
    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:unsignedIntegerValue];
    v6 = selfCopy->_cachedHash;
    selfCopy->_cachedHash = v5;
  }

  objc_sync_exit(selfCopy);

  return unsignedIntegerValue;
}

- (void)dealloc
{
  mEMORY[0x1E698B000] = [MEMORY[0x1E698B000] sharedInstance];
  [mEMORY[0x1E698B000] unregisterObserver:self];

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

  actionSubtitle = [(ATXAction *)self actionSubtitle];
  subtitle = self->_subtitle;
  self->_subtitle = actionSubtitle;

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
  proto = [(ATXAction *)self proto];
  data = [proto data];

  return data;
}

- (id)proto
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  bundleId = [(ATXAction *)self bundleId];
  [v3 setBundleId:bundleId];

  [v3 setActionType:{-[ATXAction actionType](self, "actionType")}];
  heuristic = [(ATXAction *)self heuristic];
  [v3 setHeuristic:heuristic];

  [v3 setIsFutureMedia:{-[ATXAction isFutureMedia](self, "isFutureMedia")}];
  _title = [(ATXAction *)self _title];
  [v3 setTitle:_title];

  _subtitle = [(ATXAction *)self _subtitle];
  [v3 setSubtitle:_subtitle];

  [v3 setUserActivityHash:{-[ATXAction userActivityHash](self, "userActivityHash")}];
  userActivityString = [(ATXAction *)self userActivityString];
  [v3 setActivityString:userActivityString];

  itemIdentifier = [(ATXAction *)self itemIdentifier];
  [v3 setItemIdentifier:itemIdentifier];

  actionUUID = [(ATXAction *)self actionUUID];
  uUIDString = [actionUUID UUIDString];
  [v3 setUuid:uUIDString];

  [v3 setLanguageCode:self->_languageCode];
  proto = [(ATXAVRouteInfo *)self->_routeInfo proto];
  [v3 setRouteInfo:proto];

  proto2 = [(ATXActionCriteria *)self->_criteria proto];
  [v3 setCriteria:proto2];

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

  intentData = [(ATXLazyIntent *)self->_lazyIntent intentData];

  if (intentData)
  {
    intentData2 = [(ATXLazyIntent *)self->_lazyIntent intentData];
    [v3 setIntent:intentData2];
LABEL_11:

    goto LABEL_12;
  }

  intent = [(ATXAction *)self intent];

  if (intent)
  {
    v41 = objc_autoreleasePoolPush();
    v42 = MEMORY[0x1E696ACC8];
    intent2 = [(ATXAction *)self intent];
    v51 = 0;
    v44 = [v42 archivedDataWithRootObject:intent2 requiringSecureCoding:1 error:&v51];
    intentData2 = v51;
    [v3 setIntent:v44];

    objc_autoreleasePoolPop(v41);
    if (intentData2)
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
  userActivityProxy = [(ATXAction *)self userActivityProxy];

  if (userActivityProxy)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = MEMORY[0x1E696ACC8];
    userActivityProxy2 = [(ATXAction *)self userActivityProxy];
    v50 = 0;
    v28 = [v26 archivedDataWithRootObject:userActivityProxy2 requiringSecureCoding:1 error:&v50];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((selfCopy->_actionType | 4) == 5 && !selfCopy->_userActivityHash)
  {
    userActivity = [(ATXAction *)selfCopy userActivity];
    v4 = userActivity;
    if (userActivity)
    {
      userInfo = [userActivity userInfo];
      activityType = [v4 activityType];
      webpageURL = [v4 webpageURL];
      selfCopy->_userActivityHash = [ATXAction _userActivityHashForUserInfoDict:userInfo activityType:activityType webpageURL:webpageURL];
    }

    else
    {
      selfCopy->_userActivityHash = -1;
    }
  }

  userActivityHash = selfCopy->_userActivityHash;
  objc_sync_exit(selfCopy);

  return userActivityHash;
}

- (unint64_t)_hash
{
  selfCopy = self;
  v67 = *MEMORY[0x1E69E9840];
  userActivityHash = [(ATXAction *)self userActivityHash];
  v4 = selfCopy->_actionType - userActivityHash + 32 * userActivityHash;
  v5 = [(NSString *)selfCopy->_bundleId hash]- v4 + 32 * v4;
  v6 = [(NSString *)selfCopy->_heuristic hash];
  v7 = selfCopy->_isFutureMedia - (v6 - v5 + 32 * v5) + 32 * (v6 - v5 + 32 * v5);
  if ([(ATXAction *)selfCopy isHeuristic])
  {
    v8 = [(NSString *)selfCopy->_title hash]- v7 + 32 * v7;
    v7 = [(NSString *)selfCopy->_subtitle hash]- v8 + 32 * v8;
  }

  intent = [(ATXAction *)selfCopy intent];
  v10 = intent;
  actionType = selfCopy->_actionType;
  if (!actionType)
  {
    if (!intent)
    {
      goto LABEL_53;
    }

    goto LABEL_8;
  }

  if (actionType == 2 && intent)
  {
LABEL_8:
    atx_nonNilParameters = [intent atx_nonNilParameters];
    v48 = selfCopy;
    v7 = [(ATXAction *)selfCopy hashSlotSetWithNonNilParameters:atx_nonNilParameters]- v7 + 32 * v7;
    v47 = v10;
    atx_nonNilParametersByName = [v10 atx_nonNilParametersByName];
    allObjects = [atx_nonNilParameters allObjects];
    v15 = [allObjects sortedArrayUsingSelector:sel_compare_];

    v50 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v16 = atx_nonNilParameters;
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
      v49 = atx_nonNilParametersByName;
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
            v24 = [atx_nonNilParametersByName objectForKeyedSubscript:v22];
            v25 = v24;
            if (v24)
            {
              null = v24;
            }

            else
            {
              null = [MEMORY[0x1E695DFB0] null];
            }

            v27 = null;
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
                location = [v27 location];
                v30 = [location atx_locationHashWithLevel:17];
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

                atx_nonNilParametersByName = v49;
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
    selfCopy = v48;
    actionType = v48->_actionType;
  }

  if (actionType == 6)
  {
    menuItemPath = [(ATXAction *)selfCopy menuItemPath];

    if (menuItemPath)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      menuItemPath2 = [(ATXAction *)selfCopy menuItemPath];
      v38 = [menuItemPath2 countByEnumeratingWithState:&v52 objects:v64 count:16];
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
              objc_enumerationMutation(menuItemPath2);
            }

            v7 = [*(*(&v52 + 1) + 8 * k) hash] - v7 + 32 * v7;
          }

          v39 = [menuItemPath2 countByEnumeratingWithState:&v52 objects:v64 count:16];
        }

        while (v39);
      }
    }

    actionType = selfCopy->_actionType;
  }

  if (actionType == 7)
  {
    encodedToolInvocation = [(ATXAction *)selfCopy encodedToolInvocation];

    if (encodedToolInvocation)
    {
      v43 = MEMORY[0x1E69C5B68];
      encodedToolInvocation2 = [(ATXAction *)selfCopy encodedToolInvocation];
      v45 = [v43 canonicalIdentifierForEncodedToolInvocationWithEncodedInvocation:encodedToolInvocation2];
      v7 = [v45 hash] - v7 + 32 * v7;
    }
  }

LABEL_53:

  return v7;
}

- (unint64_t)paramHash
{
  slotSet = [(ATXAction *)self slotSet];
  v4 = [[ATXSlotResolutionParameters alloc] initWithAction:self slots:slotSet];
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
    userActivity = [(ATXAction *)self userActivity];
    activityType = [userActivity activityType];

    if (activityType)
    {
      userActivity2 = [(ATXAction *)self userActivity];
      activityType2 = [userActivity2 activityType];
      _className = [ATXAction getNSUATypefromActivityType:activityType2];

LABEL_10:
      goto LABEL_11;
    }
  }

  if (![(ATXAction *)self actionType]|| [(ATXAction *)self actionType]== 2)
  {
    userActivity2 = [(ATXAction *)self intent];
    _className = [userActivity2 _className];
    goto LABEL_10;
  }

  if ([(ATXAction *)self actionType]== 6)
  {
    _className = @"RunIntelligenceCommand";
    goto LABEL_11;
  }

  if ([(ATXAction *)self actionType]== 7)
  {
    _className = [(ATXAction *)self toolInvocationID];
LABEL_11:
    bundleId = [(ATXAction *)self bundleId];

    if (bundleId)
    {
      if (_className)
      {
        bundleId2 = [(ATXAction *)self bundleId];
        v3 = [ATXAction getActionKeyForBundleId:bundleId2 actionType:_className];

LABEL_20:
        goto LABEL_21;
      }

      _className = __atxlog_handle_default();
      if (os_log_type_enabled(_className, OS_LOG_TYPE_FAULT))
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
      parameterKeysForToolInvocation = [(ATXAction *)self parameterKeysForToolInvocation];
      v11 = [v9 setWithArray:parameterKeysForToolInvocation];
      initWithOpaqueParameters = [(ATXSlotSet *)v8 initWithParameters:v11];

      break;
    case 2uLL:
LABEL_4:
      v4 = [ATXSlotSet alloc];
      intent = [(ATXAction *)self intent];
      atx_nonNilParameters = [intent atx_nonNilParameters];
      initWithOpaqueParameters = [(ATXSlotSet *)v4 initWithParameters:atx_nonNilParameters];

      break;
    default:
      initWithOpaqueParameters = [[ATXSlotSet alloc] initWithOpaqueParameters];
      break;
  }

  return initWithOpaqueParameters;
}

- (id)userActivityWebpageURL
{
  if ((self->_actionType | 4) == 5)
  {
    userActivity = [(ATXAction *)self userActivity];
    webpageURL = [userActivity webpageURL];
  }

  else
  {
    webpageURL = 0;
  }

  return webpageURL;
}

- (NSUserActivity)userActivity
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  userActivity = selfCopy->_userActivity;
  if (!userActivity)
  {
    v4 = objc_autoreleasePoolPush();
    if (([(ATXAction *)selfCopy actionType]== 1 || [(ATXAction *)selfCopy actionType]== 5) && selfCopy->_userActivityString)
    {
      v5 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithUserActivityStrings:selfCopy->_userActivityString secondaryString:0 optionalData:0];
      v6 = selfCopy->_userActivity;
      selfCopy->_userActivity = v5;

      [(NSUserActivity *)selfCopy->_userActivity setContentAttributeSet:selfCopy->_contentAttributeSet];
    }

    objc_autoreleasePoolPop(v4);
    userActivity = selfCopy->_userActivity;
  }

  v7 = userActivity;
  objc_sync_exit(selfCopy);

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
        intent = [(ATXAction *)self intent];
        _hasTitle = [intent _hasTitle];
LABEL_13:

        return _hasTitle;
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

      intent = [(ATXAction *)self userActivity];
      title = [intent title];
LABEL_12:
      v7 = title;
      _hasTitle = [title length] != 0;

      goto LABEL_13;
    }

    if ((actionType - 6) >= 2)
    {
      if (actionType != 5)
      {
        goto LABEL_15;
      }

      intent = [(ATXAction *)self userActivityProxy];
      title = [intent activityTitle];
      goto LABEL_12;
    }
  }

  return 1;
}

- (ATXAction)initWithIntent:(id)intent actionUUID:(id)d bundleId:(id)id heuristic:(id)heuristic heuristicMetadata:(id)metadata criteria:(id)criteria isFutureMedia:(BOOL)media title:(id)self0 subtitle:(id)self1
{
  subtitleCopy = subtitle;
  titleCopy = title;
  criteriaCopy = criteria;
  metadataCopy = metadata;
  heuristicCopy = heuristic;
  idCopy = id;
  dCopy = d;
  intentCopy = intent;
  v25 = [[ATXLazyIntent alloc] initWithIntent:intentCopy];
  v26 = [intentCopy _type] == 2;

  LOBYTE(v29) = media;
  v27 = [(ATXAction *)self initWithActivityProxy:0 activity:0 activityString:0 itemIdentifier:0 contentAttributeSet:0 intent:v25 menuItemPath:0 actionUUID:dCopy bundleId:idCopy type:2 * v26 heuristic:heuristicCopy heuristicMetadata:metadataCopy criteria:criteriaCopy isFutureMedia:v29 routeInfo:0 title:titleCopy subtitle:subtitleCopy languageCode:0 cachedHash:0 toolInvocationID:0 encodedToolInvocation:0 parameterKeysForToolInvocation:0];

  return v27;
}

- (ATXAction)initWithNSUserActivity:(id)activity actionUUID:(id)d bundleId:(id)id contentAttributeSet:(id)set itemIdentifier:(id)identifier heuristic:(id)heuristic heuristicMetadata:(id)metadata criteria:(id)self0 isFutureMedia:(BOOL)self1 title:(id)self2 subtitle:(id)self3
{
  v48 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  dCopy = d;
  idCopy = id;
  setCopy = set;
  identifierCopy = identifier;
  heuristicCopy = heuristic;
  metadataCopy = metadata;
  criteriaCopy = criteria;
  titleCopy = title;
  subtitleCopy = subtitle;
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
  [activityCopy _createUserActivityStringsWithOptions:0 completionHandler:v38];
  if ([MEMORY[0x1E69C5D10] waitForSemaphore:v24 timeoutSeconds:1.0] == 1)
  {
    __atxlog_handle_default();
    contentAttributeSet = selfCopy2 = self;
    if (os_log_type_enabled(contentAttributeSet, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      [ATXAction initWithNSUserActivity:v28 actionUUID:buf bundleId:contentAttributeSet contentAttributeSet:? itemIdentifier:? heuristic:? heuristicMetadata:? criteria:? isFutureMedia:? title:? subtitle:?];
    }

    v29 = 0;
LABEL_5:

    goto LABEL_10;
  }

  v29 = v42[5];
  selfCopy2 = self;
  if (v29)
  {
    contentAttributeSet = setCopy;
    if (!setCopy)
    {
      contentAttributeSet = [activityCopy contentAttributeSet];
      selfCopy2 = self;
    }

    LOBYTE(v31) = media;
    selfCopy2 = [(ATXAction *)selfCopy2 initWithActivityProxy:0 activity:activityCopy activityString:v29 itemIdentifier:identifierCopy contentAttributeSet:contentAttributeSet intent:0 menuItemPath:0 actionUUID:dCopy bundleId:idCopy type:1 heuristic:heuristicCopy heuristicMetadata:metadataCopy criteria:criteriaCopy isFutureMedia:v31 routeInfo:0 title:titleCopy subtitle:subtitleCopy languageCode:0 cachedHash:0 toolInvocationID:0 encodedToolInvocation:0 parameterKeysForToolInvocation:0];
    v29 = selfCopy2;
    if (!setCopy)
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

- (id)initFromBestAppSuggestion:(id)suggestion activity:(id)activity actionUUID:(id)d bundleId:(id)id contentAttributeSet:(id)set itemIdentifier:(id)identifier heuristic:(id)heuristic heuristicMetadata:(id)self0 criteria:(id)self1 isFutureMedia:(BOOL)self2 title:(id)self3 subtitle:(id)self4
{
  suggestionCopy = suggestion;
  activityCopy = activity;
  dCopy = d;
  idCopy = id;
  setCopy = set;
  identifierCopy = identifier;
  heuristicCopy = heuristic;
  metadataCopy = metadata;
  criteriaCopy = criteria;
  titleCopy = title;
  subtitleCopy = subtitle;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__2;
  v49 = __Block_byref_object_dispose__2;
  v50 = 0;
  if (activityCopy)
  {
    v25 = dispatch_semaphore_create(0);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __169__ATXAction_initFromBestAppSuggestion_activity_actionUUID_bundleId_contentAttributeSet_itemIdentifier_heuristic_heuristicMetadata_criteria_isFutureMedia_title_subtitle___block_invoke;
    v42[3] = &unk_1E80C1B18;
    v44 = &v45;
    v26 = v25;
    v43 = v26;
    [activityCopy _createUserActivityStringsWithOptions:0 completionHandler:v42];
    v27 = [MEMORY[0x1E69C5D10] waitForSemaphore:v26 timeoutSeconds:1.0];

    v29 = dCopy;
    v28 = suggestionCopy;
    if (v27 == 1)
    {
      v30 = 0;
      selfCopy = self;
      goto LABEL_11;
    }

    v32 = v46[5];
  }

  else
  {
    v32 = 0;
    v29 = dCopy;
    v28 = suggestionCopy;
  }

  contentAttributeSet = setCopy;
  if (!setCopy)
  {
    contentAttributeSet = [activityCopy contentAttributeSet];
  }

  LOBYTE(v35) = media;
  selfCopy = [(ATXAction *)self initWithActivityProxy:v28 activity:activityCopy activityString:v32 itemIdentifier:identifierCopy contentAttributeSet:contentAttributeSet intent:0 menuItemPath:0 actionUUID:v29 bundleId:idCopy type:5 heuristic:heuristicCopy heuristicMetadata:metadataCopy criteria:criteriaCopy isFutureMedia:v35 routeInfo:0 title:titleCopy subtitle:subtitleCopy languageCode:0 cachedHash:0 toolInvocationID:0 encodedToolInvocation:0 parameterKeysForToolInvocation:0];
  if (!setCopy)
  {
  }

  v30 = selfCopy;
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

- (ATXAction)initWithActivityProxy:(id)proxy activity:(id)activity activityString:(id)string itemIdentifier:(id)identifier contentAttributeSet:(id)set intent:(id)intent menuItemPath:(id)path actionUUID:(id)self0 bundleId:(id)self1 type:(unint64_t)self2 heuristic:(id)self3 heuristicMetadata:(id)self4 criteria:(id)self5 isFutureMedia:(BOOL)self6 routeInfo:(id)self7 title:(id)self8 subtitle:(id)self9 languageCode:(id)code cachedHash:(id)hash toolInvocationID:(id)iD encodedToolInvocation:(id)invocation parameterKeysForToolInvocation:(id)toolInvocation
{
  proxyCopy = proxy;
  activityCopy = activity;
  stringCopy = string;
  stringCopy2 = string;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  setCopy = set;
  intentCopy = intent;
  intentCopy2 = intent;
  pathCopy = path;
  dCopy = d;
  idCopy = id;
  heuristicCopy = heuristic;
  metadataCopy = metadata;
  criteriaCopy = criteria;
  infoCopy = info;
  titleCopy = title;
  subtitleCopy = subtitle;
  codeCopy = code;
  hashCopy = hash;
  iDCopy = iD;
  invocationCopy = invocation;
  toolInvocationCopy = toolInvocation;
  v72 = idCopy;
  if (!idCopy)
  {
    [ATXAction initWithActivityProxy:activity:activityString:itemIdentifier:contentAttributeSet:intent:menuItemPath:actionUUID:bundleId:type:heuristic:heuristicMetadata:criteria:isFutureMedia:routeInfo:title:subtitle:languageCode:cachedHash:toolInvocationID:encodedToolInvocation:parameterKeysForToolInvocation:];
  }

  v32 = (stringCopy2 | intentCopy2) != 0;
  v33 = proxyCopy;
  v34 = intentCopy2;
  v64 = intentCopy2;
  if (pathCopy || proxyCopy || stringCopy2 | intentCopy2 || iDCopy)
  {
    v36 = metadataCopy;
    v35 = heuristicCopy;
    v37 = criteriaCopy;
    v38 = infoCopy;
    selfCopy2 = self;
    if (proxyCopy)
    {
      if (pathCopy | iDCopy)
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

    if (iDCopy)
    {
      if (((pathCopy == 0) & ~v32) != 0)
      {
        goto LABEL_28;
      }

      [ATXAction initWithActivityProxy:activity:activityString:itemIdentifier:contentAttributeSet:intent:menuItemPath:actionUUID:bundleId:type:heuristic:heuristicMetadata:criteria:isFutureMedia:routeInfo:title:subtitle:languageCode:cachedHash:toolInvocationID:encodedToolInvocation:parameterKeysForToolInvocation:];
      goto LABEL_41;
    }
  }

  else
  {
    v40 = intentCopy2;
    selfCopy2 = self;
    [ATXAction initWithActivityProxy:activity:activityString:itemIdentifier:contentAttributeSet:intent:menuItemPath:actionUUID:bundleId:type:heuristic:heuristicMetadata:criteria:isFutureMedia:routeInfo:title:subtitle:languageCode:cachedHash:toolInvocationID:encodedToolInvocation:parameterKeysForToolInvocation:];
    v34 = v40;
    v36 = metadataCopy;
    v35 = heuristicCopy;
    v37 = criteriaCopy;
    v38 = infoCopy;
  }

  if (v34)
  {
    v41 = (stringCopy2 | pathCopy) == 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = !v41;
  if (pathCopy)
  {
    v43 = stringCopy2 == 0;
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
  if (type >= 8)
  {
    [ATXAction initWithActivityProxy:activity:activityString:itemIdentifier:contentAttributeSet:intent:menuItemPath:actionUUID:bundleId:type:heuristic:heuristicMetadata:criteria:isFutureMedia:routeInfo:title:subtitle:languageCode:cachedHash:toolInvocationID:encodedToolInvocation:parameterKeysForToolInvocation:];
  }

  v83.receiver = selfCopy2;
  v83.super_class = ATXAction;
  v44 = [(ATXAction *)&v83 init];
  v45 = v44;
  if (v44)
  {
    objc_storeStrong(&v44->_userActivityProxy, proxy);
    objc_storeStrong(&v45->_userActivity, activity);
    objc_storeStrong(&v45->_userActivityString, stringCopy);
    objc_storeStrong(&v45->_itemIdentifier, identifierCopy);
    if (setCopy)
    {
      v46 = setCopy;
    }

    else
    {
      v46 = objc_opt_new();
    }

    contentAttributeSet = v45->_contentAttributeSet;
    v45->_contentAttributeSet = v46;

    objc_storeStrong(&v45->_lazyIntent, intentCopy);
    objc_storeStrong(&v45->_actionUUID, d);
    objc_storeStrong(&v45->_bundleId, id);
    v45->_actionType = type;
    objc_storeStrong(&v45->_heuristic, heuristic);
    objc_storeStrong(&v45->_heuristicMetadata, metadata);
    objc_storeStrong(&v45->_criteria, criteria);
    v45->_isFutureMedia = media;
    objc_storeStrong(&v45->_routeInfo, info);
    objc_storeStrong(&v45->_title, title);
    objc_storeStrong(&v45->_subtitle, subtitle);
    if (codeCopy)
    {
      v48 = codeCopy;
      languageCode = v45->_languageCode;
      v45->_languageCode = v48;
    }

    else
    {
      languageCode = [MEMORY[0x1E695DF58] currentLocale];
      localeIdentifier = [languageCode localeIdentifier];
      v51 = v45->_languageCode;
      v45->_languageCode = localeIdentifier;
    }

    v33 = proxyCopy;

    v45->_isTVWhiteListedLongFormMediaDoNotUseDirectly = 0;
    objc_storeStrong(&v45->_cachedHash, hash);
    v52 = [pathCopy copy];
    menuItemPath = v45->_menuItemPath;
    v45->_menuItemPath = v52;

    objc_storeStrong(&v45->_toolInvocationID, iD);
    objc_storeStrong(&v45->_encodedToolInvocation, invocation);
    v54 = [toolInvocationCopy copy];
    parameterKeysForToolInvocation = v45->_parameterKeysForToolInvocation;
    v45->_parameterKeysForToolInvocation = v54;

    [(ATXLazyIntent *)v45->_lazyIntent setDelegate:v45];
    mEMORY[0x1E698B000] = [MEMORY[0x1E698B000] sharedInstance];
    [mEMORY[0x1E698B000] registerObserver:v45];

    if ([(ATXLazyIntent *)v45->_lazyIntent isDeserialized])
    {
      intent = [(ATXLazyIntent *)v45->_lazyIntent intent];
      [(ATXAction *)v45 setLaunchIdForIntent:intent];
    }
  }

  return v45;
}

- (ATXAction)actionWithRouteInfo:(id)info
{
  if (info)
  {
    infoCopy = info;
    v5 = [ATXAction alloc];
    LOBYTE(v8) = self->_isFutureMedia;
    selfCopy = [(ATXAction *)v5 initWithActivityProxy:0 activity:self->_userActivity activityString:self->_userActivityString itemIdentifier:self->_itemIdentifier contentAttributeSet:self->_contentAttributeSet intent:self->_lazyIntent menuItemPath:self->_menuItemPath actionUUID:self->_actionUUID bundleId:self->_bundleId type:self->_actionType heuristic:self->_heuristic heuristicMetadata:self->_heuristicMetadata criteria:self->_criteria isFutureMedia:v8 routeInfo:infoCopy title:self->_title subtitle:self->_subtitle languageCode:self->_languageCode cachedHash:self->_cachedHash toolInvocationID:self->_toolInvocationID encodedToolInvocation:self->_encodedToolInvocation parameterKeysForToolInvocation:self->_parameterKeysForToolInvocation];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isTVWhiteListedLongFormMedia
{
  intent = [(ATXAction *)self intent];
  if ([ATXAction _isTVIntent:intent bundleId:self->_bundleId])
  {
    v4 = intent;
    proxiedBundleIdentifier = [v4 proxiedBundleIdentifier];
    if (proxiedBundleIdentifier)
    {
      v6 = proxiedBundleIdentifier;
      proxiedBundleIdentifier2 = [v4 proxiedBundleIdentifier];
      v8 = [ATXAVRoutingUtils isTVExperienceAppWithBundleId:proxiedBundleIdentifier2];

      if (v8)
      {
        self->_isTVWhiteListedLongFormMediaDoNotUseDirectly = 1;
      }
    }
  }

  isTVWhiteListedLongFormMediaDoNotUseDirectly = self->_isTVWhiteListedLongFormMediaDoNotUseDirectly;

  return isTVWhiteListedLongFormMediaDoNotUseDirectly;
}

+ (BOOL)_isTVIntent:(id)intent bundleId:(id)id
{
  intentCopy = intent;
  idCopy = id;
  v7 = intentCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [ATXAVRoutingUtils isTVAppWithBundleId:idCopy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXAction *)self isEqualToAction:v5];
  }

  return v6;
}

- (BOOL)isEqualToAction:(id)action
{
  actionCopy = action;
  v5 = self->_bundleId;
  v6 = v5;
  if (v5 == actionCopy[11])
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
  if (actionType != actionCopy[12])
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

      encodedToolInvocation = [(ATXAction *)self encodedToolInvocation];
      encodedToolInvocation2 = [actionCopy encodedToolInvocation];
      v22 = [encodedToolInvocation isEqualToData:encodedToolInvocation2];
    }

    else
    {
      if (actionType == 5)
      {
        goto LABEL_22;
      }

      encodedToolInvocation = [(ATXAction *)self menuItemPath];
      encodedToolInvocation2 = [actionCopy menuItemPath];
      v22 = [encodedToolInvocation isEqualToArray:encodedToolInvocation2];
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
    intent = [(ATXAction *)self intent];
    _className = [intent _className];
    intent2 = [actionCopy intent];
    _className2 = [intent2 _className];
    v14 = [_className isEqual:_className2];

    if (!v14)
    {
      goto LABEL_38;
    }

    intent3 = [(ATXAction *)self intent];
    atx_nonNilParametersByName = [intent3 atx_nonNilParametersByName];
    intent4 = [actionCopy intent];
    atx_nonNilParametersByName2 = [intent4 atx_nonNilParametersByName];
    v19 = [atx_nonNilParametersByName atx_isFuzzyMatch:atx_nonNilParametersByName2];

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
  userActivityHash = [(ATXAction *)self userActivityHash];
  if (userActivityHash != [actionCopy userActivityHash])
  {
    goto LABEL_38;
  }

LABEL_26:
  v32 = self->_heuristic;
  v33 = v32;
  if (v32 == actionCopy[15])
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

  if (self->_isFutureMedia == *(actionCopy + 73))
  {
    if ([(ATXAction *)self isHeuristic])
    {
      v35 = self->_title;
      v36 = v35;
      if (v35 == actionCopy[4])
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
      if (v38 == actionCopy[5])
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
  actionKey = [(ATXAction *)self actionKey];
  v4 = actionKey;
  v5 = @"nilActionKey";
  if (actionKey)
  {
    v5 = actionKey;
  }

  v6 = v5;

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%lu", v6, -[ATXAction hash](self, "hash")];

  return v7;
}

- (ATXAction)initWithProto:(id)proto
{
  v88 = *MEMORY[0x1E69E9840];
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      intent = [v5 intent];
      if (intent)
      {
        v7 = [[ATXLazyIntent alloc] initWithIntentData:intent];
      }

      else
      {
        v7 = 0;
      }

      userActivityProxy = [v5 userActivityProxy];
      v10 = [userActivityProxy length];

      if (v10)
      {
        v11 = objc_autoreleasePoolPush();
        v12 = MEMORY[0x1E696ACD0];
        v13 = objc_opt_class();
        userActivityProxy2 = [v5 userActivityProxy];
        v86 = 0;
        v10 = [v12 unarchivedObjectOfClass:v13 fromData:userActivityProxy2 error:&v86];
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
        menuItemPathComponents = [v5 menuItemPathComponents];
      }

      else
      {
        menuItemPathComponents = 0;
      }

      toolInvocationID = [v5 toolInvocationID];
      if (v10 | v7 || (([v5 activityString], v19 = objc_claimAutoreleasedReturnValue(), (v20 = v19 | menuItemPathComponents) != 0) ? (v21 = v19) : (v21 = 0), (v21, v20) || toolInvocationID))
      {
        selfCopy = [v5 bundleId];

        if (selfCopy)
        {
          selfCopy = [v5 uuid];

          if (selfCopy)
          {
            v80 = menuItemPathComponents;
            v22 = objc_alloc(MEMORY[0x1E696AFB0]);
            uuid = [v5 uuid];
            v24 = [v22 initWithUUIDString:uuid];

            v79 = v24;
            if (v24)
            {
              contentAttributeSet = [v5 contentAttributeSet];
              v26 = [contentAttributeSet length];

              v77 = toolInvocationID;
              v78 = v7;
              if (v26)
              {
                v27 = objc_autoreleasePoolPush();
                v28 = MEMORY[0x1E696ACD0];
                v29 = objc_opt_class();
                contentAttributeSet2 = [v5 contentAttributeSet];
                v85 = 0;
                v76 = [v28 unarchivedObjectOfClass:v29 fromData:contentAttributeSet2 error:&v85];
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

              v71 = intent;
              heuristicMetadatas = [v5 heuristicMetadatas];
              v34 = [heuristicMetadatas count];

              v70 = v10;
              if (v34)
              {
                v35 = objc_alloc(MEMORY[0x1E695DF90]);
                heuristicMetadatas2 = [v5 heuristicMetadatas];
                v37 = [v35 initWithCapacity:{objc_msgSend(heuristicMetadatas2, "count")}];

                v83 = 0u;
                v84 = 0u;
                v81 = 0u;
                v82 = 0u;
                heuristicMetadatas3 = [v5 heuristicMetadatas];
                v39 = [heuristicMetadatas3 countByEnumeratingWithState:&v81 objects:v87 count:16];
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
                        objc_enumerationMutation(heuristicMetadatas3);
                      }

                      v43 = *(*(&v81 + 1) + 8 * i);
                      v44 = [v43 key];

                      if (v44)
                      {
                        value = [v43 value];
                        v46 = [v43 key];
                        [v37 setObject:value forKeyedSubscript:v46];
                      }
                    }

                    v40 = [heuristicMetadatas3 countByEnumeratingWithState:&v81 objects:v87 count:16];
                  }

                  while (v40);
                }
              }

              else
              {
                v37 = 0;
              }

              predictableParameterCombinations = [v5 predictableParameterCombinations];
              v48 = [predictableParameterCombinations count];

              if (v48)
              {
                predictableParameterCombinations2 = [v5 predictableParameterCombinations];
                v50 = [predictableParameterCombinations2 _pas_mappedArrayWithTransform:&__block_literal_global_20];
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

              encodedToolInvocation = [v5 encodedToolInvocation];
              parameterKeysForToolInvocations = [v5 parameterKeysForToolInvocations];
              v73 = [parameterKeysForToolInvocations copy];

              activityString = [v5 activityString];
              itemIdentifier = [v5 itemIdentifier];
              bundleId = [v5 bundleId];
              actionType = [v5 actionType];
              heuristic = [v5 heuristic];
              v52 = [ATXActionCriteria alloc];
              criteria = [v5 criteria];
              v61 = [(ATXActionCriteria *)v52 initWithProto:criteria];
              isFutureMedia = [v5 isFutureMedia];
              v53 = [ATXAVRouteInfo alloc];
              routeInfo = [v5 routeInfo];
              v60 = [(ATXAVRouteInfo *)v53 initWithProto:routeInfo];
              title = [v5 title];
              subtitle = [v5 subtitle];
              languageCode = [v5 languageCode];
              LOBYTE(v59) = isFutureMedia;
              v10 = v70;
              v57 = [(ATXAction *)self initWithActivityProxy:v70 activity:0 activityString:activityString itemIdentifier:itemIdentifier contentAttributeSet:v76 intent:v78 menuItemPath:v80 actionUUID:v79 bundleId:bundleId type:actionType heuristic:heuristic heuristicMetadata:v37 criteria:v61 isFutureMedia:v59 routeInfo:v60 title:title subtitle:subtitle languageCode:languageCode cachedHash:v75 toolInvocationID:v77 encodedToolInvocation:encodedToolInvocation parameterKeysForToolInvocation:v73];

              if (v57)
              {
                [(ATXAction *)v57 _setUserActivityHash:[v5 userActivityHash]];
                objc_storeStrong(&v57->_predictableParameterCombinations, v69);
              }

              self = v57;

              selfCopy = self;
              intent = v71;
              toolInvocationID = v77;
              v7 = v78;
            }

            else
            {
              selfCopy = 0;
            }

            menuItemPathComponents = v80;
          }
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXAction *)self initWithProto:v5];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

- (void)setLaunchIdForIntent:(id)intent
{
  intentCopy = intent;
  if (intentCopy)
  {
    v6 = intentCopy;
    launchId = [intentCopy launchId];

    intentCopy = v6;
    if (!launchId)
    {
      [v6 _setLaunchId:self->_bundleId];
      intentCopy = v6;
    }
  }
}

- (ATXAction)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBAction alloc] initWithData:dataCopy];

    self = [(ATXAction *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

- (unint64_t)hashSlotSetWithNonNilParameters:(id)parameters
{
  v17 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v4 = [parametersCopy count];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = parametersCopy;
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

+ (unint64_t)_userActivityHashForUserInfoDict:(id)dict activityType:(id)type webpageURL:(id)l
{
  v77 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  typeCopy = type;
  lCopy = l;
  context = objc_autoreleasePoolPush();
  *md = 0u;
  v76 = 0u;
  v10 = objc_opt_new();
  [v10 addObject:typeCopy];
  v50 = lCopy;
  absoluteString = [lCopy absoluteString];
  v12 = absoluteString;
  if (absoluteString)
  {
    v13 = absoluteString;
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
  v15 = dictCopy;
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
    v48 = typeCopy;
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
    typeCopy = v48;
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
  uUIDString = [(NSUUID *)self->_actionUUID UUIDString];
  [v3 appendFormat:@"actionUUID: %@\n", uUIDString];

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
    actionTitle = [(ATXAction *)self actionTitle];
    [v3 appendFormat:@"actionTitle: %@\n", actionTitle];

    actionSubtitle = [(ATXAction *)self actionSubtitle];
    [v3 appendFormat:@"actionSubtitle: %@\n", actionSubtitle];

    actionDescription = [(ATXAction *)self actionDescription];
    [v3 appendFormat:@"actionDescription: %@\n", actionDescription];
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
    intent = [(ATXAction *)self intent];
    v4 = [intent description];
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
    intent = [(ATXAction *)self userActivity];
    userInfo = [intent userInfo];
    v7 = [userInfo description];
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

- (BOOL)_shouldUseCachedTitle:(id)title cachedLanguageCode:(id)code
{
  v19 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  if ([title length])
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    v9 = [localeIdentifier isEqualToString:codeCopy];
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
        v18 = codeCopy;
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

  actionTitle = [(ATXAction *)self actionTitle];
  title = self->_title;
  self->_title = actionTitle;

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
        userActivityProxy = [(ATXAction *)self userActivityProxy];
        activityTitle = [userActivityProxy activityTitle];
        goto LABEL_15;
      case 6:
        userActivityProxy = [(ATXAction *)self menuItemPath];
        activityTitle = [userActivityProxy lastObject];
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
      userActivityProxy = [(ATXAction *)self userActivity];
      activityTitle = [userActivityProxy title];
      goto LABEL_15;
    }

    if (actionType != 2)
    {
LABEL_11:
      reportInvalidActionTypeAndCrash(actionType);
    }
  }

  userActivityProxy = [(ATXAction *)self intent];
  activityTitle = [userActivityProxy atx_titleWithEfficientLocalization];
LABEL_15:
  v3 = activityTitle;

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
      intent = [(ATXAction *)self intent];
      atx_subtitleWithEfficientLocalization = [intent atx_subtitleWithEfficientLocalization];
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
    contentDescription = [(CSSearchableItemAttributeSet *)self->_contentAttributeSet contentDescription];
    goto LABEL_12;
  }

  if (actionType == 7)
  {
LABEL_2:
    contentDescription = self->_subtitle;
LABEL_12:
    atx_subtitleWithEfficientLocalization = contentDescription;
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

  menuItemPath = [(ATXAction *)self menuItemPath];
  v8 = [menuItemPath count];

  if (v8)
  {
    intent = [(ATXAction *)self menuItemPath];
    menuItemPath2 = [(ATXAction *)self menuItemPath];
    v10 = [intent subarrayWithRange:{0, objc_msgSend(menuItemPath2, "count") - 1}];
    atx_subtitleWithEfficientLocalization = [v10 componentsJoinedByString:@" > "];

    goto LABEL_15;
  }

  atx_subtitleWithEfficientLocalization = &stru_1F3E050C8;
LABEL_16:

  return atx_subtitleWithEfficientLocalization;
}

+ (id)getActionKeyForBundleId:(id)id actionType:(id)type
{
  v5 = MEMORY[0x1E696AD60];
  typeCopy = type;
  idCopy = id;
  v8 = [[v5 alloc] initWithCapacity:{objc_msgSend(typeCopy, "length") + objc_msgSend(idCopy, "length") + objc_msgSend(@":", "length")}];
  [v8 appendString:idCopy];

  [v8 appendString:@":"];
  [v8 appendString:typeCopy];

  return v8;
}

- (id)dateForAction
{
  if (self->_userActivityString)
  {
    actionKey = [(ATXAction *)self actionKey];
    if (actionKey)
    {
      v4 = [ATXAction getDateFromUserActivityString:self->_userActivityString forActionKey:actionKey];
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

+ (id)unarchivedActionFromData:(id)data
{
  dataCopy = data;
  v4 = objc_autoreleasePoolPush();
  v11 = 0;
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v11];
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

+ (id)getDateFromUserActivityString:(id)string forActionKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  v8 = keyCopy;
  if (!stringCopy)
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

  if (!keyCopy)
  {
    goto LABEL_29;
  }

LABEL_3:
  if (![stringCopy containsString:@"{"] || !objc_msgSend(stringCopy, "containsString:", @"}"))
  {
    goto LABEL_15;
  }

  v9 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"{}"];
  v10 = [stringCopy componentsSeparatedByCharactersInSet:v9];

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
    v13 = [self _extractValueInKeyValueBlob:v11 withKey:@"contentURL"];
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
  v22 = [self _extractValueInKeyValueBlob:v11 withKey:v21];
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

+ (id)_extractValueInKeyValueBlob:(id)blob withKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [blob componentsSeparatedByString:{@", '", 0}];
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
            v14 = [v13 isEqualToString:keyCopy];

            if (v14)
            {
              v16 = [v12 objectAtIndexedSubscript:1];
              stringByRemovingPercentEncoding = [v16 stringByRemovingPercentEncoding];

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

  stringByRemovingPercentEncoding = 0;
LABEL_14:

  return stringByRemovingPercentEncoding;
}

- (id)copyWithParameterAllowList:(id)list metadataProvider:(id)provider
{
  v79 = *MEMORY[0x1E69E9840];
  listCopy = list;
  providerCopy = provider;
  actionType = self->_actionType;
  v9 = actionType > 6 || ((1 << actionType) & 0x62) == 0;
  v65 = listCopy;
  if (!v9 || listCopy == 0 || actionType == 7)
  {
    selfCopy4 = self;
  }

  else
  {
    intent = [(ATXAction *)self intent];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    intent2 = [(ATXAction *)self intent];
    v17 = intent2;
    if (isKindOfClass)
    {
      atx_nonNilParameters = [intent2 atx_nonNilParameters];
      v19 = [atx_nonNilParameters mutableCopy];

      [v19 minusSet:listCopy];
      launchId = [v17 launchId];

      if (launchId)
      {
        if (!providerCopy)
        {
          providerCopy = objc_alloc_init(MEMORY[0x1E69ACF60]);
        }

        launchId2 = [v17 launchId];
        appIntentIdentifier = [v17 appIntentIdentifier];
        v76 = 0;
        v23 = [providerCopy actionForBundleIdentifier:launchId2 andActionIdentifier:appIntentIdentifier error:&v76];
        v24 = v76;

        if (v23)
        {
          selfCopy2 = self;
          allObjects = [v19 allObjects];
          v74[0] = MEMORY[0x1E69E9820];
          v74[1] = 3221225472;
          v74[2] = __57__ATXAction_copyWithParameterAllowList_metadataProvider___block_invoke;
          v74[3] = &unk_1E80C1BD0;
          v75 = v23;
          v27 = [allObjects _pas_filteredArrayWithTest:v74];

          if ([v27 count])
          {
            serializedParameters = [v17 serializedParameters];
            v60 = providerCopy;
            v29 = [serializedParameters mutableCopy];

            [v29 removeObjectsForKeys:v27];
            v30 = objc_alloc(MEMORY[0x1E696E730]);
            launchId3 = [v17 launchId];
            appIntentIdentifier2 = [v17 appIntentIdentifier];
            v33 = [v30 initWithAppBundleIdentifier:launchId3 appIntentIdentifier:appIntentIdentifier2 serializedParameters:v29];

            v34 = selfCopy2->_title;
            v35 = [ATXAction alloc];
            LOBYTE(v59) = selfCopy2->_isFutureMedia;
            selfCopy4 = [(ATXAction *)v35 initWithIntent:v33 actionUUID:selfCopy2->_actionUUID bundleId:selfCopy2->_bundleId heuristic:selfCopy2->_heuristic heuristicMetadata:selfCopy2->_heuristicMetadata criteria:0 isFutureMedia:v59 title:v34 subtitle:selfCopy2->_subtitle];

            providerCopy = v60;
          }

          else
          {
            selfCopy4 = selfCopy2;
          }
        }

        else
        {
          v58 = __atxlog_handle_action_prediction();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            [ATXAction copyWithParameterAllowList:metadataProvider:];
          }

          selfCopy4 = self;
        }
      }

      else
      {
        v57 = __atxlog_handle_action_prediction();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
        {
          [ATXAction copyWithParameterAllowList:metadataProvider:];
        }

        selfCopy4 = self;
      }
    }

    else
    {
      _emptyCopy = [intent2 _emptyCopy];

      selfCopy5 = self;
      intent3 = [(ATXAction *)self intent];
      atx_nonNilParameters2 = [intent3 atx_nonNilParameters];
      v39 = [atx_nonNilParameters2 mutableCopy];

      [v39 intersectSet:listCopy];
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
            v46 = [intent3 atx_parameterValueForKey:v45];
            [_emptyCopy setValue:v46 forKey:v45];
          }

          v42 = [v40 countByEnumeratingWithState:&v70 objects:v78 count:16];
        }

        while (v42);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v65 containsObject:@"buckets"] & 1) == 0)
      {
        v61 = providerCopy;
        v63 = objc_opt_new();
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        intent4 = [(ATXAction *)selfCopy5 intent];
        buckets = [intent4 buckets];

        obj = buckets;
        v49 = [buckets countByEnumeratingWithState:&v66 objects:v77 count:16];
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

        [_emptyCopy setValue:v63 forKey:@"buckets"];
        providerCopy = v61;
      }

      v56 = [ATXAction alloc];
      LOBYTE(v59) = selfCopy5->_isFutureMedia;
      selfCopy4 = [(ATXAction *)v56 initWithIntent:_emptyCopy actionUUID:selfCopy5->_actionUUID bundleId:selfCopy5->_bundleId heuristic:selfCopy5->_heuristic heuristicMetadata:selfCopy5->_heuristicMetadata criteria:0 isFutureMedia:v59 title:0 subtitle:0];
    }
  }

  return selfCopy4;
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
  actionDescription = [(ATXAction *)self actionDescription];
  v4 = actionDescription;
  if (!actionDescription)
  {
    actionDescription = [MEMORY[0x1E695DFB0] null];
  }

  v17 = actionDescription;
  v20[1] = actionDescription;
  v19[2] = @"type";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_actionType];
  v20[2] = v18;
  v19[3] = @"heuristic";
  heuristic = self->_heuristic;
  null = heuristic;
  if (!heuristic)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16 = null;
  v20[3] = null;
  v19[4] = @"criteria";
  criteria = [(ATXAction *)self criteria];
  json = [criteria json];
  v20[4] = json;
  v19[5] = @"actionUUID";
  uUIDString = [(NSUUID *)self->_actionUUID UUIDString];
  v20[5] = uUIDString;
  v19[6] = @"actionTitle";
  actionTitle = [(ATXAction *)self actionTitle];
  null2 = actionTitle;
  if (!actionTitle)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20[6] = null2;
  v19[7] = @"actionSubtitle";
  actionSubtitle = [(ATXAction *)self actionSubtitle];
  null3 = actionSubtitle;
  if (!actionSubtitle)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v20[7] = null3;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:8];
  if (!actionSubtitle)
  {
  }

  if (!actionTitle)
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

- (id)obfuscatedJsonWithMapping:(id)mapping
{
  mappingCopy = mapping;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"criteria", @"actionUUID", @"actionType", @"heuristic", 0}];
  v6 = [(ATXAction *)self copyWithParameterWhitelist:v5];
  json = [v6 json];
  v8 = [json mutableCopy];

  [v8 removeObjectForKey:@"bundleId"];
  [v8 removeObjectForKey:@"description"];
  intent = [(ATXAction *)self intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    intent2 = [(ATXAction *)self intent];
    conversationIdentifier = [intent2 conversationIdentifier];

    if (conversationIdentifier)
    {
      v13 = [mappingCopy objectForKeyedSubscript:conversationIdentifier];
      if (!v13)
      {
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(mappingCopy, "count")}];
        [mappingCopy setObject:v13 forKeyedSubscript:conversationIdentifier];
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

- (void)setHeuristic:(id)heuristic
{
  v4 = [heuristic copy];
  heuristic = self->_heuristic;
  self->_heuristic = v4;

  MEMORY[0x1EEE66BB8](v4, heuristic);
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
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
  bundleId = [(ATXAction *)self bundleId];
  intent = [(ATXAction *)self intent];

  if (intent)
  {
    intent2 = [(ATXAction *)self intent];
    _intents_bundleIdForDisplay = [intent2 _intents_bundleIdForDisplay];
LABEL_7:
    v9 = _intents_bundleIdForDisplay;
    if (_intents_bundleIdForDisplay)
    {
      v10 = _intents_bundleIdForDisplay;
    }

    else
    {
      v10 = bundleId;
    }

    v11 = v10;

    goto LABEL_11;
  }

  userActivity = [(ATXAction *)self userActivity];
  if (userActivity)
  {

LABEL_6:
    intent2 = [(ATXAction *)self bundleId];
    _intents_bundleIdForDisplay = INDisplayableOrLaunchableBundleIdForBundleIdFromUserActivity();
    goto LABEL_7;
  }

  userActivityProxy = [(ATXAction *)self userActivityProxy];

  if (userActivityProxy)
  {
    goto LABEL_6;
  }

  v11 = bundleId;
LABEL_11:

  return v11;
}

- (id)_spotlightContentType
{
  intent = [(ATXAction *)self intent];
  if (!intent)
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

  routeInfo = [(ATXAction *)self routeInfo];
  if (routeInfo && (v11 = routeInfo, -[ATXAction routeInfo](self, "routeInfo"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isExternalRoute], v12, v11, (v13 & 1) != 0))
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

+ (id)actionFromProactiveSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 2)
  {
    executableSpecification2 = [suggestionCopy executableSpecification];
    executableClassString = [executableSpecification2 executableClassString];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [executableClassString isEqualToString:v9];

    if (v10)
    {
      executableSpecification3 = [suggestionCopy executableSpecification];
      executableObject = [executableSpecification3 executableObject];

      if (executableObject)
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

      executableObject = 0;
    }
  }

  else
  {
    executableObject = 0;
  }

LABEL_11:

  return executableObject;
}

- (id)underlyingInteraction
{
  intent = [(ATXAction *)self intent];

  if (intent)
  {
    v4 = objc_alloc(MEMORY[0x1E696E8B8]);
    intent2 = [(ATXAction *)self intent];
    v6 = [v4 initWithIntent:intent2 response:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"heuristicMetadata"];

  v64[0] = 0;
  v9 = objc_opt_class();
  v10 = _decodeTopLevelObjectOrFail(coderCopy, v9, @"INIntent", 0, v64);
  v11 = v10;
  if (v64[0])
  {

    selfCopy = 0;
  }

  else
  {
    v64[0] = 0;
    v13 = objc_opt_class();
    v14 = _decodeTopLevelObjectOrFail(coderCopy, v13, @"userActivityProxy", 0, v64);
    v15 = v14;
    if (v64[0])
    {

      selfCopy = 0;
    }

    else
    {
      v64[0] = 0;
      v16 = objc_opt_class();
      v17 = _decodeTopLevelObjectOrFail(coderCopy, v16, @"userActivityStr", 0, v64);
      v18 = v17;
      if (v64[0])
      {

        selfCopy = 0;
      }

      else
      {
        v64[0] = 0;
        v19 = objc_opt_class();
        v20 = _decodeTopLevelObjectOrFail(coderCopy, v19, @"itemIdentifier", 0, v64);
        v21 = v20;
        if (v64[0])
        {

          selfCopy = 0;
        }

        else
        {
          v64[0] = 0;
          v22 = objc_opt_class();
          v23 = _decodeTopLevelObjectOrFail(coderCopy, v22, @"contentAttributeSet", 0, v64);
          v24 = v23;
          if (v64[0])
          {

            selfCopy = 0;
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
            v26 = _decodeArrayOrFail(coderCopy, v25, @"menuItemPath", v64);
            if (v64[0])
            {

              selfCopy = 0;
            }

            else
            {
              v62 = v26;
              v64[0] = 0;
              v27 = objc_opt_class();
              v28 = _decodeTopLevelObjectOrFail(coderCopy, v27, @"actionUUID", 1, v64);
              if (v64[0])
              {

                selfCopy = 0;
              }

              else
              {
                v61 = v28;
                v64[0] = 0;
                v29 = objc_opt_class();
                v30 = _decodeTopLevelObjectOrFail(coderCopy, v29, @"bundleId", 1, v64);
                if (v64[0])
                {

                  selfCopy = 0;
                }

                else
                {
                  v60 = v30;
                  v31 = [coderCopy decodeIntegerForKey:@"actionType"];
                  v64[0] = 0;
                  v32 = objc_opt_class();
                  v33 = _decodeTopLevelObjectOrFail(coderCopy, v32, @"heuristic", 0, v64);
                  if (v64[0])
                  {

                    selfCopy = 0;
                  }

                  else
                  {
                    v59 = v33;
                    v64[0] = 0;
                    v34 = objc_opt_class();
                    v35 = _decodeTopLevelObjectOrFail(coderCopy, v34, @"criteria", 0, v64);
                    if (v64[0])
                    {

                      selfCopy = 0;
                    }

                    else
                    {
                      v58 = v35;
                      v56 = [coderCopy decodeBoolForKey:@"isFutureMedia"];
                      v64[0] = 0;
                      v36 = objc_opt_class();
                      v37 = _decodeTopLevelObjectOrFail(coderCopy, v36, @"routeInfo", 0, v64);
                      if (v64[0])
                      {

                        selfCopy = 0;
                      }

                      else
                      {
                        v57 = v37;
                        v64[0] = 0;
                        v38 = objc_opt_class();
                        v39 = _decodeTopLevelObjectOrFail(coderCopy, v38, @"title", 0, v64);
                        if (v64[0])
                        {

                          selfCopy = 0;
                        }

                        else
                        {
                          v55 = v39;
                          v64[0] = 0;
                          v40 = objc_opt_class();
                          v41 = _decodeTopLevelObjectOrFail(coderCopy, v40, @"subtitle", 0, v64);
                          if (v64[0])
                          {

                            selfCopy = 0;
                          }

                          else
                          {
                            v54 = v41;
                            v64[0] = 0;
                            v42 = objc_opt_class();
                            v43 = _decodeTopLevelObjectOrFail(coderCopy, v42, @"languageCode", 0, v64);
                            if (v64[0])
                            {

                              selfCopy = 0;
                            }

                            else
                            {
                              v53 = v43;
                              v64[0] = 0;
                              v44 = objc_opt_class();
                              v52 = _decodeTopLevelObjectOrFail(coderCopy, v44, @"toolInvocationID", 0, v64);
                              if (v64[0])
                              {

                                selfCopy = 0;
                              }

                              else
                              {
                                v64[0] = 0;
                                v45 = objc_opt_class();
                                v51 = _decodeTopLevelObjectOrFail(coderCopy, v45, @"encodedToolInvocation", 0, v64);
                                if (v64[0])
                                {

                                  selfCopy = 0;
                                }

                                else
                                {
                                  v64[0] = 0;
                                  v46 = objc_opt_class();
                                  v47 = _decodeArrayOrFail(coderCopy, v46, @"parameterKeysForToolInvocation", v64);
                                  v48 = v47;
                                  if (v64[0])
                                  {

                                    selfCopy = 0;
                                  }

                                  else
                                  {
                                    LOBYTE(v50) = v56;
                                    self = [(ATXAction *)self initWithActivityProxy:v15 activity:0 activityString:v18 itemIdentifier:v21 contentAttributeSet:v24 intent:v63 menuItemPath:v62 actionUUID:v61 bundleId:v60 type:v31 heuristic:v59 heuristicMetadata:v8 criteria:v58 isFutureMedia:v50 routeInfo:v57 title:v55 subtitle:v54 languageCode:v53 cachedHash:0 toolInvocationID:v52 encodedToolInvocation:v51 parameterKeysForToolInvocation:v47];

                                    selfCopy = self;
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

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXAction *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];
  if (v5)
  {
    v6 = [(ATXAction *)self initWithProtoData:v5];
  }

  else
  {
    v6 = [(ATXAction *)self _initWithCoder:coderCopy];
  }

  v7 = v6;

  return v7;
}

- (BOOL)isTVAction
{
  selfCopy = self;
  intent = [(ATXAction *)self intent];
  LOBYTE(selfCopy) = [ATXAction _isTVIntent:intent bundleId:selfCopy->_bundleId];

  return selfCopy;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    dataCopy = data;
    v6 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)atx_doNotDisturbForCurrentLocationActionWithTitle:(id)title subtitle:(id)subtitle heuristicName:(id)name
{
  titleCopy = title;
  subtitleCopy = subtitle;
  nameCopy = name;
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
    v15 = [(ATXAction *)v13 initWithIntent:v11 actionUUID:v14 bundleId:@"com.apple.Preferences" heuristic:nameCopy heuristicMetadata:0 criteria:0 isFutureMedia:v17 title:titleCopy subtitle:subtitleCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)atx_doNotDisturbForEventActionWithTitle:(id)title subtitle:(id)subtitle eventTitle:(id)eventTitle eventIdentifier:(id)identifier eventUniqueID:(id)d heuristicName:(id)name
{
  v29[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  subtitleCopy = subtitle;
  eventTitleCopy = eventTitle;
  identifierCopy = identifier;
  dCopy = d;
  nameCopy = name;
  v19 = initializeDNDToggleDoNotDisturbIntent();
  v20 = v19;
  if (v19)
  {
    [v19 setValue:&unk_1F3E60468 forKey:@"state"];
    v21 = [objc_alloc(MEMORY[0x1E696E910]) initWithIdentifier:dCopy displayString:eventTitleCopy];
    [v20 setValue:v21 forKey:@"event"];

    if (identifierCopy)
    {
      v28 = @"eventIdentifier";
      v29[0] = identifierCopy;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    }

    else
    {
      v22 = 0;
    }

    v24 = [ATXAction alloc];
    v25 = objc_opt_new();
    LOBYTE(v27) = 0;
    v23 = [(ATXAction *)v24 initWithIntent:v20 actionUUID:v25 bundleId:@"com.apple.Preferences" heuristic:nameCopy heuristicMetadata:v22 criteria:0 isFutureMedia:v27 title:titleCopy subtitle:subtitleCopy];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)atx_startCallActionWithTitle:(id)title subtitle:(id)subtitle recipientName:(id)name recipientHandle:(id)handle callService:(id)service contactIdentifier:(id)identifier eventIdentifier:(id)eventIdentifier heuristicName:(id)self0 mediaType:(id)self1
{
  titleCopy = title;
  subtitleCopy = subtitle;
  nameCopy = name;
  handleCopy = handle;
  serviceCopy = service;
  identifierCopy = identifier;
  eventIdentifierCopy = eventIdentifier;
  heuristicNameCopy = heuristicName;
  typeCopy = type;
  v26 = typeCopy;
  if (!typeCopy)
  {
    goto LABEL_5;
  }

  integerValue = [typeCopy integerValue];
  if (integerValue)
  {
    if (integerValue == 2)
    {
      v28 = [self atx_startVideoCallActionWithTitle:titleCopy subtitle:subtitleCopy recipientName:nameCopy recipientHandle:handleCopy callService:serviceCopy contactIdentifier:identifierCopy eventIdentifier:eventIdentifierCopy heuristicName:heuristicNameCopy];
      goto LABEL_7;
    }

    if (integerValue == 1)
    {
LABEL_5:
      v28 = [self atx_startAudioCallActionWithTitle:titleCopy subtitle:subtitleCopy recipientName:nameCopy recipientHandle:handleCopy callService:serviceCopy contactIdentifier:identifierCopy eventIdentifier:eventIdentifierCopy heuristicName:heuristicNameCopy];
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

+ (id)atx_startVideoCallActionWithTitle:(id)title subtitle:(id)subtitle recipientName:(id)name recipientHandle:(id)handle callService:(id)service contactIdentifier:(id)identifier eventIdentifier:(id)eventIdentifier heuristicName:(id)self0
{
  v33[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  subtitleCopy = subtitle;
  serviceCopy = service;
  eventIdentifierCopy = eventIdentifier;
  heuristicNameCopy = heuristicName;
  v20 = personFromCallRecipient(identifier, handle, name);
  v21 = objc_alloc(MEMORY[0x1E696EA60]);
  v33[0] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v23 = [v21 initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:0 destinationType:1 contacts:v22 callCapability:2];

  v24 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    +[ATXAction(Factory) atx_startVideoCallActionWithTitle:subtitle:recipientName:recipientHandle:callService:contactIdentifier:eventIdentifier:heuristicName:];
  }

  if ([serviceCopy isEqualToString:@"facetime"])
  {
    [v23 _setLaunchId:@"com.apple.InCallService"];
    [v23 _setExtensionBundleId:@"com.apple.TelephonyUtilities.PhoneIntentHandler"];
    [v23 setPreferredCallProvider:2];
    if (eventIdentifierCopy)
    {
      v31 = @"eventIdentifier";
      v32 = eventIdentifierCopy;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    }

    else
    {
      v25 = 0;
    }

    v27 = [ATXAction alloc];
    v28 = objc_opt_new();
    LOBYTE(v30) = 0;
    v26 = [(ATXAction *)v27 initWithIntent:v23 actionUUID:v28 bundleId:@"com.apple.InCallService" heuristic:heuristicNameCopy heuristicMetadata:v25 criteria:0 isFutureMedia:v30 title:titleCopy subtitle:subtitleCopy];
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

+ (id)atx_setAirplaneModeActionWithTitle:(id)title subtitle:(id)subtitle
{
  titleCopy = title;
  subtitleCopy = subtitle;
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
    v16 = [(ATXAction *)v14 initWithIntent:v9 actionUUID:v15 bundleId:@"com.apple.Preferences" heuristic:@"enableAirplaneMode" heuristicMetadata:0 criteria:0 isFutureMedia:v18 title:titleCopy subtitle:subtitleCopy];
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v16;
}

+ (id)atx_startAudioCallActionWithTitle:(id)title subtitle:(id)subtitle recipientName:(id)name recipientHandle:(id)handle callService:(id)service contactIdentifier:(id)identifier eventIdentifier:(id)eventIdentifier heuristicName:(id)self0
{
  v34[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  subtitleCopy = subtitle;
  serviceCopy = service;
  eventIdentifierCopy = eventIdentifier;
  heuristicNameCopy = heuristicName;
  v20 = personFromCallRecipient(identifier, handle, name);
  v21 = objc_alloc(MEMORY[0x1E696EA60]);
  v34[0] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v23 = [v21 initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:0 destinationType:1 contacts:v22 callCapability:1];

  v24 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    +[ATXAction(Factory) atx_startVideoCallActionWithTitle:subtitle:recipientName:recipientHandle:callService:contactIdentifier:eventIdentifier:heuristicName:];
  }

  if ([serviceCopy isEqualToString:@"phone"])
  {
    v25 = 1;
LABEL_7:
    [v23 _setLaunchId:@"com.apple.InCallService"];
    [v23 _setExtensionBundleId:@"com.apple.TelephonyUtilities.PhoneIntentHandler"];
    [v23 setPreferredCallProvider:v25];
    [v23 setTTYType:1];
    if (eventIdentifierCopy)
    {
      v32 = @"eventIdentifier";
      v33 = eventIdentifierCopy;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    }

    else
    {
      v26 = 0;
    }

    v27 = [ATXAction alloc];
    v28 = objc_opt_new();
    LOBYTE(v31) = 0;
    v29 = [(ATXAction *)v27 initWithIntent:v23 actionUUID:v28 bundleId:@"com.apple.InCallService" heuristic:heuristicNameCopy heuristicMetadata:v26 criteria:0 isFutureMedia:v31 title:titleCopy subtitle:subtitleCopy];

    goto LABEL_14;
  }

  if ([serviceCopy isEqualToString:@"facetime"])
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

+ (id)atx_sendMessageActionWithTitle:(id)title subtitle:(id)subtitle recipientName:(id)name recipientHandle:(id)handle text:(id)text contactIdentifier:(id)identifier conversationIdentifier:(id)conversationIdentifier eventIdentifier:(id)self0 heuristicName:(id)self1
{
  v40[1] = *MEMORY[0x1E69E9840];
  eventIdentifierCopy = eventIdentifier;
  v17 = MEMORY[0x1E696E948];
  heuristicNameCopy = heuristicName;
  conversationIdentifierCopy = conversationIdentifier;
  identifierCopy = identifier;
  textCopy = text;
  handleCopy = handle;
  nameCopy = name;
  subtitleCopy = subtitle;
  titleCopy = title;
  v24 = [[v17 alloc] initWithValue:handleCopy type:0];
  v25 = [objc_alloc(MEMORY[0x1E696E940]) initWithPersonHandle:v24 nameComponents:0 displayName:nameCopy image:0 contactIdentifier:identifierCopy customIdentifier:handleCopy];

  v26 = objc_alloc(MEMORY[0x1E696E9E8]);
  v40[0] = v25;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v28 = [v26 initWithRecipients:v27 outgoingMessageType:0 content:textCopy speakableGroupName:0 conversationIdentifier:conversationIdentifierCopy serviceName:0 sender:0 attachments:0];

  if (eventIdentifierCopy)
  {
    v38 = @"eventIdentifier";
    v39 = eventIdentifierCopy;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  }

  else
  {
    v29 = 0;
  }

  v30 = [ATXAction alloc];
  v31 = objc_opt_new();
  LOBYTE(v34) = 0;
  v32 = [(ATXAction *)v30 initWithIntent:v28 actionUUID:v31 bundleId:@"com.apple.MobileSMS" heuristic:heuristicNameCopy heuristicMetadata:v29 criteria:0 isFutureMedia:v34 title:titleCopy subtitle:subtitleCopy];

  return v32;
}

+ (id)atx_userActivityActionWithBestAppSuggestion:(id)suggestion title:(id)title subtitle:(id)subtitle bundleID:(id)d activityType:(id)type heuristicName:(id)name
{
  subtitleCopy = subtitle;
  v13 = MEMORY[0x1E69DF010];
  nameCopy = name;
  dCopy = d;
  titleCopy = title;
  suggestionCopy = suggestion;
  v18 = [[v13 alloc] initWithSuggestion:suggestionCopy];

  if ([subtitleCopy length])
  {
    v19 = objc_alloc(MEMORY[0x1E6964E90]);
    v20 = [v19 initWithContentType:*MEMORY[0x1E6982D50]];
    [v20 setContentDescription:subtitleCopy];
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
  v24 = [(ATXAction *)v22 initFromBestAppSuggestion:v18 activity:0 actionUUID:v23 bundleId:dCopy contentAttributeSet:v20 itemIdentifier:0 heuristic:nameCopy heuristicMetadata:0 criteria:0 isFutureMedia:v26 title:titleCopy subtitle:subtitleCopy];

  return v24;
}

+ (id)webUrlParsedForUserActivityWithUrlString:(id)string
{
  v14 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (!stringCopy)
  {
    v4 = 0;
    goto LABEL_10;
  }

  v4 = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];
  if (v4 && (v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v4 resolvingAgainstBaseURL:1]) != 0)
  {
    v6 = v5;
    scheme = [v5 scheme];
    lowercaseString = [scheme lowercaseString];

    if ([lowercaseString isEqualToString:@"http"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"https"))
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
      v13 = lowercaseString;
      _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "Unsupported NSUA URL scheme: %@", &v12, 0xCu);
    }
  }

  else
  {
    v6 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = stringCopy;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "Invalid URL: '%@'", &v12, 0xCu);
    }
  }

  v9 = 0;
LABEL_15:

  return v9;
}

+ (id)atx_userActivityActionWithTitle:(id)title subtitle:(id)subtitle bundleID:(id)d activityType:(id)type urlString:(id)string userInfo:(id)info heuristicName:(id)name
{
  v43[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  subtitleCopy = subtitle;
  dCopy = d;
  typeCopy = type;
  stringCopy = string;
  infoCopy = info;
  nameCopy = name;
  context = objc_autoreleasePoolPush();
  v22 = [self webUrlParsedForUserActivityWithUrlString:stringCopy];
  v39 = typeCopy;
  v23 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:typeCopy];
  v40 = titleCopy;
  [v23 setTitle:titleCopy];
  if (infoCopy)
  {
    [v23 setUserInfo:infoCopy];
  }

  if (v22)
  {
    [v23 setWebpageURL:v22];
  }

  host = [v22 host];
  v25 = [host isEqualToString:@"trackingshipment.apple.com"];

  if ([v22 atx_isOpenableFaceTimeURL])
  {

    dCopy = @"com.apple.InCallService";
  }

  if (v22 && !(v25 & 1 | (([(__CFString *)dCopy isEqualToString:@"com.apple.mobilesafari"]& 1) == 0)))
  {
    _lp_simplifiedDisplayString = [v22 _lp_simplifiedDisplayString];
    v42 = @"contentDescription";
    v43[0] = _lp_simplifiedDisplayString;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    [v23 _setContentAttributes:v29];

    v30 = objc_alloc(MEMORY[0x1E6964E90]);
    v27 = [v30 initWithContentType:*MEMORY[0x1E6982D50]];
    [v27 setContentDescription:_lp_simplifiedDisplayString];
  }

  else if ([subtitleCopy length])
  {
    v26 = objc_alloc(MEMORY[0x1E6964E90]);
    v27 = [v26 initWithContentType:*MEMORY[0x1E6982D50]];
    [v27 setContentDescription:subtitleCopy];
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

  v32 = subtitleCopy;
  v33 = [ATXAction alloc];
  v34 = objc_opt_new();
  LOBYTE(v37) = 0;
  v35 = [(ATXAction *)v33 initWithNSUserActivity:v23 actionUUID:v34 bundleId:dCopy contentAttributeSet:v27 itemIdentifier:0 heuristic:nameCopy heuristicMetadata:0 criteria:0 isFutureMedia:v37 title:0 subtitle:0];

  objc_autoreleasePoolPop(context);

  return v35;
}

+ (id)atx_updateAlarmActionWithTitle:(id)title subtitle:(id)subtitle alarmID:(id)d alarmTitle:(id)alarmTitle heuristicName:(id)name
{
  titleCopy = title;
  subtitleCopy = subtitle;
  dCopy = d;
  alarmTitleCopy = alarmTitle;
  nameCopy = name;
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
    [ATXAction(Factory) atx_updateAlarmActionWithTitle:a2 subtitle:self alarmID:? alarmTitle:? heuristicName:?];
  }

  v20 = objc_opt_new();
  [v20 _setExtensionBundleId:@"com.apple.mobiletimer-framework.MobileTimerIntents"];
  [v20 _setLaunchId:@"com.apple.mobiletimer"];
  [v20 _setNanoLaunchId:@"com.apple.NanoAlarm"];
  v21 = [objc_alloc(MEMORY[0x1E696E910]) initWithIdentifier:dCopy displayString:alarmTitleCopy];
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
      v25 = [(ATXAction *)v23 initWithIntent:v22 actionUUID:v24 bundleId:@"com.apple.mobiletimer" heuristic:nameCopy heuristicMetadata:0 criteria:0 isFutureMedia:v29 title:titleCopy subtitle:subtitleCopy];

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

+ (id)atx_setAlarmActionWithTitle:(id)title subtitle:(id)subtitle eventIdentifier:(id)identifier eventTitle:(id)eventTitle alarmDate:(id)date heuristicName:(id)name
{
  v51[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  subtitleCopy = subtitle;
  identifierCopy = identifier;
  eventTitleCopy = eventTitle;
  dateCopy = date;
  nameCopy = name;
  context = objc_autoreleasePoolPush();
  v15 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v16 = [v15 components:96 fromDate:dateCopy];
  hour = [v16 hour];
  minute = [v16 minute];
  v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v20 = [v15 dateBySettingHour:hour minute:minute second:0 ofDate:v19 options:0];

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
    [ATXAction(Factory) atx_setAlarmActionWithTitle:a2 subtitle:self eventIdentifier:? eventTitle:? alarmDate:? heuristicName:?];
  }

  v27 = objc_opt_new();
  [v27 _setExtensionBundleId:@"com.apple.mobiletimer-framework.MobileTimerIntents"];
  [v27 _setLaunchId:@"com.apple.mobiletimer"];
  [v27 _setNanoLaunchId:@"com.apple.NanoAlarm"];
  [v27 setRequiresAppLaunch:1];
  [v27 setLabel:eventTitleCopy];
  v28 = [objc_alloc(MEMORY[0x1E696E910]) initWithIdentifier:v24 displayString:v21];
  [v27 setTime:v28];

  v29 = INIntentWithTypedIntent();
  if (v29)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (identifierCopy)
      {
        v50 = @"eventIdentifier";
        v51[0] = identifierCopy;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
      }

      else
      {
        v30 = 0;
      }

      v34 = [ATXAction alloc];
      v35 = objc_opt_new();
      LOBYTE(v37) = 0;
      v33 = [(ATXAction *)v34 initWithIntent:v29 actionUUID:v35 bundleId:@"com.apple.mobiletimer" heuristic:nameCopy heuristicMetadata:v30 criteria:0 isFutureMedia:v37 title:titleCopy subtitle:subtitleCopy];

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

+ (id)atx_showCheckInActionWithTeamId:(id)id userActivityString:(id)string subtitle:(id)subtitle overrideBundleId:(id)bundleId suggestedEventUniqueKey:(id)key heuristicName:(id)name criteria:(id)criteria
{
  v68 = *MEMORY[0x1E69E9840];
  idCopy = id;
  stringCopy = string;
  subtitleCopy = subtitle;
  bundleIdCopy = bundleId;
  keyCopy = key;
  nameCopy = name;
  criteriaCopy = criteria;
  if (![idCopy length])
  {
    v24 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      +[ATXAction(Factory) atx_showCheckInActionWithTeamId:userActivityString:subtitle:overrideBundleId:suggestedEventUniqueKey:heuristicName:criteria:];
    }

    goto LABEL_15;
  }

  if (![stringCopy length])
  {
    v24 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      +[ATXAction(Factory) atx_showCheckInActionWithTeamId:userActivityString:subtitle:overrideBundleId:suggestedEventUniqueKey:heuristicName:criteria:];
    }

    goto LABEL_15;
  }

  if (![subtitleCopy length])
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

  v21 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithUserActivityStrings:stringCopy secondaryString:0 optionalData:0];
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
  v57 = nameCopy;
  v58 = criteriaCopy;
  v59 = subtitleCopy;
  v60 = keyCopy;
  if (bundleIdCopy)
  {
    v23 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v67 = bundleIdCopy;
      _os_log_impl(&dword_1BF549000, v23, OS_LOG_TYPE_INFO, "atx_showCheckInAction: Using fallback bundle. Override bundle is: %@", buf, 0xCu);
    }

    v24 = v22;
    v25 = bundleIdCopy;
    goto LABEL_30;
  }

  activityType = [v21 activityType];
  v29 = _LSCopyAdvertisementStringForTeamIdentifierAndActivityType();

  v30 = v29;
  v55 = [MEMORY[0x1E69635F8] applicationRecordsForUserActivityType:v29 limit:1 error:0];
  firstObject = [v55 firstObject];
  applicationState = [firstObject applicationState];
  v54 = firstObject;
  if (([applicationState isInstalled] & 1) == 0)
  {

    goto LABEL_25;
  }

  bundleIdentifier = [firstObject bundleIdentifier];

  if (!bundleIdentifier)
  {
LABEL_25:
    webpageURL = [v22 webpageURL];

    v39 = __atxlog_handle_heuristic();
    v40 = v39;
    if (!webpageURL)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        [ATXAction(Factory) atx_showCheckInActionWithTeamId:v22 userActivityString:v40 subtitle:? overrideBundleId:? suggestedEventUniqueKey:? heuristicName:? criteria:?];
      }

      v24 = 0;
      v26 = 0;
      criteriaCopy = v58;
      v27 = v30;
      goto LABEL_34;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      activityType2 = [v22 activityType];
      *buf = 138412290;
      v67 = activityType2;
      _os_log_impl(&dword_1BF549000, v40, OS_LOG_TYPE_INFO, "atx_showCheckInAction: Could not find an installed app to handle activityType='%@'. Using webpageURL to handle in Safari.", buf, 0xCu);
    }

    v42 = objc_alloc(MEMORY[0x1E69636A8]);
    v43 = v22;
    v24 = [v42 initWithActivityType:*MEMORY[0x1E696AA68]];
    title = [v43 title];
    [v24 setTitle:title];

    webpageURL2 = [v43 webpageURL];
    [v24 setWebpageURL:webpageURL2];

    bundleIdentifier2 = @"com.apple.mobilesafari";
    v36 = v54;
    goto LABEL_29;
  }

  v34 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    activityType3 = [v22 activityType];
    *buf = 138412290;
    v67 = activityType3;
    _os_log_impl(&dword_1BF549000, v34, OS_LOG_TYPE_INFO, "atx_showCheckInAction: Found an installed app that can handle activityType='%@'", buf, 0xCu);
  }

  v24 = v22;
  v36 = v54;
  bundleIdentifier2 = [v54 bundleIdentifier];
LABEL_29:

  v25 = bundleIdentifier2;
  subtitleCopy = v59;
LABEL_30:
  v56 = bundleIdCopy;
  v64 = @"contentDescription";
  v65 = subtitleCopy;
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  [v24 _setContentAttributes:v46];

  v47 = objc_alloc(MEMORY[0x1E6964E90]);
  v48 = [v47 initWithContentType:*MEMORY[0x1E6982D50]];
  [v48 setContentDescription:subtitleCopy];
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
  criteriaCopy = v58;
  v26 = [(ATXAction *)v50 initWithNSUserActivity:v24 actionUUID:v51 bundleId:v25 contentAttributeSet:v48 itemIdentifier:0 heuristic:v57 heuristicMetadata:v49 criteria:v58 isFutureMedia:v53 title:0 subtitle:0];

  v27 = v25;
  nameCopy = v57;
  keyCopy = v60;
  bundleIdCopy = v56;
LABEL_34:
  subtitleCopy = v59;
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