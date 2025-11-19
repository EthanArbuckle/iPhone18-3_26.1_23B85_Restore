uint64_t static Logger.capabilityUpsell.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for capabilityUpsell != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.capabilityUpsell);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void specialized static SubscriptionUpsellPresenter.present(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v2 - 8);
  v4 = &v85 - v3;
  v5 = type metadata accessor for URLQueryItem();
  v93 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v85 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v11 - 8);
  v13 = &v85 - v12;
  v14 = type metadata accessor for URL();
  v95 = *(v14 - 8);
  v15 = *(v95 + 64);
  v16 = __chkstk_darwin(v14);
  v92 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v94 = &v85 - v17;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.bag.getter);
  v18 = v101;
  if (!v101)
  {
    goto LABEL_8;
  }

  v19 = [v101 stringForBagKey:ICURLBagKeyMarketingItemDynamicUIUrl];
  if (!v19)
  {

    goto LABEL_8;
  }

  v90 = v4;
  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v91 = v14;
  v22 = v21;
  v24 = v23;

  *&v101 = 0x2F2F3A636973756DLL;
  *(&v101 + 1) = 0xE800000000000000;
  v25._countAndFlagsBits = v22;
  v26 = v91;
  v25._object = v24;
  String.append(_:)(v25);

  URL.init(string:)();

  v27 = v95;
  if ((*(v95 + 48))(v13, 1, v26) == 1)
  {

    outlined destroy of TaskPriority?(v13, &_s10Foundation3URLVSgMd);
LABEL_8:
    if (one-time initialization token for capabilityUpsell != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.capabilityUpsell);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Could not build marketingURL", v31, 2u);
    }

    return;
  }

  v32 = *(v27 + 32);
  v88 = v27 + 32;
  v87 = v32;
  v32(v94, v13, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd);
  v33 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v89 = *(v93 + 72);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1004F2EF0;
  v35 = v34;
  v86 = v33;
  URLQueryItem.init(name:value:)();
  outlined init with copy of SubscriptionUpsellPresenter.Placement(a1, &v101);
  if (v102[24] != 253 && v102[24] != 255 && v102[24] != 254)
  {
    outlined destroy of SubscriptionUpsellPresenter.Placement(&v101);
  }

  URLQueryItem.init(name:value:)();

  outlined init with copy of SubscriptionUpsellPresenter.Placement(a1, &v99);
  if (v100[24] < 0xFDu)
  {
    v101 = v99;
    *v102 = *v100;
    *&v102[9] = *&v100[9];
    SubscriptionUpsellPresenter.Placement.Source.kind.getter();
    v38 = v35;
    if (v39)
    {
      URLQueryItem.init(name:value:)();

      v41 = *(v35 + 2);
      v40 = *(v35 + 3);
      if (v41 >= v40 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v40 > 1, v41 + 1, 1, v35);
      }

      v42 = v86;
      *(v38 + 2) = v41 + 1;
      (*(v93 + 32))(&v38[v42 + v41 * v89], v10, v5);
    }

    else
    {
      if (one-time initialization token for capabilityUpsell != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.capabilityUpsell);
      outlined init with copy of SubscriptionUpsellPresenter.Placement.Source(&v101, &v99);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v98 = v85;
        *v46 = 136315138;
        outlined init with copy of SubscriptionUpsellPresenter.Placement.Source(&v99, v96);
        v47 = String.init<A>(describing:)();
        v49 = v48;
        outlined destroy of SubscriptionUpsellPresenter.Placement.Source(&v99);
        v50 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v47, v49, &v98);
        v38 = v35;

        *(v46 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v44, v45, "Missing kind for item=%s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v85);
      }

      else
      {

        outlined destroy of SubscriptionUpsellPresenter.Placement.Source(&v99);
      }

      v42 = v86;
    }

    outlined init with copy of SubscriptionUpsellPresenter.Placement.Source(&v101, &v99);
    if (v100[24] == 1)
    {
      v51 = v99;
      MPModelObject.bestIdentifier(for:)(2, 1u);
      v53 = v52;

      if (v53)
      {
LABEL_34:
        URLQueryItem.init(name:value:)();

        v55 = *(v38 + 2);
        v54 = *(v38 + 3);
        if (v55 >= v54 >> 1)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v54 > 1, v55 + 1, 1, v38);
        }

        v37 = v94;
        outlined destroy of SubscriptionUpsellPresenter.Placement.Source(&v101);
        *(v38 + 2) = v55 + 1;
        (*(v93 + 32))(&v38[v42 + v55 * v89], v8, v5);
        v36 = v90;
        goto LABEL_44;
      }
    }

    else
    {
      outlined init with take of CatalogIDProviding(&v99, v96);
      v56 = v97;
      __swift_project_boxed_opaque_existential_0Tm(v96, v97);
      MusicItem.catalogID.getter(v56);
      v58 = v57;
      __swift_destroy_boxed_opaque_existential_0Tm(v96);
      if (v58)
      {
        goto LABEL_34;
      }
    }

    if (one-time initialization token for capabilityUpsell != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Logger.capabilityUpsell);
    outlined init with copy of SubscriptionUpsellPresenter.Placement.Source(&v101, &v99);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v98 = v63;
      *v62 = 136315138;
      outlined init with copy of SubscriptionUpsellPresenter.Placement.Source(&v99, v96);
      v64 = String.init<A>(describing:)();
      v66 = v65;
      outlined destroy of SubscriptionUpsellPresenter.Placement.Source(&v99);
      v67 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v64, v66, &v98);

      *(v62 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v60, v61, "Missing id for item=%s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
    }

    else
    {

      outlined destroy of SubscriptionUpsellPresenter.Placement.Source(&v99);
    }

    outlined destroy of SubscriptionUpsellPresenter.Placement.Source(&v101);
    v37 = v94;
    v36 = v90;
    goto LABEL_44;
  }

  outlined destroy of SubscriptionUpsellPresenter.Placement(&v99);
  v36 = v90;
  v37 = v94;
  v38 = v35;
LABEL_44:
  URL.append(queryItems:)(v38);

  if (one-time initialization token for capabilityUpsell != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  __swift_project_value_buffer(v68, static Logger.capabilityUpsell);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *&v101 = v72;
    *v71 = 136446210;
    swift_beginAccess();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL);
    v73 = v91;
    v74 = dispatch thunk of CustomStringConvertible.description.getter();
    v76 = v37;
    v77 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v74, v75, &v101);

    *(v71 + 4) = v77;
    _os_log_impl(&_mh_execute_header, v69, v70, "Will present upsell with URL=%{public}s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    v36 = v90;
  }

  else
  {

    v73 = v91;
    v76 = v37;
  }

  v78 = v95;
  v79 = type metadata accessor for TaskPriority();
  (*(*(v79 - 8) + 56))(v36, 1, 1, v79);
  swift_beginAccess();
  v80 = v92;
  (*(v78 + 16))(v92, v76, v73);
  type metadata accessor for MainActor();
  v81 = static MainActor.shared.getter();
  v82 = v78;
  v83 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = v81;
  *(v84 + 24) = &protocol witness table for MainActor;
  v87(v84 + v83, v80, v73);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v36, &async function pointer to partial apply for closure #1 in static SubscriptionUpsellPresenter.present(for:), v84);

  (*(v82 + 8))(v76, v73);
}

uint64_t get_enum_tag_for_layout_string_9MusicCore27SubscriptionUpsellPresenterV9PlacementO(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for SubscriptionUpsellPresenter.Placement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SubscriptionUpsellPresenter.Placement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -3 - a2;
    }
  }

  return result;
}

double destructiveInjectEnumTag for SubscriptionUpsellPresenter.Placement(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    result = 0.0;
    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 40) = -a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubscriptionUpsellPresenter.Placement.Source(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SubscriptionUpsellPresenter.Placement.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002A9130()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static SubscriptionUpsellPresenter.present(for:)(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in static SubscriptionUpsellPresenter.present(for:)(a1, v6, v7, v1 + v5);
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void variable initialization expression of Artwork.caching(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

id variable initialization expression of Artwork.decoration@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Artwork.Decoration(0);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v3 = v2[5];
  v4 = type metadata accessor for UIView.Corner();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  result = [objc_opt_self() blackColor];
  *&a1[v5] = result;
  *&a1[v2[7]] = 1;
  return result;
}

id variable initialization expression of Artwork.Decoration.fillColor()
{
  v0 = [objc_opt_self() blackColor];

  return v0;
}

id variable initialization expression of Artwork.Placeholder.background()
{
  v0 = [objc_opt_self() secondarySystemFillColor];

  return v0;
}

uint64_t variable initialization expression of Artwork.Placeholder.tint()
{
  if (one-time initialization token for defaultTint != -1)
  {
    swift_once();
  }

  v0 = static Artwork.Placeholder.defaultTint;
  v1 = static Artwork.Placeholder.defaultTint;
  return v0;
}

id variable initialization expression of Artwork.Placeholder.symbolConfiguration()
{
  v0 = [objc_opt_self() configurationWithWeight:4];

  return v0;
}

id variable initialization expression of Artwork.Placeholder.View.contentView()
{
  v0 = objc_allocWithZone(UIImageView);

  return [v0 init];
}

id variable initialization expression of LyricsLoader.operationQueue()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  [v0 setMaxConcurrentOperationCount:1];
  return v0;
}

uint64_t variable initialization expression of Lyrics.StateManager.state@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for Lyrics.StateManager.State(0);
  v3 = a1 + *(v2 + 20);
  v4 = enum case for ScenePhase.inactive(_:);
  v5 = type metadata accessor for ScenePhase();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  v6 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v3 + *(v6 + 20)) = 0;
  *(v3 + *(v6 + 24)) = 0;
  v7 = *(v2 + 24);
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

id variable initialization expression of Lyrics.StateManager.loader()
{
  v0 = objc_allocWithZone(type metadata accessor for LyricsLoader());

  return [v0 init];
}

id variable initialization expression of Lyrics.StateManager.lyricsReportingController()
{
  v0 = objc_allocWithZone(MPCLyricsReportingController);

  return [v0 init];
}

uint64_t variable initialization expression of Lyrics.StateManager.State.loading()
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t variable initialization expression of Lyrics.StateManager.State.display@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ScenePhase.inactive(_:);
  v3 = type metadata accessor for ScenePhase();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(a1 + *(result + 20)) = 0;
  *(a1 + *(result + 24)) = 0;
  return result;
}

uint64_t variable initialization expression of Lyrics.StateManager.State.Display.scenePhase@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ScenePhase.inactive(_:);
  v3 = type metadata accessor for ScenePhase();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

__n128 variable initialization expression of NoticePresenter.configuration()
{
  v0 = swift_unknownObjectWeakInit();
  *(v0 + 8) = 2;
  *(v0 + 16) = 0x4024000000000000;
  result = *&NSDirectionalEdgeInsetsZero.top;
  *(v0 + 40) = *&NSDirectionalEdgeInsetsZero.bottom;
  *(v0 + 24) = result;
  return result;
}

double variable initialization expression of CarouselView.pageIndicatorHeight()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  result = 8.0;
  if (v1 == 6)
  {
    return 10.0;
  }

  return result;
}

id variable initialization expression of CircularProgressView.trackLayer()
{
  v0 = objc_allocWithZone(CAShapeLayer);

  return [v0 init];
}

uint64_t variable initialization expression of Collaboration.Management.Model._hasNetworkConnectivity()
{
  static ApplicationCapabilities.shared.getter(v1);
  outlined destroy of ApplicationCapabilities(v1);
  return BYTE1(v1[0]);
}

uint64_t variable initialization expression of Collaboration.Management.Model.$__lazy_storage_$_artworkViewModel@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t key path setter for EnvironmentValues.horizontalSizeClass : EnvironmentValues(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  __chkstk_darwin(v2 - 8);
  outlined init with copy of TaskPriority?(a1, &v5 - v3, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  return EnvironmentValues.horizontalSizeClass.setter();
}

double variable initialization expression of HitMyRectButton.hitRectAdjustment@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  return result;
}

double variable initialization expression of ImagePicker.DummyImagePickerViewController.$__lazy_storage_$_presentationSource@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

id variable initialization expression of LoadingView.label()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
}

id variable initialization expression of LoadingView.activityIndicator()
{
  v0 = objc_allocWithZone(UIActivityIndicatorView);

  return [v0 initWithActivityIndicatorStyle:100];
}

uint64_t variable initialization expression of NowPlaying.TrackTitleStackView.metadata@<X0>(uint64_t a1@<X8>)
{
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();

  return outlined init with copy of NowPlaying.TrackMetadata(v2, a1);
}

double variable initialization expression of NowPlaying.TrackTitleStackView.titleAttributes@<D0>(void *a1@<X0>, SEL *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = [objc_opt_self() preferredFontForTextStyle:*a1];
  v6 = [objc_opt_self() *a2];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v15 = v5;
  *(&v15 + 1) = v6;
  LOBYTE(v16) = 0;
  BYTE8(v16) = 0;
  *&v17 = 0x4040000000000000;
  *(&v17 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v18 = leading;
  *(&v18 + 1) = bottom;
  *&v19 = trailing;
  v20 = 0uLL;
  *(&v19 + 1) = 1;
  v21[0] = v5;
  v21[1] = v6;
  v22 = 0;
  v23 = 0;
  v24 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v26 = leading;
  v27 = bottom;
  v28 = trailing;
  v30 = 0;
  v31 = 0;
  v29 = 1;
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v15, &v14);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v21);
  v10 = v18;
  a3[2] = v17;
  a3[3] = v10;
  v11 = v20;
  a3[4] = v19;
  a3[5] = v11;
  result = *&v15;
  v13 = v16;
  *a3 = v15;
  a3[1] = v13;
  return result;
}

__n128 variable initialization expression of Gliss.Transition<>.Output.transform3D@<Q0>(uint64_t a1@<X8>)
{
  v1 = *&CATransform3DIdentity.m33;
  *(a1 + 64) = *&CATransform3DIdentity.m31;
  *(a1 + 80) = v1;
  v2 = *&CATransform3DIdentity.m43;
  *(a1 + 96) = *&CATransform3DIdentity.m41;
  *(a1 + 112) = v2;
  v3 = *&CATransform3DIdentity.m13;
  *a1 = *&CATransform3DIdentity.m11;
  *(a1 + 16) = v3;
  result = *&CATransform3DIdentity.m21;
  v5 = *&CATransform3DIdentity.m23;
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

double variable initialization expression of SymbolButton.Configuration.symbol@<D0>(uint64_t a1@<X8>)
{
  specialized SymbolButton.Symbol.init()(v6);
  v2 = v10;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  *(a1 + 96) = v11;
  *(a1 + 112) = v12;
  v3 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v3;
  result = *&v7;
  v5 = v8;
  *(a1 + 32) = v7;
  *(a1 + 48) = v5;
  return result;
}

UIFontTextStyle SymbolButton.Title.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = UIFontTextStyleSubheadline;
  *(a1 + 24) = UIFontWeightSemibold;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x3FF0000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return UIFontTextStyleSubheadline;
}

double variable initialization expression of SymbolButton.Configuration.material@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

double variable initialization expression of SymbolButton.Configuration.customView@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

id variable initialization expression of QRCodeOverlayViewController.backgroundView()
{
  v0 = objc_allocWithZone(UIVisualEffectView);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.qrCodeView()
{
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.logoView()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  return v2;
}

id variable initialization expression of QRCodeOverlayViewController.titleLabel()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.subtitleLabelEffectView()
{
  if (one-time initialization token for blurEffect != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() effectForBlurEffect:static QRCodeOverlayViewController.Specs.blurEffect];
  v1 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v0];

  return v1;
}

id variable initialization expression of QRCodeOverlayViewController.scrollView()
{
  v0 = objc_allocWithZone(UIScrollView);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.ContainerView.overlayLayer()
{
  v0 = objc_allocWithZone(CALayer);

  return [v0 init];
}

uint64_t key path getter for EnvironmentValues.effectiveForegroundColor : EnvironmentValues@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.effectiveForegroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t variable initialization expression of ArtworkImage.Placeholder.View._placeholderStyle@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);

  return swift_storeEnumTagMultiPayload();
}

id variable initialization expression of QRCodeOverlayViewController.ContainerView.imageView(Class *a1)
{
  v1 = [objc_allocWithZone(*a1) init];
  v2 = UIView.forAutolayout.getter();

  return v2;
}

id variable initialization expression of SliderView.feedbackGenerator()
{
  v0 = objc_allocWithZone(UIImpactFeedbackGenerator);

  return [v0 initWithStyle:0];
}

id variable initialization expression of SliderView.trackLayoutGuide()
{
  v0 = objc_allocWithZone(UILayoutGuide);

  return [v0 init];
}

id variable initialization expression of SyncedLyricsViewController.Specs.glowColor()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

id variable initialization expression of SliderView.remainingTrackColor()
{
  v0 = [objc_opt_self() systemFillColor];

  return v0;
}

id variable initialization expression of SliderView.trackingColor()
{
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v1 = static UIColor.MusicTint.normal;

  return v1;
}

id variable initialization expression of SyncedLyricsViewController.contentView()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

id variable initialization expression of SymbolButton.materialView()
{
  v4 = 1;
  v0 = type metadata accessor for SymbolButton.MaterialView();
  v5 = 0u;
  v6 = 0u;
  v7 = 0;
  v3.receiver = objc_allocWithZone(v0);
  v3.super_class = v0;
  v1 = objc_msgSendSuper2(&v3, "initWithEffect:", 0);
  SymbolButton.MaterialView.apply(_:)(&v4);

  return v1;
}

