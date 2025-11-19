@interface CRLWPFontList
+ (id)excludedFamilyNames;
+ (id)sharedInstance;
- (CRLWPFontList)init;
- (NSArray)recentBaseFonts;
- (id)availableFontDescriptorsForAllFamilies;
- (id)availableFontFamilies;
- (id)baseFontWithDescriptor:(id)a3;
- (id)cacheKeyForFontDescriptor:(id)a3;
- (id)cachedFacesOfFontFamily:(id)a3;
- (id)description;
- (id)familiesForFontsInCollection:(__CTFontCollection *)a3;
- (id)familyNameFromFontDescriptor:(__CTFontDescriptor *)a3;
- (id)fontFacesForFontFamily:(id)a3;
- (id)fontForKey:(id)a3;
- (id)fontForPostscriptName:(id)a3;
- (id)fontForPostscriptName:(id)a3 atSize:(double)a4;
- (id)fontForPostscriptName:(id)a3 atSize:(double)a4 bold:(BOOL)a5 italic:(BOOL)a6;
- (id)fontForStyles:(id)a3;
- (id)fontFromStyle:(id)a3;
- (id)fontsForAvailableFamilies;
- (id)normalizeChangedFontUrlsToStrings:(id)a3 forKey:(id)a4;
- (id)sortedFontFamilies;
- (void)cacheFaces:(id)a3 forFontFamily:(id)a4;
- (void)cacheFont:(id)a3 forPostScriptName:(id)a4 atSize:(double)a5 bold:(BOOL)a6 italic:(BOOL)a7;
- (void)cacheFont:(id)a3 withKey:(id)a4;
- (void)downloadableFontsChanged:(id)a3;
- (void)dropFontsWithPSNamesInSet:(id)a3;
- (void)fontsChanged:(id)a3;
- (void)loadRecentFonts;
- (void)registerRecentFont:(id)a3;
- (void)reset;
- (void)saveRecentFontNames:(id)a3;
@end

@implementation CRLWPFontList

+ (id)sharedInstance
{
  if (qword_101A354F0 != -1)
  {
    sub_1013916AC();
  }

  v3 = qword_101A354E8;

  return v3;
}

+ (id)excludedFamilyNames
{
  if (qword_101A35500 != -1)
  {
    sub_1013916C0();
  }

  v3 = qword_101A354F8;

  return v3;
}

- (CRLWPFontList)init
{
  v11.receiver = self;
  v11.super_class = CRLWPFontList;
  v2 = [(CRLWPFontList *)&v11 init];
  if (v2)
  {
    v3 = +[NSDictionary dictionary];
    knownFonts = v2->_knownFonts;
    v2->_knownFonts = v3;

    v5 = +[NSDictionary dictionary];
    knownFontFamilyFaces = v2->_knownFontFamilyFaces;
    v2->_knownFontFamilyFaces = v5;

    fontPropertyResolver = v2->_fontPropertyResolver;
    v2->_fontPropertyResolver = &stru_10186E5E8;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"downloadableFontsChanged:" name:@"CRLWPFontDownloadDidFinishNotification" object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"fontsChanged:" name:kCTFontManagerRegisteredFontsChangedNotification object:0];

    [(CRLWPFontList *)v2 loadRecentFonts];
  }

  return v2;
}

- (void)loadRecentFonts
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v9 = [v3 arrayForKey:@"CRLWPFontRecentFontNames"];

  v4 = [v9 crl_arrayByMappingObjectsUsingBlock:&stru_10186E628];
  v5 = [NSPredicate predicateWithBlock:&stru_10186E668];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  [(CRLWPFontList *)self setRecentFontNames:v6];
  v7 = [(CRLWPFontList *)self recentFontNames];

  if (!v7)
  {
    v8 = +[NSArray array];
    [(CRLWPFontList *)self setRecentFontNames:v8];
  }
}

