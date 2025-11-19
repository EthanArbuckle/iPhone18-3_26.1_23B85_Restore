@interface SHShazamKey
- (BOOL)isShazamKeyValid:(id)a3;
- (SHShazamKey)initWithKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SHShazamKey

- (SHShazamKey)initWithKey:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SHShazamKey;
  v6 = [(SHShazamKey *)&v10 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    if (![(SHShazamKey *)v6 isShazamKeyValid:v5])
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
    v4 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v5 = [v4 invertedSet];

    if ([v3 rangeOfCharacterFromSet:v5] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "longLongValue")}];
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
  v5 = [SHShazamKey allocWithZone:?];
  v6 = [(SHShazamKey *)self validatedKey];
  v7 = [v6 copyWithZone:a3];
  v8 = [(SHShazamKey *)v5 initWithKey:v7];

  return v8;
}

@end