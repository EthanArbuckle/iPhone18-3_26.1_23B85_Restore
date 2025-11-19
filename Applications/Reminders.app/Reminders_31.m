uint64_t sub_1003688C0(uint64_t a1, uint64_t a2, int a3)
{
  v104 = a3;
  v113 = a1;
  v105 = sub_100058000(&qword_10077FD88);
  __chkstk_darwin(v105);
  v106 = &v91 - v4;
  v5 = sub_100058000(&unk_10078D520);
  __chkstk_darwin(v5 - 8);
  v102 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v109 = &v91 - v8;
  __chkstk_darwin(v9);
  v110 = &v91 - v10;
  v108 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v103 = *(v108 - 8);
  v11 = *(v103 + 64);
  __chkstk_darwin(v108);
  v100 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v115 = &v91 - v13;
  __chkstk_darwin(v14);
  v112 = &v91 - v15;
  v16 = sub_100058000(&qword_10077FD78);
  __chkstk_darwin(v16 - 8);
  v18 = &v91 - v17;
  v19 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v118 = *(v19 - 8);
  *&v119 = v19;
  __chkstk_darwin(v19);
  v101 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v114 = &v91 - v22;
  __chkstk_darwin(v23);
  v111 = &v91 - v24;
  v107 = v25;
  __chkstk_darwin(v26);
  v116 = &v91 - v27;
  v28 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v32);
  v35 = &v91 - v34;
  v37 = (v29 + 16);
  v36 = *(v29 + 16);
  v38 = a2;
  v36(&v91 - v34, a2, v28, v33);
  v39 = (*(v29 + 88))(v35, v28);
  if (v39 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.select(_:) || v39 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.showEdits(_:))
  {
    (*(v29 + 8))(v35, v28);
  }

  else
  {
    if (v39 == enum case for REMNavigationSpecifier.SmartListPathSpecifier.showInAccountsList(_:))
    {
      v119 = *(v117 + 2);
      v120 = v119;
      sub_100058000(&qword_10077FD98);
      swift_allocObject();
      swift_unknownObjectRetain();
      Promise.init(value:)();
      sub_100058000(&qword_10077FDF0);
      v40 = dispatch thunk of Promise.cast<A>(as:)();

      return v40;
    }

    if (v39 != enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:) && v39 != enum case for REMNavigationSpecifier.SmartListPathSpecifier.newReminder(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_14:
      v67 = v102;
      sub_10000794C(v18, v102, &unk_10078D520);
      if (v37(&v35[v18], 1, v38) == 1)
      {
        sub_1000079B4(v109, &unk_10078D520);
        sub_1000079B4(v110, &unk_10078D520);
        (*(v28 + 8))(v67, v38);
        goto LABEL_16;
      }

      v76 = v100;
      v92(v100, &v35[v18], v38);
      sub_10036ED08(&qword_10077FD90, &type metadata accessor for TTRListType.PredefinedSmartListType);
      v77 = v67;
      v78 = dispatch thunk of static Equatable.== infix(_:_:)();
      v68 = *(v28 + 8);
      v68(v76, v38);
      v66 = v28;
      sub_1000079B4(v109, &unk_10078D520);
      sub_1000079B4(v110, &unk_10078D520);
      v68(v77, v38);
      sub_1000079B4(v18, &unk_10078D520);
      if ((v78 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  (v36)(v31, a2, v28);
  REMNavigationSpecifier.CommonListPathSpecifier.init(smartListPathSpecifier:)();
  v43 = v118;
  v42 = v119;
  if ((*(v118 + 48))(v18, 1, v119) == 1)
  {
    sub_1000079B4(v18, &qword_10077FD78);
    v44 = objc_opt_self();
    v45 = String._bridgeToObjectiveC()();
    v46 = [v44 internalErrorWithDebugDescription:v45];

    sub_100058000(&qword_10077FDF8);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v47 = v112;
  v48 = (v43 + 32);
  v99 = *(v43 + 32);
  v49 = v116;
  v99(v116, v18, v42);
  v50 = v103;
  v51 = v103 + 16;
  v52 = *(v103 + 16);
  v96 = v11;
  v53 = v108;
  v52(v47, v113, v108);
  v98 = v52;
  v97 = v51;
  v54 = *(v43 + 16);
  v54(v111, v49, v42);
  v52(v115, v47, v53);
  v55 = v111;
  v95 = v54;
  v54(v114, v111, v42);
  v56 = v42;
  v57 = (*(v50 + 80) + 24) & ~*(v50 + 80);
  v58 = v57 + v96;
  v96 = v43 + 16;
  v59 = (*(v43 + 80) + v58 + 1) & ~*(v43 + 80);
  v94 = *(v43 + 80);
  v60 = swift_allocObject();
  v61 = v117;
  *(v60 + 16) = v117;
  v62 = *(v50 + 32);
  v93 = v50 + 32;
  v92 = v62;
  v62((v60 + v57), v112, v53);
  v104 &= 1u;
  *(v60 + v58) = v104;
  v111 = v48;
  v112 = v60;
  v63 = v60 + v59;
  v38 = v53;
  v99(v63, v55, v56);
  swift_beginAccess();
  sub_100010540((v61 + 12), &v120);
  v28 = v50;

  v64 = v110;
  sub_1003971A0(v110);
  sub_100015124(&v120);
  v65 = v109;
  v98(v109, v113, v38);
  (*(v50 + 56))(v65, 0, 1, v38);
  v35 = *(v105 + 48);
  v18 = v106;
  sub_10000794C(v64, v106, &unk_10078D520);
  sub_10000794C(v65, &v35[v18], &unk_10078D520);
  v37 = *(v50 + 48);
  if (v37(v18, 1, v38) != 1)
  {
    goto LABEL_14;
  }

  sub_1000079B4(v65, &unk_10078D520);
  sub_1000079B4(v64, &unk_10078D520);
  if (v37(&v35[v18], 1, v38) != 1)
  {
LABEL_16:
    sub_1000079B4(v18, &qword_10077FD88);
    v68 = *(v28 + 8);
LABEL_17:
    v69 = v118;
    v68(v115, v38);
    v70 = *(v69 + 8);
    v71 = v119;
    v70(v114, v119);
    sub_100391414(0);
    v72 = swift_allocObject();
    v73 = v112;
    *(v72 + 16) = sub_100371768;
    *(v72 + 24) = v73;

    v74 = zalgo.getter();
    sub_100058000(&qword_10077FDF0);
    v75 = dispatch thunk of Promise.then<A>(on:closure:)();

    v70(v116, v71);
    return v75;
  }

  sub_1000079B4(v18, &unk_10078D520);
  v66 = v50;
LABEL_19:
  v79 = v94;
  *&v120 = 0;
  *(&v120 + 1) = 0xE000000000000000;
  v80 = v115;
  v81 = _print_unlocked<A, B>(_:_:)();
  v117 = &v91;
  v82 = *(&v120 + 1);
  v113 = v120;
  v83 = __chkstk_darwin(v81);
  *(&v91 - 2) = v80;
  *(&v91 - 8) = v104;
  v84 = v101;
  v85 = v114;
  v86 = v119;
  (v95)(v101, v114, v119, v83);
  v87 = (v79 + 16) & ~v79;
  v88 = swift_allocObject();
  v99((v88 + v87), v84, v86);
  v89 = sub_10035FCAC(v113, v82, sub_100371E88, (&v91 - 4), sub_1003718AC, v88);

  (*(v66 + 8))(v80, v108);
  v90 = *(v118 + 8);
  v90(v85, v86);

  v90(v116, v86);
  return v89;
}

uint64_t sub_100369658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = type metadata accessor for REMNavigationSpecifier.SearchPathSpecifier();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v10, a2, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == enum case for REMNavigationSpecifier.SearchPathSpecifier.showContents(_:))
  {
    (*(v8 + 96))(v10, v7);
    v13 = *v10;
    v12 = v10[1];
    v14 = *(a3 + 32);
    if (!swift_unknownObjectWeakLoadStrong())
    {

      goto LABEL_9;
    }

    v15 = *(v14 + 24);
    ObjectType = swift_getObjectType();
    v27 = a4;
    v17 = *(v15 + 16);
    swift_unknownObjectRetain();
    v17(v13, v12, ObjectType, v15);
    a4 = v27;
    swift_unknownObjectRelease();

    goto LABEL_7;
  }

  if (v11 == enum case for REMNavigationSpecifier.SearchPathSpecifier.focusInAccountsList(_:))
  {
    v18 = *(a3 + 32);
    if (!swift_unknownObjectWeakLoadStrong())
    {
LABEL_9:
      v22 = objc_opt_self();
      v23 = String._bridgeToObjectiveC()();
      v24 = [v22 internalErrorWithDebugDescription:v23];

      sub_100058000(a4);
      swift_allocObject();
      return Promise.init(error:)();
    }

    v19 = *(v18 + 24);
    v20 = swift_getObjectType();
    v21 = *(v19 + 16);
    swift_unknownObjectRetain();
    v21(0, 0xE000000000000000, v20, v19);
    swift_unknownObjectRelease();
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100369914(uint64_t a1)
{
  v3 = type metadata accessor for REMHashtagLabelSpecifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == enum case for REMNavigationSpecifier.TaggedPathSpecifier.showContents(_:))
  {
    (*(v11 + 96))(v13, v10);
    v15 = *(v4 + 32);
    v15(v9, v13, v3);
    sub_100391414(0);
    (*(v4 + 16))(v7, v9, v3);
    v16 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v1;
    v15((v17 + v16), v7, v3);

    v18 = zalgo.getter();
    v19 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v4 + 8))(v9, v3);
    return v19;
  }

  else if (v14 == enum case for REMNavigationSpecifier.TaggedPathSpecifier.showInAccount(_:))
  {
    return sub_100391414(0);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100369BFC(uint64_t a1)
{
  v3 = type metadata accessor for REMHashtagLabelSpecifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for REMNavigationSpecifier.TaggedPathSpecifier.showContents(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = *(v4 + 32);
    v16(v9, v14, v3);
    sub_100391414(0);
    (*(v4 + 16))(v6, v9, v3);
    v17 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    v16((v18 + v17), v6, v3);

    v19 = zalgo.getter();
    sub_100058000(&qword_100775650);
    v20 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v4 + 8))(v9, v3);
    return v20;
  }

  else if (v15 == enum case for REMNavigationSpecifier.TaggedPathSpecifier.showInAccount(_:))
  {
    return sub_1003917A8(0);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100369EF4(uint64_t a1)
{
  v3 = type metadata accessor for REMHashtagLabelSpecifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == enum case for REMNavigationSpecifier.TaggedPathSpecifier.showContents(_:))
  {
    (*(v11 + 96))(v13, v10);
    v15 = *(v4 + 32);
    v15(v9, v13, v3);
    sub_100391414(0);
    (*(v4 + 16))(v7, v9, v3);
    v16 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v1;
    v15((v17 + v16), v7, v3);

    v18 = zalgo.getter();
    sub_100058000(&qword_10077FDB0);
    v19 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v4 + 8))(v9, v3);
    return v19;
  }

  else if (v14 == enum case for REMNavigationSpecifier.TaggedPathSpecifier.showInAccount(_:))
  {
    return sub_100024898(0);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10036A1EC(uint64_t a1)
{
  v3 = type metadata accessor for REMHashtagLabelSpecifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for REMNavigationSpecifier.TaggedPathSpecifier.showContents(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = *(v4 + 32);
    v16(v9, v14, v3);
    sub_100391414(0);
    (*(v4 + 16))(v6, v9, v3);
    v17 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    v16((v18 + v17), v6, v3);

    v19 = zalgo.getter();
    sub_100058000(&qword_10077FD70);
    v20 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v4 + 8))(v9, v3);
    return v20;
  }

  else if (v15 == enum case for REMNavigationSpecifier.TaggedPathSpecifier.showInAccount(_:))
  {
    return sub_100391B44(0);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10036A4E4(uint64_t a1)
{
  v3 = type metadata accessor for REMHashtagLabelSpecifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for REMNavigationSpecifier.TaggedPathSpecifier.showContents(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = *(v4 + 32);
    v16(v9, v14, v3);
    sub_100391414(0);
    (*(v4 + 16))(v6, v9, v3);
    v17 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    v16((v18 + v17), v6, v3);

    v19 = zalgo.getter();
    sub_100058000(&qword_10077FDC0);
    v20 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v4 + 8))(v9, v3);
    return v20;
  }

  else if (v15 == enum case for REMNavigationSpecifier.TaggedPathSpecifier.showInAccount(_:))
  {
    return sub_100391EE0(0);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10036A7DC(uint64_t a1)
{
  v3 = type metadata accessor for REMHashtagLabelSpecifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for REMNavigationSpecifier.TaggedPathSpecifier.showContents(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = *(v4 + 32);
    v16(v9, v14, v3);
    sub_100391414(0);
    (*(v4 + 16))(v6, v9, v3);
    v17 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    v16((v18 + v17), v6, v3);

    v19 = zalgo.getter();
    sub_100058000(&qword_10077FDD0);
    v20 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v4 + 8))(v9, v3);
    return v20;
  }

  else if (v15 == enum case for REMNavigationSpecifier.TaggedPathSpecifier.showInAccount(_:))
  {
    return sub_10039227C(0);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10036AAD4(uint64_t a1)
{
  v3 = type metadata accessor for REMHashtagLabelSpecifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for REMNavigationSpecifier.TaggedPathSpecifier.showContents(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = *(v4 + 32);
    v16(v9, v14, v3);
    sub_100391414(0);
    (*(v4 + 16))(v6, v9, v3);
    v17 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    v16((v18 + v17), v6, v3);

    v19 = zalgo.getter();
    sub_100058000(&qword_10077FDE0);
    v20 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v4 + 8))(v9, v3);
    return v20;
  }

  else if (v15 == enum case for REMNavigationSpecifier.TaggedPathSpecifier.showInAccount(_:))
  {
    return sub_100392618(0);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10036ADCC(uint64_t a1)
{
  v3 = type metadata accessor for REMHashtagLabelSpecifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for REMNavigationSpecifier.TaggedPathSpecifier.showContents(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = *(v4 + 32);
    v16(v9, v14, v3);
    sub_100391414(0);
    (*(v4 + 16))(v6, v9, v3);
    v17 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    v16((v18 + v17), v6, v3);

    v19 = zalgo.getter();
    sub_100058000(&qword_10077FDF0);
    v20 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v4 + 8))(v9, v3);
    return v20;
  }

  else if (v15 == enum case for REMNavigationSpecifier.TaggedPathSpecifier.showInAccount(_:))
  {
    return sub_1003929B4(0);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10036B0C4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for REMHashtagLabelSpecifier();
  sub_10036ED08(&qword_10077FDA0, &type metadata accessor for REMHashtagLabelSpecifier);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v5 = v4;
  firstly<A>(closure:)();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = a2;

  v7 = zalgo.getter();
  sub_100058000(&qword_100775650);
  dispatch thunk of Promise.then<A>(on:closure:)();

  v8 = dispatch thunk of Promise.cast<A>(as:)();

  return v8;
}

uint64_t sub_10036B24C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for REMHashtagLabelSpecifier();
  sub_10036ED08(&qword_10077FDA0, &type metadata accessor for REMHashtagLabelSpecifier);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v5 = v4;
  firstly<A>(closure:)();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = a2;

  v7 = zalgo.getter();
  sub_100058000(&qword_100775650);
  dispatch thunk of Promise.then<A>(on:closure:)();

  v8 = dispatch thunk of Promise.cast<A>(as:)();

  return v8;
}

uint64_t sub_10036B3D0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for REMHashtagLabelSpecifier();
  sub_10036ED08(&qword_10077FDA0, &type metadata accessor for REMHashtagLabelSpecifier);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v5 = v4;
  firstly<A>(closure:)();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = a2;

  v7 = zalgo.getter();
  sub_100058000(&qword_100775650);
  dispatch thunk of Promise.then<A>(on:closure:)();

  sub_100058000(&qword_10077FDB0);
  v8 = dispatch thunk of Promise.cast<A>(as:)();

  return v8;
}

uint64_t sub_10036B560(uint64_t a1, uint64_t a2)
{
  type metadata accessor for REMHashtagLabelSpecifier();
  sub_10036ED08(&qword_10077FDA0, &type metadata accessor for REMHashtagLabelSpecifier);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v5 = v4;
  firstly<A>(closure:)();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = a2;

  v7 = zalgo.getter();
  sub_100058000(&qword_100775650);
  dispatch thunk of Promise.then<A>(on:closure:)();

  sub_100058000(&qword_10077FD70);
  v8 = dispatch thunk of Promise.cast<A>(as:)();

  return v8;
}

uint64_t sub_10036B6F0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for REMHashtagLabelSpecifier();
  sub_10036ED08(&qword_10077FDA0, &type metadata accessor for REMHashtagLabelSpecifier);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v5 = v4;
  firstly<A>(closure:)();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = a2;

  v7 = zalgo.getter();
  sub_100058000(&qword_100775650);
  dispatch thunk of Promise.then<A>(on:closure:)();

  sub_100058000(&qword_10077FDC0);
  v8 = dispatch thunk of Promise.cast<A>(as:)();

  return v8;
}

uint64_t sub_10036B880(uint64_t a1, uint64_t a2)
{
  type metadata accessor for REMHashtagLabelSpecifier();
  sub_10036ED08(&qword_10077FDA0, &type metadata accessor for REMHashtagLabelSpecifier);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v5 = v4;
  firstly<A>(closure:)();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = a2;

  v7 = zalgo.getter();
  sub_100058000(&qword_100775650);
  dispatch thunk of Promise.then<A>(on:closure:)();

  sub_100058000(&qword_10077FDD0);
  v8 = dispatch thunk of Promise.cast<A>(as:)();

  return v8;
}

uint64_t sub_10036BA10(uint64_t a1, uint64_t a2)
{
  type metadata accessor for REMHashtagLabelSpecifier();
  sub_10036ED08(&qword_10077FDA0, &type metadata accessor for REMHashtagLabelSpecifier);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v5 = v4;
  firstly<A>(closure:)();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = a2;

  v7 = zalgo.getter();
  sub_100058000(&qword_100775650);
  dispatch thunk of Promise.then<A>(on:closure:)();

  sub_100058000(&qword_10077FDE0);
  v8 = dispatch thunk of Promise.cast<A>(as:)();

  return v8;
}

uint64_t sub_10036BBA0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for REMHashtagLabelSpecifier();
  sub_10036ED08(&qword_10077FDA0, &type metadata accessor for REMHashtagLabelSpecifier);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v5 = v4;
  firstly<A>(closure:)();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = a2;

  v7 = zalgo.getter();
  sub_100058000(&qword_100775650);
  dispatch thunk of Promise.then<A>(on:closure:)();

  sub_100058000(&qword_10077FDF0);
  v8 = dispatch thunk of Promise.cast<A>(as:)();

  return v8;
}

uint64_t sub_10036BD40(void *a1)
{
  v3 = *(type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = a1[3];
  v7 = a1[4];
  sub_10000C36C(a1, v6);
  return (*(v7 + 56))(v5, v1 + v4, &type metadata for Any[8], &type metadata for Any[8], v6, v7);
}

uint64_t sub_10036BE18(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v14 = a2;
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  v7 = objc_opt_self();
  v8 = [v7 ppt];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v9 = *(v4 + 8);
  v9(v6, v3);
  v10 = v14(a1);
  static os_signpost_type_t.end.getter();
  v11 = [v7 ppt];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v9(v6, v3);
  return v10;
}

uint64_t sub_10036BFE8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, unint64_t, uint64_t, _BYTE *, uint64_t, uint64_t))
{
  v20 = a7;
  v21 = a8;
  v18 = a1;
  v19 = a6;
  v11 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v25 = 0;
  v26 = 0xE000000000000000;
  type metadata accessor for TTRListType.PredefinedSmartListType();
  _print_unlocked<A, B>(_:_:)();
  v23 = a2;
  v24 = a3;
  (*(v12 + 16))(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v11);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = swift_allocObject();
  (*(v12 + 32))(v15 + v14, &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v16 = v21(0, 0xE000000000000000, v19, v22, v20, v15);

  return v16;
}

uint64_t sub_10036C190(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100058000(a3);
  v6 = a1[3];
  v7 = a1[4];
  sub_10000C36C(a1, v6);
  return (*(v7 + 88))(a2, v5, v5, v6, v7);
}

uint64_t sub_10036C238(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v4[3] = swift_getObjectType();
  v4[0] = v2;
  swift_unknownObjectRetain();
  throwingCast<A>(_:as:failureMessage:)();
  return sub_100004758(v4);
}

uint64_t sub_10036C2C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 32);
  v6[3] = swift_getObjectType();
  v6[0] = v4;
  sub_100058000(a3);
  swift_unknownObjectRetain();
  throwingCast<A>(_:as:failureMessage:)();
  return sub_100004758(v6);
}

uint64_t sub_10036C360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_10000C36C((a2 + 48), *(a2 + 72));
  sub_100058000(a5);
  return firstly<A>(closure:)();
}

uint64_t sub_10036C3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_10000C36C((a2 + 48), *(a2 + 72));
  sub_100058000(a4);
  return firstly<A>(closure:)();
}

uint64_t sub_10036C484(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v101 = a2;
  v102 = a3;
  v107 = *a4;
  v6 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v6 - 8);
  v106 = v89 - v7;
  v105 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate();
  v99 = *(v105 - 1);
  v8 = *(v99 + 64);
  __chkstk_darwin(v105);
  v103 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for UUID();
  v9 = *(v108 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v108);
  v100 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v104 = v89 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = v89 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = v89 - v18;
  __chkstk_darwin(v17);
  v21 = v89 - v20;
  v98 = a1;
  REMiCloudSharedItemSpecifier.PublicTemplate.uuid.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    swift_beginAccess();
    v23 = a4[11];

    v24 = sub_1000AAB68(v21, v23);

    if (v24)
    {
      if (qword_100767230 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100003E30(v25, qword_100780A58);
      (*(v9 + 16))(v16, v21, v108);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = v9;
        v29 = swift_slowAlloc();
        v109[0] = swift_slowAlloc();
        *v29 = 136315394;
        v30 = sub_1003989BC(v107);
        v32 = sub_100004060(v30, v31, v109);

        *(v29 + 4) = v32;
        *(v29 + 12) = 2080;
        v33 = UUID.uuidString.getter();
        v35 = v34;
        v36 = *(v28 + 8);
        v37 = v16;
        v38 = v108;
        v36(v37, v108);
        v39 = sub_100004060(v33, v35, v109);

        *(v29 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v26, v27, "%s.showPublicTemplate(_:store:delegate:) Skipped because there is already a pending request to download the same public template and then show it. {templatePublicLinkURLUUID: %s}", v29, 0x16u);
        swift_arrayDestroy();

        return (v36)(v21, v38);
      }

      else
      {

        v87 = *(v9 + 8);
        v88 = v108;
        v87(v16, v108);
        return (v87)(v21, v88);
      }
    }

    else
    {
      swift_allocObject();
      swift_weakInit();
      swift_allocObject();
      swift_weakInit();
      type metadata accessor for TTRPotentiallyLongOperationPerformer();
      swift_allocObject();
      v95 = TTRPotentiallyLongOperationPerformer.init(longOperationDurationThreshold:debugForceShowActivityUI:showActivityUI:hideActivityUI:)();
      v93 = swift_allocObject();
      swift_weakInit();
      v57 = *(v9 + 16);
      v89[1] = v9 + 16;
      v90 = v57;
      v58 = v104;
      v59 = v108;
      v57(v104, v21, v108);
      v60 = v99;
      (*(v99 + 16))(v103, v98, v105);
      v94 = *(v9 + 80);
      v61 = v9;
      v97 = v9;
      v62 = (v94 + 24) & ~v94;
      v91 = v94 | 7;
      v98 = v10 + 7;
      v96 = v21;
      v63 = (v10 + 7 + v62) & 0xFFFFFFFFFFFFFFF8;
      v64 = (*(v60 + 80) + v63 + 8) & ~*(v60 + 80);
      v65 = swift_allocObject();
      *(v65 + 16) = v93;
      v66 = *(v61 + 32);
      v92 = v61 + 32;
      v93 = v66;
      v66((v65 + v62), v58, v59);
      v67 = v101;
      *(v65 + v63) = v101;
      (*(v60 + 32))(v65 + v64, v103, v105);
      v68 = (v65 + ((v8 + v64 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v68 = v102;
      v68[1] = &off_100721040;
      v69 = v100;
      v70 = v96;
      v71 = v59;
      v72 = v90;
      v90(v100, v96, v59);
      swift_beginAccess();
      v73 = v67;

      v74 = v104;
      sub_10058D6B4(v104, v69);
      swift_endAccess();
      v75 = *(v97 + 8);
      v97 += 8;
      v105 = v75;
      v75(v74, v59);
      v76 = type metadata accessor for TaskPriority();
      (*(*(v76 - 8) + 56))(v106, 1, 1, v76);
      v72(v74, v70, v59);
      type metadata accessor for MainActor();
      v77 = v73;
      v78 = v95;

      v79 = static MainActor.shared.getter();
      v80 = (v94 + 48) & ~v94;
      v81 = (v98 + v80) & 0xFFFFFFFFFFFFFFF8;
      v82 = swift_allocObject();
      *(v82 + 2) = v79;
      *(v82 + 3) = &protocol witness table for MainActor;
      *(v82 + 4) = v78;
      *(v82 + 5) = v77;
      v93(&v82[v80], v74, v71);
      v83 = &v82[v81];
      *v83 = sub_10036EA84;
      v83[1] = v65;
      v84 = v106;
      *&v82[(v81 + 23) & 0xFFFFFFFFFFFFFFF8] = v107;
      sub_10009E31C(0, 0, v84, &unk_10063BDE0, v82);

      return v105(v96, v71);
    }
  }

  else
  {
    if (qword_100767230 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100003E30(v41, qword_100780A58);
    (*(v9 + 16))(v19, v21, v108);
    v42 = Logger.logObject.getter();
    v43 = v9;
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v44))
    {
      v45 = swift_slowAlloc();
      v110[0] = swift_slowAlloc();
      *v45 = 136315394;
      v46 = sub_1003989BC(v107);
      v48 = sub_100004060(v46, v47, v110);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2080;
      v49 = UUID.uuidString.getter();
      v51 = v50;
      v52 = *(v43 + 8);
      v53 = v19;
      v54 = v21;
      v55 = v108;
      v52(v53, v108);
      v56 = sub_100004060(v49, v51, v110);

      *(v45 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v42, v44, "%s.showPublicTemplate(_:store:delegate:) Skipped because 'viewController' is nil and cannot present a modal view for showing public template. {templatePublicLinkURLUUID: %s}", v45, 0x16u);
      swift_arrayDestroy();

      return (v52)(v54, v55);
    }

    else
    {

      v85 = *(v43 + 8);
      v86 = v108;
      v85(v19, v108);
      return (v85)(v21, v86);
    }
  }
}

uint64_t sub_10036CF00(uint64_t a1)
{
  v1 = *(*sub_10000C36C((a1 + 48), *(a1 + 72)) + 32);
  swift_unknownObjectRetain();

  TTRModuleState.initialLoadPromise.getter();

  v2 = swift_allocObject();
  *(v2 + 16) = sub_10003A9B0;
  *(v2 + 24) = v1;
  swift_unknownObjectRetain();
  v3 = zalgo.getter();
  sub_100058000(&qword_10077FD70);
  dispatch thunk of Promise.then<A>(on:closure:)();
  swift_unknownObjectRelease();

  v4 = zalgo.getter();
  v5 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v5;
}

