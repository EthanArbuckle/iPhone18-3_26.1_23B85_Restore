@interface ADBackgroundContextCache
+ (id)_backgroundContextWithObjects:(id)objects;
- (id)backgroundContextWithCachedObjects;
- (void)_setDefaultToken:(id)token inDynamiteClientState:(id)state;
- (void)_updateDefaultTokenInDynamiteClientState:(id)state;
@end

@implementation ADBackgroundContextCache

- (id)backgroundContextWithCachedObjects
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = v3;
  if (self->_navStatus)
  {
    [v3 addObject:?];
  }

  if (self->_localSearchGetNavigationStatusCompleted)
  {
    [v4 addObject:?];
  }

  if (self->_queueState)
  {
    [v4 addObject:?];
  }

  if (self->_errorIndicatorStatus)
  {
    [v4 addObject:?];
  }

  if (self->_currentHome)
  {
    [v4 addObject:?];
  }

  if (self->_phoneCallState)
  {
    [v4 addObject:?];
  }

  if (self->_playbackDeviceList)
  {
    [v4 addObject:?];
  }

  if (self->_homeAnnouncement)
  {
    [v4 addObject:?];
  }

  if (self->_musicPersonalizationToken || self->_musicPersonalizationTokenStatus || [(NSDictionary *)self->_allMusicPersonalizationTokens count]|| [(NSDictionary *)self->_allMusicPersonalizationTokenStatuses count])
  {
    v5 = objc_alloc_init(SADynamiteClientState);
    [(ADBackgroundContextCache *)self _updateDefaultTokenInDynamiteClientState:v5];
    v6 = +[NSMutableDictionary dictionary];
    v7 = +[NSMutableSet set];
    if ([(NSDictionary *)self->_allMusicPersonalizationTokens count])
    {
      allMusicPersonalizationTokens = self->_allMusicPersonalizationTokens;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10023C8A8;
      v27[3] = &unk_1005176F0;
      v28 = v7;
      v29 = v6;
      [(NSDictionary *)allMusicPersonalizationTokens enumerateKeysAndObjectsUsingBlock:v27];
    }

    if ([(NSDictionary *)self->_allMusicPersonalizationTokenStatuses count])
    {
      allMusicPersonalizationTokenStatuses = self->_allMusicPersonalizationTokenStatuses;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10023C94C;
      v24[3] = &unk_100517718;
      v25 = v6;
      v26 = v7;
      [(NSDictionary *)allMusicPersonalizationTokenStatuses enumerateKeysAndObjectsUsingBlock:v24];
    }

    v10 = +[ADMultiUserService sharedService];
    v11 = [v10 getSyncableSharedUserIdsForSharedUserIds:v7];

    if ([v6 count])
    {
      v12 = +[ADMultiUserService sharedService];
      countVoiceProfiles = [v12 countVoiceProfiles];

      if (countVoiceProfiles)
      {
        v14 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
        v18 = _NSConcreteStackBlock;
        v19 = 3221225472;
        v20 = sub_10023CA18;
        v21 = &unk_100517740;
        v22 = v11;
        v23 = v14;
        v15 = v14;
        [v6 enumerateKeysAndObjectsUsingBlock:&v18];
        [v5 setInContextUsersStates:{v15, v18, v19, v20, v21}];
      }
    }

    [v4 addObject:v5];
  }

  v16 = [ADBackgroundContextCache _backgroundContextWithObjects:v4];

  return v16;
}

- (void)_updateDefaultTokenInDynamiteClientState:(id)state
{
  stateCopy = state;
  musicPersonalizationToken = self->_musicPersonalizationToken;
  if (*&self->_musicPersonalizationToken != 0)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315138;
      v8 = "[ADBackgroundContextCache _updateDefaultTokenInDynamiteClientState:]";
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Using default musicPersonalizationToken since we didn't find one for preferredMediaUserSharedUserID or it wasn't set", &v7, 0xCu);
      musicPersonalizationToken = self->_musicPersonalizationToken;
    }

    [(ADBackgroundContextCache *)self _setDefaultToken:musicPersonalizationToken inDynamiteClientState:stateCopy];
  }
}

- (void)_setDefaultToken:(id)token inDynamiteClientState:(id)state
{
  stateCopy = state;
  tokenCopy = token;
  [stateCopy setUserToken:tokenCopy];
  v7 = objc_alloc_init(SAUserState);
  [v7 setUserToken:tokenCopy];

  if (self->_musicPersonalizationTokenStatus)
  {
    [stateCopy setUserTokenStatus:?];
    [v7 setUserTokenStatus:self->_musicPersonalizationTokenStatus];
  }

  [stateCopy setDefaultUserState:v7];
}

+ (id)_backgroundContextWithObjects:(id)objects
{
  objectsCopy = objects;
  v4 = objc_alloc_init(SASetBackgroundContext);
  if ([objectsCopy count])
  {
    [v4 setObjects:objectsCopy];
  }

  return v4;
}

@end