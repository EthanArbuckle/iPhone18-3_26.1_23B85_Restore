uint64_t sub_10018F924(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = a5;
  v89 = a4;
  v109 = a2;
  v103 = type metadata accessor for TTRITreeViewExpandedState();
  v104 = *(v103 - 8);
  __chkstk_darwin(v103);
  v102 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v107 = *(v110 - 8);
  v12 = __chkstk_darwin(v110);
  v97 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v80 - v14;
  v16 = sub_100058000(&qword_10076B8B0);
  __chkstk_darwin(v16 - 8);
  v106 = &v80 - v17;
  v18 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v18 - 8);
  v20 = &v80 - v19;
  v81 = a1;
  v21 = *a1;
  v22 = *(v21 + 16);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v108 = v9;
  v24 = *(v9 + 56);
  v111.i64[0] = v8;
  v24(v20, 1, 1, v8);
  v25 = (v109[4])(Strong, v20);

  sub_1000079B4(v20, &unk_100771B40);
  v113 = &_swiftEmptyArrayStorage;
  v114.i64[0] = &_swiftEmptyDictionarySingleton;
  v114.i64[1] = &_swiftEmptyDictionarySingleton;
  v115 = 1;
  v84 = a3;
  v26 = (a3 + qword_100771778);
  swift_beginAccess();
  v80 = v26;
  v27 = *v26;
  v112 = *v26;
  v93 = v22;
  v92 = v25;
  if (v25 <= v22)
  {
    v28 = v22;
  }

  else
  {
    v28 = v25;
  }

  v91 = v28;
  v105 = v27;
  if (!v28)
  {

    v111 = vdupq_n_s64(&_swiftEmptyDictionarySingleton);
    v76 = &_swiftEmptyArrayStorage;
    v77 = 1;
    goto LABEL_46;
  }

  v85 = v21;
  v83 = v21 + 32;
  v109 = v108 + 2;
  ++v108;
  ++v107;
  v101 = (v104 + 16);
  v100 = (v104 + 88);
  v99 = enum case for TTRITreeViewExpandedState.notExpandable(_:);
  v98 = enum case for TTRITreeViewExpandedState.collapsed(_:);
  v96 = enum case for TTRITreeViewExpandedState.expanded(_:);

  v29 = 0;
  v82 = xmmword_10062D420;
  while (1)
  {
    v95 = v29;
    if (v29 < v93)
    {
      break;
    }

    v30 = 0;
    v46 = 0;
    v47 = 0;
    v48 = &_swiftEmptyArrayStorage;
    if (v29 < v92)
    {
      goto LABEL_24;
    }

LABEL_7:
    sub_1000301AC(v30);
LABEL_8:
    if (++v29 == v91)
    {

      v76 = v113;
      v111 = v114;
      v77 = v115;
      v105 = v112;
LABEL_46:
      v78 = v81;

      *v78 = v76;
      *(v78 + 1) = v111;
      *(v78 + 24) = v77;
      *v80 = v105;
    }
  }

  if (v29 >= *(v85 + 16))
  {
    goto LABEL_49;
  }

  v94 = *(v83 + 16 * v29);
  v31 = v94;
  v32 = *(*v94 + 144);
  swift_beginAccess();
  v33 = v31 + v32;
  v34 = v111.i64[0];
  *&v105 = *v109;
  (v105)(v11, v33, v111.i64[0]);
  v88 = v31;

  v35 = *(&v94 + 1);

  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
  v104 = *v108;
  (v104)(v11, v34);
  v36 = v106;
  sub_1000E9DB0(v15, v106);
  v37 = *v107;
  (*v107)(v15, v110);
  sub_1000079B4(v36, &qword_10076B8B0);
  if (v35 >> 62)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();
    if (!v38)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v38 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v38)
    {
      goto LABEL_22;
    }
  }

  if (v38 < 1)
  {
    goto LABEL_50;
  }

  v39 = 0;
  v40 = v35 & 0xC000000000000001;
  v41 = v35;
  do
  {
    if (v40)
    {
      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v42 = *(v35 + 8 * v39 + 32);
    }

    ++v39;
    v43 = *(*v42 + 144);
    swift_beginAccess();
    v44 = v111.i64[0];
    (v105)(v11, v42 + v43, v111.i64[0]);
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    (v104)(v11, v44);
    v45 = v106;
    sub_1000E9DB0(v15, v106);

    v37(v15, v110);
    sub_1000079B4(v45, &qword_10076B8B0);
    v35 = v41;
  }

  while (v38 != v39);
LABEL_22:
  v49 = swift_allocObject();
  *(v49 + 16) = v94;
  v50 = v88;

  sub_1001A0CEC(v50, 3u, v90, 0);

  v29 = v95;
  if (v95 >= v92)
  {
    v30 = sub_1001A2514;
    goto LABEL_7;
  }

  v48 = sub_10019071C(*(v49 + 16), *(v49 + 24), sub_100081680);
  v46 = sub_1001A2514;
  v47 = v49;
LABEL_24:
  v87 = v47;
  v88 = v46;
  sub_100058000(&unk_10076B770);
  swift_allocObject();
  v51 = sub_1000F4C58(v48);

  sub_1000DE3CC(v29, v51);
  v53 = v52;
  *&v94 = v54;
  sub_1000C9CD0(v54);
  v86 = v51;
  if (!(v53 >> 62))
  {
    v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v55)
    {
      goto LABEL_26;
    }

    goto LABEL_40;
  }

  v55 = _CocoaArrayWrapper.endIndex.getter();
  if (!v55)
  {
LABEL_40:
    v71 = v113;
    v72 = v113[2];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v72 >= v71[3] >> 1)
    {
      v71 = sub_100547654(isUniquelyReferenced_nonNull_native, v72 + 1, 1, v71);
      v113 = v71;
    }

    v29 = v95;
    v74 = v94;
    sub_1000EDC44(v72, v72, 1, v94, v53);
    v113 = v71;
    sub_1000C478C(v72, 1);
    sub_100058000(&qword_10076B780);
    inited = swift_initStackObject();
    *(inited + 16) = v82;
    *(inited + 32) = v74;

    sub_1000C4FC8(inited, v72);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1000C4FC8(v53, v72);
    sub_1001A0CEC(v74, 3u, v90, 0);
    sub_1000301AC(v88);

    goto LABEL_8;
  }

LABEL_26:
  v56 = 0;
  *&v105 = v53 & 0xC000000000000001;
  v104 = (v53 & 0xFFFFFFFFFFFFFF8);
  v57 = v53;
  while (2)
  {
    if (v105)
    {
      v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v62 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_47;
      }

LABEL_33:
      v63 = qword_1007A84C0;
      swift_beginAccess();
      v64 = v61 + v63;
      v65 = v102;
      v66 = v103;
      (*v101)(v102, v64, v103);
      v67 = (*v100)(v65, v66);
      if (v67 != v99)
      {
        if (v67 == v98)
        {
          v68 = *(*v61 + 144);
          swift_beginAccess();
          v69 = v111.i64[0];
          (*v109)(v11, v61 + v68, v111.i64[0]);
          v70 = v97;
          TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
          (*v108)(v11, v69);
          sub_10058C648(v15, v70);

          (*v107)(v15, v110);
LABEL_29:
          ++v56;
          v53 = v57;
          if (v62 == v55)
          {
            goto LABEL_40;
          }

          continue;
        }

        if (v67 != v96)
        {
          goto LABEL_51;
        }
      }

      v58 = *(*v61 + 144);
      swift_beginAccess();
      v59 = v111.i64[0];
      (*v109)(v11, v61 + v58, v111.i64[0]);
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
      (*v108)(v11, v59);
      v60 = v106;
      sub_1000E9DB0(v15, v106);

      (*v107)(v15, v110);
      sub_1000079B4(v60, &qword_10076B8B0);
      goto LABEL_29;
    }

    break;
  }

  if (v56 >= *(v104 + 2))
  {
    goto LABEL_48;
  }

  v61 = *(v53 + 8 * v56 + 32);

  v62 = v56 + 1;
  if (!__OFADD__(v56, 1))
  {
    goto LABEL_33;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10019071C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_100058000(&qword_10076B780);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10062D420;
  *(v5 + 32) = a1;
  v8 = v5;

  a3(v6);
  return v8;
}

void sub_1001907A8(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v16[0] = a1;
  v3 = *v2;
  v16[1] = swift_isaMask & *v2;
  v4 = *((swift_isaMask & v3) + 0x50);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v16 - v8;
  v10 = *(v4 - 8);
  __chkstk_darwin(v7);
  v12 = v16 - v11;
  if (sub_100189678(&qword_100771740, sub_100128A14))
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    (*(v10 + 56))(v9, 1, 1, v4);
    sub_1002DF4E4();

    (*(v6 + 8))(v9, v5);
    v14 = sub_10018BBC4(v12, 0, v17);
    type metadata accessor for TTRITreeViewNode();
    v18 = Array.init()();
    sub_10023B044(&v18);

    (*(v10 + 8))(v12, v4);
    TTRReminderIDsWithMatchingHashtagsProvider.init(reminders:)(v14);
  }

  else
  {
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_1007716F0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Need non-nil dataSource here", 28, 2);
    __break(1u);
  }
}

uint64_t sub_100190AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = sub_100189FAC();
  v8 = *((v6 & v5) + 0x50);
  v12 = sub_10015F984(a1, v7, v10, v11, v9 & 1, v8, *((v6 & v5) + 0x58));

  if (v12 && (Strong = swift_weakLoadStrong(), , Strong))
  {
    v14 = *(*Strong + 144);
    swift_beginAccess();
    v15 = *(v8 - 8);
    (*(v15 + 16))(a2, Strong + v14, v8);

    return (*(v15 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v17 = *(*(v8 - 8) + 56);

    return v17(a2, 1, 1, v8);
  }
}

uint64_t sub_100190C84(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = sub_100189FAC();
  v9 = sub_10015F984(a1, v5, v7, v8, v6 & 1, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58));

  if (v9)
  {
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      type metadata accessor for TTRITreeViewNode();
      type metadata accessor for Array();

      swift_getWitnessTable();
      Collection.firstIndex(where:)();

      return v13;
    }

    sub_100189FAC();
    v11 = sub_1001600A8(v9);

    if (v11)
    {
      sub_100189FAC();
      v12 = sub_10015DA7C();

      return v12;
    }
  }

  return 0;
}

uint64_t sub_100190EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a1;
  v58 = a3;
  v5 = *v3;
  v6 = swift_isaMask;
  v57 = swift_isaMask & *v3;
  v7 = type metadata accessor for TTRITreeViewExpandedState();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((v6 & v5) + 0x50);
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  v18 = *(v10 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = &v51 - v21;
  (*(v12 + 16))(v17, a2, v11, v20);
  if ((*(v18 + 48))(v17, 1, v10) == 1)
  {
    (*(v12 + 8))(v17, v11);
    sub_100189FAC();

    type metadata accessor for TTRITreeViewSectionsMetadata.Section();
    Array.subscript.getter();

    v23 = v63;

    v24 = *(*v23 + 144);
    swift_beginAccess();
    v25 = v23 + v24;
    v26 = v58;
    (*(v18 + 16))(v58, v25, v10);

    return (*(v18 + 56))(v26, 0, 1, v10);
  }

  v52 = v14;
  v53 = v11;
  (*(v18 + 32))(v22, v17, v10);
  v28 = sub_100189FAC();
  v57 = *(v57 + 88);
  v32 = sub_10015F984(v22, v28, v30, v31, v29 & 1, v10, v57);
  v33 = v10;
  v34 = v18;
  v35 = v32;

  if (!v35)
  {
    (*(v34 + 8))(v22, v33);
    return (*(v34 + 56))(v58, 1, 1, v33);
  }

  v36 = v34;
  v37 = qword_1007A84C0;
  swift_beginAccess();
  v38 = v54;
  v39 = v35 + v37;
  v40 = v55;
  (*(v54 + 16))(v9, v39, v55);
  v41 = (*(v38 + 88))(v9, v40);
  v42 = v58;
  if (v41 == enum case for TTRITreeViewExpandedState.notExpandable(_:))
  {

    (*(v36 + 8))(v22, v33);
    return (*(v36 + 56))(v42, 1, 1, v33);
  }

  if (v41 == enum case for TTRITreeViewExpandedState.collapsed(_:))
  {
    if (sub_100189678(&qword_100771740, sub_100128A14))
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      v55 = v35;
      v44 = Strong;
      v45 = v52;
      (*(v36 + 16))(v52, v22, v33);
      v57 = *(v36 + 56);
      (v57)(v45, 0, 1, v33);
      sub_1002DF4E4();

      (*(v12 + 8))(v45, v53);
      (*(v36 + 8))(v22, v33);
      return (v57)(v42, 0, 1, v33);
    }

LABEL_13:

    (*(v36 + 8))(v22, v33);
    v48 = *(v36 + 56);
    v49 = v42;
    v50 = 1;
    return v48(v49, v50, 1, v33);
  }

  if (v41 != enum case for TTRITreeViewExpandedState.expanded(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  swift_beginAccess();
  v62 = *(v35 + 64);
  type metadata accessor for TTRITreeViewNode();
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  v61 = v59;
  v60 = v56;
  sub_100058000(&qword_10076FC10);
  if ((Range.contains(_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  Array.subscript.getter();
  v46 = v61;
  swift_endAccess();

  (*(v36 + 8))(v22, v33);
  v47 = *(*v46 + 144);
  swift_beginAccess();
  (*(v36 + 16))(v42, v46 + v47, v33);

  v48 = *(v36 + 56);
  v49 = v42;
  v50 = 0;
  return v48(v49, v50, 1, v33);
}

uint64_t sub_100191678(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v41 = swift_isaMask & *v1;
  v5 = type metadata accessor for TTRITreeViewExpandedState();
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((v4 & v3) + 0x50);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v36 - v15;
  v17 = *(v8 - 8);
  __chkstk_darwin(v14);
  v19 = &v36 - v18;
  (*(v10 + 16))(v16, a1, v9);
  if ((*(v17 + 48))(v16, 1, v8) == 1)
  {
    (*(v10 + 8))(v16, v9);
    sub_100189FAC();

    type metadata accessor for TTRITreeViewSectionsMetadata.Section();
    v20 = Array.count.getter();

    return v20;
  }

  v36 = v9;
  v37 = v13;
  (*(v17 + 32))(v19, v16, v8);
  v21 = sub_100189FAC();
  v38 = *(v41 + 88);
  v25 = sub_10015F984(v19, v21, v23, v24, v22 & 1, v8, v38);

  if (!v25)
  {
    (*(v17 + 8))(v19, v8);
    return 0;
  }

  v41 = v17;
  v26 = v19;
  v27 = qword_1007A84C0;
  swift_beginAccess();
  v29 = v39;
  v28 = v40;
  (*(v39 + 16))(v7, v25 + v27, v40);
  v30 = (*(v29 + 88))(v7, v28);
  if (v30 == enum case for TTRITreeViewExpandedState.notExpandable(_:))
  {
LABEL_5:

    (*(v41 + 8))(v26, v8);
    return 0;
  }

  if (v30 == enum case for TTRITreeViewExpandedState.collapsed(_:))
  {
    if (sub_100189678(&qword_100771740, sub_100128A14))
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      v32 = *(*v25 + 144);
      swift_beginAccess();
      v33 = v41;
      v34 = v37;
      (*(v41 + 16))(v37, v25 + v32, v8);
      (*(v33 + 56))(v34, 0, 1, v8);
      v20 = sub_1002DF538();

      (*(v10 + 8))(v34, v36);
      (*(v33 + 8))(v26, v8);
      return v20;
    }

    goto LABEL_5;
  }

  if (v30 == enum case for TTRITreeViewExpandedState.expanded(_:))
  {
    swift_beginAccess();
    type metadata accessor for TTRITreeViewNode();

    v20 = Array.count.getter();

    (*(v41 + 8))(v26, v8);
    return v20;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id sub_100191C34(uint64_t a1)
{
  v2 = sub_100189FAC();
  v6 = sub_100191CAC(a1, v2, v4, v5, v3 & 1);

  return v6;
}

id sub_100191CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v23 = a5;
  v22 = a4;
  v9 = *v5;
  v10 = swift_isaMask;
  v11 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015FF3C(a1, a2, a3, v22, v23, *((v10 & v9) + 0x50), *((v10 & v9) + 0x58), v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000079B4(v13, &unk_100771B10);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v19 = *(v5 + qword_100771730);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v21 = [v19 cellForRowAtIndexPath:isa];

    (*(v15 + 8))(v17, v14);
    return v21;
  }
}

uint64_t sub_100191EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  result = sub_10015F984(a1, a2, a3, a4, a5, *((swift_isaMask & *v6) + 0x50), *((swift_isaMask & *v6) + 0x58));
  if (result)
  {
    if ((sub_1001600A8(result) & 1) != 0 && (v9 = sub_10015DA7C(), (v10 & 1) == 0))
    {
      v11 = [*(v6 + qword_100771730) *a6];

      return v11;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100191FE8(char a1)
{
  v3 = *(type metadata accessor for IndexPath() - 8);
  v4 = [*(v1 + qword_100771730) indexPathsForSelectedRows];
  if (!v4)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v5 = v4;
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (a1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1003B2E80(v6);
    }

    v8 = v6[2];
    v11[0] = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11[1] = v8;
    v7 = sub_1000EC324(v11);
  }

  v11[0] = v6;
  __chkstk_darwin(v7);
  sub_100058000(&unk_10078A370);
  sub_10011763C(&unk_100771B00, &unk_10078A370);
  v10 = Sequence.compactMap<A>(_:)();

  return v10;
}

uint64_t sub_1001921C8(uint64_t a1, int a2)
{
  v20 = a2;
  v21 = a1;
  v3 = *v2;
  v4 = swift_isaMask;
  v5 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v5 - 8);
  v7 = &v19[-v6];
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_100189FAC();
  sub_10015FF3C(v21, v12, v14, v15, v13 & 1, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000079B4(v7, &unk_100771B10);
  }

  (*(v9 + 32))(v11, v7, v8);
  v17 = *(v2 + qword_100771730);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v17 deselectRowAtIndexPath:isa animated:v20 & 1];

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100192414(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  if (!a1)
  {
    goto LABEL_20;
  }

  v4 = ObjectType;
  if (static Selector.== infix(_:_:)())
  {
    result = sub_100189738(sub_100129494);
    if (!result)
    {
      return result;
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    v7 = sub_1001294C8();
    goto LABEL_5;
  }

  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    v9 = sub_100129494;
    goto LABEL_9;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
    {
      v9 = sub_10012949C;
      goto LABEL_9;
    }

    if (static Selector.== infix(_:_:)() & 1) != 0 || (v10 = static Selector.== infix(_:_:)(), ObjectType = v4, (v10))
    {
      v9 = sub_1001294A4;
LABEL_9:
      result = sub_100189738(v9);
      if (result)
      {

        return 1;
      }

      return result;
    }

LABEL_20:
    v11.receiver = v1;
    v11.super_class = ObjectType;
    return objc_msgSendSuper2(&v11, "respondsToSelector:", a1);
  }

  result = sub_100189738(sub_10012949C);
  if (result)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v7 = sub_10012928C();
LABEL_5:
    v8 = v7;

    return v8 & 1;
  }

  return result;
}

uint64_t sub_1001925F8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  LOBYTE(a3) = sub_100192414(a3);

  return a3 & 1;
}

void sub_100192634(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100192888(v4, &selRef_scrollViewDidScroll_);
}

void sub_1001926A4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100192888(v4, &selRef_scrollViewWillBeginDragging_);
}

void *sub_100192714(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector:"scrollViewDidEndDragging:willDecelerate:"])
    {
      [v5 scrollViewDidEndDragging:a1 willDecelerate:a2 & 1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1001927A8(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_100192714(v6, a4);
}

void sub_100192818(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100192888(v4, &selRef_scrollViewDidEndDecelerating_);
}

void *sub_100192888(uint64_t a1, SEL *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector:*a2])
    {
      [v5 *a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100192914(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100192888(v4, &selRef_scrollViewDidEndScrollingAnimation_);
}

uint64_t sub_100192984(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1001A3DFC();

  return v6;
}

uint64_t sub_1001929D8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1001A3EEC();

  return v6;
}

uint64_t sub_100192A24(uint64_t a1, char *a2, uint64_t a3)
{
  v58 = a2;
  swift_getObjectType();
  v5 = sub_100058000(&unk_10076B8D0);
  __chkstk_darwin(v5);
  v59 = &v50 - v6;
  v7 = sub_100058000(&unk_1007884E0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v57 = &v50 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v50 - v14;
  __chkstk_darwin(v13);
  v60 = &v50 - v16;
  v17 = type metadata accessor for TTRITreeViewCellModel();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v56 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v50 - v21;
  sub_10000794C(a1, &v67, &qword_10076AE40);
  if (!v68)
  {
    v32 = &qword_10076AE40;
    v33 = &v67;
LABEL_8:
    sub_1000079B4(v33, v32);
    return 0;
  }

  sub_100007DD8(&v67, v69);
  sub_1000046FC(v69, &v61);
  sub_100058000(&qword_10076B8E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100004758(v69);
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    v32 = &qword_10076B8E8;
    v33 = &v64;
    goto LABEL_8;
  }

  v54 = a3;
  v55 = v10;
  sub_100005FD0(&v64, &v67);
  swift_getWitnessTable();
  sub_10000AE84(&v67, v68);
  swift_unknownObjectRetain();
  v23 = dispatch thunk of TTRITreeViewCellProtocol.treeCellViewDelegate.setter();
  sub_10023BE9C(v23, v22);
  sub_10000C36C(&v67, v68);
  v24 = v60;
  dispatch thunk of TTRITreeViewCellProtocol.treeCellViewModel.getter();
  v25 = *(v18 + 16);
  v58 = v22;
  v52 = v18 + 16;
  v50 = v25;
  v25(v15, v22, v17);
  v26 = *(v18 + 56);
  v53 = v18 + 56;
  v51 = v26;
  v26(v15, 0, 1, v17);
  v27 = *(v5 + 48);
  v28 = v59;
  sub_10000794C(v24, v59, &unk_1007884E0);
  sub_10000794C(v15, v28 + v27, &unk_1007884E0);
  v29 = *(v18 + 48);
  if (v29(v28, 1, v17) == 1)
  {
    sub_1000079B4(v15, &unk_1007884E0);
    sub_1000079B4(v24, &unk_1007884E0);
    v30 = v29(v28 + v27, 1, v17);
    v31 = v18;
    if (v30 == 1)
    {
      sub_1000079B4(v28, &unk_1007884E0);
      (*(v18 + 8))(v58, v17);
LABEL_16:
      sub_100004758(v69);
      sub_100004758(&v67);
      return 0;
    }

    goto LABEL_11;
  }

  v35 = v57;
  sub_10000794C(v28, v57, &unk_1007884E0);
  if (v29(v28 + v27, 1, v17) == 1)
  {
    sub_1000079B4(v15, &unk_1007884E0);
    sub_1000079B4(v60, &unk_1007884E0);
    v31 = v18;
    (*(v18 + 8))(v35, v17);
LABEL_11:
    sub_1000079B4(v28, &unk_10076B8D0);
    goto LABEL_12;
  }

  v31 = v18;
  v36 = v28 + v27;
  v37 = v56;
  (*(v18 + 32))(v56, v36, v17);
  sub_1001A670C(&qword_10076B908, &type metadata accessor for TTRITreeViewCellModel);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = *(v18 + 8);
  v39(v37, v17);
  sub_1000079B4(v15, &unk_1007884E0);
  sub_1000079B4(v60, &unk_1007884E0);
  v39(v35, v17);
  sub_1000079B4(v28, &unk_1007884E0);
  if (v38)
  {
    v39(v58, v17);
    goto LABEL_16;
  }

LABEL_12:
  sub_10000794C(v54, &v61, &unk_10076B8C0);
  if (v62)
  {
    sub_100005FD0(&v61, &v64);
  }

  else
  {
    v40 = type metadata accessor for TTRITreeViewAnimatingUnanimatedWrapper();
    v41 = swift_allocObject();
    *(v41 + 16) = _swiftEmptyArrayStorage;
    *(v41 + 24) = _swiftEmptyArrayStorage;
    *(&v65 + 1) = v40;
    v66 = sub_1001A670C(&qword_10076B900, type metadata accessor for TTRITreeViewAnimatingUnanimatedWrapper);
    *&v64 = v41;
  }

  sub_10000C36C(&v67, v68);
  v42 = v55;
  v43 = v58;
  v50(v55, v58, v17);
  v51(v42, 0, 1, v17);
  v44 = *(&v65 + 1);
  v45 = v66;
  v46 = sub_10000C36C(&v64, *(&v65 + 1));
  v62 = v44;
  v63 = *(v45 + 8);
  v47 = sub_1000317B8(&v61);
  (*(*(v44 - 8) + 16))(v47, v46, v44);
  dispatch thunk of TTRITreeViewCellProtocol.setTreeCellViewModel(_:animator:)();
  sub_1000079B4(v42, &unk_1007884E0);
  sub_100004758(&v61);
  v48 = *(&v65 + 1);
  v49 = v66;
  sub_10000C36C(&v64, *(&v65 + 1));
  (*(v49 + 16))(v48, v49);
  (*(v31 + 8))(v43, v17);
  sub_100004758(v69);
  sub_100004758(&v64);
  sub_100004758(&v67);
  return 1;
}

id sub_1001932B4(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  v11 = sub_1001A3F90(v8);

  (*(v6 + 8))(v8, v5);

  return v11;
}

void sub_1001933C4(uint64_t *a1@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = sub_1002DF588();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
}

uint64_t sub_100193420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v33 = a3;
  v34 = a7;
  v29 = a5;
  v30 = a4;
  v32 = a1;
  v35 = a8;
  v11 = *v8;
  v31 = swift_isaMask & *v8;
  v12 = *((swift_isaMask & v11) + 0x50);
  v28 = *(v12 - 8);
  __chkstk_darwin(a1);
  v14 = &v27 - v13;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v27 - v18;
  v20 = *(a6 - 8);
  __chkstk_darwin(v17);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a2, v15);
  if ((*(v20 + 48))(v19, 1, a6) == 1)
  {
    (*(v16 + 8))(v19, v15);
  }

  else
  {
    (*(v20 + 32))(v22, v19, a6);
    sub_100189FAC();
    v23 = sub_10015F890();

    if (v23)
    {
      v24 = *(*v23 + 144);
      swift_beginAccess();
      v25 = v28;
      (*(v28 + 16))(v14, v23 + v24, v12);
      v30(v14, v22);

      (*(v25 + 8))(v14, v12);
      return (*(v20 + 8))(v22, a6);
    }

    (*(v20 + 8))(v22, a6);
  }

  return (*(*(v34 - 8) + 16))(v35, v33);
}

id sub_100193800(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = a3;
  v9 = a1;
  a5(a4);
  v11 = v10;

  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_100193898()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_1002DF5D8();
}

uint64_t sub_100193904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v33 = a3;
  v34 = a7;
  v29 = a5;
  v30 = a4;
  v32 = a1;
  v35 = a8;
  v11 = *v8;
  v31 = swift_isaMask & *v8;
  v12 = *((swift_isaMask & v11) + 0x50);
  v28 = *(v12 - 8);
  __chkstk_darwin(a1);
  v14 = &v27 - v13;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v27 - v18;
  v20 = *(a6 - 8);
  __chkstk_darwin(v17);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a2, v15);
  if ((*(v20 + 48))(v19, 1, a6) == 1)
  {
    (*(v16 + 8))(v19, v15);
  }

  else
  {
    (*(v20 + 32))(v22, v19, a6);
    sub_100189FAC();
    v23 = sub_10015F6B4();

    if (v23)
    {
      v24 = *(*v23 + 144);
      swift_beginAccess();
      v25 = v28;
      (*(v28 + 16))(v14, v23 + v24, v12);
      v30(v14, v22);

      (*(v25 + 8))(v14, v12);
      return (*(v20 + 8))(v22, a6);
    }

    (*(v20 + 8))(v22, a6);
  }

  return (*(*(v34 - 8) + 16))(v35, v33);
}

