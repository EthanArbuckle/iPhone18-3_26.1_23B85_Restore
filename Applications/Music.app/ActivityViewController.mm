@interface ActivityViewController
- (_TtC5Music22ActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities;
- (int64_t)sharingStyle;
- (void)_prepareActivity:(id)activity;
- (void)setSharingStyle:(int64_t)style;
@end

@implementation ActivityViewController

- (int64_t)sharingStyle
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActivityViewController();
  return [(ActivityViewController *)&v3 sharingStyle];
}

- (void)setSharingStyle:(int64_t)style
{
  v5 = type metadata accessor for ActivityViewController();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  sharingStyle = [(ActivityViewController *)&v9 sharingStyle];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(ActivityViewController *)&v8 setSharingStyle:style];
  sub_1001266CC(sharingStyle);
}

- (void)_prepareActivity:(id)activity
{
  activityCopy = activity;
  selfCopy = self;
  sub_100126814(activityCopy);
}

- (_TtC5Music22ActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end