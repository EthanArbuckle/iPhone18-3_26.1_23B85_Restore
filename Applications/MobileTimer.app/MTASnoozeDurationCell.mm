@interface MTASnoozeDurationCell
+ (NSString)reuseIdentifier;
- (UITableView)tableView;
- (_TtC11MobileTimer21MTASnoozeDurationCell)initWithCoder:(id)coder;
- (_TtC11MobileTimer21MTASnoozeDurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC11MobileTimer21MTASnoozeDurationCell)initWithViewModel:(id)model in:(id)in;
- (void)configure;
@end

@implementation MTASnoozeDurationCell

- (UITableView)tableView
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (NSString)reuseIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC11MobileTimer21MTASnoozeDurationCell)initWithViewModel:(id)model in:(id)in
{
  modelCopy = model;
  inCopy = in;
  return sub_10005EEBC(modelCopy, in);
}

- (_TtC11MobileTimer21MTASnoozeDurationCell)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)configure
{
  v4[3] = sub_10005F248(&qword_1000D2310);
  v4[4] = sub_10005F290();
  sub_10005F33C(v4);
  type metadata accessor for SnoozeDurationView();
  sub_10005F3A0();
  selfCopy = self;
  UIHostingConfiguration<>.init(content:)();
  UITableViewCell.contentConfiguration.setter();
}

- (_TtC11MobileTimer21MTASnoozeDurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end