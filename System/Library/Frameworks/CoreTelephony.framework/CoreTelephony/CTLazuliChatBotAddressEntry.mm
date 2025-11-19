@interface CTLazuliChatBotAddressEntry
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotAddressEntry:(id)a3;
- (CTLazuliChatBotAddressEntry)initWithCoder:(id)a3;
- (CTLazuliChatBotAddressEntry)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotAddressEntry

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotAddressEntry *)self address];
  [v3 appendFormat:@", address = %@", v4];

  v5 = [(CTLazuliChatBotAddressEntry *)self label];
  [v3 appendFormat:@", label = %@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotAddressEntry:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliChatBotAddressEntry *)self address];
  v8 = [v6 address];
  if (v7 != v8)
  {
    v3 = [(CTLazuliChatBotAddressEntry *)self address];
    v4 = [v6 address];
    if (![v3 isEqualToString:v4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [(CTLazuliChatBotAddressEntry *)self label];
  v11 = [v6 label];
  v12 = v11;
  if (v10 == v11)
  {

    v9 = 1;
  }

  else
  {
    v13 = [(CTLazuliChatBotAddressEntry *)self label];
    v14 = [v6 label];
    v9 = [v13 isEqualToString:v14];
  }

  if (v7 != v8)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotAddressEntry *)self isEqualToCTLazuliChatBotAddressEntry:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotAddressEntry allocWithZone:?];
  v6 = [(NSString *)self->_address copyWithZone:a3];
  [(CTLazuliChatBotAddressEntry *)v5 setAddress:v6];

  v7 = [(NSString *)self->_label copyWithZone:a3];
  [(CTLazuliChatBotAddressEntry *)v5 setLabel:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_address forKey:@"kAddressKey"];
  [v4 encodeObject:self->_label forKey:@"kLabelKey"];
}

- (CTLazuliChatBotAddressEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotAddressEntry;
  v5 = [(CTLazuliChatBotAddressEntry *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAddressKey"];
    address = v5->_address;
    v5->_address = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kLabelKey"];
    label = v5->_label;
    v5->_label = v8;
  }

  return v5;
}

- (CTLazuliChatBotAddressEntry)initWithReflection:(const void *)a3
{
  v15.receiver = self;
  v15.super_class = CTLazuliChatBotAddressEntry;
  v4 = [(CTLazuliChatBotAddressEntry *)&v15 init];
  if (v4)
  {
    if (*(a3 + 23) >= 0)
    {
      v5 = a3;
    }

    else
    {
      v5 = *a3;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    address = v4->_address;
    v4->_address = v6;

    v10 = *(a3 + 3);
    v9 = a3 + 24;
    v8 = v10;
    if (v9[23] >= 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    label = v4->_label;
    v4->_label = v12;
  }

  return v4;
}

@end