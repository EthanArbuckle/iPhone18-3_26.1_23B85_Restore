@interface CRLWPFallbackFontList
+ (id)sharedInstance;
- (BOOL)isMasqueradingFontName:(id)a3;
- (CRLWPFallbackFontList)init;
- (CRLWPFallbackFontList)initWithList:(id)a3;
- (NSSet)replaceableFontNames;
- (id)fallbackFontNameForFontWithName:(id)a3;
- (id)fallbackListForPostscriptFontName:(id)a3;
- (id)localizedNameForMasqueradingFontName:(id)a3;
@end

@implementation CRLWPFallbackFontList

+ (id)sharedInstance
{
  if (qword_101A347E0 != -1)
  {
    sub_10132C424();
  }

  v3 = qword_101A347D8;

  return v3;
}

- (CRLWPFallbackFontList)init
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 pathForResource:@"CRLWPFallbackFonts" ofType:@"plist"];

  v5 = [[NSDictionary alloc] initWithContentsOfFile:v4];
  v6 = [(CRLWPFallbackFontList *)self initWithList:v5];

  return v6;
}

- (CRLWPFallbackFontList)initWithList:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CRLWPFallbackFontList;
  v6 = [(CRLWPFallbackFontList *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fallbackFontList, a3);
    localizedFontFamilyNameResolver = v7->_localizedFontFamilyNameResolver;
    v7->_localizedFontFamilyNameResolver = &stru_101845790;
  }

  return v7;
}

- (NSSet)replaceableFontNames
{
  v2 = [(CRLWPFallbackFontList *)self fallbackFontList];
  v3 = [v2 allKeys];
  v4 = [NSSet setWithArray:v3];

  return v4;
}

- (id)fallbackListForPostscriptFontName:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [(CRLWPFallbackFontList *)self fallbackFontList];
  v7 = [v6 objectForKeyedSubscript:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) objectForKeyedSubscript:{@"PostScript-name", v15}];
        [v5 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

- (id)fallbackFontNameForFontWithName:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPFallbackFontList *)self fallbackFontList];
  v6 = [v5 objectForKeyedSubscript:v4];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = [*(*(&v16 + 1) + 8 * v11) objectForKeyedSubscript:{@"PostScript-name", v16}];
      v13 = +[CRLWPFontVerifier sharedInstance];
      v14 = [v13 isFontWithPostscriptNameInstalled:v12];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  return v12;
}

- (id)localizedNameForMasqueradingFontName:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPFallbackFontList *)self localizedFontFamilyNameResolver];
  v6 = v5[2]();

  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

- (BOOL)isMasqueradingFontName:(id)a3
{
  v4 = a3;
  v5 = +[CRLWPFontVerifier sharedInstance];
  v6 = [v5 isFontWithPostscriptNameInstalled:v4];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(CRLWPFallbackFontList *)self fallbackFontNameForFontWithName:v4];
    if ([v8 length])
    {
      v9 = [(CRLWPFallbackFontList *)self masqueradingFontNames];
      v7 = [v9 containsObject:v8];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end