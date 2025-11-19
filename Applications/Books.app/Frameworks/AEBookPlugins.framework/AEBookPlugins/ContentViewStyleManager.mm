@interface ContentViewStyleManager
+ (id)_templateCompatibleThemesForTraitCollection:(id)a3;
+ (id)getInlineStyleSheetForConfiguration:(id)a3 bookInfo:(id)a4 contentLayoutSize:(CGSize)a5 webkit2:(BOOL)a6;
+ (id)getPictureBookUserStyleSheetWithLegacyBook:(BOOL)a3;
+ (id)templateSet;
+ (void)initialize;
@end

@implementation ContentViewStyleManager

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

+ (id)getPictureBookUserStyleSheetWithLegacyBook:(BOOL)a3
{
  v3 = a3;
  v4 = [a1 templateSet];
  v19 = @"legacyBook";
  v5 = [NSNumber numberWithBool:v3];
  v20 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v12 = 0;
  v7 = [v4 evaluateTemplateWithName:@"picturebook" withData:v6 error:&v12];
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

+ (id)_templateCompatibleThemesForTraitCollection:(id)a3
{
  v3 = a3;
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
        v12 = [v10 stableIdentifier];
        [v11 setObject:v12 forKeyedSubscript:@"identifier"];

        v13 = [v10 gaijiImageFilter];
        [v11 setObject:v13 forKeyedSubscript:@"gaijiImageFilter"];

        v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 shouldInvertContent]);
        [v11 setObject:v14 forKeyedSubscript:@"shouldInvertContent"];

        v15 = [v10 backgroundsByLevel];
        [v11 setObject:v15 forKeyedSubscript:@"backgroundsByLevel"];

        v16 = [v10 contentTextColor];
        [v11 setObject:v16 forKeyedSubscript:@"contentTextColor"];

        v17 = [v10 linkActiveColor];
        [v11 setObject:v17 forKeyedSubscript:@"linkActiveColor"];

        v18 = [v10 linkColor];
        [v11 setObject:v18 forKeyedSubscript:@"linkColor"];

        v19 = [v10 linkVisitedColor];
        [v11 setObject:v19 forKeyedSubscript:@"linkVisitedColor"];

        v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 overlayContentBackgroundColor]);
        [v11 setObject:v20 forKeyedSubscript:@"overlayContentBackgroundColor"];

        v21 = [v10 backgroundColorForTraitCollection:v3];
        [v11 setObject:v21 forKeyedSubscript:@"contentBackgroundColor"];

        [v5 addObject:v11];
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)getInlineStyleSheetForConfiguration:(id)a3 bookInfo:(id)a4 contentLayoutSize:(CGSize)a5 webkit2:(BOOL)a6
{
  v6 = a6;
  height = a5.height;
  width = a5.width;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (!v10)
  {
    v25 = 0;
    goto LABEL_40;
  }

  v75 = v6;
  v13 = [v11 language];
  v14 = v13;
  v15 = BEiBooksDefaultLanguage;
  if (v13)
  {
    v15 = v13;
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

  v70 = [v10 isScroll];
  v18 = [v10 layout];
  v19 = [v12 respectImageSizeClass];
  v20 = [v19 length];

  v77 = v12;
  if (v20)
  {
    v21 = [v12 respectImageSizeClassIsPrefix];
    v22 = [v12 respectImageSizeClass];
    v23 = v22;
    if (v21)
    {
      v24 = @"[class|=%@]";
    }

    else
    {
      v24 = @"[class~=%@]";
    }

    v83 = [NSString stringWithFormat:v24, v22];
  }

  else
  {
    v83 = &stru_1E7188;
  }

  v26 = [v10 style];
  v78 = v10;
  v27 = [v10 environment];
  v28 = [v27 traitCollection];
  v82 = [ContentViewStyleManager _templateCompatibleThemesForTraitCollection:v28];

  [v26 lineHeight];
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

  v35 = [v34 fontFaceMappings];
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_AD158;
  v86 = &unk_1E5180;
  v74 = v33;
  v87 = v74;
  [v35 enumerateKeysAndObjectsUsingBlock:buf];

  v73 = [NSNumber numberWithBool:v31];
  v72 = [NSNumber numberWithDouble:width];
  v71 = [NSNumber numberWithDouble:height];
  v36 = v26;
  v37 = [v36 fontFamily];
  if (![v37 length])
  {

    goto LABEL_22;
  }

  v38 = [v36 justification];

  if ((v38 & 1) == 0)
  {
LABEL_22:
    v39 = @"-webkit-auto";
    goto LABEL_23;
  }

  v39 = @"justify";
LABEL_23:
  v69 = v39;

  v65 = [NSNumber numberWithBool:v20 != 0];
  v40 = [v36 autoHyphenate];
  v41 = @"manual";
  if (v40)
  {
    v41 = @"auto";
  }

  v64 = v41;
  v42 = [v36 optimizeLegibility];
  v43 = @"optimizeLegibility";
  if (!v42)
  {
    v43 = @"auto";
  }

  v63 = v43;
  v80 = [NSNumber numberWithDouble:v17];
  v68 = [v36 fontFamily];
  v44 = [v68 imSanitizedFontFamilyName];
  v67 = v44;
  v45 = &stru_1E7188;
  if (v44)
  {
    v45 = v44;
  }

  v62 = v45;
  v66 = [v36 fontFamily];
  v79 = sub_AC428(v66, v32);
  v46 = [NSNumber numberWithBool:isPhone()];
  v47 = [NSNumber numberWithBool:v70];
  v48 = [NSNumber numberWithBool:v18 == &dword_0 + 3];
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

  v10 = v78;
LABEL_40:

  return v25;
}

@end