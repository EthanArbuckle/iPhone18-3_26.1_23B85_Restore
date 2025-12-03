@interface HeaderButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC23ShelfKitCollectionViews12HeaderButton)init;
- (_TtC23ShelfKitCollectionViews12HeaderButton)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews12HeaderButton)initWithFrame:(CGRect)frame;
- (void)tintColorDidChange;
@end

@implementation HeaderButton

- (_TtC23ShelfKitCollectionViews12HeaderButton)init
{
  swift_getObjectType();
  if (qword_3FAD68 != -1)
  {
    swift_once();
  }

  v7[2] = xmmword_42A210;
  v7[3] = *&qword_42A220;
  v8[0] = xmmword_42A230;
  *(v8 + 10) = *(&xmmword_42A230 + 10);
  v7[0] = xmmword_42A1F0;
  v7[1] = unk_42A200;
  v5[2] = xmmword_42A210;
  v5[3] = *&qword_42A220;
  v6[0] = xmmword_42A230;
  *(v6 + 10) = *(&xmmword_42A230 + 10);
  v5[0] = xmmword_42A1F0;
  v5[1] = unk_42A200;
  sub_8FC54(v7, &v4);
  v2 = sub_2353F0(v5);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for HeaderButton();
  v2 = v4.receiver;
  [(HeaderButton *)&v4 tintColorDidChange];
  tintColor = [v2 tintColor];
  [v2 setTitleColor:tintColor forState:0];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v6 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews12HeaderButton_touchOutsideMargin);
  v7 = *&self->super.fontUseCase[OBJC_IVAR____TtC23ShelfKitCollectionViews12HeaderButton_touchOutsideMargin];
  v8 = *&self->super.fontUseCase[OBJC_IVAR____TtC23ShelfKitCollectionViews12HeaderButton_touchOutsideMargin + 8];
  v9 = *&self->super.fontUseCase[OBJC_IVAR____TtC23ShelfKitCollectionViews12HeaderButton_touchOutsideMargin + 16];
  selfCopy = self;
  [(HeaderButton *)selfCopy bounds];
  v18.origin.x = v11 - v7;
  v18.origin.y = v12 - v6;
  v18.size.width = v7 + v9 + v13;
  v18.size.height = v6 + v8 + v14;
  v17.x = x;
  v17.y = y;
  v15 = CGRectContainsPoint(v18, v17);

  return v15;
}

- (_TtC23ShelfKitCollectionViews12HeaderButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = *&UIEdgeInsetsZero.bottom;
  v8 = (self + OBJC_IVAR____TtC23ShelfKitCollectionViews12HeaderButton_touchOutsideMargin);
  *v8 = *&UIEdgeInsetsZero.top;
  v8[1] = v7;
  v10.receiver = self;
  v10.super_class = type metadata accessor for HeaderButton();
  return [(DynamicTypeButton *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews12HeaderButton)initWithCoder:(id)coder
{
  v4 = (self + OBJC_IVAR____TtC23ShelfKitCollectionViews12HeaderButton_touchOutsideMargin);
  v5 = *&UIEdgeInsetsZero.bottom;
  *v4 = *&UIEdgeInsetsZero.top;
  v4[1] = v5;
  v9.receiver = self;
  v9.super_class = type metadata accessor for HeaderButton();
  coderCopy = coder;
  v7 = [(DynamicTypeButton *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end