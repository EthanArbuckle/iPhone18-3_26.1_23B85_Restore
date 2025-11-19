@interface CTLazuliChatBotTelephoneInformation
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotTelephoneInformation:(id)a3;
- (CTLazuliChatBotTelephoneInformation)initWithCoder:(id)a3;
- (CTLazuliChatBotTelephoneInformation)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotTelephoneInformation

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotTelephoneInformation *)self label];
  [v3 appendFormat:@", label = %@", v4];

  v5 = [(CTLazuliChatBotTelephoneInformation *)self telNumber];
  [v3 appendFormat:@", telNumber = %@", v5];

  v6 = [(CTLazuliChatBotTelephoneInformation *)self telephoneType];
  [v3 appendFormat:@", telephoneType = %@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotTelephoneInformation:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotTelephoneInformation *)self label];
  v6 = [v4 label];
  if (v5 != v6)
  {
    v19 = [(CTLazuliChatBotTelephoneInformation *)self label];
    v17 = [v4 label];
    if (![v19 isEqualToString:?])
    {
      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  v8 = [(CTLazuliChatBotTelephoneInformation *)self telNumber];
  v9 = [v4 telNumber];
  if (v8 != v9)
  {
    v18 = [(CTLazuliChatBotTelephoneInformation *)self telNumber];
    v16 = [v4 telNumber];
    if (![v18 isEqualToCTLazuliChatBotTelephoneNumber:?])
    {
      v7 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  v10 = [(CTLazuliChatBotTelephoneInformation *)self telephoneType];
  v11 = [v4 telephoneType];
  v12 = v11;
  if (v10 == v11)
  {

    v7 = 1;
  }

  else
  {
    v13 = [(CTLazuliChatBotTelephoneInformation *)self telephoneType];
    v14 = [v4 telephoneType];
    v7 = [v13 isEqualToString:v14];
  }

  if (v8 != v9)
  {
    goto LABEL_11;
  }

LABEL_12:

  if (v5 != v6)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v7;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotTelephoneInformation *)self isEqualToCTLazuliChatBotTelephoneInformation:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotTelephoneInformation allocWithZone:?];
  v6 = [(NSString *)self->_label copyWithZone:a3];
  [(CTLazuliChatBotTelephoneInformation *)v5 setLabel:v6];

  v7 = [(CTLazuliChatBotTelephoneNumber *)self->_telNumber copyWithZone:a3];
  [(CTLazuliChatBotTelephoneInformation *)v5 setTelNumber:v7];

  v8 = [(NSString *)self->_telephoneType copyWithZone:a3];
  [(CTLazuliChatBotTelephoneInformation *)v5 setTelephoneType:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_label forKey:@"kLabelKey"];
  [v4 encodeObject:self->_telNumber forKey:@"kTelNumberKey"];
  [v4 encodeObject:self->_telephoneType forKey:@"kTelephoneTypeKey"];
}

- (CTLazuliChatBotTelephoneInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTLazuliChatBotTelephoneInformation;
  v5 = [(CTLazuliChatBotTelephoneInformation *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kLabelKey"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTelNumberKey"];
    telNumber = v5->_telNumber;
    v5->_telNumber = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTelephoneTypeKey"];
    telephoneType = v5->_telephoneType;
    v5->_telephoneType = v10;
  }

  return v5;
}

- (CTLazuliChatBotTelephoneInformation)initWithReflection:(const void *)a3
{
  v17.receiver = self;
  v17.super_class = CTLazuliChatBotTelephoneInformation;
  v4 = [(CTLazuliChatBotTelephoneInformation *)&v17 init];
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
    label = v4->_label;
    v4->_label = v6;

    v8 = [[CTLazuliChatBotTelephoneNumber alloc] initWithReflection:a3 + 24];
    telNumber = v4->_telNumber;
    v4->_telNumber = v8;

    v12 = *(a3 + 6);
    v11 = a3 + 48;
    v10 = v12;
    if (v11[23] >= 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
    telephoneType = v4->_telephoneType;
    v4->_telephoneType = v14;
  }

  return v4;
}

@end