@interface RCSiriTipContainerView
- (_TtP10VoiceMemos21RCSiriTipViewDelegate_)delegate;
- (double)preferredHeight;
@end

@implementation RCSiriTipContainerView

- (_TtP10VoiceMemos21RCSiriTipViewDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (double)preferredHeight
{
  v2 = self;
  [(RCSiriTipContainerView *)v2 layoutMargins];
  [(RCSiriTipContainerView *)v2 layoutMargins];
  [(RCSiriTipContainerView *)v2 bounds];
  CGRectGetWidth(v9);
  v3 = *(v2 + OBJC_IVAR____TtC10VoiceMemos22RCSiriTipContainerView_siriTipView);
  DebugData.init(name:)(v4);
  v5 = v3;
  SiriTipUIView.sizeThatFits(_:)();
  v7 = v6;

  return v7 + 2.0 + 12.0;
}

@end