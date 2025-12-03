@interface ATXInformationHeuristicRefreshContextChangeTrigger
- (ATXInformationHeuristicRefreshContextChangeTrigger)initWithCDContextualKeyPath:(id)path;
- (ATXInformationHeuristicRefreshContextChangeTrigger)initWithCDContextualKeyPath:(id)path equalToValue:(id)value withMinimumDurationInPreviousState:(double)state;
- (ATXInformationHeuristicRefreshContextChangeTrigger)initWithCDContextualKeyPath:(id)path predicate:(id)predicate registrationIdentifier:(id)identifier;
- (ATXInformationHeuristicRefreshContextChangeTrigger)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)_start;
- (void)_stop;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXInformationHeuristicRefreshContextChangeTrigger

- (ATXInformationHeuristicRefreshContextChangeTrigger)initWithCDContextualKeyPath:(id)path equalToValue:(id)value withMinimumDurationInPreviousState:(double)state
{
  pathCopy = path;
  valueCopy = value;
  v18.receiver = self;
  v18.super_class = ATXInformationHeuristicRefreshContextChangeTrigger;
  v11 = [(ATXInformationHeuristicRefreshTrigger *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contextKeyPath, path);
    v13 = [MEMORY[0x277CFE360] predicateForKeyPath:v12->_contextKeyPath equalToValue:valueCopy withMinimumDurationInPreviousState:state];
    predicate = v12->_predicate;
    v12->_predicate = v13;

    v15 = [pathCopy key];
    registrationIdentifier = v12->_registrationIdentifier;
    v12->_registrationIdentifier = v15;
  }

  return v12;
}

- (ATXInformationHeuristicRefreshContextChangeTrigger)initWithCDContextualKeyPath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = ATXInformationHeuristicRefreshContextChangeTrigger;
  v6 = [(ATXInformationHeuristicRefreshTrigger *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextKeyPath, path);
    v8 = [MEMORY[0x277CFE360] predicateForChangeAtKeyPath:pathCopy];
    predicate = v7->_predicate;
    v7->_predicate = v8;

    v10 = [pathCopy key];
    registrationIdentifier = v7->_registrationIdentifier;
    v7->_registrationIdentifier = v10;
  }

  return v7;
}

- (ATXInformationHeuristicRefreshContextChangeTrigger)initWithCDContextualKeyPath:(id)path predicate:(id)predicate registrationIdentifier:(id)identifier
{
  pathCopy = path;
  predicateCopy = predicate;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = ATXInformationHeuristicRefreshContextChangeTrigger;
  v12 = [(ATXInformationHeuristicRefreshTrigger *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contextKeyPath, path);
    objc_storeStrong(&v13->_predicate, predicate);
    objc_storeStrong(&v13->_registrationIdentifier, identifier);
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

    userContext = [MEMORY[0x277CFE318] userContext];
    [userContext registerCallback:self->_registration];

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
    userContext = [MEMORY[0x277CFE318] userContext];
    [userContext deregisterCallback:self->_registration];

    registration = self->_registration;
    self->_registration = 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ATXInformationHeuristicRefreshContextChangeTrigger;
  coderCopy = coder;
  [(ATXInformationHeuristicRefreshTrigger *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_contextKeyPath forKey:{@"contextKeyPath", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_predicate forKey:@"predicate"];
  [coderCopy encodeObject:self->_registrationIdentifier forKey:@"registrationIdKey"];
}

- (ATXInformationHeuristicRefreshContextChangeTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = ATXInformationHeuristicRefreshContextChangeTrigger;
  v5 = [(ATXInformationHeuristicRefreshTrigger *)&v18 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_3;
  }

  error = [coderCopy error];

  if (error)
  {
    goto LABEL_3;
  }

  v9 = [(ATXInformationHeuristicRefreshTrigger *)v5 _safeDecodeObjectOfClass:objc_opt_class() forKey:@"contextKeyPath" withCoder:coderCopy nonNull:1];
  contextKeyPath = v5->_contextKeyPath;
  v5->_contextKeyPath = v9;

  if (!v5->_contextKeyPath)
  {
    goto LABEL_3;
  }

  error2 = [coderCopy error];

  if (error2)
  {
    goto LABEL_3;
  }

  v12 = [(ATXInformationHeuristicRefreshTrigger *)v5 _safeDecodeObjectOfClass:objc_opt_class() forKey:@"predicate" withCoder:coderCopy nonNull:1];
  predicate = v5->_predicate;
  v5->_predicate = v12;

  if (!v5->_predicate)
  {
    goto LABEL_3;
  }

  error3 = [coderCopy error];

  if (error3)
  {
    goto LABEL_3;
  }

  v15 = [(ATXInformationHeuristicRefreshTrigger *)v5 _safeDecodeObjectOfClass:objc_opt_class() forKey:@"registrationIdKey" withCoder:coderCopy nonNull:1];
  registrationIdentifier = v5->_registrationIdentifier;
  v5->_registrationIdentifier = v15;

  if (!v5->_registrationIdentifier || ([coderCopy error], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
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