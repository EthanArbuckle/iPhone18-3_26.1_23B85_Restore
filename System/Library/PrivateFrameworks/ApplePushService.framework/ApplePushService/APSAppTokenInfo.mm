@interface APSAppTokenInfo
- (APSAppTokenInfo)initWithCoder:(id)coder;
- (APSAppTokenInfo)initWithDictionary:(id)dictionary;
- (APSAppTokenInfo)initWithTopic:(id)topic identifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)initUnextendedAppTokenWithTopic:(id)topic identifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APSAppTokenInfo

- (id)initUnextendedAppTokenWithTopic:(id)topic identifier:(id)identifier
{
  topicCopy = topic;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = APSAppTokenInfo;
  v8 = [(APSAppTokenInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(APSAppTokenInfo *)v8 setTopic:topicCopy];
    [(APSAppTokenInfo *)v9 setIdentifier:identifierCopy];
    [(APSAppTokenInfo *)v9 setIsUnextended:1];
  }

  return v9;
}

- (APSAppTokenInfo)initWithTopic:(id)topic identifier:(id)identifier
{
  topicCopy = topic;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = APSAppTokenInfo;
  v8 = [(APSAppTokenInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(APSAppTokenInfo *)v8 setTopic:topicCopy];
    [(APSAppTokenInfo *)v9 setIdentifier:identifierCopy];
  }

  return v9;
}

