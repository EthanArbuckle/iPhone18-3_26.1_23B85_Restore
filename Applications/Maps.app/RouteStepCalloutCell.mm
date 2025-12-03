@interface RouteStepCalloutCell
+ (RouteStepCalloutCell)cellWithRoute:(id)route stepIndex:(unint64_t)index type:(unsigned int)type;
- (BOOL)rotate;
- (BOOL)shouldRotateWithCallout:(id)callout;
- (CGRect)_frameForType:(unsigned int)type;
- (CGRect)contentRect;
- (CGRect)frame;
- (GEOComposedRouteStep)routeStep;
- (RouteStepCalloutCell)initWithRoute:(id)route stepIndex:(unint64_t)index type:(unsigned int)type;
- (void)drawInRect:(CGRect)rect;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation RouteStepCalloutCell

- (CGRect)contentRect
{
  x = self->_contentRect.origin.x;
  y = self->_contentRect.origin.y;
  width = self->_contentRect.size.width;
  height = self->_contentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
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

- (void)drawInRect:(CGRect)rect
{
  [PDFUtilities renderDocumentForType:self->_calloutType inRect:self->_frame.origin.x, self->_frame.origin.y, self->_frame.size.width, self->_frame.size.height];
  if ((self->_calloutType & 0xFFFFFFFE) != 4)
  {
    [(UIColor *)self->_calloutTextColor set];
    v4 = [NSNumber numberWithUnsignedInteger:self->_stepIndex];
    v13 = [NSNumberFormatter localizedStringFromNumber:v4 numberStyle:0];

    MidX = CGRectGetMidX(self->_contentRect);
    MidY = CGRectGetMidY(self->_contentRect);
    v7 = [UIFont boldSystemFontOfSize:10.0];
    [v13 _maps_sizeWithFont:v7];
    v9 = v8;
    v11 = v10;

    v12 = [UIFont boldSystemFontOfSize:10.0];
    [v13 _maps_drawAtPoint:v12 withFont:{MidX - v9 * 0.5, MidY - v11 * 0.5}];
  }
}

- (BOOL)rotate
{
  numberOfAttemptedRotations = self->_numberOfAttemptedRotations;
  if (numberOfAttemptedRotations == 5)
  {
    return 0;
  }

  v15 = v2;
  calloutType = self->_calloutType;
  if ((calloutType & 0xFFFFFFFE) == 4)
  {
    return 0;
  }

  self->_numberOfAttemptedRotations = numberOfAttemptedRotations + 1;
  if (calloutType > 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_101213534[calloutType];
  }

  self->_calloutType = v10;
  [(RouteStepCalloutCell *)self _frameForType:v3, v15, v4, v5];
  self->_frame.origin.x = v11;
  self->_frame.origin.y = v12;
  self->_frame.size.width = v13;
  self->_frame.size.height = v14;
  return 1;
}

- (BOOL)shouldRotateWithCallout:(id)callout
{
  [callout contentRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  x = self->_contentRect.origin.x;
  y = self->_contentRect.origin.y;
  width = self->_contentRect.size.width;
  height = self->_contentRect.size.height;

  return CGRectIntersectsRect(*&x, *&v5);
}

- (CGRect)_frameForType:(unsigned int)type
{
  routeStep = [(RouteStepCalloutCell *)self routeStep];
  [routeStep startCoordinate];
  v5 = MKMapPointForCoordinate(v35);

  x = v5.x;
  v7 = x;
  y = v5.y;
  v9 = y;
  v10 = self->_t.tx + self->_t.a * v7;
  v11 = self->_t.ty + self->_t.b * v7 + self->_t.d * v9;
  calloutType = self->_calloutType;
  v13 = calloutType - 4;
  if ((calloutType - 4) < 2)
  {
    v15 = 18.0;
    v14 = 9.0;
  }

  else if (calloutType != 2 && calloutType)
  {
    v15 = 29.5;
    v14 = 34.0;
  }

  else
  {
    v14 = 29.0;
    v15 = 34.0;
  }

  v16 = v10 + self->_t.c * v9;
  v17 = v11 - v15;
  v18 = v16 + v14 * -0.5;
  if (calloutType > 2)
  {
    v28 = v17 + -9.5;
    v29 = v16 - v14 + 4.0;
    v22 = v11 + v15 * -0.5 + -0.5;
    if (calloutType != 3)
    {
      v29 = v16;
      v22 = v11;
    }

    if (v13 >= 2)
    {
      v25 = v29;
    }

    else
    {
      v25 = v16 + v14 * -0.5;
    }

    if (v13 >= 2)
    {
      v26 = v22;
    }

    else
    {
      v26 = v17;
    }

    if (v13 >= 2)
    {
      v27 = v29;
    }

    else
    {
      v27 = v18 + -9.5;
    }

    if (v13 < 2)
    {
      v22 = v28;
    }
  }

  else
  {
    v19 = v17 + 4.0;
    v20 = v17 + 4.5;
    v21 = v16 + -4.0;
    v22 = v11 + v15 * -0.5;
    v23 = v16 + 1.0;
    v24 = v11 + -4.0;
    if (calloutType == 2)
    {
      v16 = v16 - v14 * 0.5;
    }

    else
    {
      v24 = v11;
    }

    if (calloutType == 2)
    {
      v11 = v11 + 0.5;
    }

    if (calloutType == 1)
    {
      v24 = v22;
    }

    else
    {
      v21 = v16;
    }

    if (calloutType != 1)
    {
      v23 = v16;
      v22 = v11;
    }

    if (calloutType)
    {
      v25 = v21;
    }

    else
    {
      v25 = v18;
    }

    if (calloutType)
    {
      v26 = v24;
    }

    else
    {
      v26 = v19;
    }

    if (calloutType)
    {
      v27 = v23;
    }

    else
    {
      v27 = v18;
    }

    if (!calloutType)
    {
      v22 = v20;
    }
  }

  self->_frame.origin.x = v25;
  self->_frame.origin.y = v26;
  self->_frame.size.width = v14;
  self->_frame.size.height = v15;
  self->_contentRect.origin.x = v27 + 9.5;
  self->_contentRect.origin.y = v22 + 9.5;
  __asm { FMOV            V4.2D, #10.0 }

  self->_contentRect.size = _Q4;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->a;
  v5 = *&transform->tx;
  *&self->_t.c = *&transform->c;
  *&self->_t.tx = v5;
  *&self->_t.a = v4;
  [(RouteStepCalloutCell *)self _frameForType:self->_calloutType];
  self->_frame.origin.x = v6;
  self->_frame.origin.y = v7;
  self->_frame.size.width = v8;
  self->_frame.size.height = v9;
}

- (GEOComposedRouteStep)routeStep
{
  steps = [(GEOComposedRoute *)self->_route steps];
  v4 = [steps objectAtIndexedSubscript:self->_stepIndex];

  return v4;
}

- (RouteStepCalloutCell)initWithRoute:(id)route stepIndex:(unint64_t)index type:(unsigned int)type
{
  routeCopy = route;
  v14.receiver = self;
  v14.super_class = RouteStepCalloutCell;
  v9 = [(RouteStepCalloutCell *)&v14 init];
  v10 = v9;
  if (v9)
  {
    [(RouteStepCalloutCell *)v9 setRoute:routeCopy];
    [(RouteStepCalloutCell *)v10 setStepIndex:index];
    v11 = [[UIColor alloc] initWithRed:0.396078431 green:0.62745098 blue:0.992156863 alpha:1.0];
    calloutTextColor = v10->_calloutTextColor;
    v10->_calloutTextColor = v11;

    v10->_calloutType = type;
    v10->_numberOfAttemptedRotations = 0;
  }

  return v10;
}

+ (RouteStepCalloutCell)cellWithRoute:(id)route stepIndex:(unint64_t)index type:(unsigned int)type
{
  v5 = *&type;
  routeCopy = route;
  v9 = [[self alloc] initWithRoute:routeCopy stepIndex:index type:v5];

  return v9;
}

@end