@interface MusicVideoVerticalLockupCollectionViewCell
- (_TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell)initWithCoder:(id)coder;
- (_TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation MusicVideoVerticalLockupCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_28FDFC();
}

- (_TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_duration;
  *v8 = 0;
  v8[8] = 1;
  v9 = OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_textComponents;
  *(&self->super.super.super.super.super.super.isa + v9) = sub_25F6C0();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_durationTextStackView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_gradientView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell_isGradientViewHidden) = 1;
  v11.receiver = self;
  v11.super_class = type metadata accessor for MusicVideoVerticalLockupCollectionViewCell();
  return [(VerticalLockupCollectionViewCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_2906C0(coderCopy);

  return v4;
}

@end