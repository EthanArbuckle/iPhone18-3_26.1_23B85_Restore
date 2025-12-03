@interface COSSoftwareUpdateBetaUpdateContoller
- (id)_specifierForBetaProgram:(id)program rowIdentifier:(id)identifier;
- (id)appleIDSpecifier;
- (id)specifiers;
- (void)addFooter;
- (void)betaUpdatesAppleIDTapped:(id)tapped;
- (void)loadView;
- (void)postFailedToSetBetaUpdateAlert;
- (void)setupProgramListSpecifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)willEnterForeground:(id)foreground;
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

- (void)willEnterForeground:(id)foreground
{
  v4 = pbb_setup_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[COSSoftwareUpdateBetaUpdateContoller willEnterForeground:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  updateController = [(COSSoftwareUpdateBetaUpdateContoller *)self updateController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10012F548;
  v6[3] = &unk_100269800;
  v6[4] = self;
  [updateController loadBetaUpdatesWithCompletion:v6];
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
    appleIDSpecifier = [(COSSoftwareUpdateBetaUpdateContoller *)self appleIDSpecifier];
    [v6 addObject:appleIDSpecifier];

    v11 = [NSArray arrayWithArray:v6];
    v12 = *&self->BPSListController_opaque[v2];
    *&self->BPSListController_opaque[v2] = v11;

    v4 = *&self->BPSListController_opaque[v2];
  }

  return v4;
}

- (id)appleIDSpecifier
{
  updateController = [(COSSoftwareUpdateBetaUpdateContoller *)self updateController];
  betaUpdatesAppleID = [updateController betaUpdatesAppleID];

  v5 = +[NSBundle mainBundle];
  if (betaUpdatesAppleID)
  {
    v6 = [v5 localizedStringForKey:@"BETA_UPDATES_APPLE_ID_PREFIX" value:&stru_10026E598 table:@"Software Update"];
    v7 = [NSString stringWithFormat:v6, betaUpdatesAppleID];
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

- (void)betaUpdatesAppleIDTapped:(id)tapped
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
  updateController = [(COSSoftwareUpdateBetaUpdateContoller *)self updateController];
  availableBetaPrograms = [updateController availableBetaPrograms];

  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [availableBetaPrograms count] + 2);
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"AUTOMATIC_UPDATES_DISABLED" value:&stru_10026E598 table:@"Software Update"];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:3 edit:0];

  v9 = v5;
  [v5 addObject:v8];
  [v8 setProperty:@"BETA_UPDATES_OFF_IDENTIFIER" forKey:PSIDKey];
  updateController2 = [(COSSoftwareUpdateBetaUpdateContoller *)self updateController];
  enrolledBetaProgram = [updateController2 enrolledBetaProgram];

  v28 = v8;
  if (enrolledBetaProgram)
  {
    v12 = [availableBetaPrograms valueForKey:@"programID"];
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [enrolledBetaProgram programID]);
    v14 = [v12 containsObject:v13];

    if ((v14 & 1) == 0)
    {
      sub_10018C5FC(self, enrolledBetaProgram, v9);
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
  obj = availableBetaPrograms;
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
        programID = [enrolledBetaProgram programID];
        programID2 = [v20 programID];
        v23 = [(COSSoftwareUpdateBetaUpdateContoller *)self _specifierForBetaProgram:v20 rowIdentifier:0];
        if (programID == programID2)
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

- (id)_specifierForBetaProgram:(id)program rowIdentifier:(id)identifier
{
  programCopy = program;
  identifierCopy = identifier;
  title = [programCopy title];
  v9 = [PSSpecifier preferenceSpecifierNamed:title target:self set:0 get:0 detail:0 cell:3 edit:0];

  if (identifierCopy)
  {
    [v9 setProperty:identifierCopy forKey:PSIDKey];
  }

  else
  {
    v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [programCopy programID]);
    stringValue = [v10 stringValue];

    [v9 setUserInfo:programCopy];
    [v9 setProperty:stringValue forKey:PSIDKey];
  }

  [v9 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = COSSoftwareUpdateBetaUpdateContoller;
  pathCopy = path;
  [(COSSoftwareUpdateBetaUpdateContoller *)&v13 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(COSSoftwareUpdateBetaUpdateContoller *)self specifierAtIndexPath:pathCopy];

  v8 = [v7 propertyForKey:PSIDKey];
  if ([v8 isEqualToString:@"BETA_UPDATES_OFF_IDENTIFIER"])
  {
    sub_10018C858(self, &v12, v7);
  }

  else
  {
    userInfo = [v7 userInfo];
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