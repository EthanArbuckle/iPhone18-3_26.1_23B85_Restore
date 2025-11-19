@interface PromotionalParallaxContentView
- (CGRect)frame;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)setFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PromotionalParallaxContentView

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(PromotionalParallaxContentView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v24.receiver = self;
  v24.super_class = ObjectType;
  v9 = self;
  [(PromotionalParallaxContentView *)&v24 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v23.receiver = v9;
  v23.super_class = ObjectType;
  [(PromotionalParallaxContentView *)&v23 setFrame:x, y, width, height];
  type metadata accessor for CGRect(0);
  v19 = v11;
  v20 = v13;
  v21 = v15;
  v22 = v17;
  v18.receiver = v9;
  v18.super_class = ObjectType;
  [(PromotionalParallaxContentView *)&v18 frame];
  if (sub_AB38D0())
  {
    sub_1A7634(0, 0, 1);
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1A7890();
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(PromotionalParallaxContentView *)&v3 music_inheritedLayoutInsetsDidChange];
  if (*(*&v2[OBJC_IVAR____TtC16MusicApplication30PromotionalParallaxContentView_thumbnailArtworkComponent] + 64))
  {
    [v2 setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1A8E90(a3);
}

@end