@interface _TUIElementToggleBuilder
- (id)finalizeAnimationGroups;
- (void)addAnimationGroup:(id)group withName:(id)name;
@end

@implementation _TUIElementToggleBuilder

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
  v3 = objc_alloc_init(TUIAnimationGroupCollection);
  [(TUIAnimationGroupCollection *)v3 setGroups:self->_animations];

  return v3;
}

@end