@interface FMDExtHelper
+ (id)_computehash:(id)a3;
+ (id)deviceIDFromAddress:(id)a3;
+ (id)parseStyle:(unint64_t)a3 info:(id)a4;
@end

@implementation FMDExtHelper

+ (id)deviceIDFromAddress:(id)a3
{
  v3 = [NSString stringWithFormat:@"BT_%@", a3];
  v4 = [FMDExtHelper _computehash:v3];

  return v4;
}

+ (id)_computehash:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
  v4 = [v3 fm_sha256Hash];
  v5 = [v4 fm_hexString];
  v6 = [v5 lowercaseString];

  return v6;
}

+ (id)parseStyle:(unint64_t)a3 info:(id)a4
{
  v5 = a4;
  v6 = sub_100001508();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v32 = a3;
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#PARSING style %llu with feature %@", buf, 0x16u);
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v22 = 0;
    goto LABEL_34;
  }

  v7 = [v5 objectForKeyedSubscript:@"pattern"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v5 objectForKeyedSubscript:@"mask"];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v5;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v8 = v8;
        v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v27;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v27 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v26 + 1) + 8 * i);
              v14 = [v8 objectForKeyedSubscript:v13];
              v15 = v14;
              if (v14)
              {
                v16 = strtouq([v14 UTF8String], 0, 16);
                v17 = a3;
                if (v16)
                {
                  v18 = (v16 & 1) == 0;
                }

                else
                {
                  v18 = 0;
                }

                if (v18)
                {
                  do
                  {
                    v19 = v16;
                    v16 >>= 1;
                    v17 >>= 1;
                  }

                  while (v19 && (v19 & 2) == 0);
                }

                v20 = [NSString stringWithFormat:@"%llu", v17 & v16];
                v21 = [v7 stringByReplacingOccurrencesOfString:v13 withString:v20];

                v7 = v21;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
          }

          while (v10);
        }

        v7 = v7;
        v22 = v7;
        v5 = v25;
        goto LABEL_33;
      }
    }

    v23 = sub_100001508();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100015434(v5, v23);
    }
  }

  else
  {
    v8 = sub_100001508();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000154AC(v5, v8);
    }
  }

  v22 = 0;
LABEL_33:

LABEL_34:

  return v22;
}

@end