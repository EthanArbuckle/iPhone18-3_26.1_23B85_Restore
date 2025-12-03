@interface UNNotificationRequest
+ (UNNotificationRequest)requestWithIdentifier:(NSString *)identifier content:(UNNotificationContent *)content trigger:(UNNotificationTrigger *)trigger;
+ (UNNotificationRequest)requestWithIdentifier:(id)identifier content:(id)content trigger:(id)trigger destinations:(unint64_t)destinations;
+ (UNNotificationRequest)requestWithIdentifier:(id)identifier pushPayload:(id)payload bundleIdentifier:(id)bundleIdentifier;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (UNNotificationRequest)initWithCoder:(id)coder;
- (id)_initWithIdentifier:(id)identifier content:(id)content trigger:(id)trigger destinations:(unint64_t)destinations;
- (unint64_t)_notificationDestinationsForInterruptionLevel:(unint64_t)level inputDestinations:(unint64_t)destinations;
- (unint64_t)hash;
- (void)addSecurityScope:(id)scope;
- (void)encodeWithCoder:(id)coder;
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
  v11 = [[self alloc] _initWithIdentifier:v10 content:v9 trigger:v8 destinations:15];

  return v11;
}

+ (UNNotificationRequest)requestWithIdentifier:(id)identifier content:(id)content trigger:(id)trigger destinations:(unint64_t)destinations
{
  triggerCopy = trigger;
  contentCopy = content;
  identifierCopy = identifier;
  v13 = [[self alloc] _initWithIdentifier:identifierCopy content:contentCopy trigger:triggerCopy destinations:destinations];

  return v13;
}

+ (UNNotificationRequest)requestWithIdentifier:(id)identifier pushPayload:(id)payload bundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  payloadCopy = payload;
  if (![identifierCopy length])
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    identifierCopy = uUIDString;
  }

  v12 = [[UNPushNotificationRequestBuilder alloc] initWithIdentifier:identifierCopy payload:payloadCopy bundleIdentifier:bundleIdentifierCopy];

  buildNotificationRequest = [(UNPushNotificationRequestBuilder *)v12 buildNotificationRequest];

  return buildNotificationRequest;
}

- (id)_initWithIdentifier:(id)identifier content:(id)content trigger:(id)trigger destinations:(unint64_t)destinations
{
  identifierCopy = identifier;
  contentCopy = content;
  triggerCopy = trigger;
  if (!identifierCopy)
  {
    [UNNotificationRequest _initWithIdentifier:a2 content:self trigger:? destinations:?];
  }

  v22.receiver = self;
  v22.super_class = UNNotificationRequest;
  v14 = [(UNNotificationRequest *)&v22 init];
  if (v14)
  {
    v15 = [contentCopy copy];
    content = v14->_content;
    v14->_content = v15;

    v17 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v17;

    v19 = [triggerCopy copy];
    trigger = v14->_trigger;
    v14->_trigger = v19;

    v14->_destinations = [(UNNotificationRequest *)v14 _notificationDestinationsForInterruptionLevel:[(UNNotificationContent *)v14->_content interruptionLevel] inputDestinations:destinations];
  }

  return v14;
}

- (unint64_t)hash
{
  content = [(UNNotificationRequest *)self content];
  v4 = [content hash];
  identifier = [(UNNotificationRequest *)self identifier];
  v6 = [identifier hash] ^ v4;
  trigger = [(UNNotificationRequest *)self trigger];
  v8 = [trigger hash];
  v9 = v8 ^ [(UNNotificationRequest *)self destinations];

  return v6 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    content = [(UNNotificationRequest *)self content];
    content2 = [equalCopy content];
    if (UNEqualObjects(content, content2))
    {
      identifier = [(UNNotificationRequest *)self identifier];
      identifier2 = [equalCopy identifier];
      if (UNEqualObjects(identifier, identifier2))
      {
        trigger = [(UNNotificationRequest *)self trigger];
        trigger2 = [equalCopy trigger];
        if (UNEqualObjects(trigger, trigger2))
        {
          v11 = UNEqualIntegers(-[UNNotificationRequest destinations](self, "destinations"), [equalCopy destinations]);
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
  identifier = [(UNNotificationRequest *)self identifier];
  content = [(UNNotificationRequest *)self content];
  trigger = [(UNNotificationRequest *)self trigger];
  v8 = [v3 stringWithFormat:@"<%@: %p identifier: %@, content: %@, trigger: %@>", v4, self, identifier, content, trigger];;

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  content = [(UNNotificationRequest *)self content];
  [coderCopy encodeObject:content forKey:@"content"];

  identifier = [(UNNotificationRequest *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  trigger = [(UNNotificationRequest *)self trigger];
  [coderCopy encodeObject:trigger forKey:@"trigger"];

  [coderCopy encodeInteger:-[UNNotificationRequest destinations](self forKey:{"destinations"), @"destinations"}];
}

- (UNNotificationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trigger"];
  v8 = [coderCopy decodeIntegerForKey:@"destinations"];

  v9 = [(UNNotificationRequest *)self _initWithIdentifier:v6 content:v5 trigger:v7 destinations:v8];
  return v9;
}

- (void)addSecurityScope:(id)scope
{
  scopeCopy = scope;
  content = [(UNNotificationRequest *)self content];
  [content addSecurityScope:scopeCopy];
}

- (void)removeSecurityScope
{
  content = [(UNNotificationRequest *)self content];
  [content removeSecurityScope];
}

- (void)enterSecurityScope
{
  content = [(UNNotificationRequest *)self content];
  [content enterSecurityScope];
}

- (void)leaveSecurityScope
{
  content = [(UNNotificationRequest *)self content];
  [content leaveSecurityScope];
}

- (unint64_t)_notificationDestinationsForInterruptionLevel:(unint64_t)level inputDestinations:(unint64_t)destinations
{
  destinationsCopy = destinations & 6;
  if (level)
  {
    destinationsCopy = destinations;
  }

  if (level - 1 >= 3)
  {
    return destinationsCopy;
  }

  else
  {
    return destinations & 0xF;
  }
}

- (void)_initWithIdentifier:(uint64_t)a1 content:(uint64_t)a2 trigger:destinations:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"UNNotificationRequest.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
}

@end