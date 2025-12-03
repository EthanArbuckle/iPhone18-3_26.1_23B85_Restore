@interface CTLazuliMessageIncomingGroupChat
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliMessageIncomingGroupChat:(id)chat;
- (CTLazuliMessageIncomingGroupChat)initWithCoder:(id)coder;
- (CTLazuliMessageIncomingGroupChat)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliMessageIncomingGroupChat

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  chat = [(CTLazuliMessageIncomingGroupChat *)self chat];
  [v3 appendFormat:@", chat = %@", chat];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageIncomingGroupChat:(id)chat
{
  chatCopy = chat;
  chat = [(CTLazuliMessageIncomingGroupChat *)self chat];
  chat2 = [chatCopy chat];
  if (chat == chat2)
  {
    v9 = 1;
  }

  else
  {
    chat3 = [(CTLazuliMessageIncomingGroupChat *)self chat];
    chat4 = [chatCopy chat];
    v9 = [chat3 isEqualToCTLazuliGroupChatInformation:chat4];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageIncomingGroupChat *)self isEqualToCTLazuliMessageIncomingGroupChat:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliMessageIncomingGroupChat allocWithZone:?];
  v6 = [(CTLazuliGroupChatInformation *)self->_chat copyWithZone:zone];
  [(CTLazuliMessageIncomingGroupChat *)v5 setChat:v6];

  return v5;
}

- (CTLazuliMessageIncomingGroupChat)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliMessageIncomingGroupChat;
  v5 = [(CTLazuliMessageIncomingGroupChat *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kChatKey"];
    chat = v5->_chat;
    v5->_chat = v6;
  }

  return v5;
}

- (CTLazuliMessageIncomingGroupChat)initWithReflection:(const void *)reflection
{
  v8.receiver = self;
  v8.super_class = CTLazuliMessageIncomingGroupChat;
  v4 = [(CTLazuliMessageIncomingGroupChat *)&v8 init];
  if (v4)
  {
    v5 = [[CTLazuliGroupChatInformation alloc] initWithReflection:reflection];
    chat = v4->_chat;
    v4->_chat = v5;
  }

  return v4;
}

@end