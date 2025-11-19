@interface TUIRenderUpdateArrayTracker
- (TUIRenderUpdateArrayTracker)init;
- (id)addDeletedInterestInDeletedModels:(id)a3;
- (void)decrementInterestInDeletedModels:(id)a3;
- (void)incrementInterestInDeletedModels:(id)a3;
- (void)setSubmodelTracker:(id)a3 forIdentifier:(id)a4;
@end

@implementation TUIRenderUpdateArrayTracker

- (TUIRenderUpdateArrayTracker)init
{
  v8.receiver = self;
  v8.super_class = TUIRenderUpdateArrayTracker;
  v2 = [(TUIRenderUpdateArrayTracker *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    deletedIdentifiers = v2->_deletedIdentifiers;
    v2->_deletedIdentifiers = v3;

    v5 = objc_opt_new();
    deletedModels = v2->_deletedModels;
    v2->_deletedModels = v5;
  }

  return v2;
}

- (id)addDeletedInterestInDeletedModels:(id)a3
{
  v4 = a3;
  v5 = [[_TUIRenderUpdateDeletionInterest alloc] initWithModels:v4 tracker:self];

  return v5;
}

- (void)incrementInterestInDeletedModels:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v9 identifier];
        [(NSCountedSet *)self->_deletedIdentifiers addObject:v10];
        [(NSMutableDictionary *)self->_deletedModels setObject:v9 forKeyedSubscript:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)decrementInterestInDeletedModels:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) identifier];
        [(NSCountedSet *)self->_deletedIdentifiers removeObject:v9];
        if (![(NSCountedSet *)self->_deletedIdentifiers countForObject:v9])
        {
          [(NSMutableDictionary *)self->_deletedModels removeObjectForKey:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)setSubmodelTracker:(id)a3 forIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  submodelTrackers = self->_submodelTrackers;
  if (!submodelTrackers)
  {
    v8 = objc_opt_new();
    v9 = self->_submodelTrackers;
    self->_submodelTrackers = v8;

    submodelTrackers = self->_submodelTrackers;
  }

  [(NSMutableDictionary *)submodelTrackers setObject:v10 forKeyedSubscript:v6];
}

@end