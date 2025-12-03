@interface PlaceCardContext
- (AppCoordinator)appCoordinator;
- (BOOL)chromeDidClearMapSelection;
- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)annotation;
- (BOOL)chromeDidSelectMarkerForMapItem:(id)item;
- (BOOL)chromeDidSelectUserLocationAnnotation:(id)annotation;
- (BOOL)placeCardViewController:(id)controller shouldShowTransitScheduleForMapItem:(id)item departureSequence:(id)sequence;
- (ChromeViewController)chromeViewController;
- (ContainerViewController)containerViewController;
- (GEOMapServiceTraits)newTraits;
- (ShortcutEditSessionController)shortcutEditSessionController;
- (_TtC4Maps16PlaceCardContext)init;
- (id)desiredCards;
- (id)personalizedItemSources;
- (id)placeCardViewControllerRequestsMapViewAssociatedWithVC:(id)c;
- (id)searchResultFor:(id)for;
- (int64_t)displayedViewMode;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)collectionPickerClosed:(id)closed;
- (void)collectionPickerNewCollection:(id)collection;
- (void)configureNavigationDisplay:(id)display;
- (void)containeeViewControllerDidDismissExternally:(id)externally;
- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender;
- (void)createNewUserGuideWithSaveSession:(id)session;
- (void)ensureMapSelectionVisible;
- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)markedLocationRefinementViewControllerDidCancel:(id)cancel;
- (void)markedLocationRefinementViewControllerSelectedRemoveMarkedLocation:(id)location;
- (void)placeCardViewController:(id)controller createDroppedPin:(id)pin;
- (void)placeCardViewController:(id)controller createNewCollectionWithSession:(id)session;
- (void)placeCardViewController:(id)controller didRequestEditingNoteWithInitialText:(id)text libraryAccessProvider:(id)provider placeMUID:(unint64_t)d completion:(id)completion;
- (void)placeCardViewController:(id)controller didSelectParent:(id)parent;
- (void)placeCardViewController:(id)controller didUpdateLinkedPlacesFromPlaceCardItem:(id)item;
- (void)placeCardViewController:(id)controller dismissAnimated:(BOOL)animated completion:(id)completion;
- (void)placeCardViewController:(id)controller displayStoreViewControllerForAppWithiTunesIdentifier:(id)identifier;
- (void)placeCardViewController:(id)controller doDirectionItem:(id)item userInfo:(id)info;
- (void)placeCardViewController:(id)controller doSearchItem:(id)item withUserInfo:(id)info;
- (void)placeCardViewController:(id)controller editLocationOfMarkedLocation:(id)location;
- (void)placeCardViewController:(id)controller editNameOfMapItem:(id)item saveHandler:(id)handler cancelHandler:(id)cancelHandler;
- (void)placeCardViewController:(id)controller editShortcut:(id)shortcut;
- (void)placeCardViewController:(id)controller mapItemDidChange:(id)change;
- (void)placeCardViewController:(id)controller openURL:(id)l;
- (void)placeCardViewController:(id)controller pickCollectionWithSession:(id)session sourceView:(id)view sourceRect:(CGRect)rect;
- (void)placeCardViewController:(id)controller placeCardItemWillChange:(id)change;
- (void)placeCardViewController:(id)controller presentPOIEnrichmentWithCoordinator:(id)coordinator;
- (void)placeCardViewController:(id)controller removeDroppedPin:(id)pin;
- (void)placeCardViewController:(id)controller requestCopyLinkToClipboard:(id)clipboard;
- (void)placeCardViewController:(id)controller seeAllCollections:(id)collections usingTitle:(id)title usingCollectionIds:(id)ids;
- (void)placeCardViewController:(id)controller selectDisplayedAddressFromPlaceCardItem:(id)item;
- (void)placeCardViewController:(id)controller selectTransitLineItem:(id)item;
- (void)placeCardViewController:(id)controller showCollection:(id)collection;
- (void)placeCardViewController:(id)controller showOfflineMapRegionSelectorForRegion:(id)region name:(id)name muid:(unint64_t)muid shouldShowDataManagementAfterDownload:(BOOL)download;
- (void)placeCardViewController:(id)controller showRelatedMapItems:(id)items withTitle:(id)title originalMapItem:(id)item analyticsDelegate:(id)delegate;
- (void)placeCardViewController:(id)controller showTransitIncidents:(id)incidents;
- (void)placeCardViewController:(id)controller showTransitScheduleForMapItem:(id)item departureSequence:(id)sequence;
- (void)placeCardViewControllerRemovedObservingHandle:(id)handle;
- (void)placeCardViewControllerShowOfflineMaps:(id)maps;
- (void)placeViewControllerViewContactsClosed:(id)closed;
- (void)prepareToEnterStackInChromeViewController:(id)controller;
- (void)refinePlaceItemIfNeededWithPlaceItem:(id)item;
- (void)removeDroppedPinWithDroppedPin:(id)pin;
- (void)setConfiguration:(id)configuration;
- (void)setShortcutEditSessionController:(id)controller;
- (void)setUserGuidesPicker:(id)picker;
- (void)showAndSelectPlaceOnMapIfNeededWithPlaceCardItem:(id)item animated:(BOOL)animated;
- (void)updateConfiguration:(id)configuration;
- (void)viewController:(id)controller editNameOfMapItem:(id)item saveHandler:(id)handler cancelHandler:(id)cancelHandler;
@end

