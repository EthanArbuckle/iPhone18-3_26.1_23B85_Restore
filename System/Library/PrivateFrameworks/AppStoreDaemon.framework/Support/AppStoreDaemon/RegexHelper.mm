@interface RegexHelper
+ (id)matchURL:(id)a3 toPatterns:(id)a4;
@end

@implementation RegexHelper

+ (id)matchURL:(id)a3 toPatterns:(id)a4
{
  v18 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = a4;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v7 = *v22;
    *&v6 = 138543362;
    v17 = v6;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v20 = 0;
        v10 = [NSRegularExpression regularExpressionWithPattern:v9 options:1 error:&v20, v17];
        v11 = v20;
        if (v11)
        {
          v12 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v26 = v11;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error parsing regex: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          v13 = [v18 absoluteString];
          v14 = [v18 absoluteString];
          v15 = [v10 numberOfMatchesInString:v13 options:2 range:{0, objc_msgSend(v14, "length")}];

          if (v15)
          {
            v5 = v9;

            goto LABEL_15;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v5;
}

@end