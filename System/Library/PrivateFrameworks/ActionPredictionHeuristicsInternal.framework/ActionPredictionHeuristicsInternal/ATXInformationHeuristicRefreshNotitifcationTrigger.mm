@interface ATXInformationHeuristicRefreshNotitifcationTrigger
- (ATXInformationHeuristicRefreshNotitifcationTrigger)initWithCoder:(id)a3;
- (ATXInformationHeuristicRefreshNotitifcationTrigger)initWithNotification:(id)a3 type:(int64_t)a4 coalescingInterval:(double)a5;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)_createCoalescingTimer;
- (void)_start;
- (void)_stop;
- (void)_triggerRefresh;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXInformationHeuristicRefreshNotitifcationTrigger

- (void)_triggerRefresh
{
  v4 = [(ATXInformationHeuristicRefreshTrigger *)self delegate];
  v3 = [(ATXInformationHeuristicRefreshTrigger *)self registeredHeuristics];
  [v4 informationHeuristicRefreshTrigger:self didTriggerRefreshForHeuristics:v3];
}

void __60__ATXInformationHeuristicRefreshNotitifcationTrigger__start__block_invoke_103(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = __atxlog_handle_gi();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = WeakRetained[4];
      *buf = 134218242;
      v11 = WeakRetained;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_23E3EA000, v2, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshNotitifcationTrigger (%p): Received Darwin notification: %{public}@. Triggering heuristics refresh.", buf, 0x16u);
    }

    if ([WeakRetained[4] isEqualToString:@"SignificantTimeChangeNotification"])
    {
      v4 = arc4random_uniform(0xB4u);
      v5 = __atxlog_handle_gi();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v11) = v4;
        _os_log_impl(&dword_23E3EA000, v5, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshNotitifcationTrigger: Triggering heuristics refresh after %d seconds", buf, 8u);
      }

      v6 = dispatch_time(0, (1000000000 * v4) | 1);
      v7 = dispatch_get_global_queue(9, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__ATXInformationHeuristicRefreshNotitifcationTrigger__start__block_invoke_107;
      block[3] = &unk_278C3CF40;
      block[4] = WeakRetained;
      dispatch_after(v6, v7, block);
    }

    else
    {
      [WeakRetained _scheduleTriggerRefresh];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __76__ATXInformationHeuristicRefreshNotitifcationTrigger__createCoalescingTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _triggerRefresh];
}

- (ATXInformationHeuristicRefreshNotitifcationTrigger)initWithNotification:(id)a3 type:(int64_t)a4 coalescingInterval:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = ATXInformationHeuristicRefreshNotitifcationTrigger;
  v10 = [(ATXInformationHeuristicRefreshTrigger *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_notificationType = a4;
    objc_storeStrong(&v10->_notificationName, a3);
    v11->_coalescingInterval = a5;
    [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v11 _createCoalescingTimer];
  }

  return v11;
}

