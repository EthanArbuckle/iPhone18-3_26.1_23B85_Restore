@interface _TUIElementAnimationGroupBuilder
- (id)finalizeAnimationGroup;
- (void)addAnimationGroupPhase:(id)a3 withName:(id)a4;
@end

@implementation _TUIElementAnimationGroupBuilder

- (void)addAnimationGroupPhase:(id)a3 withName:(id)a4
{
  v10 = a3;
  v6 = a4;
  phases = self->_phases;
  if (!phases)
  {
    v8 = objc_opt_new();
    v9 = self->_phases;
    self->_phases = v8;

    phases = self->_phases;
  }

  [(NSMutableDictionary *)phases setObject:v10 forKeyedSubscript:v6];
}

- (id)finalizeAnimationGroup
{
  v3 = objc_alloc_init(TUIAnimationGroup);
  [(TUIAnimationGroup *)v3 setPhases:self->_phases];

  return v3;
}

@end