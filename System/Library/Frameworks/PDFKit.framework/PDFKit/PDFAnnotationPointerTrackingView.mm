@interface PDFAnnotationPointerTrackingView
- (PDFAnnotationPointerTrackingView)initWithFrame:(CGRect)frame annotation:(id)annotation;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
@end

@implementation PDFAnnotationPointerTrackingView

- (PDFAnnotationPointerTrackingView)initWithFrame:(CGRect)frame annotation:(id)annotation
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  annotationCopy = annotation;
  v15.receiver = self;
  v15.super_class = PDFAnnotationPointerTrackingView;
  height = [(PDFAnnotationPointerTrackingView *)&v15 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_annotation, annotation);
    v13 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v12];
    [(PDFAnnotationPointerTrackingView *)v12 addInteraction:v13];
  }

  return v12;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [(PDFAnnotationPointerTrackingView *)self annotation:interaction];
  isTextWidget = [v5 isTextWidget];

  if (isTextWidget)
  {
    annotation = [(PDFAnnotationPointerTrackingView *)self annotation];
    font = [annotation font];

    if (font)
    {
      [font pointSize];
    }

    else
    {
      [MEMORY[0x1E69DB878] smallSystemFontSize];
    }

    v10 = [MEMORY[0x1E69DCDC8] beamWithPreferredLength:0 axis:?];
    systemPointerStyle = [MEMORY[0x1E69DCDD0] styleWithShape:v10 constrainedAxes:0];
  }

  else
  {
    systemPointerStyle = [MEMORY[0x1E69DCDD0] systemPointerStyle];
  }

  return systemPointerStyle;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  v5 = [(PDFAnnotationPointerTrackingView *)self annotation:interaction];
  [v5 setPointerIsOverAnnotation:1];
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  v5 = [(PDFAnnotationPointerTrackingView *)self annotation:interaction];
  [v5 setPointerIsOverAnnotation:0];
}

@end