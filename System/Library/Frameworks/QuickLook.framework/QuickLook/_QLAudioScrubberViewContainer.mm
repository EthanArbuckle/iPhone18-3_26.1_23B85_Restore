@interface _QLAudioScrubberViewContainer
- (CGSize)intrinsicContentSize;
- (_QLAudioScrubberViewContainer)init;
@end

@implementation _QLAudioScrubberViewContainer

- (_QLAudioScrubberViewContainer)init
{
  v5.receiver = self;
  v5.super_class = _QLAudioScrubberViewContainer;
  v2 = [(_QLAudioScrubberViewContainer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_QLAudioScrubberViewContainer *)v2 setAccessibilityIdentifier:@"QLAudioScrubberViewContainerAccessibilityIdentifier"];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  superview = [(_QLAudioScrubberViewContainer *)self superview];
  [superview frame];
  Width = CGRectGetWidth(v7);

  v4 = 40.0;
  v5 = Width;
  result.height = v4;
  result.width = v5;
  return result;
}

@end