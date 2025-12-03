@interface AppPromotionView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension16AppPromotionView)initWithCoder:(id)coder;
- (void)dealloc;
- (void)layoutSubviews;
- (void)stateChangedFor:(id)for;
@end

@implementation AppPromotionView

- (_TtC22SubscribePageExtension16AppPromotionView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_clickAction;
  v5 = sub_10000C518(&unk_100933080);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = self + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_initialLongPressLocation;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_longPressGestureRecognizer);
  selfCopy = self;
  [v4 removeTarget:selfCopy action:0];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(AppPromotionView *)&v6 dealloc];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1003123E8();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = type metadata accessor for AppPromotionCardLayout(0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = qword_100920180;
  selfCopy = self;
  if (v9 != -1)
  {
    swift_once();
  }

  sub_1006D51C0(&unk_10097D3C0, selfCopy, width, height);
  v12 = v11;
  v13 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView);
  sub_1005CE228(v8);
  v14 = sub_1005CEE20(v13, v8);
  v16 = v15;
  sub_10019A6C0(v8);

  v17 = v12 + v16;
  v18 = v14;
  result.height = v17;
  result.width = v18;
  return result;
}

- (void)stateChangedFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_100312790(forCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_1003131D8(recognizerCopy, touchCopy);

  return v9 & 1;
}

@end