@interface AKTextBoxAnnotationEventHandler
- (void)updateModelWithCurrentPoint:(CGPoint)a3 options:(unint64_t)a4;
@end

@implementation AKTextBoxAnnotationEventHandler

- (void)updateModelWithCurrentPoint:(CGPoint)a3 options:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(AKAnnotationEventHandler *)self annotation];
  [v8 rectangle];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v21.receiver = self;
  v21.super_class = AKTextBoxAnnotationEventHandler;
  [(AKRectangularAnnotationEventHandler *)&v21 updateModelWithCurrentPoint:a4 options:x, y];
  [v8 rectangle];
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
    if (([v8 textIsFixedWidth] & 1) == 0)
    {
      [v8 setTextIsFixedWidth:1];
    }

    if ([v8 textIsClipped])
    {
      [v8 setTextIsClipped:0];
    }
  }
}

@end