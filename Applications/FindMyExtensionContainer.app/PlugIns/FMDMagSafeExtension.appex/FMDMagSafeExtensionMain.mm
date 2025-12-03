@interface FMDMagSafeExtensionMain
- (void)beginRequestWithExtensionContext:(id)context;
- (void)connectionStatusForAccessory:(id)accessory withCompletion:(id)completion;
- (void)fetchAllAccessoriesInfoWithInfo:(id)info withCompletion:(id)completion;
- (void)getStyleForAccessory:(id)accessory info:(id)info withCompletion:(id)completion;
- (void)launchSetupModuleWithInfo:(id)info withCompletion:(id)completion;
- (void)removeAccesoryWithSerialNumber:(id)number completion:(id)completion;
- (void)setPhoneNumberForAccessoryId:(id)id phoneNumber:(id)number info:(id)info completion:(id)completion;
- (void)updateCompletedFor:(id)for withCompletion:(id)completion;
@end

@implementation FMDMagSafeExtensionMain

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  v5 = sub_100001508();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = contextCopy;
    v15 = 2112;
    selfCopy = self;
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

    [contextCopy setAccessoryProvider:self];
  }

  _auxiliaryConnection = [contextCopy _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  v11 = remoteObjectProxy;
  if (remoteObjectProxy && [remoteObjectProxy conformsToProtocol:&OBJC_PROTOCOL___FMDExtAccessoryDelegateProtocol])
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

- (void)fetchAllAccessoriesInfoWithInfo:(id)info withCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = +[FMDMagSafeAccessoryManager sharedInstance];
  getAllAccessories = [v5 getAllAccessories];
  allValues = [getAllAccessories allValues];

  v8 = [allValues countByEnumeratingWithState:&v24 objects:v30 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v13 = objc_alloc_init(FMDExtAccessoryInfo);
        accessoryIdentifier = [v12 accessoryIdentifier];
        [v13 setAccessoryIdentifier:accessoryIdentifier];

        accessoryType = [v12 accessoryType];
        [v13 setAccessoryType:accessoryType];

        name = [v12 name];
        [v13 setName:name];

        serialNumbers = [v12 serialNumbers];
        [v13 setSerialNumbers:serialNumbers];

        deviceDiscoveryId = [v12 deviceDiscoveryId];
        [v13 setDeviceDiscoveryId:deviceDiscoveryId];

        firmwareVersion = [v12 firmwareVersion];
        [v13 setFirmwareVersion:firmwareVersion];

        lastLostModeKeyRollTime = [v12 lastLostModeKeyRollTime];

        if (lastLostModeKeyRollTime)
        {
          v28 = @"lastLostModeKeyRollTime";
          lastLostModeKeyRollTime2 = [v12 lastLostModeKeyRollTime];
          v29 = lastLostModeKeyRollTime2;
          v22 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          [v13 setAdditionalInfo:v22];
        }

        [v4 addObject:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [allValues countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v9);
  }

  completionCopy[2](completionCopy, v4, 0);
}

- (void)connectionStatusForAccessory:(id)accessory withCompletion:(id)completion
{
  completionCopy = completion;
  accessoryCopy = accessory;
  v7 = +[FMDMagSafeAccessoryManager sharedInstance];
  [v7 conncetionStatusFor:accessoryCopy withCompletion:completionCopy];
}

- (void)getStyleForAccessory:(id)accessory info:(id)info withCompletion:(id)completion
{
  completionCopy = completion;
  accessoryCopy = accessory;
  v10 = +[FMDMagSafeAccessoryManager sharedInstance];
  v9 = [v10 styleFor:accessoryCopy];

  (*(completion + 2))(completionCopy, v9, 0);
}

- (void)removeAccesoryWithSerialNumber:(id)number completion:(id)completion
{
  completionCopy = completion;
  numberCopy = number;
  v7 = +[FMDMagSafeAccessoryManager sharedInstance];
  [v7 removeAccesoryWithSerialNumber:numberCopy completion:completionCopy];
}

- (void)setPhoneNumberForAccessoryId:(id)id phoneNumber:(id)number info:(id)info completion:(id)completion
{
  completionCopy = completion;
  numberCopy = number;
  idCopy = id;
  v11 = +[FMDMagSafeAccessoryManager sharedInstance];
  [v11 setPhoneNumberForAccessoryId:idCopy phoneNumber:numberCopy completion:completionCopy];
}

- (void)launchSetupModuleWithInfo:(id)info withCompletion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v7 = sub_100004FC8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = infoCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "### context = %@", &v9, 0xCu);
  }

  v8 = +[FMDMagSafeAccessoryManager sharedInstance];
  [v8 launchSetupModuleWithInfo:infoCopy withCompletion:completionCopy];
}

- (void)updateCompletedFor:(id)for withCompletion:(id)completion
{
  completionCopy = completion;
  forCopy = for;
  v7 = +[FMDMagSafeAccessoryManager sharedInstance];
  [v7 updateCompletedFor:forCopy withCompletion:completionCopy];
}

@end