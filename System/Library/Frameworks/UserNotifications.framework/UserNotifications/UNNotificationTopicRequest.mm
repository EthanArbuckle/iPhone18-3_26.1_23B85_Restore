@interface UNNotificationTopicRequest
+ (id)topicRequestWithIdentifier:(id)identifier displayName:(id)name options:(unint64_t)options;
+ (id)topicRequestWithIdentifier:(id)identifier displayName:(id)name priority:(unint64_t)priority sortIdentifier:(id)sortIdentifier options:(unint64_t)options;
+ (id)topicRequestWithIdentifier:(id)identifier displayName:(id)name priority:(unint64_t)priority sortIdentifier:(id)sortIdentifier supportedOptions:(unint64_t)options enabledOptions:(unint64_t)enabledOptions;
- (BOOL)isEqual:(id)equal;
- (UNNotificationTopicRequest)initWithCoder:(id)coder;
- (id)_description;
- (id)_initWithIdentifier:(id)identifier displayName:(id)name priority:(unint64_t)priority sortIdentifier:(id)sortIdentifier supportedOptions:(unint64_t)options enabledOptions:(unint64_t)enabledOptions;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNNotificationTopicRequest

- (unint64_t)hash
{
  topic = [(UNNotificationTopicRequest *)self topic];
  v4 = [topic hash];
  supportedOptions = [(UNNotificationTopicRequest *)self supportedOptions];
  v6 = supportedOptions ^ [(UNNotificationTopicRequest *)self enabledOptions];

  return v6 ^ v4;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  _description = [(UNNotificationTopicRequest *)self _description];
  v4 = [v2 stringWithFormat:@"%@>", _description];

  return v4;
}

- (id)_description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  topic = [(UNNotificationTopicRequest *)self topic];
  v6 = [v3 stringWithFormat:@"<%@: %p topic: %@, supportedOptions: %ld, enabledOptions: %ld", v4, self, topic, -[UNNotificationTopicRequest supportedOptions](self, "supportedOptions"), -[UNNotificationTopicRequest enabledOptions](self, "enabledOptions")];;

  return v6;
}

+ (id)topicRequestWithIdentifier:(id)identifier displayName:(id)name options:(unint64_t)options
{
  nameCopy = name;
  identifierCopy = identifier;
  v10 = [[self alloc] _initWithIdentifier:identifierCopy displayName:nameCopy priority:0 sortIdentifier:&stru_1F308F460 supportedOptions:options enabledOptions:options];

  return v10;
}

+ (id)topicRequestWithIdentifier:(id)identifier displayName:(id)name priority:(unint64_t)priority sortIdentifier:(id)sortIdentifier options:(unint64_t)options
{
  sortIdentifierCopy = sortIdentifier;
  nameCopy = name;
  identifierCopy = identifier;
  v15 = [[self alloc] _initWithIdentifier:identifierCopy displayName:nameCopy priority:priority sortIdentifier:sortIdentifierCopy supportedOptions:options enabledOptions:options];

  return v15;
}

+ (id)topicRequestWithIdentifier:(id)identifier displayName:(id)name priority:(unint64_t)priority sortIdentifier:(id)sortIdentifier supportedOptions:(unint64_t)options enabledOptions:(unint64_t)enabledOptions
{
  sortIdentifierCopy = sortIdentifier;
  nameCopy = name;
  identifierCopy = identifier;
  v17 = [[self alloc] _initWithIdentifier:identifierCopy displayName:nameCopy priority:priority sortIdentifier:sortIdentifierCopy supportedOptions:options enabledOptions:enabledOptions];

  return v17;
}

- (id)_initWithIdentifier:(id)identifier displayName:(id)name priority:(unint64_t)priority sortIdentifier:(id)sortIdentifier supportedOptions:(unint64_t)options enabledOptions:(unint64_t)enabledOptions
{
  identifierCopy = identifier;
  nameCopy = name;
  sortIdentifierCopy = sortIdentifier;
  v21.receiver = self;
  v21.super_class = UNNotificationTopicRequest;
  v17 = [(UNNotificationTopicRequest *)&v21 init];
  if (v17)
  {
    v18 = [UNNotificationTopic topicWithIdentifier:identifierCopy displayName:nameCopy priority:priority sortIdentifier:sortIdentifierCopy];
    topic = v17->_topic;
    v17->_topic = v18;

    v17->_supportedOptions = options;
    v17->_enabledOptions = enabledOptions;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topic = [(UNNotificationTopicRequest *)self topic];
    topic2 = [equalCopy topic];
    if (UNEqualObjects(topic, topic2) && (v7 = -[UNNotificationTopicRequest supportedOptions](self, "supportedOptions"), v7 == [equalCopy supportedOptions]))
    {
      enabledOptions = [(UNNotificationTopicRequest *)self enabledOptions];
      v9 = enabledOptions == [equalCopy enabledOptions];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  topic = [(UNNotificationTopicRequest *)self topic];
  [coderCopy encodeObject:topic forKey:@"topic"];

  [coderCopy encodeInteger:-[UNNotificationTopicRequest supportedOptions](self forKey:{"supportedOptions"), @"supportedOptions"}];
  [coderCopy encodeInteger:-[UNNotificationTopicRequest enabledOptions](self forKey:{"enabledOptions"), @"enabledOptions"}];
}

- (UNNotificationTopicRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topic"];
  v6 = [v5 copy];

  v7 = [coderCopy decodeIntegerForKey:@"supportedOptions"];
  v8 = [coderCopy decodeIntegerForKey:@"enabledOptions"];

  identifier = [v6 identifier];
  displayName = [v6 displayName];
  priority = [v6 priority];
  sortIdentifier = [v6 sortIdentifier];
  v13 = [(UNNotificationTopicRequest *)self _initWithIdentifier:identifier displayName:displayName priority:priority sortIdentifier:sortIdentifier supportedOptions:v7 enabledOptions:v8];

  return v13;
}

@end