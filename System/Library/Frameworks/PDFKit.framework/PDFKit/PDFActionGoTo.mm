@interface PDFActionGoTo
- (PDFActionGoTo)initWithActionDictionary:(CGPDFDictionary *)dictionary forDocument:(id)document forPage:(id)page;
- (PDFActionGoTo)initWithDestination:(PDFDestination *)destination;
- (__CFDictionary)createDictionaryRef;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)toolTip;
- (id)toolTipNoLabel;
- (void)addDestinationToDictionaryRef:(__CFDictionary *)ref;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = PDFActionGoTo;
  v5 = [(PDFAction *)&v12 copyWithZone:?];
  if (v5)
  {
    v6 = objc_alloc_init(PDFActionGoToPrivateVars);
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(PDFDestination *)self->_private2->destination copyWithZone:zone];
    v9 = v5[2];
    v10 = *(v9 + 8);
    *(v9 + 8) = v8;
  }

  return v5;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  toolTip = [(PDFActionGoTo *)self toolTip];
  v4 = [v2 stringWithFormat:@"GoTo Action - %@", toolTip];

  return v4;
}

- (PDFActionGoTo)initWithActionDictionary:(CGPDFDictionary *)dictionary forDocument:(id)document forPage:(id)page
{
  documentCopy = document;
  v15.receiver = self;
  v15.super_class = PDFActionGoTo;
  v9 = [(PDFAction *)&v15 initWithActionDictionary:dictionary forDocument:documentCopy forPage:page];
  if (v9)
  {
    v10 = [[PDFDestination alloc] initWithDictionary:dictionary forDocument:documentCopy];
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

- (void)addDestinationToDictionaryRef:(__CFDictionary *)ref
{
  destination = [(PDFActionGoTo *)self destination];
  if (destination)
  {
    v6 = destination;
    createArrayRef = [destination createArrayRef];
    destination = v6;
    if (createArrayRef)
    {
      CFDictionarySetValue(ref, @"/D", createArrayRef);
      CFRelease(createArrayRef);
      destination = v6;
    }
  }
}

- (id)toolTip
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = PDFKitLocalizedString(@"Go to page %@");
  destination = [(PDFActionGoTo *)self destination];
  page = [destination page];
  label = [page label];
  v8 = [v3 stringWithFormat:v4, label];

  return v8;
}

- (id)toolTipNoLabel
{
  destination = [(PDFActionGoTo *)self destination];
  page = [destination page];
  v4 = PDFGetToolTipNoLabel(page);

  return v4;
}

@end