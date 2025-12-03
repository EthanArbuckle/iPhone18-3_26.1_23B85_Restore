@interface NSPlaceholderString
- (NSPlaceholderString)initWithBytes:(const void *)bytes length:(unint64_t)length encoding:(unint64_t)encoding;
- (NSPlaceholderString)initWithBytesNoCopy:(void *)copy length:(unint64_t)length encoding:(unint64_t)encoding deallocator:(id)deallocator;
- (NSPlaceholderString)initWithBytesNoCopy:(void *)copy length:(unint64_t)length encoding:(unint64_t)encoding freeWhenDone:(BOOL)done;
- (NSPlaceholderString)initWithCString:(const char *)string;
- (NSPlaceholderString)initWithCString:(const char *)string encoding:(unint64_t)encoding;
- (NSPlaceholderString)initWithCString:(const char *)string length:(unint64_t)length;
- (NSPlaceholderString)initWithCStringNoCopy:(char *)copy length:(unint64_t)length freeWhenDone:(BOOL)done;
- (NSPlaceholderString)initWithCharactersNoCopy:(unsigned __int16 *)copy length:(unint64_t)length deallocator:(id)deallocator;
- (NSPlaceholderString)initWithCharactersNoCopy:(unsigned __int16 *)copy length:(unint64_t)length freeWhenDone:(BOOL)done;
- (NSPlaceholderString)initWithData:(id)data encoding:(unint64_t)encoding;
- (NSPlaceholderString)initWithFormat:(id)format locale:(id)locale arguments:(char *)arguments;
- (NSPlaceholderString)initWithString:(id)string;
- (NSPlaceholderString)initWithValidatedFormat:(id)format validFormatSpecifiers:(id)specifiers locale:(id)locale arguments:(char *)arguments error:(id *)error;
- (id)_initWithFormat:(id)format locale:(id)locale options:(id)options arguments:(char *)arguments;
- (id)_initWithValidatedFormat:(id)format validFormatSpecifiers:(id)specifiers locale:(id)locale options:(id)options error:(id *)error arguments:(char *)arguments;
@end

@implementation NSPlaceholderString

- (NSPlaceholderString)initWithCharactersNoCopy:(unsigned __int16 *)copy length:(unint64_t)length freeWhenDone:(BOOL)done
{
  v5 = MEMORY[0x1E695E488];
  if (!done)
  {
    v5 = MEMORY[0x1E695E498];
  }

  return CFStringCreateWithCharactersNoCopy(*MEMORY[0x1E695E480], copy, length, *v5);
}

- (NSPlaceholderString)initWithCharactersNoCopy:(unsigned __int16 *)copy length:(unint64_t)length deallocator:(id)deallocator
{
  v12 = *MEMORY[0x1E69E9840];
  if (deallocator)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__NSPlaceholderString_initWithCharactersNoCopy_length_deallocator___block_invoke;
    v10[3] = &unk_1E69F6348;
    v10[4] = deallocator;
    v10[5] = copy;
    v10[6] = length;
    memset(&context, 0, sizeof(context));
    context.info = [v10 copy];
    context.allocate = _NSAllocatorAllocateHALTIfUsed;
    context.deallocate = _NSAllocatorDeallocateWithBlock;
    v7 = CFAllocatorCreate(*MEMORY[0x1E695E4A8], &context);
  }

  else
  {
    v7 = *MEMORY[0x1E695E498];
  }

  v8 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x1E695E480], copy, length, v7);
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

- (NSPlaceholderString)initWithCString:(const char *)string encoding:(unint64_t)encoding
{
  v6 = *MEMORY[0x1E695E480];
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

  return CFStringCreateWithCString(v6, string, v7);
}

- (NSPlaceholderString)initWithCStringNoCopy:(char *)copy length:(unint64_t)length freeWhenDone:(BOOL)done
{
  doneCopy = done;
  v8 = *MEMORY[0x1E695E480];
  SystemEncoding = CFStringGetSystemEncoding();
  v10 = MEMORY[0x1E695E488];
  if (!doneCopy)
  {
    v10 = MEMORY[0x1E695E498];
  }

  v11 = *v10;

  return CFStringCreateWithBytesNoCopy(v8, copy, length, SystemEncoding, 0, v11);
}

