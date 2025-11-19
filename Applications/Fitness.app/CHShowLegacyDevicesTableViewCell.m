@interface CHShowLegacyDevicesTableViewCell
- (CHShowLegacyDevicesTableViewCell)initWithCoder:(id)a3;
- (CHShowLegacyDevicesTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation CHShowLegacyDevicesTableViewCell

- (CHShowLegacyDevicesTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_10037A7E4(a3, a4, v6);
}

- (CHShowLegacyDevicesTableViewCell)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end