- (id)familiesForFontsInCollection:(__CTFontCollection *)a3
{
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = CTFontCollectionCreateMatchingFontDescriptors(a3);
  v7 = [(__CFArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CRLWPFontList *)self familyNameFromFontDescriptor:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(__CFArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)availableFontDescriptorsForAllFamilies
{
  v3 = CTFontCollectionCreateFromAvailableFonts(0);
  v4 = +[NSMutableArray array];
  if (v3)
  {
    v5 = [objc_opt_class() excludedFamilyNames];
    mandatoryAttributes = [NSSet setWithObject:kCTFontFamilyNameAttribute];
    v6 = +[NSMutableDictionary dictionary];
    cf = v3;
    [(CRLWPFontList *)self familiesForFontsInCollection:v3];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v35 = 0u;
    v7 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          if (([v5 containsObject:v11] & 1) == 0)
          {
            v37 = kCTFontFamilyNameAttribute;
            v38 = v11;
            v12 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
            v13 = CTFontDescriptorCreateWithAttributes(v12);

            if (v13)
            {
              MatchingFontDescriptor = CTFontDescriptorCreateMatchingFontDescriptor(v13, mandatoryAttributes);
              if (MatchingFontDescriptor)
              {
                v15 = MatchingFontDescriptor;
                [v6 setObject:MatchingFontDescriptor forKeyedSubscript:v11];
              }

              CFRelease(v13);
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v8);
    }

    v16 = [v6 allKeys];
    v17 = [v16 sortedArrayUsingSelector:"compare:"];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [v6 objectForKeyedSubscript:*(*(&v28 + 1) + 8 * j)];
          [v4 addObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v20);
    }

    CFRelease(cf);
  }

  return v4;
}

- (id)sortedFontFamilies
{
  v3 = [(CRLWPFontList *)self availableFontDescriptorsForAllFamilies];
  v4 = v3;
  if (v3)
  {
    v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v25 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v29 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = &qword_101AD5A10;
      v10 = *v30;
      v26 = v5;
      do
      {
        v11 = 0;
        do
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [(CRLWPFontList *)self familyNameFromFontDescriptor:*(*(&v29 + 1) + 8 * v11)];
          if (v12)
          {
            [v5 addObject:v12];
          }

          else
          {
            v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (*v9 != -1)
            {
              sub_1013916D4();
            }

            v14 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110146;
              v34 = v13;
              v35 = 2082;
              v36 = "[CRLWPFontList sortedFontFamilies]";
              v37 = 2082;
              v38 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Fonts/CRLWPFontList.m";
              v39 = 1024;
              v40 = 190;
              v41 = 2082;
              v42 = "familyName";
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
            }

            if (*v9 != -1)
            {
              sub_1013916FC();
            }

            v15 = v9;
            v16 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v19 = v16;
              v20 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v34 = v13;
              v35 = 2114;
              v36 = v20;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v17 = [NSString stringWithUTF8String:"[CRLWPFontList sortedFontFamilies]"];
            v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Fonts/CRLWPFontList.m"];
            [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:190 isFatal:0 description:"invalid nil value for '%{public}s'", "familyName"];

            v9 = v15;
            v5 = v26;
          }

          v11 = v11 + 1;
        }

        while (v8 != v11);
        v8 = [v6 countByEnumeratingWithState:&v29 objects:v43 count:16];
      }

      while (v8);
    }

    v4 = v25;
  }

  else
  {
    v5 = 0;
  }

  [objc_opt_class() excludedFamilyNames];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100552720;
  v28 = v27[3] = &unk_101855C10;
  v21 = v28;
  [v5 crl_removeObjectsPassingTest:v27];
  v22 = [v5 allObjects];
  v23 = [v22 sortedArrayUsingSelector:"compare:"];

  return v23;
}

- (id)familyNameFromFontDescriptor:(__CTFontDescriptor *)a3
{
  v3 = CTFontDescriptorCopyAttribute(a3, kCTFontFamilyNameAttribute);
  v4 = v3;
  if (v3 && CFStringHasPrefix(v3, @"."))
  {
    CFRelease(v4);
    v4 = 0;
  }

  return v4;
}

