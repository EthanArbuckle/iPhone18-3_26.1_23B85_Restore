@interface NSCoder(Photos)
- (id)ph_decodeSandboxedURLForKey:()Photos sandboxExtensionWrapper:;
- (void)ph_encodeSandboxedURL:()Photos forKey:;
@end

@implementation NSCoder(Photos)

- (id)ph_decodeSandboxedURLForKey:()Photos sandboxExtensionWrapper:
{
  v6 = a3;
  v7 = [self decodeObjectOfClass:objc_opt_class() forKey:v6];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [self _ph_sandboxExtensionTokenKeyForURLKey:v6];
  v9 = [self decodeObjectOfClass:objc_opt_class() forKey:v8];
  v10 = [PHSandboxExtensionWrapper wrapperWithToken:v9];

  if (a4)
  {
LABEL_5:
    v11 = v10;
    *a4 = v10;
  }

LABEL_6:

  return v7;
}

- (void)ph_encodeSandboxedURL:()Photos forKey:
{
  v10 = a3;
  v6 = a4;
  [self encodeObject:v10 forKey:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v10 isFileURL])
    {
      path = [v10 path];
      v8 = PLGetSandboxExtensionToken();
    }

    else
    {
      v8 = 0;
    }

    v9 = [self _ph_sandboxExtensionTokenKeyForURLKey:v6];
    [self encodeObject:v8 forKey:v9];
  }
}

@end