@implementation PlaceCardContext

- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender
{
  if (sender)
  {
    stateCopy = state;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    stateCopy2 = state;
    selfCopy2 = self;
  }

  sub_10013603C();

  sub_1000DB2F4(v10);
}

- (void)containeeViewControllerDidDismissExternally:(id)externally
{
  externallyCopy = externally;
  selfCopy = self;
  sub_100136128();
}

- (id)desiredCards
{
  selfCopy = self;
  sub_1003C4240();

  sub_1000CE6B8(&unk_10190B260);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)configureNavigationDisplay:(id)display
{
  sub_100014C84(0, &qword_101909920);
  displayCopy = display;
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  [displayCopy setCameraPaused:isa];
}

- (id)personalizedItemSources
{
  selfCopy = self;
  sub_100182128();

  sub_100014C84(0, &qword_101909CF0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)prepareToEnterStackInChromeViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1001828A4();
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  isAnimated = [animationCopy isAnimated];
  v8 = swift_allocObject();
  *(v8 + 16) = selfCopy;
  *(v8 + 24) = isAnimated;
  v11[4] = sub_100182B78;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100039C64;
  v11[3] = &unk_101607530;
  v9 = _Block_copy(v11);
  v10 = selfCopy;

  [animationCopy addAnimations:v9];

  _Block_release(v9);
}

- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  selfCopy = self;
  sub_1001829E0(controllerCopy, animationCopy);
}

- (id)placeCardViewControllerRequestsMapViewAssociatedWithVC:(id)c
{
  v3 = [objc_allocWithZone(MKMapView) init];

  return v3;
}

- (void)placeCardViewController:(id)controller openURL:(id)l
{
  v7 = sub_1000CE6B8(&unk_101909B00);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  if (l)
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

  controllerCopy = controller;
  selfCopy = self;
  sub_1002B6F88(v9);

  sub_100024F64(v9, &unk_101909B00);
}

- (void)placeCardViewController:(id)controller placeCardItemWillChange:(id)change
{
  controllerCopy = controller;
  changeCopy = change;
  selfCopy = self;
  sub_1002B7128(change);
}

- (void)placeCardViewController:(id)controller mapItemDidChange:(id)change
{
  selfCopy = self;
  iosBasedChromeViewController = [(PlaceCardContext *)selfCopy iosBasedChromeViewController];
  if (iosBasedChromeViewController)
  {
    v5 = iosBasedChromeViewController;
    [iosBasedChromeViewController setNeedsUpdateComponent:@"lookAroundButton" animated:1];
  }

  iosChromeViewController = [(PlaceCardContext *)selfCopy iosChromeViewController];
  if (iosChromeViewController)
  {
    v7 = iosChromeViewController;
    [iosChromeViewController updateComponentsIfNeeded];
  }
}

- (void)placeCardViewController:(id)controller selectTransitLineItem:(id)item
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (item)
    {
      v8 = Strong;
      v9 = objc_allocWithZone(type metadata accessor for TransitLineContext());
      swift_unknownObjectRetain_n();
      controllerCopy = controller;
      selfCopy = self;
      v12 = sub_10032D920(item);
      [v8 pushContext:v12 animated:1 completion:0];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)placeCardViewController:(id)controller showTransitScheduleForMapItem:(id)item departureSequence:(id)sequence
{
  itemCopy = item;
  swift_unknownObjectRetain();
  selfCopy = self;
  iosBasedChromeViewController = [(PlaceCardContext *)selfCopy iosBasedChromeViewController];
  appCoordinator = [iosBasedChromeViewController appCoordinator];

  [appCoordinator displayTransitSchedulesForMapItem:itemCopy departureSequence:sequence];
  swift_unknownObjectRelease();
}

