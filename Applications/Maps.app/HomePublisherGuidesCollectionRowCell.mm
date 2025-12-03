@interface HomePublisherGuidesCollectionRowCell
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)layoutSubviews;
@end

@implementation HomePublisherGuidesCollectionRowCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_1000CE6B8(&qword_1019112A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-v6];
  v8 = type metadata accessor for UICellConfigurationState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v14 = type metadata accessor for HomePublisherGuidesCollectionRowCell(0);
  v18.receiver = selfCopy;
  v18.super_class = v14;
  [(HomePublisherGuidesCollectionRowCell *)&v18 _bridgedUpdateConfigurationUsingState:isa];

  v16 = selfCopy;
  sub_1000CE6B8(&qword_1019112C0);
  sub_1000414C8(&qword_1019112C8, &qword_1019112C0);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v17[3] = v4;
  v17[4] = sub_1000414C8(&qword_1019112D0, &qword_1019112A8);
  sub_10001A848(v17);
  UIHostingConfiguration.margins(_:_:)();
  (*(v5 + 8))(v7, v4);
  UICollectionViewCell.contentConfiguration.setter();

  (*(v9 + 8))(v11, v8);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001D5DFC();
}

@end