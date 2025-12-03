@interface THBodyTextWrapController
- (id)floatingDrawableLayoutsForTarget:(id)target;
- (unint64_t)zOrderOfDrawable:(id)drawable forTarget:(id)target;
@end

@implementation THBodyTextWrapController

- (id)floatingDrawableLayoutsForTarget:(id)target
{
  objc_opt_class();
  pageLayout = [TSUDynamicCast() pageLayout];

  return [pageLayout floatingDrawableLayouts];
}

- (unint64_t)zOrderOfDrawable:(id)drawable forTarget:(id)target
{
  objc_opt_class();
  v5 = [objc_msgSend(objc_msgSend(TSUDynamicCast() "parent")];

  return [v5 zOrderOfDrawable:drawable];
}

@end