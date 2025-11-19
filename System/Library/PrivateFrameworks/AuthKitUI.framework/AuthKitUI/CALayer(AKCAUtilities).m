@interface CALayer(AKCAUtilities)
- (id)_ak_nextAdditiveAnimationKeyWithKeyPath:()AKCAUtilities;
- (id)ak_addAdditiveAnimation:()AKCAUtilities;
- (id)ak_addAdditiveAnimation:()AKCAUtilities withKeyPath:;
- (id)ak_additiveAnimationKeyPrefixForKeyPath:()AKCAUtilities;
@end

@implementation CALayer(AKCAUtilities)

- (id)ak_additiveAnimationKeyPrefixForKeyPath:()AKCAUtilities
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v6 = 0;
  if ([location[0] length])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.AuthenticationServices.additive", location[0]];
    v6 = 1;
    v3 = MEMORY[0x277D82BE0](v7);
  }

  else
  {
    v3 = MEMORY[0x277D82BE0](@"com.apple.AuthenticationServices.additive");
  }

  v9 = v3;
  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(location, 0);
  v4 = v9;

  return v4;
}

- (id)ak_addAdditiveAnimation:()AKCAUtilities
{
  v6 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v4 = [v6 ak_addAdditiveAnimation:location[0] withKeyPath:0];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)ak_addAdditiveAnimation:()AKCAUtilities withKeyPath:
{
  v12 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  if (location[0])
  {
    v4 = [v12 _ak_nextAdditiveAnimationKeyWithKeyPath:v10];
    v5 = v9;
    v9 = v4;
    MEMORY[0x277D82BD8](v5);
    [v12 addAnimation:location[0] forKey:v9];
  }

  v7 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)_ak_nextAdditiveAnimationKeyWithKeyPath:()AKCAUtilities
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v13 = objc_getAssociatedObject(v24, AdditiveAnimationKeyPrefix);
  v14 = [v13 unsignedIntegerValue];
  MEMORY[0x277D82BD8](v13);
  v22 = v14;
  v21 = 0;
  memset(__b, 0, sizeof(__b));
  obja = [v24 animationKeys];
  v16 = [obja countByEnumeratingWithState:__b objects:v25 count:16];
  if (v16)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v16;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(obja);
      }

      v20 = *(__b[1] + 8 * v11);
      if ([v20 hasPrefix:@"com.apple.AuthenticationServices.additive"])
      {
        break;
      }

      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [obja countByEnumeratingWithState:__b objects:v25 count:16];
        if (!v12)
        {
          goto LABEL_9;
        }
      }
    }

    v21 = 1;
    v18 = 2;
  }

  else
  {
LABEL_9:
    v18 = 0;
  }

  MEMORY[0x277D82BD8](obja);
  if ((v21 & 1) == 0)
  {
    v22 = 0;
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [v24 ak_additiveAnimationKeyPrefixForKeyPath:location[0]];
  v17 = [v4 stringWithFormat:@"%@.%lu", v5, v22];
  MEMORY[0x277D82BD8](v5);
  ++v22;
  object = v24;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
  objc_setAssociatedObject(object, AdditiveAnimationKeyPrefix, v7, 0x303);
  MEMORY[0x277D82BD8](v7);
  v8 = MEMORY[0x277D82BE0](v17);
  v18 = 1;
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v8;
}

@end