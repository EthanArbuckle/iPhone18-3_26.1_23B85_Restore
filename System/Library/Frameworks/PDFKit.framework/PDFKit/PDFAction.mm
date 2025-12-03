@interface PDFAction
+ (Class)_classForActionDictionary:(CGPDFDictionary *)dictionary;
+ (PDFAction)actionWithActionDictionary:(CGPDFDictionary *)dictionary forDocument:(id)document forPage:(id)page;
- (PDFAction)init;
- (PDFAction)initWithActionDictionary:(CGPDFDictionary *)dictionary forDocument:(id)document forPage:(id)page;
- (id)baseURLForDocument:(id)document;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setNextAction:(CGPDFDictionary *)action forDocument:(id)document forPage:(id)page;
- (void)_setNextActions:(CGPDFArray *)actions forDocument:(id)document forPage:(id)page;
- (void)commonInit;
@end

@implementation PDFAction

- (PDFAction)init
{
  v5.receiver = self;
  v5.super_class = PDFAction;
  v2 = [(PDFAction *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PDFAction *)v2 commonInit];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = objc_alloc_init(PDFActionPrivate);
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSString *)self->_private->type copyWithZone:zone];
    v9 = v5[1];
    v10 = *(v9 + 8);
    *(v9 + 8) = v8;

    v11 = [(NSArray *)self->_private->nextActions copyWithZone:zone];
    v12 = v5[1];
    v13 = *(v12 + 16);
    *(v12 + 16) = v11;
  }

  return v5;
}

- (void)commonInit
{
  v3 = objc_alloc_init(PDFActionPrivate);
  v4 = self->_private;
  self->_private = v3;

  v5 = self->_private;
  type = v5->type;
  v5->type = 0;

  v7 = self->_private;
  nextActions = v7->nextActions;
  v7->nextActions = 0;
}

+ (PDFAction)actionWithActionDictionary:(CGPDFDictionary *)dictionary forDocument:(id)document forPage:(id)page
{
  pageCopy = page;
  documentCopy = document;
  v10 = [self _classForActionDictionary:dictionary];
  if (!v10)
  {
    v10 = PDFAction;
  }

  v11 = [[v10 alloc] initWithActionDictionary:dictionary forDocument:documentCopy forPage:pageCopy];

  return v11;
}

+ (Class)_classForActionDictionary:(CGPDFDictionary *)dictionary
{
  value = 0;
  Name = CGPDFDictionaryGetName(dictionary, "S", &value);
  v4 = value;
  v5 = !Name || value == 0;
  if (!v5 && (!strcmp(value, "GoTo") || !strcmp(v4, "Named") || !strcmp(v4, "URI") || !strcmp(v4, "Launch") || !strcmp(v4, "GoToR") || !strcmp(v4, "ResetForm")))
  {
    v6 = objc_opt_class();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PDFAction)initWithActionDictionary:(CGPDFDictionary *)dictionary forDocument:(id)document forPage:(id)page
{
  documentCopy = document;
  pageCopy = page;
  v20 = 0;
  value = 0;
  v18.receiver = self;
  v18.super_class = PDFAction;
  v19 = 0;
  v10 = [(PDFAction *)&v18 init];
  v11 = v10;
  if (v10)
  {
    [(PDFAction *)v10 commonInit];
    if (CGPDFDictionaryGetName(dictionary, "S", &value))
    {
      v12 = objc_alloc(MEMORY[0x1E696AEC0]);
      v13 = [v12 initWithUTF8String:value];
      v14 = v11->_private;
      type = v14->type;
      v14->type = v13;
    }

    if (CGPDFDictionaryGetDictionary(dictionary, "Next", &v19))
    {
      [(PDFAction *)v11 _setNextAction:v19 forDocument:documentCopy forPage:pageCopy];
    }

    else if (CGPDFDictionaryGetArray(dictionary, "Next", &v20))
    {
      [(PDFAction *)v11 _setNextActions:v20 forDocument:documentCopy forPage:pageCopy];
    }

    v16 = v11;
  }

  return v11;
}

- (void)_setNextAction:(CGPDFDictionary *)action forDocument:(id)document forPage:(id)page
{
  documentCopy = document;
  pageCopy = page;
  v9 = [MEMORY[0x1E696B098] valueWithPointer:action];
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v12 = [threadDictionary objectForKey:v9];

  if (!v12)
  {
    [threadDictionary setObject:v9 forKey:v9];
    v13 = [objc_opt_class() _classForActionDictionary:action];
    if (!v13)
    {
      v13 = PDFAction;
    }

    v14 = [[v13 alloc] initWithActionDictionary:action forDocument:documentCopy forPage:pageCopy];
    if (v14)
    {
      v15 = [MEMORY[0x1E695DEC8] arrayWithObject:v14];
      v16 = self->_private;
      nextActions = v16->nextActions;
      v16->nextActions = v15;
    }
  }

  [threadDictionary removeObjectForKey:v9];
}

- (void)_setNextActions:(CGPDFArray *)actions forDocument:(id)document forPage:(id)page
{
  documentCopy = document;
  pageCopy = page;
  value = 0;
  Count = CGPDFArrayGetCount(actions);
  if (Count)
  {
    v11 = Count;
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
    v13 = 0;
    for (i = 0; i != v11; ++i)
    {
      if (CGPDFArrayGetDictionary(actions, i, &value))
      {
        v15 = [objc_opt_class() _classForActionDictionary:value];
        if (!v15)
        {
          v15 = PDFAction;
        }

        v16 = [v15 alloc];
        v17 = [v16 initWithActionDictionary:value forDocument:documentCopy forPage:pageCopy];

        if (v17)
        {
          [(NSArray *)v12 addObject:v17];
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    v18 = self->_private;
    nextActions = v18->nextActions;
    v18->nextActions = v12;
    v20 = v12;
  }
}

- (id)baseURLForDocument:(id)document
{
  documentCopy = document;
  value = 0;
  documentRef = [documentCopy documentRef];
  if (!documentRef || (Catalog = CGPDFDocumentGetCatalog(documentRef), !CGPDFDictionaryGetDictionary(Catalog, "URI", &value)) || (string = 0, !CGPDFDictionaryGetString(value, "Base", &string)) || (BytePtr = CGPDFStringGetBytePtr(string)) == 0 || (v7 = BytePtr, !CGPDFStringGetLength(string)) || ([MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:30], v8 = objc_claimAutoreleasedReturnValue(), documentURL = objc_msgSend(objc_alloc(MEMORY[0x1E695DFF8]), "initWithString:", v8), v8, !documentURL))
  {
    documentURL = [documentCopy documentURL];
  }

  return documentURL;
}

@end