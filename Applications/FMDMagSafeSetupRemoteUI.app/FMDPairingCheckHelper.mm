@interface FMDPairingCheckHelper
+ (id)getPairingData:(id)data;
+ (id)getUserPrivateKey:(id)key;
+ (id)registerDevice:(id)device;
+ (id)updatePairingData:(id)data pairingData:(id)pairingData;
+ (void)checkAndHealPairingKeys:(id)keys completion:(id)completion;
+ (void)pairingCheckForAccessory:(id)accessory useEraseKeyType:(id)type completion:(id)completion;
@end

@implementation FMDPairingCheckHelper

+ (void)pairingCheckForAccessory:(id)accessory useEraseKeyType:(id)type completion:(id)completion
{
  accessoryCopy = accessory;
  typeCopy = type;
  completionCopy = completion;
  v9 = dispatch_group_create();
  v10 = sub_100002400();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "getting pairing data", buf, 2u);
  }

  dispatch_group_enter(v9);
  v129 = 0;
  v130 = &v129;
  v131 = 0x3032000000;
  v132 = sub_1000179CC;
  v133 = sub_1000179DC;
  v134 = 0;
  v126 = 0;
  v127[0] = &v126;
  v127[1] = 0x3032000000;
  v127[2] = sub_1000179CC;
  v127[3] = sub_1000179DC;
  v128 = 0;
  v122[0] = _NSConcreteStackBlock;
  v122[1] = 3221225472;
  v122[2] = sub_1000179E4;
  v122[3] = &unk_100039AB0;
  v124 = &v129;
  v125 = &v126;
  v11 = v9;
  v123 = v11;
  [accessoryCopy getPairingDataWithCompletion:v122];
  v12 = dispatch_time(0, 5000000000);
  v13 = dispatch_group_wait(v11, v12);
  if (!*(v127[0] + 40) && !v13)
  {
    v14 = sub_100002400();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      data = [v130[5] data];
      fm_hexString = [data fm_hexString];
      pairingCheckToken = [v130[5] pairingCheckToken];
      groupa = [pairingCheckToken fm_hexString];
      phoneNumber = [v130[5] phoneNumber];
      fm_hexString2 = [phoneNumber fm_hexString];
      keysUpdated = [v130[5] keysUpdated];
      fm_hexString3 = [keysUpdated fm_hexString];
      lostModePrivateKey = [v130[5] lostModePrivateKey];
      fm_hexString4 = [lostModePrivateKey fm_hexString];
      *buf = 138413314;
      *&buf[4] = fm_hexString;
      *&buf[12] = 2112;
      *&buf[14] = groupa;
      *&buf[22] = 2112;
      v144 = fm_hexString2;
      *v145 = 2112;
      *&v145[2] = fm_hexString3;
      *&v145[10] = 2112;
      *&v145[12] = fm_hexString4;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "pairingCheckData = %@\npairingCheckToken = %@\nphoneNumber = %@\nkeysUpdated = %@\nlostModePrivateKey = %@", buf, 0x34u);
    }

    if (typeCopy)
    {
      v15 = [typeCopy isEqualToString:@"2"];
    }

    else
    {
      keysUpdated2 = [v130[5] keysUpdated];
      if (keysUpdated2)
      {
        v15 = [FMPreferencesUtil BOOLForKey:@"userKeyEraseDisabled" inDomain:kFMDNotBackedUpPrefDomain]^ 1;
      }

      else
      {
        v15 = 0;
      }
    }

    v20 = sub_100002400();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "using userPrivateKeyErase = %d", buf, 8u);
    }

    v21 = sub_100002400();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "getting auth nonce", buf, 2u);
    }

    dispatch_group_enter(v11);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v144 = sub_1000179CC;
    *v145 = sub_1000179DC;
    *&v145[8] = 0;
    if (v15)
    {
      v22 = v121;
      v121[0] = _NSConcreteStackBlock;
      v121[1] = 3221225472;
      v121[2] = sub_100017AF8;
      v121[3] = &unk_100038948;
      v121[5] = buf;
      v121[6] = &v126;
      v121[4] = v11;
      [accessoryCopy beginUserKeyEraseWithCompletion:v121];
    }

    else
    {
      v22 = v120;
      v120[0] = _NSConcreteStackBlock;
      v120[1] = 3221225472;
      v120[2] = sub_100017C0C;
      v120[3] = &unk_100038948;
      v120[5] = buf;
      v120[6] = &v126;
      v120[4] = v11;
      [accessoryCopy getAuthNonceWithCompletion:v120];
    }

    v23 = dispatch_time(0, 5000000000);
    v24 = dispatch_group_wait(v11, v23);
    if (*(v127[0] + 40) || v24)
    {
      v40 = sub_100002400();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_10001E980(v127);
      }

      v41 = *(v127[0] + 40);
      if (v41)
      {
        completionCopy[2](completionCopy, v41, 0);
LABEL_91:
        _Block_object_dispose(buf, 8);

        goto LABEL_92;
      }

      v26 = +[NSError fm_timeoutError];
      completionCopy[2](completionCopy, v26, 0);
