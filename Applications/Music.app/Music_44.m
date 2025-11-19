uint64_t sub_1004F8484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10010FC20(&qword_1011935C8);
  sub_1004F8594(a1, a2 + *(v4 + 44));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v9;
  result = sub_10010FC20(&qword_101193520);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = sub_100239940;
  v8[2] = v6;
  return result;
}

uint64_t sub_1004F8594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v3 - 8);
  v5 = &v64 - v4;
  *&v67 = sub_10010FC20(&qword_1011935D0);
  __chkstk_darwin(v67);
  v7 = &v64 - v6;
  v69 = sub_10010FC20(&qword_1011935D8);
  __chkstk_darwin(v69);
  v71 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = &v64 - v10;
  __chkstk_darwin(v11);
  v70 = &v64 - v12;
  v13 = sub_10010FC20(&qword_1011935E0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v64 - v15;
  v17 = sub_10010FC20(&qword_1011935E8);
  __chkstk_darwin(v17 - 8);
  v68 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  v22 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v66 = v22;
  static Published.subscript.getter();

  v23 = sub_100031064(0);

  if (v23)
  {
    sub_1004F8BAC(a1, v16);
    v24 = static Edge.Set.top.getter();
    if (qword_10117F7E0 != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = &v16[*(sub_10010FC20(&qword_101193600) + 36)];
    *v33 = v24;
    *(v33 + 1) = v26;
    *(v33 + 2) = v28;
    *(v33 + 3) = v30;
    *(v33 + 4) = v32;
    v33[40] = 0;
    v34 = static Edge.Set.bottom.getter();
    sub_1004F9D28();
    EdgeInsets.init(_all:)();
    v35 = &v16[*(v13 + 36)];
    *v35 = v34;
    *(v35 + 1) = v36;
    *(v35 + 2) = v37;
    *(v35 + 3) = v38;
    *(v35 + 4) = v39;
    v35[40] = 0;
    sub_10003D17C(v16, v21, &qword_1011935E0);
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  (*(v14 + 56))(v21, v40, 1, v13);
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v41 = sub_10010FC20(&qword_1011935F0);
  sub_1004F9E04(a1, &v7[*(v41 + 44)]);
  v42 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v43 = &v7[*(v67 + 36)];
  *v43 = v42;
  *(v43 + 1) = v44;
  *(v43 + 2) = v45;
  *(v43 + 3) = v46;
  *(v43 + 4) = v47;
  v43[40] = 0;
  v48 = static Edge.Set.horizontal.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1005015FC(v5);
  v50 = v49;
  sub_1000095E8(v5, &unk_101184290);
  v51 = 0uLL;
  v52 = 0uLL;
  if ((v50 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v52 + 1) = v53;
    *(&v51 + 1) = v54;
  }

  v66 = v52;
  v67 = v51;
  v55 = v65;
  sub_10003D17C(v7, v65, &qword_1011935D0);
  v56 = v70;
  v57 = v55 + *(v69 + 36);
  *v57 = v48;
  v58 = v67;
  *(v57 + 24) = v66;
  *(v57 + 8) = v58;
  *(v57 + 40) = v50 & 1;
  sub_10003D17C(v55, v56, &qword_1011935D8);
  v59 = v68;
  sub_1000089F8(v21, v68, &qword_1011935E8);
  v60 = v71;
  sub_1000089F8(v56, v71, &qword_1011935D8);
  v61 = v72;
  sub_1000089F8(v59, v72, &qword_1011935E8);
  v62 = sub_10010FC20(&qword_1011935F8);
  sub_1000089F8(v60, v61 + *(v62 + 48), &qword_1011935D8);
  sub_1000095E8(v56, &qword_1011935D8);
  sub_1000095E8(v21, &qword_1011935E8);
  sub_1000095E8(v60, &qword_1011935D8);
  return sub_1000095E8(v59, &qword_1011935E8);
}

uint64_t sub_1004F8BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v67 = type metadata accessor for ArtworkImage.ReusePolicy();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10010FC20(&unk_1011A1400);
  v68 = *(v71 - 8);
  __chkstk_darwin(v71);
  v65 = &v63 - v4;
  v73 = sub_10010FC20(&unk_10119F190);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v63 - v5;
  v81 = sub_10010FC20(&qword_101193608);
  __chkstk_darwin(v81);
  v74 = &v63 - v6;
  v7 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v7 - 8);
  v9 = &v63 - v8;
  v10 = type metadata accessor for ArtworkImage.Info(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v69 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10010FC20(&qword_101193610);
  __chkstk_darwin(v79);
  v80 = &v63 - v13;
  v14 = _s8MetadataO4ViewVMa(0);
  v75 = *(v14 - 8);
  v15 = *(v75 + 64);
  __chkstk_darwin(v14);
  v76 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&qword_101193618);
  __chkstk_darwin(v16 - 8);
  v18 = &v63 - v17;
  v78 = sub_10010FC20(&qword_101193620);
  __chkstk_darwin(v78);
  v77 = (&v63 - v19);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = sub_100031064(0, v85);

  if (v20)
  {
    v21 = (a1 + *(v14 + 40));
    v23 = *v21;
    v22 = v21[1];
    *&v83 = v23;
    *(&v83 + 1) = v22;
    sub_10010FC20(&qword_101193578);
    State.projectedValue.getter();
    v74 = *(&v85 + 1);
    v24 = v85;
    v25 = *&v86;
    sub_10010FC20(&qword_1011933C0);
    State.projectedValue.getter();
    v26 = a1 + *(v14 + 32);
    v27 = *(v26 + 16);
    v83 = *v26;
    v84 = v27;
    sub_10010FC20(&qword_101186158);
    State.projectedValue.getter();
    v28 = v85;
    v29 = v86;
    v30 = v87;
    v31 = v18;
    if (qword_10117F7F0 != -1)
    {
      swift_once();
    }

    v32 = *&qword_101192E68;
    if (qword_10117F7F8 != -1)
    {
      swift_once();
    }

    v33 = *&qword_101192E70;
    v34 = v76;
    sub_100501D6C(a1, v76, _s8MetadataO4ViewVMa);
    v35 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v36 = swift_allocObject();
    sub_100501D04(v34, v36 + v35, _s8MetadataO4ViewVMa);
    v37 = sub_10010FC20(&qword_101193640);
    v38 = sub_100502024();
    v39 = sub_100502078();
    v40 = sub_1005020CC();
    *(&v62 + 1) = v39;
    *(&v61 + 1) = &protocol witness table for PlaylistCovers.CarouselItem;
    *&v62 = v38;
    *&v61 = v37;
    v41 = v77;
    CarouselView.init(items:scrollPosition:itemSize:horizontalSpacing:carouselToPageIndicatorSpacing:content:didSelect:)(v24, v74, v25, v31, v28, *(&v28 + 1), sub_100501FA4, v36, v77, v29, v30, v32, v33, 0, 0, &type metadata for PlaylistCovers.CarouselItem, v61, v62, v40);
    sub_1000089F8(v41, v80, &qword_101193620);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101193630, &qword_101193620);
    sub_100501E20();
    v42 = v82;
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v41, &qword_101193620);
LABEL_12:
    v43 = 0;
    goto LABEL_13;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v44 = v69;
    sub_100501D04(v9, v69, type metadata accessor for ArtworkImage.Info);
    v45 = *(v10 + 20);
    if (qword_10117F7E8 != -1)
    {
      swift_once();
    }

    ArtworkImage.Size.init(cgSize:)(xmmword_101192E58, *(&xmmword_101192E58 + 1), 0, &v85);
    v46 = v66;
    v47 = v64;
    v48 = v67;
    (*(v66 + 104))(v64, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v67);
    v49 = v65;
    static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v44, v44 + v45, &v85, v47, v65);
    (*(v46 + 8))(v47, v48);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v51 = v70;
    v52 = v71;
    View.corner(_:)();
    (*(v68 + 8))(v49, v52);
    Border.artwork.unsafeMutableAddressor();

    *&v83 = v52;
    *(&v83 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v53 = v74;
    v54 = v73;
    View.border(_:corner:)();

    (*(v72 + 8))(v51, v54);
    v55 = v44 + *(v10 + 24);
    v56 = *v55;
    LOBYTE(v55) = *(v55 + 8);
    v57 = v80;
    v58 = v53 + *(v81 + 36);
    *v58 = v56;
    *(v58 + 8) = v55;
    sub_1000089F8(v53, v57, &qword_101193608);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101193630, &qword_101193620);
    sub_100501E20();
    v42 = v82;
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v53, &qword_101193608);
    sub_100501F44(v44, type metadata accessor for ArtworkImage.Info);
    goto LABEL_12;
  }

  sub_1000095E8(v9, &unk_10119F000);
  v43 = 1;
  v42 = v82;
LABEL_13:
  v59 = sub_10010FC20(&qword_101193628);
  return (*(*(v59 - 8) + 56))(v42, v43, 1, v59);
}

double sub_1004F9744@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[5];
  v53 = a1[4];
  v54 = v5;
  v6 = a1[7];
  v55 = a1[6];
  v56 = v6;
  v7 = a1[1];
  v49 = *a1;
  v50 = v7;
  v8 = a1[3];
  v51 = a1[2];
  v52 = v8;
  v63 = v55;
  v64 = v6;
  v61 = v53;
  v62 = v5;
  v59 = v51;
  v60 = v8;
  v57 = v49;
  v58 = v7;
  if (sub_1000D8FA0(&v57) == 1)
  {
    if (qword_10117F7E8 != -1)
    {
      swift_once();
    }

    v9 = xmmword_101192E58;
    _s8MetadataO5ModelCMa(0);
    sub_1005008CC(&qword_101193438, _s8MetadataO5ModelCMa);
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v17 = *(&v32 + 1);
    v18 = v32;
    v16 = v33;
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v10 = *(a2 + 48);
    LOBYTE(v31[0]) = *(a2 + 40);
    *(&v31[0] + 1) = v10;
    sub_10010FC20(&unk_101197960);
    State.projectedValue.getter();
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v20[0] = 1;
    State.init(wrappedValue:)();
    v32 = v9;
    *&v33 = v18;
    *(&v33 + 1) = v17;
    *v34 = v16;
    *&v34[8] = v39;
    *&v34[24] = v40;
    *&v34[40] = v21;
    v34[56] = v22;
    *&v34[60] = *(v31 + 3);
    *&v34[57] = v31[0];
    v35 = v21;
    LOBYTE(v36) = v22;
    DWORD1(v36) = *&v20[3];
    *(&v36 + 1) = *v20;
    BYTE8(v36) = v31[0];
    HIDWORD(v36) = *&v19[3];
    *(&v36 + 9) = *v19;
    *&v37 = *(&v31[0] + 1);
    sub_100502268(&v32);
    sub_100502158();
    sub_1005021AC();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v31[4] = v53;
    v31[5] = v54;
    v31[6] = v55;
    v31[7] = v56;
    v31[0] = v49;
    v31[1] = v50;
    v31[2] = v51;
    v31[3] = v52;
    sub_100501164(&v49, &v39);
    sub_100502200(v31, &v39);
    if (qword_10117F7E8 != -1)
    {
      swift_once();
    }

    *&v34[32] = v61;
    *&v34[48] = v62;
    v35 = v63;
    v36 = v64;
    v32 = v57;
    v33 = v58;
    *v34 = v59;
    *&v34[16] = v60;
    v37 = xmmword_101192E58;
    sub_10050225C(&v32);
    v45 = v35;
    v46 = v36;
    v47 = v37;
    v48 = v38;
    v41 = *v34;
    v42 = *&v34[16];
    v43 = *&v34[32];
    v44 = *&v34[48];
    v39 = v32;
    v40 = v33;
    sub_100502158();
    sub_1005021AC();
    _ConditionalContent<>.init(storage:)();
    sub_1005011C0(&v49);
    v45 = v27;
    v46 = v28;
    v47 = v29;
    v48 = v30;
    v41 = v23;
    v42 = v24;
    v43 = v25;
    v44 = v26;
    v39 = v21;
    v40 = v22;
  }

  v11 = v46;
  *(a3 + 96) = v45;
  *(a3 + 112) = v11;
  *(a3 + 128) = v47;
  *(a3 + 144) = v48;
  v12 = v42;
  *(a3 + 32) = v41;
  *(a3 + 48) = v12;
  v13 = v44;
  *(a3 + 64) = v43;
  *(a3 + 80) = v13;
  result = *&v39;
  v15 = v40;
  *a3 = v39;
  *(a3 + 16) = v15;
  return result;
}

uint64_t sub_1004F9C08@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1004F9C88(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return static Published.subscript.setter();
}

double sub_1004F9D28()
{
  _s8MetadataO4ViewVMa(0);
  sub_10010FC20(&qword_101193578);
  State.wrappedValue.getter();
  v0 = *(v5 + 16);

  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 userInterfaceIdiom];

  result = 48.0;
  if (v0 > 1)
  {
    result = 20.0;
  }

  v4 = 67.0;
  if (v0 > 1)
  {
    v4 = 34.0;
  }

  if (v2 != 6)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1004F9E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v3 = sub_10010FC20(&qword_101193670);
  v130 = *(v3 - 8);
  v131 = v3;
  __chkstk_darwin(v3);
  v117 = (&v107 - v4);
  v5 = sub_10010FC20(&qword_101193678);
  __chkstk_darwin(v5 - 8);
  v132 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v134 = &v107 - v8;
  v126 = sub_10010FC20(&qword_101193680);
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v116 = &v107 - v9;
  v114 = sub_10010FC20(&qword_101193688);
  __chkstk_darwin(v114);
  v115 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v123 = &v107 - v12;
  v13 = sub_10010FC20(&qword_101193690);
  __chkstk_darwin(v13 - 8);
  v128 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v107 - v16;
  v18 = sub_10010FC20(&qword_101193698);
  v118 = *(v18 - 8);
  __chkstk_darwin(v18);
  v111 = &v107 - v19;
  v20 = type metadata accessor for Divider();
  v119 = *(v20 - 8);
  __chkstk_darwin(v20);
  v112 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10010FC20(&qword_1011936A0);
  __chkstk_darwin(v22 - 8);
  v113 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v122 = &v107 - v25;
  __chkstk_darwin(v26);
  v110 = &v107 - v27;
  v108 = sub_10010FC20(&qword_1011936A8);
  __chkstk_darwin(v108);
  v109 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v107 - v30;
  v32 = sub_10010FC20(&qword_1011936B0);
  __chkstk_darwin(v32 - 8);
  v124 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v107 - v35;
  v37 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v38 = 1;
  v39 = sub_100031064(1);

  v129 = a1;
  v127 = v17;
  v135 = v36;
  v121 = v37;
  v120 = v20;
  if (v39)
  {
    v107 = v18;
    _s8MetadataO5ModelCMa(0);
    sub_1005008CC(&qword_101193438, _s8MetadataO5ModelCMa);
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v40 = *(a1 + 24);
    v41 = *(a1 + 32);
    LOBYTE(v139) = *(a1 + 16);
    v140 = v40;
    v141 = v41;
    sub_10010FC20(&qword_101193590);
    FocusState.projectedValue.getter();
    v139 = v136;
    v140 = v137;
    v141 = v138;
    LOBYTE(v136) = 1;
    sub_10010FC20(&qword_101192F78);
    sub_100502334();
    sub_100500CBC(&qword_101193448, sub_1004F61B8);
    v42 = v119;
    View.focused<A>(_:equals:)();

    v43 = 1;

    v44 = v120;

    v45 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = &v31[*(sub_10010FC20(&qword_1011936D8) + 36)];
    *v54 = v45;
    *(v54 + 1) = v47;
    *(v54 + 2) = v49;
    *(v54 + 3) = v51;
    *(v54 + 4) = v53;
    v54[40] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v55 = sub_100031064(1);

    KeyPath = swift_getKeyPath();
    v57 = swift_allocObject();
    *(v57 + 16) = (v55 & 1) == 0;
    v58 = &v31[*(v108 + 36)];
    *v58 = KeyPath;
    v58[1] = sub_1005024EC;
    v58[2] = v57;
    v59 = [objc_opt_self() currentTraitCollection];
    v60 = [v59 userInterfaceIdiom];

    v61 = v110;
    if (v60 != 6)
    {
      v62 = v112;
      Divider.init()();
      (*(v42 + 32))(v61, v62, v44);
      v43 = 0;
    }

    (*(v42 + 56))(v61, v43, 1, v44);
    v63 = v109;
    sub_1000089F8(v31, v109, &qword_1011936A8);
    v64 = v31;
    v65 = v122;
    sub_1000089F8(v61, v122, &qword_1011936A0);
    v66 = v111;
    sub_1000089F8(v63, v111, &qword_1011936A8);
    v67 = sub_10010FC20(&qword_1011936E0);
    sub_1000089F8(v65, v66 + *(v67 + 48), &qword_1011936A0);
    sub_1000095E8(v61, &qword_1011936A0);
    sub_1000095E8(v64, &qword_1011936A8);
    sub_1000095E8(v65, &qword_1011936A0);
    sub_1000095E8(v63, &qword_1011936A8);
    v36 = v135;
    sub_10003D17C(v66, v135, &qword_101193698);
    v38 = 0;
    a1 = v129;
    v17 = v127;
    v18 = v107;
  }

  v68 = 1;
  (*(v118 + 56))(v36, v38, 1, v18);
  v69 = sub_1004FAF7C();
  v70 = v134;
  if (v69)
  {
    _s8MetadataO5ModelCMa(0);
    sub_1005008CC(&qword_101193438, _s8MetadataO5ModelCMa);
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v71 = *(a1 + 24);
    v72 = *(a1 + 32);
    LOBYTE(v139) = *(a1 + 16);
    v140 = v71;
    v141 = v72;
    sub_10010FC20(&qword_101193590);
    FocusState.projectedValue.getter();
    v139 = v136;
    v140 = v137;
    v141 = v138;
    LOBYTE(v136) = 2;
    sub_10010FC20(&qword_101192F78);
    sub_1005022E0();
    sub_100500CBC(&qword_101193448, sub_1004F61B8);
    v73 = v123;
    v74 = v120;
    View.focused<A>(_:equals:)();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v75 = sub_100031064(2);

    v76 = swift_getKeyPath();
    v77 = swift_allocObject();
    v78 = 1;
    *(v77 + 16) = (v75 & 1) == 0;
    v79 = (v73 + *(v114 + 36));
    v80 = v119;
    *v79 = v76;
    v79[1] = sub_1005024EC;
    v79[2] = v77;
    v81 = [objc_opt_self() currentTraitCollection];
    v82 = [v81 userInterfaceIdiom];

    v83 = v113;
    if (v82 != 6)
    {
      v84 = v112;
      Divider.init()();
      (*(v80 + 32))(v83, v84, v74);
      v78 = 0;
    }

    (*(v80 + 56))(v83, v78, 1, v74);
    v85 = v123;
    v86 = v115;
    sub_1000089F8(v123, v115, &qword_101193688);
    v87 = v122;
    sub_1000089F8(v83, v122, &qword_1011936A0);
    v88 = v116;
    sub_1000089F8(v86, v116, &qword_101193688);
    v89 = sub_10010FC20(&qword_1011936C8);
    sub_1000089F8(v87, v88 + *(v89 + 48), &qword_1011936A0);
    sub_1000095E8(v83, &qword_1011936A0);
    sub_1000095E8(v85, &qword_101193688);
    sub_1000095E8(v87, &qword_1011936A0);
    sub_1000095E8(v86, &qword_101193688);
    v90 = v88;
    v17 = v127;
    sub_10003D17C(v90, v127, &qword_101193680);
    v68 = 0;
    v70 = v134;
    v36 = v135;
  }

  v91 = 1;
  (*(v125 + 56))(v17, v68, 1, v126);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v92 = sub_100031064(3);

  v93 = v131;
  if (v92)
  {
    v94 = v117;
    sub_1004FB190(v117);
    v95 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v96 = v94 + *(v93 + 36);
    *v96 = v95;
    *(v96 + 1) = v97;
    *(v96 + 2) = v98;
    *(v96 + 3) = v99;
    *(v96 + 4) = v100;
    v96[40] = 0;
    sub_100502270(v94, v70);
    v91 = 0;
  }

  (*(v130 + 56))(v70, v91, 1, v93);
  v101 = v124;
  sub_1000089F8(v36, v124, &qword_1011936B0);
  v102 = v128;
  sub_1000089F8(v17, v128, &qword_101193690);
  v103 = v132;
  sub_1000089F8(v70, v132, &qword_101193678);
  v104 = v133;
  sub_1000089F8(v101, v133, &qword_1011936B0);
  v105 = sub_10010FC20(&qword_1011936B8);
  sub_1000089F8(v102, v104 + *(v105 + 48), &qword_101193690);
  sub_1000089F8(v103, v104 + *(v105 + 64), &qword_101193678);
  sub_1000095E8(v70, &qword_101193678);
  sub_1000095E8(v17, &qword_101193690);
  sub_1000095E8(v135, &qword_1011936B0);
  sub_1000095E8(v103, &qword_101193678);
  sub_1000095E8(v102, &qword_101193690);
  return sub_1000095E8(v101, &qword_1011936B0);
}

BOOL sub_1004FAF7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = sub_100031064(2);

  if ((v0 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = sub_100031064(2);

  if (v1)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v3 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  return v3 != 0;
}

uint64_t sub_1004FB100@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1004FB190@<X0>(void *a1@<X8>)
{
  v50 = sub_10010FC20(&qword_1011936E8);
  __chkstk_darwin(v50);
  v44 = (&v44 - v2);
  v47 = sub_10010FC20(&qword_1011936F0);
  __chkstk_darwin(v47);
  v49 = &v44 - v3;
  v48 = sub_10010FC20(&qword_1011936F8);
  __chkstk_darwin(v48);
  v5 = &v44 - v4;
  v46 = type metadata accessor for Divider();
  v6 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011936A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = sub_100031064(3);

  if (v17)
  {
    v44 = a1;
    _s8MetadataO5ModelCMa(0);
    sub_1005008CC(&qword_101193438, _s8MetadataO5ModelCMa);
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v18 = v51;
    v19 = v52;
    v20 = v53;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v51 == 1 && (v21 = [objc_opt_self() currentTraitCollection], v22 = objc_msgSend(v21, "userInterfaceIdiom"), v21, v22 != 6))
    {
      v33 = v45;
      Divider.init()();
      v34 = v33;
      v35 = v46;
      (*(v6 + 32))(v16, v34, v46);
      v24 = v35;
      v23 = 0;
    }

    else
    {
      v23 = 1;
      v24 = v46;
    }

    (*(v6 + 56))(v16, v23, 1, v24);
    sub_1000089F8(v16, v13, &qword_1011936A0);
    *v5 = v18;
    *(v5 + 1) = v19;
    v5[16] = v20;
    v36 = sub_10010FC20(&qword_101193720);
    sub_1000089F8(v13, &v5[*(v36 + 48)], &qword_1011936A0);
    swift_retain_n();
    swift_retain_n();
    sub_1000095E8(v13, &qword_1011936A0);

    sub_1000089F8(v5, v49, &qword_1011936F8);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101193710, &qword_1011936F8);
    sub_100020674(&qword_101193718, &qword_1011936E8);
    a1 = v44;
    _ConditionalContent<>.init(storage:)();

    sub_1000095E8(v5, &qword_1011936F8);
    v37 = v16;
LABEL_13:
    sub_1000095E8(v37, &qword_1011936A0);
    v32 = 0;
    goto LABEL_14;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v51 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v25 = v52;
    if (v52)
    {
      v26 = a1;
      v27 = v51;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v51 != 1)
      {

        v32 = 1;
        a1 = v26;
        goto LABEL_14;
      }

      v28 = [objc_opt_self() currentTraitCollection];
      v29 = [v28 userInterfaceIdiom];

      if (v29 == 6)
      {
        v30 = 1;
        v31 = v46;
      }

      else
      {
        v40 = v45;
        Divider.init()();
        v41 = v40;
        v31 = v46;
        (*(v6 + 32))(v10, v41, v46);
        v30 = 0;
      }

      (*(v6 + 56))(v10, v30, 1, v31);
      sub_1000089F8(v10, v13, &qword_1011936A0);
      v42 = v44;
      *v44 = v27;
      *(v42 + 8) = v25;
      v43 = sub_10010FC20(&qword_101193708);
      sub_1000089F8(v13, v42 + *(v43 + 48), &qword_1011936A0);

      sub_1000095E8(v13, &qword_1011936A0);

      sub_1000089F8(v42, v49, &qword_1011936E8);
      swift_storeEnumTagMultiPayload();
      sub_100020674(&qword_101193710, &qword_1011936F8);
      sub_100020674(&qword_101193718, &qword_1011936E8);
      a1 = v26;
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v42, &qword_1011936E8);
      v37 = v10;
      goto LABEL_13;
    }
  }

  v32 = 1;
LABEL_14:
  v38 = sub_10010FC20(&qword_101193700);
  return (*(*(v38 - 8) + 56))(a1, v32, 1, v38);
}

uint64_t sub_1004FBAA8()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002AC1CC;

  return sub_1004FBB54();
}

uint64_t sub_1004FBB54()
{
  v1[13] = v0;
  v2 = sub_10010FC20(&unk_1011841D0);
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  sub_10010FC20(&qword_101184230);
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for PlaylistCovers.Source();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = type metadata accessor for MainActor();
  v1[25] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[26] = v5;
  v1[27] = v4;

  return _swift_task_switch(sub_1004FBD10, v5, v4);
}

