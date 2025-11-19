void sub_1003D321C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&unk_10118C520);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v14 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    __chkstk_darwin(Strong);
    v14[-2] = a3;
    _s8TextCellVMa(0);
    sub_1003D5748();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v13 = *(v5 + 8);
    v13(v7, v4);
    static Edge.Set.vertical.getter();
    v14[3] = v4;
    v14[4] = sub_100020674(&unk_10118C530, &unk_10118C520);
    sub_10001C8B8(v14);
    UIHostingConfiguration.margins(_:_:)();
    v13(v10, v4);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1003D347C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Genre.name.getter();
  v8 = v7;
  v9 = _s8TextCellVMa(0);
  v10 = UIFontTextStyleBody;
  static SymbolRenderingMode.monochrome.getter();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v10;
  v15 = 0x4040000000000000;
  v11 = *(v3 + 104);
  v11(v5, enum case for Font.TextStyle.title(_:), v2);
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v15 = 0x402E000000000000;
  v11(v5, enum case for Font.TextStyle.body(_:), v2);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v12 = *(v9 + 40);
  *(a1 + v12) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1003D3958(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10010FC20(&unk_10118A650);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - v7;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v9 == a3)
  {
    goto LABEL_7;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v11 & 1) == 0)
  {
    strcpy(v15, "Unknown kind=");
    v15[7] = -4864;
    v12._countAndFlagsBits = a2;
    v12._object = a3;
    String.append(_:)(v12);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_7:
  }

  sub_1003D25FC(v8);
  sub_100009F78(0, &unk_101184750);
  v13 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v6 + 8))(v8, v5);
  return v13;
}

void *sub_1003D3C7C(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v4 = sub_10010FC20(&unk_10118ABC0);
  __chkstk_darwin(v4 - 8);
  v36 = &v32 - v5;
  v6 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for UICellAccessory.DisplayedState();
  v9 = *(v34 - 8);
  __chkstk_darwin(v34);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&qword_10118DE48);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  v16 = sub_10010FC20(&qword_10118DE80);
  __chkstk_darwin(v16 - 8);
  v39 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v32 - v19;
  v33 = v2;
  sub_10037B03C(a2, &v32 - v19);
  sub_1003D2884(v15);
  v21 = sub_1007FA934(v15, a2, v20);
  (*(v13 + 8))(v15, v12);
  sub_10010FC20(&unk_101184740);
  type metadata accessor for UICellAccessory();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
  v22 = v34;
  (*(v9 + 104))(v11, enum case for UICellAccessory.DisplayedState.always(_:), v34);
  v23 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v23 - 8) + 56))(v36, 1, 1, v23);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v37 + 8))(v8, v38);
  (*(v9 + 8))(v11, v22);
  UICollectionViewListCell.accessories.setter();
  v24 = [v33 traitCollection];
  v25 = [v24 userInterfaceIdiom];

  if (v25 != 6)
  {
    v26 = v21;

    [v26 directionalLayoutMargins];
    [v26 setDirectionalLayoutMargins:?];
  }

  v27 = v39;
  sub_1000089F8(v20, v39, &qword_10118DE80);
  v28 = type metadata accessor for Genre();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_1000095E8(v27, &qword_10118DE80);
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
  }

  else
  {
    *(&v41 + 1) = v28;
    v42 = &protocol witness table for Genre;
    v30 = sub_10001C8B8(&v40);
    (*(v29 + 32))(v30, v27, v28);
  }

  sub_1000095E8(v20, &qword_10118DE80);
  sub_1000095E8(&v40, &qword_1011A3DD0);
  return v21;
}

uint64_t sub_1003D4460()
{
  v0 = sub_10010FC20(&unk_10118DE60);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_10010FC20(&unk_10118D230);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v10 = sub_10010FC20(&unk_10118DE70);
  if ((*(*(v10 - 8) + 48))(v2, 1, v10) == 1)
  {
    sub_1000095E8(v2, &unk_10118DE60);
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_10118DE70);
    (*(v4 + 32))(v9, v6, v3);
    if (MusicLibrarySectionedResponse.isEmpty.getter())
    {
      *(&v14 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
      v15 = &protocol witness table for UIContentUnavailableConfiguration;
      v11 = sub_10001C8B8(&v13);
      sub_1007DA040(v11);
      UIViewController.contentUnavailableConfiguration.setter();
      return (*(v4 + 8))(v9, v3);
    }

    (*(v4 + 8))(v9, v3);
  }

  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  return UIViewController.contentUnavailableConfiguration.setter();
}

uint64_t type metadata accessor for LibraryGenresViewController()
{
  result = qword_10118DE30;
  if (!qword_10118DE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003D4A34()
{
  sub_10003920C(319, &unk_101184560, &unk_10118A650);
  if (v0 <= 0x3F)
  {
    sub_10003920C(319, &qword_10118DE40, &qword_10118DE48);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1003D4B4C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music27LibraryGenresViewController_responseController];
  v2 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v3 = sub_10049CB78();

  v4 = *(v1 + 48);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  v9 = *(v4 + 96);
  v23[4] = *(v4 + 80);
  v23[5] = v9;
  v24 = *(v4 + 112);
  v23[2] = v7;
  v23[3] = v8;
  v23[0] = v5;
  v23[1] = v6;
  v16 = *(v4 + 16);
  v17 = v3 & 1;
  v10 = *(v4 + 33);
  v19 = *(v4 + 49);
  v18 = v10;
  v11 = *(v4 + 65);
  v12 = *(v4 + 81);
  v13 = *(v4 + 97);
  *&v22[15] = *(v4 + 112);
  *v22 = v13;
  v21 = v12;
  v20 = v11;
  sub_1003BF504(v23, &v15);
  return sub_100379288(&v16);
}

uint64_t sub_1003D4C70(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music27LibraryGenresViewController_responseController];
  v2 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v3 = *&v24[0];
  v4 = *(v1 + 48);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  v9 = *(v4 + 96);
  v24[4] = *(v4 + 80);
  v24[5] = v9;
  v25 = *(v4 + 112);
  v24[2] = v7;
  v24[3] = v8;
  v24[0] = v5;
  v24[1] = v6;
  v10 = v5;
  v11 = *(v4 + 32);
  v19 = *(v4 + 48);
  v18 = v11;
  v12 = *(v4 + 64);
  v13 = *(v4 + 80);
  v14 = *(v4 + 96);
  v23 = *(v4 + 112);
  v22 = v14;
  v21 = v13;
  v20 = v12;
  sub_1003BF504(v24, v16);

  v17[0] = v10;
  v17[1] = v3;
  return sub_100379288(v17);
}

uint64_t sub_1003D4D78()
{
  v0 = sub_10010FC20(&unk_10118DE60);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_10010FC20(&unk_10118D230);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v7 = sub_10010FC20(&unk_10118DE70);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &unk_10118DE60);
    return 0;
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_10118DE70);
    v9 = MusicLibrarySectionedResponse.sections.getter();
    (*(v4 + 8))(v6, v3);
    v8 = *(v9 + 16);
  }

  return v8;
}

uint64_t sub_1003D4F7C(unint64_t a1)
{
  v20 = a1;
  v1 = sub_10010FC20(&qword_10118D210);
  v19 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v19 - v2;
  v4 = sub_10010FC20(&unk_10118D220);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = sub_10010FC20(&unk_10118DE60);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_10010FC20(&unk_10118D230);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v15 = sub_10010FC20(&unk_10118DE70);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    sub_1000095E8(v10, &unk_10118DE60);
    return 0;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &unk_10118DE70);
  v17 = MusicLibrarySectionedResponse.sections.getter();
  result = (*(v12 + 8))(v14, v11);
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v17 + 16) <= v20)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v5 + 16))(v7, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v4);

  MusicLibrarySection.items.getter();
  (*(v5 + 8))(v7, v4);
  sub_100020674(&unk_10118C240, &qword_10118D210);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v18 = dispatch thunk of Collection.distance(from:to:)();
  (*(v19 + 8))(v3, v1);
  return v18;
}

void sub_1003D5398(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_10119F3A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_10118DE80);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = type metadata accessor for Genre();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10037B03C(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000095E8(v12, &qword_10118DE80);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    (*(v14 + 16))(v9, v16, v13);
    swift_storeEnumTagMultiPayload();
    v17 = [v1 traitCollection];
    sub_100217F14();
    UITraitCollection.subscript.getter();

    v18 = sub_10049CB78();

    v19 = objc_allocWithZone(type metadata accessor for LibraryAlbumsViewController());
    v20 = sub_1006E7454(v9, v18 & 1);
    v21 = [v2 navigationController];
    if (v21)
    {
      v22 = v21;
      UIViewController.traitOverrides.getter();
      v23 = type metadata accessor for UITraitOverrides();
      (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
      UINavigationController.push(_:traitOverrides:animated:)(v20, v6, 1);

      sub_1000095E8(v6, &unk_10119F3A0);
      (*(v14 + 8))(v16, v13);
    }

    else
    {
      (*(v14 + 8))(v16, v13);
    }
  }
}

unint64_t sub_1003D5748()
{
  result = qword_10118DE90;
  if (!qword_10118DE90)
  {
    _s8TextCellVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118DE90);
  }

  return result;
}

id sub_1003D57B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_100016270(&v8, v10);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(v10, 0, sizeof(v10));
  if (a3)
  {
LABEL_3:
    sub_100009F78(0, &qword_10118CDE0);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  sub_1000095E8(v10, &unk_101183F30);

  return v6;
}

uint64_t sub_1003D58AC()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  if (*(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent) == 1 || (type metadata accessor for MusicLibrary(), , static MusicLibrary.shared.getter(), sub_1003E1338(&qword_10118CE20, &type metadata accessor for MusicLibrary), v3 = dispatch thunk of static Equatable.== infix(_:_:)(), , , (v3 & 1) != 0))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {

    v5 = MusicLibrary.name.getter();

    return v5;
  }
}

char *sub_1003D5AB0()
{
  v118 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v118);
  v2 = v102 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10010FC20(&qword_10118DF68);
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = v102 - v3;
  v117 = sub_10010FC20(&unk_101197220);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v114 = v102 - v4;
  v5 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v5 - 8);
  v111 = v102 - v6;
  v104 = sub_10010FC20(&unk_101197230);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v8 = v102 - v7;
  v107 = sub_10010FC20(&qword_10118DF70);
  v106 = *(v107 - 1);
  __chkstk_darwin(v107);
  v10 = v102 - v9;
  v110 = sub_10010FC20(&qword_10118DF78);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = v102 - v11;
  v12 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsTabGroup;
  v13 = objc_allocWithZone(_s12PinsTabGroupCMa(0));
  *(v0 + v12) = sub_100328F50(_swiftEmptyArrayStorage);
  v14 = v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsObserver;
  *(v14 + 32) = 0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  v15 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_facetsTabGroup;
  v16 = objc_allocWithZone(_s14FacetsTabGroupCMa());
  *(v0 + v15) = sub_1007EBC30();
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___menuTabElementsController) = 0;
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___editableMenuController) = 0;
  v119 = v2;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10010F538(_swiftEmptyArrayStorage);
  }

  else
  {
    v17 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_visiblePlaylistSidebarTabs) = v17;
  v18 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_playlistSectionTab;
  v19 = objc_allocWithZone(_s18PlaylistSectionTabCMa());
  *(v0 + v18) = sub_100736C48();
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistsTabsController) = 0;
  v20 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_createdPlaylist;
  v21 = type metadata accessor for Playlist();
  (*(*(v21 - 8) + 56))(v0 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_artworkCache;
  type metadata accessor for ArtworkPrefetchingController.CacheReference();
  v23 = swift_allocObject();
  *(v23 + 16) = 0xD000000000000017;
  *(v23 + 24) = 0x8000000100E49230;
  *(v23 + 32) = 0;
  *(v0 + v22) = v23;
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_userDefaultsPlaylistSortObserver) = 0;
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_ignoreUserDefaultsPlaylistSortUpdate) = 0;
  *(v23 + 40) = 1;
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistSortButton) = 0;
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_cloudLibraryStatus) = 0x80000000;
  v24 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_sharedLibrariesController;
  type metadata accessor for SharedLibrariesController();
  swift_allocObject();
  *(v0 + v24) = sub_10003C170();
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_sharedLibraryObservers) = 0;
  v25 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary;
  v102[1] = type metadata accessor for MusicLibrary();
  *(v0 + v25) = static MusicLibrary.shared.getter();
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_downloadsController) = 0;
  *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent) = 0;
  sub_100035EA0(0, &v125);
  v26 = sub_100489578(&v125);
  v27 = objc_allocWithZone(type metadata accessor for NavigationController());
  v28 = v26;
  v29 = [v27 init];
  [v28 setManagingNavigationController:v29];

  [v28 setPreferredPlacement:6];
  [v28 setAllowsReordering:1];
  sub_10010FC20(&qword_101183990);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EBE270;
  v31 = *&v28[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsTabGroup];
  *(v30 + 32) = v31;
  v32 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_facetsTabGroup;
  v33 = *&v28[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_facetsTabGroup];
  *(v30 + 40) = v33;
  v105 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_playlistSectionTab;
  v34 = *&v28[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_playlistSectionTab];
  *(v30 + 48) = v34;
  sub_100009F78(0, &qword_101181F70);
  v35 = v31;
  v36 = v33;
  v37 = v34;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v28 setChildren:isa];

  v39 = [*&v28[v32] identifier];
  if (!v39)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = String._bridgeToObjectiveC()();
  }

  [v28 setDefaultChildIdentifier:v39];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6D0;
  v121 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_sharedLibrariesController;
  swift_beginAccess();

  sub_10010FC20(&unk_101197240);
  Published.projectedValue.getter();
  swift_endAccess();

  v102[3] = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100020674(&qword_10118DF80, &unk_101197230);
  v40 = v104;
  Publisher.dropFirst(_:)();
  (*(v103 + 8))(v8, v40);
  sub_100009F78(0, &qword_101182960);
  v41 = static OS_dispatch_queue.main.getter();
  v124 = v41;
  v42 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v43 = *(v42 - 8);
  v103 = *(v43 + 56);
  v104 = v43 + 56;
  v44 = v111;
  (v103)(v111, 1, 1, v42);
  sub_100020674(&qword_10118DF88, &qword_10118DF70);
  v102[2] = sub_10001C070(&qword_101184920, &qword_101182960);
  v45 = v108;
  v46 = v107;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v44, &qword_101182140);

  (*(v106 + 8))(v10, v46);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v107 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100020674(&qword_10118DF90, &qword_10118DF78);
  v47 = v28;
  v48 = v110;
  v49 = Publisher<>.sink(receiveValue:)();

  (*(v109 + 8))(v45, v48);
  *(inited + 32) = v49;
  swift_beginAccess();

  sub_10010FC20(&unk_101197250);
  v50 = v112;
  Published.projectedValue.getter();
  swift_endAccess();

  v51 = static OS_dispatch_queue.main.getter();
  v124 = v51;
  (v103)(v44, 1, 1, v42);
  sub_100020674(&qword_10118DF98, &qword_10118DF68);
  v52 = v114;
  v53 = v115;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v44, &qword_101182140);

  (*(v113 + 8))(v50, v53);
  swift_getKeyPath();
  v124 = v47;
  sub_100020674(&unk_101197260, &unk_101197220);
  v54 = v117;
  v55 = Publisher<>.assign<A>(to:on:)();

  (*(v116 + 8))(v52, v54);
  v56 = inited;
  *(inited + 40) = v55;
  v57 = sub_10010E5A8(v56);
  swift_setDeallocating();
  swift_arrayDestroy();
  *&v47[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_sharedLibraryObservers] = v57;

  v58 = *&v28[v121];
  v59 = *(v58 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled);
  *(v58 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled) = 1;
  if (v59 != 1)
  {

    sub_10044D424();
  }

  v60 = [objc_opt_self() currentTraitCollection];
  v61 = [v60 userInterfaceIdiom];

  if (v61 == 6)
  {
    type metadata accessor for LibraryDownloadsController();
    v62 = swift_allocObject();
    type metadata accessor for Track();
    MusicItemCollection.init(arrayLiteral:)();
    v63 = (v62 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_didUpdateDownloadQueue);
    *v63 = 0;
    v63[1] = 0;
    *(v62 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled) = 0;
    *(v62 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_viewModel) = 0;
    v64 = v62 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueueSubscription;
    *v64 = 0u;
    *(v64 + 16) = 0u;
    *(v64 + 32) = 0;
    *(v62 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_itemStateCache) = _swiftEmptyDictionarySingleton;
    *&v47[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_downloadsController] = v62;
  }

  v65 = *&v28[v105];
  if (v47[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent] != 1)
  {

    static MusicLibrary.shared.getter();
    v67 = static MusicLibrary.== infix(_:_:)();

    v68 = *(v65 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction);
    *(v65 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction) = v67 & 1;
    if ((v67 & 1) == v68)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v66 = *(v65 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction);
  *(v65 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction) = 0;
  if (v66)
  {
LABEL_13:
    sub_1007371EC();
  }

LABEL_14:
  sub_1003D9A80();
  v69 = sub_1003DCCEC();
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = (v69 + *(*v69 + 128));
  swift_beginAccess();
  v72 = *v71;
  *v71 = sub_1003E1388;
  v71[1] = v70;

  sub_100020438(v72);

  v73 = sub_1003DDCB8();
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = (v73 + *(*v73 + 112));
  swift_beginAccess();
  v76 = *v75;
  *v75 = sub_1003E1390;
  v75[1] = v74;

  sub_100020438(v76);

  v77 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistsTabsController;
  v78 = *&v47[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistsTabsController];
  v79 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = (v78 + *(*v78 + 128));
  swift_beginAccess();
  v81 = *v80;
  *v80 = sub_1003E1398;
  v80[1] = v79;
  v82 = v47;

  sub_100020438(v81);

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);

  v83 = *(**CloudLibrary.StatusObserver.shared.unsafeMutableAddressor() + 216);

  v83(v82, &off_1010AA668);

  v84 = *&v47[v77];
  v85 = *(*v84 + 96);
  swift_beginAccess();
  v86 = v119;
  sub_1003E158C(v84 + v85, v119, _s9PlaylistsVMa);
  v87 = *(v118 + 32);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v88 = _s9PlaylistsV5ScopeVMa(0);
  v89 = sub_1000060E4(v88, qword_101218730);
  v90 = sub_1001982EC((v86 + v87), v89);
  v91 = "LibraryPlaylists";
  v92 = 0xD000000000000010;
  if (v90)
  {
    v92 = 0xD000000000000011;
  }

  else
  {
    v91 = "v32@0:8@16@24";
  }

  v122 = v92;
  v123 = v91 | 0x8000000000000000;

  v93._countAndFlagsBits = 0x53746E65746E6F43;
  v93._object = 0xEB0000000074726FLL;
  String.append(_:)(v93);

  v94 = v122;
  v95 = v123;
  sub_1003E15F4(v86, _s9PlaylistsVMa);
  sub_100009F78(0, &qword_10118CE58);
  v122 = v94;
  v123 = v95;
  v96 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100009838();

  v97 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v122, 0, 0, sub_1003E13A0, v96, &type metadata for String);

  *&v82[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_userDefaultsPlaylistSortObserver] = v97;

  v98 = [v82 tabBarController];

  v99 = v82;
  if (v98)
  {
    type metadata accessor for TabBarController();
    if (swift_dynamicCastClass())
    {
      sub_1006BA068();
      v100 = v98;
      v98 = v82;
    }

    else
    {
      v100 = v82;
    }

    v99 = v98;
  }

  return v82;
}

void sub_1003D6E40(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000060E4(v4, qword_101218E00);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      if (v1 >> 62)
      {
        v8 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v7 + 4) = v8;

      _os_log_impl(&_mh_execute_header, v5, v6, "Available shared libraries changed (%{public}ld shared libraries available). Updating tabs…", v7, 0xCu);
    }

    else
    {
    }

    v9 = v3;
    v10 = [v9 tabBarController];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 sidebar];

      [v12 reconfigureItemForTab:v9];
    }

    v13 = [v9 tabBarController];

    if (v13)
    {
      sub_10003F950();
    }
  }
}

uint64_t sub_1003D702C(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);
  *(*a2 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary) = *a1;

  sub_1003DF9EC(v2);
}

void sub_1003D7080()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_facetsTabGroup;
  v3 = *(Strong + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_facetsTabGroup);
  RequestResponse.Revision.content.getter(&v22);
  v4 = v22;
  if (!v22)
  {
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_4;
    }

LABEL_8:
    sub_100009F78(0, &qword_101181F70);

    _bridgeCocoaArray<A>(_:)();

    goto LABEL_5;
  }

  if (v4 >> 62)
  {
    goto LABEL_8;
  }

LABEL_4:

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  sub_100009F78(0, &qword_101181F70);
LABEL_5:

  sub_100009F78(0, &qword_101181F70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setChildren:isa];

  v6 = *&v1[v2];
  RequestResponse.Revision.content.getter(&v22);
  if (v22)
  {
  }

  v7 = Array._bridgeToObjectiveC()().super.isa;

  [v6 setDisplayOrderIdentifiers:v7];

  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000060E4(v8, qword_101218E00);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    v14 = [*&v1[v2] children];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = Array.description.getter();
    v17 = v16;

    v18 = sub_1000105AC(v15, v17, &v22);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Updated library facet group with facets: %{public}s", v12, 0xCu);
    sub_10000959C(v13);
  }

  v19 = [v9 tabBarController];
  if (v19)
  {
    v20 = v19;
    type metadata accessor for TabBarController();
    if (swift_dynamicCastClass())
    {
      sub_1006BA068();
      v21 = v20;
    }

    else
    {
      v21 = v9;
      v9 = v20;
    }
  }
}

void sub_1003D7420(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v4 = Strong;
  v5 = [Strong tabBarController];

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [v5 selectedTab];

  if (!v6)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  _s11PlaylistTabCMa();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
  }

LABEL_7:
  v7 = *(_s19PlaylistTabsRequestVMa() + 20);

  *(a2 + v7) = v5;
}

void sub_1003D74FC()
{
  v0 = sub_10010FC20(&unk_1011814D0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v123 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v1);
  v6 = &v123 - v5;
  __chkstk_darwin(v4);
  v133 = (&v123 - v7);
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v123 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  v130 = v14;
  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v127 = v12;
  v132 = v8;
  v129 = v6;
  v17 = type metadata accessor for Logger();
  v131 = sub_1000060E4(v17, qword_101218E00);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Applying playlists updates…", v20, 2u);
  }

  v21 = v16;
  v22 = [v21 tabBarController];
  v23 = &qword_10118D000;
  v135 = v21;
  v128 = v3;
  v24 = v9;
  if (!v22)
  {

    goto LABEL_33;
  }

  v25 = v22;
  v26 = [v22 selectedTab];

  if (!v26)
  {
    goto LABEL_31;
  }

  _s11PlaylistTabCMa();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    v21 = v135;

LABEL_32:
    v23 = &qword_10118D000;
    goto LABEL_33;
  }

  v28 = v27;
  RequestResponse.Revision.content.getter(&v143);
  if (!v144)
  {

LABEL_30:
    v21 = v135;
LABEL_31:

    goto LABEL_32;
  }

  v29 = v143;

  if (!v29)
  {

    v21 = v135;
    goto LABEL_32;
  }

  sub_100009F78(0, &qword_101197A30);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {

    goto LABEL_30;
  }

  v30 = v26;
  v134 = sub_1002D1F90();
  v126 = v30;

  if (qword_10117F7B8 != -1)
  {
    swift_once();
  }

  sub_1000060E4(v17, qword_101218E48);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Selected tab was a playlist that is no longer available. Selecting the closest one as a fallback…", v33, 2u);
  }

  v34 = v134;
  if (!v134)
  {
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, "Failed to find a closest tab for a previously selected playlist tab. Should not happen.", v96, 2u);
    }

    v21 = v135;
    v23 = &qword_10118D000;
    goto LABEL_79;
  }

  v35 = swift_dynamicCastClass();
  v23 = &qword_10118D000;
  v125 = v29;
  if (!v35)
  {
    goto LABEL_71;
  }

  v36 = *(*&v135[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_playlistSectionTab] + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_userPlaylistsTabGroup);
  v37 = v34;
  v38 = [v37 identifier];
  if (!v38)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = String._bridgeToObjectiveC()();
  }

  v39 = [v36 tabForIdentifier:v38];

  if (v39)
  {

    v40 = v37;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    v43 = os_log_type_enabled(v41, v42);
    v134 = v40;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v143 = v45;
      *v44 = 136446210;
      v46 = v40;
      v47 = [v46 description];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = sub_1000105AC(v48, v50, &v143);

      *(v44 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "Selecting closest playlist tab: %{public}s", v44, 0xCu);
      sub_10000959C(v45);
    }

    v21 = v135;
    v52 = v125;
    v53 = v126;
    v54 = [v135 tabBarController];

    v23 = &qword_10118D000;
    if (v54)
    {
      v55 = v134;
      [v54 setSelectedTab:v134];

      goto LABEL_33;
    }

    goto LABEL_82;
  }

  while (1)
  {

    v23 = &qword_10118D000;
    v29 = v125;
    v34 = v134;
LABEL_71:
    if (swift_dynamicCastClass())
    {
      v97 = v34;
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v143 = v101;
        *v100 = 136446210;
        v102 = v97;
        v124 = v102;
        v103 = [v102 description];
        v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v106 = v105;

        v107 = sub_1000105AC(v104, v106, &v143);

        *(v100 + 4) = v107;
        sub_10000959C(v101);
        v29 = v125;

        v23 = &qword_10118D000;
      }

      else
      {
      }

      v21 = v135;
LABEL_79:
      v120 = v126;
      v121 = [v21 tabBarController];

      if (v121)
      {
        v122 = *(*&v21[v23[475]] + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_allPlaylistsTab);
        [v121 setSelectedTab:v122];
      }

LABEL_82:
    }

    else
    {
      v108 = v126;
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v143 = v126;
        *v111 = 136446210;
        v112 = v108;
        v113 = v108;
        v114 = [v28 description];
        v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v117 = v116;

        v108 = v113;
        v118 = sub_1000105AC(v115, v117, &v143);
        v34 = v134;

        *(v111 + 4) = v118;
        v29 = v125;
        sub_10000959C(v126);
      }

      v23 = &qword_10118D000;
      v21 = v135;
      v119 = [v135 tabBarController];

      [v119 setSelectedTab:v34];
    }