LABEL_90:

      goto LABEL_91;
    }

    v25 = sub_100002400();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v114 = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "getting pairingCheckInfo", v114, 2u);
    }

    v26 = objc_alloc_init(FMDPairingCheckCommandRequestInfo);
    pairingCheckToken2 = [v130[5] pairingCheckToken];
    fm_hexString5 = [pairingCheckToken2 fm_hexString];
    [v26 setPairingCheckToken:fm_hexString5];

    fm_hexString6 = [*(*&buf[8] + 40) fm_hexString];
    [v26 setAuthNonce:fm_hexString6];

    accessoryType = [accessoryCopy accessoryType];
    [v26 setAccessoryType:accessoryType];

    if (v15)
    {
      v31 = @"2";
    }

    else
    {
      v31 = @"1";
    }

    [v26 setEraseKeyType:v31];
    dispatch_group_enter(v11);
    *v114 = 0;
    v115 = v114;
    v116 = 0x3032000000;
    v117 = sub_1000179CC;
    v118 = sub_1000179DC;
    v119 = 0;
    v32 = +[FMDFMIPManager sharedInstance];
    v110[0] = _NSConcreteStackBlock;
    v110[1] = 3221225472;
    v110[2] = sub_100017D20;
    v110[3] = &unk_100039AD8;
    v112 = v114;
    v113 = &v126;
    group = v11;
    v111 = group;
    [v32 pairingCheckWith:v26 completion:v110];

    v33 = dispatch_time(0, 5000000000);
    v34 = dispatch_group_wait(group, v33);
    if (*(v127[0] + 40) || v34)
    {
      if (v15)
      {
        [accessoryCopy cancelUserKeyEraseWithCompletion:0];
      }

      else
      {
        [accessoryCopy cancelVendorKeyEraseWithCompletion:0];
      }

      v42 = sub_100002400();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_10001E980(v127);
      }

      v43 = *(v127[0] + 40);
      if (v43)
      {
        completionCopy[2](completionCopy, v43, 0);
LABEL_89:

        _Block_object_dispose(v114, 8);
        goto LABEL_90;
      }

      v44 = +[NSError fm_timeoutError];
      completionCopy[2](completionCopy, v44, 0);
