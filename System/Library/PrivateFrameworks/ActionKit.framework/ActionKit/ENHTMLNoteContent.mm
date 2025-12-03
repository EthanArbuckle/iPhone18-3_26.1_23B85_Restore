@interface ENHTMLNoteContent
- (ENHTMLNoteContent)initWithHTML:(id)l;
- (id)enmlWithNote:(id)note;
@end

@implementation ENHTMLNoteContent

- (id)enmlWithNote:(id)note
{
  v4 = objc_alloc_init(ENHTMLtoENMLConverter);
  html = [(ENHTMLNoteContent *)self html];
  v6 = [(ENHTMLtoENMLConverter *)v4 enmlFromHTMLContent:html];

  return v6;
}

- (ENHTMLNoteContent)initWithHTML:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = ENHTMLNoteContent;
  v5 = [(ENHTMLNoteContent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ENHTMLNoteContent *)v5 setHtml:lCopy];
  }

  return v6;
}

@end