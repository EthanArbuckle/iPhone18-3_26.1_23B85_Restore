@interface AVTMorpherDrivenMaterialDescriptor
- (uint64_t)setMorphTargetIndex:(uint64_t)result;
- (void)setPropertyName:(void *)a1;
@end

@implementation AVTMorpherDrivenMaterialDescriptor

- (uint64_t)setMorphTargetIndex:(uint64_t)result
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

- (void)setPropertyName:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 40);
  }
}

@end