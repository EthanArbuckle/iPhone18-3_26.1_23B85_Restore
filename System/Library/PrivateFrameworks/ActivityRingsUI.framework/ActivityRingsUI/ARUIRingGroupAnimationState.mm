@interface ARUIRingGroupAnimationState
+ (id)currentAnimationState;
+ (void)currentAnimationState;
+ (void)popAnimationState;
+ (void)pushAnimationState:(id)state;
- (ARUIRingGroupAnimationState)init;
- (void)addAnimation:(id)animation;
- (void)animationDidComplete:(id)complete;
@end

@implementation ARUIRingGroupAnimationState

+ (id)currentAnimationState
{
  v2 = arui_rings_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[ARUIRingGroupAnimationState currentAnimationState];
  }

  v3 = __currentRingGroupAnimationState;

  return v3;
}

- (ARUIRingGroupAnimationState)init
{
  v6.receiver = self;
  v6.super_class = ARUIRingGroupAnimationState;
  v2 = [(ARUIRingGroupAnimationState *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    trackedAnimations = v2->_trackedAnimations;
    v2->_trackedAnimations = v3;
  }

  return v2;
}

- (void)addAnimation:(id)animation
{
  animationCopy = animation;
  [animationCopy setDelegate:self];
  [(NSMutableSet *)self->_trackedAnimations addObject:animationCopy];
}

- (void)animationDidComplete:(id)complete
{
  [(NSMutableSet *)self->_trackedAnimations removeObject:complete];
  if (![(NSMutableSet *)self->_trackedAnimations count])
  {
    [__trackedAnimationStates removeObject:self];
    if (![__trackedAnimationStates count])
    {
      v4 = __trackedAnimationStates;
      __trackedAnimationStates = 0;
    }

    completion = self->_completion;
    if (completion)
    {
      v6 = *(completion + 2);

      v6();
    }
  }
}

+ (void)pushAnimationState:(id)state
{
  stateCopy = state;
  v4 = arui_rings_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[ARUIRingGroupAnimationState pushAnimationState:];
  }

  if (__currentRingGroupAnimationState)
  {
    v5 = arui_rings_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      +[ARUIRingGroupAnimationState pushAnimationState:];
    }

    [stateCopy setNextAnimationState:__currentRingGroupAnimationState];
  }

  v6 = arui_rings_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[ARUIRingGroupAnimationState pushAnimationState:];
  }

  v7 = __currentRingGroupAnimationState;
  __currentRingGroupAnimationState = stateCopy;
}

+ (void)popAnimationState
{
  v4 = *MEMORY[0x1E69E9840];
  nextAnimationState = [__currentRingGroupAnimationState nextAnimationState];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1CFD67000, self, OS_LOG_TYPE_DEBUG, "ARUIRingGroupAnimationState popping animationState. Setting __currentRingGroupAnimationState to nextAnimationState: %@", v3, 0xCu);
}

+ (void)pushAnimationState:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)pushAnimationState:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)pushAnimationState:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)currentAnimationState
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end