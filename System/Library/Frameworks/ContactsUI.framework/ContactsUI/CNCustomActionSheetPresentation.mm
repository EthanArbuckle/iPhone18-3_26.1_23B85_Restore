@interface CNCustomActionSheetPresentation
+ (id)prepareViewControllerForPresentation:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5 permittedArrowDirection:(unint64_t)a6 dismissHandler:(id)a7;
@end

@implementation CNCustomActionSheetPresentation

+ (id)prepareViewControllerForPresentation:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5 permittedArrowDirection:(unint64_t)a6 dismissHandler:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a7;
  v15 = a4;
  v16 = a3;
  v17 = objc_alloc_init(_CNCustomActionSheetPresentation);
  [(_CNCustomActionSheetPresentation *)v17 setSourceView:v15];

  [(_CNCustomActionSheetPresentation *)v17 setSourceRect:x, y, width, height];
  [(_CNCustomActionSheetPresentation *)v17 setPermittedArrowDirections:a6];
  [(_CNCustomActionSheetPresentation *)v17 setDismissHandler:v14];

  [(_CNCustomActionSheetPresentation *)v17 prepareForPresentationOfController:v16];

  return v17;
}

@end