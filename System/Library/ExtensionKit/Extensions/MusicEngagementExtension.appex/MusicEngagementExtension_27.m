uint64_t specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:);
  }

  else
  {
    v5 = specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:);
  }

  else
  {

    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:);
  }

  return _swift_task_switch(v5, v3, v4);
}

{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

{

  return specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)();
}

unint64_t lazy protocol witness table accessor for type ClassicalBridge.Type and conformance ClassicalBridge.Type()
{
  result = lazy protocol witness table cache variable for type ClassicalBridge.Type and conformance ClassicalBridge.Type;
  if (!lazy protocol witness table cache variable for type ClassicalBridge.Type and conformance ClassicalBridge.Type)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassicalBridge.Type and conformance ClassicalBridge.Type);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SKStoreProductViewController.StoreProductCoordinator.App(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SKStoreProductViewController.StoreProductCoordinator.App(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore15ClassicalBridgeO5ErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t getEnumTagSinglePayload for ClassicalBridge.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ClassicalBridge.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ClassicalBridge.Error(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_10029101C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in SKStoreProductViewController.StoreProductCoordinator.makeStoreProductViewController()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in SKStoreProductViewController.StoreProductCoordinator.makeStoreProductViewController()(a1, v4, v5, v7, v6);
}

uint64_t sub_10029113C()
{
  v1 = type metadata accessor for URL();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t partial apply for openApplication #1 () in static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)()
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return openApplication #1 () in static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)(v0 + v3);
}

uint64_t sub_100291290()
{

  return swift_deallocObject();
}

uint64_t sub_1002912F0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100291330()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in SKStoreProductViewController.StoreProductCoordinator.init(app:applicationInstalledBlock:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in SKStoreProductViewController.StoreProductCoordinator.init(app:applicationInstalledBlock:)(a1, v4, v5, v6);
}

uint64_t *AccessibilityString.dolbyAtmosLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for dolbyAtmosLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.dolbyAtmosLabel;
}

uint64_t *AccessibilityString.dolbyAudioLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for dolbyAudioLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.dolbyAudioLabel;
}

uint64_t *AccessibilityString.losslessLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for losslessLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.losslessLabel;
}

uint64_t *AccessibilityString.hiResLosslessLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for hiResLosslessLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.hiResLosslessLabel;
}

uint64_t static String.socialDisconnectMessage(networkName:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v21[-v10];
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x80000001004CFCE0;
  v13._countAndFlagsBits = 0xD000000000000017;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  v14._countAndFlagsBits = a1;
  v14._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v14);
  v15._object = 0x80000001004CFD00;
  v15._countAndFlagsBits = 0x1000000000000060;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
  v16._countAndFlagsBits = a1;
  v16._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v16);
  v17._countAndFlagsBits = 46;
  v17._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v6 + 16))(v9, v11, v5);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v18 = static NSBundle.module;
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  (*(v6 + 8))(v11, v5);
  return v19;
}

uint64_t MPModelTVShow.localizedEpisodeCount.getter()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v15 - v7;
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  v15[1] = [v0 episodesCount];
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v11._countAndFlagsBits = 0x65646F7369704520;
  v11._object = 0xEB00000000297328;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v3 + 16))(v6, v8, v2);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v12 = static NSBundle.module;
  static Locale.current.getter();
  v13 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v8, v2);
  return v13;
}

void *AccessibilityString.albumArtworkLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for albumArtworkLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.albumArtworkLabel;
}

uint64_t one-time initialization function for playlistArtworkLabel()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v8 = &v19[-v7];
  __chkstk_darwin(v6);
  v10 = &v19[-v9];
  String.LocalizationValue.init(stringLiteral:)();
  v11 = *(v2 + 16);
  v11(v8, v10, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v12 = static NSBundle.module;
  v11(v5, v8, v1);
  v13 = v12;
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  v17 = *(v2 + 8);
  v17(v8, v1);
  result = (v17)(v10, v1);
  static AccessibilityString.playlistArtworkLabel = v14;
  *algn_10063EAF8 = v16;
  return result;
}

uint64_t *AccessibilityString.playlistArtworkLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistArtworkLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.playlistArtworkLabel;
}

void *AccessibilityString.qrCodeButtonLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for qrCodeButtonLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.qrCodeButtonLabel;
}

uint64_t one-time initialization function for favoriteBadgeLabel()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v8 = &v19[-v7];
  __chkstk_darwin(v6);
  v10 = &v19[-v9];
  String.LocalizationValue.init(stringLiteral:)();
  v11 = *(v2 + 16);
  v11(v8, v10, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v12 = static NSBundle.module;
  v11(v5, v8, v1);
  v13 = v12;
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  v17 = *(v2 + 8);
  v17(v8, v1);
  result = (v17)(v10, v1);
  static AccessibilityString.favoriteBadgeLabel = v14;
  *algn_10063EB58 = v16;
  return result;
}

uint64_t *AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for favoriteBadgeLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.favoriteBadgeLabel;
}

void *AccessibilityString.popularBadgeLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for popularBadgeLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.popularBadgeLabel;
}

void *AccessibilityString.immersiveBadgeLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for immersiveBadgeLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.immersiveBadgeLabel;
}

void *AccessibilityString.nowPlayingWafeformLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for nowPlayingWafeformLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.nowPlayingWafeformLabel;
}

void *AccessibilityString.pausedWafeformLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for pausedWafeformLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.pausedWafeformLabel;
}

void *AccessibilityString.favoriteButtonLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for favoriteButtonLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.favoriteButtonLabel;
}

void *AccessibilityString.undoFavoriteButtonLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for undoFavoriteButtonLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.undoFavoriteButtonLabel;
}

void *AccessibilityString.playbackPlayButtonLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for playbackPlayButtonLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.playbackPlayButtonLabel;
}

uint64_t one-time initialization function for albumArtworkLabel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v25[0] = a5;
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v25 - v13;
  __chkstk_darwin(v12);
  v16 = v25 - v15;
  String.LocalizationValue.init(stringLiteral:)();
  v17 = *(v8 + 16);
  v17(v14, v16, v7);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v18 = static NSBundle.module;
  v17(v11, v14, v7);
  v19 = v18;
  static Locale.current.getter();
  v20 = String.init(localized:table:bundle:locale:comment:)();
  v22 = v21;
  v23 = *(v8 + 8);
  v23(v14, v7);
  result = (v23)(v16, v7);
  *a4 = v20;
  *v25[0] = v22;
  return result;
}

void *AccessibilityString.playbackShuffleButtonLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for playbackShuffleButtonLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.playbackShuffleButtonLabel;
}

uint64_t static AccessibilityString.albumArtworkLabel.getter(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;

  return v2;
}

id NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

void NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.setter()
{
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];
}

uint64_t NSUserDefaults.applicationScriptURL.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = 0xD000000000000014;
  v6 = 0x80000001004CFDB0;
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&v5, &v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      v2 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v2 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v2)
      {
        URL.init(string:)();
      }
    }
  }

  else
  {
    outlined destroy of Any?(&v7);
  }

  v4 = type metadata accessor for URL();
  return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
}

uint64_t NSUserDefaults.showAllTVShows.getter()
{
  strcpy(v1, "showAllTVShows");
  v1[15] = -18;
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(v1, &v2);
  if (v3)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v1[0];
    }
  }

  else
  {
    outlined destroy of Any?(&v2);
    return 0;
  }

  return result;
}

void (*NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.modify(uint64_t a1))(void **a1)
{
  *a1 = v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 BOOLForKey:v3];

  *(a1 + 8) = v4;
  return NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.modify;
}

void NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.modify(void **a1)
{
  v1 = *a1;
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKey:v2];
}

id NSUserDefaults.hasSeenDolbyDownloadConflictAlert.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

void NSUserDefaults.hasSeenDolbyDownloadConflictAlert.setter()
{
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];
}

void (*NSUserDefaults.hasSeenDolbyDownloadConflictAlert.modify(uint64_t a1))(void **a1)
{
  *a1 = v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 BOOLForKey:v3];

  *(a1 + 8) = v4;
  return NSUserDefaults.hasSeenDolbyDownloadConflictAlert.modify;
}

void NSUserDefaults.hasSeenDolbyDownloadConflictAlert.modify(void **a1)
{
  v1 = *a1;
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKey:v2];
}

char *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor()
{
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.isInternalInstall;
}

uint64_t *DeviceCapabilities.deviceFamily.unsafeMutableAddressor()
{
  if (one-time initialization token for deviceFamily != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.deviceFamily;
}

uint64_t *DeviceCapabilities.deviceModel.unsafeMutableAddressor()
{
  if (one-time initialization token for deviceModel != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.deviceModel;
}

char *DeviceCapabilities.deviceType.unsafeMutableAddressor()
{
  if (one-time initialization token for deviceType != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.deviceType;
}

id static DeviceCapabilities.hasWAPICapability.getter(uint64_t (*a1)(void))
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    v4 = a1();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for isInternalInstall()
{
  result = os_variant_has_internal_content();
  static DeviceCapabilities.isInternalInstall = result;
  return result;
}

uint64_t one-time initialization function for deviceType()
{
  result = closure #1 in variable initialization expression of static DeviceCapabilities.deviceType();
  static DeviceCapabilities.deviceType = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static DeviceCapabilities.deviceType()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber > 2)
    {
      if (deviceClassNumber != 11)
      {
        if (deviceClassNumber == 3)
        {
          return 2;
        }

        return 0;
      }

      return 4;
    }

    else
    {
      if (deviceClassNumber != 1)
      {
        if (deviceClassNumber == 2)
        {
          return 3;
        }

        return 0;
      }

      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static DeviceCapabilities.deviceType.getter()
{
  if (one-time initialization token for deviceType != -1)
  {
    swift_once();
  }

  return static DeviceCapabilities.deviceType;
}

void one-time initialization function for deviceFamily(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void *a4)
{
  v7 = MobileGestalt_get_current_device();
  if (v7)
  {
    v8 = v7;
    v9 = a2();

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *a3 = v10;
      *a4 = v12;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t one-time initialization function for supportsHighFrameRateLyricsBackground()
{
  v0 = 0;
  result = MGGetProductType();
  if (result > 2158787295)
  {
    if (result <= 2311900305)
    {
      if (result != 2158787296 && result != 2270970153)
      {
        goto LABEL_17;
      }
    }

    else if (result != 2311900306 && result != 3645319985 && result != 3242623367)
    {
      goto LABEL_17;
    }
  }

  else if (result <= 820711326)
  {
    if (result != 228444038 && result != 502329937)
    {
      goto LABEL_17;
    }
  }

  else if (result != 820711327 && result != 1429914406 && result != 1721691077)
  {
LABEL_17:
    v0 = 1;
  }

  static DeviceCapabilities.supportsHighFrameRateLyricsBackground = v0;
  return result;
}

char *DeviceCapabilities.supportsHighFrameRateLyricsBackground.unsafeMutableAddressor()
{
  if (one-time initialization token for supportsHighFrameRateLyricsBackground != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.supportsHighFrameRateLyricsBackground;
}

uint64_t one-time initialization function for supportsMotionBlur()
{
  result = MGGetProductType();
  static DeviceCapabilities.supportsMotionBlur = result != 1325975682;
  return result;
}

char *DeviceCapabilities.supportsMotionBlur.unsafeMutableAddressor()
{
  if (one-time initialization token for supportsMotionBlur != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.supportsMotionBlur;
}

void one-time initialization function for hasExtendedColorDisplay()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    hasExtendedColorDisplay = MobileGestalt_get_hasExtendedColorDisplay();

    static DeviceCapabilities.hasExtendedColorDisplay = hasExtendedColorDisplay;
  }

  else
  {
    __break(1u);
  }
}

char *DeviceCapabilities.hasExtendedColorDisplay.unsafeMutableAddressor()
{
  if (one-time initialization token for hasExtendedColorDisplay != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.hasExtendedColorDisplay;
}

uint64_t static DeviceCapabilities.isInternalInstall.getter(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

id static DeviceCapabilitiesObjC.hasWAPICapability.getter()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    return wapiCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static DeviceCapabilities.diskUsage.getter()
{
  if (!MGCopyAnswer())
  {
    goto LABEL_46;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefas5Int64VGMd);
  swift_dynamicCast();
  v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MusicCore18DeviceCapabilitiesO17DiskUsageCategoryO_s5Int64VTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v0 = 1 << *(v47 + 32);
  v1 = -1;
  if (v0 < 64)
  {
    v1 = ~(-1 << v0);
  }

  v2 = v1 & *(v47 + 64);
  v3 = (v0 + 63) >> 6;
  v4 = kMGQDiskUsageTotalSystemCapacity;
  v5 = kMGQDiskUsageTotalSystemAvailable;
  v44 = kMGQDiskUsageTotalDataCapacity;
  v43 = kMGQDiskUsageTotalDataAvailable;
  v42 = kMGQDiskUsageTotalDiskCapacity;

  v6 = 0;
  v45 = v4;
  v46 = v5;
  if (v2)
  {
    while (1)
    {
LABEL_12:
      v8 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v9 = (v6 << 9) | (8 * v8);
      v10 = *(*(v47 + 48) + v9);
      v41 = *(*(v47 + 56) + v9);
      if (v4)
      {
        type metadata accessor for CFStringRef(0);
        lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
        v11 = v10;
        v12 = v4;
        v13 = static _CFObject.== infix(_:_:)();

        v5 = v46;
        if (v13)
        {
          v26 = 0;
          goto LABEL_29;
        }

        if (!v46)
        {
          goto LABEL_18;
        }

LABEL_17:
        type metadata accessor for CFStringRef(0);
        lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
        v15 = v10;
        v16 = v5;
        v17 = static _CFObject.== infix(_:_:)();

        if ((v17 & 1) == 0)
        {
          goto LABEL_18;
        }

        v26 = 1;
LABEL_29:

LABEL_30:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
        v30 = v40[2];
        v31 = (v29 & 1) == 0;
        v32 = __OFADD__(v30, v31);
        v33 = v30 + v31;
        if (v32)
        {
          goto LABEL_44;
        }

        v34 = v29;
        if (v40[3] >= v33)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v38 = v28;
            specialized _NativeDictionary.copy()();
            v28 = v38;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
          v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
          if ((v34 & 1) != (v35 & 1))
          {
            goto LABEL_47;
          }
        }

        if (v34)
        {
          *(v40[7] + 8 * v28) = v41;
        }

        else
        {
          v40[(v28 >> 6) + 8] |= 1 << v28;
          *(v40[6] + v28) = v26;
          *(v40[7] + 8 * v28) = v41;

          v36 = v40[2];
          v32 = __OFADD__(v36, 1);
          v37 = v36 + 1;
          if (v32)
          {
            goto LABEL_45;
          }

          v40[2] = v37;
        }

        v4 = v45;
        v5 = v46;
        if (!v2)
        {
          break;
        }
      }

      else
      {
        v14 = v10;
        if (v5)
        {
          goto LABEL_17;
        }

LABEL_18:
        if (v44)
        {
          type metadata accessor for CFStringRef(0);
          lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
          v18 = v10;
          v19 = v44;
          v20 = static _CFObject.== infix(_:_:)();

          if (v20)
          {
            v26 = 2;
            goto LABEL_29;
          }
        }

        if (v43)
        {
          type metadata accessor for CFStringRef(0);
          lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
          v21 = v10;
          v22 = v43;
          v23 = static _CFObject.== infix(_:_:)();

          if (v23)
          {
            v26 = 3;
            goto LABEL_29;
          }
        }

        if (v42)
        {
          type metadata accessor for CFStringRef(0);
          lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
          v24 = v42;
          v25 = static _CFObject.== infix(_:_:)();

          v5 = v46;
          if (v25)
          {
            v26 = 4;
            goto LABEL_30;
          }
        }

        else
        {

          v5 = v46;
        }

        v4 = v45;
        if (!v2)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v3)
    {

      return v40;
    }

    v2 = *(v47 + 64 + 8 * v7);
    ++v6;
    if (v2)
    {
      v6 = v7;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DeviceCapabilities.DiskUsageCategory and conformance DeviceCapabilities.DiskUsageCategory()
{
  result = lazy protocol witness table cache variable for type DeviceCapabilities.DiskUsageCategory and conformance DeviceCapabilities.DiskUsageCategory;
  if (!lazy protocol witness table cache variable for type DeviceCapabilities.DiskUsageCategory and conformance DeviceCapabilities.DiskUsageCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceCapabilities.DiskUsageCategory and conformance DeviceCapabilities.DiskUsageCategory);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DeviceCapabilities.DeviceType and conformance DeviceCapabilities.DeviceType()
{
  result = lazy protocol witness table cache variable for type DeviceCapabilities.DeviceType and conformance DeviceCapabilities.DeviceType;
  if (!lazy protocol witness table cache variable for type DeviceCapabilities.DeviceType and conformance DeviceCapabilities.DeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceCapabilities.DeviceType and conformance DeviceCapabilities.DeviceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef()
{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

uint64_t *EnvironmentMonitor.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static EnvironmentMonitor.shared;
}

id static EnvironmentMonitor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static EnvironmentMonitor.shared;

  return v1;
}

uint64_t EnvironmentMonitor.isNetworkConstrained.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentMonitor and conformance EnvironmentMonitor();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained);
}

uint64_t key path getter for EnvironmentMonitor.isNetworkConstrained : EnvironmentMonitor@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentMonitor and conformance EnvironmentMonitor();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained);
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentMonitor and conformance EnvironmentMonitor()
{
  result = lazy protocol witness table cache variable for type EnvironmentMonitor and conformance EnvironmentMonitor;
  if (!lazy protocol witness table cache variable for type EnvironmentMonitor and conformance EnvironmentMonitor)
  {
    type metadata accessor for EnvironmentMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentMonitor and conformance EnvironmentMonitor);
  }

  return result;
}

uint64_t type metadata accessor for EnvironmentMonitor()
{
  result = type metadata singleton initialization cache for EnvironmentMonitor;
  if (!type metadata singleton initialization cache for EnvironmentMonitor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnvironmentMonitor.isNetworkConstrained.setter(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    lazy protocol witness table accessor for type EnvironmentMonitor and conformance EnvironmentMonitor();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t EnvironmentMonitor.thermalLevel.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentMonitor and conformance EnvironmentMonitor();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel);
}

uint64_t key path getter for EnvironmentMonitor.thermalLevel : EnvironmentMonitor@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentMonitor and conformance EnvironmentMonitor();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel);
  return result;
}

uint64_t EnvironmentMonitor.thermalLevel.setter(uint64_t result)
{
  if (qword_100506CD0[*(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel)] == qword_100506CD0[result])
  {
    *(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel) = result;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    lazy protocol witness table accessor for type EnvironmentMonitor and conformance EnvironmentMonitor();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EnvironmentMonitor.ThermalLevel()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100506CD0[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EnvironmentMonitor.ThermalLevel()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100506CD0[v1]);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance EnvironmentMonitor.ThermalLevel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized EnvironmentMonitor.ThermalLevel.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

id EnvironmentMonitor.().init()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v0[OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained] = 0;
  v0[OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel] = 0;
  ObservationRegistrar.init()();
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, "init");
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v8 = v5;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in EnvironmentMonitor.().init(), v7);

  outlined destroy of TaskPriority?(v4);
  return v8;
}

uint64_t closure #1 in EnvironmentMonitor.().init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v4 + 24) = swift_task_alloc();

  return _swift_task_switch(closure #1 in EnvironmentMonitor.().init(), 0, 0);
}

uint64_t closure #1 in EnvironmentMonitor.().init()()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [objc_opt_self() sharedMonitor];
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v2;
  v7 = v3;
  v8 = v2;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v1, &closure #1 in EnvironmentMonitor.updateIsNetworkConstrained(_:)partial apply, v6);

  outlined destroy of TaskPriority?(v1);
  v5(v1, 1, 1, v4);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = v8;
  v10 = v7;
  v11 = v8;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v1, &closure #1 in EnvironmentMonitor.updateThermalLevel(_:)partial apply, v9);

  outlined destroy of TaskPriority?(v1);
  [v10 registerObserver:v11];

  v12 = v0[1];

  return v12();
}

id EnvironmentMonitor.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() sharedMonitor];
  [v2 unregisterObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t closure #1 in EnvironmentMonitor.updateIsNetworkConstrained(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(closure #1 in EnvironmentMonitor.updateIsNetworkConstrained(_:), 0, 0);
}

uint64_t closure #1 in EnvironmentMonitor.updateIsNetworkConstrained(_:)()
{
  *(v0 + 48) = [*(v0 + 24) isNetworkConstrained];
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in EnvironmentMonitor.updateIsNetworkConstrained(_:), v2, v1);
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  swift_getKeyPath();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type EnvironmentMonitor and conformance EnvironmentMonitor();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v1 != *(v2 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained))
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 32);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 16) = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t EnvironmentMonitor.environmentMonitorDidChangeNetworkReachability(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = v3;
  v11 = a1;
  v12 = v3;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v8, a3, v10);

  return outlined destroy of TaskPriority?(v8);
}

uint64_t @objc EnvironmentMonitor.environmentMonitorDidChangeNetworkReachability(_:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = a1;
  v13 = a3;
  v14 = a1;
  v15 = v13;
  v16 = v14;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v10, a5, v12);

  return outlined destroy of TaskPriority?(v10);
}

