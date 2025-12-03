@interface _NSInlineData
- (_NSInlineData)initWithBytes:(const void *)bytes length:(unint64_t)length;
- (_NSInlineData)initWithCoder:(id)coder;
@end

@implementation _NSInlineData

- (_NSInlineData)initWithBytes:(const void *)bytes length:(unint64_t)length
{
  if (*MEMORY[0x1E695E100])
  {
    (*MEMORY[0x1E695E100])(self, v4, *MEMORY[0x1E695E0D0]);
  }

  self->_length = length;
  IndexedIvars = object_getIndexedIvars(self);
  memmove(IndexedIvars, bytes, length);
  return self;
}

- (_NSInlineData)initWithCoder:(id)coder
{
  v6[1] = *MEMORY[0x1E69E9840];

  v5 = @"NSDebugDescription";
  v6[0] = @"Decoding instances of _NSInlineData is not supported";
  [coder failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v6, &v5, 1))}];
  return 0;
}

@end