@interface PHCarPlayRecentsOngoingMultiwayTableViewCell
- (NSString)callName;
- (PHCarPlayRecentsOngoingMultiwayTableViewCell)initWithCoder:(id)a3;
- (PHCarPlayRecentsOngoingMultiwayTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)setCallName:(id)a3;
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

- (void)setCallName:(id)a3
{
  if (a3)
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
  v8 = self;

  [(PHCarPlayRecentsOngoingMultiwayTableViewCell *)v8 setNeedsUpdateConfiguration];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  PHCarPlayRecentsOngoingMultiwayTableViewCell.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (PHCarPlayRecentsOngoingMultiwayTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v5 = a3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = (self + OBJC_IVAR___PHCarPlayRecentsOngoingMultiwayTableViewCell_callName);
    *v6 = 0;
    v6[1] = 0;
    v7 = String._bridgeToObjectiveC()();

    a3 = v5;
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
  v9 = [(PHCarPlayGenericTableViewCell *)&v11 initWithStyle:a3 reuseIdentifier:v7];

  return v9;
}

- (PHCarPlayRecentsOngoingMultiwayTableViewCell)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR___PHCarPlayRecentsOngoingMultiwayTableViewCell_callName);
  *v3 = 0;
  v3[1] = 0;
  v7.receiver = self;
  v7.super_class = PHCarPlayRecentsOngoingMultiwayTableViewCell;
  v4 = a3;
  v5 = [(PHCarPlayRecentsOngoingMultiwayTableViewCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end