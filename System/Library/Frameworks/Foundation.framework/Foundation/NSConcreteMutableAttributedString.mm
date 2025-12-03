@interface NSConcreteMutableAttributedString
- (NSConcreteMutableAttributedString)initWithAttributedString:(id)string;
- (NSConcreteMutableAttributedString)initWithCoder:(id)coder;
- (NSConcreteMutableAttributedString)initWithString:(id)string;
- (NSConcreteMutableAttributedString)initWithString:(id)string attributes:(id)attributes;
- (id)attribute:(id)attribute atIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)attribute:(id)attribute atIndex:(unint64_t)index longestEffectiveRange:(_NSRange *)range inRange:(_NSRange)inRange;
- (void)addAttribute:(id)attribute value:(id)value range:(_NSRange)range;
- (void)dealloc;
- (void)replaceCharactersInRange:(_NSRange)range withAttributedString:(id)string;
- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string;
- (void)setAttributes:(id)attributes range:(_NSRange)range;
@end

@implementation NSConcreteMutableAttributedString

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSConcreteMutableAttributedString;
  [(NSConcreteMutableAttributedString *)&v3 dealloc];
}

- (NSConcreteMutableAttributedString)initWithAttributedString:(id)string
{
  v19 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = NSConcreteMutableAttributedString;
  v4 = [(NSConcreteMutableAttributedString *)&v18 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(NSConcreteMutableAttributedString *)v4 zone];
    _mutableStringClass = [objc_opt_class() _mutableStringClass];
    if (string)
    {
      if (objc_opt_respondsToSelector())
      {
        _runArrayHoldingAttributes = [string _runArrayHoldingAttributes];
        if (_runArrayHoldingAttributes)
        {
          v5->mutableAttributes = [_runArrayHoldingAttributes mutableCopyWithZone:v6];
        }
      }

      if (!v5->mutableAttributes)
      {
        v9 = [objc_msgSend(string "string")];
        v5->mutableAttributes = [(NSRLEArray *)[NSMutableRLEArray allocWithZone:?]];
        if (v9)
        {
          for (i = 0; i < v9; i += v17)
          {
            v16 = 0;
            v17 = 0;
            v11 = [_NSAttributeDictionaryClass() newWithDictionary:{objc_msgSend(string, "attributesAtIndex:effectiveRange:", i, &v16)}];
            if (v17 + v16 <= v9)
            {
              v12 = v16 - i + v17;
            }

            else
            {
              v12 = v9 - i;
            }

            if (v16 != i || v17 + v16 > v9)
            {
              v17 = v12;
            }

            [(NSMutableRLEArray *)v5->mutableAttributes insertObject:v11 range:i, v12];
          }
        }
      }

      if (_mutableStringClass == __NSMutableStringClass)
      {
        v14 = [objc_msgSend(string "string")];
      }

      else
      {
        v14 = [objc_msgSend(_mutableStringClass allocWithZone:{v6), "initWithString:", objc_msgSend(string, "string")}];
      }

      v5->mutableString = v14;
      if ([string _mayRequireIntentResolution])
      {
        [(NSConcreteMutableAttributedString *)v5 _markRequiringIntentResolution];
      }
    }

    else
    {
      v5->mutableAttributes = [(NSRLEArray *)[NSMutableRLEArray allocWithZone:?]];
      v5->mutableString = [objc_msgSend(_mutableStringClass allocWithZone:{v6), "init"}];
    }
  }

  return v5;
}

- (NSConcreteMutableAttributedString)initWithString:(id)string attributes:(id)attributes
{
  if (!string)
  {
    if (_CFExecutableLinkedOnOrAfter())
    {
      v15 = objc_opt_class();
      v16 = _NSNameOfClass(v15);
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%s %s: nil value", v16, sel_getName(a2)), 0}];
      objc_exception_throw(v17);
    }

    if ((initWithString_attributes__warned & 1) == 0)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromSelector(a2);
      NSLog(@"[%@ %@] called with nil string argument. This has undefined behavior and will raise an exception in post-Leopard linked apps. This warning is displayed only once.", v8, v9);
      initWithString_attributes__warned = 1;
    }
  }

  v10 = [(NSConcreteMutableAttributedString *)self initWithAttributedString:0];
  v11 = v10;
  if (v10)
  {
    [(NSConcreteMutableAttributedString *)v10 replaceCharactersInRange:0 withString:0, string];
    v12 = [_NSAttributeDictionaryClass() newWithDictionary:attributes];
    v13 = [(NSConcreteMutableAttributedString *)v11 length];
    [(NSMutableRLEArray *)v11->mutableAttributes replaceObjectsInRange:0 withObject:v13 length:v12, v13];
    if ([(NSAttributedString *)v11 _willRequireIntentResolutionWhenContainingAttributes:v12])
    {
      [(NSConcreteMutableAttributedString *)v11 _markRequiringIntentResolution];
    }
  }

  return v11;
}

