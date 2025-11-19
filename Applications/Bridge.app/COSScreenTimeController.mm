@interface COSScreenTimeController
- (id)labelText;
- (id)linkSubtext;
- (id)specifiers;
- (void)_openScreenTimeForFamilyMember:(id)a3;
- (void)_openScreenTimeForTinkerFamilyMember;
@end

@implementation COSScreenTimeController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [PSSpecifier groupSpecifierWithID:@"SCREENTIME_DESCRIPTION"];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"OPEN_SCREENTIME_LINK_TEXT" value:&stru_10026E598 table:@"ScreenTime"];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"SCREENTIME_DETAIL_TEXT" value:&stru_10026E598 table:@"ScreenTime"];

    v11 = [v10 rangeOfString:v8 options:5];
    v13 = v12;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v6 setProperty:v15 forKey:PSFooterCellClassGroupKey];

    [v6 setProperty:v10 forKey:PSFooterHyperlinkViewTitleKey];
    v22.location = v11;
    v22.length = v13;
    v16 = NSStringFromRange(v22);
    [v6 setProperty:v16 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v17 = [NSValue valueWithNonretainedObject:self];
    [v6 setProperty:v17 forKey:PSFooterHyperlinkViewTargetKey];

    v18 = NSStringFromSelector("linkTextTapped");
    [v6 setProperty:v18 forKey:PSFooterHyperlinkViewActionKey];

    [v5 insertObject:v6 atIndex:0];
    v19 = *&self->BPSListController_opaque[v3];
    *&self->BPSListController_opaque[v3] = v5;

    v4 = *&self->BPSListController_opaque[v3];
  }

  return v4;
}

- (id)labelText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SCREENTIME_DETAIL_TEXT" value:&stru_10026E598 table:@"ScreenTime"];

  return v3;
}

- (id)linkSubtext
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"OPEN_SCREENTIME_LINK_TEXT" value:&stru_10026E598 table:@"ScreenTime"];

  return v3;
}

- (void)_openScreenTimeForTinkerFamilyMember
{
  v3 = +[BPSTinkerSupport sharedInstance];
  v4 = [v3 cachedTinkerFamilyMemeber];

  if (v4)
  {
    v5 = pbb_accountsignin_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "[COSScreenTimeController _openScreenTimeForTinkerFamilyMember]";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Member: %@", buf, 0x16u);
    }

    [(COSScreenTimeController *)self _openScreenTimeForFamilyMember:v4];
  }

  else
  {
    v6 = +[BPSTinkerSupport sharedInstance];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100057268;
    v7[3] = &unk_100269680;
    v7[4] = self;
    [v6 getActiveTinkerFamilyMemberWithCompletion:v7];
  }
}

- (void)_openScreenTimeForFamilyMember:(id)a3
{
  v3 = a3;
  v4 = [NSString alloc];
  v5 = [v3 dsid];
  v6 = [v4 initWithFormat:@"prefs:root=SCREEN_TIME&path=CHILD_%@", v5];

  v7 = [NSURL URLWithString:v6];
  v8 = pbb_accountsignin_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "[COSScreenTimeController _openScreenTimeForFamilyMember:]";
    v11 = 2114;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Opening URL %{public}@ for familyMember %@", buf, 0x20u);
  }

  BPSOpenSensitiveURLAsync();
}

@end