id variable initialization expression of SymbolButton.backgroundView()
{
  if (one-time initialization token for clear != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = *&static SymbolButton.Background.clear;
  v1 = qword_10063F478;
  v2 = qword_10063F480;
  v3 = qword_10063F488;
  v4 = type metadata accessor for SymbolButton.BackgroundView();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v6 = 0;
  *(v6 + 1) = 0x3FF0000000000000;
  v10.receiver = v5;
  v10.super_class = v4;
  v7 = v1;

  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  SymbolButton.BackgroundView.apply(_:)(v1, v0, v2, v3);
  SymbolButton.BackgroundView.updateBackgroundColor()();

  return v8;
}

uint64_t variable initialization expression of Artwork.Decoration.corner@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

double variable initialization expression of VerticalToggleSlider.packageDefinition@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id variable initialization expression of VerticalToggleSlider.blurEffect()
{
  v0 = [objc_opt_self() effectWithBlurRadius:10.0];

  return v0;
}

void variable initialization expression of VerticalToggleSlider.growTransform(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

id variable initialization expression of WaveformPlayIndicator.colorPalette()
{
  v0 = objc_opt_self();
  v1 = [v0 tintColor];
  v2 = [v0 labelColor];
  v3 = [v2 colorWithAlphaComponent:0.35];

  v4 = [v0 labelColor];
  v5 = [v4 colorWithAlphaComponent:0.2];

  v6 = [v0 labelColor];
  v7 = [v6 colorWithAlphaComponent:0.6];

  return v1;
}

id variable initialization expression of WaveformPlayIndicator.waveform()
{
  v0 = [objc_opt_self() zero];

  return v0;
}

uint64_t variable initialization expression of WaveformPlayIndicator.cannedAnimationAsset()
{
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  return BouncyBarsAsset.init()();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2)
{
  result = static CGFloat._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2)
{
  v3 = static CGFloat._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UIFontWeight@<X0>(void *a1@<X8>)
{
  result = static CGFloat._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

uint64_t outlined init with copy of NowPlaying.TrackMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double protocol witness for RawRepresentable.rawValue.getter in conformance UIFontWeight@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CGColorRef()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIContentSizeCategory()
{
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIContentSizeCategory and conformance UIContentSizeCategory, type metadata accessor for UIContentSizeCategory);
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIContentSizeCategory and conformance UIContentSizeCategory, type metadata accessor for UIContentSizeCategory);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontTextStyle()
{
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIFontTextStyle and conformance UIFontTextStyle, type metadata accessor for UIFontTextStyle);
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIFontTextStyle and conformance UIFontTextStyle, type metadata accessor for UIFontTextStyle);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontWeight()
{
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight);
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorFeatureKey()
{
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey, type metadata accessor for UIFontDescriptorFeatureKey);
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey, type metadata accessor for UIFontDescriptorFeatureKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t _sSo29UIFontDescriptorAttributeNameas35_HasCustomAnyHashableRepresentationSCsACP03_tofgH0s0gH0VSgyFTW_0()
{
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&_sSo29UIFontDescriptorAttributeNameaABSHSCWL_0, _sSo29UIFontDescriptorAttributeNameaMa_0);
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&_sSo29UIFontDescriptorAttributeNameaABs20_SwiftNewtypeWrapperSCWL_0, _sSo29UIFontDescriptorAttributeNameaMa_0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t _sSo18NSNotificationNameas35_HasCustomAnyHashableRepresentationSCsACP03_todeF0s0eF0VSgyFTW_0()
{
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&_sSo18NSNotificationNameaABSHSCWL_0, _sSo18NSNotificationNameaMa_0);
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&_sSo18NSNotificationNameaABs20_SwiftNewtypeWrapperSCWL_0, _sSo18NSNotificationNameaMa_0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CAGradientLayerType()
{
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type CAGradientLayerType and conformance CAGradientLayerType, type metadata accessor for CAGradientLayerType);
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type CAGradientLayerType and conformance CAGradientLayerType, type metadata accessor for CAGradientLayerType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIImagePickerControllerInfoKey()
{
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIImagePickerControllerInfoKey and conformance UIImagePickerControllerInfoKey, type metadata accessor for UIImagePickerControllerInfoKey);
  lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(&lazy protocol witness table cache variable for type UIImagePickerControllerInfoKey and conformance UIImagePickerControllerInfoKey, type metadata accessor for UIImagePickerControllerInfoKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CGColorRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

void protocol witness for Hashable.hash(into:) in conformance UIFontWeight()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

__n128 __swift_memcpy128_8_0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for CATransform3D(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CATransform3D(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

__n128 __swift_memcpy32_8_0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy48_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 __swift_memcpy16_8_0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type UIContentSizeCategory and conformance UIContentSizeCategory(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

uint64_t _s10Foundation3URLVSgWOb_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation3URLVSgWOh_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id Artwork.content.getter()
{
  v1 = *v0;
  outlined copy of Artwork.Content?(*v0, v0[1]);
  return v1;
}

id outlined copy of Artwork.Content?(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v2 = a2;

    return v3;
  }

  return result;
}

void Artwork.content.setter(void *a1, void *a2)
{
  outlined consume of Artwork.Content?(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
}

void outlined consume of Artwork.Content?(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t Artwork.size.setter(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 40) = result;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  return result;
}

uint64_t Artwork.decoration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Artwork(0) + 28);

  return outlined assign with take of Artwork.Decoration(a1, v3);
}

uint64_t outlined assign with take of Artwork.Decoration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Artwork.placeholderViewProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Artwork(0) + 36));
  result = swift_unknownObjectRelease();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double Artwork.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = xmmword_1004F2ED0;
  *(a1 + 64) = 0;
  v2 = type metadata accessor for Artwork(0);
  v3 = (a1 + v2[7]);
  v4 = type metadata accessor for Artwork.Decoration(0);
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v5 = v4[5];
  v6 = type metadata accessor for UIView.Corner();
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  v7 = v4[6];
  *&v3[v7] = [objc_opt_self() blackColor];
  *&v3[v4[7]] = 1;
  v8 = (a1 + v2[8]);
  result = 0.0;
  v8[1] = 0u;
  v8[2] = 0u;
  *v8 = 0u;
  v10 = (a1 + v2[9]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t static Artwork.with(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = xmmword_1004F2ED0;
  *(a2 + 64) = 0;
  v4 = type metadata accessor for Artwork(0);
  v5 = (a2 + v4[7]);
  v6 = type metadata accessor for Artwork.Decoration(0);
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = 0;
  v7 = v6[5];
  v8 = type metadata accessor for UIView.Corner();
  (*(*(v8 - 8) + 56))(&v5[v7], 1, 1, v8);
  v9 = v6[6];
  *&v5[v9] = [objc_opt_self() blackColor];
  *&v5[v6[7]] = 1;
  v10 = (a2 + v4[8]);
  v10[1] = 0u;
  v10[2] = 0u;
  *v10 = 0u;
  v11 = (a2 + v4[9]);
  *v11 = 0;
  v11[1] = 0;
  return a1(a2);
}

char *protocol witness for UIContentConfiguration.makeContentView() in conformance Artwork(uint64_t a1)
{
  __chkstk_darwin(a1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Artwork.Decoration(v1, v3, type metadata accessor for Artwork);
  v4 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
  v5 = Artwork.View.init(configuration:)(v3);
  lazy protocol witness table accessor for type Artwork.View and conformance Artwork.View(&lazy protocol witness table cache variable for type Artwork.View and conformance Artwork.View, type metadata accessor for Artwork.View);
  return v5;
}

char *Artwork.View.init(configuration:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  *&v1[v6] = [objc_allocWithZone(UIImageView) init];
  v7 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  *v7 = 0;
  v7[8] = -1;
  outlined init with copy of Artwork.Decoration(a1, &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration], type metadata accessor for Artwork);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v8 setContentMode:4];
  v9 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  v10 = [*&v8[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] layer];
  [v10 setMinificationFilter:kCAFilterTrilinear];

  v11 = [*&v8[v9] layer];
  [v11 setMagnificationFilter:kCAFilterTrilinear];

  [*&v8[v9] setContentMode:2];
  [*&v8[v9] setClipsToBounds:1];
  [*&v8[v9] setAccessibilityIgnoresInvertColors:1];
  [v8 addSubview:*&v8[v9]];
  Artwork.View.configurePlaceholder()();
  Artwork.View.applyDecoration()();
  Artwork.View.reloadArtworkCatalogIfNeeded()();

  outlined destroy of Artwork(a1, type metadata accessor for Artwork);
  return v8;
}

void Artwork.View.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind;
  *v4 = 0;
  *(v4 + 8) = -1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void Artwork.View.typedConfiguration.didset(uint64_t a1)
{
  v3 = type metadata accessor for Artwork(0);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  outlined init with copy of Artwork.Decoration(v6, v5, type metadata accessor for Artwork);
  v7 = specialized static Artwork.== infix(_:_:)(v5, a1);
  outlined destroy of Artwork(v5, type metadata accessor for Artwork);
  if (!v7)
  {
    Artwork.View.configurePlaceholder()();
    Artwork.View.applyDecoration()();
    Artwork.View.reloadArtworkCatalogIfNeeded()();
    v8 = *(v3 + 36);
    v9 = *(a1 + v8);
    v10 = *&v6[v8];
    if (v9)
    {
      if (v9 == v10)
      {
        return;
      }
    }

    else if (!v10)
    {
      return;
    }

    v11 = [*&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
    if (v11)
    {
    }

    else
    {
      v12 = [v1 artworkCatalog];
      if (v12)
      {

LABEL_12:
        Artwork.View.configurePlaceholder()();
        return;
      }
    }

    if (*v6)
    {
      return;
    }

    goto LABEL_12;
  }
}

Swift::Void __swiftcall Artwork.View.invalidatePlaceholderView()()
{
  v1 = [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (v1)
  {

    goto LABEL_3;
  }

  v3 = [v0 artworkCatalog];
  if (!v3)
  {
LABEL_3:
    v2 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    if (*&v0[v2])
    {
      return;
    }

    goto LABEL_7;
  }

LABEL_7:
  Artwork.View.configurePlaceholder()();
}

uint64_t Artwork.View.typedConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  return outlined init with copy of Artwork.Decoration(v1 + v3, a1, type metadata accessor for Artwork);
}

uint64_t Artwork.View.typedConfiguration.setter(uint64_t a1)
{
  v3 = type metadata accessor for Artwork(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  outlined init with copy of Artwork.Decoration(v1 + v6, v5, type metadata accessor for Artwork);
  swift_beginAccess();
  outlined assign with copy of Artwork(a1, v1 + v6);
  swift_endAccess();
  Artwork.View.typedConfiguration.didset(v5);
  outlined destroy of Artwork(a1, type metadata accessor for Artwork);
  return outlined destroy of Artwork(v5, type metadata accessor for Artwork);
}

void (*Artwork.View.typedConfiguration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for Artwork(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  outlined init with copy of Artwork.Decoration(v1 + v8, v7, type metadata accessor for Artwork);
  return Artwork.View.typedConfiguration.modify;
}

void Artwork.View.typedConfiguration.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    outlined init with copy of Artwork.Decoration(*(*a1 + 96), v6, type metadata accessor for Artwork);
    outlined init with copy of Artwork.Decoration(v7 + v4, v5, type metadata accessor for Artwork);
    swift_beginAccess();
    outlined assign with copy of Artwork(v6, v7 + v4);
    swift_endAccess();
    Artwork.View.typedConfiguration.didset(v5);
    outlined destroy of Artwork(v5, type metadata accessor for Artwork);
  }

  else
  {
    outlined init with copy of Artwork.Decoration(v7 + v4, v6, type metadata accessor for Artwork);
    swift_beginAccess();
    outlined assign with copy of Artwork(v3, v7 + v4);
    swift_endAccess();
    Artwork.View.typedConfiguration.didset(v6);
  }

  outlined destroy of Artwork(v6, type metadata accessor for Artwork);
  outlined destroy of Artwork(v3, type metadata accessor for Artwork);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

id Artwork.View.currentImage.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView) image];

  return v1;
}

uint64_t Artwork.View.imageDidChangeHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(*v1);
  return v2;
}

uint64_t Artwork.View.imageDidChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6);
}

void Artwork.View.configurePlaceholder()()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v3 = type metadata accessor for Artwork(0);
  v4 = &v2[*(v3 + 36)];
  if (*v4)
  {
    v5 = *(v4 + 1);
    v6 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v7 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
    if (v7 != 255 && (v7 & 1) != 0)
    {
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v5 + 8);
      swift_unknownObjectRetain();
      outlined copy of Artwork.View.PlaceholderKind?(v8, v7);
      v11 = v10(v8, ObjectType, v5);
      v12 = *v6;
      *v6 = v11;
      LOBYTE(ObjectType) = v6[8];
      v6[8] = 1;
      v13 = v11;
      Artwork.View.placeholderKind.didset(v12, ObjectType);
      outlined consume of Artwork.View.PlaceholderKind?(v12, ObjectType);
      swift_unknownObjectRelease();

      v14 = v8;
      v15 = v7;
LABEL_20:
      outlined consume of Artwork.View.PlaceholderKind?(v14, v15);
      goto LABEL_27;
    }

    v16 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    swift_unknownObjectRetain();
    v17 = [v16 image];
    if (v17)
    {
    }

    else
    {
      v33 = [v1 artworkCatalog];
      if (v33)
      {

        goto LABEL_18;
      }
    }

    if (*v2)
    {
      swift_unknownObjectRelease();
      goto LABEL_27;
    }

LABEL_18:
    v34 = swift_getObjectType();
    v35 = (*(v5 + 8))(0, v34, v5);
    v36 = *v6;
    *v6 = v35;
    v37 = v6[8];
    v6[8] = 1;
    v38 = v35;
    Artwork.View.placeholderKind.didset(v36, v37);
    outlined consume of Artwork.View.PlaceholderKind?(v36, v37);
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  v18 = &v2[*(v3 + 32)];
  v19 = *(v18 + 3);
  if (!v19)
  {
    v39 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v40 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    *v39 = 0;
    v41 = v39[8];
    v39[8] = -1;
    Artwork.View.placeholderKind.didset(v40, v41);
    v14 = v40;
    v15 = v41;
    goto LABEL_20;
  }

  v21 = *v18;
  v20 = *(v18 + 1);
  v22 = *(v18 + 2);
  v23 = *(v18 + 4);
  v24 = *(v18 + 5);
  *&v80 = *v18;
  *(&v80 + 1) = v20;
  *&v81 = v22;
  *(&v81 + 1) = v19;
  *&v82 = v23;
  *(&v82 + 1) = v24;
  v25 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v26 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v26 == 255 || (v26 & 1) != 0)
  {
    v27 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    v28 = v22;
    v29 = v19;
    v30 = v21;
    v31 = v20;
    v32 = [v27 image];
    if (v32)
    {
    }

    else
    {
      v51 = [v1 artworkCatalog];
      if (v51)
      {

        goto LABEL_26;
      }
    }

    if (*v2)
    {

      goto LABEL_27;
    }

LABEL_26:
    v52 = type metadata accessor for Artwork.Placeholder.View();
    v53 = objc_allocWithZone(v52);
    v54 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
    v55 = objc_allocWithZone(UIImageView);
    v56 = v30;
    v77 = v31;
    v57 = v28;
    v58 = v29;
    *&v53[v54] = [v55 init];
    v59 = &v53[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
    v60 = v82;
    *(v59 + 1) = v81;
    *(v59 + 2) = v60;
    *v59 = v80;
    v78.receiver = v53;
    v78.super_class = v52;
    v61 = v56;
    v62 = v77;
    v63 = v57;
    v64 = v58;
    v65 = objc_msgSendSuper2(&v78, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v65 addSubview:*&v65[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView]];
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    Artwork.Placeholder.View.configurationDidChange(_:)(&v83);

    v66 = v62;
    v67 = v61;
    v68 = *v25;
    *v25 = v65;
    LOBYTE(v62) = v25[8];
    v25[8] = 0;
    v69 = v65;
    Artwork.View.placeholderKind.didset(v68, v62);
    outlined consume of Artwork.View.PlaceholderKind?(v68, v62);

    goto LABEL_27;
  }

  v42 = *v25;
  v43 = *v25 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v44 = *(v43 + 16);
  v83 = *v43;
  v84 = v44;
  v74 = *(v43 + 8);
  v75 = *v43;
  v72 = *(v43 + 24);
  v73 = *(v43 + 16);
  v70 = *(v43 + 40);
  v71 = *(v43 + 32);
  v87 = *(&v83 + 1);
  v88 = v83;
  v76 = *(&v44 + 1);
  v86 = v44;
  v85 = *(v43 + 32);
  v45 = v80;
  v46 = v82;
  *(v43 + 16) = v81;
  *(v43 + 32) = v46;
  *v43 = v45;
  outlined copy of Artwork.Placeholder?(v21, v20, v22, v19);
  outlined copy of Artwork.View.PlaceholderKind?(v42, v26);
  v47 = v22;
  v48 = v19;
  v49 = v21;
  v50 = v20;
  if (!specialized static Artwork.Placeholder.__derived_struct_equals(_:_:)(&v80, &v83))
  {
    v79[0] = v75;
    v79[1] = v74;
    v79[2] = v73;
    v79[3] = v72;
    v79[4] = v71;
    v79[5] = v70;
    Artwork.Placeholder.View.configurationDidChange(_:)(v79);
  }

  outlined consume of Artwork.View.PlaceholderKind?(v42, v26);
  outlined destroy of TaskPriority?(&v88, &_sSo7UIColorCSgMd);
  outlined destroy of TaskPriority?(&v87, &_sSo7UIColorCSgMd);
  outlined destroy of TaskPriority?(&v86, &_sSo7UIImageCSgMd_0);

LABEL_27:
  Artwork.View.updateArtworkPlaceholderVisibility()();
}

Swift::Void __swiftcall Artwork.View.layoutSubviews()()
{
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  [v0 bounds];
  Artwork.View.fittingImageSize(in:)(v5, v6);
  v8 = v7;
  v10 = v9;
  v11 = [v0 contentMode];
  if (v11 > 5)
  {
    if (v11 == 6)
    {
      [v0 bounds];
      MaxY = CGRectGetMaxY(v31);
      v32.origin.x = v2;
      v32.origin.y = v4;
      v32.size.width = v8;
      v32.size.height = v10;
      v4 = MaxY - CGRectGetHeight(v32);
    }

    else if (v11 == 8)
    {
      [v0 bounds];
      MaxX = CGRectGetMaxX(v29);
      v30.origin.x = v2;
      v30.origin.y = v4;
      v30.size.width = v8;
      v30.size.height = v10;
      v2 = MaxX - CGRectGetWidth(v30);
    }
  }

  v14 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  CGRect.centeringAlong(axes:in:)();
  [v14 setFrame:?];
  if (v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8] != 255)
  {
    [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind] setFrame:{v2, v4, v8, v10}];
  }

  v15 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  v16 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  v17 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 8];
  v18 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 16];
  v19 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 24];
  [v0 bounds];
  v34.origin.x = v20;
  v34.origin.y = v21;
  v34.size.width = v22;
  v34.size.height = v23;
  v33.origin.x = v16;
  v33.origin.y = v17;
  v33.size.width = v18;
  v33.size.height = v19;
  if (!CGRectEqualToRect(v33, v34))
  {
    [v0 bounds];
    *v15 = v24;
    *(v15 + 1) = v25;
    *(v15 + 2) = v26;
    *(v15 + 3) = v27;
    Artwork.View.reloadArtworkCatalogIfNeeded()();
  }

  Artwork.View.applyDecoration()();
}

void Artwork.View.fittingImageSize(in:)(double a1, double a2)
{
  if (a1 == 0.0 && a2 == 0.0)
  {
    v3 = [v2 artworkCatalog];
    if (v3)
    {
      v4 = v3;
      MPArtworkCatalog.originalSize.getter();
    }

    return;
  }

  CGSize.aspectRatio.getter();
  v6 = v5;
  v7 = [*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (v7)
  {
    v8 = v7;
    [v7 size];
  }

  else
  {
    v10 = [v2 artworkCatalog];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    MPArtworkCatalog.originalSize.getter();
    v13 = v12;

    if (v13)
    {
      return;
    }
  }

  CGSize.aspectRatio.getter();
  if (static ApproximatelyEquatable.!=~ infix(_:_:)())
  {
    CGSize.aspectRatio.getter();
    if (vabdd_f64(v6, v9) > 0.1)
    {
      CGSize.aspectRatio.getter();
    }
  }
}

id Artwork.View.reloadArtworkCatalogIfNeeded()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 artworkCatalog];
  v4 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = v5;
  }

  v7 = Optional<A>.isArtworkVisuallyIdentical(to:)(v5, v3);

  if ((v7 & 1) == 0)
  {
    [v1 clearArtworkCatalogs];
    Artwork.View.apply(artworkImage:)(0);
  }

  [v1 bounds];
  if (v9 != 0.0 || v8 != 0.0)
  {
    v10 = *v4;
    if (*v4)
    {
      outlined init with copy of TaskPriority?((v4 + 16), v48, &_s11MusicCoreUI7ArtworkV7CachingVSgMd);
      outlined init with copy of TaskPriority?(v48, &v46, &_s11MusicCoreUI7ArtworkV7CachingVSgMd);
      if (v47)
      {
        v11 = v10;

        outlined destroy of Artwork.Caching(&v46);
      }

      else
      {
        v13 = v10;
        outlined destroy of TaskPriority?(&v46, &_s11MusicCoreUI7ArtworkV7CachingVSgMd);
      }

      v14 = String._bridgeToObjectiveC()();

      outlined init with copy of TaskPriority?(v48, &v46, &_s11MusicCoreUI7ArtworkV7CachingVSgMd);
      if (v47)
      {
        Strong = swift_weakLoadStrong();
        outlined destroy of Artwork.Caching(&v46);
      }

      else
      {
        outlined destroy of TaskPriority?(&v46, &_s11MusicCoreUI7ArtworkV7CachingVSgMd);
        Strong = 0;
      }

      [v10 setCacheIdentifier:v14 forCacheReference:Strong];

      swift_unknownObjectRelease();
      v16 = [v1 traitCollection];
      [v16 displayScale];
      v18 = v17;

      [v10 setDestinationScale:v18];
      v19 = v4[48];
      if (v19 == 255)
      {
        [v1 bounds];
        v21 = v20;
        v23 = v22;
      }

      else
      {
        v24 = *(v4 + 7);
        v25 = *(v4 + 5);
        v26 = v4[64];
        [v1 bounds];
        v28 = v27;
        v30 = v29;
        Artwork.Size.Dimension.value(in:)(v27, v29, v25, v19);
        v32 = v31;
        Artwork.Size.Dimension.value(in:)(v28, v30, v24, v26);
        v23 = v33;
        v21 = v32;
      }

      [v10 setFittingSize:{v21, v23}];
      [v10 setRenderHint:{objc_msgSend(v10, "renderHint") | 1}];
      v34 = [v1 artworkCatalog];
      if (v34)
      {
        v35 = v34;
        [v34 scaledFittingSize];
        v37 = v36;
        v39 = v38;

        [v10 scaledFittingSize];
        if (v37 == v41 && v39 == v40)
        {
          v42 = [v1 artworkCatalog];
          if (v42)
          {

            return outlined destroy of TaskPriority?(v48, &_s11MusicCoreUI7ArtworkV7CachingVSgMd);
          }
        }
      }

      else
      {
        [v10 scaledFittingSize];
      }

      MPArtworkCatalog.expectedRatio.getter();
      if ((v43 & 1) == 0)
      {
        [v1 setNeedsLayout];
      }

      v46 = v1;
      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      *(v45 + 24) = ObjectType;
      MPArtworkCatalog.setDestination<A>(_:for:completion:)(&v46, 1, partial apply for closure #1 in Artwork.View.reloadArtworkCatalogIfNeeded(), v45, ObjectType);

      return outlined destroy of TaskPriority?(v48, &_s11MusicCoreUI7ArtworkV7CachingVSgMd);
    }
  }

  result = [*&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (result)
  {

    Artwork.View.apply(artworkImage:)(0);
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t Artwork.View.applyDecoration()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MusicCoreUI7ArtworkV10DecorationVSgMd);
  v3 = __chkstk_darwin(v2 - 8);
  v103 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v101 = (&v100 - v6);
  v7 = __chkstk_darwin(v5);
  v113 = &v100 - v8;
  v9 = __chkstk_darwin(v7);
  v109 = &v100 - v10;
  v11 = __chkstk_darwin(v9);
  v106 = (&v100 - v12);
  v13 = __chkstk_darwin(v11);
  v110 = &v100 - v14;
  v15 = __chkstk_darwin(v13);
  v105 = &v100 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = (&v100 - v18);
  __chkstk_darwin(v17);
  v21 = &v100 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  v23 = __chkstk_darwin(v22 - 8);
  v102 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v100 - v26;
  v28 = __chkstk_darwin(v25);
  v104 = &v100 - v29;
  __chkstk_darwin(v28);
  v31 = &v100 - v30;
  v32 = type metadata accessor for Artwork.Decoration(0);
  v116 = *(v32 - 1);
  __chkstk_darwin(v32);
  v34 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  [v107 frame];
  v36 = v35;
  v38 = v37;
  v39 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v111 = type metadata accessor for Artwork(0);
  v112 = v39;
  v40 = &v39[v111[7]];
  v117 = v34;
  outlined init with copy of Artwork.Decoration(v40, v34, type metadata accessor for Artwork.Decoration);
  v41 = *(v40 + v32[7]);
  [v1 bounds];
  if ((v41 & 1) != 0 && (v46 = v42, v47 = v43, v48 = v44, v49 = v45, Width = CGRectGetWidth(*&v42), v45 = v49, v44 = v48, v43 = v47, v51 = Width, v42 = v46, v36 < v51) || (v41 & 2) != 0 && v38 < CGRectGetHeight(*&v42))
  {
    v52 = v117;
    outlined init with copy of TaskPriority?(&v117[v32[5]], v31, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
    v53 = type metadata accessor for UIView.Corner();
    v54 = (*(*(v53 - 8) + 48))(v31, 1, v53) != 1;
    outlined destroy of TaskPriority?(v31, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
    v55 = v54;
    v56 = 1;
    [v1 setClipsToBounds:v55];
    v57 = *(v52 + v32[6]);
  }

  else
  {
    [v1 setClipsToBounds:0];
    v57 = [objc_opt_self() clearColor];
    v56 = 0;
  }

  [v1 setBackgroundColor:v57];

  v58 = v116;
  v108 = v27;
  v115 = v56;
  if (v56)
  {
    outlined init with copy of Artwork.Decoration(v117, v21, type metadata accessor for Artwork.Decoration);
    v59 = 0;
  }

  else
  {
    v59 = 1;
  }

  v114 = v58[7];
  v114(v21, v59, 1, v32);
  outlined init with copy of TaskPriority?(v21, v19, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd);
  v116 = v58[6];
  if ((v116)(v19, 1, v32) == 1)
  {
    v60 = v1;
    outlined destroy of TaskPriority?(v19, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd);
    v61 = 0;
    LOBYTE(v62) = 0;
    v63 = 0;
  }

  else
  {
    v61 = *v19;
    v62 = v19[1];
    v63 = v19[2];
    v64 = v63;
    v65 = v1;
    outlined destroy of Artwork(v19, type metadata accessor for Artwork.Decoration);
  }

  v66 = v110;
  UIView.border.setter(v61, v62, v63);
  v67 = v105;
  outlined init with copy of TaskPriority?(v21, v105, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd);
  v68 = v116;
  if ((v116)(v67, 1, v32) == 1)
  {
    outlined destroy of TaskPriority?(v67, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd);
    v69 = type metadata accessor for UIView.Corner();
    (*(*(v69 - 8) + 56))(v104, 1, 1, v69);
  }

  else
  {
    outlined init with copy of TaskPriority?(v67 + v32[5], v104, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
    outlined destroy of Artwork(v67, type metadata accessor for Artwork.Decoration);
  }

  v70 = v107;
  UIView.corner.setter();

  outlined destroy of TaskPriority?(v21, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd);
  if (v115)
  {
    v71 = 1;
  }

  else
  {
    outlined init with copy of Artwork.Decoration(v117, v66, type metadata accessor for Artwork.Decoration);
    v71 = 0;
  }

  v72 = v106;
  v114(v66, v71, 1, v32);
  outlined init with copy of TaskPriority?(v66, v72, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd);
  if (v68(v72, 1, v32) == 1)
  {
    v73 = v70;
    outlined destroy of TaskPriority?(v72, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd);
    v74 = 0;
    LOBYTE(v75) = 0;
    v76 = 0;
  }

  else
  {
    v74 = *v72;
    v75 = v72[1];
    v76 = v72[2];
    v77 = v76;
    v78 = v70;
    outlined destroy of Artwork(v72, type metadata accessor for Artwork.Decoration);
  }

  UIView.border.setter(v74, v75, v76);
  v79 = v109;
  outlined init with copy of TaskPriority?(v66, v109, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd);
  v80 = v116;
  if ((v116)(v79, 1, v32) == 1)
  {
    outlined destroy of TaskPriority?(v79, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd);
    v81 = type metadata accessor for UIView.Corner();
    (*(*(v81 - 8) + 56))(v108, 1, 1, v81);
  }

  else
  {
    outlined init with copy of TaskPriority?(v79 + v32[5], v108, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
    outlined destroy of Artwork(v79, type metadata accessor for Artwork.Decoration);
  }

  UIView.corner.setter();

  outlined destroy of TaskPriority?(v66, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd);
  v82 = &v112[v111[9]];
  v86 = *v82 && (v83 = *(v82 + 1), ObjectType = swift_getObjectType(), v85 = *(v83 + 16), swift_unknownObjectRetain(), LOBYTE(v83) = v85(ObjectType, v83), swift_unknownObjectRelease(), (v83 & 1) != 0) && *&v112[v111[8] + 24] == 0;
  v87 = v113;
  if ((v115 | v86))
  {
    v88 = 1;
  }

  else
  {
    outlined init with copy of Artwork.Decoration(v117, v113, type metadata accessor for Artwork.Decoration);
    v88 = 0;
  }

  v114(v87, v88, 1, v32);
  v89 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v89 != 255)
  {
    v90 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v91 = v101;
    outlined init with copy of TaskPriority?(v87, v101, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd);
    if (v80(v91, 1, v32) == 1)
    {
      v92 = v90;
      outlined destroy of TaskPriority?(v91, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd);
      v93 = 0;
      LOBYTE(v94) = 0;
      v95 = 0;
    }

    else
    {
      v93 = *v91;
      v94 = v91[1];
      v95 = v91[2];
      outlined copy of Artwork.View.PlaceholderKind?(v90, v89);
      outlined copy of Artwork.View.PlaceholderKind?(v90, v89);
      v96 = v95;
      outlined destroy of Artwork(v91, type metadata accessor for Artwork.Decoration);
    }

    UIView.border.setter(v93, v94, v95);
    v87 = v113;
    v97 = v103;
    outlined init with copy of TaskPriority?(v113, v103, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd);
    if (v80(v97, 1, v32) == 1)
    {
      outlined destroy of TaskPriority?(v97, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd);
      v98 = type metadata accessor for UIView.Corner();
      (*(*(v98 - 8) + 56))(v102, 1, 1, v98);
    }

    else
    {
      outlined init with copy of TaskPriority?(v97 + v32[5], v102, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
      outlined destroy of Artwork(v97, type metadata accessor for Artwork.Decoration);
    }

    UIView.corner.setter();
    outlined consume of Artwork.View.PlaceholderKind?(v90, v89);
    outlined consume of Artwork.View.PlaceholderKind?(v90, v89);
  }

  outlined destroy of TaskPriority?(v87, &_s11MusicCoreUI7ArtworkV10DecorationVSgMd);
  return outlined destroy of Artwork(v117, type metadata accessor for Artwork.Decoration);
}

void Artwork.View.intrinsicContentSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  if (*(v1 + 48) == 2 && *(v1 + 64) == 2)
  {
    v2 = *(v1 + 56);
    v3 = *(v1 + 40);
  }

  else
  {
    v3 = 0.0;
    v2 = 0.0;
  }

  Artwork.View.fittingImageSize(in:)(v3, v2);
}

void Artwork.View.sizeThatFits(_:)(double a1, double a2)
{
  v5 = v2 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  v6 = *(v5 + 48);
  if (v6 == 255)
  {
    Artwork.View.fittingImageSize(in:)(a1, a2);
  }

  else
  {
    v7 = *(v5 + 56);
    v8 = *(v5 + 40);
    v9 = *(v5 + 64);
    Artwork.Size.Dimension.value(in:)(a1, a2, v8, v6);
    Artwork.Size.Dimension.value(in:)(a1, a2, v7, v9);
  }
}

double Artwork.Size.computedSize(in:)(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6)
{
  Artwork.Size.Dimension.value(in:)(a5, a6, a1, a2);
  v11 = v10;
  Artwork.Size.Dimension.value(in:)(a5, a6, a3, a4);
  return v11;
}

uint64_t Artwork.View.apply(artworkImage:)(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  [v2 setImage:a1];
  v3 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  if (*v3 && (v4 = *(v3 + 1)) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = [objc_opt_self() clearColor];
  }

  v6 = v5;
  [v2 setBackgroundColor:v5];

  v7 = [v2 image];
  if (v7)
  {

    goto LABEL_7;
  }

  v8 = [v1 artworkCatalog];
  if (!v8)
  {
LABEL_7:
    if (*v3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_11:
  Artwork.View.configurePlaceholder()();
LABEL_12:
  Artwork.View.updateArtworkPlaceholderVisibility()();
  Artwork.View.applyDecoration()();
  v9 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler];
  result = swift_beginAccess();
  v11 = *v9;
  if (*v9)
  {

    v11(v12);
    return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v11);
  }

  return result;
}

void closure #1 in Artwork.View.reloadArtworkCatalogIfNeeded()(void **a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v18 = v5;
  v8 = [a2 imageRepresentation];
  if (v8)
  {
    v17 = v8;
    v9 = [v8 image];
    if (v9)
    {
      v10 = v9;
      if (([v17 isImagePrepared] & 1) == 0)
      {
        v13 = swift_allocObject();
        v13[2] = a3;
        v13[3] = v10;
        v13[4] = v7;
        aBlock[4] = partial apply for closure #1 in closure #1 in Artwork.View.reloadArtworkCatalogIfNeeded();
        aBlock[5] = v13;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MPAVRoute?) -> ();
        aBlock[3] = &block_descriptor_47;
        v14 = _Block_copy(aBlock);
        v15 = v18;
        v16 = v10;

        [v16 prepareForDisplayWithCompletionHandler:v14];

        _Block_release(v14);
        return;
      }

      v11 = v10;
      Artwork.View.apply(artworkImage:)(v10);

      [v7 setNeedsLayout];
      v12 = v17;
      goto LABEL_8;
    }
  }

  Artwork.View.apply(artworkImage:)(0);
  [v7 setNeedsLayout];
  v12 = v18;
LABEL_8:
}

uint64_t closure #1 in closure #1 in Artwork.View.reloadArtworkCatalogIfNeeded()(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_0);
  v22 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a1;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in Artwork.View.reloadArtworkCatalogIfNeeded();
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_56_2;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a3;
  v18 = a4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type Artwork.View and conformance Artwork.View(&_s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_0);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWl_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v22;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v24 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v23);
}

