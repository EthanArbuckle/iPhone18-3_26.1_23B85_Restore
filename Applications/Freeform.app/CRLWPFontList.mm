@interface CRLWPFontList
+ (id)excludedFamilyNames;
+ (id)sharedInstance;
- (CRLWPFontList)init;
- (NSArray)recentBaseFonts;
- (id)availableFontDescriptorsForAllFamilies;
- (id)availableFontFamilies;
- (id)baseFontWithDescriptor:(id)descriptor;
- (id)cacheKeyForFontDescriptor:(id)descriptor;
- (id)cachedFacesOfFontFamily:(id)family;
- (id)description;
- (id)familiesForFontsInCollection:(__CTFontCollection *)collection;
- (id)familyNameFromFontDescriptor:(__CTFontDescriptor *)descriptor;
- (id)fontFacesForFontFamily:(id)family;
- (id)fontForKey:(id)key;
- (id)fontForPostscriptName:(id)name;
- (id)fontForPostscriptName:(id)name atSize:(double)size;
- (id)fontForPostscriptName:(id)name atSize:(double)size bold:(BOOL)bold italic:(BOOL)italic;
- (id)fontForStyles:(id)styles;
- (id)fontFromStyle:(id)style;
- (id)fontsForAvailableFamilies;
- (id)normalizeChangedFontUrlsToStrings:(id)strings forKey:(id)key;
- (id)sortedFontFamilies;
- (void)cacheFaces:(id)faces forFontFamily:(id)family;
- (void)cacheFont:(id)font forPostScriptName:(id)name atSize:(double)size bold:(BOOL)bold italic:(BOOL)italic;
- (void)cacheFont:(id)font withKey:(id)key;
- (void)downloadableFontsChanged:(id)changed;
- (void)dropFontsWithPSNamesInSet:(id)set;
- (void)fontsChanged:(id)changed;
- (void)loadRecentFonts;
- (void)registerRecentFont:(id)font;
- (void)reset;
- (void)saveRecentFontNames:(id)names;
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
  recentFontNames = [(CRLWPFontList *)self recentFontNames];

  if (!recentFontNames)
  {
    v8 = +[NSArray array];
    [(CRLWPFontList *)self setRecentFontNames:v8];
  }
}

- (id)familiesForFontsInCollection:(__CTFontCollection *)collection
{
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = CTFontCollectionCreateMatchingFontDescriptors(collection);
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
    excludedFamilyNames = [objc_opt_class() excludedFamilyNames];
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
          if (([excludedFamilyNames containsObject:v11] & 1) == 0)
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

    allKeys = [v6 allKeys];
    v17 = [allKeys sortedArrayUsingSelector:"compare:"];

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
  availableFontDescriptorsForAllFamilies = [(CRLWPFontList *)self availableFontDescriptorsForAllFamilies];
  v4 = availableFontDescriptorsForAllFamilies;
  if (availableFontDescriptorsForAllFamilies)
  {
    v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [availableFontDescriptorsForAllFamilies count]);
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
  allObjects = [v5 allObjects];
  v23 = [allObjects sortedArrayUsingSelector:"compare:"];

  return v23;
}

- (id)familyNameFromFontDescriptor:(__CTFontDescriptor *)descriptor
{
  v3 = CTFontDescriptorCopyAttribute(descriptor, kCTFontFamilyNameAttribute);
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
  sortedFontFamilies = [(CRLWPFontList *)self sortedFontFamilies];
  downloadedFonts = [(CRLWPFontList *)self downloadedFonts];
  allObjects = [downloadedFonts allObjects];
  v6 = [sortedFontFamilies arrayByAddingObjectsFromArray:allObjects];

  return v6;
}

- (void)downloadableFontsChanged:(id)changed
{
  object = [changed object];
  v4 = [object objectForKeyedSubscript:@"CRLWPFontRegisteredByURLFamilyNames"];
  [(CRLWPFontList *)self registerDownloadedFontPostScriptNames:v4];

  v5 = [object objectForKeyedSubscript:@"CRLWPFontDownloadMatchedNames"];
  [(CRLWPFontList *)self dropFontsWithPSNamesInSet:v5];
  v6 = [object objectForKeyedSubscript:@"CRLWPFontDownloadUnmatchedNames"];
  [(CRLWPFontList *)self dropFontsWithPSNamesInSet:v6];
}