uint64_t sub_10036D060(uint64_t a1)
{
  v1 = *(*sub_10000C36C((a1 + 48), *(a1 + 72)) + 32);
  swift_unknownObjectRetain();

  TTRModuleState.initialLoadPromise.getter();

  v2 = swift_allocObject();
  *(v2 + 16) = sub_100371EEC;
  *(v2 + 24) = v1;
  swift_unknownObjectRetain();
  v3 = zalgo.getter();
  sub_100058000(&qword_10077FD70);
  dispatch thunk of Promise.then<A>(on:closure:)();
  swift_unknownObjectRelease();

  v4 = zalgo.getter();
  sub_100058000(&qword_100775650);
  v5 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v5;
}

uint64_t sub_10036D1D0(uint64_t a1)
{
  v1 = *(*sub_10000C36C((a1 + 48), *(a1 + 72)) + 32);
  swift_unknownObjectRetain();

  TTRModuleState.initialLoadPromise.getter();

  v2 = swift_allocObject();
  *(v2 + 16) = sub_100371EEC;
  *(v2 + 24) = v1;
  swift_unknownObjectRetain();
  v3 = zalgo.getter();
  sub_100058000(&qword_10077FD70);
  dispatch thunk of Promise.then<A>(on:closure:)();
  swift_unknownObjectRelease();

  v4 = zalgo.getter();
  sub_100058000(&qword_10077FDB0);
  v5 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v5;
}

uint64_t sub_10036D340(uint64_t a1)
{
  v1 = *(*sub_10000C36C((a1 + 48), *(a1 + 72)) + 32);
  swift_unknownObjectRetain();

  TTRModuleState.initialLoadPromise.getter();

  v2 = swift_allocObject();
  *(v2 + 16) = sub_100371EEC;
  *(v2 + 24) = v1;
  swift_unknownObjectRetain();
  v3 = zalgo.getter();
  sub_100058000(&qword_10077FD70);
  dispatch thunk of Promise.then<A>(on:closure:)();
  swift_unknownObjectRelease();

  v4 = zalgo.getter();
  v5 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v5;
}

uint64_t sub_10036D49C(uint64_t a1)
{
  v1 = *(*sub_10000C36C((a1 + 48), *(a1 + 72)) + 32);
  swift_unknownObjectRetain();

  TTRModuleState.initialLoadPromise.getter();

  v2 = swift_allocObject();
  *(v2 + 16) = sub_100371EEC;
  *(v2 + 24) = v1;
  swift_unknownObjectRetain();
  v3 = zalgo.getter();
  sub_100058000(&qword_10077FD70);
  dispatch thunk of Promise.then<A>(on:closure:)();
  swift_unknownObjectRelease();

  v4 = zalgo.getter();
  sub_100058000(&qword_10077FDC0);
  v5 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v5;
}

uint64_t sub_10036D60C(uint64_t a1)
{
  v1 = *(*sub_10000C36C((a1 + 48), *(a1 + 72)) + 32);
  swift_unknownObjectRetain();

  TTRModuleState.initialLoadPromise.getter();

  v2 = swift_allocObject();
  *(v2 + 16) = sub_100371EEC;
  *(v2 + 24) = v1;
  swift_unknownObjectRetain();
  v3 = zalgo.getter();
  sub_100058000(&qword_10077FD70);
  dispatch thunk of Promise.then<A>(on:closure:)();
  swift_unknownObjectRelease();

  v4 = zalgo.getter();
  sub_100058000(&qword_10077FDD0);
  v5 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v5;
}

uint64_t sub_10036D77C(uint64_t a1)
{
  v1 = *(*sub_10000C36C((a1 + 48), *(a1 + 72)) + 32);
  swift_unknownObjectRetain();

  TTRModuleState.initialLoadPromise.getter();

  v2 = swift_allocObject();
  *(v2 + 16) = sub_100371EEC;
  *(v2 + 24) = v1;
  swift_unknownObjectRetain();
  v3 = zalgo.getter();
  sub_100058000(&qword_10077FD70);
  dispatch thunk of Promise.then<A>(on:closure:)();
  swift_unknownObjectRelease();

  v4 = zalgo.getter();
  sub_100058000(&qword_10077FDE0);
  v5 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v5;
}

uint64_t sub_10036D8EC(uint64_t a1)
{
  v1 = *(*sub_10000C36C((a1 + 48), *(a1 + 72)) + 32);
  swift_unknownObjectRetain();

  TTRModuleState.initialLoadPromise.getter();

  v2 = swift_allocObject();
  *(v2 + 16) = sub_100371EEC;
  *(v2 + 24) = v1;
  swift_unknownObjectRetain();
  v3 = zalgo.getter();
  sub_100058000(&qword_10077FD70);
  dispatch thunk of Promise.then<A>(on:closure:)();
  swift_unknownObjectRelease();

  v4 = zalgo.getter();
  sub_100058000(&qword_10077FDF0);
  v5 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v5;
}

void sub_10036DA5C(uint64_t a1)
{
  v3 = type metadata accessor for TTRUndoNavigationRequest();
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_100792F80);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - v8;
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  sub_10000C36C((v1 + 48), *(v1 + 72));
  if (sub_10001D354() == 2)
  {
    v36 = a1;
    TTRUndoNavigationRequest.navigationSpecifier.getter();
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1000079B4(v9, &unk_100792F80);
      if (qword_100767210 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100003E30(v17, qword_10077FC40);
      v18 = v37;
      v19 = v38;
      (v38[2])(v6, v36, v37);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v39 = v23;
        *v22 = 136315138;
        sub_10036ED08(&qword_10077FD68, &type metadata accessor for TTRUndoNavigationRequest);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v25;
        v19[1](v6, v18);
        v27 = sub_100004060(v24, v26, &v39);

        *(v22 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v20, v21, "TTRIRootPresenter: cannot perform undo navigation; no navigationSpecifier {request: %s}", v22, 0xCu);
        sub_100004758(v23);
      }

      else
      {

        v19[1](v6, v18);
      }
    }

    else
    {
      v38 = *(v11 + 32);
      (v38)(v16, v9, v10);
      v32 = swift_allocObject();
      swift_weakInit();
      (*(v11 + 16))(v13, v16, v10);
      v33 = (*(v11 + 80) + 24) & ~*(v11 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = v32;
      (v38)(v34 + v33, v13, v10);
      *(v34 + ((v12 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
      v35 = swift_allocObject();
      *(v35 + 16) = sub_10036E074;
      *(v35 + 24) = v34;

      TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

      (*(v11 + 8))(v16, v10);
    }
  }

  else
  {
    if (qword_100767210 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100003E30(v28, qword_10077FC40);
    v38 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v38, v29, "TTRIRootPresenter: skip undo navigation because only one child is visible", v30, 2u);
    }

    v31 = v38;
  }
}

uint64_t sub_10036E098(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA38;

  return sub_1003502B0(a1, v4, v5, v6);
}

uint64_t sub_10036E1C4()
{
  type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  sub_10000C36C((*(v0 + 16) + 48), *(*(v0 + 16) + 72));
  return firstly<A>(closure:)();
}

uint64_t sub_10036E300()
{
  type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  sub_10000C36C((*(v0 + 16) + 48), *(*(v0 + 16) + 72));
  return firstly<A>(closure:)();
}

uint64_t sub_10036E4F8(void *a1)
{
  v3 = *(type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_10035D59C(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10036E598(void *a1)
{
  v3 = *(type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = a1[3];
  v7 = a1[4];
  sub_10000C36C(a1, v6);
  return (*(v7 + 64))(v5, v1 + v4, &type metadata for Any[8], &type metadata for Any[8], v6, v7);
}

uint64_t sub_10036E658(void *a1)
{
  v3 = *(type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = a1[3];
  v7 = a1[4];
  sub_10000C36C(a1, v6);
  return (*(v7 + 72))(v5, v1 + v4, &type metadata for Any[8], &type metadata for Any[8], v6, v7);
}

uint64_t sub_10036E7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, void, uint64_t, uint64_t))
{
  v9 = *(type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  return a4(a1, v4 + v10, *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), a2, a3);
}

uint64_t sub_10036E8DC(void *a1)
{
  v3 = *(type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = a1[3];
  v6 = a1[4];
  sub_10000C36C(a1, v5);
  return (*(v6 + 88))(v1 + v4, &type metadata for Any[8], &type metadata for Any[8], v5, v6);
}

uint64_t sub_10036E9F4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001AA3C;

  return sub_10039464C(v0);
}

void sub_10036EA84(void *a1, char a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v2 + v7);
  v11 = *(v2 + 16);
  v12 = (v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  sub_100394A1C(a1, a2 & 1, v11, v2 + v6, v10, v2 + v9, v13, v14);
}

uint64_t sub_10036EBAC(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10001AA38;

  return sub_100395398(a1, v5, v6, v7, v8, v1 + v4, v10, v11);
}

uint64_t sub_10036ED08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10036EE00(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for REMNavigationSpecifier.SearchPathSpecifier() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_100369658(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_10036F0A8(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier() - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  return sub_10035D3E0(a1, v5 + v12, *(v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), a2, a3, a4, a5);
}

uint64_t sub_10036F768(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for REMNavigationSpecifier.ListPathSpecifier() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  return sub_10036C360(a1, *(v2 + 16), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_10036F858@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10036F888(v1);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10036F888(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[3] = swift_getObjectType();
  v4[0] = v2;
  sub_100058000(&qword_10077FD70);
  swift_unknownObjectRetain();
  throwingCast<A>(_:as:failureMessage:)();
  result = sub_100004758(v4);
  if (!v1)
  {
    return v4[4];
  }

  return result;
}

uint64_t sub_100370E24(uint64_t a1)
{
  v3 = *(type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_100351008(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100371074(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *a1;
  sub_10000C36C((*(v3 + 16) + 48), *(*(v3 + 16) + 72));
  return a3(v8, v3 + v7);
}

uint64_t sub_10037132C()
{
  v1 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1003713F8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t sub_100371470(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100371500()
{
  v1 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100371614()
{
  v1 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + v4 + 1) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1003717B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, unint64_t, uint64_t, _BYTE *, uint64_t, uint64_t))
{
  v9 = *(type metadata accessor for TTRListType.PredefinedSmartListType() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = v10 + *(v9 + 64);
  v12 = *(type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier() - 8);
  return sub_10036BFE8(*(v4 + 16), v4 + v10, *(v4 + v11), v4 + ((v11 + *(v12 + 80) + 1) & ~*(v12 + 80)), a1, a2, a3, a4);
}

uint64_t sub_1003718C0()
{
  v1 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100371948(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100371A40()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100371A80(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_100371B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076BB50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100371BF0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_100371CC8()
{
  v1 = *(type metadata accessor for REMNavigationSpecifier() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  return sub_100342154(*(v0 + 16), v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_100371D5C()
{
  result = qword_10077FE08;
  if (!qword_10077FE08)
  {
    sub_10005D20C(&qword_10077FE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077FE08);
  }

  return result;
}

uint64_t sub_100371DC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_100341810(a1, v4, v5, v6, v7, v8);
}

id sub_10037209C(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v101 = a5;
  v102 = a6;
  v105 = a1;
  v106 = a3;
  v7 = type metadata accessor for TTRRemindersListLayout();
  v108 = *(v7 - 8);
  v109 = v7;
  v8 = __chkstk_darwin(v7);
  v90 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v104 = &v89 - v11;
  v12 = __chkstk_darwin(v10);
  v89 = &v89 - v13;
  __chkstk_darwin(v12);
  v103 = &v89 - v14;
  v15 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  v16 = __chkstk_darwin(v15 - 8);
  v99 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v97 = &v89 - v18;
  v98 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0) - 8;
  __chkstk_darwin(v98);
  v107 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TTRListType.SortingCapability();
  v94 = *(v20 - 8);
  v95 = v20;
  v21 = __chkstk_darwin(v20);
  v96 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v93 = &v89 - v23;
  v100 = type metadata accessor for TTRRemindersListDefaultListType();
  v24 = *(v100 - 1);
  __chkstk_darwin(v100);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v27 - 8);
  v29 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v30 - 8);
  v91 = (&v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v92 = a2;
  v34 = *a2;

  v35 = v34;
  static REMRemindersListDataView.SortingStyle.defaultForSearchResult.getter();
  type metadata accessor for TTRShowSearchResultDataModelSource();
  swift_allocObject();
  v106 = TTRShowSearchResultDataModelSource.init(store:searchTerm:countCompleted:sortingStyle:canChangeSortingStyle:)();
  v36 = a2;
  v37 = v91;
  sub_10010BD5C(v36, v91, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  static REMSuggestedAttributesElector.ExcludedAttributes.lists.getter();
  (*(v24 + 104))(v26, enum case for TTRRemindersListDefaultListType.any(_:), v100);
  v38 = v37;
  sub_10007786C(v37, v29, v26, v115);
  v39 = v115[0];
  v40 = v93;
  (*(v33 + 104))(v93, enum case for REMRemindersListDataView.SortingStyle.default(_:), v32);
  v42 = v94;
  v41 = v95;
  v43 = v40;
  (*(v94 + 104))(v40, enum case for TTRListType.SortingCapability.notSupported(_:), v95);
  type metadata accessor for TTRIShowSearchResultViewModelSource();
  v44 = swift_allocObject();
  v45 = v96;
  (*(v42 + 16))(v96, v43, v41);
  v46 = v106;

  v100 = v39;
  v47 = sub_100372DD4(v46, v100, v45, v44);
  (*(v42 + 8))(v43, v41);
  sub_10010BD5C(v92, v38, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  sub_10010BCAC(v115, v112);
  v48 = sub_100373188(&qword_10077FE40, type metadata accessor for TTRIShowSearchResultViewModelSource);
  v49 = v107;
  sub_10010BD5C(v38, v107, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v50 = v98;
  sub_10010BCAC(v112, v49 + *(v98 + 28));
  v51 = (v49 + *(v50 + 32));
  *v51 = v47;
  v51[1] = v48;
  v52 = v112[0];
  sub_100058000(&qword_10076C230);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v114, v111, &qword_100769608);
  v54 = *(v111[5] + 8);
  *(v53 + 32) = v111[4];
  *(v53 + 40) = v54;
  sub_10000794C(&v113, v110, &qword_100769600);
  swift_retain_n();
  v55 = v52;
  swift_unknownObjectRelease();
  *(v53 + 48) = v110[3];
  sub_100004758(v110);
  sub_100004758(v111);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v56 = swift_allocObject();
  v57 = sub_1003A8BFC(v55, v47, v53, v56);

  sub_10010BD08(v112);
  sub_10010BE0C(v38, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v58 = *(v50 + 36);
  v96 = v57;
  *(v49 + v58) = v57;
  v59 = v97;
  sub_100078BBC(v97);
  v98 = type metadata accessor for TTRIShowSearchResultPresenter();
  v60 = swift_allocObject();
  v61 = (v60 + OBJC_IVAR____TtC9Reminders29TTRIShowSearchResultPresenter_dataModelSource);
  *v61 = v46;
  v61[1] = &protocol witness table for TTRShowSearchResultDataModelSource;
  *(v60 + OBJC_IVAR____TtC9Reminders29TTRIShowSearchResultPresenter_didFinalizeSearchQuery) = 0;
  v62 = v99;
  sub_10010BD5C(v59, v99, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v63 = v101;
  ObjectType = swift_getObjectType();
  v65 = *(v102 + 8);

  swift_unknownObjectRetain();
  v66 = sub_10022D2A0(v62, v63, v60, ObjectType, v65);
  sub_10010BE0C(v59, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v67 = *(v66 + 144);
  v68 = swift_getObjectType();
  v69 = *(v67 + 112);

  if (v69(v68, v67))
  {
    swift_getObjectType();
    v70 = v89;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v71 = v103;
    (*(v108 + 32))(v103, v70, v109);
  }

  else
  {
    v71 = v103;
    (*(v108 + 104))(v103, enum case for TTRRemindersListLayout.list(_:), v109);
  }

  v101 = sub_1003A4A1C(v71, v66);
  v102 = v72;
  v74 = v73;
  (*(v108 + 8))(v71, v109);
  v103 = swift_getObjectType();
  *(v66 + 24) = *(v74 + 8);
  swift_unknownObjectWeakAssign();
  v75 = *(v66 + 144);
  v76 = swift_getObjectType();
  v77 = *(v75 + 112);

  if (v77(v76, v75))
  {
    swift_getObjectType();
    v78 = v90;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v79 = v104;
    (*(v108 + 32))(v104, v78, v109);
  }

  else
  {

    v79 = v104;
    (*(v108 + 104))(v104, enum case for TTRRemindersListLayout.list(_:), v109);
  }

  v80 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController());
  v81 = v101;
  v82 = sub_1003A8C30(v66, v81, v102, v79, 0, 1, 0, v80);

  v83 = *(v74 + 32);
  v84 = v82;
  v83(v82, &off_100723D78, v103, v74);
  sub_100373188(&qword_10077FE48, type metadata accessor for TTRIShowSearchResultPresenter);

  TTRRemindersListInteractor.delegate.setter();
  swift_unknownObjectWeakAssign();
  sub_100373188(&qword_10077FE50, type metadata accessor for TTRIShowSearchResultViewModelSource);

  dispatch thunk of TTRShowSearchResultDataModelSource.delegate.setter();

  sub_10056FEB0(v85, &off_10071A9B0);

  *(v96 + 3) = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v116, v112, &qword_100769600);
  v86 = v112[4];
  swift_unknownObjectRelease();
  *(v86 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v112);
  sub_10000794C(&v117, v112, &qword_100769608);
  swift_getObjectType();
  sub_100373188(&qword_10077FE58, type metadata accessor for TTRIShowSearchResultPresenter);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v112);
  v87 = v105;
  v105[3] = v98;
  v87[4] = &off_10072CC88;
  swift_unknownObjectRelease();

  *v87 = v66;
  sub_10010BE0C(v107, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v115);
  return v84;
}

id TTRIShowSearchResultAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowSearchResultAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIShowSearchResultAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowSearchResultAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100372DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v33 = a3;
  v34 = v8;
  v35 = type metadata accessor for REMAnalyticsEvent();
  v9 = *(v35 - 8);
  __chkstk_darwin(v35);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v32 = type metadata accessor for TTRListType.SortingCapability();
  v15 = *(v32 - 8);
  __chkstk_darwin(v32);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a4 + OBJC_IVAR____TtC9Reminders34TTRShowSearchResultViewModelSource_completedRemindersCount;
  *v18 = 0;
  v18[8] = 1;
  v19 = (a4 + OBJC_IVAR____TtC9Reminders34TTRShowSearchResultViewModelSource_searchTerm);
  *v19 = 0;
  v19[1] = 0;
  (*(v15 + 16))(v17, a3);
  v20 = sub_1003A649C(a1, a2, v17, a4);

  sub_100503FF8(v14);
  v21 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v21 - 8) + 56))(v14, 0, 1, v21);
  sub_10056F540(v14);
  sub_10010BE6C(v14);
  type metadata accessor for TTRUserDefaults();
  v22 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v23 = sub_100058000(&qword_100770980);
  v24 = &v11[*(v23 + 48)];
  v25 = &v11[*(v23 + 80)];
  v26 = enum case for REMRemindersOpenUserOperation.search(_:);
  v27 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v27 - 8) + 104))(v11, v26, v27);
  *v24 = TTRUserDefaults.activitySessionId.getter();
  v24[1] = v28;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v25 = _typeName(_:qualified:)();
  v25[1] = v29;
  v30 = v35;
  (*(v9 + 104))(v11, enum case for REMAnalyticsEvent.openListUserOperation(_:), v35);
  REMAnalyticsManager.post(event:)();

  (*(v15 + 8))(v33, v32);
  (*(v9 + 8))(v11, v30);
  return v20;
}

uint64_t sub_100373188(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1003731D0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100058000(&qword_10077FE60);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10062D3F0;
  *(v13 + 32) = a2;
  *(v13 + 40) = a7;
  v47 = a5;
  swift_unknownObjectRetain();
  if (a3)
  {
    sub_10037373C(a3);

    v14 = a4;
  }

  else
  {
    v14 = 0;
    a5 = 0;
  }

  *(v13 + 48) = v14;
  *(v13 + 56) = a5;
  sub_100058000(&qword_10077FE68);
  sub_100058000(&qword_10077FE70);
  sub_1003736D8();
  v15 = Sequence.removingNils<A>()();

  v16 = type metadata accessor for TTRIListDetailContainerRouter();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48[3] = v16;
  v48[4] = &off_100714510;
  v48[0] = v17;
  type metadata accessor for TTRIListDetailContainerPresenter();
  v18 = swift_allocObject();
  v19 = sub_10000AE84(v48, v16);
  __chkstk_darwin(v19);
  v21 = (v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v18[9] = v16;
  v18[10] = &off_100714510;
  v18[6] = v23;
  v18[3] = 0;
  swift_unknownObjectWeakInit();
  v18[5] = 0;
  swift_unknownObjectWeakInit();
  v18[11] = v15;

  sub_100004758(v48);
  sub_100058000(&qword_10077FE80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  v25._countAndFlagsBits = 0xD000000000000013;
  v26._countAndFlagsBits = 0x7473694C2077654ELL;
  v25._object = 0x80000001006737D0;
  v27._object = 0x80000001006737F0;
  v26._object = 0xE800000000000000;
  v27._countAndFlagsBits = 0xD00000000000001ELL;
  v28 = TTRLocalizedString(_:value:comment:)(v25, v26, v27);
  *(inited + 32) = 7824750;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v28;
  *(inited + 64) = a1;
  if (a3)
  {
    sub_10037373C(a3);
    v29 = a1;
    v30._countAndFlagsBits = 0xD000000000000019;
    v30._object = 0x8000000100683020;
    v31._object = 0x80000001006737F0;
    v32._countAndFlagsBits = 0x6574616C706D6554;
    v32._object = 0xE900000000000073;
    v31._countAndFlagsBits = 0xD00000000000001ELL;
    v33 = TTRLocalizedString(_:value:comment:)(v30, v32, v31);
    v34 = a3;
    inited = sub_1005476A0(1, 2, 1, inited);
    swift_unknownObjectRelease();

    *(inited + 16) = 2;
    *(inited + 72) = 0x6574616C706D6574;
    *(inited + 80) = 0xE900000000000073;
    *(inited + 88) = v33;
    *(inited + 104) = v34;
  }

  else
  {
    v35 = a1;
  }

  v36 = objc_allocWithZone(type metadata accessor for TTRIListDetailContainerViewController()) + OBJC_IVAR____TtC9Reminders37TTRIListDetailContainerViewController_presenter;
  *v36 = v18;
  v36[1] = &off_10072B858;

  v37 = sub_1004069E8(inited, 0);
  v18[3] = &off_1007192B8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v38 = [v37 presentationController];
  if (v38)
  {
    v39 = v38;
    [v38 setDelegate:v37];
  }

  v40 = *(v15 + 16);
  if (v40)
  {
    v46[1] = v17;
    v47 = v15;
    v41 = (v15 + 40);
    do
    {
      v42 = *v41;
      ObjectType = swift_getObjectType();
      v44 = *(v42 + 16);

      swift_unknownObjectRetain();
      v44(v18, &off_10072B838, ObjectType, v42);
      swift_unknownObjectRelease();
      v41 += 2;
      --v40;
    }

    while (v40);
  }

  return v37;
}

unint64_t sub_1003736D8()
{
  result = qword_10077FE78;
  if (!qword_10077FE78)
  {
    sub_10005D20C(&qword_10077FE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077FE78);
  }

  return result;
}

void *sub_10037373C(void *result)
{
  if (result)
  {
    v1 = result;

    return swift_unknownObjectRetain();
  }

  return result;
}

void *assignWithCopy for TTRIListDetailContainerChildUnsavedChangesDescription(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for TTRIListDetailContainerChildUnsavedChangesDescription(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersBoardDragItemSources(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TTRIRemindersBoardDragItemSources(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10037388C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077FE88);
  v1 = sub_100003E30(v0, qword_10077FE88);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100373954()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1003739A8();
  }
}

uint64_t sub_1003739A8()
{
  v1 = sub_100058000(&unk_10076B870);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_account;
  swift_beginAccess();
  sub_10000794C(v0 + v8, v3, &unk_10076B870);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1000079B4(v3, &unk_10076B870);
  }

  (*(v5 + 32))(v7, v3, v4);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return (*(v5 + 8))(v7, v4);
  }

  v10 = TTRAccountsListsViewModel.Account.objectID.getter();
  v11 = TTRAccountsListsViewModel.Account.showsUpgradeForLocalOnlyAccount.getter();
  if (qword_100767460 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_10078D290);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x49746E756F636361;
  *(inited + 40) = 0xE900000000000044;
  *(inited + 72) = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v10;
  v14 = v10;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  sub_100426100(v14, v11 & 1);

  (*(v5 + 8))(v7, v4);
  return swift_unknownObjectRelease();
}

uint64_t sub_100373F88()
{
  sub_10003B788(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_delegate);

  sub_100030BD0(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_outlineDisclosureAccessory, type metadata accessor for OutlineDisclosureAccessory);

  return sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_account, &unk_10076B870);
}

id sub_1003740CC()
{
  v1 = OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E24MigrationButtonAccessory____lazy_storage___migrationButton;
  v2 = *(v0 + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E24MigrationButtonAccessory____lazy_storage___migrationButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E24MigrationButtonAccessory____lazy_storage___migrationButton);
  }

  else
  {
    sub_100003540(0, &qword_10076BA60);
    v4 = swift_allocObject();
    swift_weakInit();
    v11 = v4;
    v5 = v0;
    v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v7 = sub_100166DE0(v6);

    [v7 setTag:{100, 0, 0, 0, sub_100375630, v11}];
    v8 = *(v5 + v1);
    *(v5 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1003741E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E24MigrationButtonAccessory_migrationActionHandler);
    if (v1)
    {
      sub_10008E7EC(*(result + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E24MigrationButtonAccessory_migrationActionHandler));

      v1(v2);
      return sub_1000301AC(v1);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100374280()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E24MigrationButtonAccessory_accessoryState, &qword_1007800C8);
  sub_1000301AC(*(v0 + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E24MigrationButtonAccessory_migrationActionHandler));

  return swift_deallocClassInstance();
}

uint64_t sub_100374390@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = sub_100058000(&unk_10077FC20);
  __chkstk_darwin(v1 - 8);
  v3 = v17 - v2;
  v4 = type metadata accessor for UICellAccessory.Placement();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003740CC();
  v12 = &v7[*(sub_100058000(&qword_100779498) + 48)];
  v13 = enum case for UICellAccessory.DisplayedState.always(_:);
  v14 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v14 - 8) + 104))(v7, v13, v14);
  *v12 = variable initialization expression of TTRSmartListFilterEditorInteractor.listFetchOperationManager;
  v12[1] = 0;
  (*(v5 + 104))(v7, enum case for UICellAccessory.Placement.trailing(_:), v4);
  v15 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100374640@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v2 = sub_100058000(&unk_10077FC20);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - v3;
  v5 = type metadata accessor for UICellAccessory.Placement();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100374BC4();
  [v13 startAnimating];

  v14 = *(v1 + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E16SpinnerAccessory____lazy_storage___spinner);
  v15 = &v8[*(sub_100058000(&qword_100779498) + 48)];
  v16 = enum case for UICellAccessory.DisplayedState.always(_:);
  v17 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v17 - 8) + 104))(v8, v16, v17);
  *v15 = sub_100374908;
  v15[1] = 0;
  (*(v6 + 104))(v8, enum case for UICellAccessory.Placement.trailing(_:), v5);
  v18 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = v14;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100374908(uint64_t a1)
{
  v2 = type metadata accessor for UICellAccessory.AccessoryType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for UICellAccessory();
  v6 = *(v34 - 8);
  v7.n128_f64[0] = __chkstk_darwin(v34);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  v14 = *(v6 + 16);
  v12 = v6 + 16;
  v13 = v14;
  v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
  v16 = *(v12 + 56);
  v37 = (v3 + 88);
  v36 = enum case for UICellAccessory.AccessoryType.customView(_:);
  v35 = (v12 - 8);
  v31 = (v3 + 96);
  v32 = (v3 + 8);
  v17 = v34;
  v33 = v5;
  v14(v9, v15, v34, v7);
  while (1)
  {
    UICellAccessory.accessoryType.getter();
    v19 = (*v37)(v5, v2);
    if (v19 != v36)
    {
      (*v35)(v9, v17);
      (*v32)(v5, v2);
      goto LABEL_4;
    }

    (*v31)(v5, v2);
    v20 = *v5;
    v21 = [*v5 tag];
    v22 = v16;
    v23 = v13;
    v24 = v10;
    v25 = v2;
    v26 = v12;
    v27 = v21;

    v17 = v34;
    (*v35)(v9, v34);
    v28 = v27 == 100;
    v12 = v26;
    v2 = v25;
    v10 = v24;
    v13 = v23;
    v16 = v22;
    v5 = v33;
    if (v28)
    {
      break;
    }

LABEL_4:
    ++v11;
    v15 += v16;
    if (v10 == v11)
    {
      return 0;
    }

    v13(v9, v15, v17, v18);
  }

  result = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
    return 0;
  }

  return result;
}

id sub_100374BC4()
{
  v1 = OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E16SpinnerAccessory____lazy_storage___spinner;
  v2 = *(v0 + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E16SpinnerAccessory____lazy_storage___spinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E16SpinnerAccessory____lazy_storage___spinner);
  }

  else
  {
    v4 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100374C3C()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E16SpinnerAccessory_accessoryState, &qword_1007800C8);

  return swift_deallocClassInstance();
}

uint64_t *sub_100374CC8(uint64_t *a1, uint64_t *a2)
{
  v4 = *(sub_100058000(&qword_1007800C8) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = v4;
  v7 = sub_100058000(&qword_10077FF18);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_100374E50(uint64_t a1)
{
  v2 = sub_100058000(&qword_10077FF18);
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *sub_100374F2C(void *a1, const void *a2)
{
  v4 = sub_100058000(&qword_10077FF18);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(sub_100058000(&qword_1007800C8) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *sub_100375068(void *a1, void *a2)
{
  v4 = sub_100058000(&qword_10077FF18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 16))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 24))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  v9 = *(*(sub_100058000(&qword_1007800C8) - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *sub_100375218(void *a1, const void *a2)
{
  v4 = sub_100058000(&qword_10077FF18);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(sub_100058000(&qword_1007800C8) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    (*(v5 + 32))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *sub_100375354(void *a1, void *a2)
{
  v4 = sub_100058000(&qword_10077FF18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 32))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 40))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  v9 = *(*(sub_100058000(&qword_1007800C8) - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_100375544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *v4;
  v7 = *a4;
  swift_beginAccess();
  sub_100031E0C(a1, v6 + v7);
  return swift_endAccess();
}

void sub_100375638()
{
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_isInInsetGroupListEnvironment) = 0;
  v1 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_migrationButtonAccessory;
  type metadata accessor for MigrationButtonAccessory(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E24MigrationButtonAccessory_accessoryState;
  v4 = sub_100058000(&qword_10077FF18);
  v5 = *(*(v4 - 8) + 56);
  v5(v2 + v3, 1, 1, v4);
  v6 = (v2 + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E24MigrationButtonAccessory_migrationActionHandler);
  *v6 = 0;
  v6[1] = 0;
  *(v2 + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E24MigrationButtonAccessory____lazy_storage___migrationButton) = 0;
  *(v0 + v1) = v2;
  v7 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_spinnerAccessory;
  type metadata accessor for SpinnerAccessory(0);
  v8 = swift_allocObject();
  v5(v8 + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E16SpinnerAccessory_accessoryState, 1, 1, v4);
  *(v8 + OBJC_IVAR____TtC9RemindersP33_A10A20E84AB2AC9C74D0C6E6C8D7962E16SpinnerAccessory____lazy_storage___spinner) = 0;
  *(v0 + v7) = v8;
  v5(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_outlineDisclosureAccessory, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell____lazy_storage___spinner) = 0;
  v9 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_account;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Account();
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  v11 = objc_allocWithZone(NSUserDefaults);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithSuiteName:v12];

  if (v13)
  {
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 BOOLForKey:v14];
  }

  else
  {
    v15 = 0;
  }

  *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsAccountHeaderCell_isStoreDemoMode) = v15;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003758E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v3 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v3 - 8);
  v75 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v5 - 8);
  v74 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_1007693B0);
  __chkstk_darwin(v7 - 8);
  v78 = &v63 - v8;
  v9 = sub_100058000(&qword_1007693B8);
  __chkstk_darwin(v9 - 8);
  v76 = &v63 - v10;
  v11 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&unk_100780980);
  __chkstk_darwin(v16 - 8);
  v18 = &v63 - v17;
  v19 = sub_100058000(&unk_100775640);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v80 = &v63 - v23;
  v24 = type metadata accessor for TTRPublicTemplateFallbackProperties();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TTRListColors.Color();
  v72 = *(v28 - 8);
  v73 = v28;
  __chkstk_darwin(v28);
  v30 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = OBJC_IVAR____TtC9Reminders36TTRShowPublicTemplateViewModelSource_listRepresentation;
  v31 = *(v2 + OBJC_IVAR____TtC9Reminders36TTRShowPublicTemplateViewModelSource_listRepresentation);
  v79 = v22;
  if (v31)
  {
    v32 = v31;
    v33 = [v32 displayName];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v35;
    v67 = v34;

    type metadata accessor for TTRListColors();
    v81[3] = sub_100003540(0, &qword_10076ABC0);
    v81[4] = &protocol witness table for REMList;
    v81[0] = v32;
    static TTRListColors.color(for:)();
    sub_1000079B4(v81, &unk_100775680);
  }

  else
  {
    v64 = v24;
    swift_getObjectType();
    dispatch thunk of TTRShowPublicTemplateDataModelSourceType.fallbackProperties.getter();
    v36 = TTRPublicTemplateFallbackProperties.listName.getter();
    if (v37)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0;
    }

    v39 = 0xE000000000000000;
    if (v37)
    {
      v39 = v37;
    }

    v66 = v39;
    v67 = v38;
    type metadata accessor for TTRListColors();
    v40 = TTRPublicTemplateFallbackProperties.listColor.getter();
    v65 = v12;
    v41 = v11;
    v42 = v18;
    v43 = v2;
    v44 = v14;
    v45 = v40;
    v22 = v79;
    static TTRListColors.color(for:)();

    v14 = v44;
    v2 = v43;
    v18 = v42;
    v11 = v41;
    v12 = v65;
    (*(v25 + 8))(v27, v64);
  }

  v46 = *(v2 + v70);
  v47 = v80;
  if (v46 && (v48 = [v46 objectID]) != 0)
  {
    *v47 = v48;
    *(v47 + 8) = 0;
    v49 = enum case for TTRListType.list(_:);
    v50 = type metadata accessor for TTRListType();
    v51 = v12;
    v52 = v11;
    v53 = *(v50 - 8);
    (*(v53 + 104))(v80, v49, v50);
    v54 = v50;
    v47 = v80;
    (*(v53 + 56))(v80, 0, 1, v54);
    v11 = v52;
    v12 = v51;
  }

  else
  {
    v55 = type metadata accessor for TTRListType();
    (*(*(v55 - 8) + 56))(v47, 1, 1, v55);
  }

  sub_10000794C(v47, v22, &unk_100775640);
  v70 = v30;
  v65 = TTRListColors.Color.nativeColor.getter();
  v56 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  (*(*(v56 - 8) + 56))(v18, 1, 1, v56);
  v57 = v68;
  TTRRemindersListSectionMenuCapabilities.init()();
  TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
  (*(v69 + 8))(v57, v71);
  (*(v12 + 104))(v14, enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:), v11);
  v58 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  (*(*(v58 - 8) + 56))(v76, 1, 1, v58);
  v59 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v59 - 8) + 56))(v78, 1, 1, v59);
  TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
  TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
  v60 = v77;
  TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();
  sub_1000079B4(v80, &unk_100775640);
  (*(v72 + 8))(v70, v73);
  v61 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  return (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
}

