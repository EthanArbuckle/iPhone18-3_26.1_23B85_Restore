@interface AppEventDetailPageView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (_TtC18ASMessagesProvider9VideoView)accessibilityVideoView;
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
  sub_6D9E70();
}

- (void)didTapShareButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_6DB2CC(v4);
}

- (void)videoTapGestureRecognized:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_76A510();
  swift_unknownObjectRelease();
  sub_6DB5FC();

  sub_BEB8(&v5);
}

- (void)notifyMeButtonTapped:(id)a3
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButtonPresenter))
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
  sub_76A510();
  swift_unknownObjectRelease();
  v5 = *(&v4->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureActionBlock);
  if (v5)
  {

    v5(v6);
    sub_F704(v5);

    sub_BEB8(v6);
  }

  else
  {
    sub_BEB8(v6);
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_6DC3D4(v6, v7);

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_6DC52C(v6, v7);

  return v9;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_6DCA28(a3);
}

- (_TtC18ASMessagesProvider9VideoView)accessibilityVideoView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

@end