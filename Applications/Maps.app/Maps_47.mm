void sub_1005331D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*v3 + OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider_collectionHandler);
  ImageProvidingSpecs.preferredSize.getter();
  v8 = v7;
  v10 = v9;
  ImageProvidingSpecs.displayScale.getter();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v15[4] = sub_1000D2C74;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100113C68;
  v15[3] = &unk_101620290;
  v14 = _Block_copy(v15);

  [v6 fetchCoverPhotoForFrameSize:v14 scale:v8 completion:{v10, v12}];
  _Block_release(v14);
}

uint64_t sub_10053330C()
{
  sub_1000F1178();
  static MapsDesignConstants.Image.Guides.guidePlaceholder.getter();
  v0 = static UIImage.mapsDesignImage(_:)();

  return v0;
}

void sub_100533350(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider_collectionHandler) identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

void sub_100533464()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider__image);
  *(v1 + OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider__image) = v2;
  v4 = v2;
}

uint64_t sub_1005334A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UserGuideCoverPhotoImageProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1005334E8(uint64_t a1)
{
  sub_1004D8B00(a1, v10);
  if (v10[0])
  {
    sub_100098118(v10, v9);
    sub_1004D8BCC(v10);
    v2 = v9[0];
    sub_10019D044(v9);
  }

  else
  {
    sub_100024F64(v10, &qword_10190B330);
    v2 = 0;
  }

  v3 = OBJC_IVAR____TtC4Maps27HomePlaceCollectionViewCell_viewModel;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (!v4)
  {
    if (!v2)
    {
      return;
    }

    v5 = 0;
    goto LABEL_11;
  }

  v5 = v4;
  if (!v2)
  {
LABEL_11:
    [v1 setNeedsUpdateConfiguration];

    v5 = v2;
    goto LABEL_12;
  }

  v6 = v1;
  sub_100533D14();
  v7 = v2;
  v5 = v5;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    v1 = v6;
    goto LABEL_11;
  }

LABEL_12:
}

uint64_t sub_100533760()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&qword_10191F218);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_1000CE6B8(&qword_101926078);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-v7];
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v10 = type metadata accessor for HomePlaceCollectionViewCell();
  v18.receiver = v1;
  v18.super_class = v10;
  objc_msgSendSuper2(&v18, "_bridgedUpdateConfigurationUsingState:", isa);

  v11 = OBJC_IVAR____TtC4Maps27HomePlaceCollectionViewCell_viewModel;
  swift_beginAccess();
  sub_1004D8B00(v1 + v11, v16);
  if (v16[0])
  {
    v12 = sub_1004D8A74(v16, v17);
    __chkstk_darwin(v12);
    *&v15[-16] = v17;
    *&v15[-8] = v1;
    sub_1004D89CC();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v16[3] = v5;
    v16[4] = sub_100533CA8();
    sub_10001A848(v16);
    UIHostingConfiguration.margins(_:_:)();
    (*(v6 + 8))(v8, v5);
    UICollectionViewCell.contentConfiguration.setter();
    sub_1004D8BCC(v17);
  }

  else
  {
    sub_100024F64(v16, &qword_10190B330);
  }

  static UIBackgroundConfiguration.listCell()();
  v13 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
  return UICollectionViewCell.backgroundConfiguration.setter();
}

uint64_t sub_100533A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10010F810(a1, a2);
  v3 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  *(a2 + 152) = sub_100533D0C;
  *(a2 + 160) = v3;
  return result;
}

void sub_100533A7C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong + OBJC_IVAR____TtC4Maps27HomePlaceCollectionViewCell_delegate;
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    v6 = *(v3 + 8);

    if (v5)
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(a1, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }
}

id sub_100533C10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePlaceCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100533CA8()
{
  result = qword_101926080;
  if (!qword_101926080)
  {
    sub_1000D6664(&qword_101926078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101926080);
  }

  return result;
}

unint64_t sub_100533D14()
{
  result = qword_10190D2F0;
  if (!qword_10190D2F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10190D2F0);
  }

  return result;
}

uint64_t sub_100533D60(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100533D78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_100533DC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100533E54@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v44 = type metadata accessor for PlaceCell();
  v36 = *(v44 - 8);
  __chkstk_darwin(v44);
  v35 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000CE6B8(&qword_101921F48);
  v38 = *(v45 - 8);
  __chkstk_darwin(v45);
  v37 = &v34 - v3;
  v41 = sub_1000CE6B8(&qword_101926088);
  __chkstk_darwin(v41);
  v43 = &v34 - v4;
  v39 = type metadata accessor for MapsDesignAccessibilityString();
  v5 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for GuideCell.GuideCellType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for GuideCell();
  v12 = *(v40 - 8);
  __chkstk_darwin(v40);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000CE6B8(&qword_101921F38);
  v15 = *(v42 - 8);
  __chkstk_darwin(v42);
  v17 = &v34 - v16;
  if (sub_1004D9270())
  {
    (*(v9 + 104))(v11, enum case for GuideCell.GuideCellType.small(_:), v8);
    v50 = &type metadata for HomeTwoLineCollectionCellViewModel;
    v51 = sub_1005347A4();
    v49 = swift_allocObject();
    sub_10010F810(v1, v49 + 16);
    sub_1005347F8(v1, &v47);
    v18 = swift_allocObject();
    sub_1004D8B70(&v47, v18 + 16);
    GuideCell.init(_:model:leadingCellActions:trailingCellActions:tapHandler:)();
    *v7 = 0x6564697547;
    v7[1] = 0xE500000000000000;
    v19 = v39;
    (*(v5 + 104))(v7, enum case for MapsDesignAccessibilityString.cell(_:), v39);
    v20 = sub_10053484C(&qword_101911FB0, &type metadata accessor for GuideCell);
    v21 = v40;
    View.mapsDesignAXCombinedContainer(withID:)();
    (*(v5 + 8))(v7, v19);
    (*(v12 + 8))(v14, v21);
    v22 = v42;
    (*(v15 + 16))(v43, v17, v42);
    swift_storeEnumTagMultiPayload();
    v47 = v21;
    v48 = v20;
    swift_getOpaqueTypeConformance2();
    v23 = sub_10053484C(&qword_10190D640, &type metadata accessor for PlaceCell);
    v47 = v44;
    v48 = v23;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v15 + 8))(v17, v22);
  }

  else
  {
    v50 = &type metadata for HomeTwoLineCollectionCellViewModel;
    v51 = sub_1005347A4();
    v49 = swift_allocObject();
    sub_10010F810(v1, v49 + 16);
    sub_1005347F8(v1, &v47);
    v25 = swift_allocObject();
    sub_1004D8B70(&v47, v25 + 16);
    v26 = v35;
    PlaceCell.init(model:tapHandler:)();
    *v7 = 0x6563616C50;
    v7[1] = 0xE500000000000000;
    v27 = v39;
    (*(v5 + 104))(v7, enum case for MapsDesignAccessibilityString.cell(_:), v39);
    v28 = sub_10053484C(&qword_10190D640, &type metadata accessor for PlaceCell);
    v29 = v37;
    v30 = v44;
    View.mapsDesignAXCombinedContainer(withID:)();
    (*(v5 + 8))(v7, v27);
    (*(v36 + 8))(v26, v30);
    v31 = v38;
    v32 = v45;
    (*(v38 + 16))(v43, v29, v45);
    swift_storeEnumTagMultiPayload();
    v33 = sub_10053484C(&qword_101911FB0, &type metadata accessor for GuideCell);
    v47 = v40;
    v48 = v33;
    swift_getOpaqueTypeConformance2();
    v47 = v30;
    v48 = v28;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v31 + 8))(v29, v32);
  }
}

uint64_t sub_100534744(uint64_t result)
{
  v1 = *(result + 152);
  if (v1)
  {
    sub_100098118(result, v2);
    v1(v2);
    return sub_100024F64(v2, &qword_101916000);
  }

  return result;
}

unint64_t sub_1005347A4()
{
  result = qword_101926090;
  if (!qword_101926090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101926090);
  }

  return result;
}

uint64_t sub_10053484C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100534894()
{
  sub_10004E3D0(v0 + 24);
  swift_unknownObjectWeakDestroy();
  if (*(v0 + 96))
  {
    sub_10004E3D0(v0 + 72);
  }

  if (*(v0 + 136))
  {
    sub_10004E3D0(v0 + 112);
  }

  swift_unknownObjectRelease();

  if (*(v0 + 168))
  {
  }

  return _swift_deallocObject(v0, 184, 7);
}

unint64_t sub_10053491C()
{
  result = qword_101926098;
  if (!qword_101926098)
  {
    sub_1000D6664(&qword_1019260A0);
    type metadata accessor for GuideCell();
    sub_10053484C(&qword_101911FB0, &type metadata accessor for GuideCell);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for PlaceCell();
    sub_10053484C(&qword_10190D640, &type metadata accessor for PlaceCell);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101926098);
  }

  return result;
}

id sub_100534AA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultsContextContaineeProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100534B00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v1(v2, v4);
}

void sub_100534B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = String._bridgeToObjectiveC()();
  (*(a3 + 16))(a3, v4);
}

void sub_100534BC4(void *a1)
{
  v10 = [a1 editSession];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_opt_self() sharedHelper];
    v4 = [v3 alertControllerForAttemptedAddCollection];

    if (!v4)
    {
      v6 = type metadata accessor for PlaceCardContextContainee.NewUserGuideModel();
      v7 = objc_allocWithZone(v6);
      *&v7[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee17NewUserGuideModel_saveSession] = v10;
      v11.receiver = v7;
      v11.super_class = v6;
      v8 = v10;
      v9 = objc_msgSendSuper2(&v11, "init");
      sub_1003C43C8(v9 | 0x8000000000000000);

      return;
    }

    v5 = v4;
    [v2 _maps_topMostPresentViewController:v5 animated:1 completion:0];
  }
}

void sub_100534E7C()
{
  v1 = *(v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  (*(v1 + 16))(v1, v2);
}

void sub_100534ED4(uint64_t a1, Swift::Void (__swiftcall *a2)(MKMapItem with), uint64_t a3)
{
  v6 = objc_opt_self();
  v16 = a2;
  v17 = a3;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100534B00;
  v15 = &unk_101620400;
  v7 = _Block_copy(&v12);

  v8 = [v6 _maps_viewControllerForRenamingMapItem:a1 saveHandler:v7 cancelHandler:0];
  _Block_release(v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v16 = UIView.annotateView(with:);
    v17 = 0;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_100039C64;
    v15 = &unk_101620428;
    v11 = _Block_copy(&v12);
    [v10 _maps_topMostPresentViewController:v8 animated:1 completion:v11];
    _Block_release(v11);
  }
}

uint64_t sub_100535070@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100536228();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001012EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10053512C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001012CC;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100536228();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100535258@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100536228();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001012EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100535314(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001012CC;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100536228();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100535440@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100536228();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001012EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1005354FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001012CC;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100536228();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100535628@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100536228();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 88);
  v5 = *(v3 + 96);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1005356E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100536228();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

unint64_t sub_100535858@<X0>(void *a1@<X8>)
{
  type metadata accessor for ARPHistoryViewModel();

  State.init(wrappedValue:)();
  a1[3] = &type metadata for ARPHistoryView;
  result = sub_1005361CC();
  a1[4] = result;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1005359A8()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  sub_100536228();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_100535D48(void *a1)
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
      v6 = [a1 mapItem];
      [v5 ratingsHistoryContaineeViewController:v3 didSelect:v6];

      swift_unknownObjectRelease();
      v3 = v6;
    }
  }
}

void sub_100535E00()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();

    v3 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v2];

    if (v3)
    {
      [v3 setPresentingViewController:v1];
    }

    [v3 present];
  }
}

void sub_100535ED4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      [v2 ratingsHistoryContaineeViewControllerOpenOfflineSettings:v1];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_10053611C()
{
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps33ARPHistoryContaineeViewController_actionDelegate);
}

unint64_t sub_1005361CC()
{
  result = qword_101926168;
  if (!qword_101926168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101926168);
  }

  return result;
}

unint64_t sub_100536228()
{
  result = qword_10191AE88;
  if (!qword_10191AE88)
  {
    type metadata accessor for ARPHistoryViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191AE88);
  }

  return result;
}

void sub_100536470()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong currentTraits];

    return;
  }

  v2 = [objc_opt_self() sharedService];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v2 defaultTraits];

  if (!v4)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_10053651C(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__isActive);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__isActive) = v2;

    return sub_100537688(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10053BE64(&qword_1019098F8, type metadata accessor for MyRecentsViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100536658@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10053BE64(&qword_1019098F8, type metadata accessor for MyRecentsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC4Maps18MyRecentsViewModel__currentState;
  swift_beginAccess();
  return sub_10053BBB4(v5 + v3, a1, type metadata accessor for MyRecentsViewModel.State);
}

uint64_t sub_100536734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  __chkstk_darwin(v7 - 8);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10053BBB4(a1, v9, type metadata accessor for MyRecentsDataProvider.Recent);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23[0] = v13;
    *v12 = 136315138;
    type metadata accessor for UUID();
    sub_10053BE64(&qword_101915A98, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_10053BC1C(v9, type metadata accessor for MyRecentsDataProvider.Recent);
    v17 = sub_10004DEB8(v14, v16, v23);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Did tap recent %s", v12, 0xCu);
    sub_10004E3D0(v13);
  }

  else
  {

    v18 = sub_10053BC1C(v9, type metadata accessor for MyRecentsDataProvider.Recent);
  }

  __chkstk_darwin(v18);
  v23[-2] = a1;
  result = sub_1005252B4(sub_10053BFDC, &v23[-4], a3);
  if ((v20 & 1) == 0)
  {
    v21 = result;
    swift_getKeyPath();
    v23[0] = v4;
    sub_10053BE64(&qword_1019098F8, type metadata accessor for MyRecentsViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = *(v4 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__onSelect);
    if (v22)
    {

      v22(a1, v21);
      return sub_1000588AC(v22);
    }
  }

  return result;
}

uint64_t sub_100536A48()
{
  swift_getKeyPath();
  sub_10053BE64(&qword_1019098F8, type metadata accessor for MyRecentsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__generationCountForAnimation);
}

uint64_t sub_100536AF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10053BE64(&qword_1019098F8, type metadata accessor for MyRecentsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps18MyRecentsViewModel__currentState;
  swift_beginAccess();
  return sub_10053BBB4(v3 + v4, a2, type metadata accessor for MyRecentsViewModel.State);
}

uint64_t sub_100536BCC(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for MyRecentsViewModel.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10053BBB4(a1, v6, type metadata accessor for MyRecentsViewModel.State);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_10053BE64(&qword_1019098F8, type metadata accessor for MyRecentsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10053BC1C(v6, type metadata accessor for MyRecentsViewModel.State);
}

uint64_t sub_100536D18(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC4Maps18MyRecentsViewModel__currentState;
  swift_beginAccess();
  sub_10053BB40(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100536D84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10053BE64(&qword_1019098F8, type metadata accessor for MyRecentsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__generationCountForAnimation);
  return result;
}

uint64_t sub_100536E5C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__generationCountForAnimation) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10053BE64(&qword_1019098F8, type metadata accessor for MyRecentsViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100537070(uint64_t a1, void *a2, void (*a3)(void, void))
{
  swift_getKeyPath();
  sub_10053BE64(&qword_1019098F8, type metadata accessor for MyRecentsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v3 + *a2);
  v7 = *v6;
  a3(*v6, v6[1]);
  return v7;
}

uint64_t sub_100537138@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10053BE64(&qword_1019098F8, type metadata accessor for MyRecentsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__onShare);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__onShare + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10053BF04;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100537230(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D878C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10053BE64(&qword_1019098F8, type metadata accessor for MyRecentsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1005373D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = (a1 + *a4);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a2;
  v7[1] = a3;
  a5(a2, a3);
  return a6(v8, v9);
}

uint64_t sub_100537434(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__onClose);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__onSelect);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__onShare);
  *v5 = 0;
  v5[1] = 0;
  ObservationRegistrar.init()();
  v6 = type metadata accessor for MyRecentsDataProvider(0);
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_continuation;
  v9 = sub_1000CE6B8(&unk_101911600);
  (*(*(v9 - 8) + 56))(&v7[v8], 1, 1, v9);
  v7[OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_includeRecentSearches] = a1;
  v10 = [objc_allocWithZone(RecentsDataProvider) init];
  *&v7[OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_recentsDataProvider] = v10;
  *&v7[OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_recentsDataFilter] = 0;
  v18.receiver = v7;
  v18.super_class = v6;
  v11 = objc_msgSendSuper2(&v18, "init");
  v12 = *&v11[OBJC_IVAR____TtC4Maps21MyRecentsDataProvider_recentsDataProvider];
  v13 = v11;
  v14 = [v12 observers];
  [v14 registerObserver:v13];

  *(v1 + 16) = v13;
  *(v1 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__isActive) = 0;
  sub_1000588AC(*v3);
  *v3 = 0;
  v3[1] = 0;
  sub_1000588AC(*v4);
  *v4 = 0;
  v4[1] = 0;
  type metadata accessor for MyRecentsViewModel.State(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__generationCountForAnimation) = 0;
  if (qword_101906930 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_100021540(v15, qword_1019261D0);
  (*(*(v15 - 8) + 16))(v1 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel_logger, v16, v15);
  return v1;
}

uint64_t sub_100537688(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v22 = &v21 - v5;
  v23 = sub_1000CE6B8(&qword_1019115B0);
  v21 = *(v23 - 8);
  v6 = *(v21 + 64);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  swift_getKeyPath();
  v24 = v1;
  sub_10053BE64(&qword_1019098F8, type metadata accessor for MyRecentsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC4Maps18MyRecentsViewModel__isActive;
  if (*(v1 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__isActive) != v3)
  {
    swift_getKeyPath();
    v24 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + v12) == 1)
    {
      sub_100273F80();
      v13 = type metadata accessor for TaskPriority();
      v14 = v22;
      (*(*(v13 - 8) + 56))(v22, 1, 1, v13);
      v15 = v21;
      v16 = v23;
      (*(v21 + 16))(v7, v10, v23);
      type metadata accessor for MainActor();

      v17 = static MainActor.shared.getter();
      v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      *(v20 + 24) = &protocol witness table for MainActor;
      (*(v15 + 32))(v20 + v18, v7, v16);
      *(v20 + v19) = v2;
      sub_10020AAE4(0, 0, v14, &unk_10120F560, v20);

      return (*(v15 + 8))(v10, v16);
    }

    else
    {
      return sub_1002743C4();
    }
  }

  return result;
}

uint64_t sub_1005379C8()
{
  swift_getKeyPath();
  sub_10053BE64(&qword_1019098F8, type metadata accessor for MyRecentsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__isActive);
}

uint64_t sub_100537A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[10] = type metadata accessor for MyRecentsViewModel.State(0);
  v5[11] = swift_task_alloc();
  sub_1000CE6B8(&qword_10190CC68);
  v5[12] = swift_task_alloc();
  v6 = type metadata accessor for EmptyStateViewModel.Icon();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = type metadata accessor for EmptyStateViewModel();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v8 = sub_1000CE6B8(&qword_1019115B8);
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for MainActor();
  v5[23] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[24] = v10;
  v5[25] = v9;

  return _swift_task_switch(sub_100537C94, v10, v9);
}

uint64_t sub_100537C94()
{
  sub_1000CE6B8(&qword_1019115B0);
  AsyncStream.makeAsyncIterator()();
  v1 = OBJC_IVAR____TtC4Maps18MyRecentsViewModel__generationCountForAnimation;
  *(v0 + 208) = OBJC_IVAR____TtC4Maps18MyRecentsViewModel___observationRegistrar;
  *(v0 + 216) = v1;
  *(v0 + 248) = enum case for EmptyStateViewModel.Icon.systemIcon(_:);
  *(v0 + 224) = 0;
  v2 = static MainActor.shared.getter();
  *(v0 + 232) = v2;
  v3 = swift_task_alloc();
  *(v0 + 240) = v3;
  *v3 = v0;
  v3[1] = sub_100537D9C;
  v4 = *(v0 + 152);

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, v2, &protocol witness table for MainActor, v4);
}

