@interface PlaceCardContext
- (AppCoordinator)appCoordinator;
- (BOOL)chromeDidClearMapSelection;
- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)a3;
- (BOOL)chromeDidSelectMarkerForMapItem:(id)a3;
- (BOOL)chromeDidSelectUserLocationAnnotation:(id)a3;
- (BOOL)placeCardViewController:(id)a3 shouldShowTransitScheduleForMapItem:(id)a4 departureSequence:(id)a5;
- (ChromeViewController)chromeViewController;
- (ContainerViewController)containerViewController;
- (GEOMapServiceTraits)newTraits;
- (ShortcutEditSessionController)shortcutEditSessionController;
- (_TtC4Maps16PlaceCardContext)init;
- (id)desiredCards;
- (id)personalizedItemSources;
- (id)placeCardViewControllerRequestsMapViewAssociatedWithVC:(id)a3;
- (id)searchResultFor:(id)a3;
- (int64_t)displayedViewMode;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)collectionPickerClosed:(id)a3;
- (void)collectionPickerNewCollection:(id)a3;
- (void)configureNavigationDisplay:(id)a3;
- (void)containeeViewControllerDidDismissExternally:(id)a3;
- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4;
- (void)createNewUserGuideWithSaveSession:(id)a3;
- (void)ensureMapSelectionVisible;
- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)markedLocationRefinementViewControllerDidCancel:(id)a3;
- (void)markedLocationRefinementViewControllerSelectedRemoveMarkedLocation:(id)a3;
- (void)placeCardViewController:(id)a3 createDroppedPin:(id)a4;
- (void)placeCardViewController:(id)a3 createNewCollectionWithSession:(id)a4;
- (void)placeCardViewController:(id)a3 didRequestEditingNoteWithInitialText:(id)a4 libraryAccessProvider:(id)a5 placeMUID:(unint64_t)a6 completion:(id)a7;
- (void)placeCardViewController:(id)a3 didSelectParent:(id)a4;
- (void)placeCardViewController:(id)a3 didUpdateLinkedPlacesFromPlaceCardItem:(id)a4;
- (void)placeCardViewController:(id)a3 dismissAnimated:(BOOL)a4 completion:(id)a5;
- (void)placeCardViewController:(id)a3 displayStoreViewControllerForAppWithiTunesIdentifier:(id)a4;
- (void)placeCardViewController:(id)a3 doDirectionItem:(id)a4 userInfo:(id)a5;
- (void)placeCardViewController:(id)a3 doSearchItem:(id)a4 withUserInfo:(id)a5;
- (void)placeCardViewController:(id)a3 editLocationOfMarkedLocation:(id)a4;
- (void)placeCardViewController:(id)a3 editNameOfMapItem:(id)a4 saveHandler:(id)a5 cancelHandler:(id)a6;
- (void)placeCardViewController:(id)a3 editShortcut:(id)a4;
- (void)placeCardViewController:(id)a3 mapItemDidChange:(id)a4;
- (void)placeCardViewController:(id)a3 openURL:(id)a4;
- (void)placeCardViewController:(id)a3 pickCollectionWithSession:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6;
- (void)placeCardViewController:(id)a3 placeCardItemWillChange:(id)a4;
- (void)placeCardViewController:(id)a3 presentPOIEnrichmentWithCoordinator:(id)a4;
- (void)placeCardViewController:(id)a3 removeDroppedPin:(id)a4;
- (void)placeCardViewController:(id)a3 requestCopyLinkToClipboard:(id)a4;
- (void)placeCardViewController:(id)a3 seeAllCollections:(id)a4 usingTitle:(id)a5 usingCollectionIds:(id)a6;
- (void)placeCardViewController:(id)a3 selectDisplayedAddressFromPlaceCardItem:(id)a4;
- (void)placeCardViewController:(id)a3 selectTransitLineItem:(id)a4;
- (void)placeCardViewController:(id)a3 showCollection:(id)a4;
- (void)placeCardViewController:(id)a3 showOfflineMapRegionSelectorForRegion:(id)a4 name:(id)a5 muid:(unint64_t)a6 shouldShowDataManagementAfterDownload:(BOOL)a7;
- (void)placeCardViewController:(id)a3 showRelatedMapItems:(id)a4 withTitle:(id)a5 originalMapItem:(id)a6 analyticsDelegate:(id)a7;
- (void)placeCardViewController:(id)a3 showTransitIncidents:(id)a4;
- (void)placeCardViewController:(id)a3 showTransitScheduleForMapItem:(id)a4 departureSequence:(id)a5;
- (void)placeCardViewControllerRemovedObservingHandle:(id)a3;
- (void)placeCardViewControllerShowOfflineMaps:(id)a3;
- (void)placeViewControllerViewContactsClosed:(id)a3;
- (void)prepareToEnterStackInChromeViewController:(id)a3;
- (void)refinePlaceItemIfNeededWithPlaceItem:(id)a3;
- (void)removeDroppedPinWithDroppedPin:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setShortcutEditSessionController:(id)a3;
- (void)setUserGuidesPicker:(id)a3;
- (void)showAndSelectPlaceOnMapIfNeededWithPlaceCardItem:(id)a3 animated:(BOOL)a4;
- (void)updateConfiguration:(id)a3;
- (void)viewController:(id)a3 editNameOfMapItem:(id)a4 saveHandler:(id)a5 cancelHandler:(id)a6;
@end

