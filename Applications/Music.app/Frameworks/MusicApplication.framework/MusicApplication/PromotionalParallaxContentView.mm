@interface PromotionalParallaxContentView
- (CGRect)frame;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)setFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v24.receiver = self;
  v24.super_class = ObjectType;
  selfCopy = self;
  [(PromotionalParallaxContentView *)&v24 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v23.receiver = selfCopy;
  v23.super_class = ObjectType;
  [(PromotionalParallaxContentView *)&v23 setFrame:x, y, width, height];
  type metadata accessor for CGRect(0);
  v19 = v11;
  v20 = v13;
  v21 = v15;
  v22 = v17;
  v18.receiver = selfCopy;
  v18.super_class = ObjectType;
  [(PromotionalParallaxContentView *)&v18 frame];
  if (sub_AB38D0())
  {
    sub_1A7634(0, 0, 1);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1A8E90(change);
}

@end