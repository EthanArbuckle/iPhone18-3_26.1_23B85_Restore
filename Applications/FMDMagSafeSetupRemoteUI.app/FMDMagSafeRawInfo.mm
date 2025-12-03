@interface FMDMagSafeRawInfo
- (BOOL)authPassed;
- (BOOL)hasEnoughInformation;
- (FMDMagSafeRawInfo)initWithCoder:(id)coder;
- (FMDMagSafeRawInfo)initWithConnectionInfo:(id)info;
- (NSString)name;
- (void)beginUserKeyEraseWithCompletion:(id)completion;
- (void)cancelUserKeyEraseWithCompletion:(id)completion;
- (void)cancelVendorKeyEraseWithCompletion:(id)completion;
- (void)continueUserKeyErase:(id)erase withSignature:(id)signature andAccessoryNonce:(id)nonce forEndpoint:(id)endpoint completion:(id)completion;
- (void)copyUserPrivateKeyWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)getAuthNonceWithCompletion:(id)completion;
- (void)getPairingDataWithCompletion:(id)completion;
- (void)getPairingStatus;
- (void)removeKeysWithCompletion:(id)completion;
- (void)setName:(id)name withCompletion:(id)completion;
- (void)setPairingData:(id)data withCompletion:(id)completion;
- (void)setupKeysWithCompletion:(id)completion;
- (void)updateWithAccessoryInfo:(id)info;
- (void)updateWithProperties:(id)properties;
- (void)vendorKeyErase:(id)erase withSignature:(id)signature andAccessoryNonce:(id)nonce forEndpoint:(id)endpoint completion:(id)completion;
@end

@implementation FMDMagSafeRawInfo

- (FMDMagSafeRawInfo)initWithConnectionInfo:(id)info
{
  infoCopy = info;
  v8.receiver = self;
  v8.super_class = FMDMagSafeRawInfo;
  v5 = [(FMDMagSafeRawInfo *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FMDMagSafeRawInfo *)v5 setConnectionInfo:infoCopy];
  }

  return v6;
}

- (BOOL)authPassed
{
  if ([(FMDMagSafeRawInfo *)self protocol]!= 14 || ![(FMDMagSafeRawInfo *)self infoAvailable])
  {
    return 0;
  }

  authStatus = [(FMDMagSafeRawInfo *)self authStatus];
  v4 = [authStatus isEqualToNumber:&off_10003D930];

  return v4;
}

- (void)updateWithAccessoryInfo:(id)info
{
  infoCopy = info;
  v5 = sub_100002400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updateWithAccessoryInfo with %@", &v18, 0xCu);
  }

  v6 = kACCInfo_SerialNumber;
  v7 = [infoCopy objectForKeyedSubscript:kACCInfo_SerialNumber];
  if (v7)
  {
    v8 = v7;
    v9 = [infoCopy objectForKeyedSubscript:v6];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [infoCopy objectForKeyedSubscript:v6];
      [(FMDMagSafeRawInfo *)self setSerialNumber:v11];
    }
  }

  [(FMDMagSafeRawInfo *)self setFirmwareVersion:@"1.1.1"];
  v12 = kACCInfo_AccessoryDeviceUID;
  v13 = [infoCopy objectForKeyedSubscript:kACCInfo_AccessoryDeviceUID];
  if (v13)
  {
    v14 = v13;
    v15 = [infoCopy objectForKeyedSubscript:v12];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if (v16)
    {
      v17 = [infoCopy objectForKeyedSubscript:v12];
      [(FMDMagSafeRawInfo *)self setCoreAccessoryUID:v17];
    }
  }
}

