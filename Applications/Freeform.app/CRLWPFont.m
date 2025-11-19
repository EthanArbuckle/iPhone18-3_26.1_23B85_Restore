@interface CRLWPFont
+ (BOOL)isSystemFontName:(id)a3;
+ (BOOL)isSystemUIFontIdentifier:(id)a3;
+ (CRLWPFont)fontWithDesiredPostScriptName:(id)a3;
+ (CRLWPFont)fontWithDesiredPostScriptName:(id)a3 atSize:(double)a4;
+ (CRLWPFont)fontWithDesiredPostScriptName:(id)a3 fallbackFont:(id)a4 ofType:(unint64_t)a5;
+ (CRLWPFont)fontWithOpaqueIdentifier:(id)a3;
+ (id)baseFontForFamilyName:(id)a3;
+ (id)baseFontWithDescriptor:(id)a3;
+ (id)facesOfFontFamily:(id)a3;
+ (id)loadPlatformFontForPostScriptName:(id)a3 size:(double)a4;
+ (id)loadPlatformFontOrFallbackForPostScriptName:(id)a3 size:(double)a4 foundType:(unint64_t *)a5;
+ (id)localizedFamilyNameForPlatformFont:(id)a3;
+ (id)localizedMasqueradingFontFamilyNames;
+ (id)masqueradingFontNames;
+ (id)missingFont;
+ (id)postScriptNameForFamilyName:(id)a3;
+ (id)systemFontOfSize:(double)a3 withWeight:(double)a4;
+ (unint64_t)optionsForLoadingPlatformFontWithPostScriptName:(id)a3;
- (BOOL)isBaseFontEqualToBaseFontFor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMasqueradingFontName;
- (CRLWPFont)baseFont;
- (CRLWPFont)initWithDesiredPostScriptName:(id)a3 platformFontDescriptor:(id)a4 andPlatformFont:(id)a5 ofType:(unint64_t)a6 localizedFamilyName:(id)a7;
- (CRLWPFont)initWithDesiredPostScriptName:(id)a3 size:(double)a4;
- (NSArray)familyFaces;
- (NSString)desiredPostScriptName;
- (NSString)displayName;
- (__CTFont)ctFont;
- (__CTFont)ctFontForSize:(double)a3;
- (__CTFont)ctFontForSize:(double)a3 bold:(BOOL)a4 italic:(BOOL)a5;
- (__CTFont)ctFontForSize:(double)a3 bold:(BOOL)a4 italic:(BOOL)a5 traits:(id)a6;
- (double)size;
- (id)copyWithSize:(double)a3;
- (id)copyWithSize:(double)a3 bold:(BOOL)a4 italic:(BOOL)a5;
- (id)copyWithSize:(double)a3 bold:(BOOL)a4 italic:(BOOL)a5 traits:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation CRLWPFont

+ (id)missingFont
{
  v2 = [a1 missingFontPostScriptName];
  v3 = [CRLWPFont fontWithDesiredPostScriptName:v2];

  return v3;
}

+ (id)systemFontOfSize:(double)a3 withWeight:(double)a4
{
  v6 = [UIFont systemFontOfSize:a3 weight:?];
  v7 = [a1 alloc];
  v8 = [_TtC8Freeform20CRLWPSystemFontNames nameForWeight:a4];
  v9 = [v7 initWithDesiredPostScriptName:v8 platformFontDescriptor:0 andPlatformFont:v6 ofType:1];

  return v9;
}

+ (id)masqueradingFontNames
{
  if (qword_101A34438 != -1)
  {
    sub_10130D904();
  }

  v3 = qword_101A34430;

  return v3;
}

+ (id)localizedMasqueradingFontFamilyNames
{
  if (qword_101A34448 != -1)
  {
    sub_10130D918();
  }

  v3 = qword_101A34440;

  return v3;
}

+ (CRLWPFont)fontWithDesiredPostScriptName:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDesiredPostScriptName:v4 size:0.0];

  return v5;
}

+ (CRLWPFont)fontWithOpaqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 familyName];

  if (v5)
  {
    v6 = [v4 familyName];

    [a1 baseFontForFamilyName:v6];
  }

  else
  {
    v6 = [v4 desiredPostScriptName];

    [a1 fontWithDesiredPostScriptName:v6];
  }
  v7 = ;

  return v7;
}

