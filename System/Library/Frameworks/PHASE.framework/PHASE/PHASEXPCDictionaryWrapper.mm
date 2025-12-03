@interface PHASEXPCDictionaryWrapper
+ (id)wrapperWithDictionary:(id)dictionary;
- (PHASEXPCDictionaryWrapper)initWithCoder:(id)coder;
- (PHASEXPCDictionaryWrapper)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHASEXPCDictionaryWrapper

+ (id)wrapperWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[PHASEXPCDictionaryWrapper alloc] initWithDictionary:dictionaryCopy];

  return v4;
}

- (PHASEXPCDictionaryWrapper)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = dictionaryCopy;
  if (dictionaryCopy && MEMORY[0x23EE87350](dictionaryCopy) == MEMORY[0x277D86468])
  {
    v11.receiver = self;
    v11.super_class = PHASEXPCDictionaryWrapper;
    v8 = [(PHASEXPCDictionaryWrapper *)&v11 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_dictionary, dictionary);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PHASEXPCDictionaryWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [coderCopy decodeXPCObjectOfType:MEMORY[0x277D86468] forKey:@"dictionary"];
    self = [(PHASEXPCDictionaryWrapper *)self initWithDictionary:v5];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionary = self->_dictionary;
    if (dictionary)
    {
      [coderCopy encodeXPCObject:dictionary forKey:@"dictionary"];
    }
  }
}

@end