uint64_t sub_1004FBD10()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[17];

    sub_1000095E8(v4, &qword_101184230);

    v5 = v0[1];

    return v5();
  }

  v7 = v0[22];
  v8 = v0[23];
  sub_100501D04(v0[17], v8, type metadata accessor for PlaylistCovers.Source);
  sub_100501D6C(v8, v7, type metadata accessor for PlaylistCovers.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = v0[22];
  if (EnumCaseMultiPayload == 1)
  {
    v11 = v0[20];
    sub_100501D6C(v10, v11, type metadata accessor for PlaylistCovers.Source);
    v12 = *(*v11 + 16);

    if (!v12)
    {
      v0[32] = static MainActor.shared.getter();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      v0[33] = v13;
      v0[34] = v14;
      v16 = sub_1004FC41C;
LABEL_10:

      return _swift_task_switch(v16, v13, v15);
    }
  }

  else
  {
    v17 = v0[21];
    v19 = v0[15];
    v18 = v0[16];
    v20 = v0[14];
    sub_100501D6C(v10, v17, type metadata accessor for PlaylistCovers.Source);
    (*(v19 + 32))(v18, v17, v20);
    sub_100020674(&qword_1011913B0, &unk_1011841D0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v0[10] == v0[11])
    {
      v0[28] = static MainActor.shared.getter();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v21;
      v0[29] = v13;
      v0[30] = v21;
      v16 = sub_1004FC0BC;
      goto LABEL_10;
    }

    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  v22 = swift_task_alloc();
  v0[36] = v22;
  *v22 = v0;
  v22[1] = sub_1004FC75C;
  v23 = v0[23];

  return static PlaylistCovers.recipeColorsForSource(_:)(v23);
}

uint64_t sub_1004FC0BC()
{
  v1 = v0[13];
  v2 = (v1 + *(_s8MetadataO4ViewVMa(0) + 36));
  v4 = *v2;
  v3 = v2[1];
  v0[6] = v4;
  v0[7] = v3;
  v0[12] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011935B8);
  State.wrappedValue.setter();
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_1004FC1A0;

  return sub_1004FD358();
}

uint64_t sub_1004FC1A0()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_1004FC2C0, v3, v2);
}

uint64_t sub_1004FC2C0()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return _swift_task_switch(sub_1004FC324, v1, v2);
}

uint64_t sub_1004FC324()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];

  (*(v4 + 8))(v3, v5);
  sub_100501F44(v2, type metadata accessor for PlaylistCovers.Source);
  sub_100501F44(v1, type metadata accessor for PlaylistCovers.Source);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004FC41C()
{
  v1 = v0[13];
  v2 = (v1 + *(_s8MetadataO4ViewVMa(0) + 36));
  v4 = *v2;
  v3 = v2[1];
  v0[4] = v4;
  v0[5] = v3;
  v0[9] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011935B8);
  State.wrappedValue.setter();
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_1004FC500;

  return sub_1004FD358();
}

uint64_t sub_1004FC500()
{
  v1 = *v0;

  v2 = *(v1 + 272);
  v3 = *(v1 + 264);

  return _swift_task_switch(sub_1004FC620, v3, v2);
}

uint64_t sub_1004FC620()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return _swift_task_switch(sub_1004FC684, v1, v2);
}

uint64_t sub_1004FC684()
{
  v1 = v0[22];
  v2 = v0[23];

  sub_100501F44(v2, type metadata accessor for PlaylistCovers.Source);
  sub_100501F44(v1, type metadata accessor for PlaylistCovers.Source);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004FC75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[37] = a1;
  v6[38] = a2;
  v6[39] = a3;
  v6[40] = a4;

  v7 = v5[27];
  v8 = v5[26];

  return _swift_task_switch(sub_1004FC888, v8, v7);
}

uint64_t sub_1004FC888()
{
  v1 = static PlaylistCovers.Expression.allCases.getter();
  v0[41] = v1;
  sub_100501DD4();
  v2 = [swift_getObjCClassFromMetadata() preferredFormat];
  v0[42] = v2;
  v3 = swift_task_alloc();
  v0[43] = v3;
  *v3 = v0;
  v3[1] = sub_1004FC96C;
  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[37];
  v7 = v0[38];

  return static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:)(v1, v6, v7, v4, v5, v2, 180.0, 180.0);
}

uint64_t sub_1004FC96C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  *(*v1 + 352) = a1;

  v4 = *(v2 + 216);
  v5 = *(v2 + 208);

  return _swift_task_switch(sub_1004FCAD0, v5, v4);
}

uint64_t sub_1004FCAD0()
{
  v1 = v0[44];
  v2 = v0[13];
  v3 = (v2 + *(_s8MetadataO4ViewVMa(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v0[2] = v5;
  v0[3] = v4;
  v0[8] = v1;
  sub_10010FC20(&qword_1011935B8);
  State.wrappedValue.setter();
  v6 = swift_task_alloc();
  v0[45] = v6;
  *v6 = v0;
  v6[1] = sub_1004FCBB8;

  return sub_1004FD358();
}

uint64_t sub_1004FCBB8()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return _swift_task_switch(sub_1004FCCD8, v3, v2);
}

uint64_t sub_1004FCCD8()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[22];
  v6 = v0[23];

  sub_100501F44(v6, type metadata accessor for PlaylistCovers.Source);
  sub_100501F44(v5, type metadata accessor for PlaylistCovers.Source);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004FCDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _s8MetadataO4ViewVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_100501D6C(a3, v7, _s8MetadataO4ViewVMa);
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_100501D04(v7, v14 + v13, _s8MetadataO4ViewVMa);
  sub_1001F4CB8(0, 0, v10, &unk_100ED0D70, v14);
}

uint64_t sub_1004FCFA8()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002AC1CC;

  return sub_1004FBB54();
}

uint64_t sub_1004FD054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _s8MetadataO4ViewVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = String.trim()();

  v12 = (v11._object >> 56) & 0xF;
  if ((v11._object & 0x2000000000000000) == 0)
  {
    v12 = v11._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    goto LABEL_7;
  }

  v13 = String.trim()();

  v15 = (v13._object >> 56) & 0xF;
  if ((v13._object & 0x2000000000000000) == 0)
  {
    v15 = v13._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
LABEL_7:
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    sub_100501D6C(a3, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s8MetadataO4ViewVMa);
    type metadata accessor for MainActor();
    v17 = static MainActor.shared.getter();
    v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = &protocol witness table for MainActor;
    sub_100501D04(v7, v19 + v18, _s8MetadataO4ViewVMa);
    sub_1001F4CB8(0, 0, v10, &unk_100ED0D60, v19);
  }

  return result;
}

uint64_t sub_1004FD2AC()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002AC1CC;

  return sub_1004FD358();
}

uint64_t sub_1004FD358()
{
  v1[218] = v0;
  v2 = _s8MetadataO4ViewVMa(0);
  v1[219] = v2;
  v3 = *(v2 - 8);
  v1[220] = v3;
  v1[221] = *(v3 + 64);
  v1[222] = swift_task_alloc();
  sub_10010FC20(&unk_101181520);
  v1[223] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[224] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004FD48C, v5, v4);
}

uint64_t sub_1004FD48C()
{
  v100 = v0;
  v1 = v0 + 152;
  v2 = *(v0 + 1752);
  v3 = *(v0 + 1744);

  v4 = (v3 + *(v2 + 36));
  v6 = *v4;
  v5 = v4[1];
  *(v0 + 1672) = v6;
  *(v0 + 1680) = v5;
  sub_10010FC20(&qword_1011935B8);
  State.wrappedValue.getter();
  v7 = *(v0 + 1720);
  v92 = v7;
  v8 = swift_allocObject();
  sub_10010FC20(&qword_101191F70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBC6B0;
  static PlaylistCovers.CarouselItem.picker.getter((v0 + 424));
  v10 = *(v0 + 536);
  *(v9 + 128) = *(v0 + 520);
  *(v9 + 144) = v10;
  *(v9 + 160) = *(v0 + 552);
  v11 = *(v0 + 472);
  *(v9 + 64) = *(v0 + 456);
  *(v9 + 80) = v11;
  v12 = *(v0 + 504);
  *(v9 + 96) = *(v0 + 488);
  *(v9 + 112) = v12;
  v13 = *(v0 + 440);
  *(v9 + 32) = *(v0 + 424);
  *(v9 + 48) = v13;
  *(v8 + 16) = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = *(v0 + 624);
  v14 = *(v0 + 640);
  *(v0 + 232) = v14;
  v17 = *(v0 + 560);
  v16 = *(v0 + 576);
  *(v0 + 168) = v16;
  v18 = *(v0 + 656);
  v19 = *(v0 + 672);
  *(v0 + 248) = v18;
  *(v0 + 264) = v19;
  v20 = *(v0 + 688);
  *(v0 + 280) = v20;
  v21 = *(v0 + 592);
  v22 = *(v0 + 608);
  *(v0 + 184) = v21;
  *(v0 + 200) = v22;
  *(v0 + 216) = v15;
  *(v0 + 152) = v17;
  *(v0 + 112) = v18;
  *(v0 + 128) = v19;
  *(v0 + 144) = v20;
  *(v0 + 48) = v21;
  *(v0 + 64) = v22;
  *(v0 + 80) = v15;
  *(v0 + 96) = v14;
  *(v0 + 16) = v17;
  *(v0 + 32) = v16;
  if (sub_1000D8FCC((v0 + 16)) == 1)
  {
    v91 = v7;
    goto LABEL_23;
  }

  v23 = *(v0 + 128);
  *(v0 + 384) = *(v0 + 112);
  *(v0 + 400) = v23;
  *(v0 + 416) = *(v0 + 144);
  v24 = *(v0 + 64);
  *(v0 + 320) = *(v0 + 48);
  *(v0 + 336) = v24;
  v25 = *(v0 + 96);
  *(v0 + 352) = *(v0 + 80);
  *(v0 + 368) = v25;
  v26 = *(v0 + 32);
  *(v0 + 288) = *(v0 + 16);
  *(v0 + 304) = v26;
  PlaylistCovers.CarouselItem.cover.getter((v0 + 1080));
  v27 = *(v0 + 1160);
  *(v0 + 1016) = *(v0 + 1144);
  *(v0 + 1032) = v27;
  v28 = *(v0 + 1192);
  *(v0 + 1048) = *(v0 + 1176);
  *(v0 + 1064) = v28;
  v29 = *(v0 + 1096);
  *(v0 + 952) = *(v0 + 1080);
  *(v0 + 968) = v29;
  v30 = *(v0 + 1128);
  *(v0 + 984) = *(v0 + 1112);
  *(v0 + 1000) = v30;
  if (sub_1000D8FA0((v0 + 952)) != 1)
  {
    v31 = *(v0 + 992);
    *(v0 + 1504) = *(v0 + 976);
    *(v0 + 1520) = v31;
    *(v0 + 1536) = *(v0 + 1008);
    *(v0 + 1552) = *(v0 + 1024);
    sub_1000089F8(v0 + 1504, v0 + 1560, &qword_1011935A8);
    sub_1000095E8(v0 + 1080, &unk_1011842B8);
    v32 = *(v0 + 1512);
    if (v32)
    {
      v33 = *(v0 + 1504);
      v34 = *(v0 + 1520);
      v35 = *(v0 + 1528);
      v36 = *(v0 + 1536);
      v37 = *(v0 + 1544);
      v38 = *(v0 + 1552);
      *(v0 + 1336) = v33;
      *(v0 + 1344) = v32;
      v89 = v35;
      v90 = v34;
      *(v0 + 1352) = v34;
      *(v0 + 1360) = v35;
      v87 = v37;
      v88 = v36;
      *(v0 + 1368) = v36;
      *(v0 + 1376) = v37;
      v86 = v38;
      *(v0 + 1384) = v38;
      v39 = *(v7 + 2);
      if (v39)
      {
        v85 = v33;
        v9 = 0;
        v40 = 32;
        while (v9 < *(v7 + 2))
        {
          v41 = *&v7[v40];
          v42 = *&v7[v40 + 16];
          v43 = *&v7[v40 + 32];
          *(v0 + 1440) = *&v7[v40 + 48];
          *(v0 + 1408) = v42;
          *(v0 + 1424) = v43;
          *(v0 + 1392) = v41;
          sub_100501434(v0 + 1392, v0 + 1616);
          v44 = static PlaylistCovers.Cover.Representation.== infix(_:_:)(v0 + 1392, v0 + 1336);
          sub_100501490(v0 + 1392);
          if (v44)
          {
            sub_1004F4150(v9, v93);
            v63 = v95;
            v64 = v96;
            v65 = v97;
            v66 = v98;
            v67 = v99;

            v7 = v92;
LABEL_17:
            v1 = v0 + 152;
            v33 = v85;
            goto LABEL_18;
          }

          ++v9;
          v40 += 56;
          if (v39 == v9)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_29;
      }

LABEL_18:
      v68 = *(v7 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v68 >= *(v7 + 3) >> 1)
      {
        v7 = sub_10049A77C(isUniquelyReferenced_nonNull_native, v68 + 1, 1, v7);
      }

      v91 = v7;
      *(v0 + 1448) = v33;
      *(v0 + 1456) = v32;
      *(v0 + 1464) = v90;
      *(v0 + 1472) = v89;
      *(v0 + 1480) = v88;
      *(v0 + 1488) = v87;
      *(v0 + 1496) = v86;
      sub_1003BE608(0, 0, 1, v0 + 1448);
      sub_1000095E8(v0 + 1504, &qword_1011935A8);
LABEL_22:
      sub_1000095E8(v1, &qword_1011842B0);
      goto LABEL_23;
    }
  }

  v45 = *(v0 + 96);
  *(v0 + 888) = *(v0 + 80);
  *(v0 + 904) = v45;
  v46 = *(v0 + 128);
  *(v0 + 920) = *(v0 + 112);
  *(v0 + 936) = v46;
  v47 = *(v0 + 32);
  *(v0 + 824) = *(v0 + 16);
  *(v0 + 840) = v47;
  v48 = *(v0 + 64);
  *(v0 + 856) = *(v0 + 48);
  *(v0 + 872) = v48;
  sub_10001DBDC((v0 + 1208));
  v49 = *(v0 + 1288);
  *(v0 + 760) = *(v0 + 1272);
  *(v0 + 776) = v49;
  v50 = *(v0 + 1320);
  *(v0 + 792) = *(v0 + 1304);
  *(v0 + 808) = v50;
  v51 = *(v0 + 1224);
  *(v0 + 696) = *(v0 + 1208);
  *(v0 + 712) = v51;
  v52 = *(v0 + 1256);
  *(v0 + 728) = *(v0 + 1240);
  *(v0 + 744) = v52;
  v91 = v7;
  if (static PlaylistCovers.CarouselItem.CarouselItemType.__derived_enum_equals(_:_:)((v0 + 824), (v0 + 696)))
  {
    goto LABEL_22;
  }

  v53 = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 16) = v9;
  if ((v53 & 1) == 0)
  {
LABEL_29:
    v9 = sub_10049A65C(0, *(v9 + 16) + 1, 1, v9);
    *(v8 + 16) = v9;
  }

  v55 = *(v9 + 16);
  v54 = *(v9 + 24);
  if (v55 >= v54 >> 1)
  {
    v9 = sub_10049A65C((v54 > 1), v55 + 1, 1, v9);
  }

  *(v9 + 16) = v55 + 1;
  v56 = v9 + 136 * v55;
  *(v56 + 32) = *(v0 + 288);
  v57 = *(v0 + 304);
  v58 = *(v0 + 320);
  v59 = *(v0 + 352);
  *(v56 + 80) = *(v0 + 336);
  *(v56 + 96) = v59;
  *(v56 + 48) = v57;
  *(v56 + 64) = v58;
  v60 = *(v0 + 368);
  v61 = *(v0 + 384);
  v62 = *(v0 + 400);
  *(v56 + 160) = *(v0 + 416);
  *(v56 + 128) = v61;
  *(v56 + 144) = v62;
  *(v56 + 112) = v60;
  *(v8 + 16) = v9;
LABEL_23:
  v70 = v8;
  v71 = (*(v0 + 1744) + *(*(v0 + 1752) + 44));
  v72 = *v71;
  v73 = v71[1];
  *(v0 + 1688) = *v71;
  *(v0 + 1696) = v73;
  sub_10010FC20(&qword_1011935C0);
  State.wrappedValue.getter();
  if (*(v0 + 1728))
  {
    Task.cancel()();
  }

  v74 = *(v0 + 1784);
  v75 = *(v0 + 1776);
  v76 = *(v0 + 1768);
  v77 = *(v0 + 1760);
  v78 = *(v0 + 1744);
  static TaskPriority.userInitiated.getter();
  v79 = type metadata accessor for TaskPriority();
  (*(*(v79 - 8) + 56))(v74, 0, 1, v79);
  sub_100501D6C(v78, v75, _s8MetadataO4ViewVMa);
  v80 = (*(v77 + 80) + 40) & ~*(v77 + 80);
  v81 = swift_allocObject();
  v81[2] = 0;
  v81[3] = 0;
  v81[4] = v91;
  sub_100501D04(v75, v81 + v80, _s8MetadataO4ViewVMa);
  *(v81 + ((v76 + v80 + 7) & 0xFFFFFFFFFFFFFFF8)) = v70;

  v82 = sub_10035EB10(0, 0, v74, &unk_100ED0D40, v81);
  sub_1000095E8(v74, &unk_101181520);
  *(v0 + 1704) = v72;
  *(v0 + 1712) = v73;
  *(v0 + 1736) = v82;
  State.wrappedValue.setter();

  v83 = *(v0 + 8);

  return v83();
}

uint64_t sub_1004FDBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _s8MetadataO4ViewVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_100501D6C(a3, v7, _s8MetadataO4ViewVMa);
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_100501D04(v7, v14 + v13, _s8MetadataO4ViewVMa);
  sub_1001F4CB8(0, 0, v10, &unk_100ED0D18, v14);
}

uint64_t sub_1004FDDB4()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001AB600;

  return sub_1004FD358();
}

