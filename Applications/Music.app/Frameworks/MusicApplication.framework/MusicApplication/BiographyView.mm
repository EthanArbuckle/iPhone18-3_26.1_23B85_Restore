@interface BiographyView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)accessibilityListStrings;
- (NSArray)accessibilityStackViews;
- (_TtC16MusicApplication13BiographyView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation BiographyView

- (void)layoutSubviews
{
  v2 = self;
  sub_160360();
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BiographyView();
  v2 = v4.receiver;
  [(BiographyView *)&v4 music_inheritedLayoutInsetsDidChange];
  [v2 setNeedsLayout];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutInvalidationHandler];
  if (v3)
  {

    v3(v2);
    sub_17654(v3);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1606B4(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BiographyView();
  v4 = v7.receiver;
  v5 = a3;
  [(BiographyView *)&v7 traitCollectionDidChange:v5];
  [v4 setNeedsLayout];
  v6 = *&v4[OBJC_IVAR____TtC16MusicApplication13BiographyView_layoutInvalidationHandler];
  if (v6)
  {

    v6(v4);
    sub_17654(v6);
  }
}

- (NSArray)accessibilityStackViews
{
  sub_160C40();
  type metadata accessor for TextStackView();
  v2.super.isa = sub_AB9740().super.isa;

  return v2.super.isa;
}

- (NSArray)accessibilityListStrings
{
  v2 = self;
  sub_16114C();

  v3.super.isa = sub_AB9740().super.isa;

  return v3.super.isa;
}

- (_TtC16MusicApplication13BiographyView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end