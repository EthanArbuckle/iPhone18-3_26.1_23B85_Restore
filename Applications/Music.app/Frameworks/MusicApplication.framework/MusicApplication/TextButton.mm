@interface TextButton
- (CGSize)intrinsicContentSize;
- (_TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710TextButton)initWithCoder:(id)a3;
- (_TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710TextButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setTitle:(id)a3 forState:(unint64_t)a4;
@end

@implementation TextButton

- (_TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710TextButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710TextButton_hasExcessiveHeightCharacters) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)setTitle:(id)a3 forState:(unint64_t)a4
{
  if (a3)
  {
    v6 = sub_AB92A0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = self;
  sub_2A6D98(v6, v8, a4);
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = [(TextButton *)v2 titleLabel];
  if (v3)
  {
    v4 = v3;
    [v3 intrinsicContentSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v13.receiver = v2;
    v13.super_class = type metadata accessor for TextButton();
    [(TextButton *)&v13 intrinsicContentSize];
    v6 = v9;
    v8 = v10;
  }

  v11 = v6;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TextButton();
  v2 = v7.receiver;
  [(TextButton *)&v7 layoutSubviews];
  v3 = [v2 titleLabel];
  if (v3)
  {
    v4 = v3;
    [v3 frame];
    Width = CGRectGetWidth(v8);
    [v2 frame];
    v6 = CGRectGetWidth(v9);
    if (Width > v6)
    {
      v6 = Width;
    }

    [v4 setPreferredMaxLayoutWidth:v6];

    v2 = v4;
  }
}

- (_TtC16MusicApplicationP33_A13DD19D58D33EBE9EDF18CE691179B710TextButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end