uint64_t sub_100376208@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v3 = v2[5];
  v4 = type metadata accessor for TTRReminderListCompletionBehavior.AlertContents();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = enum case for TTRReminderListCompletionBehavior.disallowed(_:);
  v6 = type metadata accessor for TTRReminderListCompletionBehavior();
  result = (*(*(v6 - 8) + 104))(&a1[v3], v5, v6);
  *a1 = 2;
  a1[v2[6]] = 1;
  a1[v2[7]] = 1;
  a1[v2[8]] = 1;
  a1[v2[9]] = 1;
  a1[v2[10]] = 0;
  a1[v2[11]] = 1;
  a1[v2[12]] = 0;
  a1[v2[13]] = 1;
  return result;
}

uint64_t sub_100376320()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.publicTemplateViewer(_:), v0);
  v5 = TTRUserDefaults.showingLargeAttachments(forType:)();

  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

uint64_t sub_100376430()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.publicTemplateViewer(_:), v0);
  TTRUserDefaults.setShowingLargeAttachments(value:forType:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100376564@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRRemindersListSubtaskDisplayStyle.ResolvedStyle.childItems(_:);
  v3 = type metadata accessor for TTRRemindersListSubtaskDisplayStyle.ResolvedStyle();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = enum case for TTRRemindersListSubtaskDisplayStyle.fixed(_:);
  v5 = type metadata accessor for TTRRemindersListSubtaskDisplayStyle();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

void sub_100376620()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRShowPublicTemplateViewModelSource_listRepresentation);
}

uint64_t sub_100376660()
{
  v0 = sub_10056FD38();

  swift_unknownObjectRelease();
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRShowPublicTemplateViewModelSource_listRepresentation);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowPublicTemplateViewModelSource()
{
  result = qword_1007801E0;
  if (!qword_1007801E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1003767AC()
{
  result = qword_100780758;
  if (!qword_100780758)
  {
    type metadata accessor for TTRShowPublicTemplateViewModelSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780758);
  }

  return result;
}

uint64_t sub_100376804(id a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v109 = a3;
  v115 = a2;
  v6 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v6 - 8);
  v166 = &v106 - v7;
  v168 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v146 = *(v168 - 8);
  __chkstk_darwin(v168);
  v167 = (&v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v172 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v144 = *(v135 - 8);
  __chkstk_darwin(v135);
  v134 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle();
  v143 = *(v133 - 8);
  __chkstk_darwin(v133);
  v132 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&unk_10076B060);
  __chkstk_darwin(v12 - 8);
  v131 = &v106 - v13;
  v165 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v142 = *(v165 - 8);
  __chkstk_darwin(v165);
  v130 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v116 = *(v164 - 8);
  __chkstk_darwin(v164);
  v163 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v162 = &v106 - v17;
  v139 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v127 = *(v139 - 8);
  __chkstk_darwin(v139);
  v138 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v106 = *(v161 - 8);
  __chkstk_darwin(v161);
  v160 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v106 - v21;
  v159 = sub_100058000(&qword_10076E8D8);
  __chkstk_darwin(v159);
  v173 = (&v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v158 = &v106 - v25;
  v157 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v171 = *(v157 - 8);
  __chkstk_darwin(v157);
  v169 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v27 - 8);
  v108 = &v106 - v28;
  v29 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v29 - 8);
  v110 = &v106 - v30;
  v31 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100058000(&qword_100769378);
  __chkstk_darwin(v35 - 8);
  v37 = &v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v106 - v39;
  v111 = v4;
  v170 = a1;
  if (!a1)
  {
    v107 = 0;
    goto LABEL_14;
  }

  v156 = v31;
  v41 = [a1 objectID];
  v42 = OBJC_IVAR____TtC9Reminders36TTRShowPublicTemplateViewModelSource_listRepresentation;
  v43 = *(v4 + OBJC_IVAR____TtC9Reminders36TTRShowPublicTemplateViewModelSource_listRepresentation);
  if (!v43)
  {
    if (v41)
    {
      goto LABEL_8;
    }

LABEL_12:
    v107 = 0;
    goto LABEL_13;
  }

  v44 = [v43 objectID];
  v45 = v44;
  if (!v41)
  {
    if (v44)
    {

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (!v44)
  {
LABEL_8:

LABEL_11:
    v107 = 1;
    goto LABEL_13;
  }

  sub_100003540(0, &qword_10076BA50);
  v46 = static NSObject.== infix(_:_:)();

  v107 = v46 ^ 1;
  a1 = v170;
LABEL_13:
  v4 = v111;
  v47 = *(v111 + v42);
  *(v111 + v42) = a1;

  v31 = v156;
LABEL_14:
  REMRemindersListDataView.SectionsModel.remindersCount.getter();
  sub_10000794C(v40, v37, &qword_100769378);
  v48 = (*(v32 + 48))(v37, 1, v31);
  v141 = v22;
  if (v48 == 1)
  {
    v49 = 0;
    v50 = 0;
  }

  else
  {
    (*(v32 + 32))(v34, v37, v31);
    v49 = REMRemindersListDataView.CountByCompleted.completed.getter();
    v50 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
    (*(v32 + 8))(v34, v31);
  }

  sub_1000079B4(v40, &qword_100769378);
  v51 = v4 + OBJC_IVAR____TtC9Reminders36TTRShowPublicTemplateViewModelSource_remindersCount;
  *v51 = v49;
  *(v51 + 8) = v50;
  *(v51 + 16) = v48 == 1;
  v52 = v110;
  sub_1003758E8(v110);
  v129 = static TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidthOrHiddenForFirstSection.getter();
  v140 = v53;
  v54 = REMRemindersListDataView.SectionsModel.sections.getter();
  v55 = *(v54 + 16);
  if (v55)
  {
    *&v174 = _swiftEmptyArrayStorage;
    sub_1004A22E0(0, v55, 0);
    v56 = v174;
    v156 = *(v54 + 16);
    v57 = 0;
    v153 = type metadata accessor for REMRemindersListDataView.SectionLite();
    v58 = *(v153 - 8);
    v151 = v54 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v150 = v58 + 16;
    v152 = v58;
    v149 = v58 + 32;
    v148 = (v127 + 11);
    v147 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
    v128 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
    v112 = enum case for TTRRemindersListViewModel.SectionID.sectionless(_:);
    v146 += 13;
    v145 = (v142 + 56);
    v114 = enum case for TTRRemindersListViewModel.SectionID.NamedID.remindersInListSection(_:);
    v113 = enum case for TTRRemindersListViewModel.SectionID.named(_:);
    v127 += 12;
    v126 = (v116 + 2);
    v125 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.plain(_:);
    v124 = (v143 + 13);
    v123 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:);
    v122 = (v144 + 13);
    v121 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:);
    v120 = (v172 + 13);
    v119 = enum case for TTRRemindersListViewModel.SectionID.objectID(_:);
    v118 = (v142 + 16);
    v117 = (v142 + 8);
    ++v116;
    v144 = (v106 + 16);
    v143 = (v106 + 8);
    v142 = v171 + 32;
    v59 = v139;
    v60 = v138;
    v61 = v141;
    v155 = v54;
    v154 = v55;
    v62 = v58;
    while (v156 != v57)
    {
      if (v57 >= *(v54 + 16))
      {
        goto LABEL_42;
      }

      v172 = v56;
      v63 = v159;
      v64 = *(v159 + 48);
      v65 = v158;
      v66 = v59;
      v67 = v153;
      (*(v62 + 16))(&v158[v64], v151 + *(v62 + 72) * v57, v153);
      v68 = v173;
      *v173 = v57;
      v69 = v67;
      v59 = v66;
      (*(v62 + 32))(&v68[*(v63 + 48)], &v65[v64], v69);
      REMRemindersListDataView.SectionLite.type.getter();
      v70 = (*v148)(v60, v66);
      if (v70 == v147)
      {
        (*v127)(v60, v66);
        v71 = *v60;

        v72 = v162;
        v129(v57);
        (*v126)(v163, v72, v164);
        v73 = v170;
        if (v170)
        {
          *(&v176 + 1) = sub_100003540(0, &qword_10076ABC0);
          v177 = &protocol witness table for REMList;
          *&v175 = v73;
        }

        else
        {
          v177 = 0;
          v175 = 0u;
          v176 = 0u;
        }

        type metadata accessor for TTRListColors();
        v81 = v73;
        v82 = v131;
        static TTRListColors.color(for:)();
        sub_1000079B4(&v175, &unk_100775680);
        v83 = type metadata accessor for TTRListColors.Color();
        (*(*(v83 - 8) + 56))(v82, 0, 1, v83);
        (*v124)(v132, v125, v133);
        (*v122)(v134, v123, v135);
        (*v120)(v136, v121, v137);
        v84 = v130;
        TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
        v86 = v167;
        v85 = v168;
        *v167 = v71;
        (*v146)(v86, v119, v85);
        v87 = v165;
        v88 = v166;
        (*v118)(v166, v84, v165);
        (*v145)(v88, 0, 1, v87);
        v89 = v141;
        TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
        v90 = v84;
        v61 = v89;
        (*v117)(v90, v87);
        (*v116)(v162, v164);
        v59 = v139;
        v60 = v138;
      }

      else
      {
        if (v70 != v128)
        {
          goto LABEL_43;
        }

        if (v170 && (v74 = [v170 objectID]) != 0)
        {
          v76 = v167;
          v75 = v168;
          *v167 = v74;
          v77 = v74;
          (*v146)(v76, v112, v75);
          (*v145)(v166, 1, 1, v165);
          v78 = v77;
          REMRemindersListDataView.SectionsModel.sections.getter();

          v61 = v141;
          TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
        }

        else
        {
          v79 = type metadata accessor for TTRRemindersListViewModel.SectionID.NamedID();
          v80 = v167;
          (*(*(v79 - 8) + 104))(v167, v114, v79);
          (*v146)(v80, v113, v168);
          (*v145)(v166, 1, 1, v165);
          TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
        }
      }

      v91 = v161;
      (*v144)(v160, v61, v161);
      v92 = v173;
      REMRemindersListDataView.SectionLite.reminders.getter();
      v93 = v169;
      TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
      (*v143)(v61, v91);
      sub_1000079B4(v92, &qword_10076E8D8);
      v56 = v172;
      *&v174 = v172;
      v95 = v172[2];
      v94 = v172[3];
      if (v95 >= v94 >> 1)
      {
        sub_1004A22E0(v94 > 1, v95 + 1, 1);
        v93 = v169;
        v56 = v174;
      }

      ++v57;
      v56[2] = v95 + 1;
      (*(v171 + 32))(v56 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v95, v93, v157);
      v54 = v155;
      if (v154 == v57)
      {

        v52 = v110;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {

    v56 = _swiftEmptyArrayStorage;
LABEL_36:
    v96 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
    v97 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
    v98 = type metadata accessor for TTRRemindersListViewModel.Item();
    v99 = v108;
    (*(*(v98 - 8) + 56))(v108, 1, 1, v98);
    *(&v176 + 1) = v96;
    v177 = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
    *&v175 = v97;
    sub_10000B0D8(&v175, &v174);
    v100 = swift_allocObject();
    *(v100 + 16) = v56;
    sub_100005FD0(&v174, v100 + 24);
    v101 = v111;
    *(v100 + 64) = v111;

    sub_100586238(1, v52, sub_100070528, v100, v109, 0, v99);

    sub_1000079B4(v99, &qword_100772140);

    sub_100004758(&v175);
    if (v107)
    {
      v102 = v101 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v103 = *(v102 + 8);
        ObjectType = swift_getObjectType();
        (*(v103 + 88))(1, ObjectType, v103);
        swift_unknownObjectRelease();
      }

      return sub_1000079B4(v52, &unk_10078A380);
    }

    else
    {
      sub_1000079B4(v52, &unk_10078A380);
    }
  }

  return result;
}

uint64_t sub_100377D74()
{
  v1 = v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 120))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100377DF0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100780760);
  v1 = sub_100003E30(v0, qword_100780760);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100377EF8()
{
  v1 = [objc_allocWithZone(UITableView) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 1.0, 8.0}];
  [v1 setTableHeaderView:v2];

  v3 = *&v0[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_tableView];
  *&v0[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_tableView] = v1;
  v4 = v1;

  [v0 setView:v4];
}

id sub_100378024()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for TTRITableDataController.BatchUpdatesApplication();
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  __chkstk_darwin(v2);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TTRTemplateSavingViewModel();
  v52 = *(v47 - 8);
  __chkstk_darwin(v47);
  v51 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for TTRTableViewAnimations();
  v6 = *(v50 - 8);
  v7 = __chkstk_darwin(v50);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56.receiver = v0;
  v56.super_class = ObjectType;
  objc_msgSendSuper2(&v56, "viewDidLoad", v7);
  v10 = [v0 navigationItem];
  v11._object = 0x80000001006784F0;
  v12._countAndFlagsBits = 0xD000000000000016;
  v12._object = 0x8000000100683410;
  v11._countAndFlagsBits = 0xD000000000000010;
  TTRLocalizedString(_:comment:)(v11, v12);
  v13 = String._bridgeToObjectiveC()();

  [v10 setTitle:v13];

  v14 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v0 action:"didTapCancel:"];
  v15 = [v0 navigationItem];
  v45 = v14;
  [v15 setLeftBarButtonItem:?];

  sub_100003540(0, &qword_10076B800);
  static TTRLocalizableStrings.Common.saveButton.getter();
  v54 = ObjectType;
  v53 = v0;
  v16 = v0;
  v17 = UIBarButtonItem.init(doneButtonWithCustomTitle:target:action:)();
  v18 = [v16 navigationItem];
  v19 = v17;
  [v18 setRightBarButtonItem:v19];

  v20 = *&v16[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_cancelButton];
  *&v16[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_cancelButton] = v14;

  v21 = *&v16[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_commitButton];
  *&v16[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_commitButton] = v17;

  sub_100058000(&qword_10076B780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D410;
  *(inited + 32) = sub_100379580(&OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___badgeSection, sub_10037988C);
  result = sub_10037868C();
  *(inited + 40) = result;
  v24 = OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_tableView;
  v25 = *&v16[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_tableView];
  if (!v25)
  {
    __break(1u);
    goto LABEL_9;
  }

  v54 = sub_100003540(0, &qword_100771B60);
  v55 = &protocol witness table for UITableView;
  v53 = v25;
  v26 = v25;
  sub_1003E09F0(inited);
  (*(v6 + 104))(v9, enum case for TTRTableViewAnimations.middle(_:), v50);
  v27 = objc_allocWithZone(type metadata accessor for TTRITableDataController());
  v28 = TTRITableDataController.init(tableView:sections:rowInsertionAnimationType:collapseSectionIfItemsAreHidden:)();
  TTRITableDataController.customSectionSpacing.setter();
  v29 = OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_tableDataController;
  v30 = *&v16[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_tableDataController];
  *&v16[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_tableDataController] = v28;
  v31 = v28;

  result = *&v16[v24];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = [result setDataSource:v31];
  v32 = *&v16[v24];
  v33 = v49;
  if (!v32)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  swift_setDeallocating();
  v34 = v32;
  swift_arrayDestroy();
  [v34 setDelegate:v31];

  v35 = *&v16[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_presenter];
  v36 = OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_viewModel;
  swift_beginAccess();
  v37 = v35 + v36;
  v38 = v51;
  v39 = v47;
  (*(v52 + 16))(v51, v37, v47);
  v40 = v46;
  v41 = v48;
  v42 = (*(v33 + 104))(v46, enum case for TTRITableDataController.BatchUpdatesApplication.reload(_:), v48);
  if (*&v16[v29])
  {
    __chkstk_darwin(v42);
    *(&v45 - 2) = v16;
    *(&v45 - 1) = v38;
    v44 = v43;
    TTRITableDataController.performBatchUpdates(by:updates:)();

    v38 = v51;
    (*(v33 + 8))(v40, v41);
  }

  else
  {
    (*(v33 + 8))(v40, v41);
  }

  return (*(v52 + 8))(v38, v39);
}

