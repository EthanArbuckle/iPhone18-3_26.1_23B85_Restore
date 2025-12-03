@interface DDDevicePickerClientAction
+ (id)actionForDevicePickerCreatedBonjourEndpoint:(id)endpoint;
+ (id)actionForDevicePickerCreatedBrowserResultData:(id)data;
+ (id)actionForDevicePickerCreatedEndpoint:(id)endpoint;
- (void)performActionForSceneController:(id)controller;
@end

@implementation DDDevicePickerClientAction

+ (id)actionForDevicePickerCreatedEndpoint:(id)endpoint
{
  v4 = MEMORY[0x277CF0C80];
  endpointCopy = endpoint;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_284AF6C68 forSetting:0];
  v7 = nw_endpoint_copy_dictionary();

  [v6 setObject:v7 forSetting:1];
  v8 = [[self alloc] initWithInfo:v6 responder:0];

  return v8;
}

+ (id)actionForDevicePickerCreatedBonjourEndpoint:(id)endpoint
{
  v4 = MEMORY[0x277CF0C80];
  endpointCopy = endpoint;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_284AF6C80 forSetting:0];
  v7 = nw_endpoint_copy_dictionary();

  [v6 setObject:v7 forSetting:2];
  v8 = [[self alloc] initWithInfo:v6 responder:0];

  return v8;
}

+ (id)actionForDevicePickerCreatedBrowserResultData:(id)data
{
  v4 = MEMORY[0x277CF0C80];
  dataCopy = data;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_284AF6C98 forSetting:0];
  [v6 setObject:dataCopy forSetting:3];

  v7 = [[self alloc] initWithInfo:v6 responder:0];

  return v7;
}

- (void)performActionForSceneController:(id)controller
{
  delegate = [controller delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [(DDDevicePickerClientAction *)delegate performActionForSceneController:a2, self];
  }

  v14 = delegate;
  info = [(DDDevicePickerClientAction *)self info];
  v7 = [info objectForSetting:0];
  integerValue = [v7 integerValue];

  if (!integerValue)
  {
    info2 = [(DDDevicePickerClientAction *)self info];
    v10 = [info2 objectForSetting:1];

    v11 = nw_endpoint_create_from_dictionary();
    [v14 _devicePickerDidCreateApplicationServiceEndpoint:v11];
LABEL_9:

    goto LABEL_10;
  }

  if (integerValue != 2)
  {
    if (integerValue != 1)
    {
      goto LABEL_11;
    }

    info3 = [(DDDevicePickerClientAction *)self info];
    v10 = [info3 objectForSetting:2];

    v11 = nw_endpoint_create_from_dictionary();
    [v14 _devicePickerDidCreateBonjourEndpoint:v11];
    goto LABEL_9;
  }

  info4 = [(DDDevicePickerClientAction *)self info];
  v10 = [info4 objectForSetting:3];

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