uint64_t sub_100537D9C()
{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return _swift_task_switch(sub_100537EE0, v3, v2);
}

uint64_t sub_100537EE0()
{
  if (*(v0 + 16))
  {
    sub_100538524(*(v0 + 16));
    v2 = v1;

    if (!*(v2 + 16))
    {
      v9 = *(v0 + 248);
      v11 = *(v0 + 112);
      v10 = *(v0 + 120);
      v12 = *(v0 + 104);

      *v10 = 0x6B636F6C63;
      v10[1] = 0xE500000000000000;
      (*(v11 + 104))(v10, v9, v12);
      if (qword_101906768 != -1)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    v3 = *(v0 + 224);
    v4 = *(v0 + 88);
    v5 = *(v0 + 72);
    *v4 = v2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    *(v0 + 24) = v5;
    sub_10053BE64(&qword_1019098F8, type metadata accessor for MyRecentsViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    while (1)
    {

      sub_10053BC1C(v4, type metadata accessor for MyRecentsViewModel.State);
      v21 = *(v0 + 216);
      v22 = *(v0 + 72);
      swift_getKeyPath();
      *(v0 + 32) = v22;
      sub_10053BE64(&qword_1019098F8, type metadata accessor for MyRecentsViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v0 + 40) = v22;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v23 = *(v22 + v21);
      v24 = __CFADD__(v23, 1);
      v25 = v23 + 1;
      if (!v24)
      {
        break;
      }

      __break(1u);
LABEL_14:
      swift_once();
LABEL_8:
      v34 = *(v0 + 224);
      v30 = *(v0 + 144);
      v31 = *(v0 + 136);
      v32 = *(v0 + 128);
      v4 = *(v0 + 88);
      v13 = *(v0 + 96);
      v33 = *(v0 + 72);
      v14.super.isa = qword_1019600D8;
      v36._object = 0x8000000101240230;
      v15._countAndFlagsBits = 0xD00000000000001BLL;
      v15._object = 0x8000000101240210;
      v16._object = 0x8000000101235D60;
      v36._countAndFlagsBits = 0xD000000000000022;
      v16._countAndFlagsBits = 0xD000000000000010;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, qword_1019600D8, v16, v36);
      v37._object = 0x80000001012402D0;
      v17._countAndFlagsBits = 0xD000000000000021;
      v17._object = 0x8000000101240260;
      v18._countAndFlagsBits = 0xD00000000000003FLL;
      v18._object = 0x8000000101240290;
      v37._countAndFlagsBits = 0xD00000000000002DLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v14, v18, v37);
      v19 = type metadata accessor for EmptyStateViewModel.ButtonConfig();
      (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
      EmptyStateViewModel.init(icon:title:details:button:)();
      (*(v31 + 16))(v4, v30, v32);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      v20 = swift_task_alloc();
      *(v20 + 16) = v33;
      *(v20 + 24) = v4;
      *(v0 + 56) = v33;
      sub_10053BE64(&qword_1019098F8, type metadata accessor for MyRecentsViewModel);
      v3 = v34;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      (*(v31 + 8))(v30, v32);
    }

    v26 = *(v0 + 72);
    *(v26 + *(v0 + 216)) = v25;
    *(v0 + 48) = v26;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    *(v0 + 224) = v3;
    v27 = static MainActor.shared.getter();
    *(v0 + 232) = v27;
    v28 = swift_task_alloc();
    *(v0 + 240) = v28;
    *v28 = v0;
    v28[1] = sub_100537D9C;
    v29 = *(v0 + 152);

    return AsyncStream.Iterator.next(isolation:)(v0 + 16, v27, &protocol witness table for MainActor, v29);
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

    v7 = *(v0 + 8);

    return v7();
  }
}

void sub_100538524(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v251 = *(v2 - 8);
  __chkstk_darwin(v2);
  v243 = &v208 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RecentCellRowViewModel(0);
  v240 = *(v4 - 8);
  v241 = v4;
  __chkstk_darwin(v4);
  v229 = &v208 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v238 = &v208 - v7;
  __chkstk_darwin(v8);
  v217 = &v208 - v9;
  __chkstk_darwin(v10);
  v220 = &v208 - v11;
  __chkstk_darwin(v12);
  v212 = &v208 - v13;
  __chkstk_darwin(v14);
  v213 = &v208 - v15;
  __chkstk_darwin(v16);
  v18 = &v208 - v17;
  __chkstk_darwin(v19);
  v219 = &v208 - v20;
  __chkstk_darwin(v21);
  v237 = &v208 - v22;
  __chkstk_darwin(v23);
  v233 = &v208 - v24;
  v25 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v235 = &v208 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v216 = &v208 - v29;
  __chkstk_darwin(v30);
  v211 = &v208 - v31;
  __chkstk_darwin(v32);
  v214 = &v208 - v33;
  __chkstk_darwin(v34);
  v228 = &v208 - v35;
  __chkstk_darwin(v36);
  v248 = &v208 - v37;
  v38 = type metadata accessor for Date();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v234 = &v208 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v246 = &v208 - v42;
  __chkstk_darwin(v43);
  v45 = &v208 - v44;
  v209 = type metadata accessor for Calendar();
  v208 = *(v209 - 8);
  __chkstk_darwin(v209);
  v236 = &v208 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v227 = v45;
  Date.init()();
  v245 = swift_allocObject();
  swift_weakInit();
  v244 = swift_allocObject();
  swift_weakInit();
  v47 = *(a1 + 16);
  v247 = v38;
  v210 = v39;
  if (!v47)
  {
    v49 = _swiftEmptyArrayStorage;
    v222 = _swiftEmptyArrayStorage;
    v218 = _swiftEmptyArrayStorage;
    v242 = _swiftEmptyArrayStorage;
LABEL_73:
    v188 = v49;
    if (v242[2])
    {
      v189 = sub_100358AF0(0, 1, 1, _swiftEmptyArrayStorage);
      v191 = *(v189 + 2);
      v190 = *(v189 + 3);
      v192 = v210;
      v193 = v236;
      v194 = v218;
      v195 = v222;
      v196 = v227;
      if (v191 >= v190 >> 1)
      {
        v189 = sub_100358AF0((v190 > 1), v191 + 1, 1, v189);
      }

      *(v189 + 2) = v191 + 1;
      v197 = &v189[16 * v191];
      v197[32] = 0;
      *(v197 + 5) = v242;
      if (v195[2])
      {
        goto LABEL_77;
      }
    }

    else
    {

      v189 = _swiftEmptyArrayStorage;
      v192 = v210;
      v193 = v236;
      v194 = v218;
      v195 = v222;
      v196 = v227;
      if (v222[2])
      {
LABEL_77:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v189 = sub_100358AF0(0, *(v189 + 2) + 1, 1, v189);
        }

        v199 = *(v189 + 2);
        v198 = *(v189 + 3);
        if (v199 >= v198 >> 1)
        {
          v189 = sub_100358AF0((v198 > 1), v199 + 1, 1, v189);
        }

        *(v189 + 2) = v199 + 1;
        v200 = &v189[16 * v199];
        v200[32] = 1;
        *(v200 + 5) = v195;
LABEL_84:
        v201 = v247;
        if (v194[2])
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v189 = sub_100358AF0(0, *(v189 + 2) + 1, 1, v189);
          }

          v203 = *(v189 + 2);
          v202 = *(v189 + 3);
          if (v203 >= v202 >> 1)
          {
            v189 = sub_100358AF0((v202 > 1), v203 + 1, 1, v189);
          }

          *(v189 + 2) = v203 + 1;
          v204 = &v189[16 * v203];
          v204[32] = 2;
          *(v204 + 5) = v194;
          if (v188[2])
          {
            goto LABEL_90;
          }
        }

        else
        {

          if (v188[2])
          {
LABEL_90:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v189 = sub_100358AF0(0, *(v189 + 2) + 1, 1, v189);
            }

            v206 = *(v189 + 2);
            v205 = *(v189 + 3);
            if (v206 >= v205 >> 1)
            {
              v189 = sub_100358AF0((v205 > 1), v206 + 1, 1, v189);
            }

            (*(v192 + 8))(v196, v201);
            (*(v208 + 8))(v193, v209);
            *(v189 + 2) = v206 + 1;
            v207 = &v189[16 * v206];
            v207[32] = 3;
            *(v207 + 5) = v188;
            return;
          }
        }

        (*(v192 + 8))(v196, v201);
        (*(v208 + 8))(v193, v209);

        return;
      }
    }

    goto LABEL_84;
  }

  v249 = v25;
  v221 = v18;
  v48 = a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
  v232 = (v39 + 32);
  v225 = enum case for Calendar.Component.weekOfYear(_:);
  v224 = (v251 + 104);
  v223 = (v251 + 8);
  v215 = enum case for Calendar.Component.month(_:);
  v231 = (v39 + 8);
  v239 = *(v26 + 72);
  v49 = _swiftEmptyArrayStorage;
  v222 = _swiftEmptyArrayStorage;
  v218 = _swiftEmptyArrayStorage;
  v242 = _swiftEmptyArrayStorage;
  v226 = v2;
  v50 = v243;
  v51 = v237;
  v52 = v235;
  v53 = v248;
  while (1)
  {
    v250 = v48;
    v251 = v47;
    sub_10053BBB4(v48, v53, type metadata accessor for MyRecentsDataProvider.Recent);
    v57 = v249;
    v58 = [objc_msgSend(*(v53 + *(v249 + 20)) "mspHistoryEntry")];
    swift_unknownObjectRelease();
    if (!v58)
    {
      break;
    }

    v59 = v49;
    v60 = v234;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*v232)(v246, v60, v247);
    if (Calendar.isDateInToday(_:)())
    {
      v61 = v228;
      sub_10053BBB4(v53, v228, type metadata accessor for MyRecentsDataProvider.Recent);
      *(v51 + 32) = 0;
      *v51 = 0u;
      *(v51 + 16) = 0u;
      v62 = v241;
      v63 = v241[9];
      *(v51 + v63) = 0;
      sub_10053BBB4(v61, v51 + v62[5], type metadata accessor for MyRecentsDataProvider.Recent);
      v64 = (v51 + v62[6]);
      v66 = v244;
      v65 = v245;
      *v64 = sub_10053BBA4;
      v64[1] = v65;
      v67 = (v51 + v62[7]);
      *v67 = sub_10053BBAC;
      v67[1] = v66;
      v68 = objc_opt_self();
      v69 = v249;
      v70 = *(v61 + *(v249 + 20));

      v71 = [v68 cellModelForHistoryEntryRecentsItemProtocol:v70 showAutocompleteClientSource:0];
      if (!v71)
      {
        goto LABEL_98;
      }

      *(v51 + v62[8]) = v71;
      v253 = &type metadata for TwoLinesContentImageProvider;
      v72 = v71;
      v254 = sub_1004DB04C();
      v252 = v72;
      swift_unknownObjectRetain();
      sub_100203FCC(&v252, v51);
      v73 = v61 + *(v69 + 24);
      if (*(v73 + 8) == 1)
      {
        v74 = *v73;
        v75 = [swift_unknownObjectRetain() endWaypoint];
        objc_opt_self();
        v76 = swift_dynamicCastObjCClass();
        v49 = v59;
        if (v76)
        {
          v77 = [v76 route];
          v78 = [v77 persistentData];

          v52 = v235;
          if (!v78)
          {
            goto LABEL_102;
          }

          type metadata accessor for RouteItem();
          swift_allocObject();
          sub_1004EB10C(v78);
          v80 = v79;

          sub_1000D87F0(v74, 1u);
          sub_10053BC1C(v228, type metadata accessor for MyRecentsDataProvider.Recent);
          *(v51 + v63) = v80;
          v50 = v243;
          goto LABEL_46;
        }

        sub_1000D87F0(v74, 1u);
        sub_10053BC1C(v228, type metadata accessor for MyRecentsDataProvider.Recent);
        v50 = v243;
      }

      else
      {
        sub_10053BC1C(v61, type metadata accessor for MyRecentsDataProvider.Recent);
        v50 = v243;
        v49 = v59;
      }

      v52 = v235;
LABEL_46:
      sub_10053BD04(v51, v233, type metadata accessor for RecentCellRowViewModel);
      v178 = v242;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v248;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v178 = sub_100358C18(0, v178[2] + 1, 1, v178);
      }

      v176 = v178[2];
      v180 = v178[3];
      v242 = v178;
      v177 = v176 + 1;
      if (v176 >= v180 >> 1)
      {
        v242 = sub_100358C18(v180 > 1, v176 + 1, 1, v242);
      }

      (*v231)(v246, v247);
      v54 = v242;
      v55 = &v255;
      goto LABEL_4;
    }

    v230 = v59;
    v102 = *v224;
    v103 = v226;
    (*v224)(v50, v225, v226);
    v104 = Calendar.compare(_:to:toGranularity:)();
    v105 = *v223;
    (*v223)(v50, v103);
    if (v104)
    {
      v102(v50, v215, v103);
      v106 = Calendar.compare(_:to:toGranularity:)();
      v105(v50, v103);
      if (v106)
      {
        v107 = v216;
        sub_10053BBB4(v248, v216, type metadata accessor for MyRecentsDataProvider.Recent);
        v108 = v217;
        *(v217 + 4) = 0;
        *v108 = 0u;
        v108[1] = 0u;
        v109 = v241;
        v110 = v241[9];
        *(v108 + v110) = 0;
        sub_10053BBB4(v107, v108 + v109[5], type metadata accessor for MyRecentsDataProvider.Recent);
        v111 = (v108 + v109[6]);
        v113 = v244;
        v112 = v245;
        *v111 = sub_10053BBA4;
        v111[1] = v112;
        v114 = (v108 + v109[7]);
        *v114 = sub_10053BBAC;
        v114[1] = v113;
        v115 = objc_opt_self();
        v116 = v249;
        v117 = *(v107 + *(v249 + 20));

        v118 = [v115 cellModelForHistoryEntryRecentsItemProtocol:v117 showAutocompleteClientSource:0];
        v119 = v230;
        v120 = v235;
        if (!v118)
        {
          goto LABEL_99;
        }

        *(v108 + v109[8]) = v118;
        v253 = &type metadata for TwoLinesContentImageProvider;
        v121 = v118;
        v254 = sub_1004DB04C();
        v252 = v121;
        swift_unknownObjectRetain();
        sub_100203FCC(&v252, v108);
        v122 = v107 + *(v116 + 24);
        if (*(v122 + 8) == 1)
        {
          v123 = *v122;
          v124 = [swift_unknownObjectRetain() endWaypoint];
          objc_opt_self();
          v125 = swift_dynamicCastObjCClass();
          v49 = v119;
          if (v125)
          {
            v126 = [v125 route];
            v127 = [v126 persistentData];

            if (!v127)
            {
              goto LABEL_104;
            }

            v52 = v120;
            type metadata accessor for RouteItem();
            swift_allocObject();
            sub_1004EB10C(v127);
            v129 = v128;

            sub_1000D87F0(v123, 1u);
            sub_10053BC1C(v216, type metadata accessor for MyRecentsDataProvider.Recent);
            v108 = v217;
            *&v217[v110] = v129;
            v50 = v243;
LABEL_53:
            sub_10053BD04(v108, v220, type metadata accessor for RecentCellRowViewModel);
            v182 = swift_isUniquelyReferenced_nonNull_native();
            v53 = v248;
            if ((v182 & 1) == 0)
            {
              v49 = sub_100358C18(0, v49[2] + 1, 1, v49);
            }

            v51 = v237;
            v176 = v49[2];
            v183 = v49[3];
            v177 = v176 + 1;
            if (v176 >= v183 >> 1)
            {
              v49 = sub_100358C18(v183 > 1, v176 + 1, 1, v49);
            }

            (*v231)(v246, v247);
            v54 = v49;
            v55 = &v252;
LABEL_4:
            v56 = *(v55 - 32);
            goto LABEL_5;
          }

          sub_1000D87F0(v123, 1u);
          sub_10053BC1C(v216, type metadata accessor for MyRecentsDataProvider.Recent);
          v50 = v243;
          v108 = v217;
        }

        else
        {
          sub_10053BC1C(v107, type metadata accessor for MyRecentsDataProvider.Recent);
          v50 = v243;
          v49 = v119;
        }

        v52 = v120;
        goto LABEL_53;
      }

      v152 = v211;
      sub_10053BBB4(v248, v211, type metadata accessor for MyRecentsDataProvider.Recent);
      v153 = v212;
      *(v212 + 4) = 0;
      *v153 = 0u;
      v153[1] = 0u;
      v154 = v241;
      v155 = v241[9];
      *(v153 + v155) = 0;
      sub_10053BBB4(v152, v153 + v154[5], type metadata accessor for MyRecentsDataProvider.Recent);
      v156 = (v153 + v154[6]);
      v158 = v244;
      v157 = v245;
      *v156 = sub_10053BBA4;
      v156[1] = v157;
      v159 = (v153 + v154[7]);
      *v159 = sub_10053BBAC;
      v159[1] = v158;
      v160 = objc_opt_self();
      v161 = v249;
      v162 = *(v152 + *(v249 + 20));

      v163 = [v160 cellModelForHistoryEntryRecentsItemProtocol:v162 showAutocompleteClientSource:0];
      v52 = v235;
      if (!v163)
      {
        goto LABEL_103;
      }

      *(v153 + v154[8]) = v163;
      v253 = &type metadata for TwoLinesContentImageProvider;
      v164 = v163;
      v254 = sub_1004DB04C();
      v252 = v164;
      swift_unknownObjectRetain();
      sub_100203FCC(&v252, v153);
      v165 = v152 + *(v161 + 24);
      if (*(v165 + 8) == 1)
      {
        v166 = *v165;
        v167 = [swift_unknownObjectRetain() endWaypoint];
        objc_opt_self();
        v168 = swift_dynamicCastObjCClass();
        v169 = v218;
        if (v168)
        {
          v170 = [v168 route];
          v171 = [v170 persistentData];

          if (!v171)
          {
            goto LABEL_106;
          }

          type metadata accessor for RouteItem();
          swift_allocObject();
          sub_1004EB10C(v171);
          v173 = v172;

          sub_1000D87F0(v166, 1u);
          sub_10053BC1C(v211, type metadata accessor for MyRecentsDataProvider.Recent);
          v153 = v212;
          *&v212[v155] = v173;
          v50 = v243;
        }

        else
        {

          sub_1000D87F0(v166, 1u);
          sub_10053BC1C(v211, type metadata accessor for MyRecentsDataProvider.Recent);
          v50 = v243;
          v153 = v212;
        }
      }

      else
      {
        sub_10053BC1C(v152, type metadata accessor for MyRecentsDataProvider.Recent);
        v50 = v243;
        v169 = v218;
      }

      sub_10053BD04(v153, v213, type metadata accessor for RecentCellRowViewModel);
      v186 = swift_isUniquelyReferenced_nonNull_native();
      v53 = v248;
      if ((v186 & 1) == 0)
      {
        v169 = sub_100358C18(0, v169[2] + 1, 1, v169);
      }

      v51 = v237;
      v176 = v169[2];
      v187 = v169[3];
      v177 = v176 + 1;
      if (v176 >= v187 >> 1)
      {
        v169 = sub_100358C18(v187 > 1, v176 + 1, 1, v169);
      }

      (*v231)(v246, v247);
      v218 = v169;
      v54 = v169;
      v56 = v213;
      v49 = v230;
    }

    else
    {
      v130 = v214;
      sub_10053BBB4(v248, v214, type metadata accessor for MyRecentsDataProvider.Recent);
      v131 = v221;
      *(v221 + 4) = 0;
      *v131 = 0u;
      v131[1] = 0u;
      v132 = v241;
      v133 = v241[9];
      *(v131 + v133) = 0;
      sub_10053BBB4(v130, v131 + v132[5], type metadata accessor for MyRecentsDataProvider.Recent);
      v134 = (v131 + v132[6]);
      v136 = v244;
      v135 = v245;
      *v134 = sub_10053BBA4;
      v134[1] = v135;
      v137 = (v131 + v132[7]);
      *v137 = sub_10053BBAC;
      v137[1] = v136;
      v138 = objc_opt_self();
      v139 = v249;
      v140 = *(v130 + *(v249 + 20));

      v141 = [v138 cellModelForHistoryEntryRecentsItemProtocol:v140 showAutocompleteClientSource:0];
      if (!v141)
      {
        goto LABEL_100;
      }

      *(v131 + v132[8]) = v141;
      v253 = &type metadata for TwoLinesContentImageProvider;
      v142 = v141;
      v254 = sub_1004DB04C();
      v252 = v142;
      swift_unknownObjectRetain();
      sub_100203FCC(&v252, v131);
      v143 = v130 + *(v139 + 24);
      v144 = v230;
      v52 = v235;
      if (*(v143 + 8) == 1)
      {
        v145 = *v143;
        v146 = [swift_unknownObjectRetain() endWaypoint];
        objc_opt_self();
        v147 = swift_dynamicCastObjCClass();
        v51 = v237;
        v181 = v222;
        if (v147)
        {
          v148 = [v147 route];
          v149 = [v148 persistentData];

          if (!v149)
          {
            goto LABEL_105;
          }

          type metadata accessor for RouteItem();
          swift_allocObject();
          sub_1004EB10C(v149);
          v151 = v150;

          sub_1000D87F0(v145, 1u);
          sub_10053BC1C(v214, type metadata accessor for MyRecentsDataProvider.Recent);
          *&v221[v133] = v151;
        }

        else
        {

          sub_1000D87F0(v145, 1u);
          sub_10053BC1C(v214, type metadata accessor for MyRecentsDataProvider.Recent);
        }

        v50 = v243;
      }

      else
      {
        sub_10053BC1C(v130, type metadata accessor for MyRecentsDataProvider.Recent);
        v50 = v243;
        v51 = v237;
        v181 = v222;
      }

      sub_10053BD04(v221, v219, type metadata accessor for RecentCellRowViewModel);
      v184 = swift_isUniquelyReferenced_nonNull_native();
      v53 = v248;
      if ((v184 & 1) == 0)
      {
        v181 = sub_100358C18(0, v181[2] + 1, 1, v181);
      }

      v176 = v181[2];
      v185 = v181[3];
      v177 = v176 + 1;
      if (v176 >= v185 >> 1)
      {
        v181 = sub_100358C18(v185 > 1, v176 + 1, 1, v181);
      }

      (*v231)(v246, v247);
      v222 = v181;
      v54 = v181;
      v56 = v219;
      v49 = v144;
    }

