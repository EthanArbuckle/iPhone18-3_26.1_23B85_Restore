@interface TTRIRemindersListSectionHeader_collectionView
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)didTap:(id)a3;
- (void)prepareForReuse;
- (void)setAccessibilityHint:(id)a3;
@end

@implementation TTRIRemindersListSectionHeader_collectionView

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIRemindersListSectionHeader_collectionView *)&v3 prepareForReuse];
  if (*&v2[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_viewModelObserver])
  {

    TTRViewModelObserver.unsubscribe()();
  }

  else
  {
    __break(1u);
  }
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  v11 = v7;
  v8 = self;
  TTRObservationTrackingUpdateHelper.withUpdateSchedulingDisabled<A>(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)didTap:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = self;
    sub_100521DE0(v4);
    swift_unknownObjectRelease();
  }
}

- (void)setAccessibilityHint:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = self;
    a3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TTRIRemindersListSectionHeader_collectionView *)&v8 setAccessibilityHint:a3];
}

@end