- (BOOL)placeCardViewController:(id)controller shouldShowTransitScheduleForMapItem:(id)item departureSequence:(id)sequence
{
  if (!item)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!sequence)
  {
LABEL_7:
    __break(1u);
    return self;
  }

  v7 = objc_opt_self();

  LOBYTE(self) = [v7 shouldShowScheduleForTransitMapItem:item sequence:sequence];
  return self;
}

- (void)placeCardViewController:(id)controller showTransitIncidents:(id)incidents
{
  if (incidents)
  {
    sub_1000CE6B8(&unk_10190A7F0);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = type metadata accessor for PlaceCardContextContainee.TransitIncidentsModel();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee21TransitIncidentsModel_transitIncidents] = v5;
    v10.receiver = v7;
    v10.super_class = v6;
    selfCopy = self;
    v9 = [(PlaceCardContext *)&v10 init];
    sub_1003C43C8(v9 | 0x6000000000000000);
  }

  else
  {
    __break(1u);
  }
}

- (void)placeCardViewController:(id)controller removeDroppedPin:(id)pin
{
  controllerCopy = controller;
  pinCopy = pin;
  selfCopy = self;
  sub_1002B8A10();
}

- (void)placeCardViewController:(id)controller createDroppedPin:(id)pin
{
  controllerCopy = controller;
  pinCopy = pin;
  selfCopy = self;
  sub_1002B74D4(pin);
}

- (void)placeCardViewController:(id)controller editLocationOfMarkedLocation:(id)location
{
  controllerCopy = controller;
  locationCopy = location;
  selfCopy = self;
  sub_1002B5294(controller, location);
}

- (void)placeCardViewController:(id)controller displayStoreViewControllerForAppWithiTunesIdentifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  selfCopy = self;
  sub_1002B7660(identifier);
}

- (void)placeCardViewController:(id)controller didSelectParent:(id)parent
{
  controllerCopy = controller;
  parentCopy = parent;
  selfCopy = self;
  sub_1002B784C(parent);
}

- (void)placeCardViewController:(id)controller showCollection:(id)collection
{
  controllerCopy = controller;
  collectionCopy = collection;
  selfCopy = self;
  sub_1002B5768(controller, collection);
}

- (void)placeCardViewController:(id)controller editNameOfMapItem:(id)item saveHandler:(id)handler cancelHandler:(id)cancelHandler
{
  v10 = _Block_copy(handler);
  v11 = _Block_copy(cancelHandler);
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
  controllerCopy = controller;
  itemCopy = item;
  selfCopy = self;
  sub_1002B7AF4(item, v10, v13, v12, v14);
  sub_1000588AC(v12);
  sub_1000588AC(v10);
}

- (void)placeCardViewController:(id)controller showRelatedMapItems:(id)items withTitle:(id)title originalMapItem:(id)item analyticsDelegate:(id)delegate
{
  itemsCopy = items;
  if (items)
  {
    sub_100014C84(0, &unk_101918390);
    itemsCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (title)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    title = v13;
  }

  else
  {
    v12 = 0;
  }

  controllerCopy = controller;
  itemCopy = item;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002B7CF8(itemsCopy, v12, title);

  swift_unknownObjectRelease();
}

