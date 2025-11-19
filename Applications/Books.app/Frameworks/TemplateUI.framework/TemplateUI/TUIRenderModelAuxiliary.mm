@interface TUIRenderModelAuxiliary
- (BOOL)isEqualToRenderModel:(id)a3;
- (CGSize)size;
- (TUIRenderModelAuxiliary)initWithModels:(id)a3;
- (TUIRenderModelAuxiliary)initWithNavigationItems:(id)a3;
- (id)triggers;
- (unint64_t)hash;
- (void)appendResourcesToCollector:(id)a3 transform:(CGAffineTransform *)a4;
@end

@implementation TUIRenderModelAuxiliary

- (TUIRenderModelAuxiliary)initWithNavigationItems:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUIRenderModelAuxiliary;
  v5 = [(TUIRenderModelAuxiliary *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    navigationItems = v5->_navigationItems;
    v5->_navigationItems = v6;
  }

  return v5;
}

- (TUIRenderModelAuxiliary)initWithModels:(id)a3
{
  v4 = a3;
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
    v7 = v4;
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

          v12 = [*(*(&v15 + 1) + 8 * v11) navigationItems];
          [(NSArray *)v6 addObjectsFromArray:v12];

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

- (void)appendResourcesToCollector:(id)a3 transform:(CGAffineTransform *)a4
{
  v6 = a3;
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
        v13 = *&a4->c;
        v14[0] = *&a4->a;
        v14[1] = v13;
        v14[2] = *&a4->tx;
        [v12 appendResourcesToCollector:v6 transform:v14];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  if (TUIRenderModelIsEqualToRenderModel(self, v6))
  {
    v7 = [(TUIRenderModelAuxiliary *)self navigationItems];
    v8 = [v6 navigationItems];
    v9 = v7 == v8 || [v7 isEqual:v8];
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
        v10 = [v9 observeTrigger];
        v11 = [v10 length];

        if (v11)
        {
          v12 = [v9 observeTrigger];
          [v3 addObject:v12];
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
  v2 = [(TUIRenderModelAuxiliary *)self identifier];
  v3 = TUIIdentifierHash(v2);

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