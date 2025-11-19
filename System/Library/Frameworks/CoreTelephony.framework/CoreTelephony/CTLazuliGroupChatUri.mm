@interface CTLazuliGroupChatUri
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliGroupChatUri:(id)a3;
- (CTLazuliGroupChatUri)initWithCoder:(id)a3;
- (CTLazuliGroupChatUri)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliGroupChatUri

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliGroupChatUri *)self destination];
  [v3 appendFormat:@", destination = %@", v4];

  v5 = [(CTLazuliGroupChatUri *)self focus];
  [v3 appendFormat:@", focus = %@", v5];

  v6 = [(CTLazuliGroupChatUri *)self conversationID];
  [v3 appendFormat:@", conversationID = %@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliGroupChatUri:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliGroupChatUri *)self destination];
  v6 = [v4 destination];
  if (v5 != v6)
  {
    v19 = [(CTLazuliGroupChatUri *)self destination];
    v17 = [v4 destination];
    if (![v19 isEqualToString:?])
    {
      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  v8 = [(CTLazuliGroupChatUri *)self focus];
  v9 = [v4 focus];
  if (v8 != v9)
  {
    v18 = [(CTLazuliGroupChatUri *)self focus];
    v16 = [v4 focus];
    if (![v18 isEqualToString:?])
    {
      v7 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  v10 = [(CTLazuliGroupChatUri *)self conversationID];
  v11 = [v4 conversationID];
  v12 = v11;
  if (v10 == v11)
  {

    v7 = 1;
  }

  else
  {
    v13 = [(CTLazuliGroupChatUri *)self conversationID];
    v14 = [v4 conversationID];
    v7 = [v13 isEqualToString:v14];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliGroupChatUri *)self isEqualToCTLazuliGroupChatUri:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliGroupChatUri allocWithZone:?];
  v6 = [(NSString *)self->_destination copyWithZone:a3];
  [(CTLazuliGroupChatUri *)v5 setDestination:v6];

  v7 = [(NSString *)self->_focus copyWithZone:a3];
  [(CTLazuliGroupChatUri *)v5 setFocus:v7];

  v8 = [(NSString *)self->_conversationID copyWithZone:a3];
  [(CTLazuliGroupChatUri *)v5 setConversationID:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_destination forKey:@"kDestinationKey"];
  [v4 encodeObject:self->_focus forKey:@"kFocusKey"];
  [v4 encodeObject:self->_conversationID forKey:@"kConversationIDKey"];
}

- (CTLazuliGroupChatUri)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTLazuliGroupChatUri;
  v5 = [(CTLazuliGroupChatUri *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kDestinationKey"];
    destination = v5->_destination;
    v5->_destination = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kFocusKey"];
    focus = v5->_focus;
    v5->_focus = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kConversationIDKey"];
    conversationID = v5->_conversationID;
    v5->_conversationID = v10;
  }

  return v5;
}

- (CTLazuliGroupChatUri)initWithReflection:(const void *)a3
{
  v18.receiver = self;
  v18.super_class = CTLazuliGroupChatUri;
  v4 = [(CTLazuliGroupChatUri *)&v18 init];
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
    destination = v4->_destination;
    v4->_destination = v6;

    if (*(a3 + 47) >= 0)
    {
      v8 = a3 + 24;
    }

    else
    {
      v8 = *(a3 + 3);
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    focus = v4->_focus;
    v4->_focus = v9;

    v13 = *(a3 + 6);
    v12 = a3 + 48;
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