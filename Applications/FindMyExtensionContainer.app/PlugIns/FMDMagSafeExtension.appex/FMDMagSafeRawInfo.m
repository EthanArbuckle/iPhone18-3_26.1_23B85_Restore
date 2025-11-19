@interface FMDMagSafeRawInfo
- (BOOL)authPassed;
- (BOOL)hasEnoughInformation;
- (FMDMagSafeRawInfo)initWithCoder:(id)a3;
- (FMDMagSafeRawInfo)initWithConnectionInfo:(id)a3;
- (NSString)name;
- (void)beginUserKeyEraseWithCompletion:(id)a3;
- (void)cancelUserKeyEraseWithCompletion:(id)a3;
- (void)cancelVendorKeyEraseWithCompletion:(id)a3;
- (void)continueUserKeyErase:(id)a3 withSignature:(id)a4 andAccessoryNonce:(id)a5 forEndpoint:(id)a6 completion:(id)a7;
- (void)copyUserPrivateKeyWithCompletion:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)getAuthNonceWithCompletion:(id)a3;
- (void)getPairingDataWithCompletion:(id)a3;
- (void)getPairingStatus;
- (void)removeKeysWithCompletion:(id)a3;
- (void)setName:(id)a3 withCompletion:(id)a4;
- (void)setPairingData:(id)a3 withCompletion:(id)a4;
- (void)setupKeysWithCompletion:(id)a3;
- (void)updateWithAccessoryInfo:(id)a3;
- (void)updateWithProperties:(id)a3;
- (void)vendorKeyErase:(id)a3 withSignature:(id)a4 andAccessoryNonce:(id)a5 forEndpoint:(id)a6 completion:(id)a7;
@end

@implementation FMDMagSafeRawInfo

- (FMDMagSafeRawInfo)initWithConnectionInfo:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FMDMagSafeRawInfo;
  v5 = [(FMDMagSafeRawInfo *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FMDMagSafeRawInfo *)v5 setConnectionInfo:v4];
  }

  return v6;
}

- (BOOL)authPassed
{
  if ([(FMDMagSafeRawInfo *)self protocol]!= 14 || ![(FMDMagSafeRawInfo *)self infoAvailable])
  {
    return 0;
  }

  v3 = [(FMDMagSafeRawInfo *)self authStatus];
  v4 = [v3 isEqualToNumber:&off_100028C30];

  return v4;
}

- (void)updateWithAccessoryInfo:(id)a3
{
  v4 = a3;
  v5 = sub_100004FC8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updateWithAccessoryInfo with %@", &v18, 0xCu);
  }

  v6 = kACCInfo_SerialNumber;
  v7 = [v4 objectForKeyedSubscript:kACCInfo_SerialNumber];
  if (v7)
  {
    v8 = v7;
    v9 = [v4 objectForKeyedSubscript:v6];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [v4 objectForKeyedSubscript:v6];
      [(FMDMagSafeRawInfo *)self setSerialNumber:v11];
    }
  }

  [(FMDMagSafeRawInfo *)self setFirmwareVersion:@"1.1.1"];
  v12 = kACCInfo_AccessoryDeviceUID;
  v13 = [v4 objectForKeyedSubscript:kACCInfo_AccessoryDeviceUID];
  if (v13)
  {
    v14 = v13;
    v15 = [v4 objectForKeyedSubscript:v12];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if (v16)
    {
      v17 = [v4 objectForKeyedSubscript:v12];
      [(FMDMagSafeRawInfo *)self setCoreAccessoryUID:v17];
    }
  }
}