uint64_t sub_10037868C()
{
  v1 = sub_100058000(&qword_100777BC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___templateConfigurationSection;
  if (*(v0 + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___templateConfigurationSection))
  {
    v8 = *(v0 + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___templateConfigurationSection);
  }

  else
  {
    v9 = type metadata accessor for TTRITableSectionHeaderFooter();
    v10 = *(*(v9 - 8) + 56);
    v10(v6, 1, 1, v9);
    v10(v3, 1, 1, v9);
    sub_100058000(&qword_1007768B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10062D400;
    v12 = v0;
    v13 = sub_100379580(&OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___includeCompletedCell, sub_100379FE8);
    v14 = sub_1002DE894(&qword_100777BD0, &qword_100776900);
    *(v11 + 32) = v13;
    *(v11 + 40) = v14;
    type metadata accessor for TTRITableSection();
    swift_allocObject();
    v8 = TTRITableSection.init(header:footer:items:)();
    *(v12 + v7) = v8;
  }

  return v8;
}

id sub_1003788B4(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for TTRTemplateSavingViewModel();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  result = objc_msgSendSuper2(&v18, "viewWillAppear:", a1 & 1, v6);
  v10 = *&v1[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_tableView];
  if (v10)
  {
    v17[3] = sub_100003540(0, &qword_100771B60);
    v17[4] = &protocol witness table for UITableView;
    v17[0] = v10;
    v11 = v10;
    UIViewController.deselectRowsAlongsideTransition(for:animated:)();
    sub_100004758(v17);
    sub_10037ACE0();
    TTRKeyboardAvoidance<>.startAvoidingKeyboard()();
    v12 = *&v1[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_presenter];
    v13 = OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_viewModel;
    swift_beginAccess();
    (*(v5 + 16))(v8, v12 + v13, v4);
    v14 = *&v1[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_commitButton];
    if (v14)
    {
      v15 = v14;
      [v15 setEnabled:TTRTemplateSavingViewModel.allowsCommit.getter() & 1];
    }

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100378C20()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v9, "viewWillLayoutSubviews");
  if (*(v0 + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_needsTableCellResize) == 1)
  {
    *(v0 + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_needsTableCellResize) = 0;
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_10037ACB4;
    *(v4 + 24) = v3;
    v8[4] = sub_100026410;
    v8[5] = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_100026440;
    v8[3] = &unk_100723C58;
    v5 = _Block_copy(v8);
    v6 = v0;

    [v2 performWithoutAnimation:v5];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100378DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100777BC0);
  __chkstk_darwin(v4 - 8);
  v56 = &v55 - v5;
  v6 = type metadata accessor for UIListContentConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v55 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v55 - v10;
  v11 = type metadata accessor for TTRListColors.Color();
  v66 = *(v11 - 8);
  v67 = v11;
  __chkstk_darwin(v11);
  v65 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRListDetailViewModelBadge();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRListDetailBadgeViewModel();
  v63 = *(v17 - 8);
  v64 = v17;
  __chkstk_darwin(v17);
  v62 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v55 - v20;
  v22 = type metadata accessor for TTRIListDetailBadgeCellContentState(0);
  __chkstk_darwin(v22);
  v24 = (&v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = a1;
  sub_10037951C();
  v61 = TTRITableCell.content.getter();

  v69 = a2;
  TTRTemplateSavingViewModel.badge.getter();
  TTRListDetailBadgeViewModel.badge.getter();
  v25 = (*(v14 + 88))(v16, v13);
  v58 = v7;
  v59 = v6;
  if (v25 == enum case for TTRListDetailViewModelBadge.emblem(_:))
  {
    (*(v14 + 96))(v16, v13);
    v26 = *v16;
    v27 = REMListBadgeEmblem.image.getter();

    v28 = v27;
    v60 = 0;
    v29 = 0;
  }

  else
  {
    if (v25 != enum case for TTRListDetailViewModelBadge.emoji(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v14 + 96))(v16, v13);
    v27 = 0;
    v29 = *(v16 + 1);
    v60 = *v16;
  }

  TTRListDetailBadgeViewModel.badgeColor.getter();
  v30 = TTRListDetailBadgeViewModel.badgeName.getter();
  v32 = v31;
  TTRListDetailBadgeViewModel.badgeDisplayStyle.getter();

  v33 = *(v63 + 8);
  v34 = v21;
  v35 = v64;
  v33(v34, v64);
  v36 = v60;
  v37 = v61;
  *v24 = v27;
  v24[1] = v36;
  v24[2] = v29;
  v38 = (v24 + *(v22 + 28));
  *v38 = v30;
  v38[1] = v32;
  TTRITableCellContent.state.setter();

  sub_100379580(&OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___nameCell, sub_100379CC4);
  v39 = TTRITableCell.content.getter();

  v40._countAndFlagsBits = TTRTemplateSavingViewModel.name.getter();
  TTRITextCellContent.setTextIfNotEditing(_:)(v40);

  v41 = TTRITableCell.content.getter();

  v42 = v62;
  TTRTemplateSavingViewModel.badge.getter();
  v43 = v65;
  TTRListDetailBadgeViewModel.badgeColor.getter();
  v33(v42, v35);
  TTRListColors.Color.nativeColor.getter();
  (*(v66 + 8))(v43, v67);
  v44 = TTRITableCellContent.state.modify();
  TTRITextCellContentState.textColor.setter();
  v44(v70, 0);

  v45 = TTRTemplateSavingViewModel.completedReminderCount.getter();
  LOBYTE(v41) = v46;
  sub_10037868C();
  if ((v41 & 1) != 0 || v45 < 1)
  {
    TTRITableSection.isHidden.setter();
  }

  else
  {
    TTRITableSection.isHidden.setter();

    v47 = v57;
    static UIListContentConfiguration.groupedFooter()();
    static TTRLocalizableStrings.Templates.includeCompletedRemindersDescription(completedCount:)();
    UIListContentConfiguration.attributedText.setter();
    v49 = v58;
    v48 = v59;
    (*(v58 + 16))(v55, v47, v59);

    v50 = v56;
    TTRITableSectionHeaderFooter.init(listContentConfiguration:height:)();
    v51 = type metadata accessor for TTRITableSectionHeaderFooter();
    (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
    TTRITableSection.footer.setter();

    sub_100379580(&OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___includeCompletedCell, sub_100379FE8);
    v52 = TTRITableCell.content.getter();

    TTRTemplateSavingViewModel.includesCompletedReminders.getter();
    v53 = TTRITableCellContent.state.modify();
    TTRIToggleCellContentState.isOn.setter();
    v53(v70, 0);

    return (*(v49 + 8))(v47, v48);
  }
}

uint64_t sub_10037951C()
{
  v1 = OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___badgeCell;
  if (*(v0 + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___badgeCell))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___badgeCell);
  }

  else
  {
    v2 = sub_100379A68();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100379580(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

void sub_100379698()
{
  UIViewController.endFirstResponderEditing()();
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_presenter);
  if (qword_100767190 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10077BAC0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  swift_getObjectType();
  dispatch thunk of TTRTemplateSavingInteractorType.save()();
  v3 = *sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_router), *(v1 + OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_router + 24));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v5 = [Strong presentingViewController];
    if (v5)
    {
      v6 = v5;
      if (*(v3 + 32))
      {
        sub_1000665C0();
      }

      [v6 dismissViewControllerAnimated:1 completion:0];
      if (*(v3 + 32))
      {
        sub_100066F30();
      }
    }
  }
}

uint64_t sub_10037988C()
{
  v0 = sub_100058000(&qword_100777BC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v14 - v4;
  v6 = type metadata accessor for TTRITableSectionHeaderFooter();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  static TTRLocalizableStrings.Templates.savingDescription.getter();
  TTRITableSectionHeaderFooter.init(title:height:)();
  v7(v2, 0, 1, v6);
  sub_100058000(&qword_1007768B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10062D3F0;
  v9 = sub_10037951C();
  v10 = sub_1002DE894(&unk_100780820, &qword_10077A0F8);
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  v11 = sub_100379580(&OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___nameCell, sub_100379CC4);
  v12 = sub_1002DE894(&unk_10077A110, &unk_100780800);
  *(v8 + 48) = v11;
  *(v8 + 56) = v12;
  type metadata accessor for TTRITableSection();
  swift_allocObject();
  return TTRITableSection.init(header:footer:items:)();
}

uint64_t sub_100379A68()
{
  v0 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRIListDetailBadgeCellContentState(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v20 - v9);
  v11 = REMListBadgeEmblem.image.getter();
  type metadata accessor for TTRListColors();
  static TTRListColors.defaultColor.getter();
  v12 = *(v5 + 40);
  v13 = enum case for TTRListDetailViewModelBadgeDisplayStyle.list(_:);
  v14 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  (*(*(v14 - 8) + 104))(v10 + v12, v13, v14);
  v10[1] = 0;
  v10[2] = 0;
  *v10 = v11;
  v15 = (v10 + *(v5 + 36));
  v16 = type metadata accessor for TTRIListDetailBadgeCellContent(0);
  *v15 = 0;
  v15[1] = 0;
  v17 = objc_allocWithZone(v16);
  v18 = &v17[qword_100773438];
  *v18 = 0;
  *(v18 + 1) = 0;
  sub_10037A85C(v10, v7);
  (*(v1 + 104))(v3, enum case for TTRITableCellContentPrototypeCellView.cellClass(_:), v0);
  TTRITableCellContent.init(state:prototypeCellView:reuseIdentifier:)();
  sub_1001DFC30(v10);
  sub_100058000(&qword_10077A0F8);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

uint64_t sub_100379CC4()
{
  v0 = type metadata accessor for TTRITextCellContentStateChangeEvent();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for TTRITextCellContentState();
  __chkstk_darwin(v1 - 8);
  [objc_allocWithZone(NSAttributedString) init];
  static TTRLocalizableStrings.Templates.namePlaceholderText.getter();
  TTRITextCellContentState.init(attributedText:placeholder:)();
  static TTRITextCellContentStateChangeEvent.editingChanged.getter();
  v2 = objc_allocWithZone(sub_100058000(&qword_10077A0F0));
  TTRITextCellContent.init(textAutocapitalizationType:keyboardType:state:stateChangeEvent:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRITextCellContent.stateChangeBlock.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRITextCellContent.didEndEditingBlock.setter();

  sub_100058000(&unk_100780800);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

uint64_t sub_100379EC4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_unknownObjectRetain();

    v2._object = 0x8000000100679110;
    v2._countAndFlagsBits = 0xD000000000000019;
    TTRMainActorDeferredAction.scheduleNextRunLoop(reason:)(v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100379F58()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_unknownObjectRetain();

    v2 = TTRITextCellContentState.text.getter();
    sub_1002FA524(v2, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100379FE8()
{
  v0 = sub_100058000(&qword_100776880);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for TTRIToggleCellContentState();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  static TTRLocalizableStrings.Templates.includeCompletedReminders.getter();
  TTRIToggleCellContentState.init(icon:title:subtitle:ttriAccessibilitySubtitle:isOn:isSelectable:isControlHidden:isSeparatorHidden:ttriAccessibilitySimulatesExpandAndCollapse:ttriAccessibilityIsInSimulatedExpandedState:)();
  v5 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent());
  TTRIToggleCellContent.init(state:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRIToggleCellContent.stateChangeBlock.setter();

  sub_100058000(&qword_100776900);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

uint64_t sub_10037A1C4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_unknownObjectRetain();
    v2 = TTRIToggleCellContentState.isOn.getter();
    sub_1002FA774(v2 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10037A37C()
{
  v1 = v0;
  v2 = type metadata accessor for TTRITableDataController.BatchUpdatesApplication();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRTemplateSavingViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v24 - v12;
  result = [v1 isViewLoaded];
  if (result)
  {
    v15 = *&v1[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_presenter];
    v16 = OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_viewModel;
    swift_beginAccess();
    v27 = v7;
    v28 = v16;
    v26 = *(v7 + 16);
    v26(v13, v15 + v16, v6);
    *v5 = 1;
    v17 = (*(v3 + 104))(v5, enum case for TTRITableDataController.BatchUpdatesApplication.incremental(_:), v2);
    if (*&v1[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_tableDataController])
    {
      __chkstk_darwin(v17);
      v25 = v2;
      *(&v24 - 2) = v1;
      *(&v24 - 1) = v13;
      v19 = v18;
      v24 = v15;
      v20 = v19;
      TTRITableDataController.performBatchUpdates(by:updates:)();
      v2 = v25;

      v15 = v24;
    }

    (*(v3 + 8))(v5, v2);
    v21 = *(v27 + 8);
    v21(v13, v6);
    v26(v9, v15 + v28, v6);
    v22 = *&v1[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_commitButton];
    if (v22)
    {
      v23 = v22;
      [v23 setEnabled:TTRTemplateSavingViewModel.allowsCommit.getter() & 1];
    }

    return (v21)(v9, v6);
  }

  return result;
}

uint64_t sub_10037A688()
{
  sub_100379580(&OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___nameCell, sub_100379CC4);
  v0 = TTRITableCell.content.getter();

  v1 = TTRITextCellContent.isEditing.getter();

  return v1 & 1;
}

uint64_t sub_10037A6EC()
{
  sub_100379580(&OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___nameCell, sub_100379CC4);
  v0 = TTRITableCell.content.getter();

  v1 = TTRITextCellContent.currentText.getter();
  v3 = v2;

  if (v3)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

id sub_10037A768()
{
  result = *(v0 + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_tableView);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10037A85C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIListDetailBadgeCellContentState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10037A8C0(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRListBadgeView.ShadowParams();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100773560);
  __chkstk_darwin(v6 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  sub_10037951C();
  v12 = TTRITableCell.content.getter();

  v13 = TTRITableCellContent.assignedCell.getter();

  v14 = 0uLL;
  top = 0.0;
  if (v13)
  {
    v16 = *&v13[OBJC_IVAR____TtC9Reminders32TTRIListDetailBadgeCellTableCell_badgeView];

    v17 = v16;
    v18 = [v17 superview];
    if (v18)
    {
      dispatch thunk of TTRListBadgeView.shadowParams.getter();
      sub_10037AC44(v11, v8);
      if ((*(v3 + 48))(v8, 1, v2) == 1)
      {
        sub_1000079B4(v11, &qword_100773560);
        top = UIEdgeInsetsZero.top;
        left = UIEdgeInsetsZero.left;
        bottom = UIEdgeInsetsZero.bottom;
        right = UIEdgeInsetsZero.right;
      }

      else
      {
        (*(v3 + 32))(v5, v8, v2);
        TTRListBadgeView.ShadowParams.radius.getter();
        v24 = v23 + 4.0;
        TTRListBadgeView.ShadowParams.offset.getter();
        v26 = v25;
        v28 = v27;
        (*(v3 + 8))(v5, v2);
        sub_1000079B4(v11, &qword_100773560);
        top = v24 - v28;
        left = v24 - v26;
        bottom = v24 + v28;
        right = v24 + v26;
      }

      UIEdgeInsetsSubtract();
      v44 = v30;
      v45 = v29;
      [v17 frame];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;

      *&v14 = sub_100068328(v34, v36, v38, v40, v45, v44);
      *(&v14 + 1) = v41;
      *(&v22 + 1) = v42;
    }

    else
    {

      left = 0.0;
      bottom = 0.0;
      right = 0.0;
      v22 = 0uLL;
      v14 = 0uLL;
    }
  }

  else
  {
    v18 = 0;
    left = 0.0;
    bottom = 0.0;
    right = 0.0;
    v22 = 0uLL;
  }

  *a1 = v18;
  *(a1 + 8) = v14;
  *(a1 + 24) = v22;
  *(a1 + 40) = top;
  *(a1 + 48) = left;
  *(a1 + 56) = bottom;
  *(a1 + 64) = right;
}

uint64_t sub_10037AC44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100773560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10037ACB4()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_tableView);
  if (result)
  {
    return [result performBatchUpdates:0 completion:0];
  }

  __break(1u);
  return result;
}

unint64_t sub_10037ACE0()
{
  result = qword_100780810;
  if (!qword_100780810)
  {
    type metadata accessor for TTRITemplateSavingViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780810);
  }

  return result;
}

void sub_10037AD34()
{
  *(v0 + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_tableView) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_cancelButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_commitButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_tableDataController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_needsTableCellResize) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___badgeSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___badgeCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___nameCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___templateConfigurationSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___includeCompletedCell) = 0;
  if (qword_100767220 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100780760);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("init(coder:) has not been implemented", 37, 2);
  __break(1u);
}

uint64_t sub_10037AE44()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100780830);
  v1 = sub_100003E30(v0, qword_100780830);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10037AF34(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
  swift_beginAccess();
  (*(v5 + 24))(&v2[v8], a1, v4);
  swift_endAccess();
  (*(v5 + 16))(v7, &v2[v8], v4);
  LOBYTE(v8) = TTRIShowRemindersDeferredItemUpdates.isEmpty.getter();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v8)
  {
    return (v9)(a1, v4);
  }

  result = [v2 view];
  if (result)
  {
    v11 = result;
    [result setNeedsLayout];

    return (v9)(a1, v4);
  }

  __break(1u);
  return result;
}

void *sub_10037B140()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v7, "keyCommands");
  if (v1)
  {
    v2 = v1;
    sub_100003540(0, &unk_10076BAB0);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_100003540(0, &unk_10076BAB0);
  v4 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_100058000(&qword_10076B780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D420;
  *(inited + 32) = v4;
  sub_100081A04(inited);
  return v3;
}

id sub_10037B26C()
{
  v1 = v0;
  v49.receiver = v0;
  v49.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v49, "viewDidLoad");
  sub_10037B998();
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = result;
  v4 = &v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
  result = [*&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController] view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  [v3 addSubview:result];

  [*v4 didMoveToParentViewController:v1];
  v6 = sub_10037BD64();
  if (v6)
  {
    v7 = v6;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    result = [v1 view];
    if (result)
    {
      v8 = result;
      [result addSubview:v7];

      v9 = [v7 bottomAnchor];
      result = [v1 view];
      if (result)
      {
        v10 = result;
        v11 = [result safeAreaLayoutGuide];

        v12 = [v11 bottomAnchor];
        v13 = [v9 constraintEqualToAnchor:v12];

        sub_100058000(&qword_10076B780);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1006322B0;
        v15 = [v7 leadingAnchor];
        result = [v1 view];
        if (result)
        {
          v16 = result;
          v17 = [result leadingAnchor];

          v18 = [v15 constraintEqualToAnchor:v17];
          *(v14 + 32) = v18;
          v19 = [v7 trailingAnchor];

          result = [v1 view];
          if (result)
          {
            v20 = result;
            v21 = objc_opt_self();
            v22 = [v20 trailingAnchor];

            v23 = [v19 constraintEqualToAnchor:v22];
            *(v14 + 40) = v23;
            *(v14 + 48) = v13;
            sub_100003540(0, &qword_10076BAD0);
            v24 = v13;
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v21 activateConstraints:isa];

            v26 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarBottomConstraint];
            *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarBottomConstraint] = v24;

            goto LABEL_9;
          }

LABEL_21:
          __break(1u);
          return result;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  type metadata accessor for TTRIRemindersListToolbarController();
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v27 + 32) = 1;
  *(v27 + 40) = &_swiftEmptyDictionarySingleton;
  *(v27 + 48) = 0;
  *(v27 + 56) = -258;
  *(v27 + 64) = 0u;
  *(v27 + 80) = 0u;
  *(v27 + 24) = &off_100723E20;
  swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarController] = v27;

  v28 = &v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v29 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
  v30 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
  sub_10000C36C(&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v29);
  (*(v30 + 504))(v29, v30);
  v31 = [v1 navigationItem];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100110BAC(v31, v1);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  v32 = [v1 navigationItem];
  [v32 setLargeTitleDisplayMode:1];

  [v1 setExtendedLayoutIncludesOpaqueBars:1];
  type metadata accessor for TTRICurrentTextInputModeObserver();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_currentTextInputModeObserver] = TTRICurrentTextInputModeObserver.init()();

  v33 = *(v28 + 3);
  v34 = *(v28 + 4);
  sub_10000C36C(v28, v33);
  v35 = *(v34 + 360);

  v35(v36, &protocol witness table for TTRICurrentTextInputModeObserver, v33, v34);

  sub_10037BE04();
  sub_10037C41C();
  sub_10037CFB0();
  sub_10037D260();
  sub_10037D5CC();
  v37 = *v4;
  v38 = *(v4 + 1);
  ObjectType = swift_getObjectType();
  v40 = *(v38 + 112);
  v41 = v37;
  v40(v1, ObjectType, v38);

  v42 = UIViewController.effectiveNavigationBar.getter();
  if (v42)
  {
    v43 = v42;
    [v42 setNeedsLayout];
  }

  v44 = UIViewController.effectiveNavigationControllerForBars.getter();
  if (v44)
  {
    v45 = v44;
    v46 = [v44 viewIfLoaded];

    [v46 setNeedsLayout];
  }

  sub_10037DC0C(1);
  sub_100058000(&unk_10076BD70);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_10062D3F0;
  *(v47 + 32) = type metadata accessor for UITraitAccessibilityContrast();
  *(v47 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  *(v47 + 48) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v47 + 56) = &protocol witness table for UITraitUserInterfaceStyle;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_10062D400;
  *(v48 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v48 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();
}

void sub_10037B998()
{
  v1 = v0;
  v41 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v2 = *(v41 - 8);
  __chkstk_darwin(v41);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = &v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
  v16 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
  v17 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8];
  ObjectType = swift_getObjectType();
  *v42 = v8;
  *&v42[1] = v10;
  *&v42[2] = v12;
  *&v42[3] = v14;
  v43 = 0;
  v19 = *(v17 + 16);
  v20 = v16;
  v19(v42, ObjectType, v17);

  [v1 addChildViewController:*v15];
  v21 = [*v15 view];
  if (!v21)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v22 = v21;
  [v21 frame];
  v45.origin.x = v8;
  v45.origin.y = v10;
  v45.size.width = v12;
  v45.size.height = v14;
  if (!CGRectEqualToRect(v44, v45))
  {
    if (qword_100767228 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100003E30(v23, qword_100780830);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "TTRIShowRemindersViewController: contentView is not sized to initialFrameForLoadingView; may have perf/correctness issues.", v26, 2u);
    }

    [v22 setFrame:{v8, v10, v12, v14}];
  }

  [v22 setAutoresizingMask:18];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:1];
  v27 = *v15;
  [v27 setEditing:objc_msgSend(v1 animated:{"isEditing"), 0}];

  sub_10038AE90();
  v28 = *v15;
  v29 = *(v15 + 1);
  v30 = swift_getObjectType();
  v31 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
  swift_beginAccess();
  v32 = v41;
  (*(v2 + 16))(v4, &v1[v31], v41);
  v33 = *(v29 + 136);
  v34 = v28;
  v33(v4, v30, v29);

  (*(v2 + 8))(v4, v32);
  v35 = *v15;
  v36 = *(v15 + 1);
  v37 = swift_getObjectType();
  v38 = *(v36 + 104);
  v39 = v35;
  v38(v37, v36);
}

id sub_10037BD64()
{
  v1 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController____lazy_storage___toolbar;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController____lazy_storage___toolbar);
  v3 = v2;
  if (v2 == 1)
  {
    if (static REMFeatureFlags.isSolariumEnabled.getter())
    {
      v3 = 0;
    }

    else
    {
      v3 = [objc_allocWithZone(UIToolbar) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    }

    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1003904D8(v4);
  }

  sub_1003904E8(v2);
  return v3;
}

void sub_10037BE04()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 isViewLoaded])
  {
    v6 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v1[v6], v2);
    v7 = TTRRemindersListViewModel.ListInfo.color.getter();
    (*(v3 + 8))(v5, v2);
    v8 = [v1 traitCollection];
    v9 = [v8 accessibilityContrast];

    v10 = &v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_lastSetLargeTitleColor];
    v11 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_lastSetLargeTitleColor];
    if (v11)
    {
      sub_100003540(0, &qword_100772610);
      v12 = v11;
      v13 = v7;
      v14 = static NSObject.== infix(_:_:)();

      v15 = *v10;
      if ((v14 & 1) != 0 && v15 && (v9 == 1) == v10[8])
      {
LABEL_12:

        return;
      }
    }

    else
    {
      v15 = 0;
    }

    *v10 = v7;
    v10[8] = v9 == 1;
    v37 = v7;

    v16 = [objc_allocWithZone(UINavigationBarAppearance) init];
    [v16 configureWithDefaultBackground];
    sub_100058000(&unk_100776BD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = NSFontAttributeName;
    v18 = sub_100003540(0, &qword_100771DF0);
    v19 = NSFontAttributeName;
    v20 = static UIFont.roundedNavigationTitleFont.getter();
    *(inited + 64) = v18;
    *(inited + 40) = v20;
    sub_100460A28(inited);
    swift_setDeallocating();
    sub_1000079B4(inited + 32, &unk_100776BE0);
    type metadata accessor for Key(0);
    sub_1003912B4(&qword_100778A60, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v16 setTitleTextAttributes:isa];

    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_10062D3F0;
    *(v22 + 32) = v19;
    v23 = v37;
    *(v22 + 40) = static UIFont.roundedLargeNavigationTitleFont.getter();
    *(v22 + 64) = v18;
    *(v22 + 72) = NSForegroundColorAttributeName;
    v24 = NSForegroundColorAttributeName;
    v25 = [v1 traitCollection];
    v26 = UIColor.accessibilityAdjustedForTraitCollection(_:)(v25).super.isa;

    *(v22 + 104) = sub_100003540(0, &qword_100772610);
    *(v22 + 80) = v26;
    sub_100460A28(v22);
    swift_setDeallocating();
    sub_100058000(&unk_100776BE0);
    swift_arrayDestroy();
    v27 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v16 setLargeTitleTextAttributes:v27];

    v28 = [v1 navigationItem];
    [v28 setStandardAppearance:v16];

    v29 = [v1 navigationItem];
    v30 = [v29 scrollEdgeAppearance];

    if (v30)
    {

      v31 = [v30 copy];
      v32 = [v16 titleTextAttributes];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v31 setTitleTextAttributes:v33];

      v34 = [v16 largeTitleTextAttributes];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v31 setLargeTitleTextAttributes:v35];

      v13 = v31;
    }

    else
    {
      v13 = v16;
      [v13 configureWithTransparentBackground];
    }

    v36 = [v1 navigationItem];
    [v36 setScrollEdgeAppearance:v13];

    goto LABEL_12;
  }
}

