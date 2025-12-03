@interface SHShazamKey
- (BOOL)isShazamKeyValid:(id)valid;
- (SHShazamKey)initWithKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SHShazamKey

- (SHShazamKey)initWithKey:(id)key
{
  keyCopy = key;
  v10.receiver = self;
  v10.super_class = SHShazamKey;
  v6 = [(SHShazamKey *)&v10 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    if (![(SHShazamKey *)v6 isShazamKeyValid:keyCopy])
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
    decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    invertedSet = [decimalDigitCharacterSet invertedSet];

    if ([validCopy rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(validCopy, "longLongValue")}];
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
  v5 = [SHShazamKey allocWithZone:?];
  validatedKey = [(SHShazamKey *)self validatedKey];
  v7 = [validatedKey copyWithZone:zone];
  v8 = [(SHShazamKey *)v5 initWithKey:v7];

  return v8;
}

@end