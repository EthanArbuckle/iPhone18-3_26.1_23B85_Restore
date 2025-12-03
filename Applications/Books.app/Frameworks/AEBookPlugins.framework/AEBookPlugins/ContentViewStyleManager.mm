@interface ContentViewStyleManager
+ (id)_templateCompatibleThemesForTraitCollection:(id)collection;
+ (id)getInlineStyleSheetForConfiguration:(id)configuration bookInfo:(id)info contentLayoutSize:(CGSize)size webkit2:(BOOL)webkit2;
+ (id)getPictureBookUserStyleSheetWithLegacyBook:(BOOL)book;
+ (id)templateSet;
+ (void)initialize;
@end

@implementation ContentViewStyleManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_alloc_init(NSMutableSet);
    v3 = qword_22D0A0;
    qword_22D0A0 = v2;

    _objc_release_x1(v2, v3);
  }
}

+ (id)templateSet
{
  if (qword_22D0B0 != -1)
  {
    sub_13847C();
  }

  v3 = qword_22D0A8;

  return v3;
}

+ (id)getPictureBookUserStyleSheetWithLegacyBook:(BOOL)book
{
  bookCopy = book;
  templateSet = [self templateSet];
  v19 = @"legacyBook";
  v5 = [NSNumber numberWithBool:bookCopy];
  v20 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v12 = 0;
  v7 = [templateSet evaluateTemplateWithName:@"picturebook" withData:v6 error:&v12];
  v8 = v12;

  if (!v7)
  {
    v9 = BCIMLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v14 = "+[ContentViewStyleManager getPictureBookUserStyleSheetWithLegacyBook:]";
      v15 = 2080;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Utilities/StyleManager/ContentViewStyleManager.m";
      v17 = 1024;
      v18 = 76;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v10 = BCIMLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "@Error evaluating user_stylesheet_picturebook.css.tmpl: %@", buf, 0xCu);
    }

    v7 = &stru_1E7188;
  }

  return v7;
}

