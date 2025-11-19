@interface CTLazuliDeepLinkBase64StringDecoded
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliDeepLinkBase64StringDecoded:(id)a3;
- (CTLazuliDeepLinkBase64StringDecoded)initWithCoder:(id)a3;
- (CTLazuliDeepLinkBase64StringDecoded)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliDeepLinkBase64StringDecoded

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliDeepLinkBase64StringDecoded *)self chipList];
  [v3 appendFormat:@", chipList = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliDeepLinkBase64StringDecoded:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliDeepLinkBase64StringDecoded *)self chipList];
  v6 = [v4 chipList];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliDeepLinkBase64StringDecoded *)self chipList];
    v8 = [v4 chipList];
    v9 = [v7 isEqualToCTLazuliChatBotSuggestedChipList:v8];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliDeepLinkBase64StringDecoded *)self isEqualToCTLazuliDeepLinkBase64StringDecoded:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliDeepLinkBase64StringDecoded allocWithZone:?];
  v6 = [(CTLazuliChatBotSuggestedChipList *)self->_chipList copyWithZone:a3];
  [(CTLazuliDeepLinkBase64StringDecoded *)v5 setChipList:v6];

  return v5;
}

- (CTLazuliDeepLinkBase64StringDecoded)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTLazuliDeepLinkBase64StringDecoded;
  v5 = [(CTLazuliDeepLinkBase64StringDecoded *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kChipListKey"];
    chipList = v5->_chipList;
    v5->_chipList = v6;
  }

  return v5;
}

- (CTLazuliDeepLinkBase64StringDecoded)initWithReflection:(const void *)a3
{
  v12.receiver = self;
  v12.super_class = CTLazuliDeepLinkBase64StringDecoded;
  v4 = [(CTLazuliDeepLinkBase64StringDecoded *)&v12 init];
  v5 = v4;
  if (v4)
  {
    if (*(a3 + 24) == 1)
    {
      v6 = v4;
      v7 = [CTLazuliChatBotSuggestedChipList alloc];
      if ((*(a3 + 24) & 1) == 0)
      {
        v11 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v11);
      }

      v8 = [(CTLazuliChatBotSuggestedChipList *)v7 initWithReflection:a3];
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