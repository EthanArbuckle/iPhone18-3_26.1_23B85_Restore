uint64_t sub_100752B70(int a1)
{
  v2 = v1;
  v64 = a1;
  v3 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
  v68 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_1011A0F90);
  v63 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  sub_100763090(&qword_1011A0F98, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
  v66 = v12;
  v67 = v7;
  NSDiffableDataSourceSnapshot.init()();
  v65 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session;
  v13 = *&v2[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session];
  v14 = &swift_isaMask;
  v15 = *((swift_isaMask & *v13) + 0x180);
  v16 = v13;
  v17 = v15();

  swift_unknownObjectWeakInit();
  v18 = *(v17 + 16);
  if (v18)
  {
    v61 = v2;
    v62 = v10;
    v74 = _swiftEmptyArrayStorage;
    v70 = v18;
    sub_10066CF1C(0, v18, 0);
    v19 = 0;
    v71 = v74;
    *&v69 = v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v20 = v68;
    while (v19 < *(v17 + 16))
    {
      v21 = v17;
      v22 = v14;
      sub_1007630D8(v69 + *(v4 + 72) * v19, v6, type metadata accessor for SharePlayTogetherSession.Participant);
      sub_1007535E8(v6, &v72, v9);
      sub_100761B84(v6, type metadata accessor for SharePlayTogetherSession.Participant);
      v23 = v71;
      v74 = v71;
      v25 = v71[2];
      v24 = v71[3];
      if (v25 >= v24 >> 1)
      {
        sub_10066CF1C(v24 > 1, v25 + 1, 1);
        v20 = v68;
        v23 = v74;
      }

      ++v19;
      v23[2] = v25 + 1;
      v26 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v71 = v23;
      sub_100763140(v9, v23 + v26 + *(v20 + 72) * v25, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
      v14 = v22;
      v17 = v21;
      if (v70 == v19)
      {

        v2 = v61;
        v10 = v62;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v71 = _swiftEmptyArrayStorage;
LABEL_9:
  swift_unknownObjectWeakDestroy();
  v27 = [v2 traitCollection];
  v28 = [v27 userInterfaceIdiom];

  v29 = v66;
  if (v28 == 3)
  {
    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10109C2C0);
    v30 = *&v2[v65];
    v6 = v29;
    v31 = *((*v14 & *v30) + 0x180);
    v32 = v30;
    v33 = v31();

    v34 = *(v33 + 16);

    if (v34)
    {
      NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10109C2F0);
      v72 = 0;
      v73 = 0;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    }

    sub_10010FC20(&qword_1011A0FA0);
    v35 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    *(swift_allocObject() + 16) = xmmword_100EBC6B0;
    swift_storeEnumTagMultiPayload();
    v72 = 0;
    v73 = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10109C320);
    sub_10010FC20(&qword_1011A0FA0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_100EBC6B0;
    *(v56 + v35) = MRGroupSessionNearbyContactDiscoveryEnabled();
    swift_storeEnumTagMultiPayload();
    v72 = 0;
    v73 = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v29 = v6;
  }

  else
  {
    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10109C350);
    v36 = sub_10010FC20(&qword_1011A0FA0);
    v37 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v68 = *(v68 + 72);
    v70 = v36;
    v38 = swift_allocObject();
    v69 = xmmword_100EBC6B0;
    *(v38 + 16) = xmmword_100EBC6B0;
    v6 = v67;
    swift_storeEnumTagMultiPayload();
    v72 = 0;
    v73 = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v39 = v65;
    v40 = *&v2[v65];
    v41 = *((*v14 & *v40) + 0x1B0);
    v42 = v40;
    v43 = v41();

    if (v43 >= 1)
    {
      v44 = swift_allocObject();
      *(v44 + 16) = v69;
      v45 = *&v2[v39];
      v46 = v2;
      v47 = *((swift_isaMask & *v45) + 0x1B0);
      v48 = v45;
      v49 = v47();
      v2 = v46;
      v29 = v66;
      v50 = v49;

      *(v44 + v37) = v50;
      swift_storeEnumTagMultiPayload();
      v72 = 0;
      v73 = 0;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    }

    v72 = 0;
    v73 = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10109C380);
    v51 = *&v2[v39];
    v52 = *((swift_isaMask & *v51) + 0x110);
    v53 = v51;
    v54 = v52();

    if ((v54 & 1) == 0)
    {
      *(swift_allocObject() + 16) = v69;
      swift_storeEnumTagMultiPayload();
      v72 = 0;
      v73 = 0;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    }

    if (*(*&v2[v39] + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost) == 1)
    {
      v55 = swift_allocObject();
      *(v55 + 16) = v69;
      *(v55 + v37) = MRGroupSessionNearbyContactDiscoveryEnabled();
      swift_storeEnumTagMultiPayload();
      v72 = 0;
      v73 = 0;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    }
  }

  v57 = *&v2[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource];
  if (v64)
  {
    if (v57)
    {
      v58 = v57;

      dispatch thunk of UICollectionViewDiffableDataSource.applySnapshotUsingReloadData(_:completion:)();

      return (*(v63 + 8))(v29, v10);
    }

    goto LABEL_25;
  }

  if (v57)
  {
    v60 = v57;

    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v63 + 8))(v29, v10);
  }

LABEL_26:
  __break(1u);
  sub_100761B84(v6, type metadata accessor for SharePlayTogetherSession.Participant);

  __break(1u);
  return result;
}

uint64_t sub_1007535E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011A0FA8);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = sub_10010FC20(&unk_1011A0FB0);
  __chkstk_darwin(v11 - 8);
  v48 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v46 = &v43 - v14;
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  v51 = a1;
  sub_1007630D8(a1, &v43 - v19, type metadata accessor for SharePlayTogetherSession.Participant);
  v21 = *(v6 + 56);
  v21(v20, 0, 1, v5);
  swift_beginAccess();
  v50 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  v47 = v6 + 56;
  v49 = v21;
  if (Strong)
  {
    v23 = Strong;
    v24 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastPendingParticipantScrolledTo;
    swift_beginAccess();
    sub_1000089F8(v23 + v24, v17, &unk_1011A0FB0);
  }

  else
  {
    (v21)(_TtC5Music13AuthPresenter.vtable, v17, 1, 1, v5);
  }

  v25 = *(v8 + 48);
  sub_1000089F8(v20, v10, &unk_1011A0FB0);
  sub_1000089F8(v17, &v10[v25], &unk_1011A0FB0);
  v26 = *(v6 + 48);
  if (v26(v10, 1, v5) != 1)
  {
    v31 = v46;
    sub_1000089F8(v10, v46, &unk_1011A0FB0);
    v44 = v5;
    if (v26(&v10[v25], 1, v5) != 1)
    {
      v36 = v45;
      sub_100763140(&v10[v25], v45, type metadata accessor for SharePlayTogetherSession.Participant);
      v37 = static SharePlayTogetherSession.Participant.__derived_struct_equals(_:_:)(v31, v36);
      sub_100761B84(v36, type metadata accessor for SharePlayTogetherSession.Participant);
      sub_1000095E8(v17, &unk_1011A0FB0);
      sub_1000095E8(v20, &unk_1011A0FB0);
      sub_100761B84(v31, type metadata accessor for SharePlayTogetherSession.Participant);
      sub_1000095E8(v10, &unk_1011A0FB0);
      v30 = v51;
      v27 = v44;
      v29 = v49;
      if ((v37 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_1000095E8(v17, &unk_1011A0FB0);
    sub_1000095E8(v20, &unk_1011A0FB0);
    sub_100761B84(v31, type metadata accessor for SharePlayTogetherSession.Participant);
    v27 = v44;
    v29 = v49;
LABEL_9:
    sub_1000095E8(v10, &qword_1011A0FA8);
    v30 = v51;
    goto LABEL_10;
  }

  sub_1000095E8(v17, &unk_1011A0FB0);
  v27 = v5;
  sub_1000095E8(v20, &unk_1011A0FB0);
  v28 = v26(&v10[v25], 1, v5);
  v29 = v49;
  if (v28 != 1)
  {
    goto LABEL_9;
  }

  sub_1000095E8(v10, &unk_1011A0FB0);
  v30 = v51;
LABEL_13:
  if (*(v30 + 32))
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39)
  {
    v40 = v39;
    v41 = v48;
    v29(v48, 1, 1, v27);
    v42 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastPendingParticipantScrolledTo;
    swift_beginAccess();
    sub_10006B010(v41, v40 + v42, &unk_1011A0FB0);
    swift_endAccess();
  }

LABEL_10:
  swift_beginAccess();
  v32 = swift_unknownObjectWeakLoadStrong();
  if (v32)
  {
    v33 = v32;
    v34 = v48;
    v29(v48, 1, 1, v27);
    v35 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastPendingParticipantScrolledTo;
    swift_beginAccess();
    sub_10006B010(v34, v33 + v35, &unk_1011A0FB0);
    swift_endAccess();
  }

LABEL_14:
  sub_1007630D8(v30, v52, type metadata accessor for SharePlayTogetherSession.Participant);
  type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_100753C48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_viewDidAppearOnce) == 1)
    {
      sub_1007525E8();
    }
  }
}

void sub_100753CB0()
{
  v1 = [v0 presentedViewController];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

    goto LABEL_14;
  }

  v4 = [v3 viewControllers];
  sub_100009F78(0, &qword_101183D40);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = sub_10004056C(0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v10 = v6;

  type metadata accessor for QRCodeOverlayViewController();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    (*((swift_isaMask & *v7) + 0x1D8))();

    goto LABEL_17;
  }

LABEL_14:
  v8 = [v0 presentedViewController];
  if (!v8)
  {
    return;
  }

  v10 = v8;
  type metadata accessor for QRCodeOverlayViewController();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    (*((swift_isaMask & *v9) + 0x1D8))();
  }

LABEL_17:
}

