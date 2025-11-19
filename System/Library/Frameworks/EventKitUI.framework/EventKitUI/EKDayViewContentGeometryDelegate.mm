@interface EKDayViewContentGeometryDelegate
- (CGPoint)pointForDate:(double)a3;
- (CGRect)bounds;
- (CGRect)displayedRect;
- (CGRect)frame;
- (EKDayViewContent)dayViewContent;
- (NSString)description;
- (double)dateForPoint:(CGPoint)a3;
- (double)hourHeight;
- (double)timeWidth;
- (double)topPadding;
@end

@implementation EKDayViewContentGeometryDelegate

- (EKDayViewContent)dayViewContent
{
  WeakRetained = objc_loadWeakRetained(&self->_dayViewContent);

  return WeakRetained;
}

- (CGRect)displayedRect
{
  v3 = [(EKDayViewContentGeometryDelegate *)self dayViewContent];
  [(EKDayViewContentGeometryDelegate *)self frame];
  [v3 _occurrencePaddingBetweenDays:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)hourHeight
{
  v2 = [(EKDayViewContentGeometryDelegate *)self dayViewContent];
  v3 = [v2 grid];
  [v3 hourHeight];
  v5 = v4;

  return v5;
}

- (double)topPadding
{
  v2 = [(EKDayViewContentGeometryDelegate *)self dayViewContent];
  v3 = [v2 grid];
  [v3 topPadding];
  v5 = v4;

  return v5;
}

- (double)timeWidth
{
  v2 = [(EKDayViewContentGeometryDelegate *)self dayViewContent];
  v3 = [v2 grid];
  [v3 timeWidth];
  v5 = v4;

  return v5;
}

- (double)dateForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(EKDayViewContentGeometryDelegate *)self dayViewContent];
  [v5 dateForPoint:{x, y}];
  v7 = v6;

  return v7;
}

- (CGPoint)pointForDate:(double)a3
{
  v4 = [(EKDayViewContentGeometryDelegate *)self dayViewContent];
  [v4 pointForDate:a3];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = EKDayViewContentGeometryDelegate;
  v4 = [(EKDayViewContentGeometryDelegate *)&v14 description];
  [(EKDayViewContentGeometryDelegate *)self hourHeight];
  v6 = v5;
  [(EKDayViewContentGeometryDelegate *)self topPadding];
  v8 = v7;
  [(EKDayViewContentGeometryDelegate *)self timeWidth];
  v10 = v9;
  [(EKDayViewContentGeometryDelegate *)self displayedRect];
  v11 = NSStringFromCGRect(v16);
  v12 = [v3 stringWithFormat:@"%@ %f %f %f %@", v4, v6, v8, v10, v11];

  return v12;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end