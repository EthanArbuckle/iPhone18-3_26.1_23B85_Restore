@interface APSTopicManager
- (APSTopicManager)initWithEnvironment:(id)a3 topicHasher:(id)a4 user:(id)a5 userPreferences:(id)a6 ultraConstrainedProvider:(id)a7 delegate:(id)a8;
- (APSTopicManagerDelegate)delegate;
- (BOOL)_addTopic:(id)a3 connectionServer:(id)a4 attributes:(id)a5 change:(int64_t *)a6;
- (BOOL)_hasTopic:(id)a3;
- (BOOL)_isValidEnvironmentToTopics:(id)a3;
- (BOOL)_recategorizeTopic:(id)a3;
- (BOOL)_removeTopic:(id)a3 connectionServer:(id)a4 filter:(int64_t)a5;
- (BOOL)hasListeningTopic:(id)a3;
- (BOOL)hasListeningTopicHash:(id)a3;
- (BOOL)hasListeningTopics;
- (BOOL)hasPausedTopic:(id)a3;
- (BOOL)hasPausedTopics;
- (BOOL)hasSendingTopic:(id)a3;
- (BOOL)hasSendingTopicHash:(id)a3;
- (BOOL)hasSendingTopics;
- (BOOL)hasUltraConstrainedPermissionForTopic:(id)a3;
- (NSString)logString;
- (id)_redListTopics;
- (id)_topicStateForTopic:(id)a3 connectionServer:(id)a4 filter:(int64_t)a5;
- (id)debugDescription;
- (id)description;
- (id)hasEnabledTopicHash:(id)a3;
- (id)hasIgnoredTopicHash:(id)a3;
- (id)hasNonWakingTopicHash:(id)a3;
- (id)hasOpportunisticTopicHash:(id)a3;
- (id)hasPausedTopicHash:(id)a3;
- (id)topicStatesForConnectionServer:(id)a3;
- (int64_t)_changeFromFilter:(int64_t)a3 toFilter:(int64_t)a4;
- (int64_t)_potentiallyChangeChosenTopicStateForTopic:(id)a3;
- (int64_t)filterForTopicHash:(id)a3;
- (void)_clearPendingFilterTimer;
- (void)_filtersWillPotentiallyBeChanged:(id)a3;
- (void)_forgetRedListTopic:(id)a3;
- (void)_pendingFilterTimerFired;
- (void)_processPendingChangeIfNeeded;
- (void)_rememberRedListTopic:(id)a3;
- (void)_scheduleServerUpdateWithChange:(id)a3 timer:(BOOL)a4 shortInterval:(BOOL)a5;
- (void)addTopicsAndAttributes:(id)a3 connectionServer:(id)a4;
- (void)beginTransaction;
- (void)dealloc;
- (void)endTransaction;
- (void)filtersWillPotentiallyBeChangedByPolicy:(id)a3;
- (void)performFilterBlock:(id)a3;
- (void)performTransactionBlock:(id)a3;
- (void)removeAllTopics;
- (void)removeTopics:(id)a3 connectionServer:(id)a4 filter:(int64_t)a5;
- (void)removeTopicsForConnectionServer:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setIsPowerEfficientToSendFilter:(BOOL)a3;
@end

@implementation APSTopicManager

- (void)beginTransaction
{
  [(APSTopicManager *)self setInTransaction:1];
  policy = self->_policy;

  [(APSTopicFilterPolicy *)policy logFilterPolicyInformation];
}

- (void)_pendingFilterTimerFired
{
  v3 = +[APSLog topicManager];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ _pendingFilterTimerFired", &v5, 0xCu);
  }

  [(APSTopicManager *)self _clearPendingFilterTimer];
  [(APSTopicManager *)self _processTopicChange:self->_pendingChange immediately:1 alertDelegate:1];
  pendingChange = self->_pendingChange;
  self->_pendingChange = 0;
}

- (void)_clearPendingFilterTimer
{
  self->_pendingServerUpdate = 0;
  [(NSTimer *)self->_pendingFilterTimer invalidate];
  pendingFilterTimer = self->_pendingFilterTimer;
  self->_pendingFilterTimer = 0;
}

- (BOOL)hasListeningTopics
{
  if (sub_100005FFC(APSForceMacSleep) && sub_10000712C())
  {
    v3 = +[APSLog topicManager];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: Forcing Mac to connect due to mac sleep default.", &v9, 0xCu);
    }

    return 1;
  }

  else
  {
    v5 = [(APSTopicGroup *)self->_group hashesToEnabledTopics];
    if ([v5 count])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(APSTopicGroup *)self->_group hashesToOpportunisticTopics];
      if ([v6 count])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(APSTopicGroup *)self->_group hashesToNonWakingTopics];
        v4 = [v7 count] != 0;
      }
    }
  }

  return v4;
}

- (void)endTransaction
{
  [(APSTopicManager *)self setInTransaction:0];
  context = objc_autoreleasePoolPush();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [(APSTopicManager *)self topicsChanged];
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v28;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        policy = self->_policy;
        topicsToTopicsStates = self->_topicsToTopicsStates;
        v12 = [v9 topicName];
        v13 = [(NSMutableDictionary *)topicsToTopicsStates objectForKeyedSubscript:v12];
        v14 = [(APSTopicFilterPolicy *)policy topicChosenByPolicyFromTopics:v13];

        v15 = [(APSTopicManager *)self serverGroup];
        v16 = [v15 currentFilterForTopicState:v9];

        v17 = [(APSTopicManager *)self _changeFromFilter:v16 toFilter:[(APSTopicFilterPolicy *)self->_policy filterChosenByPolicyForTopic:v14]];
        if (v6 <= v17)
        {
          v6 = v17;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v18 = +[APSLog topicManager];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = sub_1000066D0(v6);
    v20 = [(APSTopicManager *)self topicsChanged];
    *buf = 138412802;
    v32 = self;
    v33 = 2112;
    v34 = v19;
    v35 = 2112;
    v36 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: completed transaction - calculated change %@ {topics changed: %@}", buf, 0x20u);
  }

  v21 = [APSFilterChange alloc];
  v22 = [(APSTopicManager *)self topicsChanged];
  v23 = [v22 firstObject];
  v24 = [v23 topicName];
  v25 = [(APSFilterChange *)v21 initWithChange:v6 triggeringTopic:v24];

  [(APSTopicManager *)self setTopicsChanged:0];
  objc_autoreleasePoolPop(context);
  if (v6)
  {
    [(APSTopicManager *)self _processTopicChange:v25 immediately:0 alertDelegate:1];
  }
}

