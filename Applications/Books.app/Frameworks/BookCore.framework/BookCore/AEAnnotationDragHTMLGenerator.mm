@interface AEAnnotationDragHTMLGenerator
+ (id)truncatedAnnotationSelectedText:(id)a3;
- (AEAnnotationDragHTMLGenerator)initWithAnnotation:(id)a3 propertyProvider:(id)a4;
- (AEAnnotationDragPropertyProvider)propertyProvider;
- (id)_excerptString:(BOOL)a3;
- (id)_metadataString;
- (id)_representativeText:(BOOL)a3;
- (id)documentString;
- (id)plainTextString;
@end

@implementation AEAnnotationDragHTMLGenerator

+ (id)truncatedAnnotationSelectedText:(id)a3
{
  v3 = [a3 annotationSelectedText];
  v9 = 0;
  [v3 tokenCountWithEnumerationOptions:3 maxTokenCount:200 outLimitLength:&v9];
  v4 = v9;
  v5 = IMCommonCoreBundle();
  v6 = [v5 localizedStringForKey:@"[\\U2026]" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v7 = [v3 stringByTruncatingToLength:v4 options:3 truncationString:v6];

  return v7;
}

- (AEAnnotationDragHTMLGenerator)initWithAnnotation:(id)a3 propertyProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AEAnnotationDragHTMLGenerator;
  v9 = [(AEAssetHTMLGenerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_annotation, a3);
    objc_storeWeak(&v10->_propertyProvider, v8);
  }

  return v10;
}

- (id)documentString
{
  v3 = [(AEAnnotationDragHTMLGenerator *)self annotation];
  v4 = [(AEAssetHTMLGenerator *)self templateStringForName:@"AEAnnotationShareDnD"];
  v5 = [(AEAssetHTMLGenerator *)self styleSection];
  [v4 AEReplaceTemplatePlaceholder:@"<!-- %%STYLESECTION%% -->" withString:v5];

  v6 = [(AEAssetHTMLGenerator *)self readingDirection];
  [v4 AEReplaceTemplatePlaceholder:@"<!-- %%READINGDIRECTION%% -->" withString:v6];

  v7 = [(AEAnnotationDragHTMLGenerator *)self _metadataString];
  v8 = [v3 annotationNote];
  v9 = [(AEAnnotationDragHTMLGenerator *)self _excerptString:1];
  v10 = [(AEAnnotationDragHTMLGenerator *)self _representativeText:1];
  if ([v10 length] && objc_msgSend(v3, "annotationIsUnderline"))
  {
    v11 = [NSString stringWithFormat:@"<span class=underline><span style=color:black>%@</span></span>", v10];;

    v10 = v11;
  }

  if ([v7 length])
  {
    v12 = [v7 stringByAppendingString:@"\n"];
    v13 = [v12 im_stringByReplacingNewLinesWithHTMLBreaks];

    v7 = v13;
  }

  if ([v8 length])
  {
    v14 = [v8 stringByAppendingString:@"\n"];
    v15 = [v14 im_stringByReplacingNewLinesWithHTMLBreaks];

    v8 = v15;
  }

  if ([v10 length])
  {
    v16 = [v10 stringByAppendingString:@"\n"];
    v17 = [v16 im_stringByReplacingNewLinesWithHTMLBreaks];

    v10 = v17;
  }

  v18 = -[AEAssetHTMLGenerator CSSClassForStyle:](self, "CSSClassForStyle:", [v3 annotationStyle]);
  v19 = [v18 stringByAppendingString:@"Border"];

  [v4 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONMETADATA%% -->" withString:v7];
  [v4 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONMARKETCOLOR%% -->" withString:v19];
  [v4 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONREPRESENTATIVETEXT%% -->" withString:v10];
  [v4 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONNOTE%% -->" withString:v8];
  [v4 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONEXCERPTTEXT%% -->" withString:v9];

  return v4;
}

- (id)plainTextString
{
  v3 = [(AEAnnotationDragHTMLGenerator *)self annotation];
  v4 = [(AEAnnotationDragHTMLGenerator *)self _representativeText:0];
  v5 = [v3 annotationNote];
  v6 = [(AEAnnotationDragHTMLGenerator *)self _excerptString:0];
  if ([v5 length])
  {
    v7 = [v4 stringByAppendingFormat:@"\n\n%@", v5];

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
  v4 = [(AEAnnotationDragHTMLGenerator *)self annotation];
  v5 = [v4 annotationCreationDate];
  v6 = [v3 stringFromDate:v5];

  v7 = [(AEAnnotationDragHTMLGenerator *)self propertyProvider];
  v8 = [(AEAnnotationDragHTMLGenerator *)self annotation];
  v9 = [v7 pageNumberStringForAnnotation:v8];

  v10 = [(AEAnnotationDragHTMLGenerator *)self annotation];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    v11 = [(AEAnnotationDragHTMLGenerator *)self annotation];
    v12 = [v11 chapterTitle];
  }

  else
  {
    v12 = 0;
  }

  if ([v12 length] && objc_msgSend(v9, "length"))
  {
    v13 = IMCommonCoreBundle();
    v14 = [v13 localizedStringForKey:@"%@ value:p. %@" table:{&stru_2D2930, @"BCCommonCoreLocalizable"}];
    [NSString stringWithFormat:v14, v12, v9];
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

  if ([v12 length])
  {
    v15 = v12;
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

- (id)_representativeText:(BOOL)a3
{
  v4 = [(AEAnnotationDragHTMLGenerator *)self annotation];
  v5 = [AEAnnotationDragHTMLGenerator truncatedAnnotationSelectedText:v4];

  if ([v5 length])
  {
    if (a3)
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

- (id)_excerptString:(BOOL)a3
{
  v3 = a3;
  v4 = [(AEAnnotationDragHTMLGenerator *)self propertyProvider];
  v5 = IMCommonCoreBundle();
  v6 = [v5 localizedStringForKey:@"Excerpt from:" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  v7 = [v4 bookTitle];
  if ([v7 length])
  {
    v8 = [v6 stringByAppendingFormat:@"\n%@", v7];

    v6 = v8;
  }

  v9 = [v4 author];
  if ([v9 length])
  {
    v10 = [v6 stringByAppendingFormat:@"\n%@", v9];

    v6 = v10;
  }

  v11 = [v4 storeURL];
  v12 = v11;
  if (v11)
  {
    [v11 absoluteString];
    if (v3)
      v13 = {;
      v14 = [v12 absoluteString];
      v15 = [NSString stringWithFormat:@"<a href='%@'>%@</a>", v13, v14];
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

  if (v3)
  {
    v20 = [v19 im_stringByReplacingNewLinesWithHTMLBreaks];

    v19 = v20;
  }

  return v19;
}

- (AEAnnotationDragPropertyProvider)propertyProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_propertyProvider);

  return WeakRetained;
}

@end