- (void)updateWithProperties:(id)a3
{
  v4 = a3;
  v5 = sub_100004FC8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v50 = 138412290;
    v51 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updateWithProperties with %@", &v50, 0xCu);
  }

  v6 = kACCProperties_Endpoint_NFC_Type;
  v7 = [v4 objectForKeyedSubscript:kACCProperties_Endpoint_NFC_Type];
  if (v7)
  {
    v8 = v7;
    v9 = [v4 objectForKeyedSubscript:v6];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [v4 objectForKeyedSubscript:v6];
      v12 = [v11 stringValue];
      [(FMDMagSafeRawInfo *)self setAccessoryType:v12];
    }
  }

  v13 = kACCProperties_Endpoint_NFC_WashIndex;
  v14 = [v4 objectForKeyedSubscript:kACCProperties_Endpoint_NFC_WashIndex];
  if (v14)
  {
    v15 = v14;
    v16 = [v4 objectForKeyedSubscript:v13];
    objc_opt_class();
    v17 = objc_opt_isKindOfClass();

    if (v17)
    {
      v18 = [v4 objectForKeyedSubscript:v13];
      v19 = [v18 stringValue];
      [(FMDMagSafeRawInfo *)self setStyle:v19];

      v20 = sub_100004FC8();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(FMDMagSafeRawInfo *)self style];
        v50 = 138412290;
        v51 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#colorTesting color of wallet = %@", &v50, 0xCu);
      }
    }
  }

  v22 = kACCExternalAccessoryAuthStatusKey;
  v23 = [v4 objectForKeyedSubscript:kACCExternalAccessoryAuthStatusKey];
  if (v23)
  {
    v24 = v23;
    v25 = [v4 objectForKeyedSubscript:v22];
    objc_opt_class();
    v26 = objc_opt_isKindOfClass();

    if (v26)
    {
      v27 = [v4 objectForKeyedSubscript:v22];
      [(FMDMagSafeRawInfo *)self setAuthStatus:v27];
    }
  }

  v28 = [v4 objectForKeyedSubscript:@"NFC_InfoAvailable"];
  if (v28 && (v29 = v28, [v4 objectForKeyedSubscript:@"NFC_InfoAvailable"], v30 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v31 = objc_opt_isKindOfClass(), v30, v29, (v31 & 1) != 0))
  {
    v32 = sub_100004FC8();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v4 objectForKeyedSubscript:@"NFC_InfoAvailable"];
      v34 = [v4 objectForKeyedSubscript:@"NFC_InfoAvailable"];
      v35 = objc_opt_class();
      v50 = 138412546;
      v51 = v33;
      v52 = 2112;
      v53 = v35;
      v36 = v35;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "FMDMagSafeRawInfo: get NFC_InfoAvailable  = %@ %@", &v50, 0x16u);
    }

    v37 = [v4 objectForKeyedSubscript:@"NFC_InfoAvailable"];
    [(FMDMagSafeRawInfo *)self setInfoAvailable:CFBooleanGetValue(v37) != 0];
  }

  else
  {
    v38 = sub_100004FC8();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [v4 objectForKeyedSubscript:@"NFC_InfoAvailable"];
      v40 = [v4 objectForKeyedSubscript:@"NFC_InfoAvailable"];
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

  v43 = [v4 objectForKeyedSubscript:@"ACCMFi4PairingStatus"];
  if (v43 && (v44 = v43, [v4 objectForKeyedSubscript:@"ACCMFi4PairingStatus"], v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_opt_respondsToSelector(), v45, v44, (v46 & 1) != 0))
  {
    v47 = [v4 objectForKeyedSubscript:@"ACCMFi4PairingStatus"];
    v48 = [v47 integerValue];

    [(FMDMagSafeRawInfo *)self setIsNVMSetup:(v48 & 0xFFFFFFFE) == 2];
    [(FMDMagSafeRawInfo *)self setKeysAvailable:v48 == 2];
  }

  else
  {
    v49 = sub_100004FC8();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v50) = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "did not get ACCMFi4PairingStatus", &v50, 2u);
    }
  }
}

