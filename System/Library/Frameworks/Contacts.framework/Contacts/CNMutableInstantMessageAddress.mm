@interface CNMutableInstantMessageAddress
- (id)copyWithZone:(_NSZone *)zone;
- (id)freeze;
@end

@implementation CNMutableInstantMessageAddress

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CNInstantMessageAddress alloc];
  username = [(CNInstantMessageAddress *)self username];
  userIdentifier = [(CNInstantMessageAddress *)self userIdentifier];
  service = [(CNInstantMessageAddress *)self service];
  teamIdentifier = [(CNInstantMessageAddress *)self teamIdentifier];
  bundleIdentifiers = [(CNInstantMessageAddress *)self bundleIdentifiers];
  v10 = [(CNInstantMessageAddress *)v4 initWithUsername:username userIdentifier:userIdentifier service:service teamIdentifier:teamIdentifier bundleIdentifiers:bundleIdentifiers];

  return v10;
}

- (id)freeze
{
  v3 = objc_opt_class();
  object_setClass(self, v3);

  return self;
}

@end