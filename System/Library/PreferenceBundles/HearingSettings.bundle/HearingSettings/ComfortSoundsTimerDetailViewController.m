@interface ComfortSoundsTimerDetailViewController
- (ComfortSoundsTimerDetailViewController)init;
- (id)datePickerForSpecifier:(id)a3;
- (id)durationPickerSpecifiers;
- (id)endIntervalPickerSpecifiers;
- (id)identifierForTimerOption:(unint64_t)a3;
- (id)localizedTimerOption:(unint64_t)a3;
- (id)specifiers;
- (id)timerDuration:(id)a3;
- (id)timerEnabled:(id)a3;
- (id)timerOnlyOnFirstSession:(id)a3;
- (void)datePickerChanged:(id)a3;
- (void)setTimerEnabled:(id)a3 specifier:(id)a4;
- (void)setTimerOnlyOnFirstSession:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateTimerOptionSpecifiers;
@end

@implementation ComfortSoundsTimerDetailViewController

- (ComfortSoundsTimerDetailViewController)init
{
  v14.receiver = self;
  v14.super_class = ComfortSoundsTimerDetailViewController;
  v2 = [(ComfortSoundsTimerDetailViewController *)&v14 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[HUComfortSoundsSettings sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_2B1BC;
    v11[3] = &unk_48918;
    objc_copyWeak(&v12, &location);
    [v3 registerUpdateBlock:v11 forRetrieveSelector:"timerOption" withListener:v2];

    v4 = +[HUComfortSoundsSettings sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_2B29C;
    v9[3] = &unk_48918;
    objc_copyWeak(&v10, &location);
    [v4 registerUpdateBlock:v9 forRetrieveSelector:"timerEnabled" withListener:v2];

    v5 = +[HUComfortSoundsSettings sharedInstance];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_2B384;
    v7[3] = &unk_48918;
    objc_copyWeak(&v8, &location);
    [v5 registerUpdateBlock:v7 forRetrieveSelector:"timerOnlyOnFirstSession" withListener:v2];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v36 = OBJC_IVAR___PSListController__specifiers;
    v4 = [objc_allocWithZone(NSMutableArray) init];
    v5 = comfortSoundsLocString();
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setTimerEnabled:specifier:" get:"timerEnabled:" detail:0 cell:6 edit:0];

    [v6 setIdentifier:@"CSTimerToggleSpecID"];
    v35 = v6;
    [v4 addObject:v6];
    v7 = +[PSSpecifier emptyGroupSpecifier];
    [v7 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v8 = v4;
    v37 = v7;
    [v4 addObject:v7];
    v9 = 0;
    v10 = PSRadioGroupCheckedSpecifierKey;
    v11 = 1;
    v12 = &__AXStringForVariables_ptr;
    do
    {
      v13 = v11;
      v14 = [(ComfortSoundsTimerDetailViewController *)self localizedTimerOption:v9];
      v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:3 edit:0];

      v16 = [NSNumber numberWithUnsignedInteger:v9];
      [v15 setUserInfo:v16];

      v17 = [(ComfortSoundsTimerDetailViewController *)self identifierForTimerOption:v9];
      [v15 setIdentifier:v17];

      v18 = v12;
      v19 = [v12[167] sharedInstance];
      v20 = [v19 timerOption];

      if (v20 == v9)
      {
        [v37 setProperty:v15 forKey:v10];
      }

      [v8 addObject:v15];

      v11 = 0;
      v9 = 1;
      v12 = v18;
    }

    while ((v13 & 1) != 0);
    v21 = +[PSSpecifier emptyGroupSpecifier];

    [v8 addObject:v21];
    v22 = [v18[167] sharedInstance];
    v23 = [v22 timerOption];

    if (v23)
    {
      v24 = [v12[167] sharedInstance];
      v25 = [v24 timerOption];

      if (v25 != &dword_0 + 1)
      {
LABEL_11:
        v28 = +[PSSpecifier emptyGroupSpecifier];

        v29 = comfortSoundsLocString();
        [v28 setProperty:v29 forKey:PSFooterTextGroupKey];

        [v8 addObject:v28];
        v30 = comfortSoundsLocString();
        v31 = [PSSpecifier preferenceSpecifierNamed:v30 target:self set:"setTimerOnlyOnFirstSession:specifier:" get:"timerOnlyOnFirstSession:" detail:0 cell:6 edit:0];

        [v31 setIdentifier:@"CSAlwaysToggleSpecID"];
        [v8 addObject:v31];
        v32 = [v8 copy];
        v33 = *&self->PSListController_opaque[v36];
        *&self->PSListController_opaque[v36] = v32;

        v3 = *&self->PSListController_opaque[v36];
        goto LABEL_12;
      }

      v26 = [(ComfortSoundsTimerDetailViewController *)self durationPickerSpecifiers];
    }

    else
    {
      v26 = [(ComfortSoundsTimerDetailViewController *)self endIntervalPickerSpecifiers];
    }

    v27 = v26;
    [v8 addObjectsFromArray:v26];

    goto LABEL_11;
  }

LABEL_12:

  return v3;
}

- (id)endIntervalPickerSpecifiers
{
  v3 = comfortSoundsLocString();
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:4 edit:0];

  [v4 setProperty:&__kCFBooleanTrue forKey:PSDatePickerInlineKey];
  +[PSDateTimePickerCell preferredHeight];
  v5 = [NSNumber numberWithDouble:?];
  [v4 setProperty:v5 forKey:PSTableCellHeightKey];

  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v4 setIdentifier:@"CSTimePickerSpecID"];
  v8 = v4;
  v6 = [NSArray arrayWithObjects:&v8 count:1];

  return v6;
}

