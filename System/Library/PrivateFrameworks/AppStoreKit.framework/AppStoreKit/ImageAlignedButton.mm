@interface ImageAlignedButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (CGRect)titleRectForContentRect:(CGRect)rect;
- (_TtC11AppStoreKit18ImageAlignedButton)initWithFrame:(CGRect)frame;
- (void)didTriggerPrimaryAction:(id)action;
@end

@implementation ImageAlignedButton

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  v3 = sub_1E176D5E0(self, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, a2, sub_1E176CFA0);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)rect
{
  v3 = sub_1E176D5E0(self, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, a2, sub_1E176D430);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v7 = (self + OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_touchOutsideMargin);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  selfCopy = self;
  [(ImageAlignedButton *)selfCopy bounds];
  v19.origin.x = v13 - v9;
  v19.origin.y = v14 - v8;
  v19.size.width = v9 + v11 + v15;
  v19.size.height = v8 + v10 + v16;
  v18.x = x;
  v18.y = y;
  LOBYTE(v7) = CGRectContainsPoint(v19, v18);

  return v7;
}

- (void)didTriggerPrimaryAction:(id)action
{
  v4 = self + OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_primaryActionHandler;
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 1);
    selfCopy = self;
    v8 = sub_1E1300E34(v5);
    v5(v8);

    sub_1E1361B18(v5, v6);
  }
}

- (_TtC11AppStoreKit18ImageAlignedButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_imageAlignment) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_imageWantsBaselineAlignment) = 0;
  v8 = (self + OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_touchOutsideMargin);
  v9 = *(MEMORY[0x1E69DDCE0] + 16);
  *v8 = *MEMORY[0x1E69DDCE0];
  v8[1] = v9;
  v10 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_primaryActionHandler);
  v11 = type metadata accessor for ImageAlignedButton();
  *v10 = 0;
  v10[1] = 0;
  v13.receiver = self;
  v13.super_class = v11;
  return [(ImageAlignedButton *)&v13 initWithFrame:x, y, width, height];
}

@end