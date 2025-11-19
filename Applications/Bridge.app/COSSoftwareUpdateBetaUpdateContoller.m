@interface COSSoftwareUpdateBetaUpdateContoller
- (id)_specifierForBetaProgram:(id)a3 rowIdentifier:(id)a4;
- (id)appleIDSpecifier;
- (id)specifiers;
- (void)addFooter;
- (void)betaUpdatesAppleIDTapped:(id)a3;
- (void)loadView;
- (void)postFailedToSetBetaUpdateAlert;
- (void)setupProgramListSpecifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)willEnterForeground:(id)a3;
@end

@implementation COSSoftwareUpdateBetaUpdateContoller

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = COSSoftwareUpdateBetaUpdateContoller;
  [(COSSoftwareUpdateBetaUpdateContoller *)&v4 loadView];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"willEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (void)willEnterForeground:(id)a3
{
  v4 = pbb_setup_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[COSSoftwareUpdateBetaUpdateContoller willEnterForeground:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v5 = [(COSSoftwareUpdateBetaUpdateContoller *)self updateController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10012F548;
  v6[3] = &unk_100269800;
  v6[4] = self;
  [v5 loadBetaUpdatesWithCompletion:v6];
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = objc_opt_new();
    v7 = [PSSpecifier groupSpecifierWithID:@"BETA_UPDATES_DETAIL_GROUP"];
    betaUpdatesGroup = self->_betaUpdatesGroup;
    self->_betaUpdatesGroup = v7;

    [(PSSpecifier *)self->_betaUpdatesGroup setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [v6 addObject:self->_betaUpdatesGroup];
    [(COSSoftwareUpdateBetaUpdateContoller *)self addFooter];
    [(COSSoftwareUpdateBetaUpdateContoller *)self setupProgramListSpecifiers];
    [v6 addObjectsFromArray:self->_programsList];
    v9 = [PSSpecifier groupSpecifierWithID:@"BETA_UPDATES_APPLEID_GROUP"];
    [v6 addObject:v9];
    v10 = [(COSSoftwareUpdateBetaUpdateContoller *)self appleIDSpecifier];
    [v6 addObject:v10];

    v11 = [NSArray arrayWithArray:v6];
    v12 = *&self->BPSListController_opaque[v2];
    *&self->BPSListController_opaque[v2] = v11;

    v4 = *&self->BPSListController_opaque[v2];
  }

  return v4;
}

- (id)appleIDSpecifier
{
  v3 = [(COSSoftwareUpdateBetaUpdateContoller *)self updateController];
  v4 = [v3 betaUpdatesAppleID];

  v5 = +[NSBundle mainBundle];
  if (v4)
  {
    v6 = [v5 localizedStringForKey:@"BETA_UPDATES_APPLE_ID_PREFIX" value:&stru_10026E598 table:@"Software Update"];
    v7 = [NSString stringWithFormat:v6, v4];
  }

  else
  {
    v7 = [v5 localizedStringForKey:@"BETA_UPDATES_APPLE_ID_PROMPT" value:&stru_10026E598 table:@"Software Update"];
  }

  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v8 setProperty:@"BetaEnrollementAppleIDKey" forKey:PSIDKey];
  [v8 setButtonAction:"betaUpdatesAppleIDTapped:"];

  return v8;
}

- (void)betaUpdatesAppleIDTapped:(id)a3
{
  v3 = [NSURL URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK/SUBetaUpdatesButton"];
  BPSOpenSensitiveURLAsync();
}

- (void)addFooter
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"BETA_UPDATES_FOOTER" value:&stru_10026E598 table:@"Software Update"];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"LEARN_MORE_LINK" value:&stru_10026E598 table:@"Software Update"];
  v19 = [NSString stringWithFormat:v4, v6];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"LEARN_MORE_LINK" value:&stru_10026E598 table:@"Software Update"];
  v9 = [v19 rangeOfString:v8];
  v11 = v10;

  if (self)
  {
    v12 = self->_betaUpdatesGroup;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [(PSSpecifier *)v12 setProperty:v14 forKey:PSFooterCellClassGroupKey];

    betaUpdatesGroup = self->_betaUpdatesGroup;
  }

  else
  {
    sub_10018C548();
    betaUpdatesGroup = 0;
  }

  [(PSSpecifier *)betaUpdatesGroup setProperty:v19 forKey:PSFooterHyperlinkViewTitleKey];
  if (self)
  {
    v16 = self->_betaUpdatesGroup;
    v21.location = v9;
    v21.length = v11;
    v17 = NSStringFromRange(v21);
    [(PSSpecifier *)v16 setProperty:v17 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v18 = self->_betaUpdatesGroup;
  }

  else
  {
    v22.location = v9;
    v22.length = v11;
    sub_10018C5A8(v22);
    v18 = 0;
  }

  [(PSSpecifier *)v18 setProperty:@"https://beta.apple.com/" forKey:PSFooterHyperlinkViewURLKey];
}

