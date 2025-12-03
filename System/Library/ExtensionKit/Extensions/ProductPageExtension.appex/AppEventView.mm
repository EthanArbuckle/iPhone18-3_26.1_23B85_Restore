@interface AppEventView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC20ProductPageExtension12AppEventView)initWithCoder:(id)coder;
- (void)dealloc;
- (void)layoutSubviews;
- (void)stateChangedFor:(id)for;
@end

@implementation AppEventView

- (_TtC20ProductPageExtension12AppEventView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_clickAction;
  v5 = sub_10000A5D4(&qword_100955BD0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = self + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_initialLongPressLocation;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_longPressGestureRecognizer);
  selfCopy = self;
  [v4 removeTarget:selfCopy action:0];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(AppEventView *)&v6 dealloc];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100240CE8();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_100940640;
  selfCopy = self;
  if (v7 != -1)
  {
    swift_once();
  }

  sub_1002423E4(&unk_10099FD58, selfCopy);
  v10 = v9;
  v11 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView);
  sub_100159754(v6);
  sub_100242754(v11, v6);
  v13 = v12;
  v15 = v14;
  sub_10001D3B8(v6);

  v16 = v10 + v15;
  v17 = v13;
  result.height = v16;
  result.width = v17;
  return result;
}

- (void)stateChangedFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_100241090(forCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_100241AE8(recognizerCopy, touchCopy);

  return v9 & 1;
}

@end