LABEL_5:
    v54[2] = v177;
    sub_10053BD04(v56, v54 + ((*(v240 + 80) + 32) & ~*(v240 + 80)) + *(v240 + 72) * v176, type metadata accessor for RecentCellRowViewModel);
    sub_10053BC1C(v53, type metadata accessor for MyRecentsDataProvider.Recent);
    v48 = v250 + v239;
    v47 = v251 - 1;
    if (v251 == 1)
    {
      goto LABEL_73;
    }
  }

  v81 = v49;
  sub_10053BBB4(v53, v52, type metadata accessor for MyRecentsDataProvider.Recent);
  v82 = v229;
  *(v229 + 4) = 0;
  *v82 = 0u;
  v82[1] = 0u;
  v83 = v52;
  v84 = v241;
  v85 = v241[9];
  *(v82 + v85) = 0;
  sub_10053BBB4(v83, v82 + v84[5], type metadata accessor for MyRecentsDataProvider.Recent);
  v86 = (v82 + v84[6]);
  v88 = v244;
  v87 = v245;
  *v86 = sub_10053BBA4;
  v86[1] = v87;
  v89 = (v82 + v84[7]);
  *v89 = sub_10053BBAC;
  v89[1] = v88;
  v90 = objc_opt_self();
  v91 = *(v83 + *(v57 + 20));

  v92 = [v90 cellModelForHistoryEntryRecentsItemProtocol:v91 showAutocompleteClientSource:0];
  if (v92)
  {
    *(v82 + v84[8]) = v92;
    v253 = &type metadata for TwoLinesContentImageProvider;
    v93 = v92;
    v254 = sub_1004DB04C();
    v252 = v93;
    swift_unknownObjectRetain();
    sub_100203FCC(&v252, v82);
    v94 = v83 + *(v57 + 24);
    v52 = v83;
    if (*(v94 + 8) == 1)
    {
      v95 = *v94;
      v96 = [swift_unknownObjectRetain() endWaypoint];
      objc_opt_self();
      v97 = swift_dynamicCastObjCClass();
      if (v97)
      {
        v98 = [v97 route];
        v99 = [v98 persistentData];

        if (!v99)
        {
          goto LABEL_101;
        }

        type metadata accessor for RouteItem();
        swift_allocObject();
        sub_1004EB10C(v99);
        v101 = v100;

        sub_1000D87F0(v95, 1u);
        sub_10053BC1C(v83, type metadata accessor for MyRecentsDataProvider.Recent);
        v82 = v229;
        *&v229[v85] = v101;
        v50 = v243;
      }

      else
      {

        sub_1000D87F0(v95, 1u);
        sub_10053BC1C(v83, type metadata accessor for MyRecentsDataProvider.Recent);
        v50 = v243;
        v82 = v229;
      }
    }

    else
    {
      sub_10053BC1C(v83, type metadata accessor for MyRecentsDataProvider.Recent);
      v50 = v243;
    }

    sub_10053BD04(v82, v238, type metadata accessor for RecentCellRowViewModel);
    v49 = v81;
    v174 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v248;
    if ((v174 & 1) == 0)
    {
      v49 = sub_100358C18(0, v81[2] + 1, 1, v81);
    }

    v51 = v237;
    v176 = v49[2];
    v175 = v49[3];
    v177 = v176 + 1;
    if (v176 >= v175 >> 1)
    {
      v54 = sub_100358C18(v175 > 1, v176 + 1, 1, v49);
      v56 = v238;
      v49 = v54;
    }

    else
    {
      v54 = v49;
      v56 = v238;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
}

uint64_t sub_10053A0EC(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__isActive);
  *(a1 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__isActive) = a2;
  return sub_100537688(v3);
}

uint64_t sub_10053A128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 128) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  *(v6 + 32) = *(type metadata accessor for MyRecentsDataProvider.Recent(0) - 8);
  *(v6 + 40) = swift_task_alloc();
  v7 = type metadata accessor for RecentCellRowViewModel(0);
  *(v6 + 48) = v7;
  *(v6 + 56) = *(v7 - 8);
  *(v6 + 64) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 72) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 80) = v9;
  *(v6 + 88) = v8;

  return _swift_task_switch(sub_10053A278, v9, v8);
}

uint64_t sub_10053A278()
{
  v30 = v0;
  *(v0 + 96) = OBJC_IVAR____TtC4Maps18MyRecentsViewModel_logger;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 128);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v29 = v5;
    v6 = 0xE500000000000000;
    *v4 = 136315138;
    v7 = 0x7961646F74;
    v8 = 0xE900000000000068;
    v9 = 0x746E6F4D7473616CLL;
    if (v3 != 2)
    {
      v9 = 0x726574616CLL;
      v8 = 0xE500000000000000;
    }

    if (v3)
    {
      v7 = 0x6B6565577473616CLL;
      v6 = 0xE800000000000000;
    }

    if (v3 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    if (v3 <= 1)
    {
      v11 = v6;
    }

    else
    {
      v11 = v8;
    }

    v12 = sub_10004DEB8(v10, v11, &v29);

    *(v4 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Attempting to clear recents section %s", v4, 0xCu);
    sub_10004E3D0(v5);
  }

  v13 = *(v0 + 24);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = *(v0 + 56);
    v28 = *(v0 + 64);
    v16 = *(v0 + 32);
    v17 = *(*(v0 + 48) + 20);
    v18 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v19 = *(v15 + 72);
    v20 = _swiftEmptyArrayStorage;
    do
    {
      v21 = *(v0 + 64);
      v22 = *(v0 + 40);
      sub_10053BBB4(v18, v21, type metadata accessor for RecentCellRowViewModel);
      sub_10053BBB4(v28 + v17, v22, type metadata accessor for MyRecentsDataProvider.Recent);
      sub_10053BC1C(v21, type metadata accessor for RecentCellRowViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100355F8C(0, v20[2] + 1, 1, v20);
      }

      v24 = v20[2];
      v23 = v20[3];
      if (v24 >= v23 >> 1)
      {
        v20 = sub_100355F8C(v23 > 1, v24 + 1, 1, v20);
      }

      v25 = *(v0 + 40);
      v20[2] = v24 + 1;
      sub_10053BD04(v25, v20 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v24, type metadata accessor for MyRecentsDataProvider.Recent);
      v18 += v19;
      --v14;
    }

    while (v14);
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  *(v0 + 104) = v20;
  v26 = swift_task_alloc();
  *(v0 + 112) = v26;
  *v26 = v0;
  v26[1] = sub_10053A5D8;

  return sub_10027591C(v20);
}

uint64_t sub_10053A5D8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_10053A7E8;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_10053A6F4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10053A6F4()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully cleared recents section", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10053A7E8()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error with clearing recents %@", v3, 0xCu);
    sub_1000DCD10(v4);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10053A964(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10053BBB4(a1, v8, type metadata accessor for MyRecentsDataProvider.Recent);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    type metadata accessor for UUID();
    sub_10053BE64(&qword_101915A98, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_10053BC1C(v8, type metadata accessor for MyRecentsDataProvider.Recent);
    v16 = sub_10004DEB8(v13, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Did tap share recent %s", v11, 0xCu);
    sub_10004E3D0(v12);
  }

  else
  {

    sub_10053BC1C(v8, type metadata accessor for MyRecentsDataProvider.Recent);
  }

  swift_getKeyPath();
  v20 = v3;
  sub_10053BE64(&qword_1019098F8, type metadata accessor for MyRecentsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v3 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__onShare);
  if (v18)
  {

    v18(a1, a2);
    return sub_1000588AC(v18);
  }

  return result;
}

uint64_t sub_10053AC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = *(type metadata accessor for MyRecentsDataProvider.Recent(0) - 8);
  v5[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_10053AD14, v7, v6);
}

uint64_t sub_10053AD14()
{
  v21 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  *(v0 + 72) = OBJC_IVAR____TtC4Maps18MyRecentsViewModel_logger;
  sub_10053BBB4(v2, v1, type metadata accessor for MyRecentsDataProvider.Recent);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    type metadata accessor for UUID();
    sub_10053BE64(&qword_101915A98, &type metadata accessor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_10053BC1C(v6, type metadata accessor for MyRecentsDataProvider.Recent);
    v12 = sub_10004DEB8(v9, v11, &v20);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Attempting to delete recent %s", v7, 0xCu);
    sub_10004E3D0(v8);
  }

  else
  {

    sub_10053BC1C(v6, type metadata accessor for MyRecentsDataProvider.Recent);
  }

  v14 = *(v0 + 24);
  v13 = *(v0 + 32);
  sub_1000CE6B8(&qword_10191AE58);
  v15 = *(v13 + 80);
  *(v0 + 104) = v15;
  v16 = (v15 + 32) & ~v15;
  v17 = swift_allocObject();
  *(v0 + 80) = v17;
  *(v17 + 16) = xmmword_1011E1D30;
  sub_10053BBB4(v14, v17 + v16, type metadata accessor for MyRecentsDataProvider.Recent);
  v18 = swift_task_alloc();
  *(v0 + 88) = v18;
  *v18 = v0;
  v18[1] = sub_10053AFC8;

  return sub_10027591C(v17);
}

uint64_t sub_10053AFC8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_10053B210;
  }

  else
  {
    v6 = *(v2 + 80);
    v7 = (*(v2 + 104) + 32) & ~*(v2 + 104);
    swift_setDeallocating();
    sub_10053BC1C(v6 + v7, type metadata accessor for MyRecentsDataProvider.Recent);
    swift_deallocClassInstance();
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_10053B128;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10053B128()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfuly deleted recent", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10053B210()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);

  swift_setDeallocating();
  sub_10053BC1C(v2 + ((v1 + 32) & ~v1), type metadata accessor for MyRecentsDataProvider.Recent);
  swift_deallocClassInstance();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error with clearing recent %@", v5, 0xCu);
    sub_1000DCD10(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10053B3B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10053A964(a1, a2);
  }

  return result;
}

uint64_t sub_10053B42C(uint64_t a1)
{
  v2 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    sub_10053BBB4(a1, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MyRecentsDataProvider.Recent);
    type metadata accessor for MainActor();

    v12 = static MainActor.shared.getter();
    v13 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v14 = swift_allocObject();
    v14[2] = v12;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v10;
    sub_10053BD04(v5, v14 + v13, type metadata accessor for MyRecentsDataProvider.Recent);
    sub_10020AAE4(0, 0, v8, &unk_10120F5C8, v14);
  }

  return result;
}

uint64_t sub_10053B64C()
{
  v1 = OBJC_IVAR____TtC4Maps18MyRecentsViewModel_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10053BC1C(v0 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__currentState, type metadata accessor for MyRecentsViewModel.State);
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__onClose));
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__onSelect));
  sub_1000588AC(*(v0 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__onShare));
  v3 = OBJC_IVAR____TtC4Maps18MyRecentsViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_10053B7B8()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MyRecentsViewModel.State(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_10053B910()
{
  type metadata accessor for EmptyStateViewModel();
  if (v0 <= 0x3F)
  {
    sub_10053B984();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10053B984()
{
  if (!qword_101926398)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_101926398);
    }
  }
}

