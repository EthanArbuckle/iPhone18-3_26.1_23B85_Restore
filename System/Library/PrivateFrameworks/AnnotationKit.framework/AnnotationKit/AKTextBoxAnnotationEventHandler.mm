@interface AKTextBoxAnnotationEventHandler
- (void)updateModelWithCurrentPoint:(CGPoint)point options:(unint64_t)options;
@end

@implementation AKTextBoxAnnotationEventHandler

- (void)updateModelWithCurrentPoint:(CGPoint)point options:(unint64_t)options
{
  y = point.y;
  x = point.x;
  annotation = [(AKAnnotationEventHandler *)self annotation];
  [annotation rectangle];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v21.receiver = self;
  v21.super_class = AKTextBoxAnnotationEventHandler;
  [(AKRectangularAnnotationEventHandler *)&v21 updateModelWithCurrentPoint:options options:x, y];
  [annotation rectangle];
  v23.origin.x = v17;
  v23.origin.y = v18;
  v23.size.width = v19;
  v23.size.height = v20;
  v22.origin.x = v10;
  v22.origin.y = v12;
  v22.size.width = v14;
  v22.size.height = v16;
  if (!CGRectEqualToRect(v22, v23))
  {
    if (([annotation textIsFixedWidth] & 1) == 0)
    {
      [annotation setTextIsFixedWidth:1];
    }

    if ([annotation textIsClipped])
    {
      [annotation setTextIsClipped:0];
    }
  }
}

@end