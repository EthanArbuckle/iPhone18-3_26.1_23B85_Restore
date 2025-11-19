@interface Library.PinsCollectionViewCell
- (BOOL)isHighlighted;
- (_TtCE5MusicO9MusicCore7Library22PinsCollectionViewCell)initWithCoder:(id)a3;
- (_TtCE5MusicO9MusicCore7Library22PinsCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)dragStateDidChange:(int64_t)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation Library.PinsCollectionViewCell

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(Library.PinsCollectionViewCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v11.receiver = self;
  v11.super_class = ObjectType;
  v6 = self;
  if ([(Library.PinsCollectionViewCell *)&v11 isHighlighted]!= v3)
  {
    v7 = [(Library.PinsCollectionViewCell *)v6 contentView];
    v8 = v7;
    v9 = 0.35;
    if (!v3)
    {
      v9 = 1.0;
    }

    [v7 setAlpha:v9];
  }

  v10.receiver = v6;
  v10.super_class = ObjectType;
  [(Library.PinsCollectionViewCell *)&v10 setHighlighted:v3];
}

- (void)dragStateDidChange:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(Library.PinsCollectionViewCell *)&v5 dragStateDidChange:a3];
  [v4 setNeedsUpdateConfiguration];
}

- (_TtCE5MusicO9MusicCore7Library22PinsCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCE5MusicO9MusicCore7Library22PinsCollectionViewCell_shouldAnimateJiggle) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(Library.PinsCollectionViewCell *)&v10 initWithFrame:x, y, width, height];
}

- (_TtCE5MusicO9MusicCore7Library22PinsCollectionViewCell)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCE5MusicO9MusicCore7Library22PinsCollectionViewCell_shouldAnimateJiggle) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(Library.PinsCollectionViewCell *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end