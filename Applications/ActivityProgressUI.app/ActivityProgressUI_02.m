uint64_t sub_100034494()
{
  v1 = type metadata accessor for APKDeviceLockState();
  v18 = *(v1 - 8);
  v19 = v1;
  v2 = *(v18 + 64);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v7 = *(v0 + 16);
  type metadata accessor for BackgroundActivitySession(0);
  sub_100039A08(&qword_10005B378, type metadata accessor for BackgroundActivitySession);
  StateObject.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v9 = [Strong systemApertureElementViewControllerProvider];

    if (v9)
    {
      v10 = [v9 systemApertureElementViewController];
      swift_unknownObjectRelease();
      v11 = [v10 systemApertureElementContext];

      [v11 requestTransitionToPreferredLayoutMode];
      swift_unknownObjectRelease();
    }
  }

  v12 = v0[3];
  v13 = v0[4];
  v14 = *(v0 + 40);
  type metadata accessor for BackgroundActivitySessionTask(0);
  sub_100039A08(&qword_10005B410, type metadata accessor for BackgroundActivitySessionTask);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = v20;
  v16 = v21;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10002D3EC(v15, v16);

  return (*(v18 + 8))(v4, v19);
}

uint64_t sub_1000347A4(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  type metadata accessor for BackgroundActivitySessionTask(0);
  sub_100039A08(&qword_10005B410, type metadata accessor for BackgroundActivitySessionTask);

  return StateObject.wrappedValue.getter();
}

uint64_t sub_100034834(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  type metadata accessor for BackgroundActivitySession(0);
  sub_100039A08(&qword_10005B378, type metadata accessor for BackgroundActivitySession);

  return StateObject.wrappedValue.getter();
}