id sub_100753F1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharePlayTogetherSessionManagementViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10075404C()
{
  sub_1007645AC(319, &qword_1011A0EB0, type metadata accessor for SharePlayTogetherSession.Participant, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100754274(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10010FC20(&qword_1011A0F78);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource];
  if (v12)
  {
    v13 = v12;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v14 = type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
    if ((*(*(v14 - 8) + 48))(v11, 1, v14) != 1)
    {
      sub_1000089F8(v11, v8, &qword_1011A0F78);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 4)
      {
        v16 = *&v2[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session];
        v17 = *((swift_isaMask & *v16) + 0x258);
        v18 = v16;
        v17(&v28);
        v19 = *(&v28 + 1);
        v20 = v29;
        v21 = v30;

        if (!v21)
        {
          sub_1000095E8(v11, &qword_1011A0F78);
          return;
        }

        v32 = v28;
        v33 = v29;
        v34 = v21;
        v35 = v31;
        sub_10002BC44(v19, v20);
        v22 = v21;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v23 = objc_allocWithZone(type metadata accessor for QRCodeOverlayViewController());
        v24 = QRCodeOverlayViewController.init(qrCode:title:subtitle:)(&v32);
        v25 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v24];

        [v25 setModalPresentationStyle:5];
        [v2 presentViewController:v25 animated:0 completion:0];

        sub_1000095E8(&v28, &unk_1011A0F80);
      }

      else if (EnumCaseMultiPayload == 2)
      {
        MRSetGroupSessionNearbyContactDiscoveryEnabled();
        sub_100752B70(0);
      }

      else
      {
        sub_100761B84(v8, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
      }
    }

    sub_1000095E8(v11, &qword_1011A0F78);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [a1 deselectItemAtIndexPath:isa animated:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100754784(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  sub_100762EB8();
  LOBYTE(a1) = v11;

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

uint64_t sub_1007548A4()
{
  result = type metadata accessor for SharePlayTogetherSession.Participant(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_100754960@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_10010FC20(&qword_1011A10D0);
  __chkstk_darwin(v2 - 8);
  v4 = v10 - v3;
  *v4 = static HorizontalAlignment.center.getter();
  *(v4 + 1) = 0x4000000000000000;
  v4[16] = 0;
  v5 = sub_10010FC20(&qword_1011A10F0);
  sub_100754AB0(&v4[*(v5 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v4, a1, &qword_1011A10D0);
  v6 = a1 + *(sub_10010FC20(&qword_1011A10B8) + 36);
  v7 = v10[5];
  *(v6 + 64) = v10[4];
  *(v6 + 80) = v7;
  *(v6 + 96) = v10[6];
  v8 = v10[1];
  *v6 = v10[0];
  *(v6 + 16) = v8;
  result = v10[3];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = result;
  return result;
}

uint64_t sub_100754AB0@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10010FC20(&qword_1011A10F8);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v55 - v7;
  v9 = Image.init(systemName:)();
  v10 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v65 = v9;
  v66 = KeyPath;
  v67 = v10;
  static Font.Weight.semibold.getter();
  sub_10010FC20(&unk_1011A1100);
  sub_100238768();
  View.fontWeight(_:)();

  v12 = *(sub_10010FC20(&qword_1011A1110) + 36);
  v56 = v8;
  v13 = (v8 + v12);
  v14 = *(sub_10010FC20(&unk_1011A1118) + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v15 = type metadata accessor for SymbolRenderingMode();
  (*(*(v15 - 8) + 56))(v13 + v14, 0, 1, v15);
  *v13 = swift_getKeyPath();
  LOBYTE(v13) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v16 = v8 + *(v4 + 44);
  *v16 = v13;
  *(v16 + 8) = v17;
  *(v16 + 16) = v18;
  *(v16 + 24) = v19;
  *(v16 + 32) = v20;
  *(v16 + 40) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v65 = String.init(localized:table:bundle:locale:comment:)();
  v66 = v21;
  sub_100009838();
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  static Font.body.getter();
  v27 = Text.font(_:)();
  v29 = v28;
  LOBYTE(v8) = v30;

  sub_10011895C(v22, v24, v26 & 1);

  static Font.Weight.bold.getter();
  v31 = Text.fontWeight(_:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_10011895C(v27, v29, v8 & 1);

  LOBYTE(v27) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v35 & 1;
  LOBYTE(v65) = v35 & 1;
  LOBYTE(v61) = 0;
  v47 = v56;
  v48 = v57;
  sub_1000089F8(v56, v57, &qword_1011A10F8);
  v49 = v58;
  sub_1000089F8(v48, v58, &qword_1011A10F8);
  v50 = (v49 + *(sub_10010FC20(&unk_1011A1128) + 48));
  *&v61 = v31;
  *(&v61 + 1) = v33;
  LOBYTE(v62) = v46;
  *(&v62 + 1) = *v60;
  DWORD1(v62) = *&v60[3];
  *(&v62 + 1) = v37;
  LOBYTE(v63) = v27;
  *(&v63 + 1) = *v59;
  DWORD1(v63) = *&v59[3];
  *(&v63 + 1) = v39;
  *v64 = v41;
  *&v64[8] = v43;
  *&v64[16] = v45;
  v64[24] = 0;
  v51 = v61;
  v52 = v62;
  *(v50 + 57) = *&v64[9];
  v53 = *v64;
  v50[2] = v63;
  v50[3] = v53;
  *v50 = v51;
  v50[1] = v52;
  sub_1000089F8(&v61, &v65, &qword_10117FF50);
  sub_1000095E8(v47, &qword_1011A10F8);
  v65 = v31;
  v66 = v33;
  LOBYTE(v67) = v46;
  *(&v67 + 1) = *v60;
  HIDWORD(v67) = *&v60[3];
  v68 = v37;
  v69 = v27;
  *v70 = *v59;
  *&v70[3] = *&v59[3];
  v71 = v39;
  v72 = v41;
  v73 = v43;
  v74 = v45;
  v75 = 0;
  sub_1000095E8(&v65, &qword_10117FF50);
  return sub_1000095E8(v48, &qword_1011A10F8);
}

uint64_t sub_100755040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  *a4 = v7;
  v8 = v7;
  State.init(wrappedValue:)();
  *(a4 + 8) = v12;
  *(a4 + 16) = v13;
  v9 = type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell(0);
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  v10 = *(v9 + 28);
  *(a4 + v10) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
}

uint64_t sub_100755104@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  type metadata accessor for SharePlayTogetherSession(0);
  sub_100763090(&unk_101189E70, type metadata accessor for SharePlayTogetherSession);
  v10 = v9;
  *a5 = ObservedObject.init(wrappedValue:)();
  *(a5 + 8) = v11;
  *(a5 + 16) = a2;
  v12 = type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView(0);
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  v13 = *(v12 + 28);
  *(a5 + v13) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
}

id sub_10075520C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v10 = *(a1 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  v7 = type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0);
  sub_1007630D8(a2, a4 + v7[5], type metadata accessor for SharePlayTogetherSession.Participant);
  v8 = v7[7];
  *(a4 + v8) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  *a4 = v10;
  *(a4 + v7[6]) = a3;

  return v10;
}

uint64_t sub_1007552DC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v22 = a2;
  v2 = sub_10010FC20(&unk_1011A1030);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for MainActor();
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  Binding.init(get:set:)();
  Toggle<>.init(_:isOn:)();
  v10 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v12 = &v5[*(v3 + 44)];
  *v12 = KeyPath;
  v12[1] = v10;
  if (v21)
  {
    v13 = [objc_opt_self() _carSystemFocusPrimaryColor];
    v14 = Color.init(uiColor:)();
  }

  else
  {
    v14 = static Color.primary.getter();
  }

  v15 = v14;
  v16 = swift_getKeyPath();
  v17 = v22;
  sub_10003D17C(v5, v22, &unk_1011A1030);
  result = sub_10010FC20(&qword_1011A1018);
  v19 = (v17 + *(result + 36));
  *v19 = v16;
  v19[1] = v15;
  return result;
}

uint64_t sub_100755504@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v53 = a2;
  v54 = a3;
  v67 = a4;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v52 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_1011A1688);
  v56 = *(v9 - 8);
  v57 = v9;
  __chkstk_darwin(v9);
  v55 = &v52 - v10;
  v59 = sub_10010FC20(&qword_1011A1690);
  __chkstk_darwin(v59);
  v61 = &v52 - v11;
  v64 = sub_10010FC20(&qword_1011A1698);
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v58 = &v52 - v12;
  v13 = sub_10010FC20(&qword_1011A16A0);
  __chkstk_darwin(v13 - 8);
  v65 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  v66 = static HorizontalAlignment.center.getter();
  v73 = 0;
  sub_100755F00(&v69);
  v88 = *&v70[64];
  v89 = *&v70[80];
  v90[0] = *&v70[96];
  *(v90 + 9) = *&v70[105];
  v85 = *&v70[16];
  v86 = *&v70[32];
  v87 = *&v70[48];
  v83 = v69;
  v84 = *v70;
  v91[5] = *&v70[64];
  v91[6] = *&v70[80];
  v92[0] = *&v70[96];
  *(v92 + 9) = *&v70[105];
  v91[2] = *&v70[16];
  v91[3] = *&v70[32];
  v91[4] = *&v70[48];
  v91[0] = v69;
  v91[1] = *v70;
  sub_1000089F8(&v83, v68, &qword_1011A16A8);
  sub_1000095E8(v91, &qword_1011A16A8);
  *(&v72[5] + 7) = v88;
  *(&v72[6] + 7) = v89;
  *(&v72[7] + 7) = v90[0];
  v72[8] = *(v90 + 9);
  *(&v72[1] + 7) = v84;
  *(&v72[2] + 7) = v85;
  *(&v72[3] + 7) = v86;
  *(&v72[4] + 7) = v87;
  *(v72 + 7) = v83;
  v63 = v73;
  static Alignment.center.getter();
  v18 = 1;
  v19 = _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v20 = swift_isaMask & *a1;
  *(&v74[6] + 7) = *&v74[21];
  *(&v74[8] + 7) = *&v74[23];
  *(&v74[10] + 7) = *&v74[25];
  *(&v74[12] + 7) = *&v74[27];
  *(v74 + 7) = *&v74[15];
  *(&v74[2] + 7) = *&v74[17];
  *(&v74[4] + 7) = *&v74[19];
  (*(v20 + 600))(&v75, v19);
  if (v77)
  {
    v79 = v75;
    v80 = v76;
    v81 = v77;
    v82 = v78;
    v21 = swift_allocObject();
    v22 = v53;
    v23 = v54;
    v21[2] = a1;
    v21[3] = v22;
    v21[4] = v23;
    __chkstk_darwin(v21);
    v24 = a1;
    sub_100030444(v22);
    sub_10010FC20(&qword_1011A16C0);
    sub_100765540();
    v25 = v55;
    Button.init(action:label:)();
    KeyPath = swift_getKeyPath();
    v54 = KeyPath;
    v27 = static Color.primary.getter();
    v53 = v27;
    v28 = [objc_opt_self() systemBackgroundColor];
    v29 = Color.init(_:)();
    v30 = static Color.accentColor.getter();
    *&v69 = KeyPath;
    BYTE8(v69) = 0;
    *v70 = v27;
    *&v70[8] = v29;
    *&v70[16] = 0;
    *&v70[24] = v30;
    sub_100020674(&qword_1011A16E0, &qword_1011A1688);
    sub_100764EF4();
    v31 = v61;
    v32 = v57;
    View.buttonStyle<A>(_:)();

    (*(v56 + 8))(v25, v32);
    v33 = v31;
    v34 = &v31[*(v59 + 36)];
    v35 = *(type metadata accessor for RoundedRectangle() + 20);
    v36 = enum case for RoundedCornerStyle.continuous(_:);
    v37 = type metadata accessor for RoundedCornerStyle();
    (*(*(v37 - 8) + 104))(&v34[v35], v36, v37);
    __asm { FMOV            V0.2D, #8.0 }

    *v34 = _Q0;
    *&v34[*(sub_10010FC20(&qword_101185680) + 36)] = 256;
    sub_10010FC20(&unk_101181640);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100EBC6B0;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    *(v43 + 32) = String.init(localized:table:bundle:locale:comment:)();
    *(v43 + 40) = v44;
    sub_1007655F8();
    sub_100009838();
    v45 = v58;
    View.accessibilityInputLabels<A>(_:)();
    sub_1000095E8(&v75, &unk_1011A0F80);

    sub_1000095E8(v33, &qword_1011A1690);
    sub_10003D17C(v45, v17, &qword_1011A1698);
    v18 = 0;
  }

  (*(v62 + 56))(v17, v18, 1, v64);
  v46 = v65;
  sub_1000089F8(v17, v65, &qword_1011A16A0);
  *(&v68[12] + 1) = v72[5];
  *(&v68[14] + 1) = v72[6];
  *(&v68[16] + 1) = v72[7];
  *(&v68[18] + 1) = v72[8];
  *(&v68[4] + 1) = v72[1];
  *(&v68[6] + 1) = v72[2];
  *(&v68[8] + 1) = v72[3];
  *(&v68[10] + 1) = v72[4];
  *(&v68[2] + 1) = v72[0];
  *(&v68[32] + 1) = *&v74[12];
  *(&v68[28] + 1) = *&v74[8];
  *(&v68[30] + 1) = *&v74[10];
  *(&v68[20] + 1) = *v74;
  *(&v68[22] + 1) = *&v74[2];
  *(&v68[24] + 1) = *&v74[4];
  v48 = v66;
  v47 = v67;
  v68[0] = v66;
  v68[1] = 0x4014000000000000;
  v49 = v63;
  LOBYTE(v68[2]) = v63;
  v68[34] = *(&v74[13] + 7);
  *(&v68[26] + 1) = *&v74[6];
  memcpy(v67, v68, 0x118uLL);
  v50 = sub_10010FC20(&qword_1011A16B0);
  sub_1000089F8(v46, v47 + *(v50 + 48), &qword_1011A16A0);
  sub_1000089F8(v68, &v69, &qword_1011A16B8);
  sub_1000095E8(v17, &qword_1011A16A0);
  sub_1000095E8(v46, &qword_1011A16A0);
  *&v70[81] = v72[5];
  *&v70[97] = v72[6];
  *&v70[113] = v72[7];
  *&v70[129] = v72[8];
  *&v70[17] = v72[1];
  *&v70[33] = v72[2];
  *&v70[49] = v72[3];
  *&v70[65] = v72[4];
  *&v70[1] = v72[0];
  *v71 = *&v74[12];
  *&v70[209] = *&v74[8];
  *&v70[225] = *&v74[10];
  *&v70[145] = *v74;
  *&v70[161] = *&v74[2];
  *&v70[177] = *&v74[4];
  *&v69 = v48;
  *(&v69 + 1) = 0x4014000000000000;
  v70[0] = v49;
  *&v71[15] = *(&v74[13] + 7);
  *&v70[193] = *&v74[6];
  return sub_1000095E8(&v69, &qword_1011A16B8);
}

uint64_t sub_100755F00@<X0>(_OWORD *a1@<X8>)
{
  v67 = a1;
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v65 = &v59[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v64 = &v59[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *&v79 = String.init(localized:table:bundle:locale:comment:)();
  *(&v79 + 1) = v5;
  v66 = sub_100009838();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  static Font.footnote.getter();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;

  sub_10011895C(v6, v8, v10 & 1);

  static Font.Weight.semibold.getter();
  v16 = Text.fontWeight(_:)();
  v18 = v17;
  v20 = v19;
  sub_10011895C(v11, v13, v15 & 1);

  static Color.primary.getter();
  v21 = Text.foregroundColor(_:)();
  v61 = v22;
  v62 = v21;
  LOBYTE(v13) = v23;
  v63 = v24;

  sub_10011895C(v16, v18, v20 & 1);

  KeyPath = swift_getKeyPath();
  v60 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v68 = v13 & 1;
  LOBYTE(v79) = v13 & 1;
  LOBYTE(v84[0]) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *&v79 = String.init(localized:table:bundle:locale:comment:)();
  *(&v79 + 1) = v33;
  v34 = Text.init<A>(_:)();
  v36 = v35;
  LOBYTE(v18) = v37;
  static Font.caption.getter();
  v38 = Text.font(_:)();
  v40 = v39;
  v42 = v41;

  sub_10011895C(v34, v36, v18 & 1);

  static Color.primary.getter();
  v43 = Text.foregroundColor(_:)();
  v45 = v44;
  LODWORD(v66) = v46;
  v48 = v47;

  sub_10011895C(v38, v40, v42 & 1);

  v49 = swift_getKeyPath();
  v51 = v61;
  v50 = v62;
  *&v74 = v62;
  *(&v74 + 1) = v61;
  LOBYTE(v75) = v68;
  *(&v75 + 1) = *v73;
  DWORD1(v75) = *&v73[3];
  v52 = v63;
  *(&v75 + 1) = v63;
  *&v76 = KeyPath;
  BYTE8(v76) = 1;
  *(&v76 + 9) = *v72;
  HIDWORD(v76) = *&v72[3];
  LOBYTE(v18) = v60;
  LOBYTE(v77) = v60;
  DWORD1(v77) = *&v71[3];
  *(&v77 + 1) = *v71;
  *(&v77 + 1) = v26;
  *&v78[0] = v28;
  *(&v78[0] + 1) = v30;
  *&v78[1] = v32;
  BYTE8(v78[1]) = 0;
  v79 = v74;
  v80 = v75;
  *(v83 + 9) = *(v78 + 9);
  v82 = v77;
  v83[0] = v78[0];
  v81 = v76;
  LOBYTE(v40) = v66 & 1;
  v70 = v66 & 1;
  v53 = v75;
  v54 = v67;
  *v67 = v74;
  v54[1] = v53;
  v55 = v81;
  v56 = v82;
  v57 = v83[1];
  v54[4] = v83[0];
  v54[5] = v57;
  v54[2] = v55;
  v54[3] = v56;
  *(v54 + 12) = v43;
  *(v54 + 13) = v45;
  *(v54 + 112) = v40;
  *(v54 + 15) = v48;
  *(v54 + 16) = v49;
  *(v54 + 136) = 1;
  sub_1000089F8(&v74, v84, qword_1011A16F8);
  sub_10021D0C0(v43, v45, v40);

  sub_10011895C(v43, v45, v40);

  v84[0] = v50;
  v84[1] = v51;
  v85 = v68;
  *v86 = *v73;
  *&v86[3] = *&v73[3];
  v87 = v52;
  v88 = KeyPath;
  v89 = 1;
  *v90 = *v72;
  *&v90[3] = *&v72[3];
  v91 = v18;
  *&v92[3] = *&v71[3];
  *v92 = *v71;
  v93 = v26;
  v94 = v28;
  v95 = v30;
  v96 = v32;
  v97 = 0;
  return sub_1000095E8(v84, qword_1011A16F8);
}

__n128 sub_100756450@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  v5 = *(a1 + 24);
  v6 = QRCodeOverlayViewController.ImageViewRepresentable.init(image:)();
  v8 = v7;
  v10 = v9;
  v11 = v5;
  LOBYTE(v5) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LOBYTE(v22) = v8 & 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v21[23] = v23;
  *&v21[7] = v22;
  *&v21[39] = v24;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8 & 1;
  *(a2 + 40) = v10;
  *(a2 + 48) = v5;
  *(a2 + 56) = v13;
  *(a2 + 64) = v15;
  *(a2 + 72) = v17;
  *(a2 + 80) = v19;
  *(a2 + 88) = 0;
  *(a2 + 105) = *&v21[16];
  result = *&v21[32];
  *(a2 + 121) = *&v21[32];
  *(a2 + 89) = *v21;
  *(a2 + 136) = *(&v24 + 1);
  return result;
}

uint64_t sub_10075657C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v6 = sub_10010FC20(&qword_1011A1680);
  return sub_100755504(v3, v4, v5, (a1 + *(v6 + 44)));
}

__n128 sub_1007565E8@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_1011A1568);
  __chkstk_darwin(v4 - 8);
  v6 = v38 - v5;
  v7 = sub_10010FC20(&qword_1011A1570);
  __chkstk_darwin(v7);
  v9 = v38 - v8;
  v10 = sub_10010FC20(&qword_1011A1578);
  __chkstk_darwin(v10);
  v12 = v38 - v11;
  if (qword_10117FCA8 != -1)
  {
    swift_once();
  }

  v13 = qword_101219510;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = v13;
  v6[16] = 0;
  v14 = sub_10010FC20(&qword_1011A1580);
  sub_100756970(v2, &v6[*(v14 + 44)]);
  LOBYTE(v13) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_10003D17C(v6, v9, &qword_1011A1568);
  v23 = &v9[*(v7 + 36)];
  *v23 = v13;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_10003D17C(v9, v12, &qword_1011A1570);
  v33 = &v12[*(v10 + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v12, a1, &qword_1011A1578);
  v34 = a1 + *(sub_10010FC20(&qword_1011A1588) + 36);
  v35 = v38[5];
  *(v34 + 64) = v38[4];
  *(v34 + 80) = v35;
  *(v34 + 96) = v38[6];
  v36 = v38[1];
  *v34 = v38[0];
  *(v34 + 16) = v36;
  result = v38[3];
  *(v34 + 32) = v38[2];
  *(v34 + 48) = result;
  return result;
}

uint64_t sub_100756970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView(0);
  v4 = *(v3 - 8);
  v57 = v3;
  v58 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = type metadata accessor for DynamicTypeSize();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_1011A1590);
  __chkstk_darwin(v9 - 8);
  v11 = &v53 - v10;
  v12 = sub_10010FC20(&qword_1011A1598);
  __chkstk_darwin(v12);
  v61 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v20 = sub_10010FC20(&qword_1011A15A0);
  sub_100757048(a1, &v11[*(v20 + 44)]);
  if (*(a1 + 16) != 1)
  {
    if (qword_10117FCB0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (qword_10117FCB8 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_5:
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10003D17C(v11, v16, &qword_1011A1590);
  v21 = &v16[*(v12 + 36)];
  v22 = v82;
  *v21 = v81;
  *(v21 + 1) = v22;
  *(v21 + 2) = v83;
  v56 = v19;
  sub_10003D17C(v16, v19, &qword_1011A1598);
  v57 = *(v57 + 28);
  sub_10056CABC(v8);
  v55 = DynamicTypeSize.isAccessibilitySize.getter();
  v23 = v60;
  v24 = *(v59 + 8);
  v24(v8, v60);
  v25 = static Alignment.leading.getter();
  v54 = v26;
  sub_1007630D8(a1, &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView);
  v27 = *(v58 + 80);
  v59 = a1;
  v28 = (v27 + 16) & ~v27;
  v29 = swift_allocObject();
  sub_100763140(&v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView);
  sub_10010FC20(&qword_1011A15A8);
  sub_100020674(&qword_1011A15B0, &qword_1011A15A8);
  AxisStack.init(axis:alignment:spacing:content:)(v55 & 1, v25, v54, 0, 1, sub_100764FC8, v29, &v84);
  v30 = static Edge.Set.bottom.getter();
  sub_10056CABC(v8);
  DynamicTypeSize.isAccessibilitySize.getter();
  v24(v8, v23);
  Axis.rawValue.getter();
  Axis.rawValue.getter();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v79 = 0;
  sub_10056CABC(v8);
  DynamicTypeSize.isAccessibilitySize.getter();
  v24(v8, v23);
  LODWORD(v25) = Axis.rawValue.getter();
  v39 = Axis.rawValue.getter();
  v40 = v25 == v39;
  v41 = v25 != v39;
  v42 = v40;
  v43 = v56;
  v44 = v61;
  sub_1000089F8(v56, v61, &qword_1011A1598);
  v45 = v62;
  sub_1000089F8(v44, v62, &qword_1011A1598);
  v46 = sub_10010FC20(&qword_1011A15B8);
  v47 = v45 + *(v46 + 48);
  *&v66 = v87;
  v63 = v84;
  v64 = v85;
  v65 = v86;
  BYTE8(v66) = v30;
  HIDWORD(v66) = *&v80[3];
  *(&v66 + 9) = *v80;
  *&v67 = v32;
  *(&v67 + 1) = v34;
  *&v68 = v36;
  *(&v68 + 1) = v38;
  v69 = 0;
  *(v47 + 96) = 0;
  v48 = v68;
  *(v47 + 64) = v67;
  *(v47 + 80) = v48;
  v49 = v64;
  *v47 = v63;
  *(v47 + 16) = v49;
  v50 = v66;
  *(v47 + 32) = v65;
  *(v47 + 48) = v50;
  v51 = v45 + *(v46 + 64);
  *v51 = 0;
  *(v51 + 8) = v42;
  *(v51 + 9) = v41;
  sub_1000089F8(&v63, v70, &qword_1011A15C0);
  sub_1000095E8(v43, &qword_1011A1598);
  v70[0] = v84;
  v70[1] = v85;
  v70[2] = v86;
  v71 = v87;
  v72 = v30;
  *v73 = *v80;
  *&v73[3] = *&v80[3];
  v74 = v32;
  v75 = v34;
  v76 = v36;
  v77 = v38;
  v78 = 0;
  sub_1000095E8(v70, &qword_1011A15C0);
  return sub_1000095E8(v44, &qword_1011A1598);
}

uint64_t sub_100757048@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v41 = sub_10010FC20(&qword_1011A1440);
  __chkstk_darwin(v41);
  v4 = v36 - v3;
  v5 = type metadata accessor for Image.Scale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_101198DF0);
  __chkstk_darwin(v9);
  v11 = (v36 - v10);
  v40 = sub_10010FC20(&unk_1011A1660);
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v38 = v36 - v15;
  if (*(a1 + 16))
  {
    v16 = &enum case for Image.Scale.medium(_:);
  }

  else
  {
    (*((swift_isaMask & **(a1 + 8)) + 0x150))(v14);
    v16 = &enum case for Image.Scale.large(_:);
  }

  v17 = Image.init(_internalSystemName:)();
  v18 = static Font.title3.getter();
  KeyPath = swift_getKeyPath();
  (*(v6 + 104))(v8, *v16, v5);
  v20 = swift_getKeyPath();
  v21 = *(v9 + 36);
  v36[1] = v9;
  v22 = (v11 + v21);
  v23 = sub_10010FC20(&qword_1011A13C0);
  (*(v6 + 32))(v22 + *(v23 + 28), v8, v5);
  *v22 = v20;
  *v11 = v17;
  v11[1] = KeyPath;
  v11[2] = v18;
  v24 = enum case for DynamicTypeSize.large(_:);
  v25 = type metadata accessor for DynamicTypeSize();
  (*(*(v25 - 8) + 104))(v4, v24, v25);
  sub_100763090(&qword_1011A1490, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_10061686C();
    sub_100020674(&qword_1011A14A0, &qword_1011A1440);
    v27 = v38;
    View.dynamicTypeSize<A>(_:)();
    sub_1000095E8(v4, &qword_1011A1440);
    sub_1000095E8(v11, &qword_101198DF0);
    v28 = v37;
    v29 = *(v37 + 16);
    v31 = v39;
    v30 = v40;
    v29(v39, v27, v40);
    v32 = v42;
    *v42 = 0;
    *(v32 + 8) = 1;
    v33 = sub_10010FC20(&qword_1011A1678);
    v29(v32 + *(v33 + 48), v31, v30);
    v34 = v32 + *(v33 + 64);
    *v34 = 0;
    v34[8] = 1;
    v35 = *(v28 + 8);
    v35(v27, v30);
    return (v35)(v31, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100757548@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v139 = a2;
  v132 = sub_10010FC20(&qword_1011A15C8);
  __chkstk_darwin(v132);
  v131 = &v107 - v3;
  v119 = type metadata accessor for Capsule();
  __chkstk_darwin(v119);
  v117 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v118);
  v116 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView(0);
  v120 = *(v6 - 8);
  v7 = *(v120 + 64);
  __chkstk_darwin(v6);
  v121 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011A15D0);
  v122 = *(v8 - 8);
  v123 = v8;
  __chkstk_darwin(v8);
  v133 = &v107 - v9;
  v10 = sub_10010FC20(&qword_1011A15D8);
  v125 = *(v10 - 8);
  v126 = v10;
  __chkstk_darwin(v10);
  v124 = &v107 - v11;
  v12 = sub_10010FC20(&qword_1011A15E0);
  v128 = *(v12 - 8);
  v129 = v12;
  __chkstk_darwin(v12);
  v114 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v113 = &v107 - v15;
  v130 = sub_10010FC20(&qword_1011A15E8);
  __chkstk_darwin(v130);
  v111 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v112 = &v107 - v18;
  __chkstk_darwin(v19);
  v110 = &v107 - v20;
  __chkstk_darwin(v21);
  v115 = &v107 - v22;
  v137 = sub_10010FC20(&qword_1011A15F0);
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v127 = &v107 - v23;
  v24 = sub_10010FC20(&qword_1011A15F8);
  __chkstk_darwin(v24 - 8);
  v140 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v107 - v27;
  v29 = type metadata accessor for DynamicTypeSize();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = static HorizontalAlignment.leading.getter();
  v33 = 1;
  LOBYTE(v144) = 1;
  sub_1007585D4(a1, v150);
  *&v149[7] = v150[0];
  *&v149[23] = v150[1];
  *&v149[39] = v150[2];
  *&v149[55] = v150[3];
  v136 = v144;
  sub_10056CABC(v32);
  DynamicTypeSize.isAccessibilitySize.getter();
  (*(v30 + 8))(v32, v29);
  v34 = Axis.rawValue.getter();
  v35 = Axis.rawValue.getter();
  v141 = static Color.accentColor.getter();
  v134 = a1;
  v36 = *(a1 + 8);
  if ((*((swift_isaMask & *v36) + 0x268))())
  {
    v108 = v35;
    v109 = v34;
    v107 = v28;
    v37 = (*((swift_isaMask & *v36) + 0x118))();
    v38 = v121;
    sub_1007630D8(v134, v121, type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView);
    v39 = (*(v120 + 80) + 16) & ~*(v120 + 80);
    if (v37)
    {
      v40 = swift_allocObject();
      sub_100763140(v38, v40 + v39, type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView);
      sub_10010FC20(&qword_1011A1610);
      sub_100765254();
      Button.init(action:label:)();
      KeyPath = swift_getKeyPath();
      v121 = KeyPath;
      v42 = static Color.white.getter();
      v43 = [objc_opt_self() _carSystemFocusPrimaryColor];
      v44 = Color.init(_:)();
      v45 = static Color.red.getter();
      v144 = KeyPath;
      LOBYTE(v145) = 0;
      *v146 = v42;
      *&v146[8] = v44;
      *&v146[16] = v45;
      *&v146[24] = v141;
      v46 = sub_100020674(&qword_1011A1638, &qword_1011A15D0);
      v47 = sub_100764EF4();

      v48 = v123;
      v49 = v124;
      v50 = v133;
      View.buttonStyle<A>(_:)();

      (*(v122 + 8))(v50, v48);
      v144 = v48;
      v145 = &type metadata for SharePlayTogetherSessionManagementViewController.FocusableButtonStyle;
      *v146 = v46;
      *&v146[8] = v47;
      swift_getOpaqueTypeConformance2();
      v51 = v113;
      v52 = v126;
      View.bold(_:)();
      (*(v125 + 8))(v49, v52);
      if (*(v134 + 16) == 1)
      {
        v53 = *(v118 + 20);
        v54 = enum case for RoundedCornerStyle.continuous(_:);
        v55 = type metadata accessor for RoundedCornerStyle();
        v56 = v116;
        (*(*(v55 - 8) + 104))(&v116[v53], v54, v55);
        __asm { FMOV            V0.2D, #6.0 }

        *v56 = _Q0;
        sub_100763090(&qword_1011A1658, &type metadata accessor for RoundedRectangle);
      }

      else
      {
        v80 = enum case for RoundedCornerStyle.continuous(_:);
        v81 = type metadata accessor for RoundedCornerStyle();
        (*(*(v81 - 8) + 104))(v117, v80, v81);
        sub_100763090(&qword_1011A1518, &type metadata accessor for Capsule);
      }

      v82 = AnyShape.init<A>(_:)();
      v28 = v107;
      v83 = v130;
      v84 = v115;
      v85 = v110;
      (*(v128 + 32))(v110, v51, v129);
      v86 = v85 + *(v83 + 36);
      *v86 = v82;
      *(v86 + 8) = 256;
      sub_10003D17C(v85, v84, &qword_1011A15E8);
    }

    else
    {
      v62 = swift_allocObject();
      sub_100763140(v38, v62 + v39, type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView);
      sub_10010FC20(&qword_1011A1610);
      sub_100765254();
      v63 = v133;
      Button.init(action:label:)();
      v64 = swift_getKeyPath();
      v121 = v64;
      v65 = static Color.white.getter();
      v120 = v65;
      v66 = [objc_opt_self() _carSystemFocusPrimaryColor];
      v67 = Color.init(_:)();
      v68 = static Color.red.getter();
      v144 = v64;
      LOBYTE(v145) = 0;
      *v146 = v65;
      *&v146[8] = v67;
      *&v146[16] = v68;
      *&v146[24] = v141;
      v69 = sub_100020674(&qword_1011A1638, &qword_1011A15D0);
      v70 = sub_100764EF4();

      v72 = v123;
      v71 = v124;
      View.buttonStyle<A>(_:)();

      (*(v122 + 8))(v63, v72);
      v144 = v72;
      v145 = &type metadata for SharePlayTogetherSessionManagementViewController.FocusableButtonStyle;
      *v146 = v69;
      *&v146[8] = v70;
      swift_getOpaqueTypeConformance2();
      v73 = v114;
      v74 = v126;
      View.bold(_:)();
      (*(v125 + 8))(v71, v74);
      if (*(v134 + 16) == 1)
      {
        v75 = *(v118 + 20);
        v76 = enum case for RoundedCornerStyle.continuous(_:);
        v77 = type metadata accessor for RoundedCornerStyle();
        v78 = v116;
        (*(*(v77 - 8) + 104))(&v116[v75], v76, v77);
        __asm { FMOV            V0.2D, #6.0 }

        *v78 = _Q0;
        sub_100763090(&qword_1011A1658, &type metadata accessor for RoundedRectangle);
      }

      else
      {
        v87 = enum case for RoundedCornerStyle.continuous(_:);
        v88 = type metadata accessor for RoundedCornerStyle();
        (*(*(v88 - 8) + 104))(v117, v87, v88);
        sub_100763090(&qword_1011A1518, &type metadata accessor for Capsule);
      }

      v89 = AnyShape.init<A>(_:)();
      v28 = v107;
      v90 = v130;
      v91 = v111;
      (*(v128 + 32))(v111, v73, v129);
      v92 = v91 + *(v90 + 36);
      *v92 = v89;
      *(v92 + 8) = 256;
      v84 = v112;
      sub_10003D17C(v91, v112, &qword_1011A15E8);
    }

    LOBYTE(v35) = v108;
    sub_1000089F8(v84, v131, &qword_1011A15E8);
    swift_storeEnumTagMultiPayload();
    sub_1007652E0();
    v93 = v127;
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v84, &qword_1011A15E8);
    sub_10003D17C(v93, v28, &qword_1011A15F0);
    v33 = 0;
    LOBYTE(v34) = v109;
  }

  (*(v135 + 56))(v28, v33, 1, v137);
  v94 = v34;
  v95 = v34 != v35;
  v96 = v94 == v35;
  v97 = v140;
  sub_1000089F8(v28, v140, &qword_1011A15F8);
  v98 = v138;
  v142[0] = v138;
  v142[1] = 0;
  v99 = v136;
  v143[0] = v136;
  *&v143[1] = *v149;
  *&v143[17] = *&v149[16];
  *&v143[33] = *&v149[32];
  *&v143[49] = *&v149[48];
  v100 = *&v149[63];
  *&v143[64] = *&v149[63];
  v101 = *v143;
  v102 = v139;
  *v139 = v138;
  v102[1] = v101;
  v103 = *&v143[16];
  v104 = *&v143[48];
  v102[3] = *&v143[32];
  v102[4] = v104;
  v102[2] = v103;
  *(v102 + 10) = v100;
  *(v102 + 11) = 0;
  *(v102 + 96) = v96;
  *(v102 + 97) = v95;
  v105 = sub_10010FC20(&qword_1011A1600);
  sub_1000089F8(v97, v102 + *(v105 + 64), &qword_1011A15F8);
  sub_1000089F8(v142, &v144, &qword_1011A1608);

  sub_1000095E8(v28, &qword_1011A15F8);
  sub_1000095E8(v97, &qword_1011A15F8);
  v144 = v98;
  v145 = 0;
  v146[0] = v99;
  *&v146[17] = *&v149[16];
  v147 = *&v149[32];
  *v148 = *&v149[48];
  *&v148[15] = *&v149[63];
  *&v146[1] = *v149;
  return sub_1000095E8(&v144, &qword_1011A1608);
}

uint64_t sub_1007585D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = __chkstk_darwin(v6 - 8);
  v8 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    v9 = 0;
    v41 = 0;
    v42 = 0;
    v40 = 0;
  }

  else
  {
    (*((swift_isaMask & *v8) + 0x128))(v7);
    if (!v10)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
    }

    sub_100009838();
    v9 = Text.init<A>(_:)();
    v12 = v11;
    v14 = *((swift_isaMask & *v8) + 0x268);
    v42 = v15;
    v40 = v13 & 1;
    sub_10021D0C0(v9, v15, v13 & 1);
    v41 = v12;

    if ((v14(v16) & 1) == 0 && (*((swift_isaMask & *v8) + 0x1E0))() < 1)
    {
      v30 = 0;
      v32 = 0;
      v37 = 0;
      v36 = 0;
      goto LABEL_11;
    }
  }

  v17 = *((swift_isaMask & *v8) + 0x1B0);
  v39 = v9;
  if ((v17)(v7) < 1)
  {
    LocalizedStringKey.init(stringLiteral:)();
  }

  else
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
    v17();
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v19._countAndFlagsBits = 0x6963697472615020;
    v19._object = 0xEF297328746E6170;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
    LocalizedStringKey.init(stringInterpolation:)();
  }

  v20 = Text.init(_:tableName:bundle:comment:)();
  v22 = v21;
  v24 = v23;
  static Color.secondary.getter();
  v25 = Text.foregroundColor(_:)();
  v27 = v26;
  v29 = v28;

  sub_10011895C(v20, v22, v24 & 1);

  static Font.caption.getter();
  v30 = Text.font(_:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_10011895C(v25, v27, v29 & 1);

  v37 = v34 & 1;
  sub_10021D0C0(v30, v32, v34 & 1);

  v9 = v39;
LABEL_11:
  sub_10024EA48(v9, v42, v40, v41);
  sub_10024EA48(v30, v32, v37, v36);
  sub_10024EA04(v9, v42, v40, v41);
  sub_10024EA04(v30, v32, v37, v36);
  *a2 = v9;
  a2[1] = v42;
  a2[2] = v40;
  a2[3] = v41;
  a2[4] = v30;
  a2[5] = v32;
  a2[6] = v37;
  a2[7] = v36;
  sub_10024EA04(v30, v32, v37, v36);
  return sub_10024EA04(v9, v42, v40, v41);
}

uint64_t sub_100758AF4(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    return (*((swift_isaMask & **(result + 8)) + 0x340))();
  }

  v1 = *(result + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

__n128 sub_100758B98@<Q0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v20) = 256;
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = static Edge.Set.horizontal.getter();
  v10 = [objc_opt_self() defaultMetrics];
  [v10 scaledValueForValue:12.0];

  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v28[55] = v32;
  *&v28[71] = v33;
  *&v28[87] = v34;
  *&v28[103] = v35;
  *&v28[7] = v29;
  *&v28[23] = v30;
  *&v28[39] = v31;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v12;
  *(a1 + 48) = v14;
  *(a1 + 56) = v16;
  *(a1 + 64) = v18;
  *(a1 + 72) = 0;
  *(a1 + 137) = *&v28[64];
  *(a1 + 153) = *&v28[80];
  *(a1 + 169) = *&v28[96];
  *(a1 + 184) = *(&v35 + 1);
  *(a1 + 73) = *v28;
  *(a1 + 89) = *&v28[16];
  *(a1 + 105) = *&v28[32];
  *(a1 + 121) = *&v28[48];
  *(a1 + 256) = v25;
  *(a1 + 272) = v26;
  *(a1 + 288) = v27;
  *(a1 + 192) = v21;
  *(a1 + 208) = v22;
  result = v24;
  *(a1 + 224) = v23;
  *(a1 + 240) = v24;
  return result;
}

void sub_100758E28()
{
  static Color.white.getter();
  Color.opacity(_:)();

  v0 = UIScreen.Dimensions.size.getter(0.5);
  qword_1011A0E00 = v1;
  qword_1011A0E08 = *&v0;
  byte_1011A0E10 = v2;
}

uint64_t sub_100758E88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_1011A13D0);
  __chkstk_darwin(v4);
  v6 = v42 - v5;
  v7 = sub_10010FC20(&qword_1011A13D8);
  __chkstk_darwin(v7);
  v9 = v42 - v8;
  v10 = sub_10010FC20(&qword_1011A13E0);
  __chkstk_darwin(v10);
  v12 = v42 - v11;
  if (qword_10117FCA8 != -1)
  {
    swift_once();
  }

  v13 = qword_101219510;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = v13;
  v6[16] = 0;
  v14 = sub_10010FC20(&qword_1011A13E8);
  sub_10075929C(v2, &v6[*(v14 + 44)]);
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = &v6[*(v4 + 36)];
  v16 = v42[3];
  *v15 = v42[2];
  *(v15 + 1) = v16;
  *(v15 + 2) = v42[4];
  type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v6, v9, &qword_1011A13D0);
  v17 = &v9[*(v7 + 36)];
  v18 = v42[10];
  *(v17 + 4) = v42[9];
  *(v17 + 5) = v18;
  *(v17 + 6) = v42[11];
  v19 = v42[6];
  *v17 = v42[5];
  *(v17 + 1) = v19;
  v20 = v42[8];
  *(v17 + 2) = v42[7];
  *(v17 + 3) = v20;
  v21 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_10003D17C(v9, v12, &qword_1011A13D8);
  v30 = &v12[*(v10 + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_10003D17C(v12, a1, &qword_1011A13E0);
  result = sub_10010FC20(&unk_1011A13F0);
  v41 = a1 + *(result + 36);
  *v41 = v31;
  *(v41 + 8) = v33;
  *(v41 + 16) = v35;
  *(v41 + 24) = v37;
  *(v41 + 32) = v39;
  *(v41 + 40) = 0;
  return result;
}

uint64_t sub_10075929C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v3 = type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0);
  v71 = *(v3 - 8);
  __chkstk_darwin(v3);
  v72 = v4;
  v73 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DynamicTypeSize();
  v78 = *(v5 - 8);
  v79 = v5;
  __chkstk_darwin(v5);
  v77 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for ArtworkImage.ReusePolicy();
  v7 = *(v68 - 8);
  __chkstk_darwin(v68);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v64 - v14;
  v16 = sub_10010FC20(&unk_1011A1400);
  v17 = *(v16 - 8);
  v65 = v16;
  v66 = v17;
  __chkstk_darwin(v16);
  v19 = &v64 - v18;
  v69 = sub_10010FC20(&unk_10119F190);
  v67 = *(v69 - 1);
  __chkstk_darwin(v69);
  v21 = &v64 - v20;
  v22 = sub_10010FC20(&unk_1011A1410);
  v75 = *(v22 - 8);
  v76 = v22;
  __chkstk_darwin(v22);
  v74 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v81 = &v64 - v25;
  sub_100759CDC(v15);
  v26 = sub_10010FC20(&unk_101182950);
  (*(*(v26 - 8) + 56))(v12, 8, 11, v26);
  v70 = v3;
  if (*(a1 + *(v3 + 24)) == 1)
  {
    if (qword_10117FCB8 != -1)
    {
      swift_once();
    }

    v27 = &qword_101219520;
  }

  else
  {
    if (qword_10117FCB0 != -1)
    {
      swift_once();
    }

    v27 = &qword_101219518;
  }

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(*v27, 0, *v27, 0, 0, 1, 2, v100);
  v28 = v68;
  (*(v7 + 104))(v9, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v68);
  static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v15, v12, v100, v9, v19);
  (*(v7 + 8))(v9, v28);
  sub_100761B84(v12, type metadata accessor for ArtworkImage.Placeholder);
  sub_1000095E8(v15, &unk_10118A5E0);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v65;
  View.corner(_:)();
  (*(v66 + 8))(v19, v30);
  if (qword_10117FCC0 != -1)
  {
    swift_once();
  }

  *&v89[0] = v30;
  *(&v89[0] + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v31 = v69;
  View.border(_:corner:)();
  (*(v67 + 8))(v21, v31);
  v70 = *(v70 + 28);
  v32 = v77;
  sub_10056CABC(v77);
  LODWORD(v68) = DynamicTypeSize.isAccessibilitySize.getter();
  v33 = v79;
  v69 = *(v78 + 8);
  (v69)(v32, v79);
  v34 = static Alignment.leading.getter();
  v78 = v35;
  v36 = a1;
  v37 = v73;
  sub_1007630D8(v36, v73, type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView);
  v38 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v39 = swift_allocObject();
  sub_100763140(v37, v39 + v38, type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView);
  sub_10010FC20(&qword_1011A1420);
  sub_100020674(&qword_1011A1428, &qword_1011A1420);
  AxisStack.init(axis:alignment:spacing:content:)(v68 & 1, v34, v78, 0, 1, sub_100764BA0, v39, &v101);
  LODWORD(v78) = static Edge.Set.bottom.getter();
  sub_10056CABC(v32);
  DynamicTypeSize.isAccessibilitySize.getter();
  v40 = v69;
  (v69)(v32, v33);
  Axis.rawValue.getter();
  Axis.rawValue.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v98 = 0;
  sub_10056CABC(v32);
  DynamicTypeSize.isAccessibilitySize.getter();
  v40(v32, v33);
  LODWORD(v34) = Axis.rawValue.getter();
  v49 = Axis.rawValue.getter();
  LODWORD(v79) = v34 != v49;
  LOBYTE(v33) = v34 == v49;
  v51 = v74;
  v50 = v75;
  v52 = *(v75 + 16);
  v53 = v81;
  v54 = v76;
  v52(v74, v81, v76);
  v55 = v80;
  v52(v80, v51, v54);
  v56 = sub_10010FC20(&qword_1011A1430);
  v57 = &v55[*(v56 + 48)];
  *&v85 = v104;
  v82 = v101;
  v83 = v102;
  v84 = v103;
  LOBYTE(v34) = v78;
  BYTE8(v85) = v78;
  HIDWORD(v85) = *&v99[3];
  *(&v85 + 9) = *v99;
  *&v86 = v42;
  *(&v86 + 1) = v44;
  *&v87 = v46;
  *(&v87 + 1) = v48;
  v88 = 0;
  v57[96] = 0;
  v58 = v87;
  *(v57 + 4) = v86;
  *(v57 + 5) = v58;
  v59 = v83;
  *v57 = v82;
  *(v57 + 1) = v59;
  v60 = v85;
  *(v57 + 2) = v84;
  *(v57 + 3) = v60;
  v61 = &v55[*(v56 + 64)];
  *v61 = 0;
  v61[8] = v33;
  v61[9] = v79;
  sub_1000089F8(&v82, v89, &qword_1011A1438);
  v62 = *(v50 + 8);
  v62(v53, v54);
  v89[0] = v101;
  v89[1] = v102;
  v89[2] = v103;
  v90 = v104;
  v91 = v34;
  *v92 = *v99;
  *&v92[3] = *&v99[3];
  v93 = v42;
  v94 = v44;
  v95 = v46;
  v96 = v48;
  v97 = 0;
  sub_1000095E8(v89, &qword_1011A1438);
  return (v62)(v51, v54);
}

