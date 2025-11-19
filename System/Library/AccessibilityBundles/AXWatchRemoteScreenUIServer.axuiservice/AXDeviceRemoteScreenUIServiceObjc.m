@interface AXDeviceRemoteScreenUIServiceObjc
+ (id)sharedInstance;
- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6;
- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)a3;
@end

@implementation AXDeviceRemoteScreenUIServiceObjc

+ (id)sharedInstance
{
  if (qword_C940 != -1)
  {
    sub_4290();
  }

  v3 = qword_C938;

  return v3;
}

- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [(AXDeviceRemoteScreenUIServiceObjc *)self service];
  v13 = [v12 processMessage:v11 withIdentifier:a4 fromClientWithIdentifier:v10 error:a6];

  return v13;
}

- (void)connectionWillBeInterruptedForClientWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = AXLogTwiceRemoteScreen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AXDeviceRemoteScreenUIServiceObjc connectionWillBeInterruptedForClientWithIdentifier:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[TWICE]: %s, %@", &v7, 0x16u);
  }

  v6 = [(AXDeviceRemoteScreenUIServiceObjc *)self service];
  [v6 clientConnectionWasInterrupted];
}

@end