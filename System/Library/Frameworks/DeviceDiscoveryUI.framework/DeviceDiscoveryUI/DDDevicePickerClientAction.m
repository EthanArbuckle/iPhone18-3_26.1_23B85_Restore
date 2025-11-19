@interface DDDevicePickerClientAction
+ (id)actionForDevicePickerCreatedBonjourEndpoint:(id)a3;
+ (id)actionForDevicePickerCreatedBrowserResultData:(id)a3;
+ (id)actionForDevicePickerCreatedEndpoint:(id)a3;
- (void)performActionForSceneController:(id)a3;
@end

@implementation DDDevicePickerClientAction

+ (id)actionForDevicePickerCreatedEndpoint:(id)a3
{
  v4 = MEMORY[0x277CF0C80];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_284AF6C68 forSetting:0];
  v7 = nw_endpoint_copy_dictionary();

  [v6 setObject:v7 forSetting:1];
  v8 = [[a1 alloc] initWithInfo:v6 responder:0];

  return v8;
}

+ (id)actionForDevicePickerCreatedBonjourEndpoint:(id)a3
{
  v4 = MEMORY[0x277CF0C80];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_284AF6C80 forSetting:0];
  v7 = nw_endpoint_copy_dictionary();

  [v6 setObject:v7 forSetting:2];
  v8 = [[a1 alloc] initWithInfo:v6 responder:0];

  return v8;
}

+ (id)actionForDevicePickerCreatedBrowserResultData:(id)a3
{
  v4 = MEMORY[0x277CF0C80];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_284AF6C98 forSetting:0];
  [v6 setObject:v5 forSetting:3];

  v7 = [[a1 alloc] initWithInfo:v6 responder:0];

  return v7;
}

- (void)performActionForSceneController:(id)a3
{
  v5 = [a3 delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [(DDDevicePickerClientAction *)v5 performActionForSceneController:a2, self];
  }

  v14 = v5;
  v6 = [(DDDevicePickerClientAction *)self info];
  v7 = [v6 objectForSetting:0];
  v8 = [v7 integerValue];

  if (!v8)
  {
    v13 = [(DDDevicePickerClientAction *)self info];
    v10 = [v13 objectForSetting:1];

    v11 = nw_endpoint_create_from_dictionary();
    [v14 _devicePickerDidCreateApplicationServiceEndpoint:v11];
LABEL_9:

    goto LABEL_10;
  }

  if (v8 != 2)
  {
    if (v8 != 1)
    {
      goto LABEL_11;
    }

    v9 = [(DDDevicePickerClientAction *)self info];
    v10 = [v9 objectForSetting:2];

    v11 = nw_endpoint_create_from_dictionary();
    [v14 _devicePickerDidCreateBonjourEndpoint:v11];
    goto LABEL_9;
  }

  v12 = [(DDDevicePickerClientAction *)self info];
  v10 = [v12 objectForSetting:3];

  [v14 _devicePickerDidCreateBrowserResultData:v10];
LABEL_10:

LABEL_11:
}

- (void)performActionForSceneController:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:a3 file:@"DDDevicePickerClientAction.m" lineNumber:83 description:{@"Scene controller's delegate (%@) does not conform to _DDDevicePickerClientToHostActionHandling", objc_opt_class()}];
}

@end