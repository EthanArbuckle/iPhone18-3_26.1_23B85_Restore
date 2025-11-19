char *sub_10003C814(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_linkView] = 0;
  result = [objc_opt_self() roundButtonWithStyle:0];
  if (result)
  {
    *&v4[OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_closeButton] = result;
    v11 = OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_attachment;
    v12 = type metadata accessor for Attachment(0);
    (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
    v14.receiver = v4;
    v14.super_class = ObjectType;
    v13 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
    [*&v13[OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_closeButton] addTarget:v13 action:"didTapCloseButton" forControlEvents:64];
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10003C9A8(void *a1)
{
  v2 = v1;
  v97 = a1;
  v3 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v94 = &v92 - v5;
  v6 = type metadata accessor for Attachment(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v96 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v93 = &v92 - v11;
  v12 = sub_10000341C(&qword_100263020, &qword_1001DA210);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v95 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v92 - v16;
  v18 = sub_10000341C(&qword_10025C440, &unk_1001D1120);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = &v92 - v21;
  v23 = OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_attachment;
  swift_beginAccess();
  v24 = *(v19 + 56);
  v98 = v2;
  v25 = &v2[v23];
  v26 = v6;
  sub_1000081F8(v25, v22, &qword_100263020, &qword_1001DA210);
  sub_1000081F8(v97, &v22[v24], &qword_100263020, &qword_1001DA210);
  v27 = *(v7 + 48);
  if (v27(v22, 1, v6) == 1)
  {
    if (v27(&v22[v24], 1, v6) == 1)
    {
      v28 = v22;
LABEL_14:
      sub_10000F500(v28, &qword_100263020, &qword_1001DA210);
      return;
    }

    goto LABEL_6;
  }

  sub_1000081F8(v22, v17, &qword_100263020, &qword_1001DA210);
  if (v27(&v22[v24], 1, v6) == 1)
  {
    sub_10003D7E8(v17);
LABEL_6:
    sub_10000F500(v22, &qword_10025C440, &unk_1001D1120);
    goto LABEL_7;
  }

  v33 = v93;
  sub_10003D784(&v22[v24], v93);
  v34 = sub_10017EA28(v17, v33);
  sub_10003D7E8(v33);
  sub_10003D7E8(v17);
  sub_10000F500(v22, &qword_100263020, &qword_1001DA210);
  if (v34)
  {
    return;
  }

LABEL_7:
  v29 = OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_linkView;
  v30 = v98;
  v31 = *&v98[OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_linkView];
  if (v31)
  {
    [v31 removeFromSuperview];
    v32 = *&v30[v29];
  }

  else
  {
    v32 = 0;
  }

  v35 = v95;
  v36 = v96;
  *&v30[v29] = 0;

  sub_1000081F8(&v30[v23], v35, &qword_100263020, &qword_1001DA210);
  if (v27(v35, 1, v26) == 1)
  {
    v28 = v35;
    goto LABEL_14;
  }

  sub_10003D784(v35, v36);
  v37 = [objc_allocWithZone(LPLinkMetadata) init];
  v38 = [objc_allocWithZone(LPFileMetadata) init];
  v39 = (v36 + *(v26 + 32));
  v40 = *v39;
  v41 = v39[1];
  v42 = String._bridgeToObjectiveC()();
  [v38 setName:v42];

  v43 = v26;
  v44 = v94;
  sub_1000081F8(v36 + *(v26 + 24), v94, &qword_10025F4E0, &unk_1001D1110);
  v45 = type metadata accessor for UTType();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {
    sub_10000F500(v44, &qword_10025F4E0, &unk_1001D1110);
    v47 = 0;
  }

  else
  {
    UTType.identifier.getter();
    (*(v46 + 8))(v44, v45);
    v47 = String._bridgeToObjectiveC()();
    v30 = v98;
  }

  [v38 setType:v47];

  v48 = v36 + *(v43 + 28);
  if ((*(v48 + 8) & 1) == 0)
  {
    if ((*v48 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    [v38 setSize:?];
  }

  v49 = *(v36 + *(v43 + 36));
  if (v49)
  {
    v50 = objc_allocWithZone(UIImage);
    v51 = v49;
    v52 = [v50 initWithCGImage:v51];
    v53 = [objc_allocWithZone(LPImage) initWithPlatformImage:v52];

    [v38 setThumbnail:v53];
  }

  v54 = [objc_allocWithZone(LPSharedObjectMetadata) init];
  [v54 setSpecialization:v38];
  [v37 setSpecialization:v54];
  v55 = [objc_allocWithZone(LPLinkView) initWithMetadata:v37];
  v56 = *&v30[v29];
  *&v30[v29] = v55;
  v57 = v55;

  if (!v57)
  {
    goto LABEL_36;
  }

  [v57 _setBytesLoaded:{objc_msgSend(v38, "size")}];

  v58 = *&v30[v29];
  if (!v58)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v58 _setDisableTapGesture:1];
  v59 = *&v30[v29];
  if (!v59)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v59 _setDisableHighlightGesture:1];
  v60 = *&v30[v29];
  if (!v60)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v97 = v37;
  v61 = objc_opt_self();
  v62 = v60;
  v63 = [v61 tertiarySystemFillColor];
  [v62 _setOverrideBackgroundColor:v63];

  v64 = *&v30[v29];
  if (!v64)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v64 setTranslatesAutoresizingMaskIntoConstraints:0];
  v65 = [v30 contentView];
  if (!*&v30[v29])
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v66 = v65;
  v95 = v54;
  [v65 addSubview:?];

  [v30 addSubview:*&v30[OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_closeButton]];
  sub_10000341C(&qword_10025F470, &qword_1001D1020);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1001CE090;
  v68 = *&v30[v29];
  if (!v68)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v69 = [v68 leadingAnchor];
  v70 = [v30 contentView];
  v71 = [v70 leadingAnchor];

  v72 = [v69 constraintEqualToAnchor:v71];
  *(v67 + 32) = v72;
  v73 = v98;
  v74 = *&v98[v29];
  if (!v74)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v75 = [v74 trailingAnchor];
  v76 = [v73 contentView];
  v77 = [v76 trailingAnchor];

  v78 = [v75 constraintEqualToAnchor:v77];
  *(v67 + 40) = v78;
  v79 = v98;
  v80 = *&v98[v29];
  if (!v80)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v81 = [v80 topAnchor];
  v82 = [v79 contentView];
  v83 = [v82 topAnchor];

  v84 = [v81 constraintEqualToAnchor:v83];
  *(v67 + 48) = v84;
  v85 = *&v79[v29];
  if (!v85)
  {
LABEL_45:
    __break(1u);
    return;
  }

  v86 = objc_opt_self();
  v87 = [v85 bottomAnchor];
  v88 = [v79 contentView];
  v89 = [v88 bottomAnchor];

  v90 = [v87 constraintEqualToAnchor:v89];
  *(v67 + 56) = v90;
  sub_1000081B0(0, &qword_10025AD00, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v86 activateConstraints:isa];

  sub_10003D7E8(v96);
}

void sub_10003D3F0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();

    if (v3)
    {
      sub_1000A5E20(v0);

      swift_unknownObjectRelease();
    }
  }
}

id sub_10003D57C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AttachmentCollectionViewCell()
{
  result = qword_10025C428;
  if (!qword_10025C428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003D678()
{
  sub_10003D72C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10003D72C()
{
  if (!qword_10025C438)
  {
    type metadata accessor for Attachment(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10025C438);
    }
  }
}

uint64_t sub_10003D784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Attachment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003D7E8(uint64_t a1)
{
  v2 = type metadata accessor for Attachment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10003D844(double a1)
{
  v2 = objc_opt_self();
  v3 = [v2 fractionalWidthDimension:1.0];
  v4 = [v2 fractionalHeightDimension:1.0];
  v5 = objc_opt_self();
  v6 = [v5 sizeWithWidthDimension:v3 heightDimension:v4];

  v7 = [objc_opt_self() itemWithLayoutSize:v6];
  v8 = [v2 absoluteDimension:a1];
  v9 = [v2 fractionalHeightDimension:1.0];
  v10 = [v5 sizeWithWidthDimension:v8 heightDimension:v9];

  v11 = objc_opt_self();
  sub_10000341C(&qword_10025F470, &qword_1001D1020);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001D1060;
  *(v12 + 32) = v7;
  sub_1000081B0(0, &qword_10025C448, NSCollectionLayoutItem_ptr);
  v13 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = [v11 verticalGroupWithLayoutSize:v10 subitems:isa];

  v16 = [objc_opt_self() sectionWithGroup:v15];
  [v16 setInterGroupSpacing:8.0];
  v17 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  [v17 setScrollDirection:1];
  v18 = [objc_allocWithZone(UICollectionViewCompositionalLayout) initWithSection:v16 configuration:v17];

  return v18;
}

void sub_10003DAE0()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_linkView) = 0;
  v1 = [objc_opt_self() roundButtonWithStyle:0];
  if (!v1)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_closeButton) = v1;
  v2 = OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_attachment;
  v3 = type metadata accessor for Attachment(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10003DBE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000493CC(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 112);
  return result;
}

uint64_t sub_10003DCB4()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_10003DE24(uint64_t a1, void (*a2)(void))
{
  a2(0);
  State.init(wrappedValue:)();
  return v3;
}

uint64_t ProofreadingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = type metadata accessor for ProofreadingView();
  v46 = *(v3 - 8);
  v50 = *(v46 + 64);
  __chkstk_darwin(v3 - 8);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000341C(&qword_10025C450, &qword_1001D1130);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v42 - v12;
  v54 = sub_10000341C(&qword_10025C458, &qword_1001D1138);
  v14 = *(v54 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v54);
  v17 = &v42 - v16;
  v18 = sub_10000341C(&qword_10025C460, &qword_1001D1140);
  v19 = *(v18 - 8);
  v47 = v18;
  v48 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v45 = &v42 - v21;
  v22 = sub_10000341C(&qword_10025C468, &qword_1001D1148);
  v23 = *(v22 - 8);
  v51 = v22;
  v52 = v23;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v55 = &v42 - v25;
  sub_10003E570(v2, v13);
  (*(v6 + 104))(v9, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v5);
  v26 = sub_10003E92C();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v6 + 8))(v9, v5);
  sub_10000F500(v13, &qword_10025C450, &qword_1001D1130);
  v56 = v10;
  v57 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v54;
  View.navigationBarBackButtonHidden(_:)();
  (*(v14 + 8))(v17, v28);
  v29 = *(v2 + 16);
  v43 = *(v2 + 24);
  v44 = v29;
  v42 = v2;
  v56 = v29;
  v57 = v43;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v30 = v60;
  swift_getKeyPath();
  v56 = v30;
  sub_1000493CC(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v13) = v30[112];

  LOBYTE(v60) = v13;
  v31 = v49;
  sub_10003F030(v2, v49);
  v32 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v33 = swift_allocObject();
  sub_100048F74(v31, v33 + v32, type metadata accessor for ProofreadingView);
  v56 = v54;
  v57 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v47;
  v36 = v45;
  View.onChange<A>(of:initial:_:)();

  (*(v48 + 8))(v36, v35);
  v56 = v44;
  v57 = v43;
  State.wrappedValue.getter();
  v37 = sub_1001A1610();

  v60 = v37;
  sub_10003F030(v42, v31);
  v38 = swift_allocObject();
  sub_100048F74(v31, v38 + v32, type metadata accessor for ProofreadingView);
  sub_10000341C(&qword_10025C4D0, &qword_1001D11B0);
  v56 = v35;
  v57 = &type metadata for Bool;
  v58 = v34;
  v59 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_100047730();
  v39 = v51;
  v40 = v55;
  View.onChange<A>(of:initial:_:)();

  return (*(v52 + 8))(v40, v39);
}

uint64_t type metadata accessor for ProofreadingView()
{
  result = qword_10025C548;
  if (!qword_10025C548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003E570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for ProofreadingView();
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10000341C(&qword_10025C6C8, &qword_1001D1738);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v19 - v7);
  v9 = sub_10000341C(&qword_10025C490, &qword_1001D1158);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v19 - v11);
  v13 = *(a1 + 24);
  v23 = *(a1 + 16);
  v24 = v13;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v14 = v22;
  swift_getKeyPath();
  v23 = v14;
  sub_1000493CC(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v14 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState);

  if (v15 == 1)
  {
    sub_10003EC34(v12);
    sub_1000081F8(v12, v8, &qword_10025C490, &qword_1001D1158);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_10025C4C0, &unk_1001D1168);
    sub_10003EA68();
    sub_100007120(&qword_10025C4B8, &qword_10025C4C0, &unk_1001D1168);
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v12, &qword_10025C490, &qword_1001D1158);
  }

  else
  {
    sub_10003F030(a1, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v18 = swift_allocObject();
    sub_100048F74(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for ProofreadingView);
    *v8 = sub_1000483D0;
    v8[1] = v18;
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_10025C4C0, &unk_1001D1168);
    sub_10003EA68();
    sub_100007120(&qword_10025C4B8, &qword_10025C4C0, &unk_1001D1168);
    return _ConditionalContent<>.init(storage:)();
  }
}

unint64_t sub_10003E92C()
{
  result = qword_10025C470;
  if (!qword_10025C470)
  {
    sub_100003E34(&qword_10025C450, &qword_1001D1130);
    sub_10003E9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C470);
  }

  return result;
}

unint64_t sub_10003E9B0()
{
  result = qword_10025C478;
  if (!qword_10025C478)
  {
    sub_100003E34(&qword_10025C480, &qword_1001D1150);
    sub_10003EA68();
    sub_100007120(&qword_10025C4B8, &qword_10025C4C0, &unk_1001D1168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C478);
  }

  return result;
}

unint64_t sub_10003EA68()
{
  result = qword_10025C488;
  if (!qword_10025C488)
  {
    sub_100003E34(&qword_10025C490, &qword_1001D1158);
    sub_10003EB20();
    sub_100007120(&qword_10025B310, &qword_10025B318, &qword_1001CFC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C488);
  }

  return result;
}

unint64_t sub_10003EB20()
{
  result = qword_10025C498;
  if (!qword_10025C498)
  {
    sub_100003E34(&qword_10025C4A0, &qword_1001D1160);
    sub_100007120(&qword_10025C4A8, &qword_10025C4B0, &qword_1001D77B0);
    sub_1000493CC(&qword_10025B710, type metadata accessor for PreferredContentSizeModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C498);
  }

  return result;
}

uint64_t sub_10003EC34@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v3;
  v4 = sub_10000341C(&qword_10025C6D0, &unk_1001D7C70);
  sub_10003F1CC(v1, a1 + *(v4 + 44));
  v24 = *(v1 + 16);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  swift_unknownObjectWeakLoadStrong();

  v5 = *(type metadata accessor for ProofreadingView() + 28);
  v6 = a1 + *(sub_10000341C(&qword_10025C4A0, &qword_1001D1160) + 36);
  v7 = type metadata accessor for PreferredContentSizeModifier(0);
  v8 = v7[7];
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.projectedValue.getter();
  LOBYTE(v24) = 0;
  static Binding.constant(_:)();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v6 + 4) = 1;
  v9 = &v6[v7[8]];
  *v9 = v26;
  *(v9 + 1) = v27;
  v9[16] = v28;
  v10 = &v6[v7[9]];
  *v10 = 0xD00000000000001CLL;
  *(v10 + 1) = 0x80000001001E3EF0;
  v11 = &v6[v7[10]];
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  *v11 = v24;
  *(v11 + 2) = v25;
  v12 = &v6[v7[11]];
  State.init(wrappedValue:)();
  *v12 = 0;
  *(v12 + 1) = *(&v24 + 1);
  v13 = &v6[v7[12]];
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  *v13 = v24;
  v13[8] = BYTE8(v24);
  *(v13 + 2) = v25;
  v14 = &v6[v7[13]];
  State.init(wrappedValue:)();
  *v14 = 0;
  *(v14 + 1) = *(&v24 + 1);
  v15 = &v6[v7[14]];
  type metadata accessor for PresentationModel();
  sub_1000493CC(&qword_10025A910, type metadata accessor for PresentationModel);
  *v15 = Environment.init<A>(_:)();
  v15[8] = v16 & 1;
  v17 = Environment.init<A>(_:)();
  LOBYTE(v6) = v18;
  v19 = static Alignment.center.getter();
  v21 = v20;
  result = sub_10000341C(&qword_10025C490, &qword_1001D1158);
  v23 = a1 + *(result + 36);
  *v23 = v17;
  v23[8] = v6 & 1;
  *(v23 + 9) = 1;
  *(v23 + 2) = v19;
  *(v23 + 3) = v21;
  return result;
}

uint64_t sub_10003EF4C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10003DCB4();
  swift_getKeyPath();
  sub_1000493CC(&qword_10025B1E0, type metadata accessor for CommonUIManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 81);

  if (v2 != v4)
  {
    sub_10003DCB4();
    sub_1001537FC(v2);
  }

  return result;
}

uint64_t sub_10003F030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProofreadingView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F098(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(*(type metadata accessor for ProofreadingView() - 8) + 80);

  return sub_10003EF4C(a1, a2);
}

uint64_t sub_10003F118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v3 = sub_1001A1610();

  if (v3)
  {
  }

  v4 = *(type metadata accessor for ProofreadingView() + 32);
  sub_10000341C(&qword_10025C4C8, &qword_1001D11A8);
  return AccessibilityFocusState.wrappedValue.setter();
}

uint64_t sub_10003F1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = sub_10000341C(&qword_10025C6D8, &unk_1001D7C80);
  v4 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v6 = &v21 - v5;
  v7 = sub_10000341C(&qword_10025C6E0, &unk_1001D1770);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v23 = static Color.clear.getter();
  v22 = static Edge.Set.vertical.getter();
  v21 = static SafeAreaRegions.all.getter();
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v15 = sub_10000341C(&qword_10025C6E8, &unk_1001D7C90);
  sub_10003F4C4(&v6[*(v15 + 44)]);
  v25 = a1;
  sub_10000341C(&qword_10025C6F0, &unk_1001D1780);
  sub_100007120(&qword_10025C6F8, &qword_10025C6D8, &unk_1001D7C80);
  sub_100007120(&qword_10025C700, &qword_10025C6F0, &unk_1001D1780);
  View.toolbar<A>(content:)();
  sub_10000F500(v6, &qword_10025C6D8, &unk_1001D7C80);
  v16 = v8[2];
  v16(v12, v14, v7);
  v17 = v21;
  *a2 = v23;
  *(a2 + 8) = v17;
  *(a2 + 16) = v22;
  v18 = sub_10000341C(&qword_10025C708, &unk_1001D7CA0);
  v16((a2 + *(v18 + 48)), v12, v7);
  v19 = v8[1];

  v19(v14, v7);
  v19(v12, v7);
}

uint64_t sub_10003F4C4@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v1 = type metadata accessor for ParagraphTypesetting();
  v2 = *(v1 - 8);
  v89 = v1;
  v90 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v87 = v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10000341C(&qword_10025C760, &unk_1001D1830);
  v12 = *(v11 - 8);
  v88 = v11 - 8;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v84 = v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v83 = v81 - v17;
  v18 = __chkstk_darwin(v16);
  v82 = v81 - v19;
  __chkstk_darwin(v18);
  v86 = v81 - v20;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0x2065736F706D6F43;
  v21._object = 0xED00002068746977;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
  v22._countAndFlagsBits = sub_1000971C0();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v22);

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v91 = String.init(localized:table:bundle:locale:comment:)();
  v92 = v24;
  v81[3] = sub_10002AC34();
  v25 = Text.init<A>(_:)();
  v27 = v26;
  v29 = v28;
  v30 = Text.bold()();
  v32 = v31;
  v34 = v33;
  sub_10002A984(v25, v27, v29 & 1);

  LODWORD(v91) = static HierarchicalShapeStyle.primary.getter();
  v35 = Text.foregroundStyle<A>(_:)();
  v37 = v36;
  LOBYTE(v25) = v38;
  v40 = v39;
  sub_10002A984(v30, v32, v34 & 1);

  KeyPath = swift_getKeyPath();
  v91 = v35;
  v92 = v37;
  v93 = v25 & 1;
  v94 = v40;
  v95 = KeyPath;
  v96 = 1;
  v42 = v87;
  static ParagraphTypesetting.balanced.getter();
  v81[2] = sub_10000341C(&qword_10025C768, &unk_1001D9F80);
  v81[1] = sub_10004882C();
  v43 = v86;
  View.paragraphTypesetting(_:isEnabled:)();
  v44 = *(v90 + 8);
  v90 += 8;
  v44(v42, v89);
  sub_10002A984(v35, v37, v25 & 1);

  LOBYTE(v32) = static Edge.Set.bottom.getter();
  v45 = EdgeInsets.init(_all:)();
  v46 = v43 + *(v88 + 44);
  *v46 = v32;
  *(v46 + 8) = v47;
  *(v46 + 16) = v48;
  *(v46 + 24) = v49;
  *(v46 + 32) = v50;
  *(v46 + 40) = 0;
  v91 = sub_100149E4C(v45);
  v92 = v51;
  v52 = Text.init<A>(_:)();
  v54 = v53;
  v56 = v55;
  LODWORD(v91) = static HierarchicalShapeStyle.secondary.getter();
  v57 = Text.foregroundStyle<A>(_:)();
  v59 = v58;
  LOBYTE(v37) = v60;
  sub_10002A984(v52, v54, v56 & 1);

  static Font.callout.getter();
  v61 = Text.font(_:)();
  v63 = v62;
  LOBYTE(v54) = v64;
  v66 = v65;

  sub_10002A984(v57, v59, v37 & 1);

  v67 = swift_getKeyPath();
  v91 = v61;
  v92 = v63;
  v93 = v54 & 1;
  v94 = v66;
  v95 = v67;
  v96 = 1;
  v68 = v87;
  static ParagraphTypesetting.balanced.getter();
  v69 = v82;
  View.paragraphTypesetting(_:isEnabled:)();
  v44(v68, v89);
  sub_10002A984(v61, v63, v54 & 1);

  LOBYTE(v52) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v70 = v69 + *(v88 + 44);
  *v70 = v52;
  *(v70 + 8) = v71;
  *(v70 + 16) = v72;
  *(v70 + 24) = v73;
  *(v70 + 32) = v74;
  *(v70 + 40) = 0;
  v75 = v86;
  v76 = v83;
  sub_1000081F8(v86, v83, &qword_10025C760, &unk_1001D1830);
  v77 = v84;
  sub_1000081F8(v69, v84, &qword_10025C760, &unk_1001D1830);
  v78 = v85;
  sub_1000081F8(v76, v85, &qword_10025C760, &unk_1001D1830);
  v79 = sub_10000341C(&qword_10025C770, &qword_1001D1840);
  sub_1000081F8(v77, v78 + *(v79 + 48), &qword_10025C760, &unk_1001D1830);
  sub_10000F500(v69, &qword_10025C760, &unk_1001D1830);
  sub_10000F500(v75, &qword_10025C760, &unk_1001D1830);
  sub_10000F500(v77, &qword_10025C760, &unk_1001D1830);
  return sub_10000F500(v76, &qword_10025C760, &unk_1001D1830);
}

