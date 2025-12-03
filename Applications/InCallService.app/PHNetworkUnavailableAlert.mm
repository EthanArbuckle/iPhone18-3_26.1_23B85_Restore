@interface PHNetworkUnavailableAlert
+ (id)alertWithCallProvider:(id)provider dialType:(int64_t)type senderIdentityUUID:(id)d;
- (PHNetworkUnavailableAlert)initWithCallProvider:(id)provider dialType:(int64_t)type senderIdentityUUID:(id)d;
- (id)alternateButtonTitle;
- (id)defaultButtonTitle;
- (id)message;
- (id)otherButtonTitle;
- (id)title;
- (void)alternateResponse;
- (void)defaultResponse;
- (void)handleAlertDidFinish;
- (void)otherResponse;
@end

@implementation PHNetworkUnavailableAlert

+ (id)alertWithCallProvider:(id)provider dialType:(int64_t)type senderIdentityUUID:(id)d
{
  dCopy = d;
  providerCopy = provider;
  v10 = [[self alloc] initWithCallProvider:providerCopy dialType:type senderIdentityUUID:dCopy];

  return v10;
}

- (id)title
{
  alertController = [(PHNetworkUnavailableAlert *)self alertController];
  title = [alertController title];

  return title;
}

- (id)message
{
  alertController = [(PHNetworkUnavailableAlert *)self alertController];
  message = [alertController message];

  return message;
}

- (id)defaultButtonTitle
{
  alertController = [(PHNetworkUnavailableAlert *)self alertController];
  actions = [alertController actions];

  if ([actions count])
  {
    lastObject = [actions lastObject];
    title = [lastObject title];
  }

  else
  {
    title = 0;
  }

  return title;
}

- (id)alternateButtonTitle
{
  alertController = [(PHNetworkUnavailableAlert *)self alertController];
  actions = [alertController actions];

  if ([actions count] < 2)
  {
    title = 0;
  }

  else
  {
    firstObject = [actions firstObject];
    title = [firstObject title];
  }

  return title;
}

- (id)otherButtonTitle
{
  alertController = [(PHNetworkUnavailableAlert *)self alertController];
  actions = [alertController actions];

  if ([actions count] < 3)
  {
    title = 0;
  }

  else
  {
    v4 = [actions objectAtIndex:1];
    title = [v4 title];
  }

  return title;
}

- (void)defaultResponse
{
  alertController = [(PHNetworkUnavailableAlert *)self alertController];
  actions = [alertController actions];

  if ([actions count])
  {
    lastObject = [actions lastObject];
    handler = [lastObject handler];

    if (handler)
    {
      handler[2](handler, 0);
    }
  }

  [(PHNetworkUnavailableAlert *)self handleAlertDidFinish];
}

- (void)alternateResponse
{
  alertController = [(PHNetworkUnavailableAlert *)self alertController];
  actions = [alertController actions];

  if ([actions count] >= 2)
  {
    firstObject = [actions firstObject];
    handler = [firstObject handler];

    if (handler)
    {
      handler[2](handler, 0);
    }
  }

  [(PHNetworkUnavailableAlert *)self handleAlertDidFinish];
}

- (void)otherResponse
{
  alertController = [(PHNetworkUnavailableAlert *)self alertController];
  actions = [alertController actions];

  if ([actions count] >= 3)
  {
    v4 = [actions objectAtIndex:1];
    handler = [v4 handler];

    if (handler)
    {
      handler[2](handler, 0);
    }
  }

  [(PHNetworkUnavailableAlert *)self handleAlertDidFinish];
}

- (void)handleAlertDidFinish
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"PHNetworkUnavailableAlertDidFinishNotification" object:0];
}

- (PHNetworkUnavailableAlert)initWithCallProvider:(id)provider dialType:(int64_t)type senderIdentityUUID:(id)d
{
  providerCopy = provider;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = PHNetworkUnavailableAlert;
  v10 = [(PHNetworkUnavailableAlert *)&v14 init];
  if (v10)
  {
    v11 = [UIAlertController networkUnavailableAlertControllerWithCallProvider:providerCopy dialType:type senderIdentityUUID:dCopy];
    alertController = v10->_alertController;
    v10->_alertController = v11;
  }

  return v10;
}

@end