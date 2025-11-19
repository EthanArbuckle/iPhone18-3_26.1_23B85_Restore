@interface DetectorInfoController
- (void)viewDidLoad;
@end

@implementation DetectorInfoController

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = DetectorInfoController;
  [(DetectorInfoController *)&v14 viewDidLoad];
  v3 = settingsLocString(@"INFO_ELECTRONIC_SOUNDS_TITLE", @"SoundDetection");
  v4 = AXLocStringKeyForModel();
  v5 = settingsLocString(v4, @"SoundDetection");

  v6 = [UIImage systemImageNamed:@"bell.fill"];
  [(DetectorInfoController *)self addBulletedListItemWithTitle:v3 description:v5 image:v6];
  v7 = settingsLocString(@"INFO_HOW_TITLE", @"SoundDetection");

  v8 = AXLocStringKeyForModel();
  v9 = settingsLocString(v8, @"SoundDetection");

  v10 = [UIImage systemImageNamed:@"waveform"];

  [(DetectorInfoController *)self addBulletedListItemWithTitle:v7 description:v9 image:v10];
  v11 = settingsLocString(@"INFO_NOTIFICATION_TITLE", @"SoundDetection");

  v12 = settingsLocString(@"INFO_NOTIFICATION_DETAIL", @"SoundDetection");

  v13 = [UIImage systemImageNamed:@"checkmark.circle.fill"];

  [(DetectorInfoController *)self addBulletedListItemWithTitle:v11 description:v12 image:v13];
}

@end