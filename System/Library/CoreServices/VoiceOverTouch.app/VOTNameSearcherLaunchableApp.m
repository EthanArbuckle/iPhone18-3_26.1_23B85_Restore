@interface VOTNameSearcherLaunchableApp
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (VOTNameSearcherLaunchableApp)initWithName:(id)a3 value:(id)a4 displayID:(id)a5;
- (void)select;
@end

@implementation VOTNameSearcherLaunchableApp

- (VOTNameSearcherLaunchableApp)initWithName:(id)a3 value:(id)a4 displayID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = VOTNameSearcherLaunchableApp;
  v11 = [(VOTNameSearcherLaunchableApp *)&v14 init];
  if (v11)
  {
    if (qword_1001FEBE8 != -1)
    {
      sub_100129D84();
    }

    v12 = [v8 stringByTrimmingCharactersInSet:qword_1001FEBE0];
    [(VOTNameSearcherLaunchableApp *)v11 setName:v12];

    [(VOTNameSearcherLaunchableApp *)v11 setValue:v9];
    [(VOTNameSearcherLaunchableApp *)v11 setDisplayID:v10];
  }

  return v11;
}

- (void)select
{
  v3 = +[VOTElement springBoardApplication];
  v4 = [(VOTNameSearcherLaunchableApp *)self displayID];
  [v3 launchAppWithDisplayID:v4];

  v5 = [VOTSharedWorkspace elementManager];
  [v5 deactivateGesturedTextInputIfNeeded:0];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 displayID];
    v6 = [(VOTNameSearcherLaunchableApp *)self displayID];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  v3 = [(VOTNameSearcherLaunchableApp *)self name];
  v4 = [(VOTNameSearcherLaunchableApp *)self displayID];
  v5 = [NSString stringWithFormat:@"%@ : %@", v3, v4];

  return v5;
}

@end