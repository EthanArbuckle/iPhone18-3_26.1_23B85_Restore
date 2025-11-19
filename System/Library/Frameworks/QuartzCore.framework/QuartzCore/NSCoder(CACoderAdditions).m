@interface NSCoder(CACoderAdditions)
+ (uint64_t)CA_supportedClasses;
- (BOOL)CA_decodeCGFloatArray:()CACoderAdditions count:forKey:;
- (void)CA_decodeObjectForKey:()CACoderAdditions;
- (void)CA_encodeCGFloatArray:()CACoderAdditions count:forKey:;
- (void)CA_encodeObject:()CACoderAdditions forKey:conditional:;
@end

@implementation NSCoder(CACoderAdditions)

+ (uint64_t)CA_supportedClasses
{
  if (+[NSCoder(CACoderAdditions) CA_supportedClasses]::once[0] != -1)
  {
    dispatch_once(+[NSCoder(CACoderAdditions) CA_supportedClasses]::once, &__block_literal_global_420);
  }

  return +[NSCoder(CACoderAdditions) CA_supportedClasses]::set;
}

- (BOOL)CA_decodeCGFloatArray:()CACoderAdditions count:forKey:
{
  v7 = [a1 decodeObjectOfClass:objc_opt_class() forKey:a5];
  if (v7)
  {
    for (i = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v7]; a4; --a4)
    {
      if (([i scanDouble:a3] & 1) == 0)
      {
        *a3 = 0;
      }

      ++a3;
    }
  }

  return v7 != 0;
}

- (void)CA_encodeCGFloatArray:()CACoderAdditions count:forKey:
{
  v7 = CACreateStringWithDoubleArray(a3, a4, 0.000001);
  if (v7)
  {
    v8 = v7;
    [a1 encodeObject:v7 forKey:a5];

    CFRelease(v8);
  }
}

- (void)CA_decodeObjectForKey:()CACoderAdditions
{
  v4 = [a1 decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E696AB10] forKey:{"CA_supportedClasses"), a3}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v4 decodedObject];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [a1 delegate];
        if (objc_opt_respondsToSelector())
        {
          [v5 unarchiver:a1 didDecodeObject:v4];
        }
      }
    }
  }

  return v4;
}

- (void)CA_encodeObject:()CACoderAdditions forKey:conditional:
{
  v8 = [a3 replacementObjectForCoder:a1];
  Proxy = CACodingCreateProxy(a1, v8);
  v13 = Proxy;
  if (Proxy)
  {
    v8 = Proxy;
  }

  Superclass = [(objc_object *)v8 classForKeyedArchiver];
  if (!Superclass)
  {
    Superclass = objc_opt_class();
  }

  if ([Superclass conformsToProtocol:&unk_1EF230DA0])
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [Superclass supportsSecureCoding];
      if (Superclass)
      {
        if (v11)
        {
          while ((___ZL28class_supports_secure_codingP10objc_class_block_invoke(Superclass, sel_initWithCoder_) & 1) == 0)
          {
            Superclass = class_getSuperclass(Superclass);
            if (!Superclass)
            {
              goto LABEL_16;
            }
          }

          Class = object_getClass(Superclass);
          if (___ZL28class_supports_secure_codingP10objc_class_block_invoke(Class, sel_supportsSecureCoding))
          {
            if (a5)
            {
              [(NSCoder *)a1 encodeConditionalObject:v8 forKey:a4];
            }

            else
            {
              [(NSCoder *)a1 encodeObject:v8 forKey:a4];
            }
          }
        }
      }
    }
  }

LABEL_16:
}

@end