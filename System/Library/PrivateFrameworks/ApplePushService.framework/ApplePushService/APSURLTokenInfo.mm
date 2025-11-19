@interface APSURLTokenInfo
- (APSURLTokenInfo)initWithCoder:(id)a3;
- (APSURLTokenInfo)initWithDictionary:(id)a3;
- (APSURLTokenInfo)initWithTopic:(id)a3 vapidPublicKey:(id)a4 expirationDate:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APSURLTokenInfo

- (APSURLTokenInfo)initWithTopic:(id)a3 vapidPublicKey:(id)a4 expirationDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v16.receiver = self;
    v16.super_class = APSURLTokenInfo;
    v12 = [(APSURLTokenInfo *)&v16 init];
    p_isa = &v12->super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_topic, a3);
      objc_storeStrong(p_isa + 3, a4);
      objc_storeStrong(p_isa + 4, a5);
    }

    self = p_isa;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (APSURLTokenInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"t"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v4 objectForKeyedSubscript:@"vPK"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v13 = 0;
    }

    else
    {
      v7 = [v4 objectForKeyedSubscript:@"eD"];
      if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v13 = 0;
      }

      else
      {
        v8 = [v4 objectForKeyedSubscript:@"bT"];
        v16.receiver = self;
        v16.super_class = APSURLTokenInfo;
        v9 = [(APSURLTokenInfo *)&v16 init];
        v10 = v9;
        if (v9)
        {
          objc_storeStrong(&v9->_topic, v5);
          objc_storeStrong(&v10->_vapidPublicKey, v6);
          if (v7)
          {
            v11 = MEMORY[0x1E695DF00];
            [v7 doubleValue];
            v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
          }

          else
          {
            v12 = 0;
          }

          expirationDate = v10->_expirationDate;
          v10->_expirationDate = v12;

          objc_storeStrong(&v10->_baseToken, v8);
        }

        self = v10;

        v13 = self;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(APSURLTokenInfo *)self topic];
  [v3 setObject:v4 forKeyedSubscript:@"t"];

  v5 = [(APSURLTokenInfo *)self vapidPublicKey];
  [v3 setObject:v5 forKeyedSubscript:@"vPK"];

  v6 = [(APSURLTokenInfo *)self expirationDate];
  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [(APSURLTokenInfo *)self expirationDate];
    [v8 timeIntervalSinceReferenceDate];
    v9 = [v7 numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:@"eD"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"eD"];
  }

  v10 = [(APSURLTokenInfo *)self baseToken];
  [v3 setObject:v10 forKeyedSubscript:@"bT"];

  v11 = [v3 copy];

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(APSURLTokenInfo *)self topic];
  v5 = [(APSURLTokenInfo *)self vapidPublicKey];
  if (v5)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(APSURLTokenInfo *)self expirationDate];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[APSURLTokenInfo type](self, "type")}];
  v9 = [(APSURLTokenInfo *)self baseToken];
  v10 = [v3 stringWithFormat:@"<APSURLTokenInfo %p>: Topic: %@ VapidPublicKey: %@ Expiration: %@ Type: %@ Base Token: %@", self, v4, v6, v7, v8, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_25;
  }

  v7 = v6;
  v8 = [(APSURLTokenInfo *)self topic];
  v9 = [v7 topic];
  if ([v8 isEqualToString:v9])
  {
    v10 = [(APSURLTokenInfo *)self vapidPublicKey];
    if (v10 || ([v7 vapidPublicKey], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v3 = [(APSURLTokenInfo *)self vapidPublicKey];
      v4 = [v7 vapidPublicKey];
      if (([v3 isEqualToData:v4] & 1) == 0)
      {

        v13 = 0;
        goto LABEL_16;
      }

      v11 = 1;
    }

    else
    {
      v27 = 0;
      v11 = 0;
    }

    v25 = v4;
    v26 = v3;
    v14 = [(APSURLTokenInfo *)self expirationDate];
    if (v14 || ([v7 expirationDate], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v28 = v11;
      v15 = [(APSURLTokenInfo *)self expirationDate];
      v16 = [v7 expirationDate];
      v13 = [v15 isEqualToDate:v16];

      if (v14)
      {

        if (v28)
        {
LABEL_15:
        }

LABEL_16:
        if (!v10)
        {
        }

        goto LABEL_19;
      }

      LOBYTE(v11) = v28;
      v23 = v24;
    }

    else
    {
      v23 = 0;
      v13 = 1;
    }

    if ((v11 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v13 = 0;
LABEL_19:

  v17 = [(APSURLTokenInfo *)self baseToken];
  if (v17)
  {
    v18 = v17;
    v19 = [v7 baseToken];

    v12 = (v19 == 0) & v13;
    if (v19 && ((v13 ^ 1) & 1) == 0)
    {
      v20 = [(APSURLTokenInfo *)self baseToken];
      v21 = [v7 baseToken];
      v12 = [v20 isEqualToData:v21];
    }
  }

  else
  {
    v12 = v13;
  }

LABEL_25:
  return v12;
}

- (unint64_t)hash
{
  v3 = [(APSURLTokenInfo *)self topic];
  v4 = [v3 hash];

  v5 = [(APSURLTokenInfo *)self vapidPublicKey];

  if (v5)
  {
    v6 = [(APSURLTokenInfo *)self vapidPublicKey];
    v4 ^= [v6 hash];
  }

  v7 = [(APSURLTokenInfo *)self expirationDate];

  if (v7)
  {
    v8 = [(APSURLTokenInfo *)self expirationDate];
    v4 ^= [v8 hash];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(APSURLTokenInfo *)self topic];
  [v4 encodeObject:v5 forKey:@"t"];

  v6 = [(APSURLTokenInfo *)self vapidPublicKey];
  [v4 encodeObject:v6 forKey:@"vPK"];

  v7 = [(APSURLTokenInfo *)self expirationDate];
  [v4 encodeObject:v7 forKey:@"eD"];

  v8 = [(APSURLTokenInfo *)self baseToken];
  [v4 encodeObject:v8 forKey:@"bT"];
}

- (APSURLTokenInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"t"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vPK"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eD"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bT"];

  v9 = [(APSURLTokenInfo *)self initWithTopic:v5 vapidPublicKey:v6 expirationDate:v7];
  [(APSURLTokenInfo *)v9 setBaseToken:v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [APSURLTokenInfo alloc];
  v5 = [(APSURLTokenInfo *)self topic];
  v6 = [(APSURLTokenInfo *)self vapidPublicKey];
  v7 = [(APSURLTokenInfo *)self expirationDate];
  v8 = [(APSURLTokenInfo *)v4 initWithTopic:v5 vapidPublicKey:v6 expirationDate:v7];

  v9 = [(APSURLTokenInfo *)self baseToken];
  [(APSURLTokenInfo *)v8 setBaseToken:v9];

  return v8;
}

@end