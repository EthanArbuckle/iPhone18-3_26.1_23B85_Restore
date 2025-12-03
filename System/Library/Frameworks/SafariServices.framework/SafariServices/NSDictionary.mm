@interface NSDictionary
- (id)safari_applicationManifestForKey:(void *)key;
- (id)safari_colorForKey:(void *)key;
@end

@implementation NSDictionary

- (id)safari_applicationManifestForKey:(void *)key
{
  if (key)
  {
    v2 = [key objectForKeyedSubscript:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)safari_colorForKey:(void *)key
{
  if (key)
  {
    v2 = [key objectForKeyedSubscript:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end