void closure #1 in closure #1 in closure #1 in Artwork.View.reloadArtworkCatalogIfNeeded()(uint64_t a1, void *a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = [a4 artworkCatalog];
  v9 = v8;
  if (!Strong)
  {
    if (v8)
    {

      return;
    }

LABEL_7:
    if (a2)
    {
      v11 = a2;
      Artwork.View.apply(artworkImage:)(a2);
    }

    else
    {
      if (one-time initialization token for artwork != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.artwork);
      v13 = a3;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v13;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to prepare image: %@", v16, 0xCu);
        outlined destroy of TaskPriority?(v17, &_sSo8NSObjectCSgMd_1);
      }

      Artwork.View.apply(artworkImage:)(v13);
    }

    [a4 setNeedsLayout];
    return;
  }

  if (!v8)
  {

    return;
  }

  type metadata accessor for UIAction(0, &_sSo16MPArtworkCatalogCML_0);
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    goto LABEL_7;
  }
}

void Artwork.View.updateArtworkPlaceholderVisibility()()
{
  v1 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v2 = v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v2 != 255)
  {
    v3 = *v1;
    v4 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    v5 = *v1;
    v6 = [v4 image];
    if (v6)
    {
    }

    else
    {
      v9 = [v0 artworkCatalog];
      if (v9)
      {

        goto LABEL_8;
      }
    }

    v7 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    if (*&v0[v7])
    {
      v8 = 1;
LABEL_11:
      [v5 setHidden:v8];
      outlined consume of Artwork.View.PlaceholderKind?(v3, v2);
      return;
    }

LABEL_8:
    v10 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
    swift_beginAccess();
    v11 = type metadata accessor for Artwork(0);
    if (*&v10[*(v11 + 32) + 24])
    {
      v8 = 0;
    }

    else
    {
      v8 = *&v10[*(v11 + 36)] == 0;
    }

    goto LABEL_11;
  }
}

void Artwork.View.placeholderKind.didset(void *a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v6 = *&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v7 = v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (a2 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1;
  }

  if (v7 == 255 || v6 == 0)
  {
    outlined copy of Artwork.View.PlaceholderKind?(*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind], v7);
    outlined copy of Artwork.View.PlaceholderKind?(a1, a2);
    if (!v8)
    {
      return;
    }
  }

  else
  {
    if (v8)
    {
      v10 = v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
      type metadata accessor for UIAction(0, &_sSo6UIViewCML_0);
      outlined copy of Artwork.View.PlaceholderKind?(v6, v10);
      outlined copy of Artwork.View.PlaceholderKind?(a1, a2);
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        return;
      }

      goto LABEL_16;
    }

    outlined copy of Artwork.View.PlaceholderKind?(*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind], v7);
    outlined copy of Artwork.View.PlaceholderKind?(a1, a2);
    v8 = v6;
  }

LABEL_16:
  if (a2 != -1)
  {
    [a1 removeFromSuperview];
  }

  v12 = v5[8];
  if (v12 != 255)
  {
    v13 = *v5;
    v14 = *v5;
    v15 = v14;
    if ((v12 & 1) == 0)
    {
      [v14 setClipsToBounds:1];
    }

    [v2 addSubview:v15];
    [v2 setNeedsLayout];

    outlined consume of Artwork.View.PlaceholderKind?(v13, v12);
  }
}

id CTRunRef.PartialRunView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

void (*protocol witness for MusicUIContentView.typedConfiguration.modify in conformance Artwork.View(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Artwork.View.typedConfiguration.modify(v2);
  return protocol witness for MusicUIContentView.typedConfiguration.modify in conformance Artwork.View;
}

void protocol witness for MusicUIContentView.typedConfiguration.modify in conformance Artwork.View(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for UIContentView.configuration.getter in conformance Artwork.View@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Artwork(0);
  a1[4] = lazy protocol witness table accessor for type Artwork.View and conformance Artwork.View(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, type metadata accessor for Artwork);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v4 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  return outlined init with copy of Artwork.Decoration(v1 + v4, boxed_opaque_existential_1, type metadata accessor for Artwork);
}

uint64_t specialized MusicUIContentView.configuration.setter(uint64_t a1)
{
  v3 = type metadata accessor for Artwork(0);
  v4 = __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  __chkstk_darwin(v4);
  v8 = v12 - v7 + 40;
  outlined init with copy of ActionPerforming(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd);
  swift_dynamicCast();
  v9 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  outlined init with copy of Artwork.Decoration(v1 + v9, v6, type metadata accessor for Artwork);
  swift_beginAccess();
  outlined assign with copy of Artwork(v8, v1 + v9);
  swift_endAccess();
  Artwork.View.typedConfiguration.didset(v6);
  outlined destroy of Artwork(v8, type metadata accessor for Artwork);
  outlined destroy of Artwork(v6, type metadata accessor for Artwork);
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void (*protocol witness for UIContentView.configuration.modify in conformance Artwork.View(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  *(v3 + 24) = type metadata accessor for Artwork(0);
  v4[4] = lazy protocol witness table accessor for type Artwork.View and conformance Artwork.View(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, type metadata accessor for Artwork);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  outlined init with copy of Artwork.Decoration(v1 + v6, boxed_opaque_existential_1, type metadata accessor for Artwork);
  return protocol witness for UIContentView.configuration.modify in conformance Artwork.View;
}

void protocol witness for UIContentView.configuration.modify in conformance Artwork.View(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of ActionPerforming(*a1, v2 + 40);
    specialized MusicUIContentView.configuration.setter(v2 + 40);
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    specialized MusicUIContentView.configuration.setter(*a1);
  }

  free(v2);
}

uint64_t protocol witness for UIContentView.supports(_:) in conformance Artwork.View(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return UIContentView.supports(_:)(a1, ObjectType, a3);
}

uint64_t Artwork.Caching.reference.setter()
{
  swift_weakAssign();
}

uint64_t (*Artwork.Caching.reference.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return Artwork.Caching.reference.modify;
}

uint64_t Artwork.Caching.reference.modify()
{
  swift_weakAssign();
}

uint64_t Artwork.Caching.init(reference:identifier:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  swift_weakInit();
  *a3 = a1;
  a3[1] = a2;
  swift_weakAssign();
}

uint64_t Artwork.Caching.init(reference:)@<X0>(void *a1@<X8>)
{
  swift_weakInit();
  swift_weakAssign();

  *a1 = 0xD00000000000001CLL;
  a1[1] = 0x80000001004D04D0;
  return result;
}

uint64_t Artwork.Content.init(catalog:background:)(uint64_t result, void *a2)
{
  if (!result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t static Artwork.Content.__derived_struct_equals(_:_:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0);
  if (static NSObject.== infix(_:_:)())
  {
    if (a2)
    {
      if (a4)
      {
        type metadata accessor for UIAction(0, &_sSo7UIColorCML_0);
        v6 = a4;
        v7 = a2;
        v8 = static NSObject.== infix(_:_:)();

        if (v8)
        {
          return 1;
        }
      }
    }

    else if (!a4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Artwork.Content(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0);
  if (static NSObject.== infix(_:_:)())
  {
    if (v2)
    {
      if (v3)
      {
        type metadata accessor for UIAction(0, &_sSo7UIColorCML_0);
        v4 = v3;
        v5 = v2;
        v6 = static NSObject.== infix(_:_:)();

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Artwork.Decoration.border.getter()
{
  v1 = *v0;
  v2 = v0[2];
  return v1;
}

void Artwork.Decoration.border.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
}

id Artwork.Decoration.fillColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Artwork.Decoration(0) + 24));

  return v1;
}

void Artwork.Decoration.fillColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Artwork.Decoration(0) + 24);

  *(v1 + v3) = a1;
}

uint64_t Artwork.Decoration.fillAxes.setter(uint64_t a1)
{
  result = type metadata accessor for Artwork.Decoration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t static Artwork.Decoration.with(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = v4[5];
  v6 = type metadata accessor for UIView.Corner();
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = v4[6];
  *&a2[v7] = [objc_opt_self() blackColor];
  *&a2[v4[7]] = 1;
  return a1(a2);
}

uint64_t Artwork.Size.Dimension.value(in:)(double a1, double a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    if (a1 != 1.79769313e308)
    {
      return result;
    }

    _StringGuts.grow(_:)(67);
    v8._countAndFlagsBits = 0x6F69736E656D6944;
    v8._object = 0xE90000000000006ELL;
    String.append(_:)(v8);
    v9._object = 0x80000001004D06B0;
    v9._countAndFlagsBits = 0xD000000000000030;
    String.append(_:)(v9);
    v10._countAndFlagsBits = CGSize.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0x696C61766E49203ALL;
    v11._object = 0xEF68746469772064;
    String.append(_:)(v11);
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a4 == 1 && a2 == 1.79769313e308)
  {
    _StringGuts.grow(_:)(68);
    v4._countAndFlagsBits = 0x6F69736E656D6944;
    v4._object = 0xE90000000000006ELL;
    String.append(_:)(v4);
    v5._object = 0x80000001004D06B0;
    v5._countAndFlagsBits = 0xD000000000000030;
    String.append(_:)(v5);
    v6._countAndFlagsBits = CGSize.description.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 0xD000000000000010;
    v7._object = 0x80000001004D06F0;
    String.append(_:)(v7);
    goto LABEL_10;
  }

  return result;
}

BOOL static Artwork.Size.Dimension.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v4 = *&a1 == *&a3;
    if (a4 != 1)
    {
      v4 = 0;
    }

    v5 = a4 == 2 && *&a1 == *&a3;
    if (a2 == 1)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    return !a4 && *&a1 == *&a3;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Artwork.Size.Dimension(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 == 1 && v2 == v3)
      {
        return 1;
      }
    }

    else if (v4 == 2 && v2 == v3)
    {
      return 1;
    }
  }

  else if (!*(a2 + 8) && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t one-time initialization function for grid(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Artwork.Decoration(0);
  __swift_allocate_value_buffer(v10, a2);
  v11 = __swift_project_value_buffer(v10, a2);
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  v12 = static UIView.Border.artwork;
  v13 = byte_10063EF68;
  v14 = *a3;
  v15 = qword_10063EF70;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for UIView.Corner();
  v17 = __swift_project_value_buffer(v16, a4);
  v18 = *(v16 - 8);
  (*(v18 + 16))(v9, v17, v16);
  (*(v18 + 56))(v9, 0, 1, v16);
  v19 = [objc_opt_self() blackColor];
  *v11 = v12;
  v11[1] = v13;
  v11[2] = v15;
  result = outlined init with take of UIView.Corner?(v9, v11 + v10[5]);
  *(v11 + v10[6]) = v19;
  *(v11 + v10[7]) = 1;
  return result;
}

uint64_t Artwork.Decoration.grid.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Artwork.Decoration(0);

  return __swift_project_value_buffer(v3, a2);
}

uint64_t one-time initialization function for round()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for Artwork.Decoration(0);
  __swift_allocate_value_buffer(v3, static Artwork.Decoration.round);
  v4 = __swift_project_value_buffer(v3, static Artwork.Decoration.round);
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  v5 = static UIView.Border.artwork;
  v6 = byte_10063EF68;
  v7 = qword_10063EF70;
  v8 = qword_10063EF70;
  static UIView.Corner.rounded.getter();
  v9 = type metadata accessor for UIView.Corner();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  v10 = [objc_opt_self() blackColor];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  result = outlined init with take of UIView.Corner?(v2, v4 + v3[5]);
  *(v4 + v3[6]) = v10;
  *(v4 + v3[7]) = 1;
  return result;
}

uint64_t static Artwork.Decoration.grid.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Artwork.Decoration(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return outlined init with copy of Artwork.Decoration(v6, a3, type metadata accessor for Artwork.Decoration);
}

uint64_t Artwork.Decoration.scaled(using:compatibleWith:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for UIView.Corner.Radius();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v30 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  outlined init with copy of Artwork.Decoration(v4, a3, type metadata accessor for Artwork.Decoration);
  if (*(v4 + 16) && *(a3 + 16))
  {
    v17 = *(v4 + 8);
    [a1 scaledValueForValue:a2 compatibleWithTraitCollection:*v4];
    *a3 = v18;
    *(a3 + 8) = v17 & 1;
  }

  v31 = a1;
  v32 = a2;
  v19 = type metadata accessor for Artwork.Decoration(0);
  outlined init with copy of TaskPriority?(v4 + *(v19 + 20), v10, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  v20 = type metadata accessor for UIView.Corner();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v10, 1, v20) == 1)
  {
    return outlined destroy of TaskPriority?(v10, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  }

  UIView.Corner.radius.getter();
  (*(v21 + 8))(v10, v20);
  v24 = (*(v12 + 88))(v16, v11);
  if (v24 != enum case for UIView.Corner.Radius.value(_:))
  {
    return (*(v12 + 8))(v16, v11);
  }

  v25 = v24;
  (*(v12 + 96))(v16, v11);
  result = (v22)(a3 + *(v19 + 20), 1, v20);
  if (!result)
  {
    v26 = v16[8];
    [v31 scaledValueForValue:v32 compatibleWithTraitCollection:*v16];
    v27 = v30;
    *v30 = v28;
    *(v27 + 8) = v26;
    (*(v12 + 104))(v27, v25, v11);
    return UIView.Corner.radius.setter();
  }

  return result;
}

