@interface AEAssetHTMLGenerator
- (AEAssetHTMLGenerator)init;
- (id)CSSClassForStyle:(int)a3;
- (id)bookInfoSection;
- (id)bookURL;
- (id)citationIncludingStoreURL:(BOOL)a3;
- (id)disclaimerSection;
- (id)documentString;
- (id)storeLink;
- (id)storeURL;
- (id)styleSection;
- (id)templateBasedDocumentString;
- (id)templateStringForName:(id)a3;
- (id)userPublishing:(id)a3 storeURLForStoreId:(id)a4;
- (id)userPublishing:(id)a3 tellAFriendEmailBaseURLForStoreId:(id)a4;
- (unint64_t)characterCountLimitforAnnotation:(id)a3;
@end

@implementation AEAssetHTMLGenerator

- (AEAssetHTMLGenerator)init
{
  v5.receiver = self;
  v5.super_class = AEAssetHTMLGenerator;
  v2 = [(AEAssetHTMLGenerator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AEAssetHTMLGenerator *)v2 setWordLimit:200];
  }

  return v3;
}

- (id)documentString
{
  if (-[AEAssetHTMLGenerator isSeries](self, "isSeries") || (+[AEUserPublishing sharedInstance](AEUserPublishing, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), -[AEAssetHTMLGenerator storeId](self, "storeId"), v4 = objc_claimAutoreleasedReturnValue(), [v3 wholeHTMLForStoreId:v4 dataSource:self], v5 = objc_claimAutoreleasedReturnValue(), v4, v3, !v5))
  {
    v5 = [(AEAssetHTMLGenerator *)self templateBasedDocumentString];
  }

  return v5;
}

- (id)templateBasedDocumentString
{
  v3 = [(AEAssetHTMLGenerator *)self templateStringForName:@"AEAssetShare"];
  v4 = [(AEAssetHTMLGenerator *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(AEAssetHTMLGenerator *)self dataSource];
    v6 = [v5 checkoutBookStringForHTMLGenerator:self];
  }

  else
  {
    v6 = &stru_2D2930;
  }

  v7 = [(AEAssetHTMLGenerator *)self bookInfoSection];
  if (v7)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v9 = [(AEAssetHTMLGenerator *)self citationIncludingStoreURL:0];
    v8 = [(AEAssetHTMLGenerator *)self storeLink];
  }

  [v3 AEReplaceTemplatePlaceholder:@"<!-- %%CHECKOUTBOOK%% -->" withString:v6];
  v10 = [(AEAssetHTMLGenerator *)self insertionHeaderSection];
  [v3 AEReplaceTemplatePlaceholder:@"<!-- %%INSERTIONHEADER%% -->" withString:v10];

  v11 = [(AEAssetHTMLGenerator *)self styleSection];
  [v3 AEReplaceTemplatePlaceholder:@"<!-- %%STYLESECTION%% -->" withString:v11];

  [v3 AEReplaceTemplatePlaceholder:@"<!-- %%BOOKINFO%% -->" withString:v7];
  v12 = [(AEAssetHTMLGenerator *)self disclaimerSection];
  [v3 AEReplaceTemplatePlaceholder:@"<!-- %%DISCLAIMERSECTION%% -->" withString:v12];

  v13 = [(AEAssetHTMLGenerator *)self readingDirection];
  [v3 AEReplaceTemplatePlaceholder:@"<!-- %%READINGDIRECTION%% -->" withString:v13];

  [v3 AEReplaceTemplatePlaceholder:@"<!-- %%CITATION%% -->" withString:v9];
  [v3 AEReplaceTemplatePlaceholder:@"<!-- %%STORELINK%% -->" withString:v8];

  return v3;
}

- (unint64_t)characterCountLimitforAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(AEAssetHTMLGenerator *)self wordLimit];
  v15 = 0;
  v6 = 0;
  if ([(AEAssetHTMLGenerator *)self areCitationsAllowed])
  {
    v7 = [v4 annotationSelectedText];
    v8 = [v7 length];

    v9 = [v4 annotationRepresentativeText];
    v10 = [v9 length];

    v6 = (v8 <= v10 ? v10 : v8);
    if (v6 >= 4 * v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v4 annotatedAttributedString];
        v12 = [v11 string];
      }

      else
      {
        v12 = [v4 annotationSelectedText];
      }

      v13 = [v12 tokenCountWithEnumerationOptions:3 maxTokenCount:-1 outLimitLength:0];
      if (v13 >= [(AEAssetHTMLGenerator *)self wordLimit])
      {
        [v12 tokenCountWithEnumerationOptions:3 maxTokenCount:-[AEAssetHTMLGenerator wordLimit](self outLimitLength:{"wordLimit"), &v15}];
      }

      else
      {
        v15 = [v12 length];
      }

      v6 = v15;
    }
  }

  return v6;
}

