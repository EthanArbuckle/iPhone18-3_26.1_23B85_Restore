@interface CTLazuliChatBotSuggestedReply
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliChatBotSuggestedReply:(id)a3;
- (CTLazuliChatBotSuggestedReply)initWithCoder:(id)a3;
- (CTLazuliChatBotSuggestedReply)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliChatBotSuggestedReply

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliChatBotSuggestedReply *)self data];
  [v3 appendFormat:@", data = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotSuggestedReply:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliChatBotSuggestedReply *)self data];
  v6 = [v4 data];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliChatBotSuggestedReply *)self data];
    v8 = [v4 data];
    v9 = [v7 isEqualToCTLazuliChatBotSuggestion:v8];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotSuggestedReply *)self isEqualToCTLazuliChatBotSuggestedReply:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliChatBotSuggestedReply allocWithZone:?];
  v6 = [(CTLazuliChatBotSuggestion *)self->_data copyWithZone:a3];
  [(CTLazuliChatBotSuggestedReply *)v5 setData:v6];

  return v5;
}

- (CTLazuliChatBotSuggestedReply)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotSuggestedReply;
  v5 = [(CTLazuliChatBotSuggestedReply *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kDataKey"];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (CTLazuliChatBotSuggestedReply)initWithReflection:(const void *)a3
{
  v8.receiver = self;
  v8.super_class = CTLazuliChatBotSuggestedReply;
  v4 = [(CTLazuliChatBotSuggestedReply *)&v8 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotSuggestion alloc] initWithReflection:a3];
    data = v4->_data;
    v4->_data = v5;
  }

  return v4;
}

@end