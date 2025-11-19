@interface NSPlaceholderString
- (NSPlaceholderString)initWithBytes:(const void *)a3 length:(unint64_t)a4 encoding:(unint64_t)a5;
- (NSPlaceholderString)initWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 encoding:(unint64_t)a5 deallocator:(id)a6;
- (NSPlaceholderString)initWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 encoding:(unint64_t)a5 freeWhenDone:(BOOL)a6;
- (NSPlaceholderString)initWithCString:(const char *)a3;
- (NSPlaceholderString)initWithCString:(const char *)a3 encoding:(unint64_t)a4;
- (NSPlaceholderString)initWithCString:(const char *)a3 length:(unint64_t)a4;
- (NSPlaceholderString)initWithCStringNoCopy:(char *)a3 length:(unint64_t)a4 freeWhenDone:(BOOL)a5;
- (NSPlaceholderString)initWithCharactersNoCopy:(unsigned __int16 *)a3 length:(unint64_t)a4 deallocator:(id)a5;
- (NSPlaceholderString)initWithCharactersNoCopy:(unsigned __int16 *)a3 length:(unint64_t)a4 freeWhenDone:(BOOL)a5;
- (NSPlaceholderString)initWithData:(id)a3 encoding:(unint64_t)a4;
- (NSPlaceholderString)initWithFormat:(id)a3 locale:(id)a4 arguments:(char *)a5;
- (NSPlaceholderString)initWithString:(id)a3;
- (NSPlaceholderString)initWithValidatedFormat:(id)a3 validFormatSpecifiers:(id)a4 locale:(id)a5 arguments:(char *)a6 error:(id *)a7;
- (id)_initWithFormat:(id)a3 locale:(id)a4 options:(id)a5 arguments:(char *)a6;
- (id)_initWithValidatedFormat:(id)a3 validFormatSpecifiers:(id)a4 locale:(id)a5 options:(id)a6 error:(id *)a7 arguments:(char *)a8;
@end

@implementation NSPlaceholderString

- (NSPlaceholderString)initWithCharactersNoCopy:(unsigned __int16 *)a3 length:(unint64_t)a4 freeWhenDone:(BOOL)a5
{
  v5 = MEMORY[0x1E695E488];
  if (!a5)
  {
    v5 = MEMORY[0x1E695E498];
  }

  return CFStringCreateWithCharactersNoCopy(*MEMORY[0x1E695E480], a3, a4, *v5);
}

- (NSPlaceholderString)initWithCharactersNoCopy:(unsigned __int16 *)a3 length:(unint64_t)a4 deallocator:(id)a5
{
  v12 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__NSPlaceholderString_initWithCharactersNoCopy_length_deallocator___block_invoke;
    v10[3] = &unk_1E69F6348;
    v10[4] = a5;
    v10[5] = a3;
    v10[6] = a4;
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

  v8 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x1E695E480], a3, a4, v7);
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

- (NSPlaceholderString)initWithCString:(const char *)a3 encoding:(unint64_t)a4
{
  v6 = *MEMORY[0x1E695E480];
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

  return CFStringCreateWithCString(v6, a3, v7);
}

- (NSPlaceholderString)initWithCStringNoCopy:(char *)a3 length:(unint64_t)a4 freeWhenDone:(BOOL)a5
{
  v5 = a5;
  v8 = *MEMORY[0x1E695E480];
  SystemEncoding = CFStringGetSystemEncoding();
  v10 = MEMORY[0x1E695E488];
  if (!v5)
  {
    v10 = MEMORY[0x1E695E498];
  }

  v11 = *v10;

  return CFStringCreateWithBytesNoCopy(v8, a3, a4, SystemEncoding, 0, v11);
}

- (NSPlaceholderString)initWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 encoding:(unint64_t)a5 freeWhenDone:(BOOL)a6
{
  v6 = a6;
  v10 = *MEMORY[0x1E695E480];
  v11 = CFStringConvertNSStringEncodingToEncoding(a5);
  if (v11 == -1)
  {
    if (a5 != 134217984 && a5)
    {
      v11 = -1;
    }

    else
    {
      if (_CFExecutableLinkedOnOrAfter())
      {
        NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", a5);
      }

      v11 = 1536;
    }
  }

  v12 = MEMORY[0x1E695E488];
  if (!v6)
  {
    v12 = MEMORY[0x1E695E498];
  }

  v13 = *v12;

  return CFStringCreateWithBytesNoCopy(v10, a3, a4, v11, 1u, v13);
}

- (NSPlaceholderString)initWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 encoding:(unint64_t)a5 deallocator:(id)a6
{
  v16 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__NSPlaceholderString_initWithBytesNoCopy_length_encoding_deallocator___block_invoke;
    v14[3] = &unk_1E69F6348;
    v14[4] = a6;
    v14[5] = a3;
    v14[6] = a4;
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
  v11 = CFStringConvertNSStringEncodingToEncoding(a5);
  if (v11 == -1)
  {
    if (a5 != 134217984 && a5)
    {
      v11 = -1;
    }

    else
    {
      if (_CFExecutableLinkedOnOrAfter())
      {
        NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", a5);
      }

      v11 = 1536;
    }
  }

  v12 = CFStringCreateWithBytesNoCopy(v10, a3, a4, v11, 1u, v9);
  if (v9)
  {
    CFRelease(v9);
  }

  return v12;
}

- (NSPlaceholderString)initWithCString:(const char *)a3 length:(unint64_t)a4
{
  v6 = *MEMORY[0x1E695E480];
  SystemEncoding = CFStringGetSystemEncoding();

  return CFStringCreateWithBytes(v6, a3, a4, SystemEncoding, 0);
}