- (id)availableFontFamilies
{
  v3 = [(CRLWPFontList *)self sortedFontFamilies];
  v4 = [(CRLWPFontList *)self downloadedFonts];
  v5 = [v4 allObjects];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  return v6;
}

- (void)downloadableFontsChanged:(id)a3
{
  v7 = [a3 object];
  v4 = [v7 objectForKeyedSubscript:@"CRLWPFontRegisteredByURLFamilyNames"];
  [(CRLWPFontList *)self registerDownloadedFontPostScriptNames:v4];

  v5 = [v7 objectForKeyedSubscript:@"CRLWPFontDownloadMatchedNames"];
  [(CRLWPFontList *)self dropFontsWithPSNamesInSet:v5];
  v6 = [v7 objectForKeyedSubscript:@"CRLWPFontDownloadUnmatchedNames"];
  [(CRLWPFontList *)self dropFontsWithPSNamesInSet:v6];
}

- (void)fontsChanged:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101391724();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101391738();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013917C8();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLWPFontList fontsChanged:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Fonts/CRLWPFontList.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:282 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  [(CRLWPFontList *)self setCachedAvailableFamilyFonts:0];
  v8 = [(CRLWPFontList *)self normalizeChangedFontUrlsToStrings:v4 forKey:@"CTFontManagerAvailableFontURLsAdded"];
  v9 = [(CRLWPFontList *)self normalizeChangedFontUrlsToStrings:v4 forKey:@"CTFontManagerAvailableFontURLsRemoved"];

  [(CRLWPFontList *)self dropFontsWithPSNamesInSet:v8];
  [(CRLWPFontList *)self dropFontsWithPSNamesInSet:v9];
  v12[0] = @"CRLWPFontsAdded";
  v12[1] = @"CRLWPFontsRemoved";
  v13[0] = v8;
  v13[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 postNotificationName:@"CRLWPAvailableFontsChanged" object:0 userInfo:v10];
}

- (id)normalizeChangedFontUrlsToStrings:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v26 = +[NSMutableSet set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [v5 userInfo];
  v25 = v6;
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = objc_opt_class();
        v15 = sub_100014370(v14, v13);
        if (!v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [NSURL URLWithString:v13];
          }

          else
          {
            v15 = 0;
          }
        }

        v16 = [v15 fragment];
        v17 = v16;
        if (v16 && ![v16 rangeOfString:@"postscript-name="])
        {
          v19 = v18;
          v20 = [v17 length];
          if (v19 <= v20)
          {
            v21 = v20;
          }

          else
          {
            v21 = v19;
          }

          if (v19 >= v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = v19;
          }

          v23 = [v17 substringWithRange:{v22, v21 - v22}];
          [v26 addObject:v23];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  return v26;
}

- (id)fontFacesForFontFamily:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPFontList *)self cachedFacesOfFontFamily:v4];
  if (!v5)
  {
    v5 = [CRLWPFont facesOfFontFamily:v4];
    [(CRLWPFontList *)self cacheFaces:v5 forFontFamily:v4];
  }

  return v5;
}

- (id)cachedFacesOfFontFamily:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPFontList *)self knownFontFamilyFaces];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)cacheFaces:(id)a3 forFontFamily:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRLWPFontList *)self knownFontFamilyFaces];
  v9 = [v8 mutableCopy];

  [v9 setObject:v7 forKeyedSubscript:v6];
  [(CRLWPFontList *)self setKnownFontFamilyFaces:v9];
}

- (void)reset
{
  v3 = +[NSMutableDictionary dictionary];
  [(CRLWPFontList *)self setKnownFonts:v3];

  [(CRLWPFontList *)self setCachedAvailableFamilyFonts:0];
}