uint64_t sub_10053B9E4(uint64_t a1)
{
  v4 = *(sub_1000CE6B8(&qword_1019115B0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC40;

  return sub_100537A70(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10053BB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyRecentsViewModel.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10053BBB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10053BC1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10053BC7C()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_1019261D0);
  sub_100021540(v0, qword_1019261D0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10053BD04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10053BD6C(uint64_t a1)
{
  v4 = *(type metadata accessor for MyRecentsDataProvider.Recent(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC4C;

  return sub_10053AC24(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10053BE64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10053BEAC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__onShare);
  v4 = *v3;
  *v3 = v1;
  v3[1] = v2;
  sub_1000CD9D4(v1);
  return sub_1000588AC(v4);
}

uint64_t sub_10053BF30()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__isActive);
  *(v1 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__isActive) = *(v0 + 24);
  return sub_100537688(v2);
}

unint64_t sub_10053BF88()
{
  result = qword_1019263C8;
  if (!qword_1019263C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019263C8);
  }

  return result;
}

uint64_t sub_10053C084(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
    if ((v7 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v9 > *(v7 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    a3(a1);
    return v7;
  }

  v9 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v7 < 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  if (v9 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v11 = __CocoaSet.count.getter();
  v7 = a5(v10, v11);
LABEL_10:

  return a4(a1, v7);
}

uint64_t sub_10053C1B0()
{
  v1 = &v0[OBJC_IVAR____TtC4Maps25HomeListSectionController_cachedSectionSnapshot];
  v2 = *&v0[OBJC_IVAR____TtC4Maps25HomeListSectionController_cachedSectionSnapshot];
  if (v2)
  {
    v3 = v2;

    return v3;
  }

  ObjectType = swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = v5;
    v45 = v1;
    v7 = v5 + 24;
    v8 = *(v5 + 24);
    v9 = v0;
    v10 = v8(ObjectType, v6);

    sub_1000981F8(v10);
    v11 = *(v10 + 16);
    v12 = OBJC_IVAR____TtC4Maps25HomeListSectionController_mutableDeletions;
    swift_beginAccess();
    v46 = v11;
    if (v11)
    {
      v13 = 0;
      v14 = v10 + 32;
      v15 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v13 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        sub_100098118(v14, v50);
        v17 = *&v50[0];
        v18 = *&v9[v12];
        if ((v18 & 0xC000000000000001) != 0)
        {

          v7 = v17;
          v19 = __CocoaDictionary.lookup(_:)();

          if (!v19)
          {
            goto LABEL_17;
          }

          sub_100014C84(0, &qword_1019209A8);
          swift_dynamicCast();
          v16 = v47;
          if (!v47)
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (!*(v18 + 16))
          {
            goto LABEL_17;
          }

          v20 = sub_1002973CC(v17);
          if ((v21 & 1) == 0)
          {

LABEL_17:
            v47 = v50[0];
            v48 = v50[1];
            v49 = v50[2];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v51 = v15;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10051188C(0, v15[2] + 1, 1);
              v15 = v51;
            }

            v7 = v15[2];
            v23 = v15[3];
            if (v7 >= v23 >> 1)
            {
              sub_10051188C((v23 > 1), v7 + 1, 1);
              v15 = v51;
            }

            v15[2] = v7 + 1;
            v24 = &v15[6 * v7];
            v24[3] = v48;
            v24[4] = v49;
            v24[2] = v47;
            goto LABEL_8;
          }

          v16 = *(*(v18 + 56) + 8 * v20);

          if (!v16)
          {
            goto LABEL_17;
          }
        }

        sub_10019D044(v50);
LABEL_8:
        ++v13;
        v14 += 48;
        if (v46 == v13)
        {
          goto LABEL_23;
        }
      }
    }

    v15 = _swiftEmptyArrayStorage;
LABEL_23:

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v25 = (*((swift_isaMask & *v9) + 0x188))();
      v10 = sub_1000D6898(v25, v15);
      v15 = v26;
      v14 = v27;
      v13 = v28;
      v29 = v28 >> 1;
      if (v27 == v28 >> 1)
      {
        v7 = _swiftEmptyArrayStorage;
        goto LABEL_28;
      }

      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v30 = *((swift_isaMask & *v9) + 0x190);
        v31 = v9;
        v7 = v30();

LABEL_28:
        v9 = sub_100062A9C();
        if (v13)
        {
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            swift_unknownObjectRelease();
            v34 = _swiftEmptyArrayStorage;
          }

          v35 = v34[2];

          if (__OFSUB__(v29, v14))
          {
LABEL_41:
            __break(1u);
          }

          else if (v35 == v29 - v14)
          {
            v33 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (v33)
            {
LABEL_38:
              v36 = sub_10036D530(v9, v33, v7);
              v38 = v37;
              v40 = v39;
              v42 = v41;
              swift_unknownObjectRelease();

              v43 = *v45;
              *v45 = v36;
              *(v45 + 1) = v38;
              *(v45 + 2) = v40;
              *(v45 + 3) = v42;
              v3 = v36;

              sub_10037E7A4(v43);
              return v3;
            }

            v33 = _swiftEmptyArrayStorage;
LABEL_37:
            swift_unknownObjectRelease();
            goto LABEL_38;
          }

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRetain();
        }

        sub_100416104(v10, v15, v14, v13);
        v33 = v32;
        goto LABEL_37;
      }
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_10053C6F8()
{
  v1 = (v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController_cachedSectionSnapshot);
  v2 = *(v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController_cachedSectionSnapshot);
  *v1 = 0u;
  v1[1] = 0u;
  return sub_10037E7A4(v2);
}

id sub_10053C718()
{
  v1 = OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionHeaderIdentifierPath;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionHeaderIdentifierPath);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionHeaderIdentifierPath);
  }

  else
  {
    v4 = sub_100062A9C();
    v5 = [v4 identifierPathByAppendingIdentifier:UICollectionElementKindSectionHeader];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_10053C7AC@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (!v3 || !v1)
  {
LABEL_12:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 16);
  v7 = v1;
  v6(v19, ObjectType, v4);

  if (v19[1])
  {
    sub_100333AE4(v19, v20);
    sub_10003E48C(v7 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v19);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10003E4E8(v19);
    if (!Strong)
    {
      goto LABEL_8;
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v9 = v7;
      sub_10037AF28(v9);
      v11 = v10;
      swift_unknownObjectRelease();

      if (v11)
      {

        v12 = 0;
LABEL_9:
        v20[16] = v12;
        v13 = sub_10053C718();
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
        *(a1 + 48) = &type metadata for HomeListSectionHeaderViewModel;
        *(a1 + 56) = sub_1005405F0();
        v17 = swift_allocObject();
        *(a1 + 24) = v17;
        result = sub_100333AE4(v20, v17 + 16);
        *a1 = v13;
        *(a1 + 8) = v14;
        *(a1 + 16) = v16;
        return result;
      }

LABEL_8:
      v12 = 1;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  result = sub_100024F64(v19, &qword_101915FF0);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10053C9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v53 = a5;
  v51 = a2;
  v52 = a3;
  v8 = type metadata accessor for UIListSeparatorConfiguration();
  v50 = *(v8 - 8);
  __chkstk_darwin(v8);
  v49 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = v40 - v11;
  v43 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UICollectionLayoutListConfiguration();
  v56 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v14;
  v55 = v13;
  v47 = *(v14 + 16);
  v47(v16, a4, v13, v18);
  UICollectionLayoutListConfiguration.init(appearance:)();
  sub_10003E48C(v5 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v57);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v57);
  if (!Strong)
  {
    goto LABEL_10;
  }

  v44 = v8;
  v45 = v17;
  v46 = a4;
  swift_getObjectType();
  if (!swift_conformsToProtocol2() || !v5)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v22 = v5;
  v23 = sub_10053C718();
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  v27 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot);
  if (!v27)
  {

    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease();
    memset(v57, 0, 64);
    a4 = v46;
    v17 = v45;
LABEL_9:
    v8 = v44;
    sub_100024F64(v57, &unk_101915FD0);
    goto LABEL_10;
  }

  v28 = v24;
  v40[1] = a1;
  v29 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);

  v30 = v23;
  sub_1000F0120(v27);
  sub_100368A2C(v30, v28, v26, 0, v29, v57);

  swift_bridgeObjectRelease_n();
  if (!*&v57[0])
  {
    swift_unknownObjectRelease();
    a4 = v46;
    v17 = v45;
    goto LABEL_9;
  }

  sub_100024F64(v57, &unk_101915FD0);
  (*(v42 + 104))(v41, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v43);
  UICollectionLayoutListConfiguration.headerMode.setter();
  swift_unknownObjectRelease();
  a4 = v46;
  v17 = v45;
  v8 = v44;
LABEL_10:
  v31 = [objc_opt_self() clearColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  UICollectionLayoutListConfiguration.headerTopPadding.setter();
  sub_1000CD9D4(v51);
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  v32 = v53;
  UICollectionLayoutListConfiguration.showsSeparators.setter();
  v33 = v55;
  if (v32)
  {
    (v47)(v16, a4, v55);
    v34 = v48;
    UIListSeparatorConfiguration.init(listAppearance:)();
    UIListSeparatorConfiguration.topSeparatorInsets.setter();
    UIListSeparatorConfiguration.topSeparatorInsets.getter();
    UIListSeparatorConfiguration.bottomSeparatorInsets.setter();
    v35 = v50;
    (*(v50 + 16))(v49, v34, v8);
    UICollectionLayoutListConfiguration.separatorConfiguration.setter();
    (*(v35 + 8))(v34, v8);
  }

  sub_100014C84(0, &unk_101910E00);
  v36 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  [v36 contentInsets];
  [v36 setContentInsets:0.0];
  [v36 contentInsets];
  [v36 setContentInsets:?];
  v37 = v54;
  (*(v54 + 104))(v16, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v33);
  v38 = static UICollectionLayoutListConfiguration.Appearance.== infix(_:_:)();
  (*(v37 + 8))(v16, v33);
  if (v38)
  {
    static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
  }

  [v36 contentInsets];
  [v36 setContentInsets:?];
  [v36 contentInsets];
  [v36 setContentInsets:?];
  (*(v56 + 8))(v20, v17);
  return v36;
}

void sub_10053D114(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&qword_1019174A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v66 - v5;
  v67 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v73 = OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration;
    v74 = a1 & 0xC000000000000001;
    v68 = OBJC_IVAR____TtC4Maps25HomeListSectionController_mutableDeletions;
    swift_beginAccess();
    v8 = 0;
    v69 = a1 & 0xFFFFFFFFFFFFFF8;
    *&v9 = 138412290;
    v70 = v9;
    v71 = a1;
    v72 = i;
    while (1)
    {
      if (v74)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v69 + 16))
        {
          goto LABEL_55;
        }

        v12 = *(a1 + 8 * v8 + 32);
      }

      v13 = v12;
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      sub_10003E48C(&v2[v73], v76);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_10003E4E8(v76);
      if (!Strong)
      {
        v32 = type metadata accessor for IndexPath();
        (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
LABEL_26:
        sub_100024F64(v6, &qword_1019174A0);
        if (qword_101906710 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_100021540(v33, qword_10195FFD0);
        v27 = v13;
        v21 = Logger.logObject.getter();
        v34 = static os_log_type_t.info.getter();

        if (!os_log_type_enabled(v21, v34))
        {
          goto LABEL_7;
        }

        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = v70;
        *(v35 + 4) = v27;
        *v36 = v27;
        v37 = v27;
        _os_log_impl(&_mh_execute_header, v21, v34, "Cannot start deletion because the deleted item is not present in the collection view: %@", v35, 0xCu);
        sub_100024F64(v36, &qword_1019144F0);

        v27 = v21;
        v21 = v37;
        goto LABEL_6;
      }

      swift_getObjectType();
      if (!swift_conformsToProtocol2() || !v2)
      {
        goto LABEL_69;
      }

      v16 = v2;
      v17 = [v13 identifierPath];
      v18 = sub_100059F34();
      v76[0] = v17;
      dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

      swift_unknownObjectRelease();
      v19 = type metadata accessor for IndexPath();
      if ((*(*(v19 - 8) + 48))(v6, 1, v19) == 1)
      {
        goto LABEL_26;
      }

      sub_100024F64(v6, &qword_1019174A0);
      if (qword_101906710 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100021540(v20, qword_10195FFD0);
      v21 = v13;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = v70;
        *(v24 + 4) = v21;
        *v25 = v21;
        v26 = v21;
        _os_log_impl(&_mh_execute_header, v22, v23, "Starting deletion: %@", v24, 0xCu);
        sub_100024F64(v25, &qword_1019144F0);
        a1 = v71;
      }

      v27 = [v21 identifierPath];
      if (([v21 completed]& 1) != 0)
      {
        goto LABEL_7;
      }

      v28 = *&v2[v68];
      if ((v28 & 0xC000000000000001) != 0)
      {

        v29 = v27;
        v30 = __CocoaDictionary.lookup(_:)();

        if (!v30)
        {
          goto LABEL_35;
        }

        v75 = v30;
        sub_100014C84(0, &qword_1019209A8);
        swift_dynamicCast();
        v31 = v76[0];
      }

      else
      {
        if (!*(v28 + 16))
        {
          goto LABEL_36;
        }

        v38 = sub_1002973CC(v27);
        if ((v39 & 1) == 0)
        {
LABEL_35:

          goto LABEL_36;
        }

        v31 = *(*(v28 + 56) + 8 * v38);
      }

      if (v31)
      {

        v27 = v31;
        goto LABEL_7;
      }

LABEL_36:
      v40 = v68;
      swift_beginAccess();
      v41 = *&v2[v40];
      if ((v41 & 0xC000000000000001) != 0)
      {
        if (v41 < 0)
        {
          v42 = *&v2[v40];
        }

        else
        {
          v42 = v41 & 0xFFFFFFFFFFFFFF8;
        }

        v43 = v21;
        v44 = v27;
        v45 = __CocoaDictionary.count.getter();
        if (__OFADD__(v45, 1))
        {
          goto LABEL_57;
        }

        *&v2[v40] = sub_10055BB68(v42, v45 + 1);
      }

      else
      {
        v46 = v21;
        v47 = v27;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = *&v2[v40];
      v49 = v75;
      *&v2[v40] = 0x8000000000000000;
      v51 = sub_1002973CC(v27);
      v52 = v49[2];
      v53 = (v50 & 1) == 0;
      v54 = v52 + v53;
      if (__OFADD__(v52, v53))
      {
        goto LABEL_56;
      }

      a1 = v50;
      if (v49[3] >= v54)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v57 = v75;
          if ((v50 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        else
        {
          sub_10012D2B4();
          v57 = v75;
          if ((a1 & 1) == 0)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
        sub_100127DBC(v54, isUniquelyReferenced_nonNull_native);
        v55 = sub_1002973CC(v27);
        if ((a1 & 1) != (v56 & 1))
        {
          goto LABEL_70;
        }

        v51 = v55;
        v57 = v75;
        if ((a1 & 1) == 0)
        {
LABEL_50:
          v57[(v51 >> 6) + 8] |= 1 << v51;
          *(v57[6] + 8 * v51) = v27;
          *(v57[7] + 8 * v51) = v21;
          v58 = v57[2];
          v59 = __OFADD__(v58, 1);
          v60 = v58 + 1;
          if (v59)
          {
            goto LABEL_58;
          }

          v57[2] = v60;
          goto LABEL_5;
        }
      }

      v10 = v57[7];
      v11 = *(v10 + 8 * v51);
      *(v10 + 8 * v51) = v21;

LABEL_5:
      *&v2[v68] = v57;
      swift_endAccess();
LABEL_6:
      a1 = v71;
LABEL_7:

      ++v8;
      if (v14 == v72)
      {
        goto LABEL_60;
      }
    }

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
    ;
  }

LABEL_60:
  if (v67)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      return;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return;
  }

  sub_10003E48C(&v2[OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration], v76);
  v61 = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v76);
  if (v61)
  {
    swift_getObjectType();
    v62 = swift_conformsToProtocol2();
    if (v62 && v2)
    {
      v63 = v62;
      sub_1000CE6B8(&qword_10191A630);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1011E1D30;
      *(inited + 32) = v2;
      *(inited + 40) = v63;
      v65 = v2;
      sub_10005B5D4(inited, 1);
      swift_unknownObjectRelease();
      swift_setDeallocating();
    }

    else
    {
LABEL_69:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_70:
      sub_100014C84(0, &qword_10190D2F0);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }
  }
}

void sub_10053DA24(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v2; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (([v4 completed] & 1) == 0)
    {
      v6 = _convertErrorToNSError(_:)();
      [v5 markAsCompletedWithSuccess:0 error:v6];

      v5 = v6;
    }
  }

LABEL_12:

  sub_10053DEE8(a1);
}

uint64_t sub_10053DB34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000CE6B8(&qword_1019174A0);
  __chkstk_darwin(v7 - 8);
  v9 = &aBlock[-1] - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  sub_10003E48C(v3 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, aBlock);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(aBlock);
  if (!Strong)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_7;
  }

  swift_getObjectType();
  if (swift_conformsToProtocol2() && v3)
  {
    v15 = v3;
    v16 = sub_100059F34();
    aBlock[0] = v23;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    swift_unknownObjectRelease();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v13, v9, v10);
LABEL_9:
      v17 = objc_allocWithZone(HomeDeletion);
      sub_100098118(a1, aBlock);

      v18 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002ABAC8;
      aBlock[3] = &unk_1016208C8;
      v20 = _Block_copy(aBlock);

      v21 = [v17 initWithObject:v18 indexPath:isa identifierPath:v23 contextualActionCompletionHandler:v20];
      _Block_release(v20);
      swift_unknownObjectRelease();

      (*(v11 + 8))(v13, v10);
      return v21;
    }

LABEL_7:
    IndexPath.init(item:section:)();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_100024F64(v9, &qword_1019174A0);
    }

    goto LABEL_9;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10053DEE8(unint64_t a1)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  v4 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_24;
    }

    goto LABEL_3;
  }

  v25 = _CocoaArrayWrapper.endIndex.getter();
  v5 = v25;
  if (!v25)
  {
LABEL_29:
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      goto LABEL_30;
    }

    return;
  }

  if (v25 < 1)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_3:
  v31 = v4;
  v6 = OBJC_IVAR____TtC4Maps25HomeListSectionController_mutableDeletions;
  swift_beginAccess();
  v32 = 0;
  v7 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(a1 + 8 * v7 + 32);
    }

    v9 = v8;
    if (qword_101906710 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100021540(v10, qword_10195FFD0);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "Ending deletion: %@", v14, 0xCu);
      sub_100024F64(v15, &qword_1019144F0);
    }

    v17 = [v11 identifierPath];
    if (![v11 completed])
    {
      goto LABEL_5;
    }

    v18 = *&v33[v6];
    if ((v18 & 0xC000000000000001) != 0)
    {

      v19 = v17;
      v20 = __CocoaDictionary.lookup(_:)();

      if (!v20)
      {
        goto LABEL_4;
      }

      sub_100014C84(0, &qword_1019209A8);
      swift_dynamicCast();
      v21 = v34[0];
    }

    else
    {
      if (!*(v18 + 16))
      {
        goto LABEL_5;
      }

      v22 = sub_1002973CC(v17);
      if ((v23 & 1) == 0)
      {
LABEL_4:

LABEL_5:

        goto LABEL_6;
      }

      v21 = *(*(v18 + 56) + 8 * v22);
    }

    if (!v21)
    {
      goto LABEL_5;
    }

    v32 |= [v11 success] ^ 1;
    swift_beginAccess();
    v24 = sub_1003C4D58(v17);
    swift_endAccess();

    v17 = v24;
LABEL_6:
    ++v7;
  }

  while (v5 != v7);
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  v1 = v33;
  LOBYTE(v5) = v32;
  if (v31)
  {
    goto LABEL_29;
  }

LABEL_24:
  if (*(v3 + 16) < 1)
  {
    return;
  }

LABEL_30:
  if (v5)
  {
    sub_10003E48C(v1 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v34);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10003E4E8(v34);
    if (Strong)
    {
      swift_getObjectType();
      v27 = swift_conformsToProtocol2();
      if (v27 && v1)
      {
        v28 = v27;
        sub_1000CE6B8(&qword_10191A630);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1011E1D30;
        *(inited + 32) = v1;
        *(inited + 40) = v28;
        v30 = v1;
        sub_10005B5D4(inited, 1);
        swift_unknownObjectRelease();
        swift_setDeallocating();
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }
  }
}

id sub_10053E380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000D2DFC(a1 + 8, &v16, &unk_10191C220);
  sub_10005E7BC(&v16, &v21);
  v6 = *(&v22 + 1);
  v7 = v23;
  sub_10005E838(&v21, *(&v22 + 1));
  v8 = (*(v7 + 40))(v6, v7);
  if (v8)
  {
    v9 = v8;
    sub_10004E3D0(&v21);
    if ([objc_opt_self() shareItemForObject:v9])
    {
      swift_unknownObjectRelease();
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100098118(a1, &v21);
      v11 = swift_allocObject();
      v12 = v22;
      *(v11 + 40) = v21;
      *(v11 + 16) = a2;
      *(v11 + 24) = a3;
      *(v11 + 32) = v10;
      *(v11 + 56) = v12;
      *(v11 + 72) = v23;
      v19 = sub_1005405D8;
      v20 = v11;
      *&v16 = _NSConcreteStackBlock;
      *(&v16 + 1) = 1107296256;
      v17 = sub_100340A70;
      v18 = &unk_1016208A0;
      v13 = _Block_copy(&v16);
      sub_1000CD9D4(a2);

      v14 = sub_100DCCCC0(v13);
      swift_unknownObjectRelease();
      _Block_release(v13);
      return v14;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10004E3D0(&v21);
  }

  return 0;
}

uint64_t sub_10053E580(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  sub_1000D2DFC((a1 + 1), &aBlock, &unk_10191C220);
  sub_10005E7BC(&aBlock, v24);
  v6 = v25;
  v7 = v26;
  sub_10005E838(v24, v25);
  v8 = (*(v7 + 40))(v6, v7);
  if (!v8)
  {
    return sub_10004E3D0(v24);
  }

  v9 = v8;
  sub_10004E3D0(v24);
  v10 = [objc_opt_self() shareItemForObject:v9];
  if (v10)
  {
    v11 = v10;
    if (a2)
    {
      v12 = [objc_opt_self() optionsWithSender:a2];
    }

    else
    {
      v14 = sub_10053E7F8(a1);
      if (v14)
      {
        v15 = v14;
        v12 = [objc_opt_self() optionsWithSender:v14];
      }

      else
      {
        v12 = 0;
      }
    }

    sub_10003E48C(v3 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v24);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10003E4E8(v24);
    if (Strong && (v17 = [Strong homeShareDelegate], swift_unknownObjectRelease(), v17))
    {
      v22 = UIView.annotateView(with:);
      v23 = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v20 = sub_100039C64;
      v21 = &unk_101620828;
      v18 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      [v17 shareItem:v11 presentationOptions:v12 completion:v18];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      _Block_release(v18);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10053E7F8(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&qword_1019174A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21[-1] - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration;
  sub_10003E48C(&v2[OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration], v21);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v21);
  if (Strong)
  {
    swift_getObjectType();
    if (!swift_conformsToProtocol2() || !v2)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v13 = *a1;
    v14 = v2;
    v15 = sub_100059F34();
    v21[0] = v13;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    swift_unknownObjectRelease();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v6, v7);
      v16 = *&v2[v11];
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v18 = [v16 cellForItemAtIndexPath:isa];

      (*(v8 + 8))(v10, v7);
      return v18;
    }
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  sub_100024F64(v6, &qword_1019174A0);
  return 0;
}

char *sub_10053EACC()
{
  sub_10053C7AC(v17);
  sub_1000D2DFC(v17, &v13, &unk_101915FD0);
  v8[0] = v13;
  v8[1] = v14;
  v8[2] = v15;
  v8[3] = v16;
  if (v13)
  {
    v9 = v13;
    v10 = v14;
    v11 = v15;
    v12 = v16;
    v0 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_100357D18(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v2 = *(v0 + 2);
    v1 = *(v0 + 3);
    if (v2 >= v1 >> 1)
    {
      v0 = sub_100357D18((v1 > 1), v2 + 1, 1, v0);
    }

    *(v0 + 2) = v2 + 1;
    v3 = &v0[64 * v2];
    v4 = v9;
    v5 = v10;
    v6 = v12;
    *(v3 + 4) = v11;
    *(v3 + 5) = v6;
    *(v3 + 2) = v4;
    *(v3 + 3) = v5;
  }

  else
  {
    sub_100024F64(v8, &unk_101915FD0);
    v0 = _swiftEmptyArrayStorage;
  }

  sub_100024F64(v17, &unk_101915FD0);
  return v0;
}

uint64_t sub_10053EC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v5 == a3)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_10003E48C(v3 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v21);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v21);
  if (Strong)
  {
    swift_getObjectType();
    if (!swift_conformsToProtocol2() || !v3)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v9 = v3;
    v10 = sub_10053C718();
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    v14 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot);
    if (v14)
    {
      v15 = v11;
      v16 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);

      v17 = v10;
      sub_1000F0120(v14);
      sub_100368A2C(v17, v15, v13, 0, v16, v21);

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();
      if (*&v21[0])
      {
        sub_100024F64(v21, &unk_101915FD0);
        v18 = *&v9[OBJC_IVAR____TtC4Maps25HomeListSectionController____lazy_storage___sectionHeaderIdentifierPath];
        v19 = v18;
        return v18;
      }
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();
      memset(v21, 0, 64);
    }

    sub_100024F64(v21, &unk_101915FD0);
  }

  return 0;
}

void sub_10053EE74(void (*a1)(uint64_t), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a3)
  {
    a3();
  }

  a1(1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_10053E580(a6, 0);
  }
}

id sub_10053EF3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeListSectionController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10053F21C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration;
  sub_10003E48C(v1 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, &v24);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(&v24);
  if (!Strong)
  {
    goto LABEL_9;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2() || !v1)
  {
    goto LABEL_21;
  }

  v6 = v1;
  v7 = sub_100059F34();
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v8 = v24;
  if (!v24)
  {
LABEL_8:
    swift_unknownObjectRelease();

LABEL_9:
    memset(v26, 0, sizeof(v26));
    goto LABEL_10;
  }

  if (!*(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot))
  {

    goto LABEL_8;
  }

  v9 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);

  sub_100368890(v8, 2, 0, 2, v9, v26);

  swift_unknownObjectRelease();
