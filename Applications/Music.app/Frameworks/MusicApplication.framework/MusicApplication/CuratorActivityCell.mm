@interface CuratorActivityCell
+ (UIEdgeInsets)visualContentInsets;
- (NSString)title;
- (_TtC16MusicApplication19CuratorActivityCell)initWithCoder:(id)coder;
- (void)setTitle:(id)title;
@end

@implementation CuratorActivityCell

- (_TtC16MusicApplication19CuratorActivityCell)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtC16MusicApplication19CuratorActivityCell_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = OBJC_IVAR____TtC16MusicApplication19CuratorActivityCell_textComponents;
  *(self + v4) = _s16MusicApplication19CuratorActivityCellC14textComponents33_92B4383430C9FCD6B56F80ACB14131BELLAC04TextG0AELLVvpfi_0();
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (NSString)title
{
  swift_beginAccess();

  v2 = sub_AB9260();

  return v2;
}

- (void)setTitle:(id)title
{
  v5 = sub_AB92A0();
  v7 = v6;
  v8 = (self + OBJC_IVAR____TtC16MusicApplication19CuratorActivityCell_title);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = v5;
  v8[1] = v7;
  titleCopy = title;
  selfCopy = self;
  sub_36FBEC(v9, v10);
}

+ (UIEdgeInsets)visualContentInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end