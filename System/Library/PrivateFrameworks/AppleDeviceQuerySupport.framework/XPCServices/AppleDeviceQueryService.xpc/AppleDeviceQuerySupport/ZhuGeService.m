@interface ZhuGeService
- (id)isCallerEntitledforInternalKey:(id)a3 withError:(id *)a4;
- (id)isCallerEntitledforKey:(id)a3 withError:(id *)a4;
- (void)assertCallerEntitledForInternalService;
- (void)assertCallerEntitledForService;
- (void)initData;
- (void)setBulkInternalKeys:(id)a3 getValuesAndError:(id)a4;
- (void)setBulkInternalMGKeys:(id)a3 getValuesAndError:(id)a4;
- (void)setBulkKeys:(id)a3 getValuesAndError:(id)a4;
- (void)setBulkMGKeys:(id)a3 getValuesAndError:(id)a4;
- (void)setInternalKey:(id)a3 andOptions:(id)a4 andPreferences:(id)a5 getValueAndError:(id)a6;
- (void)setInternalMGKey:(id)a3 getValueAndError:(id)a4;
- (void)setKey:(id)a3 andOptions:(id)a4 andPreferences:(id)a5 getValueAndError:(id)a6;
- (void)setMGKey:(id)a3 getValueAndError:(id)a4;
@end

@implementation ZhuGeService

- (void)initData
{
  baseEntitlement = self->_baseEntitlement;
  self->_baseEntitlement = @"com.apple.private.ZhuGeSupport.CopyValue";

  self->_supportAssistantClass = objc_opt_class();
  armoryClassName = self->_armoryClassName;
  self->_armoryClassName = @"OBJC_CLASS_$_ZhuGeArmory";

  domainString = self->_domainString;
  self->_domainString = &stru_100014878;
}

- (void)assertCallerEntitledForService
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000070DC;
  block[3] = &unk_1000146E8;
  block[4] = self;
  if (qword_100019FB8 != -1)
  {
    dispatch_once(&qword_100019FB8, block);
  }

  if ((byte_100019FC0 & 1) == 0)
  {
    v2 = +[(ZhuGeSingletonService *)ZhuGeLockerService];
    v3 = [v2 xpcConnection];
    v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 processIdentifier]);
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService assertCallerEntitledForService]", 133, @"Failed to validate ZhuGe service entitlement for pid %@!", v5, v6, v7, v4);

    v8 = +[(ZhuGeSingletonService *)ZhuGeLockerService];
    v9 = [v8 xpcConnection];
    [v9 invalidate];
  }
}

- (id)isCallerEntitledforKey:(id)a3 withError:(id *)a4
{
  v9 = a3;
  if (qword_100019FC8 != -1)
  {
    sub_1000098E4();
  }

  if (!v9)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService isCallerEntitledforKey:withError:]", 158, @"key pointer is nil!", v6, v7, v8, v45);
    v18 = [NSError errorWithZhuGeErrorCode:45 underlyingError:0];
    v15 = 0;
    v16 = 0;
    v17 = 0;
