@interface UICollectionViewAccessibility__MusicUI__UIKit
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation UICollectionViewAccessibility__MusicUI__UIKit

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UICollectionViewAccessibility__MusicUI__UIKit *)self accessibilityIdentifier];
  if (([v8 isEqualToString:@"AXFeaturedStationsCollectionViewIdentifier"] & 1) == 0)
  {

    goto LABEL_6;
  }

  v9 = [MEMORY[0x29EDC7A58] currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10)
  {
LABEL_6:
    v15 = self;
    v12 = &v15;
    goto LABEL_7;
  }

  [(UICollectionViewAccessibility__MusicUI__UIKit *)self bounds];
  v19.size.height = v11 + -30.0;
  v18.x = x;
  v18.y = y;
  if (CGRectContainsPoint(v19, v18))
  {
    v16 = self;
    v12 = &v16;
LABEL_7:
    v12[1] = UICollectionViewAccessibility__MusicUI__UIKit;
    v13 = objc_msgSendSuper2(v12, sel__accessibilityHitTest_withEvent_, v7, x, y, v15);
    goto LABEL_8;
  }

  v13 = 0;
LABEL_8:

  return v13;
}

@end