uint64_t sub_100193CB4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a1;
  sub_1001A4A70(a4, v10);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100193E50(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v101 = a3;
  v105 = a2;
  v94 = a1;
  v5.isa = v3->isa;
  v6 = swift_isaMask;
  v7 = type metadata accessor for IndexPath();
  v97 = *(v7 - 8);
  v98 = v7;
  v8 = __chkstk_darwin(v7);
  v95 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v93 = &v87 - v10;
  v11 = *((v6 & v5.isa) + 0x50);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v92 = type metadata accessor for Optional();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v99 = &v87 - v12;
  v90 = swift_getTupleTypeMetadata2();
  __chkstk_darwin(v90);
  v89 = &v87 - v13;
  v14 = type metadata accessor for Optional();
  v102 = *(v14 - 1);
  v103 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v87 - v16;
  v18 = *(v11 - 8);
  v19 = __chkstk_darwin(v15);
  v96 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v104 = &v87 - v22;
  __chkstk_darwin(v21);
  v24 = &v87 - v23;
  sub_100189FAC();
  v25 = v105;
  v26 = sub_10015F6B4();

  if (!v26)
  {
    return result;
  }

  v28 = *(*v26 + 144);
  swift_beginAccess();
  (*(v18 + 16))(v24, &v26[v28], v11);
  v29 = v4;
  sub_100190AA0(v24, v17);
  v30 = v18;
  v31 = v24;
  if ((*(v18 + 48))(v17, 1, v11) == 1)
  {
    (v102[1].isa)(v17, v103);
LABEL_6:
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100003E30(v36, qword_1007716F0);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Unexpected: parent/childIndex not found for item to be moved", v39, 2u);
    }

    return (*(v18 + 8))(v31, v11);
  }

  v103 = v26;
  v32 = *(v18 + 32);
  v33 = v104;
  v32(v104, v17, v11);
  v34 = sub_100190C84(v31);
  if (v35)
  {
    (*(v18 + 8))(v33, v11);
    goto LABEL_6;
  }

  v87 = v34;
  v40 = v99;
  v41 = v101;
  sub_10019499C(v25, v101, 1, 1, v99);
  v42 = TupleTypeMetadata2;
  v43 = (*(*(TupleTypeMetadata2 - 8) + 48))(v40, 1, TupleTypeMetadata2);
  v88 = v31;
  if (v43 == 1)
  {
    (*(v91 + 8))(v40, v92);
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100003E30(v44, qword_1007716F0);
    v46 = v97;
    v45 = v98;
    v47 = *(v97 + 16);
    v48 = v93;
    v47(v93, v25, v98);
    v49 = v95;
    v47(v95, v41, v45);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v106[0] = v105;
      *v52 = 136315394;
      v53 = IndexPath.description.getter();
      v54 = v48;
      v55 = v45;
      v57 = v56;
      v102 = v50;
      v58 = *(v46 + 8);
      v58(v54, v55);
      v59 = sub_100004060(v53, v57, v106);

      *(v52 + 4) = v59;
      *(v52 + 12) = 2080;
      v60 = IndexPath.description.getter();
      v62 = v61;
      v58(v49, v55);
      v63 = sub_100004060(v60, v62, v106);

      *(v52 + 14) = v63;
      v64 = v102;
      _os_log_impl(&_mh_execute_header, v102, v51, "Unexpected: cannot find target parent/index for moving. {from: %s, to: %s}", v52, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v83 = *(v46 + 8);
      v83(v49, v45);
      v83(v48, v45);
    }

    v84 = *(v30 + 8);
    v84(v104, v11);
  }

  else
  {
    v65 = *&v40[*(v42 + 48)];
    v102 = v29;
    v66 = v90;
    v67 = *(v90 + 48);
    v68 = v89;
    v32(v89, v40, v11);
    *&v68[v67] = v65;
    v69 = v102;
    v101 = *&v68[*(v66 + 48)];
    v70 = v96;
    v32(v96, v68, v11);
    v71 = sub_100189678(&qword_100771740, sub_100128A14);
    v72 = v104;
    v73 = v87;
    if (v71)
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      sub_1002DF658();
    }

    __chkstk_darwin(v71);
    v75 = v88;
    *(&v87 - 6) = v69;
    *(&v87 - 5) = v75;
    *(&v87 - 4) = v73;
    *(&v87 - 3) = v72;
    *(&v87 - 2) = v101;
    *(&v87 - 1) = v70;
    sub_10019616C(sub_1001A66FC);
    v76 = v70;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v78 = [v94 cellForRowAtIndexPath:isa];

    v79 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:3 curve:0 animations:0.3];
    v80 = type metadata accessor for TTRITreeViewAnimatingWrapper();
    v81 = swift_allocObject();
    *(v81 + 16) = v79;
    if (v78)
    {
      v82 = sub_100003540(0, &qword_10076B8B8);
    }

    else
    {
      v82 = 0;
      v107[1] = 0;
      v107[2] = 0;
    }

    v107[0] = v78;
    v107[3] = v82;
    v106[3] = v80;
    v106[4] = sub_1001A670C(&qword_100771B78, type metadata accessor for TTRITreeViewAnimatingWrapper);
    v106[0] = v81;
    v85 = v79;
    v86 = v78;

    sub_100192A24(v107, v103, v106);

    sub_1000079B4(v106, &unk_10076B8C0);
    sub_1000079B4(v107, &qword_10076AE40);
    v84 = *(v18 + 8);
    v84(v76, v11);
    v84(v104, v11);
  }

  return (v84)(v88, v11);
}

uint64_t sub_10019499C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, char *a5@<X8>)
{
  v167 = a4;
  LODWORD(v184) = a3;
  v183 = a2;
  v185 = a1;
  v181 = a5;
  v6 = *((swift_isaMask & *v5) + 0x58);
  v7 = *((swift_isaMask & *v5) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v160 = *(AssociatedTypeWitness - 8);
  v8 = __chkstk_darwin(AssociatedTypeWitness);
  v159 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v162 = &v158 - v10;
  v11 = type metadata accessor for Optional();
  v177 = *(v11 - 8);
  v178 = v11;
  v12 = __chkstk_darwin(v11);
  v163 = &v158 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v169 = &v158 - v15;
  v16 = __chkstk_darwin(v14);
  v175 = &v158 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v158 - v19;
  __chkstk_darwin(v18);
  v168 = &v158 - v21;
  v173 = v6;
  v22 = type metadata accessor for TTRITreeViewTableAdapter.MoveDestination();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v172 = &v158 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v158 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v158 - v30;
  v182 = v7;
  v186 = *(v7 - 1);
  v32 = __chkstk_darwin(v29);
  v164 = &v158 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v165 = &v158 - v35;
  v36 = __chkstk_darwin(v34);
  v174 = &v158 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = &v158 - v39;
  v41 = __chkstk_darwin(v38);
  v43 = &v158 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = &v158 - v45;
  v47 = __chkstk_darwin(v44);
  v49 = &v158 - v48;
  v50 = __chkstk_darwin(v47);
  v166 = &v158 - v51;
  v52 = __chkstk_darwin(v50);
  v170 = &v158 - v53;
  __chkstk_darwin(v52);
  v176 = &v158 - v54;
  v55 = v184;
  v184 = v5;
  sub_10019D678(v183, v55, v31);
  v180 = v23;
  v56 = v23 + 16;
  v57 = *(v23 + 16);
  v183 = v31;
  v171 = v56;
  v57(v28, v31, v22);
  v179 = v22;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v73 = v186;
      v67 = *(v186 + 32);
      v74 = v174;
      v75 = v182;
      (v67)(v174, v28, v182);
      Strong = swift_unknownObjectUnownedLoadStrong();
      v77 = v169;
      (*(v73 + 16))(v169, v74, v75);
      (*(v73 + 56))(v77, 0, 1, v75);
      v78 = sub_10052A84C(v77);
      LOBYTE(v73) = v79;

      (*(v177 + 8))(v77, v178);
      v80 = v179;
      if ((v73 & 1) == 0)
      {
        v175 = v78;
        v96 = v75;
        (v67)(v176, v74, v75);
        v97 = v183;
        v98 = v172;
        v46 = v80;
        goto LABEL_54;
      }

      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      sub_100003E30(v81, qword_1007716F0);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.fault.getter();
      v84 = os_log_type_enabled(v82, v83);
      v86 = v180;
      v85 = v181;
      v87 = v174;
      if (v84)
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&_mh_execute_header, v82, v83, "Missing parent child count", v88, 2u);
      }

      (*(v186 + 8))(v87, v75);
      (*(v86 + 8))(v183, v80);
      goto LABEL_40;
    }

    v46 = v179;
    v59 = v186;
    if (EnumCaseMultiPayload != 3)
    {
      (*(v180 + 8))(v183, v179);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v90 = *(*(TupleTypeMetadata2 - 8) + 56);
      v91 = v181;
      return v90(v91, 1, 1, TupleTypeMetadata2);
    }

    sub_100189FAC();
    v60 = v182;
    v61 = sub_10015F6B4();

    if (v61)
    {
      v62 = *(*v61 + 144);
      swift_beginAccess();
      v63 = v170;
      (*(v59 + 16))(v170, v61 + v62, v60);
      v64 = v168;
      sub_100190AA0(v63, v168);
      if ((*(v59 + 48))(v64, 1, v60) == 1)
      {
        (*(v177 + 8))(v64, v178);
LABEL_44:
        v124 = v180;
        v123 = v181;
        if (qword_100766FC8 != -1)
        {
          swift_once();
        }

        v125 = type metadata accessor for Logger();
        sub_100003E30(v125, qword_1007716F0);
        v126 = Logger.logObject.getter();
        v127 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          *v128 = 0;
          _os_log_impl(&_mh_execute_header, v126, v127, "Unexpected: parent/childIndex not found for item to be moved", v128, 2u);
        }

        (*(v186 + 8))(v170, v60);
        (*(v124 + 8))(v183, v46);
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v90 = *(*(TupleTypeMetadata2 - 8) + 56);
        v91 = v123;
        return v90(v91, 1, 1, TupleTypeMetadata2);
      }

      v67 = *(v59 + 32);
      v120 = v166;
      (v67)(v166, v64, v60);
      v121 = sub_100190C84(v63);
      if (v122)
      {
        (*(v59 + 8))(v120, v60);
        goto LABEL_44;
      }

      v175 = v121;
      (*(v59 + 8))(v63, v60);

      v96 = v60;
      (v67)(v176, v120, v60);
      goto LABEL_53;
    }

    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v114 = type metadata accessor for Logger();
    sub_100003E30(v114, qword_1007716F0);
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.fault.getter();
    v117 = os_log_type_enabled(v115, v116);
    v109 = v180;
    v85 = v181;
    if (v117)
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&_mh_execute_header, v115, v116, "Unexpected: node not found at sourceIndexPath", v118, 2u);
    }

LABEL_39:
    (*(v109 + 8))(v183, v46);
LABEL_40:
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v90 = *(*(TupleTypeMetadata2 - 8) + 56);
    v91 = v85;
    return v90(v91, 1, 1, TupleTypeMetadata2);
  }

  v65 = v175;
  v174 = v43;
  if (!EnumCaseMultiPayload)
  {
    v66 = v186;
    v67 = *(v186 + 32);
    v68 = v49;
    v69 = v28;
    v70 = v182;
    (v67)(v49, v69, v182);
    v71 = v20;
    v72 = v68;
    sub_100190AA0(v68, v71);
    if ((*(v66 + 48))(v71, 1, v70) == 1)
    {
      (*(v177 + 8))(v71, v178);
    }

    else
    {
      (v67)(v46, v71, v70);
      v99 = sub_100190C84(v68);
      if ((v100 & 1) == 0)
      {
        v129 = v99;
        (*(v186 + 8))(v68, v70);
        v96 = v70;
        (v67)(v176, v46, v70);
        if (__OFADD__(v129, 1))
        {
          __break(1u);
          goto LABEL_76;
        }

        v175 = (v129 + 1);
        v46 = v179;
        goto LABEL_53;
      }

      (*(v186 + 8))(v46, v70);
    }

    v101 = v180;
    v85 = v181;
    v102 = v179;
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v103 = type metadata accessor for Logger();
    sub_100003E30(v103, qword_1007716F0);
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&_mh_execute_header, v104, v105, "Missing parent/childIndex", v106, 2u);
    }

    (*(v186 + 8))(v72, v70);
    (*(v101 + 8))(v183, v102);
    goto LABEL_40;
  }

  v92 = v186;
  v67 = *(v186 + 32);
  v93 = v174;
  v94 = v28;
  v95 = v182;
  (v67)(v174, v94, v182);
  sub_100190AA0(v93, v65);
  if ((*(v92 + 48))(v65, 1, v95) == 1)
  {
    (*(v177 + 8))(v65, v178);
    v46 = v179;
LABEL_29:
    v109 = v180;
    v85 = v181;
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v110 = type metadata accessor for Logger();
    sub_100003E30(v110, qword_1007716F0);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v111, v112, "Missing parent/childIndex", v113, 2u);
    }

    (*(v92 + 8))(v174, v95);
    goto LABEL_39;
  }

  (v67)(v40, v65, v95);
  v107 = sub_100190C84(v93);
  v46 = v179;
  if (v108)
  {
    (*(v92 + 8))(v40, v95);
    goto LABEL_29;
  }

  v175 = v107;
  (*(v92 + 8))(v93, v95);
  v96 = v95;
  (v67)(v176, v40, v95);
LABEL_53:
  v97 = v183;
  v98 = v172;
LABEL_54:
  v182 = v67;
  v57(v98, v97, v46);
  v130 = swift_getEnumCaseMultiPayload();
  v72 = *(v180 + 8);
  if (v130 != 3)
  {
    v72(v98, v46);
    v67 = v181;
    v70 = v96;
    if ((v167 & 1) == 0)
    {
      v72(v97, v46);
      v131 = v175;
      goto LABEL_61;
    }

    sub_100189FAC();
    v132 = sub_10015F6B4();

    if (!v132)
    {
      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v140 = type metadata accessor for Logger();
      sub_100003E30(v140, qword_1007716F0);
      v141 = Logger.logObject.getter();
      v142 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        *v143 = 0;
        _os_log_impl(&_mh_execute_header, v141, v142, "Unexpected: node not found at sourceIndexPath", v143, 2u);
      }

      v72(v183, v46);
      (*(v186 + 8))(v176, v70);
      goto LABEL_73;
    }

    v133 = *(*v132 + 144);
    swift_beginAccess();
    v134 = v132;
    v135 = v186;
    v136 = *(v186 + 16);
    v185 = v134;
    v71 = v165;
    v136(v165, v134 + v133, v70);
    v137 = v163;
    sub_100190AA0(v71, v163);
    if ((*(v135 + 48))(v137, 1, v70) == 1)
    {
      (*(v177 + 8))(v137, v178);
    }

    else
    {
      (v182)(v164, v137, v70);
      v144 = sub_100190C84(v71);
      if ((v145 & 1) == 0)
      {
        v151 = v173;
        v152 = *(v173 + 24);
        v184 = v144;
        v152(v70, v173);
        v153 = v159;
        v152(v70, v151);
        v154 = AssociatedTypeWitness;
        swift_getAssociatedConformanceWitness();
        v155 = dispatch thunk of static Equatable.== infix(_:_:)();

        v156 = *(v160 + 8);
        v156(v153, v154);
        v156(v162, v154);
        v157 = *(v186 + 8);
        v157(v164, v70);
        v157(v165, v70);
        v72(v183, v46);
        v131 = &v175[-(v155 & (v184 < v175))];
        goto LABEL_61;
      }

      (*(v135 + 8))(v164, v70);
    }

    if (qword_100766FC8 == -1)
    {
LABEL_70:
      v146 = type metadata accessor for Logger();
      sub_100003E30(v146, qword_1007716F0);
      v147 = Logger.logObject.getter();
      v148 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        *v149 = 0;
        _os_log_impl(&_mh_execute_header, v147, v148, "Unexpected: parent/childIndex not found for item to be moved", v149, 2u);
        v71 = v165;
      }

      v150 = *(v186 + 8);
      v150(v71, v70);
      v72(v183, v46);
      v150(v176, v70);
LABEL_73:
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v90 = *(*(TupleTypeMetadata2 - 8) + 56);
      v91 = v67;
      return v90(v91, 1, 1, TupleTypeMetadata2);
    }

LABEL_76:
    swift_once();
    goto LABEL_70;
  }

  v72(v97, v46);
  v72(v98, v46);
  v67 = v181;
  v131 = v175;
  v70 = v96;
LABEL_61:
  v138 = swift_getTupleTypeMetadata2();
  v139 = *(v138 + 48);
  (v182)(v67, v176, v70);
  *&v67[v139] = v131;
  return (*(*(v138 - 8) + 56))(v67, 0, 1, v138);
}

uint64_t sub_100195F78(void *a1, void (*a2)(char *, void, uint64_t), void (*a3)(char *, void, uint64_t), uint64_t a4, void (*a5)(void, void, void), uint64_t a6)
{
  v20 = a6;
  v21 = a2;
  v22 = a3;
  v23 = a5;
  v7 = *((swift_isaMask & *a1) + 0x50);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  v15 = *(v7 - 8);
  v16 = *(v15 + 16);
  v16(&v20 - v13, a4, v7);
  v17 = *(v15 + 56);
  v17(v14, 0, 1, v7);
  v16(v12, v20, v7);
  v17(v12, 0, 1, v7);
  sub_10018D1A4(v21, v22, v14, v23, v12);
  v18 = *(v9 + 8);
  v18(v12, v8);
  return (v18)(v14, v8);
}

