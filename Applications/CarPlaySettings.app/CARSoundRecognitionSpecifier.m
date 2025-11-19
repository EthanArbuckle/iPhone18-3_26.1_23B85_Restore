@interface CARSoundRecognitionSpecifier
- (CARSoundRecognitionSpecifier)init;
@end

@implementation CARSoundRecognitionSpecifier

- (CARSoundRecognitionSpecifier)init
{
  v3 = sub_10001C80C(@"ACCESSIBILITY_SOUND_RECOGNITION");
  v6.receiver = self;
  v6.super_class = CARSoundRecognitionSpecifier;
  v4 = [(CARSettingsCellSpecifier *)&v6 initWithTitle:v3 image:0 icon:0 accessoryType:1];

  return v4;
}

@end