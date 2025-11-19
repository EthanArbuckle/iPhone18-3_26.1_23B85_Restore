@interface UNNotificationTopic
+ (id)topicWithIdentifier:(id)a3 displayName:(id)a4 priority:(unint64_t)a5 sortIdentifier:(id)a6;
- (BOOL)isEqual:(id)a3;
- (UNNotificationTopic)initWithCoder:(id)a3;
- (id)_description;
- (id)_initWithIdentifier:(id)a3 displayName:(id)a4 priority:(unint64_t)a5 sortIdentifier:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNNotificationTopic

- (unint64_t)hash
{
  v3 = [(UNNotificationTopic *)self identifier];
  v4 = [v3 hash];
  v5 = [(UNNotificationTopic *)self displayName];
  v6 = [v5 hash] ^ v4;
  v7 = [(UNNotificationTopic *)self priority];
  v8 = [(UNNotificationTopic *)self sortIdentifier];
  v9 = v7 ^ [v8 hash];

  return v6 ^ v9;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(UNNotificationTopic *)self _description];
  v4 = [v2 stringWithFormat:@"%@>", v3];

  return v4;
}

- (id)_description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(UNNotificationTopic *)self identifier];
  v6 = [(UNNotificationTopic *)self displayName];
  v7 = [v3 stringWithFormat:@"<%@: %p identifier: %@, displayName: %@", v4, self, v5, v6];;

  return v7;
}

+ (id)topicWithIdentifier:(id)a3 displayName:(id)a4 priority:(unint64_t)a5 sortIdentifier:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] _initWithIdentifier:v12 displayName:v11 priority:a5 sortIdentifier:v10];

  return v13;
}

- (id)_initWithIdentifier:(id)a3 displayName:(id)a4 priority:(unint64_t)a5 sortIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = UNNotificationTopic;
  v13 = [(UNNotificationTopic *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [v11 copy];
    displayName = v13->_displayName;
    v13->_displayName = v16;

    v13->_priority = a5;
    v18 = [v12 copy];
    sortIdentifier = v13->_sortIdentifier;
    v13->_sortIdentifier = v18;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UNNotificationTopic *)self identifier];
    v6 = [v4 identifier];
    if (UNEqualStrings(v5, v6))
    {
      v7 = [(UNNotificationTopic *)self displayName];
      v8 = [v4 displayName];
      v9 = UNEqualObjects(v7, v8);
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNNotificationTopic *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(UNNotificationTopic *)self displayName];
  [v4 encodeObject:v6 forKey:@"displayName"];

  [v4 encodeInteger:-[UNNotificationTopic priority](self forKey:{"priority"), @"priority"}];
  v7 = [(UNNotificationTopic *)self sortIdentifier];
  [v4 encodeObject:v7 forKey:@"sortIdentifier"];
}

- (UNNotificationTopic)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v5 copy];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"displayName"];
  v11 = [v10 copy];

  v12 = [v4 decodeIntegerForKey:@"priority"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sortIdentifier"];

  v14 = [(UNNotificationTopic *)self _initWithIdentifier:v6 displayName:v11 priority:v12 sortIdentifier:v13];
  return v14;
}

@end