uint64_t sub_1000348C4(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v13 = *(v2 - 8);
  v3 = *(v13 + 64);
  __chkstk_darwin(v2);
  v12 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  type metadata accessor for BackgroundActivitySessionTask(0);
  sub_100039A08(&qword_10005B410, type metadata accessor for BackgroundActivitySessionTask);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v14 == 1)
  {
    if (*(a1 + 48))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (v16)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        if (v15 == 4)
        {
          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.getter();

          if (v14 != 4)
          {
            if (qword_10005A1A0 != -1)
            {
              swift_once();
            }

            StateObject.wrappedValue.getter();
            swift_getKeyPath();
            swift_getKeyPath();
            v9 = v12;
            static Published.subscript.getter();

            sub_10001B02C(v9, 1);
            return (*(v13 + 8))(v9, v2);
          }
        }
      }
    }

    else
    {
      v10 = *(a1 + 56);
      type metadata accessor for APUISystemApertureLayoutState();
      sub_100039A08(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState);
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100034C90@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v99 = sub_100005D3C(&qword_10005C068, &qword_1000411A8);
  v2 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v100 = &v76 - v3;
  v91 = sub_100005D3C(&qword_10005C070, &qword_1000411B0);
  v80 = *(v91 - 8);
  v4 = v80[8];
  __chkstk_darwin(v91);
  v79 = &v76 - v5;
  v95 = sub_100005D3C(&qword_10005C078, &qword_1000411B8);
  v6 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v96 = &v76 - v7;
  v88 = sub_100005D3C(&qword_10005C080, &qword_1000411C0);
  v8 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v89 = &v76 - v9;
  v94 = sub_100005D3C(&qword_10005C088, &qword_1000411C8);
  v10 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v90 = &v76 - v11;
  v83 = type metadata accessor for Image.ResizingMode();
  v82 = *(v83 - 8);
  v12 = *(v82 + 64);
  __chkstk_darwin(v83);
  v81 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100005D3C(&qword_10005C090, &qword_1000411D0);
  v14 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v84 = &v76 - v15;
  v87 = sub_100005D3C(&qword_10005C098, &qword_1000411D8);
  v16 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v86 = &v76 - v17;
  v98 = sub_100005D3C(&qword_10005C0A0, &qword_1000411E0);
  v18 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v93 = &v76 - v19;
  v20 = type metadata accessor for UUID();
  v97 = *(v20 - 8);
  v21 = *(v97 + 64);
  v22 = __chkstk_darwin(v20);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v76 - v25;
  v27 = *(v1 + 24);
  v28 = *(v1 + 32);
  v92 = v1;
  v29 = *(v1 + 40);
  type metadata accessor for BackgroundActivitySession(0);
  sub_100039A08(&qword_10005B378, type metadata accessor for BackgroundActivitySession);
  v30 = StateObject.wrappedValue.getter();
  v31 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v32 = *(v30 + v31);

  if (!*(v32 + 16))
  {

    goto LABEL_8;
  }

  v33 = v97;
  (*(v97 + 16))(v24, v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v20);

  (*(v33 + 32))(v26, v24, v20);
  v34 = StateObject.wrappedValue.getter();
  v35 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  swift_beginAccess();
  v36 = *(v34 + v35);

  v37 = v33;
  if (!*(v36 + 16) || (v38 = sub_100029BB8(v26), (v39 & 1) == 0))
  {

    (*(v33 + 8))(v26, v20);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    sub_100037E68();
    return _ConditionalContent<>.init(storage:)();
  }

  v78 = *(*(v36 + 56) + 8 * v38);

  v40 = v92;
  if (*(v92 + 64))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
  }

  else
  {
    v42 = *v92;
    v43 = *(v92 + 8);
    v44 = *(v92 + 16);
    type metadata accessor for BackgroundActivitySessionTask(0);
    sub_100039A08(&qword_10005B410, type metadata accessor for BackgroundActivitySessionTask);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
  }

  v77 = v26;
  if (*&v104[0])
  {
    v80 = *&v104[0];
    Image.init(uiImage:)();
    v45 = v82;
    v46 = v81;
    v47 = v83;
    (*(v82 + 104))(v81, enum case for Image.ResizingMode.stretch(_:), v83);
    v79 = Image.resizable(capInsets:resizingMode:)();

    (*(v45 + 8))(v46, v47);
    v48 = *(v40 + 48);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v103 = 1;
    *&v102[6] = v104[0];
    *&v102[22] = v104[1];
    *&v102[38] = v104[2];
    v49 = *(v40 + 56);
    v50 = sub_100005D3C(&qword_10005C0D0, &qword_1000411E8);
    v51 = v84;
    v52 = &v84[*(v50 + 36)];
    v53 = type metadata accessor for RoundedRectangle();
    v54 = *(v53 + 20);
    v55 = enum case for RoundedCornerStyle.continuous(_:);
    v56 = type metadata accessor for RoundedCornerStyle();
    v57 = v20;
    v58 = *(*(v56 - 8) + 104);
    v58(&v52[v54], v55, v56);
    *v52 = v49;
    *(v52 + 1) = v49;
    v59 = sub_100005D3C(&qword_10005C100, &qword_100041200);
    *&v52[*(v59 + 36)] = 256;
    v60 = *&v102[16];
    *(v51 + 18) = *v102;
    *v51 = v79;
    *(v51 + 8) = 0;
    *(v51 + 16) = 1;
    *(v51 + 34) = v60;
    *(v51 + 50) = *&v102[32];
    *(v51 + 64) = *&v102[46];
    v61 = (v51 + *(v85 + 36));
    v58(&v61[*(v53 + 20)], v55, v56);
    v37 = v97;
    *v61 = v49;
    *(v61 + 1) = v49;
    *&v61[*(v59 + 36)] = 256;
    v20 = v57;
    sub_100038068();
    v62 = v86;
    View.accessibilityHidden(_:)();
    sub_10000619C(v51, &qword_10005C090, &qword_1000411D0);
    sub_1000064B0(v62, v89, &qword_10005C098, &qword_1000411D8);
    swift_storeEnumTagMultiPayload();
    sub_100037FAC();
    sub_100006260(&qword_10005C110, &qword_10005C070, &qword_1000411B0);
    v63 = v90;
    _ConditionalContent<>.init(storage:)();
    sub_1000064B0(v63, v96, &qword_10005C088, &qword_1000411C8);
    swift_storeEnumTagMultiPayload();
    sub_100037EF4();
    v64 = v93;
    _ConditionalContent<>.init(storage:)();

    sub_10000619C(v63, &qword_10005C088, &qword_1000411C8);
    sub_10000619C(v62, &qword_10005C098, &qword_1000411D8);
  }

  else
  {
    v65 = *v40;
    v66 = *(v40 + 8);
    v67 = *(v40 + 16);
    type metadata accessor for BackgroundActivitySessionTask(0);
    sub_100039A08(&qword_10005B410, type metadata accessor for BackgroundActivitySessionTask);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v68 = *&v104[0];
    if (*&v104[0])
    {
      v69 = swift_allocObject();
      v70 = *(v40 + 48);
      *(v69 + 48) = *(v40 + 32);
      *(v69 + 64) = v70;
      *(v69 + 80) = *(v40 + 64);
      v71 = *(v40 + 16);
      *(v69 + 16) = *v40;
      *(v69 + 32) = v71;
      v86 = v68;
      sub_100038348(v40, v104);
      sub_100005D3C(&qword_10005C118, &qword_100041298);
      sub_100038380();
      v72 = v79;
      AsyncIconImage.init(icon:descriptor:transaction:content:)();
      v73 = v80;
      v74 = v91;
      (v80[2])(v89, v72, v91);
      swift_storeEnumTagMultiPayload();
      sub_100037FAC();
      sub_100006260(&qword_10005C110, &qword_10005C070, &qword_1000411B0);
      v75 = v90;
      _ConditionalContent<>.init(storage:)();
      sub_1000064B0(v75, v96, &qword_10005C088, &qword_1000411C8);
      swift_storeEnumTagMultiPayload();
      sub_100037EF4();
      v64 = v93;
      _ConditionalContent<>.init(storage:)();

      sub_10000619C(v75, &qword_10005C088, &qword_1000411C8);
      (v73[1])(v72, v74);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_100037EF4();
      v64 = v93;
      _ConditionalContent<>.init(storage:)();
    }
  }

  sub_1000064B0(v64, v100, &qword_10005C0A0, &qword_1000411E0);
  swift_storeEnumTagMultiPayload();
  sub_100037E68();
  _ConditionalContent<>.init(storage:)();

  sub_10000619C(v64, &qword_10005C0A0, &qword_1000411E0);
  return (*(v37 + 8))(v77, v20);
}

