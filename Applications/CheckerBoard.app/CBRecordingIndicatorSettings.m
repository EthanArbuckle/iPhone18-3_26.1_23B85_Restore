@interface CBRecordingIndicatorSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CBRecordingIndicatorSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = CBRecordingIndicatorSettings;
  [(CBRecordingIndicatorSettings *)&v3 setDefaultValues];
  [(CBRecordingIndicatorSettings *)self setSensorType:0];
  [(CBRecordingIndicatorSettings *)self setDelayBeforeFadeOut90:0.01];
  [(CBRecordingIndicatorSettings *)self setFadeOutDuration90:0.03];
  [(CBRecordingIndicatorSettings *)self setDelayBeforeFadeIn90:0.25];
  [(CBRecordingIndicatorSettings *)self setFadeInDuration90:0.2];
  [(CBRecordingIndicatorSettings *)self setDelayBeforeFadeOut180:0.01];
  [(CBRecordingIndicatorSettings *)self setFadeOutDuration180:0.03];
  [(CBRecordingIndicatorSettings *)self setDelayBeforeFadeIn180:0.65];
  [(CBRecordingIndicatorSettings *)self setFadeInDuration180:0.2];
}

+ (id)settingsControllerModule
{
  v2 = [PTChoiceRow rowWithTitle:@"Sensor Type" valueKeyPath:@"sensorType"];
  v32 = [v2 possibleValues:&off_1000813A8 titles:&off_100081390];

  v37 = v32;
  v3 = [NSArray arrayWithObjects:&v37 count:1];
  v31 = [PTModule sectionWithRows:v3 title:@"Override Sensor State"];

  v4 = [PTSliderRow rowWithTitle:@"Delay Before Fade-out" valueKeyPath:@"delayBeforeFadeOut90"];
  v30 = [v4 minValue:0.0 maxValue:1.5];

  v5 = [PTSliderRow rowWithTitle:@"Fade-out Duration" valueKeyPath:@"fadeOutDuration90"];
  v29 = [v5 minValue:0.0 maxValue:1.5];

  v6 = [PTSliderRow rowWithTitle:@"Delay Before Fade-in" valueKeyPath:@"delayBeforeFadeIn90"];
  v28 = [v6 minValue:0.0 maxValue:1.5];

  v7 = [PTSliderRow rowWithTitle:@"Fade-in Duration" valueKeyPath:@"fadeInDuration90"];
  v27 = [v7 minValue:0.0 maxValue:1.5];

  v36[0] = v30;
  v36[1] = v29;
  v36[2] = v28;
  v36[3] = v27;
  v8 = [NSArray arrayWithObjects:v36 count:4];
  v26 = [PTModule sectionWithRows:v8 title:@"Rotation Crossfade Settings (90º)"];

  v9 = [PTSliderRow rowWithTitle:@"Delay Before Fade-out" valueKeyPath:@"delayBeforeFadeOut180"];
  v25 = [v9 minValue:0.0 maxValue:1.5];

  v10 = [PTSliderRow rowWithTitle:@"Fade-out Duration" valueKeyPath:@"fadeOutDuration180"];
  v24 = [v10 minValue:0.0 maxValue:1.5];

  v11 = [PTSliderRow rowWithTitle:@"Delay Before Fade-in" valueKeyPath:@"delayBeforeFadeIn180"];
  v12 = [v11 minValue:0.0 maxValue:1.5];

  v13 = [PTSliderRow rowWithTitle:@"Fade-in Duration" valueKeyPath:@"fadeInDuration180"];
  v14 = [v13 minValue:0.0 maxValue:1.5];

  v35[0] = v25;
  v35[1] = v24;
  v35[2] = v12;
  v35[3] = v14;
  v15 = [NSArray arrayWithObjects:v35 count:4];
  v16 = [PTModule sectionWithRows:v15 title:@"Rotation Crossfade Settings (180º)"];

  v17 = [PTRestoreDefaultSettingsRowAction actionWithSettingsKeyPath:0];
  v18 = [PTButtonRow rowWithTitle:@"Restore Defaults" action:v17];

  v34 = v18;
  v19 = [NSArray arrayWithObjects:&v34 count:1];
  v20 = [PTModule sectionWithRows:v19];

  v33[0] = v31;
  v33[1] = v26;
  v33[2] = v16;
  v33[3] = v20;
  v21 = [NSArray arrayWithObjects:v33 count:4];
  v22 = [PTModule moduleWithTitle:0 contents:v21];

  return v22;
}

@end