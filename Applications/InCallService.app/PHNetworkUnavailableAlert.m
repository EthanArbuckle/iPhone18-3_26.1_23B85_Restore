@interface PHNetworkUnavailableAlert
+ (id)alertWithCallProvider:(id)a3 dialType:(int64_t)a4 senderIdentityUUID:(id)a5;
- (PHNetworkUnavailableAlert)initWithCallProvider:(id)a3 dialType:(int64_t)a4 senderIdentityUUID:(id)a5;
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

+ (id)alertWithCallProvider:(id)a3 dialType:(int64_t)a4 senderIdentityUUID:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithCallProvider:v9 dialType:a4 senderIdentityUUID:v8];

  return v10;
}

- (id)title
{
  v2 = [(PHNetworkUnavailableAlert *)self alertController];
  v3 = [v2 title];

  return v3;
}

- (id)message
{
  v2 = [(PHNetworkUnavailableAlert *)self alertController];
  v3 = [v2 message];

  return v3;
}

- (id)defaultButtonTitle
{
  v2 = [(PHNetworkUnavailableAlert *)self alertController];
  v3 = [v2 actions];

  if ([v3 count])
  {
    v4 = [v3 lastObject];
    v5 = [v4 title];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)alternateButtonTitle
{
  v2 = [(PHNetworkUnavailableAlert *)self alertController];
  v3 = [v2 actions];

  if ([v3 count] < 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = [v3 firstObject];
    v5 = [v4 title];
  }

  return v5;
}

- (id)otherButtonTitle
{
  v2 = [(PHNetworkUnavailableAlert *)self alertController];
  v3 = [v2 actions];

  if ([v3 count] < 3)
  {
    v5 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndex:1];
    v5 = [v4 title];
  }

  return v5;
}

- (void)defaultResponse
{
  v3 = [(PHNetworkUnavailableAlert *)self alertController];
  v6 = [v3 actions];

  if ([v6 count])
  {
    v4 = [v6 lastObject];
    v5 = [v4 handler];

    if (v5)
    {
      v5[2](v5, 0);
    }
  }

  [(PHNetworkUnavailableAlert *)self handleAlertDidFinish];
}

- (void)alternateResponse
{
  v3 = [(PHNetworkUnavailableAlert *)self alertController];
  v6 = [v3 actions];

  if ([v6 count] >= 2)
  {
    v4 = [v6 firstObject];
    v5 = [v4 handler];

    if (v5)
    {
      v5[2](v5, 0);
    }
  }

  [(PHNetworkUnavailableAlert *)self handleAlertDidFinish];
}

- (void)otherResponse
{
  v3 = [(PHNetworkUnavailableAlert *)self alertController];
  v6 = [v3 actions];

  if ([v6 count] >= 3)
  {
    v4 = [v6 objectAtIndex:1];
    v5 = [v4 handler];

    if (v5)
    {
      v5[2](v5, 0);
    }
  }

  [(PHNetworkUnavailableAlert *)self handleAlertDidFinish];
}

- (void)handleAlertDidFinish
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"PHNetworkUnavailableAlertDidFinishNotification" object:0];
}

- (PHNetworkUnavailableAlert)initWithCallProvider:(id)a3 dialType:(int64_t)a4 senderIdentityUUID:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = PHNetworkUnavailableAlert;
  v10 = [(PHNetworkUnavailableAlert *)&v14 init];
  if (v10)
  {
    v11 = [UIAlertController networkUnavailableAlertControllerWithCallProvider:v8 dialType:a4 senderIdentityUUID:v9];
    alertController = v10->_alertController;
    v10->_alertController = v11;
  }

  return v10;
}

@end