+ (CRLWPFont)fontWithDesiredPostScriptName:(id)a3 fallbackFont:(id)a4 ofType:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 alloc];
  v11 = [v8 platformFont];

  v12 = [v10 initWithDesiredPostScriptName:v9 platformFontDescriptor:0 andPlatformFont:v11 ofType:a5];

  return v12;
}

+ (CRLWPFont)fontWithDesiredPostScriptName:(id)a3 atSize:(double)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithDesiredPostScriptName:v6 size:a4];

  return v7;
}

+ (id)baseFontWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = CTFontCreateWithFontDescriptor(v4, 0.0, 0);
  v6 = [a1 alloc];
  v7 = [(__CTFontDescriptor *)v4 postscriptName];
  v8 = [v6 initWithDesiredPostScriptName:v7 platformFontDescriptor:v4 andPlatformFont:v5 ofType:1];

  return v8;
}

+ (id)baseFontForFamilyName:(id)a3
{
  v4 = a3;
  v5 = [a1 helveticaFont];
  v6 = [v5 familyName];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = [a1 helveticaFont];
  }

  else
  {
    if (v4)
    {
      v24 = kCTFontFamilyNameAttribute;
      v25 = v4;
      v9 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v10 = CTFontDescriptorCreateWithAttributes(v9);
      if (v10)
      {
        v11 = v10;
        v12 = CTFontCreateWithFontDescriptor(v10, 0.0, 0);
        v13 = [(__CTFont *)v12 fontName];
        v14 = +[CRLWPFont missingFontPostScriptName];
        v15 = [v13 isEqual:v14];

        v16 = [CRLWPFont alloc];
        v17 = v16;
        if (v15)
        {
          v18 = [(CRLWPFont *)v16 initWithDesiredPostScriptName:v4];
        }

        else
        {
          v22 = [(__CTFont *)v12 fontName];
          v18 = [(CRLWPFont *)v17 initWithDesiredPostScriptName:v22 platformFontDescriptor:v11 andPlatformFont:v12 ofType:1];
        }

        CFRelease(v11);

        if (v18)
        {
          goto LABEL_20;
        }
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10130D92C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130D954();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10130D9E8();
        }

        v19 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v19);
        }

        v20 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLWPFont baseFontForFamilyName:]");
        v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Fonts/CRLWPFont.m"];
        [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:165 isFatal:0 description:"invalid nil value for '%{public}s'", "desc"];
      }
    }

    v8 = [a1 missingFont];
  }

  v18 = v8;
LABEL_20:

  return v18;
}

+ (id)loadPlatformFontOrFallbackForPostScriptName:(id)a3 size:(double)a4 foundType:(unint64_t *)a5
{
  v8 = a3;
  *a5 = 1;
  p_superclass = &OBJC_METACLASS___CRLTemporaryDirectory.superclass;
  v10 = +[CRLWPFontVerifier sharedInstance];
  if ([a1 isSystemUIFontIdentifier:v8])
  {
    [_TtC8Freeform20CRLWPSystemFontNames weightForName:v8];
    v12 = [UIFont systemFontOfSize:a4 weight:v11];
    goto LABEL_5;
  }

  if ([v10 isFontWithPostscriptNameInstalled:v8])
  {
    v12 = [a1 loadPlatformFontForPostScriptName:v8 size:a4];
LABEL_5:
    v13 = v12;
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v28 = +[CRLWPFallbackFontList sharedInstance];
  [v28 fallbackListForPostscriptFontName:v8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v32 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v17)
  {
    v13 = 0;
    goto LABEL_26;
  }

  v18 = v17;
  v19 = *v30;
  v27 = a5;
  while (2)
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v30 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v29 + 1) + 8 * i);
      if ([v10 isFontWithPostscriptNameInstalled:{v21, v27}])
      {
        v13 = [a1 loadPlatformFontForPostScriptName:v21 size:a4];
        v24 = [a1 masqueradingFontNames];
        v25 = [v24 containsObject:v21];

        v26 = 2;
        if (v25)
        {
          v26 = 3;
        }

        goto LABEL_25;
      }

      v22 = [a1 masqueradingFontNames];
      v23 = [v22 containsObject:v21];

      if (v23)
      {
        v13 = [a1 loadPlatformFontForPostScriptName:v21 size:a4];
        v26 = 3;
LABEL_25:
        a5 = v27;
        *v27 = v26;
        p_superclass = (&OBJC_METACLASS___CRLTemporaryDirectory + 8);
        goto LABEL_26;
      }
    }

    v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    v13 = 0;
    a5 = v27;
    p_superclass = (&OBJC_METACLASS___CRLTemporaryDirectory + 8);
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_26:

  if (!v13)
  {
LABEL_6:
    v14 = [p_superclass + 414 missingFontName];
    v13 = [a1 loadPlatformFontForPostScriptName:v14 size:a4];

    *a5 = 2;
  }

