@interface PDFForm
- (PDFForm)init;
- (PDFForm)initWithDocument:(id)a3;
- (__CFDictionary)createDictionaryRef;
- (id)copyWithZone:(_NSZone *)a3;
- (id)defaultStringValueForFieldNamed:(id)a3;
- (id)description;
- (id)document;
- (id)fieldNamed:(id)a3;
- (id)fieldNames;
- (id)stringValueForFieldNamed:(id)a3;
- (void)_commonResetForm:(id)a3 inclusive:(BOOL)a4;
- (void)addFormField:(id)a3;
- (void)dealloc;
- (void)removeFormFieldWithFieldName:(id)a3;
- (void)setDocument:(id)a3;
- (void)setStringValue:(id)a3 forFieldNamed:(id)a4 postFormChangeNotification:(BOOL)a5;
@end

@implementation PDFForm

- (PDFForm)init
{
  v9.receiver = self;
  v9.super_class = PDFForm;
  v2 = [(PDFForm *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(PDFFormPrivateVars);
    v4 = v2->_private;
    v2->_private = v3;

    objc_storeWeak(&v2->_private->document, 0);
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    v6 = v2->_private;
    fieldArray = v6->fieldArray;
    v6->fieldArray = v5;

    v2->_private->appearString = 0;
  }

  return v2;
}

- (PDFForm)initWithDocument:(id)a3
{
  v4 = a3;
  array = 0;
  value = 0;
  v23.receiver = self;
  v23.super_class = PDFForm;
  v5 = [(PDFForm *)&v23 init];
  if (v5 && (v6 = objc_alloc_init(PDFFormPrivateVars), v7 = v5->_private, v5->_private = v6, v7, objc_storeWeak(&v5->_private->document, v4), v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0], v9 = v5->_private, fieldArray = v9->fieldArray, v9->fieldArray = v8, fieldArray, v5->_private->appearString = 0, (v11 = objc_msgSend(v4, "documentRef")) != 0) && (Catalog = CGPDFDocumentGetCatalog(v11)) != 0 && CGPDFDictionaryGetDictionary(Catalog, "AcroForm", &value) && CGPDFDictionaryGetArray(value, "Fields", &array) && CGPDFArrayGetCount(array))
  {
    Count = CGPDFArrayGetCount(array);
    if (Count)
    {
      v14 = Count;
      for (i = 0; i != v14; ++i)
      {
        object = 0;
        if (CGPDFArrayGetObject(array, i, &object))
        {
          v21 = 0;
          if (CGPDFObjectGetValue(object, kCGPDFObjectTypeDictionary, &v21))
          {
            v16 = [PDFFormField alloc];
            v17 = [(PDFFormField *)v16 initWithFormDictionary:v21];
            v18 = v17;
            if (v17)
            {
              [(PDFFormField *)v17 setDocument:v4];
              [(NSMutableArray *)v5->_private->fieldArray addObject:v18];
            }
          }
        }
      }
    }

    if (CGPDFDictionaryGetString(value, "DA", &v5->_private->appearString))
    {
      CGPDFStringRetain();
    }

    v19 = v5;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = objc_alloc_init(PDFFormPrivateVars);
  v7 = v5[1];
  v5[1] = v6;

  WeakRetained = objc_loadWeakRetained(&self->_private->document);
  objc_storeWeak((v5[1] + 8), WeakRetained);

  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v10 = v5[1];
  v11 = *(v10 + 16);
  *(v10 + 16) = v9;

  *(v5[1] + 24) = CGPDFStringRetain();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_private->fieldArray;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * v16) copyWithZone:{a3, v19}];
        [*(v5[1] + 16) addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v5;
}

- (void)dealloc
{
  CGPDFStringRelease();
  v3.receiver = self;
  v3.super_class = PDFForm;
  [(PDFForm *)&v3 dealloc];
}

- (id)document
{
  WeakRetained = objc_loadWeakRetained(&self->_private->document);

  return WeakRetained;
}