id sub_10037C41C()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  v98 = *(v2 - 8);
  v99 = v2;
  __chkstk_darwin(v2);
  v96 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
  __chkstk_darwin(v4);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_100780980);
  __chkstk_darwin(v7 - 8);
  v9 = &v85 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v100 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v97 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v102 = &v85 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v85 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v85 - v19;
  __chkstk_darwin(v18);
  v22 = &v85 - v21;
  v23 = sub_100058000(&qword_100769980);
  __chkstk_darwin(v23 - 8);
  v25 = &v85 - v24;
  v26 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration(0);
  __chkstk_darwin(v26);
  v103 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v1;
  result = [v1 isViewLoaded];
  if (result)
  {
    v101 = v25;
    v92 = v26;
    v89 = v4;
    v93 = v6;
    v29 = *&v104[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v30 = *&v104[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    v95 = &v104[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
    sub_10000C36C(&v104[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v29);
    (*(v30 + 296))(v105, v29, v30);
    sub_10000C36C(v105, v106);
    if (dispatch thunk of TTRRemindersListEditingState.isEditingTable.getter())
    {
      v31 = sub_100058000(&qword_100780990);
      v32 = v103;
      (*(*(v31 - 8) + 56))(v103, 1, 1, v31);
      v33 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentLayout;
      v34 = v104;
      swift_beginAccess();
      v35 = *(v92 + 20);
      v36 = type metadata accessor for TTRRemindersListLayout();
      (*(*(v36 - 8) + 16))(v32 + v35, &v34[v33], v36);
    }

    else
    {
      v88 = v17;
      v37 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
      v38 = v104;
      swift_beginAccess();
      v39 = v100;
      v40 = *(v100 + 16);
      v94 = v100 + 16;
      v40(v22, &v38[v37], v10);
      TTRRemindersListViewModel.ListInfo.sharingInfo.getter();
      v100 = *(v39 + 8);
      (v100)(v22, v10);
      v41 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
      LODWORD(v38) = (*(*(v41 - 8) + 48))(v9, 1, v41);
      sub_1000079B4(v9, &unk_100780980);
      v91 = v37;
      v90 = v40;
      if (v38 == 1)
      {
        v42 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
        (*(*(v42 - 8) + 56))(v101, 1, 1, v42);
      }

      else
      {
        v43 = v104;
        v40(v20, &v104[v37], v10);
        LODWORD(v87) = TTRRemindersListViewModel.ListInfo.isShared.getter();
        v44 = v100;
        (v100)(v20, v10);
        v45 = v88;
        v40(v88, &v43[v37], v10);
        v46 = v37;
        v47 = TTRRemindersListViewModel.ListInfo.canBeShared.getter();
        v44(v45, v10);
        v48 = &v43[v46];
        v49 = v102;
        v40(v102, v48, v10);
        v50 = TTRRemindersListViewModel.ListInfo.isSharedCalDAV.getter();
        v44(v49, v10);
        v51 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_swHighlightToShowInNavBar;
        swift_beginAccess();
        v52 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo.ListSharingInfo(0);
        v53 = v101;
        sub_10000794C(&v43[v51], &v101[*(v52 + 28)], &qword_100775700);
        *v53 = v87 & 1;
        v53[1] = v47 & 1;
        v53[2] = v50 & 1;
        (*(*(v52 - 8) + 56))(v53, 0, 1, v52);
      }

      v54 = [objc_opt_self() daemonUserDefaults];
      v55 = [v54 timeZoneOverrideEnabled];

      v56 = 0xE000000000000000;
      if (!v55)
      {
        v56 = 0;
      }

      v87 = v56;
      v57 = *(v95 + 3);
      v58 = *(v95 + 4);
      sub_10000C36C(v95, v57);
      v86 = (*(v58 + 936))(v57, v58);
      v59 = v104;
      v60 = v90;
      v90(v20, &v104[v91], v10);
      v61 = v60;
      v62 = v96;
      TTRRemindersListViewModel.ListInfo.iOS.getter();
      v63 = v20;
      v64 = v100;
      (v100)(v63, v10);
      v85 = TTRRemindersListViewModel.ListInfo.IOS.showsActionMenuButton.getter();
      (*(v98 + 8))(v62, v99);
      v65 = v89;
      v66 = v64;
      sub_10000794C(v101, &v93[v89[5]], &qword_100769980);
      v67 = v91;
      v68 = v88;
      v61(v88, &v59[v91], v10);
      TTRRemindersListViewModel.ListInfo.templateStatus.getter();
      v66(v68, v10);
      v70 = *&v59[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_navigationItemOptions];
      v69 = *&v59[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_navigationItemOptions + 8];
      LOBYTE(v58) = v59[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_navigationItemOptions + 16];
      v71 = v102;
      v90(v102, &v59[v67], v10);
      sub_100390100(v70, v69);
      LODWORD(v99) = TTRRemindersListViewModel.ListInfo.isOriginOfExistingTemplate.getter();
      v72 = v100;
      (v100)(v71, v10);
      v73 = v97;
      v90(v97, &v104[v67], v10);
      LOBYTE(v61) = TTRRemindersListViewModel.ListInfo.canAddSection.getter();
      v72(v73, v10);
      v74 = v93;
      *v93 = v85 & 1;
      v75 = v74 + v65[7];
      *v75 = v70;
      *(v75 + 8) = v69;
      *(v75 + 16) = v58;
      *(v74 + v65[8]) = v99 & 1;
      *(v74 + v65[9]) = v61 & 1;
      *(v74 + v65[10]) = (v86 & 1) == 0;
      v76 = v74 + v65[11];
      v77 = v87;
      *v76 = 0;
      *(v76 + 8) = v77;
      *(v76 + 16) = 0;
      v78 = sub_100058000(&qword_100780990);
      v79 = *(v78 + 48);
      v32 = v103;
      sub_100390114(v74, v103);
      sub_10000C36C(v105, v106);
      *(v32 + v79) = TTRRemindersListEditingState.isEditingItem.getter() & 1;
      (*(*(v78 - 8) + 56))(v32, 0, 1, v78);
      swift_beginAccess();
      TTRRemindersListViewModel.ListInfo.listLayout.getter();
      swift_endAccess();
      sub_100390178(v74, type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo);
      sub_1000079B4(v101, &qword_100769980);
    }

    v80 = *(v95 + 3);
    v81 = *(v95 + 4);
    sub_10000C36C(v95, v80);
    (*(v81 + 504))(v80, v81);
    LOBYTE(v80) = sub_1000830B0(v32);
    swift_unknownObjectRelease();
    if (v80)
    {
      v82 = [v104 navigationController];
      if (v82)
      {
        v83 = v82;
        v84 = [v82 navigationBar];

        [v84 ttriAccessibilityNavigationBarContentsDidChange];
      }
    }

    sub_100390178(v32, type metadata accessor for TTRIRemindersListNavigationBarViewModel.Configuration);
    return sub_100004758(v105);
  }

  return result;
}

void sub_10037CFB0()
{
  v1 = v0;
  v2 = sub_100058000(&qword_1007693B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
  swift_beginAccess();
  (*(v6 + 16))(v8, v1 + v9, v5);
  TTRRemindersListViewModel.ListInfo.templateStatus.getter();
  v10 = type metadata accessor for TTRTemplatePublicLinkData();
  v11 = 1;
  LODWORD(v9) = (*(*(v10 - 8) + 48))(v4, 1, v10);
  sub_1000079B4(v4, &qword_1007693B0);
  if (v9 == 1)
  {
    if (TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter())
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }
  }

  v12 = TTRRemindersListViewModel.ListInfo.color.getter();
  (*(v6 + 8))(v8, v5);
  if (*(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarController))
  {

    v13 = sub_1002F2BF0();
    v14 = *(v13 + 24);
    v15 = *(v13 + 32);
    *(v13 + 24) = v11;
    *(v13 + 32) = v12;
    if (v11 != v14 || v15 == 0)
    {
      v17 = v12;
    }

    else
    {
      sub_100003540(0, &qword_100772610);
      v18 = v12;
      v19 = v15;
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {

        v12 = v19;
        goto LABEL_15;
      }
    }

    sub_100017FA0();

    v12 = v15;
  }

LABEL_15:
}

void sub_10037D260()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListLayout();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  if ([v1 isViewLoaded])
  {
    v36 = v5;
    v37 = v3;
    v38 = v2;
    [v1 ttr_setNeedsUpdateContentUnavailableConfiguration];
    v13 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_emptyListMessaging;
    swift_beginAccess();
    v14 = *(v7 + 16);
    v14(v12, &v1[v13], v6);
    v15 = TTRRemindersListViewModel.EmptyListMessagingType.shouldUseUnavailableConfiguration.getter();
    v16 = *(v7 + 8);
    v16(v12, v6);
    if (v15)
    {
      v17 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listMessagingView;
      v18 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listMessagingView];
      if (v18)
      {
        [v18 removeFromSuperview];
        v19 = *&v1[v17];
      }

      else
      {
        v19 = 0;
      }

      *&v1[v17] = 0;
    }

    else
    {
      v14(v10, &v1[v13], v6);
      v20 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listMessagingView;
      v21 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listMessagingView];
      v22 = v21;
      v23 = [v1 view];
      if (v23)
      {
        v24 = v23;
        v25 = sub_10028CBA0(v10, v21, v23);

        v16(v10, v6);
        v26 = *&v1[v20];
        *&v1[v20] = v25;

        v27 = *&v1[v20];
        v29 = v37;
        v28 = v38;
        v30 = v36;
        if (v27)
        {
          v31 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentLayout;
          swift_beginAccess();
          (*(v29 + 16))(v30, &v1[v31], v28);
          v32 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListMessagingView_listLayout;
          swift_beginAccess();
          v33 = *(v29 + 40);
          v34 = v27;
          v33(&v27[v32], v30, v28);
          swift_endAccess();

          v35 = *&v1[v20];
          if (v35)
          {
            *(v35 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListMessagingView_messagingViewDelegate + 8) = &off_100723D28;
            swift_unknownObjectWeakAssign();
          }
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_10037D5CC()
{
  v1 = v0;
  v2 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppEntityID();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100775640);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRListType();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  v20 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
  swift_beginAccess();
  (*(v10 + 16))(v12, &v1[v20], v9);
  TTRRemindersListViewModel.ListInfo.listType.getter();
  (*(v10 + 8))(v12, v9);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    return sub_1000079B4(v8, &unk_100775640);
  }

  (*(v14 + 32))(v19, v8, v13);
  (*(v14 + 16))(v17, v19, v13);
  v22 = (*(v14 + 88))(v17, v13);
  if (v22 != enum case for TTRListType.list(_:))
  {
    if (v22 == enum case for TTRListType.customSmartList(_:))
    {
      (*(v14 + 96))(v17, v13);
      v24 = *v17;
      v25 = [v1 view];
      if (v25)
      {
        v26 = v25;
        type metadata accessor for ListEntity();
        v27 = v24;
        v28 = v38;
        AppEntityID.init(objectID:)();
        sub_1003912B4(&qword_100771DE8, &type metadata accessor for ListEntity);
        UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

        (*(v39 + 8))(v28, v40);
        return (*(v14 + 8))(v19, v13);
      }

      __break(1u);
    }

    else
    {
      if (v22 == enum case for TTRListType.predefinedSmartList(_:))
      {
        (*(v14 + 96))(v17, v13);
        v30 = v35;
        v29 = v36;
        v31 = v37;
        (*(v36 + 32))(v35, v17, v37);
        sub_10038E818(v30);
        (*(v29 + 8))(v30, v31);
        return (*(v14 + 8))(v19, v13);
      }

      if (v22 == enum case for TTRListType.tagged(_:))
      {
        (*(v14 + 8))(v19, v13);
        (*(v14 + 96))(v17, v13);
        v32 = type metadata accessor for REMHashtagLabelSpecifier();
        return (*(*(v32 - 8) + 8))(v17, v32);
      }

      if (v22 == enum case for TTRListType.search(_:) || v22 == enum case for TTRListType.recentlyDeletedList(_:))
      {
        v33 = *(v14 + 8);
        v33(v19, v13);
        return (v33)(v17, v13);
      }
    }

    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  (*(v14 + 96))(v17, v13);
  v23 = *v17;
  sub_10038E674(*v17, v17[8]);

  return (*(v14 + 8))(v19, v13);
}

uint64_t sub_10037DC0C(char a1)
{
  v3 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentPreferredChromelessBarStatesObserver;
  if (!*(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentPreferredChromelessBarStatesObserver))
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100058000(&qword_1007809F0);
    swift_allocObject();
    *(v1 + v3) = TTRViewModelObserver.init(didReceiveNewValue:)();
  }

  v4 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v5 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 56);

  v8 = v4;
  v7(ObjectType, v5);

  TTRViewModelObserver.subscribeIfNeeded(to:)();

  if ((a1 & 1) == 0)
  {
    sub_10038B168();
  }
}

void sub_10037DD70(char a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v3 isViewLoaded])
  {
    v10 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
    swift_beginAccess();
    (*(v7 + 16))(v9, &v3[v10], v6);
    LOBYTE(v10) = TTRRemindersListViewModel.ListInfo.hasDefaultNewReminderButton.getter();
    (*(v7 + 8))(v9, v6);
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = [v3 isEditing];
    }

    if (*&v3[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight] > 0.0)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 ^ 1;
    }

    if (static REMFeatureFlags.isSolariumEnabled.getter())
    {
      v13 = [v3 navigationController];
      if (v13)
      {
        v14 = &selRef_isToolbarHidden;
        goto LABEL_13;
      }
    }

    else
    {
      v13 = sub_10037BD64();
      if (v13)
      {
        v14 = &selRef_isHidden;
LABEL_13:
        v15 = v13;
        v16 = [v13 *v14];

        if (v12 == v16)
        {
          if (!(v12 & 1 | ((a1 & 1) == 0)) && *&v3[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarController])
          {

            sub_1002F2CD4([v3 isEditing], a2 & 1);
          }

LABEL_23:
          v22 = sub_10037BD64();
          if (v22)
          {
            v23 = v22;
            if (v11)
            {
              [v22 bounds];
              Height = CGRectGetHeight(v30);
              UIToolbar.toolbarHeightAdjustment_workaround60289707.getter();
              v26 = Height + v25;
              v27 = *&v3[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarHeight];
              *&v3[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarHeight] = v26;
              if (v26 != v27)
              {
                sub_10038B168();
              }

LABEL_31:
              sub_10038C454();
              return;
            }
          }

          v28 = *&v3[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarHeight];
          *&v3[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarHeight] = 0;
          if (v28 != 0.0)
          {
            sub_10038B168();
          }

          goto LABEL_31;
        }

        if (v12)
        {
LABEL_19:
          sub_10038C2C8(v12, a2 & 1, v3);
          v17 = *&v3[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
          v18 = *&v3[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8];
          ObjectType = swift_getObjectType();
          v20 = *(v18 + 192);
          v21 = v17;
          v20(ObjectType, v18);

          goto LABEL_23;
        }

LABEL_17:
        if (*&v3[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarController])
        {

          sub_1002F2CD4([v3 isEditing], 0);
        }

        goto LABEL_19;
      }
    }

    if (v12)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }
}

void sub_10037E0F0()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewWillLayoutSubviews");
  sub_10037E184();
  v1 = sub_10037BD64();
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarBottomConstraint];
    if (v3)
    {
      v4 = v3;
      UIToolbar.toolbarHeightAdjustment_workaround60289707.getter();
      [v4 setConstant:-v5];
    }
  }
}

uint64_t sub_10037E184()
{
  v1 = v0;
  v100 = type metadata accessor for TTRIShowRemindersEditableCellScrollingTarget();
  v101 = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = &v85[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v98 = &v85[-v4];
  v97 = type metadata accessor for DispatchWorkItemFlags();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v85[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = type metadata accessor for DispatchQoS();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = &v85[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v85[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v85[-v12];
  v14 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v85[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v85[-v19];
  v21 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
  swift_beginAccess();
  v102 = v15;
  v22 = *(v15 + 16);
  v103 = v14;
  v22(v20, &v1[v21], v14);
  if (TTRIShowRemindersDeferredItemUpdates.isEmpty.getter())
  {
    return (*(v102 + 8))(v20, v103);
  }

  v23 = enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.none(_:);
  (*(v8 + 104))(v13, enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.none(_:), v7);
  v89 = v13;
  TTRIShowRemindersDeferredItemUpdates.init(needsRefreshCellSizes:pendingScrollAction:)();
  swift_beginAccess();
  v24 = *(v102 + 40);
  v90 = v17;
  v88 = v24;
  v24(&v1[v21], v17, v103);
  swift_endAccess();
  refreshed = TTRIShowRemindersDeferredItemUpdates.needsRefreshCellSizes.getter();
  v91 = v20;
  if (refreshed)
  {
    v26 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    v27 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8];
    ObjectType = swift_getObjectType();
    v86 = v23;
    v29 = v21;
    v30 = ObjectType;
    v87 = v1;
    v31 = *(v27 + 120);
    v32 = v26;
    v33 = v30;
    v21 = v29;
    v23 = v86;
    v34 = v27;
    v20 = v91;
    v31(v33, v34);
    v1 = v87;
  }

  TTRIShowRemindersDeferredItemUpdates.pendingScrollAction.getter();
  v35 = (*(v8 + 88))(v10, v7);
  if (v35 != enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.beginEditing(_:))
  {
    if (v35 == enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.textChange(_:))
    {
      (*(v8 + 96))(v10, v7);
      v46 = *(sub_100058000(&qword_100780A10) + 48);
      sub_100005FD0(v10, aBlock);
      v47 = v10 + v46;
      v48 = v99;
      (*(v101 + 32))(v99, v47, v100);
      if (v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState] - 1 < 2 || (static TTRIKeyboard.isInFloatingKeyboardMode.getter() & 1) != 0)
      {
        v49 = v20;
        v50 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
        v51 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8];
        v52 = swift_getObjectType();
        v53 = *(v51 + 168);
        v54 = v50;
        v48 = v99;
        v55 = v54;
        v56 = v51;
        v20 = v49;
        v53(v99, aBlock, 0, v52, v56);
      }

      (*(v101 + 8))(v48, v100);
      v57 = aBlock;
    }

    else
    {
      if (v35 != enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.keyboardFrameChange(_:))
      {
        if (v35 != v23)
        {
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

        return (*(v102 + 8))(v20, v103);
      }

      (*(v8 + 96))(v10, v7);
      sub_100005FD0(v10, v107);
      if (v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState] - 1 < 2)
      {
        v66 = v20;
        v67 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
        v68 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8];
        v69 = swift_getObjectType();
        v70 = v100;
        v71 = v69;
        v72 = v101;
        v73 = v98;
        (*(v101 + 104))(v98, enum case for TTRIShowRemindersEditableCellScrollingTarget.cell(_:), v100);
        v74 = *(v68 + 168);
        v75 = v67;
        v74(v73, v107, 1, v71, v68);

        (*(v72 + 8))(v73, v70);
        sub_100004758(v107);
        return (*(v102 + 8))(v66, v103);
      }

      v57 = v107;
    }

    sub_100004758(v57);
    return (*(v102 + 8))(v20, v103);
  }

  (*(v8 + 96))(v10, v7);
  sub_100005FD0(v10, v106);
  if (v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState] - 2 >= 2)
  {
    if (v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState] || (static TTRIKeyboard.isInFloatingKeyboardMode.getter() & 1) != 0)
    {
      sub_100003540(0, &qword_100777780);
      v58 = static OS_dispatch_queue.main.getter();
      sub_10000B0D8(v106, v105);
      v59 = swift_allocObject();
      *(v59 + 16) = v1;
      sub_100005FD0(v105, v59 + 24);
      aBlock[4] = sub_1003912A8;
      aBlock[5] = v59;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001047C;
      aBlock[3] = &unk_100724218;
      v60 = _Block_copy(aBlock);
      v61 = v1;

      v62 = v92;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1003912B4(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100058000(&qword_100780A50);
      v63 = v102;
      sub_10000E188(&qword_10076B7E0, &qword_100780A50);
      v64 = v94;
      v65 = v97;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v60);

      (*(v96 + 8))(v64, v65);
      (*(v93 + 8))(v62, v95);
      sub_100004758(v106);
      return (*(v63 + 8))(v91, v103);
    }

    else
    {
      if (qword_100767228 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      sub_100003E30(v76, qword_100780830);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.debug.getter();
      v79 = os_log_type_enabled(v77, v78);
      v80 = v91;
      v81 = v90;
      if (v79)
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v77, v78, "Deferring handling of pendingScrollAction=beginEditing; keyboard is not yet visible", v82, 2u);
      }

      TTRIShowRemindersDeferredItemUpdates.pendingScrollAction.getter();
      TTRIShowRemindersDeferredItemUpdates.init(needsRefreshCellSizes:pendingScrollAction:)();
      sub_100004758(v106);
      v83 = v80;
      v84 = v103;
      (*(v102 + 8))(v83, v103);
      swift_beginAccess();
      v88(&v1[v21], v81, v84);
      return swift_endAccess();
    }
  }

  else
  {
    v36 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    v37 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8];
    v38 = swift_getObjectType();
    v39 = v100;
    v40 = v38;
    v41 = v101;
    v42 = v98;
    (*(v101 + 104))(v98, enum case for TTRIShowRemindersEditableCellScrollingTarget.cell(_:), v100);
    v43 = *(v37 + 168);
    v44 = v36;
    v43(v42, v106, 0, v40, v37);

    (*(v41 + 8))(v42, v39);
    sub_100004758(v106);
    return (*(v102 + 8))(v91, v103);
  }
}

void sub_10037EE58(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v2;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "viewWillAppear:", a1 & 1, v7);
  sub_10037BE04();
  v10 = sub_10037BD64();
  if (v10)
  {

    v11 = UIViewController.effectiveNavigationControllerForBars.getter();
    if (v11)
    {
      v12 = v11;
      [v11 setToolbarHidden:1 animated:1];
    }
  }

  v13 = v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState];
  v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState] = 0;
  if (v13)
  {
    v14 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
    swift_beginAccess();
    (*(v6 + 16))(v9, &v2[v14], v5);
    LOBYTE(v14) = TTRIShowRemindersDeferredItemUpdates.isEmpty.getter();
    (*(v6 + 8))(v9, v5);
    if ((v14 & 1) == 0)
    {
      v15 = [v2 view];
      if (!v15)
      {
        __break(1u);
        return;
      }

      v16 = v15;
      [v15 setNeedsLayout];
    }
  }

  v17 = *&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight];
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight] = 0;
  sub_10038B458(v17);
  sub_10037DD70(1, 0);
  v18 = [objc_opt_self() defaultCenter];
  [v18 addObserver:v2 selector:"keyboardWillShowNotificationWithNotification:" name:UIKeyboardWillShowNotification object:0];
  [v18 addObserver:v2 selector:"keyboardDidShowNotificationWithNotification:" name:UIKeyboardDidShowNotification object:0];
  [v18 addObserver:v2 selector:"keyboardWillHideNotificationWithNotification:" name:UIKeyboardWillHideNotification object:0];
  [v18 addObserver:v2 selector:"keyboardDidHideNotificationWithNotification:" name:UIKeyboardDidHideNotification object:0];
  [v18 addObserver:v2 selector:"keyboardWillChangeFrameNotificationWithNotification:" name:UIKeyboardWillChangeFrameNotification object:0];
  [v18 addObserver:v2 selector:"willAddDeactivationReasonWithNotification:" name:_UIApplicationWillAddDeactivationReasonNotification object:0];
  v19 = *&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
  v20 = *&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
  sub_10000C36C(&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v19);
  (*(v20 + 800))(v19, v20);
  if (*&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_currentTextInputModeObserver])
  {

    TTRICurrentTextInputModeObserver.startObserving()();
  }
}

uint64_t sub_10037F204(char a1)
{
  v2 = v1;
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "viewDidAppear:", a1 & 1);
  v4 = &v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v5 = *&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
  v6 = *&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
  sub_10000C36C(&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v5);
  (*(v6 + 792))(v5, v6);
  sub_10037F35C(1);
  v7 = *(v4 + 3);
  v8 = *(v4 + 4);
  sub_10000C36C(v4, v7);
  (*(v8 + 496))(v7, v8);
  TTRModuleState.viewDidAppear()();

  sub_10037F724();
  [*&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_feedbackGenerator] prepare];
  v9 = *(v4 + 3);
  v10 = *(v4 + 4);
  sub_10000C36C(v4, v9);
  (*(v10 + 816))(v12, v9, v10);
  sub_10000C36C(v12, v12[3]);
  sub_100540774(v2);
  return sub_100004758(v12);
}

void sub_10037F35C(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v4 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v3);
    v5 = (*(v4 + 24))(v3, v4);
    v6 = [v1 userActivity];
    [v6 invalidate];

    [v2 setUserActivity:v5];
    if (v5)
    {
      [v5 setNeedsSave:1];
    }

    if (qword_100767228 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003E30(v7, qword_100780830);
    v8 = v5;
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30 = v11;
      *v10 = 136315138;
      if (v5)
      {
        v12 = NSUserActivity.ttrDescription.getter();
        v14 = v13;
      }

      else
      {
        v12 = 7104878;
        v14 = 0xE300000000000000;
      }

      v27 = sub_100004060(v12, v14, &v30);

      *(v10 + 4) = v27;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Reminders list make userActivity current {userActivity: %s}", v10, 0xCu);
      sub_100004758(v11);

      return;
    }
  }

  else
  {
    v15 = [v1 userActivity];
    if (v15)
    {
      v16 = v15;
      [v15 setNeedsSave:1];
    }

    if (qword_100767228 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100003E30(v17, qword_100780830);
    v18 = v1;
    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      v22 = [v18 userActivity];
      if (v22)
      {
        v23 = v22;
        v24 = NSUserActivity.ttrDescription.getter();
        v26 = v25;
      }

      else
      {
        v24 = 7104878;
        v26 = 0xE300000000000000;
      }

      v28 = sub_100004060(v24, v26, &v30);

      *(v20 + 4) = v28;
      _os_log_impl(&_mh_execute_header, oslog, v19, "Reminders list mark userActivity needsSave = true {userActivity: %s}", v20, 0xCu);
      sub_100004758(v21);

      return;
    }
  }
}

void sub_10037F724()
{
  v1 = [v0 splitViewController];
  if (v1)
  {
    v7 = v1;
    if ([v1 displayMode] == 2)
    {
      v2 = UIAccessibilityLayoutChangedNotification;
      v3 = [v0 navigationController];
      if (v3)
      {
        v4 = v3;
        v5 = [v3 navigationBar];

        sub_100003540(0, &qword_100780A48);
        v6 = _bridgeAnythingToObjectiveC<A>(_:)();
      }

      else
      {
        v6 = 0;
      }

      UIAccessibilityPostNotification(v2, v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_10037F8A0(char a1)
{
  v2 = v1;
  v30.receiver = v1;
  v30.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v30, "viewWillDisappear:", a1 & 1);
  v4 = &v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v5 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
  v6 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
  sub_10000C36C(&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v5);
  (*(v6 + 816))(v29, v5, v6);
  *(*sub_10000C36C(v29, v29[3]) + 48) = 0;

  sub_100004758(v29);
  if (*&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_currentTextInputModeObserver])
  {

    TTRICurrentTextInputModeObserver.stopObserving()();
  }

  [v1 resignFirstResponder];
  v7 = *(v4 + 3);
  v8 = *(v4 + 4);
  sub_10000C36C(v4, v7);
  (*(v8 + 456))(v7, v8);
  v9 = *(v4 + 3);
  v10 = *(v4 + 4);
  sub_10000C36C(v4, v9);
  (*(v10 + 808))(v9, v10);
  v11 = *(v4 + 3);
  v12 = *(v4 + 4);
  sub_10000C36C(v4, v11);
  (*(v12 + 136))(v11, v12);
  v13 = [objc_opt_self() defaultCenter];
  [v13 removeObserver:v1 name:UIKeyboardWillShowNotification object:0];
  [v13 removeObserver:v1 name:UIKeyboardDidShowNotification object:0];
  [v13 removeObserver:v1 name:UIKeyboardWillHideNotification object:0];
  [v13 removeObserver:v1 name:UIKeyboardDidHideNotification object:0];
  [v13 removeObserver:v1 name:UIKeyboardWillChangeFrameNotification object:0];
  [v13 removeObserver:v1 name:_UIApplicationWillAddDeactivationReasonNotification object:0];
  v14 = [v1 userActivity];
  if (v14)
  {
    v15 = v14;
    v16 = [v2 userActivity];
    [v16 resignCurrent];

    if (qword_100767228 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100003E30(v17, qword_100780830);
    v18 = v15;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29[0] = v22;
      *v21 = 136315138;
      v23 = NSUserActivity.ttrDescription.getter();
      v25 = sub_100004060(v23, v24, v29);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Make NSUserActivity resign current {activity: %s}", v21, 0xCu);
      sub_100004758(v22);
    }

    else
    {
    }
  }

  v26 = *(v4 + 3);
  v27 = *(v4 + 4);
  sub_10000C36C(v4, v26);
  (*(v27 + 496))(v26, v27);
  TTRModuleState.viewWillDisappear()();
}

void sub_10037FDBC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v4 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v3);
  (*(v4 + 32))(a1, v3, v4);
  if (qword_100767228 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_100780830);
  v6 = a1;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = NSUserActivity.ttrDescription.getter();
    v12 = sub_100004060(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v7, "Reminders list updated userActivity state {activity: %s}", v8, 0xCu);
    sub_100004758(v9);
  }
}

void sub_10037FFC0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 isViewLoaded])
  {
    if ([v1 isEditing])
    {
      v6 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
      v7 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8];
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 160);
      v10 = v6;
      v11 = v9(0, ObjectType, v7);

      v12 = *(v11 + 16);

      if (v12)
      {
        static TTRLocalizableStrings.RemindersList.selectedCountText(withCount:)();
      }

      else
      {
        static TTRLocalizableStrings.RemindersList.selectReminders.getter();
      }

      v16 = String._bridgeToObjectiveC()();

      [v1 setTitle:v16];
      v15 = v16;
    }

    else
    {
      v13 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
      swift_beginAccess();
      (*(v3 + 16))(v5, &v1[v13], v2);
      TTRRemindersListViewModel.ListInfo.name.getter();
      (*(v3 + 8))(v5, v2);
      v14 = String._bridgeToObjectiveC()();

      [v1 setTitle:v14];
    }
  }
}

