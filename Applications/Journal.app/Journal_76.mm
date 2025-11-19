void sub_100825B90()
{
  v1 = *v0;
  if (*v0 == 2)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = 0;
LABEL_5:
    Hasher._combine(_:)(v2);
    return;
  }

  Hasher._combine(_:)(2uLL);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v3 = v1;
    NSObject.hash(into:)();

    sub_100830674(v1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100825C2C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = 0;
LABEL_5:
    Hasher._combine(_:)(v2);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(2uLL);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v3 = v1;
    NSObject.hash(into:)();
    sub_100830674(v1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_100825CD4()
{
  v1 = type metadata accessor for AssetType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_journalEntry);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
    swift_beginAccess();
    v7 = *(v5 + v6);
    if (v7 >> 62)
    {
LABEL_24:
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8)
    {
      v9 = 0;
      v17 = v7 & 0xFFFFFFFFFFFFFF8;
      v18 = v7 & 0xC000000000000001;
      v15 = enum case for AssetType.multiPinMap(_:);
      v14 = (v2 + 104);
      v16 = (v2 + 8);
      while (1)
      {
        if (v18)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v17 + 16))
          {
            goto LABEL_23;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v2 = v10;
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        (*v14)(v4, v15, v1);
        sub_1008313D4(&qword_100AD5B40, &type metadata accessor for AssetType);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v21 == v19 && v22 == v20)
        {
          break;
        }

        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        (*v16)(v4, v1);

        if (v12)
        {
          goto LABEL_18;
        }

        ++v9;
        if (v11 == v8)
        {
          goto LABEL_16;
        }
      }

      (*v16)(v4, v1);

LABEL_18:

      type metadata accessor for MultiPinMapAsset();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }

    else
    {
LABEL_16:
    }
  }

  return 0;
}

uint64_t sub_100825FCC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for VisitAssetMetadata();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Journal28LocationPickerEditController_visitAssetMetadata;
  swift_beginAccess();
  sub_100831364(a1, v1 + v8);
  swift_endAccess();
  sub_100827304();
  if (!(*(v5 + 48))(v1 + v8, 1, v4))
  {
    (*(v5 + 16))(v7, v1 + v8, v4);
    v10 = VisitAssetMetadata.latitude.getter();
    if (v11)
    {
      sub_100004F84(a1, &unk_100AEED20);
      return (*(v5 + 8))(v7, v4);
    }

    v12 = *&v10;
    v13 = VisitAssetMetadata.longitude.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    if ((v15 & 1) == 0)
    {
      v18.latitude = v12;
      *&v18.longitude = v13;
      v16 = *(v2 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_searchCompleter);
      v19 = MKCoordinateRegionMakeWithDistance(v18, 16093.0, 16093.0);
      [v16 setRegion:{v19.center.latitude, v19.center.longitude, v19.span.latitudeDelta, v19.span.longitudeDelta}];
    }
  }

  return sub_100004F84(a1, &unk_100AEED20);
}

id sub_1008261C4()
{
  v1 = type metadata accessor for VisitAssetMetadata();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = sub_1000F24EC(&unk_100AEED20);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = OBJC_IVAR____TtC7Journal28LocationPickerEditController_visitAssetMetadata;
  swift_beginAccess();
  sub_1000082B4(v0 + v14, v13, &unk_100AEED20);
  v15 = v1;
  v16 = v1;
  v17 = *(v2 + 48);
  if (v17(v13, 1, v16))
  {
    sub_100004F84(v13, &unk_100AEED20);
    return 0;
  }

  v34 = v17;
  v35 = v10;
  v33 = v4;
  v36 = v0;
  v18 = *(v2 + 16);
  v18(v7, v13, v15);
  sub_100004F84(v13, &unk_100AEED20);
  v19 = VisitAssetMetadata.latitude.getter();
  if (v20)
  {
    (*(v2 + 8))(v7, v15);
    return 0;
  }

  v32 = *&v19;
  VisitAssetMetadata.longitude.getter();
  v22 = v21;
  v23 = *(v2 + 8);
  v23(v7, v15);
  if (v22)
  {
    return 0;
  }

  v24 = v35;
  sub_1000082B4(v36 + v14, v35, &unk_100AEED20);
  if (v34(v24, 1, v15))
  {
    sub_100004F84(v24, &unk_100AEED20);
    return 0;
  }

  v25 = v18;
  v26 = v33;
  v25(v33, v24, v15);
  sub_100004F84(v24, &unk_100AEED20);
  VisitAssetMetadata.latitude.getter();
  if (v27)
  {
    v23(v26, v15);
    return 0;
  }

  v28 = VisitAssetMetadata.longitude.getter();
  v30 = v29;
  v23(v26, v15);
  if (v30)
  {
    return 0;
  }

  return [objc_allocWithZone(CLLocation) initWithLatitude:v32 longitude:*&v28];
}

void sub_100826544()
{
  v1 = v0;
  v2 = type metadata accessor for Loc(0);
  v41 = *(v2 - 1);
  __chkstk_darwin(v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v37 - v6;
  v8 = sub_1000F24EC(&unk_100AEED20);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentPlaces);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC7Journal28LocationPickerEditController_visitAssetMetadata;
    swift_beginAccess();
    sub_1000082B4(v1 + v12, v10, &unk_100AEED20);
    v13 = type metadata accessor for VisitAssetMetadata();
    if ((*(*(v13 - 8) + 48))(v10, 1, v13) == 1)
    {
      sub_100004F84(v10, &unk_100AEED20);
      return;
    }

    sub_100004F84(v10, &unk_100AEED20);
    if (v11 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = _swiftEmptyArrayStorage;
    if (v14)
    {
      v43 = _swiftEmptyArrayStorage;
      sub_1001999E0(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        __break(1u);
        goto LABEL_27;
      }

      v37 = v1;
      v15 = v43;
      v40 = v11;
      if ((v11 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v14; ++i)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          *v7 = 0;
          *(v7 + 2) = 0;
          v18 = v2[7];
          v19 = type metadata accessor for Date();
          v20 = *(*(v19 - 8) + 56);
          v20(&v7[v18], 1, 1, v19);
          v20(&v7[v2[8]], 1, 1, v19);
          v21 = &v7[v2[9]];
          *v21 = 0;
          *(v21 + 1) = 0;
          v22 = &v7[v2[10]];
          *v22 = 0;
          *(v22 + 1) = 0;
          *&v7[v2[11]] = 0;
          v7[v2[12]] = 0;
          *(v7 + 1) = v17;
          v43 = v15;
          v24 = *(v15 + 2);
          v23 = *(v15 + 3);
          if (v24 >= v23 >> 1)
          {
            sub_1001999E0(v23 > 1, v24 + 1, 1);
            v15 = v43;
          }

          *(v15 + 2) = v24 + 1;
          sub_10010F018(v7, v15 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v24);
        }
      }

      else
      {
        v25 = (v11 + 32);
        v39 = type metadata accessor for Date();
        v38 = *(*(v39 - 8) + 56);
        do
        {
          v26 = *v25;
          *v4 = 0;
          *(v4 + 2) = 0;
          v28 = v38;
          v27 = v39;
          v38(&v4[v2[7]], 1, 1, v39);
          v28(&v4[v2[8]], 1, 1, v27);
          v29 = &v4[v2[9]];
          *v29 = 0;
          *(v29 + 1) = 0;
          v30 = &v4[v2[10]];
          *v30 = 0;
          *(v30 + 1) = 0;
          *&v4[v2[11]] = 0;
          v4[v2[12]] = 0;
          *(v4 + 1) = v26;
          v43 = v15;
          v32 = *(v15 + 2);
          v31 = *(v15 + 3);
          v33 = v26;
          if (v32 >= v31 >> 1)
          {
            sub_1001999E0(v31 > 1, v32 + 1, 1);
            v15 = v43;
          }

          *(v15 + 2) = v32 + 1;
          sub_10010F018(v4, v15 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v32);
          ++v25;
          --v14;
        }

        while (v14);
      }

      v1 = v37;
      v11 = v40;
    }

    v12 = OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentLocs;
    *(v1 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentLocs) = v15;

    v34 = sub_1008261C4();
    if (!v34)
    {

      goto LABEL_23;
    }

    v2 = v34;
    if (qword_100ACFD60 == -1)
    {
LABEL_21:
      v35 = *(v1 + v12);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = qword_100B2F8D8;
      qword_100B2F8D8 = 0x8000000000000000;
      sub_100202000(v11, v35, v2, isUniquelyReferenced_nonNull_native);

      qword_100B2F8D8 = v42;
      swift_endAccess();
LABEL_23:
      sub_10082AFD4();
      return;
    }

LABEL_27:
    swift_once();
    goto LABEL_21;
  }
}

void sub_100826AB0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentPlaces) = 0;

  sub_100826544();
  v3 = OBJC_IVAR____TtC7Journal28LocationPickerEditController_localSearch;
  v4 = *(v1 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_localSearch);
  if (v4)
  {
    [v4 cancel];
    v4 = *(v1 + v3);
  }

  *(v1 + v3) = a1;
}

void sub_100826B4C()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v8[4] = sub_10083141C;
  v8[5] = v1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100029CCC;
  v8[3] = &unk_100A82418;
  v3 = _Block_copy(v8);

  v4 = [v2 initWithSectionProvider:v3];
  _Block_release(v3);

  v5 = [objc_allocWithZone(UICollectionView) initWithFrame:v4 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  [v0 setCollectionView:v5];
  v6 = [v0 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 setDelegate:v0];
  }

  else
  {
    __break(1u);
  }
}

void sub_100826D18()
{
  v1 = type metadata accessor for ColorResource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocationPickerEditController();
  v32.receiver = v0;
  v32.super_class = v5;
  objc_msgSendSuper2(&v32, "viewDidLoad");
  sub_100828690();
  sub_100827AF0();
  v6 = *&v0[OBJC_IVAR____TtC7Journal28LocationPickerEditController_searchCompleter];
  [v6 setDelegate:v0];
  [v6 setResultTypes:7];
  v7 = objc_opt_self();
  v8 = [v7 keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"cancel"];
  [v0 addKeyCommand:v8];

  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 keyCommandWithInput:v9 modifierFlags:0 action:"done"];

  [v0 addKeyCommand:v10];
  v11 = [v0 collectionView];
  if (v11)
  {
    v12 = v11;
    sub_1000F24EC(&unk_100AD4780);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100941D70;
    sub_1000065A8(0, &qword_100AD4C70);
    if (qword_100AD0D50 != -1)
    {
      swift_once();
    }

    v14 = sub_10000617C(v1, qword_100B31700);
    v15 = *(v2 + 16);
    v15(v4, v14, v1);
    *(v13 + 32) = UIColor.init(resource:)();
    if (qword_100AD0D48 != -1)
    {
      swift_once();
    }

    v16 = sub_10000617C(v1, qword_100B316E8);
    v15(v4, v16, v1);
    *(v13 + 40) = UIColor.init(resource:)();
    if (qword_100AD0D40 != -1)
    {
      swift_once();
    }

    v17 = sub_10000617C(v1, qword_100B316D0);
    v15(v4, v17, v1);
    *(v13 + 48) = UIColor.init(resource:)();
    static UnitPoint.top.getter();
    v19 = v18;
    v21 = v20;
    static UnitPoint.bottom.getter();
    v23 = v22;
    v25 = v24;
    v26 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v13;
    v27 = v26;
    static UIView.Invalidating.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = 0;
    v28 = v27;
    static UIView.Invalidating.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v19;
    v31 = v21;
    v29 = v28;
    static UIView.Invalidating.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v23;
    v31 = v25;
    static UIView.Invalidating.subscript.setter();
    [v12 setBackgroundView:v29];
  }

  else
  {
    __break(1u);
  }
}

void sub_100827304()
{
  v1 = v0;
  v2 = type metadata accessor for Loc(0);
  v53 = *(v2 - 1);
  __chkstk_darwin(v2);
  v48 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v48 - v5;
  v7 = sub_1008261C4();
  v49 = v0;
  if (v7)
  {
    v52 = v7;
    if (qword_100ACFD60 != -1)
    {
LABEL_38:
      swift_once();
    }

    swift_beginAccess();
    v8 = qword_100B2F8D8 + 64;
    v9 = 1 << *(qword_100B2F8D8 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(qword_100B2F8D8 + 64);
    v12 = (v9 + 63) >> 6;
    v51 = qword_100B2F8D8;
    swift_bridgeObjectRetain_n();
    v13 = 0;
    do
    {
      if (!v11)
      {
        while (1)
        {
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v14 >= v12)
          {

            v1 = v49;
            goto LABEL_17;
          }

          v11 = *(v8 + 8 * v14);
          ++v13;
          if (v11)
          {
            v13 = v14;
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_38;
      }

      v14 = v13;
LABEL_12:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = *(*(v51 + 48) + 8 * (v15 | (v14 << 6)));
      sub_1000065A8(0, &unk_100AD43A0);
      v17 = v16;

      v18 = static NSObject.== infix(_:_:)();
    }

    while ((v18 & 1) == 0);

    swift_beginAccess();
    v19 = qword_100B2F8D8;
    v1 = v49;
    if (*(qword_100B2F8D8 + 16))
    {
      v20 = v52;
      v21 = sub_100361F20(v52);
      if (v22)
      {
        v23 = (*(v19 + 56) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        swift_endAccess();
        *(v1 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentLocs) = v25;

        *(v1 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentPlaces) = v24;

        sub_100826544();

        return;
      }

      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }
  }

LABEL_17:
  v26 = *(v1 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentPlaces);
  if (!v26)
  {
    sub_100827914();
    return;
  }

  if (v26 >> 62)
  {
    v27 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = _swiftEmptyArrayStorage;
  if (!v27)
  {
    goto LABEL_34;
  }

  v54 = _swiftEmptyArrayStorage;

  sub_1001999E0(0, v27 & ~(v27 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v28 = v54;
    v52 = v26;
    if ((v26 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v27; ++i)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        *v6 = 0;
        *(v6 + 2) = 0;
        v31 = v2[7];
        v32 = type metadata accessor for Date();
        v33 = *(*(v32 - 8) + 56);
        v33(&v6[v31], 1, 1, v32);
        v33(&v6[v2[8]], 1, 1, v32);
        v34 = &v6[v2[9]];
        *v34 = 0;
        *(v34 + 1) = 0;
        v35 = &v6[v2[10]];
        *v35 = 0;
        *(v35 + 1) = 0;
        *&v6[v2[11]] = 0;
        v6[v2[12]] = 0;
        *(v6 + 1) = v30;
        v54 = v28;
        v37 = *(v28 + 2);
        v36 = *(v28 + 3);
        if (v37 >= v36 >> 1)
        {
          sub_1001999E0(v36 > 1, v37 + 1, 1);
          v28 = v54;
        }

        *(v28 + 2) = v37 + 1;
        sub_10010F018(v6, v28 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v37);
      }
    }

    else
    {
      v38 = v26 + 4;
      v51 = type metadata accessor for Date();
      v50 = *(*(v51 - 8) + 56);
      v39 = v48;
      do
      {
        v40 = *v38;
        *v39 = 0;
        *(v39 + 2) = 0;
        v42 = v50;
        v41 = v51;
        v50(&v39[v2[7]], 1, 1, v51);
        v42(&v39[v2[8]], 1, 1, v41);
        v43 = &v39[v2[9]];
        *v43 = 0;
        *(v43 + 1) = 0;
        v44 = &v39[v2[10]];
        *v44 = 0;
        *(v44 + 1) = 0;
        *&v39[v2[11]] = 0;
        v39[v2[12]] = 0;
        *(v39 + 1) = v40;
        v54 = v28;
        v46 = *(v28 + 2);
        v45 = *(v28 + 3);
        v47 = v40;
        if (v46 >= v45 >> 1)
        {
          sub_1001999E0(v45 > 1, v46 + 1, 1);
          v28 = v54;
        }

        *(v28 + 2) = v46 + 1;
        sub_10010F018(v39, v28 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v46);
        ++v38;
        --v27;
      }

      while (v27);
    }

    v1 = v49;
LABEL_34:
    *(v1 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentLocs) = v28;

    return;
  }

  __break(1u);
}

void sub_100827914()
{
  v1 = sub_1008261C4();
  if (v1)
  {
    v2 = v1;
    [v1 coordinate];
    v4 = v3;
    v6 = v5;

    v14.latitude = v4;
    v14.longitude = v6;
    v15 = MKCoordinateRegionMakeWithDistance(v14, 16093.0, 16093.0);
    v11 = [objc_allocWithZone(MKLocalPointsOfInterestRequest) initWithCoordinateRegion:{v15.center.latitude, v15.center.longitude, v15.span.latitudeDelta, v15.span.longitudeDelta}];
    sub_100826AB0([objc_allocWithZone(MKLocalSearch) initWithPointsOfInterestRequest:v11]);
    v7 = *(v0 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_localSearch);
    if (v7)
    {
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_10083135C;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100825A38;
      aBlock[3] = &unk_100A823F0;
      v9 = _Block_copy(aBlock);
      v10 = v7;

      [v10 startWithCompletionHandler:v9];

      _Block_release(v9);
    }

    else
    {
    }
  }
}

void sub_100827AF0()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = [v0 navigationItem];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();

  [v3 setTitle:v4];

  v5 = [v0 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 5)
  {
    sub_10035FF58(v0, "cancel");
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v0;
    static UIViewController.ViewLoading.subscript.setter();
    v8 = sub_10036032C(v7, "done");
    swift_getKeyPath();
    swift_getKeyPath();
    v24 = v8;
    v9 = v7;
    static UIViewController.ViewLoading.subscript.setter();
    sub_1000F24EC(&unk_100AD4780);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100941830;
    v11 = objc_opt_self();
    *(v10 + 32) = [v11 flexibleSpaceItem];
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v10 + 40) = v24;
    v12 = _UISolariumEnabled();
    v13 = 5.0;
    if (v12)
    {
      v13 = 0.0;
    }

    v14 = [v11 fixedSpaceItemOfWidth:{v13, v24}];
    [v14 _setPrefersNoPlatter:1];
    *(v10 + 48) = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v10 + 56) = v25;
    sub_1000065A8(0, &qword_100AD43B0);
    v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 setToolbarItems:v15.super.isa];
  }

  else
  {
    v16 = objc_allocWithZone(UIBarButtonItem);
    v17 = v0;
    v18 = [v16 initWithBarButtonSystemItem:1 target:v17 action:"cancel"];
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v17;
    static UIViewController.ViewLoading.subscript.setter();
    v20 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v19 action:{"done", v18}];

    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v20;
    v21 = v19;
    static UIViewController.ViewLoading.subscript.setter();
    v22 = [v21 navigationItem];
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    [v22 setLeftBarButtonItem:v26];

    v23 = [v21 navigationItem];
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v15.super.isa = v26;
    [v23 setRightBarButtonItem:v26];
  }
}

void *sub_10082809C(uint64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v30 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v37 = a2;
  v33 = v9;
  v34 = v8;
  v16 = Strong;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v17 = v39;
  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

  if (v39 - 2 >= 2)
  {
    v32 = v16;
    if (v39)
    {
      v21 = *(v5 + 104);
      v21(v7, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v4);
      UICollectionLayoutListConfiguration.init(appearance:)();
      v31 = enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:);
      v22 = v35;
      v36 = *(v36 + 104);
      (v36)(v35);
      UICollectionLayoutListConfiguration.headerMode.setter();
      v30[1] = sub_1000065A8(0, &unk_100AD4440);
      v23 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
      v21(v7, enum case for UICollectionLayoutListConfiguration.Appearance.grouped(_:), v4);
      UICollectionLayoutListConfiguration.init(appearance:)();
      UICollectionLayoutListConfiguration.showsSeparators.setter();
      v24 = [objc_opt_self() clearColor];
      UICollectionLayoutListConfiguration.backgroundColor.setter();
      (v36)(v22, v31, v38);
      UICollectionLayoutListConfiguration.headerMode.setter();
      v19 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
      [v23 contentInsets];
      v26 = v25;
      [v23 contentInsets];
      [v19 setContentInsets:{0.0, v26, 8.0}];
      [v19 setContentInsetsReference:{objc_msgSend(v23, "contentInsetsReference")}];
      [v19 setSupplementaryContentInsetsReference:1];

      v27 = v34;
      v28 = *(v33 + 8);
      v28(v11, v34);
      v28(v14, v27);
      return v19;
    }

    (*(v5 + 104))(v7, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v4);
    UICollectionLayoutListConfiguration.init(appearance:)();
    v20 = [objc_opt_self() clearColor];
    UICollectionLayoutListConfiguration.backgroundColor.setter();
    (*(v36 + 104))(v35, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v38);
    UICollectionLayoutListConfiguration.headerMode.setter();
    sub_1000065A8(0, &unk_100AD4440);
    v19 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  }

  else
  {
    (*(v5 + 104))(v7, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v4);
    UICollectionLayoutListConfiguration.init(appearance:)();
    v18 = [objc_opt_self() clearColor];
    UICollectionLayoutListConfiguration.backgroundColor.setter();
    sub_1000065A8(0, &unk_100AD4440);
    v19 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
    [v19 contentInsets];
    [v19 setContentInsets:8.0];
  }

  (*(v33 + 8))(v14, v34);
  return v19;
}

