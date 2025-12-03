@interface PDFAppearanceCharacteristics
- (NSDictionary)appearanceCharacteristicsKeyValues;
- (PDFAppearanceCharacteristics)init;
- (PDFAppearanceCharacteristics)initWithAnnotationDictionary:(CGPDFDictionary *)dictionary forControlType:(int64_t)type;
- (__CFDictionary)createDictionaryRef;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addColor:(id)color forKey:(__CFString *)key toDictionaryRef:(__CFDictionary *)ref;
- (void)dealloc;
- (void)setBackgroundColor:(UIColor *)backgroundColor;
- (void)setBorderColor:(UIColor *)borderColor;
- (void)setCaption:(NSString *)caption;
- (void)setDownCaption:(NSString *)downCaption;
- (void)setRolloverCaption:(NSString *)rolloverCaption;
@end

@implementation PDFAppearanceCharacteristics

- (PDFAppearanceCharacteristics)init
{
  v17.receiver = self;
  v17.super_class = PDFAppearanceCharacteristics;
  v2 = [(PDFAppearanceCharacteristics *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(PDFAppearanceCharacteristicsPrivate);
    v4 = v2->_private;
    v2->_private = v3;

    v5 = v2->_private;
    backgroundColor = v5->backgroundColor;
    v5->backgroundColor = 0;

    v7 = v2->_private;
    borderColor = v7->borderColor;
    v7->borderColor = 0;

    v2->_private->rotation = 0;
    v2->_private->controlType = -1;
    v9 = v2->_private;
    caption = v9->caption;
    v9->caption = 0;

    v11 = v2->_private;
    rolloverCaption = v11->rolloverCaption;
    v11->rolloverCaption = 0;

    v13 = v2->_private;
    downCaption = v13->downCaption;
    v13->downCaption = 0;

    v2->_private->icon = 0;
    v2->_private->scaleCircumstance = 0;
    v2->_private->scaleProportional = 1;
    v15 = v2;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = objc_alloc_init(PDFAppearanceCharacteristicsPrivate);
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(UIColor *)self->_private->backgroundColor copyWithZone:zone];
    v9 = v5[1];
    v10 = *(v9 + 8);
    *(v9 + 8) = v8;

    v11 = [(UIColor *)self->_private->borderColor copyWithZone:zone];
    v12 = v5[1];
    v13 = *(v12 + 16);
    *(v12 + 16) = v11;

    *(v5[1] + 24) = self->_private->rotation;
    *(v5[1] + 32) = self->_private->controlType;
    v14 = [(NSString *)self->_private->caption copyWithZone:zone];
    v15 = v5[1];
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = [(NSString *)self->_private->rolloverCaption copyWithZone:zone];
    v18 = v5[1];
    v19 = *(v18 + 48);
    *(v18 + 48) = v17;

    v20 = [(NSString *)self->_private->downCaption copyWithZone:zone];
    v21 = v5[1];
    v22 = *(v21 + 56);
    *(v21 + 56) = v20;

    v23 = self->_private;
    if (v23->icon)
    {
      CGPDFFormGetStream();
      *(v5[1] + 64) = CGPDFFormCreate();
      v23 = self->_private;
    }

    *(v5[1] + 72) = v23->scaleCircumstance;
    *(v5[1] + 76) = self->_private->scaleProportional;
  }

  return v5;
}

- (void)dealloc
{
  if (self->_private->icon)
  {
    CGPDFFormRelease();
  }

  v3.receiver = self;
  v3.super_class = PDFAppearanceCharacteristics;
  [(PDFAppearanceCharacteristics *)&v3 dealloc];
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
  v4 = [(UIColor *)backgroundColor copy];
  v5 = self->_private;
  v6 = v5->backgroundColor;
  v5->backgroundColor = v4;

  MEMORY[0x1EEE66BB8](v4, v6);
}

- (void)setBorderColor:(UIColor *)borderColor
{
  v4 = [(UIColor *)borderColor copy];
  v5 = self->_private;
  v6 = v5->borderColor;
  v5->borderColor = v4;

  MEMORY[0x1EEE66BB8](v4, v6);
}

