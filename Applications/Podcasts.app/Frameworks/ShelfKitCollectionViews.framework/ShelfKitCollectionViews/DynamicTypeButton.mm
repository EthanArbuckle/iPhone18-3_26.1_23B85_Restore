@interface DynamicTypeButton
- (_TtC23ShelfKitCollectionViews17DynamicTypeButton)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews17DynamicTypeButton)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DynamicTypeButton

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_235634(change);
}

- (_TtC23ShelfKitCollectionViews17DynamicTypeButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 10) = 0;
  *(v7 + 44) = -256;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DynamicTypeButton();
  return [(DynamicTypeButton *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews17DynamicTypeButton)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews17DynamicTypeButton_fontUseCase;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 44) = -256;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DynamicTypeButton();
  coderCopy = coder;
  v6 = [(DynamicTypeButton *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end