LABEL_10:
  sub_1000D2DFC(v26, &v24, &qword_101916000);
  if (!v24)
  {
    sub_100024F64(&v24, &qword_101916000);
    goto LABEL_19;
  }

  sub_1000D2DFC(&v25, v20, &unk_10191C220);
  sub_10005E7BC(v20, v21);
  sub_10019D044(&v24);
  v10 = v22;
  v11 = v23;
  sub_10005E838(v21, v22);
  v12 = (*(v11 + 32))(v10, v11);
  sub_10004E3D0(v21);
  if (!v12)
  {
LABEL_19:
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [a1 deselectItemAtIndexPath:isa animated:1];

    return sub_100024F64(v26, &qword_101916000);
  }

  sub_10003E48C(v2 + v4, &v24);
  v13 = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(&v24);
  if (v13)
  {
    [v13 homeItemTapped:v12];
    swift_unknownObjectRelease();
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
LABEL_17:
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v15 = v14;
  [objc_opt_self() captureUserAction:2007 target:8 value:0];
  v16 = objc_opt_self();
  v17 = IndexPath.row.getter();
  if ((v17 & 0x8000000000000000) == 0)
  {
    [v16 captureCuratedCollectionAction:2099 withCollectionHandler:v15 verticalIndex:v17];
    goto LABEL_17;
  }

  __break(1u);
LABEL_21:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_10053F69C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_10053FDD0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_10053F72C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1000CE6B8(&unk_10190BB50);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = v4;
    v18 = *(*(v4 + 48) + 8 * v16);
    v19 = *(*(v4 + 56) + 8 * v16);
    v20 = *(v9 + 40);
    v21 = v18;
    v32 = v19;
    result = NSObject._rawHashValue(seed:)(v20);
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      v4 = v17;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
    v4 = v17;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v9 + 48) + 8 * v25) = v21;
    *(*(v9 + 56) + 8 * v25) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v10 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v31 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10053F95C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = type metadata accessor for Location();
  v54 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v48 = v44 - v10;
  v11 = type metadata accessor for Handle();
  v53 = *(v11 - 8);
  __chkstk_darwin(v11);
  v56 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v47 = v44 - v14;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_1000CE6B8(&qword_101926438);
  result = static _DictionaryStorage.allocate(capacity:)();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v44[3] = v53 + 16;
  v45 = a2;
  v55 = v53 + 32;
  v19 = result + 64;
  v46 = a1;
  v44[0] = a4;
  v44[1] = v54 + 32;
  v44[2] = v54 + 16;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v49 = (v17 - 1) & v17;
LABEL_16:
    v23 = v20 | (v18 << 6);
    v24 = a4[6];
    v25 = v53;
    v52 = *(v53 + 72);
    v26 = v47;
    (*(v53 + 16))(v47, v24 + v52 * v23, v11);
    v27 = a4[7];
    v28 = v54;
    v51 = *(v54 + 72);
    v29 = v27 + v51 * v23;
    v30 = v11;
    v31 = v48;
    v32 = v58;
    (*(v54 + 16))(v48, v29, v58);
    v50 = *(v25 + 32);
    v50(v56, v26, v30);
    v33 = *(v28 + 32);
    v34 = v31;
    v11 = v30;
    v33(v57, v34, v32);
    sub_100540644();
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v35 = -1 << *(v16 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a2 = v45;
      a1 = v46;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v19 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a2 = v45;
    a1 = v46;
LABEL_26:
    *(v19 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v50((*(v16 + 48) + v38 * v52), v56, v30);
    result = (v33)(*(v16 + 56) + v38 * v51, v57, v58);
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v44[0];
    v17 = v49;
    if (!a3)
    {
      return v16;
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v22 = a1[v18];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v49 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_10053FDD0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, id))
{
  v20 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);
    v15 = *(*(a3 + 48) + 8 * v13);
    v16 = v14;
    LOBYTE(v14) = a4(v15, v16);

    if (v14)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:
        sub_10053F72C(a1, a2, v20, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_10053FF34(uint64_t a1, uint64_t (*a2)(id, id))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_10053F69C(v9, v6, v4, a2);

      return;
    }
  }

  __chkstk_darwin(a1);
  v8 = &v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_10053FDD0(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

Swift::Int sub_1005400B4(uint64_t a1, uint64_t (*a2)(id, id))
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = _swiftEmptyDictionarySingleton;
    v4 = __CocoaDictionary.makeIterator()();
    v5 = __CocoaDictionary.Iterator.next()();
    if (v5)
    {
      v6 = v5;
      sub_100014C84(0, &qword_10190D2F0);
      v7 = v6;
      do
      {
        v23 = v7;
        swift_dynamicCast();
        sub_100014C84(0, &qword_1019209A8);
        swift_dynamicCast();
        if (!v24)
        {
          break;
        }

        v8 = v24;
        v9 = v23;
        v10 = a2(v8, v9);

        if (v10)
        {
          v11 = _swiftEmptyDictionarySingleton[2];
          if (_swiftEmptyDictionarySingleton[3] <= v11)
          {
            sub_100127DBC(v11 + 1, 1);
          }

          v3 = _swiftEmptyDictionarySingleton;
          result = NSObject._rawHashValue(seed:)(_swiftEmptyDictionarySingleton[5]);
          v13 = &_swiftEmptyDictionarySingleton[8];
          v14 = -1 << LOBYTE(_swiftEmptyDictionarySingleton[4]);
          v15 = result & ~v14;
          v16 = v15 >> 6;
          if (((-1 << v15) & ~_swiftEmptyDictionarySingleton[(v15 >> 6) + 8]) != 0)
          {
            v17 = __clz(__rbit64((-1 << v15) & ~_swiftEmptyDictionarySingleton[(v15 >> 6) + 8])) | v15 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v18 = 0;
            v19 = (63 - v14) >> 6;
            do
            {
              if (++v16 == v19 && (v18 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v20 = v16 == v19;
              if (v16 == v19)
              {
                v16 = 0;
              }

              v18 |= v20;
              v21 = v13[v16];
            }

            while (v21 == -1);
            v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          }

          *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          *(_swiftEmptyDictionarySingleton[6] + 8 * v17) = v8;
          *(_swiftEmptyDictionarySingleton[7] + 8 * v17) = v9;
          ++_swiftEmptyDictionarySingleton[2];
        }

        else
        {
        }

        v7 = __CocoaDictionary.Iterator.next()();
      }

      while (v7);
    }

    sub_10005F14C(v4 | 0x8000000000000000, 0, 0, 0, 0);
  }

  else
  {
    sub_10053FF34(a1, a2);
    v3 = v22;
  }

  return v3;
}

uint64_t sub_100540354()
{
  sub_10003E48C(v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v16);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v16);
  if (!Strong)
  {
    goto LABEL_9;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2() || !v0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v2 = v0;
  v3 = sub_100059F34();
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v4 = *&v16[0];
  if (!*&v16[0])
  {
LABEL_8:
    swift_unknownObjectRelease();

LABEL_9:
    memset(v16, 0, 48);
    goto LABEL_10;
  }

  if (!*(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot))
  {

    goto LABEL_8;
  }

  v5 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);

  sub_100368890(v4, 2, 0, 2, v5, v16);

  swift_unknownObjectRelease();
LABEL_10:
  sub_1000D2DFC(v16, &v14, &qword_101916000);
  if (v14)
  {
    sub_1000D2DFC(&v15, v10, &unk_10191C220);
    sub_10005E7BC(v10, v11);
    sub_10019D044(&v14);
    v6 = v12;
    v7 = v13;
    sub_10005E838(v11, v12);
    v8 = (*(v7 + 32))(v6, v7);
    sub_100024F64(v16, &qword_101916000);
    sub_10004E3D0(v11);
    if (v8)
    {
      swift_unknownObjectRelease();
      return 1;
    }
  }

  else
  {
    sub_100024F64(v16, &qword_101916000);
    sub_100024F64(&v14, &qword_101916000);
  }

  return 0;
}

unint64_t sub_1005405F0()
{
  result = qword_101926430;
  if (!qword_101926430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101926430);
  }

  return result;
}

unint64_t sub_100540644()
{
  result = qword_101926440;
  if (!qword_101926440)
  {
    type metadata accessor for Handle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101926440);
  }

  return result;
}

void _s4Maps16LibraryAnalyticsC21captureAddOrRemovePin9placeMUID0dE06targetys6UInt64V_SbSo11GEOUITargetVtFZ_0(uint64_t a1, char a2, uint64_t a3)
{
  if (a1)
  {
    dispatch thunk of CustomStringConvertible.description.getter();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_opt_self() sharedService];
  if (v7)
  {
    v8 = v7;
    if (v6)
    {
      v9 = String._bridgeToObjectiveC()();
    }

    else
    {
      v9 = 0;
    }

    if (a2)
    {
      v10 = 475;
    }

    else
    {
      v10 = 473;
    }

    [v8 captureUserAction:v10 onTarget:a3 eventValue:v9];
  }

  else
  {
    __break(1u);
  }
}

void _s4Maps16LibraryAnalyticsC022captureAddOrRemoveFromB09placeMUID0dE06targetys6UInt64V_SbSo11GEOUITargetVtFZ_0(uint64_t a1, char a2, uint64_t a3)
{
  if (a1)
  {
    dispatch thunk of CustomStringConvertible.description.getter();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_opt_self() sharedService];
  if (v7)
  {
    v8 = v7;
    if (v6)
    {
      v9 = String._bridgeToObjectiveC()();
    }

    else
    {
      v9 = 0;
    }

    if (a2)
    {
      v10 = 469;
    }

    else
    {
      v10 = 477;
    }

    [v8 captureUserAction:v10 onTarget:a3 eventValue:v9];
  }

  else
  {
    __break(1u);
  }
}

void _s4Maps16LibraryAnalyticsC26captureAddOrEditNoteAction9placeMUID05isNewH0ys6UInt64V_SbtFZ_0(uint64_t a1, char a2)
{
  if (!MapsFeature_IsEnabled_Maps102())
  {
    v12 = [objc_opt_self() sharedService];
    if (v12)
    {
      v7 = v12;
      v13 = (a2 & 1) == 0;
      if (a2)
      {
        v14 = 139;
      }

      else
      {
        v14 = 138;
      }

      if (v13)
      {
        v15 = 471;
      }

      else
      {
        v15 = 472;
      }

      dispatch thunk of CustomStringConvertible.description.getter();
      v11 = String._bridgeToObjectiveC()();

      [v7 captureUserAction:v15 onTarget:v14 eventValue:v11];
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v4 = [objc_allocWithZone(GEOPlaceActionDetails) init];
  if (!v4)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = v4;
  [v4 setBusinessID:a1];
  v6 = [objc_opt_self() sharedService];
  if (v6)
  {
    v7 = v6;
    v8 = (a2 & 1) == 0;
    if (a2)
    {
      v9 = 139;
    }

    else
    {
      v9 = 138;
    }

    if (v8)
    {
      v10 = 471;
    }

    else
    {
      v10 = 472;
    }

    dispatch thunk of CustomStringConvertible.description.getter();
    v11 = String._bridgeToObjectiveC()();

    [v7 captureUserAction:v10 onTarget:v9 eventValue:v11 placeActionDetails:v5];

LABEL_19:
    return;
  }

LABEL_22:
  __break(1u);
}

void sub_100540ACC(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_containerStyle;
  if (*(v2 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_containerStyle + 8))
  {
    if (a2)
    {
      goto LABEL_9;
    }
  }

  else if ((a2 & 1) == 0 && *v5 == a1)
  {
    goto LABEL_9;
  }

  v6 = OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_constraints;
  if (*(v2 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_constraints))
  {
    v7 = objc_opt_self();
    sub_100014C84(0, &qword_10190B720);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 deactivateConstraints:isa];

    *(v2 + v6) = 0;
  }

  sub_10003AD50();
LABEL_9:
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_100540BF4(unsigned __int8 a1)
{
  v2 = a1;
  if (*(v1 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_state) == a1)
  {
    return;
  }

  *(v1 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_state) = a1;
  sub_100037794();
  if (v2)
  {
    if (v2 == 2)
    {
      if (qword_101906730 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100021540(v3, qword_101960030);
      oslog = Logger.logObject.getter();
      v4 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(oslog, v4))
      {
        goto LABEL_18;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Error or No results found is being displayed in Search Overlay";
    }

    else
    {
      if (v2 != 1)
      {
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return;
      }

      if (qword_101906730 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100021540(v8, qword_101960030);
      oslog = Logger.logObject.getter();
      v4 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(oslog, v4))
      {
        goto LABEL_18;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Search here is being displayed in Search overlay";
    }
  }

  else
  {
    if (qword_101906730 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100021540(v7, qword_101960030);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(oslog, v4))
    {
      goto LABEL_18;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Searching here is being displayed in Search overlay";
  }

  _os_log_impl(&_mh_execute_header, oslog, v4, v6, v5, 2u);

LABEL_18:
}

id sub_100540E94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RedoSearchContainerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100540FB8()
{
  *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_state) = 1;
  v1 = (v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_buttonActionHandler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_redoSearchButtonSizeHeight) = 0x4048000000000000;
  *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_cardView) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_constraints) = 0;
  v2 = v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_containerStyle;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___redoSearchButton) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___stackView) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController____lazy_storage___activityIndicator) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100541094()
{
  *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_state) = 0;
  sub_100037794();
  v1 = *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_buttonActionHandler);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC4Maps33RedoSearchContainerViewController_buttonActionHandler + 8);

    v1(v3);
    sub_1000D3B90(v1, v2);
  }

  v4 = [objc_opt_self() sharedService];
  if (v4)
  {
    v5 = v4;
    [v4 captureUserAction:461 onTarget:503 eventValue:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100541180()
{
  v1 = *v0;
  sub_100355C48();
  sub_100541220(&qword_1019264E8, sub_100355C48);
  v2 = v1;

  return PlaceCell.init(model:tapHandler:)();
}

uint64_t sub_100541220(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_100541348(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC4Maps34RAPPhotoCarouselCollectionViewCell_photoCarouselCell;
  *&v4[v9] = [objc_allocWithZone(UGCPhotoCarouselCell) init];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for RAPPhotoCarouselCollectionViewCell();
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC4Maps34RAPPhotoCarouselCollectionViewCell_photoCarouselCell;
  v12 = *&v10[OBJC_IVAR____TtC4Maps34RAPPhotoCarouselCollectionViewCell_photoCarouselCell];
  v13 = v10;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v10[v11] setSectionInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v14 = [v13 contentView];
  [v14 addSubview:*&v10[v11]];

  sub_100541464();
  return v13;
}

void sub_100541464()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1011E5C00;
  v4 = *&v1[OBJC_IVAR____TtC4Maps34RAPPhotoCarouselCollectionViewCell_photoCarouselCell];
  v5 = [v4 topAnchor];
  v6 = [v1 contentView];
  v7 = [v6 topAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:16.0];
  *(v3 + 32) = v8;
  v9 = [v4 bottomAnchor];
  v10 = [v1 contentView];
  v11 = [v10 bottomAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:-16.0];
  *(v3 + 40) = v12;
  v13 = [v4 leadingAnchor];
  v14 = [v1 contentView];
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:16.0];
  *(v3 + 48) = v16;
  v17 = [v4 trailingAnchor];
  v18 = [v1 contentView];
  v19 = [v18 trailingAnchor];

  v20 = [v17 constraintEqualToAnchor:v19 constant:-16.0];
  *(v3 + 56) = v20;
  sub_10009B534();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

id sub_1005417D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RAPPhotoCarouselCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10054183C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

id sub_10054189C()
{
  v1 = OBJC_IVAR____TtC4Maps22CarPlayMetadataUpdater____lazy_storage____navigationOwnershipListener;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps22CarPlayMetadataUpdater____lazy_storage____navigationOwnershipListener);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps22CarPlayMetadataUpdater____lazy_storage____navigationOwnershipListener);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CarNavigationOwnershipListener()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100541910()
{
  v1 = OBJC_IVAR____TtC4Maps22CarPlayMetadataUpdater____lazy_storage____carPlayNavigationManager;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps22CarPlayMetadataUpdater____lazy_storage____carPlayNavigationManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps22CarPlayMetadataUpdater____lazy_storage____carPlayNavigationManager);
  }

  else
  {
    v4 = sub_10054189C();
    v5 = objc_allocWithZone(CPNavigationManager);
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 initWithIdentifier:v6 delegate:v4];

    [v7 setSupportsAccNav:1];
    [v7 setSupportsRouteSharing:GEOConfigGetBOOL()];
    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

char *sub_100541A14()
{
  *&v0[OBJC_IVAR____TtC4Maps22CarPlayMetadataUpdater____lazy_storage____navigationOwnershipListener] = 0;
  *&v0[OBJC_IVAR____TtC4Maps22CarPlayMetadataUpdater____lazy_storage____carPlayNavigationManager] = 0;
  *&v0[OBJC_IVAR____TtC4Maps22CarPlayMetadataUpdater__navigationListener] = 0;
  v1 = &v0[OBJC_IVAR____TtC4Maps22CarPlayMetadataUpdater__configListener];
  v2 = type metadata accessor for CarPlayMetadataUpdater();
  *v1 = 0u;
  *(v1 + 1) = 0u;
  v15.receiver = v0;
  v15.super_class = v2;
  v3 = objc_msgSendSuper2(&v15, "init");
  v4 = objc_allocWithZone(CarMetadataNavigationListener);
  v5 = v3;
  v6 = [v4 initWithDelegate:v5];
  v7 = *&v5[OBJC_IVAR____TtC4Maps22CarPlayMetadataUpdater__navigationListener];
  *&v5[OBJC_IVAR____TtC4Maps22CarPlayMetadataUpdater__navigationListener] = v6;

  sub_100014C84(0, &qword_10190B4F0);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_1005436BC;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10054183C;
  aBlock[3] = &unk_101620A38;
  v10 = _Block_copy(aBlock);

  v11 = _GEOConfigAddBlockListenerForKey();
  _Block_release(v10);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v12 = OBJC_IVAR____TtC4Maps22CarPlayMetadataUpdater__configListener;
  swift_beginAccess();
  sub_100109484(aBlock, &v5[v12]);
  swift_endAccess();

  return v5;
}

void sub_100541C18()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_100541910();

    [v2 setSupportsRouteSharing:GEOConfigGetBOOL()];
  }
}