uint64_t sub_10003FB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = sub_10000341C(&qword_10025C710, &unk_1001D1790);
  v3 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v25 = &v23 - v4;
  v26 = sub_10000341C(&qword_10025C718, &unk_1001D7CB0);
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v26);
  v8 = &v23 - v7;
  v9 = type metadata accessor for ToolbarItemPlacement();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v24 = sub_10000341C(&qword_10025C720, &unk_1001D17A0);
  v11 = *(v24 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v24);
  v14 = &v23 - v13;
  static ToolbarItemPlacement.cancellationAction.getter();
  v30 = a1;
  sub_10000341C(&qword_10025C728, &unk_1001D7CC0);
  sub_100007120(&qword_10025C730, &qword_10025C728, &unk_1001D7CC0);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v29 = a1;
  sub_10000341C(&qword_10025C738, &unk_1001D17B0);
  v15 = sub_100003E34(&unk_10025DF60, &unk_1001D7CD0);
  v16 = sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
  v31 = v15;
  v32 = v16;
  swift_getOpaqueTypeConformance2();
  ToolbarItem<>.init(placement:content:)();
  v17 = *(v27 + 48);
  v19 = v24;
  v18 = v25;
  (*(v11 + 16))(v25, v14, v24);
  v20 = &v18[v17];
  v21 = v26;
  (*(v5 + 16))(v20, v8, v26);
  TupleToolbarContent.init(_:)();
  (*(v5 + 8))(v8, v21);
  return (*(v11 + 8))(v14, v19);
}

uint64_t sub_10003FF38(uint64_t a1)
{
  v2 = type metadata accessor for ProofreadingView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_10003F030(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100048F74(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for ProofreadingView);
  v9 = a1;
  sub_10000341C(&qword_10025C740, &qword_1001DCDD0);
  sub_10004876C();
  return Button.init(action:label:)();
}

uint64_t sub_100040094(char a1)
{
  v3 = type metadata accessor for NavigationPath();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v17 = v8;
  v18 = v9;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  if (a1)
  {
    v17 = v8;
    v18 = v9;
    State.wrappedValue.getter();
    v10 = v16[1];
    swift_getKeyPath();
    v17 = v10;
    sub_1000493CC(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = *(v10 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal);

    sub_1001A7A44((v11 & 1) == 0, 0, 0);
  }

  else
  {
    sub_1001A7A44(0, 0, 0);

    v12 = *(type metadata accessor for ProofreadingView() + 28);
    sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    Binding.wrappedValue.getter();
    v13 = NavigationPath.count.getter();
    (*(v4 + 8))(v7, v3);
    if (v13 >= 1)
    {
      Binding.wrappedValue.getter();
      NavigationPath.removeLast(_:)(1);
      return Binding.wrappedValue.setter();
    }
  }

  v17 = v8;
  v18 = v9;
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_10004033C@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(type metadata accessor for ProofreadingView() + 28);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.wrappedValue.getter();
  v8 = NavigationPath.isEmpty.getter();
  (*(v3 + 8))(v6, v2);
  if (v8)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v9 = Text.init(_:tableName:bundle:comment:)();
    v28 = v10 & 1;
    v16[8] = 1;
    v20 = v9;
    v21 = v11;
    v22 = v10 & 1;
    *v23 = v19[0];
    *&v23[3] = *(v19 + 3);
    v24 = v12;
    v25 = v17;
    v26 = v18;
    v27 = 1;
  }

  else
  {
    v13 = static VerticalAlignment.center.getter();
    sub_1000405A4(v29);
    LOBYTE(v19[0]) = 1;
    v28 = v29[24];
    LOBYTE(v17) = 0;
    v20 = v13;
    v21 = 0;
    v22 = 1;
    v24 = *v29;
    v25 = *&v29[8];
    LOBYTE(v26) = v29[24];
    *(&v26 + 1) = v30;
    v27 = 0;
  }

  sub_10000341C(&qword_10025C758, &qword_1001D1800);
  sub_100007120(&qword_10025C750, &qword_10025C758, &qword_1001D1800);
  _ConditionalContent<>.init(storage:)();
  v14 = v31;
  *(a1 + 32) = v30;
  *(a1 + 48) = v14;
  *(a1 + 64) = v32;
  result = *&v29[16];
  *a1 = *v29;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000405A4@<X0>(uint64_t a1@<X8>)
{
  v2 = Image.init(systemName:)();
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v7 = v6 & 1;
  *(a1 + 24) = v6 & 1;
  *(a1 + 32) = v8;

  sub_100007D98(v3, v5, v7);

  sub_10002A984(v3, v5, v7);
}

uint64_t sub_10004069C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  __chkstk_darwin(v3);
  v6 = &v42 - v5;
  v7 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 543519573;
  v9._object = 0xE400000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
  v10._countAndFlagsBits = sub_1000971C0();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v10);

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
  v12 = type metadata accessor for String.LocalizationValue();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  String.LocalizationValue.init(stringInterpolation:)();
  v14 = type metadata accessor for Locale();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  static Locale.current.getter();
  v51 = String.init(localized:table:bundle:locale:comment:)();
  v52 = v16;
  v17 = type metadata accessor for ProofreadingView();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17 - 8);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_10003F030(a1, &v42 - v20);
  v21 = *(v18 + 80);
  v22 = swift_allocObject();
  sub_100048F74(&v42 - v20, v22 + ((v21 + 16) & ~v21), type metadata accessor for ProofreadingView);
  sub_10002AC34();
  v46 = v6;
  v23 = Button<>.init<A>(_:action:)();
  __chkstk_darwin(v23);
  sub_10003F030(a1, &v42 - v20);
  type metadata accessor for MainActor();
  v24 = static MainActor.shared.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = &protocol witness table for MainActor;
  sub_100048F74(&v42 - v20, v25 + ((v21 + 32) & ~v21), type metadata accessor for ProofreadingView);
  v26 = type metadata accessor for TaskPriority();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  static TaskPriority.userInitiated.getter();
  if (sub_1001C7274(2, 26, 4, 0))
  {
    v44 = type metadata accessor for _TaskModifier2();
    v45 = &v42;
    v43 = *(v44 - 8);
    v30 = *(v43 + 64);
    __chkstk_darwin(v44);
    v32 = &v42 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v51 = 0xD000000000000039;
    v52 = 0x80000001001E3F10;
    v50 = 106;
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v33);

    __chkstk_darwin(v34);
    (*(v27 + 16))(&v42 - v29, &v42 - v29, v26);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v27 + 8))(&v42 - v29, v26);
    v35 = v49;
    (*(v47 + 32))(v49, v46, v48);
    v36 = sub_10000341C(&qword_10025A980, &qword_1001CE160);
    return (*(v43 + 32))(v35 + *(v36 + 36), v32, v44);
  }

  else
  {
    v38 = sub_10000341C(&qword_10025A988, &qword_1001CE168);
    v39 = v49;
    v40 = (v49 + *(v38 + 36));
    v41 = type metadata accessor for _TaskModifier();
    (*(v27 + 32))(&v40[*(v41 + 20)], &v42 - v29, v26);
    *v40 = &unk_1001D17C8;
    *(v40 + 1) = v25;
    return (*(v47 + 32))(v39, v46, v48);
  }
}

uint64_t sub_100040D10(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 24);
  v20[0] = *(a1 + 16);
  v21 = v20[0];
  v22 = v7;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  sub_1001A7A44(0, 0, 0);

  v8 = type metadata accessor for ProofreadingView();
  v9 = *(v8 + 28);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.wrappedValue.getter();
  v10 = NavigationPath.isEmpty.getter();
  result = (*(v3 + 8))(v6, v2);
  if ((v10 & 1) == 0)
  {
    Binding.wrappedValue.getter();
    NavigationPath.removeLast(_:)(1);
    result = Binding.wrappedValue.setter();
  }

  v12 = a1 + *(v8 + 36);
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 8);
    v21 = v20[0];
    v22 = v7;
    State.wrappedValue.getter();
    v15 = v20[1];
    swift_getKeyPath();
    v21 = v15;
    sub_1000493CC(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = *(v15 + 96);
    if (v16 == 255)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v18 = *(v15 + 72);
      v17 = *(v15 + 80);
      v19 = *(v15 + 88);
      sub_10000F3F4(v18, v17, v19, *(v15 + 96));

      if (v16)
      {
        sub_1000278C0(v18, v17, v19, v16);
        v17 = 0;
        v19 = 0;
      }

      v13(v17, v19);
    }
  }

  return result;
}

uint64_t sub_100041004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  type metadata accessor for MainActor();
  *(v3 + 48) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004109C, v5, v4);
}

uint64_t sub_10004109C()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = *(v2 + 24);
  v0[2] = *(v2 + 16);
  v0[3] = v3;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v4 = v0[4];
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector:"resetPresentationSelectedDetent"])
    {
      [Strong resetPresentationSelectedDetent];
    }

    swift_unknownObjectRelease();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_100041170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = static Alignment.center.getter();
  a3[1] = v6;
  v7 = sub_10000341C(&qword_10025C778, &qword_1001D1848);
  sub_100041490(a2, a1, (a3 + *(v7 + 44)));
  v26 = *(a2 + 16);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  swift_unknownObjectWeakLoadStrong();

  LODWORD(a1) = *(type metadata accessor for ProofreadingView() + 28);
  v8 = a3 + *(sub_10000341C(&qword_10025C780, &qword_1001D1850) + 36);
  v9 = type metadata accessor for PreferredContentSizeModifier(0);
  v10 = v9[7];
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.projectedValue.getter();
  LOBYTE(v26) = 1;
  static Binding.constant(_:)();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v8 + 4) = 1;
  v11 = &v8[v9[8]];
  *v11 = v28;
  *(v11 + 1) = v29;
  v11[16] = v30;
  v12 = &v8[v9[9]];
  *v12 = 0xD000000000000010;
  *(v12 + 1) = 0x80000001001D11F0;
  v13 = &v8[v9[10]];
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  *v13 = v26;
  *(v13 + 2) = v27;
  v14 = &v8[v9[11]];
  State.init(wrappedValue:)();
  *v14 = 1;
  *(v14 + 1) = *(&v26 + 1);
  v15 = &v8[v9[12]];
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  *v15 = v26;
  v15[8] = BYTE8(v26);
  *(v15 + 2) = v27;
  v16 = &v8[v9[13]];
  State.init(wrappedValue:)();
  *v16 = 1;
  *(v16 + 1) = *(&v26 + 1);
  v17 = &v8[v9[14]];
  type metadata accessor for PresentationModel();
  sub_1000493CC(&qword_10025A910, type metadata accessor for PresentationModel);
  *v17 = Environment.init<A>(_:)();
  v17[8] = v18 & 1;
  v19 = Environment.init<A>(_:)();
  LOBYTE(v8) = v20;
  v21 = static Alignment.center.getter();
  v23 = v22;
  result = sub_10000341C(&qword_10025C788, &qword_1001D1858);
  v25 = a3 + *(result + 36);
  *v25 = v19;
  v25[8] = v8 & 1;
  *(v25 + 9) = 1;
  *(v25 + 2) = v21;
  *(v25 + 3) = v23;
  return result;
}

uint64_t sub_100041490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v52 = a3;
  v43 = sub_10000341C(&qword_10025C790, &qword_1001D1860);
  v5 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v7 = &v41 - v6;
  v44 = sub_10000341C(&qword_10025C798, &qword_1001D1868);
  v8 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v10 = &v41 - v9;
  v11 = sub_10000341C(&qword_10025C7A0, &qword_1001D1870);
  v12 = *(v11 - 8);
  v50 = v11;
  v51 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v42 = &v41 - v14;
  v15 = sub_10000341C(&qword_10025C7A8, &qword_1001D1878);
  v16 = *(v15 - 8);
  v45 = v15 - 8;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15 - 8);
  v49 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v41 - v20;
  v48 = static Color.clear.getter();
  v47 = static Edge.Set.vertical.getter();
  v46 = static SafeAreaRegions.all.getter();
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v22 = sub_10000341C(&qword_10025C7B0, &unk_1001D1880);
  sub_10004199C(a1, a2, &v7[*(v22 + 44)]);
  LocalizedStringKey.init(stringLiteral:)();
  sub_100007120(&qword_10025C7B8, &qword_10025C790, &qword_1001D1860);
  View.navigationTitle(_:)();

  sub_10000F500(v7, &qword_10025C790, &qword_1001D1860);
  v23 = *(a1 + 40);
  v24 = a1;
  v57 = *(a1 + 32);
  v58 = v23;
  sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
  State.projectedValue.getter();
  v25 = v56;
  v26 = sub_1000488E4();
  v27 = v42;
  v28 = v44;
  View.inlineFeedback(controller:completion:)();

  sub_10000F500(v10, &qword_10025C798, &qword_1001D1868);
  v53 = v24;
  sub_10000341C(&qword_10025C7D8, &qword_1001D1890);
  v54 = v28;
  v55 = v26;
  swift_getOpaqueTypeConformance2();
  sub_100007120(&qword_10025C7E0, &qword_10025C7D8, &qword_1001D1890);
  v29 = v50;
  View.toolbar<A>(content:)();
  (*(v51 + 8))(v27, v29);
  LOBYTE(v29) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v30 = &v21[*(v45 + 44)];
  *v30 = v29;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v35 = v49;
  sub_1000081F8(v21, v49, &qword_10025C7A8, &qword_1001D1878);
  v36 = v52;
  v37 = v46;
  *v52 = v48;
  v36[1] = v37;
  *(v36 + 16) = v47;
  v38 = v36;
  v39 = sub_10000341C(&qword_10025C7E8, &qword_1001D1898);
  sub_1000081F8(v35, v38 + *(v39 + 48), &qword_10025C7A8, &qword_1001D1878);

  sub_10000F500(v21, &qword_10025C7A8, &qword_1001D1878);
  sub_10000F500(v35, &qword_10025C7A8, &qword_1001D1878);
}

void sub_10004199C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v217 = a2;
  v225 = a3;
  v226 = type metadata accessor for FeedbackView();
  v223 = *(v226 - 8);
  v4 = *(v223 + 64);
  v5 = __chkstk_darwin(v226);
  v207 = &v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v206 = &v206 - v7;
  v8 = sub_10000341C(&qword_10025DFB0, &qword_1001D33E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v224 = &v206 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v227 = &v206 - v12;
  v221 = sub_10000341C(&qword_10025C828, &qword_1001D1910);
  v13 = *(*(v221 - 8) + 64);
  __chkstk_darwin(v221);
  *(&v218 + 1) = &v206 - v14;
  v216 = sub_10000341C(&qword_10025C830, &qword_1001D1918);
  v15 = *(*(v216 - 8) + 64);
  v16 = __chkstk_darwin(v216);
  *(&v217 + 1) = &v206 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  *&v218 = &v206 - v18;
  v212 = sub_10000341C(&qword_10025C838, &qword_1001D1920);
  v19 = *(*(v212 - 8) + 64);
  __chkstk_darwin(v212);
  v214 = (&v206 - v20);
  v213 = sub_10000341C(&qword_10025C840, &qword_1001D1928);
  v21 = *(*(v213 - 8) + 64);
  __chkstk_darwin(v213);
  v210 = &v206 - v22;
  v23 = sub_10000341C(&qword_10025C848, &qword_1001D1930);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v208 = &v206 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v209 = (&v206 - v27);
  v28 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v211 = &v206 - v30;
  v31 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  __chkstk_darwin(v33);
  v34 = sub_10000341C(&qword_10025C850, &qword_1001D1938);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v215 = &v206 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v233 = &v206 - v38;
  v219 = sub_10000341C(&qword_10025C858, &qword_1001D1940);
  v39 = *(*(v219 - 8) + 64);
  __chkstk_darwin(v219);
  v220 = (&v206 - v40);
  v41 = sub_10000341C(&qword_10025C860, &qword_1001D1948);
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41 - 8);
  v222 = &v206 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v231 = &v206 - v45;
  v47 = *(a1 + 16);
  v46 = *(a1 + 24);
  v229 = a1;
  *&v256 = v47;
  *(&v256 + 1) = v46;
  v48 = sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v49 = v249;
  swift_getKeyPath();
  *&v256 = v49;
  v230 = sub_1000493CC(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(a1) = *(v49 + 112);

  v234 = v46;
  v232 = v47;
  v228 = v48;
  if (a1)
  {
    goto LABEL_5;
  }

  *&v256 = v47;
  *(&v256 + 1) = v46;
  State.wrappedValue.getter();
  v50 = v249;
  swift_getKeyPath();
  *&v256 = v50;
  sub_1000493CC(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v51 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions;
  swift_beginAccess();
  v52 = *(v50 + v51);

  v53 = v52 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);

  v46 = v234;
  if (v53)
  {
LABEL_5:
    *&v256 = v47;
    *(&v256 + 1) = v46;
    State.wrappedValue.getter();
    v54 = sub_1001A1610();

    if (!v54)
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v109._countAndFlagsBits = 0;
      v109._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v109);
      *&v256 = v47;
      *(&v256 + 1) = v46;
      State.wrappedValue.getter();
      v110 = sub_10019F9C4();

      if (v110 >> 62)
      {
        v111 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v111 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *&v256 = v111;
      LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v112._countAndFlagsBits = 0x65676E61686320;
      v112._object = 0xE700000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v112);
      LocalizedStringKey.init(stringInterpolation:)();
      v113 = Text.init(_:tableName:bundle:comment:)();
      v115 = v114;
      v117 = v116;
      v118 = type metadata accessor for Font.Design();
      v119 = v211;
      (*(*(v118 - 8) + 56))(v211, 1, 1, v118);
      static Font.system(size:weight:design:)();
      sub_10000F500(v119, &qword_10025C5D0, &qword_1001D15A0);
      v120 = Text.font(_:)();
      v210 = v121;
      v211 = v120;
      v123 = v122;
      v209 = v124;

      sub_10002A984(v113, v115, v117 & 1);

      v125 = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v127 = v126;
      v129 = v128;
      v131 = v130;
      v133 = v132;
      v134 = v123 & 1;
      LOBYTE(v235) = v123 & 1;
      LOBYTE(v266[0]) = 0;
      v135 = static Edge.Set.bottom.getter();
      LOBYTE(v242) = 1;
      *&v256 = v232;
      *(&v256 + 1) = v234;
      State.wrappedValue.getter();
      v136 = v249;
      swift_getKeyPath();
      p_cb = &OBJC_PROTOCOL___WTWritingToolsDelegate_Proposed_v3.cb;
      *&v256 = v136;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v137 = *(v136 + 112);

      if (v137 == 1)
      {
        v138 = static HierarchicalShapeStyle.secondary.getter();
      }

      else
      {
        v138 = static HierarchicalShapeStyle.primary.getter();
      }

      v107 = v229;
      v144 = v214;
      v145 = v210;
      *v214 = v211;
      v144[1] = v145;
      *(v144 + 16) = v134;
      v144[3] = v209;
      *(v144 + 32) = v125;
      v144[5] = v127;
      v144[6] = v129;
      v144[7] = v131;
      v144[8] = v133;
      *(v144 + 72) = 0;
      *(v144 + 80) = v135;
      *(v144 + 11) = 0u;
      *(v144 + 13) = 0u;
      *(v144 + 120) = 1;
      *(v144 + 31) = v138;
      swift_storeEnumTagMultiPayload();
      sub_10000341C(&qword_10025C868, &qword_1001D1978);
      sub_100007120(&qword_10025C870, &qword_10025C840, &qword_1001D1928);
      sub_100048C78();
      _ConditionalContent<>.init(storage:)();
      goto LABEL_20;
    }

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v55);
    *&v256 = v47;
    *(&v256 + 1) = v46;
    State.wrappedValue.getter();
    v56 = sub_1001A1610();
    if (v56)
    {

      v57 = sub_10019F9C4();
      v58 = sub_1001A1610();
      if (!v58)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v59 = v58;
      v60 = sub_100048038(v58, v57);
      v62 = v61;

      if ((v62 & 1) == 0)
      {

        if (__OFADD__(v60, 1))
        {
          __break(1u);
        }

        else
        {
          *&v256 = v60 + 1;
          LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
          v63._countAndFlagsBits = 543584032;
          v63._object = 0xE400000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v63);
          *&v256 = v232;
          *(&v256 + 1) = v234;
          State.wrappedValue.getter();
          v64 = sub_10019F9C4();

          if (!(v64 >> 62))
          {
            v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:

            *&v256 = v65;
            LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v66._countAndFlagsBits = 0;
            v66._object = 0xE000000000000000;
            LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v66);
            LocalizedStringKey.init(stringInterpolation:)();
            v67 = Text.init(_:tableName:bundle:comment:)();
            v69 = v68;
            v71 = v70;
            v72 = type metadata accessor for Font.Design();
            v73 = v211;
            (*(*(v72 - 8) + 56))(v211, 1, 1, v72);
            static Font.system(size:weight:design:)();
            sub_10000F500(v73, &qword_10025C5D0, &qword_1001D15A0);
            v74 = Text.font(_:)();
            v76 = v75;
            v78 = v77;
            v80 = v79;

            sub_10002A984(v67, v69, v71 & 1);

            v81 = static Edge.Set.top.getter();
            EdgeInsets.init(_all:)();
            v83 = v82;
            v85 = v84;
            v87 = v86;
            v89 = v88;
            v264 = v78 & 1;
            v263 = 0;
            LOBYTE(v67) = static Edge.Set.bottom.getter();
            EdgeInsets.init(_all:)();
            v267 = 0;
            *&v242 = v74;
            *(&v242 + 1) = v76;
            LOBYTE(v243) = v78 & 1;
            *(&v243 + 1) = v80;
            LOBYTE(v244) = v81;
            *(&v244 + 1) = v83;
            *&v245 = v85;
            *(&v245 + 1) = v87;
            *&v246 = v89;
            BYTE8(v246) = 0;
            *(&v246 + 9) = v266[0];
            HIDWORD(v246) = *(v266 + 3);
            LOBYTE(v247) = v67;
            DWORD1(v247) = *(v265 + 3);
            *(&v247 + 1) = v265[0];
            *(&v247 + 1) = v90;
            *&v248[0] = v91;
            *(&v248[0] + 1) = v92;
            *&v248[1] = v93;
            BYTE8(v248[1]) = 0;
            v94 = static HorizontalAlignment.leading.getter();
            v95 = v209;
            *v209 = v94;
            *(v95 + 8) = 0x4020000000000000;
            *(v95 + 16) = 0;
            v96 = sub_10000341C(&qword_10025C8E8, &qword_1001D1AE8);
            sub_1000434C8(v229, v95 + *(v96 + 44));
            v239 = v246;
            v240 = v247;
            v241[0] = v248[0];
            *(v241 + 9) = *(v248 + 9);
            v235 = v242;
            v236 = v243;
            v237 = v244;
            v238 = v245;
            v97 = v208;
            sub_1000081F8(v95, v208, &qword_10025C848, &qword_1001D1930);
            v98 = v239;
            v99 = v240;
            v253 = v239;
            v254 = v240;
            v100 = v241[0];
            v255[0] = v241[0];
            *(v255 + 9) = *(v241 + 9);
            v101 = v235;
            v102 = v236;
            v249 = v235;
            v250 = v236;
            v103 = v237;
            v104 = v238;
            v251 = v237;
            v252 = v238;
            v105 = v210;
            *(v210 + 105) = *(v241 + 9);
            v105[5] = v99;
            v105[6] = v100;
            v105[3] = v104;
            v105[4] = v98;
            v105[1] = v102;
            v105[2] = v103;
            *v105 = v101;
            v106 = sub_10000341C(&qword_10025C8F0, &qword_1001D1AF0);
            sub_1000081F8(v97, v105 + *(v106 + 48), &qword_10025C848, &qword_1001D1930);
            sub_1000081F8(&v242, &v256, &qword_100264240, &unk_1001D1980);
            sub_1000081F8(&v249, &v256, &qword_100264240, &unk_1001D1980);
            sub_10000F500(v97, &qword_10025C848, &qword_1001D1930);
            v260 = v239;
            v261 = v240;
            v262[0] = v241[0];
            *(v262 + 9) = *(v241 + 9);
            v256 = v235;
            v257 = v236;
            v258 = v237;
            v259 = v238;
            sub_10000F500(&v256, &qword_100264240, &unk_1001D1980);
            sub_1000081F8(v105, v214, &qword_10025C840, &qword_1001D1928);
            swift_storeEnumTagMultiPayload();
            sub_10000341C(&qword_10025C868, &qword_1001D1978);
            sub_100007120(&qword_10025C870, &qword_10025C840, &qword_1001D1928);
            sub_100048C78();
            _ConditionalContent<>.init(storage:)();
            sub_10000F500(&v242, &qword_100264240, &unk_1001D1980);
            sub_10000F500(v105, &qword_10025C840, &qword_1001D1928);
            v107 = v229;
            sub_10000F500(v95, &qword_10025C848, &qword_1001D1930);
            p_cb = (&OBJC_PROTOCOL___WTWritingToolsDelegate_Proposed_v3 + 64);
LABEL_20:
            v146 = static VerticalAlignment.center.getter();
            v147 = v218;
            *v218 = v146;
            *(v147 + 8) = 0;
            *(v147 + 16) = 0;
            v148 = sub_10000341C(&qword_10025C8A8, &qword_1001D1998);
            sub_1000446A0(v107, v147 + *(v148 + 44));
            static Alignment.center.getter();
            _FrameLayout.init(width:height:alignment:)();
            v149 = (v147 + *(sub_10000341C(&qword_10025C8B0, &qword_1001D19A0) + 36));
            v150 = v250;
            *v149 = v249;
            v149[1] = v150;
            v149[2] = v251;
            *&v256 = v232;
            *(&v256 + 1) = v234;
            State.wrappedValue.getter();
            v151 = v242;
            swift_getKeyPath();
            v152 = *(p_cb + 426);
            *&v256 = v151;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v153 = *(v151 + 112);

            KeyPath = swift_getKeyPath();
            v155 = swift_allocObject();
            *(v155 + 16) = v153;
            v156 = v215;
            v157 = (v147 + *(v216 + 36));
            *v157 = KeyPath;
            v157[1] = sub_100035DEC;
            v157[2] = v155;
            sub_1000081F8(v233, v156, &qword_10025C850, &qword_1001D1938);
            v158 = *(&v217 + 1);
            sub_1000081F8(v147, *(&v217 + 1), &qword_10025C830, &qword_1001D1918);
            v159 = *(&v218 + 1);
            sub_1000081F8(v156, *(&v218 + 1), &qword_10025C850, &qword_1001D1938);
            v160 = sub_10000341C(&qword_10025C8B8, &qword_1001D19A8);
            sub_1000081F8(v158, v159 + *(v160 + 48), &qword_10025C830, &qword_1001D1918);
            sub_10000F500(v158, &qword_10025C830, &qword_1001D1918);
            sub_10000F500(v156, &qword_10025C850, &qword_1001D1938);
            sub_1000081F8(v159, v220, &qword_10025C828, &qword_1001D1910);
            swift_storeEnumTagMultiPayload();
            sub_10000341C(&qword_10025C8C0, &qword_1001D19B0);
            sub_100048E64(&qword_10025C8C8, &qword_10025C8C0, &qword_1001D19B0, sub_100048EE8);
            sub_100007120(&qword_10025C8D8, &qword_10025C828, &qword_1001D1910);
            _ConditionalContent<>.init(storage:)();
            sub_10000F500(v159, &qword_10025C828, &qword_1001D1910);
            sub_10000F500(v147, &qword_10025C830, &qword_1001D1918);
            sub_10000F500(v233, &qword_10025C850, &qword_1001D1938);
            goto LABEL_21;
          }
        }

        v65 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  LocalizedStringKey.init(stringLiteral:)();
  v139 = Text.init(_:tableName:bundle:comment:)();
  v140 = v220;
  *v220 = v139;
  v140[1] = v141;
  *(v140 + 16) = v142 & 1;
  v140[3] = v143;
  swift_storeEnumTagMultiPayload();
  sub_10000341C(&qword_10025C8C0, &qword_1001D19B0);
  sub_100048E64(&qword_10025C8C8, &qword_10025C8C0, &qword_1001D19B0, sub_100048EE8);
  sub_100007120(&qword_10025C8D8, &qword_10025C828, &qword_1001D1910);
  _ConditionalContent<>.init(storage:)();
