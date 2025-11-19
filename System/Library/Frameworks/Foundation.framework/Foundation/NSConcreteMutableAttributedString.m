@interface NSConcreteMutableAttributedString
- (NSConcreteMutableAttributedString)initWithAttributedString:(id)a3;
- (NSConcreteMutableAttributedString)initWithCoder:(id)a3;
- (NSConcreteMutableAttributedString)initWithString:(id)a3;
- (NSConcreteMutableAttributedString)initWithString:(id)a3 attributes:(id)a4;
- (id)attribute:(id)a3 atIndex:(unint64_t)a4 effectiveRange:(_NSRange *)a5;
- (id)attribute:(id)a3 atIndex:(unint64_t)a4 longestEffectiveRange:(_NSRange *)a5 inRange:(_NSRange)a6;
- (void)addAttribute:(id)a3 value:(id)a4 range:(_NSRange)a5;
- (void)dealloc;
- (void)replaceCharactersInRange:(_NSRange)a3 withAttributedString:(id)a4;
- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4;
- (void)setAttributes:(id)a3 range:(_NSRange)a4;
@end

@implementation NSConcreteMutableAttributedString

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSConcreteMutableAttributedString;
  [(NSConcreteMutableAttributedString *)&v3 dealloc];
}

- (NSConcreteMutableAttributedString)initWithAttributedString:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = NSConcreteMutableAttributedString;
  v4 = [(NSConcreteMutableAttributedString *)&v18 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(NSConcreteMutableAttributedString *)v4 zone];
    v7 = [objc_opt_class() _mutableStringClass];
    if (a3)
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [a3 _runArrayHoldingAttributes];
        if (v8)
        {
          v5->mutableAttributes = [v8 mutableCopyWithZone:v6];
        }
      }

      if (!v5->mutableAttributes)
      {
        v9 = [objc_msgSend(a3 "string")];
        v5->mutableAttributes = [(NSRLEArray *)[NSMutableRLEArray allocWithZone:?]];
        if (v9)
        {
          for (i = 0; i < v9; i += v17)
          {
            v16 = 0;
            v17 = 0;
            v11 = [_NSAttributeDictionaryClass() newWithDictionary:{objc_msgSend(a3, "attributesAtIndex:effectiveRange:", i, &v16)}];
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

      if (v7 == __NSMutableStringClass)
      {
        v14 = [objc_msgSend(a3 "string")];
      }

      else
      {
        v14 = [objc_msgSend(v7 allocWithZone:{v6), "initWithString:", objc_msgSend(a3, "string")}];
      }

      v5->mutableString = v14;
      if ([a3 _mayRequireIntentResolution])
      {
        [(NSConcreteMutableAttributedString *)v5 _markRequiringIntentResolution];
      }
    }

    else
    {
      v5->mutableAttributes = [(NSRLEArray *)[NSMutableRLEArray allocWithZone:?]];
      v5->mutableString = [objc_msgSend(v7 allocWithZone:{v6), "init"}];
    }
  }

  return v5;
}

- (NSConcreteMutableAttributedString)initWithString:(id)a3 attributes:(id)a4
{
  if (!a3)
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
    [(NSConcreteMutableAttributedString *)v10 replaceCharactersInRange:0 withString:0, a3];
    v12 = [_NSAttributeDictionaryClass() newWithDictionary:a4];
    v13 = [(NSConcreteMutableAttributedString *)v11 length];
    [(NSMutableRLEArray *)v11->mutableAttributes replaceObjectsInRange:0 withObject:v13 length:v12, v13];
    if ([(NSAttributedString *)v11 _willRequireIntentResolutionWhenContainingAttributes:v12])
    {
      [(NSConcreteMutableAttributedString *)v11 _markRequiringIntentResolution];
    }
  }

  return v11;
}

- (NSConcreteMutableAttributedString)initWithString:(id)a3
{
  if (!a3)
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
    [(NSConcreteMutableAttributedString *)v8 replaceCharactersInRange:0 withString:0, a3];
  }

  return v9;
}

- (id)attribute:(id)a3 atIndex:(unint64_t)a4 effectiveRange:(_NSRange *)a5
{
  v6 = [(NSRLEArray *)self->mutableAttributes objectAtIndex:a4 effectiveRange:a5];

  return [v6 objectForKey:a3];
}