uint64_t sub_100035BA0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v42 = a1;
  v43 = a2;
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005D3C(&qword_10005C090, &qword_1000411D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v37 - v9;
  v11 = sub_100005D3C(&qword_10005C098, &qword_1000411D8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v15 = sub_100005D3C(&qword_10005C128, &qword_1000412A0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v37 - v17;
  v19 = AsyncIconImagePhase.image.getter();
  if (v19)
  {
    v20 = v19;
    (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
    v40 = Image.resizable(capInsets:resizingMode:)();
    (*(v3 + 8))(v6, v2);
    v21 = v42;
    v22 = *(v42 + 48);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v45 = 1;
    *&v44[6] = v46;
    *&v44[22] = v47;
    *&v44[38] = v48;
    v23 = *(v21 + 56);
    v24 = *(sub_100005D3C(&qword_10005C0D0, &qword_1000411E8) + 36);
    v38 = v14;
    v25 = &v10[v24];
    v26 = type metadata accessor for RoundedRectangle();
    v42 = v20;
    v27 = *(v26 + 20);
    v28 = enum case for RoundedCornerStyle.continuous(_:);
    v29 = type metadata accessor for RoundedCornerStyle();
    v30 = *(v29 - 8);
    v41 = v11;
    v31 = *(v30 + 104);
    v39 = v15;
    v31(&v25[v27], v28, v29);
    *v25 = v23;
    *(v25 + 1) = v23;
    v32 = sub_100005D3C(&qword_10005C100, &qword_100041200);
    *&v25[*(v32 + 36)] = 256;
    v33 = *&v44[16];
    *(v10 + 18) = *v44;
    *v10 = v40;
    *(v10 + 1) = 0;
    *(v10 + 8) = 1;
    *(v10 + 34) = v33;
    *(v10 + 50) = *&v44[32];
    *(v10 + 8) = *&v44[46];
    v34 = &v10[*(v7 + 36)];
    v31(&v34[*(v26 + 20)], v28, v29);
    *v34 = v23;
    *(v34 + 1) = v23;
    *&v34[*(v32 + 36)] = 256;
    sub_100038068();
    v35 = v38;
    View.accessibilityHidden(_:)();
    sub_10000619C(v10, &qword_10005C090, &qword_1000411D0);
    sub_1000064B0(v35, v18, &qword_10005C098, &qword_1000411D8);
    swift_storeEnumTagMultiPayload();
    sub_100037FAC();
    _ConditionalContent<>.init(storage:)();

    return sub_10000619C(v35, &qword_10005C098, &qword_1000411D8);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100037FAC();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100036028@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 64);
  v3 = *v1;
  v4 = v1[1];
  return sub_100034C90(a1);
}

uint64_t sub_10003606C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v100 = a4;
  v90 = type metadata accessor for UUID();
  v98 = *(v90 - 8);
  v7 = *(v98 + 64);
  v8 = __chkstk_darwin(v90);
  v88 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = &v87 - v10;
  v102 = sub_100005D3C(&qword_10005C130, &qword_1000412A8);
  v11 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v99 = &v87 - v12;
  v95 = sub_100005D3C(&qword_10005C138, &qword_1000412B0);
  v13 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v96 = &v87 - v14;
  v101 = sub_100005D3C(&qword_10005C140, &qword_1000412B8);
  v15 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101);
  v97 = &v87 - v16;
  v17 = type metadata accessor for Font.Leading();
  v91 = *(v17 - 8);
  v92 = v17;
  v18 = *(v91 + 64);
  __chkstk_darwin(v17);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v94 = sub_100005D3C(&qword_10005BBD0, &unk_1000412C0);
  v23 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v93 = &v87 - v24;
  type metadata accessor for BackgroundActivitySession(0);
  sub_100039A08(&qword_10005B378, type metadata accessor for BackgroundActivitySession);
  v25 = a3;
  v26 = a1;
  v27 = a2;
  v28 = StateObject.wrappedValue.getter();
  v29 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v30 = *(v28 + v29);

  v31 = *(v30 + 16);

  if (v31 >= 2)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v32._countAndFlagsBits = 43;
    v32._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v32);
    v33 = StateObject.wrappedValue.getter();
    v34 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
    swift_beginAccess();
    v35 = *(v33 + v34);

    v36 = *(v35 + 16);

    v103[0] = v36 - 1;
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v37);
    LocalizedStringKey.init(stringInterpolation:)();
    v38 = Text.init(_:tableName:bundle:comment:)();
    v40 = v39;
    v42 = v41;
    static Font.subheadline.getter();
    v44 = v91;
    v43 = v92;
    (*(v91 + 104))(v20, enum case for Font.Leading.tight(_:), v92);
    Font.leading(_:)();

    (*(v44 + 8))(v20, v43);
    v45 = Text.font(_:)();
    v47 = v46;
    LOBYTE(v43) = v48;

    sub_10002B5F8(v38, v40, v42 & 1);

    LODWORD(v103[0]) = static HierarchicalShapeStyle.primary.getter();
    v49 = Text.foregroundStyle<A>(_:)();
    v51 = v50;
    LOBYTE(v38) = v52;
    v54 = v53;
    sub_10002B5F8(v45, v47, v43 & 1);

    KeyPath = swift_getKeyPath();
    v56 = sub_100005D3C(&qword_10005BBE8, &qword_100040828);
    v57 = v93;
    v58 = &v93[*(v56 + 36)];
    v59 = *(sub_100005D3C(&qword_10005BBF0, &qword_100040830) + 28);
    v60 = enum case for Text.TruncationMode.tail(_:);
    v61 = type metadata accessor for Text.TruncationMode();
    (*(*(v61 - 8) + 104))(v58 + v59, v60, v61);
    *v58 = swift_getKeyPath();
    *v57 = v49;
    *(v57 + 8) = v51;
    *(v57 + 16) = v38 & 1;
    *(v57 + 24) = v54;
    *(v57 + 32) = KeyPath;
    *(v57 + 40) = 1;
    *(v57 + 48) = 0;
    *(v57 + *(v94 + 36)) = 0x3FE0000000000000;
    sub_1000064B0(v57, v96, &qword_10005BBD0, &unk_1000412C0);
    swift_storeEnumTagMultiPayload();
    sub_100005D3C(&qword_10005C158, &qword_1000412D8);
    sub_10002B6A4();
    sub_100038498();
    v62 = v97;
    _ConditionalContent<>.init(storage:)();
    sub_1000064B0(v62, v99, &qword_10005C140, &qword_1000412B8);
    swift_storeEnumTagMultiPayload();
    sub_10003840C();
    _ConditionalContent<>.init(storage:)();
    sub_10000619C(v62, &qword_10005C140, &qword_1000412B8);
    return sub_10000619C(v57, &qword_10005BBD0, &unk_1000412C0);
  }

  v64 = StateObject.wrappedValue.getter();
  v65 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v66 = *(v64 + v65);

  if (!*(v66 + 16))
  {

    goto LABEL_10;
  }

  v67 = v25;
  v68 = v98;
  v69 = v88;
  v70 = v90;
  (*(v98 + 16))(v88, v66 + ((*(v68 + 80) + 32) & ~*(v68 + 80)), v90);

  v71 = v89;
  (*(v68 + 32))(v89, v69, v70);
  LODWORD(v91) = v67;
  v92 = v26;
  v93 = v27;
  v72 = StateObject.wrappedValue.getter();
  v73 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  swift_beginAccess();
  v74 = *(v72 + v73);

  v75 = v99;
  if (!*(v74 + 16) || (v76 = sub_100029BB8(v71), (v77 & 1) == 0))
  {

    (*(v98 + 8))(v71, v70);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    sub_10003840C();
    return _ConditionalContent<>.init(storage:)();
  }

  v78 = *(*(v74 + 56) + 8 * v76);

  v88 = v78;

  v79 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

  if (v79 == 1)
  {
    v80 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession);
  }

  else
  {
    v80 = 0;
  }

  v81 = v96;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v107 = 0;
  *&v106[5] = v108;
  *&v106[37] = v110;
  *&v106[21] = v109;
  *&v104 = sub_100006250;
  *(&v104 + 1) = v88;
  *v105 = 0;
  v105[2] = v80;
  *&v105[3] = *v106;
  *&v105[48] = *(&v110 + 1);
  *&v105[35] = *&v106[32];
  *&v105[19] = *&v106[16];
  v82 = v104;
  v83 = *v105;
  v84 = *&v105[16];
  v85 = *&v105[32];
  *(v81 + 64) = *&v105[48];
  *(v81 + 32) = v84;
  *(v81 + 48) = v85;
  *v81 = v82;
  *(v81 + 16) = v83;
  swift_storeEnumTagMultiPayload();
  sub_1000064B0(&v104, v103, &qword_10005C158, &qword_1000412D8);
  sub_100005D3C(&qword_10005C158, &qword_1000412D8);
  sub_10002B6A4();
  sub_100038498();
  v86 = v97;
  _ConditionalContent<>.init(storage:)();
  sub_1000064B0(v86, v75, &qword_10005C140, &qword_1000412B8);
  swift_storeEnumTagMultiPayload();
  sub_10003840C();
  _ConditionalContent<>.init(storage:)();

  sub_10000619C(&v104, &qword_10005C158, &qword_1000412D8);
  sub_10000619C(v86, &qword_10005C140, &qword_1000412B8);
  return (*(v98 + 8))(v89, v90);
}

