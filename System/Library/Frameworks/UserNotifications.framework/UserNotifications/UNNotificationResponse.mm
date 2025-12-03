@interface UNNotificationResponse
+ (UNNotificationResponse)responseWithNotification:(id)notification actionIdentifier:(id)identifier originIdentifier:(id)originIdentifier targetConnectionEndpoint:(id)endpoint;
+ (UNNotificationResponse)responseWithNotification:(id)notification actionIdentifier:(id)identifier originIdentifier:(id)originIdentifier targetConnectionEndpoint:(id)endpoint targetSceneIdentifier:(id)sceneIdentifier;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (UNNotificationResponse)initWithCoder:(id)coder;
- (UNNotificationResponse)initWithXPCDictionary:(id)dictionary;
- (id)_initWithNotification:(id)notification actionIdentifier:(id)identifier originIdentifier:(id)originIdentifier targetConnectionEndpoint:(id)endpoint targetSceneIdentifier:(id)sceneIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation UNNotificationResponse

+ (UNNotificationResponse)responseWithNotification:(id)notification actionIdentifier:(id)identifier originIdentifier:(id)originIdentifier targetConnectionEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  originIdentifierCopy = originIdentifier;
  identifierCopy = identifier;
  notificationCopy = notification;
  v14 = [[self alloc] _initWithNotification:notificationCopy actionIdentifier:identifierCopy originIdentifier:originIdentifierCopy targetConnectionEndpoint:endpointCopy targetSceneIdentifier:0];

  return v14;
}

+ (UNNotificationResponse)responseWithNotification:(id)notification actionIdentifier:(id)identifier originIdentifier:(id)originIdentifier targetConnectionEndpoint:(id)endpoint targetSceneIdentifier:(id)sceneIdentifier
{
  sceneIdentifierCopy = sceneIdentifier;
  endpointCopy = endpoint;
  originIdentifierCopy = originIdentifier;
  identifierCopy = identifier;
  notificationCopy = notification;
  v17 = [[self alloc] _initWithNotification:notificationCopy actionIdentifier:identifierCopy originIdentifier:originIdentifierCopy targetConnectionEndpoint:endpointCopy targetSceneIdentifier:sceneIdentifierCopy];

  return v17;
}

- (id)_initWithNotification:(id)notification actionIdentifier:(id)identifier originIdentifier:(id)originIdentifier targetConnectionEndpoint:(id)endpoint targetSceneIdentifier:(id)sceneIdentifier
{
  notificationCopy = notification;
  identifierCopy = identifier;
  originIdentifierCopy = originIdentifier;
  endpointCopy = endpoint;
  sceneIdentifierCopy = sceneIdentifier;
  v25.receiver = self;
  v25.super_class = UNNotificationResponse;
  v17 = [(UNNotificationResponse *)&v25 init];
  if (v17)
  {
    v18 = [notificationCopy copy];
    notification = v17->_notification;
    v17->_notification = v18;

    v20 = [identifierCopy copy];
    actionIdentifier = v17->_actionIdentifier;
    v17->_actionIdentifier = v20;

    v22 = [originIdentifierCopy copy];
    originIdentifier = v17->_originIdentifier;
    v17->_originIdentifier = v22;

    objc_storeStrong(&v17->_targetConnectionEndpoint, endpoint);
    objc_storeStrong(&v17->_targetSceneIdentifier, sceneIdentifier);
  }

  return v17;
}

