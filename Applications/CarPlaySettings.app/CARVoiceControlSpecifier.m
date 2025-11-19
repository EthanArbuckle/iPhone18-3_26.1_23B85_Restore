@interface CARVoiceControlSpecifier
- (CARVoiceControlSpecifier)init;
@end

@implementation CARVoiceControlSpecifier

- (CARVoiceControlSpecifier)init
{
  v3 = sub_10001C80C(@"ACCESSIBILITY_VOICE_CONTROL");
  v6.receiver = self;
  v6.super_class = CARVoiceControlSpecifier;
  v4 = [(CARSettingsSwitchCellSpecifier *)&v6 initWithTitle:v3 image:0 icon:0];

  return v4;
}

@end