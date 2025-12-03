@interface AVPlayerViewController(DeprecationsAndToBeRemoved)
- (void)setDefaultPlaybackRate:()DeprecationsAndToBeRemoved;
@end

@implementation AVPlayerViewController(DeprecationsAndToBeRemoved)

- (void)setDefaultPlaybackRate:()DeprecationsAndToBeRemoved
{
  playerController = [(AVPlayerViewController *)self playerController];
  [playerController setDefaultPlaybackRate:a3];
}

@end