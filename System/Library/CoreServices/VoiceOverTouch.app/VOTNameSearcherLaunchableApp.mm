@interface VOTNameSearcherLaunchableApp
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (VOTNameSearcherLaunchableApp)initWithName:(id)name value:(id)value displayID:(id)d;
- (void)select;
@end

@implementation VOTNameSearcherLaunchableApp

- (VOTNameSearcherLaunchableApp)initWithName:(id)name value:(id)value displayID:(id)d
{
  nameCopy = name;
  valueCopy = value;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = VOTNameSearcherLaunchableApp;
  v11 = [(VOTNameSearcherLaunchableApp *)&v14 init];
  if (v11)
  {
    if (qword_1001FEBE8 != -1)
    {
      sub_100129D84();
    }

    v12 = [nameCopy stringByTrimmingCharactersInSet:qword_1001FEBE0];
    [(VOTNameSearcherLaunchableApp *)v11 setName:v12];

    [(VOTNameSearcherLaunchableApp *)v11 setValue:valueCopy];
    [(VOTNameSearcherLaunchableApp *)v11 setDisplayID:dCopy];
  }

  return v11;
}

- (void)select
{
  v3 = +[VOTElement springBoardApplication];
  displayID = [(VOTNameSearcherLaunchableApp *)self displayID];
  [v3 launchAppWithDisplayID:displayID];

  elementManager = [VOTSharedWorkspace elementManager];
  [elementManager deactivateGesturedTextInputIfNeeded:0];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    displayID = [equalCopy displayID];
    displayID2 = [(VOTNameSearcherLaunchableApp *)self displayID];
    v7 = [displayID isEqual:displayID2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  name = [(VOTNameSearcherLaunchableApp *)self name];
  displayID = [(VOTNameSearcherLaunchableApp *)self displayID];
  v5 = [NSString stringWithFormat:@"%@ : %@", name, displayID];

  return v5;
}

@end