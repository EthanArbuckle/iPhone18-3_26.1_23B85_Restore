@interface _NSStringProxyForContext
- (_NSStringProxyForContext)initWithCoder:(id)coder;
- (id)_dynamicContextEvaluation:(id)evaluation patternString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_retainFormatter:(id)formatter;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _NSStringProxyForContext

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  string = self->_string;
  if (string)
  {
  }

  formatter = self->_formatter;
  if (formatter)
  {
  }

  item = self->_item;
  if (item)
  {
  }

  v6.receiver = self;
  v6.super_class = _NSStringProxyForContext;
  [(_NSStringProxyForContext *)&v6 dealloc];
}

- (void)_retainFormatter:(id)formatter
{
  formatter = self->_formatter;
  if (formatter != formatter)
  {

    self->_formatter = formatter;
  }
}

- (id)_dynamicContextEvaluation:(id)evaluation patternString:(id)string
{
  if ([evaluation isEqualToString:string])
  {
    v7 = 2;
  }

  else if ([evaluation rangeOfString:string])
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, evaluation);
    CFStringUppercase(MutableCopy, 0);
    Copy = CFStringCreateCopy(0, MutableCopy);
    CFRelease(MutableCopy);
    v10 = CFLocaleCopyCurrent();
    v11 = *MEMORY[0x1E695E480];
    v19.length = CFStringGetLength(Copy);
    v19.location = 0;
    v12 = CFStringTokenizerCreate(v11, Copy, v19, 1uLL, v10);
    v7 = 5;
    if (CFStringTokenizerAdvanceToNextToken(v12))
    {
      while (1)
      {
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v12);
        v13 = CFStringCreateWithSubstring(0, Copy, CurrentTokenRange);
        location = CFStringFind(v13, string, 0).location;
        if (location != -1)
        {
          break;
        }

        CFRelease(v13);
        if (!CFStringTokenizerAdvanceToNextToken(v12))
        {
          goto LABEL_13;
        }
      }

      if (location)
      {
        v7 = 5;
      }

      else
      {
        v7 = 4;
      }

      CFRelease(v13);
    }

LABEL_13:
    CFRelease(Copy);
    CFRelease(v12);
    CFRelease(v10);
  }

  else
  {
    v7 = 4;
  }

  formatter = [(_NSStringProxyForContext *)self formatter];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  [(NSFormatter *)formatter setFormattingContext:v7];
  item = [(_NSStringProxyForContext *)self item];

  return [(NSFormatter *)formatter stringForObjectValue:item];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setString:{-[_NSStringProxyForContext string](self, "string")}];
  [v4 setFormatter:{-[_NSStringProxyForContext formatter](self, "formatter")}];
  [v4 setItem:{-[_NSStringProxyForContext item](self, "item")}];
  return v4;
}

- (_NSStringProxyForContext)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v9 = objc_opt_class();
    v10 = [NSString stringWithFormat:@"%@ can only be decoded by a keyed coder.", NSStringFromClass(v9)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v10 userInfo:0]);
  }

  v5 = [coder decodeObjectForKey:@"NSStringProxyForContext.string"];
  v6 = [coder decodeObjectForKey:@"NSStringProxyForContext.formatter"];
  v7 = [coder decodeObjectForKey:@"NSStringProxyForContext.item"];
  self->_string = v5;
  self->_formatter = v6;
  self->_item = v7;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v6 = objc_opt_class();
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ can only be encoded by a keyed coder.", NSStringFromClass(v6)), 0}];
    objc_exception_throw(v7);
  }

  [coder encodeObject:self->_string forKey:@"NSStringProxyForContext.string"];
  [coder encodeObject:self->_formatter forKey:@"NSStringProxyForContext.formatter"];
  item = self->_item;

  [coder encodeObject:item forKey:@"NSStringProxyForContext.item"];
}

@end