uint64_t sub_100036C2C@<X0>(uint64_t *a1@<X8>)
{
  result = UUID.uuidString.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100036C68()
{
  result = qword_10005C048;
  if (!qword_10005C048)
  {
    sub_100005F90(&qword_10005C038, &qword_100041160);
    sub_100039A08(&qword_10005C050, type metadata accessor for BackgroundActivityTaskView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C048);
  }

  return result;
}

uint64_t type metadata accessor for BackgroundActivityTaskView()
{
  result = qword_10005C1C0;
  if (!qword_10005C1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100036D68@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v88 = a1;
  v92 = a3;
  v91 = sub_100005D3C(&qword_10005C388, &qword_100041810);
  v4 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v6 = v73 - v5;
  v81 = sub_100005D3C(&qword_10005C390, &qword_100041818);
  v7 = *(*(v81 - 8) + 64);
  v8 = __chkstk_darwin(v81);
  v80 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = v73 - v10;
  v11 = type metadata accessor for DynamicTypeSize();
  v85 = *(v11 - 8);
  v12 = *(v85 + 64);
  v13 = __chkstk_darwin(v11);
  v84 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v83 = v73 - v15;
  v79 = sub_100005D3C(&qword_10005C398, &qword_100041820);
  v16 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v78 = v73 - v17;
  v87 = sub_100005D3C(&qword_10005C3A0, &qword_100041828);
  v18 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v82 = v73 - v19;
  v89 = sub_100005D3C(&qword_10005C3A8, &qword_100041830);
  v20 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v22 = v73 - v21;
  v86 = sub_100005D3C(&qword_10005C3B0, &qword_100041838);
  v23 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v25 = v73 - v24;
  v90 = sub_100005D3C(&qword_10005C3B8, &qword_100041840);
  v26 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v28 = v73 - v27;
  v29 = sub_100005D3C(&qword_10005C3C0, &qword_100041848);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = v73 - v31;
  v33 = sub_100005D3C(&qword_10005C3C8, &qword_100041850);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33);
  v37 = v73 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v35);
  v40 = v73 - v39;
  if ((a2 & 0x100) != 0)
  {
    v46 = v38;
    v47 = [objc_opt_self() mainScreen];
    [v47 bounds];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;

    v96.origin.x = v49;
    v96.origin.y = v51;
    v96.size.width = v53;
    v96.size.height = v55;
    CGRectGetWidth(v96);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v56 = sub_100005D3C(&qword_10005C3D0, &qword_100041858);
    (*(*(v56 - 8) + 16))(v32, v88, v56);
    v57 = &v32[*(v29 + 36)];
    v58 = v94;
    *v57 = v93;
    *(v57 + 1) = v58;
    *(v57 + 2) = v95;
    sub_10002B908(v32, v37, &qword_10005C3C0, &qword_100041848);
    *&v37[*(v46 + 36)] = 256;
    sub_10002B908(v37, v40, &qword_10005C3C8, &qword_100041850);
    sub_1000064B0(v40, v25, &qword_10005C3C8, &qword_100041850);
    swift_storeEnumTagMultiPayload();
    sub_10003975C();
    sub_1000398AC();
    _ConditionalContent<>.init(storage:)();
    sub_1000064B0(v28, v22, &qword_10005C3B8, &qword_100041840);
    swift_storeEnumTagMultiPayload();
    sub_1000396D0();
    sub_100039808(&qword_10005C408, &qword_10005C388, &qword_100041810);
    _ConditionalContent<>.init(storage:)();
    sub_10000619C(v28, &qword_10005C3B8, &qword_100041840);
    v43 = v40;
    v44 = &qword_10005C3C8;
    v45 = &qword_100041850;
    return sub_10000619C(v43, v44, v45);
  }

  v74 = v25;
  v75 = v28;
  v76 = v22;
  v41 = v91;
  if ((a2 & 0x1000000) == 0)
  {
    v42 = sub_100005D3C(&qword_10005C3D0, &qword_100041858);
    (*(*(v42 - 8) + 16))(v6, v88, v42);
    *&v6[*(v41 + 36)] = 256;
    sub_1000064B0(v6, v76, &qword_10005C388, &qword_100041810);
    swift_storeEnumTagMultiPayload();
    sub_1000396D0();
    sub_100039808(&qword_10005C408, &qword_10005C388, &qword_100041810);
    _ConditionalContent<>.init(storage:)();
    v43 = v6;
    v44 = &qword_10005C388;
    v45 = &qword_100041810;
    return sub_10000619C(v43, v44, v45);
  }

  v73[1] = v38;
  v60 = v85;
  v61 = *(v85 + 104);
  v62 = v83;
  v61(v83, enum case for DynamicTypeSize.xSmall(_:), v11);
  v63 = v84;
  v61(v84, enum case for DynamicTypeSize.large(_:), v11);
  sub_100039A08(&qword_10005C410, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v64 = *(v60 + 32);
    v65 = v77;
    v64(v77, v62, v11);
    v66 = v81;
    v64((v65 + *(v81 + 48)), v63, v11);
    v67 = v80;
    sub_1000064B0(v65, v80, &qword_10005C390, &qword_100041818);
    v68 = *(v66 + 48);
    v69 = v78;
    v64(v78, v67, v11);
    v70 = *(v60 + 8);
    v70(v67 + v68, v11);
    sub_10002B908(v65, v67, &qword_10005C390, &qword_100041818);
    v64((v69 + *(v79 + 36)), (v67 + *(v66 + 48)), v11);
    v70(v67, v11);
    sub_100005D3C(&qword_10005C3D0, &qword_100041858);
    sub_100006260(&qword_10005C3F0, &qword_10005C3D0, &qword_100041858);
    sub_100006260(&qword_10005C400, &qword_10005C398, &qword_100041820);
    v71 = v82;
    View.dynamicTypeSize<A>(_:)();
    sub_10000619C(v69, &qword_10005C398, &qword_100041820);
    *(v71 + *(v87 + 36)) = 256;
    sub_1000064B0(v71, v74, &qword_10005C3A0, &qword_100041828);
    swift_storeEnumTagMultiPayload();
    sub_10003975C();
    sub_1000398AC();
    v72 = v75;
    _ConditionalContent<>.init(storage:)();
    sub_1000064B0(v72, v76, &qword_10005C3B8, &qword_100041840);
    swift_storeEnumTagMultiPayload();
    sub_1000396D0();
    sub_100039808(&qword_10005C408, &qword_10005C388, &qword_100041810);
    _ConditionalContent<>.init(storage:)();
    sub_10000619C(v72, &qword_10005C3B8, &qword_100041840);
    return sub_10000619C(v71, &qword_10005C3A0, &qword_100041828);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000378C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[3])
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  if (v2[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_100036D68(a1, v5 | *v2 | v4 | v3, a2);
}

uint64_t sub_100037904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100005D3C(&qword_10005C360, &qword_1000417F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v28 - v7;
  v9 = sub_100005D3C(&qword_10005C368, &qword_100041800);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v28 - v12;
  if (*v2)
  {
    v28[1] = a1;
    v28[2] = v5;
    v28[3] = a2;
    if (*(v2 + 8))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v15 = *(v2 + 24);
      v14 = *(v2 + 32);
      v16 = sub_100005D3C(&qword_10005C370, &qword_100041808);
      type metadata accessor for SBUISystemApertureLayoutMode(0);
      v18 = v17;
      v19 = sub_100006260(&qword_10005C378, &qword_10005C370, &qword_100041808);
      v20 = sub_100039A08(&qword_10005C380, type metadata accessor for SBUISystemApertureLayoutMode);
      View.onChange<A>(of:initial:_:)();
      (*(v10 + 16))(v8, v13, v9);
      swift_storeEnumTagMultiPayload();
      v29 = v16;
      v30 = v18;
      v31 = v19;
      v32 = v20;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      return (*(v10 + 8))(v13, v9);
    }

    else
    {
      v27 = *(v2 + 16);
      type metadata accessor for APUISystemApertureLayoutState();
      sub_100039A08(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState);
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  else
  {
    v22 = sub_100005D3C(&qword_10005C370, &qword_100041808);
    (*(*(v22 - 8) + 16))(v8, a1, v22);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SBUISystemApertureLayoutMode(255);
    v24 = v23;
    v25 = sub_100006260(&qword_10005C378, &qword_10005C370, &qword_100041808);
    v26 = sub_100039A08(&qword_10005C380, type metadata accessor for SBUISystemApertureLayoutMode);
    v29 = v22;
    v30 = v24;
    v31 = v25;
    v32 = v26;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  return result;
}

uint64_t sub_100037D58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1000062A8();

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100037D94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_100031AC4();
}

uint64_t sub_100037E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundActivityTaskView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100037E68()
{
  result = qword_10005C0A8;
  if (!qword_10005C0A8)
  {
    sub_100005F90(&qword_10005C0A0, &qword_1000411E0);
    sub_100037EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C0A8);
  }

  return result;
}

unint64_t sub_100037EF4()
{
  result = qword_10005C0B0;
  if (!qword_10005C0B0)
  {
    sub_100005F90(&qword_10005C088, &qword_1000411C8);
    sub_100037FAC();
    sub_100006260(&qword_10005C110, &qword_10005C070, &qword_1000411B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C0B0);
  }

  return result;
}

unint64_t sub_100037FAC()
{
  result = qword_10005C0B8;
  if (!qword_10005C0B8)
  {
    sub_100005F90(&qword_10005C098, &qword_1000411D8);
    sub_100038068();
    sub_100039A08(&qword_10005C108, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C0B8);
  }

  return result;
}

unint64_t sub_100038068()
{
  result = qword_10005C0C0;
  if (!qword_10005C0C0)
  {
    sub_100005F90(&qword_10005C090, &qword_1000411D0);
    sub_100038120();
    sub_100006260(&qword_10005C0F8, &qword_10005C100, &qword_100041200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C0C0);
  }

  return result;
}

unint64_t sub_100038120()
{
  result = qword_10005C0C8;
  if (!qword_10005C0C8)
  {
    sub_100005F90(&qword_10005C0D0, &qword_1000411E8);
    sub_1000381D8();
    sub_100006260(&qword_10005C0F8, &qword_10005C100, &qword_100041200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C0C8);
  }

  return result;
}

unint64_t sub_1000381D8()
{
  result = qword_10005C0D8;
  if (!qword_10005C0D8)
  {
    sub_100005F90(&qword_10005C0E0, &qword_1000411F0);
    sub_100038264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C0D8);
  }

  return result;
}

unint64_t sub_100038264()
{
  result = qword_10005C0E8;
  if (!qword_10005C0E8)
  {
    sub_100005F90(&qword_10005C0F0, &qword_1000411F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C0E8);
  }

  return result;
}

uint64_t sub_1000382F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1000062A8();
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_1000062A8();

  return _swift_deallocObject(v0, 81, 7);
}