LABEL_7:
    *a4 = v18;
    goto LABEL_8;
  }

  v10 = [qword_100019FD0 getCacheForKey:v9];
  v11 = qword_100019FD8;
  qword_100019FD8 = v10;

  if (qword_100019FD8)
  {
    ZhuGeLog(262400, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService isCallerEntitledforKey:withError:]", 166, @"Get entitlement validation result for key %@ from cache", v12, v13, v14, v9);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_8;
  }

  v22 = [(ZhuGeService *)self supportAssistantClass];
  v23 = [(ZhuGeService *)self armoryClassName];
  v48 = 0;
  v15 = [(objc_class *)v22 getSharedInstanceByName:v23 withError:&v48];
  v17 = v48;

  if (!v15)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService isCallerEntitledforKey:withError:]", 173, @"Failed to get the dylib shared instance!", v24, v25, v26, v45);
    v18 = [NSError errorWithZhuGeErrorCode:13 underlyingError:0];
    v16 = 0;
    goto LABEL_7;
  }

  v27 = [v15 helper];
  v47 = v17;
  v16 = [v27 getConfigOfKey:v9 withError:&v47];
  v28 = v47;

  if (v16)
  {
    v32 = +[(ZhuGeSingletonService *)ZhuGeLockerService];
    v33 = [v32 xpcConnection];
    v34 = [v16 objectForKeyedSubscript:@"ENTITLEMENT"];
    v35 = isXPCConnectionEntitled(v33, v34);

    if (v35)
    {
      v39 = qword_100019FD8;
      qword_100019FD8 = &__kCFBooleanTrue;

      v46 = v28;
      v40 = [qword_100019FD0 setCache:qword_100019FD8 forKey:v9 withError:&v46];
      v17 = v46;

      if ((v40 & 1) == 0)
      {
        ZhuGeLog(262656, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService isCallerEntitledforKey:withError:]", 195, @"Failed to cache entitlement validation result for key %@, error: %@!", v41, v42, v43, v9);
      }
    }

    else
    {
      ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService isCallerEntitledforKey:withError:]", 186, @"Current XPC connection is not entitled for key %@!", v36, v37, v38, v9);
      v17 = [NSError errorWithZhuGeErrorCode:68 underlyingError:0];
    }
  }

  else
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService isCallerEntitledforKey:withError:]", 180, @"Failed to get configuration for key %@!", v29, v30, v31, v9);
    v44 = v28;
    *a4 = v28;
    v17 = v28;
  }

LABEL_8:
  v19 = qword_100019FD8;
  v20 = qword_100019FD8;

  return v19;
}

- (void)assertCallerEntitledForInternalService
{
  if (qword_100019FE0 != -1)
  {
    sub_1000098F8();
  }

  if ((byte_100019FE8 & 1) == 0)
  {
    v2 = +[(ZhuGeSingletonService *)ZhuGeLockerService];
    v3 = [v2 xpcConnection];
    v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 processIdentifier]);
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService assertCallerEntitledForInternalService]", 216, @"Failed to validate ZhuGe internal service entitlement for pid %@!", v5, v6, v7, v4);

    v9 = +[(ZhuGeSingletonService *)ZhuGeLockerService];
    v8 = [v9 xpcConnection];
    [v8 invalidate];
  }
}

- (id)isCallerEntitledforInternalKey:(id)a3 withError:(id *)a4
{
  v8 = a3;
  if (qword_100019FF0 != -1)
  {
    sub_10000990C();
  }

  if (v8)
  {
    v9 = [qword_100019FF8 getCacheForKey:v8];
    v10 = qword_10001A000;
    qword_10001A000 = v9;

    if (qword_10001A000)
    {
      ZhuGeLog(262400, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService isCallerEntitledforInternalKey:withError:]", 249, @"Get entitlement validation result for internal key %@ from cache", v11, v12, v13, v8);
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v45 = 0;
      v14 = [(ZhuGeSupportAssistant *)ZhuGeInternalSupportAssistant getSharedInstanceByName:@"OBJC_CLASS_$_ZhuGeInternalArmory" withError:&v45];
      v16 = v45;
      if (v14)
      {
        v23 = [v14 helper];
        v44 = v16;
        v15 = [v23 getConfigOfKey:v8 withError:&v44];
        v24 = v44;

        if (v15)
        {
          v28 = +[(ZhuGeSingletonService *)ZhuGeLockerService];
          v29 = [v28 xpcConnection];
          v30 = [v15 objectForKeyedSubscript:@"ENTITLEMENT"];
          v31 = isXPCConnectionEntitled(v29, v30);

          if (v31)
          {
            v35 = qword_10001A000;
            qword_10001A000 = &__kCFBooleanTrue;

            v43 = v24;
            v36 = [qword_100019FF8 setCache:qword_10001A000 forKey:v8 withError:&v43];
            v16 = v43;

            if ((v36 & 1) == 0)
            {
              ZhuGeLog(262656, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService isCallerEntitledforInternalKey:withError:]", 278, @"Failed to cache entitlement validation result for internal key %@, error: %@!", v37, v38, v39, v8);
            }
          }

          else
          {
            ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService isCallerEntitledforInternalKey:withError:]", 269, @"Current XPC connection is not entitled for internal key %@!", v32, v33, v34, v8);
            v16 = [NSError errorWithZhuGeErrorCode:68 underlyingError:0];
          }
        }

        else
        {
          ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService isCallerEntitledforInternalKey:withError:]", 263, @"Failed to get configuration for internal key %@!", v25, v26, v27, v8);
          v41 = v24;
          *a4 = v24;
          v16 = v24;
        }
      }

      else
      {
        ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService isCallerEntitledforInternalKey:withError:]", 256, @"Failed to get the internal dylib shared instance!", v20, v21, v22, v42);
        v40 = v16;
        v15 = 0;
        *a4 = v16;
      }
    }
  }

  else
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService isCallerEntitledforInternalKey:withError:]", 241, @"key pointer is nil!", v5, v6, v7, v42);
    [NSError errorWithZhuGeErrorCode:45 underlyingError:0];
    v14 = 0;
    v15 = 0;
    *a4 = v16 = 0;
  }

  v17 = qword_10001A000;
  v18 = qword_10001A000;

  return v17;
}

