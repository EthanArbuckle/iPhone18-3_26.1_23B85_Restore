@interface VideoViewManager
- (void)videoDecodersUnavailable:(id)unavailable;
@end

@implementation VideoViewManager

- (void)videoDecodersUnavailable:(id)unavailable
{
  v3 = sub_1E1AEF55C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF50C();

  sub_1E17FA7A4();

  (*(v4 + 8))(v6, v3);
}

@end