id sub_100828690()
{
  v1 = sub_1000F24EC(&qword_100ADE610);
  v51 = *(v1 - 8);
  v52 = v1;
  __chkstk_darwin(v1);
  v49 = v2;
  v50 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v61 = &v44 - v4;
  v60 = sub_1000F24EC(&qword_100AF4350);
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v5;
  __chkstk_darwin(v6);
  v8 = &v44 - v7;
  v48 = sub_1000F24EC(&qword_100AF4358);
  v57 = *(v48 - 8);
  v9 = v57[8];
  __chkstk_darwin(v48);
  v54 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v44 - v11;
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewPickerCell();
  v56 = v17;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000065A8(0, &qword_100ADE560);
  v59 = v8;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = v14;
  UICollectionView.CellRegistration.init(handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000065A8(0, &qword_100AD4D40);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v46 = v0;
  result = [v0 collectionView];
  v44 = result;
  if (result)
  {
    v19 = v57;
    v20 = v57[2];
    v21 = v48;
    v20(v53, v56, v48);
    v22 = v58;
    v23 = v47;
    v24 = v60;
    (*(v58 + 16))(v47, v59, v60);
    v20(v54, v55, v21);
    v25 = *(v19 + 80);
    v26 = (v25 + 16) & ~v25;
    v27 = (v9 + *(v22 + 80) + v26) & ~*(v22 + 80);
    v28 = (v45 + v25 + v27) & ~v25;
    v29 = swift_allocObject();
    v30 = v19;
    v31 = v24;
    v32 = v30[4];
    v32(v29 + v26, v53, v21);
    (*(v22 + 32))(v29 + v27, v23, v31);
    v32(v29 + v28, v54, v21);
    v33 = objc_allocWithZone(sub_1000F24EC(&qword_100AF42D8));
    v34 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v62 = v34;
    v35 = v46;
    static UIViewController.ViewLoading.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v37 = v61;
    v36 = v62;
    v39 = v50;
    v38 = v51;
    v40 = v52;
    (*(v51 + 16))(v50, v61, v52);
    v41 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v42 = swift_allocObject();
    (*(v38 + 32))(v42 + v41, v39, v40);
    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

    sub_10082B67C();
    (*(v38 + 8))(v37, v40);
    v43 = v57[1];
    v43(v55, v21);
    (*(v58 + 8))(v59, v60);
    return (v43)(v56, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100828D98(uint64_t a1)
{
  v2 = type metadata accessor for VisitAssetMetadata();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AEED20);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v20 = a1;
    v31[0] = 1;
    LOBYTE(v24) = 1;
    LOBYTE(v21) = 1;
    v47 = 1;
    v11 = OBJC_IVAR____TtC7Journal28LocationPickerEditController_visitAssetMetadata;
    swift_beginAccess();
    sub_1000082B4(v10 + v11, v8, &unk_100AEED20);
    if ((*(v3 + 48))(v8, 1, v2))
    {
      sub_100004F84(v8, &unk_100AEED20);
    }

    else
    {
      (*(v3 + 16))(v5, v8, v2);
      sub_100004F84(v8, &unk_100AEED20);
      v12 = VisitAssetMetadata.placeName.getter();
      v13 = v14;
      (*(v3 + 8))(v5, v2);
      if (v13)
      {

        goto LABEL_7;
      }
    }

    swift_bridgeObjectRelease_n();
    v12 = 0;
    v13 = 0xE000000000000000;
LABEL_7:
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100004DF8(0);
    *&v25 = 0;
    v24 = 0uLL;
    BYTE8(v25) = 1;
    *(&v25 + 9) = *v50;
    HIDWORD(v25) = *&v50[3];
    *&v26 = v12;
    *(&v26 + 1) = v13;
    *&v27 = sub_100831354;
    *(&v27 + 1) = v15;
    *&v28 = 0;
    BYTE8(v28) = 1;
    *(&v28 + 9) = *v49;
    HIDWORD(v28) = *&v49[3];
    *&v29 = 0;
    BYTE8(v29) = 1;
    *(&v29 + 9) = *v48;
    HIDWORD(v29) = *&v48[3];
    memset(v30, 0, 24);
    BYTE8(v30[1]) = 1;
    v22 = &type metadata for TextFieldContentConfiguration;
    v23 = sub_1005A5A64();
    v16 = swift_allocObject();
    v21 = v16;
    v17 = v29;
    v16[5] = v28;
    v16[6] = v17;
    v16[7] = v30[0];
    *(v16 + 121) = *(v30 + 9);
    v18 = v25;
    v16[1] = v24;
    v16[2] = v18;
    v19 = v27;
    v16[3] = v26;
    v16[4] = v19;
    sub_1005A59AC(&v24, v31);
    UICollectionViewCell.contentConfiguration.setter();

    memset(v31, 0, 24);
    v31[24] = 1;
    *v32 = *v50;
    *&v32[3] = *&v50[3];
    v33 = v12;
    v34 = v13;
    v35 = sub_100831354;
    v36 = v15;
    v37 = 0;
    v38 = 1;
    *v39 = *v49;
    *&v39[3] = *&v49[3];
    v40 = 0;
    v41 = 1;
    *v42 = *v48;
    *&v42[3] = *&v48[3];
    v44 = 0;
    v45 = 0;
    v43 = 0;
    v46 = 1;
    return sub_1005A5A08(v31);
  }

  return result;
}

void sub_100829160(void *a1, void *a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v20[3] = a1;
    v20[4] = a2;

    static CharacterSet.whitespacesAndNewlines.getter();
    sub_1000777B4();
    v8 = StringProtocol.trimmingCharacters(in:)();
    v10 = v9;
    (*(v5 + 8))(v7, v4);

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        v14 = v20[0];
        [v20[0] setEnabled:1];
      }

      swift_beginAccess();
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = &v15[OBJC_IVAR____TtC7Journal28LocationPickerEditController_placeName];
        *v16 = a1;
        *(v16 + 1) = a2;
      }

      return;
    }
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v19 = v20[0];
    [v20[0] setEnabled:0];
  }
}

uint64_t sub_1008293F4()
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  sub_1001E8BD8();
  v2 = swift_allocObject();
  sub_1001E8C2C(v3, v2 + 16);
  UICollectionViewCell.contentConfiguration.setter();
  return sub_1001E8C64(v3);
}

void sub_1008294A8(uint64_t a1, uint64_t a2, char **a3, uint64_t a4)
{
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v157 = v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v156 = v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  v155 = v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UIListContentConfiguration();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F24EC(&unk_100AEE090);
  __chkstk_darwin(v18 - 8);
  v161 = v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v158 = v149 - v21;
  v159 = type metadata accessor for Loc(0);
  v22 = *(v159 - 1);
  __chkstk_darwin(v159);
  v24 = v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = v149 - v26;
  __chkstk_darwin(v28);
  v162 = v149 - v29;
  v163 = *a3;
  if ((v163 - 1) >= 2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (!v163)
      {
        sub_100830758(0);

        return;
      }

      v154 = v17;
      v150 = v15;
      v151 = v14;
      v152 = a1;
      p_ivar_lyt = *&Strong[OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentLocs];
      v31 = p_ivar_lyt[2];
      if (v31)
      {
        v32 = p_ivar_lyt + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        sub_100830758(v163);

        v33 = 0;
        while (v33 < p_ivar_lyt[2])
        {
          sub_10010EE80(&v32[*(v22 + 72) * v33], v27);
          v34 = *(v27 + 1);
          if (v34)
          {
            v35 = [v34 _identifier];
            if (v35)
            {
              v36 = v35;
              sub_1000065A8(0, &unk_100AE06F8);
              v4 = v163;
              sub_100830758(v163);
              a4 = static NSObject.== infix(_:_:)();

              sub_100830674(v4);
              if (a4)
              {

                v37 = v161;
                sub_10010F018(v27, v161);
                v38 = *(v22 + 56);
                v39 = v159;
                v38(v37, 0, 1, v159);
                v40 = v37;
                v41 = v158;
                sub_10010F018(v40, v158);
                v38(v41, 0, 1, v39);
                v42 = v162;
                v43 = (*(v22 + 48))(v41, 1, v39);
                goto LABEL_29;
              }
            }
          }

          v33 = (v33 + 1);
          sub_10010EEE4(v27);
          if (v31 == v33)
          {

            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_116:
        v84 = &selRef_initWithName_managedObjectModel_;
        if (!v27 && a4 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_72;
        }

LABEL_124:
        v115 = v154;
        UIListContentConfiguration.text.setter();
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v144._countAndFlagsBits = 0;
        v144._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v144);
        v145._countAndFlagsBits = v153;
        v145._object = v33;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v145);

        v146._countAndFlagsBits = 548913696;
        v146._object = 0xA400000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v146);
        v147._countAndFlagsBits = v4;
        v147._object = v24;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v147);

        v148._countAndFlagsBits = 0;
        v148._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v148);
        String.LocalizationValue.init(stringInterpolation:)();
        static Locale.current.getter();
        String.init(localized:defaultValue:table:bundle:locale:comment:)();
        goto LABEL_100;
      }

      v44 = v163;
LABEL_15:
      v45 = 1;
      v46 = v159;
      v153 = *(v22 + 56);
      v153(v161, 1, 1, v159);
      v47 = *&Strong[OBJC_IVAR____TtC7Journal28LocationPickerEditController_searchResults];
      v48 = *(v47 + 16);
      if (v48)
      {
        v149[1] = v22 + 56;
        v49 = v47 + ((*(v22 + 80) + 32) & ~*(v22 + 80));

        v50 = 0;
        while (v50 < *(v47 + 16))
        {
          sub_10010EE80(v49 + *(v22 + 72) * v50, v24);
          v51 = *(v24 + 8);
          if (v51)
          {
            v52 = [v51 _identifier];
            if (v52)
            {
              v53 = v52;
              sub_1000065A8(0, &unk_100AE06F8);
              v54 = v163;
              sub_100830758(v163);
              v55 = static NSObject.== infix(_:_:)();

              sub_100830674(v54);
              if (v55)
              {

                v41 = v158;
                sub_10010F018(v24, v158);
                v45 = 0;
LABEL_24:
                v46 = v159;
                goto LABEL_26;
              }
            }
          }

          ++v50;
          sub_10010EEE4(v24);
          if (v48 == v50)
          {

            v45 = 1;
            v41 = v158;
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_121;
      }

      v41 = v158;
LABEL_26:
      v153(v41, v45, 1, v46);
      v56 = *(v22 + 48);
      v57 = v161;
      v58 = v56(v161, 1, v46);
      v42 = v162;
      if (v58 != 1)
      {
        sub_100004F84(v57, &unk_100AEE090);
      }

      v43 = v56(v41, 1, v46);
LABEL_29:
      if (v43 == 1)
      {
        sub_100830674(v163);

        sub_100004F84(v41, &unk_100AEE090);
        return;
      }

      sub_10010F018(v41, v42);
      v33 = *&Strong[OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentPlaces];
      if (v33)
      {
        if (v33 >> 62)
        {
          v4 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v4 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v4)
        {
          v24 = 0;
          while (1)
          {
            if ((v33 & 0xC000000000000001) != 0)
            {
              v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v24 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_123;
              }

              v59 = v33[v24 + 4];
            }

            v60 = v59;
            v61 = (v24 + 1);
            if (__OFADD__(v24, 1))
            {
              break;
            }

            v62 = [v59 _identifier];
            if (v62)
            {
              v63 = v62;
              sub_1000065A8(0, &unk_100AE06F8);
              v64 = v60;
              v65 = v163;
              sub_100830758(v163);
              v66 = static NSObject.== infix(_:_:)();

              v67 = v65;
              v60 = v64;
              sub_100830674(v67);
              if (v66)
              {

                v42 = v162;
                goto LABEL_49;
              }
            }

            ++v24;
            if (v61 == v4)
            {
              goto LABEL_45;
            }
          }

          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

LABEL_45:

        v42 = v162;
      }

      v68 = *(v42 + 8);
      if (!v68)
      {
        sub_100830674(v163);

        v69 = v42;
LABEL_102:
        sub_10010EEE4(v69);
        return;
      }

      v60 = v68;
LABEL_49:
      static UIListContentConfiguration.cell()();
      v70 = [v60 _styleAttributes];
      if (!v70)
      {
        v70 = [objc_opt_self() markerStyleAttributes];
      }

      v71 = objc_opt_self();
      v72 = [Strong traitCollection];
      [v72 displayScale];
      v74 = v73;

      v159 = v70;
      v75 = [v71 imageForStyle:v70 size:3 forScale:0 format:v74];
      if (!v75)
      {
        if (qword_100AD09D8 != -1)
        {
          swift_once();
        }

        v75 = qword_100B30EB0;
        if (qword_100B30EB0)
        {
          sub_1000F24EC(&unk_100AD4780);
          v76 = swift_allocObject();
          *(v76 + 16) = xmmword_100941D60;
          *(v76 + 32) = [objc_opt_self() whiteColor];
          if (qword_100AD0360 != -1)
          {
            swift_once();
          }

          v77 = qword_100B30358;
          *(v76 + 40) = qword_100B30358;
          sub_1000065A8(0, &qword_100AD4C70);
          v78 = v77;
          isa = Array._bridgeToObjectiveC()().super.isa;

          v80 = [objc_opt_self() configurationWithPaletteColors:isa];

          v75 = [v75 imageWithConfiguration:v80];
        }
      }

      v158 = v75;
      UIListContentConfiguration.image.setter();
      v81 = UIListContentConfiguration.imageProperties.modify();
      UIListContentConfiguration.ImageProperties.maximumSize.setter();
      v81(v164, 0);
      v82 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle1];
      v83 = UIListContentConfiguration.imageProperties.modify();
      UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.setter();
      v83(v164, 0);
      v84 = &selRef_initWithName_managedObjectModel_;
      v85 = [v60 _firstLocalizedCategoryName];
      p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
      v31 = &selRef_setRegion_;
      v161 = v60;
      if (!v85)
      {
        v85 = [v60 pointOfInterestCategory];
        if (!v85)
        {
LABEL_74:
          v96 = *v42;
          if (*v42)
          {
            v97 = [*v42 p_ivar_lyt[428]];
          }

          else
          {
            v97 = [v60 name];
            if (!v97)
            {
              goto LABEL_86;
            }
          }

          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v98 = [v60 v84[153]];
          if (v98 || (v98 = [v60 pointOfInterestCategory]) != 0)
          {
            v99 = v31;
            v100 = v98;
            v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v103 = v102;

            if ((v101 || v103 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_121;
            }

            v31 = v99;
            if (v96)
            {
              goto LABEL_83;
            }
          }

          else
          {

            if (v96)
            {
LABEL_83:
              v104 = [v96 p_ivar_lyt[428]];
LABEL_87:
              v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v107 = v106;

              v108 = [v60 v31[371]];
              if (!v108 || (v109 = v108, v110 = [v108 cityName], v109, !v110))
              {
LABEL_96:

                if (v96)
                {
                  v114 = [v96 p_ivar_lyt[428]];
LABEL_99:
                  static String._unconditionallyBridgeFromObjectiveC(_:)();

                  v115 = v154;
                  UIListContentConfiguration.text.setter();
LABEL_100:
                  UIListContentConfiguration.secondaryText.setter();
                  v116 = v151;
                  v117 = v150;
LABEL_101:
                  sub_1000F24EC(&unk_100ADFBF0);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_100940080;
                  *(inited + 32) = UIFontWeightSemibold;
                  v119 = inited + 32;
                  *(inited + 40) = 0;
                  *(inited + 48) = 3;
                  sub_100047788(UIFontTextStyleBody, inited, 0);
                  swift_setDeallocating();
                  sub_100047D60(v119);
                  v120 = UIListContentConfiguration.textProperties.modify();
                  UIListContentConfiguration.TextProperties.font.setter();
                  v120(v164, 0);
                  v121 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
                  v122 = UIListContentConfiguration.secondaryTextProperties.modify();
                  UIListContentConfiguration.TextProperties.font.setter();
                  v122(v164, 0);
                  v123 = [objc_opt_self() secondaryLabelColor];
                  v124 = UIListContentConfiguration.secondaryTextProperties.modify();
                  UIListContentConfiguration.TextProperties.color.setter();
                  v124(v164, 0);
                  UIListContentConfiguration.imageToTextPadding.setter();
                  v125 = UIListContentConfiguration.directionalLayoutMargins.modify();
                  *v126 = 0x4028000000000000;
                  v125(v164, 0);
                  v127 = UIListContentConfiguration.directionalLayoutMargins.modify();
                  *(v128 + 16) = 0x4028000000000000;
                  v127(v164, 0);
                  v164[3] = v116;
                  v164[4] = &protocol witness table for UIListContentConfiguration;
                  v129 = sub_10001A770(v164);
                  (*(v117 + 16))(v129, v115, v116);
                  UICollectionViewCell.contentConfiguration.setter();

                  sub_100830674(v163);
                  (*(v117 + 8))(v115, v116);
                  v69 = v162;
                  goto LABEL_102;
                }

LABEL_98:
                v114 = [v60 name];
                if (!v114)
                {
                  v130 = [v60 name];
                  v116 = v151;
                  v117 = v150;
                  v115 = v154;
                  if (v130)
                  {

                    v131 = [v161 name];
                    if (!v131)
                    {
                      goto LABEL_101;
                    }

                    v132 = v131;
                    v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v135 = v134;

                    if (v133 || v135 != 0xE000000000000000)
                    {
                      v136 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v136 & 1) == 0)
                      {
                        goto LABEL_101;
                      }
                    }

                    else
                    {
                    }
                  }

                  [v161 _coordinate];
                  v138 = v137;
                  v140 = v139;
                  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
                  v141._countAndFlagsBits = 0;
                  v141._object = 0xE000000000000000;
                  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v141);
                  v164[0] = v138;
                  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
                  v142._countAndFlagsBits = 0x202C4E20B0C2;
                  v142._object = 0xA600000000000000;
                  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v142);
                  v164[0] = v140;
                  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
                  v143._countAndFlagsBits = 1461760194;
                  v143._object = 0xA400000000000000;
                  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v143);
                  String.LocalizationValue.init(stringInterpolation:)();
                  static Locale.current.getter();
                  String.init(localized:defaultValue:table:bundle:locale:comment:)();
                  UIListContentConfiguration.text.setter();
                  UIListContentConfiguration.secondaryText.setter();
                  goto LABEL_101;
                }

                goto LABEL_99;
              }

              v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v113 = v112;

              if (!v111 && v113 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v105 == v111 && v107 == v113 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                goto LABEL_96;
              }

LABEL_121:
              v115 = v154;
              UIListContentConfiguration.text.setter();
              goto LABEL_100;
            }
          }

LABEL_86:
          v104 = [v60 name];
          if (!v104)
          {
            goto LABEL_98;
          }

          goto LABEL_87;
        }
      }

      v86 = v85;
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v88;

      if (*v42)
      {
        v89 = [*v42 title];
      }

      else
      {
        v89 = [v60 name];
        if (!v89)
        {
LABEL_73:

          goto LABEL_74;
        }
      }

      v90 = v60;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a4 = v91;

      v92 = [v90 addressRepresentations];
      if (!v92)
      {
LABEL_72:

        v42 = v162;
        v60 = v161;
        goto LABEL_73;
      }

      v93 = v92;
      v94 = [v92 cityName];

      if (v94)
      {
        v153 = v87;
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v95;

        if ((v27 != v4 || a4 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v31 = &selRef_setRegion_;
          if ((v153 || v33 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_116;
          }

          goto LABEL_71;
        }
      }

      v31 = &selRef_setRegion_;
LABEL_71:
      v84 = &selRef_initWithName_managedObjectModel_;
      goto LABEL_72;
    }
  }
}

void sub_10082AA28()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v8 = v14[0];
    IndexPath.section.getter();
    dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

    v9 = v15;
    if (v15 == 3)
    {
    }

    else
    {
      static UIListContentConfiguration.header()();
      if (v9 <= 1)
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        UIListContentConfiguration.text.setter();
      }

      v10 = [objc_opt_self() secondaryLabelColor];
      v11 = UIListContentConfiguration.textProperties.modify();
      UIListContentConfiguration.TextProperties.color.setter();
      v11(v14, 0);
      v14[3] = v2;
      v14[4] = &protocol witness table for UIListContentConfiguration;
      v12 = sub_10001A770(v14);
      (*(v3 + 16))(v12, v5, v2);
      UICollectionViewCell.contentConfiguration.setter();

      (*(v3 + 8))(v5, v2);
    }
  }
}

uint64_t sub_10082AD74(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  if (*a3 == 2)
  {
    sub_1000065A8(0, &qword_100ADE560);
    return UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  if (v3 == 1)
  {
    type metadata accessor for CollectionViewPickerCell();
    return UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  type metadata accessor for CollectionViewPickerCell();
  v5 = v3;
  v6 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  sub_100830674(v3);
  return v6;
}

uint64_t sub_10082AE64()
{
  v0 = sub_1000F24EC(&qword_100AF4330);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  sub_1008311A8();
  NSDiffableDataSourceSectionSnapshot.init()();
  v7 = 3;
  NSDiffableDataSourceSectionSnapshot.append(_:to:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v4 = v7;
  LOBYTE(v7) = 0;
  UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10082AFD4()
{
  v1 = sub_1000F24EC(&qword_100AF4330);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - v3;
  v5 = sub_1008311A8();
  NSDiffableDataSourceSectionSnapshot.init()();
  v6 = *(v0 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentPlaces);
  if (v6)
  {
    v21 = v2;
    v22 = v1;
    v19 = v0;
    v20 = v4;
    v18 = v5;
    if (v6 >> 62)
    {
LABEL_21:
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    while (v7 != v8)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v13 = [v10 _identifier];

      ++v8;
      if (v13)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1003E5AE0(0, *(v9 + 2) + 1, 1, v9);
        }

        v15 = *(v9 + 2);
        v14 = *(v9 + 3);
        if (v15 >= v14 >> 1)
        {
          v9 = sub_1003E5AE0((v14 > 1), v15 + 1, 1, v9);
        }

        *(v9 + 2) = v15 + 1;
        *&v9[v15 + 4] = v13;
        v8 = v12;
      }
    }

    v23 = v9;
    sub_1000F24EC(&qword_100AF4338);
    sub_1006B63B8(&unk_100AF4340, &qword_100AF4338);
    Collection<>.uniqued()();

    v23 = 3;
    v1 = v22;
    v4 = v20;
    NSDiffableDataSourceSectionSnapshot.append(_:to:)();

    v2 = v21;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v16 = v23;
  LOBYTE(v23) = 2;
  UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10082B308()
{
  v1 = v0;
  v2 = type metadata accessor for Loc(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AF4330);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = sub_1008311A8();
  v28 = v9;
  NSDiffableDataSourceSectionSnapshot.init()();
  v11 = *(v1 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_searchResults);
  v12 = *(v11 + 16);
  if (v12)
  {
    v24 = v10;
    v25 = v7;
    v26 = v1;
    v27 = v6;
    v13 = v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);

    v15 = _swiftEmptyArrayStorage;
    do
    {
      sub_10010EE80(v13, v5);
      v16 = *(v5 + 1);
      if (v16 && (v17 = [v16 _identifier]) != 0)
      {
        v18 = *&v17;
        sub_10010EEE4(v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1003E5AE0(0, *(v15 + 2) + 1, 1, v15);
        }

        v20 = *(v15 + 2);
        v19 = *(v15 + 3);
        if (v20 >= v19 >> 1)
        {
          v15 = sub_1003E5AE0((v19 > 1), v20 + 1, 1, v15);
        }

        *(v15 + 2) = v20 + 1;
        v15[v20 + 4] = v18;
      }

      else
      {
        sub_10010EEE4(v5);
      }

      v13 += v14;
      --v12;
    }

    while (v12);

    v6 = v27;
    v7 = v25;
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v29 = v15;
  sub_1000F24EC(&qword_100AF4338);
  sub_1006B63B8(&unk_100AF4340, &qword_100AF4338);
  Collection<>.uniqued()();

  v29 = 3;
  v21 = v28;
  NSDiffableDataSourceSectionSnapshot.append(_:to:)();

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v22 = v29;
  LOBYTE(v29) = 2;
  UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

  return (*(v7 + 8))(v21, v6);
}

uint64_t sub_10082B67C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AF4318);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - v4;
  sub_100831154();
  sub_1008311A8();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A5B0F8);
  v25 = 0;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  v24 = 1;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  v6 = *(v0 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentPlaces);
  if (v6)
  {
    v19 = v5;
    v20 = v3;
    v21 = v2;
    v18 = v1;
    if (v6 >> 62)
    {
LABEL_21:
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    while (v7 != v8)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v13 = [v10 _identifier];

      ++v8;
      if (v13)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1003E5AE0(0, *(v9 + 2) + 1, 1, v9);
        }

        v15 = *(v9 + 2);
        v14 = *(v9 + 3);
        if (v15 >= v14 >> 1)
        {
          v9 = sub_1003E5AE0((v14 > 1), v15 + 1, 1, v9);
        }

        *(v9 + 2) = v15 + 1;
        *&v9[v15 + 4] = v13;
        v8 = v12;
      }
    }

    v23 = 2;
    v2 = v21;
    v5 = v19;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v3 = v20;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v16 = v22;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10082B9A4(void *a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for VisitAssetMetadata();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&unk_100AEED20);
  __chkstk_darwin(v11 - 8);
  v13 = &v24 - v12;
  v14 = OBJC_IVAR____TtC7Journal28LocationPickerEditController_visitAssetMetadata;
  swift_beginAccess();
  sub_1000082B4(v2 + v14, v13, &unk_100AEED20);
  if ((*(v8 + 48))(v13, 1, v7))
  {
    return sub_100004F84(v13, &unk_100AEED20);
  }

  (*(v8 + 16))(v10, v13, v7);
  sub_100004F84(v13, &unk_100AEED20);
  v16 = VisitAssetMetadata.id.getter();
  v18 = v17;
  (*(v8 + 8))(v10, v7);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  type metadata accessor for MainActor();
  v20 = v2;
  v21 = a1;
  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = &protocol witness table for MainActor;
  v23[4] = v20;
  v23[5] = v16;
  v23[6] = v18;
  v23[7] = v21;
  sub_1003E9628(0, 0, v6, &unk_10096D3D8, v23);
}

