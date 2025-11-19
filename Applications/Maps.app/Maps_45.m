void *sub_100501BBC()
{
  v1 = v0;
  v2 = type metadata accessor for CellAction.Placement();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v49 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CellAction.Style();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MapsDesignAccessibilityString();
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CellAction();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  if ((sub_100500EA0() & 1) != 0 && (v16 = v0 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel_onEditItem, (v17 = *(v0 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel_onEditItem)) != 0))
  {
    v40 = v11;
    object = v10;
    v18 = *(v16 + 8);
    v19 = qword_101906768;

    if (v19 != -1)
    {
      swift_once();
    }

    v51._object = 0x8000000101235210;
    v20._countAndFlagsBits = 0x7465442074696445;
    v20._object = 0xEC000000736C6961;
    v21._object = 0x80000001012351F0;
    v51._countAndFlagsBits = 0xD000000000000027;
    v21._countAndFlagsBits = 0xD000000000000016;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, qword_1019600D8, v20, v51);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = v17;
    v23[4] = v18;
    strcpy(v9, "EditPinnedItem");
    v9[15] = -18;
    (*(v43 + 104))(v9, enum case for MapsDesignAccessibilityString.button(_:), v44);
    (*(v45 + 104))(v6, enum case for CellAction.Style.default(_:), v46);
    (*(v47 + 104))(v49, enum case for CellAction.Placement.default(_:), v48);

    CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
    v24 = sub_100355E1C(0, 1, 1, _swiftEmptyArrayStorage);
    v26 = v24[2];
    v25 = v24[3];
    if (v26 >= v25 >> 1)
    {
      v24 = sub_100355E1C(v25 > 1, v26 + 1, 1, v24);
    }

    v11 = v40;
    sub_1000588AC(v17);
    v24[2] = v26 + 1;
    v10 = object;
    (*(v11 + 32))(v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v26, v15, object);
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  v50 = v1;
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = *(v1 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__favoriteItem);
  if (v27)
  {
    if ((*(v27 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup) & 1) == 0)
    {
      v28 = *(v1 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel_onUnpinItem);
      if (v28)
      {
        v29 = *(v1 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel_onUnpinItem + 8);
        v30 = qword_101906768;

        if (v30 != -1)
        {
          swift_once();
        }

        v52._object = 0x8000000101235240;
        v31._countAndFlagsBits = 0x7972617262694C5BLL;
        v31._object = 0xEF6E69706E55205DLL;
        v32._countAndFlagsBits = 0x6E69706E55;
        v52._countAndFlagsBits = 0xD000000000000039;
        v32._object = 0xE500000000000000;
        object = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, qword_1019600D8, v32, v52)._object;
        v33 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v34 = swift_allocObject();
        v34[2] = v33;
        v34[3] = v28;
        v34[4] = v29;
        (*(v45 + 104))(v6, enum case for CellAction.Style.destructive(_:), v46);
        *v9 = 0x6574496E69706E55;
        *(v9 + 1) = 0xE90000000000006DLL;
        (*(v43 + 104))(v9, enum case for MapsDesignAccessibilityString.button(_:), v44);
        (*(v47 + 104))(v49, enum case for CellAction.Placement.default(_:), v48);

        v35 = v42;
        CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_100355E1C(0, v24[2] + 1, 1, v24);
        }

        v37 = v24[2];
        v36 = v24[3];
        if (v37 >= v36 >> 1)
        {
          v24 = sub_100355E1C(v36 > 1, v37 + 1, 1, v24);
        }

        sub_1000588AC(v28);
        v24[2] = v37 + 1;
        (*(v11 + 32))(v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v37, v35, v10);
      }
    }
  }

  return v24;
}

void sub_1005023C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void *sub_10050242C()
{
  v1 = v0;
  v2 = type metadata accessor for RichTextType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_10190A070);
  v7 = *(type metadata accessor for RichTextViewModel() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v22 = *(v7 + 72);
  v23 = v6;
  v9 = swift_allocObject();
  v20 = xmmword_1011E1D30;
  *(v9 + 16) = xmmword_1011E1D30;
  v21 = *(v3 + 104);
  v21(v5, enum case for RichTextType.title(_:), v2);
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtC4Maps19HomePinnedItemModel___observationRegistrar;
  v29 = v1;
  v27 = sub_1005036F8(&qword_101916010);
  v28 = v10;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = v8;
  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  v11 = *(v3 + 8);
  v25 = v3 + 8;
  v26 = v2;
  v11(v5, v2);
  v12 = sub_100356AC0(0, 1, 1, _swiftEmptyArrayStorage);
  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_100356AC0((v13 > 1), v14 + 1, 1, v12);
  }

  v12[2] = v14 + 1;
  v12[v14 + 4] = v9;
  swift_getKeyPath();
  v29 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__subtitle + 8))
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v20;
    v16 = v26;
    v21(v5, enum case for RichTextType.line(_:), v26);

    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

    v11(v5, v16);
    v18 = v12[2];
    v17 = v12[3];
    if (v18 >= v17 >> 1)
    {
      v12 = sub_100356AC0((v17 > 1), v18 + 1, 1, v12);
    }

    v12[2] = v18 + 1;
    v12[v18 + 4] = v15;
  }

  return v12;
}

id sub_100502814()
{
  swift_getKeyPath();
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__shortcutsCellModel);

  return v1;
}

id sub_1005028B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__shortcutsCellModel);
  *a2 = v4;

  return v4;
}

void sub_100502964(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps19HomePinnedItemModel__shortcutsCellModel;
  v5 = *(v1 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__shortcutsCellModel);
  sub_100503A18();
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005036F8(&qword_101916010);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_100502AB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__favoriteItem);
  *a2 = v4;

  return v4;
}

void sub_100502B60(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100502B90(v1);
}

void sub_100502B90(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps19HomePinnedItemModel__favoriteItem;
  v5 = *(v1 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__favoriteItem);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005036F8(&qword_101916010);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for MapsFavoriteItem();
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

char *sub_100502D04(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a5;
  v51 = a6;
  v52 = a3;
  v53 = a4;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC4Maps19HomePinnedItemModel__isSymbolImage;
  v6[OBJC_IVAR____TtC4Maps19HomePinnedItemModel__isSymbolImage] = 0;
  v10 = &v6[OBJC_IVAR____TtC4Maps19HomePinnedItemModel__subtitle];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC4Maps19HomePinnedItemModel__favoriteItem;
  *&v6[OBJC_IVAR____TtC4Maps19HomePinnedItemModel__favoriteItem] = 0;
  ObservationRegistrar.init()();
  v12 = &v6[OBJC_IVAR____TtC4Maps19HomePinnedItemModel__pinnedTileImageProvider];
  *&v6[OBJC_IVAR____TtC4Maps19HomePinnedItemModel__pinnedTileImageProvider + 24] = &type metadata for MapsStaticImageProvider;
  v49 = sub_10017F0D4();
  v12[4] = v49;
  *v12 = 0;
  v12[1] = 0;
  *&v6[OBJC_IVAR____TtC4Maps19HomePinnedItemModel__shortcutsCellModel] = a1;
  v13 = a1;
  v14 = [v13 _maps_diffableDataSourceIdentifier];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = &v6[OBJC_IVAR____TtC4Maps19HomePinnedItemModel__id];
  *v19 = v16;
  v19[1] = v18;
  objc_opt_self();
  v6[v9] = swift_dynamicCastObjCClass() != 0;
  v20 = [v13 title];
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  v25 = &v6[OBJC_IVAR____TtC4Maps19HomePinnedItemModel__title];
  *v25 = v22;
  v25[1] = v24;
  v26 = [v13 subtitle];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  *v10 = v28;
  v10[1] = v30;
  v31 = [v13 vibrantBackground];
  v6[OBJC_IVAR____TtC4Maps19HomePinnedItemModel__isSuggestion] = v31;
  v32 = *&v6[v11];
  v47 = a2;

  *&v6[v11] = a2;
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass() != 0;
  v6[OBJC_IVAR____TtC4Maps19HomePinnedItemModel__isAddNewFavorite] = v33;
  v34 = &v6[OBJC_IVAR____TtC4Maps19HomePinnedItemModel_onEditItem];
  v35 = v52;
  v36 = v53;
  *v34 = v52;
  v34[1] = v36;
  v37 = &v6[OBJC_IVAR____TtC4Maps19HomePinnedItemModel_onUnpinItem];
  v38 = v50;
  v39 = v51;
  *v37 = v50;
  v37[1] = v39;
  sub_1000CD9D4(v35);
  sub_1000CD9D4(v38);
  v56.receiver = v6;
  v56.super_class = ObjectType;
  v40 = objc_msgSendSuper2(&v56, "init");
  swift_getKeyPath();
  ObjectType = OBJC_IVAR____TtC4Maps19HomePinnedItemModel___observationRegistrar;
  v55[0] = v40;
  sub_1005036F8(&qword_101916010);
  v41 = v40;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = *&v41[OBJC_IVAR____TtC4Maps19HomePinnedItemModel__shortcutsCellModel];
  [v42 addObserver:v41];

  v43 = [v13 image];
  v55[3] = &type metadata for MapsStaticImageProvider;
  v55[4] = v49;
  v55[0] = v43;
  v55[1] = 0;
  KeyPath = swift_getKeyPath();
  v49 = &v47;
  __chkstk_darwin(KeyPath);
  v54 = v41;
  v45 = v43;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v38);
  sub_1000588AC(v52);

  sub_10004E3D0(v55);
  return v41;
}

uint64_t sub_10050311C(void *a1)
{
  v2 = [a1 image];
  v15[3] = &type metadata for MapsStaticImageProvider;
  v15[4] = sub_10017F0D4();
  v15[0] = v2;
  v15[1] = 0;
  swift_getKeyPath();
  sub_1005036F8(&qword_101916010);
  v3 = v2;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10004E3D0(v15);
  v4 = [a1 title];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  sub_100501704(v6, v8, &OBJC_IVAR____TtC4Maps19HomePinnedItemModel__title);
  v9 = [a1 subtitle];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  return sub_100501440(v11, v13);
}

uint64_t sub_10050332C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps19HomePinnedItemModel__pinnedTileImageProvider;
  swift_beginAccess();
  return sub_10005EB40(v3 + v4, a1);
}

uint64_t sub_1005033F4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__title);

  return v2;
}

uint64_t sub_10050349C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__subtitle);

  return v2;
}

uint64_t sub_100503558(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *v4;
  swift_getKeyPath();
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v6 + *a4);
}

uint64_t sub_100503654@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__id + 8);
  *a1 = *(v3 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__id);
  a1[1] = v4;
}

uint64_t sub_1005036F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HomePinnedItemModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100503754()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__subtitle);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1005037D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[3] = a3;
  v8[4] = a4;
  v6 = sub_10001A848(v8);
  (*(*(a3 - 8) + 32))(v6, a1, a3);
  swift_getKeyPath();
  sub_1005036F8(&qword_101916010);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10004E3D0(v8);
}

uint64_t sub_100503918()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100503958()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__favoriteItem);
  *(v1 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__favoriteItem) = v2;
  v4 = v2;
}

uint64_t sub_100503998(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v6 = a1[1];

  return sub_100501704(v7, v6, a5);
}

unint64_t sub_100503A18()
{
  result = qword_101924A80;
  if (!qword_101924A80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101924A80);
  }

  return result;
}

void sub_100503A64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__shortcutsCellModel);
  *(v1 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__shortcutsCellModel) = v2;
  v4 = v2;
}

void sub_100503ADC(void *a1)
{
  v3 = [v1 iosChromeViewController];
  if (v3)
  {
    v4 = &selRef_currentTraits;
  }

  else
  {
    v3 = [objc_opt_self() sharedService];
    if (!v3)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v4 = &selRef_defaultTraits;
  }

  v5 = v3;
  v11 = [v3 *v4];

  if (!v11)
  {
    return;
  }

  v6 = sub_10050530C(a1);
  if (!v6)
  {
    v10 = v11;
    goto LABEL_11;
  }

  v7 = v6;
  v8 = [objc_opt_self() sharedManager];
  if (!v8)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  [v8 processSearchResult:v7 traits:v11];

  v10 = v9;
LABEL_11:
}

void sub_100503C08(void *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v33 = Strong;
  v5 = sub_10050530C(a1);
  if (!v5)
  {
    goto LABEL_25;
  }

  v32 = v5;
  v6 = [v5 identifier];
  if (v6)
  {
    v7 = v6;
    v8 = [v33 mapSelectionManager];
    if (!v8)
    {
      __break(1u);
      goto LABEL_32;
    }

    v9 = v8;
    v10 = [v8 labelMarker];

    if (v10)
    {
      v11 = [v10 identifier];
      if (v11)
      {
        v12 = v11;
        sub_100014C84(0, &qword_10190B2D0);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
LABEL_30:

          v31 = v32;
          goto LABEL_26;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v10 = v7;
    }
  }

LABEL_12:
  v32 = v32;
  if (![a1 isDroppedPin])
  {
    v16 = [v33 searchPinsManager];

    if (v16)
    {
      v17 = [v16 singleSearchResultItemSource];

      if (v17)
      {
        sub_1000CE6B8(&qword_101908400);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1011E47B0;
        *(v18 + 32) = v32;
        sub_100014C84(0, &qword_10190E160);
        v19 = v32;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v17 setSearchResults:isa];
      }

      v21 = [a1 mapItem];
      if (v21)
      {
        v22 = v21;
        v23 = [v33 mapCameraController];
        if (v23)
        {
          v24 = v23;
          v25 = swift_allocObject();
          *(v25 + 16) = v33;
          *(v25 + 24) = v32;
          *(v25 + 32) = a2 & 1;
          aBlock[4] = sub_1005053C0;
          aBlock[5] = v25;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1002ABAC8;
          aBlock[3] = &unk_10161F650;
          v26 = _Block_copy(aBlock);
          v27 = v32;
          v28 = v33;

          [v24 frameMapItem:v22 animated:1 completion:v26];

          _Block_release(v26);
          return;
        }

        goto LABEL_30;
      }

      v29 = [v33 mapSelectionManager];
      if (v29)
      {
        v30 = v29;
        [v29 selectSearchResult:v32 animated:a2 & 1];

        goto LABEL_24;
      }

LABEL_34:
      __break(1u);
      return;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v14 = [v33 searchPinsManager];
  if (!v14)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v15 = v14;
  [v14 setDroppedPin:v32 animated:1 shouldSelect:1];

LABEL_24:
LABEL_25:
  v31 = v33;
LABEL_26:
}

void sub_100504028(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC4Maps16PlaceCardContext_configuration);
  *(v1 + OBJC_IVAR____TtC4Maps16PlaceCardContext_configuration) = a1;
  v3 = a1;

  v4 = *&v3[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem];
  sub_1002B5F9C();
  sub_100503C08(v4, 1);
  sub_100503ADC(v4);
  v5 = v3[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory];
  v6 = *&v3[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent];
  v7 = v3[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_presentedModally];
  v8 = v3[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_buildingMultistopRoute];
  v9 = type metadata accessor for PlaceCardContextContainee.PlaceCardModel();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee14PlaceCardModel_placeItem] = v4;
  v10[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee14PlaceCardModel_shouldSaveToHistory] = v5;
  *&v10[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee14PlaceCardModel_excludedContent] = v6;
  v10[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee14PlaceCardModel_presentedModally] = v7;
  v10[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee14PlaceCardModel_buildingMultistopRoute] = v8;
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = v4;
  v12 = objc_msgSendSuper2(&v13, "init");
  sub_1003C43C8(v12);
}

id sub_100504630(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC4Maps16PlaceCardContext_userGuidesPicker] = 0;
  *&v1[OBJC_IVAR____TtC4Maps16PlaceCardContext_shortcutEditSessionController] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC4Maps16PlaceCardContext_configuration] = a1;
  type metadata accessor for PlaceCardContextStack();
  v4 = swift_allocObject();
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = _swiftEmptyDictionarySingleton;
  *(v4 + 16) = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC4Maps16PlaceCardContext_cardStack] = v4;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v8, "init");
  sub_100504728();

  return v6;
}

uint64_t sub_100504728()
{
  v1 = *&v0[OBJC_IVAR____TtC4Maps16PlaceCardContext_cardStack];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = v1[5];
  v1[5] = sub_1005053CC;
  v1[6] = v2;

  sub_1000588AC(v3);

  v4 = v1[7];
  v1[7] = sub_100504940;
  v1[8] = 0;
  sub_1000588AC(v4);
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = v1[3];
  v1[3] = sub_1005053D4;
  v1[4] = v5;
  v7 = v0;

  return sub_1000588AC(v6);
}