LABEL_33:
    v56 = *(*&v21[v23[475]] + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_userPlaylistsTabGroup);
    RequestResponse.Revision.content.getter(&v138);
    v58 = v138;
    v57 = v139;
    if (v139)
    {
      v143 = v138;
      v144 = v139;
      v145 = v140;
      v146 = v141;
      v147 = v142;
      sub_10073819C();
    }

    v134 = sub_100009F78(0, &qword_101181F70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v56 setChildren:isa];

    if (qword_10117F238 != -1)
    {
      swift_once();
    }

    sub_100174190();

    sub_1003E147C(v58, v57);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Updated user playlists tab group", v62, 2u);
    }

    v63 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_createdPlaylist;
    swift_beginAccess();
    v64 = v133;
    sub_1000089F8(&v21[v63], v133, &unk_1011814D0);
    v65 = v24;
    v66 = v132;
    if ((*(v24 + 48))(v64, 1, v132) == 1)
    {
      sub_1000095E8(v64, &unk_1011814D0);
    }

    else
    {
      v67 = v130;
      (*(v24 + 32))(v130, v64, v66);
      if (sub_1003DEB98(v67))
      {
        v68 = *(v24 + 16);
        v69 = v127;
        v68(v127, v67, v66);
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          v138 = v131;
          *v72 = 136446210;
          sub_1003E1338(&qword_101184200, &type metadata accessor for Playlist);
          v73 = dispatch thunk of CustomStringConvertible.description.getter();
          v75 = v74;
          v133 = *(v65 + 8);
          (v133)(v69, v132);
          v76 = sub_1000105AC(v73, v75, &v138);
          v66 = v132;

          *(v72 + 4) = v76;
          _os_log_impl(&_mh_execute_header, v70, v71, "Successfully selected newly created playlist: %{public}s", v72, 0xCu);
          sub_10000959C(v131);
        }

        else
        {

          v133 = *(v65 + 8);
          (v133)(v69, v66);
        }

        v77 = v128;
        v78 = v129;
        (*(v65 + 56))(v129, 1, 1, v66);
        sub_1000089F8(&v21[v63], v77, &unk_1011814D0);
        swift_beginAccess();
        sub_1003E12C8(v78, &v21[v63]);
        swift_endAccess();
        sub_1003DE2D8(v77);
        sub_1000095E8(v77, &unk_1011814D0);
        sub_1000095E8(v78, &unk_1011814D0);
        (v133)(v130, v66);
      }

      else
      {
        (*(v24 + 8))(v67, v66);
      }
    }

    v79 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_visiblePlaylistSidebarTabs;
    swift_beginAccess();
    v80 = *&v21[v79];
    if ((v80 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_10001C070(&qword_10118DFA0, &qword_101181F70);
      Set.Iterator.init(_cocoa:)();
      v82 = v138;
      v81 = v139;
      v83 = v140;
      v24 = v141;
      v84 = v142;
    }

    else
    {
      v85 = -1 << *(v80 + 32);
      v81 = v80 + 56;
      v83 = ~v85;
      v86 = -v85;
      v87 = v86 < 64 ? ~(-1 << v86) : -1;
      v84 = v87 & *(v80 + 56);
      swift_bridgeObjectRetain_n();
      v24 = 0;
      v82 = v80;
    }

    v37 = 0;
    v133 = v83;
    v28 = ((v83 + 64) >> 6);
    if (v82 < 0)
    {
      break;
    }

LABEL_54:
    v88 = v24;
    v89 = v84;
    v90 = v24;
    if (v84)
    {
LABEL_58:
      v91 = (v89 - 1) & v89;
      v92 = *(*(v82 + 48) + ((v90 << 9) | (8 * __clz(__rbit64(v89)))));
      if (v92)
      {
        goto LABEL_62;
      }

      goto LABEL_64;
    }

    while (1)
    {
      v90 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        break;
      }

      if (v90 >= v28)
      {
        goto LABEL_64;
      }

      v89 = *(v81 + 8 * v90);
      ++v88;
      if (v89)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v93 = __CocoaSet.Iterator.next()();
    if (!v93)
    {
      break;
    }

    v136 = v93;
    swift_dynamicCast();
    v92 = v137;
    v90 = v24;
    v91 = v84;
    if (!v137)
    {
      break;
    }

LABEL_62:
    v137 = v92;
    sub_1003D86C4(&v137, v135);

    v24 = v90;
    v84 = v91;
    if ((v82 & 0x8000000000000000) == 0)
    {
      goto LABEL_54;
    }
  }

LABEL_64:
  sub_10005C9F8();
}

void sub_1003D86C4(void **a1, void *a2)
{
  v54 = a2;
  v57 = type metadata accessor for Artwork();
  v59 = *(v57 - 8);
  __chkstk_darwin(v57);
  v52 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10010FC20(&unk_101191420);
  __chkstk_darwin(v56);
  v5 = &v51 - v4;
  v6 = type metadata accessor for Playlist();
  v55 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s11ArtworkInfoV10PropertiesVMa(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&qword_10118DFA8);
  __chkstk_darwin(v12 - 8);
  v14 = &v51 - v13;
  v15 = sub_10010FC20(&unk_101188920);
  v16 = __chkstk_darwin(v15 - 8);
  v53 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v51 - v19;
  __chkstk_darwin(v18);
  v22 = &v51 - v21;
  v23 = *a1;
  _s11PlaylistTabCMa();
  if (swift_dynamicCastClass())
  {
    v58 = v23;
    sub_10053CB9C(v14);
    v24 = _s11ArtworkInfoVMa(0);
    if ((*(*(v24 - 8) + 48))(v14, 1, v24) == 1)
    {
      sub_1000095E8(v14, &qword_10118DFA8);
      v25 = v59;
      v26 = v57;
      (*(v59 + 56))(v22, 1, 1, v57);
    }

    else
    {
      sub_1003E158C(v14, v11, _s11ArtworkInfoV10PropertiesVMa);
      sub_1003E15F4(v14, _s11ArtworkInfoVMa);
      sub_1000089F8(v11, v22, &unk_101188920);
      sub_1003E15F4(v11, _s11ArtworkInfoV10PropertiesVMa);
      v26 = v57;
      v25 = v59;
    }

    v27 = v60;
    UnfairLock.locked<A>(_:)(sub_1003E14F4);
    v60 = v27;

    Playlist.artwork.getter();
    (*(v55 + 8))(v8, v6);
    v28 = *(v56 + 48);
    sub_1000089F8(v22, v5, &unk_101188920);
    sub_1000089F8(v20, &v5[v28], &unk_101188920);
    v29 = *(v25 + 48);
    if (v29(v5, 1, v26) == 1)
    {
      sub_1000095E8(v20, &unk_101188920);
      sub_1000095E8(v22, &unk_101188920);
      if (v29(&v5[v28], 1, v26) == 1)
      {
        sub_1000095E8(v5, &unk_101188920);
LABEL_19:

        return;
      }
    }

    else
    {
      v30 = v53;
      sub_1000089F8(v5, v53, &unk_101188920);
      if (v29(&v5[v28], 1, v26) != 1)
      {
        v47 = v59;
        v48 = &v5[v28];
        v49 = v52;
        (*(v59 + 32))(v52, v48, v26);
        sub_1003E1338(&unk_10118D3D0, &type metadata accessor for Artwork);
        LODWORD(v57) = dispatch thunk of static Equatable.== infix(_:_:)();
        v50 = *(v47 + 8);
        v50(v49, v26);
        sub_1000095E8(v20, &unk_101188920);
        sub_1000095E8(v22, &unk_101188920);
        v50(v30, v26);
        sub_1000095E8(v5, &unk_101188920);
        if (v57)
        {
          goto LABEL_19;
        }

LABEL_12:
        if (qword_10117F7A0 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_1000060E4(v31, qword_101218E00);
        v32 = v58;
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();

        v35 = os_log_type_enabled(v33, v34);
        v60 = v32;
        if (v35)
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v61 = v37;
          *v36 = 136446210;
          v38 = v32;
          v39 = [v38 description];
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;

          v43 = sub_1000105AC(v40, v42, &v61);

          *(v36 + 4) = v43;
          _os_log_impl(&_mh_execute_header, v33, v34, "Reconfiguring playlist sidebar item for tab=%{public}s", v36, 0xCu);
          sub_10000959C(v37);
        }

        v44 = [v54 tabBarController];
        if (v44)
        {
          v45 = v44;
          v46 = [v44 sidebar];

          [v46 reconfigureItemForTab:v60];
        }

        goto LABEL_19;
      }

      sub_1000095E8(v20, &unk_101188920);
      sub_1000095E8(v22, &unk_101188920);
      (*(v59 + 8))(v30, v26);
    }

    sub_1000095E8(v5, &unk_101191420);
    goto LABEL_12;
  }
}

void sub_1003D8F5C(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - v3;
  v5 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_ignoreUserDefaultsPlaylistSortUpdate))
    {
    }

    else
    {
      v9 = Strong;
      sub_1000089F8(a1, v22, &unk_101183F30);
      if (v23)
      {
        if (swift_dynamicCast())
        {
          v11 = v21[1];
          v10 = v21[2];
          type metadata accessor for JSONDecoder();
          swift_allocObject();
          JSONDecoder.init()();
          sub_100110448();
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();

          v12 = v22[0];
          v13 = v22[1];
          v14 = sub_1003DDCB8();
          v15 = *(*v14 + 96);
          swift_beginAccess();
          sub_1003E158C(v14 + v15, v7, _s9PlaylistsVMa);

          if (v13)
          {
            v16 = 256;
          }

          else
          {
            v16 = 0;
          }

          v17 = sub_100375B90(v16 | v12);
          sub_1003E15F4(v7, _s9PlaylistsVMa);
          if ((v17 & 0xFF00) != 0x200)
          {
            v18 = type metadata accessor for TaskPriority();
            (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
            type metadata accessor for MainActor();
            v9 = v9;
            v19 = static MainActor.shared.getter();
            v20 = swift_allocObject();
            *(v20 + 16) = v19;
            *(v20 + 24) = &protocol witness table for MainActor;
            *(v20 + 32) = v9;
            *(v20 + 40) = v17;
            *(v20 + 41) = HIBYTE(v17) & 1;
            sub_1001F4CB8(0, 0, v4, &unk_100EC9FF8, v20);
          }

          sub_10002C064(v11, v10);
        }

        else
        {
        }
      }

      else
      {

        sub_1000095E8(v22, &unk_101183F30);
      }
    }
  }
}

uint64_t sub_1003D9430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 64) = a5;
  *(v5 + 40) = a4;
  _s19PlaylistTabsRequestVMa();
  *(v5 + 48) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003D94F8, v7, v6);
}

uint64_t sub_1003D94F8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 64);

  v3 = sub_1003DDCB8();
  v4 = *(*v3 + 96);
  swift_beginAccess();
  sub_1003E158C(v3 + v4, v1, _s19PlaylistTabsRequestVMa);
  v5 = (v1 + *(_s9PlaylistsVMa(0) + 44));
  v6 = *v5;
  v7 = v5[1];
  *v5 = v2;
  v5[1] = HIBYTE(v2) & 1;
  if (v7)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  sub_10018F8E4(v8 | v6);
  RequestResponse.Controller.request.setter(v1);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1003D9610()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsObserver, &qword_10118D380);

  sub_1000095E8(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_createdPlaylist, &unk_1011814D0);
}

id sub_1003D9750()
{
  v1 = *(**CloudLibrary.StatusObserver.shared.unsafeMutableAddressor() + 224);

  v2 = v0;
  v1();

  v4.receiver = v2;
  v4.super_class = _s3TabCMa();
  return objc_msgSendSuper2(&v4, "dealloc");
}

BOOL sub_1003D99EC(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (!v3)
  {
    return 1;
  }

  v4 = [a1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  return v5 == 1;
}

uint64_t sub_1003D9A80()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_10010FC20(&unk_101197280);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = &v21 - v6;
  v7 = sub_10010FC20(&qword_10118DFD0);
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v25 = &v21 - v8;
  v9 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsObserver;
  swift_beginAccess();
  v28 = v9;
  sub_1000089F8(v1 + v9, v30, &qword_10118D380);
  if (v31)
  {
    sub_100008FE4(v30, v29);
    sub_1000095E8(v30, &qword_10118D380);
    sub_10000954C(v29, v29[3]);
    dispatch thunk of Cancellable.cancel()();
    sub_10000959C(v29);
  }

  else
  {
    sub_1000095E8(v30, &qword_10118D380);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MusicLibrary.pinsObserver.getter();

  v10 = dispatch thunk of MusicLibraryPinsObserver.pinsPublisher.getter();

  v30[0] = v10;
  sub_100009F78(0, &qword_101182960);
  v11 = static OS_dispatch_queue.main.getter();
  v29[0] = v11;
  v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_10010FC20(&qword_10118BFE8);
  sub_100020674(&unk_101197290, &qword_10118BFE8);
  sub_10001C070(&qword_101184920, &qword_101182960);
  v13 = v22;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v4, &qword_101182140);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10010FC20(&qword_10118DFD8);
  sub_100020674(&qword_10118BFF0, &unk_101197280);
  v14 = v24;
  v15 = v25;
  Publisher.map<A>(_:)();

  (*(v23 + 8))(v13, v14);
  *(swift_allocObject() + 16) = v1;
  sub_100020674(&qword_10118DFE0, &qword_10118DFD0);
  v16 = v1;
  v17 = v27;
  v18 = Publisher<>.sink(receiveValue:)();

  (*(v26 + 8))(v15, v17);
  v31 = type metadata accessor for AnyCancellable();
  v32 = &protocol witness table for AnyCancellable;
  v30[0] = v18;
  v19 = v28;
  swift_beginAccess();
  sub_10006B010(v30, v1 + v19, &qword_10118D380);
  return swift_endAccess();
}

void sub_1003DA034(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v92 = type metadata accessor for MusicPin.Item();
  v4 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicPin();
  v84 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v88 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v87 = &v82 - v10;
  __chkstk_darwin(v9);
  v90 = &v82 - v11;
  v12 = sub_10010FC20(&unk_1011972A0);
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = &v82 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = _swiftEmptyArrayStorage;
  if (!Strong)
  {
    goto LABEL_74;
  }

  v86 = a2;
  v89 = Strong;
  v83 = v4;
  if (qword_10117F7A0 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_101218E00);
    (*(v13 + 16))(v15, a1, v12);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v94 = v12;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v97[0] = v23;
      *v22 = 136446210;
      sub_100020674(&qword_10118DFC8, &unk_1011972A0);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v12;
      v27 = v26;
      (*(v13 + 8))(v15, v25);
      v28 = sub_1000105AC(v24, v27, v97);

      *(v22 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "Received new pins from observer: %{public}s", v22, 0xCu);
      sub_10000959C(v23);
    }

    else
    {

      (*(v13 + 8))(v15, v12);
    }

    v17 = v90;
    v29 = v89;
    v30 = [*(v89 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsTabGroup) children];
    sub_100009F78(0, &qword_101181F70);
    v93 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v85 = v29;
    v31 = [v85 tabBarController];
    a2 = v86;
    if (!v31)
    {
      break;
    }

    v32 = v31;
    v33 = [v31 selectedTab];

    if (!v33)
    {
      break;
    }

    _s6PinTabCMa(0);
    v34 = swift_dynamicCastClass();

    if (!v34)
    {
      break;
    }

    v12 = sub_100020674(&qword_1011972B0, &unk_1011972A0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v97[0] != v96[0])
    {
      break;
    }

    v35 = [*(v85 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_facetsTabGroup) children];
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v97[0] = _swiftEmptyArrayStorage;
    if (v15 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
      if (!v36)
      {
LABEL_27:
        v41 = _swiftEmptyArrayStorage;
LABEL_28:

        v17 = v90;
        if ((v41 & 0x8000000000000000) != 0 || (v41 & 0x4000000000000000) != 0)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_36;
          }

LABEL_31:
          if ((v41 & 0xC000000000000001) != 0)
          {
            v42 = sub_1007E914C(0, v41);
          }

          else
          {
            if (!*(v41 + 16))
            {
              __break(1u);
              return;
            }

            v42 = *(v41 + 32);
          }

          v43 = v42;
        }

        else
        {
          if (*(v41 + 16))
          {
            goto LABEL_31;
          }

LABEL_36:

          v43 = 0;
        }

        v44 = [v85 tabBarController];
        if (v44)
        {
          v45 = v44;
          if (!v43)
          {
            v43 = *(*(v85 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_playlistSectionTab) + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_allPlaylistsTab);
          }

          [v45 setSelectedTab:v43];
        }

        else
        {
          v45 = v43;
        }

        break;
      }
    }

    else
    {
      v36 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v36)
      {
        goto LABEL_27;
      }
    }

    v37 = 0;
    v13 = v15 & 0xC000000000000001;
    v38 = (v15 & 0xFFFFFFFFFFFFFF8);
    v89 = (v15 & 0xFFFFFFFFFFFFFF8);
    v82 = v15 & 0xC000000000000001;
    while (1)
    {
      if (v13)
      {
        v39 = sub_1007E914C(v37, v15);
      }

      else
      {
        if (v37 >= *(v38 + 2))
        {
          goto LABEL_24;
        }

        v39 = *(v15 + 8 * v37 + 32);
      }

      v12 = v39;
      v40 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if ([v39 isHidden])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v13 = v82;
        v38 = v89;
      }

      ++v37;
      if (v40 == v36)
      {
        v41 = v97[0];
        a2 = v86;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v46 = sub_100020674(&qword_1011972B0, &unk_1011972A0);
  v47 = dispatch thunk of Collection.count.getter();
  if (!v47)
  {

    v17 = _swiftEmptyArrayStorage;
    goto LABEL_54;
  }

  v48 = v47;
  v95 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  dispatch thunk of Collection.startIndex.getter();
  if (v48 < 0)
  {
    goto LABEL_78;
  }

  v49 = (v84 + 16);
  v89 = (v83 + 8);
  v50 = (v84 + 8);
  v90 = v46;
  do
  {
    v58 = dispatch thunk of Collection.subscript.read();
    v59 = *v49;
    (*v49)(v17);
    v58(v96, 0);
    v60 = v17;
    v61 = v91;
    MusicPin.item.getter();
    KeyPath = swift_getKeyPath();
    v63 = sub_1002D14D8(v61, KeyPath, v93);

    (*v89)(v61, v92);
    if (!v63)
    {
      goto LABEL_47;
    }

    v17 = v60;
    if ((sub_10032A06C(v60) & 1) == 0)
    {

LABEL_47:
      v51 = a1;
      v52 = v87;
      (v59)(v87, v60, v6);
      v53 = objc_allocWithZone(_s6PinTabCMa(0));
      (v59)(&v53[OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin], v52, v6);
      v54 = v88;
      (v59)(v88, v52, v6);
      sub_1007484FC(v54, v97);
      v55 = sub_10003622C(v97);
      sub_10032A8A4();

      v56 = *v50;
      v57 = v52;
      a1 = v51;
      (*v50)(v57, v6);
      v56(v60, v6);
      v17 = v60;
      goto LABEL_48;
    }

    (*v50)(v60, v6);
LABEL_48:
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    dispatch thunk of Collection.formIndex(after:)();
    --v48;
  }

  while (v48);

  v17 = v95;
  a2 = v86;
LABEL_54:
  v64 = v85;
  v65 = [v85 tabBarController];
  v66 = v64;
  if (v65)
  {
    v67 = v65;
    v68 = [v65 selectedTab];

    v66 = v64;
    if (v68)
    {
      _s6PinTabCMa(0);
      v94 = swift_dynamicCastClass();
      if (v94)
      {
        v89 = v68;
        if (v17 >> 62)
        {
          goto LABEL_79;
        }

        v91 = (v17 & 0xFFFFFFFFFFFFFF8);
        v93 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_59:
        v90 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
        swift_beginAccess();
        v69 = 0;
        v92 = v17 & 0xC000000000000001;
        v70 = (v84 + 16);
        v71 = (v84 + 8);
        while (v93 != v69)
        {
          if (v92)
          {
            v72 = v17;
            v73 = sub_1007E9990(v69, v17);
          }

          else
          {
            if (v69 >= *(v91 + 2))
            {
              goto LABEL_77;
            }

            v72 = v17;
            v73 = *(v17 + 8 * v69 + 32);
          }

          v74 = v73;
          if (__OFADD__(v69, 1))
          {
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            v91 = (v17 & 0xFFFFFFFFFFFFFF8);
            v93 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_59;
          }

          v75 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
          swift_beginAccess();
          v76 = *v70;
          v77 = v87;
          (*v70)(v87, &v74[v75], v6);
          v78 = v88;
          v76(v88, &v90[v94], v6);
          sub_1003E1338(&qword_101197100, &type metadata accessor for MusicPin);
          sub_1003E1338(qword_1011972F0, &type metadata accessor for MusicPin);
          LOBYTE(v75) = static MusicItem<>.==~ infix(_:_:)();

          v79 = *v71;
          (*v71)(v78, v6);
          v79(v77, v6);
          ++v69;
          v17 = v72;
          if (v75)
          {
            v81 = v89;
            v64 = v85;
            v68 = v85;
LABEL_71:
            a2 = v86;
            goto LABEL_72;
          }
        }

        v64 = v85;
        v80 = [v85 tabBarController];

        if (v80)
        {
          v68 = v89;
          v81 = sub_1002D1F90();

          [v80 setSelectedTab:v81];
          goto LABEL_71;
        }

        v66 = v89;
        a2 = v86;
      }

      else
      {
        v81 = v64;
LABEL_72:

        v66 = v68;
      }
    }
  }

LABEL_74:
  *a2 = v17;
}

uint64_t sub_1003DAE24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  swift_beginAccess();
  v5 = type metadata accessor for MusicPin();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1003DAEB4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for MusicPin();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v8);
  v11 = &v17[-v10];
  v12 = *(v5 + 16);
  v12(&v17[-v10], a1, v4, v9);
  v13 = *a2;
  v14 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
  swift_beginAccess();
  (v12)(v7, v13 + v14, v4);
  swift_beginAccess();
  (*(v5 + 24))(v13 + v14, v11, v4);
  swift_endAccess();
  sub_100329AA8(v7);
  v15 = *(v5 + 8);
  v15(v7, v4);
  return (v15)(v11, v4);
}

void sub_1003DB05C(void *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsTabGroup);
  if (*a1 >> 62)
  {
    [v2 setHidden:_CocoaArrayWrapper.endIndex.getter() == 0];
    sub_100009F78(0, &qword_101181F70);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    [v2 setHidden:*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 0];

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100009F78(0, &qword_101181F70);
  }

  sub_100009F78(0, &qword_101181F70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setChildren:isa];

  v4 = Array._bridgeToObjectiveC()().super.isa;
  [v2 setDisplayOrderIdentifiers:v4];

  if (qword_10117F678 != -1)
  {
    swift_once();
  }

  v5 = sub_10010BA00(&off_10109ABD8);
  sub_1003C6340(v5);

  if (qword_10117F7A8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_101218E18);

  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    _s6PinTabCMa(0);
    v10 = Array.description.getter();
    v12 = sub_1000105AC(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v7, "Updated library pins group with pins: %{public}s", v8, 0xCu);
    sub_10000959C(v9);
  }
}

uint64_t sub_1003DB364()
{
  v1 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v1 - 8);
  v3 = &v44 - v2;
  v4 = sub_10010FC20(&unk_1011972A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v44 - v8;
  if (qword_10117F7B0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_1000060E4(v10, qword_101218E30);
  v12 = v0;
  v46 = v11;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = v5;
    v48 = v44;
    *v15 = 136446210;
    v16 = [*&v12[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsTabGroup] displayOrder];
    sub_100009F78(0, &qword_101181F70);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = Array.description.getter();
    v19 = v18;

    v20 = sub_1000105AC(v17, v19, &v48);

    *(v15 + 4) = v20;
    v21 = v14;
    v22 = &qword_10118D000;
    _os_log_impl(&_mh_execute_header, v13, v21, "Updating pins to reflect user display order=%{public}s", v15, 0xCu);
    sub_10000959C(v44);
    v5 = v45;

    v23 = &selRef_setPhotosHeaderMetadata_;
  }

  else
  {

    v23 = &selRef_setPhotosHeaderMetadata_;
    v22 = &qword_10118D000;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  MusicLibrary.pinsObserver.getter();

  dispatch thunk of MusicLibraryPinsObserver.pins.getter();

  sub_100020674(&qword_1011972B0, &unk_1011972A0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v24 = dispatch thunk of Collection.distance(from:to:)();
  v25 = *&v12[v22[469]];
  v26 = [v25 v23[447]];
  sub_100009F78(0, &qword_101181F70);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v27 >> 62)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24 == v28)
  {
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v3, 1, 1, v29);
    type metadata accessor for MainActor();
    v30 = v12;
    v31 = static MainActor.shared.getter();
    v32 = swift_allocObject();
    v32[2] = v31;
    v32[3] = &protocol witness table for MainActor;
    v32[4] = v30;
    sub_10086E3AC(0, 0, v3, &unk_100ECA050, v32);

    return (v5[1])(v9, v4);
  }

  else
  {
    v45 = v25;
    v34 = v47;
    (v5[2])(v47, v9, v4);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48 = v46;
      *v37 = 136446210;
      sub_100020674(&qword_10118DFC8, &unk_1011972A0);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      v41 = v5[1];
      v41(v34, v4);
      v42 = sub_1000105AC(v38, v40, &v48);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "Unexpectedly found different number of newly ordered tabs. Resetting to currentlyOrderedPins=%{public}s", v37, 0xCu);
      sub_10000959C(v46);
    }

    else
    {

      v41 = v5[1];
      v41(v34, v4);
    }

    isa = Array._bridgeToObjectiveC()().super.isa;
    [v45 setDisplayOrderIdentifiers:isa];

    return (v41)(v9, v4);
  }
}

