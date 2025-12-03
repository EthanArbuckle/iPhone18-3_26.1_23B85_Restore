@interface APSProcessModePreferences
- (APSProcessModePreferences)initWithUser:(id)user;
- (NSDictionary)defaultUserPersistentTopics;
- (NSDictionary)persistentTopics;
- (void)setDefaultUserPersistentTopics:(id)topics;
- (void)setPersistentTopics:(id)topics;
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

- (APSProcessModePreferences)initWithUser:(id)user
{
  v5.receiver = self;
  v5.super_class = APSProcessModePreferences;
  result = [(APSProcessModePreferences *)&v5 init];
  if (result)
  {
    result->_user = user;
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

- (void)setDefaultUserPersistentTopics:(id)topics
{
  sub_100005394(APSPersistentTopicsKey, topics, 1);
  isDefaultUser = [(APSUser *)self->_user isDefaultUser];

  sub_1000054B8(isDefaultUser);
}

- (void)setPersistentTopics:(id)topics
{
  v4 = APSPersistentTopicsKey;
  user = self->_user;
  topicsCopy = topics;
  sub_100005394(v4, topicsCopy, [(APSUser *)user isDefaultUser]);

  isDefaultUser = [(APSUser *)self->_user isDefaultUser];

  sub_1000054B8(isDefaultUser);
}

@end