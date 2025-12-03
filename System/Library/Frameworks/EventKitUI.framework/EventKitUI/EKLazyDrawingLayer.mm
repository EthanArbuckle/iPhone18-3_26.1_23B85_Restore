@interface EKLazyDrawingLayer
- (void)didChangeValueForKey:(id)key;
@end

@implementation EKLazyDrawingLayer

- (void)didChangeValueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"hidden"])
  {
    [(EKLazyDrawingLayer *)self setNeedsDisplay];
  }

  v5.receiver = self;
  v5.super_class = EKLazyDrawingLayer;
  [(EKLazyDrawingLayer *)&v5 didChangeValueForKey:keyCopy];
}

@end