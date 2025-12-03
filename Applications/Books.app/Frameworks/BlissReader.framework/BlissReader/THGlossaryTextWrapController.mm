@interface THGlossaryTextWrapController
- (id)floatingDrawableLayoutsForTarget:(id)target;
- (unint64_t)zOrderOfDrawable:(id)drawable forTarget:(id)target;
@end

@implementation THGlossaryTextWrapController

- (id)floatingDrawableLayoutsForTarget:(id)target
{
  objc_opt_class();
  [target parent];
  v4 = TSUDynamicCast();
  if ([v4 bodyLayout] == target && objc_msgSend(v4, "shouldWrapAgainstFloatingDrawables"))
  {
    floatingLayout = [v4 floatingLayout];

    return [floatingLayout children];
  }

  else
  {
    v7 = objc_alloc_init(NSArray);

    return v7;
  }
}

- (unint64_t)zOrderOfDrawable:(id)drawable forTarget:(id)target
{
  objc_opt_class();
  [target parent];
  return [objc_msgSend(TSUDynamicCast() "info")] != drawable;
}

@end