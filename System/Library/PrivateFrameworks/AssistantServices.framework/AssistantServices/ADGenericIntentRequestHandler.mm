@interface ADGenericIntentRequestHandler
- (void)_handleGenericIntentRequest:(id)a3 deliveryHandler:(id)a4 completionHandler:(id)a5;
- (void)handleSiriRequest:(id)a3 deliveryHandler:(id)a4 completionHandler:(id)a5;
@end

@implementation ADGenericIntentRequestHandler

- (void)handleSiriRequest:(id)a3 deliveryHandler:(id)a4 completionHandler:(id)a5
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"ADGenericIntentService.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"[request isKindOfClass:[STGenericIntentRequest class]]"}];
  }

  [(ADGenericIntentRequestHandler *)self _handleGenericIntentRequest:v12 deliveryHandler:v9 completionHandler:v10];
}

- (void)_handleGenericIntentRequest:(id)a3 deliveryHandler:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = +[AFAnalytics sharedAnalytics];
  v11 = [v7 _af_analyticsContextDescription];
  v12 = [v7 appIdentifier];
  v13 = sub_100214CD0(v12);
  [v11 setObject:v13 forKeyedSubscript:AFAnalyticsContextKey[1]];

  [v10 logEventWithType:501 context:v11 contextNoCopy:0];
  v14 = [v7 appIdentifier];
  v15 = [AFSiriTaskmaster taskmasterForUIApplicationWithBundleIdentifier:v14];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100295E3C;
  v19[3] = &unk_100519448;
  v20 = v7;
  v21 = v10;
  v22 = v8;
  v16 = v8;
  v17 = v10;
  v18 = v7;
  [v15 handleSiriRequest:v18 deliveryHandler:v9 completionHandler:v19];
}

@end