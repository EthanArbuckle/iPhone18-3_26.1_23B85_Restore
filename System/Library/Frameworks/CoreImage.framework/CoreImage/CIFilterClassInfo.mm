@interface CIFilterClassInfo
+ (id)cache;
+ (id)classInfoForClass:(Class)a3;
+ (void)clearCache;
- (CIFilterClassInfo)initWithClass:(Class)a3;
- (void)dealloc;
@end

@implementation CIFilterClassInfo

+ (id)cache
{
  if (+[CIFilterClassInfo cache]::onceToken != -1)
  {
    +[CIFilterClassInfo cache];
  }

  return +[CIFilterClassInfo cache]::cache;
}

uint64_t __26__CIFilterClassInfo_cache__block_invoke()
{
  +[CIFilterClassInfo cache]::cache = objc_alloc_init(MEMORY[0x1E695DEE0]);
  [+[CIFilterClassInfo cache]::cache setName:@"com.apple.coreimage.nscache.CIFilterClassInfo"];
  [+[CIFilterClassInfo cache]::cache setCountLimit:256];
  v0 = +[CIFilterClassInfo cache]::cache;

  return [v0 setEvictsObjectsWhenApplicationEntersBackground:1];
}

+ (void)clearCache
{
  v2 = [a1 cache];

  [v2 removeAllObjects];
}

+ (id)classInfoForClass:(Class)a3
{
  v5 = [a1 cache];
  v6 = objc_opt_class();
  v7 = [(objc_class *)a3 isSubclassOfClass:v6];
  if (v6 == a3 || v7 == 0)
  {
    return 0;
  }

  v10 = [v5 objectForKey:a3];
  v9 = v10;
  if (!v10)
  {
    v9 = [[a1 alloc] initWithClass:a3];
    [v5 setObject:v9 forKey:a3];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CIFilterClassInfo;
  [(CIFilterClassInfo *)&v3 dealloc];
}

- (CIFilterClassInfo)initWithClass:(Class)a3
{
  if (!a3)
  {

    return 0;
  }

  v3 = a3;
  v58.receiver = self;
  v58.super_class = CIFilterClassInfo;
  v4 = [(CIFilterClassInfo *)&v58 init];
  if (!v4)
  {
    return v4;
  }

  v5 = objc_opt_class();
  if (([(objc_class *)v3 isSubclassOfClass:v5]& 1) == 0)
  {

    return 0;
  }

  v54 = v5;
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  outCount = 0;
  v9 = class_copyIvarList(v3, &outCount);
  v55 = v3;
  v56 = v8;
  if (v9)
  {
    v10 = v9;
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        Name = ivar_getName(v10[i]);
        if (Name)
        {
          v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
        }

        else
        {
          v13 = &stru_1F1040378;
        }

        if ([(__CFString *)v13 length]>= 6 && [(__CFString *)v13 hasPrefix:@"input"])
        {
          TypeEncoding = ivar_getTypeEncoding(v10[i]);
          if (TypeEncoding)
          {
            v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:TypeEncoding];
          }

          else
          {
            v15 = &stru_1F1040378;
          }

          v16 = classNameFromTypeEncoding(v15);
          [v6 addObject:v13];
          if (v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = &stru_1F1040378;
          }

          [v7 addObject:v17];
          v8 = v56;
        }
      }
    }

    free(v10);
  }

  v18 = class_copyPropertyList(v3, &outCount);
  if (v18)
  {
    v19 = v18;
    v52 = v4;
    v53 = v7;
    if (outCount)
    {
      for (j = 0; j < outCount; ++j)
      {
        v21 = property_getName(v19[j]);
        if (v21)
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v21];
        }

        else
        {
          v22 = &stru_1F1040378;
        }

        if ([(__CFString *)v22 length]>= 6)
        {
          if ([(__CFString *)v22 hasPrefix:@"input"])
          {
            v23 = v19[j];
            v59 = 0;
            v24 = property_copyAttributeList(v23, &v59);
            if (v24)
            {
              if (v59)
              {
                v25 = v24;
                v26 = 0;
                p_value = &v24->value;
                while (1)
                {
                  v28 = *p_value;
                  v29 = *(p_value - 1) ? [MEMORY[0x1E696AEC0] stringWithUTF8String:?] : &stru_1F1040378;
                  if ([(__CFString *)v29 isEqualToString:@"T"])
                  {
                    break;
                  }

                  ++v26;
                  p_value += 2;
                  if (v26 >= v59)
                  {
                    free(v25);
                    goto LABEL_46;
                  }
                }

                if (v28)
                {
                  v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v28];
                }

                else
                {
                  v30 = &stru_1F1040378;
                }

                v31 = classNameFromTypeEncoding(v30);
                free(v25);
                if (v31)
                {
                  v32 = [v6 indexOfObject:v22];
                  if (v32 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    [v6 addObject:v22];
                    [v53 addObject:v31];
                  }

                  else
                  {
                    v33 = v32;
                    if (![objc_msgSend(v53 objectAtIndexedSubscript:{v32), "length"}])
                    {
                      [v53 setObject:v31 atIndexedSubscript:v33];
                    }
                  }
                }
              }
            }
          }
        }

LABEL_46:
        ;
      }
    }

    free(v19);
    v4 = v52;
    v7 = v53;
    v3 = v55;
    v8 = v56;
  }

  if ([v6 count])
  {
    v34 = 0;
    do
    {
      [objc_msgSend(v7 objectAtIndexedSubscript:{v34++), "length"}];
    }

    while (v34 < [v6 count]);
  }

  v35 = class_copyMethodList(v3, &outCount);
  if (v35)
  {
    v36 = v35;
    if (outCount)
    {
      for (k = 0; k < outCount; ++k)
      {
        v38 = method_getName(v36[k]);
        v39 = sel_getName(v38);
        if (v39)
        {
          v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v39];
        }

        else
        {
          v40 = &stru_1F1040378;
        }

        if ([(__CFString *)v40 length]>= 7 && [(__CFString *)v40 hasPrefix:@"output"])
        {
          [v8 addObject:v40];
        }
      }
    }

    free(v36);
    v3 = v55;
  }

  v41 = [(objc_class *)v3 superclass];
  v42 = [v41 isSubclassOfClass:v54];
  if (v41 != v54 && v42)
  {
    v43 = [CIFilterClassInfo classInfoForClass:v41];
    if ([objc_msgSend(v43 "inputKeys")])
    {
      v44 = [objc_msgSend(v43 "inputKeys")];
      if (v44)
      {
        v45 = v44 - 1;
        do
        {
          v46 = [objc_msgSend(v43 "inputKeys")];
          v47 = [objc_msgSend(v43 "inputClasses")];
          if (([v6 containsObject:v46] & 1) == 0)
          {
            [v6 insertObject:v46 atIndex:0];
            [v7 insertObject:v47 atIndex:0];
          }

          --v45;
        }

        while (v45 != -1);
      }
    }

    if ([objc_msgSend(v43 "outputKeys")])
    {
      v48 = [objc_msgSend(v43 "outputKeys")];
      if (v48)
      {
        v49 = v48 - 1;
        do
        {
          v50 = [objc_msgSend(v43 "outputKeys")];
          if (([v8 containsObject:v50] & 1) == 0)
          {
            [v8 insertObject:v50 atIndex:0];
          }

          --v49;
        }

        while (v49 != -1);
      }
    }
  }

  v4->inputKeys = [v6 copy];
  v4->inputClasses = [v7 copy];
  v4->outputKeys = [v8 copy];
  return v4;
}

@end