void sub_1004FDE60(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ScrollPosition();
  __chkstk_darwin(v5 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  if (v8 != v9)
  {
    v26[1] = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v107 = v49;
    v108 = v50;
    v109 = v51;
    v103 = v45;
    v104 = v46;
    v106 = v48;
    v105 = v47;
    v102 = v44;
    v101 = v43;
    v110[6] = v49;
    v110[7] = v50;
    v111 = v51;
    v110[2] = v45;
    v110[3] = v46;
    v110[5] = v48;
    v110[4] = v47;
    v110[1] = v44;
    v110[0] = v43;
    if (sub_1000D8FCC(v110) == 1)
    {
      v10 = 1;
      goto LABEL_10;
    }

    v98 = v107;
    v99 = v108;
    v94 = v103;
    v95 = v104;
    v97 = v106;
    v96 = v105;
    v93 = v102;
    v92 = v101;
    v60[3] = v105;
    v61 = v106;
    v62 = v107;
    v63 = v108;
    v59 = v101;
    v60[0] = v102;
    v100 = v109;
    v60[1] = v103;
    v60[2] = v104;
    UIScreen.Dimensions.size.getter(*&v101);
    sub_10001DBDC(&v65);
    v78 = v69;
    v79 = v70;
    v80 = v71;
    v81 = v72;
    v74 = v65;
    v75 = v66;
    v76 = v67;
    v77 = v68;
    UIScreen.Dimensions.size.getter(*&v67);
    v47 = v60[3];
    v48 = v61;
    v49 = v62;
    v50 = v63;
    v43 = v59;
    v44 = v60[0];
    v45 = v60[1];
    v46 = v60[2];
    v53 = v76;
    v54 = v77;
    v51 = v74;
    v52 = v75;
    v57 = v80;
    v58 = v81;
    v55 = v78;
    v56 = v79;
    v85 = v60[1];
    v86 = v60[2];
    v83 = v59;
    v84 = v60[0];
    v90 = v63;
    v89 = v62;
    v88 = v61;
    v87 = v60[3];
    if (sub_1000D8FCC(&v83) == 1)
    {
      v31 = v55;
      v32 = v56;
      v33 = v57;
      v34 = v58;
      v27 = v51;
      v28 = v52;
      v29 = v53;
      v30 = v54;
      if (sub_1000D8FCC(&v27) == 1)
      {
        v135 = v47;
        v136 = v48;
        v137 = v49;
        v138 = v50;
        v131 = v43;
        v132 = v44;
        v133 = v45;
        v134 = v46;
        sub_100501164(&v92, v130);
        sub_1000095E8(&v131, &qword_1011935B0);
        v10 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      v31 = v55;
      v32 = v56;
      v33 = v57;
      v34 = v58;
      v27 = v51;
      v28 = v52;
      v29 = v53;
      v30 = v54;
      if (sub_1000D8FCC(&v27) != 1)
      {
        v116 = v55;
        v117 = v56;
        v118 = v57;
        v119 = v58;
        v112 = v51;
        v113 = v52;
        v114 = v53;
        v115 = v54;
        v133 = v53;
        v134 = v54;
        v131 = v51;
        v132 = v52;
        v137 = v57;
        v138 = v58;
        v135 = v55;
        v136 = v56;
        v130[3] = v46;
        v130[2] = v45;
        v130[1] = v44;
        v130[0] = v43;
        v130[7] = v50;
        v130[6] = v49;
        v130[5] = v48;
        v130[4] = v47;
        sub_100501164(&v92, &v120);
        sub_100501164(&v92, &v120);
        v10 = static PlaylistCovers.CarouselItem.CarouselItemType.__derived_enum_equals(_:_:)(v130, &v131);
        sub_1000095E8(&v112, &qword_1011935B0);
        sub_1005011C0(&v92);
        v124 = v47;
        v125 = v48;
        v126 = v49;
        v127 = v50;
        v120 = v43;
        v121 = v44;
        v122 = v45;
        v123 = v46;
        sub_1000095E8(&v120, &qword_1011935B0);
LABEL_10:
        if (v8 - v9 >= 0)
        {
          v11 = v8 - v9;
        }

        else
        {
          v11 = v9 - v8;
        }

        if (v11 == 1 && ((v12 = static PlaylistCovers.Expression.allCases.getter()[2], , v9 >= v8) ? (v13 = v8) : (v13 = v9), v13 == v12 + 1))
        {
          if ((v10 & 1) == 0)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            v89 = v49;
            v90 = v50;
            v91 = v51;
            v85 = v45;
            v86 = v46;
            v88 = v48;
            v87 = v47;
            v83 = v43;
            v84 = v44;
            v98 = v49;
            v99 = v50;
            v100 = v51;
            v94 = v45;
            v95 = v46;
            v97 = v48;
            v96 = v47;
            v93 = v44;
            v92 = v43;
            if (sub_1000D8FCC(&v92) != 1)
            {
              v26[0] = v2;
              v49 = v89;
              v50 = v90;
              *&v51 = v91;
              v45 = v85;
              v46 = v86;
              v47 = v87;
              v48 = v88;
              v43 = v83;
              v44 = v84;
              PlaylistCovers.CarouselItem.cover.getter(&v112);
              sub_1000095E8(&v83, &qword_1011842B0);
              v69 = v116;
              v70 = v117;
              v71 = v118;
              v72 = v119;
              v65 = v112;
              v66 = v113;
              v67 = v114;
              v68 = v115;
              if (sub_1000D8FA0(&v65) != 1)
              {
                if (!v67)
                {
                  sub_1000095E8(&v101, &qword_1011842B0);
LABEL_44:
                  v16 = &unk_1011842B8;
                  v17 = &v112;
                  goto LABEL_40;
                }

                v14 = a2 + 32;
                v15 = BYTE8(v66);
                do
                {
                  v19 = *(v14 + 112);
                  v33 = *(v14 + 96);
                  v34 = v19;
                  *&v35 = *(v14 + 128);
                  v20 = *(v14 + 48);
                  v29 = *(v14 + 32);
                  v30 = v20;
                  v21 = *(v14 + 80);
                  v31 = *(v14 + 64);
                  v32 = v21;
                  v22 = *(v14 + 16);
                  v27 = *v14;
                  v28 = v22;
                  PlaylistCovers.CarouselItem.cover.getter(&v120);
                  v60[3] = v124;
                  v61 = v125;
                  v62 = v126;
                  v63 = v127;
                  v59 = v120;
                  v60[0] = v121;
                  v60[1] = v122;
                  v60[2] = v123;
                  if (sub_1000D8FA0(&v59) != 1)
                  {
                    v128[0] = *(v60 + 8);
                    v128[1] = *(&v60[1] + 8);
                    v128[2] = *(&v60[2] + 8);
                    v129 = *(&v60[3] + 1);
                    sub_100500E4C(&v27, &v74);
                    sub_1000089F8(v128, &v74, &qword_1011935A8);
                    sub_1000095E8(&v120, &unk_1011842B8);
                    if (*(&v128[0] + 1))
                    {
                      v23 = v128[0];
                      sub_1000095E8(v128, &qword_1011935A8);
                      if (v23 == v15)
                      {
                        *&v74 = PlaylistCovers.CarouselItem.id.getter();
                        *(&v74 + 1) = v24;
                        _s8MetadataO4ViewVMa(0);
                        sub_10010FC20(&qword_1011933C0);
                        State.wrappedValue.getter();
                        ScrollPosition.scrollTo<A>(id:anchor:)();

                        State.wrappedValue.setter();
                        sub_1000095E8(&v101, &qword_1011842B0);
                        sub_100500EA8(&v27);
                        goto LABEL_44;
                      }
                    }

                    sub_100500EA8(&v27);
                  }

                  v14 += 136;
                  --v9;
                }

                while (v9);
                sub_1000095E8(&v112, &unk_1011842B8);
              }
            }

            goto LABEL_30;
          }
        }

        else if ((v10 & 1) == 0)
        {
          goto LABEL_26;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v43)
        {

          Array.subscript.getter(&type metadata for PlaylistCovers.CarouselItem, &v83);
          v98 = v89;
          v99 = v90;
          v94 = v85;
          v95 = v86;
          v97 = v88;
          v96 = v87;
          v93 = v84;
          v92 = v83;
          v33 = v89;
          v34 = v90;
          v29 = v85;
          v30 = v86;
          v31 = v87;
          v32 = v88;
          v100 = v91;
          *&v35 = v91;
          v27 = v83;
          v28 = v84;
          if (sub_1000D8FCC(&v27) != 1)
          {
            v49 = v33;
            v50 = v34;
            *&v51 = v35;
            v45 = v29;
            v46 = v30;
            v47 = v31;
            v48 = v32;
            v43 = v27;
            v44 = v28;
            *&v83 = PlaylistCovers.CarouselItem.id.getter();
            *(&v83 + 1) = v25;
            _s8MetadataO4ViewVMa(0);
            sub_10010FC20(&qword_1011933C0);
            State.wrappedValue.getter();
            ScrollPosition.scrollTo<A>(id:anchor:)();

            State.wrappedValue.setter();
            sub_1000095E8(&v101, &qword_1011842B0);
            v17 = &v92;
            goto LABEL_39;
          }
        }

LABEL_26:
        Array.subscript.getter(&type metadata for PlaylistCovers.CarouselItem, &v74);
        v98 = v80;
        v99 = v81;
        v94 = v76;
        v95 = v77;
        v97 = v79;
        v96 = v78;
        v93 = v75;
        v92 = v74;
        v33 = v80;
        v34 = v81;
        v29 = v76;
        v30 = v77;
        v31 = v78;
        v32 = v79;
        v100 = v82;
        *&v35 = v82;
        v27 = v74;
        v28 = v75;
        if (sub_1000D8FCC(&v27) == 1)
        {
          Array.subscript.getter(&type metadata for PlaylistCovers.CarouselItem, &v83);
        }

        else
        {
          v89 = v98;
          v90 = v99;
          v91 = v100;
          v85 = v94;
          v86 = v95;
          v88 = v97;
          v87 = v96;
          v83 = v92;
          v84 = v93;
        }

        v62 = v89;
        v63 = v90;
        v60[1] = v85;
        v60[2] = v86;
        v60[3] = v87;
        v61 = v88;
        v59 = v83;
        v60[0] = v84;
        v71 = v89;
        v72 = v90;
        v67 = v85;
        v68 = v86;
        v69 = v87;
        v70 = v88;
        v64 = v91;
        v73 = v91;
        v65 = v83;
        v66 = v84;
        if (sub_1000D8FCC(&v65) == 1)
        {
LABEL_30:
          v16 = &qword_1011842B0;
          v17 = &v101;
LABEL_40:
          sub_1000095E8(v17, v16);
          return;
        }

        v49 = v71;
        v50 = v72;
        *&v51 = v73;
        v45 = v67;
        v46 = v68;
        v47 = v69;
        v48 = v70;
        v43 = v65;
        v44 = v66;
        *&v120 = PlaylistCovers.CarouselItem.id.getter();
        *(&v120 + 1) = v18;
        _s8MetadataO4ViewVMa(0);
        sub_10010FC20(&qword_1011933C0);
        State.wrappedValue.getter();
        ScrollPosition.scrollTo<A>(id:anchor:)();

        State.wrappedValue.setter();
        sub_1000095E8(&v101, &qword_1011842B0);
        v17 = &v59;
LABEL_39:
        v16 = &qword_1011842B0;
        goto LABEL_40;
      }
    }

    v39 = v55;
    v40 = v56;
    v41 = v57;
    v42 = v58;
    v35 = v51;
    v36 = v52;
    v37 = v53;
    v38 = v54;
    v31 = v47;
    v32 = v48;
    v33 = v49;
    v34 = v50;
    v27 = v43;
    v28 = v44;
    v29 = v45;
    v30 = v46;
    sub_100501164(&v92, &v131);
    sub_1000095E8(&v27, &unk_10119EFE0);
    v10 = 0;
    goto LABEL_10;
  }
}

uint64_t sub_1004FEAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ScrollPosition.viewID<A>(type:)();
  v4 = v51[0];
  v5 = (a3 + *(_s8MetadataO4ViewVMa(0) + 40));
  v7 = *v5;
  v6 = v5[1];
  *&v51[0] = v7;
  *(&v51[0] + 1) = v6;

  sub_10010FC20(&qword_101193578);
  result = State.wrappedValue.getter();
  v9 = v42;
  v10 = *(v42 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = 32;
    while (v11 < *(v9 + 16))
    {
      v51[0] = *(v9 + v12);
      v13 = *(v9 + v12 + 16);
      v14 = *(v9 + v12 + 32);
      v15 = *(v9 + v12 + 64);
      v51[3] = *(v9 + v12 + 48);
      v51[4] = v15;
      v51[1] = v13;
      v51[2] = v14;
      v16 = *(v9 + v12 + 80);
      v17 = *(v9 + v12 + 96);
      v18 = *(v9 + v12 + 112);
      v52 = *(v9 + v12 + 128);
      v51[6] = v17;
      v51[7] = v18;
      v51[5] = v16;
      v38 = *(v9 + v12 + 80);
      v39 = *(v9 + v12 + 96);
      v40 = *(v9 + v12 + 112);
      v41 = *(v9 + v12 + 128);
      v34 = *(v9 + v12 + 16);
      v35 = *(v9 + v12 + 32);
      v36 = *(v9 + v12 + 48);
      v37 = *(v9 + v12 + 64);
      v33 = *(v9 + v12);
      sub_100500E4C(v51, &v24);
      v19 = PlaylistCovers.CarouselItem.id.getter();
      v21 = v20;
      if (*(&v4 + 1))
      {
        v22 = v19;
        v30 = v39;
        v31 = v40;
        v32 = v41;
        v26 = v35;
        v27 = v36;
        v28 = v37;
        v29 = v38;
        v24 = v33;
        v25 = v34;
        UIScreen.Dimensions.size.getter(*&v34);
        if (v4 == __PAIR128__(v21, v22))
        {

LABEL_13:

          v48 = v30;
          v49 = v31;
          v50 = v32;
          v44 = v26;
          v45 = v27;
          v46 = v28;
          v47 = v29;
          v42 = v24;
          v43 = v25;
          goto LABEL_14;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_13;
        }

        result = sub_100500EA8(v51);
      }

      else
      {
        sub_100500EA8(v51);
      }

      ++v11;
      v12 += 136;
      if (v10 == v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    sub_100501134(&v42);
LABEL_14:
    swift_getKeyPath();
    swift_getKeyPath();
    v39 = v48;
    v40 = v49;
    v41 = v50;
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v38 = v47;
    v33 = v42;
    v34 = v43;
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_1004FED90()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1004FEEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = *(_s8MetadataO4ViewVMa(0) - 8);
  v6[7] = v7;
  v6[8] = *(v7 + 64);
  v6[9] = swift_task_alloc();
  sub_10010FC20(&unk_101181520);
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_1004FEFE0, 0, 0);
}

uint64_t sub_1004FEFE0()
{
  *(v0 + 88) = type metadata accessor for MainActor();
  *(v0 + 96) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004FF078, v2, v1);
}

uint64_t sub_1004FF078()
{
  v1 = *(v0 + 40);

  *(v0 + 104) = *(v1 + 8);

  return _swift_task_switch(sub_1004FF0EC, 0, 0);
}

uint64_t sub_1004FF0EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v0[2];
  v1 = v0[3];
  v0[14] = v1;
  v3 = PlaylistCovers.Specs.coverSize.unsafeMutableAddressor();
  v4 = *v3;
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_1004FF1FC;
  v7 = v0[4];

  return static PlaylistCovers.carouselItems(from:playlistTitle:size:)(v7, v2, v1, v4, v5);
}

uint64_t sub_1004FF1FC(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_1004FF31C, 0, 0);
}

uint64_t sub_1004FF31C()
{
  v1 = static Task<>.isCancelled.getter();
  v2 = v0[16];
  if (v1)
  {
  }

  else
  {
    v3 = v0[10];
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[6];
    v7 = v0[7];
    v8 = v0[5];
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    sub_100501D6C(v8, v4, _s8MetadataO4ViewVMa);

    v10 = static MainActor.shared.getter();
    v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = &protocol witness table for MainActor;
    sub_100501D04(v4, v13 + v11, _s8MetadataO4ViewVMa);
    *(v13 + v12) = v6;
    *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v2;
    sub_1001F4CB8(0, 0, v3, &unk_100ED0D50, v13);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1004FF4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  type metadata accessor for MainActor();
  v6[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004FF570, v8, v7);
}

uint64_t sub_1004FF570()
{
  v2 = v0[8];
  v1 = v0[9];

  swift_beginAccess();
  v9 = *(v1 + 16);

  sub_1001257F0(v3);
  v4 = (v2 + *(_s8MetadataO4ViewVMa(0) + 40));
  v6 = *v4;
  v5 = v4[1];
  v0[5] = v6;
  v0[6] = v5;
  v0[7] = v9;
  sub_10010FC20(&qword_101193578);
  State.wrappedValue.setter();
  v7 = v0[1];

  return v7();
}

void sub_1004FF660()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 20.0;
  if (v1 == 6)
  {
    v2 = 0.0;
  }

  qword_101192E50 = *&v2;
}

double sub_1004FF6CC()
{
  if (qword_10117F8B8 != -1)
  {
    swift_once();
  }

  result = *&xmmword_101219030;
  xmmword_101192E58 = xmmword_101219030;
  return result;
}

void sub_1004FF72C()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 16.0;
  if (v1 == 6)
  {
    v2 = 20.0;
  }

  qword_101192E68 = *&v2;
}

void sub_1004FF798()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 25.0;
  if (v1 == 6)
  {
    v2 = 20.0;
  }

  qword_101192E70 = *&v2;
}

double sub_1004FF804()
{
  if (qword_10117F7E0 != -1)
  {
    swift_once();
  }

  v0 = *&qword_101192E50;
  if (qword_10117F7E8 != -1)
  {
    swift_once();
  }

  v1 = *(&xmmword_101192E58 + 1);
  if (qword_10117F7F8 != -1)
  {
    swift_once();
  }

  result = v0 + v1 + *&qword_101192E70 + 8.0;
  *&qword_101218EC8 = result;
  return result;
}

unint64_t sub_1004FF8E8()
{
  result = qword_1011934D0;
  if (!qword_1011934D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011934D0);
  }

  return result;
}

unint64_t sub_1004FF944()
{
  result = qword_101193528;
  if (!qword_101193528)
  {
    sub_1001109D0(&qword_101193520);
    sub_100020674(&qword_101193530, &qword_101193538);
    sub_100020674(&qword_101185BF0, &qword_101185BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193528);
  }

  return result;
}

void sub_1004FFA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v4 = sub_10010FC20(&qword_101193768);
  v5 = *(v4 - 8);
  v27 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v25 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v28 = *(v5 + 16);
  v28(v7, a1, v4);
  v12 = *(v5 + 80);
  v13 = swift_allocObject();
  v26 = *(v5 + 32);
  v26(v13 + ((v12 + 16) & ~v12), v7, v4);
  v14 = String._bridgeToObjectiveC()();

  v36 = sub_1005023C0;
  v37 = v13;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10027D328;
  v35 = &unk_1010B00B0;
  v15 = _Block_copy(&aBlock);

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v14 style:1 handler:v15];
  _Block_release(v15);

  v18 = v25;
  [v25 addAction:v17];

  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v30;
  static Published.subscript.getter();

  v28(v7, v29, v4);
  v20 = (v12 + 24) & ~v12;
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v26(v21 + v20, v7, v4);

  v22 = String._bridgeToObjectiveC()();

  v36 = sub_100502458;
  v37 = v21;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10027D328;
  v35 = &unk_1010B0100;
  v23 = _Block_copy(&aBlock);

  v24 = [v16 actionWithTitle:v22 style:0 handler:v23];
  _Block_release(v23);

  [v18 addAction:v24];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v18, 1, 1, 0, 0);
}

uint64_t sub_1004FFF60()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_10010FC20(&qword_101193768);
  return CheckedContinuation.resume(returning:)();
}

double sub_100500034@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1005000B4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100500160()
{
  _s8MetadataO4ViewVMa(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1004FBAA8();
}

uint64_t sub_100500268@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1005002F8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100500384@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100500414()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1005004E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = sub_10010FC20(a5);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v14 - v11;
  sub_1000089F8(a1, &v14 - v11, a5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v12, v10, a5);

  static Published.subscript.setter();
  return sub_1000095E8(v12, a5);
}

