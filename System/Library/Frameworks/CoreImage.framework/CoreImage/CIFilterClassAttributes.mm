@interface CIFilterClassAttributes
+ (id)_attributesWithClass:(Class)a3;
+ (id)cache;
+ (id)classAttributesForClass:(Class)a3;
+ (id)classAttributesForName:(id)a3;
+ (void)clearCache;
@end

@implementation CIFilterClassAttributes

+ (id)_attributesWithClass:(Class)a3
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (![(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  CustomAttributes = getCustomAttributes(a3);
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v37 = NSStringFromClass(a3);
  v6 = bundleForCIFilter();
  v35 = [MEMORY[0x1E696AAE8] bundleForClass:a3];
  IsBuiltinFilter = classIsBuiltinFilter(a3);
  if (IsBuiltinFilter)
  {
    IsSystemFilter = 1;
  }

  else
  {
    IsSystemFilter = classIsSystemFilter(a3);
  }

  v8 = [CustomAttributes valueForKey:@"CIAttributeFilterName"];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v37;
  }

  [v5 setValue:v9 forKey:@"CIAttributeFilterName"];
  v10 = [CustomAttributes valueForKey:@"CIAttributeFilterDisplayName"];
  v11 = IsBuiltinFilter ^ 1;
  if (v10)
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v10 = [v6 localizedStringForKey:v37 value:0 table:@"Filters"];
  }

  if (!v10)
  {
    v10 = [v35 localizedStringForKey:v37 value:0 table:@"Filters"];
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v37;
  }

  [v5 setValue:v12 forKey:@"CIAttributeFilterDisplayName"];
  v13 = [CustomAttributes valueForKey:?];
  if (v13)
  {
    [v5 setValue:v13 forKey:@"CIAttributeDescription"];
  }

  v14 = [CIFilterClassCategories classCategoriesForClass:a3];
  if (v14)
  {
    [v5 setValue:v14 forKey:@"CIAttributeFilterCategories"];
  }

  v15 = [CustomAttributes valueForKey:@"CIAttributeFilterAvailable_iOS"];
  if (((v15 != 0) & IsSystemFilter) == 1)
  {
    [v5 setValue:v15 forKey:@"CIAttributeFilterAvailable_iOS"];
  }

  v16 = [CustomAttributes valueForKey:@"CIAttributeFilterAvailable_Mac"];
  if (((v16 != 0) & IsSystemFilter) == 1)
  {
    [v5 setValue:v16 forKey:@"CIAttributeFilterAvailable_Mac"];
  }

  v17 = [CustomAttributes valueForKey:@"CIAttributeReferenceDocumentation"];
  if (((v17 == 0) & IsSystemFilter) == 1)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/%@", v37];
    v17 = [MEMORY[0x1E695DFF8] URLWithString:v18];
  }

  if (v17)
  {
    [v5 setValue:v17 forKey:@"CIAttributeReferenceDocumentation"];
  }

  v19 = [CIFilterClassInfo classInfoForClass:a3];
  if ([objc_msgSend(v19 "inputKeys")])
  {
    v20 = 0;
    v38 = v19;
    v34 = IsBuiltinFilter;
    while (1)
    {
      v21 = [objc_msgSend(v19 "inputKeys")];
      v22 = [MEMORY[0x1E695DF90] dictionary];
      StdAttrsForKey = getStdAttrsForKey(v21);
      if (StdAttrsForKey)
      {
        [v22 addEntriesFromDictionary:StdAttrsForKey];
      }

      v24 = [objc_msgSend(v19 "inputClasses")];
      if ([(__CFString *)v24 length])
      {
        if ([(__CFString *)v24 isEqualToString:@"__WrappedNSNumber"])
        {
          v24 = @"NSNumber";
        }

        [v22 setValue:v24 forKey:@"CIAttributeClass"];
      }

      if (IsBuiltinFilter)
      {
        break;
      }

      v29 = [(NSString *)v21 substringFromIndex:5];
      if ((IsSystemFilter & 1) == 0)
      {
        v27 = v22;
        v28 = v29;
        v31 = @"CIAttributeDisplayName";
        goto LABEL_51;
      }

      [v22 setValue:objc_msgSend(v35 forKey:{"localizedStringForKey:value:table:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@.%@", v37, v21), v29, @"Filters", @"CIAttributeDisplayName"}];
      IsBuiltinFilter = v34;
      v30 = [v35 localizedStringForKey:objc_msgSend(MEMORY[0x1E696AEC0] value:"stringWithFormat:" table:{@"%@.%@.description", v37, v21), 0, @"Filters"}];
      if (v30)
      {
        v28 = v30;
        v27 = v22;
        goto LABEL_49;
      }

LABEL_52:
      v32 = [CustomAttributes valueForKey:v21];
      if (v32)
      {
        [v22 addEntriesFromDictionary:v32];
      }

      [v5 setValue:v22 forKey:v21];
      ++v20;
      v19 = v38;
      if ([objc_msgSend(v38 "inputKeys")] <= v20)
      {
        goto LABEL_55;
      }
    }

    if (![v22 objectForKey:@"CIAttributeType"])
    {
      if ([(__CFString *)v24 isEqual:@"CIColor"])
      {
        [v22 setValue:@"CIAttributeTypeColor" forKey:@"CIAttributeType"];
      }

      if ([(__CFString *)v24 isEqual:@"CIImage"])
      {
        [v22 setValue:@"CIAttributeTypeImage" forKey:@"CIAttributeType"];
      }
    }

    [v22 setValue:objc_msgSend(v6 forKey:{"localizedStringForKey:value:table:", v21, -[NSString substringFromIndex:](v21, "substringFromIndex:", 5), @"Keys", @"CIAttributeDisplayName"}];
    v25 = [v6 localizedStringForKey:v21 value:@"<none>" table:@"Descriptions"];
    v26 = [v6 localizedStringForKey:objc_msgSend(MEMORY[0x1E696AEC0] value:"stringWithFormat:" table:{@"%@.%@", v37, v21), v25, @"Descriptions"}];
    if ([v26 isEqual:@"<none>"])
    {
      goto LABEL_52;
    }

    v27 = v22;
    v28 = v26;
LABEL_49:
    v31 = @"CIAttributeDescription";
LABEL_51:
    [v27 setValue:v28 forKey:v31];
    goto LABEL_52;
  }

LABEL_55:
  if ((IsSystemFilter & 1) != 0 && ![v5 valueForKey:@"CIAttributeFilterCategories"])
  {
    v39[0] = @"CICategoryApplePrivate";
    [v5 setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v39, 1), @"CIAttributeFilterCategories"}];
  }

  return v5;
}