uint64_t sub_100380378(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v407 = a2;
  v442 = a1;
  ObjectType = swift_getObjectType();
  v429 = type metadata accessor for TTRRemindersListPostponeType();
  v427 = *(v429 - 8);
  __chkstk_darwin(v429);
  v415 = &v380 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v424 = sub_100058000(&qword_100780958);
  v5 = __chkstk_darwin(v424);
  v414 = &v380 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v413 = &v380 - v8;
  v9 = __chkstk_darwin(v7);
  v412 = &v380 - v10;
  v11 = __chkstk_darwin(v9);
  v421 = &v380 - v12;
  __chkstk_darwin(v11);
  v428 = &v380 - v13;
  v14 = sub_100058000(&qword_100780960);
  v15 = __chkstk_darwin(v14 - 8);
  v410 = &v380 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v406 = &v380 - v18;
  v19 = __chkstk_darwin(v17);
  v409 = &v380 - v20;
  v21 = __chkstk_darwin(v19);
  v408 = &v380 - v22;
  v23 = __chkstk_darwin(v21);
  v403 = &v380 - v24;
  v25 = __chkstk_darwin(v23);
  v405 = &v380 - v26;
  v27 = __chkstk_darwin(v25);
  v404 = &v380 - v28;
  v29 = __chkstk_darwin(v27);
  v401 = &v380 - v30;
  v31 = __chkstk_darwin(v29);
  v420 = &v380 - v32;
  v33 = __chkstk_darwin(v31);
  v402 = &v380 - v34;
  v35 = __chkstk_darwin(v33);
  v418 = &v380 - v36;
  v37 = __chkstk_darwin(v35);
  v426 = &v380 - v38;
  v39 = __chkstk_darwin(v37);
  v419 = &v380 - v40;
  v41 = __chkstk_darwin(v39);
  v423 = &v380 - v42;
  __chkstk_darwin(v41);
  v432 = &v380 - v43;
  v44 = sub_100058000(&qword_100772140);
  v45 = __chkstk_darwin(v44 - 8);
  v399 = &v380 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v397 = &v380 - v48;
  v49 = __chkstk_darwin(v47);
  v396 = &v380 - v50;
  v51 = __chkstk_darwin(v49);
  v395 = &v380 - v52;
  v53 = __chkstk_darwin(v51);
  v394 = &v380 - v54;
  v55 = __chkstk_darwin(v53);
  v416 = &v380 - v56;
  v57 = __chkstk_darwin(v55);
  v425 = &v380 - v58;
  v59 = __chkstk_darwin(v57);
  v430 = &v380 - v60;
  v61 = __chkstk_darwin(v59);
  v433 = &v380 - v62;
  v63 = __chkstk_darwin(v61);
  v435 = &v380 - v64;
  v65 = __chkstk_darwin(v63);
  v437 = &v380 - v66;
  v67 = __chkstk_darwin(v65);
  v434 = &v380 - v68;
  v69 = __chkstk_darwin(v67);
  v438 = &v380 - v70;
  v71 = __chkstk_darwin(v69);
  v436 = &v380 - v72;
  __chkstk_darwin(v71);
  v439 = &v380 - v73;
  v74 = type metadata accessor for TTRRemindersListViewModel.Item();
  v75 = *(v74 - 8);
  v440 = v74;
  v441 = v75;
  v76 = __chkstk_darwin(v74);
  v393 = &v380 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __chkstk_darwin(v76);
  v392 = &v380 - v79;
  v80 = __chkstk_darwin(v78);
  v391 = &v380 - v81;
  v82 = __chkstk_darwin(v80);
  v390 = &v380 - v83;
  v84 = __chkstk_darwin(v82);
  v400 = &v380 - v85;
  v86 = __chkstk_darwin(v84);
  v398 = &v380 - v87;
  v88 = __chkstk_darwin(v86);
  v417 = &v380 - v89;
  v90 = __chkstk_darwin(v88);
  v422 = &v380 - v91;
  v92 = __chkstk_darwin(v90);
  v431 = &v380 - v93;
  v94 = __chkstk_darwin(v92);
  v96 = &v380 - v95;
  v97 = __chkstk_darwin(v94);
  v99 = &v380 - v98;
  v100 = __chkstk_darwin(v97);
  v102 = &v380 - v101;
  v103 = __chkstk_darwin(v100);
  v105 = &v380 - v104;
  v106 = __chkstk_darwin(v103);
  v108 = &v380 - v107;
  __chkstk_darwin(v106);
  v110 = &v380 - v109;
  v111 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v112 = *(v111 - 8);
  __chkstk_darwin(v111);
  v114 = &v380 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = [v3 presentedViewController];
  if (v115)
  {

    return 0;
  }

  v387 = v114;
  v388 = v112;
  v389 = v111;
  v385 = v110;
  v384 = v108;
  v383 = v105;
  v381 = v99;
  v380 = v96;
  v382 = v102;
  v386 = v3;
  v117 = v442;
  if (static Selector.== infix(_:_:)())
  {
    v118 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
    v119 = v386;
    swift_beginAccess();
    v120 = v388;
    v121 = &v119[v118];
    v122 = v387;
    v123 = v389;
    (*(v388 + 16))(v387, v121, v389);
    CustomSmartListForHashtags = TTRRemindersListViewModel.ListInfo.canBePrinted.getter();
    (*(v120 + 8))(v122, v123);
    return CustomSmartListForHashtags & 1;
  }

  v125 = static Selector.== infix(_:_:)();
  v126 = v389;
  v127 = v388;
  v128 = v387;
  if (v125)
  {
    v129 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v130 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v129);
    v131 = (*(v130 + 1008))(v129, v130);
    return v131 & 1;
  }

  if (static Selector.== infix(_:_:)())
  {
    v132 = v386;
    v133 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v134 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v133);
    if ([v132 isEditing])
    {
      v135 = &v132[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
      v136 = *&v132[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
      v137 = *(v135 + 1);
      v138 = swift_getObjectType();
      v139 = *(v137 + 160);
      v140 = v136;
      v141 = v139(1, v138, v137);
    }

    else
    {
      v141 = _swiftEmptyArrayStorage;
    }

    v144 = (*(v134 + 1056))(v141, v133, v134);
LABEL_18:
    CustomSmartListForHashtags = v144;

    return CustomSmartListForHashtags & 1;
  }

  if (static Selector.== infix(_:_:)())
  {
    v142 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
    v143 = v386;
    swift_beginAccess();
    (*(v127 + 16))(v128, &v143[v142], v126);
    CustomSmartListForHashtags = TTRRemindersListViewModel.ListInfo.canCreateCustomSmartListForHashtagsState.getter();
    (*(v127 + 8))(v128, v126);
    return CustomSmartListForHashtags & 1;
  }

  if (static Selector.== infix(_:_:)())
  {
LABEL_20:
    CustomSmartListForHashtags = 1;
    return CustomSmartListForHashtags & 1;
  }

  if (static Selector.== infix(_:_:)())
  {
    v145 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v146 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v145);
    v131 = (*(v146 + 960))(v145, v146);
    return v131 & 1;
  }

  v147 = static Selector.== infix(_:_:)();
  v148 = v386;
  if (v147)
  {
    v149 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v150 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v149);
    v131 = (*(v150 + 928))(v149, v150);
    return v131 & 1;
  }

  if (static Selector.== infix(_:_:)())
  {
    v151 = *&v148[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v152 = *&v148[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v148[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v151);
    v153 = (*(v152 + 528))(v151, v152);
    v154 = 0;
    v442 = *(v153 + 16);
    v155 = &v148[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    v157 = v440;
    v156 = v441;
    v438 = v441 + 8;
    v439 = v441 + 16;
    v158 = v385;
    while (v442 != v154)
    {
      if (v154 >= *(v153 + 16))
      {
        __break(1u);
        goto LABEL_65;
      }

      (*(v156 + 16))(v158, v153 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v154++, v157);
      v159 = *v155;
      v160 = *(v155 + 1);
      v161 = swift_getObjectType();
      v162 = *(v160 + 200);
      v163 = v159;
      v164 = v161;
      v156 = v441;
      v165 = v162(v158, v164, v160);

      (*(v156 + 8))(v158, v157);
      if ((v165 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

LABEL_37:

    return 0;
  }

  if (static Selector.== infix(_:_:)())
  {
    v166 = *&v148[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v167 = *&v148[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v148[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v166);
    v168 = (*(v167 + 528))(v166, v167);
    v169 = 0;
    v442 = *(v168 + 16);
    v170 = &v148[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    v172 = v440;
    v171 = v441;
    v438 = v441 + 8;
    v439 = v441 + 16;
    v173 = v384;
    while (v442 != v169)
    {
      if (v169 >= *(v168 + 16))
      {
        __break(1u);
        goto LABEL_69;
      }

      (*(v171 + 16))(v173, v168 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v169++, v172);
      v174 = *v170;
      v102 = *(v170 + 1);
      v175 = swift_getObjectType();
      v176 = *(v102 + 25);
      v177 = v174;
      v178 = v175;
      v171 = v441;
      v179 = v176(v173, v178, v102);

      (*(v171 + 8))(v173, v172);
      if (v179)
      {
LABEL_36:

        goto LABEL_20;
      }
    }

    goto LABEL_37;
  }

  if (static Selector.== infix(_:_:)())
  {
    v180 = v439;
    sub_100383958(v439);
    v182 = v440;
    v181 = v441;
    if ((*(v441 + 48))(v180, 1, v440) == 1)
    {
      sub_1000079B4(v180, &qword_100772140);
      return 0;
    }

    v184 = v383;
    (*(v181 + 32))(v383, v180, v182);
    v185 = *&v148[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    v186 = *&v148[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8];
    v187 = swift_getObjectType();
    v188 = *(v186 + 64);
    v189 = v185;
    v190 = v188(v187, v186);

    if (v190)
    {

      (*(v181 + 8))(v184, v182);
      return 0;
    }

    v193 = *&v148[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v194 = *&v148[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v148[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v193);
    CustomSmartListForHashtags = (*(v194 + 64))(v184, v193, v194);
    (*(v181 + 8))(v184, v182);
    return CustomSmartListForHashtags & 1;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      v183 = 0;
      goto LABEL_47;
    }

    if (static Selector.== infix(_:_:)())
    {
      v183 = 1;
      v191 = 0;
      goto LABEL_48;
    }

    v154 = v117;
    if (static Selector.== infix(_:_:)())
    {
      v183 = 0;
      v191 = 0;
      v192 = v386;
      goto LABEL_49;
    }

    if (static Selector.== infix(_:_:)())
    {
      v195 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
      v196 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
      sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v195);
      if (((*(v196 + 680))(v195, v196) & 1) == 0)
      {
        return 0;
      }

      v197 = v436;
      sub_100383958(v436);
      v198 = (*(v441 + 48))(v197, 1, v440);
      goto LABEL_60;
    }

    if (static Selector.== infix(_:_:)())
    {
      v199 = v438;
      sub_100383958(v438);
      v102 = *(v441 + 48);
      if ((v102)(v199, 1, v440) == 1)
      {
        sub_1000079B4(v438, &qword_100772140);
        return 0;
      }

LABEL_69:
      v201 = v440;
      v202 = v441;
      v203 = v382;
      (*(v441 + 32))(v382, v438, v440);
      v205 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
      v204 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
      sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v205);
      sub_100058000(&qword_100772150);
      v206 = (*(v202 + 80) + 32) & ~*(v202 + 80);
      v207 = swift_allocObject();
      *(v207 + 16) = xmmword_10062D400;
      (*(v202 + 16))(v207 + v206, v203, v201);
      v208 = (*(v204 + 672))(v207, v205, v204);

      if (v208)
      {
        v197 = v434;
        sub_100383958(v434);
        v209 = v440;
        (*(v441 + 8))(v382, v440);
        v198 = (v102)(v197, 1, v209);
LABEL_60:
        CustomSmartListForHashtags = v198 != 1;
        sub_1000079B4(v197, &qword_100772140);
        return CustomSmartListForHashtags & 1;
      }

      v217 = *(v441 + 8);
      v218 = &v414;
LABEL_76:
      v217(*(v218 - 32), v440);
      return 0;
    }

LABEL_65:
    if (static Selector.== infix(_:_:)())
    {
      v200 = v437;
      sub_100383958(v437);
      if ((*(v441 + 48))(v200, 1, v440) == 1)
      {
        sub_1000079B4(v437, &qword_100772140);
        return 0;
      }

      v212 = v440;
      v211 = v441;
      v213 = v381;
      (*(v441 + 32))(v381, v437, v440);
      v214 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
      v215 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
      sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v214);
      v216 = (*(v215 + 72))(v213, v214, v215);
      goto LABEL_82;
    }

    if (static Selector.== infix(_:_:)())
    {
      v210 = v435;
      sub_100383958(v435);
      if ((*(v441 + 48))(v210, 1, v440) == 1)
      {
        sub_1000079B4(v435, &qword_100772140);
        return 0;
      }

      v212 = v440;
      v211 = v441;
      v213 = v380;
      (*(v441 + 32))(v380, v435, v440);
      v220 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
      v221 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
      sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v220);
      v216 = (*(v221 + 768))(v213, v220, v221);
      goto LABEL_82;
    }

    if (static Selector.== infix(_:_:)())
    {
      v219 = v433;
      sub_100383958(v433);
      if ((*(v441 + 48))(v219, 1, v440) == 1)
      {
        sub_1000079B4(v433, &qword_100772140);
        return 0;
      }

      v223 = v431;
      (*(v441 + 32))(v431, v433, v440);
      v224 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
      v225 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
      sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v224);
      if (((*(v225 + 696))(v432, v223, v224, v225) & 1) == 0)
      {
        sub_1000079B4(v432, &qword_100780960);
        (*(v441 + 8))(v431, v440);
        return 0;
      }

      v226 = v427;
      v227 = v423;
      v228 = v429;
      (*(v427 + 104))(v423, enum case for TTRRemindersListPostponeType.today(_:), v429);
      (*(v226 + 56))(v227, 0, 1, v228);
      v229 = *(v424 + 48);
      v230 = v428;
      sub_10000794C(v432, v428, &qword_100780960);
      sub_10000794C(v227, v230 + v229, &qword_100780960);
      v231 = *(v226 + 48);
      if (v231(v230, 1, v228) == 1)
      {
        sub_1000079B4(v423, &qword_100780960);
        sub_1000079B4(v432, &qword_100780960);
        (*(v441 + 8))(v431, v440);
        if (v231(v428 + v229, 1, v429) == 1)
        {
          sub_1000079B4(v428, &qword_100780960);
          return 0;
        }

        goto LABEL_103;
      }

      v245 = v428;
      sub_10000794C(v428, v419, &qword_100780960);
      v246 = v231(v245 + v229, 1, v429);
      v247 = (v427 + 8);
      if (v246 == 1)
      {
        sub_1000079B4(v423, &qword_100780960);
        sub_1000079B4(v432, &qword_100780960);
        (*(v441 + 8))(v431, v440);
        (*v247)(v419, v429);
LABEL_103:
        v248 = v428;
LABEL_149:
        sub_1000079B4(v248, &qword_100780958);
        goto LABEL_20;
      }

      v272 = v427 + 32;
      v274 = v428;
      v273 = v429;
      v275 = v428 + v229;
      v276 = v415;
      (*(v427 + 32))(v415, v275, v429);
      sub_1003912B4(&unk_100780968, &type metadata accessor for TTRRemindersListPostponeType);
      v277 = v419;
      v278 = dispatch thunk of static Equatable.== infix(_:_:)();
      v279 = *(v272 - 24);
      v279(v276, v273);
      sub_1000079B4(v423, &qword_100780960);
      sub_1000079B4(v432, &qword_100780960);
      (*(v441 + 8))(v431, v440);
LABEL_159:
      v279(v277, v273);
      sub_1000079B4(v274, &qword_100780960);
      CustomSmartListForHashtags = v278 ^ 1;
      return CustomSmartListForHashtags & 1;
    }

    if (static Selector.== infix(_:_:)())
    {
      v222 = v430;
      sub_100383958(v430);
      if ((*(v441 + 48))(v222, 1, v440) == 1)
      {
        sub_1000079B4(v430, &qword_100772140);
        return 0;
      }

      v235 = v422;
      (*(v441 + 32))(v422, v430, v440);
      v236 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
      v237 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
      sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v236);
      if (((*(v237 + 696))(v426, v235, v236, v237) & 1) == 0)
      {
        sub_1000079B4(v426, &qword_100780960);
        v217 = *(v441 + 8);
        v218 = &v449;
        goto LABEL_76;
      }

      v238 = v427;
      v239 = v418;
      v240 = v429;
      (*(v427 + 104))(v418, enum case for TTRRemindersListPostponeType.tomorrow(_:), v429);
      (*(v238 + 56))(v239, 0, 1, v240);
      v241 = *(v424 + 48);
      v242 = v421;
      sub_10000794C(v426, v421, &qword_100780960);
      sub_10000794C(v239, v242 + v241, &qword_100780960);
      v243 = *(v238 + 48);
      if (v243(v242, 1, v240) == 1)
      {
        sub_1000079B4(v418, &qword_100780960);
        sub_1000079B4(v426, &qword_100780960);
        (*(v441 + 8))(v422, v440);
        if (v243(v421 + v241, 1, v429) == 1)
        {
          v233 = &qword_100780960;
          p_super_class = &v448;
          goto LABEL_155;
        }

        goto LABEL_114;
      }

      v259 = v421;
      sub_10000794C(v421, v402, &qword_100780960);
      v260 = v243(v259 + v241, 1, v429);
      v261 = (v427 + 8);
      if (v260 == 1)
      {
        sub_1000079B4(v418, &qword_100780960);
        sub_1000079B4(v426, &qword_100780960);
        (*(v441 + 8))(v422, v440);
        (*v261)(v402, v429);
LABEL_114:
        v262 = &v448;
LABEL_148:
        v248 = *(v262 - 32);
        goto LABEL_149;
      }

      v293 = v427 + 32;
      v274 = v421;
      v294 = v421 + v241;
      v295 = v415;
      v273 = v429;
      (*(v427 + 32))(v415, v294, v429);
      sub_1003912B4(&unk_100780968, &type metadata accessor for TTRRemindersListPostponeType);
      v277 = v402;
      v278 = dispatch thunk of static Equatable.== infix(_:_:)();
      v279 = *(v293 - 24);
      v279(v295, v273);
      sub_1000079B4(v418, &qword_100780960);
      sub_1000079B4(v426, &qword_100780960);
      v296 = *(v441 + 8);
      v297 = &v449;
LABEL_158:
      v296(*(v297 - 32), v440);
      goto LABEL_159;
    }

    if ((static Selector.== infix(_:_:)() & 1) == 0)
    {
      if ((static Selector.== infix(_:_:)() & 1) == 0)
      {
        if ((static Selector.== infix(_:_:)() & 1) == 0)
        {
          if (static Selector.== infix(_:_:)())
          {
            v280 = v395;
            sub_100383958(v395);
            if ((*(v441 + 48))(v280, 1, v440) == 1)
            {
              v233 = &qword_100772140;
              p_super_class = &v427;
              goto LABEL_155;
            }

            v212 = v440;
            v211 = v441;
            v213 = v390;
            (*(v441 + 32))(v390, v395, v440);
            v302 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
            v303 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
            sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v302);
            v216 = (*(v303 + 728))(v213, v302, v303);
          }

          else
          {
            if ((static Selector.== infix(_:_:)() & 1) == 0)
            {
              if (static Selector.== infix(_:_:)())
              {
                v307 = v397;
                sub_100383958(v397);
                if ((*(v441 + 48))(v307, 1, v440) == 1)
                {
                  v233 = &qword_100772140;
                  p_super_class = &v429;
                  goto LABEL_155;
                }

                v318 = v440;
                v317 = v441;
                v319 = v392;
                (*(v441 + 32))(v392, v397, v440);
                v320 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
                v321 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
                sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v320);
                v322 = (*(v321 + 80))(v319, v320, v321);
              }

              else
              {
                if ((static Selector.== infix(_:_:)() & 1) == 0)
                {
                  if (static Selector.== infix(_:_:)())
                  {
                    v326 = v386;
                    v327 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
                    v328 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
                    sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v327);
                    v329 = &v326[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
                    v330 = *&v326[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
                    v331 = *(v329 + 1);
                    v332 = swift_getObjectType();
                    v333 = *(v331 + 160);
                    v334 = v330;
                    v335 = v333(1, v332, v331);

                    if (!*(v335 + 16))
                    {

                      v336 = *v329;
                      v337 = *(v329 + 1);
                      v338 = swift_getObjectType();
                      v339 = *(v337 + 80);
                      v340 = v336;
                      v335 = v339(v338, v337);
                    }

                    v144 = (*(v328 + 624))(v335, v327, v328);
                  }

                  else if (static Selector.== infix(_:_:)())
                  {
                    v344 = v386;
                    v345 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
                    v346 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
                    sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v345);
                    v347 = &v344[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
                    v348 = *&v344[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
                    v349 = *(v347 + 1);
                    v350 = swift_getObjectType();
                    v351 = *(v349 + 160);
                    v352 = v348;
                    v353 = v351(1, v350, v349);

                    if (!*(v353 + 16))
                    {

                      v354 = *v347;
                      v355 = *(v347 + 1);
                      v356 = swift_getObjectType();
                      v357 = *(v355 + 80);
                      v358 = v354;
                      v353 = v357(v356, v355);
                    }

                    v144 = (*(v346 + 632))(v353, v345, v346);
                  }

                  else
                  {
                    if ((static Selector.== infix(_:_:)() & 1) == 0)
                    {
                      sub_10000794C(v407, &v444, &qword_10076AE40);
                      v374 = v446;
                      if (v446)
                      {
                        v375 = sub_10000C36C(&v444, v446);
                        v376 = *(v374 - 8);
                        __chkstk_darwin(v375);
                        v378 = &v380 - ((v377 + 15) & 0xFFFFFFFFFFFFFFF0);
                        (*(v376 + 16))(v378);
                        v379 = _bridgeAnythingToObjectiveC<A>(_:)();
                        (*(v376 + 8))(v378, v374);
                        sub_100004758(&v444);
                      }

                      else
                      {
                        v379 = 0;
                      }

                      v443.receiver = v386;
                      v443.super_class = ObjectType;
                      CustomSmartListForHashtags = objc_msgSendSuper2(&v443, "canPerformAction:withSender:", v154, v379);
                      swift_unknownObjectRelease();
                      return CustomSmartListForHashtags & 1;
                    }

                    v359 = v386;
                    v360 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
                    v361 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
                    sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v360);
                    v362 = &v359[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
                    v363 = *&v359[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
                    v364 = *(v362 + 1);
                    v365 = swift_getObjectType();
                    v366 = *(v364 + 160);
                    v367 = v363;
                    v368 = v366(1, v365, v364);

                    if (!*(v368 + 16))
                    {

                      v369 = *v362;
                      v370 = *(v362 + 1);
                      v371 = swift_getObjectType();
                      v372 = *(v370 + 80);
                      v373 = v369;
                      v368 = v372(v371, v370);
                    }

                    v144 = (*(v361 + 640))(v368, v360, v361);
                  }

                  goto LABEL_18;
                }

                v316 = v399;
                sub_100383958(v399);
                if ((*(v441 + 48))(v316, 1, v440) == 1)
                {
                  v233 = &qword_100772140;
                  p_super_class = &v431;
                  goto LABEL_155;
                }

                v318 = v440;
                v317 = v441;
                v319 = v393;
                (*(v441 + 32))(v393, v399, v440);
                v341 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
                v342 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
                sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v341);
                v322 = (*(v342 + 224))(v319, v341, v342);
              }

              v343 = v322;
              (*(v317 + 8))(v319, v318);
              CustomSmartListForHashtags = v343 != 2;
              return CustomSmartListForHashtags & 1;
            }

            v298 = v396;
            sub_100383958(v396);
            if ((*(v441 + 48))(v298, 1, v440) == 1)
            {
              v233 = &qword_100772140;
              p_super_class = &v428;
              goto LABEL_155;
            }

            v212 = v440;
            v211 = v441;
            v213 = v391;
            (*(v441 + 32))(v391, v396, v440);
            v311 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
            v312 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
            sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v311);
            v216 = (*(v312 + 736))(v213, v311, v312);
          }

LABEL_82:
          CustomSmartListForHashtags = v216;
          (*(v211 + 8))(v213, v212);
          return CustomSmartListForHashtags & 1;
        }

        v258 = v394;
        sub_100383958(v394);
        if ((*(v441 + 48))(v258, 1, v440) == 1)
        {
          v233 = &qword_100772140;
          p_super_class = &v426;
          goto LABEL_155;
        }

        v284 = v400;
        (*(v441 + 32))(v400, v394, v440);
        v285 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
        v286 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
        sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v285);
        if (((*(v286 + 696))(v409, v284, v285, v286) & 1) == 0)
        {
          sub_1000079B4(v409, &qword_100780960);
          v217 = *(v441 + 8);
          v218 = &v432;
          goto LABEL_76;
        }

        v287 = v427;
        v288 = v406;
        v289 = v429;
        (*(v427 + 104))(v406, enum case for TTRRemindersListPostponeType.none(_:), v429);
        (*(v287 + 56))(v288, 0, 1, v289);
        v290 = *(v424 + 48);
        v291 = v414;
        sub_10000794C(v409, v414, &qword_100780960);
        sub_10000794C(v288, v291 + v290, &qword_100780960);
        v292 = *(v287 + 48);
        if (v292(v291, 1, v289) == 1)
        {
          sub_1000079B4(v406, &qword_100780960);
          sub_1000079B4(v409, &qword_100780960);
          (*(v441 + 8))(v400, v440);
          if (v292(v414 + v290, 1, v429) == 1)
          {
            v233 = &qword_100780960;
            p_super_class = &v445;
            goto LABEL_155;
          }
        }

        else
        {
          v308 = v414;
          sub_10000794C(v414, v410, &qword_100780960);
          v309 = v292(v308 + v290, 1, v429);
          v310 = (v427 + 8);
          if (v309 != 1)
          {
            v323 = v427 + 32;
            v274 = v414;
            v324 = v414 + v290;
            v325 = v415;
            v273 = v429;
            (*(v427 + 32))(v415, v324, v429);
            sub_1003912B4(&unk_100780968, &type metadata accessor for TTRRemindersListPostponeType);
            v277 = v410;
            v278 = dispatch thunk of static Equatable.== infix(_:_:)();
            v279 = *(v323 - 24);
            v279(v325, v273);
            sub_1000079B4(v406, &qword_100780960);
            sub_1000079B4(v409, &qword_100780960);
            v296 = *(v441 + 8);
            v297 = &v432;
            goto LABEL_158;
          }

          sub_1000079B4(v406, &qword_100780960);
          sub_1000079B4(v409, &qword_100780960);
          (*(v441 + 8))(v400, v440);
          (*v310)(v410, v429);
        }

        v262 = &v445;
        goto LABEL_148;
      }

      v244 = v416;
      sub_100383958(v416);
      if ((*(v441 + 48))(v244, 1, v440) == 1)
      {
        v233 = &qword_100772140;
        p_super_class = &v446;
        goto LABEL_155;
      }

      v263 = v398;
      (*(v441 + 32))(v398, v416, v440);
      v264 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
      v265 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
      sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v264);
      if (((*(v265 + 696))(v405, v263, v264, v265) & 1) == 0)
      {
        sub_1000079B4(v405, &qword_100780960);
        v217 = *(v441 + 8);
        v218 = &v430;
        goto LABEL_76;
      }

      v266 = v427;
      v267 = v403;
      v268 = v429;
      (*(v427 + 104))(v403, enum case for TTRRemindersListPostponeType.startOfWeekday(_:), v429);
      (*(v266 + 56))(v267, 0, 1, v268);
      v269 = *(v424 + 48);
      v270 = v413;
      sub_10000794C(v405, v413, &qword_100780960);
      sub_10000794C(v267, v270 + v269, &qword_100780960);
      v271 = *(v266 + 48);
      if (v271(v270, 1, v268) == 1)
      {
        sub_1000079B4(v403, &qword_100780960);
        sub_1000079B4(v405, &qword_100780960);
        (*(v441 + 8))(v398, v440);
        if (v271(v413 + v269, 1, v429) == 1)
        {
          v233 = &qword_100780960;
          p_super_class = &v444;
          goto LABEL_155;
        }
      }

      else
      {
        v299 = v413;
        sub_10000794C(v413, v408, &qword_100780960);
        v300 = v271(v299 + v269, 1, v429);
        v301 = (v427 + 8);
        if (v300 != 1)
        {
          v313 = v427 + 32;
          v274 = v413;
          v314 = v413 + v269;
          v315 = v415;
          v273 = v429;
          (*(v427 + 32))(v415, v314, v429);
          sub_1003912B4(&unk_100780968, &type metadata accessor for TTRRemindersListPostponeType);
          v277 = v408;
          v278 = dispatch thunk of static Equatable.== infix(_:_:)();
          v279 = *(v313 - 24);
          v279(v315, v273);
          sub_1000079B4(v403, &qword_100780960);
          sub_1000079B4(v405, &qword_100780960);
          v296 = *(v441 + 8);
          v297 = &v430;
          goto LABEL_158;
        }

        sub_1000079B4(v403, &qword_100780960);
        sub_1000079B4(v405, &qword_100780960);
        (*(v441 + 8))(v398, v440);
        (*v301)(v408, v429);
      }

      v262 = &v444;
      goto LABEL_148;
    }

    v232 = v425;
    sub_100383958(v425);
    if ((*(v441 + 48))(v232, 1, v440) == 1)
    {
      v233 = &qword_100772140;
      p_super_class = &v450;
LABEL_155:
      sub_1000079B4(*(p_super_class - 32), v233);
      return 0;
    }

    v249 = v417;
    (*(v441 + 32))(v417, v425, v440);
    v250 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v251 = *&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v386[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v250);
    if (((*(v251 + 696))(v420, v249, v250, v251) & 1) == 0)
    {
      sub_1000079B4(v420, &qword_100780960);
      v217 = *(v441 + 8);
      v218 = &v447;
      goto LABEL_76;
    }

    v252 = v427;
    v253 = v401;
    v254 = v429;
    (*(v427 + 104))(v401, enum case for TTRRemindersListPostponeType.weekend(_:), v429);
    (*(v252 + 56))(v253, 0, 1, v254);
    v255 = *(v424 + 48);
    v256 = v412;
    sub_10000794C(v420, v412, &qword_100780960);
    sub_10000794C(v253, v256 + v255, &qword_100780960);
    v257 = *(v252 + 48);
    if (v257(v256, 1, v254) == 1)
    {
      sub_1000079B4(v401, &qword_100780960);
      sub_1000079B4(v420, &qword_100780960);
      (*(v441 + 8))(v417, v440);
      if (v257(v412 + v255, 1, v429) == 1)
      {
        v233 = &qword_100780960;
        p_super_class = &v443.super_class;
        goto LABEL_155;
      }
    }

    else
    {
      v281 = v412;
      sub_10000794C(v412, v404, &qword_100780960);
      v282 = v257(v281 + v255, 1, v429);
      v283 = (v427 + 8);
      if (v282 != 1)
      {
        v304 = v427 + 32;
        v274 = v412;
        v305 = v412 + v255;
        v306 = v415;
        v273 = v429;
        (*(v427 + 32))(v415, v305, v429);
        sub_1003912B4(&unk_100780968, &type metadata accessor for TTRRemindersListPostponeType);
        v277 = v404;
        v278 = dispatch thunk of static Equatable.== infix(_:_:)();
        v279 = *(v304 - 24);
        v279(v306, v273);
        sub_1000079B4(v401, &qword_100780960);
        sub_1000079B4(v420, &qword_100780960);
        v296 = *(v441 + 8);
        v297 = &v447;
        goto LABEL_158;
      }

      sub_1000079B4(v401, &qword_100780960);
      sub_1000079B4(v420, &qword_100780960);
      (*(v441 + 8))(v417, v440);
      (*v283)(v404, v429);
    }

    v262 = &v443.super_class;
    goto LABEL_148;
  }

  v183 = 1;
LABEL_47:
  v191 = 1;
LABEL_48:
  v192 = v148;
LABEL_49:

  return sub_100383650(v183, v191, v192);
}

uint64_t sub_100383650(int a1, int a2, uint64_t a3)
{
  LODWORD(v38) = a2;
  v36 = a1;
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v35[-v5];
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a3 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v11 = *(a3 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v12 = *(a3 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 96);
  v15 = v11;
  v16 = v14(ObjectType, v12);

  if ((v16 ^ v38))
  {
    goto LABEL_9;
  }

  sub_100383958(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_100772140);
LABEL_9:
    v33 = 0;
    return v33 & 1;
  }

  v17 = v7;
  v38 = a3;
  v18 = v37;
  (*(v8 + 32))(v37, v6, v17);
  v19 = *v10;
  v20 = *(v10 + 8);
  v21 = swift_getObjectType();
  v22 = *(v20 + 64);
  v23 = v19;
  v24 = v22(v21, v20);

  if (v24)
  {

    (*(v8 + 8))(v18, v17);
    goto LABEL_9;
  }

  v25 = v18;
  v26 = *(v38 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v27 = *(v38 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v38 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v26);
  if (((*(v27 + 536))(v25, v26, v27) & 1) == 0)
  {
    (*(v8 + 8))(v25, v17);
    goto LABEL_9;
  }

  v28 = *v10;
  v29 = *(v10 + 8);
  v30 = swift_getObjectType();
  v31 = *(v29 + 200);
  v32 = v28;
  LOBYTE(v29) = v31(v25, v30, v29);

  (*(v8 + 8))(v25, v17);
  v33 = v29 ^ v36;
  return v33 & 1;
}

uint64_t sub_100383958@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v3 - 8);
  v5 = &v23[-1] - v4;
  v6 = v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v7 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v8 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 64);
  v11 = v7;
  v12 = v10(ObjectType, v8);

  if (!v12)
  {
    v13 = *v6;
    v14 = *(v6 + 8);
    v15 = swift_getObjectType();
    v16 = *(v14 + 72);
    v17 = v13;
    v12 = v16(v15, v14);

    if (!v12)
    {
      goto LABEL_7;
    }
  }

  swift_getObjectType();
  dispatch thunk of TTRIShowRemindersEditableReminderCell.viewModel.getter();

  if (!v24)
  {
    sub_1000079B4(v23, &qword_100780978);
LABEL_7:
    v18 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
LABEL_8:
    sub_1000079B4(v5, &qword_100772140);
    type metadata accessor for TTRRemindersListViewModel.Item();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  sub_10000C36C(v23, v24);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  v18 = type metadata accessor for TTRRemindersListViewModel.Item();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v20(v5, 0, 1, v18);
  sub_100004758(v23);
  if ((*(v19 + 48))(v5, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  (*(v19 + 32))(a1, v5, v18);
  return (v20)(a1, 0, 1, v18);
}

uint64_t sub_100383CE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v1);
  v3 = v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v5 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 160);
  v8 = v4;
  v9 = v7(1, ObjectType, v5);

  if (!*(v9 + 16))
  {

    v10 = *v3;
    v11 = *(v3 + 8);
    v12 = swift_getObjectType();
    v13 = *(v11 + 80);
    v14 = v10;
    v9 = v13(v12, v11);
  }

  (*(v2 + 648))(v9, v1, v2);
}

