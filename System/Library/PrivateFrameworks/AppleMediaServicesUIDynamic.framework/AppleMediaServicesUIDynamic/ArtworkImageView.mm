@interface ArtworkImageView
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ArtworkImageView

- (void)layoutSubviews
{
  v2 = self;
  ArtworkImageView.layoutSubviews()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  ArtworkImageView.traitCollectionDidChange(_:)(v9);
}

@end