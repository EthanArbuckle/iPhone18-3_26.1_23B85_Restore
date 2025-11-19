@interface PDFActionRemoteGoTo
- (CGPoint)point;
- (PDFActionRemoteGoTo)initWithActionDictionary:(CGPDFDictionary *)a3 forDocument:(id)a4 forPage:(id)a5;
- (PDFActionRemoteGoTo)initWithPageIndex:(NSUInteger)pageIndex atPoint:(CGPoint)point fileURL:(NSURL *)url;
- (__CFDictionary)createDictionaryRef;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)toolTipNoLabel;
- (void)addDestinationToDictionaryRef:(__CFDictionary *)a3;
- (void)commonInit;
- (void)setURL:(NSURL *)URL;
@end

@implementation PDFActionRemoteGoTo

- (PDFActionRemoteGoTo)initWithPageIndex:(NSUInteger)pageIndex atPoint:(CGPoint)point fileURL:(NSURL *)url
{
  y = point.y;
  x = point.x;
  v10 = url;
  v15.receiver = self;
  v15.super_class = PDFActionRemoteGoTo;
  v11 = [(PDFAction *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(PDFActionRemoteGoTo *)v11 commonInit];
    [(PDFAction *)v12 setType:@"GoToR"];
    v12->_private2->pageIndex = pageIndex;
    private2 = v12->_private2;
    private2->point.x = x;
    private2->point.y = y;
    objc_storeStrong(&v12->_private2->url, url);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v15.receiver = self;
  v15.super_class = PDFActionRemoteGoTo;
  v5 = [(PDFAction *)&v15 copyWithZone:?];
  if (v5)
  {
    v6 = objc_alloc_init(PDFActionRemoteGoToPrivateVars);
    v7 = v5[2];
    v5[2] = v6;

    *(v5[2] + 8) = self->_private2->pageIndex;
    *(v5[2] + 16) = self->_private2->point;
    v8 = [(NSURL *)self->_private2->url copyWithZone:a3];
    v9 = v5[2];
    v10 = *(v9 + 32);
    *(v9 + 32) = v8;

    v11 = [(PDFDestination *)self->_private2->destination copyWithZone:a3];
    v12 = v5[2];
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  return v5;
}

- (CGPoint)point
{
  private2 = self->_private2;
  x = private2->point.x;
  y = private2->point.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setURL:(NSURL *)URL
{
  v4 = [(NSURL *)URL copy];
  private2 = self->_private2;
  v6 = private2->url;
  private2->url = v4;

  MEMORY[0x1EEE66BB8](v4, v6);
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PDFActionRemoteGoTo *)self toolTip];
  v4 = [v2 stringWithFormat:@"GoToR Action - %@", v3];

  return v4;
}

- (PDFActionRemoteGoTo)initWithActionDictionary:(CGPDFDictionary *)a3 forDocument:(id)a4 forPage:(id)a5
{
  v8 = a4;
  v29.receiver = self;
  v29.super_class = PDFActionRemoteGoTo;
  v9 = [(PDFAction *)&v29 initWithActionDictionary:a3 forDocument:v8 forPage:a5];
  if (v9)
  {
    value = 0;
    if (CGPDFDictionaryGetObject(a3, "F", &value))
    {
      v10 = value;
      v11 = [v8 documentURL];
      v12 = [v11 path];
      v13 = getFilepathFromObjectDetermineEncoding(v10, [v12 stringByDeletingLastPathComponent]);

      if (v13)
      {
        v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13];
        private2 = v9->_private2;
        url = private2->url;
        private2->url = v14;
      }
    }

    if (v9->_private2->url)
    {
      v17 = [[PDFDocument alloc] initWithURL:v9->_private2->url];
      if (v17)
      {
        v18 = [[PDFDestination alloc] initWithDictionary:a3 forDocument:v17];
        v19 = v9->_private2;
        destination = v19->destination;
        v19->destination = v18;

        v21 = v9->_private2->destination;
        if (v21)
        {
          v22 = [(PDFDestination *)v21 page];
          v9->_private2->pageIndex = [(PDFDocument *)v17 indexForPage:v22];

          v23 = v9->_private2;
          [(PDFDestination *)v23->destination point];
          v23->point.x = v24;
          v23->point.y = v25;
        }
      }
    }

    v26 = v9;
  }

  return v9;
}

- (void)commonInit
{
  v11.receiver = self;
  v11.super_class = PDFActionRemoteGoTo;
  [(PDFAction *)&v11 commonInit];
  v3 = objc_alloc_init(PDFActionRemoteGoToPrivateVars);
  private2 = self->_private2;
  self->_private2 = v3;

  self->_private2->pageIndex = 0;
  v5 = self->_private2;
  v5->point.x = PDFPointMake(3.40282347e38, 3.40282347e38);
  v5->point.y = v6;
  v7 = self->_private2;
  url = v7->url;
  v7->url = 0;

  v9 = self->_private2;
  destination = v9->destination;
  v9->destination = 0;
}

- (__CFDictionary)createDictionaryRef
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"/S", @"/GoToR");
  [(PDFActionRemoteGoTo *)self addDestinationToDictionaryRef:Mutable];
  return Mutable;
}

- (void)addDestinationToDictionaryRef:(__CFDictionary *)a3
{
  v4 = self->_private2->destination;
  if (v4)
  {
    v6 = v4;
    v5 = [(PDFDestination *)v4 createArrayRef];
    v4 = v6;
    if (v5)
    {
      CFDictionarySetValue(a3, @"/D", v5);
      CFRelease(v5);
      v4 = v6;
    }
  }
}

- (id)toolTipNoLabel
{
  v3 = [(PDFActionRemoteGoTo *)self URL];
  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = PDFKitLocalizedString(@"Go to file %@, page %lu");
    v6 = [(PDFActionRemoteGoTo *)self URL];
    v7 = [v6 path];
    v8 = [v7 lastPathComponent];
    v9 = [v4 stringWithFormat:v5, v8, self->_private2->pageIndex + 1];
  }

  else
  {
    v9 = PDFKitLocalizedString(@"Broken link");
  }

  return v9;
}

@end