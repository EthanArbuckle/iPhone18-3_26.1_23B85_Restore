@interface SUSUIInstallTonightPasscodeEntryView
- (SUSUIInstallTonightPasscodeEntryView)initWithFrame:(CGRect)a3;
- (id)_bodyTextToModelSpecificLocalizedKey:(id)a3;
- (void)setDescriptor:(id)a3;
- (void)setInstallTonightForecast:(id)a3;
- (void)updateStatusText;
@end

@implementation SUSUIInstallTonightPasscodeEntryView

- (SUSUIInstallTonightPasscodeEntryView)initWithFrame:(CGRect)a3
{
  v9 = a3;
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = SUSUIInstallTonightPasscodeEntryView;
  v5 = [(SUSUIPasscodeEntryView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v8 = v5;
  objc_storeStrong(&v8, v5);
  if (v5)
  {
    [(SUSUIInstallTonightPasscodeEntryView *)v8 updateStatusText];
  }

  v4 = v8;
  objc_storeStrong(&v8, 0);
  return v4;
}

- (void)setInstallTonightForecast:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (*(&v4->super._dismissing + 1) != location[0])
  {
    objc_storeStrong((&v4->super._dismissing + 1), location[0]);
    [(SUSUIInstallTonightPasscodeEntryView *)v4 updateStatusText];
  }

  objc_storeStrong(location, 0);
}

- (void)setDescriptor:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (*(&v4->_forecast + 1) != location[0])
  {
    objc_storeStrong((&v4->_forecast + 1), location[0]);
    [(SUSUIInstallTonightPasscodeEntryView *)v4 updateStatusText];
  }

  objc_storeStrong(location, 0);
}

- (void)updateStatusText
{
  v33 = self;
  v32 = a2;
  v31 = [*(&self->_forecast + 1) isSplatOnly];
  v30 = *(&v33->super._dismissing + 1);
  v27 = 0;
  v25 = 0;
  v23 = 0;
  v21 = 0;
  v19 = 0;
  v17 = 0;
  if (v31)
  {
    v28 = [v30 _susui_cardinalityForRoundedStartTime];
    v27 = 1;
    v26 = [v30 _susui_cardinalityForRoundedEndTime];
    v25 = 1;
    v24 = [NSString stringWithFormat:@"RSR_PASSCODE_SUBTITLE_%@_TO_%@", v28, v26];
    v23 = 1;
    v2 = v24;
  }

  else
  {
    v22 = [v30 _susui_cardinalityForRoundedStartTime];
    v21 = 1;
    v20 = [v30 _susui_cardinalityForRoundedEndTime];
    v19 = 1;
    v18 = [NSString stringWithFormat:@"SOFTWARE_UPDATE_PASSCODE_SUBTITLE_%@_TO_%@", v22, v20];
    v17 = 1;
    v2 = v18;
  }

  v29 = v2;
  if (v17)
  {
  }

  if (v19)
  {
  }

  if (v21)
  {
  }

  if (v23)
  {
  }

  if (v25)
  {
  }

  if (v27)
  {
  }

  v6 = [(SUSUIInstallTonightPasscodeEntryView *)v33 _bodyTextToModelSpecificLocalizedKey:v29];
  v5 = [v30 _susui_formattedRoundedStartTimeString];
  v4 = [v30 _susui_formattedRoundedEndTimeString];
  location = [NSString stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@ %@" error:0, v5, v4];

  v7 = [(SUSUIPasscodeEntryView *)v33 passcodeLockView];
  v14 = 0;
  v12 = 0;
  v10 = 0;
  v8 = 0;
  if (v31)
  {
    v15 = +[NSBundle mainBundle];
    v14 = 1;
    v13 = [(NSBundle *)v15 localizedStringForKey:@"RSR_PASSCODE_TITLE" value:&stru_100018B80 table:@"SoftwareUpdateUIService"];
    v12 = 1;
    v3 = v13;
  }

  else
  {
    v11 = +[NSBundle mainBundle];
    v10 = 1;
    v9 = [(NSBundle *)v11 localizedStringForKey:@"SOFTWARE_UPDATE_PASSCODE_TITLE" value:&stru_100018B80 table:@"SoftwareUpdateUIService"];
    v8 = 1;
    v3 = v9;
  }

  [(SBUIPasscodeLockView *)v7 updateStatusText:v3 subtitle:location animated:0];
  if (v8)
  {
  }

  if (v10)
  {
  }

  if (v12)
  {
  }

  if (v14)
  {
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
}

- (id)_bodyTextToModelSpecificLocalizedKey:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = +[NSBundle mainBundle];
  v6 = [UIDevice modelSpecificLocalizedStringKeyForKey:location[0]];
  v8 = [NSBundle localizedStringForKey:v7 value:"localizedStringForKey:value:table:" table:?];

  if (!v8)
  {
    v5 = +[NSBundle mainBundle];
    v8 = [(NSBundle *)v5 localizedStringForKey:location[0] value:&stru_100018B80 table:@"SoftwareUpdateUIService"];
  }

  v4 = v8;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end