- (id)description
{
  v3 = objc_opt_class();
  environmentName = self->_environmentName;
  v5 = [(APSUser *)self->_user name];
  v6 = [NSString stringWithFormat:@"<%@: %p %@; %@>", v3, self, environmentName, v5];;

  return v6;
}

- (APSTopicManager)initWithEnvironment:(id)a3 topicHasher:(id)a4 user:(id)a5 userPreferences:(id)a6 ultraConstrainedProvider:(id)a7 delegate:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v33 = a6;
  v17 = a7;
  v18 = a8;
  v34.receiver = self;
  v34.super_class = APSTopicManager;
  v19 = [(APSTopicManager *)&v34 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_delegate, v18);
    objc_storeStrong(&v20->_user, a5);
    objc_storeStrong(&v20->_userPreferences, a6);
    v21 = [v14 name];
    environmentName = v20->_environmentName;
    v20->_environmentName = v21;

    v20->_isPowerEfficientToSendFilter = 1;
    v23 = [[APSTopicFilterPolicyEmbedded alloc] initWithDelegate:v20 ultraConstrainedProvider:v17];
    policy = v20->_policy;
    v20->_policy = &v23->super;

    v25 = [[NSMutableDictionary alloc] initWithCapacity:24];
    topicsToTopicsStates = v20->_topicsToTopicsStates;
    v20->_topicsToTopicsStates = v25;

    v27 = [[NSMutableDictionary alloc] initWithCapacity:24];
    hashesToTopics = v20->_hashesToTopics;
    v20->_hashesToTopics = v27;

    v29 = [[APSTopicGroup alloc] initWithEnvironment:v14 topicHasher:v15 user:v16];
    group = v20->_group;
    v20->_group = v29;

    objc_storeStrong(&v20->_topicHasher, a4);
    v31 = +[NSNotificationCenter defaultCenter];
    [v31 addObserver:v20 selector:"_filtersWillPotentiallyBeChanged:" name:@"APSFiltersWillPotentiallyBeChangedNotification" object:0];
  }

  return v20;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(APSTopicManager *)self _clearPendingFilterTimer];
  [(APSTopicFilterPolicy *)self->_policy setDelegate:0];
  v4.receiver = self;
  v4.super_class = APSTopicManager;
  [(APSTopicManager *)&v4 dealloc];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (BOOL)_isValidEnvironmentToTopics:(id)a3
{
  v3 = [a3 objectForKey:self->_environmentName];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v3 objectForKey:&stru_10018F6A0], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = 0;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v3 allKeys];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v3 objectForKey:v11];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              continue;
            }
          }

          v5 = 0;
          goto LABEL_17;
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v5 = 1;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v5 = 1;
    }

LABEL_17:
  }

  return v5;
}

- (id)_redListTopics
{
  v3 = [(APSUserPreferences *)self->_userPreferences tokenTopics];
  if ([v3 count] && -[APSTopicManager _isValidEnvironmentToTopics:](self, "_isValidEnvironmentToTopics:", v3))
  {
    v4 = [v3 objectForKey:self->_environmentName];
    if (v4)
    {
      v16 = v3;
      v5 = +[NSMutableArray array];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v6 = [v4 allKeys];
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v27 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v18;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v17 + 1) + 8 * i);
            v12 = [v4 objectForKey:v11];
            [v12 timeIntervalSinceNow];
            if (v13 <= -691200.0)
            {
              v14 = +[APSLog topicManager];
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v22 = self;
                v23 = 2112;
                v24 = v11;
                v25 = 2112;
                v26 = v12;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: Pruning stale topic %@ last used %@", buf, 0x20u);
              }
            }

            else
            {
              [v5 addObject:v11];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v17 objects:v27 count:16];
        }

        while (v8);
      }

      v3 = v16;
    }

    else
    {
      v5 = +[NSArray array];
    }
  }

  else
  {
    v5 = +[NSArray array];
  }

  return v5;
}

- (void)_rememberRedListTopic:(id)a3
{
  v9 = a3;
  v4 = [(APSUserPreferences *)self->_userPreferences tokenTopics];
  v5 = [v4 mutableCopy];

  if (-[APSTopicManager _isValidEnvironmentToTopics:](self, "_isValidEnvironmentToTopics:", v5) && ([v5 objectForKey:self->_environmentName], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "mutableCopy"), v6, v7))
  {
    v8 = +[NSDate date];
    [v7 setObject:v8 forKey:v9];
  }

  else
  {
    v8 = +[NSDate date];
    v7 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v8, v9, 0];
  }

  if (v5)
  {
    [v5 setObject:v7 forKey:self->_environmentName];
  }

  else
  {
    v5 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v7, self->_environmentName, 0];
  }

  [(APSUserPreferences *)self->_userPreferences setTokenTopics:v5];
}

