@interface SL_CACPreferences
+ (id)sharedPreferences;
- (BOOL)attentionAware;
- (BOOL)playSoundUponRecognition;
- (BOOL)showHints;
- (BOOL)showTextResponseUponRecognition;
- (SL_CACPreferences)init;
- (id)alwaysShowOverlayType;
- (void)setAlwaysShowOverlayType:(id)type;
- (void)setAttentionAware:(BOOL)aware;
- (void)setShowHints:(BOOL)hints;
@end

@implementation SL_CACPreferences

+ (id)sharedPreferences
{
  if (qword_100456A08 != -1)
  {
    sub_1002D8414();
  }

  v3 = qword_100456A00;

  return v3;
}

- (SL_CACPreferences)init
{
  v8.receiver = self;
  v8.super_class = SL_CACPreferences;
  v2 = [(SL_CACPreferences *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = qword_100456A10;
    v13 = qword_100456A10;
    if (!qword_100456A10)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000025D8;
      v9[3] = &unk_10041E208;
      v9[4] = &v10;
      sub_1000025D8(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    sharedPreferences = [v3 sharedPreferences];
    cacPrefs = v2->_cacPrefs;
    v2->_cacPrefs = sharedPreferences;
  }

  return v2;
}

- (BOOL)showTextResponseUponRecognition
{
  cacPrefs = [(SL_CACPreferences *)self cacPrefs];
  showTextResponseUponRecognition = [cacPrefs showTextResponseUponRecognition];

  return showTextResponseUponRecognition;
}

- (BOOL)playSoundUponRecognition
{
  cacPrefs = [(SL_CACPreferences *)self cacPrefs];
  playSoundUponRecognition = [cacPrefs playSoundUponRecognition];

  return playSoundUponRecognition;
}

- (BOOL)showHints
{
  cacPrefs = [(SL_CACPreferences *)self cacPrefs];
  v3 = [cacPrefs userHintsFeatures] == 3;

  return v3;
}

- (void)setShowHints:(BOOL)hints
{
  hintsCopy = hints;
  cacPrefs = [(SL_CACPreferences *)self cacPrefs];
  v6 = cacPrefs;
  if (hintsCopy)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [cacPrefs setUserHintsFeatures:v5];
}

- (id)alwaysShowOverlayType
{
  cacPrefs = [(SL_CACPreferences *)self cacPrefs];
  alwaysShowOverlayType = [cacPrefs alwaysShowOverlayType];

  return alwaysShowOverlayType;
}

- (void)setAlwaysShowOverlayType:(id)type
{
  typeCopy = type;
  cacPrefs = [(SL_CACPreferences *)self cacPrefs];
  [cacPrefs setAlwaysShowOverlayType:typeCopy];
}

- (BOOL)attentionAware
{
  cacPrefs = [(SL_CACPreferences *)self cacPrefs];
  attentionAwareAction = [cacPrefs attentionAwareAction];
  v4 = [attentionAwareAction isEqualToString:@"SleepAndWake"];

  return v4;
}

- (void)setAttentionAware:(BOOL)aware
{
  awareCopy = aware;
  cacPrefs = [(SL_CACPreferences *)self cacPrefs];
  v6 = cacPrefs;
  if (awareCopy)
  {
    v5 = @"SleepAndWake";
  }

  else
  {
    v5 = @"None";
  }

  [cacPrefs setAttentionAwareAction:v5];
}

@end