BOOL specialized static Artwork.Caching.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (v3 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v3 & 1) != 0))
  {
    Strong = swift_weakLoadStrong();
    v6 = swift_weakLoadStrong();
    if (Strong)
    {
      if (v6)
      {
        v7 = v6;

        return Strong == v7;
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t specialized static Artwork.Size.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  if (a2)
  {
    if (a2 == 1)
    {
      result = 0;
      if (a6 != 1)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (a6 != 2)
      {
        return result;
      }
    }
  }

  else
  {
    result = 0;
    if (a6)
    {
      return result;
    }
  }

  if (*&a1 == *&a5)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        if (a8 == 1 && *&a3 == *&a7)
        {
          return 1;
        }
      }

      else if (a8 == 2 && *&a3 == *&a7)
      {
        return 1;
      }
    }

    else if (!a8 && *&a3 == *&a7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL specialized static Artwork.Decoration.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for UIView.Corner();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  __chkstk_darwin(v8 - 8);
  v36 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSg_AFtMd);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = a1[2];
  v14 = a2[2];
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    v34 = v4;
    v35 = v7;
    v16 = *a1;
    v15 = a1[1];
    v33 = v5;
    v17 = a1;
    v19 = *a2;
    v18 = a2[1];
    v20 = v14;
    v38 = v15 & 1;
    v21 = v18 & 1;
    a1 = v17;
    v37 = v21;
    v22 = v19;
    v5 = v33;
    v4 = v34;
    v23 = static UIView.Border.__derived_struct_equals(_:_:)(v16, v15 & 1, v13, v22, v21);

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v35 = v7;
    if (v14)
    {
      return 0;
    }
  }

  v24 = type metadata accessor for Artwork.Decoration(0);
  v25 = *(v24 + 20);
  v26 = *(v10 + 48);
  outlined init with copy of TaskPriority?(a1 + v25, v12, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  outlined init with copy of TaskPriority?(a2 + v25, &v12[v26], &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  v27 = *(v5 + 48);
  if (v27(v12, 1, v4) != 1)
  {
    v28 = v36;
    outlined init with copy of TaskPriority?(v12, v36, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
    if (v27(&v12[v26], 1, v4) != 1)
    {
      v29 = v35;
      (*(v5 + 32))(v35, &v12[v26], v4);
      lazy protocol witness table accessor for type Artwork.View and conformance Artwork.View(&lazy protocol witness table cache variable for type UIView.Corner and conformance UIView.Corner, &type metadata accessor for UIView.Corner);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v5 + 8);
      v31(v29, v4);
      v31(v28, v4);
      outlined destroy of TaskPriority?(v12, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
      if ((v30 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v28, v4);
LABEL_11:
    outlined destroy of TaskPriority?(v12, &_sSo6UIViewC11MediaCoreUIE6CornerVSg_AFtMd);
    return 0;
  }

  if (v27(&v12[v26], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  outlined destroy of TaskPriority?(v12, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
LABEL_13:
  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0);
  if (static NSObject.== infix(_:_:)())
  {
    return *(a1 + *(v24 + 28)) == *(a2 + *(v24 + 28));
  }

  return 0;
}

BOOL specialized static Artwork.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0);
    v7 = v6;
    v8 = v4;
    if (static NSObject.== infix(_:_:)())
    {
      if (v5)
      {
        if (v6)
        {
          type metadata accessor for UIAction(0, &_sSo7UIColorCML_0);
          v9 = v7;
          v10 = v5;
          v11 = static NSObject.== infix(_:_:)();

          if ((v11 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_9;
        }

LABEL_20:

        return 0;
      }

      if (!v6)
      {

        goto LABEL_9;
      }
    }

    goto LABEL_20;
  }

  if (v4)
  {
    return 0;
  }

LABEL_9:
  outlined init with copy of TaskPriority?(a1 + 16, &v43, &_s11MusicCoreUI7ArtworkV7CachingVSgMd);
  outlined init with copy of TaskPriority?(a2 + 16, &v46, &_s11MusicCoreUI7ArtworkV7CachingVSgMd);
  if (!v44)
  {
    if (!v47)
    {
      outlined destroy of TaskPriority?(&v43, &_s11MusicCoreUI7ArtworkV7CachingVSgMd);
      goto LABEL_15;
    }

LABEL_22:
    outlined destroy of TaskPriority?(&v43, &_s11MusicCoreUI7ArtworkV7CachingVSg_AFtMd);
    return 0;
  }

  outlined init with copy of TaskPriority?(&v43, v42, &_s11MusicCoreUI7ArtworkV7CachingVSgMd);
  if (!v47)
  {
    outlined destroy of Artwork.Caching(v42);
    goto LABEL_22;
  }

  outlined init with take of Artwork.Caching(&v46, v41);
  v12 = specialized static Artwork.Caching.__derived_struct_equals(_:_:)(v42, v41);
  outlined destroy of Artwork.Caching(v41);
  outlined destroy of Artwork.Caching(v42);
  outlined destroy of TaskPriority?(&v43, &_s11MusicCoreUI7ArtworkV7CachingVSgMd);
  if (!v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13 == 255)
  {
    if (v14 != 255)
    {
      return 0;
    }
  }

  else if (v14 == 255 || (specialized static Artwork.Size.__derived_struct_equals(_:_:)(*(a1 + 40), v13, *(a1 + 56), *(a1 + 64), *(a2 + 40), v14, *(a2 + 56), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v16 = type metadata accessor for Artwork(0);
  if (!specialized static Artwork.Decoration.__derived_struct_equals(_:_:)((a1 + v16[7]), (a2 + v16[7])))
  {
    return 0;
  }

  v17 = v16[8];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = *(a1 + v17 + 16);
  v21 = *(a1 + v17 + 24);
  v23 = *(a1 + v17 + 32);
  v22 = *(a1 + v17 + 40);
  v24 = a2 + v17;
  v26 = *v24;
  v25 = *(v24 + 8);
  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  v30 = *(v24 + 32);
  v29 = *(v24 + 40);
  if (v21)
  {
    if (v28)
    {
      v43 = *v24;
      v44 = v25;
      v45 = v27;
      v46 = v28;
      v47 = v30;
      v48 = v29;
      v42[0] = v18;
      v42[1] = v19;
      v42[2] = v20;
      v42[3] = v21;
      v42[4] = v23;
      v42[5] = v22;
      v36 = v26;
      v31 = v26;
      v32 = v19;
      v37 = v25;
      v39 = v27;
      v33 = v20;
      outlined copy of Artwork.Placeholder?(v31, v25, v27, v28);
      outlined copy of Artwork.Placeholder?(v18, v32, v33, v21);
      v34 = specialized static Artwork.Placeholder.__derived_struct_equals(_:_:)(v42, &v43);

      outlined consume of Artwork.Placeholder?(v18, v32, v33, v21);
      if (v34)
      {
        return *(a2 + v16[9]) == *(a1 + v16[9]);
      }

      return 0;
    }

LABEL_33:
    v38 = *(v24 + 8);
    v40 = *(v24 + 16);
    v35 = v20;
    outlined copy of Artwork.Placeholder?(*v24, v38, v27, v28);
    outlined copy of Artwork.Placeholder?(v18, v19, v35, v21);
    outlined consume of Artwork.Placeholder?(v18, v19, v35, v21);
    outlined consume of Artwork.Placeholder?(v26, v38, v40, v28);
    return 0;
  }

  if (v28)
  {
    goto LABEL_33;
  }

  return *(a2 + v16[9]) == *(a1 + v16[9]);
}

uint64_t outlined init with copy of Artwork.Decoration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with copy of Artwork(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for Artwork(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Artwork.View and conformance Artwork.View(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, type metadata accessor for Artwork);
  result = lazy protocol witness table accessor for type Artwork.View and conformance Artwork.View(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, type metadata accessor for Artwork);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Artwork.View and conformance Artwork.View(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Artwork.View(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Artwork.View and conformance Artwork.View(&lazy protocol witness table cache variable for type Artwork.View and conformance Artwork.View, type metadata accessor for Artwork.View);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002B2D88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for Artwork.Decoration(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1002B2E54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for Artwork.Decoration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Artwork()
{
  type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for Artwork.Content?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for Artwork.Caching?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for Artwork.Size?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Artwork.Decoration(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for Artwork.Placeholder?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Artwork.PlaceholderProvider?();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Artwork.PlaceholderProvider?()
{
  if (!lazy cache variable for type metadata for Artwork.PlaceholderProvider?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11MusicCoreUI7ArtworkV19PlaceholderProvider_pMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Artwork.PlaceholderProvider?);
    }
  }
}

uint64_t type metadata completion function for Artwork.View()
{
  result = type metadata accessor for Artwork(319);
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

uint64_t sub_1002B319C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1002B327C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for Artwork.Decoration()
{
  type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for UIView.Border?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIView.Corner?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIAction(319, &_sSo7UIColorCML_0);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UIAxis(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for UIView.Corner?()
{
  if (!lazy cache variable for type metadata for UIView.Corner?)
  {
    type metadata accessor for UIView.Corner();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIView.Corner?);
    }
  }
}

__n128 __swift_memcpy25_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Artwork.Size(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for Artwork.Size(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8_0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void outlined consume of Artwork.View.PlaceholderKind?(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t outlined init with take of UIView.Corner?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B35F8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002B3630()
{

  return swift_deallocObject();
}

uint64_t sub_1002B36A0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002B370C()
{

  return swift_deallocObject();
}

unint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWl_0()
{
  result = _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_0;
  if (!_sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_0);
    result = swift_getWitnessTable();
    atomic_store(result, &_sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_0);
  }

  return result;
}

uint64_t outlined destroy of Artwork(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id outlined copy of Artwork.View.PlaceholderKind?(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

id outlined copy of Artwork.Placeholder?(id result, void *a2, void *a3, void *a4)
{
  if (a4)
  {
    v5 = result;
    v6 = a3;
    v7 = a4;
    v8 = v5;

    return a2;
  }

  return result;
}

void outlined consume of Artwork.Placeholder?(void *a1, void *a2, void *a3, void *a4)
{
  if (a4)
  {
  }
}

void Artwork.Placeholder.View.typedConfiguration.setter(uint64_t a1)
{
  specialized Artwork.Placeholder.View.typedConfiguration.setter(a1);
  v4 = *a1;
  outlined destroy of TaskPriority?(&v4, &_sSo7UIColorCSgMd);
  v3 = *(a1 + 8);
  outlined destroy of TaskPriority?(&v3, &_sSo7UIColorCSgMd);
  v2 = *(a1 + 16);
  outlined destroy of TaskPriority?(&v2, &_sSo7UIImageCSgMd_0);
}

void *Artwork.Placeholder.tint.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

id one-time initialization function for defaultTint()
{
  result = [objc_opt_self() tertiaryLabelColor];
  static Artwork.Placeholder.defaultTint = result;
  return result;
}

__n128 static Artwork.Placeholder.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() secondarySystemFillColor];
  if (one-time initialization token for defaultTint != -1)
  {
    swift_once();
  }

  v5 = static Artwork.Placeholder.defaultTint;
  v6 = objc_opt_self();
  v7 = v5;
  *&v11 = v4;
  *(&v11 + 1) = v5;
  v12 = 0;
  v13 = [v6 configurationWithWeight:4];
  v14 = xmmword_100507930;
  a1(&v11);
  v8 = v12;
  v9 = v13;
  result = v14;
  *a2 = v11;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = result;
  return result;
}

id Artwork.Placeholder.preferredSymbolConfiguration(in:)(double a1, double a2)
{
  if (a1 > a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 < a1)
  {
    a1 = a2;
  }

  if (v3 * *(v2 + 32) >= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = v3 * *(v2 + 32);
  }

  v5 = *(v2 + 24);
  v6 = [objc_opt_self() configurationWithPointSize:v4];
  v7 = [v5 configurationByApplyingConfiguration:v6];

  return v7;
}

uint64_t Artwork.Placeholder.image(with:graphicsFormat:)(uint64_t a1, double a2, double a3)
{
  v4 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a1 format:{a2, a3}];
  v5 = *v3;
  v20 = v3[1];
  v21 = v5;
  v6 = v3[2];
  v7 = v3[3];
  v18 = 0;
  v19 = v6;
  v8 = swift_allocObject();
  v9 = *(v3 + 1);
  *(v8 + 16) = *v3;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v3 + 2);
  *(v8 + 64) = &v18;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in Artwork.Placeholder.image(with:graphicsFormat:);
  *(v10 + 24) = v8;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  aBlock[3] = &block_descriptor_48;
  v11 = _Block_copy(aBlock);
  outlined init with copy of TaskPriority?(&v21, v16, &_sSo7UIColorCSgMd);
  outlined init with copy of TaskPriority?(&v20, v16, &_sSo7UIColorCSgMd);
  outlined init with copy of TaskPriority?(&v19, v16, &_sSo7UIImageCSgMd_0);
  v12 = v7;

  v13 = [v4 imageWithActions:v11];

  _Block_release(v11);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = v18;

    return v15;
  }

  return result;
}

void closure #1 in Artwork.Placeholder.image(with:graphicsFormat:)(void *a1, uint64_t a2, void **a3)
{
  v6 = [a1 format];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [objc_opt_self() secondarySystemBackgroundColor];
  [v15 setFill];

  v16 = objc_opt_self();
  v17 = [v16 bezierPathWithRect:{v8, v10, v12, v14}];
  [v17 fill];

  if (*a2)
  {
    v18 = *a2;
    [v18 setFill];
    v19 = [v16 bezierPathWithRect:{v8, v10, v12, v14}];
    [v19 fill];
  }

  if (v12 > v14)
  {
    v20 = v12;
  }

  else
  {
    v20 = v14;
  }

  if (v14 >= v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = v14;
  }

  v22 = v20 * *(a2 + 32);
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(a2 + 24);
  v25 = [objc_opt_self() configurationWithPointSize:v23];
  v26 = [v24 configurationByApplyingConfiguration:v25];

  v27 = *(a2 + 16);
  if (v27)
  {
    v28 = [v27 imageWithSymbolConfiguration:v26];
    if (v28)
    {
      v29 = v28;
      if (*(a2 + 8))
      {
        v30 = [v28 imageWithTintColor:?];

        v29 = v30;
      }

      [v29 size];
      v32 = v31;
      v33 = [objc_opt_self() mainScreen];
      [v33 scale];

      CGRect.centeringAlong(axes:bounds:scale:)();
      [v29 drawInRect:v32];
    }
  }

  v34 = [a1 currentImage];

  v35 = *a3;
  *a3 = v34;
}

char *Artwork.Placeholder.View.init(configuration:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = *a1;
  v17 = a1[1];
  v18 = v5;
  v6 = a1[3];
  v16 = a1[2];
  v7 = &v1[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  v8 = *(a1 + 2);
  v9 = *(a1 + 1);
  *v7 = *a1;
  *(v7 + 1) = v9;
  *(v7 + 2) = v8;
  outlined init with copy of TaskPriority?(&v18, v19, &_sSo7UIColorCSgMd);
  outlined init with copy of TaskPriority?(&v17, v19, &_sSo7UIColorCSgMd);
  outlined init with copy of TaskPriority?(&v16, v19, &_sSo7UIImageCSgMd_0);
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v10 = v6;
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = *&v11[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView];
  v13 = v11;
  [v13 addSubview:v12];
  memset(v19, 0, sizeof(v19));
  Artwork.Placeholder.View.configurationDidChange(_:)(v19);
  outlined destroy of TaskPriority?(&v18, &_sSo7UIColorCSgMd);
  outlined destroy of TaskPriority?(&v17, &_sSo7UIColorCSgMd);
  outlined destroy of TaskPriority?(&v16, &_sSo7UIImageCSgMd_0);

  return v13;
}

void Artwork.Placeholder.View.configurationDidChange(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 24);
  v5 = &v1[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 1);
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  v11 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (*v5)
  {
    v12 = v8;
    v13 = v9;
    v14 = v6;
    v15 = v7;
  }

  else
  {
    v16 = objc_opt_self();
    v12 = v8;
    v17 = v9;
    v14 = v6;
    v15 = [v16 clearColor];
    v7 = 0;
  }

  v18 = v7;
  [v2 setBackgroundColor:v15];

  v19 = *&v2[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView];
  [v19 setHidden:v8 == 0];
  [v19 setImage:v12];
  [v19 setTintColor:v14];
  [v19 setAlpha:v10];
  v20 = [v2 superview];
  if (!v20)
  {
    goto LABEL_16;
  }

  if (!v4)
  {
    goto LABEL_15;
  }

  v21 = *(a1 + 16);
  v22 = v21;
  v23 = v22;
  if (!v8)
  {
    if (!v21)
    {
      goto LABEL_13;
    }

LABEL_15:
    [v2 setNeedsLayout];
    goto LABEL_16;
  }

  if (!v21)
  {
    goto LABEL_15;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIImage);
  v24 = v12;
  v25 = static NSObject.== infix(_:_:)();

  if ((v25 & 1) == 0 || !*(a1 + 24))
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v11 != *(a1 + 32))
  {
    goto LABEL_15;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIImageSymbolConfiguration);
  v26 = v9;
  v27 = v4;
  v28 = static NSObject.== infix(_:_:)();

  if ((v28 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
}

void Artwork.Placeholder.View.init(coder:)()
{
  v1 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id Artwork.Placeholder.View.typedConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v11 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v11;
  *(a1 + 32) = *(v3 + 32);
  v7 = v4;
  v8 = v5;
  v9 = v6;

  return v11;
}

void (*Artwork.Placeholder.View.typedConfiguration.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1E0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  *(v3 + 464) = v1;
  *(v3 + 472) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  *(v4 + 48) = *v6;
  *(v4 + 56) = v8;
  v4 += 48;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v11;
  v12 = v9;
  v13 = v10;
  v14 = v7;
  v15 = v8;
  return Artwork.Placeholder.View.typedConfiguration.modify;
}

void Artwork.Placeholder.View.typedConfiguration.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 58) + *(*a1 + 59));
  if (a2)
  {
    v4 = *(v2 + 4);
    v5 = *(v2 + 5);
    v6 = *(v2 + 3);
    v7 = v6;
    *(v2 + 19) = v4;
    *(v2 + 20) = v5;
    *(v2 + 18) = v6;
    *(v2 + 392) = *(v2 + 18);
    v8 = *(v2 + 39);
    *(v2 + 51) = *(v2 + 38);
    v10 = *(v3 + 1);
    v9 = *(v3 + 2);
    *v2 = *v3;
    *(v2 + 1) = v10;
    *(v2 + 2) = v9;
    v11 = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v35 = v3[4];
    v36 = v3[3];
    v34 = v3[5];
    *(v2 + 46) = *v2;
    v14 = *(v2 + 5);
    *(v3 + 1) = v4;
    *(v3 + 2) = v14;
    *v3 = v7;
    outlined init with copy of TaskPriority?((v2 + 392), (v2 + 456), &_sSo7UIColorCSgMd);
    outlined init with copy of TaskPriority?((v2 + 400), (v2 + 456), &_sSo7UIColorCSgMd);
    outlined init with copy of TaskPriority?((v2 + 408), (v2 + 456), &_sSo7UIImageCSgMd_0);
    v15 = v8;
    outlined init with copy of TaskPriority?((v2 + 392), (v2 + 456), &_sSo7UIColorCSgMd);
    outlined init with copy of TaskPriority?((v2 + 400), (v2 + 456), &_sSo7UIColorCSgMd);
    outlined init with copy of TaskPriority?((v2 + 408), (v2 + 456), &_sSo7UIImageCSgMd_0);
    v16 = v15;
    if (!specialized static Artwork.Placeholder.__derived_struct_equals(_:_:)((v2 + 288), v2))
    {
      *(v2 + 30) = v11;
      *(v2 + 31) = v12;
      *(v2 + 32) = v13;
      *(v2 + 33) = v36;
      *(v2 + 34) = v35;
      *(v2 + 35) = v34;
      Artwork.Placeholder.View.configurationDidChange(_:)((v2 + 240));
    }

    outlined destroy of TaskPriority?((v2 + 368), &_sSo7UIColorCSgMd);
    *(v2 + 47) = *(v2 + 1);
    outlined destroy of TaskPriority?((v2 + 376), &_sSo7UIColorCSgMd);
    v17 = *(v2 + 3);
    *(v2 + 48) = *(v2 + 2);
    outlined destroy of TaskPriority?((v2 + 384), &_sSo7UIImageCSgMd_0);

    outlined destroy of TaskPriority?((v2 + 392), &_sSo7UIColorCSgMd);
    outlined destroy of TaskPriority?((v2 + 400), &_sSo7UIColorCSgMd);
    outlined destroy of TaskPriority?((v2 + 408), &_sSo7UIImageCSgMd_0);

    v18 = *(v2 + 6);
    v19 = *(v2 + 7);
    v20 = *(v2 + 8);
  }

  else
  {
    v21 = *(v2 + 4);
    *(v2 + 9) = *(v2 + 3);
    *(v2 + 10) = v21;
    v23 = *(v2 + 3);
    v22 = *(v2 + 4);
    *(v2 + 11) = *(v2 + 5);
    v24 = *v3;
    v25 = *(v3 + 2);
    *(v2 + 13) = *(v3 + 1);
    *(v2 + 14) = v25;
    *(v2 + 12) = v24;
    v26 = v3[1];
    v37 = *v3;
    v27 = v3[2];
    v28 = v3[3];
    v29 = v3[4];
    v30 = v3[5];
    *(v2 + 54) = *(v2 + 24);
    v31 = *(v2 + 21);
    *(v2 + 45) = *(v2 + 20);
    *(v2 + 440) = *(v2 + 9);
    v32 = *(v2 + 5);
    *(v3 + 1) = v22;
    *(v3 + 2) = v32;
    *v3 = v23;
    outlined init with copy of TaskPriority?((v2 + 440), (v2 + 456), &_sSo7UIColorCSgMd);
    outlined init with copy of TaskPriority?((v2 + 448), (v2 + 456), &_sSo7UIColorCSgMd);
    outlined init with copy of TaskPriority?((v2 + 360), (v2 + 456), &_sSo7UIImageCSgMd_0);
    v20 = v31;
    if (!specialized static Artwork.Placeholder.__derived_struct_equals(_:_:)((v2 + 144), (v2 + 192)))
    {
      *(v2 + 12) = v37;
      *(v2 + 13) = v26;
      *(v2 + 14) = v27;
      *(v2 + 15) = v28;
      *(v2 + 16) = v29;
      *(v2 + 17) = v30;
      Artwork.Placeholder.View.configurationDidChange(_:)((v2 + 96));
    }

    outlined destroy of TaskPriority?((v2 + 432), &_sSo7UIColorCSgMd);
    *(v2 + 53) = *(v2 + 25);
    outlined destroy of TaskPriority?((v2 + 424), &_sSo7UIColorCSgMd);
    v33 = *(v2 + 27);
    *(v2 + 52) = *(v2 + 26);
    outlined destroy of TaskPriority?((v2 + 416), &_sSo7UIImageCSgMd_0);

    outlined destroy of TaskPriority?((v2 + 440), &_sSo7UIColorCSgMd);
    outlined destroy of TaskPriority?((v2 + 448), &_sSo7UIColorCSgMd);
    outlined destroy of TaskPriority?((v2 + 360), &_sSo7UIImageCSgMd_0);
  }

  free(v2);
}

Swift::Void __swiftcall Artwork.Placeholder.View.layoutSubviews()()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView];
  v2 = &v0[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 2);
  v8 = v5;
  v9 = v3;
  v10 = v4;
  [v0 bounds];
  if (v11 > v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v12 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v15 = v6 * v13;
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = [objc_opt_self() configurationWithPointSize:v16];
  v18 = [v8 configurationByApplyingConfiguration:v17];

  [v1 setPreferredSymbolConfiguration:v18];
  [v1 setContentMode:4];
  [v0 bounds];
  [v1 sizeThatFits:{v19, v20}];
  CGRect.centeringAlong(axes:in:)();
  [v1 setFrame:?];
}

id protocol witness for MusicUIContentView.typedConfiguration.getter in conformance Artwork.Placeholder.View@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v11 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v11;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(v3 + 32);
  v7 = v5;
  v8 = v6;
  v9 = v4;

  return v11;
}

void protocol witness for MusicUIContentView.typedConfiguration.setter in conformance Artwork.Placeholder.View(__int128 *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = v1;
  v4 = a1[2];
  specialized Artwork.Placeholder.View.typedConfiguration.setter(&v2);
  v5 = v2;
  outlined destroy of TaskPriority?(&v5, &_sSo7UIColorCSgMd);
  v6 = *(&v2 + 1);
  outlined destroy of TaskPriority?(&v6, &_sSo7UIColorCSgMd);
  v7 = v3;
  outlined destroy of TaskPriority?(&v7, &_sSo7UIImageCSgMd_0);
}

void (*protocol witness for MusicUIContentView.typedConfiguration.modify in conformance Artwork.Placeholder.View(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Artwork.Placeholder.View.typedConfiguration.modify(v2);
  return protocol witness for MusicUIContentView.typedConfiguration.modify in conformance Artwork.View;
}

id protocol witness for UIContentView.configuration.getter in conformance Artwork.Placeholder.View@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for Artwork.Placeholder;
  a1[4] = lazy protocol witness table accessor for type Artwork.Placeholder and conformance Artwork.Placeholder();
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v5 = *v4;
  v12 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  *(v3 + 16) = *v4;
  *(v3 + 24) = v12;
  *(v3 + 32) = v6;
  *(v3 + 40) = v7;
  *(v3 + 48) = *(v4 + 32);
  v8 = v6;
  v9 = v7;
  v10 = v5;

  return v12;
}

uint64_t protocol witness for UIContentView.configuration.setter in conformance Artwork.Placeholder.View(uint64_t a1)
{
  outlined init with copy of ActionPerforming(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd);
  swift_dynamicCast();
  v7 = v3;
  v8 = v4;
  v9 = v5;
  specialized Artwork.Placeholder.View.typedConfiguration.setter(&v7);
  v10 = v7;
  outlined destroy of TaskPriority?(&v10, &_sSo7UIColorCSgMd);
  v11 = *(&v7 + 1);
  outlined destroy of TaskPriority?(&v11, &_sSo7UIColorCSgMd);
  v12 = v8;
  outlined destroy of TaskPriority?(&v12, &_sSo7UIImageCSgMd_0);

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void (*protocol witness for UIContentView.configuration.modify in conformance Artwork.Placeholder.View(void *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x158uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[42] = v1;
  v3[21] = &type metadata for Artwork.Placeholder;
  v3[22] = lazy protocol witness table accessor for type Artwork.Placeholder and conformance Artwork.Placeholder();
  v5 = swift_allocObject();
  v4[18] = v5;
  v6 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  *(v5 + 16) = *v6;
  *(v5 + 24) = v8;
  *(v5 + 32) = v9;
  *(v5 + 40) = v10;
  *(v5 + 48) = *(v6 + 32);
  v11 = v9;
  v12 = v10;
  v13 = v7;
  v14 = v8;
  return protocol witness for UIContentView.configuration.modify in conformance Artwork.Placeholder.View;
}

void protocol witness for UIContentView.configuration.modify in conformance Artwork.Placeholder.View(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of ActionPerforming(v2 + 144, v2 + 184);
    outlined init with copy of ActionPerforming(v2 + 184, v2 + 224);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd);
    swift_dynamicCast();
    v3 = *(v2 + 7);
    *v2 = *(v2 + 6);
    *(v2 + 1) = v3;
    *(v2 + 2) = *(v2 + 8);
    specialized Artwork.Placeholder.View.typedConfiguration.setter(v2);
    *(v2 + 41) = *v2;
    outlined destroy of TaskPriority?(v2 + 328, &_sSo7UIColorCSgMd);
    *(v2 + 40) = *(v2 + 1);
    outlined destroy of TaskPriority?(v2 + 320, &_sSo7UIColorCSgMd);
    *(v2 + 39) = *(v2 + 2);
    outlined destroy of TaskPriority?(v2 + 312, &_sSo7UIImageCSgMd_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 184);
  }

  else
  {
    outlined init with copy of ActionPerforming(v2 + 144, v2 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd);
    swift_dynamicCast();
    v4 = *(v2 + 7);
    *(v2 + 3) = *(v2 + 6);
    *(v2 + 4) = v4;
    *(v2 + 5) = *(v2 + 8);
    specialized Artwork.Placeholder.View.typedConfiguration.setter(v2 + 48);
    *(v2 + 38) = *(v2 + 6);
    outlined destroy of TaskPriority?(v2 + 304, &_sSo7UIColorCSgMd);
    *(v2 + 37) = *(v2 + 7);
    outlined destroy of TaskPriority?(v2 + 296, &_sSo7UIColorCSgMd);
    *(v2 + 36) = *(v2 + 8);
    outlined destroy of TaskPriority?(v2 + 288, &_sSo7UIImageCSgMd_0);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2 + 144);

  free(v2);
}

char *protocol witness for UIContentConfiguration.makeContentView() in conformance Artwork.Placeholder()
{
  v1 = v0[1];
  v9[0] = *v0;
  v9[1] = v1;
  v9[2] = v0[2];
  v10 = v9[0];
  v2 = *(&v1 + 1);
  v11 = v1;
  v3 = objc_allocWithZone(type metadata accessor for Artwork.Placeholder.View());
  outlined init with copy of TaskPriority?(&v10, v8, &_sSo7UIColorCSgMd);
  outlined init with copy of TaskPriority?(&v10 + 8, v8, &_sSo7UIColorCSgMd);
  outlined init with copy of TaskPriority?(&v11, v8, &_sSo7UIImageCSgMd_0);
  v4 = v2;
  v5 = Artwork.Placeholder.View.init(configuration:)(v9);
  lazy protocol witness table accessor for type Artwork.Placeholder.View and conformance Artwork.Placeholder.View(&lazy protocol witness table cache variable for type Artwork.Placeholder.View and conformance Artwork.Placeholder.View, v6, type metadata accessor for Artwork.Placeholder.View);
  return v5;
}

id protocol witness for UIContentConfiguration.updated(for:) in conformance Artwork.Placeholder@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v9 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v9;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(v1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v2;

  return v9;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Artwork.Placeholder(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return specialized static Artwork.Placeholder.__derived_struct_equals(_:_:)(v7, v8);
}

double one-time initialization function for nowPlaying()
{
  v0 = objc_opt_self();
  v1 = [v0 blackColor];
  v2 = [v1 colorWithAlphaComponent:0.1];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.12];

  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  v7 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.nowPlaying = v2;
  unk_10063ED30 = v4;
  qword_10063ED38 = v6;
  unk_10063ED40 = v7;
  result = 0.46;
  xmmword_10063ED48 = xmmword_100507940;
  return result;
}

uint64_t *Artwork.Placeholder.nowPlaying.unsafeMutableAddressor()
{
  if (one-time initialization token for nowPlaying != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.nowPlaying;
}

id static Artwork.Placeholder.nowPlaying.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for nowPlaying != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.nowPlaying;
  v2 = unk_10063ED30;
  v4 = qword_10063ED38;
  v3 = unk_10063ED40;
  v10 = unk_10063ED40;
  *a1 = static Artwork.Placeholder.nowPlaying;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10063ED48;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

double one-time initialization function for miniPlayer()
{
  v0 = objc_opt_self();
  v1 = [v0 secondarySystemFillColor];
  v2 = [v0 secondaryLabelColor];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() _systemImageNamed:v3];

  v5 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.miniPlayer = v1;
  unk_10063ED60 = v2;
  qword_10063ED68 = v4;
  unk_10063ED70 = v5;
  result = 0.46;
  xmmword_10063ED78 = xmmword_100507940;
  return result;
}

uint64_t *Artwork.Placeholder.miniPlayer.unsafeMutableAddressor()
{
  if (one-time initialization token for miniPlayer != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.miniPlayer;
}

id static Artwork.Placeholder.miniPlayer.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for miniPlayer != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.miniPlayer;
  v2 = unk_10063ED60;
  v4 = qword_10063ED68;
  v3 = unk_10063ED70;
  v10 = unk_10063ED70;
  *a1 = static Artwork.Placeholder.miniPlayer;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10063ED78;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

void static Artwork.Placeholder.device(representing:basedOn:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = v6;
  v11 = [v8 _symbolImageForRoute:a1];
  v12 = v11;
  if (!v6)
  {
    v19 = one-time initialization token for defaultTint;
    v20 = v11;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = static Artwork.Placeholder.defaultTint;
    goto LABEL_12;
  }

  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 secondaryLabelColor];
  type metadata accessor for UIAction(0, &_sSo7UIColorCML_0);
  v17 = static NSObject.== infix(_:_:)();

  if (v17)
  {

    v18 = [v13 labelColor];
LABEL_11:
    v21 = v18;
LABEL_12:
    v25 = v21;
    goto LABEL_13;
  }

  v22 = v14;
  v23 = [v13 tertiaryLabelColor];
  v24 = static NSObject.== infix(_:_:)();

  if (v24)
  {

    v18 = [v13 secondaryLabelColor];
    goto LABEL_11;
  }

  v25 = v22;
  v26 = [v13 quaternaryLabelColor];
  v27 = static NSObject.== infix(_:_:)();

  if (v27)
  {

    v18 = [v13 tertiaryLabelColor];
    goto LABEL_11;
  }

LABEL_13:
  v28 = *(a2 + 40);
  v29 = *(a2 + 24);
  v30 = [objc_opt_self() configurationWithHierarchicalColor:v25];
  v31 = [v29 configurationByApplyingConfiguration:v30];

  *a3 = v7;
  a3[1] = v6;
  a3[2] = v12;
  a3[3] = v31;
  a3[4] = 0x3FE0000000000000;
  a3[5] = v28;
}

uint64_t *Artwork.Placeholder.music.unsafeMutableAddressor()
{
  if (one-time initialization token for music != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.music;
}

id static Artwork.Placeholder.music.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for music != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.music;
  v2 = unk_10063ED90;
  v4 = qword_10063ED98;
  v3 = unk_10063EDA0;
  v10 = unk_10063EDA0;
  *a1 = static Artwork.Placeholder.music;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10063EDA8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id one-time initialization function for musicVideo()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:5];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (one-time initialization token for defaultTint != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = static Artwork.Placeholder.defaultTint;
  static Artwork.Placeholder.musicVideo = v3;
  unk_10063EDC0 = static Artwork.Placeholder.defaultTint;
  qword_10063EDC8 = v1;
  unk_10063EDD0 = v2;
  xmmword_10063EDD8 = xmmword_100507930;

  return v4;
}

uint64_t *Artwork.Placeholder.musicVideo.unsafeMutableAddressor()
{
  if (one-time initialization token for musicVideo != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.musicVideo;
}

id static Artwork.Placeholder.musicVideo.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for musicVideo != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.musicVideo;
  v2 = unk_10063EDC0;
  v4 = qword_10063EDC8;
  v3 = unk_10063EDD0;
  v10 = unk_10063EDD0;
  *a1 = static Artwork.Placeholder.musicVideo;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10063EDD8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id one-time initialization function for tv()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:5];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (one-time initialization token for defaultTint != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = static Artwork.Placeholder.defaultTint;
  static Artwork.Placeholder.tv = v3;
  unk_10063EDF0 = static Artwork.Placeholder.defaultTint;
  qword_10063EDF8 = v1;
  unk_10063EE00 = v2;
  xmmword_10063EE08 = xmmword_100507930;

  return v4;
}

uint64_t *Artwork.Placeholder.tv.unsafeMutableAddressor()
{
  if (one-time initialization token for tv != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.tv;
}

id static Artwork.Placeholder.tv.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for tv != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.tv;
  v2 = unk_10063EDF0;
  v4 = qword_10063EDF8;
  v3 = unk_10063EE00;
  v10 = unk_10063EE00;
  *a1 = static Artwork.Placeholder.tv;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10063EE08;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id one-time initialization function for microphone()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:4];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (one-time initialization token for defaultTint != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = static Artwork.Placeholder.defaultTint;
  static Artwork.Placeholder.microphone = v3;
  unk_10063EE20 = static Artwork.Placeholder.defaultTint;
  qword_10063EE28 = v1;
  unk_10063EE30 = v2;
  xmmword_10063EE38 = xmmword_100507940;

  return v4;
}

uint64_t *Artwork.Placeholder.microphone.unsafeMutableAddressor()
{
  if (one-time initialization token for microphone != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.microphone;
}

id static Artwork.Placeholder.microphone.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for microphone != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.microphone;
  v2 = unk_10063EE20;
  v4 = qword_10063EE28;
  v3 = unk_10063EE30;
  v10 = unk_10063EE30;
  *a1 = static Artwork.Placeholder.microphone;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10063EE38;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id one-time initialization function for person()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (one-time initialization token for defaultTint != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = static Artwork.Placeholder.defaultTint;
  static Artwork.Placeholder.person = v3;
  unk_10063EE50 = static Artwork.Placeholder.defaultTint;
  qword_10063EE58 = v1;
  unk_10063EE60 = v2;
  xmmword_10063EE68 = xmmword_100507930;

  return v4;
}

uint64_t *Artwork.Placeholder.person.unsafeMutableAddressor()
{
  if (one-time initialization token for person != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.person;
}

id static Artwork.Placeholder.person.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for person != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.person;
  v2 = unk_10063EE50;
  v4 = qword_10063EE58;
  v3 = unk_10063EE60;
  v10 = unk_10063EE60;
  *a1 = static Artwork.Placeholder.person;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10063EE68;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

double one-time initialization function for newPlaylist()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.newPlaylist = [objc_opt_self() secondarySystemFillColor];
  unk_10063EE80 = 0;
  qword_10063EE88 = v1;
  unk_10063EE90 = v2;
  result = 0.5;
  xmmword_10063EE98 = xmmword_100507930;
  return result;
}

uint64_t *Artwork.Placeholder.newPlaylist.unsafeMutableAddressor()
{
  if (one-time initialization token for newPlaylist != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.newPlaylist;
}

id static Artwork.Placeholder.newPlaylist.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for newPlaylist != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.newPlaylist;
  v2 = unk_10063EE80;
  v4 = qword_10063EE88;
  v3 = unk_10063EE90;
  v10 = unk_10063EE90;
  *a1 = static Artwork.Placeholder.newPlaylist;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10063EE98;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

double static Artwork.Placeholder.playlist(ofType:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
  __chkstk_darwin(v4 - 8);
  v6 = v15 - v5;
  v7 = type metadata accessor for Playlist.Variant();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MPModelPlaylistType.variant.getter(a1, v6);
  v11 = *(v8 + 48);
  if (v11(v6, 1, v7) == 1)
  {
    (*(v8 + 104))(v10, enum case for Playlist.Variant.regular(_:), v7);
    if (v11(v6, 1, v7) != 1)
    {
      outlined destroy of TaskPriority?(v6, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v12 = specialized static Artwork.Placeholder.playlist(withVariant:)(v10, v15);
  (*(v8 + 8))(v10, v7, v12);
  v13 = v15[1];
  *a2 = v15[0];
  a2[1] = v13;
  result = *&v16;
  a2[2] = v16;
  return result;
}

double static Artwork.Placeholder.playlist(withVariant:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  specialized static Artwork.Placeholder.playlist(withVariant:)(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

id one-time initialization function for radio()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:4];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (one-time initialization token for defaultTint != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = static Artwork.Placeholder.defaultTint;
  static Artwork.Placeholder.radio = v3;
  unk_10063EEB0 = static Artwork.Placeholder.defaultTint;
  qword_10063EEB8 = v1;
  unk_10063EEC0 = v2;
  xmmword_10063EEC8 = xmmword_100507950;

  return v4;
}

uint64_t *Artwork.Placeholder.radio.unsafeMutableAddressor()
{
  if (one-time initialization token for radio != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.radio;
}

id static Artwork.Placeholder.radio.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for radio != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.radio;
  v2 = unk_10063EEB0;
  v4 = qword_10063EEB8;
  v3 = unk_10063EEC0;
  v10 = unk_10063EEC0;
  *a1 = static Artwork.Placeholder.radio;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10063EEC8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

__n128 Artwork.Placeholder.withSolidBackgroundColor()@<Q0>(__n128 *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v21 = *(v1 + 32);
  if (*v1)
  {
    v7 = objc_opt_self();
    v8 = v5;
    v9 = v6;
    v10 = v3;
    v11 = v4;
    v12 = [v7 secondarySystemFillColor];
    type metadata accessor for UIAction(0, &_sSo7UIColorCML_0);
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      if (one-time initialization token for solidSecondarySystemFill != -1)
      {
        swift_once();
      }

      v14 = static UIColor.solidSecondarySystemFill;
LABEL_11:
      v3 = v14;

      goto LABEL_12;
    }

    v18 = [v7 tertiarySystemFillColor];
    v19 = static NSObject.== infix(_:_:)();

    if (v19)
    {
      if (one-time initialization token for solidTertiarySystemFill != -1)
      {
        swift_once();
      }

      v14 = static UIColor.solidTertiarySystemFill;
      goto LABEL_11;
    }
  }

  else
  {
    v15 = v5;
    v16 = v6;
    v17 = v4;
  }

LABEL_12:
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v4;
  a1[1].n128_u64[0] = v5;
  a1[1].n128_u64[1] = v6;
  result = v21;
  a1[2] = v21;
  return result;
}

id Artwork.Placeholder.withBackground(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *(v2 + 8);
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = *(v2 + 32);
  v6 = v3;
  v7 = v4;
  v8 = v5;

  return a1;
}

id Artwork.Placeholder.withScaleFactor(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 40);
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 8);
  v11 = *v2;
  *a1 = *v2;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = a2;
  *(a1 + 40) = v3;
  v7 = v4;
  v8 = v5;
  v9 = v6;

  return v11;
}

id Artwork.Placeholder.withTint(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *v2;
  *a2 = *v2;
  *(a2 + 8) = a1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = *(v2 + 32);
  v6 = v3;
  v7 = v4;
  v8 = v5;

  return a1;
}

uint64_t one-time initialization function for solidSecondarySystemFill(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_allocWithZone(UIColor);
  v11[4] = a2;
  v11[5] = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v11[3] = a3;
  v8 = _Block_copy(v11);
  v9 = [v7 initWithDynamicProvider:v8];
  _Block_release(v8);

  *a4 = v9;
  return result;
}

id closure #1 in variable initialization expression of static UIColor.solidSecondarySystemFill(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 userInterfaceStyle];
  type metadata accessor for UIAction(0, &_sSo7UIColorCML_0);
  if (v9 == 2)
  {
    v10 = a2;
    v11 = a2;
    v12 = a3;
  }

  else
  {
    v10 = a4;
    v11 = a4;
    v12 = a5;
  }

  return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v10, v11, v12, 1.0);
}

double MPModelSong.preferredArtworkAspectRatio.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd_0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004F2400;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = objc_opt_self();
  v5 = [v4 propertySetWithProperties:isa];

  LODWORD(isa) = [v0 hasLoadedValuesForPropertySet:v5];
  v6 = 1.0;
  if (isa)
  {
    if ([v0 hasVideo])
    {
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1004F2400;
      *(v7 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v7 + 40) = v8;
      v9 = Array._bridgeToObjectiveC()().super.isa;

      v10 = [v4 propertySetWithProperties:v9];

      v11 = [v0 hasLoadedValuesForPropertySet:v10];
      if (!v11)
      {
        return 1.77777778;
      }

      v12 = [v0 artworkCatalog];
      if (!v12)
      {
        return 1.77777778;
      }

      v13 = v12;
      v14 = COERCE_DOUBLE(MPArtworkCatalog.expectedRatio.getter());
      v16 = v15;

      if (v16)
      {
        return 1.77777778;
      }

      v6 = 0.5625;
      if (v14 >= 1.0)
      {
        return 1.77777778;
      }
    }
  }

  return v6;
}

id MPModelPlaylist.artworkPlaceholderImage.getter()
{
  if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistType])
  {
    [v0 type];

    return specialized static MPModelPlaylist.artworkPlaceholderImage(for:)();
  }

  else
  {
    v2 = String._bridgeToObjectiveC()();
    v3 = [objc_opt_self() _systemImageNamed:v2];

    return v3;
  }
}

void MPModelObject.artworkPlaceholder.getter(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
  __chkstk_darwin(v2 - 8);
  v4 = v27 - v3;
  v5 = type metadata accessor for Playlist.Variant();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      if ([v12 hasLoadedValueForKey:MPModelPropertyPlaylistType])
      {
        MPModelPlaylistType.variant.getter([v13 type], v4);
        v14 = *(v6 + 48);
        if (v14(v4, 1, v5) == 1)
        {
          (*(v6 + 104))(v8, enum case for Playlist.Variant.regular(_:), v5);
          if (v14(v4, 1, v5) != 1)
          {
            outlined destroy of TaskPriority?(v4, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
          }
        }

        else
        {
          (*(v6 + 32))(v8, v4, v5);
        }

        v16 = specialized static Artwork.Placeholder.playlist(withVariant:)(v8, v27);
        (*(v6 + 8))(v8, v5, v16);
        goto LABEL_17;
      }
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        if (one-time initialization token for microphone != -1)
        {
          swift_once();
        }

        v15 = &static Artwork.Placeholder.microphone;
        goto LABEL_32;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (one-time initialization token for person != -1)
        {
          swift_once();
        }

        v15 = &static Artwork.Placeholder.person;
        goto LABEL_32;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        if (one-time initialization token for tv != -1)
        {
          swift_once();
        }

        v15 = &static Artwork.Placeholder.tv;
        goto LABEL_32;
      }
    }

LABEL_29:
    if (one-time initialization token for music != -1)
    {
      swift_once();
    }

    v15 = &static Artwork.Placeholder.music;
LABEL_32:
    v21 = *v15;
    v22 = v15[1];
    v20 = v15[2];
    v23 = v15[3];
    v17 = v15[4];
    v18 = v15[5];
    v24 = v20;
    v19 = v23;
    v25 = v21;
    v26 = v22;
    goto LABEL_33;
  }

  v10 = [v9 anyObject];
  if (!v10)
  {
    goto LABEL_29;
  }

  v11 = v10;
  MPModelObject.artworkPlaceholder.getter(v27);

LABEL_17:
  v17 = v27[4];
  v18 = v27[5];
  v20 = v27[2];
  v19 = v27[3];
  v21 = v27[0];
  v22 = v27[1];
LABEL_33:
  *a1 = v21;
  a1[1] = v22;
  a1[2] = v20;
  a1[3] = v19;
  a1[4] = v17;
  a1[5] = v18;
}

id MusicItem.artworkPlaceholder.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v132 = a2;
  v95 = type metadata accessor for Station();
  v92 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for MusicMovie();
  v93 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for TVSeason();
  v96 = *(v101 - 8);
  __chkstk_darwin(v101);
  v100 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for TVEpisode();
  v99 = *(v104 - 8);
  __chkstk_darwin(v104);
  v103 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for TVShow();
  v102 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for Playlist.Folder();
  v106 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
  __chkstk_darwin(v9 - 8);
  v111 = &v91 - v10;
  v119 = type metadata accessor for Playlist.Variant();
  v118 = *(v119 - 8);
  v11 = __chkstk_darwin(v119);
  v105 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v110 = &v91 - v13;
  v117 = type metadata accessor for Playlist();
  v109 = *(v117 - 8);
  v14 = __chkstk_darwin(v117);
  v116 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v114 = &v91 - v16;
  v122 = type metadata accessor for MusicVideo();
  v115 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for SocialProfile();
  v120 = *(v125 - 8);
  __chkstk_darwin(v125);
  v124 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for Curator();
  v123 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Composer();
  v126 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for RecordLabel();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Artist();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v34;
  (*(v34 + 16))(v33, v129, a1);
  if (swift_dynamicCast())
  {
    (*(v28 + 8))(v31, v27);
    v35 = a1;
LABEL_5:
    (*(v131 + 8))(v33, v35);
    if (one-time initialization token for microphone != -1)
    {
      swift_once();
    }

    v36 = &static Artwork.Placeholder.microphone;
    goto LABEL_18;
  }

  v35 = a1;
  if (swift_dynamicCast())
  {
    (*(v24 + 8))(v26, v23);
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    (*(v126 + 8))(v22, v20);
  }

  else
  {
    v38 = v127;
    v37 = v128;
    if (swift_dynamicCast())
    {
      v39 = v123;
    }

    else
    {
      v38 = v124;
      v37 = v125;
      if (!swift_dynamicCast())
      {
        v51 = v121;
        v50 = v122;
        if (swift_dynamicCast())
        {
          v52 = v33;
          if (one-time initialization token for musicVideo != -1)
          {
            swift_once();
          }

          v40 = static Artwork.Placeholder.musicVideo;
          v41 = unk_10063EDC0;
          v43 = qword_10063EDC8;
          v53 = unk_10063EDD0;
          v129 = xmmword_10063EDD8;
          v54 = *(v115 + 8);
          v55 = static Artwork.Placeholder.musicVideo;
          v56 = v41;
          v57 = v43;
          v45 = v53;
          v54(v51, v50);
          result = (*(v131 + 8))(v52, v35);
          goto LABEL_19;
        }

        v58 = v114;
        v59 = v117;
        if (swift_dynamicCast())
        {
          v60 = v109;
          (*(v109 + 32))(v116, v58, v59);
          v61 = v111;
          Playlist.variant.getter();
          v62 = v118;
          v63 = *(v118 + 48);
          v64 = v119;
          if (v63(v61, 1, v119) == 1)
          {
            v65 = v110;
            (*(v62 + 104))(v110, enum case for Playlist.Variant.regular(_:), v64);
            if (v63(v61, 1, v64) != 1)
            {
              outlined destroy of TaskPriority?(v61, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
            }
          }

          else
          {
            v65 = v110;
            (*(v62 + 32))(v110, v61, v64);
          }

          v73 = specialized static Artwork.Placeholder.playlist(withVariant:)(v65, v133);
          (*(v62 + 8))(v65, v64, v73);
          (*(v60 + 8))(v116, v59);
        }

        else
        {
          v66 = v112;
          v67 = v113;
          v68 = swift_dynamicCast();
          v69 = v119;
          v70 = v118;
          if (!v68)
          {
            v74 = v107;
            v75 = v108;
            if (swift_dynamicCast())
            {
              v76 = v133;
            }

            else
            {
              v74 = v103;
              v75 = v104;
              if (swift_dynamicCast())
              {
                v76 = &v130;
              }

              else
              {
                v74 = v100;
                v75 = v101;
                if (swift_dynamicCast())
                {
                  v76 = &v128;
                }

                else
                {
                  v74 = v97;
                  v75 = v98;
                  if (!swift_dynamicCast())
                  {
                    v77 = v94;
                    v78 = v95;
                    if (swift_dynamicCast())
                    {
                      v79 = v33;
                      if (one-time initialization token for radio != -1)
                      {
                        swift_once();
                      }

                      v40 = static Artwork.Placeholder.radio;
                      v41 = unk_10063EEB0;
                      v43 = qword_10063EEB8;
                      v80 = unk_10063EEC0;
                      v129 = xmmword_10063EEC8;
                      v81 = *(v92 + 8);
                      v82 = static Artwork.Placeholder.radio;
                      v83 = v41;
                      v84 = v43;
                      v45 = v80;
                      v81(v77, v78);
                      result = (*(v131 + 8))(v79, v35);
                    }

                    else
                    {
                      v85 = v33;
                      if (one-time initialization token for music != -1)
                      {
                        swift_once();
                      }

                      v40 = static Artwork.Placeholder.music;
                      v41 = unk_10063ED90;
                      v43 = qword_10063ED98;
                      v86 = unk_10063EDA0;
                      v129 = xmmword_10063EDA8;
                      v87 = *(v131 + 8);
                      v88 = static Artwork.Placeholder.music;
                      v89 = v41;
                      v90 = v43;
                      v45 = v86;
                      result = v87(v85, v35);
                    }

                    goto LABEL_19;
                  }

                  v76 = &v125;
                }
              }
            }

            (*(*(v76 - 32) + 8))(v74, v75);
            (*(v131 + 8))(v33, v35);
            if (one-time initialization token for tv != -1)
            {
              swift_once();
            }

            v36 = &static Artwork.Placeholder.tv;
            goto LABEL_18;
          }

          v71 = v105;
          (*(v118 + 104))(v105, enum case for Playlist.Variant.folder(_:), v119);
          v72 = specialized static Artwork.Placeholder.playlist(withVariant:)(v71, v133);
          (*(v70 + 8))(v71, v69, v72);
          (*(v106 + 8))(v66, v67);
        }

        result = (*(v131 + 8))(v33, v35);
        v48 = v134;
        v43 = v133[2];
        v45 = v133[3];
        v40 = v133[0];
        v41 = v133[1];
        goto LABEL_20;
      }

      v39 = v120;
    }

    (*(v39 + 8))(v38, v37);
  }

  (*(v131 + 8))(v33, v35);
  if (one-time initialization token for person != -1)
  {
    swift_once();
  }

  v36 = &static Artwork.Placeholder.person;
LABEL_18:
  v40 = *v36;
  v41 = v36[1];
  v43 = v36[2];
  v42 = v36[3];
  v129 = *(v36 + 2);
  v44 = v43;
  v45 = v42;
  v46 = v40;
  result = v41;
LABEL_19:
  v48 = v129;
LABEL_20:
  v49 = v132;
  *v132 = v40;
  v49[1] = v41;
  v49[2] = v43;
  v49[3] = v45;
  *(v49 + 2) = v48;
  return result;
}

BOOL specialized static Artwork.Placeholder.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    type metadata accessor for UIAction(0, &_sSo7UIColorCML_0);
    v6 = v5;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    type metadata accessor for UIAction(0, &_sSo7UIColorCML_0);
    v11 = v10;
    v12 = v9;
    v13 = static NSObject.== infix(_:_:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIImage);
    v16 = v15;
    v17 = v14;
    v18 = static NSObject.== infix(_:_:)();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0);
  if ((static NSObject.== infix(_:_:)() & 1) != 0 && *(a1 + 32) == *(a2 + 32))
  {
    return *(a1 + 40) == *(a2 + 40);
  }

  return 0;
}

void specialized Artwork.Placeholder.View.typedConfiguration.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v20 = *v3;
  v21 = v4;
  v22 = v3[2];
  v5 = *(v3 + 1);
  v15 = *v3;
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v25 = v20;
  v8 = *a1;
  v17 = *(a1 + 8);
  v18 = v8;
  v9 = *(a1 + 24);
  v10 = *(v3 + 4);
  v11 = *(v3 + 5);
  v16 = *(a1 + 16);
  v12 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v12;
  v3[2] = *(a1 + 32);
  outlined init with copy of TaskPriority?(&v18, v19, &_sSo7UIColorCSgMd);
  outlined init with copy of TaskPriority?(&v17, v19, &_sSo7UIColorCSgMd);
  outlined init with copy of TaskPriority?(&v16, v19, &_sSo7UIImageCSgMd_0);
  v13 = v9;
  if (!specialized static Artwork.Placeholder.__derived_struct_equals(_:_:)(a1, &v20))
  {
    v19[0] = v15;
    v19[1] = v5;
    v19[2] = v6;
    v19[3] = v7;
    v19[4] = v10;
    v19[5] = v11;
    Artwork.Placeholder.View.configurationDidChange(_:)(v19);
  }

  outlined destroy of TaskPriority?(&v25, &_sSo7UIColorCSgMd);
  v24 = *(&v20 + 1);
  outlined destroy of TaskPriority?(&v24, &_sSo7UIColorCSgMd);
  v14 = *(&v21 + 1);
  v23 = v21;
  outlined destroy of TaskPriority?(&v23, &_sSo7UIImageCSgMd_0);
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double specialized static Artwork.Placeholder.playlist(withVariant:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Playlist.Variant();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v20 - v9;
  v11 = enum case for Playlist.Variant.folder(_:);
  (*(v5 + 104))(v20 - v9, enum case for Playlist.Variant.folder(_:), v4);
  lazy protocol witness table accessor for type Artwork.Placeholder.View and conformance Artwork.Placeholder.View(&lazy protocol witness table cache variable for type Playlist.Variant and conformance Playlist.Variant, 255, &type metadata accessor for Playlist.Variant);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v12 = *(v5 + 8);
  v12(v10, v4);
  v13 = 0;
  if (v20[1] != v20[0])
  {
    if (one-time initialization token for defaultTint != -1)
    {
      swift_once();
    }

    v13 = static Artwork.Placeholder.defaultTint;
    v14 = static Artwork.Placeholder.defaultTint;
  }

  (*(v5 + 16))(v8, a1, v4);
  v15 = (*(v5 + 88))(v8, v4);
  if (v15 != enum case for Playlist.Variant.smart(_:) && v15 != enum case for Playlist.Variant.genius(_:) && v15 != v11)
  {
    v12(v8, v4);
  }

  v16 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() _systemImageNamed:v16];

  v18 = [objc_opt_self() configurationWithWeight:3];
  *a2 = [objc_opt_self() secondarySystemFillColor];
  *(a2 + 8) = v13;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  result = 0.4;
  *(a2 + 32) = xmmword_100507950;
  return result;
}

id specialized static MPModelPlaylist.artworkPlaceholderImage(for:)()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  return v1;
}

unint64_t lazy protocol witness table accessor for type Artwork.Placeholder and conformance Artwork.Placeholder()
{
  result = lazy protocol witness table cache variable for type Artwork.Placeholder and conformance Artwork.Placeholder;
  if (!lazy protocol witness table cache variable for type Artwork.Placeholder and conformance Artwork.Placeholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Artwork.Placeholder and conformance Artwork.Placeholder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Artwork.Placeholder and conformance Artwork.Placeholder;
  if (!lazy protocol witness table cache variable for type Artwork.Placeholder and conformance Artwork.Placeholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Artwork.Placeholder and conformance Artwork.Placeholder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Artwork.Placeholder and conformance Artwork.Placeholder;
  if (!lazy protocol witness table cache variable for type Artwork.Placeholder and conformance Artwork.Placeholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Artwork.Placeholder and conformance Artwork.Placeholder);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Artwork.Placeholder.View(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type Artwork.Placeholder.View and conformance Artwork.Placeholder.View(&lazy protocol witness table cache variable for type Artwork.Placeholder.View and conformance Artwork.Placeholder.View, a2, type metadata accessor for Artwork.Placeholder.View);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Artwork.Placeholder(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Artwork.Placeholder and conformance Artwork.Placeholder();
  result = lazy protocol witness table accessor for type Artwork.Placeholder and conformance Artwork.Placeholder();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Artwork.Placeholder(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Artwork.Placeholder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Artwork.Placeholder.View and conformance Artwork.Placeholder.View(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 CAPackageDefinition.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v2;
  result = *(v1 + 56);
  *(a1 + 32) = result;
  return result;
}

__n128 NowPlaying.TrackTitleStackView.Label.Attributes.marquee.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  result = *(a1 + 32);
  *(v1 + 56) = result;
  return result;
}

uint64_t CAPackageDefinition.size.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 80) = result;
  *(v3 + 88) = a2;
  *(v3 + 96) = a3 & 1;
  return result;
}

__n128 CAPackageDefinition.init(name:bundle:transform:states:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a4 + 16);
  *(a6 + 24) = *a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 40) = v6;
  result = *(a4 + 32);
  *(a6 + 56) = result;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 72) = a5;
  *(a6 + 96) = 1;
  return result;
}

double CAPackageDefinition.scaled(byX:y:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v21 = *v3;
  v22 = *(v3 + 16);
  v20[0] = *(v3 + 72);
  *(v20 + 9) = *(v3 + 81);
  v13 = *(v3 + 40);
  v15 = *(v3 + 24);
  CGAffineTransformMakeScale(&t1, a2, a3);
  v7 = *&t1.a;
  v8 = *&t1.c;
  v9 = *&t1.tx;
  *&t1.a = v15;
  *&t1.c = v13;
  t1.tx = v5;
  t1.ty = v6;
  *&t2.a = v7;
  *&t2.c = v8;
  *&t2.tx = v9;
  CGAffineTransformConcat(&v18, &t1, &t2);
  tx = v18.tx;
  ty = v18.ty;
  v14 = *&v18.c;
  v16 = *&v18.a;
  outlined init with copy of CAPackageDefinition(v3, &t1);
  *a1 = v21;
  *(a1 + 16) = v22;
  *(a1 + 40) = v14;
  *(a1 + 24) = v16;
  *(a1 + 56) = tx;
  *(a1 + 64) = ty;
  *(a1 + 72) = v20[0];
  result = *(v20 + 9);
  *(a1 + 81) = *(v20 + 9);
  return result;
}

__n128 CAPackageDefinition.with(size:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, __n128 *a4@<X8>)
{
  v8 = v4[3];
  v16 = v4[2];
  v17 = v8;
  v18 = v4[4];
  v9 = v4[1];
  v14 = *v4;
  v15 = v9;
  v10 = a3 & 1;
  v13[0] = a3 & 1;
  outlined init with copy of CAPackageDefinition(v4, v13);
  v11 = v17;
  a4[2] = v16;
  a4[3] = v11;
  a4[4] = v18;
  result = v15;
  *a4 = v14;
  a4[1] = result;
  a4[5].n128_u64[0] = a1;
  a4[5].n128_u64[1] = a2;
  a4[6].n128_u8[0] = v10;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CAPackageDefinition(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return specialized static CAPackageDefinition.__derived_struct_equals(_:_:)(v11, v13) & 1;
}

uint64_t CAPackage.PackageDataCache.set(data:packageName:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 + 24);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a1;
  v17[6] = a2;
  aBlock[4] = partial apply for closure #1 in CAPackage.PackageDataCache.set(data:packageName:);
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_49;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  outlined copy of Data._Representation(a1, a2);
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&_s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_0);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&_sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_0, &_sSay8Dispatch0A13WorkItemFlagsVGMd_0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v23 + 8))(v12, v10);
  (*(v13 + 8))(v15, v22);
}

