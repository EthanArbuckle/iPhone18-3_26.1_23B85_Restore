@interface PUUserTransformViewAccessibility
- (void)setFrame:(CGRect)frame;
@end

@implementation PUUserTransformViewAccessibility

- (void)setFrame:(CGRect)frame
{
  v3.receiver = self;
  v3.super_class = PUUserTransformViewAccessibility;
  [(PUUserTransformViewAccessibility *)&v3 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

@end