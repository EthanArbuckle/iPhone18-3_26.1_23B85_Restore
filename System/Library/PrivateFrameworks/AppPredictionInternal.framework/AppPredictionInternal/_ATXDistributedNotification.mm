@interface _ATXDistributedNotification
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualTo_ATXDistributedNotification:(id)a3;
- (_ATXDistributedNotification)initWithName:(id)a3 userInfo:(id)a4;
- (unint64_t)hash;
@end

@implementation _ATXDistributedNotification

- (_ATXDistributedNotification)initWithName:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = _ATXDistributedNotification;
  v8 = [(_ATXDistributedNotification *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
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
  v3 = [(_ATXDistributedNotification *)self name];
  v4 = [v3 hash];

  v5 = [(_ATXDistributedNotification *)self userInfo];
  v6 = [v5 hash] - v4 + 32 * v4;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_ATXDistributedNotification *)self isEqualTo_ATXDistributedNotification:v5];
  }

  return v6;
}

- (BOOL)isEqualTo_ATXDistributedNotification:(id)a3
{
  v4 = a3;
  v5 = self->_name;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v9 == v4[2])
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