@interface CRLWPFont
+ (BOOL)isSystemFontName:(id)name;
+ (BOOL)isSystemUIFontIdentifier:(id)identifier;
+ (CRLWPFont)fontWithDesiredPostScriptName:(id)name;
+ (CRLWPFont)fontWithDesiredPostScriptName:(id)name atSize:(double)size;
+ (CRLWPFont)fontWithDesiredPostScriptName:(id)name fallbackFont:(id)font ofType:(unint64_t)type;
+ (CRLWPFont)fontWithOpaqueIdentifier:(id)identifier;
+ (id)baseFontForFamilyName:(id)name;
+ (id)baseFontWithDescriptor:(id)descriptor;
+ (id)facesOfFontFamily:(id)family;
+ (id)loadPlatformFontForPostScriptName:(id)name size:(double)size;
+ (id)loadPlatformFontOrFallbackForPostScriptName:(id)name size:(double)size foundType:(unint64_t *)type;
+ (id)localizedFamilyNameForPlatformFont:(id)font;
+ (id)localizedMasqueradingFontFamilyNames;
+ (id)masqueradingFontNames;
+ (id)missingFont;
+ (id)postScriptNameForFamilyName:(id)name;
+ (id)systemFontOfSize:(double)size withWeight:(double)weight;
+ (unint64_t)optionsForLoadingPlatformFontWithPostScriptName:(id)name;
- (BOOL)isBaseFontEqualToBaseFontFor:(id)for;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMasqueradingFontName;
- (CRLWPFont)baseFont;
- (CRLWPFont)initWithDesiredPostScriptName:(id)name platformFontDescriptor:(id)descriptor andPlatformFont:(id)font ofType:(unint64_t)type localizedFamilyName:(id)familyName;
- (CRLWPFont)initWithDesiredPostScriptName:(id)name size:(double)size;
- (NSArray)familyFaces;
- (NSString)desiredPostScriptName;
- (NSString)displayName;
- (__CTFont)ctFont;
- (__CTFont)ctFontForSize:(double)size;
- (__CTFont)ctFontForSize:(double)size bold:(BOOL)bold italic:(BOOL)italic;
- (__CTFont)ctFontForSize:(double)size bold:(BOOL)bold italic:(BOOL)italic traits:(id)traits;
- (double)size;
- (id)copyWithSize:(double)size;
- (id)copyWithSize:(double)size bold:(BOOL)bold italic:(BOOL)italic;
- (id)copyWithSize:(double)size bold:(BOOL)bold italic:(BOOL)italic traits:(id)traits;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation CRLWPFont

+ (id)missingFont
{
  missingFontPostScriptName = [self missingFontPostScriptName];
  v3 = [CRLWPFont fontWithDesiredPostScriptName:missingFontPostScriptName];

  return v3;
}

+ (id)systemFontOfSize:(double)size withWeight:(double)weight
{
  v6 = [UIFont systemFontOfSize:size weight:?];
  v7 = [self alloc];
  v8 = [_TtC8Freeform20CRLWPSystemFontNames nameForWeight:weight];
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

+ (CRLWPFont)fontWithDesiredPostScriptName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] initWithDesiredPostScriptName:nameCopy size:0.0];

  return v5;
}

+ (CRLWPFont)fontWithOpaqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  familyName = [identifierCopy familyName];

  if (familyName)
  {
    familyName2 = [identifierCopy familyName];

    [self baseFontForFamilyName:familyName2];
  }

  else
  {
    familyName2 = [identifierCopy desiredPostScriptName];

    [self fontWithDesiredPostScriptName:familyName2];
  }
  v7 = ;

  return v7;
}

+ (CRLWPFont)fontWithDesiredPostScriptName:(id)name fallbackFont:(id)font ofType:(unint64_t)type
{
  fontCopy = font;
  nameCopy = name;
  v10 = [self alloc];
  platformFont = [fontCopy platformFont];

  v12 = [v10 initWithDesiredPostScriptName:nameCopy platformFontDescriptor:0 andPlatformFont:platformFont ofType:type];

  return v12;
}

+ (CRLWPFont)fontWithDesiredPostScriptName:(id)name atSize:(double)size
{
  nameCopy = name;
  v7 = [[self alloc] initWithDesiredPostScriptName:nameCopy size:size];

  return v7;
}

