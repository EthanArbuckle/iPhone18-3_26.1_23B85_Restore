@interface _TUIElementRatingsBuilder
- (id)finalizeAnimationGroups;
- (void)addAnimationGroup:(id)a3 withName:(id)a4;
@end

@implementation _TUIElementRatingsBuilder

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