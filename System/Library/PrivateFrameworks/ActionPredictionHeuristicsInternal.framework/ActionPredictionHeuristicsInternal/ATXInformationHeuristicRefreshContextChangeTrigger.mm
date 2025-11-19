@interface ATXInformationHeuristicRefreshContextChangeTrigger
- (ATXInformationHeuristicRefreshContextChangeTrigger)initWithCDContextualKeyPath:(id)a3;
- (ATXInformationHeuristicRefreshContextChangeTrigger)initWithCDContextualKeyPath:(id)a3 equalToValue:(id)a4 withMinimumDurationInPreviousState:(double)a5;
- (ATXInformationHeuristicRefreshContextChangeTrigger)initWithCDContextualKeyPath:(id)a3 predicate:(id)a4 registrationIdentifier:(id)a5;
- (ATXInformationHeuristicRefreshContextChangeTrigger)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)_start;
- (void)_stop;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXInformationHeuristicRefreshContextChangeTrigger

- (ATXInformationHeuristicRefreshContextChangeTrigger)initWithCDContextualKeyPath:(id)a3 equalToValue:(id)a4 withMinimumDurationInPreviousState:(double)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = ATXInformationHeuristicRefreshContextChangeTrigger;
  v11 = [(ATXInformationHeuristicRefreshTrigger *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contextKeyPath, a3);
    v13 = [MEMORY[0x277CFE360] predicateForKeyPath:v12->_contextKeyPath equalToValue:v10 withMinimumDurationInPreviousState:a5];
    predicate = v12->_predicate;
    v12->_predicate = v13;

    v15 = [v9 key];
    registrationIdentifier = v12->_registrationIdentifier;
    v12->_registrationIdentifier = v15;
  }

  return v12;
}

- (ATXInformationHeuristicRefreshContextChangeTrigger)initWithCDContextualKeyPath:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ATXInformationHeuristicRefreshContextChangeTrigger;
  v6 = [(ATXInformationHeuristicRefreshTrigger *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextKeyPath, a3);
    v8 = [MEMORY[0x277CFE360] predicateForChangeAtKeyPath:v5];
    predicate = v7->_predicate;
    v7->_predicate = v8;

    v10 = [v5 key];
    registrationIdentifier = v7->_registrationIdentifier;
    v7->_registrationIdentifier = v10;
  }

  return v7;
}

- (ATXInformationHeuristicRefreshContextChangeTrigger)initWithCDContextualKeyPath:(id)a3 predicate:(id)a4 registrationIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ATXInformationHeuristicRefreshContextChangeTrigger;
  v12 = [(ATXInformationHeuristicRefreshTrigger *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contextKeyPath, a3);
    objc_storeStrong(&v13->_predicate, a4);
    objc_storeStrong(&v13->_registrationIdentifier, a5);
  }

  return v13;
}

- (void)_start
{
  if (!self->_registration)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__ATXInformationHeuristicRefreshContextChangeTrigger__start__block_invoke;
    v9[3] = &unk_278C3CF90;
    objc_copyWeak(&v10, &location);
    v3 = MEMORY[0x23EF0A350](v9);
    v4 = MEMORY[0x277CFE350];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.duetexpertd.information.contextchange.%@", self->_registrationIdentifier];
    v6 = [v4 localWakingRegistrationWithIdentifier:v5 contextualPredicate:self->_predicate clientIdentifier:@"com.apple.duetexpertd.cdidentifier" callback:v3];
    registration = self->_registration;
    self->_registration = v6;

    v8 = [MEMORY[0x277CFE318] userContext];
    [v8 registerCallback:self->_registration];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __60__ATXInformationHeuristicRefreshContextChangeTrigger__start__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc(MEMORY[0x277CBEBD0]);
    v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [WeakRetained[3] key];
    [v3 setObject:v4 forKey:v5];

    v6 = __atxlog_handle_gi();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = WeakRetained[3];
      v18 = 134218242;
      v19 = WeakRetained;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_23E3EA000, v6, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshContextChangeTrigger (%p): Context changed at keypath %@. Triggering heuristics refresh.", &v18, 0x16u);
    }

    v8 = [WeakRetained delegate];
    v9 = [WeakRetained registeredHeuristics];
    [v8 informationHeuristicRefreshTrigger:WeakRetained didTriggerRefreshForHeuristics:v9];
  }

  else
  {
    v3 = __atxlog_handle_gi();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __60__ATXInformationHeuristicRefreshContextChangeTrigger__start__block_invoke_cold_1(v3, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_stop
{
  if (self->_registration)
  {
    v3 = [MEMORY[0x277CFE318] userContext];
    [v3 deregisterCallback:self->_registration];

    registration = self->_registration;
    self->_registration = 0;
  }
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
      contextKeyPath = self->_contextKeyPath;
      if (contextKeyPath == v5->_contextKeyPath || [(_CDContextualKeyPath *)contextKeyPath isEqual:?])
      {
        predicate = self->_predicate;
        if (predicate == v5->_predicate)
        {
          v8 = 1;
        }

        else
        {
          v8 = [(_CDContextualPredicate *)predicate isEqual:?];
        }
      }

      else
      {
        v8 = 0;
      }
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
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(_CDContextualKeyPath *)self->_contextKeyPath key];
  v5 = [v3 initWithFormat:@"InfoHeuristicRefreshContextChangeTrigger for %@", v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ATXInformationHeuristicRefreshContextChangeTrigger;
  v4 = a3;
  [(ATXInformationHeuristicRefreshTrigger *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_contextKeyPath forKey:{@"contextKeyPath", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_predicate forKey:@"predicate"];
  [v4 encodeObject:self->_registrationIdentifier forKey:@"registrationIdKey"];
}

- (ATXInformationHeuristicRefreshContextChangeTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ATXInformationHeuristicRefreshContextChangeTrigger;
  v5 = [(ATXInformationHeuristicRefreshTrigger *)&v18 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = [v4 error];

  if (v6)
  {
    goto LABEL_3;
  }

  v9 = [(ATXInformationHeuristicRefreshTrigger *)v5 _safeDecodeObjectOfClass:objc_opt_class() forKey:@"contextKeyPath" withCoder:v4 nonNull:1];
  contextKeyPath = v5->_contextKeyPath;
  v5->_contextKeyPath = v9;

  if (!v5->_contextKeyPath)
  {
    goto LABEL_3;
  }

  v11 = [v4 error];

  if (v11)
  {
    goto LABEL_3;
  }

  v12 = [(ATXInformationHeuristicRefreshTrigger *)v5 _safeDecodeObjectOfClass:objc_opt_class() forKey:@"predicate" withCoder:v4 nonNull:1];
  predicate = v5->_predicate;
  v5->_predicate = v12;

  if (!v5->_predicate)
  {
    goto LABEL_3;
  }

  v14 = [v4 error];

  if (v14)
  {
    goto LABEL_3;
  }

  v15 = [(ATXInformationHeuristicRefreshTrigger *)v5 _safeDecodeObjectOfClass:objc_opt_class() forKey:@"registrationIdKey" withCoder:v4 nonNull:1];
  registrationIdentifier = v5->_registrationIdentifier;
  v5->_registrationIdentifier = v15;

  if (!v5->_registrationIdentifier || ([v4 error], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
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