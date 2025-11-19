@interface CTLazuliGroupChatConversationID
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliGroupChatConversationID:(id)a3;
- (CTLazuliGroupChatConversationID)initWithCoder:(id)a3;
- (CTLazuliGroupChatConversationID)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliGroupChatConversationID

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliGroupChatConversationID *)self identifier];
  [v3 appendFormat:@", identifier = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliGroupChatConversationID:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliGroupChatConversationID *)self identifier];
  v6 = [v4 identifier];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliGroupChatConversationID *)self identifier];
    v8 = [v4 identifier];
    v9 = [v7 isEqualToString:v8];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliGroupChatConversationID *)self isEqualToCTLazuliGroupChatConversationID:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliGroupChatConversationID allocWithZone:?];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  [(CTLazuliGroupChatConversationID *)v5 setIdentifier:v6];

  return v5;
}

- (CTLazuliGroupChatConversationID)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTLazuliGroupChatConversationID;
  v5 = [(CTLazuliGroupChatConversationID *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (CTLazuliGroupChatConversationID)initWithReflection:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = CTLazuliGroupChatConversationID;
  v4 = [(CTLazuliGroupChatConversationID *)&v9 init];
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
    identifier = v4->_identifier;
    v4->_identifier = v6;
  }

  return v4;
}

@end