void sub_10019616C(uint64_t a1)
{
  if (*(v1 + qword_100771770))
  {
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003E30(v2, qword_1007716F0);
    v7 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v7, v3, "performBatchUpdateWithoutTableViewUpdates cannot be called during a batch update", v4, 2u);
    }
  }

  else
  {
    v6[2] = __chkstk_darwin(a1);
    v6[3] = v5;
    sub_10018B568(sub_100026418, v6, sub_1001A6754, 0, 0, 0);
  }
}

uint64_t sub_1001962DC(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  sub_100193E50(v12, v11, v9);

  v14 = *(v6 + 8);
  v14(v9, v5);
  return (v14)(v11, v5);
}

uint64_t sub_100196428(void *a1, char *a2)
{
  v5 = *((swift_isaMask & *v2) + 0x50);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = v13 - v7;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = *(*a2 + 144);
  swift_beginAccess();
  (*(v6 + 16))(v8, &a2[v10], v5);
  sub_100128BDC();

  (*(v6 + 8))(v8, v5);
  v15[3] = sub_100003540(0, &qword_10076B8B8);
  v14 = 0;
  v15[0] = a1;
  memset(v13, 0, sizeof(v13));
  v11 = a1;
  sub_100192A24(v15, a2, v13);
  sub_1000079B4(v13, &unk_10076B8C0);
  return sub_1000079B4(v15, &qword_10076AE40);
}

uint64_t sub_100196600(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_1001A4C30(v12);

  return (*(v8 + 8))(v10, v7);
}

void sub_100196714(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  sub_1001A508C(v9, a5, sub_100128C04);
}

void sub_1001967B0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  sub_1001A508C(v9, a5, sub_100128C2C);
}

void sub_100196894()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100128FDC();
}

uint64_t sub_1001968F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_isaMask;
  v13 = sub_100189678(&qword_100771758, sub_100128A14);
  v12[2] = *((v8 & v7) + 0x50);
  v12[3] = *((v8 & v7) + 0x58);
  v12[4] = a2;
  v12[5] = a3;
  v9 = type metadata accessor for TTRIAnyTreeViewDelegate();
  sub_100193904(a1, &v13, v10, sub_1001A6324, v12, v9, &type metadata for () + 8, &type metadata for ());
}

void sub_100196A00(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1001A537C();
}

double sub_100196A78(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_1001A54FC(a4, sub_100129494, type metadata accessor for TTRIAnyTreeViewSectionHeaderViewProviding, sub_1001A6664);

  return v8;
}

double sub_100196B10(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_1001A54FC(a4, sub_10012949C, type metadata accessor for TTRIAnyTreeViewSectionFooterViewProviding, sub_1001A6634);

  return v8;
}

double sub_100196BC0(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  v14 = sub_1001A5410(v11, a5);

  (*(v9 + 8))(v11, v8);
  return v14;
}

double sub_100196CD8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_1001A54FC(a4, sub_100129494, type metadata accessor for TTRIAnyTreeViewSectionHeaderViewProviding, sub_1001A65D4);

  return v8;
}

void sub_100196D70(uint64_t a1@<X0>, double (*a2)(void *, uint64_t)@<X3>, double *a3@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = a2(Strong, a1);

  *a3 = v7;
}

double sub_100196DE0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_1001A54FC(a4, sub_10012949C, type metadata accessor for TTRIAnyTreeViewSectionFooterViewProviding, sub_1001A65A4);

  return v8;
}

id sub_100196E78(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_1001A55D0(a4, sub_100129494, sub_1001294C4);

  return v8;
}

id sub_100196F0C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_1001A55D0(a4, sub_10012949C, sub_100129308);

  return v8;
}

void sub_100196F98()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100128CA4();
}

void sub_100197054()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100128CF8();
}

void sub_1001970C8()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100128D20();
}

uint64_t sub_10019713C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ([a1 isEditing] && (isa = IndexPath._bridgeToObjectiveC()().super.isa, v8 = objc_msgSend(a1, "cellForRowAtIndexPath:", isa), isa, v8) && (v9 = objc_msgSend(v8, "isSelected"), v8, v9))
  {
    v10 = type metadata accessor for IndexPath();
    v11 = *(*(v10 - 8) + 56);

    return v11(a3, 1, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for IndexPath();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a3, a2, v13);
    v15 = (*(v14 + 56))(a3, 0, 1, v13);
    __chkstk_darwin(v15);
    v16[2] = v3;
    v16[3] = a3;
    return sub_1001968F0(a2, sub_1001A64F8, v16);
  }
}

Class sub_100197318(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  sub_10019713C(v12, v8, v11);

  v14 = *(v6 + 8);
  v14(v8, v5);
  v15 = (*(v6 + 48))(v11, 1, v5);
  v16 = 0;
  if (v15 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v14(v11, v5);
    v16 = isa;
  }

  return v16;
}

uint64_t sub_1001974D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  (*(v6 + 16))(a2, a1, v5);
  (*(v6 + 56))(a2, 0, 1, v5);
  v9 = v2;
  v10 = a2;
  return sub_1001968F0(a1, sub_1001A6444, &v8);
}

uint64_t sub_1001975BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t), void (*a6)(char *, char *))
{
  v76 = a6;
  v77 = a4;
  v79 = a5;
  v8 = *a1;
  v9 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v9 - 8);
  v75 = &v69 - v10;
  v11 = *(v8 + 88);
  v12 = *(v8 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v70 = &v69 - v14;
  v88 = v15;
  v16 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v73 = *(TupleTypeMetadata2 - 8);
  v17 = __chkstk_darwin(TupleTypeMetadata2);
  v80 = &v69 - v18;
  v86 = *(v16 - 8);
  v19 = __chkstk_darwin(v17);
  v72 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v83 = &v69 - v22;
  __chkstk_darwin(v21);
  v87 = &v69 - v23;
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = (&v69 - v29);
  v74 = a3;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v78 = a2;
  v79(Strong, a2);

  v32 = *(v25 + 16);
  v79 = v30;
  v32(v28, v30, v24);
  v33 = *(v12 - 8);
  v34 = (*(v33 + 48))(v28, 1, v12);
  v81 = v25;
  v82 = v24;
  if (v34 == 1)
  {
    (*(v25 + 8))(v28, v24);
    v35 = v84;
    v36 = *(v84 + 56);
    v36(v87, 1, 1, v88);
    v37 = v11;
    v38 = *(v11 + 24);
  }

  else
  {
    v35 = v84;
    v38 = *(v11 + 24);
    v39 = v11;
    v40 = v87;
    v37 = v39;
    v38(v12);
    (*(v33 + 8))(v28, v12);
    v36 = *(v35 + 56);
    v36(v40, 0, 1, v88);
  }

  v41 = v83;
  v71 = v12;
  v78 = v37;
  (v38)(v12, v37);
  v42 = v88;
  v36(v41, 0, 1, v88);
  v43 = v86;
  v44 = *(TupleTypeMetadata2 + 48);
  v45 = *(v86 + 16);
  v46 = v80;
  v45(v80, v87, v16);
  v45(&v46[v44], v41, v16);
  v47 = v35;
  v48 = v46;
  v49 = *(v47 + 48);
  if (v49(v48, 1, v42) != 1)
  {
    v52 = v87;
    v53 = v72;
    v45(v72, v48, v16);
    if (v49(&v48[v44], 1, v88) != 1)
    {
      v62 = v48;
      v63 = v84;
      v64 = v70;
      v65 = v88;
      (*(v84 + 32))(v70, &v62[v44], v88);
      swift_getAssociatedConformanceWitness();
      v66 = dispatch thunk of static Equatable.== infix(_:_:)();
      v67 = *(v63 + 8);
      v67(v64, v65);
      v68 = *(v86 + 8);
      v68(v83, v16);
      v68(v52, v16);
      v67(v53, v65);
      v55 = (v68)(v62, v16);
      v51 = v81;
      if (v66)
      {
        return (*(v51 + 8))(v79, v82);
      }

LABEL_10:
      __chkstk_darwin(v55);
      *(&v69 - 2) = v74;
      v56 = type metadata accessor for IndexPath();
      v57 = v75;
      v58 = v82;
      v59 = v79;
      sub_100188A78(v76, (&v69 - 4), &type metadata for Never, v56, v60, v75);
      (*(v51 + 8))(v59, v58);
      return sub_1001A6488(v57, v77);
    }

    v54 = *(v86 + 8);
    v54(v83, v16);
    v54(v52, v16);
    (*(v84 + 8))(v53, v88);
LABEL_9:
    v55 = (*(v73 + 8))(v48, TupleTypeMetadata2);
    v51 = v81;
    goto LABEL_10;
  }

  v50 = *(v43 + 8);
  v50(v41, v16);
  v50(v87, v16);
  if (v49(&v48[v44], 1, v88) != 1)
  {
    goto LABEL_9;
  }

  v50(v48, v16);
  v51 = v81;
  return (*(v51 + 8))(v79, v82);
}

uint64_t sub_100197DE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = swift_isaMask;
  v7 = sub_100189FAC();
  sub_10015FF3C(a1, v7, v9, v10, v8 & 1, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), a3);
}

Class sub_100197EAC(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  sub_1001974D0(v8, v11);

  v14 = *(v6 + 8);
  v14(v8, v5);
  v15 = (*(v6 + 48))(v11, 1, v5);
  v16 = 0;
  if (v15 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v14(v11, v5);
    v16 = isa;
  }

  return v16;
}

void sub_100198060()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100128D98();
}

void sub_1001980D4()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100128DC0();
}

void sub_100198148(uint64_t *a1@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = sub_100128E10();

  *a1 = v3;
}

uint64_t sub_1001981A0(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  v11 = sub_1001A59AC(v8);

  (*(v6 + 8))(v8, v5);
  return v11;
}

void sub_1001982B8(uint64_t a1@<X0>, uint64_t (*a2)(void *, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = a2(Strong, a1);

  *a3 = v7;
}

id sub_100198338(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  v14 = sub_1001A5AA0(v11, a5);

  (*(v9 + 8))(v11, v8);

  return v14;
}

uint64_t sub_100198458(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  LOBYTE(a1) = sub_1001A5B90(v8);

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

void sub_100198558()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100128EB4();
}

uint64_t sub_1001985CC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

void sub_1001986D4(void *a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a2, v6, &unk_100771B10);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &unk_100771B10);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v12 = [a1 cellForRowAtIndexPath:isa];

    if (v12)
    {
      [v12 setEditing:0 animated:0];
    }

    (*(v8 + 8))(v10, v7);
  }

  if (sub_100189678(&qword_100771758, sub_100128A14))
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_100128EDC();
  }
}

uint64_t sub_100198918(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  if (a4)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for IndexPath();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a3;
  v13 = a1;
  sub_1001986D4(v12, v9);

  return sub_1000079B4(v9, &unk_100771B10);
}

uint64_t sub_100198A58@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

Class sub_100198AC4()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v13 - v6;
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100198A58(v4, v9);
  v10 = *(v1 + 8);
  v10(v4, v0);
  v10(v7, v0);
  v11.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10(v9, v0);

  return v11.super.isa;
}

void sub_100198C88(_BYTE *a1@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = sub_100128F5C();

  *a1 = v3 & 1;
}

uint64_t sub_100198CFC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  if (a6)
  {
    v14 = a3;
    v15 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v20, 0, sizeof(v20));
    v16 = a3;
    v17 = a1;
  }

  v18 = sub_1001A5CBC(a4, v13, v20);

  sub_1000079B4(v20, &qword_10076AE40);
  (*(v11 + 8))(v13, v10);
  return v18 & 1;
}

void sub_100198E58()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100128F88();
}

uint64_t sub_100198ED0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  if (a6)
  {
    v14 = a3;
    v15 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v19, 0, sizeof(v19));
    v16 = a3;
    v17 = a1;
  }

  sub_1001A5DBC(a4, v13, v19);

  sub_1000079B4(v19, &qword_10076AE40);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100199024(uint64_t a1, uint64_t a2, double a3, double a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong convertPoint:a1 fromCoordinateSpace:{a3, a4}];
  v11 = v10;
  v13 = v12;

  v21 = 0;
  v22 = sub_100189678(&qword_100771758, sub_100128A14);
  v18 = v4;
  v19 = v11;
  v20 = v13;
  v14 = type metadata accessor for TTRIAnyTreeViewDelegate();
  v15 = sub_100058000(&qword_100771B68);
  sub_100193904(a2, &v22, &v21, sub_1001A630C, &v17, v14, v15, &v23);

  return v23;
}

void sub_100199170(uint64_t *a1@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = sub_10012902C();

  *a1 = v3;
}

id sub_1001991E0(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a5;
  v14 = a1;
  v15 = sub_100199024(v13, v12, a2, a3);

  (*(v10 + 8))(v12, v9);

  return v15;
}

void sub_10019930C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  sub_1001A5E00(v9, a5, sub_1001290A8);

  swift_unknownObjectRelease();
}

void sub_1001993E8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, uint64_t, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  sub_1001A5E00(v11, a5, a6);

  swift_unknownObjectRelease();
}

uint64_t sub_1001994D0(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void, void, void), void (*a8)(char *, char *))
{
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = a3;
  v19 = a1;
  LOBYTE(a8) = sub_1001A4B54(v17, a5, a6, a7, a8);

  (*(v15 + 8))(v17, v14);
  return a8 & 1;
}

uint64_t sub_100199600(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  LOBYTE(a4) = sub_1001A5EC4(a4, 1, sub_1001A62AC);

  return a4 & 1;
}

void sub_10019966C(uint64_t a1@<X0>, uint64_t (*a2)(void *, uint64_t)@<X3>, _BYTE *a3@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  LOBYTE(a2) = a2(Strong, a1);

  *a3 = a2 & 1;
}

uint64_t sub_1001996D8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  LOBYTE(a4) = sub_1001A5EC4(a4, 0, sub_1001A627C);

  return a4 & 1;
}

void sub_100199744()
{
  if (sub_100189678(&qword_100771750, sub_1002DF79C))
  {
    v1 = TTRListContentsPrefetchExtender.extendFetchIndexPaths(_:sectionCountProvider:rowCountProvider:)();
    __chkstk_darwin(v1);
    sub_100058000(&unk_10078A370);
    sub_10011763C(&unk_100771B00, &unk_10078A370);
    Sequence.compactMap<A>(_:)();

    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_1002DF680();
  }
}

uint64_t sub_10019991C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_isaMask;
  sub_100189FAC();
  v5 = *((v4 & v3) + 0x50);
  v6 = sub_10015F6B4();

  if (!v6)
  {
    return (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }

  v7 = *(*v6 + 144);
  swift_beginAccess();
  v8 = *(v5 - 8);
  (*(v8 + 16))(a2, v6 + v7, v5);

  return (*(v8 + 56))(a2, 0, 1, v5);
}

uint64_t sub_100199AC8(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for IndexPath();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = a3;
  v6 = a1;
  sub_100199744();
}

id sub_100199B48(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v48 = a3;
  v49 = a2;
  v6 = *((swift_isaMask & *v4) + 0x50);
  v51 = *(v6 - 8);
  v7 = __chkstk_darwin(a1);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v45 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v45 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v13);
  v18 = &v45 - v17;
  type metadata accessor for TTRITreeViewContextMenuItemIdentifier();
  sub_10056C470(a1, AssociatedTypeWitness, v15);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v12 + 8))(v15, v11);
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003E30(v19, qword_1007716F0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "TTRITreeViewTableAdapter: unexpected type for context menu item ID", v22, 2u);
    }

    return 0;
  }

  v45 = v16;
  (*(v16 + 32))(v18, v15, AssociatedTypeWitness);
  sub_100189FAC();
  v46 = v18;
  v23 = sub_10015FB6C();

  if (!v23)
  {
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100003E30(v32, qword_1007716F0);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v46;
    if (v35)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "TTRITreeViewTableAdapter: unable to generate UITargetedPreview; item may have been deleted", v37, 2u);
    }

    (*(v45 + 8))(v36, AssociatedTypeWitness);
    return 0;
  }

  v24 = *(*v23 + 144);
  swift_beginAccess();
  v25 = v51;
  v26 = v23 + v24;
  v27 = v47;
  (*(v51 + 16))(v47, v26, v6);

  v28 = v50;
  (*(v25 + 32))(v50, v27, v6);
  v29 = v49(v28);
  if (v29)
  {
    v30 = v29;
    (*(v25 + 8))(v28, v6);
    (*(v45 + 8))(v46, AssociatedTypeWitness);
    return v30;
  }

  v38 = sub_100191C34(v28);
  if (!v38)
  {
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100003E30(v41, qword_1007716F0);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "TTRITreeViewTableAdapter: unable to generate UITargetedPreview; cell not found", v44, 2u);
    }

    (*(v25 + 8))(v28, v6);
    (*(v45 + 8))(v46, AssociatedTypeWitness);
    return 0;
  }

  v39 = v38;
  v40 = [objc_allocWithZone(UITargetedPreview) initWithView:v38];

  (*(v25 + 8))(v28, v6);
  (*(v45 + 8))(v46, AssociatedTypeWitness);
  return v40;
}

uint64_t sub_10019A1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  result = sub_100189678(&qword_100771758, sub_100128A14);
  if (result)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v9 = a4(Strong, a1, a3);

    return v9;
  }

  return result;
}

id sub_10019A288(void *a1)
{
  v1 = a1;
  sub_10019A2F0();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

uint64_t sub_10019A2F0()
{
  v1 = swift_isaMask & *v0;
  v2 = v0 + qword_100771760;
  v3 = *(v0 + qword_100771760);
  if (v3)
  {
    v5 = *(v2 + 1);
    v4 = *(v2 + 2);
    v6 = *(v1 + 80);
    v7 = v2[24];

    v8 = sub_1001604BC(v3, v5, v4, v7 & 1, v6);

    return v8;
  }

  else
  {
    v12.receiver = v0;
    v12.super_class = swift_getObjectType();
    v10 = objc_msgSendSuper2(&v12, "debugDescription");
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v11;
  }
}

uint64_t sub_10019A418(uint64_t a1)
{
  type metadata accessor for TTRITreeViewNodeReuseQueue();
  v2 = sub_10059F120();
  v3 = sub_10019A520(v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = a1 + qword_100771760;
  v11 = *(a1 + qword_100771760);
  *v10 = v3;
  *(v10 + 8) = v5;
  *(v10 + 16) = v7;
  *(v10 + 24) = v9 & 1;

  sub_100100898(v11);
  return v3;
}

uint64_t sub_10019A520(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x50);
  v4 = type metadata accessor for Optional();
  v24 = *(v4 - 8);
  v25 = v4;
  __chkstk_darwin(v4);
  v6 = v23 - v5;
  v7 = sub_1001603A4();
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v29 = v10 & 1;
  v11 = sub_100189678(&qword_100771740, sub_100128A14);
  if (!v11)
  {
    return v7;
  }

  v12 = v11;
  Strong = swift_unknownObjectUnownedLoadStrong();
  (*(*(v3 - 8) + 56))(v6, 1, 1, v3);
  v23[1] = v12;
  v14 = sub_1002DF538();

  result = (*(v24 + 8))(v6, v25);
  if (v14 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v14)
    {
      v16 = 0;
      do
      {
        v17 = v16 + 1;
        sub_1001907A8(v16, a1);
        v19 = v18;
        v21 = v20;
        v22 = type metadata accessor for TTRITreeViewSectionsMetadata();
        sub_10015E3E0(v19, v21, v22);

        v16 = v17;
      }

      while (v14 != v17);
    }

    return v26;
  }

  return result;
}

uint64_t sub_10019A77C(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for TTRITreeViewBatchUpdatesContext();
  v4 = sub_100189FAC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = (a1 + qword_100771778);
  swift_beginAccess();
  v13 = *v11;
  v12 = v11[1];

  v14 = sub_10008A404(v4, v6, v8, v10 & 1, v13, v12);

  if (a2)
  {
    a2(v14);
  }

  *(a1 + qword_100771770) = v14;

  if ((*(v14 + 72) & 1) == 0)
  {
    sub_10000B0D8(a1 + qword_100771738, v18);
    v15 = v19;
    v16 = v20;
    sub_10000C36C(v18, v19);
    (*(v16 + 16))(v15, v16);
    sub_100004758(v18);
  }

  return v14;
}

BOOL sub_10019A924()
{
  sub_100189FAC();
  v0 = sub_10015FB6C();

  if (v0)
  {
  }

  return v0 == 0;
}

