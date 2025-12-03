@interface _NSClStr
- (_NSClStr)initWithCharacters:(const unsigned __int16 *)characters length:(unint64_t)length;
- (_NSClStr)initWithString:(id)string;
- (_NSClStr)initWithUTF8String:(const char *)string;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation _NSClStr

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  memset_s(self->characters, 2 * self->length, 0, 2 * self->length);
  free(self->characters);
  v3.receiver = self;
  v3.super_class = _NSClStr;
  [(_NSClStr *)&v3 dealloc];
}

- (_NSClStr)initWithCharacters:(const unsigned __int16 *)characters length:(unint64_t)length
{
  v10 = *MEMORY[0x1E69E9840];
  if (!characters)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NULL argument" userInfo:0]);
  }

  v9.receiver = self;
  v9.super_class = _NSClStr;
  v6 = [(NSString *)&v9 init];
  v6->length = length;
  v7 = malloc_type_malloc(2 * length, 0x1000040BDFB0063uLL);
  v6->characters = v7;
  memcpy(v7, characters, 2 * v6->length);
  return v6;
}

- (_NSClStr)initWithString:(id)string
{
  v9 = *MEMORY[0x1E69E9840];
  if (!string)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil argument" userInfo:0]);
  }

  v8.receiver = self;
  v8.super_class = _NSClStr;
  v4 = [(NSString *)&v8 init];
  v5 = [string length];
  v4->length = v5;
  v6 = malloc_type_malloc(2 * v5, 0x1000040BDFB0063uLL);
  v4->characters = v6;
  [string getCharacters:v6 range:{0, v4->length}];
  return v4;
}

- (_NSClStr)initWithUTF8String:(const char *)string
{
  if (!string)
  {

    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = @"NULL argument";
    goto LABEL_9;
  }

  v5 = strlen(string);
  v6 = 2 * v5;
  v7 = malloc_type_malloc(2 * v5, 0x1000040BDFB0063uLL);
  if (!v7)
  {

LABEL_8:
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = @"Invalid argument";
LABEL_9:
    objc_exception_throw([v13 exceptionWithName:v14 reason:v15 userInfo:0]);
  }

  v8 = v7;
  MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, v7, 0, v5, *MEMORY[0x1E695E498]);
  if (!MutableWithExternalCharactersNoCopy)
  {

    free(v8);
    goto LABEL_8;
  }

  v10 = MutableWithExternalCharactersNoCopy;
  CFStringAppendCString(MutableWithExternalCharactersNoCopy, string, 0x8000100u);
  v11 = [(_NSClStr *)self initWithCharacters:v8 length:CFStringGetLength(v10)];
  CFRelease(v10);
  memset_s(v8, v6, 0, v6);
  free(v8);
  return v11;
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  if (self->length <= index)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:@"Index out of bounds" userInfo:{0, v3, v4}]);
  }

  return self->characters[index];
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  length = self->length;
  v7 = length >= range.length;
  v8 = length - range.length;
  if (!v7 || range.location > v8)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:@"Range out of bounds" userInfo:{0, v4, v5}]);
  }

  v10 = &self->characters[range.location];

  memcpy(characters, v10, 2 * range.length);
}

@end