- (void)updateWithProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = sub_100002400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v50 = 138412290;
    v51 = propertiesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updateWithProperties with %@", &v50, 0xCu);
  }

  v6 = kACCProperties_Endpoint_NFC_Type;
  v7 = [propertiesCopy objectForKeyedSubscript:kACCProperties_Endpoint_NFC_Type];
  if (v7)
  {
    v8 = v7;
    v9 = [propertiesCopy objectForKeyedSubscript:v6];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [propertiesCopy objectForKeyedSubscript:v6];
      stringValue = [v11 stringValue];
      [(FMDMagSafeRawInfo *)self setAccessoryType:stringValue];
    }
  }

  v13 = kACCProperties_Endpoint_NFC_WashIndex;
  v14 = [propertiesCopy objectForKeyedSubscript:kACCProperties_Endpoint_NFC_WashIndex];
  if (v14)
  {
    v15 = v14;
    v16 = [propertiesCopy objectForKeyedSubscript:v13];
    objc_opt_class();
    v17 = objc_opt_isKindOfClass();

    if (v17)
    {
      v18 = [propertiesCopy objectForKeyedSubscript:v13];
      stringValue2 = [v18 stringValue];
      [(FMDMagSafeRawInfo *)self setStyle:stringValue2];

      v20 = sub_100002400();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        style = [(FMDMagSafeRawInfo *)self style];
        v50 = 138412290;
        v51 = style;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#colorTesting color of wallet = %@", &v50, 0xCu);
      }
    }
  }

  v22 = kACCExternalAccessoryAuthStatusKey;
  v23 = [propertiesCopy objectForKeyedSubscript:kACCExternalAccessoryAuthStatusKey];
  if (v23)
  {
    v24 = v23;
    v25 = [propertiesCopy objectForKeyedSubscript:v22];
    objc_opt_class();
    v26 = objc_opt_isKindOfClass();

    if (v26)
    {
      v27 = [propertiesCopy objectForKeyedSubscript:v22];
      [(FMDMagSafeRawInfo *)self setAuthStatus:v27];
    }
  }

  v28 = [propertiesCopy objectForKeyedSubscript:@"NFC_InfoAvailable"];
  if (v28 && (v29 = v28, [propertiesCopy objectForKeyedSubscript:@"NFC_InfoAvailable"], v30 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v31 = objc_opt_isKindOfClass(), v30, v29, (v31 & 1) != 0))
  {
    v32 = sub_100002400();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [propertiesCopy objectForKeyedSubscript:@"NFC_InfoAvailable"];
      v34 = [propertiesCopy objectForKeyedSubscript:@"NFC_InfoAvailable"];
      v35 = objc_opt_class();
      v50 = 138412546;
      v51 = v33;
      v52 = 2112;
      v53 = v35;
      v36 = v35;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "FMDMagSafeRawInfo: get NFC_InfoAvailable  = %@ %@", &v50, 0x16u);
    }

    v37 = [propertiesCopy objectForKeyedSubscript:@"NFC_InfoAvailable"];
    [(FMDMagSafeRawInfo *)self setInfoAvailable:CFBooleanGetValue(v37) != 0];
  }

  else
  {
    v38 = sub_100002400();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [propertiesCopy objectForKeyedSubscript:@"NFC_InfoAvailable"];
      v40 = [propertiesCopy objectForKeyedSubscript:@"NFC_InfoAvailable"];
      v41 = objc_opt_class();
      v50 = 138412546;
      v51 = v39;
      v52 = 2112;
      v53 = v41;
      v42 = v41;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "FMDMagSafeRawInfo: get NFC_InfoAvailable unexpected  = %@ %@", &v50, 0x16u);
    }

    [(FMDMagSafeRawInfo *)self setInfoAvailable:0];
  }

  v43 = [propertiesCopy objectForKeyedSubscript:@"ACCMFi4PairingStatus"];
  if (v43 && (v44 = v43, [propertiesCopy objectForKeyedSubscript:@"ACCMFi4PairingStatus"], v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_opt_respondsToSelector(), v45, v44, (v46 & 1) != 0))
  {
    v47 = [propertiesCopy objectForKeyedSubscript:@"ACCMFi4PairingStatus"];
    integerValue = [v47 integerValue];

    [(FMDMagSafeRawInfo *)self setIsNVMSetup:(integerValue & 0xFFFFFFFE) == 2];
    [(FMDMagSafeRawInfo *)self setKeysAvailable:integerValue == 2];
  }

  else
  {
    v49 = sub_100002400();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v50) = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "did not get ACCMFi4PairingStatus", &v50, 2u);
    }
  }
}

