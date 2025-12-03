@interface PHTelephonyAccountUnavailableAlert
- (PHTelephonyAccountUnavailableAlert)initWithSenderIdentities:(id)identities completion:(id)completion;
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

- (PHTelephonyAccountUnavailableAlert)initWithSenderIdentities:(id)identities completion:(id)completion
{
  identitiesCopy = identities;
  completionCopy = completion;
  v12.receiver = self;
  v12.super_class = PHTelephonyAccountUnavailableAlert;
  v8 = [(PHTelephonyAccountUnavailableAlert *)&v12 init];
  if (v8)
  {
    v9 = [UIAlertController telephonyAccountUnavailableAlertControllerWithSenderIdentities:identitiesCopy preferredStyle:1 completion:completionCopy];
    alertController = v8->_alertController;
    v8->_alertController = v9;
  }

  return v8;
}

- (id)title
{
  alertController = [(PHTelephonyAccountUnavailableAlert *)self alertController];
  title = [alertController title];

  return title;
}

- (id)message
{
  alertController = [(PHTelephonyAccountUnavailableAlert *)self alertController];
  message = [alertController message];

  return message;
}

- (id)defaultButtonTitle
{
  alertController = [(PHTelephonyAccountUnavailableAlert *)self alertController];
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
  alertController = [(PHTelephonyAccountUnavailableAlert *)self alertController];
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
  alertController = [(PHTelephonyAccountUnavailableAlert *)self alertController];
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
  alertController = [(PHTelephonyAccountUnavailableAlert *)self alertController];
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
}

- (void)alternateResponse
{
  alertController = [(PHTelephonyAccountUnavailableAlert *)self alertController];
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
}

- (void)otherResponse
{
  alertController = [(PHTelephonyAccountUnavailableAlert *)self alertController];
  actions = [alertController actions];

  if ([actions count] >= 3)
  {
    v3 = [actions objectAtIndex:1];
    handler = [v3 handler];

    if (handler)
    {
      handler[2](handler, 0);
    }
  }
}

@end