uint64_t sub_100759CDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_101186E00);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  sub_1000089F8(v2 + *(v10 + 32), v6, &qword_101186E00);
  v11 = type metadata accessor for SocialProfile();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_1000095E8(v6, &qword_101186E00);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  else
  {
    ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v11, &protocol witness table for SocialProfile, v9);
    (*(v12 + 8))(v6, v11);
    v14 = type metadata accessor for ArtworkImage.ViewModel(0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v9, 1, v14) != 1)
    {
      sub_100763140(v9, a1, type metadata accessor for ArtworkImage.ViewModel);
      return (*(v15 + 56))(a1, 0, 1, v14);
    }
  }

  sub_1000095E8(v9, &unk_10118A5E0);
  sub_100009F78(0, &qword_1011A1560);
  v16 = static MPArtworkCatalog.monogram(for:layoutDirection:)(*(v2 + 16), *(v2 + 24), 0, 1);
  if (v16)
  {
    return ArtworkImage.ViewModel.init(_:)(v16, a1);
  }

  v18 = type metadata accessor for ArtworkImage.ViewModel(0);
  return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
}

uint64_t sub_100759FE8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = a1;
  v61 = a2;
  v62 = a1;
  v58 = sub_10010FC20(&qword_1011A1440);
  __chkstk_darwin(v58);
  v66 = &v54 - v3;
  v57 = sub_10010FC20(&qword_1011A1448);
  __chkstk_darwin(v57);
  v71 = &v54 - v4;
  v5 = sub_10010FC20(&qword_1011A1450);
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v70 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = &v54 - v8;
  v9 = type metadata accessor for DynamicTypeSize();
  v64 = *(v9 - 8);
  v65 = v9;
  __chkstk_darwin(v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for AccessibilityChildBehavior();
  v12 = *(v63 - 8);
  __chkstk_darwin(v63);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&qword_1011A1458);
  v55 = *(v15 - 8);
  v56 = v15;
  __chkstk_darwin(v15);
  v68 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v54 - v18;
  v20 = static HorizontalAlignment.leading.getter();
  v77 = 1;
  sub_10075A804(v2, &v88);
  v83 = v92;
  v84 = v93;
  v85 = v94;
  v79 = v88;
  v80 = v89;
  v81 = v90;
  v82 = v91;
  v86[0] = v88;
  v86[1] = v89;
  v86[2] = v90;
  v86[3] = v91;
  v86[4] = v92;
  v86[5] = v93;
  v87 = v94;
  sub_1000089F8(&v79, &v72, &qword_1011A1460);
  sub_1000095E8(v86, &qword_1011A1460);
  *(&v76[3] + 7) = v82;
  *(&v76[4] + 7) = v83;
  *(&v76[5] + 7) = v84;
  *(v76 + 7) = v79;
  *(&v76[1] + 7) = v80;
  *(&v76[6] + 7) = v85;
  *(&v76[2] + 7) = v81;
  v21 = v77;
  LOBYTE(v2) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  *(&v73[3] + 1) = v76[3];
  *(&v73[4] + 1) = v76[4];
  *(&v73[5] + 1) = v76[5];
  v73[6] = *(&v76[5] + 15);
  *(v73 + 1) = v76[0];
  *(&v73[1] + 1) = v76[1];
  v78 = 0;
  v72 = v20;
  LOBYTE(v73[0]) = v21;
  *(&v73[2] + 1) = v76[2];
  LOBYTE(v74) = v2;
  *(&v74 + 1) = v22;
  *&v75[0] = v23;
  *(&v75[0] + 1) = v24;
  *&v75[1] = v25;
  BYTE8(v75[1]) = 0;
  static AccessibilityChildBehavior.combine.getter();
  sub_10010FC20(&qword_1011A1468);
  sub_100764BCC();
  v67 = v19;
  View.accessibilityElement(children:)();
  (*(v12 + 8))(v14, v63);
  v26 = v66;
  v96 = v74;
  v97[0] = v75[0];
  *(v97 + 9) = *(v75 + 9);
  v92 = v73[3];
  v93 = v73[4];
  v94 = v73[5];
  v95 = v73[6];
  v88 = v72;
  v89 = v73[0];
  v90 = v73[1];
  v91 = v73[2];
  sub_1000095E8(&v88, &qword_1011A1468);
  v27 = type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0);
  v28 = v62;
  sub_10056CABC(v11);
  DynamicTypeSize.isAccessibilitySize.getter();
  v30 = v64;
  v29 = v65;
  (*(v64 + 8))(v11, v65);
  v31 = Axis.rawValue.getter();
  v32 = Axis.rawValue.getter();
  v33 = static Color.accentColor.getter();
  if (*(v28 + *(v27 + 24)))
  {
    v34 = 0x4014000000000000;
  }

  else
  {
    v34 = 0x4030000000000000;
  }

  v35 = static VerticalAlignment.center.getter();
  v36 = v71;
  *v71 = v35;
  *(v36 + 1) = v34;
  v36[16] = 0;
  v37 = &v36[*(sub_10010FC20(&qword_1011A1488) + 44)];
  v63 = v33;
  sub_10075ACE0(v28, v33, v37);
  (*(v30 + 104))(v26, enum case for DynamicTypeSize.accessibility2(_:), v29);
  sub_100763090(&qword_1011A1490, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    LODWORD(v65) = v31 != v32;
    LODWORD(v64) = v31 == v32;
    sub_100020674(&qword_1011A1498, &qword_1011A1448);
    sub_100020674(&qword_1011A14A0, &qword_1011A1440);
    v39 = v69;
    v40 = v71;
    View.dynamicTypeSize<A>(_:)();
    sub_1000095E8(v26, &qword_1011A1440);
    sub_1000095E8(v40, &qword_1011A1448);
    v42 = v55;
    v41 = v56;
    v43 = *(v55 + 16);
    v44 = v68;
    v43(v68, v67, v56);
    v45 = v59;
    v71 = *(v59 + 16);
    v46 = v39;
    v47 = v60;
    (v71)(v70, v46, v60);
    v48 = v61;
    v43(v61, v44, v41);
    v49 = sub_10010FC20(&qword_1011A14A8);
    v50 = &v48[*(v49 + 48)];
    *v50 = 0;
    v50[8] = v64;
    v50[9] = v65;
    v51 = v70;
    (v71)(&v48[*(v49 + 64)], v70, v47);

    v52 = *(v45 + 8);
    v52(v69, v47);
    v53 = *(v42 + 8);
    v53(v67, v41);
    v52(v51, v47);
    return (v53)(v68, v41);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10075A804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0);
  v6 = *(v5 + 20);
  v7 = a1 + v6;
  if (*(a1 + v6 + 24))
  {
    v8 = *(v7 + 16);
    v9 = *(a1 + v6 + 24);
  }

  else
  {
    v8 = *v7;
  }

  v56 = v8;
  v57 = v9;
  sub_100009838();

  v45 = Text.init<A>(_:)();
  v41 = v10;
  v42 = v11;
  v13 = v12;
  KeyPath = swift_getKeyPath();
  v40 = static Color.primary.getter();
  v38 = swift_getKeyPath();
  v44 = v13 & 1;
  v70 = v13 & 1;
  v69 = 0;
  if (*(a1 + *(v5 + 24)))
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v18 = String.init(localized:table:bundle:locale:comment:)();
    if (*(v7 + 32) == 1)
    {

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v18 = String.init(localized:table:bundle:locale:comment:)();
    }

    v56 = v18;
    v57 = v19;
    v20 = Text.init<A>(_:)();
    v22 = v21;
    v24 = v23;
    static Color.secondary.getter();
    v25 = Text.foregroundColor(_:)();
    v27 = v26;
    v29 = v28;

    sub_10011895C(v20, v22, v24 & 1);

    static Font.caption.getter();
    v14 = Text.font(_:)();
    v15 = v30;
    v32 = v31;
    v17 = v33;

    sub_10011895C(v25, v27, v29 & 1);

    v16 = v32 & 1;
    sub_10021D0C0(v14, v15, v32 & 1);
  }

  *&v46 = v45;
  *(&v46 + 1) = v41;
  LOBYTE(v47) = v44;
  *(&v47 + 1) = *v68;
  DWORD1(v47) = *&v68[3];
  *(&v47 + 1) = v42;
  *&v48 = KeyPath;
  *(&v48 + 1) = 2;
  LOBYTE(v49) = 0;
  *(&v49 + 1) = *v67;
  DWORD1(v49) = *&v67[3];
  *(&v49 + 1) = v38;
  v50 = v40;
  v55 = v40;
  v53 = v48;
  v54 = v49;
  v51 = v46;
  v52 = v47;
  sub_1000089F8(&v46, &v56, &qword_1011A1558);
  sub_10024EA48(v14, v15, v16, v17);
  sub_10024EA04(v14, v15, v16, v17);
  v34 = v54;
  *(a2 + 32) = v53;
  *(a2 + 48) = v34;
  v35 = v55;
  v36 = v52;
  *a2 = v51;
  *(a2 + 16) = v36;
  *(a2 + 64) = v35;
  *(a2 + 72) = v14;
  *(a2 + 80) = v15;
  *(a2 + 88) = v16;
  *(a2 + 96) = v17;
  sub_10024EA04(v14, v15, v16, v17);
  v56 = v45;
  v57 = v41;
  v58 = v44;
  *v59 = *v68;
  *&v59[3] = *&v68[3];
  v60 = v42;
  v61 = KeyPath;
  v62 = 2;
  v63 = 0;
  *v64 = *v67;
  *&v64[3] = *&v67[3];
  v65 = v38;
  v66 = v40;
  return sub_1000095E8(&v56, &qword_1011A1558);
}

uint64_t sub_10075ACE0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a2;
  v104 = a3;
  v79 = sub_10010FC20(&qword_1011A14B0);
  __chkstk_darwin(v79);
  v5 = v76 - v4;
  v83 = sub_10010FC20(&qword_1011A14B8);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v93 = v76 - v6;
  v7 = sub_10010FC20(&qword_1011A14C0);
  v103 = *(v7 - 8);
  __chkstk_darwin(v7);
  v81 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v80 = v76 - v10;
  v11 = sub_10010FC20(&qword_1011A14C8);
  __chkstk_darwin(v11 - 8);
  v13 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v76 - v15;
  v85 = type metadata accessor for Capsule();
  __chkstk_darwin(v85);
  v84 = v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0);
  v94 = *(v105 - 8);
  __chkstk_darwin(v105);
  v95 = v18;
  v96 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&qword_1011A14D0);
  __chkstk_darwin(v19);
  v21 = v76 - v20;
  v92 = sub_10010FC20(&qword_1011A14D8);
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v98 = v76 - v22;
  v101 = sub_10010FC20(&qword_1011A14E0);
  v23 = *(v101 - 8);
  __chkstk_darwin(v101);
  v90 = v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v89 = v76 - v26;
  v27 = sub_10010FC20(&qword_1011A14E8);
  __chkstk_darwin(v27 - 8);
  v102 = v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v29);
  v106 = a1;
  v107 = v76 - v31;
  v32 = *a1;
  v33 = swift_isaMask & **a1;
  v99 = *(v33 + 0x120);
  v100 = v33 + 288;
  if ((v99(v30) & 1) != 0 && (*(v106 + *(v105 + 20) + 32) & 1) != 0 || ((*((swift_isaMask & *v32) + 0x118))() & 1) != 0 && *(v106 + *(v105 + 20) + 33) == 1)
  {
    v78 = v5;
    v86 = v16;
    v87 = v7;
    v88 = v13;
    v34 = *(v106 + *(v105 + 24));
    v77 = v34;
    v35 = v96;
    sub_1007630D8(v106, v96, type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView);
    v36 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v37 = swift_allocObject();
    sub_100763140(v35, v37 + v36, type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView);
    v76[1] = v19;
    v108 = Int.seconds.getter(32);
    sub_100363C0C();
    ScaledMetric.init(wrappedValue:)();
    *v21 = v34;
    *(v21 + 1) = sub_100764F9C;
    *(v21 + 2) = v37;
    *(v21 + 3) = sub_10075BBCC;
    *(v21 + 4) = 0;
    KeyPath = swift_getKeyPath();
    v39 = static Color.white.getter();
    v40 = [objc_opt_self() _carSystemFocusPrimaryColor];
    v41 = Color.init(_:)();
    static Color.primary.getter();
    v42 = Color.opacity(_:)();

    v108 = *&KeyPath;
    v109 = 0;
    v110 = v39;
    v111 = v41;
    v112 = v42;
    v113 = v97;
    sub_100020674(&qword_1011A1520, &qword_1011A14D0);
    sub_100764EF4();

    View.buttonStyle<A>(_:)();

    sub_1000095E8(v21, &qword_1011A14D0);
    if (v77 == 1)
    {
      v43 = enum case for RoundedCornerStyle.continuous(_:);
      v44 = type metadata accessor for RoundedCornerStyle();
      (*(*(v44 - 8) + 104))(v84, v43, v44);
      sub_100763090(&qword_1011A1518, &type metadata accessor for Capsule);
    }

    else
    {
      sub_100764F48();
    }

    v47 = AnyShape.init<A>(_:)();
    v48 = v90;
    (*(v91 + 32))(v90, v98, v92);
    v49 = v101;
    v50 = &v48[*(v101 + 36)];
    *v50 = v47;
    *(v50 + 4) = 256;
    v51 = v48;
    v52 = v89;
    sub_10003D17C(v51, v89, &qword_1011A14E0);
    v53 = v52;
    v54 = v107;
    sub_10003D17C(v53, v107, &qword_1011A14E0);
    v45 = (*(v23 + 56))(v54, 0, 1, v49);
    v46 = v104;
    v13 = v88;
    v7 = v87;
    v16 = v86;
    v5 = v78;
  }

  else
  {
    v45 = (*(v23 + 56))(v107, 1, 1, v101);
    v46 = v104;
  }

  if (((v99)(v45) & 1) != 0 && *(v106 + *(v105 + 20) + 32) == 1)
  {
    v86 = v16;
    v87 = v7;
    v88 = v13;
    v55 = *(v106 + *(v105 + 24));
    LODWORD(v105) = v55;
    v56 = v96;
    sub_1007630D8(v106, v96, type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView);
    v57 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v58 = swift_allocObject();
    sub_100763140(v56, v58 + v57, type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView);
    v108 = Int.seconds.getter(32);
    sub_100363C0C();
    ScaledMetric.init(wrappedValue:)();
    *v5 = v55;
    *(v5 + 1) = sub_100764E48;
    *(v5 + 2) = v58;
    *(v5 + 3) = sub_10075BDB8;
    *(v5 + 4) = 0;
    v59 = swift_getKeyPath();
    v60 = static Color.white.getter();
    v61 = [objc_opt_self() _carSystemFocusPrimaryColor];
    v62 = Color.init(_:)();
    v63 = static Color.green.getter();
    v108 = *&v59;
    v109 = 0;
    v110 = v60;
    v111 = v62;
    v112 = v63;
    v113 = v97;
    sub_100020674(&qword_1011A1500, &qword_1011A14B0);
    sub_100764EF4();

    View.buttonStyle<A>(_:)();

    sub_1000095E8(v5, &qword_1011A14B0);
    if (v105 == 1)
    {
      v64 = enum case for RoundedCornerStyle.continuous(_:);
      v65 = type metadata accessor for RoundedCornerStyle();
      (*(*(v65 - 8) + 104))(v84, v64, v65);
      sub_100763090(&qword_1011A1518, &type metadata accessor for Capsule);
    }

    else
    {
      sub_100764F48();
    }

    v67 = AnyShape.init<A>(_:)();
    v13 = v88;
    v7 = v87;
    v16 = v86;
    v68 = v81;
    (*(v82 + 32))(v81, v93, v83);
    v69 = &v68[*(v7 + 36)];
    *v69 = v67;
    *(v69 + 4) = 256;
    v70 = v68;
    v71 = v80;
    sub_10003D17C(v70, v80, &qword_1011A14C0);
    sub_10003D17C(v71, v16, &qword_1011A14C0);
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  (*(v103 + 56))(v16, v66, 1, v7);
  v72 = v107;
  v73 = v102;
  sub_1000089F8(v107, v102, &qword_1011A14E8);
  sub_1000089F8(v16, v13, &qword_1011A14C8);
  sub_1000089F8(v73, v46, &qword_1011A14E8);
  v74 = sub_10010FC20(&unk_1011A14F0);
  sub_1000089F8(v13, v46 + *(v74 + 48), &qword_1011A14C8);
  sub_1000095E8(v16, &qword_1011A14C8);
  sub_1000095E8(v72, &qword_1011A14E8);
  sub_1000095E8(v13, &qword_1011A14C8);
  return sub_1000095E8(v73, &qword_1011A14E8);
}

uint64_t sub_10075BB2C(void **a1)
{
  if (*(a1 + *(type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0) + 20) + 32) == 1)
  {
    return (*((swift_isaMask & **a1) + 0x330))();
  }

  else
  {
    return (*((swift_isaMask & **a1) + 0x338))();
  }
}

uint64_t sub_10075BBCC()
{
  v0 = sub_10010FC20(&qword_1011A1528);
  __chkstk_darwin(v0);
  v2 = v7 - v1;
  *v2 = static VerticalAlignment.center.getter();
  *(v2 + 1) = 0;
  v2[16] = 1;
  sub_10010FC20(&qword_1011A1530);
  v3 = Image.init(systemName:)();
  v4 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v7[1] = v3;
  v7[2] = KeyPath;
  v7[3] = v4;
  static Font.Weight.bold.getter();
  sub_10010FC20(&unk_1011A1100);
  sub_100238768();
  View.fontWeight(_:)();

  LocalizedStringKey.init(stringLiteral:)();
  sub_100020674(&qword_1011A1538, &qword_1011A1528);
  View.accessibilityLabel(_:)();

  return sub_1000095E8(v2, &qword_1011A1528);
}

uint64_t sub_10075BDB8@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_10010FC20(&unk_1011A1540);
  return sub_10075BE08(a1 + *(v2 + 44));
}

uint64_t sub_10075BE08@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = type metadata accessor for AccessibilityTraits();
  v21 = *(v1 - 8);
  v22 = v1;
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_10119A280);
  v5 = *(v4 - 8);
  v18 = v4;
  v19 = v5;
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v20 = sub_10010FC20(&qword_1011A1550);
  __chkstk_darwin(v20);
  v9 = &v17 - v8;
  v10 = Image.init(systemName:)();
  v11 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v24 = v10;
  v25 = KeyPath;
  v26 = v11;
  static Font.Weight.bold.getter();
  v13 = sub_10010FC20(&unk_1011A1100);
  v14 = sub_100238768();
  View.fontWeight(_:)();

  static AccessibilityTraits.isSelected.getter();
  v24 = v13;
  v25 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v18;
  View.accessibilityRemoveTraits(_:)();
  (*(v21 + 8))(v3, v22);
  (*(v19 + 8))(v7, v15);
  LocalizedStringKey.init(stringLiteral:)();
  ModifiedContent<>.accessibilityLabel(_:)();

  return sub_1000095E8(v9, &qword_1011A1550);
}

uint64_t sub_10075C108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[0] = *(a1 + 16);
  v15[1] = a2;
  type metadata accessor for ModifiedContent();
  v17 = *(a1 + 24);
  v4 = v17;
  v18 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  v5 = type metadata accessor for Button();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v15 - v10;
  v15[4] = v15[0];
  v15[5] = v4;
  v16 = v2;

  Button.init(action:label:)();
  WitnessTable = swift_getWitnessTable();
  sub_100663950(v8, v5, WitnessTable);
  v13 = *(v6 + 8);
  v13(v8, v5);
  sub_100663950(v11, v5, WitnessTable);
  return (v13)(v11, v5);
}

uint64_t sub_10075C2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v21 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v20 - v15;
  (*(a1 + 24))(v14);
  if ((*a1 & 1) == 0)
  {
    type metadata accessor for SharePlayTogetherSessionManagementViewController.ScaledButton();
    v20 = a3;
    sub_10010FC20(&qword_10119A070);
    ScaledMetric.wrappedValue.getter();
    sub_10010FC20(&qword_10119A070);
    a3 = v20;
    ScaledMetric.wrappedValue.getter();
  }

  static Alignment.center.getter();
  View.frame(width:height:alignment:)();
  (*(v21 + 8))(v8, a2);
  v23 = a3;
  v24 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  sub_100663950(v12, v9, WitnessTable);
  v18 = *(v10 + 8);
  v18(v12, v9);
  sub_100663950(v16, v9, WitnessTable);
  return (v18)(v16, v9);
}

uint64_t sub_10075C5C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_1011A1388);
  __chkstk_darwin(v4);
  v6 = &v38[-1] - v5;
  v7 = sub_10010FC20(&qword_1011A1390);
  v37 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v38[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v38[-1] - v12;
  (*((swift_isaMask & *a1) + 0x258))(v38, v11);
  if (v38[3])
  {
    *v6 = static VerticalAlignment.center.getter();
    *(v6 + 1) = 0x4020000000000000;
    v6[16] = 0;
    v14 = sub_10010FC20(&qword_1011A1398);
    sub_10075C95C(&v6[*(v14 + 44)]);
    v15 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = &v6[*(sub_10010FC20(&unk_1011A13A0) + 36)];
    *v24 = v15;
    *(v24 + 1) = v17;
    *(v24 + 2) = v19;
    *(v24 + 3) = v21;
    *(v24 + 4) = v23;
    v24[40] = 0;
    v25 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v26 = &v6[*(v4 + 36)];
    *v26 = v25;
    *(v26 + 1) = v27;
    *(v26 + 2) = v28;
    *(v26 + 3) = v29;
    *(v26 + 4) = v30;
    v26[40] = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_1000095E8(v38, &unk_1011A0F80);
    sub_10003D17C(v6, v9, &qword_1011A1388);
    v31 = &v9[*(v7 + 36)];
    v32 = v44;
    *(v31 + 4) = v43;
    *(v31 + 5) = v32;
    *(v31 + 6) = v45;
    v33 = v40;
    *v31 = v39;
    *(v31 + 1) = v33;
    v34 = v42;
    *(v31 + 2) = v41;
    *(v31 + 3) = v34;
    sub_10003D17C(v9, v13, &qword_1011A1390);
    sub_10003D17C(v13, a2, &qword_1011A1390);
    return (*(v37 + 56))(a2, 0, 1, v7);
  }

  else
  {
    v36 = *(v37 + 56);

    return v36(a2, 1, 1, v7);
  }
}

uint64_t sub_10075C95C@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v42 = type metadata accessor for Font.TextStyle();
  v1 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&qword_101188610);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - v4;
  v6 = sub_10010FC20(&unk_1011A13B0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v38 - v10);
  v38 = Image.init(systemName:)();
  static Font.Weight.medium.getter();
  v12 = type metadata accessor for Font.Design();
  v13 = *(v12 - 8);
  v39 = *(v13 + 56);
  v40 = v13 + 56;
  v39(v5, 1, 1, v12);
  v14 = static Font.system(size:weight:design:)();
  sub_1000095E8(v5, &qword_101188610);
  KeyPath = swift_getKeyPath();
  v16 = (v11 + *(sub_10010FC20(&qword_101198DF0) + 36));
  v17 = *(sub_10010FC20(&qword_1011A13C0) + 28);
  v18 = enum case for Image.Scale.medium(_:);
  v19 = type metadata accessor for Image.Scale();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  *v11 = v38;
  v11[1] = KeyPath;
  v11[2] = v14;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v20 = (v11 + *(v7 + 44));
  v21 = v46;
  *v20 = v45;
  v20[1] = v21;
  v20[2] = v47;
  LocalizedStringKey.init(stringLiteral:)();
  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  LOBYTE(KeyPath) = v25;
  v26 = v41;
  v27 = v42;
  (*(v1 + 104))(v41, enum case for Font.TextStyle.callout(_:), v42);
  v39(v5, 1, 1, v12);
  static Font.Weight.medium.getter();
  static Font.system(_:design:weight:)();
  sub_1000095E8(v5, &qword_101188610);
  (*(v1 + 8))(v26, v27);
  v28 = Text.font(_:)();
  v30 = v29;
  LOBYTE(v5) = v31;
  v33 = v32;

  sub_10011895C(v22, v24, KeyPath & 1);

  v34 = v43;
  sub_1000089F8(v11, v43, &unk_1011A13B0);
  v35 = v44;
  sub_1000089F8(v34, v44, &unk_1011A13B0);
  v36 = v35 + *(sub_10010FC20(&qword_1011A13C8) + 48);
  *v36 = v28;
  *(v36 + 8) = v30;
  *(v36 + 16) = v5 & 1;
  *(v36 + 24) = v33;
  sub_10021D0C0(v28, v30, v5 & 1);

  sub_1000095E8(v11, &unk_1011A13B0);
  sub_10011895C(v28, v30, v5 & 1);

  return sub_1000095E8(v34, &unk_1011A13B0);
}