uint64_t sub_1003DBA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = type metadata accessor for MusicPin();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[24] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[25] = v7;
  v4[26] = v6;

  return _swift_task_switch(sub_1003DBB60, v7, v6);
}

uint64_t sub_1003DBB60()
{
  v68 = v0;
  v0[18] = &_swiftEmptySetSingleton;
  v2 = v0[19];
  v3 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsObserver;
  swift_beginAccess();
  sub_1000089F8(v2 + v3, (v0 + 2), &qword_10118D380);
  if (v0[5])
  {
    sub_100008FE4((v0 + 2), (v0 + 7));
    sub_1000095E8((v0 + 2), &qword_10118D380);
    sub_10000954C(v0 + 7, v0[10]);
    dispatch thunk of Cancellable.cancel()();
    sub_10000959C((v0 + 7));
  }

  else
  {
    sub_1000095E8((v0 + 2), &qword_10118D380);
  }

  v4 = [*(v0[19] + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsTabGroup) displayOrder];
  sub_100009F78(0, &qword_101181F70);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[27] = v5;

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[28] = v5 & 0xFFFFFFFFFFFFFF8;
  v0[29] = v6;
  v7 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary;
  v0[31] = 0;
  v0[32] = &_swiftEmptySetSingleton;
  v0[30] = v7;
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v64 = &_swiftEmptySetSingleton;
    v66 = v0;
    while (1)
    {
      v61 = v9;
      while (1)
      {
        v10 = v0[27];
        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = sub_1007E914C(v8, v10);
        }

        else
        {
          if (v8 >= *(v0[28] + 16))
          {
            goto LABEL_40;
          }

          v11 = *(v10 + 8 * v8 + 32);
        }

        v5 = v11;
        v12 = v8 + 1;
        v0[33] = v11;
        v0[34] = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:

          v54 = v64;
          v53 = v1;
LABEL_42:
          v55 = v0[22];
          v56 = v0[20];
          v0[41] = *(v0[19] + v0[30]);
          (v8)(v55, v53 + v9, v56);

          v57 = swift_task_alloc();
          v0[42] = v57;
          *v57 = v0;
          v57[1] = sub_1003DC3D0;
          v58 = v0[22];

          return MusicLibrary.movePin(_:position:)(v58, v54);
        }

        _s6PinTabCMa(0);
        v13 = swift_dynamicCastClass();
        v0[35] = v13;
        if (v13)
        {
          break;
        }

        if (qword_10117F7B0 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_1000060E4(v14, qword_101218E30);
        v1 = v5;
        v5 = Logger.logObject.getter();
        v9 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v5, v9))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v67 = v16;
          *v15 = 136446210;
          v1 = v1;
          v17 = v8;
          v18 = [v1 description];
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          v22 = sub_1000105AC(v19, v21, &v67);

          *(v15 + 4) = v22;
          v8 = v17;
          v0 = v66;
          _os_log_impl(&_mh_execute_header, v5, v9, "Found different Tab=%{public}s in pinsTabGroup", v15, 0xCu);
          sub_10000959C(v16);
        }

        else
        {
        }

        ++v8;
        if (v12 == v0[29])
        {
          goto LABEL_33;
        }
      }

      v9 = v13;
      v64 = v8;
      v23 = v0[23];
      v25 = v0[20];
      v24 = v0[21];
      v1 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
      v0[36] = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
      swift_beginAccess();
      v8 = *(v24 + 16);
      v0[37] = v8;
      v0[38] = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      (v8)(v23, v1 + v9, v25);
      v26 = v5;
      v27 = MusicPin.position.getter();
      v28 = *(v24 + 8);
      v0[39] = v28;
      v0[40] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = v23;
      v30 = v28;
      v28(v29, v25);
      if (v27 != v61)
      {
        break;
      }

      if (__OFADD__(v61, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        swift_once();
LABEL_37:
        v40 = type metadata accessor for Logger();
        sub_1000060E4(v40, qword_101218E30);
        v41 = v26;
        v5 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v5, v42))
        {
          goto LABEL_41;
        }

        v65 = v5;
        v43 = v0[23];
        v44 = v0[20];
        v63 = v42;
        v45 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v67 = v62;
        *v45 = 136446466;
        v59 = v1;
        v60 = v30;
        v46 = v1 + v9;
        v47 = v8;
        (v8)(v43, v46, v44);
        sub_1003E1338(&qword_10118BB00, &type metadata accessor for MusicPin);
        v48 = v44;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        v60(v43, v48);
        v52 = sub_1000105AC(v49, v51, &v67);
        v53 = v59;
        v8 = v47;

        *(v45 + 4) = v52;
        *(v45 + 12) = 2050;
        v54 = v64;
        *(v45 + 14) = v64;
        _os_log_impl(&_mh_execute_header, v65, v63, "Moving pin=%{public}s to index=%{public}ld", v45, 0x16u);
        sub_10000959C(v62);

        goto LABEL_42;
      }

      v9 = v61 + 1;
      v30 = v0[39];
      v31 = v0[23];
      v32 = v0[20];
      (v0[37])(v31, v0[35] + v0[36], v32);
      v33 = MusicPin.position.getter();
      v30(v31, v32);
      sub_1003B3AB0(&v67, v33);
      v8 = v0[18];
      v64 = v8;
      if (*(v8 + 16))
      {
        v26 = (v8 + 56);
        v34 = ~(-1 << *(v8 + 32));
        v35 = v61 + 1;
        while (1)
        {
          v9 = v35;
          v36 = static Hasher._hash(seed:_:)();
          v37 = v36 & v34;
          if (((*(&v26->isa + (((v36 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v36 & v34)) & 1) == 0)
          {
            break;
          }

          while (*(*(v8 + 48) + 8 * v37) != v9)
          {
            v37 = (v37 + 1) & v34;
            if (((*(&v26->isa + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          v35 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_47;
          }
        }
      }

LABEL_32:
      v5 = v0[33];

      v8 = v0[34];
      v0[31] = v9;
      v0[32] = v64;
      if (v8 == v0[29])
      {
        goto LABEL_33;
      }
    }

    if (qword_10117F7B0 != -1)
    {
      goto LABEL_48;
    }

    goto LABEL_37;
  }

LABEL_33:

  sub_1003D9A80();

  v38 = v0[1];

  return v38();
}

uint64_t sub_1003DC3D0()
{
  v2 = *v1;
  *(v2 + 344) = v0;

  v3 = *(v2 + 312);
  if (v0)
  {
    v4 = *(v2 + 176);
    v5 = *(v2 + 160);

    v3(v4, v5);

    v6 = *(v2 + 200);
    v7 = *(v2 + 208);
    v8 = sub_1003DCC64;
  }

  else
  {
    v3(*(v2 + 176), *(v2 + 160));

    v6 = *(v2 + 200);
    v7 = *(v2 + 208);
    v8 = sub_1003DC584;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1003DC584()
{
  v59 = v0;
  v3 = *(v0 + 248);
  while (2)
  {
    log = v3;
    v4 = *(v0 + 312);
    v5 = *(v0 + 184);
    v6 = *(v0 + 160);
    (*(v0 + 296))(v5, *(v0 + 280) + *(v0 + 288), v6);
    v7 = MusicPin.position.getter();
    v4(v5, v6);
    sub_1003B3AB0(&v58, v7);
    v8 = *(v0 + 144);
    v53 = v8;
    if (*(v8 + 16))
    {
      v9 = v8 + 56;
      v10 = ~(-1 << *(v8 + 32));
      v11 = log;
      while (1)
      {
        log = v11;
        v12 = static Hasher._hash(seed:_:)();
        v13 = v12 & v10;
        if (((*(v9 + (((v12 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v10)) & 1) == 0)
        {
          break;
        }

        while (*(*(v53 + 48) + 8 * v13) != log)
        {
          v13 = (v13 + 1) & v10;
          if (((*(v9 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        v11 = (&log->isa + 1);
        if (__OFADD__(log, 1))
        {
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_33;
        }
      }
    }

LABEL_11:
    v14 = *(v0 + 264);

    v15 = *(v0 + 272);
    *(v0 + 248) = log;
    *(v0 + 256) = v53;
    if (v15 == *(v0 + 232))
    {
      goto LABEL_29;
    }

    while (1)
    {
      v16 = *(v0 + 216);
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = sub_1007E914C(v15, v16);
      }

      else
      {
        if (v15 >= *(*(v0 + 224) + 16))
        {
          goto LABEL_36;
        }

        v17 = *(v16 + 8 * v15 + 32);
      }

      v14 = v17;
      v18 = v15 + 1;
      *(v0 + 264) = v17;
      *(v0 + 272) = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      _s6PinTabCMa(0);
      v19 = swift_dynamicCastClass();
      *(v0 + 280) = v19;
      if (v19)
      {
        break;
      }

      if (qword_10117F7B0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000060E4(v20, qword_101218E30);
      v21 = v14;
      v14 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v22))
      {
        v57 = v15;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v58 = v24;
        *v23 = 136446210;
        v25 = v21;
        v26 = [v25 description];
        v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v4 = sub_1000105AC(v1, v28, &v58);

        *(v23 + 4) = v4;
        _os_log_impl(&_mh_execute_header, v14, v22, "Found different Tab=%{public}s in pinsTabGroup", v23, 0xCu);
        sub_10000959C(v24);

        v15 = v57;
      }

      else
      {
      }

      ++v15;
      if (v18 == *(v0 + 232))
      {
        goto LABEL_29;
      }
    }

    v57 = v15;
    v29 = *(v0 + 184);
    v31 = *(v0 + 160);
    v30 = *(v0 + 168);
    v4 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
    *(v0 + 288) = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
    v32 = v19;
    swift_beginAccess();
    v1 = *(v30 + 16);
    *(v0 + 296) = v1;
    *(v0 + 304) = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v53 = v32;
    v1(v29, v4 + v32, v31);
    v7 = v14;
    v33 = MusicPin.position.getter();
    v2 = *(v30 + 8);
    *(v0 + 312) = v2;
    *(v0 + 320) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v2(v29, v31);
    if (v33 == log)
    {
      v3 = (&log->isa + 1);
      if (!__OFADD__(log, 1))
      {
        continue;
      }

      __break(1u);
LABEL_29:

      sub_1003D9A80();

      v34 = *(v0 + 8);

      return v34();
    }

    break;
  }

  if (qword_10117F7B0 != -1)
  {
    goto LABEL_41;
  }

LABEL_33:
  v36 = type metadata accessor for Logger();
  sub_1000060E4(v36, qword_101218E30);
  v37 = v7;
  v14 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v56 = v38;
  if (os_log_type_enabled(v14, v38))
  {
    loga = v14;
    v39 = *(v0 + 184);
    v40 = *(v0 + 160);
    buf = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v58 = v52;
    *buf = 136446466;
    v1(v39, v4 + v53, v40);
    sub_1003E1338(&qword_10118BB00, &type metadata accessor for MusicPin);
    v41 = v39;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    v2(v41, v40);
    v45 = sub_1000105AC(v42, v44, &v58);

    *(buf + 4) = v45;
    *(buf + 6) = 2050;
    v46 = v57;
    *(buf + 14) = v57;
    _os_log_impl(&_mh_execute_header, loga, v56, "Moving pin=%{public}s to index=%{public}ld", buf, 0x16u);
    sub_10000959C(v52);
  }

  else
  {
LABEL_37:

    v46 = v57;
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 160);
  *(v0 + 328) = *(*(v0 + 152) + *(v0 + 240));
  v1(v47, v4 + v53, v48);

  v49 = swift_task_alloc();
  *(v0 + 336) = v49;
  *v49 = v0;
  v49[1] = sub_1003DC3D0;
  v50 = *(v0 + 176);

  return MusicLibrary.movePin(_:position:)(v50, v46);
}

uint64_t sub_1003DCC64()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t *sub_1003DCCEC()
{
  v1 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___menuTabElementsController;
  if (*(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___menuTabElementsController))
  {
    v2 = *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___menuTabElementsController);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_facetsTabGroup);
    type metadata accessor for MusicLibrary();
    v5[0] = v3;
    v5[1] = static MusicLibrary.shared.getter();
    sub_10010FC20(&qword_10118DFC0);
    swift_allocObject();
    v2 = RequestResponse.Controller.init(request:)(v5);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t *sub_1003DCDB4()
{
  v1 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___editableMenuController;
  if (*(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___editableMenuController))
  {
    v2 = *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___editableMenuController);
  }

  else
  {

    static Library.Menu.Request.with(_:)(sub_1003E16C4, v4);

    sub_10010FC20(&unk_101197030);
    swift_allocObject();
    v2 = RequestResponse.Controller.init(request:)(v4);
    *(v0 + v1) = v2;
  }

  return v2;
}

char *sub_1003DCE8C(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_101182EA0);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v75 = &v68 - v5;
  v6 = *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_facetsTabGroup);
  v7 = [v6 displayOrder];
  v8 = sub_100009F78(0, &qword_101181F70);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    v73 = v1;
    v74 = a1;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v73 = v1;
    v74 = a1;
    if (v10)
    {
LABEL_3:
      v78[0] = _swiftEmptyArrayStorage;
      result = sub_100015C04(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v71 = v6;
      v72 = v8;
      v12 = 0;
      v13 = v78[0];
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v14 = sub_1007E914C(v12, v9);
        }

        else
        {
          v14 = *(v9 + 8 * v12 + 32);
        }

        v15 = v14;
        v16 = [v14 identifier];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v78[0] = v13;
        v21 = v13[2];
        v20 = v13[3];
        if (v21 >= v20 >> 1)
        {
          sub_100015C04((v20 > 1), v21 + 1, 1);
          v13 = v78[0];
        }

        ++v12;
        v13[2] = v21 + 1;
        v22 = &v13[2 * v21];
        v22[4] = v17;
        v22[5] = v19;
      }

      while (v10 != v12);

      v6 = v71;
      goto LABEL_14;
    }
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_14:
  v23 = [v6 children];
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_10117F7B0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_1000060E4(v25, qword_101218E30);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v71 = v26;
  v72 = v24;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v30 = 136446466;
    v31 = Array.description.getter();
    v33 = sub_1000105AC(v31, v32, v78);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2082;
    v34 = Array.description.getter();
    v36 = sub_1000105AC(v34, v35, v78);

    *(v30 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "Received menu update request with tab display order identifiers=%{public}s, updated visibility for tabs=%{public}s", v30, 0x16u);
    swift_arrayDestroy();
  }

  v37 = v75;
  v38 = v13[2];
  if (!v38)
  {
    v41 = _swiftEmptyArrayStorage;
    goto LABEL_36;
  }

  v39 = 0;
  v40 = v13 + 5;
  v68 = v38 - 1;
  v41 = _swiftEmptyArrayStorage;
  v69 = v13 + 5;
  do
  {
    v70 = v41;
    v42 = &v40[2 * v39];
    v24 = v39;
    while (1)
    {
      if (v24 >= v13[2])
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v43 = *(v42 - 1);
      v44 = *v42;
      v78[0] = v43;
      v78[1] = v44;
      v76 = 0xD000000000000014;
      v77 = 0x8000000100E3E560;
      v45 = type metadata accessor for Locale();
      (*(*(v45 - 8) + 56))(v37, 1, 1, v45);
      sub_100009838();

      StringProtocol.range<A>(of:options:range:locale:)();
      v47 = v46;
      v49 = v48;
      sub_1000095E8(v37, &unk_101182EA0);
      if (v49)
      {

        goto LABEL_21;
      }

      v50 = HIBYTE(v44) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v50 = v43 & 0xFFFFFFFFFFFFLL;
      }

      if (4 * v50 < v47 >> 14)
      {
        goto LABEL_40;
      }

      String.subscript.getter();

      v51 = static String._fromSubstring(_:)();
      v53 = v52;
      v37 = v75;

      v79._countAndFlagsBits = v51;
      v79._object = v53;
      v54 = sub_1002CF218(v79);
      if (v54 != 13)
      {
        break;
      }

LABEL_21:
      ++v24;
      v42 += 2;
      if (v38 == v24)
      {
        v41 = v70;
        goto LABEL_36;
      }
    }

    v55 = v54;
    v41 = v70;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_10049A0A4(0, *(v41 + 2) + 1, 1, v41);
    }

    v57 = *(v41 + 2);
    v56 = *(v41 + 3);
    if (v57 >= v56 >> 1)
    {
      v41 = sub_10049A0A4((v56 > 1), v57 + 1, 1, v41);
    }

    v39 = v24 + 1;
    *(v41 + 2) = v57 + 1;
    v41[v57 + 32] = v55;
    v40 = v69;
  }

  while (v68 != v24);
LABEL_36:

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v78[0] = v61;
    *v60 = 136446210;
    v62 = Array.description.getter();
    v64 = sub_1000105AC(v62, v63, v78);

    *(v60 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v58, v59, "Updating editable library menu with mapped ordered identifiers=%{public}s", v60, 0xCu);
    sub_10000959C(v61);
  }

  v65 = v74;
  v66 = v72;
  sub_1003DCDB4();
  v67 = swift_allocObject();
  v67[2] = v41;
  v67[3] = v65;
  v67[4] = v66;

  RequestResponse.Controller.setNeedsReload(_:)(sub_1003E16B8, v67);
}

void sub_1003DD624(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  RequestResponse.Revision.content.getter(v27);
  if (*v27)
  {
    *v26 = *v27;
    *&v26[8] = *&v27[8];
    *&v26[24] = *&v27[24];
    *&v26[40] = *&v27[40];

    sub_1007ED934(a3, v26, a4, a5);

    *v27 = *v26;
    *&v27[16] = *&v26[16];
    *&v27[32] = *&v26[32];
    v12 = *&v26[8];
    v32[0] = *v26;
    v30 = *&v26[24];
    v31 = *&v26[16];
    v28 = *&v26[40];
    v29 = *&v26[32];
    sub_1000089F8(v32, v24, &qword_10118DFB8);
    v13 = v12;
    sub_1000089F8(&v31, v24, &qword_10118DFB8);
    sub_1000089F8(&v30, v24, &qword_101196FE0);
    sub_1000089F8(&v29, v24, &qword_10118DFB8);
    sub_1000089F8(&v28, v24, &qword_101196FE0);
    Library.Menu.persist()();
    sub_1000095E8(v32, &qword_10118DFB8);

    sub_1000095E8(&v31, &qword_10118DFB8);
    sub_1000095E8(&v30, &qword_101196FE0);
    sub_1000095E8(&v29, &qword_10118DFB8);
    sub_1000095E8(&v28, &qword_101196FE0);
    if (qword_10117F7B0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000060E4(v14, qword_101218E30);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136446210;
      v24[0] = *v27;
      v24[1] = *&v27[16];
      v24[2] = *&v27[32];
      sub_1000089F8(v32, v23, &qword_10118DFB8);
      v22 = v13;
      sub_1000089F8(&v31, v23, &qword_10118DFB8);
      sub_1000089F8(&v30, v23, &qword_101196FE0);
      sub_1000089F8(&v29, v23, &qword_10118DFB8);
      sub_1000089F8(&v28, v23, &qword_101196FE0);
      v19 = String.init<A>(describing:)();
      v21 = sub_1000105AC(v19, v20, &v25);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Successfully saved library menu edits %{public}s", v17, 0xCu);
      sub_10000959C(v18);

      sub_1000095E8(v32, &qword_10118DFB8);
      sub_1000095E8(&v31, &qword_10118DFB8);
      sub_1000095E8(&v30, &qword_101196FE0);
      sub_1000095E8(&v29, &qword_10118DFB8);
    }

    else
    {

      sub_1000095E8(v32, &qword_10118DFB8);
      sub_1000095E8(&v31, &qword_10118DFB8);
      sub_1000095E8(&v30, &qword_101196FE0);
      sub_1000095E8(&v29, &qword_10118DFB8);
    }

    sub_1000095E8(&v28, &qword_101196FE0);
  }

  else
  {
    if (qword_10117F7B0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, qword_101218E30);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to load editable Library Menu", v11, 2u);
    }
  }
}

uint64_t *sub_1003DDCB8()
{
  v1 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin(v1);
  v3 = (&v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = _s9PlaylistsVMa(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v46 - v8;
  v10 = _s19PlaylistTabsRequestVMa();
  __chkstk_darwin(v10);
  if (*(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistsTabsController))
  {
    v13 = *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistsTabsController);
  }

  else
  {
    v49 = v12;
    v50 = v9;
    v51 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v52 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistsTabsController;
    v53 = v0;
    v14 = *(v1 + 20);
    v15 = type metadata accessor for Playlist.Folder();
    (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
    if (qword_10117F5D8 != -1)
    {
      swift_once();
    }

    *v3 = qword_101218AB8;
    *(v3 + *(v1 + 24)) = 0;
    type metadata accessor for MusicLibrary();

    *v7 = static MusicLibrary.shared.getter();
    *(v7 + 2) = 0;
    v7[24] = 1;
    v16 = &v7[v4[9]];
    *v16 = 0;
    *(v16 + 1) = 0xE000000000000000;
    v48 = v4[10];
    *&v7[v48] = &_swiftEmptySetSingleton;
    v17 = &v7[v4[11]];
    *v17 = 263;
    v18 = v4[8];
    sub_1003E158C(v3, &v7[v18], _s9PlaylistsV5ScopeVMa);
    *(v7 + 4) = 256;
    v19 = objc_opt_self();
    v20 = [v19 standardUserDefaults];
    if (qword_10117F298 != -1)
    {
      swift_once();
    }

    v21 = sub_1000060E4(v1, qword_101218730);
    v47 = v18;
    v22 = sub_1001982EC(&v7[v18], v21);
    v23 = "LibraryPlaylists";
    if (v22)
    {
      v24 = 0xD000000000000011;
    }

    else
    {
      v24 = 0xD000000000000010;
    }

    v46 = "LibraryPlaylists";
    if ((v22 & 1) == 0)
    {
      v23 = "v32@0:8@16@24";
    }

    v54 = v24;
    v55 = v23 | 0x8000000000000000;

    v25._countAndFlagsBits = 0x53746E65746E6F43;
    v25._object = 0xEB0000000074726FLL;
    String.append(_:)(v25);

    sub_100110448();
    sub_10011049C();
    NSUserDefaults.decodeValue<A>(_:forKey:)(&_s11ContentSortVN, &v54);

    v26 = sub_100375B90(v54);
    if ((v26 & 0xFF00) == 0x200 && (v27 = sub_1001982EC(v3, v21), v26 = sub_10045FDA0(v27 & 1 | 0x80u), (v26 & 0xFF00) == 0x200))
    {
      LOBYTE(v28) = 1;
      LOBYTE(v26) = 7;
    }

    else
    {
      v28 = (v26 >> 8) & 1;
    }

    v29 = v47;
    *v17 = v26;
    v17[1] = v28;
    v30 = [v19 standardUserDefaults];
    v31 = sub_1001982EC(&v7[v29], v21);
    if (v31)
    {
      v32 = 0xD000000000000011;
    }

    else
    {
      v32 = 0xD000000000000010;
    }

    v33 = v46;
    if ((v31 & 1) == 0)
    {
      v33 = "v32@0:8@16@24";
    }

    v34 = v33 | 0x8000000000000000;
    v35 = sub_10010FC20(&unk_10118CD70);
    v54 = v32;
    v55 = v34;

    v36._countAndFlagsBits = 0x704F7265746C6946;
    v36._object = 0xEC0000006E6F6974;
    String.append(_:)(v36);

    sub_100178DD8(&unk_101182910, sub_100178D84);
    sub_100178DD8(&unk_101182920, sub_100178E50);
    NSUserDefaults.decodeValue<A>(_:forKey:)(v35, &v54);

    v37 = v54;
    if (!v54)
    {
      v38 = sub_10018F3F4();
      v39 = Optional<A>.convertToSet.getter(v38);
      if (v39)
      {
        v37 = v39;
      }

      else
      {
        v37 = &_swiftEmptySetSingleton;
      }
    }

    v40 = sub_10018F5B8();
    v41 = sub_1003AE5C4(v40, v37);

    sub_1003E15F4(v3, _s9PlaylistsV5ScopeVMa);
    *&v7[v48] = v41;
    v42 = v50;
    sub_1003E1654(v7, v50);
    v43 = v42;
    v44 = v51;
    sub_1003E1654(v43, v51);
    *(v44 + *(v49 + 20)) = 0;
    sub_10010FC20(&qword_10118DFB0);
    swift_allocObject();
    v13 = RequestResponse.Controller.init(request:)(v44);
    *(v53 + v52) = v13;
  }

  return v13;
}

uint64_t sub_1003DE2D8(uint64_t a1)
{
  v2 = v1;
  v51 = a1;
  v3 = sub_10010FC20(&unk_1011A4980);
  __chkstk_darwin(v3);
  v5 = &v42 - v4;
  v6 = sub_10010FC20(&unk_1011814D0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v49 = &v42 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v42 - v13;
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v17 = type metadata accessor for Playlist();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v47 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v42 - v21;
  v23 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_createdPlaylist;
  swift_beginAccess();
  v48 = v23;
  v50 = v2;
  sub_1000089F8(v2 + v23, v16, &unk_1011814D0);
  v24 = *(v18 + 48);
  if (v24(v16, 1, v17) == 1)
  {
    return sub_1000095E8(v16, &unk_1011814D0);
  }

  v45 = v9;
  v42 = *(v18 + 32);
  v42(v22, v16, v17);
  v26 = *(v18 + 16);
  v46 = v22;
  v26(v14, v22, v17);
  v43 = *(v18 + 56);
  v44 = v18 + 56;
  v43(v14, 0, 1, v17);
  v27 = *(v3 + 48);
  sub_1000089F8(v14, v5, &unk_1011814D0);
  sub_1000089F8(v51, &v5[v27], &unk_1011814D0);
  if (v24(v5, 1, v17) == 1)
  {
    sub_1000095E8(v14, &unk_1011814D0);
    if (v24(&v5[v27], 1, v17) == 1)
    {
      sub_1000095E8(v5, &unk_1011814D0);
      return (*(v18 + 8))(v46, v17);
    }

    goto LABEL_8;
  }

  v28 = v49;
  sub_1000089F8(v5, v49, &unk_1011814D0);
  if (v24(&v5[v27], 1, v17) == 1)
  {
    sub_1000095E8(v14, &unk_1011814D0);
    (*(v18 + 8))(v28, v17);
LABEL_8:
    v29 = v18;
    sub_1000095E8(v5, &unk_1011A4980);
    v30 = v50;
    goto LABEL_9;
  }

  v36 = v47;
  v42(v47, &v5[v27], v17);
  sub_1003E1338(&unk_1011A4660, &type metadata accessor for Playlist);
  v51 = v5;
  v37 = v18;
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = v50;
  v39 = v28;
  v40 = v38;
  v29 = v37;
  v41 = *(v37 + 8);
  v41(v36, v17);
  sub_1000095E8(v14, &unk_1011814D0);
  v41(v39, v17);
  sub_1000095E8(v51, &unk_1011814D0);
  if (v40)
  {
    return (v41)(v46, v17);
  }

LABEL_9:
  v31 = v46;
  v32 = v30;
  v33 = sub_1003DEB98(v46);
  result = (*(v29 + 8))(v31, v17);
  if (v33)
  {
    v34 = v45;
    v43(v45, 1, 1, v17);
    v35 = v48;
    swift_beginAccess();
    sub_10006B010(v34, v32 + v35, &unk_1011814D0);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1003DE89C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011814D0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = type metadata accessor for PlaylistCreation.FlowResult(0);
  __chkstk_darwin(v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Playlist();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1003E158C(a1, v12, type metadata accessor for PlaylistCreation.FlowResult);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_1003E15F4(v12, type metadata accessor for PlaylistCreation.FlowResult);
  }

  (*(v14 + 32))(v16, v12, v13);
  (*(v14 + 16))(v9, v16, v13);
  (*(v14 + 56))(v9, 0, 1, v13);
  v18 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_createdPlaylist;
  swift_beginAccess();
  sub_1000089F8(a2 + v18, v7, &unk_1011814D0);
  swift_beginAccess();
  sub_1003E12C8(v9, a2 + v18);
  swift_endAccess();
  sub_1003DE2D8(v7);
  sub_1000095E8(v7, &unk_1011814D0);
  sub_1000095E8(v9, &unk_1011814D0);
  return (*(v14 + 8))(v16, v13);
}

BOOL sub_1003DEB98(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UITabBarControllerSidebar.ScrollTarget();
  v70 = *(v4 - 8);
  v71 = v4;
  __chkstk_darwin(v4);
  v69 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v64 - v11;
  if (qword_10117F7B8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000060E4(v13, qword_101218E48);
  v14 = *(v7 + 16);
  v72 = a1;
  v66 = v14;
  v14(v12, a1, v6);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = v7;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v65 = v1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v64 = v10;
    v21 = v20;
    v73 = v20;
    *v19 = 136446210;
    sub_1003E1338(&qword_101184200, &type metadata accessor for Playlist);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v7;
    v25 = v24;
    v67 = *(v23 + 8);
    v67(v12, v6);
    v26 = sub_1000105AC(v22, v25, &v73);

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "Attempting to select playlist tab: %{public}s", v19, 0xCu);
    sub_10000959C(v21);
    v10 = v64;

    v2 = v65;
  }

  else
  {

    v67 = *(v7 + 8);
    v67(v12, v6);
  }

  v27 = [*&v2[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_playlistSectionTab] children];
  sub_100009F78(0, &qword_101181F70);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  KeyPath = swift_getKeyPath();
  v30 = v72;
  v31 = sub_1002D0F2C(v72, KeyPath, v28);

  if (v31)
  {
    v32 = v31;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v73 = v36;
      *v35 = 136446210;
      v37 = v32;
      v72 = v31;
      v38 = v2;
      v39 = v37;
      v40 = [v37 description];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = sub_1000105AC(v41, v43, &v73);

      *(v35 + 4) = v44;
      v2 = v38;
      v31 = v72;
      _os_log_impl(&_mh_execute_header, v33, v34, "Selecting playlist tab: %{public}s", v35, 0xCu);
      sub_10000959C(v36);
    }

    v45 = [v2 tabBarController];
    if (v45)
    {
      v46 = v45;
      [v45 setSelectedTab:v32];
    }

    v47 = [v2 tabBarController];
    if (v47)
    {
      v48 = v47;
      v49 = [v47 sidebar];

      v51 = v69;
      v50 = v70;
      *v69 = v32;
      v52 = v71;
      (*(v50 + 104))(v51, enum case for UITabBarControllerSidebar.ScrollTarget.tab(_:), v71);
      v53 = v32;
      UITabBarControllerSidebar.scroll(to:animated:)();

      (*(v50 + 8))(v51, v52);
    }

    else
    {
    }
  }

  else
  {
    v66(v10, v30, v6);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = v10;
      v58 = swift_slowAlloc();
      v73 = v58;
      *v56 = 136446210;
      sub_1003E1338(&qword_101184200, &type metadata accessor for Playlist);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      v67(v57, v6);
      v62 = sub_1000105AC(v59, v61, &v73);

      *(v56 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v54, v55, "Unable to select playlist tab: %{public}s: couldn't find playlist", v56, 0xCu);
      sub_10000959C(v58);
    }

    else
    {

      v67(v10, v6);
    }
  }

  return v31 != 0;
}

id sub_1003DF2C4()
{
  v1 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistSortButton;
  v2 = *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistSortButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab____lazy_storage___playlistSortButton);
  }

  else
  {
    v4 = sub_1003DF328();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1003DF328()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for UIButton.Configuration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v17[-v7];
  sub_1002D276C();
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() systemImageNamed:v9];

  UIButton.Configuration.image.setter();
  sub_100009F78(0, &qword_101183A18);
  (*(v3 + 16))(v5, v8, v2);
  v11 = UIButton.init(configuration:primaryAction:)();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1003E1578;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003D57B8;
  aBlock[3] = &unk_1010AA720;
  v13 = _Block_copy(aBlock);

  [v11 _setMenuProvider:v13];
  _Block_release(v13);
  [v11 setShowsMenuAsPrimaryAction:1];
  [v11 setPointerInteractionEnabled:1];
  v14 = v11;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v15 = String._bridgeToObjectiveC()();

  [v14 setAccessibilityLabel:v15];

  (*(v3 + 8))(v8, v2);
  return v14;
}

void *sub_1003DF6AC()
{
  v0 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = sub_1003DDCB8();

    v5 = *(*v4 + 96);
    swift_beginAccess();
    sub_1003E158C(v4 + v5, v2, _s9PlaylistsVMa);

    v6 = swift_allocObject();
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    Strong = sub_100211D00(sub_1003E1580, v6).super.super.isa;

    sub_1003E15F4(v2, _s9PlaylistsVMa);
  }

  return Strong;
}

void sub_1003DF844(__int16 a1)
{
  v2 = _s19PlaylistTabsRequestVMa();
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_ignoreUserDefaultsPlaylistSortUpdate] = 1;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1003DDCB8();

    v9 = *(*v8 + 96);
    swift_beginAccess();
    sub_1003E158C(v8 + v9, v4, _s19PlaylistTabsRequestVMa);
    v10 = &v4[*(_s9PlaylistsVMa(0) + 44)];
    v11 = *v10;
    v12 = v10[1];
    *v10 = a1;
    v10[1] = HIBYTE(a1) & 1;
    if (v12)
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    sub_10018F8E4(v13 | v11);
    RequestResponse.Controller.request.setter(v4);
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v14[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_ignoreUserDefaultsPlaylistSortUpdate] = 0;
  }
}

