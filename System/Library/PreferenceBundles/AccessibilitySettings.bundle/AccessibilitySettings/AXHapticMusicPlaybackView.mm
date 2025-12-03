@interface AXHapticMusicPlaybackView
- (void)didMoveToWindow;
- (void)setLabelText:(id)text;
@end

@implementation AXHapticMusicPlaybackView

- (void)didMoveToWindow
{
  v4 = +[UIColor clearColor];
  contentView = [(AXHapticMusicPlaybackView *)self contentView];
  [contentView setBackgroundColor:v4];
}

- (void)setLabelText:(id)text
{
  textCopy = text;
  titleLabel = [(AXHapticMusicPlaybackView *)self titleLabel];
  [titleLabel setText:textCopy];
}

@end