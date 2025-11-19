@interface CTLazuliChatBotResponseForSuggestedReply
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotResponseForSuggestedReply:(id)a3;
- (CTLazuliChatBotResponseForSuggestedReply)initWithCoder:(id)a3;
- (CTLazuliChatBotResponseForSuggestedReply)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliChatBotResponseForSuggestedReply

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotResponseForSuggestedReply *)self displayText];
  [v3 appendFormat:@", displayText = %@", v4];

  v5 = [(CTLazuliChatBotResponseForSuggestedReply *)self postBackData];
  [v3 appendFormat:@", postBackData = %@", v5];

  v6 = [(CTLazuliChatBotResponseForSuggestedReply *)self inReplyToID];
  [v3 appendFormat:@", inReplyToID = %@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotResponseForSuggestedReply:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotResponseForSuggestedReply *)self displayText];
  v6 = [v4 displayText];
  if (v5 != v6)
  {
    v19 = [(CTLazuliChatBotResponseForSuggestedReply *)self displayText];
    v17 = [v4 displayText];
    if (![v19 isEqualToString:?])
    {
      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  v8 = [(CTLazuliChatBotResponseForSuggestedReply *)self postBackData];
  v9 = [v4 postBackData];
  if (v8 != v9)
  {
    v18 = [(CTLazuliChatBotResponseForSuggestedReply *)self postBackData];
    v16 = [v4 postBackData];
    if (![v18 isEqualToCTLazuliChatBotPostbackData:?])
    {
      v7 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  v10 = [(CTLazuliChatBotResponseForSuggestedReply *)self inReplyToID];
  v11 = [v4 inReplyToID];
  v12 = v11;
  if (v10 == v11)
  {

    v7 = 1;
  }

  else
  {
    v13 = [(CTLazuliChatBotResponseForSuggestedReply *)self inReplyToID];
    v14 = [v4 inReplyToID];
    v7 = [v13 isEqualToCTLazuliMessageID:v14];
  }

  if (v8 != v9)
  {
    goto LABEL_11;
  }

LABEL_12:

  if (v5 != v6)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v7;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotResponseForSuggestedReply *)self isEqualToCTLazuliChatBotResponseForSuggestedReply:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotResponseForSuggestedReply allocWithZone:?];
  v6 = [(NSString *)self->_displayText copyWithZone:a3];
  [(CTLazuliChatBotResponseForSuggestedReply *)v5 setDisplayText:v6];

  v7 = [(CTLazuliChatBotPostbackData *)self->_postBackData copyWithZone:a3];
  [(CTLazuliChatBotResponseForSuggestedReply *)v5 setPostBackData:v7];

  v8 = [(CTLazuliMessageID *)self->_inReplyToID copyWithZone:a3];
  [(CTLazuliChatBotResponseForSuggestedReply *)v5 setInReplyToID:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_displayText forKey:@"kDisplayTextKey"];
  [v4 encodeObject:self->_postBackData forKey:@"kPostBackDataKey"];
  [v4 encodeObject:self->_inReplyToID forKey:@"kInReplyToIDKey"];
}

- (CTLazuliChatBotResponseForSuggestedReply)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTLazuliChatBotResponseForSuggestedReply;
  v5 = [(CTLazuliChatBotResponseForSuggestedReply *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kDisplayTextKey"];
    displayText = v5->_displayText;
    v5->_displayText = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPostBackDataKey"];
    postBackData = v5->_postBackData;
    v5->_postBackData = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kInReplyToIDKey"];
    inReplyToID = v5->_inReplyToID;
    v5->_inReplyToID = v10;
  }

  return v5;
}

- (CTLazuliChatBotResponseForSuggestedReply)initWithReflection:(const void *)a3
{
  v13.receiver = self;
  v13.super_class = CTLazuliChatBotResponseForSuggestedReply;
  v4 = [(CTLazuliChatBotResponseForSuggestedReply *)&v13 init];
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

    v8 = [[CTLazuliChatBotPostbackData alloc] initWithReflection:a3 + 24];
    postBackData = v4->_postBackData;
    v4->_postBackData = v8;

    v10 = [[CTLazuliMessageID alloc] initWithReflection:a3 + 48];
    inReplyToID = v4->_inReplyToID;
    v4->_inReplyToID = v10;
  }

  return v4;
}

@end