void sub_100504848(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      swift_beginAccess();
      if (*(*(a1 + 16) + 16) || ![v5 isTopContext:v3])
      {
        [v5 setNeedsUpdateComponent:@"cards" animated:1];
      }

      else
      {
        [v5 popContext:v3 animated:1 completion:0];
      }
    }

    else
    {
      v5 = v3;
    }
  }
}

void sub_100504940(void *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = *(a2 + OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee14PlaceCardModel_placeItem);
      v7 = *(a2 + OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee14PlaceCardModel_shouldSaveToHistory);
      v8 = a1;
      [v5 setPlaceCardItem:v6 withHistory:v7];
      [v5 setExcludedContent:*(a2 + OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee14PlaceCardModel_excludedContent)];
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

char *sub_100504A7C(unint64_t a1, void *a2)
{
  v3 = a1 >> 61;
  if ((a1 >> 61) > 2)
  {
    if (v3 == 3)
    {
      v14 = objc_allocWithZone(MapsTransitIncidentsContaineeViewController);
      sub_1000CE6B8(&unk_10190A7F0);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v4 = [v14 initWithTransitIncidents:isa];

      v13 = "setContaineeDelegate:";
      goto LABEL_15;
    }

    if (v3 == 4)
    {
      v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee17NewUserGuideModel_saveSession);
      v6 = [v5 collection];
      v7 = [v6 handlerType];

      if (v7 == 3)
      {
        v8 = 256;
      }

      else
      {
        v8 = 201;
      }

      v4 = [objc_allocWithZone(CollectionCreateViewController) initWithEditSession:v5];

      [v4 setContaineeDelegate:a2];
      [v4 setTarget:v8];
      return v4;
    }

    v27 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee18PickUserGuideModel_containee);
    [v27 setContaineeDelegate:a2];

    return v27;
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = [objc_allocWithZone(VenueCategoryViewController) initWithCategoryCardItem:*((a1 & 0x1FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee21VenuesSearchCardModel_searchCardItem)];
        [v4 setContaineeDelegate:a2];
      }

      else
      {
        v16 = (a1 & 0x1FFFFFFFFFFFFFFFLL);
        v17 = ((a1 & 0x1FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee10NotesModel_initialText);
        v18 = *v17;
        v19 = v17[1];
        v20 = objc_allocWithZone(type metadata accessor for PlaceNoteEditViewController());

        v21 = v16;
        v4 = PlaceNoteEditViewController.init(note:)(v18, v19);
        [v4 setContaineeDelegate:a2];
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        *(v22 + 24) = a2;
        v23 = &v4[OBJC_IVAR____TtC4Maps27PlaceNoteEditViewController_dismissHandler];
        swift_beginAccess();
        v24 = *v23;
        *v23 = sub_1005053DC;
        v23[1] = v22;
        v25 = a2;
        sub_1000588AC(v24);
      }

      return v4;
    }

    v10 = [objc_allocWithZone(PlaceCardViewController) initWithVisualEffectDisabled:1];
    if (v10)
    {
      v4 = v10;
      v11 = [v4 cardPresentationController];
      if (v11)
      {
        v12 = v11;
        [v11 setPresentedModally:*(a1 + OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee14PlaceCardModel_presentedModally)];

        [v4 setExcludedContent:*(a1 + OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee14PlaceCardModel_excludedContent)];
        [v4 setIsAdditionalStop:*(a1 + OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee14PlaceCardModel_buildingMultistopRoute)];
        [v4 setPlaceCardItem:*(a1 + OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee14PlaceCardModel_placeItem) withHistory:*(a1 + OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee14PlaceCardModel_shouldSaveToHistory)];
        [v4 setContaineeDelegate:a2];

        v13 = "setPlaceCardDelegate:";
LABEL_15:
        [v4 v13];
        return v4;
      }

      __break(1u);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100504EA8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = *(a4 + OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee10NotesModel_completion);
    if (v6)
    {
      v7 = a3;
      v8 = a4;
      v6(a2, a3);
      a4 = v8;
      a3 = v7;
    }

    v9 = *(a4 + OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee10NotesModel_placeMUID);
    if (a3)
    {
      String._mapsui_nilIfEmpty.getter();
      if (v10)
      {

        LOBYTE(v10) = 1;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    _s4Maps16LibraryAnalyticsC26captureAddOrEditNoteAction9placeMUID05isNewH0ys6UInt64V_SbtFZ_0(v9, v10);
  }

  v11 = *(a5 + OBJC_IVAR____TtC4Maps16PlaceCardContext_cardStack);
  swift_beginAccess();
  v12 = *(v11 + 16);
  if (*(v12 + 2))
  {
    swift_beginAccess();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v13 = *(v12 + 2);
      if (v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v12 = sub_100416618(v12);
      v13 = *(v12 + 2);
      if (v13)
      {
LABEL_12:
        v14 = v13 - 1;
        v15 = *&v12[8 * v14 + 32];
        *(v12 + 2) = v14;
        *(v11 + 16) = v12;
        swift_endAccess();

        v16 = *(v11 + 40);
        if (v16)
        {

          v16(v11);
          sub_1000588AC(v16);
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_1005050EC(int a1, id a2, uint64_t a3, char a4)
{
  v6 = [a2 mapSelectionManager];
  if (v6)
  {
    v7 = v6;
    [v6 selectSearchResult:a3 animated:a4 & 1];
  }

  else
  {
    __break(1u);
  }
}

id sub_10050530C(void *a1)
{
  if ([a1 isCurrentLocation])
  {
    return 0;
  }

  result = [a1 searchResult];
  if (!result)
  {
    result = [a1 mapItem];
    if (result)
    {
      v3 = result;
      if ([result isCurrentLocation])
      {

        return 0;
      }

      v4 = [objc_allocWithZone(SearchResult) initWithMapItem:v3];

      return v4;
    }
  }

  return result;
}

uint64_t sub_1005053E4(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_title);
  v4 = *(v2 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_title);
  v5 = *(v2 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_title + 8);
  *v3 = result;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == result && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_100505488();
LABEL_11:
}

uint64_t sub_100505488()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&qword_101924BD8);
  v48 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v40 - v3;
  v5 = sub_1000CE6B8(&qword_10190B038);
  __chkstk_darwin(v5 - 8);
  v47 = v40 - v6;
  v7 = type metadata accessor for SectionHeaderViewModel.Size();
  v8 = *(v7 - 8);
  v9 = (__chkstk_darwin)(v7);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (__chkstk_darwin)(v9);
  v14 = v40 - v13;
  __chkstk_darwin(v12);
  v16 = v40 - v15;
  v17 = type metadata accessor for SectionHeaderViewModel();
  __chkstk_darwin(v17);
  v49 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v1 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_title + 8))
  {
    v51 = sub_1000CE6B8(&qword_101924BE0);
    v52 = sub_100507278(&qword_101924BE8, &qword_101924BE0);
    sub_10001A848(v50);
    UIHostingConfiguration<>.init(content:)();
    return UICollectionViewCell.contentConfiguration.setter();
  }

  v43 = v18;
  v20 = *(v1 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_sectionHeaderSize);
  if (v20 >= 3)
  {
    v50[0] = *(v1 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_sectionHeaderSize);
  }

  else
  {
    v42 = *(v1 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_title);
    (*(v8 + 104))(v14, **(&off_10161F7D0 + v20), v7);
    (*(v8 + 32))(v16, v14, v7);
    v21 = v16;
    v22 = *(v1 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_actionHandler);
    v45 = v8;
    v46 = v7;
    v44 = v21;
    if (v22)
    {
      v23 = *(v1 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_actionHandler + 8);
      v24 = *(v8 + 16);
      v40[1] = v11;
      v24(v11);

      sub_1000CD9D4(v22);

      sub_1000CD9D4(v22);
      v25 = v47;
      SectionHeaderViewModel.Action.init(onSelect:)();
      v26 = v4;
      v27 = v2;
      v28 = enum case for SectionHeaderViewModel.ActionType.chevron(_:);
      v29 = type metadata accessor for SectionHeaderViewModel.ActionType();
      v41 = v17;
      v30 = v29;
      v31 = *(v29 - 8);
      v32 = v28;
      v2 = v27;
      v4 = v26;
      (*(v31 + 104))(v25, v32, v29);
      v33 = v30;
      v17 = v41;
      (*(v31 + 56))(v25, 0, 1, v33);
      SectionHeaderViewModel.init(title:subtitle:size:symbol:action:)();
      sub_1000D3B90(v22, v23);
    }

    else
    {
      (*(v8 + 16))(v11);
      v35 = type metadata accessor for SectionHeaderViewModel.ActionType();
      (*(*(v35 - 8) + 56))(v47, 1, 1, v35);
      swift_bridgeObjectRetain_n();
      SectionHeaderViewModel.init(title:subtitle:size:symbol:action:)();
    }

    v36 = *(v1 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_sectionHeaderPosition);
    if (v36 <= 1)
    {

      v37 = static MapsDesignConstants.Spacing.listTopPadding.getter();
LABEL_11:
      v38 = __chkstk_darwin(v37);
      v39 = v49;
      v40[-2] = v49;
      *&v40[-1] = v38;
      sub_1000CE6B8(&qword_10191FA38);
      sub_1003E3EB4();
      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.all.getter();
      v51 = v2;
      v52 = sub_100507278(&qword_101924BF0, &qword_101924BD8);
      sub_10001A848(v50);
      UIHostingConfiguration.margins(_:_:)();
      (*(v48 + 8))(v4, v2);
      UICollectionViewCell.contentConfiguration.setter();
      (*(v45 + 8))(v44, v46);
      return (*(v43 + 8))(v39, v17);
    }

    if (v36 == 2)
    {

      goto LABEL_11;
    }

    v50[0] = *(v1 + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_sectionHeaderPosition);
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_100505D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SectionHeaderViewModel();
  __chkstk_darwin(v4);
  (*(v6 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  SectionHeader.init(model:)();
  LOBYTE(a1) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = sub_1000CE6B8(&qword_10191FA38);
  v16 = a2 + *(result + 36);
  *v16 = a1;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

id sub_100505EDC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_title];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_sectionHeaderSize] = 1;
  v5 = &v1[OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_actionHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_sectionHeaderPosition] = 2;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

void sub_10050604C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_1005060D4(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_title);
  v4 = *(v2 + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_title);
  v5 = *(v2 + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_title + 8);
  *v3 = result;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == result && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_100506AAC();
LABEL_11:
}

id sub_100506198(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (a1 + *a3);
  if (*v4)
  {
    v5 = v4[1];
    v8[4] = *v4;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_100039C64;
    v8[3] = a4;
    v6 = _Block_copy(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100506358(char *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void))
{
  v6 = *&a1[*a4];
  *&a1[*a4] = a3;
  if (v6 != a3)
  {
    v8 = a1;
    a5();
  }
}

id sub_1005063C0()
{
  v1 = &v0[OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_title];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_sectionHeaderSize] = 1;
  v2 = &v0[OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_actionHandler];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_sectionHeaderPosition] = 2;
  v7 = AnyView.init<A>(_:)();
  v3 = objc_allocWithZone(sub_1000CE6B8(&unk_10190DEB8));
  *&v0[OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_headerContainerVC] = UIHostingController.init(rootView:)();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for StandardSectionHeaderView();
  v4 = objc_msgSendSuper2(&v6, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100506608();

  return v4;
}

id sub_1005064D4(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_title];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_sectionHeaderSize] = 1;
  v10 = &v4[OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_actionHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_sectionHeaderPosition] = 2;
  v15 = AnyView.init<A>(_:)();
  v11 = objc_allocWithZone(sub_1000CE6B8(&unk_10190DEB8));
  *&v4[OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_headerContainerVC] = UIHostingController.init(rootView:)();
  v14.receiver = v4;
  v14.super_class = type metadata accessor for StandardSectionHeaderView();
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  sub_100506608();

  return v12;
}

void sub_100506608()
{
  v1 = OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_headerContainerVC;
  v2 = [*&v0[OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_headerContainerVC] view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [*&v0[v1] view];
  if (!v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor:v6];

  v7 = [*&v0[v1] view];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  [v0 addSubview:v7];

  sub_1000CE6B8(&qword_101908400);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1011E5C00;
  v10 = [*&v0[v1] view];
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [v0 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v9 + 32) = v14;
  v15 = [*&v0[v1] view];
  if (!v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = v15;
  v17 = [v15 trailingAnchor];

  v18 = [v0 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v9 + 40) = v19;
  v20 = [*&v0[v1] view];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v20;
  v22 = [v20 topAnchor];

  v23 = [v0 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v9 + 48) = v24;
  v25 = [*&v0[v1] view];
  if (!v25)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = objc_opt_self();
  v28 = [v26 bottomAnchor];

  v29 = [v0 bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v9 + 56) = v30;
  sub_10009B534();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];
}

void sub_100506AAC()
{
  v1 = sub_1000CE6B8(&qword_10191FA38);
  __chkstk_darwin(v1);
  v3 = &v51 - v2;
  v4 = sub_1000CE6B8(&qword_10190B038);
  __chkstk_darwin(v4 - 8);
  v6 = &v51 - v5;
  v7 = type metadata accessor for SectionHeaderViewModel.Size();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  __chkstk_darwin(v14);
  v61 = &v51 - v15;
  v16 = type metadata accessor for SectionHeaderViewModel();
  v59 = *(v16 - 8);
  v60 = v16;
  __chkstk_darwin(v16);
  v20 = __chkstk_darwin(v17);
  if (!*(v0 + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_title + 8))
  {
    v32 = *(v0 + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_headerContainerVC);
    v62 = AnyView.init<A>(_:)();
    dispatch thunk of UIHostingController.rootView.setter();

    return;
  }

  v55 = v19;
  v56 = &v51 - v18;
  v21 = *(v0 + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_sectionHeaderSize);
  if (v21 >= 3)
  {
    v62 = *(v0 + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_sectionHeaderSize);
  }

  else
  {
    v54 = *(v0 + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_title);
    (*(v8 + 104))(v13, **(&off_10161F7D0 + v21), v7, v20);
    v22 = v61;
    (*(v8 + 32))(v61, v13, v7);
    v23 = *(v0 + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_actionHandler);
    v57 = v8;
    v58 = v7;
    if (v23)
    {
      v52 = v1;
      v53 = v0;
      v24 = *(v0 + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_actionHandler + 8);
      (*(v8 + 16))(v10, v22, v7);

      sub_1000CD9D4(v23);

      sub_1000CD9D4(v23);
      SectionHeaderViewModel.Action.init(onSelect:)();
      v25 = enum case for SectionHeaderViewModel.ActionType.chevron(_:);
      v26 = v3;
      v27 = type metadata accessor for SectionHeaderViewModel.ActionType();
      v28 = *(v27 - 8);
      (*(v28 + 104))(v6, v25, v27);
      v29 = v27;
      v3 = v26;
      (*(v28 + 56))(v6, 0, 1, v29);
      v30 = v56;
      SectionHeaderViewModel.init(title:subtitle:size:symbol:action:)();
      v31 = v24;
      v1 = v52;
      v0 = v53;
      sub_1000D3B90(v23, v31);
    }

    else
    {
      (*(v8 + 16))(v10, v22, v7);
      v33 = type metadata accessor for SectionHeaderViewModel.ActionType();
      (*(*(v33 - 8) + 56))(v6, 1, 1, v33);
      swift_bridgeObjectRetain_n();
      v30 = v56;
      SectionHeaderViewModel.init(title:subtitle:size:symbol:action:)();
    }

    v34 = *(v0 + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_sectionHeaderPosition);
    if (!v34)
    {

      static MapsDesignConstants.Spacing.listTopPadding.getter();
      v35 = v57;
      v36 = v58;
      v37 = v61;
      goto LABEL_13;
    }

    v35 = v57;
    v36 = v58;
    v37 = v61;
    if (v34 == 1)
    {

      static MapsDesignConstants.Spacing.listTopPadding.getter();
LABEL_13:
      v38 = v59;
      v39 = v30;
      v40 = v30;
      v41 = v60;
      (*(v59 + 16))(v55, v39, v60);
      SectionHeader.init(model:)();
      v42 = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v43 = &v3[*(v1 + 36)];
      *v43 = v42;
      *(v43 + 1) = v44;
      *(v43 + 2) = v45;
      *(v43 + 3) = v46;
      *(v43 + 4) = v47;
      v43[40] = 0;
      sub_1003E3EB4();
      v48 = AnyView.init<A>(_:)();
      v49 = *(v0 + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_headerContainerVC);
      v62 = v48;
      v50 = v49;

      dispatch thunk of UIHostingController.rootView.setter();

      (*(v35 + 8))(v37, v36);
      (*(v38 + 8))(v40, v41);
      return;
    }

    if (v34 == 2)
    {

      goto LABEL_13;
    }

    v62 = *(v0 + OBJC_IVAR____TtC4Maps25StandardSectionHeaderView_sectionHeaderPosition);
  }

  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

id sub_100507104()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StandardSectionHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1005071C0()
{
  result = qword_101924BC8;
  if (!qword_101924BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924BC8);
  }

  return result;
}

unint64_t sub_100507218()
{
  result = qword_101924BD0;
  if (!qword_101924BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101924BD0);
  }

  return result;
}

uint64_t sub_100507278(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000D6664(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1005072D8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100486640();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100507A2C();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 32);
LABEL_8:
  *(v2 + 32) = a1;
}

id sub_100507440(SEL *a1)
{
  swift_getKeyPath();
  sub_100486640();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v1 + 32);
  if (result)
  {
    result = [result infoCard];
    if (result)
    {
      v4 = result;
      v5 = [result *a1];

      if (v5)
      {
        v6 = [objc_opt_self() _navigation_stringForServerFormattedString:v5];
        if (v6)
        {
          v7 = v6;
          v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          return v8;
        }
      }

      return 0;
    }
  }

  return result;
}

id sub_100507548()
{
  swift_getKeyPath();
  sub_100486640();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + 32);
  if (result)
  {
    result = [result infoCard];
    if (result)
    {
      v2 = result;
      v3 = [result title];

      if (v3)
      {
        v4 = [objc_opt_self() _navigation_stringForServerFormattedString:v3];
        if (v4)
        {
          v5 = v4;
          v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          return v6;
        }
      }

      return 0;
    }
  }

  return result;
}