uint64_t sub_10050060C()
{
  v1 = (_s8MetadataO4ViewVMa(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[9];
  v4 = type metadata accessor for ScrollPosition();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_10010FC20(&qword_1011933C0);

  return swift_deallocObject();
}

unint64_t sub_1005007A0()
{
  result = qword_101193548;
  if (!qword_101193548)
  {
    sub_1001109D0(&qword_1011934E0);
    sub_1001109D0(&qword_1011934D8);
    sub_100020674(&qword_101193540, &qword_1011934D8);
    swift_getOpaqueTypeConformance2();
    sub_1005008CC(&qword_101193550, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193548);
  }

  return result;
}

uint64_t sub_1005008CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100500914()
{
  result = qword_101193558;
  if (!qword_101193558)
  {
    sub_1001109D0(&qword_101184230);
    sub_1005008CC(&qword_101193560, type metadata accessor for PlaylistCovers.Source);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193558);
  }

  return result;
}

uint64_t sub_1005009C8(uint64_t a1, uint64_t a2)
{
  v5 = *(_s8MetadataO4ViewVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1004FD054(a1, a2, v6);
}

uint64_t sub_100500A48(uint64_t a1, uint64_t a2)
{
  v5 = *(_s8MetadataO4ViewVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1004FDBD4(a1, a2, v6);
}

uint64_t sub_100500AC8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    sub_100500B30();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100500B30()
{
  result = qword_101193570;
  if (!qword_101193570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193570);
  }

  return result;
}

uint64_t sub_100500C10(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(_s8MetadataO4ViewVMa(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_100500CBC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_101192F78);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100500D34()
{
  result = qword_1011935A0;
  if (!qword_1011935A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011935A0);
  }

  return result;
}

uint64_t sub_100500DA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(_s8MetadataO4ViewVMa(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

double sub_100500F70@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v9;
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_100501050(__int128 *a1)
{
  v2 = a1[7];
  v21[6] = a1[6];
  v21[7] = v2;
  v22 = *(a1 + 16);
  v3 = a1[3];
  v21[2] = a1[2];
  v21[3] = v3;
  v4 = a1[5];
  v21[4] = a1[4];
  v21[5] = v4;
  v5 = a1[1];
  v21[0] = *a1;
  v21[1] = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[7];
  v18 = a1[6];
  v19 = v6;
  v20 = *(a1 + 16);
  v7 = a1[3];
  v14 = a1[2];
  v15 = v7;
  v8 = a1[5];
  v16 = a1[4];
  v17 = v8;
  v9 = a1[1];
  v12 = *a1;
  v13 = v9;

  sub_1000089F8(v21, v11, &qword_1011842B0);
  return static Published.subscript.setter();
}

double sub_100501134(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

uint64_t sub_100501214()
{
  _s8MetadataO4ViewVMa(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1004FDDB4();
}

uint64_t sub_100501304(uint64_t a1)
{
  v4 = *(_s8MetadataO4ViewVMa(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F3F4;

  return sub_1004FEEE0(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100501584(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_1005015FC(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for UserInterfaceSizeClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  v12 = [objc_opt_self() currentTraitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 6)
  {
    return 0x4038000000000000;
  }

  sub_1000089F8(a1, v4, &unk_101184290);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &unk_101184290);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 104))(v8, enum case for UserInterfaceSizeClass.regular(_:), v5);
    v15 = static UserInterfaceSizeClass.== infix(_:_:)();
    v16 = *(v6 + 8);
    v16(v8, v5);
    v16(v11, v5);
    if (v15)
    {
      return 0x4044000000000000;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100501868(uint64_t a1)
{
  v4 = *(_s8MetadataO4ViewVMa(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100008F30;

  return sub_1004FF4D4(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_1005019A0()
{
  v1 = (_s8MetadataO4ViewVMa(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[9];
  v4 = type metadata accessor for ScrollPosition();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_10010FC20(&qword_1011933C0);

  return swift_deallocObject();
}

uint64_t sub_100501B24()
{
  _s8MetadataO4ViewVMa(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1004FD2AC();
}

uint64_t sub_100501C14()
{
  _s8MetadataO4ViewVMa(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1004FCFA8();
}

uint64_t sub_100501D04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100501D6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100501DD4()
{
  result = qword_1011951F0;
  if (!qword_1011951F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011951F0);
  }

  return result;
}

unint64_t sub_100501E20()
{
  result = qword_101193638;
  if (!qword_101193638)
  {
    sub_1001109D0(&qword_101193608);
    sub_1001109D0(&unk_10119F190);
    sub_1001109D0(&unk_1011A1400);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193638);
  }

  return result;
}

uint64_t sub_100501F44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_100501FA4@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s8MetadataO4ViewVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1004F9744(a1, v6, a2);
}

unint64_t sub_100502024()
{
  result = qword_101193648;
  if (!qword_101193648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193648);
  }

  return result;
}

unint64_t sub_100502078()
{
  result = qword_101193650;
  if (!qword_101193650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193650);
  }

  return result;
}

unint64_t sub_1005020CC()
{
  result = qword_101193658;
  if (!qword_101193658)
  {
    sub_1001109D0(&qword_101193640);
    sub_100502158();
    sub_1005021AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193658);
  }

  return result;
}

unint64_t sub_100502158()
{
  result = qword_101193660;
  if (!qword_101193660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193660);
  }

  return result;
}

unint64_t sub_1005021AC()
{
  result = qword_101193668;
  if (!qword_101193668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193668);
  }

  return result;
}

uint64_t sub_100502270(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101193670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1005022E0()
{
  result = qword_1011936C0;
  if (!qword_1011936C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011936C0);
  }

  return result;
}

unint64_t sub_100502334()
{
  result = qword_1011936D0;
  if (!qword_1011936D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011936D0);
  }

  return result;
}

double sub_100502390(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_1005023C0()
{
  sub_10010FC20(&qword_101193768);
  sub_10010FC20(&qword_101193768);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100502458()
{
  sub_10010FC20(&qword_101193768);

  return sub_1004FFF60();
}

uint64_t sub_1005024F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100502564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for Playlist();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = sub_10010FC20(&qword_101193868);
  v4[16] = swift_task_alloc();
  v4[17] = sub_10010FC20(&qword_101181BE8);
  v4[18] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_101181AC0);
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v7 = swift_task_alloc();
  v4[21] = v7;
  v4[22] = type metadata accessor for MainActor();
  v4[23] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v4[24] = v8;
  v9 = sub_10010FC20(&qword_101181AC8);
  *v8 = v4;
  v8[1] = sub_100502794;

  return MusicLibraryRequest.response()(v7, v9);
}

uint64_t sub_100502794()
{
  *(*v1 + 200) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100502DB0;
  }

  else
  {
    v4 = sub_1005028F0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1005028F0()
{
  v1 = v0[16];
  v2 = v0[15];

  MusicLibraryResponse.items.getter();
  sub_1005032B0(&qword_101193870);
  dispatch thunk of Sequence.makeIterator()();
  v3 = *(v2 + 36);
  sub_1005032B0(&unk_10118C130);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v1 + v3) == v0[7])
  {
    v36 = _swiftEmptyArrayStorage;
  }

  else
  {
    v9 = v0[12];
    v38 = (v9 + 16);
    v35 = (v9 + 32);
    v34 = v9;
    v36 = _swiftEmptyArrayStorage;
    v37 = (v9 + 8);
    v39 = v1;
    do
    {
      v12 = v0[14];
      v13 = dispatch thunk of Collection.subscript.read();
      (*v38)(v12);
      v13(v0 + 2, 0);
      dispatch thunk of Collection.formIndex(after:)();
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v14 = v0[8];
      v15 = Playlist.id.getter();
      v17 = v16;
      if (*(v14 + 16) && (v18 = v15, Hasher.init(_seed:)(), String.hash(into:)(), v19 = Hasher._finalize()(), v20 = -1 << *(v14 + 32), v21 = v19 & ~v20, ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v14 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        v26 = v0[13];
        v25 = v0[14];
        v27 = v0[11];

        v28 = *v35;
        (*v35)(v26, v25, v27);
        v29 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10066CBEC(0, v36[2] + 1, 1);
          v29 = v36;
        }

        v31 = v29[2];
        v30 = v29[3];
        if (v31 >= v30 >> 1)
        {
          sub_10066CBEC(v30 > 1, v31 + 1, 1);
          v29 = v36;
        }

        v32 = v0[13];
        v33 = v0[11];
        v29[2] = v31 + 1;
        v36 = v29;
        v28(v29 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v31, v32, v33);
      }

      else
      {
LABEL_7:
        v10 = v0[14];
        v11 = v0[11];

        (*v37)(v10, v11);
      }

      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v39 + v3) != v0[7]);
  }

  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  sub_100503300(v0[16]);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[9] = v36;

  static Published.subscript.setter();
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100502DB0()
{
  v14 = v0;

  if (qword_10117F1F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101218608);
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
    *v6 = 136315138;
    v0[6] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to load library playlists with error: %s.", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100502FBC()
{
  v1 = OBJC_IVAR____TtCO5Music14ClarityUIMusic16PlaylistsManager__playlists;
  v2 = sub_10010FC20(&qword_101193860);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCO5Music14ClarityUIMusic16PlaylistsManager_playlistsRequest;
  v4 = sub_10010FC20(&qword_101181AC8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t _s14descr101092F61V16PlaylistsManagerCMa()
{
  result = qword_1011937B0;
  if (!qword_1011937B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100503114()
{
  sub_1005031EC();
  if (v0 <= 0x3F)
  {
    sub_100503250();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1005031EC()
{
  if (!qword_1011937C0)
  {
    sub_1001109D0(&qword_1011937C8);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1011937C0);
    }
  }
}

void sub_100503250()
{
  if (!qword_1011937D0)
  {
    type metadata accessor for Playlist();
    v0 = type metadata accessor for MusicLibraryRequest();
    if (!v1)
    {
      atomic_store(v0, &qword_1011937D0);
    }
  }
}

uint64_t sub_1005032B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_101181BE8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100503300(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101193868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for WidgetDiskCache()
{
  result = qword_1011938D0;
  if (!qword_1011938D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005033DC()
{
  sub_100039B3C();
  if (v0 <= 0x3F)
  {
    sub_100027010();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Logger();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100503478()
{
  result = type metadata accessor for WidgetDiskCache();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10050352C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v15 = a1;
  v16 = a2;
  v14 = a3;
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v13 - 8);
  __chkstk_darwin(v13);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v12 = *(type metadata accessor for WidgetDiskCache() + 20);
  sub_100027010();
  static DispatchQoS.userInitiated.getter();
  v17 = &_swiftEmptyArrayStorage;
  sub_1005037C0();
  sub_10010FC20(&qword_101187218);
  sub_100503818();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = v14;
  *&v14[v12] = v8;
  static Logger.music(_:)();
  v10 = [objc_opt_self() defaultManager];
  sub_10050387C(v9);
}

unint64_t sub_1005037C0()
{
  result = qword_101187210;
  if (!qword_101187210)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101187210);
  }

  return result;
}

unint64_t sub_100503818()
{
  result = qword_101187220;
  if (!qword_101187220)
  {
    sub_1001109D0(&qword_101187218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101187220);
  }

  return result;
}

uint64_t sub_10050387C@<X0>(char *a1@<X8>)
{
  v2 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v22 = &v20 - v11;
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = objc_opt_self();
  v15 = [v14 defaultManager];
  NSFileManager.musicAppGroupCachesURL.getter(v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100028A38(v4);
    v16 = 1;
  }

  else
  {
    v21 = a1;
    v20 = *(v6 + 32);
    v20(v13, v4, v5);
    URL.appending(_:)();
    URL.appending(_:)();
    v17 = *(v6 + 8);
    v17(v9, v5);
    v18 = [v14 defaultManager];
    NSFileManager.createDirectoryIfNeeded(at:)();
    v17(v13, v5);

    a1 = v21;
    v20(v21, v22, v5);
    v16 = 0;
  }

  return (*(v6 + 56))(a1, v16, 1, v5);
}

BOOL sub_100503B90(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for IndexPath();
    ++v2;
    sub_100519250(&qword_101192840, &type metadata accessor for IndexPath);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_100503C9C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if (v5 > 5)
      {
        switch(v4)
        {
          case 6:
            if (a1 == 6)
            {
              return 1;
            }

            goto LABEL_4;
          case 7:
            if (a1 == 7)
            {
              return 1;
            }

            goto LABEL_4;
          case 8:
            if (a1 == 8)
            {
              return 1;
            }

            goto LABEL_4;
        }
      }

      else
      {
        switch(v4)
        {
          case 3:
            if (a1 == 3)
            {
              return 1;
            }

            goto LABEL_4;
          case 4:
            if (a1 == 4)
            {
              return 1;
            }

            goto LABEL_4;
          case 5:
            if (a1 == 5)
            {
              return 1;
            }

            goto LABEL_4;
        }
      }

      if (a1 - 9 <= 0xFFFFFFF9 && v4 == a1)
      {
        return 1;
      }

LABEL_4:
      --v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_100503D5C()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v46 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem;
  if ((v0[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem] & 1) == 0)
  {
    result = [v0 isViewLoaded];
    if (result)
    {
      v11 = &v0[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
      swift_beginAccess();
      v12 = *v11;
      v13 = *(v11 + 1);
      ObjectType = swift_getObjectType();
      v50 = v12;
      (*(v13 + 128))(ObjectType, v13);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        return sub_1000095E8(v4, &unk_10118BCE0);
      }

      (*(v6 + 32))(v9, v4, v5);
      v1[v10] = 1;
      v15 = sub_1006A6078();
      sub_10010FC20(&qword_10118AC80);
      v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100EBC6B0;
      (*(v6 + 16))(v17 + v16, v9, v5);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v15 reconfigureItemsAtIndexPaths:isa];

      v19 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView;
      v20 = [*&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView] indexPathsForVisibleItems];
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v20) = sub_100503B90(v9, v21);

      if ((v20 & 1) == 0)
      {
        goto LABEL_10;
      }

      v22 = *&v1[v19];
      v23 = IndexPath._bridgeToObjectiveC()().super.isa;
      v24 = [v22 cellForItemAtIndexPath:v23];

      if (!v24)
      {
        goto LABEL_10;
      }

      [v24 frame];
      v48 = v26;
      v49 = v25;
      v46 = v28;
      v47 = v27;
      [*&v1[v19] bounds];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      result = [v1 view];
      if (result)
      {
        v37 = result;
        [result directionalLayoutMargins];

        result = [v1 view];
        if (result)
        {
          v38 = result;
          [result effectiveUserInterfaceLayoutDirection];

          UIEdgeInsets.init(directionalEdgeInsets:layoutDirection:)();
          v52.origin.x = sub_100058728(v30, v32, v34, v36, v39, v40);
          v52.origin.y = v41;
          v52.size.width = v42;
          v52.size.height = v43;
          v51.origin.y = v48;
          v51.origin.x = v49;
          v51.size.height = v46;
          v51.size.width = v47;
          LODWORD(v38) = CGRectIntersectsRect(v51, v52);

          if (v38)
          {
            return (*(v6 + 8))(v9, v5);
          }

LABEL_10:
          v44 = *&v1[v19];
          v45 = IndexPath._bridgeToObjectiveC()().super.isa;
          [v44 scrollToItemAtIndexPath:v45 atScrollPosition:2 animated:1];

          return (*(v6 + 8))(v9, v5);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

void sub_10050423C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t *a4)
{
  v9 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v53 - v10;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  if (v4[v17] & 1) == 0 && ([v4 isViewLoaded])
  {
    v18 = *a2;
    swift_beginAccess();
    sub_1000089F8(&v4[v18], v11, &unk_10118BCE0);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1000095E8(v11, &unk_10118BCE0);
      return;
    }

    v19 = (*(v13 + 32))(v16, v11, v12);
    v4[v17] = 1;
    v20 = a3(v19);
    sub_10010FC20(&qword_10118AC80);
    v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100EBC6B0;
    (*(v13 + 16))(v22 + v21, v16, v12);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v20 reconfigureItemsAtIndexPaths:isa];

    v24 = *a4;
    v25 = [*&v4[*a4] indexPathsForVisibleItems];
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v25) = sub_100503B90(v16, v26);

    if ((v25 & 1) == 0)
    {
      goto LABEL_10;
    }

    v27 = *&v4[v24];
    v28 = IndexPath._bridgeToObjectiveC()().super.isa;
    v29 = [v27 cellForItemAtIndexPath:v28];

    if (!v29)
    {
      goto LABEL_10;
    }

    [v29 frame];
    v56 = v31;
    v57 = v30;
    v54 = v33;
    v55 = v32;
    [*&v4[v24] bounds];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = [v4 view];
    if (v42)
    {
      v43 = v42;
      [v42 directionalLayoutMargins];

      v44 = [v4 view];
      if (v44)
      {
        v45 = v44;
        [v44 effectiveUserInterfaceLayoutDirection];

        UIEdgeInsets.init(directionalEdgeInsets:layoutDirection:)();
        v59.origin.x = sub_100058728(v35, v37, v39, v41, v46, v47);
        v59.origin.y = v48;
        v59.size.width = v49;
        v59.size.height = v50;
        v58.origin.y = v56;
        v58.origin.x = v57;
        v58.size.height = v54;
        v58.size.width = v55;
        LODWORD(v45) = CGRectIntersectsRect(v58, v59);

        if (v45)
        {
LABEL_11:
          (*(v13 + 8))(v16, v12);
          return;
        }

LABEL_10:
        v51 = *&v4[v24];
        v52 = IndexPath._bridgeToObjectiveC()().super.isa;
        [v51 scrollToItemAtIndexPath:v52 atScrollPosition:2 animated:1];

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1005046D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v51 = a2;
  v2 = sub_10010FC20(&unk_1011913B8);
  v70 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v49 - v3;
  v78 = type metadata accessor for Playlist.Folder.Item();
  v74 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v64 = &v49 - v7;
  v8 = sub_10010FC20(&qword_101193C70);
  __chkstk_darwin(v8 - 8);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v72 = &v49 - v11;
  v73 = sub_10010FC20(&qword_1011828F0);
  v76 = *(v73 - 8);
  __chkstk_darwin(v73);
  v60 = &v49 - v12;
  v13 = sub_10010FC20(&unk_1011913D0);
  __chkstk_darwin(v13 - 8);
  v59 = &v49 - v14;
  v58 = sub_10010FC20(&qword_1011913C8);
  __chkstk_darwin(v58);
  v75 = &v49 - v15;
  v16 = sub_10010FC20(&unk_10118CEC0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v61 = &v49 - v18;
  v19 = sub_10010FC20(&qword_101193C78);
  __chkstk_darwin(v19 - 8);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = (&v49 - v23);
  sub_10010FC20(&qword_101193C80);
  v25 = MusicLibrarySectionedResponse.sections.getter();
  v57 = (v17 + 32);
  v56 = (v76 + 4);
  v63 = (v74 + 16);
  v76 = (v74 + 32);
  v26 = v70;
  v70 += 6;
  v71 = (v26 + 7);
  v68 = (v74 + 8);
  v53 = (v17 + 8);
  v79[5] = 0;
  v79[6] = 0;
  v79[4] = v25;
  v54 = v16;
  v50 = v21;
  v49 = v24;
  v62 = v4;
LABEL_2:
  sub_100507098(&qword_101193C88, &unk_10118CEC0, v21);
  sub_10003D17C(v21, v24, &qword_101193C78);
  v27 = sub_10010FC20(&qword_101193C88);
  if ((*(*(v27 - 8) + 48))(v24, 1, v27) == 1)
  {

    v48 = type metadata accessor for IndexPath();
    return (*(*(v48 - 8) + 56))(v51, 1, 1, v48);
  }

  v52 = *v24;
  (*v57)(v61, v24 + *(v27 + 48), v16);
  v28 = v59;
  MusicLibrarySection.items.getter();
  (*v56)(v60, v28, v73);
  sub_100020674(&unk_1011913E0, &qword_1011828F0);
  v29 = v75;
  dispatch thunk of Sequence.makeIterator()();
  v65 = *(v58 + 36);
  *(v29 + v65) = 0;
  v74 = *(sub_10010FC20(&unk_1011828E0) + 36);
  v30 = 0;
  v66 = sub_100020674(&qword_10118C1D0, &qword_1011828F0);
  v31 = v55;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*(v29 + v74) == v79[0])
    {
      (*v71)(v31, 1, 1, v2);
      goto LABEL_8;
    }

    v32 = dispatch thunk of Collection.subscript.read();
    v33 = v64;
    v34 = v78;
    (*v63)(v64);
    v32(v79, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v35 = *(v2 + 48);
    v36 = v62;
    *v62 = v30;
    result = (*v76)((v36 + v35), v33, v34);
    if (__OFADD__(v30++, 1))
    {
      break;
    }

    *(v29 + v65) = v30;
    sub_10003D17C(v36, v31, &unk_1011913B8);
    (*v71)(v31, 0, 1, v2);
LABEL_8:
    v39 = v72;
    sub_10003D17C(v31, v72, &qword_101193C70);
    if ((*v70)(v39, 1, v2) == 1)
    {
      sub_1000095E8(v29, &qword_1011913C8);
      v16 = v54;
      (*v53)(v61, v54);
      v21 = v50;
      v24 = v49;
      goto LABEL_2;
    }

    v67 = *v39;
    v40 = v2;
    (*v76)(v77, &v39[*(v2 + 48)], v78);
    sub_100519250(&unk_1011913F0, &type metadata accessor for Playlist.Folder.Item);
    v41 = dispatch thunk of MusicItem.id.getter();
    v43 = v42;
    if (v41 == dispatch thunk of MusicItem.id.getter() && v43 == v44)
    {

      v29 = v75;
LABEL_15:

      v46 = v51;
      IndexPath.init(item:section:)();
      (*v68)(v77, v78);
      sub_1000095E8(v29, &qword_1011913C8);
      (*v53)(v61, v54);
      v47 = type metadata accessor for IndexPath();
      return (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v29 = v75;
    if (v45)
    {
      goto LABEL_15;
    }

    (*v68)(v77, v78);
    v2 = v40;
  }

  __break(1u);
  return result;
}

uint64_t sub_100505184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v55 = a2;
  v2 = sub_10010FC20(&qword_101193AC8);
  v73 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v53 - v3;
  v80 = type metadata accessor for MusicVideo();
  v77 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v53 - v7;
  v8 = sub_10010FC20(&unk_101193AD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v75 = &v53 - v12;
  v76 = sub_10010FC20(&unk_101181600);
  v78 = *(v76 - 8);
  __chkstk_darwin(v76);
  v62 = &v53 - v13;
  v14 = sub_10010FC20(&qword_101193AE0);
  __chkstk_darwin(v14 - 8);
  v61 = &v53 - v15;
  v60 = sub_10010FC20(&qword_101193AE8);
  __chkstk_darwin(v60);
  v17 = &v53 - v16;
  v64 = sub_10010FC20(&qword_101193AF0);
  v18 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v53 - v19;
  v20 = sub_10010FC20(&qword_101193AF8);
  __chkstk_darwin(v20 - 8);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = (&v53 - v24);
  sub_10010FC20(&unk_101193AA0);
  v26 = MusicLibrarySectionedResponse.sections.getter();
  v59 = (v18 + 32);
  v58 = v78 + 4;
  v65 = (v77 + 16);
  v78 = (v77 + 32);
  v27 = v73;
  v73 += 6;
  v74 = (v27 + 7);
  v71 = (v77 + 8);
  v57 = (v18 + 8);
  v81[5] = 0;
  v81[6] = 0;
  v81[4] = v26;
  v54 = v22;
  v53 = v25;
LABEL_2:
  sub_100507098(&unk_101193B00, &qword_101193AF0, v22);
  sub_10003D17C(v22, v25, &qword_101193AF8);
  v28 = sub_10010FC20(&unk_101193B00);
  if ((*(*(v28 - 8) + 48))(v25, 1, v28) == 1)
  {

    v52 = type metadata accessor for IndexPath();
    return (*(*(v52 - 8) + 56))(v55, 1, 1, v52);
  }

  v56 = *v25;
  (*v59)(v63, v25 + *(v28 + 48), v64);
  v29 = v61;
  MusicLibrarySection.items.getter();
  (*v58)(v62, v29, v76);
  sub_100020674(&unk_101181610, &unk_101181600);
  dispatch thunk of Sequence.makeIterator()();
  v67 = *(v60 + 36);
  *&v17[v67] = 0;
  v30 = *(sub_10010FC20(&unk_101193B10) + 36);
  v31 = sub_100020674(&unk_10118C260, &unk_101181600);
  v77 = 0;
  v68 = v31;
  for (i = v30; ; v30 = i)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v17[v30] == v81[0])
    {
      (*v74)(v10, 1, 1, v2);
      goto LABEL_8;
    }

    v32 = dispatch thunk of Collection.subscript.read();
    v33 = v66;
    v34 = v80;
    (*v65)(v66);
    v32(v81, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v35 = *(v2 + 48);
    v37 = v77;
    v36 = v78;
    *v4 = v77;
    result = (*v36)(&v4[v35], v33, v34);
    v39 = __OFADD__(v37, 1);
    v40 = v37 + 1;
    if (v39)
    {
      break;
    }

    v77 = v40;
    *&v17[v67] = v40;
    sub_10003D17C(v4, v10, &qword_101193AC8);
    (*v74)(v10, 0, 1, v2);
LABEL_8:
    v41 = v75;
    sub_10003D17C(v10, v75, &unk_101193AD0);
    if ((*v73)(v41, 1, v2) == 1)
    {
      sub_1000095E8(v17, &qword_101193AE8);
      (*v57)(v63, v64);
      v22 = v54;
      v25 = v53;
      goto LABEL_2;
    }

    v42 = v10;
    v43 = v4;
    v70 = *v41;
    v44 = v2;
    (*v78)(v79, &v41[*(v2 + 48)], v80);
    v45 = dispatch thunk of MusicItem.id.getter();
    v47 = v46;
    if (v45 == dispatch thunk of MusicItem.id.getter() && v47 == v48)
    {

LABEL_15:

      v50 = v55;
      IndexPath.init(item:section:)();
      (*v71)(v79, v80);
      sub_1000095E8(v17, &qword_101193AE8);
      (*v57)(v63, v64);
      v51 = type metadata accessor for IndexPath();
      return (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
    }

    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v49)
    {
      goto LABEL_15;
    }

    (*v71)(v79, v80);
    v2 = v44;
    v4 = v43;
    v10 = v42;
  }

  __break(1u);
  return result;
}

uint64_t sub_100505BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v55 = a2;
  v2 = sub_10010FC20(&qword_101193B20);
  v73 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v53 - v3;
  v80 = type metadata accessor for Song();
  v77 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v53 - v7;
  v8 = sub_10010FC20(&unk_101193B28);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v75 = &v53 - v12;
  v76 = sub_10010FC20(&qword_10118D1A0);
  v78 = *(v76 - 8);
  __chkstk_darwin(v76);
  v62 = &v53 - v13;
  v14 = sub_10010FC20(&qword_101193B38);
  __chkstk_darwin(v14 - 8);
  v61 = &v53 - v15;
  v60 = sub_10010FC20(&unk_101193B40);
  __chkstk_darwin(v60);
  v17 = &v53 - v16;
  v64 = sub_10010FC20(&qword_10118D1B0);
  v18 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v53 - v19;
  v20 = sub_10010FC20(&unk_101193B50);
  __chkstk_darwin(v20 - 8);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = (&v53 - v24);
  sub_10010FC20(&qword_10118D1C0);
  v26 = MusicLibrarySectionedResponse.sections.getter();
  v59 = (v18 + 32);
  v58 = v78 + 4;
  v65 = (v77 + 16);
  v78 = (v77 + 32);
  v27 = v73;
  v73 += 6;
  v74 = (v27 + 7);
  v71 = (v77 + 8);
  v57 = (v18 + 8);
  v81[5] = 0;
  v81[6] = 0;
  v81[4] = v26;
  v54 = v22;
  v53 = v25;
LABEL_2:
  sub_100507098(&qword_101193B60, &qword_10118D1B0, v22);
  sub_10003D17C(v22, v25, &unk_101193B50);
  v28 = sub_10010FC20(&qword_101193B60);
  if ((*(*(v28 - 8) + 48))(v25, 1, v28) == 1)
  {

    v52 = type metadata accessor for IndexPath();
    return (*(*(v52 - 8) + 56))(v55, 1, 1, v52);
  }

  v56 = *v25;
  (*v59)(v63, v25 + *(v28 + 48), v64);
  v29 = v61;
  MusicLibrarySection.items.getter();
  (*v58)(v62, v29, v76);
  sub_100020674(&qword_101193B68, &qword_10118D1A0);
  dispatch thunk of Sequence.makeIterator()();
  v67 = *(v60 + 36);
  *&v17[v67] = 0;
  v30 = *(sub_10010FC20(&unk_101193B70) + 36);
  v31 = sub_100020674(&unk_10118C2A0, &qword_10118D1A0);
  v77 = 0;
  v68 = v31;
  for (i = v30; ; v30 = i)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v17[v30] == v81[0])
    {
      (*v74)(v10, 1, 1, v2);
      goto LABEL_8;
    }

    v32 = dispatch thunk of Collection.subscript.read();
    v33 = v66;
    v34 = v80;
    (*v65)(v66);
    v32(v81, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v35 = *(v2 + 48);
    v37 = v77;
    v36 = v78;
    *v4 = v77;
    result = (*v36)(&v4[v35], v33, v34);
    v39 = __OFADD__(v37, 1);
    v40 = v37 + 1;
    if (v39)
    {
      break;
    }

    v77 = v40;
    *&v17[v67] = v40;
    sub_10003D17C(v4, v10, &qword_101193B20);
    (*v74)(v10, 0, 1, v2);
LABEL_8:
    v41 = v75;
    sub_10003D17C(v10, v75, &unk_101193B28);
    if ((*v73)(v41, 1, v2) == 1)
    {
      sub_1000095E8(v17, &unk_101193B40);
      (*v57)(v63, v64);
      v22 = v54;
      v25 = v53;
      goto LABEL_2;
    }

    v42 = v10;
    v43 = v4;
    v70 = *v41;
    v44 = v2;
    (*v78)(v79, &v41[*(v2 + 48)], v80);
    v45 = dispatch thunk of MusicItem.id.getter();
    v47 = v46;
    if (v45 == dispatch thunk of MusicItem.id.getter() && v47 == v48)
    {

LABEL_15:

      v50 = v55;
      IndexPath.init(item:section:)();
      (*v71)(v79, v80);
      sub_1000095E8(v17, &unk_101193B40);
      (*v57)(v63, v64);
      v51 = type metadata accessor for IndexPath();
      return (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
    }

    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v49)
    {
      goto LABEL_15;
    }

    (*v71)(v79, v80);
    v2 = v44;
    v4 = v43;
    v10 = v42;
  }

  __break(1u);
  return result;
}

uint64_t sub_10050663C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v55 = a2;
  v2 = sub_10010FC20(&qword_101193B80);
  v73 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v53 - v3;
  v80 = type metadata accessor for Artist();
  v77 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v53 - v7;
  v8 = sub_10010FC20(&qword_101193B88);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v75 = &v53 - v12;
  v76 = sub_10010FC20(&qword_101193B90);
  v78 = *(v76 - 8);
  __chkstk_darwin(v76);
  v62 = &v53 - v13;
  v14 = sub_10010FC20(&qword_101193B98);
  __chkstk_darwin(v14 - 8);
  v61 = &v53 - v15;
  v60 = sub_10010FC20(&unk_101193BA0);
  __chkstk_darwin(v60);
  v17 = &v53 - v16;
  v64 = sub_10010FC20(&qword_1011A1980);
  v18 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v53 - v19;
  v20 = sub_10010FC20(&unk_101193BB0);
  __chkstk_darwin(v20 - 8);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = (&v53 - v24);
  sub_10010FC20(&qword_10118D0F8);
  v26 = MusicLibrarySectionedResponse.sections.getter();
  v59 = (v18 + 32);
  v58 = v78 + 4;
  v65 = (v77 + 16);
  v78 = (v77 + 32);
  v27 = v73;
  v73 += 6;
  v74 = (v27 + 7);
  v71 = (v77 + 8);
  v57 = (v18 + 8);
  v81[5] = 0;
  v81[6] = 0;
  v81[4] = v26;
  v54 = v22;
  v53 = v25;
LABEL_2:
  sub_100507098(&qword_101193BC0, &qword_1011A1980, v22);
  sub_10003D17C(v22, v25, &unk_101193BB0);
  v28 = sub_10010FC20(&qword_101193BC0);
  if ((*(*(v28 - 8) + 48))(v25, 1, v28) == 1)
  {

    v52 = type metadata accessor for IndexPath();
    return (*(*(v52 - 8) + 56))(v55, 1, 1, v52);
  }

  v56 = *v25;
  (*v59)(v63, v25 + *(v28 + 48), v64);
  v29 = v61;
  MusicLibrarySection.items.getter();
  (*v58)(v62, v29, v76);
  sub_100020674(&qword_101193BC8, &qword_101193B90);
  dispatch thunk of Sequence.makeIterator()();
  v67 = *(v60 + 36);
  *&v17[v67] = 0;
  v30 = *(sub_10010FC20(&unk_101193BD0) + 36);
  v31 = sub_100020674(&qword_10118C150, &qword_101193B90);
  v77 = 0;
  v68 = v31;
  for (i = v30; ; v30 = i)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v17[v30] == v81[0])
    {
      (*v74)(v10, 1, 1, v2);
      goto LABEL_8;
    }

    v32 = dispatch thunk of Collection.subscript.read();
    v33 = v66;
    v34 = v80;
    (*v65)(v66);
    v32(v81, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v35 = *(v2 + 48);
    v37 = v77;
    v36 = v78;
    *v4 = v77;
    result = (*v36)(&v4[v35], v33, v34);
    v39 = __OFADD__(v37, 1);
    v40 = v37 + 1;
    if (v39)
    {
      break;
    }

    v77 = v40;
    *&v17[v67] = v40;
    sub_10003D17C(v4, v10, &qword_101193B80);
    (*v74)(v10, 0, 1, v2);
LABEL_8:
    v41 = v75;
    sub_10003D17C(v10, v75, &qword_101193B88);
    if ((*v73)(v41, 1, v2) == 1)
    {
      sub_1000095E8(v17, &unk_101193BA0);
      (*v57)(v63, v64);
      v22 = v54;
      v25 = v53;
      goto LABEL_2;
    }

    v42 = v10;
    v43 = v4;
    v70 = *v41;
    v44 = v2;
    (*v78)(v79, &v41[*(v2 + 48)], v80);
    v45 = dispatch thunk of MusicItem.id.getter();
    v47 = v46;
    if (v45 == dispatch thunk of MusicItem.id.getter() && v47 == v48)
    {

LABEL_15:

      v50 = v55;
      IndexPath.init(item:section:)();
      (*v71)(v79, v80);
      sub_1000095E8(v17, &unk_101193BA0);
      (*v57)(v63, v64);
      v51 = type metadata accessor for IndexPath();
      return (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
    }

    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v49)
    {
      goto LABEL_15;
    }

    (*v71)(v79, v80);
    v2 = v44;
    v4 = v43;
    v10 = v42;
  }

  __break(1u);
  return result;
}

void sub_100507098(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_10010FC20(a1);
  v9 = __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = *v3;
  v13 = v3[1];
  v14 = *(*v3 + 16);
  if (v13 == v14)
  {
    v15 = *(v8 + 56);

    v15(a3, 1, 1, v7, v9);
  }

  else
  {
    if (v13 >= v14)
    {
      __break(1u);
    }

    else
    {
      v23 = v8;
      v16 = sub_10010FC20(a2);
      v17 = *(v16 - 8);
      v18 = *(v17 + 16);
      v19 = v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v13;
      v3[1] = v13 + 1;
      v20 = *(v7 + 48);
      v21 = v3[2];
      *v11 = v21;
      v18(&v11[v20], v19, v16);
      if (!__OFADD__(v21, 1))
      {
        v3[2] = v21 + 1;
        sub_10003D17C(v11, a3, a1);
        (*(v23 + 56))(a3, 0, 1, v7);
        return;
      }
    }

    __break(1u);
  }
}

id sub_100507278(int a1, uint64_t a2)
{
  v3 = v2;
  v49 = a2;
  LODWORD(v48) = a1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___globalHeaderRegistration;
  v14 = sub_10010FC20(&unk_10118A650);
  v15 = *(*(v14 - 8) + 56);
  v15(&v3[v13], 1, 1, v14);
  v15(&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___headerRegistration], 1, 1, v14);
  v16 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___gridCellRegistration;
  v17 = sub_10010FC20(&unk_101193A80);
  (*(*(v17 - 8) + 56))(&v3[v16], 1, 1, v17);
  v18 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___listCellRegistration;
  v19 = sub_10010FC20(&unk_101193A90);
  (*(*(v19 - 8) + 56))(&v3[v18], 1, 1, v19);
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView] = 0;
  v20 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prefetchingController;
  v21 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v3[v20] = sub_10003AAD8(0xD000000000000022, 0x8000000100E4E9D0);
  v22 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_response;
  v23 = sub_10010FC20(&unk_101193AA0);
  (*(*(v23 - 8) + 56))(&v3[v22], 1, 1, v23);
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_dragDropController] = 0;
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___searchController] = 0;
  v24 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___actionMetricsReportingContext;
  v25 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v25 - 8) + 56))(&v3[v24], 1, 1, v25);
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleHeaderDataSource] = 0;
  v26 = &v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___leadingSwipeActions];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___trailingSwipeActions];
  *v27 = 0;
  v27[1] = 0;
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextBarButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playBarButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___shuffleBarButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroup] = 0;
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroups] = 0;
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextAndFilterBarButtonGroup] = 0;
  v28 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
  v29 = type metadata accessor for MusicVideo();
  (*(*(v29 - 8) + 56))(&v3[v28], 1, 1, v29);
  v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_hasScrolledToProminentItem] = 0;
  v30 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentItemIndexPath;
  v31 = type metadata accessor for IndexPath();
  (*(*(v31 - 8) + 56))(&v3[v30], 1, 1, v31);
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentIndexPathTask] = 0;
  v32 = type metadata accessor for Artist();
  (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
  sub_1006FC4AC(v9, v48, v12);
  sub_10010FC20(&unk_101184620);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController] = sub_1003A18B4(v12);
  _s23LayoutVariantControllerCMa();
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_layoutVariantController] = sub_10059A684(0xD000000000000012, 0x8000000100E484C0, 0);
  v50.receiver = v3;
  v50.super_class = ObjectType;
  v33 = objc_msgSendSuper2(&v50, "initWithNibName:bundle:", 0, 0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v34 = String._bridgeToObjectiveC()();

  [v33 setTitle:v34];

  UIViewController.playActivityFeatureIdentifier.setter(8);
  v35 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
  swift_beginAccess();
  v36 = v33 + v35;
  v37 = v49;
  sub_1002190E0(v49, v36, &unk_1011846B0);
  swift_endAccess();
  v38 = [v33 traitCollection];

  v39 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  v41 = v40;

  if ((v41 & 1) == 0)
  {
    v42 = [v33 navigationItem];
    [v42 setLargeTitleDisplayMode:v39];
  }

  sub_10010FC20(&unk_101182D80);
  v43 = swift_allocObject();
  v48 = xmmword_100EBC6B0;
  *(v43 + 16) = xmmword_100EBC6B0;
  v44 = sub_100217F14();
  *(v43 + 32) = &type metadata for LibraryFilterTrait;
  *(v43 + 40) = v44;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v45 = swift_allocObject();
  *(v45 + 16) = v48;
  v46 = sub_100137E8C();
  *(v45 + 32) = &type metadata for MusicLibraryTrait;
  *(v45 + 40) = v46;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_1000095E8(v37, &unk_1011846B0);
  return v33;
}

