@interface TUIRenderModelLayer
- (BOOL)isEqualToRenderModel:(id)model;
- (CGSize)size;
- (NSArray)debugContainedSubmodels;
- (NSString)description;
- (TUIRenderModelLayer)initWithSubmodels:(id)submodels config:(id)config erasableInsets:(UIEdgeInsets)insets;
- (UIEdgeInsets)eraseableInsets;
- (unint64_t)hash;
- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform;
@end

@implementation TUIRenderModelLayer

- (TUIRenderModelLayer)initWithSubmodels:(id)submodels config:(id)config erasableInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  submodelsCopy = submodels;
  configCopy = config;
  v18.receiver = self;
  v18.super_class = TUIRenderModelLayer;
  v13 = [(TUIRenderModelLayer *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_config, config);
    v14->_eraseableInsets.top = top;
    v14->_eraseableInsets.left = left;
    v14->_eraseableInsets.bottom = bottom;
    v14->_eraseableInsets.right = right;
    v14->_size = CGSizeZero;
    v15 = [submodelsCopy copy];
    submodels = v14->_submodels;
    v14->_submodels = v15;
  }

  return v14;
}

- (NSArray)debugContainedSubmodels
{
  if (self->_submodels)
  {
    return self->_submodels;
  }

  else
  {
    return &__NSArray0__struct;
  }
}

- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform
{
  collectorCopy = collector;
  config = self->_config;
  v8 = *&transform->c;
  v20 = *&transform->a;
  v21 = v8;
  v22 = *&transform->tx;
  [(TUIRenderModelLayerConfiguring *)config appendResourcesToCollector:collectorCopy transform:&v20];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_submodels;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        v15 = *&transform->c;
        v20 = *&transform->a;
        v21 = v15;
        v22 = *&transform->tx;
        [v14 appendResourcesToCollector:collectorCopy transform:{&v20, v16}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v23 count:16];
    }

    while (v11);
  }
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = modelCopy;
    }

    else
    {
      v6 = objc_opt_class();
      v7 = TUIDynamicCast(v6, modelCopy);
    }

    v9 = v7;
    v8 = 1;
    if (self != modelCopy)
    {
      if (!TUIRenderModelIsEqualToRenderModel(self, v7) || (submodels = self->_submodels, submodels != v9->_submodels) && ![(NSArray *)submodels isEqual:?]|| (config = self->_config, config != v9->_config) && ![(TUIRenderModelLayerConfiguring *)config isEqualToConfig:?])
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(TUIRenderModelLayer *)self identifier];
  v3 = TUIIdentifierHash(identifier);

  return v3;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p submodels=%@ config=%@>", v4, self, self->_submodels, self->_config];

  return v5;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)eraseableInsets
{
  top = self->_eraseableInsets.top;
  left = self->_eraseableInsets.left;
  bottom = self->_eraseableInsets.bottom;
  right = self->_eraseableInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end