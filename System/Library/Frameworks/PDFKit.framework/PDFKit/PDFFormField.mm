@interface PDFFormField
- (BOOL)_isRedacted;
- (PDFFormField)initWithAnnotation:(id)a3;
- (PDFFormField)initWithFormDictionary:(CGPDFDictionary *)a3;
- (__CFDictionary)createDictionaryRef;
- (__CFDictionary)dictionaryRef;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)document;
- (void)addDictionaryValueToDictionaryRef:(__CFDictionary *)a3;
- (void)addFieldNameToDictionaryRef:(__CFDictionary *)a3;
- (void)addFieldTypeToDictionaryRef:(__CFDictionary *)a3;
- (void)addNameDefaultValueToDictionaryRef:(__CFDictionary *)a3;
- (void)addNameValueToDictionaryRef:(__CFDictionary *)a3;
- (void)addStringDefaultValueToDictionaryRef:(__CFDictionary *)a3;
- (void)addStringValueToDictionaryRef:(__CFDictionary *)a3;
- (void)clearDictionaryRef;
- (void)commonCreateDictionaryRef:(__CFDictionary *)a3;
- (void)commonInit;
- (void)dealloc;
- (void)setDefaultStringValue:(id)a3;
- (void)setDocument:(id)a3;
- (void)setFieldName:(id)a3;
- (void)setStringValue:(id)a3;
@end

@implementation PDFFormField

- (PDFFormField)initWithAnnotation:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = PDFFormField;
  v5 = [(PDFFormField *)&v30 init];
  v6 = v5;
  if (v5)
  {
    [(PDFFormField *)v5 commonInit];
    v7 = [v4 page];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 document];
      if (v9)
      {
        [(PDFFormField *)v6 setDocument:v9];
      }
    }

    v10 = [v4 valueForAnnotationKey:@"/Subtype"];
    if (![v10 isEqualToString:@"/Widget"])
    {
      v11 = v6;
      v6 = 0;
LABEL_26:

      v6 = v6;
      goto LABEL_27;
    }

    v11 = [v4 valueForAnnotationKey:@"/FT"];
    if ([v11 isEqualToString:@"/Btn"])
    {
      v12 = 0;
    }

    else if ([v11 isEqualToString:@"/Tx"])
    {
      v12 = 1;
    }

    else
    {
      if (![v11 isEqualToString:@"/Ch"])
      {
LABEL_15:
        if ([v11 isEqualToString:@"/Btn"])
        {
          v6->_private->buttonType = [v4 widgetControlType];
        }

        v13 = [v4 fieldName];
        v14 = [v13 copy];
        v15 = v6->_private;
        fieldName = v15->fieldName;
        v15->fieldName = v14;

        if ([v11 isEqualToString:@"/Btn"] && objc_msgSend(v4, "buttonWidgetState") == 1)
        {
          v17 = [v4 widgetOnStateString];
          v18 = [v17 copy];
          v19 = v6->_private;
          stringValue = v19->stringValue;
          v19->stringValue = v18;
        }

        else if (([v11 isEqualToString:@"/Tx"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"/Ch"))
        {
          v21 = [v4 widgetStringValue];
          v22 = [v21 copy];
          v23 = v6->_private;
          v24 = v23->stringValue;
          v23->stringValue = v22;
        }

        if (([v11 isEqualToString:@"/Tx"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"/Ch"))
        {
          v25 = [v4 widgetDefaultStringValue];
          v26 = [v25 copy];
          v27 = v6->_private;
          defaultStringValue = v27->defaultStringValue;
          v27->defaultStringValue = v26;
        }

        goto LABEL_26;
      }

      v12 = 2;
    }

    v6->_private->fieldType = v12;
    goto LABEL_15;
  }

LABEL_27:

  return v6;
}

