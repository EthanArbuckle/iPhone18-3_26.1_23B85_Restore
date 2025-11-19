@interface GKState
+ (GKState)state;
- (BOOL)isValidNextState:(Class)stateClass;
- (GKState)init;
- (GKStateMachine)stateMachine;
@end

@implementation GKState

+ (GKState)state
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (GKState)init
{
  v3.receiver = self;
  v3.super_class = GKState;
  return [(GKState *)&v3 init];
}

- (BOOL)isValidNextState:(Class)stateClass
{
  v4 = objc_opt_class();

  return [(objc_class *)stateClass isSubclassOfClass:v4];
}

- (GKStateMachine)stateMachine
{
  WeakRetained = objc_loadWeakRetained(&self->_stateMachine);

  return WeakRetained;
}

@end