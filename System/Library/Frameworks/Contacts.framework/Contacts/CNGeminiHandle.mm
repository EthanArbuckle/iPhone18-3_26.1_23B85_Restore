@interface CNGeminiHandle
- (CNGeminiHandle)initWithCoder:(id)a3;
- (CNGeminiHandle)initWithString:(id)a3 type:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNGeminiHandle

- (CNGeminiHandle)initWithString:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = CNGeminiHandle;
  v7 = [(CNGeminiHandle *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_handleType = a4;
    if (a4 || (+[CNPhoneNumber phoneNumberWithStringValue:](CNPhoneNumber, "phoneNumberWithStringValue:", v6), v9 = objc_claimAutoreleasedReturnValue(), [v9 unformattedInternationalStringValue], v10 = objc_claimAutoreleasedReturnValue(), v11 = v8->_stringValue, v8->_stringValue = v10, v11, v9, (*(*MEMORY[0x1E6996568] + 16))()))
    {
      v12 = [v6 copy];
      stringValue = v8->_stringValue;
      v8->_stringValue = v12;
    }

    v14 = v8;
  }

  return v8;
}

- (CNGeminiHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNGeminiHandle;
  v5 = [(CNGeminiHandle *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_stringValue"];
    v7 = [v6 copy];
    stringValue = v5->_stringValue;
    v5->_stringValue = v7;

    v5->_handleType = [v4 decodeIntegerForKey:@"_handleType"];
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  stringValue = self->_stringValue;
  v5 = a3;
  [v5 encodeObject:stringValue forKey:@"_stringValue"];
  [v5 encodeInteger:self->_handleType forKey:@"_handleType"];
}

@end