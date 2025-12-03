@interface AVTPupilReflectionCorrectionDescriptor
- (uint64_t)setLeftEyeTargetIndex:(uint64_t)result;
- (uint64_t)setRightEyeTargetIndex:(uint64_t)result;
- (void)setLeftEyeMaterial:(uint64_t)material;
- (void)setReadMorpher:(uint64_t)morpher;
- (void)setRightEyeMaterial:(uint64_t)material;
@end

@implementation AVTPupilReflectionCorrectionDescriptor

- (void)setReadMorpher:(uint64_t)morpher
{
  if (morpher)
  {
    OUTLINED_FUNCTION_1_7(morpher, a2);
  }
}

- (void)setLeftEyeMaterial:(uint64_t)material
{
  if (material)
  {
    OUTLINED_FUNCTION_0_6(material, a2);
  }
}

- (void)setRightEyeMaterial:(uint64_t)material
{
  if (material)
  {
    OUTLINED_FUNCTION_7_0(material, a2);
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