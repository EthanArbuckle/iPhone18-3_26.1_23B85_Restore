@interface NSMutableArray
- (void)addLines:(id)a3;
@end

@implementation NSMutableArray

- (void)addLines:(id)a3
{
  v7 = [a3 componentsSeparatedByString:@"\n"];
  v4 = [v7 valueForKey:@"stringByTrimming"];
  v5 = [NSPredicate predicateWithFormat:@"SELF != ''"];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  if ([v6 count])
  {
    [(NSMutableArray *)self addObjectsFromArray:v6];
  }
}

@end