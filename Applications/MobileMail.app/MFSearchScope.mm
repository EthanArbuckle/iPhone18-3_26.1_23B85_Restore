@interface MFSearchScope
+ (id)keyFromScopeIndex:(int64_t)index;
@end

@implementation MFSearchScope

+ (id)keyFromScopeIndex:(int64_t)index
{
  if (index == 1)
  {
    return @"currentMailbox";
  }

  else
  {
    return @"allMailboxes";
  }
}

@end