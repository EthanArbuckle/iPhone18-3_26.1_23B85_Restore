@interface DeprecatedText.StackView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DeprecatedText.StackView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_51C3C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  traitCollection = [(DeprecatedText.StackView *)selfCopy traitCollection];
  sub_144DCC();
  v8 = v7;

  if (height <= 5.99231045e307)
  {
    v9 = height;
  }

  else
  {
    v9 = 5.99231045e307;
  }

  sub_529D4(v12, 0.0, 0.0, width, v9, v8);

  sub_55B6C(v12);
  v10 = *&v12[3];
  v11 = *&v12[4];
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = _s9StackViewCMa();
  changeCopy = change;
  v5 = v7.receiver;
  [(DeprecatedText.StackView *)&v7 traitCollectionDidChange:changeCopy];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3168);
  sub_14509C();
  traitCollection = [v5 traitCollection];
  sub_144DCC();

  if ((sub_141AFC() & 1) == 0)
  {
    [v5 setNeedsLayout];
  }
}

@end