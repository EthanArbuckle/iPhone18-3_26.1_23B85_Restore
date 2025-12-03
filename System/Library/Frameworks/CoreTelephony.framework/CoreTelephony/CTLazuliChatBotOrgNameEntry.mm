@interface CTLazuliChatBotOrgNameEntry
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotOrgNameEntry:(id)entry;
- (CTLazuliChatBotOrgNameEntry)initWithCoder:(id)coder;
- (CTLazuliChatBotOrgNameEntry)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotOrgNameEntry

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  displayName = [(CTLazuliChatBotOrgNameEntry *)self displayName];
  [v3 appendFormat:@", displayName = %@", displayName];

  type = [(CTLazuliChatBotOrgNameEntry *)self type];
  type2 = [(CTLazuliChatBotOrgNameEntry *)self type];
  [v3 appendFormat:@", type = [%ld - %s]", type, print_CTLazuliChatBotOrgNameType(&type2)];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotOrgNameEntry:(id)entry
{
  entryCopy = entry;
  displayName = [(CTLazuliChatBotOrgNameEntry *)self displayName];
  displayName2 = [entryCopy displayName];
  if (displayName != displayName2)
  {
    displayName3 = [(CTLazuliChatBotOrgNameEntry *)self displayName];
    displayName4 = [entryCopy displayName];
    if (![displayName3 isEqualToString:displayName4])
    {
      v9 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  type = [(CTLazuliChatBotOrgNameEntry *)self type];
  v9 = type == [entryCopy type];
  if (displayName != displayName2)
  {
    goto LABEL_5;
  }

LABEL_6:

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotOrgNameEntry *)self isEqualToCTLazuliChatBotOrgNameEntry:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotOrgNameEntry allocWithZone:?];
  v6 = [(NSString *)self->_displayName copyWithZone:zone];
  [(CTLazuliChatBotOrgNameEntry *)v5 setDisplayName:v6];

  [(CTLazuliChatBotOrgNameEntry *)v5 setType:self->_type];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_displayName forKey:@"kDisplayNameKey"];
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_type];
  [coderCopy encodeObject:v4 forKey:@"kTypeKey"];
}

- (CTLazuliChatBotOrgNameEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CTLazuliChatBotOrgNameEntry;
  v5 = [(CTLazuliChatBotOrgNameEntry *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kDisplayNameKey"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTypeKey"];
    v5->_type = [v8 longValue];
  }

  return v5;
}

- (CTLazuliChatBotOrgNameEntry)initWithReflection:(const void *)reflection
{
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotOrgNameEntry;
  v4 = [(CTLazuliChatBotOrgNameEntry *)&v9 init];
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

    displayName = v4->_displayName;
    v4->_displayName = v6;

    v4->_type = encode_CTLazuliChatBotMediaLabelType(reflection + 8);
  }

  return v4;
}

@end