@interface UNNotificationResponse
+ (UNNotificationResponse)responseWithNotification:(id)a3 actionIdentifier:(id)a4 originIdentifier:(id)a5 targetConnectionEndpoint:(id)a6;
+ (UNNotificationResponse)responseWithNotification:(id)a3 actionIdentifier:(id)a4 originIdentifier:(id)a5 targetConnectionEndpoint:(id)a6 targetSceneIdentifier:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (UNNotificationResponse)initWithCoder:(id)a3;
- (UNNotificationResponse)initWithXPCDictionary:(id)a3;
- (id)_initWithNotification:(id)a3 actionIdentifier:(id)a4 originIdentifier:(id)a5 targetConnectionEndpoint:(id)a6 targetSceneIdentifier:(id)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation UNNotificationResponse

+ (UNNotificationResponse)responseWithNotification:(id)a3 actionIdentifier:(id)a4 originIdentifier:(id)a5 targetConnectionEndpoint:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] _initWithNotification:v13 actionIdentifier:v12 originIdentifier:v11 targetConnectionEndpoint:v10 targetSceneIdentifier:0];

  return v14;
}

+ (UNNotificationResponse)responseWithNotification:(id)a3 actionIdentifier:(id)a4 originIdentifier:(id)a5 targetConnectionEndpoint:(id)a6 targetSceneIdentifier:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] _initWithNotification:v16 actionIdentifier:v15 originIdentifier:v14 targetConnectionEndpoint:v13 targetSceneIdentifier:v12];

  return v17;
}

- (id)_initWithNotification:(id)a3 actionIdentifier:(id)a4 originIdentifier:(id)a5 targetConnectionEndpoint:(id)a6 targetSceneIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = UNNotificationResponse;
  v17 = [(UNNotificationResponse *)&v25 init];
  if (v17)
  {
    v18 = [v12 copy];
    notification = v17->_notification;
    v17->_notification = v18;

    v20 = [v13 copy];
    actionIdentifier = v17->_actionIdentifier;
    v17->_actionIdentifier = v20;

    v22 = [v14 copy];
    originIdentifier = v17->_originIdentifier;
    v17->_originIdentifier = v22;

    objc_storeStrong(&v17->_targetConnectionEndpoint, a6);
    objc_storeStrong(&v17->_targetSceneIdentifier, a7);
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [(UNNotificationResponse *)self notification];
  v4 = [v3 hash];
  v5 = [(UNNotificationResponse *)self actionIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(UNNotificationResponse *)self originIdentifier];
  v8 = [v7 hash];
  v9 = [(UNNotificationResponse *)self targetConnectionEndpoint];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(UNNotificationResponse *)self targetSceneIdentifier];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UNNotificationResponse *)self notification];
    v6 = [v4 notification];
    if (UNEqualObjects(v5, v6))
    {
      v7 = [(UNNotificationResponse *)self actionIdentifier];
      v8 = [v4 actionIdentifier];
      if (UNEqualStrings(v7, v8))
      {
        v9 = [(UNNotificationResponse *)self originIdentifier];
        v10 = [v4 originIdentifier];
        if (UNEqualStrings(v9, v10))
        {
          v11 = [(UNNotificationResponse *)self targetConnectionEndpoint];
          v12 = [v4 targetConnectionEndpoint];
          if (UNEqualObjects(v11, v12))
          {
            v16 = [(UNNotificationResponse *)self targetSceneIdentifier];
            [v4 targetSceneIdentifier];
            v13 = v17 = v11;
            v14 = UNEqualStrings(v16, v13);

            v11 = v17;
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
  v5 = [(UNNotificationResponse *)self actionIdentifier];
  v6 = [(UNNotificationResponse *)self notification];
  v7 = [v3 stringWithFormat:@"<%@: %p actionIdentifier: %@, notification: %@>", v4, self, v5, v6];;

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNNotificationResponse *)self notification];
  [v4 encodeObject:v5 forKey:@"notification"];

  v6 = [(UNNotificationResponse *)self actionIdentifier];
  [v4 encodeObject:v6 forKey:@"actionIdentifier"];

  v7 = [(UNNotificationResponse *)self originIdentifier];
  [v4 encodeObject:v7 forKey:@"originIdentifier"];

  v8 = [(UNNotificationResponse *)self targetConnectionEndpoint];
  [v4 encodeObject:v8 forKey:@"targetConnectionEndpoint"];

  v9 = [(UNNotificationResponse *)self targetSceneIdentifier];
  [v4 encodeObject:v9 forKey:@"targetSceneIdentifier"];
}

- (UNNotificationResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notification"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originIdentifier"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetConnectionEndpoint"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetSceneIdentifier"];

  v10 = [(UNNotificationResponse *)self _initWithNotification:v5 actionIdentifier:v6 originIdentifier:v7 targetConnectionEndpoint:v8 targetSceneIdentifier:v9];
  return v10;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = [(UNNotificationResponse *)self actionIdentifier];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();

  v6 = [(UNNotificationResponse *)self originIdentifier];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();

  v7 = [(UNNotificationResponse *)self notification];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();

  v8 = [(UNNotificationResponse *)self targetSceneIdentifier];
  BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();

  v10 = [MEMORY[0x1E698E7A8] coderWithMessage:v4];

  v9 = [(UNNotificationResponse *)self targetConnectionEndpoint];
  [v10 encodeObject:v9 forKey:@"targetConnectionEndpoint"];
}

- (UNNotificationResponse)initWithXPCDictionary:(id)a3
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
  v9 = [MEMORY[0x1E698E7A8] coderWithMessage:v4];

  v10 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"targetConnectionEndpoint"];
  v11 = [(UNNotificationResponse *)self _initWithNotification:v7 actionIdentifier:v5 originIdentifier:v6 targetConnectionEndpoint:v10 targetSceneIdentifier:v8];

  return v11;
}

@end