- (PDFFormField)initWithFormDictionary:(CGPDFDictionary *)a3
{
  v41 = 0u;
  v42 = 0u;
  value = 0;
  string = 0;
  v37.receiver = self;
  v37.super_class = PDFFormField;
  v38 = 0;
  v4 = [(PDFFormField *)&v37 init];
  v5 = v4;
  if (v4)
  {
    [(PDFFormField *)v4 commonInit];
    if (CGPDFDictionaryGetInteger(a3, "Ff", &value))
    {
      v6 = value;
    }

    else
    {
      v6 = 0;
    }

    if (CGPDFDictionaryGetRect())
    {
      v7 = v5->_private;
      v7->bounds.origin.x = PDFRectFromCGRect(*&v41, *(&v41 + 1), *&v42, *(&v42 + 1));
      v7->bounds.origin.y = v8;
      v7->bounds.size.width = v9;
      v7->bounds.size.height = v10;
    }

    if (!CGPDFDictionaryGetName(a3, "FT", &v38))
    {
LABEL_24:
      if (!CGPDFDictionaryGetString(a3, "T", &string))
      {
        NSLog(&cfstr_PdfformfieldHa.isa);
        goto LABEL_37;
      }

      v21 = CGPDFStringCopyTextString(string);
      v22 = v5->_private;
      fieldName = v22->fieldName;
      v22->fieldName = &v21->isa;

      if (!CGPDFDictionaryGetName(a3, "V", &v38))
      {
        if (CGPDFDictionaryGetString(a3, "V", &string))
        {
          v25 = CGPDFStringCopyTextString(string);
          goto LABEL_30;
        }

        if (!CGPDFDictionaryGetName(a3, "AS", &v38))
        {
          goto LABEL_31;
        }
      }

      v24 = objc_alloc(MEMORY[0x1E696AEC0]);
      v25 = [v24 initWithCString:v38 encoding:1];
LABEL_30:
      v26 = v5->_private;
      stringValue = v26->stringValue;
      v26->stringValue = &v25->isa;

LABEL_31:
      if (CGPDFDictionaryGetString(a3, "DV", &string))
      {
        v28 = CGPDFStringCopyTextString(string);
        v29 = 1;
      }

      else
      {
        v30 = v5->_private;
        v31 = v30->stringValue;
        if (!v31 || !v30->fieldType)
        {
          goto LABEL_37;
        }

        v28 = [(NSString *)v31 copy];
        v29 = 0;
      }

      v32 = v5->_private;
      defaultStringValue = v32->defaultStringValue;
      v32->defaultStringValue = &v28->isa;

      v5->_private->writeDefaultValue = v29;
LABEL_37:
      v34 = v5;
      goto LABEL_38;
    }

    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [v11 initWithUTF8String:v38];
    v13 = [PDFAnnotation getProperNameStringFromString:v12];

    if ([v13 isEqualToString:@"/Btn"])
    {
      v5->_private->fieldType = 0;
      if ((v6 & 0x8000) != 0)
      {
        v14 = v5->_private;
        v15 = 1;
      }

      else
      {
        v14 = v5->_private;
        if ((v6 & 0x10000) != 0)
        {
          v14->buttonType = 0;
          goto LABEL_23;
        }

        v15 = 2;
      }

      v14->buttonType = v15;
    }

    else
    {
      if ([v13 isEqualToString:@"/Tx"])
      {
        v16 = v5->_private;
        v17 = 1;
      }

      else
      {
        if (![v13 isEqualToString:@"/Ch"])
        {
          if ([v13 isEqualToString:@"/Sig"])
          {
            v5->_private->fieldType = 3;
            v36 = 0;
            if (CGPDFDictionaryGetDictionary(a3, "V", &v36))
            {
              v18 = CGPDFDictionaryCreateNSDictionary(v36);
              v19 = v5->_private;
              digitalSignature = v19->digitalSignature;
              v19->digitalSignature = v18;
            }
          }

          goto LABEL_23;
        }

        v16 = v5->_private;
        v17 = 2;
      }

      v16->fieldType = v17;
    }

LABEL_23:

    goto LABEL_24;
  }

LABEL_38:

  return v5;
}