- (void)_forgetRedListTopic:(id)a3
{
  v10 = a3;
  v4 = [(APSUserPreferences *)self->_userPreferences tokenTopics];
  v5 = [v4 mutableCopy];

  if ([(APSTopicManager *)self _isValidEnvironmentToTopics:v5])
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v7 = [v5 objectForKey:self->_environmentName];
    v8 = [v7 mutableCopy];

    if (v8)
    {
      v9 = [v8 objectForKey:v10];

      if (v9)
      {
        [v5 setObject:v8 forKey:self->_environmentName];
        [v8 removeObjectForKey:v10];
        [(APSUserPreferences *)self->_userPreferences setTokenTopics:v5];
      }
    }
  }
}

- (id)hasEnabledTopicHash:(id)a3
{
  group = self->_group;
  v4 = a3;
  v5 = [(APSTopicGroup *)group hashesToEnabledTopics];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 topicName];

  return v7;
}

- (id)hasIgnoredTopicHash:(id)a3
{
  group = self->_group;
  v4 = a3;
  v5 = [(APSTopicGroup *)group hashesToIgnoredTopics];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 topicName];

  return v7;
}

- (id)hasPausedTopicHash:(id)a3
{
  group = self->_group;
  v4 = a3;
  v5 = [(APSTopicGroup *)group hashesToPausedTopics];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 topicName];

  return v7;
}

- (id)hasOpportunisticTopicHash:(id)a3
{
  group = self->_group;
  v4 = a3;
  v5 = [(APSTopicGroup *)group hashesToOpportunisticTopics];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 topicName];

  return v7;
}

- (id)hasNonWakingTopicHash:(id)a3
{
  group = self->_group;
  v4 = a3;
  v5 = [(APSTopicGroup *)group hashesToNonWakingTopics];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 topicName];

  return v7;
}

