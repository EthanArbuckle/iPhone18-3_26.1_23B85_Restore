@interface UIApplication
- (BOOL)tvSettings_isNonLightningAVAdapterConnected;
@end

@implementation UIApplication

- (BOOL)tvSettings_isNonLightningAVAdapterConnected
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  connectedScenes = [(UIApplication *)self connectedScenes];
  v3 = [connectedScenes countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(connectedScenes);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) tvSettings_isNonLightningSecondScreenScene];
      }

      v4 = [connectedScenes countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

@end