@interface _NSCallStackArray
+ (id)arrayWithFrames:(void *)a3 count:(unint64_t)a4 symbols:(BOOL)a5;
- (id)descriptionWithLocale:(id)a3 indent:(unint64_t)a4;
- (id)objectAtIndex:(unint64_t)a3;
- (unint64_t)_descriptionWithBuffer:(char *)a3 size:(int64_t)a4;
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

+ (id)arrayWithFrames:(void *)a3 count:(unint64_t)a4 symbols:(BOOL)a5
{
  v8 = objc_opt_new();
  *(v8 + 24) = 2;
  *(v8 + 8) = a3;
  v9 = a4 - 2;
  if (a4 < 2)
  {
    v9 = 0;
  }

  *(v8 + 16) = v9;
  *(v8 + 32) = 0;
  *(v8 + 40) = a5;

  return v8;
}

- (id)objectAtIndex:(unint64_t)a3
{
  cnt = self->_cnt;
  if (cnt <= a3)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: index (%ld) beyond bounds (%ld)", _NSMethodExceptionProem(self, a2), a3, self->_cnt), 0}];
    objc_exception_throw(v11);
  }

  if (self->_wantSyms && ((pcstrs = self->_pcstrs) != 0 || (pcstrs = backtrace_symbols(&self->_frames[self->_ignore], cnt), self->_pcstrs = pcstrs, self->_wantSyms) && pcstrs))
  {
    v8 = pcstrs[a3];

    return [NSString stringWithUTF8String:v8];
  }

  else
  {
    v10 = *(&self->_frames[self->_ignore] + a3);

    return [NSNumber numberWithUnsignedInteger:v10];
  }
}

- (id)descriptionWithLocale:(id)a3 indent:(unint64_t)a4
{
  v5 = [(NSString *)NSMutableString string:a3];
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

- (unint64_t)_descriptionWithBuffer:(char *)a3 size:(int64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  if (a4 <= 0)
  {
    __break(1u);
  }

  *a3 = 0;
  if (self->_wantSyms && (self->_pcstrs || (self->_pcstrs = backtrace_symbols(&self->_frames[self->_ignore], self->_cnt), self->_wantSyms)))
  {
    v7 = "(\n";
  }

  else
  {
    v7 = "(";
  }

  strlcat(a3, v7, a4);
  cnt = self->_cnt;
  if (cnt)
  {
    v9 = 0;
    do
    {
      if (self->_wantSyms && (pcstrs = self->_pcstrs) != 0)
      {
        snprintf(__str, 0x100uLL, "\t%s\n", pcstrs[v9]);
        strlcat(a3, __str, a4);
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
        strlcat(a3, __str, a4);
      }

      cnt = self->_cnt;
    }

    while (v9 < cnt);
  }

  strlcat(a3, ")", a4);
  return strlen(a3);
}

@end