LABEL_88:

      goto LABEL_89;
    }

    v35 = sub_100002400();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *v135 = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "getting lostModeInfo", v135, 2u);
    }

    lostModeInfo = [*(v115 + 5) lostModeInfo];
    v37 = [NSData dataWithHexString:lostModeInfo];
    lostModePrivateKey2 = [v130[5] lostModePrivateKey];
    v99 = [FMDCryptoUtil decryptData:v37 privateKeyData:lostModePrivateKey2];

    if (v99)
    {
      v39 = [NSJSONSerialization JSONObjectWithData:v99 options:0 error:0];
    }

    else
    {
      v39 = 0;
    }

    v45 = sub_100002400();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      lostModeInfo2 = [*(v115 + 5) lostModeInfo];
      *v135 = 138412802;
      v136 = lostModeInfo2;
      v137 = 2112;
      v138 = v99;
      v139 = 2112;
      v140 = v39;
      _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "got lostModeInfo encrypted = %@ decrypted = %@ json = %@", v135, 0x20u);
    }

    v46 = [v39 objectForKeyedSubscript:@"isLost"];
    if (objc_opt_respondsToSelector())
    {
      v47 = [v39 objectForKeyedSubscript:@"isLost"];
      bOOLValue = [v47 BOOLValue];

      if (bOOLValue)
      {
        goto LABEL_61;
      }
    }

    else
    {
    }

    v49 = sub_100002400();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_10001E908(v39, v49);
    }

    v39 = 0;
LABEL_61:
    v50 = *(v115 + 5);
    if (v50)
    {
      statusCode = [v50 statusCode];
      if (([statusCode isEqualToString:@"409"] & 1) != 0 || (objc_msgSend(*(v115 + 5), "signature"), (v52 = objc_claimAutoreleasedReturnValue()) == 0))
      {
      }

      else
      {
        serverNonce = [*(v115 + 5) serverNonce];
        v54 = serverNonce == 0;

        if (!v54)
        {
          v55 = sub_100002400();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = @"vendorKeyErase";
            if (v15)
            {
              v56 = @"userKeyErase";
            }

            *v135 = 138412290;
            v136 = v56;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "calling erase Key API %@", v135, 0xCu);
          }

          dispatch_group_enter(group);
          serverNonce2 = [*(v115 + 5) serverNonce];
          v104 = [NSData dataWithHexString:serverNonce2];

          signature = [*(v115 + 5) signature];
          v97 = [NSData dataWithHexString:signature];

          if (v15)
          {
            v59 = sub_100002400();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              v60 = *(*&buf[8] + 40);
              endPointUUID = [accessoryCopy endPointUUID];
              *v135 = 138413058;
              v136 = v104;
              v137 = 2112;
              v138 = v97;
              v139 = 2112;
              v140 = v60;
              v141 = 2112;
              v142 = endPointUUID;
              _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "continueUserKeyErase serverNonce = %@, signature  = %@, accessoryNonce = %@ endPointUUID = %@", v135, 0x2Au);
            }

            v62 = *(*&buf[8] + 40);
            endPointUUID2 = [accessoryCopy endPointUUID];
            v64 = v107;
            v107[0] = _NSConcreteStackBlock;
            v107[1] = 3221225472;
            v107[2] = sub_100017F78;
            v107[3] = &unk_100039B00;
            v65 = v104;
            v107[4] = v65;
            v107[6] = &v126;
            v107[5] = group;
            [accessoryCopy continueUserKeyErase:v65 withSignature:v97 andAccessoryNonce:v62 forEndpoint:endPointUUID2 completion:v107];
          }

          else
          {
            v81 = sub_100002400();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              v82 = *(*&buf[8] + 40);
              endPointUUID3 = [accessoryCopy endPointUUID];
              *v135 = 138413058;
              v136 = v104;
              v137 = 2112;
              v138 = v97;
              v139 = 2112;
              v140 = v82;
              v141 = 2112;
              v142 = endPointUUID3;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "vendorKeyErase serverNonce = %@, signature  = %@, accessoryNonce = %@ endPointUUID = %@", v135, 0x2Au);
            }

            v84 = *(*&buf[8] + 40);
            endPointUUID2 = [accessoryCopy endPointUUID];
            v64 = v106;
            v106[0] = _NSConcreteStackBlock;
            v106[1] = 3221225472;
            v106[2] = sub_100018064;
            v106[3] = &unk_100039B00;
            v85 = v104;
            v106[4] = v85;
            v106[6] = &v126;
            v106[5] = group;
            [accessoryCopy vendorKeyErase:v85 withSignature:v97 andAccessoryNonce:v84 forEndpoint:endPointUUID2 completion:v106];
          }

          v86 = dispatch_time(0, 5000000000);
          v87 = dispatch_group_wait(group, v86);
          if (*(v127[0] + 40) || v87)
          {
            v88 = sub_100002400();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
            {
              sub_10001E980(v127);
            }

            v89 = *(v127[0] + 40);
            if (v89)
            {
              (completionCopy)[2](completionCopy, v89, v39);
            }

            else
            {
              v94 = +[NSError fm_timeoutError];
              (completionCopy)[2](completionCopy, v94, v39);
            }
          }

          else
          {
            (completionCopy)[2](completionCopy, 0, v39);
          }

          useEraseKeyType4 = v104;
