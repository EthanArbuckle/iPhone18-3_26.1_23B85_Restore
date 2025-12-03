@interface AKNoteAnnotationHelper
+ (CGRect)_boundsForClosedPopupAnnotation:(id)annotation havingParent:(id)parent onPageController:(id)controller;
+ (CGRect)_boundsForOpenPopupAnnotation:(id)annotation withClosedBounds:(CGRect)bounds havingParent:(id)parent onPageController:(id)controller;
+ (id)newPopupAnnotationWithParent:(id)parent onPageController:(id)controller;
@end

@implementation AKNoteAnnotationHelper

+ (id)newPopupAnnotationWithParent:(id)parent onPageController:(id)controller
{
  parentCopy = parent;
  controllerCopy = controller;
  v8 = objc_opt_new();
  v9 = objc_opt_self();
  [v8 setVisualStyle:objc_opt_isKindOfClass() & 1];

  v10 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v8 setVisualStyle:0];
    v12 = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v15 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    v16 = objc_opt_self();
    v17 = objc_opt_isKindOfClass();

    if (v17)
    {
      [v8 setVisualStyle:1];
      [self _boundsForClosedPopupAnnotation:v8 havingParent:parentCopy onPageController:controllerCopy];
      v12 = v18;
      v13 = v19;
      v14 = v20;
      v15 = v21;
    }

    else
    {
      v12 = *MEMORY[0x277CBF398];
      v13 = *(MEMORY[0x277CBF398] + 8);
      v14 = *(MEMORY[0x277CBF398] + 16);
      v15 = *(MEMORY[0x277CBF398] + 24);
      NSLog(&cfstr_SParentannotat.isa, "+[AKNoteAnnotationHelper newPopupAnnotationWithParent:onPageController:]");
    }
  }

  [v8 setRectangle:{v12, v13, v14, v15}];
  [self _boundsForOpenPopupAnnotation:v8 withClosedBounds:parentCopy havingParent:controllerCopy onPageController:{v12, v13, v14, v15}];
  [v8 setOpenRectangle:?];

  return v8;
}

+ (CGRect)_boundsForClosedPopupAnnotation:(id)annotation havingParent:(id)parent onPageController:(id)controller
{
  controllerCopy = controller;
  [parent drawingBounds];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  CGRectGetMaxX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  CGRectGetMaxY(v25);
  [controllerCopy maxPageRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v26.origin.x = v12;
  v26.origin.y = v14;
  v26.size.width = v16;
  v26.size.height = v18;
  CGRectInset(v26, 6.0, 6.0);

  MEMORY[0x2821F9670](AKGeometryHelper, sel_constrainRect_withinRect_);
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

+ (CGRect)_boundsForOpenPopupAnnotation:(id)annotation withClosedBounds:(CGRect)bounds havingParent:(id)parent onPageController:(id)controller
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  controllerCopy = controller;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  CGRectGetMaxX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  CGRectGetMinY(v25);
  [controllerCopy maxPageRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v26.origin.x = v12;
  v26.origin.y = v14;
  v26.size.width = v16;
  v26.size.height = v18;
  CGRectInset(v26, 6.0, 6.0);

  MEMORY[0x2821F9670](AKGeometryHelper, sel_constrainRect_withinRect_);
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

@end