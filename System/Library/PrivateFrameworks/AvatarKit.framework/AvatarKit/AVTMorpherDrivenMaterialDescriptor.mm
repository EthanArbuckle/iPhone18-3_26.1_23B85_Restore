@interface AVTMorpherDrivenMaterialDescriptor
- (uint64_t)setMorphTargetIndex:(uint64_t)result;
- (void)setPropertyName:(void *)name;
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

- (void)setPropertyName:(void *)name
{
  if (name)
  {
    objc_setProperty_nonatomic_copy(name, newValue, newValue, 40);
  }
}

@end