LABEL_108:

          goto LABEL_87;
        }
      }
    }

    v66 = sub_100002400();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      *v135 = 0;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "phone is locked", v135, 2u);
    }

    dispatch_group_enter(group);
    if (v15)
    {
      v67 = v109;
      v109[0] = _NSConcreteStackBlock;
      v109[1] = 3221225472;
      v109[2] = sub_100017EB8;
      v109[3] = &unk_1000388A8;
      v109[5] = &v126;
      v109[4] = group;
      [accessoryCopy cancelUserKeyEraseWithCompletion:v109];
    }

    else
    {
      v67 = v108;
      v108[0] = _NSConcreteStackBlock;
      v108[1] = 3221225472;
      v108[2] = sub_100017F18;
      v108[3] = &unk_1000388A8;
      v108[5] = &v126;
      v108[4] = group;
      [accessoryCopy cancelVendorKeyEraseWithCompletion:v108];
    }

    v68 = dispatch_time(0, 5000000000);
    v69 = dispatch_group_wait(group, v68);
    if (v69)
    {
      v70 = v69;
      v71 = sub_100002400();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        sub_10001E9E8(v70, v71);
      }
    }

    else if (!(typeCopy | *(v127[0] + 40)))
    {
      useEraseKeyType = [*(v115 + 5) useEraseKeyType];
      if (useEraseKeyType)
      {
        useEraseKeyType2 = [*(v115 + 5) useEraseKeyType];
        eraseKeyType = [v26 eraseKeyType];
        v75 = [useEraseKeyType2 isEqualToString:eraseKeyType];

        if ((v75 & 1) == 0)
        {
          v91 = sub_100002400();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            useEraseKeyType3 = [*(v115 + 5) useEraseKeyType];
            *v135 = 138412290;
            v136 = useEraseKeyType3;
            _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Performing pairing check again with eraseKeyType = %@", v135, 0xCu);
          }

          useEraseKeyType4 = [*(v115 + 5) useEraseKeyType];
          [self pairingCheckForAccessory:accessoryCopy useEraseKeyType:useEraseKeyType4 completion:completionCopy];
          goto LABEL_108;
        }
      }
    }

    (completionCopy)[2](completionCopy, 0, v39);
LABEL_87:

    v44 = v99;
    goto LABEL_88;
  }

  v16 = sub_100002400();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10001E980(v127);
  }

  v17 = *(v127[0] + 40);
  if (v17)
  {
    completionCopy[2](completionCopy, v17, 0);
  }

  else
  {
    v18 = +[NSError fm_timeoutError];
    completionCopy[2](completionCopy, v18, 0);
  }

LABEL_92:

  _Block_object_dispose(&v126, 8);
  _Block_object_dispose(&v129, 8);
}

