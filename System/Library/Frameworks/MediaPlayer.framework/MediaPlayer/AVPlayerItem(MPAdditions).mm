@interface AVPlayerItem(MPAdditions)
- (void)setNowPlayingInfo:()MPAdditions;
@end

@implementation AVPlayerItem(MPAdditions)

- (void)setNowPlayingInfo:()MPAdditions
{
  objc_setAssociatedObject(a1, sel_nowPlayingInfo, a3, 1);
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"MPPlayerItemNowPlayingInfoDidChangeNotification" object:a1];
}

@end