@interface UNNotificationRequest
+ (UNNotificationRequest)requestWithIdentifier:(NSString *)identifier content:(UNNotificationContent *)content trigger:(UNNotificationTrigger *)trigger;
+ (UNNotificationRequest)requestWithIdentifier:(id)a3 content:(id)a4 trigger:(id)a5 destinations:(unint64_t)a6;
+ (UNNotificationRequest)requestWithIdentifier:(id)a3 pushPayload:(id)a4 bundleIdentifier:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (UNNotificationRequest)initWithCoder:(id)a3;
- (id)_initWithIdentifier:(id)a3 content:(id)a4 trigger:(id)a5 destinations:(unint64_t)a6;
- (unint64_t)_notificationDestinationsForInterruptionLevel:(unint64_t)a3 inputDestinations:(unint64_t)a4;
- (unint64_t)hash;
- (void)addSecurityScope:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enterSecurityScope;
- (void)leaveSecurityScope;
- (void)removeSecurityScope;
@end

@implementation UNNotificationRequest

+ (UNNotificationRequest)requestWithIdentifier:(NSString *)identifier content:(UNNotificationContent *)content trigger:(UNNotificationTrigger *)trigger
{
  v8 = trigger;
  v9 = content;
  v10 = identifier;
  v11 = [[a1 alloc] _initWithIdentifier:v10 content:v9 trigger:v8 destinations:15];

  return v11;
}

+ (UNNotificationRequest)requestWithIdentifier:(id)a3 content:(id)a4 trigger:(id)a5 destinations:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] _initWithIdentifier:v12 content:v11 trigger:v10 destinations:a6];

  return v13;
}

+ (UNNotificationRequest)requestWithIdentifier:(id)a3 pushPayload:(id)a4 bundleIdentifier:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  if (![v7 length])
  {
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];

    v7 = v11;
  }

  v12 = [[UNPushNotificationRequestBuilder alloc] initWithIdentifier:v7 payload:v9 bundleIdentifier:v8];

  v13 = [(UNPushNotificationRequestBuilder *)v12 buildNotificationRequest];

  return v13;
}

- (id)_initWithIdentifier:(id)a3 content:(id)a4 trigger:(id)a5 destinations:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v11)
  {
    [UNNotificationRequest _initWithIdentifier:a2 content:self trigger:? destinations:?];
  }

  v22.receiver = self;
  v22.super_class = UNNotificationRequest;
  v14 = [(UNNotificationRequest *)&v22 init];
  if (v14)
  {
    v15 = [v12 copy];
    content = v14->_content;
    v14->_content = v15;

    v17 = [v11 copy];
    identifier = v14->_identifier;
    v14->_identifier = v17;

    v19 = [v13 copy];
    trigger = v14->_trigger;
    v14->_trigger = v19;

    v14->_destinations = [(UNNotificationRequest *)v14 _notificationDestinationsForInterruptionLevel:[(UNNotificationContent *)v14->_content interruptionLevel] inputDestinations:a6];
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(UNNotificationRequest *)self content];
  v4 = [v3 hash];
  v5 = [(UNNotificationRequest *)self identifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(UNNotificationRequest *)self trigger];
  v8 = [v7 hash];
  v9 = v8 ^ [(UNNotificationRequest *)self destinations];

  return v6 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UNNotificationRequest *)self content];
    v6 = [v4 content];
    if (UNEqualObjects(v5, v6))
    {
      v7 = [(UNNotificationRequest *)self identifier];
      v8 = [v4 identifier];
      if (UNEqualObjects(v7, v8))
      {
        v9 = [(UNNotificationRequest *)self trigger];
        v10 = [v4 trigger];
        if (UNEqualObjects(v9, v10))
        {
          v11 = UNEqualIntegers(-[UNNotificationRequest destinations](self, "destinations"), [v4 destinations]);
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(UNNotificationRequest *)self identifier];
  v6 = [(UNNotificationRequest *)self content];
  v7 = [(UNNotificationRequest *)self trigger];
  v8 = [v3 stringWithFormat:@"<%@: %p identifier: %@, content: %@, trigger: %@>", v4, self, v5, v6, v7];;

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(UNNotificationRequest *)self content];
  [v7 encodeObject:v4 forKey:@"content"];

  v5 = [(UNNotificationRequest *)self identifier];
  [v7 encodeObject:v5 forKey:@"identifier"];

  v6 = [(UNNotificationRequest *)self trigger];
  [v7 encodeObject:v6 forKey:@"trigger"];

  [v7 encodeInteger:-[UNNotificationRequest destinations](self forKey:{"destinations"), @"destinations"}];
}

- (UNNotificationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"content"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trigger"];
  v8 = [v4 decodeIntegerForKey:@"destinations"];

  v9 = [(UNNotificationRequest *)self _initWithIdentifier:v6 content:v5 trigger:v7 destinations:v8];
  return v9;
}

- (void)addSecurityScope:(id)a3
{
  v4 = a3;
  v5 = [(UNNotificationRequest *)self content];
  [v5 addSecurityScope:v4];
}

- (void)removeSecurityScope
{
  v2 = [(UNNotificationRequest *)self content];
  [v2 removeSecurityScope];
}

- (void)enterSecurityScope
{
  v2 = [(UNNotificationRequest *)self content];
  [v2 enterSecurityScope];
}

- (void)leaveSecurityScope
{
  v2 = [(UNNotificationRequest *)self content];
  [v2 leaveSecurityScope];
}

- (unint64_t)_notificationDestinationsForInterruptionLevel:(unint64_t)a3 inputDestinations:(unint64_t)a4
{
  v4 = a4 & 6;
  if (a3)
  {
    v4 = a4;
  }

  if (a3 - 1 >= 3)
  {
    return v4;
  }

  else
  {
    return a4 & 0xF;
  }
}

- (void)_initWithIdentifier:(uint64_t)a1 content:(uint64_t)a2 trigger:destinations:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"UNNotificationRequest.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
}

@end