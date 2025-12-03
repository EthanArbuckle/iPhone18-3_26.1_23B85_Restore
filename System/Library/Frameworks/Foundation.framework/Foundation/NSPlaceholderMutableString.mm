@interface NSPlaceholderMutableString
- (NSPlaceholderMutableString)initWithBytes:(const void *)bytes length:(unint64_t)length encoding:(unint64_t)encoding;
- (NSPlaceholderMutableString)initWithBytesNoCopy:(void *)copy length:(unint64_t)length encoding:(unint64_t)encoding deallocator:(id)deallocator;
- (NSPlaceholderMutableString)initWithBytesNoCopy:(void *)copy length:(unint64_t)length encoding:(unint64_t)encoding freeWhenDone:(BOOL)done;
- (NSPlaceholderMutableString)initWithCString:(const char *)string encoding:(unint64_t)encoding;
- (NSPlaceholderMutableString)initWithCStringNoCopy:(char *)copy length:(unint64_t)length freeWhenDone:(BOOL)done;
- (NSPlaceholderMutableString)initWithCharactersNoCopy:(unsigned __int16 *)copy length:(unint64_t)length deallocator:(id)deallocator;
- (NSPlaceholderMutableString)initWithCharactersNoCopy:(unsigned __int16 *)copy length:(unint64_t)length freeWhenDone:(BOOL)done;
- (NSPlaceholderMutableString)initWithFormat:(id)format locale:(id)locale arguments:(char *)arguments;
- (NSPlaceholderMutableString)initWithString:(id)string;
- (NSPlaceholderMutableString)initWithUTF8String:(const char *)string;
- (NSPlaceholderMutableString)initWithValidatedFormat:(id)format validFormatSpecifiers:(id)specifiers locale:(id)locale arguments:(char *)arguments error:(id *)error;
- (id)_initWithFormat:(id)format locale:(id)locale options:(id)options arguments:(char *)arguments;
- (id)_initWithValidatedFormat:(id)format validFormatSpecifiers:(id)specifiers locale:(id)locale options:(id)options error:(id *)error arguments:(char *)arguments;
- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string;
@end

@implementation NSPlaceholderMutableString

- (NSPlaceholderMutableString)initWithString:(id)string
{
  if (!string)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  v4 = objc_opt_class();
  if (v4 == __NSCFStringClass || class_getSuperclass(v4) == __NSCFStringClass)
  {
    v7 = *MEMORY[0x1E695E480];

    return CFStringCreateMutableCopy(v7, 0, string);
  }

  else
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    CFStringAppend(Mutable, string);
    return Mutable;
  }
}

- (NSPlaceholderMutableString)initWithBytes:(const void *)bytes length:(unint64_t)length encoding:(unint64_t)encoding
{
  v8 = CFStringConvertNSStringEncodingToEncoding(encoding);
  if (v8 == -1)
  {
    if (encoding != 134217984 && encoding)
    {
      v8 = -1;
    }

    else
    {
      if (_CFExecutableLinkedOnOrAfter())
      {
        NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", encoding);
      }

      v8 = 1536;
    }
  }

  result = CFStringCreateWithBytes(0, bytes, length, v8, 1u);
  if (result)
  {
    v10 = result;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, result);
    CFRelease(v10);
    return MutableCopy;
  }

  return result;
}

- (NSPlaceholderMutableString)initWithUTF8String:(const char *)string
{
  if (!string)
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
      CFStringAppendCString(Mutable, string, 0x8000100u);
    }

    return v6;
  }

  else
  {
    v8 = strlen(string);

    return [(NSPlaceholderMutableString *)self initWithBytes:string length:v8 encoding:4];
  }
}

- (NSPlaceholderMutableString)initWithBytesNoCopy:(void *)copy length:(unint64_t)length encoding:(unint64_t)encoding freeWhenDone:(BOOL)done
{
  doneCopy = done;
  v10 = CFStringConvertNSStringEncodingToEncoding(encoding);
  if (v10 == -1)
  {
    if (encoding != 134217984 && encoding)
    {
      v10 = -1;
    }

    else
    {
      if (_CFExecutableLinkedOnOrAfter())
      {
        NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", encoding);
      }

      v10 = 1536;
    }
  }

  v11 = MEMORY[0x1E695E488];
  if (!doneCopy)
  {
    v11 = MEMORY[0x1E695E498];
  }

  result = CFStringCreateWithBytesNoCopy(0, copy, length, v10, 1u, *v11);
  if (result)
  {
    v13 = result;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, result);
    CFRelease(v13);
    return MutableCopy;
  }

  return result;
}

