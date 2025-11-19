@interface FMAccessoryDiscoveryAccessoryCell
- (_TtC6FindMy33FMAccessoryDiscoveryAccessoryCell)initWithCoder:(id)a3;
- (_TtC6FindMy33FMAccessoryDiscoveryAccessoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation FMAccessoryDiscoveryAccessoryCell

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v10 = type metadata accessor for FMAccessoryDiscoveryAccessoryCell();
  v12.receiver = v8;
  v12.super_class = v10;
  [(FMAccessoryDiscoveryAccessoryCell *)&v12 _bridgedUpdateConfigurationUsingState:isa];

  if (UICellConfigurationState.isSelected.getter())
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [(FMAccessoryDiscoveryAccessoryCell *)v8 setAccessoryType:v11];

  (*(v5 + 8))(v7, v4);
}

- (_TtC6FindMy33FMAccessoryDiscoveryAccessoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for FMAccessoryDiscoveryAccessoryCell();
  v7 = [(FMAccessoryDiscoveryAccessoryCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC6FindMy33FMAccessoryDiscoveryAccessoryCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMAccessoryDiscoveryAccessoryCell();
  v4 = a3;
  v5 = [(FMAccessoryDiscoveryAccessoryCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end