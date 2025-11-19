@interface PDFOutline
- (BOOL)_addDestinationToDictionaryRef:(__CFDictionary *)a3;
- (BOOL)_childDictionaryReferencesParent:(CGPDFDictionary *)a3;
- (NSString)label;
- (NSUInteger)index;
- (NSUInteger)numberOfChildren;
- (PDFAction)action;
- (PDFDestination)destination;
- (PDFDocument)document;
- (PDFOutline)childAtIndex:(NSUInteger)index;
- (PDFOutline)init;
- (PDFOutline)initWithDictionary:(CGPDFDictionary *)a3 forDocument:(id)a4 parent:(id)a5;
- (PDFOutline)parent;
- (__CFDictionary)createDictionaryRef;
- (id)_childArray;
- (id)_firstChild;
- (id)_lastChild;
- (id)_next;
- (id)_previous;
- (int)_openDescendantCount;
- (void)_addActionToDictionaryRef:(__CFDictionary *)a3;
- (void)_lazilyLoadChildren;
- (void)_removeChildAtIndex:(unint64_t)a3;
- (void)commonInit;
- (void)dealloc;
- (void)insertChild:(PDFOutline *)child atIndex:(NSUInteger)index;
- (void)invalidateDictionaryRef;
- (void)removeFromParent;
- (void)setAction:(PDFAction *)action;
- (void)setDestination:(PDFDestination *)destination;
- (void)setLabel:(NSString *)label;
@end

@implementation PDFOutline

- (PDFOutline)init
{
  v5.receiver = self;
  v5.super_class = PDFOutline;
  v2 = [(PDFOutline *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PDFOutline *)v2 commonInit];
  }

  return v3;
}

- (PDFDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->_private->document);

  return WeakRetained;
}

- (PDFOutline)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_private->parent);

  return WeakRetained;
}

- (NSUInteger)numberOfChildren
{
  v2 = self->_private;
  if (!v2->childrenLoaded)
  {
    [(PDFOutline *)self _lazilyLoadChildren];
    v2 = self->_private;
  }

  result = v2->children;
  if (result)
  {
    return [result count];
  }

  return result;
}

- (NSUInteger)index
{
  v3 = [(PDFOutline *)self parent];

  if (!v3)
  {
    return 0;
  }

  v4 = [(PDFOutline *)self parent];
  v5 = [v4 _childArray];
  v6 = [v5 indexOfObject:self];

  return v6;
}

- (PDFOutline)childAtIndex:(NSUInteger)index
{
  v5 = self->_private;
  if (!v5->childrenLoaded)
  {
    [(PDFOutline *)self _lazilyLoadChildren];
    v5 = self->_private;
  }

  children = v5->children;
  if (children)
  {
    if ([children count] <= index)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"childAtIndex: %ld out of bounds", index}];
      children = 0;
    }

    else
    {
      children = [(NSMutableArray *)self->_private->children objectAtIndex:index];
    }
  }

  return children;
}

- (void)insertChild:(PDFOutline *)child atIndex:(NSUInteger)index
{
  v6 = child;
  if (v6)
  {
    v12 = v6;
    v7 = self->_private;
    if (!v7->childrenLoaded)
    {
      [(PDFOutline *)self _lazilyLoadChildren];
      v7 = self->_private;
    }

    children = v7->children;
    if (!children)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      v10 = self->_private;
      v11 = v10->children;
      v10->children = v9;

      children = self->_private->children;
    }

    [(NSMutableArray *)children insertObject:v12 atIndex:index];
    [(PDFOutline *)v12 _setParent:self];
    v6 = v12;
  }
}

- (void)removeFromParent
{
  v3 = [(PDFOutline *)self parent];

  if (v3)
  {
    v4 = [(PDFOutline *)self index];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = MEMORY[0x1E695DF30];
      v6 = *MEMORY[0x1E695D920];

      [v5 raise:v6 format:@"removeFromParent: object no longer child of parent"];
    }

    else
    {
      v7 = v4;
      v8 = [(PDFOutline *)self parent];
      [v8 _removeChildAtIndex:v7];

      p_parent = &self->_private->parent;

      objc_storeWeak(p_parent, 0);
    }
  }
}