- (BOOL)hasEnoughInformation
{
  v3 = [(FMDMagSafeRawInfo *)self serialNumber];
  if (v3)
  {
    v4 = [(FMDMagSafeRawInfo *)self accessoryType];
    v5 = v4 != 0;
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
    v4 = [(FMDMagSafeRawInfo *)self endPointUUID];
    if ([(FMDMagSafeRawInfo *)self enableCAAPI:@"enableGetAccessoryUserName"])
    {
      dispatch_group_enter(v3);
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = sub_100010F78;
      v23 = sub_100010F88;
      v24 = 0;
      v5 = sub_100004FC8();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA calling getAccessoryUserName", buf, 2u);
      }

      v6 = [(FMDMagSafeRawInfo *)self connectionInfo];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100010F90;
      v16[3] = &unk_1000257C0;
      v18 = &v19;
      v7 = v3;
      v17 = v7;
      [v6 getAccessoryUserName:v4 withReply:v16];

      v8 = dispatch_time(0, 5000000000);
      v9 = dispatch_group_wait(v7, v8);
      if (v9)
      {
        v10 = v9;
        name = sub_100004FC8();
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
  v5 = [(FMDMagSafeRawInfo *)self endPointUUID];
  if ([(FMDMagSafeRawInfo *)self enableCAAPI:@"enableGetPairingStatus"]&& [(FMDMagSafeRawInfo *)self authPassed])
  {
    dispatch_group_enter(v3);
    v6 = sub_100004FC8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#CA calling getPairingStatus", buf, 2u);
    }

    *buf = 0;
    v23 = buf;
    v24 = 0x2020000000;
    v25 = 0;
    v7 = [(FMDMagSafeRawInfo *)self connectionInfo];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_1000113B4;
    v19 = &unk_1000257E8;
    v21 = buf;
    v8 = v3;
    v20 = v8;
    [v7 getPairingStatus:v5 withReply:&v16];

    v9 = dispatch_time(0, 5000000000);
    v10 = dispatch_group_wait(v8, v9);
    v11 = *(v23 + 6);
    if (v11 >= 4)
    {
      v12 = @"no value";
    }

    else
    {
      v12 = *(&off_100025920 + v11);
    }

    v13 = sub_100004FC8();
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
      v15 = sub_100004FC8();
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

- (void)setPairingData:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004FC8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setting pairing Data", buf, 2u);
  }

  v9 = [v6 data];
  v10 = objc_alloc_init(NSMutableArray);
  v11 = 0;
  v12 = 4;
  do
  {
    if (([v9 length] - v11) < 0xF0)
    {
      if ([v9 length] == v11)
      {
        v14 = objc_alloc_init(NSData);
        [v10 addObject:v14];
      }

      else
      {
        v15 = [v9 subdataWithRange:{v11, objc_msgSend(v9, "length") - v11}];
        [v10 addObject:v15];

        v11 = [v9 length];
      }
    }

    else
    {
      v13 = [v9 subdataWithRange:{v11, 240}];
      [v10 addObject:v13];

      v11 += 240;
    }

    --v12;
  }

  while (v12);
  v32[0] = &off_100028C48;
  v16 = [v10 objectAtIndexedSubscript:0];
  v33[0] = v16;
  v32[1] = &off_100028C60;
  v17 = [v10 objectAtIndexedSubscript:1];
  v33[1] = v17;
  v32[2] = &off_100028C78;
  v18 = [v10 objectAtIndexedSubscript:2];
  v33[2] = v18;
  v32[3] = &off_100028C90;
  v19 = [v10 objectAtIndexedSubscript:3];
  v33[3] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];

  v21 = sub_100004FC8();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#CA calling setPublicNVMKeyValues with %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v22 = [(FMDMagSafeRawInfo *)self connectionInfo];
  v23 = [(FMDMagSafeRawInfo *)self endPointUUID];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100011878;
  v26[3] = &unk_100025810;
  objc_copyWeak(&v29, buf);
  v24 = v6;
  v27 = v24;
  v25 = v7;
  v28 = v25;
  [v22 setPublicNVMKeyValues:v20 forEndpoint:v23 withReply:v26];

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);
}

