@interface AVPlayerItem(MPAdditions)
- (void)setNowPlayingInfo:()MPAdditions;
@end

@implementation AVPlayerItem(MPAdditions)

- (void)setNowPlayingInfo:()MPAdditions
{
  objc_setAssociatedObject(self, sel_nowPlayingInfo, a3, 1);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MPPlayerItemNowPlayingInfoDidChangeNotification" object:self];
}

@end