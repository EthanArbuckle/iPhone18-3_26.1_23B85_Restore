@interface SHLShazamKey
+ (SHLShazamKey)keyWithValue:(id)value;
- (BOOL)isShazamKeyValid:(id)valid;
- (SHLShazamKey)initWithKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SHLShazamKey

+ (SHLShazamKey)keyWithValue:(id)value
{
  valueCopy = value;
  v4 = [[SHLShazamKey alloc] initWithKey:valueCopy];

  return v4;
}

- (SHLShazamKey)initWithKey:(id)key
{
  keyCopy = key;
  v10.receiver = self;
  v10.super_class = SHLShazamKey;
  v6 = [(SHLShazamKey *)&v10 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    if (![(SHLShazamKey *)v6 isShazamKeyValid:keyCopy])
    {
      v8 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(p_isa + 1, key);
  }

  v8 = p_isa;
LABEL_6:

  return v8;
}

- (BOOL)isShazamKeyValid:(id)valid
{
  validCopy = valid;
  if ([validCopy length])
  {
    v4 = +[NSCharacterSet decimalDigitCharacterSet];
    invertedSet = [v4 invertedSet];

    if ([validCopy rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [validCopy longLongValue]);
      v7 = [v6 unsignedIntegerValue] != -1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [SHLShazamKey allocWithZone:?];
  validatedKey = [(SHLShazamKey *)self validatedKey];
  v7 = [validatedKey copyWithZone:zone];
  v8 = [(SHLShazamKey *)v5 initWithKey:v7];

  return v8;
}

@end