- (void)setKey:(id)a3 andOptions:(id)a4 andPreferences:(id)a5 getValueAndError:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(ZhuGeService *)self assertCallerEntitledForService];
  if (!v10)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setKey:andOptions:andPreferences:getValueAndError:]", 302, @"key pointer is nil!", v14, v15, v16, v33);
    v21 = [NSError errorWithZhuGeErrorCode:45 underlyingError:0];
    v17 = 0;
LABEL_8:
    v24 = 0;
    v29 = 0;
    goto LABEL_9;
  }

  ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setKey:andOptions:andPreferences:getValueAndError:]", 307, @"Received key: %@", v14, v15, v16, v10);
  v37 = 0;
  v17 = [(ZhuGeService *)self isCallerEntitledforKey:v10 withError:&v37];
  v21 = v37;
  if (!v17)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setKey:andOptions:andPreferences:getValueAndError:]", 311, @"The caller is not entitled for key %@!", v18, v19, v20, v10);
    goto LABEL_8;
  }

  v22 = [(ZhuGeService *)self supportAssistantClass];
  v23 = [(ZhuGeService *)self armoryClassName];
  v36 = v21;
  v24 = [(objc_class *)v22 getSharedInstanceByName:v23 withError:&v36];
  v25 = v36;

  if (v24)
  {
    v35 = v25;
    v29 = [v24 queryKey:v10 andOptions:v11 andPreferences:v12 withError:&v35];
    v21 = v35;

    if (!v29)
    {
      ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setKey:andOptions:andPreferences:getValueAndError:]", 336, @"%@ query failed!", v30, v31, v32, v10);
    }
  }

  else
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setKey:andOptions:andPreferences:getValueAndError:]", 330, @"Failed to get the dylib shared instance!", v26, v27, v28, v34);
    v29 = 0;
    v21 = v25;
  }

LABEL_9:
  v13[2](v13, v29, v21);
}

