@interface CARSoundRecognitionSetting
+ (id)settingWithSoundType:(id)type;
- (id)description;
@end

@implementation CARSoundRecognitionSetting

+ (id)settingWithSoundType:(id)type
{
  typeCopy = type;
  v4 = objc_opt_new();
  [v4 setSound:typeCopy];

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CARSoundRecognitionSetting;
  v3 = [(CARSoundRecognitionSetting *)&v7 description];
  sound = [(CARSoundRecognitionSetting *)self sound];
  v5 = [NSString stringWithFormat:@"%@ [name: %@]", v3, sound];

  return v5;
}

@end