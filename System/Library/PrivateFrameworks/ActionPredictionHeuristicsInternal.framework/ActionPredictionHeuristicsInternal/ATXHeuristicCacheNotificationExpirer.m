@interface ATXHeuristicCacheNotificationExpirer
- (ATXHeuristicCacheNotificationExpirer)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)initDarwin:(id)a3;
- (id)initLocal:(id)a3;
- (void)_start;
- (void)_stop;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXHeuristicCacheNotificationExpirer

- (void)_stop
{
  token = self->_token;
  if (token)
  {
    if (self->_isLocal)
    {
      v5 = [MEMORY[0x277CCAB98] defaultCenter];
      [v5 removeObserver:self->_token];
    }

    else
    {
      v4 = [token intValue];

      notify_cancel(v4);
    }
  }
}

- (id)initLocal:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [ATXHeuristicCacheNotificationExpirer initLocal:];
  }

  v9.receiver = self;
  v9.super_class = ATXHeuristicCacheNotificationExpirer;
  v6 = [(ATXHeuristicCacheExpirer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationName, a3);
    v7->_isLocal = 1;
  }

  return v7;
}

- (id)initDarwin:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [ATXHeuristicCacheNotificationExpirer initDarwin:];
  }

  v9.receiver = self;
  v9.super_class = ATXHeuristicCacheNotificationExpirer;
  v6 = [(ATXHeuristicCacheExpirer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationName, a3);
    v7->_isLocal = 0;
  }

  return v7;
}

- (void)_start
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 80);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_DEBUG, "Starting ATXHeuristicCacheNotificationExpirer for %@. We will now expire heuristics for this notification.", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __46__ATXHeuristicCacheNotificationExpirer__start__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = WeakRetained[10];
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_23E3EA000, v2, OS_LOG_TYPE_DEFAULT, "Received local notification: %@. Expiring heuristics.", &v5, 0xCu);
    }

    [WeakRetained expire];
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __46__ATXHeuristicCacheNotificationExpirer__start__block_invoke_82(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = WeakRetained[10];
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_23E3EA000, v2, OS_LOG_TYPE_DEFAULT, "Received Darwin notification: %@. Expiring heuristics.", &v5, 0xCu);
    }

    [WeakRetained expire];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_notificationName;
      v7 = v6;
      if (v6 == v5->_notificationName)
      {
      }

      else
      {
        v8 = [(NSString *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          v9 = 0;
LABEL_10:

          goto LABEL_11;
        }
      }

      v9 = self->_isLocal == v5->_isLocal;
      goto LABEL_10;
    }

    v9 = 0;
  }

LABEL_11:

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  notificationName = self->_notificationName;
  v5 = a3;
  [v5 encodeObject:notificationName forKey:@"notificationName"];
  [v5 encodeBool:self->_isLocal forKey:@"isLocal"];
}

- (ATXHeuristicCacheNotificationExpirer)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXHeuristicCacheNotificationExpirer;
  v5 = [(ATXHeuristicCacheExpirer *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notificationName"];
    notificationName = v5->_notificationName;
    v5->_notificationName = v6;

    v5->_isLocal = [v4 decodeBoolForKey:@"isLocal"];
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_isLocal)
  {
    v4 = "local";
  }

  else
  {
    v4 = "darwin";
  }

  v5 = [v3 initWithFormat:@"<expire after %s notification %@ (watching: %i)>", v4, self->_notificationName, self->_token != 0];

  return v5;
}

- (void)initLocal:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_4();
  [v0 handleFailureInMethod:@"notificationName" object:? file:? lineNumber:? description:?];
}

- (void)initDarwin:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_4();
  [v0 handleFailureInMethod:@"notificationName" object:? file:? lineNumber:? description:?];
}

@end