uint64_t sub_10082BC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_1000F24EC(&unk_100AEED20);
  v7[6] = swift_task_alloc();
  v7[7] = type metadata accessor for MainActor();
  v7[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[9] = v9;
  v7[10] = v8;

  return _swift_task_switch(sub_10082BD64, v9, v8);
}

uint64_t sub_10082BD64()
{
  v1 = sub_100825CD4();
  v0[11] = v1;
  v2 = v0[8];
  if (v1)
  {

    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_10082BFAC;
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];

    return sub_1001B3EE4(v2, &protocol witness table for MainActor, v6, v4, v5);
  }

  else
  {

    v8 = v0[6];
    sub_1006ABA54(v8);
    v9 = type metadata accessor for VisitAssetMetadata();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v8, 1, v9);
    v12 = v0[6];
    if (v11 == 1)
    {
      sub_100004F84(v0[6], &unk_100AEED20);
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v13 = VisitAssetMetadata.placeName.getter();
      v14 = v15;
      (*(v10 + 8))(v12, v9);
    }

    v16 = v0[2];
    v17 = (v16 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_placeName);
    *v17 = v13;
    v17[1] = v14;

    sub_10082AFD4();
    sub_10082AE64();
    v18 = v16 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_pickerDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = v0[2];
      v20 = *(v18 + 8);
      ObjectType = swift_getObjectType();
      (*(v20 + 8))(v19, ObjectType, v20);
      swift_unknownObjectRelease();
    }

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_10082BFAC()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_10082C0F0, v3, v2);
}

uint64_t sub_10082C0F0()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC7Journal28LocationPickerEditController_journalEntry;
  v0[13] = OBJC_IVAR____TtC7Journal28LocationPickerEditController_journalEntry;
  v3 = *(v1 + v2);
  v0[14] = v3;
  if (v3)
  {
    v4 = v0[8];

    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v5[1] = sub_10082C3D8;

    return sub_10077E5EC(v4, &protocol witness table for MainActor);
  }

  else if ((sub_10011A350() & 1) != 0 && (v7 = *(v0[2] + v0[13]), (v0[16] = v7) != 0))
  {

    v0[17] = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10082C774, v9, v8);
  }

  else
  {
    v10 = v0[11];

    v11 = v0[6];
    sub_1006ABA54(v11);
    v12 = type metadata accessor for VisitAssetMetadata();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v11, 1, v12);
    v15 = v0[6];
    if (v14 == 1)
    {
      sub_100004F84(v0[6], &unk_100AEED20);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v16 = VisitAssetMetadata.placeName.getter();
      v17 = v18;
      (*(v13 + 8))(v15, v12);
    }

    v19 = v0[2];
    v20 = (v19 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_placeName);
    *v20 = v16;
    v20[1] = v17;

    sub_10082AFD4();
    sub_10082AE64();
    v21 = v19 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_pickerDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = v0[2];
      v23 = *(v21 + 8);
      ObjectType = swift_getObjectType();
      (*(v23 + 8))(v22, ObjectType, v23);
      swift_unknownObjectRelease();
    }

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_10082C3D8()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_10082C538, v3, v2);
}

uint64_t sub_10082C538()
{
  if ((sub_10011A350() & 1) != 0 && (v1 = *(v0[2] + v0[13]), (v0[16] = v1) != 0))
  {

    v0[17] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10082C774, v3, v2);
  }

  else
  {
    v4 = v0[11];

    v5 = v0[6];
    sub_1006ABA54(v5);
    v6 = type metadata accessor for VisitAssetMetadata();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 48))(v5, 1, v6);
    v9 = v0[6];
    if (v8 == 1)
    {
      sub_100004F84(v0[6], &unk_100AEED20);
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v10 = VisitAssetMetadata.placeName.getter();
      v11 = v12;
      (*(v7 + 8))(v9, v6);
    }

    v13 = v0[2];
    v14 = (v13 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_placeName);
    *v14 = v10;
    v14[1] = v11;

    sub_10082AFD4();
    sub_10082AE64();
    v15 = v13 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_pickerDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = v0[2];
      v17 = *(v15 + 8);
      ObjectType = swift_getObjectType();
      (*(v17 + 8))(v16, ObjectType, v17);
      swift_unknownObjectRelease();
    }

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_10082C774()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[16];
  if (Strong)
  {
    v3 = *(v2 + 56);
    ObjectType = swift_getObjectType();
    v5 = sub_1004959AC(&off_100A5B1C0);
    (*(v3 + 8))(v2, v5, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v6 = v0[9];
  v7 = v0[10];

  return _swift_task_switch(sub_10082C854, v6, v7);
}

uint64_t sub_10082C854()
{
  v1 = v0[11];

  v2 = v0[6];
  sub_1006ABA54(v2);
  v3 = type metadata accessor for VisitAssetMetadata();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[6];
  if (v5 == 1)
  {
    sub_100004F84(v0[6], &unk_100AEED20);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = VisitAssetMetadata.placeName.getter();
    v8 = v9;
    (*(v4 + 8))(v6, v3);
  }

  v10 = v0[2];
  v11 = (v10 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_placeName);
  *v11 = v7;
  v11[1] = v8;

  sub_10082AFD4();
  sub_10082AE64();
  v12 = v10 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_pickerDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = v0[2];
    v14 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(v13, ObjectType, v14);
    swift_unknownObjectRelease();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10082CAA8(void *a1)
{
  [a1 setText:0];
  [a1 setShowsCancelButton:0 animated:1];
  [a1 resignFirstResponder];
  v3 = *(v1 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_searchCompleter);
  v4 = String._bridgeToObjectiveC()();
  [v3 setQueryFragment:v4];

  *(v1 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_searchResults) = _swiftEmptyArrayStorage;

  return sub_10082AFD4();
}

id sub_10082CBD0(void *a1)
{
  v2 = type metadata accessor for Loc(0);
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v42 - v7;
  v9 = [a1 results];
  sub_1000065A8(0, &unk_100AD2BD0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
LABEL_27:
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v12 = 0;
      v48 = v10 & 0xFFFFFFFFFFFFFF8;
      v49 = v10 & 0xC000000000000001;
      v13 = _swiftEmptyArrayStorage;
      p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
      v44 = v10;
      v45 = v8;
      v43 = v11;
      while (1)
      {
        if (v49)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v48 + 16))
          {
            goto LABEL_26;
          }

          v15 = *(v10 + 8 * v12 + 32);
        }

        v16 = v15;
        v8 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v17 = [v15 p_ivar_lyt[493]];
        if (v17)
        {
          v18 = v17;
          v55 = (v12 + 1);
          result = [v16 p_ivar_lyt[493]];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v20 = result;
          v21 = [result addressRepresentations];

          if (v21 && (v22 = [v21 cityName], v21, v22))
          {
            v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v52 = v24;
            v53 = v23;
          }

          else
          {
            v52 = 0;
            v53 = 0;
          }

          v25 = [v18 pointOfInterestCategory];
          v54 = v13;
          if (v25)
          {
            v26 = v25;
            v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v50 = v28;
            v51 = v27;
          }

          else
          {
            v50 = 0;
            v51 = 0;
          }

          v29 = [v18 _styleAttributes];
          *(v4 + 2) = 0;
          v30 = v47;
          v31 = v47[7];
          v32 = type metadata accessor for Date();
          v33 = *(*(v32 - 8) + 56);
          v33(&v4[v31], 1, 1, v32);
          v33(&v4[v30[8]], 1, 1, v32);
          v34 = &v4[v30[9]];
          v35 = &v4[v30[10]];
          v36 = v30[11];
          v37 = v30[12];
          *v4 = v16;
          *(v4 + 1) = v18;
          v38 = v52;
          *v34 = v53;
          v34[1] = v38;
          *v35 = v51;
          v35[1] = v50;
          *&v4[v36] = v29;
          v4[v37] = 1;
          v39 = v45;
          sub_10010F018(v4, v45);
          v13 = v54;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1003E4B08(0, *(v13 + 2) + 1, 1, v13);
          }

          v10 = v44;
          p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
          v41 = *(v13 + 2);
          v40 = *(v13 + 3);
          if (v41 >= v40 >> 1)
          {
            v13 = sub_1003E4B08(v40 > 1, v41 + 1, 1, v13);
          }

          *(v13 + 2) = v41 + 1;
          sub_10010F018(v39, v13 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v41);
          v11 = v43;
          v8 = v55;
        }

        else
        {
        }

        ++v12;
        if (v8 == v11)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_29:

  *(v42 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_searchResults) = v13;

  return sub_10082B308();
}

id sub_10082D0B4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1000F24EC(&qword_100AF42D8);
  UIViewController.ViewLoading.init()();
  *&v3[OBJC_IVAR____TtC7Journal28LocationPickerEditController_pickerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC7Journal28LocationPickerEditController_journalEntry] = 0;
  v6 = &v3[OBJC_IVAR____TtC7Journal28LocationPickerEditController_placeName];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC7Journal28LocationPickerEditController_searchCompleter;
  *&v3[v7] = [objc_allocWithZone(MKLocalSearchCompleter) init];
  *&v3[OBJC_IVAR____TtC7Journal28LocationPickerEditController_searchResults] = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC7Journal28LocationPickerEditController_visitAssetMetadata;
  v9 = type metadata accessor for VisitAssetMetadata();
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  *&v3[OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentPlaces] = 0;
  *&v3[OBJC_IVAR____TtC7Journal28LocationPickerEditController_localSearch] = 0;
  *&v3[OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentLocs] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC7Journal28LocationPickerEditController_localSearchWithCompletion] = 0;
  sub_1000065A8(0, &qword_100AD43B0);
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  if (a2)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for LocationPickerEditController();
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v10, a3);

  return v11;
}

id sub_10082D2F4(void *a1)
{
  sub_1000F24EC(&qword_100AF42D8);
  UIViewController.ViewLoading.init()();
  *&v1[OBJC_IVAR____TtC7Journal28LocationPickerEditController_pickerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Journal28LocationPickerEditController_journalEntry] = 0;
  v3 = &v1[OBJC_IVAR____TtC7Journal28LocationPickerEditController_placeName];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC7Journal28LocationPickerEditController_searchCompleter;
  *&v1[v4] = [objc_allocWithZone(MKLocalSearchCompleter) init];
  *&v1[OBJC_IVAR____TtC7Journal28LocationPickerEditController_searchResults] = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC7Journal28LocationPickerEditController_visitAssetMetadata;
  v6 = type metadata accessor for VisitAssetMetadata();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentPlaces] = 0;
  *&v1[OBJC_IVAR____TtC7Journal28LocationPickerEditController_localSearch] = 0;
  *&v1[OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentLocs] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7Journal28LocationPickerEditController_localSearchWithCompletion] = 0;
  sub_1000065A8(0, &qword_100AD43B0);
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for LocationPickerEditController();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_10082D4D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationPickerEditController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LocationPickerEditController()
{
  result = qword_100AF42C0;
  if (!qword_100AF42C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10082D710()
{
  sub_10082D85C();
  if (v0 <= 0x3F)
  {
    sub_10082D8C0();
    if (v1 <= 0x3F)
    {
      sub_10000C298();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10082D85C()
{
  if (!qword_100AF42D0)
  {
    sub_1000F2A18(&qword_100AF42D8);
    v0 = type metadata accessor for UIViewController.ViewLoading();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF42D0);
    }
  }
}

void sub_10082D8C0()
{
  if (!qword_100AF42E0)
  {
    type metadata accessor for VisitAssetMetadata();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF42E0);
    }
  }
}

void sub_10082D918(void **a1)
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v17 - v5;
  v7 = *a1;
  if (v7)
  {
    v8 = [v7 mapItem];
    if (v8)
    {
      v9 = v8;
      v10 = [v7 title];
      if (!v10)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = String._bridgeToObjectiveC()();
      }

      [v9 setName:v10];

      v11 = type metadata accessor for TaskPriority();
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
      type metadata accessor for MainActor();
      v12 = v7;
      v13 = v1;
      v14 = v9;
      v15 = static MainActor.shared.getter();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = &protocol witness table for MainActor;
      v16[4] = v7;
      v16[5] = v13;
      v16[6] = v14;
      sub_1004EC158(0, 0, v6, &unk_10096D3B8, v16);
    }
  }
}

uint64_t sub_10082DAD4(uint64_t a1)
{
  v2 = type metadata accessor for AssetSource();
  v143 = *(v2 - 8);
  __chkstk_darwin(v2);
  v140 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1000F24EC(&qword_100AD6BD8);
  __chkstk_darwin(v128);
  v146 = &v121 - v4;
  v5 = type metadata accessor for VisitAssetMetadata();
  v155 = *(v5 - 8);
  __chkstk_darwin(v5);
  v139 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v144 = &v121 - v8;
  v9 = sub_1000F24EC(&unk_100AEED20);
  __chkstk_darwin(v9 - 8);
  v126 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v150 = &v121 - v12;
  v13 = sub_1000F24EC(&unk_100AEED30);
  __chkstk_darwin(v13 - 8);
  v138 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v121 - v16;
  __chkstk_darwin(v18);
  v123 = &v121 - v19;
  __chkstk_darwin(v20);
  v22 = &v121 - v21;
  __chkstk_darwin(v23);
  v25 = &v121 - v24;
  __chkstk_darwin(v26);
  v158 = &v121 - v27;
  v28 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v28 - 8);
  v153 = &v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v154 = &v121 - v31;
  __chkstk_darwin(v32);
  v152 = &v121 - v33;
  *&v35 = __chkstk_darwin(v34).n128_u64[0];
  v157 = &v121 - v36;
  v37 = *(a1 + 8);
  v142 = v17;
  if (v37)
  {
    v38 = [v37 name];
    if (v38 || (v38 = [v37 name]) != 0)
    {
      v39 = v38;
      v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v137 = v40;

      v41 = *(a1 + 16);
      if (!v41)
      {
LABEL_5:
        v42 = &selRef__coordinate;
        v41 = v37;
LABEL_9:
        [v41 *v42];
        v135 = v43;
        [v41 *v42];
        v134 = 0;
        v133 = v44;
        goto LABEL_10;
      }
    }

    else
    {
      v136 = 0;
      v137 = 0;
      v41 = *(a1 + 16);
      if (!v41)
      {
        goto LABEL_5;
      }
    }

LABEL_8:
    v42 = &selRef_coordinate;
    goto LABEL_9;
  }

  v41 = *(a1 + 16);
  v137 = 0;
  if (v41)
  {
    v136 = 0;
    goto LABEL_8;
  }

  v134 = 1;
  v136 = 0;
  v133 = 0;
  v135 = 0;
LABEL_10:
  v45 = type metadata accessor for Loc(0);
  v46 = (a1 + v45[9]);
  v47 = v46[1];
  if (v47)
  {
    v48 = *v46;
  }

  else
  {
    v48 = 0;
  }

  v141 = v22;
  v49 = v47;
  v50 = v2;
  if (v37 && !v47)
  {
    v51 = [v37 addressRepresentations];
    if (v51 && (v52 = v51, v53 = [v51 cityName], v52, v53))
    {
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v25;
      v56 = v55;

      v49 = v56;
      v25 = v54;
    }

    else
    {
      v48 = 0;
      v49 = 0;
    }
  }

  v57 = (a1 + v45[10]);
  v58 = v57[1];
  v132 = v48;
  v131 = v49;
  if (v58)
  {
    v130 = *v57;

    v129 = v58;
    goto LABEL_28;
  }

  if (v37)
  {

    v59 = [v37 _firstLocalizedCategoryName];
    if (v59 || (v59 = [v37 pointOfInterestCategory]) != 0)
    {
      v60 = v59;
      v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v129 = v61;

      goto LABEL_28;
    }
  }

  else
  {
  }

  v130 = 0;
  v129 = 0;
LABEL_28:
  sub_1000082B4(a1 + v45[7], v157, &unk_100AD4790);
  v62 = *(a1 + v45[11]);
  v151 = v37;

  if (v62)
  {
    v63 = v62;
  }

  else
  {
    v63 = [v37 _styleAttributes];
  }

  v64 = v5;
  v65 = v150;
  v66 = OBJC_IVAR____TtC7Journal28LocationPickerEditController_visitAssetMetadata;
  v67 = v156;
  swift_beginAccess();
  v125 = v66;
  sub_1000082B4(v67 + v66, v65, &unk_100AEED20);
  v68 = v155;
  v124 = *(v155 + 48);
  v69 = v124(v65, 1, v64);
  v145 = v64;
  v127 = v63;
  if (v69)
  {
    v70 = v62;
    sub_100004F84(v65, &unk_100AEED20);
    v71 = v143;
    (*(v143 + 56))(v25, 1, 1, v50);
  }

  else
  {
    v72 = v144;
    (*(v68 + 16))(v144, v65, v64);
    v73 = v62;
    sub_100004F84(v65, &unk_100AEED20);
    VisitAssetMetadata.assetSource.getter();
    (*(v68 + 8))(v72, v64);
    v71 = v143;
  }

  v74 = v50;
  v75 = v141;
  v149 = *(v71 + 104);
  v150 = (v71 + 104);
  v149(v141, enum case for AssetSource.automatic(_:), v74);
  v147 = *(v71 + 56);
  v148 = v71 + 56;
  v147(v75, 0, 1, v74);
  v76 = *(v128 + 48);
  v77 = v25;
  v78 = v25;
  v79 = v146;
  sub_1000082B4(v77, v146, &unk_100AEED30);
  sub_1000082B4(v75, v79 + v76, &unk_100AEED30);
  v80 = *(v71 + 48);
  v81 = v80(v79, 1, v74);
  v128 = v80;
  if (v81 == 1)
  {
    sub_100004F84(v75, &unk_100AEED30);
    v82 = v146;
    sub_100004F84(v78, &unk_100AEED30);
    v83 = v80(v82 + v76, 1, v74);
    v84 = v127;
    v85 = v74;
    if (v83 == 1)
    {
      sub_100004F84(v82, &unk_100AEED30);
LABEL_43:
      v95 = v158;
      v149(v158, enum case for AssetSource.locationPicker(_:), v85);
      v89 = v95;
      v90 = 0;
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  v122 = v78;
  v86 = v123;
  sub_1000082B4(v79, v123, &unk_100AEED30);
  v85 = v74;
  if (v80(v79 + v76, 1, v74) == 1)
  {
    sub_100004F84(v141, &unk_100AEED30);
    v82 = v146;
    sub_100004F84(v122, &unk_100AEED30);
    (*(v71 + 8))(v86, v74);
    v84 = v127;
LABEL_39:
    sub_100004F84(v82, &qword_100AD6BD8);
    goto LABEL_40;
  }

  v91 = v79 + v76;
  v92 = v140;
  (*(v71 + 32))(v140, v91, v74);
  sub_1008313D4(&qword_100AD6BF0, &type metadata accessor for AssetSource);
  v93 = dispatch thunk of static Equatable.== infix(_:_:)();
  v94 = *(v71 + 8);
  v94(v92, v85);
  sub_100004F84(v141, &unk_100AEED30);
  sub_100004F84(v122, &unk_100AEED30);
  v94(v86, v85);
  sub_100004F84(v79, &unk_100AEED30);
  v84 = v127;
  if (v93)
  {
    goto LABEL_43;
  }

LABEL_40:
  v87 = v126;
  sub_1000082B4(v156 + v125, v126, &unk_100AEED20);
  v88 = v145;
  if (v124(v87, 1, v145))
  {
    sub_100004F84(v87, &unk_100AEED20);
    v89 = v158;
    v90 = 1;
LABEL_44:
    v147(v89, v90, 1, v85);
    goto LABEL_46;
  }

  v96 = v155;
  v97 = v144;
  (*(v155 + 16))(v144, v87, v88);
  sub_100004F84(v87, &unk_100AEED20);
  VisitAssetMetadata.assetSource.getter();
  (*(v96 + 8))(v97, v88);
LABEL_46:
  v98 = v151;
  sub_1000082B4(v157, v152, &unk_100AD4790);
  v99 = type metadata accessor for Date();
  v100 = *(*(v99 - 8) + 56);
  v100(v154, 1, 1, v99);
  v101 = v153;
  static Date.now.getter();
  v100(v101, 0, 1, v99);
  if (v84)
  {
    sub_1000065A8(0, &qword_100AD5A80);
    v102 = v84;
    NSCoding<>.toData.getter();
    v146 = v103;
  }

  else
  {
    v146 = 0xF000000000000000;
  }

  v104 = v128;
  if (v98)
  {
    sub_1000065A8(0, &qword_100AD5A90);
    NSCoding<>.toData.getter();
    v105 = [v98 location];
    [v105 horizontalAccuracy];
    v107 = v106;

    v108 = v107;
  }

  else
  {
    v108 = 0;
  }

  v109 = v138;
  sub_1000082B4(v158, v138, &unk_100AEED30);
  if (v104(v109, 1, v85) == 1)
  {
    v143 = v108;
    v110 = v104;
    v111 = v109;
    v112 = enum case for AssetSource.locationPicker(_:);
    v149(v142, enum case for AssetSource.locationPicker(_:), v85);
    if (v110(v111, 1, v85) != 1)
    {
      sub_100004F84(v111, &unk_100AEED30);
    }

    v113 = v142;
  }

  else
  {
    v113 = v142;
    (*(v143 + 32))(v142, v109, v85);
    v112 = enum case for AssetSource.locationPicker(_:);
  }

  v147(v113, 0, 1, v85);
  v114 = v139;
  VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
  v115 = v140;
  v149(v140, v112, v85);
  v116 = v155;
  v117 = v144;
  v118 = v145;
  (*(v155 + 16))(v144, v114, v145);
  v119 = sub_100579F84(v115, v117);
  sub_10082B9A4(v119);

  (*(v116 + 8))(v114, v118);
  sub_100004F84(v158, &unk_100AEED30);
  return sub_100004F84(v157, &unk_100AD4790);
}

uint64_t sub_10082EC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = type metadata accessor for Loc(0);
  v6[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[8] = v8;
  v6[9] = v7;

  return _swift_task_switch(sub_10082ECD4, v8, v7);
}

uint64_t sub_10082ECD4()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_10082EDC0;

    return sub_10082F264(v2);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10082EDC0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  v5 = *(v3 + 72);
  v6 = *(v3 + 64);
  if (v1)
  {
    v7 = sub_10082F1F0;
  }

  else
  {
    v7 = sub_10082EF04;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10082EF04()
{
  v1 = v0[11];

  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = v0[11];
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_11:

    goto LABEL_12;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  v4 = v0[11];
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
  }

  v6 = v5;
  v7 = v0[4];

  v8 = [v6 location];
  v9 = [v7 location];
  [v8 distanceFromLocation:v9];
  v11 = v10;

  if (v11 > 2.0)
  {

LABEL_12:
    v21 = v0[5];
    v12 = v0[6];
    v22 = v0[4];
    v20 = v0[2];
    *v12 = 0;
    *(v12 + 2) = 0;
    v23 = v21[7];
    v24 = type metadata accessor for Date();
    v25 = *(*(v24 - 8) + 56);
    v25(&v12[v23], 1, 1, v24);
    v25(&v12[v21[8]], 1, 1, v24);
    v26 = &v12[v21[9]];
    *v26 = 0;
    *(v26 + 1) = 0;
    v27 = &v12[v21[10]];
    *v27 = 0;
    *(v27 + 1) = 0;
    *&v12[v21[11]] = 0;
    v12[v21[12]] = 0;
    *(v12 + 1) = v22;
    v28 = v22;
    sub_10082DAD4(v12);
    goto LABEL_13;
  }

  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[2];
  *v12 = 0;
  *(v12 + 2) = 0;
  v15 = v13[7];
  v16 = type metadata accessor for Date();
  v17 = *(*(v16 - 8) + 56);
  v17(&v12[v15], 1, 1, v16);
  v17(&v12[v13[8]], 1, 1, v16);
  v18 = &v12[v13[9]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v12[v13[10]];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v12[v13[11]] = 0;
  v12[v13[12]] = 0;
  *(v12 + 1) = v6;
  v20 = v6;
  sub_10082DAD4(v12);

LABEL_13:
  sub_10010EEE4(v12);

  v29 = v0[1];

  return v29();
}

uint64_t sub_10082F1F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10082F264(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  type metadata accessor for MainActor();
  v2[21] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[22] = v4;
  v2[23] = v3;

  return _swift_task_switch(sub_10082F2FC, v4, v3);
}

uint64_t sub_10082F2FC()
{
  v1 = v0[20];
  v2 = [objc_allocWithZone(MKLocalSearchRequest) initWithCompletion:v0[19]];
  v0[24] = v2;
  v3 = [objc_allocWithZone(MKLocalSearch) initWithRequest:v2];
  v0[25] = v3;
  v4 = OBJC_IVAR____TtC7Journal28LocationPickerEditController_localSearchWithCompletion;
  v5 = *(v1 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_localSearchWithCompletion);
  if (v5)
  {
    [v5 cancel];
    v6 = *(v1 + v4);
  }

  else
  {
    v6 = 0;
  }

  *(v1 + v4) = v3;
  v7 = v3;

  if (v7)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10082F4E8;
    v8 = swift_continuation_init();
    v0[17] = sub_1000F24EC(&qword_100AF4310);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10039677C;
    v0[13] = &unk_100A822D8;
    v0[14] = v8;
    [v7 startWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v9 = v0[1];

    return v9(0);
  }
}

uint64_t sub_10082F4E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_10082F6E4;
  }

  else
  {
    v5 = sub_10082F618;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10082F618()
{
  v2 = v0[24];
  v1 = v0[25];

  v3 = v0[18];
  v4 = [v3 mapItems];

  sub_1000065A8(0, &qword_100AD5A90);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_10082F6E4()
{
  v1 = v0[25];
  v2 = v0[24];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

void sub_10082F764(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (!a2)
    {
      if (a1)
      {
        v6 = [a1 mapItems];
        sub_1000065A8(0, &qword_100AD5A90);
        a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      *&v5[OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentPlaces] = a1;

      sub_100826544();
    }
  }
}

void sub_10082F8E4()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v35 - v3;
  v5 = sub_1000F24EC(&unk_100AEED20);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for VisitAssetMetadata();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v15 = v40;
  v16 = [v40 isEnabled];

  if (v16)
  {
    v17 = OBJC_IVAR____TtC7Journal28LocationPickerEditController_visitAssetMetadata;
    swift_beginAccess();
    sub_1000082B4(&v1[v17], v7, &unk_100AEED20);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_100004F84(v7, &unk_100AEED20);
      return;
    }

    v38 = *(v9 + 32);
    v39 = v9 + 32;
    v38(v14, v7, v8);
    v19 = *&v1[OBJC_IVAR____TtC7Journal28LocationPickerEditController_placeName];
    v18 = *&v1[OBJC_IVAR____TtC7Journal28LocationPickerEditController_placeName + 8];

    v20 = VisitAssetMetadata.placeName.getter();
    if (v18)
    {
      if (v21)
      {
        if (v19 == v20 && v18 == v21)
        {

LABEL_15:
          (*(v9 + 8))(v14, v8);
          return;
        }

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v34)
        {
          goto LABEL_15;
        }

LABEL_11:
        v22 = VisitAssetMetadata.latitude.getter();
        if ((v23 & 1) == 0)
        {
          v24 = v22;
          v25 = VisitAssetMetadata.longitude.getter();
          if ((v26 & 1) == 0)
          {
            v37 = v25;
            v27 = type metadata accessor for TaskPriority();
            (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
            (*(v9 + 16))(v11, v14, v8);
            type metadata accessor for MainActor();
            v36 = v1;
            v28 = static MainActor.shared.getter();
            v29 = (*(v9 + 80) + 40) & ~*(v9 + 80);
            v30 = (v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
            v31 = swift_allocObject();
            *(v31 + 2) = v28;
            *(v31 + 3) = &protocol witness table for MainActor;
            *(v31 + 4) = v36;
            v38(&v31[v29], v11, v8);
            v32 = &v31[v30];
            v33 = v37;
            *v32 = v24;
            v32[1] = v33;
            sub_1003E9628(0, 0, v4, &unk_10096D360, v31);
          }
        }

        goto LABEL_15;
      }
    }

    else if (!v21)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }
}

uint64_t sub_10082FD40(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 16) = a6;
  *(v7 + 24) = a7;
  *(v7 + 48) = type metadata accessor for MainActor();
  *(v7 + 56) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 64) = v9;
  *(v7 + 72) = v8;

  return _swift_task_switch(sub_10082FDE0, v9, v8);
}

uint64_t sub_10082FDE0()
{
  v1 = (*(v0 + 2) + OBJC_IVAR____TtC7Journal28LocationPickerEditController_placeName);
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v4 = VisitAssetMetadata.placeName.getter();
    if (!v5)
    {
      goto LABEL_17;
    }

    v2 = v4;
    v3 = v5;
  }

  *(v0 + 10) = v3;

  v6 = sub_100825CD4();
  *(v0 + 11) = v6;
  if (v6)
  {
    v7 = *(v0 + 7);

    v8 = swift_task_alloc();
    *(v0 + 12) = v8;
    *v8 = v0;
    v8[1] = sub_100830068;
    v9 = v0[4];
    v10 = v0[5];

    return sub_1001B5128(v7, &protocol witness table for MainActor, v2, v3, v9, v10);
  }

  v12 = *(v0 + 2);
  v13 = OBJC_IVAR____TtC7Journal28LocationPickerEditController_journalEntry;
  if (*(v12 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_journalEntry))
  {

    sub_10003A464();
  }

  v14 = sub_100825CD4();
  if (v14)
  {
    v15 = v14;
    v16 = sub_10011A350();

    if (v16)
    {
      v17 = *(v12 + v13);
      *(v0 + 13) = v17;
      if (v17)
      {

        *(v0 + 14) = static MainActor.shared.getter();
        v19 = dispatch thunk of Actor.unownedExecutor.getter();

        return _swift_task_switch(sub_10083036C, v19, v18);
      }
    }
  }

LABEL_17:

  v20 = *(v0 + 2) + OBJC_IVAR____TtC7Journal28LocationPickerEditController_pickerDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(v0 + 2);
    v22 = *(v20 + 8);
    ObjectType = swift_getObjectType();
    (*(v22 + 8))(v21, ObjectType, v22);
    swift_unknownObjectRelease();
  }

  v24 = *(v0 + 1);

  return v24();
}

