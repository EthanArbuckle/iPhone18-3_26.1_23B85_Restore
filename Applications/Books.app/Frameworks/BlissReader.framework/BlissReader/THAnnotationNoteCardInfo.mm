@interface THAnnotationNoteCardInfo
- (BOOL)shouldShowWithStudyOptions:(id)options;
- (THAnnotationNoteCardInfo)init;
- (int64_t)compareToNoteCard:(id)card;
- (void)dealloc;
- (void)populateNoteCardBack:(id)back;
- (void)populateNoteCardFront:(id)front;
@end

@implementation THAnnotationNoteCardInfo

- (THAnnotationNoteCardInfo)init
{
  v5.receiver = self;
  v5.super_class = THAnnotationNoteCardInfo;
  v2 = [(THAnnotationNoteCardInfo *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(THAnnotationNoteCardInfo *)v2 setPageNumberString:0];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THAnnotationNoteCardInfo;
  [(THAnnotationNoteCardInfo *)&v3 dealloc];
}

- (int64_t)compareToNoteCard:(id)card
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (!v4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  pageIndex = [(THAnnotationNoteCardInfo *)self pageIndex];
  if (pageIndex == [v4 pageIndex])
  {
    bodyPosition = [(THAnnotationNoteCardInfo *)self bodyPosition];
    bodyPosition2 = [v4 bodyPosition];
  }

  else
  {
    bodyPosition = [(THAnnotationNoteCardInfo *)self pageIndex];
    bodyPosition2 = [v4 pageIndex];
  }

  if (bodyPosition > bodyPosition2)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

- (BOOL)shouldShowWithStudyOptions:(id)options
{
  showAnnotations = [options showAnnotations];
  if (showAnnotations)
  {
    annotationStyle = [(THAnnotation *)self->annotation annotationStyle];

    LOBYTE(showAnnotations) = [options shouldShowAnnotationStyle:annotationStyle];
  }

  return showAnnotations;
}

- (void)populateNoteCardFront:(id)front
{
  v5 = [AEAnnotationTheme themeForAnnotationStyle:[(THAnnotation *)self->annotation annotationStyle] pageTheme:4 isUnderline:[(THAnnotation *)self->annotation annotationIsUnderline]];
  if ([v5 isUnderline] && (v6 = objc_msgSend(v5, "highlightColor")) != 0)
  {
    v7 = [TSUColor colorWithPlatformColor:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_alloc_init(THNoteCardStorageLayer);
  storage = self->storage;
  annotationStorageRange = [(THAnnotation *)self->annotation annotationStorageRange];
  [(THNoteCardStorageLayer *)v8 setStorage:storage range:annotationStorageRange, v11];
  -[THNoteCardStorageLayer setFontFamily:textColor:underlineColor:characterSpacing:lineSpacingMode:lineSpacingAmount:alignment:](v8, "setFontFamily:textColor:underlineColor:characterSpacing:lineSpacingMode:lineSpacingAmount:alignment:", [+[TSUFont systemFontOfSize:](TSUFont systemFontOfSize:{12.0), "familyName"}], THNoteCardFrontTextColor(-[THAnnotationNoteCardInfo darkMode](self, "darkMode")), v7, 0, 4, 0.0, 1.0);
  [front setBodyLayer:v8];
  [front setShowFlipGlyph:{-[THAnnotationNoteCardInfo hasBackContent](self, "hasBackContent")}];

  [front setTitle:self->title];
  if (self->pageNumberString)
  {
    [front setPageNumber:?];
  }

  v12 = [objc_msgSend(v5 "notesSidebarBarColor")];

  [front setColorBarColor:v12];
}

- (void)populateNoteCardBack:(id)back
{
  if (![(THAnnotation *)self->annotation annotationNote])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = objc_alloc_init(THNoteCardStorageLayer);
  [(THNoteCardStorageLayer *)v5 setText:[(THAnnotation *)self->annotation annotationNote] context:[(THWPStorage *)self->storage context]];
  -[THNoteCardStorageLayer setFontFamily:textColor:underlineColor:characterSpacing:lineSpacingMode:lineSpacingAmount:alignment:](v5, "setFontFamily:textColor:underlineColor:characterSpacing:lineSpacingMode:lineSpacingAmount:alignment:", [+[TSUFont systemFontOfSize:](TSUFont systemFontOfSize:{12.0), "familyName"}], THNoteCardBackTextColor(-[THAnnotationNoteCardInfo darkMode](self, "darkMode")), 0, 0, 4, -0.01, 1.0);
  [back setBodyLayer:v5];
  [back setShowFlipGlyph:{-[THAnnotationNoteCardInfo hasBackContent](self, "hasBackContent")}];

  [back setTitle:self->title];
  if (self->pageNumberString)
  {

    [back setPageNumber:?];
  }
}

@end