@implementation PlaceCardContext

- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  sub_10013603C();

  sub_1000DB2F4(v10);
}

- (void)containeeViewControllerDidDismissExternally:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100136128();
}

- (id)desiredCards
{
  v2 = self;
  sub_1003C4240();

  sub_1000CE6B8(&unk_10190B260);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)configureNavigationDisplay:(id)a3
{
  sub_100014C84(0, &qword_101909920);
  v5 = a3;
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  [v5 setCameraPaused:isa];
}

- (id)personalizedItemSources
{
  v2 = self;
  sub_100182128();

  sub_100014C84(0, &qword_101909CF0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)prepareToEnterStackInChromeViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001828A4();
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = [v5 isAnimated];
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v11[4] = sub_100182B78;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100039C64;
  v11[3] = &unk_101607530;
  v9 = _Block_copy(v11);
  v10 = v6;

  [v5 addAnimations:v9];

  _Block_release(v9);
}

- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1001829E0(v6, v7);
}

- (id)placeCardViewControllerRequestsMapViewAssociatedWithVC:(id)a3
{
  v3 = [objc_allocWithZone(MKMapView) init];

  return v3;
}

- (void)placeCardViewController:(id)a3 openURL:(id)a4
{
  v7 = sub_1000CE6B8(&unk_101909B00);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  if (a4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a3;
  v13 = self;
  sub_1002B6F88(v9);

  sub_100024F64(v9, &unk_101909B00);
}

- (void)placeCardViewController:(id)a3 placeCardItemWillChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002B7128(a4);
}

- (void)placeCardViewController:(id)a3 mapItemDidChange:(id)a4
{
  v8 = self;
  v4 = [(PlaceCardContext *)v8 iosBasedChromeViewController];
  if (v4)
  {
    v5 = v4;
    [v4 setNeedsUpdateComponent:@"lookAroundButton" animated:1];
  }

  v6 = [(PlaceCardContext *)v8 iosChromeViewController];
  if (v6)
  {
    v7 = v6;
    [v6 updateComponentsIfNeeded];
  }
}

- (void)placeCardViewController:(id)a3 selectTransitLineItem:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a4)
    {
      v8 = Strong;
      v9 = objc_allocWithZone(type metadata accessor for TransitLineContext());
      swift_unknownObjectRetain_n();
      v10 = a3;
      v11 = self;
      v12 = sub_10032D920(a4);
      [v8 pushContext:v12 animated:1 completion:0];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)placeCardViewController:(id)a3 showTransitScheduleForMapItem:(id)a4 departureSequence:(id)a5
{
  v7 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  v8 = [(PlaceCardContext *)v10 iosBasedChromeViewController];
  v9 = [v8 appCoordinator];

  [v9 displayTransitSchedulesForMapItem:v7 departureSequence:a5];
  swift_unknownObjectRelease();
}

- (BOOL)placeCardViewController:(id)a3 shouldShowTransitScheduleForMapItem:(id)a4 departureSequence:(id)a5
{
  if (!a4)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a5)
  {
LABEL_7:
    __break(1u);
    return self;
  }

  v7 = objc_opt_self();

  LOBYTE(self) = [v7 shouldShowScheduleForTransitMapItem:a4 sequence:a5];
  return self;
}

- (void)placeCardViewController:(id)a3 showTransitIncidents:(id)a4
{
  if (a4)
  {
    sub_1000CE6B8(&unk_10190A7F0);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = type metadata accessor for PlaceCardContextContainee.TransitIncidentsModel();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee21TransitIncidentsModel_transitIncidents] = v5;
    v10.receiver = v7;
    v10.super_class = v6;
    v8 = self;
    v9 = [(PlaceCardContext *)&v10 init];
    sub_1003C43C8(v9 | 0x6000000000000000);
  }

  else
  {
    __break(1u);
  }
}

- (void)placeCardViewController:(id)a3 removeDroppedPin:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002B8A10();
}

- (void)placeCardViewController:(id)a3 createDroppedPin:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002B74D4(a4);
}

- (void)placeCardViewController:(id)a3 editLocationOfMarkedLocation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1002B5294(a3, a4);
}

- (void)placeCardViewController:(id)a3 displayStoreViewControllerForAppWithiTunesIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002B7660(a4);
}