uint64_t sub_100830068()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_1008301E8, v4, v3);
}

uint64_t sub_1008301E8()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC7Journal28LocationPickerEditController_journalEntry;
  if (*(v1 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_journalEntry))
  {

    sub_10003A464();
  }

  v3 = sub_100825CD4();
  if (v3 && (v4 = v3, v5 = sub_10011A350(), v4, (v5 & 1) != 0) && (v6 = *(v1 + v2), (v0[13] = v6) != 0))
  {

    v0[14] = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10083036C, v8, v7);
  }

  else
  {

    v9 = v0[2] + OBJC_IVAR____TtC7Journal28LocationPickerEditController_pickerDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = v0[2];
      v11 = *(v9 + 8);
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(v10, ObjectType, v11);
      swift_unknownObjectRelease();
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_10083036C()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[13];
  if (Strong)
  {
    v3 = *(v2 + 56);
    ObjectType = swift_getObjectType();
    v5 = sub_1004959AC(&off_100A5B1E8);
    (*(v3 + 8))(v2, v5, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v6 = v0[8];
  v7 = v0[9];

  return _swift_task_switch(sub_10083044C, v6, v7);
}

uint64_t sub_10083044C()
{

  v1 = *(v0 + 16) + OBJC_IVAR____TtC7Journal28LocationPickerEditController_pickerDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 16);
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v2, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100830550(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_100830598()
{
  result = qword_100AF42E8;
  if (!qword_100AF42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF42E8);
  }

  return result;
}

unint64_t sub_100830620()
{
  result = qword_100AF4300;
  if (!qword_100AF4300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4300);
  }

  return result;
}

void sub_100830674(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

uint64_t sub_100830688(void *a1, char *a2)
{
  if (a1 == 2)
  {
    if (a2 == 2)
    {
      return 1;
    }
  }

  else if (a1 == 1)
  {
    if (a2 == 1)
    {
      return 1;
    }
  }

  else if ((a2 - 1) >= 2)
  {
    if (a1)
    {
      if (a2)
      {
        sub_1000065A8(0, &unk_100AE06F8);
        sub_100830758(a2);
        sub_100830758(a1);
        v5 = static NSObject.== infix(_:_:)();
        sub_100830674(a1);
        sub_100830674(a2);
        if (v5)
        {
          return 1;
        }
      }
    }

    else if (!a2)
    {
      return 1;
    }
  }

  return 0;
}

id sub_100830758(id result)
{
  if (result - 1 >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_10083076C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for VisitAssetMetadata() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100032EC8;

  return sub_10082FD40(v11, v12, a1, v7, v8, v9, v1 + v6);
}

void sub_1008308A8(void *a1)
{
  v2 = [a1 text];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = *(v1 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_searchCompleter);
  v8 = String._bridgeToObjectiveC()();
  [v7 setQueryFragment:v8];

  v9 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    *(v1 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_searchResults) = _swiftEmptyArrayStorage;
  }
}

id sub_100830998(uint64_t a1)
{
  sub_1000F24EC(&qword_100AF42D8);
  UIViewController.ViewLoading.init()();
  *&v1[OBJC_IVAR____TtC7Journal28LocationPickerEditController_pickerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Journal28LocationPickerEditController_journalEntry] = 0;
  v3 = &v1[OBJC_IVAR____TtC7Journal28LocationPickerEditController_placeName];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC7Journal28LocationPickerEditController_searchCompleter;
  *&v1[v4] = [objc_allocWithZone(MKLocalSearchCompleter) init];
  *&v1[OBJC_IVAR____TtC7Journal28LocationPickerEditController_searchResults] = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC7Journal28LocationPickerEditController_visitAssetMetadata;
  v6 = type metadata accessor for VisitAssetMetadata();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentPlaces] = 0;
  *&v1[OBJC_IVAR____TtC7Journal28LocationPickerEditController_localSearch] = 0;
  *&v1[OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentLocs] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7Journal28LocationPickerEditController_localSearchWithCompletion] = 0;
  sub_1000065A8(0, &qword_100AD43B0);
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for LocationPickerEditController();
  return objc_msgSendSuper2(&v8, "initWithCollectionViewLayout:", a1);
}

void sub_100830B30()
{
  v1 = v0;
  v2 = type metadata accessor for Loc(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  __chkstk_darwin(v9);
  v11 = (&v42 - v10);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  __chkstk_darwin(v15);
  v45 = &v42 - v16;
  __chkstk_darwin(v17);
  v46 = (&v42 - v18);
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v19 = v47;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v20 = v47;
  if (v47 == 3)
  {
    return;
  }

  if ((v47 - 1) < 2)
  {
LABEL_30:
    sub_100830F98(v20);
    return;
  }

  v43 = v11;
  v44 = v1;
  v21 = *(v1 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_searchResults);
  v22 = *(v21 + 16);
  v42 = v8;
  if (v22)
  {
    v23 = v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    sub_100830FA8(v47);

    v24 = 0;
    while (1)
    {
      if (v24 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      sub_10010EE80(v23 + *(v3 + 72) * v24, v14);
      v25 = *(v14 + 1);
      if (v25 && (v26 = [v25 _identifier]) != 0)
      {
        v27 = v26;
        if (v20)
        {
          sub_1000065A8(0, &unk_100AE06F8);
          sub_100830FA8(v20);
          v28 = static NSObject.== infix(_:_:)();

          sub_100830F98(v20);
          if (v28)
          {
LABEL_27:

            v37 = v45;
            sub_10010F018(v14, v45);
            v38 = v37;
            v39 = v46;
            sub_10010F018(v38, v46);
            sub_10082D918(v39);
LABEL_32:
            sub_100830F98(v20);
            sub_100830F98(v20);
            sub_10010EEE4(v39);
            return;
          }
        }

        else
        {
        }
      }

      else if (!v20)
      {
        goto LABEL_27;
      }

      ++v24;
      sub_10010EEE4(v14);
      if (v22 == v24)
      {

        v1 = v44;
        goto LABEL_16;
      }
    }
  }

  sub_100830758(v47);
LABEL_16:
  v29 = *(v1 + OBJC_IVAR____TtC7Journal28LocationPickerEditController_nearCurrentLocs);
  v30 = *(v29 + 16);
  if (!v30)
  {
LABEL_29:
    sub_100830F98(v20);
    goto LABEL_30;
  }

  v31 = v29 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  v32 = 0;
  while (v32 < *(v29 + 16))
  {
    sub_10010EE80(v31 + *(v3 + 72) * v32, v5);
    v33 = *(v5 + 1);
    if (v33 && (v34 = [v33 _identifier]) != 0)
    {
      v35 = v34;
      if (v20)
      {
        sub_1000065A8(0, &unk_100AE06F8);
        sub_100830FA8(v20);
        v36 = static NSObject.== infix(_:_:)();

        sub_100830F98(v20);
        if (v36)
        {
LABEL_31:

          v40 = v42;
          sub_10010F018(v5, v42);
          v41 = v40;
          v39 = v43;
          sub_10010F018(v41, v43);
          sub_10082DAD4(v39);
          goto LABEL_32;
        }
      }

      else
      {
      }
    }

    else if (!v20)
    {
      goto LABEL_31;
    }

    ++v32;
    sub_10010EEE4(v5);
    if (v30 == v32)
    {

      goto LABEL_29;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_100830F98(id a1)
{
  if (a1 != 3)
  {
    sub_100830674(a1);
  }
}

id sub_100830FA8(id result)
{
  if (result != 3)
  {
    return sub_100830758(result);
  }

  return result;
}

uint64_t sub_100830FB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_10082EC08(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100831080(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100032ECC;

  return sub_10082BC8C(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_100831154()
{
  result = qword_100AF4320;
  if (!qword_100AF4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4320);
  }

  return result;
}

unint64_t sub_1008311A8()
{
  result = qword_100AF4328;
  if (!qword_100AF4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4328);
  }

  return result;
}

uint64_t sub_10083121C(uint64_t a1, uint64_t a2, void **a3)
{
  sub_1000F24EC(&qword_100AF4358);
  sub_1000F24EC(&qword_100AF4350);

  return sub_10082AD74(a1, a2, a3);
}

uint64_t sub_100831364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AEED20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008313D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100831424(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_100831444(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = OBJC_IVAR____TtC7Journal23ZoomSliderBarButtonItem_slider;
  type metadata accessor for ZoomSliderBarButtonItem.Slider();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24.receiver = v1;
  v24.super_class = type metadata accessor for ZoomSliderBarButtonItem();
  v5 = objc_msgSendSuper2(&v24, "init");
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = String._bridgeToObjectiveC()();

  [v5 setTitle:v6];

  v7 = v5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v8 = String._bridgeToObjectiveC()();

  [v7 setAccessibilityLabel:v8];

  v9 = OBJC_IVAR____TtC7Journal23ZoomSliderBarButtonItem_slider;
  [v7 setCustomView:*&v7[OBJC_IVAR____TtC7Journal23ZoomSliderBarButtonItem_slider]];

  [*&v7[v9] setPreferredBehavioralStyle:1];
  [*&v7[v9] _setMonochromaticTreatment:1];
  [*&v7[v9] _setEnableMonochromaticTreatment:1];
  v10 = *&v7[v9];
  v11 = String._bridgeToObjectiveC()();
  v12 = objc_opt_self();
  v13 = [v12 systemImageNamed:v11];

  if (v13)
  {
    v14 = [objc_opt_self() secondaryLabelColor];
    v15 = [v13 imageWithTintColor:v14 renderingMode:1];
  }

  else
  {
    v15 = 0;
  }

  [v10 setMinimumValueImage:{v15, a1}];

  v16 = *&v7[v9];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v12 systemImageNamed:v17];

  if (v18)
  {
    v19 = [objc_opt_self() secondaryLabelColor];
    v20 = [v18 imageWithTintColor:v19 renderingMode:1];
  }

  else
  {
    v20 = 0;
  }

  [v16 setMaximumValueImage:v20];

  [*&v7[v9] addAction:v23 forControlEvents:0x2000];
  return v7;
}

double sub_100831910(void *a1, double a2, uint64_t a3, const char **a4)
{
  v6 = sub_10007BDFC(a2);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v18.receiver = a1;
  v18.super_class = type metadata accessor for ZoomSliderBarButtonItem.Slider();
  v13 = *a4;
  v14 = a1;
  objc_msgSendSuper2(&v18, v13, v6, v8, v10, v12);
  v16 = v15;

  return v16;
}

id sub_100831BE0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_100831C70(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, float a5)
{
  [v5 maximumValue];
  v12 = v11;
  [v5 minimumValue];
  v13 = 0.0;
  if (v14 < v12)
  {
    [v5 minimumValue];
    v16 = a5 - v15;
    [v5 maximumValue];
    v18 = v17;
    [v5 minimumValue];
    v13 = v16 / (v18 - v19);
  }

  if ([v5 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v13 = 1.0 - v13;
  }

  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  MinX = CGRectGetMinX(v26);
  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  Width = CGRectGetWidth(v27);
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = 20.0;
  v28.size.height = 16.0;
  v22 = MinX + (Width - CGRectGetWidth(v28)) * v13;
  v23 = [v5 isTracking];
  v24 = round(v22);
  if (!v23)
  {
    v22 = v24;
  }

  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  CGRectGetMinY(v29);
  v30.origin.x = a1;
  v30.origin.y = a2;
  v30.size.width = a3;
  v30.size.height = a4;
  CGRectGetHeight(v30);
  v31.origin.y = 0.0;
  v31.size.width = 20.0;
  v31.size.height = 16.0;
  v31.origin.x = v22;
  CGRectGetHeight(v31);
  return v22;
}

void sub_100831E20(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_100846A98, v8);
}

Swift::Int sub_100831EF4(unsigned __int8 a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (a3)
  {
    if (a3 == 1)
    {
      Hasher._combine(_:)(2uLL);
      v6 = a1;
    }

    else
    {
      v6 = 0;
    }

    Hasher._combine(_:)(v6);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    if (a2)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  return Hasher._finalize()();
}

uint64_t sub_100831FAC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  return v1;
}

void sub_10083203C()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      Hasher._combine(_:)(2uLL);
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    Hasher._combine(_:)(v2);
  }

  else
  {
    v3 = v0[1];
    Hasher._combine(_:)(1uLL);
    if (v3)
    {
      Hasher._combine(_:)(1u);

      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }
}

Swift::Int sub_1008320E4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3)
  {
    if (v3 == 1)
    {
      Hasher._combine(_:)(2uLL);
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    if (v2)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  return Hasher._finalize()();
}

uint64_t sub_1008321B0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PhotoLibraryAssetMetadata();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v7 - 8);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v42 = &v40 - v10;
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  v14 = *(v1 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry);
  if (!v14)
  {
    v37 = 1;
    goto LABEL_30;
  }

  v15 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v46 = *(v14 + v15);
  v40 = a1;
  if (v46 >> 62)
  {
LABEL_33:
    v16 = v46 & 0xFFFFFFFFFFFFFF8;
    v45 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = v46 & 0xFFFFFFFFFFFFFF8;
    v45 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v46 & 0xC000000000000001;
  v17 = (v4 + 48);
  v18 = (v4 + 16);
  v19 = (v4 + 8);

  v20 = 0;
  v43 = v16;
  while (1)
  {
    if (v45 == v20)
    {

      v37 = 1;
      a1 = v40;
      goto LABEL_30;
    }

    if (v44)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v20 >= *(v16 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v21 = *(v46 + 8 * v20 + 32);
    }

    v4 = v21;
    type metadata accessor for LivePhotoAsset();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      if (!*(v22 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata))
      {
        goto LABEL_29;
      }

      v23 = v4;

      sub_100046ADC(v13);

      v24 = v13;
      if ((*v17)(v13, 1, v3))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    type metadata accessor for VideoAsset();
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      if (!*(v25 + OBJC_IVAR____TtC7Journal10VideoAsset_metadata))
      {
        goto LABEL_29;
      }

      v26 = v4;

      v27 = v13;
      v28 = v42;
      sub_100046ADC(v42);

      v29 = (*v17)(v28, 1, v3);
      v24 = v28;
      v13 = v27;
      v16 = v43;
      if (v29)
      {
        v13 = v42;
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    type metadata accessor for PhotoAsset();
    v30 = swift_dynamicCastClass();
    if (!v30 || !*(v30 + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata))
    {
      goto LABEL_29;
    }

    v31 = v4;

    v32 = v41;
    sub_100046ADC(v41);

    v33 = (*v17)(v32, 1, v3);
    v24 = v32;
    v16 = v43;
    if (v33)
    {
      break;
    }

LABEL_20:
    (*v18)(v6, v24, v3);
    sub_100004F84(v24, &qword_100AD5B20);
    PhotoLibraryAssetMetadata.assetIdentifier.getter();
    v35 = v34;

    (*v19)(v6, v3);
    if (!v35)
    {
      goto LABEL_29;
    }

    if (__OFADD__(v20++, 1))
    {
      goto LABEL_32;
    }
  }

  v13 = v41;
LABEL_28:

  sub_100004F84(v13, &qword_100AD5B20);
LABEL_29:

  a1 = v40;
  IndexPath.init(row:section:)();
  v37 = 0;
LABEL_30:
  v38 = type metadata accessor for IndexPath();
  return (*(*(v38 - 8) + 56))(a1, v37, 1, v38);
}

void sub_100832738()
{
  v1 = v0;
  v2 = type metadata accessor for ColorResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CanvasLocationsController();
  v35.receiver = v0;
  v35.super_class = v6;
  objc_msgSendSuper2(&v35, "viewDidLoad");
  sub_100835464();
  sub_1008335A4();
  v7 = [v0 collectionView];
  if (v7)
  {
    v8 = v7;
    sub_1000F24EC(&unk_100AD4780);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100941D70;
    sub_1000065A8(0, &qword_100AD4C70);
    if (qword_100AD0D50 != -1)
    {
      swift_once();
    }

    v10 = sub_10000617C(v2, qword_100B31700);
    v11 = *(v3 + 16);
    v11(v5, v10, v2);
    *(v9 + 32) = UIColor.init(resource:)();
    if (qword_100AD0D48 != -1)
    {
      swift_once();
    }

    v12 = sub_10000617C(v2, qword_100B316E8);
    v11(v5, v12, v2);
    *(v9 + 40) = UIColor.init(resource:)();
    if (qword_100AD0D40 != -1)
    {
      swift_once();
    }

    v13 = sub_10000617C(v2, qword_100B316D0);
    v11(v5, v13, v2);
    *(v9 + 48) = UIColor.init(resource:)();
    static UnitPoint.top.getter();
    v15 = v14;
    v17 = v16;
    static UnitPoint.bottom.getter();
    v19 = v18;
    v21 = v20;
    v22 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = v9;
    v23 = v22;
    static UIView.Invalidating.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = 0;
    v24 = v23;
    static UIView.Invalidating.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = v15;
    v34 = v17;
    v25 = v24;
    static UIView.Invalidating.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = v19;
    v34 = v21;
    static UIView.Invalidating.subscript.setter();
    [v8 setBackgroundView:v25];

    v26 = [v1 collectionView];
    if (v26)
    {
      v27 = v26;
      v28 = [objc_opt_self() clearColor];
      [v27 setBackgroundColor:v28];

      sub_100832D54();
      v29 = objc_opt_self();
      v30 = [v29 keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"done"];
      [v1 addKeyCommand:v30];

      v31 = String._bridgeToObjectiveC()();
      v32 = [v29 keyCommandWithInput:v31 modifierFlags:0 action:"done"];

      [v1 addKeyCommand:v32];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100832D54()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v33 - v6;
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry;
  v12 = *&v0[OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry];
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
    if (v13)
    {
      v14 = v13;
      v15 = sub_10011A350();
      if (v15)
      {
        v16 = [v0 collectionView];
        if (v16)
        {
          v17 = v16;
          swift_getKeyPath();
          swift_getKeyPath();
          static UIViewController.ViewLoading.subscript.getter();

          v18 = v33;
          v33 = xmmword_1009520F0;
          v34 = 1;
          dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

          v19 = type metadata accessor for IndexPath();
          v20 = *(v19 - 8);
          isa = 0;
          if ((*(v20 + 48))(v10, 1, v19) != 1)
          {
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            (*(v20 + 8))(v10, v19);
          }

LABEL_16:
          [v17 selectItemAtIndexPath:isa animated:1 scrollPosition:0];

          return;
        }

        __break(1u);
      }

      else
      {
        v22 = *&v0[v11];
        if (v22)
        {
          v23 = *(v22 + OBJC_IVAR____TtC7Journal14EntryViewModel_hiddenAssets);
          *&v33 = v14;
          __chkstk_darwin(v15);
          *(&v33 - 2) = &v33;

          v24 = sub_10005B088(sub_100333A7C, (&v33 - 2), v23);

          if (v24)
          {
            v25 = [v1 collectionView];
            if (v25)
            {
              v17 = v25;
              swift_getKeyPath();
              swift_getKeyPath();
              static UIViewController.ViewLoading.subscript.getter();

              v26 = v33;
              v33 = 0uLL;
              v34 = 1;
              dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

              v27 = type metadata accessor for IndexPath();
              v28 = *(v27 - 8);
              isa = 0;
              if ((*(v28 + 48))(v7, 1, v27) != 1)
              {
                isa = IndexPath._bridgeToObjectiveC()().super.isa;
                (*(v28 + 8))(v7, v27);
              }

              goto LABEL_16;
            }

LABEL_20:
            __break(1u);
            return;
          }
        }

        v29 = [v1 collectionView];
        if (v29)
        {
          v17 = v29;
          swift_getKeyPath();
          swift_getKeyPath();
          static UIViewController.ViewLoading.subscript.getter();

          v30 = v33;
          v33 = xmmword_100955130;
          v34 = 1;
          dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

          v31 = type metadata accessor for IndexPath();
          v32 = *(v31 - 8);
          isa = 0;
          if ((*(v32 + 48))(v4, 1, v31) != 1)
          {
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            (*(v32 + 8))(v4, v31);
          }

          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_20;
    }
  }
}

void sub_100833238()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {

    v7 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v6 ^ 1;
  }

  v8 = [v0 navigationController];
  if (v8)
  {
    v17 = v8;
    v9 = v7 ^ [v8 isNavigationBarHidden];
    v10 = v17;
    if (v9)
    {
      v11 = v7 & 1;
      [v17 setNavigationBarHidden:v11 animated:1];
      v12 = OBJC_IVAR____TtC7Journal25CanvasLocationsController_mapSectionIsHidden;
      *(v0 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_mapSectionIsHidden) = v11;
      sub_100839A20();
      v13 = [v0 collectionView];
      if (!v13)
      {
        __break(1u);
        return;
      }

      v14 = v13;
      v15 = [v13 backgroundView];

      v10 = v17;
      if (v15)
      {
        v16 = 1.0;
        if (*(v0 + v12))
        {
          v16 = 0.0;
        }

        [v15 setAlpha:v16];

        v10 = v17;
      }
    }
  }
}

void sub_1008333D4()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for CanvasLocationsController();
  objc_msgSendSuper2(&v9, "viewWillLayoutSubviews");
  v1 = [v0 sheetPresentationController];
  v2 = [v1 selectedDetentIdentifier];

  if (v2)
  {
LABEL_2:
    sub_100833238();

    return;
  }

  v3 = [v0 sheetPresentationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 detents];

    sub_1000065A8(0, &qword_100AD85C0);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_7;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v7 = *(v6 + 32);
      }

      v8 = v7;

      v2 = [v8 identifier];

      goto LABEL_2;
    }
  }
}

void sub_1008335A4()
{
  v1 = v0;
  v28[0] = type metadata accessor for UIButton.Configuration();
  v2 = *(v28[0] - 8);
  __chkstk_darwin(v28[0]);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v28 - v6;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = [v0 navigationItem];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11 = String._bridgeToObjectiveC()();

  [v10 setTitle:v11];

  v12 = [v0 traitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 5)
  {
    sub_1000F24EC(&unk_100AD4780);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100941D70;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    static UIButton.Configuration.bordered()();

    UIButton.Configuration.title.setter();
    sub_1000065A8(0, &qword_100ADFC10);
    v15 = v28[0];
    (*(v2 + 16))(v4, v7, v28[0]);
    v16 = UIButton.init(configuration:primaryAction:)();
    [v16 setRole:0];
    [v16 addTarget:v1 action:"addLocation" forControlEvents:0x2000];
    v17 = v16;
    v18 = [v17 widthAnchor];
    v19 = [v18 constraintGreaterThanOrEqualToConstant:72.0];

    [v19 setActive:1];
    _s21MacBorderedCustomViewCMa();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100941D50;
    *(v20 + 32) = v17;
    v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_1000065A8(0, &qword_100ADC670);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v23 = [v21 initWithArrangedSubviews:isa];

    v24 = v23;
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v24 setAlignment:3];
    v25 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v24];

    [v25 _setPrefersNoPlatter:1];

    (*(v2 + 8))(v7, v15);
    *(v14 + 32) = v25;
    *(v14 + 40) = [objc_opt_self() flexibleSpaceItem];
    *(v14 + 48) = sub_10036032C(v1, "done");
    sub_1000065A8(0, &qword_100AD43B0);
    v26.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setToolbarItems:v26.super.isa];
  }

  else
  {
    v27 = [v0 navigationItem];
    v26.super.isa = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v0 action:"done"];
    [v27 setRightBarButtonItem:v26.super.isa];
  }
}

