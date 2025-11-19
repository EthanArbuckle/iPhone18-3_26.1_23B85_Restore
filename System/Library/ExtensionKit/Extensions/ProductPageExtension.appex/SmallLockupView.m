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
  v4 = sub_100763ADC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;

  sub_100261350(v7);
  [(SmallLockupView *)v8 layoutMargins];
  v9 = sub_100262AD0(v7, v8);
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = sub_100763ADC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  sub_100261350(v6);
  [(SmallLockupView *)v7 layoutMargins];
  v8 = sub_100262AD0(v6, v7);
  v10 = v9;
  (*(v4 + 8))(v6, v3, v8);

  v11 = UIViewNoIntrinsicMetric;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SmallLockupView();
  v2 = v5.receiver;
  [(SmallLockupView *)&v5 layoutSubviews];
  sub_1002617F8(v4);
  sub_10000CF78(v4, v4[3]);
  sub_10076422C();
  v3 = [v2 traitCollection];
  sub_10076E0EC();

  sub_10000CD74(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100262280(v6, v7);

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v7 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapGestureRecognizer);
  if (!v7)
  {
    v14 = a3;
    v15 = a4;
    v16 = self;
    goto LABEL_5;
  }

  sub_100016F40(0, &unk_10094F000);
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = v7;
  v12 = sub_100770EEC();

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
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapBlock);
  if (v2)
  {
    v3 = self;
    v4 = sub_10001CE50(v2);
    v2(v4);

    sub_1000167E0(v2);
  }
}

@end