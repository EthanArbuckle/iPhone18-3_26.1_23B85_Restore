@interface HomeListCuratedCollectionsSectionController
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionsCarouselDidRouteToCollectionId:(id)id atIndex:(int64_t)index isSaved:(BOOL)saved;
- (void)collectionsCarouselDidScrollBackward;
- (void)collectionsCarouselDidScrollForward;
- (void)exploreGuidesButtonTapped;
- (void)routeToCuratedCollection:(id)collection;
- (void)routeToGuidesHomeFromExploreGuides:(id)guides;
@end

@implementation HomeListCuratedCollectionsSectionController

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10 && (v11 = OBJC_IVAR____TtC4Maps43HomeListCuratedCollectionsSectionController_needsResetScrollOffset, (*(&self->super.super.isa + OBJC_IVAR____TtC4Maps43HomeListCuratedCollectionsSectionController_needsResetScrollOffset) & 1) != 0))
  {
    v12 = v10;
    selfCopy = self;
    [v12 resetScrollOffset];
    (*(v7 + 8))(v9, v6);
    *(&self->super.super.isa + v11) = 0;
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }
}

- (void)routeToCuratedCollection:(id)collection
{
  sub_10003E48C(self + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  collectionCopy = collection;
  selfCopy = self;
  sub_10003E4E8(v8);
  if (Strong)
  {
    [Strong homeItemTapped:collectionCopy];
    swift_unknownObjectRelease();
  }
}

- (void)routeToGuidesHomeFromExploreGuides:(id)guides
{
  sub_10003E48C(self + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  guidesCopy = guides;
  selfCopy = self;
  sub_10003E4E8(v9);
  if (Strong)
  {
    guideLocation = [guidesCopy guideLocation];
    [Strong homeItemTapped:guideLocation];

    swift_unknownObjectRelease();
  }
}

- (void)collectionsCarouselDidRouteToCollectionId:(id)id atIndex:(int64_t)index isSaved:(BOOL)saved
{
  savedCopy = saved;
  v8 = objc_opt_self();

  [v8 captureCuratedCollectionCarouselTapCollectionWithIdentifier:id atIndex:index isSaved:savedCopy];
}

- (void)collectionsCarouselDidScrollForward
{
  v2 = objc_opt_self();

  [v2 captureCuratedCollectionCarouselScrollForward];
}

- (void)collectionsCarouselDidScrollBackward
{
  v2 = objc_opt_self();

  [v2 captureCuratedCollectionCarouselScrollBackward];
}

- (void)exploreGuidesButtonTapped
{
  v2 = objc_opt_self();

  [v2 captureExploreGuidesTapAction];
}

@end