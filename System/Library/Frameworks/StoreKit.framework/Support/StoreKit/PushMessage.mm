@interface PushMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMessage:(id)a3;
- (NSNumber)accountID;
- (PushMessage)initWithMessage:(id)a3;
- (id)description;
- (id)getRevokedProductsMap;
- (id)valueForUserInfoKey:(id)a3;
- (unint64_t)actionType;
- (unint64_t)hash;
@end

@implementation PushMessage

- (PushMessage)initWithMessage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PushMessage;
  v6 = [(PushMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, a3);
  }

  return v7;
}

- (NSNumber)accountID
{
  v2 = [(APSIncomingMessage *)self->_message userInfo];
  v3 = [v2 tcr_numberForKey:@"0"];

  return v3;
}

- (unint64_t)actionType
{
  v2 = [(APSIncomingMessage *)self->_message userInfo];
  v3 = [v2 tcr_integerValueForKey:@"1" missingValue:-1];

  return v3;
}

- (BOOL)isEqualToMessage:(id)a3
{
  message = self->_message;
  v4 = a3;
  v5 = [(APSIncomingMessage *)message userInfo];
  v6 = v4[1];

  v7 = [v6 userInfo];
  LOBYTE(v6) = [v5 isEqualToDictionary:v7];

  return v6;
}

- (id)valueForUserInfoKey:(id)a3
{
  message = self->_message;
  v4 = a3;
  v5 = [(APSIncomingMessage *)message userInfo];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PushMessage *)self isEqualToMessage:v4];
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
  v2 = [(APSIncomingMessage *)self->_message userInfo];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = [(APSIncomingMessage *)self->_message userInfo];
  v4 = [v3 mutableCopy];

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

  v10 = [(APSIncomingMessage *)self->_message timestamp];
  v11 = [v10 lib_loggableDate];
  v12 = [NSString stringWithFormat:@"%@: %@", v11, v9];

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
    v4 = [v3 allKeys];
    v5 = [NSArray arrayWithArray:v4];

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