@interface NSMutableArray(AVTExtensions)
- (void)avt_applyPoseRoundingBehaviour;
@end

@implementation NSMutableArray(AVTExtensions)

- (void)avt_applyPoseRoundingBehaviour
{
  v7 = _AVTPoseRoundingBehaviour();
  v2 = [self count];
  if (v2)
  {
    v3 = v2;
    for (i = 0; i != v3; ++i)
    {
      v5 = [self objectAtIndexedSubscript:i];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v5 avt_numberByRoundingWithBehavior:v7];
        [self setObject:v6 atIndexedSubscript:i];
      }

      else if (objc_opt_respondsToSelector())
      {
        [v5 avt_applyPoseRoundingBehaviour];
      }
    }
  }
}

@end