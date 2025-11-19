@interface CNMutableInstantMessageAddress
- (id)copyWithZone:(_NSZone *)a3;
- (id)freeze;
@end

@implementation CNMutableInstantMessageAddress

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CNInstantMessageAddress alloc];
  v5 = [(CNInstantMessageAddress *)self username];
  v6 = [(CNInstantMessageAddress *)self userIdentifier];
  v7 = [(CNInstantMessageAddress *)self service];
  v8 = [(CNInstantMessageAddress *)self teamIdentifier];
  v9 = [(CNInstantMessageAddress *)self bundleIdentifiers];
  v10 = [(CNInstantMessageAddress *)v4 initWithUsername:v5 userIdentifier:v6 service:v7 teamIdentifier:v8 bundleIdentifiers:v9];

  return v10;
}

- (id)freeze
{
  v3 = objc_opt_class();
  object_setClass(self, v3);

  return self;
}

@end