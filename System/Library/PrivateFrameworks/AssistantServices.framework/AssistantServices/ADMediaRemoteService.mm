@interface ADMediaRemoteService
- (ADMediaRemoteService)initWithQueue:(id)queue volumeTracker:(id)tracker whaService:(id)service;
- (id)_commandsForDomain:(id)domain;
- (id)commandsForDomain:(id)domain;
- (id)domains;
- (void)_buildCacheOfWhaServiceSupportedCommands;
- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply;
@end

@implementation ADMediaRemoteService

- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply
{
  commandCopy = command;
  domainCopy = domain;
  contextCopy = context;
  replyCopy = reply;
  encodedClassName = [commandCopy encodedClassName];
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v87 = "[ADMediaRemoteService handleCommand:forDomain:executionContext:reply:]";
    v88 = 2112;
    v89 = domainCopy;
    v90 = 2112;
    v91 = encodedClassName;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  if (self->_whaService || (v27 = AFSiriLogContextDaemon, os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR)) && (*buf = 136315138, v87 = "[ADMediaRemoteService handleCommand:forDomain:executionContext:reply:]", _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s WARNING: No other media service found, handling everything in assistantd.", buf, 0xCu), self->_whaService))
  {
    if (objc_opt_respondsToSelector())
    {
      hashedRouteUIDs = [commandCopy hashedRouteUIDs];
      v13 = [hashedRouteUIDs count] == 0;

      if (!v13)
      {
        v14 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          whaService = self->_whaService;
          *buf = 136315650;
          v87 = "[ADMediaRemoteService handleCommand:forDomain:executionContext:reply:]";
          v88 = 2112;
          v89 = encodedClassName;
          v90 = 2112;
          v91 = whaService;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s %@ command has explicit routes, passing to %@", buf, 0x20u);
        }

        if ([(NSSet *)self->_whaServiceSupportedCommands containsObject:encodedClassName])
        {
          encodedClassName2 = [commandCopy encodedClassName];
          v17 = [encodedClassName2 isEqualToString:SAMPSetQueueClassIdentifier];

          if (v17)
          {
            v68 = commandCopy;
            v18 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              v19 = v18;
              aceId = [v68 aceId];
              *buf = 136315394;
              v87 = "_ADAddWHAIdentifiersToSAMPSetQueue";
              v88 = 2112;
              v89 = aceId;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Adding metrics info to SetQueue %@", buf, 0x16u);
            }

            v69 = [[NSMutableDictionary alloc] initWithCapacity:1];
            v21 = +[NSUUID UUID];
            uUIDString = [v21 UUIDString];

            v92[0] = @"clientID";
            v92[1] = @"beginTime";
            v93[0] = uUIDString;
            v22 = +[NSDate date];
            [v22 timeIntervalSinceReferenceDate];
            v23 = [NSNumber numberWithDouble:?];
            v93[1] = v23;
            v24 = [NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:2];
            [v69 setObject:v24 forKey:@"WHAMetrics"];

            metricsContext = [v68 metricsContext];
            v65 = metricsContext;
            if (metricsContext)
            {
              v26 = [metricsContext dataUsingEncoding:4];
              v79 = 0;
              v67 = [NSJSONSerialization JSONObjectWithData:v26 options:0 error:&v79];
              v63 = v79;
            }

            else
            {
              v67 = 0;
              v63 = 0;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v87 = "_ADAddWHAIdentifiersToSAMPSetQueue";
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s merging existing metricsContext dictionary", buf, 0xCu);
              }

              v42 = v67;
              v75 = 0u;
              v76 = 0u;
              v77 = 0u;
              v78 = 0u;
              v43 = v69;
              v44 = [v43 countByEnumeratingWithState:&v75 objects:buf count:16];
              if (v44)
              {
                v45 = *v76;
                do
                {
                  for (i = 0; i != v44; i = i + 1)
                  {
                    if (*v76 != v45)
                    {
                      objc_enumerationMutation(v43);
                    }

                    v47 = *(*(&v75 + 1) + 8 * i);
                    v48 = [(ADService *)v42 valueForKey:v47, v63, v65];

                    if (v48)
                    {
                      v49 = AFSiriLogContextDaemon;
                      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                      {
                        *v80 = 136315394;
                        v81 = "_ADAddWHAIdentifiersToSAMPSetQueue";
                        v82 = 2112;
                        v83 = v47;
                        _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%s Value already exists for key %@, keeping it", v80, 0x16u);
                      }
                    }
                  }

                  v44 = [v43 countByEnumeratingWithState:&v75 objects:buf count:16];
                }

                while (v44);
              }

              [v43 addEntriesFromDictionary:v42];
            }

            else if (v67)
            {
              v50 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                v87 = "_ADAddWHAIdentifiersToSAMPSetQueue";
                v88 = 2112;
                v89 = v67;
                v90 = 2112;
                v91 = @"metricsContextValue";
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s merging existing non-dictionary metricsContext value of %@ under key %@", buf, 0x20u);
              }

              [v69 setObject:v67 forKey:{@"metricsContextValue", v63, v65}];
            }

            v74 = v63;
            v51 = [NSJSONSerialization dataWithJSONObject:v69 options:0 error:&v74, v63];
            v52 = v74;

            v53 = [[NSString alloc] initWithData:v51 encoding:4];
            if (v53)
            {
              [v68 setMetricsContext:v53];
              v54 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
              {
                v55 = v54;
                aceId2 = [v68 aceId];
                *v80 = 136315394;
                v81 = "_ADAddWHAIdentifiersToSAMPSetQueue";
                v82 = 2112;
                v83 = aceId2;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "%s Successfully updated metricsContext on %@", v80, 0x16u);
              }
            }

            else
            {
              v57 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
              {
                *v80 = 136315650;
                v81 = "_ADAddWHAIdentifiersToSAMPSetQueue";
                v82 = 2112;
                v83 = v52;
                v84 = 2112;
                v85 = v69;
                _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%s Failed to update metricsContext error=%@ newContextDictionary=%@", v80, 0x20u);
              }
            }

            v58 = AFAnalyticsContextCreateWithCommand();
            v59 = [v58 mutableCopy];

            v60 = [v59 objectForKey:@"com.apple.ace.media.SetQueue"];
            v61 = [v60 mutableCopy];

            [v61 setObject:v69 forKey:@"metricsContext"];
            [v59 setObject:v61 forKey:@"com.apple.ace.media.SetQueue"];
            v62 = +[AFAnalytics sharedAnalytics];
            [v62 logEventWithType:2907 context:v59];
          }

          [(ADService *)self->_whaService handleCommand:commandCopy forDomain:domainCopy executionContext:contextCopy reply:replyCopy];
          goto LABEL_34;
        }

        v28 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v40 = self->_whaService;
          *buf = 136315650;
          v87 = "[ADMediaRemoteService handleCommand:forDomain:executionContext:reply:]";
          v88 = 2112;
          v89 = encodedClassName;
          v90 = 2112;
          v91 = v40;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s %@ is NOT supported by %@, attempting to handle in assistantd after all", buf, 0x20u);
        }
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v29 = commandCopy;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;
  v31 = v30;
  if (v30)
  {
    [v30 _ad_performWithMediaRemoteService:self replyHandler:replyCopy];
  }

  else if (self->_whaService && ([commandCopy encodedClassName], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "isEqualToString:", SAMPSetQueueClassIdentifier), v32, v33))
  {
    v34 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v35 = self->_whaService;
      *buf = 136315394;
      v87 = "[ADMediaRemoteService handleCommand:forDomain:executionContext:reply:]";
      v88 = 2112;
      v89 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s Handing SetQueue to %@", buf, 0x16u);
    }

    [(ADService *)self->_whaService handleCommand:commandCopy forDomain:domainCopy executionContext:contextCopy reply:replyCopy];
  }

  else
  {
    v36 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v37 = v36;
      encodedClassName3 = [commandCopy encodedClassName];
      aceId3 = [commandCopy aceId];
      *buf = 136315650;
      v87 = "[ADMediaRemoteService handleCommand:forDomain:executionContext:reply:]";
      v88 = 2112;
      v89 = encodedClassName3;
      v90 = 2112;
      v91 = aceId3;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s %@ %@ was not handled", buf, 0x20u);
    }

    if (replyCopy)
    {
      (*(replyCopy + 2))(replyCopy, 0, 0);
    }
  }

