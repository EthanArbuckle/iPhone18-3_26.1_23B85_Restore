@interface ArtworkImageView
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ArtworkImageView

- (void)layoutSubviews
{
  selfCopy = self;
  ArtworkImageView.layoutSubviews()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  ArtworkImageView.traitCollectionDidChange(_:)(v9);
}

@end