__n128 sub_10075CE60@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell(0);
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & **v1) + 0x258))(&v58, v8);
  if (v60)
  {
    v35 = *(&v58 + 1);
    v33 = v59;
    v34 = v61;
    v62 = v58;
    v63 = v59;
    v32 = v60;
    sub_10056CABC(v10);
    v36 = DynamicTypeSize.isAccessibilitySize.getter();
    v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = *(v7 + 8);
    v11(v10, v6);
    sub_10056CABC(v10);
    v12 = DynamicTypeSize.isAccessibilitySize.getter();
    v11(v10, v6);
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0x4034000000000000;
    }

    v14 = v31;
    sub_1007630D8(v2, v31, type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell);
    v15 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v16 = swift_allocObject();
    sub_100763140(v14, v16 + v15, type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell);
    v17 = v16 + ((v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v17 = v62;
    v19 = v32;
    v18 = v33;
    *(v17 + 16) = v63;
    *(v17 + 24) = v19;
    v20 = v35;
    *(v17 + 32) = v34;
    sub_10002BC44(v20, v18);
    v21 = v19;
    v22 = static Alignment.center.getter();
    v24 = v23;
    sub_10010FC20(&qword_1011A1330);
    sub_100020674(&qword_1011A1338, &qword_1011A1330);
    AxisStack.init(axis:alignment:spacing:content:)(v36 & 1, v22, v24, v13, 0, sub_1007648D4, v16, v49);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_1000095E8(&v58, &unk_1011A0F80);
    v46 = v55;
    v47 = v56;
    v48 = v57;
    v42 = v51;
    v43 = v52;
    v44 = v53;
    v45 = v54;
    v38 = v49[0];
    v39 = v49[1];
    v40 = v49[2];
    v41 = v50;
    UIScreen.Dimensions.size.getter(v50.n128_f64[0]);
    v72 = v46;
    v73 = v47;
    v74 = v48;
    v68 = v42;
    v69 = v43;
    v70 = v44;
    v71 = v45;
    v64 = v38;
    v65 = v39;
    v66 = v40;
    v67 = v41;
  }

  else
  {
    sub_1007648B4(&v64);
  }

  v25 = v73;
  *(a1 + 128) = v72;
  *(a1 + 144) = v25;
  *(a1 + 160) = v74;
  v26 = v69;
  *(a1 + 64) = v68;
  *(a1 + 80) = v26;
  v27 = v71;
  *(a1 + 96) = v70;
  *(a1 + 112) = v27;
  v28 = v65;
  *a1 = v64;
  *(a1 + 16) = v28;
  result = v67;
  *(a1 + 32) = v66;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10075D2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v43 = a2;
  v4 = type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell(0);
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10010FC20(&qword_1011A1340);
  v7 = *(v6 - 8);
  v45 = v6;
  v46 = v7;
  __chkstk_darwin(v6);
  v9 = &v37 - v8;
  v10 = sub_10010FC20(&qword_1011A1348);
  __chkstk_darwin(v10 - 8);
  v44 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  LocalizedStringKey.init(stringLiteral:)();
  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  static Font.subheadline.getter();
  v20 = Text.font(_:)();
  v37 = v21;
  v38 = v20;
  v39 = v22;
  v40 = v23;

  sub_10011895C(v15, v17, v19 & 1);

  sub_1007630D8(v42, &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell);
  v24 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v25 = swift_allocObject();
  sub_100763140(&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell);
  v47 = v43;
  sub_10010FC20(&qword_1011A1350);
  sub_1007649E4();
  Button.init(action:label:)();
  v26 = AccessibilityString.qrCodeButtonLabel.unsafeMutableAddressor();
  v27 = *v26;
  v28 = v26[1];
  v29 = sub_100020674(&qword_1011A1378, &qword_1011A1340);

  v30 = v27;
  v31 = v45;
  View.accessibilityLabel(_:)(v30, v28, v45, v29);

  (*(v46 + 8))(v9, v31);
  v32 = v44;
  sub_1000089F8(v14, v44, &qword_1011A1348);
  v34 = v37;
  v33 = v38;
  *a3 = v38;
  *(a3 + 8) = v34;
  LOBYTE(v9) = v39 & 1;
  *(a3 + 16) = v39 & 1;
  *(a3 + 24) = v40;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v35 = sub_10010FC20(&qword_1011A1380);
  sub_1000089F8(v32, a3 + *(v35 + 64), &qword_1011A1348);
  sub_10021D0C0(v33, v34, v9);

  sub_1000095E8(v14, &qword_1011A1348);
  sub_1000095E8(v32, &qword_1011A1348);
  sub_10011895C(v33, v34, v9);
}

double sub_10075D738@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = QRCodeOverlayViewController.ImageViewRepresentable.init(image:)();
  v6 = v5;
  v8 = v7;
  v9 = v3;
  v10 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v4;
  *(a2 + 8) = v6 & 1;
  *(a2 + 16) = v8;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = v10;
  *(a2 + 40) = v13;
  *(a2 + 56) = v14;
  result = *&v15;
  *(a2 + 72) = v15;
  return result;
}

uint64_t sub_10075D7F4@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ButtonStyleConfiguration.Label();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10010FC20(&qword_1011A1850);
  __chkstk_darwin(v37);
  v39 = &v32 - v10;
  v38 = sub_10010FC20(&qword_1011A1858);
  __chkstk_darwin(v38);
  v12 = &v32 - v11;
  ButtonStyleConfiguration.label.getter();
  v44 = *(v1 + 8);
  v41 = v1;
  v13 = *v1;
  v43 = *v41;
  v14 = v44;
  v35 = v3;
  v36 = v2;
  v34 = v5;
  if (v44 == 1)
  {
    v15 = v13;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v33 = v6;
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000095E8(&v43, &qword_1011A1860);
    v6 = v33;
    (*(v3 + 8))(v5, v2);
    v15 = v42[0];
  }

  v17 = (v15 & 1) == 0;
  v18 = 2;
  if (!v17)
  {
    v18 = 3;
  }

  v19 = v41[v18];
  KeyPath = swift_getKeyPath();
  v21 = v39;
  (*(v7 + 32))(v39, v9, v6);
  v22 = (v21 + *(v37 + 36));
  *v22 = KeyPath;
  v22[1] = v19;
  if (v14)
  {
  }

  else
  {
    sub_1000089F8(&v43, v42, &qword_1011A1860);

    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v24 = v34;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000095E8(&v43, &qword_1011A1860);
    (*(v35 + 8))(v24, v36);
    LOBYTE(v13) = v42[0];
  }

  v25 = 4;
  if (v13)
  {
    v25 = 5;
  }

  v26 = v41[v25];
  v27 = static Alignment.center.getter();
  v29 = v28;
  sub_10003D17C(v21, v12, &qword_1011A1850);
  v30 = &v12[*(v38 + 36)];
  *v30 = v26;
  *(v30 + 1) = v27;
  *(v30 + 2) = v29;
  sub_10003D17C(v12, v40, &qword_1011A1858);
}

uint64_t sub_10075DC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = type metadata accessor for AppInterfaceContext.Activity(0);
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v4[17] = *(v6 + 64);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  type metadata accessor for Locale();
  v4[21] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[23] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10075DDBC, v8, v7);
}

uint64_t sub_10075DDBC()
{
  v1 = v0[14];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v5 style:1 handler:0];

  [v4 addAction:v7];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v8 = String._bridgeToObjectiveC()();

  v0[6] = sub_10069D768;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10027D328;
  v0[5] = &unk_1010BDD40;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 actionWithTitle:v8 style:0 handler:v9];
  _Block_release(v9);

  [v4 addAction:v10];
  v11 = [v1 delegate];
  if (!v11)
  {

    v0[12] = 0;
    *(v0 + 4) = 0u;
    *(v0 + 5) = 0u;
LABEL_9:
    sub_1000095E8((v0 + 8), &unk_101184EA0);
    goto LABEL_10;
  }

  v0[13] = v11;
  sub_10010FC20(&unk_101184050);
  sub_10010FC20(&unk_101184EB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v0[12] = 0;
    *(v0 + 4) = 0u;
    *(v0 + 5) = 0u;
    goto LABEL_8;
  }

  v12 = v0[11];
  if (!v12)
  {
LABEL_8:

    goto LABEL_9;
  }

  v13 = *(*sub_10000954C(v0 + 8, v12) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C((v0 + 8));
  if (v13)
  {
    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[18];
    v17 = v0[16];
    *v14 = v4;
    *(v14 + 8) = 1;
    *(v14 + 16) = &_swiftEmptySetSingleton;
    swift_storeEnumTagMultiPayload();
    sub_1007630D8(v14, v15, type metadata accessor for AppInterfaceContext.Activity);
    sub_1007630D8(v15, v16, type metadata accessor for AppInterfaceContext.Activity);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_100763140(v16, v19 + v18, type metadata accessor for AppInterfaceContext.Activity);
    v20 = v4;
    sub_100706900(v15, sub_100139B24, v19);

    sub_100761B84(v15, type metadata accessor for AppInterfaceContext.Activity);
    sub_100761B84(v14, type metadata accessor for AppInterfaceContext.Activity);
  }

  else
  {
  }

LABEL_10:

  v21 = v0[1];

  return v21();
}

uint64_t sub_10075E33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 512) = v16;
  *(v8 + 232) = a8;
  *(v8 + 240) = v15;
  *(v8 + 216) = a6;
  *(v8 + 224) = a7;
  *(v8 + 200) = a4;
  *(v8 + 208) = a5;
  v9 = type metadata accessor for AppInterfaceContext.Activity(0);
  *(v8 + 248) = v9;
  *(v8 + 256) = *(v9 - 8);
  *(v8 + 264) = swift_task_alloc();
  sub_10010FC20(&unk_1011841F0);
  *(v8 + 272) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 280) = v10;
  *(v8 + 288) = *(v10 - 8);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = type metadata accessor for SharePlayProxCard(0);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = type metadata accessor for SharePlayProxCard.ViewModel(0);
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  sub_10010FC20(&unk_101188920);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v8 + 408) = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  *(v8 + 416) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 424) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 432) = v11;
  *(v8 + 440) = v12;

  return _swift_task_switch(sub_10075E660, v11, v12);
}

uint64_t sub_10075E660()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = swift_allocObject();
  *(v0 + 448) = v6;
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v1;
  v162 = v6;
  v7 = v1;
  sub_100030444(v3);
  v8 = v5;
  v160 = v2;
  if (v2 == 1)
  {
    v9 = *(v0 + 240);
    v10 = *(v0 + 200);
    v11 = Image.init(_internalSystemName:)();

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v12 = String.init(localized:table:bundle:locale:comment:)();
    v157 = v13;
    v158 = v12;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_10010FC20(&qword_101186688);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100EBC6B0;
    v15 = [v10 hostDisplayName];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_10001CDD0();
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    v19 = String.init(format:_:)();
    v153 = v20;
    v154 = v19;

    swift_beginAccess();
    *(v9 + 16) = 1;
  }

  else
  {
    v21 = *(v0 + 200);
    v163 = Image.init(_internalSystemName:)();

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_10010FC20(&qword_101186688);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100EBC6B0;
    v23 = [v21 hostDisplayName];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_10001CDD0();
    *(v22 + 32) = v24;
    *(v22 + 40) = v26;
    v27 = String.init(format:_:)();
    v157 = v28;
    v158 = v27;

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v154 = String.init(localized:table:bundle:locale:comment:)();
    v11 = v163;
    v153 = v29;
  }

  v164 = v11;
  *(v0 + 456) = v11;
  v30 = *(v0 + 400);
  v31 = *(v0 + 240);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32 = String.init(localized:table:bundle:locale:comment:)();
  v149 = v33;
  v150 = v32;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34 = String.init(localized:table:bundle:locale:comment:)();
  v146 = v35;
  v147 = v34;
  swift_beginAccess();
  v145 = *(v31 + 16);
  v156 = swift_allocObject();
  *(v156 + 16) = sub_100763CD0;
  *(v156 + 24) = v162;
  v36 = objc_allocWithZone(type metadata accessor for SharePlayProxCardViewController(0));
  v37 = &v36[qword_10119DAA0];
  *v37 = 0;
  v37[1] = 0;
  v151 = v37;
  v155 = v36;
  v38 = &v36[qword_10119DAA8];
  v39 = type metadata accessor for Artwork();
  *v38 = 0;
  v38[1] = 0;
  v152 = v38;
  v40 = *(v39 - 8);
  (*(v40 + 56))(v30, 1, 1, v39);
  v41 = objc_opt_self();

  v42 = [v41 shared];
  v43 = [v42 activeUserState];

  v44 = [v43 music];
  v45 = [v44 userProfile];

  v148 = v45;
  if (v45)
  {
    v46 = [v45 name];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = [v45 artworkInfo];
    if (v50)
    {
      v51 = v50;
      v52 = [v50 responseDictionary];

      if (v52)
      {
        v53 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v54 = sub_10005476C(v53);

        if (v54)
        {
          v55 = *(v0 + 392);
          v56 = *(v0 + 400);
          Artwork.init(_:)();
          sub_10006B010(v55, v56, &unk_101188920);
        }
      }
    }

    v57 = *(v0 + 384);
    sub_1000089F8(*(v0 + 400), v57, &unk_101188920);
    v58 = (*(v40 + 48))(v57, 1, v39);
    sub_1000095E8(v57, &unk_101188920);
    if (v58 != 1)
    {
      v59 = v47;
LABEL_25:
      v82 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  sub_10010FC20(&qword_101183990);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_100EBC6C0;
  *(v60 + 32) = CNContactThumbnailImageDataKey;
  v165 = v60;
  v61 = objc_opt_self();
  v62 = CNContactThumbnailImageDataKey;
  v63 = [v61 descriptorForRequiredKeysForStyle:0];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v165 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v64 = [objc_allocWithZone(CNContactStore) init];
  sub_10010FC20(&qword_1011A1138);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(v0 + 176) = 0;
  v66 = [v64 _ios_meContactWithKeysToFetch:isa error:v0 + 176];

  v67 = *(v0 + 176);
  if (!v66)
  {
    v59 = v47;
    v71 = v67;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    goto LABEL_25;
  }

  if (!v49)
  {
    v68 = [v61 stringFromContact:v66 style:0];
    if (v68)
    {
      v69 = v68;
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v70;
    }

    else
    {
      v49 = 0;
    }
  }

  v72 = *(v0 + 376);
  sub_1000089F8(*(v0 + 400), v72, &unk_101188920);
  v73 = (*(v40 + 48))(v72, 1, v39);
  v74 = *(v0 + 376);
  if (v73 != 1)
  {
    v59 = v47;

    sub_1000095E8(v74, &unk_101188920);
    goto LABEL_25;
  }

  sub_1000095E8(*(v0 + 376), &unk_101188920);
  v75 = [v66 thumbnailImageData];
  v59 = v47;
  if (!v75)
  {

    goto LABEL_25;
  }

  v76 = v75;
  v77 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v78;

  v80 = objc_allocWithZone(UIImage);
  v81 = Data._bridgeToObjectiveC()().super.isa;
  v82 = [v80 initWithData:v81];

  sub_10002C064(v77, v79);
LABEL_26:
  v83 = v160 == 1;
  v85 = *(v0 + 360);
  v84 = *(v0 + 368);
  v87 = *(v0 + 344);
  v86 = *(v0 + 352);
  v88 = *(v0 + 328);
  v143 = *(v0 + 336);
  v144 = *(v0 + 400);
  v142 = *(v0 + 512);
  v161 = *(v0 + 240);
  sub_1000089F8(v144, v84 + v86[10], &unk_101188920);
  *v84 = v164;
  *(v84 + 8) = v158;
  *(v84 + 16) = v157;
  *(v84 + 24) = v154;
  *(v84 + 32) = v153;
  *(v84 + 40) = v150;
  *(v84 + 48) = v149;
  *(v84 + 56) = v147;
  *(v84 + 64) = v146;
  *(v84 + 72) = v145;
  *(v84 + v86[11]) = v82;
  v89 = (v84 + v86[12]);
  *v89 = v59;
  v89[1] = v49;
  v90 = v84 + v86[13];
  *v90 = sub_100766240;
  *(v90 + 8) = 0;
  *(v90 + 16) = 0;
  v159 = v83;
  *(v84 + v86[14]) = v83;
  type metadata accessor for SharePlayProxCard.CardState(0);
  swift_allocObject();
  v91 = sub_100693508();
  v92 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1007630D8(v84, v85, type metadata accessor for SharePlayProxCard.ViewModel);

  sub_1006918DC(v85, v87);
  v93 = (v87 + *(v88 + 24));
  v94 = *v93;

  sub_100020438(v94);
  *v93 = sub_100766244;
  v93[1] = v92;
  *&v155[qword_10119DA90] = v91;
  sub_1007630D8(v84, &v155[qword_10119DA98], type metadata accessor for SharePlayProxCard.ViewModel);
  v95 = *v151;
  *v151 = sub_100763CE0;
  v151[1] = v156;

  sub_100020438(v95);
  v96 = *v152;
  *v152 = 0;
  v152[1] = 0;
  sub_100020438(v96);
  sub_1007630D8(v87, v143, type metadata accessor for SharePlayProxCard);
  v97 = Card.ViewController.init(content:)(v143);
  *(v0 + 464) = v97;

  sub_100761B84(v84, type metadata accessor for SharePlayProxCard.ViewModel);
  sub_1000095E8(v144, &unk_101188920);
  sub_100761B84(v87, type metadata accessor for SharePlayProxCard);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  swift_beginAccess();
  if ((*(v161 + 16) & 1) == 0 && v142)
  {
    v98 = *(v0 + 320);
    v99 = *(v0 + 280);
    v100 = *(v0 + 288);
    v101 = Logger.sharePlayTogether.unsafeMutableAddressor();
    (*(v100 + 16))(v98, v101, v99);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&_mh_execute_header, v102, v103, "Auto connecting", v104, 2u);
    }

    v105 = *(v0 + 320);
    v106 = *(v0 + 280);
    v107 = *(v0 + 288);
    v109 = *(v0 + 216);
    v108 = *(v0 + 224);
    v111 = *(v0 + 200);
    v110 = *(v0 + 208);

    (*(v107 + 8))(v105, v106);
    sub_10075FFF8(v97, v159, v111, v110, v109, v108);
  }

  v112 = *(v0 + 288);
  v113 = *(v0 + 240);
  swift_beginAccess();
  LODWORD(v113) = *(v113 + 16);
  v114 = Logger.sharePlayTogether.unsafeMutableAddressor();
  v115 = *(v112 + 16);
  *(v0 + 472) = v115;
  v116 = *(v0 + 280);
  if (v113 != 1)
  {
    v117 = (v0 + 304);
    v115(*(v0 + 304), v114, v116);
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      v121 = "Presenting join card";
      goto LABEL_36;
    }

LABEL_37:
    v122 = *v117;
    goto LABEL_38;
  }

  v117 = (v0 + 312);
  v115(*(v0 + 312), v114, v116);
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v118, v119))
  {
    goto LABEL_37;
  }

  v120 = swift_slowAlloc();
  *v120 = 0;
  v121 = "Presenting identity creation card";
LABEL_36:
  _os_log_impl(&_mh_execute_header, v118, v119, v121, v120, 2u);
  v122 = *v117;

LABEL_38:
  v123 = *(v0 + 280);
  v124 = *(v0 + 288);
  v125 = *(v0 + 200);

  v126 = *(v124 + 8);
  *(v0 + 480) = v126;
  v126(v122, v123);
  v127 = [v125 hostInfo];
  LODWORD(v123) = [v127 routeType];

  if (v123 != 1)
  {
    v128 = [*(v0 + 200) hostInfo];
    v129 = [v128 routeType];

    if (v129 != 2)
    {
      if (qword_10117F8A8 != -1)
      {
        swift_once();
      }

      sub_10058BB38(2, 2);
    }
  }

  v130 = [*(v0 + 224) delegate];
  if (!v130)
  {

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_53:
    sub_1000095E8(v0 + 16, &unk_101184EA0);
    goto LABEL_54;
  }

  *(v0 + 184) = v130;
  sub_10010FC20(&unk_101184050);
  sub_10010FC20(&unk_101184EB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_52;
  }

  v131 = *(v0 + 40);
  if (!v131)
  {
LABEL_52:

    goto LABEL_53;
  }

  v132 = *(*sub_10000954C((v0 + 16), v131) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);
  *(v0 + 488) = v132;

  sub_10000959C(v0 + 16);
  if (v132)
  {
    v133 = *(v0 + 264);
    v134 = sub_10010EAAC(&off_10109C3B0);
    swift_arrayDestroy();
    *v133 = v97;
    *(v133 + 8) = 1;
    *(v133 + 16) = v134;
    swift_storeEnumTagMultiPayload();
    v135 = v97;
    v136 = swift_task_alloc();
    *(v0 + 496) = v136;
    *v136 = v0;
    v136[1] = sub_10075F968;
    v138 = *(v0 + 264);
    v137 = *(v0 + 272);

    return sub_100706024(v137, v138);
  }

LABEL_54:
  v140 = *(v0 + 272);
  (*(*(v0 + 256) + 56))(v140, 1, 1, *(v0 + 248));
  sub_1000095E8(v140, &unk_1011841F0);

  v141 = *(v0 + 8);

  return v141();
}

uint64_t sub_10075F968()
{
  v2 = *v1;
  (*v1)[63] = v0;

  sub_100761B84(v2[33], type metadata accessor for AppInterfaceContext.Activity);

  v3 = v2[55];
  v4 = v2[54];
  if (v0)
  {
    v5 = sub_10075FCCC;
  }

  else
  {
    v5 = sub_10075FB20;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10075FB20()
{
  v1 = v0[58];

  v2 = v0[34];
  (*(v0[32] + 56))(v2, 0, 1, v0[31]);
  sub_1000095E8(v2, &unk_1011841F0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10075FCCC()
{
  v24 = v0;
  v1 = v0[59];
  v2 = v0[37];
  v3 = v0[35];

  v4 = Logger.sharePlayTogether.unsafeMutableAddressor();
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[63];
    v21 = v0[37];
    v22 = v0[60];
    v19 = v0[58];
    v20 = v0[35];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446210;
    v0[24] = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000105AC(v10, v11, &v23);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to present join card: %{public}s", v8, 0xCu);
    sub_10000959C(v9);

    v22(v21, v20);
  }

  else
  {
    v13 = v0[60];
    v14 = v0[58];
    v15 = v0[37];
    v16 = v0[35];

    v13(v15, v16);
  }

  v17 = v0[1];

  return v17();
}

void sub_10075FFF8(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  if (a2)
  {
    v19 = Logger.sharePlayTogether.unsafeMutableAddressor();
    (*(v13 + 16))(v18, v19, v12);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Connecting to Sing session", v22, 2u);
    }

    (*(v13 + 8))(v18, v12);
    v23 = swift_allocObject();
    v23[2] = a3;
    v23[3] = a4;
    v23[4] = a5;
    aBlock[4] = sub_100763D68;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010BDC28;
    v24 = _Block_copy(aBlock);
    v25 = a3;
    sub_100030444(a4);

    [a1 dismissViewControllerAnimated:1 completion:v24];
    _Block_release(v24);
  }

  else
  {
    v37 = a3;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 1;

    static Published.subscript.setter();
    v26 = Logger.sharePlayTogether.unsafeMutableAddressor();
    (*(v13 + 16))(v15, v26, v12);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Connecting to session", v29, 2u);
    }

    (*(v13 + 8))(v15, v12);
    v30 = v37;
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v31 = qword_101218AC8;
    v32 = swift_allocObject();
    v32[2] = a1;
    v32[3] = a4;
    v32[4] = a5;
    v32[5] = a6;
    v33 = *(*v31 + 712);
    sub_100030444(a4);
    v34 = a1;
    v35 = a6;
    v33(v30, sub_100763D5C, v32);
  }
}

uint64_t sub_100760424(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v24 = *(v13 - 8);
  v25 = v13;
  __chkstk_darwin(v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_101182960);
  v23 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_1007643C8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010BDC78;
  v17 = _Block_copy(aBlock);
  swift_errorRetain();
  v18 = a2;
  sub_100030444(a3);
  v19 = a5;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100763090(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970);
  sub_100020674(&qword_101183F70, &qword_101182970);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v23;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v26 + 8))(v12, v10);
  (*(v24 + 8))(v15, v25);
}