void *sub_100507650()
{
  swift_getKeyPath();
  sub_100486640();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_1005076C8()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100486640();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  sub_1000D88A8(v1, *(v3 + 24));
  return v1;
}

uint64_t sub_10050774C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_1000D88A8(a2, a3);
  return sub_1000D3B90(v3, v4);
}

id sub_100507798@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100486640();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

void sub_100507820(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1005072D8(v1);
}

uint64_t sub_100507850()
{
  sub_1000D3B90(*(v0 + 16), *(v0 + 24));

  v1 = OBJC_IVAR____TtC4Maps24RouteAnnotationViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RouteAnnotationViewModel()
{
  result = qword_101924C28;
  if (!qword_101924C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100507950()
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

void sub_1005079F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

unint64_t sub_100507A2C()
{
  result = qword_101924CC0;
  if (!qword_101924CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101924CC0);
  }

  return result;
}

uint64_t sub_100507C0C()
{
  _StringGuts.grow(_:)(22);

  type metadata accessor for UUID();
  sub_10050B3D0(&qword_101915A98, &type metadata accessor for UUID);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x3A656C646E61680ALL;
  v1._object = 0xE900000000000020;
  String.append(_:)(v1);
  type metadata accessor for Handle();
  sub_10050B3D0(&qword_101924E00, &type metadata accessor for Handle);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0x3A64692D7370616DLL;
}

Class sub_100507E30(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1 + *a3, v5, v7);
  v10.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v5);

  return v10.super.isa;
}

uint64_t sub_100507FA0(uint64_t a1, void *a2, uint64_t (*a3)(char *, uint64_t))
{
  swift_getObjectType();
  sub_10017A750(a1, v10);
  if (!v11)
  {
    sub_1000DB2F4(v10);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v7 = a3(&v9[*a2], v3 + *a2);

  return v7 & 1;
}

uint64_t sub_100508078(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(char *, uint64_t))
{
  if (a3)
  {
    v8 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v9 = a1;
  }

  v10 = sub_100507FA0(v12, a4, a5);

  sub_1000DB2F4(v12);
  return v10 & 1;
}

id sub_10050816C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_1005081DC()
{
  _StringGuts.grow(_:)(24);

  type metadata accessor for UUID();
  sub_10050B3D0(&qword_101915A98, &type metadata accessor for UUID);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x6F697461636F6C0ALL;
  v1._object = 0xEB00000000203A6ELL;
  String.append(_:)(v1);
  type metadata accessor for Location();
  sub_10050B3D0(&qword_101924DF8, &type metadata accessor for Location);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0x3A64692D7370616DLL;
}

id sub_100508390(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1005083F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t *a5)
{
  v7 = *a3;
  v8 = a4(0);
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v9 = *a5;
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 8);

  return v11(a1 + v9, v10);
}

uint64_t sub_1005084E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v6 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1005086AC()
{
  v1 = v0;
  _StringGuts.grow(_:)(23);

  v2 = [*(v0 + OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_handle) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x6F697461636F6C0ALL;
  v7._object = 0xEB00000000203A6ELL;
  String.append(_:)(v7);
  v8 = *(v1 + OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location);
  sub_1000CE6B8(&qword_101924DF0);
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  return 0x203A656C646E6168;
}

id sub_100508AB4()
{
  result = [objc_opt_self() _mapkit_sharedLocationContactIdentifer];
  if (result)
  {
    v1 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    result = String.init<A>(_:)();
    qword_1019604F0 = result;
    *algn_1019604F8 = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100508C94()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact);
  if (!v1)
  {
    v6 = *(v0 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle);
    if (!v6)
    {
      return 0;
    }

    v7 = v6;
    Handle.prettyName.getter();
    if (!v8)
    {
      Handle.identifier.getter();
    }

    v5 = String._bridgeToObjectiveC()();

    return v5;
  }

  v2 = objc_opt_self();
  v3 = v1;
  result = [v2 stringFromContact:v3 style:0];
  if (result || (result = [v3 givenName]) != 0)
  {
    v5 = result;

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100508DAC()
{
  v1 = v0;
  v2 = 0x65736C6166;
  _StringGuts.grow(_:)(89);
  v3._countAndFlagsBits = 0x6C646E6148736168;
  v3._object = 0xEB00000000203A65;
  String.append(_:)(v3);
  v4 = OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle;
  v5 = *(v0 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle);
  if (v5)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 0x61636F4C7361680ALL;
  v9._object = 0xEE00203A6E6F6974;
  String.append(_:)(v9);
  v10 = *(v0 + v4);
  if (v10 && *(v10 + OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location))
  {
    v11 = 0xE400000000000000;
    v12 = 1702195828;
  }

  else
  {
    v11 = 0xE500000000000000;
    v12 = 0x65736C6166;
  }

  v13 = v11;
  String.append(_:)(*&v12);

  v14._countAndFlagsBits = 0x746E6F437361680ALL;
  v14._object = 0xED0000203A746361;
  String.append(_:)(v14);
  v15 = OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact;
  v16 = *(v0 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact);
  if (v16)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v16)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  v19 = v18;
  String.append(_:)(*&v17);

  v20._countAndFlagsBits = 0xD000000000000016;
  v20._object = 0x800000010123ED20;
  String.append(_:)(v20);
  v21 = *(v0 + v15);
  if (v21 && ((v22 = [v21 postalAddresses], sub_1000CE6B8(&unk_101918B20), v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v22, v23 >> 62) ? (v24 = _CocoaArrayWrapper.endIndex.getter()) : (v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v24 > 0))
  {
    v25 = 0xE400000000000000;
    v2 = 1702195828;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  v26._countAndFlagsBits = v2;
  v26._object = v25;
  String.append(_:)(v26);

  v27._object = 0x800000010123ED40;
  v27._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v27);
  v28 = *(v1 + v15);
  if (v28)
  {
    v29 = [v28 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1000CE6B8(&unk_10190D010);
  v30._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v30);

  return 0;
}

id sub_1005090E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_handle);
  v3 = Handle.identifier.getter();
  v5 = v4;

  _StringGuts.grow(_:)(18);

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7 = objc_allocWithZone(NSURL);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 initWithString:{v8, 0xD000000000000010, 0x800000010123ECE0}];

  result = v9;
  if (!v9)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10050923C()
{
  v1 = OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact);
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 phoneNumbers];
  sub_1000CE6B8(&unk_101918B20);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = [v6 value];

  v8 = [v7 unformattedInternationalStringValue];
  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    _StringGuts.grow(_:)(121);
    v12._object = 0x800000010123EC60;
    v12._countAndFlagsBits = 0xD00000000000002ELL;
    String.append(_:)(v12);
    v13._countAndFlagsBits = v9;
    v13._object = v11;
    String.append(_:)(v13);

    v14._countAndFlagsBits = 0xD000000000000049;
    v14._object = 0x800000010123EC90;
    String.append(_:)(v14);
    v15 = objc_allocWithZone(NSURL);
    v16 = String._bridgeToObjectiveC()();

    v17 = [v15 initWithString:{v16, 0, 0xE000000000000000}];

    if (v17)
    {
      return v17;
    }

    return 0;
  }

LABEL_12:
  v19 = *(v0 + v1);
  if (!v19)
  {
    return 0;
  }

  v20 = [v19 emailAddresses];
  sub_1000CE6B8(&unk_101918B20);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
LABEL_23:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_15;
    }

LABEL_24:

    return 0;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_15:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v21 = *(v4 + 32);
  }

  v22 = v21;

  v23 = [v22 value];

  if (v23)
  {
    _StringGuts.grow(_:)(121);
    v24._object = 0x800000010123EC60;
    v24._countAndFlagsBits = 0xD00000000000002ELL;
    String.append(_:)(v24);
    v25 = [v23 description];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29._countAndFlagsBits = v26;
    v29._object = v28;
    String.append(_:)(v29);

    v30._countAndFlagsBits = 0xD000000000000049;
    v30._object = 0x800000010123EC90;
    String.append(_:)(v30);
    v31 = objc_allocWithZone(NSURL);
    v32 = String._bridgeToObjectiveC()();

    v33 = [v31 initWithString:v32];

    if (v33)
    {
      return v33;
    }
  }

  return 0;
}

uint64_t sub_1005096BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_handle);
  Handle.identifier.getter();

  result = sub_1005090E8();
  if (result)
  {

    return 1;
  }

  return result;
}

uint64_t sub_100509744(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for Location();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle);
  if (v16 && (v17 = *(v16 + OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location)) != 0)
  {
    (*(v12 + 16))(v15, v17 + OBJC_IVAR____TtC4Maps20SearchFindMyLocation_location, v11, v13);
    Location.timestamp.getter();
    (*(v12 + 8))(v15, v11);
    Date.init()();
    Date.init(timeIntervalSince1970:)();
    Date.timeIntervalSince(_:)();
    if (v18 >= 60.0)
    {
      v23 = *(v2 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_dateFormatter);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v25 = Date._bridgeToObjectiveC()().super.isa;
      v26 = [v23 localizedStringForDate:isa relativeToDate:v25];

      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = *(v5 + 8);
      v27(v7, v4);
      v27(v10, v4);
      return v21;
    }

    v19 = *(v5 + 8);
    v19(v7, v4);
    v19(v10, v4);
    if (a1)
    {
      v20 = OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_locationJustNowForPin;
    }

    else
    {
      v20 = OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_locationJustNowString;
    }
  }

  else
  {
    v20 = OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_noSharedLocationString;
  }

  v21 = *(v2 + v20);

  return v21;
}

NSString sub_100509AEC()
{
  if (sub_100509744(0) == *(v0 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_noSharedLocationString) && v1 == *(v0 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_noSharedLocationString + 8))
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      sub_1000CE6B8(&unk_10190D5C0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1011E1D30;
      v5 = sub_100509744(0);
      v7 = v6;
      *(v4 + 56) = &type metadata for String;
      *(v4 + 64) = sub_1000DA61C();
      *(v4 + 32) = v5;
      *(v4 + 40) = v7;
      static String.localizedStringWithFormat(_:_:)();

      v8 = String._bridgeToObjectiveC()();

      return v8;
    }
  }

  return String._bridgeToObjectiveC()();
}

unint64_t sub_100509C50()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle);
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_handle);
    v9 = Handle.identifier.getter();
  }

  else
  {
    if (!*(v0 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact))
    {
      v20 = 0;
      v21 = 0xE000000000000000;
      v15 = v3;
      _StringGuts.grow(_:)(29);

      v20 = 0xD00000000000001BLL;
      v21 = 0x800000010123EC40;
      UUID.init()();
      v16 = UUID.uuidString.getter();
      v18 = v17;
      (*(v2 + 8))(v6, v15);
      v19._countAndFlagsBits = v16;
      v19._object = v18;
      String.append(_:)(v19);
      goto LABEL_6;
    }

    v8 = [*(v0 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact) identifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = v9;
  v12 = v10;

  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v20 = 0xD000000000000017;
  v21 = 0x800000010123EC20;
  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);
LABEL_6:

  return v20;
}

id sub_100509E3C(void *a1)
{
  v3 = OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact;
  v4 = *(v1 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact);
  if (!v4)
  {
    v6 = [objc_allocWithZone(CNMutableContact) init];
    v14 = sub_100509AEC();
    v20 = [a1 _cnPostalAddress];
    if (!v20)
    {

      v6 = *(v1 + v3);
      v30 = v6;
      return v6;
    }

    v5 = v20;
    v19 = objc_opt_self();
    if (qword_101906908 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

  v5 = v4;
  [v5 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100014C84(0, &qword_10191FF68);
  swift_dynamicCast();
  v6 = v32;
  v7 = sub_100509AEC();
  v8 = [a1 _cnPostalAddress];
  if (!v8)
  {

    return v6;
  }

  v9 = v8;
  v10 = objc_opt_self();
  if (qword_101906908 != -1)
  {
    swift_once();
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 entryWithIdentifier:v11 label:v7 value:v9];

  v13 = [v32 postalAddresses];
  v14 = sub_1000CE6B8(&unk_101918B20);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v16)
  {
    v17 = v12;
    v27 = [v32 postalAddresses];
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_21;
  }

  v17 = v12;
  v18 = [v32 postalAddresses];
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v19 >> 62) || (_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
  {
    sub_10054EA78(0, 0, v17);

LABEL_21:
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v32 setPostalAddresses:isa];

    return v6;
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_12:
  v21 = String._bridgeToObjectiveC()();
  v22 = [v19 entryWithIdentifier:v21 label:v14 value:v5];

  v23 = v22;
  v24 = [v6 postalAddresses];
  sub_1000CE6B8(&unk_101918B20);
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v26 = Array._bridgeToObjectiveC()().super.isa;

  [v6 setPostalAddresses:v26];

  [v6 copy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  sub_100014C84(0, &unk_10191FF10);
  if (swift_dynamicCast())
  {
    return v32;
  }

  else
  {
    return 0;
  }
}

id sub_10050A3E8(void *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 > 1)
  {
    if (a2 != 2 && a2 != 3)
    {
      if (a2 == 4 && a5)
      {
        v10 = a5;
        v11 = sub_100509E3C(v10);

        return v11;
      }

      goto LABEL_8;
    }

LABEL_9:
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = sub_10050A4EC(a1, v15, v16, a3, a4, a5);

    return v13;
  }

  if (a2 < 2)
  {
    goto LABEL_9;
  }

LABEL_8:
  v13 = *(v5 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact);
  v14 = v13;
  return v13;
}

uint64_t sub_10050A4EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = *(v6 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact);
  if (!v7)
  {
    return 0;
  }

  v10 = v7;
  [v10 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100014C84(0, &qword_10191FF68);
  swift_dynamicCast();
  v11 = v59;
  v12 = [a1 _cnPostalAddress];
  v13 = &selRef_postDismissalBlock;
  if (v12)
  {
    v14 = v12;
    v15 = objc_allocWithZone(CNLabeledValue);
    v16 = v14;
    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    v55 = [v15 initWithIdentifier:v17 label:v18 value:v16];

    v54 = v16;
    v19 = [v59 postalAddresses];
    v20 = sub_1000CE6B8(&unk_101918B20);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v21 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      if (!i)
      {
        break;
      }

      v23 = [v11 v13[11]];
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v24 >> 62)
      {
        v25 = _CocoaArrayWrapper.endIndex.getter();
        if (!v25)
        {
LABEL_29:

          isa = Array._bridgeToObjectiveC()().super.isa;

          [v11 setPostalAddresses:isa];

          break;
        }
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v25)
        {
          goto LABEL_29;
        }
      }

      v51 = a6;
      v52 = v11;
      v53 = v10;
      a6 = 0;
      v56 = v24 & 0xC000000000000001;
      v10 = (v24 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v56)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a6 >= v10[2])
          {
            goto LABEL_26;
          }

          v26 = *(v24 + 8 * a6 + 32);
        }

        v17 = v26;
        v11 = (a6 + 1);
        if (__OFADD__(a6, 1))
        {
          break;
        }

        v13 = v25;
        v27 = v24;
        v28 = v20;
        v29 = [v26 identifier];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        if (v30 == a4 && v32 == a5)
        {
        }

        else
        {
          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v34)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }
        }

        v20 = v28;
        v24 = v27;
        ++a6;
        v25 = v13;
        if (v11 == v13)
        {
          v11 = v52;
          v10 = v53;
          v13 = &selRef_postDismissalBlock;
          a6 = v51;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

    v36 = v55;
    v37 = [v11 v13[11]];
    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v38 >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
LABEL_43:
      v50 = _CocoaArrayWrapper.endIndex.getter();

      if (!v50)
      {
        goto LABEL_44;
      }

      goto LABEL_36;
    }

    sub_10054EA78(0, 0, v36);

    v39 = Array._bridgeToObjectiveC()().super.isa;

    [v11 setPostalAddresses:v39];
  }

  if (!a6)
  {

    return v11;
  }

  v17 = a6;
  v40 = [v17 _cnPostalAddress];
  if (!v40)
  {

    return v11;
  }

  a6 = v40;
  v41 = sub_100509AEC();
  v38 = [objc_allocWithZone(CNLabeledValue) initWithLabel:v41 value:a6];

  v42 = [v11 v13[11]];
  sub_1000CE6B8(&unk_101918B20);
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v43 >> 62)
  {
    goto LABEL_43;
  }

  v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v44)
  {
LABEL_44:

    goto LABEL_45;
  }

