@interface TitleSubtitleView
- (_TtC5Heart17TitleSubtitleView)initWithCoder:(id)coder;
- (_TtC5Heart17TitleSubtitleView)initWithFrame:(CGRect)frame;
@end

@implementation TitleSubtitleView

- (_TtC5Heart17TitleSubtitleView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Heart17TitleSubtitleView____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Heart17TitleSubtitleView____lazy_storage___subtitleLabel) = 0;
  v8 = self + OBJC_IVAR____TtC5Heart17TitleSubtitleView_item;
  v9 = type metadata accessor for TitleSubtitleView();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v12.receiver = self;
  v12.super_class = v9;
  height = [(TitleSubtitleView *)&v12 initWithFrame:x, y, width, height];
  sub_29D806248();

  return height;
}

- (_TtC5Heart17TitleSubtitleView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Heart17TitleSubtitleView____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Heart17TitleSubtitleView____lazy_storage___subtitleLabel) = 0;
  v3 = self + OBJC_IVAR____TtC5Heart17TitleSubtitleView_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

@end