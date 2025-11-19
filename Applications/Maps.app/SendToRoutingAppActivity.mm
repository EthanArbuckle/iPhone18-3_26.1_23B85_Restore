@interface SendToRoutingAppActivity
- (id)activityImage;
- (id)activityTitle;
@end

@implementation SendToRoutingAppActivity

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Routing Apps [Share sheet]" value:@"localized string not found" table:0];

  return v3;
}

- (id)activityImage
{
  v2 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:20.0];
  v3 = [UIImage _systemImageNamed:@"appstore" withConfiguration:v2];

  return v3;
}

@end