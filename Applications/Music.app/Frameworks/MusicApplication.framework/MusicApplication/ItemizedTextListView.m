@interface ItemizedTextListView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ItemizedTextListView

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2AFAAC(a3);
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ItemizedTextListView();
  v2 = v4.receiver;
  [(ItemizedTextListView *)&v4 music_inheritedLayoutInsetsDidChange];
  [v2 setNeedsLayout];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler];
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
  sub_2AFD34(width, height);
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
  sub_2B059C();
}

@end