uint64_t sub_100507A38()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v51.receiver = v0;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "viewDidLoad");
  v3 = sub_100508068();
  v4 = sub_100508460();
  [v3 setCollectionViewLayout:v4];

  v5 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView;
  v6 = *&v1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prefetchingController];
  [*&v1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView] setPrefetchDataSource:v6];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = ObjectType;
  v9 = (v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v10 = *(v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  *v9 = sub_100519048;
  v9[1] = v8;

  sub_100020438(v10);

  v11 = (v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v12 = *(v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  *v11 = sub_1005089E4;
  v11[1] = 0;
  sub_100020438(v12);
  sub_100508EB8();
  v13 = *&v1[v5];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = &v13[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v16 = *&v13[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  *v15 = sub_100519050;
  v15[1] = v14;
  v17 = v13;

  sub_100020438(v16);

  v18 = *&v1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_layoutVariantController];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = *(v18 + 16);
  *(v18 + 16) = sub_100519058;
  *(v18 + 24) = v19;

  sub_100020438(v20);

  v21 = sub_100509210();
  v22 = [v1 traitCollection];
  v23 = [v22 horizontalSizeClass];

  [*(v21 + 32) setHidesNavigationBarDuringPresentation:v23 == 1];

  sub_10010FC20(&unk_101182D80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100EBC6B0;
  *(v24 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v24 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v25 = *&v1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = v25[2];
  v25[2] = sub_100519064;
  v25[3] = v26;

  sub_100020438(v27);

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = v25[4];
  v25[4] = sub_10051906C;
  v25[5] = v28;

  sub_100020438(v29);

  v30 = *&v1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___searchController];
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = *(v30 + 88);
  *(v30 + 88) = sub_100519074;
  *(v30 + 96) = v31;

  sub_100020438(v32);

  v33 = sub_10010FC20(&unk_10118A650);
  v47[3] = v33;
  v34 = sub_10001C8B8(v47);
  sub_10050B22C(v34);
  v48[3] = v33;
  v35 = sub_10001C8B8(v48);
  sub_10050B4B0(v35);
  v49[3] = sub_10010FC20(&unk_101193A90);
  v36 = sub_10001C8B8(v49);
  sub_10050B738(v36);
  v50[3] = sub_10010FC20(&unk_101193A80);
  v37 = sub_10001C8B8(v50);
  sub_10050B9D8(v37);
  swift_arrayDestroy();
  v38 = *&v1[v5];
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewDragDropController(0);
  v40 = swift_allocObject();
  *(v40 + 24) = 0u;
  *(v40 + 40) = 0u;
  *(v40 + 56) = 0u;
  *(v40 + 72) = 0u;
  *(v40 + 88) = 1;
  *(v40 + 96) = 0;
  v41 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  v42 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  (*(*(v42 - 8) + 56))(v40 + v41, 1, 1, v42);
  *(v40 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  *(v40 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  *(v40 + 16) = v38;
  *(v40 + 24) = sub_10051907C;
  *(v40 + 32) = v39;
  *(v40 + 40) = 0;
  v43 = *(v40 + 56);
  *(v40 + 64) = 0;
  *(v40 + 48) = 0;
  *(v40 + 56) = 0;
  v44 = v38;
  swift_retain_n();
  sub_100020438(v43);
  v45 = *(v40 + 72);
  *(v40 + 72) = 0;
  *(v40 + 80) = 0;
  sub_100020438(v45);
  sub_100321DD8();
  sub_100322048();

  *&v1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_dragDropController] = v40;
}

id sub_100508068()
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
  v10 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView];
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

      v38 = AccessibilityIdentifier.libraryMusicVideosView.unsafeMutableAddressor();
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

id sub_100508460()
{
  v1 = sub_100508068();
  v2 = v1[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(*&v0[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_layoutVariantController] + 32);
  }

  v4 = *&v0[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView];
  v5 = [v0 traitCollection];
  v6 = [v5 horizontalSizeClass];

  v7 = sub_10050FA0C();
  v9 = v8;
  v10 = sub_10050FAC8();
  v12 = v11;
  if (v3)
  {
    v13 = v10;
    v14 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    if (v6 == 1)
    {
      v16 = objc_opt_self();
      v17 = [v16 fractionalWidthDimension:1.0];
      v18 = [v16 estimatedDimension:65.0];
      v19 = [objc_opt_self() sizeWithWidthDimension:v17 heightDimension:v18];

      UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

      v20 = String._bridgeToObjectiveC()();

      v21 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v19 elementKind:v20 alignment:1];

      sub_10010FC20(&qword_101183990);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_100EBC6C0;
      *(v22 + 32) = v21;
      sub_100009F78(0, &unk_1011913A0);
      v23 = v21;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v14 setBoundarySupplementaryItems:isa];

      v25 = *(v15 + 16);
      *(v15 + 16) = v23;
    }

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = 0;
    v27[4] = 0;
    v27[5] = v7;
    v27[6] = v9;
    v27[7] = v13;
    v27[8] = v12;
    v27[9] = static MPCPlayerCommandRequest.isAvailable(in:);
    v27[10] = 0;
    v27[11] = v15;
    v28 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v33[4] = sub_1002193FC;
    v33[5] = v27;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 1107296256;
    v33[2] = sub_1005A63A8;
    v33[3] = &unk_1010B0630;
    v29 = _Block_copy(v33);

    v30 = [v28 initWithSectionProvider:v29 configuration:v14];

    _Block_release(v29);

    return v30;
  }

  else
  {
    v32 = sub_10059B450(v4, v6 == 1, static MPCPlayerCommandRequest.isAvailable(in:), 0);

    return v32;
  }
}

void sub_100508874(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_100508068();
    v7 = v6[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

    if ((v7 & 1) != 0 || *(*&v5[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_layoutVariantController] + 32) == 1)
    {
      v8 = [objc_opt_self() currentTraitCollection];
      [v8 displayScale];
    }

    else
    {
      v9 = *&v5[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView];
      v10 = sub_100189858();

      (v10)(a1, a2);
    }
  }
}

unint64_t sub_1005089E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v31 = a3;
  v4 = sub_10010FC20(&unk_101181600);
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v7 = sub_10010FC20(&qword_101193AF0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for MusicVideo();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&qword_101184718);
  __chkstk_darwin(v14 - 8);
  v16 = &v26 - v15;
  v17 = sub_10010FC20(&unk_101193AA0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v26 - v19;
  sub_1000089F8(a1, v32, &unk_101183F30);
  if (!v33)
  {
    sub_1000095E8(v32, &unk_101183F30);
    (*(v18 + 56))(v16, 1, 1, v17);
    goto LABEL_7;
  }

  v21 = swift_dynamicCast();
  (*(v18 + 56))(v16, v21 ^ 1u, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
LABEL_7:
    sub_1000095E8(v16, &qword_101184718);
    v25 = type metadata accessor for Artwork();
    return (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
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
    v24 = v29;
    MusicItemCollection.subscript.getter();
    (*(v28 + 8))(v6, v24);
    MusicVideo.artwork.getter();
    (*(v26 + 8))(v13, v27);
    return (*(v18 + 8))(v20, v17);
  }

  __break(1u);
  return result;
}

void sub_100508EB8()
{
  v1 = v0;
  sub_10010FC20(&qword_101183990);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6C0;
  *(v2 + 32) = sub_100515694();
  v3 = [v0 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 != 1)
  {
    LOBYTE(v4) = sub_1003953C0();
  }

  v5 = sub_10051561C();
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_1007E953C(v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [v9 setHidden:v4 & 1];

      ++v8;
      if (v11 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v12 = *&v1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroups];

  sub_1003BBFC8(0, 0, v12);

  v13 = [v1 navigationItem];
  sub_100009F78(0, &unk_1011842F0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setTrailingItemGroups:isa];
}

void sub_1005090E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((*(a1 + 56) ^ *(a2 + 56)))
    {
      v5 = Strong;
      v6 = sub_100508460();
      v7 = sub_100508068();

      sub_100189E04(v6);

      Strong = v7;
    }
  }
}

void sub_10050918C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_100508460();
    v3 = sub_100508068();

    sub_100189E04(v2);
  }
}

uint64_t sub_100509210()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___searchController];
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

uint64_t sub_1005092B4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = sub_10010FC20(&unk_101193AA0);
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v7 = &v45 - v6;
  v8 = sub_10010FC20(&unk_1011846C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = sub_10010FC20(&qword_101184718);
  v53 = *(v14 - 8);
  v15 = *(v53 + 64);
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  v50 = &v45 - v20;
  __chkstk_darwin(v21);
  v55 = &v45 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v45 = v7;
  v46 = v18;
  v47 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  v49 = a3;
  RequestResponse.Revision.content.getter(v13);
  v23 = sub_10010FC20(&unk_10118D1E0);
  v24 = *(*(v23 - 8) + 48);
  if (v24(v13, 1, v23) == 1)
  {
    sub_1000095E8(v13, &unk_1011846C0);
    v25 = 1;
    v26 = v55;
    v28 = v51;
    v27 = v52;
  }

  else
  {
    v28 = v51;
    v27 = v52;
    v26 = v55;
    (v51[2])(v55, v13, v52);
    sub_1000095E8(v13, &unk_10118D1E0);
    v25 = 0;
  }

  (v28[7])(v26, v25, 1, v27);
  v52 = sub_100508068();
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  if (v24(v10, 1, v23) == 1)
  {
    sub_1000095E8(v10, &unk_1011846C0);
    v51 = 0;
  }

  else
  {
    v30 = v45;
    (v28[2])(v45, v10, v27);
    sub_1000095E8(v10, &unk_10118D1E0);
    v51 = MusicLibrarySectionedResponse.sections.getter();
    (v28[1])(v30, v27);
  }

  v31 = v50;
  sub_1000089F8(v26, v50, &qword_101184718);
  if ((v28[6])(v31, 1, v27) == 1)
  {
    sub_1000095E8(v31, &qword_101184718);
    v50 = 0;
  }

  else
  {
    v50 = MusicLibrarySectionedResponse.sections.getter();
    (v28[1])(v31, v27);
  }

  v32 = Strong;
  v33 = [*(sub_100509210() + 32) searchBar];
  LODWORD(v45) = [v33 isFirstResponder];

  v34 = v55;
  v35 = v46;
  sub_1000089F8(v55, v46, &qword_101184718);
  v36 = *(v53 + 80);
  v37 = swift_allocObject();
  v38 = v49;
  v37[2] = v48;
  v37[3] = v38;
  v37[4] = v32;
  sub_10003D17C(v35, v37 + ((v36 + 40) & ~v36), &qword_101184718);
  v39 = v47;
  sub_1000089F8(v34, v47, &qword_101184718);
  v40 = swift_allocObject();
  *(v40 + 16) = v32;
  sub_10003D17C(v39, v40 + ((v36 + 24) & ~v36), &qword_101184718);
  v41 = v32;

  v42 = sub_10010FC20(&qword_101193AF0);
  v43 = sub_100519168();
  v44 = v52;
  UICollectionView.performSectionedAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:alongsideUpdates:completion:)(v51, v50, 0, 0, 1, v45 ^ 1, sub_100519084, v37, sub_100509B1C, 0, sub_100509BAC, 0, sub_1005190F8, v40, 0, 0, v42, v43);

  return sub_1000095E8(v34, &qword_101184718);
}

uint64_t sub_100509960(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10010FC20(&qword_101184718);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  a1(v8);
  v11 = *(a3 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prefetchingController);
  sub_1000089F8(a4, v10, &qword_101184718);
  v12 = sub_10010FC20(&unk_101193AA0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_1000095E8(v10, &qword_101184718);
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

uint64_t sub_100509B1C()
{
  type metadata accessor for MusicVideo();
  sub_100519250(&qword_101193C68, &type metadata accessor for MusicVideo);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

uint64_t sub_100509BAC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MusicFavoriteStatus();
  v49 = *(v3 - 8);
  __chkstk_darwin(v3);
  v48 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v46 - v6;
  v7 = type metadata accessor for Artwork();
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  __chkstk_darwin(v7);
  v46 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_101191420);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v13 - 8);
  v50 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  v21 = MusicVideo.title.getter();
  v23 = v22;
  v53 = a2;
  if (v21 == MusicVideo.title.getter() && v23 == v24)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v26 = MusicVideo.artistName.getter();
  v28 = v27;
  if (v26 == MusicVideo.artistName.getter() && v28 == v29)
  {

    v30 = v51;
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v30 = v51;
    if ((v31 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v51 = v3;
  MusicVideo.artwork.getter();
  MusicVideo.artwork.getter();
  v32 = *(v10 + 48);
  sub_1000089F8(v20, v12, &unk_101188920);
  sub_1000089F8(v17, &v12[v32], &unk_101188920);
  v33 = *(v52 + 48);
  if (v33(v12, 1, v30) == 1)
  {
    sub_1000095E8(v17, &unk_101188920);
    sub_1000095E8(v20, &unk_101188920);
    if (v33(&v12[v32], 1, v30) == 1)
    {
      sub_1000095E8(v12, &unk_101188920);
LABEL_17:
      v40 = v47;
      MusicVideo.favoriteStatus.getter();
      v41 = v48;
      MusicVideo.favoriteStatus.getter();
      v35 = static MusicFavoriteStatus.== infix(_:_:)();
      v42 = *(v49 + 8);
      v43 = v41;
      v44 = v51;
      v42(v43, v51);
      v42(v40, v44);
      return v35 & 1;
    }

    goto LABEL_14;
  }

  v34 = v50;
  sub_1000089F8(v12, v50, &unk_101188920);
  if (v33(&v12[v32], 1, v30) == 1)
  {
    sub_1000095E8(v17, &unk_101188920);
    sub_1000095E8(v20, &unk_101188920);
    (*(v52 + 8))(v34, v30);
LABEL_14:
    sub_1000095E8(v12, &unk_101191420);
    goto LABEL_15;
  }

  v36 = v52;
  v37 = v46;
  (*(v52 + 32))(v46, &v12[v32], v30);
  sub_100519250(&unk_10118D3D0, &type metadata accessor for Artwork);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = *(v36 + 8);
  v39(v37, v30);
  sub_1000095E8(v17, &unk_101188920);
  sub_1000095E8(v20, &unk_101188920);
  v39(v50, v30);
  sub_1000095E8(v12, &unk_101188920);
  if (v38)
  {
    goto LABEL_17;
  }

LABEL_15:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_10050A1B8(char *a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101184718);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_10010FC20(&unk_1011846C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_10010FC20(&unk_101193AA0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  sub_100508EB8();
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v9);

  v14 = sub_10010FC20(&unk_10118D1E0);
  if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
  {
    sub_1000095E8(v9, &unk_1011846C0);
    v15 = 1;
  }

  else
  {
    (*(v11 + 16))(v13, v9, v10);
    sub_1000095E8(v9, &unk_10118D1E0);
    v16 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v11 + 8))(v13, v10);
    v15 = !v16;
  }

  [a1 setNeedsUpdateContentUnavailableConfiguration];
  v17 = sub_100508068();
  [v17 setBouncesVertically:v15 & 1];

  [*&a1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v15 & 1];
  v18 = sub_100509210();
  sub_1000089F8(a2, v6, &qword_101184718);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_1000095E8(v6, &qword_101184718);
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
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  v20 = (*(*&a1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  v21 = v20[1];
  if (!v21)
  {
    v27 = *(v18 + 64);
    *(v18 + 64) = 0;
    if ((v27 & 1) == 0)
    {
      goto LABEL_13;
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

LABEL_13:

  return sub_10050A588();
}

uint64_t sub_10050A588()
{
  v1 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v1 - 8);
  v64 = &v51 - v2;
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v63 = &v51 - v4;
  v5 = sub_10010FC20(&unk_1011846C0);
  __chkstk_darwin(v5 - 8);
  v60 = &v51 - v6;
  v7 = sub_10010FC20(&unk_101193AA0);
  v61 = *(v7 - 8);
  v62 = v7;
  v8 = *(v61 + 64);
  __chkstk_darwin(v7);
  v59 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v51 - v10;
  __chkstk_darwin(v11);
  v65 = &v51 - v12;
  v13 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v51 - v14;
  v16 = type metadata accessor for MusicVideo();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v58 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v51 - v20;
  v22 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
  swift_beginAccess();
  v23 = v0 + v22;
  v24 = v16;
  v25 = v17;
  sub_1000089F8(v23, v15, &unk_1011846B0);
  if ((*(v17 + 48))(v15, 1, v24) == 1)
  {
    sub_1000095E8(v15, &unk_1011846B0);
LABEL_5:
    v30 = type metadata accessor for IndexPath();
    v31 = v64;
    (*(*(v30 - 8) + 56))(v64, 1, 1, v30);
    return sub_100515AE4(v31);
  }

  v26 = *(v17 + 32);
  v26(v21, v15, v24);
  v27 = v0;
  RequestResponse.Controller.revision.getter();
  v28 = v60;
  RequestResponse.Revision.content.getter(v60);

  v29 = sub_10010FC20(&unk_10118D1E0);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
  {
    sub_1000095E8(v28, &unk_1011846C0);
    (*(v25 + 8))(v21, v24);
    goto LABEL_5;
  }

  v54 = v26;
  v55 = v25 + 32;
  v56 = v24;
  v64 = v21;
  v34 = v61;
  v33 = v62;
  v35 = v57;
  v36 = *(v61 + 16);
  v36(v57, v28, v62);
  sub_1000095E8(v28, &unk_10118D1E0);
  v37 = *(v34 + 32);
  v57 = (v34 + 32);
  v53 = v37;
  v37(v65, v35, v33);
  v38 = v27;
  v60 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentIndexPathTask;
  if (*(v27 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentIndexPathTask))
  {

    Task.cancel()();
  }

  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(v63, 1, 1, v39);
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = v59;
  v52 = v38;
  v41 = v62;
  v36(v59, v65, v62);
  v42 = v58;
  v43 = v56;
  (*(v25 + 16))(v58, v64, v56);
  v44 = v61;
  v45 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v46 = (v8 + *(v25 + 80) + v45) & ~*(v25 + 80);
  v47 = (v18 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  v53(v48 + v45, v40, v41);
  v54(v48 + v46, v42, v43);
  *(v48 + v47) = v51;
  v49 = v63;
  v50 = sub_10035EB10(0, 0, v63, &unk_100ED1408, v48);
  sub_1000095E8(v49, &unk_101181520);
  (*(v44 + 8))(v65, v41);
  (*(v25 + 8))(v64, v43);
  *(v52 + v60) = v50;
}

void sub_10050ACA0()
{
  v0 = sub_10010FC20(&unk_1011846C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v2);

    v5 = sub_10010FC20(&unk_10118D1E0);
    if ((*(*(v5 - 8) + 48))(v2, 1, v5) == 1)
    {
      sub_1000095E8(v2, &unk_1011846C0);
      v6 = _swiftEmptyArrayStorage;
    }

    else
    {
      v6 = *&v2[*(v5 + 36)];

      sub_1000095E8(v2, &unk_10118D1E0);
    }

    v7 = v6[2];

    v8 = sub_10050AFA8();
    swift_getKeyPath();
    v14 = v8;
    sub_100519250(&unk_101193C40, _s17PlayShuffleHeaderV10DataSourceCMa);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v8 + 48);

    if ((v7 == 0) == v9)
    {
    }

    else
    {
      v10 = *&v4[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleHeaderDataSource];
      v11 = v7 == 0;
      if (((v7 == 0) ^ *(v10 + 48)))
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *&v13[-16] = v10;
        v13[-8] = v11;
        v14 = v10;

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {

        *(v10 + 48) = v11;
      }
    }
  }
}

uint64_t sub_10050AFA8()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleHeaderDataSource;
  if (*(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleHeaderDataSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleHeaderDataSource);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s17PlayShuffleHeaderV10DataSourceCMa(0);
    v2 = swift_allocObject();
    *(v2 + 48) = 0;

    ObservationRegistrar.init()();
    *(v2 + 16) = sub_1005192C8;
    *(v2 + 24) = v3;
    *(v2 + 32) = sub_1003C141C;
    *(v2 + 40) = v4;

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10050B0CC(uint64_t a1, unint64_t a2)
{
  v4 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v4);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(result + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController);
    v9 = result;

    if (a2)
    {
      v10 = a2;
    }

    else
    {
      a1 = 0;
      v10 = 0xE000000000000000;
    }

    v11 = *(v8 + 48);
    v12 = *(*v11 + 96);
    swift_beginAccess();
    sub_100518E64(v11 + v12, v6, _s11MusicVideosVMa);
    v13 = &v6[*(v4 + 32)];

    *v13 = a1;
    v13[1] = v10;
    sub_100377E84(v6);
  }

  return result;
}

uint64_t sub_10050B22C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118C540);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___globalHeaderRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10118C540);
  v10 = sub_10010FC20(&unk_10118A650);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10118C540);
  UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
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

uint64_t sub_10050B4B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118C540);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___headerRegistration;
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

uint64_t sub_10050B738@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10010FC20(&qword_1011847E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___listCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v10, v9, &qword_1011847E8);
  v11 = sub_10010FC20(&unk_101193A90);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000095E8(v9, &qword_1011847E8);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = ObjectType;
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for MusicVideo();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v10, &qword_1011847E8);
  return swift_endAccess();
}

uint64_t sub_10050B9D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_1011847E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___gridCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_1011847E0);
  v10 = sub_10010FC20(&unk_101193A80);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_1011847E0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  type metadata accessor for MusicVideo();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &qword_1011847E0);
  return swift_endAccess();
}

uint64_t sub_10050BC50(uint64_t a1)
{
  v49 = a1;
  v46 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v46);
  v2 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v43 - v7;
  v9 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v48 = *(v9 - 8);
  __chkstk_darwin(v9);
  v47 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin(v11 - 8);
  v45 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v43 - v14;
  v16 = type metadata accessor for MusicVideo();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    v44 = v9;
    v43 = v2;
    v25 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController;

    sub_10037B658(v49, v15);

    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {

      sub_1000095E8(v15, &unk_1011846B0);
      return 0;
    }

    else
    {
      (*(v17 + 32))(v22, v15, v16);
      v26 = *(*&v24[v25] + 48);
      v27 = *(*v26 + 96);
      swift_beginAccess();
      sub_100518E64(v26 + v27, v5, _s11MusicVideosVMa);
      sub_1006FCD38(v8);
      sub_100518FE8(v5, _s11MusicVideosVMa);
      v28 = v48;
      v29 = v44;
      if ((*(v48 + 48))(v8, 1, v44) == 1)
      {
        sub_1000095E8(v8, &unk_10118CDB0);
        v30 = 0;
      }

      else
      {
        v31 = v47;
        (*(v28 + 32))(v47, v8, v29);
        v32 = v29;
        v33 = v43;
        (*(v28 + 16))(v43, v31, v29);
        swift_storeEnumTagMultiPayload();
        v52 = 0;
        memset(v51, 0, sizeof(v51));
        v50[0] = v24;
        v34 = v24;
        v35 = String.init<A>(reflecting:)();
        v50[3] = &type metadata for Player.CommandIssuerIdentity;
        v50[4] = &protocol witness table for Player.CommandIssuerIdentity;
        v50[0] = v35;
        v50[1] = v36;
        v37 = v34;
        v38 = v45;
        PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v33, v51, 3, 0, 0, 1, 0, 1, v45, v24, v50);
        v39 = (*(v28 + 8))(v47, v32);
        v30 = PlaybackIntentDescriptor.intent.getter(v39);
        sub_100518FE8(v38, type metadata accessor for PlaybackIntentDescriptor);
      }

      v40 = sub_10079A5F8(v30);
      v41 = sub_100797240(&off_10109B860, v40);

      (*(v17 + 16))(v19, v22, v16);
      v42 = sub_10079C240(v41, v19);

      (*(v17 + 8))(v22, v16);
      return v42;
    }
  }

  return result;
}