id sub_100833B6C()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v8[4] = sub_100846AB0;
  v8[5] = v0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100029CCC;
  v8[3] = &unk_100A82AB0;
  v2 = _Block_copy(v8);

  v3 = [v1 initWithSectionProvider:v2];
  _Block_release(v2);

  type metadata accessor for RoundedBackgroundView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = String._bridgeToObjectiveC()();
  [v5 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

  return v5;
}

id sub_100833CC8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UICollectionLayoutListConfiguration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v12 = Strong;
  v49 = a2;
  *&v50 = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v13 = v51;
  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

  if (v51 == 2 || (v51 & 1) != 0)
  {
    v14 = objc_opt_self();
    v15 = [v14 fractionalWidthDimension:0.33];
    v16 = [v14 estimatedDimension:100.0];
    v17 = objc_opt_self();
    v18 = [v17 sizeWithWidthDimension:v15 heightDimension:v16];
    v49 = v18;

    v19 = [objc_opt_self() itemWithLayoutSize:v18];
    v20 = [v14 fractionalWidthDimension:1.0];
    v21 = [v14 estimatedDimension:1.0];
    v22 = [v17 sizeWithWidthDimension:v20 heightDimension:v21];
    v47 = v22;

    v23 = objc_opt_self();
    sub_1000F24EC(&unk_100AD4780);
    v24 = swift_allocObject();
    v50 = xmmword_100941D50;
    *(v24 + 16) = xmmword_100941D50;
    *(v24 + 32) = v19;
    sub_1000065A8(0, &unk_100AD8A80);
    v48 = v19;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v26 = [v23 horizontalGroupWithLayoutSize:v22 subitems:isa];

    v27 = [objc_opt_self() sectionWithGroup:v26];
    [v27 contentInsets];
    [v27 setContentInsets:?];
    [v27 contentInsets];
    [v27 setContentInsets:?];
    [v27 contentInsets];
    [v27 setContentInsets:?];
    v28 = [v14 fractionalWidthDimension:1.0];
    v29 = [v14 estimatedDimension:30.0];
    v30 = [v17 sizeWithWidthDimension:v28 heightDimension:v29];

    v31 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v30 elementKind:UICollectionElementKindSectionHeader alignment:2];
    [v31 contentInsets];
    [v31 setContentInsets:?];

    v32 = swift_allocObject();
    *(v32 + 16) = v50;
    *(v32 + 32) = v31;
    sub_1000065A8(0, &unk_100ADE680);
    v33 = v31;
    v34 = Array._bridgeToObjectiveC()().super.isa;

    [v27 setBoundarySupplementaryItems:v34];

    v35 = objc_opt_self();
    v36 = String._bridgeToObjectiveC()();
    v37 = [v35 backgroundDecorationItemWithElementKind:v36];

    v38 = swift_allocObject();
    *(v38 + 16) = v50;
    *(v38 + 32) = v37;
    sub_1000065A8(0, &qword_100AF44A0);
    v39 = v37;
    v40 = Array._bridgeToObjectiveC()().super.isa;

    [v27 setDecorationItems:v40];

    [v27 _setClipsBackgroundDecorationsToContent:1];
    [v27 _setClipsContentToBounds:1];
    [v27 _setExcludesBoundarySupplementariesFromClipping:1];
  }

  else
  {
    (*(v4 + 104))(v6, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v3);
    UICollectionLayoutListConfiguration.init(appearance:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = v12;
    UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
    v42 = [objc_opt_self() clearColor];
    UICollectionLayoutListConfiguration.backgroundColor.setter();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
    sub_1000065A8(0, &unk_100AD4440);
    v43 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
    v27 = v43;
    if (*(v41 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_mapSectionIsHidden))
    {
      v44 = 35.0;
    }

    else
    {
      v44 = 6.0;
    }

    [v43 contentInsets];
    [v27 setContentInsets:v44];

    (*(v50 + 8))(v10, v7);
  }

  return v27;
}

uint64_t sub_1008344EC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (sub_100834738())
    {
      sub_1000065A8(0, &qword_100AD4E28);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v3 = [objc_opt_self() configurationWithActions:isa];

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_1008345C4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIListSeparatorConfiguration();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  if (!IndexPath.item.getter())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong[OBJC_IVAR____TtC7Journal25CanvasLocationsController_mapSectionIsHidden];

      if ((v10 & 1) == 0)
      {
        (*(v5 + 104))(v7, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v4);
        UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
      }
    }
  }
}

uint64_t sub_100834738()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v71 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v70 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AEED20);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - v6;
  v8 = type metadata accessor for VisitAssetMetadata();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v69 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v0;
  static UIViewController.ViewLoading.subscript.getter();

  v15 = aBlock;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if (v74 == 255)
  {
    return 0;
  }

  v17 = aBlock;
  v16 = v73;
  if (v74)
  {
    sub_100845F84(aBlock, v73, v74);
    return 0;
  }

  v18 = *(v14 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry);
  if (!v18 || (v19 = *(v18 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset)) == 0)
  {
    sub_100845F84(aBlock, v73, 0);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_9;
  }

  v20 = v19;
  sub_10011B7A0(v17, v16, v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100845F84(v17, v16, 0);
LABEL_9:
    sub_100004F84(v7, &unk_100AEED20);
    return 0;
  }

  v68 = *(v9 + 32);
  v61 = v13;
  v68(v13, v7, v8);
  v53 = v9 + 32;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v63 = String.init(localized:table:bundle:locale:comment:)();
  v57 = v16;
  v22 = swift_allocObject();
  v67 = v14;
  swift_unknownObjectWeakInit();
  v65 = *(v9 + 16);
  v66 = v9 + 16;
  v23 = v69;
  v65(v69, v13, v8);
  v64 = *(v9 + 80);
  v24 = (v64 + 24) & ~v64;
  v59 = v24;
  v25 = swift_allocObject();
  v58 = v8;
  v56 = v9;
  v26 = v25;
  *(v25 + 16) = v22;
  v68((v25 + v24), v23, v8);

  v27 = String._bridgeToObjectiveC()();

  v76 = sub_1008467DC;
  v77 = v26;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v60 = &v74;
  v74 = sub_100831E20;
  v75 = &unk_100A82998;
  v28 = _Block_copy(&aBlock);
  v63 = objc_opt_self();
  v29 = [v63 contextualActionWithStyle:0 title:v27 handler:v28];
  v55 = v29;

  _Block_release(v28);

  v30 = String._bridgeToObjectiveC()();
  v62 = objc_opt_self();
  v31 = [v62 systemImageNamed:v30];

  [v29 setImage:v31];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = v61;
  v34 = v58;
  v65(v23, v61, v58);
  v35 = v59;
  v36 = swift_allocObject();
  *(v36 + 16) = v32;
  v68((v36 + v35), v23, v34);

  v37 = String._bridgeToObjectiveC()();

  v76 = sub_1008467F4;
  v77 = v36;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_100831E20;
  v75 = &unk_100A829E8;
  v38 = _Block_copy(&aBlock);
  v39 = [v63 contextualActionWithStyle:1 title:v37 handler:v38];
  v54 = v39;

  _Block_release(v38);

  v40 = String._bridgeToObjectiveC()();
  v41 = [v62 systemImageNamed:v40];

  [v39 setImage:v41];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v58;
  v65(v23, v33, v58);
  v44 = v59;
  v45 = swift_allocObject();
  *(v45 + 16) = v42;
  v68((v45 + v44), v23, v43);

  v46 = String._bridgeToObjectiveC()();

  v76 = sub_10084680C;
  v77 = v45;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_100831E20;
  v75 = &unk_100A82A38;
  v47 = _Block_copy(&aBlock);
  v48 = [v63 contextualActionWithStyle:0 title:v46 handler:v47];

  _Block_release(v47);

  v49 = String._bridgeToObjectiveC()();
  v50 = [v62 systemImageNamed:v49];

  [v48 setImage:v50];
  sub_1000F24EC(&unk_100AD4780);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_100941D70;
  v52 = v55;
  *(v51 + 32) = v54;
  *(v51 + 40) = v52;
  *(v51 + 48) = v48;
  sub_100845F84(v17, v57, 0);
  (*(v56 + 8))(v61, v43);
  return v51;
}

void sub_100835184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1008391C0(a6);
  }
}

void sub_1008351E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = type metadata accessor for VisitAssetMetadata();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    (*(v8 + 16))(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v7);
    type metadata accessor for MainActor();
    v17 = v15;
    v18 = static MainActor.shared.getter();
    v19 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v20 = swift_allocObject();
    *(v20 + 2) = v18;
    *(v20 + 3) = &protocol witness table for MainActor;
    *(v20 + 4) = v17;
    (*(v8 + 32))(&v20[v19], v10, v7);
    sub_1003E9628(0, 0, v13, &unk_10096DA60, v20);
  }
}

void sub_100835408()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100844DA0();
  }
}

id sub_100835464()
{
  v1 = sub_1000F24EC(&qword_100ADE610);
  v61 = *(v1 - 8);
  v62 = v1;
  __chkstk_darwin(v1);
  v59 = v2;
  v60 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v76 = &v53 - v4;
  v5 = sub_1000F24EC(&qword_100AF4488);
  v74 = *(v5 - 8);
  v75 = v5;
  __chkstk_darwin(v5);
  v67 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v6;
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  v58 = sub_1000F24EC(&qword_100AF4490);
  v73 = *(v58 - 8);
  __chkstk_darwin(v58);
  v66 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v65 = &v53 - v12;
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v54 = v16;
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  v20 = sub_1000F24EC(&qword_100AF4498);
  v69 = *(v20 - 8);
  v70 = v20;
  __chkstk_darwin(v20);
  v64 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v21;
  __chkstk_darwin(v22);
  v24 = &v53 - v23;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CanvasLocationsMapCell();
  v68 = v24;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewPickerCell();
  v71 = v19;
  UICollectionView.CellRegistration.init(handler:)();
  v72 = v15;
  UICollectionView.CellRegistration.init(handler:)();
  sub_1000065A8(0, &qword_100ADE560);
  v63 = v9;
  UICollectionView.CellRegistration.init(handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000065A8(0, &qword_100AD4D40);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v57 = v0;
  result = [v0 collectionView];
  v53 = result;
  if (result)
  {
    v26 = v69;
    v27 = v70;
    (*(v69 + 16))(v64, v68, v70);
    v28 = v73;
    v29 = *(v73 + 16);
    v30 = v58;
    v29(v65, v72, v58);
    v29(v66, v71, v30);
    v31 = v74;
    (*(v74 + 16))(v67, v63, v75);
    v32 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v33 = *(v28 + 80);
    v34 = (v55 + v33 + v32) & ~v33;
    v35 = (v54 + v33 + v34) & ~v33;
    v36 = (v54 + *(v31 + 80) + v35) & ~*(v31 + 80);
    v37 = swift_allocObject();
    (*(v26 + 32))(v37 + v32, v64, v27);
    v38 = *(v28 + 32);
    v38(v37 + v34, v65, v30);
    v39 = v30;
    v38(v37 + v35, v66, v30);
    v40 = *(v31 + 32);
    v41 = v75;
    v40(v37 + v36, v67, v75);
    v42 = objc_allocWithZone(sub_1000F24EC(&qword_100AF4438));
    v43 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v77 = v43;
    v44 = v57;
    static UIViewController.ViewLoading.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v46 = v76;
    v45 = v77;
    v48 = v60;
    v47 = v61;
    v49 = v62;
    (*(v61 + 16))(v60, v76, v62);
    v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v51 = swift_allocObject();
    (*(v47 + 32))(v51 + v50, v48, v49);
    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

    sub_100839DEC();
    (*(v47 + 8))(v46, v49);
    (*(v74 + 8))(v63, v41);
    v52 = *(v73 + 8);
    v52(v72, v39);
    v52(v71, v39);
    return (*(v69 + 8))(v68, v70);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100835CC4(char *a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry);
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
      v8 = v7;
    }

    else
    {
      v7 = 0;
    }

    v9 = *&a1[OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_multiPinMapAsset];
    *&a1[OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_multiPinMapAsset] = v7;
    v10 = v7;

    sub_1007A553C();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v11 = String._bridgeToObjectiveC()();

    [a1 setAccessibilityLabel:v11];

    v12 = UIAccessibilityTraitButton;
    v13 = [a1 accessibilityTraits];
    v14 = -1;
    if ((v13 & v12) != 0)
    {
      v14 = ~v12;
    }

    [a1 setAccessibilityTraits:v14 & v13];
  }
}

void sub_100835EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v145 = a1;
  v4 = sub_1000F24EC(&unk_100ADFBE0);
  __chkstk_darwin(v4 - 8);
  v141 = &v125 - v5;
  v137 = type metadata accessor for UICellAccessory.Placement();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v138 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v143 = *(v7 - 8);
  v144 = v7;
  __chkstk_darwin(v7);
  v142 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  *&v135 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v134 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  v133 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for UIListContentConfiguration();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v16 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v17 - 8);
  v19 = &v125 - v18;
  v20 = type metadata accessor for MultiPinMapAssetMetadata();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for VisitAssetMetadata();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v125 - v29;
  __chkstk_darwin(v31);
  if (*(a3 + 16))
  {
    return;
  }

  v34 = *a3;
  v35 = *(a3 + 8);
  v131 = v34;
  v132 = v32;
  v130 = &v125 - v33;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!v35 || (v37 = *&Strong[OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry]) == 0 || (v38 = *(v37 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset)) == 0)
  {

    return;
  }

  if (!*&v38[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata])
  {

    (*(v21 + 56))(v19, 1, 1, v20);
    goto LABEL_12;
  }

  v125 = Strong;
  v129 = v38;

  sub_1000768B4(v19);

  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {

LABEL_12:
    sub_100004F84(v19, &unk_100AD5B30);
    return;
  }

  (*(v21 + 32))(v23, v19, v20);
  v39 = MultiPinMapAssetMetadata.visitsData.getter();
  (*(v21 + 8))(v23, v20);
  if (!v39)
  {

    goto LABEL_23;
  }

  v40 = v129;
  v126 = v39[2];
  if (!v126)
  {
LABEL_21:

LABEL_23:

    return;
  }

  v41 = 0;
  v128 = v39 + ((v25[80] + 32) & ~v25[80]);
  v42 = (v25 + 16);
  v127 = (v25 + 8);
  while (1)
  {
    if (v41 >= v39[2])
    {
      __break(1u);
      goto LABEL_81;
    }

    (*(v25 + 2))(v27, &v128[*(v25 + 9) * v41], v132);
    if (VisitAssetMetadata.id.getter() == v131 && v35 == v43)
    {

      goto LABEL_26;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v44)
    {
      break;
    }

    ++v41;
    (*v127)(v27, v132);
    v40 = v129;
    if (v126 == v41)
    {
      goto LABEL_21;
    }
  }

LABEL_26:
  v45 = *(v25 + 4);
  v46 = v132;
  v45(v30, v27, v132);
  v45(v130, v30, v46);
  v41 = v16;
  static UIListContentConfiguration.cell()();
  v47 = sub_100579A18();
  v48 = objc_opt_self();
  v49 = [v125 traitCollection];
  [v49 displayScale];
  v51 = v50;

  v52 = [v48 imageForStyle:v47 size:3 forScale:0 format:v51];
  if (!v52)
  {
    if (qword_100AD09D8 != -1)
    {
      swift_once();
    }

    v52 = qword_100B30EB0;
    if (qword_100B30EB0)
    {
      sub_1000F24EC(&unk_100AD4780);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_100941D60;
      *(v53 + 32) = [objc_opt_self() whiteColor];
      if (qword_100AD0360 != -1)
      {
        swift_once();
      }

      v54 = qword_100B30358;
      *(v53 + 40) = qword_100B30358;
      sub_1000065A8(0, &qword_100AD4C70);
      v55 = v54;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v57 = [objc_opt_self() configurationWithPaletteColors:isa];

      v52 = [v52 imageWithConfiguration:v57];
    }
  }

  v58 = v52;
  UIListContentConfiguration.image.setter();
  v59 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.maximumSize.setter();
  v59(v146, 0);
  v60 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle1];
  v61 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.setter();
  v61(v146, 0);
  VisitAssetMetadata.placeName.getter();
  if (!v62)
  {
LABEL_39:
    v66 = VisitAssetMetadata.latitude.getter();
    if (v67)
    {
      goto LABEL_41;
    }

    v68 = v66;
    v69 = VisitAssetMetadata.longitude.getter();
    if (v70)
    {
      goto LABEL_41;
    }

    v79 = v69;
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v80._countAndFlagsBits = 0;
    v80._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v80);
    v146[0] = v68;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v81._countAndFlagsBits = 0x202C4E20B0C2;
    v81._object = 0xA600000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v81);
    v146[0] = v79;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v82._countAndFlagsBits = 1461760194;
    v82._object = 0xA400000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v82);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    String.init(localized:defaultValue:table:bundle:locale:comment:)();
    goto LABEL_76;
  }

  v63 = VisitAssetMetadata.placeName.getter();
  if (v64)
  {
    if (!v63 && v64 == 0xE000000000000000)
    {

      goto LABEL_39;
    }

    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v65)
    {
      goto LABEL_39;
    }
  }