- (NSString)label
{
  v3 = self->_private;
  title = v3->title;
  if (!title)
  {
    v3->title = &stru_1F416DF70;

    title = self->_private->title;
  }

  return title;
}

- (void)setLabel:(NSString *)label
{
  v4 = [(NSString *)label copy];
  v5 = self->_private;
  title = v5->title;
  v5->title = v4;

  MEMORY[0x1EEE66BB8](v4, title);
}

- (PDFDestination)destination
{
  v2 = [(PDFOutline *)self action];
  v3 = v2;
  if (v2 && ([v2 type], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"GoTo"), v4, v5))
  {
    v6 = [v3 destination];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDestination:(PDFDestination *)destination
{
  v4 = destination;
  v5 = [[PDFActionGoTo alloc] initWithDestination:v4];

  [(PDFOutline *)self setAction:v5];
}

- (PDFAction)action
{
  v2 = self->_private;
  if (v2->action)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v2 = self->_private;
    if (isKindOfClass)
    {
      action = v2->action;
      v2->action = 0;

      WeakRetained = objc_loadWeakRetained(&self->_private->document);
      v7 = [[PDFDestination alloc] initWithDictionary:self->_private->srcDictionary forDocument:WeakRetained];
      if (v7)
      {
        v8 = [[PDFActionGoTo alloc] initWithDestination:v7];
      }

      else
      {
        value = 0;
        if (!CGPDFDictionaryGetDictionary(self->_private->srcDictionary, "A", &value))
        {
LABEL_8:

          v2 = self->_private;
          goto LABEL_9;
        }

        v8 = [PDFAction actionWithActionDictionary:value forDocument:WeakRetained forPage:0];
      }

      v9 = self->_private;
      v10 = v9->action;
      v9->action = &v8->super;

      goto LABEL_8;
    }
  }

LABEL_9:
  v11 = v2->action;

  return v11;
}

- (void)setAction:(PDFAction *)action
{
  v5 = action;
  v6 = self->_private;
  v8 = v6->action;
  p_action = &v6->action;
  if (v8 != v5)
  {
    v9 = v5;
    objc_storeStrong(p_action, action);
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](p_action, v5);
}

- (void)dealloc
{
  dictionary = self->_private->dictionary;
  if (dictionary)
  {
    CFRelease(dictionary);
  }

  v4.receiver = self;
  v4.super_class = PDFOutline;
  [(PDFOutline *)&v4 dealloc];
}

- (PDFOutline)initWithDictionary:(CGPDFDictionary *)a3 forDocument:(id)a4 parent:(id)a5
{
  v8 = a4;
  v9 = a5;
  v21.receiver = self;
  v21.super_class = PDFOutline;
  v10 = [(PDFOutline *)&v21 init];
  v11 = v10;
  if (v10)
  {
    [(PDFOutline *)v10 commonInit];
    v19 = 0;
    value = 0;
    objc_storeWeak(&v11->_private->document, v8);
    v11->_private->srcDictionary = a3;
    objc_storeWeak(&v11->_private->parent, v9);
    if (CGPDFDictionaryGetString(a3, "Title", &value))
    {
      v12 = CGPDFStringCopyTextString(value);
      v13 = v11->_private;
      title = v13->title;
      v13->title = &v12->isa;
    }

    else
    {
      v11->_private->open = 1;
    }

    if (CGPDFDictionaryGetInteger(a3, "Count", &v19))
    {
      v11->_private->open = v19 > 0;
    }

    v15 = [MEMORY[0x1E695DFB0] null];
    v16 = v11->_private;
    action = v16->action;
    v16->action = v15;

    v11->_private->childrenLoaded = 0;
  }

  return v11;
}

