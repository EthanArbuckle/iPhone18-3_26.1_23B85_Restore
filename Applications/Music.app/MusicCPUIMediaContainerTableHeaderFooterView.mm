@interface MusicCPUIMediaContainerTableHeaderFooterView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView)initWithCoder:(id)coder;
- (_TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView)initWithReuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)setArtworkCatalog:(id)catalog;
@end

@implementation MusicCPUIMediaContainerTableHeaderFooterView

- (void)setArtworkCatalog:(id)catalog
{
  v5 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  if (catalog)
  {
    catalogCopy = catalog;
    selfCopy = self;
    Artwork.init(_:)();
    v10 = type metadata accessor for Artwork();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for Artwork();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    selfCopy2 = self;
  }

  sub_100261718(v7);
}

- (_TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView)initWithReuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_100260A70(v3, v4);
}

- (_TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_playAction);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music44MusicCPUIMediaContainerTableHeaderFooterView_hostingView);
  selfCopy = self;
  v5 = v3;
  contentView = [(MusicCPUIMediaContainerTableHeaderFooterView *)selfCopy contentView];
  [contentView bounds];
  v8 = v7;

  [v5 sizeThatFits:{v8, 1.79769313e308}];
  v10 = v9;

  contentView2 = [(MusicCPUIMediaContainerTableHeaderFooterView *)selfCopy contentView];
  [contentView2 bounds];
  v13 = v12;

  v14 = v13;
  v15 = v10;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView();
  v2 = v3.receiver;
  [(MusicCPUIMediaContainerTableHeaderFooterView *)&v3 prepareForReuse];
  sub_100262788();
}

@end