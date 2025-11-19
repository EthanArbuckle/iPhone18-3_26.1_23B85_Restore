@interface NSNullFileHandle
- (BOOL)getOffset:(unint64_t *)a3 error:(id *)a4;
- (BOOL)seekToEndReturningOffset:(unint64_t *)a3 error:(id *)a4;
@end

@implementation NSNullFileHandle

- (BOOL)getOffset:(unint64_t *)a3 error:(id *)a4
{
  if (a3)
  {
    *a3 = 0;
  }

  return 1;
}

- (BOOL)seekToEndReturningOffset:(unint64_t *)a3 error:(id *)a4
{
  if (a3)
  {
    *a3 = 0;
  }

  return 1;
}

@end