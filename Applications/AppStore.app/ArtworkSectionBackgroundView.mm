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
  CGRect.subtracting(insets:)();
  ArtworkView.frame.setter();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ArtworkSectionBackgroundView();
  v2 = v3.receiver;
  [(ArtworkSectionBackgroundView *)&v3 prepareForReuse];
  ArtworkView.image.setter();
}

@end