unint64_t sub_100038380()
{
  result = qword_10005C120;
  if (!qword_10005C120)
  {
    sub_100005F90(&qword_10005C118, &qword_100041298);
    sub_100037FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C120);
  }

  return result;
}

unint64_t sub_10003840C()
{
  result = qword_10005C148;
  if (!qword_10005C148)
  {
    sub_100005F90(&qword_10005C140, &qword_1000412B8);
    sub_10002B6A4();
    sub_100038498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C148);
  }

  return result;
}

unint64_t sub_100038498()
{
  result = qword_10005C150;
  if (!qword_10005C150)
  {
    sub_100005F90(&qword_10005C158, &qword_1000412D8);
    sub_100017EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C150);
  }

  return result;
}

uint64_t sub_100038524@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100038558@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10003858C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_1000385BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_100038660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100038784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = sub_100005D3C(&qword_10005C160, &unk_100041340);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100038860(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 48) = a2;
  }

  else
  {
    v7 = sub_100005D3C(&qword_10005C160, &unk_100041340);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100038910()
{
  sub_1000389C4();
  if (v0 <= 0x3F)
  {
    sub_100038A58();
    if (v1 <= 0x3F)
    {
      sub_100038AEC();
      if (v2 <= 0x3F)
      {
        sub_100038B80();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000389C4()
{
  if (!qword_10005C1D0)
  {
    type metadata accessor for BackgroundActivitySession(255);
    sub_100039A08(&qword_10005B378, type metadata accessor for BackgroundActivitySession);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10005C1D0);
    }
  }
}

void sub_100038A58()
{
  if (!qword_10005C1D8)
  {
    type metadata accessor for BackgroundActivitySessionTask(255);
    sub_100039A08(&qword_10005B410, type metadata accessor for BackgroundActivitySessionTask);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10005C1D8);
    }
  }
}

void sub_100038AEC()
{
  if (!qword_10005C1E0)
  {
    type metadata accessor for APUISystemApertureLayoutState();
    sub_100039A08(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10005C1E0);
    }
  }
}

