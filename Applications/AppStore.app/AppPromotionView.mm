@interface AppPromotionView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC8AppStore16AppPromotionView)initWithCoder:(id)coder;
- (void)dealloc;
- (void)layoutSubviews;
- (void)stateChangedFor:(id)for;
@end

@implementation AppPromotionView

- (_TtC8AppStore16AppPromotionView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStore16AppPromotionView_clickAction;
  v5 = sub_10002849C(&unk_10097B3D0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = self + OBJC_IVAR____TtC8AppStore16AppPromotionView_initialLongPressLocation;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore16AppPromotionView_longPressGestureRecognizer);
  selfCopy = self;
  [v4 removeTarget:selfCopy action:0];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(AppPromotionView *)&v6 dealloc];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10037E174();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = type metadata accessor for AppPromotionCardLayout(0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = qword_10096D5D8;
  selfCopy = self;
  if (v9 != -1)
  {
    swift_once();
  }

  sub_100772570(&unk_1009CEDC8, selfCopy, width, height);
  v12 = v11;
  v13 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView);
  sub_1006626A4(v8);
  v14 = sub_1006631E4(v13, v8);
  v16 = v15;
  sub_10010287C(v8);

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
  sub_10037E51C(forCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_10037EF64(recognizerCopy, touchCopy);

  return v9 & 1;
}

@end