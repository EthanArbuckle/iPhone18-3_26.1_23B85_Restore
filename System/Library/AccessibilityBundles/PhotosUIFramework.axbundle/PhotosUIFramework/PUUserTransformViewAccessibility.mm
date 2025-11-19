@interface PUUserTransformViewAccessibility
- (void)setFrame:(CGRect)a3;
@end

@implementation PUUserTransformViewAccessibility

- (void)setFrame:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = PUUserTransformViewAccessibility;
  [(PUUserTransformViewAccessibility *)&v3 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

@end