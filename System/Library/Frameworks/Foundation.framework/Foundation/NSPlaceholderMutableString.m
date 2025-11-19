@interface NSPlaceholderMutableString
- (NSPlaceholderMutableString)initWithBytes:(const void *)a3 length:(unint64_t)a4 encoding:(unint64_t)a5;
- (NSPlaceholderMutableString)initWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 encoding:(unint64_t)a5 deallocator:(id)a6;
- (NSPlaceholderMutableString)initWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 encoding:(unint64_t)a5 freeWhenDone:(BOOL)a6;
- (NSPlaceholderMutableString)initWithCString:(const char *)a3 encoding:(unint64_t)a4;
- (NSPlaceholderMutableString)initWithCStringNoCopy:(char *)a3 length:(unint64_t)a4 freeWhenDone:(BOOL)a5;
- (NSPlaceholderMutableString)initWithCharactersNoCopy:(unsigned __int16 *)a3 length:(unint64_t)a4 deallocator:(id)a5;
- (NSPlaceholderMutableString)initWithCharactersNoCopy:(unsigned __int16 *)a3 length:(unint64_t)a4 freeWhenDone:(BOOL)a5;
- (NSPlaceholderMutableString)initWithFormat:(id)a3 locale:(id)a4 arguments:(char *)a5;
- (NSPlaceholderMutableString)initWithString:(id)a3;
- (NSPlaceholderMutableString)initWithUTF8String:(const char *)a3;
- (NSPlaceholderMutableString)initWithValidatedFormat:(id)a3 validFormatSpecifiers:(id)a4 locale:(id)a5 arguments:(char *)a6 error:(id *)a7;
- (id)_initWithFormat:(id)a3 locale:(id)a4 options:(id)a5 arguments:(char *)a6;
- (id)_initWithValidatedFormat:(id)a3 validFormatSpecifiers:(id)a4 locale:(id)a5 options:(id)a6 error:(id *)a7 arguments:(char *)a8;
- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4;
@end

@implementation NSPlaceholderMutableString

- (NSPlaceholderMutableString)initWithString:(id)a3
{
  if (!a3)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  v4 = objc_opt_class();
  if (v4 == __NSCFStringClass || class_getSuperclass(v4) == __NSCFStringClass)
  {
    v7 = *MEMORY[0x1E695E480];

    return CFStringCreateMutableCopy(v7, 0, a3);
  }

  else
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    CFStringAppend(Mutable, a3);
    return Mutable;
  }
}

- (NSPlaceholderMutableString)initWithBytes:(const void *)a3 length:(unint64_t)a4 encoding:(unint64_t)a5
{
  v8 = CFStringConvertNSStringEncodingToEncoding(a5);
  if (v8 == -1)
  {
    if (a5 != 134217984 && a5)
    {
      v8 = -1;
    }

    else
    {
      if (_CFExecutableLinkedOnOrAfter())
      {
        NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", a5);
      }

      v8 = 1536;
    }
  }

  result = CFStringCreateWithBytes(0, a3, a4, v8, 1u);
  if (result)
  {
    v10 = result;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, result);
    CFRelease(v10);
    return MutableCopy;
  }

  return result;
}

- (NSPlaceholderMutableString)initWithUTF8String:(const char *)a3
{
  if (!a3)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: NULL cString", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  if (self == &__mutablePlaceholder || _CFExecutableLinkedOnOrAfter())
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    v6 = Mutable;
    if (Mutable)
    {
      CFStringAppendCString(Mutable, a3, 0x8000100u);
    }

    return v6;
  }

  else
  {
    v8 = strlen(a3);

    return [(NSPlaceholderMutableString *)self initWithBytes:a3 length:v8 encoding:4];
  }
}

- (NSPlaceholderMutableString)initWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 encoding:(unint64_t)a5 freeWhenDone:(BOOL)a6
{
  v6 = a6;
  v10 = CFStringConvertNSStringEncodingToEncoding(a5);
  if (v10 == -1)
  {
    if (a5 != 134217984 && a5)
    {
      v10 = -1;
    }

    else
    {
      if (_CFExecutableLinkedOnOrAfter())
      {
        NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", a5);
      }

      v10 = 1536;
    }
  }

  v11 = MEMORY[0x1E695E488];
  if (!v6)
  {
    v11 = MEMORY[0x1E695E498];
  }

  result = CFStringCreateWithBytesNoCopy(0, a3, a4, v10, 1u, *v11);
  if (result)
  {
    v13 = result;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, result);
    CFRelease(v13);
    return MutableCopy;
  }

  return result;
}

