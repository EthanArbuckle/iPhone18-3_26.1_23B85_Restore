@interface AppPromotionView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC18ASMessagesProvider16AppPromotionView)initWithCoder:(id)coder;
- (void)dealloc;
- (void)layoutSubviews;
- (void)stateChangedFor:(id)for;
@end

@implementation AppPromotionView

- (_TtC18ASMessagesProvider16AppPromotionView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_clickAction;
  v5 = sub_BD88(&unk_950960);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = self + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_initialLongPressLocation;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_longPressGestureRecognizer);
  selfCopy = self;
  [v4 removeTarget:selfCopy action:0];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(AppPromotionView *)&v6 dealloc];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_633524();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = type metadata accessor for AppPromotionCardLayout(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = qword_93C808;
  selfCopy = self;
  if (v7 != -1)
  {
    swift_once();
  }

  sub_634BBC(&unk_99BE98, selfCopy);
  v10 = v9;
  v11 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView);
  sub_214AA8(v6);
  v12 = sub_634F2C(v11, v6);
  v14 = v13;
  sub_216E5C(v6);

  v15 = v10 + v14;
  v16 = v12;
  result.height = v15;
  result.width = v16;
  return result;
}

- (void)stateChangedFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_6338CC(forCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_634324(recognizerCopy, touchCopy);

  return v9 & 1;
}

@end