uint64_t sub_1003DF9EC(uint64_t a1)
{
  v2 = v1;
  v4 = &v97;
  v87 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v87);
  v86 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v8 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v11 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s19PlaylistTabsRequestVMa();
  __chkstk_darwin(v12 - 8);
  v14 = v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary;
  v97 = *(v2 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary);
  v91 = a1;
  v16 = type metadata accessor for MusicLibrary();
  sub_1003E1338(&qword_10118CE20, &type metadata accessor for MusicLibrary);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    v85 = v14;
    v83[0] = v11;
    v83[2] = v16;
    v18 = *&v15[v2];
    v19 = qword_10117F7A0;

    if (v19 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v20 = type metadata accessor for Logger();
      sub_1000060E4(v20, qword_101218E00);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      v23 = os_log_type_enabled(v21, v22);
      v83[1] = v15;
      v84 = v8;
      if (v23)
      {
        v24 = v2;
        v25 = swift_slowAlloc();
        *v4 = swift_slowAlloc();
        *v25 = 136446466;
        v26 = MusicLibrary.name.getter();
        v28 = sub_1000105AC(v26, v27, &v97);

        *(v25 + 4) = v28;
        *(v25 + 12) = 2082;
        v29 = MusicLibrary.id.getter();
        v31 = sub_1000105AC(v29, v30, &v97);

        *(v25 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v21, v22, "Selected music library changed to %{public}s (%{public}s)", v25, 0x16u);
        swift_arrayDestroy();

        v2 = v24;
      }

      v32 = sub_1003DCDB4();
      Library.Menu.Request.MediaLibrarySource.init(_:)();
      v34 = v33;
      v36 = v35;
      swift_beginAccess();
      v37 = *(v32 + 1);
      v38 = *(v32 + 2);
      v39 = *(v32 + 3);
      v40 = *(v32 + 5);
      *(v4 + 48) = *(v32 + 4);
      *(v4 + 64) = v40;
      *(v4 + 16) = v38;
      *(v4 + 32) = v39;
      *v4 = v37;
      v41 = *v4;
      v42 = v98;
      v43 = *(v32 + 25);
      v44 = *(v32 + 41);
      v45 = *(v32 + 57);
      v46 = *(v32 + 73);
      *(v4 + 143) = v32[11];
      *(v4 + 112) = v45;
      *(v4 + 128) = v46;
      *(v4 + 80) = v43;
      *(v4 + 96) = v44;
      LOBYTE(v90[0]) = v36 & 1;

      sub_1003E1510(&v97, &v91);
      sub_1003E156C(v41, v42);
      v91 = v34;
      v92 = v90[0];
      v47 = *(v4 + 80);
      v94 = *(v4 + 96);
      v48 = *(v4 + 128);
      v95 = *(v4 + 112);
      v96[0] = v48;
      *(v96 + 15) = *(v4 + 143);
      v93 = v47;
      RequestResponse.Controller.request.setter(&v91);

      sub_1003D9A80();
      v49 = sub_1003DCCEC();
      swift_beginAccess();
      v90[0] = v49[2];
      v50 = v90[0];
      v90[1] = v18;

      v51 = v50;
      RequestResponse.Controller.request.setter(v90);

      v52 = sub_1003DDCB8();
      v53 = *(*v52 + 96);
      swift_beginAccess();
      v54 = v52 + v53;
      v55 = v85;
      sub_1003E158C(v54, v85, _s19PlaylistTabsRequestVMa);

      *v55 = v18;
      v56 = v55 + *(_s9PlaylistsVMa(0) + 44);
      v57 = *v56;
      v58 = v56[1] == 0;
      v88 = v18;
      if (v58)
      {
        v59 = 0;
      }

      else
      {
        v59 = 256;
      }

      v60 = sub_100375B90(v59 | v57);
      v61 = (v60 >> 8) & 1;
      if ((v60 & 0xFF00) == 0x200)
      {
        v62 = 7;
      }

      else
      {
        v62 = v60;
      }

      if ((v60 & 0xFF00) == 0x200)
      {
        LOBYTE(v61) = 1;
      }

      *v56 = v62;
      v56[1] = v61;
      v63 = v59 | v57;
      v18 = v88;
      sub_10018F8E4(v63);
      RequestResponse.Controller.request.setter(v55);

      static MusicLibrary.shared.getter();
      v8 = static MusicLibrary.== infix(_:_:)();

      if ((v8 & 1) == 0)
      {
        v64 = *(v2 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent);
        *(v2 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent) = 0;
        sub_1003E02F4(v64);
      }

      v65 = [v2 tabBarController];
      if (!v65 || (v66 = v65, v67 = [v65 traitCollection], v66, v68 = objc_msgSend(v67, "userInterfaceIdiom"), v67, v68 != 6))
      {
        if (v8)
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
        }

        else
        {
          MusicLibrary.name.getter();
        }

        v69 = String._bridgeToObjectiveC()();

        [v2 setTitle:v69];
      }

      v70 = [v2 tabBarController];
      if (v70)
      {
        v71 = v70;
        sub_10003F5A0();
      }

      v72 = [v2 managingNavigationController];
      if (!v72)
      {
        break;
      }

      v83[0] = v2;
      v73 = v72;
      v15 = [v72 viewControllers];

      sub_100009F78(0, &qword_101183D40);
      v74 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v74 >> 62)
      {
        v75 = _CocoaArrayWrapper.endIndex.getter();
        if (!v75)
        {
LABEL_38:

          v2 = v83[0];
          break;
        }
      }

      else
      {
        v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v75)
        {
          goto LABEL_38;
        }
      }

      v4 = 0;
      v84 = v74 & 0xFFFFFFFFFFFFFF8;
      v85 = v74 & 0xC000000000000001;
      v2 = v88;
      while (1)
      {
        if (v85)
        {
          v76 = sub_10004056C(v4, v74);
        }

        else
        {
          if (v4 >= *(v84 + 16))
          {
            goto LABEL_35;
          }

          v76 = *(v74 + 8 * v4 + 32);
        }

        v15 = v76;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v18 = v74;
        UIViewController.traitOverrides.getter();
        v89 = v2;
        sub_100137E8C();
        dispatch thunk of UIMutableTraits.subscript.setter();
        UIViewController.traitOverrides.setter();

        ++v4;
        if (v8 == v75)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
    }

    v77 = [v2 tabBarController];
    if (v77)
    {
      v78 = v77;
      sub_10003F950();
    }

    v79 = *(v2 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_playlistSectionTab);
    if (*(v2 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent) == 1)
    {
      v80 = *(v79 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction);
      *(v79 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction) = 0;
      if ((v80 & 1) == 0)
      {
      }
    }

    else
    {

      static MusicLibrary.shared.getter();
      v81 = static MusicLibrary.== infix(_:_:)();

      v82 = *(v79 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction);
      *(v79 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction) = v81 & 1;
      if ((v81 & 1) == v82)
      {
      }
    }

    sub_1007371EC();
  }

  return result;
}

void sub_1003E02F4(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v4);
  v5 = _s19PlaylistTabsRequestVMa();
  __chkstk_darwin(v5 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent;
  if (v2[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent] == v3)
  {
    return;
  }

  v9 = sub_1003DDCB8();
  v10 = v2[v8];
  v11 = *(*v9 + 96);
  swift_beginAccess();
  sub_1003E158C(v9 + v11, v7, _s19PlaylistTabsRequestVMa);
  v7[8] = v10;
  RequestResponse.Controller.request.setter(v7);

  v12 = [v2 tabBarController];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 selectedTab];

    if (v14)
    {
      v50 = v14;
      v15 = [v14 managingTabGroup];
      if (v15)
      {
        v16 = v15;
        sub_100009F78(0, &qword_10118DF60);
        v17 = v2;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          v19 = [v17 managingNavigationController];
          if (v19)
          {
            v42 = v19;
            v20 = [v19 viewControllers];
            sub_100009F78(0, &qword_101183D40);
            v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v21 >> 62)
            {
              goto LABEL_28;
            }

            for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
            {
              v23 = 0;
              v48 = v21 & 0xFFFFFFFFFFFFFF8;
              v49 = v21 & 0xC000000000000001;
              v41 = "LibraryView.Shows";
              v44 = "LibraryView.Songs";
              v45 = 0x8000000100E3C290;
              v43 = "nt";
              v40[9] = "LibraryView.Playlists";
              v40[10] = "LibraryView.RecentlyAdded";
              v40[7] = "LibraryView.Albums";
              v40[8] = "LibraryView.Artists";
              v40[5] = "LibraryView.MusicVideos";
              v40[6] = "LibraryView.MadeForYou";
              v40[4] = "LibraryView.Genres";
              v40[3] = "LibraryView.Compilations";
              v40[2] = "LibraryView.Composers";
              v40[1] = "LibraryView.Downloaded";
              v46 = i;
              v47 = v8;
              while (1)
              {
                if (v49)
                {
                  v25 = sub_10004056C(v23, v21);
                }

                else
                {
                  if (v23 >= *(v48 + 16))
                  {
                    goto LABEL_27;
                  }

                  v25 = *(v21 + 8 * v23 + 32);
                }

                v26 = v25;
                v27 = v23 + 1;
                if (__OFADD__(v23, 1))
                {
                  break;
                }

                v28 = v2[v8];
                _s8FacetTabCMa();
                v29 = swift_dynamicCastClass();
                if (v29)
                {
                  v30 = v44;
                  switch(*(v29 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab8FacetTab_facetIdentifier))
                  {
                    case 5:
                      goto LABEL_22;
                    case 0xB:
                      v30 = v41;
LABEL_22:
                      if ((v30 | 0x8000000000000000) != v45)
                      {
                        goto LABEL_23;
                      }

                      goto LABEL_11;
                    default:
LABEL_23:
                      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (((v31 | v28) & 1) == 0)
                      {
                        goto LABEL_24;
                      }

                      goto LABEL_11;
                  }
                }

                if (v28)
                {
LABEL_11:
                  v24 = sub_10010E29C(&off_10109ABB0);
                }

                else
                {
LABEL_24:
                  v24 = &_swiftEmptySetSingleton;
                }

                UIViewController.traitOverrides.getter();
                v51 = v24;
                sub_100217F14();
                dispatch thunk of UIMutableTraits.subscript.setter();
                UIViewController.traitOverrides.setter();

                ++v23;
                v8 = v47;
                if (v27 == v46)
                {
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_27:
              __break(1u);
LABEL_28:
              ;
            }

LABEL_29:
          }
        }
      }
    }
  }

  v32 = [v2 tabBarController];
  if (v32)
  {
    v33 = v32;
    sub_10003F5A0();
  }

  v34 = [v2 tabBarController];
  if (v34)
  {
    v35 = v34;
    sub_10003F950();
  }

  v36 = *&v2[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_playlistSectionTab];
  if (v2[v8] == 1)
  {
    v37 = *(v36 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction);
    *(v36 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction) = 0;
    if ((v37 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  type metadata accessor for MusicLibrary();

  static MusicLibrary.shared.getter();
  v38 = static MusicLibrary.== infix(_:_:)();

  v39 = *(v36 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction);
  *(v36 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab18PlaylistSectionTab_wantsNewPlaylistAction) = v38 & 1;
  if ((v38 & 1) != v39)
  {
LABEL_39:
    sub_1007371EC();
  }

LABEL_40:
  if (qword_10117F6D8 != -1)
  {
    swift_once();
  }

  sub_100429E44(v2[v8]);
}

unint64_t sub_1003E09A8()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v23[2] = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v24 = _swiftEmptyArrayStorage;
  if (CloudLibrary.Status.shouldShowActionButton.getter(*&v0[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_cloudLibraryStatus]))
  {
    sub_100009F78(0, &qword_1011839A0);
    CloudLibrary.EnablementContext.action.unsafeMutableAddressor();

    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() systemImageNamed:v4];

    String._bridgeToObjectiveC()();
    swift_allocObject();
    v6 = [v0 tabBarController];
    swift_unknownObjectWeakInit();

    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v7 = [v0 tabBarController];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 traitCollection];

    v10 = [v9 userInterfaceIdiom];
    if (v10 == 6)
    {
      type metadata accessor for MusicLibrary();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      static MusicLibrary.shared.getter();
      v11 = static MusicLibrary.== infix(_:_:)();

      if (v11)
      {
        sub_10010FC20(&qword_101183990);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100EBC6D0;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v13 = String.init(localized:table:bundle:locale:comment:)();
        v23[0] = v14;
        v23[1] = v13;
        v15 = String._bridgeToObjectiveC()();
        v16 = objc_opt_self();
        v17 = [v16 systemImageNamed:v15];

        sub_100009F78(0, &qword_1011839A0);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        *(inited + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v18 = String._bridgeToObjectiveC()();
        v19 = [v16 systemImageNamed:v18];

        swift_allocObject();
        swift_unknownObjectWeakInit();
        *(inited + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        sub_10012409C(inited);
      }
    }
  }

  v20 = sub_10044D0C4();
  if (v20)
  {
    v21 = v20;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  return v24;
}

void *sub_1003E0FEC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    memset(v3, 0, sizeof(v3));
    v4 = 0;
    v5 = xmmword_100EBCEF0;
    v1 = result;
    PresentationSource.init(viewController:position:)(v1, v3, v2);
    static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:completion:)(0, v2, 1, 0, 0);

    return sub_10012BA6C(v2);
  }

  return result;
}

void sub_1003E108C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent);
    v5[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent] = a3;
    sub_1003E02F4(v6);
  }
}

void sub_1003E10F8(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_cloudLibraryStatus];
  *&v1[OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_cloudLibraryStatus] = a1;
  if (!static CloudLibrary.Status.__derived_enum_equals(_:_:)(v3, a1))
  {
    v4 = [v1 tabBarController];
    if (v4)
    {
      v5 = v4;
      sub_10003F950();
    }
  }
}

uint64_t sub_1003E1184@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1003E1204()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1003E12C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011814D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E1338(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003E13A8(uint64_t a1)
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
  v9[1] = sub_10002F3F4;

  return sub_1003D9430(a1, v4, v5, v6, v8 | v7);
}

void sub_1003E147C(void *a1, uint64_t a2)
{
  if (a2)
  {
  }
}

void sub_1003E156C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1003E158C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003E15F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003E1654(uint64_t a1, uint64_t a2)
{
  v4 = _s9PlaylistsVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E16CC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1003E1718(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1003DBA60(a1, v4, v5, v6);
}

__n128 sub_1003E17DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1003E17F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1003E1838(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1003E188C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = type metadata accessor for URL();
  v77 = *(v3 - 8);
  v78 = v3;
  __chkstk_darwin(v3);
  v74 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicAppDestination.PlaylistDescriptor();
  v75 = *(v5 - 8);
  v76 = v5;
  __chkstk_darwin(v5);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MusicAppDestination();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v73 - v13;
  __chkstk_darwin(v15);
  v17 = (&v73 - v16);
  v18 = _s18AppPageDestinationOMa(0);
  v79 = *(v18 - 8);
  v80 = v18;
  v19 = __chkstk_darwin(v18);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v9 + 16);
  v22(v17, a1, v8, v19);
  v23 = (*(v9 + 88))(v17, v8);
  if (v23 == enum case for MusicAppDestination.libraryArtistAlbumsPage(_:))
  {
    (*(v9 + 8))(a1, v8);
    (*(v9 + 96))(v17, v8);
    v24 = type metadata accessor for Artist();
    (*(*(v24 - 8) + 32))(v21, v17, v24);
LABEL_19:
    v57 = v80;
    swift_storeEnumTagMultiPayload();
    v58 = v81;
    sub_1003F2718(v21, v81, _s18AppPageDestinationOMa);
    v59 = 0;
    return (*(v79 + 56))(v58, v59, 1, v57);
  }

  if (v23 == enum case for MusicAppDestination.libraryComposerAlbumsPage(_:))
  {
    (*(v9 + 8))(a1, v8);
    (*(v9 + 96))(v17, v8);
    v25 = type metadata accessor for Composer();
    (*(*(v25 - 8) + 32))(v21, v17, v25);
    goto LABEL_19;
  }

  if (v23 == enum case for MusicAppDestination.libraryAlbumDetailPage(_:))
  {
    (*(v9 + 8))(a1, v8);
    (*(v9 + 96))(v17, v8);
    v26 = type metadata accessor for MusicAppDestination.AlbumDescriptor();
    (*(*(v26 - 8) + 32))(v21, v17, v26);
    goto LABEL_19;
  }

  if (v23 == enum case for MusicAppDestination.libraryPlaylistDetailPage(_:))
  {
    (*(v9 + 8))(a1, v8);
    (*(v9 + 96))(v17, v8);
    v27 = type metadata accessor for Playlist();
    (*(*(v27 - 8) + 32))(v21, v17, v27);
    goto LABEL_19;
  }

  if (v23 == enum case for MusicAppDestination.libraryPlaylistFolderDetailPage(_:))
  {
    (*(v9 + 8))(a1, v8);
    (*(v9 + 96))(v17, v8);
    v28 = type metadata accessor for Playlist.Folder();
    (*(*(v28 - 8) + 32))(v21, v17, v28);
    goto LABEL_19;
  }

  if (v23 == enum case for MusicAppDestination.catalogAlbumDetailPage(_:))
  {
    (*(v9 + 8))(a1, v8);
    (*(v9 + 96))(v17, v8);
    v29 = *(sub_10010FC20(&qword_10118E040) + 48);
    v30 = *(v17 + v29);
    v31 = *(v17 + v29 + 8);
    v32 = &v21[v29];
    v33 = type metadata accessor for MusicAppDestination.AlbumDescriptor();
    (*(*(v33 - 8) + 32))(v21, v17, v33);
    *v32 = v30;
    *(v32 + 1) = v31;
    goto LABEL_19;
  }

  if (v23 == enum case for MusicAppDestination.catalogPlaylistDetailPage(_:))
  {
    (*(v9 + 8))(a1, v8);
    (*(v9 + 96))(v17, v8);
    v34 = (v17 + *(sub_10010FC20(&qword_10118E070) + 48));
    v35 = *v34;
    v36 = v34[1];
    v37 = sub_10010FC20(&qword_10118E038);
    v38 = &v21[*(v37 + 48)];
    v39 = *(v37 + 64);
    (*(v75 + 32))(v21, v17, v76);
    *v38 = v35;
    *(v38 + 1) = v36;
    (*(v77 + 56))(&v21[v39], 1, 1, v78);
    goto LABEL_19;
  }

  if (v23 == enum case for MusicAppDestination.collaborativePlaylistDetailPage(_:))
  {
    (*(v9 + 8))(a1, v8);
    (*(v9 + 96))(v17, v8);
    v40 = *(sub_10010FC20(&qword_10118E068) + 48);
    v41 = v76;
    v73 = *(v75 + 32);
    v73(v7, v17, v76);
    v42 = v77;
    v75 = *(v77 + 32);
    v43 = v17 + v40;
    v44 = v74;
    v45 = v78;
    (v75)(v74, v43, v78);
    v46 = sub_10010FC20(&qword_10118E038);
    v47 = &v21[*(v46 + 48)];
    v48 = *(v46 + 64);
    v73(v21, v7, v41);
    *v47 = 0;
    *(v47 + 1) = 0;
    (v75)(&v21[v48], v44, v45);
    (*(v42 + 56))(&v21[v48], 0, 1, v45);
    goto LABEL_19;
  }

  if (v23 == enum case for MusicAppDestination.sharedLyrics(_:))
  {
    (*(v9 + 8))(a1, v8);
    (*(v9 + 96))(v17, v8);
    v49 = *v17;
    v50 = v17[1];
    v51 = sub_10010FC20(&qword_10118E030);
    v52 = *(v77 + 32);
    v53 = v17 + *(v51 + 48);
    v54 = v74;
    v55 = v78;
    v52(v74, v53, v78);
    v56 = *(v51 + 48);
    *v21 = v49;
    *(v21 + 1) = v50;
    v52(&v21[v56], v54, v55);
    goto LABEL_19;
  }

  if (qword_10117FC68 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_1000060E4(v61, qword_1012194A8);
  (v22)(v14, a1, v8);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v78 = a1;
    v65 = v64;
    v76 = v64;
    v77 = swift_slowAlloc();
    v82 = v77;
    *v65 = 136446210;
    (v22)(v11, v14, v8);
    v66 = String.init<A>(describing:)();
    v68 = v67;
    v69 = *(v9 + 8);
    v69(v14, v8);
    v70 = sub_1000105AC(v66, v68, &v82);

    v71 = v76;
    *(v76 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v62, v63, "Unhandled MUI Destination=%{public}s", v71, 0xCu);
    sub_10000959C(v77);

    v72 = v78;
  }

  else
  {

    v69 = *(v9 + 8);
    v69(a1, v8);
    v72 = v14;
  }

  v69(v72, v8);
  v57 = v80;
  v58 = v81;
  v69(v17, v8);
  v59 = 1;
  return (*(v79 + 56))(v58, v59, 1, v57);
}