- (void)getPairingDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FMDMagSafeRawInfo *)self pairingData];

  if (v5)
  {
    v6 = [(FMDMagSafeRawInfo *)self pairingData];
    v4[2](v4, v6, 0);
  }

  else
  {
    v7 = sub_100004FC8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(FMDMagSafeRawInfo *)self endPointUUID];
      *buf = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = &off_100028D50;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#CA calling getPublicNVMKeyValues %@ %@", buf, 0x16u);
    }

    v9 = [(FMDMagSafeRawInfo *)self connectionInfo];
    v10 = [(FMDMagSafeRawInfo *)self endPointUUID];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100011B2C;
    v11[3] = &unk_100025838;
    v12 = &off_100028D50;
    v13 = self;
    v14 = v4;
    [v9 getPublicNVMKeyValues:&off_100028D50 forEndpoint:v10 withReply:v11];
  }
}

- (void)setName:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004FC8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setting accessory name", buf, 2u);
  }

  if ([(FMDMagSafeRawInfo *)self enableCAAPI:@"enableSetAccessoryUserName"])
  {
    v9 = sub_100004FC8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#CA calling setAccessoryUserName", buf, 2u);
    }

    objc_initWeak(buf, self);
    v10 = dispatch_get_global_queue(2, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100011F90;
    v11[3] = &unk_100025860;
    v11[4] = self;
    v12 = v6;
    objc_copyWeak(&v14, buf);
    v13 = v7;
    dispatch_async(v10, v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    [(FMDMagSafeRawInfo *)self setName:v6];
    (*(v7 + 2))(v7, 0);
  }
}

- (void)setupKeysWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100004FC8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "provisioning keys for accessory", buf, 2u);
  }

  if ([(FMDMagSafeRawInfo *)self isNVMSetup])
  {
    v6 = sub_100004FC8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100015DA8(v6);
    }

    v7 = +[NSError fm_genericError];
    v4[2](v4, v7);
  }

  else
  {
    objc_initWeak(buf, self);
    if ([(FMDMagSafeRawInfo *)self enableCAAPI:@"enableProvisionAccessoryForFindMy"])
    {
      v8 = sub_100004FC8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#CA calling provisionAccessoryForFindMy", v13, 2u);
      }

      v9 = dispatch_get_global_queue(2, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000123B0;
      block[3] = &unk_1000258B0;
      block[4] = self;
      objc_copyWeak(&v12, buf);
      v11 = v4;
      dispatch_async(v9, block);

      objc_destroyWeak(&v12);
    }

    else
    {
      [(FMDMagSafeRawInfo *)self setIsNVMSetup:1];
      [(FMDMagSafeRawInfo *)self setKeysAvailable:1];
      v4[2](v4, 0);
    }

    objc_destroyWeak(buf);
  }
}

- (void)removeKeysWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100004FC8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "### removing keys for accessory", buf, 2u);
  }

  objc_initWeak(buf, self);
  if ([(FMDMagSafeRawInfo *)self enableCAAPI:@"enableResetPairingInformation"])
  {
    v6 = sub_100004FC8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "### #CA calling resetPairingInformation", v13, 2u);
    }

    v7 = [(FMDMagSafeRawInfo *)self connectionInfo];
    v8 = [(FMDMagSafeRawInfo *)self endPointUUID];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100012790;
    v10[3] = &unk_100025888;
    objc_copyWeak(&v12, buf);
    v11 = v4;
    [v7 resetPairingInformation:v8 withReply:v10];

    objc_destroyWeak(&v12);
  }

  else
  {
    [(FMDMagSafeRawInfo *)self setIsNVMSetup:0];
    [(FMDMagSafeRawInfo *)self setKeysAvailable:0];
    v9 = +[NSError fm_genericError];
    (*(v4 + 2))(v4, v9);
  }

  objc_destroyWeak(buf);
}

