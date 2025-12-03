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
  activeSubscriptions = [(SAAppSubscriptions *)self activeSubscriptions];
  v4 = [activeSubscriptions countByEnumeratingWithState:&v29 objects:v38 count:16];
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
          objc_enumerationMutation(activeSubscriptions);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        bundleId = [v8 bundleId];
        v10 = bundleId;
        if (bundleId)
        {
          uTF8String = [bundleId UTF8String];
          if (uTF8String)
          {
            v12 = uTF8String;
            v13 = strlen(uTF8String);
            CC_SHA1_Update(&c, v12, v13);
          }
        }

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        subscriptionTiers = [v8 subscriptionTiers];
        v15 = [subscriptionTiers countByEnumeratingWithState:&v25 objects:v37 count:16];
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
                objc_enumerationMutation(subscriptionTiers);
              }

              v19 = *(*(&v25 + 1) + 8 * j);
              if (v19)
              {
                uTF8String2 = [v19 UTF8String];
                if (uTF8String2)
                {
                  v21 = uTF8String2;
                  v22 = strlen(uTF8String2);
                  CC_SHA1_Update(&c, v21, v22);
                }
              }
            }

            v16 = [subscriptionTiers countByEnumeratingWithState:&v25 objects:v37 count:16];
          }

          while (v16);
        }
      }

      v5 = [activeSubscriptions countByEnumeratingWithState:&v29 objects:v38 count:16];
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