uint64_t sub_1003E2384()
{
  v1 = _s18AppPageDestinationOMa(0);
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003F2650(v0, v3, _s18AppPageDestinationOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_1003F26B8(v3, _s18AppPageDestinationOMa);
        return 0x7265736F706D6F63;
      }

      else
      {

        v8 = *(sub_10010FC20(&qword_10118E030) + 48);
        v9 = type metadata accessor for URL();
        (*(*(v9 - 8) + 8))(&v3[v8], v9);
        return 0x79616C705F776F6ELL;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v5 = 0x7473696C79616C70;
      sub_1003F26B8(v3, _s18AppPageDestinationOMa);
    }

    else
    {
      sub_1003F26B8(v3, _s18AppPageDestinationOMa);
      return 0x5F7972617262696CLL;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v5 = 0x65645F6D75626C61;
    }

    else
    {
      v5 = 0x7473696C79616C70;
    }

    sub_1003F26B8(v3, _s18AppPageDestinationOMa);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v5 = 0x7473696C79616C70;
      v7 = sub_10010FC20(&qword_10118E038);

      sub_1000095E8(&v3[*(v7 + 64)], &qword_101183A20);
      v6 = type metadata accessor for MusicAppDestination.PlaylistDescriptor();
    }

    else
    {
      v5 = 0x65645F6D75626C61;
      sub_10010FC20(&qword_10118E040);

      v6 = type metadata accessor for MusicAppDestination.AlbumDescriptor();
    }

    (*(*(v6 - 8) + 8))(v3, v6);
  }

  return v5;
}

uint64_t sub_1003E26D8(uint64_t a1)
{
  v71 = a1;
  v1 = type metadata accessor for Composer();
  v65 = *(v1 - 8);
  v66 = v1;
  __chkstk_darwin(v1);
  v62 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Artist();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Playlist.Folder();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Playlist();
  v54 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v68 = *(v10 - 8);
  v69 = v10;
  __chkstk_darwin(v10);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v12 - 8);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v61 = &v54 - v16;
  v17 = type metadata accessor for MusicAppDestination.PlaylistDescriptor();
  v63 = *(v17 - 8);
  v64 = v17;
  __chkstk_darwin(v17);
  v59 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MusicAppDestination.AlbumDescriptor();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v54 - v24;
  v26 = _s18AppPageDestinationOMa(0);
  __chkstk_darwin(v26);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003F2650(v70, v28, _s18AppPageDestinationOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v47 = sub_10010FC20(&qword_10118E030);
        v49 = v67;
        v48 = v68;
        v50 = v69;
        (*(v68 + 32))(v67, &v28[*(v47 + 48)], v69);
        Hasher._combine(_:)(7uLL);
        String.hash(into:)();

        sub_1000340AC(&qword_10118E048, &type metadata accessor for URL);
        dispatch thunk of Hashable.hash(into:)();
        return (*(v48 + 8))(v49, v50);
      }

      v35 = v65;
      v34 = v66;
      v36 = v62;
      (*(v65 + 32))(v62, v28, v66);
      Hasher._combine(_:)(6uLL);
      v37 = &qword_101188E78;
      v38 = &type metadata accessor for Composer;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v32 = v55;
        v31 = v56;
        (*(v55 + 32))(v6, v28, v56);
        Hasher._combine(_:)(4uLL);
        sub_1000340AC(&qword_101183200, &type metadata accessor for Playlist.Folder);
        dispatch thunk of Hashable.hash(into:)();
        return (*(v32 + 8))(v6, v31);
      }

      v36 = v57;
      v35 = v58;
      v34 = v60;
      (*(v58 + 32))(v57, v28, v60);
      Hasher._combine(_:)(5uLL);
      v37 = &qword_101188E70;
      v38 = &type metadata accessor for Artist;
    }

    sub_1000340AC(v37, v38);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v35 + 8))(v36, v34);
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v20 + 32))(v22, v28, v19);
      Hasher._combine(_:)(2uLL);
      sub_1000340AC(&qword_10118E058, &type metadata accessor for MusicAppDestination.AlbumDescriptor);
      dispatch thunk of Hashable.hash(into:)();
      return (*(v20 + 8))(v22, v19);
    }

    else
    {
      v46 = v54;
      (*(v54 + 32))(v9, v28, v7);
      Hasher._combine(_:)(3uLL);
      sub_1000340AC(&qword_10118E050, &type metadata accessor for Playlist);
      dispatch thunk of Hashable.hash(into:)();
      return (*(v46 + 8))(v9, v7);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v39 = sub_10010FC20(&qword_10118E038);
    v40 = *&v28[*(v39 + 48) + 8];
    v41 = *(v39 + 64);
    v43 = v63;
    v42 = v64;
    v44 = v59;
    (*(v63 + 32))(v59, v28, v64);
    v45 = v61;
    sub_100027998(&v28[v41], v61);
    Hasher._combine(_:)(1uLL);
    sub_1000340AC(&qword_10118E060, &type metadata accessor for MusicAppDestination.PlaylistDescriptor);
    dispatch thunk of Hashable.hash(into:)();
    if (v40)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    sub_1000089F8(v45, v14, &qword_101183A20);
    v52 = v68;
    v51 = v69;
    if ((*(v68 + 48))(v14, 1, v69) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v53 = v67;
      (*(v52 + 32))(v67, v14, v51);
      Hasher._combine(_:)(1u);
      sub_1000340AC(&qword_10118E048, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      (*(v52 + 8))(v53, v51);
    }

    sub_1000095E8(v45, &qword_101183A20);
    return (*(v43 + 8))(v44, v42);
  }

  else
  {
    v30 = *&v28[*(sub_10010FC20(&qword_10118E040) + 48) + 8];
    (*(v20 + 32))(v25, v28, v19);
    Hasher._combine(_:)(0);
    sub_1000340AC(&qword_10118E058, &type metadata accessor for MusicAppDestination.AlbumDescriptor);
    dispatch thunk of Hashable.hash(into:)();
    if (v30)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    return (*(v20 + 8))(v25, v19);
  }
}

void sub_1003E3240()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v1 = Strong;
  v2 = [Strong view];

  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = UIView.findPresentationSourceView<A>(id:)();

  if (!v3)
  {
LABEL_4:
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [v4 view];
    }
  }
}

uint64_t sub_1003E3338()
{
  v2 = *v1;
  v2[25] = v0;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[26] = v4;
  v2[27] = v3;
  if (v0)
  {
    v5 = sub_1003E3D5C;
  }

  else
  {
    v5 = sub_1003E3498;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003E3498()
{
  AsyncStream.makeAsyncIterator()();
  v1 = static MainActor.shared.getter();
  v0[28] = v1;
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_1003E355C;
  v3 = v0[15];
  v4 = v0[16];

  return AsyncStream.Iterator.next(isolation:)(v3, v1, &protocol witness table for MainActor, v4);
}

uint64_t sub_1003E355C()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return _swift_task_switch(sub_1003E36A0, v3, v2);
}

uint64_t sub_1003E36A0()
{
  v63 = v0;
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[11];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[20];
    v4 = v0[21];
    v7 = v0[18];
    v6 = v0[19];
    v8 = v0[16];
    v9 = v0[17];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);

    v10 = v0[1];

    return v10();
  }

  else
  {
    (*(v3 + 32))(v0[14], v1, v2);
    if (qword_10117FC68 != -1)
    {
      swift_once();
    }

    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[10];
    v15 = v0[11];
    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_1012194A8);
    v17 = *(v15 + 16);
    v17(v13, v12, v14);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[13];
    if (v20)
    {
      v22 = v0[11];
      v23 = v0[12];
      v24 = v0[10];
      v25 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v62 = v60;
      *v25 = 136446210;
      v17(v23, v21, v24);
      v26 = String.init<A>(describing:)();
      v61 = v17;
      v28 = v27;
      v29 = v24;
      v30 = *(v22 + 8);
      v30(v21, v29);
      v31 = sub_1000105AC(v26, v28, &v62);
      v17 = v61;

      *(v25 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v18, v19, "Received 👽 Notice: %{public}s", v25, 0xCu);
      sub_10000959C(v60);
    }

    else
    {
      v32 = v0[10];
      v33 = v0[11];

      v30 = *(v33 + 8);
      v30(v21, v32);
    }

    v34 = v0[12];
    v35 = v0[5];
    v36 = v0[6];
    v37 = v0[4];
    v17(v34, v0[14], v0[10]);
    sub_1003E3FA4(v34, v37);
    if ((*(v36 + 48))(v37, 1, v35) == 1)
    {
      sub_1000095E8(v0[4], &unk_10118B980);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Unable to parse 👽 notice as a Music.app notice", v40, 2u);
      }
    }

    else
    {
      v42 = v0[8];
      v41 = v0[9];
      sub_1003F2718(v0[4], v41, type metadata accessor for Notice);
      sub_1003F2650(v41, v42, type metadata accessor for Notice);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      v45 = os_log_type_enabled(v43, v44);
      v46 = v0[8];
      if (v45)
      {
        v47 = v0[7];
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v62 = v49;
        *v48 = 136446210;
        sub_1003F2650(v46, v47, type metadata accessor for Notice);
        v50 = String.init<A>(describing:)();
        v52 = v51;
        sub_1003F26B8(v46, type metadata accessor for Notice);
        v53 = sub_1000105AC(v50, v52, &v62);

        *(v48 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v43, v44, "Presenting 👽 notice as %{public}s", v48, 0xCu);
        sub_10000959C(v49);
      }

      else
      {

        sub_1003F26B8(v46, type metadata accessor for Notice);
      }

      v54 = (*(v0[3] + 32) & 0x7FFFFFFFFFFFFFFFLL);
      v55 = UIViewController.noticePresenter.getter();

      if (v55)
      {
        (*(*v55 + 200))(v0[9], 0);
      }

      sub_1003F26B8(v0[9], type metadata accessor for Notice);
    }

    v30(v0[14], v0[10]);
    v56 = static MainActor.shared.getter();
    v0[28] = v56;
    v57 = swift_task_alloc();
    v0[29] = v57;
    *v57 = v0;
    v57[1] = sub_1003E355C;
    v58 = v0[15];
    v59 = v0[16];

    return AsyncStream.Iterator.next(isolation:)(v58, v56, &protocol witness table for MainActor, v59);
  }
}

uint64_t sub_1003E3D5C()
{
  v14 = v0;

  if (qword_10117FC68 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1012194A8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[25];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to observe for MusicUI notices. %{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003E3FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Notice.Variant(0);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicNotice();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Notice(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v8 + 88))(v10, v7);
  if (v15 == enum case for MusicNotice.favorite(_:) || v15 == enum case for MusicNotice.unfavorite(_:) || v15 == enum case for MusicNotice.addToLibrary(_:))
  {
    goto LABEL_4;
  }

  if (v15 == enum case for MusicNotice.follow(_:) || v15 == enum case for MusicNotice.unfollow(_:) || v15 == enum case for MusicNotice.block(_:))
  {
    (*(v8 + 8))(a1, v7);
LABEL_10:
    v16 = 1;
    return (*(v12 + 56))(a2, v16, 1, v11);
  }

  if (v15 != enum case for MusicNotice.suggestLess(_:) && v15 != enum case for MusicNotice.playNext(_:) && v15 != enum case for MusicNotice.playLast(_:) && v15 != enum case for MusicNotice.addToQueue(_:) && v15 != enum case for MusicNotice.playAfter(_:))
  {
    v18 = *(v8 + 8);
    v18(a1, v7);
    v18(v10, v7);
    goto LABEL_10;
  }

LABEL_4:
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v6, v14);
  (*(v8 + 8))(a1, v7);
  sub_1003F26B8(v6, type metadata accessor for Notice.Variant);
  sub_1003F2718(v14, a2, type metadata accessor for Notice);
  v16 = 0;
  return (*(v12 + 56))(a2, v16, 1, v11);
}

uint64_t sub_1003E4358()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_1003E4AA8;
  }

  else
  {
    v5 = sub_1003E44B8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003E44B8()
{
  AsyncStream.makeAsyncIterator()();
  v1 = static MainActor.shared.getter();
  v0[21] = v1;
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_1003E457C;
  v3 = v0[8];
  v4 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v3, v1, &protocol witness table for MainActor, v4);
}

uint64_t sub_1003E457C()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_1003E46C0, v3, v2);
}

uint64_t sub_1003E46C0()
{
  v41 = v0;
  v1 = v0[8];
  v2 = v0[3];
  v3 = v0[4];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[13];
    v4 = v0[14];
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[9];
    v9 = v0[10];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);

    v10 = v0[1];

    return v10();
  }

  else
  {
    (*(v3 + 32))(v0[7], v1, v2);
    if (qword_10117F658 != -1)
    {
      swift_once();
    }

    v12 = v0[6];
    v13 = v0[7];
    v14 = v0[3];
    v15 = v0[4];
    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_101218B30);
    v17 = *(v15 + 16);
    v17(v12, v13, v14);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[6];
    if (v20)
    {
      v22 = v0[4];
      v23 = v0[5];
      v24 = v0[3];
      v25 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v25 = 136446210;
      v17(v23, v21, v24);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      v29 = *(v22 + 8);
      v29(v21, v24);
      v30 = sub_1000105AC(v26, v28, &v40);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v18, v19, "Received MusicUI MLI Status: %{public}s", v25, 0xCu);
      sub_10000959C(v39);
    }

    else
    {
      v31 = v0[3];
      v32 = v0[4];

      v29 = *(v32 + 8);
      v29(v21, v31);
    }

    if (qword_10117F630 != -1)
    {
      swift_once();
    }

    v33 = v0[7];
    v34 = v0[3];
    sub_1003670A4(v33);
    v29(v33, v34);
    v35 = static MainActor.shared.getter();
    v0[21] = v35;
    v36 = swift_task_alloc();
    v0[22] = v36;
    *v36 = v0;
    v36[1] = sub_1003E457C;
    v37 = v0[8];
    v38 = v0[9];

    return AsyncStream.Iterator.next(isolation:)(v37, v35, &protocol witness table for MainActor, v38);
  }
}

uint64_t sub_1003E4AA8()
{
  v14 = v0;

  if (qword_10117F658 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101218B30);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[18];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to observe for MusicUI MLI Status updates. %{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003E4CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = a2;
  v10[5] = a3;
  sub_1001F4CB8(0, 0, v7, &unk_100ECA510, v10);
}

uint64_t sub_1003E4DE4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1001AB600;

  return v8();
}

uint64_t sub_1003E4EF4(uint64_t a1)
{
  v1[24] = a1;
  sub_10010FC20(&unk_1011838D0);
  v1[25] = swift_task_alloc();
  v1[26] = type metadata accessor for Notice.Variant(0);
  v1[27] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[28] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003E4FF4, v3, v2);
}

uint64_t sub_1003E4FF4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 32);
    if (v2 >= 0)
    {
      v3 = *(Strong + 32);
    }

    else
    {
      v3 = (v2 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = (v2 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = UIViewController.noticePresenter.getter();
    if (v5)
    {
      v6 = v5;
      v7 = *(v0 + 216);
      swift_storeEnumTagMultiPayload();
      (*(*v6 + 192))(v7, 0);

      sub_1003F26B8(v7, type metadata accessor for Notice.Variant);
    }

    v8 = *(v0 + 200);
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0;
    *(v0 + 152) = xmmword_100EBCEF0;
    v9 = v4;
    PresentationSource.init(viewController:position:)(v3, v0 + 112, v0 + 16);
    v10 = type metadata accessor for Actions.MetricsReportingContext();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(0, 0, v8);

    sub_1000095E8(v8, &unk_1011838D0);
    sub_10012BA6C(v0 + 16);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1003E51DC(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = type metadata accessor for Notice.Variant(0);
  v1[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003E52A4, v3, v2);
}

uint64_t sub_1003E52A4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = (*(Strong + 32) & 0x7FFFFFFFFFFFFFFFLL);

    v3 = UIViewController.noticePresenter.getter();

    if (v3)
    {
      v4 = *(v0 + 56);
      swift_storeEnumTagMultiPayload();
      (*(*v3 + 192))(v4, 0);

      sub_1003F26B8(v4, type metadata accessor for Notice.Variant);
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1003E53CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s23AppSheetPageDestinationOMa(0);
  v19 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for MusicAppDestination();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 88))(a1, v7);
  if (v9 == enum case for MusicAppDestination.createOrAddToPlaylistPage(_:))
  {
    (*(v8 + 96))(a1, v7);
    *v6 = *a1;
LABEL_16:
    swift_storeEnumTagMultiPayload();
    sub_1003F2718(v6, a2, _s23AppSheetPageDestinationOMa);
    return (*(v19 + 56))(a2, 0, 1, v4);
  }

  if (v9 == enum case for MusicAppDestination.moveToFolderPage(_:))
  {
    goto LABEL_4;
  }

  if (v9 == enum case for MusicAppDestination.viewLyricsPage(_:))
  {
    (*(v8 + 96))(a1, v7);
    v11 = type metadata accessor for Song();
    (*(*(v11 - 8) + 32))(v6, a1, v11);
    goto LABEL_16;
  }

  if (v9 == enum case for MusicAppDestination.reportAConcern(_:))
  {
    (*(v8 + 96))(a1, v7);
    v12 = type metadata accessor for ReportableMusicItem();
    (*(*(v12 - 8) + 32))(v6, a1, v12);
    goto LABEL_16;
  }

  if (v9 == enum case for MusicAppDestination.share(_:))
  {
    (*(v8 + 96))(a1, v7);
    v13 = type metadata accessor for ShareableMusicItem();
    (*(*(v13 - 8) + 32))(v6, a1, v13);
    goto LABEL_16;
  }

  if (v9 == enum case for MusicAppDestination.collaborate(_:))
  {
LABEL_4:
    (*(v8 + 96))(a1, v7);
    v10 = type metadata accessor for Playlist();
    (*(*(v10 - 8) + 32))(v6, a1, v10);
    goto LABEL_16;
  }

  if (v9 == enum case for MusicAppDestination.classicalAppStorePage(_:))
  {
    (*(v8 + 96))(a1, v7);
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 32))(v6, a1, v14);
    goto LABEL_16;
  }

  if (v9 == enum case for MusicAppDestination.sharePage(_:))
  {
    (*(v8 + 96))(a1, v7);
    v15 = type metadata accessor for MusicAppDestination.SharePageDescriptor();
    (*(*(v15 - 8) + 32))(v6, a1, v15);
    goto LABEL_16;
  }

  (*(v8 + 8))(a1, v7);
  v17 = *(v19 + 56);

  return v17(a2, 1, 1, v4);
}

uint64_t sub_1003E58C8(uint64_t a1)
{
  v53 = a1;
  v41 = type metadata accessor for URL();
  v51 = *(v41 - 8);
  __chkstk_darwin(v41);
  v50 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for MusicAppDestination.SharePageDescriptor();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v47 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ShareableMusicItem();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReportableMusicItem();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Song();
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Playlist();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PlaylistAddableItem();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s23AppSheetPageDestinationOMa(0);
  __chkstk_darwin(v19);
  v21 = (&v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003F2650(v52, v21, _s23AppSheetPageDestinationOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v33 = v47;
        v32 = v48;
        v31 = v49;
        (*(v48 + 32))(v47, v21, v49);
        Hasher._combine(_:)(6uLL);
        v34 = &unk_10118E080;
        v35 = &type metadata accessor for MusicAppDestination.SharePageDescriptor;
      }

      else
      {
        v33 = v50;
        v32 = v51;
        v31 = v41;
        (*(v51 + 32))(v50, v21, v41);
        Hasher._combine(_:)(7uLL);
        v34 = &qword_10118E048;
        v35 = &type metadata accessor for URL;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v32 = v42;
      v31 = v43;
      v33 = v40;
      (*(v42 + 32))(v40, v21, v43);
      Hasher._combine(_:)(4uLL);
      v34 = &unk_10118E090;
      v35 = &type metadata accessor for ReportableMusicItem;
    }

    else
    {
      v33 = v44;
      v32 = v45;
      v31 = v46;
      (*(v45 + 32))(v44, v21, v46);
      Hasher._combine(_:)(5uLL);
      v34 = &unk_10118E088;
      v35 = &type metadata accessor for ShareableMusicItem;
    }

    sub_1000340AC(v34, v35);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v32 + 8))(v33, v31);
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v12 + 32))(v14, v21, v11);
      Hasher._combine(_:)(2uLL);
      sub_1000340AC(&qword_10118E050, &type metadata accessor for Playlist);
      dispatch thunk of Hashable.hash(into:)();
      return (*(v12 + 8))(v14, v11);
    }

    else
    {
      v37 = v39;
      (*(v39 + 32))(v10, v21, v8);
      Hasher._combine(_:)(3uLL);
      sub_1000340AC(&unk_10118D020, &type metadata accessor for Song);
      dispatch thunk of Hashable.hash(into:)();
      return (*(v37 + 8))(v10, v8);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v12 + 32))(v14, v21, v11);
    Hasher._combine(_:)(1uLL);
    sub_1000340AC(&qword_10118E050, &type metadata accessor for Playlist);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v23 = *v21;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(*(v23 + 16));
    v24 = *(v23 + 16);
    if (v24)
    {
      v27 = *(v16 + 16);
      v26 = v16 + 16;
      v25 = v27;
      v28 = (*(v26 + 64) + 32) & ~*(v26 + 64);
      v52 = v23;
      v29 = v23 + v28;
      v30 = *(v26 + 56);
      do
      {
        v25(v18, v29, v15);
        sub_1000340AC(&qword_10118E098, &type metadata accessor for PlaylistAddableItem);
        dispatch thunk of Hashable.hash(into:)();
        (*(v26 - 8))(v18, v15);
        v29 += v30;
        --v24;
      }

      while (v24);
    }
  }
}