- (PDFAppearanceCharacteristics)initWithAnnotationDictionary:(CGPDFDictionary *)dictionary forControlType:(int64_t)type
{
  value = 0;
  v31 = 0;
  v28 = 0;
  string = 0;
  v26 = 0;
  v27 = 0;
  v6 = [(PDFAppearanceCharacteristics *)self init];
  if (v6)
  {
    if (CGPDFDictionaryGetArray(dictionary, "BG", &value))
    {
      v7 = PDFColorCreateFromCGPDFArray(value);
      v8 = v6->_private;
      backgroundColor = v8->backgroundColor;
      v8->backgroundColor = v7;
    }

    if (CGPDFDictionaryGetArray(dictionary, "BC", &value))
    {
      v10 = PDFColorCreateFromCGPDFArray(value);
      v11 = v6->_private;
      borderColor = v11->borderColor;
      v11->borderColor = v10;
    }

    if (CGPDFDictionaryGetInteger(dictionary, "R", &v31))
    {
      v6->_private->rotation = v31;
    }

    v6->_private->controlType = type;
    if (v6->_private->controlType <= 2uLL && CGPDFDictionaryGetString(dictionary, "CA", &string))
    {
      v13 = CGPDFStringCopyTextString(string);
      v14 = v6->_private;
      caption = v14->caption;
      v14->caption = &v13->isa;
    }

    if (!v6->_private->controlType && CGPDFDictionaryGetString(dictionary, "RC", &string))
    {
      v16 = CGPDFStringCopyTextString(string);
      v17 = v6->_private;
      rolloverCaption = v17->rolloverCaption;
      v17->rolloverCaption = &v16->isa;
    }

    if (!v6->_private->controlType && CGPDFDictionaryGetString(dictionary, "AC", &string))
    {
      v19 = CGPDFStringCopyTextString(string);
      v20 = v6->_private;
      downCaption = v20->downCaption;
      v20->downCaption = &v19->isa;
    }

    if (!v6->_private->controlType && CGPDFDictionaryGetStream(dictionary, "I", &v28))
    {
      v6->_private->icon = CGPDFFormCreate();
    }

    if (v6->_private->controlType || !CGPDFDictionaryGetDictionary(dictionary, "IF", &v27))
    {
      goto LABEL_37;
    }

    if (CGPDFDictionaryGetName(dictionary, "SW", &v26))
    {
      v22 = *v26;
      if (v22 == 83)
      {
        if (!v26[1])
        {
          v23 = 2;
          goto LABEL_32;
        }
      }

      else if (v22 == 78)
      {
        if (!v26[1])
        {
          v23 = 3;
          goto LABEL_32;
        }
      }

      else if (v22 == 66 && !v26[1])
      {
        v23 = 1;
LABEL_32:
        v6->_private->scaleCircumstance = v23;
      }
    }

    if (CGPDFDictionaryGetName(dictionary, "S", &v26) && *v26 == 65 && !v26[1])
    {
      v6->_private->scaleProportional = 0;
    }

LABEL_37:
    v24 = v6;
  }

  return v6;
}

- (__CFDictionary)createDictionaryRef
{
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    valuePtr = self->_private->rotation;
    if (valuePtr)
    {
      v5 = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
      if (v5)
      {
        v6 = v5;
        CFDictionarySetValue(Mutable, @"/R", v5);
        CFRelease(v6);
      }
    }

    borderColor = [(PDFAppearanceCharacteristics *)self borderColor];
    [(PDFAppearanceCharacteristics *)self addColor:borderColor forKey:@"/BC" toDictionaryRef:Mutable];

    [(PDFAppearanceCharacteristics *)self addColor:self->_private->backgroundColor forKey:@"/BG" toDictionaryRef:Mutable];
    v8 = self->_private;
    if (v8->controlType > 2uLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8->caption;
      if (v9)
      {
        CFDictionarySetValue(Mutable, @"/CA", v9);
      }
    }

    v10 = self->_private;
    if (!v10->controlType)
    {
      v11 = v10->rolloverCaption;

      if (v11)
      {
        CFDictionarySetValue(Mutable, @"/RC", v11);
      }

      v9 = self->_private->downCaption;

      if (v9)
      {
        CFDictionarySetValue(Mutable, @"/AC", v9);
      }
    }
  }

  return Mutable;
}

