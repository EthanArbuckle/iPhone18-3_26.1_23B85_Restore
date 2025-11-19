@interface AppEventDetailPageView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (_TtC8AppStore9VideoView)accessibilityVideoView;
- (void)didTapShareButton:(id)a3;
- (void)layoutSubviews;
- (void)lockupTapGestureRecognized:(id)a3;
- (void)notifyMeButtonTapped:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)videoTapGestureRecognized:(id)a3;
@end

@implementation AppEventDetailPageView

- (void)layoutSubviews
{
  v2 = self;
  sub_100353B50();
}

- (void)didTapShareButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100354FAC(v4);
}

- (void)videoTapGestureRecognized:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1003552DC();

  sub_100007000(&v5);
}

- (void)notifyMeButtonTapped:(id)a3
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_notifyMeButtonPresenter))
  {
    v4 = a3;
    v5 = self;

    NotifyMeButtonPresenter.didTapButton(sender:)(v4);
  }
}

- (void)lockupTapGestureRecognized:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v5 = *(&v4->super.super.super.isa + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureActionBlock);
  if (v5)
  {

    v5(v6);
    sub_10001F63C(v5);

    sub_100007000(v6);
  }

  else
  {
    sub_100007000(v6);
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100356148(v6, v7);

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1003562A0(v6, v7);

  return v9;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10035679C(a3);
}

- (_TtC8AppStore9VideoView)accessibilityVideoView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

@end