uint64_t sub_100383E20()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v1);
  v3 = v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v5 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 160);
  v8 = v4;
  v9 = v7(1, ObjectType, v5);

  if (!*(v9 + 16))
  {

    v10 = *v3;
    v11 = *(v3 + 8);
    v12 = swift_getObjectType();
    v13 = *(v11 + 80);
    v14 = v10;
    v9 = v13(v12, v11);
  }

  (*(v2 + 656))(v9, v1, v2);
}

uint64_t sub_100383F60()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v1);
  v3 = v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v5 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 160);
  v8 = v4;
  v9 = v7(1, ObjectType, v5);

  if (!*(v9 + 16))
  {

    v10 = *v3;
    v11 = *(v3 + 8);
    v12 = swift_getObjectType();
    v13 = *(v11 + 80);
    v14 = v10;
    v9 = v13(v12, v11);
  }

  (*(v2 + 664))(v9, v1, v2);
}

void sub_1003840A0(void *a1)
{
  ObjectType = swift_getObjectType();
  v192 = type metadata accessor for TTRRemindersListPostponeType();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v190 = &v181 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v3 - 8);
  v184 = &v181 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v187 = &v181 - v6;
  __chkstk_darwin(v7);
  v189 = &v181 - v8;
  __chkstk_darwin(v9);
  v11 = &v181 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v12 - 8);
  v194 = v12;
  v195 = v13;
  __chkstk_darwin(v12);
  v15 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v186 = &v181 - v17;
  __chkstk_darwin(v18);
  v188 = &v181 - v19;
  __chkstk_darwin(v20);
  v193 = &v181 - v21;
  v22 = sub_100058000(&qword_100775AB0);
  __chkstk_darwin(v22 - 8);
  v24 = &v181 - v23;
  v25 = type metadata accessor for TTRRemindersListLayout();
  v26 = *(v25 - 8);
  v196 = v25;
  v197 = v26;
  __chkstk_darwin(v25);
  v185 = &v181 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v181 - v29;
  __chkstk_darwin(v31);
  v33 = &v181 - v32;
  v34 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v38 = &v181 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  [a1 action];
  if (static Selector.== infix(_:_:)())
  {
    v40._countAndFlagsBits = 0xD00000000000002DLL;
    v41._countAndFlagsBits = 0x696D65522077654ELL;
    v41._object = 0xEC0000007265646ELL;
    v40._object = 0x8000000100683B30;
    TTRLocalizedString(_:comment:)(v41, v40);
    v42._countAndFlagsBits = 0xD000000000000029;
    v43._countAndFlagsBits = 0x6D6574492077654ELL;
    v42._object = 0x8000000100683B60;
    v43._object = 0xE800000000000000;
    TTRLocalizedString(_:comment:)(v43, v42);
    v44 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
    v45 = v198;
    swift_beginAccess();
    (*(v35 + 16))(v38, &v45[v44], v34);
    TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
    (*(v35 + 8))(v38, v34);

    v46 = String._bridgeToObjectiveC()();

    [v39 setDiscoverabilityTitle:v46];
LABEL_8:

    return;
  }

  v181 = v15;
  v47 = v198;
  v182 = a1;
  if (static Selector.== infix(_:_:)())
  {
    v48 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentLayout;
    swift_beginAccess();
    v49 = v197;
    v50 = &v47[v48];
    v51 = v196;
    (*(v197 + 16))(v33, v50, v196);
    static TTRLocalizableStrings.Sections.newSectionActionText(listLayout:)();
LABEL_7:
    (*(v49 + 8))(v33, v51);
    v54 = String._bridgeToObjectiveC()();
    v55 = v182;
    [v182 setTitle:v54];

    v46 = String._bridgeToObjectiveC()();

    [v55 setDiscoverabilityTitle:v46];
    goto LABEL_8;
  }

  if (static Selector.== infix(_:_:)())
  {
    v52 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentLayout;
    swift_beginAccess();
    v49 = v197;
    v53 = &v47[v52];
    v51 = v196;
    (*(v197 + 16))(v33, v53, v196);
    static TTRLocalizableStrings.Sections.newSectionWithSelection(listLayout:)();
    goto LABEL_7;
  }

  if (static Selector.== infix(_:_:)())
  {
    v56._countAndFlagsBits = 0xD000000000000011;
    v56._object = 0x800000010067C1D0;
    v57._object = 0x8000000100683AF0;
    v57._countAndFlagsBits = 0xD000000000000032;
    TTRLocalizedString(_:comment:)(v56, v57);
    v58 = String._bridgeToObjectiveC()();
    v59 = v182;
    [v182 setTitle:v58];

    v60 = String._bridgeToObjectiveC()();

    [v59 setDiscoverabilityTitle:v60];

    v61 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
    swift_beginAccess();
    (*(v35 + 16))(v38, &v47[v61], v34);
    LOBYTE(v61) = TTRRemindersListViewModel.ListInfo.canCreateCustomSmartListForHashtagsState.getter();
    (*(v35 + 8))(v38, v34);
    *&v199 = [v59 attributes];
    UIMenuElementAttributes.setDisabled(_:)((v61 & 1) == 0);
    [v59 setAttributes:v199];
    return;
  }

  v62 = v47;
  if (static Selector.== infix(_:_:)())
  {
    v63 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v64 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v63);
    (*(v64 + 296))(&v202, v63, v64);
    sub_10000C36C(&v202, *(&v203 + 1));
    dispatch thunk of TTRRemindersListEditingState.editingTarget.getter();
    v65 = sub_100058000(&qword_100775AB8);
    LODWORD(v63) = (*(*(v65 - 8) + 48))(v24, 1, v65);
    sub_1000079B4(v24, &qword_100775AB0);
    if (v63 == 1)
    {
      v66 = "o key command title";
      v67 = 0x6445207472617453;
      v68 = 0xED0000676E697469;
      v69 = 0xD000000000000037;
    }

    else
    {
      v66 = " for editing a reminder";
      v69 = 0xD00000000000002CLL;
      v67 = 0x7469644520646E45;
      v68 = 0xEB00000000676E69;
    }

    v72 = v66 | 0x8000000000000000;
    TTRLocalizedString(_:comment:)(*&v67, *&v69);
    v73 = v182;
    v74 = String._bridgeToObjectiveC()();

    [v73 setTitle:v74];

    goto LABEL_20;
  }

  if (static Selector.== infix(_:_:)())
  {
    sub_100383958(v11);
    v71 = v194;
    v70 = v195;
    if ((*(v195 + 48))(v11, 1, v194) == 1)
    {
      sub_1000079B4(v11, &qword_100772140);
    }

    else
    {
      v78 = v193;
      (*(v70 + 32))(v193, v11, v71);
      v79 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
      v80 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
      sub_10000C36C(&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v79);
      sub_100058000(&qword_100772150);
      v81 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_10062D400;
      (*(v70 + 16))(v82 + v81, v78, v71);
      LOBYTE(v79) = (*(v80 + 672))(v82, v79, v80);

      v83 = v182;
      *&v202 = [v182 attributes];
      UIMenuElementAttributes.setDisabled(_:)((v79 & 1) == 0);
      [v83 setAttributes:v202];
      v84._countAndFlagsBits = 0xD000000000000012;
      v84._object = 0x8000000100683A20;
      v85._countAndFlagsBits = 0xD000000000000033;
      v85._object = 0x8000000100683A40;
      TTRLocalizedString(_:comment:)(v84, v85);
      v86 = String._bridgeToObjectiveC()();

      [v83 setTitle:v86];

      (*(v70 + 8))(v78, v71);
    }

    return;
  }

  if (static Selector.== infix(_:_:)())
  {
    v75 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v76 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v75);
    v77 = (*(v76 + 872))(v75, v76);
LABEL_26:
    v89 = v77;
    v90 = v182;
    *&v202 = [v182 attributes];
    UIMenuElementAttributes.setDisabled(_:)((v89 & 1) == 0);
    [v90 setAttributes:v202];
    return;
  }

  if (static Selector.== infix(_:_:)())
  {
    v87 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v88 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v87);
    v77 = (*(v88 + 880))(v87, v88);
    goto LABEL_26;
  }

  if (static Selector.== infix(_:_:)())
  {
    v91._countAndFlagsBits = 0x6D6F4320776F6853;
    v92._countAndFlagsBits = 0xD000000000000037;
    v92._object = 0x80000001006839A0;
    v91._object = 0xEE00646574656C70;
    TTRLocalizedString(_:comment:)(v91, v92);
    v93._countAndFlagsBits = 0x6D6F432065646948;
    v94._countAndFlagsBits = 0xD000000000000037;
    v94._object = 0x80000001006839E0;
    v93._object = 0xEE00646574656C70;
    TTRLocalizedString(_:comment:)(v93, v94);
    v95 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
    swift_beginAccess();
    v96 = v35;
    v196 = *(v35 + 16);
    v197 = v95;
    v196(v38, &v47[v95], v34);
    TTRRemindersListViewModel.ListInfo.completedRemindersShown.getter();
    v97 = v34;
    v98 = *(v96 + 8);
    v98(v38, v97);

    v99 = String._bridgeToObjectiveC()();

    v100 = v182;
    [v182 setTitle:v99];

    v101 = [v100 title];
    if (!v101)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = String._bridgeToObjectiveC()();
    }

    [v100 setDiscoverabilityTitle:v101];

    v196(v38, &v198[v197], v97);
    TTRRemindersListViewModel.ListInfo.completedRemindersShown.getter();
    v98(v38, v97);
    v105 = String._bridgeToObjectiveC()();
    v106 = [objc_opt_self() _systemImageNamed:v105];

    [v100 setImage:v106];
    return;
  }

  if (static Selector.== infix(_:_:)())
  {
    static TTRLocalizableStrings.RemindersList.autoCategorizationTitle.getter();
    v102 = String._bridgeToObjectiveC()();
    v103 = v182;
    [v182 setTitle:v102];

    v198 = String._bridgeToObjectiveC()();

    [v103 setDiscoverabilityTitle:v198];
    v104 = v198;

    return;
  }

  if (static Selector.== infix(_:_:)())
  {
    v107 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v108 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v107);
    v109 = v191;
    v110 = v190;
    v111 = v192;
    (*(v191 + 104))(v190, enum case for TTRRemindersListPostponeType.weekend(_:), v192);
    (*(v108 + 688))(v110, v107, v108);
    (*(v109 + 8))(v110, v111);
LABEL_47:
    v46 = String._bridgeToObjectiveC()();

    [v182 setDiscoverabilityTitle:v46];
    goto LABEL_8;
  }

  if (static Selector.== infix(_:_:)())
  {
    v112 = &v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    v113 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    v114 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8];
    v115 = swift_getObjectType();
    v116 = *(v114 + 64);
    v117 = v113;
    v118 = v116(v115, v114);

    if (v118 || (v119 = *v112, v120 = *(v112 + 1), v121 = swift_getObjectType(), v122 = *(v120 + 72), v123 = v119, v118 = v122(v121, v120), v123, v118))
    {
      swift_getObjectType();
      dispatch thunk of TTRIShowRemindersEditableReminderCell.viewModel.getter();

      if (*(&v200 + 1))
      {
        sub_100005FD0(&v199, &v202);
        v124._countAndFlagsBits = 0xD000000000000011;
        v124._object = 0x8000000100678450;
        v125._object = 0x8000000100683920;
        v125._countAndFlagsBits = 0xD000000000000032;
        TTRLocalizedString(_:comment:)(v124, v125);
        v126._countAndFlagsBits = 0xD000000000000012;
        v126._object = 0x8000000100678400;
        v127._countAndFlagsBits = 0xD000000000000034;
        v127._object = 0x8000000100683960;
        TTRLocalizedString(_:comment:)(v126, v127);
        sub_10000C36C(&v202, *(&v203 + 1));
        dispatch thunk of TTRIRemindersListReminderCellViewModel.isCompleted.getter();

        v128 = String._bridgeToObjectiveC()();
        v129 = v182;
        [v182 setTitle:v128];

        v130 = String._bridgeToObjectiveC()();

        [v129 setDiscoverabilityTitle:v130];

LABEL_20:
        sub_100004758(&v202);
        return;
      }
    }

    else
    {
      v201 = 0;
      v199 = 0u;
      v200 = 0u;
    }

    sub_1000079B4(&v199, &qword_100780978);
    return;
  }

  if (static Selector.== infix(_:_:)())
  {
    v131._countAndFlagsBits = 0x5220746E65646E49;
    v131._object = 0xEF7265646E696D65;
    v132._countAndFlagsBits = 0xD000000000000036;
    v132._object = 0x80000001006838A0;
    TTRLocalizedString(_:comment:)(v131, v132);
    v133 = 0x4920746E65646E49;
    v134 = 0xEB000000006D6574;
    v135 = 0x80000001006838E0;
    v136 = 0xD000000000000032;
LABEL_46:
    TTRLocalizedString(_:comment:)(*&v133, *&v136);
    v139 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
    swift_beginAccess();
    (*(v35 + 16))(v38, &v47[v139], v34);
    TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
    (*(v35 + 8))(v38, v34);

    goto LABEL_47;
  }

  if (static Selector.== infix(_:_:)())
  {
    v137._countAndFlagsBits = 0xD000000000000010;
    v137._object = 0x8000000100683800;
    v138._countAndFlagsBits = 0xD000000000000038;
    v138._object = 0x8000000100683820;
    TTRLocalizedString(_:comment:)(v137, v138);
    v133 = 0x20746E656474754FLL;
    v134 = 0xEC0000006D657449;
    v136 = 0xD000000000000034;
    v135 = 0x8000000100683860;
    goto LABEL_46;
  }

  if (static Selector.== infix(_:_:)())
  {
    v140 = v189;
    sub_100383958(v189);
    if ((*(v195 + 48))(v140, 1, v194) == 1)
    {
      v141 = &v209;
LABEL_56:
      sub_1000079B4(*(v141 - 32), &qword_100772140);
      return;
    }

    v143 = v188;
    (*(v195 + 32))(v188, v189, v194);
    v144 = *&v62[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v145 = *&v62[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v62[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v144);
    if ((*(v145 + 80))(v143, v144, v145) == 2)
    {
      v146 = v182;
      *&v202 = [v182 attributes];
      UIMenuElementAttributes.setDisabled(_:)(1);
      [v146 setAttributes:v202];
    }

    else
    {
      v156._countAndFlagsBits = 0xD000000000000025;
      v156._object = 0x80000001006837A0;
      v157._countAndFlagsBits = 1734437958;
      v157._object = 0xE400000000000000;
      TTRLocalizedString(_:comment:)(v157, v156);
      v158._countAndFlagsBits = 0xD000000000000027;
      v159._countAndFlagsBits = 0x67616C666E55;
      v158._object = 0x80000001006837D0;
      v159._object = 0xE600000000000000;
      TTRLocalizedString(_:comment:)(v159, v158);

      v160 = String._bridgeToObjectiveC()();
      v161 = v182;
      [v182 setTitle:v160];

      v162 = String._bridgeToObjectiveC()();

      [v161 setDiscoverabilityTitle:v162];

      *&v202 = [v161 attributes];
      UIMenuElementAttributes.setDisabled(_:)(0);
      [v161 setAttributes:v202];
    }

    v154 = *(v195 + 8);
    v155 = &v208;
    goto LABEL_68;
  }

  if (static Selector.== infix(_:_:)())
  {
    v142 = v187;
    sub_100383958(v187);
    if ((*(v195 + 48))(v142, 1, v194) == 1)
    {
      v141 = &v207;
      goto LABEL_56;
    }

    v150 = v186;
    (*(v195 + 32))(v186, v187, v194);
    v151 = *&v62[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v152 = *&v62[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v62[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v151);
    if ((*(v152 + 224))(v150, v151, v152) != 2)
    {
      static TTRLocalizableStrings.RemindersList.keyCommandTitleForAddingStructuredHashtag(hasExistingStructuredHashtags:)();
      v153 = String._bridgeToObjectiveC()();

      [v182 setDiscoverabilityTitle:v153];
    }

    v154 = *(v195 + 8);
    v155 = &v206;
LABEL_68:
    v154(*(v155 - 32), v194);
    return;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      swift_beginAccess();
      v163 = v185;
      TTRRemindersListViewModel.ListInfo.listLayout.getter();
      swift_endAccess();
      v164 = (*(v197 + 88))(v163, v196);
      if (v164 == enum case for TTRRemindersListLayout.list(_:))
      {
        v165 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
        v166 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
        sub_10000C36C(&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v165);
        v77 = (*(v166 + 1096))(v165, v166);
        goto LABEL_26;
      }

      if (v164 != enum case for TTRRemindersListLayout.columns(_:))
      {
        goto LABEL_94;
      }

LABEL_77:
      v148 = v182;
      *&v202 = [v182 attributes];
      v149 = 1;
      goto LABEL_78;
    }

    if (static Selector.== infix(_:_:)())
    {
      v167 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
      v168 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
      sub_10000C36C(&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v167);
      if ((*(*(v168 + 8) + 8))(v167))
      {
        goto LABEL_62;
      }

      goto LABEL_77;
    }

    if ((static Selector.== infix(_:_:)() & 1) == 0)
    {
      v205.receiver = v47;
      v205.super_class = ObjectType;
      objc_msgSendSuper2(&v205, "validateCommand:", v182);
      return;
    }

    v169 = v184;
    sub_100383958(v184);
    if ((*(v195 + 48))(v169, 1, v194) == 1)
    {
      sub_1000079B4(v184, &qword_100772140);
      goto LABEL_77;
    }

    v170 = v181;
    (*(v195 + 32))(v181, v184, v194);
    v171 = &v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
    v172 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v173 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v62[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], *&v62[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24]);
    if (((*(v173 + 768))(v170, v172, v173) & 1) == 0)
    {
      (*(v195 + 8))(v181, v194);
      goto LABEL_77;
    }

    if ([v182 propertyList])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v199 = 0u;
      v200 = 0u;
    }

    v202 = v199;
    v203 = v200;
    if (*(&v200 + 1))
    {
      if (swift_dynamicCast())
      {
        v174 = v204;
LABEL_93:
        v175 = *(v171 + 3);
        v176 = *(v171 + 4);
        sub_10000C36C(v171, v175);
        v177 = v181;
        v178 = (*(v176 + 760))(v181, v175, v176) == v174;
        v179 = v182;
        *&v202 = [v182 attributes];
        UIMenuElementAttributes.setDisabled(_:)(v178);
        [v179 setAttributes:v202];
        (*(v195 + 8))(v177, v194);
        return;
      }
    }

    else
    {
      sub_1000079B4(&v202, &qword_10076AE40);
    }

    v174 = 0;
    goto LABEL_93;
  }

  swift_beginAccess();
  TTRRemindersListViewModel.ListInfo.listLayout.getter();
  swift_endAccess();
  v147 = (*(v197 + 88))(v30, v196);
  if (v147 == enum case for TTRRemindersListLayout.list(_:))
  {
    goto LABEL_77;
  }

  if (v147 == enum case for TTRRemindersListLayout.columns(_:))
  {
LABEL_62:
    v148 = v182;
    *&v202 = [v182 attributes];
    v149 = 0;
LABEL_78:
    UIMenuElementAttributes.setDisabled(_:)(v149);
    [v148 setAttributes:v202];
    return;
  }

LABEL_94:
  if (qword_100767228 != -1)
  {
    swift_once();
  }

  v180 = type metadata accessor for Logger();
  sub_100003E30(v180, qword_100780830);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown list layout type", 24, 2);
  __break(1u);
}

id sub_100385D2C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_100003540(0, &unk_10076BD00);
  v5._object = 0x8000000100683770;
  v6._countAndFlagsBits = 1701736270;
  v6._object = 0xE400000000000000;
  v5._countAndFlagsBits = 0xD000000000000029;
  TTRLocalizedString(_:comment:)(v6, v5);
  aBlock = 0u;
  v52 = 0u;
  v7 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  *&aBlock = [v7 attributes];
  UIMenuElementAttributes.setDisabled(_:)(0);
  [v7 setAttributes:aBlock];
  v8 = [a1 identifier];
  v9 = static UIDeferredMenuElementIdentifier.moveToSectionIdentifier.getter();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

LABEL_5:

    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v7;
    v53 = sub_1003912A0;
    v54 = v16;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v52 = sub_10010C96C;
    *(&v52 + 1) = &unk_1007241C8;
    v17 = _Block_copy(&aBlock);
    v18 = objc_opt_self();

    v19 = [v18 providerWithElementProvider:v17];
    goto LABEL_6;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_5;
  }

  v22 = v8;
  v23 = static UIDeferredMenuElementIdentifier.moveToListIdentifier.getter();
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {

LABEL_12:

    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v7;
    v53 = sub_100391250;
    v54 = v30;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v52 = sub_10010C96C;
    *(&v52 + 1) = &unk_100724178;
    v17 = _Block_copy(&aBlock);
    v31 = objc_opt_self();

    v19 = [v31 providerWithElementProvider:v17];
    goto LABEL_6;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    goto LABEL_12;
  }

  v32 = v22;
  v33 = static UIDeferredMenuElementIdentifier.tagsIdentifier.getter();
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {

LABEL_17:

    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = v7;
    v53 = sub_100391248;
    v54 = v40;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v52 = sub_10010C96C;
    *(&v52 + 1) = &unk_100724128;
    v17 = _Block_copy(&aBlock);
    v41 = objc_opt_self();

    v19 = [v41 providerWithElementProvider:v17];
    goto LABEL_6;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
    goto LABEL_17;
  }

  v42 = static UIDeferredMenuElementIdentifier.sortByIdentifier.getter();
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;
  if (v43 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v45 == v46)
  {
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v47 & 1) == 0)
    {
      v55.receiver = v2;
      v55.super_class = ObjectType;
      v20 = objc_msgSendSuper2(&v55, "providerForDeferredMenuElement:", a1);

      return v20;
    }
  }

  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = v7;
  v53 = sub_100391240;
  v54 = v49;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v52 = sub_10010C96C;
  *(&v52 + 1) = &unk_1007240D8;
  v17 = _Block_copy(&aBlock);
  v50 = objc_opt_self();

  v19 = [v50 providerWithElementProvider:v17];
