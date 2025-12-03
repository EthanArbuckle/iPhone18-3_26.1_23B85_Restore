@interface APSURLToken
- (APSURLToken)initWithCoder:(id)coder;
- (APSURLToken)initWithDictionary:(id)dictionary;
- (APSURLToken)initWithTokenURL:(id)l token:(id)token;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APSURLToken

- (APSURLToken)initWithTokenURL:(id)l token:(id)token
{
  lCopy = l;
  tokenCopy = token;
  v9 = tokenCopy;
  selfCopy = 0;
  if (lCopy && tokenCopy)
  {
    v14.receiver = self;
    v14.super_class = APSURLToken;
    v11 = [(APSURLToken *)&v14 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_tokenURL, l);
      objc_storeStrong(p_isa + 2, token);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

- (APSURLToken)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"url"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"tok"];

  selfCopy = 0;
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
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  tokenURL = [(APSURLToken *)self tokenURL];
  [v3 setObject:tokenURL forKeyedSubscript:@"url"];

  token = [(APSURLToken *)self token];
  [v3 setObject:token forKeyedSubscript:@"tok"];

  v6 = [v3 copy];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  tokenURL = [(APSURLToken *)self tokenURL];
  token = [(APSURLToken *)self token];
  v6 = [token debugDescription];
  v7 = [v3 stringWithFormat:@"<APSURLToken %p>: url: %@ token: %@", self, tokenURL, v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    tokenURL = [(APSURLToken *)self tokenURL];
    tokenURL2 = [v5 tokenURL];
    if ([tokenURL isEqualToString:tokenURL2])
    {
      token = [(APSURLToken *)self token];
      token2 = [v5 token];
      v10 = [token isEqualToData:token2];
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
  tokenURL = [(APSURLToken *)self tokenURL];
  v4 = [tokenURL hash];
  token = [(APSURLToken *)self token];
  v6 = [token hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  tokenURL = [(APSURLToken *)self tokenURL];
  [coderCopy encodeObject:tokenURL forKey:@"url"];

  token = [(APSURLToken *)self token];
  [coderCopy encodeObject:token forKey:@"tok"];
}

- (APSURLToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tok"];

  v7 = [(APSURLToken *)self initWithTokenURL:v5 token:v6];
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [APSURLToken alloc];
  tokenURL = [(APSURLToken *)self tokenURL];
  token = [(APSURLToken *)self token];
  v7 = [(APSURLToken *)v4 initWithTokenURL:tokenURL token:token];

  return v7;
}

@end