- (BOOL)hasEnoughInformation
{
  serialNumber = [(FMDMagSafeRawInfo *)self serialNumber];
  if (serialNumber)
  {
    accessoryType = [(FMDMagSafeRawInfo *)self accessoryType];
    v5 = accessoryType != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)name
{
  if (!self->_name && [(FMDMagSafeRawInfo *)self authPassed])
  {
    v3 = dispatch_group_create();
    endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
    if ([(FMDMagSafeRawInfo *)self enableCAAPI:@"enableGetAccessoryUserName"])
    {
      dispatch_group_enter(v3);
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = sub_10001036C;
      v23 = sub_10001037C;
      v24 = 0;
      v5 = sub_100002400();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA calling getAccessoryUserName", buf, 2u);
      }

      connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100010384;
      v16[3] = &unk_100038DC0;
      v18 = &v19;
      v7 = v3;
      v17 = v7;
      [connectionInfo getAccessoryUserName:endPointUUID withReply:v16];

      v8 = dispatch_time(0, 5000000000);
      v9 = dispatch_group_wait(v7, v8);
      if (v9)
      {
        v10 = v9;
        name = sub_100002400();
        if (os_log_type_enabled(name, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v20[5];
          *buf = 134218242;
          v26 = v10;
          v27 = 2112;
          v28 = v12;
          _os_log_impl(&_mh_execute_header, name, OS_LOG_TYPE_DEFAULT, "#CA timeout while trying to getAccessoryUserName error %ld result = %@", buf, 0x16u);
        }
      }

      else
      {
        v13 = v20[5];
        name = self->_name;
        self->_name = v13;
      }

      _Block_object_dispose(&v19, 8);
    }
  }

  v14 = self->_name;

  return v14;
}

- (void)getPairingStatus
{
  v3 = dispatch_group_create();
  v4 = objc_alloc_init(NSMutableDictionary);
  endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
  if ([(FMDMagSafeRawInfo *)self enableCAAPI:@"enableGetPairingStatus"]&& [(FMDMagSafeRawInfo *)self authPassed])
  {
    dispatch_group_enter(v3);
    v6 = sub_100002400();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#CA calling getPairingStatus", buf, 2u);
    }

    *buf = 0;
    v23 = buf;
    v24 = 0x2020000000;
    v25 = 0;
    connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_1000107A8;
    v19 = &unk_100038DE8;
    v21 = buf;
    v8 = v3;
    v20 = v8;
    [connectionInfo getPairingStatus:endPointUUID withReply:&v16];

    v9 = dispatch_time(0, 5000000000);
    v10 = dispatch_group_wait(v8, v9);
    v11 = *(v23 + 6);
    if (v11 >= 4)
    {
      v12 = @"no value";
    }

    else
    {
      v12 = *(&off_100038F48 + v11);
    }

    v13 = sub_100002400();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v23 + 6);
      *v26 = 67109378;
      *v27 = v14;
      *&v27[4] = 2112;
      *&v27[6] = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#CA pairningstatus = %d %@", v26, 0x12u);
    }

    if (v10)
    {
      v15 = sub_100002400();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 134218242;
        *v27 = v10;
        *&v27[8] = 2112;
        *&v27[10] = v4;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#CA timeout while trying to getPairingStatus error %ld result = %@", v26, 0x16u);
      }
    }

    else
    {
      [(FMDMagSafeRawInfo *)self setIsNVMSetup:(*(v23 + 6) & 0xFFFFFFFE) == 2, v16, v17, v18, v19];
      [(FMDMagSafeRawInfo *)self setKeysAvailable:*(v23 + 6) == 2];
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)setPairingData:(id)data withCompletion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v8 = sub_100002400();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setting pairing Data", buf, 2u);
  }

  data = [dataCopy data];
  v10 = objc_alloc_init(NSMutableArray);
  v11 = 0;
  v12 = 4;
  do
  {
    if (([data length] - v11) < 0xF0)
    {
      if ([data length] == v11)
      {
        v14 = objc_alloc_init(NSData);
        [v10 addObject:v14];
      }

      else
      {
        v15 = [data subdataWithRange:{v11, objc_msgSend(data, "length") - v11}];
        [v10 addObject:v15];

        v11 = [data length];
      }
    }

    else
    {
      v13 = [data subdataWithRange:{v11, 240}];
      [v10 addObject:v13];

      v11 += 240;
    }

    --v12;
  }

  while (v12);
  v32[0] = &off_10003D948;
  v16 = [v10 objectAtIndexedSubscript:0];
  v33[0] = v16;
  v32[1] = &off_10003D960;
  v17 = [v10 objectAtIndexedSubscript:1];
  v33[1] = v17;
  v32[2] = &off_10003D978;
  v18 = [v10 objectAtIndexedSubscript:2];
  v33[2] = v18;
  v32[3] = &off_10003D990;
  v19 = [v10 objectAtIndexedSubscript:3];
  v33[3] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];

  v21 = sub_100002400();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#CA calling setPublicNVMKeyValues with %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
  endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100010C6C;
  v26[3] = &unk_100038E10;
  objc_copyWeak(&v29, buf);
  v24 = dataCopy;
  v27 = v24;
  v25 = completionCopy;
  v28 = v25;
  [connectionInfo setPublicNVMKeyValues:v20 forEndpoint:endPointUUID withReply:v26];

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);
}

