@interface ATXInformationHeuristicRefreshTimeTrigger
- (ATXInformationHeuristicRefreshTimeTrigger)initWithCoder:(id)a3;
- (ATXInformationHeuristicRefreshTimeTrigger)initWithFireDate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)_start;
- (void)_stop;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXInformationHeuristicRefreshTimeTrigger

- (ATXInformationHeuristicRefreshTimeTrigger)initWithFireDate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ATXInformationHeuristicRefreshTimeTrigger;
  v5 = [(ATXInformationHeuristicRefreshTrigger *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v4 timeIntervalSinceReferenceDate];
    v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
    fireDate = v5->_fireDate;
    v5->_fireDate = v7;
  }

  return v5;
}

- (void)_start
{
  v26 = *MEMORY[0x277D85DE8];
  if (!self->_source)
  {
    [(NSDate *)self->_fireDate timeIntervalSinceNow];
    v4 = v3;
    v5 = __atxlog_handle_gi();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4 <= 0.0)
    {
      if (v6)
      {
        fireDate = self->_fireDate;
        v16 = [(ATXInformationHeuristicRefreshTrigger *)self registeredHeuristics];
        *buf = 134218498;
        v21 = self;
        v22 = 2112;
        v23 = fireDate;
        v24 = 2112;
        v25 = v16;
        _os_log_impl(&dword_23E3EA000, v5, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshTimeTrigger (%p): Past [%@]. Will not start. %@", buf, 0x20u);
      }
    }

    else
    {
      if (v6)
      {
        v7 = self->_fireDate;
        v8 = [(ATXInformationHeuristicRefreshTrigger *)self registeredHeuristics];
        *buf = 134218498;
        v21 = self;
        v22 = 2112;
        v23 = v7;
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_23E3EA000, v5, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshTimeTrigger (%p): Start [%@]. %@", buf, 0x20u);
      }

      objc_initWeak(buf, self);
      v9 = dispatch_get_global_queue(25, 0);
      v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v9);
      source = self->_source;
      self->_source = v10;

      v12 = self->_source;
      v13 = dispatch_time(0, (v4 * 1000000000.0));
      dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
      v14 = self->_source;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __51__ATXInformationHeuristicRefreshTimeTrigger__start__block_invoke;
      handler[3] = &unk_278C3CEF0;
      objc_copyWeak(&v19, buf);
      dispatch_source_set_event_handler(v14, handler);
      dispatch_resume(self->_source);
      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __51__ATXInformationHeuristicRefreshTimeTrigger__start__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_opt_new();
    [v2 timeIntervalSinceDate:WeakRetained[4]];
    v4 = v3;
    v5 = __atxlog_handle_gi();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = WeakRetained[4];
      v7 = [WeakRetained registeredHeuristics];
      v11 = 134218754;
      v12 = WeakRetained;
      v13 = 2112;
      v14 = v6;
      v15 = 2048;
      v16 = v4;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_23E3EA000, v5, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshTimeTrigger (%p): Fired [%@] %0.1fs after date. Triggering heuristics refresh. %@", &v11, 0x2Au);
    }

    v8 = [WeakRetained delegate];
    v9 = [WeakRetained registeredHeuristics];
    [v8 informationHeuristicRefreshTrigger:WeakRetained didTriggerRefreshForHeuristics:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_stop
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_source)
  {
    v3 = __atxlog_handle_gi();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      fireDate = self->_fireDate;
      v5 = [(ATXInformationHeuristicRefreshTrigger *)self registeredHeuristics];
      v8 = 134218498;
      v9 = self;
      v10 = 2112;
      v11 = fireDate;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_23E3EA000, v3, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshTimeTrigger (%p): Stopped [%@]. %@.", &v8, 0x20u);
    }

    dispatch_source_cancel(self->_source);
    source = self->_source;
    self->_source = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_7;
  }

  fireDate = self->_fireDate;
  if (fireDate == v4->_fireDate)
  {
LABEL_5:
    v6 = 1;
  }

  else
  {
    v6 = [(NSDate *)fireDate isEqual:?];
  }

LABEL_7:

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"InfoHeuristicRefreshTimeTrigger at %@", self->_fireDate];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ATXInformationHeuristicRefreshTimeTrigger;
  v4 = a3;
  [(ATXInformationHeuristicRefreshTrigger *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_fireDate forKey:{@"fireDate", v5.receiver, v5.super_class}];
}

- (ATXInformationHeuristicRefreshTimeTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ATXInformationHeuristicRefreshTimeTrigger;
  v5 = [(ATXInformationHeuristicRefreshTrigger *)&v12 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = [v4 error];

  if (v6)
  {
    goto LABEL_3;
  }

  v9 = [(ATXInformationHeuristicRefreshTrigger *)v5 _safeDecodeObjectOfClass:objc_opt_class() forKey:@"fireDate" withCoder:v4 nonNull:1];
  fireDate = v5->_fireDate;
  v5->_fireDate = v9;

  if (!v5->_fireDate || ([v4 error], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
LABEL_3:
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

@end