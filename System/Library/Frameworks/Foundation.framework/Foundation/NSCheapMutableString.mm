@interface NSCheapMutableString
- (BOOL)getBytes:(void *)a3 maxLength:(unint64_t)a4 usedLength:(unint64_t *)a5 encoding:(unint64_t)a6 options:(unint64_t)a7 range:(_NSRange)a8 remainingRange:(_NSRange *)a9;
- (const)cString;
- (const)lossyCString;
- (unint64_t)cStringLength;
- (unint64_t)fastestEncoding;
- (unsigned)characterAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4;
- (void)setContentsNoCopy:(void *)a3 length:(unint64_t)a4 freeWhenDone:(BOOL)a5 isUnicode:(BOOL)a6;
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

- (void)setContentsNoCopy:(void *)a3 length:(unint64_t)a4 freeWhenDone:(BOOL)a5 isUnicode:(BOOL)a6
{
  v6 = a6;
  if ((*&self->flags & 2) != 0)
  {
    free(self->contents.fat);
  }

  self->contents.fat = a3;
  self->flags = (*&self->flags & 0xFFFFFFFE | v6);
  self->numCharacters = a4;
}

- (unsigned)characterAtIndex:(unint64_t)a3
{
  fat = self->contents.fat;
  if (*&self->flags)
  {
    return fat[a3];
  }

  else
  {
    return *(fat + a3);
  }
}

- (BOOL)getBytes:(void *)a3 maxLength:(unint64_t)a4 usedLength:(unint64_t *)a5 encoding:(unint64_t)a6 options:(unint64_t)a7 range:(_NSRange)a8 remainingRange:(_NSRange *)a9
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*&self->flags & 1) != 0 || +[NSString defaultCStringEncoding]!= a6)
  {
    v19.receiver = self;
    v19.super_class = NSCheapMutableString;
    return [(NSString *)&v19 getBytes:a3 maxLength:a4 usedLength:a5 encoding:a6 options:a7 range:a8.location remainingRange:a8.length, a9];
  }

  else
  {
    if (a8.length >= a4)
    {
      length = a4;
    }

    else
    {
      length = a8.length;
    }

    if (a3 && length)
    {
      location = a8.location;
      v17 = length;
      do
      {
        *a3 = *(self->contents.fat + location);
        a3 = a3 + 1;
        ++location;
        --v17;
      }

      while (v17);
    }

    if (a5)
    {
      *a5 = length;
    }

    if (a9)
    {
      a9->location = length + a8.location;
      a9->length = a8.length - length;
    }

    return 1;
  }
}

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
{
  if (*&self->flags)
  {
    memmove(a3, &self->contents.fat[a4.location], 2 * a4.length);
  }

  else
  {
    for (; a4.length; --a4.length)
    {
      *a3++ = *(self->contents.fat + a4.location++);
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