@interface UIBezierPath
@end

@implementation UIBezierPath

void __43__UIBezierPath_OBAdditions__ax_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) ax_descriptionForPathElement:a2];
  [v2 appendFormat:@"    %@\n", v3];
}

@end