uint64_t sub_10019A9F0(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v39 = a3;
  v6 = *((swift_isaMask & *v3) + 0x58);
  v33 = *((swift_isaMask & *v3) + 0x50);
  v34 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v27 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100189678(&qword_100771748, sub_1002DF79C);
  v27 = result;
  if (result)
  {
    v15 = *(a1 + 16);
    if (v15)
    {
      v29 = qword_100771780;
      v30 = qword_100771730;
      v17 = *(v11 + 16);
      v16 = v11 + 16;
      v18 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
      v35 = *(v16 + 56);
      v36 = v17;
      v28 = (v7 + 8);
      v37 = v16;
      v19 = (v16 - 8);
      v31 = v10;
      v17(v13, v18, v10);
      while (1)
      {
        v20 = v38(v13);
        if (v20)
        {
          v21 = v20;
          v22 = *(v4 + v30);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v24 = [v22 cellForRowAtIndexPath:{isa, v27}];

          if (v24)
          {
            v26 = sub_100196428(v24, v21);
            sub_10023A594(v26);
            swift_beginAccess();
            type metadata accessor for TTRITreeViewSoftReloadContext();
            sub_100421958(v9);
            swift_endAccess();
          }

          else
          {
            sub_10023A594(v25);
            swift_beginAccess();
            type metadata accessor for TTRITreeViewSoftReloadContext();
            sub_100421AA4(v9);
            swift_endAccess();
          }

          (*v28)(v9, AssociatedTypeWitness);
          v10 = v31;
        }

        (*v19)(v13, v10);
        v18 += v35;
        if (!--v15)
        {
          break;
        }

        v36(v13, v18, v10);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10019ADAC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for Optional();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v13[-v4];
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v3);
  v8 = &v13[-v7];
  AnyHashable.base.getter();
  if (swift_dynamicCast())
  {
    (*(v6 + 56))(v5, 0, 1, AssociatedTypeWitness);
    (*(v6 + 32))(v8, v5, AssociatedTypeWitness);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = sub_10019B010();
    }

    else
    {
      v11 = 0;
    }

    (*(v6 + 8))(v8, AssociatedTypeWitness);
  }

  else
  {
    (*(v6 + 56))(v5, 1, 1, AssociatedTypeWitness);
    (*(v2 + 8))(v5, v1);
    return 0;
  }

  return v11;
}

uint64_t sub_10019B010()
{
  sub_100189FAC();
  v0 = sub_10015FB6C();

  if (v0)
  {
    sub_100189FAC();
    v1 = sub_1001600A8(v0);

    if (v1)
    {
      sub_100189FAC();
      v2 = sub_10015DA7C();

      return v2;
    }
  }

  return 0;
}

unint64_t sub_10019B17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for TTRITreeViewNode();
    swift_getWitnessTable();
    result = Set.Iterator.init(_cocoa:)();
    v5 = v36[4];
    v7 = v36[5];
    v8 = v36[6];
    v9 = v36[7];
    v10 = v36[8];
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  v27 = v7;
  v28 = v5;
  v26 = v14;
  while (v5 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      return sub_10008BA48();
    }

    type metadata accessor for TTRITreeViewNode();
    _forceBridgeFromObjectiveC<A>(_:_:)();
    swift_unknownObjectRelease();
    v19 = *&v34[0];
    v16 = v9;
    v18 = v10;
    if (!*&v34[0])
    {
      return sub_10008BA48();
    }

LABEL_19:
    result = sub_10019B4D8(v19, a2, a3, a4, a5 & 1);
    v20 = result;
    v33 = v18;
    if (result >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v21 = result;
      if (!result)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v21 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_8;
      }
    }

    if (v21 < 1)
    {
      goto LABEL_31;
    }

    v22 = 0;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v20 + 8 * v22 + 32);
      }

      v24 = v23;
      ++v22;
      v36[3] = sub_100003540(0, &qword_10076B020);
      v36[0] = v24;
      v35 = 0;
      memset(v34, 0, sizeof(v34));
      v25 = v24;
      sub_100192A24(v36, v19, v34);

      sub_1000079B4(v34, &unk_10076B8C0);
      sub_1000079B4(v36, &qword_10076AE40);
    }

    while (v21 != v22);
LABEL_8:

    v9 = v16;
    v10 = v33;
    v7 = v27;
    v5 = v28;
    v14 = v26;
  }

  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_15:
    v18 = (v15 - 1) & v15;
    v19 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v19)
    {
      return sub_10008BA48();
    }

    goto LABEL_19;
  }

  v17 = v9;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v14)
    {
      return sub_10008BA48();
    }

    v15 = *(v7 + 8 * v16);
    ++v17;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10019B4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = a1;
  v10 = *(*a1 + 80);
  v11 = *(v10 - 8);
  __chkstk_darwin(a1);
  v13 = &v26 - v12;
  v15 = *(v14 + 144);
  swift_beginAccess();
  (*(v11 + 16))(v13, v9 + v15, v10);
  LOBYTE(v9) = sub_1001600A8(v9);
  sub_100058000(&qword_10076B920);
  if (v9)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10062D3F0;
    *(v16 + 32) = sub_100191EE8(v13, a2, a3, a4, a5 & 1, &selRef_headerViewForSection_);
    result = sub_100191EE8(v13, a2, a3, a4, a5 & 1, &selRef_footerViewForSection_);
    if (result)
    {
      *(v16 + 40) = result;
    }

    else
    {
      *(v16 + 40) = 0;
    }

    v18 = 2;
  }

  else
  {
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10062D400;
    result = sub_100191CAC(v13, a2, a3, a4, a5 & 1);
    if (result)
    {
      *(v16 + 32) = result;
    }

    else
    {
      *(v16 + 32) = 0;
    }

    v18 = 1;
  }

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v26 = _swiftEmptyArrayStorage;
  v21 = v16 + 32;
  v22 = v18 == 0;
  while (!v22)
  {
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_29;
    }

    v24 = *(v21 + 8 * v19);
    if (v24)
    {
      goto LABEL_14;
    }

    if (v23 == v18)
    {
      goto LABEL_27;
    }

    if (v23 >= v18)
    {
      break;
    }

    v19 += 2;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_29;
    }

    v24 = *(v21 + 8 * v23);
    if (!v24)
    {
      if (v19 == v18)
      {
        goto LABEL_27;
      }

      if (v19 >= v18)
      {
        break;
      }

      v23 += 2;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_29;
      }

      v24 = *(v21 + 8 * v19);
LABEL_14:
      v19 = v23;
    }

    v25 = v24;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20 = v26;
    v22 = v19 >= v18;
    if (v19 == v18)
    {
LABEL_27:

      (*(v11 + 8))(v13, v10);
      return v20;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10019B7F0(uint64_t *a1)
{
  v1 = *a1;
  result = IndexPath.row.getter();
  if (__OFADD__(result, v1))
  {
    __break(1u);
  }

  else
  {
    IndexPath.section.getter();
    return IndexPath.init(row:section:)();
  }

  return result;
}

void sub_10019B84C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_1007716F0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "TTRITreeViewTableAdapter: updating for collapsed states change", v7, 2u);
    }

    sub_1001897A4(v1, 1);
  }
}

uint64_t sub_10019B974(uint64_t a1, void *a2, uint64_t a3)
{
  v83 = a2;
  v5 = *a2;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & *a2) + 0x50);
  v77 = type metadata accessor for Optional();
  v82 = *(v77 - 8);
  __chkstk_darwin(v77);
  v73 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v68 - v10;
  v12 = *(v7 - 8);
  __chkstk_darwin(v13);
  v69 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v70 = v68 - v16;
  v17 = *((v6 & v5) + 0x58);
  v18 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  __chkstk_darwin(v20 - 8);
  v71 = v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v68 - v23;
  j = a3;
  v68[0] = v17;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    swift_getAssociatedConformanceWitness();
    Set.Iterator.init(_cocoa:)();
    result = v84;
    v26 = v85;
    v27 = v86;
    v28 = v87;
    v29 = v88;
  }

  else
  {
    v30 = -1 << *(a1 + 32);
    v26 = a1 + 56;
    v27 = ~v30;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v29 = v32 & *(a1 + 56);

    v28 = 0;
  }

  v33 = AssociatedTypeWitness - 8;
  v68[1] = v27;
  v34 = (v27 + 64) >> 6;
  v75 = (v12 + 8);
  v76 = (v12 + 32);
  v74 = (v82 + 8);
  v81 = (v12 + 48);
  v82 = v18;
  v35 = v71;
  v78 = v34;
  for (i = result; ; result = i)
  {
    if (result < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
LABEL_23:
        v50 = *(AssociatedTypeWitness - 8);
        (*(v50 + 56))(v24, 1, 1, AssociatedTypeWitness);
        sub_10008BA48();
        v51 = j;
        if ((j & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          swift_getAssociatedConformanceWitness();
          result = Set.Iterator.init(_cocoa:)();
          v51 = v89;
          v52 = v90;
          v53 = v91;
          i = v92;
          v54 = v93;
        }

        else
        {
          v55 = -1 << *(j + 32);
          v52 = j + 56;
          v53 = ~v55;
          v56 = -v55;
          if (v56 < 64)
          {
            v57 = ~(-1 << v56);
          }

          else
          {
            v57 = -1;
          }

          v54 = v57 & *(j + 56);

          i = 0;
        }

        v78 = v53;
        for (j = v51; ; v51 = j)
        {
          if (v51 < 0)
          {
            if (!__CocoaSet.Iterator.next()())
            {
LABEL_45:
              (*(v50 + 56))(v35, 1, 1, AssociatedTypeWitness);
              return sub_10008BA48();
            }

            _forceBridgeFromObjectiveC<A>(_:_:)();
            swift_unknownObjectRelease();
            v59 = v50;
            (*(v50 + 56))(v35, 0, 1, AssociatedTypeWitness);
          }

          else
          {
            if (!v54)
            {
              v60 = i;
              while (1)
              {
                v58 = v60 + 1;
                if (__OFADD__(v60, 1))
                {
                  goto LABEL_48;
                }

                if (v58 >= ((v53 + 64) >> 6))
                {
                  goto LABEL_45;
                }

                v54 = *(v52 + 8 * v58);
                ++v60;
                if (v54)
                {
                  i = v58;
                  goto LABEL_42;
                }
              }
            }

            v58 = i;
LABEL_42:
            v61 = __clz(__rbit64(v54));
            v54 &= v54 - 1;
            v62 = v61 | (v58 << 6);
            v63 = *(v51 + 48);
            v59 = v50;
            (*(v50 + 16))(v35, v63 + *(v50 + 72) * v62, AssociatedTypeWitness);
            (*(v50 + 56))(v35, 0, 1, AssociatedTypeWitness);
          }

          v64 = v73;
          sub_10019CB2C(v35, sub_10015FB6C, v73);
          (*(v59 + 8))(v35, AssociatedTypeWitness);
          v65 = v82;
          if ((*v81)(v64, 1, v82) == 1)
          {
            result = (*v74)(v64, v77);
          }

          else
          {
            v66 = v69;
            (*v76)(v69, v64, v65);
            sub_1001A2A10(v66, 5);
            v67 = v66;
            v35 = v71;
            result = (*v75)(v67, v65);
          }
        }
      }

      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v37 = *(AssociatedTypeWitness - 8);
      goto LABEL_21;
    }

    if (!v29)
    {
      break;
    }

    v36 = v28;
LABEL_20:
    v39 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v37 = *(AssociatedTypeWitness - 8);
    (*(v37 + 16))(v24, *(result + 48) + *(v37 + 72) * (v39 | (v36 << 6)), AssociatedTypeWitness);
LABEL_21:
    (*(v37 + 56))(v24, 0, 1, AssociatedTypeWitness);
    sub_10019CB2C(v24, sub_10015FB6C, v11);
    (*(v37 + 8))(v24, AssociatedTypeWitness);
    v40 = v82;
    if ((*v81)(v11, 1, v82) == 1)
    {
      (*v74)(v11, v77);
    }

    else
    {
      v41 = *v76;
      v72 = v28;
      v42 = v26;
      v43 = AssociatedTypeWitness;
      v44 = v24;
      v45 = v33;
      v46 = v35;
      v47 = v11;
      v48 = v70;
      v41(v70, v47, v40);
      sub_1001A2544(v48, 5);
      v49 = v48;
      v11 = v47;
      v35 = v46;
      v33 = v45;
      v24 = v44;
      AssociatedTypeWitness = v43;
      v26 = v42;
      v28 = v72;
      (*v75)(v49, v40);
    }

    v34 = v78;
  }

  v38 = v28;
  while (1)
  {
    v36 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v36 >= v34)
    {
      goto LABEL_23;
    }

    v29 = *(v26 + 8 * v36);
    ++v38;
    if (v29)
    {
      v28 = v36;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_10019C31C(uint64_t a1)
{
  sub_10003B788(a1 + qword_100771718);

  swift_unknownObjectUnownedDestroy();

  sub_100004758(a1 + qword_100771738);

  sub_100100898(*(a1 + qword_100771760));
}

uint64_t sub_10019C4F0(void *a1)
{
  v2 = v1;
  v46 = *(*((swift_isaMask & *v2) + 0x50) - 8);
  __chkstk_darwin(a1);
  v43 = &v41 - v4;
  v44 = *((v6 & v5) + 0x58);
  v45 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v13 = sub_100058000(&unk_1007884E0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v41 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v14);
  v47 = &v41 - v18;
  sub_10000C36C(a1, a1[3]);
  dispatch thunk of TTRITreeViewCellProtocol.treeCellViewModel.getter();
  v19 = type metadata accessor for TTRITreeViewCellModel();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v16, 1, v19) == 1)
  {
    sub_1000079B4(v16, &unk_1007884E0);
    v49 = 0u;
    v50 = 0u;
  }

  else
  {
    TTRITreeViewCellModel.itemIdentifier.getter();
    (*(v20 + 8))(v16, v19);
    AnyHashable.base.getter();
    sub_100077654(v48);
  }

  sub_100058000(&qword_10076AE40);
  v21 = swift_dynamicCast();
  v22 = *(v17 + 56);
  if (v21)
  {
    v22(v12, 0, 1, AssociatedTypeWitness);
    v23 = v47;
    (*(v17 + 32))(v47, v12, AssociatedTypeWitness);
    sub_100189FAC();
    v24 = v45;
    v25 = sub_10015FB6C();

    if (v25)
    {
      v26 = *(*v25 + 144);
      swift_beginAccess();
      v27 = v46;
      v28 = v43;
      v44 = *(v46 + 16);
      v44(v43, v25 + v26, v24);
      v29 = sub_10018AAA4(v28);
      v30 = v24;
      v33 = *(v27 + 8);
      v31 = v27 + 8;
      v32 = v33;
      v33(v28, v30);
      if (v29)
      {
        v46 = v31;
        v34 = [*(v2 + qword_100771730) style];
        v42 = v32;
        if (v34 == 2 && (sub_100189FAC(), LODWORD(v41) = sub_1001600A8(v25), , , , (v41 & 1) != 0))
        {
          v41 = 0;
        }

        else
        {
          v41 = 3;
        }

        v36 = v43;
        v37 = v44;
        v38 = v45;
        v44(v43, v25 + v26, v45);
        v39 = sub_10018AFFC(v36);
        v42(v36, v38);
        v37(v36, v25 + v26, v38);
        v40 = (v17 + 8);
        if (v39)
        {
          sub_1001A2544(v36, v41);
        }

        else
        {
          sub_1001A2A10(v36, v41);
        }

        v42(v36, v38);
        return (*v40)(v47, AssociatedTypeWitness);
      }

      else
      {
        (*(v17 + 8))(v47, AssociatedTypeWitness);
      }
    }

    else
    {
      return (*(v17 + 8))(v23, AssociatedTypeWitness);
    }
  }

  else
  {
    v22(v12, 1, 1, AssociatedTypeWitness);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_10019CB2C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, void)@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = swift_isaMask;
  v9 = sub_100189FAC();
  v10 = *((v8 & v7) + 0x50);
  v14 = a2(a1, v9, v12, v13, v11 & 1, v10, *((v8 & v7) + 0x58));

  if (v14)
  {
    v15 = *(*v14 + 144);
    swift_beginAccess();
    v16 = *(v10 - 8);
    (*(v16 + 16))(a3, v14 + v15, v10);

    return (*(v16 + 56))(a3, 0, 1, v10);
  }

  else
  {
    v18 = *(*(v10 - 8) + 56);

    return v18(a3, 1, 1, v10);
  }
}

uint64_t sub_10019CD00(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = type metadata accessor for TTRITreeViewExpandedState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100189FAC();
  v13 = sub_10015F984(a1, v9, v11, v12, v10 & 1, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58));

  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = qword_1007A84C0;
  swift_beginAccess();
  (*(v6 + 16))(v8, v13 + v14, v5);
  v15 = (*(v6 + 88))(v8, v5);
  if (v15 == enum case for TTRITreeViewExpandedState.notExpandable(_:) || v15 == enum case for TTRITreeViewExpandedState.collapsed(_:))
  {

LABEL_5:
    v16 = 0;
    return v16 & 1;
  }

  if (v15 == enum case for TTRITreeViewExpandedState.expanded(_:))
  {
    swift_beginAccess();
    v19[1] = *(v13 + 64);
    type metadata accessor for TTRITreeViewNode();
    type metadata accessor for Array();

    swift_getWitnessTable();
    v18 = Collection.isEmpty.getter();

    v16 = v18 ^ 1;
    return v16 & 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10019CF8C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v40 = a2;
  v41 = a1;
  v44 = a4;
  v7 = swift_isaMask & *v5;
  v8 = *(v7 + 0x50);
  v9 = type metadata accessor for Optional();
  v37 = *(v9 - 8);
  v38 = v9;
  __chkstk_darwin(v9);
  v42 = v34 - v10;
  v43 = *(v8 - 8);
  __chkstk_darwin(v11);
  v39 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v36 = v34 - v14;
  v15 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v15 - 8);
  v17 = v34 - v16;
  v18 = type metadata accessor for IndexPath();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a3, v17, &unk_100771B10);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1000079B4(v17, &unk_100771B10);
LABEL_7:
    type metadata accessor for TTRITreeViewTableAdapter.InsertDestination();
    return swift_storeEnumTagMultiPayload();
  }

  (*(v19 + 32))(v21, v17, v18);
  v22 = sub_100189FAC();

  v48 = v22;
  v23 = *(v7 + 88);
  type metadata accessor for TTRITreeViewSectionsMetadata.Section();
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();

  v47 = v45;
  v46 = IndexPath.section.getter();
  sub_100058000(&qword_10076FC10);
  if ((Range.contains(_:)() & 1) == 0)
  {
    (*(v19 + 8))(v21, v18);
    goto LABEL_7;
  }

  sub_100189FAC();

  IndexPath.section.getter();
  Array.subscript.getter();

  v34[1] = *(&v45 + 1);
  v48 = *(&v45 + 1);
  v35 = v45;
  type metadata accessor for TTRITreeViewNode();
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  v47 = v45;
  v46 = IndexPath.row.getter();
  if ((Range.contains(_:)() & 1) == 0)
  {
    v34[0] = v23;
    v27 = v35;
    v28 = *(*v35 + 144);
    swift_beginAccess();
    v29 = v43;
    v30 = v39;
    (*(v43 + 16))(v39, v27 + v28, v8);
    v31 = v42;
    sub_10019E920(v41, v40 & 1, v30, v42);

    (*(v29 + 8))(v30, v8);
    (*(v19 + 8))(v21, v18);
    if ((*(v29 + 48))(v31, 1, v8) != 1)
    {
      v32 = *(v29 + 32);
      v33 = v36;
      v32(v36, v31, v8);
      v32(v44, v33, v8);
      type metadata accessor for TTRITreeViewTableAdapter.InsertDestination();
      return swift_storeEnumTagMultiPayload();
    }

    (*(v37 + 8))(v31, v38);
    goto LABEL_7;
  }

  IndexPath.row.getter();
  Array.subscript.getter();

  (*(v19 + 8))(v21, v18);
  v24 = v47;
  v25 = *(*v47 + 144);
  swift_beginAccess();
  (*(v43 + 16))(v44, v24 + v25, v8);

  type metadata accessor for TTRITreeViewTableAdapter.InsertDestination();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10019D678@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  LODWORD(v126) = a2;
  v140 = a3;
  v5 = *v3;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & v5) + 0x50);
  v8 = type metadata accessor for Optional();
  v135 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v122 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v123 = &v113 - v12;
  __chkstk_darwin(v11);
  v120 = &v113 - v13;
  v14 = *((v6 & v5) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v128 = *(AssociatedTypeWitness - 8);
  v15 = __chkstk_darwin(AssociatedTypeWitness);
  v127 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v134 = &v113 - v18;
  v131 = *(v7 - 8);
  v19 = __chkstk_darwin(v17);
  v121 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v124 = &v113 - v22;
  v23 = __chkstk_darwin(v21);
  v119 = &v113 - v24;
  v25 = __chkstk_darwin(v23);
  v125 = &v113 - v26;
  __chkstk_darwin(v25);
  v130 = &v113 - v27;
  v139 = type metadata accessor for TTRITreeViewTableAdapter.MoveDestination();
  v133 = *(v139 - 8);
  __chkstk_darwin(v139);
  v132 = &v113 - v28;
  v29 = type metadata accessor for IndexPath();
  v30 = *(v29 - 8);
  v136 = v29;
  v137 = v30;
  __chkstk_darwin(v29);
  v138 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100189FAC();

  v143 = v32;
  type metadata accessor for TTRITreeViewSectionsMetadata.Section();
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();

  v141[2] = v141[0];
  v142 = IndexPath.section.getter();
  sub_100058000(&qword_10076FC10);
  if ((Range.contains(_:)() & 1) == 0)
  {
    return swift_storeEnumTagMultiPayload();
  }

  sub_100189FAC();
  v33 = sub_10015F6B4();

  if (!v33)
  {
    return swift_storeEnumTagMultiPayload();
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_100766FC8 == -1)
    {
LABEL_10:
      v45 = type metadata accessor for Logger();
      sub_100003E30(v45, qword_1007716F0);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "section node cannot be moved", v48, 2u);
      }

      return swift_storeEnumTagMultiPayload();
    }

LABEL_54:
    swift_once();
    goto LABEL_10;
  }

  v117 = v33;
  v114 = v8;
  v115 = *(Strong + 16);

  sub_100189FAC();

  IndexPath.section.getter();
  Array.subscript.getter();

  v118 = *(&v141[0] + 1);
  v116 = *&v141[0];
  v36 = v137;
  v35 = v138;
  v37 = v136;
  (*(v137 + 16))(v138, a1, v136);
  v38 = IndexPath.section.getter();
  if (v38 == IndexPath.section.getter())
  {
    v39 = IndexPath.row.getter();
    v40 = IndexPath.row.getter();
    v41 = v39 < v40;
    v42 = v135;
    if (v39 < v40 && (v126 & 1) != 0)
    {
      v43 = IndexPath.row.modify();
      if (__OFADD__(*v44, 1))
      {
        __break(1u);
        goto LABEL_56;
      }

      ++*v44;
      v43(v141, 0);
      v41 = 1;
    }
  }

  else
  {
    v41 = 0;
    v42 = v135;
  }

  type metadata accessor for TTRITreeViewNode();
  v50 = Array.count.getter();
  v51 = IndexPath.row.getter();
  if (v50 < 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v51 < 0 || v51 >= v50)
  {
    if (v50 == v51)
    {
      v69 = v123;
      sub_10019F818(v115, v123);
      v70 = v131;
      v71 = *(v131 + 48);
      if ((v71)(v69, 1, v7) != 1)
      {
        v94 = *(v70 + 32);
        v135 = v70 + 32;
        v126 = v94;
        v94(v124, v69, v7);
        v95 = *(v14 + 24);
        v95(v7, v14);
        v96 = v117;
        v97 = *(*v117 + 144);
        swift_beginAccess();
        v98 = v96 + v97;
        v99 = v130;
        (*(v70 + 16))(v130, v98, v7);
        v100 = v127;
        v95(v7, v14);
        v131 = *(v70 + 8);
        (v131)(v99, v7);
        v101 = AssociatedTypeWitness;
        swift_getAssociatedConformanceWitness();
        v102 = v134;
        v103 = dispatch thunk of static Equatable.== infix(_:_:)();

        v104 = *(v128 + 1);
        v104(v100, v101);
        v104(v102, v101);
        (*(v36 + 8))(v138, v37);
        v84 = v133;
        if (v103)
        {
          (v131)(v124, v7);
          v67 = v132;
        }

        else
        {
          v67 = v132;
          v126(v132, v124, v7);
        }

        v68 = v139;
        goto LABEL_45;
      }

      v72 = *(v42 + 8);
      v135 = v42 + 8;
      v128 = v72;
      v72(v69, v114);
      sub_1001A0144(v7, v7);
      swift_allocObject();
      v73 = static Array._adoptStorage(_:count:)();
      v134 = v71;
      v75 = v74;
      v76 = v117;
      v77 = *(*v117 + 144);
      swift_beginAccess();
      v78 = *(v70 + 16);
      v78(v75, v76 + v77, v7);
      AssociatedTypeWitness = sub_10015D9FC(v73);
      v79 = v116;
      v80 = *(*v116 + 144);
      swift_beginAccess();
      v81 = v130;
      v78(v130, v79 + v80, v7);
      v82 = v122;
      sub_10019E920(AssociatedTypeWitness, 0, v81, v122);

      (*(v70 + 8))(v81, v7);
      (*(v137 + 8))(v138, v136);
      if ((v134)(v82, 1, v7) != 1)
      {
        v105 = *(v70 + 32);
        v106 = v121;
        v105(v121, v82, v7);
        v67 = v132;
        v105(v132, v106, v7);
        v68 = v139;
        goto LABEL_27;
      }

      v128(v82, v114);
    }

    else
    {
      (*(v36 + 8))(v35, v37);
    }

    v67 = v132;
    v68 = v139;
    goto LABEL_27;
  }

  LODWORD(v126) = v41;
  sub_100189FAC();
  v52 = sub_10015F6B4();

  if (!v52)
  {
    if (qword_100766FC8 == -1)
    {
LABEL_31:
      v85 = type metadata accessor for Logger();
      sub_100003E30(v85, qword_1007716F0);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&_mh_execute_header, v86, v87, "Failed to lookup node given a valid destinationIndexPath", v88, 2u);
      }

      else
      {
      }

      (*(v36 + 8))(v35, v37);
      return swift_storeEnumTagMultiPayload();
    }

