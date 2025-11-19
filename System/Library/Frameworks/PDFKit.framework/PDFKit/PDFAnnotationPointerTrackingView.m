@interface PDFAnnotationPointerTrackingView
- (PDFAnnotationPointerTrackingView)initWithFrame:(CGRect)a3 annotation:(id)a4;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
@end

@implementation PDFAnnotationPointerTrackingView

- (PDFAnnotationPointerTrackingView)initWithFrame:(CGRect)a3 annotation:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = PDFAnnotationPointerTrackingView;
  v11 = [(PDFAnnotationPointerTrackingView *)&v15 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_annotation, a4);
    v13 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v12];
    [(PDFAnnotationPointerTrackingView *)v12 addInteraction:v13];
  }

  return v12;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [(PDFAnnotationPointerTrackingView *)self annotation:a3];
  v6 = [v5 isTextWidget];

  if (v6)
  {
    v7 = [(PDFAnnotationPointerTrackingView *)self annotation];
    v8 = [v7 font];

    if (v8)
    {
      [v8 pointSize];
    }

    else
    {
      [MEMORY[0x1E69DB878] smallSystemFontSize];
    }

    v10 = [MEMORY[0x1E69DCDC8] beamWithPreferredLength:0 axis:?];
    v9 = [MEMORY[0x1E69DCDD0] styleWithShape:v10 constrainedAxes:0];
  }

  else
  {
    v9 = [MEMORY[0x1E69DCDD0] systemPointerStyle];
  }

  return v9;
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v5 = [(PDFAnnotationPointerTrackingView *)self annotation:a3];
  [v5 setPointerIsOverAnnotation:1];
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v5 = [(PDFAnnotationPointerTrackingView *)self annotation:a3];
  [v5 setPointerIsOverAnnotation:0];
}

@end