- (void)placeCardViewController:(id)a3 didSelectParent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002B784C(a4);
}

- (void)placeCardViewController:(id)a3 showCollection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1002B5768(a3, a4);
}

- (void)placeCardViewController:(id)a3 editNameOfMapItem:(id)a4 saveHandler:(id)a5 cancelHandler:(id)a6
{
  v10 = _Block_copy(a5);
  v11 = _Block_copy(a6);
  v12 = v11;
  if (v10)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    v10 = sub_1002B8BD0;
    if (v12)
    {
LABEL_3:
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      v12 = sub_1000FA694;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v15 = a3;
  v16 = a4;
  v17 = self;
  sub_1002B7AF4(a4, v10, v13, v12, v14);
  sub_1000588AC(v12);
  sub_1000588AC(v10);
}

- (void)placeCardViewController:(id)a3 showRelatedMapItems:(id)a4 withTitle:(id)a5 originalMapItem:(id)a6 analyticsDelegate:(id)a7
{
  v9 = a4;
  if (a4)
  {
    sub_100014C84(0, &unk_101918390);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a5)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = a3;
  v15 = a6;
  swift_unknownObjectRetain();
  v16 = self;
  sub_1002B7CF8(v9, v12, a5);

  swift_unknownObjectRelease();
}

- (void)placeCardViewController:(id)a3 seeAllCollections:(id)a4 usingTitle:(id)a5 usingCollectionIds:(id)a6
{
  v8 = a4;
  if (a4)
  {
    sub_100014C84(0, &qword_10190D6B0);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a5)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v12;
    if (!a6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = 0;
  if (a6)
  {
LABEL_5:
    sub_100014C84(0, &qword_101919ED0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_6:
  v13 = a3;
  v14 = self;
  sub_1002B7E28(v8, v11, a5);
}

- (void)placeCardViewController:(id)a3 didUpdateLinkedPlacesFromPlaceCardItem:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a4;
    v10 = self;
    v9 = [v7 searchPinsManager];

    [v9 showLinkedPlacesAndPolygonForPlaceCardItem:v8];
  }
}

- (void)placeCardViewController:(id)a3 doDirectionItem:(id)a4 userInfo:(id)a5
{
  if (a5)
  {
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  v12 = self;
  v8 = a4;
  v9 = [(PlaceCardContext *)v12 iosBasedChromeViewController];
  v10 = [v9 appCoordinator];

  if (v10)
  {
    if (v7)
    {
      v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v11.super.isa = 0;
    }

    [v10 enterRoutePlanningWithDirectionItem:v8 allowToPromptEditing:1 withUserInfo:v11.super.isa];
  }

  else
  {
  }
}

- (void)placeCardViewController:(id)a3 selectDisplayedAddressFromPlaceCardItem:(id)a4
{
  v4 = self;
  sub_1002B5F9C();
}

- (void)ensureMapSelectionVisible
{
  v2 = self;
  sub_1002B5F9C();
}

- (void)placeCardViewController:(id)a3 presentPOIEnrichmentWithCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002B7F3C(a4);
}

- (void)placeCardViewController:(id)a3 showOfflineMapRegionSelectorForRegion:(id)a4 name:(id)a5 muid:(unint64_t)a6 shouldShowDataManagementAfterDownload:(BOOL)a7
{
  if (a5)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = a3;
  v15 = a4;
  v16 = self;
  sub_1002B8060(a3, a4, v11, v13, a7);
}

- (void)placeCardViewControllerShowOfflineMaps:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002B81E8();
}

- (void)placeCardViewControllerRemovedObservingHandle:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong popContext:self animated:1 completion:0];
  }
}

- (void)placeCardViewController:(id)a3 dismissAnimated:(BOOL)a4 completion:(id)a5
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong popContext:self animated:1 completion:0];
  }
}

- (void)placeCardViewController:(id)a3 requestCopyLinkToClipboard:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  sub_1002B8360(v10);

  sub_100024F64(v10, &unk_101908380);
}

- (void)placeCardViewController:(id)a3 doSearchItem:(id)a4 withUserInfo:(id)a5
{
  if (a5)
  {
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  v12 = self;
  v8 = a4;
  v9 = [(PlaceCardContext *)v12 iosBasedChromeViewController];
  v10 = [v9 appCoordinator];

  if (v10)
  {
    if (v7)
    {
      v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v11.super.isa = 0;
    }

    [v10 openSearch:v8 userInfo:v11.super.isa];
  }

  else
  {
  }
}

- (void)placeCardViewController:(id)a3 editShortcut:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002B84F8(a4);
}

- (void)placeCardViewController:(id)a3 pickCollectionWithSession:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = self;
  sub_1002B8630(a4, a5, x, y, width, height);
}

