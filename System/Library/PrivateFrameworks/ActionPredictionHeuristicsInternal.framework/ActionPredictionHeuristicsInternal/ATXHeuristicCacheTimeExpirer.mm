@interface ATXHeuristicCacheTimeExpirer
- (ATXHeuristicCacheTimeExpirer)initWithCoder:(id)a3;
- (ATXHeuristicCacheTimeExpirer)initWithFireDate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)_start;
- (void)_stop;
@end

@implementation ATXHeuristicCacheTimeExpirer

- (void)_stop
{
  source = self->_source;
  if (source)
  {
    dispatch_source_cancel(source);
  }
}

- (ATXHeuristicCacheTimeExpirer)initWithFireDate:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [ATXHeuristicCacheTimeExpirer initWithFireDate:];
  }

  v11.receiver = self;
  v11.super_class = ATXHeuristicCacheTimeExpirer;
  v5 = [(ATXHeuristicCacheExpirer *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v4 timeIntervalSinceReferenceDate];
    v8 = [v6 initWithTimeIntervalSinceReferenceDate:floor(v7)];
    fireDate = v5->_fireDate;
    v5->_fireDate = v8;
  }

  return v5;
}

- (void)_start
{
  if (!self->_source)
  {
    [(NSDate *)self->_fireDate timeIntervalSinceNow];
    if (v3 > 0.0)
    {
      v4 = v3;
      objc_initWeak(&location, self);
      v5 = dispatch_get_global_queue(9, 0);
      v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v5);
      source = self->_source;
      self->_source = v6;

      v8 = self->_source;
      v9 = dispatch_time(0, (v4 * 1000000000.0));
      dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
      v10 = self->_source;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __38__ATXHeuristicCacheTimeExpirer__start__block_invoke;
      v11[3] = &unk_278C3CEF0;
      objc_copyWeak(&v12, &location);
      dispatch_source_set_event_handler(v10, v11);
      dispatch_resume(self->_source);
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

void __38__ATXHeuristicCacheTimeExpirer__start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained expire];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = self->_fireDate;
      v6 = v5;
      if (v5 == v4->_fireDate)
      {
        v7 = 1;
      }

      else
      {
        v7 = [(NSDate *)v5 isEqual:?];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (ATXHeuristicCacheTimeExpirer)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXHeuristicCacheTimeExpirer;
  v5 = [(ATXHeuristicCacheExpirer *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fireDate"];
    fireDate = v5->_fireDate;
    v5->_fireDate = v6;
  }

  return v5;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<expire at %@ (watching: %i)>", self->_fireDate, self->_source != 0];

  return v2;
}

- (void)initWithFireDate:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_4();
  [v0 handleFailureInMethod:@"fireDate" object:? file:? lineNumber:? description:?];
}

@end