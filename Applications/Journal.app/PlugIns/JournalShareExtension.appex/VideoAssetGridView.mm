@interface VideoAssetGridView
- (_TtC21JournalShareExtension18VideoAssetGridView)initWithCoder:(id)coder;
- (_TtC21JournalShareExtension18VideoAssetGridView)initWithFrame:(CGRect)frame;
- (void)handleAllowedVideosNotification:(id)notification;
@end

@implementation VideoAssetGridView

- (void)handleAllowedVideosNotification:(id)notification
{
  v4 = sub_1000FF224();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FF1F4();
  selfCopy = self;
  sub_1000D5288();

  (*(v5 + 8))(v7, v4);
}

- (_TtC21JournalShareExtension18VideoAssetGridView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC21JournalShareExtension18VideoAssetGridView_durationLabel;
  *(&self->super.super.super.super.super.isa + v8) = [objc_allocWithZone(UILabel) init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for VideoAssetGridView();
  return [(VideoAssetView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC21JournalShareExtension18VideoAssetGridView)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC21JournalShareExtension18VideoAssetGridView_durationLabel;
  v6 = objc_allocWithZone(UILabel);
  coderCopy = coder;
  *(&self->super.super.super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for VideoAssetGridView();
  v8 = [(VideoAssetView *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end