@interface CTLazuliChatBotOrgDescription
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotOrgDescription:(id)description;
- (CTLazuliChatBotOrgDescription)initWithCoder:(id)coder;
- (CTLazuliChatBotOrgDescription)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliChatBotOrgDescription

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  orgDescription = [(CTLazuliChatBotOrgDescription *)self orgDescription];
  [v3 appendFormat:@", orgDescription = %@", orgDescription];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotOrgDescription:(id)description
{
  descriptionCopy = description;
  orgDescription = [(CTLazuliChatBotOrgDescription *)self orgDescription];
  orgDescription2 = [descriptionCopy orgDescription];
  if (orgDescription == orgDescription2)
  {
    v9 = 1;
  }

  else
  {
    orgDescription3 = [(CTLazuliChatBotOrgDescription *)self orgDescription];
    orgDescription4 = [descriptionCopy orgDescription];
    v9 = [orgDescription3 isEqualToString:orgDescription4];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotOrgDescription *)self isEqualToCTLazuliChatBotOrgDescription:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotOrgDescription allocWithZone:?];
  v6 = [(NSString *)self->_orgDescription copyWithZone:zone];
  [(CTLazuliChatBotOrgDescription *)v5 setOrgDescription:v6];

  return v5;
}

- (CTLazuliChatBotOrgDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotOrgDescription;
  v5 = [(CTLazuliChatBotOrgDescription *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kOrgDescriptionKey"];
    orgDescription = v5->_orgDescription;
    v5->_orgDescription = v6;
  }

  return v5;
}

- (CTLazuliChatBotOrgDescription)initWithReflection:(const void *)reflection
{
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotOrgDescription;
  v4 = [(CTLazuliChatBotOrgDescription *)&v9 init];
  if (v4)
  {
    if (*(reflection + 24) == 1)
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
    }

    else
    {
      v6 = 0;
    }

    orgDescription = v4->_orgDescription;
    v4->_orgDescription = v6;
  }

  return v4;
}

@end