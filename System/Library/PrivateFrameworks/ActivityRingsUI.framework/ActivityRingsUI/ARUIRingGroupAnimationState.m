@interface ARUIRingGroupAnimationState
+ (id)currentAnimationState;
+ (void)currentAnimationState;
+ (void)popAnimationState;
+ (void)pushAnimationState:(id)a3;
- (ARUIRingGroupAnimationState)init;
- (void)addAnimation:(id)a3;
- (void)animationDidComplete:(id)a3;
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

- (void)addAnimation:(id)a3
{
  v4 = a3;
  [v4 setDelegate:self];
  [(NSMutableSet *)self->_trackedAnimations addObject:v4];
}

- (void)animationDidComplete:(id)a3
{
  [(NSMutableSet *)self->_trackedAnimations removeObject:a3];
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

+ (void)pushAnimationState:(id)a3
{
  v3 = a3;
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

    [v3 setNextAnimationState:__currentRingGroupAnimationState];
  }

  v6 = arui_rings_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[ARUIRingGroupAnimationState pushAnimationState:];
  }

  v7 = __currentRingGroupAnimationState;
  __currentRingGroupAnimationState = v3;
}

+ (void)popAnimationState
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = [__currentRingGroupAnimationState nextAnimationState];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1CFD67000, a1, OS_LOG_TYPE_DEBUG, "ARUIRingGroupAnimationState popping animationState. Setting __currentRingGroupAnimationState to nextAnimationState: %@", v3, 0xCu);
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