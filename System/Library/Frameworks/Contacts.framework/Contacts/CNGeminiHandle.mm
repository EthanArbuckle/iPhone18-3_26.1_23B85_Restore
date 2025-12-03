@interface CNGeminiHandle
- (CNGeminiHandle)initWithCoder:(id)coder;
- (CNGeminiHandle)initWithString:(id)string type:(int64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNGeminiHandle

- (CNGeminiHandle)initWithString:(id)string type:(int64_t)type
{
  stringCopy = string;
  v16.receiver = self;
  v16.super_class = CNGeminiHandle;
  v7 = [(CNGeminiHandle *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_handleType = type;
    if (type || (+[CNPhoneNumber phoneNumberWithStringValue:](CNPhoneNumber, "phoneNumberWithStringValue:", stringCopy), v9 = objc_claimAutoreleasedReturnValue(), [v9 unformattedInternationalStringValue], v10 = objc_claimAutoreleasedReturnValue(), v11 = v8->_stringValue, v8->_stringValue = v10, v11, v9, (*(*MEMORY[0x1E6996568] + 16))()))
    {
      v12 = [stringCopy copy];
      stringValue = v8->_stringValue;
      v8->_stringValue = v12;
    }

    v14 = v8;
  }

  return v8;
}

- (CNGeminiHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNGeminiHandle;
  v5 = [(CNGeminiHandle *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_stringValue"];
    v7 = [v6 copy];
    stringValue = v5->_stringValue;
    v5->_stringValue = v7;

    v5->_handleType = [coderCopy decodeIntegerForKey:@"_handleType"];
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  stringValue = self->_stringValue;
  coderCopy = coder;
  [coderCopy encodeObject:stringValue forKey:@"_stringValue"];
  [coderCopy encodeInteger:self->_handleType forKey:@"_handleType"];
}

@end