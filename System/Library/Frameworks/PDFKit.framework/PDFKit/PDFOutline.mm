@interface PDFOutline
- (BOOL)_addDestinationToDictionaryRef:(__CFDictionary *)ref;
- (BOOL)_childDictionaryReferencesParent:(CGPDFDictionary *)parent;
- (NSString)label;
- (NSUInteger)index;
- (NSUInteger)numberOfChildren;
- (PDFAction)action;
- (PDFDestination)destination;
- (PDFDocument)document;
- (PDFOutline)childAtIndex:(NSUInteger)index;
- (PDFOutline)init;
- (PDFOutline)initWithDictionary:(CGPDFDictionary *)dictionary forDocument:(id)document parent:(id)parent;
- (PDFOutline)parent;
- (__CFDictionary)createDictionaryRef;
- (id)_childArray;
- (id)_firstChild;
- (id)_lastChild;
- (id)_next;
- (id)_previous;
- (int)_openDescendantCount;
- (void)_addActionToDictionaryRef:(__CFDictionary *)ref;
- (void)_lazilyLoadChildren;
- (void)_removeChildAtIndex:(unint64_t)index;
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
  parent = [(PDFOutline *)self parent];

  if (!parent)
  {
    return 0;
  }

  parent2 = [(PDFOutline *)self parent];
  _childArray = [parent2 _childArray];
  v6 = [_childArray indexOfObject:self];

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
  parent = [(PDFOutline *)self parent];

  if (parent)
  {
    index = [(PDFOutline *)self index];
    if (index == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = MEMORY[0x1E695DF30];
      v6 = *MEMORY[0x1E695D920];

      [v5 raise:v6 format:@"removeFromParent: object no longer child of parent"];
    }

    else
    {
      v7 = index;
      parent2 = [(PDFOutline *)self parent];
      [parent2 _removeChildAtIndex:v7];

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
  action = [(PDFOutline *)self action];
  v3 = action;
  if (action && ([action type], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"GoTo"), v4, v5))
  {
    destination = [v3 destination];
  }

  else
  {
    destination = 0;
  }

  return destination;
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

- (PDFOutline)initWithDictionary:(CGPDFDictionary *)dictionary forDocument:(id)document parent:(id)parent
{
  documentCopy = document;
  parentCopy = parent;
  v21.receiver = self;
  v21.super_class = PDFOutline;
  v10 = [(PDFOutline *)&v21 init];
  v11 = v10;
  if (v10)
  {
    [(PDFOutline *)v10 commonInit];
    v19 = 0;
    value = 0;
    objc_storeWeak(&v11->_private->document, documentCopy);
    v11->_private->srcDictionary = dictionary;
    objc_storeWeak(&v11->_private->parent, parentCopy);
    if (CGPDFDictionaryGetString(dictionary, "Title", &value))
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

    if (CGPDFDictionaryGetInteger(dictionary, "Count", &v19))
    {
      v11->_private->open = v19 > 0;
    }

    null = [MEMORY[0x1E695DFB0] null];
    v16 = v11->_private;
    action = v16->action;
    v16->action = null;

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
      _firstChild = [(PDFOutline *)self _firstChild];
      v9 = _firstChild;
      if (_firstChild)
      {
        createDictionaryRef = [_firstChild createDictionaryRef];
        if (createDictionaryRef)
        {
          v11 = createDictionaryRef;
          CFDictionarySetValue(self->_private->dictionary, @"/First", createDictionaryRef);
          CFRelease(v11);
        }
      }

      parent = [(PDFOutline *)self parent];

      if (parent)
      {
        createDictionaryRef2 = [parent createDictionaryRef];
        if (createDictionaryRef2)
        {
          v14 = createDictionaryRef2;
          CFDictionarySetValue(self->_private->dictionary, @"/Parent", createDictionaryRef2);
          CFRelease(v14);
        }
      }

      _next = [(PDFOutline *)self _next];

      if (_next)
      {
        createDictionaryRef3 = [_next createDictionaryRef];
        if (createDictionaryRef3)
        {
          v17 = createDictionaryRef3;
          CFDictionarySetValue(self->_private->dictionary, @"/Next", createDictionaryRef3);
          CFRelease(v17);
        }
      }

      _previous = [(PDFOutline *)self _previous];

      if (_previous)
      {
        createDictionaryRef4 = [_previous createDictionaryRef];
        if (createDictionaryRef4)
        {
          v20 = createDictionaryRef4;
          CFDictionarySetValue(self->_private->dictionary, @"/Prev", createDictionaryRef4);
          CFRelease(v20);
        }
      }

      _lastChild = [(PDFOutline *)self _lastChild];

      if (_lastChild)
      {
        createDictionaryRef5 = [_lastChild createDictionaryRef];
        if (createDictionaryRef5)
        {
          v22 = createDictionaryRef5;
          CFDictionarySetValue(self->_private->dictionary, @"/Last", createDictionaryRef5);
          CFRelease(v22);
        }
      }

      _openDescendantCount = [(PDFOutline *)self _openDescendantCount];
      valuePtr = _openDescendantCount;
      WeakRetained = objc_loadWeakRetained(&self->_private->parent);
      if (WeakRetained || _openDescendantCount >= 1)
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
          label = [(PDFOutline *)self label];
          CFDictionarySetValue(v27, @"/Title", label);
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
      _lastChild = 0;
    }

    Copy = 0;
    goto LABEL_32;
  }

  _lastChild = 0;
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

  numberOfChildren = [(PDFOutline *)self numberOfChildren];
  if (numberOfChildren)
  {
    v5 = numberOfChildren;
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

- (void)_removeChildAtIndex:(unint64_t)index
{
  v4 = self->_private;
  if (!v4->childrenLoaded)
  {
    [(PDFOutline *)self _lazilyLoadChildren];
    v4 = self->_private;
  }

  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    children = v4->children;
    if (children)
    {

      [(NSMutableArray *)children removeObjectAtIndex:index];
    }
  }
}

- (BOOL)_addDestinationToDictionaryRef:(__CFDictionary *)ref
{
  destination = [(PDFOutline *)self destination];
  v5 = destination;
  if (destination && (v6 = [destination createArrayRef]) != 0)
  {
    v7 = v6;
    CFDictionarySetValue(ref, @"/Dest", v6);
    CFRelease(v7);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_addActionToDictionaryRef:(__CFDictionary *)ref
{
  action = [(PDFOutline *)self action];
  if (action)
  {
    v6 = action;
    createDictionaryRef = [action createDictionaryRef];
    action = v6;
    if (createDictionaryRef)
    {
      CFDictionarySetValue(ref, @"/A", createDictionaryRef);
      CFRelease(createDictionaryRef);
      action = v6;
    }
  }
}

- (int)_openDescendantCount
{
  numberOfChildren = [(PDFOutline *)self numberOfChildren];
  if (!numberOfChildren)
  {
    return 0;
  }

  if (![(PDFOutline *)self isOpen])
  {
    return -numberOfChildren;
  }

  if (numberOfChildren < 1)
  {
    return numberOfChildren;
  }

  v4 = 0;
  v5 = numberOfChildren;
  do
  {
    v6 = [(PDFOutline *)self childAtIndex:v4];
    _openDescendantCount = [v6 _openDescendantCount];

    if (_openDescendantCount <= 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = numberOfChildren;
    }

    v5 += v8;
    ++v4;
  }

  while ((numberOfChildren & 0x7FFFFFFF) != v4);
  return v5;
}

- (BOOL)_childDictionaryReferencesParent:(CGPDFDictionary *)parent
{
  numberOfChildren = [(PDFOutline *)self numberOfChildren];
  if (numberOfChildren)
  {
    v6 = numberOfChildren;
    v7 = 0;
    while (1)
    {
      v8 = [(PDFOutline *)self childAtIndex:v7];
      _srcDictionaryRef = [v8 _srcDictionaryRef];

      if (_srcDictionaryRef == parent)
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
    selfCopy = self;
    do
    {
      _srcDictionaryRef2 = [(PDFOutline *)selfCopy _srcDictionaryRef];
      v12 = _srcDictionaryRef2 == parent;
      if (_srcDictionaryRef2 == parent)
      {
        break;
      }

      parent = [(PDFOutline *)selfCopy parent];

      selfCopy = parent;
    }

    while (parent);
  }

  return v12;
}

- (id)_next
{
  parent = [(PDFOutline *)self parent];

  if (parent)
  {
    index = [(PDFOutline *)self index];
    parent2 = [(PDFOutline *)self parent];
    numberOfChildren = [parent2 numberOfChildren];

    v7 = 0;
    if (numberOfChildren && index < numberOfChildren - 1)
    {
      parent3 = [(PDFOutline *)self parent];
      v7 = [parent3 childAtIndex:index + 1];
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
  parent = [(PDFOutline *)self parent];

  if (parent)
  {
    index = [(PDFOutline *)self index];
    parent2 = [(PDFOutline *)self parent];
    numberOfChildren = [parent2 numberOfChildren];

    v7 = 0;
    if (numberOfChildren && index)
    {
      parent3 = [(PDFOutline *)self parent];
      v7 = [parent3 childAtIndex:index - 1];
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
  numberOfChildren = [(PDFOutline *)self numberOfChildren];
  if (numberOfChildren)
  {
    numberOfChildren = [(PDFOutline *)self childAtIndex:0];
  }

  return numberOfChildren;
}

- (id)_lastChild
{
  numberOfChildren = [(PDFOutline *)self numberOfChildren];
  if (numberOfChildren)
  {
    numberOfChildren = [(PDFOutline *)self childAtIndex:numberOfChildren - 1];
  }

  return numberOfChildren;
}

@end