@interface CARSoundRecognitionSetting
+ (id)settingWithSoundType:(id)a3;
- (id)description;
@end

@implementation CARSoundRecognitionSetting

+ (id)settingWithSoundType:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setSound:v3];

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CARSoundRecognitionSetting;
  v3 = [(CARSoundRecognitionSetting *)&v7 description];
  v4 = [(CARSoundRecognitionSetting *)self sound];
  v5 = [NSString stringWithFormat:@"%@ [name: %@]", v3, v4];

  return v5;
}

@end