- (void)setupProgramListSpecifiers
{
  v3 = [(COSSoftwareUpdateBetaUpdateContoller *)self updateController];
  v4 = [v3 availableBetaPrograms];

  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count] + 2);
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"AUTOMATIC_UPDATES_DISABLED" value:&stru_10026E598 table:@"Software Update"];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:3 edit:0];

  v9 = v5;
  [v5 addObject:v8];
  [v8 setProperty:@"BETA_UPDATES_OFF_IDENTIFIER" forKey:PSIDKey];
  v10 = [(COSSoftwareUpdateBetaUpdateContoller *)self updateController];
  v11 = [v10 enrolledBetaProgram];

  v28 = v8;
  if (v11)
  {
    v12 = [v4 valueForKey:@"programID"];
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 programID]);
    v14 = [v12 containsObject:v13];

    if ((v14 & 1) == 0)
    {
      sub_10018C5FC(self, v11, v9);
    }
  }

  else
  {
    sub_10018C6C8(self, v8);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
  v15 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    v18 = PSRadioGroupCheckedSpecifierKey;
    do
    {
      v19 = 0;
      do
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v30 + 1) + 8 * v19);
        v21 = [v11 programID];
        v22 = [v20 programID];
        v23 = [(COSSoftwareUpdateBetaUpdateContoller *)self _specifierForBetaProgram:v20 rowIdentifier:0];
        if (v21 == v22)
        {
          if (self)
          {
            betaUpdatesGroup = self->_betaUpdatesGroup;
          }

          else
          {
            betaUpdatesGroup = 0;
          }

          [(PSSpecifier *)betaUpdatesGroup setProperty:v23 forKey:v18];
        }

        [v9 addObject:v23];

        v19 = v19 + 1;
      }

      while (v16 != v19);
      v25 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      v16 = v25;
    }

    while (v25);
  }

  v26 = v9;
  v27 = [NSArray arrayWithArray:v9];
  sub_10018C534(self, v27);
}

- (id)_specifierForBetaProgram:(id)a3 rowIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 title];
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];

  if (v7)
  {
    [v9 setProperty:v7 forKey:PSIDKey];
  }

  else
  {
    v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 programID]);
    v11 = [v10 stringValue];

    [v9 setUserInfo:v6];
    [v9 setProperty:v11 forKey:PSIDKey];
  }

  [v9 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13.receiver = self;
  v13.super_class = COSSoftwareUpdateBetaUpdateContoller;
  v6 = a4;
  [(COSSoftwareUpdateBetaUpdateContoller *)&v13 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(COSSoftwareUpdateBetaUpdateContoller *)self specifierAtIndexPath:v6];

  v8 = [v7 propertyForKey:PSIDKey];
  if ([v8 isEqualToString:@"BETA_UPDATES_OFF_IDENTIFIER"])
  {
    sub_10018C858(self, &v12, v7);
  }

  else
  {
    v9 = [v7 userInfo];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v8 isEqualToString:@"BETA_PROGRAMS_UNAVAILABLE_PROGRAM"];

      if ((v10 & 1) == 0)
      {
        sub_10018C6EC(v7, self, &v11);
      }
    }

    else
    {
    }
  }
}

- (void)postFailedToSetBetaUpdateAlert
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"BETA_UPDATES_FAILED_TITLE" value:&stru_10026E598 table:@"Software Update"];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"BETA_UPDATES_FAILED_MESSAGE" value:&stru_10026E598 table:@"Software Update"];
  v7 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Software Update"];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100130550;
  v13[3] = &unk_100268580;
  v13[4] = self;
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:v13];
  [v7 addAction:v10];

  v11 = pbb_bridge_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Presenting 'set beta failed' alert", v12, 2u);
  }

  [(COSSoftwareUpdateBetaUpdateContoller *)self presentViewController:v7 animated:1 completion:0];
}

@end