void sub_100038B80()
{
  if (!qword_10005C1E8)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10005C1E8);
    }
  }
}

unint64_t sub_100038BDC()
{
  result = qword_10005C220;
  if (!qword_10005C220)
  {
    sub_100005F90(&qword_10005C058, &qword_100041168);
    sub_100038C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C220);
  }

  return result;
}

unint64_t sub_100038C68()
{
  result = qword_10005C228;
  if (!qword_10005C228)
  {
    sub_100005F90(&qword_10005C020, &qword_100041110);
    sub_100006260(&qword_10005C230, &qword_10005C018, &qword_100041108);
    sub_100006260(&qword_10005C238, &qword_10005C240, "~|");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C228);
  }

  return result;
}

unint64_t sub_100038D50()
{
  result = qword_10005C248;
  if (!qword_10005C248)
  {
    sub_100005F90(&qword_10005C250, &qword_100041378);
    sub_100037E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C248);
  }

  return result;
}

unint64_t sub_100038DE0()
{
  result = qword_10005C258;
  if (!qword_10005C258)
  {
    sub_100005F90(&qword_10005C260, &qword_100041380);
    sub_10003840C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C258);
  }

  return result;
}

uint64_t sub_100038E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundActivityTaskView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038F5C()
{
  v1 = *(type metadata accessor for BackgroundActivityTaskView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_100034494();
}

unint64_t sub_100038FB8()
{
  result = qword_10005C2C0;
  if (!qword_10005C2C0)
  {
    sub_100005F90(&qword_10005C2B8, &qword_100041470);
    sub_100006260(&qword_10005C2C8, &qword_10005C2D0, &qword_100041478);
    sub_100006260(&qword_10005C2D8, &qword_10005C2E0, &qword_100041480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C2C0);
  }

  return result;
}

uint64_t sub_1000390A4()
{
  v1 = *(type metadata accessor for BackgroundActivityTaskView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000348C4(v2);
}

uint64_t sub_100039114()
{
  v1 = (type metadata accessor for BackgroundActivityTaskView() - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = *(v0 + v4 + 16);
  sub_1000062A8();
  v9 = *(v0 + v4 + 24);
  v10 = *(v0 + v4 + 32);
  v11 = *(v0 + v4 + 40);
  sub_1000062A8();
  v12 = *(v0 + v4 + 48);

  v13 = v1[9];
  sub_100005D3C(&qword_10005C060, &qword_1000411A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ColorScheme();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_1000392CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100039314(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlatterEnvironmentModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatterEnvironmentModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100039420()
{
  result = qword_10005C328;
  if (!qword_10005C328)
  {
    sub_100005F90(&qword_10005C320, &qword_100041508);
    sub_1000394AC();
    sub_100039644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C328);
  }

  return result;
}

unint64_t sub_1000394AC()
{
  result = qword_10005C330;
  if (!qword_10005C330)
  {
    sub_100005F90(&qword_10005C318, &qword_100041500);
    sub_100039538();
    sub_1000395F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C330);
  }

  return result;
}

unint64_t sub_100039538()
{
  result = qword_10005C338;
  if (!qword_10005C338)
  {
    sub_100005F90(&qword_10005C310, &qword_1000414F8);
    sub_100006260(&qword_10005C340, &qword_10005C348, &qword_100041750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C338);
  }

  return result;
}

unint64_t sub_1000395F0()
{
  result = qword_10005C350;
  if (!qword_10005C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C350);
  }

  return result;
}

unint64_t sub_100039644()
{
  result = qword_10005C358;
  if (!qword_10005C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C358);
  }

  return result;
}

unint64_t sub_1000396D0()
{
  result = qword_10005C3D8;
  if (!qword_10005C3D8)
  {
    sub_100005F90(&qword_10005C3B8, &qword_100041840);
    sub_10003975C();
    sub_1000398AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C3D8);
  }

  return result;
}

unint64_t sub_10003975C()
{
  result = qword_10005C3E0;
  if (!qword_10005C3E0)
  {
    sub_100005F90(&qword_10005C3C8, &qword_100041850);
    sub_100039808(&qword_10005C3E8, &qword_10005C3C0, &qword_100041848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C3E0);
  }

  return result;
}

uint64_t sub_100039808(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005F90(a2, a3);
    sub_100006260(&qword_10005C3F0, &qword_10005C3D0, &qword_100041858);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000398AC()
{
  result = qword_10005C3F8;
  if (!qword_10005C3F8)
  {
    sub_100005F90(&qword_10005C3A0, &qword_100041828);
    sub_100005F90(&qword_10005C3D0, &qword_100041858);
    sub_100005F90(&qword_10005C398, &qword_100041820);
    sub_100006260(&qword_10005C3F0, &qword_10005C3D0, &qword_100041858);
    sub_100006260(&qword_10005C400, &qword_10005C398, &qword_100041820);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C3F8);
  }

  return result;
}

uint64_t sub_100039A08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100039A54()
{
  result = qword_10005C418;
  if (!qword_10005C418)
  {
    sub_100005F90(&qword_10005C420, &qword_100041860);
    sub_100005F90(&qword_10005C370, &qword_100041808);
    type metadata accessor for SBUISystemApertureLayoutMode(255);
    sub_100006260(&qword_10005C378, &qword_10005C370, &qword_100041808);
    sub_100039A08(&qword_10005C380, type metadata accessor for SBUISystemApertureLayoutMode);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C418);
  }

  return result;
}

