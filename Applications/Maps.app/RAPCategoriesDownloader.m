@interface RAPCategoriesDownloader
+ (id)adjustedPreferredLanguages;
+ (id)preferredTranslationInTitles:(id)a3 givenPreferredLanguagesList:(id)a4;
+ (void)fetchCategories:(id)a3;
@end

@implementation RAPCategoriesDownloader

+ (id)preferredTranslationInTitles:(id)a3 givenPreferredLanguagesList:(id)a4
{
  v5 = a3;
  v6 = a4;
  v32 = v5;
  if ([v6 count])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v42;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v41 + 1) + 8 * i);
          v13 = [v12 objectForKeyedSubscript:@"language"];
          v14 = [v6 objectAtIndexedSubscript:0];
          v15 = [v13 isEqualToString:v14];

          if (v15)
          {
            v30 = [v12 objectForKeyedSubscript:@"value"];
            goto LABEL_29;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v41 objects:v47 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v5 = v32;
  }

  v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v5 count]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = v5;
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v37 + 1) + 8 * j);
        v22 = [v21 objectForKeyedSubscript:@"value"];
        v23 = [v21 objectForKeyedSubscript:@"language"];
        [v7 setValue:v22 forKey:v23];
      }

      v18 = [v16 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v18);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v24 = v6;
  v25 = [v24 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v34;
LABEL_20:
    v28 = 0;
    while (1)
    {
      if (*v34 != v27)
      {
        objc_enumerationMutation(v24);
      }

      v29 = [v7 objectForKeyedSubscript:*(*(&v33 + 1) + 8 * v28)];
      if (v29)
      {
        break;
      }

      if (v26 == ++v28)
      {
        v26 = [v24 countByEnumeratingWithState:&v33 objects:v45 count:16];
        if (v26)
        {
          goto LABEL_20;
        }

        goto LABEL_26;
      }
    }
  }

  else
  {
LABEL_26:

    v24 = [v16 firstObject];
    v29 = [v24 objectForKeyedSubscript:@"value"];
  }

  v30 = v29;

LABEL_29:

  return v30;
}

+ (id)adjustedPreferredLanguages
{
  v2 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = +[NSLocale preferredLanguages];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [[NSLocale alloc] initWithLocaleIdentifier:v8];
        v10 = [v9 objectForKey:NSLocaleLanguageCode];
        if (([v10 isEqualToString:v8] & 1) == 0)
        {
          [v2 addObject:v8];
          v11 = [v8 hasPrefix:@"zh-Hant"];
          v12 = @"zh-TW";
          if ((v11 & 1) != 0 || (v13 = [v8 hasPrefix:@"zh-Hans"], v12 = @"zh-CN", v13))
          {
            [v2 addObject:v12];
          }
        }

        if (([v2 containsObject:v10] & 1) == 0)
        {
          [v2 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v14 = [v2 copy];

  return v14;
}

+ (void)fetchCategories:(id)a3
{
  v4 = a3;
  v5 = GEOURLString();
  v6 = [NSURL URLWithString:v5];

  v7 = [NSURLRequest requestWithURL:v6];
  v8 = +[NSURLSession sharedSession];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10087F178;
  v14 = &unk_10162C8C0;
  v15 = v4;
  v16 = a1;
  v9 = v4;
  v10 = [v8 dataTaskWithRequest:v7 completionHandler:&v11];
  [v10 resume];
}

@end