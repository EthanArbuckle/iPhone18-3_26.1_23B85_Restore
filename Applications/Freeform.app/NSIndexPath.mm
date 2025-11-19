@interface NSIndexPath
- (id)crl_indexPathByPrependingIndex:(unint64_t)a3;
@end

@implementation NSIndexPath

- (id)crl_indexPathByPrependingIndex:(unint64_t)a3
{
  v5 = [(NSIndexPath *)self length];
  v6 = malloc_type_malloc(8 * (v5 + 1), 0x100004000313F17uLL);
  if (!v6)
  {
    v10 = [NSException exceptionWithName:NSMallocException reason:@"Failed to allocate indexBuffer." userInfo:0];
    objc_exception_throw(v10);
  }

  v7 = v6;
  [(NSIndexPath *)self getIndexes:v6 + 1 range:0, v5];
  *v7 = a3;
  v8 = [NSIndexPath indexPathWithIndexes:v7 length:v5 + 1];
  free(v7);

  return v8;
}

@end