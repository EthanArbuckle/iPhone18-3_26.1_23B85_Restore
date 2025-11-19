@interface BESimpleTemplate
+ (id)_appVersionNumber;
+ (id)javascriptStringFromJavascriptSource:(id)a3 replacements:(id)a4;
@end

@implementation BESimpleTemplate

+ (id)_appVersionNumber
{
  if (qword_36AA78 != -1)
  {
    sub_26391C();
  }

  v3 = qword_36AA70;

  return v3;
}

+ (id)javascriptStringFromJavascriptSource:(id)a3 replacements:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v7 objectForKeyedSubscript:@"version"];

  if (!v9)
  {
    v10 = [v7 mutableCopy];
    if (!v10)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
    }

    v11 = [a1 _appVersionNumber];
    [v10 setObject:v11 forKeyedSubscript:@"version"];

    v7 = v10;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [v7 allKeys];
  v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  v23 = v8;
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      v15 = 0;
      v16 = v8;
      do
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v26 + 1) + 8 * v15);
        v18 = [v7 objectForKeyedSubscript:v17];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v25 = 0;
          v20 = [NSJSONSerialization dataWithJSONObject:v18 options:0 error:&v25];
          if ([v20 length])
          {
            v19 = [[NSString alloc] initWithData:v20 encoding:4];
          }

          else
          {
            v19 = &stru_33E120;
          }
        }

        v21 = [NSString stringWithFormat:@"[[__%@__]]", v17];
        v8 = [v16 stringByReplacingOccurrencesOfString:v21 withString:v19];

        v15 = v15 + 1;
        v16 = v8;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  return v8;
}

@end