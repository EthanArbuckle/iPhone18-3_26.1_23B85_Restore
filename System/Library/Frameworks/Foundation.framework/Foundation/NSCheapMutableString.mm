@interface NSCheapMutableString
- (BOOL)getBytes:(void *)bytes maxLength:(unint64_t)length usedLength:(unint64_t *)usedLength encoding:(unint64_t)encoding options:(unint64_t)options range:(_NSRange)range remainingRange:(_NSRange *)remainingRange;
- (const)cString;
- (const)lossyCString;
- (unint64_t)cStringLength;
- (unint64_t)fastestEncoding;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
- (void)setContentsNoCopy:(void *)copy length:(unint64_t)length freeWhenDone:(BOOL)done isUnicode:(BOOL)unicode;
@end

@implementation NSCheapMutableString

- (unint64_t)fastestEncoding
{
  if (*&self->flags)
  {
    return 10;
  }

  if (__NSDefaultStringEncodingFullyInited == 1)
  {
    return _NSDefaultStringEncoding;
  }

  return _NSDefaultCStringEncoding();
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if ((*&self->flags & 2) != 0)
  {
    free(self->contents.fat);
  }

  v3.receiver = self;
  v3.super_class = NSCheapMutableString;
  [(NSCheapMutableString *)&v3 dealloc];
}

- (void)setContentsNoCopy:(void *)copy length:(unint64_t)length freeWhenDone:(BOOL)done isUnicode:(BOOL)unicode
{
  unicodeCopy = unicode;
  if ((*&self->flags & 2) != 0)
  {
    free(self->contents.fat);
  }

  self->contents.fat = copy;
  self->flags = (*&self->flags & 0xFFFFFFFE | unicodeCopy);
  self->numCharacters = length;
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  fat = self->contents.fat;
  if (*&self->flags)
  {
    return fat[index];
  }

  else
  {
    return *(fat + index);
  }
}

- (BOOL)getBytes:(void *)bytes maxLength:(unint64_t)length usedLength:(unint64_t *)usedLength encoding:(unint64_t)encoding options:(unint64_t)options range:(_NSRange)range remainingRange:(_NSRange *)remainingRange
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*&self->flags & 1) != 0 || +[NSString defaultCStringEncoding]!= encoding)
  {
    v19.receiver = self;
    v19.super_class = NSCheapMutableString;
    return [(NSString *)&v19 getBytes:bytes maxLength:length usedLength:usedLength encoding:encoding options:options range:range.location remainingRange:range.length, remainingRange];
  }

  else
  {
    if (range.length >= length)
    {
      length = length;
    }

    else
    {
      length = range.length;
    }

    if (bytes && length)
    {
      location = range.location;
      lengthCopy = length;
      do
      {
        *bytes = *(self->contents.fat + location);
        bytes = bytes + 1;
        ++location;
        --lengthCopy;
      }

      while (lengthCopy);
    }

    if (usedLength)
    {
      *usedLength = length;
    }

    if (remainingRange)
    {
      remainingRange->location = length + range.location;
      remainingRange->length = range.length - length;
    }

    return 1;
  }
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  if (*&self->flags)
  {
    memmove(characters, &self->contents.fat[range.location], 2 * range.length);
  }

  else
  {
    for (; range.length; --range.length)
    {
      *characters++ = *(self->contents.fat + range.location++);
    }
  }
}

- (const)cString
{
  v4 = *MEMORY[0x1E69E9840];
  if ((*&self->flags & 1) == 0)
  {
    return self->contents.thin;
  }

  v3.receiver = self;
  v3.super_class = NSCheapMutableString;
  return [(NSString *)&v3 cString];
}

- (const)lossyCString
{
  v4 = *MEMORY[0x1E69E9840];
  if ((*&self->flags & 1) == 0)
  {
    return self->contents.thin;
  }

  v3.receiver = self;
  v3.super_class = NSCheapMutableString;
  return [(NSString *)&v3 lossyCString];
}

- (unint64_t)cStringLength
{
  v4 = *MEMORY[0x1E69E9840];
  if ((*&self->flags & 1) == 0)
  {
    return self->numCharacters;
  }

  v3.receiver = self;
  v3.super_class = NSCheapMutableString;
  return [(NSString *)&v3 cStringLength];
}

@end