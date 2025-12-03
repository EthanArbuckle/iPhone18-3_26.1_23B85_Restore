@interface ACZeroingString
+ (id)_emptyString;
- (ACZeroingString)initWithBytes:(const void *)bytes length:(unint64_t)length encoding:(unint64_t)encoding;
- (ACZeroingString)initWithCharacters:(const unsigned __int16 *)characters length:(unint64_t)length;
- (ACZeroingString)initWithCoder:(id)coder;
- (ACZeroingString)initWithString:(id)string;
- (ACZeroingString)initWithUTF8String:(const char *)string;
- (id)_compatibleCopy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)replacementObjectForCoder:(id)coder;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation ACZeroingString

- (void)dealloc
{
  memset_s(self->_characters, 2 * self->_length, 0, 2 * self->_length);
  free(self->_characters);
  v3.receiver = self;
  v3.super_class = ACZeroingString;
  [(ACZeroingString *)&v3 dealloc];
}

+ (id)_emptyString
{
  v2 = [[self alloc] initWithString:&stru_1F210E1C8];

  return v2;
}

- (ACZeroingString)initWithString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    [ACZeroingString initWithString:];
  }

  v10.receiver = self;
  v10.super_class = ACZeroingString;
  v5 = [(ACZeroingString *)&v10 init];
  if (v5)
  {
    v6 = [stringCopy length];
    v5->_length = v6;
    if (v6 < 0)
    {
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Failed to allocate backing character buffer" userInfo:0];
      objc_exception_throw(v9);
    }

    v7 = malloc_type_malloc(2 * v6, 0x895188DDuLL);
    v5->_characters = v7;
    [stringCopy getCharacters:v7 range:{0, v5->_length}];
  }

  return v5;
}

- (ACZeroingString)initWithCharacters:(const unsigned __int16 *)characters length:(unint64_t)length
{
  if (length)
  {
    if (!characters)
    {
      [ACZeroingString initWithCharacters:length:];
    }

    v15.receiver = self;
    v15.super_class = ACZeroingString;
    v7 = [(ACZeroingString *)&v15 init];
    v8 = v7;
    if (v7)
    {
      v7->_length = length;
      if ((length & 0x8000000000000000) != 0)
      {
        v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Failed to allocate backing character buffer" userInfo:0];
        objc_exception_throw(v14);
      }

      v9 = 2 * length;
      v10 = malloc_type_malloc(v9, 0xA10ED575uLL);
      v8->_characters = v10;
      memcpy(v10, characters, v9);
    }

    _emptyString = v8;
    self = _emptyString;
  }

  else
  {
    _emptyString = [objc_opt_class() _emptyString];
  }

  v12 = _emptyString;

  return v12;
}

- (ACZeroingString)initWithBytes:(const void *)bytes length:(unint64_t)length encoding:(unint64_t)encoding
{
  if (!length)
  {
    _emptyString = [objc_opt_class() _emptyString];
    goto LABEL_21;
  }

  if (bytes)
  {
    if (encoding)
    {
      goto LABEL_4;
    }
  }

  else
  {
    [ACZeroingString initWithBytes:length:encoding:];
    if (encoding)
    {
      goto LABEL_4;
    }
  }

  [ACZeroingString initWithBytes:length:encoding:];
LABEL_4:
  v23.receiver = self;
  v23.super_class = ACZeroingString;
  v9 = [(ACZeroingString *)&v23 init];
  if (v9)
  {
    v10 = CFStringConvertNSStringEncodingToEncoding(encoding);
    if (CFStringIsEncodingAvailable(v10))
    {
      v11 = CFStringCreateWithBytesNoCopy(0, bytes, length, v10, 1u, *MEMORY[0x1E695E498]);
      if (v11)
      {
        v12 = v11;
        Length = CFStringGetLength(v11);
        v14 = Length < 0;
        if (Length >= 0)
        {
          v15 = Length;
        }

        else
        {
          v15 = -Length;
        }

        if (!(2 * v15))
        {
          v14 = 0;
        }

        if ((v15 & 0x8000000000000000) == 0 && !v14)
        {
          v16 = Length;
          v17 = Length >= 0 ? 2 * v15 : -2 * v15;
          v18 = malloc_type_malloc(v17, 0xDA7BA652uLL);
          if (v18)
          {
            v19 = v18;
            v24.location = 0;
            v24.length = v16;
            CFStringGetCharacters(v12, v24, v18);
            v9->_length = v16;
            CFRelease(v12);
            v9->_characters = v19;
            goto LABEL_19;
          }
        }

        CFRelease(v12);
      }
    }

    [ACZeroingString initWithBytes:length:encoding:];
  }

LABEL_19:
  _emptyString = v9;
  self = _emptyString;
LABEL_21:
  v21 = _emptyString;

  return v21;
}