- (void)placeCardViewController:(id)controller seeAllCollections:(id)collections usingTitle:(id)title usingCollectionIds:(id)ids
{
  collectionsCopy = collections;
  if (collections)
  {
    sub_100014C84(0, &qword_10190D6B0);
    collectionsCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (title)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    title = v12;
    if (!ids)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = 0;
  if (ids)
  {
LABEL_5:
    sub_100014C84(0, &qword_101919ED0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_6:
  controllerCopy = controller;
  selfCopy = self;
  sub_1002B7E28(collectionsCopy, v11, title);
}

- (void)placeCardViewController:(id)controller didUpdateLinkedPlacesFromPlaceCardItem:(id)item
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    itemCopy = item;
    selfCopy = self;
    searchPinsManager = [v7 searchPinsManager];

    [searchPinsManager showLinkedPlacesAndPolygonForPlaceCardItem:itemCopy];
  }
}

- (void)placeCardViewController:(id)controller doDirectionItem:(id)item userInfo:(id)info
{
  if (info)
  {
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  itemCopy = item;
  iosBasedChromeViewController = [(PlaceCardContext *)selfCopy iosBasedChromeViewController];
  appCoordinator = [iosBasedChromeViewController appCoordinator];

  if (appCoordinator)
  {
    if (v7)
    {
      v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v11.super.isa = 0;
    }

    [appCoordinator enterRoutePlanningWithDirectionItem:itemCopy allowToPromptEditing:1 withUserInfo:v11.super.isa];
  }

  else
  {
  }
}

- (void)placeCardViewController:(id)controller selectDisplayedAddressFromPlaceCardItem:(id)item
{
  selfCopy = self;
  sub_1002B5F9C();
}

- (void)ensureMapSelectionVisible
{
  selfCopy = self;
  sub_1002B5F9C();
}

- (void)placeCardViewController:(id)controller presentPOIEnrichmentWithCoordinator:(id)coordinator
{
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_1002B7F3C(coordinator);
}

- (void)placeCardViewController:(id)controller showOfflineMapRegionSelectorForRegion:(id)region name:(id)name muid:(unint64_t)muid shouldShowDataManagementAfterDownload:(BOOL)download
{
  if (name)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  controllerCopy = controller;
  regionCopy = region;
  selfCopy = self;
  sub_1002B8060(controller, region, v11, v13, download);
}

- (void)placeCardViewControllerShowOfflineMaps:(id)maps
{
  mapsCopy = maps;
  selfCopy = self;
  sub_1002B81E8();
}

- (void)placeCardViewControllerRemovedObservingHandle:(id)handle
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong popContext:self animated:1 completion:0];
  }
}

- (void)placeCardViewController:(id)controller dismissAnimated:(BOOL)animated completion:(id)completion
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong popContext:self animated:1 completion:0];
  }
}

- (void)placeCardViewController:(id)controller requestCopyLinkToClipboard:(id)clipboard
{
  if (clipboard)
  {
    controllerCopy = controller;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    controllerCopy2 = controller;
    selfCopy2 = self;
  }

  sub_1002B8360(v10);

  sub_100024F64(v10, &unk_101908380);
}

- (void)placeCardViewController:(id)controller doSearchItem:(id)item withUserInfo:(id)info
{
  if (info)
  {
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  itemCopy = item;
  iosBasedChromeViewController = [(PlaceCardContext *)selfCopy iosBasedChromeViewController];
  appCoordinator = [iosBasedChromeViewController appCoordinator];

  if (appCoordinator)
  {
    if (v7)
    {
      v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v11.super.isa = 0;
    }

    [appCoordinator openSearch:itemCopy userInfo:v11.super.isa];
  }

  else
  {
  }
}

- (void)placeCardViewController:(id)controller editShortcut:(id)shortcut
{
  controllerCopy = controller;
  shortcutCopy = shortcut;
  selfCopy = self;
  sub_1002B84F8(shortcut);
}

- (void)placeCardViewController:(id)controller pickCollectionWithSession:(id)session sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  sessionCopy = session;
  viewCopy = view;
  selfCopy = self;
  sub_1002B8630(session, view, x, y, width, height);
}

- (void)placeCardViewController:(id)controller createNewCollectionWithSession:(id)session
{
  controllerCopy = controller;
  sessionCopy = session;
  selfCopy = self;
  sub_1002B88D0(session);
}

- (void)placeCardViewController:(id)controller didRequestEditingNoteWithInitialText:(id)text libraryAccessProvider:(id)provider placeMUID:(unint64_t)d completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = v10;
  if (!text)
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
  *&v17[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee10NotesModel_placeMUID] = d;
  v19 = &v17[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee10NotesModel_completion];
  *v19 = v11;
  v19[1] = v15;
  selfCopy = self;
  sub_1000CD9D4(v11);
  v22.receiver = v17;
  v22.super_class = v16;
  v21 = [(PlaceCardContext *)&v22 init];
  sub_1003C43C8(v21 | 0x4000000000000000);
  sub_1000588AC(v11);
}

- (void)createNewUserGuideWithSaveSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  sub_1002B6ABC(sessionCopy);
}

- (void)removeDroppedPinWithDroppedPin:(id)pin
{
  pinCopy = pin;
  selfCopy = self;
  sub_1002B8A10();
}

- (void)placeViewControllerViewContactsClosed:(id)closed
{
  Strong = swift_unknownObjectWeakLoadStrong();
  selfCopy = self;
  mapSelectionManager = [Strong mapSelectionManager];
  [mapSelectionManager clearSelection];
}

- (BOOL)chromeDidSelectMarkerForMapItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_10033E684(itemCopy);

  return 1;
}