- (BOOL)_hasTopic:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_topicsToTopicsStates objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasPausedTopics
{
  v2 = [(APSTopicGroup *)self->_group hashesToPausedTopics];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)hasListeningTopic:(id)a3
{
  v4 = a3;
  if ([(APSTopicManager *)self hasListeningTopics])
  {
    v5 = [(APSTopicHasher *)self->_topicHasher topicHashForTopic:v4 user:self->_user];
    v6 = [(APSTopicGroup *)self->_group hashesToEnabledTopics];
    v7 = [v6 objectForKey:v5];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = [(APSTopicGroup *)self->_group hashesToOpportunisticTopics];
      v10 = [v9 objectForKey:v5];
      if (v10)
      {
        v8 = 1;
      }

      else
      {
        v11 = [(APSTopicGroup *)self->_group hashesToNonWakingTopics];
        v12 = [v11 objectForKey:v5];
        v8 = v12 != 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hasListeningTopicHash:(id)a3
{
  v4 = a3;
  if ([(APSTopicManager *)self hasListeningTopics])
  {
    v5 = [(APSTopicGroup *)self->_group hashesToEnabledTopics];
    v6 = [v5 objectForKey:v4];
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v8 = [(APSTopicGroup *)self->_group hashesToOpportunisticTopics];
      v9 = [v8 objectForKey:v4];
      if (v9)
      {
        v7 = 1;
      }

      else
      {
        v10 = [(APSTopicGroup *)self->_group hashesToNonWakingTopics];
        v11 = [v10 objectForKey:v4];
        v7 = v11 != 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasPausedTopic:(id)a3
{
  v4 = a3;
  if ([(APSTopicManager *)self hasPausedTopics])
  {
    v5 = [(APSTopicHasher *)self->_topicHasher topicHashForTopic:v4 user:self->_user];
    v6 = [(APSTopicManager *)self hasPausedTopicHash:v5];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasSendingTopics
{
  v3 = [(APSTopicGroup *)self->_group hashesToEnabledTopics];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(APSTopicGroup *)self->_group hashesToPausedTopics];
    if ([v5 count])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(APSTopicGroup *)self->_group hashesToOpportunisticTopics];
      if ([v6 count])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(APSTopicGroup *)self->_group hashesToNonWakingTopics];
        v4 = [v7 count] != 0;
      }
    }
  }

  return v4;
}

- (BOOL)hasSendingTopicHash:(id)a3
{
  v4 = a3;
  if ([(APSTopicManager *)self hasSendingTopics])
  {
    v5 = [(APSTopicGroup *)self->_group hashesToEnabledTopics];
    v6 = [v5 objectForKey:v4];
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v8 = [(APSTopicGroup *)self->_group hashesToPausedTopics];
      v9 = [v8 objectForKey:v4];
      if (v9)
      {
        v7 = 1;
      }

      else
      {
        v10 = [(APSTopicGroup *)self->_group hashesToOpportunisticTopics];
        v11 = [v10 objectForKey:v4];
        if (v11)
        {
          v7 = 1;
        }

        else
        {
          v12 = [(APSTopicGroup *)self->_group hashesToNonWakingTopics];
          v13 = [v12 objectForKey:v4];
          v7 = v13 != 0;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasSendingTopic:(id)a3
{
  v4 = a3;
  if ([(APSTopicManager *)self hasSendingTopics])
  {
    v5 = [(APSTopicHasher *)self->_topicHasher topicHashForTopic:v4 user:self->_user];
    v6 = [(APSTopicGroup *)self->_group hashesToEnabledTopics];
    v7 = [v6 objectForKey:v5];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = [(APSTopicGroup *)self->_group hashesToPausedTopics];
      v10 = [v9 objectForKey:v5];
      if (v10)
      {
        v8 = 1;
      }

      else
      {
        v11 = [(APSTopicGroup *)self->_group hashesToOpportunisticTopics];
        v12 = [v11 objectForKey:v5];
        if (v12)
        {
          v8 = 1;
        }

        else
        {
          v13 = [(APSTopicGroup *)self->_group hashesToNonWakingTopics];
          v14 = [v13 objectForKey:v5];
          v8 = v14 != 0;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hasUltraConstrainedPermissionForTopic:(id)a3
{
  [(NSMutableDictionary *)self->_topicsToTopicsStates objectForKeyedSubscript:a3];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) attributes];
        v8 = [v7 isUltraConstrainedEnabled];

        if (v8)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (int64_t)filterForTopicHash:(id)a3
{
  v4 = a3;
  v5 = [(APSTopicManager *)self hasEnabledTopicHash:v4];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(APSTopicManager *)self hasOpportunisticTopicHash:v4];

    if (v7)
    {
      v6 = 2;
    }

    else
    {
      v8 = [(APSTopicManager *)self hasNonWakingTopicHash:v4];

      if (v8)
      {
        v6 = 4;
      }

      else
      {
        v9 = [(APSTopicManager *)self hasPausedTopicHash:v4];

        if (v9)
        {
          v6 = 5;
        }

        else
        {
          v10 = [(APSTopicManager *)self hasIgnoredTopicHash:v4];

          if (v10)
          {
            v6 = 3;
          }

          else
          {
            v6 = 0;
          }
        }
      }
    }
  }

  return v6;
}

- (id)_topicStateForTopic:(id)a3 connectionServer:(id)a4 filter:(int64_t)a5
{
  v8 = a4;
  [(NSMutableDictionary *)self->_topicsToTopicsStates objectForKey:a3];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v24 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v14 connectionServer];
        v16 = v15;
        if (v15 == v8)
        {
          v17 = [v14 attributes];
          v18 = [v17 filter];

          if (v18 == a5)
          {
            v19 = v14;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_13:

  return v19;
}

- (BOOL)_recategorizeTopic:(id)a3
{
  v4 = a3;
  v5 = [v4 topicHash];
  if (self->_inTransaction)
  {
    v6 = [(APSTopicManager *)self topicsChanged];

    if (!v6)
    {
      v7 = objc_alloc_init(NSMutableArray);
      [(APSTopicManager *)self setTopicsChanged:v7];
    }

    v8 = [(APSTopicManager *)self topicsChanged];
    v9 = [v8 containsObject:v4];

    if ((v9 & 1) == 0)
    {
      v10 = [(APSTopicManager *)self topicsChanged];
      [v10 addObject:v4];
    }
  }

  v11 = [v4 desiredFilter];
  v12 = [v4 currentFilter];
  if (v11 != v12)
  {
    v13 = [v4 desiredFilter];
    if (v13 <= 2)
    {
      if (v13 == 1)
      {
        v14 = [(APSTopicGroup *)self->_group hashesToEnabledTopics];
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_19;
        }

        v14 = [(APSTopicGroup *)self->_group hashesToOpportunisticTopics];
      }
    }

    else
    {
      switch(v13)
      {
        case 3:
          v14 = [(APSTopicGroup *)self->_group hashesToIgnoredTopics];
          break;
        case 4:
          v14 = [(APSTopicGroup *)self->_group hashesToNonWakingTopics];
          break;
        case 5:
          v14 = [(APSTopicGroup *)self->_group hashesToPausedTopics];
          break;
        default:
          goto LABEL_19;
      }
    }

    v15 = v14;
    [v14 setObject:v4 forKey:v5];

LABEL_19:
    v16 = [v4 currentFilter];
    if (v16 <= 2)
    {
      if (v16 == 1)
      {
        v17 = [(APSTopicGroup *)self->_group hashesToEnabledTopics];
        goto LABEL_30;
      }

      if (v16 == 2)
      {
        v17 = [(APSTopicGroup *)self->_group hashesToOpportunisticTopics];
        goto LABEL_30;
      }
    }

    else
    {
      switch(v16)
      {
        case 3:
          v17 = [(APSTopicGroup *)self->_group hashesToIgnoredTopics];
          goto LABEL_30;
        case 4:
          v17 = [(APSTopicGroup *)self->_group hashesToNonWakingTopics];
          goto LABEL_30;
        case 5:
          v17 = [(APSTopicGroup *)self->_group hashesToPausedTopics];
LABEL_30:
          v18 = v17;
          [v17 removeObjectForKey:v5];

          break;
      }
    }

    v19 = +[APSLog topicManager];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v4 topicName];
      v21 = sub_100007D14([v4 currentFilter]);
      v22 = sub_100007D14([v4 desiredFilter]);
      v24 = 138413058;
      v25 = self;
      v26 = 2112;
      v27 = v20;
      v28 = 2112;
      v29 = v21;
      v30 = 2112;
      v31 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@: recategorizing topic %@ from %@ to %@", &v24, 0x2Au);
    }

    [v4 setCurrentFilter:{objc_msgSend(v4, "desiredFilter")}];
  }

  return v11 != v12;
}

- (BOOL)_addTopic:(id)a3 connectionServer:(id)a4 attributes:(id)a5 change:(int64_t *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = -[APSTopicManager _topicStateForTopic:connectionServer:filter:](self, "_topicStateForTopic:connectionServer:filter:", v9, v10, [v11 filter]);
  v13 = [(APSTopicHasher *)self->_topicHasher topicHashForTopic:v9 user:self->_user];
  v14 = [[APSTopicState alloc] initWithTopicName:v9 connectionServer:v10 attributes:v11 topicHash:v13];
  v15 = +[APSLog topicManager];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v53 = self;
    v54 = 2112;
    v55 = v9;
    v56 = 2112;
    *v57 = v13;
    *&v57[8] = 2112;
    v58 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: adding topic %@ (%@) for connection server %@", buf, 0x2Au);
  }

  v43 = v13;

  v16 = [(NSMutableDictionary *)self->_topicsToTopicsStates objectForKey:v9];
  v17 = v16;
  if (v12)
  {
    [v16 removeObject:v12];
    [v17 addObject:v14];
  }

  else
  {
    if (v16)
    {
      [v16 addObject:v14];
    }

    else
    {
      v17 = [NSMutableArray arrayWithObject:v14];
      [(NSMutableDictionary *)self->_topicsToTopicsStates setObject:v17 forKey:v9];
    }

    if ([v17 count] == 1)
    {
      hashesToTopics = self->_hashesToTopics;
      v19 = [(APSTopicState *)v14 topicHash];
      [(NSMutableDictionary *)hashesToTopics setObject:v9 forKey:v19];
    }
  }

  v44 = v12;
  v45 = v11;
  v46 = v10;
  if ([v17 count] == 1)
  {
    v20 = v14;
LABEL_12:
    v21 = 0;
    v22 = 0;
    goto LABEL_13;
  }

  v20 = [(APSTopicFilterPolicy *)self->_policy topicChosenByPolicyFromTopics:v17];
  if (v20 != v14)
  {
    v24 = 0;
    v21 = 0;
    v25 = [(APSTopicState *)v14 currentFilter];
    goto LABEL_39;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v27 = v17;
  v28 = [v27 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (!v28)
  {

    goto LABEL_12;
  }

  v29 = v28;
  v30 = *v49;
  while (2)
  {
    for (i = 0; i != v29; i = i + 1)
    {
      if (*v49 != v30)
      {
        objc_enumerationMutation(v27);
      }

      v32 = *(*(&v48 + 1) + 8 * i);
      if (v32 != v14 && [*(*(&v48 + 1) + 8 * i) currentFilter])
      {
        v21 = v32;
        v22 = [(APSTopicState *)v21 currentFilter];
        goto LABEL_46;
      }
    }

    v29 = [v27 countByEnumeratingWithState:&v48 objects:v60 count:16];
    if (v29)
    {
      continue;
    }

    break;
  }

  v22 = 0;
  v21 = 0;
LABEL_46:

  v10 = v46;
LABEL_13:
  [(APSTopicState *)v14 setDesiredFilter:[(APSTopicFilterPolicy *)self->_policy filterChosenByPolicyForTopic:v14]];
  if (v21)
  {
    v23 = [(APSTopicState *)v14 desiredFilter];
    [(APSTopicState *)v21 setDesiredFilter:0];
    [(APSTopicManager *)self _recategorizeTopic:v21];
    [(APSTopicManager *)self _recategorizeTopic:v14];
    if (v23 == v22)
    {
      v24 = 0;
      v25 = [(APSTopicState *)v14 currentFilter];
      goto LABEL_39;
    }
  }

  else
  {
    [(APSTopicManager *)self _recategorizeTopic:v14];
  }

  v26 = [(APSTopicState *)v20 currentFilter];
  if (v26 == 3 || v26 == 5)
  {
    v24 = 1;
    if (v26 == 3 && v22 == 5)
    {
      [(APSTopicManager *)self _forgetRedListTopic:v9];
      [(APSTopicManager *)self _removeTopic:v9 connectionServer:0 filter:5];
      v25 = [(APSTopicState *)v14 currentFilter];
      goto LABEL_39;
    }
  }

  else
  {
    if (v10)
    {
      [(APSTopicManager *)self _rememberRedListTopic:v9];
    }

    v24 = 1;
  }

  v25 = [(APSTopicState *)v14 currentFilter];
LABEL_39:
  v33 = v25;
  v34 = [(APSTopicManager *)self serverGroup];
  v35 = [v34 currentFilterForTopicState:v20];

  if (v24)
  {
    v36 = [(APSTopicManager *)self _changeFromFilter:v35 toFilter:v33];
  }

  else
  {
    v36 = 0;
  }

  v37 = a6;
  *a6 = v36;
  v38 = +[APSLog topicManager];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = sub_1000066D0(*a6);
    *buf = 138413570;
    v53 = self;
    v54 = 2112;
    v55 = v9;
    v56 = 1024;
    *v57 = v33;
    *&v57[4] = 1024;
    *&v57[6] = v42;
    LOWORD(v58) = 1024;
    *(&v58 + 2) = v35;
    HIWORD(v58) = 2112;
    v59 = v39;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%@: calculated change type for %@ {newTopicFilter: %d, previouslyChosenTopicFilter: %d, previousServerTopicFilter: %d change: %@}", buf, 0x32u);

    v37 = a6;
  }

  v40 = *v37 != 0;
  return v40;
}

- (void)performTransactionBlock:(id)a3
{
  v4 = a3;
  [(APSTopicManager *)self beginTransaction];
  v4[2](v4, self);

  [(APSTopicManager *)self endTransaction];
}

- (void)addTopicsAndAttributes:(id)a3 connectionServer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = &fputc_ptr;
  v9 = +[APSLog topicManager];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 allKeys];
    v11 = APSPrettyPrintCollection();
    *buf = 138412802;
    *&buf[4] = self;
    v37 = 2112;
    v38 = v11;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: adding topics %@ for connection server %@", buf, 0x20u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = *v32;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        *buf = 0;
        v20 = [v12 objectForKey:{v19, v31}];
        v21 = [(APSTopicManager *)self _addTopic:v19 connectionServer:v7 attributes:v20 change:buf];

        v22 = *buf;
        if (*buf <= v15)
        {
          v22 = v15;
        }

        if (v21)
        {
          v15 = v22;
        }

        v16 |= v21;
      }

      v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);

    v8 = &fputc_ptr;
    if (v16)
    {
      v23 = [APSFilterChange alloc];
      v24 = [v12 allKeys];
      v25 = [v24 firstObject];
      v26 = [(APSFilterChange *)v23 initWithChange:v15 triggeringTopic:v25];

      [(APSTopicManager *)self _processTopicChange:v26 immediately:0 alertDelegate:1];
      goto LABEL_21;
    }
  }

  else
  {
  }

  v27 = [(APSTopicManager *)self group];
  v28 = [(APSTopicManager *)self serverGroup];
  v29 = [v27 isEqual:v28];

  if (v29)
  {
    v30 = [v8[414] topicManager];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@ no change detected between the new filter and the old server filter - cancelling any pending updates", buf, 0xCu);
    }

    [(APSTopicManager *)self _clearPendingFilterTimer];
  }

