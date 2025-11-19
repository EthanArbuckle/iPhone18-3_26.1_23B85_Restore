@interface APSAppTokenInfo
- (APSAppTokenInfo)initWithCoder:(id)a3;
- (APSAppTokenInfo)initWithDictionary:(id)a3;
- (APSAppTokenInfo)initWithTopic:(id)a3 identifier:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)initUnextendedAppTokenWithTopic:(id)a3 identifier:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APSAppTokenInfo

- (id)initUnextendedAppTokenWithTopic:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = APSAppTokenInfo;
  v8 = [(APSAppTokenInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(APSAppTokenInfo *)v8 setTopic:v6];
    [(APSAppTokenInfo *)v9 setIdentifier:v7];
    [(APSAppTokenInfo *)v9 setIsUnextended:1];
  }

  return v9;
}

- (APSAppTokenInfo)initWithTopic:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = APSAppTokenInfo;
  v8 = [(APSAppTokenInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(APSAppTokenInfo *)v8 setTopic:v6];
    [(APSAppTokenInfo *)v9 setIdentifier:v7];
  }

  return v9;
}

- (APSAppTokenInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = APSAppTokenInfo;
  v5 = [(APSAppTokenInfo *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"APSAppTokenInfoTopic"];
    [(APSAppTokenInfo *)v5 setTopic:v6];

    v7 = [v4 objectForKey:@"APSAppTokenInfoIdentifier"];
    [(APSAppTokenInfo *)v5 setIdentifier:v7];

    v8 = [v4 objectForKey:@"APSAppTokenInfoBaseTokenKey"];

    if (v8)
    {
      v9 = [v4 objectForKey:@"APSAppTokenInfoBaseTokenKey"];
      [(APSAppTokenInfo *)v5 setBaseToken:v9];
    }

    v10 = [v4 objectForKey:@"APSAppTokenInfoExpirationDate"];

    if (v10)
    {
      v11 = MEMORY[0x1E695DF00];
      v12 = [v4 objectForKey:@"APSAppTokenInfoExpirationDate"];
      [v12 doubleValue];
      v13 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
      [(APSAppTokenInfo *)v5 setExpirationDate:v13];
    }

    v14 = [v4 objectForKey:@"APSAppTokenInfoIsUnextendedKey"];
    -[APSAppTokenInfo setIsUnextended:](v5, "setIsUnextended:", [v14 BOOLValue]);
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(APSAppTokenInfo *)self topic];
  [v3 setObject:v4 forKey:@"APSAppTokenInfoTopic"];

  v5 = [(APSAppTokenInfo *)self identifier];
  [v3 setObject:v5 forKey:@"APSAppTokenInfoIdentifier"];

  v6 = [(APSAppTokenInfo *)self baseToken];

  if (v6)
  {
    v7 = [(APSAppTokenInfo *)self baseToken];
    [v3 setObject:v7 forKey:@"APSAppTokenInfoBaseTokenKey"];
  }

  v8 = [(APSAppTokenInfo *)self expirationDate];

  if (v8)
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = [(APSAppTokenInfo *)self expirationDate];
    [v10 timeIntervalSinceReferenceDate];
    v11 = [v9 numberWithDouble:?];
    [v3 setObject:v11 forKey:@"APSAppTokenInfoExpirationDate"];
  }

  if ([(APSAppTokenInfo *)self isUnextended])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[APSAppTokenInfo isUnextended](self, "isUnextended")}];
    [v3 setObject:v12 forKey:@"APSAppTokenInfoIsUnextendedKey"];
  }

  v13 = [v3 copy];

  return v13;
}

