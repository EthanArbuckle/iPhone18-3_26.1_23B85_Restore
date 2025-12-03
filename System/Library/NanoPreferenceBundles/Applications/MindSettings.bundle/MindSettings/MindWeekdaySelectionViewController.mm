@interface MindWeekdaySelectionViewController
- (_TtC12MindSettings34MindWeekdaySelectionViewController)initWithCoder:(id)coder;
- (_TtC12MindSettings34MindWeekdaySelectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC12MindSettings34MindWeekdaySelectionViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MindWeekdaySelectionViewController

- (_TtC12MindSettings34MindWeekdaySelectionViewController)initWithCoder:(id)coder
{
  *&self->delegate[OBJC_IVAR____TtC12MindSettings34MindWeekdaySelectionViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = sub_F108();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_5464();
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_ED48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ED18();
  viewCopy = view;
  selfCopy = self;
  sub_559C(viewCopy);

  (*(v7 + 8))(v10, v6);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_ED48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ED18();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_5844(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (_TtC12MindSettings34MindWeekdaySelectionViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12MindSettings34MindWeekdaySelectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end