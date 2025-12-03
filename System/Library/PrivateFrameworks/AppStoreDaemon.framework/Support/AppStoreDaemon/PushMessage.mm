@interface PushMessage
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation PushMessage

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = 0;
    if (self && (isKindOfClass & 1) != 0)
    {
      v6 = [(NSDictionary *)self->_userInfo isEqualToDictionary:equalCopy->_userInfo];
    }
  }

  return v6;
}

- (id)description
{
  v3 = [(NSDictionary *)self->_userInfo mutableCopy];
  v4 = [v3 objectForKeyedSubscript:@"0"];
  if (v4)
  {
    v5 = AMSHashIfNeeded();
    [v3 setObject:v5 forKeyedSubscript:@"0"];
  }

  if (!+[NSJSONSerialization isValidJSONObject:](NSJSONSerialization, "isValidJSONObject:", v3) || (+[NSJSONSerialization dataWithJSONObject:options:error:](NSJSONSerialization, "dataWithJSONObject:options:error:", v3, 0, 0), (v6 = objc_claimAutoreleasedReturnValue()) == 0) || (v7 = v6, v8 = [[NSString alloc] initWithData:v6 encoding:4], v7, !v8))
  {
    v8 = [v3 description];
  }

  v9 = [NSString stringWithFormat:@"%@: %@", self->_timestamp, v8];

  return v9;
}

@end