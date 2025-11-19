@interface THBodyTextWrapController
- (id)floatingDrawableLayoutsForTarget:(id)a3;
- (unint64_t)zOrderOfDrawable:(id)a3 forTarget:(id)a4;
@end

@implementation THBodyTextWrapController

- (id)floatingDrawableLayoutsForTarget:(id)a3
{
  objc_opt_class();
  v3 = [TSUDynamicCast() pageLayout];

  return [v3 floatingDrawableLayouts];
}

- (unint64_t)zOrderOfDrawable:(id)a3 forTarget:(id)a4
{
  objc_opt_class();
  v5 = [objc_msgSend(objc_msgSend(TSUDynamicCast() "parent")];

  return [v5 zOrderOfDrawable:a3];
}

@end