- (NSPlaceholderMutableString)initWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 encoding:(unint64_t)a5 deallocator:(id)a6
{
  result = [[NSString alloc] initWithBytesNoCopy:a3 length:a4 encoding:a5 deallocator:a6];
  if (result)
  {
    v7 = result;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, result);

    return MutableCopy;
  }

  return result;
}

- (NSPlaceholderMutableString)initWithCharactersNoCopy:(unsigned __int16 *)a3 length:(unint64_t)a4 freeWhenDone:(BOOL)a5
{
  v5 = a5;
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendCharacters(Mutable, a3, a4);
  if (v5)
  {
    free(a3);
  }

  return Mutable;
}

- (NSPlaceholderMutableString)initWithCharactersNoCopy:(unsigned __int16 *)a3 length:(unint64_t)a4 deallocator:(id)a5
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendCharacters(Mutable, a3, a4);
  if (a5)
  {
    (*(a5 + 2))(a5, a3, a4);
  }

  return Mutable;
}

- (NSPlaceholderMutableString)initWithCString:(const char *)a3 encoding:(unint64_t)a4
{
  if (!a3)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v7 = CFStringConvertNSStringEncodingToEncoding(a4);
  if (v7 == -1)
  {
    if (a4 != 134217984 && a4)
    {
      v7 = -1;
    }

    else
    {
      if (_CFExecutableLinkedOnOrAfter())
      {
        NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", a4);
      }

      v7 = 1536;
    }
  }

  CFStringAppendCString(Mutable, a3, v7);
  return Mutable;
}

- (NSPlaceholderMutableString)initWithCStringNoCopy:(char *)a3 length:(unint64_t)a4 freeWhenDone:(BOOL)a5
{
  v5 = a5;
  SystemEncoding = CFStringGetSystemEncoding();
  v9 = CFStringCreateWithBytes(0, a3, a4, SystemEncoding, 0);
  if (v5)
  {
    free(a3);
  }

  if (!v9)
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v9);
  CFRelease(v9);
  return MutableCopy;
}

- (NSPlaceholderMutableString)initWithFormat:(id)a3 locale:(id)a4 arguments:(char *)a5
{
  if (!a3)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v7);
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  _CFStringAppendFormatAndArgumentsAux2();
  return Mutable;
}

- (NSPlaceholderMutableString)initWithValidatedFormat:(id)a3 validFormatSpecifiers:(id)a4 locale:(id)a5 arguments:(char *)a6 error:(id *)a7
{
  if (!a3 || !a4)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v11);
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!_CFStringAppendValidatedFormatAndArguments())
  {
    CFRelease(Mutable);
    if (a7 && *a7)
    {
      v9 = *a7;
    }

    return 0;
  }

  return Mutable;
}

- (id)_initWithFormat:(id)a3 locale:(id)a4 options:(id)a5 arguments:(char *)a6
{
  if (!a3)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  [a5 pluralizationNumber];
  _CFStringAppendFormatAndArgumentsAux2();
  return Mutable;
}

- (id)_initWithValidatedFormat:(id)a3 validFormatSpecifiers:(id)a4 locale:(id)a5 options:(id)a6 error:(id *)a7 arguments:(char *)a8
{
  if (!a3 || !a4)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v13);
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  [a6 pluralizationNumber];
  if (!_CFStringAppendValidatedFormatAndArguments())
  {
    CFRelease(Mutable);
    if (a7 && *a7)
    {
      v11 = *a7;
    }

    return 0;
  }

  return Mutable;
}

- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4
{
  NSLog(@"Did you forget to nest alloc and init?", a2, a3.location, a3.length, a4);
  v6 = __NSMutableStringClass;

  NSRequestConcreteImplementation(self, a2, v6);
}

@end