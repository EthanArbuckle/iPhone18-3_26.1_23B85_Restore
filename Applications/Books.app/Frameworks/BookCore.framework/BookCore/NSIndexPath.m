@interface NSIndexPath
- (id)im_stringValue;
@end

@implementation NSIndexPath

- (id)im_stringValue
{
  v3 = malloc_type_malloc(8 * [(NSIndexPath *)self length], 0x100004000313F17uLL);
  [(NSIndexPath *)self getIndexes:v3];
  v4 = objc_alloc_init(NSMutableArray);
  if ([(NSIndexPath *)self length])
  {
    v5 = 0;
    do
    {
      v6 = [NSString stringWithFormat:@"%lu", v3[v5]];
      [v4 addObject:v6];

      ++v5;
    }

    while (v5 < [(NSIndexPath *)self length]);
  }

  v7 = [v4 componentsJoinedByString:@"/"];
  free(v3);

  return v7;
}

@end