+ (id)baseFontWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = CTFontCreateWithFontDescriptor(descriptorCopy, 0.0, 0);
  v6 = [self alloc];
  postscriptName = [(__CTFontDescriptor *)descriptorCopy postscriptName];
  v8 = [v6 initWithDesiredPostScriptName:postscriptName platformFontDescriptor:descriptorCopy andPlatformFont:v5 ofType:1];

  return v8;
}

+ (id)baseFontForFamilyName:(id)name
{
  nameCopy = name;
  helveticaFont = [self helveticaFont];
  familyName = [helveticaFont familyName];
  v7 = [nameCopy isEqual:familyName];

  if (v7)
  {
    helveticaFont2 = [self helveticaFont];
  }

  else
  {
    if (nameCopy)
    {
      v24 = kCTFontFamilyNameAttribute;
      v25 = nameCopy;
      v9 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v10 = CTFontDescriptorCreateWithAttributes(v9);
      if (v10)
      {
        v11 = v10;
        v12 = CTFontCreateWithFontDescriptor(v10, 0.0, 0);
        fontName = [(__CTFont *)v12 fontName];
        v14 = +[CRLWPFont missingFontPostScriptName];
        v15 = [fontName isEqual:v14];

        v16 = [CRLWPFont alloc];
        v17 = v16;
        if (v15)
        {
          v18 = [(CRLWPFont *)v16 initWithDesiredPostScriptName:nameCopy];
        }

        else
        {
          fontName2 = [(__CTFont *)v12 fontName];
          v18 = [(CRLWPFont *)v17 initWithDesiredPostScriptName:fontName2 platformFontDescriptor:v11 andPlatformFont:v12 ofType:1];
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

    helveticaFont2 = [self missingFont];
  }

  v18 = helveticaFont2;
LABEL_20:

  return v18;
}

+ (id)loadPlatformFontOrFallbackForPostScriptName:(id)name size:(double)size foundType:(unint64_t *)type
{
  nameCopy = name;
  *type = 1;
  p_superclass = &OBJC_METACLASS___CRLTemporaryDirectory.superclass;
  v10 = +[CRLWPFontVerifier sharedInstance];
  if ([self isSystemUIFontIdentifier:nameCopy])
  {
    [_TtC8Freeform20CRLWPSystemFontNames weightForName:nameCopy];
    v12 = [UIFont systemFontOfSize:size weight:v11];
    goto LABEL_5;
  }

  if ([v10 isFontWithPostscriptNameInstalled:nameCopy])
  {
    v12 = [self loadPlatformFontForPostScriptName:nameCopy size:size];
LABEL_5:
    v13 = v12;
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v28 = +[CRLWPFallbackFontList sharedInstance];
  [v28 fallbackListForPostscriptFontName:nameCopy];
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
  typeCopy = type;
  while (2)
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v30 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v29 + 1) + 8 * i);
      if ([v10 isFontWithPostscriptNameInstalled:{v21, typeCopy}])
      {
        v13 = [self loadPlatformFontForPostScriptName:v21 size:size];
        masqueradingFontNames = [self masqueradingFontNames];
        v25 = [masqueradingFontNames containsObject:v21];

        v26 = 2;
        if (v25)
        {
          v26 = 3;
        }

        goto LABEL_25;
      }

      masqueradingFontNames2 = [self masqueradingFontNames];
      v23 = [masqueradingFontNames2 containsObject:v21];

      if (v23)
      {
        v13 = [self loadPlatformFontForPostScriptName:v21 size:size];
        v26 = 3;
LABEL_25:
        type = typeCopy;
        *typeCopy = v26;
        p_superclass = (&OBJC_METACLASS___CRLTemporaryDirectory + 8);
        goto LABEL_26;
      }
    }

    v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    v13 = 0;
    type = typeCopy;
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
    missingFontName = [p_superclass + 414 missingFontName];
    v13 = [self loadPlatformFontForPostScriptName:missingFontName size:size];

    *type = 2;
  }

LABEL_7:

  return v13;
}

+ (BOOL)isSystemFontName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    v4 = [nameCopy characterAtIndex:0] == 46;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isSystemUIFontIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[_TtC8Freeform20CRLWPSystemFontNames allSystemFontNames];
  v5 = [v4 containsObject:identifierCopy];

  return v5;
}

