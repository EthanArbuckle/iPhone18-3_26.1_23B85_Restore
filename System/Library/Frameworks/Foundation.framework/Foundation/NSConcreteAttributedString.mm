@interface NSConcreteAttributedString
- (NSConcreteAttributedString)initWithAttributedString:(id)string;
- (NSConcreteAttributedString)initWithString:(id)string;
- (NSConcreteAttributedString)initWithString:(id)string attributes:(id)attributes;
- (id)attribute:(id)attribute atIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)copyWithZone:(_NSZone *)zone;
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

- (NSConcreteAttributedString)initWithString:(id)string
{
  v16 = *MEMORY[0x1E69E9840];
  if (!string)
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
    v10 = [string copyWithZone:{-[NSConcreteAttributedString zone](v8, "zone")}];
    v9->string = v10;
    if (!string || v10)
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

- (NSConcreteAttributedString)initWithString:(id)string attributes:(id)attributes
{
  v5 = [(NSConcreteAttributedString *)self initWithString:string];
  v6 = v5;
  if (attributes && v5)
  {
    v7 = [(NSRLEArray *)[NSMutableRLEArray allocWithZone:?]];
    v8 = [_NSAttributeDictionaryClass() newWithDictionary:attributes];
    [(NSMutableRLEArray *)v7 insertObject:v8 range:0, [(NSConcreteAttributedString *)v6 length]];
    if ([(NSAttributedString *)v6 _willRequireIntentResolutionWhenContainingAttributes:v8])
    {
      [(NSAttributedString *)v6 _markRequiringIntentResolution];
    }

    v6->attributes = &v7->super;
  }

  return v6;
}

- (NSConcreteAttributedString)initWithAttributedString:(id)string
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = -[NSConcreteAttributedString initWithString:](self, "initWithString:", [string string]);
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      _runArrayHoldingAttributes = [string _runArrayHoldingAttributes];
      if (_runArrayHoldingAttributes)
      {
        v4->attributes = [_runArrayHoldingAttributes copyWithZone:{-[NSConcreteAttributedString zone](v4, "zone")}];
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
          v9 = [_NSAttributeDictionaryClass() newWithDictionary:{objc_msgSend(string, "attributesAtIndex:effectiveRange:", i, &v13)}];
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

    if ([string _mayRequireIntentResolution])
    {
      [(NSAttributedString *)v4 _markRequiringIntentResolution];
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
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
    return [(NSAttributedString *)&v6 copyWithZone:zone];
  }
}

- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  if (self->attributes)
  {
    attributes = self->attributes;

    return [(NSRLEArray *)attributes objectAtIndex:index effectiveRange:?];
  }

  else
  {
    if (range)
    {
      v7 = [(NSString *)self->string length];
      range->location = 0;
      range->length = v7;
    }

    v8 = _NSAttributeDictionaryClass();

    return [v8 emptyAttributeDictionary];
  }
}

- (id)attribute:(id)attribute atIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  if (self->attributes)
  {
    v7 = [(NSRLEArray *)self->attributes objectAtIndex:index effectiveRange:range];

    return [v7 objectForKey:attribute];
  }

  else
  {
    if (range)
    {
      v9 = [(NSString *)self->string length:attribute];
      range->location = 0;
      range->length = v9;
    }

    return 0;
  }
}

@end