Swift::Int sub_1003E617C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1003E61E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_1003E6228(void (*a1)(char *, uint64_t))
{
  v2 = type metadata accessor for URL();
  v468 = *(v2 - 8);
  v469 = v2;
  __chkstk_darwin(v2);
  v466 = v3;
  v467 = &v419 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v488 = &v419 - v5;
  v6 = type metadata accessor for MusicAppDestination.SharePageDescriptor.Kind();
  v441 = *(v6 - 8);
  v442 = v6;
  __chkstk_darwin(v6);
  v440 = &v419 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MusicAppDestination.SharePageDescriptor.Source();
  v464 = *(v8 - 8);
  v465 = v8;
  __chkstk_darwin(v8);
  v463 = (&v419 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v497 = type metadata accessor for MusicAppDestination.SharePageDescriptor();
  v496 = *(v497 - 8);
  __chkstk_darwin(v497);
  v495 = &v419 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v447 = type metadata accessor for ShareURLDescriptor();
  v445 = *(v447 - 8);
  __chkstk_darwin(v447);
  v433 = &v419 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v429 = &v419 - v13;
  v432 = v14;
  __chkstk_darwin(v15);
  v446 = &v419 - v16;
  v472 = type metadata accessor for MusicFriendsInviteDescriptor();
  v470 = *(v472 - 8);
  __chkstk_darwin(v472);
  v444 = &v419 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v439 = &v419 - v19;
  v443 = v20;
  __chkstk_darwin(v21);
  v471 = &v419 - v22;
  v448 = type metadata accessor for SocialProfileDescriptor();
  v430 = *(v448 - 8);
  __chkstk_darwin(v448);
  v437 = &v419 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v425 = &v419 - v25;
  v426 = v26;
  __chkstk_darwin(v27);
  v431 = &v419 - v28;
  v29 = type metadata accessor for ShareableMusicItem();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v421 = &v419 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v422 = &v419 - v33;
  __chkstk_darwin(v34);
  v474 = &v419 - v35;
  __chkstk_darwin(v36);
  v38 = &v419 - v37;
  v476 = type metadata accessor for ReportableMusicItem();
  v481 = *(v476 - 8);
  __chkstk_darwin(v476);
  v428 = &v419 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v436 = &v419 - v41;
  __chkstk_darwin(v42);
  v480 = &v419 - v43;
  v489 = type metadata accessor for AppInterfaceContext.Activity(0);
  v490 = *(v489 - 8);
  __chkstk_darwin(v489);
  v492 = &v419 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v493 = &v419 - v46;
  v491 = v47;
  __chkstk_darwin(v48);
  v494 = (&v419 - v49);
  v486 = type metadata accessor for Song();
  v458 = *(v486 - 8);
  __chkstk_darwin(v486);
  v456 = &v419 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v485 = &v419 - v52;
  v53 = type metadata accessor for Playlist.Folder.Item();
  v451 = *(v53 - 8);
  v452 = v53;
  __chkstk_darwin(v53);
  v453 = &v419 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Actions.Collaborate.Context();
  v459 = *(v55 - 8);
  __chkstk_darwin(v55 - 8);
  v460 = v56;
  v461 = &v419 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v462 = &v419 - v58;
  v487 = type metadata accessor for Playlist();
  v499 = *(v487 - 8);
  __chkstk_darwin(v487);
  v457 = &v419 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v455 = &v419 - v61;
  __chkstk_darwin(v62);
  v483 = &v419 - v63;
  __chkstk_darwin(v64);
  v484 = &v419 - v65;
  v454 = v66;
  __chkstk_darwin(v67);
  v500 = &v419 - v68;
  v69 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v69 - 8);
  v501 = &v419 - v70;
  v71 = sub_10010FC20(&unk_1011838D0);
  __chkstk_darwin(v71 - 8);
  v475 = &v419 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v473 = &v419 - v74;
  __chkstk_darwin(v75);
  v503 = &v419 - v76;
  v510 = type metadata accessor for PlaylistAddableItem();
  isa = v510[-1].isa;
  __chkstk_darwin(v510);
  v424 = &v419 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v78);
  v509 = &v419 - v79;
  v507 = _s23AppSheetPageDestinationOMa(0);
  __chkstk_darwin(v507);
  v508 = (&v419 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v81);
  v83 = &v419 - v82;
  __chkstk_darwin(v84);
  v86 = &v419 - v85;
  v87 = type metadata accessor for Logger();
  v88 = *(v87 - 8);
  __chkstk_darwin(v87);
  v423 = &v419 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v90);
  v434 = &v419 - v91;
  __chkstk_darwin(v92);
  v438 = &v419 - v93;
  __chkstk_darwin(v94);
  v427 = &v419 - v95;
  __chkstk_darwin(v96);
  v450 = &v419 - v97;
  __chkstk_darwin(v98);
  v435 = &v419 - v99;
  __chkstk_darwin(v100);
  v102 = &v419 - v101;
  v103 = Logger.actions.unsafeMutableAddressor();
  v506 = v88;
  v104 = *(v88 + 16);
  v477 = v103;
  v478 = v104;
  v504 = v87;
  v479 = v88 + 16;
  (v104)(v102);
  v502 = a1;
  sub_1003F2650(a1, v86, _s23AppSheetPageDestinationOMa);
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.default.getter();
  v107 = os_log_type_enabled(v105, v106);
  v482 = v38;
  if (v107)
  {
    v108 = swift_slowAlloc();
    v498 = v29;
    v109 = v108;
    v110 = swift_slowAlloc();
    *&v516 = v110;
    *v109 = 136446210;
    sub_1003F2650(v86, v83, _s23AppSheetPageDestinationOMa);
    v111 = String.init<A>(describing:)();
    v112 = v30;
    v114 = v113;
    sub_1003F26B8(v86, _s23AppSheetPageDestinationOMa);
    v115 = sub_1000105AC(v111, v114, &v516);

    *(v109 + 4) = v115;
    _os_log_impl(&_mh_execute_header, v105, v106, "[MusicUI Actions] Called presentSheetPage with destination=%{public}s", v109, 0xCu);
    sub_10000959C(v110);
    v116 = v505;

    v29 = v498;

    v117 = *(v506 + 8);
    v118 = v504;
    v117(v102, v504);
  }

  else
  {
    v112 = v30;

    sub_1003F26B8(v86, _s23AppSheetPageDestinationOMa);
    v117 = *(v506 + 8);
    v118 = v504;
    v117(v102, v504);
    v116 = v505;
  }

  v119 = v116[4];
  v120 = (v119 & 0x7FFFFFFFFFFFFFFFLL);
  if (v119 >= 0)
  {
    v121 = v116[4];
  }

  else
  {
    v121 = (v119 & 0x7FFFFFFFFFFFFFFFLL);
  }

  sub_1003F2650(v502, v508, _s23AppSheetPageDestinationOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v166 = v495;
        v167 = (*(v496 + 32))(v495, v508, v497);
        __chkstk_darwin(v167);
        v417 = v166;
        v418 = v116;
        v168 = v120;
        v169 = sub_10012BC18(sub_1003F6004, (&v419 - 4), &off_10109AC00);
        v170 = v463;
        MusicAppDestination.SharePageDescriptor.source.getter();
        v172 = v464;
        v171 = v465;
        v173 = (*(v464 + 88))(v170, v465);
        v174 = &unk_100EBC000;
        v510 = v168;
        if (v173 == enum case for MusicAppDestination.SharePageDescriptor.Source.data(_:))
        {
          (*(v172 + 96))(v170, v171);
          v175 = *v170;
          v176 = v170[1];
          sub_10010FC20(&qword_101181530);
          v177 = swift_allocObject();
          *(v177 + 1) = xmmword_100EBC6B0;
          sub_10002BC44(v175, v176);
          v178 = v440;
          MusicAppDestination.SharePageDescriptor.kind.getter();
          v179 = type metadata accessor for ShareAssetActivityItemProvider(0);
          v180 = objc_allocWithZone(v179);
          v181 = &v180[OBJC_IVAR____TtC5Music30ShareAssetActivityItemProvider_data];
          *v181 = v175;
          v181[1] = v176;
          v182 = v441;
          v183 = v442;
          (*(v441 + 16))(&v180[OBJC_IVAR____TtC5Music30ShareAssetActivityItemProvider_kind], v178, v442);
          v521.receiver = v180;
          v521.super_class = v179;
          v184 = objc_msgSendSuper2(&v521, "init");
          v185 = v178;
          v174 = &unk_100EBC000;
          (*(v182 + 8))(v185, v183);
          v177[7] = v179;
          v177[4] = v184;
          sub_10002C064(v175, v176);
        }

        else if (v173 == enum case for MusicAppDestination.SharePageDescriptor.Source.itemSource(_:))
        {
          (*(v172 + 96))(v170, v171);
          v262 = *v170;
          sub_10010FC20(&qword_101181530);
          v177 = swift_allocObject();
          *(v177 + 1) = xmmword_100EBC6B0;
          v177[7] = swift_getObjectType();
          v177[4] = v262;
        }

        else
        {
          (*(v172 + 8))(v170, v171);
          v177 = _swiftEmptyArrayStorage;
        }

        v323 = v492;
        if (v169 >> 62)
        {
          sub_100009F78(0, &unk_101183F50);

          v324 = _bridgeCocoaArray<A>(_:)();
          swift_bridgeObjectRelease_n();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_100009F78(0, &unk_101183F50);

          v324 = v169;
        }

        sub_10010FC20(&qword_101181538);
        v325 = swift_allocObject();
        *(v325 + 16) = v174[107];
        *(v325 + 32) = UIActivityTypeSharePlay;
        v326 = objc_allocWithZone(type metadata accessor for ActivityViewController());
        v327 = UIActivityTypeSharePlay;
        sub_1001260A8(v324, v177, v325, 0, 0, 0, 0);
        v329 = v328;
        v330 = v494;
        *v494 = v328;
        *(v330 + 8) = 1;
        *(v330 + 16) = &_swiftEmptySetSingleton;
        swift_storeEnumTagMultiPayload();
        v331 = v493;
        sub_1003F2650(v330, v493, type metadata accessor for AppInterfaceContext.Activity);
        sub_1003F2650(v331, v323, type metadata accessor for AppInterfaceContext.Activity);
        v332 = (*(v490 + 80) + 32) & ~*(v490 + 80);
        v333 = swift_allocObject();
        *(v333 + 16) = 0;
        *(v333 + 24) = 0;
        sub_1003F2718(v323, v333 + v332, type metadata accessor for AppInterfaceContext.Activity);
        v334 = v329;
        sub_100706900(v331, sub_100137E88, v333);

        sub_1003F26B8(v331, type metadata accessor for AppInterfaceContext.Activity);
        sub_1003F26B8(v330, type metadata accessor for AppInterfaceContext.Activity);
        return (*(v496 + 8))(v495, v497);
      }

      else
      {
        v253 = v468;
        v252 = v469;
        v510 = *(v468 + 32);
        v254 = v488;
        (v510)(v488, v508, v469);
        v255 = type metadata accessor for TaskPriority();
        (*(*(v255 - 8) + 56))(v501, 1, 1, v255);
        v256 = v467;
        (*(v253 + 16))(v467, v254, v252);
        type metadata accessor for MainActor();
        v509 = v120;
        v257 = static MainActor.shared.getter();
        v258 = (*(v253 + 80) + 32) & ~*(v253 + 80);
        v259 = (v466 + v258 + 7) & 0xFFFFFFFFFFFFFFF8;
        v260 = v121;
        v261 = swift_allocObject();
        *(v261 + 16) = v257;
        *(v261 + 24) = &protocol witness table for MainActor;
        (v510)(v261 + v258, v256, v252);
        *(v261 + v259) = v260;
        sub_10086E3AC(0, 0, v501, &unk_100ECA3A0, v261);

        return (*(v253 + 8))(v488, v252);
      }
    }

    v507 = v121;
    v420 = v117;
    if (EnumCaseMultiPayload != 4)
    {
      v419 = v120;
      v216 = v112;
      v217 = *(v112 + 32);
      v218 = v482;
      v217(v482, v508, v29);
      v219 = *(v216 + 16);
      v220 = v474;
      v219(v474, v218, v29);
      v221 = (*(v216 + 88))(v220, v29);
      v498 = v29;
      if (v221 == enum case for ShareableMusicItem.findFriendInvite(_:))
      {
        v510 = v216;
        (*(v216 + 96))(v220, v29);
        v223 = v470;
        v222 = v471;
        v224 = *(v470 + 32);
        v225 = v472;
        v509 = (v470 + 32);
        v508 = v224;
        (v224)(v471, v220, v472);
        v226 = v438;
        v478(v438, v477, v118);
        v227 = v439;
        v505 = *(v223 + 16);
        (v505)(v439, v222, v225);
        v503 = v419;
        v228 = Logger.logObject.getter();
        v229 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v228, v229))
        {
          v230 = swift_slowAlloc();
          v231 = swift_slowAlloc();
          *&v516 = v231;
          *v230 = 136446210;
          MusicFriendsInviteDescriptor.userProfileDescriptor.getter();
          v232 = String.init<A>(describing:)();
          v234 = v233;
          v235 = *(v470 + 8);
          v500 = ((v470 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v502 = v235;
          v235(v227, v472);
          v236 = sub_1000105AC(v232, v234, &v516);
          v225 = v472;

          *(v230 + 4) = v236;
          _os_log_impl(&_mh_execute_header, v228, v229, "[MusicUI Actions] Attempting to execute action=invite friend to social with descriptor=%{public}s", v230, 0xCu);
          sub_10000959C(v231);

          v223 = v470;

          v237 = v226;
          v238 = v504;
        }

        else
        {

          v313 = *(v223 + 8);
          v500 = ((v223 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v502 = v313;
          v313(v227, v225);
          v237 = v226;
          v238 = v118;
        }

        v420(v237, v238);
        v314 = type metadata accessor for TaskPriority();
        v315 = v501;
        (*(*(v314 - 8) + 56))(v501, 1, 1, v314);
        v316 = v444;
        v317 = v471;
        (v505)(v444, v471, v225);
        type metadata accessor for MainActor();
        v318 = v503;
        v319 = static MainActor.shared.getter();
        v320 = (*(v223 + 80) + 32) & ~*(v223 + 80);
        v321 = (v443 + v320 + 7) & 0xFFFFFFFFFFFFFFF8;
        v322 = swift_allocObject();
        *(v322 + 16) = v319;
        *(v322 + 24) = &protocol witness table for MainActor;
        (v508)(v322 + v320, v316, v225);
        *(v322 + v321) = v507;
        sub_1001F4CB8(0, 0, v315, &unk_100ECA3E0, v322);

        v502(v317, v225);
      }

      else
      {
        if (v221 == enum case for ShareableMusicItem.shareURL(_:))
        {
          v510 = v216;
          (*(v216 + 96))(v220, v29);
          v264 = v445;
          v263 = v446;
          v265 = *(v445 + 32);
          v266 = v447;
          v509 = (v445 + 32);
          v508 = v265;
          (v265)(v446, v220, v447);
          v267 = v434;
          v478(v434, v477, v118);
          v268 = *(v264 + 16);
          v269 = v429;
          (v268)(v429, v263, v266);
          v505 = v419;
          v270 = Logger.logObject.getter();
          v271 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v270, v271))
          {
            v272 = swift_slowAlloc();
            v500 = v268;
            v273 = v272;
            v274 = swift_slowAlloc();
            *&v516 = v274;
            *v273 = 136446210;
            v275 = v433;
            (v500)(v433, v269, v266);
            v276 = String.init<A>(describing:)();
            v278 = v277;
            v279 = *(v445 + 8);
            v502 = ((v445 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v503 = v279;
            (v279)(v269, v447);
            v280 = sub_1000105AC(v276, v278, &v516);
            v266 = v447;

            *(v273 + 4) = v280;
            _os_log_impl(&_mh_execute_header, v270, v271, "[MusicUI Actions] Attempting to execute action=share for shareURLDescriptor=%{public}s", v273, 0xCu);
            sub_10000959C(v274);
            v264 = v445;

            v268 = v500;

            v420(v434, v504);
          }

          else
          {

            v353 = *(v264 + 8);
            v502 = ((v264 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v503 = v353;
            (v353)(v269, v266);
            v420(v267, v118);
            v275 = v433;
          }

          v354 = type metadata accessor for TaskPriority();
          v355 = v501;
          (*(*(v354 - 8) + 56))(v501, 1, 1, v354);
          v356 = v275;
          v357 = v275;
          v358 = v446;
          (v268)(v356, v446, v266);
          type metadata accessor for MainActor();
          v359 = v505;
          v360 = static MainActor.shared.getter();
          v361 = (*(v264 + 80) + 32) & ~*(v264 + 80);
          v362 = (v432 + v361 + 7) & 0xFFFFFFFFFFFFFFF8;
          v363 = swift_allocObject();
          *(v363 + 16) = v360;
          *(v363 + 24) = &protocol witness table for MainActor;
          (v508)(v363 + v361, v357, v266);
          *(v363 + v362) = v507;
          sub_1001F4CB8(0, 0, v355, &unk_100ECA3D0, v363);

          v364 = v358;
        }

        else
        {
          if (v221 != enum case for ShareableMusicItem.socialProfile(_:))
          {
            v365 = v419;
            sub_1003EDE74(&v516);
            if (*(&v517 + 1))
            {
              sub_100059A8C(&v516, v520);
              sub_100008FE4(v520, v519);
              v366 = v507;
              v367 = UIViewController.playActivityInformation.getter();
              v369 = v368;
              v371 = v370;
              v373 = v372;
              v525 = 0u;
              v526 = 0u;
              *&v527[0] = 0;
              *(v527 + 8) = xmmword_100EBCEF0;
              v510 = v365;
              PresentationSource.init(viewController:position:)(v366, &v525, &v516);
              v374 = type metadata accessor for Actions.MetricsReportingContext();
              v375 = v503;
              (*(*(v374 - 8) + 56))(v503, 1, 1, v374);
              v376 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
              sub_100008FE4(v519, v515);
              sub_100008FE4(v519, v514);
              sub_10012B7A8(&v516, &v511);
              v377 = swift_allocObject();
              sub_100059A8C(v514, v377 + 16);
              *(v377 + 56) = 2;
              *(v377 + 64) = v367;
              *(v377 + 72) = v369;
              *(v377 + 80) = v371;
              *(v377 + 88) = v373;
              sub_10012B828(&v511, v377 + 96);
              v378 = v473;
              sub_1000089F8(v375, v473, &unk_1011838D0);
              type metadata accessor for MusicLibrary();

              sub_10002D6A4(v371, v373);
              v379 = static MusicLibrary.shared.getter();
              Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)(v515, v379, v376, &unk_100ECA3B0, v377, v378, &v522);

              sub_100029CA4(v371, v373);
              sub_1000095E8(v375, &unk_1011838D0);
              sub_10012BA6C(&v516);
              sub_10000959C(v519);
              v380 = type metadata accessor for TaskPriority();
              v381 = v501;
              (*(*(v380 - 8) + 56))(v501, 1, 1, v380);
              v516 = *&v524[16];
              type metadata accessor for MainActor();

              sub_100118E9C(&v516, &v511);
              v382 = static MainActor.shared.getter();
              v383 = swift_allocObject();
              *(v383 + 16) = v382;
              *(v383 + 24) = &protocol witness table for MainActor;
              v384 = v523;
              *(v383 + 32) = v522;
              *(v383 + 48) = v384;
              v385 = *&v524[16];
              *(v383 + 64) = *v524;
              *(v383 + 80) = v385;
              sub_1001F4CB8(0, 0, v381, &unk_100ECA3C0, v383);

              sub_100015BB0(&v516);

              sub_10000959C(v520);
              v386 = *(v216 + 8);
              v387 = v498;
              v386(v482, v498);
              return (v386)(v474, v387);
            }

            else
            {
              sub_1000095E8(&v516, &qword_10118E0A8);
              v478(v423, v477, v118);
              v406 = v422;
              v219(v422, v218, v29);
              v407 = Logger.logObject.getter();
              v408 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v407, v408))
              {
                v409 = swift_slowAlloc();
                v510 = swift_slowAlloc();
                *&v516 = v510;
                *v409 = 136446210;
                v219(v421, v406, v498);
                v410 = String.init<A>(describing:)();
                v412 = v411;
                v413 = v406;
                v414 = *(v216 + 8);
                v414(v413, v498);
                v415 = sub_1000105AC(v410, v412, &v516);

                *(v409 + 4) = v415;
                _os_log_impl(&_mh_execute_header, v407, v408, "[MusicUI Actions] Failed to convert %{public}s to MusicCore.ShareableMusicItem", v409, 0xCu);
                sub_10000959C(v510);

                v29 = v498;

                v420(v423, v504);
                v414(v482, v29);
              }

              else
              {

                v416 = v406;
                v414 = *(v216 + 8);
                v414(v416, v29);
                v420(v423, v504);
                v414(v218, v29);
              }

              return (v414)(v474, v29);
            }
          }

          v510 = v216;
          (*(v216 + 96))(v220, v29);
          v336 = v430;
          v335 = v431;
          v337 = *(v430 + 32);
          v266 = v448;
          v509 = (v430 + 32);
          v508 = v337;
          (v337)(v431, v220, v448);
          v338 = v427;
          v478(v427, v477, v118);
          v339 = *(v336 + 16);
          v340 = v425;
          (v339)(v425, v335, v266);
          v505 = v419;
          v341 = Logger.logObject.getter();
          v342 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v341, v342))
          {
            v343 = swift_slowAlloc();
            v500 = v339;
            v344 = v343;
            v345 = swift_slowAlloc();
            *&v516 = v345;
            *v344 = 136446210;
            v346 = v437;
            (v500)(v437, v340, v266);
            v347 = String.init<A>(describing:)();
            v349 = v348;
            v350 = *(v430 + 8);
            v502 = ((v430 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v503 = v350;
            (v350)(v340, v448);
            v351 = sub_1000105AC(v347, v349, &v516);
            v266 = v448;

            *(v344 + 4) = v351;
            _os_log_impl(&_mh_execute_header, v341, v342, "[MusicUI Actions] Attempting to execute action=share for social profile with descriptor=%{public}s", v344, 0xCu);
            sub_10000959C(v345);
            v336 = v430;

            v339 = v500;

            v420(v427, v504);
          }

          else
          {

            v397 = *(v336 + 8);
            v502 = ((v336 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v503 = v397;
            (v397)(v340, v266);
            v420(v338, v118);
            v346 = v437;
          }

          v398 = type metadata accessor for TaskPriority();
          v399 = v501;
          (*(*(v398 - 8) + 56))(v501, 1, 1, v398);
          v400 = v431;
          (v339)(v346, v431, v266);
          type metadata accessor for MainActor();
          v401 = v505;
          v402 = static MainActor.shared.getter();
          v403 = (*(v336 + 80) + 32) & ~*(v336 + 80);
          v404 = (v426 + v403 + 7) & 0xFFFFFFFFFFFFFFF8;
          v405 = swift_allocObject();
          *(v405 + 16) = v402;
          *(v405 + 24) = &protocol witness table for MainActor;
          (v508)(v405 + v403, v346, v266);
          *(v405 + v404) = v507;
          sub_1001F4CB8(0, 0, v399, &unk_100ECA3F0, v405);

          v364 = v400;
        }

        (v503)(v364, v266);
      }

      return (v510[1].isa)(v482, v498);
    }

    v137 = v480;
    v136 = v481;
    v138 = v476;
    (*(v481 + 32))(v480, v508, v476);
    v139 = v120;
    v140 = sub_1003EC9E0();
    if (!v141)
    {
      v478(v450, v477, v118);
      v289 = *(v136 + 16);
      v290 = v436;
      v289(v436, v137, v138);
      v291 = Logger.logObject.getter();
      v292 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v291, v292))
      {
        v293 = swift_slowAlloc();
        v510 = v291;
        v294 = v293;
        v509 = swift_slowAlloc();
        *&v516 = v509;
        *v294 = 136446210;
        v289(v428, v290, v138);
        v295 = String.init<A>(describing:)();
        v297 = v296;
        v298 = *(v481 + 8);
        v298(v290, v138);
        v299 = sub_1000105AC(v295, v297, &v516);

        *(v294 + 4) = v299;
        v300 = v292;
        v301 = v510;
        _os_log_impl(&_mh_execute_header, v510, v300, "[MusicUI Actions] Failed to initialize report a concern context from MusicUI.ReportableMusicItem=%{public}s", v294, 0xCu);
        sub_10000959C(v509);

        v420(v450, v504);
        return (v298)(v480, v138);
      }

      else
      {

        v352 = *(v136 + 8);
        v352(v290, v138);
        v420(v450, v504);
        return (v352)(v137, v138);
      }
    }

    v144 = v140;
    v145 = v141;
    v146 = v143;
    v147 = v142;
    v511 = 0u;
    v512 = 0u;
    *&v513[0] = 0;
    *(v513 + 8) = xmmword_100EBCEF0;

    v148 = v139;

    PresentationSource.init(viewController:position:)(v507, &v511, &v516);
    v149 = type metadata accessor for Actions.MetricsReportingContext();
    (*(*(v149 - 8) + 56))(v475, 1, 1, v149);
    if (v147 > 2)
    {
      if (v147 == 3)
      {

        v150 = 0xE600000000000000;
        v151 = 0x747369747261;
        v152 = 39;
        goto LABEL_80;
      }

      if (v147 != 4)
      {

        v151 = 0;
        v150 = 0xE000000000000000;
        v152 = 43;
        goto LABEL_80;
      }
    }

    else
    {
      if (!v147)
      {

        v150 = 0xE800000000000000;
        v151 = 0x7473696C79616C70;
        v152 = 41;
        goto LABEL_80;
      }

      if (v147 == 1)
      {

        v150 = 0xED0000656C69666FLL;
        v151 = 0x72506C6169636F73;
        v152 = 42;
LABEL_80:
        v388 = swift_allocObject();
        *(v388 + 16) = v144;
        *(v388 + 24) = v145;
        *(v388 + 32) = v147;
        *(v388 + 40) = v146;
        sub_10012B828(&v516, v388 + 48);
        Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)(v144, v145, v151, v150, v152, variable initialization expression of _NSRange.NSRangeIterator.current, 0, &unk_100EBF410, &v522, v388, v475);
        v389 = type metadata accessor for TaskPriority();
        v390 = v501;
        (*(*(v389 - 8) + 56))(v501, 1, 1, v389);
        type metadata accessor for MainActor();

        v391 = static MainActor.shared.getter();
        v392 = swift_allocObject();
        *(v392 + 16) = v391;
        *(v392 + 24) = &protocol witness table for MainActor;
        v393 = v523;
        *(v392 + 32) = v522;
        *(v392 + 48) = v393;
        *(v392 + 64) = *v524;
        *(v392 + 80) = *&v524[16];
        sub_1001F4CB8(0, 0, v390, &unk_100ECA408, v392);

        return (*(v481 + 8))(v480, v476);
      }
    }

    if ((v147 - 3) < 2)
    {
      v152 = 39;
    }

    else
    {
      v152 = 40;
    }

    v150 = 0xE400000000000000;
    v151 = 1735290739;
    goto LABEL_80;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v153 = v500;
    if (EnumCaseMultiPayload == 2)
    {
      v154 = v499;
      v155 = v120;
      v156 = v487;
      (*(v499 + 32))(v500, v508, v487);
      v157 = v453;
      (*(v154 + 16))(v453, v153, v156);
      (*(v451 + 104))(v157, enum case for Playlist.Folder.Item.playlist(_:), v452);
      *&v511 = v116;
      type metadata accessor for MusicLibrary();
      v158 = v155;

      v159 = static MusicLibrary.shared.getter();
      Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(v157, v159, &v511, &type metadata for PlaylistPicker.Presenter, &off_1010AD928, &v516);
      v160 = type metadata accessor for TaskPriority();
      v161 = v501;
      (*(*(v160 - 8) + 56))(v501, 1, 1, v160);
      type metadata accessor for MainActor();

      v162 = static MainActor.shared.getter();
      v163 = swift_allocObject();
      *(v163 + 16) = v162;
      *(v163 + 24) = &protocol witness table for MainActor;
      v164 = v517;
      *(v163 + 32) = v516;
      *(v163 + 48) = v164;
      *(v163 + 64) = v518;
      sub_1001F4CB8(0, 0, v161, &unk_100ECA418, v163);

      return (*(v154 + 8))(v153, v156);
    }

    else
    {
      v239 = v458;
      v240 = v485;
      v241 = v486;
      (*(v458 + 32))(v485, v508, v486);
      v242 = v456;
      (*(v239 + 16))(v456, v240, v241);
      v243 = objc_allocWithZone(type metadata accessor for StaticLyricsViewController());
      v510 = v120;
      v244 = sub_100336758(v242, 0, 1);
      v245 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v244];
      sub_10032EC90();
      v246 = v494;
      *v494 = v245;
      *(v246 + 8) = 1;
      *(v246 + 16) = &_swiftEmptySetSingleton;
      swift_storeEnumTagMultiPayload();
      v247 = v493;
      sub_1003F2650(v246, v493, type metadata accessor for AppInterfaceContext.Activity);
      v248 = v492;
      sub_1003F2650(v247, v492, type metadata accessor for AppInterfaceContext.Activity);
      v249 = (*(v490 + 80) + 32) & ~*(v490 + 80);
      v250 = swift_allocObject();
      *(v250 + 16) = 0;
      *(v250 + 24) = 0;
      sub_1003F2718(v248, v250 + v249, type metadata accessor for AppInterfaceContext.Activity);
      v251 = v245;
      sub_100706900(v247, sub_100139B24, v250);

      sub_1003F26B8(v247, type metadata accessor for AppInterfaceContext.Activity);
      sub_1003F26B8(v246, type metadata accessor for AppInterfaceContext.Activity);

      return (*(v239 + 8))(v485, v486);
    }
  }

  else
  {
    v123 = v500;
    if (EnumCaseMultiPayload)
    {
      v186 = v499;
      v187 = *(v499 + 32);
      v188 = v508;
      v189 = v487;
      v509 = (v499 + 32);
      v508 = v187;
      (v187)(v500, v188, v487);
      v190 = *(v186 + 16);
      v191 = v484;
      v190(v484, v123, v189);
      v522 = 0u;
      v523 = 0u;
      *v524 = 0;
      *&v524[8] = xmmword_100EBCEF0;
      v510 = v120;
      PresentationSource.init(viewController:position:)(v121, &v522, &v516);
      v192 = type metadata accessor for Actions.MetricsReportingContext();
      (*(*(v192 - 8) + 56))(v503, 1, 1, v192);
      if (qword_10117F610 != -1)
      {
        swift_once();
      }

      v193 = qword_101218AE0;
      v506 = qword_101218AE0;
      v190(v483, v191, v189);
      v194 = v190;
      v195 = v455;
      v194(v455, v191, v189);
      v505 = (v186 + 16);
      v196 = (*(v186 + 80) + 24) & ~*(v186 + 80);
      v197 = v196 + v454;
      v198 = swift_allocObject();
      v507 = v198;
      v198[2] = v193;
      v199 = v195;
      v200 = v189;
      v201 = v508;
      (v508)(v198 + v196, v199, v189);
      v202 = v457;
      v194(v457, v191, v200);
      sub_10012B7A8(&v516, &v511);
      v203 = (v197 + 7) & 0xFFFFFFFFFFFFFFF8;
      v204 = swift_allocObject();
      *(v204 + 16) = v506;
      v205 = v200;
      (v201)(v204 + v196, v202, v200);
      sub_10012B828(&v511, v204 + v203);
      v206 = v503;
      v207 = v473;
      sub_1000089F8(v503, v473, &unk_1011838D0);
      swift_retain_n();
      v208 = v462;
      Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:)(v483, sub_1003F6738, v507, sub_1003F679C, v204, v207, v462);
      sub_1000095E8(v206, &unk_1011838D0);
      sub_10012BA6C(&v516);
      v209 = *(v499 + 8);
      v209(v484, v200);
      v210 = type metadata accessor for TaskPriority();
      v211 = v501;
      (*(*(v210 - 8) + 56))(v501, 1, 1, v210);
      v212 = v461;
      sub_1003F2650(v208, v461, type metadata accessor for Actions.Collaborate.Context);
      type metadata accessor for MainActor();
      v213 = static MainActor.shared.getter();
      v214 = (*(v459 + 80) + 32) & ~*(v459 + 80);
      v215 = swift_allocObject();
      *(v215 + 16) = v213;
      *(v215 + 24) = &protocol witness table for MainActor;
      sub_1003F2718(v212, v215 + v214, type metadata accessor for Actions.Collaborate.Context);
      sub_1001F4CB8(0, 0, v211, &unk_100ECA428, v215);

      sub_1003F26B8(v208, type metadata accessor for Actions.Collaborate.Context);
      return (v209)(v500, v205);
    }

    else
    {
      v507 = v121;
      v419 = v120;
      v420 = v117;
      v124 = *v508;
      v125 = *(*v508 + 2);
      v502 = *v508;
      v500 = v125;
      if (v125)
      {
        v508 = *(isa + 2);
        v126 = v124 + ((*(isa + 80) + 32) & ~*(isa + 80));
        v127 = *(isa + 9);
        v128 = (isa + 8);
        v129 = v120;
        v130 = _swiftEmptyArrayStorage;
        v131 = v503;
        while (1)
        {
          v132 = v509;
          v133 = v510;
          (v508)(v509, v126, v510);
          PlaylistAddableItem.addableItem.getter();
          (*v128)(v132, v133);
          sub_10010FC20(&qword_10118E0B0);
          sub_10010FC20(&qword_10118E0B8);
          if (swift_dynamicCast())
          {
            if (*(&v512 + 1))
            {
              sub_1000D8F88(&v511, &v516);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v130 = sub_10049A0B8(0, v130[2] + 1, 1, v130);
              }

              v135 = v130[2];
              v134 = v130[3];
              if (v135 >= v134 >> 1)
              {
                v130 = sub_10049A0B8((v134 > 1), v135 + 1, 1, v130);
              }

              v130[2] = v135 + 1;
              sub_1000D8F88(&v516, &v130[6 * v135 + 4]);
              v131 = v503;
              goto LABEL_14;
            }
          }

          else
          {
            v512 = 0u;
            v513[0] = 0u;
            v511 = 0u;
          }

          sub_1000095E8(&v511, &qword_10118E0C0);
LABEL_14:
          v126 += v127;
          if (!--v125)
          {
            goto LABEL_48;
          }
        }
      }

      v281 = v120;
      v130 = _swiftEmptyArrayStorage;
      v131 = v503;
