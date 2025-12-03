@interface RAPMainIncidentQuestion
+ (id)localizedHeaderText;
- (id)localizedTitle;
- (id)menuItems;
@end

@implementation RAPMainIncidentQuestion

- (id)menuItems
{
  menuItems = self->super.super._menuItems;
  if (!menuItems)
  {
    v4 = [NSMutableArray arrayWithCapacity:3];
    incidentMenuItems = [(RAPMainQuestion *)self incidentMenuItems];
    if ([incidentMenuItems count])
    {
      [v4 addObject:incidentMenuItems];
    }

    v6 = [v4 copy];
    v7 = self->super.super._menuItems;
    self->super.super._menuItems = v6;

    allMenuItems = self->super.super._allMenuItems;
    self->super.super._allMenuItems = 0;

    menuItems = self->super.super._menuItems;
  }

  return menuItems;
}

- (id)localizedTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Report an Incident [Title]" value:@"localized string not found" table:0];

  return v3;
}

+ (id)localizedHeaderText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Incident Type [Report a Problem prompt]" value:@"localized string not found" table:0];

  return v3;
}

@end