unint64_t sub_100039B9C()
{
  result = qword_10005C428;
  if (!qword_10005C428)
  {
    sub_100005F90(&qword_10005C430, qword_100041868);
    sub_1000396D0();
    sub_100039808(&qword_10005C408, &qword_10005C388, &qword_100041810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C428);
  }

  return result;
}

uint64_t APUILiveActivitiesHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  sub_10003AB74(a1);
  v6 = v5;
  (*(*(*(v2 + 19) - 8) + 8))(a1);
  return v6;
}

id APUISecureWindow.__allocating_init(windowScene:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithWindowScene:a1];

  return v3;
}

uint64_t APUISecureHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = sub_10003AB2C(a1);
  (*(*(*(v1 + class metadata base offset for APUISecureHostingController) - 8) + 8))(a1);
  return v3;
}

uint64_t sub_100039DB0()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005C438);
  v1 = sub_100005D84(v0, qword_10005C438);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t APUISecureHostingController.init(rootView:)(uint64_t a1)
{
  v3 = swift_isaMask & *v1;
  v4 = sub_10003AA44(a1);
  (*(*(*(v3 + class metadata base offset for APUISecureHostingController) - 8) + 8))(a1);
  return v4;
}

void *APUISecureHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + class metadata base offset for APUISecureHostingController);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v12 - v7);
  v8 = UIHostingController.init(coder:rootView:)();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id APUISecureHostingController.init(coder:)(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = *(v3 + class metadata base offset for APUISecureHostingController);
  v5 = *(v3 + class metadata base offset for APUISecureHostingController + 8);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for APUISecureHostingController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id APUISecureHostingController.__deallocating_deinit()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + class metadata base offset for APUISecureHostingController);
  v3 = *(v1 + class metadata base offset for APUISecureHostingController + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for APUISecureHostingController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

id APUISecureWindow.init(windowScene:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for APUISecureWindow();
  v3 = objc_msgSendSuper2(&v5, "initWithWindowScene:", a1);

  return v3;
}

id APUISecureWindow.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for APUISecureWindow();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id APUISecureWindow.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for APUISecureWindow();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id APUISecureWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for APUISecureWindow();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10003A47C(void *a1)
{
  v1 = a1;
  APUILiveActivitiesHostingController.preferredContentSize.getter();
  v3 = v2;

  return v3;
}

void sub_10003A4D8(void *a1)
{
  v1 = a1;
  APUILiveActivitiesHostingController.preferredContentSize.setter();
}

uint64_t APUILiveActivitiesHostingController.init(rootView:)(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  sub_10003AB74(a1);
  v6 = v5;
  (*(*(*((v4 & v3) + 0x98) - 8) + 8))(a1);
  return v6;
}

Swift::Void __swiftcall APUILiveActivitiesHostingController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v3 = *((swift_isaMask & *v1) + 0x98);
  v4 = *((swift_isaMask & *v1) + 0xA0);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for APUILiveActivitiesHostingController();
  objc_msgSendSuper2(&v5, "viewIsAppearing:", a1);
  _s18ActivityProgressUI35APUILiveActivitiesHostingControllerC29preferredContentSizeDidChange08forChildI9ContainerySo09UIContentO0_p_tF_0_0();
}

void sub_10003A668(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  APUILiveActivitiesHostingController.viewIsAppearing(_:)(a3);
}

