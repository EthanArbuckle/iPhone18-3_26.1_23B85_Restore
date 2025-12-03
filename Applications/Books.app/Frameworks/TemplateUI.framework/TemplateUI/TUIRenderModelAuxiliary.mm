@interface TUIRenderModelAuxiliary
- (BOOL)isEqualToRenderModel:(id)model;
- (CGSize)size;
- (TUIRenderModelAuxiliary)initWithModels:(id)models;
- (TUIRenderModelAuxiliary)initWithNavigationItems:(id)items;
- (id)triggers;
- (unint64_t)hash;
- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform;
@end

@implementation TUIRenderModelAuxiliary

- (TUIRenderModelAuxiliary)initWithNavigationItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = TUIRenderModelAuxiliary;
  v5 = [(TUIRenderModelAuxiliary *)&v9 init];
  if (v5)
  {
    v6 = [itemsCopy copy];
    navigationItems = v5->_navigationItems;
    v5->_navigationItems = v6;
  }

  return v5;
}

- (TUIRenderModelAuxiliary)initWithModels:(id)models
{
  modelsCopy = models;
  v19.receiver = self;
  v19.super_class = TUIRenderModelAuxiliary;
  v5 = [(TUIRenderModelAuxiliary *)&v19 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = modelsCopy;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          navigationItems = [*(*(&v15 + 1) + 8 * v11) navigationItems];
          [(NSArray *)v6 addObjectsFromArray:navigationItems];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }

    navigationItems = v5->_navigationItems;
    v5->_navigationItems = v6;
  }

  return v5;
}

- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform
{
  collectorCopy = collector;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_navigationItems;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = *&transform->c;
        v14[0] = *&transform->a;
        v14[1] = v13;
        v14[2] = *&transform->tx;
        [v12 appendResourcesToCollector:collectorCopy transform:v14];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, modelCopy);

  if (TUIRenderModelIsEqualToRenderModel(self, v6))
  {
    navigationItems = [(TUIRenderModelAuxiliary *)self navigationItems];
    navigationItems2 = [v6 navigationItems];
    v9 = navigationItems == navigationItems2 || [navigationItems isEqual:navigationItems2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)triggers
{
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_navigationItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        observeTrigger = [v9 observeTrigger];
        v11 = [observeTrigger length];

        if (v11)
        {
          observeTrigger2 = [v9 observeTrigger];
          [v3 addObject:observeTrigger2];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (unint64_t)hash
{
  identifier = [(TUIRenderModelAuxiliary *)self identifier];
  v3 = TUIIdentifierHash(identifier);

  return v3;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end