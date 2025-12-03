@interface CPMessageGridItemConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMessageGridItemConfiguration:(id)configuration;
- (CPMessageGridItemConfiguration)initWithCoder:(id)coder;
- (CPMessageGridItemConfiguration)initWithConversationIdentifier:(id)identifier unread:(BOOL)unread;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPMessageGridItemConfiguration

- (CPMessageGridItemConfiguration)initWithConversationIdentifier:(id)identifier unread:(BOOL)unread
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CPMessageGridItemConfiguration;
  v8 = [(CPMessageGridItemConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_conversationIdentifier, identifier);
    v9->_unread = unread;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPMessageGridItemConfiguration *)self isEqualToMessageGridItemConfiguration:equalCopy];

  return v5;
}

- (BOOL)isEqualToMessageGridItemConfiguration:(id)configuration
{
  configurationCopy = configuration;
  conversationIdentifier = [(CPMessageGridItemConfiguration *)self conversationIdentifier];
  conversationIdentifier2 = [configurationCopy conversationIdentifier];
  v7 = [conversationIdentifier isEqual:conversationIdentifier2];

  if (v7)
  {
    isUnread = [(CPMessageGridItemConfiguration *)self isUnread];
    v9 = isUnread ^ [configurationCopy isUnread] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  conversationIdentifier = [(CPMessageGridItemConfiguration *)self conversationIdentifier];
  v4 = [conversationIdentifier hash];
  isUnread = [(CPMessageGridItemConfiguration *)self isUnread];

  return v4 ^ isUnread;
}

- (CPMessageGridItemConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CPMessageGridItemConfiguration *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPGridButtonConversationKey"];
    conversationIdentifier = v5->_conversationIdentifier;
    v5->_conversationIdentifier = v6;

    v5->_unread = [coderCopy decodeBoolForKey:@"CPGridButtonUnreadKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  conversationIdentifier = [(CPMessageGridItemConfiguration *)self conversationIdentifier];
  [coderCopy encodeObject:conversationIdentifier forKey:@"CPGridButtonConversationKey"];

  [coderCopy encodeBool:-[CPMessageGridItemConfiguration isUnread](self forKey:{"isUnread"), @"CPGridButtonUnreadKey"}];
}

@end