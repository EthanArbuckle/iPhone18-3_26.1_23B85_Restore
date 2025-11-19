@interface PDFActionNamed
- (PDFActionNamed)initWithActionDictionary:(CGPDFDictionary *)a3 forDocument:(id)a4 forPage:(id)a5;
- (PDFActionNamed)initWithName:(PDFActionNamedName)name;
- (__CFDictionary)createDictionaryRef;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)toolTip;
- (void)addNameToDictionaryRef:(__CFDictionary *)a3;
- (void)commonInit;
@end

@implementation PDFActionNamed

- (PDFActionNamed)initWithName:(PDFActionNamedName)name
{
  v7.receiver = self;
  v7.super_class = PDFActionNamed;
  v4 = [(PDFAction *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(PDFActionNamed *)v4 commonInit];
    [(PDFAction *)v5 setType:@"Named"];
    v5->_private2->name = name;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = PDFActionNamed;
  v4 = [(PDFAction *)&v8 copyWithZone:a3];
  if (v4)
  {
    v5 = objc_alloc_init(PDFActionNamedPrivateVars);
    v6 = v4[2];
    v4[2] = v5;

    *(v4[2] + 8) = self->_private2->name;
  }

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PDFActionNamed *)self toolTip];
  v4 = [v2 stringWithFormat:@"Named Action - %@", v3];

  return v4;
}

- (PDFActionNamed)initWithActionDictionary:(CGPDFDictionary *)a3 forDocument:(id)a4 forPage:(id)a5
{
  v11.receiver = self;
  v11.super_class = PDFActionNamed;
  value = 0;
  v6 = [(PDFAction *)&v11 initWithActionDictionary:a3 forDocument:a4 forPage:a5];
  if (!v6 || !CGPDFDictionaryGetName(a3, "N", &value))
  {
    goto LABEL_14;
  }

  v7 = value;
  if (!strcmp(value, "Find"))
  {
    v9 = 8;
LABEL_26:
    v6->_private2->name = v9;
    v8 = v6;
    goto LABEL_27;
  }

  if (!strcmp(v7, "FirstPage"))
  {
    v9 = 3;
    goto LABEL_26;
  }

  if (!strcmp(v7, "GoBack"))
  {
    v9 = 5;
    goto LABEL_26;
  }

  if (!strcmp(v7, "GoForward"))
  {
    v9 = 6;
    goto LABEL_26;
  }

  if (!strcmp(v7, "GoToPage"))
  {
    v9 = 7;
    goto LABEL_26;
  }

  if (!strcmp(v7, "LastPage"))
  {
    v9 = 4;
    goto LABEL_26;
  }

  if (!strcmp(v7, "NextPage"))
  {
    v9 = 1;
    goto LABEL_26;
  }

  if (!strcmp(v7, "PrevPage"))
  {
    v9 = 2;
    goto LABEL_26;
  }

  if (!strcmp(v7, "Print"))
  {
    v9 = 9;
    goto LABEL_26;
  }

  if (!strcmp(v7, "ZoomViewIn"))
  {
    v9 = 10;
    goto LABEL_26;
  }

  if (!strcmp(v7, "ZoomViewOut"))
  {
    v9 = 11;
    goto LABEL_26;
  }

LABEL_14:
  v8 = 0;
LABEL_27:

  return v8;
}

- (void)commonInit
{
  v5.receiver = self;
  v5.super_class = PDFActionNamed;
  [(PDFAction *)&v5 commonInit];
  v3 = objc_alloc_init(PDFActionNamedPrivateVars);
  private2 = self->_private2;
  self->_private2 = v3;

  self->_private2->name = 0;
}

- (__CFDictionary)createDictionaryRef
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"/S", @"/Named");
  [(PDFActionNamed *)self addNameToDictionaryRef:Mutable];
  return Mutable;
}

- (void)addNameToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFActionNamed *)self name]- 1;
  if (v4 <= 0xA)
  {
    v5 = off_1E81516C0[v4];

    CFDictionarySetValue(a3, @"/N", v5);
  }
}

- (id)toolTip
{
  v2 = [(PDFActionNamed *)self name]- 1;
  if (v2 <= 8 && ((0x1BFu >> v2) & 1) != 0)
  {
    v3 = PDFKitLocalizedString(off_1E8151718[v2]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end