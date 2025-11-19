@interface HKMutableIntegerSet
- (HKMutableIntegerSet)initWithCapacity:(unint64_t)a3;
- (void)addInteger:(int64_t)a3;
- (void)enumerateIntegersUsingBlock:(id)a3;
- (void)removeInteger:(int64_t)a3;
@end

@implementation HKMutableIntegerSet

- (HKMutableIntegerSet)initWithCapacity:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = HKMutableIntegerSet;
  return [(HKIntegerSet *)&v4 initWithCapacity:a3];
}

- (void)enumerateIntegersUsingBlock:(id)a3
{
  self->_enumerating = 1;
  v4.receiver = self;
  v4.super_class = HKMutableIntegerSet;
  [(HKIntegerSet *)&v4 enumerateIntegersUsingBlock:a3];
  self->_enumerating = 0;
}

- (void)addInteger:(int64_t)a3
{
  if (!self->super._set)
  {
    [HKMutableIntegerSet addInteger:];
  }

  if (self->_enumerating)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:@"HKMutableIntegerSetMutationWhileEnumeratingExceptionName" reason:@"you shouldn't mutate a set while enumerating it" userInfo:0];
    objc_exception_throw(v6);
  }

  set = self->super._set;

  CFSetAddValue(set, a3);
}

- (void)removeInteger:(int64_t)a3
{
  if (!self->super._set)
  {
    [HKMutableIntegerSet removeInteger:];
  }

  if (self->_enumerating)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:@"HKMutableIntegerSetMutationWhileEnumeratingExceptionName" reason:@"you shouldn't mutate a set while enumerating it" userInfo:0];
    objc_exception_throw(v6);
  }

  set = self->super._set;

  CFSetRemoveValue(set, a3);
}

- (void)addInteger:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_6_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  [OUTLINED_FUNCTION_2_10(v2 v3];
}

- (void)removeInteger:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_6_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8();
  [OUTLINED_FUNCTION_2_10(v2 v3];
}

@end