- (NSPlaceholderString)initWithCString:(const char *)a3
{
  v4 = *MEMORY[0x1E695E480];
  SystemEncoding = CFStringGetSystemEncoding();

  return CFStringCreateWithCString(v4, a3, SystemEncoding);
}

- (NSPlaceholderString)initWithString:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v22);
  }

  v3 = a3;
  if ((a3 & 0x8000000000000000) != 0)
  {
    return v3;
  }

  v5 = objc_opt_class();
  if (v5 == __NSCFStringClass || class_getSuperclass(v5) == __NSCFStringClass)
  {
    v10 = *MEMORY[0x1E695E480];

    return CFStringCreateCopy(v10, v3);
  }

  else
  {
    v6 = [(NSString *)v3 fastestEncoding];
    v7 = [(NSString *)v3 _fastCStringContents:0];
    v8 = [(NSString *)v3 lengthOfBytesUsingEncoding:v6];
    if (v7)
    {
      v9 = CFStringConvertNSStringEncodingToEncoding(v6);
      if (v9 == -1)
      {
        if (v6 != 134217984 && v6)
        {
          v9 = -1;
        }

        else
        {
          if (_CFExecutableLinkedOnOrAfter())
          {
            NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", v6);
          }

          v9 = 1536;
        }
      }

      v20 = *MEMORY[0x1E695E480];

      return CFStringCreateWithBytes(v20, v7, v8, v9, 0);
    }

    else
    {
      v11 = [(NSString *)v3 _fastCharacterContents];
      if (!v11)
      {
        v14 = v8 + 1;
        v23 = 0;
        MEMORY[0x1EEE9AC00](0);
        v16 = &v23 - v15;
        if (v14 >= 0x101)
        {
          v16 = malloc_type_malloc(v14, 0x100004077774924uLL);
        }

        [(NSString *)v3 getBytes:v16 maxLength:v14 usedLength:&v23 encoding:v6 options:0 range:0 remainingRange:[(NSPlaceholderString *)v3 length:v23], 0];
        v17 = *MEMORY[0x1E695E480];
        v18 = v23;
        v19 = CFStringConvertNSStringEncodingToEncoding(v6);
        if (v19 == -1)
        {
          if (v6 != 134217984 && v6)
          {
            v19 = -1;
          }

          else
          {
            if (_CFExecutableLinkedOnOrAfter())
            {
              NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", v6);
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

      v12 = v11;
      v13 = *MEMORY[0x1E695E480];

      return CFStringCreateWithCharacters(v13, v12, v8 >> 1);
    }
  }
}

- (NSPlaceholderString)initWithValidatedFormat:(id)a3 validFormatSpecifiers:(id)a4 locale:(id)a5 arguments:(char *)a6 error:(id *)a7
{
  if (!a3 || !a4)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v11);
  }

  StringWithValidatedFormatAuxWithDesc = _CFStringCreateStringWithValidatedFormatAuxWithDesc();
  if (a7 && *a7)
  {
    v9 = *a7;
  }

  return StringWithValidatedFormatAuxWithDesc;
}

- (NSPlaceholderString)initWithFormat:(id)a3 locale:(id)a4 arguments:(char *)a5
{
  if (!a3)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v13);
  }

  v8 = [a3 __baseAttributedString];
  if (v8)
  {
    v9 = [[NSAttributedString alloc] _initWithFormat:v8 options:0 locale:a4 arguments:a5];
    v10 = [objc_msgSend(v9 "string")];

    return v10;
  }

  else
  {
    v12 = *MEMORY[0x1E695E480];

    return MEMORY[0x1EEDB85E0](v12, _NSDescriptionWithLocaleFunc, _NSDescriptionWithStringProxyFunc, a4, 0, a3, a5);
  }
}

- (id)_initWithFormat:(id)a3 locale:(id)a4 options:(id)a5 arguments:(char *)a6
{
  if (!a3)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v11);
  }

  v9 = *MEMORY[0x1E695E480];
  v10 = [a5 pluralizationNumber];

  return MEMORY[0x1EEDB85E0](v9, _NSDescriptionWithLocaleFunc, _NSDescriptionWithStringProxyFunc, a4, v10, a3, a6);
}

- (id)_initWithValidatedFormat:(id)a3 validFormatSpecifiers:(id)a4 locale:(id)a5 options:(id)a6 error:(id *)a7 arguments:(char *)a8
{
  if (!a3 || !a4)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v12);
  }

  [a6 pluralizationNumber];
  StringWithValidatedFormatAuxWithDesc = _CFStringCreateStringWithValidatedFormatAuxWithDesc();
  if (a7 && *a7)
  {
    v10 = *a7;
  }

  return StringWithValidatedFormatAuxWithDesc;
}

- (NSPlaceholderString)initWithData:(id)a3 encoding:(unint64_t)a4
{
  if (!a3)
  {
    return &stru_1EEEFDF90;
  }

  v6 = *MEMORY[0x1E695E480];
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

  return CFStringCreateFromExternalRepresentation(v6, a3, v7);
}

- (NSPlaceholderString)initWithBytes:(const void *)a3 length:(unint64_t)a4 encoding:(unint64_t)a5
{
  v8 = *MEMORY[0x1E695E480];
  v9 = CFStringConvertNSStringEncodingToEncoding(a5);
  if (v9 == -1)
  {
    if (a5 != 134217984 && a5)
    {
      v9 = -1;
    }

    else
    {
      if (_CFExecutableLinkedOnOrAfter())
      {
        NSLog(@"Incorrect NSStringEncoding value 0x%04lX detected. Assuming NSASCIIStringEncoding. Will stop this compatibility mapping behavior in the near future.", a5);
      }

      v9 = 1536;
    }
  }

  return CFStringCreateWithBytes(v8, a3, a4, v9, 1u);
}

@end