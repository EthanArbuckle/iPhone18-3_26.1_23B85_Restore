@interface EKLazyDrawingLayer
- (void)didChangeValueForKey:(id)a3;
@end

@implementation EKLazyDrawingLayer

- (void)didChangeValueForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"hidden"])
  {
    [(EKLazyDrawingLayer *)self setNeedsDisplay];
  }

  v5.receiver = self;
  v5.super_class = EKLazyDrawingLayer;
  [(EKLazyDrawingLayer *)&v5 didChangeValueForKey:v4];
}

@end