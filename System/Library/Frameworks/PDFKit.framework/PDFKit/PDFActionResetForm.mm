@interface PDFActionResetForm
- (PDFActionResetForm)init;
- (PDFActionResetForm)initWithActionDictionary:(CGPDFDictionary *)a3 forDocument:(id)a4 forPage:(id)a5;
- (__CFDictionary)createDictionaryRef;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)toolTip;
- (void)addFieldsToDictionaryRef:(__CFDictionary *)a3;
- (void)addFlagsToDictionaryRef:(__CFDictionary *)a3;
- (void)commonInit;
- (void)setFields:(NSArray *)fields;
@end

@implementation PDFActionResetForm

- (PDFActionResetForm)init
{
  v5.receiver = self;
  v5.super_class = PDFActionResetForm;
  v2 = [(PDFAction *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PDFActionResetForm *)v2 commonInit];
    [(PDFAction *)v3 setType:@"ResetForm"];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = PDFActionResetForm;
  v5 = [(PDFAction *)&v12 copyWithZone:?];
  if (v5)
  {
    v6 = objc_alloc_init(PDFActionResetFormPrivateVars);
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(NSArray *)self->_private2->fields copyWithZone:a3];
    v9 = v5[2];
    v10 = *(v9 + 8);
    *(v9 + 8) = v8;

    *(v5[2] + 16) = self->_private2->included;
  }

  return v5;
}

- (void)setFields:(NSArray *)fields
{
  v4 = [(NSArray *)fields copy];
  private2 = self->_private2;
  v6 = private2->fields;
  private2->fields = v4;

  MEMORY[0x1EEE66BB8](v4, v6);
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PDFActionResetForm *)self toolTip];
  v4 = [v2 stringWithFormat:@"ResetForm Action - %@", v3];

  return v4;
}

- (PDFActionResetForm)initWithActionDictionary:(CGPDFDictionary *)a3 forDocument:(id)a4 forPage:(id)a5
{
  v20.receiver = self;
  v20.super_class = PDFActionResetForm;
  value = 0;
  v6 = [(PDFAction *)&v20 initWithActionDictionary:a3 forDocument:a4 forPage:a5];
  if (v6)
  {
    if (CGPDFDictionaryGetArray(a3, "Fields", &value))
    {
      v19 = 0;
      Count = CGPDFArrayGetCount(value);
      v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
      if (Count)
      {
        for (i = 0; i != Count; ++i)
        {
          object = 0;
          if (CGPDFArrayGetObject(value, i, &object))
          {
            v16 = 0;
            string = 0;
            if (CGPDFObjectGetValue(object, kCGPDFObjectTypeString, &string))
            {
              v10 = CGPDFStringCopyTextString(string);
              [v8 addObject:v10];
            }

            else if (CGPDFObjectGetValue(object, kCGPDFObjectTypeDictionary, &v16))
            {
              NSLog(&cfstr_NeedToHandleRe.isa);
            }
          }
        }
      }

      v11 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v8];
      private2 = v6->_private2;
      fields = private2->fields;
      private2->fields = v11;

      if (CGPDFDictionaryGetInteger(a3, "Flags", &v19) && (v19 & 1) != 0)
      {
        v6->_private2->included = 0;
      }
    }

    else
    {
      v6->_private2->included = 0;
    }

    v14 = v6;
  }

  return v6;
}

- (void)commonInit
{
  v7.receiver = self;
  v7.super_class = PDFActionResetForm;
  [(PDFAction *)&v7 commonInit];
  v3 = objc_alloc_init(PDFActionResetFormPrivateVars);
  private2 = self->_private2;
  self->_private2 = v3;

  v5 = self->_private2;
  fields = v5->fields;
  v5->fields = 0;

  self->_private2->included = 1;
}

- (__CFDictionary)createDictionaryRef
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"/S", @"/ResetForm");
  [(PDFActionResetForm *)self addFieldsToDictionaryRef:Mutable];
  [(PDFActionResetForm *)self addFlagsToDictionaryRef:Mutable];
  return Mutable;
}

- (void)addFieldsToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFActionResetForm *)self fields];
  if (v4)
  {
    v8 = v4;
    v5 = [v4 count];
    v4 = v8;
    if (v5)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v5, MEMORY[0x1E695E9C0]);
      for (i = 0; i != v5; ++i)
      {
        CFArrayAppendValue(Mutable, [v8 objectAtIndex:i]);
      }

      CFDictionarySetValue(a3, @"/Fields", Mutable);
      v4 = v8;
      if (Mutable)
      {
        CFRelease(Mutable);
        v4 = v8;
      }
    }
  }
}

- (void)addFlagsToDictionaryRef:(__CFDictionary *)a3
{
  valuePtr = 1;
  if (![(PDFActionResetForm *)self fieldsIncludedAreCleared])
  {
    v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    if (v4)
    {
      v5 = v4;
      CFDictionarySetValue(a3, @"/Flags", v4);
      CFRelease(v5);
    }
  }
}

- (id)toolTip
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = PDFKitLocalizedString(@"Reset forms");
  v4 = [v2 stringWithString:v3];

  return v4;
}

@end