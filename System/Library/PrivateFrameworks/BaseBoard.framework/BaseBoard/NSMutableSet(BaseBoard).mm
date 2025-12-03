@interface NSMutableSet(BaseBoard)
- (void)bs_safeAddObject:()BaseBoard;
@end

@implementation NSMutableSet(BaseBoard)

- (void)bs_safeAddObject:()BaseBoard
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

@end