- (id)durationPickerSpecifiers
{
  v3 = comfortSoundsLocString();
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:"timerDuration:" detail:0 cell:4 edit:0];

  [v4 setIdentifier:@"CSDurationLabelSpecID"];
  v5 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:0 get:0 detail:0 cell:4 edit:0];
  +[PSDateTimePickerCell preferredHeight];
  v6 = [NSNumber numberWithDouble:?];
  [v5 setProperty:v6 forKey:PSTableCellHeightKey];

  [v5 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v5 setIdentifier:@"CSDurationPickerSpecID"];
  v9[0] = v4;
  v9[1] = v5;
  v7 = [NSArray arrayWithObjects:v9 count:2];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12.receiver = self;
  v12.super_class = ComfortSoundsTimerDetailViewController;
  v6 = a4;
  [(ComfortSoundsTimerDetailViewController *)&v12 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(ComfortSoundsTimerDetailViewController *)self specifierAtIndexPath:v6, v12.receiver, v12.super_class];

  v8 = [v7 userInfo];

  if (v8)
  {
    v9 = [v7 userInfo];
    v10 = [v9 unsignedIntegerValue];

    v11 = +[HUComfortSoundsSettings sharedInstance];
    [v11 setTimerOption:v10];
  }
}

- (id)datePickerForSpecifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(UIDatePicker);
  v6 = [v4 identifier];
  v7 = [v6 isEqual:@"CSTimePickerSpecID"];

  if (v7)
  {
    [v5 setDatePickerMode:0];
    [v5 setPreferredDatePickerStyle:3];
    v8 = +[HUComfortSoundsSettings sharedInstance];
    [v8 timerEndInterval];
    v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v5 setDate:v9];
  }

  else
  {
    v10 = [v4 identifier];
    v11 = [v10 isEqual:@"CSDurationPickerSpecID"];

    if (v11)
    {
      [v5 setDatePickerMode:3];
      v12 = +[HUComfortSoundsSettings sharedInstance];
      [v12 timerDurationInSeconds];
      [v5 setCountDownDuration:?];

      [v5 _setAllowsZeroCountDownDuration:0];
    }
  }

  [v5 addTarget:self action:"datePickerChanged:" forControlEvents:4096];

  return v5;
}

- (void)datePickerChanged:(id)a3
{
  v10 = a3;
  v4 = +[HUComfortSoundsSettings sharedInstance];
  v5 = [v4 timerOption];

  if (v5 == &dword_0 + 1)
  {
    v9 = +[HUComfortSoundsSettings sharedInstance];
    [v10 countDownDuration];
    [v9 setTimerDurationInSeconds:?];

    [(ComfortSoundsTimerDetailViewController *)self reloadSpecifierID:@"CSDurationLabelSpecID"];
  }

  else
  {
    v6 = v10;
    if (v5)
    {
      goto LABEL_6;
    }

    v7 = +[HUComfortSoundsSettings sharedInstance];
    v8 = [v10 date];
    [v8 timeIntervalSinceReferenceDate];
    [v7 setTimerEndInterval:?];
  }

  v6 = v10;
LABEL_6:
}

