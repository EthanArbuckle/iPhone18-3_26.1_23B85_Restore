@interface ADSettingsRequestHandler
- (void)handleSiriRequest:(id)a3 deliveryHandler:(id)a4 completionHandler:(id)a5;
@end

@implementation ADSettingsRequestHandler

- (void)handleSiriRequest:(id)a3 deliveryHandler:(id)a4 completionHandler:(id)a5
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  if (v12)
  {
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = +[NSAssertionHandler currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"ADSettingsRequestHandler.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"request"}];

  if (v9)
  {
LABEL_3:
    v9[2](v9);
  }

LABEL_4:
  [v12 _ad_handleSettingsRequestWithCompletionHandler:v10];
}

@end