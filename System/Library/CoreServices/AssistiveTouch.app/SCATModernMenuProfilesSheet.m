@interface SCATModernMenuProfilesSheet
- (SCATModernMenuProfilesSheet)initWithMenu:(id)a3;
- (id)makeMenuItemsIfNeeded;
- (void)menuItemWasActivated:(id)a3;
@end

@implementation SCATModernMenuProfilesSheet

- (SCATModernMenuProfilesSheet)initWithMenu:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCATModernMenuProfilesSheet;
  v3 = [(SCATModernMenuSheet *)&v7 initWithMenu:a3];
  if (v3)
  {
    v4 = +[AXSettings sharedInstance];
    v5 = [v4 switchControlProfiles];
    [(SCATModernMenuProfilesSheet *)v3 setProfiles:v5];
  }

  return v3;
}

- (id)makeMenuItemsIfNeeded
{
  v3 = [(SCATModernMenuProfilesSheet *)self profiles];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);

  v5 = +[NSMutableSet set];
  v6 = [(SCATModernMenuProfilesSheet *)self profiles];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000DCE7C;
  v12[3] = &unk_1001D74C0;
  v12[4] = self;
  v13 = v5;
  v7 = v4;
  v14 = v7;
  v8 = v5;
  [v6 enumerateObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

- (void)menuItemWasActivated:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if ([v5 hasPrefix:@"profile_"])
  {
    v6 = [v4 identifier];

    v7 = [v6 substringFromIndex:{objc_msgSend(@"profile_", "length")}];
    v8 = [v7 integerValue];

    v9 = [(SCATModernMenuProfilesSheet *)self profiles];
    v10 = [v9 objectAtIndexedSubscript:v8];

    v11 = [(SCATModernMenuSheet *)self menu];
    v12 = [v11 delegate];
    v13 = [(SCATModernMenuSheet *)self menu];
    [v12 menu:v13 activateProfile:v10];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SCATModernMenuProfilesSheet;
    [(SCATModernMenuSheet *)&v14 menuItemWasActivated:v4];
  }
}

@end