id sub_100541CC0()
{
  v1 = OBJC_IVAR____TtC4Maps22CarPlayMetadataUpdater__configListener;
  swift_beginAccess();
  sub_10017A750(v0 + v1, &v4);
  if (*(&v5 + 1))
  {
    sub_1000D2BE0(&v4, &v6);
    sub_10005E838(&v6, v7);
    _bridgeAnythingToObjectiveC<A>(_:)();
    GEOConfigRemoveBlockListener();
    swift_unknownObjectRelease();
    sub_10004E3D0(&v6);
    v4 = 0u;
    v5 = 0u;
    swift_beginAccess();
    sub_100109484(&v4, v0 + v1);
    swift_endAccess();
  }

  else
  {
    sub_100024F64(&v4, &unk_101908380);
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CarPlayMetadataUpdater();
  return objc_msgSendSuper2(&v3, "dealloc");
}

NSString sub_100541E78()
{
  result = String._bridgeToObjectiveC()();
  qword_1019605A8 = result;
  return result;
}

void sub_100541F78(void *a1, uint64_t a2, SEL *a3)
{
  v5 = a1;
  v4 = sub_100541910();
  [v4 *a3];
}

id sub_1005421C4(void *a1, void *a2)
{
  v4 = sub_1000CE6B8(&qword_10191B3A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setGuidanceState:{objc_msgSend(a2, "guidanceState", v10)}];
  [a1 setManeuverState:{objc_msgSend(a2, "maneuverState")}];
  isa = [a2 currentRoadNameVariants];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [a1 setCurrentRoadNameVariants:isa];

  v14 = [a2 destinationNameVariants];
  if (!v14)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = Array._bridgeToObjectiveC()().super.isa;
  }

  [a1 setDestinationNameVariants:v14];

  v15 = [a2 estimatedTimeOfArrival];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = Date._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v12, v8);
  [a1 setEstimatedTimeOfArrival:v16];

  [a2 timeRemaining];
  [a1 setTimeRemaining:?];
  [a1 setDestinationTimeZoneOffsetMinutes:{objc_msgSend(a2, "destinationTimeZoneOffsetMinutes")}];
  v17 = [a2 distanceRemaining];
  sub_100014C84(0, &qword_10191B3B0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = Measurement._bridgeToObjectiveC()();
  v18 = v31.super.isa;
  v19 = *(v5 + 8);
  v19(v7, v4, *&v31._doubleValue);
  [a1 setDistanceRemaining:v18];

  v20 = [a2 distanceRemainingDisplay];
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = Measurement._bridgeToObjectiveC()();
  v21 = v32.super.isa;
  v19(v7, v4, *&v32._doubleValue);
  [a1 setDistanceRemainingDisplay:v21];

  v22 = [a2 distanceRemainingToNextManeuver];
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = Measurement._bridgeToObjectiveC()();
  v23 = v33.super.isa;
  v19(v7, v4, *&v33._doubleValue);
  [a1 setDistanceRemainingToNextManeuver:v23];

  v24 = [a2 distanceRemainingToNextManeuverDisplay];
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = Measurement._bridgeToObjectiveC()();
  v25 = v34.super.isa;
  v19(v7, v4, *&v34._doubleValue);
  [a1 setDistanceRemainingToNextManeuverDisplay:v25];

  v26 = [a2 sourceName];
  if (!v26)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = String._bridgeToObjectiveC()();
  }

  [a1 setSourceName:v26];

  [a1 setSourceSupportsRouteGuidance:{objc_msgSend(a2, "sourceSupportsRouteGuidance")}];
  [a1 setBeingShownInApp:{objc_msgSend(a2, "beingShownInApp")}];
  v27 = [a2 currentManeuvers];
  if (!v27)
  {
    sub_100014C84(0, &qword_101926680);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = Array._bridgeToObjectiveC()().super.isa;
  }

  [a1 setCurrentManeuvers:v27];

  [a1 setTotalManeuverCount:{objc_msgSend(a2, "totalManeuverCount")}];
  [a1 setLaneGuidanceShowing:{objc_msgSend(a2, "laneGuidanceShowing")}];
  v28 = [a2 currentLaneGuidance];
  [a1 setCurrentLaneGuidance:v28];

  [a1 setTotalLaneGuidanceCount:{objc_msgSend(a2, "totalLaneGuidanceCount")}];
  return [a1 setStopType:{objc_msgSend(a2, "stopType")}];
}

void sub_100542934()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_101906938 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_1019605A8 object:0];
}

id sub_100542A20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarNavigationOwnershipListener();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100542A7C()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_101926530);
  sub_100021540(v0, qword_101926530);
  return Logger.init(subsystem:category:)();
}

void sub_100542B04(void *a1, const char *a2, SEL *a3)
{
  if (qword_101906940 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100021540(v6, qword_101926530);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, a2, v10, 0xCu);
    sub_100024F64(v11, &qword_1019144F0);
  }

  v13 = sub_100541910();
  [v13 *a3];
}

void sub_100542C88(unsigned __int8 a1, void *a2)
{
  if (qword_101906940 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100021540(v4, qword_101926530);
  v5 = a2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 16777730;
    *(v8 + 4) = a1;
    *(v8 + 5) = 2112;
    *(v8 + 7) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Calling routeChanged with reason: %hhu, routeInfo: %@", v8, 0xFu);
    sub_100024F64(v9, &qword_1019144F0);
  }

  v11 = sub_100541910();
  [v11 routeChangedWithReason:a1 routeInfo:v5];
}

void sub_100542E20()
{
  if (qword_101906940 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100021540(v0, qword_101926530);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Calling resetRouteGuidance.", v3, 2u);
  }

  v4 = sub_100541910();
  [v4 resetRouteGuidance];
}

void sub_100542F30(void *a1)
{
  if (qword_101906940 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_101926530);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Modifying route guidance to:\n%@", v6, 0xCu);
    sub_100024F64(v7, &qword_1019144F0);
  }

  v9 = sub_100541910();
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  v13[4] = sub_1005436B4;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1001FDE68;
  v13[3] = &unk_1016209E8;
  v11 = _Block_copy(v13);
  v12 = v3;

  [v9 modifyRouteGuidance:v11];
  _Block_release(v11);
}

void sub_100543130(void *a1)
{
  if (qword_101906940 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_101926530);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = a1;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Setting precondition info: %@", v6, 0xCu);
    sub_100024F64(v7, &qword_1019144F0);
  }

  v9 = sub_100541910();
  [v9 setChargePrecondition:v3];
}

uint64_t sub_1005432B0(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0xE300000000000000;
  v11 = 7496035;
  v12 = 0xE700000000000000;
  v13 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v13 = 5459817;
    v12 = 0xE300000000000000;
  }

  if (a1 != 2)
  {
    v11 = v13;
    v10 = v12;
  }

  if (a1)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1701736302;
  }

  if (a1)
  {
    v15 = v10;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  if (qword_101906940 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100021540(v16, qword_101926530);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = v3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v28 = v7;
    v22 = v6;
    v23 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;
    v24 = sub_10004DEB8(v14, v15, aBlock);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "navigationOwnershipChanged to %s.", v20, 0xCu);
    sub_10004E3D0(v23);
    v6 = v22;
    v7 = v28;

    v3 = v29;
  }

  else
  {
  }

  sub_100014C84(0, &qword_10190B4F0);
  v25 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100542934;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_101620998;
  v26 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000DB364();
  sub_1000CE6B8(&unk_10190B500);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

id sub_1005436D4()
{
  v1 = OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell____lazy_storage___openAtLabel;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell____lazy_storage___openAtLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell____lazy_storage___openAtLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setNumberOfLines:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100543770()
{
  v1 = OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell____lazy_storage___datePicker;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell____lazy_storage___datePicker);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell____lazy_storage___datePicker);
  }

  else
  {
    v4 = [objc_allocWithZone(UIDatePicker) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setPreferredDatePickerStyle:0];
    [v4 setDatePickerMode:0];
    [v4 setMinuteInterval:15];
    [v4 setRoundsToMinuteInterval:0];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100543994(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a1 + 32);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v5(a2, v6, v8, a3);
}

char *sub_100543ACC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell_horizontalPadding] = 0x4034000000000000;
  *&v4[OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell_topPadding] = 0x4028000000000000;
  *&v4[OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell_minimumLabelWidth] = 0x4059000000000000;
  *&v4[OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell_minimumLabelHeight] = 0x4044000000000000;
  *&v4[OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell____lazy_storage___openAtLabel] = 0;
  *&v4[OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell____lazy_storage___datePicker] = 0;
  v9 = &v4[OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell_dateSelectionHandler];
  v10 = type metadata accessor for AllRefinementsOpenAtCell();
  *v9 = 0;
  *(v9 + 1) = 0;
  v20.receiver = v4;
  v20.super_class = v10;
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 1 || (v16 = [v12 currentDevice], v17 = objc_msgSend(v16, "userInterfaceIdiom"), v16, v17 == 6))
  {
    *&v13[OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell_horizontalPadding] = 0x4030000000000000;
  }

  sub_100543CE4();
  sub_1000CE6B8(&unk_10190CA20);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1011E1D40;
  *(v18 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v18 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v18 + 48) = type metadata accessor for UITraitVerticalSizeClass();
  *(v18 + 56) = &protocol witness table for UITraitVerticalSizeClass;
  *(v18 + 64) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v18 + 72) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();

  return v13;
}

void sub_100543CE4()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v54[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000CE6B8(&qword_10191F218);
  __chkstk_darwin(v6 - 8);
  v8 = &v54[-v7];
  static UIBackgroundConfiguration.clear()();
  v9 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  UICollectionViewCell.backgroundConfiguration.setter();
  v10 = [v1 contentView];
  v11 = sub_1005436D4();
  [v10 addSubview:v11];

  v12 = [v1 contentView];
  v13 = sub_100543770();
  [v12 addSubview:v13];

  v14 = OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell____lazy_storage___datePicker;
  v15 = *&v1[OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell____lazy_storage___datePicker];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  [v17 setLocale:isa];

  [*&v1[v14] addTarget:v1 action:"datePickedValueChanged:" forControlEvents:4096];
  [*&v1[v14] addTarget:v1 action:"datePickerTapped:" forControlEvents:0x10000];
  v20 = [*&v1[v14] bottomAnchor];
  v21 = [v1 contentView];
  v22 = [v21 bottomAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:-8.0];
  v55 = _swiftEmptyArrayStorage;
  sub_1000CE6B8(&qword_101908400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101206BB0;
  v25 = [*&v1[v14] topAnchor];
  v26 = [v1 contentView];
  v27 = [v26 topAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:12.0];
  *(inited + 32) = v28;
  v29 = [*&v1[v14] trailingAnchor];
  v30 = [v1 contentView];
  v31 = [v30 trailingAnchor];

  v32 = OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell_horizontalPadding;
  v33 = [v29 constraintEqualToAnchor:v31 constant:-*&v1[OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell_horizontalPadding]];

  *(inited + 40) = v33;
  *(inited + 48) = v23;
  v34 = OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell____lazy_storage___openAtLabel;
  v35 = *&v1[OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell____lazy_storage___openAtLabel];
  v36 = v23;
  v37 = [v35 topAnchor];
  v38 = [*&v1[v14] topAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(inited + 56) = v39;
  v40 = [*&v1[v34] leadingAnchor];
  v41 = [v1 contentView];
  v42 = [v41 leadingAnchor];

  v43 = [v40 constraintEqualToAnchor:v42 constant:*&v1[v32]];
  *(inited + 64) = v43;
  v44 = [*&v1[v34] bottomAnchor];
  v45 = [*&v1[v14] bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(inited + 72) = v46;
  v47 = [*&v1[v14] leadingAnchor];
  v48 = [*&v1[v34] trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:8.0];

  *(inited + 80) = v49;
  sub_10003B62C(inited);
  v50 = objc_opt_self();
  sub_10009B534();
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v50 activateConstraints:v51];

  LODWORD(v52) = 1144750080;
  [*&v1[v14] setContentCompressionResistancePriority:0 forAxis:v52];
  LODWORD(v53) = 1132068864;
  [v36 setPriority:v53];
  [v36 setActive:1];
}

id sub_1005443BC(void *a1)
{
  *&v1[OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell_horizontalPadding] = 0x4034000000000000;
  *&v1[OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell_topPadding] = 0x4028000000000000;
  *&v1[OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell_minimumLabelWidth] = 0x4059000000000000;
  *&v1[OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell_minimumLabelHeight] = 0x4044000000000000;
  *&v1[OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell____lazy_storage___openAtLabel] = 0;
  *&v1[OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell____lazy_storage___datePicker] = 0;
  v3 = &v1[OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell_dateSelectionHandler];
  v4 = type metadata accessor for AllRefinementsOpenAtCell();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_1005444B4(double a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v25 = a4;
  v26 = a3;
  v28 = type metadata accessor for Date();
  v7 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = type metadata accessor for UIListContentConfiguration();
  v14 = *(v27 - 8);
  __chkstk_darwin(v27);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UIListContentConfiguration.cell()();
  v17 = sub_1005436D4();
  v18 = String._bridgeToObjectiveC()();
  [v17 setText:v18];

  v19 = *(v5 + OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell____lazy_storage___openAtLabel);
  UIListContentConfiguration.textProperties.getter();
  v20 = UIListContentConfiguration.TextProperties.font.getter();
  (*(v11 + 8))(v13, v10);
  [v19 setFont:v20];

  v21 = sub_100543770();
  if (a1 == 0.0 || (v25 & 1) == 0)
  {
    Date.init()();
  }

  else
  {
    Date.init(timeIntervalSince1970:)();
  }

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v9, v28);
  [v21 setDate:isa];

  return (*(v14 + 8))(v16, v27);
}

uint64_t sub_100544898(void *a1, char a2)
{
  v4 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince1970.getter();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v14 = sub_100544D5C();
  v16 = v15;
  v17 = *(v4 + OBJC_IVAR____TtC4Maps24AllRefinementsOpenAtCell_dateSelectionHandler);
  if (v17)
  {
    v18 = v14;

    v17(a2 & 1, v18, v16, v13);
    sub_1000588AC(v17);
  }
}

id sub_100544AEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AllRefinementsOpenAtCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100544D5C()
{
  v24 = type metadata accessor for Date();
  v0 = *(v24 - 8);
  __chkstk_darwin(v24);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TimeZone();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(NSDateFormatter) init];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v10, v7);
  [v11 setLocale:isa];

  static TimeZone.current.getter();
  v13 = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);
  [v11 setTimeZone:v13];

  v14 = String._bridgeToObjectiveC()();
  [v11 setDateFormat:v14];

  Date.init(timeIntervalSince1970:)();
  v15 = Date._bridgeToObjectiveC()().super.isa;
  v16 = [v11 stringFromDate:v15];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v25 = 0x5F54415F4E45504FLL;
  v26 = 0xE800000000000000;
  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v21 = String.init(format:_:)();

  (*(v0 + 8))(v2, v24);
  return v21;
}

void sub_1005450B0(char a1, double a2)
{
  v5 = *(v2 + 16);
  v6 = String._bridgeToObjectiveC()();
  (*(v5 + 16))(v5, a1 & 1, v6, a2);
}

uint64_t sub_100545128@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100545DFC(&qword_101917220, type metadata accessor for HomeUserGuidesCollectionRowCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__scrollIndex + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__scrollIndex);
  *(a2 + 8) = v5;
  return result;
}

void sub_1005453B4()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&qword_101926730);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-1] - v4;
  v6 = *(v0 + OBJC_IVAR____TtC4Maps35HomeUserGuidesCollectionRowViewCell_viewModel);
  if (v6)
  {
    type metadata accessor for MainActor();
    v7 = v6;
    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;
    v10 = v7;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    sub_1000CE6B8(&qword_101922B10);
    v13 = Binding.init(get:set:)();
    v14 = v19[0];
    v15 = v19[1];
    __chkstk_darwin(v13);
    *(&v18 - 6) = v10;
    *(&v18 - 5) = v1;
    *(&v18 - 4) = v14;
    *(&v18 - 3) = v15;
    *(&v18 - 2) = v16;
    *(&v18 - 8) = v17;
    type metadata accessor for HomeUserGuidesCarouselView(0);
    sub_100545DFC(&qword_101926738, type metadata accessor for HomeUserGuidesCarouselView);
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v19[3] = v2;
    v19[4] = sub_1000414C8(&qword_101926740, &qword_101926730);
    sub_10001A848(v19);
    UIHostingConfiguration.margins(_:_:)();
    (*(v3 + 8))(v5, v2);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_100545698@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_100545DFC(&qword_101917220, type metadata accessor for HomeUserGuidesCollectionRowCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(a1 + OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__scrollIndex + 8);
  *a2 = *(a1 + OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__scrollIndex);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_100545754(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = a4 + OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__scrollIndex;
  if (*(a4 + OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__scrollIndex + 8))
  {
    if (!*(result + 8))
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100545DFC(&qword_101917220, type metadata accessor for HomeUserGuidesCollectionRowCellModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    if (*v6 == v4)
    {
      v8 = *(result + 8);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_3;
    }
  }

  *v6 = v4;
  *(v6 + 8) = v5;
  return result;
}

id sub_10054588C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v13 = OBJC_IVAR____TtC4Maps35HomeUserGuidesCollectionRowViewCell_currentContainerSize;
  swift_beginAccess();
  v14 = type metadata accessor for HomeUserGuidesCarouselView(0);
  v15 = *(v14 + 20);
  v16 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v16 - 8) + 16))(&a7[v15], a2 + v13, v16);
  *a7 = a1;
  v17 = &a7[*(v14 + 24)];
  *v17 = a3;
  *(v17 + 1) = a4;
  *(v17 + 2) = a5;
  v17[24] = a6 & 1;

  return a1;
}

uint64_t sub_100545998()
{
  v1 = v0;
  v2 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for HomeUserGuidesCollectionRowViewCell(0);
  v17.receiver = v0;
  v17.super_class = v9;
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v10 = [v0 contentView];
  [v10 frame];

  static MapsDesignConstants.ColumnViews.containerSize(for:)();
  v11 = OBJC_IVAR____TtC4Maps35HomeUserGuidesCollectionRowViewCell_currentContainerSize;
  swift_beginAccess();
  v12 = *(v3 + 16);
  v12(v5, &v1[v11], v2);
  sub_100545DFC(&qword_101922B90, &type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize);
  LOBYTE(v10) = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = v3;
  v13 = *(v3 + 8);
  v13(v5, v2);
  if ((v10 & 1) == 0)
  {
    v12(v5, v8, v2);
    swift_beginAccess();
    (*(v16 + 40))(&v1[v11], v5, v2);
    swift_endAccess();
    sub_1005453B4();
  }

  return (v13)(v8, v2);
}