- (void)commonInit
{
  v3 = objc_alloc_init(PDFFormFieldPrivateVars);
  v4 = self->_private;
  self->_private = v3;

  objc_storeWeak(&self->_private->document, 0);
  v5 = self->_private;
  v6 = *(MEMORY[0x1E695F058] + 16);
  v5->bounds.origin = *MEMORY[0x1E695F058];
  v5->bounds.size = v6;
  self->_private->fieldType = -1;
  self->_private->buttonType = -1;
  v7 = self->_private;
  fieldName = v7->fieldName;
  v7->fieldName = 0;

  v9 = self->_private;
  stringValue = v9->stringValue;
  v9->stringValue = 0;

  v11 = self->_private;
  defaultStringValue = v11->defaultStringValue;
  v11->defaultStringValue = 0;

  self->_private->writeDefaultValue = 0;
  self->_private->dictionary = 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    [v4 commonInit];
    v6 = [(PDFFormField *)self document];
    [v5 setDocument:v6];

    [v5 setFieldType:{-[PDFFormField fieldType](self, "fieldType")}];
    [v5 setButtonType:{-[PDFFormField buttonType](self, "buttonType")}];
    v7 = [(PDFFormField *)self fieldName];
    [v5 setFieldName:v7];

    v8 = [(PDFFormField *)self stringValue];
    [v5 setStringValue:v8];

    v9 = [(PDFFormField *)self defaultStringValue];
    [v5 setDefaultStringValue:v9];

    [v5 setWriteDefaultValue:{-[PDFFormField writeDefaultValue](self, "writeDefaultValue")}];
    v10 = v5;
  }

  return v5;
}

- (void)dealloc
{
  [(PDFFormField *)self clearDictionaryRef];
  v3.receiver = self;
  v3.super_class = PDFFormField;
  [(PDFFormField *)&v3 dealloc];
}

- (void)clearDictionaryRef
{
  v3 = self->_private;
  dictionary = v3->dictionary;
  if (dictionary)
  {
    Value = CFDictionaryGetValue(dictionary, @"/Kids");
    if (Value)
    {
      v6 = Value;
      Count = CFArrayGetCount(Value);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
          if (ValueAtIndex)
          {
            CFDictionaryRemoveValue(ValueAtIndex, @"/Parent");
          }
        }
      }
    }

    CFRelease(self->_private->dictionary);
    v3 = self->_private;
  }

  v3->dictionary = 0;
}

- (__CFDictionary)dictionaryRef
{
  if ([(PDFFormField *)self _isRedacted])
  {
    return 0;
  }

  result = self->_private->dictionary;
  if (!result)
  {
    self->_private->dictionary = [(PDFFormField *)self createDictionaryRef];
    return self->_private->dictionary;
  }

  return result;
}

- (void)commonCreateDictionaryRef:(__CFDictionary *)a3
{
  v5 = self->_private;
  fieldType = v5->fieldType;
  if ((fieldType - 1) < 2)
  {
    [(PDFFormField *)self addStringValueToDictionaryRef:a3];
  }

  else if (fieldType == 3)
  {
    [(PDFFormField *)self addDictionaryValueToDictionaryRef:a3];
  }

  else if (!fieldType && v5->buttonType)
  {
    [(PDFFormField *)self addNameValueToDictionaryRef:a3];
  }

  v7 = self->_private;
  if (v7->writeDefaultValue)
  {
    v8 = v7->fieldType;
    if (v8)
    {
      if (v8 <= 2)
      {

        [(PDFFormField *)self addStringDefaultValueToDictionaryRef:a3];
      }
    }

    else if (v7->buttonType)
    {

      [(PDFFormField *)self addNameDefaultValueToDictionaryRef:a3];
    }
  }
}

