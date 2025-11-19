@interface MusicVideoVerticalLockupCollectionViewCell
- (_TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell)initWithCoder:(id)a3;
- (_TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation MusicVideoVerticalLockupCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_28FDFC();
}

- (_TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (_TtC16MusicApplication42MusicVideoVerticalLockupCollectionViewCell)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_2906C0(v3);

  return v4;
}

@end