@interface DetailHeader.ArtworkEditButtonWrapperView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DetailHeader.ArtworkEditButtonWrapperView

- (_TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView)initWithCoder:(id)a3
{
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(DetailHeader.ArtworkEditButtonWrapperView *)self intrinsicContentSize];
  if (height >= width)
  {
    v7 = width;
  }

  else
  {
    v7 = height;
  }

  if (v5 < width && v6 < height)
  {
    v6 = v7;
    v5 = v7;
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = [(DetailHeader.ArtworkEditButtonWrapperView *)v2 traitCollection];
  v4 = [v3 horizontalSizeClass];

  v5 = 64.0;
  if (v4 == &dword_0 + 2)
  {
    v5 = 80.0;
  }

  v6 = v5;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_2A7AE8();
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for DetailHeader.ArtworkEditButtonWrapperView();
  v4 = a3;
  v5 = v10.receiver;
  [(DetailHeader.ArtworkEditButtonWrapperView *)&v10 traitCollectionDidChange:v4];
  v6 = *&v5[OBJC_IVAR____TtCC16MusicApplication12DetailHeaderP33_A13DD19D58D33EBE9EDF18CE691179B728ArtworkEditButtonWrapperView_button];
  v7 = [v5 traitCollection];
  v8 = [v7 horizontalSizeClass];

  v9 = 12.0;
  if (v8 == &dword_0 + 2)
  {
    v9 = 25.0;
  }

  [v6 setImageEdgeInsets:{v9, v9, v9, v9}];
}

@end