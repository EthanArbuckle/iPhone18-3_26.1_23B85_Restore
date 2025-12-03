@interface UNNotificationTopic
+ (id)topicWithIdentifier:(id)identifier displayName:(id)name priority:(unint64_t)priority sortIdentifier:(id)sortIdentifier;
- (BOOL)isEqual:(id)equal;
- (UNNotificationTopic)initWithCoder:(id)coder;
- (id)_description;
- (id)_initWithIdentifier:(id)identifier displayName:(id)name priority:(unint64_t)priority sortIdentifier:(id)sortIdentifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNNotificationTopic

- (unint64_t)hash
{
  identifier = [(UNNotificationTopic *)self identifier];
  v4 = [identifier hash];
  displayName = [(UNNotificationTopic *)self displayName];
  v6 = [displayName hash] ^ v4;
  priority = [(UNNotificationTopic *)self priority];
  sortIdentifier = [(UNNotificationTopic *)self sortIdentifier];
  v9 = priority ^ [sortIdentifier hash];

  return v6 ^ v9;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  _description = [(UNNotificationTopic *)self _description];
  v4 = [v2 stringWithFormat:@"%@>", _description];

  return v4;
}

- (id)_description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(UNNotificationTopic *)self identifier];
  displayName = [(UNNotificationTopic *)self displayName];
  v7 = [v3 stringWithFormat:@"<%@: %p identifier: %@, displayName: %@", v4, self, identifier, displayName];;

  return v7;
}

+ (id)topicWithIdentifier:(id)identifier displayName:(id)name priority:(unint64_t)priority sortIdentifier:(id)sortIdentifier
{
  sortIdentifierCopy = sortIdentifier;
  nameCopy = name;
  identifierCopy = identifier;
  v13 = [[self alloc] _initWithIdentifier:identifierCopy displayName:nameCopy priority:priority sortIdentifier:sortIdentifierCopy];

  return v13;
}

- (id)_initWithIdentifier:(id)identifier displayName:(id)name priority:(unint64_t)priority sortIdentifier:(id)sortIdentifier
{
  identifierCopy = identifier;
  nameCopy = name;
  sortIdentifierCopy = sortIdentifier;
  v21.receiver = self;
  v21.super_class = UNNotificationTopic;
  v13 = [(UNNotificationTopic *)&v21 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [nameCopy copy];
    displayName = v13->_displayName;
    v13->_displayName = v16;

    v13->_priority = priority;
    v18 = [sortIdentifierCopy copy];
    sortIdentifier = v13->_sortIdentifier;
    v13->_sortIdentifier = v18;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(UNNotificationTopic *)self identifier];
    identifier2 = [equalCopy identifier];
    if (UNEqualStrings(identifier, identifier2))
    {
      displayName = [(UNNotificationTopic *)self displayName];
      displayName2 = [equalCopy displayName];
      v9 = UNEqualObjects(displayName, displayName2);
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
  identifier = [(UNNotificationTopic *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  displayName = [(UNNotificationTopic *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  [coderCopy encodeInteger:-[UNNotificationTopic priority](self forKey:{"priority"), @"priority"}];
  sortIdentifier = [(UNNotificationTopic *)self sortIdentifier];
  [coderCopy encodeObject:sortIdentifier forKey:@"sortIdentifier"];
}

- (UNNotificationTopic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v5 copy];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"displayName"];
  v11 = [v10 copy];

  v12 = [coderCopy decodeIntegerForKey:@"priority"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sortIdentifier"];

  v14 = [(UNNotificationTopic *)self _initWithIdentifier:v6 displayName:v11 priority:v12 sortIdentifier:v13];
  return v14;
}

@end