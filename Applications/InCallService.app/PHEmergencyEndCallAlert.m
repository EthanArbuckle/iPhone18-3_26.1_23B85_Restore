@interface PHEmergencyEndCallAlert
+ (id)alertWithDialRequest:(id)a3 dialAction:(id)a4 title:(id)a5 buttonTitle:(id)a6;
- (PHEmergencyEndCallAlert)initWithDialRequest:(id)a3 dialAction:(id)a4 title:(id)a5 buttonTitle:(id)a6;
- (id)alternateButtonTitle;
- (id)defaultButtonTitle;
- (id)message;
- (id)title;
- (void)alternateResponse;
- (void)defaultResponse;
@end

@implementation PHEmergencyEndCallAlert

+ (id)alertWithDialRequest:(id)a3 dialAction:(id)a4 title:(id)a5 buttonTitle:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithDialRequest:v13 dialAction:v12 title:v11 buttonTitle:v10];

  return v14;
}

- (id)title
{
  v2 = [(PHEmergencyEndCallAlert *)self alertController];
  v3 = [v2 title];

  return v3;
}

- (id)message
{
  v2 = [(PHEmergencyEndCallAlert *)self alertController];
  v3 = [v2 message];

  return v3;
}

- (id)defaultButtonTitle
{
  v2 = [(PHEmergencyEndCallAlert *)self alertController];
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
  v2 = [(PHEmergencyEndCallAlert *)self alertController];
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

- (void)defaultResponse
{
  v2 = [(PHEmergencyEndCallAlert *)self alertController];
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
  v2 = [(PHEmergencyEndCallAlert *)self alertController];
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

- (PHEmergencyEndCallAlert)initWithDialRequest:(id)a3 dialAction:(id)a4 title:(id)a5 buttonTitle:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = PHEmergencyEndCallAlert;
  v14 = [(PHEmergencyEndCallAlert *)&v18 init];
  if (v14)
  {
    v15 = [UIAlertController callEndStewieControllerWithDialRequest:v10 dialAction:v11 title:v12 buttonTitle:v13];
    alertController = v14->_alertController;
    v14->_alertController = v15;
  }

  return v14;
}

@end