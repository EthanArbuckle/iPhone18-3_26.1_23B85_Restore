@interface APSSystemTokenInfo
+ (id)systemTokenInfoFromData:(id)a3;
- (APSSystemTokenInfo)initWithCoder:(id)a3;
- (APSSystemTokenInfo)initWithDictionary:(id)a3;
- (APSSystemTokenInfo)initWithSystemToken:(id)a3 type:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)serializeSystemTokenInfo;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APSSystemTokenInfo

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(APSSystemTokenInfo *)self systemToken];
  [v3 setObject:v4 forKey:off_1001BC798[0]];

  v5 = [NSNumber numberWithInteger:[(APSSystemTokenInfo *)self tokenType]];
  [v3 setObject:v5 forKey:off_1001BC7A0];

  return v3;
}

- (APSSystemTokenInfo)initWithDictionary:(id)a3
{
  v4 = off_1001BC798[0];
  v5 = a3;
  v6 = [v5 objectForKey:v4];
  v7 = [v5 objectForKey:off_1001BC7A0];

  v8 = -[APSSystemTokenInfo initWithSystemToken:type:](self, "initWithSystemToken:type:", v6, [v7 integerValue]);
  return v8;
}

- (APSSystemTokenInfo)initWithSystemToken:(id)a3 type:(int64_t)a4
{
  v7 = a3;
  if (v7)
  {
    v12.receiver = self;
    v12.super_class = APSSystemTokenInfo;
    v8 = [(APSSystemTokenInfo *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_systemToken, a3);
      v9->_tokenType = a4;
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)serializeSystemTokenInfo
{
  v3 = +[APSLog courier];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(APSSystemTokenInfo *)self systemToken];
    v9 = 138412546;
    v10 = v4;
    v11 = 2048;
    v12 = [(APSSystemTokenInfo *)self tokenType];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "APSSystemTokenInfo Serializing system token info to store in keychain, token: %@, type: %ld", &v9, 0x16u);
  }

  v5 = [(APSSystemTokenInfo *)self dictionaryRepresentation];
  v6 = [v5 copy];

  v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];

  return v7;
}

+ (id)systemTokenInfoFromData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v4, v5, v6, objc_opt_class(), 0];
    v16 = 0;
    v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:v3 error:&v16];
    v9 = v16;

    if (v9)
    {
      v10 = +[APSLog courier];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to deserialize APSSystemTokenInfo, error: %@", buf, 0xCu);
      }
    }

    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = +[APSLog courier];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found APSSystemTokenInfo, returning deserialized token info", buf, 2u);
      }

      v12 = [[APSSystemTokenInfo alloc] initWithDictionary:v8];
    }

    else
    {
      v13 = +[APSLog courier];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Did not find APSSystemTokenInfo in keychain, token was stored as data directly: %@", buf, 0xCu);
      }

      v12 = [[APSSystemTokenInfo alloc] initWithSystemToken:v3 type:2];
    }

    v14 = v12;
  }

  else
  {
    v9 = +[APSLog courier];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "APSSystemTokenInfo no token info found in keychain", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(APSSystemTokenInfo *)self systemToken];
  [v4 encodeObject:v5 forKey:off_1001BC798[0]];

  v6 = [NSNumber numberWithInteger:[(APSSystemTokenInfo *)self tokenType]];
  [v4 encodeObject:v6 forKey:off_1001BC7A0];
}

- (APSSystemTokenInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:off_1001BC798[0]];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:off_1001BC7A0];

  v7 = [v6 integerValue];
  v8 = [(APSSystemTokenInfo *)self initWithSystemToken:v5 type:v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [APSSystemTokenInfo alloc];
  v5 = [(APSSystemTokenInfo *)self systemToken];
  v6 = [(APSSystemTokenInfo *)v4 initWithSystemToken:v5 type:[(APSSystemTokenInfo *)self tokenType]];

  return v6;
}

@end