uint64_t closure #1 in CAPackage.PackageDataCache.set(data:packageName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();

  outlined copy of Data._Representation(a4, a5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a4, a5, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 16) = v12;
  return swift_endAccess();
}

uint64_t CAPackage.PackageDataCache.data(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v14 = xmmword_100507960;
  v6 = *(v3 + 24);
  v7 = swift_allocObject();
  v7[2] = &v14;
  v7[3] = v3;
  v7[4] = a1;
  v7[5] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in CAPackage.PackageDataCache.data(for:);
  *(v8 + 24) = v7;
  v13[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed () -> ();
  v13[3] = &block_descriptor_20_0;
  v9 = _Block_copy(v13);
  v10 = v6;

  dispatch_sync(v10, v9);

  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v12 = v14;
    outlined copy of Data?(v14, *(&v14 + 1));
    outlined consume of Data?(v12, *(&v12 + 1));

    return v12;
  }

  return result;
}

uint64_t closure #1 in CAPackage.PackageDataCache.data(for:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a2 + 16);
  if (*(v8 + 16))
  {

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if (v10)
    {
      v11 = (*(v8 + 56) + 16 * v9);
      v12 = *v11;
      v13 = v11[1];
      outlined copy of Data._Representation(*v11, v13);
    }

    else
    {
      v12 = 0;
      v13 = 0xF000000000000000;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  v14 = *a1;
  v15 = a1[1];
  *a1 = v12;
  a1[1] = v13;
  return outlined consume of Data?(v14, v15);
}

uint64_t CAPackage.PackageDataCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t CAPackage.PackageDataCache.init()()
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v12 - 8);
  __chkstk_darwin(v12);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v6 = type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_0);
  v10[1] = "Cache";
  v10[2] = v6;
  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&_sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWL_0, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd_0);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWL_0, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd_0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  v7 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = v11;
  *(v11 + 24) = v7;
  return v8;
}