void sub_10050C2A4(char a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  v4 = sub_100508068();
  UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1);

  swift_unknownObjectRelease();
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  type metadata accessor for ApplicationMainMenu();
  v5 = sub_100314AEC();
  if (v5)
  {
    v6 = v5;
    sub_1007CA9AC(v2, v5);
  }
}

uint64_t sub_10050C3C4(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for MetricsEvent.Page(0);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1, v5);
  v8 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v9 = MetricsEvent.Page.libraryMusicVideosList.unsafeMutableAddressor();
  sub_100518E64(v9, v7, type metadata accessor for MetricsEvent.Page);
  v10 = sub_10053771C();
  v12 = v11;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v13 = qword_101218AD0;
  v14 = GroupActivitiesManager.hasJoined.getter();
  v15 = GroupActivitiesManager.participantsCount.getter();
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v8) + 0xA0))(v7, v10, v12, v14 & 1, v15, *(v13 + v16));

  return sub_100518FE8(v7, type metadata accessor for MetricsEvent.Page);
}

void sub_10050C6DC()
{
  v0 = sub_10010FC20(&unk_10118D330);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v5 = Strong;

  v6 = sub_1006E6A78();

  if (v6)
  {

LABEL_4:
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    UICollectionViewCell.contentConfiguration.setter();
    return;
  }

  sub_10050AFA8();
  sub_1003C13C8();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  *(&v8 + 1) = v0;
  v9 = sub_100020674(&unk_10118D340, &unk_10118D330);
  sub_10001C8B8(&v7);
  UIHostingConfiguration.margins(_:_:)();

  (*(v1 + 8))(v3, v0);
  UICollectionViewCell.contentConfiguration.setter();
}

void sub_10050C8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[0] = a1;
  v23[1] = a4;
  v4 = sub_10010FC20(&unk_1011846C0);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - v5;
  v7 = sub_10010FC20(&unk_101193AA0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - v9;
  v11 = sub_10010FC20(&qword_101193AF0);
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

    v20 = sub_10010FC20(&unk_10118D1E0);
    if ((*(*(v20 - 8) + 48))(v6, 1, v20) == 1)
    {
      sub_1000095E8(v6, &unk_1011846C0);

      return;
    }

    (*(v8 + 16))(v10, v6, v7);
    sub_1000095E8(v6, &unk_10118D1E0);
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

void sub_10050CC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&qword_10118D2C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);
    v13[-2] = a3;
    v13[-1] = v9;
    v10 = v9;
    sub_10010FC20(&unk_101184760);
    v11 = _s8GridCellVMa(255);
    v12 = sub_100519250(&qword_10118D290, _s8GridCellVMa);
    v13[0] = v11;
    v13[1] = v12;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v13[3] = v4;
    v13[4] = sub_100020674(&unk_101184770, &qword_10118D2C0);
    sub_10001C8B8(v13);
    UIHostingConfiguration.margins(_:_:)();
    (*(v5 + 8))(v7, v4);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_10050CEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v54 = a2;
  v4 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v4 - 8);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v46 - v7;
  v50 = type metadata accessor for MusicFavoriteStatus();
  v8 = *(v50 - 8);
  __chkstk_darwin(v50);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v17 - 8);
  v19 = &v46 - v18;
  v20 = _s8GridCellVMa(0);
  __chkstk_darwin(v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MusicVideo();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v23, &protocol witness table for MusicVideo, v19);
  v24 = sub_10010FC20(&unk_101182950);
  (*(*(v24 - 8) + 56))(v16, 5, 11, v24);
  v25 = sub_100508068();
  v26 = *&v25[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v26, 0, 0, 1, 0x3FFC71C71C71C71CLL, 0, 2, v55);
  v27 = Corner.medium.unsafeMutableAddressor();
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v19, v16, 0, 1, v55, *v27, v27[1], *(v27 + 16), v22);
  v28 = MusicVideo.title.getter();
  v48 = v29;
  v49 = v28;
  v30 = MusicVideo.artistName.getter();
  v46 = v31;
  v47 = v30;
  MusicVideo.favoriteStatus.getter();
  v32 = v50;
  (*(v8 + 104))(v10, enum case for MusicFavoriteStatus.favorited(_:), v50);
  LOBYTE(v16) = static MusicFavoriteStatus.== infix(_:_:)();
  v33 = *(v8 + 8);
  v33(v10, v32);
  v33(v13, v32);
  MusicVideo.contentRating.getter();
  v34 = *(v23 - 8);
  v35 = v51;
  (*(v34 + 16))(v51, a1, v23);
  (*(v34 + 56))(v35, 0, 1, v23);
  v36 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
  v37 = v54;
  swift_beginAccess();
  v38 = v52;
  sub_1000089F8(v37 + v36, v52, &unk_1011846B0);
  sub_100519250(&qword_101193AC0, &type metadata accessor for MusicVideo);
  LOBYTE(v36) = static Optional<A>.==~ infix(_:_:)();
  sub_1000095E8(v38, &unk_1011846B0);
  sub_1000095E8(v35, &unk_1011846B0);
  v39 = &v22[v20[5]];
  *v39 = 0;
  *(v39 + 1) = 0;
  *(v39 + 2) = 0;
  *&v22[v20[6]] = 0x3FFC71C71C71C71CLL;
  v40 = &v22[v20[7]];
  v41 = v48;
  *v40 = v49;
  *(v40 + 1) = v41;
  v42 = &v22[v20[8]];
  v43 = v46;
  *v42 = v47;
  *(v42 + 1) = v43;
  v22[v20[9]] = v16 & 1;
  v22[v20[11]] = v36 & 1;
  v44 = v20[12];
  *&v22[v44] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  sub_100519250(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_100519250(&qword_10118D290, _s8GridCellVMa);

  View.artworkCaching(owner:)();

  return sub_100518FE8(v22, _s8GridCellVMa);
}

void sub_10050D518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10010FC20(&unk_1011847F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v23 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23[0] = v23;
    __chkstk_darwin(Strong);
    v23[-4] = a3;
    v23[-3] = v16;
    v23[-2] = a1;
    v23[-1] = a5;
    v17 = v16;
    sub_10010FC20(&unk_101193BE0);
    v23[1] = a1;
    v18 = sub_1001109D0(&unk_101184800);
    v19 = sub_100020674(&unk_101193BF0, &unk_101184800);
    v24[0] = v18;
    v24[1] = v19;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v20 = *(v9 + 8);
    v20(v11, v8);
    static Edge.Set.vertical.getter();
    v21 = [v17 traitCollection];
    v22 = [v21 preferredContentSizeCategory];

    UIContentSizeCategory.isAccessibilityCategory.getter();
    v24[3] = v8;
    v24[4] = sub_100020674(&unk_101184810, &unk_1011847F0);
    sub_10001C8B8(v24);
    UIHostingConfiguration.margins(_:_:)();
    v20(v14, v8);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_10050D85C@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a3;
  v95 = a4;
  v90 = a2;
  v5 = type metadata accessor for MusicVideo();
  v77 = v5;
  v96 = *(v5 - 8);
  __chkstk_darwin(v5);
  v92 = v6;
  v93 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v7 - 8);
  v89 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v82 = &v75 - v10;
  v78 = type metadata accessor for MusicFavoriteStatus();
  v11 = *(v78 - 8);
  __chkstk_darwin(v78);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v75 - v15;
  v17 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v20 - 8);
  v22 = &v75 - v21;
  v23 = type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin(v23 - 8);
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10010FC20(&unk_101184800);
  __chkstk_darwin(v26);
  v28 = &v75 - v27;
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v5, &protocol witness table for MusicVideo, v22);
  v29 = sub_10010FC20(&unk_101182950);
  (*(*(v29 - 8) + 56))(v19, 5, 11, v29);
  ArtworkImage.Size.init(cgSize:)(0x4055555555555555, 0x4048000000000000, 0, v97);
  v30 = Corner.small.unsafeMutableAddressor();
  v31 = *v30;
  v32 = v30[1];
  v33 = *(v30 + 16);
  v91 = v25;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v22, v19, 0, 1, v97, v31, v32, v33, v25);
  v34 = MusicVideo.title.getter();
  v87 = v35;
  v88 = v34;
  v86 = MusicVideo.artistName.getter();
  v85 = v36;
  v84 = MusicVideo.albumTitle.getter();
  v83 = v37;
  MusicVideo.duration.getter();
  v81 = static Duration.seconds(_:)();
  v80 = v38;
  MusicVideo.favoriteStatus.getter();
  v39 = v78;
  (*(v11 + 104))(v13, enum case for MusicFavoriteStatus.favorited(_:), v78);
  v79 = static MusicFavoriteStatus.== infix(_:_:)();
  v40 = *(v11 + 8);
  v40(v13, v39);
  v40(v16, v39);
  MusicVideo.contentRating.getter();
  v41 = v96;
  v42 = v82;
  v43 = v77;
  v76 = *(v96 + 16);
  v76(v82, a1, v77);
  v44 = *(v41 + 56);
  v45 = v42;
  v46 = v43;
  v44(v42, 0, 1, v43);
  v47 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
  v48 = v90;
  swift_beginAccess();
  v49 = v89;
  sub_1000089F8(v48 + v47, v89, &unk_1011846B0);
  sub_100519250(&qword_101193AC0, &type metadata accessor for MusicVideo);
  LODWORD(v78) = static Optional<A>.==~ infix(_:_:)();
  sub_1000095E8(v49, &unk_1011846B0);
  sub_1000095E8(v45, &unk_1011846B0);
  v89 = sub_1007BA8CC();
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  sub_100519250(&unk_101193C00, &type metadata accessor for MusicVideo);
  v82 = Player.state<A>(for:)(a1);
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = v93;
  v76(v93, a1, v46);
  v52 = v96;
  v53 = (*(v96 + 80) + 32) & ~*(v96 + 80);
  v54 = swift_allocObject();
  v55 = v94;
  *(v54 + 16) = v50;
  *(v54 + 24) = v55;
  (*(v52 + 32))(v54 + v53, v51, v46);

  v56 = v55;
  v57 = sub_100508068();
  v58 = *&v57[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];

  sub_100518F70(v91, v28, type metadata accessor for ArtworkImage.Info);
  v59 = &v28[v26[11]];
  v60 = v87;
  *v59 = v88;
  *(v59 + 1) = v60;
  v61 = &v28[v26[12]];
  v62 = v85;
  *v61 = v86;
  v61[1] = v62;
  v63 = &v28[v26[13]];
  v64 = v83;
  *v63 = v84;
  v63[1] = v64;
  v65 = &v28[v26[14]];
  v66 = v80;
  *v65 = v81;
  v65[1] = v66;
  v28[v26[15]] = v79 & 1;
  v28[v26[17]] = v78 & 1;
  v67 = &v28[v26[18]];
  sub_10010FC20(&unk_101184820);
  sub_100020674(&unk_101193C10, &unk_101184820);
  *v67 = ObservedObject.init(wrappedValue:)();
  v67[1] = v68;
  v69 = &v28[v26[19]];
  sub_10010FC20(&unk_101184830);
  sub_100020674(&unk_101193C20, &unk_101184830);
  *v69 = ObservedObject.init(wrappedValue:)();
  v69[1] = v70;
  *&v28[v26[20]] = 0;
  v71 = &v28[v26[21]];
  *v71 = sub_100518EFC;
  v71[1] = v54;
  *&v28[v26[22]] = v58;
  v72 = v26[23];
  *&v28[v72] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v73 = v26[24];
  *&v28[v73] = swift_getKeyPath();
  sub_10010FC20(&unk_101184840);
  swift_storeEnumTagMultiPayload();

  sub_100519250(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_100020674(&unk_101193BF0, &unk_101184800);

  View.artworkCaching(owner:)();

  return sub_1000095E8(v28, &unk_101184800);
}

uint64_t sub_10050E270(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v137 = a4;
  v5 = type metadata accessor for UUID();
  v146 = *(v5 - 8);
  v147 = v5;
  __chkstk_darwin(v5);
  v145 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_1011838D0);
  v143 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v141 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = v8;
  __chkstk_darwin(v9);
  v11 = &v129 - v10;
  v12 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v12 - 8);
  v138 = &v129 - v13;
  v14 = sub_10010FC20(&unk_1011845D0);
  v140 = *(v14 - 8);
  v15 = *(v140 + 64);
  __chkstk_darwin(v14 - 8);
  v142 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v155 = &v129 - v17;
  v18 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v21 - 8);
  v136 = &v129 - v22;
  v23 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v23 - 8);
  v139 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v129 - v26;
  __chkstk_darwin(v28);
  v151 = &v129 - v29;
  __chkstk_darwin(v30);
  v150 = &v129 - v31;
  v32 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v32 - 8);
  v149 = &v129 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v154 = &v129 - v35;
  v36 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v36 - 8);
  v38 = &v129 - v37;
  v39 = type metadata accessor for MusicVideo();
  v152 = *(v39 - 8);
  v153 = v39;
  __chkstk_darwin(v39);
  v41 = &v129 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for IndexPath();
  v157 = *(v42 - 8);
  v158 = v42;
  __chkstk_darwin(v42);
  v44 = &v129 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v156 = &v129 - v46;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v135 = v27;
    v148 = v11;
    v48 = result;
    v49 = sub_100508068();
    v50 = [v49 indexPathForCell:a3];

    if (v50)
    {
      v133 = v15;
      v134 = v41;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = v156;
      v51 = v157;
      v53 = v158;
      (*(v157 + 32))(v156, v44, v158);
      v54 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController;

      sub_10037B658(v52, v38);

      v56 = v152;
      v55 = v153;
      if ((*(v152 + 48))(v38, 1, v153) == 1)
      {
        (*(v51 + 8))(v52, v53);

        sub_1000095E8(v38, &unk_1011846B0);
        return 0;
      }

      else
      {
        v57 = v134;
        (*(v56 + 32))(v134, v38, v55);
        sub_10010FC20(&unk_101183900);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_100EBC6B0;
        *(v58 + 56) = v55;
        *(v58 + 64) = &protocol witness table for MusicVideo;
        v59 = sub_10001C8B8((v58 + 32));
        (*(v56 + 16))(v59, v57, v55);
        v60 = [v48 traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        v132 = v173[0];
        v61 = *(*&v48[v54] + 48);
        v62 = *(*v61 + 96);
        swift_beginAccess();
        sub_100518E64(v61 + v62, v20, _s11MusicVideosVMa);
        v63 = v136;
        sub_1006FCD38(v136);
        sub_100518FE8(v20, _s11MusicVideosVMa);
        v64 = v150;
        PlaybackIntentDescriptor.IntentType.init(_:)(v63, v150);
        memset(v173, 0, 40);
        if (qword_10117F608 != -1)
        {
          swift_once();
        }

        v65 = qword_101218AD8;
        sub_1000089F8(v64, v151, &unk_1011838E0);
        v136 = v65;
        v66 = UIViewController.playActivityInformation.getter();
        v68 = v67;
        v70 = v69;
        v72 = v71;
        sub_1000089F8(v173, &v165, &unk_101183910);
        v137 = v48;
        if (*(&v166 + 1))
        {
          sub_100059A8C(&v165, &v169);
          v73 = v135;
        }

        else
        {
          *&v174 = v48;
          sub_100009F78(0, &qword_101183D40);
          v74 = v48;
          sub_10010FC20(&unk_101183920);
          if (swift_dynamicCast())
          {
            sub_100059A8C(&v177, &v169);
            v73 = v135;
          }

          else
          {
            v179 = 0;
            v177 = 0u;
            v178 = 0u;
            *&v169 = v74;
            v75 = v74;
            v76 = String.init<A>(reflecting:)();
            v170 = &type metadata for Player.CommandIssuerIdentity;
            v171 = &protocol witness table for Player.CommandIssuerIdentity;
            *&v169 = v76;
            *(&v169 + 1) = v77;
            v73 = v135;
            if (*(&v178 + 1))
            {
              sub_1000095E8(&v177, &unk_101183910);
            }
          }

          v64 = v150;
          if (*(&v166 + 1))
          {
            sub_1000095E8(&v165, &unk_101183910);
          }
        }

        v78 = v154;
        Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v136, v151, v66, v68, v70, v72, &v169, v154);
        sub_1000095E8(v173, &unk_101183910);
        sub_1000095E8(v64, &unk_1011838E0);
        v79 = type metadata accessor for Actions.PlaybackContext();
        v80 = *(v79 - 8);
        (*(v80 + 56))(v78, 0, 1, v79);
        v81 = type metadata accessor for PlaylistContext();
        (*(*(v81 - 8) + 56))(v155, 1, 1, v81);
        v82 = v157;
        v83 = v138;
        v84 = v158;
        (*(v157 + 16))(v138, v156, v158);
        (*(v82 + 56))(v83, 0, 1, v84);
        v85 = v137;
        sub_100376BAC(v83, v173);
        sub_1000095E8(v83, &unk_10118BCE0);
        v86 = v148;
        sub_10050F5FC(v148);
        v87 = type metadata accessor for Actions.MetricsReportingContext();
        (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
        sub_100008FE4(v58 + 32, v172);

        sub_1000089F8(v173, &v165, &unk_1011845E0);
        if (v168 == 1)
        {
          v179 = 0;
          v177 = 0u;
          v178 = 0u;
          v180 = xmmword_100EBCEF0;
          PresentationSource.init(viewController:position:)(v85, &v177, &v169);
          v88 = v149;
          if (v168 != 1)
          {
            sub_1000095E8(&v165, &unk_1011845E0);
          }
        }

        else
        {
          sub_10012B828(&v165, &v169);
          v88 = v149;
        }

        swift_getObjectType();
        v89 = swift_conformsToProtocol2();
        if (v89)
        {
          v138 = v89;
          v90 = v85;
          v150 = v85;
        }

        else
        {
          v150 = 0;
          v138 = 0;
        }

        v151 = swift_allocBox();
        v92 = v91;
        sub_1000089F8(v154, v88, &unk_10118AB20);
        v93 = *(v80 + 48);
        if (v93(v88, 1, v79) == 1)
        {
          v94 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
          (*(*(v94 - 8) + 56))(v73, 1, 1, v94);
          v167 = 0;
          v165 = 0u;
          v166 = 0u;
          sub_1000089F8(v73, v139, &unk_1011838E0);
          v136 = v136;
          v95 = UIViewController.playActivityInformation.getter();
          v130 = v97;
          v131 = v96;
          v99 = v98;
          sub_1000089F8(&v165, &v163, &unk_101183910);
          if (v164)
          {
            sub_100059A8C(&v163, &v174);
          }

          else
          {
            v162 = v85;
            sub_100009F78(0, &qword_101183D40);
            v100 = v85;
            sub_10010FC20(&unk_101183920);
            if (swift_dynamicCast())
            {
              sub_100059A8C(&v159, &v174);
              v88 = v149;
            }

            else
            {
              v161 = 0;
              v159 = 0u;
              v160 = 0u;
              *&v174 = v100;
              v101 = v100;
              v102 = String.init<A>(reflecting:)();
              *(&v175 + 1) = &type metadata for Player.CommandIssuerIdentity;
              v176 = &protocol witness table for Player.CommandIssuerIdentity;
              *&v174 = v102;
              *(&v174 + 1) = v103;
              v88 = v149;
              if (*(&v160 + 1))
              {
                sub_1000095E8(&v159, &unk_101183910);
              }
            }

            v73 = v135;
            if (v164)
            {
              sub_1000095E8(&v163, &unk_101183910);
            }
          }

          Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v136, v139, v95, v131, v130, v99, &v174, v92);
          sub_1000095E8(&v165, &unk_101183910);
          sub_1000095E8(v73, &unk_1011838E0);
          if (v93(v88, 1, v79) != 1)
          {
            sub_1000095E8(v88, &unk_10118AB20);
          }
        }

        else
        {
          sub_100518F70(v88, v92, type metadata accessor for Actions.PlaybackContext);
        }

        v104 = &v92[*(v79 + 28)];
        sub_1000089F8(v104, &v174, &unk_101183910);
        if (*(&v175 + 1))
        {
          sub_100059A8C(&v174, &v165);
        }

        else
        {
          *&v165 = v137;
          v105 = v137;
          v106 = String.init<A>(reflecting:)();
          *(&v166 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v167 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v165 = v106;
          *(&v165 + 1) = v107;
          if (*(&v175 + 1))
          {
            sub_1000095E8(&v174, &unk_101183910);
          }
        }

        sub_10010FC20(&unk_101183930);
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_100EBDC20;
        *(v108 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v108 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v108 + 32) = 0x4D747865746E6F43;
        *(v108 + 40) = 0xEB00000000756E65;
        sub_100008FE4(&v165, v108 + 72);
        v109 = static Player.CommandIssuer<>.combining(_:)();
        v111 = v110;

        sub_10000959C(&v165);
        *(&v166 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v167 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v165 = v109;
        *(&v165 + 1) = v111;
        sub_10006B010(&v165, v104, &unk_101183910);
        sub_100008FE4(v172, &v165);
        sub_10010FC20(&unk_10118AB50);
        v149 = String.init<A>(describing:)();
        v139 = v112;
        v136 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100008FE4(v172, &v163);
        sub_10012B7A8(&v169, &v165);
        v113 = v141;
        sub_1000089F8(v148, v141, &unk_1011838D0);
        v114 = v142;
        sub_1000089F8(v155, v142, &unk_1011845D0);
        v115 = (*(v143 + 80) + 160) & ~*(v143 + 80);
        v116 = (v144 + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
        v117 = (v116 + 15) & 0xFFFFFFFFFFFFFFF8;
        v118 = (*(v140 + 80) + v117 + 8) & ~*(v140 + 80);
        v144 = (v118 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
        v119 = (v118 + v133 + 31) & 0xFFFFFFFFFFFFFFF8;
        v120 = swift_allocObject();
        sub_100059A8C(&v163, v120 + 16);
        *(v120 + 56) = v132;
        sub_10012B828(&v165, v120 + 64);
        sub_10003D17C(v113, v120 + v115, &unk_1011838D0);
        *(v120 + v116) = v136;
        *(v120 + v117) = v151;
        sub_10003D17C(v114, v120 + v118, &unk_1011845D0);
        v121 = v120 + v144;
        v122 = v138;
        *v121 = v150;
        *(v121 + 8) = v122;
        *(v121 + 16) = 2;
        v123 = (v120 + v119);
        *v123 = variable initialization expression of Library.Context.playlistVariants;
        v123[1] = 0;
        swift_unknownObjectRetain();

        v124 = v145;
        UUID.init()();
        v125 = UUID.uuidString.getter();
        v127 = v126;
        (*(v146 + 8))(v124, v147);
        v181._countAndFlagsBits = v149;
        v181._object = v139;
        ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v181, v125, v127, sub_10021953C, v120, &v174);
        swift_unknownObjectRelease();
        sub_10012BA6C(&v169);
        sub_10000959C(v172);

        v128 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
        v169 = v174;
        sub_100015BB0(&v169);
        v165 = v175;
        sub_100015BB0(&v165);

        sub_1000095E8(v148, &unk_1011838D0);
        sub_1000095E8(v173, &unk_1011845E0);
        sub_1000095E8(v155, &unk_1011845D0);
        sub_1000095E8(v154, &unk_10118AB20);
        (*(v152 + 8))(v134, v153);
        (*(v157 + 8))(v156, v158);
        return v128;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_10050F5FC@<X0>(char *a1@<X8>)
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
  v15 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v15, v14, &unk_1011838D0);
  v16 = type metadata accessor for Actions.MetricsReportingContext();
  v17 = *(v16 - 1);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return sub_100518F70(v14, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  v41 = v1;
  sub_1000095E8(v14, &unk_1011838D0);
  v18 = MetricsEvent.Page.libraryMusicVideosList.unsafeMutableAddressor();
  sub_100518E64(v18, v8, type metadata accessor for MetricsEvent.Page);
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
  sub_100518E64(a1, v11, type metadata accessor for Actions.MetricsReportingContext);
  (*(v17 + 56))(v11, 0, 1, v16);
  v33 = v41;
  swift_beginAccess();
  sub_10006B010(v11, v33 + v15, &unk_1011838D0);
  return swift_endAccess();
}

uint64_t (*sub_10050FA0C())(uint64_t a1)
{
  v1 = (v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___leadingSwipeActions);
  v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___leadingSwipeActions);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___leadingSwipeActions);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = *v1;
    v3 = sub_100519248;
    *v1 = sub_100519248;
    v1[1] = v4;

    sub_100020438(v5);
  }

  sub_100030444(v2);
  return v3;
}

uint64_t (*sub_10050FAC8())(uint64_t a1)
{
  v1 = (v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___trailingSwipeActions);
  v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___trailingSwipeActions);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___trailingSwipeActions);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = *v1;
    v3 = sub_100519240;
    *v1 = sub_100519240;
    v1[1] = v4;

    sub_100020438(v5);
  }

  sub_100030444(v2);
  return v3;
}

