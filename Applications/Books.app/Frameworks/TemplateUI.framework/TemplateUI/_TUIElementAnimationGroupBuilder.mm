@interface _TUIElementAnimationGroupBuilder
- (id)finalizeAnimationGroup;
- (void)addAnimationGroupPhase:(id)phase withName:(id)name;
@end

@implementation _TUIElementAnimationGroupBuilder

- (void)addAnimationGroupPhase:(id)phase withName:(id)name
{
  phaseCopy = phase;
  nameCopy = name;
  phases = self->_phases;
  if (!phases)
  {
    v8 = objc_opt_new();
    v9 = self->_phases;
    self->_phases = v8;

    phases = self->_phases;
  }

  [(NSMutableDictionary *)phases setObject:phaseCopy forKeyedSubscript:nameCopy];
}

- (id)finalizeAnimationGroup
{
  v3 = objc_alloc_init(TUIAnimationGroup);
  [(TUIAnimationGroup *)v3 setPhases:self->_phases];

  return v3;
}

@end