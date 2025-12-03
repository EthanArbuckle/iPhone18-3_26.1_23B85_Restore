@interface TUIWidgetBuilder
- (id)finalizeAnimationGroups;
- (id)finalizeWidgetWithParent:(id)parent;
- (void)addAnimationGroup:(id)group withName:(id)name;
- (void)addModel:(id)model;
- (void)addWidgetData:(id)data withKey:(id)key;
- (void)configureWithChildNode:(id)node attributes:(id)attributes;
@end

@implementation TUIWidgetBuilder

- (void)configureWithChildNode:(id)node attributes:(id)attributes
{
  v5 = [attributes stringForAttribute:137 node:node.var0];
  key = self->_key;
  self->_key = v5;
}

- (void)addWidgetData:(id)data withKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  data = self->_data;
  if (!data)
  {
    v8 = objc_opt_new();
    v9 = self->_data;
    self->_data = v8;

    data = self->_data;
  }

  [(NSMutableDictionary *)data setObject:dataCopy forKeyedSubscript:keyCopy];
  [(NSMutableDictionary *)self->_models setObject:0 forKeyedSubscript:keyCopy];
}

- (id)finalizeWidgetWithParent:(id)parent
{
  parentCopy = parent;
  models = self->_models;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_12779C;
  v10[3] = &unk_262158;
  v6 = parentCopy;
  v11 = v6;
  [(NSMutableDictionary *)models enumerateKeysAndObjectsUsingBlock:v10];
  data = self->_data;
  if (data)
  {
    v8 = [(NSMutableDictionary *)data copy];
  }

  else
  {
    v8 = &__NSDictionary0__struct;
  }

  return v8;
}

- (void)addModel:(id)model
{
  modelCopy = model;
  if (self->_key)
  {
    v8 = modelCopy;
    [(TUIWidgetBuilder *)self addWidgetData:modelCopy withKey:?];
    models = self->_models;
    if (!models)
    {
      v6 = objc_opt_new();
      v7 = self->_models;
      self->_models = v6;

      models = self->_models;
    }

    [(NSMutableDictionary *)models setObject:v8 forKeyedSubscript:self->_key];
    modelCopy = v8;
  }
}

- (void)addAnimationGroup:(id)group withName:(id)name
{
  groupCopy = group;
  nameCopy = name;
  animations = self->_animations;
  if (!animations)
  {
    v8 = objc_opt_new();
    v9 = self->_animations;
    self->_animations = v8;

    animations = self->_animations;
  }

  [(NSMutableDictionary *)animations setObject:groupCopy forKeyedSubscript:nameCopy];
}

- (id)finalizeAnimationGroups
{
  if ([(NSMutableDictionary *)self->_animations count])
  {
    v3 = objc_alloc_init(TUIAnimationGroupCollection);
    [(TUIAnimationGroupCollection *)v3 setGroups:self->_animations];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end