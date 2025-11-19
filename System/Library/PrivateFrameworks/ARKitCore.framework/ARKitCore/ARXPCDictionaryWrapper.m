@interface ARXPCDictionaryWrapper
+ (id)wrapperWithDictionary:(id)a3;
- (ARXPCDictionaryWrapper)initWithCoder:(id)a3;
- (ARXPCDictionaryWrapper)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARXPCDictionaryWrapper

+ (id)wrapperWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionary:v4];

  return v5;
}

- (ARXPCDictionaryWrapper)initWithDictionary:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 && object_getClass(v5) == MEMORY[0x1E69E9E80])
  {
    v11.receiver = self;
    v11.super_class = ARXPCDictionaryWrapper;
    v8 = [(ARXPCDictionaryWrapper *)&v11 init];
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

- (ARXPCDictionaryWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"dictionary"];
    self = [(ARXPCDictionaryWrapper *)self initWithDictionary:v5];

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