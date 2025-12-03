@interface TTRIRemindersListSectionHeader_collectionView
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)didTap:(id)tap;
- (void)prepareForReuse;
- (void)setAccessibilityHint:(id)hint;
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

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v11 = v7;
  selfCopy2 = self;
  TTRObservationTrackingUpdateHelper.withUpdateSchedulingDisabled<A>(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)didTap:(id)tap
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_100521DE0(selfCopy);
    swift_unknownObjectRelease();
  }
}

- (void)setAccessibilityHint:(id)hint
{
  ObjectType = swift_getObjectType();
  if (hint)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    hint = String._bridgeToObjectiveC()();
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TTRIRemindersListSectionHeader_collectionView *)&v8 setAccessibilityHint:hint];
}

@end