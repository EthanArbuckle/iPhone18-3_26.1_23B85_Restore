@interface SyncStatsDisplayVC.SyncStatsCell
- (_TtCC7Journal18SyncStatsDisplayVC13SyncStatsCell)initWithCoder:(id)coder;
- (_TtCC7Journal18SyncStatsDisplayVC13SyncStatsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation SyncStatsDisplayVC.SyncStatsCell

- (_TtCC7Journal18SyncStatsDisplayVC13SyncStatsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_10043FCE8(style, identifier, v6);
}

- (_TtCC7Journal18SyncStatsDisplayVC13SyncStatsCell)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end