LABEL_36:
  v45 = v38;
  v46 = [v11 v13[11]];
  v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v47 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result >= 1)
    {
      goto LABEL_38;
    }
  }

  else
  {
    result = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 1)
    {
LABEL_38:
      sub_10054EA78(1, 1, v45);

      v49 = Array._bridgeToObjectiveC()().super.isa;

      [v11 setPostalAddresses:v49];

LABEL_45:
      return v11;
    }
  }

  __break(1u);
  return result;
}

void sub_10050ABDC(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact);
  v4 = *(v1 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contactMatchInfo);
  v5 = *(v1 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle);
  v6 = *(v1 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handleMatchInfo);
  v7 = type metadata accessor for MapsAutocompletePerson();
  v8 = objc_allocWithZone(v7);
  v13 = v6;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = sub_10050AF34(v3, v4, v5, v6);

  a1[3] = v7;
  *a1 = v12;
}

id sub_10050AF34(void *a1, void *a2, void *a3, void *a4)
{
  v6 = OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact;
  *&v4[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact] = 0;
  v7 = OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contactMatchInfo;
  *&v4[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contactMatchInfo] = 0;
  v8 = OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle;
  *&v4[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle] = 0;
  v9 = OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handleMatchInfo;
  *&v4[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handleMatchInfo] = 0;
  v4[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_placeSummaryShowsStackedIconsAndLabels] = 1;
  v10 = OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_dateFormatter;
  *&v4[v10] = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
  v11 = OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_locationString;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v12.super.isa = qword_1019600D8;
  v37._object = 0x800000010123EA40;
  v13._countAndFlagsBits = 0x6E6F697461636F4CLL;
  v13._object = 0xEB00000000402520;
  v14._countAndFlagsBits = 0xD00000000000002DLL;
  v14._object = 0x800000010123EA10;
  v37._countAndFlagsBits = 0xD000000000000058;
  *&v4[v11] = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, qword_1019600D8, v13, v37);
  v15 = &v4[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_locationJustNowString];
  v38._object = 0x800000010123EAC0;
  v16._countAndFlagsBits = 0xD000000000000017;
  v16._object = 0x800000010123EAA0;
  v38._countAndFlagsBits = 0xD00000000000003CLL;
  v17._countAndFlagsBits = 0x776F4E207473754ALL;
  v17._object = 0xE800000000000000;
  *v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v12, v17, v38);
  v18 = &v4[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_locationJustNowForPin];
  v39._object = 0x800000010123EB20;
  v19._countAndFlagsBits = 0xD00000000000001CLL;
  v19._object = 0x800000010123EB00;
  v39._countAndFlagsBits = 0xD000000000000075;
  v20._countAndFlagsBits = 0x776F4E207473754ALL;
  v20._object = 0xE800000000000000;
  *v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v12, v20, v39);
  v21 = &v4[OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_noSharedLocationString];
  v40._object = 0x800000010123EBF0;
  v22._countAndFlagsBits = 0xD000000000000022;
  v22._object = 0x800000010123EBA0;
  v23._object = 0x800000010123EBD0;
  v40._countAndFlagsBits = 0xD000000000000020;
  v23._countAndFlagsBits = 0xD000000000000011;
  *v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v12, v23, v40);
  v24 = *&v4[v6];
  *&v4[v6] = a1;
  v25 = a1;

  v26 = *&v4[v7];
  *&v4[v7] = a2;
  v27 = a2;

  v28 = *&v4[v8];
  *&v4[v8] = a3;
  v29 = a3;

  v30 = *&v4[v9];
  *&v4[v9] = a4;
  v31 = a4;

  v36.receiver = v4;
  v36.super_class = type metadata accessor for MapsAutocompletePerson();
  return objc_msgSendSuper2(&v36, "init");
}

BOOL sub_10050B214(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact);
  v5 = *(a2 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    sub_100014C84(0, &unk_10191FF10);
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

  v9 = *(a1 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contactMatchInfo);
  v10 = *(a2 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contactMatchInfo);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    sub_100014C84(0, &qword_101924DE8);
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

  v14 = *(a1 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle);
  v15 = *(a2 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v15)
  {
    return 0;
  }

  type metadata accessor for MapsFindMyLocationHandle();
  v16 = v15;
  v17 = v14;
  v18 = static NSObject.== infix(_:_:)();

  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v19 = *(a1 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handleMatchInfo);
  v20 = *(a2 + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handleMatchInfo);
  result = (v19 | v20) == 0;
  if (v19)
  {
    v22 = v20 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    sub_100014C84(0, &qword_101924DE8);
    v23 = v20;
    v24 = v19;
    v25 = static NSObject.== infix(_:_:)();

    return v25 & 1;
  }

  return result;
}