- (void)getPairingDataWithCompletion:(id)completion
{
  completionCopy = completion;
  pairingData = [(FMDMagSafeRawInfo *)self pairingData];

  if (pairingData)
  {
    pairingData2 = [(FMDMagSafeRawInfo *)self pairingData];
    completionCopy[2](completionCopy, pairingData2, 0);
  }

  else
  {
    v7 = sub_100002400();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
      *buf = 138412546;
      v16 = endPointUUID;
      v17 = 2112;
      v18 = &off_10003DA08;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#CA calling getPublicNVMKeyValues %@ %@", buf, 0x16u);
    }

    connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
    endPointUUID2 = [(FMDMagSafeRawInfo *)self endPointUUID];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100010F20;
    v11[3] = &unk_100038E38;
    v12 = &off_10003DA08;
    selfCopy = self;
    v14 = completionCopy;
    [connectionInfo getPublicNVMKeyValues:&off_10003DA08 forEndpoint:endPointUUID2 withReply:v11];
  }
}

- (void)setName:(id)name withCompletion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v8 = sub_100002400();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setting accessory name", buf, 2u);
  }

  if ([(FMDMagSafeRawInfo *)self enableCAAPI:@"enableSetAccessoryUserName"])
  {
    v9 = sub_100002400();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#CA calling setAccessoryUserName", buf, 2u);
    }

    objc_initWeak(buf, self);
    v10 = dispatch_get_global_queue(2, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100011384;
    v11[3] = &unk_100038E60;
    v11[4] = self;
    v12 = nameCopy;
    objc_copyWeak(&v14, buf);
    v13 = completionCopy;
    dispatch_async(v10, v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    [(FMDMagSafeRawInfo *)self setName:nameCopy];
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)setupKeysWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "provisioning keys for accessory", buf, 2u);
  }

  if ([(FMDMagSafeRawInfo *)self isNVMSetup])
  {
    v6 = sub_100002400();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001E888(v6);
    }

    v7 = +[NSError fm_genericError];
    completionCopy[2](completionCopy, v7);
  }

  else
  {
    objc_initWeak(buf, self);
    if ([(FMDMagSafeRawInfo *)self enableCAAPI:@"enableProvisionAccessoryForFindMy"])
    {
      v8 = sub_100002400();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#CA calling provisionAccessoryForFindMy", v13, 2u);
      }

      v9 = dispatch_get_global_queue(2, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000117A4;
      block[3] = &unk_100038EB0;
      block[4] = self;
      objc_copyWeak(&v12, buf);
      v11 = completionCopy;
      dispatch_async(v9, block);

      objc_destroyWeak(&v12);
    }

    else
    {
      [(FMDMagSafeRawInfo *)self setIsNVMSetup:1];
      [(FMDMagSafeRawInfo *)self setKeysAvailable:1];
      completionCopy[2](completionCopy, 0);
    }

    objc_destroyWeak(buf);
  }
}