void sub_100760740(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v69 = a5;
  v70 = a2;
  v8 = type metadata accessor for AppInterfaceContext.Activity(0);
  v9 = *(v8 - 8);
  v62 = v8;
  v63 = v9;
  __chkstk_darwin(v8);
  v65 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v66 = &v60 - v12;
  v64 = v13;
  __chkstk_darwin(v14);
  v16 = &v60 - v15;
  v17 = type metadata accessor for Locale();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v60 - v24;
  if (a1)
  {
    v61 = v16;
    v67 = a3;
    v68 = a4;
    swift_errorRetain();
    v26 = Logger.sharePlayTogether.unsafeMutableAddressor();
    (*(v20 + 16))(v22, v26, v19);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138543362;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to join session: %{public}@", v29, 0xCu);
      sub_1000095E8(v30, &unk_101183D70);
    }

    (*(v20 + 8))(v22, v19);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 0;

    static Published.subscript.setter();
    v32 = *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    if (v32 == 1)
    {
      String.init(localized:table:bundle:locale:comment:)();
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      v33._countAndFlagsBits = 0x414E5245544E495BLL;
      v33._object = 0xEB00000000205D4CLL;
      String.append(_:)(v33);
      v71 = a1;
      sub_10010FC20(&qword_1011824A0);
      _print_unlocked<A, B>(_:_:)();
      v34 = String._bridgeToObjectiveC()();

      v35 = String._bridgeToObjectiveC()();

      v36 = [objc_opt_self() alertControllerWithTitle:v34 message:v35 preferredStyle:1];

      v37 = v36;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v38 = String._bridgeToObjectiveC()();

      v39 = [objc_opt_self() actionWithTitle:v38 style:0 handler:0];

      [v37 addAction:v39];
      v40 = [v69 delegate];
      v41 = v67;
      if (v40)
      {
        v71 = v40;
        sub_10010FC20(&unk_101184050);
        sub_10010FC20(&unk_101184EB0);
        if (swift_dynamicCast())
        {
          if (*(&v73 + 1))
          {
            v42 = *(*sub_10000954C(&aBlock, *(&v73 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

            sub_10000959C(&aBlock);
            if (!v42)
            {
              goto LABEL_18;
            }

LABEL_17:
            v55 = v61;
            *v61 = v37;
            *(v55 + 8) = 1;
            *(v55 + 16) = &_swiftEmptySetSingleton;
            swift_storeEnumTagMultiPayload();
            v56 = v66;
            sub_1007630D8(v55, v66, type metadata accessor for AppInterfaceContext.Activity);
            v57 = v65;
            sub_1007630D8(v56, v65, type metadata accessor for AppInterfaceContext.Activity);
            v58 = (*(v63 + 80) + 32) & ~*(v63 + 80);
            v59 = swift_allocObject();
            *(v59 + 16) = 0;
            *(v59 + 24) = 0;
            sub_100763140(v57, v59 + v58, type metadata accessor for AppInterfaceContext.Activity);
            v37 = v37;
            sub_100706900(v56, sub_100139B24, v59);

            sub_100761B84(v56, type metadata accessor for AppInterfaceContext.Activity);
            sub_100761B84(v55, type metadata accessor for AppInterfaceContext.Activity);
LABEL_18:
            if (v41)
            {
LABEL_19:
              swift_errorRetain();
              v41(a1);

LABEL_23:

              return;
            }

LABEL_22:

            goto LABEL_23;
          }

          goto LABEL_21;
        }
      }
    }

    else
    {
      String.init(localized:table:bundle:locale:comment:)();
      v49 = String._bridgeToObjectiveC()();

      v50 = [objc_opt_self() alertControllerWithTitle:0 message:v49 preferredStyle:1];

      v37 = v50;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v51 = String._bridgeToObjectiveC()();

      v52 = [objc_opt_self() actionWithTitle:v51 style:0 handler:0];

      [v37 addAction:v52];
      v53 = [v69 delegate];
      v41 = v67;
      if (v53)
      {
        v71 = v53;
        sub_10010FC20(&unk_101184050);
        sub_10010FC20(&unk_101184EB0);
        if (swift_dynamicCast())
        {
          if (*(&v73 + 1))
          {
            v54 = *(*sub_10000954C(&aBlock, *(&v73 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

            sub_10000959C(&aBlock);
            if (!v54)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }

LABEL_21:
          sub_1000095E8(&aBlock, &unk_101184EA0);
          if (v41)
          {
            goto LABEL_19;
          }

          goto LABEL_22;
        }
      }
    }

    v74 = 0;
    aBlock = 0u;
    v73 = 0u;
    goto LABEL_21;
  }

  v43 = Logger.sharePlayTogether.unsafeMutableAddressor();
  (*(v20 + 16))(v25, v43, v19);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Joined session", v46, 2u);
  }

  (*(v20 + 8))(v25, v19);
  v47 = swift_allocObject();
  *(v47 + 16) = a3;
  *(v47 + 24) = a4;
  v74 = sub_1007643D8;
  v75 = v47;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v73 = sub_10002BC98;
  *(&v73 + 1) = &unk_1010BDCC8;
  v48 = _Block_copy(&aBlock);
  sub_100030444(a3);

  [v70 dismissViewControllerAnimated:1 completion:v48];
  _Block_release(v48);
}

uint64_t sub_1007612C8()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100761470(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101198DB0);
  __chkstk_darwin(v2 - 8);
  sub_1000089F8(a1, &v5 - v3, &qword_101198DB0);
  return EnvironmentValues.symbolRenderingMode.setter();
}

uint64_t sub_100761518(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v2 = sub_10010FC20(&qword_101186E00);
  __chkstk_darwin(v2 - 8);
  v47 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = &v47 - v5;
  v6 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  __chkstk_darwin(v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  v12 = type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
  __chkstk_darwin(v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  __chkstk_darwin(v18);
  v20 = (&v47 - v19);
  v21 = sub_10010FC20(&qword_1011A0F70);
  __chkstk_darwin(v21 - 8);
  v23 = &v47 - v22;
  v25 = *(v24 + 56);
  sub_1007630D8(v49, &v47 - v22, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
  sub_1007630D8(v50, &v23[v25], type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
  v50 = v23;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v28 = v48;
    if (!EnumCaseMultiPayload)
    {
      v27 = v50;
      sub_1007630D8(v50, v20, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_22;
      }

      v29 = *v20 == *(v27 + v25);
      goto LABEL_12;
    }

    v27 = v50;
    sub_1007630D8(v50, v17, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100761B84(v17, type metadata accessor for SharePlayTogetherSession.Participant);
      goto LABEL_22;
    }

    v31 = v17;
    v32 = v11;
    sub_100763140(v31, v11, type metadata accessor for SharePlayTogetherSession.Participant);
    v33 = v8;
    sub_100763140(v27 + v25, v8, type metadata accessor for SharePlayTogetherSession.Participant);
    if ((*v11 != *v8 || *(v11 + 1) != *(v8 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v11[32] != v8[32])
    {
      v29 = 0;
LABEL_41:
      sub_100761B84(v33, type metadata accessor for SharePlayTogetherSession.Participant);
      sub_100761B84(v32, type metadata accessor for SharePlayTogetherSession.Participant);
      sub_100761B84(v50, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
      return v29 & 1;
    }

    sub_1000089F8(&v11[*(v6 + 32)], v28, &qword_101186E00);
    v35 = type metadata accessor for SocialProfile();
    v36 = *(v35 - 8);
    v37 = *(v36 + 48);
    if (v37(v28, 1, v35) == 1)
    {
      sub_1000095E8(v28, &qword_101186E00);
      v38 = 0;
      v39 = 0;
    }

    else
    {
      v40 = v28;
      v38 = SocialProfile.id.getter();
      v39 = v41;
      (*(v36 + 8))(v40, v35);
    }

    v42 = v47;
    sub_1000089F8(v33 + *(v6 + 32), v47, &qword_101186E00);
    if (v37(v42, 1, v35) == 1)
    {
      sub_1000095E8(v42, &qword_101186E00);
      if (!v39)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v43 = v42;
      v44 = SocialProfile.id.getter();
      v46 = v45;
      (*(v36 + 8))(v43, v35);
      if (!v39)
      {
        if (!v46)
        {
LABEL_38:
          v29 = 1;
          goto LABEL_41;
        }

        v29 = 0;
LABEL_40:

        goto LABEL_41;
      }

      if (v46)
      {
        if (v38 == v44 && v39 == v46)
        {

          v29 = 1;
        }

        else
        {
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_40;
      }
    }

    v29 = 0;
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v27 = v50;
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
LABEL_14:
        sub_100761B84(v27, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
        v29 = 1;
        return v29 & 1;
      }
    }

    else
    {
      v30 = swift_getEnumCaseMultiPayload();
      if (v30 == 4)
      {
        goto LABEL_14;
      }
    }

LABEL_22:
    sub_1000095E8(v27, &qword_1011A0F70);
    v29 = 0;
    return v29 & 1;
  }

  v27 = v50;
  sub_1007630D8(v50, v14, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_22;
  }

  v29 = *v14 ^ *(v27 + v25) ^ 1;
LABEL_12:
  sub_100761B84(v27, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
  return v29 & 1;
}

uint64_t sub_100761B84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100761BE4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v149 = a1;
  v120 = type metadata accessor for AppInterfaceContext.Activity(0);
  v121 = *(v120 - 8);
  v11 = __chkstk_darwin(v120);
  v123 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v125 = &v119 - v14;
  v122 = v15;
  __chkstk_darwin(v13);
  v124 = (&v119 - v16);
  v146 = type metadata accessor for SharePlayProxCard(0);
  v17 = __chkstk_darwin(v146);
  v147 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v148 = &v119 - v19;
  v144 = type metadata accessor for SharePlayProxCard.ViewModel(0);
  v20 = __chkstk_darwin(v144);
  v145 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v119 - v22;
  v24 = sub_10010FC20(&unk_101188920);
  v25 = __chkstk_darwin(v24 - 8);
  v127 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v128 = &v119 - v28;
  v29 = __chkstk_darwin(v27);
  v126 = &v119 - v30;
  __chkstk_darwin(v29);
  v32 = &v119 - v31;
  v33 = type metadata accessor for Locale();
  __chkstk_darwin(v33 - 8);
  v34 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v34 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v143 = String.init(localized:table:bundle:locale:comment:)();
  v142 = v35;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v139 = String.init(localized:table:bundle:locale:comment:)();
  v138 = v36;
  if (a2)
  {
    v152 = sub_100766240;
    v153 = 0;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v152 = String.init(localized:table:bundle:locale:comment:)();
    v153 = v37;
  }

  v151 = a2 ^ 1;
  v134 = Image.init(_internalSystemName:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v133 = String.init(localized:table:bundle:locale:comment:)();
  v132 = v38;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v130 = String.init(localized:table:bundle:locale:comment:)();
  v129 = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = a3;
  *(v40 + 24) = a4;
  v141 = v40;
  v41 = swift_allocObject();
  v42 = a5;
  *(v41 + 16) = a5;
  *(v41 + 24) = a6;
  v140 = v41;
  v43 = objc_allocWithZone(type metadata accessor for SharePlayProxCardViewController(0));
  v44 = &v43[qword_10119DAA0];
  *v44 = 0;
  v44[1] = 0;
  v135 = v44;
  v137 = v43;
  v45 = &v43[qword_10119DAA8];
  v46 = type metadata accessor for Artwork();
  *v45 = 0;
  v45[1] = 0;
  v136 = v45;
  v47 = *(v46 - 8);
  v48 = v32;
  (*(v47 + 56))(v32, 1, 1, v46);
  v49 = objc_opt_self();
  sub_100030444(a3);
  sub_100030444(v42);
  v50 = [v49 shared];
  v51 = [v50 activeUserState];

  v52 = [v51 music];
  v53 = [v52 userProfile];

  v131 = v53;
  if (v53)
  {
    v54 = [v53 name];
    v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = [v53 artworkInfo];
    if (v57)
    {
      v58 = v57;
      v59 = [v57 responseDictionary];

      if (v59)
      {
        v60 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v61 = sub_10005476C(v60);

        if (v61)
        {
          v62 = v126;
          Artwork.init(_:)();
          sub_10006B010(v62, v48, &unk_101188920);
        }
      }
    }

    v63 = v128;
    sub_1000089F8(v48, v128, &unk_101188920);
    v64 = (*(v47 + 48))(v63, 1, v46);
    sub_1000095E8(v63, &unk_101188920);
    if (v64 != 1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v150 = 0;
    v56 = 0;
  }

  sub_10010FC20(&qword_101183990);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_100EBC6C0;
  *(v65 + 32) = CNContactThumbnailImageDataKey;
  *&v155 = v65;
  v66 = objc_opt_self();
  v67 = CNContactThumbnailImageDataKey;
  v68 = [v66 descriptorForRequiredKeysForStyle:0];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v69 = [objc_allocWithZone(CNContactStore) init];
  sub_10010FC20(&qword_1011A1138);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v158 = 0;
  v71 = [v69 _ios_meContactWithKeysToFetch:isa error:&v158];

  v72 = v158;
  if (v71)
  {
    if (!v56)
    {
      v73 = [v66 stringFromContact:v71 style:0];
      if (v73)
      {
        v74 = v73;
        v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v75;
      }

      else
      {
        v56 = 0;
      }
    }

    v77 = v127;
    sub_1000089F8(v48, v127, &unk_101188920);
    if ((*(v47 + 48))(v77, 1, v46) == 1)
    {
      sub_1000095E8(v77, &unk_101188920);
      v78 = [v71 thumbnailImageData];
      if (v78)
      {
        v79 = v78;
        v80 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v81;

        v83 = objc_allocWithZone(UIImage);
        v84 = Data._bridgeToObjectiveC()().super.isa;
        v85 = [v83 initWithData:v84];

        sub_10002C064(v80, v82);
        goto LABEL_26;
      }
    }

    else
    {

      sub_1000095E8(v77, &unk_101188920);
    }
  }

  else
  {
    v76 = v72;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

LABEL_25:
  v85 = 0;
LABEL_26:
  v86 = v144;
  sub_1000089F8(v48, &v23[*(v144 + 40)], &unk_101188920);
  v87 = v143;
  *v23 = v134;
  *(v23 + 1) = v87;
  v88 = v139;
  *(v23 + 2) = v142;
  *(v23 + 3) = v88;
  v89 = v133;
  *(v23 + 4) = v138;
  *(v23 + 5) = v89;
  v90 = v130;
  *(v23 + 6) = v132;
  *(v23 + 7) = v90;
  *(v23 + 8) = v129;
  v23[72] = 1;
  *&v23[v86[11]] = v85;
  v91 = &v23[v86[12]];
  *v91 = v150;
  v91[1] = v56;
  v92 = &v23[v86[13]];
  v93 = v153;
  *v92 = v152;
  *(v92 + 1) = v93;
  LODWORD(v150) = v151 & 1;
  v92[16] = v151 & 1;
  v23[v86[14]] = 0;
  type metadata accessor for SharePlayProxCard.CardState(0);
  swift_allocObject();
  v94 = sub_100693508();
  v95 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v96 = v145;
  sub_1007630D8(v23, v145, type metadata accessor for SharePlayProxCard.ViewModel);

  v97 = v148;
  sub_1006918DC(v96, v148);
  v98 = (v97 + *(v146 + 24));
  v99 = *v98;

  sub_100020438(v99);
  *v98 = sub_100763AF0;
  v98[1] = v95;
  v100 = v137;
  *&v137[qword_10119DA90] = v94;
  sub_1007630D8(v23, &v100[qword_10119DA98], type metadata accessor for SharePlayProxCard.ViewModel);
  v101 = v135;
  v102 = *v135;
  v103 = v141;
  *v135 = sub_100763AC0;
  v101[1] = v103;

  sub_100020438(v102);
  v104 = v136;
  v105 = *v136;
  v106 = v140;
  *v136 = sub_1001D281C;
  v104[1] = v106;

  sub_100020438(v105);
  v107 = v147;
  sub_1007630D8(v97, v147, type metadata accessor for SharePlayProxCard);
  v108 = Card.ViewController.init(content:)(v107);

  sub_100761B84(v23, type metadata accessor for SharePlayProxCard.ViewModel);
  sub_1000095E8(v48, &unk_101188920);
  sub_100761B84(v97, type metadata accessor for SharePlayProxCard);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  v109 = [v149 delegate];
  if (!v109)
  {
    sub_10069A538(v152, v153, v150);

    v157 = 0;
    v155 = 0u;
    v156 = 0u;
LABEL_34:
    sub_1000095E8(&v155, &unk_101184EA0);
    return;
  }

  v154 = v109;
  sub_10010FC20(&unk_101184050);
  sub_10010FC20(&unk_101184EB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v157 = 0;
    v155 = 0u;
    v156 = 0u;
    v110 = v153;
    goto LABEL_33;
  }

  v110 = v153;
  if (!*(&v156 + 1))
  {
LABEL_33:
    sub_10069A538(v152, v110, v151 & 1);

    goto LABEL_34;
  }

  v111 = *(*sub_10000954C(&v155, *(&v156 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(&v155);
  if (v111)
  {
    v112 = sub_10010EAAC(&off_101099610);
    swift_arrayDestroy();
    v113 = v124;
    *v124 = v108;
    *(v113 + 8) = 1;
    *(v113 + 16) = v112;
    swift_storeEnumTagMultiPayload();
    v114 = v125;
    sub_1007630D8(v113, v125, type metadata accessor for AppInterfaceContext.Activity);
    v115 = v123;
    sub_1007630D8(v114, v123, type metadata accessor for AppInterfaceContext.Activity);
    v116 = (*(v121 + 80) + 32) & ~*(v121 + 80);
    v117 = swift_allocObject();
    *(v117 + 16) = 0;
    *(v117 + 24) = 0;
    sub_100763140(v115, v117 + v116, type metadata accessor for AppInterfaceContext.Activity);
    v118 = v108;
    sub_100706900(v114, sub_100137E88, v117);

    sub_10069A538(v152, v110, v151 & 1);

    sub_100761B84(v114, type metadata accessor for AppInterfaceContext.Activity);
    sub_100761B84(v113, type metadata accessor for AppInterfaceContext.Activity);
  }

  else
  {
    sub_10069A538(v152, v110, v151 & 1);
  }
}

void sub_100762D78()
{
  v1 = v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_preferredWidth;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = (v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_onDismiss);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_observables) = &_swiftEmptySetSingleton;
  v3 = (v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastSeenSafeAreaLayoutFrame);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastPendingParticipantScrolledTo;
  v5 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_contentSizeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_discoveryPreferenceObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_sessionAssertion) = 0;
  *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_viewDidAppearOnce) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100762EB8()
{
  v1 = sub_10010FC20(&qword_1011A0F78);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v15 - v6;
  v8 = [v0 traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 3)
  {
    v10 = *&v0[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource];
    if (v10)
    {
      v11 = v10;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      v12 = type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
      if ((*(*(v12 - 8) + 48))(v7, 1, v12) != 1)
      {
        sub_1000089F8(v7, v3, &qword_1011A0F78);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 4)
        {
          sub_100761B84(v3, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
        }
      }

      sub_1000095E8(v7, &qword_1011A0F78);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100763090(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007630D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100763140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007631FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_10074CDC4(a1, a2, a3, a4, v10, v11);
}

id sub_1007632C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10010FC20(&unk_1011A0FE0) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = *(v7 + 64);
  v11 = *(sub_10010FC20(&qword_1011A0FD8) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_10010FC20(&qword_1011A0FD0) - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  return sub_10074F708(a1, a2, a3, *(v3 + 16), v3 + v9, v3 + v12, v3 + v15, v3 + ((*(v14 + 64) + v8 + v15) & ~v8));
}

unint64_t sub_10076347C()
{
  sub_10010FC20(&unk_10118A650);

  return sub_1007509D8();
}

unint64_t sub_100763574()
{
  result = qword_1011A1028;
  if (!qword_1011A1028)
  {
    sub_1001109D0(&unk_1011A1030);
    sub_100020674(&qword_1011966E8, &qword_1011A1040);
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1028);
  }

  return result;
}

uint64_t sub_100763658@<X0>(_BYTE *a1@<X8>)
{
  result = MRGroupSessionNearbyContactDiscoveryEnabled();
  *a1 = result;
  return result;
}

id sub_1007636EC@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  *a1 = v2;
  return v2;
}

unint64_t sub_100763704()
{
  result = qword_1011A1068;
  if (!qword_1011A1068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1068);
  }

  return result;
}

uint64_t sub_100763758(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_10074EFB0(a1, v4, v5, v6);
}

unint64_t sub_100763878()
{
  result = qword_1011A10C0;
  if (!qword_1011A10C0)
  {
    sub_1001109D0(&qword_1011A10B8);
    sub_100020674(&qword_1011A10C8, &qword_1011A10D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A10C0);
  }

  return result;
}

uint64_t sub_100763968@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = *(v1[2] + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  *a1 = v4;
  a1[1] = v2;
  a1[2] = v3;
  v5 = v4;
}

unint64_t sub_1007639B8()
{
  result = qword_1011A10E0;
  if (!qword_1011A10E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A10E0);
  }

  return result;
}

uint64_t sub_100763A0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10074DE08(a1, v4, v5, v6);
}

uint64_t sub_100763AC0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100763B24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10075DC50(a1, v4, v5, v6);
}

uint64_t sub_100763BD8(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_10075E33C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100763D0C()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100763D68()
{
  v1 = *(v0 + 24);
  result = sub_100763DA0(*(v0 + 16));
  if (v1)
  {
    return v1(0);
  }

  return result;
}

uint64_t sub_100763DA0(void *a1)
{
  v2 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v2 - 8);
  v67 = &v57[-v3];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v57[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v57[-v13];
  v15 = Logger.sharePlayTogether.unsafeMutableAddressor();
  v16 = *(v9 + 16);
  v64 = v15;
  v65 = v9 + 16;
  v63 = v16;
  v16(v14);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v61 = v8;
    v21 = v20;
    v62 = swift_slowAlloc();
    v68 = v62;
    *v21 = 136315138;
    v22 = v17;
    v66 = v11;
    v23 = v22;
    v24 = [v22 description];
    v58 = v19;
    v25 = v5;
    v26 = v4;
    v27 = v24;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v17;
    v60 = v7;
    v29 = v28;
    v30 = v9;
    v32 = v31;

    v11 = v66;
    v4 = v26;
    v5 = v25;
    v33 = sub_1000105AC(v29, v32, &v68);
    v9 = v30;
    v7 = v60;

    *(v21 + 4) = v33;
    v17 = v59;
    _os_log_impl(&_mh_execute_header, v18, v58, "Launch SingMic with %s", v21, 0xCu);
    sub_10000959C(v62);

    v8 = v61;
  }

  v62 = *(v9 + 8);
  v62(v14, v8);
  v34 = v17;
  v35 = [v17 joinContinuitySingURLString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = v67;
  URL.init(string:)();

  if ((*(v5 + 48))(v36, 1, v4) == 1)
  {
    sub_1000095E8(v36, &qword_101183A20);
    v63(v11, v64, v8);
    v37 = v34;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = v8;
      v42 = swift_slowAlloc();
      v68 = v42;
      *v40 = 136315138;
      v43 = v37;
      v44 = [v43 description];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v11;
      v47 = v46;

      v48 = sub_1000105AC(v45, v47, &v68);

      *(v40 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v38, v39, "Unable to launch SingMic %s", v40, 0xCu);
      sub_10000959C(v42);

      v49 = v66;
      v50 = v41;
    }

    else
    {

      v49 = v11;
      v50 = v8;
    }

    return (v62)(v49, v50);
  }

  else
  {
    (*(v5 + 32))(v7, v36, v4);
    v51 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v52);
    v54 = v53;
    sub_10010CD7C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_100763090(&qword_10118A3E0, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v51 openURL:v54 options:isa completionHandler:0];

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1007643D8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

void sub_100764444()
{
  sub_100764518();
  if (v0 <= 0x3F)
  {
    sub_10002EF7C();
    if (v1 <= 0x3F)
    {
      sub_1007645AC(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100764518()
{
  if (!qword_1011A11B8)
  {
    type metadata accessor for SharePlayTogetherSession(255);
    sub_100763090(&unk_101189E70, type metadata accessor for SharePlayTogetherSession);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1011A11B8);
    }
  }
}

void sub_1007645AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100764638()
{
  type metadata accessor for SharePlayTogetherSession(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SharePlayTogetherSession.Participant(319);
    if (v1 <= 0x3F)
    {
      sub_1007645AC(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100764734()
{
  type metadata accessor for SharePlayTogetherSession(319);
  if (v0 <= 0x3F)
  {
    sub_1004653BC();
    if (v1 <= 0x3F)
    {
      sub_10002EF7C();
      if (v2 <= 0x3F)
      {
        sub_1007645AC(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

double sub_1007648B4(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1007648D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_10075D2D4(v1 + v4, v5, a1);
}

uint64_t sub_100764970()
{
  v1 = type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 24);
  if (v4)
  {
    return v4();
  }

  return result;
}

unint64_t sub_1007649E4()
{
  result = qword_1011A1358;
  if (!qword_1011A1358)
  {
    sub_1001109D0(&qword_1011A1350);
    sub_100764A9C(&qword_1011A1360, &qword_1011A1368, &unk_100EE0C88, sub_100764B4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1358);
  }

  return result;
}

uint64_t sub_100764A9C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    sub_100020674(&unk_1011914C0, &unk_101184E90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100764B4C()
{
  result = qword_1011A1370;
  if (!qword_1011A1370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1370);
  }

  return result;
}

unint64_t sub_100764BCC()
{
  result = qword_1011A1470;
  if (!qword_1011A1470)
  {
    sub_1001109D0(&qword_1011A1468);
    sub_100020674(&qword_1011A1478, &qword_1011A1480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1470);
  }

  return result;
}

uint64_t sub_100764C84()
{
  v1 = type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v3 = v2 + *(v1 + 20);

  v4 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  v5 = type metadata accessor for SocialProfile();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(&v3[v4], 1, v5))
  {
    (*(v6 + 8))(&v3[v4], v5);
  }

  v7 = *(v1 + 28);
  sub_10010FC20(&qword_10118A610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100764E48()
{
  v1 = type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  return (*((swift_isaMask & **v2) + 0x328))(&v2[*(v1 + 20)]);
}

unint64_t sub_100764EF4()
{
  result = qword_1011A1508;
  if (!qword_1011A1508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1508);
  }

  return result;
}

unint64_t sub_100764F48()
{
  result = qword_1011A1510;
  if (!qword_1011A1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1510);
  }

  return result;
}

uint64_t sub_100764FF4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_100765080()
{
  v1 = type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 24))
  {
  }

  v3 = *(v1 + 28);
  sub_10010FC20(&qword_10118A610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DynamicTypeSize();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_100765254()
{
  result = qword_1011A1618;
  if (!qword_1011A1618)
  {
    sub_1001109D0(&qword_1011A1610);
    sub_100618510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1618);
  }

  return result;
}

unint64_t sub_1007652E0()
{
  result = qword_1011A1640;
  if (!qword_1011A1640)
  {
    sub_1001109D0(&qword_1011A15E8);
    sub_1001109D0(&qword_1011A15D8);
    sub_1001109D0(&qword_1011A15D0);
    sub_100020674(&qword_1011A1638, &qword_1011A15D0);
    sub_100764EF4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011A1648, &qword_1011A1650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1640);
  }

  return result;
}

uint64_t sub_10076548C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_100765508()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_100765540()
{
  result = qword_1011A16C8;
  if (!qword_1011A16C8)
  {
    sub_1001109D0(&qword_1011A16C0);
    sub_100020674(&qword_1011A16D0, &qword_1011A16D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A16C8);
  }

  return result;
}

unint64_t sub_1007655F8()
{
  result = qword_1011A16E8;
  if (!qword_1011A16E8)
  {
    sub_1001109D0(&qword_1011A1690);
    sub_1001109D0(&qword_1011A1688);
    sub_100020674(&qword_1011A16E0, &qword_1011A1688);
    sub_100764EF4();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011A16F0, &qword_101185680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A16E8);
  }

  return result;
}

void sub_100765734()
{
  sub_10001F7E8();
  if (v0 <= 0x3F)
  {
    sub_100402A50();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100765814(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100765870(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1007658E0()
{
  result = qword_1011A1798;
  if (!qword_1011A1798)
  {
    sub_1001109D0(&qword_1011A17A0);
    sub_100020674(&qword_1011A17A8, &qword_1011A17B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1798);
  }

  return result;
}

uint64_t sub_100765998(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100765A14()
{
  result = qword_1011A17C8;
  if (!qword_1011A17C8)
  {
    sub_1001109D0(&qword_1011A1390);
    sub_100765AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A17C8);
  }

  return result;
}

unint64_t sub_100765AA0()
{
  result = qword_1011A17D0;
  if (!qword_1011A17D0)
  {
    sub_1001109D0(&qword_1011A1388);
    sub_100765B2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A17D0);
  }

  return result;
}

unint64_t sub_100765B2C()
{
  result = qword_1011A17D8;
  if (!qword_1011A17D8)
  {
    sub_1001109D0(&unk_1011A13A0);
    sub_100020674(&qword_1011A17E0, &qword_1011A17E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A17D8);
  }

  return result;
}

unint64_t sub_100765BE4()
{
  result = qword_1011A17F0;
  if (!qword_1011A17F0)
  {
    sub_1001109D0(&unk_1011A13F0);
    sub_100765C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A17F0);
  }

  return result;
}

unint64_t sub_100765C70()
{
  result = qword_1011A17F8;
  if (!qword_1011A17F8)
  {
    sub_1001109D0(&qword_1011A13E0);
    sub_100765CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A17F8);
  }

  return result;
}

unint64_t sub_100765CFC()
{
  result = qword_1011A1800;
  if (!qword_1011A1800)
  {
    sub_1001109D0(&qword_1011A13D8);
    sub_100765D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1800);
  }

  return result;
}

unint64_t sub_100765D88()
{
  result = qword_1011A1808;
  if (!qword_1011A1808)
  {
    sub_1001109D0(&qword_1011A13D0);
    sub_100020674(&qword_1011A1810, &qword_1011A1818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1808);
  }

  return result;
}

unint64_t sub_100765E40()
{
  result = qword_1011A1820;
  if (!qword_1011A1820)
  {
    sub_1001109D0(&qword_1011A1588);
    sub_100765ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1820);
  }

  return result;
}

unint64_t sub_100765ECC()
{
  result = qword_1011A1828;
  if (!qword_1011A1828)
  {
    sub_1001109D0(&qword_1011A1578);
    sub_100765F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1828);
  }

  return result;
}

unint64_t sub_100765F58()
{
  result = qword_1011A1830;
  if (!qword_1011A1830)
  {
    sub_1001109D0(&qword_1011A1570);
    sub_100020674(&qword_1011A1838, &qword_1011A1568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1830);
  }

  return result;
}

unint64_t sub_10076607C()
{
  result = qword_1011A1868;
  if (!qword_1011A1868)
  {
    sub_1001109D0(&qword_1011A1858);
    sub_100766134();
    sub_100020674(&unk_1011A1880, &qword_1011A0A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1868);
  }

  return result;
}

unint64_t sub_100766134()
{
  result = qword_1011A1870;
  if (!qword_1011A1870)
  {
    sub_1001109D0(&qword_1011A1850);
    sub_100763090(&qword_101187968, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_100020674(&unk_1011914C0, &unk_101184E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1870);
  }

  return result;
}

uint64_t sub_100766268()
{
  v1 = v0;
  sub_10010FC20(&unk_1011845C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6B0;
  v3 = sub_10031EA10();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *&v18[0] = v4;
  *(&v18[0] + 1) = v6;
  v7._countAndFlagsBits = 0x7265746C69462ELL;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  v9 = *(*(v1 + OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_responseController) + 48);
  swift_beginAccess();
  v10 = v9[3];
  v18[1] = v9[2];
  v11 = v9[4];
  v12 = v9[5];
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = v12;
  v18[0] = v9[1];
  v13 = swift_allocObject();
  swift_weakInit();

  sub_10030DC78(v18, v17);
  v14.super.super.isa = sub_100398190(sub_10076F1D8, v13).super.super.isa;

  sub_10030DCB0(v18);

  if (v14.super.super.isa)
  {
    v15 = [(objc_class *)v14.super.super.isa children];

    sub_100009F78(0, &qword_10118CDE0);
    v14.super.super.isa = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v8 = 0;
  }

  *(v2 + 32) = v8;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = v14;
  return v2;
}

id sub_100766448(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_hasAppearedOnce] = 0;
  v7 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___headerRegistration;
  v8 = sub_10010FC20(&unk_10118A650);
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___listCellRegistration;
  v10 = sub_10010FC20(&unk_1011A1918);
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  *&v2[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___collectionView] = 0;
  v11 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_prefetchingController;
  v12 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v2[v11] = sub_10003AAD8(0xD000000000000021, 0x8000000100E56E80);
  *&v2[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___searchController] = 0;
  v13 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___actionMetricsReportingContext;
  v14 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v14 - 8) + 56))(&v2[v13], 1, 1, v14);
  *&v2[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController] = 0;
  v15 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_selectedArtist;
  v16 = type metadata accessor for Artist();
  (*(*(v16 - 8) + 56))(&v2[v15], 1, 1, v16);
  sub_10030D9E8(a1, v30);
  sub_10010FC20(&unk_1011A1930);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_responseController] = sub_1003A22BC(v30);
  v29.receiver = v2;
  v29.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v29, "initWithNibName:bundle:", 0, 0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v18 = String._bridgeToObjectiveC()();

  [v17 setTitle:v18];

  UIViewController.playActivityFeatureIdentifier.setter(2);
  v19 = [v17 traitCollection];

  v20 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    v23 = [v17 navigationItem];
    [v23 setLargeTitleDisplayMode:v20];
  }

  sub_10010FC20(&unk_101182D80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100EBC6B0;
  v25 = sub_100217F14();
  *(v24 + 32) = &type metadata for LibraryFilterTrait;
  *(v24 + 40) = v25;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100EBC6B0;
  v27 = sub_100137E8C();
  *(v26 + 32) = &type metadata for MusicLibraryTrait;
  *(v26 + 40) = v27;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v17;
}

uint64_t sub_1007668F0()
{
  v1 = v0;
  v33.receiver = v0;
  v33.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v33, "viewDidLoad");
  v2 = sub_100766D24();
  v3 = *&v1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_prefetchingController];
  [v2 setPrefetchDataSource:v3];

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = (v3 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v6 = *(v3 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  *v5 = sub_100770D60;
  v5[1] = v4;

  sub_100020438(v6);

  v7 = (v3 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v8 = *(v3 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  *v7 = sub_100767218;
  v7[1] = 0;
  sub_100020438(v8);
  v9 = *&v1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___collectionView];
  v10 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
  v11 = v9;
  v12 = [v10 init];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = static MPCPlayerCommandRequest.isAvailable(in:);
  *(v15 + 80) = 0;
  *(v15 + 88) = v13;
  v16 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_1002193FC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010BE2A0;
  v17 = _Block_copy(aBlock);

  v18 = [v16 initWithSectionProvider:v17 configuration:v12];

  _Block_release(v17);

  [v11 setCollectionViewLayout:v18];

  v19 = [v1 navigationItem];
  v20 = *&v1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_responseController];
  v21 = sub_1003A67A4();
  [v19 setRightBarButtonItem:v21];

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = *(v20 + 16);
  *(v20 + 16) = sub_100770D68;
  *(v20 + 24) = v22;

  sub_100020438(v23);

  v24 = sub_100767EE4();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = *(v24 + 88);
  *(v24 + 88) = sub_100770D70;
  *(v24 + 96) = v25;

  sub_100020438(v26);

  v30[3] = sub_10010FC20(&unk_10118A650);
  v27 = sub_10001C8B8(v30);
  sub_100769F1C(v27);
  v31[3] = sub_10010FC20(&unk_1011A1918);
  v28 = sub_10001C8B8(v31);
  sub_10076A1A4(v28);
  return swift_arrayDestroy();
}

id sub_100766D24()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___collectionView];
LABEL_6:
    v43 = v11;
    return v12;
  }

  sub_100009F78(0, &qword_101184600);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v13 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v14);
  v15 = v13;
  v16 = sub_100188F30(v15, 1u, 0);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v45.receiver = v16;
    v45.super_class = v14;
    v27 = v16;
    objc_msgSendSuper2(&v45, "frame");
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v44.receiver = v27;
    v44.super_class = v14;
    objc_msgSendSuper2(&v44, "setFrame:", v20, v22, v24, v26);
    sub_1001891B4(v29, v31, v33, v35);
    [v27 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v36 = result;
      [result addSubview:v27];

      v37 = v27;
      [v37 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v37 setDataSource:v1];
      [v37 setDelegate:v1];
      [v37 setKeyboardDismissMode:1];
      [v37 setAllowsFocus:1];
      [v37 setRemembersLastFocusedIndexPath:1];

      v38 = AccessibilityIdentifier.libraryArtistsListView.unsafeMutableAddressor();
      v39 = *v38;
      v40 = v38[1];

      v41 = UIView.withAccessibilityIdentifier(_:)(v39, v40);

      v42 = *&v1[v10];
      *&v1[v10] = v41;
      v12 = v41;

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_10076711C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong traitCollection];
    sub_10045B4D0();
    v3 = UITraitCollection.subscript.getter();

    if (v3)
    {
      v4 = 44.0;
    }

    else
    {
      v4 = 48.0;
    }
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [objc_opt_self() currentTraitCollection];
  [v5 displayScale];

  return v4;
}

unint64_t sub_100767218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v32 = a3;
  v4 = sub_10010FC20(&qword_101193B90);
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v7 = sub_10010FC20(&qword_1011A1980);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Artist();
  v29 = *(v11 - 8);
  v30 = v11;
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&qword_1011A1988);
  __chkstk_darwin(v14 - 8);
  v16 = &v26 - v15;
  v17 = sub_10010FC20(&qword_10118D0F8);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v26 - v19;
  sub_1000089F8(a1, v33, &unk_101183F30);
  if (!v34)
  {
    sub_1000095E8(v33, &unk_101183F30);
    (*(v18 + 56))(v16, 1, 1, v17);
    goto LABEL_7;
  }

  v21 = swift_dynamicCast();
  (*(v18 + 56))(v16, v21 ^ 1u, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
LABEL_7:
    sub_1000095E8(v16, &qword_1011A1988);
    v25 = type metadata accessor for Artwork();
    return (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
  }

  (*(v18 + 32))(v20, v16, v17);
  v22 = MusicLibrarySectionedResponse.sections.getter();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v22 + 16))
  {
    (*(v8 + 16))(v10, v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);

    MusicLibrarySection.items.getter();
    (*(v8 + 8))(v10, v7);
    IndexPath.item.getter();
    v24 = v28;
    MusicItemCollection.subscript.getter();
    (*(v27 + 8))(v6, v24);
    sub_10010FC20(&unk_10118F200);
    swift_allocObject();
    MusicAttributeProperty.init(_:)();
    Artist.subscript.getter();

    (*(v29 + 8))(v13, v30);
    return (*(v18 + 8))(v20, v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007677B0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = sub_10010FC20(&qword_10118D0F8);
  v55 = *(v6 - 8);
  __chkstk_darwin(v6);
  v53 = &v48 - v7;
  v8 = sub_10010FC20(&qword_10118D0F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v48 - v12;
  v14 = sub_10010FC20(&qword_1011A1988);
  v56 = *(v14 - 8);
  v15 = *(v56 + 64);
  __chkstk_darwin(v14 - 8);
  v58 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v57 = &v48 - v17;
  __chkstk_darwin(v18);
  v54 = &v48 - v19;
  __chkstk_darwin(v20);
  v22 = &v48 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v24 = Strong;
  v50 = a2;
  v51 = a3;
  v52 = a1;
  RequestResponse.Revision.content.getter(v13);
  v25 = sub_10010FC20(&unk_10118D100);
  v49 = *(*(v25 - 8) + 48);
  if (v49(v13, 1, v25) == 1)
  {
    sub_1000095E8(v13, &qword_10118D0F0);
    v26 = 1;
    v27 = v55;
  }

  else
  {
    v27 = v55;
    v55[2](v22, v13, v6);
    sub_1000095E8(v13, &unk_10118D100);
    v26 = 0;
  }

  (v27[7])(v22, v26, 1, v6);
  v55 = sub_100766D24();
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v29 = v22;
  if (v49(v10, 1, v25) == 1)
  {
    sub_1000095E8(v10, &qword_10118D0F0);
    v49 = 0;
  }

  else
  {
    v30 = v53;
    v27[2](v53, v10, v6);
    sub_1000095E8(v10, &unk_10118D100);
    v49 = MusicLibrarySectionedResponse.sections.getter();
    (v27[1])(v30, v6);
  }

  v31 = v54;
  sub_1000089F8(v22, v54, &qword_1011A1988);
  if ((v27[6])(v31, 1, v6) == 1)
  {
    sub_1000095E8(v31, &qword_1011A1988);
    v54 = 0;
  }

  else
  {
    v54 = MusicLibrarySectionedResponse.sections.getter();
    (v27[1])(v31, v6);
  }

  v32 = [*(sub_100767EE4() + 32) searchBar];
  LODWORD(v53) = [v32 isFirstResponder];

  v33 = v57;
  sub_1000089F8(v29, v57, &qword_1011A1988);
  v34 = *(v56 + 80);
  v35 = swift_allocObject();
  v36 = v51;
  v35[2] = v50;
  v35[3] = v36;
  v35[4] = v24;
  sub_10003D17C(v33, v35 + ((v34 + 40) & ~v34), &qword_1011A1988);
  v37 = v58;
  sub_1000089F8(v29, v58, &qword_1011A1988);
  v38 = swift_allocObject();
  *(v38 + 16) = v24;
  sub_10003D17C(v37, v38 + ((v34 + 24) & ~v34), &qword_1011A1988);
  v39 = swift_allocObject();
  v58 = v29;
  v40 = v39;
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  v42 = v52;
  *(v41 + 16) = v40;
  *(v41 + 24) = v42;
  v43 = v24;

  v44 = sub_10010FC20(&qword_1011A1980);
  v45 = sub_100770E64();
  v47 = v44;
  v46 = v55;
  UICollectionView.performSectionedAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:alongsideUpdates:completion:)(v49, v54, 0, 0, 1, v53 ^ 1, sub_100770D78, v35, sub_100768144, 0, sub_1007682DC, 0, sub_100770DEC, v38, sub_100770E5C, v41, v47, v45);

  sub_1000095E8(v58, &qword_1011A1988);
}

uint64_t sub_100767EE4()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___searchController];
  }

  else
  {
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v3 = v0;
    v2 = sub_10043F158(0, 0);

    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_100767F88(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10010FC20(&qword_1011A1988);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  a1(v8);
  v11 = *(a3 + OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_prefetchingController);
  sub_1000089F8(a4, v10, &qword_1011A1988);
  v12 = sub_10010FC20(&qword_10118D0F8);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_1000095E8(v10, &qword_1011A1988);
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    *(&v19 + 1) = v12;
    v14 = sub_10001C8B8(&v18);
    (*(v13 + 32))(v14, v10, v12);
  }

  v15 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
  swift_beginAccess();
  sub_10006B010(&v18, v11 + v15, &unk_101183F30);
  return swift_endAccess();
}

uint64_t sub_100768144()
{
  v0 = type metadata accessor for MusicFavoriteStatus();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  type metadata accessor for Artist();
  sub_100770F18(&qword_1011A1948, &type metadata accessor for Artist);
  if (static MusicItem<>.==~ infix(_:_:)())
  {
    Artist.favoriteStatus.getter();
    Artist.favoriteStatus.getter();
    v7 = static MusicFavoriteStatus.== infix(_:_:)();
    v8 = *(v1 + 8);
    v8(v3, v0);
    v8(v6, v0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1007682DC(uint64_t a1)
{
  v2 = type metadata accessor for MusicFavoriteStatus();
  v43 = *(v2 - 8);
  __chkstk_darwin(v2);
  v42 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v41 = &v39 - v5;
  v6 = type metadata accessor for Artwork();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10010FC20(&unk_101191420);
  __chkstk_darwin(v45);
  v10 = &v39 - v9;
  v11 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v11 - 8);
  v44 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  v46 = a1;
  v19 = Artist.name.getter();
  v21 = v20;
  if (v19 == Artist.name.getter() && v21 == v22)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v47 = v7;
  v39 = v2;
  sub_10010FC20(&unk_10118F200);
  swift_allocObject();
  MusicAttributeProperty.init(_:)();
  Artist.subscript.getter();

  swift_allocObject();
  MusicAttributeProperty.init(_:)();
  Artist.subscript.getter();

  v24 = v47;
  v25 = *(v45 + 48);
  sub_1000089F8(v18, v10, &unk_101188920);
  sub_1000089F8(v15, &v10[v25], &unk_101188920);
  v26 = *(v24 + 48);
  if (v26(v10, 1, v6) == 1)
  {
    sub_1000095E8(v15, &unk_101188920);
    sub_1000095E8(v18, &unk_101188920);
    if (v26(&v10[v25], 1, v6) == 1)
    {
      sub_1000095E8(v10, &unk_101188920);
LABEL_13:
      v33 = v41;
      Artist.favoriteStatus.getter();
      v34 = v42;
      Artist.favoriteStatus.getter();
      v28 = static MusicFavoriteStatus.== infix(_:_:)();
      v35 = *(v43 + 8);
      v36 = v34;
      v37 = v39;
      v35(v36, v39);
      v35(v33, v37);
      return v28 & 1;
    }

    goto LABEL_10;
  }

  v27 = v44;
  sub_1000089F8(v10, v44, &unk_101188920);
  if (v26(&v10[v25], 1, v6) == 1)
  {
    sub_1000095E8(v15, &unk_101188920);
    sub_1000095E8(v18, &unk_101188920);
    (*(v47 + 8))(v27, v6);
LABEL_10:
    sub_1000095E8(v10, &unk_101191420);
    goto LABEL_11;
  }

  v29 = v47;
  v30 = &v10[v25];
  v31 = v40;
  (*(v47 + 32))(v40, v30, v6);
  sub_100770F18(&unk_10118D3D0, &type metadata accessor for Artwork);
  LODWORD(v45) = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v29 + 8);
  v32(v31, v6);
  sub_1000095E8(v15, &unk_101188920);
  sub_1000095E8(v18, &unk_101188920);
  v32(v27, v6);
  sub_1000095E8(v10, &unk_101188920);
  if (v45)
  {
    goto LABEL_13;
  }

LABEL_11:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_100768984(char *a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A1988);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_10010FC20(&qword_10118D0F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_10010FC20(&qword_10118D0F8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v9);

  v14 = sub_10010FC20(&unk_10118D100);
  if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
  {
    sub_1000095E8(v9, &qword_10118D0F0);
    v15 = 1;
  }

  else
  {
    (*(v11 + 16))(v13, v9, v10);
    sub_1000095E8(v9, &unk_10118D100);
    v16 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v11 + 8))(v13, v10);
    v15 = !v16;
  }

  [a1 setNeedsUpdateContentUnavailableConfiguration];
  v17 = sub_100766D24();
  [v17 setBouncesVertically:v15 & 1];

  [*&a1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v15 & 1];
  v18 = sub_100767EE4();
  sub_1000089F8(a2, v6, &qword_1011A1988);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_1000095E8(v6, &qword_1011A1988);
  }

  else
  {
    v19 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v11 + 8))(v6, v10);
    if (!v19)
    {
      v28 = *(v18 + 64);
      *(v18 + 64) = 1;
      if (v28)
      {
      }

      goto LABEL_12;
    }
  }

  v20 = (*(*&a1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  v21 = v20[1];
  if (!v21)
  {
    v27 = *(v18 + 64);
    *(v18 + 64) = 0;
    if ((v27 & 1) == 0)
    {
    }

    goto LABEL_12;
  }

  v22 = *v20 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v23 = v22;
  }

  v24 = v23 != 0;
  v25 = *(v18 + 64);
  *(v18 + 64) = v24;
  if (v25 != v24)
  {
LABEL_12:
    sub_10043EAB8();
  }
}

void sub_100768D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&qword_10118B098);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_responseController;

    v11 = RequestResponse.Controller.revision.getter();

    v12 = *(v11 + *(*v11 + 112));

    if (v12 == *(a3 + *(*a3 + 112)))
    {
      v13 = [v9 navigationItem];
      v14 = sub_1003A67A4();
      [v13 setRightBarButtonItem:v14];

      v15 = *&v9[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController];
      if (v15)
      {
        v16 = *(*&v9[v10] + 48);
        swift_beginAccess();
        v17 = v16[3];
        v24 = v16[2];
        v25 = v17;
        v18 = v16[5];
        v26 = v16[4];
        v27 = v18;
        v23 = v16[1];
        v19 = v15;
        sub_10030DC78(&v23, v22);
        type metadata accessor for TitledSection();
        type metadata accessor for Artist();
        MusicLibrarySectionedRequest.init()();

        MusicLibrarySectionedRequest.library.setter();
        MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
        v20._countAndFlagsBits = *(&v24 + 1);
        v20._object = v25;
        MusicLibrarySectionedRequest.filterItems(text:)(v20);
        sub_10030CCE8(v7);
        sub_10030DCB0(&v23);
        v21 = MusicLibrarySectionedRequest.includeOnlyDownloadedContent.getter();
        (*(v5 + 8))(v7, v4);
        sub_1002081DC(v21 & 1);
      }

      sub_100768FF0();
    }
  }
}

