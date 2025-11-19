@interface APSURLToken
- (APSURLToken)initWithCoder:(id)a3;
- (APSURLToken)initWithDictionary:(id)a3;
- (APSURLToken)initWithTokenURL:(id)a3 token:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APSURLToken

- (APSURLToken)initWithTokenURL:(id)a3 token:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v14.receiver = self;
    v14.super_class = APSURLToken;
    v11 = [(APSURLToken *)&v14 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_tokenURL, a3);
      objc_storeStrong(p_isa + 2, a4);
    }

    self = p_isa;
    v10 = self;
  }

  return v10;
}

- (APSURLToken)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"url"];
  v6 = [v4 objectForKeyedSubscript:@"tok"];

  v7 = 0;
  if (v5 && v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v11.receiver = self;
      v11.super_class = APSURLToken;
      v8 = [(APSURLToken *)&v11 init];
      p_isa = &v8->super.isa;
      if (v8)
      {
        objc_storeStrong(&v8->_tokenURL, v5);
        objc_storeStrong(p_isa + 2, v6);
      }

      self = p_isa;
      v7 = self;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(APSURLToken *)self tokenURL];
  [v3 setObject:v4 forKeyedSubscript:@"url"];

  v5 = [(APSURLToken *)self token];
  [v3 setObject:v5 forKeyedSubscript:@"tok"];

  v6 = [v3 copy];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(APSURLToken *)self tokenURL];
  v5 = [(APSURLToken *)self token];
  v6 = [v5 debugDescription];
  v7 = [v3 stringWithFormat:@"<APSURLToken %p>: url: %@ token: %@", self, v4, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(APSURLToken *)self tokenURL];
    v7 = [v5 tokenURL];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(APSURLToken *)self token];
      v9 = [v5 token];
      v10 = [v8 isEqualToData:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(APSURLToken *)self tokenURL];
  v4 = [v3 hash];
  v5 = [(APSURLToken *)self token];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(APSURLToken *)self tokenURL];
  [v4 encodeObject:v5 forKey:@"url"];

  v6 = [(APSURLToken *)self token];
  [v4 encodeObject:v6 forKey:@"tok"];
}

- (APSURLToken)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tok"];

  v7 = [(APSURLToken *)self initWithTokenURL:v5 token:v6];
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [APSURLToken alloc];
  v5 = [(APSURLToken *)self tokenURL];
  v6 = [(APSURLToken *)self token];
  v7 = [(APSURLToken *)v4 initWithTokenURL:v5 token:v6];

  return v7;
}

@end