@interface NSNullFileHandle
- (BOOL)getOffset:(unint64_t *)offset error:(id *)error;
- (BOOL)seekToEndReturningOffset:(unint64_t *)offset error:(id *)error;
@end

@implementation NSNullFileHandle

- (BOOL)getOffset:(unint64_t *)offset error:(id *)error
{
  if (offset)
  {
    *offset = 0;
  }

  return 1;
}

- (BOOL)seekToEndReturningOffset:(unint64_t *)offset error:(id *)error
{
  if (offset)
  {
    *offset = 0;
  }

  return 1;
}

@end