LABEL_21:
}

- (BOOL)_removeTopic:(id)a3 connectionServer:(id)a4 filter:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(APSTopicManager *)self _topicStateForTopic:v8 connectionServer:v9 filter:a5];
  v11 = +[APSLog topicManager];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412802;
    v24 = self;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: removing topic %@ for connection server %@", &v23, 0x20u);
  }

  if (v10)
  {
    v12 = [(NSMutableDictionary *)self->_topicsToTopicsStates objectForKey:v8];
    [v12 removeObject:v10];
    v13 = [v10 currentFilter];
    if (v13)
    {
      [v10 setDesiredFilter:0];
      [(APSTopicManager *)self _recategorizeTopic:v10];
      if ([v12 count])
      {
        v14 = [(APSTopicFilterPolicy *)self->_policy topicChosenByPolicyFromTopics:v12];
        [v14 setDesiredFilter:{-[APSTopicFilterPolicy filterChosenByPolicyForTopic:](self->_policy, "filterChosenByPolicyForTopic:", v14)}];
        [(APSTopicManager *)self _recategorizeTopic:v14];
        v15 = v13 != [v14 currentFilter];
      }

      else
      {
        v15 = 0;
      }

      if ([v12 count])
      {
        goto LABEL_15;
      }

      if (v13 == 3)
      {
        hashesToTopics = self->_hashesToTopics;
        v17 = [v10 topicHash];
        [(NSMutableDictionary *)hashesToTopics removeObjectForKey:v17];

        goto LABEL_15;
      }
    }

    else
    {
      v15 = 0;
      if ([v12 count])
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    v18 = self->_hashesToTopics;
    v19 = [v10 topicHash];
    [(NSMutableDictionary *)v18 removeObjectForKey:v19];

    topicsToTopicsStates = self->_topicsToTopicsStates;
    v21 = [v10 topicName];
    [(NSMutableDictionary *)topicsToTopicsStates removeObjectForKey:v21];

    v15 |= v13 != 5;
    goto LABEL_15;
  }

  v15 = 0;
LABEL_16:

  return v15 & 1;
}

