@interface FBSSceneSettings(ExtensionKitAdditions)
- (void)ex_role;
@end

@implementation FBSSceneSettings(ExtensionKitAdditions)

- (void)ex_role
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:20211529];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *MEMORY[0x1E6966D28];
  }

  v8 = v7;

  return v7;
}

@end