- (id)fontForPostscriptName:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPFontList *)self cacheKeyForFontWithPostScriptName:v4 atSize:0 bold:0 italic:0.0];
  v6 = [(CRLWPFontList *)self fontForKey:v5];
  if (!v6)
  {
    v6 = [[CRLWPFont alloc] initWithDesiredPostScriptName:v4 size:0.0];
    [(CRLWPFontList *)self cacheFont:v6 withKey:v5];
  }

  return v6;
}

- (id)fontForPostscriptName:(id)a3 atSize:(double)a4
{
  v5 = [(CRLWPFontList *)self fontForPostscriptName:a3];
  v6 = [v5 copyWithSize:a4];

  return v6;
}

- (id)fontForPostscriptName:(id)a3 atSize:(double)a4 bold:(BOOL)a5 italic:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = [(CRLWPFontList *)self cacheKeyForFontWithPostScriptName:v10 atSize:v7 bold:v6 italic:a4];
  v12 = [(CRLWPFontList *)self fontForKey:v11];
  if (!v12)
  {
    v13 = [(CRLWPFontList *)self fontForPostscriptName:v10];
    v12 = [v13 copyWithSize:v7 bold:v6 italic:a4];
    [(CRLWPFontList *)self cacheFont:v12 withKey:v11];
  }

  return v12;
}

- (void)cacheFont:(id)a3 forPostScriptName:(id)a4 atSize:(double)a5 bold:(BOOL)a6 italic:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a3;
  v13 = [(CRLWPFontList *)self cacheKeyForFontWithPostScriptName:a4 atSize:v8 bold:v7 italic:a5];
  [(CRLWPFontList *)self cacheFont:v12 withKey:v13];
}

- (void)cacheFont:(id)a3 withKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRLWPFontList *)self knownFonts];
  v9 = [v8 mutableCopy];

  [v9 setObject:v7 forKeyedSubscript:v6];
  [(CRLWPFontList *)self setKnownFonts:v9];
}

- (id)fontForKey:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPFontList *)self knownFonts];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)cacheKeyForFontDescriptor:(id)a3
{
  v3 = a3;
  v4 = [v3 postscriptName];
  [v3 pointSize];
  v6 = v5;

  v7 = [NSString stringWithFormat:@"%@|%f|%d|%d", v4, v6, 0, 0];

  return v7;
}

- (void)dropFontsWithPSNamesInSet:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPFontList *)self knownFonts];
  v6 = [v5 mutableCopy];

  v7 = [v6 allKeys];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100553540;
  v10[3] = &unk_10186E710;
  v11 = v4;
  v8 = v4;
  v9 = [v7 crl_arrayByTransformingWithBlock:v10];
  [v6 removeObjectsForKeys:v9];
  [(CRLWPFontList *)self setKnownFonts:v6];
}

- (id)fontFromStyle:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 valueForProperty:7];
  v7 = sub_100014370(v5, v6);

  if (v7 || (v8 = objc_opt_class(), [v4 valueForProperty:9], v9 = objc_claimAutoreleasedReturnValue(), sub_100014370(v8, v9), v7 = objc_claimAutoreleasedReturnValue(), v9, v7))
  {
    v10 = [(CRLWPFontList *)self fontForPostscriptName:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)fontsForAvailableFamilies
{
  v3 = [(CRLWPFontList *)self cachedAvailableFamilyFonts];

  if (!v3)
  {
    v4 = +[NSMutableArray array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(CRLWPFontList *)self availableFontDescriptorsForAllFamilies];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(CRLWPFontList *)self baseFontWithDescriptor:*(*(&v13 + 1) + 8 * v9)];
          [v4 addObject:v10];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [(CRLWPFontList *)self setCachedAvailableFamilyFonts:v4];
  }

  v11 = [(CRLWPFontList *)self cachedAvailableFamilyFonts];

  return v11;
}

- (id)baseFontWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPFontList *)self cacheKeyForFontDescriptor:v4];
  v6 = [(CRLWPFontList *)self fontForKey:v5];
  if (!v6)
  {
    v6 = [CRLWPFont baseFontWithDescriptor:v4];
    [(CRLWPFontList *)self cacheFont:v6 withKey:v5];
  }

  return v6;
}