LABEL_34:
}

- (id)commandsForDomain:(id)domain
{
  v4 = [(ADMediaRemoteService *)self _commandsForDomain:domain];
  if (v4 && [(NSArray *)self->_commandsToIgnore count])
  {
    v5 = [v4 mutableCopy];
    [v5 removeObjectsInArray:self->_commandsToIgnore];
    v6 = [v5 copy];

    v4 = v6;
  }

  return v4;
}

- (id)_commandsForDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy isEqualToString:SANPGroupIdentifier])
  {
    v8[0] = SANPPausePlaybackClassIdentifier;
    v8[1] = SANPSeekToPlaybackPositionClassIdentifier;
    v8[2] = SANPSetRepeatModeClassIdentifier;
    v8[3] = SANPSetShuffleModeClassIdentifier;
    v8[4] = SANPSkipTimeIntervalClassIdentifier;
    v8[5] = SANPSkipToNextItemClassIdentifier;
    v8[6] = SANPSkipToPreviousItemClassIdentifier;
    v8[7] = SANPStartPlaybackClassIdentifier;
    v8[8] = SANPStopPlaybackClassIdentifier;
    v8[9] = SANPSetPlaybackSpeedClassIdentifier;
    v8[10] = SANPGetVolumeLevelClassIdentifier;
    v8[11] = SANPSetVolumeLevelClassIdentifier;
    v4 = [NSArray arrayWithObjects:v8 count:12];
  }

  else
  {
    v4 = 0;
  }

  if ([domainCopy isEqualToString:SAMPGroupIdentifier])
  {
    v7[0] = SAMPSetPlaybackPositionClassIdentifier;
    v7[1] = SAMPSetQueueClassIdentifier;
    v5 = [NSArray arrayWithObjects:v7 count:2];

    v4 = v5;
  }

  return v4;
}