- (void)removeTopics:(id)a3 connectionServer:(id)a4 filter:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v12 |= [(APSTopicManager *)self _removeTopic:*(*(&v18 + 1) + 8 * i) connectionServer:v9 filter:a5];
      }

      v11 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
    if (v12)
    {
      v15 = [APSFilterChange alloc];
      v16 = [v8 anyObject];
      v17 = [(APSFilterChange *)v15 initWithChange:2 triggeringTopic:v16];

      [(APSTopicManager *)self _processTopicChange:v17 immediately:0 alertDelegate:1];
    }
  }
}

- (void)removeTopicsForConnectionServer:(id)a3
{
  v4 = a3;
  v5 = [(APSTopicManager *)self topicStatesForConnectionServer:v4];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 topicName];
        v13 = [v11 attributes];
        v14 = -[APSTopicManager _removeTopic:connectionServer:filter:](self, "_removeTopic:connectionServer:filter:", v12, v4, [v13 filter]);

        v8 |= v14;
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
    if (v8)
    {
      v15 = [APSFilterChange alloc];
      v16 = [v5 firstObject];
      v17 = [v16 topicName];
      v18 = [(APSFilterChange *)v15 initWithChange:2 triggeringTopic:v17];

      [(APSTopicManager *)self _processTopicChange:v18 immediately:0 alertDelegate:1];
    }
  }
}

- (void)removeAllTopics
{
  v3 = [(NSMutableDictionary *)self->_topicsToTopicsStates count];
  v4 = [(NSMutableDictionary *)self->_topicsToTopicsStates allKeys];
  v11 = [v4 firstObject];

  [(NSMutableDictionary *)self->_topicsToTopicsStates removeAllObjects];
  v5 = [(APSTopicGroup *)self->_group hashesToEnabledTopics];
  [v5 removeAllObjects];

  v6 = [(APSTopicGroup *)self->_group hashesToOpportunisticTopics];
  [v6 removeAllObjects];

  v7 = [(APSTopicGroup *)self->_group hashesToIgnoredTopics];
  [v7 removeAllObjects];

  v8 = [(APSTopicGroup *)self->_group hashesToPausedTopics];
  [v8 removeAllObjects];

  v9 = [(APSTopicGroup *)self->_group hashesToNonWakingTopics];
  [v9 removeAllObjects];

  if (v3)
  {
    v10 = [[APSFilterChange alloc] initWithChange:2 triggeringTopic:v11];
    [(APSTopicManager *)self _processTopicChange:v10 immediately:0 alertDelegate:1];
  }
}

- (id)topicStatesForConnectionServer:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = self;
  obj = self->_topicsToTopicsStates;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = *v25;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSMutableDictionary *)v19->_topicsToTopicsStates objectForKey:*(*(&v24 + 1) + 8 * i)];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v20 + 1) + 8 * j);
              v15 = [v14 connectionServer];

              if (v15 == v4)
              {
                [v5 addObject:v14];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v11);
        }
      }

      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)setIsPowerEfficientToSendFilter:(BOOL)a3
{
  v3 = a3;
  if (self->_isPowerEfficientToSendFilter != a3)
  {
    v5 = +[APSLog topicManager];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = 138412546;
      v8 = self;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ isPowerEfficientToSendFilter changed to %@", &v7, 0x16u);
    }

    self->_isPowerEfficientToSendFilter = v3;
  }

  if (v3)
  {
    [(APSTopicManager *)self _processPendingChangeIfNeeded];
  }
}

