@interface GEOAPHistoricalUploadTableViewCell
- (_TtC4Maps34GEOAPHistoricalUploadTableViewCell)initWithCoder:(id)coder;
- (_TtC4Maps34GEOAPHistoricalUploadTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation GEOAPHistoricalUploadTableViewCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC4Maps34GEOAPHistoricalUploadTableViewCell_cellConfig);
  if (v8)
  {
    v9 = type metadata accessor for GEOAPHistoricalUploadTableViewCellConfiguration();
    v10 = sub_10056DA5C(&qword_1019279F8, type metadata accessor for GEOAPHistoricalUploadTableViewCellConfiguration);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v12[2] = 0;
    v12[3] = 0;
  }

  v12[1] = v8;
  v12[4] = v9;
  v12[5] = v10;
  swift_retain_n();
  selfCopy = self;
  UITableViewCell.contentConfiguration.setter();

  (*(v5 + 8))(v7, v4);
}

- (_TtC4Maps34GEOAPHistoricalUploadTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC4Maps34GEOAPHistoricalUploadTableViewCell_cellConfig) = 0;
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC4Maps34GEOAPHistoricalUploadTableViewCell_cellConfig) = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for GEOAPHistoricalUploadTableViewCell();
  v7 = [(GEOAPHistoricalUploadTableViewCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC4Maps34GEOAPHistoricalUploadTableViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC4Maps34GEOAPHistoricalUploadTableViewCell_cellConfig) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end