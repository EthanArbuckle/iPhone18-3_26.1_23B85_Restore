@interface CPMessageGridItemConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMessageGridItemConfiguration:(id)a3;
- (CPMessageGridItemConfiguration)initWithCoder:(id)a3;
- (CPMessageGridItemConfiguration)initWithConversationIdentifier:(id)a3 unread:(BOOL)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPMessageGridItemConfiguration

- (CPMessageGridItemConfiguration)initWithConversationIdentifier:(id)a3 unread:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CPMessageGridItemConfiguration;
  v8 = [(CPMessageGridItemConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_conversationIdentifier, a3);
    v9->_unread = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPMessageGridItemConfiguration *)self isEqualToMessageGridItemConfiguration:v4];

  return v5;
}

- (BOOL)isEqualToMessageGridItemConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CPMessageGridItemConfiguration *)self conversationIdentifier];
  v6 = [v4 conversationIdentifier];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [(CPMessageGridItemConfiguration *)self isUnread];
    v9 = v8 ^ [v4 isUnread] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(CPMessageGridItemConfiguration *)self conversationIdentifier];
  v4 = [v3 hash];
  v5 = [(CPMessageGridItemConfiguration *)self isUnread];

  return v4 ^ v5;
}

- (CPMessageGridItemConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPMessageGridItemConfiguration *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPGridButtonConversationKey"];
    conversationIdentifier = v5->_conversationIdentifier;
    v5->_conversationIdentifier = v6;

    v5->_unread = [v4 decodeBoolForKey:@"CPGridButtonUnreadKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(CPMessageGridItemConfiguration *)self conversationIdentifier];
  [v5 encodeObject:v4 forKey:@"CPGridButtonConversationKey"];

  [v5 encodeBool:-[CPMessageGridItemConfiguration isUnread](self forKey:{"isUnread"), @"CPGridButtonUnreadKey"}];
}

@end