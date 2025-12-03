@interface NSDictionary
- (BOOL)crl_enumerateBoardItemNestedRecursivelyUsingBlock:(id)block;
@end

@implementation NSDictionary

- (BOOL)crl_enumerateBoardItemNestedRecursivelyUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy[2](blockCopy, self))
  {
    v5 = 1;
  }

  else
  {
    v6 = [(NSDictionary *)self objectForKeyedSubscript:@"groupChildren"];
    v5 = [v6 crl_enumerateAllBoardItemsNestedRecursivelyUsingBlock:blockCopy];
  }

  return v5;
}

@end