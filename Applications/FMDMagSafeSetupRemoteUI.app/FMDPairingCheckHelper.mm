@interface FMDPairingCheckHelper
+ (id)getPairingData:(id)a3;
+ (id)getUserPrivateKey:(id)a3;
+ (id)registerDevice:(id)a3;
+ (id)updatePairingData:(id)a3 pairingData:(id)a4;
+ (void)checkAndHealPairingKeys:(id)a3 completion:(id)a4;
+ (void)pairingCheckForAccessory:(id)a3 useEraseKeyType:(id)a4 completion:(id)a5;
@end

@implementation FMDPairingCheckHelper

+ (void)pairingCheckForAccessory:(id)a3 useEraseKeyType:(id)a4 completion:(id)a5
{
  v7 = a3;
  v105 = a4;
  v8 = a5;
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
  [v7 getPairingDataWithCompletion:v122];
  v12 = dispatch_time(0, 5000000000);
  v13 = dispatch_group_wait(v11, v12);
  if (!*(v127[0] + 40) && !v13)
  {
    v14 = sub_100002400();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v98 = [v130[5] data];
      v76 = [v98 fm_hexString];
      v96 = [v130[5] pairingCheckToken];
      groupa = [v96 fm_hexString];
      v95 = [v130[5] phoneNumber];
      v100 = [v95 fm_hexString];
      v77 = [v130[5] keysUpdated];
      v78 = [v77 fm_hexString];
      v79 = [v130[5] lostModePrivateKey];
      v80 = [v79 fm_hexString];
      *buf = 138413314;
      *&buf[4] = v76;
      *&buf[12] = 2112;
      *&buf[14] = groupa;
      *&buf[22] = 2112;
      v144 = v100;
      *v145 = 2112;
      *&v145[2] = v78;
      *&v145[10] = 2112;
      *&v145[12] = v80;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "pairingCheckData = %@\npairingCheckToken = %@\nphoneNumber = %@\nkeysUpdated = %@\nlostModePrivateKey = %@", buf, 0x34u);
    }

    if (v105)
    {
      v15 = [v105 isEqualToString:@"2"];
    }

    else
    {
      v19 = [v130[5] keysUpdated];
      if (v19)
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
      [v7 beginUserKeyEraseWithCompletion:v121];
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
      [v7 getAuthNonceWithCompletion:v120];
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
        v8[2](v8, v41, 0);
LABEL_91:
        _Block_object_dispose(buf, 8);

        goto LABEL_92;
      }

      v26 = +[NSError fm_timeoutError];
      v8[2](v8, v26, 0);
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
    v27 = [v130[5] pairingCheckToken];
    v28 = [v27 fm_hexString];
    [v26 setPairingCheckToken:v28];

    v29 = [*(*&buf[8] + 40) fm_hexString];
    [v26 setAuthNonce:v29];

    v30 = [v7 accessoryType];
    [v26 setAccessoryType:v30];

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
        [v7 cancelUserKeyEraseWithCompletion:0];
      }

      else
      {
        [v7 cancelVendorKeyEraseWithCompletion:0];
      }

      v42 = sub_100002400();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_10001E980(v127);
      }

      v43 = *(v127[0] + 40);
      if (v43)
      {
        v8[2](v8, v43, 0);
LABEL_89:

        _Block_object_dispose(v114, 8);
        goto LABEL_90;
      }

      v44 = +[NSError fm_timeoutError];
      v8[2](v8, v44, 0);