LABEL_56:
    swift_once();
    goto LABEL_31;
  }

  v53 = *(*v52 + 144);
  swift_beginAccess();
  v54 = v131;
  v56 = (v131 + 16);
  v55 = *(v131 + 16);
  v122 = v53;
  v57 = v130;
  v55(v130, v52 + v53, v7);
  v124 = *(v14 + 24);
  (v124)(v7, v14);
  v123 = *(v54 + 8);
  (v123)(v57, v7);
  v58 = v117;
  v59 = *(*v117 + 144);
  swift_beginAccess();
  v60 = v58 + v59;
  v61 = v125;
  v130 = v56;
  v121 = v55;
  v55(v125, v60, v7);
  v62 = v127;
  (v124)(v7, v14);
  (v123)(v61, v7);
  v63 = v52;
  v64 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v65 = v134;
  LOBYTE(v53) = dispatch thunk of static Equatable.== infix(_:_:)();
  v66 = *(v128 + 1);
  v66(v62, v64);
  v66(v65, v64);
  if ((v53 & 1) == 0)
  {
    v67 = v132;
    (v121)(v132, v63 + v122, v7);
    v68 = v139;
    swift_storeEnumTagMultiPayload();
    v89 = v137;
    if (v126)
    {
      v90 = v117;
      v91 = swift_weakLoadStrong();
      v92 = v136;
      if (v91)
      {
        v93 = *(v91 + 16);

        if (*(v90 + 32))
        {
          (*(v89 + 8))(v138, v92);

          goto LABEL_28;
        }

        if (*(v63 + 32) != 1 && *(v63 + 24) < *(v90 + 24))
        {
          v107 = v93;
          v108 = v138;
          sub_10019F818(v107, v120);
          v109 = v120;

          (*(v89 + 8))(v108, v92);
          v110 = v131;
          if ((*(v131 + 48))(v109, 1, v7) == 1)
          {
            (*(v135 + 8))(v109, v114);
            goto LABEL_28;
          }

          v84 = v133;
          (*(v133 + 8))(v67, v68);
          v111 = *(v110 + 32);
          v112 = v119;
          v111(v119, v109, v7);
          v111(v67, v112, v7);
LABEL_45:
          swift_storeEnumTagMultiPayload();
          v83 = v140;
          return (*(v84 + 32))(v83, v67, v68);
        }
      }

      (*(v89 + 8))(v138, v92);
    }

    else
    {
      (*(v137 + 8))(v138, v136);
    }

    goto LABEL_28;
  }

  (*(v137 + 8))(v138, v136);

  v67 = v132;
  v68 = v139;
LABEL_27:
  swift_storeEnumTagMultiPayload();
LABEL_28:
  v83 = v140;
  v84 = v133;
  return (*(v84 + 32))(v83, v67, v68);
}

uint64_t sub_10019E920@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v31 = a2;
  v32 = a1;
  v37 = a4;
  v5 = *v4;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & *v4) + 0x50);
  v8 = type metadata accessor for Optional();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = __chkstk_darwin(v8);
  v34 = &v30[-v10];
  v38 = *(v7 - 8);
  __chkstk_darwin(v9);
  v44 = &v30[-v11];
  v12 = type metadata accessor for TTRITreeViewExpandedState();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = Array.init()();
  v16 = sub_100189FAC();
  v33 = v4;
  v43 = *((v6 & v5) + 0x58);
  v20 = sub_10015F984(v39, v16, v18, v19, v17 & 1, v7, v43);

  if (v20)
  {
    v42 = enum case for TTRITreeViewExpandedState.notExpandable(_:);
    v41 = enum case for TTRITreeViewExpandedState.collapsed(_:);
    v40 = enum case for TTRITreeViewExpandedState.expanded(_:);
    v21 = (v38 + 16);
    while (1)
    {
      v22 = qword_1007A84C0;
      swift_beginAccess();
      (*(v13 + 16))(v15, &v20[v22], v12);
      v23 = (*(v13 + 88))(v15, v12);
      if (v23 == v42 || v23 == v41)
      {

        goto LABEL_11;
      }

      if (v23 != v40)
      {
        break;
      }

      v25 = *(*v20 + 144);
      swift_beginAccess();
      (*v21)(v44, &v20[v25], v7);
      type metadata accessor for Array();

      Array.append(_:)();
      swift_beginAccess();
      v46 = *(v20 + 8);
      type metadata accessor for TTRITreeViewNode();
      type metadata accessor for Array();

      swift_getWitnessTable();
      BidirectionalCollection.last.getter();

      v20 = v45;
      if (!v45)
      {
        goto LABEL_11;
      }
    }

    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
LABEL_11:
    v26 = v47;
    v46 = v47;
    type metadata accessor for Array();
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {

      return (*(v38 + 56))(v37, 1, 1, v7);
    }

    else
    {
      if (sub_100189678(&qword_100771758, sub_100128A14))
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
        v29 = v34;
        sub_100128F04(Strong, v32, v31 & 1);
      }

      else
      {
        v46 = v26;
        v29 = v34;
        Collection.first.getter();
      }

      return (*(v35 + 32))(v37, v29, v36);
    }
  }

  return result;
}

void sub_10019EE90(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v96 = a1;
  v97 = a3;
  v98 = a4;
  v8 = *v5;
  v9 = swift_isaMask;
  v10 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v10 - 8);
  v92 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v90 - v13;
  v15 = type metadata accessor for IndexPath();
  v93 = *(v15 - 8);
  v94 = v15;
  __chkstk_darwin(v15);
  v91 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v90 - v18;
  v20 = *(*((v9 & v8) + 0x50) - 8);
  __chkstk_darwin(v21);
  v23 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v90 - v25;
  v28 = v27;
  v95 = *((v9 & v8) + 0x58);
  inserted = type metadata accessor for TTRITreeViewTableAdapter.InsertDestination();
  __chkstk_darwin(inserted);
  v31 = &v90 - v30;
  sub_10019CF8C(v96, a2 & 1, v97, &v90 - v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v33 = 0uLL;
  if (!EnumCaseMultiPayload)
  {
    (*(v20 + 32))(v26, v31, v28, 0);
    v47 = sub_100189FAC();
    sub_10015FF3C(v26, v47, v49, v50, v48 & 1, v28, v95, v14);

    v52 = v93;
    v51 = v94;
    if ((*(v93 + 48))(v14, 1, v94) == 1)
    {
      (*(v20 + 8))(v26, v28);
      sub_1000079B4(v14, &unk_100771B10);
    }

    else
    {
      (*(v52 + 32))(v19, v14, v51);
      v56 = *(v5 + qword_100771730);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v56 rectForRowAtIndexPath:isa];
      x = v58;
      v61 = v60;
      width = v62;
      v65 = v64;

      v102.origin.x = x;
      v102.origin.y = v61;
      v102.size.width = width;
      v102.size.height = v65;
      LOBYTE(v56) = CGRectIsEmpty(v102);
      (*(v52 + 8))(v19, v51);
      (*(v20 + 8))(v26, v28);
      if ((v56 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_23:
    v53 = 1;
    v54 = 0uLL;
    v55 = v98;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v34 = v20;
    v35 = *(v20 + 32);
    v36 = v23;
    v35(v23, v31, v28, 0);
    v37 = v5;
    v38 = sub_100189FAC();
    v42 = sub_10015F984(v36, v38, v40, v41, v39 & 1, v28, v95);

    if (!v42)
    {
LABEL_22:
      (*(v34 + 8))(v36, v28);
      goto LABEL_23;
    }

    sub_100189FAC();
    v43 = sub_10015DCCC();

    if (!v43)
    {
      (*(v34 + 8))(v36, v28);
      goto LABEL_14;
    }

    v97 = v42;
    sub_100189FAC();
    v44 = sub_10015DA7C();
    v46 = v45;

    if (v46)
    {
      (*(v34 + 8))(v36, v28);

LABEL_14:

      goto LABEL_23;
    }

    v96 = v43;
    sub_100189FAC();

    type metadata accessor for TTRITreeViewSectionsMetadata.Section();
    Array.subscript.getter();

    v100 = v101;
    type metadata accessor for TTRITreeViewNode();
    type metadata accessor for Array();
    swift_getWitnessTable();
    BidirectionalCollection.last.getter();
    v68 = v99;

    if (!v68)
    {
      [*(v5 + qword_100771730) rectForHeaderInSection:v44];
      x = v104.origin.x;
      y = v104.origin.y;
      width = v104.size.width;
      height = v104.size.height;
      IsEmpty = CGRectIsEmpty(v104);
      v55 = v98;
      if (IsEmpty)
      {

        (*(v34 + 8))(v36, v28);
        v53 = 1;
        v54 = 0uLL;
LABEL_24:
        v33 = 0uLL;
        goto LABEL_25;
      }

      v106.origin.x = x;
      v106.origin.y = y;
      v106.size.width = width;
      v106.size.height = height;
      v88 = CGRectGetHeight(v106);

      (*(v34 + 8))(v36, v28);
      v61 = y + v88;
      goto LABEL_12;
    }

    sub_100189FAC();
    v70 = v92;
    sub_10015DB40(v69 & 1, v92);

    v71 = v70;

    v73 = v93;
    v72 = v94;
    if ((*(v93 + 48))(v71, 1, v94) == 1)
    {
      (*(v34 + 8))(v36, v28);

      sub_1000079B4(v71, &unk_100771B10);
      goto LABEL_23;
    }

    v77 = v91;
    (*(v73 + 32))(v91, v71, v72);
    v78 = *(v37 + qword_100771730);
    v79 = v77;
    v80 = v78;
    v81 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v80 rectForRowAtIndexPath:v81];
    x = v82;
    v84 = v83;
    width = v85;
    v87 = v86;

    v105.origin.x = x;
    v105.origin.y = v84;
    v105.size.width = width;
    v105.size.height = v87;
    if (CGRectIsEmpty(v105))
    {

      (*(v73 + 8))(v79, v72);
      goto LABEL_22;
    }

    v107.origin.x = x;
    v107.origin.y = v84;
    v107.size.width = width;
    v107.size.height = v87;
    v89 = CGRectGetHeight(v107);

    (*(v73 + 8))(v79, v72);
    (*(v34 + 8))(v36, v28);
    v61 = v84 + v89;
LABEL_11:
    v55 = v98;
LABEL_12:
    v103.size.height = 0.0;
    v103.origin.x = x;
    v103.origin.y = v61;
    v103.size.width = width;
    *&v33 = CGRectInset(v103, 0.0, a5 * -0.5);
    v53 = 0;
    *(&v33 + 1) = v66;
    *(&v54 + 1) = v67;
    goto LABEL_25;
  }

  v53 = 1;
  v54 = 0uLL;
  v55 = v98;
LABEL_25:
  *v55 = v33;
  *(v55 + 16) = v54;
  *(v55 + 32) = v53;
}

uint64_t sub_10019F818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = swift_isaMask & *v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = IndexPath.row.getter();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v19 = a1;
    IndexPath.section.getter();
    IndexPath.init(row:section:)();
    sub_100189FAC();
    v11 = *(v5 + 80);
    v12 = sub_10015F6B4();

    if (v12)
    {
      Strong = swift_weakLoadStrong();
      (*(v7 + 8))(v9, v6);
      v14 = a2;
      if (Strong && (v15 = *(Strong + 16), , v15 == v19))
      {
        v16 = *(*v12 + 144);
        swift_beginAccess();
        v17 = *(v11 - 8);
        (*(v17 + 16))(a2, v12 + v16, v11);

        v18 = 0;
      }

      else
      {

        v17 = *(v11 - 8);
        v18 = 1;
      }
    }

    else
    {
      (*(v7 + 8))(v9, v6);
      v17 = *(v11 - 8);
      v18 = 1;
      v14 = a2;
    }

    return (*(v17 + 56))(v14, v18, 1, v11);
  }

  return result;
}

void sub_10019FB34(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10001047C;
  v5[3] = &unk_100719668;
  v4 = _Block_copy(v5);

  [v3 addAnimations:v4];
  _Block_release(v4);
}

void sub_10019FBF0(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100188D20;
  v5[3] = &unk_100719640;
  v4 = _Block_copy(v5);

  [v3 addCompletion:v4];
  _Block_release(v4);
}