- (void)_lazilyLoadChildren
{
  v2 = self->_private;
  if (v2)
  {
    if (v2->srcDictionary)
    {
      value = 0;
      v2->childrenLoaded = 1;
      if (CGPDFDictionaryGetDictionary(self->_private->srcDictionary, "First", &value))
      {
        v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
        v5 = self->_private;
        children = v5->children;
        v5->children = v4;

        if (self->_private->children)
        {
          while (![(PDFOutline *)self _childDictionaryReferencesParent:value])
          {
            WeakRetained = objc_loadWeakRetained(&self->_private->document);
            v8 = objc_alloc(objc_opt_class());
            v9 = [v8 initWithDictionary:value forDocument:WeakRetained parent:self];
            if (!v9)
            {

              return;
            }

            v10 = v9;
            [(NSMutableArray *)self->_private->children addObject:v9];

            if (!CGPDFDictionaryGetDictionary(value, "Next", &value))
            {
              return;
            }
          }
        }
      }
    }
  }
}

- (void)commonInit
{
  v3 = objc_alloc_init(PDFOutlinePrivate);
  v4 = self->_private;
  self->_private = v3;

  objc_storeWeak(&self->_private->document, 0);
  v5 = self->_private;
  title = v5->title;
  v5->title = 0;

  v7 = self->_private;
  action = v7->action;
  v7->action = 0;

  objc_storeWeak(&self->_private->parent, 0);
  v9 = self->_private;
  children = v9->children;
  v9->children = 0;

  self->_private->childrenLoaded = 0;
  self->_private->dictionary = 0;
  self->_private->open = 0;
  self->_private->srcDictionary = 0;
}

- (__CFDictionary)createDictionaryRef
{
  valuePtr = 0;
  dictionary = self->_private->dictionary;
  v3 = MEMORY[0x1E695E480];
  if (!dictionary)
  {
    v7 = *MEMORY[0x1E695E480];
    self->_private->dictionary = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (self->_private->dictionary)
    {
      v8 = [(PDFOutline *)self _firstChild];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 createDictionaryRef];
        if (v10)
        {
          v11 = v10;
          CFDictionarySetValue(self->_private->dictionary, @"/First", v10);
          CFRelease(v11);
        }
      }

      v12 = [(PDFOutline *)self parent];

      if (v12)
      {
        v13 = [v12 createDictionaryRef];
        if (v13)
        {
          v14 = v13;
          CFDictionarySetValue(self->_private->dictionary, @"/Parent", v13);
          CFRelease(v14);
        }
      }

      v15 = [(PDFOutline *)self _next];

      if (v15)
      {
        v16 = [v15 createDictionaryRef];
        if (v16)
        {
          v17 = v16;
          CFDictionarySetValue(self->_private->dictionary, @"/Next", v16);
          CFRelease(v17);
        }
      }

      v18 = [(PDFOutline *)self _previous];

      if (v18)
      {
        v19 = [v18 createDictionaryRef];
        if (v19)
        {
          v20 = v19;
          CFDictionarySetValue(self->_private->dictionary, @"/Prev", v19);
          CFRelease(v20);
        }
      }

      v4 = [(PDFOutline *)self _lastChild];

      if (v4)
      {
        v21 = [v4 createDictionaryRef];
        if (v21)
        {
          v22 = v21;
          CFDictionarySetValue(self->_private->dictionary, @"/Last", v21);
          CFRelease(v22);
        }
      }

      v23 = [(PDFOutline *)self _openDescendantCount];
      valuePtr = v23;
      WeakRetained = objc_loadWeakRetained(&self->_private->parent);
      if (WeakRetained || v23 >= 1)
      {
        v25 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr);
        if (v25)
        {
          v26 = v25;
          CFDictionarySetValue(self->_private->dictionary, @"/Count", v25);
          CFRelease(v26);
        }

        if (WeakRetained)
        {
          v27 = self->_private->dictionary;
          v28 = [(PDFOutline *)self label];
          CFDictionarySetValue(v27, @"/Title", v28);
        }
      }

      if (![(PDFOutline *)self _addDestinationToDictionaryRef:self->_private->dictionary])
      {
        [(PDFOutline *)self _addActionToDictionaryRef:self->_private->dictionary];
      }

      dictionary = self->_private->dictionary;
      if (dictionary)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v4 = 0;
    }

    Copy = 0;
    goto LABEL_32;
  }

  v4 = 0;
LABEL_3:
  Copy = CFDictionaryCreateCopy(*v3, dictionary);
LABEL_32:

  return Copy;
}