- (void)_createCoalescingTimer
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D42628]);
  v4 = dispatch_get_global_queue(17, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__ATXInformationHeuristicRefreshNotitifcationTrigger__createCoalescingTimer__block_invoke;
  v7[3] = &unk_278C3CEF0;
  objc_copyWeak(&v8, &location);
  v5 = [v3 initWithQueue:v4 operation:v7];
  coalescingTimer = self->_coalescingTimer;
  self->_coalescingTimer = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_start
{
  v22 = *MEMORY[0x277D85DE8];
  if (!self->_observerToken)
  {
    v3 = __atxlog_handle_gi();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      notificationName = self->_notificationName;
      *buf = 138412290;
      v21 = notificationName;
      _os_log_impl(&dword_23E3EA000, v3, OS_LOG_TYPE_DEFAULT, "Starting ATXInformationHeuristicRefreshNotitifcationTrigger for %@. We will now refresh heuristics when seeing this notification.", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    notificationType = self->_notificationType;
    if (notificationType == 1)
    {
      out_token = 0;
      v10 = [(NSString *)self->_notificationName UTF8String];
      v11 = dispatch_get_global_queue(9, 0);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __60__ATXInformationHeuristicRefreshNotitifcationTrigger__start__block_invoke_103;
      handler[3] = &unk_278C3CF68;
      objc_copyWeak(&v16, buf);
      notify_register_dispatch(v10, &out_token, v11, handler);

      v12 = [MEMORY[0x277CCABB0] numberWithInt:out_token];
      observerToken = self->_observerToken;
      self->_observerToken = v12;

      objc_destroyWeak(&v16);
    }

    else if (!notificationType)
    {
      v6 = [MEMORY[0x277CCAB98] defaultCenter];
      v7 = self->_notificationName;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __60__ATXInformationHeuristicRefreshNotitifcationTrigger__start__block_invoke;
      v18[3] = &unk_278C3CF18;
      objc_copyWeak(&v19, buf);
      v8 = [v6 addObserverForName:v7 object:0 queue:0 usingBlock:v18];
      v9 = self->_observerToken;
      self->_observerToken = v8;

      objc_destroyWeak(&v19);
    }

    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __60__ATXInformationHeuristicRefreshNotitifcationTrigger__start__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = __atxlog_handle_gi();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = WeakRetained[4];
      v5 = 134218242;
      v6 = WeakRetained;
      v7 = 2114;
      v8 = v3;
      _os_log_impl(&dword_23E3EA000, v2, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshNotitifcationTrigger (%p): Received local notification: %{public}@. Triggering heuristics refresh.", &v5, 0x16u);
    }

    [WeakRetained _scheduleTriggerRefresh];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_stop
{
  observerToken = self->_observerToken;
  if (observerToken)
  {
    notificationType = self->_notificationType;
    if (notificationType == 1)
    {
      notify_cancel([observerToken intValue]);
    }

    else if (!notificationType)
    {
      v5 = [MEMORY[0x277CCAB98] defaultCenter];
      [v5 removeObserver:self->_observerToken];
    }

    v6 = self->_observerToken;
    self->_observerToken = 0;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_notificationName hash];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_notificationType];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5->_notificationName;
      notificationName = self->_notificationName;
      v8 = (notificationName == v6 || [(NSString *)notificationName isEqual:v6]) && self->_notificationType == v5->_notificationType;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"InfoHeuristicRefreshNotitifcationTrigger for %@", self->_notificationName];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ATXInformationHeuristicRefreshNotitifcationTrigger;
  v4 = a3;
  [(ATXInformationHeuristicRefreshTrigger *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_notificationType forKey:{@"notificationType", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_notificationName forKey:@"notificationName"];
  [v4 encodeDouble:@"coalescingInterval" forKey:self->_coalescingInterval];
}

- (ATXInformationHeuristicRefreshNotitifcationTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ATXInformationHeuristicRefreshNotitifcationTrigger;
  v5 = [(ATXInformationHeuristicRefreshTrigger *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 error];

    if (!v6)
    {
      v9 = [v4 decodeIntegerForKey:@"notificationType"];
      v5->_notificationType = v9;
      if (v9 || ([v4 error], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
      {
        v10 = [(ATXInformationHeuristicRefreshTrigger *)v5 _safeDecodeObjectOfClass:objc_opt_class() forKey:@"notificationName" withCoder:v4 nonNull:1];
        notificationName = v5->_notificationName;
        v5->_notificationName = v10;

        if (v5->_notificationName)
        {
          v12 = [v4 error];

          if (!v12)
          {
            [v4 decodeDoubleForKey:@"coalescingInterval"];
            v5->_coalescingInterval = v13;
            [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v5 _createCoalescingTimer];
            v7 = v5;
            goto LABEL_4;
          }
        }
      }

      else
      {
        v15 = __atxlog_handle_gi();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [ATXInformationHeuristicRefreshNotitifcationTrigger initWithCoder:v4];
        }
      }
    }
  }

  v7 = 0;
LABEL_4:

  return v7;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a1 error];
  OUTLINED_FUNCTION_1_2(&dword_23E3EA000, v1, v2, "ATXInformationHeuristicRefreshNotitifcationTrigger: error decoding %@ - %@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

@end