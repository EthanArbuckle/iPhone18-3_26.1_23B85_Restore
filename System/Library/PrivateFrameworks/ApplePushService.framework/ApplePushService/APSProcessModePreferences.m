@interface APSProcessModePreferences
- (APSProcessModePreferences)initWithUser:(id)a3;
- (NSDictionary)defaultUserPersistentTopics;
- (NSDictionary)persistentTopics;
- (void)setDefaultUserPersistentTopics:(id)a3;
- (void)setPersistentTopics:(id)a3;
@end

@implementation APSProcessModePreferences

- (NSDictionary)persistentTopics
{
  v2 = sub_100004328(APSPersistentTopicsKey, [(APSUser *)self->_user isDefaultUser]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (APSProcessModePreferences)initWithUser:(id)a3
{
  v5.receiver = self;
  v5.super_class = APSProcessModePreferences;
  result = [(APSProcessModePreferences *)&v5 init];
  if (result)
  {
    result->_user = a3;
  }

  return result;
}

- (NSDictionary)defaultUserPersistentTopics
{
  v2 = sub_100004328(APSPersistentTopicsKey, 1);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDefaultUserPersistentTopics:(id)a3
{
  sub_100005394(APSPersistentTopicsKey, a3, 1);
  v4 = [(APSUser *)self->_user isDefaultUser];

  sub_1000054B8(v4);
}

- (void)setPersistentTopics:(id)a3
{
  v4 = APSPersistentTopicsKey;
  user = self->_user;
  v6 = a3;
  sub_100005394(v4, v6, [(APSUser *)user isDefaultUser]);

  v7 = [(APSUser *)self->_user isDefaultUser];

  sub_1000054B8(v7);
}

@end