LABEL_7:

  return v13;
}

+ (BOOL)isSystemFontName:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 characterAtIndex:0] == 46;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isSystemUIFontIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[_TtC8Freeform20CRLWPSystemFontNames allSystemFontNames];
  v5 = [v4 containsObject:v3];

  return v5;
}

+ (unint64_t)optionsForLoadingPlatformFontWithPostScriptName:(id)a3
{
  if ([a1 isSystemFontName:a3])
  {
    return 1024;
  }

  else
  {
    return 0;
  }
}

+ (id)loadPlatformFontForPostScriptName:(id)a3 size:(double)a4
{
  v6 = a3;
  v7 = CTFontCreateWithNameAndOptions(v6, a4, 0, [a1 optionsForLoadingPlatformFontWithPostScriptName:v6]);

  return v7;
}

+ (id)localizedFamilyNameForPlatformFont:(id)a3
{
  v4 = a3;
  if ([CRLWPFont isSystemUIFontRef:v4])
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"System Font" value:0 table:0];
  }

  else
  {
    v7 = [v4 fontName];
    v8 = [a1 isSystemFontName:v7];

    if (v8 || (v6 = CTFontCopyLocalizedName(v4, kCTFontFamilyNameKey, 0)) == 0)
    {
      v6 = [v4 familyName];
    }
  }

  return v6;
}

- (CRLWPFont)initWithDesiredPostScriptName:(id)a3 size:(double)a4
{
  v10 = 0;
  v6 = a3;
  v7 = [objc_opt_class() loadPlatformFontOrFallbackForPostScriptName:v6 size:&v10 foundType:a4];
  v8 = [(CRLWPFont *)self initWithDesiredPostScriptName:v6 platformFontDescriptor:0 andPlatformFont:v7 ofType:v10];

  return v8;
}