- (id)fieldNames
{
  fieldArray = self->_private->fieldArray;
  if (fieldArray && [(NSMutableArray *)fieldArray count])
  {
    v4 = [(NSMutableArray *)self->_private->fieldArray count];
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v7 = [(NSMutableArray *)self->_private->fieldArray objectAtIndex:i];
        v8 = [v7 fieldName];

        if (v8)
        {
          [v5 addObject:v8];
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setStringValue:(id)a3 forFieldNamed:(id)a4 postFormChangeNotification:(BOOL)a5
{
  v5 = a5;
  v15 = a3;
  v8 = [(PDFForm *)self fieldNamed:a4];
  v9 = v8;
  if (v8)
  {
    [v8 setStringValue:v15];
    if (v5)
    {
      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      v11 = [(PDFForm *)self document];
      v12 = MEMORY[0x1E695DF20];
      v13 = [v9 fieldName];
      v14 = [v12 dictionaryWithObject:v13 forKey:@"PDFFormFieldName"];
      [v10 postNotificationName:@"PDFFormDidChangeValue" object:v11 userInfo:v14];
    }
  }
}

- (id)stringValueForFieldNamed:(id)a3
{
  v3 = [(PDFForm *)self fieldNamed:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 stringValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)defaultStringValueForFieldNamed:(id)a3
{
  v3 = [(PDFForm *)self fieldNamed:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 defaultStringValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addFormField:(id)a3
{
  v7 = a3;
  v4 = [v7 fieldName];
  v5 = [(PDFForm *)self fieldNamed:v4];

  if (!v5)
  {
    v6 = [(PDFForm *)self document];
    [v7 setDocument:v6];

    [(NSMutableArray *)self->_private->fieldArray addObject:v7];
  }
}

- (void)removeFormFieldWithFieldName:(id)a3
{
  v4 = [(PDFForm *)self fieldNamed:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(NSMutableArray *)self->_private->fieldArray removeObject:v4];
    v5 = v6;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"fields: ["];
  v4 = [(NSMutableArray *)self->_private->fieldArray count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [(NSMutableArray *)self->_private->fieldArray objectAtIndex:i];
      v8 = [v7 description];
      [v3 appendString:v8];
    }
  }

  [v3 appendString:@"]"];

  return v3;
}

- (void)_commonResetForm:(id)a3 inclusive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v21 = v6;
  if (v6)
  {
    v7 = [v6 count];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSMutableArray *)self->_private->fieldArray count];
  if (v8)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      v11 = [(NSMutableArray *)self->_private->fieldArray objectAtIndex:i];
      v12 = [v11 fieldName];
      if (v7)
      {
        v13 = 0;
        while (1)
        {
          v14 = [v21 objectAtIndex:v13];
          v15 = [v14 isEqualToString:v12];

          if (v15)
          {
            break;
          }

          if (v7 == ++v13)
          {
            goto LABEL_10;
          }
        }

        v16 = 1;
      }

      else
      {
LABEL_10:
        v16 = 0;
      }

      if (v16 == v4)
      {
        v17 = [v11 defaultStringValue];
        [v11 setStringValue:v17];

        v18 = [MEMORY[0x1E696AD88] defaultCenter];
        v19 = [(PDFForm *)self document];
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObject:v12 forKey:@"PDFFormFieldName"];
        [v18 postNotificationName:@"PDFFormDidChangeValue" object:v19 userInfo:v20];
      }
    }
  }
}

- (id)fieldNamed:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    NSLog(&cfstr_TempFieldnamed.isa);
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  fieldArray = self->_private->fieldArray;
  if (!fieldArray)
  {
    goto LABEL_9;
  }

  v6 = [(NSMutableArray *)fieldArray count];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = 0;
  while (1)
  {
    v9 = [(NSMutableArray *)self->_private->fieldArray objectAtIndex:v8];
    v10 = [v9 fieldName];
    v11 = [v10 isEqualToString:v4];

    if (v11)
    {
      break;
    }

    if (v7 == ++v8)
    {
      goto LABEL_9;
    }
  }

LABEL_10:

  return v9;
}

- (__CFDictionary)createDictionaryRef
{
  v3 = [(NSMutableArray *)self->_private->fieldArray count];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 0;
  }

  v7 = Mutable;
  for (i = 0; i != v4; ++i)
  {
    v9 = [(NSMutableArray *)self->_private->fieldArray objectAtIndex:i];
    [v9 clearDictionaryRef];

    v10 = [(NSMutableArray *)self->_private->fieldArray objectAtIndex:i];
    v11 = [v10 dictionaryRef];

    if (v11)
    {
      CFArrayAppendValue(v7, v11);
    }
  }

  v12 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v12, @"/Fields", v7);
  [(PDFForm *)self addNeedsAppearanceToDictionaryRef:v12];
  CFRelease(v7);
  return v12;
}

- (void)setDocument:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_storeWeak(&self->_private->document, v4);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_private->fieldArray;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setDocument:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end