LABEL_6:
  v20 = v19;
  _Block_release(v17);

  return v20;
}

uint64_t sub_100386424(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_100383958(v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      sub_1000079B4(v8, &qword_100772140);
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      v15 = *&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
      v16 = *&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
      sub_10000C36C(&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v15);
      v17 = (*(v16 + 1088))(v12, v15, v16);
      if (v17)
      {
        v18 = v17;
        v19 = [v17 children];
        sub_100003540(0, &qword_10076C550);
        v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        a1(v20);

        return (*(v10 + 8))(v12, v9);
      }

      (*(v10 + 8))(v12, v9);
    }
  }

  sub_100058000(&qword_10076B780);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10062D420;
  *(v22 + 32) = a4;
  v23 = a4;
  a1(v22);
}

uint64_t sub_100386704(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_100383958(v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      sub_1000079B4(v8, &qword_100772140);
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      v15 = *&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
      v16 = *&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
      sub_10000C36C(&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v15);
      v17 = (*(v16 + 280))(v12, v15, v16);
      if (v17)
      {
        v18 = v17;
        v19 = [v17 children];
        sub_100003540(0, &qword_10076C550);
        v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        a1(v20);

        return (*(v10 + 8))(v12, v9);
      }

      (*(v10 + 8))(v12, v9);
    }
  }

  sub_100058000(&qword_10076B780);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10062D420;
  *(v22 + 32) = a4;
  v23 = a4;
  a1(v22);
}

uint64_t sub_1003869E4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_100383958(v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      sub_1000079B4(v8, &qword_100772140);
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      v15 = *&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
      v16 = *&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
      sub_10000C36C(&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v15);
      v17 = (*(v16 + 248))(v12, v15, v16);
      if (v17)
      {
        v18 = v17;
        v19 = [v17 children];
        sub_100003540(0, &qword_10076C550);
        v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        a1(v20);

        return (*(v10 + 8))(v12, v9);
      }

      (*(v10 + 8))(v12, v9);
    }
  }

  sub_100058000(&qword_10076B780);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10062D420;
  *(v22 + 32) = a4;
  v23 = a4;
  a1(v22);
}

uint64_t sub_100386CC4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v7 = Strong;
  v8 = (Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
  v9 = v8[3];
  v10 = v8[4];
  sub_10000C36C(v8, v9);
  v11 = (*(v10 + 288))(v9, v10);
  if (!v11)
  {

LABEL_5:
    sub_100058000(&qword_10076B780);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10062D420;
    *(v15 + 32) = a4;
    v16 = a4;
    a1(v15);
  }

  v12 = v11;
  v13 = [v11 children];
  sub_100003540(0, &qword_10076C550);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  a1(v14);
}

uint64_t sub_100386F48()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100383958(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1000079B4(v3, &qword_100772140);
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v10 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v11 = *(v9 + 8);
  ObjectType = swift_getObjectType();
  sub_100058000(&qword_100772150);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D400;
  (*(v5 + 16))(v14 + v13, v7, v4);
  v15 = *(v11 + 216);
  v16 = v10;
  v15(v14, ObjectType, v11);

  swift_setDeallocating();
  v17 = *(v5 + 8);
  v17(v14 + v13, v4);
  swift_deallocClassInstance();
  return (v17)(v7, v4);
}

uint64_t sub_1003871A4()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100383958(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1000079B4(v3, &qword_100772140);
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v10 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v11 = *(v9 + 8);
  ObjectType = swift_getObjectType();
  sub_100058000(&qword_100772150);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D400;
  (*(v5 + 16))(v14 + v13, v7, v4);
  v15 = *(v11 + 208);
  v16 = v10;
  v15(v14, ObjectType, v11);

  swift_setDeallocating();
  v17 = *(v5 + 8);
  v17(v14 + v13, v4);
  swift_deallocClassInstance();
  return (v17)(v7, v4);
}

uint64_t sub_100387400(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_1000079B4(v9, &qword_10076AE40);
}

void sub_1003876D4()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v4 = v2[4];
  sub_10000C36C(v2, v3);
  sub_100207888(0, v3, v4);
  LODWORD(v4) = UIAccessibilityLayoutChangedNotification;
  v5 = v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v6 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v7 = *(v5 + 8);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 64);
  v10 = v6;
  argument = v9(ObjectType, v7);

  UIAccessibilityPostNotification(v4, argument);
}

void sub_1003877D0()
{
  v1 = type metadata accessor for TTREditingStateOption.InputType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v6 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v7 = *(v5 + 8);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 64);
  v10 = v6;
  v11 = v9(ObjectType, v7);

  if (v11 || (v12 = *v5, v13 = *(v5 + 8), v14 = swift_getObjectType(), v15 = *(v13 + 72), v16 = v12, v11 = v15(v14, v13), v16, v11))
  {
    swift_getObjectType();
    (*(v2 + 104))(v4, enum case for TTREditingStateOption.InputType.unspecified(_:), v1);
    dispatch thunk of TTRIShowRemindersEditableCell.beginEditingPrimaryString(_:)();

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_100387B0C()
{
  v1 = v0;
  v2 = type metadata accessor for TTREditingStateOption.InputType();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v30[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100775AB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v30[-1] - v6;
  v8 = (v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
  v9 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v10 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v9);
  (*(v10 + 296))(v30, v9, v10);
  sub_10000C36C(v30, v30[3]);
  dispatch thunk of TTRRemindersListEditingState.editingTarget.getter();
  v11 = sub_100058000(&qword_100775AB8);
  v12 = (*(*(v11 - 8) + 48))(v7, 1, v11);
  sub_1000079B4(v7, &qword_100775AB0);
  if (v12 == 1)
  {
    v13 = v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
    v14 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
    v15 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 64);
    v18 = v14;
    v19 = v17(ObjectType, v15);

    if (v19 || (v20 = *v13, v21 = *(v13 + 8), v22 = swift_getObjectType(), v23 = *(v21 + 72), v24 = v20, v19 = v23(v22, v21), v24, v19))
    {
      swift_getObjectType();
      v25 = v29;
      (*(v29 + 104))(v4, enum case for TTREditingStateOption.InputType.unspecified(_:), v2);
      dispatch thunk of TTRIShowRemindersEditableCell.beginEditingPrimaryString(_:)();

      (*(v25 + 8))(v4, v2);
    }
  }

  else
  {
    v26 = v8[3];
    v27 = v8[4];
    sub_10000C36C(v8, v26);
    (*(v27 + 456))(v26, v27);
  }

  return sub_100004758(v30);
}

void sub_100388074()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0;
  v8 = v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v9 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v10 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 64);
  v13 = v9;
  v14 = v12(ObjectType, v10);

  if (v14 || (v15 = *v8, v16 = *(v8 + 8), v17 = swift_getObjectType(), v18 = *(v16 + 72), v19 = v15, v14 = v18(v17, v16), v19, v14))
  {
    v20 = v7;
    sub_100383958(v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_1000079B4(v3, &qword_100772140);
    }

    else
    {
      v21 = v28;
      (*(v5 + 32))(v28, v3, v4);
      swift_getObjectType();
      v22 = dispatch thunk of TTRIShowRemindersEditableReminderCell.viewForAnchoringPopover.getter();
      if (v22)
      {
        v23 = v22;
        v24 = (v20 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
        v25 = *(v20 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
        v26 = v24[4];
        sub_10000C36C(v24, v25);
        (*(v26 + 120))(v21, v23, v25, v26);

        (*(v5 + 8))(v21, v4);
      }

      else
      {
        (*(v5 + 8))(v21, v4);
      }
    }
  }
}

uint64_t sub_100388348()
{
  v1 = v0;
  v23 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v6 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v7 = *(v5 + 8);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 64);
  v10 = v6;
  v11 = v9(ObjectType, v7);

  if (v11 || (v12 = *v5, v13 = *(v5 + 8), v14 = swift_getObjectType(), v15 = *(v13 + 72), v16 = v12, v11 = v15(v14, v13), v16, v11))
  {
    swift_getObjectType();
    dispatch thunk of TTRIShowRemindersEditableReminderCell.viewModel.getter();

    if (*(&v25 + 1))
    {
      sub_100005FD0(&v24, v27);
      v17 = (v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
      v18 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
      v19 = v17[4];
      sub_10000C36C(v17, v18);
      sub_10000C36C(v27, v28);
      v20 = dispatch thunk of TTRIRemindersListReminderCellViewModel.isCompleted.getter();
      sub_10000C36C(v27, v28);
      dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
      (*(v19 + 48))((v20 & 1) == 0, v4, v18, v19);
      (*(v2 + 8))(v4, v23);
      return sub_100004758(v27);
    }
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
  }

  return sub_1000079B4(&v24, &qword_100780978);
}

uint64_t sub_1003885C0()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100383958(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1000079B4(v3, &qword_100772140);
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v10 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v9);
  sub_100058000(&qword_100772150);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10062D400;
  (*(v5 + 16))(v12 + v11, v7, v4);
  (*(v10 + 744))(v12, v9, v10);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1003887FC()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100383958(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1000079B4(v3, &qword_100772140);
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v10 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v9);
  sub_100058000(&qword_100772150);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10062D400;
  (*(v5 + 16))(v12 + v11, v7, v4);
  (*(v10 + 752))(v12, v9, v10);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100388A38()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100383958(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1000079B4(v3, &qword_100772140);
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = (v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
  v10 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v11 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v10);
  v12 = (*(v11 + 80))(v7, v10, v11);
  if (v12 != 2)
  {
    v13 = v12;
    v14 = v9[3];
    v15 = v9[4];
    sub_10000C36C(v9, v14);
    (*(v15 + 96))(v13 & 1, v7, v14, v15);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_100388C5C(uint64_t a1)
{
  v3 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v3 - 8);
  v5 = v16 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100383958(v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_10000794C(a1, &v19, &qword_10076AE40);
    if (*(&v20 + 1))
    {
      sub_100003540(0, &unk_10076BD00);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_12;
      }

      v12 = v17;
      if ([v17 propertyList])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
      }

      v19 = v17;
      v20 = v18;
      if (*(&v18 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          (*(v7 + 8))(v9, v6);

          return;
        }

        v13 = v16[1];
        v14 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
        v15 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
        sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v14);
        (*(v15 + 776))(v9, v13, v14, v15);

LABEL_12:
        (*(v7 + 8))(v9, v6);
        return;
      }

      (*(v7 + 8))(v9, v6);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v10 = &qword_10076AE40;
    v11 = &v19;
    goto LABEL_15;
  }

  v10 = &qword_100772140;
  v11 = v5;
LABEL_15:
  sub_1000079B4(v11, v10);
}

uint64_t sub_100389228(uint64_t a1, unsigned int *a2)
{
  v4 = type metadata accessor for TTRRemindersListPostponeType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100383958(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000079B4(v10, &qword_100772140);
  }

  (*(v12 + 32))(v14, v10, v11);
  v16 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v17 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v16);
  (*(v5 + 104))(v7, *a2, v4);
  (*(v17 + 704))(v14, v7, v16, v17);
  (*(v5 + 8))(v7, v4);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1003894D4(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  sub_100389228(v7, a4);

  return sub_1000079B4(v9, &qword_10076AE40);
}

uint64_t sub_1003899DC()
{
  v1 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
  v2 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
  sub_10000C36C(&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v1);
  if ([v0 isEditing])
  {
    v3 = &v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    v4 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    v5 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 160);
    v8 = v4;
    v9 = v7(1, ObjectType, v5);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  (*(v2 + 1064))(v9, v1, v2);
}

void sub_100389C08()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListLayout();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  swift_beginAccess();
  TTRRemindersListViewModel.ListInfo.listLayout.getter();
  swift_endAccess();
  v9 = (*(v3 + 88))(v8, v2);
  v10 = enum case for TTRRemindersListLayout.list(_:);
  if (v9 != enum case for TTRRemindersListLayout.list(_:))
  {
    if (v9 == enum case for TTRRemindersListLayout.columns(_:))
    {
      v11 = (v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
      v12 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
      v13 = v11[4];
      sub_10000C36C(v11, v12);
      (*(v3 + 104))(v5, v10, v2);
      (*(v13 + 1072))(v5, v12, v13);
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      if (qword_100767228 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100003E30(v14, qword_100780830);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown list layout type", 24, 2);
      __break(1u);
    }
  }
}

void sub_100389E64()
{
  v1 = type metadata accessor for TTRRemindersListLayout();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  swift_beginAccess();
  TTRRemindersListViewModel.ListInfo.listLayout.getter();
  swift_endAccess();
  v8 = (*(v2 + 88))(v7, v1);
  if (v8 == enum case for TTRRemindersListLayout.list(_:))
  {
    v9 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
    v10 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
    sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v9);
    (*(v2 + 104))(v4, enum case for TTRRemindersListLayout.columns(_:), v1);
    (*(v10 + 1072))(v4, v9, v10);
    (*(v2 + 8))(v4, v1);
  }

  else if (v8 != enum case for TTRRemindersListLayout.columns(_:))
  {
    if (qword_100767228 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100780830);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown list layout type", 24, 2);
    __break(1u);
  }
}

uint64_t sub_10038A0C0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_1000079B4(v9, &qword_10076AE40);
}

uint64_t sub_10038A3F8(uint64_t a1)
{
  v2 = v1;
  v80 = a1;
  v3 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v71 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for TTRTemplatePublicLinkData();
  v75 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100058000(&unk_1007809B0);
  __chkstk_darwin(v69);
  v78 = &v65 - v6;
  v7 = sub_100058000(&qword_1007693B0);
  v8 = __chkstk_darwin(v7 - 8);
  v67 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v74 = &v65 - v11;
  __chkstk_darwin(v10);
  v77 = &v65 - v12;
  v13 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v68 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v76 = &v65 - v18;
  __chkstk_darwin(v17);
  v20 = &v65 - v19;
  v21 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
  swift_beginAccess();
  v22 = *(v14 + 16);
  v82 = v14 + 16;
  v22(v20, &v1[v21], v13);
  TTRRemindersListViewModel.ListInfo.name.getter();
  v23 = *(v14 + 8);
  v23(v20, v13);
  v24 = String._bridgeToObjectiveC()();

  [v2 setTitle:v24];

  v79 = v21;
  v83 = v22;
  v22(v20, &v2[v21], v13);
  v25 = TTRRemindersListViewModel.ListInfo.color.getter();
  v84 = v23;
  v81 = v14 + 8;
  v23(v20, v13);
  v26 = TTRRemindersListViewModel.ListInfo.color.getter();
  sub_100003540(0, &qword_100772610);
  v27 = static NSObject.== infix(_:_:)();

  if ((v27 & 1) == 0)
  {
    sub_10037BE04();
  }

  v28 = v79;
  v83(v20, &v2[v79], v13);
  v29 = TTRRemindersListViewModel.ListInfo.hasDefaultNewReminderButton.getter();
  v84(v20, v13);
  if ((v29 ^ TTRRemindersListViewModel.ListInfo.hasDefaultNewReminderButton.getter()) & 1) != 0 || (v83(v20, &v2[v28], v13), v30 = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter(), v84(v20, v13), ((v30 ^ TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter())) || (v83(v20, &v2[v28], v13), v31 = TTRRemindersListViewModel.ListInfo.shouldAutoCategorizeItems.getter() & 1, v84(v20, v13), v31 != (TTRRemindersListViewModel.ListInfo.shouldAutoCategorizeItems.getter() & 1)))
  {
    sub_10037DD70(1, 0);
  }

  v32 = v76;
  v83(v76, &v2[v28], v13);
  v33 = TTRRemindersListViewModel.ListInfo.collapsedStatesAutosaveName.getter();
  v35 = v34;
  v84(v32, v13);
  v36 = TTRRemindersListViewModel.ListInfo.collapsedStatesAutosaveName.getter();
  v38 = v77;
  v39 = v78;
  if (!v35)
  {
    if (!v37)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!v37)
  {
LABEL_13:

LABEL_14:
    sub_10038AE90();
    goto LABEL_15;
  }

  if (v33 == v36 && v35 == v37)
  {

    goto LABEL_15;
  }

  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v49 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v40 = v79;
  if ((v27 & 1) == 0)
  {
LABEL_26:
    sub_10037CFB0();
    goto LABEL_27;
  }

  v41 = v68;
  v83(v68, &v2[v79], v13);
  TTRRemindersListViewModel.ListInfo.templateStatus.getter();
  v84(v41, v13);
  v42 = v74;
  TTRRemindersListViewModel.ListInfo.templateStatus.getter();
  v43 = *(v69 + 48);
  sub_10000794C(v38, v39, &qword_1007693B0);
  sub_10000794C(v42, v39 + v43, &qword_1007693B0);
  v44 = v38;
  v45 = *(v75 + 48);
  v46 = v70;
  if (v45(v39, 1, v70) == 1)
  {
    sub_1000079B4(v42, &qword_1007693B0);
    v39 = v78;
    sub_1000079B4(v44, &qword_1007693B0);
    v47 = v45(v39 + v43, 1, v46);
    v40 = v79;
    if (v47 == 1)
    {
      sub_1000079B4(v39, &qword_1007693B0);
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v48 = v67;
  sub_10000794C(v39, v67, &qword_1007693B0);
  if (v45(v39 + v43, 1, v46) == 1)
  {
    sub_1000079B4(v74, &qword_1007693B0);
    sub_1000079B4(v77, &qword_1007693B0);
    (*(v75 + 8))(v48, v46);
    v40 = v79;
LABEL_21:
    sub_1000079B4(v39, &unk_1007809B0);
    goto LABEL_26;
  }

  v50 = v75;
  v51 = v39 + v43;
  v52 = v66;
  (*(v75 + 32))(v66, v51, v46);
  sub_1003912B4(&qword_10077C0C8, &type metadata accessor for TTRTemplatePublicLinkData);
  LODWORD(v76) = dispatch thunk of static Equatable.== infix(_:_:)();
  v53 = *(v50 + 8);
  v53(v52, v46);
  sub_1000079B4(v74, &qword_1007693B0);
  sub_1000079B4(v77, &qword_1007693B0);
  v53(v48, v46);
  sub_1000079B4(v39, &qword_1007693B0);
  v40 = v79;
  if ((v76 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_25:
  v83(v20, &v2[v40], v13);
  v54 = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter() & 1;
  v84(v20, v13);
  if (v54 != (TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter() & 1))
  {
    goto LABEL_26;
  }

LABEL_27:
  sub_10037C41C();
  if ([objc_opt_self() deviceSupportsPencil] && (v83(v20, &v2[v40], v13), v55 = v71, TTRRemindersListViewModel.ListInfo.iOS.getter(), v84(v20, v13), v56 = TTRRemindersListViewModel.ListInfo.IOS.hasBottomInsetForPencilInput.getter(), (*(v72 + 8))(v55, v73), (v56 & 1) != 0))
  {
    v57 = 176.0;
  }

  else
  {
    v57 = 0.0;
  }

  v58 = *&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_pencilInputAreaHeight];
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_pencilInputAreaHeight] = v57;
  if (v57 != v58)
  {
    sub_10038B168();
  }

  v59 = *&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
  v60 = *&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8];
  ObjectType = swift_getObjectType();
  v83(v20, &v2[v40], v13);
  v62 = *(v60 + 136);
  v63 = v59;
  v62(v20, ObjectType, v60);

  v84(v20, v13);
  return sub_10037D5CC();
}

id sub_10038AE90()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 isViewLoaded];
  if (result)
  {
    v7 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v1[v7], v2);
    TTRRemindersListViewModel.ListInfo.collapsedStatesAutosaveName.getter();
    v9 = v8;
    (*(v3 + 8))(v5, v2);
    if (v9)
    {
      sub_100058000(&qword_1007809D0);
      v10 = type metadata accessor for TTRUserDefaults();
      v11 = static TTRUserDefaults.appUserDefaults.getter();
      v19[3] = v10;
      v19[4] = &protocol witness table for TTRUserDefaults;
      v19[0] = v11;
      v19[0] = TTRTreeViewCollapsedStatesUserDefaultsPersistence.__allocating_init(autosaveName:userDefaults:)();
      sub_100058000(&unk_1007809C0);
      swift_allocObject();
      sub_10000E188(&qword_1007809D8, &qword_1007809D0);
    }

    else
    {
      sub_100058000(&unk_100781770);
      swift_allocObject();
      v19[0] = TTRTreeViewCollapsedStatesInMemoryPersistence.init()();
      sub_100058000(&unk_1007809C0);
      swift_allocObject();
      sub_10000E188(&unk_100781780, &unk_100781770);
    }

    v12 = TTRAnyTreeViewCollapsedStatesPersisting.init<A>(base:)();
    v13 = &v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    v14 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    v15 = *(v13 + 1);
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 224);

    v18 = v14;
    v17(v12, ObjectType, v15);
  }

  return result;
}

void sub_10038B168()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  if ([v0 isViewLoaded])
  {
    v5 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight;
    v6 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight];
    if (v6 <= 0.0)
    {
      v7 = sub_10037BD64();
      if (v7)
      {

        v8 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarHeight];
        v9 = v8 + *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_pencilInputAreaHeight];
      }

      else
      {
        v9 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_pencilInputAreaHeight];
        v8 = 0.0;
      }

      goto LABEL_15;
    }

    if (v6 >= 100.0)
    {
      v11 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
      v12 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
      sub_10000C36C(&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v11);
      v13 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_cellTitleItemGainingFocus_forKeyboardAvoidance;
      swift_beginAccess();
      sub_10000794C(&v0[v13], v4, &qword_100772140);
      v14 = (*(v12 + 368))(v4, v11, v12);
      sub_1000079B4(v4, &qword_100772140);
      v8 = v6;
      v9 = v6;
      if ((v14 & 1) == 0)
      {
LABEL_15:
        v22 = &v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
        v23 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
        v24 = *(v22 + 1);
        ObjectType = swift_getObjectType();
        v26 = *(v24 + 184);
        v27 = v23;
        v26(v6 <= 0.0, v6 <= 0.0, ObjectType, v24, v9, v8);

        return;
      }

      v15 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
      v16 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8];
      v17 = swift_getObjectType();
      sub_10000794C(&v1[v13], v4, &qword_100772140);
      v18 = *(v16 + 144);
      v19 = v15;
      v20 = v18(v4, v17, v16);

      sub_1000079B4(v4, &qword_100772140);
      if (v20 - *&v1[v5] < 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v20 - *&v1[v5];
      }

      type metadata accessor for TTRAutoCompleteReminderProvider();
      v10 = static TTRAutoCompleteReminderProvider.resultLimit.getter() * 44.0;
      if (v21 * 0.2 < v10)
      {
        v10 = v21 * 0.2;
      }
    }

    else
    {
      v10 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_pencilInputAreaHeight];
    }

    v9 = v6 + v10;
    v8 = v6;
    goto LABEL_15;
  }
}

uint64_t sub_10038B458(double a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10002E9C4(a1, 0.0000000149011612, *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight]);
  if ((result & 1) == 0)
  {
    if (qword_100767228 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003E30(v8, qword_100780830);
    v9 = v1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v25 = v3;
      v13 = v12;
      v14 = swift_slowAlloc();
      v24 = v4;
      v26[0] = v14;
      *v13 = 136315394;
      v15 = Double.description.getter();
      v17 = sub_100004060(v15, v16, v26);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = Double.description.getter();
      v20 = sub_100004060(v18, v19, v26);

      *(v13 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "Update keyboardHeight from %s to %s", v13, 0x16u);
      swift_arrayDestroy();
      v4 = v24;

      v3 = v25;
    }

    sub_10038B168();
    result = [v9 isViewLoaded];
    if (result)
    {
      v21 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
      swift_beginAccess();
      (*(v4 + 16))(v6, &v9[v21], v3);
      v22 = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
      result = (*(v4 + 8))(v6, v3);
      if (v22)
      {
        sub_10038B740();
        sub_100176458();
      }
    }
  }

  return result;
}

uint64_t sub_10038B740()
{
  v1 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController____lazy_storage___autoCategorizationController;
  if (*(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController____lazy_storage___autoCategorizationController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController____lazy_storage___autoCategorizationController);
  }

  else
  {
    type metadata accessor for TTRIAutoCategorizationOverlayController();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 32) = 0;
    v3 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_ttriAccessibilityTimeOfMostRecentChange;
    v4 = type metadata accessor for Date();
    (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
    v5 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_ttriAccessibilityMostRecentChangeSummary;
    v6 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
    (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
    *(v2 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayTimer) = 0;
    *(v2 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController) = 0;
    *(v2 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController__115183495_workaroundOverlayBottomConstraint) = 0;
    *(v2 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController__115183495_alreadyAppliedWorkaround) = 0;
    *(v2 + 24) = &off_100723EC0;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_10038B8A0(void *a1, void *a2, char a3)
{
  v5 = &v3[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
  if (*&v3[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController] != a1)
  {
    v29 = *&v3[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    v28 = *&v3[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    *v5 = a1;
    v5[1] = a2;
    v7 = a1;
    if ([v3 isViewLoaded])
    {
      [v29 willMoveToParentViewController:0];
      sub_10037B998();
      if (a3)
      {
        v8 = 5242880;
      }

      else
      {
        v8 = 0;
      }

      v9 = swift_allocObject();
      *(v9 + 16) = v3;
      v34 = sub_1003904F8;
      v35 = v9;
      aBlock = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = sub_10001047C;
      v33 = &unk_100723F70;
      v10 = _Block_copy(&aBlock);
      v11 = v29;
      v12 = v3;

      v13 = swift_allocObject();
      *(v13 + 16) = v28;
      *(v13 + 32) = v7;
      *(v13 + 40) = a2;
      *(v13 + 48) = v12;
      v34 = sub_100390500;
      v35 = v13;
      aBlock = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = sub_100174F78;
      v33 = &unk_100723FC0;
      v14 = _Block_copy(&aBlock);
      v15 = v7;
      v16 = v11;
      v17 = v12;

      [v17 transitionFromViewController:v16 toViewController:v15 duration:v8 options:v10 animations:v14 completion:0.25];
      _Block_release(v14);
      _Block_release(v10);

      v18 = *v5;
      v19 = v5[1];
      ObjectType = swift_getObjectType();
      v21 = v19[14];
      v22 = v18;
      v21(v17, ObjectType, v19);

      v23 = UIViewController.effectiveNavigationBar.getter();
      if (v23)
      {
        v24 = v23;
        [v23 setNeedsLayout];
      }

      v25 = UIViewController.effectiveNavigationControllerForBars.getter();
      if (v25)
      {
        v26 = v25;
        v27 = [v25 viewIfLoaded];

        [v27 setNeedsLayout];
      }
    }

    else
    {
    }
  }
}