- (void)setBulkKeys:(id)a3 getValuesAndError:(id)a4
{
  v6 = a3;
  v37 = a4;
  [(ZhuGeService *)self assertCallerEntitledForService];
  v36 = v6;
  if (v6)
  {
    ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkKeys:getValuesAndError:]", 359, @"Begin: bulk query keys", v7, v8, v9, v32);
    v39 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v11)
    {
      v38 = *v54;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v54 != v38)
          {
            objc_enumerationMutation(v10);
          }

          v13 = *(*(&v53 + 1) + 8 * i);
          v14 = [v10 objectForKeyedSubscript:v13];
          v15 = [v14 objectForKeyedSubscript:@"Options"];

          v16 = [v10 objectForKeyedSubscript:v13];
          v17 = [v16 objectForKeyedSubscript:@"Preferences"];

          v47 = 0;
          v48 = &v47;
          v49 = 0x3032000000;
          v50 = sub_1000082A0;
          v51 = sub_1000082B0;
          v52 = 0;
          v41 = 0;
          v42 = &v41;
          v43 = 0x3032000000;
          v44 = sub_1000082A0;
          v45 = sub_1000082B0;
          v46 = 0;
          v34 = [(ZhuGeService *)self domainString];
          ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkKeys:getValuesAndError:]", 370, @"In bulk query, query key: %@ in %@entrusted way", v18, v19, v20, v13);

          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_1000082B8;
          v40[3] = &unk_100014770;
          v40[4] = &v47;
          v40[5] = &v41;
          [(ZhuGeService *)self setKey:v13 andOptions:v15 andPreferences:v17 getValueAndError:v40];
          v24 = v48[5];
          if (v24)
          {
            v57 = @"Value";
            v58 = v24;
            [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          }

          else
          {
            v35 = v42[5];
            ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkKeys:getValuesAndError:]", 378, @"In bulk query, key %@ failed! Error: %@", v21, v22, v23, v13);
            v26 = v42[5];
            v59 = @"Error";
            v60 = v26;
            [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          }
          v25 = ;
          [v39 setObject:v25 forKeyedSubscript:v13];

          _Block_object_dispose(&v41, 8);
          _Block_object_dispose(&v47, 8);
        }

        v11 = [v10 countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v11);
    }

    v30 = v39;
    v31 = 0;
  }

  else
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkKeys:getValuesAndError:]", 354, @"keysDict pointer is nil!", v7, v8, v9, v32);
    v31 = [NSError errorWithZhuGeErrorCode:45 underlyingError:0];
    v30 = 0;
  }

  ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkKeys:getValuesAndError:]", 390, @"End: bulk query keys", v27, v28, v29, v33);
  v37[2](v37, v30, v31);
}

- (void)setInternalKey:(id)a3 andOptions:(id)a4 andPreferences:(id)a5 getValueAndError:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_1000082A0;
  v43 = sub_1000082B0;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1000082A0;
  v37 = sub_1000082B0;
  v38 = 0;
  [(ZhuGeService *)self assertCallerEntitledForInternalService];
  if (!v10)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setInternalKey:andOptions:andPreferences:getValueAndError:]", 409, @"key pointer is nil!", v14, v15, v16, v29);
    v27 = [NSError errorWithZhuGeErrorCode:45 underlyingError:0];
    v28 = v40[5];
    v40[5] = v27;

LABEL_7:
    v23 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setInternalKey:andOptions:andPreferences:getValueAndError:]", 414, @"Received internal key: %@", v14, v15, v16, v10);
  v17 = v40;
  obj = v40[5];
  v18 = [(ZhuGeService *)self isCallerEntitledforInternalKey:v10 withError:&obj];
  objc_storeStrong(v17 + 5, obj);
  if (!v18)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setInternalKey:andOptions:andPreferences:getValueAndError:]", 418, @"The caller is not entitled for internal key %@!", v19, v20, v21, v10);
    goto LABEL_7;
  }

  v22 = v40;
  v31 = v40[5];
  v23 = [ZhuGeInternalSupportAssistant getXpcProxyWithError:&v31];
  objc_storeStrong(v22 + 5, v31);
  if (v23)
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10000865C;
    v30[3] = &unk_100014770;
    v30[4] = &v33;
    v30[5] = &v39;
    [v23 setKey:v10 andOptions:v11 andPreferences:v12 getValueAndError:v30];
  }

  else
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setInternalKey:andOptions:andPreferences:getValueAndError:]", 425, @"Failed to get internal service proxy for internal key %@!", v24, v25, v26, v10);
    v23 = 0;
  }

LABEL_8:
  v13[2](v13, v34[5], v40[5]);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
}