uint64_t closure #1 in EnvironmentMonitor.updateThermalLevel(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(closure #1 in EnvironmentMonitor.updateThermalLevel(_:), 0, 0);
}

uint64_t closure #1 in EnvironmentMonitor.updateThermalLevel(_:)()
{
  v1 = [*(v0 + 24) currentThermalLevel];
  if (HIDWORD(v1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 48) = specialized EnvironmentMonitor.ThermalLevel.init(osThermalPressureLevel:)(v1);
    type metadata accessor for MainActor();
    *(v0 + 40) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v1 = closure #1 in EnvironmentMonitor.updateThermalLevel(_:);
    v2 = v4;
    v3 = v6;
  }

  return _swift_task_switch(v1, v2, v3);
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  swift_getKeyPath();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type EnvironmentMonitor and conformance EnvironmentMonitor();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (qword_100506CD0[v1] != qword_100506CD0[*(v2 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel)])
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 32);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 16) = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t specialized EnvironmentMonitor.ThermalLevel.init(osThermalPressureLevel:)(uint64_t result)
{
  if (result > 29)
  {
    switch(result)
    {
      case 0x1E:
        return 3;
      case 0x28:
        return 4;
      case 0x32:
        return 5;
    }
  }

  else
  {
    switch(result)
    {
      case 0:
        return result;
      case 0xA:
        return 1;
      case 0x14:
        return 2;
    }
  }

  return 6;
}

uint64_t specialized EnvironmentMonitor.ThermalLevel.init(rawValue:)(uint64_t result)
{
  if (result > 19)
  {
    if (result > 39)
    {
      if (result == 40)
      {
        return 4;
      }

      if (result == 50)
      {
        return 5;
      }
    }

    else
    {
      if (result == 20)
      {
        return 2;
      }

      if (result == 30)
      {
        return 3;
      }
    }

    return 7;
  }

  if (result == -1)
  {
    return 6;
  }

  if (result)
  {
    if (result == 10)
    {
      return 1;
    }

    return 7;
  }

  return result;
}

uint64_t partial apply for closure #1 in EnvironmentMonitor.updateIsNetworkConstrained(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in EnvironmentMonitor.updateIsNetworkConstrained(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in EnvironmentMonitor.updateThermalLevel(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in EnvironmentMonitor.updateThermalLevel(_:)(a1, v4, v5, v7, v6);
}

unint64_t lazy protocol witness table accessor for type EnvironmentMonitor.ThermalLevel and conformance EnvironmentMonitor.ThermalLevel()
{
  result = lazy protocol witness table cache variable for type EnvironmentMonitor.ThermalLevel and conformance EnvironmentMonitor.ThermalLevel;
  if (!lazy protocol witness table cache variable for type EnvironmentMonitor.ThermalLevel and conformance EnvironmentMonitor.ThermalLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentMonitor.ThermalLevel and conformance EnvironmentMonitor.ThermalLevel);
  }

  return result;
}

uint64_t type metadata completion function for EnvironmentMonitor()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in EnvironmentMonitor.updateThermalLevel(_:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in EnvironmentMonitor.updateThermalLevel(_:)(a1, v4, v5, v7, v6);
}

uint64_t sub_10029572C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in EnvironmentMonitor.().init()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in EnvironmentMonitor.().init()(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_12()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t *ExplicitRestrictionsController.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static ExplicitRestrictionsController.shared;
}

BOOL ExplicitRestrictionsController.explicitContentIsAllowed.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v2)
  {
    return 0;
  }

  v0 = [v2 status];

  return (v0 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

uint64_t ExplicitRestrictionsController.accountVerificationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v12;
  if (v12)
  {
    v6 = [v12 verificationURL];

    if (v6)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v4, v7, 1, v10);
    return outlined init with take of URL?(v4, a1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t static ExplicitRestrictionsController.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t ExplicitRestrictionsController.().init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22ICAgeVerificationStateCSgGMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  LOBYTE(v23) = 0;
  Published.init(initialValue:)();
  (*(v7 + 32))(v1 + v10, v9, v6);
  v11 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22ICAgeVerificationStateCSgMd);
  Published.init(initialValue:)();
  (*(v3 + 32))(v1 + v11, v5, v2);
  v12 = (v1 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
  if (one-time initialization token for symbols != -1)
  {
    swift_once();
  }

  v13 = unk_10063EC30;
  *v12 = static ExplicitRestrictionsController.symbols;
  v12[1] = v13;
  v14 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_bindings;
  *(v1 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_bindings) = &_swiftEmptyArrayStorage;

  ExplicitRestrictionsController.updateDeviceContentRestriction()();
  ExplicitRestrictionsController.updateContentRestrictionTreatment()();
  ExplicitRestrictionsController.updateAgeVerification()();
  type metadata accessor for Whitetail.Binding();
  v15 = MPRestrictionsMonitorAllowsExplicitContentDidChangeNotification;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = v15;

  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v17, 1, partial apply for closure #1 in ExplicitRestrictionsController.().init(), v16);
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v18 = ICAgeVerificationStateDidChangeNotification;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = v18;

  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v20, 1, partial apply for closure #2 in ExplicitRestrictionsController.().init(), v19);
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  return v1;
}

void ExplicitRestrictionsController.updateDeviceContentRestriction()()
{
  v0 = [objc_opt_self() sharedRestrictionsMonitor];
  [v0 allowsExplicitContent];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  ExplicitRestrictionsController.profileAllowsExplicitContent.didset(v1);
}

uint64_t ExplicitRestrictionsController.updateContentRestrictionTreatment()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 && (v1 = [v7 treatment], v7, v1 == 1))
  {
    if (one-time initialization token for symbols != -1)
    {
      swift_once();
    }

    v2 = &qword_10063EC38;
  }

  else
  {
    if (one-time initialization token for symbols != -1)
    {
      swift_once();
    }

    v2 = &static ExplicitRestrictionsController.symbols;
  }

  v4 = *v2;
  v3 = v2[1];
  v5 = (v0 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
  swift_beginAccess();
  *v5 = v4;
  v5[1] = v3;
}

void ExplicitRestrictionsController.updateAgeVerification()()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 ageVerificationState];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v3;

  v5 = v3;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v10)
  {
    if (v4)
    {
      type metadata accessor for ICAgeVerificationState();
      v6 = v4;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {

        v5 = v6;
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  else if (!v4)
  {
    goto LABEL_11;
  }

  v8 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for Notifications != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:static ExplicitRestrictionsController.Notifications object:v1];

  v5 = v4;
LABEL_11:
}

uint64_t closure #1 in ExplicitRestrictionsController.().init()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ExplicitRestrictionsController.updateDeviceContentRestriction()();
  }

  return result;
}

uint64_t closure #2 in ExplicitRestrictionsController.().init()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ExplicitRestrictionsController.updateAgeVerification()();
    ExplicitRestrictionsController.updateContentRestrictionTreatment()();
  }

  return result;
}

uint64_t ExplicitRestrictionsController.profileAllowsExplicitContent.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t ExplicitRestrictionsController.ageVerification.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for ExplicitRestrictionsController.profileAllowsExplicitContent : ExplicitRestrictionsController@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

void key path setter for ExplicitRestrictionsController.profileAllowsExplicitContent : ExplicitRestrictionsController()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  ExplicitRestrictionsController.profileAllowsExplicitContent.didset(v0);
}

void ExplicitRestrictionsController.profileAllowsExplicitContent.didset(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 != v2)
  {
    v3 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for Notifications != -1)
    {
      swift_once();
    }

    [v3 postNotificationName:qword_100608768 object:v1];
  }
}

uint64_t key path setter for ExplicitRestrictionsController.$profileAllowsExplicitContent : ExplicitRestrictionsController(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t key path getter for ExplicitRestrictionsController.ageVerification : ExplicitRestrictionsController@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

void key path setter for ExplicitRestrictionsController.ageVerification : ExplicitRestrictionsController(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  specialized ExplicitRestrictionsController.ageVerification.setter(v1);
}

void sub_100296B94(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  specialized ExplicitRestrictionsController.ageVerification.setter(v1);
}

uint64_t key path setter for ExplicitRestrictionsController.$ageVerification : ExplicitRestrictionsController(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo22ICAgeVerificationStateCSg_GMd);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22ICAgeVerificationStateCSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t *ExplicitRestrictionsController.symbols.unsafeMutableAddressor()
{
  if (one-time initialization token for symbols != -1)
  {
    swift_once();
  }

  return &static ExplicitRestrictionsController.symbols;
}

uint64_t ExplicitRestrictionsController.symbol.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void one-time initialization function for symbols()
{
  static ExplicitRestrictionsController.symbols = 3028656112;
  unk_10063EC30 = 0xA400000000000000;
  qword_10063EC38 = 11768802;
  unk_10063EC40 = 0xA300000000000000;
}

uint64_t static ExplicitRestrictionsController.symbols.getter()
{
  if (one-time initialization token for symbols != -1)
  {
    swift_once();
  }

  v0 = static ExplicitRestrictionsController.symbols;

  return v0;
}

uint64_t ExplicitRestrictionsController.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22ICAgeVerificationStateCSgGMd);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t ExplicitRestrictionsController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22ICAgeVerificationStateCSgGMd);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

NSString one-time initialization function for Notifications()
{
  static ExplicitRestrictionsController.Notifications = String._bridgeToObjectiveC()();
  result = String._bridgeToObjectiveC()();
  qword_100608768 = result;
  return result;
}

uint64_t type metadata accessor for ExplicitRestrictionsController()
{
  result = type metadata singleton initialization cache for ExplicitRestrictionsController;
  if (!type metadata singleton initialization cache for ExplicitRestrictionsController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ExplicitRestrictionsController()
{
  type metadata accessor for Published<Bool>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<ICAgeVerificationState?>();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<ICAgeVerificationState?>()
{
  if (!lazy cache variable for type metadata for Published<ICAgeVerificationState?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo22ICAgeVerificationStateCSgMd);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<ICAgeVerificationState?>);
    }
  }
}

void specialized ExplicitRestrictionsController.ageVerification.setter(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = a1;
  if (a1)
  {
    if (v9)
    {
      type metadata accessor for ICAgeVerificationState();
      v6 = v9;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
LABEL_11:

        return;
      }
    }

    else
    {
    }

LABEL_8:
    v8 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for Notifications != -1)
    {
      swift_once();
    }

    [v8 postNotificationName:static ExplicitRestrictionsController.Notifications object:v2];

    v6 = v9;
    goto LABEL_11;
  }

  if (v9)
  {
    goto LABEL_8;
  }
}

unint64_t type metadata accessor for ICAgeVerificationState()
{
  result = lazy cache variable for type metadata for ICAgeVerificationState;
  if (!lazy cache variable for type metadata for ICAgeVerificationState)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ICAgeVerificationState);
  }

  return result;
}

uint64_t sub_10029755C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t LaunchURL.GenericHandler.perform(withURL:)(uint64_t a1, int *a2)
{
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = LaunchURL.GenericHandler.perform(withURL:);

  return v7(a1);
}

uint64_t LaunchURL.GenericHandler.perform(withURL:)(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = LaunchURL.GenericHandler.perform(withURL:);
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = LaunchURL.GenericHandler.perform(withURL:);
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t LaunchURL.GenericHandler.perform(withURL:)()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t protocol witness for LaunchURLHandler.perform(withURL:) in conformance LaunchURL.GenericHandler(uint64_t a1)
{
  v4 = *v1;
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = protocol witness for LaunchURLHandler.perform(withURL:) in conformance LaunchURL.GenericHandler;

  return v7(a1);
}

uint64_t protocol witness for LaunchURLHandler.perform(withURL:) in conformance LaunchURL.GenericHandler(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = protocol witness for LaunchURLHandler.perform(withURL:) in conformance LaunchURL.GenericHandler;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = protocol witness for LaunchURLHandler.perform(withURL:) in conformance LaunchURL.GenericHandler;
  }

  return _swift_task_switch(v8, v5, v7);
}

id *static LaunchURL.ArrayBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1 + 32;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    outlined init with copy of LaunchURLHandler?(v2, &v10);
    v7[0] = v10;
    v7[1] = v11;
    v8 = v12;
    if (*(&v11 + 1))
    {
      outlined init with take of ActionPerforming(v7, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
      }

      v5 = v3[2];
      v4 = v3[3];
      if (v5 >= v4 >> 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
      }

      v3[2] = (v5 + 1);
      outlined init with take of ActionPerforming(v9, &v3[5 * v5 + 4]);
    }

    else
    {
      outlined destroy of LaunchURLHandler?(v7);
    }

    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t outlined init with copy of LaunchURLHandler?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16LaunchURLHandler_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of LaunchURLHandler?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16LaunchURLHandler_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id *static LaunchURL.ArrayBuilder.buildOptional(_:)(uint64_t a1)
{
  outlined init with copy of LaunchURLHandler?(a1, &v3);
  if (v4)
  {
    outlined init with take of ActionPerforming(&v3, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore16LaunchURLHandler_pGMd);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1004F2400;
    outlined init with take of ActionPerforming(v5, v1 + 32);
  }

  else
  {
    outlined destroy of LaunchURLHandler?(&v3);
    return _swiftEmptyArrayStorage;
  }

  return v1;
}

uint64_t static LaunchURL.ArrayBuilder.buildEither(first:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore16LaunchURLHandler_pGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004F2400;
  outlined init with copy of ActionPerforming(a1, v2 + 32);
  return v2;
}

uint64_t LaunchURL.Resolver.init(perform:handlerBuilder:)@<X0>(char a1@<W0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for LaunchURL.Resolver();
  v6 = Logger.init(subsystem:category:)();
  *a3 = a1 & 1;
  result = a2(v6);
  *(a3 + 8) = result;
  return result;
}

uint64_t LaunchURL.Resolver.perform(withURL:)(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = type metadata accessor for URL();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(LaunchURL.Resolver.perform(withURL:), 0, 0);
}

void LaunchURL.Resolver.perform(withURL:)()
{
  v62 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  *(v0 + 392) = *(type metadata accessor for LaunchURL.Resolver() + 24);
  v5 = *(v3 + 16);
  *(v0 + 320) = v5;
  *(v0 + 328) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 312);
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v61 = v59;
    *v12 = 136446210;
    lazy protocol witness table accessor for type URL and conformance URL();
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v13, v15, &v61);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Evaluating URL=%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  *(v0 + 336) = v16;
  v18 = *(*(v0 + 264) + 8);
  *(v0 + 344) = v18;
  v19 = *(v18 + 16);
  *(v0 + 352) = v19;
  if (v19)
  {
    *(v0 + 360) = 0;
    *(v0 + 368) = _swiftEmptyArrayStorage;
    if (*(v18 + 16))
    {
      v20 = *(v0 + 320);
      v21 = *(v0 + 304);
      v22 = *(v0 + 272);
      v23 = *(v0 + 256);
      outlined init with copy of ActionPerforming(v18 + 32, v0 + 16);
      v20(v21, v23, v22);
      outlined init with copy of ActionPerforming(v0 + 16, v0 + 56);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();
      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 336);
      v28 = *(v0 + 304);
      v29 = *(v0 + 272);
      if (v26)
      {
        v30 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v30 = 136446466;
        lazy protocol witness table accessor for type URL and conformance URL();
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        v27(v28, v29);
        v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v31, v33, &v61);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2082;
        outlined init with copy of ActionPerforming(v0 + 56, v0 + 216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16LaunchURLHandler_pMd);
        v35 = String.init<A>(describing:)();
        v37 = v36;
        __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
        v38 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v35, v37, &v61);

        *(v30 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v24, v25, "Resolving URL=%{public}s with handler=%{public}s", v30, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
        v27(v28, v29);
      }

      v53 = *(v0 + 40);
      v54 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_0Tm((v0 + 16), v53);
      v60 = (*(v54 + 8) + **(v54 + 8));
      v55 = swift_task_alloc();
      *(v0 + 376) = v55;
      *v55 = v0;
      v55[1] = LaunchURL.Resolver.perform(withURL:);
      v56 = *(v0 + 256);

      v60(v56, v53, v54);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v0 + 320))(*(v0 + 288), *(v0 + 256), *(v0 + 272));

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 336);
    v43 = *(v0 + 288);
    v44 = *(v0 + 272);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v45 = 136446466;
      lazy protocol witness table accessor for type URL and conformance URL();
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v42(v43, v44);
      v49 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v46, v48, &v61);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16LaunchURLHandler_pMd);
      v50 = Array.description.getter();
      v52 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v50, v51, &v61);

      *(v45 + 14) = v52;

      _os_log_impl(&_mh_execute_header, v39, v40, "Successfully evaluated URL=%{public}s using handlers=%{public}s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v42(v43, v44);
    }

    v57 = _swiftEmptyArrayStorage[2];

    v58 = *(v0 + 8);

    v58(v57 != 0);
  }
}

