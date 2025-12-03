@interface GEOAPSessionSpecificUploadTableViewCell
- (_TtC4Maps39GEOAPSessionSpecificUploadTableViewCell)initWithCoder:(id)coder;
- (_TtC4Maps39GEOAPSessionSpecificUploadTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation GEOAPSessionSpecificUploadTableViewCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC4Maps39GEOAPSessionSpecificUploadTableViewCell_cellConfig);
  if (v8)
  {
    v9 = type metadata accessor for GEOAPSessionSpecificUploadTableViewCellConfiguration();
    v11 = sub_100529C18(&qword_101925F18, v10, type metadata accessor for GEOAPSessionSpecificUploadTableViewCellConfiguration);
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v13[2] = 0;
    v13[3] = 0;
  }

  v13[1] = v8;
  v13[4] = v9;
  v13[5] = v11;
  swift_retain_n();
  selfCopy = self;
  UITableViewCell.contentConfiguration.setter();

  (*(v5 + 8))(v7, v4);
}

- (_TtC4Maps39GEOAPSessionSpecificUploadTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC4Maps39GEOAPSessionSpecificUploadTableViewCell_cellConfig) = 0;
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC4Maps39GEOAPSessionSpecificUploadTableViewCell_cellConfig) = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for GEOAPSessionSpecificUploadTableViewCell();
  v7 = [(GEOAPSessionSpecificUploadTableViewCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC4Maps39GEOAPSessionSpecificUploadTableViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC4Maps39GEOAPSessionSpecificUploadTableViewCell_cellConfig) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end