void sub_100768FF0()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v2 - 8);
  v102 = &v93 - v3;
  v4 = type metadata accessor for IndexPath();
  v105 = *(v4 - 8);
  __chkstk_darwin(v4);
  v103 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v98 = &v93 - v7;
  v8 = sub_10010FC20(&qword_101193B90);
  v110 = *(v8 - 8);
  v111 = v8;
  __chkstk_darwin(v8);
  v109 = &v93 - v9;
  v10 = sub_10010FC20(&qword_1011A1980);
  v107 = *(v10 - 8);
  v108 = v10;
  __chkstk_darwin(v10);
  v106 = &v93 - v11;
  v12 = sub_10010FC20(&unk_101184930);
  __chkstk_darwin(v12 - 8);
  v116 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v117 = &v93 - v15;
  __chkstk_darwin(v16);
  v104 = &v93 - v17;
  __chkstk_darwin(v18);
  v113 = &v93 - v19;
  v20 = type metadata accessor for Artist();
  v21 = *(v20 - 8);
  v118 = v20;
  v119 = v21;
  __chkstk_darwin(v20);
  v101 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v112 = &v93 - v24;
  v25 = sub_10010FC20(&qword_10118D0F0);
  __chkstk_darwin(v25 - 8);
  v100 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v93 - v28;
  __chkstk_darwin(v30);
  v32 = &v93 - v31;
  v33 = sub_10010FC20(&qword_10118D0F8);
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v99 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v93 - v37;
  __chkstk_darwin(v39);
  v41 = &v93 - v40;
  v115 = *&v0[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_responseController];
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v32);

  v42 = sub_10010FC20(&unk_10118D100);
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  v114 = v43 + 48;
  if (v44(v32, 1, v42) == 1)
  {
    sub_1000095E8(v32, &qword_10118D0F0);
LABEL_4:
    v47 = v117;
    (*(v119 + 56))(v117, 1, 1, v118);
    v48 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_selectedArtist;
    swift_beginAccess();
    v49 = v116;
    sub_1000089F8(&v1[v48], v116, &unk_101184930);
    swift_beginAccess();
    sub_1002190E0(v47, &v1[v48], &unk_101184930);
    swift_endAccess();
    sub_10076C380(v49);
    sub_1000095E8(v49, &unk_101184930);
    v50 = v47;
LABEL_5:
    sub_1000095E8(v50, &unk_101184930);
    return;
  }

  v96 = v44;
  v97 = v4;
  v95 = *(v34 + 16);
  v95(v41, v32, v33);
  sub_1000095E8(v32, &unk_10118D100);
  v45 = MusicLibrarySectionedResponse.isEmpty.getter();
  v46 = *(v34 + 8);
  v46(v41, v33);
  if (v45)
  {
    goto LABEL_4;
  }

  v94 = v46;
  v51 = [v1 traitCollection];
  sub_10045B4D0();
  v52 = UITraitCollection.subscript.getter();

  if (v52)
  {
    v53 = sub_100766D24();
    v54 = [v53 indexPathsForSelectedItems];

    if (!v54 || (v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v54, v56 = *(v55 + 16), , !v56))
    {
      RequestResponse.Controller.revision.getter();
      RequestResponse.Revision.content.getter(v29);

      if (v96(v29, 1, v42) == 1)
      {
        sub_1000095E8(v29, &qword_10118D0F0);
      }

      else
      {
        v95(v38, v29, v33);
        sub_1000095E8(v29, &unk_10118D100);
        v57 = MusicLibrarySectionedResponse.sections.getter();
        v94(v38, v33);
        if (*(v57 + 16))
        {
          v59 = v106;
          v58 = v107;
          v60 = v108;
          (*(v107 + 16))(v106, v57 + ((*(v58 + 80) + 32) & ~*(v58 + 80)), v108);

          v61 = v109;
          MusicLibrarySection.items.getter();
          (*(v58 + 8))(v59, v60);
          v62 = v113;
          sub_10034DA48(v113);
          (*(v110 + 8))(v61, v111);
          v64 = v118;
          v63 = v119;
          v65 = *(v119 + 48);
          if (v65(v62, 1, v118) != 1)
          {
            v66 = v63;
            v67 = v64;
            v110 = *(v66 + 32);
            v111 = v66 + 32;
            (v110)(v112, v62, v64);
            v68 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_selectedArtist;
            swift_beginAccess();
            v113 = v68;
            v69 = &v1[v68];
            v70 = v104;
            sub_1000089F8(v69, v104, &unk_101184930);
            v71 = v67;
            if (v65(v70, 1, v67) == 1)
            {
              sub_1000095E8(v70, &unk_101184930);
              v72 = v119;
              v73 = v105;
            }

            else
            {
              v74 = v101;
              (v110)(v101, v70, v67);
              RequestResponse.Controller.revision.getter();
              v75 = v100;
              RequestResponse.Revision.content.getter(v100);

              if (v96(v75, 1, v42) == 1)
              {
                sub_1000095E8(v75, &qword_10118D0F0);
                v72 = v119;
                (*(v119 + 8))(v74, v71);
                v73 = v105;
                v76 = v102;
                (*(v105 + 56))(v102, 1, 1, v97);
              }

              else
              {
                v77 = v99;
                v95(v99, v75, v33);
                sub_1000095E8(v75, &unk_10118D100);
                v76 = v102;
                sub_10050663C(v74, v102);
                v94(v77, v33);
                v73 = v105;
                v78 = v74;
                v79 = v97;
                v80 = (*(v105 + 48))(v76, 1, v97);
                v72 = v119;
                if (v80 != 1)
                {
                  v88 = v98;
                  (*(v73 + 32))(v98, v76, v79);
                  v89 = *&v1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___collectionView];
                  isa = IndexPath._bridgeToObjectiveC()().super.isa;
                  [v89 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

                  (*(v73 + 8))(v88, v79);
                  v91 = *(v72 + 8);
                  v92 = v118;
                  v91(v78, v118);
                  v91(v112, v92);
                  return;
                }

                v71 = v118;
                (*(v119 + 8))(v78, v118);
              }

              sub_1000095E8(v76, &unk_10118BCE0);
            }

            v81 = *&v1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___collectionView];
            v82 = v103;
            IndexPath.init(item:section:)();
            v83 = IndexPath._bridgeToObjectiveC()().super.isa;
            (*(v73 + 8))(v82, v97);
            [v81 selectItemAtIndexPath:v83 animated:v1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_hasAppearedOnce] scrollPosition:0];

            v84 = v117;
            v85 = v112;
            (*(v72 + 16))(v117, v112, v71);
            (*(v72 + 56))(v84, 0, 1, v71);
            v86 = v113;
            v87 = v116;
            sub_1000089F8(&v1[v113], v116, &unk_101184930);
            swift_beginAccess();
            sub_1002190E0(v84, &v1[v86], &unk_101184930);
            swift_endAccess();
            sub_10076C380(v87);
            sub_1000095E8(v87, &unk_101184930);
            sub_1000095E8(v84, &unk_101184930);
            (*(v72 + 8))(v85, v71);
            return;
          }

          goto LABEL_18;
        }
      }

      v62 = v113;
      (*(v119 + 56))(v113, 1, 1, v118);
LABEL_18:
      v50 = v62;
      goto LABEL_5;
    }
  }
}

uint64_t sub_100769DF4(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_responseController);
    v6 = result;

    if (a2)
    {
      v7 = a1;
    }

    else
    {
      v7 = 0;
    }

    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 0xE000000000000000;
    }

    v9 = *(v5 + 48);
    swift_beginAccess();
    v10 = *(v9 + 48);
    v16[1] = *(v9 + 32);
    v11 = *(v9 + 80);
    v16[3] = *(v9 + 64);
    v16[4] = v11;
    v16[2] = v10;
    v16[0] = *(v9 + 16);
    v17 = *(v9 + 16);
    v12 = *(v9 + 56);
    v13 = *(v9 + 72);
    v14 = *(v9 + 88);
    v18 = *(v9 + 32);
    v23 = v14;
    v22 = v13;
    v21 = v12;

    sub_10030DC78(v16, v15);

    v19 = v7;
    v20 = v8;
    sub_100378C30(&v17);
  }

  return result;
}

uint64_t sub_100769F1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118C540);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10118C540);
  v10 = sub_10010FC20(&unk_10118A650);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10118C540);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_10118C540);
  return swift_endAccess();
}

uint64_t sub_10076A1A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_1011A1950);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___listCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_1011A1950);
  v10 = sub_10010FC20(&unk_1011A1918);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_1011A1950);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for Artist();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &qword_1011A1950);
  return swift_endAccess();
}

