@interface FMDMagSafeExtensionMain
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)connectionStatusForAccessory:(id)a3 withCompletion:(id)a4;
- (void)fetchAllAccessoriesInfoWithInfo:(id)a3 withCompletion:(id)a4;
- (void)getStyleForAccessory:(id)a3 info:(id)a4 withCompletion:(id)a5;
- (void)launchSetupModuleWithInfo:(id)a3 withCompletion:(id)a4;
- (void)removeAccesoryWithSerialNumber:(id)a3 completion:(id)a4;
- (void)setPhoneNumberForAccessoryId:(id)a3 phoneNumber:(id)a4 info:(id)a5 completion:(id)a6;
- (void)updateCompletedFor:(id)a3 withCompletion:(id)a4;
@end

@implementation FMDMagSafeExtensionMain

- (void)beginRequestWithExtensionContext:(id)a3
{
  v4 = a3;
  v5 = sub_100001508();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v4;
    v15 = 2112;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "beginRequestWithExtensionCalled with context %@ and accessory provider = %@", &v13, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = sub_100001508();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v13 = 138412290;
      v14 = v7;
      v8 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "beginRequestWithExtensionCalled with context %@", &v13, 0xCu);
    }

    [v4 setAccessoryProvider:self];
  }

  v9 = [v4 _auxiliaryConnection];
  v10 = [v9 remoteObjectProxy];
  v11 = v10;
  if (v10 && [v10 conformsToProtocol:&OBJC_PROTOCOL___FMDExtAccessoryDelegateProtocol])
  {
    [(FMDMagSafeExtensionMain *)self setHostProxy:v11];
  }

  else
  {
    v12 = sub_100001508();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000150A8(v11, v12);
    }
  }
}

- (void)fetchAllAccessoriesInfoWithInfo:(id)a3 withCompletion:(id)a4
{
  v23 = a4;
  v4 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = +[FMDMagSafeAccessoryManager sharedInstance];
  v6 = [v5 getAllAccessories];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v13 = objc_alloc_init(FMDExtAccessoryInfo);
        v14 = [v12 accessoryIdentifier];
        [v13 setAccessoryIdentifier:v14];

        v15 = [v12 accessoryType];
        [v13 setAccessoryType:v15];

        v16 = [v12 name];
        [v13 setName:v16];

        v17 = [v12 serialNumbers];
        [v13 setSerialNumbers:v17];

        v18 = [v12 deviceDiscoveryId];
        [v13 setDeviceDiscoveryId:v18];

        v19 = [v12 firmwareVersion];
        [v13 setFirmwareVersion:v19];

        v20 = [v12 lastLostModeKeyRollTime];

        if (v20)
        {
          v28 = @"lastLostModeKeyRollTime";
          v21 = [v12 lastLostModeKeyRollTime];
          v29 = v21;
          v22 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          [v13 setAdditionalInfo:v22];
        }

        [v4 addObject:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v9);
  }

  v23[2](v23, v4, 0);
}

- (void)connectionStatusForAccessory:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[FMDMagSafeAccessoryManager sharedInstance];
  [v7 conncetionStatusFor:v6 withCompletion:v5];
}

- (void)getStyleForAccessory:(id)a3 info:(id)a4 withCompletion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v10 = +[FMDMagSafeAccessoryManager sharedInstance];
  v9 = [v10 styleFor:v8];

  (*(a5 + 2))(v7, v9, 0);
}

- (void)removeAccesoryWithSerialNumber:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[FMDMagSafeAccessoryManager sharedInstance];
  [v7 removeAccesoryWithSerialNumber:v6 completion:v5];
}

- (void)setPhoneNumberForAccessoryId:(id)a3 phoneNumber:(id)a4 info:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a4;
  v10 = a3;
  v11 = +[FMDMagSafeAccessoryManager sharedInstance];
  [v11 setPhoneNumberForAccessoryId:v10 phoneNumber:v9 completion:v8];
}

- (void)launchSetupModuleWithInfo:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100004FC8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "### context = %@", &v9, 0xCu);
  }

  v8 = +[FMDMagSafeAccessoryManager sharedInstance];
  [v8 launchSetupModuleWithInfo:v5 withCompletion:v6];
}

- (void)updateCompletedFor:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[FMDMagSafeAccessoryManager sharedInstance];
  [v7 updateCompletedFor:v6 withCompletion:v5];
}

@end