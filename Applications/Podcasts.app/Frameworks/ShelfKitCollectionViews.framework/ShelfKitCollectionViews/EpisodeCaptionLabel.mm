@interface EpisodeCaptionLabel
- (_TtC23ShelfKitCollectionViews19EpisodeCaptionLabel)initWithFrame:(CGRect)a3;
@end

@implementation EpisodeCaptionLabel

- (_TtC23ShelfKitCollectionViews19EpisodeCaptionLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  result = swift_beginAccess();
  if (off_40D118)
  {
    sub_12670((off_40D118 + 6), self + OBJC_IVAR____TtC23ShelfKitCollectionViews19EpisodeCaptionLabel_storeDataProvider);
    v9 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews19EpisodeCaptionLabel_caption);
    v10 = type metadata accessor for EpisodeCaptionLabel();
    *v9 = 0;
    v9[1] = 0;
    v11.receiver = self;
    v11.super_class = v10;
    return [(DynamicTypeLabel *)&v11 initWithFrame:x, y, width, height];
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end