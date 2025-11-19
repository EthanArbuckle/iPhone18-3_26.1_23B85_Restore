@interface CLSUserDefaults
+ (id)displayNameForDefaultName:(id)a3;
+ (id)sharedDefaults;
+ (id)userDefaultsConfigurationDictionaryAndReturnError:(id *)a3;
- (BOOL)userDefaultForDefaultNamed:(id)a3;
- (CLSUserDefaults)initWithEndpoint:(id)a3;
- (id)syncUtilityServer:(id)a3;
- (id)utilityServer:(id)a3;
- (void)getUserDefaultForDefaultNamed:(id)a3 completion:(id)a4;
- (void)setUserDefaultValue:(id)a3 forDefaultNamed:(id)a4 completion:(id)a5;
- (void)userDefaultsConfigurationDictionaryWithCompletion:(id)a3;
@end

@implementation CLSUserDefaults

+ (id)sharedDefaults
{
  v4 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a2, v2);
  v7 = objc_msgSend_executablePath(v4, v5, v6);

  v10 = objc_msgSend_lastPathComponent(v7, v8, v9);
  isEqualToString = objc_msgSend_isEqualToString_(v10, v11, @"progressd");

  if (isEqualToString)
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v13 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_236F71000, v13, OS_LOG_TYPE_FAULT, "ERROR: CLSUserDefaults is not available to progressd", buf, 2u);
    }

    v14 = 0;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_236F865DC;
    block[3] = &unk_278A17960;
    block[4] = a1;
    if (qword_280B2A080 != -1)
    {
      dispatch_once(&qword_280B2A080, block);
    }

    v14 = qword_280B2A078;
  }

  return v14;
}

+ (id)displayNameForDefaultName:(id)a3
{
  v3 = a3;
  v5 = v3;
  if (qword_280B2A090 == -1)
  {
    if (v3)
    {
LABEL_3:
      v6 = objc_msgSend_objectForKeyedSubscript_(qword_280B2A088, v4, v5);
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&qword_280B2A090, &unk_284A077A8);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

+ (id)userDefaultsConfigurationDictionaryAndReturnError:(id *)a3
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_236F869F0;
  v28 = sub_236F86A00;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_236F869F0;
  v22 = sub_236F86A00;
  v23 = 0;
  v5 = objc_msgSend_sharedDefaults(CLSUserDefaults, a2, a3);
  if (v5)
  {
    v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &unk_284A07B48);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_236F86A0C;
    v14[3] = &unk_278A17B98;
    v16 = &v18;
    v17 = &v24;
    v7 = v6;
    v15 = v7;
    objc_msgSend_userDefaultsConfigurationDictionaryWithCompletion_(v5, v8, v14);
    v9 = dispatch_time(0, 60000000000);
    if (!dispatch_block_wait(v7, v9))
    {
      goto LABEL_6;
    }

    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v10 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_236F71000, v10, OS_LOG_TYPE_ERROR, "Timed out when getting user defaults configuration dictionary!", v13, 2u);
      if (!a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
LABEL_6:
      if (!a3)
      {
LABEL_8:
        v11 = v19[5];

        goto LABEL_12;
      }
    }

    *a3 = v25[5];
    goto LABEL_8;
  }

  if (a3)
  {
    objc_msgSend_cls_createErrorWithCode_format_(MEMORY[0x277CCA9B8], v4, 4, @"Not authorized to userDefaultsConfigurationDictionaryAndReturnError");
    *a3 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_12:

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

- (CLSUserDefaults)initWithEndpoint:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = CLSUserDefaults;
  v6 = [(CLSUserDefaults *)&v30 init];
  if (!v6)
  {
LABEL_9:
    v11 = v6;
    goto LABEL_10;
  }

  v32 = 0;
  v7 = objc_msgSend_entitlementsForCurrentTaskWithError_(CLSEntitlements, v5, &v32);
  v8 = v32;
  if (v8)
  {
    v10 = v8;

    v11 = 0;
    goto LABEL_10;
  }

  v31 = 0;
  v12 = objc_msgSend_BOOLValueForEntitlement_error_(v7, v9, @"com.apple.private.ClassKit.dashboard", &v31);
  v13 = v31;

  v11 = 0;
  if (!v13 && v12)
  {
    v14 = objc_opt_class();
    v17 = objc_msgSend_endpointClass(v14, v15, v16);
    v19 = objc_msgSend_instanceForEndpoint_(v17, v18, v4);
    endpointConnection = v6->_endpointConnection;
    v6->_endpointConnection = v19;

    v21 = CLSDispatchQueueName(v6, 0);
    v24 = objc_msgSend_UTF8String(v21, v22, v23);
    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    if (qword_280B2A0A0 != -1)
    {
      dispatch_once(&qword_280B2A0A0, &unk_284A07B88);
    }

    v26 = qword_280B2A098;
    v27 = dispatch_queue_create_with_target_V2(v24, v25, v26);
    queue = v6->_queue;
    v6->_queue = v27;

    goto LABEL_9;
  }

LABEL_10:

  return v11;
}

- (id)utilityServer:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_endpointConnection(self, v5, v6);
  v9 = objc_msgSend_utilityServer_(v7, v8, v4);

  return v9;
}

- (id)syncUtilityServer:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_endpointConnection(self, v5, v6);
  v9 = objc_msgSend_syncUtilityServer_(v7, v8, v4);

  return v9;
}

- (void)userDefaultsConfigurationDictionaryWithCompletion:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236F86E64;
  v9[3] = &unk_278A17BC0;
  v10 = v4;
  v5 = v4;
  v7 = objc_msgSend_utilityServer_(self, v6, v9);
  objc_msgSend_remote_getUserDefaultsConfigurationDictionaryWithCompletion_(v7, v8, v5);
}

- (void)getUserDefaultForDefaultNamed:(id)a3 completion:(id)a4
{
  v6 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236F86F40;
  v12[3] = &unk_278A17BC0;
  v13 = v6;
  v7 = v6;
  v8 = a3;
  v10 = objc_msgSend_utilityServer_(self, v9, v12);
  objc_msgSend_remote_getUserDefaultForDefaultNamed_completion_(v10, v11, v8, v7);
}

- (void)setUserDefaultValue:(id)a3 forDefaultNamed:(id)a4 completion:(id)a5
{
  v8 = a5;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236F87030;
  v15[3] = &unk_278A17BC0;
  v16 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v13 = objc_msgSend_utilityServer_(self, v12, v15);
  objc_msgSend_remote_setUserDefaultValue_forDefaultNamed_completion_(v13, v14, v11, v10, v9);
}

- (BOOL)userDefaultForDefaultNamed:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = objc_msgSend_syncUtilityServer_(self, v5, &unk_284A07B68);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_236F87214;
  v10[3] = &unk_278A17C08;
  v10[4] = &v11;
  objc_msgSend_remote_getUserDefaultForDefaultNamed_completion_(v6, v7, v4, v10);
  v8 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v8;
}

@end