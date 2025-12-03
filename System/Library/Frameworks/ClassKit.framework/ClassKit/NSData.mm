@interface NSData
- (int64_t)compare:(id)compare;
@end

@implementation NSData

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[NSData(PDDatabaseValue) compare:]", "PDDatabaseValue.m", 23, "[other isKindOfClass:[NSData class]]");
  }

  v5 = compareCopy;
  bytes = [(NSData *)self bytes];
  bytes2 = [v5 bytes];
  v8 = [(NSData *)self length];
  v9 = [v5 length];
  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = memcmp(bytes, bytes2, v10);
  if ((v11 & 0x80000000) == 0)
  {
    if (v11)
    {
      v12 = 1;
      goto LABEL_11;
    }

    v13 = [(NSData *)self length];
    if (v13 >= [v5 length])
    {
      v14 = [(NSData *)self length];
      v12 = v14 > [v5 length];
      goto LABEL_11;
    }
  }

  v12 = -1;
LABEL_11:

  return v12;
}

@end