LABEL_41:
  v71 = VisitAssetMetadata.typeOfPlace.getter();
  if (!v72)
  {
    goto LABEL_58;
  }

  v42 = v71;
  v40 = v72;
  v131 = v58;
  v25 = v47;
  v73 = VisitAssetMetadata.placeName.getter();
  if (!v74)
  {
    v58 = v131;
    goto LABEL_57;
  }

  v75 = v73;
  v76 = v74;
  v77 = VisitAssetMetadata.city.getter();
  if (!v78)
  {
    goto LABEL_56;
  }

  v30 = v77;
  v39 = v78;
  if (v75 == v77 && v76 == v78 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || !v42 && v40 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || !v75 && v76 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

LABEL_56:

    v47 = v25;
    v58 = v131;
LABEL_57:

LABEL_58:
    VisitAssetMetadata.placeName.getter();
    if (!v83)
    {
      goto LABEL_65;
    }

    v84 = VisitAssetMetadata.typeOfPlace.getter();
    if (!v85)
    {
      goto LABEL_64;
    }

    if (!v84 && v85 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

LABEL_64:

LABEL_65:
      v86 = VisitAssetMetadata.placeName.getter();
      if (!v87)
      {
        goto LABEL_75;
      }

      v88 = v86;
      v89 = v87;
      v90 = VisitAssetMetadata.city.getter();
      if (!v91)
      {
        goto LABEL_74;
      }

      if (v92 = v90, v93 = v91, !v90) && v91 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v88 == v92 && v89 == v93 || (_stringCompareWithSmolCheck(_:_:expecting:)())
      {

LABEL_74:

LABEL_75:
        VisitAssetMetadata.placeName.getter();
        if (!v94)
        {
          goto LABEL_77;
        }
      }
    }

LABEL_76:
    UIListContentConfiguration.text.setter();
    UIListContentConfiguration.secondaryText.setter();
    goto LABEL_77;
  }

LABEL_81:
  UIListContentConfiguration.text.setter();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v120);
  v121._countAndFlagsBits = v42;
  v121._object = v40;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v121);

  v122._countAndFlagsBits = 548913696;
  v122._object = 0xA400000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v122);
  v123._countAndFlagsBits = v30;
  v123._object = v39;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v123);

  v124._countAndFlagsBits = 0;
  v124._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v124);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  String.init(localized:defaultValue:table:bundle:locale:comment:)();
  UIListContentConfiguration.secondaryText.setter();
  v47 = v25;
  v58 = v131;
LABEL_77:
  sub_1000F24EC(&unk_100ADFBF0);
  inited = swift_initStackObject();
  v135 = xmmword_100940080;
  *(inited + 16) = xmmword_100940080;
  *(inited + 32) = UIFontWeightSemibold;
  v96 = inited + 32;
  *(inited + 40) = 0;
  *(inited + 48) = 3;
  sub_100047788(UIFontTextStyleBody, inited, 0);
  swift_setDeallocating();
  sub_100047D60(v96);
  v97 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v97(v146, 0);
  v98 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v99 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v99(v146, 0);
  v100 = [objc_opt_self() secondaryLabelColor];
  v101 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v101(v146, 0);
  UIListContentConfiguration.imageToTextPadding.setter();
  v102 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *v103 = 0x4028000000000000;
  v102(v146, 0);
  v104 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *(v105 + 16) = 0x4028000000000000;
  v104(v146, 0);
  v106 = v130;
  v107 = v125;
  v108 = sub_100844FFC(v130);
  v109 = sub_1000F24EC(&qword_100AD4E00);
  v110 = v138;
  v111 = &v138[*(v109 + 48)];
  v112 = enum case for UICellAccessory.DisplayedState.always(_:);
  v113 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v113 - 8) + 104))(v110, v112, v113);
  *v111 = variable initialization expression of RecentSearch.tokens;
  v111[1] = 0;
  (*(v136 + 104))(v110, enum case for UICellAccessory.Placement.trailing(_:), v137);
  v114 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v114 - 8) + 56))(v141, 1, 1, v114);
  v115 = v108;
  v116 = v142;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  sub_1000F24EC(&unk_100AD4410);
  type metadata accessor for UICellAccessory();
  *(swift_allocObject() + 16) = v135;
  static UICellAccessory.customView(configuration:)();
  UICollectionViewListCell.accessories.setter();
  v117 = v140;
  v146[3] = v140;
  v146[4] = &protocol witness table for UIListContentConfiguration;
  v118 = sub_10001A770(v146);
  v119 = v139;
  (*(v139 + 16))(v118, v41, v117);
  UICollectionViewCell.contentConfiguration.setter();

  (*(v143 + 8))(v116, v144);
  (*(v119 + 8))(v41, v117);
  (*v127)(v106, v132);
}

void sub_100837274(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for UIListContentConfiguration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a3 + 16))
  {
    static UIListContentConfiguration.cell()();
    v11 = String._bridgeToObjectiveC()();
    v12 = [objc_opt_self() systemImageNamed:v11];

    UIListContentConfiguration.image.setter();
    v13 = objc_opt_self();
    v14 = [v13 tintColor];
    v15 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.tintColor.setter();
    v15(v22, 0);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    UIListContentConfiguration.text.setter();
    v16 = [v13 tintColor];
    v17 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v17(v22, 0);
    v22[3] = v7;
    v22[4] = &protocol witness table for UIListContentConfiguration;
    v18 = sub_10001A770(v22);
    (*(v8 + 16))(v18, v10, v7);
    UICollectionViewCell.contentConfiguration.setter();
    v19 = UIAccessibilityTraitButton;
    v20 = [a1 accessibilityTraits];
    if ((v19 & ~v20) != 0)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    [a1 setAccessibilityTraits:v21 | v20];
    (*(v8 + 8))(v10, v7);
  }
}

void sub_1008375A4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  if (*(a3 + 16) == 1)
  {
    v7 = objc_opt_self();
    v8 = [v7 secondaryLabelColor];
    v9 = [v7 secondaryLabelColor];
    v10 = [v7 clearColor];
    v11 = v10;
    v12 = v9;
    v13 = v8;
    v14 = String._bridgeToObjectiveC()();
    v15 = [objc_opt_self() systemImageNamed:v14];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v16 = String.init(localized:table:bundle:locale:comment:)();
    v18 = v17;
    if (v15)
    {
      v19 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleHeadline];
      v20 = [v15 imageByApplyingSymbolConfiguration:v19];
    }

    else
    {
      v20 = 0;
    }

    sub_100584418();
    v24 = swift_allocObject();
    v24[2] = v20;
    v24[3] = v16;
    v24[4] = v18;
    v24[5] = v8;
    v24[6] = v9;
    v24[7] = v10;
    v21 = v20;

    UICollectionViewCell.contentConfiguration.setter();
    v22 = [a1 contentView];
    v23 = String._bridgeToObjectiveC()();
    [v22 setAccessibilityLabel:v23];
  }
}

void sub_1008379FC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v8 = v16[0];
    IndexPath.section.getter();
    dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

    v9 = v17;
    if (v17 == 2)
    {
    }

    else
    {
      static UIListContentConfiguration.header()();
      if (v9)
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        UIListContentConfiguration.text.setter();
        v10 = [objc_opt_self() secondaryLabelColor];
        v11 = UIListContentConfiguration.textProperties.modify();
        UIListContentConfiguration.TextProperties.color.setter();
        v11(v16, 0);
        v12 = UIListContentConfiguration.directionalLayoutMargins.modify();
        *(v13 + 8) = 0;
        v12(v16, 0);
      }

      v16[3] = v2;
      v16[4] = &protocol witness table for UIListContentConfiguration;
      v14 = sub_10001A770(v16);
      (*(v3 + 16))(v14, v5, v2);
      UICollectionViewCell.contentConfiguration.setter();

      (*(v3 + 8))(v5, v2);
    }
  }
}

uint64_t sub_100837D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  v4 = *(a3 + 8);
  if (*(a3 + 16))
  {
    if (*(a3 + 16) == 1)
    {
      sub_1000065A8(0, &qword_100ADE560);
    }

    else
    {
      type metadata accessor for CanvasLocationsMapCell();
    }

    return UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  else
  {
    type metadata accessor for CollectionViewPickerCell();
    if (v4)
    {

      v5 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      v6 = v3;
      v7 = v4;
    }

    else
    {
      v5 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      v6 = v3;
      v7 = 0;
    }

    sub_100845F98(v6, v7, 0);
    return v5;
  }
}

void sub_100837E68()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100844DA0();
  }
}

void sub_100837EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1008391C0(a3);
  }
}

void sub_100837F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for VisitAssetMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    (*(v5 + 16))(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
    type metadata accessor for MainActor();
    v14 = v12;
    v15 = static MainActor.shared.getter();
    v16 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = v15;
    *(v17 + 3) = &protocol witness table for MainActor;
    *(v17 + 4) = v14;
    (*(v5 + 32))(&v17[v16], v7, v4);
    sub_1003E9628(0, 0, v10, &unk_10096DA38, v17);
  }
}

uint64_t sub_100838148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_1008381E4, v7, v6);
}

uint64_t sub_1008381E4()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry;
  v0[8] = OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry;
  v3 = *(v1 + v2);
  if (!v3 || (v4 = *(v3 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset), (v0[9] = v4) == 0))
  {

LABEL_8:
    v13 = v0[1];

    return v13();
  }

  v5 = v4;
  v6 = sub_1001B4A00();

  v7 = *(v6 + 16);

  if (v7 == 1)
  {
    v8 = *(v1 + v2);
    v0[10] = v8;
    if (v8)
    {
      v9 = v0[5];

      if (v9)
      {
        swift_getObjectType();
        v10 = dispatch thunk of Actor.unownedExecutor.getter();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      v0[11] = v10;
      v0[12] = v12;
      v23 = sub_10083846C;
      v24 = v10;
      goto LABEL_20;
    }

    sub_10083A1C8();
    sub_100839A20();
    if (sub_10011A350())
    {
      v19 = *(v0[2] + v0[8]);
      v0[21] = v19;
      if (v19)
      {

        v0[22] = static MainActor.shared.getter();
        v20 = dispatch thunk of Actor.unownedExecutor.getter();
        v22 = v21;
        v23 = sub_100839078;
        v24 = v20;
        v12 = v22;
LABEL_20:

        return _swift_task_switch(v23, v24, v12);
      }
    }

    v25 = v0[9];

    goto LABEL_8;
  }

  v15 = VisitAssetMetadata.id.getter();
  v17 = v16;
  v0[15] = v16;

  v18 = swift_task_alloc();
  v0[16] = v18;
  *v18 = v0;
  v18[1] = sub_1008388E0;

  return sub_1001B38D8(v15, v17);
}

uint64_t sub_10083846C()
{
  v1 = v0[9];
  v2 = v0[5];
  sub_1000F24EC(&unk_100AE1A40);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  (*(v4 + 16))(v6 + v5, v1 + OBJC_IVAR____TtC7Journal5Asset_id, v3);
  v7 = sub_1004960D4(v6);
  v0[13] = v7;
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_100838628;

  return sub_10056824C(v2, &protocol witness table for MainActor, v7);
}

uint64_t sub_100838628()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_10083876C, v3, v2);
}

uint64_t sub_10083876C()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_1008387DC, v1, v2);
}

uint64_t sub_1008387DC()
{
  sub_10083A1C8();
  sub_100839A20();
  if ((sub_10011A350() & 1) != 0 && (v1 = *(v0[2] + v0[8]), (v0[21] = v1) != 0))
  {

    v0[22] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100839078, v3, v2);
  }

  else
  {
    v4 = v0[9];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1008388E0()
{
  v1 = *v0;
  v2 = *(*v0 + 40);

  if (v2)
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v1 + 136) = v3;
  *(v1 + 144) = v5;

  return _swift_task_switch(sub_100838A2C, v3, v5);
}

uint64_t sub_100838A2C()
{
  v1 = v0[9];
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v4 = result;
    v5 = v0[5];
    v1;
    v6 = swift_task_alloc();
    v0[19] = v6;
    *v6 = v0;
    v6[1] = sub_100838B24;

    return sub_10078BBDC(v5, &protocol witness table for MainActor, ObjectType, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100838B24()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_100838C44, v3, v2);
}

uint64_t sub_100838C44()
{
  v1 = *(v0 + 40);

  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_100838D00;

  return (sub_1001DA5A8)(v1, &protocol witness table for MainActor);
}

uint64_t sub_100838D00()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_100838E20, v3, v2);
}

uint64_t sub_100838E20()
{
  if (qword_100ACFCB0 != -1)
  {
    swift_once();
  }

  sub_10044BE48(v0[9] + OBJC_IVAR____TtC7Journal5Asset_id);
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100ACFFA8 != -1)
  {
    swift_once();
  }

  v2 = qword_100B2FB98;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 postNotificationName:v2 object:isa];

  v4 = v0[6];
  v5 = v0[7];

  return _swift_task_switch(sub_100838F74, v4, v5);
}

uint64_t sub_100838F74()
{
  sub_1008396D0();
  sub_100839A20();
  if ((sub_10011A350() & 1) != 0 && (v1 = *(v0[2] + v0[8]), (v0[21] = v1) != 0))
  {

    v0[22] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100839078, v3, v2);
  }

  else
  {
    v4 = v0[9];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100839078()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[21];
  if (Strong)
  {
    v3 = *(v2 + 56);
    ObjectType = swift_getObjectType();
    v5 = sub_1004959AC(&off_100A5B338);
    (*(v3 + 8))(v2, v5, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v6 = v0[6];
  v7 = v0[7];

  return _swift_task_switch(sub_100839158, v6, v7);
}

uint64_t sub_100839158()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1008391C0(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AEED20);
  __chkstk_darwin(v2 - 8);
  v67 = &v53 - v3;
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  type metadata accessor for LocationPickerEditController();
  v66 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = VisitAssetMetadata.latitude.getter();
  v11 = 0.0;
  v12 = 0.0;
  if ((v13 & 1) == 0)
  {
    v14 = *&v10;
    v15 = COERCE_DOUBLE(VisitAssetMetadata.longitude.getter());
    if (v16)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v14;
    }

    if (v16)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v15;
    }
  }

  v17 = VisitAssetMetadata.id.getter();
  v62 = v18;
  v63 = v17;
  v19 = VisitAssetMetadata.placeName.getter();
  v60 = v20;
  v61 = v19;
  v21 = VisitAssetMetadata.city.getter();
  v56 = v22;
  v57 = v21;
  v23 = VisitAssetMetadata.typeOfPlace.getter();
  v58 = v24;
  v59 = v23;
  v25 = type metadata accessor for Date();
  v26 = *(*(v25 - 8) + 56);
  v26(v9, 1, 1, v25);
  v53 = a1;
  VisitAssetMetadata.createdDate.getter();
  v64 = sub_100579A18();
  v65 = type metadata accessor for StyledMKPointAnnotation();
  v27 = objc_allocWithZone(v65);
  v28 = &v27[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID];
  *v28 = 0;
  v28[1] = 0;
  v54 = v9;
  v29 = &v27[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_placeName];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v27[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_city];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v27[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_typeOfPlace];
  *v31 = 0;
  v31[1] = 0;
  v55 = v6;
  v32 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitStartTime;
  v26(&v27[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitStartTime], 1, 1, v25);
  v33 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_createdDate;
  v26(&v27[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_createdDate], 1, 1, v25);
  v34 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_styleAttributes;
  *&v27[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_styleAttributes] = 0;
  v35 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_entryIds;
  *&v27[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_entryIds] = 0;
  v36 = v62;
  *v28 = v63;
  v28[1] = v36;
  v37 = v60;
  *v29 = v61;
  v29[1] = v37;
  v38 = v56;
  *v30 = v57;
  v30[1] = v38;

  v39 = v58;
  *v31 = v59;
  v31[1] = v39;

  swift_beginAccess();
  v40 = v54;
  sub_100221D8C(v54, &v27[v32]);
  swift_endAccess();
  swift_beginAccess();
  v41 = v55;
  sub_100221D8C(v55, &v27[v33]);
  swift_endAccess();
  v42 = *&v27[v34];
  v43 = v64;
  *&v27[v34] = v64;
  v44 = v43;

  *&v27[v35] = _swiftEmptySetSingleton;

  v69.receiver = v27;
  v69.super_class = v65;
  v45 = objc_msgSendSuper2(&v69, "init");
  [v45 setCoordinate:{v11, v12}];

  sub_100004F84(v41, &unk_100AD4790);
  sub_100004F84(v40, &unk_100AD4790);
  v46 = v68;
  v47 = *&v68[OBJC_IVAR____TtC7Journal25CanvasLocationsController_currentSelectedAnnotation];
  *&v68[OBJC_IVAR____TtC7Journal25CanvasLocationsController_currentSelectedAnnotation] = v45;

  v48 = type metadata accessor for VisitAssetMetadata();
  v49 = *(v48 - 8);
  v50 = v67;
  (*(v49 + 16))(v67, v53, v48);
  (*(v49 + 56))(v50, 0, 1, v48);
  v51 = v66;
  sub_100825FCC(v50);
  *&v51[OBJC_IVAR____TtC7Journal28LocationPickerEditController_journalEntry] = *&v46[OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry];

  *&v51[OBJC_IVAR____TtC7Journal28LocationPickerEditController_pickerDelegate + 8] = &off_100A82560;
  swift_unknownObjectWeakAssign();
  v52 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v51];
  [v46 presentViewController:v52 animated:1 completion:0];
}

void sub_1008396D0()
{
  v1 = sub_1000F24EC(&qword_100AF4468);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  if ((*(v0 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_mapSectionIsHidden) & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v5 = v8;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    NSDiffableDataSourceSnapshot.reconfigureItems(_:)(&off_100A58950);
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v6 = v8;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_100839880()
{
  v0 = sub_1000F24EC(&qword_100AF4468);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v4 = v8;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  NSDiffableDataSourceSnapshot.reloadSections(_:)(&off_100A5B198);
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v5 = v8;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100839A20()
{
  v1 = v0;
  v38 = type metadata accessor for VisitAssetMetadata();
  v2 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AF4480);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  sub_1008462B0();
  NSDiffableDataSourceSectionSnapshot.init()();
  if ((*(v0 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_mapSectionIsHidden) & 1) == 0)
  {
    v39 = 0;
    v40 = 0;
    v41 = -1;
    NSDiffableDataSourceSectionSnapshot.append(_:to:)();
  }

  v9 = *(v0 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry);
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
    if (v10)
    {
      v11 = v10;
      v12 = sub_1001B4A00();

      v13 = *(v12 + 16);
      if (v13)
      {
        v31 = v8;
        v32 = v6;
        v33 = v5;
        v34 = v1;
        v39 = _swiftEmptyArrayStorage;
        sub_100199E14(0, v13, 0);
        v14 = v39;
        v16 = *(v2 + 16);
        v15 = v2 + 16;
        v17 = *(v15 + 64);
        v30 = v12;
        v18 = v12 + ((v17 + 32) & ~v17);
        v35 = *(v15 + 56);
        v36 = v16;
        v37 = v15;
        v19 = (v15 - 8);
        do
        {
          v20 = v38;
          v36(v4, v18, v38);
          v21 = VisitAssetMetadata.id.getter();
          v23 = v22;
          (*v19)(v4, v20);
          v39 = v14;
          v25 = *(v14 + 2);
          v24 = *(v14 + 3);
          if (v25 >= v24 >> 1)
          {
            sub_100199E14((v24 > 1), v25 + 1, 1);
            v14 = v39;
          }

          *(v14 + 2) = v25 + 1;
          v26 = &v14[3 * v25];
          *(v26 + 4) = v21;
          *(v26 + 5) = v23;
          *(v26 + 48) = 0;
          v18 += v35;
          --v13;
        }

        while (v13);

        v5 = v33;
        v1 = v34;
        v8 = v31;
        v6 = v32;
      }

      else
      {
      }
    }
  }

  v39 = 0;
  v40 = 0;
  v41 = -1;
  NSDiffableDataSourceSectionSnapshot.append(_:to:)();

  v39 = 0;
  v40 = 0;
  v41 = -1;
  NSDiffableDataSourceSectionSnapshot.append(_:to:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v27 = v39;
  LOBYTE(v39) = 0;
  UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

  v28 = *(v1 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_currentSelectedAnnotation);
  *(v1 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_currentSelectedAnnotation) = 0;

  sub_10083A1C8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100839DEC()
{
  v1 = v0;
  v37 = type metadata accessor for VisitAssetMetadata();
  v2 = *(v37 - 8);
  __chkstk_darwin(v37);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AF4468);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  sub_10084625C();
  sub_1008462B0();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A5B238);
  if ((*(v0 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_mapSectionIsHidden) & 1) == 0)
  {
    LOBYTE(v38) = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  }

  v9 = *(v0 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry);
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
    if (v10)
    {
      v11 = v10;
      v12 = sub_1001B4A00();

      v13 = *(v12 + 16);
      if (v13)
      {
        v30 = v8;
        v31 = v6;
        v32 = v5;
        v33 = v1;
        v38 = _swiftEmptyArrayStorage;
        sub_100199E14(0, v13, 0);
        v14 = v38;
        v15 = v2 + 16;
        v16 = *(v2 + 16);
        v17 = *(v2 + 80);
        v29 = v12;
        v18 = v12 + ((v17 + 32) & ~v17);
        v34 = *(v15 + 56);
        v35 = v16;
        v36 = v15;
        v19 = (v15 - 8);
        do
        {
          v20 = v37;
          v35(v4, v18, v37);
          v21 = VisitAssetMetadata.id.getter();
          v23 = v22;
          (*v19)(v4, v20);
          v38 = v14;
          v25 = *(v14 + 2);
          v24 = *(v14 + 3);
          if (v25 >= v24 >> 1)
          {
            sub_100199E14((v24 > 1), v25 + 1, 1);
            v14 = v38;
          }

          *(v14 + 2) = v25 + 1;
          v26 = &v14[3 * v25];
          *(v26 + 4) = v21;
          *(v26 + 5) = v23;
          *(v26 + 48) = 0;
          v18 += v34;
          --v13;
        }

        while (v13);

        v5 = v32;
        v8 = v30;
        v6 = v31;
      }

      else
      {
      }
    }
  }

  LOBYTE(v38) = 0;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  LOBYTE(v38) = 0;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  LOBYTE(v38) = 1;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v27 = v38;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  return (*(v6 + 8))(v8, v5);
}

void sub_10083A1C8()
{
  v1 = OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry;
  v2 = *&v0[OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry];
  if (v2 && (v3 = *(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset)) != 0 && (v4 = v3, v5 = v0, v6 = sub_1001B4A00(), v4, v7 = *(v6 + 16), , v7))
  {
    v8 = *&v0[v1];
    if (v8)
    {
      v9 = *(v8 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
      if (v9)
      {
        v10 = v9;
        v11 = sub_1001B4A00();

        v12 = *(v11 + 16);

        if (v12)
        {
          v13 = objc_opt_self();
          v14 = swift_allocObject();
          *(v14 + 16) = v5;
          v17[4] = sub_100846220;
          v17[5] = v14;
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 1107296256;
          v17[2] = sub_100006C7C;
          v17[3] = &unk_100A827E0;
          v15 = _Block_copy(v17);
          v16 = v5;

          [v13 animateWithDuration:0 delay:v15 options:0 animations:0.44 completion:0.0];
          _Block_release(v15);
        }
      }
    }
  }

  else
  {

    sub_10083A380();
  }
}

uint64_t sub_10083A380()
{
  v0 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v50 = *(v0 - 8);
  v51 = v0;
  __chkstk_darwin(v0);
  v49 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for ColorResource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIContentUnavailableConfiguration();
  v52 = swift_allocBox();
  static UIContentUnavailableConfiguration.empty()();
  sub_1000F24EC(&unk_100AD4780);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100941D70;
  sub_1000065A8(0, &qword_100AD4C70);
  if (qword_100AD0D50 != -1)
  {
    swift_once();
  }

  v10 = sub_10000617C(v5, qword_100B31700);
  v11 = *(v6 + 16);
  v11(v8, v10, v5);
  *(v9 + 32) = UIColor.init(resource:)();
  if (qword_100AD0D48 != -1)
  {
    swift_once();
  }

  v12 = sub_10000617C(v5, qword_100B316E8);
  v11(v8, v12, v5);
  *(v9 + 40) = UIColor.init(resource:)();
  if (qword_100AD0D40 != -1)
  {
    swift_once();
  }

  v13 = sub_10000617C(v5, qword_100B316D0);
  v11(v8, v13, v5);
  *(v9 + 48) = UIColor.init(resource:)();
  static UnitPoint.top.getter();
  v15 = v14;
  v17 = v16;
  static UnitPoint.bottom.getter();
  v19 = v18;
  v21 = v20;
  v22 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v9;
  v23 = v22;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 0;
  v24 = v23;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v15;
  v55 = v17;
  v25 = v24;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v19;
  v55 = v21;
  static UIView.Invalidating.subscript.setter();
  v26 = UIContentUnavailableConfiguration.background.modify();
  UIBackgroundConfiguration.customView.setter();
  v26(&aBlock, 0);
  v27 = String._bridgeToObjectiveC()();
  v28 = objc_opt_self();
  v29 = [v28 systemImageNamed:v27];

  UIContentUnavailableConfiguration.image.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIContentUnavailableConfiguration.text.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIContentUnavailableConfiguration.secondaryText.setter();
  v30 = v53;
  v31 = [v53 traitCollection];
  v32 = [v31 userInterfaceIdiom];

  if (v32 != 5)
  {
    static UIButton.Configuration.tinted()();
    UIContentUnavailableConfiguration.button.setter();
    (*(v50 + 104))(v49, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v51);
    v33 = UIContentUnavailableConfiguration.button.modify();
    UIButton.Configuration.cornerStyle.setter();
    v33(&aBlock, 0);
    v34 = String._bridgeToObjectiveC()();
    v35 = [v28 systemImageNamed:v34];

    v36 = UIContentUnavailableConfiguration.button.modify();
    UIButton.Configuration.image.setter();
    v36(&aBlock, 0);
    v37 = UIContentUnavailableConfiguration.button.modify();
    UIButton.Configuration.imagePadding.setter();
    v37(&aBlock, 0);
    v38 = [objc_opt_self() configurationWithScale:2];
    v39 = UIContentUnavailableConfiguration.button.modify();
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    v39(&aBlock, 0);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v40 = UIContentUnavailableConfiguration.button.modify();
    UIButton.Configuration.title.setter();
    v40(&aBlock, 0);
    v41 = UIContentUnavailableConfiguration.buttonProperties.modify();
    UIContentUnavailableConfiguration.ButtonProperties.role.setter();
    v41(&aBlock, 0);
    sub_1000065A8(0, &qword_100AD4420);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v42 = UIContentUnavailableConfiguration.buttonProperties.modify();
    UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
    v42(&aBlock, 0);
  }

  v43 = objc_opt_self();
  v44 = swift_allocObject();
  v45 = v52;
  *(v44 + 16) = v30;
  *(v44 + 24) = v45;
  v58 = sub_10079A47C;
  v59 = v44;
  aBlock = _NSConcreteStackBlock;
  v55 = 1107296256;
  v56 = sub_100006C7C;
  v57 = &unk_100A82790;
  v46 = _Block_copy(&aBlock);
  v47 = v30;

  [v43 animateWithDuration:0 delay:v46 options:0 animations:0.44 completion:0.0];
  _Block_release(v46);
}

void sub_10083AD90()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for LocationPickerCollectionViewController(0);
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    *&v2[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_pickerDelegate + 8] = &off_100A82570;
    swift_unknownObjectWeakAssign();
    *&v2[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_journalEntry] = *&v1[OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry];
    swift_retain_n();

    sub_1006E4EB4();

    v3 = *&v1[OBJC_IVAR____TtC7Journal25CanvasLocationsController_locationPickerController];
    *&v1[OBJC_IVAR____TtC7Journal25CanvasLocationsController_locationPickerController] = v2;
    v4 = v2;

    v5 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v4];
    [v1 presentViewController:v5 animated:1 completion:0];
  }
}

