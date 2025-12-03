@interface NSString(BaseBoard)
+ (id)bs_stringWithUTF8String:()BaseBoard;
- (uint64_t)_initWithUTF8String:()BaseBoard maxLength:;
@end

@implementation NSString(BaseBoard)

+ (id)bs_stringWithUTF8String:()BaseBoard
{
  if (__s)
  {
    v5 = strlen(__s);
    is_memory_immutable = _dyld_is_memory_immutable();
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (is_memory_immutable)
    {
      v8 = [v7 initWithBytesNoCopy:__s length:v5 encoding:4 freeWhenDone:0];
    }

    else
    {
      v8 = [v7 initWithBytes:__s length:v5 encoding:4];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)_initWithUTF8String:()BaseBoard maxLength:
{
  v7 = memchr(__s, 0, __n);
  if (v7)
  {
    v8 = v7 - __s;
  }

  else
  {
    v8 = __n;
  }

  return [self initWithBytes:__s length:v8 encoding:4];
}

@end