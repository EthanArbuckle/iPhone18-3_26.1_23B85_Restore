@interface GroupedTextListView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)accessibilityListGroupStrings;
- (NSArray)accessibilityStackViews;
- (_TtC16MusicApplication19GroupedTextListView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation GroupedTextListView

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_3EE5E8(a3);
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for GroupedTextListView();
  v2 = v4.receiver;
  [(GroupedTextListView *)&v4 music_inheritedLayoutInsetsDidChange];
  [v2 setNeedsLayout];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication19GroupedTextListView_layoutInvalidationHandler];
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
  sub_3EE9E8(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_3EEEA8();
}

- (NSArray)accessibilityStackViews
{
  swift_beginAccess();
  type metadata accessor for TextStackView();

  v2.super.isa = sub_AB9740().super.isa;

  return v2.super.isa;
}

- (NSArray)accessibilityListGroupStrings
{
  v2 = self;
  sub_3F083C();

  v3.super.isa = sub_AB9740().super.isa;

  return v3.super.isa;
}

- (_TtC16MusicApplication19GroupedTextListView)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_3F0F08(v3);

  return v4;
}

@end