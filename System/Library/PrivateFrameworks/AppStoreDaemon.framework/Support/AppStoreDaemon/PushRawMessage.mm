@interface PushRawMessage
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation PushRawMessage

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      if (self)
      {
        if (self->_topic == v5->_topic && ((timestamp = self->_timestamp, timestamp == v6->_timestamp) || [(NSDate *)timestamp isEqual:?]))
        {
          userInfo = self->_userInfo;
          if (userInfo == v6->_userInfo)
          {
            LOBYTE(self) = 1;
          }

          else
          {
            LOBYTE(self) = [(NSDictionary *)userInfo isEqual:?];
          }
        }

        else
        {
          LOBYTE(self) = 0;
        }
      }
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (id)description
{
  v3 = [(NSDictionary *)self->_userInfo mutableCopy];
  if (!+[NSJSONSerialization isValidJSONObject:](NSJSONSerialization, "isValidJSONObject:", v3) || (+[NSJSONSerialization dataWithJSONObject:options:error:](NSJSONSerialization, "dataWithJSONObject:options:error:", v3, 0, 0), (v4 = objc_claimAutoreleasedReturnValue()) == 0) || (v5 = v4, v6 = [[NSString alloc] initWithData:v4 encoding:4], v5, !v6))
  {
    v6 = [v3 description];
  }

  v7 = self->_topic - 1;
  if (v7 > 2)
  {
    v8 = @"Invalid";
  }

  else
  {
    v8 = off_1005242A8[v7];
  }

  v9 = [NSString stringWithFormat:@"(%@) %@: %@", v8, self->_timestamp, v6];

  return v9;
}

@end