- (id)localizedTimerOption:(unint64_t)a3
{
  if (a3 <= 1)
  {
    self = comfortSoundsLocString();
  }

  return self;
}

- (id)identifierForTimerOption:(unint64_t)a3
{
  if (a3)
  {
    return @"CSDurationOptionSpecID";
  }

  else
  {
    return @"CSIntervalOptionSpecID";
  }
}

- (void)setTimerEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[HUComfortSoundsSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setTimerEnabled:v5];
}

- (id)timerEnabled:(id)a3
{
  v3 = +[HUComfortSoundsSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 timerEnabled]);

  return v4;
}

- (id)timerDuration:(id)a3
{
  v3 = +[HUComfortSoundsSettings sharedInstance];
  [v3 timerDurationInSeconds];
  v4 = comfortSoundsDurationString();

  return v4;
}

- (void)setTimerOnlyOnFirstSession:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[HUComfortSoundsSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setTimerOnlyOnFirstSession:v5 ^ 1];
}

- (id)timerOnlyOnFirstSession:(id)a3
{
  v3 = +[HUComfortSoundsSettings sharedInstance];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 timerOnlyOnFirstSession] ^ 1);

  return v4;
}

- (void)updateTimerOptionSpecifiers
{
  v3 = [(ComfortSoundsTimerDetailViewController *)self identifierForTimerOption:0];
  v4 = [(ComfortSoundsTimerDetailViewController *)self cachedCellForSpecifierID:v3];
  v5 = +[HUComfortSoundsSettings sharedInstance];
  [v4 setChecked:{objc_msgSend(v5, "timerOption") == 0}];

  v6 = [(ComfortSoundsTimerDetailViewController *)self identifierForTimerOption:1];
  v7 = [(ComfortSoundsTimerDetailViewController *)self cachedCellForSpecifierID:v6];
  v8 = +[HUComfortSoundsSettings sharedInstance];
  [v7 setChecked:{objc_msgSend(v8, "timerOption") == &dword_0 + 1}];

  v9 = +[HUComfortSoundsSettings sharedInstance];
  if ([v9 timerOption])
  {
  }

  else
  {
    v10 = [(ComfortSoundsTimerDetailViewController *)self specifierForID:@"CSTimePickerSpecID"];

    if (!v10)
    {
      v12 = [(ComfortSoundsTimerDetailViewController *)self specifierForID:@"CSDurationLabelSpecID"];
      v18[0] = v12;
      v13 = [(ComfortSoundsTimerDetailViewController *)self specifierForID:@"CSDurationPickerSpecID"];
      v18[1] = v13;
      v14 = [NSArray arrayWithObjects:v18 count:2];
      v15 = [(ComfortSoundsTimerDetailViewController *)self endIntervalPickerSpecifiers];
      [(ComfortSoundsTimerDetailViewController *)self replaceContiguousSpecifiers:v14 withSpecifiers:v15 animated:1];

LABEL_11:
      return;
    }
  }

  v16 = +[HUComfortSoundsSettings sharedInstance];
  if ([v16 timerOption] == &dword_0 + 1)
  {
    v11 = [(ComfortSoundsTimerDetailViewController *)self specifierForID:@"CSDurationLabelSpecID"];

    if (v11)
    {
      return;
    }

    v12 = [(ComfortSoundsTimerDetailViewController *)self specifierForID:@"CSTimePickerSpecID"];
    v17 = v12;
    v13 = [NSArray arrayWithObjects:&v17 count:1];
    v14 = [(ComfortSoundsTimerDetailViewController *)self durationPickerSpecifiers];
    [(ComfortSoundsTimerDetailViewController *)self replaceContiguousSpecifiers:v13 withSpecifiers:v14 animated:1];
    goto LABEL_11;
  }
}

@end