- (id)fontForStyles:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPFontList *)self fontPropertyResolver];
  v6 = (v5)[2](v5, v4, 7);

  if (v6)
  {
    v7 = v6;
LABEL_4:
    v9 = [(CRLWPFontList *)self fontPropertyResolver];
    v10 = (v9)[2](v9, v4, 1);

    v11 = [(CRLWPFontList *)self fontPropertyResolver];
    v12 = (v11)[2](v11, v4, 13);

    v13 = [(CRLWPFontList *)self fontPropertyResolver];
    v14 = (v13)[2](v13, v4, 11);

    v15 = [(CRLWPFontList *)self fontForPostscriptName:v7];
    [v14 doubleValue];
    v17 = [v15 copyWithSize:objc_msgSend(v10 bold:"BOOLValue") italic:{objc_msgSend(v12, "BOOLValue"), v16}];

    goto LABEL_5;
  }

  v8 = [(CRLWPFontList *)self fontPropertyResolver];
  v7 = (v8)[2](v8, v4, 9);

  if (v7)
  {
    goto LABEL_4;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013917F0();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101391804();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013918B0();
  }

  v19 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v19);
  }

  v20 = [NSString stringWithUTF8String:"[CRLWPFontList fontForStyles:]"];
  v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Fonts/CRLWPFontList.m"];
  [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:482 isFatal:0 description:"invalid nil value for '%{public}s'", "currentFontName"];

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013918D8();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101391900();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101391990();
  }

  v22 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v22);
  }

  v23 = [NSString stringWithUTF8String:"[CRLWPFontList fontForStyles:]"];
  v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Fonts/CRLWPFontList.m"];
  [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:491 isFatal:0 description:"Failed to resolve font name"];

  v7 = +[CRLWPFont missingFontPostScriptName];
  v17 = [(CRLWPFontList *)self fontForPostscriptName:v7];
LABEL_5:

  return v17;
}

- (void)registerRecentFont:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013919B8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013919CC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101391A78();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v6 = [NSString stringWithUTF8String:"[CRLWPFontList registerRecentFont:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Fonts/CRLWPFontList.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v8 lineNumber:499 isFatal:0 description:"invalid nil value for '%{public}s'", "recentFont"];
    goto LABEL_14;
  }

  if (([v4 isFallbackFont] & 1) == 0)
  {
    v6 = [[CRLWPOpaqueFontID alloc] initWithFont:v5];
    v7 = [(CRLWPFontList *)self recentFontNames];
    v8 = [v7 mutableCopy];

    [v8 removeObject:v6];
    [v8 insertObject:v6 atIndex:0];
    [v8 crl_trimObjectsFromIndex:6];
    v9 = [(CRLWPFontList *)self recentFontNames];
    v10 = [v9 isEqualToArray:v8];

    if ((v10 & 1) == 0)
    {
      [(CRLWPFontList *)self setRecentFontNames:v8];
      [(CRLWPFontList *)self saveRecentFontNames:v8];
      v11 = +[NSNotificationCenter defaultCenter];
      [v11 postNotificationName:@"CRLWPRecentsFontsChangedNotification" object:v5];
    }

LABEL_14:
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSMutableString stringWithFormat:@"%@: <%p> Known Fonts: \n", v4, self];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(CRLWPFontList *)self knownFonts];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v5 appendFormat:@"\t%@\n", *(*(&v13 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return v5;
}

- (NSArray)recentBaseFonts
{
  v2 = [(CRLWPFontList *)self recentFontNames];
  v3 = [v2 crl_arrayByMappingObjectsUsingBlock:&stru_10186E810];

  v4 = [NSPredicate predicateWithBlock:&stru_10186E830];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

- (void)saveRecentFontNames:(id)a3
{
  v4 = [a3 crl_arrayByMappingObjectsUsingBlock:&stru_10186E870];
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setObject:v4 forKey:@"CRLWPFontRecentFontNames"];
}

@end