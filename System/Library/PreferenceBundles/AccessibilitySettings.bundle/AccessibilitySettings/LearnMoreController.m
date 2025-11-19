@interface LearnMoreController
- (void)viewDidLoad;
@end

@implementation LearnMoreController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = LearnMoreController;
  [(LearnMoreController *)&v10 viewDidLoad];
  v3 = settingsLocString(@"LEARN_MORE_INTRO", @"SoundDetection");
  [(LearnMoreController *)self addSectionWithHeader:0 content:v3];

  v4 = settingsLocString(@"LEARN_MORE_MICROWAVE", @"SoundDetection");
  [(LearnMoreController *)self addBulletedListItemWithTitle:v4 description:0];

  v5 = settingsLocString(@"LEARN_MORE_WASHING_MACHINE", @"SoundDetection");
  [(LearnMoreController *)self addBulletedListItemWithTitle:v5 description:0];

  v6 = settingsLocString(@"LEARN_MORE_ALARM", @"SoundDetection");
  [(LearnMoreController *)self addBulletedListItemWithTitle:v6 description:0];

  v7 = settingsLocString(@"LEARN_MORE_DOORBELL", @"SoundDetection");
  [(LearnMoreController *)self addBulletedListItemWithTitle:v7 description:0];

  v8 = settingsLocString(@"LEARN_MORE_DETAIL", @"SoundDetection");
  [(LearnMoreController *)self addSectionWithHeader:0 content:v8];

  v9 = settingsLocString(@"LEARN_MORE_EXAMPLE", @"SoundDetection");
  [(LearnMoreController *)self addSectionWithHeader:0 content:v9];
}

@end