+ (id)_templateCompatibleThemesForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [NSMutableArray alloc];
  v5 = [v4 initWithCapacity:{objc_msgSend(qword_22D0A0, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = qword_22D0A0;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v10 = BUDynamicCast();
        v11 = objc_alloc_init(NSMutableDictionary);
        stableIdentifier = [v10 stableIdentifier];
        [v11 setObject:stableIdentifier forKeyedSubscript:@"identifier"];

        gaijiImageFilter = [v10 gaijiImageFilter];
        [v11 setObject:gaijiImageFilter forKeyedSubscript:@"gaijiImageFilter"];

        v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 shouldInvertContent]);
        [v11 setObject:v14 forKeyedSubscript:@"shouldInvertContent"];

        backgroundsByLevel = [v10 backgroundsByLevel];
        [v11 setObject:backgroundsByLevel forKeyedSubscript:@"backgroundsByLevel"];

        contentTextColor = [v10 contentTextColor];
        [v11 setObject:contentTextColor forKeyedSubscript:@"contentTextColor"];

        linkActiveColor = [v10 linkActiveColor];
        [v11 setObject:linkActiveColor forKeyedSubscript:@"linkActiveColor"];

        linkColor = [v10 linkColor];
        [v11 setObject:linkColor forKeyedSubscript:@"linkColor"];

        linkVisitedColor = [v10 linkVisitedColor];
        [v11 setObject:linkVisitedColor forKeyedSubscript:@"linkVisitedColor"];

        v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 overlayContentBackgroundColor]);
        [v11 setObject:v20 forKeyedSubscript:@"overlayContentBackgroundColor"];

        v21 = [v10 backgroundColorForTraitCollection:collectionCopy];
        [v11 setObject:v21 forKeyedSubscript:@"contentBackgroundColor"];

        [v5 addObject:v11];
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)getInlineStyleSheetForConfiguration:(id)configuration bookInfo:(id)info contentLayoutSize:(CGSize)size webkit2:(BOOL)webkit2
{
  webkit2Copy = webkit2;
  height = size.height;
  width = size.width;
  configurationCopy = configuration;
  infoCopy = info;
  v12 = infoCopy;
  if (!configurationCopy)
  {
    v25 = 0;
    goto LABEL_40;
  }

  v75 = webkit2Copy;
  language = [infoCopy language];
  v14 = language;
  v15 = BEiBooksDefaultLanguage;
  if (language)
  {
    v15 = language;
  }

  v16 = v15;

  v17 = width;
  if (isPad())
  {
    if (isPortrait())
    {
      v17 = width;
    }

    else
    {
      v17 = width * 1.39999998;
    }
  }

  isScroll = [configurationCopy isScroll];
  layout = [configurationCopy layout];
  respectImageSizeClass = [v12 respectImageSizeClass];
  v20 = [respectImageSizeClass length];

  v77 = v12;
  if (v20)
  {
    respectImageSizeClassIsPrefix = [v12 respectImageSizeClassIsPrefix];
    respectImageSizeClass2 = [v12 respectImageSizeClass];
    v23 = respectImageSizeClass2;
    if (respectImageSizeClassIsPrefix)
    {
      v24 = @"[class|=%@]";
    }

    else
    {
      v24 = @"[class~=%@]";
    }

    v83 = [NSString stringWithFormat:v24, respectImageSizeClass2];
  }

  else
  {
    v83 = &stru_1E7188;
  }

  style = [configurationCopy style];
  v78 = configurationCopy;
  environment = [configurationCopy environment];
  traitCollection = [environment traitCollection];
  v82 = [ContentViewStyleManager _templateCompatibleThemesForTraitCollection:traitCollection];

  [style lineHeight];
  if (v29 == 1.0)
  {
    v30 = +[NSUserDefaults standardUserDefaults];
    v31 = [v30 BOOLForKey:@"BKUseOldFontStepsAndSpacing"];
  }

  else
  {
    v31 = &dword_0 + 1;
  }

  v32 = v16;
  v33 = +[NSMutableDictionary dictionary];
  v34 = [BKStyleManager styleManagerWithLanguage:v32];
  v81 = v32;

  fontFaceMappings = [v34 fontFaceMappings];
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_AD158;
  v86 = &unk_1E5180;
  v74 = v33;
  v87 = v74;
  [fontFaceMappings enumerateKeysAndObjectsUsingBlock:buf];

  v73 = [NSNumber numberWithBool:v31];
  v72 = [NSNumber numberWithDouble:width];
  v71 = [NSNumber numberWithDouble:height];
  v36 = style;
  fontFamily = [v36 fontFamily];
  if (![fontFamily length])
  {

    goto LABEL_22;
  }

  justification = [v36 justification];

  if ((justification & 1) == 0)
  {
LABEL_22:
    v39 = @"-webkit-auto";
    goto LABEL_23;
  }

  v39 = @"justify";
LABEL_23:
  v69 = v39;

  v65 = [NSNumber numberWithBool:v20 != 0];
  autoHyphenate = [v36 autoHyphenate];
  v41 = @"manual";
  if (autoHyphenate)
  {
    v41 = @"auto";
  }

  v64 = v41;
  optimizeLegibility = [v36 optimizeLegibility];
  v43 = @"optimizeLegibility";
  if (!optimizeLegibility)
  {
    v43 = @"auto";
  }

  v63 = v43;
  v80 = [NSNumber numberWithDouble:v17];
  fontFamily2 = [v36 fontFamily];
  imSanitizedFontFamilyName = [fontFamily2 imSanitizedFontFamilyName];
  v67 = imSanitizedFontFamilyName;
  v45 = &stru_1E7188;
  if (imSanitizedFontFamilyName)
  {
    v45 = imSanitizedFontFamilyName;
  }

  v62 = v45;
  fontFamily3 = [v36 fontFamily];
  v79 = sub_AC428(fontFamily3, v32);
  v46 = [NSNumber numberWithBool:isPhone()];
  v47 = [NSNumber numberWithBool:isScroll];
  v48 = [NSNumber numberWithBool:layout == &dword_0 + 3];
  v49 = [NSNumber numberWithBool:sub_AD084(v32, @"ja")];
  v50 = [NSNumber numberWithBool:sub_AD084(v32, @"zh")];
  if ([BKStyleManager languageIsSimplifiedChinese:v32])
  {
    v51 = @"'Songti SC', 'Songti TC'";
  }

  else
  {
    v51 = @"'Songti TC', 'Songti SC'";
  }

  v52 = [NSNumber numberWithBool:v75];
  v76 = v36;
  v53 = [NSDictionary dictionaryWithObjectsAndKeys:v74, @"fonts", v73, @"useLineHeight", v72, @"pageWidth", v71, @"pageHeight", v69, @"justification", v32, @"language", v82, @"themes", v83, @"respectImageSizeSelector", v65, @"respectImageSizeSelectorIsGaiji", v64, @"hyphens", v63, @"textRendering", v80, @"tdClamp", v62, @"fontFamily", v79, @"fontFallbacks", v46, @"isPhone", &__kCFBooleanTrue, @"isIOS", v47, @"isScrollMode", v48, @"scrollModeIsHorizontal", v49, @"isJapanese", v50, @"isChinese", v51, @"defaultChineseFont", v52, @"isWKTwo", v36, @"style", 0];

  v54 = v53;
  v55 = +[ContentViewStyleManager templateSet];
  v84 = 0;
  v56 = [v55 evaluateTemplateWithName:@"flowable" withData:v53 error:&v84];
  v57 = v84;

  if (v56)
  {
    v25 = v56;
    v58 = v76;
    v12 = v77;
  }

  else
  {
    v59 = BCIMLog();
    v12 = v77;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "+[ContentViewStyleManager(StylesheetGeneration) getInlineStyleSheetForConfiguration:bookInfo:contentLayoutSize:webkit2:]";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Utilities/StyleManager/ContentViewStyleManager.m";
      *&buf[22] = 1024;
      LODWORD(v86) = 353;
      _os_log_impl(&dword_0, v59, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v60 = BCIMLog();
    v58 = v76;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v57;
      _os_log_impl(&dword_0, v60, OS_LOG_TYPE_INFO, "@Error evaluating user_stylesheet.css.tmpl: %@", buf, 0xCu);
    }

    v25 = &stru_1E7188;
  }

  configurationCopy = v78;
LABEL_40:

  return v25;
}

@end