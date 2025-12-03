@interface PDFForm
- (PDFForm)init;
- (PDFForm)initWithDocument:(id)document;
- (__CFDictionary)createDictionaryRef;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultStringValueForFieldNamed:(id)named;
- (id)description;
- (id)document;
- (id)fieldNamed:(id)named;
- (id)fieldNames;
- (id)stringValueForFieldNamed:(id)named;
- (void)_commonResetForm:(id)form inclusive:(BOOL)inclusive;
- (void)addFormField:(id)field;
- (void)dealloc;
- (void)removeFormFieldWithFieldName:(id)name;
- (void)setDocument:(id)document;
- (void)setStringValue:(id)value forFieldNamed:(id)named postFormChangeNotification:(BOOL)notification;
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

- (PDFForm)initWithDocument:(id)document
{
  documentCopy = document;
  array = 0;
  value = 0;
  v23.receiver = self;
  v23.super_class = PDFForm;
  v5 = [(PDFForm *)&v23 init];
  if (v5 && (v6 = objc_alloc_init(PDFFormPrivateVars), v7 = v5->_private, v5->_private = v6, v7, objc_storeWeak(&v5->_private->document, documentCopy), v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0], v9 = v5->_private, fieldArray = v9->fieldArray, v9->fieldArray = v8, fieldArray, v5->_private->appearString = 0, (v11 = objc_msgSend(documentCopy, "documentRef")) != 0) && (Catalog = CGPDFDocumentGetCatalog(v11)) != 0 && CGPDFDictionaryGetDictionary(Catalog, "AcroForm", &value) && CGPDFDictionaryGetArray(value, "Fields", &array) && CGPDFArrayGetCount(array))
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
              [(PDFFormField *)v17 setDocument:documentCopy];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

        v17 = [*(*(&v19 + 1) + 8 * v16) copyWithZone:{zone, v19}];
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
        fieldName = [v7 fieldName];

        if (fieldName)
        {
          [v5 addObject:fieldName];
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

- (void)setStringValue:(id)value forFieldNamed:(id)named postFormChangeNotification:(BOOL)notification
{
  notificationCopy = notification;
  valueCopy = value;
  v8 = [(PDFForm *)self fieldNamed:named];
  v9 = v8;
  if (v8)
  {
    [v8 setStringValue:valueCopy];
    if (notificationCopy)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      document = [(PDFForm *)self document];
      v12 = MEMORY[0x1E695DF20];
      fieldName = [v9 fieldName];
      v14 = [v12 dictionaryWithObject:fieldName forKey:@"PDFFormFieldName"];
      [defaultCenter postNotificationName:@"PDFFormDidChangeValue" object:document userInfo:v14];
    }
  }
}

- (id)stringValueForFieldNamed:(id)named
{
  v3 = [(PDFForm *)self fieldNamed:named];
  v4 = v3;
  if (v3)
  {
    stringValue = [v3 stringValue];
  }

  else
  {
    stringValue = 0;
  }

  return stringValue;
}

- (id)defaultStringValueForFieldNamed:(id)named
{
  v3 = [(PDFForm *)self fieldNamed:named];
  v4 = v3;
  if (v3)
  {
    defaultStringValue = [v3 defaultStringValue];
  }

  else
  {
    defaultStringValue = 0;
  }

  return defaultStringValue;
}

- (void)addFormField:(id)field
{
  fieldCopy = field;
  fieldName = [fieldCopy fieldName];
  v5 = [(PDFForm *)self fieldNamed:fieldName];

  if (!v5)
  {
    document = [(PDFForm *)self document];
    [fieldCopy setDocument:document];

    [(NSMutableArray *)self->_private->fieldArray addObject:fieldCopy];
  }
}

- (void)removeFormFieldWithFieldName:(id)name
{
  v4 = [(PDFForm *)self fieldNamed:name];
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

- (void)_commonResetForm:(id)form inclusive:(BOOL)inclusive
{
  inclusiveCopy = inclusive;
  formCopy = form;
  v21 = formCopy;
  if (formCopy)
  {
    v7 = [formCopy count];
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
      fieldName = [v11 fieldName];
      if (v7)
      {
        v13 = 0;
        while (1)
        {
          v14 = [v21 objectAtIndex:v13];
          v15 = [v14 isEqualToString:fieldName];

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

      if (v16 == inclusiveCopy)
      {
        defaultStringValue = [v11 defaultStringValue];
        [v11 setStringValue:defaultStringValue];

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        document = [(PDFForm *)self document];
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObject:fieldName forKey:@"PDFFormFieldName"];
        [defaultCenter postNotificationName:@"PDFFormDidChangeValue" object:document userInfo:v20];
      }
    }
  }
}

- (id)fieldNamed:(id)named
{
  namedCopy = named;
  if (!namedCopy)
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
    fieldName = [v9 fieldName];
    v11 = [fieldName isEqualToString:namedCopy];

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
    dictionaryRef = [v10 dictionaryRef];

    if (dictionaryRef)
    {
      CFArrayAppendValue(v7, dictionaryRef);
    }
  }

  v12 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v12, @"/Fields", v7);
  [(PDFForm *)self addNeedsAppearanceToDictionaryRef:v12];
  CFRelease(v7);
  return v12;
}

- (void)setDocument:(id)document
{
  v15 = *MEMORY[0x1E69E9840];
  documentCopy = document;
  objc_storeWeak(&self->_private->document, documentCopy);
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

        [*(*(&v10 + 1) + 8 * v9++) setDocument:{documentCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end