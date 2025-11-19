@interface THAnnotationNoteCardInfo
- (BOOL)shouldShowWithStudyOptions:(id)a3;
- (THAnnotationNoteCardInfo)init;
- (int64_t)compareToNoteCard:(id)a3;
- (void)dealloc;
- (void)populateNoteCardBack:(id)a3;
- (void)populateNoteCardFront:(id)a3;
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

- (int64_t)compareToNoteCard:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (!v4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [(THAnnotationNoteCardInfo *)self pageIndex];
  if (v5 == [v4 pageIndex])
  {
    v6 = [(THAnnotationNoteCardInfo *)self bodyPosition];
    v7 = [v4 bodyPosition];
  }

  else
  {
    v6 = [(THAnnotationNoteCardInfo *)self pageIndex];
    v7 = [v4 pageIndex];
  }

  if (v6 > v7)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

- (BOOL)shouldShowWithStudyOptions:(id)a3
{
  v5 = [a3 showAnnotations];
  if (v5)
  {
    v6 = [(THAnnotation *)self->annotation annotationStyle];

    LOBYTE(v5) = [a3 shouldShowAnnotationStyle:v6];
  }

  return v5;
}

- (void)populateNoteCardFront:(id)a3
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
  v10 = [(THAnnotation *)self->annotation annotationStorageRange];
  [(THNoteCardStorageLayer *)v8 setStorage:storage range:v10, v11];
  -[THNoteCardStorageLayer setFontFamily:textColor:underlineColor:characterSpacing:lineSpacingMode:lineSpacingAmount:alignment:](v8, "setFontFamily:textColor:underlineColor:characterSpacing:lineSpacingMode:lineSpacingAmount:alignment:", [+[TSUFont systemFontOfSize:](TSUFont systemFontOfSize:{12.0), "familyName"}], THNoteCardFrontTextColor(-[THAnnotationNoteCardInfo darkMode](self, "darkMode")), v7, 0, 4, 0.0, 1.0);
  [a3 setBodyLayer:v8];
  [a3 setShowFlipGlyph:{-[THAnnotationNoteCardInfo hasBackContent](self, "hasBackContent")}];

  [a3 setTitle:self->title];
  if (self->pageNumberString)
  {
    [a3 setPageNumber:?];
  }

  v12 = [objc_msgSend(v5 "notesSidebarBarColor")];

  [a3 setColorBarColor:v12];
}

- (void)populateNoteCardBack:(id)a3
{
  if (![(THAnnotation *)self->annotation annotationNote])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = objc_alloc_init(THNoteCardStorageLayer);
  [(THNoteCardStorageLayer *)v5 setText:[(THAnnotation *)self->annotation annotationNote] context:[(THWPStorage *)self->storage context]];
  -[THNoteCardStorageLayer setFontFamily:textColor:underlineColor:characterSpacing:lineSpacingMode:lineSpacingAmount:alignment:](v5, "setFontFamily:textColor:underlineColor:characterSpacing:lineSpacingMode:lineSpacingAmount:alignment:", [+[TSUFont systemFontOfSize:](TSUFont systemFontOfSize:{12.0), "familyName"}], THNoteCardBackTextColor(-[THAnnotationNoteCardInfo darkMode](self, "darkMode")), 0, 0, 4, -0.01, 1.0);
  [a3 setBodyLayer:v5];
  [a3 setShowFlipGlyph:{-[THAnnotationNoteCardInfo hasBackContent](self, "hasBackContent")}];

  [a3 setTitle:self->title];
  if (self->pageNumberString)
  {

    [a3 setPageNumber:?];
  }
}

@end