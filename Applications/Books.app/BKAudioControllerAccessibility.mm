@interface BKAudioControllerAccessibility
- (void)viewDidLoad;
@end

@implementation BKAudioControllerAccessibility

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = BKAudioControllerAccessibility;
  [(BKAudioControllerAccessibility *)&v5 viewDidLoad];
  v3 = [(BKAudioControllerAccessibility *)self imaxValueForKey:@"_volumeSlider"];
  v4 = sub_1000765EC(@"volume.slider");
  [v3 setAccessibilityLabel:v4];
}

@end