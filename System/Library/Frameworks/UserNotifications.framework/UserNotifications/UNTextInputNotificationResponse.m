@interface UNTextInputNotificationResponse
+ (UNTextInputNotificationResponse)responseWithNotification:(id)a3 actionIdentifier:(id)a4 originIdentifier:(id)a5 targetConnectionEndpoint:(id)a6 targetSceneIdentifier:(id)a7 userText:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (UNTextInputNotificationResponse)initWithCoder:(id)a3;
- (UNTextInputNotificationResponse)initWithXPCDictionary:(id)a3;
- (id)_initWithNotification:(id)a3 actionIdentifier:(id)a4 originIdentifier:(id)a5 targetConnectionEndpoint:(id)a6 targetSceneIdentifier:(id)a7 userText:(id)a8;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation UNTextInputNotificationResponse

+ (UNTextInputNotificationResponse)responseWithNotification:(id)a3 actionIdentifier:(id)a4 originIdentifier:(id)a5 targetConnectionEndpoint:(id)a6 targetSceneIdentifier:(id)a7 userText:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[a1 alloc] _initWithNotification:v19 actionIdentifier:v18 originIdentifier:v17 targetConnectionEndpoint:v16 targetSceneIdentifier:v15 userText:v14];

  return v20;
}

- (id)_initWithNotification:(id)a3 actionIdentifier:(id)a4 originIdentifier:(id)a5 targetConnectionEndpoint:(id)a6 targetSceneIdentifier:(id)a7 userText:(id)a8
{
  v13 = a8;
  v18.receiver = self;
  v18.super_class = UNTextInputNotificationResponse;
  v14 = [(UNNotificationResponse *)&v18 _initWithNotification:a3 actionIdentifier:a4 originIdentifier:a5 targetConnectionEndpoint:a6 targetSceneIdentifier:0];
  if (v14)
  {
    v15 = [v13 copy];
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
  v4 = [(UNTextInputNotificationResponse *)self userText];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UNTextInputNotificationResponse;
  if ([(UNNotificationResponse *)&v9 isEqual:v4])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(UNTextInputNotificationResponse *)self userText];
      v6 = [v4 userText];
      v7 = UNEqualObjects(v5, v6);
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
  v5 = [(UNNotificationResponse *)self actionIdentifier];
  v6 = [(UNTextInputNotificationResponse *)self userText];
  v7 = [(UNNotificationResponse *)self notification];
  v8 = [v3 stringWithFormat:@"<%@: %p actionIdentifier: %@, userText: %@, notification: %@>", v4, self, v5, v6, v7];;

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNNotificationResponse *)self notification];
  [v4 encodeObject:v5 forKey:@"notification"];

  v6 = [(UNNotificationResponse *)self actionIdentifier];
  [v4 encodeObject:v6 forKey:@"actionIdentifier"];

  v7 = [(UNTextInputNotificationResponse *)self userText];
  [v4 encodeObject:v7 forKey:@"userText"];

  v8 = [(UNNotificationResponse *)self originIdentifier];
  [v4 encodeObject:v8 forKey:@"originIdentifier"];

  v9 = [(UNNotificationResponse *)self targetConnectionEndpoint];
  [v4 encodeObject:v9 forKey:@"targetConnectionEndpoint"];

  v10 = [(UNNotificationResponse *)self targetSceneIdentifier];
  [v4 encodeObject:v10 forKey:@"targetSceneIdentifier"];
}

- (UNTextInputNotificationResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notification"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userText"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originIdentifier"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetConnectionEndpoint"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetSceneIdentifier"];

  v11 = [(UNTextInputNotificationResponse *)self _initWithNotification:v5 actionIdentifier:v6 originIdentifier:v8 targetConnectionEndpoint:v9 targetSceneIdentifier:v10 userText:v7];
  return v11;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = [(UNNotificationResponse *)self actionIdentifier];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();

  v6 = [(UNNotificationResponse *)self originIdentifier];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();

  v7 = [(UNTextInputNotificationResponse *)self userText];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();

  v8 = [(UNNotificationResponse *)self notification];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();

  v9 = [(UNNotificationResponse *)self targetSceneIdentifier];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();

  v11 = [MEMORY[0x1E698E7A8] coderWithMessage:v4];

  v10 = [(UNNotificationResponse *)self targetConnectionEndpoint];
  [v11 encodeObject:v10 forKey:@"targetConnectionEndpoint"];
}

- (UNTextInputNotificationResponse)initWithXPCDictionary:(id)a3
{
  v4 = a3;
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
  v10 = [MEMORY[0x1E698E7A8] coderWithMessage:v4];

  v11 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"targetConnectionEndpoint"];
  v12 = [(UNTextInputNotificationResponse *)self _initWithNotification:v8 actionIdentifier:v5 originIdentifier:v6 targetConnectionEndpoint:v11 targetSceneIdentifier:v9 userText:v7];

  return v12;
}

@end