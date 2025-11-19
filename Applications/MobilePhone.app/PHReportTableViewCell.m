@interface PHReportTableViewCell
+ (NSString)reuseIdentifier;
- (PHReportTableViewCell)initWithCoder:(id)a3;
- (PHReportTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation PHReportTableViewCell

+ (NSString)reuseIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (PHReportTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return specialized ReportTableViewCell.init(style:reuseIdentifier:)();
}

- (PHReportTableViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR___PHReportTableViewCell____lazy_storage___cellContentConfiguration;
  v5 = type metadata accessor for UIListContentConfiguration();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end