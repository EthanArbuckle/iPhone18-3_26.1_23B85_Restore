@interface NavContainerBannerAction
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation NavContainerBannerAction

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(NavContainerBannerAction *)self title];
  [v4 setTitle:v5];

  [v4 setHidden:{-[NavContainerBannerAction hidden](self, "hidden")}];
  v6 = [(NavContainerBannerAction *)self actionHandler];
  [v4 setActionHandler:v6];

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NavContainerBannerAction;
  v3 = [(NavContainerBannerAction *)&v7 description];
  v4 = [(NavContainerBannerAction *)self title];
  v5 = [NSString stringWithFormat:@"%@ title: %@ hidden: %d", v3, v4, [(NavContainerBannerAction *)self hidden]];

  return v5;
}

@end