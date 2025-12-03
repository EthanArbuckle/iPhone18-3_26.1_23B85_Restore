@interface TTRIAccountsListsSuggestGroceriesCell_collectionView
- (_TtC9Reminders52TTRIAccountsListsSuggestGroceriesCell_collectionView)initWithCoder:(id)coder;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation TTRIAccountsListsSuggestGroceriesCell_collectionView

- (_TtC9Reminders52TTRIAccountsListsSuggestGroceriesCell_collectionView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9Reminders52TTRIAccountsListsSuggestGroceriesCell_collectionView_addAccessory;
  type metadata accessor for AddAccessory(0);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC9RemindersP33_DEAFC400F035D386D50AC552DAA1108312AddAccessory_accessoryState;
  v7 = sub_100058000(&qword_10077FF18);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC9RemindersP33_DEAFC400F035D386D50AC552DAA1108312AddAccessory____lazy_storage___plusView) = 0;
  *(&self->super.super.super.super.super.super.super.super.isa + v4) = v5;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UICellConfigurationState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v12.receiver = selfCopy;
  v12.super_class = ObjectType;
  [(TTRIAccountsListsBaseCell_collectionView *)&v12 _bridgedUpdateConfigurationUsingState:isa];

  v11[31] = 1;
  swift_beginAccess();
  type metadata accessor for AddAccessory(0);
  sub_10045E364();
  TTRICollectionViewManagedCellAccessory.updateIfNeeded(with:for:)();
  swift_endAccess();

  (*(v6 + 8))(v8, v5);
}

@end