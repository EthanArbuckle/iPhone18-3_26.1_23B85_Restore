@interface SAAppSubscriptions
- (id)_pssSiriSync_anchorValue;
@end

@implementation SAAppSubscriptions

- (id)_pssSiriSync_anchorValue
{
  memset(&c, 0, sizeof(c));
  CC_SHA1_Init(&c);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = [(SAAppSubscriptions *)self activeSubscriptions];
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = [v8 bundleId];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 UTF8String];
          if (v11)
          {
            v12 = v11;
            v13 = strlen(v11);
            CC_SHA1_Update(&c, v12, v13);
          }
        }

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v14 = [v8 subscriptionTiers];
        v15 = [v14 countByEnumeratingWithState:&v25 objects:v37 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v26;
          do
          {
            for (j = 0; j != v16; j = j + 1)
            {
              if (*v26 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v25 + 1) + 8 * j);
              if (v19)
              {
                v20 = [v19 UTF8String];
                if (v20)
                {
                  v21 = v20;
                  v22 = strlen(v20);
                  CC_SHA1_Update(&c, v21, v22);
                }
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v25 objects:v37 count:16];
          }

          while (v16);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v5);
  }

  *md = 0;
  v35 = 0;
  v36 = 0;
  CC_SHA1_Final(md, &c);
  v23 = [NSString hexStringFromBytes:md length:20];

  return v23;
}

@end