- (int64_t)_potentiallyChangeChosenTopicStateForTopic:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_topicsToTopicsStates objectForKey:a3];
  if ([v4 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = *v16;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          if ([v9 currentFilter])
          {
            v6 = v9;
            v10 = [v6 currentFilter];
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_12:

    v11 = [(APSTopicFilterPolicy *)self->_policy topicChosenByPolicyFromTopics:v5];
    v12 = [(APSTopicFilterPolicy *)self->_policy filterChosenByPolicyForTopic:v11];
    [v11 setDesiredFilter:v12];
    if (v6 && v11 != v6)
    {
      [v6 setDesiredFilter:0];
      [(APSTopicManager *)self _recategorizeTopic:v6];
    }

    [(APSTopicManager *)self _recategorizeTopic:v11, v15];
    if (v10 == v12)
    {
      v13 = 0;
LABEL_24:

      goto LABEL_25;
    }

    if (v10)
    {
      if (v12 == 1)
      {
        v13 = 8;
        goto LABEL_24;
      }
    }

    else if ((v12 - 1) < 4)
    {
      v13 = qword_10015CC40[v12 - 1];
      goto LABEL_24;
    }

    v13 = 1;
    goto LABEL_24;
  }

  v13 = 0;
LABEL_25:

  return v13;
}

- (void)filtersWillPotentiallyBeChangedByPolicy:(id)a3
{
  v4 = a3;
  [v4 logFilterPolicyInformation];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(NSMutableDictionary *)self->_topicsToTopicsStates allKeys];
  v6 = [(APSFilterChange *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v17 = v4;
    v8 = 0;
    v9 = 0;
    v10 = *v19;
    v11 = &stru_10018F6A0;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [(APSTopicManager *)self _potentiallyChangeChosenTopicStateForTopic:v13];
        if (v14)
        {
          v15 = v14;
          if (v14 <= v8)
          {
            v9 = 1;
          }

          else
          {
            v16 = v13;

            v9 = 1;
            v11 = v16;
            v8 = v15;
          }
        }
      }

      v7 = [(APSFilterChange *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);

    if ((v9 & 1) == 0)
    {
      v4 = v17;
      goto LABEL_17;
    }

    v5 = [[APSFilterChange alloc] initWithChange:v8 triggeringTopic:v11];
    [(APSTopicManager *)self _processTopicChange:v5 immediately:1 alertDelegate:1];
    v4 = v17;
  }

  else
  {
    v11 = &stru_10018F6A0;
  }

LABEL_17:
}

- (void)_filtersWillPotentiallyBeChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"topic"];

  if ([(APSTopicManager *)self _hasTopic:v5])
  {
    v6 = +[APSLog topicManager];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = self;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Filter will potentially be changed for topic %@", &v7, 0x16u);
    }

    [(APSTopicManager *)self filtersWillPotentiallyBeChangedByPolicy:self->_policy];
  }
}

- (void)_processPendingChangeIfNeeded
{
  if (self->_pendingServerUpdate)
  {
    v3 = +[APSLog topicManager];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ _processPendingChangeIfNeeded, forcing timer to fire!", &v4, 0xCu);
    }

    [(APSTopicManager *)self _pendingFilterTimerFired];
  }
}

- (void)_scheduleServerUpdateWithChange:(id)a3 timer:(BOOL)a4 shortInterval:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  v10 = [v9 topicGroupChange];
  if (v10 > [(APSFilterChange *)self->_pendingChange topicGroupChange])
  {
    objc_storeStrong(&self->_pendingChange, a3);
  }

  v11 = +[APSLog topicManager];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = sub_1000066D0([v9 topicGroupChange]);
    v13 = v12;
    v14 = @"NO";
    isPowerEfficientToSendFilter = self->_isPowerEfficientToSendFilter;
    *v24 = 138413314;
    *&v24[4] = self;
    if (v6)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    if (v5)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    *&v24[12] = 2112;
    *&v24[14] = v12;
    if (isPowerEfficientToSendFilter)
    {
      v14 = @"YES";
    }

    *&v24[22] = 2112;
    v25 = v16;
    v26 = 2112;
    v27 = v17;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Schedule server update with change %@; withTimer %@; shortInterval %@; isPowerEfficientToSendFilter %@", v24, 0x34u);
  }

  if (self->_isPowerEfficientToSendFilter && v5)
  {
    v18 = +[APSLog topicManager];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 138412290;
      *&v24[4] = self;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@ asked to schedule an update but it's power efficient now. Processing update now.", v24, 0xCu);
    }

    [(APSTopicManager *)self _pendingFilterTimerFired];
  }

  else
  {
    if (v6)
    {
      [(APSTopicManager *)self _clearPendingFilterTimer];
      v19 = +[APSLog topicManager];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 138412290;
        *&v24[4] = self;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ scheduling a pending filter timer.", v24, 0xCu);
      }

      v20 = 300.0;
      if (v5)
      {
        v20 = 20.0;
      }

      v21 = [NSTimer scheduledTimerWithTimeInterval:self target:"_pendingFilterTimerFired" selector:0 userInfo:0 repeats:v20, *v24, *&v24[16]];
      pendingFilterTimer = self->_pendingFilterTimer;
      self->_pendingFilterTimer = v21;

      [(NSTimer *)self->_pendingFilterTimer setTolerance:2.0];
    }

    else
    {
      v23 = +[APSLog topicManager];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 138412290;
        *&v24[4] = self;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@ Topic change is low priority, not scheduling a timer.", v24, 0xCu);
      }
    }

    self->_pendingServerUpdate = 1;
  }
}

