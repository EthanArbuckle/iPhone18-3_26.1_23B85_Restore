@interface HKMutableIntegerSet
- (HKMutableIntegerSet)initWithCapacity:(unint64_t)capacity;
- (void)addInteger:(int64_t)integer;
- (void)enumerateIntegersUsingBlock:(id)block;
- (void)removeInteger:(int64_t)integer;
@end

@implementation HKMutableIntegerSet

- (HKMutableIntegerSet)initWithCapacity:(unint64_t)capacity
{
  v4.receiver = self;
  v4.super_class = HKMutableIntegerSet;
  return [(HKIntegerSet *)&v4 initWithCapacity:capacity];
}

- (void)enumerateIntegersUsingBlock:(id)block
{
  self->_enumerating = 1;
  v4.receiver = self;
  v4.super_class = HKMutableIntegerSet;
  [(HKIntegerSet *)&v4 enumerateIntegersUsingBlock:block];
  self->_enumerating = 0;
}

- (void)addInteger:(int64_t)integer
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

  CFSetAddValue(set, integer);
}

- (void)removeInteger:(int64_t)integer
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

  CFSetRemoveValue(set, integer);
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