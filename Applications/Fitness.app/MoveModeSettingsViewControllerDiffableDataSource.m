@interface MoveModeSettingsViewControllerDiffableDataSource
- (_TtC10FitnessApp48MoveModeSettingsViewControllerDiffableDataSource)initWithTableView:(id)a3 cellProvider:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
@end

@implementation MoveModeSettingsViewControllerDiffableDataSource

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v4 = [objc_opt_self() mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 localizedStringForKey:v5 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = String._bridgeToObjectiveC()();

  return v7;
}

- (_TtC10FitnessApp48MoveModeSettingsViewControllerDiffableDataSource)initWithTableView:(id)a3 cellProvider:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  aBlock[4] = sub_100410ED8;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100410D80;
  aBlock[3] = &unk_100857E28;
  v8 = _Block_copy(aBlock);
  v9 = a3;

  v12.receiver = self;
  v12.super_class = type metadata accessor for MoveModeSettingsViewControllerDiffableDataSource();
  v10 = [(MoveModeSettingsViewControllerDiffableDataSource *)&v12 initWithTableView:v9 cellProvider:v8];

  _Block_release(v8);
  return v10;
}

@end