void sub_10083AECC(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v36 = a1;
  v38 = sub_1000F24EC(&qword_100AE3BA8);
  v41 = *(v38 - 8);
  v40 = *(v41 + 64);
  __chkstk_darwin(v38);
  v4 = &v31 - v3;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  type metadata accessor for JurassicAlertController();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  v37 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v9 = v41;
  v10 = *(v41 + 16);
  v34 = v41 + 16;
  v35 = v10;
  v11 = a1;
  v12 = v38;
  v10(v4, v11, v38);
  v33 = *(v9 + 80);
  v13 = (v33 + 16) & ~v33;
  v31 = v13;
  v14 = swift_allocObject();
  v15 = *(v9 + 32);
  v41 = v9 + 32;
  v32 = v15;
  v16 = v14 + v13;
  v17 = v12;
  v15(v16, v4, v12);
  v18 = String._bridgeToObjectiveC()();

  v46 = sub_100416C0C;
  v47 = v14;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_10016B4D8;
  v45 = &unk_100A826F0;
  v19 = _Block_copy(&aBlock);

  v20 = objc_opt_self();
  v21 = [v20 actionWithTitle:v18 style:0 handler:v19];
  _Block_release(v19);

  v22 = v37;
  [v37 addAction:v21];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v23 = v4;
  v24 = v17;
  v35(v4, v36, v17);
  v25 = v31;
  v26 = swift_allocObject();
  v32(v26 + v25, v23, v24);
  v27 = String._bridgeToObjectiveC()();

  v46 = sub_100416D54;
  v47 = v26;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_10016B4D8;
  v45 = &unk_100A82740;
  v28 = _Block_copy(&aBlock);

  v29 = [v20 actionWithTitle:v27 style:1 handler:v28];
  _Block_release(v28);

  [v22 addAction:v29];
  v30 = UIViewController.forPresenting.getter();
  [v30 presentViewController:v22 animated:1 completion:0];
}

uint64_t sub_10083B4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[8] = v9;
  v7[9] = v8;

  return _swift_task_switch(sub_10083B554, v9, v8);
}

uint64_t sub_10083B554()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry;
  v0[10] = OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry;
  v3 = *(v1 + v2);
  if (v3 && (v4 = *(v3 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset), (v0[11] = v4) != 0))
  {
    v5 = v0[7];

    v4;
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_10083B6A4;
    v7 = v0[4];
    v8 = v0[5];
    v9 = v0[3];

    return sub_1001B3EE4(v5, &protocol witness table for MainActor, v9, v7, v8);
  }

  else
  {

    v11 = v0[2];
    sub_100839A20();
    sub_1008396D0();
    v12 = *(v11 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_currentSelectedAnnotation);
    *(v11 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_currentSelectedAnnotation) = 0;

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_10083B6A4()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10083B7E8, v3, v2);
}

uint64_t sub_10083B7E8()
{
  v1 = *(v0[2] + v0[10]);
  v0[13] = v1;
  if (v1)
  {
    v2 = v0[7];

    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_10083B9A4;

    return sub_10077E5EC(v2, &protocol witness table for MainActor);
  }

  else if ((sub_10011A350() & 1) != 0 && (v5 = *(v0[2] + v0[10]), (v0[15] = v5) != 0))
  {

    v0[16] = static MainActor.shared.getter();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10083BC14, v7, v6);
  }

  else
  {
    v8 = v0[11];

    v9 = v0[2];
    sub_100839A20();
    sub_1008396D0();
    v10 = *(v9 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_currentSelectedAnnotation);
    *(v9 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_currentSelectedAnnotation) = 0;

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10083B9A4()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10083BB04, v3, v2);
}

uint64_t sub_10083BB04()
{
  if ((sub_10011A350() & 1) != 0 && (v1 = *(v0[2] + v0[10]), (v0[15] = v1) != 0))
  {

    v0[16] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10083BC14, v3, v2);
  }

  else
  {
    v4 = v0[11];

    v5 = v0[2];
    sub_100839A20();
    sub_1008396D0();
    v6 = *(v5 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_currentSelectedAnnotation);
    *(v5 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_currentSelectedAnnotation) = 0;

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10083BC14()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[15];
  if (Strong)
  {
    v3 = *(v2 + 56);
    ObjectType = swift_getObjectType();
    v5 = sub_1004959AC(&off_100A5B360);
    (*(v3 + 8))(v2, v5, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v6 = v0[8];
  v7 = v0[9];

  return _swift_task_switch(sub_10083BCF4, v6, v7);
}

uint64_t sub_10083BCF4()
{
  v1 = v0[11];

  v2 = v0[2];
  sub_100839A20();
  sub_1008396D0();
  v3 = *(v2 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_currentSelectedAnnotation);
  *(v2 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_currentSelectedAnnotation) = 0;

  v4 = v0[1];

  return v4();
}

void sub_10083BE24()
{
  v1 = v0;
  type metadata accessor for LocationPickerCollectionViewController(0);
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_pickerDelegate + 8] = &off_100A82570;
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_journalEntry] = *&v1[OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry];
  swift_retain_n();

  sub_1006E4EB4();

  v3 = *&v1[OBJC_IVAR____TtC7Journal25CanvasLocationsController_locationPickerController];
  *&v1[OBJC_IVAR____TtC7Journal25CanvasLocationsController_locationPickerController] = v2;
  v4 = v2;

  v5 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v4];
  [v1 presentViewController:v5 animated:1 completion:0];
}

void sub_10083BF90(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v17 = *&v2[OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry];
  if (v17)
  {
    v34 = a1;

    sub_1008321B0(v9);
    v18 = *(v11 + 48);
    v19 = v18(v9, 1, v10);
    v33 = v18;
    if (v19 == 1)
    {
      (*(v11 + 16))(v16, v34, v10);
      if (v18(v9, 1, v10) != 1)
      {
        sub_100004F84(v9, &unk_100ADFB90);
      }
    }

    else
    {
      (*(v11 + 32))(v16, v9, v10);
    }

    v20 = sub_100437D24(v16, v17, 0);
    v21 = &v2[OBJC_IVAR____TtC7Journal25CanvasLocationsController_fullScreenDelegate];
    swift_unknownObjectWeakLoadStrong();
    *&v20[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_delegate + 8] = *(v21 + 1);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v22 = [v2 traitCollection];
    v23 = [v22 userInterfaceIdiom];

    if (v23 == 5)
    {
      v24 = [v2 viewIfLoaded];
      if (!v24 || (v25 = v24, v26 = [v24 window], v25, !v26) || (v27 = objc_msgSend(v26, "rootViewController"), v26, !v27))
      {

        return;
      }

      type metadata accessor for SceneSplitViewController(0);
      v28 = swift_dynamicCastClass();
      if (!v28)
      {

        return;
      }

      [v28 showViewController:v20 sender:v2];
    }

    else
    {
      v29 = [objc_allocWithZone(type metadata accessor for FullScreenAssetNavigationController()) initWithRootViewController:v20];
      sub_1008321B0(v6);
      v30 = v33;
      if (v33(v6, 1, v10) == 1)
      {
        (*(v11 + 16))(v13, v34, v10);
        if (v30(v6, 1, v10) != 1)
        {
          sub_100004F84(v6, &unk_100ADFB90);
        }
      }

      else
      {
        (*(v11 + 32))(v13, v6, v10);
      }

      sub_1000065A8(0, &qword_100ADE550);
      v31 = sub_1004B71D4(v13);
      (*(v11 + 8))(v13, v10);
      [v29 setPreferredTransition:v31];

      v32 = UIViewController.forPresenting.getter();
      [v32 presentViewController:v29 animated:1 completion:0];
    }
  }
}

id sub_10083C49C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1000F24EC(&qword_100AF4438);
  UIViewController.ViewLoading.init()();
  *&v3[OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry] = 0;
  *&v3[OBJC_IVAR____TtC7Journal25CanvasLocationsController_pickerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC7Journal25CanvasLocationsController_fullScreenDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC7Journal25CanvasLocationsController_mapSectionIsHidden] = 0;
  *&v3[OBJC_IVAR____TtC7Journal25CanvasLocationsController_locationPickerController] = 0;
  *&v3[OBJC_IVAR____TtC7Journal25CanvasLocationsController_currentSelectedAnnotation] = 0;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for CanvasLocationsController();
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

id sub_10083C618(void *a1)
{
  sub_1000F24EC(&qword_100AF4438);
  UIViewController.ViewLoading.init()();
  *&v1[OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry] = 0;
  *&v1[OBJC_IVAR____TtC7Journal25CanvasLocationsController_pickerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Journal25CanvasLocationsController_fullScreenDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC7Journal25CanvasLocationsController_mapSectionIsHidden] = 0;
  *&v1[OBJC_IVAR____TtC7Journal25CanvasLocationsController_locationPickerController] = 0;
  *&v1[OBJC_IVAR____TtC7Journal25CanvasLocationsController_currentSelectedAnnotation] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CanvasLocationsController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10083C730()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasLocationsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CanvasLocationsController()
{
  result = qword_100AF4420;
  if (!qword_100AF4420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10083C884()
{
  sub_10083C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10083C938()
{
  if (!qword_100AF4430)
  {
    sub_1000F2A18(&qword_100AF4438);
    v0 = type metadata accessor for UIViewController.ViewLoading();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF4430);
    }
  }
}

uint64_t sub_10083C9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for MapSize();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for JournalFeatureFlags();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420);
  v4[12] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE94C8);
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for AssetPlacement();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = type metadata accessor for MainActor();
  v4[19] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[20] = v9;
  v4[21] = v8;

  return _swift_task_switch(sub_10083CBE0, v9, v8);
}

uint64_t sub_10083CBE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[22] = Strong;
  if (!Strong)
  {

LABEL_32:

    v34 = v0[1];

    return v34();
  }

  v2 = Strong;
  v3 = OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry;
  v0[23] = OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry;
  v4 = *&Strong[v3];
  if (!v4)
  {

LABEL_31:

    goto LABEL_32;
  }

  v5 = *(v4 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
  v0[24] = v5;
  if (!v5)
  {

    goto LABEL_32;
  }

  v6 = v0[14];
  v7 = v0[15];
  v8 = v0[13];
  v9 = v5;

  sub_10056FE0C(v9, v8);

  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v10 = v0[13];

    sub_100004F84(v10, &qword_100AE94C8);
LABEL_30:
    sub_100832D54();

    goto LABEL_31;
  }

  v53 = v9;
  v11 = v0[17];
  v12 = v0[14];
  v13 = v0[15];
  (*(v13 + 32))(v11, v0[13], v12);
  sub_1000F24EC(&qword_100AF4460);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100940050;
  v17 = v16 + v15;
  v18 = enum case for AssetPlacement.slim(_:);
  v19 = *(v13 + 104);
  v0[25] = v19;
  v0[26] = (v13 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v19(v17, v18, v12);
  v19(v17 + v14, enum case for AssetPlacement.hidden(_:), v12);
  LOBYTE(v11) = sub_1006B7ED4(v11, v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if ((v11 & 1) == 0)
  {
    (*(v0[15] + 8))(v0[17], v0[14]);

    v9 = v53;
    goto LABEL_30;
  }

  v20 = *&v2[v3];
  v0[27] = v20;
  if (v20)
  {
    v21 = OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets;
    v22 = *(v20 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
    if (v22 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v20;
    v25 = sub_10005AAB0(128);
    if (qword_100AD0A20 != -1)
    {
      v24 = v25;
      swift_once();
      LOBYTE(v25) = v24;
    }

    v26 = qword_100B30F68;
    if ((v25 & 1) != 0 && (v26 = qword_100B30F68 - 1, __OFSUB__(qword_100B30F68, 1)))
    {
      __break(1u);
    }

    else
    {
      if (v23 < v26 || (sub_10011A350() & 1) != 0)
      {
LABEL_38:

        goto LABEL_39;
      }

      v24 = *(v20 + v21);
      if (!(v24 >> 62))
      {
        v29 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v29)
        {
          goto LABEL_21;
        }

        goto LABEL_38;
      }
    }

    v29 = _CocoaArrayWrapper.endIndex.getter();
    if (v29)
    {
LABEL_21:
      v30 = v29 - 1;
      if (__OFSUB__(v29, 1))
      {
        __break(1u);
      }

      else if ((v24 & 0xC000000000000001) == 0)
      {
        if ((v30 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v30 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v31 = *(v24 + 8 * v30 + 32);
          goto LABEL_26;
        }

        __break(1u);
        return _swift_task_switch(v29, v27, v28);
      }

      v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      v31 = v52;
LABEL_26:
      v0[28] = v31;
      v0[29] = static MainActor.shared.getter();
      v32 = dispatch thunk of Actor.unownedExecutor.getter();
      v28 = v33;
      v0[30] = v32;
      v0[31] = v33;
      v29 = sub_10083D2A0;
      v27 = v32;

      return _swift_task_switch(v29, v27, v28);
    }

    goto LABEL_38;
  }

LABEL_39:
  if ((sub_10011A350() & 1) != 0 && (v36 = v0[10], v37 = v0[11], v38 = v0[9], (*(v36 + 104))(v37, enum case for JournalFeatureFlags.enhancedSync(_:), v38), v39 = JournalFeatureFlags.isEnabled.getter(), (*(v36 + 8))(v37, v38), (v39 & 1) == 0))
  {
    v50 = v0[19];

    v51 = swift_task_alloc();
    v0[44] = v51;
    *v51 = v0;
    v51[1] = sub_10083E620;

    return sub_10011AA48(v50, &protocol witness table for MainActor, 0);
  }

  else
  {
    v40 = v0[22];
    v41 = *&v40[v0[23]];
    v0[45] = v41;
    if (!v41)
    {
      v49 = v0[24];

      (*(v0[15] + 8))(v0[17], v0[14]);
      goto LABEL_32;
    }

    v42 = v0[25];
    v43 = v0[24];
    v44 = v0[19];
    v45 = v0[16];
    v46 = v0[14];

    *v45 = static AssetPlacement.maxGridCount.getter();
    v42(v45, enum case for AssetPlacement.grid(_:), v46);

    v47 = swift_task_alloc();
    v0[46] = v47;
    *v47 = v0;
    v47[1] = sub_10083EA18;
    v48 = v0[16];

    return sub_1005666C0(v44, &protocol witness table for MainActor, v43, v48);
  }
}

uint64_t sub_10083D2A0()
{
  v1 = v0[22];
  v2 = static MainActor.shared.getter();
  v0[32] = v2;
  v3 = swift_task_alloc();
  v0[33] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_10083D3AC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 49, v2, &protocol witness table for MainActor, 0xD000000000000021, 0x800000010090B300, sub_1008461C8, v3, &type metadata for Bool);
}

uint64_t sub_10083D3AC()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return _swift_task_switch(sub_10083D50C, v3, v2);
}

uint64_t sub_10083D50C()
{

  *(v0 + 393) = *(v0 + 392);
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return _swift_task_switch(sub_10083D578, v1, v2);
}

uint64_t sub_10083D578()
{
  if (*(v0 + 393))
  {
    v1 = *(*(v0 + 176) + *(v0 + 184));
    *(v0 + 280) = v1;
    if (v1)
    {
      v2 = *(v0 + 152);

      if (v2)
      {
        swift_getObjectType();
        v3 = dispatch thunk of Actor.unownedExecutor.getter();
        v5 = v4;
      }

      else
      {
        v3 = 0;
        v5 = 0;
      }

      *(v0 + 288) = v3;
      *(v0 + 296) = v5;

      return _swift_task_switch(sub_10083D814, v3, v5);
    }

    v14 = *(v0 + 176);
    v15 = *&v14[*(v0 + 184)];
    *(v0 + 376) = v15;
    if (v15)
    {
      v16 = *(v0 + 152);
      (*(*(v0 + 56) + 104))(*(v0 + 64), enum case for MapSize.grid(_:), *(v0 + 48));

      v17 = swift_task_alloc();
      *(v0 + 384) = v17;
      *v17 = v0;
      v17[1] = sub_10083ED74;
      v18 = *(v0 + 64);

      return sub_100572180(v16, &protocol witness table for MainActor, v18);
    }

    v19 = *(v0 + 192);

    (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
  }

  else
  {
    v6 = *(v0 + 224);
    v7 = *(v0 + 192);
    v8 = *(v0 + 176);
    v9 = *(v0 + 136);
    v10 = *(v0 + 112);
    v11 = *(v0 + 120);

    sub_100832D54();

    (*(v11 + 8))(v9, v10);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10083D814()
{
  v1 = v0[28];
  v2 = v0[19];
  sub_1000F24EC(&unk_100AE1A40);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  (*(v4 + 16))(v6 + v5, v1 + OBJC_IVAR____TtC7Journal5Asset_id, v3);
  v7 = sub_1004960D4(v6);
  v0[38] = v7;
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  v8 = swift_task_alloc();
  v0[39] = v8;
  *v8 = v0;
  v8[1] = sub_10083D9D4;

  return sub_10056824C(v2, &protocol witness table for MainActor, v7);
}

uint64_t sub_10083D9D4()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_10083DB18, v3, v2);
}

uint64_t sub_10083DB18()
{

  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return _swift_task_switch(sub_10083DB88, v1, v2);
}

uint64_t sub_10083DB88()
{
  v1 = *(*(v0 + 176) + *(v0 + 184));
  *(v0 + 320) = v1;
  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 192);
    v4 = *(v0 + 152);
    v5 = *(v0 + 128);
    v6 = *(v0 + 112);

    *v5 = static AssetPlacement.maxGridCount.getter();
    v2(v5, enum case for AssetPlacement.grid(_:), v6);

    v7 = swift_task_alloc();
    *(v0 + 328) = v7;
    *v7 = v0;
    v7[1] = sub_10083DE18;
    v8 = *(v0 + 128);

    return sub_1005666C0(v4, &protocol witness table for MainActor, v3, v8);
  }

  else
  {

    v10 = *(v0 + 176);
    v11 = *&v10[*(v0 + 184)];
    *(v0 + 376) = v11;
    if (v11)
    {
      v12 = *(v0 + 152);
      (*(*(v0 + 56) + 104))(*(v0 + 64), enum case for MapSize.grid(_:), *(v0 + 48));

      v13 = swift_task_alloc();
      *(v0 + 384) = v13;
      *v13 = v0;
      v13[1] = sub_10083ED74;
      v14 = *(v0 + 64);

      return sub_100572180(v12, &protocol witness table for MainActor, v14);
    }

    else
    {
      v15 = *(v0 + 192);

      (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));

      v16 = *(v0 + 8);

      return v16();
    }
  }
}

uint64_t sub_10083DE18()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 168);
  v6 = *(v1 + 160);

  return _swift_task_switch(sub_10083DFDC, v6, v5);
}

