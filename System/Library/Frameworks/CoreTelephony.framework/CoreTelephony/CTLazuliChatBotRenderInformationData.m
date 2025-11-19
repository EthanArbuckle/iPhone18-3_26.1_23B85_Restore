@interface CTLazuliChatBotRenderInformationData
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotRenderInformationData:(id)a3;
- (CTLazuliChatBotRenderInformationData)initWithCoder:(id)a3;
- (CTLazuliChatBotRenderInformationData)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotRenderInformationData

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotRenderInformationData *)self renderInformation];
  [v3 appendFormat:@", renderInformation = %@", v4];

  v5 = [(CTLazuliChatBotRenderInformationData *)self cacheType];
  v7 = [(CTLazuliChatBotRenderInformationData *)self cacheType];
  [v3 appendFormat:@", cacheType = [%ld - %s]", v5, print_CTLazuliChatBotRenderInformationCacheType(&v7)];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotRenderInformationData:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliChatBotRenderInformationData *)self renderInformation];
  v8 = [v6 renderInformation];
  if (v7 != v8)
  {
    v3 = [(CTLazuliChatBotRenderInformationData *)self renderInformation];
    v4 = [v6 renderInformation];
    if (![v3 isEqualToCTLazuliChatBotRenderInformation:v4])
    {
      v9 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v10 = [(CTLazuliChatBotRenderInformationData *)self cacheType];
  v9 = v10 == [v6 cacheType];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotRenderInformationData *)self isEqualToCTLazuliChatBotRenderInformationData:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotRenderInformationData allocWithZone:?];
  v6 = [(CTLazuliChatBotRenderInformation *)self->_renderInformation copyWithZone:a3];
  [(CTLazuliChatBotRenderInformationData *)v5 setRenderInformation:v6];

  [(CTLazuliChatBotRenderInformationData *)v5 setCacheType:self->_cacheType];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_renderInformation forKey:@"kRenderInformationKey"];
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_cacheType];
  [v5 encodeObject:v4 forKey:@"kCacheTypeKey"];
}

- (CTLazuliChatBotRenderInformationData)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CTLazuliChatBotRenderInformationData;
  v5 = [(CTLazuliChatBotRenderInformationData *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kRenderInformationKey"];
    renderInformation = v5->_renderInformation;
    v5->_renderInformation = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCacheTypeKey"];
    v5->_cacheType = [v8 longValue];
  }

  return v5;
}

- (CTLazuliChatBotRenderInformationData)initWithReflection:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = CTLazuliChatBotRenderInformationData;
  v4 = [(CTLazuliChatBotRenderInformationData *)&v10 init];
  if (v4)
  {
    if (*(a3 + 688) == 1)
    {
      v5 = [CTLazuliChatBotRenderInformation alloc];
      if ((*(a3 + 688) & 1) == 0)
      {
        v9 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v9);
      }

      v6 = [(CTLazuliChatBotRenderInformation *)v5 initWithReflection:a3];
    }

    else
    {
      v6 = 0;
    }

    renderInformation = v4->_renderInformation;
    v4->_renderInformation = v6;

    v4->_cacheType = encode_CTLazuliChatBotCardMediaHeightType(a3 + 174);
  }

  return v4;
}

@end