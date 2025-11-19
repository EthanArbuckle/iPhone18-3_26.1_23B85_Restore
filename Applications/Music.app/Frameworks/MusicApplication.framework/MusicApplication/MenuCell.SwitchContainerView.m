@interface MenuCell.SwitchContainerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView)initWithCoder:(id)a3;
- (_TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation MenuCell.SwitchContainerView

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  v4 = self;
  v5 = sub_4EDD18();
  [v5 intrinsicContentSize];
  v7 = v6;
  v9 = v8;

  if (height > v9)
  {
    v10 = height;
  }

  else
  {
    v10 = v9;
  }

  v11 = v7;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_4EDE0C();
}

- (_TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView____lazy_storage___switchButton) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView_isTopAligned) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MenuCell.SwitchContainerView();
  return [(MenuCell.SwitchContainerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView____lazy_storage___switchButton) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView_isTopAligned) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MenuCell.SwitchContainerView();
  v4 = a3;
  v5 = [(MenuCell.SwitchContainerView *)&v7 initWithCoder:v4];

  return v5;
}

@end