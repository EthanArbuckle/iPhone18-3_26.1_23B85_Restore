@interface CTLazuliChatBotSuggestion
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotSuggestion:(id)a3;
- (CTLazuliChatBotSuggestion)initWithCoder:(id)a3;
- (CTLazuliChatBotSuggestion)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotSuggestion

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotSuggestion *)self displayText];
  [v3 appendFormat:@", displayText = %@", v4];

  v5 = [(CTLazuliChatBotSuggestion *)self postback];
  [v3 appendFormat:@", postback = %@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotSuggestion:(id)a3
{
  v6 = a3;
  v7 = [(CTLazuliChatBotSuggestion *)self displayText];
  v8 = [v6 displayText];
  if (v7 != v8)
  {
    v3 = [(CTLazuliChatBotSuggestion *)self displayText];
    v4 = [v6 displayText];
    if (![v3 isEqualToString:v4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [(CTLazuliChatBotSuggestion *)self postback];
  v11 = [v6 postback];
  v12 = v11;
  if (v10 == v11)
  {

    v9 = 1;
  }

  else
  {
    v13 = [(CTLazuliChatBotSuggestion *)self postback];
    v14 = [v6 postback];
    v9 = [v13 isEqualToCTLazuliChatBotPostbackData:v14];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotSuggestion *)self isEqualToCTLazuliChatBotSuggestion:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotSuggestion allocWithZone:?];
  v6 = [(NSString *)self->_displayText copyWithZone:a3];
  [(CTLazuliChatBotSuggestion *)v5 setDisplayText:v6];

  v7 = [(CTLazuliChatBotPostbackData *)self->_postback copyWithZone:a3];
  [(CTLazuliChatBotSuggestion *)v5 setPostback:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_displayText forKey:@"kDisplayTextKey"];
  [v4 encodeObject:self->_postback forKey:@"kPostbackKey"];
}

- (CTLazuliChatBotSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotSuggestion;
  v5 = [(CTLazuliChatBotSuggestion *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kDisplayTextKey"];
    displayText = v5->_displayText;
    v5->_displayText = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPostbackKey"];
    postback = v5->_postback;
    v5->_postback = v8;
  }

  return v5;
}

- (CTLazuliChatBotSuggestion)initWithReflection:(const void *)a3
{
  v14.receiver = self;
  v14.super_class = CTLazuliChatBotSuggestion;
  v4 = [(CTLazuliChatBotSuggestion *)&v14 init];
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
    displayText = v4->_displayText;
    v4->_displayText = v6;

    if (*(a3 + 48) == 1)
    {
      v8 = v4;
      v9 = [CTLazuliChatBotPostbackData alloc];
      if ((*(a3 + 48) & 1) == 0)
      {
        v13 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v13);
      }

      v10 = [(CTLazuliChatBotPostbackData *)v9 initWithReflection:a3 + 24];
    }

    else
    {
      v10 = 0;
    }

    postback = v4->_postback;
    v4->_postback = v10;
  }

  return v4;
}

@end