@interface CTLazuliChatBotOrgNameEntry
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotOrgNameEntry:(id)a3;
- (CTLazuliChatBotOrgNameEntry)initWithCoder:(id)a3;
- (CTLazuliChatBotOrgNameEntry)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotOrgNameEntry

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotOrgNameEntry *)self displayName];
  [v3 appendFormat:@", displayName = %@", v4];

  v5 = [(CTLazuliChatBotOrgNameEntry *)self type];
  v7 = [(CTLazuliChatBotOrgNameEntry *)self type];
  [v3 appendFormat:@", type = [%ld - %s]", v5, print_CTLazuliChatBotOrgNameType(&v7)];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotOrgNameEntry:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliChatBotOrgNameEntry *)self displayName];
  v8 = [v6 displayName];
  if (v7 != v8)
  {
    v3 = [(CTLazuliChatBotOrgNameEntry *)self displayName];
    v4 = [v6 displayName];
    if (![v3 isEqualToString:v4])
    {
      v9 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v10 = [(CTLazuliChatBotOrgNameEntry *)self type];
  v9 = v10 == [v6 type];
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_6:

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotOrgNameEntry *)self isEqualToCTLazuliChatBotOrgNameEntry:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotOrgNameEntry allocWithZone:?];
  v6 = [(NSString *)self->_displayName copyWithZone:a3];
  [(CTLazuliChatBotOrgNameEntry *)v5 setDisplayName:v6];

  [(CTLazuliChatBotOrgNameEntry *)v5 setType:self->_type];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_displayName forKey:@"kDisplayNameKey"];
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_type];
  [v5 encodeObject:v4 forKey:@"kTypeKey"];
}

- (CTLazuliChatBotOrgNameEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CTLazuliChatBotOrgNameEntry;
  v5 = [(CTLazuliChatBotOrgNameEntry *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kDisplayNameKey"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTypeKey"];
    v5->_type = [v8 longValue];
  }

  return v5;
}

- (CTLazuliChatBotOrgNameEntry)initWithReflection:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotOrgNameEntry;
  v4 = [(CTLazuliChatBotOrgNameEntry *)&v9 init];
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

    displayName = v4->_displayName;
    v4->_displayName = v6;

    v4->_type = encode_CTLazuliChatBotMediaLabelType(a3 + 8);
  }

  return v4;
}

@end