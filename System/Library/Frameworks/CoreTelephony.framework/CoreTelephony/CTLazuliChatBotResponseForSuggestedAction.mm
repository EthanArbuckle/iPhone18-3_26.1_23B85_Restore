@interface CTLazuliChatBotResponseForSuggestedAction
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotResponseForSuggestedAction:(id)action;
- (CTLazuliChatBotResponseForSuggestedAction)initWithCoder:(id)coder;
- (CTLazuliChatBotResponseForSuggestedAction)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliChatBotResponseForSuggestedAction

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  displayText = [(CTLazuliChatBotResponseForSuggestedAction *)self displayText];
  [v3 appendFormat:@", displayText = %@", displayText];

  postBackData = [(CTLazuliChatBotResponseForSuggestedAction *)self postBackData];
  [v3 appendFormat:@", postBackData = %@", postBackData];

  inReplyToID = [(CTLazuliChatBotResponseForSuggestedAction *)self inReplyToID];
  [v3 appendFormat:@", inReplyToID = %@", inReplyToID];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotResponseForSuggestedAction:(id)action
{
  actionCopy = action;
  displayText = [(CTLazuliChatBotResponseForSuggestedAction *)self displayText];
  displayText2 = [actionCopy displayText];
  if (displayText != displayText2)
  {
    displayText3 = [(CTLazuliChatBotResponseForSuggestedAction *)self displayText];
    displayText4 = [actionCopy displayText];
    if (![displayText3 isEqualToString:?])
    {
      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  postBackData = [(CTLazuliChatBotResponseForSuggestedAction *)self postBackData];
  postBackData2 = [actionCopy postBackData];
  if (postBackData != postBackData2)
  {
    postBackData3 = [(CTLazuliChatBotResponseForSuggestedAction *)self postBackData];
    postBackData4 = [actionCopy postBackData];
    if (![postBackData3 isEqualToCTLazuliChatBotPostbackData:?])
    {
      v7 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  inReplyToID = [(CTLazuliChatBotResponseForSuggestedAction *)self inReplyToID];
  inReplyToID2 = [actionCopy inReplyToID];
  v12 = inReplyToID2;
  if (inReplyToID == inReplyToID2)
  {

    v7 = 1;
  }

  else
  {
    inReplyToID3 = [(CTLazuliChatBotResponseForSuggestedAction *)self inReplyToID];
    inReplyToID4 = [actionCopy inReplyToID];
    v7 = [inReplyToID3 isEqualToCTLazuliMessageID:inReplyToID4];
  }

  if (postBackData != postBackData2)
  {
    goto LABEL_11;
  }

LABEL_12:

  if (displayText != displayText2)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v7;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotResponseForSuggestedAction *)self isEqualToCTLazuliChatBotResponseForSuggestedAction:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotResponseForSuggestedAction allocWithZone:?];
  v6 = [(NSString *)self->_displayText copyWithZone:zone];
  [(CTLazuliChatBotResponseForSuggestedAction *)v5 setDisplayText:v6];

  v7 = [(CTLazuliChatBotPostbackData *)self->_postBackData copyWithZone:zone];
  [(CTLazuliChatBotResponseForSuggestedAction *)v5 setPostBackData:v7];

  v8 = [(CTLazuliMessageID *)self->_inReplyToID copyWithZone:zone];
  [(CTLazuliChatBotResponseForSuggestedAction *)v5 setInReplyToID:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_displayText forKey:@"kDisplayTextKey"];
  [coderCopy encodeObject:self->_postBackData forKey:@"kPostBackDataKey"];
  [coderCopy encodeObject:self->_inReplyToID forKey:@"kInReplyToIDKey"];
}

- (CTLazuliChatBotResponseForSuggestedAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTLazuliChatBotResponseForSuggestedAction;
  v5 = [(CTLazuliChatBotResponseForSuggestedAction *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kDisplayTextKey"];
    displayText = v5->_displayText;
    v5->_displayText = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPostBackDataKey"];
    postBackData = v5->_postBackData;
    v5->_postBackData = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kInReplyToIDKey"];
    inReplyToID = v5->_inReplyToID;
    v5->_inReplyToID = v10;
  }

  return v5;
}

- (CTLazuliChatBotResponseForSuggestedAction)initWithReflection:(const void *)reflection
{
  v13.receiver = self;
  v13.super_class = CTLazuliChatBotResponseForSuggestedAction;
  v4 = [(CTLazuliChatBotResponseForSuggestedAction *)&v13 init];
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

    v8 = [[CTLazuliChatBotPostbackData alloc] initWithReflection:reflection + 24];
    postBackData = v4->_postBackData;
    v4->_postBackData = v8;

    v10 = [[CTLazuliMessageID alloc] initWithReflection:reflection + 48];
    inReplyToID = v4->_inReplyToID;
    v4->_inReplyToID = v10;
  }

  return v4;
}

@end