uint64_t sub_10076A464(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10010FC20(&unk_101184930);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v18[-v10];
  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewWillAppear:", a1 & 1, v9);
  v12 = [v2 traitCollection];
  sub_10045B4D0();
  v13 = UITraitCollection.subscript.getter();

  if ((v13 & 1) == 0)
  {
    v14 = sub_100766D24();
    UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1 & 1);

    swift_unknownObjectRelease();
    v15 = type metadata accessor for Artist();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_selectedArtist;
    swift_beginAccess();
    sub_1000089F8(v2 + v16, v7, &unk_101184930);
    swift_beginAccess();
    sub_1002190E0(v11, v2 + v16, &unk_101184930);
    swift_endAccess();
    sub_10076C380(v7);
    sub_1000095E8(v7, &unk_101184930);
    sub_1000095E8(v11, &unk_101184930);
  }

  return RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
}

uint64_t sub_10076A7B8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for MetricsEvent.Page(0);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "viewDidAppear:", a1 & 1, v6);
  sub_100768FF0();
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  *(v2 + OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_hasAppearedOnce) = 1;
  v9 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v10 = MetricsEvent.Page.libraryArtistsList.unsafeMutableAddressor();
  sub_100770C90(v10, v8, type metadata accessor for MetricsEvent.Page);
  v11 = sub_10053771C();
  v13 = v12;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v14 = qword_101218AD0;
  v15 = GroupActivitiesManager.hasJoined.getter();
  v16 = GroupActivitiesManager.participantsCount.getter();
  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v9) + 0xA0))(v8, v11, v13, v15 & 1, v16, *(v14 + v17));

  return sub_100770D00(v8, type metadata accessor for MetricsEvent.Page);
}

void sub_10076AA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[0] = a1;
  v23[1] = a4;
  v4 = sub_10010FC20(&qword_10118D0F0);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - v5;
  v7 = sub_10010FC20(&qword_10118D0F8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - v9;
  v11 = sub_10010FC20(&qword_1011A1980);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v23 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    v20 = sub_10010FC20(&unk_10118D100);
    if ((*(*(v20 - 8) + 48))(v6, 1, v20) == 1)
    {
      sub_1000095E8(v6, &qword_10118D0F0);

      return;
    }

    (*(v8 + 16))(v10, v6, v7);
    sub_1000095E8(v6, &unk_10118D100);
    v21 = MusicLibrarySectionedResponse.sections.getter();
    (*(v8 + 8))(v10, v7);
    v22 = IndexPath.section.getter();
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *(v21 + 16))
    {
      (*(v12 + 16))(v14, v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v11);

      (*(v12 + 32))(v17, v14, v11);
      swift_getKeyPath();
      MusicLibrarySection.subscript.getter();

      sub_1005FF7FC(v23[2], v23[3], v24);

      UICollectionViewCell.contentConfiguration.setter();

      (*(v12 + 8))(v17, v11);
      return;
    }

    __break(1u);
  }
}

uint64_t sub_10076AE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Artist();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  (*(v5 + 32))(v10 + v9, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  UICollectionViewCell.configurationUpdateHandler.setter();
}

uint64_t sub_10076AFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v5 = sub_10010FC20(&qword_1011888C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = type metadata accessor for UIBackgroundConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&qword_1011A1958);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v34 = v11;
    v35 = v9;
    v36 = v7;
    v37 = v8;

    v18 = v17;
    v19 = [v18 traitCollection];
    sub_10045B4D0();
    UITraitCollection.subscript.getter();

    v21 = __chkstk_darwin(v20).n128_u64[0];
    *(&v33 - 4) = v38;
    *(&v33 - 3) = v18;
    v38 = a2;
    *(&v33 - 2) = a2;
    *(&v33 - 1) = v21;
    sub_10010FC20(&qword_1011A1960);
    sub_100770BA4();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v39[3] = v12;
    v39[4] = sub_100020674(&qword_1011A1978, &qword_1011A1958);
    sub_10001C8B8(v39);
    UIHostingConfiguration.margins(_:_:)();
    (*(v13 + 8))(v15, v12);
    UICollectionViewCell.contentConfiguration.setter();
    v22 = [v18 traitCollection];
    if (UITraitCollection.subscript.getter())
    {
      v23 = v34;
      static UIBackgroundConfiguration.listAccompaniedSidebarCell()();
      UIBackgroundConfiguration.cornerRadius.setter();
    }

    else
    {
      v23 = v34;
      static UIBackgroundConfiguration.listCell()();
    }

    v24 = [v18 traitCollection];
    v25 = UITraitCollection.subscript.getter();

    v26 = v37;
    if (v25)
    {
      UICellConfigurationState.isSelected.getter();
      UIBackgroundConfiguration.backgroundInsets.setter();
      v27 = UICellConfigurationState.isSelected.getter();
      v28 = v35;
      if (v27)
      {
        v29 = [v18 traitCollection];

        v30 = [v29 userInterfaceIdiom];
        if (v30 != 6)
        {
          UIBackgroundConfiguration.edgesAddingLayoutMarginsToBackgroundInsets.setter();
          v31 = [objc_opt_self() tintColor];
          UIBackgroundConfiguration.backgroundColor.setter();
        }
      }

      else
      {
      }
    }

    else
    {

      v28 = v35;
    }

    v32 = v36;
    (*(v28 + 16))(v36, v23, v26);
    (*(v28 + 56))(v32, 0, 1, v26);
    UICollectionViewCell.backgroundConfiguration.setter();

    return (*(v28 + 8))(v23, v26);
  }

  return result;
}

uint64_t sub_10076B510@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v64[1] = a2;
  v3 = a1;
  v72 = a1;
  v76 = a3;
  v75 = sub_10010FC20(&unk_1011847A0);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = v64 - v4;
  v5 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v5 - 8);
  v77 = v64 - v6;
  v70 = type metadata accessor for MusicFavoriteStatus();
  v7 = *(v70 - 1);
  __chkstk_darwin(v70);
  v69 = (v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = v64 - v10;
  v12 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v12 - 8);
  v14 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v15 - 8);
  v17 = v64 - v16;
  v18 = type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin(v18 - 8);
  v20 = v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v20;
  v21 = _s8ListCellVMa(0);
  __chkstk_darwin(v21);
  v23 = v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Artist();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v24, &protocol witness table for Artist, v17);
  v25 = sub_10010FC20(&unk_101182950);
  (*(*(v25 - 8) + 56))(v14, 7, 11, v25);
  v26 = [v3 traitCollection];
  v71 = sub_10045B4D0();
  LOBYTE(v3) = UITraitCollection.subscript.getter();

  if (v3)
  {
    v27 = 0x4046000000000000;
  }

  else
  {
    v27 = 0x4048000000000000;
  }

  ArtworkImage.Size.init(cgSize:)(v27, v27, 0, v78);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v17, v14, 0, 1, v78, 0, 0, 2, v20);
  v67 = sub_10034E548();
  v66 = v28;
  Artist.favoriteStatus.getter();
  v29 = v69;
  v30 = v70;
  (*(v7 + 104))(v69, enum case for MusicFavoriteStatus.favorited(_:), v70);
  v65 = static MusicFavoriteStatus.== infix(_:_:)();
  v31 = *(v7 + 8);
  v31(v29, v30);
  v31(v11, v30);
  v32 = type metadata accessor for ContentRating();
  v33 = *(*(v32 - 8) + 56);
  v33(v77, 1, 1, v32);
  *&v81 = 0;
  v79 = 0u;
  v80 = 0u;
  sub_10010FC20(&unk_1011847C0);
  swift_allocObject();
  v69 = OptionalObservableObject.init(publisher:)(&v79);
  *&v81 = 0;
  v79 = 0u;
  v80 = 0u;
  sub_10010FC20(&unk_10118D300);
  swift_allocObject();
  v64[2] = OptionalObservableObject.init(publisher:)(&v79);
  v34 = static HierarchicalShapeStyle.primary.getter();
  *(v23 + 3) = &type metadata for HierarchicalShapeStyle;
  *(v23 + 4) = &protocol witness table for HierarchicalShapeStyle;
  *v23 = v34;
  v35 = &v23[v21[6]];
  v37 = v21[9];
  v36 = v21[10];
  v33(&v23[v36], 1, 1, v32);
  v70 = &v23[v21[11]];
  v38 = v21[14];
  *&v23[v38] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v39 = v68;
  sub_100770C90(v68, &v23[v21[5]], type metadata accessor for ArtworkImage.Info);
  *(v35 + 1) = 0;
  *(v35 + 2) = 0;
  *v35 = 0;
  v40 = &v23[v21[7]];
  v41 = v66;
  *v40 = v67;
  v40[1] = v41;
  v42 = &v23[v21[8]];
  LOBYTE(v41) = v65 & 1;
  *v42 = 0;
  *(v42 + 1) = 0;
  v23[v37] = v41;
  v43 = v77;
  sub_1002190E0(v77, &v23[v36], &unk_10118D2F0);
  v44 = &v23[v21[12]];
  sub_100020674(&unk_1011847D0, &unk_1011847C0);

  *v44 = ObservedObject.init(wrappedValue:)();
  v44[1] = v45;
  v46 = &v23[v21[13]];
  sub_100020674(&qword_10118D310, &unk_10118D300);
  v47 = ObservedObject.init(wrappedValue:)();
  v49 = v48;

  sub_1000095E8(v43, &unk_10118D2F0);
  sub_100770D00(v39, type metadata accessor for ArtworkImage.Info);
  *v46 = v47;
  v46[1] = v49;
  v50 = v72;
  v51 = v70;
  *v70 = 0;
  *(v51 + 1) = 0;
  v52 = [v50 traitCollection];
  LOBYTE(v47) = UITraitCollection.subscript.getter();

  if (v47 & 1) != 0 && (UICellConfigurationState.isSelected.getter())
  {
    v53 = static Color.white.getter();
    *(&v80 + 1) = &type metadata for Color;
    *&v81 = &protocol witness table for Color;
    *&v79 = v53;
  }

  else
  {
    v54 = static HierarchicalShapeStyle.primary.getter();
    *(&v80 + 1) = &type metadata for HierarchicalShapeStyle;
    *&v81 = &protocol witness table for HierarchicalShapeStyle;
    LODWORD(v79) = v54;
  }

  sub_10000959C(v23);
  sub_100059A8C(&v79, v23);
  v55 = [v50 traitCollection];
  v56 = UITraitCollection.subscript.getter();

  v23[40] = v56 & 1;
  sub_100770F18(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_100770F18(&qword_10118D2E0, _s8ListCellVMa);

  v57 = v73;
  View.artworkCaching(owner:)();

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v58 = v76;
  (*(v74 + 32))(v76, v57, v75);
  v59 = (v58 + *(sub_10010FC20(&qword_1011A1960) + 36));
  v60 = v84;
  v59[4] = v83;
  v59[5] = v60;
  v59[6] = v85;
  v61 = v80;
  *v59 = v79;
  v59[1] = v61;
  v62 = v82;
  v59[2] = v81;
  v59[3] = v62;
  return sub_100770D00(v23, _s8ListCellVMa);
}

uint64_t sub_10076BF70@<X0>(char *a1@<X8>)
{
  v3 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_10010FC20(&unk_1011838D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v15, v14, &unk_1011838D0);
  v16 = type metadata accessor for Actions.MetricsReportingContext();
  v17 = *(v16 - 1);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return sub_1006F45C8(v14, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  v41 = v1;
  sub_1000095E8(v14, &unk_1011838D0);
  v18 = MetricsEvent.Page.libraryArtistsList.unsafeMutableAddressor();
  sub_100770C90(v18, v8, type metadata accessor for MetricsEvent.Page);
  v19 = type metadata accessor for MetricsEvent.Page(0);
  v20 = v5;
  v21 = *(*(v19 - 8) + 56);
  v21(v8, 0, 1, v19);
  v40 = v20;
  sub_1000089F8(v8, v20, &unk_1011838F0);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v22 = sub_10053771C();
  v38 = v23;
  v39 = v22;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v24 = qword_101218AD0;
  v37 = GroupActivitiesManager.hasJoined.getter();
  v36 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v8, &unk_1011838F0);
  v25 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v26 = *(v24 + v25);
  v27 = v16[5];
  v21(&a1[v27], 1, 1, v19);
  v28 = v16[7];
  v29 = &a1[v16[6]];
  v30 = v16[8];
  *a1 = xmmword_100EBEF60;
  sub_10006B010(v40, &a1[v27], &unk_1011838F0);
  v31 = v38;
  *v29 = v39;
  v29[1] = v31;
  *&a1[v28] = 0;
  *&a1[v30] = 0;
  v32 = &a1[v16[9]];
  *v32 = v37 & 1;
  *(v32 + 1) = v36;
  *(v32 + 2) = v26;
  sub_100770C90(a1, v11, type metadata accessor for Actions.MetricsReportingContext);
  (*(v17 + 56))(v11, 0, 1, v16);
  v33 = v41;
  swift_beginAccess();
  sub_10006B010(v11, v33 + v15, &unk_1011838D0);
  return swift_endAccess();
}

void sub_10076C380(uint64_t a1)
{
  v55 = a1;
  v51 = sub_10010FC20(&qword_10118B098);
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v47[-v2];
  v3 = type metadata accessor for Artist();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v52 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v53 = &v47[-v7];
  v8 = sub_10010FC20(&unk_101184930);
  __chkstk_darwin(v8 - 8);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v47[-v12];
  v14 = sub_10010FC20(&qword_1011A1940);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v47[-v16];
  v18 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_selectedArtist;
  swift_beginAccess();
  v19 = *(v15 + 56);
  v54 = v1;
  sub_1000089F8(&v1[v18], v17, &unk_101184930);
  sub_1000089F8(v55, &v17[v19], &unk_101184930);
  v55 = v4;
  v20 = *(v4 + 48);
  if (v20(v17, 1, v3) == 1)
  {
    if (v20(&v17[v19], 1, v3) == 1)
    {
      sub_1000095E8(v17, &unk_101184930);
      return;
    }

    goto LABEL_6;
  }

  sub_1000089F8(v17, v13, &unk_101184930);
  if (v20(&v17[v19], 1, v3) == 1)
  {
    (*(v55 + 8))(v13, v3);
LABEL_6:
    sub_1000095E8(v17, &qword_1011A1940);
    v21 = v54;
    goto LABEL_7;
  }

  v41 = v53;
  (*(v55 + 32))(v53, &v17[v19], v3);
  sub_100770F18(&qword_1011A1948, &type metadata accessor for Artist);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v55 + 8);
  v42(v41, v3);
  v42(v13, v3);
  sub_1000095E8(v17, &unk_101184930);
  v21 = v54;
  if (v48)
  {
    return;
  }

LABEL_7:
  sub_1000089F8(&v21[v18], v10, &unk_101184930);
  if (v20(v10, 1, v3) != 1)
  {
    v25 = v55;
    v26 = v52;
    (*(v55 + 32))(v52, v10, v3);
    v27 = *(*&v21[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_responseController] + 48);
    swift_beginAccess();
    v28 = v27[3];
    v58 = v27[2];
    v59 = v28;
    v29 = v27[5];
    v60 = v27[4];
    v61 = v29;
    v57 = v27[1];
    sub_10030DC78(&v57, v56);
    type metadata accessor for TitledSection();
    v30 = v49;
    MusicLibrarySectionedRequest.init()();

    v31 = v51;
    MusicLibrarySectionedRequest.library.setter();
    MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
    v32._countAndFlagsBits = *(&v58 + 1);
    v32._object = v59;
    MusicLibrarySectionedRequest.filterItems(text:)(v32);
    sub_10030CCE8(v30);
    sub_10030DCB0(&v57);
    LOBYTE(v27) = MusicLibrarySectionedRequest.includeOnlyDownloadedContent.getter();
    (*(v50 + 8))(v30, v31);
    v33 = *(v25 + 16);
    v34 = v53;
    v33(v53, v26, v3);
    v35 = objc_allocWithZone(type metadata accessor for LibraryArtistDetailViewController(0));
    v36 = sub_1001FAE8C(v34, v27 & 1);
    if (sub_10016EEEC(v36, 0, 1, v21))
    {
      v37 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController;
      v38 = *&v21[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController];
      *&v21[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController] = v36;
      if (!v38)
      {
LABEL_20:
        (*(v55 + 8))(v26, v3);
        return;
      }

      v39 = v36;
      v36 = v38;
      v40 = static NSObject.== infix(_:_:)();

      if ((v40 & 1) != 0 || *&v21[v37])
      {
      }

      else
      {
        v46 = v36;
        v36 = sub_10016F044(v46, 1, v21);
      }
    }

    else
    {
      v43 = *&v21[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController];
      *&v21[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController] = 0;
      if (v43)
      {
        v44 = v43;
        v45 = sub_10016F044(v44, 1, v21);

        v36 = v45;
      }
    }

    goto LABEL_20;
  }

  sub_1000095E8(v10, &unk_101184930);
  v22 = *&v21[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController];
  *&v21[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController] = 0;
  if (v22)
  {
    v23 = v22;
    v24 = sub_10016F044(v23, 1, v21);
  }
}

uint64_t sub_10076CDD4(uint64_t a1, uint64_t a2, void *a3)
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

  sub_100769F1C(v8);
  sub_100009F78(0, &unk_101184750);
  v13 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_10076D0F8(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v4 = sub_10010FC20(&unk_10118ABC0);
  __chkstk_darwin(v4 - 8);
  v35 = &v33 - v5;
  v6 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICellAccessory.DisplayedState();
  v33 = *(v9 - 8);
  v34 = v9;
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_1011A1918);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  v16 = sub_10010FC20(&unk_101184930);
  __chkstk_darwin(v16 - 8);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v33 - v20;
  sub_10037CEC8(a2, &v33 - v20);
  sub_10076A1A4(v15);
  v38 = sub_1007FDC30(v15, a2, v21);
  (*(v13 + 8))(v15, v12);
  v22 = [v2 traitCollection];
  sub_10045B4D0();
  LOBYTE(a2) = UITraitCollection.subscript.getter();

  if ((a2 & 1) == 0)
  {
    sub_10010FC20(&unk_101184740);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_100EBC6B0;
    v23 = v33;
    v24 = v34;
    (*(v33 + 104))(v11, enum case for UICellAccessory.DisplayedState.always(_:), v34);
    v25 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    (*(v36 + 8))(v8, v37);
    (*(v23 + 8))(v11, v24);
    v26 = v38;
    UICollectionViewListCell.accessories.setter();
    v27 = v26;

    [v27 directionalLayoutMargins];
    [v27 setDirectionalLayoutMargins:?];
  }

  sub_1000089F8(v21, v18, &unk_101184930);
  v28 = type metadata accessor for Artist();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v18, 1, v28) == 1)
  {
    sub_1000095E8(v18, &unk_101184930);
    v39 = 0u;
    v40 = 0u;
    v41 = 0;
  }

  else
  {
    *(&v40 + 1) = v28;
    v41 = &protocol witness table for Artist;
    v30 = sub_10001C8B8(&v39);
    (*(v29 + 32))(v30, v18, v28);
  }

  v31 = v38;

  sub_1000095E8(v21, &unk_101184930);
  sub_1000095E8(&v39, &qword_1011A3DD0);
  return v31;
}

uint64_t sub_10076D8D4(uint64_t a1)
{
  v2 = type metadata accessor for Artist();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_100735278(v5, 1);
}

