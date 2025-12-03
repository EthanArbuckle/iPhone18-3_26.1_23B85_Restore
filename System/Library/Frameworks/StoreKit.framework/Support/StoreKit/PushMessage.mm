@interface PushMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMessage:(id)message;
- (NSNumber)accountID;
- (PushMessage)initWithMessage:(id)message;
- (id)description;
- (id)getRevokedProductsMap;
- (id)valueForUserInfoKey:(id)key;
- (unint64_t)actionType;
- (unint64_t)hash;
@end

@implementation PushMessage

- (PushMessage)initWithMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = PushMessage;
  v6 = [(PushMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
  }

  return v7;
}

- (NSNumber)accountID
{
  userInfo = [(APSIncomingMessage *)self->_message userInfo];
  v3 = [userInfo tcr_numberForKey:@"0"];

  return v3;
}

- (unint64_t)actionType
{
  userInfo = [(APSIncomingMessage *)self->_message userInfo];
  v3 = [userInfo tcr_integerValueForKey:@"1" missingValue:-1];

  return v3;
}

- (BOOL)isEqualToMessage:(id)message
{
  message = self->_message;
  messageCopy = message;
  userInfo = [(APSIncomingMessage *)message userInfo];
  v6 = messageCopy[1];

  userInfo2 = [v6 userInfo];
  LOBYTE(v6) = [userInfo isEqualToDictionary:userInfo2];

  return v6;
}

- (id)valueForUserInfoKey:(id)key
{
  message = self->_message;
  keyCopy = key;
  userInfo = [(APSIncomingMessage *)message userInfo];
  v6 = [userInfo objectForKeyedSubscript:keyCopy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PushMessage *)self isEqualToMessage:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  userInfo = [(APSIncomingMessage *)self->_message userInfo];
  v3 = [userInfo hash];

  return v3;
}

- (id)description
{
  userInfo = [(APSIncomingMessage *)self->_message userInfo];
  v4 = [userInfo mutableCopy];

  v5 = [v4 objectForKeyedSubscript:@"0"];
  if (v5)
  {
    v6 = AMSHashIfNeeded();
    [v4 setObject:v6 forKeyedSubscript:@"0"];
  }

  if (!+[NSJSONSerialization isValidJSONObject:](NSJSONSerialization, "isValidJSONObject:", v4) || (+[NSJSONSerialization dataWithJSONObject:options:error:](NSJSONSerialization, "dataWithJSONObject:options:error:", v4, 0, 0), (v7 = objc_claimAutoreleasedReturnValue()) == 0) || (v8 = v7, v9 = [[NSString alloc] initWithData:v7 encoding:4], v8, !v9))
  {
    v9 = [v4 description];
  }

  timestamp = [(APSIncomingMessage *)self->_message timestamp];
  lib_loggableDate = [timestamp lib_loggableDate];
  v12 = [NSString stringWithFormat:@"%@: %@", lib_loggableDate, v9];

  return v12;
}

- (id)getRevokedProductsMap
{
  v2 = [(PushMessage *)self valueForUserInfoKey:@"inAppsByAppBundleId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_10006AE04;
    v16 = sub_10006AE14;
    v17 = objc_alloc_init(NSMutableDictionary);
    allKeys = [v3 allKeys];
    v5 = [NSArray arrayWithArray:allKeys];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006AE1C;
    v9[3] = &unk_100382CB8;
    v6 = v3;
    v10 = v6;
    v11 = &v12;
    [v5 enumerateObjectsUsingBlock:v9];
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end