+ (id)cache
{
  if (+[CIFilterClassAttributes cache]::onceToken != -1)
  {
    +[CIFilterClassAttributes cache];
  }

  return +[CIFilterClassAttributes cache]::cache;
}

uint64_t __32__CIFilterClassAttributes_cache__block_invoke()
{
  +[CIFilterClassAttributes cache]::cache = objc_alloc_init(MEMORY[0x1E695DEE0]);
  [+[CIFilterClassAttributes cache]::cache setName:@"com.apple.coreimage.nscache.CIFilterClassAttributes"];
  [+[CIFilterClassAttributes cache]::cache setCountLimit:256];
  v0 = +[CIFilterClassAttributes cache]::cache;

  return [v0 setEvictsObjectsWhenApplicationEntersBackground:1];
}

+ (void)clearCache
{
  v2 = [a1 cache];

  [v2 removeAllObjects];
}

+ (id)classAttributesForClass:(Class)a3
{
  v4 = [a1 cache];
  v5 = objc_opt_class();
  if (![(objc_class *)a3 isSubclassOfClass:v5])
  {
    return 0;
  }

  if (v5 == a3)
  {
    return MEMORY[0x1E695E0F8];
  }

  v6 = [v4 objectForKey:a3];
  if (!v6)
  {
    v6 = [CIFilterClassAttributes _attributesWithClass:a3];
    [v4 setObject:v6 forKey:a3];
  }

  return v6;
}

+ (id)classAttributesForName:(id)a3
{
  v4 = NSClassFromString(a3);

  return [a1 classAttributesForClass:v4];
}

@end