uint64_t LaunchURL.Resolver.perform(withURL:)(char a1)
{
  v3 = *v2;
  *(v3 + 396) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {

    v4 = LaunchURL.Resolver.perform(withURL:);
  }

  else
  {
    v4 = LaunchURL.Resolver.perform(withURL:);
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t LaunchURL.Resolver.perform(withURL:)()
{
  v71 = v0;
  v1 = *(v0 + 368);
  if (*(v0 + 396))
  {
    outlined init with copy of ActionPerforming(v0 + 16, v0 + 176);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 368);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, *(v0 + 368));
    }

    v4 = v1[2];
    v3 = v1[3];
    if (v4 >= v3 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v1);
    }

    v1[2] = (v4 + 1);
    outlined init with take of ActionPerforming((v0 + 176), &v1[5 * v4 + 4]);
  }

  (*(v0 + 320))(*(v0 + 296), *(v0 + 256), *(v0 + 272));
  outlined init with copy of ActionPerforming(v0 + 16, v0 + 96);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 336);
  v9 = *(v0 + 296);
  v10 = *(v0 + 272);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v11 = 136446466;
    lazy protocol witness table accessor for type URL and conformance URL();
    v12 = v1;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v8(v9, v10);
    v16 = v13;
    v1 = v12;
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v15, &v70);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    outlined init with copy of ActionPerforming(v0 + 96, v0 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16LaunchURLHandler_pMd);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 96);
    v21 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v20, &v70);

    *(v11 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Resolved URL=%{public}s with handler=%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 96);
    v8(v9, v10);
  }

  if (*(v0 + 396) == 1 && (**(v0 + 264) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  }

  else
  {
    v22 = *(v0 + 352);
    v23 = *(v0 + 360) + 1;
    result = __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
    if (v23 != v22)
    {
      v25 = *(v0 + 360) + 1;
      *(v0 + 360) = v25;
      *(v0 + 368) = v1;
      v26 = *(v0 + 344);
      if (v25 >= *(v26 + 16))
      {
        __break(1u);
      }

      else
      {
        v27 = *(v0 + 320);
        v28 = *(v0 + 304);
        v29 = *(v0 + 272);
        v30 = *(v0 + 256);
        outlined init with copy of ActionPerforming(v26 + 40 * v25 + 32, v0 + 16);
        v27(v28, v30, v29);
        outlined init with copy of ActionPerforming(v0 + 16, v0 + 56);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.info.getter();
        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 336);
        v35 = *(v0 + 304);
        v36 = *(v0 + 272);
        if (v33)
        {
          v37 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v37 = 136446466;
          lazy protocol witness table accessor for type URL and conformance URL();
          v38 = dispatch thunk of CustomStringConvertible.description.getter();
          v40 = v39;
          v34(v35, v36);
          v41 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v38, v40, &v70);

          *(v37 + 4) = v41;
          *(v37 + 12) = 2082;
          outlined init with copy of ActionPerforming(v0 + 56, v0 + 216);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16LaunchURLHandler_pMd);
          v42 = String.init<A>(describing:)();
          v44 = v43;
          __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
          v45 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v42, v44, &v70);

          *(v37 + 14) = v45;
          _os_log_impl(&_mh_execute_header, v31, v32, "Resolving URL=%{public}s with handler=%{public}s", v37, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
          v34(v35, v36);
        }

        v64 = *(v0 + 40);
        v65 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_0Tm((v0 + 16), v64);
        v69 = (*(v65 + 8) + **(v65 + 8));
        v66 = swift_task_alloc();
        *(v0 + 376) = v66;
        *v66 = v0;
        v66[1] = LaunchURL.Resolver.perform(withURL:);
        v67 = *(v0 + 256);

        return v69(v67, v64, v65);
      }

      return result;
    }
  }

  (*(v0 + 320))(*(v0 + 288), *(v0 + 256), *(v0 + 272));

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  v48 = os_log_type_enabled(v46, v47);
  v49 = *(v0 + 336);
  v50 = *(v0 + 288);
  v51 = *(v0 + 272);
  if (v48)
  {
    v68 = v47;
    v52 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v52 = 136446466;
    lazy protocol witness table accessor for type URL and conformance URL();
    v53 = v1;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    v49(v50, v51);
    v57 = v54;
    v1 = v53;
    v58 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v57, v56, &v70);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16LaunchURLHandler_pMd);
    v59 = Array.description.getter();
    v61 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v60, &v70);

    *(v52 + 14) = v61;

    _os_log_impl(&_mh_execute_header, v46, v68, "Successfully evaluated URL=%{public}s using handlers=%{public}s", v52, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v49(v50, v51);
  }

  v62 = v1[2];

  v63 = *(v0 + 8);

  return v63(v62 != 0);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t protocol witness for LaunchURLHandler.perform(withURL:) in conformance LaunchURL.Resolver(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for LaunchURLHandler.perform(withURL:) in conformance LaunchURL.Resolver;

  return LaunchURL.Resolver.perform(withURL:)(a1);
}

uint64_t protocol witness for LaunchURLHandler.perform(withURL:) in conformance LaunchURL.Resolver(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t type metadata accessor for LaunchURL.Resolver()
{
  result = type metadata singleton initialization cache for LaunchURL.Resolver;
  if (!type metadata singleton initialization cache for LaunchURL.Resolver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LaunchURL.Resolver.PerformOption and conformance LaunchURL.Resolver.PerformOption()
{
  result = lazy protocol witness table cache variable for type LaunchURL.Resolver.PerformOption and conformance LaunchURL.Resolver.PerformOption;
  if (!lazy protocol witness table cache variable for type LaunchURL.Resolver.PerformOption and conformance LaunchURL.Resolver.PerformOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LaunchURL.Resolver.PerformOption and conformance LaunchURL.Resolver.PerformOption);
  }

  return result;
}

uint64_t sub_1002993A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100299468(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for LaunchURL.Resolver()
{
  type metadata accessor for [LaunchURLHandler]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [LaunchURLHandler]()
{
  if (!lazy cache variable for type metadata for [LaunchURLHandler])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore16LaunchURLHandler_pMd);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [LaunchURLHandler]);
    }
  }
}

uint64_t static LifecyclePatrol.isEnabled.setter(char a1)
{
  result = swift_beginAccess();
  static LifecyclePatrol.isEnabled = a1;
  return result;
}

uint64_t LifecyclePatrol.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t LifecyclePatrol.didInit(_:)()
{
  v1 = v0;
  result = swift_beginAccess();
  if (static LifecyclePatrol.isEnabled == 1)
  {
    type metadata accessor for OS_dispatch_queue();
    v3 = static OS_dispatch_queue.main.getter();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v1;

    OS_dispatch_queue.asyncAfter(_:block:)(partial apply for closure #1 in LifecyclePatrol.didInit(_:), v5);
  }

  return result;
}

uint64_t sub_100299868()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t closure #1 in LifecyclePatrol.didInit(_:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (one-time initialization token for lifecyclePatrol != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      __swift_project_value_buffer(v1, static Logger.lifecyclePatrol);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.fault.getter();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v4 = 136446722;
        swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd);
        v5 = String.init<A>(describing:)();
        v7 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v5, v6, &v14);

        *(v4 + 4) = v7;
        *(v4 + 12) = 2082;
        v8 = String.init<A>(describing:)();
        v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v8, v9, &v14);

        *(v4 + 14) = v10;
        *(v4 + 22) = 2082;
        v11 = String.init<A>(describing:)();
        v13 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v11, v12, &v14);

        *(v4 + 24) = v13;
        _os_log_impl(&_mh_execute_header, v2, v3, "A new instance of %{public}s<%{public}s> while one already exists <%{public}s>", v4, 0x20u);
        swift_arrayDestroy();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectWeakAssign();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100299B1C()
{

  return swift_deallocObject();
}

uint64_t LifecyclePatrol.willDeinit(_:)(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    result = swift_unknownObjectRelease();
    if (v3 == a1)
    {

      return swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

uint64_t LifecyclePatrol.__deallocating_deinit()
{
  outlined destroy of weak ActionsObserver?(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for lifecyclePatrol()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.lifecyclePatrol);
  __swift_project_value_buffer(v0, static Logger.lifecyclePatrol);
  return Logger.init(subsystem:category:)();
}

unint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd_0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v12, v27);
        outlined init with copy of Any(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        outlined init with copy of AnyHashable(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        outlined init with copy of Any(v25 + 8, v20);
        outlined destroy of (key: AnyHashable, value: Any)(v24);
        v21 = v18;
        outlined init with take of Any(v20, v22);
        v13 = v21;
        outlined init with take of Any(v22, v23);
        outlined init with take of Any(v23, &v21);
        result = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0Tm(v10);
          result = outlined init with take of Any(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = outlined init with take of Any(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      outlined destroy of (key: AnyHashable, value: Any)(v24);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySDys11AnyHashableVypGGGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v12, v24);
        outlined init with copy of Any(*(a1 + 56) + 32 * v12, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        outlined init with copy of AnyHashable(v21, v20);
        if (!swift_dynamicCast())
        {
          outlined destroy of (key: AnyHashable, value: Any)(v21);

          goto LABEL_23;
        }

        outlined init with copy of Any(v22 + 8, v20);
        outlined destroy of (key: AnyHashable, value: Any)(v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDys11AnyHashableVypGGMd);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v18, v19);
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;

          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySSypGGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        outlined init with copy of Any(*(a1 + 56) + 32 * v11, v24);
        *&v23 = v13;
        *(&v23 + 1) = v14;
        v21[2] = v23;
        v22[0] = v24[0];
        v22[1] = v24[1];
        v15 = v23;
        outlined init with take of Any(v22, v21);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_0);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          *(v2[7] + 8 * v9) = v20;

          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          *(v2[7] + 8 * result) = v20;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs11AnyHashableVGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v12, v33);
        outlined init with copy of Any(*(a1 + 56) + 32 * v12, v34 + 8);
        v31[0] = v34[0];
        v31[1] = v34[1];
        v32 = v35;
        v30[0] = v33[0];
        v30[1] = v33[1];
        outlined init with copy of AnyHashable(v30, &v24);
        if (!swift_dynamicCast())
        {
          outlined destroy of TaskPriority?(v30, &_ss11AnyHashableV3key_yp5valuetMd_0);

          goto LABEL_23;
        }

        v14 = v23[0];
        v13 = v23[1];
        outlined init with copy of Any(v31 + 8, v23);
        outlined destroy of TaskPriority?(v30, &_ss11AnyHashableV3key_yp5valuetMd_0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v27 = v24;
        v28 = v25;
        v29 = v26;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
        if (v15)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v14;
          v9[1] = v13;
          v10 = result;

          result = outlined assign with take of AnyHashable(&v24, v2[7] + 40 * v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v16 = (v2[6] + 16 * result);
          *v16 = v14;
          v16[1] = v13;
          v17 = v2[7] + 40 * result;
          v18 = v24;
          v19 = v25;
          *(v17 + 32) = v26;
          *v17 = v18;
          *(v17 + 16) = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_27;
          }

          v2[2] = v22;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      outlined destroy of TaskPriority?(&v24, &_ss11AnyHashableVSgMd);
LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void MusicTabsDictionaryProvider.configure(withTabsUpdateHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 11);
  closure #1 in MusicTabsDictionaryProvider.configure(withTabsUpdateHandler:)(&v5[4], &v8);
  os_unfair_lock_unlock(v5 + 11);
  v6 = v8;
  if (v8)
  {
    v7 = MusicTabsDictionaryProvider.initialMusicTabsAfterConfiguringUpdateHandler(using:tabsUpdateHandler:)(v8, a1, a2);
    __chkstk_darwin(v7);
    os_unfair_lock_lock(v5 + 11);
    partial apply for closure #2 in MusicTabsDictionaryProvider.configure(withTabsUpdateHandler:)(&v5[4]);
    os_unfair_lock_unlock(v5 + 11);
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

void *MusicTabsDictionaryProvider.init(musicTabsBagKey:lastKnownMusicTabsDictionaryDefaultsAccessor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v44 - v16;
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v20 = objc_opt_self();

  v21 = [v20 sharedBagProvider];
  LODWORD(a2) = [v21 useAMSBag];

  if (!a2)
  {
    if (one-time initialization token for musicBag != -1)
    {
      swift_once();
    }

    v34 = static OS_os_log.musicBag;
    Logger.init(_:)();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "UserDefaults enabled as source for cached musicTabs.", v37, 2u);
    }

    (*(v11 + 8))(v14, v10);
    goto LABEL_22;
  }

  if (one-time initialization token for music != -1)
  {
    swift_once();
  }

  v22 = static ICClientInfo.music;
  v23 = [static ICClientInfo.music bagProfile];
  if (!v23)
  {
LABEL_17:
    if (one-time initialization token for musicBag != -1)
    {
      swift_once();
    }

    v38 = static OS_os_log.musicBag;
    Logger.init(_:)();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "    AMSBag was intended to be enabled as source for cached musicTabs, but bag profile and/or version were unexpectedly nil.\n    Defaulting to .userDefaults configuration.", v41, 2u);
    }

    (*(v11 + 8))(v17, v10);
LABEL_22:
    v31 = 0;
    v33 = 0;
    goto LABEL_23;
  }

  v24 = v23;
  v25 = [v22 bagProfileVersion];
  if (!v25)
  {

    goto LABEL_17;
  }

  v26 = v25;
  if (one-time initialization token for musicBag != -1)
  {
    swift_once();
  }

  v27 = static OS_os_log.musicBag;
  Logger.init(_:)();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "AMSBag enabled as source for cached musicTabs.", v30, 2u);
  }

  (*(v11 + 8))(v19, v10);
  v31 = [objc_opt_self() bagForProfile:v24 profileVersion:v26];

  v32 = v31;
  v33 = 1;
LABEL_23:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy9MusicCore0C22TabsDictionaryProviderC13Configuration33_798255D9FDA5AC20AFAC711078E2B0BDLLOSo16os_unfair_lock_sVGMd);
  v42 = swift_allocObject();
  *(v42 + 44) = 0;

  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v31;
  *(v42 + 40) = v33;
  outlined consume of MusicTabsDictionaryProvider.Configuration(v31);
  v5[2] = v42;
  return v5;
}

id closure #1 in MusicTabsDictionaryProvider.configure(withTabsUpdateHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 8);
    if ((*(a1 + 24) & 1) != 0 && !*(a1 + 16))
    {
      *(a1 + 16) = 1;
      *(a1 + 24) = 1;
      *a2 = v11;
      *(a2 + 8) = v12;
      *(a2 + 16) = 1;
      *(a2 + 24) = 1;

      return v11;
    }

    v24 = result;
    v13 = one-time initialization token for musicBag;
    v23 = v11;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.musicBag;
    Logger.init(_:)();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v22[1] = v3;
      v18 = v17;
      v22[0] = swift_slowAlloc();
      v25 = v22[0];
      *v18 = 136315394;
      v19 = _typeName(_:qualified:)();
      v21 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v20, &v25);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      *(v18 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0xD000000000000021, 0x80000001004D00E0, &v25);
      _os_log_impl(&_mh_execute_header, v15, v16, "    An unexpected attempt to configure an %s instance twice using %s will be ignored.", v18, 0x16u);
      swift_arrayDestroy();
    }

    result = (*(v7 + 8))(v10, v24);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  return result;
}

id MusicTabsDictionaryProvider.initialMusicTabsAfterConfiguringUpdateHandler(using:tabsUpdateHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v93 = type metadata accessor for Logger();
  v92 = *(v93 - 8);
  v8 = __chkstk_darwin(v93);
  v10 = (&v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v91 = &v75 - v11;
  v95 = [objc_opt_self() uninitializedToken];
  v12 = *(v3 + 24);
  v13 = *(v4 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = v12;
  *(inited + 40) = v13;

  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of String(inited + 32);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v16 = swift_allocObject();
  v17 = a1;
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v12;
  v18[4] = v13;
  v18[5] = a2;
  v18[6] = a3;
  aBlock[4] = partial apply for closure #1 in MusicTabsDictionaryProvider.initialMusicTabsAfterConfiguringUpdateHandler(using:tabsUpdateHandler:);
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [String : Any]) -> ();
  aBlock[3] = &block_descriptor_45;
  v19 = _Block_copy(aBlock);

  v20 = [a1 cachedValuesForKeys:isa observationToken:&v95 updateHandler:v19];
  _Block_release(v19);

  v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v21 + 16) && (v22 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v12, v13), (v23 & 1) != 0))
  {
    outlined init with copy of Any(*(v21 + 56) + 32 * v22, aBlock);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySDys11AnyHashableVypGGGMd);
    if (swift_dynamicCast())
    {
      v24 = *&v97[0];
      v25 = one-time initialization token for musicBag;

      if (v25 != -1)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v26 = static OS_os_log.musicBag;
        v27 = v91;
        Logger.init(_:)();

        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v28, v29))
        {

          (*(v92 + 8))(v27, v93);
          return v17;
        }

        v78 = v29;
        v79 = v28;
        v30 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v98 = v76;
        v77 = v30;
        *v30 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd);
        v31 = static _DictionaryStorage.copy(original:)();
        v32 = v31;
        v33 = 0;
        v34 = *(v24 + 64);
        v80 = v24 + 64;
        v35 = 1 << *(v24 + 32);
        v36 = v35 < 64 ? ~(-1 << v35) : -1;
        v37 = v36 & v34;
        v38 = (v35 + 63) >> 6;
        v90 = "v16@?0@NSDictionary8";
        v85 = v31 + 64;
        v83 = v17;
        v84 = v24;
        v82 = v31;
        v81 = v38;
        if ((v36 & v34) == 0)
        {
          break;
        }

        while (1)
        {
          v39 = __clz(__rbit64(v37));
          v37 &= v37 - 1;
LABEL_16:
          v42 = v39 | (v33 << 6);
          v43 = *(v24 + 56);
          v44 = (*(v24 + 48) + 16 * v42);
          v45 = v44[1];
          v88 = *v44;
          v89 = v42;
          v46 = *(v43 + 8 * v42);
          v24 = *(v46 + 16);
          if (v24)
          {
            v87 = v37;
            v94 = &_swiftEmptyArrayStorage;
            v86 = v45;

            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
            v10 = v94;
            v47 = 32;
            do
            {
              v48 = *(v46 + v47);
              *&v96[0] = 25705;
              *(&v96[0] + 1) = 0xE200000000000000;

              AnyHashable.init<A>(_:)();
              if (*(v48 + 16) && (v49 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v50 & 1) != 0))
              {
                outlined init with copy of Any(*(v48 + 56) + 32 * v49, v96);
                outlined destroy of AnyHashable(aBlock);
                outlined init with take of Any(v96, v97);
                outlined init with copy of Any(v97, aBlock);
                if (swift_dynamicCast())
                {
                  v52 = *(&v96[0] + 1);
                  v51 = *&v96[0];
                }

                else
                {
                  *&v96[0] = 0;
                  *(&v96[0] + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(23);
                  v53._object = (v90 | 0x8000000000000000);
                  v53._countAndFlagsBits = 0xD000000000000014;
                  String.append(_:)(v53);
                  _print_unlocked<A, B>(_:_:)();
                  v54._countAndFlagsBits = 62;
                  v54._object = 0xE100000000000000;
                  String.append(_:)(v54);

                  v52 = *(&v96[0] + 1);
                  v51 = *&v96[0];
                }

                __swift_destroy_boxed_opaque_existential_0Tm(v97);
              }

              else
              {
                outlined destroy of AnyHashable(aBlock);

                v51 = 0x204449206261743CLL;
                v52 = 0xEF3E746E65736261;
              }

              v94 = v10;
              v56 = v10[2];
              v55 = v10[3];
              if (v56 >= v55 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
                v10 = v94;
              }

              v10[2] = v56 + 1;
              v57 = &v10[2 * v56];
              *(v57 + 4) = v51;
              *(v57 + 5) = v52;
              v47 += 8;
              --v24;
            }

            while (v24);

            v17 = v83;
            v32 = v82;
            v38 = v81;
            v37 = v87;
            v58 = v86;
          }

          else
          {

            v10 = &_swiftEmptyArrayStorage;
          }

          v59 = v89;
          *(v85 + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v89;
          v60 = (v32[6] + 16 * v59);
          *v60 = v88;
          v60[1] = v58;
          *(v32[7] + 8 * v59) = v10;
          v61 = v32[2];
          v62 = __OFADD__(v61, 1);
          v63 = v61 + 1;
          if (v62)
          {
            break;
          }

          v32[2] = v63;
          v24 = v84;
          if (!v37)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_44:
        swift_once();
      }

LABEL_11:
      v40 = v33;
      while (1)
      {
        v33 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v33 >= v38)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
          v69 = Dictionary.description.getter();
          v71 = v70;

          v72 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v69, v71, &v98);

          v73 = v77;
          *(v77 + 1) = v72;
          v74 = v79;
          _os_log_impl(&_mh_execute_header, v79, v78, "AMSBag provided initial state of musicTabs: %s", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v76);

          (*(v92 + 8))(v91, v93);
          return v17;
        }

        v41 = *(v80 + 8 * v33);
        ++v40;
        if (v41)
        {
          v39 = __clz(__rbit64(v41));
          v37 = (v41 - 1) & v41;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_42;
    }
  }

  else
  {
  }

  if (one-time initialization token for musicBag != -1)
  {
LABEL_42:
    swift_once();
  }

  v64 = static OS_os_log.musicBag;
  Logger.init(_:)();
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "AMSBag didn't provide initial state of musicTabs. No cached value was found.", v67, 2u);
  }

  (*(v92 + 8))(v10, v93);
  return v17;
}