- (void)setBulkInternalKeys:(id)a3 getValuesAndError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1000082A0;
  v35 = sub_1000082B0;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1000082A0;
  v29 = sub_1000082B0;
  v30 = 0;
  [(ZhuGeService *)self assertCallerEntitledForInternalService];
  if (!v6)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkInternalKeys:getValuesAndError:]", 449, @"keysDict pointer is nil!", v8, v9, v10, v21);
    v19 = [NSError errorWithZhuGeErrorCode:45 underlyingError:0];
    v20 = v32[5];
    v32[5] = v19;

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkInternalKeys:getValuesAndError:]", 454, @"Begin: bulk query internal keys", v8, v9, v10, v21);
  v11 = v32;
  obj = v32[5];
  v12 = [ZhuGeInternalSupportAssistant getXpcProxyWithError:&obj];
  objc_storeStrong(v11 + 5, obj);
  if (!v12)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkInternalKeys:getValuesAndError:]", 459, @"In bulk query, failed to get internal service proxy for internal keys!", v13, v14, v15, v22);
    goto LABEL_7;
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000089AC;
  v23[3] = &unk_100014798;
  v23[4] = &v25;
  v23[5] = &v31;
  [v12 setBulkKeys:v6 getValuesAndError:v23];
  if (!v26[5])
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkInternalKeys:getValuesAndError:]", 469, @"In bulk query, failed to query internal keys!", v16, v17, v18, v22);
  }

LABEL_8:
  ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkInternalKeys:getValuesAndError:]", 474, @"End: bulk query internal keys", v16, v17, v18, v22);
  v7[2](v7, v26[5], v32[5]);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
}

- (void)setMGKey:(id)a3 getValueAndError:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ZhuGeService *)self assertCallerEntitledForService];
  if (v6)
  {
    ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setMGKey:getValueAndError:]", 493, @"Trying MG key %@", v8, v9, v10, v6);
    v17 = 0;
    v11 = MGQuery(v6, &v17);
    v15 = v17;
    if (!v11)
    {
      ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setMGKey:getValueAndError:]", 498, @"%@ query failed!", v12, v13, v14, v6);
    }
  }

  else
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setMGKey:getValueAndError:]", 488, @"key pointer is nil!", v8, v9, v10, v16);
    v15 = [NSError errorWithZhuGeErrorCode:45 underlyingError:0];
    v11 = 0;
  }

  v7[2](v7, v11, v15);
}

- (void)setBulkMGKeys:(id)a3 getValuesAndError:(id)a4
{
  v6 = a3;
  v33 = a4;
  [(ZhuGeService *)self assertCallerEntitledForService];
  v32 = v6;
  if (v6)
  {
    ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkMGKeys:getValuesAndError:]", 522, @"Begin: bulk query MG keys", v7, v8, v9, v28);
    v35 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v6;
    v10 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v10)
    {
      v11 = *v50;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v50 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v49 + 1) + 8 * i);
          v43 = 0;
          v44 = &v43;
          v45 = 0x3032000000;
          v46 = sub_1000082A0;
          v47 = sub_1000082B0;
          v48 = 0;
          v37 = 0;
          v38 = &v37;
          v39 = 0x3032000000;
          v40 = sub_1000082A0;
          v41 = sub_1000082B0;
          v42 = 0;
          v30 = [(ZhuGeService *)self domainString];
          ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkMGKeys:getValuesAndError:]", 531, @"In bulk query, query key: %@ from %@entrusted MG", v14, v15, v16, v13);

          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_100008FB0;
          v36[3] = &unk_100014770;
          v36[4] = &v43;
          v36[5] = &v37;
          [(ZhuGeService *)self setMGKey:v13 getValueAndError:v36];
          v20 = v44[5];
          if (v20)
          {
            v53 = @"Value";
            v54 = v20;
            [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          }

          else
          {
            v31 = v38[5];
            ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkMGKeys:getValuesAndError:]", 539, @"In bulk query, MG Key %@ failed! Error: %@", v17, v18, v19, v13);
            v22 = v38[5];
            v55 = @"Error";
            v56 = v22;
            [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          }
          v21 = ;
          [v35 setObject:v21 forKeyedSubscript:v13];

          _Block_object_dispose(&v37, 8);
          _Block_object_dispose(&v43, 8);
        }

        v10 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v10);
    }

    v26 = v35;
    v27 = 0;
  }

  else
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkMGKeys:getValuesAndError:]", 517, @"keysList pointer is nil!", v7, v8, v9, v28);
    v27 = [NSError errorWithZhuGeErrorCode:45 underlyingError:0];
    v26 = 0;
  }

  ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkMGKeys:getValuesAndError:]", 551, @"End: bulk query MG keys", v23, v24, v25, v29);
  v33[2](v33, v26, v27);
}

