@interface CTLazuliMessageIncomingGroupChat
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliMessageIncomingGroupChat:(id)a3;
- (CTLazuliMessageIncomingGroupChat)initWithCoder:(id)a3;
- (CTLazuliMessageIncomingGroupChat)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliMessageIncomingGroupChat

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliMessageIncomingGroupChat *)self chat];
  [v3 appendFormat:@", chat = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliMessageIncomingGroupChat:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliMessageIncomingGroupChat *)self chat];
  v6 = [v4 chat];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliMessageIncomingGroupChat *)self chat];
    v8 = [v4 chat];
    v9 = [v7 isEqualToCTLazuliGroupChatInformation:v8];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliMessageIncomingGroupChat *)self isEqualToCTLazuliMessageIncomingGroupChat:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliMessageIncomingGroupChat allocWithZone:?];
  v6 = [(CTLazuliGroupChatInformation *)self->_chat copyWithZone:a3];
  [(CTLazuliMessageIncomingGroupChat *)v5 setChat:v6];

  return v5;
}

- (CTLazuliMessageIncomingGroupChat)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTLazuliMessageIncomingGroupChat;
  v5 = [(CTLazuliMessageIncomingGroupChat *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kChatKey"];
    chat = v5->_chat;
    v5->_chat = v6;
  }

  return v5;
}

- (CTLazuliMessageIncomingGroupChat)initWithReflection:(const void *)a3
{
  v8.receiver = self;
  v8.super_class = CTLazuliMessageIncomingGroupChat;
  v4 = [(CTLazuliMessageIncomingGroupChat *)&v8 init];
  if (v4)
  {
    v5 = [[CTLazuliGroupChatInformation alloc] initWithReflection:a3];
    chat = v4->_chat;
    v4->_chat = v5;
  }

  return v4;
}

@end