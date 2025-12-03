@interface CTLazuliChatBotPostbackData
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotPostbackData:(id)data;
- (CTLazuliChatBotPostbackData)initWithCoder:(id)coder;
- (CTLazuliChatBotPostbackData)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliChatBotPostbackData

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  data = [(CTLazuliChatBotPostbackData *)self data];
  [v3 appendFormat:@", data = %@", data];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotPostbackData:(id)data
{
  dataCopy = data;
  data = [(CTLazuliChatBotPostbackData *)self data];
  data2 = [dataCopy data];
  if (data == data2)
  {
    v9 = 1;
  }

  else
  {
    data3 = [(CTLazuliChatBotPostbackData *)self data];
    data4 = [dataCopy data];
    v9 = [data3 isEqualToString:data4];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotPostbackData *)self isEqualToCTLazuliChatBotPostbackData:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotPostbackData allocWithZone:?];
  v6 = [(NSString *)self->_data copyWithZone:zone];
  [(CTLazuliChatBotPostbackData *)v5 setData:v6];

  return v5;
}

- (CTLazuliChatBotPostbackData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotPostbackData;
  v5 = [(CTLazuliChatBotPostbackData *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kDataKey"];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (CTLazuliChatBotPostbackData)initWithReflection:(const void *)reflection
{
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotPostbackData;
  v4 = [(CTLazuliChatBotPostbackData *)&v9 init];
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
    data = v4->_data;
    v4->_data = v6;
  }

  return v4;
}

@end