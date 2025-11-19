@interface THGlossaryNoteCardInfo
- (int64_t)compareToNoteCard:(id)a3;
- (void)dealloc;
- (void)populateNoteCardBack:(id)a3;
- (void)populateNoteCardFront:(id)a3;
@end

@implementation THGlossaryNoteCardInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THGlossaryNoteCardInfo;
  [(THGlossaryNoteCardInfo *)&v3 dealloc];
}

- (int64_t)compareToNoteCard:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (!v4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = -[NSString caseInsensitiveCompare:](-[THModelGlossaryEntry term](-[THGlossaryNoteCardInfo glossaryEntry](self, "glossaryEntry"), "term"), "caseInsensitiveCompare:", [objc_msgSend(v4 "glossaryEntry")]);
  if (v5 == NSOrderedDescending)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  if (v5 == NSOrderedAscending)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

- (void)populateNoteCardFront:(id)a3
{
  v5 = objc_alloc_init(THNoteCardStorageLayer);
  [(THNoteCardStorageLayer *)v5 setText:[(THModelGlossaryEntry *)self->_glossaryEntry term] context:[(THModelGlossaryEntry *)[(THGlossaryNoteCardInfo *)self glossaryEntry] context]];
  -[THNoteCardStorageLayer setFontFamily:textColor:underlineColor:characterSpacing:lineSpacingMode:lineSpacingAmount:alignment:](v5, "setFontFamily:textColor:underlineColor:characterSpacing:lineSpacingMode:lineSpacingAmount:alignment:", [+[TSUFont systemFontOfSize:](TSUFont systemFontOfSize:{12.0), "familyName"}], THNoteCardFrontTextColor(-[THGlossaryNoteCardInfo darkMode](self, "darkMode")), 0, 0, 2, 0.0, 1.0);
  [a3 setBodyLayer:v5];
  [a3 setShowFlipGlyph:{-[THGlossaryNoteCardInfo hasBackContent](self, "hasBackContent")}];

  title = self->_title;

  [a3 setTitle:title];
}

- (void)populateNoteCardBack:(id)a3
{
  v5 = objc_alloc_init(THNoteCardStorageLayer);
  glossaryEntry = self->_glossaryEntry;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_F1C2C;
  v7[3] = &unk_45D720;
  v7[4] = v5;
  v7[5] = self;
  [(THModelGlossaryEntry *)glossaryEntry synchronouslyLoadInfoOnComplete:v7];
  [a3 setBodyLayer:v5];
  [a3 setShowFlipGlyph:{-[THGlossaryNoteCardInfo hasBackContent](self, "hasBackContent")}];

  [a3 setTitle:self->_backTitle];
}

@end