id closure #2 in MusicTabsDictionaryProvider.configure(withTabsUpdateHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  outlined consume of MusicTabsDictionaryProvider.Configuration(*a1);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5 & 1;

  return a2;
}

void *closure #1 in MusicTabsDictionaryProvider.musicTabs(fallingBackToBag:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t *a4@<X8>)
{
  if (!*result)
  {
    if (a3)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = (*(a2 + 40))(result);

    goto LABEL_9;
  }

  v7 = result[1];

  if (v7)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = String._bridgeToObjectiveC()();
  v9 = [a3 dictionaryForBagKey:v8];

  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v10);

  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a4 = v7;
  return result;
}

uint64_t MusicTabsDictionaryProvider.deinit()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 11);
  closure #1 in MusicTabsDictionaryProvider.deinit(&v1[4], v6);
  os_unfair_lock_unlock(v1 + 11);
  v2 = v6[0];
  v3 = v6[2];
  v4 = v7;

  if (v2)
  {
    if ((v4 & 1) == 0)
    {
      [v2 removeObserverWithToken:v3];
    }
  }

  return v0;
}

id closure #1 in MusicTabsDictionaryProvider.deinit@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 8);
    if ((*(a1 + 24) & 1) == 0)
    {
      *a2 = v11;
      *(a2 + 8) = v12;
      *(a2 + 24) = 0;

      return v11;
    }

    v28 = result;
    v13 = v12;
    v14 = one-time initialization token for musicBag;
    v15 = v11;

    if (v14 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.musicBag;
    Logger.init(_:)();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27[1] = v13;
      v20 = v19;
      v21 = swift_slowAlloc();
      v27[2] = v3;
      v22 = v21;
      v29 = v21;
      *v20 = 136315138;
      v23 = _typeName(_:qualified:)();
      v25 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v23, v24, &v29);
      v27[0] = v15;
      v26 = v25;

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "    %s wasn't configured with an AMSBag update handler prior to deallocation. This may have caused musicTabs updates to be missed after initialization.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }

    else
    {
    }

    result = (*(v7 + 8))(v10, v28);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t MusicTabsDictionaryProvider.__deallocating_deinit()
{
  MusicTabsDictionaryProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_9MusicCore0A22TabsDictionaryProviderC13Configuration33_798255D9FDA5AC20AFAC711078E2B0BDLLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MusicTabsDictionaryProvider.Configuration(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t closure #1 in MusicTabsDictionaryProvider.initialMusicTabsAfterConfiguringUpdateHandler(using:tabsUpdateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = *(a1 + 16);
    v28 = v14;
    v29 = v10;
    if (v19 && (result = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(a3, a4), (v20 & 1) != 0))
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * result, aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySDys11AnyHashableVypGGGMd);
      result = swift_dynamicCast();
      if (result)
      {
        v21 = v32;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v18 + 16);
    __chkstk_darwin(result);
    *(&v27 - 2) = v21;
    os_unfair_lock_lock(v22 + 11);
    partial apply for closure #1 in closure #1 in MusicTabsDictionaryProvider.initialMusicTabsAfterConfiguringUpdateHandler(using:tabsUpdateHandler:)(&v22[4], aBlock);
    os_unfair_lock_unlock(v22 + 11);
    if (LOBYTE(aBlock[0]) == 1)
    {
      type metadata accessor for OS_dispatch_queue();
      v23 = static OS_dispatch_queue.main.getter();
      v24 = swift_allocObject();
      v25 = v31;
      v24[2] = v30;
      v24[3] = v25;
      v24[4] = v21;
      aBlock[4] = partial apply for closure #2 in closure #1 in MusicTabsDictionaryProvider.initialMusicTabsAfterConfiguringUpdateHandler(using:tabsUpdateHandler:);
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_10_0;
      v26 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v26);

      (*(v29 + 8))(v12, v9);
      return (*(v28 + 8))(v16, v13);
    }

    else
    {
    }
  }

  return result;
}

void closure #1 in closure #1 in MusicTabsDictionaryProvider.initialMusicTabsAfterConfiguringUpdateHandler(using:tabsUpdateHandler:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v117 = a3;
  v5 = type metadata accessor for Logger();
  v115 = *(v5 - 8);
  v116 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v98 - v9;
  v11 = *a1;
  v12 = &static OS_os_log.musicBag;
  if (!*a1)
  {
    if (one-time initialization token for musicBag != -1)
    {
      swift_once();
    }

    v53 = static OS_os_log.musicBag;
    Logger.init(_:)();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v121[0] = v57;
      *v56 = 136315138;
      *(v56 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0xD000000000000047, 0x80000001004D0090, v121);
      _os_log_impl(&_mh_execute_header, v54, v55, "Unexpected update handler call in %s with .userDefaults configuration. This is likely programmer error.", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
    }

    (*(v115 + 8))(v8, v116);
    v58 = 0;
    goto LABEL_70;
  }

  v13 = *(a1 + 8);
  v14 = *(a1 + 24) & 1;
  *(a1 + 8) = a2;
  *(a1 + 24) = v14;
  v15 = one-time initialization token for musicBag;
  swift_bridgeObjectRetain_n();
  v111 = v11;
  if (v15 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v16 = *v12;
    Logger.init(_:)();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v17, v18))
    {

      goto LABEL_69;
    }

    v102 = v18;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v124 = v20;
    v106 = v19;
    *v19 = 136315394;
    v113 = a2;
    v112 = v10;
    v103 = v17;
    v101 = v20;
    if (!v13)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd);
    v21 = static _DictionaryStorage.copy(original:)();
    v22 = v21;
    v23 = 0;
    v24 = *(v13 + 64);
    v100 = v13 + 64;
    v25 = 1 << *(v13 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v12 = v26 & v24;
    v99 = (v25 + 63) >> 6;
    v118 = "v16@?0@NSDictionary8";
    v107 = v21 + 64;
    v105 = v13;
    i = v21;
    if ((v26 & v24) != 0)
    {
      do
      {
        v27 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_15:
        v30 = v27 | (v23 << 6);
        v31 = *(v13 + 56);
        v32 = (*(v13 + 48) + 16 * v30);
        v33 = v32[1];
        v114 = *v32;
        v34 = *(v31 + 8 * v30);
        v35 = *(v34 + 16);
        if (v35)
        {
          v109 = v30;
          v110 = v12;
          v123 = &_swiftEmptyArrayStorage;
          v108 = v33;

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
          v10 = v123;
          v36 = 32;
          v37 = v34;
          v119 = v34;
          do
          {
            v38 = *(v37 + v36);
            *&v120[0] = 25705;
            *(&v120[0] + 1) = 0xE200000000000000;

            AnyHashable.init<A>(_:)();
            if (*(v38 + 16) && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(v121), v37 = v119, (v40 & 1) != 0))
            {
              outlined init with copy of Any(*(v38 + 56) + 32 * v39, v120);
              outlined destroy of AnyHashable(v121);
              outlined init with take of Any(v120, &v122);
              outlined init with copy of Any(&v122, v121);
              if (swift_dynamicCast())
              {
                v41 = *(&v120[0] + 1);
                v42 = *&v120[0];
              }

              else
              {
                *&v120[0] = 0;
                *(&v120[0] + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(23);
                v43._object = (v118 | 0x8000000000000000);
                v43._countAndFlagsBits = 0xD000000000000014;
                String.append(_:)(v43);
                _print_unlocked<A, B>(_:_:)();
                v44._countAndFlagsBits = 62;
                v44._object = 0xE100000000000000;
                String.append(_:)(v44);
                v37 = v119;

                v41 = *(&v120[0] + 1);
                v42 = *&v120[0];
              }

              __swift_destroy_boxed_opaque_existential_0Tm(&v122);
            }

            else
            {
              outlined destroy of AnyHashable(v121);

              v42 = 0x204449206261743CLL;
              v41 = 0xEF3E746E65736261;
            }

            v123 = v10;
            v46 = *(v10 + 16);
            v45 = *(v10 + 24);
            if (v46 >= v45 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
              v37 = v119;
              v10 = v123;
            }

            *(v10 + 16) = v46 + 1;
            v47 = (v10 + 16 * v46);
            *(v47 + 4) = v42;
            *(v47 + 5) = v41;
            v36 += 8;
            --v35;
          }

          while (v35);

          a2 = v113;
          v13 = v105;
          v22 = i;
          v12 = v110;
          v30 = v109;
          v48 = v108;
        }

        else
        {

          v10 = &_swiftEmptyArrayStorage;
        }

        *(v107 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        v49 = (v22[6] + 16 * v30);
        *v49 = v114;
        v49[1] = v48;
        *(v22[7] + 8 * v30) = v10;
        v50 = v22[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_73;
        }

        v22[2] = v52;
        v10 = v112;
      }

      while (v12);
    }

    v28 = v23;
    while (1)
    {
      v23 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v23 >= v99)
      {
        goto LABEL_39;
      }

      v29 = *(v100 + 8 * v23);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v12 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v22 = 0;
LABEL_39:
  v121[0] = v22;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGSgMd);
  v59 = String.init<A>(describing:)();
  v61 = v60;

  v12 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v61, &v124);

  v62 = v106;
  *(v106 + 1) = v12;
  *(v62 + 6) = 2080;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd);
    v63 = static _DictionaryStorage.copy(original:)();
    v64 = v63;
    v65 = *(a2 + 64);
    v99 = a2 + 64;
    v66 = 1 << *(a2 + 32);
    v67 = -1;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    v68 = v67 & v65;
    v69 = (v66 + 63) >> 6;
    v118 = "v16@?0@NSDictionary8";
    v107 = v63 + 64;

    v10 = 0;
    v105 = v64;
    for (i = v69; v68; v64[2] = v92)
    {
      v70 = __clz(__rbit64(v68));
      v68 &= v68 - 1;
LABEL_49:
      v73 = v70 | (v10 << 6);
      v74 = *(a2 + 56);
      v75 = (*(a2 + 48) + 16 * v73);
      v76 = v75[1];
      v114 = *v75;
      v13 = *(v74 + 8 * v73);
      v77 = *(v13 + 16);
      if (v77)
      {
        v109 = v73;
        v110 = v68;
        v123 = &_swiftEmptyArrayStorage;
        v108 = v76;

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v77, 0);
        v12 = v123;
        v78 = 32;
        v79 = v13;
        v119 = v13;
        do
        {
          v80 = *(v79 + v78);
          *&v120[0] = 25705;
          *(&v120[0] + 1) = 0xE200000000000000;

          AnyHashable.init<A>(_:)();
          if (*(v80 + 16) && (v81 = specialized __RawDictionaryStorage.find<A>(_:)(v121), v79 = v119, (v82 & 1) != 0))
          {
            outlined init with copy of Any(*(v80 + 56) + 32 * v81, v120);
            outlined destroy of AnyHashable(v121);
            outlined init with take of Any(v120, &v122);
            outlined init with copy of Any(&v122, v121);
            if (swift_dynamicCast())
            {
              v13 = *(&v120[0] + 1);
              v83 = *&v120[0];
            }

            else
            {
              *&v120[0] = 0;
              *(&v120[0] + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(23);
              v84._object = (v118 | 0x8000000000000000);
              v84._countAndFlagsBits = 0xD000000000000014;
              String.append(_:)(v84);
              _print_unlocked<A, B>(_:_:)();
              v85._countAndFlagsBits = 62;
              v85._object = 0xE100000000000000;
              String.append(_:)(v85);
              v79 = v119;

              v13 = *(&v120[0] + 1);
              v83 = *&v120[0];
            }

            __swift_destroy_boxed_opaque_existential_0Tm(&v122);
          }

          else
          {
            outlined destroy of AnyHashable(v121);

            v83 = 0x204449206261743CLL;
            v13 = 0xEF3E746E65736261;
          }

          v123 = v12;
          v87 = *(v12 + 16);
          v86 = *(v12 + 24);
          if (v87 >= v86 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1);
            v79 = v119;
            v12 = v123;
          }

          *(v12 + 16) = v87 + 1;
          v88 = v12 + 16 * v87;
          *(v88 + 32) = v83;
          *(v88 + 40) = v13;
          v78 += 8;
          --v77;
        }

        while (v77);

        a2 = v113;
        v64 = v105;
        v69 = i;
        v68 = v110;
        v73 = v109;
        v89 = v108;
      }

      else
      {

        v12 = &_swiftEmptyArrayStorage;
      }

      *(v107 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
      v90 = (v64[6] + 16 * v73);
      *v90 = v114;
      v90[1] = v89;
      *(v64[7] + 8 * v73) = v12;
      v91 = v64[2];
      v51 = __OFADD__(v91, 1);
      v92 = v91 + 1;
      if (v51)
      {
        goto LABEL_74;
      }
    }

    v71 = v10;
    while (1)
    {
      v10 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_72;
      }

      if (v10 >= v69)
      {

        v10 = v112;
        goto LABEL_68;
      }

      v72 = *(v99 + 8 * v10);
      v71 = (v71 + 1);
      if (v72)
      {
        v70 = __clz(__rbit64(v72));
        v68 = (v72 - 1) & v72;
        goto LABEL_49;
      }
    }
  }

  v64 = 0;
LABEL_68:
  v121[0] = v64;
  v93 = String.init<A>(describing:)();
  v95 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v93, v94, &v124);

  v96 = v106;
  *(v106 + 14) = v95;
  v97 = v103;
  _os_log_impl(&_mh_execute_header, v103, v102, "    AMSBag provided updated musicTabs dictionary.\n    Previous: %s\n    Updated: %s", v96, 0x16u);
  swift_arrayDestroy();

LABEL_69:
  (*(v115 + 8))(v10, v116);

  v58 = 1;
LABEL_70:
  *v117 = v58;
}

uint64_t outlined destroy of (key: AnyHashable, value: Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV3key_yp5valuetMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *outlined consume of MusicTabsDictionaryProvider.Configuration(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10029CF58()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10029CF90()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10029D01C()
{

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t OptimisticValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for OptimisticValue() + 28);
  v7 = type metadata accessor for OptimisticValue.Transaction();
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = *(*(a2 - 8) + 32);

  return v8(a3, a1, a2);
}

uint64_t OptimisticValue.underlyingValue.didset(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v29 - v9;
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = *(v4 + 16);
  (v13)(&v29 - v11, v1, v3);
  v14 = v1 + *(a1 + 28);
  v15 = type metadata accessor for OptimisticValue.Transaction();
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    (*(v4 + 24))(v14 + *(v15 + 28), v12, v3);
  }

  if (one-time initialization token for optimisticValue != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.optimisticValue);
  (v13)(v10, v12, v3);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = v13;
    v20 = v19;
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136446210;
    (v29)(v7, v10, v3);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v29 = v12;
    v25 = *(v4 + 8);
    v25(v10, v3);
    v26 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v22, v24, &v30);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "Underlying value updated to %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);

    return (v25)(v29, v3);
  }

  else
  {

    v28 = *(v4 + 8);
    v28(v10, v3);
    return (v28)(v12, v3);
  }
}

uint64_t OptimisticValue.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for OptimisticValue.Transaction();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - v10;
  v12 = *(v5 - 8);
  __chkstk_darwin(v9);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v2 + *(a1 + 28), v7);
  v15 = *(v6 - 8);
  if ((*(v15 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    return (*(v12 + 16))(a2, v2, v5);
  }

  else
  {
    (*(v12 + 16))(v14, &v11[*(v6 + 32)], v5);
    (*(v15 + 8))(v11, v6);
    return (*(v12 + 32))(a2, v14, v5);
  }
}

uint64_t OptimisticValue.value.setter(uint64_t a1, uint64_t a2)
{
  specialized OptimisticValue.value.setter(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*OptimisticValue.value.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v5[4] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[5] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[6] = v10;
  OptimisticValue.value.getter(a2, v10);
  return OptimisticValue.value.modify;
}

void OptimisticValue.value.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v8);
    (*(v5 + 24))(v7, v3, v8);
    OptimisticValue.underlyingValue.didset(v9);
    v10 = *(v6 + 8);
    v10(v3, v8);
    v10(v4, v8);
  }

  else
  {
    (*(v5 + 24))((*a1)[1], v4, v8);
    OptimisticValue.underlyingValue.didset(v9);
    (*(v6 + 8))(v4, v8);
  }

  free(v4);
  free(v3);

  free(v2);
}

