@interface NCBSCityAbbreviationsListViewController
- (NCBSCityAbbreviationsListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_getCityAbbrev:(id)a3;
- (id)specifiers;
- (void)dealloc;
@end

@implementation NCBSCityAbbreviationsListViewController

- (NCBSCityAbbreviationsListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = NCBSCityAbbreviationsListViewController;
  v4 = [(NCBSCityAbbreviationsListViewController *)&v7 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"handleWorldCityListMutated:" name:@"NCBSWorldCityDisplayListChangedNotification" object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NCBSCityAbbreviationsListViewController;
  [(NCBSCityAbbreviationsListViewController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v13 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NCBSWorldCityDisplayListModel sharedInstance];
    v5 = [v4 count];
    v6 = [[NSMutableArray alloc] initWithCapacity:v5];
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v8 = [v4 cityDisplayNameForIndex:i];
        v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:"_getCityAbbrev:" detail:objc_opt_class() cell:2 edit:0];

        v10 = [NSNumber numberWithUnsignedInteger:i];
        [v9 setUserInfo:v10];

        [v6 insertObject:v9 atIndex:i];
      }
    }

    v11 = *&self->PSListController_opaque[v13];
    *&self->PSListController_opaque[v13] = v6;

    v3 = *&self->PSListController_opaque[v13];
  }

  return v3;
}

- (id)_getCityAbbrev:(id)a3
{
  v3 = a3;
  v4 = +[NCBSWorldCityDisplayListModel sharedInstance];
  v5 = [v3 userInfo];

  v6 = [v5 unsignedIntegerValue];
  v7 = [v4 cityDisplayAbbreviationForIndex:v6];

  return v7;
}

@end