uint64_t sub_10050FE84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10010FC20(&unk_10118A650);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  v9 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v10 = *v9 == a2 && v9[1] == a3;
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != a2 || v11 != a3)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
LABEL_14:
        sub_10050B4B0(v8);
        goto LABEL_15;
      }

      strcpy(v17, "Unknown kind=");
      v17[7] = -4864;
      v14._countAndFlagsBits = a2;
      v14._object = a3;
      String.append(_:)(v14);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    goto LABEL_14;
  }

  sub_10050B22C(v8);
LABEL_15:
  sub_100009F78(0, &unk_101184750);
  v15 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v6 + 8))(v8, v5);
  return v15;
}

id sub_1005101E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48 = a1;
  v5 = sub_10010FC20(&unk_101193A90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v45 - v7;
  v9 = sub_10010FC20(&unk_101193A80);
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  v12 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  __chkstk_darwin(v18);
  v47 = &v45 - v19;
  __chkstk_darwin(v20);
  v22 = &v45 - v21;
  sub_10037B658(a2, &v45 - v21);
  v23 = sub_100508068();
  v24 = v23[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

  if (v24 & 1) != 0 || (*(*(v3 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_layoutVariantController) + 32))
  {
    sub_10050B738(v8);
    v25 = sub_1007F8490(v8, a2, v22);
    (*(v6 + 8))(v8, v5);
    v26 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
    swift_beginAccess();
    sub_1000089F8(v3 + v26, v17, &unk_1011846B0);
    v27 = type metadata accessor for MusicVideo();
    sub_100519250(&qword_101193AC0, &type metadata accessor for MusicVideo);
    v28 = static Optional<A>.==~ infix(_:_:)();
    sub_1000095E8(v17, &unk_1011846B0);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v28 & 1;
    *(v30 + 24) = v29;
    v31 = v25;

    UICollectionViewCell.configurationUpdateHandler.setter();

    sub_1000089F8(v22, v14, &unk_1011846B0);
    v32 = *(v27 - 8);
    if ((*(v32 + 48))(v14, 1, v27) == 1)
    {
      sub_1000095E8(v14, &unk_1011846B0);
      v49 = 0u;
      v50 = 0u;
      v51 = 0;
    }

    else
    {
      *(&v50 + 1) = v27;
      v51 = &protocol witness table for MusicVideo;
      v33 = sub_10001C8B8(&v49);
      (*(v32 + 32))(v33, v14, v27);
    }
  }

  else
  {
    sub_10050B9D8(v11);
    v34 = sub_1007F7F54(v11, a2, v22);
    (*(v45 + 8))(v11, v46);
    v35 = Corner.medium.unsafeMutableAddressor();
    v36 = *v35;
    v37 = v35[1];
    v38 = *(v35 + 16);
    v39 = swift_allocObject();
    *(v39 + 16) = v36;
    *(v39 + 24) = v37;
    *(v39 + 32) = v38;
    UICollectionViewCell.configurationUpdateHandler.setter();
    v40 = v47;
    sub_1000089F8(v22, v47, &unk_1011846B0);
    v41 = type metadata accessor for MusicVideo();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v40, 1, v41) == 1)
    {
      sub_1000095E8(v40, &unk_1011846B0);
      v49 = 0u;
      v50 = 0u;
      v51 = 0;
    }

    else
    {
      *(&v50 + 1) = v41;
      v51 = &protocol witness table for MusicVideo;
      v43 = sub_10001C8B8(&v49);
      (*(v42 + 32))(v43, v40, v41);
    }

    v31 = sub_1004F24B0(&v49);
  }

  sub_1000095E8(v22, &unk_1011846B0);
  sub_1000095E8(&v49, &qword_1011A3DD0);
  return v31;
}

void sub_1005107FC(void *a1, uint64_t a2, char a3)
{
  v5 = sub_10010FC20(&qword_101183A90);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v21 - v7;
  v9 = [a1 contentView];
  if (a3)
  {
    v10 = [*HI.Color.prominentBackgroundColor.unsafeMutableAddressor() colorWithAlphaComponent:0.22];
  }

  else
  {
    v10 = 0;
  }

  [v9 setBackgroundColor:v10];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong traitCollection];

    v14 = [v13 userInterfaceIdiom];
    if (v14 == 6)
    {
      v15 = [a1 contentView];
      [v15 setClipsToBounds:UICellConfigurationState.isSwiped.getter() & 1];

      v16 = [a1 contentView];
      if (a3)
      {
        v17 = UIView.Corner.large.unsafeMutableAddressor();
        v18 = type metadata accessor for UIView.Corner();
        v19 = *(v18 - 8);
        (*(v19 + 16))(v8, v17, v18);
        (*(v19 + 56))(v8, 0, 1, v18);
      }

      else
      {
        v20 = type metadata accessor for UIView.Corner();
        (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
      }

      UIView.corner.setter();
    }
  }
}

BOOL sub_100510BA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = UICollectionView.isDraggingCell(at:)();

  (*(v5 + 8))(v7, v4);
  return (v9 & 1) == 0;
}

uint64_t sub_100510C9C(void *a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = v2;
  v120 = a2;
  v121 = a1;
  v4 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v4 - 8);
  v110 = &v98 - v5;
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v105 = &v98 - v7;
  v100 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v100);
  v101 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v9 - 8);
  v108 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v11 - 8);
  v109 = &v98 - v12;
  v113 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v99 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&qword_1011848A0);
  __chkstk_darwin(v14 - 8);
  v114 = &v98 - v15;
  v112 = type metadata accessor for PlaybackIntentDescriptor(0);
  v115 = *(v112 - 8);
  __chkstk_darwin(v112);
  v103 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v16;
  __chkstk_darwin(v17);
  v104 = &v98 - v18;
  v117 = type metadata accessor for GenericMusicItem();
  v19 = *(v117 - 8);
  __chkstk_darwin(v117);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v123 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v119 = &v98 - v24;
  v25 = type metadata accessor for MusicVideo();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v122 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v28 - 8);
  v107 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v98 - v31;
  __chkstk_darwin(v33);
  v35 = &v98 - v34;
  v37 = __chkstk_darwin(v36);
  v39 = &v98 - v38;
  v124 = v26;
  v40 = *(v26 + 56);
  v125 = v25;
  v106 = v40;
  (v40)(&v98 - v38, 1, 1, v25, v37);
  v41 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
  swift_beginAccess();
  sub_1000089F8(&v3[v41], v35, &unk_1011846B0);
  swift_beginAccess();
  sub_1002190E0(v39, &v3[v41], &unk_1011846B0);
  swift_endAccess();
  sub_1005157C4();
  sub_1000095E8(v35, &unk_1011846B0);
  v42 = v39;
  v43 = v120;
  sub_1000095E8(v42, &unk_1011846B0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v121 deselectItemAtIndexPath:isa animated:1];

  v45 = [v3 navigationItem];
  v46 = [v45 searchController];

  if (v46)
  {
    v47 = [v46 searchBar];

    [v47 resignFirstResponder];
  }

  v48 = *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController];
  sub_10037B658(v43, v32);
  v49 = v124;
  v50 = v125;
  if ((*(v124 + 48))(v32, 1, v125) == 1)
  {
    v51 = &unk_1011846B0;
    v52 = v32;
    return sub_1000095E8(v52, v51);
  }

  v121 = v3;
  v54 = v122;
  (*(v49 + 32))(v122, v32, v50);
  v55 = *(v49 + 16);
  v55(v21, v54, v50);
  v56 = v117;
  (*(v19 + 104))(v21, enum case for GenericMusicItem.musicVideo(_:), v117);
  v57 = v119;
  sub_100538C48(v21, v119);
  (*(v19 + 8))(v21, v56);
  v58 = v123;
  v59 = v116;
  v60 = v118;
  (*(v123 + 104))(v116, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v118);
  v61 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v64 = *(v58 + 8);
  v63 = v58 + 8;
  v62 = v64;
  v64(v59, v60);
  if (v61)
  {
    v120 = v62;
    v123 = v63;
    v65 = v107;
    v66 = v122;
    v67 = v125;
    v55(v107, v122, v125);
    v106(v65, 0, 1, v67);
    v68 = *(v48 + 48);
    v69 = *(*v68 + 96);
    swift_beginAccess();
    v70 = v68 + v69;
    v71 = v108;
    sub_100518E64(v70, v108, _s11MusicVideosVMa);
    v72 = v109;
    sub_1006FD384(v65, v109);
    sub_100518FE8(v71, _s11MusicVideosVMa);
    v73 = v111;
    v74 = v113;
    if ((*(v111 + 48))(v72, 1, v113) == 1)
    {
      sub_1000095E8(v72, &unk_10118CDB0);
      v75 = 1;
      v76 = v119;
      v77 = v114;
    }

    else
    {
      v81 = v99;
      (*(v73 + 32))(v99, v72, v74);
      v82 = v101;
      (*(v73 + 16))(v101, v81, v74);
      swift_storeEnumTagMultiPayload();
      v128 = 0;
      memset(v127, 0, sizeof(v127));
      v83 = v121;
      v126[0] = v121;
      v84 = v121;
      v85 = String.init<A>(reflecting:)();
      v126[3] = &type metadata for Player.CommandIssuerIdentity;
      v126[4] = &protocol witness table for Player.CommandIssuerIdentity;
      v126[0] = v85;
      v126[1] = v86;
      v87 = v84;
      v77 = v114;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v82, v127, 3, 0, 0, 1, 0, 1, v114, v83, v126);
      (*(v73 + 8))(v81, v74);
      v75 = 0;
      v76 = v119;
    }

    v88 = v60;
    v89 = v115;
    v90 = v112;
    (*(v115 + 56))(v77, v75, 1, v112);
    sub_1000095E8(v65, &unk_1011846B0);
    if ((*(v89 + 48))(v77, 1, v90) == 1)
    {
      v120(v76, v88);
      (*(v124 + 8))(v66, v125);
      v51 = &qword_1011848A0;
      v52 = v77;
      return sub_1000095E8(v52, v51);
    }

    v91 = v104;
    sub_100518F70(v77, v104, type metadata accessor for PlaybackIntentDescriptor);
    v92 = type metadata accessor for TaskPriority();
    v93 = v105;
    (*(*(v92 - 8) + 56))(v105, 1, 1, v92);
    v94 = v103;
    sub_100518E64(v91, v103, type metadata accessor for PlaybackIntentDescriptor);
    type metadata accessor for MainActor();
    v95 = static MainActor.shared.getter();
    v96 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v97 = swift_allocObject();
    *(v97 + 16) = v95;
    *(v97 + 24) = &protocol witness table for MainActor;
    sub_100518F70(v94, v97 + v96, type metadata accessor for PlaybackIntentDescriptor);
    sub_1001F4F78(0, 0, v93, &unk_100ECA700, v97);

    sub_100518FE8(v91, type metadata accessor for PlaybackIntentDescriptor);
    v120(v76, v88);
    return (*(v124 + 8))(v66, v125);
  }

  else
  {
    v78 = type metadata accessor for IndexPath();
    v79 = v110;
    (*(*(v78 - 8) + 56))(v110, 1, 1, v78);
    sub_100376BAC(v79, v127);
    sub_1000095E8(v79, &unk_10118BCE0);
    v80 = v122;
    sub_10085E3A4(v57, v122, v127);
    sub_10012BA6C(v127);
    v62(v57, v60);
    return (*(v124 + 8))(v80, v125);
  }
}

uint64_t sub_100511C10(uint64_t a1)
{
  v2 = type metadata accessor for MusicVideo();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1007351B8(v5, 1);
}

unint64_t sub_100511CD0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, id), char *a4)
{
  v132 = a4;
  v130 = a3;
  v4 = type metadata accessor for UUID();
  v143 = *(v4 - 8);
  __chkstk_darwin(v4);
  v142 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_1011838D0);
  v139 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v140 = v7;
  v141 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v147 = &v124 - v9;
  v10 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v10 - 8);
  v131 = &v124 - v11;
  v12 = sub_10010FC20(&unk_1011845D0);
  v136 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v137 = v13;
  v138 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v149 = &v124 - v15;
  v144 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v133 = *(v144 - 1);
  __chkstk_darwin(v144);
  v128 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v20 - 8);
  v22 = &v124 - v21;
  v23 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin(v27 - 8);
  v127 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v29 - 8);
  v134 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v135 = &v124 - v32;
  __chkstk_darwin(v33);
  v146 = &v124 - v34;
  __chkstk_darwin(v35);
  v37 = &v124 - v36;
  v38 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v38 - 8);
  v145 = &v124 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v148 = &v124 - v41;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v43 = Strong;
  v129 = v37;
  v126 = v4;
  sub_10010FC20(&unk_101183900);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100EBC6B0;
  v45 = type metadata accessor for MusicVideo();
  *(v44 + 56) = v45;
  *(v44 + 64) = &protocol witness table for MusicVideo;
  v124 = v44;
  v46 = sub_10001C8B8((v44 + 32));
  (*(*(v45 - 8) + 16))(v46, v130, v45);
  v47 = [v43 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v125 = v164;
  v48 = *(*&v43[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController] + 48);
  v49 = *(*v48 + 96);
  swift_beginAccess();
  sub_100518E64(v48 + v49, v19, _s11MusicVideosVMa);
  sub_1006FCD38(v22);
  sub_100518FE8(v19, _s11MusicVideosVMa);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1000095E8(v22, &unk_10118CDB0);
    v50 = 1;
    v51 = v43;
    v52 = v144;
    v53 = v129;
  }

  else
  {
    (*(v24 + 32))(v26, v22, v23);
    v55 = v128;
    (*(v24 + 16))(v128, v26, v23);
    v52 = v144;
    swift_storeEnumTagMultiPayload();
    v166 = 0;
    v164 = 0u;
    v165 = 0u;
    *&v160 = v43;
    v56 = v43;
    v57 = String.init<A>(reflecting:)();
    v161 = &type metadata for Player.CommandIssuerIdentity;
    v162 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v160 = v57;
    *(&v160 + 1) = v58;
    v59 = v56;
    v60 = v127;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v55, &v164, 3, 0, 0, 1, 0, 1, v127, v43, &v160);
    (*(v24 + 8))(v26, v23);
    v53 = v129;
    sub_100518E64(v60, v129, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    sub_100518FE8(v60, type metadata accessor for PlaybackIntentDescriptor);
    v50 = 0;
    v51 = v43;
  }

  v130 = v133[7];
  v130(v53, v50, 1, v52);
  v166 = 0;
  v164 = 0u;
  v165 = 0u;
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v61 = qword_101218AD8;
  sub_1000089F8(v53, v146, &unk_1011838E0);
  v133 = v61;
  v62 = UIViewController.playActivityInformation.getter();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  sub_1000089F8(&v164, &v156, &unk_101183910);
  if (*(&v157 + 1))
  {
    sub_100059A8C(&v156, &v160);
  }

  else
  {
    *&v167 = v51;
    sub_100009F78(0, &qword_101183D40);
    v69 = v51;
    sub_10010FC20(&unk_101183920);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v170, &v160);
    }

    else
    {
      v172 = 0;
      v170 = 0u;
      v171 = 0u;
      *&v160 = v69;
      v70 = v69;
      v71 = String.init<A>(reflecting:)();
      v161 = &type metadata for Player.CommandIssuerIdentity;
      v162 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v160 = v71;
      *(&v160 + 1) = v72;
      if (*(&v171 + 1))
      {
        sub_1000095E8(&v170, &unk_101183910);
      }
    }

    v53 = v129;
    if (*(&v157 + 1))
    {
      sub_1000095E8(&v156, &unk_101183910);
    }
  }

  v73 = v148;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v133, v146, v62, v64, v66, v68, &v160, v148);
  sub_1000095E8(&v164, &unk_101183910);
  sub_1000095E8(v53, &unk_1011838E0);
  v74 = type metadata accessor for Actions.PlaybackContext();
  v75 = *(v74 - 8);
  (*(v75 + 56))(v73, 0, 1, v74);
  v76 = type metadata accessor for PlaylistContext();
  (*(*(v76 - 8) + 56))(v149, 1, 1, v76);
  v77 = type metadata accessor for IndexPath();
  v78 = *(v77 - 8);
  v79 = v131;
  (*(v78 + 16))(v131, v132, v77);
  (*(v78 + 56))(v79, 0, 1, v77);
  sub_100376BAC(v79, &v164);
  sub_1000095E8(v79, &unk_10118BCE0);
  v80 = v147;
  sub_10050F5FC(v147);
  v81 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
  sub_100008FE4(v124 + 32, v163);

  sub_1000089F8(&v164, &v156, &unk_1011845E0);
  if (v159 == 1)
  {
    v172 = 0;
    v170 = 0u;
    v171 = 0u;
    v173 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v51, &v170, &v160);
    v82 = v145;
    if (v159 != 1)
    {
      sub_1000095E8(&v156, &unk_1011845E0);
    }
  }

  else
  {
    sub_10012B828(&v156, &v160);
    v82 = v145;
  }

  swift_getObjectType();
  v83 = swift_conformsToProtocol2();
  if (v83)
  {
    v131 = v83;
    v84 = v51;
    v132 = v51;
  }

  else
  {
    v131 = 0;
    v132 = 0;
  }

  v146 = swift_allocBox();
  v86 = v85;
  sub_1000089F8(v148, v82, &unk_10118AB20);
  v87 = *(v75 + 48);
  if (v87(v82, 1, v74) == 1)
  {
    v88 = v135;
    v130(v135, 1, 1, v144);
    v158 = 0;
    v156 = 0u;
    v157 = 0u;
    sub_1000089F8(v88, v134, &unk_1011838E0);
    v144 = v133;
    v89 = UIViewController.playActivityInformation.getter();
    v133 = v90;
    v130 = v91;
    v93 = v92;
    sub_1000089F8(&v156, &v154, &unk_101183910);
    if (v155)
    {
      sub_100059A8C(&v154, &v167);
      v94 = v145;
    }

    else
    {
      v153 = v51;
      sub_100009F78(0, &qword_101183D40);
      v95 = v51;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v150, &v167);
        v94 = v145;
      }

      else
      {
        v152 = 0;
        v150 = 0u;
        v151 = 0u;
        *&v167 = v95;
        v96 = v95;
        v97 = String.init<A>(reflecting:)();
        *(&v168 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v169 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v167 = v97;
        *(&v167 + 1) = v98;
        v94 = v145;
        if (*(&v151 + 1))
        {
          sub_1000095E8(&v150, &unk_101183910);
        }
      }

      if (v155)
      {
        sub_1000095E8(&v154, &unk_101183910);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v144, v134, v89, v133, v130, v93, &v167, v86);
    sub_1000095E8(&v156, &unk_101183910);
    sub_1000095E8(v135, &unk_1011838E0);
    if (v87(v94, 1, v74) != 1)
    {
      sub_1000095E8(v94, &unk_10118AB20);
    }
  }

  else
  {
    sub_100518F70(v82, v86, type metadata accessor for Actions.PlaybackContext);
  }

  v99 = *(v74 + 28);
  sub_1000089F8(&v86[v99], &v167, &unk_101183910);
  if (*(&v168 + 1))
  {
    sub_100059A8C(&v167, &v156);
  }

  else
  {
    *&v156 = v51;
    v100 = v51;
    v101 = String.init<A>(reflecting:)();
    *(&v157 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v158 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v156 = v101;
    *(&v156 + 1) = v102;
    if (*(&v168 + 1))
    {
      sub_1000095E8(&v167, &unk_101183910);
    }
  }

  sub_10010FC20(&unk_101183930);
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_100EBDC20;
  *(v103 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v103 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v103 + 32) = 0x4D747865746E6F43;
  *(v103 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v156, v103 + 72);
  v104 = static Player.CommandIssuer<>.combining(_:)();
  v106 = v105;

  sub_10000959C(&v156);
  *(&v157 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v158 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v156 = v104;
  *(&v156 + 1) = v106;
  sub_10006B010(&v156, &v86[v99], &unk_101183910);
  sub_100008FE4(v163, &v156);
  sub_10010FC20(&unk_10118AB50);
  v144 = String.init<A>(describing:)();
  v135 = v107;
  v134 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v163, &v154);
  sub_10012B7A8(&v160, &v156);
  v108 = v141;
  sub_1000089F8(v147, v141, &unk_1011838D0);
  v145 = v51;
  v109 = v138;
  sub_1000089F8(v149, v138, &unk_1011845D0);
  v110 = (*(v139 + 80) + 160) & ~*(v139 + 80);
  v111 = (v140 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
  v112 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
  v113 = (*(v136 + 80) + v112 + 8) & ~*(v136 + 80);
  v140 = (v113 + v137 + 7) & 0xFFFFFFFFFFFFFFF8;
  v114 = (v113 + v137 + 31) & 0xFFFFFFFFFFFFFFF8;
  v115 = swift_allocObject();
  sub_100059A8C(&v154, v115 + 16);
  *(v115 + 56) = v125;
  sub_10012B828(&v156, v115 + 64);
  sub_10003D17C(v108, v115 + v110, &unk_1011838D0);
  *(v115 + v111) = v134;
  *(v115 + v112) = v146;
  sub_10003D17C(v109, v115 + v113, &unk_1011845D0);
  v116 = v115 + v140;
  v117 = v131;
  *v116 = v132;
  *(v116 + 8) = v117;
  *(v116 + 16) = 2;
  v118 = (v115 + v114);
  *v118 = variable initialization expression of Library.Context.playlistVariants;
  v118[1] = 0;
  swift_unknownObjectRetain();

  v119 = v142;
  UUID.init()();
  v120 = UUID.uuidString.getter();
  v122 = v121;
  (*(v143 + 8))(v119, v126);
  v174._countAndFlagsBits = v144;
  v174._object = v135;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v174, v120, v122, sub_100217D28, v115, &v167);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v160);
  sub_10000959C(v163);

  v54 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v160 = v167;
  sub_100015BB0(&v160);
  v156 = v168;
  sub_100015BB0(&v156);

  sub_1000095E8(v147, &unk_1011838D0);
  sub_1000095E8(&v164, &unk_1011845E0);
  sub_1000095E8(v149, &unk_1011845D0);
  sub_1000095E8(v148, &unk_10118AB20);
  return v54;
}

uint64_t sub_1005131FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicVideo();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = a1;
  (*(v5 + 32))(&v14[v13], v7, v4);
  sub_1001F4CB8(0, 0, v10, &unk_100ED1528, v14);
}

uint64_t sub_1005133F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for MusicPropertySource();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for Track();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v9;
  v5[12] = v8;

  return _swift_task_switch(sub_100513548, v9, v8);
}

uint64_t sub_100513548()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v8 = type metadata accessor for MusicVideo();
  (*(*(v8 - 8) + 16))(v1, v7, v8);
  (*(v2 + 104))(v1, enum case for Track.musicVideo(_:), v3);
  (*(v6 + 104))(v4, enum case for MusicPropertySource.library(_:), v5);
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_1005136A8;
  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[2];

  return sub_100138C84(v12, v10, v11, 0);
}

uint64_t sub_1005136A8()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 40);
  v7 = *(*v0 + 32);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = *(v1 + 96);
  v9 = *(v1 + 88);

  return _swift_task_switch(sub_100513888, v9, v8);
}

uint64_t sub_100513888()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100513994(uint64_t a1, uint64_t a2, void *a3)
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

uint64_t sub_100513AF4()
{
  v0 = sub_10010FC20(&unk_1011846C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_10010FC20(&unk_101193AA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v10 = sub_10010FC20(&unk_10118D1E0);
  if ((*(*(v10 - 8) + 48))(v2, 1, v10) == 1)
  {
    sub_1000095E8(v2, &unk_1011846C0);
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_10118D1E0);
    (*(v4 + 32))(v9, v6, v3);
    if (MusicLibrarySectionedResponse.isEmpty.getter())
    {
      *(&v14 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
      v15 = &protocol witness table for UIContentUnavailableConfiguration;
      v11 = sub_10001C8B8(&v13);
      sub_1007DA8D8(v11);
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

uint64_t sub_100513E84(uint64_t a1)
{
  v49 = a1;
  v1 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v42 - v2;
  v46 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v46);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - v10;
  v12 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v48 = *(v12 - 8);
  __chkstk_darwin(v12);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin(v14 - 8);
  v44 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v47 = &v42 - v17;
  v18 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v18 - 8);
  v20 = &v42 - v19;
  v21 = type metadata accessor for MusicVideo();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = (&v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v26 = result;
    v42 = v5;
    v43 = v3;
    v27 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController;

    sub_10037B658(v49, v20);

    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {

      sub_1000095E8(v20, &unk_1011846B0);
      return 0;
    }

    (*(v22 + 32))(v24, v20, v21);
    v28 = *(*&v26[v27] + 48);
    v29 = *(*v28 + 96);
    swift_beginAccess();
    sub_100518E64(v28 + v29, v8, _s11MusicVideosVMa);
    sub_1006FCD38(v11);
    sub_100518FE8(v8, _s11MusicVideosVMa);
    v30 = v48;
    if ((*(v48 + 48))(v11, 1, v12) == 1)
    {
      sub_1000095E8(v11, &unk_10118CDB0);
      (*(v22 + 8))(v24, v21);

      return 0;
    }

    v31 = v45;
    (*(v30 + 32))(v45, v11, v12);
    v32 = v42;
    (*(v30 + 16))(v42, v31, v12);
    swift_storeEnumTagMultiPayload();
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    v52[0] = v26;
    v33 = v26;
    v34 = String.init<A>(reflecting:)();
    v52[3] = &type metadata for Player.CommandIssuerIdentity;
    v52[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v52[0] = v34;
    v52[1] = v35;
    v36 = v33;
    v37 = v44;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v32, v50, 3, 0, 0, 1, 0, 1, v44, v26, v52);
    (*(v30 + 8))(v31, v12);
    v38 = v47;
    sub_100518F70(v37, v47, type metadata accessor for PlaybackIntentDescriptor);
    v39 = type metadata accessor for IndexPath();
    v40 = v43;
    (*(*(v39 - 8) + 56))(v43, 1, 1, v39);
    sub_100376BAC(v40, v50);
    sub_1000095E8(v40, &unk_10118BCE0);
    v41 = sub_1007F5184(v24, v38, v50);

    sub_10012BA6C(v50);
    sub_100518FE8(v38, type metadata accessor for PlaybackIntentDescriptor);
    (*(v22 + 8))(v24, v21);
    return v41;
  }

  return result;
}

uint64_t sub_10051456C(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-v3];
  v5 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19[-v6];
  v8 = type metadata accessor for MusicVideo();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController;

    sub_10037B658(a1, v7);

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      sub_1000095E8(v7, &unk_1011846B0);
      return 0;
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      v15 = *(*&v13[v14] + 48) + *(**(*&v13[v14] + 48) + 96);
      swift_beginAccess();
      v16 = *(v15 + 8);
      v17 = type metadata accessor for IndexPath();
      (*(*(v17 - 8) + 56))(v4, 1, 1, v17);

      sub_100376BAC(v4, v19);
      sub_1000095E8(v4, &unk_10118BCE0);
      v18 = sub_100519980(v11, v16, v19);

      sub_10012BA6C(v19);
      (*(v9 + 8))(v11, v8);
      return v18;
    }
  }

  return result;
}