- (void)getAuthNonceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100004FC8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA calling beginVendorKeyErase", buf, 2u);
  }

  v6 = [(FMDMagSafeRawInfo *)self connectionInfo];
  v7 = [(FMDMagSafeRawInfo *)self endPointUUID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100012998;
  v9[3] = &unk_1000258D8;
  v10 = v4;
  v8 = v4;
  [v6 beginVendorKeyErase:v7 withReply:v9];
}

- (void)vendorKeyErase:(id)a3 withSignature:(id)a4 andAccessoryNonce:(id)a5 forEndpoint:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = sub_100004FC8();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#CA calling continueVendorKeyErase", buf, 2u);
  }

  v18 = [(FMDMagSafeRawInfo *)self connectionInfo];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100012BDC;
  v20[3] = &unk_1000255B0;
  v20[4] = self;
  v21 = v12;
  v19 = v12;
  [v18 continueVendorKeyErase:v16 withSignature:v15 andAccessoryNonce:v14 forEndpoint:v13 withReply:v20];
}

- (void)copyUserPrivateKeyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100004FC8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA calling copyUserPrivateKey", buf, 2u);
  }

  v6 = [(FMDMagSafeRawInfo *)self connectionInfo];
  v7 = [(FMDMagSafeRawInfo *)self endPointUUID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100012DD4;
  v9[3] = &unk_1000258D8;
  v10 = v4;
  v8 = v4;
  [v6 copyUserPrivateKey:v7 withReply:v9];
}

- (void)beginUserKeyEraseWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100004FC8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA calling beginUserKeyErase", buf, 2u);
  }

  v6 = [(FMDMagSafeRawInfo *)self connectionInfo];
  v7 = [(FMDMagSafeRawInfo *)self endPointUUID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100012FD0;
  v9[3] = &unk_1000258D8;
  v10 = v4;
  v8 = v4;
  [v6 beginUserKeyErase:v7 withReply:v9];
}

- (void)continueUserKeyErase:(id)a3 withSignature:(id)a4 andAccessoryNonce:(id)a5 forEndpoint:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = sub_100004FC8();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#CA calling continueUserKeyErase", buf, 2u);
  }

  v18 = [(FMDMagSafeRawInfo *)self connectionInfo];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100013214;
  v20[3] = &unk_1000255B0;
  v20[4] = self;
  v21 = v12;
  v19 = v12;
  [v18 continueUserKeyErase:v16 withSignature:v15 andAccessoryNonce:v14 forEndpoint:v13 withReply:v20];
}

- (void)cancelUserKeyEraseWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100004FC8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA calling cancelUserKeyErase", buf, 2u);
  }

  v6 = [(FMDMagSafeRawInfo *)self connectionInfo];
  v7 = [(FMDMagSafeRawInfo *)self endPointUUID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001340C;
  v9[3] = &unk_100025900;
  v10 = v4;
  v8 = v4;
  [v6 cancelUserKeyErase:v7 withReply:v9];
}

- (void)cancelVendorKeyEraseWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100004FC8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA calling cancelVendorKeyErase", buf, 2u);
  }

  v6 = [(FMDMagSafeRawInfo *)self connectionInfo];
  v7 = [(FMDMagSafeRawInfo *)self endPointUUID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000135EC;
  v9[3] = &unk_100025900;
  v10 = v4;
  v8 = v4;
  [v6 cancelVendorKeyErase:v7 withReply:v9];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDMagSafeRawInfo *)self accessoryType];
  [v4 encodeObject:v5 forKey:@"accessoryType"];
}

- (FMDMagSafeRawInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FMDMagSafeRawInfo;
  v5 = [(FMDMagSafeRawInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryType"];
    accessoryType = v5->_accessoryType;
    v5->_accessoryType = v6;
  }

  return v5;
}

@end