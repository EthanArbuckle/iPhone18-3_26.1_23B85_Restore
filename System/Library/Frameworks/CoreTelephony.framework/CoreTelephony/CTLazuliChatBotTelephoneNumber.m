@interface CTLazuliChatBotTelephoneNumber
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotTelephoneNumber:(id)a3;
- (CTLazuliChatBotTelephoneNumber)initWithCoder:(id)a3;
- (CTLazuliChatBotTelephoneNumber)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliChatBotTelephoneNumber

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotTelephoneNumber *)self number];
  [v3 appendFormat:@", number = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotTelephoneNumber:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotTelephoneNumber *)self number];
  v6 = [v4 number];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliChatBotTelephoneNumber *)self number];
    v8 = [v4 number];
    v9 = [v7 isEqualToString:v8];
  }

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotTelephoneNumber *)self isEqualToCTLazuliChatBotTelephoneNumber:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotTelephoneNumber allocWithZone:?];
  v6 = [(NSString *)self->_number copyWithZone:a3];
  [(CTLazuliChatBotTelephoneNumber *)v5 setNumber:v6];

  return v5;
}

- (CTLazuliChatBotTelephoneNumber)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotTelephoneNumber;
  v5 = [(CTLazuliChatBotTelephoneNumber *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNumberKey"];
    number = v5->_number;
    v5->_number = v6;
  }

  return v5;
}

- (CTLazuliChatBotTelephoneNumber)initWithReflection:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotTelephoneNumber;
  v4 = [(CTLazuliChatBotTelephoneNumber *)&v9 init];
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
    number = v4->_number;
    v4->_number = v6;
  }

  return v4;
}

@end