uint64_t sub_10050B3D0(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_10050B450(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10050CE74(&qword_101924F18, type metadata accessor for RouteItemImageProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_10050B4F8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10050CE74(&qword_101924F18, type metadata accessor for RouteItemImageProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_10050B5BC(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(v2 + *a2);
  if (!v6)
  {
    if (!a1)
    {
      v10 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10050CE74(&qword_101924F18, type metadata accessor for RouteItemImageProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100014C84(0, &qword_10190AB90);
  v7 = v6;
  v8 = a1;
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v3 + v5);
LABEL_8:
  *(v3 + v5) = a1;
}

id sub_10050B750()
{
  swift_getKeyPath();
  sub_10050CE74(&qword_101924F18, type metadata accessor for RouteItemImageProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__routeData);

  return v1;
}

id sub_10050B808@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10050CE74(&qword_101924F18, type metadata accessor for RouteItemImageProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__routeData);
  *a2 = v4;

  return v4;
}

void sub_10050B8C8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps22RouteItemImageProvider__routeData;
  v5 = *(v1 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__routeData);
  sub_100014C84(0, &qword_10190EC50);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10050CE74(&qword_101924F18, type metadata accessor for RouteItemImageProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_10050BA50(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps22RouteItemImageProvider__cacheKey;
  v5 = *(v1 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__cacheKey);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10050CE74(&qword_101924F18, type metadata accessor for RouteItemImageProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100014C84(0, &unk_101924F20);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_10050BBE8(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v4 = v3;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  aBlock[0] = v3;
  sub_10050CE74(&qword_101924F18, type metadata accessor for RouteItemImageProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC4Maps22RouteItemImageProvider__routeData;
  v10 = [*(v3 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__routeData) routeID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  ImageProvidingSpecs.preferredSize.getter();
  v12 = v11;
  ImageProvidingSpecs.preferredSize.getter();
  v14 = v13;
  ImageProvidingSpecs.displayScale.getter();
  v16 = v15;
  v17 = ImageProvidingSpecs.darkMode.getter();
  v18 = objc_allocWithZone(MURouteSnapshotKey);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v20 = [v18 initWithIdentifier:isa width:v17 & 1 height:v12 scale:v14 padding:v16 darkMode:{10.0, 10.0, 10.0, 10.0}];

  (*(v6 + 8))(v8, v5);
  swift_getKeyPath();
  aBlock[0] = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = OBJC_IVAR____TtC4Maps22RouteItemImageProvider__image;
  v21 = *(v4 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__image);
  if (v21)
  {
    swift_getKeyPath();
    aBlock[0] = v4;
    v22 = v20;
    v23 = v21;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = *(v4 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__cacheKey);
    if (v24)
    {
      sub_100014C84(0, &unk_101924F20);
      v25 = v24;
      v26 = static NSObject.== infix(_:_:)();

      if (v26)
      {
        v27 = v23;
        v45(v21);

        v28 = v27;
LABEL_14:

        return;
      }
    }

    else
    {
    }
  }

  v28 = v20;
  sub_10050BA50(v20);
  v29 = objc_opt_self();
  v30 = [v29 sharedInstance];
  v27 = [v30 checkCacheForKey:v28];

  swift_getKeyPath();
  if (!v27)
  {
    aBlock[0] = v4;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = [objc_allocWithZone(GEORouteBuilder_PersistentData) initWithPersistentData:*(v4 + v9)];
    v32 = [v27 buildRoute];
    if (v32)
    {
      v33 = v32;
      v34 = [v29 sharedInstance];
      v35 = swift_allocObject();
      v36 = v45;
      v37 = v46;
      v35[2] = v4;
      v35[3] = v36;
      v35[4] = v37;
      aBlock[4] = sub_10050CEFC;
      aBlock[5] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1004F3090;
      aBlock[3] = &unk_10161F830;
      v38 = _Block_copy(aBlock);

      [v34 getSnapshotForKey:v28 route:v33 completion:v38];

      _Block_release(v38);
      v27 = v33;
      v28 = v34;
    }

    goto LABEL_14;
  }

  aBlock[0] = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ([*(v4 + v9) isAvailableForCurrentCountry])
  {
    v31 = v27;
LABEL_13:
    sub_10050B5BC(v31, &OBJC_IVAR____TtC4Maps22RouteItemImageProvider__image);
    swift_getKeyPath();
    aBlock[0] = v4;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v41 = *(v4 + v44);
    v42 = v41;
    v45(v41);

    v28 = v42;
    goto LABEL_14;
  }

  v39 = [objc_opt_self() grayColor];
  v40 = [v27 _maps_colorMonochromeImageWithColor:v39];

  v31 = v40;
  if (v40)
  {
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_10050C1D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v14 = a2;
  swift_errorRetain();

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v13;
  v16[5] = a2;
  v16[6] = a1;
  v16[7] = a4;
  v16[8] = a5;

  sub_10020AAE4(0, 0, v11, &unk_10120DBE8, v16);
}

uint64_t sub_10050C360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  type metadata accessor for MainActor();
  v8[11] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10050C400, v10, v9);
}

void sub_10050C400()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0[7];
    if (v2 && !v0[8])
    {
      v3 = Strong;
      swift_getKeyPath();
      v0[5] = v3;
      sub_10050CE74(&qword_101924F18, type metadata accessor for RouteItemImageProvider);
      v4 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if ([*(v3 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__routeData) isAvailableForCurrentCountry])
      {
        v5 = v4;
        v6 = v0[7];
      }

      else
      {
        v7 = [objc_opt_self() grayColor];
        v8 = [v4 _maps_colorMonochromeImageWithColor:v7];

        if (!v8)
        {
          __break(1u);
          return;
        }

        v6 = v8;
      }

      v9 = v0[9];
      sub_10050B5BC(v6, &OBJC_IVAR____TtC4Maps22RouteItemImageProvider__image);
      swift_getKeyPath();
      v0[5] = v3;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v10 = *(v3 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__image);
      v11 = v10;
      v9(v10);
    }
  }

  v12 = v0[1];

  v12();
}

uint64_t sub_10050C648()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v8 = v0;
  sub_10050CE74(&qword_101924F18, type metadata accessor for RouteItemImageProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = [*(v0 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__routeData) routeID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10050CE74(&qword_1019156D0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10050C800()
{
  v1 = OBJC_IVAR____TtC4Maps22RouteItemImageProvider_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC4Maps22RouteItemImageProvider___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RouteItemImageProvider()
{
  result = qword_101924E58;
  if (!qword_101924E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10050C970()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_10050CAC4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_10050CE74(&qword_101924F18, type metadata accessor for RouteItemImageProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__placeholderImage);
  v3 = v2;
  return v2;
}

uint64_t sub_10050CB74@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC4Maps22RouteItemImageProvider_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

Swift::Int sub_10050CC20()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  Hasher.init(_seed:)();
  swift_getKeyPath();
  v8 = v5;
  sub_10050CE74(&qword_101924F18, type metadata accessor for RouteItemImageProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = [*(v5 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__routeData) routeID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10050CE74(&qword_1019156D0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v4, v1);
  return Hasher._finalize()();
}

uint64_t sub_10050CE74(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10050CEBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__placeholderImage);
  *(v1 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__placeholderImage) = v2;
  v4 = v2;
}

void sub_10050CF08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__image);
  *(v1 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__image) = v2;
  v4 = v2;
}

uint64_t sub_10050CF48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10003AC4C;

  return sub_10050C360(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_10050D024()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__cacheKey);
  *(v1 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__cacheKey) = v2;
  v4 = v2;
}

void sub_10050D064()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__routeData);
  *(v1 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__routeData) = v2;
  v4 = v2;
}

uint64_t sub_10050D0A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  swift_getKeyPath();
  v16 = a1;
  sub_10050CE74(&qword_101924F18, type metadata accessor for RouteItemImageProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = [*(a1 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__routeData) routeID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  v16 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = [*(a2 + OBJC_IVAR____TtC4Maps22RouteItemImageProvider__routeData) routeID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v12) = static UUID.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  v13(v10, v4);
  return v12 & 1;
}

uint64_t sub_10050D2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100210F08(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100024F64(v10, &unk_10190BA50);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100024F64(a3, &unk_10190BA50);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100024F64(a3, &unk_10190BA50);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10050D564(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10005E838((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000CE6B8(&qword_101915AB0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1000CE6B8(&unk_101912700);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

id static VisitedPlacesFakeDataHelper.isEnabled.getter()
{
  if (qword_1019067D8 != -1)
  {
    swift_once();
  }

  if (byte_1019601D0 != 1)
  {
    return 0;
  }

  result = [objc_opt_self() sharedPlatform];
  if (result)
  {
    v1 = result;
    v2 = [result isInternalInstall];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10050D7A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v34[1] = a2;
  v6 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v6 - 8);
  v8 = v34 - v7;
  v9 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v9 - 8);
  v11 = v34 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019067D8 != -1)
  {
    swift_once();
  }

  if (byte_1019601D0 == 1)
  {
    v16 = a3;
    v17 = a4;
    v18 = [objc_opt_self() sharedPlatform];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 isInternalInstall];

      if (v20)
      {
        v21 = v17;
        v22 = v16;
        v23 = v8;
        UUID.init(uuidString:)();
        if ((*(v13 + 48))(v11, 1, v12) == 1)
        {
          sub_100024F64(v11, &unk_101918E50);
        }

        else
        {
          (*(v13 + 32))(v15, v11, v12);
          type metadata accessor for MapsSyncQueryPredicate();
          sub_1000CE6B8(&unk_10190D5C0);
          v24 = v13;
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_1011E1D30;
          isa = UUID._bridgeToObjectiveC()().super.isa;
          *(v25 + 56) = sub_100014C84(0, &qword_101922DA0);
          *(v25 + 64) = sub_1002592A8();
          *(v25 + 32) = isa;
          NSPredicate.init(format:_:)();
          v27 = objc_allocWithZone(type metadata accessor for MapsSyncRange());
          MapsSyncRange.init(offset:limit:)();
          v28 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
          v29 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
          v30 = type metadata accessor for TaskPriority();
          (*(*(v30 - 8) + 56))(v23, 1, 1, v30);
          v31 = swift_allocObject();
          *(v31 + 16) = 0;
          *(v31 + 24) = 0;
          *(v31 + 32) = v22 & 1;
          v32 = v34[0];
          *(v31 + 40) = v29;
          *(v31 + 48) = v32;
          *(v31 + 56) = v21;
          *(v31 + 64) = v32;
          v33 = v29;
          sub_10050D2C8(0, 0, v23, &unk_10120DC98, v31);

          (*(v24 + 8))(v15, v12);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10050DBBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a5;
  *(v8 + 144) = a4;
  return _swift_task_switch(sub_10050DBE4, 0, 0);
}

uint64_t sub_10050DBE4()
{
  v1 = *(v0 + 16);
  if (*(v0 + 144) == 1)
  {
    type metadata accessor for FavoriteItemRequest();
    *(v0 + 40) = FavoriteItemRequest.__allocating_init()();
    v5 = (&async function pointer to dispatch thunk of FavoriteItemRequest.fetch(options:) + async function pointer to dispatch thunk of FavoriteItemRequest.fetch(options:));
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v3 = sub_10050DD1C;
  }

  else
  {
    type metadata accessor for CollectionPlaceItemRequest();
    *(v0 + 64) = CollectionPlaceItemRequest.__allocating_init()();
    v5 = (&async function pointer to dispatch thunk of CollectionPlaceItemRequest.fetch(options:) + async function pointer to dispatch thunk of CollectionPlaceItemRequest.fetch(options:));
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v3 = sub_10050E06C;
  }

  v2[1] = v3;

  return v5(v1);
}

uint64_t sub_10050DD1C(uint64_t a1)
{
  v3 = *(*v2 + 40);
  v4 = *v2;
  *(v4 + 56) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_10050DE6C, 0, 0);
  }
}

uint64_t sub_10050DE6C()
{
  v1 = v0[7];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    v8 = 0x64656C696146;
    v9 = 0xE600000000000000;
    goto LABEL_13;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[7] + 32);
  }

  v4 = dispatch thunk of FavoriteItem.muid.getter();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 longLongValue];

    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_10050E3BC;

    return sub_1005144E4(v6);
  }

  v8 = 0x742064656C696146;
  v9 = 0xED0000646461206FLL;
LABEL_13:
  sub_100514230(v8, v9, 0x6F6E206563616C50, 0xEF646E756F662074);
  v10 = v0[1];

  return v10();
}

uint64_t sub_10050E06C(uint64_t a1)
{
  v3 = *(*v2 + 64);
  v4 = *v2;
  *(v4 + 80) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_10050E1BC, 0, 0);
  }
}

uint64_t sub_10050E1BC()
{
  v1 = v0[10];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    v8 = 0x64656C696146;
    v9 = 0xE600000000000000;
    goto LABEL_13;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[10] + 32);
  }

  v4 = dispatch thunk of CollectionPlaceItem.muid.getter();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 longLongValue];

    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_10050E3BC;

    return sub_1005144E4(v6);
  }

  v8 = 0x742064656C696146;
  v9 = 0xED0000646461206FLL;
LABEL_13:
  sub_100514230(v8, v9, 0x6F6E206563616C50, 0xEF646E756F662074);
  v10 = v0[1];

  return v10();
}

uint64_t sub_10050E3BC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = v2;

  if (v2)
  {
    v5 = sub_10050E748;
  }

  else
  {
    v5 = sub_10050E4D4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10050E4D4()
{
  v1 = [*(v0 + 96) enclosingRegionIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 muid];

    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_10050E618;

    return sub_1005144E4(v3);
  }

  else
  {
    v6 = *(v0 + 104);
    static VisitedPlacesFakeDataHelper.addVisit(mapItem:cityName:dayAgo:)(v6, 0, 0, *(v0 + 24));

    swift_unknownObjectRelease();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10050E618(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  *(*v3 + 128) = a1;

  if (v2)
  {

    v6 = sub_10050E8DC;
  }

  else
  {
    *(v5 + 136) = a2;
    v6 = sub_10050E7EC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10050E748()
{
  sub_100514230(0x742064656C696146, 0xED0000646461206FLL, 0xD000000000000029, 0x800000010123EEF0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10050E7EC()
{
  v1 = *(v0 + 128);

  v2 = [v1 name];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = 0;
    v6 = 0;
  }

  v7 = *(v0 + 104);
  static VisitedPlacesFakeDataHelper.addVisit(mapItem:cityName:dayAgo:)(v7, v4, v6, *(v0 + 24));

  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10050E8DC()
{
  v1 = *(v0 + 104);
  static VisitedPlacesFakeDataHelper.addVisit(mapItem:cityName:dayAgo:)(v1, 0, 0, *(v0 + 24));

  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10050EB68(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10050EC1C;

  return sub_1005144E4(a1);
}

uint64_t sub_10050EC1C(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = *(*v3 + 16);
  v8 = *v3;

  v9 = (v7 + 16);
  v10 = *(v8 + 16);
  if (v4)
  {
    v11 = _convertErrorToNSError(_:)();

    (*v9)(v10, 0, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (*v9)(v10, a1, a2, 0);
    _Block_release(v10);
    swift_unknownObjectRelease();
  }

  v12 = *(v8 + 8);

  return v12();
}

void static VisitedPlacesFakeDataHelper.addVisit(mapItem:cityName:dayAgo:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = v40 - v8;
  if (qword_1019067D8 != -1)
  {
    swift_once();
  }

  if (byte_1019601D0 == 1)
  {
    v10 = [objc_opt_self() sharedPlatform];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 isInternalInstall];

      if (v12)
      {
        v13 = sub_100514B24(a1, a4);
        if (v13)
        {
          v15 = v13;
          v16 = v14;
          v17 = v4;

          dispatch thunk of VisitedLocation.mapItemCity.setter();
          v18 = [a1 _geoMapItem];
          if (v18 && (v19 = [v18 _mapsCategoryId], swift_unknownObjectRelease(), v19))
          {
            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v22 = v21;

            v23 = type metadata accessor for TaskPriority();
            (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
            v24 = swift_allocObject();
            v24[2] = 0;
            v24[3] = 0;
            v24[4] = a1;
            v24[5] = v20;
            v24[6] = v22;
            v24[7] = v17;
            v24[8] = v16;
            v24[9] = v15;
            v25 = a1;
            sub_10020AAE4(0, 0, v9, &unk_10120DC08, v24);
          }

          else
          {
            if (qword_101906910 != -1)
            {
              swift_once();
            }

            v26 = type metadata accessor for Logger();
            sub_100021540(v26, qword_101924F30);
            v27 = a1;
            v28 = Logger.logObject.getter();
            v29 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              v31 = swift_slowAlloc();
              v41 = v31;
              *v30 = 136315138;
              v32 = [v27 name];
              if (v32)
              {
                v33 = v32;
                v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v36 = v35;
              }

              else
              {
                v34 = 0;
                v36 = 0;
              }

              v40[1] = v34;
              v40[2] = v36;
              sub_1000CE6B8(&unk_10190D010);
              v37 = String.init<A>(describing:)();
              v39 = sub_10004DEB8(v37, v38, &v41);

              *(v30 + 4) = v39;
              _os_log_impl(&_mh_execute_header, v28, v29, "failed to add %s because mapItem.geoMapItem.mapsCategoryId is nil", v30, 0xCu);
              sub_10004E3D0(v31);
            }

            sub_100514230(0x742064656C696146, 0xED0000646461206FLL, 0xD000000000000015, 0x800000010123EE00);
          }
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10050F1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = v10;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  return _swift_task_switch(sub_10050F1E4, 0, 0);
}

id sub_10050F1E4()
{
  result = [*(v0 + 72) _geoMapItem];
  *(v0 + 112) = result;
  if (result)
  {
    v2 = result;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = sub_10050F2D0;

    return sub_10023B4B4(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10050F2D0(uint64_t a1, __int16 a2)
{
  v3 = *v2;
  *(v3 + 32) = a2;
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  *(v3 + 152) = a2;

  swift_unknownObjectRelease_n();

  return _swift_task_switch(sub_10050F3F8, 0, 0);
}

uint64_t sub_10050F3F8()
{
  v52 = v0;
  v1 = *(v0 + 152);
  if ((v1 & 0x100) == 0)
  {
    if (v1)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(v0 + 24);
    }

    if (v2 >= 0xFFFFFFFF80000000)
    {
      if (v2 > 0x7FFFFFFF)
      {
        __break(1u);
      }

      else
      {
        dispatch thunk of VisitedLocation.mapItemTopLevelCategory.setter();
        if (qword_101906910 == -1)
        {
LABEL_8:
          v3 = *(v0 + 72);
          v4 = type metadata accessor for Logger();
          sub_100021540(v4, qword_101924F30);
          v5 = v3;
          v6 = Logger.logObject.getter();
          v7 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v6, v7))
          {
            v8 = *(v0 + 72);
            v9 = swift_slowAlloc();
            v10 = swift_slowAlloc();
            v50 = v10;
            *v9 = 136315138;
            v11 = [v8 name];
            if (v11)
            {
              v12 = v11;
              v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v15 = v14;
            }

            else
            {
              v13 = 0;
              v15 = 0;
            }

            *(v0 + 56) = v13;
            *(v0 + 64) = v15;
            sub_1000CE6B8(&unk_10190D010);
            v40 = String.init<A>(describing:)();
            v42 = sub_10004DEB8(v40, v41, &v50);

            *(v9 + 4) = v42;
            _os_log_impl(&_mh_execute_header, v6, v7, "saving mapItem %s", v9, 0xCu);
            sub_10004E3D0(v10);
          }

          v44 = *(v0 + 96);
          v43 = *(v0 + 104);
          type metadata accessor for MapsSyncStore();
          *(v0 + 128) = static MapsSyncStore.sharedStore.getter();
          sub_1000CE6B8(&qword_101908400);
          v45 = swift_allocObject();
          *(v0 + 136) = v45;
          *(v45 + 16) = xmmword_1011E4FD0;
          *(v45 + 32) = v43;
          *(v45 + 40) = v44;
          v49 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
          v46 = v43;
          v47 = v44;
          v48 = swift_task_alloc();
          *(v0 + 144) = v48;
          *v48 = v0;
          v48[1] = sub_10050F974;

          return v49(v45);
        }
      }

      swift_once();
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (qword_101906910 != -1)
  {
LABEL_26:
    swift_once();
  }

  v16 = *(v0 + 72);
  v17 = type metadata accessor for Logger();
  sub_100021540(v17, qword_101924F30);
  v18 = v16;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 72);
    v22 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = [v21 name];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    v29 = *(v0 + 80);
    v28 = *(v0 + 88);
    *(v0 + 40) = v25;
    *(v0 + 48) = v27;
    sub_1000CE6B8(&unk_10190D010);
    v30 = String.init<A>(describing:)();
    v32 = sub_10004DEB8(v30, v31, &v50);

    *(v22 + 4) = v32;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_10004DEB8(v29, v28, &v50);
    _os_log_impl(&_mh_execute_header, v19, v20, "failed to add %s because category %s is not eligible for visited places", v22, 0x16u);
    swift_arrayDestroy();
  }

  v34 = *(v0 + 80);
  v33 = *(v0 + 88);
  v50 = 0;
  v51 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v35._object = 0x800000010123EF80;
  v35._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v35);
  v36._countAndFlagsBits = v34;
  v36._object = v33;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000024;
  v37._object = 0x800000010123EFA0;
  String.append(_:)(v37);
  sub_100514230(0x742064656C696146, 0xED0000646461206FLL, v50, v51);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_10050F974()
{
  v2 = *v1;
  v3 = *v1;

  v4 = *(v2 + 128);
  if (v0)
  {
  }

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_10050FB6C()
{
  type metadata accessor for VisitRequest();
  *(v0 + 16) = VisitRequest.__allocating_init()();
  v3 = (&async function pointer to dispatch thunk of VisitRequest.fetch() + async function pointer to dispatch thunk of VisitRequest.fetch());
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10050FC24;

  return v3();
}

uint64_t sub_10050FC24(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 16);
  if (v1)
  {

    v7 = sub_1005102A4;
  }

  else
  {

    *(v5 + 32) = a1;
    v7 = sub_10050FD70;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10050FD70()
{
  v0[5] = v0[4];
  type metadata accessor for VisitedLocationRequest();
  v0[6] = VisitedLocationRequest.__allocating_init()();
  v3 = (&async function pointer to dispatch thunk of VisitedLocationRequest.fetch() + async function pointer to dispatch thunk of VisitedLocationRequest.fetch());
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_10050FE30;

  return v3();
}

uint64_t sub_10050FE30(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 48);
  if (v1)
  {

    v7 = sub_100510360;
  }

  else
  {

    *(v5 + 64) = a1;
    v7 = sub_10050FF7C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10050FF7C()
{
  v1 = v0[8];
  v2 = v0[5];
  type metadata accessor for MapsSyncStore();
  v0[9] = static MapsSyncStore.sharedStore.getter();
  if (v2)
  {
    v3 = v0[5];
    if (v3 >> 62)
    {
      type metadata accessor for MapsSyncObject();

      v4 = _bridgeCocoaArray<A>(_:)();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

      type metadata accessor for MapsSyncObject();
      v4 = v3;
    }
  }

  else
  {
    if (v1)
    {
      v5 = v1;
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    sub_1002479DC(v5);
    if (_swiftEmptyArrayStorage >> 62)
    {
      type metadata accessor for MapsSyncObject();

      v4 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for MapsSyncObject();
      v4 = _swiftEmptyArrayStorage;
    }
  }

  v0[10] = v4;

  v8 = (&async function pointer to dispatch thunk of MapsSyncStore.delete(objects:) + async function pointer to dispatch thunk of MapsSyncStore.delete(objects:));
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_100510154;

  return v8(v4);
}

uint64_t sub_100510154()
{
  v2 = *v1;
  v3 = *v1;

  v4 = *(v2 + 72);
  if (v0)
  {
  }

  else
  {
  }

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1005102A4()
{
  v0[5] = 0;
  type metadata accessor for VisitedLocationRequest();
  v0[6] = VisitedLocationRequest.__allocating_init()();
  v3 = (&async function pointer to dispatch thunk of VisitedLocationRequest.fetch() + async function pointer to dispatch thunk of VisitedLocationRequest.fetch());
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_10050FE30;

  return v3();
}

uint64_t sub_100510360()
{
  v1 = v0[5];
  type metadata accessor for MapsSyncStore();
  v0[9] = static MapsSyncStore.sharedStore.getter();
  if (v1)
  {
    v2 = v0[5];
    if (v2 >> 62)
    {
      type metadata accessor for MapsSyncObject();

      v3 = _bridgeCocoaArray<A>(_:)();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

      type metadata accessor for MapsSyncObject();
      v3 = v2;
    }
  }

  else
  {
    sub_1002479DC(_swiftEmptyArrayStorage);
    if (_swiftEmptyArrayStorage >> 62)
    {
      type metadata accessor for MapsSyncObject();

      v3 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for MapsSyncObject();
      v3 = _swiftEmptyArrayStorage;
    }
  }

  v0[10] = v3;

  v6 = (&async function pointer to dispatch thunk of MapsSyncStore.delete(objects:) + async function pointer to dispatch thunk of MapsSyncStore.delete(objects:));
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_100510154;

  return v6(v3);
}

void *static VisitedPlacesFakeDataHelper.fakeVisitCellActions(mapsSyncId:isPinned:)(uint64_t a1, uint64_t a2, int a3)
{
  v27 = a3;
  v25 = a1;
  v26 = a2;
  v24 = type metadata accessor for CellAction();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019067D8 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    if (byte_1019601D0 != 1)
    {
      return _swiftEmptyArrayStorage;
    }

    result = [objc_opt_self() sharedPlatform];
    if (!result)
    {
      break;
    }

    v7 = result;
    v8 = [result isInternalInstall];

    if (!v8)
    {
      return _swiftEmptyArrayStorage;
    }

    v9 = [objc_opt_self() standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 BOOLForKey:v10];

    v12 = _swiftEmptyArrayStorage;
    if (!v11)
    {
      return v12;
    }

    sub_100513F5C();
    v14 = *(v13 + 16);
    if (!v14)
    {
LABEL_15:

      return v12;
    }

    v29 = _swiftEmptyArrayStorage;
    v15 = v13;
    sub_1005112AC(0, v14, 0);
    v16 = 0;
    v12 = v29;
    v23[1] = v3 + 32;
    v17 = (v15 + 48);
    while (v16 < *(v15 + 16))
    {
      v18 = *(v17 - 2);
      v19 = *(v17 - 1);
      v20 = *v17;

      sub_100510810(v18, v19, v20, v25, v26, v27 & 1, v28, v5);

      v29 = v12;
      v22 = v12[2];
      v21 = v12[3];
      if (v22 >= v21 >> 1)
      {
        sub_1005112AC(v21 > 1, v22 + 1, 1);
        v12 = v29;
      }

      ++v16;
      v12[2] = v22 + 1;
      (*(v3 + 32))(v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v22, v5, v24);
      v17 += 3;
      if (v14 == v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_100510810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a7;
  v26 = a6;
  v24 = a4;
  v25 = a3;
  v29 = a2;
  v30 = a8;
  v31 = a1;
  v28 = type metadata accessor for MapsDesignAccessibilityString();
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for CellAction.Placement();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CellAction.Style();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = "ad place. Are you online?";
  v20 = swift_allocObject();
  *(v20 + 16) = v24;
  *(v20 + 24) = a5;
  *(v20 + 32) = v26;
  v21 = v27;
  *(v20 + 40) = v25;
  *(v20 + 48) = v21;
  (*(v17 + 104))(v19, enum case for CellAction.Style.default(_:), v16);
  (*(v13 + 104))(v15, enum case for CellAction.Placement.default(_:), v12);
  *v11 = 0x73697620656B6166;
  v11[1] = 0xEA00000000007469;
  (*(v9 + 104))(v11, enum case for MapsDesignAccessibilityString.button(_:), v28);

  return CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
}

Class static VisitedPlacesFakeDataHelper.fakeVisitUIKitMenu(mapsSyncId:isPinned:)(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_1019067D8 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    if (byte_1019601D0 != 1)
    {
      return 0;
    }

    result = [objc_opt_self() sharedPlatform];
    if (!result)
    {
      break;
    }

    v7 = result;
    v8 = [(objc_class *)result isInternalInstall];

    if (!v8)
    {
      return 0;
    }

    v9 = [objc_opt_self() standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 BOOLForKey:v10];

    result = 0;
    if (!v11 || !a2)
    {
      return result;
    }

    sub_100513F5C();
    v13 = v12;
    v14 = *(v12 + 16);
    if (!v14)
    {
LABEL_14:

      sub_100014C84(0, &qword_101926880);
      v20._object = 0x800000010123EE20;
      v20._countAndFlagsBits = 0xD000000000000015;
      v23.value.super.isa = 0;
      v23.is_nil = 0;
      return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v20, 0, v23, 1, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v21).super.super.isa;
    }

    specialized ContiguousArray.reserveCapacity(_:)();
    v15 = 0;
    v16 = (v13 + 48);
    while (v15 < *(v13 + 16))
    {
      ++v15;
      v17 = *(v16 - 2);
      v18 = *(v16 - 1);
      v19 = *v16;
      v16 += 3;

      sub_100510D84(v17, v18, v19, a1, a2, a3 & 1, v22);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v14 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_100510D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  sub_100014C84(0, &unk_101923740);

  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  *(v14 + 32) = a6;
  *(v14 + 40) = a3;
  *(v14 + 48) = a7;

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

void sub_100510F50()
{
  v0 = [objc_opt_self() _maps_keyMapsSceneDelegate];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 chromeViewController];

    v3 = String._bridgeToObjectiveC()();
    v4 = String._bridgeToObjectiveC()();
    v5 = String._bridgeToObjectiveC()();
    [v2 _maps_presentSimpleAlertWithTitle:v3 message:v4 dismissalActionTitle:v5];
  }
}

id VisitedPlacesFakeDataHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisitedPlacesFakeDataHelper();
  return objc_msgSendSuper2(&v2, "init");
}

id VisitedPlacesFakeDataHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisitedPlacesFakeDataHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100511104()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_101924F30);
  sub_100021540(v0, qword_101924F30);
  return Logger.init(subsystem:category:)();
}

char *sub_100511184(char *a1, int64_t a2, char a3)
{
  result = sub_100511AE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1005111A4(char *a1, int64_t a2, char a3)
{
  result = sub_100511BF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1005111C4(char *a1, int64_t a2, char a3)
{
  result = sub_100511D14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1005111E4(size_t a1, int64_t a2, char a3)
{
  result = sub_100513C74(a1, a2, a3, *v3, &unk_101925170, &unk_1011FD180, type metadata accessor for UserGuideItemRowViewModel);
  *v3 = result;
  return result;
}

size_t sub_100511228(size_t a1, int64_t a2, char a3)
{
  result = sub_100513C74(a1, a2, a3, *v3, &unk_101924FA0, &unk_1011FD190, &type metadata accessor for FilterBarOption.SubOption);
  *v3 = result;
  return result;
}

void *sub_10051126C(void *a1, int64_t a2, char a3)
{
  result = sub_100511E20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10051128C(void *a1, int64_t a2, char a3)
{
  result = sub_100511F68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1005112AC(size_t a1, int64_t a2, char a3)
{
  result = sub_100513C74(a1, a2, a3, *v3, &unk_101923750, &unk_1012096E0, &type metadata accessor for CellAction);
  *v3 = result;
  return result;
}

size_t sub_1005112F0(size_t a1, int64_t a2, char a3)
{
  result = sub_1005120B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100511310(char *a1, int64_t a2, char a3)
{
  result = sub_1005122A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100511330(size_t a1, int64_t a2, char a3)
{
  result = sub_100513C74(a1, a2, a3, *v3, &qword_1019250C0, &unk_1011FD210, type metadata accessor for PlaceSummaryViewModelLine);
  *v3 = result;
  return result;
}

char *sub_100511374(char *a1, int64_t a2, char a3)
{
  result = sub_1005123A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100511394(void *a1, int64_t a2, char a3)
{
  result = sub_10006641C(a1, a2, a3, *v3, &unk_1019157F0, &unk_1011E4FB0, &unk_10190E0B8);
  *v3 = result;
  return result;
}

void *sub_1005113D4(void *a1, int64_t a2, char a3)
{
  result = sub_1005124A8(a1, a2, a3, *v3, &unk_101925120, &unk_10120DD98, &qword_10190EC70);
  *v3 = result;
  return result;
}

void *sub_100511414(void *a1, int64_t a2, char a3)
{
  result = sub_1005124A8(a1, a2, a3, *v3, &unk_101924FB0, &unk_10120DC58, &unk_10190EC78);
  *v3 = result;
  return result;
}

void *sub_100511454(void *a1, int64_t a2, char a3)
{
  result = sub_1005125DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100511474(void *a1, int64_t a2, char a3)
{
  result = sub_1005131DC(a1, a2, a3, *v3, &unk_1019250B0, &unk_10120DD40, &unk_101921E30);
  *v3 = result;
  return result;
}

void *sub_1005114B4(void *a1, int64_t a2, char a3)
{
  result = sub_10006641C(a1, a2, a3, *v3, &unk_101925180, &unk_10120DDC8, &qword_10190DB20);
  *v3 = result;
  return result;
}

size_t sub_1005114F4(size_t a1, int64_t a2, char a3)
{
  result = sub_100513C74(a1, a2, a3, *v3, &unk_101924FE0, &unk_1011EB290, type metadata accessor for CarPlaceRowItem);
  *v3 = result;
  return result;
}

char *sub_100511538(char *a1, int64_t a2, char a3)
{
  result = sub_10051272C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100511558(char *a1, int64_t a2, char a3)
{
  result = sub_100512830(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100511578(size_t a1, int64_t a2, char a3)
{
  result = sub_100513C74(a1, a2, a3, *v3, &qword_10190EC90, &unk_1011EC500, &type metadata accessor for FilterBarOption);
  *v3 = result;
  return result;
}

void *sub_1005115BC(void *a1, int64_t a2, char a3)
{
  result = sub_1005131DC(a1, a2, a3, *v3, &qword_101924F88, &unk_10120DC40, &qword_101924F90);
  *v3 = result;
  return result;
}

char *sub_1005115FC(char *a1, int64_t a2, char a3)
{
  result = sub_100512950(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10051161C(size_t a1, int64_t a2, char a3)
{
  result = sub_100513C74(a1, a2, a3, *v3, &qword_10191D770, &unk_1011E52E0, &type metadata accessor for CardButtonViewModel);
  *v3 = result;
  return result;
}

void *sub_100511660(void *a1, int64_t a2, char a3)
{
  result = sub_100512A70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100511680(size_t a1, int64_t a2, char a3)
{
  result = sub_100513C74(a1, a2, a3, *v3, &qword_1019250F8, &unk_10120DD70, type metadata accessor for PublisherGuideTileViewModel);
  *v3 = result;
  return result;
}

char *sub_1005116C4(char *a1, int64_t a2, char a3)
{
  result = sub_100512CBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1005116E4(char *a1, int64_t a2, char a3)
{
  result = sub_100512DC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100511704(char *a1, int64_t a2, char a3)
{
  result = sub_100512FCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100511724(size_t a1, int64_t a2, char a3)
{
  result = sub_100513C74(a1, a2, a3, *v3, &qword_1019250D8, &unk_10120DD58, &type metadata accessor for GuideTileViewModel);
  *v3 = result;
  return result;
}

void *sub_100511768(void *a1, int64_t a2, char a3)
{
  result = sub_10006641C(a1, a2, a3, *v3, &unk_101925030, &unk_1011FD118, &qword_101926E30);
  *v3 = result;
  return result;
}

size_t sub_1005117A8(size_t a1, int64_t a2, char a3)
{
  result = sub_100513C74(a1, a2, a3, *v3, &unk_1019250A0, &unk_10120DD30, type metadata accessor for PlaceSummaryViewModelUnit);
  *v3 = result;
  return result;
}

char *sub_1005117EC(char *a1, int64_t a2, char a3)
{
  result = sub_1005130D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10051180C(void *a1, int64_t a2, char a3)
{
  result = sub_1005131DC(a1, a2, a3, *v3, &qword_10191AE60, &unk_1011FCF40, &qword_101924FD0);
  *v3 = result;
  return result;
}

char *sub_10051184C(char *a1, int64_t a2, char a3)
{
  result = sub_100513324(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10051186C(char *a1, int64_t a2, char a3)
{
  result = sub_100513430(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10051188C(char *a1, int64_t a2, char a3)
{
  result = sub_10051353C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1005118AC(size_t a1, int64_t a2, char a3)
{
  result = sub_100513C74(a1, a2, a3, *v3, &qword_10191AF60, &unk_1011FD1E8, &type metadata accessor for AdvisoryViewModel);
  *v3 = result;
  return result;
}

size_t sub_1005118F0(size_t a1, int64_t a2, char a3)
{
  result = sub_100513C74(a1, a2, a3, *v3, &qword_10190A070, &unk_1011E78E0, &type metadata accessor for RichTextViewModel);
  *v3 = result;
  return result;
}

size_t sub_100511934(size_t a1, int64_t a2, char a3)
{
  result = sub_100513C74(a1, a2, a3, *v3, &qword_101925098, &unk_10120DD28, &type metadata accessor for CityTileViewModel);
  *v3 = result;
  return result;
}

void *sub_100511978(void *a1, int64_t a2, char a3)
{
  result = sub_100513790(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100511998(char *a1, int64_t a2, char a3)
{
  result = sub_1005138D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1005119B8(char *a1, int64_t a2, char a3)
{
  result = sub_100513B08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1005119D8(size_t a1, int64_t a2, char a3)
{
  result = sub_100513C74(a1, a2, a3, *v3, &unk_101925050, &unk_1011F97D0, &type metadata accessor for Handle);
  *v3 = result;
  return result;
}

size_t sub_100511A1C(size_t a1, int64_t a2, char a3)
{
  result = sub_100513C74(a1, a2, a3, *v3, &qword_10191AED8, &unk_10120DCD0, type metadata accessor for VisitsLoader.VisitData);
  *v3 = result;
  return result;
}

void *sub_100511A60(void *a1, int64_t a2, char a3)
{
  result = sub_10006641C(a1, a2, a3, *v3, &unk_101925010, &unk_1011FD108, &qword_10191AEC8);
  *v3 = result;
  return result;
}

size_t sub_100511AA0(size_t a1, int64_t a2, char a3)
{
  result = sub_100513C74(a1, a2, a3, *v3, &unk_101925020, &unk_1011FD100, &type metadata accessor for NearbyTileViewModel);
  *v3 = result;
  return result;
}

char *sub_100511AE4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&unk_101916430);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100511BF4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&unk_101925040);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100511D14(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_101909BF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100511E20(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_1019250E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000CE6B8(&qword_1019250F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100511F68(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_101924FD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000CE6B8(&qword_101922F90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1005120B0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000CE6B8(&qword_10190EBB8);
  v10 = *(sub_1000CE6B8(&unk_10190EB90) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size_0(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000CE6B8(&unk_10190EB90) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1005122A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&unk_1019250C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1005123A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_10191AED0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1005124A8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000CE6B8(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_0(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 5);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[4 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 32 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000CE6B8(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1005125DC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&unk_101925110);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000CE6B8(&qword_10190EC68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10051272C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_10190EBB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100512830(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_101924F80);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100512950(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_101924F98);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100512A70(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_101925100);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000CE6B8(&qword_101925108);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100512BB8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&unk_101925140);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_100512CBC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_101911C58);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100512DC0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_101925158);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100512ECC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_101925150);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_100512FCC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_1019250E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1005130D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_101925090);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1005131DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000CE6B8(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_0(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000CE6B8(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_100513324(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_101925078);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100513430(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&unk_10191C280);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10051353C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_101915FE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10051365C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&unk_101925000);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000CE6B8(&qword_1019188A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100513790(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&unk_101925160);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000CE6B8(&qword_101919D58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1005138D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&unk_101924FC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1005139E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&unk_101925190);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100513B08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_10191AF40);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100513C74(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000CE6B8(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100513E50(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000CE6B8(&qword_10191AE80);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100513F5C()
{
  sub_1000CE6B8(&qword_10191B028);
  v0 = swift_allocObject();
  v1 = 0;
  *(v0 + 16) = xmmword_1011E1D60;
  *(v0 + 32) = 0x6973695620646441;
  *(v0 + 40) = 0xEF7961646F542074;
  *(v0 + 48) = xmmword_10120DBF0;
  *(v0 + 64) = 0x800000010123EF60;
  *(v0 + 72) = 1;
  do
  {
    v2 = *(&off_101600280 + v1 + 32);
    _StringGuts.grow(_:)(21);

    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 0x6761207379616420;
    v4._object = 0xE90000000000006FLL;
    String.append(_:)(v4);
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    if (v6 >= v5 >> 1)
    {
      v0 = sub_100355E44((v5 > 1), v6 + 1, 1, v0);
    }

    *(v0 + 16) = v6 + 1;
    v7 = (v0 + 24 * v6);
    v7[4] = 0x6973695620646441;
    v7[5] = 0xEA00000000002074;
    v7[6] = v2;
    v1 += 8;
  }

  while (v1 != 32);
  v8 = 0;
  while (1)
  {
    v9 = *(&off_1016002C0 + v8 + 32);
    _StringGuts.grow(_:)(23);

    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0x207368746E6F6D20;
    v11._object = 0xEB000000006F6761;
    String.append(_:)(v11);
    if ((v9 * 30) >> 64 != (30 * v9) >> 63)
    {
      break;
    }

    v13 = *(v0 + 16);
    v12 = *(v0 + 24);
    if (v13 >= v12 >> 1)
    {
      v0 = sub_100355E44((v12 > 1), v13 + 1, 1, v0);
    }

    *(v0 + 16) = v13 + 1;
    v14 = (v0 + 24 * v13);
    v14[4] = 0x6973695620646441;
    v14[5] = 0xEA00000000002074;
    v14[6] = 30 * v9;
    v8 += 8;
    if (v8 == 64)
    {
      return;
    }
  }

  __break(1u);
}

uint64_t sub_100514230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014C84(0, &qword_10190B4F0);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v18;
  v15[5] = a4;
  aBlock[4] = sub_100515614;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_10161FA38;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000DB364();
  sub_1000CE6B8(&unk_10190B500);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v19);
}

uint64_t sub_100514504()
{
  v1 = [objc_opt_self() sharedService];
  v0[20] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 defaultTraits];
    v0[21] = v3;
    if (v3)
    {
      v4 = v0[19];
      v5 = v3;
      [v3 setAnalyticsOptOut:1];
      sub_1000CE6B8(&unk_101916430);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1011E1D30;
      *(v6 + 56) = &type metadata for UInt64;
      *(v6 + 32) = v4;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v8 = [v2 ticketForMUIDs:isa traits:v5];
      v0[22] = v8;

      if (v8)
      {
        v0[2] = v0;
        v0[7] = v0 + 18;
        v0[3] = sub_1005147A8;
        v10 = swift_continuation_init();
        v0[17] = sub_1000CE6B8(&qword_1019219A8);
        v0[10] = _NSConcreteStackBlock;
        v0[11] = 1107296256;
        v0[12] = sub_10050D564;
        v0[13] = &unk_10161F8F8;
        v0[14] = v10;
        [v8 submitWithCompletionHandler:v0 + 10];
        v9 = v0 + 2;
      }

      else
      {
        __break(1u);
      }

      return _swift_continuation_await(v9);
    }
  }

  v11 = objc_allocWithZone(NSError);
  v12 = String._bridgeToObjectiveC()();
  [v11 initWithDomain:v12 code:0 userInfo:0];

  swift_willThrow();
  v13 = v0[1];

  return v13();
}

uint64_t sub_1005147A8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_100514A90;
  }

  else
  {
    v2 = sub_1005148B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005148B8()
{
  v1 = *(v0 + 144);
  swift_unknownObjectRelease();
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
    swift_unknownObjectRetain();
  }

  v4 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:v3 isPlaceHolderPlace:0];
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 160);

    v7 = *(v0 + 8);

    return v7(v3, v5);
  }

  swift_unknownObjectRelease();
LABEL_13:
  v9 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = objc_allocWithZone(NSError);
  v11 = String._bridgeToObjectiveC()();
  [v10 initWithDomain:v11 code:0 userInfo:0];

  swift_willThrow();
  swift_willThrow();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100514A90()
{
  v2 = v0[20];
  v1 = v0[21];
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

id sub_100514B24(void *a1, void (*a2)(char *, uint64_t))
{
  v50 = a2;
  v48 = a1;
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar();
  v49 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = type metadata accessor for Date();
  __chkstk_darwin(v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  __chkstk_darwin(v21);
  v25 = &v43 - v24;
  if (qword_1019067D8 != -1)
  {
    v44 = v11;
    v47 = v22;
    v42 = v23;
    swift_once();
    v23 = v42;
    v22 = v47;
    v11 = v44;
  }

  if (byte_1019601D0 != 1)
  {
    return 0;
  }

  v45 = v25;
  v46 = v23;
  v44 = v11;
  v47 = v22;
  result = [objc_opt_self() sharedPlatform];
  if (!result)
  {
    goto LABEL_15;
  }

  v27 = result;
  v28 = [result isInternalInstall];

  if (!v28)
  {
    return 0;
  }

  static Calendar.current.getter();
  result = (*(v3 + 104))(v5, enum case for Calendar.Component.day(_:), v2);
  if (__OFSUB__(0, v50))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  Date.init()();
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v29 = v46;
  v30 = v17;
  v31 = v47;
  v50 = *(v46 + 8);
  v50(v30, v47);
  (*(v3 + 8))(v5, v2);
  (*(v49 + 8))(v8, v6);
  if ((*(v29 + 48))(v14, 1, v31) == 1)
  {
    sub_100024F64(v14, &qword_10190EBD0);
    return 0;
  }

  Date.startOfDay.getter();
  v32 = v14;
  v33 = v50;
  v50(v32, v31);
  v34 = v45;
  (*(v29 + 32))(v45, v20, v31);
  v35 = [objc_opt_self() mapItemStorageForGEOMapItem:{objc_msgSend(v48, "_geoMapItem")}];
  result = swift_unknownObjectRelease();
  if (!v35)
  {
    goto LABEL_16;
  }

  type metadata accessor for VisitedLocation();
  type metadata accessor for MapsSyncStore();
  static MapsSyncStore.sharedStore.getter();
  MapsSyncObject.__allocating_init(store:)();
  v36 = v35;
  dispatch thunk of VisitedLocation.mapItemStorage.setter();
  type metadata accessor for Visit();
  v37 = v44;
  (*(v29 + 16))(v44, v34, v31);
  (*(v29 + 56))(v37, 0, 1, v31);
  v38 = Visit.__allocating_init(hidden:startDate:visitClassification:)();
  v39 = [objc_opt_self() standardUserDefaults];
  v40 = String._bridgeToObjectiveC()();
  v41 = [v39 BOOLForKey:v40];

  if (v41)
  {
    dispatch thunk of Visit.visitClassification.getter();
    dispatch thunk of Visit.visitClassification.setter();
  }

  dispatch thunk of VisitedLocation.addVisit(_:)();

  v33(v45, v47);
  return v38;
}

uint64_t sub_100515120(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10003AC40;

  return sub_10050F1B4(a1, v4, v5, v6, v7, v8, v9, v10);
}

void _s4Maps27VisitedPlacesFakeDataHelperC27deleteAllVisitsAndLocationsyyFZ_0()
{
  v0 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  if (qword_1019067D8 != -1)
  {
    swift_once();
  }

  if (byte_1019601D0 == 1)
  {
    v3 = [objc_opt_self() sharedPlatform];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 isInternalInstall];

      if (v5)
      {
        v6 = type metadata accessor for TaskPriority();
        (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
        v7 = swift_allocObject();
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        sub_10020AAE4(0, 0, v2, &unk_10120DDA8, v7);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1005153AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10003AC4C;

  return sub_10050DBBC(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_100515488()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10003AC4C;

  return sub_10050EB68(v2, v3);
}

uint64_t sub_100515568()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003AC40;

  return sub_10050FB50();
}

uint64_t sub_100515620(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100515674@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1000CE6B8(&qword_101925200);
  __chkstk_darwin(v3 - 8);
  v5 = (&v33 - v4);
  v6 = sub_1000CE6B8(&qword_1019251F0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v33 - v8;
  v10 = sub_1000CE6B8(&qword_1019251E0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v33 - v12;
  v14 = sub_1000CE6B8(&qword_1019251C0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v33 = sub_1000CE6B8(&qword_101925218);
  v17 = *(v33 - 8);
  __chkstk_darwin(v33);
  v19 = &v33 - v18;
  LODWORD(a1) = *a1;
  *v5 = static Alignment.leading.getter();
  v5[1] = v20;
  v21 = sub_1000CE6B8(&qword_101925220);
  sub_100515A88(a1, (v5 + *(v21 + 44)));
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000F11C4(v5, v9, &qword_101925200);
  v22 = &v9[*(v7 + 44)];
  v23 = v42;
  *(v22 + 4) = v41;
  *(v22 + 5) = v23;
  *(v22 + 6) = v43;
  v24 = v38;
  *v22 = v37;
  *(v22 + 1) = v24;
  v25 = v40;
  *(v22 + 2) = v39;
  *(v22 + 3) = v25;
  v26 = static SafeAreaRegions.all.getter();
  LOBYTE(v5) = static Edge.Set.all.getter();
  sub_1000F11C4(v9, v13, &qword_1019251F0);
  v27 = &v13[*(v11 + 44)];
  *v27 = v26;
  v27[8] = v5;
  sub_1000F11C4(v13, v16, &qword_1019251E0);
  v28 = &v16[*(v14 + 36)];
  *v28 = 0;
  *(v28 + 4) = 1;
  sub_1000CE6B8(&qword_1019251C8);
  sub_100517340();
  v29 = type metadata accessor for EmptyVisualEffect();
  v30 = sub_100517510();
  v35 = v29;
  v36 = v30;
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();
  sub_100024F64(v16, &qword_1019251C0);
  v31 = v34;
  (*(v17 + 32))(v34, v19, v33);
  result = sub_1000CE6B8(&qword_1019251A0);
  *(v31 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_100515A88@<X0>(int a1@<W0>, _OWORD *a2@<X8>)
{
  LODWORD(v49) = a1;
  v51 = a2;
  v2 = sub_1000CE6B8(&qword_101925228);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = (&v49 - v4);
  v6 = sub_1000CE6B8(&qword_101925230);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v49 - v8;
  v55 = sub_1000CE6B8(&qword_101925238);
  __chkstk_darwin(v55);
  v57 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v17 = sub_1000CE6B8(&qword_1019109C0);
  __chkstk_darwin(v17 - 8);
  v19 = &v49 - v18;
  v56 = Image.init(systemName:)();
  v20 = type metadata accessor for Font.Design();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v54 = static Font.system(size:weight:design:)();
  sub_100024F64(v19, &qword_1019109C0);
  KeyPath = swift_getKeyPath();
  v52 = static Color.yellow.getter();
  v21 = swift_getKeyPath();
  static UnitPoint.center.getter();
  v23 = v22;
  v25 = v24;
  v26 = v49;
  v27 = 0.0;
  if (v49)
  {
    v28 = 104.0;
  }

  else
  {
    v28 = 0.0;
  }

  static Animation.spring(response:dampingFraction:blendDuration:)();
  v50 = Animation.delay(_:)();
  v29 = v26;

  *v5 = static Alignment.leading.getter();
  v5[1] = v30;
  v31 = sub_1000CE6B8(&qword_101925240);
  sub_100516104(v5 + *(v31 + 44));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v32 = (v5 + *(v3 + 44));
  v33 = v66;
  *v32 = v65;
  v32[1] = v33;
  v32[2] = v67;
  sub_1000F11C4(v5, v9, &qword_101925228);
  v34 = &v9[*(v7 + 44)];
  *v34 = v28;
  *(v34 + 1) = 0;
  static Animation.spring(response:dampingFraction:blendDuration:)();
  if (v26)
  {
    v35 = Animation.delay(_:)();
    v27 = 1.0;
  }

  else
  {
    v35 = Animation.delay(_:)();
  }

  v36 = v29 & 1;
  sub_1000F11C4(v9, v13, &qword_101925230);
  v37 = &v13[*(v55 + 36)];
  *v37 = v35;
  v37[8] = v29 & 1;
  sub_1000F11C4(v13, v16, &qword_101925238);
  v38 = v57;
  sub_1000D2DFC(v16, v57, &qword_101925238);
  v39 = v56;
  *&v58 = v56;
  v40 = KeyPath;
  *(&v58 + 1) = KeyPath;
  v41 = v54;
  *&v59 = v54;
  *(&v59 + 1) = v21;
  v55 = v21;
  v49 = v16;
  v42 = v52;
  *&v60 = v52;
  *(&v60 + 1) = v27;
  *&v61 = v27;
  *(&v61 + 1) = v23;
  *&v62[0] = v25;
  *(v62 + 1) = v27;
  v43 = v50;
  *&v62[1] = v50;
  BYTE8(v62[1]) = v29 & 1;
  v44 = v61;
  v45 = v51;
  v51[2] = v60;
  v45[3] = v44;
  v45[4] = v62[0];
  *(v45 + 73) = *(v62 + 9);
  v46 = v59;
  *v45 = v58;
  v45[1] = v46;
  v47 = sub_1000CE6B8(&qword_101925248);
  sub_1000D2DFC(v38, v45 + *(v47 + 48), &qword_101925238);
  sub_1000D2DFC(&v58, v63, &qword_101925250);
  sub_100024F64(v49, &qword_101925238);
  sub_100024F64(v38, &qword_101925238);
  v63[0] = v39;
  v63[1] = v40;
  v63[2] = v41;
  v63[3] = v55;
  v63[4] = v42;
  *&v63[5] = v27;
  *&v63[6] = v27;
  v63[7] = v23;
  v63[8] = v25;
  *&v63[9] = v27;
  v63[10] = v43;
  v64 = v36;
  return sub_100024F64(v63, &qword_101925250);
}

uint64_t sub_100516104@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_1000CE6B8(&qword_101925258);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v43 - v6;
  v8 = type metadata accessor for RoundedRectangle();
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000CE6B8(&qword_101917810);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v18 = *(v9 + 28);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = type metadata accessor for RoundedCornerStyle();
  (*(*(v20 - 8) + 104))(&v11[v18], v19, v20);
  __asm { FMOV            V0.2D, #20.0 }

  *v11 = _Q0;
  v26 = static Color.yellow.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_100517568(v11, v17);
  v27 = &v17[*(sub_1000CE6B8(&qword_1019100A8) + 36)];
  v28 = v45;
  *v27 = v44;
  *(v27 + 1) = v28;
  *(v27 + 4) = v46;
  v29 = sub_1000CE6B8(&qword_1019100B0);
  *&v17[*(v29 + 52)] = v26;
  *&v17[*(v29 + 56)] = 256;
  v30 = static Alignment.center.getter();
  v32 = v31;
  sub_1002A092C(v11);
  v33 = &v17[*(sub_1000CE6B8(&qword_1019100B8) + 36)];
  *v33 = v30;
  v33[1] = v32;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v34 = sub_1000CE6B8(&qword_101925260);
  sub_1005164AC(&v7[*(v34 + 44)]);
  LOBYTE(v11) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v35 = &v7[*(v2 + 44)];
  *v35 = v11;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  sub_1000D2DFC(v17, v14, &qword_101917810);
  sub_1000D2DFC(v7, v4, &qword_101925258);
  v40 = v43;
  sub_1000D2DFC(v14, v43, &qword_101917810);
  v41 = sub_1000CE6B8(&qword_101925268);
  sub_1000D2DFC(v4, v40 + *(v41 + 48), &qword_101925258);
  sub_100024F64(v7, &qword_101925258);
  sub_100024F64(v17, &qword_101917810);
  sub_100024F64(v4, &qword_101925258);
  return sub_100024F64(v14, &qword_101917810);
}

uint64_t sub_1005164AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000CE6B8(&qword_101925270);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_1000CE6B8(&qword_101925278);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  *v13 = static HorizontalAlignment.leading.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = sub_1000CE6B8(&qword_101925280);
  sub_1005166F4(&v13[*(v14 + 44)]);
  *v7 = static HorizontalAlignment.trailing.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v15 = sub_1000CE6B8(&qword_101925288);
  sub_100516CC4(&v7[*(v15 + 44)]);
  sub_1000D2DFC(v13, v10, &qword_101925278);
  sub_1000D2DFC(v7, v4, &qword_101925270);
  sub_1000D2DFC(v10, a1, &qword_101925278);
  v16 = sub_1000CE6B8(&qword_101925290);
  v17 = a1 + *(v16 + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_1000D2DFC(v4, a1 + *(v16 + 64), &qword_101925270);
  sub_100024F64(v7, &qword_101925270);
  sub_100024F64(v13, &qword_101925278);
  sub_100024F64(v4, &qword_101925270);
  return sub_100024F64(v10, &qword_101925278);
}

uint64_t sub_1005166F4@<X0>(uint64_t a1@<X8>)
{
  v54 = sub_1000CE6B8(&qword_101925298) - 8;
  __chkstk_darwin(v54);
  v56 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v55 = &v47 - v4;
  __chkstk_darwin(v5);
  v53 = &v47 - v6;
  __chkstk_darwin(v7);
  v9 = &v47 - v8;
  v57 = static Color.yellow.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v59[3] = *&v59[27];
  *&v59[11] = *&v59[35];
  *&v59[19] = *&v59[43];
  v10 = static Alignment.center.getter();
  v12 = v11;
  static Color.white.getter();
  v13 = Color.opacity(_:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v58[6] = *&v59[51];
  *&v58[22] = *&v59[59];
  *&v58[38] = v60;
  *&v67[0] = v13;
  WORD4(v67[0]) = 256;
  *(v67 + 10) = *v58;
  *(&v67[1] + 10) = *&v58[16];
  *(&v67[2] + 10) = *&v58[32];
  *(&v67[3] + 1) = *(&v60 + 1);
  *&v68 = v10;
  *(&v68 + 1) = v12;
  v69 = v13;
  v79 = v67[3];
  v80 = v68;
  v77 = v67[1];
  v78 = v67[2];
  v76 = v67[0];
  v70 = 256;
  *&v73[14] = *(&v60 + 1);
  *v73 = *&v58[32];
  v72 = *&v58[16];
  v71 = *v58;
  v74 = v10;
  v75 = v12;
  sub_1000D2DFC(v67, &v87, &qword_1019252B0);
  sub_100024F64(&v69, &qword_1019252B0);
  v51 = type metadata accessor for RoundedRectangle();
  v14 = *(v51 + 20);
  v15 = enum case for RoundedCornerStyle.continuous(_:);
  v49 = enum case for RoundedCornerStyle.continuous(_:);
  v16 = type metadata accessor for RoundedCornerStyle();
  v17 = *(v16 - 8);
  v48 = *(v17 + 104);
  v50 = v17 + 104;
  v18 = v9;
  v48(&v9[v14], v15, v16);
  __asm { FMOV            V0.2D, #4.0 }

  v47 = _Q0;
  *v9 = _Q0;
  v24 = objc_opt_self();
  v25 = [v24 systemGray3Color];
  v26 = Color.init(uiColor:)();
  v27 = sub_1000CE6B8(&qword_1019252A0);
  *(v18 + *(v27 + 52)) = v26;
  *(v18 + *(v27 + 56)) = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v29 = v53;
  v28 = v54;
  v30 = (v18 + *(v54 + 44));
  v52 = v18;
  v31 = v62;
  *v30 = v61;
  v30[1] = v31;
  v30[2] = v63;
  v48(&v29[*(v51 + 20)], v49, v16);
  *v29 = v47;
  v32 = [v24 systemGray3Color];
  *&v29[*(v27 + 52)] = Color.init(uiColor:)();
  *&v29[*(v27 + 56)] = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v33 = &v29[*(v28 + 44)];
  v34 = v65;
  *v33 = v64;
  *(v33 + 1) = v34;
  *(v33 + 2) = v66;
  v35 = v18;
  v36 = v55;
  sub_1000D2DFC(v35, v55, &qword_101925298);
  v37 = v56;
  sub_1000D2DFC(v29, v56, &qword_101925298);
  *&v81[0] = v57;
  WORD4(v81[0]) = 256;
  *(v81 + 10) = *v59;
  *(&v81[1] + 10) = *&v59[8];
  *(&v81[2] + 10) = *&v59[16];
  *(&v81[3] + 1) = *&v59[23];
  v84 = v78;
  v85 = v79;
  v38 = v81[0];
  v86 = v80;
  v82 = v76;
  v83 = v77;
  v39 = v77;
  v40 = v79;
  v41 = v80;
  *(a1 + 96) = v78;
  *(a1 + 112) = v40;
  *(a1 + 128) = v41;
  v42 = v81[1];
  v43 = v81[3];
  v44 = v82;
  *(a1 + 32) = v81[2];
  *(a1 + 48) = v43;
  *(a1 + 64) = v44;
  *(a1 + 80) = v39;
  *a1 = v38;
  *(a1 + 16) = v42;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  v45 = sub_1000CE6B8(&qword_1019252B8);
  sub_1000D2DFC(v36, a1 + *(v45 + 64), &qword_101925298);
  sub_1000D2DFC(v37, a1 + *(v45 + 80), &qword_101925298);
  sub_1000D2DFC(v81, &v87, &qword_1019252C0);
  sub_100024F64(v29, &qword_101925298);
  sub_100024F64(v52, &qword_101925298);
  sub_100024F64(v37, &qword_101925298);
  sub_100024F64(v36, &qword_101925298);
  v87 = v57;
  v88 = 256;
  v89 = *v59;
  v90 = *&v59[8];
  v91[0] = *&v59[16];
  *(v91 + 14) = *&v59[23];
  *(&v91[3] + 6) = v78;
  *(&v91[4] + 6) = v79;
  *(&v91[5] + 6) = v80;
  *(&v91[1] + 6) = v76;
  *(&v91[2] + 6) = v77;
  return sub_100024F64(&v87, &qword_1019252C0);
}

uint64_t sub_100516CC4@<X0>(void *a1@<X8>)
{
  v37 = a1;
  v1 = sub_1000CE6B8(&qword_101925298);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v35 = &v34 - v5;
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = type metadata accessor for RoundedRectangle();
  v13 = *(v12 + 20);
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = type metadata accessor for RoundedCornerStyle();
  v16 = *(*(v15 - 8) + 104);
  v16(&v11[v13], v14, v15);
  __asm { FMOV            V0.2D, #4.0 }

  v34 = _Q0;
  *v11 = _Q0;
  v22 = static Color.gray.getter();
  v23 = sub_1000CE6B8(&qword_1019252A0);
  *&v11[*(v23 + 52)] = v22;
  *&v11[*(v23 + 56)] = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v24 = &v11[*(v2 + 44)];
  v25 = v39;
  *v24 = v38;
  *(v24 + 1) = v25;
  *(v24 + 2) = v40;
  v16(&v8[*(v12 + 20)], v14, v15);
  *v8 = v34;
  *&v8[*(v23 + 52)] = static Color.gray.getter();
  *&v8[*(v23 + 56)] = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = &v8[*(v2 + 44)];
  v27 = v42;
  *v26 = v41;
  *(v26 + 1) = v27;
  *(v26 + 2) = v43;
  v28 = v35;
  sub_1000D2DFC(v11, v35, &qword_101925298);
  v29 = v36;
  sub_1000D2DFC(v8, v36, &qword_101925298);
  v30 = v37;
  *v37 = 0;
  *(v30 + 8) = 1;
  v31 = v30;
  v32 = sub_1000CE6B8(&qword_1019252A8);
  sub_1000D2DFC(v28, v31 + *(v32 + 48), &qword_101925298);
  sub_1000D2DFC(v29, v31 + *(v32 + 64), &qword_101925298);
  sub_100024F64(v8, &qword_101925298);
  sub_100024F64(v11, &qword_101925298);
  sub_100024F64(v29, &qword_101925298);
  return sub_100024F64(v28, &qword_101925298);
}

uint64_t sub_100516FF0()
{
  GeometryProxy.size.getter();
  static UnitPoint.center.getter();
  type metadata accessor for EmptyVisualEffect();
  sub_100517510();
  return VisualEffect.scaleEffect(_:anchor:)();
}

uint64_t sub_100517080()
{
  sub_1000CE6B8(&qword_1019251A0);
  sub_1000CE6B8(&qword_1019251A8);
  sub_100517194();
  sub_1005171E8();
  sub_1000414C8(&qword_101925210, &qword_1019251A8);
  return PhaseAnimator.init<A>(_:content:animation:)();
}

unint64_t sub_100517194()
{
  result = qword_1019251B0;
  if (!qword_1019251B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019251B0);
  }

  return result;
}

unint64_t sub_1005171E8()
{
  result = qword_1019251B8;
  if (!qword_1019251B8)
  {
    sub_1000D6664(&qword_1019251A0);
    sub_1000D6664(&qword_1019251C0);
    sub_1000D6664(&qword_1019251C8);
    sub_100517340();
    type metadata accessor for EmptyVisualEffect();
    sub_100517510();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_101911980, &qword_101911988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019251B8);
  }

  return result;
}

unint64_t sub_100517340()
{
  result = qword_1019251D0;
  if (!qword_1019251D0)
  {
    sub_1000D6664(&qword_1019251C0);
    sub_1005173CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019251D0);
  }

  return result;
}

unint64_t sub_1005173CC()
{
  result = qword_1019251D8;
  if (!qword_1019251D8)
  {
    sub_1000D6664(&qword_1019251E0);
    sub_100517458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019251D8);
  }

  return result;
}

unint64_t sub_100517458()
{
  result = qword_1019251E8;
  if (!qword_1019251E8)
  {
    sub_1000D6664(&qword_1019251F0);
    sub_1000414C8(&qword_1019251F8, &qword_101925200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019251E8);
  }

  return result;
}

unint64_t sub_100517510()
{
  result = qword_101925208;
  if (!qword_101925208)
  {
    type metadata accessor for EmptyVisualEffect();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101925208);
  }

  return result;
}

uint64_t sub_100517568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100517624(void *a1, void *a2, void *a3)
{
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC4Maps31NavigationProgressCapturingTask_activeRouteIdentifier;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR____TtC4Maps31NavigationProgressCapturingTask_session] = a2;
  v9 = objc_allocWithZone(NavigationRouteHistoryInfoProvider);
  v10 = a2;
  result = [v9 initWithNavigationService:a3];
  if (result)
  {
    *&v3[OBJC_IVAR____TtC4Maps31NavigationProgressCapturingTask_routeInfoProvider] = result;
    v13.receiver = v3;
    v13.super_class = type metadata accessor for NavigationProgressCapturingTask();
    v12 = objc_msgSendSuper2(&v13, "init");
    [a3 registerObserver:v12];

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100517930()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationProgressCapturingTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1005179E0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result sessionStack];

    sub_1000CE6B8(&unk_101922000);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = v3;
    if (v3 >> 62)
    {
      goto LABEL_16;
    }

    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      while (!__OFSUB__(v5--, 1))
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
          objc_opt_self();
          v7 = swift_dynamicCastObjCClass();
          v8 = v7 == 0;
          v4 = swift_unknownObjectRelease();
          if (v7 || !v5)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
            goto LABEL_14;
          }

          if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            swift_unknownObjectRetain();
            goto LABEL_9;
          }

LABEL_15:
          __break(1u);
LABEL_16:
          v4 = _CocoaArrayWrapper.endIndex.getter();
          v5 = v4;
          if (!v4)
          {
            goto LABEL_17;
          }
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_17:
    v8 = 1;
LABEL_18:
    __chkstk_darwin(v4);
    v10[2] = &v11;
    v9 = sub_100469074(sub_1000753AC, v10, v5, v8);

    if (v9)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

void sub_100517BCC(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v65 - v8;
  __chkstk_darwin(v10);
  v69 = &v65 - v11;
  v12 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v12 - 8);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v65 - v16;
  if (MNNavigationServiceStateChangedToNavigating())
  {
    if (a1)
    {
      v18 = [a1 route];
      if (v18)
      {
        v68 = v18;
        v19 = v1;
        v20 = sub_1005179E0();
        if (v20 && (v21 = v20, v22 = [v20 configuration], v21, v22))
        {
          v23 = [*&v19[OBJC_IVAR____TtC4Maps31NavigationProgressCapturingTask_routeInfoProvider] currentHistoryEntryRouteIdentifier];
          if (v23)
          {
            v24 = v23;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            (*(v4 + 56))(v17, 0, 1, v3);
          }

          else
          {
            (*(v4 + 56))(v17, 1, 1, v3);
          }

          v33 = OBJC_IVAR____TtC4Maps31NavigationProgressCapturingTask_activeRouteIdentifier;
          swift_beginAccess();
          sub_10016E928(v17, &v19[v33]);
          swift_endAccess();
          sub_100240034(&v19[v33], v14);
          if ((*(v4 + 48))(v14, 1, v3) == 1)
          {
            sub_100024F64(v14, &unk_101918E50);
            if (qword_101906918 != -1)
            {
              swift_once();
            }

            v34 = type metadata accessor for Logger();
            sub_100021540(v34, qword_1019252E0);
            v35 = v19;
            v36 = Logger.logObject.getter();
            v37 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              *v38 = 138412290;
              Strong = swift_unknownObjectWeakLoadStrong();
              *(v38 + 4) = Strong;
              *v39 = Strong;
              _os_log_impl(&_mh_execute_header, v36, v37, "navigationService changed to navigating, but activeRouteIdentifier was nil. Current platform stack: %@", v38, 0xCu);
              sub_100024F64(v39, &qword_1019144F0);
            }
          }

          else
          {
            v41 = v69;
            (*(v4 + 32))(v69, v14, v3);
            if ([(objc_class *)v22 isResumingMultipointRoute])
            {
              if (qword_101906918 != -1)
              {
                swift_once();
              }

              v42 = type metadata accessor for Logger();
              sub_100021540(v42, qword_1019252E0);
              (*(v4 + 16))(v9, v41, v3);
              v43 = Logger.logObject.getter();
              v44 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v43, v44))
              {
                v45 = swift_slowAlloc();
                v66 = v45;
                v67 = swift_slowAlloc();
                v70[0] = v67;
                *v45 = 136315138;
                sub_100259250();
                v46 = dispatch thunk of CustomStringConvertible.description.getter();
                v48 = v47;
                v49 = *(v4 + 8);
                v49(v9, v3);
                v50 = sub_10004DEB8(v46, v48, v70);
                v41 = v69;

                v51 = v66;
                *(v66 + 1) = v50;
                _os_log_impl(&_mh_execute_header, v43, v44, "navigationService changed to navigating with resume route flag present. Will log resume nav event with id: %s", v51, 0xCu);
                sub_10004E3D0(v67);
              }

              else
              {

                v49 = *(v4 + 8);
                v49(v9, v3);
              }

              v61 = *&v19[OBJC_IVAR____TtC4Maps31NavigationProgressCapturingTask_session];
              isa = UUID._bridgeToObjectiveC()().super.isa;
              [v61 resumeNavigationWithRouteID:isa];
              v63 = v68;
              v68 = v22;
              v22 = isa;
            }

            else
            {
              if (qword_101906918 != -1)
              {
                swift_once();
              }

              v52 = type metadata accessor for Logger();
              sub_100021540(v52, qword_1019252E0);
              (*(v4 + 16))(v6, v41, v3);
              v53 = Logger.logObject.getter();
              v54 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v53, v54))
              {
                v55 = swift_slowAlloc();
                v66 = v55;
                v67 = swift_slowAlloc();
                v70[0] = v67;
                *v55 = 136315138;
                sub_100259250();
                v56 = dispatch thunk of CustomStringConvertible.description.getter();
                v58 = v57;
                v49 = *(v4 + 8);
                v49(v6, v3);
                v59 = sub_10004DEB8(v56, v58, v70);
                v41 = v69;

                v60 = v66;
                *(v66 + 1) = v59;
                _os_log_impl(&_mh_execute_header, v53, v54, "navigationService changed to navigating. Will log start nav event with id: %s", v60, 0xCu);
                sub_10004E3D0(v67);
              }

              else
              {

                v49 = *(v4 + 8);
                v49(v6, v3);
              }

              v64 = *&v19[OBJC_IVAR____TtC4Maps31NavigationProgressCapturingTask_session];
              v63 = UUID._bridgeToObjectiveC()().super.isa;
              [v64 startNavigationWithRouteID:v63 isEVRoute:{-[objc_class isEVRoute](v68, "isEVRoute")}];
            }

            v49(v41, v3);
          }
        }

        else
        {
          if (qword_101906918 != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          sub_100021540(v25, qword_1019252E0);
          v26 = v19;
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            *v29 = 138412290;
            v31 = swift_unknownObjectWeakLoadStrong();
            *(v29 + 4) = v31;
            *v30 = v31;
            _os_log_impl(&_mh_execute_header, v27, v28, "navigationService changed to navigating, but there was no RP session configuration. Current platform stack: %@", v29, 0xCu);
            sub_100024F64(v30, &qword_1019144F0);
          }

          v32 = v68;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10051858C(void *a1, unint64_t a2)
{
  v6 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v6 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (sub_10067FE68(a1, a2) || ![a1 isInNavigatingState])
    {
      (*(v13 + 56))(v8, 1, 1, v12);
      v26 = OBJC_IVAR____TtC4Maps31NavigationProgressCapturingTask_activeRouteIdentifier;
      swift_beginAccess();
      sub_10016E928(v8, &v2[v26]);
    }

    else
    {
      v16 = OBJC_IVAR____TtC4Maps31NavigationProgressCapturingTask_activeRouteIdentifier;
      swift_beginAccess();
      sub_100240034(&v2[v16], v11);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {
        sub_100024F64(v11, &unk_101918E50);
        if (qword_101906918 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100021540(v17, qword_1019252E0);
        v18 = v2;
        v19 = v2;
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *v22 = 138412290;
          Strong = swift_unknownObjectWeakLoadStrong();
          *(v22 + 4) = Strong;
          *v23 = Strong;
          _os_log_impl(&_mh_execute_header, v20, v21, "navigationService willEnd, but activeRouteIdentifier was nil. Current platform stack: %@", v22, 0xCu);
          sub_100024F64(v23, &qword_1019144F0);
        }

        (*(v13 + 56))(v8, 1, 1, v12);
        swift_beginAccess();
        v25 = v18 + v16;
      }

      else
      {
        v46 = v16;
        v27 = v2;
        (*(v13 + 32))(v15, v11, v12);
        if (qword_101906918 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_100021540(v28, qword_1019252E0);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v47[0] = v44;
          v45 = v31;
          *v31 = 136315138;
          v32 = v27;
          if (a2 <= 0xA)
          {
            v3 = off_10161FB68[a2];
            v33 = off_10161FB10[a2];
          }

          v34 = v3;
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          v38 = sub_10004DEB8(v35, v37, v47);

          v39 = v45;
          *(v45 + 1) = v38;
          _os_log_impl(&_mh_execute_header, v29, v30, "navigationService didEndWithReason: %s which did not result into a pause event, will log termination event instead", v39, 0xCu);
          sub_10004E3D0(v44);
        }

        else
        {

          v32 = v27;
        }

        v40 = *&v32[OBJC_IVAR____TtC4Maps31NavigationProgressCapturingTask_session];
        isa = UUID._bridgeToObjectiveC()().super.isa;
        [v40 terminateNavigationWithRouteID:isa];

        (*(v13 + 8))(v15, v12);
        (*(v13 + 56))(v8, 1, 1, v12);
        v42 = v46;
        swift_beginAccess();
        v25 = &v32[v42];
      }

      sub_10016E928(v8, v25);
    }

    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100518BA0()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_1019252E0);
  sub_100021540(v0, qword_1019252E0);
  type metadata accessor for NavigationProgressCapturingTask();
  sub_1000CE6B8(&qword_1019253B0);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

void sub_100518C4C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  sub_100240034(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100024F64(v6, &unk_101918E50);
    if (qword_101906918 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100021540(v14, qword_1019252E0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "routeInterrupter interrupted a route without an identifier, ignoring this action", v17, 2u);
    }
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    if (qword_101906918 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100021540(v18, qword_1019252E0);
    (*(v8 + 16))(v10, v13, v7);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v34 = v2;
      v22 = v21;
      v33 = swift_slowAlloc();
      v35 = v33;
      *v22 = 136315138;
      sub_100259250();
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v26 = v10;
      v27 = *(v8 + 8);
      v27(v26, v7);
      v28 = sub_10004DEB8(v23, v25, &v35);

      *(v22 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "routeInterrupter interrupted a route with id: %s, will log analytics event", v22, 0xCu);
      sub_10004E3D0(v33);

      v2 = v34;
    }

    else
    {

      v29 = v10;
      v27 = *(v8 + 8);
      v27(v29, v7);
    }

    v30 = *(v2 + OBJC_IVAR____TtC4Maps31NavigationProgressCapturingTask_session);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v30 pauseNavigationWithRouteID:isa];

    v27(v13, v7);
  }
}