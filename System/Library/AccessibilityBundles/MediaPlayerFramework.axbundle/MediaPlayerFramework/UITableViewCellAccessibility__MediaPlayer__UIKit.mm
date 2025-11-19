@interface UITableViewCellAccessibility__MediaPlayer__UIKit
- (unint64_t)accessibilityTraits;
@end

@implementation UITableViewCellAccessibility__MediaPlayer__UIKit

- (unint64_t)accessibilityTraits
{
  v16.receiver = self;
  v16.super_class = UITableViewCellAccessibility__MediaPlayer__UIKit;
  v2 = [(UITableViewCellAccessibility__MediaPlayer__UIKit *)&v16 accessibilityTraits];
  v15 = 0;
  objc_opt_class();
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  AXPerformSafeBlock();
  v3 = v10[5];
  _Block_object_dispose(&v9, 8);

  v4 = __UIAccessibilityCastAsClass();

  if (v15 == 1)
  {
    abort();
  }

  v5 = [v4 image];
  v6 = [v5 accessibilityIdentifier];

  if ([v6 hasPrefix:@"AlternateTrackCheckmark"])
  {
    v7 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v7 = 0;
  }

  return v7 | v2;
}

@end