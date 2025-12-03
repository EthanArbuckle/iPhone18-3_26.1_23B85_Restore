@interface EKDayOccurrenceResizeHandleView
- (CGRect)_circleRect;
- (EKDayOccurrenceResizeHandleView)initWithFrame:(CGRect)frame occurrenceView:(id)view;
- (EKDayOccurrenceView)occurrenceView;
- (void)drawRect:(CGRect)rect;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation EKDayOccurrenceResizeHandleView

- (CGRect)_circleRect
{
  [(EKDayOccurrenceResizeHandleView *)self bounds];
  v3 = (v2 + -7.0) * 0.5;
  v4 = 7.0;
  v5 = 7.0;
  v6 = v3;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v6;
  result.origin.x = v3;
  return result;
}

- (EKDayOccurrenceResizeHandleView)initWithFrame:(CGRect)frame occurrenceView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = EKDayOccurrenceResizeHandleView;
  height = [(EKDayOccurrenceResizeHandleView *)&v14 initWithFrame:x, y, width, height];
  if (height)
  {
    currentImageState = [viewCopy currentImageState];
    displayColor = [currentImageState displayColor];
    [(EKDayOccurrenceResizeHandleView *)height setBaseColor:displayColor];

    objc_storeWeak(&height->_occurrenceView, viewCopy);
    [(EKDayOccurrenceResizeHandleView *)height setOpaque:0];
  }

  return height;
}

- (void)willMoveToSuperview:(id)superview
{
  if (!superview)
  {
    objc_storeWeak(&self->_occurrenceView, 0);
  }
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  [(EKDayOccurrenceResizeHandleView *)self _circleRect];
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  v24 = CGRectInset(v23, -0.5, -0.5);
  v9 = v24.origin.x;
  v10 = v24.origin.y;
  v11 = v24.size.width;
  v12 = v24.size.height;
  CGContextSetCompositeOperation();
  [(UIColor *)self->_baseColor setFill];
  v25.origin.x = v9;
  v25.origin.y = v10;
  v25.size.width = v11;
  v25.size.height = v12;
  CGContextFillEllipseInRect(CurrentContext, v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v27 = CGRectInset(v26, 0.5, 0.5);
  v13 = v27.origin.x;
  v14 = v27.origin.y;
  v15 = v27.size.width;
  v16 = v27.size.height;
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [whiteColor setFill];

  v18 = v13;
  v19 = v14;
  v20 = v15;
  v21 = v16;

  CGContextFillEllipseInRect(CurrentContext, *&v18);
}

- (EKDayOccurrenceView)occurrenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_occurrenceView);

  return WeakRetained;
}

@end