@interface WFBundledIntentsExtension
- (id)handlerForIntent:(id)a3;
@end

@implementation WFBundledIntentsExtension

- (id)handlerForIntent:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___WFSettingIntent])
  {
    v4 = objc_opt_new();
  }

  else
  {
    if (qword_1000081E0 != -1)
    {
      dispatch_once(&qword_1000081E0, &stru_1000040B0);
    }

    v5 = qword_1000081D8;
    v6 = [v3 identifier];
    v7 = [v5 objectForKeyedSubscript:v6];

    v8 = qword_1000081D8;
    if (v7)
    {
      v9 = [v3 identifier];
      v4 = [v8 objectForKeyedSubscript:v9];
    }

    else
    {
      [qword_1000081D8 removeAllObjects];
      v10 = qword_1000081D8;
      v11 = [v3 identifier];
      if ([v3 _type] == 2)
      {
        v12 = [v3 _codableDescription];
        v13 = [v12 typeName];

        [NSString stringWithFormat:@"WF%@IntentHandler", v13];
      }

      else
      {
        v14 = [v3 _intentInstanceDescription];
        v13 = [v14 name];

        [NSString stringWithFormat:@"WF%@Handler", v13];
      }
      v15 = ;

      v4 = objc_alloc_init(NSClassFromString(v15));
      [v10 setObject:v4 forKeyedSubscript:v11];
    }
  }

  return v4;
}

@end