void sub_10003A6C0(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  _s18ActivityProgressUI35APUILiveActivitiesHostingControllerC29preferredContentSizeDidChange08forChildI9ContainerySo09UIContentO0_p_tF_0();
  swift_unknownObjectRelease();
}

void _s18ActivityProgressUI35APUILiveActivitiesHostingControllerC29preferredContentSizeDidChange08forChildI9ContainerySo09UIContentO0_p_tF_0_0()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 window];

  if (v3)
  {
    v4 = [v3 windowScene];
    if (v4)
    {
      v10 = v4;
      type metadata accessor for ActivityScene();
      if (swift_dynamicCastClass())
      {
        [v0 preferredContentSize];
        v5 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
        ActivitySceneMetrics.init(size:cornerRadius:)();
        dispatch thunk of ActivityScene.resolvedMetrics.setter();
        v6 = v3;
LABEL_13:

        return;
      }
    }

    if (qword_10005A248 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100005D84(v7, qword_10005C438);
    v6 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, v8, "LiveActivitiesHostingController used in a scene that's not an ActivityScene", v9, 2u);
    }

    v10 = v3;
    goto LABEL_13;
  }
}

void APUILiveActivitiesHostingController.init(nibName:bundle:)()
{
  v1 = *((swift_isaMask & *v0) + 0x98);
  v2 = *((swift_isaMask & *v0) + 0xA0);
  sub_10003B260();
}

void sub_10003A944(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *((swift_isaMask & *a1) + 0x98);
  v5 = *((swift_isaMask & *a1) + 0xA0);
  v6 = a4;

  sub_10003B260();
}

id APUILiveActivitiesHostingController.__deallocating_deinit()
{
  v1 = *((swift_isaMask & *v0) + 0x98);
  v2 = *((swift_isaMask & *v0) + 0xA0);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for APUILiveActivitiesHostingController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10003AA44(uint64_t a1)
{
  v2 = *(*(*((swift_isaMask & *v1) + class metadata base offset for APUISecureHostingController) - 8) + 64);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v6 - v3);
  return UIHostingController.init(rootView:)();
}

uint64_t sub_10003AB2C(uint64_t a1)
{
  v3 = *(v1 + class metadata base offset for APUISecureHostingController);
  v4 = *(v1 + class metadata base offset for APUISecureHostingController + 8);
  v5 = objc_allocWithZone(type metadata accessor for APUISecureHostingController());
  return sub_10003AA44(a1);
}

void sub_10003AB74(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = type metadata accessor for UIHostingControllerSizingOptions();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = *((v5 & v4) + 0x98);
  v10 = *((v5 & v4) + 0xA0);
  type metadata accessor for APUISecureHostingController();
  v11 = sub_10003AB2C(a1);
  sub_100005D3C(&qword_10005A648, &unk_10003E520);
  v12 = *(v7 + 72);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10003DD60;
  v15 = v11;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  v63 = v14;
  sub_10003B31C();
  sub_100005D3C(&qword_10005A658, qword_10003ED60);
  sub_10003B374();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  *(v2 + qword_10005C450) = v15;
  v62.receiver = v2;
  v62.super_class = type metadata accessor for APUILiveActivitiesHostingController();
  v16 = v15;
  v17 = objc_msgSendSuper2(&v62, "initWithNibName:bundle:", 0, 0);
  v18 = [v17 view];
  if (!v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  v20 = qword_10005C450;
  v21 = [*&v17[qword_10005C450] view];
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = v21;
  [v19 addSubview:v21];

  [v17 addChildViewController:*&v17[v20]];
  v23 = [v17 view];
  if (!v23)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24 = v23;
  v25 = objc_opt_self();
  v26 = [v25 clearColor];
  [v24 setBackgroundColor:v26];

  v27 = v16;
  v28 = [v27 view];
  if (!v28)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v29 = v28;
  v30 = [v25 clearColor];
  [v29 setBackgroundColor:v30];

  v31 = [v27 view];
  if (!v31)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v32 = v31;
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_100005D3C(&qword_10005BFE0, &qword_10003E530);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10003DD70;
  v34 = [v27 view];
  if (!v34)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v35 = v34;
  v36 = [v34 topAnchor];

  v37 = [v17 view];
  if (!v37)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v38 = v37;
  v39 = [v37 topAnchor];

  v40 = [v36 constraintEqualToAnchor:v39];
  *(v33 + 32) = v40;
  v41 = [v27 view];
  if (!v41)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v42 = v41;
  v43 = [v41 leadingAnchor];

  v44 = [v17 view];
  if (!v44)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v45 = v44;
  v46 = [v44 leadingAnchor];

  v47 = [v43 constraintEqualToAnchor:v46];
  *(v33 + 40) = v47;
  v48 = [v27 view];
  if (!v48)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v49 = v48;
  v50 = [v48 trailingAnchor];

  v51 = [v17 view];
  if (!v51)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v52 = v51;
  v53 = [v51 trailingAnchor];

  v54 = [v50 constraintEqualToAnchor:v53];
  *(v33 + 48) = v54;
  v55 = [v27 view];

  if (!v55)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v56 = [v55 bottomAnchor];

  v57 = [v17 view];
  if (v57)
  {
    v58 = objc_opt_self();
    v59 = [v57 bottomAnchor];

    v60 = [v56 constraintEqualToAnchor:v59];
    *(v33 + 56) = v60;
    sub_1000062B0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v58 activateConstraints:isa];

    return;
  }

LABEL_27:
  __break(1u);
}

unint64_t sub_10003B31C()
{
  result = qword_10005A650;
  if (!qword_10005A650)
  {
    type metadata accessor for UIHostingControllerSizingOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A650);
  }

  return result;
}

unint64_t sub_10003B374()
{
  result = qword_10005A660;
  if (!qword_10005A660)
  {
    sub_100005F90(&qword_10005A658, qword_10003ED60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A660);
  }

  return result;
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}