- (CRLWPFont)initWithDesiredPostScriptName:(id)a3 platformFontDescriptor:(id)a4 andPlatformFont:(id)a5 ofType:(unint64_t)a6 localizedFamilyName:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = v16;
  if (!v13)
  {
    v47 = v16;
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130DAB0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DAC4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130DB58();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v18);
    }

    v19 = [NSString stringWithUTF8String:"[CRLWPFont initWithDesiredPostScriptName:platformFontDescriptor:andPlatformFont:ofType:localizedFamilyName:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Fonts/CRLWPFont.m"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:300 isFatal:0 description:"invalid nil value for '%{public}s'", "desiredPostScriptName"];

    v13 = 0;
    v17 = v47;
  }

  v48.receiver = self;
  v48.super_class = CRLWPFont;
  v21 = [(CRLWPFont *)&v48 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_desiredPostScriptName, a3);
    v22->_type = a6;
    objc_storeStrong(&v22->_platformFont, a5);
    if (v14)
    {
      v23 = v14;
    }

    else
    {
      v23 = CTFontCopyFontDescriptor(v22->_platformFont);
    }

    platformFontDescriptor = v22->_platformFontDescriptor;
    v22->_platformFontDescriptor = v23;

    v25 = [v15 familyName];

    if (v25)
    {
      v26 = [v15 familyName];
    }

    else
    {
      v26 = &stru_1018BCA28;
    }

    familyName = v22->_familyName;
    v22->_familyName = &v26->isa;

    v28 = CTFontDescriptorCopyAttribute(v22->_platformFontDescriptor, kCTFontNameAttribute);
    postScriptName = v22->_postScriptName;
    v22->_postScriptName = v28;

    if (!v22->_postScriptName)
    {
      v30 = [v15 fontName];
      v31 = v22->_postScriptName;
      v22->_postScriptName = v30;
    }

    v32 = +[CRLWPFallbackFontList sharedInstance];
    v33 = CTFontDescriptorCopyAttribute(v22->_platformFontDescriptor, kCTFontFamilyNameAttribute);
    v34 = v22->_familyName;
    v22->_familyName = v33;

    if (v17)
    {
      v35 = [v17 copy];
    }

    else
    {
      if (a6 == 3)
      {
        v36 = [v32 localizedNameForMasqueradingFontName:v13];
        localizedFamilyName = v22->_localizedFamilyName;
        v22->_localizedFamilyName = v36;

        if (v22->_localizedFamilyName)
        {
LABEL_36:
          if (!v22->_localizedFamilyName)
          {
            +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10130DC60();
            }

            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_10130DC88();
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10130DD18();
            }

            v41 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_10130DA10(v41);
            }

            v42 = [NSString stringWithUTF8String:"[CRLWPFont initWithDesiredPostScriptName:platformFontDescriptor:andPlatformFont:ofType:localizedFamilyName:]"];
            v43 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Fonts/CRLWPFont.m"];
            [CRLAssertionHandler handleFailureInFunction:v42 file:v43 lineNumber:335 isFatal:0 description:"Unable to acquire a localized family name for: %@", v22];
          }

          v44 = +[NSMutableDictionary dictionary];
          alternatePlatformFonts = v22->_alternatePlatformFonts;
          v22->_alternatePlatformFonts = v44;

          goto LABEL_47;
        }

        objc_storeStrong(&v22->_localizedFamilyName, a3);
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10130DB80();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DBA8();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10130DC38();
        }

        v38 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v38);
        }

        v39 = [NSString stringWithUTF8String:"[CRLWPFont initWithDesiredPostScriptName:platformFontDescriptor:andPlatformFont:ofType:localizedFamilyName:]"];
        v40 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Fonts/CRLWPFont.m"];
        [CRLAssertionHandler handleFailureInFunction:v39 file:v40 lineNumber:330 isFatal:0 description:"Masquerading font with no localized name found: %@", v22];

        v17 = 0;
LABEL_35:

        goto LABEL_36;
      }

      v35 = [objc_opt_class() localizedFamilyNameForPlatformFont:v15];
    }

    v39 = v22->_localizedFamilyName;
    v22->_localizedFamilyName = v35;
    goto LABEL_35;
  }

LABEL_47:

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRLWPFont alloc];
  v5 = [(CRLWPFont *)self desiredPostScriptName];
  v6 = [(CRLWPFont *)self platformFont];
  v7 = [(CRLWPFont *)self type];
  v8 = [(CRLWPFont *)self localizedFamilyName];
  v9 = [(CRLWPFont *)v4 initWithDesiredPostScriptName:v5 platformFontDescriptor:0 andPlatformFont:v6 ofType:v7 localizedFamilyName:v8];

  return v9;
}

- (NSString)desiredPostScriptName
{
  if ([CRLWPFont isSystemUIFontRef:[(CRLWPFont *)self ctFont]])
  {
    [(CRLWPFont *)self ctFont];
    CTFontGetWeight();
    v3 = [_TtC8Freeform20CRLWPSystemFontNames nameForWeight:?];
  }

  else
  {
    v3 = self->_desiredPostScriptName;
  }

  return v3;
}

- (BOOL)isMasqueradingFontName
{
  v3 = +[CRLWPFont masqueradingFontNames];
  v4 = [(CRLWPFont *)self postScriptName];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (BOOL)isBaseFontEqualToBaseFontFor:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPFont *)self baseFont];
  v6 = [v4 baseFont];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

  if (v6 == self)
  {
    goto LABEL_5;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [(CRLWPFont *)self platformFont];
  v8 = [(CRLWPFont *)v6 platformFont];
  if (([v7 isEqual:v8] & 1) == 0)
  {

    goto LABEL_7;
  }

  v9 = [(CRLWPFont *)self desiredPostScriptName];
  v10 = [(CRLWPFont *)v6 desiredPostScriptName];
  v11 = [v9 isEqual:v10];

  if ((v11 & 1) == 0)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

LABEL_5:
  v12 = 1;
LABEL_8:

  return v12;
}

