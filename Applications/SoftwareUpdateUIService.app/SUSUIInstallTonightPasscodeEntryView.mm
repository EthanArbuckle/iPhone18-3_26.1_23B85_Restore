@interface SUSUIInstallTonightPasscodeEntryView
- (SUSUIInstallTonightPasscodeEntryView)initWithFrame:(CGRect)frame;
- (id)_bodyTextToModelSpecificLocalizedKey:(id)key;
- (void)setDescriptor:(id)descriptor;
- (void)setInstallTonightForecast:(id)forecast;
- (void)updateStatusText;
@end

@implementation SUSUIInstallTonightPasscodeEntryView

- (SUSUIInstallTonightPasscodeEntryView)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = SUSUIInstallTonightPasscodeEntryView;
  v5 = [(SUSUIPasscodeEntryView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setInstallTonightForecast:(id)forecast
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, forecast);
  if (*(&selfCopy->super._dismissing + 1) != location[0])
  {
    objc_storeStrong((&selfCopy->super._dismissing + 1), location[0]);
    [(SUSUIInstallTonightPasscodeEntryView *)selfCopy updateStatusText];
  }

  objc_storeStrong(location, 0);
}

- (void)setDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  if (*(&selfCopy->_forecast + 1) != location[0])
  {
    objc_storeStrong((&selfCopy->_forecast + 1), location[0]);
    [(SUSUIInstallTonightPasscodeEntryView *)selfCopy updateStatusText];
  }

  objc_storeStrong(location, 0);
}

- (void)updateStatusText
{
  selfCopy = self;
  v32 = a2;
  isSplatOnly = [*(&self->_forecast + 1) isSplatOnly];
  v30 = *(&selfCopy->super._dismissing + 1);
  v27 = 0;
  v25 = 0;
  v23 = 0;
  v21 = 0;
  v19 = 0;
  v17 = 0;
  if (isSplatOnly)
  {
    _susui_cardinalityForRoundedStartTime = [v30 _susui_cardinalityForRoundedStartTime];
    v27 = 1;
    _susui_cardinalityForRoundedEndTime = [v30 _susui_cardinalityForRoundedEndTime];
    v25 = 1;
    v24 = [NSString stringWithFormat:@"RSR_PASSCODE_SUBTITLE_%@_TO_%@", _susui_cardinalityForRoundedStartTime, _susui_cardinalityForRoundedEndTime];
    v23 = 1;
    v2 = v24;
  }

  else
  {
    _susui_cardinalityForRoundedStartTime2 = [v30 _susui_cardinalityForRoundedStartTime];
    v21 = 1;
    _susui_cardinalityForRoundedEndTime2 = [v30 _susui_cardinalityForRoundedEndTime];
    v19 = 1;
    v18 = [NSString stringWithFormat:@"SOFTWARE_UPDATE_PASSCODE_SUBTITLE_%@_TO_%@", _susui_cardinalityForRoundedStartTime2, _susui_cardinalityForRoundedEndTime2];
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

  v6 = [(SUSUIInstallTonightPasscodeEntryView *)selfCopy _bodyTextToModelSpecificLocalizedKey:v29];
  _susui_formattedRoundedStartTimeString = [v30 _susui_formattedRoundedStartTimeString];
  _susui_formattedRoundedEndTimeString = [v30 _susui_formattedRoundedEndTimeString];
  location = [NSString stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@ %@" error:0, _susui_formattedRoundedStartTimeString, _susui_formattedRoundedEndTimeString];

  passcodeLockView = [(SUSUIPasscodeEntryView *)selfCopy passcodeLockView];
  v14 = 0;
  v12 = 0;
  v10 = 0;
  v8 = 0;
  if (isSplatOnly)
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

  [(SBUIPasscodeLockView *)passcodeLockView updateStatusText:v3 subtitle:location animated:0];
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

- (id)_bodyTextToModelSpecificLocalizedKey:(id)key
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
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