+ (void)checkAndHealPairingKeys:(id)keys completion:(id)completion
{
  keysCopy = keys;
  completionCopy = completion;
  v7 = [objc_opt_class() getPairingData:keysCopy];
  v8 = sub_100002400();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    data = [v7 data];
    fm_hexString = [data fm_hexString];
    keysUpdated = [v7 keysUpdated];
    *buf = 138412546;
    *v70 = fm_hexString;
    *&v70[8] = 2112;
    *v71 = keysUpdated;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "pairing data = %@ keys Updated = %@", buf, 0x16u);
  }

  v12 = sub_100002400();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10001EA60(v7, v12);
  }

  pairingCheckToken = [v7 pairingCheckToken];
  v14 = pairingCheckToken == 0;

  if (pairingCheckToken)
  {
LABEL_8:
    v19 = +[FMDMagSafeDataStore sharedInstance];
    readLostModeAccessoriesList = [v19 readLostModeAccessoriesList];

    serialNumber = [keysCopy serialNumber];
    v22 = [FMDExtHelper deviceIDFromAddress:serialNumber];

    v23 = [readLostModeAccessoriesList containsObject:v22];
    v24 = sub_100002400();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "device is in lost Mode", buf, 2u);
    }

    if (v23 && ([v7 keysUpdated], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      lostModePrivateKey = [v7 lostModePrivateKey];

      if (lostModePrivateKey)
      {
        v27 = 0;
        goto LABEL_20;
      }
    }

    v67 = 0;
    v68 = 0;
    [FMDCryptoUtil generatePublicPrivateKeyPair:&v68 privateKey:&v67];
    v28 = v68;
    v29 = v67;
    v30 = sub_100002400();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_10001EBB4(v28, v29, v30);
    }

    if (!v28 || !v29)
    {
      v40 = [NSError errorWithMessage:@"lost mode key generation failed"];
      completionCopy[2](completionCopy, v40);

LABEL_47:
      goto LABEL_48;
    }

    [v7 setLostModePrivateKey:v29];

    v27 = 1;
    v14 = 1;
LABEL_20:
    v31 = sub_100002400();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v70 = v27;
      *&v70[4] = 1024;
      *&v70[6] = v14;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "### updateServerInfo = %d, updateMulderInfo = %d", buf, 0xEu);
    }

    v62 = v22;
    if (v27)
    {
      keysUpdated2 = [v7 keysUpdated];

      if (keysUpdated2)
      {
        [v7 setKeysUpdated:0];
        v14 = 1;
      }

      serialNumber2 = [keysCopy serialNumber];
      [FMPreferencesUtil removeKey:serialNumber2 inDomain:kFMDNotBackedUpMagSafePrefDomain];

      v34 = 0;
      v35 = 1;
    }

    else
    {
      serialNumber3 = [keysCopy serialNumber];
      v37 = [FMPreferencesUtil BOOLForKey:serialNumber3 inDomain:kFMDNotBackedUpMagSafePrefDomain];

      keysUpdated3 = [v7 keysUpdated];

      if (keysUpdated3 || !v37)
      {
        keysUpdated4 = [v7 keysUpdated];
        v42 = keysUpdated4 == 0;

        v34 = 0;
        v35 = v42 & (v37 ^ 1);
      }

      else
      {
        v34 = 1;
        buf[0] = 1;
        v39 = [NSData dataWithBytes:buf length:1];
        [v7 setKeysUpdated:v39];

        v35 = 0;
        v14 = 1;
      }
    }

    v43 = sub_100002400();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      keysUpdated5 = [v7 keysUpdated];
      *buf = 67109634;
      *v70 = v35;
      *&v70[4] = 1024;
      *&v70[6] = v14;
      *v71 = 2112;
      *&v71[2] = keysUpdated5;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "### updateServerInfo = %d, updateMulderInfo = %d %@", buf, 0x18u);
    }

    if (!v14)
    {
      goto LABEL_44;
    }

    v45 = [objc_opt_class() updatePairingData:keysCopy pairingData:v7];
    if (v45)
    {
      v46 = sub_100002400();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_10001EC78(keysCopy, v46);
      }
    }

    else
    {
      if (v34)
      {
        serialNumber4 = [keysCopy serialNumber];
        [FMPreferencesUtil removeKey:serialNumber4 inDomain:kFMDNotBackedUpMagSafePrefDomain];
      }

      if (!v23)
      {
        goto LABEL_43;
      }

      v48 = +[NSDate date];
      v49 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [v48 fm_epoch]);

      v50 = +[FMDMagSafeDataStore sharedInstance];
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_100018A10;
      v63[3] = &unk_100039B28;
      v64 = v62;
      v65 = v49;
      v66 = readLostModeAccessoriesList;
      v46 = v49;
      [v50 updateLostModeKeyRollTimeFor:v64 lastLostModeKeyRollTime:v46 withCompletion:v63];
    }

