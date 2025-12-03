@interface BuddySinglePressUpButtonConsumer
- (void)consumeSinglePressUpForButtonKind:(int64_t)kind;
@end

@implementation BuddySinglePressUpButtonConsumer

- (void)consumeSinglePressUpForButtonKind:(int64_t)kind
{
  menuHandler = [(BuddyButtonConsumer *)self menuHandler];

  if (menuHandler)
  {
    menuHandler2 = [(BuddyButtonConsumer *)self menuHandler];
    menuHandler2[2](menuHandler2);
  }
}

@end