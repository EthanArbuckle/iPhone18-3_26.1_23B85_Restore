@interface _NSInlineData
- (_NSInlineData)initWithBytes:(const void *)a3 length:(unint64_t)a4;
- (_NSInlineData)initWithCoder:(id)a3;
@end

@implementation _NSInlineData

- (_NSInlineData)initWithBytes:(const void *)a3 length:(unint64_t)a4
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(self, v4, *MEMORY[0x1E695E0D0]);
  }

  self->_length = a4;
  IndexedIvars = object_getIndexedIvars(self);
  memmove(IndexedIvars, a3, a4);
  return self;
}

- (_NSInlineData)initWithCoder:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];

  v5 = @"NSDebugDescription";
  v6[0] = @"Decoding instances of _NSInlineData is not supported";
  [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v6, &v5, 1))}];
  return 0;
}

@end