- (void)removeKeysWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "### removing keys for accessory", buf, 2u);
  }

  objc_initWeak(buf, self);
  if ([(FMDMagSafeRawInfo *)self enableCAAPI:@"enableResetPairingInformation"])
  {
    v6 = sub_100002400();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "### #CA calling resetPairingInformation", v13, 2u);
    }

    connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
    endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100011B84;
    v10[3] = &unk_100038E88;
    objc_copyWeak(&v12, buf);
    v11 = completionCopy;
    [connectionInfo resetPairingInformation:endPointUUID withReply:v10];

    objc_destroyWeak(&v12);
  }

  else
  {
    [(FMDMagSafeRawInfo *)self setIsNVMSetup:0];
    [(FMDMagSafeRawInfo *)self setKeysAvailable:0];
    v9 = +[NSError fm_genericError];
    (*(completionCopy + 2))(completionCopy, v9);
  }

  objc_destroyWeak(buf);
}

- (void)getAuthNonceWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA calling beginVendorKeyErase", buf, 2u);
  }

  connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
  endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100011D8C;
  v9[3] = &unk_100038ED8;
  v10 = completionCopy;
  v8 = completionCopy;
  [connectionInfo beginVendorKeyErase:endPointUUID withReply:v9];
}

- (void)vendorKeyErase:(id)erase withSignature:(id)signature andAccessoryNonce:(id)nonce forEndpoint:(id)endpoint completion:(id)completion
{
  completionCopy = completion;
  endpointCopy = endpoint;
  nonceCopy = nonce;
  signatureCopy = signature;
  eraseCopy = erase;
  v17 = sub_100002400();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#CA calling continueVendorKeyErase", buf, 2u);
  }

  connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100011FD0;
  v20[3] = &unk_100038F00;
  v20[4] = self;
  v21 = completionCopy;
  v19 = completionCopy;
  [connectionInfo continueVendorKeyErase:eraseCopy withSignature:signatureCopy andAccessoryNonce:nonceCopy forEndpoint:endpointCopy withReply:v20];
}

- (void)copyUserPrivateKeyWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA calling copyUserPrivateKey", buf, 2u);
  }

  connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
  endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000121C8;
  v9[3] = &unk_100038ED8;
  v10 = completionCopy;
  v8 = completionCopy;
  [connectionInfo copyUserPrivateKey:endPointUUID withReply:v9];
}

- (void)beginUserKeyEraseWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA calling beginUserKeyErase", buf, 2u);
  }

  connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
  endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000123C4;
  v9[3] = &unk_100038ED8;
  v10 = completionCopy;
  v8 = completionCopy;
  [connectionInfo beginUserKeyErase:endPointUUID withReply:v9];
}

- (void)continueUserKeyErase:(id)erase withSignature:(id)signature andAccessoryNonce:(id)nonce forEndpoint:(id)endpoint completion:(id)completion
{
  completionCopy = completion;
  endpointCopy = endpoint;
  nonceCopy = nonce;
  signatureCopy = signature;
  eraseCopy = erase;
  v17 = sub_100002400();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#CA calling continueUserKeyErase", buf, 2u);
  }

  connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100012608;
  v20[3] = &unk_100038F00;
  v20[4] = self;
  v21 = completionCopy;
  v19 = completionCopy;
  [connectionInfo continueUserKeyErase:eraseCopy withSignature:signatureCopy andAccessoryNonce:nonceCopy forEndpoint:endpointCopy withReply:v20];
}

- (void)cancelUserKeyEraseWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA calling cancelUserKeyErase", buf, 2u);
  }

  connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
  endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100012800;
  v9[3] = &unk_100038F28;
  v10 = completionCopy;
  v8 = completionCopy;
  [connectionInfo cancelUserKeyErase:endPointUUID withReply:v9];
}

- (void)cancelVendorKeyEraseWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA calling cancelVendorKeyErase", buf, 2u);
  }

  connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
  endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000129E0;
  v9[3] = &unk_100038F28;
  v10 = completionCopy;
  v8 = completionCopy;
  [connectionInfo cancelVendorKeyErase:endPointUUID withReply:v9];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryType = [(FMDMagSafeRawInfo *)self accessoryType];
  [coderCopy encodeObject:accessoryType forKey:@"accessoryType"];
}

- (FMDMagSafeRawInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FMDMagSafeRawInfo;
  v5 = [(FMDMagSafeRawInfo *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryType"];
    accessoryType = v5->_accessoryType;
    v5->_accessoryType = v6;
  }

  return v5;
}

@end