void OptimisticValue.beginTransaction(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v35 = a1;
  v7 = *(a2 + 16);
  v8 = type metadata accessor for OptimisticValue.Transaction();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v34 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v36 = &v34 - v13;
  v14 = *(v7 - 8);
  v15 = __chkstk_darwin(v12);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  v20 = *(v14 + 16);
  v20(&v34 - v18, v4, v7);
  v20(v17, v35, v7);
  OptimisticValue.Transaction.init(current:projected:)(v19, v17, v7, a3);
  v21 = *(a2 + 28);
  v22 = type metadata accessor for Optional();
  (*(*(v22 - 8) + 8))(v4 + v21, v22);
  v23 = *(v9 + 16);
  v23(v4 + v21, a3, v8);
  (*(v9 + 56))(v4 + v21, 0, 1, v8);
  if (one-time initialization token for optimisticValue != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.optimisticValue);
  v25 = v36;
  v23(v36, a3, v8);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136446210;
    v23(v34, v25, v8);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    (*(v9 + 8))(v25, v8);
    v33 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v30, v32, &v37);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "New transaction: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
  }

  else
  {

    (*(v9 + 8))(v25, v8);
  }
}

uint64_t OptimisticValue.Transaction.init(current:projected:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  UUID.init()();
  v8 = type metadata accessor for OptimisticValue.Transaction();
  v11 = *(*(a3 - 8) + 32);
  v11(a4 + *(v8 + 28), a1, a3);
  v9 = a4 + *(v8 + 32);

  return (v11)(v9, a2, a3);
}

uint64_t OptimisticValue.cancelTransaction(_:)(char *a1, uint64_t a2)
{
  v70 = *(a2 + 16);
  v4 = type metadata accessor for OptimisticValue.Transaction();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v67 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v72 = &v60 - v8;
  v9 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v73 = *(TupleTypeMetadata2 - 8);
  v11 = __chkstk_darwin(TupleTypeMetadata2);
  v13 = &v60 - v12;
  v77 = *(v9 - 8);
  v14 = v77;
  v15 = __chkstk_darwin(v11);
  v76 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v60 - v18;
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  v22 = v5[2];
  v69 = a1;
  v62 = v22;
  v63 = v5 + 2;
  v22(&v60 - v20, a1, v4);
  v65 = v5[7];
  v66 = v5 + 7;
  v65(v21, 0, 1, v4);
  v71 = a2;
  v23 = *(a2 + 28);
  v68 = v14;
  v24 = *(v14 + 16);
  v64 = v23;
  v25 = v9;
  v24(v19, v78 + v23, v9);
  v74 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v24(v13, v21, v25);
  v75 = v26;
  v24(&v13[v26], v19, v25);
  v27 = v5;
  v28 = v5[6];
  v79 = v13;
  if (v28(v13, 1, v4) == 1)
  {
    v61 = v27;
    v29 = *(v77 + 8);
    v29(v19, v25);
    v29(v21, v25);
    v30 = v79;
    v31 = v28(&v79[v75], 1, v4) == 1;
    v32 = v30;
    if (!v31)
    {
      return (*(v73 + 8))(v32, v74);
    }

    v33 = v4;
    v29(v30, v25);
LABEL_9:
    v79 = v29;
    v44 = v25;
    if (one-time initialization token for optimisticValue != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.optimisticValue);
    v46 = v67;
    v47 = v69;
    v48 = v62;
    v62(v67, v69, v33);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v80 = v52;
      *v51 = 136446210;
      v48(v72, v46, v33);
      v53 = v33;
      v54 = String.init<A>(describing:)();
      v56 = v55;
      (v61[1])(v46, v53);
      v57 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v54, v56, &v80);

      *(v51 + 4) = v57;
      v33 = v53;
      _os_log_impl(&_mh_execute_header, v49, v50, "Cancelled transaction: %{public}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
    }

    else
    {

      (v61[1])(v46, v33);
    }

    v58 = v78;
    (*(*(v70 - 8) + 24))(v78, &v47[*(v33 + 28)]);
    OptimisticValue.underlyingValue.didset(v71);
    v59 = v64;
    (v79)(v58 + v64, v44);
    return v65(v58 + v59, 1, 1, v33);
  }

  v34 = v79;
  v24(v76, v79, v25);
  v35 = &v34[v75];
  v36 = v75;
  v33 = v4;
  if (v28(v35, 1, v4) == 1)
  {
    v37 = *(v77 + 8);
    v37(v19, v25);
    v37(v21, v25);
    (v27[1])(v76, v4);
    v32 = v79;
    return (*(v73 + 8))(v32, v74);
  }

  v61 = v27;
  v39 = v79;
  v40 = v72;
  (v27[4])(v72, &v79[v36], v33);
  v41 = v76;
  LODWORD(v75) = static UUID.== infix(_:_:)();
  v42 = v27[1];
  v42(v40, v33);
  v43 = *(v77 + 8);
  v43(v19, v25);
  v43(v21, v25);
  v42(v41, v33);
  v29 = v43;
  result = (v43)(v39, v25);
  if (v75)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t OptimisticValue.completeTransaction(_:)(char *a1, uint64_t a2)
{
  v70 = *(a2 + 16);
  v4 = type metadata accessor for OptimisticValue.Transaction();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v67 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v72 = &v60 - v8;
  v9 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v73 = *(TupleTypeMetadata2 - 8);
  v11 = __chkstk_darwin(TupleTypeMetadata2);
  v13 = &v60 - v12;
  v77 = *(v9 - 8);
  v14 = v77;
  v15 = __chkstk_darwin(v11);
  v76 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v60 - v18;
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  v22 = v5[2];
  v69 = a1;
  v62 = v22;
  v63 = v5 + 2;
  v22(&v60 - v20, a1, v4);
  v65 = v5[7];
  v66 = v5 + 7;
  v65(v21, 0, 1, v4);
  v71 = a2;
  v23 = *(a2 + 28);
  v68 = v14;
  v24 = *(v14 + 16);
  v64 = v23;
  v25 = v9;
  v24(v19, v78 + v23, v9);
  v74 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v24(v13, v21, v25);
  v75 = v26;
  v24(&v13[v26], v19, v25);
  v27 = v5;
  v28 = v5[6];
  v79 = v13;
  if (v28(v13, 1, v4) == 1)
  {
    v61 = v27;
    v29 = *(v77 + 8);
    v29(v19, v25);
    v29(v21, v25);
    v30 = v79;
    v31 = v28(&v79[v75], 1, v4) == 1;
    v32 = v30;
    if (!v31)
    {
      return (*(v73 + 8))(v32, v74);
    }

    v33 = v4;
    v29(v30, v25);
LABEL_9:
    v79 = v29;
    v44 = v25;
    if (one-time initialization token for optimisticValue != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.optimisticValue);
    v46 = v67;
    v47 = v69;
    v48 = v62;
    v62(v67, v69, v33);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v80 = v52;
      *v51 = 136446210;
      v48(v72, v46, v33);
      v53 = v33;
      v54 = String.init<A>(describing:)();
      v56 = v55;
      (v61[1])(v46, v53);
      v57 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v54, v56, &v80);

      *(v51 + 4) = v57;
      v33 = v53;
      _os_log_impl(&_mh_execute_header, v49, v50, "Completed transaction: %{public}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
    }

    else
    {

      (v61[1])(v46, v33);
    }

    v58 = v78;
    (*(*(v70 - 8) + 24))(v78, &v47[*(v33 + 32)]);
    OptimisticValue.underlyingValue.didset(v71);
    v59 = v64;
    (v79)(v58 + v64, v44);
    return v65(v58 + v59, 1, 1, v33);
  }

  v34 = v79;
  v24(v76, v79, v25);
  v35 = &v34[v75];
  v36 = v75;
  v33 = v4;
  if (v28(v35, 1, v4) == 1)
  {
    v37 = *(v77 + 8);
    v37(v19, v25);
    v37(v21, v25);
    (v27[1])(v76, v4);
    v32 = v79;
    return (*(v73 + 8))(v32, v74);
  }

  v61 = v27;
  v39 = v79;
  v40 = v72;
  (v27[4])(v72, &v79[v36], v33);
  v41 = v76;
  LODWORD(v75) = static UUID.== infix(_:_:)();
  v42 = v27[1];
  v42(v40, v33);
  v43 = *(v77 + 8);
  v43(v19, v25);
  v43(v21, v25);
  v42(v41, v33);
  v29 = v43;
  result = (v43)(v39, v25);
  if (v75)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t static OptimisticValue<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OptimisticValue();
  OptimisticValue.value.getter(v10, v9);
  OptimisticValue.value.getter(v10, v7);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v4 + 8);
  v12(v7, a3);
  v12(v9, a3);
  return v11 & 1;
}

uint64_t one-time initialization function for optimisticValue()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.optimisticValue);
  __swift_project_value_buffer(v0, static Logger.optimisticValue);
  return Logger.init(subsystem:category:)();
}

uint64_t specialized OptimisticValue.value.setter(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 24))(v2, a1);

  return OptimisticValue.underlyingValue.didset(a2);
}

uint64_t type metadata completion function for OptimisticValue()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for OptimisticValue.Transaction();
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OptimisticValue(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v7 <= v10)
  {
    v11 = *(v8 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  v15 = *(v8 + 64);
  if (v11)
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = v14 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 80);
  v18 = *(v6 + 80) | *(v9 + 80);
  v19 = v14 + v18;
  v20 = v15 + v17;
  v21 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_37;
  }

  v22 = v16 + ((v14 + v17 + (v20 & ~v17)) & ~v17) + (v19 & ~v18);
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_16;
  }

  v25 = ((v21 + ~(-1 << v23)) >> v23) + 1;
  v21 = HIWORD(v25);
  if (v21)
  {
    v24 = *(a1 + v22);
    if (!v24)
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v25 > 0xFF)
  {
    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v25 >= 2)
  {
LABEL_16:
    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_36;
    }

LABEL_23:
    v26 = (v24 - 1) << v23;
    if (v22 > 3)
    {
      v26 = 0;
    }

    if (v22)
    {
      if (v22 <= 3)
      {
        v27 = v22;
      }

      else
      {
        v27 = 4;
      }

      if (v27 > 2)
      {
        if (v27 == 3)
        {
          v28 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v28 = *a1;
        }
      }

      else if (v27 == 1)
      {
        v28 = *a1;
      }

      else
      {
        v28 = *a1;
      }
    }

    else
    {
      v28 = 0;
    }

    return v13 + (v28 | v26) + 1;
  }

LABEL_36:
  if (!v13)
  {
    return 0;
  }

LABEL_37:
  if (v7 >= v12)
  {
    v33 = *(v6 + 48);

    return v33(a1, v7, v5);
  }

  else
  {
    if (!v11)
    {
      return 0;
    }

    v29 = (a1 + v19) & ~v18;
    if (v10 >= v7)
    {
      v34 = (*(v9 + 48))(v29);
      v31 = v34 != 0;
      result = (v34 - 1);
      if (result != 0 && v31)
      {
        return result;
      }

      return 0;
    }

    v30 = (*(v6 + 48))((v20 + v29) & ~v17, v7, v5, v21);
    v31 = v30 != 0;
    result = (v30 - 1);
    if (result == 0 || !v31)
    {
      return 0;
    }
  }

  return result;
}

void storeEnumTagSinglePayload for OptimisticValue(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = type metadata accessor for UUID();
  v11 = v8;
  v12 = 0;
  v13 = *(v10 - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = *(v8 + 64);
  if (v9 <= v15)
  {
    v17 = *(v13 + 84);
  }

  else
  {
    v17 = v9;
  }

  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v11 + 80);
  v21 = *(v11 + 80) | *(v13 + 80);
  v22 = *(v13 + 64) + v20;
  v23 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
  if (v17)
  {
    v24 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
  }

  else
  {
    v24 = v23 + 1;
  }

  v25 = v24 + ((v16 + v21) & ~v21);
  if (a3 <= v19)
  {
    goto LABEL_27;
  }

  if (v25 > 3)
  {
    v12 = 1;
    if (v19 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v28 = ~v19 + a2;
    if (v25 >= 4)
    {
      bzero(a1, v25);
      *a1 = v28;
      v29 = 1;
      if (v12 > 1)
      {
        goto LABEL_30;
      }

LABEL_66:
      if (v12)
      {
        a1[v25] = v29;
      }

      return;
    }

    v29 = (v28 >> (8 * v25)) + 1;
    if (v25)
    {
      v34 = v28 & ~(-1 << (8 * v25));
      bzero(a1, v25);
      if (v25 != 3)
      {
        if (v25 == 2)
        {
          *a1 = v34;
          if (v12 <= 1)
          {
            goto LABEL_66;
          }
        }

        else
        {
          *a1 = v28;
          if (v12 <= 1)
          {
            goto LABEL_66;
          }
        }

LABEL_30:
        if (v12 == 2)
        {
          *&a1[v25] = v29;
        }

        else
        {
          *&a1[v25] = v29;
        }

        return;
      }

      *a1 = v34;
      a1[2] = BYTE2(v34);
    }

    if (v12 <= 1)
    {
      goto LABEL_66;
    }

    goto LABEL_30;
  }

  v26 = ((a3 - v19 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
  if (!HIWORD(v26))
  {
    if (v26 < 0x100)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    if (v26 >= 2)
    {
      v12 = v27;
    }

    else
    {
      v12 = 0;
    }

LABEL_27:
    if (v19 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v12 = 4;
  if (v19 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v25] = 0;
  }

  else if (v12)
  {
    a1[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 >= v18)
  {
    v35 = *(v11 + 56);
    v36 = a1;
    v37 = a2;
    goto LABEL_53;
  }

  v30 = (&a1[v16 + v21] & ~v21);
  if (v18 < a2)
  {
    if (v24 <= 3)
    {
      v31 = ~(-1 << (8 * v24));
    }

    else
    {
      v31 = -1;
    }

    if (v24)
    {
      v32 = v31 & (~v18 + a2);
      if (v24 <= 3)
      {
        v33 = v24;
      }

      else
      {
        v33 = 4;
      }

      bzero(v30, v24);
      if (v33 <= 2)
      {
        if (v33 == 1)
        {
LABEL_46:
          *v30 = v32;
          return;
        }

LABEL_80:
        *v30 = v32;
        return;
      }

LABEL_81:
      if (v33 == 3)
      {
        *v30 = v32;
        v30[2] = BYTE2(v32);
      }

      else
      {
        *v30 = v32;
      }

      return;
    }

    return;
  }

  if (a2 < v17)
  {
    if (v15 >= v9)
    {
      v39 = *(v14 + 56);

      v39(v30, (a2 + 1));
      return;
    }

    v35 = *(v11 + 56);
    v36 = (&v30[v22] & ~v20);
    v37 = (a2 + 1);
LABEL_53:

    v35(v36, v37, v9, v7);
    return;
  }

  if (v23 <= 3)
  {
    v38 = ~(-1 << (8 * v23));
  }

  else
  {
    v38 = -1;
  }

  if (v23)
  {
    v32 = v38 & (a2 - v17);
    if (v23 <= 3)
    {
      v33 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
    }

    else
    {
      v33 = 4;
    }

    bzero(v30, v23);
    if (v33 <= 2)
    {
      if (v33 == 1)
      {
        goto LABEL_46;
      }

      goto LABEL_80;
    }

    goto LABEL_81;
  }
}

uint64_t type metadata completion function for OptimisticValue.Transaction()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OptimisticValue.Transaction(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void storeEnumTagSinglePayload for OptimisticValue.Transaction(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((*(v10 + 64) + v13 + ((v12 + v13) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

unint64_t PlayActivityFeatureIdentifier.rawValue.getter(char a1)
{
  result = 0x65645F6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x736D75626C61;
      break;
    case 2:
      result = 0x5F7972617262696CLL;
      break;
    case 3:
      result = 0x74616C69706D6F63;
      break;
    case 4:
      result = 0x7265736F706D6F63;
      break;
    case 5:
      result = 0x7365726E6567;
      break;
    case 6:
      result = 0x726F665F6564616DLL;
      break;
    case 7:
      result = 0x736569766F6DLL;
      break;
    case 8:
      result = 0x69765F636973756DLL;
      break;
    case 9:
      result = 1936615792;
      break;
    case 10:
      result = 0x7473696C79616C70;
      break;
    case 11:
    case 12:
      result = 0x7473696C79616C70;
      break;
    case 13:
      result = 0x796C746E65636572;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x73676E6F73;
      break;
    case 16:
      result = 0x73776F6873;
      break;
    case 17:
      result = 0x7365646F73697065;
      break;
    case 18:
      result = 0x79616C705F776F6ELL;
      break;
    case 19:
      result = 0x616C705F696E696DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PlayActivityFeatureIdentifier(char *a1, char *a2)
{
  v2 = *a2;
  v3 = PlayActivityFeatureIdentifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PlayActivityFeatureIdentifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PlayActivityFeatureIdentifier()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PlayActivityFeatureIdentifier.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PlayActivityFeatureIdentifier()
{
  PlayActivityFeatureIdentifier.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PlayActivityFeatureIdentifier()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PlayActivityFeatureIdentifier.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PlayActivityFeatureIdentifier@<X0>(_BYTE *a1@<X8>)
{
  result = specialized PlayActivityFeatureIdentifier.init(rawValue:)();
  *a1 = result;
  return result;
}

unint64_t _s9MusicCore29PlayActivityFeatureIdentifierOs12IdentifiableAAsADP2id2IDQzvgTW_0@<X0>(unint64_t *a1@<X8>)
{
  result = PlayActivityFeatureIdentifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t specialized PlayActivityFeatureIdentifier.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

unint64_t lazy protocol witness table accessor for type PlayActivityFeatureIdentifier and conformance PlayActivityFeatureIdentifier()
{
  result = lazy protocol witness table cache variable for type PlayActivityFeatureIdentifier and conformance PlayActivityFeatureIdentifier;
  if (!lazy protocol witness table cache variable for type PlayActivityFeatureIdentifier and conformance PlayActivityFeatureIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayActivityFeatureIdentifier and conformance PlayActivityFeatureIdentifier);
  }

  return result;
}

uint64_t PlaylistSortingController.trackListSortDidChange.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(*v1);
  return v2;
}

uint64_t PlaylistSortingController.trackListSortDidChange.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6);
}

uint64_t PlaylistSortingController.currentTrackListSort.didset(uint64_t a1)
{
  v2 = v1;
  v4 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v5 = v4[1];
  result = specialized == infix<A>(_:_:)(a1, *v4);
  if ((result & 1) == 0 || ((((a1 & 0x100) == 0) ^ v5) & 1) == 0)
  {
    v7 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
    swift_beginAccess();
    v8 = *v7;
    if (*v7)
    {
      v9 = *v4;
      if (v4[1])
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      v8(v10 | v9);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v8);
    }

    v11 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate;
    *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) = 1;
    v12 = [objc_opt_self() standardUserDefaults];
    v13 = *v4;
    v14 = v4[1];
    v20[3] = &type metadata for Actions.SortPlaylist.TrackListSort;
    v20[4] = lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort();
    v20[5] = lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort();
    LOBYTE(v20[0]) = v13;
    BYTE1(v20[0]) = v14;
    Playlist.catalogID.getter();
    if (!v15)
    {
      Playlist.id.getter();
    }

    lazy protocol witness table accessor for type String and conformance String();
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    NSUserDefaults.encodeValue(_:forKey:)(v20);

    result = __swift_destroy_boxed_opaque_existential_0Tm(v20);
    *(v2 + v11) = 0;
  }

  return result;
}

uint64_t PlaylistSortingController.currentTrackListSort.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | *v1;
}

uint64_t PlaylistSortingController.currentTrackListSort.setter(__int16 a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return PlaylistSortingController.currentTrackListSort.didset(v6 | v4);
}

void (*PlaylistSortingController.currentTrackListSort.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 40) = *v6;
  *(v4 + 41) = v7;
  return PlaylistSortingController.currentTrackListSort.modify;
}

void PlaylistSortingController.currentTrackListSort.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 24) + *(*a1 + 32));
  v3 = *(*a1 + 41);
  v4 = *v2;
  v5 = v2[1];
  *v2 = *(*a1 + 40);
  v2[1] = v3;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  PlaylistSortingController.currentTrackListSort.didset(v6 | v4);

  free(v1);
}

uint64_t PlaylistSortingController.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for Playlist();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  *v11 = 0;
  v11[1] = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort) = 256;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_userDefaultsSortObserver) = 0;
  outlined init with copy of TaskPriority?(a1, v6, &_s8MusicKit8PlaylistVSgMd);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of TaskPriority?(a1, &_s8MusicKit8PlaylistVSgMd);
    outlined destroy of TaskPriority?(v6, &_s8MusicKit8PlaylistVSgMd);
LABEL_15:
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange));

    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  MusicLibrary.state<A>(for:)();

  v12 = dispatch thunk of MusicLibrary.ItemState.isAdded.getter();

  if ((v12 & 1) == 0)
  {
    outlined destroy of TaskPriority?(a1, &_s8MusicKit8PlaylistVSgMd);
    (*(v8 + 8))(v10, v7);
    goto LABEL_15;
  }

  (*(v8 + 16))(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist, v10, v7);
  v41 = objc_opt_self();
  v13 = [v41 standardUserDefaults];
  v45 = 0x2D74726F53;
  v46 = 0xE500000000000000;
  v14 = Playlist.catalogID.getter();
  v42 = a1;
  if (!v15)
  {
    v14 = Playlist.id.getter();
  }

  v51 = v14;
  v52 = v15;
  v49 = 46;
  v50 = 0xE100000000000000;
  v47 = 45;
  v48 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort();
  lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for Actions.SortPlaylist.TrackListSort, &v47);

  if ((v47 & 0xFF00) == 0x200)
  {
    v20 = [v41 standardUserDefaults];
    v21 = Playlist.catalogID.getter();
    if (!v22)
    {
      v21 = Playlist.id.getter();
    }

    v45 = v21;
    v46 = v22;
    v51 = 46;
    v52 = 0xE100000000000000;
    v49 = 45;
    v50 = 0xE100000000000000;
    LOBYTE(v23) = 1;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v26 = v25;

    v27 = NSUserDefaults.sortType(for:keyDomain:)(0xC2u, v24, v26);

    v28 = 0;
    if (v27 <= 6u)
    {
      switch(v27)
      {
        case 1u:
          v28 = 0;
          LOBYTE(v23) = 0;
          break;
        case 2u:
          v28 = 1;
          break;
        case 6u:
          v28 = 2;
          break;
      }

      goto LABEL_25;
    }

    switch(v27)
    {
      case 7u:
        v28 = 3;
        break;
      case 0xBu:
        goto LABEL_21;
      case 0xCu:
        LOBYTE(v23) = 0;
LABEL_21:
        v28 = 4;
        break;
    }
  }

  else
  {
    v28 = v47;
    v23 = BYTE1(v47) & 1;
  }

