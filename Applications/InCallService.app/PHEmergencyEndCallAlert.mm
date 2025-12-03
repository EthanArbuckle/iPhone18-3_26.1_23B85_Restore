@interface PHEmergencyEndCallAlert
+ (id)alertWithDialRequest:(id)request dialAction:(id)action title:(id)title buttonTitle:(id)buttonTitle;
- (PHEmergencyEndCallAlert)initWithDialRequest:(id)request dialAction:(id)action title:(id)title buttonTitle:(id)buttonTitle;
- (id)alternateButtonTitle;
- (id)defaultButtonTitle;
- (id)message;
- (id)title;
- (void)alternateResponse;
- (void)defaultResponse;
@end

@implementation PHEmergencyEndCallAlert

+ (id)alertWithDialRequest:(id)request dialAction:(id)action title:(id)title buttonTitle:(id)buttonTitle
{
  buttonTitleCopy = buttonTitle;
  titleCopy = title;
  actionCopy = action;
  requestCopy = request;
  v14 = [[self alloc] initWithDialRequest:requestCopy dialAction:actionCopy title:titleCopy buttonTitle:buttonTitleCopy];

  return v14;
}

- (id)title
{
  alertController = [(PHEmergencyEndCallAlert *)self alertController];
  title = [alertController title];

  return title;
}

- (id)message
{
  alertController = [(PHEmergencyEndCallAlert *)self alertController];
  message = [alertController message];

  return message;
}

- (id)defaultButtonTitle
{
  alertController = [(PHEmergencyEndCallAlert *)self alertController];
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
  alertController = [(PHEmergencyEndCallAlert *)self alertController];
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

- (void)defaultResponse
{
  alertController = [(PHEmergencyEndCallAlert *)self alertController];
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
  alertController = [(PHEmergencyEndCallAlert *)self alertController];
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

- (PHEmergencyEndCallAlert)initWithDialRequest:(id)request dialAction:(id)action title:(id)title buttonTitle:(id)buttonTitle
{
  requestCopy = request;
  actionCopy = action;
  titleCopy = title;
  buttonTitleCopy = buttonTitle;
  v18.receiver = self;
  v18.super_class = PHEmergencyEndCallAlert;
  v14 = [(PHEmergencyEndCallAlert *)&v18 init];
  if (v14)
  {
    v15 = [UIAlertController callEndStewieControllerWithDialRequest:requestCopy dialAction:actionCopy title:titleCopy buttonTitle:buttonTitleCopy];
    alertController = v14->_alertController;
    v14->_alertController = v15;
  }

  return v14;
}

@end