id sub_100545C3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeUserGuidesCollectionRowViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100545CF8()
{
  result = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
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

uint64_t sub_100545DFC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100545E6C()
{
  type metadata accessor for HomeUserGuidesCollectionRowCellModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
    if (v1 <= 0x3F)
    {
      sub_100174E30();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100545F24@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for HomeUserGuidesCarouselView(0);
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v22 = v3;
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColumnViewConfig();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  v12 = *v1;
  swift_getKeyPath();
  *&v24 = v12;
  sub_100545DFC(&qword_101917220, type metadata accessor for HomeUserGuidesCollectionRowCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v12 + OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__viewModels) >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  static MapsDesignConstants.ColumnViews.MapsHome.userGuidesColumnViewConfig(itemCount:containerSize:)();
  (*(v6 + 16))(v8, v11, v5);
  v13 = v1 + *(v2 + 24);
  v14 = *v13;
  v15 = *(v13 + 2);
  LOBYTE(v13) = v13[24];
  v24 = v14;
  v25 = v15;
  v26 = v13;
  sub_1000CE6B8(&qword_10190DAE0);
  Binding.projectedValue.getter();
  sub_10054655C(v1, v4);
  v16 = *(v21 + 80);
  v21 = v5;
  v17 = (v16 + 16) & ~v16;
  v18 = swift_allocObject();
  sub_1005465C0(v4, v18 + v17);
  sub_1000CE6B8(&qword_1019112D8);
  sub_1001D6F30();
  ColumnView.init(config:scrollIndex:columnBuilder:)();
  return (*(v6 + 8))(v11, v21);
}

uint64_t sub_100546264@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = type metadata accessor for HomeUserGuidesCarouselView(0);
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for GuideTileViewModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  swift_getKeyPath();
  v23 = v11;
  sub_100545DFC(&qword_101917220, type metadata accessor for HomeUserGuidesCollectionRowCellModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v11 + OBJC_IVAR____TtC4Maps36HomeUserGuidesCollectionRowCellModel__viewModels);
  if ((v13 & 0xC000000000000001) != 0)
  {

    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v14 = *(v13 + 8 * a1 + 32);
LABEL_5:
    v15 = OBJC_IVAR____TtC4Maps26HomeUserGuideTileViewModel_guideTileViewModel;
    swift_beginAccess();
    (*(v8 + 16))(v10, &v14[v15], v7);
    sub_1003D7544();
    sub_10054655C(a2, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v17 = swift_allocObject();
    sub_1005465C0(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    *(v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
    v18 = v22;
    GuideTile.init(model:menuActions:tapHandler:)();
    result = sub_1000CE6B8(&qword_1019112D8);
    v19 = v18 + *(result + 36);
    *v19 = 0x3FE8000000000000;
    *(v19 + 8) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10054655C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeUserGuidesCarouselView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005465C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeUserGuidesCarouselView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100546624@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HomeUserGuidesCarouselView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_100546264(a1, v6, a2);
}

void sub_10054672C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_100546984()
{
  [*&v0[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem] favoriteType];
  v1 = FavoriteItemType.rawValue.getter();
  if (v1 != FavoriteItemType.rawValue.getter())
  {
    return 0;
  }

  result = [v0 identifier];
  if (result)
  {
    v3 = result;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if (v4 == 0x725479627261654ELL && v6 == 0xED00007469736E61)
    {

      return 1;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v8 & 1;
    }
  }

  return result;
}

id sub_100546AF8(void *a1)
{
  v3 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v4 - 8);
  type metadata accessor for FavoriteItem();
  v5 = MapsSyncObject.__allocating_init()();
  v6 = a1;
  dispatch thunk of MapsSyncObject.createTime.getter();

  dispatch thunk of MapsSyncObject.createTime.setter();
  dispatch thunk of FavoriteItem.type.setter();
  dispatch thunk of CollectionPlaceItem.mapItemStorage.getter();
  dispatch thunk of FavoriteItem.mapItemStorage.setter();
  dispatch thunk of CollectionPlaceItem.customName.getter();
  dispatch thunk of FavoriteItem.customName.setter();
  v7 = [v1 initWithFavoriteItem:v5];
  dispatch thunk of CollectionPlaceItem.type.getter();
  dispatch thunk of CollectionPlaceItem.type.setter();
  dispatch thunk of MapsSyncObject.identifier.getter();

  dispatch thunk of CollectionPlaceItem.originalIdentifier.setter();
  if (qword_101906668 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100021540(v8, qword_10195FE88);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    v14 = [v9 debugDescription];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_10004DEB8(v15, v17, &v20);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Created favorite from collection item: %s", v12, 0xCu);
    sub_10004E3D0(v13);
  }

  else
  {
  }

  return v9;
}

id sub_100546E1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsFavoriteItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100546ED4()
{
  v1 = [*(v0 + 16) shortcutIdentifier];
  if (!v1)
  {
    v2 = *(v0 + 16);
    v3 = [v2 createUniqueIdentifier];
    [v2 setShortcutIdentifier:v3];
    v1 = v3;
  }

  v4 = *(*(v0 + 16) + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem);
  dispatch thunk of FavoriteItem.version.setter();
  dispatch thunk of FavoriteItem.originatingAddressString.setter();
  type metadata accessor for MapsSyncStore();
  *(v0 + 24) = static MapsSyncStore.sharedStore.getter();
  sub_1000CE6B8(&qword_101908400);
  v5 = swift_allocObject();
  *(v0 + 32) = v5;
  *(v5 + 16) = xmmword_1011E47B0;
  *(v5 + 32) = v4;
  v9 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
  v6 = v4;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_10054705C;

  return v9(v5);
}

uint64_t sub_10054705C()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_10054734C;
  }

  else
  {
    v4 = *(v2 + 24);

    v3 = sub_10054717C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10054717C()
{
  v17 = v0;
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isPersisted) = 1;
  if (qword_101906668 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_10195FE88);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = [v6 debugDescription];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_10004DEB8(v10, v12, &v16);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Saved item: %s", v7, 0xCu);
    sub_10004E3D0(v8);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10054734C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100547528(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1002ECEA8;

  return sub_100546EB4();
}

uint64_t sub_100547744(const void *a1, void *a2)
{
  *(v2 + 144) = a2;
  *(v2 + 152) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_1005477BC, 0, 0);
}

uint64_t sub_1005477BC()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1005478D4;
  v2 = swift_continuation_init();
  v0[17] = sub_1000CE6B8(&qword_10191CEA0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003956B0;
  v0[13] = &unk_101621000;
  v0[14] = v2;
  [v1 deleteWithDeleteFromLibrary:0 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005478D4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_100547A60;
  }

  else
  {
    v2 = sub_1005479E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005479E4()
{
  v1 = *(v0 + 152);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 152));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100547A60()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);
  swift_willThrow();

  v3 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v3);

  _Block_release(*(v0 + 152));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100547B10(char a1)
{
  *(v2 + 208) = v1;
  *(v2 + 440) = a1;
  sub_1000CE6B8(&qword_10190EBD0);
  *(v2 + 216) = swift_task_alloc();
  sub_1000CE6B8(&unk_101918E50);
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  *(v2 + 240) = v3;
  *(v2 + 248) = *(v3 - 8);
  *(v2 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_100547C50, 0, 0);
}

uint64_t sub_100547C50()
{
  v1 = *(v0 + 208);
  if (v1[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup] == 1)
  {
    [*(v0 + 208) setIsHidden:1];
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_10054807C;
    v2 = swift_continuation_init();
    *(v0 + 136) = sub_1000CE6B8(&qword_10191CEA0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1003956B0;
    *(v0 + 104) = &unk_101620F60;
    *(v0 + 112) = v2;
    [v1 saveWithCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);
  *(v0 + 192) = _swiftEmptyArrayStorage;
  sub_1000CE6B8(&qword_101908400);
  v6 = swift_allocObject();
  *(v0 + 272) = v6;
  *(v6 + 16) = xmmword_1011E47B0;
  v7 = *&v1[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem];
  *(v0 + 280) = v7;
  *(v6 + 32) = v7;
  *(v0 + 200) = v6;
  v8 = v7;
  dispatch thunk of MapsSyncObject.identifier.getter();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_100024F64(*(v0 + 232), &unk_101918E50);
  }

  else
  {
    v9 = *(v0 + 208);
    (*(*(v0 + 248) + 32))(*(v0 + 256), *(v0 + 232), *(v0 + 240));
    if ([v9 type] != 6)
    {
      type metadata accessor for MapsSyncQueryPredicate();
      sub_1000CE6B8(&unk_10190D5C0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1011E1D30;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      *(v12 + 56) = sub_100014C84(0, &qword_101922DA0);
      *(v12 + 64) = sub_1002592A8();
      *(v12 + 32) = isa;
      v14 = static MapsSyncQueryPredicate.withFormat(_:_:)();
      *(v0 + 288) = v14;

      type metadata accessor for CollectionPlaceItemRequest();
      *(v0 + 296) = CollectionPlaceItemRequest.__allocating_init()();
      v15 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
      v16 = v14;
      v17 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
      *(v0 + 304) = v17;
      v20 = (&async function pointer to dispatch thunk of CollectionPlaceItemRequest.fetch(options:) + async function pointer to dispatch thunk of CollectionPlaceItemRequest.fetch(options:));
      v18 = swift_task_alloc();
      *(v0 + 312) = v18;
      *v18 = v0;
      v18[1] = sub_100548218;
      v11 = v17;
      goto LABEL_11;
    }

    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
  }

  type metadata accessor for MapsSyncStore();
  *(v0 + 416) = static MapsSyncStore.sharedStore.getter();
  v20 = (&async function pointer to dispatch thunk of MapsSyncStore.delete(objects:) + async function pointer to dispatch thunk of MapsSyncStore.delete(objects:));

  v10 = swift_task_alloc();
  *(v0 + 424) = v10;
  *v10 = v0;
  v10[1] = sub_100548E7C;
  v11 = v6;
LABEL_11:

  return v20(v11);
}

uint64_t sub_10054807C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_10054917C;
  }

  else
  {
    v2 = sub_10054818C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10054818C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100548218(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 320) = a1;
  *(v4 + 328) = v1;

  v5 = *(v3 + 296);

  if (v1)
  {
    v6 = sub_1005492B4;
  }

  else
  {
    v6 = sub_10054836C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10054836C()
{
  v28 = v0;
  v1 = *(v0 + 320);
  if (*(v0 + 440) != 1)
  {
    if (v1 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
      if (v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_7:
        if (v4 >= 1)
        {
          v5 = 0;
          v6 = v1 & 0xC000000000000001;
          v7 = *(v0 + 320) + 32;
          v8 = (*(v0 + 248) + 56);
          do
          {
            if (v6)
            {
              v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v9 = *(v7 + 8 * v5);
            }

            v10 = v9;
            v11 = *(v0 + 240);
            v12 = *(v0 + 224);
            dispatch thunk of CollectionPlaceItem.type.getter();
            dispatch thunk of CollectionPlaceItem.type.setter();
            (*v8)(v12, 1, 1, v11);
            dispatch thunk of CollectionPlaceItem.originalIdentifier.setter();
            v13 = v10;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            ++v5;
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          while (v4 != v5);
          goto LABEL_20;
        }

        __break(1u);
        goto LABEL_29;
      }
    }

    type metadata accessor for CollectionPlaceItem();
    v4 = MapsSyncObject.__allocating_init()();
    dispatch thunk of MapsSyncObject.createTime.getter();
    dispatch thunk of MapsSyncObject.createTime.setter();
    dispatch thunk of FavoriteItem.customName.getter();
    dispatch thunk of CollectionPlaceItem.customName.setter();
    dispatch thunk of FavoriteItem.mapItemStorage.getter();
    dispatch thunk of CollectionPlaceItem.mapItemStorage.setter();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_19:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_20:
      v3 = *(v0 + 192);
      goto LABEL_21;
    }

LABEL_29:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_19;
  }

  if (v1 >> 62)
  {
    type metadata accessor for MapsSyncObject();

    v14 = _bridgeCocoaArray<A>(_:)();

    v2 = v14;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for MapsSyncObject();
    v2 = *(v0 + 320);
  }

  sub_1002479F4(v2);
  v3 = _swiftEmptyArrayStorage;
LABEL_21:
  *(v0 + 336) = v3;
  if (qword_101906668 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  *(v0 + 344) = sub_100021540(v15, qword_10195FE88);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315138;
    swift_beginAccess();
    type metadata accessor for MapsSyncObject();

    v20 = Array.description.getter();
    v22 = v21;

    v23 = sub_10004DEB8(v20, v22, &v27);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Deleted item: %s", v18, 0xCu);
    sub_10004E3D0(v19);
  }

  *(v0 + 352) = type metadata accessor for MapsSyncStore();
  *(v0 + 360) = static MapsSyncStore.sharedStore.getter();
  v26 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));

  v24 = swift_task_alloc();
  *(v0 + 368) = v24;
  *v24 = v0;
  v24[1] = sub_100548800;

  return v26(v3);
}

uint64_t sub_100548800()
{
  v2 = *v1;
  *(v2 + 376) = v0;

  v3 = *(v2 + 360);

  if (v0)
  {

    v4 = sub_100549374;
  }

  else
  {
    v4 = sub_100548968;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100548968()
{
  v0[48] = static MapsSyncStore.sharedStore.getter();
  swift_beginAccess();
  v1 = v0[25];
  v0[49] = v1;
  v4 = (&async function pointer to dispatch thunk of MapsSyncStore.delete(objects:) + async function pointer to dispatch thunk of MapsSyncStore.delete(objects:));

  v2 = swift_task_alloc();
  v0[50] = v2;
  *v2 = v0;
  v2[1] = sub_100548A4C;

  return v4(v1);
}

uint64_t sub_100548A4C()
{
  v2 = *v1;
  *(v2 + 408) = v0;

  v3 = *(v2 + 384);

  if (v0)
  {

    v4 = sub_10054943C;
  }

  else
  {
    v4 = sub_100548BAC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100548BAC()
{
  v22 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 320);
    v4 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v4 = 136315394;
    if (v3 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = *(v0 + 288);
    v7 = *(v0 + 248);
    v20 = *(v0 + 256);
    v19 = *(v0 + 240);

    if (v5)
    {
      v8 = 0x64657461647055;
    }

    else
    {
      v8 = 0x64657461657243;
    }

    v9 = sub_10004DEB8(v8, 0xE700000000000000, &v21);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2080;
    type metadata accessor for MapsSyncObject();

    v10 = Array.description.getter();
    v12 = v11;

    v13 = sub_10004DEB8(v10, v12, &v21);

    *(v4 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s collection item for delete: %s", v4, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v20, v19);
  }

  else
  {
    v15 = *(v0 + 248);
    v14 = *(v0 + 256);
    v16 = *(v0 + 240);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100548E7C()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_100549214;
  }

  else
  {
    v4 = *(v2 + 416);

    v3 = sub_100548FA0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100548FA0()
{
  v13 = v0;
  if (qword_101906668 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FE88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    type metadata accessor for MapsSyncObject();

    v6 = Array.description.getter();
    v8 = v7;

    v9 = sub_10004DEB8(v6, v8, &v12);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleted favorite button or item lacking identifier: %s", v4, 0xCu);
    sub_10004E3D0(v5);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10054917C()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100549214()
{
  v1 = *(v0 + 416);
  swift_bridgeObjectRelease_n();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005492B4()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100549374()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10054943C()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100549694(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1002F1E1C;

  return sub_100547B10(a1);
}

void sub_100549750(uint64_t a1, void *a2)
{
  v4 = sub_1000CE6B8(&qword_101918E10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - v6;
  if (qword_1019066C8 != -1)
  {
    swift_once();
  }

  v8 = qword_10195FEF8;
  v9 = OBJC_IVAR____TtC4Maps20MapsFavoritesManager__shortcuts;
  swift_beginAccess();
  v10 = *(v8 + v9);

  os_unfair_lock_lock((v10 + 24));
  v11 = *(v10 + 16);

  os_unfair_lock_unlock((v10 + 24));

  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = *(v8 + v9);

  os_unfair_lock_lock(v13 + 6);

  os_unfair_lock_unlock(v13 + 6);

  type metadata accessor for MapsFavoriteItem();
  isa = Array._bridgeToObjectiveC()().super.isa;

  (*(v5 + 16))(v7, a1, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + v15, v7, v4);
  aBlock[4] = sub_1002F16F4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002B0058;
  aBlock[3] = &unk_101620EC0;
  v17 = _Block_copy(aBlock);

  [a2 moveToIndex:v12 with:isa completion:v17];
  _Block_release(v17);
}

uint64_t sub_100549B88(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100549C00, 0, 0);
}

uint64_t sub_100549C00()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100549CF0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0x61426F5465766F6DLL, 0xEC00000029286B63, sub_10054F114, v2, &type metadata for () + 8);
}

uint64_t sub_100549CF0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100549E88;
  }

  else
  {

    v2 = sub_100549E0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100549E0C()
{
  v1 = *(v0 + 24);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100549E88()
{
  v1 = *(v0 + 24);

  v2 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v2);

  _Block_release(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

void sub_100549F34(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a3;
  v9[4] = a4;
  v10 = v4;

  sub_10054A624(a1, a2, sub_10054EF30, v9);

  if (qword_101906668 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100021540(v11, qword_10195FE88);
  v12 = v10;

  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 134218498;
    *(v14 + 4) = a1;
    *(v14 + 12) = 2048;
    if (a2 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 14) = v16;

    *(v14 + 22) = 2080;
    v17 = [v12 debugDescription];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_10004DEB8(v18, v20, &v23);

    *(v14 + 24) = v21;
    _os_log_impl(&_mh_execute_header, oslog, v13, "Moved to index %ld within %ld: %s", v14, 0x20u);
    sub_10004E3D0(v15);
  }

  else
  {
  }
}

uint64_t sub_10054A1A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a1;
  v13 = a2;

  swift_errorRetain();
  sub_10020AAE4(0, 0, v10, &unk_10120FBC0, v12);
}

uint64_t sub_10054A2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return _swift_task_switch(sub_10054A2FC, 0, 0);
}

uint64_t sub_10054A2FC()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_10054A410;
  v2 = swift_continuation_init();
  v0[17] = sub_1000CE6B8(&qword_10191CEA0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003956B0;
  v0[13] = &unk_101620DF8;
  v0[14] = v2;
  [v1 saveWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10054A410()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_10054A588;
  }

  else
  {
    v2 = sub_10054A520;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10054A520()
{
  (*(v0 + 152))(*(v0 + 168));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10054A588()
{
  v1 = v0[22];
  v2 = v0[19];
  swift_willThrow();
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

void sub_10054A624(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v56 = a2;
  v48 = a2 >> 62;
  p_vtable = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    goto LABEL_94;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v8 = 0;
  while (1)
  {
    if (v6 == v8)
    {
      v13 = v48;
      if (v48)
      {
        v8 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v8 = *(p_vtable + 16);
      }

      goto LABEL_23;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(p_vtable + 16))
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        v6 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v9 = *(v4 + 8 * v8 + 32);
    }

    v10 = v9[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup];

    v11 = v8 + 1;
    v12 = __OFADD__(v8, 1);
    if (v10)
    {
      break;
    }

    ++v8;
    if (v12)
    {
      goto LABEL_88;
    }
  }

  if (v12)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v13 = v48;
  if (v48)
  {
    if (v11 != _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_45;
    }

    goto LABEL_23;
  }

  if (v11 == *(p_vtable + 16))
  {
LABEL_23:
    v6 = v4;
    if (v4 >> 62)
    {
      goto LABEL_79;
    }

LABEL_24:
    v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 < v8)
    {
      goto LABEL_80;
    }

LABEL_25:
    sub_10054EB64(v8, v14, sub_10024A698, v7, type metadata accessor for MapsFavoriteItem);
    if (v13)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v15 = *(p_vtable + 16);
    }

    v4 = v56;
    v6 = v56 >> 62;
    p_vtable = a1;
    if (v56 >> 62)
    {
      v43 = v15;
      v16 = _CocoaArrayWrapper.endIndex.getter();
      v17 = v43 - v16;
      if (!__OFSUB__(v43, v16))
      {
LABEL_30:
        v18 = a1 - v17;
        if (!__OFSUB__(a1, v17))
        {
          if (v18 < 0)
          {
            if (v16 < 2)
            {
              goto LABEL_44;
            }

            v18 = 0;
            if (!v6)
            {
LABEL_34:
              if (v18 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_44;
              }

LABEL_39:
              if (!v18)
              {
                goto LABEL_81;
              }

              v19 = v18 - ((sub_10054B774(a1, v56) & 1) == 0);
              p_vtable = &OBJC_METACLASS____TtC4Maps32UserGuideCoverPhotoImageProvider.vtable;
              v20 = OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem;
              v6 = *(v46 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem);
              if ((v56 & 0xC000000000000001) == 0)
              {
                if (v19 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_105;
                }

                v21 = *(v56 + 8 * v19 + 32);
LABEL_43:
                v22 = *&v21[v20];

                v54 = a3;
                v55 = a4;
                aBlock = _NSConcreteStackBlock;
                v51 = 1107296256;
                v52 = sub_1002B0058;
                v53 = &unk_101620D80;
                v23 = _Block_copy(&aBlock);

                [v6 moveAfterItem:v22 completion:v23];
LABEL_85:
                _Block_release(v23);

                return;
              }

LABEL_103:
              v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v20 = *(p_vtable + 2040);
              goto LABEL_43;
            }
          }

          else
          {
            if (v16 < 2)
            {
              goto LABEL_44;
            }

            if (!v6)
            {
              goto LABEL_34;
            }
          }

          if (v18 < _CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_39;
          }

LABEL_44:
          v24 = *(v46 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem);
          v54 = a3;
          v55 = a4;
          aBlock = _NSConcreteStackBlock;
          v51 = 1107296256;
          v52 = sub_1002B0058;
          v53 = &unk_101620D58;
          v25 = _Block_copy(&aBlock);

          [v24 moveToBackWithCompletion:v25];
          _Block_release(v25);

          return;
        }

        goto LABEL_98;
      }
    }

    else
    {
      v16 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v15 - v16;
      if (!__OFSUB__(v15, v16))
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

LABEL_45:
  v26 = v8 + 5;
  v6 = v4;
  while (2)
  {
    v27 = v26 - 4;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_89;
      }

      if (v27 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_90;
      }

      v28 = *(v6 + 8 * v26);
    }

    v29 = v28[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup];

    if (v29)
    {
      goto LABEL_69;
    }

    if (v27 == v8)
    {
      goto LABEL_68;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 < 0)
      {
        goto LABEL_99;
      }

      v31 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v31)
      {
        goto LABEL_100;
      }

      if (v27 >= v31)
      {
        goto LABEL_101;
      }

      v32 = *(v6 + 8 * v26);
      v49 = *(v6 + 8 * v8 + 32);
      v30 = v32;
    }

    v33 = v30;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
    {
      v6 = sub_1000564AC(v6);
      v34 = (v6 >> 62) & 1;
    }

    else
    {
      LODWORD(v34) = 0;
    }

    v35 = v6 & 0xFFFFFFFFFFFFFF8;
    v36 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
    *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v33;

    if ((v6 & 0x8000000000000000) == 0 && !v34)
    {
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_77;
      }

LABEL_66:
      if (v27 >= *(v35 + 16))
      {
        goto LABEL_93;
      }

      v37 = *(v35 + 8 * v26);
      *(v35 + 8 * v26) = v49;

      v56 = v6;
LABEL_68:
      if (__OFADD__(v8++, 1))
      {
        goto LABEL_92;
      }

LABEL_69:
      v39 = v26 - 3;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_91;
      }

      if (v6 >> 62)
      {
        v40 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v40 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v26;
      if (v39 == v40)
      {
        goto LABEL_78;
      }

      continue;
    }

    break;
  }

  v6 = sub_1000564AC(v6);
  v35 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v27 & 0x8000000000000000) == 0)
  {
    goto LABEL_66;
  }

LABEL_77:
  __break(1u);
LABEL_78:
  v13 = v48;
  if (!(v6 >> 62))
  {
    goto LABEL_24;
  }

LABEL_79:
  v14 = _CocoaArrayWrapper.endIndex.getter();
  if (v14 >= v8)
  {
    goto LABEL_25;
  }

LABEL_80:
  __break(1u);
LABEL_81:
  v41 = OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem;
  v6 = *(v46 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem);
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_105:
    v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v41 = OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem;
LABEL_84:
    v22 = *&v42[v41];

    v54 = a3;
    v55 = a4;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_1002B0058;
    v53 = &unk_101620DA8;
    v23 = _Block_copy(&aBlock);

    [v6 moveBeforeItem:v22 completion:v23];
    goto LABEL_85;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v42 = *(v4 + 32);
    goto LABEL_84;
  }

  __break(1u);
}

void sub_10054AD88(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!sub_10009396C() && (sub_100546984() & 1) == 0)
  {
    if (!(a1 >> 62))
    {
      v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
      type metadata accessor for MapsFavoriteItem();
      v28.super.isa = Array._bridgeToObjectiveC()().super.isa;
      v52 = a2;
      v53 = a3;
      aBlock = _NSConcreteStackBlock;
      v49 = 1107296256;
      v50 = sub_1002B0058;
      v51 = &unk_101620CB8;
      v29 = _Block_copy(&aBlock);

      [v3 moveToIndex:v27 with:v28.super.isa completion:{v29, v42}];
      goto LABEL_41;
    }

LABEL_47:
    v27 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_28;
  }

  v42 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_45:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v3;
  v45 = a2;
  v46 = a3;
  if (v7)
  {
    v8 = 0xED00007469736E61;
    a3 = 0x725479627261654ELL;
    a2 = a1 & 0xC000000000000001;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    v47 = a1 + 32;
    v3 = &selRef_enableAllOptions;
    v43 = a1;
    while (1)
    {
      while (1)
      {
        v10 = __OFSUB__(v7--, 1);
        if (v10)
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        if (a2)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v7 >= *(v9 + 16))
          {
            goto LABEL_44;
          }

          v11 = *(v47 + 8 * v7);
        }

        v12 = v11;
        if ((v11[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup] & 1) == 0)
        {
          v13 = OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem;
          [*&v11[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem] favoriteType];
          v14 = FavoriteItemType.rawValue.getter();
          if (v14 == FavoriteItemType.rawValue.getter())
          {
            goto LABEL_30;
          }

          [*&v12[v13] favoriteType];
          v15 = FavoriteItemType.rawValue.getter();
          if (v15 == FavoriteItemType.rawValue.getter())
          {
            goto LABEL_30;
          }

          [*&v12[v13] favoriteType];
          v16 = FavoriteItemType.rawValue.getter();
          if (v16 == FavoriteItemType.rawValue.getter())
          {
            goto LABEL_30;
          }

          [*&v12[v13] favoriteType];
          v17 = FavoriteItemType.rawValue.getter();
          if (v17 == FavoriteItemType.rawValue.getter())
          {
            v18 = [v12 identifier];
            if (v18)
            {
              break;
            }
          }
        }

        if (!v7)
        {
          goto LABEL_32;
        }
      }

      v19 = v9;
      v20 = a3;
      v21 = v8;
      v22 = v18;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v8 = v21;
      a3 = v20;
      if (v23 == v20 && v25 == v8)
      {
        break;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v9 = v19;
      a1 = v43;
      if (v26)
      {
        goto LABEL_31;
      }

      if (!v7)
      {
        goto LABEL_32;
      }
    }

    a1 = v43;
LABEL_30:

LABEL_31:
    v10 = __OFADD__(v7++, 1);
    if (!v10)
    {
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_47;
  }

LABEL_32:
  if (qword_101906668 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100021540(v30, qword_10195FE88);

  v31 = v44;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock = v35;
    *v34 = 134218498;
    *(v34 + 4) = v7;
    *(v34 + 12) = 2048;
    if (v42)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v34 + 14) = v36;

    *(v34 + 22) = 2080;
    v37 = [v31 debugDescription];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = sub_10004DEB8(v38, v40, &aBlock);

    *(v34 + 24) = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "Moving h/w/s or nearby transit to index %ld within %ld: %s", v34, 0x20u);
    sub_10004E3D0(v35);
  }

  else
  {
  }

  type metadata accessor for MapsFavoriteItem();
  v28.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v52 = v45;
  v53 = v46;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_1002B0058;
  v51 = &unk_101620CE0;
  v29 = _Block_copy(&aBlock);

  [v31 moveToIndex:v7 with:v28.super.isa completion:{v29, v42}];
LABEL_41:
  _Block_release(v29);
}

void sub_10054B3B0(void *a1@<X8>)
{
  v2 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v2 - 8);
  type metadata accessor for FavoriteItem();
  dispatch thunk of FavoriteItem.customName.getter();
  dispatch thunk of FavoriteItem.hidden.getter();
  dispatch thunk of FavoriteItem.latitude.getter();
  dispatch thunk of FavoriteItem.longitude.getter();
  dispatch thunk of FavoriteItem.mapItemCategory.getter();
  dispatch thunk of FavoriteItem.mapItemCategory.getter();
  dispatch thunk of FavoriteItem.mapItemLastRefreshed.getter();
  dispatch thunk of FavoriteItem.mapItemName.getter();
  dispatch thunk of FavoriteItem.muid.getter();
  dispatch thunk of FavoriteItem.originatingAddressString.getter();
  dispatch thunk of FavoriteItem.positionIndex.getter();
  dispatch thunk of FavoriteItem.shortcutIdentifier.getter();
  dispatch thunk of FavoriteItem.source.getter();
  dispatch thunk of FavoriteItem.type.getter();
  dispatch thunk of FavoriteItem.version.getter();
  v3 = FavoriteItem.__allocating_init(customName:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:originatingAddressString:positionIndex:shortcutIdentifier:source:type:version:)();
  dispatch thunk of FavoriteItem.mapItemStorage.getter();
  dispatch thunk of FavoriteItem.mapItemStorage.setter();
  v4 = dispatch thunk of FavoriteItem.fetchContactHandles()();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {

      dispatch thunk of FavoriteItem.addContactHandle(_:)();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  if (qword_101906668 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100021540(v7, qword_10195FE88);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    v13 = [v8 debugDescription];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10004DEB8(v14, v16, &v23);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Created a copy of item: %s", v11, 0xCu);
    sub_10004E3D0(v12);
  }

  v18 = type metadata accessor for MapsFavoriteItem();
  v19 = objc_allocWithZone(v18);
  v20 = v3;
  v21 = sub_100060758(v20);
  a1[3] = v18;

  *a1 = v21;
}

uint64_t sub_10054B774(uint64_t a1, unint64_t a2)
{
  v41 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 1);
  __chkstk_darwin(v3);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000CE6B8(&unk_101926870);
  __chkstk_darwin(v40);
  v7 = &v27 - v6;
  v8 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v43 = &v27 - v12;
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  if (a2 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v35 = v3;
    v36 = v10;
    v10 = 0;
    v33 = i;
    v34 = OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem;
    v38 = a2 & 0xFFFFFFFFFFFFFF8;
    v39 = a2 & 0xC000000000000001;
    v17 = (v4 + 6);
    v27 = (v4 + 4);
    v31 = (v4 + 1);
    v32 = v15;
    v37 = a2;
    v30 = (v4 + 6);
    while (1)
    {
      if (v39)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *(v38 + 16))
        {
          goto LABEL_23;
        }

        v19 = *(a2 + 8 * v10 + 32);
      }

      v3 = v19;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v10 >= v41)
      {

        return 0;
      }

      v42 = v10 + 1;
      dispatch thunk of MapsSyncObject.identifier.getter();
      v20 = v43;
      dispatch thunk of MapsSyncObject.identifier.getter();
      v4 = *(v40 + 48);
      sub_1000D2DFC(v15, v7, &unk_101918E50);
      sub_1000D2DFC(v20, v4 + v7, &unk_101918E50);
      v21 = *v17;
      v22 = v35;
      if ((*v17)(v7, 1, v35) == 1)
      {

        sub_100024F64(v43, &unk_101918E50);
        sub_100024F64(v15, &unk_101918E50);
        v18 = v21(v4 + v7, 1, v22);
        a2 = v37;
        if (v18 == 1)
        {
          sub_100024F64(v7, &unk_101918E50);
          return 1;
        }

        goto LABEL_5;
      }

      v23 = v43;
      sub_1000D2DFC(v7, v36, &unk_101918E50);
      if (v21(v4 + v7, 1, v22) == 1)
      {

        sub_100024F64(v23, &unk_101918E50);
        v15 = v32;
        sub_100024F64(v32, &unk_101918E50);
        (*v31)(v36, v22);
        a2 = v37;
        v17 = v30;
LABEL_5:
        sub_100024F64(v7, &unk_101926870);
        goto LABEL_6;
      }

      v24 = v28;
      (*v27)(v28, v4 + v7, v22);
      sub_10054EF3C();
      v25 = v36;
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();

      v4 = v31;
      v3 = *v31;
      (*v31)(v24, v22);
      sub_100024F64(v23, &unk_101918E50);
      v15 = v32;
      sub_100024F64(v32, &unk_101918E50);
      (v3)(v25, v22);
      sub_100024F64(v7, &unk_101918E50);
      a2 = v37;
      v17 = v30;
      if (v29)
      {
        return 1;
      }

LABEL_6:
      ++v10;
      if (v42 == v33)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  return 0;
}