id CAPackage.init(definition:)(uint64_t a1)
{
  v41 = type metadata accessor for URL();
  v3 = *(v41 - 8);
  v4 = __chkstk_darwin(v41);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v38 - v7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v42 = v1;
  v9 = static CAPackage.PackageDataCache.shared;
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = CAPackage.PackageDataCache.data(for:)(*a1, v10);
  if (v13 >> 60 == 15)
  {
    v39 = v3;
    v14 = *(a1 + 16);
    v40 = a1;
    v15 = v14;
    v16 = String._bridgeToObjectiveC()();
    v17 = String._bridgeToObjectiveC()();
    v18 = [v15 URLForResource:v16 withExtension:v17];

    if (!v18)
    {
      [objc_allocWithZone(NSError) initWithDomain:NSURLErrorDomain code:-1002 userInfo:0];
      swift_willThrow();
      outlined destroy of CAPackageDefinition(v40);

      return v9;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = v39;
    v20 = v41;
    (*(v39 + 32))(v8, v6, v41);
    v21 = v42;
    v22 = Data.init(contentsOf:options:)();
    if (v21)
    {
      (*(v19 + 8))(v8, v20);

      v24 = v40;
LABEL_12:
      outlined destroy of CAPackageDefinition(v24);
      return v9;
    }

    v31 = v22;
    v42 = 0;
    v32 = v23;
    CAPackage.PackageDataCache.set(data:packageName:)(v22, v23, v11, v10);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v34 = v32;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v43 = 0;
    v9 = [ObjCClassFromMetadata packageWithData:isa type:kCAPackageTypeArchive options:0 error:&v43];

    if (!v9)
    {
      v9 = v43;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data._Representation(v31, v34);
      outlined destroy of CAPackageDefinition(v40);
      (*(v39 + 8))(v8, v20);
      return v9;
    }

    v36 = *(v39 + 8);
    v37 = v43;
    v36(v8, v20);

    outlined consume of Data._Representation(v31, v34);
    a1 = v40;
  }

  else
  {
    v25 = v12;
    v26 = v13;
    v27 = swift_getObjCClassFromMetadata();
    v28 = Data._bridgeToObjectiveC()().super.isa;
    v43 = 0;
    v9 = [v27 packageWithData:v28 type:kCAPackageTypeArchive options:0 error:&v43];

    if (!v9)
    {
      v9 = v43;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data?(v25, v26);
      v24 = a1;
      goto LABEL_12;
    }

    v29 = v43;
    outlined consume of Data?(v25, v26);
  }

  outlined destroy of CAPackageDefinition(a1);
  return v9;
}

id static CAPackageDefinition.play.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (one-time initialization token for module != -1)
  {
    v7 = a1;
    v8 = a2;
    v9 = a4;
    v10 = a3;
    swift_once();
    a1 = v7;
    a2 = v8;
    a3 = v10;
    a4 = v9;
  }

  v5 = static NSBundle.module;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v5;
  *(a4 + 24) = 0x3FF0000000000000;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0x3FF0000000000000;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = a3;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 1;

  return v5;
}

id static CAPackageDefinition.skipBackward.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v6 = static NSBundle.module;
  CGAffineTransformMakeScale(&v7, -1.0, 1.0);
  v2 = *&v7.a;
  v3 = *&v7.c;
  v4 = *&v7.tx;
  *a1 = 0x4264726177726F46;
  *(a1 + 8) = 0xEF647261776B6361;
  *(a1 + 16) = v6;
  *(a1 + 24) = v2;
  *(a1 + 40) = v3;
  *(a1 + 56) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = &outlined read-only object #0 of static CAPackageDefinition.skipBackward.getter;
  *(a1 + 96) = 1;

  return v6;
}

uint64_t specialized static CAPackageDefinition.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0);
    if (static NSObject.== infix(_:_:)() & 1) != 0 && (static CGAffineTransform.== infix(_:_:)() & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*(a1 + 72), *(a2 + 72)))
    {
      if (*(a1 + 96))
      {
        if (*(a2 + 96))
        {
          return 1;
        }
      }

      else if ((*(a2 + 96) & 1) == 0 && *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88))
      {
        return 1;
      }
    }
  }

  return 0;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CAPackageDefinition(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t storeEnumTagSinglePayload for CAPackageDefinition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002BAB38()
{

  outlined consume of Data._Representation(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002BABA8()
{

  return swift_deallocObject();
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id CoreAnimationPackageView.init(definition:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController] = 0;
  v4 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  v5 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v5;
  v4[96] = *(a1 + 96);
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v7 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v7;
  outlined init with copy of CAPackageDefinition(a1, v11);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CoreAnimationPackageView();
  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  CoreAnimationPackageView.setupPackage()();
  CoreAnimationPackageView.reset()();
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UITraitCollection);
  static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  outlined destroy of CAPackageDefinition(a1);

  return v8;
}

double CoreAnimationPackageView.definition.didset(uint64_t *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  swift_beginAccess();
  v5 = *(v4 + 5);
  *&v18[48] = *(v4 + 4);
  v19 = v5;
  v20 = v4[96];
  v6 = *(v4 + 1);
  v17 = *v4;
  *v18 = v6;
  v7 = *(v4 + 3);
  *&v18[16] = *(v4 + 2);
  *&v18[32] = v7;
  v8 = *a1;
  v9 = a1[1];
  if (v17 == *a1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0);
    outlined init with copy of CAPackageDefinition(&v17, v16);
    if (static NSObject.== infix(_:_:)() & 1) != 0 && (v16[0] = *&v18[8], v16[1] = *&v18[24], v16[2] = *&v18[40], v10 = *(a1 + 5), v16[11] = *(a1 + 3), v16[12] = v10, v16[13] = *(a1 + 7), (static CGAffineTransform.== infix(_:_:)()))
    {
      v11 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*&v18[56], a1[9]);
      outlined destroy of CAPackageDefinition(&v17);
      if (v11)
      {
        if (v20)
        {
          if (a1[12])
          {
            return result;
          }
        }

        else if ((a1[12] & 1) == 0 && *&v19 == *(a1 + 10))
        {
          result = *(&v19 + 1);
          if (*(&v19 + 1) == *(a1 + 11))
          {
            return result;
          }
        }
      }
    }

    else
    {
      outlined destroy of CAPackageDefinition(&v17);
    }
  }

  v13 = *v4 == *&v8 && *(v4 + 1) == v9;
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    CoreAnimationPackageView.setupPackage()();
  }

  v14 = *(v4 + 40);
  v16[14] = *(v4 + 24);
  v16[15] = v14;
  v16[16] = *(v4 + 56);
  v15 = *(a1 + 5);
  v16[8] = *(a1 + 3);
  v16[9] = v15;
  v16[10] = *(a1 + 7);
  if ((static CGAffineTransform.== infix(_:_:)() & 1) == 0)
  {
    [v2 setNeedsLayout];
  }

  CoreAnimationPackageView.reset()();
  return result;
}

__n128 CoreAnimationPackageView.definition.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition);
  swift_beginAccess();
  v4 = v3[5];
  v15 = v3[4];
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  outlined init with copy of CAPackageDefinition(&v11, &v10);
  v7 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 96) = v17;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

uint64_t CoreAnimationPackageView.definition.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v5;
  v6 = *(v3 + 48);
  v13 = *(v3 + 32);
  v14 = v6;
  v18[0] = v12[0];
  v18[1] = v5;
  v18[2] = v13;
  v18[3] = v6;
  v18[4] = v15;
  v18[5] = v4;
  v19 = v17;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  outlined init with copy of CAPackageDefinition(v12, v11);
  outlined init with copy of CAPackageDefinition(a1, v11);
  outlined destroy of CAPackageDefinition(v18);
  CoreAnimationPackageView.definition.didset(v12);
  outlined destroy of CAPackageDefinition(v12);
  return outlined destroy of CAPackageDefinition(a1);
}

void (*CoreAnimationPackageView.definition.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x368uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 312);
  *(v3 + 856) = v1;
  v6 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  *(v3 + 864) = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  v7 = (v1 + v6);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[2];
  *(v4 + 16) = v7[1];
  *(v4 + 32) = v9;
  *v4 = v8;
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  *(v4 + 96) = *(v7 + 96);
  *(v4 + 64) = v11;
  *(v4 + 80) = v12;
  *(v4 + 48) = v10;
  v14 = v7[4];
  v13 = v7[5];
  v15 = v7[3];
  *(v4 + 408) = *(v7 + 96);
  v5[4] = v14;
  v5[5] = v13;
  v5[3] = v15;
  v16 = *v7;
  v17 = v7[2];
  v5[1] = v7[1];
  v5[2] = v17;
  *v5 = v16;
  outlined init with copy of CAPackageDefinition(v4, v4 + 416);
  return CoreAnimationPackageView.definition.modify;
}

