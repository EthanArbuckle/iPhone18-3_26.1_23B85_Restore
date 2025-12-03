@interface CTLazuliChatBotMediaFingerprint
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotMediaFingerprint:(id)fingerprint;
- (CTLazuliChatBotMediaFingerprint)initWithCoder:(id)coder;
- (CTLazuliChatBotMediaFingerprint)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliChatBotMediaFingerprint

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  data = [(CTLazuliChatBotMediaFingerprint *)self data];
  [v3 appendFormat:@", data = %@", data];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotMediaFingerprint:(id)fingerprint
{
  fingerprintCopy = fingerprint;
  data = [(CTLazuliChatBotMediaFingerprint *)self data];
  data2 = [fingerprintCopy data];
  if (data == data2)
  {
    v9 = 1;
  }

  else
  {
    data3 = [(CTLazuliChatBotMediaFingerprint *)self data];
    data4 = [fingerprintCopy data];
    v9 = [data3 isEqualToData:data4];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotMediaFingerprint *)self isEqualToCTLazuliChatBotMediaFingerprint:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotMediaFingerprint allocWithZone:?];
  v6 = [(NSData *)self->_data copyWithZone:zone];
  [(CTLazuliChatBotMediaFingerprint *)v5 setData:v6];

  return v5;
}

- (CTLazuliChatBotMediaFingerprint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotMediaFingerprint;
  v5 = [(CTLazuliChatBotMediaFingerprint *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kDataKey"];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (CTLazuliChatBotMediaFingerprint)initWithReflection:(const void *)reflection
{
  v8.receiver = self;
  v8.super_class = CTLazuliChatBotMediaFingerprint;
  v4 = [(CTLazuliChatBotMediaFingerprint *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:*reflection length:*(reflection + 1) - *reflection];
    data = v4->_data;
    v4->_data = v5;
  }

  return v4;
}

@end