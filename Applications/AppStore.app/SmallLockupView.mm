@interface SmallLockupView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)lockupTapGestureRecognized;
@end

@implementation SmallLockupView

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = type metadata accessor for SmallLockupLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = self;

  sub_100709E58(v9);
  [(SmallLockupView *)v10 layoutMargins];
  v13 = sub_100508464(v9, v10, width, height, v11, v12);
  v15 = v14;

  (*(v7 + 8))(v9, v6);
  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = type metadata accessor for SmallLockupLayout.Metrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  sub_100709E58(v6);
  [(SmallLockupView *)v7 layoutMargins];
  v10 = sub_100508464(v6, v7, 0.0, 0.0, v8, v9);
  v12 = v11;
  (*(v4 + 8))(v6, v3, v10);

  v13 = UIViewNoIntrinsicMetric;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SmallLockupView();
  v2 = v5.receiver;
  [(SmallLockupView *)&v5 layoutSubviews];
  sub_10070A300(v4);
  sub_10002A400(v4, v4[3]);
  LayoutMarginsAware<>.layoutFrame.getter();
  v3 = [v2 traitCollection];
  dispatch thunk of Placeable.place(at:with:)();

  sub_100007000(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10070AD88(v6, v7);

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v7 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapGestureRecognizer);
  if (!v7)
  {
    v14 = a3;
    v15 = a4;
    v16 = self;
    goto LABEL_5;
  }

  sub_100005744(0, &unk_100993110);
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = v7;
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
LABEL_5:
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass() == 0;
    goto LABEL_6;
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (void)lockupTapGestureRecognized
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapBlock);
  if (v2)
  {
    v3 = self;
    v4 = sub_10000827C(v2);
    v2(v4);

    sub_10001F63C(v2);
  }
}

@end