- (void)fontsChanged:(id)changed
{
  changedCopy = changed;
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
  v8 = [(CRLWPFontList *)self normalizeChangedFontUrlsToStrings:changedCopy forKey:@"CTFontManagerAvailableFontURLsAdded"];
  v9 = [(CRLWPFontList *)self normalizeChangedFontUrlsToStrings:changedCopy forKey:@"CTFontManagerAvailableFontURLsRemoved"];

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

- (id)normalizeChangedFontUrlsToStrings:(id)strings forKey:(id)key
{
  stringsCopy = strings;
  keyCopy = key;
  v26 = +[NSMutableSet set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  userInfo = [stringsCopy userInfo];
  v25 = keyCopy;
  v8 = [userInfo objectForKeyedSubscript:keyCopy];

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

        fragment = [v15 fragment];
        v17 = fragment;
        if (fragment && ![fragment rangeOfString:@"postscript-name="])
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

- (id)fontFacesForFontFamily:(id)family
{
  familyCopy = family;
  v5 = [(CRLWPFontList *)self cachedFacesOfFontFamily:familyCopy];
  if (!v5)
  {
    v5 = [CRLWPFont facesOfFontFamily:familyCopy];
    [(CRLWPFontList *)self cacheFaces:v5 forFontFamily:familyCopy];
  }

  return v5;
}

- (id)cachedFacesOfFontFamily:(id)family
{
  familyCopy = family;
  knownFontFamilyFaces = [(CRLWPFontList *)self knownFontFamilyFaces];
  v6 = [knownFontFamilyFaces objectForKeyedSubscript:familyCopy];

  return v6;
}

- (void)cacheFaces:(id)faces forFontFamily:(id)family
{
  familyCopy = family;
  facesCopy = faces;
  knownFontFamilyFaces = [(CRLWPFontList *)self knownFontFamilyFaces];
  v9 = [knownFontFamilyFaces mutableCopy];

  [v9 setObject:facesCopy forKeyedSubscript:familyCopy];
  [(CRLWPFontList *)self setKnownFontFamilyFaces:v9];
}

- (void)reset
{
  v3 = +[NSMutableDictionary dictionary];
  [(CRLWPFontList *)self setKnownFonts:v3];

  [(CRLWPFontList *)self setCachedAvailableFamilyFonts:0];
}

- (id)fontForPostscriptName:(id)name
{
  nameCopy = name;
  v5 = [(CRLWPFontList *)self cacheKeyForFontWithPostScriptName:nameCopy atSize:0 bold:0 italic:0.0];
  v6 = [(CRLWPFontList *)self fontForKey:v5];
  if (!v6)
  {
    v6 = [[CRLWPFont alloc] initWithDesiredPostScriptName:nameCopy size:0.0];
    [(CRLWPFontList *)self cacheFont:v6 withKey:v5];
  }

  return v6;
}

- (id)fontForPostscriptName:(id)name atSize:(double)size
{
  v5 = [(CRLWPFontList *)self fontForPostscriptName:name];
  v6 = [v5 copyWithSize:size];

  return v6;
}

- (id)fontForPostscriptName:(id)name atSize:(double)size bold:(BOOL)bold italic:(BOOL)italic
{
  italicCopy = italic;
  boldCopy = bold;
  nameCopy = name;
  v11 = [(CRLWPFontList *)self cacheKeyForFontWithPostScriptName:nameCopy atSize:boldCopy bold:italicCopy italic:size];
  v12 = [(CRLWPFontList *)self fontForKey:v11];
  if (!v12)
  {
    v13 = [(CRLWPFontList *)self fontForPostscriptName:nameCopy];
    v12 = [v13 copyWithSize:boldCopy bold:italicCopy italic:size];
    [(CRLWPFontList *)self cacheFont:v12 withKey:v11];
  }

  return v12;
}

- (void)cacheFont:(id)font forPostScriptName:(id)name atSize:(double)size bold:(BOOL)bold italic:(BOOL)italic
{
  italicCopy = italic;
  boldCopy = bold;
  fontCopy = font;
  v13 = [(CRLWPFontList *)self cacheKeyForFontWithPostScriptName:name atSize:boldCopy bold:italicCopy italic:size];
  [(CRLWPFontList *)self cacheFont:fontCopy withKey:v13];
}

- (void)cacheFont:(id)font withKey:(id)key
{
  keyCopy = key;
  fontCopy = font;
  knownFonts = [(CRLWPFontList *)self knownFonts];
  v9 = [knownFonts mutableCopy];

  [v9 setObject:fontCopy forKeyedSubscript:keyCopy];
  [(CRLWPFontList *)self setKnownFonts:v9];
}

- (id)fontForKey:(id)key
{
  keyCopy = key;
  knownFonts = [(CRLWPFontList *)self knownFonts];
  v6 = [knownFonts objectForKeyedSubscript:keyCopy];

  return v6;
}

- (id)cacheKeyForFontDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  postscriptName = [descriptorCopy postscriptName];
  [descriptorCopy pointSize];
  v6 = v5;

  v7 = [NSString stringWithFormat:@"%@|%f|%d|%d", postscriptName, v6, 0, 0];

  return v7;
}

- (void)dropFontsWithPSNamesInSet:(id)set
{
  setCopy = set;
  knownFonts = [(CRLWPFontList *)self knownFonts];
  v6 = [knownFonts mutableCopy];

  allKeys = [v6 allKeys];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100553540;
  v10[3] = &unk_10186E710;
  v11 = setCopy;
  v8 = setCopy;
  v9 = [allKeys crl_arrayByTransformingWithBlock:v10];
  [v6 removeObjectsForKeys:v9];
  [(CRLWPFontList *)self setKnownFonts:v6];
}

- (id)fontFromStyle:(id)style
{
  styleCopy = style;
  v5 = objc_opt_class();
  v6 = [styleCopy valueForProperty:7];
  v7 = sub_100014370(v5, v6);

  if (v7 || (v8 = objc_opt_class(), [styleCopy valueForProperty:9], v9 = objc_claimAutoreleasedReturnValue(), sub_100014370(v8, v9), v7 = objc_claimAutoreleasedReturnValue(), v9, v7))
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
  cachedAvailableFamilyFonts = [(CRLWPFontList *)self cachedAvailableFamilyFonts];

  if (!cachedAvailableFamilyFonts)
  {
    v4 = +[NSMutableArray array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    availableFontDescriptorsForAllFamilies = [(CRLWPFontList *)self availableFontDescriptorsForAllFamilies];
    v6 = [availableFontDescriptorsForAllFamilies countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(availableFontDescriptorsForAllFamilies);
          }

          v10 = [(CRLWPFontList *)self baseFontWithDescriptor:*(*(&v13 + 1) + 8 * v9)];
          [v4 addObject:v10];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [availableFontDescriptorsForAllFamilies countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [(CRLWPFontList *)self setCachedAvailableFamilyFonts:v4];
  }

  cachedAvailableFamilyFonts2 = [(CRLWPFontList *)self cachedAvailableFamilyFonts];

  return cachedAvailableFamilyFonts2;
}

- (id)baseFontWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [(CRLWPFontList *)self cacheKeyForFontDescriptor:descriptorCopy];
  v6 = [(CRLWPFontList *)self fontForKey:v5];
  if (!v6)
  {
    v6 = [CRLWPFont baseFontWithDescriptor:descriptorCopy];
    [(CRLWPFontList *)self cacheFont:v6 withKey:v5];
  }

  return v6;
}

- (id)fontForStyles:(id)styles
{
  stylesCopy = styles;
  fontPropertyResolver = [(CRLWPFontList *)self fontPropertyResolver];
  v6 = (fontPropertyResolver)[2](fontPropertyResolver, stylesCopy, 7);

  if (v6)
  {
    v7 = v6;
LABEL_4:
    fontPropertyResolver2 = [(CRLWPFontList *)self fontPropertyResolver];
    v10 = (fontPropertyResolver2)[2](fontPropertyResolver2, stylesCopy, 1);

    fontPropertyResolver3 = [(CRLWPFontList *)self fontPropertyResolver];
    v12 = (fontPropertyResolver3)[2](fontPropertyResolver3, stylesCopy, 13);

    fontPropertyResolver4 = [(CRLWPFontList *)self fontPropertyResolver];
    v14 = (fontPropertyResolver4)[2](fontPropertyResolver4, stylesCopy, 11);

    v15 = [(CRLWPFontList *)self fontForPostscriptName:v7];
    [v14 doubleValue];
    v17 = [v15 copyWithSize:objc_msgSend(v10 bold:"BOOLValue") italic:{objc_msgSend(v12, "BOOLValue"), v16}];

    goto LABEL_5;
  }

  fontPropertyResolver5 = [(CRLWPFontList *)self fontPropertyResolver];
  v7 = (fontPropertyResolver5)[2](fontPropertyResolver5, stylesCopy, 9);

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

- (void)registerRecentFont:(id)font
{
  fontCopy = font;
  v5 = fontCopy;
  if (!fontCopy)
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

  if (([fontCopy isFallbackFont] & 1) == 0)
  {
    v6 = [[CRLWPOpaqueFontID alloc] initWithFont:v5];
    recentFontNames = [(CRLWPFontList *)self recentFontNames];
    v8 = [recentFontNames mutableCopy];

    [v8 removeObject:v6];
    [v8 insertObject:v6 atIndex:0];
    [v8 crl_trimObjectsFromIndex:6];
    recentFontNames2 = [(CRLWPFontList *)self recentFontNames];
    v10 = [recentFontNames2 isEqualToArray:v8];

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
  knownFonts = [(CRLWPFontList *)self knownFonts];
  allValues = [knownFonts allValues];

  v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [v5 appendFormat:@"\t%@\n", *(*(&v13 + 1) + 8 * i)];
      }

      v9 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return v5;
}

- (NSArray)recentBaseFonts
{
  recentFontNames = [(CRLWPFontList *)self recentFontNames];
  v3 = [recentFontNames crl_arrayByMappingObjectsUsingBlock:&stru_10186E810];

  v4 = [NSPredicate predicateWithBlock:&stru_10186E830];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

- (void)saveRecentFontNames:(id)names
{
  v4 = [names crl_arrayByMappingObjectsUsingBlock:&stru_10186E870];
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setObject:v4 forKey:@"CRLWPFontRecentFontNames"];
}

@end