void CoreAnimationPackageView.definition.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 312;
  v4 = *a1 + 520;
  v5 = (*(v2 + 856) + *(v2 + 864));
  v6 = *(*a1 + 328);
  if (a2)
  {
    *(v2 + 624) = *v3;
    *(v2 + 640) = v6;
    *(v2 + 720) = *(v3 + 96);
    v7 = *(v3 + 80);
    *(v2 + 688) = *(v3 + 64);
    *(v2 + 704) = v7;
    v8 = *(v3 + 48);
    v10 = *v3;
    v9 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v2 + 656) = v11;
    *(v2 + 672) = v8;
    v12 = *v5;
    v13 = v5[1];
    *(v2 + 136) = v5[2];
    *(v2 + 120) = v13;
    *(v2 + 104) = v12;
    v14 = v5[3];
    v15 = v5[4];
    v16 = v5[5];
    *(v2 + 200) = *(v5 + 96);
    *(v2 + 184) = v16;
    *(v2 + 168) = v15;
    *(v2 + 152) = v14;
    v17 = *v5;
    v18 = v5[2];
    *(v4 + 16) = v5[1];
    *(v4 + 32) = v18;
    *v4 = v17;
    v19 = v5[3];
    v20 = v5[5];
    v21 = *(v5 + 96);
    *(v4 + 64) = v5[4];
    *(v4 + 80) = v20;
    *(v4 + 48) = v19;
    *(v4 + 96) = v21;
    v5[1] = v9;
    v5[2] = v11;
    *v5 = v10;
    v22 = *(v3 + 48);
    v23 = *(v3 + 64);
    v24 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v23;
    v5[5] = v24;
    v5[3] = v22;
    outlined init with copy of CAPackageDefinition(v2 + 624, v2 + 728);
    outlined init with copy of CAPackageDefinition(v2 + 624, v2 + 728);
    outlined init with copy of CAPackageDefinition(v2 + 104, v2 + 728);
    outlined destroy of CAPackageDefinition(v4);
    CoreAnimationPackageView.definition.didset((v2 + 104));
    outlined destroy of CAPackageDefinition(v2 + 104);
    outlined destroy of CAPackageDefinition(v2 + 624);
    v25 = *(v3 + 80);
    *(v2 + 480) = *(v3 + 64);
    *(v2 + 496) = v25;
    *(v2 + 512) = *(v3 + 96);
    v26 = *(v3 + 16);
    *(v2 + 416) = *v3;
    *(v2 + 432) = v26;
    v27 = *(v3 + 48);
    *(v2 + 448) = *(v3 + 32);
    *(v2 + 464) = v27;
    v28 = v2 + 416;
  }

  else
  {
    *v4 = *v3;
    *(v4 + 16) = v6;
    *(v4 + 96) = *(v3 + 96);
    v29 = *(v3 + 80);
    *(v4 + 64) = *(v3 + 64);
    *(v4 + 80) = v29;
    v30 = *(v3 + 48);
    v32 = *v3;
    v31 = *(v3 + 16);
    v33 = *(v3 + 32);
    *(v4 + 32) = v33;
    *(v4 + 48) = v30;
    v34 = *v5;
    v35 = v5[2];
    *(v2 + 224) = v5[1];
    *(v2 + 240) = v35;
    *(v2 + 208) = v34;
    v36 = v5[3];
    v37 = v5[4];
    v38 = v5[5];
    *(v2 + 304) = *(v5 + 96);
    *(v2 + 272) = v37;
    *(v2 + 288) = v38;
    *(v2 + 256) = v36;
    v39 = *v5;
    v40 = v5[2];
    *(v2 + 432) = v5[1];
    *(v2 + 448) = v40;
    *(v2 + 416) = v39;
    v41 = v5[3];
    v42 = v5[5];
    v43 = *(v5 + 96);
    *(v2 + 480) = v5[4];
    *(v2 + 496) = v42;
    *(v2 + 464) = v41;
    *(v2 + 512) = v43;
    v5[1] = v31;
    v5[2] = v33;
    *v5 = v32;
    v44 = *(v3 + 48);
    v45 = *(v3 + 64);
    v46 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v45;
    v5[5] = v46;
    v5[3] = v44;
    outlined init with copy of CAPackageDefinition(v2 + 208, v2 + 624);
    outlined init with copy of CAPackageDefinition(v4, v2 + 624);
    outlined destroy of CAPackageDefinition(v2 + 416);
    CoreAnimationPackageView.definition.didset((v2 + 208));
    outlined destroy of CAPackageDefinition(v2 + 208);
    v28 = v4;
  }

  outlined destroy of CAPackageDefinition(v28);

  free(v2);
}

void CoreAnimationPackageView.setupPackage()()
{
  v1 = v0;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CAPackage);
  v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v51[4] = *(v2 + 4);
  v51[5] = v3;
  v52 = v2[96];
  v4 = *(v2 + 1);
  v51[0] = *v2;
  v51[1] = v4;
  v5 = *(v2 + 3);
  v51[2] = *(v2 + 2);
  v51[3] = v5;
  outlined init with copy of CAPackageDefinition(v51, v45);
  v6 = CAPackage.init(definition:)(v51);
  v26 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package] = v6;
  v27 = v6;

  v28 = [v27 rootLayer];
  if (v28)
  {
    v29 = *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer] = v28;
    v30 = v28;
    [v29 removeFromSuperlayer];

    v31 = [objc_allocWithZone(CAStateController) initWithLayer:v30];
    v32 = *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController] = v31;

    [v30 removeFromSuperlayer];
    [v30 setGeometryFlipped:{objc_msgSend(v27, "isGeometryFlipped")}];
    v33 = [v1 layer];
    [v33 addSublayer:v30];

    v34 = [v1 layer];
    [v34 bounds];

    CGRect.center.getter();
    [v30 setPosition:?];
    CoreAnimationPackageView.updateColor()();
  }

  else
  {
    lazy protocol witness table accessor for type Error #1 in CoreAnimationPackageView.setupPackage() and conformance Error #1 in CoreAnimationPackageView.setupPackage()();
    v35 = swift_allocError();
    swift_willThrow();

    if (one-time initialization token for musicCoreUI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.musicCoreUI);
    v8 = v1;
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136446466;
      v13 = *(v2 + 3);
      v14 = *(v2 + 5);
      v48 = *(v2 + 4);
      v49 = v14;
      v15 = *(v2 + 1);
      v45[0] = *v2;
      v45[1] = v15;
      v16 = *(v2 + 3);
      v18 = *v2;
      v17 = *(v2 + 1);
      v46 = *(v2 + 2);
      v47 = v16;
      v19 = *(v2 + 5);
      v41 = v48;
      v42 = v19;
      v37 = v18;
      v38 = v17;
      v44[0] = v12;
      v50 = v2[96];
      v43 = v2[96];
      v39 = v46;
      v40 = v13;
      outlined init with copy of CAPackageDefinition(v45, v36);
      v20 = String.init<A>(describing:)();
      v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v20, v21, v44);

      *(v11 + 4) = v22;
      *(v11 + 12) = 2082;
      *&v37 = v35;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_0);
      v23 = String.init<A>(describing:)();
      v25 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v23, v24, v44);

      *(v11 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to load CAPackage with definition=%{public}s. Error=%{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void CoreAnimationPackageView.stateName.didset(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    if (a2)
    {
      v8 = v7 == a1 && v6 == a2;
      if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return;
      }
    }

    v9 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    v10 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    if (!v10)
    {
      return;
    }

    v11 = v10;

    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v9 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    v13 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    if (!v13)
    {
      return;
    }

    v11 = v13;
    v12 = 0;
  }

  v14 = [v11 stateWithName:v12];

  if (v14)
  {
    v15 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController);
    if (v15)
    {
      v16 = *v9;
      v17 = objc_opt_self();
      v18 = v16;
      v19 = v15;
      v20 = v14;
      v21 = [v17 areAnimationsEnabled];
      v22 = 0.0;
      if (v21)
      {
        *&v22 = 1.0;
      }

      [v19 setState:v20 ofLayer:v18 transitionSpeed:v22];
    }
  }
}

uint64_t CoreAnimationPackageView.stateName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t CoreAnimationPackageView.stateName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  CoreAnimationPackageView.stateName.didset(v6, v7);
}

void (*CoreAnimationPackageView.stateName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return CoreAnimationPackageView.stateName.modify;
}

void CoreAnimationPackageView.stateName.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    CoreAnimationPackageView.stateName.didset(v9, v8);
  }

  else
  {
    CoreAnimationPackageView.stateName.didset(v9, v8);
  }

  free(v2);
}

void *CoreAnimationPackageView.foregroundColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CoreAnimationPackageView.foregroundColor.setter(id a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (v4)
    {
      type metadata accessor for UIAction(0, &_sSo7UIColorCML_0);
      a1 = a1;
      v5 = v4;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {

        v4 = v5;
LABEL_9:

        return;
      }
    }

    else
    {
      a1 = a1;
    }

LABEL_8:
    CoreAnimationPackageView.updateColor()();

    goto LABEL_9;
  }

  if (v4)
  {
    goto LABEL_8;
  }
}

void (*CoreAnimationPackageView.foregroundColor.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return CoreAnimationPackageView.foregroundColor.modify;
}

void CoreAnimationPackageView.foregroundColor.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v7 = v2[4];
    v6 = v2[5];
    v8 = *(v7 + v6);
    *(v7 + v6) = v3;
    if (v3)
    {
      if (v8)
      {
        type metadata accessor for UIAction(0, &_sSo7UIColorCML_0);
        v5 = v3;
        v9 = v8;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {

          goto LABEL_11;
        }
      }

      else
      {
        v5 = v3;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v5 = 0;
    }

    CoreAnimationPackageView.updateColor()();

    v5 = v8;
    goto LABEL_11;
  }

  v4 = v3;
  CoreAnimationPackageView.foregroundColor.setter(v3);
  v5 = v2[3];
LABEL_11:

LABEL_12:

  free(v2);
}

Swift::Void __swiftcall CoreAnimationPackageView.reset()()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  swift_beginAccess();
  v2 = *(v1 + 72);
  if (v2[2])
  {
    v4 = v2[4];
    v3 = v2[5];
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = v4;
  v5[1] = v3;
  CoreAnimationPackageView.stateName.didset(v6, v7);

  v8 = *(v1 + 72);
  v9 = *(v8 + 16);
  if (v9)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v8, v8 + 32, 1, (2 * v9) | 1);
    v8 = v11;
  }

  else
  {
  }

  v10 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates;
  swift_beginAccess();
  *(v0 + v10) = v8;
}

Swift::Void __swiftcall CoreAnimationPackageView.set(stateName:forSublayer:)(Swift::String stateName, Swift::String forSublayer)
{
  v3 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
  if (!v3)
  {
    return;
  }

  object = forSublayer._object;
  countAndFlagsBits = forSublayer._countAndFlagsBits;
  v6 = [v3 sublayers];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CALayer);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = v2;
  if (v8 >> 62)
  {
LABEL_32:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_33:

    return;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_33;
  }

LABEL_5:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_19:
        __break(1u);
        return;
      }
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_32;
      }

      v11 = *(v8 + 8 * v10 + 32);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_19;
      }
    }

    v31 = v11;
    v13 = [v11 name];
    if (!v13)
    {
      goto LABEL_6;
    }

    v14 = countAndFlagsBits;
    v15 = object;
    v16 = v13;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    object = v15;
    if (v17 == v14 && v19 == v15)
    {
      break;
    }

    countAndFlagsBits = v14;
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_22;
    }

LABEL_6:

    ++v10;
    if (v12 == v9)
    {
      goto LABEL_33;
    }
  }

LABEL_22:

  v22 = String._bridgeToObjectiveC()();
  v23 = [v31 stateWithName:v22];

  if (v23)
  {
    v24 = *(v30 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController);
    if (v24)
    {
      v25 = objc_opt_self();
      v26 = v24;
      v27 = v23;
      v31 = v31;
      v28 = [v25 areAnimationsEnabled];
      v29 = 0.0;
      if (v28)
      {
        *&v29 = 1.0;
      }

      [v26 setState:v27 ofLayer:v31 transitionSpeed:v29];
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.advanceState()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates;
  swift_beginAccess();
  if (!*(*(v0 + v1) + 16))
  {
    v2 = v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
    swift_beginAccess();
    *(v0 + v1) = *(v2 + 72);
  }

  swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3[2])
  {
    v5 = v3[4];
    v4 = v3[5];

    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    swift_endAccess();
    v6 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[1];
    *v6 = v5;
    v6[1] = v4;
    CoreAnimationPackageView.stateName.didset(v7, v8);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.startCyclingThroughStates(with:)(Swift::Double with)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer;
  v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer);
  if (!v4 || ([v4 timeInterval], v5 != with))
  {
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12[4] = partial apply for closure #1 in CoreAnimationPackageView.startCyclingThroughStates(with:);
    v12[5] = v7;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v12[3] = &block_descriptor_50;
    v8 = _Block_copy(v12);

    v9 = [v6 scheduledTimerWithTimeInterval:1 repeats:v8 block:with];
    _Block_release(v8);
    v10 = *(v1 + v3);
    *(v1 + v3) = v9;
    v11 = v9;
    [v10 invalidate];
  }
}

void closure #1 in CoreAnimationPackageView.startCyclingThroughStates(with:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CoreAnimationPackageView.advanceState()();
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.stopCyclingThroughStates()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer;
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer))
  {
    CoreAnimationPackageView.reset()();
    v2 = *(v0 + v1);
    v3 = v2;
    *(v0 + v1) = 0;
    [v2 invalidate];
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.layoutSubviews()()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for CoreAnimationPackageView();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer];
  if (v1)
  {
    v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
    swift_beginAccess();
    if (v2[96])
    {
      v3 = v1;
      v4 = [v0 layer];
      [v4 bounds];
      v6 = v5;
      v8 = v7;
    }

    else
    {
      v6 = *(v2 + 10);
      v8 = *(v2 + 11);
      v9 = v1;
    }

    [v1 bounds];
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    v14 = CGRectGetWidth(v22);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    if (v14 / CGRectGetHeight(v23) >= v6 / v8)
    {
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v15 = v8 / CGRectGetHeight(v25);
    }

    else
    {
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v15 = v6 / CGRectGetWidth(v24);
    }

    CGAffineTransformMakeScale(&v18, v15, v15);
    v16 = *(v2 + 40);
    *&t2.a = *(v2 + 24);
    *&t2.c = v16;
    *&t2.tx = *(v2 + 56);
    CGAffineTransformConcat(&v19, &v18, &t2);
    t2 = v19;
    CATransform3DMakeAffineTransform(&v18, &t2);
    [v1 setTransform:&v18];
    v17 = [v0 layer];
    [v17 bounds];

    CGRect.center.getter();
    [v1 setPosition:?];
  }
}

void CoreAnimationPackageView.updateColor()()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  if (v1)
  {
    v2 = v0;
    v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4)
    {
      v5 = v1;
      v26 = v4;
      v6 = [v5 publishedObjectNames];
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 32;
        v11 = &type metadata for String;
        v24 = v5;
        v25 = v2;
        while (v9 < *(v7 + 16))
        {
          outlined init with copy of Any(v10, v31);
          outlined init with copy of Any(v31, v30);
          if (swift_dynamicCast())
          {
            v12 = String._bridgeToObjectiveC()();

            v13 = [v5 publishedObjectWithName:v12];

            if (v13)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v28 = 0u;
              v29 = 0u;
            }

            v30[0] = v28;
            v30[1] = v29;
            if (*(&v29 + 1))
            {
              type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CALayer);
              if (swift_dynamicCast())
              {
                v14 = v11;
                objc_opt_self();
                v15 = swift_dynamicCastObjCClass();
                if (v15)
                {
                  v16 = v15;
                  v17 = [v2 traitCollection];
                  v18 = [v26 resolvedColorWithTraitCollection:v17];

                  v19 = [v18 CGColor];
                  [v16 setFillColor:v19];

                  v2 = v25;
                }

                else
                {
                  v20 = v27;
                  v21 = [v2 traitCollection];
                  v22 = [v26 resolvedColorWithTraitCollection:v21];

                  v23 = [v22 CGColor];
                  [v20 setBackgroundColor:v23];

                  v2 = v25;
                }

                v11 = v14;
                v5 = v24;
              }
            }

            else
            {
              _sypSgWOh_0(v30);
            }
          }

          ++v9;
          __swift_destroy_boxed_opaque_existential_0Tm(v31);
          v10 += 32;
          if (v8 == v9)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:
      }
    }
  }
}

id CoreAnimationPackageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreAnimationPackageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void specialized closure #1 in CoreAnimationPackageView.init(definition:)(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  if (v1)
  {
    v2 = a1;
    v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4)
    {
      v5 = v1;
      v26 = v4;
      v6 = [v5 publishedObjectNames];
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 32;
        v11 = &type metadata for String;
        v24 = v5;
        v25 = v2;
        while (v9 < *(v7 + 16))
        {
          outlined init with copy of Any(v10, v31);
          outlined init with copy of Any(v31, v30);
          if (swift_dynamicCast())
          {
            v12 = String._bridgeToObjectiveC()();

            v13 = [v5 publishedObjectWithName:v12];

            if (v13)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v28 = 0u;
              v29 = 0u;
            }

            v30[0] = v28;
            v30[1] = v29;
            if (*(&v29 + 1))
            {
              type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CALayer);
              if (swift_dynamicCast())
              {
                v14 = v11;
                objc_opt_self();
                v15 = swift_dynamicCastObjCClass();
                if (v15)
                {
                  v16 = v15;
                  v17 = [v2 traitCollection];
                  v18 = [v26 resolvedColorWithTraitCollection:v17];

                  v19 = [v18 CGColor];
                  [v16 setFillColor:v19];

                  v2 = v25;
                }

                else
                {
                  v20 = v27;
                  v21 = [v2 traitCollection];
                  v22 = [v26 resolvedColorWithTraitCollection:v21];

                  v23 = [v22 CGColor];
                  [v20 setBackgroundColor:v23];

                  v2 = v25;
                }

                v11 = v14;
                v5 = v24;
              }
            }

            else
            {
              _sypSgWOh_0(v30);
            }
          }

          ++v9;
          __swift_destroy_boxed_opaque_existential_0Tm(v31);
          v10 += 32;
          if (v8 == v9)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:
      }
    }
  }
}

void specialized CoreAnimationPackageView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 = *v2;
  v5 = (*v2)[2];
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0;
  if (!isUniquelyReferenced_nonNull_native || v8 > (New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0[3] >> 1))
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0(isUniquelyReferenced_nonNull_native, v10, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0);
    *v2 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0;
  return result;
}

uint64_t sub_1002BD588()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _sypSgWOh_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd_1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Error #1 in CoreAnimationPackageView.setupPackage() and conformance Error #1 in CoreAnimationPackageView.setupPackage()()
{
  result = lazy protocol witness table cache variable for type Error #1 in CoreAnimationPackageView.setupPackage() and conformance Error #1 in CoreAnimationPackageView.setupPackage();
  if (!lazy protocol witness table cache variable for type Error #1 in CoreAnimationPackageView.setupPackage() and conformance Error #1 in CoreAnimationPackageView.setupPackage())
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Error #1 in CoreAnimationPackageView.setupPackage() and conformance Error #1 in CoreAnimationPackageView.setupPackage());
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Error #1 in CoreAnimationPackageView.setupPackage() and conformance Error #1 in CoreAnimationPackageView.setupPackage();
  if (!lazy protocol witness table cache variable for type Error #1 in CoreAnimationPackageView.setupPackage() and conformance Error #1 in CoreAnimationPackageView.setupPackage())
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Error #1 in CoreAnimationPackageView.setupPackage() and conformance Error #1 in CoreAnimationPackageView.setupPackage());
  }

  return result;
}

id one-time initialization function for musicCoreUIBundle()
{
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.module;
  static NSBundle.musicCoreUIBundle = static NSBundle.module;

  return v1;
}

uint64_t *NSBundle.musicCoreUIBundle.unsafeMutableAddressor()
{
  if (one-time initialization token for musicCoreUIBundle != -1)
  {
    swift_once();
  }

  return &static NSBundle.musicCoreUIBundle;
}

id static NSBundle.musicCoreUIBundle.getter()
{
  if (one-time initialization token for musicCoreUIBundle != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.musicCoreUIBundle;

  return v1;
}

double MusicLibrary.ActionableState.updateSymbolConfiguration(from:)(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v5 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + v9[13]) = vdupq_n_s64(0x4040000000000000uLL);
  static UIView.Corner.rounded.getter();
  v10 = type metadata accessor for UIView.Corner();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  outlined assign with take of UIView.Corner?(v8, a1 + v9[9]);
  v11 = a1 + v9[10];
  if (*v11)
  {
    v12 = *&UIEdgeInsetsZero.bottom;
    *(v11 + 8) = *&UIEdgeInsetsZero.top;
    *(v11 + 24) = v12;
  }

  *(a1 + 112) = 0;
  objc_storeStrong((a1 + 24), UIFontTextStyleBody);
  *(a1 + 48) = xmmword_100507970;
  if (!(v5 >> 14))
  {

    *a1 = xmmword_1005079D0;
    *(a1 + 48) = 7;
    goto LABEL_20;
  }

  if (v5 >> 14 != 1)
  {
    if (a2 | v5 ^ 0x8000)
    {
      if (v5 == 0x8000 && a2 == 1)
      {

        v18 = xmmword_100507990;
      }

      else
      {

        v18 = xmmword_100507980;
      }

      goto LABEL_19;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
LABEL_20:
    outlined consume of SymbolButton.CustomView?(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), *(v11 + 48));
    *(v11 + 48) = 0;
    result = 0.0;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *v11 = 0u;
    return result;
  }

  if ((v5 & 0x100) != 0)
  {

    v18 = xmmword_1005079A0;
LABEL_19:
    *a1 = v18;
    goto LABEL_20;
  }

  v13 = *v11;
  if (*v11 && (type metadata accessor for CircularProgressView(), (v14 = swift_dynamicCastClass()) != 0))
  {
    v15 = v14;
    v16 = v13;
  }

  else
  {
    v20 = objc_allocWithZone(type metadata accessor for CircularProgressView());
    v15 = CircularProgressView.init(size:)(26.0, 26.0);
  }

  CircularProgressView.setState(_:animated:)(a2, v5 & 1, 1);
  outlined consume of SymbolButton.Background?(*(a1 + 200), *(a1 + 208));
  *(a1 + 200) = xmmword_1004F2EC0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;

  *a1 = xmmword_1005079B0;
  *(a1 + 56) = 1;
  v21 = UIFontTextStyleFootnote;

  *(a1 + 24) = v21;
  outlined consume of SymbolButton.CustomView?(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), *(v11 + 48));
  *v11 = v15;
  v22 = *&UIEdgeInsetsZero.top;
  *(v11 + 24) = *&UIEdgeInsetsZero.bottom;
  *(v11 + 8) = v22;
  result = 1.0;
  *(v11 + 40) = xmmword_1005079C0;
  return result;
}

uint64_t outlined assign with take of UIView.Corner?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void outlined consume of SymbolButton.CustomView?(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a1)
  {
  }
}

uint64_t outlined consume of SymbolButton.Background?(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t one-time initialization function for musicCoreUI()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.musicCoreUI);
  __swift_project_value_buffer(v0, static Logger.musicCoreUI);
  _sSo9OS_os_logCMa_0();
  OS_os_log.init(musicCategory:)();
  return Logger.init(_:)();
}

