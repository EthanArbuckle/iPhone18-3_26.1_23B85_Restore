@interface _AMUIPosterUpdate
- (BOOL)fireCompletionBlocksWithUpdatedPosterConfiguration:(id)a3 error:(id)a4;
- (BOOL)isEqual:(id)a3;
- (_AMUIPosterUpdate)initWithPosterConfiguration:(id)a3 update:(id)a4 userInfo:(id)a5;
- (unint64_t)hash;
- (void)adoptCompletionsFromStaleUpdate:(id)a3;
- (void)appendCompletion:(id)a3;
- (void)cancel;
@end

@implementation _AMUIPosterUpdate

- (_AMUIPosterUpdate)initWithPosterConfiguration:(id)a3 update:(id)a4 userInfo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = _AMUIPosterUpdate;
  v12 = [(_AMUIPosterUpdate *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_posterConfiguration, a3);
    objc_storeStrong(&v13->_update, a4);
    if (v11)
    {
      v14 = v11;
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
  v3 = [(PRSPosterConfiguration *)self->_posterConfiguration serverUUID];
  v4 = [v3 hash];
  v5 = [(NSDictionary *)self->_userInfo hash];
  v6 = v5 ^ [(PRSPosterUpdate *)self->_update hash];

  return v6 ^ v4;
}

- (void)appendCompletion:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_isFinished)
  {
    v9[2](v9, v4->_firedConfiguration, v4->_firedError);
  }

  else
  {
    completions = v4->_completions;
    if (!completions)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = v4->_completions;
      v4->_completions = v6;

      completions = v4->_completions;
    }

    v8 = [v9 copy];
    [(NSMutableArray *)completions addObject:v8];
  }

  objc_sync_exit(v4);
}

- (void)adoptCompletionsFromStaleUpdate:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4[2];
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
        if (v5->_isFinished)
        {
          (v10)[2](*(*(&v16 + 1) + 8 * v9), v5->_firedConfiguration, v5->_firedError);
        }

        else
        {
          completions = v5->_completions;
          if (!completions)
          {
            v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v13 = v5->_completions;
            v5->_completions = v12;

            completions = v5->_completions;
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

  objc_sync_exit(v5);
  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)fireCompletionBlocksWithUpdatedPosterConfiguration:(id)a3 error:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  if (v9->_isFinished)
  {
    isFinished = 0;
  }

  else
  {
    v9->_isFinished = 1;
    objc_storeStrong(&v9->_firedConfiguration, a3);
    objc_storeStrong(&v9->_firedError, a4);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v9->_completions;
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

    [(NSMutableArray *)v9->_completions removeAllObjects];
    completions = v9->_completions;
    v9->_completions = 0;

    isFinished = v9->_isFinished;
  }

  objc_sync_exit(v9);

  v16 = *MEMORY[0x277D85DE8];
  return isFinished;
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
    v5 = objc_opt_class();
    v6 = v4;
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
      v10 = [(PRSPosterConfiguration *)self->_posterConfiguration serverUUID];
      v11 = [(_AMUIPosterUpdate *)v9 posterConfiguration];
      v12 = [v11 serverUUID];
      v13 = [v10 isEqual:v12];

      userInfo = self->_userInfo;
      v15 = [(_AMUIPosterUpdate *)v9 userInfo];
      LOBYTE(userInfo) = [(NSDictionary *)userInfo isEqualToDictionary:v15];

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
  v2 = self;
  objc_sync_enter(v2);
  v2->_isFinished = 1;
  objc_sync_exit(v2);

  completions = v2->_completions;

  [(NSMutableArray *)completions removeAllObjects];
}

@end