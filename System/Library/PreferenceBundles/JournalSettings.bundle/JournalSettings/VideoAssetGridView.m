@interface VideoAssetGridView
- (_TtC15JournalSettings18VideoAssetGridView)initWithCoder:(id)a3;
- (_TtC15JournalSettings18VideoAssetGridView)initWithFrame:(CGRect)a3;
- (void)handleAllowedVideosNotification:(id)a3;
@end

@implementation VideoAssetGridView

- (void)handleAllowedVideosNotification:(id)a3
{
  v4 = sub_8ED50();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8ED20();
  v8 = self;
  sub_7DA9C();

  (*(v5 + 8))(v7, v4);
}

- (_TtC15JournalSettings18VideoAssetGridView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC15JournalSettings18VideoAssetGridView_durationLabel;
  *(&self->super.super.super.super.super.isa + v8) = [objc_allocWithZone(UILabel) init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for VideoAssetGridView();
  return [(VideoAssetView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC15JournalSettings18VideoAssetGridView)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC15JournalSettings18VideoAssetGridView_durationLabel;
  v6 = objc_allocWithZone(UILabel);
  v7 = a3;
  *(&self->super.super.super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for VideoAssetGridView();
  v8 = [(VideoAssetView *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end