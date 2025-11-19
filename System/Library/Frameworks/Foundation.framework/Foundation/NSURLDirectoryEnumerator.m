@interface NSURLDirectoryEnumerator
- (NSURLDirectoryEnumerator)initWithURL:(id)a3 includingPropertiesForKeys:(id)a4 options:(unint64_t)a5 errorHandler:(id)a6;
- (id)nextObject;
- (void)dealloc;
@end

@implementation NSURLDirectoryEnumerator

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  enumerator = self->_enumerator;
  if (enumerator)
  {
    CFRelease(enumerator);
  }

  v4.receiver = self;
  v4.super_class = NSURLDirectoryEnumerator;
  [(NSURLDirectoryEnumerator *)&v4 dealloc];
}

- (id)nextObject
{
  v9[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v9[0] = 0;
  if (self->shouldContinue)
  {
    v3 = MEMORY[0x1865CECB0](self->_enumerator, v9, &cf);
    if ((v3 - 1) < 2)
    {
      self->isPostOrderDirectory = 0;
    }

    else if (v3 == 3)
    {
      self->isPostOrderDirectory = 0;
      if (self->_errorHandler)
      {
        v4 = [cf userInfo];
        if (![v4 objectForKey:@"NSURL"])
        {
          v5 = [v4 objectForKey:@"NSFilePath"];
          if (v5)
          {
            [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:1];
          }
        }

        v6 = (*(self->_errorHandler + 2))();
        self->shouldContinue = v6;
        if (v6)
        {
          v9[0] = [(NSURLDirectoryEnumerator *)self nextObject];
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    else if (v3 == 4)
    {
      self->isPostOrderDirectory = 1;
    }
  }

  return v9[0];
}

- (NSURLDirectoryEnumerator)initWithURL:(id)a3 includingPropertiesForKeys:(id)a4 options:(unint64_t)a5 errorHandler:(id)a6
{
  if (!a4 && !a5)
  {
    a4 = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E695EB68]];
  }

  v10 = (a5 & 1 | (8 * ((a5 >> 1) & 1)) | (a5 >> 1) & 2) ^ 1;
  if ((a5 & 8) != 0)
  {
    v10 |= 0x30uLL;
  }

  v11 = MEMORY[0x1865CEC90](*MEMORY[0x1E695E4A8], a3, a5 & 0x80000000 | (((a5 >> 4) & 1) << 6) | v10, a4);
  self->_enumerator = v11;
  if (v11)
  {
    if (a6)
    {
      v12 = a6;
    }

    else
    {
      v12 = &__block_literal_global_230;
    }

    [(NSURLDirectoryEnumerator *)self setErrorHandler:v12];
    self->shouldContinue = 1;
  }

  else
  {

    return 0;
  }

  return self;
}

@end