LABEL_21:
  static Alignment.center.getter();
  v161 = 1;
  _FrameLayout.init(width:height:alignment:)();
  v233 = v256;
  v220 = v258;
  v221 = v257;
  v219 = *(&v258 + 1);
  LOBYTE(v266[0]) = 1;
  LOBYTE(v265[0]) = BYTE8(v256);
  v267 = BYTE8(v257);
  v162 = type metadata accessor for FeedbackFeatureFlags();
  *(&v243 + 1) = v162;
  *&v244 = sub_1000493CC(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags);
  v163 = sub_10002DB6C(&v242);
  (*(*(v162 - 8) + 104))(v163, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v162);
  LOBYTE(v162) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v242);
  if (v162)
  {
    v164 = v232;
    *&v242 = v232;
    *(&v242 + 1) = v234;
    v165 = v234;
    State.wrappedValue.getter();
    v166 = v235;
    swift_getKeyPath();
    *&v242 = v166;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v167 = *(v166 + 40);
    *&v218 = *(v166 + 32);
    *(&v218 + 1) = v167;

    *&v242 = v164;
    *(&v242 + 1) = v165;
    State.wrappedValue.getter();
    v168 = v235;
    swift_getKeyPath();
    *&v242 = v168;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v169 = *(v168 + 56);
    *&v217 = *(v168 + 48);
    *(&v217 + 1) = v169;

    *&v242 = v164;
    *(&v242 + 1) = v165;
    State.wrappedValue.getter();
    v170 = v235;
    swift_getKeyPath();
    *&v242 = v170;
    sub_1000493CC(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v171 = *(v170 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__inputStringForFeedback + 8);
    v215 = *(v170 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__inputStringForFeedback);
    v216 = v171;

    *&v242 = v164;
    *(&v242 + 1) = v165;
    State.wrappedValue.getter();
    v172 = sub_1001A2480();
    v213 = v173;
    v214 = v172;

    *&v242 = v164;
    *(&v242 + 1) = v165;
    v174 = v165;
    State.wrappedValue.getter();
    v175 = v235;
    swift_getKeyPath();
    *&v242 = v175;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v176 = *(v175 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__modelInfoString + 8);
    v212 = *(v175 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__modelInfoString);

    v177 = *(v229 + 40);
    *&v242 = *(v229 + 32);
    *(&v242 + 1) = v177;
    sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
    State.wrappedValue.getter();
    v229 = v235;
    v178 = v164;
    *&v242 = v164;
    *(&v242 + 1) = v174;
    v179 = v174;
    State.wrappedValue.getter();
    v180 = v235;
    swift_getKeyPath();
    *&v242 = v180;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v181 = *(v180 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);

    if (v181)
    {
      *&v242 = v178;
      *(&v242 + 1) = v174;
      State.wrappedValue.getter();
      v182 = v235;
      swift_getKeyPath();
      *&v242 = v182;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v183 = *(v182 + 112);
    }

    else
    {
      v183 = 1;
    }

    *&v242 = v178;
    *(&v242 + 1) = v179;
    State.wrappedValue.getter();
    v184 = v235;
    swift_getKeyPath();
    *&v242 = v184;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v186 = *(v184 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage);
    v185 = *(v184 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage + 8);

    v187 = v207;
    *(v207 + 25) = 0;
    v188 = *(v226 + 92);
    *(v187 + v188) = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    swift_storeEnumTagMultiPayload();
    *(v187 + 136) = 0;
    *(v187 + 144) = 0;
    *(v187 + 128) = 1;
    *(v187 + 152) = 2;
    v189 = v218;
    *(v187 + 24) = v217;
    *(v187 + 8) = v189;
    v190 = v216;
    *(v187 + 40) = v215;
    *(v187 + 48) = v190;
    *(v187 + 56) = 0;
    *(v187 + 64) = 0;
    v191 = v213;
    *(v187 + 72) = v214;
    *(v187 + 80) = v191;
    *(v187 + 88) = v212;
    *(v187 + 96) = v176;
    *v187 = v229;
    *(v187 + 153) = v183;
    *(v187 + 154) = 1;
    *(v187 + 156) = 0;
    *&v235 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v192 = *(&v242 + 1);
    *(v187 + 208) = v242;
    *(v187 + 160) = 0u;
    *(v187 + 176) = 0u;
    *(v187 + 192) = 0;
    *(v187 + 104) = _swiftEmptyArrayStorage;
    *(v187 + 112) = _swiftEmptyArrayStorage;
    *(v187 + 120) = _swiftEmptyArrayStorage;
    *(v187 + 216) = v192;
    *(v187 + 224) = v186;
    *(v187 + 232) = v185;
    v193 = v206;
    sub_100048F74(v187, v206, type metadata accessor for FeedbackView);
    sub_100048F74(v193, v227, type metadata accessor for FeedbackView);
    v161 = 0;
  }

  v194 = v227;
  (*(v223 + 56))(v227, v161, 1, v226);
  v195 = v231;
  v196 = v222;
  sub_1000081F8(v231, v222, &qword_10025C860, &qword_1001D1948);
  v197 = v266[0];
  v198 = v265[0];
  v199 = v267;
  v200 = v224;
  sub_1000081F8(v194, v224, &qword_10025DFB0, &qword_1001D33E0);
  v201 = v225;
  sub_1000081F8(v196, v225, &qword_10025C860, &qword_1001D1948);
  v202 = sub_10000341C(&qword_10025C8E0, &qword_1001D19B8);
  v203 = v201 + *(v202 + 48);
  *v203 = 0;
  *(v203 + 8) = v197;
  *(v203 + 16) = v233;
  *(v203 + 24) = v198;
  v204 = v220;
  *(v203 + 32) = v221;
  *(v203 + 40) = v199;
  v205 = v219;
  *(v203 + 48) = v204;
  *(v203 + 56) = v205;
  sub_1000081F8(v200, v201 + *(v202 + 64), &qword_10025DFB0, &qword_1001D33E0);
  sub_10000F500(v194, &qword_10025DFB0, &qword_1001D33E0);
  sub_10000F500(v195, &qword_10025C860, &qword_1001D1948);
  sub_10000F500(v200, &qword_10025DFB0, &qword_1001D33E0);
  sub_10000F500(v196, &qword_10025C860, &qword_1001D1948);
}

