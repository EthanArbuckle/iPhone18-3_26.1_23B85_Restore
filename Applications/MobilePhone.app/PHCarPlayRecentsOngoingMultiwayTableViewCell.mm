@interface PHCarPlayRecentsOngoingMultiwayTableViewCell
- (NSString)callName;
- (PHCarPlayRecentsOngoingMultiwayTableViewCell)initWithCoder:(id)coder;
- (PHCarPlayRecentsOngoingMultiwayTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)setCallName:(id)name;
@end

@implementation PHCarPlayRecentsOngoingMultiwayTableViewCell

- (NSString)callName
{
  v2 = self + OBJC_IVAR___PHCarPlayRecentsOngoingMultiwayTableViewCell_callName;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCallName:(id)name
{
  if (name)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___PHCarPlayRecentsOngoingMultiwayTableViewCell_callName);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
  selfCopy = self;

  [(PHCarPlayRecentsOngoingMultiwayTableViewCell *)selfCopy setNeedsUpdateConfiguration];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  PHCarPlayRecentsOngoingMultiwayTableViewCell.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (PHCarPlayRecentsOngoingMultiwayTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    styleCopy = style;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = (self + OBJC_IVAR___PHCarPlayRecentsOngoingMultiwayTableViewCell_callName);
    *v6 = 0;
    v6[1] = 0;
    v7 = String._bridgeToObjectiveC()();

    style = styleCopy;
  }

  else
  {
    v7 = 0;
    v8 = (self + OBJC_IVAR___PHCarPlayRecentsOngoingMultiwayTableViewCell_callName);
    *v8 = 0;
    v8[1] = 0;
  }

  v11.receiver = self;
  v11.super_class = PHCarPlayRecentsOngoingMultiwayTableViewCell;
  v9 = [(PHCarPlayGenericTableViewCell *)&v11 initWithStyle:style reuseIdentifier:v7];

  return v9;
}

- (PHCarPlayRecentsOngoingMultiwayTableViewCell)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR___PHCarPlayRecentsOngoingMultiwayTableViewCell_callName);
  *v3 = 0;
  v3[1] = 0;
  v7.receiver = self;
  v7.super_class = PHCarPlayRecentsOngoingMultiwayTableViewCell;
  coderCopy = coder;
  v5 = [(PHCarPlayRecentsOngoingMultiwayTableViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end