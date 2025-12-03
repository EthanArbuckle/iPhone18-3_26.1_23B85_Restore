@interface WFBundledIntentsExtension
- (id)handlerForIntent:(id)intent;
@end

@implementation WFBundledIntentsExtension

- (id)handlerForIntent:(id)intent
{
  intentCopy = intent;
  if ([intentCopy conformsToProtocol:&OBJC_PROTOCOL___WFSettingIntent])
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
    identifier = [intentCopy identifier];
    v7 = [v5 objectForKeyedSubscript:identifier];

    v8 = qword_1000081D8;
    if (v7)
    {
      identifier2 = [intentCopy identifier];
      v4 = [v8 objectForKeyedSubscript:identifier2];
    }

    else
    {
      [qword_1000081D8 removeAllObjects];
      v10 = qword_1000081D8;
      identifier3 = [intentCopy identifier];
      if ([intentCopy _type] == 2)
      {
        _codableDescription = [intentCopy _codableDescription];
        typeName = [_codableDescription typeName];

        [NSString stringWithFormat:@"WF%@IntentHandler", typeName];
      }

      else
      {
        _intentInstanceDescription = [intentCopy _intentInstanceDescription];
        typeName = [_intentInstanceDescription name];

        [NSString stringWithFormat:@"WF%@Handler", typeName];
      }
      v15 = ;

      v4 = objc_alloc_init(NSClassFromString(v15));
      [v10 setObject:v4 forKeyedSubscript:identifier3];
    }
  }

  return v4;
}

@end