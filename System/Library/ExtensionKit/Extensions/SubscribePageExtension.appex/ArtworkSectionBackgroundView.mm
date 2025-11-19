@interface ArtworkSectionBackgroundView
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ArtworkSectionBackgroundView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ArtworkSectionBackgroundView();
  v2 = v3.receiver;
  [(ArtworkSectionBackgroundView *)&v3 layoutSubviews];
  [v2 bounds];
  sub_100753B14();
  sub_100743324();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ArtworkSectionBackgroundView();
  v2 = v3.receiver;
  [(ArtworkSectionBackgroundView *)&v3 prepareForReuse];
  sub_100743344();
}

@end