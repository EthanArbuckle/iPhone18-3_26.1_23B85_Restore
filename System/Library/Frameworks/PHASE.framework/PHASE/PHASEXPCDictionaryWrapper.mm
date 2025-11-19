@interface PHASEXPCDictionaryWrapper
+ (id)wrapperWithDictionary:(id)a3;
- (PHASEXPCDictionaryWrapper)initWithCoder:(id)a3;
- (PHASEXPCDictionaryWrapper)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PHASEXPCDictionaryWrapper

+ (id)wrapperWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [[PHASEXPCDictionaryWrapper alloc] initWithDictionary:v3];

  return v4;
}

- (PHASEXPCDictionaryWrapper)initWithDictionary:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 && MEMORY[0x23EE87350](v5) == MEMORY[0x277D86468])
  {
    v11.receiver = self;
    v11.super_class = PHASEXPCDictionaryWrapper;
    v8 = [(PHASEXPCDictionaryWrapper *)&v11 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_dictionary, a3);
    }

    self = v9;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PHASEXPCDictionaryWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 decodeXPCObjectOfType:MEMORY[0x277D86468] forKey:@"dictionary"];
    self = [(PHASEXPCDictionaryWrapper *)self initWithDictionary:v5];

    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionary = self->_dictionary;
    if (dictionary)
    {
      [v5 encodeXPCObject:dictionary forKey:@"dictionary"];
    }
  }
}

@end