LABEL_25:
  v29 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  *v29 = v28;
  v29[1] = v23;
  v51 = 0x2D74726F53;
  v52 = 0xE500000000000000;
  v30 = Playlist.catalogID.getter();
  if (!v31)
  {
    v30 = Playlist.id.getter();
  }

  v32 = v30;
  v33 = v31;
  v41 = type metadata accessor for NSUserDefaults();
  v49 = v32;
  v50 = v33;
  v47 = 46;
  v48 = 0xE100000000000000;
  v43 = 45;
  v44 = 0xE100000000000000;
  v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v36 = v35;

  v37._countAndFlagsBits = v34;
  v37._object = v36;
  String.append(_:)(v37);

  v38 = swift_allocObject();
  swift_weakInit();

  v39 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v51, 0, 0, partial apply for closure #1 in PlaylistSortingController.init(_:), v38, &type metadata for String);

  outlined destroy of TaskPriority?(v42, &_s8MusicKit8PlaylistVSgMd);

  (*(v8 + 8))(v10, v7);

  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_userDefaultsSortObserver) = v39;

  return v2;
}

unint64_t type metadata accessor for NSUserDefaults()
{
  result = lazy cache variable for type metadata for NSUserDefaults;
  if (!lazy cache variable for type metadata for NSUserDefaults)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUserDefaults);
  }

  return result;
}

uint64_t sub_1002A1018()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t closure #1 in PlaylistSortingController.init(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v2 - 8);
  v4 = v14 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(result + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) & 1) == 0)
    {
      v6 = result;
      outlined init with copy of TaskPriority?(a1, v15, &_sypSgMd_0);
      if (!v16)
      {

        return outlined destroy of TaskPriority?(v15, &_sypSgMd_0);
      }

      if (swift_dynamicCast())
      {
        v8 = v14[1];
        v7 = v14[2];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v9 = v15[0];
        v10 = v15[1];
        v11 = type metadata accessor for TaskPriority();
        (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
        type metadata accessor for MainActor();

        v12 = static MainActor.shared.getter();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = &protocol witness table for MainActor;
        *(v13 + 32) = v6;
        *(v13 + 40) = v9;
        *(v13 + 41) = v10;
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #1 in PlaylistSortingController.init(_:), v13);

        outlined consume of Data._Representation(v8, v7);
      }
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in PlaylistSortingController.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 56) = a5;
  *(v5 + 40) = a4;
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in PlaylistSortingController.init(_:), v7, v6);
}

uint64_t closure #1 in closure #1 in PlaylistSortingController.init(_:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = HIBYTE(v1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  PlaylistSortingController.currentTrackListSort.didset(v6 | v4);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t PlaylistSortingController.actionBuilder.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
  __chkstk_darwin(v1 - 8);
  v72 = v58 - v2;
  v71 = type metadata accessor for Actions.SortPlaylist.Context();
  v70 = *(v71 - 8);
  v3 = __chkstk_darwin(v71);
  v68 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v67 = v58 - v6;
  v69 = v7;
  __chkstk_darwin(v5);
  v63 = v58 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);
  v65 = *(v66 - 8);
  v9 = __chkstk_darwin(v66);
  v62 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v61 = v58 - v12;
  v13 = __chkstk_darwin(v11);
  v60 = v58 - v14;
  v64 = v15;
  __chkstk_darwin(v13);
  v17 = v58 - v16;
  v73 = v0;
  v58[1] = v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v59 = v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort;
  swift_beginAccess();
  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v77 = xmmword_1004F2400;
  do
  {
    v76 = v19;
    v75 = v18;
    v20 = *(&outlined read-only object #0 of PlaylistSortingController.actionBuilder.getter + v18 + 32);
    v21 = *v59;
    v22 = v59[1];
    v23 = v72;
    Playlist.variant.getter();
    v24 = v71;
    v25 = *(v71 + 24);
    v26 = type metadata accessor for Playlist.Variant();
    v27 = v63;
    (*(*(v26 - 8) + 56))(&v63[v25], 1, 1, v26);
    *v27 = v20;
    v27[1] = v21;
    v27[2] = v22;
    v28 = v73;

    outlined assign with take of Playlist.Variant?(v23, &v27[v25]);
    v29 = &v27[*(v24 + 28)];
    *v29 = partial apply for closure #1 in PlaylistSortingController.actionBuilder.getter;
    v29[1] = v28;
    v30 = v67;
    outlined init with copy of Actions.SortPlaylist.Context(v27, v67);
    v31 = v20 + 14;
    v74 = v20 + 14;
    v32 = v68;
    outlined init with copy of Actions.SortPlaylist.Context(v27, v68);
    v33 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v34 = swift_allocObject();
    outlined init with take of Actions.SortPlaylist.Context(v32, v34 + v33);
    outlined init with take of Actions.SortPlaylist.Context(v30, v17);
    v35 = v66;
    v17[*(v66 + 36)] = v31;
    *&v17[v35[11]] = 0x4014000000000000;
    v36 = &v17[v35[10]];
    *v36 = variable initialization expression of _NSRange.NSRangeIterator.current;
    v36[1] = 0;
    v37 = &v17[v35[12]];
    *v37 = &async function pointer to partial apply for closure #2 in static Actions.SortPlaylist.action(context:);
    *(v37 + 1) = v34;
    v38 = &v17[v35[13]];
    *v38 = &async function pointer to closure #3 in static Actions.SortPlaylist.action(context:);
    *(v38 + 1) = 0;
    outlined destroy of Actions.SortPlaylist.Context(v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore10ActionMenuC4ItemVGMd);
    inited = swift_initStackObject();
    *(inited + 16) = v77;
    v40 = v60;
    outlined init with copy of TaskPriority?(v17, v60, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);
    v41 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v42 = swift_allocObject();
    outlined init with take of Action<Actions.SortPlaylist.Context, ()>(v40, v42 + v41);
    v43 = v61;
    outlined init with copy of TaskPriority?(v17, v61, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);
    v44 = swift_allocObject();
    outlined init with take of Action<Actions.SortPlaylist.Context, ()>(v43, v44 + v41);
    v45 = v62;
    outlined init with copy of TaskPriority?(v17, v62, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);
    v46 = swift_allocObject();
    outlined init with take of Action<Actions.SortPlaylist.Context, ()>(v45, v46 + v41);
    *(inited + 32) = v74;
    *(inited + 40) = partial apply for specialized closure #1 in static ActionBuilder.buildExpression<A, B>(_:);
    *(inited + 48) = v42;
    *(inited + 56) = partial apply for specialized closure #2 in static ActionBuilder.buildExpression<A, B>(_:);
    *(inited + 64) = v44;
    *(inited + 72) = &async function pointer to partial apply for specialized closure #3 in static ActionBuilder.buildExpression<A, B>(_:);
    *(inited + 80) = v46;
    v19 = v76;
    outlined destroy of TaskPriority?(v17, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay9MusicCore10ActionMenuC4ItemVGGMd);
    v47 = swift_initStackObject();
    *(v47 + 16) = v77;
    *(v47 + 32) = inited;
    v48 = v47 + 32;
    v49 = specialized static ActionBuilder.buildBlock(_:)(v47);
    swift_setDeallocating();
    outlined destroy of TaskPriority?(v48, &_sSay9MusicCore10ActionMenuC4ItemVGMd);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
    }

    v51 = v19[2];
    v50 = v19[3];
    v52 = v75;
    if (v51 >= v50 >> 1)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v19);
    }

    v18 = v52 + 1;
    v19[2] = (v51 + 1);
    v19[v51 + 4] = v49;
  }

  while (v18 != 5);
  v53 = specialized static ActionBuilder.buildBlock(_:)(v19);

  v54 = swift_initStackObject();
  *(v54 + 16) = v77;
  *(v54 + 32) = v53;
  v55 = v54 + 32;
  v56 = specialized static ActionBuilder.buildBlock(_:)(v54);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v55, &_sSay9MusicCore10ActionMenuC4ItemVGMd);
  return v56;
}

uint64_t closure #1 in PlaylistSortingController.actionBuilder.getter(__int16 a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return PlaylistSortingController.currentTrackListSort.didset(v6 | v4);
}

uint64_t static PlaylistSortingController.apply(for:to:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  swift_allocObject();
  result = PlaylistSortingController.init(_:)(v4);
  if (result)
  {
    PlaylistSortingController.apply(to:)();
  }

  return result;
}

uint64_t PlaylistSortingController.apply(to:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v2 = *v1;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE5EntryVGMd);
      MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();

      swift_getKeyPath();
      MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
    }

    else
    {
      if (v2 != 3)
      {
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE5EntryVGMd);
        MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
        goto LABEL_10;
      }

      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE5EntryVGMd);
      MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
    }

    swift_getKeyPath();
    MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
LABEL_10:

LABEL_12:
    swift_getKeyPath();
    goto LABEL_13;
  }

  if (*v1)
  {
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE5EntryVGMd);
    MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();

    goto LABEL_12;
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23LibrarySectionedRequestVyAA8PlaylistVAE5EntryVGMd);
LABEL_13:
  MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
}

uint64_t PlaylistSortingController.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v2 = type metadata accessor for Playlist();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange));

  return v0;
}

uint64_t PlaylistSortingController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v2 = type metadata accessor for Playlist();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange));

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for playlistSorting()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.playlistSorting);
  __swift_project_value_buffer(v0, static Logger.playlistSorting);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002A22F4()
{
  v1 = type metadata accessor for Actions.SortPlaylist.Context();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 24);
  v4 = type metadata accessor for Playlist.Variant();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t _s9MusicCore7ActionsO12SortPlaylistO6action7contextAA6ActionVyAE7ContextVytGAK_tFZyALYaYbcfU0_TA_0(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Actions.SortPlaylist.Context() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in static Actions.SortPlaylist.action(context:)(a1, a2, v2 + v7);
}

