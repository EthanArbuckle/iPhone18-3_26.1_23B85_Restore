@interface CTLazuliChatBotTelephoneNumber
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotTelephoneNumber:(id)number;
- (CTLazuliChatBotTelephoneNumber)initWithCoder:(id)coder;
- (CTLazuliChatBotTelephoneNumber)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliChatBotTelephoneNumber

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  number = [(CTLazuliChatBotTelephoneNumber *)self number];
  [v3 appendFormat:@", number = %@", number];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotTelephoneNumber:(id)number
{
  numberCopy = number;
  number = [(CTLazuliChatBotTelephoneNumber *)self number];
  number2 = [numberCopy number];
  if (number == number2)
  {
    v9 = 1;
  }

  else
  {
    number3 = [(CTLazuliChatBotTelephoneNumber *)self number];
    number4 = [numberCopy number];
    v9 = [number3 isEqualToString:number4];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotTelephoneNumber *)self isEqualToCTLazuliChatBotTelephoneNumber:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotTelephoneNumber allocWithZone:?];
  v6 = [(NSString *)self->_number copyWithZone:zone];
  [(CTLazuliChatBotTelephoneNumber *)v5 setNumber:v6];

  return v5;
}

- (CTLazuliChatBotTelephoneNumber)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotTelephoneNumber;
  v5 = [(CTLazuliChatBotTelephoneNumber *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNumberKey"];
    number = v5->_number;
    v5->_number = v6;
  }

  return v5;
}

- (CTLazuliChatBotTelephoneNumber)initWithReflection:(const void *)reflection
{
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotTelephoneNumber;
  v4 = [(CTLazuliChatBotTelephoneNumber *)&v9 init];
  if (v4)
  {
    if (*(reflection + 23) >= 0)
    {
      reflectionCopy = reflection;
    }

    else
    {
      reflectionCopy = *reflection;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:reflectionCopy];
    number = v4->_number;
    v4->_number = v6;
  }

  return v4;
}

@end