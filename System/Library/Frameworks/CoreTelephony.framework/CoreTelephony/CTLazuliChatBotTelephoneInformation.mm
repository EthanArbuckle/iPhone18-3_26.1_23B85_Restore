@interface CTLazuliChatBotTelephoneInformation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotTelephoneInformation:(id)information;
- (CTLazuliChatBotTelephoneInformation)initWithCoder:(id)coder;
- (CTLazuliChatBotTelephoneInformation)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotTelephoneInformation

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  label = [(CTLazuliChatBotTelephoneInformation *)self label];
  [v3 appendFormat:@", label = %@", label];

  telNumber = [(CTLazuliChatBotTelephoneInformation *)self telNumber];
  [v3 appendFormat:@", telNumber = %@", telNumber];

  telephoneType = [(CTLazuliChatBotTelephoneInformation *)self telephoneType];
  [v3 appendFormat:@", telephoneType = %@", telephoneType];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotTelephoneInformation:(id)information
{
  informationCopy = information;
  label = [(CTLazuliChatBotTelephoneInformation *)self label];
  label2 = [informationCopy label];
  if (label != label2)
  {
    label3 = [(CTLazuliChatBotTelephoneInformation *)self label];
    label4 = [informationCopy label];
    if (![label3 isEqualToString:?])
    {
      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  telNumber = [(CTLazuliChatBotTelephoneInformation *)self telNumber];
  telNumber2 = [informationCopy telNumber];
  if (telNumber != telNumber2)
  {
    telNumber3 = [(CTLazuliChatBotTelephoneInformation *)self telNumber];
    telNumber4 = [informationCopy telNumber];
    if (![telNumber3 isEqualToCTLazuliChatBotTelephoneNumber:?])
    {
      v7 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  telephoneType = [(CTLazuliChatBotTelephoneInformation *)self telephoneType];
  telephoneType2 = [informationCopy telephoneType];
  v12 = telephoneType2;
  if (telephoneType == telephoneType2)
  {

    v7 = 1;
  }

  else
  {
    telephoneType3 = [(CTLazuliChatBotTelephoneInformation *)self telephoneType];
    telephoneType4 = [informationCopy telephoneType];
    v7 = [telephoneType3 isEqualToString:telephoneType4];
  }

  if (telNumber != telNumber2)
  {
    goto LABEL_11;
  }

LABEL_12:

  if (label != label2)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v7;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotTelephoneInformation *)self isEqualToCTLazuliChatBotTelephoneInformation:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotTelephoneInformation allocWithZone:?];
  v6 = [(NSString *)self->_label copyWithZone:zone];
  [(CTLazuliChatBotTelephoneInformation *)v5 setLabel:v6];

  v7 = [(CTLazuliChatBotTelephoneNumber *)self->_telNumber copyWithZone:zone];
  [(CTLazuliChatBotTelephoneInformation *)v5 setTelNumber:v7];

  v8 = [(NSString *)self->_telephoneType copyWithZone:zone];
  [(CTLazuliChatBotTelephoneInformation *)v5 setTelephoneType:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_label forKey:@"kLabelKey"];
  [coderCopy encodeObject:self->_telNumber forKey:@"kTelNumberKey"];
  [coderCopy encodeObject:self->_telephoneType forKey:@"kTelephoneTypeKey"];
}

- (CTLazuliChatBotTelephoneInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTLazuliChatBotTelephoneInformation;
  v5 = [(CTLazuliChatBotTelephoneInformation *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kLabelKey"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTelNumberKey"];
    telNumber = v5->_telNumber;
    v5->_telNumber = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTelephoneTypeKey"];
    telephoneType = v5->_telephoneType;
    v5->_telephoneType = v10;
  }

  return v5;
}

- (CTLazuliChatBotTelephoneInformation)initWithReflection:(const void *)reflection
{
  v17.receiver = self;
  v17.super_class = CTLazuliChatBotTelephoneInformation;
  v4 = [(CTLazuliChatBotTelephoneInformation *)&v17 init];
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
    label = v4->_label;
    v4->_label = v6;

    v8 = [[CTLazuliChatBotTelephoneNumber alloc] initWithReflection:reflection + 24];
    telNumber = v4->_telNumber;
    v4->_telNumber = v8;

    v12 = *(reflection + 6);
    v11 = reflection + 48;
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