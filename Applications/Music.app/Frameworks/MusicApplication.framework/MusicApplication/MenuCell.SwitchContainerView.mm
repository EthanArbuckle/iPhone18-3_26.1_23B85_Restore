@interface MenuCell.SwitchContainerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView)initWithCoder:(id)coder;
- (_TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation MenuCell.SwitchContainerView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  selfCopy = self;
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
  selfCopy = self;
  sub_4EDE0C();
}

- (_TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView____lazy_storage___switchButton) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView_isTopAligned) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MenuCell.SwitchContainerView();
  return [(MenuCell.SwitchContainerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView____lazy_storage___switchButton) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView_isTopAligned) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MenuCell.SwitchContainerView();
  coderCopy = coder;
  v5 = [(MenuCell.SwitchContainerView *)&v7 initWithCoder:coderCopy];

  return v5;
}

@end