- (void)invalidateDictionaryRef
{
  dictionary = self->_private->dictionary;
  if (dictionary)
  {
    CFRelease(dictionary);
    self->_private->dictionary = 0;
  }

  v4 = [(PDFOutline *)self numberOfChildren];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [(PDFOutline *)self childAtIndex:i];
      [v7 invalidateDictionaryRef];
    }
  }
}

- (id)_childArray
{
  v2 = self->_private;
  if (!v2->childrenLoaded)
  {
    [(PDFOutline *)self _lazilyLoadChildren];
    v2 = self->_private;
  }

  children = v2->children;

  return children;
}

- (void)_removeChildAtIndex:(unint64_t)a3
{
  v4 = self->_private;
  if (!v4->childrenLoaded)
  {
    [(PDFOutline *)self _lazilyLoadChildren];
    v4 = self->_private;
  }

  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    children = v4->children;
    if (children)
    {

      [(NSMutableArray *)children removeObjectAtIndex:a3];
    }
  }
}

- (BOOL)_addDestinationToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFOutline *)self destination];
  v5 = v4;
  if (v4 && (v6 = [v4 createArrayRef]) != 0)
  {
    v7 = v6;
    CFDictionarySetValue(a3, @"/Dest", v6);
    CFRelease(v7);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_addActionToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFOutline *)self action];
  if (v4)
  {
    v6 = v4;
    v5 = [v4 createDictionaryRef];
    v4 = v6;
    if (v5)
    {
      CFDictionarySetValue(a3, @"/A", v5);
      CFRelease(v5);
      v4 = v6;
    }
  }
}

- (int)_openDescendantCount
{
  v3 = [(PDFOutline *)self numberOfChildren];
  if (!v3)
  {
    return 0;
  }

  if (![(PDFOutline *)self isOpen])
  {
    return -v3;
  }

  if (v3 < 1)
  {
    return v3;
  }

  v4 = 0;
  v5 = v3;
  do
  {
    v6 = [(PDFOutline *)self childAtIndex:v4];
    v7 = [v6 _openDescendantCount];

    if (v7 <= 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = v3;
    }

    v5 += v8;
    ++v4;
  }

  while ((v3 & 0x7FFFFFFF) != v4);
  return v5;
}

- (BOOL)_childDictionaryReferencesParent:(CGPDFDictionary *)a3
{
  v5 = [(PDFOutline *)self numberOfChildren];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(PDFOutline *)self childAtIndex:v7];
      v9 = [v8 _srcDictionaryRef];

      if (v9 == a3)
      {
        return 1;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v10 = self;
    do
    {
      v11 = [(PDFOutline *)v10 _srcDictionaryRef];
      v12 = v11 == a3;
      if (v11 == a3)
      {
        break;
      }

      v13 = [(PDFOutline *)v10 parent];

      v10 = v13;
    }

    while (v13);
  }

  return v12;
}

- (id)_next
{
  v3 = [(PDFOutline *)self parent];

  if (v3)
  {
    v4 = [(PDFOutline *)self index];
    v5 = [(PDFOutline *)self parent];
    v6 = [v5 numberOfChildren];

    v7 = 0;
    if (v6 && v4 < v6 - 1)
    {
      v8 = [(PDFOutline *)self parent];
      v7 = [v8 childAtIndex:v4 + 1];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_previous
{
  v3 = [(PDFOutline *)self parent];

  if (v3)
  {
    v4 = [(PDFOutline *)self index];
    v5 = [(PDFOutline *)self parent];
    v6 = [v5 numberOfChildren];

    v7 = 0;
    if (v6 && v4)
    {
      v8 = [(PDFOutline *)self parent];
      v7 = [v8 childAtIndex:v4 - 1];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_firstChild
{
  v3 = [(PDFOutline *)self numberOfChildren];
  if (v3)
  {
    v3 = [(PDFOutline *)self childAtIndex:0];
  }

  return v3;
}

- (id)_lastChild
{
  v3 = [(PDFOutline *)self numberOfChildren];
  if (v3)
  {
    v3 = [(PDFOutline *)self childAtIndex:v3 - 1];
  }

  return v3;
}

@end