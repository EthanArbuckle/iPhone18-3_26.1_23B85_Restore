@interface AEAssetHTMLGenerator
- (AEAssetHTMLGenerator)init;
- (id)CSSClassForStyle:(int)style;
- (id)bookInfoSection;
- (id)bookURL;
- (id)citationIncludingStoreURL:(BOOL)l;
- (id)disclaimerSection;
- (id)documentString;
- (id)storeLink;
- (id)storeURL;
- (id)styleSection;
- (id)templateBasedDocumentString;
- (id)templateStringForName:(id)name;
- (id)userPublishing:(id)publishing storeURLForStoreId:(id)id;
- (id)userPublishing:(id)publishing tellAFriendEmailBaseURLForStoreId:(id)id;
- (unint64_t)characterCountLimitforAnnotation:(id)annotation;
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
  if (-[AEAssetHTMLGenerator isSeries](self, "isSeries") || (+[AEUserPublishing sharedInstance](AEUserPublishing, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), -[AEAssetHTMLGenerator storeId](self, "storeId"), v4 = objc_claimAutoreleasedReturnValue(), [v3 wholeHTMLForStoreId:v4 dataSource:self], templateBasedDocumentString = objc_claimAutoreleasedReturnValue(), v4, v3, !templateBasedDocumentString))
  {
    templateBasedDocumentString = [(AEAssetHTMLGenerator *)self templateBasedDocumentString];
  }

  return templateBasedDocumentString;
}

- (id)templateBasedDocumentString
{
  v3 = [(AEAssetHTMLGenerator *)self templateStringForName:@"AEAssetShare"];
  dataSource = [(AEAssetHTMLGenerator *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    dataSource2 = [(AEAssetHTMLGenerator *)self dataSource];
    v6 = [dataSource2 checkoutBookStringForHTMLGenerator:self];
  }

  else
  {
    v6 = &stru_2D2930;
  }

  bookInfoSection = [(AEAssetHTMLGenerator *)self bookInfoSection];
  if (bookInfoSection)
  {
    storeLink = 0;
    v9 = 0;
  }

  else
  {
    v9 = [(AEAssetHTMLGenerator *)self citationIncludingStoreURL:0];
    storeLink = [(AEAssetHTMLGenerator *)self storeLink];
  }

  [v3 AEReplaceTemplatePlaceholder:@"<!-- %%CHECKOUTBOOK%% -->" withString:v6];
  insertionHeaderSection = [(AEAssetHTMLGenerator *)self insertionHeaderSection];
  [v3 AEReplaceTemplatePlaceholder:@"<!-- %%INSERTIONHEADER%% -->" withString:insertionHeaderSection];

  styleSection = [(AEAssetHTMLGenerator *)self styleSection];
  [v3 AEReplaceTemplatePlaceholder:@"<!-- %%STYLESECTION%% -->" withString:styleSection];

  [v3 AEReplaceTemplatePlaceholder:@"<!-- %%BOOKINFO%% -->" withString:bookInfoSection];
  disclaimerSection = [(AEAssetHTMLGenerator *)self disclaimerSection];
  [v3 AEReplaceTemplatePlaceholder:@"<!-- %%DISCLAIMERSECTION%% -->" withString:disclaimerSection];

  readingDirection = [(AEAssetHTMLGenerator *)self readingDirection];
  [v3 AEReplaceTemplatePlaceholder:@"<!-- %%READINGDIRECTION%% -->" withString:readingDirection];

  [v3 AEReplaceTemplatePlaceholder:@"<!-- %%CITATION%% -->" withString:v9];
  [v3 AEReplaceTemplatePlaceholder:@"<!-- %%STORELINK%% -->" withString:storeLink];

  return v3;
}

- (unint64_t)characterCountLimitforAnnotation:(id)annotation
{
  annotationCopy = annotation;
  wordLimit = [(AEAssetHTMLGenerator *)self wordLimit];
  v15 = 0;
  v6 = 0;
  if ([(AEAssetHTMLGenerator *)self areCitationsAllowed])
  {
    annotationSelectedText = [annotationCopy annotationSelectedText];
    v8 = [annotationSelectedText length];

    annotationRepresentativeText = [annotationCopy annotationRepresentativeText];
    v10 = [annotationRepresentativeText length];

    v6 = (v8 <= v10 ? v10 : v8);
    if (v6 >= 4 * wordLimit)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        annotatedAttributedString = [annotationCopy annotatedAttributedString];
        string = [annotatedAttributedString string];
      }

      else
      {
        string = [annotationCopy annotationSelectedText];
      }

      v13 = [string tokenCountWithEnumerationOptions:3 maxTokenCount:-1 outLimitLength:0];
      if (v13 >= [(AEAssetHTMLGenerator *)self wordLimit])
      {
        [string tokenCountWithEnumerationOptions:3 maxTokenCount:-[AEAssetHTMLGenerator wordLimit](self outLimitLength:{"wordLimit"), &v15}];
      }

      else
      {
        v15 = [string length];
      }

      v6 = v15;
    }
  }

  return v6;
}

