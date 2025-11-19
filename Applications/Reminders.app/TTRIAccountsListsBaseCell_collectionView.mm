@interface TTRIAccountsListsBaseCell_collectionView
- (NSArray)accessibilityUserInputLabels;
- (NSAttributedString)accessibilityAttributedValue;
- (NSString)accessibilityLabel;
- (_TtC9Reminders40TTRIAccountsListsBaseCell_collectionView)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation TTRIAccountsListsBaseCell_collectionView

- (_TtC9Reminders40TTRIAccountsListsBaseCell_collectionView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeConfiguration;
  v9 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration(0);
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  v10 = self + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_tertiaryLabelConfiguration;
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_disclosureIndicatorConfiguration;
  v12 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration(0);
  (*(*(v12 - 8) + 56))(self + v11, 1, 1, v12);
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_isContentConfigurationInitialized) = 0;
  v13 = (&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeViews);
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_labelAccessory;
  v15 = sub_100058000(&qword_1007683D8);
  (*(*(v15 - 8) + 56))(self + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_disclosureIndicatorAccessory;
  v17 = sub_100058000(&qword_1007683E8);
  (*(*(v17 - 8) + 56))(self + v16, 1, 1, v17);
  v19.receiver = self;
  v19.super_class = type metadata accessor for TTRIAccountsListsBaseCell_collectionView(0);
  return [(TTRIAccountsListsCollectionListCell *)&v19 initWithFrame:x, y, width, height];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_100032F2C(v7);

  (*(v5 + 8))(v7, v4);
}

- (NSString)accessibilityLabel
{
  v3 = type metadata accessor for UIListContentConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  sub_10003139C(v6);
  sub_10016D594(v6, _swiftEmptyArrayStorage);

  (*(v4 + 8))(v6, v3);
  v8 = String._bridgeToObjectiveC()();

  return v8;
}

- (NSArray)accessibilityUserInputLabels
{
  v3 = type metadata accessor for UIListContentConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  sub_10003139C(v6);
  v8 = UIListContentConfiguration.text.getter();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  if (!v10)
  {
    v8 = static TTRAccesibility.General.Label.Untitled.getter();
    v10 = v11;
  }

  sub_100058000(&unk_100771E10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10062D400;
  *(v12 + 32) = v8;
  *(v12 + 40) = v10;

  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

- (NSAttributedString)accessibilityAttributedValue
{
  v2 = self;
  v3 = sub_10005CBF4();

  return v3;
}

@end