- (NSPlaceholderString)initWithBytesNoCopy:(void *)copy length:(unint64_t)length encoding:(unint64_t)encoding freeWhenDone:(BOOL)done
{
  doneCopy = done;
  v10 = *MEMORY[0x1E695E480];
  v11 = CFStringConvertNSStringEncodingToEncoding(encoding);
  if (v11 == -1)
  {
    if (encoding != 134217984 && encoding)
    {
      v11 = -1;
    }

    else
    {
      if (_CFExecutableLinkedOnOrAfter())
      {
        NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", encoding);
      }

      v11 = 1536;
    }
  }

  v12 = MEMORY[0x1E695E488];
  if (!doneCopy)
  {
    v12 = MEMORY[0x1E695E498];
  }

  v13 = *v12;

  return CFStringCreateWithBytesNoCopy(v10, copy, length, v11, 1u, v13);
}

- (NSPlaceholderString)initWithBytesNoCopy:(void *)copy length:(unint64_t)length encoding:(unint64_t)encoding deallocator:(id)deallocator
{
  v16 = *MEMORY[0x1E69E9840];
  if (deallocator)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__NSPlaceholderString_initWithBytesNoCopy_length_encoding_deallocator___block_invoke;
    v14[3] = &unk_1E69F6348;
    v14[4] = deallocator;
    v14[5] = copy;
    v14[6] = length;
    memset(&context, 0, sizeof(context));
    context.info = [v14 copy];
    context.allocate = _NSAllocatorAllocateHALTIfUsed;
    context.deallocate = _NSAllocatorDeallocateWithBlock;
    v9 = CFAllocatorCreate(*MEMORY[0x1E695E4A8], &context);
  }

  else
  {
    v9 = *MEMORY[0x1E695E498];
  }

  v10 = *MEMORY[0x1E695E480];
  v11 = CFStringConvertNSStringEncodingToEncoding(encoding);
  if (v11 == -1)
  {
    if (encoding != 134217984 && encoding)
    {
      v11 = -1;
    }

    else
    {
      if (_CFExecutableLinkedOnOrAfter())
      {
        NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", encoding);
      }

      v11 = 1536;
    }
  }

  v12 = CFStringCreateWithBytesNoCopy(v10, copy, length, v11, 1u, v9);
  if (v9)
  {
    CFRelease(v9);
  }

  return v12;
}

- (NSPlaceholderString)initWithCString:(const char *)string length:(unint64_t)length
{
  v6 = *MEMORY[0x1E695E480];
  SystemEncoding = CFStringGetSystemEncoding();

  return CFStringCreateWithBytes(v6, string, length, SystemEncoding, 0);
}

- (NSPlaceholderString)initWithCString:(const char *)string
{
  v4 = *MEMORY[0x1E695E480];
  SystemEncoding = CFStringGetSystemEncoding();

  return CFStringCreateWithCString(v4, string, SystemEncoding);
}

- (NSPlaceholderString)initWithString:(id)string
{
  v24 = *MEMORY[0x1E69E9840];
  if (!string)
  {
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v22);
  }

  stringCopy = string;
  if ((string & 0x8000000000000000) != 0)
  {
    return stringCopy;
  }

  v5 = objc_opt_class();
  if (v5 == __NSCFStringClass || class_getSuperclass(v5) == __NSCFStringClass)
  {
    v10 = *MEMORY[0x1E695E480];

    return CFStringCreateCopy(v10, stringCopy);
  }

  else
  {
    fastestEncoding = [(NSString *)stringCopy fastestEncoding];
    v7 = [(NSString *)stringCopy _fastCStringContents:0];
    v8 = [(NSString *)stringCopy lengthOfBytesUsingEncoding:fastestEncoding];
    if (v7)
    {
      v9 = CFStringConvertNSStringEncodingToEncoding(fastestEncoding);
      if (v9 == -1)
      {
        if (fastestEncoding != 134217984 && fastestEncoding)
        {
          v9 = -1;
        }

        else
        {
          if (_CFExecutableLinkedOnOrAfter())
          {
            NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", fastestEncoding);
          }

          v9 = 1536;
        }
      }

      v20 = *MEMORY[0x1E695E480];

      return CFStringCreateWithBytes(v20, v7, v8, v9, 0);
    }

    else
    {
      _fastCharacterContents = [(NSString *)stringCopy _fastCharacterContents];
      if (!_fastCharacterContents)
      {
        v14 = v8 + 1;
        v23 = 0;
        MEMORY[0x1EEE9AC00](0);
        v16 = &v23 - v15;
        if (v14 >= 0x101)
        {
          v16 = malloc_type_malloc(v14, 0x100004077774924uLL);
        }

        [(NSString *)stringCopy getBytes:v16 maxLength:v14 usedLength:&v23 encoding:fastestEncoding options:0 range:0 remainingRange:[(NSPlaceholderString *)stringCopy length:v23], 0];
        v17 = *MEMORY[0x1E695E480];
        v18 = v23;
        v19 = CFStringConvertNSStringEncodingToEncoding(fastestEncoding);
        if (v19 == -1)
        {
          if (fastestEncoding != 134217984 && fastestEncoding)
          {
            v19 = -1;
          }

          else
          {
            if (_CFExecutableLinkedOnOrAfter())
            {
              NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", fastestEncoding);
            }

            v19 = 1536;
          }
        }

        if (v14 > 0x100)
        {
          return CFStringCreateWithBytesNoCopy(v17, v16, v18, v19, 0, *MEMORY[0x1E695E488]);
        }

        else
        {
          return CFStringCreateWithBytes(v17, v16, v18, v19, 0);
        }
      }

      v12 = _fastCharacterContents;
      v13 = *MEMORY[0x1E695E480];

      return CFStringCreateWithCharacters(v13, v12, v8 >> 1);
    }
  }
}