LABEL_88:

      goto LABEL_89;
    }

    v35 = sub_100002400();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *v135 = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "getting lostModeInfo", v135, 2u);
    }

    v36 = [*(v115 + 5) lostModeInfo];
    v37 = [NSData dataWithHexString:v36];
    v38 = [v130[5] lostModePrivateKey];
    v99 = [FMDCryptoUtil decryptData:v37 privateKeyData:v38];

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
      v90 = [*(v115 + 5) lostModeInfo];
      *v135 = 138412802;
      v136 = v90;
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
      v48 = [v47 BOOLValue];

      if (v48)
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
      v51 = [v50 statusCode];
      if (([v51 isEqualToString:@"409"] & 1) != 0 || (objc_msgSend(*(v115 + 5), "signature"), (v52 = objc_claimAutoreleasedReturnValue()) == 0))
      {
      }

      else
      {
        v53 = [*(v115 + 5) serverNonce];
        v54 = v53 == 0;

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
          v57 = [*(v115 + 5) serverNonce];
          v104 = [NSData dataWithHexString:v57];

          v58 = [*(v115 + 5) signature];
          v97 = [NSData dataWithHexString:v58];

          if (v15)
          {
            v59 = sub_100002400();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              v60 = *(*&buf[8] + 40);
              v61 = [v7 endPointUUID];
              *v135 = 138413058;
              v136 = v104;
              v137 = 2112;
              v138 = v97;
              v139 = 2112;
              v140 = v60;
              v141 = 2112;
              v142 = v61;
              _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "continueUserKeyErase serverNonce = %@, signature  = %@, accessoryNonce = %@ endPointUUID = %@", v135, 0x2Au);
            }

            v62 = *(*&buf[8] + 40);
            v63 = [v7 endPointUUID];
            v64 = v107;
            v107[0] = _NSConcreteStackBlock;
            v107[1] = 3221225472;
            v107[2] = sub_100017F78;
            v107[3] = &unk_100039B00;
            v65 = v104;
            v107[4] = v65;
            v107[6] = &v126;
            v107[5] = group;
            [v7 continueUserKeyErase:v65 withSignature:v97 andAccessoryNonce:v62 forEndpoint:v63 completion:v107];
          }

          else
          {
            v81 = sub_100002400();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              v82 = *(*&buf[8] + 40);
              v83 = [v7 endPointUUID];
              *v135 = 138413058;
              v136 = v104;
              v137 = 2112;
              v138 = v97;
              v139 = 2112;
              v140 = v82;
              v141 = 2112;
              v142 = v83;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "vendorKeyErase serverNonce = %@, signature  = %@, accessoryNonce = %@ endPointUUID = %@", v135, 0x2Au);
            }

            v84 = *(*&buf[8] + 40);
            v63 = [v7 endPointUUID];
            v64 = v106;
            v106[0] = _NSConcreteStackBlock;
            v106[1] = 3221225472;
            v106[2] = sub_100018064;
            v106[3] = &unk_100039B00;
            v85 = v104;
            v106[4] = v85;
            v106[6] = &v126;
            v106[5] = group;
            [v7 vendorKeyErase:v85 withSignature:v97 andAccessoryNonce:v84 forEndpoint:v63 completion:v106];
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
              (v8)[2](v8, v89, v39);
            }

            else
            {
              v94 = +[NSError fm_timeoutError];
              (v8)[2](v8, v94, v39);
            }
          }

          else
          {
            (v8)[2](v8, 0, v39);
          }

          v93 = v104;
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
      [v7 cancelUserKeyEraseWithCompletion:v109];
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
      [v7 cancelVendorKeyEraseWithCompletion:v108];
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

    else if (!(v105 | *(v127[0] + 40)))
    {
      v72 = [*(v115 + 5) useEraseKeyType];
      if (v72)
      {
        v73 = [*(v115 + 5) useEraseKeyType];
        v74 = [v26 eraseKeyType];
        v75 = [v73 isEqualToString:v74];

        if ((v75 & 1) == 0)
        {
          v91 = sub_100002400();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            v92 = [*(v115 + 5) useEraseKeyType];
            *v135 = 138412290;
            v136 = v92;
            _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Performing pairing check again with eraseKeyType = %@", v135, 0xCu);
          }

          v93 = [*(v115 + 5) useEraseKeyType];
          [a1 pairingCheckForAccessory:v7 useEraseKeyType:v93 completion:v8];
          goto LABEL_108;
        }
      }
    }

    (v8)[2](v8, 0, v39);
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
    v8[2](v8, v17, 0);
  }

  else
  {
    v18 = +[NSError fm_timeoutError];
    v8[2](v8, v18, 0);
  }

LABEL_92:

  _Block_object_dispose(&v126, 8);
  _Block_object_dispose(&v129, 8);
}

