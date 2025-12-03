@interface APLatencyVisualizationLayer
- (id)init:(void *)init timeContext:(void *)context zPosition:(int)position;
- (void)drawInContext:(CGContext *)context;
@end

@implementation APLatencyVisualizationLayer

- (void)drawInContext:(CGContext *)context
{
  v5 = (self->_getAbsoluteTime)(self->_timeContext, a2);
  dotOffset = self->_dotOffset;
  [(APLatencyVisualizationLayer *)self contentsScale];
  v8 = dotOffset * v7;
  dotDiameter = self->_dotDiameter;
  [(APLatencyVisualizationLayer *)self contentsScale];
  v11 = dotDiameter * v10;
  dotSpeedX = self->_dotSpeedX;
  [(APLatencyVisualizationLayer *)self frame];
  v14 = (v13 - (v8 + v8));
  v15 = 2 * v14;
  v16 = (v5 * dotSpeedX) % v15;
  v17 = v15 - v16;
  if (v16 <= v14)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v19 = v8 + v18;
  dotSpeedY = self->_dotSpeedY;
  [(APLatencyVisualizationLayer *)self frame];
  v22 = (v21 - (v8 + v8));
  v23 = 2 * v22;
  v24 = (v5 * dotSpeedY) % v23;
  v25 = v23 - v24;
  if (v24 <= v22)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  v27 = v8 + v26;
  CGContextSetLineWidth(context, 2.0);
  CGContextSetRGBStrokeColor(context, 1.0, 0.0, 0.0, 1.0);
  CGContextSetRGBFillColor(context, 1.0, 0.0, 0.0, 1.0);
  v33.origin.x = v19;
  v33.origin.y = v27;
  v33.size.width = v11;
  v33.size.height = v11;
  CGContextStrokeEllipseInRect(context, v33);
  v28 = v19;
  v29 = v27;
  v30 = v11;
  v31 = v11;

  CGContextFillEllipseInRect(context, *&v28);
}

- (id)init:(void *)init timeContext:(void *)context zPosition:(int)position
{
  if ([(APLatencyVisualizationLayer *)self init])
  {
    [(APLatencyVisualizationLayer *)self setZPosition:position];
    [(APLatencyVisualizationLayer *)self setName:@"Latency Tracking Layer"];
    self->_getAbsoluteTime = init;
    self->_timeContext = context;
    self->_dotOffset = 32.0;
    self->_dotDiameter = 10.0;
    self->_dotSpeed = 500.0;
    self->_dotSpeedX = 433.012702;
    self->_dotSpeedY = self->_dotSpeed * 0.5;
  }

  return self;
}

@end