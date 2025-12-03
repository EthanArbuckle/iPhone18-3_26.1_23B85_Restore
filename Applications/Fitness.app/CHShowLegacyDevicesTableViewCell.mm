@interface CHShowLegacyDevicesTableViewCell
- (CHShowLegacyDevicesTableViewCell)initWithCoder:(id)coder;
- (CHShowLegacyDevicesTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation CHShowLegacyDevicesTableViewCell

- (CHShowLegacyDevicesTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_10037A7E4(style, identifier, v6);
}

- (CHShowLegacyDevicesTableViewCell)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end