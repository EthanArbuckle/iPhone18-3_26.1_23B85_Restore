@interface TextStackView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC16MusicApplication13TextStackView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TextStackView

- (void)layoutSubviews
{
  v2 = self;
  TextStackView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = [(TextStackView *)v5 traitCollection];
  [v6 displayScale];
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

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  TextStackView.traitCollectionDidChange(_:)(v9);
}

- (_TtC16MusicApplication13TextStackView)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_2F53C8(v3);

  return v4;
}

@end