uint64_t sub_1000434C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v60 = type metadata accessor for Divider();
  v64 = *(v60 - 8);
  v3 = v64[8];
  v4 = __chkstk_darwin(v60);
  v63 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v57 - v6;
  v8 = sub_10000341C(&qword_10025C8F8, &qword_1001D1AF8);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v57 - v14;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = sub_10000341C(&qword_10025C900, &qword_1001D1B00);
  sub_100043934(a1, &v15[*(v16 + 44)]);
  v17 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v18 = &v15[*(v9 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v59 = v7;
  Divider.init()();
  sub_10004446C(a1, &v68);
  v57 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  LOBYTE(v80[0]) = 0;
  v58 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v61 = v13;
  sub_1000081F8(v15, v13, &qword_10025C8F8, &qword_1001D1AF8);
  v39 = v63;
  v40 = v64[2];
  v41 = v7;
  v42 = v60;
  v40(v63, v41, v60);
  v43 = v13;
  v44 = v62;
  sub_1000081F8(v43, v62, &qword_10025C8F8, &qword_1001D1AF8);
  v45 = sub_10000341C(&qword_10025C908, &qword_1001D1B08);
  v40((v44 + *(v45 + 48)), v39, v42);
  v46 = (v44 + *(v45 + 64));
  v72[0] = v68;
  v72[1] = v69;
  v73 = v70;
  v74 = v71;
  v47 = v57;
  LOBYTE(v40) = v58;
  LOBYTE(v75) = v57;
  *(&v75 + 1) = *v67;
  DWORD1(v75) = *&v67[3];
  *(&v75 + 1) = v24;
  *&v76 = v26;
  *(&v76 + 1) = v28;
  *&v77 = v30;
  BYTE8(v77) = 0;
  *(&v77 + 9) = *v66;
  HIDWORD(v77) = *&v66[3];
  LOBYTE(v78) = v58;
  DWORD1(v78) = *&v65[3];
  *(&v78 + 1) = *v65;
  *(&v78 + 1) = v32;
  *&v79[0] = v34;
  *(&v79[0] + 1) = v36;
  *&v79[1] = v38;
  BYTE8(v79[1]) = 0;
  v48 = v69;
  *v46 = v68;
  v46[1] = v48;
  v49 = v73;
  v50 = v74;
  v51 = v76;
  v52 = v77;
  v46[4] = v75;
  v46[5] = v51;
  v46[2] = v49;
  v46[3] = v50;
  v53 = v78;
  v54 = v79[0];
  *(v46 + 137) = *(v79 + 9);
  v46[7] = v53;
  v46[8] = v54;
  v46[6] = v52;
  sub_1000081F8(v72, v80, &qword_10025C910, &qword_1001D1B10);
  v55 = v64[1];
  v55(v59, v42);
  sub_10000F500(v15, &qword_10025C8F8, &qword_1001D1AF8);
  v80[0] = v68;
  v80[1] = v69;
  v80[2] = v70;
  v80[3] = v71;
  v81 = v47;
  *v82 = *v67;
  *&v82[3] = *&v67[3];
  v83 = v24;
  v84 = v26;
  v85 = v28;
  v86 = v30;
  v87 = 0;
  *&v88[3] = *&v66[3];
  *v88 = *v66;
  v89 = v40;
  *&v90[3] = *&v65[3];
  *v90 = *v65;
  v91 = v32;
  v92 = v34;
  v93 = v36;
  v94 = v38;
  v95 = 0;
  sub_10000F500(v80, &qword_10025C910, &qword_1001D1B10);
  v55(v63, v42);
  return sub_10000F500(v61, &qword_10025C8F8, &qword_1001D1AF8);
}

uint64_t sub_100043934@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v72 = a2;
  v62 = type metadata accessor for ProofreadingView();
  v63 = *(v62 - 8);
  v3 = *(v63 + 64);
  __chkstk_darwin(v62);
  v64 = v4;
  v66 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&qword_10025C918, &qword_1001D1B18);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v71 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v70 = &v61 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000341C(&qword_10025C920, &qword_1001D1B20);
  v68 = *(v15 - 8);
  v69 = v15;
  v16 = *(v68 + 64);
  v17 = __chkstk_darwin(v15);
  v67 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v73 = &v61 - v19;
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v65 = a1;
  v74 = v20;
  v75 = v21;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v22 = v78;
  v74 = v20;
  v75 = v21;
  State.wrappedValue.getter();
  v23 = sub_1001A1610();

  if (!v23)
  {
    goto LABEL_8;
  }

  v25 = [v23 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  v74 = v22;
  sub_1000493CC(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionContextMapping;
  swift_beginAccess();
  v27 = *(v22 + v26);

  if (!*(v27 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_100005044(v14);
  if ((v28 & 1) == 0)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v29 = [*(*(v27 + 56) + 8 * result) attributedText];
  v74 = v20;
  v75 = v21;
  State.wrappedValue.getter();
  v30 = sub_1001A1610();

  if (v30)
  {
    (*(v11 + 8))(v14, v10);

    v31 = [v30 originalRange];
    v33 = v32;

    v34 = [v29 attributedSubstringFromRange:{v31, v33}];
    v35 = [v34 string];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v74 = v36;
    v75 = v38;
    sub_10002AC34();
    v39 = Text.init<A>(_:)();
    v41 = v40;
    v61 = v42;
    v74 = v39;
    v75 = v40;
    v44 = v43 & 1;
    v76 = v43 & 1;
    v77 = v42;
    v45 = *(v62 + 32);
    sub_10000341C(&qword_10025C4C8, &qword_1001D11A8);
    v46 = v65;
    AccessibilityFocusState.projectedValue.getter();
    sub_10000341C(&qword_10025C928, &unk_1001D1B50);
    sub_100048E64(&qword_10025C930, &qword_10025C928, &unk_1001D1B50, sub_100048FE4);
    View.accessibilityFocused(_:)();

    sub_10002A984(v39, v41, v44);

    v47 = v66;
    sub_10003F030(v46, v66);
    v48 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v49 = swift_allocObject();
    sub_100048F74(v47, v49 + v48, type metadata accessor for ProofreadingView);
    sub_10000341C(&qword_10025C940, &qword_1001DE880);
    sub_100007120(&qword_10025C948, &qword_10025C940, &qword_1001DE880);
    v50 = v70;
    Button.init(action:label:)();
    v52 = v67;
    v51 = v68;
    v53 = *(v68 + 16);
    v54 = v73;
    v55 = v69;
    v53(v67, v73, v69);
    v56 = v71;
    sub_1000081F8(v50, v71, &qword_10025C918, &qword_1001D1B18);
    v57 = v72;
    v53(v72, v52, v55);
    v58 = sub_10000341C(&qword_10025C950, &qword_1001D1B60);
    v59 = &v57[*(v58 + 48)];
    *v59 = 0;
    v59[8] = 1;
    sub_1000081F8(v56, &v57[*(v58 + 64)], &qword_10025C918, &qword_1001D1B18);
    sub_10000F500(v50, &qword_10025C918, &qword_1001D1B18);
    v60 = *(v51 + 8);
    v60(v54, v55);
    sub_10000F500(v56, &qword_10025C918, &qword_1001D1B18);
    return (v60)(v52, v55);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000440C8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v13 = v7;
  v14 = v8;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v9 = sub_1001A1610();

  if (v9)
  {
    v13 = v7;
    v14 = v8;
    State.wrappedValue.getter();
    sub_1001A8490();

    v13 = v7;
    v14 = v8;
    State.wrappedValue.getter();
    v11 = [v9 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001A7170(3, v6);

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004425C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  sub_100125454(2);
  v19 = Image.init(systemName:)();
  LocalizedStringKey.init(stringLiteral:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for Font.Design();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  static Font.system(size:weight:design:)();
  sub_10000F500(v5, &qword_10025C5D0, &qword_1001D15A0);
  v12 = Text.font(_:)();
  v14 = v13;
  LOBYTE(v5) = v15;
  v17 = v16;

  sub_10002A984(v6, v8, v10 & 1);

  *a1 = v19;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14;
  LOBYTE(v5) = v5 & 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = v17;

  sub_100007D98(v12, v14, v5);

  sub_10002A984(v12, v14, v5);
}

uint64_t sub_10004446C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v5 = sub_1001A1610();

  if (!v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v7 = [v5 suggestionCategory];

  if (v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10002AC34();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  State.wrappedValue.getter();
  v15 = sub_1001A1610();

  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = [v15 suggestionDescription];

  if (v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v17 = Text.init<A>(_:)();
  v19 = v18;
  v20 = v12 & 1;
  v24 = v12 & 1;
  v22 = v21 & 1;
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v20;
  *(a2 + 24) = v14;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  *(a2 + 48) = v21 & 1;
  *(a2 + 56) = v23;
  sub_100007D98(v8, v10, v20);

  sub_100007D98(v17, v19, v22);

  sub_10002A984(v17, v19, v22);

  sub_10002A984(v8, v10, v24);
}

uint64_t sub_1000446A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v87 = type metadata accessor for IconOnlyLabelStyle();
  v85 = *(v87 - 8);
  v3 = *(v85 + 64);
  __chkstk_darwin(v87);
  v84 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10000341C(&qword_10025C958, &qword_1001D1B68);
  v5 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v81 = &v70 - v6;
  v7 = sub_10000341C(&qword_10025C960, &qword_1001D1B70);
  v88 = *(v7 - 8);
  v89 = v7;
  v8 = *(v88 + 64);
  v9 = __chkstk_darwin(v7);
  v86 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v83 = &v70 - v11;
  v12 = type metadata accessor for PrimaryButtonStyle(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ProofreadingView();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v19 = sub_10000341C(&qword_10025C968, &qword_1001D1B78);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v70 - v21;
  v75 = sub_10000341C(&qword_10025C970, &qword_1001D1B80);
  v76 = *(v75 - 8);
  v23 = *(v76 + 64);
  __chkstk_darwin(v75);
  v74 = &v70 - v24;
  v78 = sub_10000341C(&qword_10025C978, &qword_1001D1B88);
  v77 = *(v78 - 8);
  v25 = *(v77 + 64);
  __chkstk_darwin(v78);
  v73 = &v70 - v26;
  v27 = sub_10000341C(&qword_10025C980, &qword_1001D1B90);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v79 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v91 = &v70 - v31;
  sub_10003F030(a1, &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v33 = swift_allocObject();
  sub_100048F74(&v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for ProofreadingView);
  sub_10000341C(&qword_10025C988, &unk_1001D1B98);
  sub_1000490DC();
  Button.init(action:label:)();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v34 = v19;
  v35 = &v22[*(v19 + 36)];
  v36 = v98;
  *v35 = v97;
  *(v35 + 1) = v36;
  *(v35 + 2) = v99;
  v72 = *(a1 + 16);
  v82 = a1;
  v71 = *(a1 + 24);
  v92 = v72;
  v93 = v71;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v37 = v96;
  swift_getKeyPath();
  v92 = v37;
  sub_1000493CC(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v19) = *(v37 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal);

  KeyPath = swift_getKeyPath();
  *v15 = 0;
  v15[1] = v19;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0x4008000000000000;
  *(v15 + 3) = 0;
  *(v15 + 4) = 0;
  *(v15 + 20) = 1;
  v39 = *(v12 + 40);
  *&v15[v39] = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v40 = &v15[*(v12 + 44)];
  *v40 = KeyPath;
  v40[8] = 0;
  v41 = sub_1000491F8();
  v42 = sub_1000493CC(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle);
  v43 = v74;
  View.buttonStyle<A>(_:)();
  sub_100049414(v15, type metadata accessor for PrimaryButtonStyle);
  sub_10000F500(v22, &qword_10025C968, &qword_1001D1B78);
  v92 = v34;
  v93 = v12;
  v94 = v41;
  v95 = v42;
  v44 = v73;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_1000492B0();
  v47 = v75;
  View.labelStyle<A>(_:)();
  (*(v76 + 8))(v43, v47);
  v92 = v72;
  v93 = v71;
  State.wrappedValue.getter();
  v48 = v96;
  swift_getKeyPath();
  v92 = v48;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v49 = *(v48 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal);

  LocalizedStringKey.init(stringLiteral:)();
  v50 = Text.init(_:tableName:bundle:comment:)();
  v52 = v51;
  LOBYTE(v18) = v53;
  v92 = v47;
  v93 = &type metadata for HorizontalIconTitleLabelStyle;
  v94 = OpaqueTypeConformance2;
  v95 = v46;
  swift_getOpaqueTypeConformance2();
  v54 = v91;
  v55 = v78;
  View.accessibilityLabel(_:)();
  sub_10002A984(v50, v52, v18 & 1);

  (*(v77 + 8))(v44, v55);
  v56 = v81;
  sub_10004547C(v82, v81);
  v57 = v84;
  IconOnlyLabelStyle.init()();
  sub_100049304();
  sub_1000493CC(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
  v58 = v83;
  v59 = v87;
  View.labelStyle<A>(_:)();
  (*(v85 + 8))(v57, v59);
  sub_10000F500(v56, &qword_10025C958, &qword_1001D1B68);
  v60 = v79;
  sub_1000081F8(v54, v79, &qword_10025C980, &qword_1001D1B90);
  v62 = v88;
  v61 = v89;
  v63 = *(v88 + 16);
  v64 = v86;
  v63(v86, v58, v89);
  v65 = v90;
  sub_1000081F8(v60, v90, &qword_10025C980, &qword_1001D1B90);
  v66 = sub_10000341C(&qword_10025C9D8, &unk_1001D1C20);
  v67 = v65 + *(v66 + 48);
  *v67 = 0x4024000000000000;
  *(v67 + 8) = 0;
  v63((v65 + *(v66 + 64)), v64, v61);
  v68 = *(v62 + 8);
  v68(v58, v61);
  sub_10000F500(v91, &qword_10025C980, &qword_1001D1B90);
  v68(v64, v61);
  return sub_10000F500(v60, &qword_10025C980, &qword_1001D1B90);
}

uint64_t sub_1000451E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000493CC(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v7 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal);

  v4 = (v3 ^ 1) & 1;
  if (v4 == *(v7 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal))
  {
    sub_1001A0F3C(v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100045408@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10004547C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a1;
  v86 = a2;
  v3 = type metadata accessor for UnevenCornerPrimaryButtonStyle(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (&v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ProofreadingView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v80 = v10;
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000341C(&qword_10025AAA8, &unk_1001CE240);
  v89 = *(v12 - 8);
  v13 = *(v89 + 64);
  __chkstk_darwin(v12);
  v15 = &v66 - v14;
  v87 = sub_10000341C(&qword_10025C9E0, &qword_1001D1C30);
  v82 = *(v87 - 8);
  v16 = *(v82 + 64);
  __chkstk_darwin(v87);
  v66 = &v66 - v17;
  v18 = sub_10000341C(&qword_10025C9E8, &qword_1001D1C38);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v85 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v84 = &v66 - v23;
  v24 = __chkstk_darwin(v22);
  v83 = &v66 - v25;
  __chkstk_darwin(v24);
  v88 = &v66 - v26;
  v76 = v11;
  sub_10003F030(a1, v11);
  v79 = *(v8 + 80);
  v27 = (v79 + 16) & ~v79;
  v77 = v27;
  v28 = swift_allocObject();
  v78 = type metadata accessor for ProofreadingView;
  sub_100048F74(v11, v28 + v27, type metadata accessor for ProofreadingView);
  v75 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v74 = sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  Button.init(action:label:)();
  KeyPath = swift_getKeyPath();
  *v6 = 1;
  v30 = v3;
  v31 = *(v3 + 24);
  *(v6 + v31) = swift_getKeyPath();
  v73 = sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v32 = v6 + *(v30 + 28);
  *v32 = KeyPath;
  v32[8] = 0;
  v33 = sub_100007120(&unk_10025AAB0, &qword_10025AAA8, &unk_1001CE240);
  v34 = sub_1000493CC(&qword_10025C9F0, type metadata accessor for UnevenCornerPrimaryButtonStyle);
  v67 = v30;
  v69 = v33;
  v35 = v15;
  View.buttonStyle<A>(_:)();
  v72 = type metadata accessor for UnevenCornerPrimaryButtonStyle;
  sub_100049414(v6, type metadata accessor for UnevenCornerPrimaryButtonStyle);
  v36 = *(v89 + 8);
  v89 += 8;
  v71 = v36;
  v37 = v12;
  v68 = v12;
  v36(v15, v12);
  LocalizedStringKey.init(stringLiteral:)();
  v38 = Text.init(_:tableName:bundle:comment:)();
  v40 = v39;
  LOBYTE(KeyPath) = v41;
  v90 = v37;
  v91 = v30;
  v92 = v33;
  v93 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v87;
  v43 = v66;
  View.accessibilityLabel(_:)();
  sub_10002A984(v38, v40, KeyPath & 1);

  v82 = *(v82 + 8);
  v44 = v43;
  (v82)(v43, v42);
  v45 = v76;
  sub_10003F030(v81, v76);
  v46 = v77;
  v47 = swift_allocObject();
  sub_100048F74(v45, v47 + v46, v78);
  Button.init(action:label:)();
  v48 = swift_getKeyPath();
  *v6 = 256;
  v49 = v67;
  v50 = *(v67 + 24);
  *(v6 + v50) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v51 = v6 + *(v49 + 28);
  *v51 = v48;
  v51[8] = 0;
  v52 = v68;
  View.buttonStyle<A>(_:)();
  sub_100049414(v6, v72);
  v71(v35, v52);
  LocalizedStringKey.init(stringLiteral:)();
  v53 = Text.init(_:tableName:bundle:comment:)();
  v55 = v54;
  LOBYTE(v49) = v56;
  v57 = v83;
  v58 = v87;
  View.accessibilityLabel(_:)();
  sub_10002A984(v53, v55, v49 & 1);

  (v82)(v44, v58);
  v59 = v88;
  v60 = v84;
  sub_1000081F8(v88, v84, &qword_10025C9E8, &qword_1001D1C38);
  v61 = v85;
  sub_1000081F8(v57, v85, &qword_10025C9E8, &qword_1001D1C38);
  v62 = v86;
  sub_1000081F8(v60, v86, &qword_10025C9E8, &qword_1001D1C38);
  v63 = sub_10000341C(&qword_10025C9F8, &unk_1001D1C40);
  v64 = v62 + *(v63 + 48);
  *v64 = 0x3FF0000000000000;
  *(v64 + 8) = 0;
  sub_1000081F8(v61, v62 + *(v63 + 64), &qword_10025C9E8, &qword_1001D1C38);
  sub_10000F500(v57, &qword_10025C9E8, &qword_1001D1C38);
  sub_10000F500(v59, &qword_10025C9E8, &qword_1001D1C38);
  sub_10000F500(v61, &qword_10025C9E8, &qword_1001D1C38);
  return sub_10000F500(v60, &qword_10025C9E8, &qword_1001D1C38);
}

uint64_t sub_100045D94(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  v3 = State.wrappedValue.getter();
  a2(v3);
}

uint64_t sub_100045E24()
{
  LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)();
}

uint64_t sub_100045E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_10000341C(&qword_10025C7F0, &qword_1001D18A0);
  v3 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v21 = &v21 - v4;
  v22 = sub_10000341C(&qword_10025C7F8, &qword_1001D18A8);
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v22);
  v8 = &v21 - v7;
  v9 = type metadata accessor for ToolbarItemPlacement();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10000341C(&qword_10025C800, &unk_1001D18B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  static ToolbarItemPlacement.cancellationAction.getter();
  v26 = a1;
  sub_10000341C(&qword_10025C808, &unk_1001D3340);
  sub_100007120(&qword_10025DF90, &qword_10025C808, &unk_1001D3340);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v25 = a1;
  sub_10000341C(&qword_10025C810, &unk_1001D18C0);
  sub_100048A4C(&qword_10025C818, &qword_10025C810, &unk_1001D18C0, sub_100048B00);
  ToolbarItem<>.init(placement:content:)();
  v16 = *(v23 + 48);
  v17 = v21;
  (*(v12 + 16))(v21, v15, v11);
  v18 = &v17[v16];
  v19 = v22;
  (*(v5 + 16))(v18, v8, v22);
  TupleToolbarContent.init(_:)();
  (*(v5 + 8))(v8, v19);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1000461F0(uint64_t a1)
{
  v2 = type metadata accessor for ProofreadingView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = type metadata accessor for ButtonRole();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  static ButtonRole.cancel.getter();
  sub_10003F030(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_100048F74(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ProofreadingView);
  return Button<>.init(role:action:)();
}

uint64_t sub_100046358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ProofreadingView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = type metadata accessor for ButtonRole();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v36 = sub_10000341C(&qword_10025C820, &qword_1001D9AE0);
  v12 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v14 = &v35 - v13;
  v37 = sub_10000341C(&qword_10025C810, &unk_1001D18C0);
  v15 = *(*(v37 - 8) + 64);
  v16 = __chkstk_darwin(v37);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v35 - v19;
  static ButtonRole.confirm.getter();
  sub_10003F030(a1, &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  sub_100048F74(&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for ProofreadingView);
  Button<>.init(role:action:)();
  v23 = *(a1 + 24);
  v42 = *(a1 + 16);
  v43 = v23;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v24 = v41;
  swift_getKeyPath();
  v42 = v24;
  sub_1000493CC(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(a1) = *(v24 + 112);

  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  v27 = &v14[*(v36 + 36)];
  *v27 = KeyPath;
  v27[1] = sub_10002AAC0;
  v27[2] = v26;
  LocalizedStringKey.init(stringLiteral:)();
  v28 = Text.init(_:tableName:bundle:comment:)();
  v30 = v29;
  LOBYTE(v9) = v31;
  sub_100048B00();
  View.accessibilityLabel(_:)();
  sub_10002A984(v28, v30, v9 & 1);

  sub_10000F500(v14, &qword_10025C820, &qword_1001D9AE0);
  static AccessibilityTraits.isSelected.getter();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v32 = v39;
  v33 = *(v38 + 8);
  v33(v6, v39);
  sub_10000F500(v18, &qword_10025C810, &unk_1001D18C0);
  static AccessibilityTraits.isButton.getter();
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v33(v6, v32);
  return sub_10000F500(v20, &qword_10025C810, &unk_1001D18C0);
}

double sub_100046858@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessibilityTraits();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000341C(&qword_10025C670, &qword_1001D1698);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  v13 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v15 = sub_10000341C(&qword_10025C678, &qword_1001D16A0);
  (*(*(v15 - 8) + 16))(v12, a1, v15);
  v16 = &v12[*(sub_10000341C(&qword_10025C680, &qword_1001D16A8) + 36)];
  *v16 = KeyPath;
  v16[1] = v13;
  LOBYTE(a1) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v12[*(sub_10000341C(&qword_10025C688, &qword_1001D16B0) + 36)];
  *v25 = a1;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = swift_getKeyPath();
  v27 = &v12[*(sub_10000341C(&qword_10025C690, &qword_1001D16E8) + 36)];
  *v27 = v26;
  v27[8] = 1;
  if (qword_10025A7C8 != -1)
  {
    swift_once();
  }

  *&v12[*(v9 + 36)] = qword_100277178;

  static AccessibilityTraits.isHeader.getter();
  sub_100048140();
  View.accessibility(addTraits:)();
  (*(v5 + 8))(v8, v4);
  sub_10000F500(v12, &qword_10025C670, &qword_1001D1698);
  v28 = static Edge.Set.all.getter();
  v29 = a2 + *(sub_10000341C(&qword_10025C6C0, &qword_1001D1708) + 36);
  *v29 = v28;
  result = 0.0;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  *(v29 + 40) = 1;
  return result;
}

uint64_t sub_100046B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Font.Design();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = static Font.system(size:weight:design:)();
  sub_10000F500(v7, &qword_10025C5D0, &qword_1001D15A0);
  KeyPath = swift_getKeyPath();
  v11 = sub_10000341C(&qword_10025C650, &qword_1001D1678);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = (a2 + *(sub_10000341C(&qword_10025C658, &qword_1001D1680) + 36));
  *v12 = KeyPath;
  v12[1] = v9;
  LODWORD(a1) = static HierarchicalShapeStyle.secondary.getter();
  *(a2 + *(sub_10000341C(&qword_10025C660, &qword_1001D1688) + 36)) = a1;
  LOBYTE(a1) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = sub_10000341C(&qword_10025C668, &qword_1001D1690);
  v22 = a2 + *(result + 36);
  *v22 = a1;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_100046D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_10000341C(&qword_10025C618, &qword_1001D1610);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = a2 + *(sub_10000341C(&qword_10025C620, &qword_1001D1618) + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  LOBYTE(a1) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = a2 + *(sub_10000341C(&qword_10025C628, &qword_1001D1620) + 36);
  *v23 = a1;
  *(v23 + 8) = v16;
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = 0;
  v24 = (a2 + *(sub_10000341C(&qword_10025C630, &qword_1001D1628) + 36));
  v25 = *(type metadata accessor for RoundedRectangle() + 20);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = type metadata accessor for RoundedCornerStyle();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #14.0 }

  *v24 = _Q0;
  if (qword_10025A7F0 != -1)
  {
    swift_once();
  }

  v33 = qword_1002771A0;
  v34 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  *&v24[*(v34 + 52)] = v33;
  *&v24[*(v34 + 56)] = 256;

  v35 = static Alignment.center.getter();
  v37 = v36;
  v38 = &v24[*(sub_10000341C(&qword_10025C5C8, &qword_1001DC380) + 36)];
  *v38 = v35;
  v38[1] = v37;
  v39 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  v41 = (a2 + *(sub_10000341C(&qword_10025C638, &qword_1001D1660) + 36));
  *v41 = KeyPath;
  v41[1] = v39;
  LOBYTE(v39) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = a2 + *(sub_10000341C(&qword_10025C640, &qword_1001D1668) + 36);
  *v50 = v39;
  *(v50 + 8) = v43;
  *(v50 + 16) = v45;
  *(v50 + 24) = v47;
  *(v50 + 32) = v49;
  *(v50 + 40) = 0;
  LOBYTE(v39) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  result = sub_10000341C(&qword_10025C648, &qword_1001D1670);
  v60 = a2 + *(result + 36);
  *v60 = v39;
  *(v60 + 8) = v52;
  *(v60 + 16) = v54;
  *(v60 + 24) = v56;
  *(v60 + 32) = v58;
  *(v60 + 40) = 0;
  return result;
}

uint64_t sub_10004705C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  sub_10000341C(&qword_10025C5F8, &qword_1001D15F8);
  sub_100007120(&qword_10025C600, &qword_10025C5F8, &qword_1001D15F8);
  View.bold(_:)();
  v6 = type metadata accessor for Font.Design();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = static Font.system(size:weight:design:)();
  sub_10000F500(v5, &qword_10025C5D0, &qword_1001D15A0);
  KeyPath = swift_getKeyPath();
  v9 = (a1 + *(sub_10000341C(&qword_10025C608, &qword_1001D1600) + 36));
  *v9 = KeyPath;
  v9[1] = v7;
  LOBYTE(v7) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = sub_10000341C(&qword_10025C610, &qword_1001D1608);
  v19 = a1 + *(result + 36);
  *v19 = v7;
  *(v19 + 8) = v11;
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = 0;
  return result;
}

uint64_t sub_100047240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_10000341C(&qword_10025C5D8, &qword_1001D15A8);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  *(a2 + *(sub_10000341C(&qword_10025C5E0, &qword_1001D15B0) + 36)) = 256;
  v9 = type metadata accessor for Font.Design();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = static Font.system(size:weight:design:)();
  sub_10000F500(v7, &qword_10025C5D0, &qword_1001D15A0);
  KeyPath = swift_getKeyPath();
  v12 = (a2 + *(sub_10000341C(&qword_10025C5E8, &qword_1001D15E8) + 36));
  *v12 = KeyPath;
  v12[1] = v10;
  LOBYTE(KeyPath) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = sub_10000341C(&qword_10025C5F0, &qword_1001D15F0);
  v22 = a2 + *(result + 36);
  *v22 = KeyPath;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_100047428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_10000341C(&qword_10025C5B0, &qword_1001D1578);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = a2 + *(sub_10000341C(&qword_10025C5B8, &qword_1001D1580) + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  if (qword_10025A7B0 != -1)
  {
    swift_once();
  }

  v15 = qword_100277160;
  v16 = (a2 + *(sub_10000341C(&qword_10025C5C0, &qword_1001D1588) + 36));
  v17 = *(type metadata accessor for RoundedRectangle() + 20);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = type metadata accessor for RoundedCornerStyle();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = v15;
  v16[1] = v15;
  if (qword_10025A7D8 != -1)
  {
    swift_once();
  }

  v20 = qword_100277188;
  v21 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  *(v16 + *(v21 + 52)) = v20;
  *(v16 + *(v21 + 56)) = 256;

  v22 = static Alignment.center.getter();
  v24 = v23;
  result = sub_10000341C(&qword_10025C5C8, &qword_1001DC380);
  v26 = (v16 + *(result + 36));
  *v26 = v22;
  v26[1] = v24;
  return result;
}

uint64_t sub_100047638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_10025C5A8, &qword_1001D1570);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1000476B0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ProofreadingView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10003F118(a1, a2, v6);
}

unint64_t sub_100047730()
{
  result = qword_10025C4D8;
  if (!qword_10025C4D8)
  {
    sub_100003E34(&qword_10025C4D0, &qword_1001D11B0);
    sub_1000493CC(&qword_10025C4E0, sub_1000477E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C4D8);
  }

  return result;
}

unint64_t sub_1000477E4()
{
  result = qword_10025C4E8;
  if (!qword_10025C4E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10025C4E8);
  }

  return result;
}

uint64_t sub_100047860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10000341C(&qword_10025C4C8, &qword_1001D11A8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000479B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000341C(&qword_10025C4C8, &qword_1001D11A8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100047AEC()
{
  sub_100047C90(319, &unk_10025DE20, type metadata accessor for CommonUIManager, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100047C90(319, &qword_10025B4C8, type metadata accessor for ProofreadingModel, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_100047C90(319, &unk_100262AA0, &type metadata accessor for FBKEvaluationController, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_100047C90(319, &unk_10025DE30, &type metadata accessor for NavigationPath, &type metadata accessor for Binding);
        if (v3 <= 0x3F)
        {
          sub_100047CF4();
          if (v4 <= 0x3F)
          {
            sub_100047D4C();
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

void sub_100047C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100047CF4()
{
  if (!qword_10025C558)
  {
    v0 = type metadata accessor for AccessibilityFocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_10025C558);
    }
  }
}

void sub_100047D4C()
{
  if (!qword_10025C560)
  {
    sub_100003E34(&unk_10025C568, &unk_1001D7870);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10025C560);
    }
  }
}

uint64_t sub_100047DB0()
{
  sub_100003E34(&qword_10025C468, &qword_1001D1148);
  sub_100003E34(&qword_10025C4D0, &qword_1001D11B0);
  sub_100003E34(&qword_10025C460, &qword_1001D1140);
  sub_100003E34(&qword_10025C458, &qword_1001D1138);
  sub_100003E34(&qword_10025C450, &qword_1001D1130);
  sub_10003E92C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100047730();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100048038(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_1000477E4();
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_100048140()
{
  result = qword_10025C698;
  if (!qword_10025C698)
  {
    sub_100003E34(&qword_10025C670, &qword_1001D1698);
    sub_1000481F8();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C698);
  }

  return result;
}

unint64_t sub_1000481F8()
{
  result = qword_10025C6A0;
  if (!qword_10025C6A0)
  {
    sub_100003E34(&qword_10025C690, &qword_1001D16E8);
    sub_100048D5C(&qword_10025C6A8, &qword_10025C688, &qword_1001D16B0, sub_1000482DC);
    sub_100007120(&unk_10025DC90, &qword_1002636C0, &qword_1001D3140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C6A0);
  }

  return result;
}

unint64_t sub_1000482DC()
{
  result = qword_10025C6B0;
  if (!qword_10025C6B0)
  {
    sub_100003E34(&qword_10025C680, &qword_1001D16A8);
    sub_100007120(&qword_10025C6B8, &qword_10025C678, &qword_1001D16A0);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C6B0);
  }

  return result;
}

uint64_t sub_1000483D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ProofreadingView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100041170(a1, v6, a2);
}

uint64_t sub_100048480()
{
  v1 = type metadata accessor for ProofreadingView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);

  v10 = (v0 + v3 + v1[7]);
  v11 = *v10;

  v12 = *(v10 + 1);

  v13 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v14 = type metadata accessor for NavigationPath();
  (*(*(v14 - 8) + 8))(&v10[v13], v14);
  v15 = v0 + v3 + v1[8];
  v16 = type metadata accessor for AccessibilityTechnologies();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v15 + *(sub_10000341C(&qword_10025C4C8, &qword_1001D11A8) + 40));

  v19 = (v0 + v3 + v1[9]);
  if (*v19)
  {
    v20 = v19[1];
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100048680()
{
  v2 = *(type metadata accessor for ProofreadingView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100028688;

  return sub_100041004(v4, v5, v0 + v3);
}

double sub_100048764@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_10004033C(a1).n128_u64[0];
  return result;
}

unint64_t sub_10004876C()
{
  result = qword_10025C748;
  if (!qword_10025C748)
  {
    sub_100003E34(&qword_10025C740, &qword_1001DCDD0);
    sub_100007120(&qword_10025C750, &qword_10025C758, &qword_1001D1800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C748);
  }

  return result;
}

unint64_t sub_10004882C()
{
  result = qword_100262E50;
  if (!qword_100262E50)
  {
    sub_100003E34(&qword_10025C768, &unk_1001D9F80);
    sub_100007120(&unk_10025DC90, &qword_1002636C0, &qword_1001D3140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262E50);
  }

  return result;
}

unint64_t sub_1000488E4()
{
  result = qword_10025C7C8;
  if (!qword_10025C7C8)
  {
    sub_100003E34(&qword_10025C798, &qword_1001D1868);
    sub_100003E34(&qword_10025C790, &qword_1001D1860);
    sub_100007120(&qword_10025C7B8, &qword_10025C790, &qword_1001D1860);
    swift_getOpaqueTypeConformance2();
    sub_1000489E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C7C8);
  }

  return result;
}

unint64_t sub_1000489E0()
{
  result = qword_10025C7D0;
  if (!qword_10025C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C7D0);
  }

  return result;
}

uint64_t sub_100048A4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    sub_1000493CC(&qword_10025DAA0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100048B00()
{
  result = qword_100262BF0;
  if (!qword_100262BF0)
  {
    sub_100003E34(&qword_10025C820, &qword_1001D9AE0);
    sub_100007120(&qword_10025DF90, &qword_10025C808, &unk_1001D3340);
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262BF0);
  }

  return result;
}

uint64_t sub_100048C0C(char a1)
{
  v3 = *(type metadata accessor for ProofreadingView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_100040094(a1);
}

unint64_t sub_100048C78()
{
  result = qword_10025C878;
  if (!qword_10025C878)
  {
    sub_100003E34(&qword_10025C868, &qword_1001D1978);
    sub_100048D5C(&qword_10025C880, &qword_100264240, &unk_1001D1980, sub_100048DE0);
    sub_100007120(&qword_10025C898, &qword_10025C8A0, &qword_1001D1990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C878);
  }

  return result;
}

uint64_t sub_100048D5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100048DE0()
{
  result = qword_10025C888;
  if (!qword_10025C888)
  {
    sub_100003E34(&qword_10025C890, &qword_1001DEC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C888);
  }

  return result;
}

uint64_t sub_100048E64(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100048EE8()
{
  result = qword_10025C8D0;
  if (!qword_10025C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C8D0);
  }

  return result;
}

uint64_t sub_100048F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100048FE4()
{
  result = qword_10025C938;
  if (!qword_10025C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C938);
  }

  return result;
}

uint64_t sub_100049050(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ProofreadingView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1000490DC()
{
  result = qword_10025C990;
  if (!qword_10025C990)
  {
    sub_100003E34(&qword_10025C988, &unk_1001D1B98);
    sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
    sub_100049194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C990);
  }

  return result;
}

unint64_t sub_100049194()
{
  result = qword_10025C998;
  if (!qword_10025C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C998);
  }

  return result;
}

unint64_t sub_1000491F8()
{
  result = qword_10025C9A0;
  if (!qword_10025C9A0)
  {
    sub_100003E34(&qword_10025C968, &qword_1001D1B78);
    sub_100007120(&qword_10025C9A8, &qword_10025C9B0, &qword_1001D1C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C9A0);
  }

  return result;
}

unint64_t sub_1000492B0()
{
  result = qword_100263650;
  if (!qword_100263650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263650);
  }

  return result;
}

unint64_t sub_100049304()
{
  result = qword_10025C9C0;
  if (!qword_10025C9C0)
  {
    sub_100003E34(&qword_10025C958, &qword_1001D1B68);
    sub_100007120(&qword_10025C9C8, &qword_10025C9D0, &qword_1001D1C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C9C0);
  }

  return result;
}

uint64_t sub_1000493CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100049414(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100049474()
{
  v1 = type metadata accessor for ProofreadingView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = (v0 + v3 + v1[7]);
  v10 = *v9;

  v11 = *(v9 + 1);

  v12 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v13 = type metadata accessor for NavigationPath();
  (*(*(v13 - 8) + 8))(&v9[v12], v13);
  v14 = v0 + v3 + v1[8];
  v15 = type metadata accessor for AccessibilityTechnologies();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  v17 = *(v14 + *(sub_10000341C(&qword_10025C4C8, &qword_1001D11A8) + 40));

  v18 = (v0 + v3 + v1[9]);
  if (*v18)
  {
    v19 = v18[1];
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100049684()
{
  v1 = *(type metadata accessor for ProofreadingView() - 8);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return withAnimation<A>(_:_:)();
}

unint64_t sub_1000497F8()
{
  result = qword_10025CA08;
  if (!qword_10025CA08)
  {
    sub_100003E34(&qword_10025C5C0, &qword_1001D1588);
    sub_1000498B0();
    sub_100007120(&qword_10025CA20, &qword_10025C5C8, &qword_1001DC380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CA08);
  }

  return result;
}

unint64_t sub_1000498B0()
{
  result = qword_10025CA10;
  if (!qword_10025CA10)
  {
    sub_100003E34(&qword_10025C5B8, &qword_1001D1580);
    sub_100007120(&qword_10025CA18, &qword_10025C5B0, &qword_1001D1578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CA10);
  }

  return result;
}

unint64_t sub_1000499AC()
{
  result = qword_10025CA30;
  if (!qword_10025CA30)
  {
    sub_100003E34(&qword_10025C5E8, &qword_1001D15E8);
    sub_100049A64();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CA30);
  }

  return result;
}

unint64_t sub_100049A64()
{
  result = qword_10025CA38;
  if (!qword_10025CA38)
  {
    sub_100003E34(&qword_10025C5E0, &qword_1001D15B0);
    sub_100007120(&qword_10025CA40, &qword_10025C5D8, &qword_1001D15A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CA38);
  }

  return result;
}

unint64_t sub_100049B60()
{
  result = qword_10025CA50;
  if (!qword_10025CA50)
  {
    sub_100003E34(&qword_10025C608, &qword_1001D1600);
    sub_100003E34(&qword_10025C5F8, &qword_1001D15F8);
    sub_100007120(&qword_10025C600, &qword_10025C5F8, &qword_1001D15F8);
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CA50);
  }

  return result;
}

unint64_t sub_100049CFC()
{
  result = qword_10025CA68;
  if (!qword_10025CA68)
  {
    sub_100003E34(&qword_10025C638, &qword_1001D1660);
    sub_100049DB4();
    sub_100007120(&unk_1002635D0, &qword_10025CA90, &qword_1001DAFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CA68);
  }

  return result;
}

unint64_t sub_100049DB4()
{
  result = qword_10025CA70;
  if (!qword_10025CA70)
  {
    sub_100003E34(&qword_10025C630, &qword_1001D1628);
    sub_100048D5C(&qword_10025CA78, &qword_10025C628, &qword_1001D1620, sub_100049E98);
    sub_100007120(&qword_10025CA20, &qword_10025C5C8, &qword_1001DC380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CA70);
  }

  return result;
}

unint64_t sub_100049E98()
{
  result = qword_10025CA80;
  if (!qword_10025CA80)
  {
    sub_100003E34(&qword_10025C620, &qword_1001D1618);
    sub_100007120(&qword_10025CA88, &qword_10025C618, &qword_1001D1610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CA80);
  }

  return result;
}

unint64_t sub_100049F94()
{
  result = qword_10025CAA0;
  if (!qword_10025CAA0)
  {
    sub_100003E34(&qword_10025C660, &qword_1001D1688);
    sub_10004A04C();
    sub_100007120(&qword_10025C898, &qword_10025C8A0, &qword_1001D1990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CAA0);
  }

  return result;
}

unint64_t sub_10004A04C()
{
  result = qword_10025CAA8;
  if (!qword_10025CAA8)
  {
    sub_100003E34(&qword_10025C658, &qword_1001D1680);
    sub_100007120(&qword_10025CAB0, &qword_10025C650, &qword_1001D1678);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CAA8);
  }

  return result;
}

unint64_t sub_10004A134()
{
  result = qword_10025CAB8;
  if (!qword_10025CAB8)
  {
    sub_100003E34(&qword_10025C6C0, &qword_1001D1708);
    sub_100048A4C(&qword_10025CAC0, &qword_10025CAC8, &unk_1001D1C50, sub_100048140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CAB8);
  }

  return result;
}

void sub_10004A2CC()
{
  v1 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService34OpenEndedAdjustmentViewCoordinator_owner);
  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService34OpenEndedAdjustmentViewCoordinator_owner + 24);
  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService34OpenEndedAdjustmentViewCoordinator_owner + 32);
  v4 = IntelligenceUI.PromptEntryView.textView.getter();
  v5 = [v4 text];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v3(v6, v8);

    v11 = *v1;
    v12 = v1[1];
    v13 = *(v1 + 16);

    sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
    FocusState.Binding.wrappedValue.getter();
    FocusState.Binding.wrappedValue.setter();

    v9 = IntelligenceUI.PromptEntryView.textView.getter();
    v10 = String._bridgeToObjectiveC()();
    [v9 setText:v10];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004A430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return IntelligenceUI.PromptEntryView.Delegate.promptEntryViewSelectionDidChange(_:)(a1, ObjectType, a3);
}

uint64_t sub_10004A480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return IntelligenceUI.PromptEntryView.Delegate.promptEntryView(_:didUnresolveAmbiguity:)(a1, a2, ObjectType, a4);
}

uint64_t sub_10004A4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return IntelligenceUI.PromptEntryView.Delegate.promptEntryViewShouldBeginEditing(_:)(a1, ObjectType, a3);
}

uint64_t sub_10004A528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return IntelligenceUI.PromptEntryView.Delegate.promptEntryViewDidBeginEditing(_:)(a1, ObjectType, a3);
}

uint64_t sub_10004A578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return IntelligenceUI.PromptEntryView.Delegate.promptEntryViewDidEndEditing(_:)(a1, ObjectType, a3);
}

UIMenu sub_10004A5C8()
{
  sub_10004A7A4();
  v0._countAndFlagsBits = 0;
  v0._object = 0xE000000000000000;
  v3.value.super.isa = 0;
  v3.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v0, 0, v3, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v2);
}

uint64_t sub_10004A628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return IntelligenceUI.PromptEntryView.Delegate.promptEntryView(_:customAppearanceFor:resolved:)(a1, a2, a3, ObjectType, a5);
}

