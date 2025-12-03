@interface CNCustomActionSheetPresentation
+ (id)prepareViewControllerForPresentation:(id)presentation sourceView:(id)view sourceRect:(CGRect)rect permittedArrowDirection:(unint64_t)direction dismissHandler:(id)handler;
@end

@implementation CNCustomActionSheetPresentation

+ (id)prepareViewControllerForPresentation:(id)presentation sourceView:(id)view sourceRect:(CGRect)rect permittedArrowDirection:(unint64_t)direction dismissHandler:(id)handler
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  handlerCopy = handler;
  viewCopy = view;
  presentationCopy = presentation;
  v17 = objc_alloc_init(_CNCustomActionSheetPresentation);
  [(_CNCustomActionSheetPresentation *)v17 setSourceView:viewCopy];

  [(_CNCustomActionSheetPresentation *)v17 setSourceRect:x, y, width, height];
  [(_CNCustomActionSheetPresentation *)v17 setPermittedArrowDirections:direction];
  [(_CNCustomActionSheetPresentation *)v17 setDismissHandler:handlerCopy];

  [(_CNCustomActionSheetPresentation *)v17 prepareForPresentationOfController:presentationCopy];

  return v17;
}

@end