uint64_t outlined destroy of Actions.SortPlaylist.Context(uint64_t a1)
{
  v2 = type metadata accessor for Actions.SortPlaylist.Context();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Action<Actions.SortPlaylist.Context, ()>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A281C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  result = dispatch thunk of LibraryPlaylistEntryInternalSortProperties.trackNumber.getter();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t keypath_get_16Tm@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1002A28DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  result = dispatch thunk of LibraryPlaylistEntryInternalSortProperties.position.getter();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for PlaylistSortingController()
{
  result = type metadata singleton initialization cache for PlaylistSortingController;
  if (!type metadata singleton initialization cache for PlaylistSortingController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PlaylistSortingController()
{
  result = type metadata accessor for Playlist();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002A2A30()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in PlaylistSortingController.init(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in PlaylistSortingController.init(_:)(a1, v4, v5, v6, v8 | v7);
}

double QRCode.init(data:errorCorrectionLevel:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  specialized QRCode.init(data:errorCorrectionLevel:)(a1, a2, a3, v7);
  result = *v7;
  v6 = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = v6;
  *(a4 + 32) = v8;
  return result;
}

uint64_t QRCode.data.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

void closure #1 in QRCode.init(data:errorCorrectionLevel:)(void *a1, void *a2, CGImage *a3, uint64_t a4, CGContext *a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, double a11)
{
  [a1 beginPage];
  v69 = a1;
  v19 = [a1 CGContext];
  if (one-time initialization token for multiplier != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v20 = *&static QRCode.multiplier;
    CGContextSetLineWidth(v19, *&static QRCode.multiplier);

    v21 = objc_opt_self();
    v22 = [v21 whiteColor];
    [v22 setStroke];

    v23 = [v21 whiteColor];
    [v23 setFill];

    v24 = v20 * a6;
    v72.origin.x = a7;
    v72.origin.y = a8;
    v72.size.width = a9;
    v72.size.height = a10;
    v25 = CGRectGetWidth(v72) - v20 * a6;
    v73.origin.x = a7;
    v73.origin.y = a8;
    v73.size.width = a9;
    a9 = v20;
    v73.size.height = a10;
    v26 = CGRectGetHeight(v73) - v20 * a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EB0;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 48) = v24;
    *(inited + 56) = v24;
    v65 = v25;
    *(inited + 64) = v25;
    *(inited + 72) = 0;
    *(inited + 80) = v24;
    *(inited + 88) = v24;
    *(inited + 96) = 0;
    v67 = v26;
    *(inited + 104) = v26;
    *(inited + 112) = v24;
    *(inited + 120) = v24;
    v28 = objc_opt_self();
    v29 = *(inited + 32);
    v30 = *(inited + 40);
    a10 = *(inited + 48);
    v31 = *(inited + 56);
    v74.origin.x = v29;
    v74.origin.y = v30;
    v74.size.width = a10;
    v74.size.height = v31;
    v66 = a9 * 0.5;
    v75 = CGRectInset(v74, a9 * 0.5, a9 * 0.5);
    v32 = [v28 _bezierPathWithPillRect:v75.origin.x cornerRadius:{v75.origin.y, v75.size.width, v75.size.height, 10.0}];
    if (v32)
    {
      v33 = v32;
      [v32 setLineWidth:a9];
      [v33 stroke];
      v64 = a9;
      v34 = a9 * a11;
      v76.origin.x = v29;
      v76.origin.y = v30;
      v76.size.width = a10;
      v76.size.height = v31;
      v35 = v34 * 0.5;
      v63 = CGRectGetMidX(v76) - v34 * 0.5;
      v77.origin.x = v29;
      v77.origin.y = v30;
      v77.size.width = a10;
      v77.size.height = v31;
      MidY = CGRectGetMidY(v77);
      v37 = v34;
      v38 = v34;
      a9 = v64;
      v39 = [v28 _bezierPathWithPillRect:v63 cornerRadius:{MidY - v35, v37, v38, 2.0}];
      [v39 fill];
    }

    v78.origin.y = 0.0;
    a8 = v66;
    v78.origin.x = v65;
    v78.size.width = v24;
    v78.size.height = v24;
    v79 = CGRectInset(v78, v66, v66);
    v40 = [v28 _bezierPathWithPillRect:v79.origin.x cornerRadius:{v79.origin.y, v79.size.width, v79.size.height, 10.0}];
    if (v40)
    {
      v41 = v40;
      [v40 setLineWidth:a9];
      [v41 stroke];
      v80.origin.y = 0.0;
      v80.origin.x = v65;
      v80.size.width = v24;
      v80.size.height = v24;
      a10 = CGRectGetMidX(v80) - a9 * a11 * 0.5;
      v81.origin.y = 0.0;
      v81.origin.x = v65;
      v81.size.width = v24;
      v81.size.height = v24;
      v42 = [v28 _bezierPathWithPillRect:a10 cornerRadius:{CGRectGetMidY(v81) - a9 * a11 * 0.5, a9 * a11, a9 * a11, 2.0}];
      [v42 fill];
    }

    else
    {
    }

    v82.origin.x = 0.0;
    v82.origin.y = v67;
    v82.size.width = v24;
    v82.size.height = v24;
    v83 = CGRectInset(v82, v66, v66);
    v43 = [v28 _bezierPathWithPillRect:v83.origin.x cornerRadius:{v83.origin.y, v83.size.width, v83.size.height, 10.0}];
    if (v43)
    {
      v44 = v43;
      [v43 setLineWidth:a9];
      [v44 stroke];
      v84.origin.x = 0.0;
      v84.origin.y = v67;
      v84.size.width = v24;
      v84.size.height = v24;
      a10 = CGRectGetMidX(v84) - a9 * a11 * 0.5;
      v85.origin.x = 0.0;
      v85.origin.y = v67;
      v85.size.width = v24;
      v85.size.height = v24;
      v45 = [v28 _bezierPathWithPillRect:a10 cornerRadius:{CGRectGetMidY(v85) - a9 * a11 * 0.5, a9 * a11, a9 * a11, 2.0}];
      [v45 fill];
    }

    [a2 extent];
    Height = CGRectGetHeight(v86);
    if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (Height <= -9.22337204e18)
    {
      goto LABEL_69;
    }

    if (Height >= 9.22337204e18)
    {
      goto LABEL_70;
    }

    v47 = Height;
    if (Height < 1)
    {
      goto LABEL_71;
    }

    v19 = a5;
    if (Height == 1)
    {
      return;
    }

    v48 = a6;
    a7 = a9 + -1.0;
    v49 = 1;
    *&a11 = Height;
    while (1)
    {
      if (v49 == v47)
      {
        goto LABEL_62;
      }

      [a2 extent];
      Width = CGRectGetWidth(v87);
      if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (Width <= -9.22337204e18)
      {
        goto LABEL_64;
      }

      if (Width >= 9.22337204e18)
      {
        goto LABEL_65;
      }

      v51 = Width;
      if (Width < 1)
      {
        goto LABEL_66;
      }

      if (Width != 1)
      {
        for (i = 1; v51 != i; ++i)
        {
          BytesPerRow = CGImageGetBytesPerRow(a3);
          v55 = BytesPerRow * v49;
          if ((BytesPerRow * v49) >> 64 != (BytesPerRow * v49) >> 63)
          {
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v56 = i * a4;
          if ((i * a4) >> 64 != (i * a4) >> 63)
          {
            goto LABEL_49;
          }

          v57 = __OFADD__(v55, v56);
          v58 = v55 + v56;
          if (v57)
          {
            goto LABEL_50;
          }

          if (!*(v19 + v58))
          {
            if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_51;
            }

            if (a6 <= -9.22337204e18)
            {
              goto LABEL_52;
            }

            if (a6 >= 9.22337204e18)
            {
              goto LABEL_53;
            }

            [a2 extent];
            v59 = CGRectGetWidth(v89);
            if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_54;
            }

            if (v59 <= -9.22337204e18)
            {
              goto LABEL_55;
            }

            if (v59 >= 9.22337204e18)
            {
              goto LABEL_56;
            }

            v60 = v59;
            if (v49 <= v48)
            {
              if (i <= v48)
              {
                continue;
              }

              v57 = __OFSUB__(v60, v48);
              v61 = v60 - v48;
              if (v57)
              {
                goto LABEL_60;
              }

              if (__OFSUB__(v61, 1))
              {
                goto LABEL_61;
              }

              if (i >= v61 - 1)
              {
                continue;
              }
            }

            else
            {
              v57 = __OFSUB__(v60, v48);
              v61 = v60 - v48;
              if (v57)
              {
                goto LABEL_57;
              }
            }

            v57 = __OFSUB__(v61, 1);
            v62 = v61 - 1;
            if (v57)
            {
              goto LABEL_58;
            }

            if (v49 < v62 || i > v48)
            {
              if (__OFSUB__(i, 1))
              {
                goto LABEL_59;
              }

              a10 = a9 * (i - 1);
              v53 = [v69 CGContext];
              v88.origin.x = a10;
              v88.origin.y = a9 * (v49 - 1);
              v88.size.width = a9 + -1.0;
              v88.size.height = a9 + -1.0;
              CGContextFillEllipseInRect(v53, v88);

              v19 = a5;
            }
          }
        }
      }

      ++v49;
      v47 = *&a11;
      if (v49 == *&a11)
      {
        return;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
}

double QRCode.with(errorCorrectionLevel:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 8);
  v5 = *(v2 + 16);
  outlined copy of Data._Representation(v6, v5);
  specialized QRCode.init(data:errorCorrectionLevel:)(v6, v5, a1, v9);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

double QRCode.dotAdjustedWidth(with:scale:)()
{
  v1 = *v0;
  UIRoundToScale();
  return v2 * v1;
}

CGMutablePathRef QRCode.dotAlignedPath(with:in:imageBounds:)(id *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v20.origin.x = a6;
  v20.origin.y = a7;
  v20.size.width = a8;
  v20.size.height = a9;
  CGRectGetWidth(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMinX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinY(v22);

  result = CGPathCreateMutable();
  v15 = a1[2];
  if (v15)
  {
    v16 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v15 - 1 > a1[3] >> 1)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, a1);
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
    CGMutablePathRef.move(to:transform:)();
    v18 = a1[2];
    if (v18)
    {
      v19 = a1 + 5;
      do
      {
        CGMutablePathRef.addLine(to:transform:)();
        v19 += 2;
        --v18;
      }

      while (v18);
    }

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized QRCode.init(data:errorCorrectionLevel:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = objc_opt_self();
  outlined copy of Data._Representation(a1, a2);
  v9 = [v8 QRCodeGenerator];
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(a1, a2);
  v11 = String._bridgeToObjectiveC()();
  [v9 setValue:isa forKey:v11];

  v12 = v9;
  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();
  [v12 setValue:v13 forKey:v14];

  v15 = [v12 outputImage];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v55 = a3;
  v17 = [objc_allocWithZone(CIContext) init];
  [v16 extent];
  v18 = [v17 createCGImage:v16 fromRect:?];

  if (!v18)
  {

LABEL_18:
LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  v19 = CGImageGetDataProvider(v18);
  if (!v19)
  {

    goto LABEL_19;
  }

  v20 = v19;
  v21 = CGDataProviderCopyData(v19);

  if (!v21)
  {

    goto LABEL_20;
  }

  v53 = v21;
  BytePtr = CFDataGetBytePtr(v21);
  if (BytePtr)
  {
    v23 = BytePtr;
    v24 = CGImageGetBitsPerPixel(v18) / 8;
    v25 = Int.seconds.getter(7);
    v26 = Int.seconds.getter(3);
    [v16 extent];
    v27 = CGRectGetWidth(v57) + -2.0;
    if (one-time initialization token for multiplier != -1)
    {
      swift_once();
    }

    v28 = *&static QRCode.multiplier;
    v29 = v27 * *&static QRCode.multiplier;
    [v16 extent];
    v30 = v28 * (CGRectGetHeight(v58) + -2.0);
    v54 = [objc_allocWithZone(UIGraphicsPDFRenderer) initWithBounds:{0.0, 0.0, v29, v30}];
    v31 = swift_allocObject();
    *(v31 + 16) = v25;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0;
    *(v31 + 40) = v29;
    *(v31 + 48) = v30;
    *(v31 + 56) = v26;
    *(v31 + 64) = v16;
    *(v31 + 72) = v18;
    *(v31 + 80) = v24;
    *(v31 + 88) = v23;
    v32 = swift_allocObject();
    *(v32 + 16) = partial apply for closure #1 in QRCode.init(data:errorCorrectionLevel:);
    *(v32 + 24) = v31;
    aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
    aBlock[3] = &block_descriptor_46;
    v33 = _Block_copy(aBlock);

    v52 = v16;
    v51 = v18;

    v34 = [v54 PDFDataWithActions:v33];
    _Block_release(v33);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if (v33)
    {
      __break(1u);
      goto LABEL_30;
    }

    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = Data._bridgeToObjectiveC()().super.isa;
    v39 = CGDataProviderCreateWithCFData(v38);

    if (v39)
    {
      v40 = CGPDFDocumentCreateWithProvider(v39);
      if (v40)
      {
        v41 = v40;
        v42 = CGPDFDocumentGetPage(v40, 1uLL);
        if (v42)
        {
          v50 = v42;
          v43 = [objc_opt_self() _imageWithCGPDFPage:v42];
          if (v43)
          {
            v44 = v43;
            [v52 extent];
            Width = CGRectGetWidth(v59);

            outlined consume of Data._Representation(v35, v37);
            v46 = Width + -2.0;
            if (COERCE__INT64(fabs(Width + -2.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v47 = v55;
              if (v46 > -9.22337204e18)
              {
                if (v46 < 9.22337204e18)
                {
                  v48 = v46;
                  outlined copy of Data._Representation(a1, a2);
                  v49 = v44;
                  outlined consume of Data._Representation(a1, a2);

LABEL_21:
                  *a4 = v48;
                  a4[1] = a1;
                  a4[2] = a2;
                  a4[3] = v44;
                  a4[4] = v47;
                  return;
                }

                goto LABEL_32;
              }

LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          outlined consume of Data._Representation(v35, v37);
        }

        else
        {

          outlined consume of Data._Representation(v35, v37);
        }
      }

      else
      {

        outlined consume of Data._Representation(v35, v37);
      }
    }

    else
    {

      outlined consume of Data._Representation(v35, v37);
    }

    v21 = partial apply for closure #1 in QRCode.init(data:errorCorrectionLevel:);
LABEL_20:
    outlined consume of Data._Representation(a1, a2);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v21);
    v48 = 0;
    a1 = 0;
    a2 = 0;
    v44 = 0;
    v47 = 0;
    goto LABEL_21;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1002A3CAC()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *OS_os_log.sharePlay.unsafeMutableAddressor()
{
  if (one-time initialization token for sharePlay != -1)
  {
    swift_once();
  }

  return &static OS_os_log.sharePlay;
}

uint64_t static OSSignposter.music(_:)()
{

  return OSSignposter.init(subsystem:category:)();
}

uint64_t static OSSignposter.music(_:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  __chkstk_darwin(v2 - 8);
  v3 = a1;
  Logger.init(_:)();
  return OSSignposter.init(logger:)();
}

uint64_t one-time initialization function for launch()
{
  v0 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v0, static OSSignposter.launch);
  __swift_project_value_buffer(v0, static OSSignposter.launch);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t OSSignposter.sharePlay.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for OSSignposter();

  return __swift_project_value_buffer(v3, a2);
}

void one-time initialization function for sharePlay()
{
  v0 = type metadata accessor for Logger();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v1, static OSSignposter.sharePlay);
  __swift_project_value_buffer(v1, static OSSignposter.sharePlay);
  if (one-time initialization token for sharePlay != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.sharePlay;
  Logger.init(_:)();
  OSSignposter.init(logger:)();
}

uint64_t static OSSignposter.launch.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for OSSignposter();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t one-time initialization function for sharePlay()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.sharePlay = result;
  return result;
}

id static OS_os_log.sharePlay.getter()
{
  if (one-time initialization token for sharePlay != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.sharePlay;

  return v1;
}

uint64_t SubscriptionUpsellPresenter.Placement.Source.kind.getter()
{
  outlined init with copy of SubscriptionUpsellPresenter.Placement.Source(v0, v8);
  if (v9 == 1)
  {
    v1 = v8[0];
    v2 = MPModelObject.mediaKitPlayableKind.getter();

    return *&aSongs_4[8 * v2];
  }

  else
  {
    outlined init with take of CatalogIDProviding(v8, v6);
    v4 = v7;
    __swift_project_boxed_opaque_existential_0Tm(v6, v7);
    v5 = MusicItem.mediaKind.getter(v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    return v5;
  }
}

uint64_t MusicItem.mediaKind.getter(uint64_t a1)
{
  v106 = type metadata accessor for Playlist.Entry();
  v105 = *(v106 - 8);
  v3 = __chkstk_darwin(v106);
  v100 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v102 = &v96 - v5;
  v110 = type metadata accessor for Track();
  v104 = *(v110 - 8);
  v6 = __chkstk_darwin(v110);
  v103 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v107 = &v96 - v8;
  v112 = type metadata accessor for GenericMusicItem();
  v109 = *(v112 - 8);
  v9 = __chkstk_darwin(v112);
  v108 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v143 = &v96 - v11;
  v115 = type metadata accessor for UploadedVideo();
  v111 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for UploadedAudio();
  v113 = *(v118 - 8);
  __chkstk_darwin(v118);
  v117 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for TVShow();
  v116 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for TVEpisode();
  v119 = *(v124 - 8);
  __chkstk_darwin(v124);
  v123 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for Station();
  v122 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for Song();
  v125 = *(v129 - 8);
  __chkstk_darwin(v129);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for Playlist();
  v128 = *(v132 - 8);
  __chkstk_darwin(v132);
  v131 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for MusicVideo();
  v130 = *(v134 - 8);
  __chkstk_darwin(v134);
  v142 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for MusicMovie();
  v133 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for Album();
  v135 = *(v141 - 8);
  v22 = __chkstk_darwin(v141);
  v140 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 - 8);
  v25 = __chkstk_darwin(v22);
  v101 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v96 - v28;
  v30 = __chkstk_darwin(v27);
  v139 = &v96 - v31;
  __chkstk_darwin(v30);
  v33 = &v96 - v32;
  if (one-time initialization token for capabilityUpsell != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = __swift_project_value_buffer(v34, static Logger.capabilityUpsell);
  v37 = v24 + 16;
  v36 = *(v24 + 16);
  v144 = v1;
  v36(v33, v1, a1);
  v99 = v35;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v98 = v29;
    v41 = v40;
    v42 = swift_slowAlloc();
    v138 = v24;
    v96 = v42;
    v146 = v42;
    *v41 = 136315138;
    v36(v139, v33, a1);
    v43 = String.init<A>(describing:)();
    v97 = v18;
    v44 = a1;
    v46 = v45;
    v145 = *(v138 + 8);
    v145(v33, v44);
    v47 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v43, v46, &v146);
    a1 = v44;
    v18 = v97;

    *(v41 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "MusicItem - mediaKind =%s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v96);

    v29 = v98;
  }

  else
  {

    v145 = *(v24 + 8);
    v145(v33, a1);
  }

  v48 = v141;
  v49 = v144;
  v141 = v37;
  v36(v29, v144, a1);
  v50 = v140;
  v51 = swift_dynamicCast();
  v53 = v142;
  v52 = v143;
  if (!v51)
  {
    v55 = v36;
    v56 = v136;
    v57 = v137;
    if (swift_dynamicCast())
    {
      (*(v133 + 8))(v56, v57);
      v54 = 0x6F6D2D636973756DLL;
      goto LABEL_36;
    }

    v58 = v134;
    if (swift_dynamicCast())
    {
      (*(v130 + 8))(v53, v58);
      v54 = 0x69762D636973756DLL;
      goto LABEL_36;
    }

    v60 = v131;
    v59 = v132;
    if (swift_dynamicCast())
    {
      (*(v128 + 8))(v60, v59);
      v54 = 0x7473696C79616C70;
      goto LABEL_36;
    }

    v61 = v18;
    v62 = v129;
    if (swift_dynamicCast())
    {
      (*(v125 + 8))(v61, v62);
      v54 = 0x73676E6F73;
      goto LABEL_36;
    }

    v63 = v126;
    v64 = v127;
    if (swift_dynamicCast())
    {
      (*(v122 + 8))(v63, v64);
      v54 = 0x736E6F6974617473;
      goto LABEL_36;
    }

    v65 = v123;
    v66 = v124;
    if (swift_dynamicCast())
    {
      (*(v119 + 8))(v65, v66);
      v54 = 0x6F736970652D7674;
      goto LABEL_36;
    }

    v67 = v120;
    v68 = v121;
    if (swift_dynamicCast())
    {
      (*(v116 + 8))(v67, v68);
      v54 = 0x73776F68732D7674;
      goto LABEL_36;
    }

    v69 = v117;
    v70 = v118;
    if (swift_dynamicCast())
    {
      v54 = 0x646564616F6C7075;
      (*(v113 + 8))(v69, v70);
      goto LABEL_36;
    }

    v71 = v114;
    v72 = v115;
    if (swift_dynamicCast())
    {
      v54 = 0x646564616F6C7075;
      (*(v111 + 8))(v71, v72);
      goto LABEL_36;
    }

    v73 = v52;
    v74 = v112;
    if (swift_dynamicCast())
    {
      v75 = v109;
      v76 = v108;
      (*(v109 + 32))(v108, v73, v74);
      GenericMusicItem.innerItem.getter(&v146);
    }

    else
    {
      v77 = v107;
      v74 = v110;
      if (!swift_dynamicCast())
      {
        v81 = v102;
        if (!swift_dynamicCast())
        {
          v85 = v55;
          v86 = v101;
          v85(v101, v49, a1);
          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v146 = v144;
            *v89 = 136315138;
            v85(v139, v86, a1);
            v90 = String.init<A>(describing:)();
            v91 = v86;
            v92 = v90;
            v94 = v93;
            v145(v91, a1);
            v95 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v92, v94, &v146);

            *(v89 + 4) = v95;
            _os_log_impl(&_mh_execute_header, v87, v88, "Unsupported MusicItem kind=%s", v89, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v144);
          }

          else
          {

            v145(v86, a1);
          }

          goto LABEL_35;
        }

        v82 = v100;
        (*(v105 + 32))(v100, v81, v106);
        Playlist.Entry.innerItem.getter(&v146);
        v83 = v147;
        if (v147)
        {
          v84 = v148;
          __swift_project_boxed_opaque_existential_0Tm(&v146, v147);
          v54 = MusicItem.mediaKind.getter(v83, v84);
          (*(v105 + 8))(v82, v106);
          goto LABEL_32;
        }

        (*(v105 + 8))(v82, v106);
LABEL_34:
        outlined destroy of TaskPriority?(&v146, &_s8MusicKit0A4Item_pSgMd);
LABEL_35:
        v54 = 0;
        goto LABEL_36;
      }

      v75 = v104;
      v76 = v103;
      (*(v104 + 32))(v103, v77, v74);
      Track.musicItem.getter(&v146);
    }

    v78 = v147;
    if (v147)
    {
      v79 = v148;
      __swift_project_boxed_opaque_existential_0Tm(&v146, v147);
      v54 = MusicItem.mediaKind.getter(v78, v79);
      (*(v75 + 8))(v76, v74);
LABEL_32:
      __swift_destroy_boxed_opaque_existential_0Tm(&v146);
      goto LABEL_36;
    }

    (*(v75 + 8))(v76, v74);
    goto LABEL_34;
  }

  (*(v135 + 8))(v50, v48);
  v54 = 0x736D75626C61;
LABEL_36:
  v145(v29, a1);
  return v54;
}

uint64_t MusicItem.catalogID.getter(uint64_t a1)
{
  v123 = type metadata accessor for Playlist.Entry();
  v119 = *(v123 - 8);
  v2 = __chkstk_darwin(v123);
  v118 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v120 = &v114 - v4;
  v127 = type metadata accessor for Track();
  v122 = *(v127 - 8);
  v5 = __chkstk_darwin(v127);
  v121 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v124 = &v114 - v7;
  v131 = type metadata accessor for GenericMusicItem();
  v126 = *(v131 - 8);
  v8 = __chkstk_darwin(v131);
  v125 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v130 = &v114 - v10;
  v135 = type metadata accessor for UploadedVideo();
  v129 = *(v135 - 8);
  v11 = __chkstk_darwin(v135);
  v128 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v114 - v13;
  v139 = type metadata accessor for UploadedAudio();
  v133 = *(v139 - 8);
  v14 = __chkstk_darwin(v139);
  v132 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v138 = &v114 - v16;
  v143 = type metadata accessor for TVShow();
  v137 = *(v143 - 8);
  v17 = __chkstk_darwin(v143);
  v136 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v142 = &v114 - v19;
  v147 = type metadata accessor for TVEpisode();
  v141 = *(v147 - 8);
  v20 = __chkstk_darwin(v147);
  v140 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v146 = &v114 - v22;
  v151 = type metadata accessor for Station();
  v145 = *(v151 - 8);
  v23 = __chkstk_darwin(v151);
  v144 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v150 = &v114 - v25;
  v155 = type metadata accessor for Song();
  v149 = *(v155 - 8);
  v26 = __chkstk_darwin(v155);
  v148 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v154 = &v114 - v28;
  v159 = type metadata accessor for Playlist();
  v153 = *(v159 - 8);
  v29 = __chkstk_darwin(v159);
  v152 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v158 = &v114 - v31;
  v161 = type metadata accessor for MusicVideo();
  v157 = *(v161 - 8);
  v32 = __chkstk_darwin(v161);
  v156 = &v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v114 - v34;
  v36 = type metadata accessor for MusicMovie();
  v160 = *(v36 - 8);
  v37 = __chkstk_darwin(v36);
  v39 = &v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v41 = &v114 - v40;
  v42 = type metadata accessor for Album();
  v43 = *(v42 - 8);
  v44 = __chkstk_darwin(v42);
  v46 = &v114 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v44);
  v49 = &v114 - v48;
  v50 = *(a1 - 8);
  v51 = __chkstk_darwin(v47);
  v114 = &v114 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v117 = &v114 - v54;
  __chkstk_darwin(v53);
  v56 = &v114 - v55;
  v162 = v50;
  v57 = v50 + 16;
  v58 = *(v50 + 16);
  v60 = v59;
  v116 = v57;
  v115 = v58;
  v58(&v114 - v55, v163, v59);
  if (swift_dynamicCast())
  {
    (*(v43 + 32))(v46, v49, v42);
    v61 = Album.catalogID.getter();
    v63 = v62;
    (*(v43 + 8))(v46, v42);
    if (v63)
    {
      v64 = v61;
    }

    else
    {
      v64 = 0;
    }

    v65 = v60;
    v66 = v162;
    goto LABEL_20;
  }

  v65 = v60;
  if (swift_dynamicCast())
  {
    v67 = v160;
    (*(v160 + 32))(v39, v41, v36);
    v64 = MusicMovie.catalogID.getter();
    v69 = v68;
    (*(v67 + 8))(v39, v36);
LABEL_10:
    if (!v69)
    {
      v64 = 0;
    }

    v66 = v162;
    goto LABEL_20;
  }

  v70 = v161;
  if (swift_dynamicCast())
  {
    v72 = v156;
    v71 = v157;
    (*(v157 + 32))(v156, v35, v70);
    v64 = MusicVideo.catalogID.getter();
    v69 = v73;
    (*(v71 + 8))(v72, v70);
    goto LABEL_10;
  }

  v75 = v158;
  v74 = v159;
  v76 = swift_dynamicCast();
  v66 = v162;
  if (v76)
  {
    v78 = v152;
    v77 = v153;
    (*(v153 + 32))(v152, v75, v74);
    v79 = Playlist.catalogID.getter();
LABEL_17:
    v64 = v79;
    v82 = v80;
    (*(v77 + 8))(v78, v74);
    goto LABEL_18;
  }

  v81 = v154;
  v74 = v155;
  if (swift_dynamicCast())
  {
    v78 = v148;
    v77 = v149;
    (*(v149 + 32))(v148, v81, v74);
    v79 = Song.catalogID.getter();
    goto LABEL_17;
  }

  v85 = v150;
  v84 = v151;
  if (swift_dynamicCast())
  {
    v86 = v145;
    v87 = v144;
    (*(v145 + 32))(v144, v85, v84);
    v64 = Station.id.getter();
    (*(v86 + 8))(v87, v84);
    goto LABEL_20;
  }

  v88 = v146;
  v74 = v147;
  if (swift_dynamicCast())
  {
    v77 = v141;
    v78 = v140;
    (*(v141 + 32))(v140, v88, v74);
    v79 = TVEpisode.catalogID.getter();
    goto LABEL_17;
  }

  v89 = v142;
  v74 = v143;
  if (swift_dynamicCast())
  {
    v77 = v137;
    v78 = v136;
    (*(v137 + 32))(v136, v89, v74);
    v79 = TVShow.catalogID.getter();
    goto LABEL_17;
  }

  v90 = v138;
  v74 = v139;
  if (swift_dynamicCast())
  {
    v77 = v133;
    v78 = v132;
    (*(v133 + 32))(v132, v90, v74);
    v79 = UploadedAudio.catalogID.getter();
    goto LABEL_17;
  }

  v91 = v134;
  v92 = v135;
  if (!swift_dynamicCast())
  {
    v96 = v130;
    v97 = v131;
    if (swift_dynamicCast())
    {
      v98 = v126;
      v99 = v125;
      (*(v126 + 32))(v125, v96, v97);
      GenericMusicItem.innerItem.getter(&v164);
    }

    else
    {
      v100 = v124;
      v97 = v127;
      if (swift_dynamicCast())
      {
        v98 = v122;
        v99 = v121;
        (*(v122 + 32))(v121, v100, v97);
        Track.musicItem.getter(&v164);
      }

      else
      {
        v101 = v120;
        v97 = v123;
        if (!swift_dynamicCast())
        {
          if (one-time initialization token for capabilityUpsell != -1)
          {
            swift_once();
          }

          v104 = type metadata accessor for Logger();
          __swift_project_value_buffer(v104, static Logger.capabilityUpsell);
          v105 = v117;
          v106 = v115;
          v115(v117, v163, v65);
          v107 = Logger.logObject.getter();
          v108 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            v164 = v163;
            *v109 = 136315138;
            v106(v114, v105, v65);
            v110 = String.init<A>(describing:)();
            v112 = v111;
            (*(v66 + 8))(v105, v65);
            v113 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v110, v112, &v164);

            *(v109 + 4) = v113;
            _os_log_impl(&_mh_execute_header, v107, v108, "Unsupported MusicItem catalogID=%s", v109, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v163);
          }

          else
          {

            (*(v66 + 8))(v105, v65);
          }

          goto LABEL_40;
        }

        v98 = v119;
        v99 = v118;
        (*(v119 + 32))(v118, v101, v97);
        Playlist.Entry.innerItem.getter(&v164);
      }
    }

    v102 = v165;
    if (v165)
    {
      v103 = v166;
      __swift_project_boxed_opaque_existential_0Tm(&v164, v165);
      v64 = MusicItem.catalogID.getter(v102, v103);
      (*(v98 + 8))(v99, v97);
      __swift_destroy_boxed_opaque_existential_0Tm(&v164);
      goto LABEL_20;
    }

    (*(v98 + 8))(v99, v97);
    outlined destroy of TaskPriority?(&v164, &_s8MusicKit0A4Item_pSgMd);
LABEL_40:
    v64 = 0;
    goto LABEL_20;
  }

  v93 = v129;
  v94 = v128;
  (*(v129 + 32))(v128, v91, v92);
  v64 = UploadedVideo.catalogID.getter();
  v82 = v95;
  (*(v93 + 8))(v94, v92);
LABEL_18:
  if (!v82)
  {
    v64 = 0;
  }

LABEL_20:
  (*(v66 + 8))(v56, v65);
  return v64;
}

uint64_t Logger.capabilityUpsell.unsafeMutableAddressor()
{
  if (one-time initialization token for capabilityUpsell != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.capabilityUpsell);
}

uint64_t closure #1 in static SubscriptionUpsellPresenter.present(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in static SubscriptionUpsellPresenter.present(for:), v6, v5);
}

uint64_t closure #1 in static SubscriptionUpsellPresenter.present(for:)()
{

  v1 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  type metadata accessor for UIApplicationOpenExternalURLOptionsKey(0);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 openURL:v4 options:isa completionHandler:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t Playlist.Entry.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v75 = a1;
  v2 = type metadata accessor for Playlist.Entry();
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin(v2);
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UploadedVideo();
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v60 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UploadedAudio();
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin(v6);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TVEpisode();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin(v8);
  v69 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Song();
  isa = v10[-1].isa;
  v73 = v10;
  __chkstk_darwin(v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MusicVideo();
  v74 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicMovie();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Playlist.Entry.InternalItem();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v59 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v59 - v24;
  Playlist.Entry.internalItem.getter();
  v26 = (*(v21 + 88))(v25, v20);
  if (v26 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v21 + 96))(v25, v20);
    v27 = *(v17 + 32);
    v27(v19, v25, v16);
    v28 = v75;
    v75[3] = v16;
    v28[4] = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type MusicMovie and conformance MusicMovie, &type metadata accessor for MusicMovie);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
    return (v27)(boxed_opaque_existential_1, v19, v16);
  }

  v31 = v75;
  if (v26 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v21 + 96))(v25, v20);
    v32 = *(v74 + 32);
    v32(v15, v25, v13);
    v31[3] = v13;
    v31[4] = &protocol witness table for MusicVideo;
    v33 = __swift_allocate_boxed_opaque_existential_1(v31);
    return (v32)(v33, v15, v13);
  }

  if (v26 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v21 + 96))(v25, v20);
    v34 = v73;
    v35 = *(isa + 4);
    v35(v12, v25, v73);
    v31[3] = v34;
    v31[4] = &protocol witness table for Song;
    v36 = __swift_allocate_boxed_opaque_existential_1(v31);
    return (v35)(v36, v12, v34);
  }

  if (v26 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v21 + 96))(v25, v20);
    v37 = v69;
    v38 = *(v70 + 32);
    v39 = v71;
    v38(v69, v25, v71);
    v31[3] = v39;
    v40 = &lazy protocol witness table cache variable for type TVEpisode and conformance TVEpisode;
    v41 = &type metadata accessor for TVEpisode;