- (__CFDictionary)createDictionaryRef
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = [(PDFFormField *)self document];
  if (v2)
  {
    v3 = *MEMORY[0x1E695E480];
    cf = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    theArray = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
    v37 = [v2 pageCount];
    if (v37)
    {
      v4 = 0;
      v39 = v2;
      do
      {
        v38 = v4;
        v5 = [v2 pageAtIndex:v37];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v41 = v5;
        obj = [v5 annotations];
        v6 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v46;
          while (2)
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v46 != v8)
              {
                objc_enumerationMutation(obj);
              }

              v10 = *(*(&v45 + 1) + 8 * i);
              v11 = [v10 valueForAnnotationKey:@"/Subtype"];
              v12 = [v10 valueForAnnotationKey:@"/FT"];
              if ([v11 isEqualToString:@"/Widget"])
              {
                if ([v12 isEqualToString:@"/Btn"] && (objc_msgSend(v10, "fieldName"), v13 = objc_claimAutoreleasedReturnValue(), -[PDFFormField fieldName](self, "fieldName"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToString:", v14), v14, v13, v15) || objc_msgSend(v12, "isEqualToString:", @"/Ch") && (objc_msgSend(v10, "fieldName"), v16 = objc_claimAutoreleasedReturnValue(), -[PDFFormField fieldName](self, "fieldName"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqualToString:", v17), v17, v16, v18) || objc_msgSend(v12, "isEqualToString:", @"/Tx") && (objc_msgSend(v10, "fieldName"), v19 = objc_claimAutoreleasedReturnValue(), -[PDFFormField fieldName](self, "fieldName"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "isEqualToString:", v20), v20, v19, v21) || objc_msgSend(v12, "isEqualToString:", @"/Sig") && (objc_msgSend(v10, "fieldName"), v22 = objc_claimAutoreleasedReturnValue(), -[PDFFormField fieldName](self, "fieldName"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "isEqualToString:", v23), v23, v22, v24))
                {
                  v25 = [v10 dictionaryRef];
                  if (!v25)
                  {

                    v2 = v39;
                    ValueAtIndex = cf;
                    v26 = theArray;
                    goto LABEL_27;
                  }

                  CFArrayAppendValue(theArray, v25);
                }
              }
            }

            v7 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

        v4 = v38 + 1;
        v2 = v39;
      }

      while (v38 + 1 != v37);
    }

    v26 = theArray;
    if (CFArrayGetCount(theArray))
    {
      ValueAtIndex = cf;
      if (CFArrayGetCount(theArray) == 1)
      {
        CFRelease(cf);
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        [(PDFFormField *)self commonCreateDictionaryRef:ValueAtIndex];
        CFRetain(ValueAtIndex);
      }

      else if (CFArrayGetCount(theArray) >= 2)
      {
        [(PDFFormField *)self addFieldTypeToDictionaryRef:cf];
        [(PDFFormField *)self addFieldNameToDictionaryRef:cf];
        [(PDFFormField *)self commonCreateDictionaryRef:cf];
        Count = CFArrayGetCount(theArray);
        if (Count >= 1)
        {
          v30 = Count;
          for (j = 0; j != v30; ++j)
          {
            v32 = CFArrayGetValueAtIndex(theArray, j);
            CFDictionaryRemoveValue(v32, @"/FT");
            v33 = CFArrayGetValueAtIndex(theArray, j);
            CFDictionaryRemoveValue(v33, @"/T");
            v34 = CFArrayGetValueAtIndex(theArray, j);
            CFDictionaryRemoveValue(v34, @"/V");
            v35 = CFArrayGetValueAtIndex(theArray, j);
            CFDictionaryRemoveValue(v35, @"/DV");
            v36 = CFArrayGetValueAtIndex(theArray, j);
            CFDictionarySetValue(v36, @"/Parent", cf);
          }
        }

        CFDictionarySetValue(cf, @"/Kids", theArray);
      }
    }

    else
    {
      CFRelease(cf);
      NSLog(&cfstr_PdfformfieldWi.isa);
      ValueAtIndex = 0;
    }

LABEL_27:
    if (v26)
    {
      CFRelease(v26);
    }
  }

  else
  {
    ValueAtIndex = 0;
  }

  return ValueAtIndex;
}

- (void)setDocument:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_storeWeak(&self->_private->document, v4);
  v5 = self->_private;
  if (!v5->stringValue)
  {
    v27 = v4;
    [v4 annotationsForFieldName:v5->fieldName];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v34 = 0u;
    v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      v9 = @"/Subtype";
      v29 = &stru_1F416DF70;
      while (1)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          v12 = self->_private;
          [v11 bounds];
          v37.origin.x = v13;
          v37.origin.y = v14;
          v37.size.width = v15;
          v37.size.height = v16;
          if (PDFRectEqualToRect(v12->bounds, v37))
          {
            v17 = [v11 valueForAnnotationKey:v9];
            if ([v17 isEqualToString:@"/Widget"])
            {
              v18 = v9;
              v19 = [v11 valueForAnnotationKey:@"/FT"];
              v20 = [v11 valueForAnnotationKey:@"/V"];
              if ([v19 isEqualToString:@"/Btn"])
              {
                v21 = [v11 widgetOnStateString];
                if (v20 && [v20 isEqualToString:v21])
                {
                  v28 = [v20 copy];

                  v29 = v28;
                }

LABEL_17:
              }

              else if ((([v19 isEqualToString:@"/Tx"] & 1) != 0 || objc_msgSend(v19, "isEqualToString:", @"/Ch")) && v20)
              {
                v21 = v29;
                v29 = [v20 copy];
                goto LABEL_17;
              }

              v9 = v18;
            }

            continue;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (!v7)
        {
          goto LABEL_24;
        }
      }
    }

    v29 = &stru_1F416DF70;
