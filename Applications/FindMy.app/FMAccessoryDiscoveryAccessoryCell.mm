@interface FMAccessoryDiscoveryAccessoryCell
- (_TtC6FindMy33FMAccessoryDiscoveryAccessoryCell)initWithCoder:(id)coder;
- (_TtC6FindMy33FMAccessoryDiscoveryAccessoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation FMAccessoryDiscoveryAccessoryCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v10 = type metadata accessor for FMAccessoryDiscoveryAccessoryCell();
  v12.receiver = selfCopy;
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

  [(FMAccessoryDiscoveryAccessoryCell *)selfCopy setAccessoryType:v11];

  (*(v5 + 8))(v7, v4);
}

- (_TtC6FindMy33FMAccessoryDiscoveryAccessoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
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
  v7 = [(FMAccessoryDiscoveryAccessoryCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC6FindMy33FMAccessoryDiscoveryAccessoryCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMAccessoryDiscoveryAccessoryCell();
  coderCopy = coder;
  v5 = [(FMAccessoryDiscoveryAccessoryCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end