@interface THGlossaryTextWrapController
- (id)floatingDrawableLayoutsForTarget:(id)a3;
- (unint64_t)zOrderOfDrawable:(id)a3 forTarget:(id)a4;
@end

@implementation THGlossaryTextWrapController

- (id)floatingDrawableLayoutsForTarget:(id)a3
{
  objc_opt_class();
  [a3 parent];
  v4 = TSUDynamicCast();
  if ([v4 bodyLayout] == a3 && objc_msgSend(v4, "shouldWrapAgainstFloatingDrawables"))
  {
    v5 = [v4 floatingLayout];

    return [v5 children];
  }

  else
  {
    v7 = objc_alloc_init(NSArray);

    return v7;
  }
}

- (unint64_t)zOrderOfDrawable:(id)a3 forTarget:(id)a4
{
  objc_opt_class();
  [a4 parent];
  return [objc_msgSend(TSUDynamicCast() "info")] != a3;
}

@end