@interface Library.PinsCollectionViewCell
- (BOOL)isHighlighted;
- (_TtCE5MusicO9MusicCore7Library22PinsCollectionViewCell)initWithCoder:(id)coder;
- (_TtCE5MusicO9MusicCore7Library22PinsCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)dragStateDidChange:(int64_t)change;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation Library.PinsCollectionViewCell

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(Library.PinsCollectionViewCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  ObjectType = swift_getObjectType();
  v11.receiver = self;
  v11.super_class = ObjectType;
  selfCopy = self;
  if ([(Library.PinsCollectionViewCell *)&v11 isHighlighted]!= highlightedCopy)
  {
    contentView = [(Library.PinsCollectionViewCell *)selfCopy contentView];
    v8 = contentView;
    v9 = 0.35;
    if (!highlightedCopy)
    {
      v9 = 1.0;
    }

    [contentView setAlpha:v9];
  }

  v10.receiver = selfCopy;
  v10.super_class = ObjectType;
  [(Library.PinsCollectionViewCell *)&v10 setHighlighted:highlightedCopy];
}

- (void)dragStateDidChange:(int64_t)change
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(Library.PinsCollectionViewCell *)&v5 dragStateDidChange:change];
  [v4 setNeedsUpdateConfiguration];
}

- (_TtCE5MusicO9MusicCore7Library22PinsCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCE5MusicO9MusicCore7Library22PinsCollectionViewCell_shouldAnimateJiggle) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(Library.PinsCollectionViewCell *)&v10 initWithFrame:x, y, width, height];
}

- (_TtCE5MusicO9MusicCore7Library22PinsCollectionViewCell)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCE5MusicO9MusicCore7Library22PinsCollectionViewCell_shouldAnimateJiggle) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(Library.PinsCollectionViewCell *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end