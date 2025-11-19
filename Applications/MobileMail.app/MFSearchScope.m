@interface MFSearchScope
+ (id)keyFromScopeIndex:(int64_t)a3;
@end

@implementation MFSearchScope

+ (id)keyFromScopeIndex:(int64_t)a3
{
  if (a3 == 1)
  {
    return @"currentMailbox";
  }

  else
  {
    return @"allMailboxes";
  }
}

@end