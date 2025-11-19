@interface UNNotificationTopicRequest
+ (id)topicRequestWithIdentifier:(id)a3 displayName:(id)a4 options:(unint64_t)a5;
+ (id)topicRequestWithIdentifier:(id)a3 displayName:(id)a4 priority:(unint64_t)a5 sortIdentifier:(id)a6 options:(unint64_t)a7;
+ (id)topicRequestWithIdentifier:(id)a3 displayName:(id)a4 priority:(unint64_t)a5 sortIdentifier:(id)a6 supportedOptions:(unint64_t)a7 enabledOptions:(unint64_t)a8;
- (BOOL)isEqual:(id)a3;
- (UNNotificationTopicRequest)initWithCoder:(id)a3;
- (id)_description;
- (id)_initWithIdentifier:(id)a3 displayName:(id)a4 priority:(unint64_t)a5 sortIdentifier:(id)a6 supportedOptions:(unint64_t)a7 enabledOptions:(unint64_t)a8;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNNotificationTopicRequest

- (unint64_t)hash
{
  v3 = [(UNNotificationTopicRequest *)self topic];
  v4 = [v3 hash];
  v5 = [(UNNotificationTopicRequest *)self supportedOptions];
  v6 = v5 ^ [(UNNotificationTopicRequest *)self enabledOptions];

  return v6 ^ v4;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(UNNotificationTopicRequest *)self _description];
  v4 = [v2 stringWithFormat:@"%@>", v3];

  return v4;
}

- (id)_description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(UNNotificationTopicRequest *)self topic];
  v6 = [v3 stringWithFormat:@"<%@: %p topic: %@, supportedOptions: %ld, enabledOptions: %ld", v4, self, v5, -[UNNotificationTopicRequest supportedOptions](self, "supportedOptions"), -[UNNotificationTopicRequest enabledOptions](self, "enabledOptions")];;

  return v6;
}

+ (id)topicRequestWithIdentifier:(id)a3 displayName:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] _initWithIdentifier:v9 displayName:v8 priority:0 sortIdentifier:&stru_1F308F460 supportedOptions:a5 enabledOptions:a5];

  return v10;
}

+ (id)topicRequestWithIdentifier:(id)a3 displayName:(id)a4 priority:(unint64_t)a5 sortIdentifier:(id)a6 options:(unint64_t)a7
{
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [[a1 alloc] _initWithIdentifier:v14 displayName:v13 priority:a5 sortIdentifier:v12 supportedOptions:a7 enabledOptions:a7];

  return v15;
}

+ (id)topicRequestWithIdentifier:(id)a3 displayName:(id)a4 priority:(unint64_t)a5 sortIdentifier:(id)a6 supportedOptions:(unint64_t)a7 enabledOptions:(unint64_t)a8
{
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] _initWithIdentifier:v16 displayName:v15 priority:a5 sortIdentifier:v14 supportedOptions:a7 enabledOptions:a8];

  return v17;
}

- (id)_initWithIdentifier:(id)a3 displayName:(id)a4 priority:(unint64_t)a5 sortIdentifier:(id)a6 supportedOptions:(unint64_t)a7 enabledOptions:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v21.receiver = self;
  v21.super_class = UNNotificationTopicRequest;
  v17 = [(UNNotificationTopicRequest *)&v21 init];
  if (v17)
  {
    v18 = [UNNotificationTopic topicWithIdentifier:v14 displayName:v15 priority:a5 sortIdentifier:v16];
    topic = v17->_topic;
    v17->_topic = v18;

    v17->_supportedOptions = a7;
    v17->_enabledOptions = a8;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UNNotificationTopicRequest *)self topic];
    v6 = [v4 topic];
    if (UNEqualObjects(v5, v6) && (v7 = -[UNNotificationTopicRequest supportedOptions](self, "supportedOptions"), v7 == [v4 supportedOptions]))
    {
      v8 = [(UNNotificationTopicRequest *)self enabledOptions];
      v9 = v8 == [v4 enabledOptions];
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
  v5 = a3;
  v4 = [(UNNotificationTopicRequest *)self topic];
  [v5 encodeObject:v4 forKey:@"topic"];

  [v5 encodeInteger:-[UNNotificationTopicRequest supportedOptions](self forKey:{"supportedOptions"), @"supportedOptions"}];
  [v5 encodeInteger:-[UNNotificationTopicRequest enabledOptions](self forKey:{"enabledOptions"), @"enabledOptions"}];
}

- (UNNotificationTopicRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topic"];
  v6 = [v5 copy];

  v7 = [v4 decodeIntegerForKey:@"supportedOptions"];
  v8 = [v4 decodeIntegerForKey:@"enabledOptions"];

  v9 = [v6 identifier];
  v10 = [v6 displayName];
  v11 = [v6 priority];
  v12 = [v6 sortIdentifier];
  v13 = [(UNNotificationTopicRequest *)self _initWithIdentifier:v9 displayName:v10 priority:v11 sortIdentifier:v12 supportedOptions:v7 enabledOptions:v8];

  return v13;
}

@end