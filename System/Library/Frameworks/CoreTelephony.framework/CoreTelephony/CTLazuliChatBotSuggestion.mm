@interface CTLazuliChatBotSuggestion
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotSuggestion:(id)suggestion;
- (CTLazuliChatBotSuggestion)initWithCoder:(id)coder;
- (CTLazuliChatBotSuggestion)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotSuggestion

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  displayText = [(CTLazuliChatBotSuggestion *)self displayText];
  [v3 appendFormat:@", displayText = %@", displayText];

  postback = [(CTLazuliChatBotSuggestion *)self postback];
  [v3 appendFormat:@", postback = %@", postback];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  displayText = [(CTLazuliChatBotSuggestion *)self displayText];
  displayText2 = [suggestionCopy displayText];
  if (displayText != displayText2)
  {
    displayText3 = [(CTLazuliChatBotSuggestion *)self displayText];
    displayText4 = [suggestionCopy displayText];
    if (![displayText3 isEqualToString:displayText4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  postback = [(CTLazuliChatBotSuggestion *)self postback];
  postback2 = [suggestionCopy postback];
  v12 = postback2;
  if (postback == postback2)
  {

    v9 = 1;
  }

  else
  {
    postback3 = [(CTLazuliChatBotSuggestion *)self postback];
    postback4 = [suggestionCopy postback];
    v9 = [postback3 isEqualToCTLazuliChatBotPostbackData:postback4];
  }

  if (displayText != displayText2)
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotSuggestion *)self isEqualToCTLazuliChatBotSuggestion:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotSuggestion allocWithZone:?];
  v6 = [(NSString *)self->_displayText copyWithZone:zone];
  [(CTLazuliChatBotSuggestion *)v5 setDisplayText:v6];

  v7 = [(CTLazuliChatBotPostbackData *)self->_postback copyWithZone:zone];
  [(CTLazuliChatBotSuggestion *)v5 setPostback:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_displayText forKey:@"kDisplayTextKey"];
  [coderCopy encodeObject:self->_postback forKey:@"kPostbackKey"];
}

- (CTLazuliChatBotSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTLazuliChatBotSuggestion;
  v5 = [(CTLazuliChatBotSuggestion *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kDisplayTextKey"];
    displayText = v5->_displayText;
    v5->_displayText = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPostbackKey"];
    postback = v5->_postback;
    v5->_postback = v8;
  }

  return v5;
}

- (CTLazuliChatBotSuggestion)initWithReflection:(const void *)reflection
{
  v14.receiver = self;
  v14.super_class = CTLazuliChatBotSuggestion;
  v4 = [(CTLazuliChatBotSuggestion *)&v14 init];
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
    displayText = v4->_displayText;
    v4->_displayText = v6;

    if (*(reflection + 48) == 1)
    {
      v8 = v4;
      v9 = [CTLazuliChatBotPostbackData alloc];
      if ((*(reflection + 48) & 1) == 0)
      {
        v13 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v13);
      }

      v10 = [(CTLazuliChatBotPostbackData *)v9 initWithReflection:reflection + 24];
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