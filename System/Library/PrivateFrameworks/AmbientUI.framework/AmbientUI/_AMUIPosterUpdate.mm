@interface _AMUIPosterUpdate
- (BOOL)fireCompletionBlocksWithUpdatedPosterConfiguration:(id)configuration error:(id)error;
- (BOOL)isEqual:(id)equal;
- (_AMUIPosterUpdate)initWithPosterConfiguration:(id)configuration update:(id)update userInfo:(id)info;
- (unint64_t)hash;
- (void)adoptCompletionsFromStaleUpdate:(id)update;
- (void)appendCompletion:(id)completion;
- (void)cancel;
@end

@implementation _AMUIPosterUpdate

- (_AMUIPosterUpdate)initWithPosterConfiguration:(id)configuration update:(id)update userInfo:(id)info
{
  configurationCopy = configuration;
  updateCopy = update;
  infoCopy = info;
  v18.receiver = self;
  v18.super_class = _AMUIPosterUpdate;
  v12 = [(_AMUIPosterUpdate *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_posterConfiguration, configuration);
    objc_storeStrong(&v13->_update, update);
    if (infoCopy)
    {
      v14 = infoCopy;
    }

    else
    {
      v14 = MEMORY[0x277CBEC10];
    }

    v15 = [v14 copy];
    userInfo = v13->_userInfo;
    v13->_userInfo = v15;
  }

  return v13;
}

- (unint64_t)hash
{
  serverUUID = [(PRSPosterConfiguration *)self->_posterConfiguration serverUUID];
  v4 = [serverUUID hash];
  v5 = [(NSDictionary *)self->_userInfo hash];
  v6 = v5 ^ [(PRSPosterUpdate *)self->_update hash];

  return v6 ^ v4;
}

- (void)appendCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isFinished)
  {
    completionCopy[2](completionCopy, selfCopy->_firedConfiguration, selfCopy->_firedError);
  }

  else
  {
    completions = selfCopy->_completions;
    if (!completions)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = selfCopy->_completions;
      selfCopy->_completions = v6;

      completions = selfCopy->_completions;
    }

    v8 = [completionCopy copy];
    [(NSMutableArray *)completions addObject:v8];
  }

  objc_sync_exit(selfCopy);
}

- (void)adoptCompletionsFromStaleUpdate:(id)update
{
  v21 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = updateCopy[2];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        if (selfCopy->_isFinished)
        {
          (v10)[2](*(*(&v16 + 1) + 8 * v9), selfCopy->_firedConfiguration, selfCopy->_firedError);
        }

        else
        {
          completions = selfCopy->_completions;
          if (!completions)
          {
            v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v13 = selfCopy->_completions;
            selfCopy->_completions = v12;

            completions = selfCopy->_completions;
          }

          v14 = [v10 copy];
          [(NSMutableArray *)completions addObject:v14];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)fireCompletionBlocksWithUpdatedPosterConfiguration:(id)configuration error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isFinished)
  {
    isFinished = 0;
  }

  else
  {
    selfCopy->_isFinished = 1;
    objc_storeStrong(&selfCopy->_firedConfiguration, configuration);
    objc_storeStrong(&selfCopy->_firedError, error);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = selfCopy->_completions;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v11);
          }

          (*(*(*(&v18 + 1) + 8 * v14) + 16))(*(*(&v18 + 1) + 8 * v14));
          ++v14;
        }

        while (v12 != v14);
        v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [(NSMutableArray *)selfCopy->_completions removeAllObjects];
    completions = selfCopy->_completions;
    selfCopy->_completions = 0;

    isFinished = selfCopy->_isFinished;
  }

  objc_sync_exit(selfCopy);

  v16 = *MEMORY[0x277D85DE8];
  return isFinished;
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
    v5 = objc_opt_class();
    v6 = equalCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9)
    {
      serverUUID = [(PRSPosterConfiguration *)self->_posterConfiguration serverUUID];
      posterConfiguration = [(_AMUIPosterUpdate *)v9 posterConfiguration];
      serverUUID2 = [posterConfiguration serverUUID];
      v13 = [serverUUID isEqual:serverUUID2];

      userInfo = self->_userInfo;
      userInfo = [(_AMUIPosterUpdate *)v9 userInfo];
      LOBYTE(userInfo) = [(NSDictionary *)userInfo isEqualToDictionary:userInfo];

      v8 = v13 & userInfo;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)cancel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_isFinished = 1;
  objc_sync_exit(selfCopy);

  completions = selfCopy->_completions;

  [(NSMutableArray *)completions removeAllObjects];
}

@end