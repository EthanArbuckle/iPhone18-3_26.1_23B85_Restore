@interface CHStackListTableViewCell
- (CHStackListTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
@end

@implementation CHStackListTableViewCell

- (CHStackListTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100336430(a3, a4, v6);
}

- (void)prepareForReuse
{
  v3 = sub_100140278(&qword_1008E0BC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for StackListTableViewCell();
  v11.receiver = self;
  v11.super_class = v6;
  v7 = self;
  [(CHStackListTableViewCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for FitnessPlusStackViewModel();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR___CHStackListTableViewCell_fitnessPlusStackViewModel;
  swift_beginAccess();
  sub_10029FD5C(v5, v7 + v9);
  swift_endAccess();
  [*(&v7->super.super.super.super.isa + OBJC_IVAR___CHStackListTableViewCell_iconImageView) setImage:0];
}

@end