- (void)performFilterBlock:(id)a3
{
  v4 = a3;
  v5 = +[APSLog topicManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ asked to performFilterBlock", &v14, 0xCu);
  }

  [(APSTopicManager *)self _clearPendingFilterTimer];
  v6 = [(APSTopicManager *)self group];
  v7 = [v6 copy];
  [(APSTopicManager *)self setServerGroup:v7];

  if (v4)
  {
    v8 = [(APSTopicGroup *)self->_group hashesToEnabledTopics];
    v9 = [(APSTopicGroup *)self->_group hashesToIgnoredTopics];
    v10 = [(APSTopicGroup *)self->_group hashesToOpportunisticTopics];
    v11 = [(APSTopicGroup *)self->_group hashesToNonWakingTopics];
    v12 = [(APSTopicGroup *)self->_group hashesToPausedTopics];
    v13 = [(APSTopicHasher *)self->_topicHasher topicsToSaltsWithUser:self->_user];
    v4[2](v4, v8, v9, v10, v11, v12, v13);
  }
}

- (id)debugDescription
{
  v16 = objc_opt_class();
  v3 = [(APSUser *)self->_user name];
  environmentName = self->_environmentName;
  v15 = v3;
  v18 = [(APSTopicGroup *)self->_group hashesToEnabledTopics];
  v4 = APSPrettyPrintCollection();
  v17 = [(APSTopicGroup *)self->_group hashesToOpportunisticTopics];
  v5 = APSPrettyPrintCollection();
  v6 = [(APSTopicGroup *)self->_group hashesToNonWakingTopics];
  v7 = APSPrettyPrintCollection();
  v8 = [(APSTopicGroup *)self->_group hashesToIgnoredTopics];
  v9 = APSPrettyPrintCollection();
  v10 = [(APSTopicGroup *)self->_group hashesToPausedTopics];
  v11 = APSPrettyPrintCollection();
  v12 = [NSString stringWithFormat:@"<<%@: %p>: { userName=%@, environment=%@, enabledTopics=%@, opportunisticTopics=%@, nonWakingTopics=%@, ignoredTopics=%@, pausedTopics=%@ }>", v16, self, v15, environmentName, v4, v5, v7, v9, v11];

  return v12;
}

- (NSString)logString
{
  v49 = [[NSMutableString alloc] initWithFormat:@"%@: {\n", self];
  v3 = [NSMutableSet setWithCapacity:16];
  v4 = [NSMutableSet setWithCapacity:16];
  v5 = [NSMutableSet setWithCapacity:16];
  v6 = [NSMutableSet setWithCapacity:16];
  v7 = [NSMutableSet setWithCapacity:16];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v50 = self;
  v8 = [(APSTopicGroup *)self->_group hashesToEnabledTopics];
  v9 = [v8 allValues];

  v10 = [v9 countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v68;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v68 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v67 + 1) + 8 * i) topicName];
        [v3 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v67 objects:v75 count:16];
    }

    while (v11);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v15 = [(APSTopicGroup *)v50->_group hashesToIgnoredTopics];
  v16 = [v15 allValues];

  v17 = [v16 countByEnumeratingWithState:&v63 objects:v74 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v64;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v64 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v63 + 1) + 8 * j) topicName];
        [v4 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v18);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v22 = [(APSTopicGroup *)v50->_group hashesToOpportunisticTopics];
  v23 = [v22 allValues];

  v24 = [v23 countByEnumeratingWithState:&v59 objects:v73 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v60;
    do
    {
      for (k = 0; k != v25; k = k + 1)
      {
        if (*v60 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v59 + 1) + 8 * k) topicName];
        [v5 addObject:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v59 objects:v73 count:16];
    }

    while (v25);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v29 = [(APSTopicGroup *)v50->_group hashesToPausedTopics];
  v30 = [v29 allValues];

  v31 = [v30 countByEnumeratingWithState:&v55 objects:v72 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v56;
    do
    {
      for (m = 0; m != v32; m = m + 1)
      {
        if (*v56 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v55 + 1) + 8 * m) topicName];
        [v7 addObject:v35];
      }

      v32 = [v30 countByEnumeratingWithState:&v55 objects:v72 count:16];
    }

    while (v32);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v36 = [(APSTopicGroup *)v50->_group hashesToNonWakingTopics];
  v37 = [v36 allValues];

  v38 = [v37 countByEnumeratingWithState:&v51 objects:v71 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v52;
    do
    {
      for (n = 0; n != v39; n = n + 1)
      {
        if (*v52 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = [*(*(&v51 + 1) + 8 * n) topicName];
        [v6 addObject:v42];
      }

      v39 = [v37 countByEnumeratingWithState:&v51 objects:v71 count:16];
    }

    while (v39);
  }

  [v49 appendString:@"\tEnabled"];
  v43 = APSPrettyPrintCollection();
  [v49 appendString:v43];

  [v49 appendString:@"\tIgnored"];
  v44 = APSPrettyPrintCollection();
  [v49 appendString:v44];

  [v49 appendString:@"\tOpportunistic"];
  v45 = APSPrettyPrintCollection();
  [v49 appendString:v45];

  [v49 appendString:@"\tPaused"];
  v46 = APSPrettyPrintCollection();
  [v49 appendString:v46];

  [v49 appendString:@"\tNon-waking"];
  v47 = APSPrettyPrintCollection();
  [v49 appendString:v47];

  [v49 appendString:@"\t}"];

  return v49;
}

- (int64_t)_changeFromFilter:(int64_t)a3 toFilter:(int64_t)a4
{
  result = 1;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      if (a4 < 5)
      {
        v5 = &unk_10015CC88;
        return v5[a4];
      }
    }

    else if (a4 < 5)
    {
      v5 = &unk_10015CC60;
      return v5[a4];
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        if (a4 < 5)
        {
          v5 = &unk_10015CCB0;
          return v5[a4];
        }

        break;
      case 3:
        if (a4 < 5)
        {
          v5 = &unk_10015CCD8;
          return v5[a4];
        }

        break;
      case 4:
        if (a4 <= 4)
        {
          v5 = &unk_10015CD00;
          return v5[a4];
        }

        break;
      default:
        return result;
    }
  }

  return 1;
}

- (APSTopicManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end