- (BOOL)chromeDidSelectCustomPOIAnnotation:(id)annotation
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_10033E7E4(annotation);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (BOOL)chromeDidSelectUserLocationAnnotation:(id)annotation
{
  annotationCopy = annotation;
  selfCopy = self;
  LOBYTE(self) = sub_10033EA40(annotationCopy);

  return self & 1;
}

- (BOOL)chromeDidClearMapSelection
{
  selfCopy = self;
  v3 = sub_10033EBF4();

  return v3;
}

- (void)markedLocationRefinementViewControllerSelectedRemoveMarkedLocation:(id)location
{
  locationCopy = location;
  selfCopy = self;
  sub_100392B38(locationCopy);
}

- (void)markedLocationRefinementViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  presentingViewController = [cancelCopy presentingViewController];
  if (presentingViewController)
  {
    v4 = presentingViewController;
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)setConfiguration:(id)configuration
{
  v4 = *(self + OBJC_IVAR____TtC4Maps16PlaceCardContext_configuration);
  *(self + OBJC_IVAR____TtC4Maps16PlaceCardContext_configuration) = configuration;
  configurationCopy = configuration;
}

- (AppCoordinator)appCoordinator
{
  selfCopy = self;
  iosBasedChromeViewController = [(PlaceCardContext *)selfCopy iosBasedChromeViewController];
  appCoordinator = [iosBasedChromeViewController appCoordinator];

  return appCoordinator;
}

- (ContainerViewController)containerViewController
{
  selfCopy = self;
  iosChromeViewController = [(PlaceCardContext *)selfCopy iosChromeViewController];
  if (iosChromeViewController)
  {
    v4 = iosChromeViewController;
    _currentContainerViewController = [iosChromeViewController _currentContainerViewController];
  }

  else
  {
    _currentContainerViewController = 0;
  }

  return _currentContainerViewController;
}

- (GEOMapServiceTraits)newTraits
{
  selfCopy = self;
  iosChromeViewController = [(PlaceCardContext *)selfCopy iosChromeViewController];
  if (iosChromeViewController)
  {
    v4 = iosChromeViewController;
    currentTraits = [(GEOMapServiceTraits *)v4 currentTraits];

LABEL_5:
    return currentTraits;
  }

  result = [objc_opt_self() sharedService];
  if (result)
  {
    v4 = result;
    currentTraits = [(GEOMapServiceTraits *)result defaultTraits];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

- (int64_t)displayedViewMode
{
  selfCopy = self;
  iosChromeViewController = [(PlaceCardContext *)selfCopy iosChromeViewController];
  if (iosChromeViewController)
  {
    v4 = iosChromeViewController;
    displayedViewMode = [v4 displayedViewMode];
  }

  else
  {
    displayedViewMode = -1;
  }

  return displayedViewMode;
}

- (void)setUserGuidesPicker:(id)picker
{
  v4 = *(self + OBJC_IVAR____TtC4Maps16PlaceCardContext_userGuidesPicker);
  *(self + OBJC_IVAR____TtC4Maps16PlaceCardContext_userGuidesPicker) = picker;
  pickerCopy = picker;
}

- (ShortcutEditSessionController)shortcutEditSessionController
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setShortcutEditSessionController:(id)controller
{
  *(self + OBJC_IVAR____TtC4Maps16PlaceCardContext_shortcutEditSessionController) = controller;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (ChromeViewController)chromeViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)updateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_100504028(configurationCopy);
}

- (id)searchResultFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = sub_10050530C(forCopy);

  return v6;
}

- (void)showAndSelectPlaceOnMapIfNeededWithPlaceCardItem:(id)item animated:(BOOL)animated
{
  itemCopy = item;
  selfCopy = self;
  sub_100503C08(itemCopy, animated);
}

- (void)refinePlaceItemIfNeededWithPlaceItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_100503ADC(itemCopy);
}

- (_TtC4Maps16PlaceCardContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionPickerNewCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  sub_100534BC4(collectionCopy);
}

- (void)collectionPickerClosed:(id)closed
{
  v3 = *(self + OBJC_IVAR____TtC4Maps16PlaceCardContext_userGuidesPicker);
  *(self + OBJC_IVAR____TtC4Maps16PlaceCardContext_userGuidesPicker) = 0;
}

- (void)viewController:(id)controller editNameOfMapItem:(id)item saveHandler:(id)handler cancelHandler:(id)cancelHandler
{
  v10 = _Block_copy(handler);
  v11 = _Block_copy(cancelHandler);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  controllerCopy = controller;
  itemCopy = item;
  selfCopy = self;
  sub_100534ED4(itemCopy, sub_100534E7C, v12);
  _Block_release(v11);
}

@end