- (unint64_t)hash
{
  if (![(CRLWPFont *)self hashValue])
  {
    v3 = objc_alloc_init(CRLHasher);
    [(CRLHasher *)v3 addObject:self->_postScriptName];
    [(CRLHasher *)v3 addObject:self->_desiredPostScriptName];
    [(UIFont *)self->_platformFont pointSize];
    [(CRLHasher *)v3 addInt:(v4 * 1000.0)];
    [(CRLWPFont *)self setHashValue:[(CRLHasher *)v3 hashValue]];
  }

  return [(CRLWPFont *)self hashValue];
}

- (__CTFont)ctFont
{
  v2 = [(CRLWPFont *)self platformFont];
  v3 = CFRetain(v2);
  v4 = CFAutorelease(v3);

  return v4;
}

- (__CTFont)ctFontForSize:(double)a3
{
  [(CRLWPFont *)self size];
  if (v5 == a3)
  {

    return [(CRLWPFont *)self ctFont];
  }

  else
  {
    v7 = [(CRLWPFont *)self postScriptName];
    v8 = [CRLWPFontCacheKey cacheKeyWithFontName:v7 size:a3];

    v9 = [(CRLWPFont *)self alternatePlatformFonts];
    objc_sync_enter(v9);
    v10 = [(CRLWPFont *)self alternatePlatformFonts];
    v11 = [v10 objectForKeyedSubscript:v8];

    if (v11)
    {
      v12 = [(CRLWPFont *)self alternatePlatformFonts];
      v13 = [v12 objectForKeyedSubscript:v8];
      v14 = CFRetain(v13);
      v15 = CFAutorelease(v14);

      objc_sync_exit(v9);
    }

    else
    {
      objc_sync_exit(v9);

      CopyWithAttributes = CTFontCreateCopyWithAttributes([(CRLWPFont *)self ctFont], a3, 0, 0);
      v17 = [(CRLWPFont *)self alternatePlatformFonts];
      objc_sync_enter(v17);
      v18 = [(CRLWPFont *)self alternatePlatformFonts];
      [v18 setObject:CopyWithAttributes forKeyedSubscript:v8];

      objc_sync_exit(v17);
      v15 = CFAutorelease(CopyWithAttributes);
    }

    return v15;
  }
}

- (__CTFont)ctFontForSize:(double)a3 bold:(BOOL)a4 italic:(BOOL)a5 traits:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = a6;
  v11 = [(CRLWPFont *)self postScriptName];
  v12 = [CRLWPFontCacheKey cacheKeyWithFontName:v11 fontSize:v7 bold:v6 italic:v10 fontFeatures:a3];

  v13 = [(CRLWPFont *)self alternatePlatformFonts];
  objc_sync_enter(v13);
  v14 = [(CRLWPFont *)self alternatePlatformFonts];
  v15 = [v14 objectForKeyedSubscript:v12];

  if (v15)
  {
    v16 = [(CRLWPFont *)self alternatePlatformFonts];
    v17 = [v16 objectForKeyedSubscript:v12];
    v18 = CFRetain(v17);
    v19 = CFAutorelease(v18);
  }

  else
  {
    objc_sync_exit(v13);

    v19 = [(CRLWPFont *)self ctFontForSize:v7 bold:v6 italic:a3];
    if ([v10 count])
    {
      v20 = CTFontCopyFontDescriptor(v19);
      if (v20)
      {
        v21 = v20;
        v22 = [[NSDictionary alloc] initWithObjectsAndKeys:{v10, kCTFontFeatureSettingsAttribute, 0}];
        CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v21, v22);
        CFRelease(v21);
        if (CopyWithAttributes)
        {
          v24 = CTFontCreateWithFontDescriptor(CopyWithAttributes, a3, 0);
          CFRelease(CopyWithAttributes);
          if (v24)
          {
            v19 = CFAutorelease(v24);
          }
        }
      }
    }

    v13 = [(CRLWPFont *)self alternatePlatformFonts];
    objc_sync_enter(v13);
    v16 = [(CRLWPFont *)self alternatePlatformFonts];
    [v16 setObject:v19 forKeyedSubscript:v12];
  }

  objc_sync_exit(v13);
  return v19;
}

