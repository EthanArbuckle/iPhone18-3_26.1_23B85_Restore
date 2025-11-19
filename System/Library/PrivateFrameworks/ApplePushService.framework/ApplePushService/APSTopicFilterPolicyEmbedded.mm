@interface APSTopicFilterPolicyEmbedded
- (APSTopicFilterPolicyEmbedded)initWithDelegate:(id)a3 ultraConstrainedProvider:(id)a4;
- (APSUltraConstrainedProvider)ultraConstrainedProvider;
- (id)initShouldDowngradeWhenLocked:(BOOL)a3 systemMonitor:(id)a4 ultraConstrainedProvider:(id)a5 withDelegate:(id)a6;
- (id)topicChosenByPolicyFromTopics:(id)a3;
- (int64_t)filterChosenByPolicyForTopic:(id)a3;
- (void)dealloc;
- (void)logFilterPolicyInformation;
- (void)systemDidLock;
- (void)systemDidUnlock;
@end

@implementation APSTopicFilterPolicyEmbedded

- (void)logFilterPolicyInformation
{
  v3 = +[APSLog topicManager];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_downgradeWhenLocked)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    if ([(APSSystemMonitor *)self->_systemMonitor isSystemLocked])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    WeakRetained = objc_loadWeakRetained(&self->_ultraConstrainedProvider);
    v8 = 138413058;
    if ([WeakRetained isConnectedOnUltraConstrainedInterface])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v9 = self;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ policy state {downgradeWhenLocked: %@, isSystemLocked: %@, isConnectedOnUltraConstrainedInterface: %@}", &v8, 0x2Au);
  }
}

- (id)initShouldDowngradeWhenLocked:(BOOL)a3 systemMonitor:(id)a4 ultraConstrainedProvider:(id)a5 withDelegate:(id)a6
{
  v9 = a3;
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = APSTopicFilterPolicyEmbedded;
  v13 = [(APSTopicFilterPolicy *)&v16 initWithDelegate:a6];
  p_isa = &v13->super.super.isa;
  if (v13)
  {
    v13->_downgradeWhenLocked = v9;
    if (v9)
    {
      objc_storeStrong(&v13->_systemMonitor, a4);
      [v11 addListener:p_isa];
    }

    objc_storeWeak(p_isa + 4, v12);
  }

  return p_isa;
}

- (APSTopicFilterPolicyEmbedded)initWithDelegate:(id)a3 ultraConstrainedProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[APSSystemMonitor sharedInstance];
  v9 = [(APSTopicFilterPolicyEmbedded *)self initShouldDowngradeWhenLocked:0 systemMonitor:v8 ultraConstrainedProvider:v6 withDelegate:v7];

  return v9;
}

- (void)dealloc
{
  [(APSSystemMonitor *)self->_systemMonitor removeListener:self];
  v3.receiver = self;
  v3.super_class = APSTopicFilterPolicyEmbedded;
  [(APSTopicFilterPolicyEmbedded *)&v3 dealloc];
}

- (int64_t)filterChosenByPolicyForTopic:(id)a3
{
  v4 = a3;
  if (!self->_downgradeWhenLocked)
  {
    goto LABEL_8;
  }

  if (!-[APSSystemMonitor isSystemLocked](self->_systemMonitor, "isSystemLocked") || ([v4 attributes], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isPushWakeEnabled"), v5, (v6 & 1) != 0))
  {
    v7 = [v4 attributes];
    v8 = [v7 isPushWakeEnabled];

    if (v8)
    {
      v9 = +[APSLog topicManager];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_10010D9C8();
      }
    }

LABEL_8:
    if (_os_feature_enabled_impl())
    {
      WeakRetained = objc_loadWeakRetained(&self->_ultraConstrainedProvider);
      if ([WeakRetained isConnectedOnUltraConstrainedInterface])
      {
        v11 = [v4 attributes];
        v12 = [v11 isUltraConstrainedEnabled];

        if ((v12 & 1) == 0)
        {
          v13 = +[APSLog topicManager];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v4 topicName];
            v21 = 138412546;
            v22 = self;
            v23 = 2112;
            v24 = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ downgrading %@ to ignored, not eligible for requested ultra constrained filter", &v21, 0x16u);
          }

          v15 = 3;
          goto LABEL_20;
        }
      }

      else
      {
      }

      v16 = objc_loadWeakRetained(&self->_ultraConstrainedProvider);
      v17 = [v16 isConnectedOnUltraConstrainedInterface];

      if (v17)
      {
        v18 = +[APSLog topicManager];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          sub_10010DA30();
        }
      }
    }

    v13 = [v4 attributes];
    v15 = [v13 filter];
    goto LABEL_20;
  }

  v13 = +[APSLog topicManager];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v4 topicName];
    v21 = 138412546;
    v22 = self;
    v23 = 2112;
    v24 = v20;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ downgrading %@ to non-waking, not eligible for requested filter", &v21, 0x16u);
  }

  v15 = 4;
LABEL_20:

  return v15;
}

- (id)topicChosenByPolicyFromTopics:(id)a3
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v17;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v16 + 1) + 8 * v10);
      v12 = [(APSTopicFilterPolicyEmbedded *)self filterChosenByPolicyForTopic:v11, v16];
      v13 = v12;
      if (!v7 || v12 < v7)
      {
        v14 = v11;

        v7 = v13;
        v8 = v14;
        if (v13 == 1)
        {
          break;
        }
      }

      if (v6 == ++v10)
      {
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v14 = v8;
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)systemDidLock
{
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  [WeakRetained filtersWillPotentiallyBeChangedByPolicy:self];
}

- (void)systemDidUnlock
{
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  [WeakRetained filtersWillPotentiallyBeChangedByPolicy:self];
}

- (APSUltraConstrainedProvider)ultraConstrainedProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_ultraConstrainedProvider);

  return WeakRetained;
}

@end