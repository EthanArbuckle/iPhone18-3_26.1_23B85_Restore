uint64_t sub_1000C1CDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v47 = type metadata accessor for SimpleListRowView();
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v49 = v3;
  v50 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for EnabledTextSelectability();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000BFBAC(&qword_10020B608);
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = &v37 - v6;
  v44 = sub_1000BFBAC(&qword_10020B610);
  __chkstk_darwin(v44);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v42 = sub_1000BFBAC(&qword_10020B618);
  __chkstk_darwin(v42);
  v46 = (&v37 - v11);
  v53 = static Color.clear.getter();
  v52 = static Color.clear.getter();
  v45 = static Color.clear.getter();
  v12 = *(v1 + 8);
  swift_getKeyPath();
  *v60 = v12;
  sub_1000C5588(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = Axis.rawValue.getter();
  v14 = Axis.rawValue.getter();
  swift_getKeyPath();
  *v60 = v12;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v12 + 24))
  {
    v15 = static HorizontalAlignment.leading.getter();
    v16 = *(v1 + 80);
    *v60 = v15;
    *&v60[8] = v16;
    v60[16] = 0;
    sub_1000C45DC();
  }

  else
  {
    v17 = *(v1 + 32);
    v18 = *(v1 + 64);
    v61 = *(v1 + 48);
    v62 = v18;
    v19 = *(v1 + 32);
    *v60 = *(v1 + 16);
    *&v60[16] = v19;
    v20 = *(v1 + 64);
    v57 = v61;
    v58 = v20;
    v63 = *(v1 + 80);
    v59 = *(v1 + 80);
    v55 = *v60;
    v56 = v17;
    sub_1000C4B44(v60, v54);
    sub_1000C4B7C();
  }

  v21 = AnyLayout.init<A>(_:)();

  sub_1000C2424(v1, 2 * (v13 != v14), v60);

  v22 = *v60;
  *v60 = v21;
  *&v60[8] = v22;
  EnabledTextSelectability.init()();
  sub_1000BFBAC(&qword_10020B628);
  sub_1000C4630();
  v23 = v37;
  v24 = v41;
  View.textSelection<A>(_:)();
  (*(v40 + 8))(v5, v24);

  (*(v38 + 32))(v10, v23, v39);
  *&v10[*(v44 + 36)] = 256;
  v25 = [objc_opt_self() standardUserDefaults];
  v26 = String._bridgeToObjectiveC()();
  [v25 BOOLForKey:v26];

  sub_1000C4714(v10, v43);
  sub_1000C4784();
  v27 = AnyView.init<A>(_:)();
  sub_1000C486C(v10);
  sub_1000BFBAC(&qword_10020B550);
  v28 = v46;
  State.wrappedValue.getter();
  *v28 = v27;
  v29 = [objc_opt_self() defaultCenter];
  v30 = sub_1000BFBAC(&qword_10020B660);
  v31 = v51;
  NSNotificationCenter.publisher(for:object:)();

  v32 = v50;
  sub_1000C4D3C(v2, v50, type metadata accessor for SimpleListRowView);
  v33 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v34 = swift_allocObject();
  sub_1000C4A00(v32, v34 + v33);
  result = sub_1000C4AD4(v28, v31);
  v36 = (v31 + *(v30 + 56));
  *v36 = sub_1000C4A64;
  v36[1] = v34;
  return result;
}

uint64_t sub_1000C2424@<X0>(uint64_t *a1@<X0>, int a2@<W2>, uint64_t *a3@<X8>)
{
  v55 = a2;
  v56 = a3;
  v4 = sub_1000BFBAC(&qword_10020B670);
  __chkstk_darwin(v4 - 8);
  v52 = &v48 - v5;
  v6 = type metadata accessor for ContentMetadataValue(0);
  __chkstk_darwin(v6 - 8);
  v48 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocalizedStringResource();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  type metadata accessor for MainActor();
  v53 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *a1;
  v12 = *(*a1 + 40);
  v13 = *(*a1 + 48);
  sub_1000C421C((*a1 + 16), v12);
  (*(v13 + 32))(v12, v13);
  v14 = Text.init(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = a1[5];
  KeyPath = swift_getKeyPath();
  v54 = a1;
  v23 = *(a1 + 12);
  v24 = v18 & 1;
  LOBYTE(v70[0]) = v18 & 1;
  v25 = swift_getKeyPath();

  static Alignment.topLeading.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(v58 + 7) = *&v58[7];
  *(&v58[2] + 7) = *&v58[9];
  *(&v58[4] + 7) = v59;
  v70[0] = v14;
  v70[1] = v16;
  v71 = v24;
  v72 = v20;
  v73 = 0;
  v74 = KeyPath;
  v75 = v21;
  v76 = v23;
  v77 = v25;
  v78 = 0;
  *&v81[15] = *(&v59 + 1);
  *v81 = *&v58[4];
  v80 = *&v58[2];
  v79 = *v58;
  v82 = 256;
  v26 = sub_1000C4C2C();
  sub_1000C5624(v70, &qword_10020B678);
  swift_getKeyPath();
  v60[0] = v11;
  sub_1000C5588(&qword_10020B680, type metadata accessor for ContentMetadata.RowData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = OBJC_IVAR____TtCC17ContentInfoViewer15ContentMetadata7RowData__metadata;
  swift_beginAccess();
  v28 = v11 + v27;
  v29 = v48;
  sub_1000C4D3C(v28, v48, type metadata accessor for ContentMetadataValue);
  v30 = v52;
  sub_1000EFA8C(v52);
  sub_1000C4DA4(v29);
  v32 = v49;
  v31 = v50;
  v33 = *(v49 + 48);
  if (v33(v30, 1, v50) == 1)
  {
    LocalizedStringResource.init(stringLiteral:)();
    if (v33(v30, 1, v31) != 1)
    {
      sub_1000C5624(v30, &qword_10020B670);
    }
  }

  else
  {
    (*(v32 + 32))(v51, v30, v31);
  }

  v34 = Text.init(_:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v54;
  v42 = v54[7];
  v43 = swift_getKeyPath();
  LODWORD(v41) = *(v41 + 16);
  v38 &= 1u;
  v57 = v38;
  v44 = swift_getKeyPath();
  v60[0] = v34;
  v60[1] = v36;
  v61 = v38;
  v62 = v40;
  v63 = 1;
  v64 = v43;
  v65 = v42;
  v66 = v41;
  v67 = v44;
  v68 = v55;
  v69 = 256;

  v45 = sub_1000C4E00();
  sub_1000C5624(v60, &qword_10020B688);
  v46 = v56;
  *v56 = v26;
  v46[1] = v45;
}

uint64_t sub_1000C2948()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v8 - v5;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  UUID.init()();
  type metadata accessor for SimpleListRowView();
  (*(v1 + 16))(v3, v6, v0);
  sub_1000BFBAC(&qword_10020B550);
  State.wrappedValue.setter();
  (*(v1 + 8))(v6, v0);
}

uint64_t sub_1000C2B18@<X0>(unsigned __int8 a1@<W0>, char *a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for LayoutSubview();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v33 = &v26 - v8;
  v9 = type metadata accessor for LayoutSubviews();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BFBAC(&qword_10020B750);
  v14 = v13 - 8;
  v15 = __chkstk_darwin(v13);
  v17 = &v26 - v16;
  (*(v10 + 16))(v12, v2, v9, v15);
  sub_1000C5588(&qword_10020B758, &type metadata accessor for LayoutSubviews);
  dispatch thunk of Sequence.makeIterator()();
  v18 = *(v14 + 44);
  sub_1000C5588(&qword_10020B760, &type metadata accessor for LayoutSubviews);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v17[v18] == v34[0])
  {
LABEL_2:
    sub_1000C5624(v17, &qword_10020B750);
    v19 = 1;
    v20 = v27;
  }

  else
  {
    v29 = a1;
    v31 = (v28 + 16);
    v32 = (v28 + 32);
    v30 = (v28 + 8);
    while (1)
    {
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v33;
      (*v31)(v33);
      v22(v34, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v24 = *v32;
      (*v32)(v6, v23, v4);
      sub_1000C55D0();
      LayoutSubview.subscript.getter();
      if (LOBYTE(v34[0]) != 2 && ((LOBYTE(v34[0]) ^ v29) & 1) == 0)
      {
        break;
      }

      (*v30)(v6, v4);
      dispatch thunk of Collection.endIndex.getter();
      if (*&v17[v18] == v34[0])
      {
        goto LABEL_2;
      }
    }

    sub_1000C5624(v17, &qword_10020B750);
    v25 = v27;
    v24(v27, v6, v4);
    v20 = v25;
    v19 = 0;
  }

  return (*(v28 + 56))(v20, v19, 1, v4);
}

Swift::Int sub_1000C2F4C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000C2FC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1000C3010(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v3 = sub_1000BFBAC(&qword_10020B748);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for LayoutSubview();
  __chkstk_darwin(v6);
  v17 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = (v7 + 48);
    v15 = (v7 + 8);
    v16 = (v7 + 32);
    v11 = (a2 + 80);
    do
    {
      v12 = *(v11 - 16);
      v13 = *v11;
      sub_1000C2B18(*(v11 - 48), v5);
      if ((*v10)(v5, 1, v6) == 1)
      {
        sub_1000C5624(v5, &qword_10020B748);
      }

      else
      {
        v14 = v17;
        (*v16)(v17, v5, v6);
        static UnitPoint.topLeading.getter();
        v20 = v12;
        v19 = v13;
        LayoutSubview.place(at:anchor:proposal:)();
        (*v15)(v14, v6);
      }

      v11 += 56;
      --v9;
    }

    while (v9);
  }
}

uint64_t sub_1000C3228(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = type metadata accessor for ViewDimensions();
  v70 = *(v8 - 8);
  __chkstk_darwin(v8);
  v69 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  *&v67 = &v63 - v11;
  __chkstk_darwin(v12);
  *&v66 = &v63 - v13;
  v14 = type metadata accessor for LayoutSubview();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v68 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v71 = &v63 - v18;
  v19 = sub_1000BFBAC(&qword_10020B748);
  __chkstk_darwin(v19 - 8);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v63 - v23;
  __chkstk_darwin(v25);
  v27 = &v63 - v26;
  __chkstk_darwin(v28);
  v30 = &v63 - v29;
  sub_1000C2B18(0, &v63 - v29);
  v73 = v27;
  sub_1000C2B18(1u, v27);
  sub_1000C5684(v30, v24, &qword_10020B748);
  v72 = v15;
  v31 = *(v15 + 48);
  v32 = v14;
  if (v31(v24, 1, v14) == 1)
  {
    sub_1000C5624(v73, &qword_10020B748);
    sub_1000C5624(v30, &qword_10020B748);
    v33 = v24;
LABEL_5:
    sub_1000C5624(v33, &qword_10020B748);
    return 0;
  }

  v64 = v8;
  v34 = v71;
  v35 = *(v72 + 32);
  v35(v71, v24, v14);
  sub_1000C5684(v73, v21, &qword_10020B748);
  if (v31(v21, 1, v14) == 1)
  {
    (*(v72 + 8))(v34, v14);
    sub_1000C5624(v73, &qword_10020B748);
    sub_1000C5624(v30, &qword_10020B748);
    v33 = v21;
    goto LABEL_5;
  }

  v37 = v68;
  v35(v68, v21, v32);
  v38 = *(*&v65 + 56);
  v80.origin.x = a1;
  v80.origin.y = a2;
  v80.size.width = a3;
  v80.size.height = a4;
  v39 = CGRectGetWidth(v80) - v38;
  v81.origin.x = a1;
  v81.origin.y = a2;
  v81.size.width = a3;
  v81.size.height = a4;
  v65 = CGRectGetMinY(v81) + 0.0;
  v82.origin.x = a1;
  v82.origin.y = a2;
  v82.size.width = a3;
  v82.size.height = a4;
  CGRectGetWidth(v82);
  v79 = 0;
  v78 = 0;
  v40 = v66;
  LayoutSubview.dimensions(in:)();
  ViewDimensions.width.getter();
  v42 = v41;
  v43 = *(*&v70 + 8);
  v44 = v64;
  v43(*&v40, v64);
  if (v42 >= v39 * 0.5)
  {
    v45 = v39 * 0.5;
  }

  else
  {
    v45 = v42;
  }

  if (v39 * 0.333333333 > v45)
  {
    v46 = v39 * 0.333333333;
  }

  else
  {
    v46 = v45;
  }

  v77 = 0;
  v76 = 0;
  v47 = v67;
  LayoutSubview.dimensions(in:)();
  ViewDimensions.height.getter();
  v49 = v48;
  v43(*&v47, v44);
  v83.origin.x = a1;
  v83.origin.y = a2;
  v83.size.width = a3;
  v83.size.height = a4;
  v70 = CGRectGetMinX(v83) + 0.0;
  v75 = 0;
  v74 = 0;
  v50 = v34;
  v51 = v69;
  LayoutSubview.dimensions(in:)();
  v84.origin.x = a1;
  v84.origin.y = a2;
  v84.size.width = a3;
  v84.size.height = a4;
  MaxX = CGRectGetMaxX(v84);
  ViewDimensions.width.getter();
  v66 = MaxX - v53;
  ViewDimensions.width.getter();
  v55 = v54;
  ViewDimensions.height.getter();
  v57 = v56;
  ViewDimensions.height.getter();
  if (v58 <= v49)
  {
    v58 = v49;
  }

  v67 = v58 + 0.0;
  v85.origin.x = a1;
  v85.origin.y = a2;
  v85.size.width = a3;
  v85.size.height = a4;
  Width = CGRectGetWidth(v85);
  sub_1000BFBAC(&qword_10020B770);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_10019B3A0;
  *(v60 + 32) = 0;
  v61 = v65;
  *(v60 + 40) = v70;
  *(v60 + 48) = v61;
  *(v60 + 56) = v46;
  *(v60 + 64) = 0;
  *(v60 + 72) = v49;
  *(v60 + 80) = 0;
  *(v60 + 88) = 1;
  *(v60 + 96) = v66;
  *(v60 + 104) = v61;
  *(v60 + 112) = v55;
  *(v60 + 120) = 0;
  *(v60 + 128) = v57;
  *(v60 + 136) = 0;
  v43(v51, v44);
  v62 = *(v72 + 8);
  v62(v37, v32);
  v62(v50, v32);
  sub_1000C5624(v73, &qword_10020B748);
  sub_1000C5624(v30, &qword_10020B748);
  return *&Width;
}

double sub_1000C3940(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v4 = 10.0;
  }

  else
  {
    v4 = *&a1;
  }

  if (a4)
  {
    v5 = 10.0;
  }

  else
  {
    v5 = *&a3;
  }

  v6 = sub_1000C3228(0.0, 0.0, v4, v5);
  if (v7)
  {
    v4 = *&v6;
  }

  return v4;
}

uint64_t sub_1000C39DC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = sub_1000C3228(a1, a2, a3, a4);
  if (v11)
  {
    sub_1000C3010(a9, v11);
  }

  return result;
}

void (*sub_1000C3B24(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_1000C3BAC;
}

void sub_1000C3BAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1000C3C50(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000C3C98()
{
  result = qword_10020B4B8;
  if (!qword_10020B4B8)
  {
    sub_1000C3C50(&qword_10020B4A8);
    sub_1000C3C50(&qword_10020B4C0);
    sub_1000C453C(&qword_10020B4C8, &qword_10020B4C0, &unk_1001A1180, sub_1000C3DA0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B4B8);
  }

  return result;
}

unint64_t sub_1000C3DA0()
{
  result = qword_10020B4D0;
  if (!qword_10020B4D0)
  {
    sub_1000C3C50(&qword_10020B4D8);
    sub_1000C3E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B4D0);
  }

  return result;
}

unint64_t sub_1000C3E2C()
{
  result = qword_10020B4E0;
  if (!qword_10020B4E0)
  {
    sub_1000C3C50(&qword_10020B4E8);
    sub_1000C3EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B4E0);
  }

  return result;
}

unint64_t sub_1000C3EB8()
{
  result = qword_10020B4F0;
  if (!qword_10020B4F0)
  {
    sub_1000C3C50(&qword_10020B4F8);
    sub_1000C3C50(&qword_10020B500);
    sub_1000C3F80();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B4F0);
  }

  return result;
}

unint64_t sub_1000C3F80()
{
  result = qword_10020B508;
  if (!qword_10020B508)
  {
    sub_1000C3C50(&qword_10020B500);
    sub_1000C5588(&qword_10020B510, type metadata accessor for SimpleListRowView);
    sub_1000C5490(&qword_10020B518, &qword_10020B520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B508);
  }

  return result;
}

