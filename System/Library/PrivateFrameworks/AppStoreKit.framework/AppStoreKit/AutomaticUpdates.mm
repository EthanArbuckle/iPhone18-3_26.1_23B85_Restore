@interface AutomaticUpdates
- (void)applicationWillEnterForegroundWithNotification:(id)a3;
@end

@implementation AutomaticUpdates

- (void)applicationWillEnterForegroundWithNotification:(id)a3
{
  v3 = sub_1E1AEF55C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF50C();

  sub_1E1920550();

  (*(v4 + 8))(v6, v3);
}

@end