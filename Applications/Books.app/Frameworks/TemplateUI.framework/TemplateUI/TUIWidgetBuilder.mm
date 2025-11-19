@interface TUIWidgetBuilder
- (id)finalizeAnimationGroups;
- (id)finalizeWidgetWithParent:(id)a3;
- (void)addAnimationGroup:(id)a3 withName:(id)a4;
- (void)addModel:(id)a3;
- (void)addWidgetData:(id)a3 withKey:(id)a4;
- (void)configureWithChildNode:(id)a3 attributes:(id)a4;
@end

@implementation TUIWidgetBuilder

- (void)configureWithChildNode:(id)a3 attributes:(id)a4
{
  v5 = [a4 stringForAttribute:137 node:a3.var0];
  key = self->_key;
  self->_key = v5;
}

- (void)addWidgetData:(id)a3 withKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  data = self->_data;
  if (!data)
  {
    v8 = objc_opt_new();
    v9 = self->_data;
    self->_data = v8;

    data = self->_data;
  }

  [(NSMutableDictionary *)data setObject:v10 forKeyedSubscript:v6];
  [(NSMutableDictionary *)self->_models setObject:0 forKeyedSubscript:v6];
}

- (id)finalizeWidgetWithParent:(id)a3
{
  v4 = a3;
  models = self->_models;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_12779C;
  v10[3] = &unk_262158;
  v6 = v4;
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

- (void)addModel:(id)a3
{
  v4 = a3;
  if (self->_key)
  {
    v8 = v4;
    [(TUIWidgetBuilder *)self addWidgetData:v4 withKey:?];
    models = self->_models;
    if (!models)
    {
      v6 = objc_opt_new();
      v7 = self->_models;
      self->_models = v6;

      models = self->_models;
    }

    [(NSMutableDictionary *)models setObject:v8 forKeyedSubscript:self->_key];
    v4 = v8;
  }
}

- (void)addAnimationGroup:(id)a3 withName:(id)a4
{
  v10 = a3;
  v6 = a4;
  animations = self->_animations;
  if (!animations)
  {
    v8 = objc_opt_new();
    v9 = self->_animations;
    self->_animations = v8;

    animations = self->_animations;
  }

  [(NSMutableDictionary *)animations setObject:v10 forKeyedSubscript:v6];
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