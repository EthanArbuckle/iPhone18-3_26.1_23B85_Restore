@interface TTRIAccountsListsViewPinnedListsCell_collectionView
+ (Class)layerClass;
- (NSArray)preferredFocusEnvironments;
- (_TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView)initWithCoder:(id)coder;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)layoutMarginsDidChange;
- (void)prepareForReuse;
@end

@implementation TTRIAccountsListsViewPinnedListsCell_collectionView

+ (Class)layerClass
{
  type metadata accessor for NoClippingCellLayer();

  return swift_getObjCClassFromMetadata();
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIAccountsListsViewPinnedListsCell_collectionView *)&v3 layoutMarginsDidChange];
  sub_100026468();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UICellConfigurationState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v11.receiver = selfCopy;
  v11.super_class = ObjectType;
  [(TTRIAccountsListsViewPinnedListsCell_collectionView *)&v11 _bridgedUpdateConfigurationUsingState:isa];

  sub_10002F6E4();
  (*(v6 + 8))(v8, v5);
}

- (_TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView)initWithCoder:(id)coder
{
  *&self->super.viewModelObserver[OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_selectionRequestObserver) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListsView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_pinnedListViewAdditionalTopLayoutMargin) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIAccountsListsCollectionCell *)&v3 prepareForReuse];
  if (*&v2[OBJC_IVAR____TtC9Reminders51TTRIAccountsListsViewPinnedListsCell_collectionView_selectionRequestObserver])
  {

    TTRViewModelObserver.unsubscribe()();
  }

  else
  {
    __break(1u);
  }
}

- (NSArray)preferredFocusEnvironments
{
  selfCopy = self;
  sub_1001C54BC();

  sub_100058000(&qword_100780A40);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

@end