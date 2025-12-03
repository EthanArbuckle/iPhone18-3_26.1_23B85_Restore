@interface AEAnnotationGroupHTMLGenerator
- (id)annotationsBody;
- (id)bookTitleSection;
- (id)chapterTitleForAnnotation:(id)annotation;
- (id)documentString;
- (id)headBody;
- (id)htmlAnnotatedStringForAnnotation:(id)annotation;
- (id)htmlHighlightForString:(id)string style:(int)style isUnderline:(BOOL)underline;
- (id)tailBody;
@end

@implementation AEAnnotationGroupHTMLGenerator

- (id)documentString
{
  headBody = [(AEAnnotationGroupHTMLGenerator *)self headBody];
  annotationsBody = [(AEAnnotationGroupHTMLGenerator *)self annotationsBody];
  tailBody = [(AEAnnotationGroupHTMLGenerator *)self tailBody];
  v6 = [NSString stringWithFormat:@"%@\n%@\n%@", headBody, annotationsBody, tailBody];

  return v6;
}

- (id)headBody
{
  styleSection = [(AEAssetHTMLGenerator *)self styleSection];
  v4 = IMCommonCoreBundle();
  v5 = [v4 localizedStringForKey:@"Notes From" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v6 = +[NSLocale currentLocale];
  v7 = [v5 im_uppercaseStringWithLocale:v6];

  author = [(AEAssetHTMLGenerator *)self author];
  v9 = [(AEAssetHTMLGenerator *)self templateStringForName:@"AEAnnotationGroupShare_head"];
  [v9 AEReplaceTemplatePlaceholder:@"<!-- %%STYLESECTION%% -->" withString:styleSection];
  insertionHeaderSection = [(AEAssetHTMLGenerator *)self insertionHeaderSection];
  [v9 AEReplaceTemplatePlaceholder:@"<!-- %%INSERTIONHEADER%% -->" withString:insertionHeaderSection];

  [v9 AEReplaceTemplatePlaceholder:@"<!-- %%NOTESFROM%% -->" withString:v7];
  bookTitleSection = [(AEAnnotationGroupHTMLGenerator *)self bookTitleSection];
  [v9 AEReplaceTemplatePlaceholder:@"<!-- %%BOOKTITLE%% -->" withString:bookTitleSection];

  [v9 AEReplaceTemplatePlaceholder:@"<!-- %%AUTHOR%% -->" withString:author];
  readingDirection = [(AEAssetHTMLGenerator *)self readingDirection];
  [v9 AEReplaceTemplatePlaceholder:@"<!-- %%READINGDIRECTION%% -->" withString:readingDirection];

  return v9;
}

- (id)annotationsBody
{
  selfCopy = self;
  annotations = [(AESingleAnnotationHTMLGenerator *)self annotations];
  v4 = [annotations count];

  if (v4)
  {
    v28 = [(AEAssetHTMLGenerator *)selfCopy templateStringForName:@"AEAnnotationGroupShare_annotation"];
    v27 = objc_alloc_init(NSDateFormatter);
    [v27 setDateStyle:3];
    v26 = objc_alloc_init(NSMutableArray);
    areCitationsAllowed = [(AESingleAnnotationHTMLGenerator *)selfCopy areCitationsAllowed];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [(AESingleAnnotationHTMLGenerator *)selfCopy annotations];
    v5 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (!v5)
    {
      goto LABEL_21;
    }

    v6 = v5;
    v7 = *v33;
    v24 = *v33;
    v25 = selfCopy;
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
          if ((areCitationsAllowed & 1) != 0 || ([v9 annotationNote], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, v12))
          {
            v13 = [v28 mutableCopy];
            v14 = [(AEAnnotationGroupHTMLGenerator *)selfCopy chapterTitleForAnnotation:v9];
            if (![(__CFString *)v14 length])
            {

              v14 = &stru_2D2930;
            }

            annotationCreationDate = [v9 annotationCreationDate];
            v16 = [v27 stringFromDate:annotationCreationDate];

            annotationNote = [v9 annotationNote];
            im_stringByReplacingNewLinesWithHTMLBreaks = [annotationNote im_stringByReplacingNewLinesWithHTMLBreaks];

            v19 = -[AEAssetHTMLGenerator CSSClassForStyle:](selfCopy, "CSSClassForStyle:", [v9 annotationStyle]);
            if (areCitationsAllowed)
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
              -[AEAnnotationGroupHTMLGenerator htmlHighlightForString:style:isUnderline:](selfCopy, "htmlHighlightForString:style:isUnderline:", v16, [v9 annotationStyle], objc_msgSend(v9, "annotationIsUnderline"));
              v21 = 0;
              v16 = v20 = v16;
LABEL_16:

              v20 = v21;
            }

            [v13 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONCHAPTER%% -->" withString:v14];
            [v13 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONDATE%% -->" withString:v16];
            [v13 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONNOTE%% -->" withString:im_stringByReplacingNewLinesWithHTMLBreaks];
            [v13 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONREPRESENTATIVETEXT%% -->" withString:v20];
            [v13 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONMARKETCOLOR%% -->" withString:v19];
            [v26 addObject:v13];

            v7 = v24;
            selfCopy = v25;
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
  annotations = [(AESingleAnnotationHTMLGenerator *)self annotations];
  v4 = [annotations count];
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
    bookInfoSection = 0;
LABEL_8:
    storeLink = 0;
    goto LABEL_9;
  }

  bookInfoSection = [(AEAssetHTMLGenerator *)self bookInfoSection];
  if (bookInfoSection)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v9 = [(AEAssetHTMLGenerator *)self citationIncludingStoreURL:0];
  storeLink = [(AEAssetHTMLGenerator *)self storeLink];
LABEL_9:
  v12 = [(AEAssetHTMLGenerator *)self templateStringForName:@"AEAnnotationGroupShare_tail"];
  [v12 AEReplaceTemplatePlaceholder:@"<!-- %%ALLEXCERPTSFROM%% -->" withString:v8];
  [v12 AEReplaceTemplatePlaceholder:@"<!-- %%BOOKINFO%% -->" withString:bookInfoSection];
  [v12 AEReplaceTemplatePlaceholder:@"<!-- %%CITATION%% -->" withString:v9];
  [v12 AEReplaceTemplatePlaceholder:@"<!-- %%STORELINK%% -->" withString:storeLink];

  return v12;
}

- (id)bookTitleSection
{
  title = [(AEAssetHTMLGenerator *)self title];
  v3 = [NSMutableString stringWithString:@"<!-- %%BOOKTITLE%% -->"];
  [v3 AEReplaceTemplatePlaceholder:@"<!-- %%BOOKTITLE%% -->" withString:title];

  return v3;
}

- (id)chapterTitleForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v5 = objc_alloc_init(NSMutableArray);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([annotationCopy chapterTitle], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
  {
    chapterTitle = [annotationCopy chapterTitle];
  }

  else
  {
    paginationDataSource = [(AESingleAnnotationHTMLGenerator *)self paginationDataSource];
    chapterTitle = [paginationDataSource chapterTitleForAnnotation:annotationCopy];
  }

  if ([chapterTitle length])
  {
    [v5 addObject:chapterTitle];
  }

  if (objc_opt_respondsToSelector())
  {
    physicalPageNumber = [annotationCopy physicalPageNumber];
  }

  else
  {
    physicalPageNumber = 0;
  }

  if ([physicalPageNumber length])
  {
    v11 = IMCommonCoreBundle();
    v12 = [v11 localizedStringForKey:@"p. %@" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    v13 = [NSString stringWithFormat:v12, physicalPageNumber];
    [v5 addObject:v13];
  }

  v14 = [v5 componentsJoinedByString:{@", "}];

  return v14;
}

- (id)htmlHighlightForString:(id)string style:(int)style isUnderline:(BOOL)underline
{
  underlineCopy = underline;
  v6 = *&style;
  stringCopy = string;
  v9 = [(AEAssetHTMLGenerator *)self CSSClassForStyle:v6];
  if (underlineCopy)
  {
    [NSString stringWithFormat:@"<span class=underline><span style=color:black;>%@</span></span>", stringCopy, v12];
  }

  else
  {
    [NSString stringWithFormat:@"<span class=%@>%@</span>", v9, stringCopy];
  }
  v10 = ;

  return v10;
}

- (id)htmlAnnotatedStringForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v5 = [(AEAssetHTMLGenerator *)self characterCountLimitforAnnotation:annotationCopy];
  v6 = [AEAnnotation annotatedAttributedStringForAnnotation:annotationCopy withPossibleLength:v5];
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

  string = [v6 string];
  v15 = [string mutableCopy];

  LOBYTE(string) = [annotationCopy annotationIsUnderline];
  v16 = [v6 length];
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_11E940;
  v29 = &unk_2CD6D8;
  selfCopy = self;
  v17 = v6;
  v31 = v17;
  v33 = string;
  v18 = v15;
  v32 = v18;
  [v17 enumerateAttribute:@"kAEAnnotationStyleAttributeName" inRange:0 options:v16 usingBlock:{0, &v26}];
  storeURL = [(AEAssetHTMLGenerator *)self storeURL];

  if (storeURL)
  {
    storeURL2 = [(AEAssetHTMLGenerator *)self storeURL];
    annotationLocation = [annotationCopy annotationLocation];
    v22 = [NSString stringWithFormat:@"%@#%@", storeURL2, annotationLocation, v26, v27, v28, v29, selfCopy, v31];

    if ([v22 length])
    {
      v23 = [NSMutableString stringWithFormat:@"<a href=%@ class=annotationrepresentativetext>%@</a>", v22, v18];

      v18 = v23;
    }
  }

  im_stringByReplacingNewLinesWithHTMLBreaks = [v18 im_stringByReplacingNewLinesWithHTMLBreaks];

  return im_stringByReplacingNewLinesWithHTMLBreaks;
}

@end