unint64_t _sSo9OS_os_logCMa_0()
{
  result = _sSo9OS_os_logCML_0;
  if (!_sSo9OS_os_logCML_0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo9OS_os_logCML_0);
  }

  return result;
}

uint64_t ArtworkImageViewModelAttributeProviding.cropStyle.getter@<X0>(uint64_t a1@<X8>)
{
  static Artwork.CropStyle.boundedBox.getter();
  v2 = type metadata accessor for Artwork.CropStyle();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Artwork();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v11);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of TaskPriority?(v8, &_s8MusicKit7ArtworkVSgMd_0);
    v14 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    (*(v10 + 16))(a3, v13, v9);
    v16 = type metadata accessor for ArtworkImage.ViewModel(0);
    v17 = *(v16 + 20);
    a2();
    (*(v10 + 8))(v13, v9);
    v18 = type metadata accessor for Artwork.CropStyle();
    (*(*(v18 - 8) + 56))(a3 + v17, 0, 1, v18);
    return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
  }
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Artwork();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v11);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of TaskPriority?(v8, &_s8MusicKit7ArtworkVSgMd_0);
    v14 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    (*(v10 + 16))(a3, v13, v9);
    v16 = type metadata accessor for ArtworkImage.ViewModel(0);
    v17 = *(v16 + 20);
    a2();
    v18 = type metadata accessor for Artwork.CropStyle();
    (*(*(v18 - 8) + 56))(a3 + v17, 0, 1, v18);
    (*(v10 + 8))(v13, v9);
    return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
  }
}

uint64_t specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  return specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(&UploadedVideo.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, a1);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for Artwork();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Artist();
  protocol witness for ArtworkImageViewModelAttributeProviding.artwork.getter in conformance Artist();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of TaskPriority?(v4, &_s8MusicKit7ArtworkVSgMd_0);
    v9 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    (*(v6 + 16))(a1, v8, v5);
    v11 = type metadata accessor for ArtworkImage.ViewModel(0);
    v12 = *(v11 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v6 + 8))(v8, v5);
    v13 = type metadata accessor for Artwork.CropStyle();
    (*(*(v13 - 8) + 56))(a1 + v12, 0, 1, v13);
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }
}

uint64_t ArtworkImageViewModelAttributeProviding.artworkViewModel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Artwork();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of TaskPriority?(v8, &_s8MusicKit7ArtworkVSgMd_0);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v10 + 16))(a3, v12, v9);
    v15 = *(a2 + 24);
    v16 = type metadata accessor for ArtworkImage.ViewModel(0);
    v15(a1, a2);
    (*(v10 + 8))(v12, v9);
    return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
  }
}

uint64_t protocol witness for ArtworkImageViewModelAttributeProviding.artwork.getter in conformance Artist()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A17AttributePropertyCyAA6ArtistVAA7ArtworkVGMd);
  swift_allocObject();
  MusicAttributeProperty.init(_:)();
  Artist.subscript.getter();
}

uint64_t Playlist._artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Artwork();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  Playlist.artwork.getter();
  outlined init with copy of TaskPriority?(v11, v9, &_s8MusicKit7ArtworkVSgMd_0);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v11, &_s8MusicKit7ArtworkVSgMd_0);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    (*(v3 + 16))(a1, v5, v2);
    v14 = type metadata accessor for ArtworkImage.ViewModel(0);
    v15 = *(v14 + 20);
    static Artwork.CropStyle.squareCenterCrop.getter();
    (*(v3 + 8))(v5, v2);
    outlined destroy of TaskPriority?(v11, &_s8MusicKit7ArtworkVSgMd_0);
    v16 = type metadata accessor for Artwork.CropStyle();
    (*(*(v16 - 8) + 56))(a1 + v15, 0, 1, v16);
    return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
  }
}

uint64_t Playlist.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  __chkstk_darwin(v1 - 8);
  v61 = &v59 - v2;
  v3 = type metadata accessor for Artwork();
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = __chkstk_darwin(v3);
  v60 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v63 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v59 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v59 - v15;
  __chkstk_darwin(v14);
  v18 = &v59 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  v20 = __chkstk_darwin(v19 - 8);
  v62 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v59 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v59 - v28;
  Playlist.variant.getter();
  v30 = type metadata accessor for Playlist.Variant();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    goto LABEL_2;
  }

  outlined init with copy of TaskPriority?(v29, v27, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
  v33 = (*(v31 + 88))(v27, v30);
  if (v33 != enum case for Playlist.Variant.regular(_:) && v33 != enum case for Playlist.Variant.smart(_:))
  {
    if (v33 == enum case for Playlist.Variant.genius(_:))
    {
      goto LABEL_2;
    }

    if (v33 == enum case for Playlist.Variant.favoriteSongs(_:))
    {
      goto LABEL_7;
    }

    if (v33 == enum case for Playlist.Variant.folder(_:))
    {
      goto LABEL_15;
    }

    if (v33 != enum case for Playlist.Variant.subscribed(_:))
    {
      if (v33 != enum case for Playlist.Variant.admin(_:))
      {
        if (v33 == enum case for Playlist.Variant.personalMix(_:))
        {
          Playlist.editorialArtwork.getter();
          outlined init with copy of TaskPriority?(v13, v10, &_s8MusicKit7ArtworkVSgMd_0);
          v48 = v64;
          v47 = v65;
          if ((*(v64 + 48))(v10, 1, v65) == 1)
          {
            outlined destroy of TaskPriority?(v13, &_s8MusicKit7ArtworkVSgMd_0);
            v49 = type metadata accessor for ArtworkImage.ViewModel(0);
            v50 = v62;
            (*(*(v49 - 8) + 56))(v62, 1, 1, v49);
          }

          else
          {
            v51 = *(v48 + 32);
            v52 = v63;
            v51(v63, v10, v47);
            v53 = v60;
            (*(v48 + 16))(v60, v52, v47);
            v54 = v61;
            static Artwork.CropStyle.featuredContentCrop170T100B.getter();
            (*(v48 + 8))(v52, v47);
            outlined destroy of TaskPriority?(v13, &_s8MusicKit7ArtworkVSgMd_0);
            v55 = type metadata accessor for Artwork.CropStyle();
            (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
            v50 = v62;
            v51(v62, v53, v47);
            v49 = type metadata accessor for ArtworkImage.ViewModel(0);
            outlined init with take of Artwork.CropStyle?(v54, v50 + *(v49 + 20));
            (*(*(v49 - 8) + 56))(v50, 0, 1, v49);
          }

          type metadata accessor for ArtworkImage.ViewModel(0);
          v56 = *(v49 - 8);
          v57 = *(v56 + 48);
          if (v57(v50, 1, v49) == 1)
          {
            Playlist._artworkViewModel.getter(v66);
            if (v57(v50, 1, v49) != 1)
            {
              outlined destroy of TaskPriority?(v50, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
            }
          }

          else
          {
            v58 = v66;
            outlined init with take of ArtworkImage.ViewModel(v50, v66);
            (*(v56 + 56))(v58, 0, 1, v49);
          }

          goto LABEL_16;
        }

        (*(v31 + 8))(v27, v30);
LABEL_15:
        v46 = type metadata accessor for ArtworkImage.ViewModel(0);
        (*(*(v46 - 8) + 56))(v66, 1, 1, v46);
LABEL_16:
        v44 = &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0;
        v45 = v29;
        return outlined destroy of TaskPriority?(v45, v44);
      }

LABEL_2:
      outlined destroy of TaskPriority?(v29, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
      return Playlist._artworkViewModel.getter(v66);
    }
  }

LABEL_7:
  outlined destroy of TaskPriority?(v29, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
  Playlist._artworkViewModel.getter(v23);
  v34 = type metadata accessor for ArtworkImage.ViewModel(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  if (v36(v23, 1, v34) != 1)
  {
    v41 = v66;
    outlined init with take of ArtworkImage.ViewModel(v23, v66);
    return (*(v35 + 56))(v41, 0, 1, v34);
  }

  Playlist.tracksTiledArtwork.getter();
  outlined init with copy of TaskPriority?(v18, v16, &_s8MusicKit7ArtworkVSgMd_0);
  v38 = v64;
  v37 = v65;
  if ((*(v64 + 48))(v16, 1, v65) == 1)
  {
    outlined destroy of TaskPriority?(v18, &_s8MusicKit7ArtworkVSgMd_0);
    v39 = 1;
    v40 = v66;
  }

  else
  {
    v42 = v63;
    (*(v38 + 32))(v63, v16, v37);
    v40 = v66;
    (*(v38 + 16))(v66, v42, v37);
    v62 = *(v34 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v38 + 8))(v42, v37);
    outlined destroy of TaskPriority?(v18, &_s8MusicKit7ArtworkVSgMd_0);
    v43 = type metadata accessor for Artwork.CropStyle();
    (*(*(v43 - 8) + 56))(v40 + v62, 0, 1, v43);
    v39 = 0;
  }

  (*(v35 + 56))(v40, v39, 1, v34);
  result = (v36)(v23, 1, v34);
  if (result != 1)
  {
    v44 = &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd;
    v45 = v23;
    return outlined destroy of TaskPriority?(v45, v44);
  }

  return result;
}

uint64_t outlined init with take of ArtworkImage.ViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Artwork.CropStyle?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Playlist.defaultCropStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  Playlist.variant.getter();
  v14 = type metadata accessor for Playlist.Variant();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_2;
  }

  outlined init with copy of TaskPriority?(v13, v11, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
  v16 = (*(v15 + 88))(v11, v14);
  if (v16 == enum case for Playlist.Variant.regular(_:) || v16 == enum case for Playlist.Variant.smart(_:))
  {
    goto LABEL_8;
  }

  if (v16 == enum case for Playlist.Variant.genius(_:))
  {
LABEL_2:
    outlined destroy of TaskPriority?(v13, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
    goto LABEL_10;
  }

  if (v16 == enum case for Playlist.Variant.favoriteSongs(_:))
  {
    goto LABEL_8;
  }

  if (v16 == enum case for Playlist.Variant.folder(_:))
  {
    goto LABEL_15;
  }

  if (v16 == enum case for Playlist.Variant.subscribed(_:))
  {
LABEL_8:
    outlined destroy of TaskPriority?(v13, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
    Playlist.artwork.getter();
    v18 = type metadata accessor for Artwork();
    v19 = (*(*(v18 - 8) + 48))(v7, 1, v18);
    outlined destroy of TaskPriority?(v7, &_s8MusicKit7ArtworkVSgMd_0);
    if (v19 == 1)
    {
      static Artwork.CropStyle.boundedBox.getter();
LABEL_11:
      v20 = type metadata accessor for Artwork.CropStyle();
      return (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
    }

LABEL_10:
    static Artwork.CropStyle.squareCenterCrop.getter();
    goto LABEL_11;
  }

  if (v16 == enum case for Playlist.Variant.admin(_:))
  {
    goto LABEL_2;
  }

  if (v16 == enum case for Playlist.Variant.personalMix(_:))
  {
    Playlist.editorialArtwork.getter();
    v23 = type metadata accessor for Artwork();
    v24 = (*(*(v23 - 8) + 48))(v5, 1, v23);
    outlined destroy of TaskPriority?(v5, &_s8MusicKit7ArtworkVSgMd_0);
    if (v24 == 1)
    {
      static Artwork.CropStyle.squareCenterCrop.getter();
    }

    else
    {
      static Artwork.CropStyle.featuredContentCrop170T100B.getter();
    }

    v25 = type metadata accessor for Artwork.CropStyle();
    (*(*(v25 - 8) + 56))(a1, 0, 1, v25);
    return outlined destroy of TaskPriority?(v13, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
  }

  (*(v15 + 8))(v11, v14);
LABEL_15:
  v22 = type metadata accessor for Artwork.CropStyle();
  (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
  return outlined destroy of TaskPriority?(v13, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd_0);
}

uint64_t RecentlyAddedMusicItem.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = type metadata accessor for UploadedVideo();
  v34 = *(v1 - 8);
  v35 = v1;
  __chkstk_darwin(v1);
  v33 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MusicVideo();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TVSeason();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Playlist();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicMovie();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Album();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RecentlyAddedMusicItem();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, v44, v18);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v19 + 96))(v21, v18);
    (*(v15 + 32))(v17, v21, v14);
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(&Album.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v45);
    return (*(v15 + 8))(v17, v14);
  }

  v24 = v45;
  if (v22 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    (*(v19 + 96))(v21, v18);
    (*(v11 + 32))(v13, v21, v10);
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(&MusicMovie.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v24);
    return (*(v11 + 8))(v13, v10);
  }

  if (v22 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    (*(v19 + 96))(v21, v18);
    v26 = v41;
    v25 = v42;
    v27 = v43;
    (*(v42 + 32))(v41, v21, v43);
    v28 = &MusicVideo.artwork.getter;
LABEL_7:
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v28, &static Artwork.CropStyle.boundedBox.getter, v24);
    return (*(v25 + 8))(v26, v27);
  }

  if (v22 == enum case for RecentlyAddedMusicItem.playlist(_:))
  {
    (*(v19 + 96))(v21, v18);
    v30 = v39;
    v29 = v40;
    (*(v39 + 32))(v9, v21, v40);
    Playlist.artworkViewModel.getter(v24);
    return (*(v30 + 8))(v9, v29);
  }

  else
  {
    if (v22 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
    {
      (*(v19 + 96))(v21, v18);
      v26 = v36;
      v25 = v37;
      v27 = v38;
      (*(v37 + 32))(v36, v21, v38);
      v28 = &TVSeason.artwork.getter;
      goto LABEL_7;
    }

    if (v22 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
      (*(v19 + 96))(v21, v18);
      v26 = v33;
      v25 = v34;
      v27 = v35;
      (*(v34 + 32))(v33, v21, v35);
      v28 = &UploadedVideo.artwork.getter;
      goto LABEL_7;
    }

    v31 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
    return (*(v19 + 8))(v21, v18);
  }
}

uint64_t TVEpisode.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  TVEpisode.previewArtwork.getter();
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    outlined destroy of TaskPriority?(v7, &_s8MusicKit7ArtworkVSgMd_0);
    TVEpisode.artwork.getter();
    if (v15(v5, 1, v8) == 1)
    {
      outlined destroy of TaskPriority?(v5, &_s8MusicKit7ArtworkVSgMd_0);
      v16 = type metadata accessor for ArtworkImage.ViewModel(0);
      return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    }

    (*(v9 + 32))(v12, v5, v8);
    (*(v9 + 16))(a1, v12, v8);
    v18 = type metadata accessor for ArtworkImage.ViewModel(0);
    v19 = *(v18 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(a1, v14, v8);
    v18 = type metadata accessor for ArtworkImage.ViewModel(0);
    v19 = *(v18 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v9 + 8))(v14, v8);
  }

  v20 = type metadata accessor for Artwork.CropStyle();
  (*(*(v20 - 8) + 56))(a1 + v19, 0, 1, v20);
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t SocialProfile.cropStyle.getter@<X0>(uint64_t a1@<X8>)
{
  static Artwork.CropStyle.specificRectangle.getter();
  v2 = type metadata accessor for Artwork.CropStyle();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t protocol witness for ArtworkImageViewModelAttributeProviding.cropStyle.getter in conformance Album@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  a1();
  v3 = type metadata accessor for Artwork.CropStyle();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t Track.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MusicVideo();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Song();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Track();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v2, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for Track.song(_:))
  {
    (*(v12 + 96))(v14, v11);
    (*(v8 + 32))(v10, v14, v7);
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(&Song.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, a1);
    return (*(v8 + 8))(v10, v7);
  }

  else if (v15 == enum case for Track.musicVideo(_:))
  {
    (*(v12 + 96))(v14, v11);
    v17 = v20;
    (*(v20 + 32))(v6, v14, v4);
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(&MusicVideo.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, a1);
    return (*(v17 + 8))(v6, v4);
  }

  else
  {
    v18 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t GenericMusicItem.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  v1 = type metadata accessor for CreditArtist();
  v121 = *(v1 - 8);
  v122 = v1;
  __chkstk_darwin(v1);
  v120 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for SocialProfile();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for UploadedVideo();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for UploadedAudio();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for TVShow();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for TVSeason();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for TVEpisode();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for RecordLabel();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for RadioShow();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Station();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Song();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for Playlist();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicVideo();
  v106 = *(v14 - 8);
  v107 = v14;
  __chkstk_darwin(v14);
  v105 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicMovie();
  v109 = *(v16 - 8);
  v110 = v16;
  __chkstk_darwin(v16);
  v108 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Genre();
  v112 = *(v18 - 8);
  v113 = v18;
  __chkstk_darwin(v18);
  v111 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EditorialItem();
  v115 = *(v20 - 8);
  v116 = v20;
  __chkstk_darwin(v20);
  v114 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Curator();
  v118 = *(v22 - 8);
  v119 = v22;
  __chkstk_darwin(v22);
  v117 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Artist();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Album();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for GenericMusicItem();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v71 = &v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v69 - v36;
  v70 = *(v33 + 16);
  v70(&v69 - v36, v124, v32);
  v38 = (*(v33 + 88))(v37, v32);
  if (v38 == enum case for GenericMusicItem.album(_:))
  {
    (*(v33 + 96))(v37, v32);
    (*(v29 + 32))(v31, v37, v28);
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(&Album.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v123);
    return (*(v29 + 8))(v31, v28);
  }

  v40 = v123;
  if (v38 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v33 + 96))(v37, v32);
    (*(v25 + 32))(v27, v37, v24);
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v40);
    return (*(v25 + 8))(v27, v24);
  }

  v41 = v37;
  if (v38 == enum case for GenericMusicItem.composer(_:))
  {
    v42 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v42 - 8) + 56))(v40, 1, 1, v42);
    return (*(v33 + 8))(v41, v32);
  }

  if (v38 == enum case for GenericMusicItem.creditArtist(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v120;
    v43 = v121;
    v45 = v122;
    (*(v121 + 32))(v120, v37, v122);
    v46 = &CreditArtist.artwork.getter;
LABEL_14:
    v47 = v46;
    v48 = v40;
LABEL_15:
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v47, &static Artwork.CropStyle.boundedBox.getter, v48);
    return (*(v43 + 8))(v44, v45);
  }

  if (v38 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v117;
    v43 = v118;
    v45 = v119;
    (*(v118 + 32))(v117, v37, v119);
    v46 = &Curator.artwork.getter;
    goto LABEL_14;
  }

  if (v38 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v114;
    v43 = v115;
    v45 = v116;
    (*(v115 + 32))(v114, v37, v116);
    v46 = &EditorialItem.artwork.getter;
    goto LABEL_14;
  }

  if (v38 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v111;
    v43 = v112;
    v45 = v113;
    (*(v112 + 32))(v111, v37, v113);
    v49 = &Genre.artwork.getter;
LABEL_23:
    v47 = v49;
    v48 = v40;
    goto LABEL_15;
  }

  if (v38 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v108;
    v43 = v109;
    v45 = v110;
    (*(v109 + 32))(v108, v37, v110);
    v49 = &MusicMovie.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v105;
    v43 = v106;
    v45 = v107;
    (*(v106 + 32))(v105, v37, v107);
    v49 = &MusicVideo.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v33 + 96))(v37, v32);
    v43 = v103;
    v44 = v102;
    v45 = v104;
    (*(v103 + 32))(v102, v37, v104);
    Playlist.artworkViewModel.getter(v40);
    return (*(v43 + 8))(v44, v45);
  }

  if (v38 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    v50 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v50 - 8) + 56))(v40, 1, 1, v50);
    return (*(v33 + 8))(v37, v32);
  }

  if (v38 == enum case for GenericMusicItem.radioShow(_:))
  {
    (*(v33 + 96))(v37, v32);
    v43 = v100;
    v44 = v99;
    v45 = v101;
    (*(v100 + 32))(v99, v37, v101);
    v49 = &RadioShow.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.recordLabel(_:))
  {
    (*(v33 + 96))(v37, v32);
    v43 = v97;
    v44 = v96;
    v45 = v98;
    (*(v97 + 32))(v96, v37, v98);
    v49 = &RecordLabel.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.socialProfile(_:))
  {
    (*(v33 + 96))(v37, v32);
    v51 = v94;
    v52 = v93;
    v53 = v95;
    (*(v94 + 32))(v93, v37, v95);
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(&SocialProfile.artwork.getter, &static Artwork.CropStyle.specificRectangle.getter, v40);
    return (*(v51 + 8))(v52, v53);
  }

  if (v38 == enum case for GenericMusicItem.song(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v91;
    v41 = v90;
    v32 = v92;
    (*(v91 + 32))(v90, v37, v92);
    v54 = &Song.artwork.getter;
LABEL_36:
    v55 = v54;
    v56 = &static Artwork.CropStyle.boundedBox.getter;
LABEL_39:
    specialized ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v55, v56, v40);
    return (*(v33 + 8))(v41, v32);
  }

  if (v38 == enum case for GenericMusicItem.station(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v88;
    v41 = v87;
    v32 = v89;
    (*(v88 + 32))(v87, v37, v89);
    v55 = &Station.artwork.getter;
    v56 = &static Artwork.CropStyle.specificRectangle.getter;
    goto LABEL_39;
  }

  if (v38 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v85;
    v41 = v84;
    v32 = v86;
    (*(v85 + 32))(v84, v37, v86);
    TVEpisode.artworkViewModel.getter(v40);
    return (*(v33 + 8))(v41, v32);
  }

  if (v38 == enum case for GenericMusicItem.tvSeason(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v82;
    v41 = v81;
    v32 = v83;
    (*(v82 + 32))(v81, v37, v83);
    v54 = &TVSeason.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.tvShow(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v79;
    v41 = v78;
    v32 = v80;
    (*(v79 + 32))(v78, v37, v80);
    v54 = &TVShow.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v76;
    v41 = v75;
    v32 = v77;
    (*(v76 + 32))(v75, v37, v77);
    v54 = &UploadedAudio.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v73;
    v41 = v72;
    v32 = v74;
    (*(v73 + 32))(v72, v37, v74);
    v54 = &UploadedVideo.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.other(_:))
  {
    (*(v33 + 8))(v37, v32);
    v57 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v57 - 8) + 56))(v40, 1, 1, v57);
  }

  else
  {
    if (one-time initialization token for artwork != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logger.artwork);
    v70(v71, v124, v32);
    v59 = Logger.logObject.getter();
    LODWORD(v122) = static os_log_type_t.fault.getter();
    v124 = v59;
    if (os_log_type_enabled(v59, v122))
    {
      v60 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v125 = v121;
      *v60 = 136315394;
      *(v60 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(0xD000000000000010, 0x80000001004D09C0, &v125);
      *(v60 + 12) = 2080;
      lazy protocol witness table accessor for type GenericMusicItem and conformance GenericMusicItem();
      v61 = v71;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v65 = *(v33 + 8);
      v65(v61, v32);
      v66 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v62, v64, &v125);

      *(v60 + 14) = v66;
      v67 = v124;
      _os_log_impl(&_mh_execute_header, v124, v122, "Unhandled case for %s: %s", v60, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v65 = *(v33 + 8);
      v65(v71, v32);
    }

    v68 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v68 - 8) + 56))(v40, 1, 1, v68);
    return (v65)(v37, v32);
  }
}