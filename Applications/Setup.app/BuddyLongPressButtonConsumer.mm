@interface BuddyLongPressButtonConsumer
- (void)consumeLongPressForButtonKind:(int64_t)kind;
@end

@implementation BuddyLongPressButtonConsumer

- (void)consumeLongPressForButtonKind:(int64_t)kind
{
  menuHandler = [(BuddyButtonConsumer *)self menuHandler];

  if (menuHandler)
  {
    menuHandler2 = [(BuddyButtonConsumer *)self menuHandler];
    menuHandler2[2](menuHandler2);
  }
}

@end