uint64_t sub_10004A698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return IntelligenceUI.PromptEntryView.Delegate.promptEntryView(_:didToggleLeadingButtonState:)(a1, a2, ObjectType, a4);
}

uint64_t sub_10004A6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return IntelligenceUI.PromptEntryView.Delegate.promptEntryView(_:insert:)(a1, a2, ObjectType, a4);
}

uint64_t sub_10004A74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return IntelligenceUI.PromptEntryView.Delegate.promptEntryView(_:didTransitionToPonderingState:)(a1, a2, ObjectType, a4);
}

unint64_t sub_10004A7A4()
{
  result = qword_100262910;
  if (!qword_100262910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100262910);
  }

  return result;
}

__n128 sub_10004A7FC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10004A830(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_10004A878(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004A904()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 8);
  v6 = *v0;
  v11 = *v0;
  v7 = v12;

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v11, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_10004AA60@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v105 = a2;
  v103 = sub_10000341C(&qword_10025CB10, &qword_1001D1E30);
  v101 = *(v103 - 8);
  v3 = *(v101 + 64);
  __chkstk_darwin(v103);
  v82[0] = v82 - v4;
  v5 = sub_10000341C(&qword_10025CB18, &qword_1001D1E38);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v104 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = v82 - v9;
  v10 = type metadata accessor for SubmitTriggers();
  v95 = *(v10 - 8);
  v96 = v10;
  v11 = *(v95 + 64);
  __chkstk_darwin(v10);
  v94 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for SubmitLabel();
  v88 = *(v91 - 8);
  v13 = *(v88 + 64);
  __chkstk_darwin(v91);
  v87 = v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000341C(&qword_10025CB20, &qword_1001D1E40);
  v16 = *(v15 - 8);
  v84 = v15;
  v85 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v83 = v82 - v18;
  v90 = sub_10000341C(&qword_10025CB28, &qword_1001D1E48);
  v86 = *(v90 - 8);
  v19 = *(v86 + 64);
  __chkstk_darwin(v90);
  v106 = v82 - v20;
  v21 = sub_10000341C(&qword_10025CB30, &qword_1001D1E50);
  v92 = *(v21 - 8);
  v93 = v21;
  v22 = *(v92 + 64);
  __chkstk_darwin(v21);
  v89 = v82 - v23;
  v24 = sub_10000341C(&qword_10025CB38, &qword_1001D1E58);
  v99 = *(v24 - 8);
  v100 = v24;
  v25 = *(v99 + 64);
  v26 = __chkstk_darwin(v24);
  v98 = v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v97 = v82 - v28;
  v29 = *(a1 + 32);
  v30 = *(a1 + 64);
  v118 = *(a1 + 48);
  v119 = v30;
  v31 = *(a1 + 64);
  v120 = *(a1 + 80);
  v32 = *(a1 + 32);
  v116 = *(a1 + 16);
  v117 = v32;
  v113 = v118;
  v114 = v31;
  v115 = *(a1 + 80);
  v112[0] = v116;
  v112[1] = v29;
  v33 = sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
  Binding.wrappedValue.getter();
  v34 = v121[0];
  v35 = v121[1];

  sub_10004C65C(v121);
  v113 = v118;
  v114 = v119;
  v115 = v120;
  v112[0] = v116;
  v112[1] = v117;
  Binding.projectedValue.getter();
  swift_getKeyPath();
  v113 = v122[2];
  v114 = v122[3];
  v115 = v122[4];
  v112[0] = v122[0];
  v112[1] = v122[1];
  v82[1] = v33;
  Binding.subscript.getter();

  sub_10000F500(v122, &qword_10025CB40, &qword_1001D1E60);
  v107[0] = v34;
  v107[1] = v35;
  sub_10002AC34();
  TextField<>.init<A>(_:text:onEditingChanged:onCommit:)();
  v112[0] = *(a1 + 96);
  *(v112 + 9) = *(a1 + 105);
  sub_10000341C(&qword_10025CB48, &unk_1001DE2B0);
  FocusState.Binding.projectedValue.getter();
  v112[0] = v108;
  *&v112[1] = v109;
  BYTE8(v112[1]) = v110;
  *&v108 = *(a1 + 128);
  v36 = v108;
  BYTE8(v108) = 0;
  v37 = sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  v38 = sub_100007120(&qword_10025CB50, &qword_10025CB20, &qword_1001D1E40);
  v39 = sub_10004C6B0();
  v40 = v83;
  v41 = v84;
  View.focused<A>(_:equals:)();

  (*(v85 + 8))(v40, v41);
  v42 = sub_10004A904();
  swift_getKeyPath();
  *&v112[0] = v42;
  sub_10004C858(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  v44 = *(v42 + v43);

  v45 = *(v44 + 16);

  if (v36 == v45 - 1)
  {
    v46 = v87;
    static SubmitLabel.done.getter();
  }

  else
  {
    v46 = v87;
    static SubmitLabel.next.getter();
  }

  *&v112[0] = v41;
  *(&v112[0] + 1) = v37;
  *&v112[1] = v38;
  *(&v112[1] + 1) = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v89;
  v48 = v90;
  v50 = v106;
  View.submitLabel(_:)();
  (*(v88 + 8))(v46, v91);
  (*(v86 + 8))(v50, v48);
  v51 = swift_allocObject();
  v52 = *(a1 + 112);
  *(v51 + 112) = *(a1 + 96);
  *(v51 + 128) = v52;
  *(v51 + 144) = *(a1 + 128);
  v53 = *(a1 + 48);
  *(v51 + 48) = *(a1 + 32);
  *(v51 + 64) = v53;
  v54 = *(a1 + 80);
  *(v51 + 80) = *(a1 + 64);
  *(v51 + 96) = v54;
  v55 = *(a1 + 16);
  *(v51 + 16) = *a1;
  *(v51 + 32) = v55;
  sub_10004C740(a1, v112);
  v56 = v94;
  static SubmitTriggers.text.getter();
  *&v112[0] = v48;
  *(&v112[0] + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v57 = v97;
  v58 = v93;
  View.onSubmit(of:_:)();

  (*(v95 + 8))(v56, v96);
  (*(v92 + 8))(v49, v58);
  *(&v112[1] + 1) = &type metadata for WritingTools;
  *&v113 = sub_10002AC88();
  LOBYTE(v112[0]) = 5;
  LOBYTE(v50) = isFeatureEnabled(_:)();
  sub_10000F4B4(v112);
  if ((v50 & 1) == 0)
  {
    goto LABEL_9;
  }

  v113 = v118;
  v114 = v119;
  v115 = v120;
  v112[0] = v116;
  v112[1] = v117;
  Binding.wrappedValue.getter();
  v59 = v111;

  sub_10004C65C(&v108);
  v60 = *(v59 + 16);

  if (!v60)
  {
    goto LABEL_9;
  }

  v113 = v118;
  v114 = v119;
  v115 = v120;
  v112[0] = v116;
  v112[1] = v117;
  Binding.wrappedValue.getter();
  v62 = v107[5];
  v61 = v107[6];

  sub_10004C65C(v107);

  v64 = HIBYTE(v61) & 0xF;
  if ((v61 & 0x2000000000000000) == 0)
  {
    v64 = v62 & 0xFFFFFFFFFFFFLL;
  }

  if (!v64)
  {
    __chkstk_darwin(v63);
    sub_10000341C(&qword_10025CB68, &qword_1001D1EB8);
    sub_10000341C(&qword_10025CB70, &qword_1001D1EC0);
    v75 = sub_100003E34(&qword_10025CB78, &qword_1001D1EC8);
    v76 = type metadata accessor for IconOnlyLabelStyle();
    v77 = sub_100007120(&qword_10025CB80, &qword_10025CB78, &qword_1001D1EC8);
    v78 = sub_10004C858(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
    *&v112[0] = v75;
    *(&v112[0] + 1) = v76;
    *&v112[1] = v77;
    *(&v112[1] + 1) = v78;
    swift_getOpaqueTypeConformance2();
    sub_10004C8A0();
    v79 = v82[0];
    Menu.init(content:label:)();
    v80 = v101;
    v65 = v102;
    v81 = v103;
    (*(v101 + 32))(v102, v79, v103);
    (*(v80 + 56))(v65, 0, 1, v81);
  }

  else
  {
LABEL_9:
    v65 = v102;
    (*(v101 + 56))(v102, 1, 1, v103);
  }

  v67 = v98;
  v66 = v99;
  v68 = *(v99 + 16);
  v69 = v100;
  v68(v98, v57, v100);
  v70 = v104;
  sub_10004C778(v65, v104);
  v71 = v105;
  v68(v105, v67, v69);
  v72 = sub_10000341C(&qword_10025CB60, &qword_1001D1EB0);
  sub_10004C778(v70, &v71[*(v72 + 48)]);
  sub_10004C7E8(v65);
  v73 = *(v66 + 8);
  v73(v57, v69);
  sub_10004C7E8(v70);
  return (v73)(v67, v69);
}

uint64_t sub_10004B6DC(uint64_t a1)
{
  v2 = *(a1 + 128);
  v3 = sub_10004A904();
  swift_getKeyPath();
  sub_10004C858(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  v5 = *(v3 + v4);

  v6 = *(v5 + 16);

  *v8 = *(a1 + 96);
  *&v8[9] = *(a1 + 105);
  sub_10000341C(&qword_10025CB48, &unk_1001DE2B0);
  return FocusState.Binding.wrappedValue.setter();
}

uint64_t sub_10004B838(uint64_t a1)
{
  v2 = *(a1 + 64);
  v11[2] = *(a1 + 48);
  v11[3] = v2;
  v11[4] = *(a1 + 80);
  v3 = *(a1 + 32);
  v11[0] = *(a1 + 16);
  v11[1] = v3;
  sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
  Binding.wrappedValue.getter();
  v4 = v14;

  sub_10004C65C(v13);
  v12 = v4;
  swift_getKeyPath();
  v5 = swift_allocObject();
  v6 = *(a1 + 112);
  *(v5 + 112) = *(a1 + 96);
  *(v5 + 128) = v6;
  *(v5 + 144) = *(a1 + 128);
  v7 = *(a1 + 48);
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = v7;
  v8 = *(a1 + 80);
  *(v5 + 80) = *(a1 + 64);
  *(v5 + 96) = v8;
  v9 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v9;
  sub_10004C740(a1, v11);
  sub_10000341C(&qword_10025CBD8, &qword_1001D1F90);
  sub_10000341C(&qword_10025CB98, &qword_1001D1ED0);
  sub_100007120(&qword_10025CBE0, &qword_10025CBD8, &qword_1001D1F90);
  sub_10004CAC4();
  sub_100007120(&qword_10025CB90, &qword_10025CB98, &qword_1001D1ED0);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10004BA08(_OWORD *a1, uint64_t a2)
{
  v4 = a1[1];
  v15[0] = *a1;
  v15[1] = v4;
  v5 = a1[3];
  v15[2] = a1[2];
  v15[3] = v5;
  v6 = swift_allocObject();
  v7 = *(a2 + 112);
  *(v6 + 112) = *(a2 + 96);
  *(v6 + 128) = v7;
  v8 = *(a2 + 48);
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 64) = v8;
  v9 = *(a2 + 80);
  *(v6 + 80) = *(a2 + 64);
  *(v6 + 96) = v9;
  v10 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v10;
  v11 = a1[1];
  *(v6 + 152) = *a1;
  *(v6 + 168) = v11;
  v12 = a1[3];
  *(v6 + 184) = a1[2];
  *(v6 + 144) = *(a2 + 128);
  *(v6 + 200) = v12;
  sub_10004C740(a2, v14);
  sub_10004CBCC(v15, v14);
  sub_10000341C(&qword_10025CBF0, &qword_1001D1F98);
  sub_100007120(&qword_10025CBF8, &qword_10025CBF0, &qword_1001D1F98);
  return Button.init(action:label:)();
}

uint64_t sub_10004BB58(_OWORD *a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a1[2];
  v5 = a1[4];
  v17 = a1[3];
  v18 = v5;
  v6 = a1[4];
  v19 = a1[5];
  v20 = v3;
  v7 = a1[2];
  v15 = a1[1];
  v16 = v7;
  v14 = a1[5];
  sub_10004CC28(&v20, v21);
  sub_1000081F8(&v15, v21, &qword_10025CB40, &qword_1001D1E60);
  sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
  Binding.wrappedValue.getter();

  v11 = v17;
  v12 = v18;
  v13 = v19;
  v9 = v15;
  v10 = v16;
  Binding.wrappedValue.setter();
  v21[2] = v11;
  v21[3] = v12;
  v21[4] = v13;
  v21[0] = v9;
  v21[1] = v10;
  sub_10000F500(v21, &qword_10025CB40, &qword_1001D1E60);
  sub_10004A904();
  sub_10008BE38(*(a2 + 3));
}

uint64_t sub_10004BCAC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0x6E776F6E6B6E55;
  v5 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v38 = *a1;
  sub_10002AC34();

  v7 = Text.init<A>(_:)();
  v35 = v8;
  v36 = v7;
  v34 = v9;
  v37 = v10;
  v11 = *(a1 + 5);
  if (v11)
  {
    v12 = *(a1 + 4);
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v13);
    v14 = *(a1 + 2);
    if (v14[2])
    {
      v4 = v14[4];
      v15 = v14[5];
    }

    else
    {
      v15 = 0xE700000000000000;
    }

    v19._countAndFlagsBits = v4;
    v19._object = v15;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v19);

    v20._countAndFlagsBits = 2108704;
    v20._object = 0xE300000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v20);
    v21._countAndFlagsBits = v12;
    v21._object = v11;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v21);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v22);
    LocalizedStringKey.init(stringInterpolation:)();
    v23 = Text.init(_:tableName:bundle:comment:)();
    v25 = v24;
    v27 = v26;
    static Font.subheadline.getter();
    Text.font(_:)();

    sub_10002A984(v23, v25, v27 & 1);
  }

  else
  {
    v16 = *(a1 + 2);
    if (v16[2])
    {
      v4 = v16[4];
      v17 = v16[5];
    }

    else
    {
      v18 = 0xE700000000000000;
    }

    *&v38 = v4;
    *(&v38 + 1) = v18;
    v28 = Text.init<A>(_:)();
    v30 = v29;
    v32 = v31;
    static Font.subheadline.getter();
    Text.font(_:)();

    sub_10002A984(v28, v30, v32 & 1);
  }

  _ConditionalContent<>.init(storage:)();
  *a2 = v36;
  *(a2 + 8) = v35;
  *(a2 + 16) = v34 & 1;
  *(a2 + 24) = v37;
  *(a2 + 32) = v38;
  *(a2 + 48) = v39;
  *(a2 + 64) = v40;
  sub_100007D98(v36, v35, v34 & 1);

  sub_1000353E8(v38, *(&v38 + 1), v39);
  sub_100035424(v38, *(&v38 + 1), v39);
  sub_10002A984(v36, v35, v34 & 1);
}

uint64_t sub_10004C024()
{
  v0 = type metadata accessor for IconOnlyLabelStyle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&qword_10025CB78, &qword_1001D1EC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - v8;
  sub_10000341C(&qword_10025CBA0, &qword_1001D1ED8);
  sub_10004C950();
  Label.init(title:icon:)();
  IconOnlyLabelStyle.init()();
  sub_100007120(&qword_10025CB80, &qword_10025CB78, &qword_1001D1EC8);
  sub_10004C858(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10004C28C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10004C30C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = sub_10000341C(&qword_10025CBC0, &qword_1001D1EF0);
  sub_10004C3DC((a1 + *(v2 + 44)));
  if (qword_10025A7C8 != -1)
  {
    swift_once();
  }

  v3 = qword_100277178;
  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(sub_10000341C(&qword_10025CBA0, &qword_1001D1ED8) + 36));
  *v5 = KeyPath;
  v5[1] = v3;
}

uint64_t sub_10004C3DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10000341C(&qword_10025CBC8, &qword_1001D1F28);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v18 - v8);
  v10 = Image.init(systemName:)();
  v11 = Image.init(systemName:)();
  v12 = (v9 + *(v3 + 44));
  v13 = *(sub_10000341C(&qword_100263550, &qword_1001D1F30) + 28);
  v14 = enum case for Image.Scale.small(_:);
  v15 = type metadata accessor for Image.Scale();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  *v9 = v11;
  sub_1000081F8(v9, v7, &qword_10025CBC8, &qword_1001D1F28);
  *a1 = v10;
  v16 = sub_10000341C(&qword_10025CBD0, &unk_1001D1F68);
  sub_1000081F8(v7, a1 + *(v16 + 48), &qword_10025CBC8, &qword_1001D1F28);

  sub_10000F500(v9, &qword_10025CBC8, &qword_1001D1F28);
  sub_10000F500(v7, &qword_10025CBC8, &qword_1001D1F28);
}

