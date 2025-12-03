@interface ATXHeuristicCacheNotificationExpirer
- (ATXHeuristicCacheNotificationExpirer)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)initDarwin:(id)darwin;
- (id)initLocal:(id)local;
- (void)_start;
- (void)_stop;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXHeuristicCacheNotificationExpirer

- (void)_stop
{
  token = self->_token;
  if (token)
  {
    if (self->_isLocal)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter removeObserver:self->_token];
    }

    else
    {
      intValue = [token intValue];

      notify_cancel(intValue);
    }
  }
}

- (id)initLocal:(id)local
{
  localCopy = local;
  if (!localCopy)
  {
    [ATXHeuristicCacheNotificationExpirer initLocal:];
  }

  v9.receiver = self;
  v9.super_class = ATXHeuristicCacheNotificationExpirer;
  v6 = [(ATXHeuristicCacheExpirer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationName, local);
    v7->_isLocal = 1;
  }

  return v7;
}

- (id)initDarwin:(id)darwin
{
  darwinCopy = darwin;
  if (!darwinCopy)
  {
    [ATXHeuristicCacheNotificationExpirer initDarwin:];
  }

  v9.receiver = self;
  v9.super_class = ATXHeuristicCacheNotificationExpirer;
  v6 = [(ATXHeuristicCacheExpirer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationName, darwin);
    v7->_isLocal = 0;
  }

  return v7;
}

- (void)_start
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(self + 80);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  notificationName = self->_notificationName;
  coderCopy = coder;
  [coderCopy encodeObject:notificationName forKey:@"notificationName"];
  [coderCopy encodeBool:self->_isLocal forKey:@"isLocal"];
}

- (ATXHeuristicCacheNotificationExpirer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ATXHeuristicCacheNotificationExpirer;
  v5 = [(ATXHeuristicCacheExpirer *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notificationName"];
    notificationName = v5->_notificationName;
    v5->_notificationName = v6;

    v5->_isLocal = [coderCopy decodeBoolForKey:@"isLocal"];
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