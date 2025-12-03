@interface TextStackView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC16MusicApplication13TextStackView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TextStackView

- (void)layoutSubviews
{
  selfCopy = self;
  TextStackView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  traitCollection = [(TextStackView *)selfCopy traitCollection];
  [traitCollection displayScale];
  v8 = v7;

  if (height <= 5.99231045e307)
  {
    v9 = height;
  }

  else
  {
    v9 = 5.99231045e307;
  }

  sub_2E94A4(v12, 0.0, 0.0, width, v9, v8);
  sub_3F250(v12);

  v10 = v12[3];
  v11 = v12[4];
  result.height = *&v11;
  result.width = *&v10;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  TextStackView.traitCollectionDidChange(_:)(v9);
}

- (_TtC16MusicApplication13TextStackView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_2F53C8(coderCopy);

  return v4;
}

@end