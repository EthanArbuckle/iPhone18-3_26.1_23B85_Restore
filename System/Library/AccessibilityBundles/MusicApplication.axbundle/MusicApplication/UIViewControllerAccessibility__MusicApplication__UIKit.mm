@interface UIViewControllerAccessibility__MusicApplication__UIKit
- (void)didChangeVoiceOverOrSwitchControlStatus:(id)a3;
- (void)viewDidLoad;
@end

@implementation UIViewControllerAccessibility__MusicApplication__UIKit

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = UIViewControllerAccessibility__MusicApplication__UIKit;
  [(UIViewControllerAccessibility__MusicApplication__UIKit *)&v5 viewDidLoad];
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 addObserver:self selector:sel_didChangeVoiceOverOrSwitchControlStatus_ name:*MEMORY[0x29EDC8000] object:0];

  v4 = [MEMORY[0x29EDBA068] defaultCenter];
  [v4 addObserver:self selector:sel_didChangeVoiceOverOrSwitchControlStatus_ name:*MEMORY[0x29EDC7F48] object:0];

  [(UIViewControllerAccessibility__MusicApplication__UIKit *)self didChangeVoiceOverOrSwitchControlStatus:0];
}

- (void)didChangeVoiceOverOrSwitchControlStatus:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(UIViewControllerAccessibility__MusicApplication__UIKit *)self safeValueForKey:@"navigationItem"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = !UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning();
  [v6 setHidesSearchBarWhenScrolling:v7];
}

@end