- (void)replaceCharactersInRange:(_NSRange)a3 withAttributedString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v13 = *MEMORY[0x1E69E9840];
  v8 = [a4 string];
  v9 = [v8 length];
  if (v9)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v10 = [_NSAttributeDictionaryClass() newWithDictionary:{objc_msgSend(a4, "attributesAtIndex:effectiveRange:", v11, &v11)}];
      [(NSMutableRLEArray *)self->mutableAttributes insertObject:v10 range:v11 + location, v12];

      v11 += v12;
    }

    while (v11 < v9);
  }

  if (length)
  {
    [(NSMutableRLEArray *)self->mutableAttributes deleteObjectsInRange:v9 + location, length];
  }

  [(NSMutableString *)self->mutableString replaceCharactersInRange:location withString:length, v8];
  if ([a4 _mayRequireIntentResolution])
  {
    [(NSConcreteMutableAttributedString *)self _markRequiringIntentResolution];
  }

  [(NSConcreteMutableAttributedString *)self edited:3 range:location changeInLength:length, v9 - length];
}

- (void)addAttribute:(id)a3 value:(id)a4 range:(_NSRange)a5
{
  v29 = *MEMORY[0x1E69E9840];
  if (a5.length)
  {
    if (!a4)
    {
      v24 = objc_opt_class();
      v25 = _NSNameOfClass(v24);
      v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%s %s: nil value", v25, sel_getName(a2)), 0}];
      objc_exception_throw(v26);
    }

    length = a5.length;
    location = a5.location;
    v10 = a5.length;
    v11 = a5.location;
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
      v22 = [v12 newWithKey:a3 object:a4];
      if (v22 != v13)
      {
        [(NSMutableRLEArray *)self->mutableAttributes replaceObjectsInRange:v27 withObject:v28 length:v22, v28];
      }

      v11 += v28;
      v10 -= v28;
    }

    while (v10);
    if ([(NSAttributedString *)self _willRequireIntentResolutionWhenContainingAttribute:a3 value:a4])
    {
      [(NSConcreteMutableAttributedString *)self _markRequiringIntentResolution];
    }

    [(NSConcreteMutableAttributedString *)self edited:1 range:location changeInLength:length, 0];
  }
}

- (id)attribute:(id)a3 atIndex:(unint64_t)a4 longestEffectiveRange:(_NSRange *)a5 inRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v34[1] = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34[0] = 0;
  v32 = 0;
  v11 = [-[NSRLEArray objectAtIndex:effectiveRange:runIndex:](self->mutableAttributes objectAtIndex:a4 effectiveRange:&v32 runIndex:{v34), "objectForKey:", a3}];
  if (a5)
  {
    v28 = a5;
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

        v20 = [v19 objectForKey:a3];
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
        v22 = [(MethodImplementation)(self->mutableAttributes objectAtRunIndex:v21 length:{&v31), "objectForKey:", a3}];
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

    v28->location = location;
    v28->length = v24;
  }

  return v11;
}

- (void)setAttributes:(id)a3 range:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    v7 = [_NSAttributeDictionaryClass() newWithDictionary:a3];
    [(NSMutableRLEArray *)self->mutableAttributes replaceObjectsInRange:location withObject:length length:v7, length];
    if ([(NSAttributedString *)self _willRequireIntentResolutionWhenContainingAttributes:v7])
    {
      [(NSConcreteMutableAttributedString *)self _markRequiringIntentResolution];
    }

    [(NSConcreteMutableAttributedString *)self edited:1 range:location changeInLength:length, 0];
  }
}

- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v8 = [a4 length];
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
    v13 = [(NSRLEArray *)mutableAttributes objectAtIndex:v12 effectiveRange:0];
    goto LABEL_16;
  }

  if ([(NSString *)self->mutableString length])
  {
    mutableAttributes = self->mutableAttributes;
    v12 = 0;
    goto LABEL_15;
  }

  v13 = [_NSAttributeDictionaryClass() emptyAttributeDictionary];
LABEL_16:
  v9 = v13;
  v14 = v13;
  [(NSMutableRLEArray *)self->mutableAttributes insertObject:v9 range:location, v8];
  if (v9)
  {
LABEL_7:
  }

LABEL_8:
  [(NSMutableString *)self->mutableString replaceCharactersInRange:location withString:length, a4];

  [(NSConcreteMutableAttributedString *)self edited:2 range:location changeInLength:length, v8 - length];
}

- (NSConcreteMutableAttributedString)initWithCoder:(id)a3
{
  v4 = [(NSConcreteMutableAttributedString *)self init];
  if ((_NSReadMutableAttributedStringWithCoder(a3, v4) & 1) == 0)
  {

    return 0;
  }

  return v4;
}

@end