+ (unint64_t)optionsForLoadingPlatformFontWithPostScriptName:(id)name
{
  if ([self isSystemFontName:name])
  {
    return 1024;
  }

  else
  {
    return 0;
  }
}

+ (id)loadPlatformFontForPostScriptName:(id)name size:(double)size
{
  nameCopy = name;
  v7 = CTFontCreateWithNameAndOptions(nameCopy, size, 0, [self optionsForLoadingPlatformFontWithPostScriptName:nameCopy]);

  return v7;
}

+ (id)localizedFamilyNameForPlatformFont:(id)font
{
  fontCopy = font;
  if ([CRLWPFont isSystemUIFontRef:fontCopy])
  {
    v5 = +[NSBundle mainBundle];
    familyName = [v5 localizedStringForKey:@"System Font" value:0 table:0];
  }

  else
  {
    fontName = [fontCopy fontName];
    v8 = [self isSystemFontName:fontName];

    if (v8 || (familyName = CTFontCopyLocalizedName(fontCopy, kCTFontFamilyNameKey, 0)) == 0)
    {
      familyName = [fontCopy familyName];
    }
  }

  return familyName;
}

- (CRLWPFont)initWithDesiredPostScriptName:(id)name size:(double)size
{
  v10 = 0;
  nameCopy = name;
  v7 = [objc_opt_class() loadPlatformFontOrFallbackForPostScriptName:nameCopy size:&v10 foundType:size];
  v8 = [(CRLWPFont *)self initWithDesiredPostScriptName:nameCopy platformFontDescriptor:0 andPlatformFont:v7 ofType:v10];

  return v8;
}

- (CRLWPFont)initWithDesiredPostScriptName:(id)name platformFontDescriptor:(id)descriptor andPlatformFont:(id)font ofType:(unint64_t)type localizedFamilyName:(id)familyName
{
  nameCopy = name;
  descriptorCopy = descriptor;
  fontCopy = font;
  familyNameCopy = familyName;
  v17 = familyNameCopy;
  if (!nameCopy)
  {
    v47 = familyNameCopy;
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

    nameCopy = 0;
    v17 = v47;
  }

  v48.receiver = self;
  v48.super_class = CRLWPFont;
  v21 = [(CRLWPFont *)&v48 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_desiredPostScriptName, name);
    v22->_type = type;
    objc_storeStrong(&v22->_platformFont, font);
    if (descriptorCopy)
    {
      v23 = descriptorCopy;
    }

    else
    {
      v23 = CTFontCopyFontDescriptor(v22->_platformFont);
    }

    platformFontDescriptor = v22->_platformFontDescriptor;
    v22->_platformFontDescriptor = v23;

    familyName = [fontCopy familyName];

    if (familyName)
    {
      familyName2 = [fontCopy familyName];
    }

    else
    {
      familyName2 = &stru_1018BCA28;
    }

    familyName = v22->_familyName;
    v22->_familyName = &familyName2->isa;

    v28 = CTFontDescriptorCopyAttribute(v22->_platformFontDescriptor, kCTFontNameAttribute);
    postScriptName = v22->_postScriptName;
    v22->_postScriptName = v28;

    if (!v22->_postScriptName)
    {
      fontName = [fontCopy fontName];
      v31 = v22->_postScriptName;
      v22->_postScriptName = fontName;
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
      if (type == 3)
      {
        v36 = [v32 localizedNameForMasqueradingFontName:nameCopy];
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

        objc_storeStrong(&v22->_localizedFamilyName, name);
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

      v35 = [objc_opt_class() localizedFamilyNameForPlatformFont:fontCopy];
    }

    v39 = v22->_localizedFamilyName;
    v22->_localizedFamilyName = v35;
    goto LABEL_35;
  }

LABEL_47:

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLWPFont alloc];
  desiredPostScriptName = [(CRLWPFont *)self desiredPostScriptName];
  platformFont = [(CRLWPFont *)self platformFont];
  type = [(CRLWPFont *)self type];
  localizedFamilyName = [(CRLWPFont *)self localizedFamilyName];
  v9 = [(CRLWPFont *)v4 initWithDesiredPostScriptName:desiredPostScriptName platformFontDescriptor:0 andPlatformFont:platformFont ofType:type localizedFamilyName:localizedFamilyName];

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
  postScriptName = [(CRLWPFont *)self postScriptName];
  v5 = [v3 containsObject:postScriptName];

  return v5;
}

