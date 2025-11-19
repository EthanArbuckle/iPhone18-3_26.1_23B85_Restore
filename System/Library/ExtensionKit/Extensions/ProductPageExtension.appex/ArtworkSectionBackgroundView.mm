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
  sub_100770A3C();
  sub_10075FC8C();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ArtworkSectionBackgroundView();
  v2 = v3.receiver;
  [(ArtworkSectionBackgroundView *)&v3 prepareForReuse];
  sub_10075FCAC();
}

@end