uint64_t sub_10083DFDC()
{
  v1 = *(*(v0 + 176) + *(v0 + 184));
  *(v0 + 336) = v1;
  if (v1)
  {
    v2 = *(v0 + 152);

    v3 = swift_task_alloc();
    *(v0 + 344) = v3;
    *v3 = v0;
    v3[1] = sub_10083E224;

    return sub_1001FB328(v2);
  }

  else
  {

    v5 = *(v0 + 176);
    v6 = *&v5[*(v0 + 184)];
    *(v0 + 376) = v6;
    if (v6)
    {
      v7 = *(v0 + 152);
      (*(*(v0 + 56) + 104))(*(v0 + 64), enum case for MapSize.grid(_:), *(v0 + 48));

      v8 = swift_task_alloc();
      *(v0 + 384) = v8;
      *v8 = v0;
      v8[1] = sub_10083ED74;
      v9 = *(v0 + 64);

      return sub_100572180(v7, &protocol witness table for MainActor, v9);
    }

    else
    {
      v10 = *(v0 + 192);

      (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));

      v11 = *(v0 + 8);

      return v11();
    }
  }
}

uint64_t sub_10083E224()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_10083E384, v3, v2);
}

uint64_t sub_10083E384()
{
  v1 = v0[28];
  if (*(v0[22] + v0[23]))
  {
    v2 = v0[12];
    v3 = OBJC_IVAR____TtC7Journal5Asset_id;
    v4 = type metadata accessor for UUID();
    v5 = *(v4 - 8);
    (*(v5 + 16))(v2, &v1[v3], v4);
    (*(v5 + 56))(v2, 0, 1, v4);

    sub_1001F81C4(v2);

    sub_100004F84(v2, &qword_100AD1420);
  }

  else
  {
  }

  v6 = v0[22];
  v7 = *&v6[v0[23]];
  v0[47] = v7;
  if (v7)
  {
    v8 = v0[19];
    (*(v0[7] + 104))(v0[8], enum case for MapSize.grid(_:), v0[6]);

    v9 = swift_task_alloc();
    v0[48] = v9;
    *v9 = v0;
    v9[1] = sub_10083ED74;
    v10 = v0[8];

    return sub_100572180(v8, &protocol witness table for MainActor, v10);
  }

  else
  {
    v12 = v0[24];

    (*(v0[15] + 8))(v0[17], v0[14]);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_10083E620()
{
  v1 = *(*v0 + 152);

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_10083E75C, v2, v4);
}

uint64_t sub_10083E75C()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100ACFFA8 != -1)
  {
    swift_once();
  }

  v2 = qword_100B2FB98;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 postNotificationName:v2 object:isa];

  v4 = *(v0 + 160);
  v5 = *(v0 + 168);

  return _swift_task_switch(sub_10083E864, v4, v5);
}

uint64_t sub_10083E864()
{
  v1 = v0[22];
  v2 = *&v1[v0[23]];
  v0[45] = v2;
  if (v2)
  {
    v3 = v0[25];
    v4 = v0[24];
    v5 = v0[19];
    v6 = v0[16];
    v7 = v0[14];

    *v6 = static AssetPlacement.maxGridCount.getter();
    v3(v6, enum case for AssetPlacement.grid(_:), v7);

    v8 = swift_task_alloc();
    v0[46] = v8;
    *v8 = v0;
    v8[1] = sub_10083EA18;
    v9 = v0[16];

    return sub_1005666C0(v5, &protocol witness table for MainActor, v4, v9);
  }

  else
  {
    v11 = v0[24];

    (*(v0[15] + 8))(v0[17], v0[14]);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_10083EA18()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 168);
  v6 = *(v1 + 160);

  return _swift_task_switch(sub_10083EBDC, v6, v5);
}

uint64_t sub_10083EBDC()
{
  v1 = v0[22];
  v2 = *&v1[v0[23]];
  v0[47] = v2;
  if (v2)
  {
    v3 = v0[19];
    (*(v0[7] + 104))(v0[8], enum case for MapSize.grid(_:), v0[6]);

    v4 = swift_task_alloc();
    v0[48] = v4;
    *v4 = v0;
    v4[1] = sub_10083ED74;
    v5 = v0[8];

    return sub_100572180(v3, &protocol witness table for MainActor, v5);
  }

  else
  {
    v7 = v0[24];

    (*(v0[15] + 8))(v0[17], v0[14]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10083ED74()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 168);
  v6 = *(v1 + 160);

  return _swift_task_switch(sub_10083EF38, v6, v5);
}

uint64_t sub_10083EF38()
{
  v1 = *(v0 + 192);

  (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10083F010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = type metadata accessor for MapSize();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = type metadata accessor for AssetPlacement();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = type metadata accessor for JournalFeatureFlags();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[22] = v9;
  v4[23] = v8;

  return _swift_task_switch(sub_10083F1BC, v9, v8);
}

uint64_t sub_10083F1BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v2 = Strong;
  v3 = *(Strong + OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry);
  if (!v3)
  {
LABEL_18:

    goto LABEL_19;
  }

  v4 = *(v3 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
  v0[24] = v4;
  v4;

  if (!v4)
  {
LABEL_11:

LABEL_19:

    v23 = v0[1];

    return v23();
  }

  if (sub_10011A350() & 1) == 0 || (v6 = v0[19], v5 = v0[20], v7 = v0[18], (*(v6 + 104))(v5, enum case for JournalFeatureFlags.enhancedSync(_:), v7), v8 = JournalFeatureFlags.isEnabled.getter(), (*(v6 + 8))(v5, v7), (v8))
  {
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry);
      v0[26] = v10;
      v11 = v9;

      if (v10)
      {
        v12 = v0[24];
        v13 = v0[21];
        (*(v0[16] + 104))(v0[17], enum case for AssetPlacement.hidden(_:), v0[15]);

        v14 = swift_task_alloc();
        v0[27] = v14;
        *v14 = v0;
        v14[1] = sub_10083FA5C;
        v15 = v0[17];

        return sub_1005666C0(v13, &protocol witness table for MainActor, v12, v15);
      }
    }

    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = *(v17 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry);
      v0[28] = v18;
      v19 = v17;

      if (v18)
      {
        v20 = v0[21];
        (*(v0[13] + 104))(v0[14], enum case for MapSize.hidden(_:), v0[12]);

        v21 = swift_task_alloc();
        v0[29] = v21;
        *v21 = v0;
        v21[1] = sub_10083FDA4;
        v22 = v0[14];

        return sub_100572180(v20, &protocol witness table for MainActor, v22);
      }
    }

    v2 = v0[24];
    goto LABEL_18;
  }

  v24 = v0[21];

  v25 = swift_task_alloc();
  v0[25] = v25;
  *v25 = v0;
  v25[1] = sub_10083F59C;

  return sub_10011AA48(v24, &protocol witness table for MainActor, 0);
}

uint64_t sub_10083F59C()
{
  v1 = *(*v0 + 168);

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_10083F6D8, v2, v4);
}

uint64_t sub_10083F6D8()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100ACFFA8 != -1)
  {
    swift_once();
  }

  v2 = qword_100B2FB98;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 postNotificationName:v2 object:isa];

  v4 = *(v0 + 176);
  v5 = *(v0 + 184);

  return _swift_task_switch(sub_10083F7E0, v4, v5);
}

uint64_t sub_10083F7E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry), v0[26] = v2, v3 = Strong, , v3, v2))
  {
    v4 = v0[24];
    v5 = v0[21];
    (*(v0[16] + 104))(v0[17], enum case for AssetPlacement.hidden(_:), v0[15]);

    v6 = swift_task_alloc();
    v0[27] = v6;
    *v6 = v0;
    v6[1] = sub_10083FA5C;
    v7 = v0[17];

    return sub_1005666C0(v5, &protocol witness table for MainActor, v4, v7);
  }

  else
  {
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9 && (v10 = *(v9 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry), v0[28] = v10, v11 = v9, , v11, v10))
    {
      v12 = v0[21];
      (*(v0[13] + 104))(v0[14], enum case for MapSize.hidden(_:), v0[12]);

      v13 = swift_task_alloc();
      v0[29] = v13;
      *v13 = v0;
      v13[1] = sub_10083FDA4;
      v14 = v0[14];

      return sub_100572180(v12, &protocol witness table for MainActor, v14);
    }

    else
    {
      v15 = v0[24];

      v16 = v0[1];

      return v16();
    }
  }
}

uint64_t sub_10083FA5C()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 184);
  v6 = *(v1 + 176);

  return _swift_task_switch(sub_10083FC20, v6, v5);
}

uint64_t sub_10083FC20()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry), v0[28] = v2, v3 = Strong, , v3, v2))
  {
    v4 = v0[21];
    (*(v0[13] + 104))(v0[14], enum case for MapSize.hidden(_:), v0[12]);

    v5 = swift_task_alloc();
    v0[29] = v5;
    *v5 = v0;
    v5[1] = sub_10083FDA4;
    v6 = v0[14];

    return sub_100572180(v4, &protocol witness table for MainActor, v6);
  }

  else
  {
    v8 = v0[24];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10083FDA4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 184);
  v6 = *(v1 + 176);

  return _swift_task_switch(sub_10083FF68, v6, v5);
}

uint64_t sub_10083FF68()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10083FFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for MapSize();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for JournalFeatureFlags();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE94C8);
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for AssetPlacement();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MainActor();
  v4[22] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[23] = v10;
  v4[24] = v9;

  return _swift_task_switch(sub_10084024C, v10, v9);
}

uint64_t sub_10084024C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 200) = Strong;
  if (!Strong)
  {

LABEL_13:

    v17 = *(v0 + 8);

    return v17();
  }

  v2 = Strong;
  v3 = OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry;
  *(v0 + 208) = OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry;
  v4 = *&Strong[v3];
  if (!v4)
  {

LABEL_12:

    goto LABEL_13;
  }

  v5 = *(v4 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
  *(v0 + 216) = v5;
  if (!v5)
  {

    goto LABEL_13;
  }

  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);
  v9 = v5;

  sub_10056FE0C(v9, v8);

  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v10 = *(v0 + 128);

    sub_100004F84(v10, &qword_100AE94C8);
LABEL_11:
    sub_100832D54();

    goto LABEL_12;
  }

  v11 = *(v0 + 152);
  v12 = *(v0 + 136);
  v13 = *(v0 + 144);
  (*(v13 + 32))(*(v0 + 160), *(v0 + 128), v12);
  *(v0 + 472) = enum case for AssetPlacement.slim(_:);
  v14 = *(v13 + 104);
  *(v0 + 224) = v14;
  *(v0 + 232) = (v13 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v91 = v14;
  v14(v11);
  sub_1008461D0(&qword_100AE45B8, &type metadata accessor for AssetPlacement);
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v13 + 8);
  *(v0 + 240) = v16;
  *(v0 + 248) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v11, v12);
  if (v15)
  {
    v16(*(v0 + 160), *(v0 + 136));

    goto LABEL_11;
  }

  v19 = *&v2[v3];
  *(v0 + 256) = v19;
  if (!v19)
  {
LABEL_43:
    v55 = *(v0 + 200);
    v54 = *(v0 + 208);
    v57 = *(v0 + 80);
    v56 = *(v0 + 88);
    v58 = *(v0 + 72);
    (*(v57 + 104))(v56, enum case for JournalFeatureFlags.enhancedSync(_:), v58);
    v59 = JournalFeatureFlags.isEnabled.getter();
    (*(v57 + 8))(v56, v58);
    v60 = *(v55 + v54);
    *(v0 + 400) = v60;
    if (v59)
    {
      if (!v60)
      {
        goto LABEL_61;
      }

      v61 = OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset;
      v62 = *(v60 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
      *(v0 + 408) = v62;
      if (v62)
      {
        v63 = *(v0 + 176);
        (*(v0 + 224))(*(v0 + 152), *(v0 + 472), *(v0 + 136));

        v64 = v62;

        v65 = swift_task_alloc();
        *(v0 + 416) = v65;
        *v65 = v0;
        v66 = sub_100842804;
LABEL_47:
        v65[1] = v66;
        v67 = *(v0 + 152);

        return sub_1005666C0(v63, &protocol witness table for MainActor, v64, v67);
      }
    }

    else
    {
      if (!v60)
      {
        goto LABEL_61;
      }

      v61 = OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset;
    }

    v68 = *(v60 + v61);
    *(v0 + 424) = v68;
    if (v68)
    {
      v69 = *(v0 + 176);

      v68;
      v70 = swift_task_alloc();
      *(v0 + 432) = v70;
      *v70 = v0;
      v70[1] = sub_100842B2C;

      return sub_10011AA48(v69, &protocol witness table for MainActor, 1);
    }

    v71 = *(*(v0 + 200) + *(v0 + 208));
    *(v0 + 440) = v71;
    if (v71)
    {

      *(v0 + 448) = static MainActor.shared.getter();
      v72 = dispatch thunk of Actor.unownedExecutor.getter();
      v74 = v73;
      v35 = sub_100842ED0;
      v32 = v72;
      v33 = v74;
LABEL_58:

      return _swift_task_switch(v35, v32, v33);
    }

LABEL_61:
    v75 = *(v0 + 216);
    v76 = *(v0 + 200);

    (*(v0 + 240))(*(v0 + 160), *(v0 + 136));
    goto LABEL_13;
  }

  v20 = OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets;
  v21 = *(v19 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v21 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = sub_10005AAB0(128);
  if (qword_100AD0A20 != -1)
  {
    v9 = v23;
    swift_once();
    LOBYTE(v23) = v9;
  }

  v24 = qword_100B30F68;
  if ((v23 & 1) != 0 && (v24 = qword_100B30F68 - 1, __OFSUB__(qword_100B30F68, 1)))
  {
    __break(1u);
  }

  else
  {
    if (v22 < v24)
    {
      goto LABEL_38;
    }

    v25 = *(v0 + 160);
    v26 = *(v0 + 136);
    v27 = *(v0 + 144);
    sub_1000F24EC(&qword_100AF4460);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100940050;
    v31 = v30 + v29;
    v91(v31, enum case for AssetPlacement.canvas(_:), v26);
    v91(v31 + v28, enum case for AssetPlacement.hidden(_:), v26);
    LOBYTE(v25) = sub_1006B7ED4(v25, v30);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if ((v25 & 1) == 0)
    {
      goto LABEL_38;
    }

    v9 = *(v19 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset);
    if (v9)
    {
      v34 = *(v19 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset);
LABEL_34:
      *(v0 + 264) = v34;
      v37 = v9;
      *(v0 + 272) = static MainActor.shared.getter();
      v38 = dispatch thunk of Actor.unownedExecutor.getter();
      v33 = v39;
      *(v0 + 280) = v38;
      *(v0 + 288) = v39;
      v35 = sub_100840D70;
      v32 = v38;
      goto LABEL_58;
    }

    v22 = *(v19 + v20);
    if (!(v22 >> 62))
    {
      v35 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
        goto LABEL_29;
      }

      goto LABEL_38;
    }
  }

  v35 = _CocoaArrayWrapper.endIndex.getter();
  if (v35)
  {
LABEL_29:
    v36 = v35 - 1;
    if (__OFSUB__(v35, 1))
    {
      __break(1u);
    }

    else if ((v22 & 0xC000000000000001) == 0)
    {
      if ((v36 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v36 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v34 = *(v22 + 8 * v36 + 32);
        goto LABEL_34;
      }

      __break(1u);
      return _swift_task_switch(v35, v32, v33);
    }

    v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v34 = v88;
    goto LABEL_34;
  }

LABEL_38:

  v40 = *(*(v0 + 200) + *(v0 + 208));
  if (!v40)
  {
    goto LABEL_43;
  }

  v41 = v40 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset;
  v42 = *(v40 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset);
  *(v0 + 360) = v42;
  if (!v42)
  {
    goto LABEL_43;
  }

  v43 = *(v41 + 8);
  v44 = *(v40 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
  *(v0 + 368) = v44;
  if (!v44)
  {
    goto LABEL_43;
  }

  v92 = v43;
  v46 = *(v0 + 112);
  v45 = *(v0 + 120);
  v47 = *(v0 + 96);
  v48 = *(v0 + 104);
  ObjectType = swift_getObjectType();
  v49 = *(v48 + 16);
  v49(v45, &v42[OBJC_IVAR____TtC7Journal5Asset_id], v47);
  v49(v46, &v44[OBJC_IVAR____TtC7Journal5Asset_id], v47);
  sub_1008461D0(&qword_100AD9220, &type metadata accessor for UUID);
  v50 = v42;
  v51 = v44;
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  v53 = *(v48 + 8);
  v53(v46, v47);
  v53(v45, v47);
  if (v52)
  {
LABEL_42:

    goto LABEL_43;
  }

  v77 = *(v0 + 80);
  v78 = *(v0 + 88);
  v79 = *(v0 + 72);
  (*(v77 + 104))(v78, enum case for JournalFeatureFlags.enhancedSync(_:), v79);
  v80 = JournalFeatureFlags.isEnabled.getter();
  (*(v77 + 8))(v78, v79);
  if (v80)
  {
    v81 = *(*(v0 + 200) + *(v0 + 208));
    *(v0 + 384) = v81;
    if (v81)
    {
      v82 = *(v0 + 224);
      v63 = *(v0 + 176);
      v83 = *(v0 + 152);
      v84 = *(v0 + 136);
      v64 = v50;

      *v83 = static AssetPlacement.maxGridCount.getter();
      v82(v83, enum case for AssetPlacement.grid(_:), v84);

      v65 = swift_task_alloc();
      *(v0 + 392) = v65;
      *v65 = v0;
      v66 = sub_100842618;
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  v85 = *(v0 + 176);
  v86 = *(v92 + 72);

  v89 = (v86 + *v86);
  v87 = swift_task_alloc();
  *(v0 + 376) = v87;
  *v87 = v0;
  v87[1] = sub_10084218C;

  return v89(v85, &protocol witness table for MainActor, ObjectType, v92);
}

uint64_t sub_100840D70()
{
  v1 = v0[25];
  v2 = static MainActor.shared.getter();
  v0[37] = v2;
  v3 = swift_task_alloc();
  v0[38] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_100840E7C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 476, v2, &protocol witness table for MainActor, 0xD000000000000021, 0x800000010090B300, sub_100846B7C, v3, &type metadata for Bool);
}

uint64_t sub_100840E7C()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return _swift_task_switch(sub_100840FDC, v3, v2);
}

uint64_t sub_100840FDC()
{

  *(v0 + 477) = *(v0 + 476);
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return _swift_task_switch(sub_100841048, v1, v2);
}

uint64_t sub_100841048()
{
  if ((*(v0 + 477) & 1) == 0)
  {
    v6 = *(v0 + 264);
    v7 = *(v0 + 240);
    v8 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 160);
    v11 = *(v0 + 136);

    sub_100832D54();

    v7(v10, v11);
LABEL_6:

    v12 = *(v0 + 8);

    return v12();
  }

  v1 = *(*(v0 + 200) + *(v0 + 208));
  *(v0 + 320) = v1;
  if (v1)
  {
    v2 = *(v0 + 176);

    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    *(v0 + 328) = v3;
    *(v0 + 336) = v5;
    v42 = sub_1008417B4;
    v43 = v3;
    goto LABEL_23;
  }

  v14 = *(*(v0 + 200) + *(v0 + 208));
  if (!v14 || (v15 = v14 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset, v16 = *(v14 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset), (*(v0 + 360) = v16) == 0) || (v17 = *(v15 + 8), v18 = *(v14 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset), (*(v0 + 368) = v18) == 0))
  {
LABEL_14:
    v29 = *(v0 + 200);
    v28 = *(v0 + 208);
    v31 = *(v0 + 80);
    v30 = *(v0 + 88);
    v32 = *(v0 + 72);
    (*(v31 + 104))(v30, enum case for JournalFeatureFlags.enhancedSync(_:), v32);
    v33 = JournalFeatureFlags.isEnabled.getter();
    (*(v31 + 8))(v30, v32);
    v34 = *(v29 + v28);
    *(v0 + 400) = v34;
    if (v33)
    {
      if (v34)
      {
        v35 = OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset;
        v36 = *(v34 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
        *(v0 + 408) = v36;
        if (v36)
        {
          v37 = *(v0 + 176);
          (*(v0 + 224))(*(v0 + 152), *(v0 + 472), *(v0 + 136));

          v38 = v36;

          v39 = swift_task_alloc();
          *(v0 + 416) = v39;
          *v39 = v0;
          v40 = sub_100842804;
LABEL_18:
          v39[1] = v40;
          v41 = *(v0 + 152);

          return sub_1005666C0(v37, &protocol witness table for MainActor, v38, v41);
        }

        goto LABEL_28;
      }
    }

    else if (v34)
    {
      v35 = OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset;
LABEL_28:
      v44 = *(v34 + v35);
      *(v0 + 424) = v44;
      if (v44)
      {
        v45 = *(v0 + 176);

        v44;
        v46 = swift_task_alloc();
        *(v0 + 432) = v46;
        *v46 = v0;
        v46[1] = sub_100842B2C;

        return sub_10011AA48(v45, &protocol witness table for MainActor, 1);
      }

      v47 = *(*(v0 + 200) + *(v0 + 208));
      *(v0 + 440) = v47;
      if (v47)
      {

        *(v0 + 448) = static MainActor.shared.getter();
        v48 = dispatch thunk of Actor.unownedExecutor.getter();
        v50 = v49;
        v42 = sub_100842ED0;
        v43 = v48;
        v5 = v50;
LABEL_23:

        return _swift_task_switch(v42, v43, v5);
      }
    }

    v51 = *(v0 + 216);
    v52 = *(v0 + 200);

    (*(v0 + 240))(*(v0 + 160), *(v0 + 136));
    goto LABEL_6;
  }

  v66 = v17;
  v20 = *(v0 + 112);
  v19 = *(v0 + 120);
  v22 = *(v0 + 96);
  v21 = *(v0 + 104);
  ObjectType = swift_getObjectType();
  v23 = *(v21 + 16);
  v23(v19, &v16[OBJC_IVAR____TtC7Journal5Asset_id], v22);
  v23(v20, &v18[OBJC_IVAR____TtC7Journal5Asset_id], v22);
  sub_1008461D0(&qword_100AD9220, &type metadata accessor for UUID);
  v24 = v16;
  v25 = v18;
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = *(v21 + 8);
  v27(v20, v22);
  v27(v19, v22);
  if (v26)
  {
LABEL_13:

    goto LABEL_14;
  }

  v53 = *(v0 + 80);
  v54 = *(v0 + 88);
  v55 = *(v0 + 72);
  (*(v53 + 104))(v54, enum case for JournalFeatureFlags.enhancedSync(_:), v55);
  v56 = JournalFeatureFlags.isEnabled.getter();
  (*(v53 + 8))(v54, v55);
  if (v56)
  {
    v57 = *(*(v0 + 200) + *(v0 + 208));
    *(v0 + 384) = v57;
    if (v57)
    {
      v58 = *(v0 + 224);
      v37 = *(v0 + 176);
      v59 = *(v0 + 152);
      v60 = *(v0 + 136);
      v38 = v24;

      *v59 = static AssetPlacement.maxGridCount.getter();
      v58(v59, enum case for AssetPlacement.grid(_:), v60);

      v39 = swift_task_alloc();
      *(v0 + 392) = v39;
      *v39 = v0;
      v40 = sub_100842618;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v61 = *(v0 + 176);
  v62 = *(v66 + 72);

  v64 = (v62 + *v62);
  v63 = swift_task_alloc();
  *(v0 + 376) = v63;
  *v63 = v0;
  v63[1] = sub_10084218C;

  return v64(v61, &protocol witness table for MainActor, ObjectType, v66);
}