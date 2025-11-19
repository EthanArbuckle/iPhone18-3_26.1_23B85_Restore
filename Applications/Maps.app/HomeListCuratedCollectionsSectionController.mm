@interface HomeListCuratedCollectionsSectionController
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionsCarouselDidRouteToCollectionId:(id)a3 atIndex:(int64_t)a4 isSaved:(BOOL)a5;
- (void)collectionsCarouselDidScrollBackward;
- (void)collectionsCarouselDidScrollForward;
- (void)exploreGuidesButtonTapped;
- (void)routeToCuratedCollection:(id)a3;
- (void)routeToGuidesHomeFromExploreGuides:(id)a3;
@end

@implementation HomeListCuratedCollectionsSectionController

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
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
    v13 = self;
    [v12 resetScrollOffset];
    (*(v7 + 8))(v9, v6);
    *(&self->super.super.isa + v11) = 0;
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }
}

- (void)routeToCuratedCollection:(id)a3
{
  sub_10003E48C(self + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = a3;
  v7 = self;
  sub_10003E4E8(v8);
  if (Strong)
  {
    [Strong homeItemTapped:v6];
    swift_unknownObjectRelease();
  }
}

- (void)routeToGuidesHomeFromExploreGuides:(id)a3
{
  sub_10003E48C(self + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = a3;
  v7 = self;
  sub_10003E4E8(v9);
  if (Strong)
  {
    v8 = [v6 guideLocation];
    [Strong homeItemTapped:v8];

    swift_unknownObjectRelease();
  }
}

- (void)collectionsCarouselDidRouteToCollectionId:(id)a3 atIndex:(int64_t)a4 isSaved:(BOOL)a5
{
  v5 = a5;
  v8 = objc_opt_self();

  [v8 captureCuratedCollectionCarouselTapCollectionWithIdentifier:a3 atIndex:a4 isSaved:v5];
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