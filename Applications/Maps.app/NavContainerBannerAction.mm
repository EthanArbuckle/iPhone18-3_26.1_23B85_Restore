@interface NavContainerBannerAction
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NavContainerBannerAction

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  title = [(NavContainerBannerAction *)self title];
  [v4 setTitle:title];

  [v4 setHidden:{-[NavContainerBannerAction hidden](self, "hidden")}];
  actionHandler = [(NavContainerBannerAction *)self actionHandler];
  [v4 setActionHandler:actionHandler];

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NavContainerBannerAction;
  v3 = [(NavContainerBannerAction *)&v7 description];
  title = [(NavContainerBannerAction *)self title];
  v5 = [NSString stringWithFormat:@"%@ title: %@ hidden: %d", v3, title, [(NavContainerBannerAction *)self hidden]];

  return v5;
}

@end