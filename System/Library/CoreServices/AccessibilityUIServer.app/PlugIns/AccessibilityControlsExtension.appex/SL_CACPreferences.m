@interface SL_CACPreferences
+ (id)sharedPreferences;
- (BOOL)attentionAware;
- (BOOL)playSoundUponRecognition;
- (BOOL)showHints;
- (BOOL)showTextResponseUponRecognition;
- (SL_CACPreferences)init;
- (id)alwaysShowOverlayType;
- (void)setAlwaysShowOverlayType:(id)a3;
- (void)setAttentionAware:(BOOL)a3;
- (void)setShowHints:(BOOL)a3;
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
    v5 = [v3 sharedPreferences];
    cacPrefs = v2->_cacPrefs;
    v2->_cacPrefs = v5;
  }

  return v2;
}

- (BOOL)showTextResponseUponRecognition
{
  v2 = [(SL_CACPreferences *)self cacPrefs];
  v3 = [v2 showTextResponseUponRecognition];

  return v3;
}

- (BOOL)playSoundUponRecognition
{
  v2 = [(SL_CACPreferences *)self cacPrefs];
  v3 = [v2 playSoundUponRecognition];

  return v3;
}

- (BOOL)showHints
{
  v2 = [(SL_CACPreferences *)self cacPrefs];
  v3 = [v2 userHintsFeatures] == 3;

  return v3;
}

- (void)setShowHints:(BOOL)a3
{
  v3 = a3;
  v4 = [(SL_CACPreferences *)self cacPrefs];
  v6 = v4;
  if (v3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [v4 setUserHintsFeatures:v5];
}

- (id)alwaysShowOverlayType
{
  v2 = [(SL_CACPreferences *)self cacPrefs];
  v3 = [v2 alwaysShowOverlayType];

  return v3;
}

- (void)setAlwaysShowOverlayType:(id)a3
{
  v4 = a3;
  v5 = [(SL_CACPreferences *)self cacPrefs];
  [v5 setAlwaysShowOverlayType:v4];
}

- (BOOL)attentionAware
{
  v2 = [(SL_CACPreferences *)self cacPrefs];
  v3 = [v2 attentionAwareAction];
  v4 = [v3 isEqualToString:@"SleepAndWake"];

  return v4;
}

- (void)setAttentionAware:(BOOL)a3
{
  v3 = a3;
  v4 = [(SL_CACPreferences *)self cacPrefs];
  v6 = v4;
  if (v3)
  {
    v5 = @"SleepAndWake";
  }

  else
  {
    v5 = @"None";
  }

  [v4 setAttentionAwareAction:v5];
}

@end