uint64_t sub_10019FCAC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = v1 + 40;
    while (v4 < *(v1 + 16))
    {
      ++v4;
      v6 = *(v5 - 8);

      v6(v7);

      v5 += 16;
      if (v2 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    swift_beginAccess();
    v8 = *(v0 + 24);
    v9 = *(v8 + 16);

    if (!v9)
    {
LABEL_9:

      *(v0 + 16) = _swiftEmptyArrayStorage;

      *(v0 + 24) = _swiftEmptyArrayStorage;
    }

    v10 = 0;
    v11 = v8 + 40;
    while (v10 < *(v8 + 16))
    {
      ++v10;
      v12 = *(v11 - 8);
      v13 = 0;

      v12(&v13);

      v11 += 16;
      if (v9 == v10)
      {
        goto LABEL_9;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10019FDFC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10019FE84(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_beginAccess();
  v7 = *(v5 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1005471F4(0, v7[2] + 1, 1, v7);
    *(v5 + 16) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1005471F4((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_100026418;
  v11[5] = v6;
  *(v5 + 16) = v7;
  return swift_endAccess();
}

uint64_t sub_10019FF8C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_beginAccess();
  v7 = *(v5 + 24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 24) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_100547218(0, v7[2] + 1, 1, v7);
    *(v5 + 24) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_100547218((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_1001A60FC;
  v11[5] = v6;
  *(v5 + 24) = v7;
  return swift_endAccess();
}

uint64_t sub_1001A0094(uint64_t a1)
{
  result = sub_1001A670C(&qword_100771AE8, type metadata accessor for TTRITreeViewAnimatingUnanimatedWrapper);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001A00EC(uint64_t a1)
{
  result = sub_1001A670C(&unk_100771AF0, type metadata accessor for TTRITreeViewAnimatingWrapper);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001A0144(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_100058000(&qword_10076B780);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t sub_1001A0254(uint64_t a1)
{
  v2 = v1;
  *(v2 + qword_100771740) = a1;

  v4 = *(v2 + qword_100771730);
  if (a1)
  {

    v5 = v4;
    v6 = sub_100128A14();

    if (v6)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = v4;
    v7 = 0;
  }

  [v4 setDataSource:v7];

  v9 = v2 + qword_100771760;
  v10 = *(v2 + qword_100771760);
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 24) = 0;
  return sub_100100898(v10);
}

void sub_1001A0318(uint64_t a1, void *a2, uint64_t (*a3)(id), SEL *a4)
{
  v7 = v4;
  *(v7 + *a2) = a1;

  v12 = *(v7 + qword_100771730);
  if (a1)
  {

    v9 = a3(v12);

    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = v12;
    v10 = 0;
  }

  [v12 *a4];
}

id sub_1001A03E4(void *a1)
{
  v2 = *(v1 + qword_100771708);
  *(v1 + qword_100771708) = a1;
  v3 = a1;

  return sub_1001896C8(&qword_100771708, &qword_100787F28, &selRef_setDragDelegate_);
}

id sub_1001A043C(void *a1)
{
  v2 = *(v1 + qword_100771710);
  *(v1 + qword_100771710) = a1;
  v3 = a1;

  return sub_1001896C8(&qword_100771710, &qword_100780C78, &selRef_setDropDelegate_);
}

uint64_t sub_1001A0494(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void (*a6)(uint64_t))
{
  v62 = qword_100771770;
  v10 = *&a5[qword_100771770];
  if (v10)
  {
    v11 = *&a5[qword_100771770];
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_10:

    a6(v19);
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  v11 = sub_1000E236C(a5, a1);
  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_3:
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  swift_beginAccess();
  v13 = *(v11 + 64);

  sub_10003BE34(a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + 64) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_100547070(0, v13[2] + 1, 1, v13);
    *(v11 + 64) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_100547070((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = sub_1001A8454;
  v17[5] = v12;
  *(v11 + 64) = v13;
  v18 = swift_endAccess();
  a6(v18);
  if (!v10)
  {
LABEL_11:
    if (*(v11 + 72))
    {

LABEL_27:
      *&a5[v62] = 0;
    }

    swift_beginAccess();
    if (!*(*(v11 + 80) + 16) && !*(*(v11 + 88) + 16))
    {
      swift_beginAccess();
      if (!*(*(v11 + 96) + 16))
      {
        sub_10000B0D8(&a5[qword_100771738], &v66);
        v57 = *(&v67 + 1);
        v58 = v68;
        sub_10000C36C(&v66, *(&v67 + 1));
        (*(v58 + 24))(v57, v58);

        v55 = &v66;
LABEL_26:
        sub_100004758(v55);
        goto LABEL_27;
      }
    }

    v21 = *(v11 + 48);
    v20 = *(v11 + 56);
    v22 = &a5[qword_100771778];
    swift_beginAccess();
    v23 = *v22;
    v24 = v22[1];

    if (sub_1000E8AD0(v21, v23))
    {
      v25 = sub_1000E8AD0(v20, v24);

      if (v25)
      {
LABEL_21:
        __chkstk_darwin(v26);
        v27 = swift_beginAccess();
        __chkstk_darwin(v27);
        sub_100058000(&unk_10076BBD0);
        Set.removeAll(where:)();
        swift_endAccess();
        v28 = sub_1000C84C8();
        v30 = v29;
        v32 = v31;
        v34 = v33;
        Strong = swift_unknownObjectUnownedLoadStrong();
        swift_getObjectType();

        v36 = _typeName(_:qualified:)();
        sub_1000ABD78(v28, v30, v32, v34 & 1, v36, v37, &v66);

        v61 = v72;
        v74 = v71;
        v73[2] = v68;
        v73[3] = v69;
        v73[4] = v70;
        v73[0] = v66;
        v73[1] = v67;
        v38 = *&a5[qword_100771748];
        if (v38 && (v39 = *(v38 + 16), v40 = , v41 = v39(v40), , (v41 & 1) != 0))
        {
          v42 = swift_allocObject();
          *(v42 + 16) = a5;
          *(v42 + 24) = v11;
          v60 = v42;
          v43 = a5;

          v44 = sub_1001009D8;
        }

        else
        {
          v44 = 0;
          v60 = 0;
        }

        v45 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v59 = qword_100771738;
        sub_10000B0D8(&a5[qword_100771738], v63);
        v47 = v64;
        v46 = v65;
        sub_10000C36C(v63, v64);
        v48 = *(v46 + 32);

        v48(v73, sub_1001A6140, v45, v44, v60, sub_1001A156C, v11, v47, v46);
        sub_10008B800(&v66);

        sub_100004758(v63);
        v49 = *(v11 + 16);
        v50 = *(v11 + 24);
        v51 = *(v11 + 32);
        v52 = *(v11 + 40);

        sub_1000E42AC(v61, v49, v50, v51, v52);

        sub_10000B0D8(&a5[v59], v63);
        v53 = v64;
        v54 = v65;
        sub_10000C36C(v63, v64);
        (*(v54 + 24))(v53, v54);

        sub_1000301AC(v44);

        v55 = v63;
        goto LABEL_26;
      }
    }

    else
    {
    }

    TTRAnyTreeViewCollapsedStatesPersisting.saveCollapsedTreeViewItemIDs(_:)();

    goto LABEL_21;
  }
}

uint64_t sub_1001A0B30(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 80);
  if (*(v10 + 16) && (v11 = sub_1003B3EDC(a1), (v12 & 1) != 0))
  {
    v13 = (*(v10 + 56) + 16 * v11);
    v14 = *v13;
    v15 = v13[1];
    swift_endAccess();

    if ((a4 & 1) == 0)
    {
      sub_1002EA030(a3, 0, a2);
    }

    v16 = qword_100634110[a2] | v15;
    v17 = v14;
  }

  else
  {
    swift_endAccess();
    if (a4)
    {
      v17 = sub_100460B78(_swiftEmptyArrayStorage);
    }

    else
    {
      sub_100058000(qword_100769AC8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D400;
      *(inited + 32) = a2;
      *(inited + 40) = a3;
      v17 = sub_100460B78(inited);
      swift_setDeallocating();
    }

    v19 = 1;
    if (a2 != 3)
    {
      v19 = 4;
    }

    v20 = 2;
    if (a2 < 2u)
    {
      v20 = 0;
    }

    if (a2 <= 2u)
    {
      v16 = v20;
    }

    else
    {
      v16 = v19;
    }
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v5 + 80);
  *(v5 + 80) = 0x8000000000000000;
  sub_100126B44(v17, v16, a1, isUniquelyReferenced_nonNull_native);

  *(v5 + 80) = v23;
  return swift_endAccess();
}

uint64_t sub_1001A0CEC(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 80);
  if (*(v10 + 16) && (v11 = sub_1003B3EDC(a1), (v12 & 1) != 0))
  {
    v13 = (*(v10 + 56) + 16 * v11);
    v14 = *v13;
    v15 = v13[1];
    swift_endAccess();

    if ((a4 & 1) == 0)
    {
      sub_1002EA030(a3, 0, a2);
    }

    v16 = qword_100634110[a2] | v15;
    v17 = v14;
  }

  else
  {
    swift_endAccess();
    if (a4)
    {
      v17 = sub_100460B78(&_swiftEmptyArrayStorage);
    }

    else
    {
      sub_100058000(qword_100769AC8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D400;
      *(inited + 32) = a2;
      *(inited + 40) = a3;
      v17 = sub_100460B78(inited);
      swift_setDeallocating();
    }

    v19 = 1;
    if (a2 != 3)
    {
      v19 = 4;
    }

    v20 = 2;
    if (a2 < 2u)
    {
      v20 = 0;
    }

    if (a2 <= 2u)
    {
      v16 = v20;
    }

    else
    {
      v16 = v19;
    }
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v5 + 80);
  *(v5 + 80) = 0x8000000000000000;
  sub_100127484(v17, v16, a1, isUniquelyReferenced_nonNull_native);

  *(v5 + 80) = v23;
  return swift_endAccess();
}

uint64_t sub_1001A0EA8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void (*a6)(uint64_t))
{
  v62 = qword_100771770;
  v10 = *&a5[qword_100771770];
  if (v10)
  {
    v11 = *&a5[qword_100771770];
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_10:

    a6(v19);
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  v11 = sub_1000E2540(a5, a1);
  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_3:
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  swift_beginAccess();
  v13 = *(v11 + 64);

  sub_10003BE34(a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + 64) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_100547070(0, v13[2] + 1, 1, v13);
    *(v11 + 64) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_100547070((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v17 = &v13[2 * v16];
  v17[4] = sub_1001A8454;
  v17[5] = v12;
  *(v11 + 64) = v13;
  v18 = swift_endAccess();
  a6(v18);
  if (!v10)
  {
LABEL_11:
    if (*(v11 + 72))
    {

LABEL_27:
      *&a5[v62] = 0;
    }

    swift_beginAccess();
    if (!*(*(v11 + 80) + 16) && !*(*(v11 + 88) + 16))
    {
      swift_beginAccess();
      if (!*(*(v11 + 96) + 16))
      {
        sub_10000B0D8(&a5[qword_100771738], &v66);
        v57 = *(&v67 + 1);
        v58 = v68;
        sub_10000C36C(&v66, *(&v67 + 1));
        (*(v58 + 24))(v57, v58);

        v55 = &v66;
LABEL_26:
        sub_100004758(v55);
        goto LABEL_27;
      }
    }

    v21 = *(v11 + 48);
    v20 = *(v11 + 56);
    v22 = &a5[qword_100771778];
    swift_beginAccess();
    v23 = *v22;
    v24 = v22[1];

    if (sub_1000E9230(v21, v23))
    {
      v25 = sub_1000E9230(v20, v24);

      if (v25)
      {
LABEL_21:
        __chkstk_darwin(v26);
        v27 = swift_beginAccess();
        __chkstk_darwin(v27);
        sub_100058000(&unk_10076B8A0);
        Set.removeAll(where:)();
        swift_endAccess();
        v28 = sub_1000C8504();
        v30 = v29;
        v32 = v31;
        v34 = v33;
        Strong = swift_unknownObjectUnownedLoadStrong();
        swift_getObjectType();

        v36 = _typeName(_:qualified:)();
        sub_1000AC9F0(v28, v30, v32, v34 & 1, v36, v37, &v66);

        v61 = v72;
        v74 = v71;
        v73[2] = v68;
        v73[3] = v69;
        v73[4] = v70;
        v73[0] = v66;
        v73[1] = v67;
        v38 = *&a5[qword_100771748];
        if (v38 && (v39 = *(v38 + 16), v40 = , v41 = v39(v40), , (v41 & 1) != 0))
        {
          v42 = swift_allocObject();
          *(v42 + 16) = a5;
          *(v42 + 24) = v11;
          v60 = v42;
          v43 = a5;

          v44 = sub_1000FD780;
        }

        else
        {
          v44 = 0;
          v60 = 0;
        }

        v45 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v59 = qword_100771738;
        sub_10000B0D8(&a5[qword_100771738], v63);
        v47 = v64;
        v46 = v65;
        sub_10000C36C(v63, v64);
        v48 = *(v46 + 32);

        v48(v73, sub_1001A1564, v45, v44, v60, sub_1001A156C, v11, v47, v46);
        sub_10008B800(&v66);

        sub_100004758(v63);
        v49 = *(v11 + 16);
        v50 = *(v11 + 24);
        v51 = *(v11 + 32);
        v52 = *(v11 + 40);

        sub_1000E45EC(v61, v49, v50, v51, v52);

        sub_10000B0D8(&a5[v59], v63);
        v53 = v64;
        v54 = v65;
        sub_10000C36C(v63, v64);
        (*(v54 + 24))(v53, v54);

        sub_1000301AC(v44);

        v55 = v63;
        goto LABEL_26;
      }
    }

    else
    {
    }

    TTRAnyTreeViewCollapsedStatesPersisting.saveCollapsedTreeViewItemIDs(_:)();

    goto LABEL_21;
  }
}

uint64_t sub_1001A1644(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, int64_t a8)
{
  v11 = a5;
  v65 = qword_100771770;
  v14 = *(a5 + qword_100771770);
  if (!v14)
  {
    v15 = sub_1000E2540(a5, a1);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v15 = *(a5 + qword_100771770);
  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_3:
  v63 = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  swift_beginAccess();
  v17 = *(v15 + 64);

  sub_10003BE34(a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v15 + 64) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_100547070(0, v17[2] + 1, 1, v17);
    *(v15 + 64) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_100547070((v19 > 1), v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  v21 = &v17[2 * v20];
  v21[4] = sub_1001A8454;
  v21[5] = v16;
  *(v15 + 64) = v17;
  swift_endAccess();
  v11 = v63;
LABEL_10:
  sub_10018E360(v15, a6, a7, a8);
  if (!v14)
  {
    if (*(v15 + 72))
    {

LABEL_27:
      *&v11[v65] = 0;
    }

    swift_beginAccess();
    if (!*(*(v15 + 80) + 16) && !*(*(v15 + 88) + 16))
    {
      swift_beginAccess();
      if (!*(*(v15 + 96) + 16))
      {
        sub_10000B0D8(&v11[qword_100771738], &v69);
        v59 = *(&v70 + 1);
        v60 = v71;
        sub_10000C36C(&v69, *(&v70 + 1));
        (*(v60 + 24))(v59, v60);

        v57 = &v69;
LABEL_26:
        sub_100004758(v57);
        goto LABEL_27;
      }
    }

    v23 = *(v15 + 48);
    v22 = *(v15 + 56);
    v24 = &v11[qword_100771778];
    swift_beginAccess();
    v25 = *v24;
    v26 = v24[1];

    if (sub_1000E9230(v23, v25))
    {
      v27 = sub_1000E9230(v22, v26);

      if (v27)
      {
LABEL_21:
        __chkstk_darwin(v28);
        v29 = swift_beginAccess();
        __chkstk_darwin(v29);
        sub_100058000(&unk_10076B8A0);
        Set.removeAll(where:)();
        swift_endAccess();
        v30 = sub_1000C8504();
        v32 = v31;
        v34 = v33;
        v36 = v35;
        Strong = swift_unknownObjectUnownedLoadStrong();
        swift_getObjectType();

        v38 = _typeName(_:qualified:)();
        sub_1000AC9F0(v30, v32, v34, v36 & 1, v38, v39, &v69);

        v61 = v75;
        v77 = v74;
        v76[2] = v71;
        v76[3] = v72;
        v76[4] = v73;
        v76[0] = v69;
        v76[1] = v70;
        v40 = *&v11[qword_100771748];
        if (v40 && (v41 = *(v40 + 16), v42 = , v43 = v41(v42), , (v43 & 1) != 0))
        {
          v44 = swift_allocObject();
          *(v44 + 16) = v11;
          *(v44 + 24) = v15;
          v64 = v44;
          v45 = v11;

          v62 = sub_1001A84B8;
        }

        else
        {
          v62 = 0;
          v64 = 0;
        }

        v46 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v47 = qword_100771738;
        sub_10000B0D8(&v11[qword_100771738], v66);
        v48 = v67;
        v49 = v68;
        sub_10000C36C(v66, v67);
        v50 = *(v49 + 32);

        v50(v76, sub_1001A84A8, v46, v62, v64, sub_1001A84AC, v15, v48, v49);
        sub_10008B800(&v69);

        sub_100004758(v66);
        v51 = *(v15 + 16);
        v52 = *(v15 + 24);
        v53 = *(v15 + 32);
        v54 = *(v15 + 40);

        sub_1000E45EC(v61, v51, v52, v53, v54);

        sub_10000B0D8(&v11[v47], v66);
        v55 = v67;
        v56 = v68;
        sub_10000C36C(v66, v67);
        (*(v56 + 24))(v55, v56);

        sub_1000301AC(v62);

        v57 = v66;
        goto LABEL_26;
      }
    }

    else
    {
    }

    TTRAnyTreeViewCollapsedStatesPersisting.saveCollapsedTreeViewItemIDs(_:)();

    goto LABEL_21;
  }
}

uint64_t sub_1001A1E1C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = a5;
  v73 = qword_100771770;
  v14 = *(a5 + qword_100771770);
  if (!v14)
  {
    v15 = sub_1000E2540(a5, a1);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v15 = *(a5 + qword_100771770);
  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_3:
  v71 = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  swift_beginAccess();
  v17 = *(v15 + 64);

  sub_10003BE34(a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v15 + 64) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_100547070(0, v17[2] + 1, 1, v17);
    *(v15 + 64) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_100547070((v19 > 1), v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  v21 = &v17[2 * v20];
  v21[4] = sub_1001A8454;
  v21[5] = v16;
  *(v15 + 64) = v17;
  swift_endAccess();
  v11 = v71;
LABEL_10:
  *&v77 = sub_1000C8504();
  *(&v77 + 1) = v22;
  *&v78 = v23;
  BYTE8(v78) = v24 & 1;
  v25 = qword_100771768;
  *(a6 + qword_100771768) = 1;
  sub_10018F924(&v77, a7, a6, v15, a8);
  v26 = v78;
  v27 = BYTE8(v78);
  v28 = a6 + qword_100771760;
  v29 = *(a6 + qword_100771760);
  *v28 = v77;
  *(v28 + 16) = v26;
  *(v28 + 24) = v27;
  sub_100100898(v29);
  *(a6 + v25) = 0;
  if (!v14)
  {
    if (*(v15 + 72))
    {

LABEL_27:
      *&v11[v73] = 0;
    }

    swift_beginAccess();
    if (!*(*(v15 + 80) + 16) && !*(*(v15 + 88) + 16))
    {
      swift_beginAccess();
      if (!*(*(v15 + 96) + 16))
      {
        sub_10000B0D8(&v11[qword_100771738], &v77);
        v67 = *(&v78 + 1);
        v68 = v79;
        sub_10000C36C(&v77, *(&v78 + 1));
        (*(v68 + 24))(v67, v68);

        v65 = &v77;
LABEL_26:
        sub_100004758(v65);
        goto LABEL_27;
      }
    }

    v31 = *(v15 + 48);
    v30 = *(v15 + 56);
    v32 = &v11[qword_100771778];
    swift_beginAccess();
    v33 = *v32;
    v34 = v32[1];

    if (sub_1000E9230(v31, v33))
    {
      v35 = sub_1000E9230(v30, v34);

      if (v35)
      {
LABEL_21:
        __chkstk_darwin(v36);
        v37 = swift_beginAccess();
        __chkstk_darwin(v37);
        sub_100058000(&unk_10076B8A0);
        Set.removeAll(where:)();
        swift_endAccess();
        v38 = sub_1000C8504();
        v40 = v39;
        v42 = v41;
        v44 = v43;
        Strong = swift_unknownObjectUnownedLoadStrong();
        swift_getObjectType();

        v46 = _typeName(_:qualified:)();
        sub_1000AC9F0(v38, v40, v42, v44 & 1, v46, v47, &v77);

        v69 = v83;
        v85 = v82;
        v84[2] = v79;
        v84[3] = v80;
        v84[4] = v81;
        v84[0] = v77;
        v84[1] = v78;
        v48 = *&v11[qword_100771748];
        if (v48 && (v49 = *(v48 + 16), v50 = , v51 = v49(v50), , (v51 & 1) != 0))
        {
          v52 = swift_allocObject();
          *(v52 + 16) = v11;
          *(v52 + 24) = v15;
          v72 = v52;
          v53 = v11;

          v70 = sub_1001A84B8;
        }

        else
        {
          v70 = 0;
          v72 = 0;
        }

        v54 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v55 = qword_100771738;
        sub_10000B0D8(&v11[qword_100771738], v74);
        v56 = v75;
        v57 = v76;
        sub_10000C36C(v74, v75);
        v58 = *(v57 + 32);

        v58(v84, sub_1001A84A8, v54, v70, v72, sub_1001A84AC, v15, v56, v57);
        sub_10008B800(&v77);

        sub_100004758(v74);
        v59 = *(v15 + 16);
        v60 = *(v15 + 24);
        v61 = *(v15 + 32);
        v62 = *(v15 + 40);

        sub_1000E45EC(v69, v59, v60, v61, v62);

        sub_10000B0D8(&v11[v55], v74);
        v63 = v75;
        v64 = v76;
        sub_10000C36C(v74, v75);
        (*(v64 + 24))(v63, v64);

        sub_1000301AC(v70);

        v65 = v74;
        goto LABEL_26;
      }
    }

    else
    {
    }

    TTRAnyTreeViewCollapsedStatesPersisting.saveCollapsedTreeViewItemIDs(_:)();

    goto LABEL_21;
  }
}

void sub_1001A2544(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v40 = a1;
  v3 = *v2;
  v4 = swift_isaMask;
  v5 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v5 - 8);
  v37 = &v34 - v6;
  v7 = type metadata accessor for IndexPath();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRITreeViewExpandedState();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = sub_100189FAC();
  v20 = sub_10015F984(v40, v16, v18, v19, v17 & 1, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58));

  if (v20)
  {
    v21 = qword_1007A84C0;
    swift_beginAccess();
    (*(v10 + 16))(v15, v20 + v21, v9);
    (*(v10 + 104))(v13, enum case for TTRITreeViewExpandedState.expanded(_:), v9);
    LOBYTE(v21) = static TTRITreeViewExpandedState.== infix(_:_:)();
    v22 = *(v10 + 8);
    v22(v13, v9);
    v22(v15, v9);
    if (v21)
    {
      sub_100189FAC();
      v24 = v37;
      sub_1001600E4(v20, v23 & 1, v37);

      v26 = v38;
      v25 = v39;
      if ((*(v38 + 48))(v24, 1, v39) == 1)
      {
        sub_1000079B4(v24, &unk_100771B10);
        if (qword_100766FC8 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_100003E30(v27, qword_1007716F0);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "Unable to find index path", v30, 2u);
        }
      }

      else
      {
        v31 = v35;
        v32 = (*(v26 + 32))(v35, v24, v25);
        __chkstk_darwin(v32);
        *(&v34 - 4) = v20;
        *(&v34 - 3) = v2;
        v33 = v36;
        *(&v34 - 2) = v31;
        *(&v34 - 1) = v33;
        sub_10018B568(sub_1001A6078, (&v34 - 6), 0, 0, 0, 0);

        (*(v26 + 8))(v31, v25);
      }
    }

    else
    {
    }
  }
}

void sub_1001A2A10(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v49 = a1;
  v3 = *v2;
  v4 = swift_isaMask;
  v5 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v5 - 8);
  v46 = &v43 - v6;
  v7 = type metadata accessor for IndexPath();
  v47 = *(v7 - 8);
  v48 = v7;
  __chkstk_darwin(v7);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRITreeViewExpandedState();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = sub_100189FAC();
  v17 = *((v4 & v3) + 0x50);
  v18 = *((v4 & v3) + 0x58);
  v43 = v17;
  v22 = sub_10015F984(v49, v16, v20, v21, v19 & 1, v17, v18);

  v23 = v22;

  if (v22)
  {
    v24 = qword_1007A84C0;
    swift_beginAccess();
    (*(v10 + 16))(v15, v22 + v24, v9);
    (*(v10 + 104))(v13, enum case for TTRITreeViewExpandedState.collapsed(_:), v9);
    LOBYTE(v24) = static TTRITreeViewExpandedState.== infix(_:_:)();
    v25 = *(v10 + 8);
    v25(v13, v9);
    v25(v15, v9);
    if (v24)
    {
      v26 = v2;
      sub_100189FAC();
      v28 = v46;
      sub_1001600E4(v23, v27 & 1, v46);

      v30 = v47;
      v29 = v48;
      if ((*(v47 + 48))(v28, 1, v48) == 1)
      {
        sub_1000079B4(v28, &unk_100771B10);
        if (qword_100766FC8 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_100003E30(v31, qword_1007716F0);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Unable to find index path", v34, 2u);
        }
      }

      else
      {
        v35 = v45;
        (*(v30 + 32))(v45, v28, v29);
        swift_beginAccess();
        v50 = *(v23 + 64);
        type metadata accessor for TTRITreeViewNode();
        type metadata accessor for Array();
        swift_getWitnessTable();
        v36 = Collection.isEmpty.getter();
        if ((v36 & 1) == 0)
        {
          if (qword_100766FC8 != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          sub_100003E30(v37, qword_1007716F0);
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            _os_log_impl(&_mh_execute_header, v38, v39, "Collapsed node should have no child nodes", v40, 2u);
          }
        }

        __chkstk_darwin(v36);
        *(&v43 - 4) = v26;
        *(&v43 - 3) = v23;
        v41 = v44;
        *(&v43 - 2) = v35;
        *(&v43 - 1) = v41;
        sub_10018B568(sub_1001A6094, (&v43 - 6), 0, 0, 0, 0);
        if (sub_100189678(&qword_100771758, sub_100128A14))
        {
          Strong = swift_unknownObjectUnownedLoadStrong();
          sub_100128DE8();
        }

        (*(v30 + 8))(v35, v29);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1001A306C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, int64_t a8)
{
  v11 = a5;
  v65 = qword_100771770;
  v14 = *(a5 + qword_100771770);
  if (!v14)
  {
    v15 = sub_1000E236C(a5, a1);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v15 = *(a5 + qword_100771770);
  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_3:
  v63 = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  swift_beginAccess();
  v17 = *(v15 + 64);

  sub_10003BE34(a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v15 + 64) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_100547070(0, v17[2] + 1, 1, v17);
    *(v15 + 64) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_100547070((v19 > 1), v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  v21 = &v17[2 * v20];
  v21[4] = sub_1001A8454;
  v21[5] = v16;
  *(v15 + 64) = v17;
  swift_endAccess();
  v11 = v63;
LABEL_10:
  sub_10018E230(v15, a6, a7, a8);
  if (!v14)
  {
    if (*(v15 + 72))
    {

LABEL_27:
      *&v11[v65] = 0;
    }

    swift_beginAccess();
    if (!*(*(v15 + 80) + 16) && !*(*(v15 + 88) + 16))
    {
      swift_beginAccess();
      if (!*(*(v15 + 96) + 16))
      {
        sub_10000B0D8(&v11[qword_100771738], &v69);
        v59 = *(&v70 + 1);
        v60 = v71;
        sub_10000C36C(&v69, *(&v70 + 1));
        (*(v60 + 24))(v59, v60);

        v57 = &v69;
LABEL_26:
        sub_100004758(v57);
        goto LABEL_27;
      }
    }

    v23 = *(v15 + 48);
    v22 = *(v15 + 56);
    v24 = &v11[qword_100771778];
    swift_beginAccess();
    v25 = *v24;
    v26 = v24[1];

    if (sub_1000E8AD0(v23, v25))
    {
      v27 = sub_1000E8AD0(v22, v26);

      if (v27)
      {
LABEL_21:
        __chkstk_darwin(v28);
        v29 = swift_beginAccess();
        __chkstk_darwin(v29);
        sub_100058000(&unk_10076BBD0);
        Set.removeAll(where:)();
        swift_endAccess();
        v30 = sub_1000C84C8();
        v32 = v31;
        v34 = v33;
        v36 = v35;
        Strong = swift_unknownObjectUnownedLoadStrong();
        swift_getObjectType();

        v38 = _typeName(_:qualified:)();
        sub_1000ABD78(v30, v32, v34, v36 & 1, v38, v39, &v69);

        v61 = v75;
        v77 = v74;
        v76[2] = v71;
        v76[3] = v72;
        v76[4] = v73;
        v76[0] = v69;
        v76[1] = v70;
        v40 = *&v11[qword_100771748];
        if (v40 && (v41 = *(v40 + 16), v42 = , v43 = v41(v42), , (v43 & 1) != 0))
        {
          v44 = swift_allocObject();
          *(v44 + 16) = v11;
          *(v44 + 24) = v15;
          v64 = v44;
          v45 = v11;

          v62 = sub_1001A84BC;
        }

        else
        {
          v62 = 0;
          v64 = 0;
        }

        v46 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v47 = qword_100771738;
        sub_10000B0D8(&v11[qword_100771738], v66);
        v48 = v67;
        v49 = v68;
        sub_10000C36C(v66, v67);
        v50 = *(v49 + 32);

        v50(v76, sub_1001A84B0, v46, v62, v64, sub_1001A84AC, v15, v48, v49);
        sub_10008B800(&v69);

        sub_100004758(v66);
        v51 = *(v15 + 16);
        v52 = *(v15 + 24);
        v53 = *(v15 + 32);
        v54 = *(v15 + 40);

        sub_1000E42AC(v61, v51, v52, v53, v54);

        sub_10000B0D8(&v11[v47], v66);
        v55 = v67;
        v56 = v68;
        sub_10000C36C(v66, v67);
        (*(v56 + 24))(v55, v56);

        sub_1000301AC(v62);

        v57 = v66;
        goto LABEL_26;
      }
    }

    else
    {
    }

    TTRAnyTreeViewCollapsedStatesPersisting.saveCollapsedTreeViewItemIDs(_:)();

    goto LABEL_21;
  }
}

uint64_t sub_1001A3704(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = a5;
  v73 = qword_100771770;
  v14 = *(a5 + qword_100771770);
  if (!v14)
  {
    v15 = sub_1000E236C(a5, a1);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v15 = *(a5 + qword_100771770);
  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_3:
  v71 = v11;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  swift_beginAccess();
  v17 = *(v15 + 64);

  sub_10003BE34(a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v15 + 64) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_100547070(0, v17[2] + 1, 1, v17);
    *(v15 + 64) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_100547070((v19 > 1), v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  v21 = &v17[2 * v20];
  v21[4] = sub_1001A8454;
  v21[5] = v16;
  *(v15 + 64) = v17;
  swift_endAccess();
  v11 = v71;
LABEL_10:
  *&v77 = sub_1000C84C8();
  *(&v77 + 1) = v22;
  *&v78 = v23;
  BYTE8(v78) = v24 & 1;
  v25 = qword_100771768;
  *(a6 + qword_100771768) = 1;
  sub_10018EB2C(&v77, a7, a6, v15, a8);
  v26 = v78;
  v27 = BYTE8(v78);
  v28 = a6 + qword_100771760;
  v29 = *(a6 + qword_100771760);
  *v28 = v77;
  *(v28 + 16) = v26;
  *(v28 + 24) = v27;
  sub_100100898(v29);
  *(a6 + v25) = 0;
  if (!v14)
  {
    if (*(v15 + 72))
    {

LABEL_27:
      *&v11[v73] = 0;
    }

    swift_beginAccess();
    if (!*(*(v15 + 80) + 16) && !*(*(v15 + 88) + 16))
    {
      swift_beginAccess();
      if (!*(*(v15 + 96) + 16))
      {
        sub_10000B0D8(&v11[qword_100771738], &v77);
        v67 = *(&v78 + 1);
        v68 = v79;
        sub_10000C36C(&v77, *(&v78 + 1));
        (*(v68 + 24))(v67, v68);

        v65 = &v77;
LABEL_26:
        sub_100004758(v65);
        goto LABEL_27;
      }
    }

    v31 = *(v15 + 48);
    v30 = *(v15 + 56);
    v32 = &v11[qword_100771778];
    swift_beginAccess();
    v33 = *v32;
    v34 = v32[1];

    if (sub_1000E8AD0(v31, v33))
    {
      v35 = sub_1000E8AD0(v30, v34);

      if (v35)
      {
LABEL_21:
        __chkstk_darwin(v36);
        v37 = swift_beginAccess();
        __chkstk_darwin(v37);
        sub_100058000(&unk_10076BBD0);
        Set.removeAll(where:)();
        swift_endAccess();
        v38 = sub_1000C84C8();
        v40 = v39;
        v42 = v41;
        v44 = v43;
        Strong = swift_unknownObjectUnownedLoadStrong();
        swift_getObjectType();

        v46 = _typeName(_:qualified:)();
        sub_1000ABD78(v38, v40, v42, v44 & 1, v46, v47, &v77);

        v69 = v83;
        v85 = v82;
        v84[2] = v79;
        v84[3] = v80;
        v84[4] = v81;
        v84[0] = v77;
        v84[1] = v78;
        v48 = *&v11[qword_100771748];
        if (v48 && (v49 = *(v48 + 16), v50 = , v51 = v49(v50), , (v51 & 1) != 0))
        {
          v52 = swift_allocObject();
          *(v52 + 16) = v11;
          *(v52 + 24) = v15;
          v72 = v52;
          v53 = v11;

          v70 = sub_1001A84BC;
        }

        else
        {
          v70 = 0;
          v72 = 0;
        }

        v54 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v55 = qword_100771738;
        sub_10000B0D8(&v11[qword_100771738], v74);
        v56 = v75;
        v57 = v76;
        sub_10000C36C(v74, v75);
        v58 = *(v57 + 32);

        v58(v84, sub_1001A84B0, v54, v70, v72, sub_1001A84AC, v15, v56, v57);
        sub_10008B800(&v77);

        sub_100004758(v74);
        v59 = *(v15 + 16);
        v60 = *(v15 + 24);
        v61 = *(v15 + 32);
        v62 = *(v15 + 40);

        sub_1000E42AC(v69, v59, v60, v61, v62);

        sub_10000B0D8(&v11[v55], v74);
        v63 = v75;
        v64 = v76;
        sub_10000C36C(v74, v75);
        (*(v64 + 24))(v63, v64);

        sub_1000301AC(v70);

        v65 = v74;
        goto LABEL_26;
      }
    }

    else
    {
    }

    TTRAnyTreeViewCollapsedStatesPersisting.saveCollapsedTreeViewItemIDs(_:)();

    goto LABEL_21;
  }
}

uint64_t sub_1001A3DFC()
{
  sub_100189FAC();

  type metadata accessor for TTRITreeViewSectionsMetadata.Section();
  Array.subscript.getter();

  type metadata accessor for TTRITreeViewNode();
  v0 = Array.count.getter();

  return v0;
}

uint64_t sub_1001A3EEC()
{
  sub_100189FAC();

  type metadata accessor for TTRITreeViewSectionsMetadata.Section();
  v0 = Array.count.getter();

  return v0;
}

id sub_1001A3F90(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = type metadata accessor for IndexPath();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = __chkstk_darwin(v5);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v60 - v9;
  v11 = __chkstk_darwin(v8);
  v61 = &v60 - v12;
  __chkstk_darwin(v11);
  v60 = &v60 - v13;
  v14 = *((v4 & v3) + 0x58);
  v15 = *((v4 & v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  v66 = AssociatedTypeWitness;
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v64 = &v60 - v18;
  v19 = *(v15 - 8);
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  sub_100189FAC();
  v67 = a1;
  v63 = v14;
  v22 = sub_10015F6B4();

  if (v22)
  {
    if (sub_100189678(&qword_100771740, sub_100128A14))
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      v24 = *(*v22 + 144);
      swift_beginAccess();
      (*(v19 + 16))(v21, &v22[v24], v15);
      v25 = sub_1002DF560();

      (*(v19 + 8))(v21, v15);
      v72[3] = sub_100003540(0, &qword_10076B8B8);
      v72[0] = v25;
      v71 = 0;
      memset(v70, 0, sizeof(v70));
      v26 = v25;
      sub_100192A24(v72, v22, v70);
      sub_1000079B4(v70, &unk_10076B8C0);
      v27 = sub_1000079B4(v72, &qword_10076AE40);
      v28 = v64;
      sub_10023A594(v27);
      swift_beginAccess();
      v29 = type metadata accessor for TTRITreeViewSoftReloadContext();
      sub_100421D3C(v28, v29);
      swift_endAccess();

      (*(v65 + 8))(v28, v66);
      return v26;
    }

    else
    {
      if (qword_100766FC8 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100003E30(v44, qword_1007716F0);
      v45 = v67;
      v46 = v68;
      v47 = *(v68 + 16);
      v48 = v60;
      v49 = v69;
      v47(v60, v67, v69);
      v50 = v61;
      v47(v61, v45, v49);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 134218240;
        v54 = IndexPath.row.getter();
        v55 = *(v46 + 8);
        v55(v48, v49);
        *(v53 + 4) = v54;
        *(v53 + 12) = 2048;
        v56 = IndexPath.section.getter();
        v55(v50, v49);
        *(v53 + 14) = v56;
        _os_log_impl(&_mh_execute_header, v51, v52, "Data source is nil when requesting cell for row at indexPath {indexPath: row=%ld, section=%ld}", v53, 0x16u);
      }

      else
      {
        v58 = *(v46 + 8);
        v58(v50, v49);
        v58(v48, v49);
      }

      v59 = [objc_allocWithZone(UITableViewCell) init];

      return v59;
    }
  }

  else
  {
    v31 = v10;
    v32 = v62;
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100003E30(v33, qword_1007716F0);
    v34 = v67;
    v35 = v68;
    v36 = *(v68 + 16);
    v37 = v69;
    v36(v31, v67, v69);
    v36(v32, v34, v37);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134218240;
      v41 = IndexPath.row.getter();
      v42 = *(v35 + 8);
      v42(v31, v37);
      *(v40 + 4) = v41;
      *(v40 + 12) = 2048;
      v43 = IndexPath.section.getter();
      v42(v32, v37);
      *(v40 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v38, v39, "Node not found when requesting cell for row at indexPath {indexPath: row=%ld, section=%ld}", v40, 0x16u);
    }

    else
    {
      v57 = *(v35 + 8);
      v57(v32, v37);
      v57(v31, v37);
    }

    return [objc_allocWithZone(UITableViewCell) init];
  }
}

uint64_t sub_1001A475C(uint64_t a1)
{
  v8[1] = 0;
  v9 = sub_100189678(&qword_100771740, sub_100128A14);
  v7 = v1;
  v8[0] = 0;
  v3 = type metadata accessor for TTRIAnyTreeViewDataSource();
  v4 = sub_100058000(qword_100771B80);
  sub_100193420(a1, &v9, v8, sub_1001A67F8, &v6, v3, v4, &v10);

  return v10;
}

uint64_t sub_1001A4858(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x50);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v11 - v4;
  sub_100189FAC();
  v6 = sub_10015F890();

  if (v6)
  {
    if (sub_100189678(&qword_100771740, sub_100128A14))
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      v8 = *(*v6 + 144);
      swift_beginAccess();
      (*(v3 + 16))(v5, v6 + v8, v2);
      v9 = sub_1002DF5B0();

      (*(v3 + 8))(v5, v2);
      return v9;
    }
  }

  return 0;
}

uint64_t sub_1001A4A70(uint64_t a1, uint64_t a2)
{
  v11 = sub_100189678(&qword_100771740, sub_100128A14);
  v9 = v2;
  v10 = a1;
  v5 = type metadata accessor for TTRIAnyTreeViewDataSource();
  sub_100193904(a2, &v11, v6, sub_1001A67F0, &v8, v5, &type metadata for () + 8, &type metadata for ());
}

uint64_t sub_1001A4B54(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void, void, void), void (*a5)(char *, char *))
{
  v9 = *v5;
  v10 = swift_isaMask;
  v16 = sub_100189678(a2, a3);
  v15 = 0;
  v14 = v5;
  v11 = a4(0, *((v10 & v9) + 0x50), *((v10 & v9) + 0x58));
  sub_100193904(a1, &v16, &v15, a5, &v13, v11, &type metadata for Bool, &v17);

  return v17;
}

uint64_t sub_1001A4C30(void *a1)
{
  v26 = a1;
  v2 = *((swift_isaMask & *v1) + 0x50);
  v25 = *(v2 - 8);
  __chkstk_darwin(a1);
  v24 = &v23 - v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v23 - v6;
  sub_100189FAC();
  v8 = sub_10015F6B4();

  if (v8)
  {
    swift_beginAccess();

    sub_10023A594(v10);
    v11 = sub_1004218BC();

    v12 = *(v5 + 8);
    v12(v7, AssociatedTypeWitness);
    if ((v11 & 1) != 0 && (v13 = sub_100189678(&qword_100771748, sub_1002DF79C)) != 0)
    {
      v23 = v13;
      v14 = sub_100196428(v26, v8);
      sub_10023A594(v14);
      swift_beginAccess();
      type metadata accessor for TTRITreeViewSoftReloadContext();
      sub_100421958(v7);
      swift_endAccess();

      v12(v7, AssociatedTypeWitness);
    }

    else
    {
      v29[3] = sub_100003540(0, &qword_10076B8B8);
      v28 = 0;
      v29[0] = v26;
      memset(v27, 0, sizeof(v27));
      v15 = v26;
      v16 = sub_100192A24(v29, v8, v27);
      sub_1000079B4(v27, &unk_10076B8C0);
      sub_1000079B4(v29, &qword_10076AE40);
      if ((v16 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_10052A71C();

LABEL_7:
    if (sub_100189678(&qword_100771758, sub_100128A14))
    {
      v18 = swift_unknownObjectUnownedLoadStrong();
      v19 = *(*v8 + 144);
      swift_beginAccess();
      v20 = v25;
      v21 = &v8[v19];
      v22 = v24;
      (*(v25 + 16))(v24, v21, v2);
      sub_100128BDC();

      return (*(v20 + 8))(v22, v2);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1001A508C(void *a1, uint64_t a2, void (*a3)(void *, id, char *))
{
  v16 = a3;
  v5 = *((swift_isaMask & *v3) + 0x50);
  v17 = *(v5 - 8);
  __chkstk_darwin(a1);
  v7 = &v16 - v6;
  sub_100189FAC();
  v8 = sub_10015F890();

  if (v8)
  {
    v20[3] = sub_100003540(0, &qword_10076B020);
    v20[0] = a1;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    v10 = a1;
    v11 = sub_100192A24(v20, v8, v18);
    sub_1000079B4(v18, &unk_10076B8C0);
    sub_1000079B4(v20, &qword_10076AE40);
    if (v11)
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      sub_10052A71C();
    }

    if (sub_100189678(&qword_100771758, sub_100128A14))
    {
      v13 = swift_unknownObjectUnownedLoadStrong();
      v14 = *(*v8 + 144);
      swift_beginAccess();
      v15 = v17;
      (*(v17 + 16))(v7, &v8[v14], v5);
      v16(v13, v10, v7);

      return (*(v15 + 8))(v7, v5);
    }

    else
    {
    }
  }

  return result;
}

void sub_1001A537C()
{
  if (sub_100189678(&qword_100771758, sub_100128A14))
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_100129004();
  }
}

double sub_1001A5410(uint64_t a1, void (*a2)(char *, char *))
{
  v10 = sub_100189678(&qword_100771758, sub_100128A14);
  v9 = UITableViewAutomaticDimension;
  v8 = v2;
  v5 = type metadata accessor for TTRIAnyTreeViewDelegate();
  sub_100193904(a1, &v10, &v9, a2, &v7, v5, &type metadata for CGFloat, &v11);

  return v11;
}

double sub_1001A54FC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void, void, void), void (*a4)(char *, char *))
{
  v8 = *v4;
  v9 = swift_isaMask;
  v14 = 0;
  v15 = sub_100189738(a2);
  v13 = v4;
  v10 = a3(0, *((v9 & v8) + 0x50), *((v9 & v8) + 0x58));
  sub_100193420(a1, &v15, &v14, a4, &v12, v10, &type metadata for CGFloat, &v16);

  return v16;
}

uint64_t sub_1001A55D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, char *, uint64_t))
{
  v6 = *((swift_isaMask & *v3) + 0x50);
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  v9 = &v19 - v8;
  if (!sub_100189738(v10))
  {
    return 0;
  }

  v20 = a3;
  sub_100189FAC();
  v11 = sub_10015F890();

  if (!v11)
  {

    return 0;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v13 = *(*v11 + 144);
  swift_beginAccess();
  (*(v7 + 16))(v9, &v11[v13], v6);
  v14 = v20(Strong, v9, a1);

  (*(v7 + 8))(v9, v6);
  if (v14)
  {
    v15 = sub_100003540(0, &qword_10076B020);
    v16 = v14;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v23[1] = 0;
    v23[2] = 0;
  }

  v22 = 0;
  v23[0] = v16;
  v23[3] = v15;
  memset(v21, 0, sizeof(v21));
  v17 = v16;
  sub_100192A24(v23, v11, v21);

  sub_1000079B4(v21, &unk_10076B8C0);
  sub_1000079B4(v23, &qword_10076AE40);
  return v14;
}

uint64_t sub_1001A59AC(uint64_t a1)
{
  v8 = 1;
  v9 = sub_100189678(&qword_100771758, sub_100128A14);
  v7 = v1;
  v3 = type metadata accessor for TTRIAnyTreeViewDelegate();
  type metadata accessor for EditingStyle(0);
  sub_100193904(a1, &v9, &v8, sub_1001A642C, &v6, v3, v4, &v10);

  return v10;
}

uint64_t sub_1001A5AA0(uint64_t a1, void (*a2)(char *, char *))
{
  v10 = 0;
  v11 = sub_100189678(&qword_100771758, sub_100128A14);
  v9 = v2;
  v5 = type metadata accessor for TTRIAnyTreeViewDelegate();
  v6 = sub_100058000(&qword_100771B70);
  sub_100193904(a1, &v11, &v10, a2, &v8, v5, v6, &v12);

  return v12;
}

uint64_t sub_1001A5B90(uint64_t a1)
{
  v8 = sub_100189678(&qword_100771758, sub_100128A14);
  v7 = 1;
  v6 = v1;
  v3 = type metadata accessor for TTRIAnyTreeViewDelegate();
  sub_100193904(a1, &v8, &v7, sub_1001A639C, &v5, v3, &type metadata for Bool, &v9);

  return v9;
}

uint64_t sub_1001A5CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = sub_100189678(&qword_100771758, sub_100128A14);
  v13 = 0;
  v10 = v3;
  v11 = a1;
  v12 = a3;
  v7 = type metadata accessor for TTRIAnyTreeViewDelegate();
  sub_100193904(a2, &v14, &v13, sub_1001A6358, &v9, v7, &type metadata for Bool, &v15);

  return v15;
}

uint64_t sub_1001A5DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = a3;
  return sub_1001968F0(a2, sub_1001A6318, v4);
}

void sub_1001A5E00(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t, uint64_t))
{
  if (sub_100189678(&qword_100771758, sub_100128A14))
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    a3(Strong, a1, a2);
  }
}

uint64_t sub_1001A5EC4(uint64_t a1, char a2, void (*a3)(char *, char *))
{
  v12 = sub_100189738(sub_1001294A4);
  v11 = a2;
  v10 = v3;
  v7 = type metadata accessor for TTRIAnyTreeViewCellSeparatorCustomizing();
  sub_100193420(a1, &v12, &v11, a3, &v9, v7, &type metadata for Bool, &v13);

  return v13;
}

id sub_1001A5FA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v12[3] = swift_getObjectType();
  v11 = a2;
  v12[0] = a1;
  v10 = v3;
  swift_unknownObjectRetain();
  v7 = sub_100199B48(v12, a3, &v9);
  sub_100004758(v12);
  return v7;
}

uint64_t sub_1001A6160()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001A6488(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100771B10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A670C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001A6800()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_1001A688C(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 > 7 || (v5 + 1) > 0x18 || (*(v4 + 80) & 0x100000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));

    return v3;
  }

  v10 = a2[v5];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v5 <= 3)
    {
      v12 = *(v4 + 64);
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_23;
      }

      v13 = *a2;
    }

    else if (v12 == 2)
    {
      v13 = *a2;
    }

    else if (v12 == 3)
    {
      v13 = *a2 | (a2[2] << 16);
    }

    else
    {
      v13 = *a2;
    }

    v14 = (v13 | (v11 << (8 * v5))) + 2;
    v10 = v13 + 2;
    if (v5 < 4)
    {
      v10 = v14;
    }
  }

LABEL_23:
  if (v10 == 1)
  {
    (*(v4 + 16))(__dst);
    *(v3 + v5) = 1;
    return v3;
  }

  if (!v10)
  {
    (*(v4 + 16))(__dst);
    *(v3 + v5) = 0;
    return v3;
  }

  return memcpy(__dst, a2, v5 + 1);
}

unsigned __int8 *sub_1001A6A10(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  v3 = result[v2];
  v4 = v3 - 2;
  if (v3 < 2)
  {
    goto LABEL_15;
  }

  if (v2 <= 3)
  {
    v5 = *(*(*(a2 + 16) - 8) + 64);
  }

  else
  {
    v5 = 4;
  }

  if (v5 <= 1)
  {
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = *result;
  }

  else if (v5 == 2)
  {
    v6 = *result;
  }

  else if (v5 == 3)
  {
    v6 = *result | (result[2] << 16);
  }

  else
  {
    v6 = *result;
  }

  v7 = (v6 | (v4 << (8 * v2))) + 2;
  v3 = v6 + 2;
  if (v2 < 4)
  {
    v3 = v7;
  }

LABEL_15:
  if (v3 <= 1)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  return result;
}

_BYTE *sub_1001A6AE8(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = *(v3 + 64);
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = *a2;
    }

    else if (v7 == 2)
    {
      v8 = *a2;
    }

    else if (v7 == 3)
    {
      v8 = *a2 | (a2[2] << 16);
    }

    else
    {
      v8 = *a2;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_15:
  if (v5 == 1)
  {
    v10 = a1;
    (*(v3 + 16))();
    v10[v4] = 1;
    return v10;
  }

  if (!v5)
  {
    v10 = a1;
    (*(v3 + 16))();
    v10[v4] = 0;
    return v10;
  }

  return memcpy(a1, a2, v4 + 1);
}

unsigned __int8 *sub_1001A6C28(unsigned __int8 *result, unsigned __int16 *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = result[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = *(v3 + 64);
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_16;
      }

      v8 = *result;
    }

    else if (v7 == 2)
    {
      v8 = *result;
    }

    else if (v7 == 3)
    {
      v8 = *result | (result[2] << 16);
    }

    else
    {
      v8 = *result;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_16:
  if (v5 <= 1)
  {
    v10 = result;
    v11 = a2;
    (*(v3 + 8))();
    a2 = v11;
    result = v10;
  }

  v12 = *(a2 + v4);
  v13 = v12 - 2;
  if (v12 < 2)
  {
    goto LABEL_32;
  }

  if (v4 <= 3)
  {
    v14 = v4;
  }

  else
  {
    v14 = 4;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *a2;
    }

    else if (v14 == 3)
    {
      v15 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v15 = *a2;
    }

LABEL_30:
    v16 = (v15 | (v13 << (8 * v4))) + 2;
    v12 = v15 + 2;
    if (v4 < 4)
    {
      v12 = v16;
    }

    goto LABEL_32;
  }

  if (v14)
  {
    v15 = *a2;
    goto LABEL_30;
  }

LABEL_32:
  if (v12 == 1)
  {
    v18 = result;
    (*(v3 + 16))();
    result = v18;
    v18[v4] = 1;
  }

  else if (v12)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    v17 = result;
    (*(v3 + 16))();
    result = v17;
    v17[v4] = 0;
  }

  return result;
}

_BYTE *sub_1001A6E38(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = *(v3 + 64);
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = *a2;
    }

    else if (v7 == 2)
    {
      v8 = *a2;
    }

    else if (v7 == 3)
    {
      v8 = *a2 | (a2[2] << 16);
    }

    else
    {
      v8 = *a2;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_15:
  if (v5 == 1)
  {
    v10 = a1;
    (*(v3 + 32))();
    v10[v4] = 1;
    return v10;
  }

  if (!v5)
  {
    v10 = a1;
    (*(v3 + 32))();
    v10[v4] = 0;
    return v10;
  }

  return memcpy(a1, a2, v4 + 1);
}

unsigned __int8 *sub_1001A6F78(unsigned __int8 *result, unsigned __int16 *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = result[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = *(v3 + 64);
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_16;
      }

      v8 = *result;
    }

    else if (v7 == 2)
    {
      v8 = *result;
    }

    else if (v7 == 3)
    {
      v8 = *result | (result[2] << 16);
    }

    else
    {
      v8 = *result;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_16:
  if (v5 <= 1)
  {
    v10 = result;
    v11 = a2;
    (*(v3 + 8))();
    a2 = v11;
    result = v10;
  }

  v12 = *(a2 + v4);
  v13 = v12 - 2;
  if (v12 < 2)
  {
    goto LABEL_32;
  }

  if (v4 <= 3)
  {
    v14 = v4;
  }

  else
  {
    v14 = 4;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *a2;
    }

    else if (v14 == 3)
    {
      v15 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v15 = *a2;
    }

LABEL_30:
    v16 = (v15 | (v13 << (8 * v4))) + 2;
    v12 = v15 + 2;
    if (v4 < 4)
    {
      v12 = v16;
    }

    goto LABEL_32;
  }

  if (v14)
  {
    v15 = *a2;
    goto LABEL_30;
  }

LABEL_32:
  if (v12 == 1)
  {
    v18 = result;
    (*(v3 + 32))();
    result = v18;
    v18[v4] = 1;
  }

  else if (v12)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    v17 = result;
    (*(v3 + 32))();
    result = v17;
    v17[v4] = 0;
  }

  return result;
}

uint64_t sub_1001A7188(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_1001A7294(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_1001A7440(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = *(*(*(a2 + 16) - 8) + 64);
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return v3;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    LODWORD(v3) = v6 + 2;
    if (v2 >= 4)
    {
      return v3;
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

void sub_1001A74D4(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (a2 > 1)
  {
    v4 = a2 - 2;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 2;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 2;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t sub_1001A75A0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_1001A7630(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 > 7 || (v5 + 1) > 0x18 || (*(v4 + 80) & 0x100000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));

    return v3;
  }

  v11 = a2[v5];
  v12 = v11 - 3;
  if (v11 >= 3)
  {
    if (v5 <= 3)
    {
      v13 = *(v4 + 64);
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_24;
      }

      v14 = *a2;
    }

    else if (v13 == 2)
    {
      v14 = *a2;
    }

    else if (v13 == 3)
    {
      v14 = *a2 | (a2[2] << 16);
    }

    else
    {
      v14 = *a2;
    }

    v15 = (v14 | (v12 << (8 * v5))) + 3;
    v11 = v14 + 3;
    if (v5 < 4)
    {
      v11 = v15;
    }
  }

LABEL_24:
  switch(v11)
  {
    case 2u:
      (*(v4 + 16))(__dst);
      *(v3 + v5) = 2;
      return v3;
    case 1u:
      (*(v4 + 16))(__dst);
      *(v3 + v5) = 1;
      return v3;
    case 0u:
      (*(v4 + 16))(__dst);
      *(v3 + v5) = 0;
      return v3;
  }

  return memcpy(__dst, a2, v5 + 1);
}

unsigned __int8 *sub_1001A77DC(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  v3 = result[v2];
  v4 = v3 - 3;
  if (v3 < 3)
  {
    goto LABEL_15;
  }

  if (v2 <= 3)
  {
    v5 = *(*(*(a2 + 16) - 8) + 64);
  }

  else
  {
    v5 = 4;
  }

  if (v5 <= 1)
  {
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = *result;
  }

  else if (v5 == 2)
  {
    v6 = *result;
  }

  else if (v5 == 3)
  {
    v6 = *result | (result[2] << 16);
  }

  else
  {
    v6 = *result;
  }

  v7 = (v6 | (v4 << (8 * v2))) + 3;
  v3 = v6 + 3;
  if (v2 < 4)
  {
    v3 = v7;
  }

LABEL_15:
  if (v3 <= 2)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  return result;
}

_BYTE *sub_1001A78B4(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = a2[v5];
  v7 = v6 - 3;
  if (v6 >= 3)
  {
    if (v5 <= 3)
    {
      v8 = *(v4 + 64);
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_15;
      }

      v9 = *a2;
    }

    else if (v8 == 2)
    {
      v9 = *a2;
    }

    else if (v8 == 3)
    {
      v9 = *a2 | (a2[2] << 16);
    }

    else
    {
      v9 = *a2;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 3;
    v6 = v9 + 3;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_15:
  switch(v6)
  {
    case 2u:
      (*(v4 + 16))(__dst);
      v11 = 2;
      goto LABEL_21;
    case 1u:
      (*(v4 + 16))(__dst);
      v11 = 1;
LABEL_21:
      __dst[v5] = v11;
      return __dst;
    case 0u:
      (*(v4 + 16))(__dst);
      __dst[v5] = 0;
      return __dst;
  }

  return memcpy(__dst, a2, v5 + 1);
}

unsigned __int8 *sub_1001A7A20(unsigned __int8 *__dst, unsigned __int8 *a2, uint64_t a3)
{
  if (__dst == a2)
  {
    return __dst;
  }

  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = 8 * v5;
  v7 = __dst[v5];
  v8 = v7 - 3;
  if (v7 >= 3)
  {
    if (v5 <= 3)
    {
      v9 = *(v4 + 64);
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_16;
      }

      v10 = *__dst;
    }

    else if (v9 == 2)
    {
      v10 = *__dst;
    }

    else if (v9 == 3)
    {
      v10 = *__dst | (__dst[2] << 16);
    }

    else
    {
      v10 = *__dst;
    }

    v11 = (v10 | (v8 << v6)) + 3;
    v7 = v10 + 3;
    if (v5 < 4)
    {
      v7 = v11;
    }
  }

LABEL_16:
  if (v7 <= 2)
  {
    v12 = a2;
    (*(v4 + 8))(__dst, *(a3 + 16));
    a2 = v12;
  }

  v13 = a2[v5];
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v5 <= 3)
    {
      v15 = v5;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_32;
      }

      v16 = *a2;
    }

    else if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
    }

    else
    {
      v16 = *a2;
    }

    v17 = (v16 | (v14 << v6)) + 3;
    v13 = v16 + 3;
    if (v5 < 4)
    {
      v13 = v17;
    }
  }

LABEL_32:
  switch(v13)
  {
    case 2u:
      (*(v4 + 16))(__dst);
      v18 = 2;
      goto LABEL_38;
    case 1u:
      (*(v4 + 16))(__dst);
      v18 = 1;
LABEL_38:
      __dst[v5] = v18;
      return __dst;
    case 0u:
      (*(v4 + 16))(__dst);
      __dst[v5] = 0;
      return __dst;
  }

  return memcpy(__dst, a2, v5 + 1);
}

_BYTE *sub_1001A7C54(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = a2[v5];
  v7 = v6 - 3;
  if (v6 >= 3)
  {
    if (v5 <= 3)
    {
      v8 = *(v4 + 64);
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_15;
      }

      v9 = *a2;
    }

    else if (v8 == 2)
    {
      v9 = *a2;
    }

    else if (v8 == 3)
    {
      v9 = *a2 | (a2[2] << 16);
    }

    else
    {
      v9 = *a2;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 3;
    v6 = v9 + 3;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_15:
  switch(v6)
  {
    case 2u:
      (*(v4 + 32))(__dst);
      v11 = 2;
      goto LABEL_21;
    case 1u:
      (*(v4 + 32))(__dst);
      v11 = 1;
LABEL_21:
      __dst[v5] = v11;
      return __dst;
    case 0u:
      (*(v4 + 32))(__dst);
      __dst[v5] = 0;
      return __dst;
  }

  return memcpy(__dst, a2, v5 + 1);
}

unsigned __int8 *sub_1001A7DC0(unsigned __int8 *__dst, unsigned __int8 *a2, uint64_t a3)
{
  if (__dst == a2)
  {
    return __dst;
  }

  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = 8 * v5;
  v7 = __dst[v5];
  v8 = v7 - 3;
  if (v7 >= 3)
  {
    if (v5 <= 3)
    {
      v9 = *(v4 + 64);
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_16;
      }

      v10 = *__dst;
    }

    else if (v9 == 2)
    {
      v10 = *__dst;
    }

    else if (v9 == 3)
    {
      v10 = *__dst | (__dst[2] << 16);
    }

    else
    {
      v10 = *__dst;
    }

    v11 = (v10 | (v8 << v6)) + 3;
    v7 = v10 + 3;
    if (v5 < 4)
    {
      v7 = v11;
    }
  }

LABEL_16:
  if (v7 <= 2)
  {
    v12 = a2;
    (*(v4 + 8))(__dst, *(a3 + 16));
    a2 = v12;
  }

  v13 = a2[v5];
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v5 <= 3)
    {
      v15 = v5;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_32;
      }

      v16 = *a2;
    }

    else if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
    }

    else
    {
      v16 = *a2;
    }

    v17 = (v16 | (v14 << v6)) + 3;
    v13 = v16 + 3;
    if (v5 < 4)
    {
      v13 = v17;
    }
  }

LABEL_32:
  switch(v13)
  {
    case 2u:
      (*(v4 + 32))(__dst);
      v18 = 2;
      goto LABEL_38;
    case 1u:
      (*(v4 + 32))(__dst);
      v18 = 1;
LABEL_38:
      __dst[v5] = v18;
      return __dst;
    case 0u:
      (*(v4 + 32))(__dst);
      __dst[v5] = 0;
      return __dst;
  }

  return memcpy(__dst, a2, v5 + 1);
}

uint64_t sub_1001A7FF4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = 252 - (1u >> (8 * v3));
  if (v3 >= 4)
  {
    v4 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v4 >= a2)
  {
    goto LABEL_25;
  }

  v5 = v3 + 1;
  v6 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v9 = ((~(-1 << v6) + a2 - v4) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v3);
      if (v4 <= (v11 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v11);
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return v4 + (v5 | v10) + 1;
}

void sub_1001A8128(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = 252 - (1u >> (8 * v5));
  if (v5 >= 4)
  {
    v6 = 252;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_15;
    }

LABEL_19:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_31:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_19;
  }

LABEL_15:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_35:
    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_35;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_39:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_39;
    }
  }

