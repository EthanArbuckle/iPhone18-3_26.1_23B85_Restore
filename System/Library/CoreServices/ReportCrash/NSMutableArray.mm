@interface NSMutableArray
- (void)addLines:(id)lines;
@end

@implementation NSMutableArray

- (void)addLines:(id)lines
{
  v7 = [lines componentsSeparatedByString:@"\n"];
  v4 = [v7 valueForKey:@"stringByTrimming"];
  v5 = [NSPredicate predicateWithFormat:@"SELF != ''"];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  if ([v6 count])
  {
    [(NSMutableArray *)self addObjectsFromArray:v6];
  }
}

@end