- (unint64_t)hash
{
  v3 = [(APSAppTokenInfo *)self topic];
  v4 = [v3 hash];

  v5 = [(APSAppTokenInfo *)self identifier];

  if (v5)
  {
    v6 = [(APSAppTokenInfo *)self identifier];
    v4 ^= [v6 hash];
  }

  v7 = [(APSAppTokenInfo *)self expirationDate];

  if (v7)
  {
    v8 = [(APSAppTokenInfo *)self expirationDate];
    v4 ^= [v8 hash];
  }

  return v4 ^ [(APSAppTokenInfo *)self isUnextended];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_24;
  }

  v5 = v4;
  v6 = [(APSAppTokenInfo *)self topic];
  v7 = [v5 topic];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [(APSAppTokenInfo *)self identifier];
    if (v9 || ([v5 identifier], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = [(APSAppTokenInfo *)self identifier];
      v11 = [v5 identifier];
      v8 = [v10 isEqual:v11];

      if (v9)
      {

        if (!v8)
        {
          goto LABEL_18;
        }
      }

      else
      {

        if ((v8 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    v13 = [(APSAppTokenInfo *)self expirationDate];
    if (!v13)
    {
      v7 = [v5 expirationDate];
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    v14 = [(APSAppTokenInfo *)self expirationDate];
    v15 = [v5 expirationDate];
    v8 = [v14 isEqual:v15];

    if (v13)
    {

      if (!v8)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    if (v8)
    {
LABEL_16:
      v16 = [(APSAppTokenInfo *)self isUnextended];
      v8 = v16 ^ [v5 isUnextended] ^ 1;
      goto LABEL_18;
    }

LABEL_17:
    v8 = 0;
  }

LABEL_18:
  v17 = [(APSAppTokenInfo *)self baseToken];
  if (v17)
  {
    v18 = v17;
    v19 = [v5 baseToken];

    v12 = (v19 == 0) & v8;
    if (v19 && ((v8 ^ 1) & 1) == 0)
    {
      v20 = [(APSAppTokenInfo *)self baseToken];
      v21 = [v5 baseToken];
      v12 = [v20 isEqualToData:v21];
    }
  }

  else
  {
    v12 = v8;
  }

LABEL_24:
  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(APSAppTokenInfo *)self topic];
  v5 = [(APSAppTokenInfo *)self identifier];
  v6 = [(APSAppTokenInfo *)self expirationDate];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[APSAppTokenInfo type](self, "type")}];
  v8 = [(APSAppTokenInfo *)self baseToken];
  v9 = [v3 stringWithFormat:@"<APSAppTokenInfo %p>: Topic %@ Identifier %@ Expiration %@ type %@ base token %@", self, v4, v5, v6, v7, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(APSAppTokenInfo *)self topic];
  [v10 encodeObject:v4 forKey:@"APSAppTokenInfoTopic"];

  v5 = [(APSAppTokenInfo *)self identifier];
  [v10 encodeObject:v5 forKey:@"APSAppTokenInfoIdentifier"];

  v6 = [(APSAppTokenInfo *)self baseToken];

  if (v6)
  {
    v7 = [(APSAppTokenInfo *)self baseToken];
    [v10 encodeObject:v7 forKey:@"APSAppTokenInfoBaseTokenKey"];
  }

  v8 = [(APSAppTokenInfo *)self expirationDate];

  if (v8)
  {
    v9 = [(APSAppTokenInfo *)self expirationDate];
    [v10 encodeObject:v9 forKey:@"APSAppTokenInfoExpirationDate"];
  }

  [v10 encodeBool:-[APSAppTokenInfo isUnextended](self forKey:{"isUnextended"), @"APSAppTokenInfoIsUnextendedKey"}];
}

- (APSAppTokenInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = APSAppTokenInfo;
  v5 = [(APSAppTokenInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"APSAppTokenInfoTopic"];
    [(APSAppTokenInfo *)v5 setTopic:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"APSAppTokenInfoIdentifier"];
    [(APSAppTokenInfo *)v5 setIdentifier:v7];

    if ([v4 containsValueForKey:@"APSAppTokenInfoBaseTokenKey"])
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"APSAppTokenInfoBaseTokenKey"];
      [(APSAppTokenInfo *)v5 setBaseToken:v8];
    }

    if ([v4 containsValueForKey:@"APSAppTokenInfoExpirationDate"])
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"APSAppTokenInfoExpirationDate"];
      [(APSAppTokenInfo *)v5 setExpirationDate:v9];
    }

    -[APSAppTokenInfo setIsUnextended:](v5, "setIsUnextended:", [v4 decodeBoolForKey:@"APSAppTokenInfoIsUnextendedKey"]);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [APSAppTokenInfo alloc];
  v5 = [(APSAppTokenInfo *)self topic];
  v6 = [(APSAppTokenInfo *)self identifier];
  v7 = [(APSAppTokenInfo *)v4 initWithTopic:v5 identifier:v6];

  v8 = [(APSAppTokenInfo *)self expirationDate];
  [(APSAppTokenInfo *)v7 setExpirationDate:v8];

  [(APSAppTokenInfo *)v7 setIsUnextended:[(APSAppTokenInfo *)self isUnextended]];
  v9 = [(APSAppTokenInfo *)self baseToken];
  [(APSAppTokenInfo *)v7 setBaseToken:v9];

  return v7;
}

@end