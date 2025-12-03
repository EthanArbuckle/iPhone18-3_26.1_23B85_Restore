@interface ARXPCDictionaryWrapper
+ (id)wrapperWithDictionary:(id)dictionary;
- (ARXPCDictionaryWrapper)initWithCoder:(id)coder;
- (ARXPCDictionaryWrapper)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARXPCDictionaryWrapper

+ (id)wrapperWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

- (ARXPCDictionaryWrapper)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = dictionaryCopy;
  if (dictionaryCopy && object_getClass(dictionaryCopy) == MEMORY[0x1E69E9E80])
  {
    v11.receiver = self;
    v11.super_class = ARXPCDictionaryWrapper;
    v8 = [(ARXPCDictionaryWrapper *)&v11 init];
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

- (ARXPCDictionaryWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"dictionary"];
    self = [(ARXPCDictionaryWrapper *)self initWithDictionary:v5];

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