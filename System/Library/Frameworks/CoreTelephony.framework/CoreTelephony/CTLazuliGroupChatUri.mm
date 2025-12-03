@interface CTLazuliGroupChatUri
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliGroupChatUri:(id)uri;
- (CTLazuliGroupChatUri)initWithCoder:(id)coder;
- (CTLazuliGroupChatUri)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliGroupChatUri

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  destination = [(CTLazuliGroupChatUri *)self destination];
  [v3 appendFormat:@", destination = %@", destination];

  focus = [(CTLazuliGroupChatUri *)self focus];
  [v3 appendFormat:@", focus = %@", focus];

  conversationID = [(CTLazuliGroupChatUri *)self conversationID];
  [v3 appendFormat:@", conversationID = %@", conversationID];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliGroupChatUri:(id)uri
{
  uriCopy = uri;
  destination = [(CTLazuliGroupChatUri *)self destination];
  destination2 = [uriCopy destination];
  if (destination != destination2)
  {
    destination3 = [(CTLazuliGroupChatUri *)self destination];
    destination4 = [uriCopy destination];
    if (![destination3 isEqualToString:?])
    {
      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  focus = [(CTLazuliGroupChatUri *)self focus];
  focus2 = [uriCopy focus];
  if (focus != focus2)
  {
    focus3 = [(CTLazuliGroupChatUri *)self focus];
    focus4 = [uriCopy focus];
    if (![focus3 isEqualToString:?])
    {
      v7 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  conversationID = [(CTLazuliGroupChatUri *)self conversationID];
  conversationID2 = [uriCopy conversationID];
  v12 = conversationID2;
  if (conversationID == conversationID2)
  {

    v7 = 1;
  }

  else
  {
    conversationID3 = [(CTLazuliGroupChatUri *)self conversationID];
    conversationID4 = [uriCopy conversationID];
    v7 = [conversationID3 isEqualToString:conversationID4];
  }

  if (focus != focus2)
  {
    goto LABEL_11;
  }

LABEL_12:

  if (destination != destination2)
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliGroupChatUri *)self isEqualToCTLazuliGroupChatUri:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliGroupChatUri allocWithZone:?];
  v6 = [(NSString *)self->_destination copyWithZone:zone];
  [(CTLazuliGroupChatUri *)v5 setDestination:v6];

  v7 = [(NSString *)self->_focus copyWithZone:zone];
  [(CTLazuliGroupChatUri *)v5 setFocus:v7];

  v8 = [(NSString *)self->_conversationID copyWithZone:zone];
  [(CTLazuliGroupChatUri *)v5 setConversationID:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_destination forKey:@"kDestinationKey"];
  [coderCopy encodeObject:self->_focus forKey:@"kFocusKey"];
  [coderCopy encodeObject:self->_conversationID forKey:@"kConversationIDKey"];
}

- (CTLazuliGroupChatUri)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTLazuliGroupChatUri;
  v5 = [(CTLazuliGroupChatUri *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kDestinationKey"];
    destination = v5->_destination;
    v5->_destination = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kFocusKey"];
    focus = v5->_focus;
    v5->_focus = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kConversationIDKey"];
    conversationID = v5->_conversationID;
    v5->_conversationID = v10;
  }

  return v5;
}

- (CTLazuliGroupChatUri)initWithReflection:(const void *)reflection
{
  v18.receiver = self;
  v18.super_class = CTLazuliGroupChatUri;
  v4 = [(CTLazuliGroupChatUri *)&v18 init];
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
    destination = v4->_destination;
    v4->_destination = v6;

    if (*(reflection + 47) >= 0)
    {
      v8 = reflection + 24;
    }

    else
    {
      v8 = *(reflection + 3);
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    focus = v4->_focus;
    v4->_focus = v9;

    v13 = *(reflection + 6);
    v12 = reflection + 48;
    v11 = v13;
    if (v12[23] >= 0)
    {
      v14 = v12;
    }

    else
    {
      v14 = v11;
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
    conversationID = v4->_conversationID;
    v4->_conversationID = v15;
  }

  return v4;
}

@end