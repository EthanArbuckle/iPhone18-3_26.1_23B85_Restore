@interface DeprecatedText.StackView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DeprecatedText.StackView

- (void)layoutSubviews
{
  v2 = self;
  sub_51C3C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = [(DeprecatedText.StackView *)v5 traitCollection];
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

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = _s9StackViewCMa();
  v4 = a3;
  v5 = v7.receiver;
  [(DeprecatedText.StackView *)&v7 traitCollectionDidChange:v4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3168);
  sub_14509C();
  v6 = [v5 traitCollection];
  sub_144DCC();

  if ((sub_141AFC() & 1) == 0)
  {
    [v5 setNeedsLayout];
  }
}

@end