- (void)placeCardViewController:(id)a3 createNewCollectionWithSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002B88D0(a4);
}

- (void)placeCardViewController:(id)a3 didRequestEditingNoteWithInitialText:(id)a4 libraryAccessProvider:(id)a5 placeMUID:(unint64_t)a6 completion:(id)a7
{
  v10 = _Block_copy(a7);
  v11 = v10;
  if (!a4)
  {
    v12 = 0;
    v14 = 0;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v11 = sub_1002B8B40;
LABEL_6:
  v16 = type metadata accessor for PlaceCardContextContainee.NotesModel();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee10NotesModel_initialText];
  *v18 = v12;
  v18[1] = v14;
  *&v17[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee10NotesModel_placeMUID] = a6;
  v19 = &v17[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee10NotesModel_completion];
  *v19 = v11;
  v19[1] = v15;
  v20 = self;
  sub_1000CD9D4(v11);
  v22.receiver = v17;
  v22.super_class = v16;
  v21 = [(PlaceCardContext *)&v22 init];
  sub_1003C43C8(v21 | 0x4000000000000000);
  sub_1000588AC(v11);
}

- (void)createNewUserGuideWithSaveSession:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002B6ABC(v4);
}

- (void)removeDroppedPinWithDroppedPin:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002B8A10();
}

- (void)placeViewControllerViewContactsClosed:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = self;
  v5 = [Strong mapSelectionManager];
  [v5 clearSelection];
}

- (BOOL)chromeDidSelectMarkerForMapItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10033E684(v4);

  return 1;
}

- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_10033E7E4(a3);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (BOOL)chromeDidSelectUserLocationAnnotation:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_10033EA40(v4);

  return self & 1;
}

- (BOOL)chromeDidClearMapSelection
{
  v2 = self;
  v3 = sub_10033EBF4();

  return v3;
}

- (void)markedLocationRefinementViewControllerSelectedRemoveMarkedLocation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100392B38(v4);
}

- (void)markedLocationRefinementViewControllerDidCancel:(id)a3
{
  v5 = a3;
  v3 = [v5 presentingViewController];
  if (v3)
  {
    v4 = v3;
    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)setConfiguration:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps16PlaceCardContext_configuration);
  *(self + OBJC_IVAR____TtC4Maps16PlaceCardContext_configuration) = a3;
  v3 = a3;
}

- (AppCoordinator)appCoordinator
{
  v2 = self;
  v3 = [(PlaceCardContext *)v2 iosBasedChromeViewController];
  v4 = [v3 appCoordinator];

  return v4;
}

- (ContainerViewController)containerViewController
{
  v2 = self;
  v3 = [(PlaceCardContext *)v2 iosChromeViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 _currentContainerViewController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (GEOMapServiceTraits)newTraits
{
  v2 = self;
  v3 = [(PlaceCardContext *)v2 iosChromeViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [(GEOMapServiceTraits *)v4 currentTraits];

LABEL_5:
    return v5;
  }

  result = [objc_opt_self() sharedService];
  if (result)
  {
    v4 = result;
    v5 = [(GEOMapServiceTraits *)result defaultTraits];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

- (int64_t)displayedViewMode
{
  v2 = self;
  v3 = [(PlaceCardContext *)v2 iosChromeViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [v4 displayedViewMode];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (void)setUserGuidesPicker:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps16PlaceCardContext_userGuidesPicker);
  *(self + OBJC_IVAR____TtC4Maps16PlaceCardContext_userGuidesPicker) = a3;
  v3 = a3;
}

- (ShortcutEditSessionController)shortcutEditSessionController
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setShortcutEditSessionController:(id)a3
{
  *(self + OBJC_IVAR____TtC4Maps16PlaceCardContext_shortcutEditSessionController) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (ChromeViewController)chromeViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)updateConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100504028(v4);
}

- (id)searchResultFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10050530C(v4);

  return v6;
}

- (void)showAndSelectPlaceOnMapIfNeededWithPlaceCardItem:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_100503C08(v6, a4);
}

- (void)refinePlaceItemIfNeededWithPlaceItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100503ADC(v4);
}

- (_TtC4Maps16PlaceCardContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionPickerNewCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100534BC4(v4);
}

- (void)collectionPickerClosed:(id)a3
{
  v3 = *(self + OBJC_IVAR____TtC4Maps16PlaceCardContext_userGuidesPicker);
  *(self + OBJC_IVAR____TtC4Maps16PlaceCardContext_userGuidesPicker) = 0;
}

- (void)viewController:(id)a3 editNameOfMapItem:(id)a4 saveHandler:(id)a5 cancelHandler:(id)a6
{
  v10 = _Block_copy(a5);
  v11 = _Block_copy(a6);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_100534ED4(v14, sub_100534E7C, v12);
  _Block_release(v11);
}

@end