LABEL_36:
  if (v8)
  {
    a1[v7] = v14;
  }
}

uint64_t sub_1001A82F0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  v3 = a1[v2];
  v4 = v3 - 3;
  if (v3 >= 3)
  {
    if (v2 <= 3)
    {
      v5 = *(*(*(a2 + 16) - 8) + 64);
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return v3;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 3;
    LODWORD(v3) = v6 + 3;
    if (v2 >= 4)
    {
      return v3;
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

void sub_1001A8384(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (a2 > 2)
  {
    v4 = a2 - 3;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 3;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 3;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t sub_1001A84CC()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100771CF0);
  v1 = sub_100003E30(v0, qword_100771CF0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_1001A8668(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1001AA540(v5, v7);
}

void sub_1001A86C4()
{
  v1 = v0;
  type metadata accessor for TTRUserDefaults();
  v2 = static TTRUserDefaults.appUserDefaults.getter();
  TTRUserDefaults.animationSlowModeEnabled.getter();

  type metadata accessor for TTRIAnimationSlowMode();
  swift_allocObject();
  TTRIAnimationSlowMode.init(isSlowModeEnabled:)();
  v3 = 0.15;
  if (v1[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_selectedStateShowsPinnedListColor])
  {
    v3 = 0.25;
  }

  v4 = TTRIAnimationSlowMode.adjust(_:)(v3);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = objc_allocWithZone(UIViewPropertyAnimator);
  v10[4] = sub_1001AA5CC;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10001047C;
  v10[3] = &unk_1007199D8;
  v7 = _Block_copy(v10);
  v8 = v1;

  v9 = [v6 initWithDuration:v7 controlPoint1:v4 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  _Block_release(v7);
  [v9 startAnimation];
}

void sub_1001A88C8(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  ObjectType = swift_getObjectType();
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v10 = *a4;
  v11 = a1;
  LODWORD(v10) = objc_msgSendSuper2(&v14, v10);
  v13.receiver = v11;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, *a5, a3);
  v12.receiver = v11;
  v12.super_class = ObjectType;
  if (v10 != objc_msgSendSuper2(&v12, *a4))
  {
    sub_1001A86C4();
  }
}

void sub_1001A8A4C(void *a1, uint64_t a2)
{
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "didUpdateFocusInContext:withAnimationCoordinator:", a1, a2);
  v5 = [a1 nextFocusedView];
  if (v5)
  {
    v6 = v5;
    sub_100003540(0, &qword_10076B020);
    v7 = v2;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      v9 = &v7[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 1);
        ObjectType = swift_getObjectType();
        (*(v10 + 24))(v7, ObjectType, v10);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1001A8BD0()
{
  result = static REMFeatureFlags.pinnedListTileNewStyleEnabled.getter();
  v1 = 12.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_100771D08 = *&v1;
  return result;
}

UIAccessibilityTraits sub_1001A8C64()
{
  ObjectType = swift_getObjectType();
  v2 = UIAccessibilityTraitButton;
  if (([v0 isUserInteractionEnabled] & 1) == 0)
  {
    v3 = UIAccessibilityTraitNotEnabled;
    if ((UIAccessibilityTraitNotEnabled & ~v2) == 0)
    {
      v3 = 0;
    }

    v2 |= v3;
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  if (objc_msgSendSuper2(&v7, "isSelected"))
  {
    v4 = UIAccessibilityTraitSelected;
    if ((UIAccessibilityTraitSelected & ~v2) == 0)
    {
      v4 = 0;
    }

    v2 |= v4;
  }

  v5 = UIAccessibilityTraitStaticText;
  if ((UIAccessibilityTraitStaticText & ~v2) == 0)
  {
    v5 = 0;
  }

  return v5 | v2;
}

uint64_t sub_1001A8D98()
{
  v1 = type metadata accessor for Date();
  v109 = *(v1 - 8);
  __chkstk_darwin(v1);
  v108 = &v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v112 = *(v3 - 8);
  v113 = v3;
  v4 = __chkstk_darwin(v3);
  v111 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v105 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v115 = *(v8 - 8);
  v116 = v8;
  __chkstk_darwin(v8);
  v114 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100771DE0);
  __chkstk_darwin(v10 - 8);
  v110 = &v105 - v11;
  v12 = type metadata accessor for TTRAccountsListsViewModel.List();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v117 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v15 - 8);
  v17 = &v105 - v16;
  v121 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v18 = *(v121 - 8);
  v19 = __chkstk_darwin(v121);
  v21 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v119 = &v105 - v22;
  v23 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_titleLabel;
  v24 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_titleLabel);
  if (!v24)
  {
    __break(1u);
    goto LABEL_43;
  }

  v25 = [v24 text];
  v107 = v1;
  if (v25)
  {
    v26 = v25;
    v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v120 = v27;
  }

  else
  {
    v118 = static TTRAccesibility.General.Label.Untitled.getter();
    v120 = v28;
  }

  v29 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  swift_beginAccess();
  sub_10002C688(v0 + v29, v17);
  v30 = v18;
  v31 = v121;
  if ((*(v18 + 48))(v17, 1, v121) == 1)
  {
    sub_1000079B4(v17, &qword_100771DD0);
    static TTRAccesibility.AccountsList.Format.Name_ItemCount.getter();
    sub_100058000(&unk_100786CB0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_10062D3F0;
    *(v32 + 56) = &type metadata for String;
    v33 = sub_10005C390();
    v34 = v120;
    *(v32 + 32) = v118;
    *(v32 + 40) = v34;
    v35 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_count);
    *(v32 + 96) = &type metadata for Int;
    *(v32 + 104) = &protocol witness table for Int;
    *(v32 + 64) = v33;
    *(v32 + 72) = v35;
    v36 = String.init(format:_:)();

    return v36;
  }

  v106 = v12;
  v37 = v119;
  (*(v18 + 32))(v119, v17, v31);
  (*(v18 + 16))(v21, v37, v31);
  v38 = (*(v18 + 88))(v21, v31);
  if (v38 != enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    if (v38 != enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
    {
LABEL_44:
      if (qword_100766FD0 != -1)
      {
        swift_once();
      }

      v101 = type metadata accessor for Logger();
      sub_100003E30(v101, qword_100771CF0);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      v102 = "Unknown pinned list type";
      v103 = 24;
      goto LABEL_47;
    }

    (*(v18 + 96))(v21, v31);
    v46 = v13;
    (*(v13 + 32))(v117, v21, v106);
    v47 = *(v0 + v23);
    if (v47)
    {
      v48 = v47;

      v49 = [v48 text];

      v50 = v110;
      if (v49)
      {
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;
      }

      else
      {
        v51 = static TTRAccesibility.General.Label.Untitled.getter();
        v53 = v65;
      }

      sub_100058000(&unk_100771E10);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_10062D400;
      *(v66 + 32) = v51;
      *(v66 + 40) = v53;
      v67 = [objc_opt_self() currentRequest];
      if (v67)
      {
        v68 = v67;
        v69 = [v67 technology];

        LOBYTE(v68) = AXTechnology.ttrShouldProvideAdditionalContext.getter();
        if (v68)
        {
          v70 = static TTRAccesibility.AccountsList.Attributes.Pinned.getter();
          v73 = *(v66 + 16);
          v72 = *(v66 + 24);
          if (v73 >= v72 >> 1)
          {
            v98 = v70;
            v99 = v71;
            v100 = sub_100546970((v72 > 1), v73 + 1, 1, v66);
            v71 = v99;
            v66 = v100;
            v70 = v98;
          }

          *(v66 + 16) = v73 + 1;
          v74 = v66 + 16 * v73;
          *(v74 + 32) = v70;
          *(v74 + 40) = v71;
        }
      }

      TTRAccountsListsViewModel.List.sharingContactsData.getter();
      v75 = type metadata accessor for TTRAccountsListsViewModel.SharingContactsData();
      v76 = *(v75 - 8);
      if ((*(v76 + 48))(v50, 1, v75) == 1)
      {
        sub_1000079B4(v50, &qword_100771DE0);
      }

      else
      {
        TTRAccountsListsViewModel.SharingContactsData.contacts.getter();
        (*(v76 + 8))(v50, v75);
        v77 = Array<A>.ttrAccessibilitySharingSummary()();
        v79 = v78;

        if (v79)
        {
          v81 = *(v66 + 16);
          v80 = *(v66 + 24);
          if (v81 >= v80 >> 1)
          {
            v66 = sub_100546970((v80 > 1), v81 + 1, 1, v66);
          }

          *(v66 + 16) = v81 + 1;
          v82 = v66 + 16 * v81;
          *(v82 + 32) = v77;
          *(v82 + 40) = v79;
        }
      }

      if (TTRAccountsListsViewModel.List.isCustomSmartList.getter())
      {
        v83 = static TTRAccesibility.AccountsList.Label.SmartList.getter();
        v86 = *(v66 + 16);
        v85 = *(v66 + 24);
        if (v86 >= v85 >> 1)
        {
          v95 = v83;
          v96 = v84;
          v97 = sub_100546970((v85 > 1), v86 + 1, 1, v66);
          v84 = v96;
          v66 = v97;
          v83 = v95;
        }

        *(v66 + 16) = v86 + 1;
        v87 = v66 + 16 * v86;
        *(v87 + 32) = v83;
        *(v87 + 40) = v84;
      }

      v122 = v66;
      static TTRAccesibility.General.Label.Separator.getter();
      sub_100058000(&unk_100781F20);
      sub_10006089C();
      v88 = BidirectionalCollection<>.joined(separator:)();
      v90 = v89;

      static TTRAccesibility.AccountsList.Format.Name_ItemCount.getter();
      sub_100058000(&unk_100786CB0);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_10062D3F0;
      *(v91 + 56) = &type metadata for String;
      *(v91 + 64) = sub_10005C390();
      *(v91 + 32) = v88;
      *(v91 + 40) = v90;
      v92 = v117;
      v93 = TTRAccountsListsViewModel.List.count.getter();
      *(v91 + 96) = &type metadata for Int;
      *(v91 + 104) = &protocol witness table for Int;
      *(v91 + 72) = v93;
      v36 = String.init(format:_:)();

      (*(v46 + 8))(v92, v106);
      (*(v18 + 8))(v119, v121);
      return v36;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  (*(v18 + 96))(v21, v31);
  v39 = v114;
  v40 = v115;
  v41 = v116;
  (*(v115 + 32))(v114, v21, v116);
  TTRAccountsListsViewModel.SmartList.type.getter();
  v42 = TTRListType.PredefinedSmartListType.isCountHidden.getter();
  v44 = v112;
  v43 = v113;
  (*(v112 + 8))(v7, v113);
  if (v42)
  {
    v45 = v120;
  }

  else
  {
    static TTRAccesibility.AccountsList.Format.Name_ItemCount.getter();
    sub_100058000(&unk_100786CB0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_10062D3F0;
    *(v54 + 56) = &type metadata for String;
    *(v54 + 64) = sub_10005C390();
    v55 = v120;
    *(v54 + 32) = v118;
    *(v54 + 40) = v55;

    v56 = TTRAccountsListsViewModel.SmartList.count.getter();
    *(v54 + 96) = &type metadata for Int;
    *(v54 + 104) = &protocol witness table for Int;
    *(v54 + 72) = v56;
    v118 = String.init(format:_:)();
    v45 = v57;
  }

  v58 = v111;
  TTRAccountsListsViewModel.SmartList.type.getter();
  v59 = (*(v44 + 88))(v58, v43);
  if (v59 == enum case for TTRListType.PredefinedSmartListType.today(_:))
  {

    v60 = v108;
    Date.init()();
    v61 = Date.rem_localizedTodayString.getter();
    v63 = v62;
    (*(v109 + 8))(v60, v107);
    sub_100058000(&unk_100771E10);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_10062D3F0;
    *(v64 + 32) = v118;
    *(v64 + 40) = v45;
    *(v64 + 48) = v61;
    *(v64 + 56) = v63;
    v122 = v64;
    static TTRAccesibility.General.Label.Separator.getter();
    sub_100058000(&unk_100781F20);
    sub_10006089C();
    v36 = BidirectionalCollection<>.joined(separator:)();

    (*(v40 + 8))(v39, v41);
    (*(v30 + 8))(v119, v121);
  }

  else
  {
    if (v59 != enum case for TTRListType.PredefinedSmartListType.scheduled(_:) && v59 != enum case for TTRListType.PredefinedSmartListType.all(_:) && v59 != enum case for TTRListType.PredefinedSmartListType.flagged(_:) && v59 != enum case for TTRListType.PredefinedSmartListType.assigned(_:) && v59 != enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:) && v59 != enum case for TTRListType.PredefinedSmartListType.completed(_:))
    {
      while (1)
      {
        if (qword_100766FD0 != -1)
        {
          swift_once();
        }

        v104 = type metadata accessor for Logger();
        sub_100003E30(v104, qword_100771CF0);
        sub_100008E04(_swiftEmptyArrayStorage);
        sub_100008E04(_swiftEmptyArrayStorage);
        v102 = "Unknown smart list type";
        v103 = 23;
LABEL_47:
        sub_1003F9818(v102, v103, 2);
        __break(1u);
      }
    }

    (*(v40 + 8))(v39, v41);
    (*(v30 + 8))(v119, v121);
    return v118;
  }

  return v36;
}