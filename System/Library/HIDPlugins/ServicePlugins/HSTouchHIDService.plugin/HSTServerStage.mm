@interface HSTServerStage
- (BOOL)handleHSEncode:(void *)a3;
- (HSTServerStage)initWithName:(id)a3 description:(id)a4 queue:(id)a5;
- (id)preferenceValueForKey:(id)a3;
- (id)preferences;
- (void)dealloc;
- (void)setPreferenceValue:(id)a3 forKey:(id)a4;
@end

@implementation HSTServerStage

- (HSTServerStage)initWithName:(id)a3 description:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_19:
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"HSTServerStage.mm" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"description"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  v18 = +[NSAssertionHandler currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"HSTServerStage.mm" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"name"}];

  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_20:
  v20 = +[NSAssertionHandler currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"HSTServerStage.mm" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

LABEL_4:
  v25.receiver = self;
  v25.super_class = HSTServerStage;
  v12 = [(HSServerStage *)&v25 initWithName:v9 description:v10 queue:v11];
  if (v12)
  {
    v23 = 0xAAAAAAAAAAAAAAAALL;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    HSUtil::ReceiveRight::ReceiveRight(&v23);
    if ((v24 - 1) >= 0xFFFFFFFE)
    {
      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTServerStage.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSTServerStage initWithName:description:queue:];
      }

      v16 = 0;
    }

    else
    {
      v21 = 0xAAAAAAAAAAAAAAAALL;
      v22 = 0xAAAAAAAAAAAAAAAALL;
      HSUtil::SendRight::SendRight(&v21, &v23);
      if ((v22 - 1) >= 0xFFFFFFFE)
      {
        memset(__b, 170, sizeof(__b));
        basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTServerStage.mm", __b);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [HSTServerStage initWithName:description:queue:];
        }

        v16 = 0;
      }

      else
      {
        HSAccessProvider::RegisterServer(&v21, "com.apple.hid.HSServiceDirectory", v13);
        v14 = [[HSServiceDirectory alloc] initWithReceiveRight:&v23 authorizer:&__block_literal_global_4];
        serviceDirectory = v12->_serviceDirectory;
        v12->_serviceDirectory = v14;

        [(HSServiceDirectory *)v12->_serviceDirectory addService:v12];
        v16 = v12;
      }

      HSUtil::SendRight::~SendRight(&v21);
    }

    HSUtil::ReceiveRight::~ReceiveRight(&v23);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

BOOL __49__HSTServerStage_initWithName_description_queue___block_invoke(id a1, __SecTask *a2)
{
  v3 = [NSString stringWithUTF8String:"com.apple.hid.HSServiceDirectory.access"];
  v4 = SecTaskCopyValueForEntitlement(a2, v3, 0);

  if (!v4)
  {
    v6 = SecTaskCopySigningIdentifier(a2, 0);
    v7 = v6;
    if (v6)
    {
      if (([(__CFString *)v6 isEqualToString:@"com.apple.NanoSettings"]& 1) != 0 || ([(__CFString *)v7 isEqualToString:@"com.apple.Preferences"]& 1) != 0)
      {
        v5 = 1;
LABEL_13:

        goto LABEL_14;
      }

      v8 = MTLoggingPlugin();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __49__HSTServerStage_initWithName_description_queue___block_invoke_cold_1(v7, v8);
      }
    }

    else
    {
      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTServerStage.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __49__HSTServerStage_initWithName_description_queue___block_invoke_cold_2();
      }
    }

    v5 = 0;
    goto LABEL_13;
  }

  v5 = 1;
LABEL_14:

  return v5;
}

- (void)dealloc
{
  NSLog(@"~HSTServerStage", a2);
  v3.receiver = self;
  v3.super_class = HSTServerStage;
  [(HSServerStage *)&v3 dealloc];
}

- (id)preferences
{
  {
    v4 = [[HSPreference alloc] initWithKey:@"remoteAccessEnabled" name:@"Remote Access" description:@"Allow remote connections to the Touch pipeline"];
    v5 = v4;
    [HSTServerStage preferences]::prefs = [NSArray arrayWithObjects:&v5 count:1];
  }

  v2 = [HSTServerStage preferences]::prefs;

  return v2;
}

- (id)preferenceValueForKey:(id)a3
{
  v4 = a3;
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  HSUtil::ObjectLock::ObjectLock(v7, self);
  if ([v4 isEqualToString:@"remoteAccessEnabled"])
  {
    v5 = [NSNumber numberWithBool:self->_state.remoteAccessEnabled];
  }

  else
  {
    v5 = 0;
  }

  HSUtil::ObjectLock::~ObjectLock(v7);

  return v5;
}

- (void)setPreferenceValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  HSUtil::ObjectLock::ObjectLock(&v17, self);
  if (![v7 isEqualToString:@"remoteAccessEnabled"])
  {
    goto LABEL_9;
  }

  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v8)
    {
      v9 = [v8 BOOLValue];
      self->_state.remoteAccessEnabled = v9;
      if (v9)
      {
        v14 = &off_1093A0;
        v15 = &off_1093D0;
        v16[1] = -1431655766;
        v16[0] = -1;
        HSAccessProvider::CreateServerSocket(@"127.0.0.1", (&loc_CAFC + 2), v12);
        if ((v16[0] & 0x80000000) == 0)
        {
          close(v16[0]);
        }

        v16[0] = v13;
        v13 = -1;
        HSUtil::FileDescriptor::~FileDescriptor(v12);
        if ((v16[0] & 0x80000000) == 0)
        {
          [(HSServiceDirectory *)self->_serviceDirectory setRemoteAccessSocket:&v14];
        }
      }

      else
      {
        serviceDirectory = self->_serviceDirectory;
        v14 = &off_1093A0;
        v15 = &off_1093D0;
        v16[0] = -1;
        [(HSServiceDirectory *)serviceDirectory setRemoteAccessSocket:&v14];
      }

      HSUtil::FileDescriptor::~FileDescriptor(&v14);
      v10 = 1;
      goto LABEL_13;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_14;
  }

  v10 = 0;
LABEL_13:

LABEL_14:
  [v18 unlock];
  LOBYTE(v17) = 0;
  if (v10)
  {
    [(HSStage *)self postNotification:HSPreferenceChangedNotification];
  }

  HSUtil::ObjectLock::~ObjectLock(&v17);
}

- (BOOL)handleHSEncode:(void *)a3
{
  if (!*a3)
  {
    *&v5 = *(a3 + 17);
    DWORD2(v5) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a3 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue32(a3, 0xEBu, 0);
  }

  HSUtil::Encoder::encodeString(a3, HSUtil::CoderKey::Literal<(char)112,(char)114,(char)111,(char)106,(char)101,(char)99,(char)116,(char)86,(char)101,(char)114,(char)115,(char)105,(char)111,(char)110>::Key, "9110.1");
  if (!*a3)
  {
    HSUtil::Encoder::_encodeContainerStop(a3);
  }

  return 1;
}

- (void)initWithName:description:queue:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)initWithName:description:queue:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

void __49__HSTServerStage_initWithName_description_queue___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Process denied access to HSServiceDirectory: %{public}@", &v2, 0xCu);
}

void __49__HSTServerStage_initWithName_description_queue___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end