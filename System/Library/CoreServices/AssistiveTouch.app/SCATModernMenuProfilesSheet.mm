@interface SCATModernMenuProfilesSheet
- (SCATModernMenuProfilesSheet)initWithMenu:(id)menu;
- (id)makeMenuItemsIfNeeded;
- (void)menuItemWasActivated:(id)activated;
@end

@implementation SCATModernMenuProfilesSheet

- (SCATModernMenuProfilesSheet)initWithMenu:(id)menu
{
  v7.receiver = self;
  v7.super_class = SCATModernMenuProfilesSheet;
  v3 = [(SCATModernMenuSheet *)&v7 initWithMenu:menu];
  if (v3)
  {
    v4 = +[AXSettings sharedInstance];
    switchControlProfiles = [v4 switchControlProfiles];
    [(SCATModernMenuProfilesSheet *)v3 setProfiles:switchControlProfiles];
  }

  return v3;
}

- (id)makeMenuItemsIfNeeded
{
  profiles = [(SCATModernMenuProfilesSheet *)self profiles];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [profiles count]);

  v5 = +[NSMutableSet set];
  profiles2 = [(SCATModernMenuProfilesSheet *)self profiles];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000DCE7C;
  v12[3] = &unk_1001D74C0;
  v12[4] = self;
  v13 = v5;
  v7 = v4;
  v14 = v7;
  v8 = v5;
  [profiles2 enumerateObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

- (void)menuItemWasActivated:(id)activated
{
  activatedCopy = activated;
  identifier = [activatedCopy identifier];
  if ([identifier hasPrefix:@"profile_"])
  {
    identifier2 = [activatedCopy identifier];

    v7 = [identifier2 substringFromIndex:{objc_msgSend(@"profile_", "length")}];
    integerValue = [v7 integerValue];

    profiles = [(SCATModernMenuProfilesSheet *)self profiles];
    v10 = [profiles objectAtIndexedSubscript:integerValue];

    menu = [(SCATModernMenuSheet *)self menu];
    delegate = [menu delegate];
    menu2 = [(SCATModernMenuSheet *)self menu];
    [delegate menu:menu2 activateProfile:v10];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SCATModernMenuProfilesSheet;
    [(SCATModernMenuSheet *)&v14 menuItemWasActivated:activatedCopy];
  }
}

@end