LABEL_13:
    v31[4] = lazy protocol witness table accessor for type URL and conformance URL(v40, v41);
    v42 = __swift_allocate_boxed_opaque_existential_1(v31);
    return (v38)(v42, v37, v39);
  }

  if (v26 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
  {
    (*(v21 + 96))(v25, v20);
    v37 = v66;
    v38 = *(v67 + 32);
    v39 = v68;
    v38(v66, v25, v68);
    v31[3] = v39;
    v40 = &lazy protocol witness table cache variable for type UploadedAudio and conformance UploadedAudio;
    v41 = &type metadata accessor for UploadedAudio;
    goto LABEL_13;
  }

  if (v26 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v21 + 96))(v25, v20);
    v37 = v60;
    v38 = *(v61 + 32);
    v39 = v62;
    v38(v60, v25, v62);
    v31[3] = v39;
    v40 = &lazy protocol witness table cache variable for type UploadedVideo and conformance UploadedVideo;
    v41 = &type metadata accessor for UploadedVideo;
    goto LABEL_13;
  }

  v43 = v20;
  if (one-time initialization token for capabilityUpsell != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logger.capabilityUpsell);
  v46 = v63;
  v45 = v64;
  v47 = v65;
  (*(v63 + 16))(v65, v1, v64);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v71 = v50;
    v74 = swift_slowAlloc();
    v76 = v74;
    *v50 = 136315138;
    v73 = v48;
    v51 = v59;
    LODWORD(isa) = v49;
    Playlist.Entry.internalItem.getter();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type Playlist.Entry.InternalItem and conformance Playlist.Entry.InternalItem, &type metadata accessor for Playlist.Entry.InternalItem);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    v70 = *(v21 + 8);
    (v70)(v51, v43);
    (*(v46 + 8))(v65, v45);
    v55 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v52, v54, &v76);

    v56 = v71;
    *(v71 + 1) = v55;
    v57 = v73;
    _os_log_impl(&_mh_execute_header, v73, isa, "Unknown Entry internalItem=%s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v74);

    v58 = v70;
  }

  else
  {

    (*(v46 + 8))(v47, v45);
    v58 = *(v21 + 8);
  }

  v31[4] = 0;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  return v58(v25, v43);
}

uint64_t GenericMusicItem.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v97 = a1;
  v1 = type metadata accessor for Playlist.Folder();
  v86 = *(v1 - 8);
  v87 = v1;
  __chkstk_darwin(v1);
  v85 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Playlist();
  v89 = *(v3 - 8);
  v90 = v3;
  __chkstk_darwin(v3);
  v88 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicVideo();
  v92 = *(v5 - 8);
  v93 = v5;
  __chkstk_darwin(v5);
  v91 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicMovie();
  v95 = *(v7 - 8);
  v96 = v7;
  __chkstk_darwin(v7);
  v94 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Station();
  v82 = *(v9 - 8);
  v83 = v9;
  __chkstk_darwin(v9);
  v81 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for UploadedVideo();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for UploadedAudio();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for TVShow();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TVEpisode();
  v79 = *(v14 - 8);
  v80 = v14;
  __chkstk_darwin(v14);
  v78 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Song();
  v84 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Album();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for GenericMusicItem();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v68 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v67 - v27;
  v29 = *(v24 + 16);
  v29(&v67 - v27, v98, v23);
  v30 = (*(v24 + 88))(v28, v23);
  if (v30 == enum case for GenericMusicItem.album(_:))
  {
    (*(v24 + 96))(v28, v23);
    v31 = *(v20 + 32);
    v31(v22, v28, v19);
    v32 = v97;
    v97[3] = v19;
    v32[4] = &protocol witness table for Album;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
    return (v31)(boxed_opaque_existential_1, v22, v19);
  }

  v35 = v97;
  if (v30 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v24 + 96))(v28, v23);
    v36 = v94;
    v37 = *(v95 + 32);
    v38 = v28;
    v39 = v96;
    v37(v94, v38, v96);
    v35[3] = v39;
    v40 = &lazy protocol witness table cache variable for type MusicMovie and conformance MusicMovie;
    v41 = &type metadata accessor for MusicMovie;
LABEL_5:
    v35[4] = lazy protocol witness table accessor for type URL and conformance URL(v40, v41);
    v42 = __swift_allocate_boxed_opaque_existential_1(v35);
    v43 = v36;
    v44 = v39;
    return v37(v42, v43, v44);
  }

  if (v30 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v24 + 96))(v28, v23);
    v45 = v91;
    v37 = *(v92 + 32);
    v46 = v93;
    v37(v91, v28, v93);
    v47 = &protocol witness table for MusicVideo;
LABEL_10:
    v35[3] = v46;
    v35[4] = v47;
    v42 = __swift_allocate_boxed_opaque_existential_1(v35);
    v43 = v45;
    v44 = v46;
    return v37(v42, v43, v44);
  }

  if (v30 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v24 + 96))(v28, v23);
    v45 = v88;
    v37 = *(v89 + 32);
    v46 = v90;
    v37(v88, v28, v90);
    v47 = &protocol witness table for Playlist;
    goto LABEL_10;
  }

  if (v30 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    (*(v24 + 96))(v28, v23);
    v36 = v85;
    v37 = *(v86 + 32);
    v48 = v28;
    v39 = v87;
    v37(v85, v48, v87);
    v35[3] = v39;
    v40 = &lazy protocol witness table cache variable for type Playlist.Folder and conformance Playlist.Folder;
    v41 = &type metadata accessor for Playlist.Folder;
    goto LABEL_5;
  }

  if (v30 == enum case for GenericMusicItem.song(_:))
  {
    (*(v24 + 96))(v28, v23);
    v49 = *(v84 + 32);
    v49(v18, v28, v16);
    v35[3] = v16;
    v35[4] = &protocol witness table for Song;
    v50 = __swift_allocate_boxed_opaque_existential_1(v35);
    return (v49)(v50, v18, v16);
  }

  else
  {
    if (v30 == enum case for GenericMusicItem.station(_:))
    {
      (*(v24 + 96))(v28, v23);
      v45 = v81;
      v37 = *(v82 + 32);
      v46 = v83;
      v37(v81, v28, v83);
      v47 = &protocol witness table for Station;
      goto LABEL_10;
    }

    if (v30 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v79 + 32);
      v36 = v78;
      v51 = v28;
      v39 = v80;
      v37(v78, v51, v80);
      v35[3] = v39;
      v40 = &lazy protocol witness table cache variable for type TVEpisode and conformance TVEpisode;
      v41 = &type metadata accessor for TVEpisode;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v76 + 32);
      v36 = v75;
      v52 = v28;
      v39 = v77;
      v37(v75, v52, v77);
      v35[3] = v39;
      v40 = &lazy protocol witness table cache variable for type TVShow and conformance TVShow;
      v41 = &type metadata accessor for TVShow;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v73 + 32);
      v36 = v72;
      v53 = v28;
      v39 = v74;
      v37(v72, v53, v74);
      v35[3] = v39;
      v40 = &lazy protocol witness table cache variable for type UploadedAudio and conformance UploadedAudio;
      v41 = &type metadata accessor for UploadedAudio;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v70 + 32);
      v36 = v69;
      v54 = v28;
      v39 = v71;
      v37(v69, v54, v71);
      v35[3] = v39;
      v40 = &lazy protocol witness table cache variable for type UploadedVideo and conformance UploadedVideo;
      v41 = &type metadata accessor for UploadedVideo;
      goto LABEL_5;
    }

    if (one-time initialization token for capabilityUpsell != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.capabilityUpsell);
    v56 = v68;
    v29(v68, v98, v23);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v96 = v59;
      v98 = swift_slowAlloc();
      v99 = v98;
      *v59 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type GenericMusicItem and conformance GenericMusicItem, &type metadata accessor for GenericMusicItem);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v56;
      v63 = v62;
      v64 = *(v24 + 8);
      v64(v61, v23);
      v65 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v60, v63, &v99);

      v66 = v96;
      *(v96 + 1) = v65;
      _os_log_impl(&_mh_execute_header, v57, v58, "Unsupported GenericMusicItem kind=%s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v98);
    }

    else
    {

      v64 = *(v24 + 8);
      v64(v56, v23);
    }

    v35[4] = 0;
    *v35 = 0u;
    *(v35 + 1) = 0u;
    return (v64)(v28, v23);
  }
}

uint64_t one-time initialization function for capabilityUpsell()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.capabilityUpsell);
  __swift_project_value_buffer(v0, static Logger.capabilityUpsell);
  return Logger.init(subsystem:category:)();
}