+ (void)checkAndHealPairingKeys:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() getPairingData:v5];
  v8 = sub_100002400();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 data];
    v10 = [v9 fm_hexString];
    v11 = [v7 keysUpdated];
    *buf = 138412546;
    *v70 = v10;
    *&v70[8] = 2112;
    *v71 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "pairing data = %@ keys Updated = %@", buf, 0x16u);
  }

  v12 = sub_100002400();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10001EA60(v7, v12);
  }

  v13 = [v7 pairingCheckToken];
  v14 = v13 == 0;

  if (v13)
  {
LABEL_8:
    v19 = +[FMDMagSafeDataStore sharedInstance];
    v20 = [v19 readLostModeAccessoriesList];

    v21 = [v5 serialNumber];
    v22 = [FMDExtHelper deviceIDFromAddress:v21];

    v23 = [v20 containsObject:v22];
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
      v26 = [v7 lostModePrivateKey];

      if (v26)
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
      v6[2](v6, v40);

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
      v32 = [v7 keysUpdated];

      if (v32)
      {
        [v7 setKeysUpdated:0];
        v14 = 1;
      }

      v33 = [v5 serialNumber];
      [FMPreferencesUtil removeKey:v33 inDomain:kFMDNotBackedUpMagSafePrefDomain];

      v34 = 0;
      v35 = 1;
    }

    else
    {
      v36 = [v5 serialNumber];
      v37 = [FMPreferencesUtil BOOLForKey:v36 inDomain:kFMDNotBackedUpMagSafePrefDomain];

      v38 = [v7 keysUpdated];

      if (v38 || !v37)
      {
        v41 = [v7 keysUpdated];
        v42 = v41 == 0;

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
      v44 = [v7 keysUpdated];
      *buf = 67109634;
      *v70 = v35;
      *&v70[4] = 1024;
      *&v70[6] = v14;
      *v71 = 2112;
      *&v71[2] = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "### updateServerInfo = %d, updateMulderInfo = %d %@", buf, 0x18u);
    }

    if (!v14)
    {
      goto LABEL_44;
    }

    v45 = [objc_opt_class() updatePairingData:v5 pairingData:v7];
    if (v45)
    {
      v46 = sub_100002400();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_10001EC78(v5, v46);
      }
    }

    else
    {
      if (v34)
      {
        v47 = [v5 serialNumber];
        [FMPreferencesUtil removeKey:v47 inDomain:kFMDNotBackedUpMagSafePrefDomain];
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
      v66 = v20;
      v46 = v49;
      [v50 updateLostModeKeyRollTimeFor:v64 lastLostModeKeyRollTime:v46 withCompletion:v63];
    }

LABEL_43:
LABEL_44:
    if (v35)
    {
      v51 = objc_alloc_init(FMDPairingLockUpdateRequestInfo);
      v52 = [v7 pairingCheckToken];
      v53 = [v52 fm_hexString];
      [v51 setPairingCheckToken:v53];

      v54 = [v7 lostModePrivateKey];
      v55 = [FMDCryptoUtil publicKeyFromPrivateKey:v54];

      v56 = [v55 fm_hexString];
      [v51 setLostModePubKey:v56];

      v57 = [objc_opt_class() getUserPrivateKey:v5];
      [v51 setUserPrivateKey:v57];

      v58 = [v5 serialNumber];
      [v51 setSerialNumber:v58];

      v59 = +[NSDate date];
      v60 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [v59 fm_epoch]);
      [v51 setTimeStamp:v60];

      v61 = +[FMDFMIPManager sharedInstance];
      [v61 updatePairingLockInfo:v51 completion:&stru_100039B48];
    }

    v6[2](v6, 0);
    v22 = v62;
    goto LABEL_47;
  }

  v15 = [objc_opt_class() registerDevice:v5];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 pairingToken];
    v18 = [NSData dataWithHexString:v17];
    [v7 setPairingCheckToken:v18];

    goto LABEL_8;
  }

  v20 = [NSError errorWithMessage:@"Unable to register device"];
  v6[2](v6, v20);
LABEL_48:
}

+ (id)getUserPrivateKey:(id)a3
{
  v3 = a3;
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
  [v3 copyUserPrivateKeyWithCompletion:v12];
  v7 = dispatch_time(0, 5000000000);
  v8 = dispatch_group_wait(v6, v7);
  if (*(v23[0] + 40) || v8)
  {
    v10 = sub_100002400();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001E08C(v23);
    }

    v9 = 0;
  }

  else
  {
    v9 = [v17[5] fm_hexString];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(buf, 8);

  return v9;
}

+ (id)updatePairingData:(id)a3 pairingData:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  [v5 setPairingData:v6 withCompletion:&v17];
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

+ (id)registerDevice:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(FMDPairingLockRegisterRequestInfo);
  v5 = [v3 serialNumber];
  [v4 setSerialNumber:v5];

  v6 = [v3 accessoryType];
  [v4 setAccessoryType:v6];

  v7 = dispatch_group_create();
  v8 = sub_100002400();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v4 serialNumber];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
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
      v15 = [v14 pairingToken];
      if (v15)
      {
        v16 = [*(*(&buf + 1) + 40) serialNumber];
        v17 = v16 == 0;

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
      v21 = [*(*(&buf + 1) + 40) pairingToken];
      v22 = [*(*(&buf + 1) + 40) serialNumber];
      sub_10001ED10(v21, v22, v31, v20);
    }
  }

  v18 = 0;
LABEL_16:

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&buf, 8);

  return v18;
}

+ (id)getPairingData:(id)a3
{
  v3 = a3;
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
  [v3 getPairingDataWithCompletion:v12];
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