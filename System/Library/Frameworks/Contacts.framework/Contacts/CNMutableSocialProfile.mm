@interface CNMutableSocialProfile
- (id)copyWithZone:(_NSZone *)zone;
- (id)freeze;
@end

@implementation CNMutableSocialProfile

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CNSocialProfile alloc];
  urlString = [(CNSocialProfile *)self urlString];
  username = [(CNSocialProfile *)self username];
  userIdentifier = [(CNSocialProfile *)self userIdentifier];
  service = [(CNSocialProfile *)self service];
  displayname = [(CNSocialProfile *)self displayname];
  teamIdentifier = [(CNSocialProfile *)self teamIdentifier];
  bundleIdentifiers = [(CNSocialProfile *)self bundleIdentifiers];
  v12 = [(CNSocialProfile *)v4 initWithUrlString:urlString username:username userIdentifier:userIdentifier service:service displayname:displayname teamIdentifier:teamIdentifier bundleIdentifiers:bundleIdentifiers];

  return v12;
}

- (id)freeze
{
  v3 = objc_opt_class();
  object_setClass(self, v3);

  return self;
}

@end