- (NSPlaceholderMutableString)initWithBytesNoCopy:(void *)copy length:(unint64_t)length encoding:(unint64_t)encoding deallocator:(id)deallocator
{
  result = [[NSString alloc] initWithBytesNoCopy:copy length:length encoding:encoding deallocator:deallocator];
  if (result)
  {
    v7 = result;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, result);

    return MutableCopy;
  }

  return result;
}

- (NSPlaceholderMutableString)initWithCharactersNoCopy:(unsigned __int16 *)copy length:(unint64_t)length freeWhenDone:(BOOL)done
{
  doneCopy = done;
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendCharacters(Mutable, copy, length);
  if (doneCopy)
  {
    free(copy);
  }

  return Mutable;
}

- (NSPlaceholderMutableString)initWithCharactersNoCopy:(unsigned __int16 *)copy length:(unint64_t)length deallocator:(id)deallocator
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendCharacters(Mutable, copy, length);
  if (deallocator)
  {
    (*(deallocator + 2))(deallocator, copy, length);
  }

  return Mutable;
}

- (NSPlaceholderMutableString)initWithCString:(const char *)string encoding:(unint64_t)encoding
{
  if (!string)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v7 = CFStringConvertNSStringEncodingToEncoding(encoding);
  if (v7 == -1)
  {
    if (encoding != 134217984 && encoding)
    {
      v7 = -1;
    }

    else
    {
      if (_CFExecutableLinkedOnOrAfter())
      {
        NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", encoding);
      }

      v7 = 1536;
    }
  }

  CFStringAppendCString(Mutable, string, v7);
  return Mutable;
}

- (NSPlaceholderMutableString)initWithCStringNoCopy:(char *)copy length:(unint64_t)length freeWhenDone:(BOOL)done
{
  doneCopy = done;
  SystemEncoding = CFStringGetSystemEncoding();
  v9 = CFStringCreateWithBytes(0, copy, length, SystemEncoding, 0);
  if (doneCopy)
  {
    free(copy);
  }

  if (!v9)
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v9);
  CFRelease(v9);
  return MutableCopy;
}

- (NSPlaceholderMutableString)initWithFormat:(id)format locale:(id)locale arguments:(char *)arguments
{
  if (!format)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v7);
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  _CFStringAppendFormatAndArgumentsAux2();
  return Mutable;
}

- (NSPlaceholderMutableString)initWithValidatedFormat:(id)format validFormatSpecifiers:(id)specifiers locale:(id)locale arguments:(char *)arguments error:(id *)error
{
  if (!format || !specifiers)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v11);
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!_CFStringAppendValidatedFormatAndArguments())
  {
    CFRelease(Mutable);
    if (error && *error)
    {
      v9 = *error;
    }

    return 0;
  }

  return Mutable;
}

- (id)_initWithFormat:(id)format locale:(id)locale options:(id)options arguments:(char *)arguments
{
  if (!format)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  [options pluralizationNumber];
  _CFStringAppendFormatAndArgumentsAux2();
  return Mutable;
}

- (id)_initWithValidatedFormat:(id)format validFormatSpecifiers:(id)specifiers locale:(id)locale options:(id)options error:(id *)error arguments:(char *)arguments
{
  if (!format || !specifiers)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v13);
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  [options pluralizationNumber];
  if (!_CFStringAppendValidatedFormatAndArguments())
  {
    CFRelease(Mutable);
    if (error && *error)
    {
      v11 = *error;
    }

    return 0;
  }

  return Mutable;
}

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string
{
  NSLog(@"Did you forget to nest alloc and init?", a2, range.location, range.length, string);
  v6 = __NSMutableStringClass;

  NSRequestConcreteImplementation(self, a2, v6);
}

@end