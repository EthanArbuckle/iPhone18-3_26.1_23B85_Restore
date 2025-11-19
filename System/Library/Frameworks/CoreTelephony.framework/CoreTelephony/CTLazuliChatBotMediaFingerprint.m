@interface CTLazuliChatBotMediaFingerprint
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotMediaFingerprint:(id)a3;
- (CTLazuliChatBotMediaFingerprint)initWithCoder:(id)a3;
- (CTLazuliChatBotMediaFingerprint)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliChatBotMediaFingerprint

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotMediaFingerprint *)self data];
  [v3 appendFormat:@", data = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotMediaFingerprint:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotMediaFingerprint *)self data];
  v6 = [v4 data];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliChatBotMediaFingerprint *)self data];
    v8 = [v4 data];
    v9 = [v7 isEqualToData:v8];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotMediaFingerprint *)self isEqualToCTLazuliChatBotMediaFingerprint:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotMediaFingerprint allocWithZone:?];
  v6 = [(NSData *)self->_data copyWithZone:a3];
  [(CTLazuliChatBotMediaFingerprint *)v5 setData:v6];

  return v5;
}

- (CTLazuliChatBotMediaFingerprint)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotMediaFingerprint;
  v5 = [(CTLazuliChatBotMediaFingerprint *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kDataKey"];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (CTLazuliChatBotMediaFingerprint)initWithReflection:(const void *)a3
{
  v8.receiver = self;
  v8.super_class = CTLazuliChatBotMediaFingerprint;
  v4 = [(CTLazuliChatBotMediaFingerprint *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:*a3 length:*(a3 + 1) - *a3];
    data = v4->_data;
    v4->_data = v5;
  }

  return v4;
}

@end