uint64_t sub_10004C5D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v9[6] = *(v1 + 96);
  v9[7] = v3;
  v10 = *(v1 + 128);
  v4 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v4;
  v5 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v5;
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v6;
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v7 = sub_10000341C(&qword_10025CB08, &qword_1001D1E28);
  return sub_10004AA60(v9, (a1 + *(v7 + 44)));
}

unint64_t sub_10004C6B0()
{
  result = qword_10025CB58;
  if (!qword_10025CB58)
  {
    sub_100003E34(&qword_100262BB0, &unk_1001D0280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CB58);
  }

  return result;
}

uint64_t sub_10004C778(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025CB18, &qword_1001D1E38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004C7E8(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025CB18, &qword_1001D1E38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004C858(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004C8A0()
{
  result = qword_10025CB88;
  if (!qword_10025CB88)
  {
    sub_100003E34(&qword_10025CB70, &qword_1001D1EC0);
    sub_100007120(&qword_10025CB90, &qword_10025CB98, &qword_1001D1ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CB88);
  }

  return result;
}

unint64_t sub_10004C950()
{
  result = qword_10025CBA8;
  if (!qword_10025CBA8)
  {
    sub_100003E34(&qword_10025CBA0, &qword_1001D1ED8);
    sub_100007120(&qword_10025CBB0, &qword_10025CBB8, &unk_1001D1EE0);
    sub_100007120(&unk_1002635D0, &qword_10025CA90, &qword_1001DAFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CBA8);
  }

  return result;
}

uint64_t sub_10004CA44()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  v9 = v0[15];

  return _swift_deallocObject(v0, 152, 7);
}

unint64_t sub_10004CAC4()
{
  result = qword_10025CBE8;
  if (!qword_10025CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CBE8);
  }

  return result;
}

uint64_t sub_10004CB18()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  v9 = v0[15];

  v10 = v0[20];

  v11 = v0[21];

  v12 = v0[22];

  v13 = v0[24];

  v14 = v0[26];

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_10004CCCC()
{
  if (*(v0 + 48))
  {
    if (*(v0 + 48) == 1)
    {
      v4 = *v0;
      v5 = *(v0 + 8);
      v6 = *(v0 + 16);
      v7 = *(v0 + 24);
      v8 = *(v0 + 32);
      return sub_10019B3D4();
    }

    else
    {
      return sub_10004CE2C(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
    }
  }

  else
  {
    v2 = *v0;
    v3 = *(v0 + 8);

    return v2;
  }
}

uint64_t sub_10004CE2C(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v36 = a4;
  v34 = a2;
  v35 = a3;
  v37 = a1;
  v4 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for JSONEncoder.OutputFormatting();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = type metadata accessor for JSONEncoder();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_10000341C(&qword_10025CC18, &qword_1001D1FB8);
  v15 = *(v10 + 72);
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001CF9E0;
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  v43 = v17;
  sub_10004DBA0();
  sub_10000341C(&qword_10025CC28, &unk_1001D1FC0);
  sub_100007120(&qword_10025CC30, &qword_10025CC28, &unk_1001D1FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  (*(v5 + 104))(v8, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v4);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  if (v36)
  {
    v43 = v37;
    if (v36 == 1)
    {
      sub_10004DD5C();
    }

    else
    {
      sub_10004DBF8();
    }

    v24 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v26 = v25;
    sub_10004DC4C(v24, v25);
    v27 = sub_100097014(v24, v26);
    if (!v28)
    {
      v41 = v24;
      v42 = v26;
      sub_10004DC4C(v24, v26);
      sub_10000341C(&qword_10025F350, &unk_1001D40F0);
      if (swift_dynamicCast())
      {
        sub_100008198(&v38, &v43);
        sub_100027874(&v43, v46);
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_10004DD08(v24, v26);
          sub_100027874(&v43, v46);
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v29 = *(&v38 + 1);
          v30 = v38;
          sub_10000F4B4(&v43);
LABEL_19:
          v43 = 0xD000000000000016;
          v44 = 0x80000001001E4180;
          v32._countAndFlagsBits = v30;
          v32._object = v29;
          String.append(_:)(v32);

          sub_10004DD08(v24, v26);

          return v43;
        }

        sub_10000F4B4(&v43);
      }

      else
      {
        v40 = 0;
        v38 = 0u;
        v39 = 0u;
        sub_10004DCA0(&v38);
      }

      v27 = sub_100095E84(v24, v26);
    }

    v30 = v27;
    v29 = v28;
    sub_10004DD08(v24, v26);
    goto LABEL_19;
  }

  v43 = v37;
  v44 = v34;
  v45 = v35;
  sub_10004DDB0();
  v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v20 = v19;
  sub_10004DC4C(v18, v19);
  v21 = sub_100097014(v18, v20);
  if (v22)
  {
    v23 = v21;
    sub_10004DD08(v18, v20);
LABEL_22:

    sub_10004DD08(v18, v20);
    return v23;
  }

  v41 = v18;
  v42 = v20;
  sub_10004DC4C(v18, v20);
  sub_10000341C(&qword_10025F350, &unk_1001D40F0);
  if (!swift_dynamicCast())
  {
    sub_10004DD08(v18, v20);
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    sub_10004DCA0(&v38);
LABEL_21:
    v23 = sub_100095E84(v18, v20);
    goto LABEL_22;
  }

  sub_100008198(&v38, &v43);
  sub_100027874(&v43, v46);
  HasContiguous = dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter();
  sub_10004DD08(v18, v20);
  if ((HasContiguous & 1) == 0)
  {
    sub_10000F4B4(&v43);
    goto LABEL_21;
  }

  sub_100027874(&v43, v46);
  dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();

  sub_10004DD08(v18, v20);
  v23 = v38;
  sub_10000F4B4(&v43);
  return v23;
}

void *sub_10004D4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v31 = a3;
  v32 = a5;
  v12 = type metadata accessor for PromptExampleBuilder.ExampleMessage();
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  v19 = enum case for ChatMessageRole.user(_:);
  v20 = type metadata accessor for ChatMessageRole();
  v21 = *(*(v20 - 8) + 104);
  if (a4 | a6)
  {
    v21(v16, v19, v20);
    v26 = &v16[*(v12 + 20)];
    *v26 = a1;
    *(v26 + 1) = a2;
    v27 = v32;
    *(v26 + 2) = v31;
    *(v26 + 3) = a4;
    *(v26 + 4) = v27;
    *(v26 + 5) = a6;
    v26[48] = 1;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a7 = sub_10017D920(0, a7[2] + 1, 1, a7);
    }

    v24 = a7[2];
    v28 = a7[3];
    v25 = v24 + 1;
    if (v24 >= v28 >> 1)
    {
      a7 = sub_10017D920(v28 > 1, v24 + 1, 1, a7);
    }

    v18 = v16;
  }

  else
  {
    v21(v18, v19, v20);
    v22 = &v18[*(v12 + 20)];
    *v22 = a1;
    *(v22 + 1) = a2;
    *(v22 + 1) = 0u;
    *(v22 + 2) = 0u;
    v22[48] = 0;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a7 = sub_10017D920(0, a7[2] + 1, 1, a7);
    }

    v24 = a7[2];
    v23 = a7[3];
    v25 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      a7 = sub_10017D920(v23 > 1, v24 + 1, 1, a7);
    }
  }

  a7[2] = v25;
  sub_10004DE04(v18, a7 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24);
  return a7;
}

uint64_t sub_10004D750(void *a1, uint64_t a2)
{
  v35 = a1;
  v37 = type metadata accessor for PromptExampleBuilder.ExampleMessage();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v37);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = *(a2 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v40 = _swiftEmptyArrayStorage;
    sub_100163C20(0, v10, 0);
    v11 = v40;
    v12 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v36 = *(v3 + 72);
    do
    {
      sub_10004DAE0(v12, v9);
      sub_10004DAE0(v9, v7);
      v38 = 0;
      v39 = 0xE000000000000000;
      type metadata accessor for ChatMessageRole();
      _print_unlocked<A, B>(_:_:)();
      v13._countAndFlagsBits = 8250;
      v13._object = 0xE200000000000000;
      String.append(_:)(v13);
      v14 = &v7[*(v37 + 20)];
      v16 = *v14;
      v15 = *(v14 + 1);
      if (v14[48])
      {
        v17 = *(v14 + 2);
        v18 = *(v14 + 3);
        if (v14[48] == 1)
        {
          v41 = *v14;
          v42 = v15;
          v43 = v17;
          v44 = v18;
          v45 = *(v14 + 2);
          v19 = sub_10019B3D4();
        }

        else
        {
          v19 = sub_10004CE2C(*v14, *(v14 + 1), v17, v18);
        }

        v16 = v19;
        v15 = v20;
      }

      else
      {
        v21 = *(v14 + 1);
      }

      v22._countAndFlagsBits = v16;
      v22._object = v15;
      String.append(_:)(v22);

      v24 = v38;
      v23 = v39;
      sub_10004DB44(v9);
      sub_10004DB44(v7);
      v40 = v11;
      v26 = v11[2];
      v25 = v11[3];
      if (v26 >= v25 >> 1)
      {
        sub_100163C20((v25 > 1), v26 + 1, 1);
        v11 = v40;
      }

      v11[2] = v26 + 1;
      v27 = &v11[2 * v26];
      v27[4] = v24;
      v27[5] = v23;
      v12 += v36;
      --v10;
    }

    while (v10);
  }

  v38 = v11;
  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_100007120(&qword_10025F3D0, &qword_10025CC10, &qword_1001D1FB0);
  v28 = BidirectionalCollection<>.joined(separator:)();
  v30 = v29;

  v38 = 0x20656C706D617845;
  v39 = 0xE800000000000000;
  v40 = v35;
  v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 2618;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = v28;
  v33._object = v30;
  String.append(_:)(v33);

  return v38;
}

uint64_t type metadata accessor for PromptExampleBuilder.ExampleMessage()
{
  result = qword_10025CCB0;
  if (!qword_10025CCB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004DAE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptExampleBuilder.ExampleMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004DB44(uint64_t a1)
{
  v2 = type metadata accessor for PromptExampleBuilder.ExampleMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004DBA0()
{
  result = qword_10025CC20;
  if (!qword_10025CC20)
  {
    type metadata accessor for JSONEncoder.OutputFormatting();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CC20);
  }

  return result;
}

unint64_t sub_10004DBF8()
{
  result = qword_10025CC38;
  if (!qword_10025CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CC38);
  }

  return result;
}

uint64_t sub_10004DC4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10004DCA0(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025CC40, &qword_1001D1FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004DD08(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10004DD5C()
{
  result = qword_10025CC48;
  if (!qword_10025CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CC48);
  }

  return result;
}

unint64_t sub_10004DDB0()
{
  result = qword_10025CC50;
  if (!qword_10025CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025CC50);
  }

  return result;
}

uint64_t sub_10004DE04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptExampleBuilder.ExampleMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004DE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChatMessageRole();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 48);
    if (v10 > 2)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10004DF5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChatMessageRole();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 48) = -a2;
  }

  return result;
}

uint64_t sub_10004E018()
{
  result = type metadata accessor for ChatMessageRole();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_10004E0A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10004E0C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_10004E108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

__n128 sub_10004E174(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10004E188(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_10004E1D0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_10004E230()
{
  result = sub_100006338(_swiftEmptyArrayStorage);
  qword_100277018 = result;
  return result;
}

uint64_t sub_10004E258()
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);
}

uint64_t sub_10004E304(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);
  *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries) = a2;
}

uint64_t sub_10004E384()
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage);
  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage + 8);

  return v1;
}

uint64_t sub_10004E440(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage);
  v6 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage + 8);
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage + 8);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

void sub_10004E5D0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory;
  v5 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory);
  sub_1000081B0(0, qword_10025D600, TCInputContextHistory_ptr);
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
    sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_10004E758(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

void sub_10004E808(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration;
  v5 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration);
  sub_1000081B0(0, &qword_10025B4A0, WTSmartReplyConfiguration_ptr);
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
    sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10004E97C()
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning);
}

uint64_t sub_10004EA28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning);
  *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning) = a2;
}

void *sub_10004EA6C()
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard);
  if ((*(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard + 32) & 1) == 0)
  {
    v4 = v2[2];
    v3 = v2[3];
    v6 = *v2;
    v5 = v2[1];
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000F34C(v7, qword_100276F20);
    v8 = static os_log_type_t.debug.getter();
    v9 = Logger.logObject.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      *v10 = 134218752;
      *(v10 + 4) = v6;
      *(v10 + 12) = 2048;
      *(v10 + 14) = v5;
      *(v10 + 22) = 2048;
      *(v10 + 24) = v4;
      *(v10 + 32) = 2048;
      *(v10 + 34) = v3;
      _os_log_impl(&_mh_execute_header, v9, v8, "QuestionnaireModel: didSet questionnaireRectRelativeToInputDashboard (rect: %f, %f; %f, %f)", v10, 0x2Au);
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = result;
      if ([result respondsToSelector:"showSmartReplyQuestionnaireWithRect:"])
      {
        [v11 showSmartReplyQuestionnaireWithRect:{v6, v5, v4, v3}];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

__n128 sub_10004EC58@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard + 32);
  result = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard);
  v5 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard + 16);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_10004ED14@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard + 32);
  result = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard);
  v6 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard + 16);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

void *sub_10004EDD0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *a2;
  return sub_10004EE10(v5);
}

void *sub_10004EE10(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard;
  v4 = *(a1 + 32);
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard + 32))
  {
    if ((*(a1 + 32) & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else if ((*(a1 + 32) & 1) != 0 || !CGRectEqualToRect(*v3, *a1))
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);

  return sub_10004EA6C();
}

void *sub_10004EF7C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard;
  v3 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v3;
  *(v2 + 32) = *(a2 + 32);
  return sub_10004EA6C();
}

uint64_t sub_10004EFD8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_10004F0A0(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10004F1B8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

void *sub_10004F294(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v15 = v1;
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session;
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session))
  {
    sub_100036BF0(0);
    if (qword_10025A740 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    v15 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    result = *(v1 + v10);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v11 = [result uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = qword_100277018;
    qword_100277018 = 0x8000000000000000;
    sub_1001A9F18(v2, v8, isUniquelyReferenced_nonNull_native);
    (*(v5 + 8))(v8, v4);
    qword_100277018 = v14;
  }

  else
  {
    if (!a1)
    {
      return result;
    }

    if (qword_10025A740 != -1)
    {
      swift_once();
    }

    v13 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_10019D388(0, v8);
  }

  return swift_endAccess();
}

void *sub_10004F574()
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session);
  v2 = v1;
  return v1;
}

id sub_10004F624@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session);
  *a2 = v4;

  return v4;
}

void sub_10004F6E4(void *a1)
{
  v3 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session;
  v4 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session);
  if (!v4)
  {
    if (!a1)
    {
      v10 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &unk_10025D5F0, WTSession_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;
  sub_10004F294(v10);
}

void sub_10004F8B0(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries) = 0;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__hasEntries) = 0;
  v7 = (v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage);
  *v7 = 0;
  v7[1] = 0;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning) = 0;
  v8 = v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__questionnaireRectRelativeToInputDashboard;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__longFormUpdateInProgress) = 0;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__sessionEndRequested) = 0;
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session) = 0;
  v9 = v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  ObservationRegistrar.init()();
  *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration) = a1;
  v10 = a1;
  v11 = [v10 inputContextHistory];
  v12 = [objc_allocWithZone(TCInputContextHistory) initWithTIInputContextHistory:v11];

  if (v12)
  {
    *(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory) = v12;
    v13 = [v10 inputContextHistory];
    v14 = [v13 threadIdentifier];

    if (v14)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v18 = type metadata accessor for SmartReplyAnalytics();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_10014F2CC(v15, v17);
    sub_10000F500(v9, &unk_10025D568, &unk_1001D23B0);
    *v9 = v21;
    *(v9 + 24) = v18;
    *(v9 + 32) = &off_100250760;
    swift_unknownObjectWeakInit();
    *(v4 + 49) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 80) = 0;
    *(v4 + 88) = 0;
    *(v4 + 72) = 0;
    *(v4 + 96) = -1;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
    *(v4 + 120) = 0;
    *(v4 + 128) = 0;
    *(v4 + 136) = 0;
    *(v4 + 144) = 0;
    swift_unknownObjectRetain();
    ObservationRegistrar.init()();
    sub_100036534(2, 0, 0, 2);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();

    v22 = a3;
    sub_100035E70(a3);
    sub_100056EE8();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004FB60(uint64_t a1)
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);
  if (v3)
  {
    if (v3 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v4 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        return result;
      }
    }

    result = sub_100163CA0(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v5 = 0;
        do
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          swift_getKeyPath();
          sub_100058D88(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v7 = *(v6 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
          v8 = *(v6 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);

          swift_unknownObjectRelease();
          v10 = _swiftEmptyArrayStorage[2];
          v9 = _swiftEmptyArrayStorage[3];
          if (v10 >= v9 >> 1)
          {
            sub_100163CA0((v9 > 1), v10 + 1, 1);
          }

          ++v5;
          _swiftEmptyArrayStorage[2] = v10 + 1;
          v11 = &_swiftEmptyArrayStorage[2 * v10];
          v11[4] = v7;
          v11[5] = v8;
        }

        while (v4 != v5);
      }

      else
      {
        v12 = (v3 + 32);
        do
        {
          v13 = *v12;
          swift_getKeyPath();
          sub_100058D88(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);

          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v15 = *(v13 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
          v14 = *(v13 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);

          v17 = _swiftEmptyArrayStorage[2];
          v16 = _swiftEmptyArrayStorage[3];
          if (v17 >= v16 >> 1)
          {
            sub_100163CA0((v16 > 1), v17 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v17 + 1;
          v18 = &_swiftEmptyArrayStorage[2 * v17];
          v18[4] = v15;
          v18[5] = v14;
          ++v12;
          --v4;
        }

        while (v4);
      }
    }
  }

  return result;
}

uint64_t sub_10004FE88(uint64_t a1)
{
  v2 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;

  sub_10015C9C8(0, 0, v5, &unk_1001D2680, v8);

  v7(v5, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;

  sub_10015C9C8(0, 0, v5, &unk_1001D2690, v9);
}

uint64_t sub_100050010()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100028688;

  return sub_100054C2C();
}

uint64_t sub_1000500C0()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100050154, v2, v1);
}

uint64_t sub_100050154()
{
  v2 = v0[2];
  v1 = v0[3];

  withObservationTracking<A>(_:onChange:)();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000501F4()
{
  v1[21] = v0;
  v2 = *(*(sub_10000341C(&unk_10025B5D0, &qword_1001D05A0) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = type metadata accessor for MainActor();
  v1[24] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[25] = v4;
  v1[26] = v3;

  return _swift_task_switch(sub_1000502C8, v4, v3);
}

uint64_t sub_1000502C8()
{
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F20);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Requested session start...", v4, 2u);
  }

  v5 = v0[21];

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[27] = Strong;
  if (Strong)
  {
    v7 = Strong;
    v8 = v0[21];
    v9 = [objc_allocWithZone(WTSession) initWithType:2 textViewDelegate:0];
    v0[28] = v9;
    v10 = v9;
    sub_10004F6E4(v9);
    [v10 setCompositionSessionType:11];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000505C4;
    v11 = swift_continuation_init();
    v0[17] = sub_10000341C(&unk_10025D5C0, &qword_1001D2620);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10019D8B8;
    v0[13] = &unk_10024C480;
    v0[14] = v11;
    [v7 willBeginWritingToolsSession:v10 requestContexts:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v12 = v0[24];

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unexpected nil delegate when starting session", v15, 2u);
    }

    v16 = v0[22];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1000505C4()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *v0;

  return _swift_task_switch(sub_1000506CC, v2, v1);
}

uint64_t sub_1000506CC()
{
  v1 = *(v0 + 168);
  sub_100036728(*(v0 + 144));
  swift_getKeyPath();
  *(v0 + 152) = v1;
  sub_100058D88(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 104))
  {
    v4 = *(v0 + 216);
    v3 = *(v0 + 224);
    v5 = *(v0 + 192);
    v6 = *(v0 + 168);

    sub_1000081B0(0, &unk_100262480, WTContext_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 didBeginWritingToolsSession:v3 contexts:isa];

    [v4 writingToolsSession:v3 didReceiveAction:3];
    swift_getKeyPath();
    *(v0 + 160) = v6;
    sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = [*(v6 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration) baseResponse];
    if (v8)
    {
    }

    else
    {
      if ([*(v0 + 216) respondsToSelector:"beginTextPlaceholder"])
      {
        [*(v0 + 216) beginTextPlaceholder];
      }

      v9 = *(v0 + 216);
      v11 = *(v0 + 176);
      v10 = *(v0 + 184);
      v12 = *(v0 + 168);
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v11, 1, 1, v13);

      swift_unknownObjectRetain();
      v14 = static MainActor.shared.getter();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = &protocol witness table for MainActor;
      v15[4] = v12;
      v15[5] = v9;
      sub_10015C9C8(0, 0, v11, &unk_1001D2630, v15);
    }

    v16 = *(v0 + 216);
    v17 = *(v0 + 224);
    v19 = *(v0 + 176);
    v18 = *(v0 + 184);
    v20 = *(v0 + 168);
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);

    v22 = static MainActor.shared.getter();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = v20;
    sub_10015C9C8(0, 0, v19, &unk_1001D2640, v23);

    swift_unknownObjectRelease();
    v24 = *(v0 + 176);

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100050A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[16] = type metadata accessor for MainActor();
  v5[17] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v5[18] = v6;
  *v6 = v5;
  v6[1] = sub_100050B28;

  return sub_1000539AC();
}

uint64_t sub_100050B28(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 152) = a1;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100050C6C, v6, v5);
}

uint64_t sub_100050C6C()
{
  v1 = v0[19];
  v2 = v0[17];

  v3 = *(v1 + 24);
  if (v3 && (v4 = v0[19], (*(v4 + 40) & 1) == 0))
  {
    v16 = *(v1 + 16);
    v17 = *(v4 + 32);
    v18 = [v0[15] respondsToSelector:"endTextPlaceholderAndWillInsertText:completion:"];
    v19 = v0[19];
    if (v18)
    {
      v20 = v0[14];
      v28 = v0[15];

      String.text.getter();
      v21 = String.count.getter();

      v22 = swift_allocObject();
      v22[2] = v20;
      v22[3] = v16;
      v22[4] = v3;
      v22[5] = v17;
      v22[6] = v19;
      v0[12] = sub_1000590D8;
      v0[13] = v22;
      v0[8] = _NSConcreteStackBlock;
      v0[9] = 1107296256;
      v0[10] = sub_1001256BC;
      v0[11] = &unk_10024C5E8;
      v23 = _Block_copy(v0 + 8);

      [v28 endTextPlaceholderAndWillInsertText:v21 > 0 completion:v23];
      _Block_release(v23);
      v24 = v0[13];
    }

    else
    {
      v25 = v0[19];
    }
  }

  else
  {
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000F34C(v5, qword_100276F20);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unexpected base generation with unset text or warnings", v8, 2u);
    }

    v9 = v0[15];

    v10 = [v9 respondsToSelector:"endTextPlaceholderAndWillInsertText:completion:"];
    v11 = v0[19];
    if (v10)
    {
      v12 = v0[15];
      v0[6] = nullsub_1;
      v0[7] = 0;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_1001256BC;
      v0[5] = &unk_10024C598;
      v13 = _Block_copy(v0 + 2);
      [v12 endTextPlaceholderAndWillInsertText:0 completion:v13];

      _Block_release(v13);
      v14 = v0[7];
    }

    else
    {
      v15 = v0[19];
    }
  }

  v26 = v0[1];

  return v26();
}