LABEL_48:
      if (v130[2])
      {

        v522 = 0u;
        v523 = 0u;
        *v524 = 0;
        *&v524[8] = xmmword_100EBCEF0;
        v282 = v419;
        PresentationSource.init(viewController:position:)(v507, &v522, &v516);
        sub_10012B7A8(&v516, &v511);
        v520[0] = v505;
        v283 = type metadata accessor for Actions.MetricsReportingContext();
        (*(*(v283 - 8) + 56))(v131, 1, 1, v283);
        type metadata accessor for MusicLibrary();

        static MusicLibrary.shared.getter();
        Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(v130, &v511, v520, v131, &type metadata for PlaylistPicker.Presenter, &off_1010AD928, &v525);
        v284 = type metadata accessor for TaskPriority();
        v285 = v501;
        (*(*(v284 - 8) + 56))(v501, 1, 1, v284);
        type metadata accessor for MainActor();

        v286 = static MainActor.shared.getter();
        v287 = swift_allocObject();
        *(v287 + 16) = v286;
        *(v287 + 24) = &protocol witness table for MainActor;
        v288 = v526;
        *(v287 + 32) = v525;
        *(v287 + 48) = v288;
        *(v287 + 64) = v527[0];
        sub_1001F4CB8(0, 0, v285, &unk_100ECA450, v287);

        return sub_10012BA6C(&v516);
      }

      v302 = v435;
      v303 = v504;
      v478(v435, v477, v504);
      v304 = v502;

      v305 = Logger.logObject.getter();
      v306 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v305, v306))
      {

        return (v420)(v302, v303);
      }

      v307 = swift_slowAlloc();
      result = swift_slowAlloc();
      v308 = result;
      *&v511 = result;
      *v307 = 136446210;
      if (!v500)
      {

        *&v518 = 0;
        v516 = 0u;
        v517 = 0u;
        goto LABEL_82;
      }

      if (*(v304 + 2))
      {
        v309 = isa;
        v310 = v304 + ((*(v309 + 80) + 32) & ~*(v309 + 80));
        v311 = v424;
        v312 = v510;
        (*(isa + 2))(v424, v310, v510);

        PlaylistAddableItem.addableItem.getter();
        (*(v309 + 1))(v311, v312);
        v303 = v504;
LABEL_82:
        sub_10010FC20(&qword_10118E0C8);
        v394 = String.init<A>(describing:)();
        v396 = sub_1000105AC(v394, v395, &v511);

        *(v307 + 4) = v396;
        _os_log_impl(&_mh_execute_header, v305, v306, "[MusicUI Actions] MusicUI.PlaylistAddableItem %{public}s isn't MusicLibraryActionable", v307, 0xCu);
        sub_10000959C(v308);

        return (v420)(v302, v303);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1003E9B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v6;
  v4[19] = v5;

  return _swift_task_switch(sub_1003E9BC4, v6, v5);
}

uint64_t sub_1003E9BC4()
{
  static Actions.AddToPlaylist.action(context:)(*(v0 + 128), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_1003E9C64;

  return sub_1003E9E00(1);
}

uint64_t sub_1003E9C64()
{
  v1 = *v0;

  sub_1000095E8(v1 + 16, &qword_10118E0D0);
  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_1003E9DA0, v3, v2);
}

uint64_t sub_1003E9DA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E9E00(char a1)
{
  *(v2 + 664) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 584) = v3;
  *(v2 + 592) = *(v3 - 8);
  *(v2 + 600) = swift_task_alloc();
  *(v2 + 608) = swift_task_alloc();
  v4 = v1[5];
  *(v2 + 192) = v1[4];
  *(v2 + 208) = v4;
  *(v2 + 224) = v1[6];
  v5 = v1[1];
  *(v2 + 128) = *v1;
  *(v2 + 144) = v5;
  v6 = v1[3];
  *(v2 + 160) = v1[2];
  *(v2 + 176) = v6;

  return _swift_task_switch(sub_1003E9EEC, 0, 0);
}

uint64_t sub_1003E9EEC()
{
  v27 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = Logger.actions.unsafeMutableAddressor();
  *(v0 + 616) = v4;
  v5 = *(v2 + 16);
  *(v0 + 624) = v5;
  *(v0 + 632) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_1000089F8(v0 + 16, v0 + 240, &qword_10118E0D0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 608);
  v13 = *(v0 + 592);
  v14 = *(v0 + 584);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_1000095E8(v0 + 16, &qword_10118E0D0);
    v20 = sub_1000105AC(v17, v19, &v26);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "[MusicUI Actions] Attempting to execute action=%{public}s", v15, 0xCu);
    sub_10000959C(v16);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_10118E0D0);
  }

  v21 = *(v13 + 8);
  v21(v12, v14);
  *(v0 + 640) = v21;
  v22 = swift_task_alloc();
  *(v0 + 648) = v22;
  v23 = sub_10010FC20(&qword_10118E0D0);
  *v22 = v0;
  v22[1] = sub_1003EA168;
  v24 = *(v0 + 664);

  return Action.execute(checkSupportedStatus:)(v23, v24, v23);
}

uint64_t sub_1003EA168()
{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = sub_1003EA27C;
  }

  else
  {
    v2 = sub_1003F6C70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003EA27C()
{
  v24 = v0;
  (*(v0 + 624))(*(v0 + 600), *(v0 + 616), *(v0 + 584));
  v1 = *(v0 + 208);
  *(v0 + 416) = *(v0 + 192);
  *(v0 + 432) = v1;
  *(v0 + 448) = *(v0 + 224);
  v2 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v2;
  v3 = *(v0 + 176);
  *(v0 + 384) = *(v0 + 160);
  *(v0 + 400) = v3;
  sub_1000089F8(v0 + 352, v0 + 464, &qword_10118E0D0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 656);
    v21 = *(v0 + 600);
    v22 = *(v0 + 640);
    v7 = *(v0 + 584);
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = ActionType.rawValue.getter(*(v0 + 400));
    v11 = v10;
    sub_1000095E8(v0 + 352, &qword_10118E0D0);
    v12 = sub_1000105AC(v9, v11, &v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v0 + 576) = v6;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v23);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "[MusicUI Actions] Failed to execute action=%{public}s with error=%{public}s", v8, 0x16u);
    swift_arrayDestroy();

    v22(v21, v7);
  }

  else
  {
    v16 = *(v0 + 640);
    v17 = *(v0 + 600);
    v18 = *(v0 + 584);

    sub_1000095E8(v0 + 352, &qword_10118E0D0);

    v16(v17, v18);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1003EA544(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 136) = a1;
  *(v2 + 32) = sub_10010FC20(&qword_10118E0D8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  *(v2 + 56) = v3;
  *(v2 + 64) = *(v3 - 8);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_1003EA65C, 0, 0);
}

uint64_t sub_1003EA65C()
{
  v27 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = Logger.actions.unsafeMutableAddressor();
  *(v0 + 88) = v6;
  v7 = *(v3 + 16);
  *(v0 + 96) = v7;
  *(v0 + 104) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  sub_1000089F8(v5, v4, &qword_10118E0D8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 80);
  v12 = *(v0 + 56);
  v13 = *(v0 + 64);
  v14 = *(v0 + 48);
  if (v10)
  {
    v15 = *(v0 + 32);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136446210;
    LOBYTE(v15) = *(v14 + *(v15 + 36));
    sub_1000095E8(v14, &qword_10118E0D8);
    v18 = ActionType.rawValue.getter(v15);
    v20 = sub_1000105AC(v18, v19, &v26);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "[MusicUI Actions] Attempting to execute action=%{public}s", v16, 0xCu);
    sub_10000959C(v17);
  }

  else
  {
    sub_1000095E8(*(v0 + 48), &qword_10118E0D8);
  }

  v21 = *(v13 + 8);
  v21(v11, v12);
  *(v0 + 112) = v21;
  v22 = swift_task_alloc();
  *(v0 + 120) = v22;
  *v22 = v0;
  v22[1] = sub_1003EA89C;
  v23 = *(v0 + 32);
  v24 = *(v0 + 136);

  return Action.execute(checkSupportedStatus:)(v22, v24, v23);
}

uint64_t sub_1003EA89C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1003EAA34;
  }

  else
  {
    v2 = sub_1003EA9B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003EA9B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003EAA34()
{
  v24 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  (*(v0 + 96))(*(v0 + 72), *(v0 + 88), *(v0 + 56));
  sub_1000089F8(v2, v1, &qword_10118E0D8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 128);
    v21 = *(v0 + 72);
    v22 = *(v0 + 112);
    v6 = *(v0 + 56);
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v9 = 136446466;
    LOBYTE(v8) = *(v7 + *(v8 + 36));
    sub_1000095E8(v7, &qword_10118E0D8);
    v10 = ActionType.rawValue.getter(v8);
    v12 = sub_1000105AC(v10, v11, &v23);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    *(v0 + 16) = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v23);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "[MusicUI Actions] Failed to execute action=%{public}s with error=%{public}s", v9, 0x16u);
    swift_arrayDestroy();

    v22(v21, v6);
  }

  else
  {
    v16 = *(v0 + 112);
    v17 = *(v0 + 72);
    v18 = *(v0 + 56);
    sub_1000095E8(*(v0 + 40), &qword_10118E0D8);

    v16(v17, v18);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1003EACF0(char a1)
{
  *(v2 + 664) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 584) = v3;
  *(v2 + 592) = *(v3 - 8);
  *(v2 + 600) = swift_task_alloc();
  *(v2 + 608) = swift_task_alloc();
  v4 = v1[5];
  *(v2 + 192) = v1[4];
  *(v2 + 208) = v4;
  *(v2 + 224) = v1[6];
  v5 = v1[1];
  *(v2 + 128) = *v1;
  *(v2 + 144) = v5;
  v6 = v1[3];
  *(v2 + 160) = v1[2];
  *(v2 + 176) = v6;

  return _swift_task_switch(sub_1003EADDC, 0, 0);
}

uint64_t sub_1003EADDC()
{
  v27 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = Logger.actions.unsafeMutableAddressor();
  *(v0 + 616) = v4;
  v5 = *(v2 + 16);
  *(v0 + 624) = v5;
  *(v0 + 632) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_1000089F8(v0 + 16, v0 + 240, &qword_10118E0E0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 608);
  v13 = *(v0 + 592);
  v14 = *(v0 + 584);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_1000095E8(v0 + 16, &qword_10118E0E0);
    v20 = sub_1000105AC(v17, v19, &v26);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "[MusicUI Actions] Attempting to execute action=%{public}s", v15, 0xCu);
    sub_10000959C(v16);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_10118E0E0);
  }

  v21 = *(v13 + 8);
  v21(v12, v14);
  *(v0 + 640) = v21;
  v22 = swift_task_alloc();
  *(v0 + 648) = v22;
  v23 = sub_10010FC20(&qword_10118E0E0);
  *v22 = v0;
  v22[1] = sub_1003EB058;
  v24 = *(v0 + 664);

  return Action.execute(checkSupportedStatus:)(v23, v24, v23);
}

uint64_t sub_1003EB058()
{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = sub_1003EB1D8;
  }

  else
  {
    v2 = sub_1003EB16C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003EB16C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003EB1D8()
{
  v24 = v0;
  (*(v0 + 624))(*(v0 + 600), *(v0 + 616), *(v0 + 584));
  v1 = *(v0 + 208);
  *(v0 + 416) = *(v0 + 192);
  *(v0 + 432) = v1;
  *(v0 + 448) = *(v0 + 224);
  v2 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v2;
  v3 = *(v0 + 176);
  *(v0 + 384) = *(v0 + 160);
  *(v0 + 400) = v3;
  sub_1000089F8(v0 + 352, v0 + 464, &qword_10118E0E0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 656);
    v21 = *(v0 + 600);
    v22 = *(v0 + 640);
    v7 = *(v0 + 584);
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = ActionType.rawValue.getter(*(v0 + 400));
    v11 = v10;
    sub_1000095E8(v0 + 352, &qword_10118E0E0);
    v12 = sub_1000105AC(v9, v11, &v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v0 + 576) = v6;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v23);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "[MusicUI Actions] Failed to execute action=%{public}s with error=%{public}s", v8, 0x16u);
    swift_arrayDestroy();

    v22(v21, v7);
  }

  else
  {
    v16 = *(v0 + 640);
    v17 = *(v0 + 600);
    v18 = *(v0 + 584);

    sub_1000095E8(v0 + 352, &qword_10118E0E0);

    v16(v17, v18);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1003EB4A0(char a1)
{
  *(v2 + 704) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 624) = v3;
  *(v2 + 632) = *(v3 - 8);
  *(v2 + 640) = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *(v1 + 80);
  *(v2 + 200) = *(v1 + 64);
  *(v2 + 216) = v5;
  *(v2 + 232) = *(v1 + 96);
  v6 = *(v1 + 16);
  *(v2 + 136) = *v1;
  *(v2 + 152) = v6;
  v7 = *(v1 + 48);
  *(v2 + 168) = *(v1 + 32);
  *(v2 + 648) = v4;
  *(v2 + 248) = *(v1 + 112);
  *(v2 + 184) = v7;

  return _swift_task_switch(sub_1003EB5A0, 0, 0);
}

uint64_t sub_1003EB5A0()
{
  v27 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = Logger.actions.unsafeMutableAddressor();
  *(v0 + 656) = v4;
  v5 = *(v2 + 16);
  *(v0 + 664) = v5;
  *(v0 + 672) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 216);
  *(v0 + 80) = *(v0 + 200);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 232);
  *(v0 + 128) = *(v0 + 248);
  v7 = *(v0 + 152);
  *(v0 + 16) = *(v0 + 136);
  *(v0 + 32) = v7;
  v8 = *(v0 + 184);
  *(v0 + 48) = *(v0 + 168);
  *(v0 + 64) = v8;
  sub_1000089F8(v0 + 16, v0 + 256, &qword_1011839B0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 648);
  v13 = *(v0 + 632);
  v14 = *(v0 + 624);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 72));
    v19 = v18;
    sub_1000095E8(v0 + 16, &qword_1011839B0);
    v20 = sub_1000105AC(v17, v19, &v26);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "[MusicUI Actions] Attempting to execute action=%{public}s", v15, 0xCu);
    sub_10000959C(v16);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_1011839B0);
  }

  v21 = *(v13 + 8);
  v21(v12, v14);
  *(v0 + 680) = v21;
  v22 = swift_task_alloc();
  *(v0 + 688) = v22;
  v23 = sub_10010FC20(&qword_1011839B0);
  *v22 = v0;
  v22[1] = sub_1003EB830;
  v24 = *(v0 + 704);

  return Action.execute(checkSupportedStatus:)(v23, v24, v23);
}

uint64_t sub_1003EB830()
{
  *(*v1 + 696) = v0;

  if (v0)
  {
    v2 = sub_1003EB9B0;
  }

  else
  {
    v2 = sub_1003EB944;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003EB944()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003EB9B0()
{
  v24 = v0;
  (*(v0 + 664))(*(v0 + 640), *(v0 + 656), *(v0 + 624));
  v1 = *(v0 + 216);
  *(v0 + 440) = *(v0 + 200);
  *(v0 + 456) = v1;
  *(v0 + 472) = *(v0 + 232);
  *(v0 + 488) = *(v0 + 248);
  v2 = *(v0 + 152);
  *(v0 + 376) = *(v0 + 136);
  *(v0 + 392) = v2;
  v3 = *(v0 + 184);
  *(v0 + 408) = *(v0 + 168);
  *(v0 + 424) = v3;
  sub_1000089F8(v0 + 376, v0 + 496, &qword_1011839B0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 696);
    v21 = *(v0 + 640);
    v22 = *(v0 + 680);
    v20 = *(v0 + 624);
    v7 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v7 = 136446466;
    v8 = ActionType.rawValue.getter(*(v0 + 432));
    v10 = v9;
    sub_1000095E8(v0 + 376, &qword_1011839B0);
    v11 = sub_1000105AC(v8, v10, &v23);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v0 + 616) = v6;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v23);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "[MusicUI Actions] Failed to execute action=%{public}s with error=%{public}s", v7, 0x16u);
    swift_arrayDestroy();

    v22(v21, v20);
  }

  else
  {
    v15 = *(v0 + 680);
    v16 = *(v0 + 640);
    v17 = *(v0 + 624);

    sub_1000095E8(v0 + 376, &qword_1011839B0);

    v15(v16, v17);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1003EBC94(char a1)
{
  *(v2 + 744) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 664) = v3;
  *(v2 + 672) = *(v3 - 8);
  *(v2 + 680) = swift_task_alloc();
  *(v2 + 688) = swift_task_alloc();
  v4 = v1[5];
  *(v2 + 208) = v1[4];
  *(v2 + 224) = v4;
  v5 = v1[7];
  *(v2 + 240) = v1[6];
  *(v2 + 256) = v5;
  v6 = v1[1];
  *(v2 + 144) = *v1;
  *(v2 + 160) = v6;
  v7 = v1[3];
  *(v2 + 176) = v1[2];
  *(v2 + 192) = v7;

  return _swift_task_switch(sub_1003EBD80, 0, 0);
}

uint64_t sub_1003EBD80()
{
  v28 = v0;
  v1 = *(v0 + 688);
  v2 = *(v0 + 672);
  v3 = *(v0 + 664);
  v4 = Logger.actions.unsafeMutableAddressor();
  *(v0 + 696) = v4;
  v5 = *(v2 + 16);
  *(v0 + 704) = v5;
  *(v0 + 712) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v6;
  v7 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v7;
  v8 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v8;
  v9 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v9;
  sub_1000089F8(v0 + 16, v0 + 272, &qword_10118E0F0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 688);
  v14 = *(v0 + 672);
  v15 = *(v0 + 664);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136446210;
    v18 = ActionType.rawValue.getter(*(v0 + 80));
    v20 = v19;
    sub_1000095E8(v0 + 16, &qword_10118E0F0);
    v21 = sub_1000105AC(v18, v20, &v27);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "[MusicUI Actions] Attempting to execute action=%{public}s", v16, 0xCu);
    sub_10000959C(v17);
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_10118E0F0);
  }

  v22 = *(v14 + 8);
  v22(v13, v15);
  *(v0 + 720) = v22;
  v23 = swift_task_alloc();
  *(v0 + 728) = v23;
  v24 = sub_10010FC20(&qword_10118E0F0);
  *v23 = v0;
  v23[1] = sub_1003EBFFC;
  v25 = *(v0 + 744);

  return Action.execute(checkSupportedStatus:)(v24, v25, v24);
}

uint64_t sub_1003EBFFC()
{
  *(*v1 + 736) = v0;

  if (v0)
  {
    v2 = sub_1003EC17C;
  }

  else
  {
    v2 = sub_1003EC110;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003EC110()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003EC17C()
{
  v25 = v0;
  (*(v0 + 704))(*(v0 + 680), *(v0 + 696), *(v0 + 664));
  v1 = *(v0 + 224);
  *(v0 + 464) = *(v0 + 208);
  *(v0 + 480) = v1;
  v2 = *(v0 + 256);
  *(v0 + 496) = *(v0 + 240);
  *(v0 + 512) = v2;
  v3 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 144);
  *(v0 + 416) = v3;
  v4 = *(v0 + 192);
  *(v0 + 432) = *(v0 + 176);
  *(v0 + 448) = v4;
  sub_1000089F8(v0 + 400, v0 + 528, &qword_10118E0F0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 736);
    v22 = *(v0 + 680);
    v23 = *(v0 + 720);
    v8 = *(v0 + 664);
    v9 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v9 = 136446466;
    v10 = ActionType.rawValue.getter(*(v0 + 464));
    v12 = v11;
    sub_1000095E8(v0 + 400, &qword_10118E0F0);
    v13 = sub_1000105AC(v10, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v0 + 656) = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v14 = String.init<A>(describing:)();
    v16 = sub_1000105AC(v14, v15, &v24);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "[MusicUI Actions] Failed to execute action=%{public}s with error=%{public}s", v9, 0x16u);
    swift_arrayDestroy();

    v23(v22, v8);
  }

  else
  {
    v17 = *(v0 + 720);
    v18 = *(v0 + 680);
    v19 = *(v0 + 664);

    sub_1000095E8(v0 + 400, &qword_10118E0F0);

    v17(v18, v19);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1003EC444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_10010FC20(&qword_10118E0D8);
  v4[3] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1003EC514, v6, v5);
}

