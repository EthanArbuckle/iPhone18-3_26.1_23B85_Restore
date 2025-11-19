@interface NSDictionary
- (BOOL)crl_enumerateBoardItemNestedRecursivelyUsingBlock:(id)a3;
@end

@implementation NSDictionary

- (BOOL)crl_enumerateBoardItemNestedRecursivelyUsingBlock:(id)a3
{
  v4 = a3;
  if (v4[2](v4, self))
  {
    v5 = 1;
  }

  else
  {
    v6 = [(NSDictionary *)self objectForKeyedSubscript:@"groupChildren"];
    v5 = [v6 crl_enumerateAllBoardItemsNestedRecursivelyUsingBlock:v4];
  }

  return v5;
}

@end