void sub_100050F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration);
  String.text.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setBaseResponse:v9];

  if (a4 == 2)
  {
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000F34C(v17, qword_100276F20);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Ending smart replies due to flagged input", v20, 2u);
    }

    v21 = objc_allocWithZone(NSError);
    v15 = String._bridgeToObjectiveC()();
    v16 = [v21 initWithDomain:v15 code:4 userInfo:0];
    goto LABEL_13;
  }

  if (a4 == 1)
  {
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F34C(v10, qword_100276F20);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Ending smart replies due to flagged output", v13, 2u);
    }

    v14 = objc_allocWithZone(NSError);
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 initWithDomain:v15 code:2 userInfo:0];
LABEL_13:
    v22 = v16;

    sub_100036BF0(v22);
    goto LABEL_15;
  }

  sub_100056A34(a5);
LABEL_15:
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);
  if (!v23)
  {
    return;
  }

  if (!(v23 >> 62))
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    goto LABEL_18;
  }

  if (v23 < 0)
  {
    v28 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_18:
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000F34C(v24, qword_100276F20);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Ending questionnaire after longform base reply due to no questions", v27, 2u);
    }

    sub_100051DE8(1, 0, 0, 0);
  }
}

uint64_t sub_100051408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  v4[18] = v11;
  *v11 = v4;
  v11[1] = sub_100051570;

  return sub_1000526B8();
}

uint64_t sub_100051570(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 152) = a1;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000516B4, v6, v5);
}

uint64_t sub_1000516B4()
{
  v1 = v0[19];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v15 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[9];

  sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v1;
  v0[6] = sub_100058D80;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1001256BC;
  v0[5] = &unk_10024C520;
  v10 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_100058D88(&unk_100262460, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000341C(&unk_10025D5E0, &qword_1001DAE20);
  sub_100058DD0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v3, v15);
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

void sub_1000518EC(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (a2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((((v4 > 0) ^ *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__hasEntries)) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__hasEntries) = v4 > 0;
    if (v4 < 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (v4 >= 1)
  {
LABEL_7:
    sub_100056EE8();
    withObservationTracking<A>(_:onChange:)();
  }

LABEL_8:
  if (a2 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = [*(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration) baseResponse];
  if (v6)
  {

    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000F34C(v7, qword_100276F20);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Ending questionnaire due to no questions", v10, 2u);
    }

    sub_100051DE8(1, 0, 0, 0);
  }
}

void sub_100051C4C()
{
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F34C(v0, qword_100276F20);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Requested session revert...", v3, 2u);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
  }

  else
  {
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Unexpected nil delegate when reverting", v5, 2u);
    }
  }
}

void sub_100051DE8(char a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F34C(v9, qword_100276F20);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Requested session end...", v12, 2u);
  }

  swift_getKeyPath();
  aBlock[0] = v5;
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v5 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session);
  if (v13)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      swift_getKeyPath();
      aBlock[0] = v5;
      v32 = v13;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v5 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__longFormUpdateInProgress) == 1 && (swift_getKeyPath(), aBlock[0] = v5, ObservationRegistrar.access<A, B>(_:keyPath:)(), , !*(v5 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning)))
      {
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "Requested session end when update in progress, setting flag", v30, 2u);
        }

        if (*(v5 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__sessionEndRequested) == 1)
        {
          *(v5 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__sessionEndRequested) = 1;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          aBlock[0] = v5;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        if (a3)
        {
          a3();
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, v17, "Requested session end with pending content", v18, 2u);
        }

        if ([v15 respondsToSelector:"endTextPlaceholderAndWillInsertText:completion:"])
        {
          v19 = swift_allocObject();
          *(v19 + 16) = a2;
          *(v19 + 24) = v5;
          *(v19 + 32) = a1;
          *(v19 + 40) = v15;
          *(v19 + 48) = v32;
          *(v19 + 56) = a3;
          *(v19 + 64) = a4;
          aBlock[4] = sub_100058548;
          aBlock[5] = v19;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1001256BC;
          aBlock[3] = &unk_10024C458;
          v20 = _Block_copy(aBlock);
          swift_errorRetain();

          sub_100058574(a3);
          [v15 endTextPlaceholderAndWillInsertText:0 completion:v20];
          _Block_release(v20);
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      v24 = v13;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Unexpected nil delegate when ending session", v27, 2u);
      }

      if (a3)
      {
        a3();
      }
    }
  }

  else
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Unexpected nil session when ending session", v23, 2u);
    }

    if (a3)
    {
      a3();
    }
  }
}

void sub_1000523CC(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, void (*a6)(void))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000F34C(v7, qword_100276F20);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Ending writing tools with error: %@", v10, 0xCu);
      sub_10000F500(v11, &unk_10025D580, &qword_1001CFA60);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = _convertErrorToNSError(_:)();
      [v14 endWritingToolsWithError:v15];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v18 = a3 == 2;
    if (qword_10025A6E8 != -1)
    {
      v24 = a3;
      swift_once();
      a3 = v24;
    }

    v19 = v18 | a3;
    v20 = type metadata accessor for Logger();
    sub_10000F34C(v20, qword_100276F20);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = v19 & 1;
      _os_log_impl(&_mh_execute_header, v21, v22, "Ending session accepted: %{BOOL}d", v23, 8u);
    }

    [a4 didEndWritingToolsSession:a5 accepted:v19 & 1];
    [a4 endWritingTools];
  }

  sub_10004F6E4(0);
  if (a6)
  {
    a6();
  }
}

uint64_t sub_1000526B8()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100052750, v3, v2);
}

uint64_t sub_100052750()
{
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F20);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Requested questionnaire generation...", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_10005289C;
  v6 = *(v0 + 16);

  return sub_100052A28();
}

uint64_t sub_10005289C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = a1;

  v4 = *(v2 + 40);
  v5 = *(v2 + 32);

  return _swift_task_switch(sub_1000529C4, v5, v4);
}

uint64_t sub_1000529C4()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[7];

  return v2(v3);
}

uint64_t sub_100052A28()
{
  v1[52] = v0;
  v2 = type metadata accessor for DocumentFormat();
  v1[53] = v2;
  v3 = *(v2 - 8);
  v1[54] = v3;
  v4 = *(v3 + 64) + 15;
  v1[55] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[56] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[57] = v6;
  v1[58] = v5;

  return _swift_task_switch(sub_100052B1C, v6, v5);
}

void *sub_100052B1C()
{
  v1 = v0[52];
  swift_getKeyPath();
  v0[59] = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel___observationRegistrar;
  v0[45] = v1;
  v0[60] = sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = [*(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration) entryPoint];
  if (v2)
  {
    v3 = v2;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v25 = 0;
    v5 = 0xE000000000000000;
  }

  v0[61] = v5;
  v6 = v0[52];
  swift_getKeyPath();
  v0[46] = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
  v0[62] = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
  swift_beginAccess();
  sub_1000585FC(v6 + v7, (v0 + 12));
  if (v0[15])
  {
    sub_100028458((v0 + 12), (v0 + 37));
    sub_10000F500((v0 + 12), &unk_10025D568, &unk_1001D23B0);
    v8 = *sub_100027874(v0 + 37, v0[40]);
    sub_10014F404(IASignalSmartRepliesQuestionnaireRequested);
    sub_10000F4B4(v0 + 37);
  }

  else
  {
    sub_10000F500((v0 + 12), &unk_10025D568, &unk_1001D23B0);
  }

  v9 = v0[55];
  v10 = v0[52];
  v11 = type metadata accessor for TextComposerClient();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[63] = TextComposerClient.init()();
  swift_getKeyPath();
  v0[47] = v10;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v10 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory);
  v0[64] = v14;
  v15 = v14;
  static DocumentFormat.mail()();
  sub_1000057A8(_swiftEmptyArrayStorage);

  sub_10000341C(&qword_10025D598, &qword_1001E1780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v17;
  swift_getKeyPath();
  v0[48] = v10;
  sub_100058D88(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v10 + 24);
  if (result)
  {
    v19 = [result pid];
    *(inited + 72) = &type metadata for Int32;
    *(inited + 48) = v19;
    v20 = sub_1000057A8(inited);
    v0[65] = v20;
    swift_setDeallocating();
    sub_10000F500(inited + 32, &qword_10025D5A0, &qword_1001D45E0);
    v21 = *(&async function pointer to dispatch thunk of TextComposerClient.requestUserQuestionnaire(with:documentFormat:replyType:options:) + 1);
    v24 = (&async function pointer to dispatch thunk of TextComposerClient.requestUserQuestionnaire(with:documentFormat:replyType:options:) + async function pointer to dispatch thunk of TextComposerClient.requestUserQuestionnaire(with:documentFormat:replyType:options:));
    v22 = swift_task_alloc();
    v0[66] = v22;
    *v22 = v0;
    v22[1] = sub_100052F20;
    v23 = v0[55];

    return v24(v15, v23, v25, v5, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100052F20(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 528);
  v7 = *v3;
  v5[67] = a1;
  v5[68] = a2;
  v5[69] = v2;

  v8 = v4[65];
  v9 = v4[64];
  v10 = v4[63];
  if (v2)
  {
    v11 = v5[61];
    (*(v5[54] + 8))(v5[55], v5[53]);

    v12 = v5[57];
    v13 = v5[58];
    v14 = sub_1000536F8;
  }

  else
  {
    (*(v5[54] + 8))(v5[55], v5[53]);

    v12 = v5[57];
    v13 = v5[58];
    v14 = sub_1000530F4;
  }

  return _swift_task_switch(v14, v12, v13);
}

void sub_1000530F4()
{
  v53 = v0;
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 536);
  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F20);
  v2 = v4;
  v3 = Logger.logObject.getter();
  LOBYTE(v4) = static os_log_type_t.default.getter();
  v49 = v0;
  if (!os_log_type_enabled(v3, v4))
  {

    v3 = *(v0 + 536);
    goto LABEL_9;
  }

  v5 = *(v0 + 536);
  v6 = swift_slowAlloc();
  *v6 = 134217984;
  v7 = [v5 entries];
  if (v7)
  {
    v8 = v7;
    sub_1000081B0(0, &unk_10025D5B0, TCSmartReplyUserQuestionnaireEntry_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v0 = v49;
      v11 = *(v49 + 536);

      *(v6 + 4) = i;

      _os_log_impl(&_mh_execute_header, v3, v4, "Received %ld questions", v6, 0xCu);

LABEL_9:
      v12 = *(v0 + 544);
      v13 = *(v49 + 496);
      v14 = *(v49 + 480);
      v15 = *(v49 + 472);
      v16 = *(v49 + 416);

      v17 = sub_10009D508(v12);
      sub_10004E440(v17, v18);
      swift_getKeyPath();
      *(v49 + 400) = v16;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v19 = v49;
      sub_1000585FC(v16 + v13, v49 + 216);
      if (*(v49 + 240))
      {
        v20 = *(v49 + 544);
        v21 = *(v49 + 536);
        sub_100028458(v49 + 216, v49 + 256);
        sub_10000F500(v49 + 216, &unk_10025D568, &unk_1001D23B0);
        v22 = *sub_100027874((v49 + 256), *(v49 + 280));
        sub_100151344(v20, v21);
        sub_10000F4B4((v49 + 256));
      }

      else
      {
        sub_10000F500(v49 + 216, &unk_10025D568, &unk_1001D23B0);
      }

      v23 = [*(v49 + 536) entries];
      if (!v23)
      {
        __break(1u);
        goto LABEL_33;
      }

      v24 = v23;
      v25 = *(v49 + 544);
      v26 = *(v49 + 488);
      v27 = *(v49 + 448);

      sub_1000081B0(0, &unk_10025D5B0, TCSmartReplyUserQuestionnaireEntry_ptr);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v4 >> 62)
      {
        v50 = _CocoaArrayWrapper.endIndex.getter();
        if (!v50)
        {
LABEL_26:
          v45 = *(v49 + 536);

          v44 = _swiftEmptyArrayStorage;
          goto LABEL_27;
        }
      }

      else
      {
        v50 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v50)
        {
          goto LABEL_26;
        }
      }

      v52 = _swiftEmptyArrayStorage;
      v3 = &v52;
      v6 = v50;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v50 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_31:
      ;
    }

    v28 = 0;
    v48 = v4 & 0xC000000000000001;
    v51 = *(v49 + 552);
    do
    {
      if (v48)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v30 = *(v4 + 8 * v28 + 32);
      }

      v31 = v30;
      v32 = type metadata accessor for QuestionnaireEntry();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      v35 = swift_allocObject();
      UUID.init()();
      v36 = (v35 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
      *v36 = 0;
      v36[1] = 0;
      v37 = (v35 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer);
      *v37 = 0;
      v37[1] = 0;
      v38 = v35 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex;
      *v38 = 0;
      *(v38 + 8) = 1;
      *(v35 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_maxStringLength) = 10;
      ObservationRegistrar.init()();
      *(v35 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry) = v31;
      v39 = (v35 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
      if (*(v35 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8))
      {
        swift_getKeyPath();
        v40 = swift_task_alloc();
        v40[3] = 0;
        v40[4] = 0;
        v40[2] = v35;
        *(v49 + 408) = v35;
        sub_100058D88(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
        v41 = v4;
        v42 = v31;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v4 = v41;
      }

      else
      {
        *v39 = 0;
        v39[1] = 0;
      }

      ++v28;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v29 = v52[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v50 != v28);
    v19 = v49;
    v43 = *(v49 + 536);

    v44 = v52;
LABEL_27:
    v46 = *(v19 + 440);

    v47 = *(v19 + 8);

    v47(v44);
  }

  else
  {
LABEL_33:

    __break(1u);
  }
}

uint64_t sub_1000536F8()
{
  v1 = v0[69];
  v2 = v0[56];
  v3 = v0[52];

  swift_errorRetain();
  sub_100036BF0(v1);
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v4 = v0[69];
  v5 = type metadata accessor for Logger();
  sub_10000F34C(v5, qword_100276F20);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[69];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error generating questionnaire: %@", v9, 0xCu);
    sub_10000F500(v10, &unk_10025D580, &qword_1001CFA60);
  }

  v12 = v0[62];
  v14 = v0[59];
  v13 = v0[60];
  v15 = v0[52];

  swift_getKeyPath();
  v0[49] = v15;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000585FC(v15 + v12, (v0 + 17));
  v16 = v0[69];
  if (v0[20])
  {
    sub_100028458((v0 + 17), (v0 + 22));
    sub_10000F500((v0 + 17), &unk_10025D568, &unk_1001D23B0);
    v17 = sub_100027874(v0 + 22, v0[25]);
    v18 = IASignalSmartRepliesQuestionnaireNotShown;
    v19 = sub_1000057A8(_swiftEmptyArrayStorage);
    v20 = *v17;
    sub_10014FE30(v18, v19);

    sub_10000F4B4(v0 + 22);
  }

  else
  {
    v21 = v0[69];

    sub_10000F500((v0 + 17), &unk_10025D568, &unk_1001D23B0);
  }

  v22 = v0[55];

  v23 = v0[1];

  return v23(_swiftEmptyArrayStorage);
}

uint64_t sub_1000539AC()
{
  v1[76] = v0;
  v2 = type metadata accessor for Logger();
  v1[77] = v2;
  v3 = *(v2 - 8);
  v1[78] = v3;
  v4 = *(v3 + 64) + 15;
  v1[79] = swift_task_alloc();
  v5 = type metadata accessor for DocumentFormat();
  v1[80] = v5;
  v6 = *(v5 - 8);
  v1[81] = v6;
  v7 = *(v6 + 64) + 15;
  v1[82] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[83] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[84] = v9;
  v1[85] = v8;

  return _swift_task_switch(sub_100053B00, v9, v8);
}

void *sub_100053B00()
{
  v45 = v0;
  v1 = v0[76];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = v0[76];
    swift_unknownObjectRelease();
    swift_getKeyPath();
    v0[86] = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel___observationRegistrar;
    v0[66] = v2;
    v0[87] = sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = [*(v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration) entryPoint];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0xE000000000000000;
    }

    v0[88] = v7;
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v0[89] = sub_10000F34C(v0[77], qword_100276F20);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = 0xEC000000676E6972;
      v20 = 0x74535F7974706D45;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44 = v22;
      *v21 = 136380675;
      if ((v5 || v7 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v0[62] = v5;
        v0[63] = v7;
        sub_10002AC34();
        v0[75] = StringProtocol.hash.getter();
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v23;
      }

      v24 = sub_10002510C(v20, v19, &v44);

      *(v21 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Requested long form base generation for entry point hash: %{private}s", v21, 0xCu);
      sub_10000F4B4(v22);
    }

    v25 = v0[76];
    sub_10000341C(&qword_10025D598, &qword_1001E1780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001CF9D0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v27;
    swift_getKeyPath();
    v0[74] = v25;
    sub_100058D88(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    result = *(v25 + 24);
    if (result)
    {
      v28 = v0[76];
      v29 = [result pid];
      *(inited + 72) = &type metadata for Int32;
      *(inited + 48) = v29;
      v30 = sub_1000057A8(inited);
      v0[90] = v30;
      swift_setDeallocating();
      sub_10000F500(inited + 32, &qword_10025D5A0, &qword_1001D45E0);
      swift_getKeyPath();
      v0[73] = v28;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v31 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
      v0[91] = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
      swift_beginAccess();
      sub_1000585FC(v28 + v31, (v0 + 17));
      if (v0[20])
      {
        sub_100028458((v0 + 17), (v0 + 22));
        sub_10000F500((v0 + 17), &unk_10025D568, &unk_1001D23B0);
        v32 = *sub_100027874(v0 + 22, v0[25]);
        sub_10014F404(IASignalSmartRepliesInitialResponseRequested);
        sub_10000F4B4(v0 + 22);
      }

      else
      {
        sub_10000F500((v0 + 17), &unk_10025D568, &unk_1001D23B0);
      }

      v33 = v0[82];
      v34 = v0[76];
      v35 = type metadata accessor for TextComposerClient();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();
      v0[92] = TextComposerClient.init()();
      swift_getKeyPath();
      v0[71] = v34;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v38 = *(v34 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory);
      v0[93] = v38;
      v39 = v38;
      static DocumentFormat.mail()();
      v40 = *(&async function pointer to dispatch thunk of TextComposerClient.requestLongFormSmartReplies(with:documentFormat:replyType:options:) + 1);
      v43 = (&async function pointer to dispatch thunk of TextComposerClient.requestLongFormSmartReplies(with:documentFormat:replyType:options:) + async function pointer to dispatch thunk of TextComposerClient.requestLongFormSmartReplies(with:documentFormat:replyType:options:));

      v41 = swift_task_alloc();
      v0[94] = v41;
      *v41 = v0;
      v41[1] = sub_1000541F4;
      v42 = v0[82];

      return v43(v39, v42, v5, v7, v30);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = v0[83];

    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    sub_10000F34C(v0[77], qword_100276F20);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unexpected nil writingToolsDelegate for long form base generation with entries", v11, 2u);
    }

    type metadata accessor for ContentGeneration();
    v12 = swift_allocObject();
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 16) = 0;
    *(v12 + 40) = 1;
    *(v12 + 48) = 0;
    v13 = v0[82];
    v14 = v0[79];

    v15 = v0[1];

    return v15(v12);
  }

  return result;
}

uint64_t sub_1000541F4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 752);
  v7 = *(*v3 + 656);
  v8 = *(*v3 + 648);
  v9 = *(*v3 + 640);
  v10 = *v3;
  v5[95] = a1;
  v5[96] = a2;
  v5[97] = v2;

  (*(v8 + 8))(v7, v9);
  v11 = v4[93];
  v12 = v4[92];
  v13 = v4[90];
  if (v2)
  {
    v14 = v5[88];
    swift_bridgeObjectRelease_n();

    v15 = v5[85];
    v16 = v5[84];
    v17 = sub_100054920;
  }

  else
  {

    v15 = v5[85];
    v16 = v5[84];
    v17 = sub_1000543F8;
  }

  return _swift_task_switch(v17, v16, v15);
}

id sub_1000543F8()
{
  v1 = *(v0 + 768);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (!*(v1 + 16) || (v5 = v2, v6 = *(v0 + 768), , v7 = sub_10000511C(v5, v4), LOBYTE(v5) = v8, , (v5 & 1) == 0))
  {

    goto LABEL_11;
  }

  v9 = (v0 + 576);
  sub_10002B0D0(*(*(v0 + 768) + 56) + 32 * v7, v0 + 416);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v10 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  if (*v9 >= 2)
  {
    v10 = 2 * (*v9 == 2);
  }

  else
  {
    v10 = *v9;
  }

  v11 = *v9 >= 2 && *v9 != 2;
LABEL_12:
  result = [*(v0 + 760) responseTexts];
  if (result)
  {
    v13 = result;
    v14 = *(v0 + 720);
    v15 = *(v0 + 704);
    v16 = *(v0 + 664);

    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = *(v0 + 712);
    if (v17[2])
    {
      v20 = v17[4];
      v19 = v17[5];
      swift_bridgeObjectRetain_n();

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134283521;
        *(v0 + 512) = v20;
        *(v0 + 520) = v19;
        sub_10002AC34();
        *(v23 + 4) = StringProtocol.hash.getter();

        _os_log_impl(&_mh_execute_header, v21, v22, "Long form base generation with hashed response: %{private}ld", v23, 0xCu);
      }

      else
      {
      }

      v33 = *(v0 + 728);
      v34 = *(v0 + 696);
      v35 = *(v0 + 688);
      v36 = *(v0 + 608);
      swift_getKeyPath();
      *(v0 + 536) = v36;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_1000585FC(v36 + v33, v0 + 376);
      v37 = *(v0 + 768);
      if (*(v0 + 400))
      {
        sub_100028458(v0 + 376, v0 + 96);
        sub_10000F500(v0 + 376, &unk_10025D568, &unk_1001D23B0);
        v38 = sub_100027874((v0 + 96), *(v0 + 120));
        v39 = IASignalSmartRepliesInitialResponseCompleted;
        v40 = *v38;

        sub_10014F638(v39, v37, v20, v19);

        sub_10000F4B4((v0 + 96));
      }

      else
      {
        v41 = *(v0 + 768);

        sub_10000F500(v0 + 376, &unk_10025D568, &unk_1001D23B0);
      }

      v42 = *(v0 + 760);
      type metadata accessor for ContentGeneration();
      v43 = swift_allocObject();
      *(v43 + 16) = v20;
      *(v43 + 24) = v19;
      *(v43 + 32) = v10;
      *(v43 + 40) = v11;
    }

    else
    {

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Unexpected nil response for long form base generation", v26, 2u);
      }

      v27 = *(v0 + 728);
      v28 = *(v0 + 696);
      v29 = *(v0 + 688);
      v30 = *(v0 + 608);

      swift_getKeyPath();
      *(v0 + 560) = v30;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_1000585FC(v30 + v27, v0 + 296);
      v31 = *(v0 + 768);
      if (*(v0 + 320))
      {
        sub_100028458(v0 + 296, v0 + 216);
        sub_10000F500(v0 + 296, &unk_10025D568, &unk_1001D23B0);
        v32 = *sub_100027874((v0 + 216), *(v0 + 240));
        sub_10014FE30(IASignalSmartRepliesInitialResponseFailed, v31);

        sub_10000F4B4((v0 + 216));
      }

      else
      {
        v44 = *(v0 + 768);

        sub_10000F500(v0 + 296, &unk_10025D568, &unk_1001D23B0);
      }

      v42 = *(v0 + 760);
      type metadata accessor for ContentGeneration();
      v43 = swift_allocObject();
      *(v43 + 24) = 0;
      *(v43 + 32) = 0;
      *(v43 + 16) = 0;
      *(v43 + 40) = 1;
    }

    *(v43 + 48) = 0;

    v45 = *(v0 + 656);
    v46 = *(v0 + 632);

    v47 = *(v0 + 8);

    return v47(v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100054920()
{
  v1 = v0[97];
  v2 = v0[83];
  v3 = v0[79];
  v4 = v0[76];

  swift_errorRetain();
  swift_errorRetain();
  sub_100036BF0(v1);
  Logger.init()();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[97];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error occurred in long form reply base generation: %@", v8, 0xCu);
    sub_10000F500(v9, &unk_10025D580, &qword_1001CFA60);
  }

  v11 = v0[91];
  v12 = v0[87];
  v13 = v0[86];
  v14 = v0[79];
  v15 = v0[78];
  v16 = v0[77];
  v17 = v0[76];

  (*(v15 + 8))(v14, v16);
  swift_getKeyPath();
  v0[69] = v17;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000585FC(v17 + v11, (v0 + 32));
  if (v0[35])
  {
    v18 = v0[97];
    sub_100028458((v0 + 32), (v0 + 42));
    sub_10000F500((v0 + 32), &unk_10025D568, &unk_1001D23B0);
    v19 = sub_100027874(v0 + 42, v0[45]);
    v20 = IASignalSmartRepliesInitialResponseFailed;
    v21 = sub_1000057A8(_swiftEmptyArrayStorage);
    swift_getErrorValue();
    v23 = v0[59];
    v22 = v0[60];
    v24 = v0[61];
    Error.localizedDescription.getter();
    v25 = *v19;
    sub_10014FE30(v20, v21);

    sub_10000F4B4(v0 + 42);
  }

  else
  {
    sub_10000F500((v0 + 32), &unk_10025D568, &unk_1001D23B0);
  }

  v26 = v0[97];
  type metadata accessor for ContentGeneration();
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 16) = 0;
  *(v27 + 40) = 1;
  *(v27 + 48) = v1;

  v28 = v0[82];
  v29 = v0[79];

  v30 = v0[1];

  return v30(v27);
}

