@interface ADPreferredMediaUserInfo
- (ADPreferredMediaUserInfo)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation ADPreferredMediaUserInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ADPreferredMediaUserInfo);
  v5 = [(NSString *)self->_preferredMediaUserSharedUserID copy];
  [(ADPreferredMediaUserInfo *)v4 setPreferredMediaUserSharedUserID:v5];

  v6 = [(NSString *)self->_preferredMediaUserHomeUserID copy];
  [(ADPreferredMediaUserInfo *)v4 setPreferredMediaUserHomeUserID:v6];

  return v4;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v7.receiver = self;
  v7.super_class = ADPreferredMediaUserInfo;
  v4 = [(ADPreferredMediaUserInfo *)&v7 description];
  v5 = [v3 initWithFormat:@"%@, preferredMediaUserSharedUserID: %@, preferredMediaUserHomeUserID: %@", v4, self->_preferredMediaUserSharedUserID, self->_preferredMediaUserHomeUserID];

  return v5;
}

- (ADPreferredMediaUserInfo)init
{
  v3.receiver = self;
  v3.super_class = ADPreferredMediaUserInfo;
  return [(ADPreferredMediaUserInfo *)&v3 init];
}

@end