- (NSPlaceholderString)initWithValidatedFormat:(id)format validFormatSpecifiers:(id)specifiers locale:(id)locale arguments:(char *)arguments error:(id *)error
{
  if (!format || !specifiers)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v11);
  }

  StringWithValidatedFormatAuxWithDesc = _CFStringCreateStringWithValidatedFormatAuxWithDesc();
  if (error && *error)
  {
    v9 = *error;
  }

  return StringWithValidatedFormatAuxWithDesc;
}

- (NSPlaceholderString)initWithFormat:(id)format locale:(id)locale arguments:(char *)arguments
{
  if (!format)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v13);
  }

  __baseAttributedString = [format __baseAttributedString];
  if (__baseAttributedString)
  {
    v9 = [[NSAttributedString alloc] _initWithFormat:__baseAttributedString options:0 locale:locale arguments:arguments];
    v10 = [objc_msgSend(v9 "string")];

    return v10;
  }

  else
  {
    v12 = *MEMORY[0x1E695E480];

    return MEMORY[0x1EEDB85E0](v12, _NSDescriptionWithLocaleFunc, _NSDescriptionWithStringProxyFunc, locale, 0, format, arguments);
  }
}

- (id)_initWithFormat:(id)format locale:(id)locale options:(id)options arguments:(char *)arguments
{
  if (!format)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v11);
  }

  v9 = *MEMORY[0x1E695E480];
  pluralizationNumber = [options pluralizationNumber];

  return MEMORY[0x1EEDB85E0](v9, _NSDescriptionWithLocaleFunc, _NSDescriptionWithStringProxyFunc, locale, pluralizationNumber, format, arguments);
}

- (id)_initWithValidatedFormat:(id)format validFormatSpecifiers:(id)specifiers locale:(id)locale options:(id)options error:(id *)error arguments:(char *)arguments
{
  if (!format || !specifiers)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v12);
  }

  [options pluralizationNumber];
  StringWithValidatedFormatAuxWithDesc = _CFStringCreateStringWithValidatedFormatAuxWithDesc();
  if (error && *error)
  {
    v10 = *error;
  }

  return StringWithValidatedFormatAuxWithDesc;
}

- (NSPlaceholderString)initWithData:(id)data encoding:(unint64_t)encoding
{
  if (!data)
  {
    return &stru_1EEEFDF90;
  }

  v6 = *MEMORY[0x1E695E480];
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

  return CFStringCreateFromExternalRepresentation(v6, data, v7);
}

- (NSPlaceholderString)initWithBytes:(const void *)bytes length:(unint64_t)length encoding:(unint64_t)encoding
{
  v8 = *MEMORY[0x1E695E480];
  v9 = CFStringConvertNSStringEncodingToEncoding(encoding);
  if (v9 == -1)
  {
    if (encoding != 134217984 && encoding)
    {
      v9 = -1;
    }

    else
    {
      if (_CFExecutableLinkedOnOrAfter())
      {
        NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", encoding);
      }

      v9 = 1536;
    }
  }

  return CFStringCreateWithBytes(v8, bytes, length, v9, 1u);
}

@end