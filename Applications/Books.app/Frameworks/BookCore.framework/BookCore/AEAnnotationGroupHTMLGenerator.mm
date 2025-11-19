@interface AEAnnotationGroupHTMLGenerator
- (id)annotationsBody;
- (id)bookTitleSection;
- (id)chapterTitleForAnnotation:(id)a3;
- (id)documentString;
- (id)headBody;
- (id)htmlAnnotatedStringForAnnotation:(id)a3;
- (id)htmlHighlightForString:(id)a3 style:(int)a4 isUnderline:(BOOL)a5;
- (id)tailBody;
@end

@implementation AEAnnotationGroupHTMLGenerator

- (id)documentString
{
  v3 = [(AEAnnotationGroupHTMLGenerator *)self headBody];
  v4 = [(AEAnnotationGroupHTMLGenerator *)self annotationsBody];
  v5 = [(AEAnnotationGroupHTMLGenerator *)self tailBody];
  v6 = [NSString stringWithFormat:@"%@\n%@\n%@", v3, v4, v5];

  return v6;
}

- (id)headBody
{
  v3 = [(AEAssetHTMLGenerator *)self styleSection];
  v4 = IMCommonCoreBundle();
  v5 = [v4 localizedStringForKey:@"Notes From" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v6 = +[NSLocale currentLocale];
  v7 = [v5 im_uppercaseStringWithLocale:v6];

  v8 = [(AEAssetHTMLGenerator *)self author];
  v9 = [(AEAssetHTMLGenerator *)self templateStringForName:@"AEAnnotationGroupShare_head"];
  [v9 AEReplaceTemplatePlaceholder:@"<!-- %%STYLESECTION%% -->" withString:v3];
  v10 = [(AEAssetHTMLGenerator *)self insertionHeaderSection];
  [v9 AEReplaceTemplatePlaceholder:@"<!-- %%INSERTIONHEADER%% -->" withString:v10];

  [v9 AEReplaceTemplatePlaceholder:@"<!-- %%NOTESFROM%% -->" withString:v7];
  v11 = [(AEAnnotationGroupHTMLGenerator *)self bookTitleSection];
  [v9 AEReplaceTemplatePlaceholder:@"<!-- %%BOOKTITLE%% -->" withString:v11];

  [v9 AEReplaceTemplatePlaceholder:@"<!-- %%AUTHOR%% -->" withString:v8];
  v12 = [(AEAssetHTMLGenerator *)self readingDirection];
  [v9 AEReplaceTemplatePlaceholder:@"<!-- %%READINGDIRECTION%% -->" withString:v12];

  return v9;
}

- (id)annotationsBody
{
  v2 = self;
  v3 = [(AESingleAnnotationHTMLGenerator *)self annotations];
  v4 = [v3 count];

  if (v4)
  {
    v28 = [(AEAssetHTMLGenerator *)v2 templateStringForName:@"AEAnnotationGroupShare_annotation"];
    v27 = objc_alloc_init(NSDateFormatter);
    [v27 setDateStyle:3];
    v26 = objc_alloc_init(NSMutableArray);
    v31 = [(AESingleAnnotationHTMLGenerator *)v2 areCitationsAllowed];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [(AESingleAnnotationHTMLGenerator *)v2 annotations];
    v5 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (!v5)
    {
      goto LABEL_21;
    }

    v6 = v5;
    v7 = *v33;
    v24 = *v33;
    v25 = v2;
    while (1)
    {
      v8 = 0;
      v29 = v6;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * v8);
        if ([v9 annotationType] != 3)
        {
          v10 = objc_autoreleasePoolPush();
          if ((v31 & 1) != 0 || ([v9 annotationNote], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, v12))
          {
            v13 = [v28 mutableCopy];
            v14 = [(AEAnnotationGroupHTMLGenerator *)v2 chapterTitleForAnnotation:v9];
            if (![(__CFString *)v14 length])
            {

              v14 = &stru_2D2930;
            }

            v15 = [v9 annotationCreationDate];
            v16 = [v27 stringFromDate:v15];

            v17 = [v9 annotationNote];
            v18 = [v17 im_stringByReplacingNewLinesWithHTMLBreaks];

            v19 = -[AEAssetHTMLGenerator CSSClassForStyle:](v2, "CSSClassForStyle:", [v9 annotationStyle]);
            if (v31)
            {
              v20 = [AEAnnotationActivityItemProviderSource truncatedAnnotationSelectedText:v9];
              if ([v9 annotationIsUnderline])
              {
                v21 = [NSString stringWithFormat:@"<span class=underline><span style=color:black>%@</span></span>", v20];;
                goto LABEL_16;
              }
            }

            else
            {
              -[AEAnnotationGroupHTMLGenerator htmlHighlightForString:style:isUnderline:](v2, "htmlHighlightForString:style:isUnderline:", v16, [v9 annotationStyle], objc_msgSend(v9, "annotationIsUnderline"));
              v21 = 0;
              v16 = v20 = v16;
LABEL_16:

              v20 = v21;
            }

            [v13 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONCHAPTER%% -->" withString:v14];
            [v13 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONDATE%% -->" withString:v16];
            [v13 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONNOTE%% -->" withString:v18];
            [v13 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONREPRESENTATIVETEXT%% -->" withString:v20];
            [v13 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONMARKETCOLOR%% -->" withString:v19];
            [v26 addObject:v13];

            v7 = v24;
            v2 = v25;
            v6 = v29;
          }

          objc_autoreleasePoolPop(v10);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (!v6)
      {
LABEL_21:

        v22 = [v26 componentsJoinedByString:@"\n"];

        goto LABEL_23;
      }
    }
  }

  v22 = 0;
LABEL_23:

  return v22;
}

- (id)tailBody
{
  v3 = [(AESingleAnnotationHTMLGenerator *)self annotations];
  v4 = [v3 count];
  v5 = IMCommonCoreBundle();
  v6 = v5;
  if (v4 >= 2)
  {
    v7 = @"All Excerpts From";
  }

  else
  {
    v7 = @"Excerpt From";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  if ([(AEAssetHTMLGenerator *)self isForPrint])
  {
    v9 = [(AEAssetHTMLGenerator *)self citationIncludingStoreURL:0];
    v10 = 0;
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v10 = [(AEAssetHTMLGenerator *)self bookInfoSection];
  if (v10)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v9 = [(AEAssetHTMLGenerator *)self citationIncludingStoreURL:0];
  v11 = [(AEAssetHTMLGenerator *)self storeLink];
LABEL_9:
  v12 = [(AEAssetHTMLGenerator *)self templateStringForName:@"AEAnnotationGroupShare_tail"];
  [v12 AEReplaceTemplatePlaceholder:@"<!-- %%ALLEXCERPTSFROM%% -->" withString:v8];
  [v12 AEReplaceTemplatePlaceholder:@"<!-- %%BOOKINFO%% -->" withString:v10];
  [v12 AEReplaceTemplatePlaceholder:@"<!-- %%CITATION%% -->" withString:v9];
  [v12 AEReplaceTemplatePlaceholder:@"<!-- %%STORELINK%% -->" withString:v11];

  return v12;
}

- (id)bookTitleSection
{
  v2 = [(AEAssetHTMLGenerator *)self title];
  v3 = [NSMutableString stringWithString:@"<!-- %%BOOKTITLE%% -->"];
  [v3 AEReplaceTemplatePlaceholder:@"<!-- %%BOOKTITLE%% -->" withString:v2];

  return v3;
}

- (id)chapterTitleForAnnotation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v4 chapterTitle], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
  {
    v8 = [v4 chapterTitle];
  }

  else
  {
    v9 = [(AESingleAnnotationHTMLGenerator *)self paginationDataSource];
    v8 = [v9 chapterTitleForAnnotation:v4];
  }

  if ([v8 length])
  {
    [v5 addObject:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [v4 physicalPageNumber];
  }

  else
  {
    v10 = 0;
  }

  if ([v10 length])
  {
    v11 = IMCommonCoreBundle();
    v12 = [v11 localizedStringForKey:@"p. %@" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    v13 = [NSString stringWithFormat:v12, v10];
    [v5 addObject:v13];
  }

  v14 = [v5 componentsJoinedByString:{@", "}];

  return v14;
}

- (id)htmlHighlightForString:(id)a3 style:(int)a4 isUnderline:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  v8 = a3;
  v9 = [(AEAssetHTMLGenerator *)self CSSClassForStyle:v6];
  if (v5)
  {
    [NSString stringWithFormat:@"<span class=underline><span style=color:black;>%@</span></span>", v8, v12];
  }

  else
  {
    [NSString stringWithFormat:@"<span class=%@>%@</span>", v9, v8];
  }
  v10 = ;

  return v10;
}

- (id)htmlAnnotatedStringForAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(AEAssetHTMLGenerator *)self characterCountLimitforAnnotation:v4];
  v6 = [AEAnnotation annotatedAttributedStringForAnnotation:v4 withPossibleLength:v5];
  if ([v6 length] > v5)
  {
    v7 = [NSMutableAttributedString alloc];
    v8 = [v6 attributedSubstringFromRange:{0, v5}];
    v9 = [v7 initWithAttributedString:v8];

    v10 = [NSAttributedString alloc];
    v11 = IMCommonCoreBundle();
    v12 = [v11 localizedStringForKey:@"[\\U2026]" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    v13 = [v10 initWithString:v12];

    [v9 appendAttributedString:v13];
    v6 = v9;
  }

  v14 = [v6 string];
  v15 = [v14 mutableCopy];

  LOBYTE(v14) = [v4 annotationIsUnderline];
  v16 = [v6 length];
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_11E940;
  v29 = &unk_2CD6D8;
  v30 = self;
  v17 = v6;
  v31 = v17;
  v33 = v14;
  v18 = v15;
  v32 = v18;
  [v17 enumerateAttribute:@"kAEAnnotationStyleAttributeName" inRange:0 options:v16 usingBlock:{0, &v26}];
  v19 = [(AEAssetHTMLGenerator *)self storeURL];

  if (v19)
  {
    v20 = [(AEAssetHTMLGenerator *)self storeURL];
    v21 = [v4 annotationLocation];
    v22 = [NSString stringWithFormat:@"%@#%@", v20, v21, v26, v27, v28, v29, v30, v31];

    if ([v22 length])
    {
      v23 = [NSMutableString stringWithFormat:@"<a href=%@ class=annotationrepresentativetext>%@</a>", v22, v18];

      v18 = v23;
    }
  }

  v24 = [v18 im_stringByReplacingNewLinesWithHTMLBreaks];

  return v24;
}

@end