- (void)addColor:(id)color forKey:(__CFString *)key toDictionaryRef:(__CFDictionary *)ref
{
  if (!color)
  {
    return;
  }

  cGColor = [color CGColor];
  NumberOfComponents = CGColorGetNumberOfComponents(cGColor);
  Components = CGColorGetComponents(cGColor);
  v10 = Components;
  if (NumberOfComponents == 5)
  {
    v15 = objc_alloc(MEMORY[0x1E695DEC8]);
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:*v10];
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v10[1]];
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:v10[2]];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:v10[3]];
    value = [v15 initWithObjects:{v12, v13, v16, v17, 0}];

    goto LABEL_10;
  }

  if (NumberOfComponents == 4)
  {
    v11 = objc_alloc(MEMORY[0x1E695DEC8]);
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:*v10];
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v10[1]];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v10[2]];
    value = [v11 initWithObjects:{v12, v13, v14, 0}];

LABEL_10:
LABEL_13:
    CFDictionarySetValue(ref, key, value);
    goto LABEL_14;
  }

  if (NumberOfComponents != 2)
  {
    value = 0;
    CFDictionarySetValue(ref, key, 0);
    goto LABEL_14;
  }

  if (Components[1] != 0.0)
  {
    v18 = objc_alloc(MEMORY[0x1E695DEC8]);
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:*v10];
    value = [v18 initWithObjects:{v19, 0}];

    goto LABEL_13;
  }

  value = objc_alloc_init(MEMORY[0x1E695DEC8]);
  CFDictionarySetValue(ref, key, value);
LABEL_14:
}

- (void)setCaption:(NSString *)caption
{
  v4 = [(NSString *)caption copy];
  v5 = self->_private;
  v6 = v5->caption;
  v5->caption = v4;

  MEMORY[0x1EEE66BB8](v4, v6);
}

- (void)setRolloverCaption:(NSString *)rolloverCaption
{
  v4 = [(NSString *)rolloverCaption copy];
  v5 = self->_private;
  v6 = v5->rolloverCaption;
  v5->rolloverCaption = v4;

  MEMORY[0x1EEE66BB8](v4, v6);
}

- (void)setDownCaption:(NSString *)downCaption
{
  v4 = [(NSString *)downCaption copy];
  v5 = self->_private;
  v6 = v5->downCaption;
  v5->downCaption = v4;

  MEMORY[0x1EEE66BB8](v4, v6);
}

- (NSDictionary)appearanceCharacteristicsKeyValues
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_private->rotation];
  [v3 setValue:v4 forKey:@"R"];

  v5 = self->_private;
  backgroundColor = v5->backgroundColor;
  if (backgroundColor)
  {
    v7 = [(UIColor *)backgroundColor copyWithZone:0];
    [v3 setValue:v7 forKey:@"BG"];

    v5 = self->_private;
  }

  borderColor = v5->borderColor;
  if (borderColor)
  {
    v9 = [(UIColor *)borderColor copyWithZone:0];
    [v3 setValue:v9 forKey:@"BC"];

    v5 = self->_private;
  }

  caption = v5->caption;
  if (caption)
  {
    v11 = [(NSString *)caption copyWithZone:0];
    [v3 setValue:v11 forKey:@"CA"];

    v5 = self->_private;
  }

  rolloverCaption = v5->rolloverCaption;
  if (rolloverCaption)
  {
    v13 = [(NSString *)rolloverCaption copyWithZone:0];
    [v3 setValue:v13 forKey:@"RC"];

    v5 = self->_private;
  }

  downCaption = v5->downCaption;
  if (downCaption)
  {
    v15 = [(NSString *)downCaption copyWithZone:0];
    [v3 setValue:v15 forKey:@"AC"];
  }

  return v3;
}

@end