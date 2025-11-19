@interface AESingleAnnotationHTMLGenerator
- (AEAnnotationPaginationDataSource)paginationDataSource;
- (id)annotation;
- (id)chapterTitle;
- (id)documentString;
- (id)excerpt;
@end

@implementation AESingleAnnotationHTMLGenerator

- (id)documentString
{
  v3 = [(AEAssetHTMLGenerator *)self styleSection];
  v4 = IMCommonCoreBundle();
  v18 = [v4 localizedStringForKey:@"All Excerpts From" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  v5 = [(AESingleAnnotationHTMLGenerator *)self excerpt];
  v6 = [(AEAssetHTMLGenerator *)self bookInfoSection];
  v17 = [(AEAssetHTMLGenerator *)self disclaimerSection];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v8 = [(AEAssetHTMLGenerator *)self citationIncludingStoreURL:0];
    v7 = [(AEAssetHTMLGenerator *)self storeLink];
  }

  v16 = [(AESingleAnnotationHTMLGenerator *)self chapterTitle];
  v9 = objc_alloc_init(NSDateFormatter);
  [v9 setDateStyle:3];
  v10 = +[NSDate date];
  v15 = [v9 stringFromDate:v10];

  v11 = [(AEAssetHTMLGenerator *)self templateStringForName:@"AEAnnotationShare"];
  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%STYLESECTION%% -->" withString:v3];
  v12 = [(AEAssetHTMLGenerator *)self insertionHeaderSection];
  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%INSERTIONHEADER%% -->" withString:v12];

  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%EXCERPT%% -->" withString:v5];
  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%EXERPTFROM%% -->" withString:v18];
  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%CITATION%% -->" withString:v8];
  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%STORELINK%% -->" withString:v7];
  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%BOOKINFO%% -->" withString:v6];
  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%DISCLAIMERSECTION%% -->" withString:v17];
  v13 = [(AEAssetHTMLGenerator *)self readingDirection];
  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%READINGDIRECTION%% -->" withString:v13];

  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONDATE%% -->" withString:v15];
  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONCHAPTER%% -->" withString:v16];

  return v11;
}

- (id)annotation
{
  v2 = [(AESingleAnnotationHTMLGenerator *)self annotations];
  v3 = [v2 lastObject];

  return v3;
}

- (id)chapterTitle
{
  v3 = [(AESingleAnnotationHTMLGenerator *)self annotation];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 || (-[AESingleAnnotationHTMLGenerator annotation](self, "annotation"), v5 = objc_claimAutoreleasedReturnValue(), [v5 chapterTitle], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v7 = [(AESingleAnnotationHTMLGenerator *)self paginationDataSource];
    v8 = [(AESingleAnnotationHTMLGenerator *)self annotation];
    v6 = [v7 chapterTitleForAnnotation:v8];
  }

  v9 = [(AESingleAnnotationHTMLGenerator *)self annotation];
  if (objc_opt_respondsToSelector())
  {
    v10 = [(AESingleAnnotationHTMLGenerator *)self annotation];
    v11 = [v10 physicalPageNumber];
  }

  else
  {
    v11 = &stru_2D2930;
  }

  if ([(__CFString *)v11 length])
  {
    v12 = IMCommonCoreBundle();
    v13 = [v12 localizedStringForKey:@"p. %@" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    v14 = [NSString stringWithFormat:v13, v11];

    v15 = [v6 stringByAppendingFormat:@", %@", v14];

    v6 = v15;
    v11 = v14;
  }

  return v6;
}

- (id)excerpt
{
  v3 = [(AESingleAnnotationHTMLGenerator *)self annotation];
  v4 = [(AEAssetHTMLGenerator *)self characterCountLimitforAnnotation:v3];
  v5 = [AEAnnotation contextAwareSelectedTextFromAnnotation:v3];
  if (v4 < [v5 length])
  {
    v6 = IMCommonCoreBundle();
    v7 = [v6 localizedStringForKey:@"[\\U2026]" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    v8 = [v5 stringByTruncatingToLength:v4 options:3 truncationString:v7];

    v5 = v8;
  }

  v9 = [v5 im_stringByReplacingNewLinesWithHTMLBreaks];

  return v9;
}

- (AEAnnotationPaginationDataSource)paginationDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_paginationDataSource);

  return WeakRetained;
}

@end