- (NSConcreteMutableAttributedString)initWithString:(id)string
{
  if (!string)
  {
    if (_CFExecutableLinkedOnOrAfter())
    {
      v11 = objc_opt_class();
      v12 = _NSNameOfClass(v11);
      v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%s %s: nil value", v12, sel_getName(a2)), 0}];
      objc_exception_throw(v13);
    }

    if ((initWithString__warned_133 & 1) == 0)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromSelector(a2);
      NSLog(@"[%@ %@] called with nil string argument. This has undefined behavior and will raise an exception in post-Leopard linked apps. This warning is displayed only once.", v6, v7);
      initWithString__warned_133 = 1;
    }
  }

  v8 = [(NSConcreteMutableAttributedString *)self initWithAttributedString:0];
  v9 = v8;
  if (v8)
  {
    [(NSConcreteMutableAttributedString *)v8 replaceCharactersInRange:0 withString:0, string];
  }

  return v9;
}

- (id)attribute:(id)attribute atIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v6 = [(NSRLEArray *)self->mutableAttributes objectAtIndex:index effectiveRange:range];

  return [v6 objectForKey:attribute];
}

- (void)replaceCharactersInRange:(_NSRange)range withAttributedString:(id)string
{
  length = range.length;
  location = range.location;
  v13 = *MEMORY[0x1E69E9840];
  string = [string string];
  v9 = [string length];
  if (v9)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v10 = [_NSAttributeDictionaryClass() newWithDictionary:{objc_msgSend(string, "attributesAtIndex:effectiveRange:", v11, &v11)}];
      [(NSMutableRLEArray *)self->mutableAttributes insertObject:v10 range:v11 + location, v12];

      v11 += v12;
    }

    while (v11 < v9);
  }

  if (length)
  {
    [(NSMutableRLEArray *)self->mutableAttributes deleteObjectsInRange:v9 + location, length];
  }

  [(NSMutableString *)self->mutableString replaceCharactersInRange:location withString:length, string];
  if ([string _mayRequireIntentResolution])
  {
    [(NSConcreteMutableAttributedString *)self _markRequiringIntentResolution];
  }

  [(NSConcreteMutableAttributedString *)self edited:3 range:location changeInLength:length, v9 - length];
}

- (void)addAttribute:(id)attribute value:(id)value range:(_NSRange)range
{
  v29 = *MEMORY[0x1E69E9840];
  if (range.length)
  {
    if (!value)
    {
      v24 = objc_opt_class();
      v25 = _NSNameOfClass(v24);
      v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%s %s: nil value", v25, sel_getName(a2)), 0}];
      objc_exception_throw(v26);
    }

    length = range.length;
    location = range.location;
    v10 = range.length;
    v11 = range.location;
    do
    {
      v27 = 0;
      v28 = 0;
      v12 = [(NSRLEArray *)self->mutableAttributes objectAtIndex:v11 effectiveRange:&v27];
      v13 = v12;
      v14 = v27;
      if (v28 + v27 >= v11 + v10)
      {
        v15 = v11 + v10;
      }

      else
      {
        v15 = v28 + v27;
      }

      v16 = v15 - v11;
      v17 = v27 > v11 || v11 >= v28 + v27;
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = v11;
      }

      if (v17)
      {
        v16 = 0;
      }

      v19 = v15 - v27;
      if (v11 > v27 || v27 >= v11 + v10)
      {
        v14 = v18;
        v21 = v16;
      }

      else
      {
        v21 = v19;
      }

      v27 = v14;
      v28 = v21;
      v22 = [v12 newWithKey:attribute object:value];
      if (v22 != v13)
      {
        [(NSMutableRLEArray *)self->mutableAttributes replaceObjectsInRange:v27 withObject:v28 length:v22, v28];
      }

      v11 += v28;
      v10 -= v28;
    }

    while (v10);
    if ([(NSAttributedString *)self _willRequireIntentResolutionWhenContainingAttribute:attribute value:value])
    {
      [(NSConcreteMutableAttributedString *)self _markRequiringIntentResolution];
    }

    [(NSConcreteMutableAttributedString *)self edited:1 range:location changeInLength:length, 0];
  }
}

