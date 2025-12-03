@interface UNTextInputNotificationResponse
+ (UNTextInputNotificationResponse)responseWithNotification:(id)notification actionIdentifier:(id)identifier originIdentifier:(id)originIdentifier targetConnectionEndpoint:(id)endpoint targetSceneIdentifier:(id)sceneIdentifier userText:(id)text;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (UNTextInputNotificationResponse)initWithCoder:(id)coder;
- (UNTextInputNotificationResponse)initWithXPCDictionary:(id)dictionary;
- (id)_initWithNotification:(id)notification actionIdentifier:(id)identifier originIdentifier:(id)originIdentifier targetConnectionEndpoint:(id)endpoint targetSceneIdentifier:(id)sceneIdentifier userText:(id)text;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation UNTextInputNotificationResponse

+ (UNTextInputNotificationResponse)responseWithNotification:(id)notification actionIdentifier:(id)identifier originIdentifier:(id)originIdentifier targetConnectionEndpoint:(id)endpoint targetSceneIdentifier:(id)sceneIdentifier userText:(id)text
{
  textCopy = text;
  sceneIdentifierCopy = sceneIdentifier;
  endpointCopy = endpoint;
  originIdentifierCopy = originIdentifier;
  identifierCopy = identifier;
  notificationCopy = notification;
  v20 = [[self alloc] _initWithNotification:notificationCopy actionIdentifier:identifierCopy originIdentifier:originIdentifierCopy targetConnectionEndpoint:endpointCopy targetSceneIdentifier:sceneIdentifierCopy userText:textCopy];

  return v20;
}

- (id)_initWithNotification:(id)notification actionIdentifier:(id)identifier originIdentifier:(id)originIdentifier targetConnectionEndpoint:(id)endpoint targetSceneIdentifier:(id)sceneIdentifier userText:(id)text
{
  textCopy = text;
  v18.receiver = self;
  v18.super_class = UNTextInputNotificationResponse;
  v14 = [(UNNotificationResponse *)&v18 _initWithNotification:notification actionIdentifier:identifier originIdentifier:originIdentifier targetConnectionEndpoint:endpoint targetSceneIdentifier:0];
  if (v14)
  {
    v15 = [textCopy copy];
    v16 = v14[6];
    v14[6] = v15;
  }

  return v14;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = UNTextInputNotificationResponse;
  v3 = [(UNNotificationResponse *)&v7 hash];
  userText = [(UNTextInputNotificationResponse *)self userText];
  v5 = [userText hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = UNTextInputNotificationResponse;
  if ([(UNNotificationResponse *)&v9 isEqual:equalCopy])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      userText = [(UNTextInputNotificationResponse *)self userText];
      userText2 = [equalCopy userText];
      v7 = UNEqualObjects(userText, userText2);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  actionIdentifier = [(UNNotificationResponse *)self actionIdentifier];
  userText = [(UNTextInputNotificationResponse *)self userText];
  notification = [(UNNotificationResponse *)self notification];
  v8 = [v3 stringWithFormat:@"<%@: %p actionIdentifier: %@, userText: %@, notification: %@>", v4, self, actionIdentifier, userText, notification];;

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  notification = [(UNNotificationResponse *)self notification];
  [coderCopy encodeObject:notification forKey:@"notification"];

  actionIdentifier = [(UNNotificationResponse *)self actionIdentifier];
  [coderCopy encodeObject:actionIdentifier forKey:@"actionIdentifier"];

  userText = [(UNTextInputNotificationResponse *)self userText];
  [coderCopy encodeObject:userText forKey:@"userText"];

  originIdentifier = [(UNNotificationResponse *)self originIdentifier];
  [coderCopy encodeObject:originIdentifier forKey:@"originIdentifier"];

  targetConnectionEndpoint = [(UNNotificationResponse *)self targetConnectionEndpoint];
  [coderCopy encodeObject:targetConnectionEndpoint forKey:@"targetConnectionEndpoint"];

  targetSceneIdentifier = [(UNNotificationResponse *)self targetSceneIdentifier];
  [coderCopy encodeObject:targetSceneIdentifier forKey:@"targetSceneIdentifier"];
}

- (UNTextInputNotificationResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notification"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userText"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originIdentifier"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetConnectionEndpoint"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetSceneIdentifier"];

  v11 = [(UNTextInputNotificationResponse *)self _initWithNotification:v5 actionIdentifier:v6 originIdentifier:v8 targetConnectionEndpoint:v9 targetSceneIdentifier:v10 userText:v7];
  return v11;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  actionIdentifier = [(UNNotificationResponse *)self actionIdentifier];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();

  originIdentifier = [(UNNotificationResponse *)self originIdentifier];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();

  userText = [(UNTextInputNotificationResponse *)self userText];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();

  notification = [(UNNotificationResponse *)self notification];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();

  targetSceneIdentifier = [(UNNotificationResponse *)self targetSceneIdentifier];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();

  v11 = [MEMORY[0x1E698E7A8] coderWithMessage:dictionaryCopy];

  targetConnectionEndpoint = [(UNNotificationResponse *)self targetConnectionEndpoint];
  [v11 encodeObject:targetConnectionEndpoint forKey:@"targetConnectionEndpoint"];
}

- (UNTextInputNotificationResponse)initWithXPCDictionary:(id)dictionary
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
  objc_opt_class();
  v9 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();
  v10 = [MEMORY[0x1E698E7A8] coderWithMessage:dictionaryCopy];

  v11 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"targetConnectionEndpoint"];
  v12 = [(UNTextInputNotificationResponse *)self _initWithNotification:v8 actionIdentifier:v5 originIdentifier:v6 targetConnectionEndpoint:v11 targetSceneIdentifier:v9 userText:v7];

  return v12;
}

@end