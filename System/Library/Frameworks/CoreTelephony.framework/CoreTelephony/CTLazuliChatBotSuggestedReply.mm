@interface CTLazuliChatBotSuggestedReply
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliChatBotSuggestedReply:(id)reply;
- (CTLazuliChatBotSuggestedReply)initWithCoder:(id)coder;
- (CTLazuliChatBotSuggestedReply)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliChatBotSuggestedReply

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  data = [(CTLazuliChatBotSuggestedReply *)self data];
  [v3 appendFormat:@", data = %@", data];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliChatBotSuggestedReply:(id)reply
{
  replyCopy = reply;
  data = [(CTLazuliChatBotSuggestedReply *)self data];
  data2 = [replyCopy data];
  if (data == data2)
  {
    v9 = 1;
  }

  else
  {
    data3 = [(CTLazuliChatBotSuggestedReply *)self data];
    data4 = [replyCopy data];
    v9 = [data3 isEqualToCTLazuliChatBotSuggestion:data4];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliChatBotSuggestedReply *)self isEqualToCTLazuliChatBotSuggestedReply:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliChatBotSuggestedReply allocWithZone:?];
  v6 = [(CTLazuliChatBotSuggestion *)self->_data copyWithZone:zone];
  [(CTLazuliChatBotSuggestedReply *)v5 setData:v6];

  return v5;
}

- (CTLazuliChatBotSuggestedReply)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliChatBotSuggestedReply;
  v5 = [(CTLazuliChatBotSuggestedReply *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kDataKey"];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (CTLazuliChatBotSuggestedReply)initWithReflection:(const void *)reflection
{
  v8.receiver = self;
  v8.super_class = CTLazuliChatBotSuggestedReply;
  v4 = [(CTLazuliChatBotSuggestedReply *)&v8 init];
  if (v4)
  {
    v5 = [[CTLazuliChatBotSuggestion alloc] initWithReflection:reflection];
    data = v4->_data;
    v4->_data = v5;
  }

  return v4;
}

@end