- (BOOL)isBaseFontEqualToBaseFontFor:(id)for
{
  forCopy = for;
  baseFont = [(CRLWPFont *)self baseFont];
  baseFont2 = [forCopy baseFont];

  LOBYTE(forCopy) = [baseFont isEqual:baseFont2];
  return forCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);

  if (v6 == self)
  {
    goto LABEL_5;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

  platformFont = [(CRLWPFont *)self platformFont];
  platformFont2 = [(CRLWPFont *)v6 platformFont];
  if (([platformFont isEqual:platformFont2] & 1) == 0)
  {

    goto LABEL_7;
  }

  desiredPostScriptName = [(CRLWPFont *)self desiredPostScriptName];
  desiredPostScriptName2 = [(CRLWPFont *)v6 desiredPostScriptName];
  v11 = [desiredPostScriptName isEqual:desiredPostScriptName2];

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
  platformFont = [(CRLWPFont *)self platformFont];
  v3 = CFRetain(platformFont);
  v4 = CFAutorelease(v3);

  return v4;
}

- (__CTFont)ctFontForSize:(double)size
{
  [(CRLWPFont *)self size];
  if (v5 == size)
  {

    return [(CRLWPFont *)self ctFont];
  }

  else
  {
    postScriptName = [(CRLWPFont *)self postScriptName];
    v8 = [CRLWPFontCacheKey cacheKeyWithFontName:postScriptName size:size];

    alternatePlatformFonts = [(CRLWPFont *)self alternatePlatformFonts];
    objc_sync_enter(alternatePlatformFonts);
    alternatePlatformFonts2 = [(CRLWPFont *)self alternatePlatformFonts];
    v11 = [alternatePlatformFonts2 objectForKeyedSubscript:v8];

    if (v11)
    {
      alternatePlatformFonts3 = [(CRLWPFont *)self alternatePlatformFonts];
      v13 = [alternatePlatformFonts3 objectForKeyedSubscript:v8];
      v14 = CFRetain(v13);
      v15 = CFAutorelease(v14);

      objc_sync_exit(alternatePlatformFonts);
    }

    else
    {
      objc_sync_exit(alternatePlatformFonts);

      CopyWithAttributes = CTFontCreateCopyWithAttributes([(CRLWPFont *)self ctFont], size, 0, 0);
      alternatePlatformFonts4 = [(CRLWPFont *)self alternatePlatformFonts];
      objc_sync_enter(alternatePlatformFonts4);
      alternatePlatformFonts5 = [(CRLWPFont *)self alternatePlatformFonts];
      [alternatePlatformFonts5 setObject:CopyWithAttributes forKeyedSubscript:v8];

      objc_sync_exit(alternatePlatformFonts4);
      v15 = CFAutorelease(CopyWithAttributes);
    }

    return v15;
  }
}

- (__CTFont)ctFontForSize:(double)size bold:(BOOL)bold italic:(BOOL)italic traits:(id)traits
{
  italicCopy = italic;
  boldCopy = bold;
  traitsCopy = traits;
  postScriptName = [(CRLWPFont *)self postScriptName];
  v12 = [CRLWPFontCacheKey cacheKeyWithFontName:postScriptName fontSize:boldCopy bold:italicCopy italic:traitsCopy fontFeatures:size];

  alternatePlatformFonts = [(CRLWPFont *)self alternatePlatformFonts];
  objc_sync_enter(alternatePlatformFonts);
  alternatePlatformFonts2 = [(CRLWPFont *)self alternatePlatformFonts];
  v15 = [alternatePlatformFonts2 objectForKeyedSubscript:v12];

  if (v15)
  {
    alternatePlatformFonts3 = [(CRLWPFont *)self alternatePlatformFonts];
    v17 = [alternatePlatformFonts3 objectForKeyedSubscript:v12];
    v18 = CFRetain(v17);
    v19 = CFAutorelease(v18);
  }

  else
  {
    objc_sync_exit(alternatePlatformFonts);

    v19 = [(CRLWPFont *)self ctFontForSize:boldCopy bold:italicCopy italic:size];
    if ([traitsCopy count])
    {
      v20 = CTFontCopyFontDescriptor(v19);
      if (v20)
      {
        v21 = v20;
        v22 = [[NSDictionary alloc] initWithObjectsAndKeys:{traitsCopy, kCTFontFeatureSettingsAttribute, 0}];
        CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v21, v22);
        CFRelease(v21);
        if (CopyWithAttributes)
        {
          v24 = CTFontCreateWithFontDescriptor(CopyWithAttributes, size, 0);
          CFRelease(CopyWithAttributes);
          if (v24)
          {
            v19 = CFAutorelease(v24);
          }
        }
      }
    }

    alternatePlatformFonts = [(CRLWPFont *)self alternatePlatformFonts];
    objc_sync_enter(alternatePlatformFonts);
    alternatePlatformFonts3 = [(CRLWPFont *)self alternatePlatformFonts];
    [alternatePlatformFonts3 setObject:v19 forKeyedSubscript:v12];
  }

  objc_sync_exit(alternatePlatformFonts);
  return v19;
}

