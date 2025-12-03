@interface AddToYourRingCollectionViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (_TtC10FitnessApp37AddToYourRingCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC10FitnessApp37AddToYourRingCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation AddToYourRingCollectionViewController

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10042C6FC(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v16 = sub_10042E128(viewCopy, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10042E2C4(v9);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = IndexPath.section.getter();
  if (v12 > 3)
  {
    __break(1u);
  }

  else
  {
    v13 = *(&off_100845C00 + v12 + 32);

    (*(v7 + 8))(v9, v6);
    LOBYTE(v12) = v13 != 0;
  }

  return v12;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = IndexPath.section.getter();
  if (v12 > 3)
  {
    __break(1u);
  }

  else
  {
    v13 = *(&off_100845C28 + v12 + 32);

    (*(v7 + 8))(v9, v6);
    LOBYTE(v12) = v13 != 0;
  }

  return v12;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10065E5A8();
}

- (_TtC10FitnessApp37AddToYourRingCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp37AddToYourRingCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)applicationsDidInstall:(id)install
{
  selfCopy = self;
  sub_1006636D4("[AddToYourRingSuggestion] applicationsDidInstall, refreshing appRecommendation data provider", 92, &unk_100866B50, &unk_100702D58);
}

- (void)applicationsDidUninstall:(id)uninstall
{
  selfCopy = self;
  sub_1006636D4("[AddToYourRingSuggestion] applicationsDidUninstall, refreshing appRecommendation data provider", 94, &unk_100866B00, &unk_100702D40);
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1006636D4("[AddToYourRingSuggestion] appProtectionSubjectsChanged, refreshing appRecommendation data provider", 98, &unk_100866A60, &unk_100702D20);
  swift_unknownObjectRelease();
}

@end