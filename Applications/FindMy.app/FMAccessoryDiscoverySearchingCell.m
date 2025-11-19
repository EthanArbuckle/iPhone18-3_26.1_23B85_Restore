@interface FMAccessoryDiscoverySearchingCell
- (_TtC6FindMy33FMAccessoryDiscoverySearchingCell)initWithCoder:(id)a3;
- (_TtC6FindMy33FMAccessoryDiscoverySearchingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation FMAccessoryDiscoverySearchingCell

- (_TtC6FindMy33FMAccessoryDiscoverySearchingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtC6FindMy33FMAccessoryDiscoverySearchingCell_activityIndicator;
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(UIActivityIndicatorView) init];
  if (v7)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for FMAccessoryDiscoverySearchingCell();
  v10 = [(FMAccessoryDiscoverySearchingCell *)&v12 initWithStyle:a3 reuseIdentifier:v9];

  return v10;
}

- (_TtC6FindMy33FMAccessoryDiscoverySearchingCell)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC6FindMy33FMAccessoryDiscoverySearchingCell_activityIndicator;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(UIActivityIndicatorView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v10 = type metadata accessor for FMAccessoryDiscoverySearchingCell();
  v11.receiver = v8;
  v11.super_class = v10;
  [(FMAccessoryDiscoverySearchingCell *)&v11 _bridgedUpdateConfigurationUsingState:isa];

  sub_10014498C();
  (*(v5 + 8))(v7, v4);
}

@end