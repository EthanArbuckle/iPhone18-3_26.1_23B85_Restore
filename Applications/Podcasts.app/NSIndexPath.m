@interface NSIndexPath
- (id)indexPathByChangingSection:(int64_t)a3;
- (unint64_t)lastIndex;
@end

@implementation NSIndexPath

- (id)indexPathByChangingSection:(int64_t)a3
{
  v5 = [(NSIndexPath *)self row];
  v6 = [(NSIndexPath *)self section]+ a3;

  return [NSIndexPath indexPathForRow:v5 inSection:v6];
}

- (unint64_t)lastIndex
{
  if (![(NSIndexPath *)self length])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = [(NSIndexPath *)self length]- 1;

  return [(NSIndexPath *)self indexAtPosition:v3];
}

@end