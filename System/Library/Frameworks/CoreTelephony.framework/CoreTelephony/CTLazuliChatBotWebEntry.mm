@interface CTLazuliChatBotWebEntry
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotWebEntry:(id)entry;
- (CTLazuliChatBotWebEntry)initWithCoder:(id)coder;
- (CTLazuliChatBotWebEntry)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotWebEntry

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  label = [(CTLazuliChatBotWebEntry *)self label];
  [v3 appendFormat:@", label = %@", label];

  v5 = [(CTLazuliChatBotWebEntry *)self url];
  [v3 appendFormat:@", url = %@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotWebEntry:(id)entry
{
  entryCopy = entry;
  label = [(CTLazuliChatBotWebEntry *)self label];
  label2 = [entryCopy label];
  if (label != label2)
  {
    label3 = [(CTLazuliChatBotWebEntry *)self label];
    label4 = [entryCopy label];
    if (![label3 isEqualToString:label4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [(CTLazuliChatBotWebEntry *)self url];
  v11 = [entryCopy url];
  v12 = v11;
  if (v10 == v11)
  {

    v9 = 1;
  }

  else
  {
    v13 = [(CTLazuliChatBotWebEntry *)self url];
    v14 = [entryCopy url];
    v9 = [v13 isEqual:v14];
  }

  if (label != label2)
  {
    goto LABEL_8;
  }

LABEL_9:

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotWebEntry *)self isEqualToCTLazuliChatBotWebEntry:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotWebEntry allocWithZone:?];
  v6 = [(NSString *)self->_label copyWithZone:zone];
  [(CTLazuliChatBotWebEntry *)v5 setLabel:v6];

  v7 = [(NSURL *)self->_url copyWithZone:zone];
  [(CTLazuliChatBotWebEntry *)v5 setUrl:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_label forKey:@"kLabelKey"];
  [coderCopy encodeObject:self->_url forKey:@"kUrlKey"];
}

- (CTLazuliChatBotWebEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotWebEntry;
  v5 = [(CTLazuliChatBotWebEntry *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kLabelKey"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kUrlKey"];
    url = v5->_url;
    v5->_url = v8;
  }

  return v5;
}

- (CTLazuliChatBotWebEntry)initWithReflection:(const void *)reflection
{
  v20.receiver = self;
  v20.super_class = CTLazuliChatBotWebEntry;
  v4 = [(CTLazuliChatBotWebEntry *)&v20 init];
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

    v8 = MEMORY[0x1E695DFF8];
    v9 = MEMORY[0x1E696AEC0];
    v12 = *(reflection + 3);
    v10 = reflection + 24;
    v11 = v12;
    v13 = v10[23];
    defaultCStringEncoding = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
    if (v13 >= 0)
    {
      v15 = v10;
    }

    else
    {
      v15 = v11;
    }

    v16 = [v9 stringWithCString:v15 encoding:defaultCStringEncoding];
    v17 = [v8 URLWithString:v16];
    url = v4->_url;
    v4->_url = v17;
  }

  return v4;
}

@end