@interface AVTPupilReflectionCorrectionDescriptor
- (uint64_t)setLeftEyeTargetIndex:(uint64_t)result;
- (uint64_t)setRightEyeTargetIndex:(uint64_t)result;
- (void)setLeftEyeMaterial:(uint64_t)a1;
- (void)setReadMorpher:(uint64_t)a1;
- (void)setRightEyeMaterial:(uint64_t)a1;
@end

@implementation AVTPupilReflectionCorrectionDescriptor

- (void)setReadMorpher:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_7(a1, a2);
  }
}

- (void)setLeftEyeMaterial:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_6(a1, a2);
  }
}

- (void)setRightEyeMaterial:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_7_0(a1, a2);
  }
}

- (uint64_t)setLeftEyeTargetIndex:(uint64_t)result
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

- (uint64_t)setRightEyeTargetIndex:(uint64_t)result
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

@end