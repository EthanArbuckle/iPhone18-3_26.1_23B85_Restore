@interface CTLazuliChatBotOrgDescription
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotOrgDescription:(id)a3;
- (CTLazuliChatBotOrgDescription)initWithCoder:(id)a3;
- (CTLazuliChatBotOrgDescription)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliChatBotOrgDescription

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotOrgDescription *)self orgDescription];
  [v3 appendFormat:@", orgDescription = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotOrgDescription:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotOrgDescription *)self orgDescription];
  v6 = [v4 orgDescription];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliChatBotOrgDescription *)self orgDescription];
    v8 = [v4 orgDescription];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotOrgDescription *)self isEqualToCTLazuliChatBotOrgDescription:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotOrgDescription allocWithZone:?];
  v6 = [(NSString *)self->_orgDescription copyWithZone:a3];
  [(CTLazuliChatBotOrgDescription *)v5 setOrgDescription:v6];

  return v5;
}

- (CTLazuliChatBotOrgDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotOrgDescription;
  v5 = [(CTLazuliChatBotOrgDescription *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kOrgDescriptionKey"];
    orgDescription = v5->_orgDescription;
    v5->_orgDescription = v6;
  }

  return v5;
}

- (CTLazuliChatBotOrgDescription)initWithReflection:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotOrgDescription;
  v4 = [(CTLazuliChatBotOrgDescription *)&v9 init];
  if (v4)
  {
    if (*(a3 + 24) == 1)
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