@interface ENHTMLNoteContent
- (ENHTMLNoteContent)initWithHTML:(id)a3;
- (id)enmlWithNote:(id)a3;
@end

@implementation ENHTMLNoteContent

- (id)enmlWithNote:(id)a3
{
  v4 = objc_alloc_init(ENHTMLtoENMLConverter);
  v5 = [(ENHTMLNoteContent *)self html];
  v6 = [(ENHTMLtoENMLConverter *)v4 enmlFromHTMLContent:v5];

  return v6;
}

- (ENHTMLNoteContent)initWithHTML:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ENHTMLNoteContent;
  v5 = [(ENHTMLNoteContent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ENHTMLNoteContent *)v5 setHtml:v4];
  }

  return v6;
}

@end