- (id)domains
{
  v4[0] = SANPGroupIdentifier;
  v4[1] = SAMPGroupIdentifier;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (ADMediaRemoteService)initWithQueue:(id)queue volumeTracker:(id)tracker whaService:(id)service
{
  queueCopy = queue;
  trackerCopy = tracker;
  serviceCopy = service;
  v18.receiver = self;
  v18.super_class = ADMediaRemoteService;
  v12 = [(ADMediaRemoteService *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v13->_volumeTracker, tracker);
    objc_storeStrong(&v13->_whaService, service);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [(ADService *)v13 setIdentifier:v15];

    commandsToIgnore = v13->_commandsToIgnore;
    v13->_commandsToIgnore = &__NSArray0__struct;

    if (v13->_whaService)
    {
      [(ADMediaRemoteService *)v13 _buildCacheOfWhaServiceSupportedCommands];
    }
  }

  return v13;
}

- (void)_buildCacheOfWhaServiceSupportedCommands
{
  v3 = objc_alloc_init(NSMutableSet);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(ADMediaRemoteService *)self domains];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [(ADService *)self->_whaService commandsForDomain:v8];
        if ([v9 count] == 1)
        {
          v10 = v3;
          firstObject = [v9 firstObject];
          v12 = [firstObject isEqualToString:v8];

          if (v12)
          {
            v13 = [(ADMediaRemoteService *)self commandsForDomain:v8];

            v9 = v13;
          }

          v3 = v10;
        }

        if (v9)
        {
          [v3 addObjectsFromArray:v9];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v5);
  }

  v14 = [v3 count];
  if (v14)
  {
    v15 = [v3 copy];
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong(&self->_whaServiceSupportedCommands, v15);
  if (v14)
  {
  }

  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    whaServiceSupportedCommands = self->_whaServiceSupportedCommands;
    v18 = v16;
    v19 = [NSNumber numberWithUnsignedInteger:[(NSSet *)whaServiceSupportedCommands count]];
    v20 = self->_whaServiceSupportedCommands;
    *buf = 136315650;
    v27 = "[ADMediaRemoteService _buildCacheOfWhaServiceSupportedCommands]";
    v28 = 2112;
    v29 = v19;
    v30 = 2112;
    v31 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s %@ overlapping commands %@", buf, 0x20u);
  }
}

@end