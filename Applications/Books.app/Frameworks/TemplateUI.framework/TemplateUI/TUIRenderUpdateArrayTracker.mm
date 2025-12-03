@interface TUIRenderUpdateArrayTracker
- (TUIRenderUpdateArrayTracker)init;
- (id)addDeletedInterestInDeletedModels:(id)models;
- (void)decrementInterestInDeletedModels:(id)models;
- (void)incrementInterestInDeletedModels:(id)models;
- (void)setSubmodelTracker:(id)tracker forIdentifier:(id)identifier;
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

- (id)addDeletedInterestInDeletedModels:(id)models
{
  modelsCopy = models;
  v5 = [[_TUIRenderUpdateDeletionInterest alloc] initWithModels:modelsCopy tracker:self];

  return v5;
}

- (void)incrementInterestInDeletedModels:(id)models
{
  modelsCopy = models;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [modelsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(modelsCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        identifier = [v9 identifier];
        [(NSCountedSet *)self->_deletedIdentifiers addObject:identifier];
        [(NSMutableDictionary *)self->_deletedModels setObject:v9 forKeyedSubscript:identifier];
      }

      v6 = [modelsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)decrementInterestInDeletedModels:(id)models
{
  modelsCopy = models;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [modelsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(modelsCopy);
        }

        identifier = [*(*(&v10 + 1) + 8 * v8) identifier];
        [(NSCountedSet *)self->_deletedIdentifiers removeObject:identifier];
        if (![(NSCountedSet *)self->_deletedIdentifiers countForObject:identifier])
        {
          [(NSMutableDictionary *)self->_deletedModels removeObjectForKey:identifier];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [modelsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)setSubmodelTracker:(id)tracker forIdentifier:(id)identifier
{
  trackerCopy = tracker;
  identifierCopy = identifier;
  submodelTrackers = self->_submodelTrackers;
  if (!submodelTrackers)
  {
    v8 = objc_opt_new();
    v9 = self->_submodelTrackers;
    self->_submodelTrackers = v8;

    submodelTrackers = self->_submodelTrackers;
  }

  [(NSMutableDictionary *)submodelTrackers setObject:trackerCopy forKeyedSubscript:identifierCopy];
}

@end