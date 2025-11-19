@interface InformativeView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation InformativeView

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_22EC28(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_22F074();
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for InformativeView();
  v2 = v4.receiver;
  [(InformativeView *)&v4 music_inheritedLayoutInsetsDidChange];
  [v2 setNeedsLayout];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_layoutInvalidationHandler];
  if (v3)
  {

    v3(v2);
    sub_17654(v3);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_22FB28(a3);
}

@end