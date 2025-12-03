@interface AEAnnotationDragHTMLGenerator
+ (id)truncatedAnnotationSelectedText:(id)text;
- (AEAnnotationDragHTMLGenerator)initWithAnnotation:(id)annotation propertyProvider:(id)provider;
- (AEAnnotationDragPropertyProvider)propertyProvider;
- (id)_excerptString:(BOOL)string;
- (id)_metadataString;
- (id)_representativeText:(BOOL)text;
- (id)documentString;
- (id)plainTextString;
@end

@implementation AEAnnotationDragHTMLGenerator

+ (id)truncatedAnnotationSelectedText:(id)text
{
  annotationSelectedText = [text annotationSelectedText];
  v9 = 0;
  [annotationSelectedText tokenCountWithEnumerationOptions:3 maxTokenCount:200 outLimitLength:&v9];
  v4 = v9;
  v5 = IMCommonCoreBundle();
  v6 = [v5 localizedStringForKey:@"[\\U2026]" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v7 = [annotationSelectedText stringByTruncatingToLength:v4 options:3 truncationString:v6];

  return v7;
}

- (AEAnnotationDragHTMLGenerator)initWithAnnotation:(id)annotation propertyProvider:(id)provider
{
  annotationCopy = annotation;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = AEAnnotationDragHTMLGenerator;
  v9 = [(AEAssetHTMLGenerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_annotation, annotation);
    objc_storeWeak(&v10->_propertyProvider, providerCopy);
  }

  return v10;
}

- (id)documentString
{
  annotation = [(AEAnnotationDragHTMLGenerator *)self annotation];
  v4 = [(AEAssetHTMLGenerator *)self templateStringForName:@"AEAnnotationShareDnD"];
  styleSection = [(AEAssetHTMLGenerator *)self styleSection];
  [v4 AEReplaceTemplatePlaceholder:@"<!-- %%STYLESECTION%% -->" withString:styleSection];

  readingDirection = [(AEAssetHTMLGenerator *)self readingDirection];
  [v4 AEReplaceTemplatePlaceholder:@"<!-- %%READINGDIRECTION%% -->" withString:readingDirection];

  _metadataString = [(AEAnnotationDragHTMLGenerator *)self _metadataString];
  annotationNote = [annotation annotationNote];
  v9 = [(AEAnnotationDragHTMLGenerator *)self _excerptString:1];
  v10 = [(AEAnnotationDragHTMLGenerator *)self _representativeText:1];
  if ([v10 length] && objc_msgSend(annotation, "annotationIsUnderline"))
  {
    v11 = [NSString stringWithFormat:@"<span class=underline><span style=color:black>%@</span></span>", v10];;

    v10 = v11;
  }

  if ([_metadataString length])
  {
    v12 = [_metadataString stringByAppendingString:@"\n"];
    im_stringByReplacingNewLinesWithHTMLBreaks = [v12 im_stringByReplacingNewLinesWithHTMLBreaks];

    _metadataString = im_stringByReplacingNewLinesWithHTMLBreaks;
  }

  if ([annotationNote length])
  {
    v14 = [annotationNote stringByAppendingString:@"\n"];
    im_stringByReplacingNewLinesWithHTMLBreaks2 = [v14 im_stringByReplacingNewLinesWithHTMLBreaks];

    annotationNote = im_stringByReplacingNewLinesWithHTMLBreaks2;
  }

  if ([v10 length])
  {
    v16 = [v10 stringByAppendingString:@"\n"];
    im_stringByReplacingNewLinesWithHTMLBreaks3 = [v16 im_stringByReplacingNewLinesWithHTMLBreaks];

    v10 = im_stringByReplacingNewLinesWithHTMLBreaks3;
  }

  v18 = -[AEAssetHTMLGenerator CSSClassForStyle:](self, "CSSClassForStyle:", [annotation annotationStyle]);
  v19 = [v18 stringByAppendingString:@"Border"];

  [v4 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONMETADATA%% -->" withString:_metadataString];
  [v4 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONMARKETCOLOR%% -->" withString:v19];
  [v4 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONREPRESENTATIVETEXT%% -->" withString:v10];
  [v4 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONNOTE%% -->" withString:annotationNote];
  [v4 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONEXCERPTTEXT%% -->" withString:v9];

  return v4;
}

- (id)plainTextString
{
  annotation = [(AEAnnotationDragHTMLGenerator *)self annotation];
  v4 = [(AEAnnotationDragHTMLGenerator *)self _representativeText:0];
  annotationNote = [annotation annotationNote];
  v6 = [(AEAnnotationDragHTMLGenerator *)self _excerptString:0];
  if ([annotationNote length])
  {
    v7 = [v4 stringByAppendingFormat:@"\n\n%@", annotationNote];

    v4 = v7;
  }

  if ([v6 length])
  {
    v8 = [v4 stringByAppendingFormat:@"\n\n%@", v6];

    v4 = v8;
  }

  return v4;
}

- (id)_metadataString
{
  v3 = objc_alloc_init(NSDateFormatter);
  [v3 setDateStyle:3];
  annotation = [(AEAnnotationDragHTMLGenerator *)self annotation];
  annotationCreationDate = [annotation annotationCreationDate];
  v6 = [v3 stringFromDate:annotationCreationDate];

  propertyProvider = [(AEAnnotationDragHTMLGenerator *)self propertyProvider];
  annotation2 = [(AEAnnotationDragHTMLGenerator *)self annotation];
  v9 = [propertyProvider pageNumberStringForAnnotation:annotation2];

  annotation3 = [(AEAnnotationDragHTMLGenerator *)self annotation];
  LOBYTE(annotation2) = objc_opt_respondsToSelector();

  if (annotation2)
  {
    annotation4 = [(AEAnnotationDragHTMLGenerator *)self annotation];
    chapterTitle = [annotation4 chapterTitle];
  }

  else
  {
    chapterTitle = 0;
  }

  if ([chapterTitle length] && objc_msgSend(v9, "length"))
  {
    v13 = IMCommonCoreBundle();
    v14 = [v13 localizedStringForKey:@"%@ value:p. %@" table:{&stru_2D2930, @"BCCommonCoreLocalizable"}];
    [NSString stringWithFormat:v14, chapterTitle, v9];
    v15 = LABEL_9:;

    goto LABEL_10;
  }

  if ([v9 length])
  {
    v13 = IMCommonCoreBundle();
    v14 = [v13 localizedStringForKey:@"p. %@" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    [NSString stringWithFormat:v14, v9, v18];
    goto LABEL_9;
  }

  if ([chapterTitle length])
  {
    v15 = chapterTitle;
  }

  else
  {
    v15 = 0;
  }

LABEL_10:
  if ([v15 length])
  {
    v16 = [v6 stringByAppendingFormat:@"\n%@", v15];

    v6 = v16;
  }

  return v6;
}

- (id)_representativeText:(BOOL)text
{
  annotation = [(AEAnnotationDragHTMLGenerator *)self annotation];
  v5 = [AEAnnotationDragHTMLGenerator truncatedAnnotationSelectedText:annotation];

  if ([v5 length])
  {
    if (text)
    {
      [NSString stringWithFormat:@"&ldquo;%@&rdquo;", v5];
    }

    else
    {
      [v5 stringByEnclosingInQuotes];
    }
    v6 = ;

    v5 = v6;
  }

  return v5;
}

- (id)_excerptString:(BOOL)string
{
  stringCopy = string;
  propertyProvider = [(AEAnnotationDragHTMLGenerator *)self propertyProvider];
  v5 = IMCommonCoreBundle();
  v6 = [v5 localizedStringForKey:@"Excerpt from:" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  bookTitle = [propertyProvider bookTitle];
  if ([bookTitle length])
  {
    v8 = [v6 stringByAppendingFormat:@"\n%@", bookTitle];

    v6 = v8;
  }

  author = [propertyProvider author];
  if ([author length])
  {
    v10 = [v6 stringByAppendingFormat:@"\n%@", author];

    v6 = v10;
  }

  storeURL = [propertyProvider storeURL];
  v12 = storeURL;
  if (storeURL)
  {
    [storeURL absoluteString];
    if (stringCopy)
      v13 = {;
      absoluteString = [v12 absoluteString];
      v15 = [NSString stringWithFormat:@"<a href='%@'>%@</a>", v13, absoluteString];
    }

    else
      v15 = {;
    }

    v16 = [v6 stringByAppendingFormat:@"\n%@", v15];

    v6 = v16;
  }

  v17 = IMCommonCoreBundle();
  v18 = [v17 localizedStringForKey:@"This material may be protected by copyright." value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v19 = [v6 stringByAppendingFormat:@"\n%@", v18];

  if (stringCopy)
  {
    im_stringByReplacingNewLinesWithHTMLBreaks = [v19 im_stringByReplacingNewLinesWithHTMLBreaks];

    v19 = im_stringByReplacingNewLinesWithHTMLBreaks;
  }

  return v19;
}

- (AEAnnotationDragPropertyProvider)propertyProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_propertyProvider);

  return WeakRetained;
}

@end