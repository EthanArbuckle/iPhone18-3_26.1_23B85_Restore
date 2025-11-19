@interface PHTelephonyAccountUnavailableAlert
- (PHTelephonyAccountUnavailableAlert)initWithSenderIdentities:(id)a3 completion:(id)a4;
- (id)alternateButtonTitle;
- (id)defaultButtonTitle;
- (id)message;
- (id)otherButtonTitle;
- (id)title;
- (void)alternateResponse;
- (void)defaultResponse;
- (void)otherResponse;
@end

@implementation PHTelephonyAccountUnavailableAlert

- (PHTelephonyAccountUnavailableAlert)initWithSenderIdentities:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PHTelephonyAccountUnavailableAlert;
  v8 = [(PHTelephonyAccountUnavailableAlert *)&v12 init];
  if (v8)
  {
    v9 = [UIAlertController telephonyAccountUnavailableAlertControllerWithSenderIdentities:v6 preferredStyle:1 completion:v7];
    alertController = v8->_alertController;
    v8->_alertController = v9;
  }

  return v8;
}

- (id)title
{
  v2 = [(PHTelephonyAccountUnavailableAlert *)self alertController];
  v3 = [v2 title];

  return v3;
}

- (id)message
{
  v2 = [(PHTelephonyAccountUnavailableAlert *)self alertController];
  v3 = [v2 message];

  return v3;
}

- (id)defaultButtonTitle
{
  v2 = [(PHTelephonyAccountUnavailableAlert *)self alertController];
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
  v2 = [(PHTelephonyAccountUnavailableAlert *)self alertController];
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
  v2 = [(PHTelephonyAccountUnavailableAlert *)self alertController];
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
  v2 = [(PHTelephonyAccountUnavailableAlert *)self alertController];
  v5 = [v2 actions];

  if ([v5 count])
  {
    v3 = [v5 lastObject];
    v4 = [v3 handler];

    if (v4)
    {
      v4[2](v4, 0);
    }
  }
}

- (void)alternateResponse
{
  v2 = [(PHTelephonyAccountUnavailableAlert *)self alertController];
  v5 = [v2 actions];

  if ([v5 count] >= 2)
  {
    v3 = [v5 firstObject];
    v4 = [v3 handler];

    if (v4)
    {
      v4[2](v4, 0);
    }
  }
}

- (void)otherResponse
{
  v2 = [(PHTelephonyAccountUnavailableAlert *)self alertController];
  v5 = [v2 actions];

  if ([v5 count] >= 3)
  {
    v3 = [v5 objectAtIndex:1];
    v4 = [v3 handler];

    if (v4)
    {
      v4[2](v4, 0);
    }
  }
}

@end