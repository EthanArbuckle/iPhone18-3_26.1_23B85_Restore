@interface _NSCallStackArray
+ (id)arrayWithFrames:(void *)frames count:(unint64_t)count symbols:(BOOL)symbols;
- (id)descriptionWithLocale:(id)locale indent:(unint64_t)indent;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)_descriptionWithBuffer:(char *)buffer size:(int64_t)size;
- (void)dealloc;
@end

@implementation _NSCallStackArray

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  free(self->_frames);
  pcstrs = self->_pcstrs;
  if (pcstrs)
  {
    free(pcstrs);
  }

  v4.receiver = self;
  v4.super_class = _NSCallStackArray;
  [(_NSCallStackArray *)&v4 dealloc];
}

+ (id)arrayWithFrames:(void *)frames count:(unint64_t)count symbols:(BOOL)symbols
{
  v8 = objc_opt_new();
  *(v8 + 24) = 2;
  *(v8 + 8) = frames;
  v9 = count - 2;
  if (count < 2)
  {
    v9 = 0;
  }

  *(v8 + 16) = v9;
  *(v8 + 32) = 0;
  *(v8 + 40) = symbols;

  return v8;
}

- (id)objectAtIndex:(unint64_t)index
{
  cnt = self->_cnt;
  if (cnt <= index)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: index (%ld) beyond bounds (%ld)", _NSMethodExceptionProem(self, a2), index, self->_cnt), 0}];
    objc_exception_throw(v11);
  }

  if (self->_wantSyms && ((pcstrs = self->_pcstrs) != 0 || (pcstrs = backtrace_symbols(&self->_frames[self->_ignore], cnt), self->_pcstrs = pcstrs, self->_wantSyms) && pcstrs))
  {
    v8 = pcstrs[index];

    return [NSString stringWithUTF8String:v8];
  }

  else
  {
    v10 = *(&self->_frames[self->_ignore] + index);

    return [NSNumber numberWithUnsignedInteger:v10];
  }
}

- (id)descriptionWithLocale:(id)locale indent:(unint64_t)indent
{
  v5 = [(NSString *)NSMutableString string:locale];
  if (self->_wantSyms && (self->_pcstrs || (self->_pcstrs = backtrace_symbols(&self->_frames[self->_ignore], self->_cnt), self->_wantSyms)))
  {
    v6 = CFSTR("(\n");
  }

  else
  {
    v6 = CFSTR("(");
  }

  [(NSString *)v5 appendString:v6];
  cnt = self->_cnt;
  if (cnt)
  {
    v8 = 0;
    do
    {
      if (self->_wantSyms && (pcstrs = self->_pcstrs) != 0)
      {
        [(NSString *)v5 appendFormat:@"\t%s\n", pcstrs[v8++]];
      }

      else
      {
        v10 = *(&self->_frames[v8++] + self->_ignore);
        if (v8 >= cnt)
        {
          v11 = "";
        }

        else
        {
          v11 = " ";
        }

        [(NSString *)v5 appendFormat:@"%p%s", v10, v11];
      }

      cnt = self->_cnt;
    }

    while (v8 < cnt);
  }

  [(NSString *)v5 appendString:@""]);
  return v5;
}

- (unint64_t)_descriptionWithBuffer:(char *)buffer size:(int64_t)size
{
  v15 = *MEMORY[0x1E69E9840];
  if (size <= 0)
  {
    __break(1u);
  }

  *buffer = 0;
  if (self->_wantSyms && (self->_pcstrs || (self->_pcstrs = backtrace_symbols(&self->_frames[self->_ignore], self->_cnt), self->_wantSyms)))
  {
    v7 = "(\n";
  }

  else
  {
    v7 = "(";
  }

  strlcat(buffer, v7, size);
  cnt = self->_cnt;
  if (cnt)
  {
    v9 = 0;
    do
    {
      if (self->_wantSyms && (pcstrs = self->_pcstrs) != 0)
      {
        snprintf(__str, 0x100uLL, "\t%s\n", pcstrs[v9]);
        strlcat(buffer, __str, size);
        ++v9;
      }

      else
      {
        v11 = *(&self->_frames[v9++] + self->_ignore);
        if (v9 >= cnt)
        {
          v12 = "";
        }

        else
        {
          v12 = " ";
        }

        snprintf(__str, 0x100uLL, "%p%s", v11, v12);
        strlcat(buffer, __str, size);
      }

      cnt = self->_cnt;
    }

    while (v9 < cnt);
  }

  strlcat(buffer, ")", size);
  return strlen(buffer);
}

@end