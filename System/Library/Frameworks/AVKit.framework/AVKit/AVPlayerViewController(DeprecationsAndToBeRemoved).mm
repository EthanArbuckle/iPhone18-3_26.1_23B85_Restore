@interface AVPlayerViewController(DeprecationsAndToBeRemoved)
- (void)setDefaultPlaybackRate:()DeprecationsAndToBeRemoved;
@end

@implementation AVPlayerViewController(DeprecationsAndToBeRemoved)

- (void)setDefaultPlaybackRate:()DeprecationsAndToBeRemoved
{
  v4 = [(AVPlayerViewController *)self playerController];
  [v4 setDefaultPlaybackRate:a3];
}

@end