- (ACZeroingString)initWithUTF8String:(const char *)string
{
  if (!string)
  {
    [ACZeroingString initWithUTF8String:];
  }

  v5 = strlen(string);

  return [(ACZeroingString *)self initWithBytes:string length:v5 encoding:4];
}

- (ACZeroingString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = ACZeroingString;
  v5 = [(ACZeroingString *)&v16 init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AC.bytes"];
      v7 = [coderCopy decodeIntegerForKey:@"AC.length"];
      if (v7 < 0)
      {
        v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Failed to allocate backing character buffer" userInfo:0];
        objc_exception_throw(v15);
      }

      v8 = v7;
      v9 = 2 * v7;
      if (2 * v7 > [v6 length])
      {
        v10 = _ACLogSystem();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [ACZeroingString initWithCoder:v10];
        }

LABEL_16:

        v13 = 0;
        goto LABEL_17;
      }

      v12 = malloc_type_malloc(v9, 0x64D82225uLL);
      v5->_characters = v12;
      if (!v12)
      {
        v10 = _ACLogSystem();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(ACZeroingString *)v9 initWithCoder:v10];
        }

        goto LABEL_16;
      }

      v5->_length = v8;
      memcpy(v12, [v6 bytes], v9);
    }

    else
    {
      v11 = _ACLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(ACZeroingString *)coderCopy initWithCoder:v11];
      }

      v6 = v5;
      v5 = 0;
    }
  }

  v5 = v5;
  v13 = v5;
LABEL_17:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  length = self->_length;
  if ((length & 0x8000000000000000) != 0)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Failed to allocate backing character buffer" userInfo:0];
    objc_exception_throw(v14);
  }

  v6 = coderCopy;
  v7 = 2 * length;
  v8 = ACAllocateMemoryPages(2 * length);
  v9 = v8;
  characters = self->_characters;
  if (length >= 0x40000)
  {
    if (((NSPageSize() - 1) & (characters | v8)) != 0)
    {
      v8 = v9;
      v11 = 2 * length;
    }

    else
    {
      v13 = NSRoundDownToMultipleOfPageSize(v7);
      NSCopyMemoryPages(characters, v9, v13);
      characters = (characters + v13);
      v8 = v9 + v13;
      v11 = v7 - v13;
      if (v7 == v13)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  v11 = 2 * length;
  if (v7)
  {
LABEL_6:
    memmove(v8, characters, v11);
  }

LABEL_7:
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __35__ACZeroingString_encodeWithCoder___block_invoke;
  v15[3] = &__block_descriptor_48_e5_v8__0l;
  v15[4] = v9;
  v15[5] = v7;
  v12 = dispatch_data_create(v9, v7, 0, v15);
  [v6 encodeObject:v12 forKey:@"AC.bytes"];
  [v6 encodeInteger:self->_length forKey:@"AC.length"];
}

uint64_t __35__ACZeroingString_encodeWithCoder___block_invoke(uint64_t a1)
{
  memset_s(*(a1 + 32), *(a1 + 40), 0, *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return ACDeallocateMemoryPages(v2, v3);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  length = self->_length;
  if ((length & 0x8000000000000000) != 0)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Failed to allocate backing character buffer" userInfo:0];
    objc_exception_throw(v10);
  }

  v6 = v4;
  v7 = 2 * length;
  v8 = malloc_type_malloc(2 * length, 0x3113930FuLL);
  v6[1] = v8;
  v6[2] = self->_length;
  memcpy(v8, self->_characters, v7);
  return v6;
}

- (id)replacementObjectForCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(ACZeroingString *)self _compatibleCopy];
  }

  return selfCopy;
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  if (self->_length <= index)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:@"Index out of bounds" userInfo:{0, v3, v4}];
    objc_exception_throw(v6);
  }

  return self->_characters[index];
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  if (self->_length < range.location + range.length)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:@"Range out of bounds" userInfo:{0, v4, v5}];
    objc_exception_throw(v7);
  }

  v6 = &self->_characters[range.location];

  memcpy(characters, v6, 2 * range.length);
}

- (id)_compatibleCopy
{
  v2 = [MEMORY[0x1E696AEC0] _newZStringWithCharacters:self->_characters length:self->_length];

  return v2;
}

- (void)initWithString:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"string" object:? file:? lineNumber:? description:?];
}

- (void)initWithCharacters:length:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"characters" object:? file:? lineNumber:? description:?];
}

- (void)initWithBytes:length:encoding:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"bytes" object:? file:? lineNumber:? description:?];
}

- (void)initWithBytes:length:encoding:.cold.2()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"encoding" object:? file:? lineNumber:? description:?];
}

- (void)initWithBytes:length:encoding:.cold.3()
{
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Failed to allocate backing character buffer" userInfo:0];
  objc_exception_throw(v0);
}

- (void)initWithUTF8String:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"cString" object:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_ERROR, "ACZeroingString is being used with a decoder of type %@, which is not allowed.", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_ERROR, "ACZeroingString malloc failed to return %lu", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end