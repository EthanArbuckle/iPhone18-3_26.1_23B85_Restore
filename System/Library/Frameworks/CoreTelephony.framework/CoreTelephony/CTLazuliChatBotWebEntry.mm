@interface CTLazuliChatBotWebEntry
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotWebEntry:(id)a3;
- (CTLazuliChatBotWebEntry)initWithCoder:(id)a3;
- (CTLazuliChatBotWebEntry)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotWebEntry

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotWebEntry *)self label];
  [v3 appendFormat:@", label = %@", v4];

  v5 = [(CTLazuliChatBotWebEntry *)self url];
  [v3 appendFormat:@", url = %@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotWebEntry:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliChatBotWebEntry *)self label];
  v8 = [v6 label];
  if (v7 != v8)
  {
    v3 = [(CTLazuliChatBotWebEntry *)self label];
    v4 = [v6 label];
    if (![v3 isEqualToString:v4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [(CTLazuliChatBotWebEntry *)self url];
  v11 = [v6 url];
  v12 = v11;
  if (v10 == v11)
  {

    v9 = 1;
  }

  else
  {
    v13 = [(CTLazuliChatBotWebEntry *)self url];
    v14 = [v6 url];
    v9 = [v13 isEqual:v14];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotWebEntry *)self isEqualToCTLazuliChatBotWebEntry:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotWebEntry allocWithZone:?];
  v6 = [(NSString *)self->_label copyWithZone:a3];
  [(CTLazuliChatBotWebEntry *)v5 setLabel:v6];

  v7 = [(NSURL *)self->_url copyWithZone:a3];
  [(CTLazuliChatBotWebEntry *)v5 setUrl:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_label forKey:@"kLabelKey"];
  [v4 encodeObject:self->_url forKey:@"kUrlKey"];
}

- (CTLazuliChatBotWebEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotWebEntry;
  v5 = [(CTLazuliChatBotWebEntry *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kLabelKey"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kUrlKey"];
    url = v5->_url;
    v5->_url = v8;
  }

  return v5;
}

- (CTLazuliChatBotWebEntry)initWithReflection:(const void *)a3
{
  v20.receiver = self;
  v20.super_class = CTLazuliChatBotWebEntry;
  v4 = [(CTLazuliChatBotWebEntry *)&v20 init];
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

    v8 = MEMORY[0x1E695DFF8];
    v9 = MEMORY[0x1E696AEC0];
    v12 = *(a3 + 3);
    v10 = a3 + 24;
    v11 = v12;
    v13 = v10[23];
    v14 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
    if (v13 >= 0)
    {
      v15 = v10;
    }

    else
    {
      v15 = v11;
    }

    v16 = [v9 stringWithCString:v15 encoding:v14];
    v17 = [v8 URLWithString:v16];
    url = v4->_url;
    v4->_url = v17;
  }

  return v4;
}

@end