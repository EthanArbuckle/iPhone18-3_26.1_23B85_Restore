@interface SyncedLyricsLineView
- (BOOL)isHighlighted;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC7LyricsX20SyncedLyricsLineView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected animator:(id)animator;
@end

@implementation SyncedLyricsLineView

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SyncedLyricsLineView();
  return [(SyncedLyricsLineView *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5 = type metadata accessor for SyncedLyricsLineView();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isHighlighted = [(SyncedLyricsLineView *)&v9 isHighlighted];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(SyncedLyricsLineView *)&v8 setHighlighted:highlightedCopy];
  SyncedLyricsLineView.isHighlighted.didset(isHighlighted);
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SyncedLyricsLineView();
  v2 = v4.receiver;
  [(SyncedLyricsLineView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  if (v3)
  {
    height = fits.height;
    width = fits.width;
    v7 = *&self->specs[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    ObjectType = swift_getObjectType();
    selfCopy = self;
    v10 = v3;
    v11 = (*(v7 + 96))([(SyncedLyricsLineView *)selfCopy isSelected], ObjectType, v7, width, height);
    v13 = v12;
  }

  else
  {
    v11 = 0.0;
    v13 = 0.0;
  }

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)setSelected:(BOOL)selected animator:(id)animator
{
  animatorCopy = animator;
  selfCopy = self;
  v11.is_nil = selfCopy;
  v9 = selfCopy;
  v11.value.super.isa = animator;
  SyncedLyricsLineView.setSelected(_:animator:)(selected, v11);
}

- (_TtC7LyricsX20SyncedLyricsLineView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end