unint64_t sub_10076D994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = a4;
  v118 = a3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v8 - 8);
  v108 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v109 = &v95 - v11;
  v12 = sub_10010FC20(&unk_1011838D0);
  v113 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v114 = v13;
  v115 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v95 - v15;
  v17 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v17 - 8);
  v19 = &v95 - v18;
  v20 = sub_10010FC20(&unk_1011845D0);
  v110 = *(v20 - 8);
  __chkstk_darwin(v20 - 8);
  v111 = v21;
  v112 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v95 - v23;
  v25 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v25 - 8);
  v107 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v95 - v28;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v31 = Strong;
  v102 = v7;
  v103 = v5;
  v104 = v4;
  sub_10010FC20(&unk_101183900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  v33 = type metadata accessor for Artist();
  *(inited + 56) = v33;
  *(inited + 64) = &protocol witness table for Artist;
  v34 = sub_10001C8B8((inited + 32));
  (*(*(v33 - 8) + 16))(v34, v118, v33);
  v35 = [v31 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v101 = v131[0];
  v36 = type metadata accessor for Actions.PlaybackContext();
  v105 = *(v36 - 8);
  v37 = v105[7];
  v116 = v29;
  v37(v29, 1, 1, v36);
  v38 = type metadata accessor for PlaylistContext();
  v39 = *(*(v38 - 8) + 56);
  v117 = v24;
  v39(v24, 1, 1, v38);
  v40 = type metadata accessor for IndexPath();
  v41 = *(v40 - 8);
  (*(v41 + 16))(v19, v106, v40);
  (*(v41 + 56))(v19, 0, 1, v40);
  sub_100376F1C(v19, v131);
  sub_1000095E8(v19, &unk_10118BCE0);
  sub_10076BF70(v16);
  v42 = type metadata accessor for Actions.MetricsReportingContext();
  v43 = *(*(v42 - 8) + 56);
  v118 = v16;
  v43(v16, 0, 1, v42);
  sub_100008FE4(inited + 32, v130);

  sub_1000089F8(v131, &v125, &unk_1011845E0);
  v44 = v31;
  if (v128 == 1)
  {
    v136 = 0;
    memset(v135, 0, sizeof(v135));
    v137 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v31, v135, v129);
    v45 = v109;
    v46 = v107;
    if (v128 != 1)
    {
      sub_1000095E8(&v125, &unk_1011845E0);
    }
  }

  else
  {
    sub_10012B828(&v125, v129);
    v45 = v109;
    v46 = v107;
  }

  swift_getObjectType();
  v48 = swift_conformsToProtocol2();
  v49 = v116;
  v50 = v105;
  if (v48)
  {
    v106 = v48;
    v51 = v44;
    v107 = v44;
  }

  else
  {
    v106 = 0;
    v107 = 0;
  }

  v109 = swift_allocBox();
  v53 = v52;
  sub_1000089F8(v49, v46, &unk_10118AB20);
  v56 = v50[6];
  v54 = v50 + 6;
  v55 = v56;
  if (v56(v46, 1, v36) == 1)
  {
    v57 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    (*(*(v57 - 8) + 56))(v45, 1, 1, v57);
    v127 = 0;
    v125 = 0u;
    v126 = 0u;
    if (qword_10117F608 != -1)
    {
      swift_once();
    }

    v58 = qword_101218AD8;
    sub_1000089F8(v45, v108, &unk_1011838E0);
    v99 = v58;
    v59 = UIViewController.playActivityInformation.getter();
    v97 = v61;
    v98 = v60;
    v63 = v62;
    sub_1000089F8(&v125, &v123, &unk_101183910);
    if (v124)
    {
      sub_100059A8C(&v123, &v132);
    }

    else
    {
      v96 = v59;
      v105 = v54;
      v122 = v44;
      sub_100009F78(0, &qword_101183D40);
      v64 = v44;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v119, &v132);
      }

      else
      {
        v121 = 0;
        v119 = 0u;
        v120 = 0u;
        *&v132 = v64;
        v65 = v64;
        v66 = String.init<A>(reflecting:)();
        *(&v133 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v134 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v132 = v66;
        *(&v132 + 1) = v67;
        if (*(&v120 + 1))
        {
          sub_1000095E8(&v119, &unk_101183910);
        }
      }

      v59 = v96;
      if (v124)
      {
        sub_1000095E8(&v123, &unk_101183910);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v99, v108, v59, v98, v97, v63, &v132, v53);
    sub_1000095E8(&v125, &unk_101183910);
    sub_1000095E8(v45, &unk_1011838E0);
    if (v55(v46, 1, v36) != 1)
    {
      sub_1000095E8(v46, &unk_10118AB20);
    }
  }

  else
  {
    sub_1006F45C8(v46, v53, type metadata accessor for Actions.PlaybackContext);
  }

  v68 = *(v36 + 28);
  sub_1000089F8(&v53[v68], &v132, &unk_101183910);
  if (*(&v133 + 1))
  {
    v69 = v44;
    sub_100059A8C(&v132, &v125);
    v70 = v117;
  }

  else
  {
    *&v125 = v44;
    v69 = v44;
    v71 = v44;
    v72 = String.init<A>(reflecting:)();
    *(&v126 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v127 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v125 = v72;
    *(&v125 + 1) = v73;
    v70 = v117;
    if (*(&v133 + 1))
    {
      sub_1000095E8(&v132, &unk_101183910);
    }
  }

  sub_10010FC20(&unk_101183930);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_100EBDC20;
  *(v74 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v74 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v74 + 32) = 0x4D747865746E6F43;
  *(v74 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v125, v74 + 72);
  v75 = static Player.CommandIssuer<>.combining(_:)();
  v77 = v76;

  sub_10000959C(&v125);
  *(&v126 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v127 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v125 = v75;
  *(&v125 + 1) = v77;
  sub_10006B010(&v125, &v53[v68], &unk_101183910);
  sub_100008FE4(v130, &v125);
  sub_10010FC20(&unk_10118AB50);
  v108 = String.init<A>(describing:)();
  v105 = v78;
  v99 = swift_allocObject();
  v100 = v69;
  swift_unknownObjectWeakInit();
  sub_100008FE4(v130, &v123);
  sub_10012B7A8(v129, &v125);
  v79 = v115;
  sub_1000089F8(v118, v115, &unk_1011838D0);
  v80 = v112;
  sub_1000089F8(v70, v112, &unk_1011845D0);
  v81 = (*(v113 + 80) + 160) & ~*(v113 + 80);
  v82 = (v114 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
  v84 = (*(v110 + 80) + v83 + 8) & ~*(v110 + 80);
  v114 = (v84 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v84 + v111 + 31) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  sub_100059A8C(&v123, v86 + 16);
  *(v86 + 56) = v101;
  sub_10012B828(&v125, v86 + 64);
  sub_10003D17C(v79, v86 + v81, &unk_1011838D0);
  *(v86 + v82) = v99;
  *(v86 + v83) = v109;
  sub_10003D17C(v80, v86 + v84, &unk_1011845D0);
  v87 = v86 + v114;
  v88 = v106;
  *v87 = v107;
  *(v87 + 8) = v88;
  *(v87 + 16) = 2;
  v89 = (v86 + v85);
  *v89 = variable initialization expression of Library.Context.playlistVariants;
  v89[1] = 0;
  swift_unknownObjectRetain();

  v90 = v102;
  UUID.init()();
  v91 = UUID.uuidString.getter();
  v93 = v92;
  (*(v103 + 8))(v90, v104);
  v138._countAndFlagsBits = v108;
  v138._object = v105;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v138, v91, v93, sub_1001CFB84, v86, &v132);
  swift_unknownObjectRelease();
  sub_10012BA6C(v129);
  sub_10000959C(v130);

  v47 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v129[0] = v132;
  sub_100015BB0(v129);
  v125 = v133;
  sub_100015BB0(&v125);

  sub_1000095E8(v118, &unk_1011838D0);
  sub_1000095E8(v131, &unk_1011845E0);
  sub_1000095E8(v117, &unk_1011845D0);
  sub_1000095E8(v116, &unk_10118AB20);
  return v47;
}

id sub_10076E964(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = sub_10023D4E4(v7, 0, 1);

  (*(v5 + 8))(v7, v4);

  return v9;
}

uint64_t sub_10076EAC4()
{
  v0 = sub_10010FC20(&qword_10118D0F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_10010FC20(&qword_10118D0F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v10 = sub_10010FC20(&unk_10118D100);
  if ((*(*(v10 - 8) + 48))(v2, 1, v10) == 1)
  {
    sub_1000095E8(v2, &qword_10118D0F0);
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_10118D100);
    (*(v4 + 32))(v9, v6, v3);
    if (MusicLibrarySectionedResponse.isEmpty.getter())
    {
      *(&v14 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
      v15 = &protocol witness table for UIContentUnavailableConfiguration;
      v11 = sub_10001C8B8(&v13);
      sub_1007DD678(v11);
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

uint64_t type metadata accessor for LibraryArtistsListViewController()
{
  result = qword_1011A1900;
  if (!qword_1011A1900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10076EFF0()
{
  sub_10003920C(319, &unk_101184560, &unk_10118A650);
  if (v0 <= 0x3F)
  {
    sub_10003920C(319, &qword_1011A1910, &unk_1011A1918);
    if (v1 <= 0x3F)
    {
      sub_1000397C8(319, &qword_1011845B0, type metadata accessor for Actions.MetricsReportingContext);
      if (v2 <= 0x3F)
      {
        sub_1000397C8(319, &qword_1011A1928, &type metadata accessor for Artist);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_10076F1E0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_responseController];
  v2 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v3 = sub_10049CB78();

  v4 = *(v1 + 48);
  swift_beginAccess();
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[5];
  v18[3] = v4[4];
  v18[4] = v7;
  v18[1] = v5;
  v18[2] = v6;
  v13 = v4[1];
  v14 = v3 & 1;
  v8 = *(v4 + 33);
  v9 = *(v4 + 49);
  v10 = *(v4 + 65);
  *&v17[15] = v7;
  v18[0] = v13;
  *v17 = v10;
  v16 = v9;
  v15 = v8;
  sub_10030DC78(v18, v12);
  return sub_100378C30(&v13);
}

uint64_t sub_10076F2E4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_responseController];
  v2 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v3 = *&v15[0];
  v4 = *(v1 + 48);
  swift_beginAccess();
  v5 = v4[2];
  v7 = v4[4];
  v6 = v4[5];
  v15[0] = v4[1];
  v15[1] = v5;
  v8 = v4[3];
  v15[3] = v7;
  v15[4] = v6;
  v15[2] = v8;
  v9 = *&v15[0];
  v10 = v4[2];
  v11 = v4[3];
  v14[3] = v4[4];
  v14[4] = v6;
  v14[2] = v11;
  v14[1] = v10;
  sub_10030DC78(v15, v13);

  *&v14[0] = v9;
  *(&v14[0] + 1) = v3;
  return sub_100378C30(v14);
}

uint64_t sub_10076F3D8()
{
  v0 = sub_10010FC20(&qword_10118D0F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_10010FC20(&qword_10118D0F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v7 = sub_10010FC20(&unk_10118D100);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &qword_10118D0F0);
    return 0;
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_10118D100);
    v9 = MusicLibrarySectionedResponse.sections.getter();
    (*(v4 + 8))(v6, v3);
    v8 = *(v9 + 16);
  }

  return v8;
}

uint64_t sub_10076F5DC(unint64_t a1)
{
  v20 = a1;
  v1 = sub_10010FC20(&qword_101193B90);
  v19 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v19 - v2;
  v4 = sub_10010FC20(&qword_1011A1980);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = sub_10010FC20(&qword_10118D0F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_10010FC20(&qword_10118D0F8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v15 = sub_10010FC20(&unk_10118D100);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    sub_1000095E8(v10, &qword_10118D0F0);
    return 0;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &unk_10118D100);
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
  sub_100020674(&qword_10118C150, &qword_101193B90);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v18 = dispatch thunk of Collection.distance(from:to:)();
  (*(v19 + 8))(v3, v1);
  return v18;
}

uint64_t sub_10076F9F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_101184930);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v19[-v8];
  __chkstk_darwin(v10);
  v12 = &v19[-v11];
  v13 = type metadata accessor for Artist();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10037CEC8(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1000095E8(v12, &unk_101184930);
  }

  (*(v14 + 32))(v16, v12, v13);
  (*(v14 + 16))(v9, v16, v13);
  (*(v14 + 56))(v9, 0, 1, v13);
  v18 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_selectedArtist;
  swift_beginAccess();
  sub_1000089F8(v2 + v18, v6, &unk_101184930);
  swift_beginAccess();
  sub_1002190E0(v9, v2 + v18, &unk_101184930);
  swift_endAccess();
  sub_10076C380(v6);
  sub_1000095E8(v6, &unk_101184930);
  sub_1000095E8(v9, &unk_101184930);
  return (*(v14 + 8))(v16, v13);
}

id sub_10076FCC0(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101184930);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v5 = type metadata accessor for Artist();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v60 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v20 = __chkstk_darwin(v16);
  v21 = &v44 - v17;
  if (!*(a1 + 16))
  {
    return 0;
  }

  v58 = v13;
  v59 = v15;
  v22 = *(v15 + 16);
  v23 = *(v15 + 80);
  v61 = v18;
  v55 = v22;
  v56 = v19;
  (v22)(&v44 - v17, a1 + ((v23 + 32) & ~v23), v18, v20);
  sub_10037CEC8(v21, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v59 + 8))(v21, v61);
    sub_1000095E8(v4, &unk_101184930);
    return 0;
  }

  v50 = ~v23;
  v57 = v21;
  v25 = v6;
  v54 = *(v6 + 32);
  v45 = v23;
  v26 = v10;
  v27 = v6 + 32;
  v28 = v58;
  v54(v58, v4, v5);
  v48 = v27;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v53 = v25;
  v46 = *(v25 + 16);
  v46(v26, v28, v5);
  v29 = *(v25 + 80);
  v30 = v5;
  v47 = v29 | 7;
  v49 = swift_allocObject();
  v54((v49 + ((v29 + 16) & ~v29)), v26, v5);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v60;
  v32 = v30;
  v51 = v30;
  v46(v60, v28, v30);
  v33 = v56;
  v34 = v61;
  v55(v56, v57, v61);
  v35 = (v29 + 24) & ~v29;
  v36 = (v7 + v45 + v35) & v50;
  v37 = swift_allocObject();
  *(v37 + 16) = v44;
  v54((v37 + v35), v31, v32);
  v38 = v59;
  (*(v59 + 32))(v37 + v36, v33, v34);
  v39 = objc_opt_self();
  v66 = sub_1007709D0;
  v67 = v49;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_100747E6C;
  v65 = &unk_1010BE160;
  v40 = _Block_copy(&aBlock);

  v66 = sub_100770A30;
  v67 = v37;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_100747EBC;
  v65 = &unk_1010BE188;
  v41 = _Block_copy(&aBlock);

  v42 = isa;
  v43 = [v39 configurationWithIdentifier:isa previewProvider:v40 actionProvider:v41];

  _Block_release(v41);
  _Block_release(v40);
  (*(v53 + 8))(v58, v51);
  (*(v38 + 8))(v57, v61);

  return v43;
}

id sub_1007702DC(void *a1, void *a2)
{
  v35 = a2;
  v3 = sub_10010FC20(&unk_101184930);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for Artist();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v15 - 8);
  v17 = &v33 - v16;
  v18 = type metadata accessor for IndexPath();
  v19 = *(v18 - 8);
  *&v20 = __chkstk_darwin(v18).n128_u64[0];
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = [a1 identifier];
  sub_10010FC20(&unk_1011846A0);
  v23 = swift_dynamicCast();
  v24 = *(v19 + 56);
  if ((v23 & 1) == 0)
  {
    v24(v17, 1, 1, v18);
    v25 = &unk_10118BCE0;
    v26 = v17;
    goto LABEL_5;
  }

  v24(v17, 0, 1, v18);
  (*(v19 + 32))(v22, v17, v18);
  sub_10037CEC8(v22, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    (*(v19 + 8))(v22, v18);
    v25 = &unk_101184930;
    v26 = v11;
LABEL_5:
    sub_1000095E8(v26, v25);
    return [v35 setPreferredCommitStyle:0];
  }

  v28 = v34;
  (*(v13 + 32))(v34, v11, v12);
  (*(v13 + 16))(v8, v28, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  v29 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_selectedArtist;
  v30 = v36;
  swift_beginAccess();
  sub_1000089F8(v30 + v29, v5, &unk_101184930);
  swift_beginAccess();
  sub_1002190E0(v8, v30 + v29, &unk_101184930);
  swift_endAccess();
  sub_10076C380(v5);
  sub_1000095E8(v5, &unk_101184930);
  sub_1000095E8(v8, &unk_101184930);
  v31 = sub_100766D24();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v31 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

  (*(v13 + 8))(v34, v12);
  return (*(v19 + 8))(v22, v18);
}

void sub_1007707C0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_hasAppearedOnce) = 0;
  v2 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___headerRegistration;
  v3 = sub_10010FC20(&unk_10118A650);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___listCellRegistration;
  v5 = sub_10010FC20(&unk_1011A1918);
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___collectionView) = 0;
  v6 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_prefetchingController;
  v7 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v6) = sub_10003AAD8(0xD000000000000021, 0x8000000100E56E80);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___searchController) = 0;
  v8 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___actionMetricsReportingContext;
  v9 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController) = 0;
  v10 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_selectedArtist;
  v11 = type metadata accessor for Artist();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1007709D0()
{
  v1 = *(type metadata accessor for Artist() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10076D8D4(v2);
}

unint64_t sub_100770A30(uint64_t a1)
{
  v3 = *(type metadata accessor for Artist() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10076D994(a1, v7, v1 + v4, v8);
}

uint64_t sub_100770B10(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Artist() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_10076AFD0(a1, a2, v6, v7);
}

unint64_t sub_100770BA4()
{
  result = qword_1011A1968;
  if (!qword_1011A1968)
  {
    sub_1001109D0(&qword_1011A1960);
    _s8ListCellVMa(255);
    sub_100770F18(&qword_10118D2E0, _s8ListCellVMa);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1968);
  }

  return result;
}

uint64_t sub_100770C90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100770D00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100770D78()
{
  v1 = *(sub_10010FC20(&qword_1011A1988) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_100767F88(v2, v3, v4, v5);
}

uint64_t sub_100770DEC()
{
  v1 = *(sub_10010FC20(&qword_1011A1988) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100768984(v2, v3);
}

unint64_t sub_100770E64()
{
  result = qword_1011A1990;
  if (!qword_1011A1990)
  {
    sub_1001109D0(&qword_1011A1980);
    sub_100770F18(&qword_101188E70, &type metadata accessor for Artist);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1990);
  }

  return result;
}

uint64_t sub_100770F18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100771190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a1;
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v69 = &v57 - v7;
  v8 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v8 - 8);
  v67 = &v57 - v9;
  v10 = type metadata accessor for Lyrics.TextLine(0);
  __chkstk_darwin(v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_socialNetwork;
  v65 = v3[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_socialNetwork];
  v16 = *&v3[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_title + 8];
  v64 = *&v3[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_title];
  v17 = *&v3[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_subtitle + 8];
  v62 = *&v3[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_subtitle];
  v18 = *&v3[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_contentIdentifier + 8];
  v61 = *&v3[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_contentIdentifier];
  v68 = v3;
  v19 = *&v3[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_lines];
  v20 = *(v19 + 16);
  v70 = a2;
  v71 = a3;
  v63 = v16;
  if (v20)
  {
    v60 = OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_socialNetwork;
    v21 = &v14[*(v11 + 64)];
    v22 = v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v23 = *(v12 + 72);

    v59 = v17;

    v58 = v18;

    v57 = v19;

    v24 = 0;
    v25 = 0xE000000000000000;
    do
    {
      v26 = sub_1001EBDD4(v22, v14);
      v27 = (*v21)(v26);
      v29 = v28;
      v72 = v24;
      v73 = v25;

      v30._countAndFlagsBits = v27;
      v30._object = v29;
      String.append(_:)(v30);

      v31._countAndFlagsBits = 10;
      v31._object = 0xE100000000000000;
      String.append(_:)(v31);

      v24 = v72;
      v25 = v73;
      sub_1003407A4(v14);
      v22 += v23;
      --v20;
    }

    while (v20);

    v15 = v60;
    v17 = v59;
    v32 = v58;
  }

  else
  {

    v32 = v18;
  }

  v33 = String.trim()();

  v34 = v68;
  v35 = *&v68[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_language];
  v36 = *&v68[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_language + 8];
  type metadata accessor for ShareLyricsStoryRenderer();
  v37 = swift_allocObject();
  *(v37 + 16) = v65;
  v38 = v63;
  *(v37 + 24) = v64;
  *(v37 + 32) = v38;
  *(v37 + 40) = v62;
  *(v37 + 48) = v17;
  *(v37 + 56) = v61;
  *(v37 + 64) = v32;
  *(v37 + 72) = v33;
  *(v37 + 88) = v35;
  *(v37 + 96) = v36;
  v39 = v34[v15];
  v40 = v67;
  sub_100646F40(&v34[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_artwork], v67);
  sub_10012B7A8(&v34[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_presentationSource], &v72);
  v41 = swift_allocObject();
  *(v41 + 16) = v66;
  type metadata accessor for StorySharingController(0);
  v42 = swift_allocObject();
  v43 = (v42 + OBJC_IVAR____TtC5Music22StorySharingController_openURL);
  v44 = objc_opt_self();

  v45 = [v44 sharedApplication];
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *v43 = sub_1005535F0;
  v43[1] = v46;
  *(v42 + 16) = v39;
  sub_1005535F8(v40, v42 + OBJC_IVAR____TtC5Music22StorySharingController_artwork);
  sub_10012B828(&v72, v42 + OBJC_IVAR____TtC5Music22StorySharingController_presentationSource);
  v47 = (v42 + OBJC_IVAR____TtC5Music22StorySharingController_renderer);
  *v47 = v37;
  v47[1] = &off_1010B8C20;
  *(v42 + OBJC_IVAR____TtC5Music22StorySharingController_artworkSize) = vdupq_n_s64(0x404A000000000000uLL);
  v48 = (v42 + OBJC_IVAR____TtC5Music22StorySharingController_shareDataBuilder);
  *v48 = sub_1007722B0;
  v48[1] = v41;
  v49 = type metadata accessor for TaskPriority();
  v50 = v69;
  (*(*(v49 - 8) + 56))(v69, 1, 1, v49);
  type metadata accessor for MainActor();

  v51 = v34;
  v53 = v70;
  v52 = v71;
  sub_100030444(v70);
  v54 = static MainActor.shared.getter();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = &protocol witness table for MainActor;
  v55[4] = v42;
  v55[5] = v51;
  v55[6] = v53;
  v55[7] = v52;
  sub_1001F4CB8(0, 0, v50, &unk_100EE1358, v55);
}

void sub_10077175C(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v5 = sub_10010FC20(&qword_101194C20);
  __chkstk_darwin(v5 - 8);
  v7 = &v20[-v6];
  v8 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v8 - 8);
  v10 = &v20[-v9];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    if (*(a3 + 16))
    {
      sub_10000DD18(a3 + 32, v20);
      v16 = swift_dynamicCast();
      v17 = *(v12 + 56);
      v17(v10, v16 ^ 1u, 1, v11);
      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {
        (*(v12 + 32))(v15, v10, v11);
        (*(v12 + 16))(v7, v15, v11);
        v18 = type metadata accessor for StorySharingController.ShareData(0);
        v17(&v7[*(v18 + 20)], 1, 1, v11);
        (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
        a1(v7);
        sub_1000095E8(v7, &qword_101194C20);
        (*(v12 + 8))(v15, v11);
        return;
      }
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11, v13);
    }

    sub_1000095E8(v10, &qword_101183A20);
    v19 = type metadata accessor for StorySharingController.ShareData(0);
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    a1(v7);
    sub_1000095E8(v7, &qword_101194C20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100771AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v7[6] = type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v7[8] = v8;
  *v8 = v7;
  v8[1] = sub_100771B78;

  return sub_10072E678();
}

uint64_t sub_100771B78()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100771D50;
  }

  else
  {
    v4 = sub_100771CD4;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100771CD4()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v1();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100771D50()
{
  v13 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v0[2] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000105AC(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to share lyrics story: %s", v4, 0xCu);
    sub_10000959C(v5);
  }

  else
  {
  }

  v10 = v0[4];
  if (v10)
  {
    v10(v9);

    v11 = v0[1];

    v11();
  }

  else
  {
    __break(1u);
  }
}

id sub_10077201C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShareLyricsStoryActivity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ShareLyricsStoryActivity()
{
  result = qword_1011A1A10;
  if (!qword_1011A1A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007721A4()
{
  type metadata accessor for Logger();
  if (v0 <= 0x3F)
  {
    sub_10053DD40();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1007722B8(uint64_t a1)
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
  v10[1] = sub_10002F3F4;

  return sub_100771AC4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10077238C()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedApplication];
  v7 = OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_socialNetwork;
  sub_10044B664(*(v1 + OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_socialNetwork), v5);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  LODWORD(v5) = [v6 canOpenURL:v10];

  if (v5)
  {
    v11 = sub_10044BC7C(*(v1 + v7));
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1007724D0@<X0>(uint64_t *a1@<X8>)
{
  result = TitledSection.title.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1007724FC(uint64_t a1, uint64_t a2)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = _s18ResponseControllerC7RequestVMa();
  return *(a1 + *(v4 + 36)) == *(a2 + *(v4 + 36));
}

uint64_t sub_10077256C()
{
  _StringGuts.grow(_:)(18);

  v0._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 62;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0x527972617262694CLL;
}

uint64_t sub_100772608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for MusicLibrarySectionedResponse();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  MusicLibrarySectionedResponse.sections.getter();
  type metadata accessor for MusicLibrarySection();
  type metadata accessor for TitledSection();
  type metadata accessor for MusicLibrarySection();
  v6 = _arrayConditionalCast<A, B>(_:)();

  if (v6)
  {
    __chkstk_darwin(v7);
    type metadata accessor for Array();
    swift_getWitnessTable();
    v8 = Sequence.compactMap<A>(_:)();
    (*(v5 + 8))(a1, v4);
  }

  else
  {
    (*(v5 + 8))(a1, v4);
    v8 = _swiftEmptyArrayStorage;
  }

  result = _s18ResponseControllerC7RequestV13ResultContentVMa();
  *(a2 + *(result + 36)) = v8;
  return result;
}

uint64_t sub_1007728BC@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  v5 = type metadata accessor for TitledSection();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MusicLibrarySection();
  MusicLibrarySection.subscript.getter();

  v3 = HIBYTE(AssociatedTypeWitness) & 0xF;
  if ((AssociatedTypeWitness & 0x2000000000000000) == 0)
  {
    v3 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    swift_getKeyPath();
    MusicLibrarySection.subscript.getter();

    v3 = v5;
    v4 = AssociatedTypeWitness;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_100772A04@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t, void *, uint64_t)@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v125 = a2;
  v126 = a3;
  v124 = a1;
  v127 = a5;
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v133 = &v104 - v7;
  v129 = a4;
  v9 = *(a4 + 2);
  v8 = *(a4 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v139 = AssociatedTypeWitness;
  v140 = v11;
  v141 = AssociatedConformanceWitness;
  v142 = v13;
  v137 = type metadata accessor for MusicLibrarySectionedRequest();
  v120 = *(v137 - 8);
  __chkstk_darwin(v137);
  v131 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v14;
  __chkstk_darwin(v15);
  v132 = &v104 - v16;
  v136 = v8;
  _s18ResponseControllerC7RequestV13ResultContentVMa();
  sub_1001109D0(&qword_1011824A0);
  v110 = type metadata accessor for Result();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v104 - v17;
  v139 = AssociatedTypeWitness;
  v140 = v11;
  v141 = AssociatedConformanceWitness;
  v142 = v13;
  v18 = type metadata accessor for MusicLibrarySectionedResponse();
  v106 = type metadata accessor for Optional();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v111 = &v104 - v19;
  v113 = v18;
  v112 = *(v18 - 8);
  __chkstk_darwin(v20);
  v104 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v107 = &v104 - v23;
  v24 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v115 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v27 = &v104 - v26;
  v121 = v24;
  v130 = *(v24 - 8);
  __chkstk_darwin(v28);
  v114 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v104 - v31;
  __chkstk_darwin(v33);
  v35 = &v104 - v34;
  v36 = *(v9 - 8);
  __chkstk_darwin(v37);
  v135 = &v104 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v38;
  v40 = __chkstk_darwin(v39);
  v42 = &v104 - v41;
  v43 = *(v36 + 16);
  v44 = v138;
  v43(&v104 - v41, v138, v9, v40);
  v128 = *(v44 + *(v129 + 9));
  v134 = v42;
  v45 = v42;
  v46 = v36 + 16;
  (v43)(v35, v45, v9);
  v138 = v36;
  v47 = *(v36 + 56);
  v48 = 1;
  v129 = v35;
  v47(v35, 0, 1, v9);
  v122 = v43;
  v123 = v46;
  if (v124)
  {
    (v43)(v32, v124 + *(*v124 + 96), v9);
    v48 = 0;
  }

  v47(v32, v48, 1, v9);
  v116 = TupleTypeMetadata2;
  v49 = *(TupleTypeMetadata2 + 48);
  v51 = v129;
  v50 = v130;
  v52 = *(v130 + 16);
  v53 = v121;
  v52(v27, v129, v121);
  v124 = v49;
  v52(&v27[v49], v32, v53);
  v54 = *(v138 + 48);
  if (v54(v27, 1, v9) != 1)
  {
    v59 = v114;
    v52(v114, v27, v53);
    v60 = v124;
    v61 = v53;
    if (v54(&v27[v124], 1, v9) != 1)
    {
      v63 = v138;
      v64 = v135;
      (*(v138 + 32))(v135, &v27[v60], v9);
      v65 = dispatch thunk of static Equatable.== infix(_:_:)();
      v66 = *(v63 + 8);
      v66(v64, v9);
      v67 = *(v130 + 8);
      v67(v32, v61);
      v67(v129, v61);
      v66(v59, v9);
      v57 = v136;
      v67(v27, v61);
      v58 = v122;
      if ((v65 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v62 = *(v130 + 8);
    v62(v32, v61);
    v62(v129, v61);
    (*(v138 + 8))(v59, v9);
    v57 = v136;
LABEL_8:
    (*(v115 + 8))(v27, v116);
    v58 = v122;
    goto LABEL_12;
  }

  v55 = *(v50 + 8);
  v55(v32, v53);
  v55(v51, v53);
  v56 = v54(&v27[v124], 1, v9);
  v57 = v136;
  if (v56 != 1)
  {
    goto LABEL_8;
  }

  v55(v27, v53);
  v58 = v122;
LABEL_10:
  v68 = v111;
  dispatch thunk of MusicAutoupdatingResponse.response.getter();
  v69 = v112;
  v70 = v113;
  if ((*(v112 + 48))(v68, 1, v113) != 1)
  {
    v96 = v107;
    (*(v69 + 32))(v107, v68, v70);
    v97 = v104;
    (*(v69 + 16))(v104, v96, v70);
    v98 = v108;
    sub_100772608(v97, v108);
    v99 = v110;
    swift_storeEnumTagMultiPayload();
    _s18ResponseControllerC7RequestV11InvalidatorCMa();
    swift_allocObject();

    v101 = sub_100774080(v100);
    WitnessTable = swift_getWitnessTable();
    v125(v98, v101, WitnessTable);

    (*(v109 + 8))(v98, v99);
    (*(v69 + 8))(v96, v70);
    (*(v138 + 8))(v134, v9);
    v103 = v127;
    *(v127 + 32) = 0;
    result = 0.0;
    *v103 = 0u;
    v103[1] = 0u;
    return result;
  }

  (*(v105 + 8))(v68, v106);
LABEL_12:
  v71 = v132;
  v72 = v134;
  (*(v57 + 48))(v9, v57);
  v73 = v133;
  static TaskPriority.userInitiated.getter();
  v74 = type metadata accessor for TaskPriority();
  (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
  v75 = v9;
  v117 = v9;
  v76 = v120;
  (*(v120 + 16))(v131, v71, v137);
  v58(v135, v72, v75);
  type metadata accessor for MainActor();
  v77 = v128;

  v78 = v126;

  v79 = static MainActor.shared.getter();
  v80 = (*(v76 + 80) + 48) & ~*(v76 + 80);
  v81 = (v119 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
  v83 = v138;
  v84 = (*(v138 + 80) + v82 + 8) & ~*(v138 + 80);
  v85 = swift_allocObject();
  *(v85 + 2) = v79;
  *(v85 + 3) = &protocol witness table for MainActor;
  v86 = v117;
  v88 = v136;
  v87 = v137;
  *(v85 + 4) = v117;
  *(v85 + 5) = v88;
  (*(v76 + 32))(&v85[v80], v131, v87);
  v89 = &v85[v81];
  *v89 = v125;
  *(v89 + 1) = v78;
  *&v85[v82] = v77;
  v90 = v86;
  (*(v83 + 32))(&v85[v84], v135, v86);
  v91 = v133;
  v92 = sub_10035EB10(0, 0, v133, &unk_100EE1558, v85);
  sub_1000095E8(v91, &unk_101181520);
  v93 = sub_10010FC20(&qword_1011A0D90);
  v94 = v127;
  *(v127 + 24) = v93;
  v94[4] = &protocol witness table for Task<A, B>;
  *v94 = v92;
  (*(v76 + 8))(v132, v137);
  (*(v83 + 8))(v134, v90);
  return result;
}

uint64_t sub_1007737B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  *(v8 + 80) = v18;
  *(v8 + 88) = v19;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  v9 = *a7;
  *(v8 + 96) = *(v18 - 8);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  _s18ResponseControllerC7RequestV13ResultContentVMa();
  sub_1001109D0(&qword_1011824A0);
  v10 = type metadata accessor for Result();
  *(v8 + 120) = v10;
  *(v8 + 128) = *(v10 - 8);
  *(v8 + 136) = swift_task_alloc();
  v11 = *(v9 + class metadata base offset for MusicAutoupdatingResponse);
  v12 = *(v11 + 32);
  *(v8 + 16) = *(v11 + 16);
  *(v8 + 32) = v12;
  v13 = type metadata accessor for MusicLibrarySectionedResponse();
  *(v8 + 144) = v13;
  *(v8 + 152) = *(v13 - 8);
  *(v8 + 160) = swift_task_alloc();
  v14 = swift_task_alloc();
  *(v8 + 168) = v14;
  *(v8 + 176) = type metadata accessor for MainActor();
  *(v8 + 184) = static MainActor.shared.getter();
  v15 = swift_task_alloc();
  *(v8 + 192) = v15;
  *v15 = v8;
  v15[1] = sub_100773A40;

  return MusicLibrarySectionedRequest.response()(v14, v11);
}

uint64_t sub_100773A40()
{
  *(*v1 + 200) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100773D58;
  }

  else
  {
    v4 = sub_100773B9C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100773B9C()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  v13 = v0[16];
  v6 = v0[15];
  v12 = v0[6];

  (*(v4 + 16))(v1, v2, v3);
  sub_100772608(v1, v5);
  swift_storeEnumTagMultiPayload();
  _s18ResponseControllerC7RequestV11InvalidatorCMa();
  swift_allocObject();

  v8 = sub_100774080(v7);
  WitnessTable = swift_getWitnessTable();
  v12(v5, v8, WitnessTable);

  (*(v13 + 8))(v5, v6);
  (*(v4 + 8))(v2, v3);

  v10 = v0[1];

  return v10();
}