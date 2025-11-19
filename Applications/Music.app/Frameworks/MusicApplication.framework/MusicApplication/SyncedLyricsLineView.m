@interface SyncedLyricsLineView
- (BOOL)isHighlighted;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC7LyricsX20SyncedLyricsLineView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3 animator:(id)a4;
@end

@implementation SyncedLyricsLineView

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SyncedLyricsLineView();
  return [(SyncedLyricsLineView *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for SyncedLyricsLineView();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(SyncedLyricsLineView *)&v9 isHighlighted];
  v8.receiver = v6;
  v8.super_class = v5;
  [(SyncedLyricsLineView *)&v8 setHighlighted:v3];
  sub_96BA1C(v7);
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  if (v3)
  {
    height = a3.height;
    width = a3.width;
    v7 = *&self->specs[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    ObjectType = swift_getObjectType();
    v9 = self;
    v10 = v3;
    v11 = (*(v7 + 96))([(SyncedLyricsLineView *)v9 isSelected], ObjectType, v7, width, height);
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

- (void)setSelected:(BOOL)a3 animator:(id)a4
{
  v7 = a4;
  v8 = self;
  sub_96C220(a3, a4);
}

- (_TtC7LyricsX20SyncedLyricsLineView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end