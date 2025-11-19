@interface CNMutableSocialProfile
- (id)copyWithZone:(_NSZone *)a3;
- (id)freeze;
@end

@implementation CNMutableSocialProfile

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CNSocialProfile alloc];
  v5 = [(CNSocialProfile *)self urlString];
  v6 = [(CNSocialProfile *)self username];
  v7 = [(CNSocialProfile *)self userIdentifier];
  v8 = [(CNSocialProfile *)self service];
  v9 = [(CNSocialProfile *)self displayname];
  v10 = [(CNSocialProfile *)self teamIdentifier];
  v11 = [(CNSocialProfile *)self bundleIdentifiers];
  v12 = [(CNSocialProfile *)v4 initWithUrlString:v5 username:v6 userIdentifier:v7 service:v8 displayname:v9 teamIdentifier:v10 bundleIdentifiers:v11];

  return v12;
}

- (id)freeze
{
  v3 = objc_opt_class();
  object_setClass(self, v3);

  return self;
}

@end