id sub_100514870()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextBarButtonItem);
  }

  else
  {
    sub_100009F78(0, &qword_101181580);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = v0;
    v6 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, sub_100519238, v4);

    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void *sub_100514954()
{
  v0 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = _swiftEmptyArrayStorage;
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_100508068();
    v7 = v6[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

    if (v7)
    {
      isa = 0;
    }

    else
    {

      isa = sub_100597E50().super.super.isa;
    }

    v19[4] = isa;
    v9 = *(*&v5[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController] + 48);
    v10 = *(*v9 + 96);
    swift_beginAccess();
    sub_100518E64(v9 + v10, v2, _s11MusicVideosVMa);
    v11 = swift_allocObject();
    swift_weakInit();

    v12 = sub_100211A30(sub_1005192B4, v11).super.super.isa;

    sub_100518FE8(v2, _s11MusicVideosVMa);

    v13 = 0;
    v19[5] = v12;
    v18 = _swiftEmptyArrayStorage;
    while (v13 != 2)
    {
      v14 = v19[v13++ + 4];
      if (v14)
      {
        v15 = v14;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v18;
      }
    }

    sub_10010FC20(&qword_10118CE10);
    swift_arrayDestroy();
  }

  return v4;
}

objc_class *sub_100514BDC()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playBarButtonItem);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100009F78(0, &qword_101181580);

    v5 = SymbolButton.Intent.title.getter();
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() systemImageNamed:v8];

    sub_100009F78(0, &qword_1011839A0);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10051921C;
    *(v10 + 24) = v4;
    *(v10 + 32) = 0;

    v11 = v0;
    v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v13 = SymbolButton.Intent.accessibilityIdentifier.getter(0);
    v15 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v5, v7, v9, 0, v12, 0, v13, v14);

    v16 = *(v11 + v1);
    *(v11 + v1) = v15;
    v3 = v15;

    v2 = 0;
  }

  v17 = v2;
  return v3;
}

uint64_t sub_100514DE0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v2);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v8 - 8);
  v10 = v32 - v9;
  v11 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v15 - 8);
  v17 = v32 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v32[1] = v2;
    v33 = a1;
    v20 = type metadata accessor for MusicVideo();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    v21 = *(*&v19[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController] + 48);
    v22 = *(*v21 + 96);
    swift_beginAccess();
    sub_100518E64(v21 + v22, v7, _s11MusicVideosVMa);
    sub_1006FD384(v17, v10);
    sub_100518FE8(v7, _s11MusicVideosVMa);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1000095E8(v10, &unk_10118CDB0);
      v23 = 1;
      v24 = v33;
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      (*(v12 + 16))(v4, v14, v11);
      swift_storeEnumTagMultiPayload();
      v36 = 0;
      memset(v35, 0, sizeof(v35));
      v34[0] = v19;
      v27 = v19;
      v28 = String.init<A>(reflecting:)();
      v34[3] = &type metadata for Player.CommandIssuerIdentity;
      v34[4] = &protocol witness table for Player.CommandIssuerIdentity;
      v34[0] = v28;
      v34[1] = v29;
      v30 = v27;
      v24 = v33;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v4, v35, 3, 0, 0, 1, 0, 1, v33, v19, v34);
      (*(v12 + 8))(v14, v11);
      v23 = 0;
    }

    v31 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v31 - 8) + 56))(v24, v23, 1, v31);

    return sub_1000095E8(v17, &unk_1011846B0);
  }

  else
  {
    v25 = type metadata accessor for PlaybackIntentDescriptor(0);
    return (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
  }
}

objc_class *sub_100515290()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___shuffleBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___shuffleBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___shuffleBarButtonItem);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100009F78(0, &qword_101181580);

    v5 = SymbolButton.Intent.title.getter();
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() systemImageNamed:v8];

    sub_100009F78(0, &qword_1011839A0);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1005192C8;
    *(v10 + 24) = v4;
    *(v10 + 32) = 1;

    v11 = v0;
    v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v13 = SymbolButton.Intent.accessibilityIdentifier.getter(1);
    v15 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v5, v7, v9, 0, v12, 0, v13, v14);

    v16 = *(v11 + v1);
    *(v11 + v1) = v15;
    v3 = v15;

    v2 = 0;
  }

  v17 = v2;
  return v3;
}

id sub_100515494()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroup;
  v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroup);
  }

  else
  {
    sub_10010FC20(&qword_101183990);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100EBC6D0;
    v5 = v0;
    *(v4 + 32) = sub_100514BDC();
    *(v4 + 40) = sub_100515290();
    sub_100009F78(0, &qword_101181580);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100EBC6D0;
    v7 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playBarButtonItem);
    v8 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___shuffleBarButtonItem);
    *(v6 + 32) = v7;
    *(v6 + 40) = v8;
    v9 = v7;
    v10 = v8;
    v11.value._countAndFlagsBits = 0;
    v11.value._object = 0xE000000000000000;
    isa = UIBarButtonItem.init(representativeOf:configuredAfter:menuTitle:)(v6, v9, v11).super.super.isa;
    v13 = objc_allocWithZone(UIBarButtonItemGroup);
    v14 = Array._bridgeToObjectiveC()().super.isa;

    v15 = [v13 initWithBarButtonItems:v14 representativeItem:isa];

    v16 = *(v5 + v1);
    *(v5 + v1) = v15;
    v3 = v15;

    v2 = 0;
  }

  v17 = v2;
  return v3;
}

void *sub_10051561C()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroups;
  if (*(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroups))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroups);
  }

  else
  {
    v3 = v0;
    v4 = sub_100515494();
    v2 = UIBarButtonItemGroup.split()();

    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_100515694()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextAndFilterBarButtonGroup;
  v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextAndFilterBarButtonGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextAndFilterBarButtonGroup);
  }

  else
  {
    sub_10010FC20(&qword_101183990);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100EBC6D0;
    v5 = v0;
    *(v4 + 32) = sub_1003A6764();
    *(v4 + 40) = sub_100514870();
    sub_100009F78(0, &qword_101181580);
    v6 = static UIBarButtonItem.contextBarButtonItem(representativeOf:)(v4);
    v7 = objc_allocWithZone(UIBarButtonItemGroup);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = [v7 initWithBarButtonItems:isa representativeItem:v6];

    v10 = *(v5 + v1);
    *(v5 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_1005157C4()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-v6];
  v8 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17[-v9];
  *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_hasScrolledToProminentItem) = 0;
  v11 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
  swift_beginAccess();
  sub_1000089F8(v0 + v11, v10, &unk_1011846B0);
  type metadata accessor for MusicVideo();
  sub_100519250(&qword_101193AC0, &type metadata accessor for MusicVideo);
  v12 = static Optional<A>.==~ infix(_:_:)();
  sub_1000095E8(v10, &unk_1011846B0);
  if ((v12 & 1) != 0 && (v13 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentItemIndexPath, swift_beginAccess(), sub_1000089F8(v0 + v13, v7, &unk_10118BCE0), (*(v2 + 48))(v7, 1, v1) != 1))
  {
    (*(v2 + 32))(v4, v7, v1);
    v14 = sub_100508068();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v16 = [v14 cellForItemAtIndexPath:isa];

    (*(v2 + 8))(v4, v1);
    sub_10050423C(&OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_hasScrolledToProminentItem, &OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentItemIndexPath, sub_100508068, &OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView);
  }

  else
  {
    sub_10050A588();
  }
}

uint64_t sub_100515AE4(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v19[-v11];
  v13 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentItemIndexPath;
  swift_beginAccess();
  sub_1000089F8(v1 + v13, v12, &unk_10118BCE0);
  swift_beginAccess();
  sub_1002190E0(a1, v1 + v13, &unk_10118BCE0);
  swift_endAccess();
  sub_1000089F8(v12, v9, &unk_10118BCE0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1000095E8(a1, &unk_10118BCE0);
    sub_1000095E8(v12, &unk_10118BCE0);
    v12 = v9;
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    v14 = sub_100508068();
    sub_10010FC20(&qword_10118AC80);
    v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100EBC6B0;
    (*(v4 + 16))(v16 + v15, v6, v3);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 reconfigureItemsAtIndexPaths:isa];

    sub_1000095E8(a1, &unk_10118BCE0);
    (*(v4 + 8))(v6, v3);
  }

  return sub_1000095E8(v12, &unk_10118BCE0);
}

uint64_t sub_100515DF4(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v20[-v7];
  v9 = type metadata accessor for Track();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for MusicVideo();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v12, a1, v9, v15);
  if ((*(v10 + 88))(v12, v9) != enum case for Track.musicVideo(_:))
  {
    return (*(v10 + 8))(v12, v9);
  }

  (*(v10 + 96))(v12, v9);
  (*(v14 + 32))(v17, v12, v13);
  (*(v14 + 16))(v8, v17, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  v18 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
  swift_beginAccess();
  sub_1000089F8(v1 + v18, v5, &unk_1011846B0);
  swift_beginAccess();
  sub_1002190E0(v8, v1 + v18, &unk_1011846B0);
  swift_endAccess();
  sub_1005157C4();
  sub_1000095E8(v5, &unk_1011846B0);
  sub_1000095E8(v8, &unk_1011846B0);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_100516134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10010FC20(&unk_101181520);
  v6[5] = swift_task_alloc();
  v7 = *(sub_10010FC20(&unk_10118BCE0) - 8);
  v6[6] = v7;
  v6[7] = *(v7 + 64);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_10051624C, 0, 0);
}

uint64_t sub_10051624C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v5 = v0[4];
  v4 = v0[5];
  sub_100505184(v0[3], v2);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_1000089F8(v2, v1, &unk_10118BCE0);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v5;
  sub_10003D17C(v1, v9 + v8, &unk_10118BCE0);
  sub_1001F4CB8(0, 0, v4, &unk_100ED1418, v9);

  sub_1000095E8(v2, &unk_10118BCE0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005163F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_10010FC20(&unk_10118BCE0);
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005164C8, v7, v6);
}

uint64_t sub_1005164C8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[10];
    sub_1000089F8(v0[9], v3, &unk_10118BCE0);
    sub_100515AE4(v3);
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_10050423C(&OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_hasScrolledToProminentItem, &OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentItemIndexPath, sub_100508068, &OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView);
  }

  v6 = v0[1];

  return v6();
}

uint64_t type metadata accessor for LibraryMusicVideosViewController()
{
  result = qword_101193A68;
  if (!qword_101193A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005168C4()
{
  sub_10003920C(319, &unk_101184560, &unk_10118A650);
  if (v0 <= 0x3F)
  {
    sub_10003920C(319, &unk_101184590, &unk_101193A80);
    if (v1 <= 0x3F)
    {
      sub_10003920C(319, &unk_1011845A0, &unk_101193A90);
      if (v2 <= 0x3F)
      {
        sub_10003920C(319, &unk_1011849E0, &unk_101193AA0);
        if (v3 <= 0x3F)
        {
          sub_100039720(319, &qword_1011845B0, type metadata accessor for Actions.MetricsReportingContext);
          if (v4 <= 0x3F)
          {
            sub_100039720(319, &unk_101193AB0, &type metadata accessor for MusicVideo);
            if (v5 <= 0x3F)
            {
              sub_100039720(319, &unk_101192480, &type metadata accessor for IndexPath);
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100516BBC()
{
  v1 = v0;
  v2 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011845C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBE260;
  v6 = sub_10031E9F8();
  isa = sub_100597E50().super.super.isa;
  v8 = [(objc_class *)isa children];

  sub_100009F78(0, &qword_10118CDE0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *(v5 + 32) = v6;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = v9;
  v10 = sub_10031EA10();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v34[3] = v11;
  v34[4] = v13;
  v14._countAndFlagsBits = 0x74726F532ELL;
  v14._object = 0xE500000000000000;
  String.append(_:)(v14);
  v15 = String._bridgeToObjectiveC()();

  v16 = *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController);
  v17 = *(v16 + 48);
  v18 = *(*v17 + 96);
  swift_beginAccess();
  sub_100518E64(v17 + v18, v4, _s11MusicVideosVMa);
  v19 = swift_allocObject();
  swift_weakInit();

  v20.super.super.isa = sub_100211A30(sub_100517254, v19).super.super.isa;

  sub_100518FE8(v4, _s11MusicVideosVMa);

  if (v20.super.super.isa)
  {
    v21 = [(objc_class *)v20.super.super.isa children];

    v20.super.super.isa = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v15 = 0;
  }

  *(v5 + 64) = v15;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = v20;
  v22 = sub_10031EA10();
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v34[0] = v23;
  v34[1] = v25;
  v26._countAndFlagsBits = 0x7265746C69462ELL;
  v26._object = 0xE700000000000000;
  String.append(_:)(v26);
  v27 = String._bridgeToObjectiveC()();

  v28 = *(v16 + 48);
  v29 = *(*v28 + 96);
  swift_beginAccess();
  sub_100518E64(v28 + v29, v4, _s11MusicVideosVMa);
  v30 = swift_allocObject();
  swift_weakInit();

  v31.super.super.isa = sub_1003977C4(sub_100517260, v30).super.super.isa;

  sub_100518FE8(v4, _s11MusicVideosVMa);

  if (v31.super.super.isa)
  {
    v32 = [(objc_class *)v31.super.super.isa children];

    v31.super.super.isa = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v27 = 0;
  }

  *(v5 + 96) = v27;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 120) = v31;
  return v5;
}

uint64_t sub_100516FB0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&unk_101193AA0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for MusicVideo() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_100516134(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_100517144(uint64_t a1)
{
  v4 = *(sub_10010FC20(&unk_10118BCE0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1005163F8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100517268(char *a1)
{
  v2 = _s11MusicVideosVMa(0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&a1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController];
  v7 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v8 = sub_10049CB78();

  v9 = *(v6 + 48);
  v10 = *(*v9 + 96);
  swift_beginAccess();
  sub_100518E64(v9 + v10, v5, _s11MusicVideosVMa);
  v5[16] = v8 & 1;
  return sub_100377E84(v5);
}

uint64_t sub_1005173A4(char *a1)
{
  v2 = _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s11MusicVideosVMa(0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&a1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController];
  v10 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v11 = v21[1];
  v12 = *(v9 + 48);
  v13 = *(*v12 + 96);
  swift_beginAccess();
  sub_100518E64(v12 + v13, v8, _s11MusicVideosVMa);

  *(v8 + 1) = v11;
  v14 = &v8[*(v5 + 40)];
  v15 = *v14;
  if (v14[1])
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_100375F28(v16 | v15);
  if ((v17 & 0xFF00) == 0x200)
  {
    sub_100518E64(&v8[*(v5 + 28)], v4, _s11MusicVideosV5ScopeOMa);
    v18 = type metadata accessor for Artist();
    if ((*(*(v18 - 8) + 48))(v4, 1, v18) == 1)
    {
      LOBYTE(v17) = 0;
      v19 = 256;
    }

    else
    {
      sub_100518FE8(v4, _s11MusicVideosV5ScopeOMa);
      v19 = 256;
      LOBYTE(v17) = 4;
    }
  }

  else
  {
    v19 = v17 & 0x100;
  }

  sub_1006FCB18(v19 | v17);
  return sub_100377E84(v8);
}

uint64_t sub_100517608(void *a1)
{
  v2 = sub_100508068();
  v3 = sub_100508460();
  [v2 setCollectionViewLayout:v3];

  sub_100508EB8();
  v4 = sub_100509210();
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  [*(v4 + 32) setHidesNavigationBarDuringPresentation:v6 == 1];
}

uint64_t sub_1005176C4()
{
  v0 = sub_10010FC20(&unk_1011846C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_10010FC20(&unk_101193AA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v7 = sub_10010FC20(&unk_10118D1E0);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &unk_1011846C0);
    return 0;
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_10118D1E0);
    v9 = MusicLibrarySectionedResponse.sections.getter();
    (*(v4 + 8))(v6, v3);
    v8 = *(v9 + 16);
  }

  return v8;
}

uint64_t sub_1005178C8(unint64_t a1)
{
  v20 = a1;
  v1 = sub_10010FC20(&unk_101181600);
  v19 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v19 - v2;
  v4 = sub_10010FC20(&qword_101193AF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = sub_10010FC20(&unk_1011846C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_10010FC20(&unk_101193AA0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v15 = sub_10010FC20(&unk_10118D1E0);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    sub_1000095E8(v10, &unk_1011846C0);
    return 0;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &unk_10118D1E0);
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
  sub_100020674(&unk_10118C260, &unk_101181600);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v18 = dispatch thunk of Collection.distance(from:to:)();
  (*(v19 + 8))(v3, v1);
  return v18;
}

id sub_100517CE4(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v5 = type metadata accessor for MusicVideo();
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
  sub_10037B658(v21, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v59 + 8))(v21, v61);
    sub_1000095E8(v4, &unk_1011846B0);
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
  v66 = sub_100518D2C;
  v67 = v49;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_100747E6C;
  v65 = &unk_1010B0360;
  v40 = _Block_copy(&aBlock);

  v66 = sub_100518D8C;
  v67 = v37;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_100747EBC;
  v65 = &unk_1010B0388;
  v41 = _Block_copy(&aBlock);

  v42 = isa;
  v43 = [v39 configurationWithIdentifier:isa previewProvider:v40 actionProvider:v41];

  _Block_release(v41);
  _Block_release(v40);
  (*(v53 + 8))(v58, v51);
  (*(v38 + 8))(v57, v61);

  return v43;
}

id sub_100518300(void *a1, void *a2)
{
  v38 = a2;
  v4 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for MusicVideo();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v37 = &v33 - v11;
  v12 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  *&v17 = __chkstk_darwin(v15).n128_u64[0];
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = [a1 identifier];
  sub_10010FC20(&unk_1011846A0);
  v20 = swift_dynamicCast();
  v21 = *(v16 + 56);
  if (v20)
  {
    v21(v14, 0, 1, v15);
    (*(v16 + 32))(v19, v14, v15);
    v35 = v2;
    sub_10037B658(v19, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      (*(v16 + 8))(v19, v15);
      sub_1000095E8(v6, &unk_1011846B0);
    }

    else
    {
      v22 = v37;
      v34 = *(v8 + 32);
      v34(v37, v6, v7);
      sub_1007BA8CC();
      v23 = MusicVideo.supportsContainerNavigation(itemState:)();

      if (v23)
      {
        v24 = sub_10003169C();
        if (v24)
        {
          v25 = v24;
          v26 = v8;
          v33 = v8;
          v27 = *(v8 + 16);
          v28 = v36;
          v27(v36, v37, v7);
          v29 = (*(v26 + 80) + 24) & ~*(v26 + 80);
          v30 = swift_allocObject();
          *(v30 + 16) = v25;
          v34((v30 + v29), v28, v7);
          aBlock[4] = sub_100518BD0;
          aBlock[5] = v30;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10002BC98;
          aBlock[3] = &unk_1010B02C0;
          v31 = _Block_copy(aBlock);

          [v38 addAnimations:v31];
          _Block_release(v31);

          (*(v33 + 8))(v37, v7);
          return (*(v16 + 8))(v19, v15);
        }

        (*(v8 + 8))(v37, v7);
      }

      else
      {
        (*(v8 + 8))(v22, v7);
      }

      (*(v16 + 8))(v19, v15);
    }
  }

  else
  {
    v21(v14, 1, 1, v15);
    sub_1000095E8(v14, &unk_10118BCE0);
  }

  return [v38 setPreferredCommitStyle:0];
}

void sub_100518828()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___globalHeaderRegistration;
  v3 = sub_10010FC20(&unk_10118A650);
  v4 = *(*(v3 - 8) + 56);
  v4(v1 + v2, 1, 1, v3);
  v4(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___headerRegistration, 1, 1, v3);
  v5 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___gridCellRegistration;
  v6 = sub_10010FC20(&unk_101193A80);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___listCellRegistration;
  v8 = sub_10010FC20(&unk_101193A90);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView) = 0;
  v9 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prefetchingController;
  v10 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v9) = sub_10003AAD8(0xD000000000000022, 0x8000000100E4E9D0);
  v11 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_response;
  v12 = sub_10010FC20(&unk_101193AA0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_dragDropController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___searchController) = 0;
  v13 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___actionMetricsReportingContext;
  v14 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleHeaderDataSource) = 0;
  v15 = (v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___leadingSwipeActions);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___trailingSwipeActions);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___shuffleBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroup) = 0;
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroups) = 0;
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextAndFilterBarButtonGroup) = 0;
  v17 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
  v18 = type metadata accessor for MusicVideo();
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_hasScrolledToProminentItem) = 0;
  v19 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentItemIndexPath;
  v20 = type metadata accessor for IndexPath();
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentIndexPathTask) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100518BD0()
{
  v1 = *(type metadata accessor for MusicVideo() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1005131FC(v2, v3);
}

uint64_t sub_100518C34(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicVideo() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1005133F8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100518D2C()
{
  v1 = *(type metadata accessor for MusicVideo() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100511C10(v2);
}

unint64_t sub_100518D8C(uint64_t a1)
{
  v3 = *(type metadata accessor for MusicVideo() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v1 + 16);
  v8 = (v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));

  return sub_100511CD0(a1, v7, (v1 + v4), v8);
}

uint64_t sub_100518E64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100518EFC(uint64_t a1)
{
  v3 = *(type metadata accessor for MusicVideo() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_10050E270(a1, v4, v5, v6);
}

uint64_t sub_100518F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100518FE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100519084()
{
  v1 = *(sub_10010FC20(&qword_101184718) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_100509960(v2, v3, v4, v5);
}

uint64_t sub_1005190F8()
{
  v1 = *(sub_10010FC20(&qword_101184718) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10050A1B8(v2, v3);
}

unint64_t sub_100519168()
{
  result = qword_101193C50;
  if (!qword_101193C50)
  {
    sub_1001109D0(&qword_101193AF0);
    sub_100519250(&unk_101193C58, &type metadata accessor for MusicVideo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193C50);
  }

  return result;
}

uint64_t sub_100519250(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1005192F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v47 = a3;
  v45 = type metadata accessor for MusicLibrary.DownloadAction();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10010FC20(&qword_101183E08);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v39 = &v38 - v7;
  v8 = type metadata accessor for MusicLibrary.AddAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_101193E20);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v48 = a2;
  v19 = static MusicLibrary.== infix(_:_:)();

  result = 0;
  if ((v19 & 1) == 0)
  {
    return result;
  }

  v49 = _swiftEmptyArrayStorage;
  static MusicLibraryAction<>.add.getter();
  type metadata accessor for Track();
  v21 = v46;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 32))(v15, v18, v12);
  v22 = (*(v13 + 88))(v15, v12);
  v23 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v13 + 8))(v15, v12);
  if (v22 == v23)
  {
    v24 = v48;
    sub_10051A6A0(v21, v48, &type metadata accessor for Track, &unk_1010B0FE8, sub_100533FF4, &unk_1010B1000);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v25 = v41;
    static MusicLibraryAction<>.download.getter();
    v26 = v39;
    v27 = v45;
    v28 = v48;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v43 + 8))(v25, v27);
    v29 = v42;
    v30 = v40;
    v31 = v44;
    (*(v42 + 32))(v40, v26, v44);
    LODWORD(v27) = (*(v29 + 88))(v30, v31);
    (*(v29 + 8))(v30, v31);
    v24 = v28;
    if (v27 == v23)
    {
      v32 = v47;
      sub_10051AAB4(v21, v28, v47, &type metadata accessor for Track, &unk_1010B1060, sub_100534348, &unk_1010B1078);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v33 = v32;
      goto LABEL_11;
    }
  }

  v33 = v47;
LABEL_11:
  v34 = sub_10051AEB8(v21, v24, v33);
  if (v34)
  {
    v35 = v34;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_100009F78(0, &unk_1011A49F0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v37 = [objc_opt_self() configurationWithActions:isa];

  [v37 _setSwipeActionsStyle:1];
  return v37;
}