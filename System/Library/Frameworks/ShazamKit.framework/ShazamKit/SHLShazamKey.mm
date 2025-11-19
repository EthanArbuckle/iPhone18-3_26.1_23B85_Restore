@interface SHLShazamKey
+ (SHLShazamKey)keyWithValue:(id)a3;
- (BOOL)isShazamKeyValid:(id)a3;
- (SHLShazamKey)initWithKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SHLShazamKey

+ (SHLShazamKey)keyWithValue:(id)a3
{
  v3 = a3;
  v4 = [[SHLShazamKey alloc] initWithKey:v3];

  return v4;
}

- (SHLShazamKey)initWithKey:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SHLShazamKey;
  v6 = [(SHLShazamKey *)&v10 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    if (![(SHLShazamKey *)v6 isShazamKeyValid:v5])
    {
      v8 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(p_isa + 1, a3);
  }

  v8 = p_isa;
LABEL_6:

  return v8;
}

- (BOOL)isShazamKeyValid:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = +[NSCharacterSet decimalDigitCharacterSet];
    v5 = [v4 invertedSet];

    if ([v3 rangeOfCharacterFromSet:v5] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 longLongValue]);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [SHLShazamKey allocWithZone:?];
  v6 = [(SHLShazamKey *)self validatedKey];
  v7 = [v6 copyWithZone:a3];
  v8 = [(SHLShazamKey *)v5 initWithKey:v7];

  return v8;
}

@end