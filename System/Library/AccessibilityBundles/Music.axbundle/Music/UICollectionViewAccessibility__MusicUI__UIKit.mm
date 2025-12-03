@interface UICollectionViewAccessibility__MusicUI__UIKit
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation UICollectionViewAccessibility__MusicUI__UIKit

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  accessibilityIdentifier = [(UICollectionViewAccessibility__MusicUI__UIKit *)self accessibilityIdentifier];
  if (([accessibilityIdentifier isEqualToString:@"AXFeaturedStationsCollectionViewIdentifier"] & 1) == 0)
  {

    goto LABEL_6;
  }

  currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
LABEL_6:
    selfCopy = self;
    v12 = &selfCopy;
    goto LABEL_7;
  }

  [(UICollectionViewAccessibility__MusicUI__UIKit *)self bounds];
  v19.size.height = v11 + -30.0;
  v18.x = x;
  v18.y = y;
  if (CGRectContainsPoint(v19, v18))
  {
    selfCopy2 = self;
    v12 = &selfCopy2;
LABEL_7:
    v12[1] = UICollectionViewAccessibility__MusicUI__UIKit;
    v13 = objc_msgSendSuper2(v12, sel__accessibilityHitTest_withEvent_, eventCopy, x, y, selfCopy);
    goto LABEL_8;
  }

  v13 = 0;
LABEL_8:

  return v13;
}

@end