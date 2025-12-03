@interface CTLazuliChatBotRenderInformationData
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotRenderInformationData:(id)data;
- (CTLazuliChatBotRenderInformationData)initWithCoder:(id)coder;
- (CTLazuliChatBotRenderInformationData)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotRenderInformationData

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  renderInformation = [(CTLazuliChatBotRenderInformationData *)self renderInformation];
  [v3 appendFormat:@", renderInformation = %@", renderInformation];

  cacheType = [(CTLazuliChatBotRenderInformationData *)self cacheType];
  cacheType2 = [(CTLazuliChatBotRenderInformationData *)self cacheType];
  [v3 appendFormat:@", cacheType = [%ld - %s]", cacheType, print_CTLazuliChatBotRenderInformationCacheType(&cacheType2)];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotRenderInformationData:(id)data
{
  dataCopy = data;
  renderInformation = [(CTLazuliChatBotRenderInformationData *)self renderInformation];
  renderInformation2 = [dataCopy renderInformation];
  if (renderInformation != renderInformation2)
  {
    renderInformation3 = [(CTLazuliChatBotRenderInformationData *)self renderInformation];
    renderInformation4 = [dataCopy renderInformation];
    if (![renderInformation3 isEqualToCTLazuliChatBotRenderInformation:renderInformation4])
    {
      v9 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  cacheType = [(CTLazuliChatBotRenderInformationData *)self cacheType];
  v9 = cacheType == [dataCopy cacheType];
  if (renderInformation != renderInformation2)
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotRenderInformationData *)self isEqualToCTLazuliChatBotRenderInformationData:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotRenderInformationData allocWithZone:?];
  v6 = [(CTLazuliChatBotRenderInformation *)self->_renderInformation copyWithZone:zone];
  [(CTLazuliChatBotRenderInformationData *)v5 setRenderInformation:v6];

  [(CTLazuliChatBotRenderInformationData *)v5 setCacheType:self->_cacheType];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_renderInformation forKey:@"kRenderInformationKey"];
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_cacheType];
  [coderCopy encodeObject:v4 forKey:@"kCacheTypeKey"];
}

- (CTLazuliChatBotRenderInformationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CTLazuliChatBotRenderInformationData;
  v5 = [(CTLazuliChatBotRenderInformationData *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kRenderInformationKey"];
    renderInformation = v5->_renderInformation;
    v5->_renderInformation = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCacheTypeKey"];
    v5->_cacheType = [v8 longValue];
  }

  return v5;
}

- (CTLazuliChatBotRenderInformationData)initWithReflection:(const void *)reflection
{
  v10.receiver = self;
  v10.super_class = CTLazuliChatBotRenderInformationData;
  v4 = [(CTLazuliChatBotRenderInformationData *)&v10 init];
  if (v4)
  {
    if (*(reflection + 688) == 1)
    {
      v5 = [CTLazuliChatBotRenderInformation alloc];
      if ((*(reflection + 688) & 1) == 0)
      {
        v9 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v9);
      }

      v6 = [(CTLazuliChatBotRenderInformation *)v5 initWithReflection:reflection];
    }

    else
    {
      v6 = 0;
    }

    renderInformation = v4->_renderInformation;
    v4->_renderInformation = v6;

    v4->_cacheType = encode_CTLazuliChatBotCardMediaHeightType(reflection + 174);
  }

  return v4;
}

@end