@interface _ATXDistributedNotification
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualTo_ATXDistributedNotification:(id)notification;
- (_ATXDistributedNotification)initWithName:(id)name userInfo:(id)info;
- (unint64_t)hash;
@end

@implementation _ATXDistributedNotification

- (_ATXDistributedNotification)initWithName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  v16.receiver = self;
  v16.super_class = _ATXDistributedNotification;
  v8 = [(_ATXDistributedNotification *)&v16 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [infoCopy copy];
    userInfo = v8->_userInfo;
    v8->_userInfo = v11;

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v8->_timestamp = v13;
    v14 = v8;
  }

  return v8;
}

- (unint64_t)hash
{
  name = [(_ATXDistributedNotification *)self name];
  v4 = [name hash];

  userInfo = [(_ATXDistributedNotification *)self userInfo];
  v6 = [userInfo hash] - v4 + 32 * v4;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_ATXDistributedNotification *)self isEqualTo_ATXDistributedNotification:v5];
  }

  return v6;
}

- (BOOL)isEqualTo_ATXDistributedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = self->_name;
  v6 = v5;
  if (v5 == notificationCopy[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_userInfo;
  v10 = v9;
  if (v9 == notificationCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSDictionary *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

@end