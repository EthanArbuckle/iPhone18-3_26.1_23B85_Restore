@interface CTLazuliDeepLinkBase64StringDecoded
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliDeepLinkBase64StringDecoded:(id)decoded;
- (CTLazuliDeepLinkBase64StringDecoded)initWithCoder:(id)coder;
- (CTLazuliDeepLinkBase64StringDecoded)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliDeepLinkBase64StringDecoded

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  chipList = [(CTLazuliDeepLinkBase64StringDecoded *)self chipList];
  [v3 appendFormat:@", chipList = %@", chipList];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliDeepLinkBase64StringDecoded:(id)decoded
{
  decodedCopy = decoded;
  chipList = [(CTLazuliDeepLinkBase64StringDecoded *)self chipList];
  chipList2 = [decodedCopy chipList];
  if (chipList == chipList2)
  {
    v9 = 1;
  }

  else
  {
    chipList3 = [(CTLazuliDeepLinkBase64StringDecoded *)self chipList];
    chipList4 = [decodedCopy chipList];
    v9 = [chipList3 isEqualToCTLazuliChatBotSuggestedChipList:chipList4];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliDeepLinkBase64StringDecoded *)self isEqualToCTLazuliDeepLinkBase64StringDecoded:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliDeepLinkBase64StringDecoded allocWithZone:?];
  v6 = [(CTLazuliChatBotSuggestedChipList *)self->_chipList copyWithZone:zone];
  [(CTLazuliDeepLinkBase64StringDecoded *)v5 setChipList:v6];

  return v5;
}

- (CTLazuliDeepLinkBase64StringDecoded)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliDeepLinkBase64StringDecoded;
  v5 = [(CTLazuliDeepLinkBase64StringDecoded *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kChipListKey"];
    chipList = v5->_chipList;
    v5->_chipList = v6;
  }

  return v5;
}

- (CTLazuliDeepLinkBase64StringDecoded)initWithReflection:(const void *)reflection
{
  v12.receiver = self;
  v12.super_class = CTLazuliDeepLinkBase64StringDecoded;
  v4 = [(CTLazuliDeepLinkBase64StringDecoded *)&v12 init];
  v5 = v4;
  if (v4)
  {
    if (*(reflection + 24) == 1)
    {
      v6 = v4;
      v7 = [CTLazuliChatBotSuggestedChipList alloc];
      if ((*(reflection + 24) & 1) == 0)
      {
        v11 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v11);
      }

      v8 = [(CTLazuliChatBotSuggestedChipList *)v7 initWithReflection:reflection];
    }

    else
    {
      v8 = 0;
    }

    chipList = v5->_chipList;
    v5->_chipList = v8;
  }

  return v5;
}

@end