- (__CTFont)ctFontForSize:(double)a3 bold:(BOOL)a4 italic:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = [(CRLWPFont *)self postScriptName];
  v10 = [CRLWPFontCacheKey cacheKeyWithFontName:v9 fontSize:v6 bold:v5 italic:0 fontFeatures:a3];

  v11 = [(CRLWPFont *)self alternatePlatformFonts];
  objc_sync_enter(v11);
  v12 = [(CRLWPFont *)self alternatePlatformFonts];
  v13 = [v12 objectForKeyedSubscript:v10];

  if (!v13)
  {
    objc_sync_exit(v11);

    v18 = CFRetain([(CRLWPFont *)self ctFontForSize:a3]);
    SymbolicTraits = CTFontGetSymbolicTraits(v18);
    v20 = SymbolicTraits;
    if (((SymbolicTraits & 2) == 0) == v6)
    {
      v21 = v6 ? 2 : 0;
      CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(v18, a3, 0, SymbolicTraits & 0xFFFFFFFD | v21, 2u);
      if (CopyWithSymbolicTraits)
      {
        v23 = CopyWithSymbolicTraits;
        if (v18 != CopyWithSymbolicTraits)
        {
          CFRelease(v18);
LABEL_12:
          if ((v20 & 1) != v5)
          {
            v24 = CTFontCreateCopyWithSymbolicTraits(v23, a3, 0, v20 & 0xFFFFFFFE | v5, 1u);
            if (v24)
            {
              v25 = v24;
              if (v23 != v24)
              {
                CFRelease(v23);
LABEL_18:
                v26 = [(CRLWPFont *)self alternatePlatformFonts];
                objc_sync_enter(v26);
                v27 = [(CRLWPFont *)self alternatePlatformFonts];
                [v27 setObject:v25 forKeyedSubscript:v10];

                objc_sync_exit(v26);
                v17 = CFAutorelease(v25);
                goto LABEL_19;
              }

              CFRelease(v24);
            }
          }

          v25 = v23;
          goto LABEL_18;
        }

        CFRelease(CopyWithSymbolicTraits);
      }
    }

    v23 = v18;
    goto LABEL_12;
  }

  v14 = [(CRLWPFont *)self alternatePlatformFonts];
  v15 = [v14 objectForKeyedSubscript:v10];
  v16 = CFRetain(v15);
  v17 = CFAutorelease(v16);

  objc_sync_exit(v11);
LABEL_19:

  return v17;
}

- (id)copyWithSize:(double)a3
{
  v4 = [(CRLWPFont *)self ctFontForSize:a3];
  v5 = [(__CTFont *)v4 fontName];
  if (![(CRLWPFont *)self isRequestedFont])
  {
    v6 = [(CRLWPFont *)self desiredPostScriptName];

    v5 = v6;
  }

  v7 = [CRLWPFont alloc];
  v8 = [(CRLWPFont *)self type];
  v9 = [(CRLWPFont *)self localizedFamilyName];
  v10 = [(CRLWPFont *)v7 initWithDesiredPostScriptName:v5 platformFontDescriptor:0 andPlatformFont:v4 ofType:v8 localizedFamilyName:v9];

  return v10;
}

- (id)copyWithSize:(double)a3 bold:(BOOL)a4 italic:(BOOL)a5
{
  v6 = [(CRLWPFont *)self ctFontForSize:a4 bold:a5 italic:a3];
  v7 = [(__CTFont *)v6 fontName];
  if (![(CRLWPFont *)self isRequestedFont])
  {
    v8 = [(CRLWPFont *)self desiredPostScriptName];

    v7 = v8;
  }

  v9 = [CRLWPFont alloc];
  v10 = [(CRLWPFont *)self type];
  v11 = [(CRLWPFont *)self localizedFamilyName];
  v12 = [(CRLWPFont *)v9 initWithDesiredPostScriptName:v7 platformFontDescriptor:0 andPlatformFont:v6 ofType:v10 localizedFamilyName:v11];

  return v12;
}

- (id)copyWithSize:(double)a3 bold:(BOOL)a4 italic:(BOOL)a5 traits:(id)a6
{
  v7 = [(CRLWPFont *)self ctFontForSize:a4 bold:a5 italic:a6 traits:a3];
  v8 = [(__CTFont *)v7 fontName];
  if (![(CRLWPFont *)self isRequestedFont])
  {
    v9 = [(CRLWPFont *)self desiredPostScriptName];

    v8 = v9;
  }

  v10 = [CRLWPFont alloc];
  v11 = [(CRLWPFont *)self type];
  v12 = [(CRLWPFont *)self localizedFamilyName];
  v13 = [(CRLWPFont *)v10 initWithDesiredPostScriptName:v8 platformFontDescriptor:0 andPlatformFont:v7 ofType:v11 localizedFamilyName:v12];

  return v13;
}