- (__CTFont)ctFontForSize:(double)size bold:(BOOL)bold italic:(BOOL)italic
{
  italicCopy = italic;
  boldCopy = bold;
  postScriptName = [(CRLWPFont *)self postScriptName];
  v10 = [CRLWPFontCacheKey cacheKeyWithFontName:postScriptName fontSize:boldCopy bold:italicCopy italic:0 fontFeatures:size];

  alternatePlatformFonts = [(CRLWPFont *)self alternatePlatformFonts];
  objc_sync_enter(alternatePlatformFonts);
  alternatePlatformFonts2 = [(CRLWPFont *)self alternatePlatformFonts];
  v13 = [alternatePlatformFonts2 objectForKeyedSubscript:v10];

  if (!v13)
  {
    objc_sync_exit(alternatePlatformFonts);

    v18 = CFRetain([(CRLWPFont *)self ctFontForSize:size]);
    SymbolicTraits = CTFontGetSymbolicTraits(v18);
    v20 = SymbolicTraits;
    if (((SymbolicTraits & 2) == 0) == boldCopy)
    {
      v21 = boldCopy ? 2 : 0;
      CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(v18, size, 0, SymbolicTraits & 0xFFFFFFFD | v21, 2u);
      if (CopyWithSymbolicTraits)
      {
        v23 = CopyWithSymbolicTraits;
        if (v18 != CopyWithSymbolicTraits)
        {
          CFRelease(v18);
LABEL_12:
          if ((v20 & 1) != italicCopy)
          {
            v24 = CTFontCreateCopyWithSymbolicTraits(v23, size, 0, v20 & 0xFFFFFFFE | italicCopy, 1u);
            if (v24)
            {
              v25 = v24;
              if (v23 != v24)
              {
                CFRelease(v23);
LABEL_18:
                alternatePlatformFonts3 = [(CRLWPFont *)self alternatePlatformFonts];
                objc_sync_enter(alternatePlatformFonts3);
                alternatePlatformFonts4 = [(CRLWPFont *)self alternatePlatformFonts];
                [alternatePlatformFonts4 setObject:v25 forKeyedSubscript:v10];

                objc_sync_exit(alternatePlatformFonts3);
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

  alternatePlatformFonts5 = [(CRLWPFont *)self alternatePlatformFonts];
  v15 = [alternatePlatformFonts5 objectForKeyedSubscript:v10];
  v16 = CFRetain(v15);
  v17 = CFAutorelease(v16);

  objc_sync_exit(alternatePlatformFonts);
LABEL_19:

  return v17;
}

- (id)copyWithSize:(double)size
{
  v4 = [(CRLWPFont *)self ctFontForSize:size];
  fontName = [(__CTFont *)v4 fontName];
  if (![(CRLWPFont *)self isRequestedFont])
  {
    desiredPostScriptName = [(CRLWPFont *)self desiredPostScriptName];

    fontName = desiredPostScriptName;
  }

  v7 = [CRLWPFont alloc];
  type = [(CRLWPFont *)self type];
  localizedFamilyName = [(CRLWPFont *)self localizedFamilyName];
  v10 = [(CRLWPFont *)v7 initWithDesiredPostScriptName:fontName platformFontDescriptor:0 andPlatformFont:v4 ofType:type localizedFamilyName:localizedFamilyName];

  return v10;
}

- (id)copyWithSize:(double)size bold:(BOOL)bold italic:(BOOL)italic
{
  v6 = [(CRLWPFont *)self ctFontForSize:bold bold:italic italic:size];
  fontName = [(__CTFont *)v6 fontName];
  if (![(CRLWPFont *)self isRequestedFont])
  {
    desiredPostScriptName = [(CRLWPFont *)self desiredPostScriptName];

    fontName = desiredPostScriptName;
  }

  v9 = [CRLWPFont alloc];
  type = [(CRLWPFont *)self type];
  localizedFamilyName = [(CRLWPFont *)self localizedFamilyName];
  v12 = [(CRLWPFont *)v9 initWithDesiredPostScriptName:fontName platformFontDescriptor:0 andPlatformFont:v6 ofType:type localizedFamilyName:localizedFamilyName];

  return v12;
}

- (id)copyWithSize:(double)size bold:(BOOL)bold italic:(BOOL)italic traits:(id)traits
{
  v7 = [(CRLWPFont *)self ctFontForSize:bold bold:italic italic:traits traits:size];
  fontName = [(__CTFont *)v7 fontName];
  if (![(CRLWPFont *)self isRequestedFont])
  {
    desiredPostScriptName = [(CRLWPFont *)self desiredPostScriptName];

    fontName = desiredPostScriptName;
  }

  v10 = [CRLWPFont alloc];
  type = [(CRLWPFont *)self type];
  localizedFamilyName = [(CRLWPFont *)self localizedFamilyName];
  v13 = [(CRLWPFont *)v10 initWithDesiredPostScriptName:fontName platformFontDescriptor:0 andPlatformFont:v7 ofType:type localizedFamilyName:localizedFamilyName];

  return v13;
}

- (NSString)displayName
{
  localizedFamilyName = [(CRLWPFont *)self localizedFamilyName];
  if ([(CRLWPFont *)self isFallbackFont]|| !localizedFamilyName)
  {
    desiredPostScriptName = [(CRLWPFont *)self desiredPostScriptName];

    localizedFamilyName = desiredPostScriptName;
  }

  return localizedFamilyName;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  displayName = [(CRLWPFont *)self displayName];
  desiredPostScriptName = [(CRLWPFont *)self desiredPostScriptName];
  if ([(CRLWPFont *)self isFallbackFont])
  {
    v7 = @"Fallback";
  }

  else
  {
    v7 = @"Requested";
  }

  postScriptName = [(CRLWPFont *)self postScriptName];
  [(CRLWPFont *)self size];
  v10 = [NSString stringWithFormat:@"%@: <%p> Display: %@ (Wanted: %@ - Status: %@ as: %@) @ %.2fpts", v4, self, displayName, desiredPostScriptName, v7, postScriptName, v9];

  return v10;
}

- (NSArray)familyFaces
{
  v3 = objc_opt_class();
  familyName = [(CRLWPFont *)self familyName];
  v5 = [v3 facesOfFontFamily:familyName];

  return v5;
}

- (double)size
{
  platformFont = [(CRLWPFont *)self platformFont];
  [platformFont pointSize];
  v4 = v3;

  return v4;
}

- (CRLWPFont)baseFont
{
  if ([(CRLWPFont *)self isRequestedFont])
  {
    v3 = objc_opt_class();
    familyName = [(CRLWPFont *)self familyName];
    v5 = [v3 postScriptNameForFamilyName:familyName];
    v6 = [CRLWPFont fontWithDesiredPostScriptName:v5];
  }

  else
  {
    familyName = [(CRLWPFont *)self desiredPostScriptName];
    v6 = [CRLWPFont fontWithDesiredPostScriptName:familyName];
  }

  return v6;
}

+ (id)facesOfFontFamily:(id)family
{
  familyCopy = family;
  v4 = familyCopy;
  if (familyCopy)
  {
    v31 = kCTFontFamilyNameAttribute;
    v32 = familyCopy;
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

+ (id)postScriptNameForFamilyName:(id)name
{
  nameCopy = name;
  v4 = nameCopy;
  if (nameCopy)
  {
    v13 = kCTFontFamilyNameAttribute;
    v14 = nameCopy;
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