LABEL_43:
LABEL_44:
    if (v35)
    {
      v51 = objc_alloc_init(FMDPairingLockUpdateRequestInfo);
      pairingCheckToken2 = [v7 pairingCheckToken];
      fm_hexString2 = [pairingCheckToken2 fm_hexString];
      [v51 setPairingCheckToken:fm_hexString2];

      lostModePrivateKey2 = [v7 lostModePrivateKey];
      v55 = [FMDCryptoUtil publicKeyFromPrivateKey:lostModePrivateKey2];

      fm_hexString3 = [v55 fm_hexString];
      [v51 setLostModePubKey:fm_hexString3];

      v57 = [objc_opt_class() getUserPrivateKey:keysCopy];
      [v51 setUserPrivateKey:v57];

      serialNumber5 = [keysCopy serialNumber];
      [v51 setSerialNumber:serialNumber5];

      v59 = +[NSDate date];
      v60 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [v59 fm_epoch]);
      [v51 setTimeStamp:v60];

      v61 = +[FMDFMIPManager sharedInstance];
      [v61 updatePairingLockInfo:v51 completion:&stru_100039B48];
    }

    completionCopy[2](completionCopy, 0);
    v22 = v62;
    goto LABEL_47;
  }

  v15 = [objc_opt_class() registerDevice:keysCopy];
  if (v15)
  {
    v16 = v15;
    pairingToken = [v15 pairingToken];
    v18 = [NSData dataWithHexString:pairingToken];
    [v7 setPairingCheckToken:v18];

    goto LABEL_8;
  }

  readLostModeAccessoriesList = [NSError errorWithMessage:@"Unable to register device"];
  completionCopy[2](completionCopy, readLostModeAccessoriesList);
LABEL_48:
}

+ (id)getUserPrivateKey:(id)key
{
  keyCopy = key;
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getting user private key", buf, 2u);
  }

  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  *buf = 0;
  v23[0] = buf;
  v23[1] = 0x3032000000;
  v23[2] = sub_1000179CC;
  v23[3] = sub_1000179DC;
  v24 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000179CC;
  v20 = sub_1000179DC;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100018E60;
  v12[3] = &unk_100038948;
  v14 = buf;
  v15 = &v16;
  v6 = v5;
  v13 = v6;
  [keyCopy copyUserPrivateKeyWithCompletion:v12];
  v7 = dispatch_time(0, 5000000000);
  v8 = dispatch_group_wait(v6, v7);
  if (*(v23[0] + 40) || v8)
  {
    v10 = sub_100002400();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001E08C(v23);
    }

    fm_hexString = 0;
  }

  else
  {
    fm_hexString = [v17[5] fm_hexString];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(buf, 8);

  return fm_hexString;
}