- (id)CSSClassForStyle:(int)style
{
  if ((style - 1) > 4)
  {
    return @"defaultColor";
  }

  else
  {
    return *(&off_2CC370 + (style - 1));
  }
}

- (id)userPublishing:(id)publishing storeURLForStoreId:(id)id
{
  if ([id longLongValue])
  {
    dataSource = [(AEAssetHTMLGenerator *)self dataSource];
    v6 = [dataSource storeURLForHTMLGenerator:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)userPublishing:(id)publishing tellAFriendEmailBaseURLForStoreId:(id)id
{
  v5 = [(AEAssetHTMLGenerator *)self dataSource:publishing];
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
  storeId = [(AEAssetHTMLGenerator *)self storeId];
  v5 = [v3 bookInfoHTMLForStoreId:storeId dataSource:self];

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
  dataSource = [(AEAssetHTMLGenerator *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    dataSource2 = [(AEAssetHTMLGenerator *)self dataSource];
    v6 = [dataSource2 storeURLForHTMLGenerator:self];

    absoluteString = [v6 absoluteString];
  }

  else
  {
    absoluteString = 0;
  }

  return absoluteString;
}

- (id)bookURL
{
  epubId = [(AEAssetHTMLGenerator *)self epubId];
  v3 = [NSString stringWithFormat:@"ibooks://bookid/%@", epubId];

  return v3;
}

- (id)citationIncludingStoreURL:(BOOL)l
{
  lCopy = l;
  dataSource = [(AEAssetHTMLGenerator *)self dataSource];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    dataSource2 = [(AEAssetHTMLGenerator *)self dataSource];
    if (lCopy)
    {
      storeURL = [(AEAssetHTMLGenerator *)self storeURL];
    }

    else
    {
      storeURL = 0;
    }

    v9 = [dataSource2 HTMLGenerator:self citationForStoreURL:storeURL];
    if (lCopy)
    {
    }
  }

  else
  {
    v9 = 0;
  }

  im_stringByReplacingNewLinesWithHTMLBreaks = [v9 im_stringByReplacingNewLinesWithHTMLBreaks];

  return im_stringByReplacingNewLinesWithHTMLBreaks;
}

- (id)storeLink
{
  storeURL = [(AEAssetHTMLGenerator *)self storeURL];
  if (storeURL)
  {
    v3 = IMCommonCoreBundle();
    v4 = [v3 localizedStringForKey:@"Available in Apple Books" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

    v5 = [NSString stringWithFormat:@"<a href=%@>%@</a>", storeURL, v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)templateStringForName:(id)name
{
  nameCopy = name;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [nameCopy stringByAppendingFormat:@".%@", @"html"];

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