@interface RevealingVideoView
- (void)layoutSubviews;
- (void)willMoveToWindow:(id)a3;
@end

@implementation RevealingVideoView

- (void)willMoveToWindow:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100569AF0(a3);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RevealingVideoView();
  v2 = v3.receiver;
  [(RevealingVideoView *)&v3 layoutSubviews];
  sub_100569CD4();
  sub_10056A1AC();
}

@end