uint64_t sub_1003EC514()
{
  static Actions.Collaborate.action(context:)(v0[2], v0[3]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1003EC5B0;

  return sub_1003EA544(1);
}

uint64_t sub_1003EC5B0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);

  sub_1000095E8(v2, &qword_10118E0D8);
  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(sub_1003EC704, v4, v3);
}

uint64_t sub_1003EC704()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003EC76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v6;
  v4[19] = v5;

  return _swift_task_switch(sub_1003EC804, v6, v5);
}

uint64_t sub_1003EC804()
{
  static Actions.MoveToFolder.action(context:)(*(v0 + 128), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_1003EC8A4;

  return sub_1003EACF0(0);
}

uint64_t sub_1003EC8A4()
{
  v1 = *v0;

  sub_1000095E8(v1 + 16, &qword_10118E0E0);
  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_1003F6C60, v3, v2);
}

uint64_t sub_1003EC9E0()
{
  Context = type metadata accessor for ReportAConcernSearchQueryContext();
  v46 = *(Context - 8);
  __chkstk_darwin(Context);
  v45 = &v44 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SocialProfileDescriptor();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CreditArtist();
  v52 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Song();
  v53 = *(v51 - 8);
  __chkstk_darwin(v51);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for ReportableMusicItem();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v54, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == enum case for ReportableMusicItem.playlist(_:))
  {
    (*(v15 + 96))(v18, v14);
    (*(v3 + 32))(v5, v18, v2);
    v20 = Playlist.catalogID.getter();
    if (!v21)
    {
      v20 = Playlist.id.getter();
    }

    v22 = v20;
    (*(v3 + 8))(v5, v2);
  }

  else if (v19 == enum case for ReportableMusicItem.creditArtist(_:))
  {
    (*(v15 + 96))(v18, v14);
    v23 = v52;
    (*(v52 + 32))(v8, v18, v6);
    v22 = CreditArtist.id.getter();
    (*(v23 + 8))(v8, v6);
  }

  else if (v19 == enum case for ReportableMusicItem.creditSong(_:))
  {
    (*(v15 + 96))(v18, v14);
    v24 = v53;
    v25 = v51;
    (*(v53 + 32))(v13, v18, v51);
    v26 = Song.catalogID.getter();
    if (!v27)
    {
      v26 = Song.id.getter();
    }

    v22 = v26;
    (*(v24 + 8))(v13, v25);
  }

  else
  {
    v28 = v53;
    if (v19 == enum case for ReportableMusicItem.lyricsSong(_:))
    {
      (*(v15 + 96))(v18, v14);
      v29 = v51;
      (*(v28 + 32))(v10, v18, v51);
      v30 = Song.catalogID.getter();
      if (!v31)
      {
        v30 = Song.id.getter();
      }

      v22 = v30;
      (*(v28 + 8))(v10, v29);
    }

    else if (v19 == enum case for ReportableMusicItem.socialProfile(_:))
    {
      (*(v15 + 96))(v18, v14);
      v32 = v49;
      v33 = v48;
      v34 = v50;
      (*(v49 + 32))(v48, v18, v50);
      v22 = SocialProfileDescriptor.musicItemID.getter();
      (*(v32 + 8))(v33, v34);
    }

    else if (v19 == enum case for ReportableMusicItem.searchQueryContext(_:))
    {
      (*(v15 + 96))(v18, v14);
      v35 = v46;
      v36 = v45;
      v37 = Context;
      (*(v46 + 32))(v45, v18, Context);
      v22 = ReportAConcernSearchQueryContext.term.getter();
      sub_10010FC20(&unk_1011972C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBDC20;
      strcpy((inited + 32), "queryContext");
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      v39 = ReportAConcernSearchQueryContext.context.getter();
      v40 = sub_10010FC20(&qword_10118E0E8);
      *(inited + 48) = v39;
      *(inited + 72) = v40;
      *(inited + 80) = 0x6554686372616573;
      *(inited + 88) = 0xEA00000000006D72;
      v41 = ReportAConcernSearchQueryContext.term.getter();
      *(inited + 120) = &type metadata for String;
      *(inited + 96) = v41;
      *(inited + 104) = v42;
      sub_10010BC60(inited);
      swift_setDeallocating();
      sub_10010FC20(&unk_1011927D0);
      swift_arrayDestroy();
      (*(v35 + 8))(v36, v37);
    }

    else
    {
      (*(v15 + 8))(v18, v14);
      return 0;
    }
  }

  return v22;
}

uint64_t sub_1003ED1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[19] = v6;
  v4[20] = v5;

  return _swift_task_switch(sub_1003ED268, v6, v5);
}

uint64_t sub_1003ED268()
{
  static Actions.ReportConcern.action(context:)(*(v0 + 136), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_1003ED308;

  return sub_1003EB4A0(1);
}

uint64_t sub_1003ED308()
{
  v1 = *v0;

  sub_1000095E8(v1 + 16, &qword_1011839B0);
  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_1003ED444, v3, v2);
}

uint64_t sub_1003ED444()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003ED4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  type metadata accessor for MainActor();
  v5[23] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[24] = v7;
  v5[25] = v6;

  return _swift_task_switch(sub_1003ED53C, v7, v6);
}

uint64_t sub_1003ED53C()
{
  v1 = *(v0 + 176);
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 152) = xmmword_100EBCEF0;
  PresentationSource.init(viewController:position:)(v1, v0 + 112, v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_1003ED62C;
  v3 = *(v0 + 168);

  return sub_10012ACF4(v3, 0, 0, 0, 0, v0 + 16);
}

uint64_t sub_1003ED62C()
{
  v1 = *v0;

  sub_10012BA6C(v1 + 16);
  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return _swift_task_switch(sub_1003ED758, v3, v2);
}

uint64_t sub_1003ED758()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003ED7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v6 = type metadata accessor for SocialProfileDescriptor();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[26] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[27] = v8;
  v5[28] = v7;

  return _swift_task_switch(sub_1003ED8AC, v8, v7);
}

uint64_t sub_1003ED8AC()
{
  v1 = *(v0 + 176);
  MusicFriendsInviteDescriptor.userProfileDescriptor.getter();
  v2 = MusicFriendsInviteDescriptor.recipientEmail.getter();
  v4 = v3;
  *(v0 + 232) = v3;
  v5 = MusicFriendsInviteDescriptor.recipientPhoneNumber.getter();
  v7 = v6;
  *(v0 + 240) = v6;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 152) = xmmword_100EBCEF0;
  PresentationSource.init(viewController:position:)(v1, v0 + 112, v0 + 16);
  v8 = swift_task_alloc();
  *(v0 + 248) = v8;
  *v8 = v0;
  v8[1] = sub_1003ED9D8;
  v9 = *(v0 + 200);

  return (sub_10012ACF4)(v9, v2, v4, v5, v7, v0 + 16);
}

uint64_t sub_1003ED9D8()
{
  v1 = *v0;

  sub_10012BA6C(v1 + 16);
  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return _swift_task_switch(sub_1003EDB44, v3, v2);
}

uint64_t sub_1003EDB44()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[24];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003EDBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  type metadata accessor for MainActor();
  v5[23] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[24] = v7;
  v5[25] = v6;

  return _swift_task_switch(sub_1003EDC68, v7, v6);
}

uint64_t sub_1003EDC68()
{
  v1 = *(v0 + 176);
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 152) = xmmword_100EBCEF0;
  PresentationSource.init(viewController:position:)(v1, v0 + 112, v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_1003EDD48;
  v3 = *(v0 + 168);

  return sub_10012B1C0(v3, v0 + 16);
}

uint64_t sub_1003EDD48()
{
  v1 = *v0;

  sub_10012BA6C(v1 + 16);
  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return _swift_task_switch(sub_1003F6C64, v3, v2);
}

uint64_t sub_1003EDE74@<X0>(uint64_t *a1@<X8>)
{
  v131 = a1;
  v82 = type metadata accessor for UploadedVideo();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v79 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for UploadedAudio();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for TVShow();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for TVSeason();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for TVEpisode();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Track();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Station();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Song();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for RecordLabel();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for RadioShow();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Playlist();
  v111 = *(v11 - 8);
  v112 = v11;
  __chkstk_darwin(v11);
  v110 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MusicVideo();
  v114 = *(v13 - 8);
  v115 = v13;
  __chkstk_darwin(v13);
  v113 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MusicMovie();
  v117 = *(v15 - 8);
  v118 = v15;
  __chkstk_darwin(v15);
  v116 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Genre();
  v120 = *(v17 - 8);
  v121 = v17;
  __chkstk_darwin(v17);
  v119 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EditorialItem();
  v123 = *(v19 - 8);
  v124 = v19;
  __chkstk_darwin(v19);
  v122 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Curator();
  v126 = *(v21 - 8);
  v127 = v21;
  __chkstk_darwin(v21);
  v125 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Composer();
  v128 = *(v23 - 8);
  v129 = v23;
  __chkstk_darwin(v23);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Artist();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Album();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ShareableMusicItem();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v38 = &v79 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v38, v130, v34, v36);
  v39 = (*(v35 + 88))(v38, v34);
  if (v39 == enum case for ShareableMusicItem.album(_:))
  {
    (*(v35 + 96))(v38, v34);
    v40 = *(v31 + 32);
    v40(v33, v38, v30);
    v41 = v131;
    v131[3] = v30;
    v41[4] = &protocol witness table for Album;
    v42 = sub_10001C8B8(v41);
    return (v40)(v42, v33, v30);
  }

  v44 = v131;
  if (v39 == enum case for ShareableMusicItem.artist(_:))
  {
    (*(v35 + 96))(v38, v34);
    v45 = *(v27 + 32);
    v45(v29, v38, v26);
    v44[3] = v26;
    v44[4] = &protocol witness table for Artist;
    v46 = sub_10001C8B8(v44);
    return (v45)(v46, v29, v26);
  }

  if (v39 == enum case for ShareableMusicItem.composer(_:))
  {
    (*(v35 + 96))(v38, v34);
    v47 = v129;
    v48 = *(v128 + 32);
    v48(v25, v38, v129);
    v44[3] = v47;
    v44[4] = sub_1000340AC(&qword_10118E130, &type metadata accessor for Composer);
    v49 = sub_10001C8B8(v44);
    return (v48)(v49, v25, v47);
  }

  if (v39 == enum case for ShareableMusicItem.curator(_:))
  {
    (*(v35 + 96))(v38, v34);
    v50 = v125;
    v51 = *(v126 + 32);
    v52 = v38;
    v53 = v127;
    v51(v125, v52, v127);
    v54 = &protocol witness table for Curator;
LABEL_9:
    v44[3] = v53;
    v44[4] = v54;
LABEL_13:
    v58 = sub_10001C8B8(v44);
    v59 = v50;
    v60 = v53;
    return (v51)(v58, v59, v60);
  }

  if (v39 == enum case for ShareableMusicItem.editorialItem(_:))
  {
    (*(v35 + 96))(v38, v34);
    v50 = v122;
    v51 = *(v123 + 32);
    v55 = v38;
    v53 = v124;
    v51(v122, v55, v124);
    v44[3] = v53;
    v56 = &unk_10118E128;
    v57 = &type metadata accessor for EditorialItem;
LABEL_12:
    v44[4] = sub_1000340AC(v56, v57);
    goto LABEL_13;
  }

  if (v39 == enum case for ShareableMusicItem.findFriendInvite(_:))
  {
    goto LABEL_17;
  }

  if (v39 == enum case for ShareableMusicItem.genre(_:))
  {
    (*(v35 + 96))(v38, v34);
    v50 = v119;
    v51 = *(v120 + 32);
    v61 = v38;
    v53 = v121;
    v51(v119, v61, v121);
    v54 = &protocol witness table for Genre;
    goto LABEL_9;
  }

  if (v39 == enum case for ShareableMusicItem.musicMovie(_:))
  {
    (*(v35 + 96))(v38, v34);
    v50 = v116;
    v51 = *(v117 + 32);
    v62 = v38;
    v53 = v118;
    v51(v116, v62, v118);
    v44[3] = v53;
    v56 = &unk_10118E120;
    v57 = &type metadata accessor for MusicMovie;
    goto LABEL_12;
  }

  if (v39 == enum case for ShareableMusicItem.musicVideo(_:))
  {
    (*(v35 + 96))(v38, v34);
    v50 = v113;
    v51 = *(v114 + 32);
    v63 = v38;
    v53 = v115;
    v51(v113, v63, v115);
    v54 = &protocol witness table for MusicVideo;
    goto LABEL_9;
  }

  if (v39 == enum case for ShareableMusicItem.playlist(_:))
  {
    (*(v35 + 96))(v38, v34);
    v51 = *(v111 + 32);
    v50 = v110;
    v64 = v38;
    v53 = v112;
    v51(v110, v64, v112);
    v54 = &protocol witness table for Playlist;
    goto LABEL_9;
  }

  if (v39 == enum case for ShareableMusicItem.radioShow(_:))
  {
    (*(v35 + 96))(v38, v34);
    v51 = *(v108 + 32);
    v50 = v107;
    v65 = v38;
    v53 = v109;
    v51(v107, v65, v109);
    v54 = &protocol witness table for RadioShow;
    goto LABEL_9;
  }

  if (v39 == enum case for ShareableMusicItem.recordLabel(_:))
  {
    (*(v35 + 96))(v38, v34);
    v51 = *(v105 + 32);
    v50 = v104;
    v66 = v38;
    v53 = v106;
    v51(v104, v66, v106);
    v54 = &protocol witness table for RecordLabel;
    goto LABEL_9;
  }

  if (v39 == enum case for ShareableMusicItem.shareURL(_:) || v39 == enum case for ShareableMusicItem.socialProfile(_:))
  {
LABEL_17:
    result = (*(v35 + 8))(v38, v34);
    v44[4] = 0;
    *v44 = 0u;
    *(v44 + 1) = 0u;
    return result;
  }

  if (v39 == enum case for ShareableMusicItem.song(_:))
  {
    (*(v35 + 96))(v38, v34);
    v67 = *(v102 + 32);
    v68 = v101;
    v69 = v38;
    v70 = v103;
    v67(v101, v69, v103);
    v71 = &protocol witness table for Song;
LABEL_38:
    v44[3] = v70;
    v44[4] = v71;
    v74 = sub_10001C8B8(v44);
    return (v67)(v74, v68, v70);
  }

  if (v39 == enum case for ShareableMusicItem.station(_:))
  {
    (*(v35 + 96))(v38, v34);
    v67 = *(v99 + 32);
    v68 = v98;
    v72 = v38;
    v70 = v100;
    v67(v98, v72, v100);
    v71 = &protocol witness table for Station;
    goto LABEL_38;
  }

  if (v39 == enum case for ShareableMusicItem.track(_:))
  {
    (*(v35 + 96))(v38, v34);
    v67 = *(v96 + 32);
    v68 = v95;
    v73 = v38;
    v70 = v97;
    v67(v95, v73, v97);
    v71 = &protocol witness table for Track;
    goto LABEL_38;
  }

  if (v39 == enum case for ShareableMusicItem.tvEpisode(_:))
  {
    (*(v35 + 96))(v38, v34);
    v51 = *(v93 + 32);
    v75 = v92;
    v76 = v94;
    v51(v92, v38, v94);
    v44[3] = v76;
    v77 = &unk_10118E118;
    v78 = &type metadata accessor for TVEpisode;
  }

  else if (v39 == enum case for ShareableMusicItem.tvSeason(_:))
  {
    (*(v35 + 96))(v38, v34);
    v51 = *(v90 + 32);
    v75 = v89;
    v76 = v91;
    v51(v89, v38, v91);
    v44[3] = v76;
    v77 = &unk_10118E110;
    v78 = &type metadata accessor for TVSeason;
  }

  else if (v39 == enum case for ShareableMusicItem.tvShow(_:))
  {
    (*(v35 + 96))(v38, v34);
    v51 = *(v87 + 32);
    v75 = v86;
    v76 = v88;
    v51(v86, v38, v88);
    v44[3] = v76;
    v77 = &unk_10118E108;
    v78 = &type metadata accessor for TVShow;
  }

  else if (v39 == enum case for ShareableMusicItem.uploadedAudio(_:))
  {
    (*(v35 + 96))(v38, v34);
    v51 = *(v84 + 32);
    v75 = v83;
    v76 = v85;
    v51(v83, v38, v85);
    v44[3] = v76;
    v77 = &unk_10118E100;
    v78 = &type metadata accessor for UploadedAudio;
  }

  else
  {
    if (v39 != enum case for ShareableMusicItem.uploadedVideo(_:))
    {
      v131[4] = 0;
      *v44 = 0u;
      *(v44 + 1) = 0u;
      return (*(v35 + 8))(v38, v34);
    }

    (*(v35 + 96))(v38, v34);
    v51 = *(v81 + 32);
    v75 = v80;
    v76 = v82;
    v51(v80, v38, v82);
    v44[3] = v76;
    v77 = &unk_10118E0F8;
    v78 = &type metadata accessor for UploadedVideo;
  }

  v44[4] = sub_1000340AC(v77, v78);
  v58 = sub_10001C8B8(v44);
  v59 = v75;
  v60 = v76;
  return (v51)(v58, v59, v60);
}

uint64_t sub_1003EF300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  type metadata accessor for MainActor();
  v4[19] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[20] = v6;
  v4[21] = v5;

  return _swift_task_switch(sub_1003EF398, v6, v5);
}

uint64_t sub_1003EF398()
{
  static Actions.Share.action(context:)(*(v0 + 144), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_1003EF438;

  return sub_1003EBC94(1);
}

uint64_t sub_1003EF438()
{
  v1 = *v0;

  sub_1000095E8(v1 + 16, &qword_10118E0F0);
  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_1003EF574, v3, v2);
}

uint64_t sub_1003EF574()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1003EF5D4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for MusicAppDestination.SharePageDescriptor();
  v9 = __chkstk_darwin(v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  (*(v12 + 16))(v11, a2, v9);
  v14 = *(a3 + 32);
  if (v14 >= 0)
  {
    v15 = *(a3 + 32);
  }

  else
  {
    v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
  }

  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v22 = xmmword_100EBCEF0;
  v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
  PresentationSource.init(viewController:position:)(v15, v20, v19);
  v17 = objc_allocWithZone(type metadata accessor for ShareAssetStoryActivity(0));
  result = sub_1005EDBA4(v13, v11, v19);
  *a4 = result;
  return result;
}

uint64_t sub_1003EF714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_1003EF7D4;

  return static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)(a4, a5);
}

uint64_t sub_1003EF7D4()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1003EF994;
  }

  else
  {
    v4 = sub_1003EF930;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1003EF930()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003EF994()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003EF9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AppInterfaceContext();

  return MusicAppDestinationPageProvider.page(for:stackAuthority:)(a1, a2, v7, a4);
}

uint64_t sub_1003EFA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AppInterfaceContext();

  return MusicAppDestinationPageProvider.sheetPage(for:)(a1, v5, a3);
}

uint64_t sub_1003EFAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AppInterfaceContext();

  return MusicAppDestinationPageProvider.fullScreenCoverPage(for:)(a1, v5, a3);
}

uint64_t sub_1003EFAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AppInterfaceContext();

  return MusicAppDestinationPageProvider.pushPage(for:stackAuthority:context:)(a1, a2, a3, v9, a5);
}

uint64_t sub_1003EFB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AppInterfaceContext();

  return MusicAppDestinationPageProvider.presentFullScreenCoverPage(for:context:)(a1, a2, v7, a4);
}

uint64_t sub_1003EFBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AppInterfaceContext();

  return MusicAppDestinationPageProvider.sheetPage(for:context:)(a1, a2, v7, a4);
}

uint64_t sub_1003EFC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AppInterfaceContext();

  return MusicAppDestinationPageProvider.fullScreenCoverPage(for:context:)(a1, a2, v7, a4);
}

uint64_t sub_1003EFC88(void *a1, uint64_t a2)
{
  v61 = a1;
  v62 = type metadata accessor for AppInterfaceContext.Activity(0);
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v65 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v67 = &v60 - v5;
  v64 = v6;
  __chkstk_darwin(v7);
  v66 = (&v60 - v8);
  v9 = type metadata accessor for PresentationOptions();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v70 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  __chkstk_darwin(v15);
  v17 = (&v60 - v16);
  __chkstk_darwin(v18);
  v84 = &v60 - v19;
  v20 = a2 + 56;
  v21 = 1 << *(a2 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a2 + 56);
  v24 = (v21 + 63) >> 6;
  v77 = v10 + 88;
  v78 = v10 + 16;
  v76 = enum case for PresentationOptions.unique(_:);
  v74 = enum case for PresentationOptions.replace(_:);
  v75 = (v10 + 8);
  v60 = (v10 + 96);
  v83 = a2;

  v26 = 0;
  v68 = _swiftEmptyArrayStorage;
  *&v27 = 136315138;
  v69 = v27;
  v71 = v10;
  v80 = v20;
  v81 = v17;
  v79 = v24;
  if (v23)
  {
LABEL_8:
    while (1)
    {
      v29 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v30 = v84;
      v31 = *(v10 + 16);
      v31(v84, *(v83 + 48) + *(v10 + 72) * (v29 | (v26 << 6)), v9);
      v31(v17, v30, v9);
      v32 = (*(v10 + 88))(v17, v9);
      if (v32 == v76)
      {
        break;
      }

      if (v32 == v74)
      {
        v82 = v14;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 0;
        goto LABEL_20;
      }

      if (qword_10117FC68 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_1000060E4(v33, qword_1012194A8);
      v31(v14, v84, v9);
      v34 = Logger.logObject.getter();
      LODWORD(v82) = static os_log_type_t.error.getter();
      v35 = os_log_type_enabled(v34, v82);
      v36 = v75;
      if (v35)
      {
        v37 = swift_slowAlloc();
        v72 = v37;
        v73 = swift_slowAlloc();
        v85 = v73;
        *v37 = v69;
        v31(v70, v14, v9);
        v38 = v9;
        v39 = String.init<A>(describing:)();
        v41 = v40;
        v42 = *v36;
        (*v36)(v14, v38);
        v43 = sub_1000105AC(v39, v41, &v85);

        v44 = v72;
        *(v72 + 1) = v43;
        v9 = v38;
        v10 = v71;
        _os_log_impl(&_mh_execute_header, v34, v82, "[MusicUI Actions] Failed to present a sheet because the option=%s is not supported", v44, 0xCu);
        sub_10000959C(v73);
      }

      else
      {

        v42 = *v36;
        (*v36)(v14, v9);
      }

      v17 = v81;
      v42(v81, v9);
      result = (v42)(v84, v9);
LABEL_16:
      v24 = v79;
      v20 = v80;
      if (!v23)
      {
        goto LABEL_4;
      }
    }

    v82 = v14;
    (*v60)(v17, v9);
    v45 = *v17;
    v46 = v17[1];
    v47 = v17[2];
    v48 = v17[3];
LABEL_20:
    (*v75)(v84, v9);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10049A200(0, *(v68 + 2) + 1, 1, v68);
      v68 = result;
    }

    v50 = *(v68 + 2);
    v49 = *(v68 + 3);
    if (v50 >= v49 >> 1)
    {
      result = sub_10049A200((v49 > 1), v50 + 1, 1, v68);
      v68 = result;
    }

    v51 = v68;
    *(v68 + 2) = v50 + 1;
    v52 = &v51[32 * v50];
    *(v52 + 4) = v45;
    *(v52 + 5) = v46;
    *(v52 + 6) = v47;
    *(v52 + 7) = v48;
    v10 = v71;
    v17 = v81;
    v14 = v82;
    goto LABEL_16;
  }

LABEL_4:
  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v24)
    {

      v53 = v61;
      v54 = sub_1006704D4(v68);

      v55 = v66;
      *v66 = v53;
      *(v55 + 8) = 1;
      *(v55 + 16) = v54;
      swift_storeEnumTagMultiPayload();
      v56 = v67;
      sub_1003F2650(v55, v67, type metadata accessor for AppInterfaceContext.Activity);
      v57 = v65;
      sub_1003F2650(v56, v65, type metadata accessor for AppInterfaceContext.Activity);
      v58 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v59 = swift_allocObject();
      *(v59 + 16) = 0;
      *(v59 + 24) = 0;
      sub_1003F2718(v57, v59 + v58, type metadata accessor for AppInterfaceContext.Activity);
      sub_100706900(v56, sub_100139B24, v59);

      sub_1003F26B8(v56, type metadata accessor for AppInterfaceContext.Activity);
      return sub_1003F26B8(v55, type metadata accessor for AppInterfaceContext.Activity);
    }

    v23 = *(v20 + 8 * v28);
    ++v26;
    if (v23)
    {
      v26 = v28;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003F03FC(void *a1)
{
  v2 = type metadata accessor for AppInterfaceContext.Activity(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  *v11 = a1;
  v11[8] = 1;
  *(v11 + 2) = &_swiftEmptySetSingleton;
  swift_storeEnumTagMultiPayload();
  sub_1003F2650(v11, v8, type metadata accessor for AppInterfaceContext.Activity);
  sub_1003F2650(v8, v5, type metadata accessor for AppInterfaceContext.Activity);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_1003F2718(v5, v13 + v12, type metadata accessor for AppInterfaceContext.Activity);
  v14 = a1;
  sub_100706900(v8, sub_100139B24, v13);

  sub_1003F26B8(v8, type metadata accessor for AppInterfaceContext.Activity);
  return sub_1003F26B8(v11, type metadata accessor for AppInterfaceContext.Activity);
}