- (void)setInternalMGKey:(id)a3 getValueAndError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1000082A0;
  v31 = sub_1000082B0;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000082A0;
  v25 = sub_1000082B0;
  v26 = 0;
  [(ZhuGeService *)self assertCallerEntitledForInternalService];
  if (!v6)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setInternalMGKey:getValueAndError:]", 566, @"key pointer is nil!", v8, v9, v10, v18);
    v16 = [NSError errorWithZhuGeErrorCode:45 underlyingError:0];
    v17 = v28[5];
    v28[5] = v16;

LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setInternalMGKey:getValueAndError:]", 571, @"Trying internal MG key %@", v8, v9, v10, v6);
  v11 = v28;
  obj = v28[5];
  v12 = [ZhuGeInternalSupportAssistant getXpcProxyWithError:&obj];
  objc_storeStrong(v11 + 5, obj);
  if (!v12)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setInternalMGKey:getValueAndError:]", 576, @"Failed to get internal service proxy for internal MG key %@!", v13, v14, v15, v6);
    goto LABEL_6;
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000092B0;
  v19[3] = &unk_100014770;
  v19[4] = &v21;
  v19[5] = &v27;
  [v12 setMGKey:v6 getValueAndError:v19];
LABEL_7:
  v7[2](v7, v22[5], v28[5]);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
}

- (void)setBulkInternalMGKeys:(id)a3 getValuesAndError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1000082A0;
  v35 = sub_1000082B0;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1000082A0;
  v29 = sub_1000082B0;
  v30 = 0;
  [(ZhuGeService *)self assertCallerEntitledForInternalService];
  if (!v6)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkInternalMGKeys:getValuesAndError:]", 600, @"keysList pointer is nil!", v8, v9, v10, v21);
    v19 = [NSError errorWithZhuGeErrorCode:45 underlyingError:0];
    v20 = v32[5];
    v32[5] = v19;

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkInternalMGKeys:getValuesAndError:]", 605, @"Begin: bulk query internal MG keys", v8, v9, v10, v21);
  v11 = v32;
  obj = v32[5];
  v12 = [ZhuGeInternalSupportAssistant getXpcProxyWithError:&obj];
  objc_storeStrong(v11 + 5, obj);
  if (!v12)
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkInternalMGKeys:getValuesAndError:]", 610, @"In bulk query, failed to get internal service proxy for internal MG keys!", v13, v14, v15, v22);
    goto LABEL_7;
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100009600;
  v23[3] = &unk_100014798;
  v23[4] = &v25;
  v23[5] = &v31;
  [v12 setBulkMGKeys:v6 getValuesAndError:v23];
  if (!v26[5])
  {
    ZhuGeLog(1040, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkInternalMGKeys:getValuesAndError:]", 620, @"In bulk query, failed to query internal MG keys!", v16, v17, v18, v22);
  }

LABEL_8:
  ZhuGeLog(524544, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeSupport/ZhuGeService/ZhuGeService.m", "[ZhuGeService setBulkInternalMGKeys:getValuesAndError:]", 625, @"End: bulk query internal MG keys", v16, v17, v18, v22);
  v7[2](v7, v26[5], v32[5]);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
}

@end