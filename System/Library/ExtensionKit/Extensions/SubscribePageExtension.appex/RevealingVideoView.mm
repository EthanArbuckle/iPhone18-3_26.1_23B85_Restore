@interface RevealingVideoView
- (void)layoutSubviews;
- (void)willMoveToWindow:(id)window;
@end

@implementation RevealingVideoView

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_10020E57C(window);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RevealingVideoView();
  v2 = v3.receiver;
  [(RevealingVideoView *)&v3 layoutSubviews];
  sub_10020E760();
  sub_10020EC38();
}

@end