uint64_t sub_100054C2C()
{
  v1[66] = v0;
  type metadata accessor for MainActor();
  v1[67] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[68] = v3;
  v1[69] = v2;

  return _swift_task_switch(sub_100054CC8, v3, v2);
}

uint64_t sub_100054CC8()
{
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[70] = sub_10000F34C(v1, qword_100276F20);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Requested (re)generation of long form reply with entries", v4, 2u);
  }

  v5 = v0[66];

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[71] = Strong;
  if (!Strong)
  {
    v26 = v0[67];

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unexpected nil writingToolsDelegate for long form generation with entries", v29, 2u);
    }

    goto LABEL_26;
  }

  v7 = Strong;
  v8 = v0[66];
  swift_getKeyPath();
  v0[72] = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel___observationRegistrar;
  v0[65] = v8;
  v0[73] = sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v8 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);
  if (v9)
  {
    v10 = v0[66];
    swift_getKeyPath();
    v0[64] = v10;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration;
    v12 = [*(v10 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration) entryPoint];
    if (v12)
    {
      v53 = v7;
      v55 = v9;
      v13 = v0[66];
      v14 = v12;
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v0[74] = v16;
      swift_getKeyPath();
      v0[63] = v13;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v17 = [*(v10 + v11) baseResponse];
      if (!v17)
      {
        v36 = v0[67];

        v31 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v31, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v31, v37, "Unexpected missing baseResponse for long form generation with entries", v38, 2u);
        }

        goto LABEL_25;
      }

      v18 = v0[66];
      v19 = v17;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v0[75] = v21;
      swift_getKeyPath();
      v0[62] = v18;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v22 = *(v18 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session);
      v0[76] = v22;
      if (v22)
      {
        v23 = v0[66];
        [v53 writingToolsSession:v22 didReceiveAction:3];
        sub_100058778(v55);
        v54 = v24;
        v0[77] = v24;
        v25 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__longFormUpdateInProgress;
        v0[78] = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__longFormUpdateInProgress;
        if (*(v23 + v25) == 1)
        {
          *(v23 + v25) = 1;
        }

        else
        {
          v42 = v0[66];
          swift_getKeyPath();
          v43 = swift_task_alloc();
          *(v43 + 16) = v42;
          *(v43 + 24) = 1;
          v0[60] = v42;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        v0[79] = 0;
        v44 = v0[66];
        sub_100056EE8();
        swift_getKeyPath();
        v0[58] = v44;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v45 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
        v0[80] = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
        swift_beginAccess();
        sub_1000585FC(v44 + v45, (v0 + 22));
        if (v0[25])
        {
          sub_100028458((v0 + 22), (v0 + 37));
          sub_10000F500((v0 + 22), &unk_10025D568, &unk_1001D23B0);
          v46 = *sub_100027874(v0 + 37, v0[40]);
          sub_100150408(v55);

          sub_10000F4B4(v0 + 37);
        }

        else
        {

          sub_10000F500((v0 + 22), &unk_10025D568, &unk_1001D23B0);
        }

        v47 = v0[66];
        swift_getKeyPath();
        v0[52] = v47;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        sub_1000585FC(v44 + v45, (v0 + 32));
        if (v0[35])
        {
          sub_100028458((v0 + 32), (v0 + 7));
          sub_10000F500((v0 + 32), &unk_10025D568, &unk_1001D23B0);
          v48 = *sub_100027874(v0 + 7, v0[10]);
          sub_10014F404(IASignalSmartRepliesRewriteRequested);
          sub_10000F4B4(v0 + 7);
        }

        else
        {
          sub_10000F500((v0 + 32), &unk_10025D568, &unk_1001D23B0);
        }

        v49 = swift_task_alloc();
        v0[81] = v49;
        *v49 = v0;
        v49[1] = sub_10005553C;
        v50 = v0[66];

        return sub_100055F90(v52, v16, v51, v21, v54);
      }

      v39 = v0[67];

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_25;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Unexpected missing session for long form generation with entries";
      goto LABEL_24;
    }

    v35 = v0[67];

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Unexpected missing entryPoint for long form generation with entries";
      goto LABEL_24;
    }
  }

  else
  {
    v30 = v0[67];

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Unexpected missing entries for long form generation with entries";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v31, v32, v34, v33, 2u);
    }
  }

LABEL_25:

  swift_unknownObjectRelease();
LABEL_26:
  v40 = v0[1];

  return v40();
}

uint64_t sub_10005553C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 648);
  v4 = *(*v1 + 600);
  v5 = *(*v1 + 592);
  v9 = *v1;
  *(*v1 + 656) = a1;

  v6 = *(v2 + 552);
  v7 = *(v2 + 544);

  return _swift_task_switch(sub_1000556A4, v7, v6);
}

uint64_t sub_1000556A4()
{
  v1 = v0[82];
  v2 = v0[67];

  if (!*(v1 + 24))
  {
    v3 = v0[70];
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Unexpected nil response for long form generation with entries", v6, 2u);
    }

    v7 = v0[80];
    v8 = v0[73];
    v9 = v0[72];
    v10 = v0[66];

    swift_getKeyPath();
    v0[49] = v10;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1000585FC(v10 + v7, (v0 + 2));
    if (v0[5])
    {
      sub_100028458((v0 + 2), (v0 + 12));
      sub_10000F500((v0 + 2), &unk_10025D568, &unk_1001D23B0);
      v11 = sub_100027874(v0 + 12, v0[15]);
      v12 = IASignalSmartRepliesRewriteFailed;
      v13 = sub_1000057A8(_swiftEmptyArrayStorage);
      v14 = *v11;
      sub_10014FE30(v12, v13);

      sub_10000F4B4(v0 + 12);
    }

    else
    {
      sub_10000F500((v0 + 2), &unk_10025D568, &unk_1001D23B0);
    }
  }

  v15 = v0[82];
  v16 = *(v15 + 48);
  if (v16)
  {
    v17 = v0[70];
    v18 = *(v15 + 48);
    swift_errorRetain();
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Unexpected error during long form generation with entries %@", v21, 0xCu);
      sub_10000F500(v22, &unk_10025D580, &qword_1001CFA60);
    }

    v24 = v0[80];
    v25 = v0[73];
    v26 = v0[72];
    v27 = v0[66];

    swift_getKeyPath();
    v0[59] = v27;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1000585FC(v27 + v24, (v0 + 27));
    if (v0[30])
    {
      sub_100028458((v0 + 27), (v0 + 17));
      sub_10000F500((v0 + 27), &unk_10025D568, &unk_1001D23B0);
      v28 = sub_100027874(v0 + 17, v0[20]);
      v29 = IASignalSmartRepliesRewriteFailed;
      v30 = sub_1000057A8(_swiftEmptyArrayStorage);
      swift_getErrorValue();
      v32 = v0[42];
      v31 = v0[43];
      v33 = v0[44];
      Error.localizedDescription.getter();
      v34 = *v28;
      sub_10014FE30(v29, v30);

      sub_10000F4B4(v0 + 17);
    }

    else
    {
      sub_10000F500((v0 + 27), &unk_10025D568, &unk_1001D23B0);
    }

    v35 = v0[66];
    swift_errorRetain();
    sub_100036BF0(v16);
  }

  v36 = v0[73];
  v37 = v0[72];
  v38 = v0[66];
  swift_getKeyPath();
  v0[50] = v38;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__sessionEndRequested;
  if (*(v38 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__sessionEndRequested))
  {
    v40 = v0[70];
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Ending session mid-regeneration due to session end request", v43, 2u);
    }

    if (*(v38 + v39))
    {
      v44 = v0[79];
      v45 = v0[73];
      v46 = v0[72];
      v47 = v0[66];
      swift_getKeyPath();
      v48 = swift_task_alloc();
      *(v48 + 16) = v47;
      *(v48 + 24) = 0;
      v0[57] = v47;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v38 + v39) = 0;
      v50 = v0[79];
    }

    v51 = v0[66];
    sub_100051DE8(1, 0, 0, 0);
  }

  else
  {
    v49 = v0[79];
  }

  v52 = v0[82];
  if ((*(v52 + 40) & 1) == 0 && !*(v52 + 32))
  {
    goto LABEL_26;
  }

  v53 = v0[66];
  swift_getKeyPath();
  v0[51] = v53;
  sub_100058D88(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v53 + 144) == 1)
  {
    v52 = v0[82];
LABEL_26:
    v54 = v0[78];
    v55 = v0[66];
    sub_100056A34(v52);
    if (*(v55 + v54))
    {
      v56 = v0[73];
      v57 = v0[72];
      v58 = v0[66];
      swift_getKeyPath();
      v59 = swift_task_alloc();
      *(v59 + 16) = v58;
      *(v59 + 24) = 0;
      v0[56] = v58;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v0[66] + v0[78]) = 0;
    }

    v64 = v0[82];
    v65 = v0[77];
    v66 = v0[76];
    v67 = v0[71];
    v68 = v0[66];
    sub_100056EE8();

    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  if (*(v52 + 40) == 1)
  {
    v60 = v0[82];
    v61 = v0[77];
    v62 = v0[76];
    v63 = v0[71];

    swift_unknownObjectRelease();
  }

  else
  {
    v81 = *(v52 + 32);
    v69 = v0[70];
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "Long form regeneration has warnings, holding until allowed...", v72, 2u);
    }

    v73 = v0[82];
    v82 = v0[73];
    v83 = v0[76];
    v74 = v0[72];
    v84 = v0[71];
    v85 = v0[77];
    v75 = v0[66];

    swift_getKeyPath();
    v0[48] = v75;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v0[53] = v75;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v76 = *(v75 + 136);
    v77 = v76 | v81;
    sub_100037118(v76 | v81);
    *(v75 + 136) = v77;
    v0[54] = v75;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v78 = swift_task_alloc();
    *(v78 + 16) = v75;
    *(v78 + 24) = v73;
    v0[55] = v75;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_unknownObjectRelease();
  }

LABEL_35:
  v79 = v0[1];

  return v79();
}

uint64_t sub_100055F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[37] = a5;
  v6[38] = v5;
  v6[35] = a3;
  v6[36] = a4;
  v6[33] = a1;
  v6[34] = a2;
  v7 = type metadata accessor for Logger();
  v6[39] = v7;
  v8 = *(v7 - 8);
  v6[40] = v8;
  v9 = *(v8 + 64) + 15;
  v6[41] = swift_task_alloc();
  v10 = type metadata accessor for DocumentFormat();
  v6[42] = v10;
  v11 = *(v10 - 8);
  v6[43] = v11;
  v12 = *(v11 + 64) + 15;
  v6[44] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[45] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[46] = v14;
  v6[47] = v13;

  return _swift_task_switch(sub_1000560E8, v14, v13);
}

void *sub_1000560E8()
{
  v1 = v0[38];
  sub_10000341C(&qword_10025D598, &qword_1001E1780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  swift_getKeyPath();
  v0[29] = v1;
  sub_100058D88(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v1 + 24);
  if (result)
  {
    v5 = v0[44];
    v6 = v0[38];
    v7 = [result pid];
    *(inited + 72) = &type metadata for Int32;
    *(inited + 48) = v7;
    v8 = sub_1000057A8(inited);
    v0[48] = v8;
    swift_setDeallocating();
    sub_10000F500(inited + 32, &qword_10025D5A0, &qword_1001D45E0);
    v9 = type metadata accessor for TextComposerClient();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v0[49] = TextComposerClient.init()();
    swift_getKeyPath();
    v0[50] = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel___observationRegistrar;
    v0[30] = v6;
    v0[51] = sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = *(v6 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory);
    v0[52] = v12;
    v13 = v12;
    static DocumentFormat.mail()();
    v14 = *(&async function pointer to dispatch thunk of TextComposerClient.requestLongFormSmartReplies(with:documentFormat:replyType:baseResponse:userFilledQuestionnaire:options:) + 1);
    v22 = (&async function pointer to dispatch thunk of TextComposerClient.requestLongFormSmartReplies(with:documentFormat:replyType:baseResponse:userFilledQuestionnaire:options:) + async function pointer to dispatch thunk of TextComposerClient.requestLongFormSmartReplies(with:documentFormat:replyType:baseResponse:userFilledQuestionnaire:options:));

    v15 = swift_task_alloc();
    v0[53] = v15;
    *v15 = v0;
    v15[1] = sub_1000563A0;
    v16 = v0[44];
    v17 = v0[36];
    v18 = v0[37];
    v19 = v0[34];
    v20 = v0[35];
    v21 = v0[33];

    return v22(v13, v16, v21, v19, v20, v17, v18, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000563A0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 424);
  v6 = *(*v3 + 416);
  v7 = *(*v3 + 392);
  v8 = *(*v3 + 384);
  v9 = *(*v3 + 352);
  v10 = *(*v3 + 344);
  v11 = *(*v3 + 336);
  v12 = *v3;
  v4[54] = a1;
  v4[55] = a2;
  v4[56] = v2;

  (*(v10 + 8))(v9, v11);

  if (v2)
  {
    v13 = v4[48];

    v14 = v4[46];
    v15 = v4[47];
    v16 = sub_100056878;
  }

  else
  {
    v14 = v4[46];
    v15 = v4[47];
    v16 = sub_10005658C;
  }

  return _swift_task_switch(v16, v14, v15);
}

id sub_10005658C()
{
  result = [*(v0 + 432) responseTexts];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = *(v0 + 384);
  v4 = *(v0 + 360);

  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5[2])
  {
    v6 = v5[4];
    v7 = v5[5];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = *(v0 + 440);

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!*(v8 + 16) || (v12 = v9, v13 = *(v0 + 440), , v14 = sub_10000511C(v12, v11), LOBYTE(v13) = v15, , (v13 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_10002B0D0(*(*(v0 + 440) + 56) + 32 * v14, v0 + 176);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v16 = *(v0 + 256);
  if (v16 < 2)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v17 = v16 != 2;
  v16 = 2 * (v16 == 2);
LABEL_13:
  v18 = *(v0 + 400);
  v19 = *(v0 + 408);
  v20 = *(v0 + 304);
  swift_getKeyPath();
  *(v0 + 248) = v20;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
  swift_beginAccess();
  sub_1000585FC(v20 + v21, v0 + 96);
  v22 = *(v0 + 440);
  if (*(v0 + 120))
  {
    sub_100028458(v0 + 96, v0 + 136);
    sub_10000F500(v0 + 96, &unk_10025D568, &unk_1001D23B0);
    v23 = *sub_100027874((v0 + 136), *(v0 + 160));
    sub_10014F638(IASignalSmartRepliesRewriteCompleted, v22, v6, v7);

    sub_10000F4B4((v0 + 136));
  }

  else
  {
    v24 = *(v0 + 440);

    sub_10000F500(v0 + 96, &unk_10025D568, &unk_1001D23B0);
  }

  v25 = *(v0 + 432);
  type metadata accessor for ContentGeneration();
  v26 = swift_allocObject();
  *(v26 + 16) = v6;
  *(v26 + 24) = v7;
  *(v26 + 32) = v16;
  *(v26 + 40) = v17;
  *(v26 + 48) = 0;

  v27 = *(v0 + 352);
  v28 = *(v0 + 328);

  v29 = *(v0 + 8);

  return v29(v26);
}

uint64_t sub_100056878()
{
  v1 = v0[56];
  v2 = v0[45];
  v3 = v0[41];

  Logger.init()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[56];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error occurred in long form reply with entries generation: %@", v7, 0xCu);
    sub_10000F500(v8, &unk_10025D580, &qword_1001CFA60);
  }

  v10 = v0[56];
  v12 = v0[40];
  v11 = v0[41];
  v13 = v0[39];

  (*(v12 + 8))(v11, v13);
  type metadata accessor for ContentGeneration();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 16) = 0;
  *(v14 + 40) = 1;
  *(v14 + 48) = v10;
  v15 = v0[44];
  v16 = v0[41];

  v17 = v0[1];

  return v17(v14);
}

void sub_100056A34(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F34C(v10, qword_100276F20);
    v20 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v20, v11))
    {
      goto LABEL_19;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Unexpected nil text for performDidReceive";
    goto LABEL_18;
  }

  v3 = v1;
  v4 = *(a1 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_10025A6E8 == -1)
    {
LABEL_16:
      v14 = type metadata accessor for Logger();
      sub_10000F34C(v14, qword_100276F20);
      v20 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v20, v11))
      {
LABEL_19:

        return;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Unexpected nil writingToolsDelegate for performDidReceive";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v20, v11, v13, v12, 2u);

      goto LABEL_19;
    }

LABEL_34:
    swift_once();
    goto LABEL_16;
  }

  v6 = Strong;
  swift_getKeyPath();
  sub_100058D88(&qword_10025C140, type metadata accessor for ToolModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v1 + 104);
  if (!v7)
  {
    __break(1u);
    return;
  }

  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v15 = *(v3 + 104);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    if ((v7 & 0xC000000000000001) != 0)
    {

      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_9;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v7 + 32);
LABEL_9:
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_100057F80(v4, v2, v6, v8, 1, v3);
      swift_unknownObjectRelease();

      if (*(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__longFormUpdateInProgress))
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {
        *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__longFormUpdateInProgress) = 0;
      }

      sub_100056EE8();
      swift_unknownObjectRelease();

      return;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000F34C(v16, qword_100276F20);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Unexpected missing context for performDidReceive", v19, 2u);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_100056EE8()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = [*(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration) baseResponse];
  v3 = v2;
  if (v2)
  {
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__longFormUpdateInProgress);
    if (v5 == *(v1 + 112))
    {
      return sub_10003689C(v5);
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100058D88(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  LOBYTE(v5) = 1;
  if ((*(v1 + 112) & 1) == 0)
  {
    goto LABEL_9;
  }

  return sub_10003689C(v5);
}

uint64_t sub_10005712C()
{
  v1 = v0;
  v2 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F34C(v6, qword_100276F20);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Input warning was dismissed", v9, 2u);
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v1;
  sub_10015C9C8(0, 0, v5, &unk_1001D23C8, v12);
}

uint64_t sub_10005730C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000573A4, v6, v5);
}

uint64_t sub_1000573A4()
{
  v1 = v0[3];

  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F34C(v2, qword_100276F20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Input warning was dismissed, procceeding", v5, 2u);
  }

  v6 = v0[2];

  sub_1000574C8();
  v7 = v0[1];

  return v7();
}

void sub_1000574C8()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning);
  if (v2)
  {
    v3 = qword_10025A6E8;
    v4 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning);

    if (v3 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000F34C(v5, qword_100276F20);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Proceeding after input content warning", v8, 2u);
    }

    sub_100056A34(v2);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F34C(v10, qword_100276F20);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unexpected missing content generation for proceed", v13, 2u);
    }
  }
}

void sub_100057790()
{
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F34C(v0, qword_100276F20);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Ending session due to content warning cancel", v3, 2u);
  }

  sub_100051DE8(0, 0, 0, 0);
}

uint64_t sub_10005788C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
  swift_beginAccess();
  return sub_1000585FC(v5 + v3, a1);
}

uint64_t sub_100057954@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
  swift_beginAccess();
  return sub_1000585FC(v3 + v4, a2);
}

uint64_t sub_100057A1C(uint64_t a1, uint64_t *a2)
{
  sub_1000585FC(a1, v5);
  v3 = *a2;
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000F500(v5, &unk_10025D568, &unk_1001D23B0);
}

uint64_t sub_100057B0C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance;
  swift_beginAccess();
  sub_100058688(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100057B78()
{
  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);

  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage + 8);

  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning);

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance, &unk_10025D568, &unk_1001D23B0);
  v4 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  v6 = *(*(v5 - 8) + 8);

  return v6(v0 + v4, v5);
}

uint64_t sub_100057C64()
{
  v0 = ToolModel.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);

  v2 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage + 8);

  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning);

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__analyticsInstance, &unk_10025D568, &unk_1001D23B0);
  v4 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_100057D50()
{
  v0 = *sub_100057C64();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for QuestionnaireModel()
{
  result = qword_10025CD78;
  if (!qword_10025CD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100057DF8()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100057ED4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_100057F44@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContentGeneration();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_100057F80(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_100058D88(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(a6 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__session);
  if (v10)
  {
    v33 = a3;
    v11 = objc_allocWithZone(NSMutableAttributedString);
    v32 = v10;
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 initWithString:v12];

    v14 = [a4 attributedText];
    v15 = [v14 string];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v20 = [a4 attributedText];
      v21 = [v20 attributesAtIndex:0 effectiveRange:0];

      type metadata accessor for Key(0);
      sub_100058D88(&qword_10025D590, type metadata accessor for Key);
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v22.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v13 setAttributes:v22.super.isa range:0, String.count.getter()];
      v23 = v33;
    }

    else
    {
      if (qword_10025A6E8 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000F34C(v27, qword_100276F20);
      v22.super.isa = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      v23 = v33;
      if (os_log_type_enabled(v22.super.isa, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v22.super.isa, v28, "Unexpected empty string in writing tools context", v29, 2u);
      }
    }

    v30 = [a4 range];
    [v23 compositionSession:v32 didReceiveText:v13 replacementRange:v30 inContext:v31 finished:{a4, a5 & 1}];
  }

  else
  {
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000F34C(v24, qword_100276F20);
    v13 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v13, v25, "Unexpected missing session for didReceiveText", v26, 2u);
    }
  }
}