- (unint64_t)hash
{
  notification = [(UNNotificationResponse *)self notification];
  v4 = [notification hash];
  actionIdentifier = [(UNNotificationResponse *)self actionIdentifier];
  v6 = [actionIdentifier hash] ^ v4;
  originIdentifier = [(UNNotificationResponse *)self originIdentifier];
  v8 = [originIdentifier hash];
  targetConnectionEndpoint = [(UNNotificationResponse *)self targetConnectionEndpoint];
  v10 = v6 ^ v8 ^ [targetConnectionEndpoint hash];
  targetSceneIdentifier = [(UNNotificationResponse *)self targetSceneIdentifier];
  v12 = [targetSceneIdentifier hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    notification = [(UNNotificationResponse *)self notification];
    notification2 = [equalCopy notification];
    if (UNEqualObjects(notification, notification2))
    {
      actionIdentifier = [(UNNotificationResponse *)self actionIdentifier];
      actionIdentifier2 = [equalCopy actionIdentifier];
      if (UNEqualStrings(actionIdentifier, actionIdentifier2))
      {
        originIdentifier = [(UNNotificationResponse *)self originIdentifier];
        originIdentifier2 = [equalCopy originIdentifier];
        if (UNEqualStrings(originIdentifier, originIdentifier2))
        {
          targetConnectionEndpoint = [(UNNotificationResponse *)self targetConnectionEndpoint];
          targetConnectionEndpoint2 = [equalCopy targetConnectionEndpoint];
          if (UNEqualObjects(targetConnectionEndpoint, targetConnectionEndpoint2))
          {
            targetSceneIdentifier = [(UNNotificationResponse *)self targetSceneIdentifier];
            [equalCopy targetSceneIdentifier];
            v13 = v17 = targetConnectionEndpoint;
            v14 = UNEqualStrings(targetSceneIdentifier, v13);

            targetConnectionEndpoint = v17;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  actionIdentifier = [(UNNotificationResponse *)self actionIdentifier];
  notification = [(UNNotificationResponse *)self notification];
  v7 = [v3 stringWithFormat:@"<%@: %p actionIdentifier: %@, notification: %@>", v4, self, actionIdentifier, notification];;

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  notification = [(UNNotificationResponse *)self notification];
  [coderCopy encodeObject:notification forKey:@"notification"];

  actionIdentifier = [(UNNotificationResponse *)self actionIdentifier];
  [coderCopy encodeObject:actionIdentifier forKey:@"actionIdentifier"];

  originIdentifier = [(UNNotificationResponse *)self originIdentifier];
  [coderCopy encodeObject:originIdentifier forKey:@"originIdentifier"];

  targetConnectionEndpoint = [(UNNotificationResponse *)self targetConnectionEndpoint];
  [coderCopy encodeObject:targetConnectionEndpoint forKey:@"targetConnectionEndpoint"];

  targetSceneIdentifier = [(UNNotificationResponse *)self targetSceneIdentifier];
  [coderCopy encodeObject:targetSceneIdentifier forKey:@"targetSceneIdentifier"];
}

- (UNNotificationResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notification"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originIdentifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetConnectionEndpoint"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetSceneIdentifier"];

  v10 = [(UNNotificationResponse *)self _initWithNotification:v5 actionIdentifier:v6 originIdentifier:v7 targetConnectionEndpoint:v8 targetSceneIdentifier:v9];
  return v10;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  actionIdentifier = [(UNNotificationResponse *)self actionIdentifier];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();

  originIdentifier = [(UNNotificationResponse *)self originIdentifier];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();

  notification = [(UNNotificationResponse *)self notification];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();

  targetSceneIdentifier = [(UNNotificationResponse *)self targetSceneIdentifier];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();

  v10 = [MEMORY[0x1E698E7A8] coderWithMessage:dictionaryCopy];

  targetConnectionEndpoint = [(UNNotificationResponse *)self targetConnectionEndpoint];
  [v10 encodeObject:targetConnectionEndpoint forKey:@"targetConnectionEndpoint"];
}

- (UNNotificationResponse)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v5 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();
  objc_opt_class();
  v6 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();
  objc_opt_class();
  v7 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();
  objc_opt_class();
  v8 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();
  v9 = [MEMORY[0x1E698E7A8] coderWithMessage:dictionaryCopy];

  v10 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"targetConnectionEndpoint"];
  v11 = [(UNNotificationResponse *)self _initWithNotification:v7 actionIdentifier:v5 originIdentifier:v6 targetConnectionEndpoint:v10 targetSceneIdentifier:v8];

  return v11;
}

@end