uint64_t sub_10054BCDC()
{
  if (*(v0 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isPersisted) != 1)
  {
    if (*(v0 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup) == 1)
    {
      [v0 type];
      v1 = MapsSuggestionsLocalizedTitleForShortcutType();
    }

    else
    {
      v4 = [v0 geoMapItem];
      if (v4)
      {
        v3 = [v4 name];
        swift_unknownObjectRelease();
        if (v3)
        {
          goto LABEL_12;
        }
      }

      v1 = [v0 customName];
      if (!v1)
      {
        return 0;
      }
    }

    goto LABEL_11;
  }

  v1 = [v0 customName];
  if (v1)
  {
LABEL_11:
    v3 = v1;
    goto LABEL_12;
  }

  v2 = [v0 geoMapItem];
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 name];
  swift_unknownObjectRelease();
  if (!v3)
  {
    return 0;
  }

LABEL_12:
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t sub_10054BE50()
{
  v1 = v0;
  if ([v0 type] == 6)
  {
    v2 = [v0 identifier];
    if (v2)
    {
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      if (v4 == 0x725479627261654ELL && v6 == 0xED00007469736E61)
      {
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v8 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v9 = MapsSuggestionsLocalizedNearbyTransitShortSubtitleString();
      if (v9)
      {
        goto LABEL_14;
      }

      return 0;
    }
  }

LABEL_8:
  if (*(v1 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup) != 1)
  {
    v10 = [v1 mapItemStorage];
    v11 = MapsSuggestionsMapItemShortAddress();

    if (v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v16 = [v1 mkMapItem];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 _isMapItemTypeBusiness];
    }

    else
    {
      v18 = 0;
    }

    v19 = [v1 mapItemStorage];
    if (!v19 || (v20 = v19, v21 = [v19 name], v20, !v21))
    {
LABEL_27:
      if (v14)
      {
        return v12;
      }

      return 0;
    }

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
    v25 = [v1 customName];
    if (!v25 || (v25, [v1 type] == 2) || objc_msgSend(v1, "type") == 3 || objc_msgSend(v1, "type") == 5)
    {

      goto LABEL_27;
    }

    v27 = [v1 mapItemStorage];
    v28 = MapsSuggestionsMapItemCityName();

    if (v28)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v29;
    }

    else
    {
      v36 = 0;
    }

    v30 = [v1 mapItemStorage];
    v31 = MapsSuggestionsMapItemStreetWithNumber();

    if (v31)
    {
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      if (v18)
      {
        if (v34)
        {
          if (v32 == v22 && v34 == v24)
          {

            goto LABEL_45;
          }

          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v35)
          {
LABEL_44:

LABEL_45:

            if (v14)
            {
              return v12;
            }

            return 0;
          }

          goto LABEL_41;
        }

LABEL_40:

LABEL_41:
        if (v36)
        {

          v15 = MapsSuggestionsLocalizedShortcutSubString();

          goto LABEL_15;
        }

        if (v14)
        {
          return v12;
        }

        return 0;
      }
    }

    else if (v18)
    {
      goto LABEL_40;
    }

    goto LABEL_44;
  }

  v9 = MapsSuggestionsLocalizedAddShortcutString();
LABEL_14:
  v15 = v9;
LABEL_15:
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v12;
}

id sub_10054C298()
{
  if ((*(v0 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isPersisted) & 1) != 0 || (*(v0 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup) & 1) != 0 || [v0 type] == 6)
  {
    v1 = [v0 styleAttributes];

    return v1;
  }

  else
  {
    v3 = dispatch thunk of FavoriteItem.mapItemStorage.getter();
    if (v3 && (v4 = v3, v5 = [v3 _styleAttributes], v4, v5))
    {
      return v5;
    }

    else
    {
      result = [objc_opt_self() markerStyleAttributes];
      if (!result)
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_10054C384()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  v4 = sub_1000CE6B8(&unk_101926858);
  *v3 = v0;
  v3[1] = sub_10054C48C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000001BLL, 0x8000000101241080, sub_10054EE9C, v2, v4);
}

uint64_t sub_10054C48C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_10054C8D4;
  }

  else
  {

    v2 = sub_10054C5A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10054C5C8()
{
  v1 = *(v0 + 104);

  if (v1)
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 112);
    [v2 expectedTravelTime];
    v5 = v4;
    if (v3)
    {
      [v2 distance];
    }

    else
    {
      v6 = *(v0 + 40);
    }

    if (qword_1019066A0 != -1)
    {
      v18 = v6;
      swift_once();
      v6 = v18;
    }

    *(*(v0 + 24) + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isAlreadyThere) = *&qword_10195FED0 > v6;
    if (qword_1019066A8 != -1)
    {
      swift_once();
    }

    if (v5 >= *&qword_10195FED8)
    {
      v11 = [objc_allocWithZone(NSDateComponentsFormatter) init];
      [v11 setAllowedUnits:112];
      [v11 setMaximumUnitCount:2];
      [v11 setZeroFormattingBehavior:2];
      if (v5 >= 3600.0)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      [v11 setUnitsStyle:v12];
      v13 = [v11 stringFromTimeInterval:v5];
      if (v13)
      {
        v14 = v13;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = String._bridgeToObjectiveC()();
      }

      else
      {

        v15 = 0;
      }

      [*(v0 + 24) setSubtitle:v15];
      v10 = v2;
      v2 = v15;
    }

    else
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 24);
      v20._object = 0x8000000101241030;
      v8._countAndFlagsBits = 0x79622065736F6C43;
      v9._object = 0x8000000101241010;
      v20._countAndFlagsBits = 0xD000000000000041;
      v9._countAndFlagsBits = 0xD000000000000019;
      v8._object = 0xE800000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, qword_1019600D8, v8, v20);
      v10 = String._bridgeToObjectiveC()();

      [v7 setSubtitle:v10];
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10054C8D4()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_10054C938, v1, v2);
}

uint64_t sub_10054C938()
{
  v1 = *(v0 + 112);

  if (v1)
  {
    v2 = *(v0 + 24);
    [v2 setSubtitle:0];
    *(v2 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isAlreadyThere) = 0;
  }

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error updating ETA: %@", v5, 0xCu);
    sub_100024F64(v6, &qword_1019144F0);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10054CACC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

void sub_10054CEA0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10054D3B4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

id sub_10054D4EC()
{
  v1 = [v0 customName];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    if ([v0 type] == 6)
    {
      return v3;
    }
  }

  if (*(v0 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup) == 1)
  {
    [v0 type];
    v5 = NSStringFromMapsSuggestionsShortcutType();
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7._countAndFlagsBits = 0x70757465535FLL;
    v7._object = 0xE600000000000000;
    String.append(_:)(v7);
    return v6;
  }

  else
  {
    result = [v0 geoMapItem];
    if (result)
    {
      [result coordinate];
      v8 = [v0 identifierForCoordinateWithCoordinate:?];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      swift_unknownObjectRelease();

      return v9;
    }
  }

  return result;
}

void sub_10054D6A8(uint64_t a1, void *a2)
{
  v4 = sub_1000CE6B8(&qword_101926868);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_10054EEA4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100113C68;
  aBlock[3] = &unk_101620C68;
  v11 = _Block_copy(aBlock);

  [a2 calculateETAWithCompletionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_10054D858(void *a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000CE6B8(&qword_101926868);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v3 = a1;
    sub_1000CE6B8(&qword_101926868);
    return CheckedContinuation.resume(returning:)();
  }
}

id sub_10054D8DC()
{
  if (v0[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isMeCardWritebackEnabled] != 1)
  {
    return 0;
  }

  [*&v0[OBJC_IVAR____TtC4Maps16MapsFavoriteItem_favoriteItem] sourceType];
  v1 = FavoriteItemSourceType.rawValue.getter();
  if (v1 == FavoriteItemSourceType.rawValue.getter() || [v0 type] != 2 && objc_msgSend(v0, "type") != 3 && objc_msgSend(v0, "type") != 5)
  {
    return 0;
  }

  result = [v0 geoMapItem];
  if (!result)
  {
    return result;
  }

  v3 = [result addressObject];
  swift_unknownObjectRelease();
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 cnPostalAddress];

  if (!v4)
  {
    return 0;
  }

  [v0 type];
  sub_1002EE2F4();
  v5 = objc_allocWithZone(CNLabeledValue);
  v6 = v4;
  v7 = String._bridgeToObjectiveC()();

  v8 = [v5 initWithLabel:v7 value:v6];

  v9 = [v8 identifier];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  [v0 setShortcutIdentifier:v9];

  return v8;
}

uint64_t sub_10054DB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000D2DFC(a3, v23 - v10, &unk_10190BA50);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100024F64(v11, &unk_10190BA50);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100024F64(a3, &unk_10190BA50);

    return v21;
  }

LABEL_8:
  sub_100024F64(a3, &unk_10190BA50);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

unint64_t sub_10054DE04(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  sub_1000CE6B8(&qword_101924FD0);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  if (a3 < 1)
  {
    return sub_100024F64(a4, &qword_10191B730);
  }

  result = sub_10005EB40(a4, v10);
  if (a3 == 1)
  {
    return sub_100024F64(a4, &qword_10191B730);
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_10054DF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for RefinementsBarButtonViewModel(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_100024F64(a4, &qword_10191A390);
  }

  if (v17 < 1)
  {
    return sub_100024F64(a4, &qword_10191A390);
  }

  result = sub_10023FF74(a4, v15);
  if (v12 >= v17)
  {
    return sub_100024F64(a4, &qword_10191A390);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_10054E0C0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  sub_100014C84(0, &qword_101922CC0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_10054E194(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_100014C84(0, a5);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = &result[-v8];
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v16 = &result[-v8];
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = &result[v12];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;
    result = v9;
    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}