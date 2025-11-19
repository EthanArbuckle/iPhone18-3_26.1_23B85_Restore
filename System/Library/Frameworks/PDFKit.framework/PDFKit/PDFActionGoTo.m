@interface PDFActionGoTo
- (PDFActionGoTo)initWithActionDictionary:(CGPDFDictionary *)a3 forDocument:(id)a4 forPage:(id)a5;
- (PDFActionGoTo)initWithDestination:(PDFDestination *)destination;
- (__CFDictionary)createDictionaryRef;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)toolTip;
- (id)toolTipNoLabel;
- (void)addDestinationToDictionaryRef:(__CFDictionary *)a3;
- (void)commonInit;
@end

@implementation PDFActionGoTo

- (PDFActionGoTo)initWithDestination:(PDFDestination *)destination
{
  v5 = destination;
  v9.receiver = self;
  v9.super_class = PDFActionGoTo;
  v6 = [(PDFAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(PDFAction *)v6 setType:@"GoTo"];
    objc_storeStrong(&v7->_private2->destination, destination);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = PDFActionGoTo;
  v5 = [(PDFAction *)&v12 copyWithZone:?];
  if (v5)
  {
    v6 = objc_alloc_init(PDFActionGoToPrivateVars);
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(PDFDestination *)self->_private2->destination copyWithZone:a3];
    v9 = v5[2];
    v10 = *(v9 + 8);
    *(v9 + 8) = v8;
  }

  return v5;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PDFActionGoTo *)self toolTip];
  v4 = [v2 stringWithFormat:@"GoTo Action - %@", v3];

  return v4;
}

- (PDFActionGoTo)initWithActionDictionary:(CGPDFDictionary *)a3 forDocument:(id)a4 forPage:(id)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = PDFActionGoTo;
  v9 = [(PDFAction *)&v15 initWithActionDictionary:a3 forDocument:v8 forPage:a5];
  if (v9)
  {
    v10 = [[PDFDestination alloc] initWithDictionary:a3 forDocument:v8];
    private2 = v9->_private2;
    destination = private2->destination;
    private2->destination = v10;

    v13 = v9;
  }

  return v9;
}

- (void)commonInit
{
  v7.receiver = self;
  v7.super_class = PDFActionGoTo;
  [(PDFAction *)&v7 commonInit];
  v3 = objc_alloc_init(PDFActionGoToPrivateVars);
  private2 = self->_private2;
  self->_private2 = v3;

  v5 = self->_private2;
  destination = v5->destination;
  v5->destination = 0;
}

- (__CFDictionary)createDictionaryRef
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"/S", @"/GoTo");
  [(PDFActionGoTo *)self addDestinationToDictionaryRef:Mutable];
  return Mutable;
}

- (void)addDestinationToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFActionGoTo *)self destination];
  if (v4)
  {
    v6 = v4;
    v5 = [v4 createArrayRef];
    v4 = v6;
    if (v5)
    {
      CFDictionarySetValue(a3, @"/D", v5);
      CFRelease(v5);
      v4 = v6;
    }
  }
}

- (id)toolTip
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = PDFKitLocalizedString(@"Go to page %@");
  v5 = [(PDFActionGoTo *)self destination];
  v6 = [v5 page];
  v7 = [v6 label];
  v8 = [v3 stringWithFormat:v4, v7];

  return v8;
}

- (id)toolTipNoLabel
{
  v2 = [(PDFActionGoTo *)self destination];
  v3 = [v2 page];
  v4 = PDFGetToolTipNoLabel(v3);

  return v4;
}

@end