+ (id)updatePairingData:(id)data pairingData:(id)pairingData
{
  dataCopy = data;
  pairingDataCopy = pairingData;
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setting up pairing data", buf, 2u);
  }

  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  *buf = 0;
  v24[0] = buf;
  v24[1] = 0x3032000000;
  v24[2] = sub_1000179CC;
  v24[3] = sub_1000179DC;
  v25 = 0;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10001918C;
  v20 = &unk_1000388A8;
  v22 = buf;
  v9 = v8;
  v21 = v9;
  [dataCopy setPairingData:pairingDataCopy withCompletion:&v17];
  v10 = dispatch_time(0, 5000000000);
  v11 = dispatch_group_wait(v9, v10);
  if (*(v24[0] + 40) || (v12 = 0, v11))
  {
    v13 = sub_100002400();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10001E08C(v24);
    }

    v14 = *(v24[0] + 40);
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = [NSError fm_timeoutError:v17];
    }

    v12 = v15;
  }

  _Block_object_dispose(buf, 8);

  return v12;
}

+ (id)registerDevice:(id)device
{
  deviceCopy = device;
  v4 = objc_alloc_init(FMDPairingLockRegisterRequestInfo);
  serialNumber = [deviceCopy serialNumber];
  [v4 setSerialNumber:serialNumber];

  accessoryType = [deviceCopy accessoryType];
  [v4 setAccessoryType:accessoryType];

  v7 = dispatch_group_create();
  v8 = sub_100002400();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    serialNumber2 = [v4 serialNumber];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = serialNumber2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Doing register to server for accessory with serial number = %@", &buf, 0xCu);
  }

  dispatch_group_enter(v7);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = sub_1000179CC;
  v35 = sub_1000179DC;
  v36 = 0;
  v28 = 0;
  v29[0] = &v28;
  v29[1] = 0x3032000000;
  v29[2] = sub_1000179CC;
  v29[3] = sub_1000179DC;
  v30 = 0;
  v10 = +[FMDFMIPManager sharedInstance];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100019624;
  v24[3] = &unk_100038920;
  v26 = &v28;
  p_buf = &buf;
  v11 = v7;
  v25 = v11;
  [v10 registerDeviceForPairingLock:v4 completion:v24];

  v12 = dispatch_time(0, 5000000000);
  v13 = dispatch_group_wait(v11, v12);
  if (*(v29[0] + 40) || v13)
  {
    v19 = sub_100002400();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10001E08C(v29);
    }
  }

  else
  {
    v14 = *(*(&buf + 1) + 40);
    if (v14)
    {
      pairingToken = [v14 pairingToken];
      if (pairingToken)
      {
        serialNumber3 = [*(*(&buf + 1) + 40) serialNumber];
        v17 = serialNumber3 == 0;

        if (!v17)
        {
          v18 = *(*(&buf + 1) + 40);
          goto LABEL_16;
        }
      }
    }

    v20 = sub_100002400();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      pairingToken2 = [*(*(&buf + 1) + 40) pairingToken];
      serialNumber4 = [*(*(&buf + 1) + 40) serialNumber];
      sub_10001ED10(pairingToken2, serialNumber4, v31, v20);
    }
  }

  v18 = 0;
LABEL_16:

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&buf, 8);

  return v18;
}

+ (id)getPairingData:(id)data
{
  dataCopy = data;
  v4 = dispatch_group_create();
  v5 = sub_100002400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "getting pairing data", buf, 2u);
  }

  dispatch_group_enter(v4);
  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = sub_1000179CC;
  v23 = sub_1000179DC;
  v24 = 0;
  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x3032000000;
  v17[2] = sub_1000179CC;
  v17[3] = sub_1000179DC;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100019988;
  v12[3] = &unk_100039AB0;
  v14 = buf;
  v15 = &v16;
  v6 = v4;
  v13 = v6;
  [dataCopy getPairingDataWithCompletion:v12];
  v7 = dispatch_time(0, 5000000000);
  v8 = dispatch_group_wait(v6, v7);
  if (*(v17[0] + 40) || v8)
  {
    v10 = sub_100002400();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001ED80(v17);
    }

    v9 = 0;
  }

  else
  {
    v9 = *(v20 + 5);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(buf, 8);

  return v9;
}

@end