LABEL_24:
    objc_storeStrong(&self->_private->stringValue, v29);
    v22 = self->_private;
    stringValue = v22->stringValue;
    if (stringValue && !v22->defaultStringValue && v22->fieldType)
    {
      v24 = [(NSString *)stringValue copy];
      v25 = self->_private;
      defaultStringValue = v25->defaultStringValue;
      v25->defaultStringValue = v24;

      self->_private->writeDefaultValue = 0;
    }

    v4 = v27;
  }
}

- (id)document
{
  WeakRetained = objc_loadWeakRetained(&self->_private->document);

  return WeakRetained;
}

- (void)setFieldName:(id)a3
{
  v5 = a3;
  v6 = self->_private;
  fieldName = v6->fieldName;
  p_fieldName = &v6->fieldName;
  if (fieldName != v5)
  {
    v9 = v5;
    objc_storeStrong(p_fieldName, a3);
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](p_fieldName, v5);
}

- (void)setStringValue:(id)a3
{
  v5 = a3;
  v6 = self->_private;
  stringValue = v6->stringValue;
  p_stringValue = &v6->stringValue;
  if (stringValue != v5)
  {
    v9 = v5;
    objc_storeStrong(p_stringValue, a3);
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](p_stringValue, v5);
}

- (void)setDefaultStringValue:(id)a3
{
  v5 = a3;
  v6 = self->_private;
  defaultStringValue = v6->defaultStringValue;
  p_defaultStringValue = &v6->defaultStringValue;
  if (defaultStringValue != v5)
  {
    v9 = v5;
    objc_storeStrong(p_defaultStringValue, a3);
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](p_defaultStringValue, v5);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PDFFormField *)self fieldName];
  v5 = [(PDFFormField *)self stringValue];
  v6 = [(PDFFormField *)self defaultStringValue];
  v7 = [v3 stringWithFormat:@"Field \"%@\" = \"%@\" (\"%@\"", v4, v5, v6];

  return v7;
}

- (void)addFieldTypeToDictionaryRef:(__CFDictionary *)a3
{
  fieldType = self->_private->fieldType;
  if (fieldType <= 3)
  {
    CFDictionarySetValue(a3, @"/FT", off_1E8151338[fieldType]);
  }
}

- (void)addFieldNameToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFFormField *)self fieldName];
  if (v4)
  {
    CFDictionarySetValue(a3, @"/T", v4);
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)addNameValueToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFFormField *)self stringValue];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    CFDictionarySetValue(a3, @"/V", [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", v4]);
    v5 = v6;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)addStringValueToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFFormField *)self stringValue];
  if (v4)
  {
    CFDictionarySetValue(a3, @"/V", v4);
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)addNameDefaultValueToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFFormField *)self defaultStringValue];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    CFDictionarySetValue(a3, @"/DV", [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", v4]);
    v5 = v6;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)addStringDefaultValueToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFFormField *)self defaultStringValue];
  if (v4)
  {
    CFDictionarySetValue(a3, @"/DV", v4);
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)addDictionaryValueToDictionaryRef:(__CFDictionary *)a3
{
  digitalSignature = self->_private->digitalSignature;
  if (digitalSignature)
  {
    CFDictionarySetValue(a3, @"/V", digitalSignature);
  }
}

- (BOOL)_isRedacted
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_private->document);
  v4 = [WeakRetained annotationsForFieldName:v2->_private->fieldName];
  v5 = [v4 firstObject];
  v6 = [v5 page];

  LOBYTE(v2) = [v6 rectIntersectsWithRedactionPath:{v2->_private->bounds.origin.x, v2->_private->bounds.origin.y, v2->_private->bounds.size.width, v2->_private->bounds.size.height}];
  return v2;
}

@end