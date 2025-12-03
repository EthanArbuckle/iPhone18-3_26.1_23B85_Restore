@interface CTLazuliGroupChatConversationID
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliGroupChatConversationID:(id)d;
- (CTLazuliGroupChatConversationID)initWithCoder:(id)coder;
- (CTLazuliGroupChatConversationID)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliGroupChatConversationID

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  identifier = [(CTLazuliGroupChatConversationID *)self identifier];
  [v3 appendFormat:@", identifier = %@", identifier];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliGroupChatConversationID:(id)d
{
  dCopy = d;
  identifier = [(CTLazuliGroupChatConversationID *)self identifier];
  identifier2 = [dCopy identifier];
  if (identifier == identifier2)
  {
    v9 = 1;
  }

  else
  {
    identifier3 = [(CTLazuliGroupChatConversationID *)self identifier];
    identifier4 = [dCopy identifier];
    v9 = [identifier3 isEqualToString:identifier4];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliGroupChatConversationID *)self isEqualToCTLazuliGroupChatConversationID:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliGroupChatConversationID allocWithZone:?];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  [(CTLazuliGroupChatConversationID *)v5 setIdentifier:v6];

  return v5;
}

- (CTLazuliGroupChatConversationID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliGroupChatConversationID;
  v5 = [(CTLazuliGroupChatConversationID *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (CTLazuliGroupChatConversationID)initWithReflection:(const void *)reflection
{
  v9.receiver = self;
  v9.super_class = CTLazuliGroupChatConversationID;
  v4 = [(CTLazuliGroupChatConversationID *)&v9 init];
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
    identifier = v4->_identifier;
    v4->_identifier = v6;
  }

  return v4;
}

@end