- (NSString)displayName
{
  v3 = [(CRLWPFont *)self localizedFamilyName];
  if ([(CRLWPFont *)self isFallbackFont]|| !v3)
  {
    v4 = [(CRLWPFont *)self desiredPostScriptName];

    v3 = v4;
  }

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CRLWPFont *)self displayName];
  v6 = [(CRLWPFont *)self desiredPostScriptName];
  if ([(CRLWPFont *)self isFallbackFont])
  {
    v7 = @"Fallback";
  }

  else
  {
    v7 = @"Requested";
  }

  v8 = [(CRLWPFont *)self postScriptName];
  [(CRLWPFont *)self size];
  v10 = [NSString stringWithFormat:@"%@: <%p> Display: %@ (Wanted: %@ - Status: %@ as: %@) @ %.2fpts", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

- (NSArray)familyFaces
{
  v3 = objc_opt_class();
  v4 = [(CRLWPFont *)self familyName];
  v5 = [v3 facesOfFontFamily:v4];

  return v5;
}

- (double)size
{
  v2 = [(CRLWPFont *)self platformFont];
  [v2 pointSize];
  v4 = v3;

  return v4;
}

- (CRLWPFont)baseFont
{
  if ([(CRLWPFont *)self isRequestedFont])
  {
    v3 = objc_opt_class();
    v4 = [(CRLWPFont *)self familyName];
    v5 = [v3 postScriptNameForFamilyName:v4];
    v6 = [CRLWPFont fontWithDesiredPostScriptName:v5];
  }

  else
  {
    v4 = [(CRLWPFont *)self desiredPostScriptName];
    v6 = [CRLWPFont fontWithDesiredPostScriptName:v4];
  }

  return v6;
}

+ (id)facesOfFontFamily:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v31 = kCTFontFamilyNameAttribute;
    v32 = v3;
    v5 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v6 = CTFontDescriptorCreateWithAttributes(v5);
    v24 = objc_opt_new();
    if (!v6)
    {
      goto LABEL_25;
    }

    MatchingFontDescriptors = CTFontDescriptorCreateMatchingFontDescriptors(v6, 0);
    if (MatchingFontDescriptors)
    {
      v20 = v6;
      v22 = v5;
      v23 = v4;
      v8 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(MatchingFontDescriptors, "count")}];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v21 = MatchingFontDescriptors;
      obj = MatchingFontDescriptors;
      v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v27;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v26 + 1) + 8 * i);
            v14 = CTFontDescriptorCopyAttributes(v13);
            if (([v8 containsObject:v14] & 1) == 0)
            {
              v15 = CTFontDescriptorCopyLocalizedAttribute(v13, kCTFontStyleNameAttribute, 0);
              v16 = CTFontDescriptorCopyAttribute(v13, kCTFontNameAttribute);
              v17 = [CRLWPFontFace fontFaceWithPostScriptName:v16 faceName:v15];
              [v24 addObject:v17];

              [v8 addObject:v14];
            }
          }

          v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v10);
      }

      v5 = v22;
      v4 = v23;
      v6 = v20;
      MatchingFontDescriptors = v21;
    }

    CFRelease(v6);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130DD40();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DD54();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130DDE8();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v18);
    }

    v5 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLWPFont facesOfFontFamily:]");
    MatchingFontDescriptors = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Fonts/CRLWPFont.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:MatchingFontDescriptors lineNumber:590 isFatal:0 description:"invalid nil value for '%{public}s'", "fontFamily"];
    v24 = &__NSArray0__struct;
  }

LABEL_25:

  return v24;
}

+ (id)postScriptNameForFamilyName:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v13 = kCTFontFamilyNameAttribute;
    v14 = v3;
    v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v6 = CTFontDescriptorCreateWithAttributes(v5);
    if (v6)
    {
      v7 = v6;
      v8 = CTFontDescriptorCopyAttribute(v6, kCTFontNameAttribute);
      CFRelease(v7);
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10130DE10();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DE38();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10130DECC();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLWPFont postScriptNameForFamilyName:]");
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Fonts/CRLWPFont.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:627 isFatal:0 description:"invalid nil value for '%{public}s'", "desc"];

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end