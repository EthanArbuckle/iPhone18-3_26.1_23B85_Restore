@interface DSTestAutomation
+ (id)sharedInstance;
+ (void)postConfiguration:(id)configuration;
+ (void)postInteractiveTestEvent:(id)event info:(id)info;
- (DSTestAutomation)init;
@end

@implementation DSTestAutomation

- (DSTestAutomation)init
{
  v8.receiver = self;
  v8.super_class = DSTestAutomation;
  v2 = [(DSTestAutomation *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_testAutomationEnabled = 0;
    CFPreferencesAppSynchronize(@"com.apple.Diagnostics");
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"TestAutomation", @"com.apple.Diagnostics", &keyExistsAndHasValidFormat))
    {
      v4 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = !v4;
    v3->_testAutomationEnabled = v5;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[DSTestAutomation sharedInstance];
  }

  v3 = sharedInstance_singleton;

  return v3;
}

void __34__DSTestAutomation_sharedInstance__block_invoke(id a1)
{
  sharedInstance_singleton = objc_alloc_init(DSTestAutomation);

  _objc_release_x1();
}

+ (void)postInteractiveTestEvent:(id)event info:(id)info
{
  eventCopy = event;
  infoCopy = info;
  v7 = +[DSTestAutomation sharedInstance];
  testAutomationEnabled = [v7 testAutomationEnabled];

  if (testAutomationEnabled)
  {
    v10[0] = @"event";
    v10[1] = @"type";
    v11[0] = @"DSTestAutomationEvent";
    v11[1] = @"InteractiveTestEvent";
    v10[2] = @"interactiveEvent";
    v10[3] = @"info";
    v11[2] = eventCopy;
    v11[3] = infoCopy;
    v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
    UIAccessibilityPostNotification(0xFA2u, v9);
  }
}

+ (void)postConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = +[DSTestAutomation sharedInstance];
  testAutomationEnabled = [v4 testAutomationEnabled];

  if (testAutomationEnabled)
  {
    v7[0] = @"event";
    v7[1] = @"type";
    v8[0] = @"DSTestAutomationEvent";
    v8[1] = @"Configuration";
    v7[2] = @"info";
    v8[2] = configurationCopy;
    v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
    UIAccessibilityPostNotification(0xFA2u, v6);
  }
}

@end