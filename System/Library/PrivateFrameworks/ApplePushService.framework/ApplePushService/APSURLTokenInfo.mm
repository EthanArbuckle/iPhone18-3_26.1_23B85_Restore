@interface APSURLTokenInfo
- (APSURLTokenInfo)initWithCoder:(id)coder;
- (APSURLTokenInfo)initWithDictionary:(id)dictionary;
- (APSURLTokenInfo)initWithTopic:(id)topic vapidPublicKey:(id)key expirationDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APSURLTokenInfo

- (APSURLTokenInfo)initWithTopic:(id)topic vapidPublicKey:(id)key expirationDate:(id)date
{
  topicCopy = topic;
  keyCopy = key;
  dateCopy = date;
  if (topicCopy)
  {
    v16.receiver = self;
    v16.super_class = APSURLTokenInfo;
    v12 = [(APSURLTokenInfo *)&v16 init];
    p_isa = &v12->super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_topic, topic);
      objc_storeStrong(p_isa + 3, key);
      objc_storeStrong(p_isa + 4, date);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (APSURLTokenInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"t"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"vPK"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      selfCopy = 0;
    }

    else
    {
      v7 = [dictionaryCopy objectForKeyedSubscript:@"eD"];
      if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        selfCopy = 0;
      }

      else
      {
        v8 = [dictionaryCopy objectForKeyedSubscript:@"bT"];
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

        selfCopy = self;
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  topic = [(APSURLTokenInfo *)self topic];
  [v3 setObject:topic forKeyedSubscript:@"t"];

  vapidPublicKey = [(APSURLTokenInfo *)self vapidPublicKey];
  [v3 setObject:vapidPublicKey forKeyedSubscript:@"vPK"];

  expirationDate = [(APSURLTokenInfo *)self expirationDate];
  if (expirationDate)
  {
    v7 = MEMORY[0x1E696AD98];
    expirationDate2 = [(APSURLTokenInfo *)self expirationDate];
    [expirationDate2 timeIntervalSinceReferenceDate];
    v9 = [v7 numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:@"eD"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"eD"];
  }

  baseToken = [(APSURLTokenInfo *)self baseToken];
  [v3 setObject:baseToken forKeyedSubscript:@"bT"];

  v11 = [v3 copy];

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  topic = [(APSURLTokenInfo *)self topic];
  vapidPublicKey = [(APSURLTokenInfo *)self vapidPublicKey];
  if (vapidPublicKey)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  expirationDate = [(APSURLTokenInfo *)self expirationDate];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[APSURLTokenInfo type](self, "type")}];
  baseToken = [(APSURLTokenInfo *)self baseToken];
  v10 = [v3 stringWithFormat:@"<APSURLTokenInfo %p>: Topic: %@ VapidPublicKey: %@ Expiration: %@ Type: %@ Base Token: %@", self, topic, v6, expirationDate, v8, baseToken];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_25;
  }

  v7 = equalCopy;
  topic = [(APSURLTokenInfo *)self topic];
  topic2 = [v7 topic];
  if ([topic isEqualToString:topic2])
  {
    vapidPublicKey = [(APSURLTokenInfo *)self vapidPublicKey];
    if (vapidPublicKey || ([v7 vapidPublicKey], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      vapidPublicKey2 = [(APSURLTokenInfo *)self vapidPublicKey];
      vapidPublicKey3 = [v7 vapidPublicKey];
      if (([vapidPublicKey2 isEqualToData:vapidPublicKey3] & 1) == 0)
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

    v25 = vapidPublicKey3;
    v26 = vapidPublicKey2;
    expirationDate = [(APSURLTokenInfo *)self expirationDate];
    if (expirationDate || ([v7 expirationDate], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v28 = v11;
      expirationDate2 = [(APSURLTokenInfo *)self expirationDate];
      expirationDate3 = [v7 expirationDate];
      v13 = [expirationDate2 isEqualToDate:expirationDate3];

      if (expirationDate)
      {

        if (v28)
        {
LABEL_15:
        }

LABEL_16:
        if (!vapidPublicKey)
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

  baseToken = [(APSURLTokenInfo *)self baseToken];
  if (baseToken)
  {
    v18 = baseToken;
    baseToken2 = [v7 baseToken];

    v12 = (baseToken2 == 0) & v13;
    if (baseToken2 && ((v13 ^ 1) & 1) == 0)
    {
      baseToken3 = [(APSURLTokenInfo *)self baseToken];
      baseToken4 = [v7 baseToken];
      v12 = [baseToken3 isEqualToData:baseToken4];
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
  topic = [(APSURLTokenInfo *)self topic];
  v4 = [topic hash];

  vapidPublicKey = [(APSURLTokenInfo *)self vapidPublicKey];

  if (vapidPublicKey)
  {
    vapidPublicKey2 = [(APSURLTokenInfo *)self vapidPublicKey];
    v4 ^= [vapidPublicKey2 hash];
  }

  expirationDate = [(APSURLTokenInfo *)self expirationDate];

  if (expirationDate)
  {
    expirationDate2 = [(APSURLTokenInfo *)self expirationDate];
    v4 ^= [expirationDate2 hash];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  topic = [(APSURLTokenInfo *)self topic];
  [coderCopy encodeObject:topic forKey:@"t"];

  vapidPublicKey = [(APSURLTokenInfo *)self vapidPublicKey];
  [coderCopy encodeObject:vapidPublicKey forKey:@"vPK"];

  expirationDate = [(APSURLTokenInfo *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"eD"];

  baseToken = [(APSURLTokenInfo *)self baseToken];
  [coderCopy encodeObject:baseToken forKey:@"bT"];
}

- (APSURLTokenInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"t"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vPK"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eD"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bT"];

  v9 = [(APSURLTokenInfo *)self initWithTopic:v5 vapidPublicKey:v6 expirationDate:v7];
  [(APSURLTokenInfo *)v9 setBaseToken:v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [APSURLTokenInfo alloc];
  topic = [(APSURLTokenInfo *)self topic];
  vapidPublicKey = [(APSURLTokenInfo *)self vapidPublicKey];
  expirationDate = [(APSURLTokenInfo *)self expirationDate];
  v8 = [(APSURLTokenInfo *)v4 initWithTopic:topic vapidPublicKey:vapidPublicKey expirationDate:expirationDate];

  baseToken = [(APSURLTokenInfo *)self baseToken];
  [(APSURLTokenInfo *)v8 setBaseToken:baseToken];

  return v8;
}

@end