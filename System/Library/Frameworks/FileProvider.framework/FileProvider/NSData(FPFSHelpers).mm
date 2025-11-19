@interface NSData(FPFSHelpers)
- (uint64_t)getFileIDFromXattr:()FPFSHelpers docID:genCount:;
@end

@implementation NSData(FPFSHelpers)

- (uint64_t)getFileIDFromXattr:()FPFSHelpers docID:genCount:
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v9 = [a1 length];
  v10 = [a1 bytes];
  v11 = memchr(v10, 58, v9);
  result = 0;
  if (!v10[v9 - 1] && v11)
  {
    if (a3)
    {
      *a3 = atoll(v10);
    }

    result = memchr((v11 + 1), 58, &v10[v9 + ~v11]);
    if (result)
    {
      v13 = result;
      if (a4)
      {
        *a4 = atol((v11 + 1));
      }

      if (a5)
      {
        *a5 = atoll((v13 + 1));
      }

      return 1;
    }
  }

  return result;
}

@end