- (id)attribute:(id)attribute atIndex:(unint64_t)index longestEffectiveRange:(_NSRange *)range inRange:(_NSRange)inRange
{
  length = inRange.length;
  location = inRange.location;
  v34[1] = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34[0] = 0;
  v32 = 0;
  v11 = [-[NSRLEArray objectAtIndex:effectiveRange:runIndex:](self->mutableAttributes objectAtIndex:index effectiveRange:&v32 runIndex:{v34), "objectForKey:", attribute}];
  if (range)
  {
    rangeCopy = range;
    v31 = 0;
    v12 = v32;
    v13 = v33 + v32;
    v29 = location + length;
    v14 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v14, sel_objectAtRunIndex_length_);
    if (v11)
    {
      v16 = objc_opt_class();
      v30 = class_getMethodImplementation(v16, sel_isEqual_);
    }

    else
    {
      v30 = 0;
    }

    v17 = v34[0];
    if (v13 < v29)
    {
      v18 = v34[0] + 1;
      do
      {
        v19 = (MethodImplementation)(self->mutableAttributes, sel_objectAtRunIndex_length_, v18, &v31);
        if (!v19)
        {
          break;
        }

        v20 = [v19 objectForKey:attribute];
        if (v11 != v20 && (!v11 || !(v30)(v11, sel_isEqual_, v20)))
        {
          break;
        }

        v13 += v31;
        ++v18;
      }

      while (v13 < v29);
      v17 = v34[0];
    }

    if (v12 > location)
    {
      v21 = v17 - 1;
      do
      {
        v22 = [(MethodImplementation)(self->mutableAttributes objectAtRunIndex:v21 length:{&v31), "objectForKey:", attribute}];
        if (v11 != v22 && (!v11 || !(v30)(v11, sel_isEqual_, v22)))
        {
          break;
        }

        v12 -= v31;
        --v21;
      }

      while (v12 > location);
    }

    v23 = location + length;
    if (v29 >= v13)
    {
      v23 = v13;
    }

    if (v12 > location || location >= v13)
    {
      v24 = v23 - v12;
      if (v12 < v29)
      {
        v25 = v12;
      }

      else
      {
        v25 = 0;
      }

      if (v12 >= v29)
      {
        v24 = 0;
      }

      v26 = location > v12;
      if (location <= v12)
      {
        location = v25;
      }

      else
      {
        location = 0;
      }

      if (v26)
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = v23 - location;
    }

    rangeCopy->location = location;
    rangeCopy->length = v24;
  }

  return v11;
}

- (void)setAttributes:(id)attributes range:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    v7 = [_NSAttributeDictionaryClass() newWithDictionary:attributes];
    [(NSMutableRLEArray *)self->mutableAttributes replaceObjectsInRange:location withObject:length length:v7, length];
    if ([(NSAttributedString *)self _willRequireIntentResolutionWhenContainingAttributes:v7])
    {
      [(NSConcreteMutableAttributedString *)self _markRequiringIntentResolution];
    }

    [(NSConcreteMutableAttributedString *)self edited:1 range:location changeInLength:length, 0];
  }
}

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string
{
  length = range.length;
  location = range.location;
  v8 = [string length];
  if (!v8)
  {
    if (!length)
    {
      goto LABEL_8;
    }

    v9 = 0;
LABEL_6:
    [(NSMutableRLEArray *)self->mutableAttributes replaceObjectsInRange:location withObject:length length:v9, v8];
    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (length)
  {
    v9 = [(NSRLEArray *)self->mutableAttributes objectAtIndex:location effectiveRange:0];
    v10 = v9;
    goto LABEL_6;
  }

  if (location)
  {
    mutableAttributes = self->mutableAttributes;
    v12 = location - 1;
LABEL_15:
    emptyAttributeDictionary = [(NSRLEArray *)mutableAttributes objectAtIndex:v12 effectiveRange:0];
    goto LABEL_16;
  }

  if ([(NSString *)self->mutableString length])
  {
    mutableAttributes = self->mutableAttributes;
    v12 = 0;
    goto LABEL_15;
  }

  emptyAttributeDictionary = [_NSAttributeDictionaryClass() emptyAttributeDictionary];
LABEL_16:
  v9 = emptyAttributeDictionary;
  v14 = emptyAttributeDictionary;
  [(NSMutableRLEArray *)self->mutableAttributes insertObject:v9 range:location, v8];
  if (v9)
  {
LABEL_7:
  }

LABEL_8:
  [(NSMutableString *)self->mutableString replaceCharactersInRange:location withString:length, string];

  [(NSConcreteMutableAttributedString *)self edited:2 range:location changeInLength:length, v8 - length];
}

- (NSConcreteMutableAttributedString)initWithCoder:(id)coder
{
  v4 = [(NSConcreteMutableAttributedString *)self init];
  if ((_NSReadMutableAttributedStringWithCoder(coder, v4) & 1) == 0)
  {

    return 0;
  }

  return v4;
}

@end