uint64_t type metadata accessor for SimpleListRowView()
{
  result = qword_10020B5B0;
  if (!qword_10020B5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C40C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  sub_1000C421C((*a1 + 16), v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1000C4124()
{

  return swift_deallocObject();
}

uint64_t sub_1000C41B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000BFBAC(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1000C421C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000C427C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000BFBAC(&qword_10020B550);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1000C434C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000BFBAC(&qword_10020B550);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000C43FC()
{
  type metadata accessor for ContentMetadata.RowData(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContentInfoViewerModel();
    if (v1 <= 0x3F)
    {
      sub_1000C44A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000C44A0()
{
  if (!qword_10020B5C0)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10020B5C0);
    }
  }
}

uint64_t sub_1000C453C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000C3C50(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000C45DC()
{
  result = qword_10020B620;
  if (!qword_10020B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B620);
  }

  return result;
}

unint64_t sub_1000C4630()
{
  result = qword_10020B630;
  if (!qword_10020B630)
  {
    sub_1000C3C50(&qword_10020B628);
    sub_1000C5490(&qword_10020B638, &qword_10020B640);
    sub_1000C5490(&qword_10020B648, &qword_10020B650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B630);
  }

  return result;
}

uint64_t sub_1000C4714(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BFBAC(&qword_10020B610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000C4784()
{
  result = qword_10020B658;
  if (!qword_10020B658)
  {
    sub_1000C3C50(&qword_10020B610);
    sub_1000C3C50(&qword_10020B628);
    type metadata accessor for EnabledTextSelectability();
    sub_1000C4630();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B658);
  }

  return result;
}

uint64_t sub_1000C486C(uint64_t a1)
{
  v2 = sub_1000BFBAC(&qword_10020B610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C48D4()
{
  v1 = (type metadata accessor for SimpleListRowView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[9];
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1000BFBAC(&qword_10020B550);

  return swift_deallocObject();
}

uint64_t sub_1000C4A00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleListRowView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C4A64()
{
  type metadata accessor for SimpleListRowView();

  return sub_1000C2948();
}

uint64_t sub_1000C4AD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BFBAC(&qword_10020B618);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000C4B7C()
{
  result = qword_10020B668;
  if (!qword_10020B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B668);
  }

  return result;
}

uint64_t sub_1000C4BD8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000C4C2C()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  [v1 BOOLForKey:v2];

  v3 = *(v0 + 112);
  v15 = *(v0 + 96);
  v16 = v3;
  v17 = *(v0 + 128);
  v4 = *(v0 + 48);
  v11 = *(v0 + 32);
  v12 = v4;
  v5 = *(v0 + 80);
  v13 = *(v0 + 64);
  v14 = v5;
  v6 = *(v0 + 16);
  v9 = *v0;
  v10 = v6;
  sub_1000C5684(v0, v8, &qword_10020B678);
  sub_1000BFBAC(&qword_10020B678);
  sub_1000C5264();
  return AnyView.init<A>(_:)();
}

uint64_t sub_1000C4D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C4DA4(uint64_t a1)
{
  v2 = type metadata accessor for ContentMetadataValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C4E00()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  [v1 BOOLForKey:v2];

  v3 = v0[3];
  v6[7] = v0[2];
  v7[0] = v3;
  *(v7 + 11) = *(v0 + 59);
  v4 = v0[1];
  v6[5] = *v0;
  v6[6] = v4;
  sub_1000C5684(v0, v6, &qword_10020B688);
  sub_1000BFBAC(&qword_10020B688);
  sub_1000C4EF8();
  return AnyView.init<A>(_:)();
}

unint64_t sub_1000C4EF8()
{
  result = qword_10020B690;
  if (!qword_10020B690)
  {
    sub_1000C3C50(&qword_10020B688);
    sub_1000C4F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B690);
  }

  return result;
}

unint64_t sub_1000C4F84()
{
  result = qword_10020B698;
  if (!qword_10020B698)
  {
    sub_1000C3C50(&qword_10020B6A0);
    sub_1000C503C();
    sub_1000C5490(&qword_10020B708, &qword_10020B710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B698);
  }

  return result;
}

unint64_t sub_1000C503C()
{
  result = qword_10020B6A8;
  if (!qword_10020B6A8)
  {
    sub_1000C3C50(&qword_10020B6B0);
    sub_1000C50F4();
    sub_1000C5490(&qword_10020B6F8, &qword_10020B700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B6A8);
  }

  return result;
}

unint64_t sub_1000C50F4()
{
  result = qword_10020B6B8;
  if (!qword_10020B6B8)
  {
    sub_1000C3C50(&qword_10020B6C0);
    sub_1000C51AC();
    sub_1000C5490(&qword_10020B6E8, &qword_10020B6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B6B8);
  }

  return result;
}

unint64_t sub_1000C51AC()
{
  result = qword_10020B6C8;
  if (!qword_10020B6C8)
  {
    sub_1000C3C50(&qword_10020B6D0);
    sub_1000C5490(&qword_10020B6D8, &qword_10020B6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B6C8);
  }

  return result;
}

unint64_t sub_1000C5264()
{
  result = qword_10020B718;
  if (!qword_10020B718)
  {
    sub_1000C3C50(&qword_10020B678);
    sub_1000C52F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B718);
  }

  return result;
}

unint64_t sub_1000C52F0()
{
  result = qword_10020B720;
  if (!qword_10020B720)
  {
    sub_1000C3C50(&qword_10020B728);
    sub_1000C4F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B720);
  }

  return result;
}

uint64_t sub_1000C53A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1000C53EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000C5490(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000C3C50(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000C54DC()
{
  result = qword_10020B738;
  if (!qword_10020B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B738);
  }

  return result;
}

unint64_t sub_1000C5534()
{
  result = qword_10020B740;
  if (!qword_10020B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B740);
  }

  return result;
}

uint64_t sub_1000C5588(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000C55D0()
{
  result = qword_10020B768;
  if (!qword_10020B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B768);
  }

  return result;
}

uint64_t sub_1000C5624(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000BFBAC(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000C5684(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000BFBAC(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 sub_1000C56EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000C5700(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000C5748(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 sub_1000C5798(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000C57B4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[49])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000C57F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentInfoViewerModel.Layout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentInfoViewerModel.Layout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000C59D0()
{
  result = qword_10020B778;
  if (!qword_10020B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B778);
  }

  return result;
}

uint64_t sub_1000C5A3C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_1000BFBAC(&qword_10020B780);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for ContentMetadataItem(0);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000C5B48, 0, 0);
}

unint64_t sub_1000C5B48()
{
  v101 = v0;
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v95 = v0;
  v0[2] = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v1;
  v6[4] = v2;
  type metadata accessor for Array();
  swift_getWitnessTable();
  v84 = Sequence.compactMap<A>(_:)();

  v7 = (*(v1 + 40))(v3, v1);
  for (i = 0; i != 37; ++i)
  {
    v9 = *(&off_1001F3588 + i + 32);
    if (v7[2] && (v10 = sub_1000EDE8C(*(&off_1001F3588 + i + 32)), (v11 & 1) != 0))
    {
      v12 = *(v7[7] + 8 * v10);
    }

    else
    {
      v12 = &_swiftEmptyDictionarySingleton;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100 = v7;
    result = sub_1000EDE8C(v9);
    v16 = v7[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v20 = v15;
    if (v7[3] < v19)
    {
      sub_1000ECAC4(v19, isUniquelyReferenced_nonNull_native);
      v7 = v100;
      result = sub_1000EDE8C(v9);
      if ((v20 & 1) != (v21 & 1))
      {
LABEL_67:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_13:
      if (v20)
      {
        goto LABEL_2;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v24 = result;
    sub_1000EE124();
    result = v24;
    v7 = v100;
    if (v20)
    {
LABEL_2:
      *(v7[7] + 8 * result) = v12;

      continue;
    }

LABEL_14:
    v7[(result >> 6) + 8] |= 1 << result;
    *(v7[6] + result) = v9;
    *(v7[7] + 8 * result) = v12;
    v22 = v7[2];
    v18 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v18)
    {
      goto LABEL_77;
    }

    v7[2] = v23;
  }

  v25 = v95;
  v91 = v95[9];
  v92 = v95[10];
  v86 = v7 + 8;
  v90 = v95[6];
  v26 = -1 << *(v7 + 32);
  if (-v26 < 64)
  {
    v27 = ~(-1 << -v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & v7[8];
  v85 = (63 - v26) >> 6;

  v29 = 0;
  v88 = &_swiftEmptyDictionarySingleton;
  while (2)
  {
    if (v28)
    {
LABEL_29:
      v87 = v29;
      v31 = __clz(__rbit64(v28)) | (v29 << 6);
      v32 = *(v7[6] + v31);
      v33 = *(v7[7] + 8 * v31);
      v34 = *(v33 + 16);
      if (v34)
      {
        v82 = *(v7[6] + v31);
        v83 = v28;
        v100 = _swiftEmptyArrayStorage;

        sub_1000C8DFC(0, v34, 0);
        v35 = v95;
        v36 = v100;
        v99 = v33 + 64;
        result = _HashTable.startBucket.getter();
        v37 = result;
        v38 = 0;
        v89 = v33 + 72;
        v93 = v34;
        v94 = v7;
        while ((v37 & 0x8000000000000000) == 0 && v37 < 1 << *(v33 + 32))
        {
          v41 = v37 >> 6;
          if ((*(v99 + 8 * (v37 >> 6)) & (1 << v37)) == 0)
          {
            goto LABEL_71;
          }

          v96 = v38;
          v97 = *(v33 + 36);
          v42 = v33;
          v43 = *(v90 + 48);
          v98 = v36;
          v44 = v35[11];
          v46 = v35[7];
          v45 = v35[8];
          sub_1000BFD88(*(v42 + 48) + 56 * v37, v45);
          v47 = *(v42 + 56);
          v48 = type metadata accessor for ContentMetadataValue(0);
          sub_1000C9298(v47 + *(*(v48 - 8) + 72) * v37, v45 + v43, type metadata accessor for ContentMetadataValue);
          v50 = *(v45 + 16);
          v49 = *(v45 + 32);
          v51 = *v45;
          *(v46 + 48) = *(v45 + 48);
          *(v46 + 16) = v50;
          *(v46 + 32) = v49;
          *v46 = v51;
          v52 = *(v90 + 48);
          sub_1000C9224(v45 + v43, v46 + v52, type metadata accessor for ContentMetadataValue);
          sub_1000BFD88(v46, v44);
          v53 = v44 + *(v91 + 20);
          v36 = v98;
          sub_1000C9298(v46 + v52, v53, type metadata accessor for ContentMetadataValue);
          sub_1000C91BC(v46);
          v100 = v98;
          v55 = v98[2];
          v54 = v98[3];
          if (v55 >= v54 >> 1)
          {
            sub_1000C8DFC(v54 > 1, v55 + 1, 1);
            v36 = v100;
          }

          v35 = v95;
          v56 = v95[11];
          v36[2] = v55 + 1;
          result = sub_1000C9224(v56, v36 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v55, type metadata accessor for ContentMetadataItem);
          v39 = 1 << *(v42 + 32);
          if (v37 >= v39)
          {
            goto LABEL_72;
          }

          v57 = *(v99 + 8 * v41);
          if ((v57 & (1 << v37)) == 0)
          {
            goto LABEL_73;
          }

          v33 = v42;
          if (v97 != *(v42 + 36))
          {
            goto LABEL_74;
          }

          v58 = v57 & (-2 << (v37 & 0x3F));
          if (v58)
          {
            v39 = __clz(__rbit64(v58)) | v37 & 0x7FFFFFFFFFFFFFC0;
            v40 = v93;
            v7 = v94;
          }

          else
          {
            v59 = v41 << 6;
            v60 = (v89 + 8 * v41);
            v61 = v41 + 1;
            v40 = v93;
            v7 = v94;
            while (v61 < (v39 + 63) >> 6)
            {
              v63 = *v60++;
              v62 = v63;
              v59 += 64;
              ++v61;
              if (v63)
              {
                result = sub_1000C928C(v37, v97, 0);
                v39 = __clz(__rbit64(v62)) + v59;
                goto LABEL_32;
              }
            }

            result = sub_1000C928C(v37, v97, 0);
          }

LABEL_32:
          v38 = v96 + 1;
          v37 = v39;
          if (v96 + 1 == v40)
          {
            v28 = v83;
            v32 = v82;
            goto LABEL_49;
          }
        }

        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v36 = _swiftEmptyArrayStorage;
LABEL_49:
      v100 = v36;

      sub_1000C7224(&v100);

      v64 = v100;
      if (sub_1000F4630(v32) == 0x6C6172656E6567 && v65 == 0xE700000000000000)
      {
        v66 = v28;
      }

      else
      {
        v66 = v28;
        v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v67 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      v100 = v84;

      sub_1000EE5B8(v64);
      v64 = v100;
LABEL_54:
      v68 = v88;
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v100 = v88;
      v70 = v32;
      result = sub_1000EDE8C(v32);
      v72 = v88[2];
      v73 = (v71 & 1) == 0;
      v18 = __OFADD__(v72, v73);
      v74 = v72 + v73;
      if (v18)
      {
        goto LABEL_78;
      }

      v75 = v71;
      if (v88[3] >= v74)
      {
        if ((v69 & 1) == 0)
        {
          v79 = result;
          sub_1000EE110();
          result = v79;
          v68 = v100;
          v88 = v100;
          if ((v75 & 1) == 0)
          {
            goto LABEL_60;
          }

          goto LABEL_22;
        }
      }

      else
      {
        sub_1000ECAB0(v74, v69);
        v68 = v100;
        result = sub_1000EDE8C(v32);
        if ((v75 & 1) != (v76 & 1))
        {
          goto LABEL_67;
        }
      }

      v88 = v68;
      if ((v75 & 1) == 0)
      {
LABEL_60:
        v68[(result >> 6) + 8] |= 1 << result;
        *(v68[6] + result) = v70;
        *(v68[7] + 8 * result) = v64;
        v77 = v68[2];
        v18 = __OFADD__(v77, 1);
        v78 = v77 + 1;
        if (v18)
        {
          goto LABEL_79;
        }

        v68[2] = v78;
        goto LABEL_23;
      }

LABEL_22:
      *(v68[7] + 8 * result) = v64;

LABEL_23:
      v28 = (v66 - 1) & v66;

      v25 = v95;
      v29 = v87;
      continue;
    }

    break;
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v85)
    {

      v80 = sub_1000C6980(v88);

      v81 = v25[1];

      return v81(v80);
    }

    v28 = v86[v30];
    ++v29;
    if (v28)
    {
      v29 = v30;
      goto LABEL_29;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_1000C648C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for ContentMetadataValue(0);
  __chkstk_darwin(v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = v20 - v13;
  (*(a3 + 32))(a1, a2, a3, v12);
  sub_1000C9298(v14, v10, type metadata accessor for ContentMetadataValue);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1000C9304(v14, type metadata accessor for ContentMetadataValue);
    v15 = type metadata accessor for ContentMetadataItem(0);
    return (*(*(v15 - 8) + 56))(a4, 1, 1, v15);
  }

  else
  {
    sub_1000C9304(v10, type metadata accessor for ContentMetadataValue);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1000C66DC(AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), a4);
    v19 = type metadata accessor for ContentMetadataItem(0);
    sub_1000C9224(v14, a4 + *(v19 + 20), type metadata accessor for ContentMetadataValue);
    return (*(*(v19 - 8) + 56))(a4, 0, 1, v19);
  }
}

uint64_t sub_1000C66DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __chkstk_darwin(a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1, v7);
  return sub_1000EF280(v9, a1, a2, a3);
}

uint64_t sub_1000C67B4(void *a1, void *a2)
{
  v4 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v4 - 8);
  v5 = a1[3];
  v6 = a1[4];
  sub_1000C421C(a1, v5);
  (*(v6 + 32))(v5, v6);
  v7 = String.init(localized:)();
  v9 = v8;
  v10 = a2[3];
  v11 = a2[4];
  sub_1000C421C(a2, v10);
  (*(v11 + 32))(v10, v11);
  if (v7 == String.init(localized:)() && v9 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v14 & 1;
}

unint64_t sub_1000C6908()
{
  v1._countAndFlagsBits = sub_1000DA074(*v0);
  String.append(_:)(v1);

  return 0xD000000000000020;
}

uint64_t sub_1000C6980(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1000C6AE0(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1000C6BCC(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1000C6AE0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
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
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1000C6C44(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1000C6C44(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1000C6BCC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1000C6AE0(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1000C6C44(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1000BFBAC(&qword_10020B788);
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
  v28 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    Hasher.init(_seed:)();
    sub_1000F4630(v17);

    String.hash(into:)();

    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v28;
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
      v10 = (v15 - 1) & v15;
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

unint64_t sub_1000C6E98(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1000EDE8C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1000ECAC4(v14, a3 & 1);
      result = sub_1000EDE8C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1000EE124();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_1000C7004(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000EDF58(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1000EE284();
      goto LABEL_7;
    }

    sub_1000ECD7C(v13, a3 & 1);
    v20 = sub_1000EDF58(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1000BFD88(a2, v22);
      return sub_1000C7160(v10, v22, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = v17 + *(*(type metadata accessor for ContentMetadataValue(0) - 8) + 72) * v10;

  return sub_1000C9374(a1, v18);
}

uint64_t sub_1000C7160(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 56 * a1;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  v9 = a4[7];
  v10 = type metadata accessor for ContentMetadataValue(0);
  result = sub_1000C9224(a3, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for ContentMetadataValue);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

void sub_1000C7224(void **a1)
{
  v2 = *(type metadata accessor for ContentMetadataItem(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000C9110(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1000C72CC(v5);
  *a1 = v3;
}

void sub_1000C72CC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for ContentMetadataItem(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for ContentMetadataItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000C77AC(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1000C73F8(0, v2, 1, a1);
  }
}

void sub_1000C73F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v8 - 8);
  v48 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for ContentMetadataItem(0);
  __chkstk_darwin(v46);
  v45 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = (&v36 - v12);
  __chkstk_darwin(v13);
  v16 = (&v36 - v15);
  v38 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v43 = -v18;
    v44 = v17;
    v20 = a1 - a3;
    v37 = v18;
    v21 = v17 + v18 * a3;
    v47 = (&v36 - v15);
LABEL_6:
    v41 = v19;
    v42 = a3;
    v39 = v21;
    v40 = v20;
    v22 = v20;
    while (1)
    {
      v49 = v22;
      sub_1000C9298(v21, v16, type metadata accessor for ContentMetadataItem);
      v23 = v50;
      sub_1000C9298(v19, v50, type metadata accessor for ContentMetadataItem);
      v24 = v16[3];
      v25 = v16[4];
      sub_1000C421C(v16, v24);
      (*(v25 + 32))(v24, v25);
      v26 = String.init(localized:)();
      v28 = v27;
      v30 = v23[3];
      v29 = v23[4];
      sub_1000C421C(v23, v30);
      (*(v29 + 32))(v30, v29);
      if (v26 == String.init(localized:)() && v28 == v31)
      {

        sub_1000C9304(v50, type metadata accessor for ContentMetadataItem);
        v16 = v47;
        sub_1000C9304(v47, type metadata accessor for ContentMetadataItem);
LABEL_5:
        a3 = v42 + 1;
        v19 = v41 + v37;
        v20 = v40 - 1;
        v21 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return;
        }

        goto LABEL_6;
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1000C9304(v50, type metadata accessor for ContentMetadataItem);
      v16 = v47;
      sub_1000C9304(v47, type metadata accessor for ContentMetadataItem);
      v33 = v49;
      if ((v32 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v34 = v45;
      sub_1000C9224(v21, v45, type metadata accessor for ContentMetadataItem);
      swift_arrayInitWithTakeFrontToBack();
      sub_1000C9224(v34, v19, type metadata accessor for ContentMetadataItem);
      v19 += v43;
      v21 += v43;
      v35 = __CFADD__(v33, 1);
      v22 = v33 + 1;
      if (v35)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1000C77AC(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v5;
  v139 = a1;
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9 - 8);
  v155 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for ContentMetadataItem(0);
  v11 = *(v154 - 8);
  __chkstk_darwin(v154);
  v142 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v153 = &v132 - v14;
  __chkstk_darwin(v15);
  v158 = (&v132 - v16);
  __chkstk_darwin(v17);
  v157 = (&v132 - v18);
  __chkstk_darwin(v19);
  v149 = (&v132 - v20);
  __chkstk_darwin(v21);
  v148 = (&v132 - v22);
  __chkstk_darwin(v23);
  v135 = (&v132 - v24);
  __chkstk_darwin(v25);
  v134 = (&v132 - v26);
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_104:
    a4 = *v139;
    if (!*v139)
    {
      goto LABEL_144;
    }

    v4 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v127 = v4;
    }

    else
    {
LABEL_138:
      v127 = sub_1000C8BE4(v4);
    }

    v159 = v127;
    v4 = *(v127 + 2);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v128 = *&v127[16 * v4];
        v129 = v127;
        v130 = *&v127[16 * v4 + 24];
        sub_1000C841C(*a3 + *(v11 + 72) * v128, *a3 + *(v11 + 72) * *&v127[16 * v4 + 16], *a3 + *(v11 + 72) * v130, a4);
        if (v6)
        {
          goto LABEL_115;
        }

        if (v130 < v128)
        {
          goto LABEL_131;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v129 = sub_1000C8BE4(v129);
        }

        if (v4 - 2 >= *(v129 + 2))
        {
          goto LABEL_132;
        }

        v131 = &v129[16 * v4];
        *v131 = v128;
        *(v131 + 1) = v130;
        v159 = v129;
        sub_1000C8B58(v4 - 1);
        v127 = v159;
        v4 = *(v159 + 2);
        if (v4 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

    goto LABEL_115;
  }

  v28 = 0;
  v29 = _swiftEmptyArrayStorage;
  v133 = a3;
  v140 = v11;
  v138 = a4;
  while (1)
  {
    v30 = v28 + 1;
    v143 = v29;
    if (v28 + 1 < v27)
    {
      v150 = v27;
      v31 = v28;
      v32 = *a3;
      v33 = *(v11 + 72);
      v11 = *a3 + v33 * v30;
      v34 = v134;
      sub_1000C9298(v11, v134, type metadata accessor for ContentMetadataItem);
      v35 = v135;
      sub_1000C9298(v32 + v33 * v31, v135, type metadata accessor for ContentMetadataItem);
      LODWORD(v151) = sub_1000C67B4(v34, v35);
      if (!v6)
      {
        v136 = 0;
        v4 = type metadata accessor for ContentMetadataItem;
        sub_1000C9304(v35, type metadata accessor for ContentMetadataItem);
        sub_1000C9304(v34, type metadata accessor for ContentMetadataItem);
        v137 = v31;
        v36 = v31 + 2;
        v37 = v32 + v33 * (v31 + 2);
        v38 = v33;
        v152 = v33;
        while (1)
        {
          v40 = v150;
          if (v150 == v36)
          {
            break;
          }

          v41 = v148;
          sub_1000C9298(v37, v148, type metadata accessor for ContentMetadataItem);
          v156 = v11;
          v42 = v149;
          sub_1000C9298(v11, v149, type metadata accessor for ContentMetadataItem);
          v43 = v41[3];
          v44 = v41[4];
          sub_1000C421C(v41, v43);
          (*(v44 + 32))(v43, v44);
          v45 = String.init(localized:)();
          v47 = v46;
          v48 = v42[3];
          v49 = v42[4];
          sub_1000C421C(v42, v48);
          (*(v49 + 32))(v48, v49);
          if (v45 == String.init(localized:)() && v47 == v50)
          {
            v39 = 0;
          }

          else
          {
            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v4 = type metadata accessor for ContentMetadataItem;
          sub_1000C9304(v149, type metadata accessor for ContentMetadataItem);
          sub_1000C9304(v148, type metadata accessor for ContentMetadataItem);
          ++v36;
          v38 = v152;
          v37 += v152;
          v11 = v156 + v152;
          if ((v151 ^ v39))
          {
            v40 = v36 - 1;
            break;
          }
        }

        v6 = v136;
        a3 = v133;
        a4 = v138;
        v28 = v137;
        if (v151)
        {
          if (v40 < v137)
          {
            goto LABEL_137;
          }

          v11 = v140;
          if (v137 < v40)
          {
            v51 = v40;
            v4 = v38 * (v40 - 1);
            v52 = v40 * v38;
            v150 = v40;
            v53 = v137;
            v54 = v137 * v38;
            do
            {
              if (v53 != --v51)
              {
                v55 = *a3;
                if (!*a3)
                {
                  goto LABEL_141;
                }

                sub_1000C9224(v55 + v54, v142, type metadata accessor for ContentMetadataItem);
                if (v54 < v4 || v55 + v54 >= (v55 + v52))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v54 != v4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1000C9224(v142, v55 + v4, type metadata accessor for ContentMetadataItem);
                v11 = v140;
                v38 = v152;
              }

              ++v53;
              v4 -= v38;
              v52 -= v38;
              v54 += v38;
            }

            while (v53 < v51);
            a4 = v138;
            v28 = v137;
            v40 = v150;
          }
        }

        else
        {
          v11 = v140;
        }

        goto LABEL_30;
      }

      sub_1000C9304(v35, type metadata accessor for ContentMetadataItem);
      sub_1000C9304(v34, type metadata accessor for ContentMetadataItem);
LABEL_115:

      return;
    }

    v40 = v28 + 1;
LABEL_30:
    v56 = a3[1];
    if (v40 >= v56)
    {
      goto LABEL_39;
    }

    if (__OFSUB__(v40, v28))
    {
      goto LABEL_134;
    }

    if (v40 - v28 >= a4)
    {
LABEL_39:
      a4 = v40;
      if (v40 < v28)
      {
        goto LABEL_133;
      }

      goto LABEL_40;
    }

    if (__OFADD__(v28, a4))
    {
      goto LABEL_135;
    }

    if (v28 + a4 >= v56)
    {
      a4 = a3[1];
    }

    else
    {
      a4 += v28;
    }

    if (a4 < v28)
    {
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    if (v40 == a4)
    {
      goto LABEL_39;
    }

    v136 = v6;
    v104 = *a3;
    v105 = *(v11 + 72);
    v106 = *a3 + v105 * (v40 - 1);
    v151 = -v105;
    v137 = v28;
    v107 = v28 - v40;
    v152 = v104;
    v141 = v105;
    v108 = v104 + v40 * v105;
    v144 = a4;
LABEL_92:
    v150 = v40;
    v145 = v108;
    v146 = v107;
    v109 = v108;
    v110 = v107;
    v147 = v106;
    v111 = v106;
LABEL_93:
    v156 = v110;
    v112 = v157;
    sub_1000C9298(v109, v157, type metadata accessor for ContentMetadataItem);
    v113 = v158;
    sub_1000C9298(v111, v158, type metadata accessor for ContentMetadataItem);
    v114 = v112[3];
    v115 = v112[4];
    sub_1000C421C(v112, v114);
    (*(v115 + 32))(v114, v115);
    v116 = String.init(localized:)();
    v118 = v117;
    v119 = v113[3];
    v120 = v113[4];
    sub_1000C421C(v113, v119);
    (*(v120 + 32))(v119, v120);
    v121 = String.init(localized:)();
    v4 = v122;
    if (v116 != v121 || v118 != v122)
    {
      break;
    }

    sub_1000C9304(v158, type metadata accessor for ContentMetadataItem);
    sub_1000C9304(v157, type metadata accessor for ContentMetadataItem);
LABEL_91:
    v40 = v150 + 1;
    v106 = v147 + v141;
    v107 = v146 - 1;
    a4 = v144;
    v108 = v145 + v141;
    if (v150 + 1 != v144)
    {
      goto LABEL_92;
    }

    v6 = v136;
    a3 = v133;
    v11 = v140;
    v28 = v137;
    if (v144 < v137)
    {
      goto LABEL_133;
    }

LABEL_40:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v144 = a4;
    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v143;
    }

    else
    {
      v29 = sub_1000C8CF8(0, *(v143 + 2) + 1, 1, v143);
    }

    v59 = *(v29 + 2);
    v58 = *(v29 + 3);
    v4 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      v29 = sub_1000C8CF8((v58 > 1), v59 + 1, 1, v29);
    }

    *(v29 + 2) = v4;
    v60 = &v29[16 * v59];
    v61 = v144;
    *(v60 + 4) = v28;
    *(v60 + 5) = v61;
    v62 = *v139;
    if (!*v139)
    {
      goto LABEL_143;
    }

    if (v59)
    {
      while (2)
      {
        a4 = v4 - 1;
        if (v4 >= 4)
        {
          v67 = &v29[16 * v4 + 32];
          v68 = *(v67 - 64);
          v69 = *(v67 - 56);
          v73 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          if (v73)
          {
            goto LABEL_120;
          }

          v72 = *(v67 - 48);
          v71 = *(v67 - 40);
          v73 = __OFSUB__(v71, v72);
          v65 = v71 - v72;
          v66 = v73;
          if (v73)
          {
            goto LABEL_121;
          }

          v74 = &v29[16 * v4];
          v76 = *v74;
          v75 = *(v74 + 1);
          v73 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v73)
          {
            goto LABEL_123;
          }

          v73 = __OFADD__(v65, v77);
          v78 = v65 + v77;
          if (v73)
          {
            goto LABEL_126;
          }

          if (v78 >= v70)
          {
            v96 = &v29[16 * a4 + 32];
            v98 = *v96;
            v97 = *(v96 + 1);
            v73 = __OFSUB__(v97, v98);
            v99 = v97 - v98;
            if (v73)
            {
              goto LABEL_130;
            }

            if (v65 < v99)
            {
              a4 = v4 - 2;
            }
          }

          else
          {
LABEL_59:
            if (v66)
            {
              goto LABEL_122;
            }

            v79 = &v29[16 * v4];
            v81 = *v79;
            v80 = *(v79 + 1);
            v82 = __OFSUB__(v80, v81);
            v83 = v80 - v81;
            v84 = v82;
            if (v82)
            {
              goto LABEL_125;
            }

            v85 = &v29[16 * a4 + 32];
            v87 = *v85;
            v86 = *(v85 + 1);
            v73 = __OFSUB__(v86, v87);
            v88 = v86 - v87;
            if (v73)
            {
              goto LABEL_128;
            }

            if (__OFADD__(v83, v88))
            {
              goto LABEL_129;
            }

            if (v83 + v88 < v65)
            {
              goto LABEL_73;
            }

            if (v65 < v88)
            {
              a4 = v4 - 2;
            }
          }
        }

        else
        {
          if (v4 == 3)
          {
            v63 = *(v29 + 4);
            v64 = *(v29 + 5);
            v73 = __OFSUB__(v64, v63);
            v65 = v64 - v63;
            v66 = v73;
            goto LABEL_59;
          }

          v89 = &v29[16 * v4];
          v91 = *v89;
          v90 = *(v89 + 1);
          v73 = __OFSUB__(v90, v91);
          v83 = v90 - v91;
          v84 = v73;
LABEL_73:
          if (v84)
          {
            goto LABEL_124;
          }

          v92 = &v29[16 * a4];
          v94 = *(v92 + 4);
          v93 = *(v92 + 5);
          v73 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v73)
          {
            goto LABEL_127;
          }

          if (v95 < v83)
          {
            break;
          }
        }

        v100 = a4 - 1;
        if (a4 - 1 >= v4)
        {
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v101 = v29;
        v4 = *&v29[16 * v100 + 32];
        v102 = *&v29[16 * a4 + 40];
        sub_1000C841C(*a3 + *(v11 + 72) * v4, *a3 + *(v11 + 72) * *&v29[16 * a4 + 32], *a3 + *(v11 + 72) * v102, v62);
        if (v6)
        {
          goto LABEL_115;
        }

        if (v102 < v4)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_1000C8BE4(v101);
        }

        if (v100 >= *(v101 + 2))
        {
          goto LABEL_119;
        }

        v103 = &v101[16 * v100];
        *(v103 + 4) = v4;
        *(v103 + 5) = v102;
        v159 = v101;
        sub_1000C8B58(a4);
        v29 = v159;
        v4 = *(v159 + 2);
        if (v4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v27 = a3[1];
    v28 = v144;
    a4 = v138;
    if (v144 >= v27)
    {
      goto LABEL_104;
    }
  }

  v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v4 = type metadata accessor for ContentMetadataItem;
  sub_1000C9304(v158, type metadata accessor for ContentMetadataItem);
  sub_1000C9304(v157, type metadata accessor for ContentMetadataItem);
  if ((v123 & 1) == 0)
  {
    goto LABEL_91;
  }

  v124 = v156;
  if (v152)
  {
    v4 = type metadata accessor for ContentMetadataItem;
    v125 = v153;
    sub_1000C9224(v109, v153, type metadata accessor for ContentMetadataItem);
    swift_arrayInitWithTakeFrontToBack();
    sub_1000C9224(v125, v111, type metadata accessor for ContentMetadataItem);
    v111 += v151;
    v109 += v151;
    v126 = __CFADD__(v124, 1);
    v110 = v124 + 1;
    if (v126)
    {
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

void sub_1000C841C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v8 - 8);
  v65 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for ContentMetadataItem(0);
  __chkstk_darwin(v64);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = (&v55 - v12);
  __chkstk_darwin(v13);
  v15 = (&v55 - v14);
  __chkstk_darwin(v16);
  v18 = (&v55 - v17);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_68;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_69;
  }

  v22 = (a2 - a1) / v20;
  v70 = a1;
  v69 = a4;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v24;
    if (v24 >= 1)
    {
      v38 = -v20;
      v39 = a4 + v24;
      v66 = a4;
      v58 = -v20;
      v59 = a1;
      while (2)
      {
        while (1)
        {
          v56 = v37;
          v40 = a2;
          a2 += v38;
          v67 = a2;
          v60 = v40;
          while (1)
          {
            if (v40 <= a1)
            {
              v70 = v40;
              v68 = v56;
              goto LABEL_66;
            }

            v41 = a3;
            v57 = v37;
            v61 = v39 + v38;
            v42 = v62;
            sub_1000C9298(v39 + v38, v62, type metadata accessor for ContentMetadataItem);
            v43 = v63;
            sub_1000C9298(a2, v63, type metadata accessor for ContentMetadataItem);
            v44 = v42[3];
            v45 = v42[4];
            sub_1000C421C(v42, v44);
            (*(v45 + 32))(v44, v45);
            v46 = String.init(localized:)();
            v48 = v47;
            v49 = v43[3];
            v50 = v43[4];
            sub_1000C421C(v43, v49);
            (*(v50 + 32))(v49, v50);
            if (v46 == String.init(localized:)() && v48 == v51)
            {
              v52 = 0;
            }

            else
            {
              v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            v38 = v58;
            a3 = v41 + v58;
            sub_1000C9304(v63, type metadata accessor for ContentMetadataItem);
            sub_1000C9304(v62, type metadata accessor for ContentMetadataItem);
            v53 = v66;
            a2 = v67;
            a1 = v59;
            if (v52)
            {
              break;
            }

            v54 = v61;
            v37 = v61;
            if (v41 < v39 || a3 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v41 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v39 = v37;
            v40 = v60;
            if (v54 <= v53)
            {
              a2 = v60;
              goto LABEL_65;
            }
          }

          if (v41 < v60 || a3 >= v60)
          {
            break;
          }

          v37 = v57;
          if (v41 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v53)
          {
            goto LABEL_65;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v37 = v57;
        if (v39 > v53)
        {
          continue;
        }

        break;
      }
    }

LABEL_65:
    v70 = a2;
    v68 = v37;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v23;
    v68 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v60 = v20;
      v61 = a3;
      do
      {
        v67 = a2;
        sub_1000C9298(a2, v18, type metadata accessor for ContentMetadataItem);
        v66 = a4;
        sub_1000C9298(a4, v15, type metadata accessor for ContentMetadataItem);
        v26 = v18[3];
        v27 = v18[4];
        sub_1000C421C(v18, v26);
        (*(v27 + 32))(v26, v27);
        v28 = String.init(localized:)();
        v30 = v29;
        v32 = v15[3];
        v31 = v15[4];
        sub_1000C421C(v15, v32);
        (*(v31 + 32))(v32, v31);
        if (v28 == String.init(localized:)() && v30 == v33)
        {

          sub_1000C9304(v15, type metadata accessor for ContentMetadataItem);
          sub_1000C9304(v18, type metadata accessor for ContentMetadataItem);
          v34 = v60;
        }

        else
        {
          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_1000C9304(v15, type metadata accessor for ContentMetadataItem);
          sub_1000C9304(v18, type metadata accessor for ContentMetadataItem);
          v34 = v60;
          if (v35)
          {
            a4 = v66;
            a2 = v67 + v60;
            v36 = v61;
            if (a1 < v67 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v67)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            goto LABEL_35;
          }
        }

        a4 = v66 + v34;
        v36 = v61;
        if (a1 < v66 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v66)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v69 = a4;
        a2 = v67;
LABEL_35:
        a1 += v34;
        v70 = a1;
      }

      while (a4 < v63 && a2 < v36);
    }
  }

LABEL_66:
  sub_1000C8C10(&v70, &v69, &v68, type metadata accessor for ContentMetadataItem);
}

uint64_t sub_1000C8B58(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000C8BE4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000C8C10(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1000C8CF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BFBAC(&qword_10020B790);
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

size_t sub_1000C8DFC(size_t a1, int64_t a2, char a3)
{
  result = sub_1000C8F34(a1, a2, a3, *v3, &qword_10020B798, &unk_1001A16C8, type metadata accessor for ContentMetadataItem);
  *v3 = result;
  return result;
}

char *sub_1000C8E40(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BFBAC(&qword_10020B7A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_1000C8F34(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000BFBAC(a5);
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

uint64_t sub_1000C91BC(uint64_t a1)
{
  v2 = sub_1000BFBAC(&qword_10020B780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C9224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C928C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000C9298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C9304(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000C9374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentMetadataValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C93D8(uint64_t a1, int a2)
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

uint64_t sub_1000C9420(uint64_t result, int a2, int a3)
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

uint64_t sub_1000C948C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static ButtonRole.cancel.getter();
  v8 = type metadata accessor for SystemRoleButton();
  v9 = v8[5];
  v10 = type metadata accessor for LocalizedStringResource();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = swift_allocObject();
  v12 = a1 & 1;
  *(v11 + 16) = v12;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;

  *(a4 + v8[6]) = v12;
  v14 = (a4 + v8[7]);
  *v14 = sub_10007C1D0;
  v14[1] = v11;
  return result;
}

uint64_t sub_1000C95D8@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v2 = type metadata accessor for ToolbarItemPlacement();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v15 - v7;
  v9 = sub_1000BFBAC(&qword_10020B7B0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v15 - v11;
  v13 = *v1;
  static ToolbarItemPlacement.cancellationAction.getter();
  v16 = v13;
  v17 = *(v1 + 8);
  (*(v3 + 16))(v5, v8, v2);
  type metadata accessor for SystemRoleButton();
  sub_1000C9894();
  ToolbarItem<>.init(id:placement:showsByDefault:content:)();
  (*(v3 + 8))(v8, v2);
  sub_1000C5490(&qword_10020B7C0, &qword_10020B7B0);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_1000C9894()
{
  result = qword_10020B7B8;
  if (!qword_10020B7B8)
  {
    type metadata accessor for SystemRoleButton();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B7B8);
  }

  return result;
}

uint64_t sub_1000C98EC()
{

  return swift_deallocObject();
}

uint64_t sub_1000C9938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ButtonRole();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000BFBAC(&qword_10020B670);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000C9A64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ButtonRole();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000BFBAC(&qword_10020B670);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000C9B78()
{
  type metadata accessor for ButtonRole();
  if (v0 <= 0x3F)
  {
    sub_1000C9C1C();
    if (v1 <= 0x3F)
    {
      sub_1000C9C74();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000C9C1C()
{
  if (!qword_10020B830)
  {
    type metadata accessor for LocalizedStringResource();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10020B830);
    }
  }
}

unint64_t sub_1000C9C74()
{
  result = qword_10020B838;
  if (!qword_10020B838)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10020B838);
  }

  return result;
}

uint64_t sub_1000C9CC4()
{
  sub_1000C3C50(&qword_10020B7B0);
  sub_1000C5490(&qword_10020B7C0, &qword_10020B7B0);
  return *(swift_getOpaqueTypeConformance2() + 8);
}

uint64_t sub_1000C9D7C@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v1 = type metadata accessor for ButtonRole();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin(v1);
  v48 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1000BFBAC(&qword_10020B878);
  v51 = *(v60 - 8);
  __chkstk_darwin(v60);
  v50 = &v44 - v3;
  v58 = sub_1000BFBAC(&qword_10020B880);
  __chkstk_darwin(v58);
  v59 = &v44 - v4;
  v5 = type metadata accessor for SystemRoleButton();
  v6 = v5 - 8;
  v54 = *(v5 - 8);
  v7 = *(v54 + 64);
  __chkstk_darwin(v5);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BFBAC(&qword_10020B888);
  __chkstk_darwin(v8 - 8);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v57 = sub_1000BFBAC(&qword_10020B890);
  v49 = *(v57 - 8);
  __chkstk_darwin(v57);
  v47 = &v44 - v13;
  v14 = sub_1000BFBAC(&qword_10020B670);
  __chkstk_darwin(v14 - 8);
  v16 = &v44 - v15;
  v17 = type metadata accessor for LocalizedStringResource();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v44 - v22;
  v24 = *(v6 + 28);
  v25 = v53;
  sub_1000C5684(v53 + v24, v16, &qword_10020B670);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1000C5624(v16, &qword_10020B670);
    (*(v55 + 16))(v48, v25, v56);
    v26 = v52;
    sub_1000CA838(v25, v52);
    v27 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v28 = swift_allocObject();
    sub_1000CA8A0(v26, v28 + v27);
    v29 = v50;
    Button<>.init(role:action:)();
    v30 = v51;
    v31 = v60;
    (*(v51 + 16))(v59, v29, v60);
    swift_storeEnumTagMultiPayload();
    sub_1000C5490(&qword_10020B898, &qword_10020B890);
    sub_1000C5490(&qword_10020B8A0, &qword_10020B878);
    _ConditionalContent<>.init(storage:)();
    return (*(v30 + 8))(v29, v31);
  }

  else
  {
    v33 = *(v18 + 32);
    v45 = v23;
    v33(v23, v16, v17);
    (*(v18 + 16))(v20, v23, v17);
    v35 = v55;
    v34 = v56;
    (*(v55 + 16))(v12, v25, v56);
    (*(v35 + 56))(v12, 0, 1, v34);
    v36 = v52;
    sub_1000CA838(v25, v52);
    v37 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v38 = swift_allocObject();
    sub_1000CA8A0(v36, v38 + v37);
    v39 = sub_1000C5684(v12, v46, &qword_10020B888);
    __chkstk_darwin(v39);
    *(&v44 - 2) = v20;
    v40 = v47;
    Button.init(role:action:label:)();
    sub_1000C5624(v12, &qword_10020B888);
    v41 = *(v18 + 8);
    v41(v20, v17);
    v42 = v49;
    v43 = v57;
    (*(v49 + 16))(v59, v40, v57);
    swift_storeEnumTagMultiPayload();
    sub_1000C5490(&qword_10020B898, &qword_10020B890);
    sub_1000C5490(&qword_10020B8A0, &qword_10020B878);
    _ConditionalContent<>.init(storage:)();
    (*(v42 + 8))(v40, v43);
    return (v41)(v45, v17);
  }
}

uint64_t sub_1000CA598(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for SystemRoleButton();
  (*(a1 + *(v2 + 28)))();
}

uint64_t sub_1000CA658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C9D7C(a2);
  v5 = *(v2 + *(a1 + 24));
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = (v5 & 1) == 0;
  result = sub_1000BFBAC(&qword_10020B870);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = sub_10009D8D8;
  v9[2] = v7;
  return result;
}

uint64_t sub_1000CA6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = Text.init(_:)();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_1000CA7D0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000CA838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemRoleButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CA8A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemRoleButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CA90C()
{
  v1 = type metadata accessor for SystemRoleButton();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for ButtonRole();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = *(v1 + 20);
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  return swift_deallocObject();
}

unint64_t sub_1000CAAF8()
{
  result = qword_10020B8A8;
  if (!qword_10020B8A8)
  {
    sub_1000C3C50(&qword_10020B870);
    sub_1000CABB0();
    sub_1000C5490(&qword_10020B8C0, &qword_10020B8C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B8A8);
  }

  return result;
}

unint64_t sub_1000CABB0()
{
  result = qword_10020B8B0;
  if (!qword_10020B8B0)
  {
    sub_1000C3C50(&qword_10020B8B8);
    sub_1000C5490(&qword_10020B898, &qword_10020B890);
    sub_1000C5490(&qword_10020B8A0, &qword_10020B878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B8B0);
  }

  return result;
}

uint64_t sub_1000CAC94(uint64_t a1, void *a2)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  _StringGuts.grow(_:)(33);

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 8250;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  String.append(_:)(v9);
  sub_1000E9670(0xD00000000000001BLL, 0x80000001001B3F70);

  type metadata accessor for ContentMetadataValue(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000CAD8C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  _StringGuts.grow(_:)(72);
  v11._object = 0x80000001001B3E80;
  v11._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v11);
  v12._countAndFlagsBits = a5;
  v12._object = a6;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x206E692029;
  v13._object = 0xE500000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = a3;
  v14._object = a4;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x20646E756F46202ELL;
  v15._object = 0xE800000000000000;
  String.append(_:)(v15);
  sub_1000C421C(a1, a1[3]);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v16._countAndFlagsBits = 0xD00000000000001ALL;
  v16._object = 0x80000001001B3EA0;
  String.append(_:)(v16);
  v17._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v17);

  sub_1000E9670(0, 0xE000000000000000);
}

uint64_t sub_1000CAEF0@<X0>(char a1@<W0>, uint64_t (**a2)()@<X8>)
{
  switch(a1)
  {
    case 1:
      v14 = kCGImagePropertyExifApertureValue;
      aBlock = 3;
      LOBYTE(v77) = 0;
      v78 = 0;
      goto LABEL_28;
    case 2:

      return sub_1000CBAB4(a2);
    case 3:
      v15 = sub_1000CF770(kCGImagePropertyProfileName, 0x6F72506567616D69, 0xEF73656974726570, *v2);
      if (v16)
      {
        goto LABEL_52;
      }

      goto LABEL_64;
    case 4:
      v15 = sub_1000CF770(kCGImagePropertyNamedColorSpace, 0x6F72506567616D69, 0xEF73656974726570, *v2);
      if (v16)
      {
        goto LABEL_52;
      }

      goto LABEL_64;
    case 5:
      v39 = *(v2 + 16);
      if (v39)
      {
        v15 = sub_1000CF770(kCGImagePropertyIPTCCaptionAbstract, 1668575337, 0xE400000000000000, v39);
        if (v16)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_64;
    case 6:
      v48 = *(v2 + 16);
      if (v48)
      {
        v15 = sub_1000CF770(kCGImagePropertyIPTCExtDigitalSourceType, 1668575337, 0xE400000000000000, v48);
        if (v16)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_64;
    case 7:
      type metadata accessor for ContentMetadataValue(0);
      v28 = swift_allocBox();
      v30 = v29;
      swift_storeEnumTagMultiPayload();
      v31 = sub_1000E86C0(&off_1001F35D0);
      sub_1000BFBAC(&qword_10020B958);
      swift_arrayDestroy();
      v32 = *(v2 + 24);
      v33 = swift_allocObject();
      *(v33 + 16) = v31;
      *(v33 + 24) = 7;
      *(v33 + 32) = v28;
      v80 = sub_1000D0D10;
      v81 = v33;
      aBlock = _NSConcreteStackBlock;
      v77 = 1107296256;
      v34 = &unk_1001F49C8;
      goto LABEL_55;
    case 8:
      v57 = *(v2 + 16);
      if (!v57)
      {
        goto LABEL_64;
      }

      v15 = sub_1000CF770(kCGImagePropertyIPTCCredit, 1668575337, 0xE400000000000000, v57);
      if (!v16)
      {
        goto LABEL_64;
      }

LABEL_52:
      v58 = v15;
      v59 = v16;
      v56 = swift_allocObject();
      *(v56 + 16) = v58;
      *(v56 + 24) = v59;
      goto LABEL_53;
    case 9:
      v17 = *(v2 + 8);
      v19 = *(v2 + 16);
      v18 = *(v2 + 24);
      v20 = sub_1000CFB58(kCGImagePropertyPixelWidth, kCGImagePropertyPixelHeight, *v2);
      if (v22)
      {
        goto LABEL_64;
      }

      v23 = v20;
      v24 = v21;
      v75 = v17;
      aBlock = v19;
      v25 = swift_allocObject();
      v26 = *(v2 + 16);
      *(v25 + 16) = *v2;
      *(v25 + 32) = v26;
      *(v25 + 48) = *(v2 + 32);
      *(v25 + 56) = v23;
      *(v25 + 64) = v24;
      v27 = sub_1000D08D0;
      goto LABEL_58;
    case 10:

      return sub_1000CBEA4(a2);
    case 11:
      v14 = kCGImagePropertyExifExposureTime;
      aBlock = 3;
      LOBYTE(v77) = 1;
      v78 = 0;
LABEL_28:
      LOBYTE(v79) = 1;
      goto LABEL_29;
    case 12:

      return sub_1000CC294(a2);
    case 13:
      v44 = *(v2 + 8);
      if (v44)
      {
        v45 = *(v2 + 32);
        v46 = sub_1000CF8B8(kCGImagePropertyExifFlash, 1718188133, 0xE400000000000000, v44, &type metadata for Int);
        if ((v47 & 1) == 0)
        {
          (*(v45 + 128))(v46 & 1);
        }
      }

      goto LABEL_64;
    case 14:
      v10 = *(v2 + 8);
      if (v10)
      {
        v11 = *(v2 + 32);
        v12 = sub_1000CF8B8(kCGImagePropertyExifFlash, 1718188133, 0xE400000000000000, v10, &type metadata for Int);
        if ((v13 & 1) == 0)
        {
          (*(v11 + 128))((v12 >> 6) & 1);
        }
      }

      goto LABEL_64;
    case 15:
      v14 = kCGImagePropertyExifFocalLength;
      aBlock = 3;
      LOBYTE(v77) = 0;
      v78 = 8;
      LOBYTE(v79) = 0;
LABEL_29:
      v80 = 0;
      v81 = 0;
      return sub_1000CCF84(v14, a2);
    case 16:
      v5 = *v2;
      v6 = *(v2 + 32);
      v7 = sub_1000CFC48(kCGImagePropertyHasAlpha, 0x6F72506567616D69, 0xEF73656974726570, v5);
      if (v7 != 2)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_63;
      }

      v8 = sub_1000CF8B8(kCGImagePropertyHasAlpha, 0x6F72506567616D69, 0xEF73656974726570, v5, &type metadata for Int);
      if ((v9 & 1) == 0 && v8)
      {
LABEL_63:
        (*(v6 + 128))(1);
      }

LABEL_64:
      type metadata accessor for ContentMetadataValue(0);
LABEL_65:

      return swift_storeEnumTagMultiPayload();
    case 17:

      return sub_1000CC418(a2);
    case 18:
      v49 = CGImageMetadataCopyTagMatchingImageProperty(*(v2 + 24), kCGImagePropertyIPTCDictionary, kCGImagePropertyIPTCKeywords);
      if (!v49)
      {
        goto LABEL_64;
      }

      v50 = v49;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = sub_1000CD494(v51, v52, 0);
      v55 = v54;

      if (!v55)
      {
        goto LABEL_64;
      }

      v56 = swift_allocObject();
      *(v56 + 16) = v53;
      *(v56 + 24) = v55;
LABEL_53:
      *a2 = sub_1000D0D0C;
      a2[1] = v56;
      type metadata accessor for ContentMetadataValue(0);
      goto LABEL_65;
    case 19:
      v65 = *(v2 + 8);
      v66 = *(v2 + 16);
      v18 = *(v2 + 24);
      v67 = sub_1000CFB58(kCGImagePropertyDPIWidth, kCGImagePropertyDPIHeight, *v2);
      if (v69)
      {
        goto LABEL_64;
      }

      v70 = v67;
      v71 = v68;
      v75 = v65;
      aBlock = v66;
      v25 = swift_allocObject();
      v72 = *(v2 + 16);
      *(v25 + 16) = *v2;
      *(v25 + 32) = v72;
      *(v25 + 48) = *(v2 + 32);
      *(v25 + 56) = v70;
      *(v25 + 64) = v71;
      v27 = sub_1000D0848;
LABEL_58:
      *a2 = v27;
      a2[1] = v25;
      type metadata accessor for ContentMetadataValue(0);
      swift_storeEnumTagMultiPayload();

      sub_1000C5684(&v75, &v74, &qword_10020B960);
      sub_1000C5684(&aBlock, &v74, &qword_10020B960);
      v73 = v18;

    case 20:
      type metadata accessor for ContentMetadataValue(0);
      v35 = swift_allocBox();
      v30 = v36;
      swift_storeEnumTagMultiPayload();
      v37 = sub_1000E86C0(&off_1001F35D0);
      sub_1000BFBAC(&qword_10020B958);
      swift_arrayDestroy();
      v32 = *(v2 + 24);
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      *(v38 + 24) = 20;
      *(v38 + 32) = v35;
      v80 = sub_1000D0D10;
      v81 = v38;
      aBlock = _NSConcreteStackBlock;
      v77 = 1107296256;
      v34 = &unk_1001F48B0;
      goto LABEL_55;
    case 21:
      type metadata accessor for ContentMetadataValue(0);
      v40 = swift_allocBox();
      v30 = v41;
      swift_storeEnumTagMultiPayload();
      v42 = sub_1000E86C0(&off_1001F35D0);
      sub_1000BFBAC(&qword_10020B958);
      swift_arrayDestroy();
      v32 = *(v2 + 24);
      v43 = swift_allocObject();
      *(v43 + 16) = v42;
      *(v43 + 24) = 21;
      *(v43 + 32) = v40;
      v80 = sub_1000D0D10;
      v81 = v43;
      aBlock = _NSConcreteStackBlock;
      v77 = 1107296256;
      v34 = &unk_1001F4860;
      goto LABEL_55;
    case 22:
      type metadata accessor for ContentMetadataValue(0);
      v60 = swift_allocBox();
      v30 = v61;
      swift_storeEnumTagMultiPayload();
      v62 = sub_1000E86C0(&off_1001F35D0);
      sub_1000BFBAC(&qword_10020B958);
      swift_arrayDestroy();
      v32 = *(v2 + 24);
      v63 = swift_allocObject();
      *(v63 + 16) = v62;
      *(v63 + 24) = 22;
      *(v63 + 32) = v60;
      v80 = sub_1000D0834;
      v81 = v63;
      aBlock = _NSConcreteStackBlock;
      v77 = 1107296256;
      v34 = &unk_1001F4810;
LABEL_55:
      v78 = sub_1000CDB8C;
      v79 = v34;
      v64 = _Block_copy(&aBlock);

      CGImageMetadataEnumerateTagsUsingBlock(v32, 0, 0, v64);
      _Block_release(v64);
      swift_beginAccess();
      sub_1000D07B4(v30, a2);

    case 23:

      return sub_1000CC904(a2);
    default:

      return sub_1000CC618(a2);
  }
}

uint64_t sub_1000CBAB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BFBAC(&qword_10020B670);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = *(v1 + 8);
  if (v9 && (v10 = sub_1000CF8B8(kCGImagePropertyExifMeteringMode, 1718188133, 0xE400000000000000, v9, &type metadata for Int), (v11 & 1) == 0))
  {
    if (sub_1000D9FD8(v10) == 7)
    {
      v13 = type metadata accessor for LocalizedStringResource();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v5, 1, 1, v13);
      sub_1000D9B34(v8);
      if ((*(v14 + 48))(v5, 1, v13) != 1)
      {
        sub_1000C5624(v5, &qword_10020B670);
      }
    }

    else
    {
      sub_1000D961C();
      v13 = type metadata accessor for LocalizedStringResource();
      v15 = *(v13 - 8);
      v16 = *(v15 + 56);
      v16(v5, 0, 1, v13);
      (*(v15 + 32))(v8, v5, v13);
      v16(v8, 0, 1, v13);
    }

    type metadata accessor for LocalizedStringResource();
    v17 = *(v13 - 8);
    if ((*(v17 + 48))(v8, 1, v13) == 1)
    {
      sub_1000C5624(v8, &qword_10020B670);
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      v24 = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v21._object = 0x80000001001B3E30;
      v21._countAndFlagsBits = 0xD000000000000013;
      String.append(_:)(v21);
      v22._countAndFlagsBits = v18;
      v22._object = v20;
      String.append(_:)(v22);

      v23._countAndFlagsBits = 0xD000000000000028;
      v23._object = 0x80000001001B3E50;
      String.append(_:)(v23);
      sub_1000E9670(v24, v25);
    }

    else
    {
      (*(v17 + 32))(a1, v8, v13);
    }

    type metadata accessor for ContentMetadataValue(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    type metadata accessor for ContentMetadataValue(0);

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1000CBEA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BFBAC(&qword_10020B670);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = *(v1 + 8);
  if (v9 && (v10 = sub_1000CF8B8(kCGImagePropertyExifExposureProgram, 1718188133, 0xE400000000000000, v9, &type metadata for Int), (v11 & 1) == 0))
  {
    if (sub_1000DA060(v10) == 8)
    {
      v13 = type metadata accessor for LocalizedStringResource();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v5, 1, 1, v13);
      sub_1000D9600(v8);
      if ((*(v14 + 48))(v5, 1, v13) != 1)
      {
        sub_1000C5624(v5, &qword_10020B670);
      }
    }

    else
    {
      sub_1000D905C();
      v13 = type metadata accessor for LocalizedStringResource();
      v15 = *(v13 - 8);
      v16 = *(v15 + 56);
      v16(v5, 0, 1, v13);
      (*(v15 + 32))(v8, v5, v13);
      v16(v8, 0, 1, v13);
    }

    type metadata accessor for LocalizedStringResource();
    v17 = *(v13 - 8);
    if ((*(v17 + 48))(v8, 1, v13) == 1)
    {
      sub_1000C5624(v8, &qword_10020B670);
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      v24 = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v21._object = 0x80000001001B3E30;
      v21._countAndFlagsBits = 0xD000000000000013;
      String.append(_:)(v21);
      v22._countAndFlagsBits = v18;
      v22._object = v20;
      String.append(_:)(v22);

      v23._countAndFlagsBits = 0xD000000000000028;
      v23._object = 0x80000001001B3E50;
      String.append(_:)(v23);
      sub_1000E9670(v24, v25);
    }

    else
    {
      (*(v17 + 32))(a1, v8, v13);
    }

    type metadata accessor for ContentMetadataValue(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    type metadata accessor for ContentMetadataValue(0);

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1000CC294@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for BundleLookupReference_ContentInfoViewer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_1000CCF84(kCGImagePropertyExifFNumber, a1);
}

uint64_t sub_1000CC418@<X0>(void *a1@<X8>)
{
  sub_1000CD140(kCGImagePropertyExifISOSpeedRatings, &v10);
  if (!v11)
  {
    sub_1000C5624(&v10, &qword_10020B968);
    type metadata accessor for ContentMetadataValue(0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_1000D0820(&v10, v12);
  sub_1000D0544(v12, &v10);
  sub_1000BFBAC(&qword_10020B970);
  if (swift_dynamicCast())
  {
    if (!*(v9 + 16))
    {

      v8 = 0x80000001001B3F40;
      v7 = 0xD000000000000025;
      goto LABEL_11;
    }

    sub_1000D0544(v9 + 32, &v10);

    sub_1000D05A0(v12);
    sub_1000D0820(&v10, v12);
  }

  sub_1000D0544(v12, &v10);
  if (swift_dynamicCast())
  {
    *&v10 = v9;
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    v4 = v3;
    sub_1000D05A0(v12);
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = v4;
    *a1 = sub_1000D0D0C;
    a1[1] = v5;
    type metadata accessor for ContentMetadataValue(0);
    return swift_storeEnumTagMultiPayload();
  }

  v7 = 0xD000000000000029;
  v8 = 0x80000001001B3F10;
LABEL_11:
  sub_1000CAC94(v7, v8);
  return sub_1000D05A0(v12);
}

uint64_t sub_1000CC618@<X0>(void *a1@<X8>)
{
  v19 = a1;
  v2 = sub_1000BFBAC(&qword_10020B998);
  __chkstk_darwin(v2 - 8);
  v4 = (&v19 - v3);
  v5 = type metadata accessor for LocalizedMapCoordinate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 32);
  type metadata accessor for CFString(0);
  sub_1000D09A4(&qword_10020B360);

  v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  objc_opt_self();
  if (swift_dynamicCastObjCClass() && (v20 = 0, static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)(), v20) && (v11 = sub_1000CE550(v20), v13 = v12, v15 = v14, , (v15 & 1) == 0))
  {
    *v4 = v11;
    *(v4 + 1) = v13;
    sub_1000DAC88(*&v11);
    sub_1000DAC88(v13);
    (*(v6 + 56))(v4, 0, 1, v5);
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_1000C5624(v4, &qword_10020B998);
  }

  else
  {
    sub_1000D09E8(v4, v8);
    v16 = type metadata accessor for ContentMetadataMapCoordinate(0);
    v17 = v19;
    sub_1000D09E8(v8, v19 + *(v16 + 20));
    *v17 = v9;
  }

  type metadata accessor for ContentMetadataValue(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000CC904@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BFBAC(&qword_10020B670);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = *(v1 + 8);
  if (v6 && (v7 = sub_1000CF8B8(kCGImagePropertyExifWhiteBalance, 1718188133, 0xE400000000000000, v6, &type metadata for Int), (v8 & 1) == 0))
  {
    sub_1000DB2DC(v7, v5);
    v10 = type metadata accessor for LocalizedStringResource();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v5, 1, v10) == 1)
    {
      sub_1000C5624(v5, &qword_10020B670);
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      v18 = 0;
      v19 = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v15._object = 0x80000001001B3E30;
      v15._countAndFlagsBits = 0xD000000000000013;
      String.append(_:)(v15);
      v16._countAndFlagsBits = v12;
      v16._object = v14;
      String.append(_:)(v16);

      v17._countAndFlagsBits = 0xD000000000000028;
      v17._object = 0x80000001001B3E50;
      String.append(_:)(v17);
      sub_1000E9670(v18, v19);
    }

    else
    {
      (*(v11 + 32))(a1, v5, v10);
    }

    type metadata accessor for ContentMetadataValue(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    type metadata accessor for ContentMetadataValue(0);

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1000CCB54(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaDictionary.count.getter())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = &_swiftEmptyDictionarySingleton;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(a1 + 32);
    v6 = ~v9;
    v5 = a1 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(a1 + 64);
    v8 = a1;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1000BFBAC(&qword_10020B950);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = __CocoaDictionary.makeIterator()();
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = v4 | 0x8000000000000000;
LABEL_11:
  v12 = (v6 + 64) >> 6;
  v13 = (v3 + 8);

  v15 = 0;
  v31 = v8;
  while ((v8 & 0x8000000000000000) != 0)
  {
    v23 = __CocoaDictionary.Iterator.next()();
    if (!v23 || (*&v32 = v23, type metadata accessor for CFString(0), swift_dynamicCast(), v22 = v36, v19 = v15, v21 = v7, !v36))
    {
LABEL_34:
      sub_1000D0818();

      return v3;
    }

LABEL_25:
    *&v40[0] = v22;
    type metadata accessor for CFString(0);
    swift_dynamicCast();
    swift_dynamicCast();
    v36 = v32;
    v37 = v33;
    v38 = v34;
    sub_1000D0820(&v35, v39);
    v32 = v36;
    v33 = v37;
    v34 = v38;
    sub_1000D0820(v39, v40);
    result = AnyHashable._rawHashValue(seed:)(v3[5]);
    v24 = -1 << *(v3 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*&v13[8 * (v25 >> 6)]) != 0)
    {
      v16 = __clz(__rbit64((-1 << v25) & ~*&v13[8 * (v25 >> 6)])) | v25 & 0x7FFFFFFFFFFFFFC0;
      v8 = v31;
    }

    else
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      v8 = v31;
      do
      {
        if (++v26 == v28 && (v27 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *&v13[8 * v26];
      }

      while (v30 == -1);
      v16 = __clz(__rbit64(~v30)) + (v26 << 6);
    }

    *&v13[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
    v17 = v3[6] + 40 * v16;
    *v17 = v32;
    *(v17 + 16) = v33;
    *(v17 + 32) = v34;
    result = sub_1000D0820(v40, (v3[7] + 32 * v16));
    ++v3[2];
    v15 = v19;
    v7 = v21;
  }

  v18 = v7;
  v19 = v15;
  if (v7)
  {
LABEL_21:
    v21 = (v18 - 1) & v18;
    v22 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    swift_unknownObjectRetain();
    if (!v22)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v20 = v15;
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v12)
    {
      goto LABEL_34;
    }

    v18 = *(v5 + 8 * v19);
    ++v20;
    if (v18)
    {
      v8 = v31;
      goto LABEL_21;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

double sub_1000CCEF8@<D0>(const __CFDictionary *a1@<X2>, uint64_t a2@<X8>)
{
  sub_1000CFD8C(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1000CCF84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000CD140(a1, &v14);
  if (!v15)
  {
    sub_1000C5624(&v14, &qword_10020B968);
LABEL_6:
    type metadata accessor for ContentMetadataValue(0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_1000D0820(&v14, v16);
  sub_1000D0544(v16, &v14);
  v3 = sub_1000D8238(&v14);
  v5 = v4;
  sub_1000C5624(&v14, &qword_10020B968);
  if (!v5)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    *&v14 = 0;
    *(&v14 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v10._object = 0x80000001001B3E30;
    v10._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v10);
    v11._countAndFlagsBits = v7;
    v11._object = v9;
    String.append(_:)(v11);

    v12._countAndFlagsBits = 0xD000000000000028;
    v12._object = 0x80000001001B3E50;
    String.append(_:)(v12);
    sub_1000E9670(v14, *(&v14 + 1));

    sub_1000D05A0(v16);
    goto LABEL_6;
  }

  sub_1000D05A0(v16);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  *a2 = sub_1000D0D0C;
  a2[1] = v6;
  type metadata accessor for ContentMetadataValue(0);
  return swift_storeEnumTagMultiPayload();
}

double sub_1000CD140@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(v2 + 8);
  if (!v4)
  {
    goto LABEL_11;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = a1;
    v6 = __CocoaDictionary.lookup(_:)();

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!*(v4 + 16))
    {
      goto LABEL_11;
    }

    v7 = sub_1000EDFE4(a1);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v6 = *(*(v4 + 56) + 8 * v7);
    swift_unknownObjectRetain();
  }

  v15 = v6;
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    sub_1000D0820(&v13, a2);
    return result;
  }

  v13 = 0u;
  v14 = 0u;
  sub_1000C5624(&v13, &qword_10020B968);
  *(&v14 + 1) = swift_getObjectType();
  *&v13 = v6;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  swift_unknownObjectRetain();
  sub_1000CAD8C(&v13, &type metadata for Any + 8, 1718188133, 0xE400000000000000, v10, v12);
  swift_unknownObjectRelease();

  sub_1000D05A0(&v13);
LABEL_11:
  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

uint64_t sub_1000CD2B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for ContentMetadataValue(0);
  __chkstk_darwin(v6);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = swift_projectBox();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (!*(a3 + 16))
  {
    goto LABEL_8;
  }

  v13 = v10;
  v14 = sub_1000EE098(v10, v11);
  if ((v15 & 1) == 0)
  {
    goto LABEL_8;
  }

  v16 = (*(a3 + 56) + 2 * v14);
  v17 = v16[1];
  v18 = sub_1000DA074(*v16);
  v20 = v19;
  if (v18 == sub_1000DA074(a4) && v20 == v21)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
LABEL_8:

      return 1;
    }
  }

  v25 = sub_1000CD494(v13, v12, v17);
  v27 = v26;

  if (v27)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    *(v28 + 24) = v27;
    *v8 = sub_1000D0D0C;
    v8[1] = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1000C9374(v8, v9);
  }

  return 0;
}

uint64_t sub_1000CD494(char *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v53 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 1);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = CGImageMetadataTagCopyValue(v4);
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  v56 = v15;
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v17 = v54;
    if (v55)
    {
LABEL_4:
      swift_unknownObjectRelease();
      return v17;
    }

    goto LABEL_45;
  }

  v54 = v16;
  swift_unknownObjectRetain();
  sub_1000BFBAC(&qword_10020B978);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v52 = a1;
    v53 = v12;
    v17 = 0;
    goto LABEL_46;
  }

  v50 = v9;
  v51 = v8;
  v19 = v56;
  v20 = v56 >> 62;
  if ((a3 & 1) == 0)
  {
    a1 = (v56 & 0xFFFFFFFFFFFFFF8);
    if (v20)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    a2 = v19 & 0xC000000000000001;
    v52 = _swiftEmptyArrayStorage;
    while (v14 != v12)
    {
      if (a2)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v25 = *(v19 + 8 * v12 + 32);
      }

      v11 = v25;
      v26 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v27 = CGImageMetadataTagCopyValue(v25);

      v56 = v27;
      sub_1000BFBAC(&qword_10020B980);
      ++v12;
      if (swift_dynamicCast())
      {
        v11 = v55;
        if (v55)
        {
          v28 = v54;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v49 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v52 = sub_1000EC75C(0, *(v52 + 2) + 1, 1, v52);
          }

          v31 = *(v52 + 2);
          v30 = *(v52 + 3);
          if (v31 >= v30 >> 1)
          {
            v52 = sub_1000EC75C((v30 > 1), v31 + 1, 1, v52);
          }

          v32 = v52;
          *(v52 + 2) = v31 + 1;
          v33 = &v32[16 * v31];
          *(v33 + 4) = v49;
          *(v33 + 5) = v11;
          v12 = v26;
        }
      }
    }

    v34 = v53;
    static Locale.autoupdatingCurrent.getter();
    v35 = Locale.groupingSeparator.getter();
    v37 = v36;
    (*(v50 + 8))(v34, v51);
    v38 = 44;
    if (v37)
    {
      v38 = v35;
    }

    else
    {
      v37 = 0xE100000000000000;
    }

    v54 = v38;
    v55 = v37;

    v39._countAndFlagsBits = 32;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);

    v54 = v52;
    sub_1000BFBAC(&qword_10020B988);
    sub_1000D0940();
    v17 = BidirectionalCollection<>.joined(separator:)();
    swift_unknownObjectRelease();

    return v17;
  }

  if (!v20)
  {
    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_41:
    v21 = a1;

    goto LABEL_42;
  }

LABEL_40:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_41;
  }

LABEL_10:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = a1;
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
    v23 = v22;

    if (v23)
    {
      v56 = CGImageMetadataTagCopyValue(v23);
      sub_1000BFBAC(&qword_10020B980);
      if (swift_dynamicCast())
      {
        v17 = v54;
        v24 = v55;
        goto LABEL_44;
      }

      v24 = 0;
      v17 = 0;
LABEL_43:
      v54 = 0;
      v55 = 0;
LABEL_44:

      a1 = v21;
      if (v24)
      {
        goto LABEL_4;
      }

LABEL_45:
      v52 = a1;
      v53 = v12;
LABEL_46:
      swift_getObjectType();
      v54 = v16;
      swift_unknownObjectRetain();
      v40 = String.init<A>(describing:)();
      v42 = v41;
      Logger.init(subsystem:category:)();

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v51 = v11;
        v46 = v40;
        v47 = v45;
        v54 = swift_slowAlloc();
        *v47 = 136315394;
        *(v47 + 4) = sub_1000EA7B4(v52, a2, &v54);
        *(v47 + 12) = 2080;
        v48 = sub_1000EA7B4(v46, v42, &v54);

        *(v47 + 14) = v48;
        _os_log_impl(&dword_100000000, v43, v44, "ERROR: Unable to use tag value (%s). Found %s but could not convert to String", v47, 0x16u);
        swift_arrayDestroy();

        swift_unknownObjectRelease();

        (*(v53 + 1))(v14, v51);
      }

      else
      {

        swift_unknownObjectRelease();
        (*(v53 + 1))(v14, v11);
      }

      return v17;
    }

LABEL_42:
    v24 = 0;
    v17 = 0;
    v23 = 0;
    goto LABEL_43;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = a1;
    v22 = *(v19 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CDB8C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  LOBYTE(a2) = v5(v6, v7);

  return a2 & 1;
}

id sub_1000CDC08()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  result = [v0 setMaxConcurrentOperationCount:1];
  qword_10020B8D0 = v0;
  return result;
}

void sub_1000CDC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v48 = a4;
  v45 = a1;
  v46 = a3;
  v44 = sub_1000BFBAC(&qword_10020B8E0);
  v5 = *(v44 - 8);
  v39 = *(v5 + 64);
  __chkstk_darwin(v44);
  v43 = &v37 - v6;
  v41 = type metadata accessor for UTType();
  v7 = *(v41 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v41);
  v47 = [objc_allocWithZone(NSFileCoordinator) init];
  v9 = objc_opt_self();
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v13 = [v9 readingIntentWithURL:v11 options:0];

  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v17 = [v9 writingIntentWithURL:v15 options:4];

  sub_1000BFBAC(&qword_10020B3D8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10019A6B0;
  *(v18 + 32) = v13;
  *(v18 + 40) = v17;
  sub_1000CEA24();
  v19 = v13;
  v38 = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;

  if (qword_10020B268 != -1)
  {
    swift_once();
  }

  v37 = qword_10020B8D0;
  v20 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v41;
  (*(v7 + 16))(v20, v42, v41);
  v23 = v43;
  v22 = v44;
  (*(v5 + 16))(v43, v45, v44);
  v24 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v25 = (v8 + *(v5 + 80) + v24) & ~*(v5 + 80);
  v26 = swift_allocObject();
  v27 = v7;
  v28 = v19;
  v29 = v46;
  *(v26 + 2) = v19;
  *(v26 + 3) = v29;
  v30 = v22;
  v31 = v38;
  *(v26 + 4) = v48;
  *(v26 + 5) = v31;
  (*(v27 + 32))(&v26[v24], v20, v21);
  (*(v5 + 32))(&v26[v25], v23, v30);
  aBlock[4] = sub_1000CEBDC;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CE468;
  aBlock[3] = &unk_1001F4610;
  v32 = _Block_copy(aBlock);
  v33 = v28;
  v34 = v31;

  v35 = v47;
  v36 = isa;
  [v47 coordinateAccessWithIntents:isa queue:v37 byAccessor:v32];
  _Block_release(v32);
}

void sub_1000CE090(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1000CECDC();
    v17 = swift_allocError();
    *v18 = a1;
    swift_willThrow();
  }

  else
  {
    v38[1] = a6;
    v38[2] = a7;
    v19 = [a2 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v20);
    v22 = v21;
    v23 = *(v13 + 8);
    v23(v16, v12);
    v24 = CGImageSourceCreateWithURL(v22, 0);

    v39 = v24;
    if (v24)
    {
      Mutable = CGImageMetadataCreateMutable();
      sub_1000D0204(kCGImagePropertyIPTCCaptionAbstract);
      v26 = [objc_allocWithZone(NSMutableDictionary) init];
      [v26 __swift_setObject:kCFBooleanTrue forKeyedSubscript:kCGImageDestinationMergeMetadata];
      v38[0] = Mutable;
      [v26 __swift_setObject:Mutable forKeyedSubscript:kCGImageDestinationMetadata];
      Count = CGImageSourceGetCount(v39);
      v28 = [a5 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v29);
      v31 = v30;
      v23(v16, v12);
      UTType.identifier.getter();
      v32 = String._bridgeToObjectiveC()();

      v33 = CGImageDestinationCreateWithURL(v31, v32, Count, 0);

      if (v33)
      {
        v34 = v38[0];
        if (CGImageDestinationCopyImageSource(v33, v39, v26, 0))
        {
          sub_1000BFBAC(&qword_10020B8E0);
          CheckedContinuation.resume(returning:)();

          return;
        }

        sub_1000CECDC();
        v17 = swift_allocError();
        *v37 = 2;
        swift_willThrow();
      }

      else
      {
        sub_1000CECDC();
        v17 = swift_allocError();
        *v36 = 1;
        swift_willThrow();
      }
    }

    else
    {
      sub_1000CECDC();
      v17 = swift_allocError();
      *v35 = 0;
      swift_willThrow();
    }
  }

  v40 = v17;
  swift_errorRetain();
  sub_1000BFBAC(&qword_10020B8E0);
  CheckedContinuation.resume(throwing:)();
}

void sub_1000CE468(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1000CE4D4()
{
  CGImageSourceCopyTypeIdentifiers();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  static Array._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
}

uint64_t sub_1000CE550(uint64_t a1)
{
  result = sub_1000CE7F0(a1);
  if (result)
  {
    v2 = result;
    if (!*(result + 16) || (v3 = sub_1000EDFE4(kCGImagePropertyGPSLatitude), (v4 & 1) == 0) || (sub_1000D0544(*(v2 + 56) + 32 * v3, v16), (swift_dynamicCast() & 1) == 0))
    {
LABEL_23:

      return 0;
    }

    v5 = v15;
    if (*(v2 + 16))
    {
      v6 = sub_1000EDFE4(kCGImagePropertyGPSLatitudeRef);
      if (v7)
      {
        sub_1000D0544(*(v2 + 56) + 32 * v6, v16);
        if (swift_dynamicCast())
        {
          v8 = String.uppercased()();

          if (v8._countAndFlagsBits == 83 && v8._object == 0xE100000000000000)
          {
          }

          else
          {
            v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v9 & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          if (v15 > 0.0)
          {
            v5 = -v15;
          }
        }
      }
    }

LABEL_14:
    if (*(v2 + 16))
    {
      v10 = sub_1000EDFE4(kCGImagePropertyGPSLongitude);
      if (v11)
      {
        sub_1000D0544(*(v2 + 56) + 32 * v10, v16);
        if (swift_dynamicCast())
        {
          if (*(v2 + 16))
          {
            v12 = sub_1000EDFE4(kCGImagePropertyGPSLongitudeRef);
            if (v13)
            {
              sub_1000D0544(*(v2 + 56) + 32 * v12, v16);

              if (!swift_dynamicCast())
              {
                return *&v5;
              }

              v14 = String.uppercased()();

              if (v14._countAndFlagsBits != 87 || v14._object != 0xE100000000000000)
              {
                _stringCompareWithSmolCheck(_:_:expecting:)();

                return *&v5;
              }
            }
          }

          return *&v5;
        }
      }
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1000CE7F0(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_1000EDFE4(kCGImagePropertyGPSDictionary), (v3 & 1) != 0) && (sub_1000D0544(*(a1 + 56) + 32 * v2, v22), sub_1000BFBAC(&qword_10020B9A0), swift_dynamicCast()))
  {
    return v19;
  }

  else
  {
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;

    v10 = 0;
    while (v7)
    {
      v11 = v10;
LABEL_18:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v11 << 6);
      v16 = *(*(a1 + 48) + 8 * v15);
      sub_1000D0544(*(a1 + 56) + 32 * v15, v18);
      *&v19 = v16;
      sub_1000D0820(v18, (&v19 + 8));
      v17 = v16;
LABEL_19:
      v22[0] = v19;
      v22[1] = v20;
      v23 = v21;
      if (!v19)
      {

        return 0;
      }

      sub_1000D0820((v22 + 8), &v19);
      sub_1000BFBAC(&qword_10020B9A0);
      result = swift_dynamicCast();
      if (result)
      {
        v4 = sub_1000CE7F0(*&v18[0]);

        if (v4)
        {

          return v4;
        }
      }
    }

    if (v8 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = v8;
    }

    v13 = v12 - 1;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        v7 = 0;
        v21 = 0;
        v10 = v13;
        v19 = 0u;
        v20 = 0u;
        goto LABEL_19;
      }

      v7 = *(a1 + 64 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1000CEA24()
{
  result = qword_10020B8E8;
  if (!qword_10020B8E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10020B8E8);
  }

  return result;
}

uint64_t sub_1000CEA70()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = sub_1000BFBAC(&qword_10020B8E0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

void sub_1000CEBDC(uint64_t a1)
{
  v3 = *(type metadata accessor for UTType() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_1000BFBAC(&qword_10020B8E0) - 8);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_1000CE090(a1, v7, v8, v9, v10, v1 + v4, v11);
}

uint64_t sub_1000CECC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000CECDC()
{
  result = qword_10020B8F0;
  if (!qword_10020B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B8F0);
  }

  return result;
}

uint64_t sub_1000CED30(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000CEDDC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v75 = a3;
  v72 = a2;
  v69 = type metadata accessor for ContentMetadataValue(0);
  __chkstk_darwin(v69);
  v71 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v68 = (&v60 - v6);
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v76 = a1;
  v79 = v11;
LABEL_6:
  if (v10)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
LABEL_11:
      v15 = __clz(__rbit64(v10)) | (v13 << 6);
      sub_1000D04E8(*(a1 + 48) + 40 * v15, v88);
      sub_1000D0544(*(a1 + 56) + 32 * v15, v89);
      sub_1000C5684(v88, &v83, &qword_10020B938);
      if (!swift_dynamicCast())
      {
        sub_1000D05A0(v87);
        goto LABEL_5;
      }

      v17 = v81;
      v16 = v82;
      sub_1000D05A0(v87);
      sub_1000C5684(v88, &v83, &qword_10020B938);
      sub_1000BFBAC(&qword_10020B940);
      if (swift_dynamicCast())
      {
        v18 = v81;
        sub_1000D05EC(&v83);
        v19 = sub_1000F6890(v17, v16);

        if (v19 == 37)
        {

          a1 = v76;
          v11 = v79;
          goto LABEL_5;
        }

        v70 = v19;
        v11 = v79;
        v90 = v18[2];
        if (v90)
        {
          v20 = 0;
          v80 = (v18 + 4);
          v73 = &_swiftEmptyDictionarySingleton;
          while (1)
          {
            if (v20 >= v18[2])
            {
              goto LABEL_41;
            }

            v21 = *&v80[8 * v20];
            if (*(v21 + 16))
            {
              break;
            }

LABEL_19:
            if (v90 == ++v20)
            {
              goto LABEL_38;
            }
          }

          v22 = sub_1000EE098(0x79654B776172, 0xE600000000000000);
          if ((v23 & 1) != 0 && *(v21 + 16))
          {
            v24 = (*(v21 + 56) + 16 * v22);
            v25 = v24[1];
            v77 = *v24;

            v26 = sub_1000EE098(0x615079654B776172, 0xEA00000000006874);
            if ((v27 & 1) != 0 && *(v21 + 16))
            {
              v74 = v25;
              v28 = (*(v21 + 56) + 16 * v26);
              v29 = v28[1];
              v67 = *v28;

              v30 = sub_1000EE098(7955819, 0xE300000000000000);
              if (v31)
              {
                v66 = v29;
                if (*(v21 + 16))
                {
                  v32 = (*(v21 + 56) + 16 * v30);
                  v33 = v32[1];
                  v65 = *v32;
                  v34 = v33;

                  v35 = sub_1000EE098(1635017060, 0xE400000000000000);
                  if (v36)
                  {
                    v64 = v34;
                    v37 = (*(v21 + 56) + 16 * v35);
                    v38 = v37[1];
                    v61 = *v37;
                    v39 = String.lowercased()();
                    countAndFlagsBits = v39._countAndFlagsBits;
                    object = v39._object;
                    v67 = v38;

                    v66 = &v60;
                    v83 = countAndFlagsBits;
                    v84 = object;
                    __chkstk_darwin(v40);
                    *(&v60 - 2) = &v83;
                    v41 = v78;
                    LOBYTE(v38) = sub_1000CED30(sub_1000D0640, (&v60 - 4), v72);
                    v78 = v41;

                    if (v38)
                    {
                    }

                    else
                    {
                      v42 = swift_allocObject();
                      v66 = v42;
                      v43 = v64;
                      *(v42 + 16) = v65;
                      *(v42 + 24) = v43;
                      v83 = 0x2E6567616D69;
                      v84 = 0xE600000000000000;
                      v44._countAndFlagsBits = sub_1000F4630(v70);
                      String.append(_:)(v44);

                      v45._countAndFlagsBits = 46;
                      v45._object = 0xE100000000000000;
                      String.append(_:)(v45);
                      v46._countAndFlagsBits = v77;
                      v46._object = v74;
                      String.append(_:)(v46);

                      v48 = v83;
                      v47 = v84;
                      v74 = v83;
                      v77 = v84;
                      v85 = &type metadata for ContentMetadataKey.SynthesizedMetadataKey;
                      v86 = sub_1000D06AC();
                      v49 = swift_allocObject();
                      v83 = v49;
                      *(v49 + 16) = 1;
                      *(v49 + 24) = v48;
                      *(v49 + 32) = v47;
                      v50 = v66;
                      *(v49 + 40) = sub_1000D065C;
                      *(v49 + 48) = v50;
                      v51 = swift_allocObject();
                      *(v51 + 16) = 1;
                      v52 = v77;
                      *(v51 + 24) = v74;
                      *(v51 + 32) = v52;
                      *(v51 + 40) = sub_1000D065C;
                      *(v51 + 48) = v50;
                      v87[0] = sub_1000D0744;
                      v87[1] = v51;
                      v53 = swift_allocObject();
                      v54 = v67;
                      *(v53 + 16) = v61;
                      *(v53 + 24) = v54;
                      v55 = v68;
                      *v68 = sub_1000D0784;
                      *(v55 + 8) = v53;
                      swift_storeEnumTagMultiPayload();
                      sub_1000D07B4(v55, v71);

                      v56 = v73;
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v81 = v56;
                      sub_1000C7004(v71, &v83, isUniquelyReferenced_nonNull_native);
                      v73 = v81;
                      sub_1000C4DA4(v55);
                      sub_1000BFDE4(&v83);
                    }

                    goto LABEL_18;
                  }
                }
              }
            }

            else
            {
            }
          }

LABEL_18:

          goto LABEL_19;
        }

        v73 = &_swiftEmptyDictionarySingleton;
LABEL_38:

        v58 = v75;
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v83 = *v58;
        *v58 = 0x8000000000000000;
        sub_1000C6E98(v73, v70, v59);
        *v58 = v83;
        a1 = v76;
      }

      else
      {

        sub_1000D05EC(&v83);
        v11 = v79;
      }

LABEL_5:
      v10 &= v10 - 1;
      result = sub_1000C5624(v88, &qword_10020B938);
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_1000CF644(unint64_t a1)
{
  v7 = sub_1000E86AC(_swiftEmptyArrayStorage);
  v2 = [objc_opt_self() sharedMetadataHandler];
  sub_1000CCB54(a1);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = [v2 processMetaData:isa];

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000CEDDC(v5, &off_1001F34F8, &v7);

  swift_arrayDestroy();

  return v7;
}

uint64_t sub_1000CF770(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    v7 = a1;
    v8 = __CocoaDictionary.lookup(_:)();

    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (!*(a4 + 16))
    {
      return 0;
    }

    v9 = sub_1000EDFE4(a1);
    if ((v10 & 1) == 0)
    {
      return 0;
    }

    v8 = *(*(a4 + 56) + 8 * v9);
    swift_unknownObjectRetain();
  }

  v15[4] = v8;
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    return v15[0];
  }

  v15[3] = swift_getObjectType();
  v15[0] = v8;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  swift_unknownObjectRetain();
  sub_1000CAD8C(v15, &type metadata for String, a2, a3, v12, v14);
  swift_unknownObjectRelease();

  sub_1000D05A0(v15);
  return 0;
}

uint64_t sub_1000CF8B8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    v9 = a1;
    v10 = __CocoaDictionary.lookup(_:)();

    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (!*(a4 + 16))
    {
      return 0;
    }

    v11 = sub_1000EDFE4(a1);
    if ((v12 & 1) == 0)
    {
      return 0;
    }

    v10 = *(*(a4 + 56) + 8 * v11);
    swift_unknownObjectRetain();
  }

  v17[4] = v10;
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    return v17[0];
  }

  v17[3] = swift_getObjectType();
  v17[0] = v10;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  swift_unknownObjectRetain();
  sub_1000CAD8C(v17, a5, a2, a3, v14, v16);
  swift_unknownObjectRelease();

  sub_1000D05A0(v17);
  return 0;
}

unint64_t sub_1000CFA00(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    v7 = a1;
    v8 = __CocoaDictionary.lookup(_:)();

    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *(a4 + 16);
    if (!v9)
    {
LABEL_11:
      v12 = 1;
      return v9 | (v12 << 32);
    }

    v10 = sub_1000EDFE4(a1);
    if ((v11 & 1) == 0)
    {
LABEL_10:
      v9 = 0;
      goto LABEL_11;
    }

    v8 = *(*(a4 + 56) + 8 * v10);
    swift_unknownObjectRetain();
  }

  v17[0] = v8;
  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    v17[3] = swift_getObjectType();
    v17[0] = v8;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    swift_unknownObjectRetain();
    sub_1000CAD8C(v17, &type metadata for UInt32, a2, a3, v13, v15);
    swift_unknownObjectRelease();

    sub_1000D05A0(v17);
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
  v12 = 0;
  v9 = v18;
  return v9 | (v12 << 32);
}

uint64_t sub_1000CFB58(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1000CF8B8(a1, 0x6F72506567616D69, 0xEF73656974726570, a3, &type metadata for Double);
  if (v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = sub_1000CF8B8(a2, 0x6F72506567616D69, 0xEF73656974726570, a3, &type metadata for Double);
  if (v9)
  {
    return 0;
  }

  v11 = v8;
  v12 = sub_1000CFA00(kCGImagePropertyOrientation, 0x6F72506567616D69, 0xEF73656974726570, a3);
  if ((v12 & &dword_100000000) != 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (v13 == 8 || v13 == 6)
  {
    return v11;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1000CFC48(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    v7 = a1;
    v8 = __CocoaDictionary.lookup(_:)();

    if (!v8)
    {
      return 2;
    }
  }

  else
  {
    if (!*(a4 + 16))
    {
      return 2;
    }

    v9 = sub_1000EDFE4(a1);
    if ((v10 & 1) == 0)
    {
      return 2;
    }

    v8 = *(*(a4 + 56) + 8 * v9);
    swift_unknownObjectRetain();
  }

  v15[0] = v8;
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    return v16;
  }

  v15[3] = swift_getObjectType();
  v15[0] = v8;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  swift_unknownObjectRetain();
  sub_1000CAD8C(v15, &type metadata for Bool, a2, a3, v12, v14);
  swift_unknownObjectRelease();

  sub_1000D05A0(v15);
  return 2;
}

void sub_1000CFD8C(const __CFDictionary *a1@<X2>, CFDictionaryRef *a2@<X8>)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType.image.getter();
  v8 = UTType.conforms(to:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (qword_10020B270 != -1)
  {
    swift_once();
  }

  v9 = qword_10020B8D8;
  v31[0] = UTType.identifier.getter();
  v31[1] = v10;
  __chkstk_darwin(v31[0]);
  v30[-2] = v31;
  LOBYTE(v9) = sub_1000CED30(sub_1000D0D24, &v30[-4], v9);

  if ((v9 & 1) == 0)
  {
    goto LABEL_16;
  }

  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v14 = CGImageSourceCreateWithURL(v12, 0);

  if (!v14)
  {
    v15 = 0;
    v22 = 0;
LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  v15 = CGImageSourceCopyPropertiesAtIndex(v14, 0, 0);
  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = CGImageSourceCopyMetadataAtIndex(v14, 0, 0);
  if (v16)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v31[0] = 0;
      type metadata accessor for CFString(0);
      sub_1000D09A4(&qword_10020B360);
      v17 = v15;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

      v15 = v31[0];
      if (v31[0])
      {
        v18 = v31[0] & 0xC000000000000001;
        if ((v31[0] & 0xC000000000000001) != 0)
        {
          v19 = v31[0] & 0xC000000000000001;
          v20 = kCGImagePropertyExifDictionary;
          v21 = __CocoaDictionary.lookup(_:)();

          if (!v21)
          {
            v22 = 0;
            v25 = kCGImagePropertyIPTCDictionary;
            goto LABEL_37;
          }

          v18 = v19;
        }

        else
        {
          if (!*(v31[0] + 16) || (v23 = sub_1000EDFE4(kCGImagePropertyExifDictionary), (v24 & 1) == 0))
          {
            v22 = 0;
            v25 = kCGImagePropertyIPTCDictionary;
            goto LABEL_32;
          }

          v21 = *(*(v15 + 7) + 8 * v23);
          swift_unknownObjectRetain();
        }

        v31[0] = v21;
        sub_1000BFBAC(&qword_10020B9A8);
        if (swift_dynamicCast())
        {
          v22 = v30[0];
        }

        else
        {
          v22 = 0;
        }

        v25 = kCGImagePropertyIPTCDictionary;
        if (v18)
        {
LABEL_37:
          v29 = v25;
          v28 = __CocoaDictionary.lookup(_:)();

          if (v28)
          {
LABEL_38:
            v31[0] = v28;
            sub_1000BFBAC(&qword_10020B9A8);
            if (swift_dynamicCast())
            {
              v14 = v30[0];
            }

            else
            {
              v14 = 0;
            }

            goto LABEL_42;
          }

          goto LABEL_41;
        }

LABEL_32:
        if (*(v15 + 2))
        {
          v26 = sub_1000EDFE4(v25);
          if (v27)
          {
            v28 = *(*(v15 + 7) + 8 * v26);
            swift_unknownObjectRetain();

            goto LABEL_38;
          }
        }

LABEL_41:
        v14 = 0;
LABEL_42:

        goto LABEL_20;
      }

LABEL_22:
      goto LABEL_17;
    }

LABEL_16:
    v15 = 0;
LABEL_17:
    v22 = 0;
    v14 = 0;
    goto LABEL_18;
  }

  v15 = 0;
  v22 = 0;
  v14 = 0;
LABEL_19:
  a1 = 0;
LABEL_20:
  *a2 = v15;
  a2[1] = v22;
  a2[2] = v14;
  a2[3] = v16;
  a2[4] = a1;
}

void sub_1000D0204(const __CFString *a1)
{
  v2 = v1;
  type metadata accessor for CFString(0);
  sub_1000D09A4(&qword_10020B8F8);
  if (static _CFObject.== infix(_:_:)())
  {
    v4 = String._bridgeToObjectiveC()();
    value = String._bridgeToObjectiveC()();
    CGImageMetadataRemoveTagWithPath(v2, 0, v4);
    CGImageMetadataSetValueWithPath(v2, 0, v4, value);
  }

  else
  {

    v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    CGImageMetadataSetValueMatchingImageProperty(v1, kCGImagePropertyIPTCDictionary, a1, v5);
    swift_unknownObjectRelease();
  }
}

__n128 sub_1000D036C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000D0390(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000D03B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D0410(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1000D0460(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1000D0494()
{
  result = qword_10020B900;
  if (!qword_10020B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B900);
  }

  return result;
}

uint64_t sub_1000D0544(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000D05A0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1000D065C()
{

  return LocalizedStringResource.init(stringLiteral:)();
}

unint64_t sub_1000D06AC()
{
  result = qword_10020B948;
  if (!qword_10020B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B948);
  }

  return result;
}

uint64_t sub_1000D0704()
{

  return swift_deallocObject();
}

uint64_t sub_1000D074C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D0784()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1000D07B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentMetadataValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1000D0820(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000D0878()
{

  return swift_deallocObject();
}

uint64_t sub_1000D0900()
{

  return swift_deallocObject();
}

unint64_t sub_1000D0940()
{
  result = qword_10020B990;
  if (!qword_10020B990)
  {
    sub_1000C3C50(&qword_10020B988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B990);
  }

  return result;
}

uint64_t sub_1000D09A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000D09E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedMapCoordinate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D0A4C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t getEnumTagSinglePayload for ImageMetadataProvider.KeyInfo(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageMetadataProvider.KeyInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000D0C18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000D0C64(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000D0D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v52 = a5;
  v41 = a8;
  v43 = a7;
  v53 = a6;
  v47 = a2;
  v48 = a4;
  v49 = a3;
  v46 = a1;
  v54 = a9;
  v50 = a11;
  v12 = *(a10 - 8);
  v42 = a12;
  __chkstk_darwin(a1);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PreviewInspectorPresentationModifier();
  v44 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  v18 = type metadata accessor for ModifiedContent();
  v51 = *(v18 - 8);
  __chkstk_darwin(v18);
  v39 = &v39 - v19;
  sub_1000C3C50(&qword_10020B9B0);
  v20 = type metadata accessor for ModifiedContent();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v40 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v45 = &v39 - v25;
  (*(v12 + 16))(v14, v43, a10, v24);
  v26 = v46;

  v27 = v47;

  v28 = v48;

  sub_1000D11DC(v26, v27, v49, v28, v14, a10, v17);
  v29 = v39;
  v30 = v50;
  View.modifier<A>(_:)();
  (*(v44 + 8))(v17, v15);
  swift_getKeyPath();
  v59 = v52;
  v60 = v53 & 1;
  WitnessTable = swift_getWitnessTable();
  v57 = v30;
  v58 = WitnessTable;
  v32 = swift_getWitnessTable();
  v33 = v40;
  View.environment<A>(_:_:)();

  (*(v51 + 8))(v29, v18);
  v34 = sub_1000D13B8();
  v55 = v32;
  v56 = v34;
  swift_getWitnessTable();
  v35 = *(v21 + 16);
  v36 = v45;
  v35(v45, v33, v20);
  v37 = *(v21 + 8);
  v37(v33, v20);
  v35(v54, v36, v20);
  return (v37)(v36, v20);
}

uint64_t sub_1000D11DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  State.init(wrappedValue:)();
  *(a7 + 24) = v17;
  *(a7 + 32) = v18;
  *(a7 + 48) = swift_getKeyPath();
  *(a7 + 56) = 0;
  v14 = type metadata accessor for PreviewInspectorPresentationModifier();
  v15 = *(v14 + 52);
  *(a7 + v15) = swift_getKeyPath();
  sub_1000BFBAC(&qword_10020BAB0);
  swift_storeEnumTagMultiPayload();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 40) = a4;
  return (*(*(a6 - 8) + 32))(a7 + *(v14 + 48), a5, a6);
}

uint64_t sub_1000D130C@<X0>(uint64_t a1@<X8>)
{
  sub_1000D5BFC();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

unint64_t sub_1000D13B8()
{
  result = qword_10020B9B8[0];
  if (!qword_10020B9B8[0])
  {
    sub_1000C3C50(&qword_10020B9B0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_10020B9B8);
  }

  return result;
}

uint64_t sub_1000D141C()
{
  type metadata accessor for PreviewInspectorPresentationModifier();
  type metadata accessor for ModifiedContent();
  sub_1000C3C50(&qword_10020B9B0);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1000D13B8();
  return swift_getWitnessTable();
}

void sub_1000D1500()
{
  sub_1000D1BB8(319, &qword_10020BA40, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_1000D1BB8(319, &qword_10020BA48, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContentInfoViewerModel();
      if (v2 <= 0x3F)
      {
        sub_1000D1C0C();
        if (v3 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v4 <= 0x3F)
          {
            sub_1000D5F10(319, &qword_10020BA60, &type metadata accessor for ContentSizeCategory);
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

uint64_t sub_1000D163C(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for ContentSizeCategory() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((((v11 + 58) & ~v11) + *(v6 + 64) + v12) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        v20 = *(v6 + 48);

        return v20(((((((a1 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 10) & ~v11, v7, v5);
      }

      else
      {
        v19 = *(a1 + 8);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_1000D18B4(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v23 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for ContentSizeCategory() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((((v13 + 58) & ~v13) + *(v8 + 64) + v14) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_48:
              if (v16 == 2)
              {
                *(a1 + v15) = v18;
              }

              else
              {
                *(a1 + v15) = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v21;
        *(a1 + 2) = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v16)
    {
      *(a1 + v15) = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *(a1 + v15) = 0;
  }

  else if (v16)
  {
    *(a1 + v15) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = *(v23 + 56);

    v22(((((((a1 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v13 + 10) & ~v13, a2, v9, v7);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 16) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 8) = 0;
  }

  else
  {
    *(a1 + 8) = (a2 - 1);
  }
}

void sub_1000D1BB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000D1C0C()
{
  if (!qword_10020BA50)
  {
    sub_1000C3C50(&qword_10020BA58);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10020BA50);
    }
  }
}

uint64_t sub_1000D1CB4()
{
  sub_1000BFBAC(&qword_10020BAB8);
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t sub_1000D1D68()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + 48);
  v6 = *(v0 + 56);
  if (*(v0 + 57) != 1)
  {
    v7 = *(v0 + 48);

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D4418(v7, v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return result;
}

uint64_t sub_1000D1EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BFBAC(&qword_10020BAB0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_1000D57F4(v2 + *(a1 + 52), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ContentSizeCategory();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1000D20B0(uint64_t a1)
{
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.sizeCategory.setter();
}

uint64_t sub_1000D2178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v27 = a1;
  v28 = a3;
  swift_getWitnessTable();
  v4 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for NavigationPath();
  sub_1000C3C50(&qword_10020BA68);
  v25 = *(a2 + 16);
  type metadata accessor for ModifiedContent();
  v5 = sub_1000C3C50(&qword_10020BA70);
  v6 = type metadata accessor for ContentSizeCategory();
  sub_1000C3C50(&qword_10020BA78);
  sub_1000C3C50(&qword_10020BA80);
  sub_1000D42F8();
  swift_getOpaqueTypeConformance2();
  v38 = v5;
  v39 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_1000D6438(&qword_10020BA98, &type metadata accessor for ContentSizeCategory);
  v7 = swift_getOpaqueTypeConformance2();
  v24 = *(a2 + 24);
  v36 = v7;
  v37 = v24;
  swift_getWitnessTable();
  type metadata accessor for NavigationStack();
  type metadata accessor for ZoomNavigationTransition();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v9 = type metadata accessor for _ConditionalContent();
  v22[1] = v4;
  v23 = swift_getWitnessTable();
  v34 = swift_getOpaqueTypeConformance2();
  v35 = WitnessTable;
  v38 = v4;
  v39 = v9;
  OpaqueTypeConformance2 = v23;
  v41 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v22 - v15;
  v17 = v26;
  v18 = *(v26 + 32);
  v32 = *(v26 + 24);
  v33 = v18;
  sub_1000BFBAC(&qword_10020BAA0);
  State.projectedValue.getter();
  v29 = v25;
  v30 = v24;
  v31 = v17;
  swift_checkMetadataState();
  swift_checkMetadataState();
  View.inspector<A>(isPresented:content:)();

  v19 = *(v11 + 16);
  v19(v16, v13, OpaqueTypeMetadata2);
  v20 = *(v11 + 8);
  v20(v13, OpaqueTypeMetadata2);
  v19(v28, v16, OpaqueTypeMetadata2);
  return (v20)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_1000D262C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v35 = a1;
  v36 = a4;
  type metadata accessor for NavigationPath();
  sub_1000C3C50(&qword_10020BA68);
  v6 = a2;
  v7 = type metadata accessor for ModifiedContent();
  v8 = sub_1000C3C50(&qword_10020BA70);
  v9 = type metadata accessor for ContentSizeCategory();
  sub_1000C3C50(&qword_10020BA78);
  sub_1000C3C50(&qword_10020BA80);
  sub_1000D42F8();
  swift_getOpaqueTypeConformance2();
  v41 = v8;
  v42 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = sub_1000D6438(&qword_10020BA98, &type metadata accessor for ContentSizeCategory);
  v39 = swift_getOpaqueTypeConformance2();
  v40 = a3;
  v10 = a3;
  v34 = v7;
  v30[1] = swift_getWitnessTable();
  v11 = type metadata accessor for NavigationStack();
  v33 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v30 - v12;
  v14 = type metadata accessor for ZoomNavigationTransition();
  WitnessTable = swift_getWitnessTable();
  v41 = v11;
  v42 = v14;
  v31 = v14;
  v32 = WitnessTable;
  OpaqueTypeConformance2 = WitnessTable;
  v44 = &protocol witness table for ZoomNavigationTransition;
  swift_getOpaqueTypeMetadata2();
  v16 = type metadata accessor for _ConditionalContent();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v30 - v21;
  type metadata accessor for MainActor();
  v30[0] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  v30[-4] = v6;
  v30[-3] = v10;
  v30[-2] = v35;
  NavigationStack.init<>(root:)();
  v41 = 0x6F74636570736E69;
  v42 = 0xE900000000000072;
  type metadata accessor for PreviewInspectorPresentationModifier();
  v24 = sub_1000D1D68();
  v26 = v32;
  sub_1000FA2C4(&v41, v24, v25 & 1, v11, &type metadata for String, v32, &protocol witness table for String, v19);
  (*(v33 + 8))(v13, v11);
  v41 = v11;
  v42 = v31;
  OpaqueTypeConformance2 = v26;
  v44 = &protocol witness table for ZoomNavigationTransition;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v26;
  swift_getWitnessTable();
  v27 = *(v17 + 16);
  v27(v22, v19, v16);
  v28 = *(v17 + 8);
  v28(v19, v16);
  v27(v36, v22, v16);
  v28(v22, v16);
}

uint64_t sub_1000D2B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v91 = a4;
  v90 = type metadata accessor for ContentSizeCategory();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = a3;
  v8 = type metadata accessor for PreviewInspectorPresentationModifier();
  v9 = *(v8 - 8);
  v102 = *(v9 + 64);
  __chkstk_darwin(v8);
  v84 = &v68 - v10;
  v97 = sub_1000BFBAC(&qword_10020BA80);
  __chkstk_darwin(v97);
  v12 = &v68 - v11;
  v76 = sub_1000BFBAC(&qword_10020BA78);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v68 - v13;
  v85 = sub_1000BFBAC(&qword_10020BA70);
  v81 = *(v85 - 8);
  __chkstk_darwin(v85);
  v98 = &v68 - v14;
  v15 = sub_1000BFBAC(&qword_10020BA68);
  v82 = *(v15 - 8);
  __chkstk_darwin(v15);
  v78 = &v68 - v16;
  v83 = v17;
  v18 = a2;
  v87 = type metadata accessor for ModifiedContent();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v79 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v80 = &v68 - v21;
  type metadata accessor for MainActor();
  v77 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v73 = *(a1 + 24);
  v72 = *(a1 + 32);
  v109 = v73;
  v110 = v72;
  v71 = sub_1000BFBAC(&qword_10020BAA0);
  State.projectedValue.getter();
  v22 = v106;
  v23 = v107;
  v69 = *(a1 + 40);
  v24 = v69;
  *v12 = v105;
  *(v12 + 1) = v22;
  v12[16] = v23;
  *(v12 + 3) = v24;
  v25 = type metadata accessor for PreviewAppInspectorView();
  v100 = a1;
  v26 = *(v25 + 24);
  *&v12[v26] = swift_getKeyPath();
  sub_1000BFBAC(&qword_10020BAA8);
  swift_storeEnumTagMultiPayload();
  v27 = *(v9 + 16);
  v94 = v9 + 16;
  v99 = v27;
  v28 = v84;
  v27(v84, a1, v8);
  v93 = *(v9 + 80);
  v29 = (v93 + 32) & ~v93;
  v30 = swift_allocObject();
  v31 = v101;
  *(v30 + 16) = a2;
  *(v30 + 24) = v31;
  v32 = *(v9 + 32);
  v32(v30 + v29, v28, v8);
  v95 = v9 + 32;
  v96 = v32;
  v33 = &v12[v97[9]];
  *v33 = sub_1000D5460;
  v33[1] = v30;
  v33[2] = 0;
  v33[3] = 0;

  v34 = v100;
  LOBYTE(v105) = sub_1000D1CB4() & 1;
  v92 = v8;
  v99(v28, v34, v8);
  v35 = swift_allocObject();
  *(v35 + 16) = v18;
  *(v35 + 24) = v31;
  v32(v35 + v29, v28, v8);
  v36 = v18;
  v69 = sub_1000D42F8();
  v37 = v74;
  v38 = v97;
  View.onChange<A>(of:initial:_:)();

  sub_1000C5624(v12, &qword_10020BA80);
  LOBYTE(v105) = v73;
  v106 = v72;
  State.wrappedValue.getter();
  v39 = v28;
  v40 = v92;
  v99(v28, v100, v92);
  v41 = swift_allocObject();
  v70 = v36;
  v42 = v101;
  *(v41 + 16) = v36;
  *(v41 + 24) = v42;
  v43 = v41 + v29;
  v44 = v29;
  v45 = v39;
  v96(v43, v39, v40);
  v105 = v38;
  v106 = &type metadata for Bool;
  v107 = v69;
  v108 = &protocol witness table for Bool;
  v97 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v76;
  View.onChange<A>(of:initial:_:)();

  (*(v75 + 8))(v37, v47);
  v48 = v88;
  v49 = v92;
  v50 = v100;
  sub_1000D1EC4(v92, v88);
  v99(v45, v50, v49);
  v51 = swift_allocObject();
  v52 = v101;
  *(v51 + 16) = v36;
  *(v51 + 24) = v52;
  v96(v51 + v44, v45, v49);
  v105 = v47;
  v106 = &type metadata for Bool;
  v107 = OpaqueTypeConformance2;
  v108 = &protocol witness table for Bool;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = sub_1000D6438(&qword_10020BA98, &type metadata accessor for ContentSizeCategory);
  v55 = v78;
  v56 = v85;
  v57 = v90;
  v58 = v98;
  View.onChange<A>(of:initial:_:)();

  (*(v89 + 8))(v48, v57);
  (*(v81 + 8))(v58, v56);
  v105 = v56;
  v106 = v57;
  v107 = v53;
  v108 = v54;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v79;
  v61 = v83;
  View.modifier<A>(_:)();
  (*(v82 + 8))(v55, v61);
  v103 = v59;
  v104 = v101;
  v62 = v87;
  swift_getWitnessTable();
  v63 = v86;
  v64 = *(v86 + 16);
  v65 = v80;
  v64(v80, v60, v62);
  v66 = *(v63 + 8);
  v66(v60, v62);
  v64(v91, v65, v62);
  v66(v65, v62);
}

uint64_t sub_1000D3648(uint64_t a1)
{
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v14[-v7];
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(a1 + 40);
  v10 = type metadata accessor for PreviewInspectorPresentationModifier();
  sub_1000D1EC4(v10, v8);
  swift_getKeyPath();
  v16 = v9;
  sub_1000D6438(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(v9 + 25) == 1)
  {
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    (*(v3 + 104))(v5, enum case for ContentSizeCategory.accessibilityLarge(_:), v2);
    v11 = sub_1000FC5E4(v8, v5);
    v12 = *(v3 + 8);
    v12(v5, v2);
    v15 = v11;
    sub_1000FB800(&v15);
    v12(v8, v2);
  }

  if (sub_1000D1CB4())
  {
    sub_1000D3C80(v10);
  }
}

uint64_t sub_1000D38F4(char a1, uint64_t a2)
{
  if (a1)
  {

    return sub_1000D3C80(a2);
  }

  else
  {
    sub_1000BFBAC(&qword_10020BAA0);
    return State.wrappedValue.setter();
  }
}

uint64_t sub_1000D3978(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  v8 = *a1;
  v9 = *a2;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v8 != v9)
  {
    v10 = type metadata accessor for PreviewInspectorPresentationModifier();
    a7(v9, v10);
  }
}

uint64_t sub_1000D3A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ContentSizeCategory();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(a3 + 40);
  swift_getKeyPath();
  v13 = v9;
  sub_1000D6438(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(v9 + 25) != 1)
  {
    (*(v6 + 104))(v8, enum case for ContentSizeCategory.accessibilityLarge(_:), v5);
    v10 = sub_1000FC5E4(a2, v8);
    (*(v6 + 8))(v8, v5);
    HIBYTE(v12) = v10;
    sub_1000FB800(&v12 + 7);
  }
}

uint64_t sub_1000D3C80(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BFBAC(&qword_10020BAC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(v5, v1, a1);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 32) = *(a1 + 16);
  (*(v3 + 32))(v12 + v11, v5, a1);
  sub_1000DEBD8(0, 0, v8, &unk_1001A1BC8, v12);
}

uint64_t sub_1000D3E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  type metadata accessor for MainActor();
  v6[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[12] = v8;
  v6[13] = v7;

  return _swift_task_switch(sub_1000D3F04, v8, v7);
}

uint64_t sub_1000D3F04()
{
  *(v0 + 112) = type metadata accessor for PreviewInspectorPresentationModifier();
  if (sub_1000D1CB4())
  {
    v1 = *(*(v0 + 64) + 40);
    swift_getKeyPath();
    *(v0 + 56) = v1;
    sub_1000D6438(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    *(v0 + 120) = *(v1 + 16);

    v2 = swift_task_alloc();
    *(v0 + 128) = v2;
    *v2 = v0;
    v2[1] = sub_1000D40E0;

    return sub_1000DE6EC();
  }

  else
  {

    v4 = *(v0 + 64);
    v5 = sub_1000D1CB4();
    v6 = *(v4 + 32);
    *(v0 + 40) = *(v4 + 24);
    *(v0 + 48) = v6;
    *(v0 + 136) = v5 & 1;
    sub_1000BFBAC(&qword_10020BAA0);
    State.wrappedValue.setter();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1000D40E0()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1000D4224, v3, v2);
}

uint64_t sub_1000D4224()
{

  v1 = *(v0 + 64);
  v2 = sub_1000D1CB4();
  v3 = *(v1 + 32);
  *(v0 + 40) = *(v1 + 24);
  *(v0 + 48) = v3;
  *(v0 + 136) = v2 & 1;
  sub_1000BFBAC(&qword_10020BAA0);
  State.wrappedValue.setter();
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_1000D42F8()
{
  result = qword_10020BA88;
  if (!qword_10020BA88)
  {
    sub_1000C3C50(&qword_10020BA80);
    sub_1000D6438(&qword_10020BA90, type metadata accessor for PreviewAppInspectorView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020BA88);
  }

  return result;
}

uint64_t type metadata accessor for PreviewAppInspectorView()
{
  result = qword_10020BB30;
  if (!qword_10020BB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D4418(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000D4424@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = sub_1000BFBAC(&qword_10020BB78);
  __chkstk_darwin(v2 - 8);
  v69 = &v51 - v3;
  v4 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v65 = *(v4 - 8);
  v66 = v4;
  __chkstk_darwin(v4);
  v64 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v51 - v11;
  v57 = sub_1000BFBAC(&qword_10020BB80);
  v59 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v51 - v13;
  v14 = sub_1000BFBAC(&qword_10020BB88);
  v15 = *(v14 - 8);
  v60 = v14;
  v61 = v15;
  __chkstk_darwin(v14);
  v53 = &v51 - v16;
  v17 = sub_1000BFBAC(&qword_10020BB90);
  v18 = *(v17 - 8);
  v62 = v17;
  v63 = v18;
  __chkstk_darwin(v17);
  v56 = &v51 - v19;
  v20 = sub_1000BFBAC(&qword_10020BB98);
  v21 = *(v20 - 8);
  v67 = v20;
  v68 = v21;
  __chkstk_darwin(v20);
  v58 = &v51 - v22;
  v55 = v1;

  sub_1000F3AAC(v23, v72);
  v24 = sub_1000D6274();
  View.navigationSplitViewColumnWidth(min:ideal:max:)();
  v74[4] = v72[4];
  v74[5] = v72[5];
  v74[6] = v72[6];
  v75 = v73;
  v74[0] = v72[0];
  v74[1] = v72[1];
  v74[2] = v72[2];
  v74[3] = v72[3];
  sub_1000D62C8(v74);
  v52 = v12;
  sub_1000D4BB8(v12);
  v25 = v12;
  v26 = v6;
  (*(v7 + 16))(v9, v25, v6);
  v27 = Text.init(_:)();
  v29 = v28;
  LOBYTE(v6) = v30;
  *&v72[0] = &type metadata for ContentInfoViewer;
  *(&v72[0] + 1) = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v57;
  v33 = v54;
  View.navigationTitle(_:)();
  sub_1000D631C(v27, v29, v6 & 1);

  (*(v7 + 8))(v52, v26);
  (*(v59 + 8))(v33, v32);
  v34 = v64;
  v35 = v65;
  v36 = v66;
  (*(v65 + 104))(v64, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v66);
  *&v72[0] = v32;
  *(&v72[0] + 1) = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v56;
  v39 = v34;
  v40 = v60;
  v41 = v53;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v35 + 8))(v39, v36);
  (*(v61 + 8))(v41, v40);
  v42 = v69;
  static ToolbarDefaultItemKind.inspectorToggle.getter();
  v43 = type metadata accessor for ToolbarDefaultItemKind();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  *&v72[0] = v40;
  *(&v72[0] + 1) = v37;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v58;
  v46 = v62;
  View.toolbar(removing:)();
  sub_1000C5624(v42, &qword_10020BB78);
  (*(v63 + 8))(v38, v46);
  v71 = v55;
  sub_1000BFBAC(&qword_10020BBA8);
  *&v72[0] = v46;
  *(&v72[0] + 1) = v44;
  swift_getOpaqueTypeConformance2();
  v47 = sub_1000C3C50(&qword_10020BBB0);
  v48 = sub_1000D6334();
  *&v72[0] = v47;
  *(&v72[0] + 1) = v48;
  swift_getOpaqueTypeConformance2();
  v49 = v67;
  View.toolbar<A>(content:)();
  return (*(v68 + 8))(v45, v49);
}

uint64_t sub_1000D4BB8@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v17 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for PresentationKind();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  type metadata accessor for PreviewAppInspectorView();
  sub_1000FE4C8(v12);
  static PresentationKind.none.getter();
  sub_1000D6438(&qword_10020BBD0, &type metadata accessor for PresentationKind);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  if (v13)
  {
    return LocalizedStringResource.init(stringLiteral:)();
  }

  String.LocalizationValue.init(stringLiteral:)();
  *v4 = type metadata accessor for BundleLookupReference_ContentInfoViewer();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v17);
  static Locale.current.getter();
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1000D4EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v38 = a2;
  v2 = sub_1000BFBAC(&qword_10020BBC8);
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v32 = &v30 - v3;
  v4 = type metadata accessor for PreviewAppInspectorView();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PresentationKind();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v35 = sub_1000BFBAC(&qword_10020BBB0);
  __chkstk_darwin(v35);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  type metadata accessor for MainActor();
  v34 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = v33;
  sub_1000FE4C8(v12);
  static PresentationKind.none.getter();
  sub_1000D6438(&qword_10020BBD0, &type metadata accessor for PresentationKind);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v7 + 8);
  v20(v9, v6);
  v20(v12, v6);
  if (v19)
  {
    (*(v36 + 56))(v14, 1, 1, v37);
    v21 = sub_1000D63E4();
    v39 = &type metadata for ToolbarCancellationItem;
    v40 = v21;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000D66D4(v14);
  }

  else
  {
    v22 = v31;
    sub_1000D6480(v18, v31);
    v23 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v24 = swift_allocObject();
    sub_1000D6610(v22, v24 + v23);
    LOBYTE(v39) = 1;
    v40 = sub_1000D6674;
    v41 = v24;
    v25 = sub_1000D63E4();
    v26 = v32;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v28 = v36;
    v27 = v37;
    (*(v36 + 16))(v14, v26, v37);
    (*(v28 + 56))(v14, 0, 1, v27);
    v39 = &type metadata for ToolbarCancellationItem;
    v40 = v25;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();

    sub_1000D66D4(v14);
    (*(v28 + 8))(v26, v27);
  }

  sub_1000D6334();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  sub_1000D66D4(v17);
}

uint64_t sub_1000D5460()
{
  v1 = *(type metadata accessor for PreviewInspectorPresentationModifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1000D3648(v2);
}

uint64_t sub_1000D551C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(type metadata accessor for PreviewInspectorPresentationModifier() - 8);
  return sub_1000D3978(a1, a2, v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v9, v10, a3, a4);
}

uint64_t sub_1000D55C4()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for PreviewInspectorPresentationModifier() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  sub_1000D4418(*(v3 + 48), *(v3 + 56), *(v3 + 57));
  (*(*(v1 - 8) + 8))(v3 + v2[14], v1);
  v4 = v2[15];
  sub_1000BFBAC(&qword_10020BAB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ContentSizeCategory();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D574C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PreviewInspectorPresentationModifier() - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1000D3A6C(a1, a2, v6);
}

uint64_t sub_1000D57F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BFBAC(&qword_10020BAB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D5864()
{
  v1 = *(v0 + 32);
  v2 = (type metadata accessor for PreviewInspectorPresentationModifier() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  swift_unknownObjectRelease();
  v4 = v0 + v3;

  sub_1000D4418(*(v4 + 48), *(v4 + 56), *(v4 + 57));
  (*(*(v1 - 8) + 8))(v0 + v3 + v2[14], v1);
  v5 = v2[15];
  sub_1000BFBAC(&qword_10020BAB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ContentSizeCategory();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D59F4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for PreviewInspectorPresentationModifier() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000D5B00;

  return sub_1000D3E68(a1, v8, v9, v1 + v7, v4, v5);
}

uint64_t sub_1000D5B00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1000D5BFC()
{
  result = qword_10020BAC8;
  if (!qword_10020BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020BAC8);
  }

  return result;
}

uint64_t sub_1000D5CBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000BFBAC(&qword_10020BAD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000D5D8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000BFBAC(&qword_10020BAD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000D5E3C()
{
  sub_1000D1BB8(319, &qword_10020BA40, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContentInfoViewerModel();
    if (v1 <= 0x3F)
    {
      sub_1000D5F10(319, &unk_10020BB40, &type metadata accessor for PresentationKind);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000D5F10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000D5F64()
{
  type metadata accessor for PreviewInspectorPresentationModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for NavigationPath();
  sub_1000C3C50(&qword_10020BA68);
  type metadata accessor for ModifiedContent();
  sub_1000C3C50(&qword_10020BA70);
  type metadata accessor for ContentSizeCategory();
  sub_1000C3C50(&qword_10020BA78);
  sub_1000C3C50(&qword_10020BA80);
  sub_1000D42F8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1000D6438(&qword_10020BA98, &type metadata accessor for ContentSizeCategory);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  type metadata accessor for NavigationStack();
  type metadata accessor for ZoomNavigationTransition();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000D6274()
{
  result = qword_10020BBA0;
  if (!qword_10020BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020BBA0);
  }

  return result;
}

uint64_t sub_1000D631C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1000D6334()
{
  result = qword_10020BBB8;
  if (!qword_10020BBB8)
  {
    sub_1000C3C50(&qword_10020BBB0);
    sub_1000D63E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020BBB8);
  }

  return result;
}

unint64_t sub_1000D63E4()
{
  result = qword_10020BBC0;
  if (!qword_10020BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020BBC0);
  }

  return result;
}

uint64_t sub_1000D6438(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D6480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewAppInspectorView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D64E4()
{
  v1 = (type metadata accessor for PreviewAppInspectorView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  sub_1000BFBAC(&qword_10020BAA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for PresentationKind();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D6610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewAppInspectorView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D6674()
{
  type metadata accessor for PreviewAppInspectorView();

  return sub_1000D53DC();
}

uint64_t sub_1000D66D4(uint64_t a1)
{
  v2 = sub_1000BFBAC(&qword_10020BBB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D673C()
{
  sub_1000C3C50(&qword_10020BB98);
  sub_1000C3C50(&qword_10020BBA8);
  sub_1000C3C50(&qword_10020BB90);
  sub_1000C3C50(&qword_10020BB88);
  sub_1000C3C50(&qword_10020BB80);
  sub_1000D6274();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1000C3C50(&qword_10020BBB0);
  sub_1000D6334();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000D6900@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v3 = type metadata accessor for SubmitTriggers();
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin(v3);
  v66 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for SubmitLabel();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v54 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v8 = *(v50 - 8);
  __chkstk_darwin(v50);
  v10 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v12 - 8);
  v53 = sub_1000BFBAC(&qword_10020BBE0);
  v13 = *(v53 - 8);
  __chkstk_darwin(v53);
  v15 = &v50 - v14;
  v51 = sub_1000BFBAC(&qword_10020BBE8);
  __chkstk_darwin(v51);
  v17 = &v50 - v16;
  v52 = sub_1000BFBAC(&qword_10020BBF0);
  __chkstk_darwin(v52);
  v19 = &v50 - v18;
  v60 = sub_1000BFBAC(&qword_10020BBF8);
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v21 = &v50 - v20;
  v63 = sub_1000BFBAC(&qword_10020BC00);
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v59 = &v50 - v22;
  v65 = sub_1000BFBAC(&qword_10020BC08);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v50 - v23;
  String.LocalizationValue.init(stringLiteral:)();
  *v10 = type metadata accessor for BundleLookupReference_ContentInfoViewer();
  (*(v8 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v50);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v75 = *(v2 + 16);
  v76 = *(v2 + 32);
  sub_1000BFBAC(&qword_10020BBD8);
  State.projectedValue.getter();
  TextField<>.init(_:text:)();
  sub_1000C5490(&qword_10020BC10, &qword_10020BBE0);
  v24 = v53;
  View.accessibilityIdentifier(_:)();
  (*(v13 + 8))(v15, v24);
  v25 = v55;
  static SubmitLabel.done.getter();
  sub_1000D7BF8();
  View.submitLabel(_:)();
  (*(v56 + 8))(v25, v57);
  sub_1000D7D28(v17);
  v26 = *(v2 + 8);
  KeyPath = swift_getKeyPath();
  v28 = v52;
  v29 = &v19[*(v52 + 36)];
  *v29 = KeyPath;
  v29[1] = v26;
  v75 = *(v2 + 40);
  LOBYTE(v76) = *(v2 + 56);
  v70 = *(v2 + 40);
  LOBYTE(v71) = *(v2 + 56);

  v56 = sub_1000BFBAC(&qword_10020BC28);
  FocusState.projectedValue.getter();
  v30 = sub_1000D7DE8();
  v57 = v21;
  View.focused(_:)();

  sub_1000D7EDC(v19);
  v31 = *v2;
  swift_getKeyPath();
  *&v70 = v31;
  sub_1000D7CE0(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v31 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__imageCaption + 8))
  {
    v32 = *(v31 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__imageCaption);
    v33 = *(v31 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__imageCaption + 8);
  }

  else
  {
    v32 = 0;
    v33 = 0xE000000000000000;
  }

  v73 = v32;
  v74 = v33;
  v34 = swift_allocObject();
  v35 = *(v2 + 16);
  v34[1] = *v2;
  v34[2] = v35;
  v34[3] = *(v2 + 32);
  *(v34 + 57) = *(v2 + 41);

  sub_1000D7F50(v2, &v70);
  *&v70 = v28;
  *(&v70 + 1) = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v59;
  v38 = v60;
  v39 = v57;
  View.onChange<A>(of:initial:_:)();

  (*(v58 + 8))(v39, v38);
  v40 = swift_allocObject();
  v41 = *(v2 + 16);
  v40[1] = *v2;
  v40[2] = v41;
  v40[3] = *(v2 + 32);
  *(v40 + 57) = *(v2 + 41);
  sub_1000D7F50(v2, &v70);
  v42 = v66;
  static SubmitTriggers.text.getter();
  *&v70 = v38;
  *(&v70 + 1) = &type metadata for String;
  v71 = OpaqueTypeConformance2;
  v72 = &protocol witness table for String;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v62;
  v45 = v63;
  View.onSubmit(of:_:)();

  (*(v67 + 8))(v42, v68);
  (*(v61 + 8))(v37, v45);
  v70 = v75;
  LOBYTE(v71) = v76;
  FocusState.wrappedValue.getter();
  v46 = swift_allocObject();
  v47 = *(v2 + 16);
  v46[1] = *v2;
  v46[2] = v47;
  v46[3] = *(v2 + 32);
  *(v46 + 57) = *(v2 + 41);
  sub_1000D7F50(v2, &v70);
  *&v70 = v45;
  *(&v70 + 1) = v43;
  swift_getOpaqueTypeConformance2();
  v48 = v65;
  View.onChange<A>(of:initial:_:)();

  return (*(v64 + 8))(v44, v48);
}

uint64_t sub_1000D7484()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000BFBAC(&qword_10020BBD8);
  State.wrappedValue.setter();
}

uint64_t sub_1000D7564()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000D7604();
}

uint64_t sub_1000D7604()
{
  v1 = sub_1000BFBAC(&qword_10020BAC0);
  __chkstk_darwin(v1 - 8);
  v3 = v11 - v2;
  v4 = *v0;
  v12 = *(v0 + 1);
  v13 = v0[4];
  sub_1000BFBAC(&qword_10020BBD8);
  State.wrappedValue.getter();
  v5 = v11[0];
  v6 = v11[1];

  sub_1000DFC74(v5, v6);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v4;
  sub_1000DEEC8(0, 0, v3, &unk_1001A1E60, v9);
}

uint64_t sub_1000D7780(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (((v3 | v2 ^ 1) & 1) == 0)
  {
    sub_1000D7604();
  }
}

uint64_t sub_1000D7880@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000D78D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  State.init(wrappedValue:)();
  v5 = FocusState.init<>()();
  v12 = v6;
  v7 = v5 & 1;
  v11 = v8 & 1;
  swift_getKeyPath();
  sub_1000D7CE0(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v9 = *(a1 + 16);
  swift_getKeyPath();
  sub_1000D7CE0(&qword_10020B3E8, type metadata accessor for ContentMetadata);
  swift_retain_n();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000BFBAC(&qword_10020BBD8);
  State.wrappedValue.setter();

  *a3 = v9;
  *(a3 + 8) = a2;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  *(a3 + 32) = v16;
  *(a3 + 40) = v7;
  *(a3 + 48) = v12;
  *(a3 + 56) = v11;
  return result;
}

__n128 sub_1000D7B18(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000D7B34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1000D7B7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000D7BF8()
{
  result = qword_10020BC18;
  if (!qword_10020BC18)
  {
    sub_1000C3C50(&qword_10020BBE8);
    sub_1000C5490(&qword_10020BC10, &qword_10020BBE0);
    sub_1000D7CE0(&qword_10020BC20, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020BC18);
  }

  return result;
}

uint64_t sub_1000D7CE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D7D28(uint64_t a1)
{
  v2 = sub_1000BFBAC(&qword_10020BBE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D7D90@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000D7DE8()
{
  result = qword_10020BC30;
  if (!qword_10020BC30)
  {
    sub_1000C3C50(&qword_10020BBF0);
    sub_1000C3C50(&qword_10020BBE8);
    sub_1000D7BF8();
    swift_getOpaqueTypeConformance2();
    sub_1000C5490(&qword_10020B6E8, &qword_10020B6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020BC30);
  }

  return result;
}

uint64_t sub_1000D7EDC(uint64_t a1)
{
  v2 = sub_1000BFBAC(&qword_10020BBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D7F90()
{

  return swift_deallocObject();
}

uint64_t sub_1000D7FF0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D8030(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000D5B00;

  return sub_1000E2A34(a1);
}

uint64_t sub_1000D80E4()
{
  sub_1000C3C50(&qword_10020BC08);
  sub_1000C3C50(&qword_10020BC00);
  sub_1000C3C50(&qword_10020BBF8);
  sub_1000C3C50(&qword_10020BBF0);
  sub_1000D7DE8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_1000D8238(uint64_t a1)
{
  sub_1000D8314(a1, v10);
  if (!v11)
  {
    sub_1000D8384(v10);
LABEL_7:
    v6 = COERCE_DOUBLE(sub_1000D8BEC(a1));
    if ((v7 & 1) == 0)
    {
      v5 = v6;
      return sub_1000D83EC(v5);
    }

    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v2 = v9[0];
  v10[0] = 0;
  LOBYTE(v9[0]) = 1;
  sub_1000D87CC(v2, v9[1], v10, v9);
  v4 = v3;

  if (v10[0] == 1 && LOBYTE(v9[0]) == 1)
  {
    return 0;
  }

  v5 = v4;
  return sub_1000D83EC(v5);
}

uint64_t sub_1000D8314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BFBAC(&qword_10020B968);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D8384(uint64_t a1)
{
  v2 = sub_1000BFBAC(&qword_10020B968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000D83EC(double a1)
{
  if (*(v1 + 8))
  {
    sub_1000D8A5C(a1);
    v5 = v3;
    if (v4)
    {
      v6 = v4;
      v7 = v3 & 0xFFFFFFFFFFFFLL;

      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = 0;
  v6 = 0xE000000000000000;
LABEL_6:

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v7;
  }

  if (!v8)
  {

    return sub_1000D84A4(a1);
  }

  return v5;
}

id sub_1000D84A4(double a1)
{
  if (v1[3])
  {
    v3 = [objc_allocWithZone(NSNumberFormatter) init];
    [v3 setNumberStyle:1];
    [v3 setMaximumFractionDigits:*v1];
    v4 = [objc_allocWithZone(NSNumber) initWithDouble:a1];
    v5 = [v3 stringFromNumber:v4];

    if (!v5)
    {

      return v5;
    }

    v6 = v5;
LABEL_7:
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = v1[5];
    if (v13)
    {
      v14 = v1[4];
      v15 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v15 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        sub_1000BFBAC(&qword_10020BC48);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_10019A9F0;
        *(v16 + 56) = &type metadata for String;
        *(v16 + 64) = sub_1000D8DB4();
        *(v16 + 32) = v5;
        *(v16 + 40) = v12;
        v5 = static String.localizedStringWithFormat(_:_:)();
      }
    }

    return v5;
  }

  v7 = v1[2];
  v6 = [objc_allocWithZone(NSLengthFormatter) init];
  result = [v6 numberFormatter];
  if (result)
  {
    v9 = result;
    [result setNumberStyle:1];

    result = [v6 numberFormatter];
    if (result)
    {
      v10 = result;
      [result setMaximumFractionDigits:*v1];

      v3 = [v6 stringFromValue:v7 unit:a1];
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1000D86D4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

void sub_1000D87CC(uint64_t a1, uint64_t a2, char *a3, _BYTE *a4)
{
  sub_1000D8D60();
  v6 = StringProtocol.components<A>(separatedBy:)();
  if (*(v6 + 16) == 2)
  {
    v7 = v6;
    v8 = objc_allocWithZone(NSDecimalNumber);

    v9 = String._bridgeToObjectiveC()();

    v10 = [v8 initWithString:{v9, 47, 0xE100000000000000, a1, a2}];

    if (*(v7 + 16) < 2uLL)
    {
      __break(1u);
      return;
    }

    v11 = objc_allocWithZone(NSDecimalNumber);
    v12 = String._bridgeToObjectiveC()();

    v13 = [v11 initWithString:v12];

    v14 = [objc_allocWithZone(NSDecimalNumberHandler) initWithRoundingMode:0 scale:0 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
    v15 = [v10 decimalNumberByDividingBy:v13 withBehavior:v14];

    v16 = 1;
  }

  else
  {

    v17 = objc_allocWithZone(NSDecimalNumber);
    v13 = String._bridgeToObjectiveC()();
    v15 = [v17 initWithString:{v13, 47, 0xE100000000000000, a1, a2}];
    v16 = 0;
  }

  *a3 = v16;
  sub_1000D8E08(0, &qword_10020BC40);
  v18 = objc_opt_self();
  v19 = v15;
  v20 = [v18 notANumber];
  v21 = static NSObject.== infix(_:_:)();

  *a4 = v21 & 1;
  if ((v21 & 1) == 0)
  {
    [v19 doubleValue];
  }
}

void sub_1000D8A5C(double a1)
{
  if (a1 > 0.0 && a1 < 1.0)
  {
    v2 = round(1.0 / a1);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v2 > -1.0)
    {
      if (v2 < 4294967300.0)
      {
        v3 = v2;
        if (fabs(a1 + -1.0 / v3) < 0.001)
        {
          v4 = [objc_allocWithZone(NSNumberFormatter) init];
          [v4 setNumberStyle:1];
          [v4 setMaximumFractionDigits:0];
          v5 = objc_opt_self();
          v6 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v3];
          v7 = [v5 localizedStringFromNumber:v6 numberStyle:1];

          v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v10 = v9;

          v11._countAndFlagsBits = v8;
          v11._object = v10;
          String.append(_:)(v11);
        }

        return;
      }

LABEL_14:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_14;
  }
}