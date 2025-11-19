@interface NSConcreteAttributedString
- (NSConcreteAttributedString)initWithAttributedString:(id)a3;
- (NSConcreteAttributedString)initWithString:(id)a3;
- (NSConcreteAttributedString)initWithString:(id)a3 attributes:(id)a4;
- (id)attribute:(id)a3 atIndex:(unint64_t)a4 effectiveRange:(_NSRange *)a5;
- (id)attributesAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation NSConcreteAttributedString

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSConcreteAttributedString;
  [(NSConcreteAttributedString *)&v3 dealloc];
}

- (NSConcreteAttributedString)initWithString:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (_CFExecutableLinkedOnOrAfter())
    {
      v12 = objc_opt_class();
      v13 = _NSNameOfClass(v12);
      v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%s %s: nil value", v13, sel_getName(a2)), 0}];
      objc_exception_throw(v14);
    }

    if ((initWithString__warned & 1) == 0)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromSelector(a2);
      NSLog(@"[%@ %@] called with nil string argument. This has undefined behavior and will raise an exception in post-Leopard linked apps. This warning is displayed only once.", v6, v7);
      initWithString__warned = 1;
    }
  }

  v15.receiver = self;
  v15.super_class = NSConcreteAttributedString;
  v8 = [(NSConcreteAttributedString *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v10 = [a3 copyWithZone:{-[NSConcreteAttributedString zone](v8, "zone")}];
    v9->string = v10;
    if (!a3 || v10)
    {
      v9->attributes = 0;
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

- (NSConcreteAttributedString)initWithString:(id)a3 attributes:(id)a4
{
  v5 = [(NSConcreteAttributedString *)self initWithString:a3];
  v6 = v5;
  if (a4 && v5)
  {
    v7 = [(NSRLEArray *)[NSMutableRLEArray allocWithZone:?]];
    v8 = [_NSAttributeDictionaryClass() newWithDictionary:a4];
    [(NSMutableRLEArray *)v7 insertObject:v8 range:0, [(NSConcreteAttributedString *)v6 length]];
    if ([(NSAttributedString *)v6 _willRequireIntentResolutionWhenContainingAttributes:v8])
    {
      [(NSAttributedString *)v6 _markRequiringIntentResolution];
    }

    v6->attributes = &v7->super;
  }

  return v6;
}

- (NSConcreteAttributedString)initWithAttributedString:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = -[NSConcreteAttributedString initWithString:](self, "initWithString:", [a3 string]);
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [a3 _runArrayHoldingAttributes];
      if (v5)
      {
        v4->attributes = [v5 copyWithZone:{-[NSConcreteAttributedString zone](v4, "zone")}];
      }
    }

    if (!v4->attributes)
    {
      v6 = [(NSString *)v4->string length];
      v7 = [(NSRLEArray *)[NSMutableRLEArray allocWithZone:?]];
      if (v6)
      {
        for (i = 0; i < v6; i += v14)
        {
          v13 = 0;
          v14 = 0;
          v9 = [_NSAttributeDictionaryClass() newWithDictionary:{objc_msgSend(a3, "attributesAtIndex:effectiveRange:", i, &v13)}];
          if (v14 + v13 <= v6)
          {
            v10 = v13 - i + v14;
          }

          else
          {
            v10 = v6 - i;
          }

          if (v13 != i || v14 + v13 > v6)
          {
            v14 = v10;
          }

          [(NSMutableRLEArray *)v7 insertObject:v9 range:i, v10];
        }
      }

      v4->attributes = &v7->super;
    }

    if ([a3 _mayRequireIntentResolution])
    {
      [(NSAttributedString *)v4 _markRequiringIntentResolution];
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (_CFExecutableLinkedOnOrAfter())
  {

    return self;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NSConcreteAttributedString;
    return [(NSAttributedString *)&v6 copyWithZone:a3];
  }
}

- (id)attributesAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  if (self->attributes)
  {
    attributes = self->attributes;

    return [(NSRLEArray *)attributes objectAtIndex:a3 effectiveRange:?];
  }

  else
  {
    if (a4)
    {
      v7 = [(NSString *)self->string length];
      a4->location = 0;
      a4->length = v7;
    }

    v8 = _NSAttributeDictionaryClass();

    return [v8 emptyAttributeDictionary];
  }
}

- (id)attribute:(id)a3 atIndex:(unint64_t)a4 effectiveRange:(_NSRange *)a5
{
  if (self->attributes)
  {
    v7 = [(NSRLEArray *)self->attributes objectAtIndex:a4 effectiveRange:a5];

    return [v7 objectForKey:a3];
  }

  else
  {
    if (a5)
    {
      v9 = [(NSString *)self->string length:a3];
      a5->location = 0;
      a5->length = v9;
    }

    return 0;
  }
}

@end