- (id)CSSClassForStyle:(int)a3
{
  if ((a3 - 1) > 4)
  {
    return @"defaultColor";
  }

  else
  {
    return *(&off_2CC370 + (a3 - 1));
  }
}

- (id)userPublishing:(id)a3 storeURLForStoreId:(id)a4
{
  if ([a4 longLongValue])
  {
    v5 = [(AEAssetHTMLGenerator *)self dataSource];
    v6 = [v5 storeURLForHTMLGenerator:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)userPublishing:(id)a3 tellAFriendEmailBaseURLForStoreId:(id)a4
{
  v5 = [(AEAssetHTMLGenerator *)self dataSource:a3];
  v6 = [v5 tellAFriendBaseURLForHTMLGenerator:self];

  return v6;
}

- (id)styleSection
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"AEAssetShare" ofType:@"css"];

  v10 = 0;
  v4 = [NSString stringWithContentsOfFile:v3 encoding:4 error:&v10];
  v5 = v10;
  if (v4)
  {
    v6 = [NSString stringWithFormat:@"<style type=text/css>%@</style>", v4];
  }

  else
  {
    v7 = BCIMLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v12 = "[AEAssetHTMLGenerator styleSection]";
      v13 = 2080;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Sharing/Annotations/Private/AEAssetHTMLGenerator.m";
      v15 = 1024;
      v16 = 212;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v8 = BCIMLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "@Failed to load CSS at Path {%@}", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (id)bookInfoSection
{
  v3 = +[AEUserPublishing sharedInstance];
  v4 = [(AEAssetHTMLGenerator *)self storeId];
  v5 = [v3 bookInfoHTMLForStoreId:v4 dataSource:self];

  return v5;
}

- (id)disclaimerSection
{
  v2 = [NSMutableString stringWithString:@"<div class=disclaimer><!-- %%NOTADDEDTOMAILLIST%% --></div>"];
  v3 = IMCommonCoreBundle();
  v4 = [v3 localizedStringForKey:@"Please note that you have not been added to any email lists." value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  [v2 AEReplaceTemplatePlaceholder:@"<!-- %%NOTADDEDTOMAILLIST%% -->" withString:v4];

  return v2;
}

- (id)storeURL
{
  v3 = [(AEAssetHTMLGenerator *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AEAssetHTMLGenerator *)self dataSource];
    v6 = [v5 storeURLForHTMLGenerator:self];

    v7 = [v6 absoluteString];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)bookURL
{
  v2 = [(AEAssetHTMLGenerator *)self epubId];
  v3 = [NSString stringWithFormat:@"ibooks://bookid/%@", v2];

  return v3;
}

- (id)citationIncludingStoreURL:(BOOL)a3
{
  v3 = a3;
  v5 = [(AEAssetHTMLGenerator *)self dataSource];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AEAssetHTMLGenerator *)self dataSource];
    if (v3)
    {
      v8 = [(AEAssetHTMLGenerator *)self storeURL];
    }

    else
    {
      v8 = 0;
    }

    v9 = [v7 HTMLGenerator:self citationForStoreURL:v8];
    if (v3)
    {
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 im_stringByReplacingNewLinesWithHTMLBreaks];

  return v10;
}

- (id)storeLink
{
  v2 = [(AEAssetHTMLGenerator *)self storeURL];
  if (v2)
  {
    v3 = IMCommonCoreBundle();
    v4 = [v3 localizedStringForKey:@"Available in Apple Books" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

    v5 = [NSString stringWithFormat:@"<a href=%@>%@</a>", v2, v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)templateStringForName:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v3 stringByAppendingFormat:@".%@", @"html"];

  v6 = [v4 pathForResource:v5 ofType:@"tmpl"];

  if (![v6 length])
  {
LABEL_9:
    v7 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v15 = 0;
  v7 = [NSString stringWithContentsOfFile:v6 encoding:4 error:&v15];
  v8 = v15;
  v9 = v8;
  if (!v7)
  {
    v11 = BCIMLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v17 = "[AEAssetHTMLGenerator templateStringForName:]";
      v18 = 2080;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Sharing/Annotations/Private/AEAssetHTMLGenerator.m";
      v20 = 1024;
      v21 = 291;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v12 = BCIMLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "@Failed to load e-mail template {%@} -- %@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  v10 = [NSMutableString stringWithString:v7];
LABEL_10:
  v13 = v10;

  return v10;
}

@end