- (APSAppTokenInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = APSAppTokenInfo;
  v5 = [(APSAppTokenInfo *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"APSAppTokenInfoTopic"];
    [(APSAppTokenInfo *)v5 setTopic:v6];

    v7 = [dictionaryCopy objectForKey:@"APSAppTokenInfoIdentifier"];
    [(APSAppTokenInfo *)v5 setIdentifier:v7];

    v8 = [dictionaryCopy objectForKey:@"APSAppTokenInfoBaseTokenKey"];

    if (v8)
    {
      v9 = [dictionaryCopy objectForKey:@"APSAppTokenInfoBaseTokenKey"];
      [(APSAppTokenInfo *)v5 setBaseToken:v9];
    }

    v10 = [dictionaryCopy objectForKey:@"APSAppTokenInfoExpirationDate"];

    if (v10)
    {
      v11 = MEMORY[0x1E695DF00];
      v12 = [dictionaryCopy objectForKey:@"APSAppTokenInfoExpirationDate"];
      [v12 doubleValue];
      v13 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
      [(APSAppTokenInfo *)v5 setExpirationDate:v13];
    }

    v14 = [dictionaryCopy objectForKey:@"APSAppTokenInfoIsUnextendedKey"];
    -[APSAppTokenInfo setIsUnextended:](v5, "setIsUnextended:", [v14 BOOLValue]);
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  topic = [(APSAppTokenInfo *)self topic];
  [v3 setObject:topic forKey:@"APSAppTokenInfoTopic"];

  identifier = [(APSAppTokenInfo *)self identifier];
  [v3 setObject:identifier forKey:@"APSAppTokenInfoIdentifier"];

  baseToken = [(APSAppTokenInfo *)self baseToken];

  if (baseToken)
  {
    baseToken2 = [(APSAppTokenInfo *)self baseToken];
    [v3 setObject:baseToken2 forKey:@"APSAppTokenInfoBaseTokenKey"];
  }

  expirationDate = [(APSAppTokenInfo *)self expirationDate];

  if (expirationDate)
  {
    v9 = MEMORY[0x1E696AD98];
    expirationDate2 = [(APSAppTokenInfo *)self expirationDate];
    [expirationDate2 timeIntervalSinceReferenceDate];
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
  topic = [(APSAppTokenInfo *)self topic];
  v4 = [topic hash];

  identifier = [(APSAppTokenInfo *)self identifier];

  if (identifier)
  {
    identifier2 = [(APSAppTokenInfo *)self identifier];
    v4 ^= [identifier2 hash];
  }

  expirationDate = [(APSAppTokenInfo *)self expirationDate];

  if (expirationDate)
  {
    expirationDate2 = [(APSAppTokenInfo *)self expirationDate];
    v4 ^= [expirationDate2 hash];
  }

  return v4 ^ [(APSAppTokenInfo *)self isUnextended];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_24;
  }

  v5 = equalCopy;
  topic = [(APSAppTokenInfo *)self topic];
  topic2 = [v5 topic];
  v8 = [topic isEqual:topic2];

  if (v8)
  {
    identifier = [(APSAppTokenInfo *)self identifier];
    if (identifier || ([v5 identifier], (topic2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      identifier2 = [(APSAppTokenInfo *)self identifier];
      identifier3 = [v5 identifier];
      v8 = [identifier2 isEqual:identifier3];

      if (identifier)
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

    expirationDate = [(APSAppTokenInfo *)self expirationDate];
    if (!expirationDate)
    {
      topic2 = [v5 expirationDate];
      if (!topic2)
      {
        goto LABEL_16;
      }
    }

    expirationDate2 = [(APSAppTokenInfo *)self expirationDate];
    expirationDate3 = [v5 expirationDate];
    v8 = [expirationDate2 isEqual:expirationDate3];

    if (expirationDate)
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
      isUnextended = [(APSAppTokenInfo *)self isUnextended];
      v8 = isUnextended ^ [v5 isUnextended] ^ 1;
      goto LABEL_18;
    }

LABEL_17:
    v8 = 0;
  }

LABEL_18:
  baseToken = [(APSAppTokenInfo *)self baseToken];
  if (baseToken)
  {
    v18 = baseToken;
    baseToken2 = [v5 baseToken];

    v12 = (baseToken2 == 0) & v8;
    if (baseToken2 && ((v8 ^ 1) & 1) == 0)
    {
      baseToken3 = [(APSAppTokenInfo *)self baseToken];
      baseToken4 = [v5 baseToken];
      v12 = [baseToken3 isEqualToData:baseToken4];
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
  topic = [(APSAppTokenInfo *)self topic];
  identifier = [(APSAppTokenInfo *)self identifier];
  expirationDate = [(APSAppTokenInfo *)self expirationDate];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[APSAppTokenInfo type](self, "type")}];
  baseToken = [(APSAppTokenInfo *)self baseToken];
  v9 = [v3 stringWithFormat:@"<APSAppTokenInfo %p>: Topic %@ Identifier %@ Expiration %@ type %@ base token %@", self, topic, identifier, expirationDate, v7, baseToken];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  topic = [(APSAppTokenInfo *)self topic];
  [coderCopy encodeObject:topic forKey:@"APSAppTokenInfoTopic"];

  identifier = [(APSAppTokenInfo *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"APSAppTokenInfoIdentifier"];

  baseToken = [(APSAppTokenInfo *)self baseToken];

  if (baseToken)
  {
    baseToken2 = [(APSAppTokenInfo *)self baseToken];
    [coderCopy encodeObject:baseToken2 forKey:@"APSAppTokenInfoBaseTokenKey"];
  }

  expirationDate = [(APSAppTokenInfo *)self expirationDate];

  if (expirationDate)
  {
    expirationDate2 = [(APSAppTokenInfo *)self expirationDate];
    [coderCopy encodeObject:expirationDate2 forKey:@"APSAppTokenInfoExpirationDate"];
  }

  [coderCopy encodeBool:-[APSAppTokenInfo isUnextended](self forKey:{"isUnextended"), @"APSAppTokenInfoIsUnextendedKey"}];
}

- (APSAppTokenInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = APSAppTokenInfo;
  v5 = [(APSAppTokenInfo *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"APSAppTokenInfoTopic"];
    [(APSAppTokenInfo *)v5 setTopic:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"APSAppTokenInfoIdentifier"];
    [(APSAppTokenInfo *)v5 setIdentifier:v7];

    if ([coderCopy containsValueForKey:@"APSAppTokenInfoBaseTokenKey"])
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"APSAppTokenInfoBaseTokenKey"];
      [(APSAppTokenInfo *)v5 setBaseToken:v8];
    }

    if ([coderCopy containsValueForKey:@"APSAppTokenInfoExpirationDate"])
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"APSAppTokenInfoExpirationDate"];
      [(APSAppTokenInfo *)v5 setExpirationDate:v9];
    }

    -[APSAppTokenInfo setIsUnextended:](v5, "setIsUnextended:", [coderCopy decodeBoolForKey:@"APSAppTokenInfoIsUnextendedKey"]);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [APSAppTokenInfo alloc];
  topic = [(APSAppTokenInfo *)self topic];
  identifier = [(APSAppTokenInfo *)self identifier];
  v7 = [(APSAppTokenInfo *)v4 initWithTopic:topic identifier:identifier];

  expirationDate = [(APSAppTokenInfo *)self expirationDate];
  [(APSAppTokenInfo *)v7 setExpirationDate:expirationDate];

  [(APSAppTokenInfo *)v7 setIsUnextended:[(APSAppTokenInfo *)self isUnextended]];
  baseToken = [(APSAppTokenInfo *)self baseToken];
  [(APSAppTokenInfo *)v7 setBaseToken:baseToken];

  return v7;
}

@end