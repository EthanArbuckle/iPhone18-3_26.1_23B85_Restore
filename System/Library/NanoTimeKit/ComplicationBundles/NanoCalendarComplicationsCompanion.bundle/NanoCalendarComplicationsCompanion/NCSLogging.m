@interface NCSLogging
+ (id)nanoPrivacyAwareDescriptionForCollection:(id)a3 expectedClass:(Class)a4;
@end

@implementation NCSLogging

+ (id)nanoPrivacyAwareDescriptionForCollection:(id)a3 expectedClass:(Class)a4
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableString);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v12 nanoPrivacyAwareDescription];
          [v5 appendFormat:@"  <%@>, \n", v14];

          ++v9;
        }

        objc_autoreleasePoolPop(v13);
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v15 = [NSString stringWithFormat:@"<%tu> [\n%@\n]", v9, v5, v17];

  return v15;
}

@end