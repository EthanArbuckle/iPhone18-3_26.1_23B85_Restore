uint64_t sub_100239DF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  swift_unknownObjectRelease();
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  swift_unknownObjectRelease();
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  swift_unknownObjectRelease();
  *(a1 + 40) = v10;
  sub_100004758(a1 + 48);
  v11 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v11;
  v12 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v12;

  v13 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);

  v14 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  swift_unknownObjectRelease();
  *(a1 + 112) = v14;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  v15 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRelease();
  *(a1 + 152) = v15;
  sub_100004758(a1 + 160);
  v16 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v16;
  *(a1 + 192) = *(a2 + 192);
  sub_100004758(a1 + 200);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  v17 = *(a2 + 240);
  v18 = *(a2 + 248);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = v17;
  swift_unknownObjectRelease();
  *(a1 + 248) = v18;
  sub_100004758(a1 + 256);
  v19 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v19;
  v20 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  swift_unknownObjectRelease();
  *(a1 + 296) = v20;
  sub_100004758(a1 + 304);
  v21 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v21;
  v22 = *(a2 + 344);
  *(a1 + 336) = *(a2 + 336);
  swift_unknownObjectRelease();
  v23 = *(a2 + 352);
  v24 = *(a2 + 360);
  *(a1 + 344) = v22;
  *(a1 + 352) = v23;
  swift_unknownObjectRelease();
  *(a1 + 360) = v24;
  sub_100004758(a1 + 368);
  v25 = *(a2 + 384);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = v25;
  v26 = *(a2 + 408);
  v27 = *(a2 + 416);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = v26;
  swift_unknownObjectRelease();
  v28 = *(a2 + 424);
  v29 = *(a2 + 432);
  *(a1 + 416) = v27;
  *(a1 + 424) = v28;
  swift_unknownObjectRelease();
  *(a1 + 432) = v29;
  v30 = a3[24];
  v31 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  LODWORD(v29) = v33(a1 + v30, 1, v31);
  v34 = v33(a2 + v30, 1, v31);
  if (!v29)
  {
    if (!v34)
    {
      (*(v32 + 40))(a1 + v30, a2 + v30, v31);
      goto LABEL_7;
    }

    (*(v32 + 8))(a1 + v30, v31);
    goto LABEL_6;
  }

  if (v34)
  {
LABEL_6:
    v35 = sub_100058000(&unk_10076BB50);
    memcpy((a1 + v30), (a2 + v30), *(*(v35 - 8) + 64));
    goto LABEL_7;
  }

  (*(v32 + 32))(a1 + v30, a2 + v30, v31);
  (*(v32 + 56))(a1 + v30, 0, 1, v31);
LABEL_7:
  v36 = a3[25];
  v37 = a1 + v36;
  v38 = a2 + v36;
  sub_100004758(a1 + v36);
  v39 = *(v38 + 16);
  *v37 = *v38;
  *(v37 + 16) = v39;
  *(v37 + 32) = *(v38 + 32);
  v40 = a3[26];
  v41 = a1 + v40;
  v42 = a2 + v40;
  sub_100004758(a1 + v40);
  v43 = *(v42 + 16);
  *v41 = *v42;
  *(v41 + 16) = v43;
  *(v41 + 32) = *(v42 + 32);
  *(a1 + a3[27]) = *(a2 + a3[27]);
  return a1;
}

void sub_10023A178()
{
  sub_100218244(319, &qword_100774300, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t sub_10023A290()
{
  result = qword_100775D78;
  if (!qword_100775D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100775D78);
  }

  return result;
}

uint64_t sub_10023A494()
{
  result = type metadata accessor for TTRITreeViewExpandedState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10023A594(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  v7 = *(v2 + 144);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  (*(*(v2 + 88) + 24))(v3);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10023A6E8()
{
  v1 = v0;
  Strong = swift_weakLoadStrong();

  v4 = 0;
  if (!Strong)
  {
    return v4;
  }

  v5 = v1;
  while (1)
  {
    v6 = __OFADD__(v4++, 1);
    if (v6)
    {
      goto LABEL_23;
    }

    v7 = Strong;
    swift_beginAccess();
    v8 = *(Strong + 64);

    if (Array.endIndex.getter())
    {
      break;
    }

LABEL_3:

LABEL_4:
    Strong = swift_weakLoadStrong();

    v5 = v7;
    if (!Strong)
    {
      return v4;
    }
  }

  v9 = 4;
  while (1)
  {
    v10 = v9 - 4;
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    v12 = *(v8 + 8 * v9);

    v6 = __OFADD__(v10, 1);
    v13 = v9 - 3;
    if (v6)
    {
      goto LABEL_20;
    }

LABEL_10:
    if (v12 == v5)
    {

      goto LABEL_4;
    }

    v14 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_21;
    }

    v15 = sub_10023C1B8(result);

    v6 = __OFADD__(v14, v15);
    v4 = v14 + v15;
    if (v6)
    {
      goto LABEL_22;
    }

    ++v9;
    if (v13 == Array.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  result = _ArrayBuffer._getElementSlowPath(_:)();
  v12 = result;
  v6 = __OFADD__(v10, 1);
  v13 = v9 - 3;
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10023A8CC(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v3 = *v1;
  v4 = type metadata accessor for TTRITreeViewExpandedState();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  swift_beginAccess();
  v26[3] = v2[8];
  v25 = v3;
  type metadata accessor for Array();
  swift_getWitnessTable();
  if ((Collection.isEmpty.getter() & 1) == 0)
  {
    if (qword_100767010 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100775D80);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Expand should begin with no child nodes", v14, 2u);
    }
  }

  v15 = qword_1007A84C0;
  swift_beginAccess();
  (*(v5 + 16))(v10, v2 + v15, v4);
  v23 = *(v5 + 104);
  v23(v8, enum case for TTRITreeViewExpandedState.collapsed(_:), v4);
  sub_10023D4FC();
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v5 + 8);
  v17(v8, v4);
  v17(v10, v4);
  if ((v16 & 1) == 0)
  {
    if (qword_100767010 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003E30(v18, qword_100775D80);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Expand should begin with collapsed state", v21, 2u);
    }
  }

  v23(v10, enum case for TTRITreeViewExpandedState.expanded(_:), v4);
  swift_beginAccess();
  (*(v5 + 40))(v2 + v15, v10, v4);
  swift_endAccess();
  v2[8] = v24;

  v26[0] = Array.init()();
  sub_10023B044(v26);
  sub_10023CA94(sub_10023D494);
  return v26[0];
}

uint64_t sub_10023AD08()
{
  v1 = v0;
  v20[1] = *v0;
  v2 = type metadata accessor for TTRITreeViewExpandedState();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v20 - v7;
  v9 = qword_1007A84C0;
  swift_beginAccess();
  (*(v3 + 16))(v8, v0 + v9, v2);
  v20[0] = *(v3 + 104);
  (v20[0])(v6, enum case for TTRITreeViewExpandedState.expanded(_:), v2);
  sub_10023D4FC();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v6, v2);
  v12 = (v11)(v8, v2);
  if ((v10 & 1) == 0)
  {
    if (qword_100767010 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_100775D80);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Collapse should begin with expanded state", v16, 2u);
    }
  }

  v17 = sub_10023C1B8(v12);
  (v20[0])(v8, enum case for TTRITreeViewExpandedState.collapsed(_:), v2);
  swift_beginAccess();
  (*(v3 + 40))(v1 + v9, v8, v2);
  swift_endAccess();
  v18 = static Array._allocateUninitialized(_:)();
  swift_beginAccess();
  v1[8] = v18;

  v1[5] = 0;
  *(v1 + 48) = 0;
  sub_10023CA94(sub_10023D494);
  return v17;
}

uint64_t sub_10023B044(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRITreeViewExpandedState();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v22 - v9;
  result = Array.count.getter();
  v12 = *(v2 + 24);
  if (*(v2 + 32))
  {
    v12 = -1;
  }

  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v22[0] = result;
  v14 = qword_1007A84C0;
  swift_beginAccess();
  (*(v5 + 16))(v10, v2 + v14, v4);
  (*(v5 + 104))(v8, enum case for TTRITreeViewExpandedState.expanded(_:), v4);
  LOBYTE(v14) = static TTRITreeViewExpandedState.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  if ((v14 & 1) == 0)
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v16 = *(v2 + 64);

  if (!Array.endIndex.getter())
  {
    goto LABEL_14;
  }

  v17 = 4;
  while (1)
  {
    v18 = v17 - 4;
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    v20 = *(v16 + 8 * v17);

    v21 = v17 - 3;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_13;
    }

LABEL_9:
    *(v20 + 24) = v13;
    *(v20 + 32) = 0;
    v22[1] = v20;
    type metadata accessor for Array();

    Array.append(_:)();
    sub_10023B044(a1);

    ++v17;
    if (v21 == Array.endIndex.getter())
    {
      goto LABEL_14;
    }
  }

  v20 = _ArrayBuffer._getElementSlowPath(_:)();
  v21 = v17 - 3;
  if (!__OFADD__(v18, 1))
  {
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
LABEL_14:

LABEL_15:
  result = Array.count.getter();
  if (!__OFSUB__(result, v22[0]))
  {
    *(v2 + 40) = result - v22[0];
    *(v2 + 48) = 0;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10023B340(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRITreeViewExpandedState();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = qword_1007A84C0;
  swift_beginAccess();
  (*(v5 + 16))(v10, v2 + v11, v4);
  (*(v5 + 104))(v8, enum case for TTRITreeViewExpandedState.expanded(_:), v4);
  sub_10023D4FC();
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  if (v11)
  {
    goto LABEL_6;
  }

  if (qword_100767010 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_100775D80);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Remove requires expanded state", v16, 2u);
    }

LABEL_6:
    swift_beginAccess();
    Array.subscript.getter();
    swift_endAccess();
    v17 = sub_10023CB04(a1);
    v18 = sub_10023C1B8(v17);
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    swift_beginAccess();
    type metadata accessor for Array();
    Array.remove(at:)();
    swift_endAccess();

    if ((*(v2 + 48) & 1) == 0)
    {
      break;
    }

LABEL_10:
    sub_10023CA94(sub_10023D494);

    if (__OFADD__(v17, v19))
    {
      goto LABEL_14;
    }

    if (v17 + v19 >= v17)
    {
      return v17;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

  v21 = *(v2 + 40);
  v22 = __OFSUB__(v21, v19);
  v23 = v21 - v19;
  if (!v22)
  {
    *(v2 + 40) = v23;
    *(v2 + 48) = 0;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10023B6B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRITreeViewExpandedState();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29[-1] - v11;
  v13 = qword_1007A84C0;
  swift_beginAccess();
  (*(v7 + 16))(v12, v3 + v13, v6);
  (*(v7 + 104))(v10, enum case for TTRITreeViewExpandedState.expanded(_:), v6);
  sub_10023D4FC();
  LOBYTE(v13) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v12, v6);
  if ((v13 & 1) == 0)
  {
    if (qword_100767010 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_100775D80);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Insert requires expanded state", v18, 2u);
    }
  }

  Strong = swift_weakLoadStrong();
  if (!Strong || (v20 = Strong, , v20 != v3))
  {
    if (qword_100767010 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003E30(v21, qword_100775D80);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Subtree parent is not set correctly before calling insert.", v24, 2u);
    }
  }

  sub_10023CB04(a2);
  v29[3] = a1;
  swift_beginAccess();
  type metadata accessor for Array();

  Array.insert(_:at:)();
  swift_endAccess();
  v29[0] = Array.init()();
  sub_10023C310(v29);
  v25 = v29[0];
  if (*(v3 + 48))
  {
    goto LABEL_17;
  }

  v26 = *(v3 + 40);
  result = Array.count.getter();
  if (!__OFADD__(v26, result))
  {
    *(v3 + 40) = v26 + result;
    *(v3 + 48) = 0;
LABEL_17:
    sub_10023CA94(sub_10023D494);
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_10023BABC(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v33 = a1;
  v34 = a2;
  v32 = *v3;
  v6 = type metadata accessor for TTRITreeViewExpandedState();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v28 - v11;
  v13 = qword_1007A84C0;
  swift_beginAccess();
  v31 = v7[2];
  v31(v12, &v4[v13], v6);
  v14 = v7[13];
  v30 = enum case for TTRITreeViewExpandedState.expanded(_:);
  v29 = v14;
  v14(v10);
  v28[1] = sub_10023D4FC();
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = v7[1];
  v16(v10, v6);
  v16(v12, v6);
  if ((v15 & 1) == 0 || (v17 = qword_1007A84C0, v28[0] = a3, v18 = v34, swift_beginAccess(), v19 = v18 + v17, a3 = v28[0], v31(v12, v19, v6), v29(v10, v30, v6), LOBYTE(v17) = dispatch thunk of static Equatable.== infix(_:_:)(), v16(v10, v6), v16(v12, v6), (v17 & 1) == 0))
  {
    if (qword_100767010 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100003E30(v20, qword_100775D80);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Move requires expanded state", v23, 2u);
    }
  }

  result = a3;
  v25 = v33;
  if (v34 == v4 && (result = a3, v33 < a3) && (result = a3 + 1, __OFADD__(a3, 1)))
  {
    __break(1u);
  }

  else
  {
    sub_10023CB04(result);
    swift_beginAccess();
    Array.subscript.getter();
    v26 = v35;
    swift_endAccess();
    v27 = sub_10023B340(v25);
    swift_weakAssign();
    sub_10023B6B0(v26, a3);

    return v27;
  }

  return result;
}

uint64_t sub_10023BE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = *(*v2 + 80);
  v21 = *(v3 - 8);
  __chkstk_darwin(a1);
  v5 = v20 - v4;
  v7 = *(v6 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = v20 - v9;
  v11 = type metadata accessor for TTRITreeViewExpandedState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 24);
  if (*(v2 + 32))
  {
    v15 = 0;
  }

  v20[1] = v15;
  v16 = qword_1007A84C0;
  swift_beginAccess();
  (*(v12 + 16))(v14, v2 + v16, v11);
  v17 = *(*v2 + 144);
  swift_beginAccess();
  v18 = v21;
  (*(v21 + 16))(v5, v2 + v17, v3);
  (*(v7 + 24))(v3, v7);
  (*(v18 + 8))(v5, v3);
  swift_getAssociatedConformanceWitness();
  _convertToAnyHashable<A>(_:)();
  (*(v22 + 8))(v10, AssociatedTypeWitness);
  return TTRITreeViewCellModel.init(level:expandedState:itemIdentifier:)();
}

uint64_t sub_10023C1B8(uint64_t a1)
{
  if (*(v1 + 48) != 1)
  {
    return *(v1 + 40);
  }

  v4 = 0;
  __chkstk_darwin(a1);
  v3[2] = &v4;
  sub_10023C808(sub_10023D284, v3);
  result = v4;
  *(v1 + 40) = v4;
  *(v1 + 48) = 0;
  return result;
}

uint64_t sub_10023C248()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100775D80);
  v1 = sub_100003E30(v0, qword_100775D80);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10023C310(uint64_t a1)
{
  v2 = v1;
  result = swift_weakLoadStrong();
  if (!result || (v5 = *(result + 24), v6 = *(result + 32), result = , v6 == 1))
  {
    v5 = -1;
  }

  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 24) = v5 + 1;
    *(v2 + 32) = 0;
    type metadata accessor for Array();

    Array.append(_:)();
    return sub_10023B044(a1);
  }

  return result;
}

uint64_t sub_10023C3E0()
{
  swift_weakAssign();
  swift_beginAccess();
  type metadata accessor for Array();
  Array.removeAll(keepingCapacity:)(0);
  return swift_endAccess();
}

uint64_t sub_10023C47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  swift_weakAssign();
  v7 = *(*v3 + 144);
  swift_beginAccess();
  (*(*(*(v6 + 80) - 8) + 24))(v3 + v7, a1);
  swift_endAccess();
  v8 = qword_1007A84C0;
  swift_beginAccess();
  v9 = type metadata accessor for TTRITreeViewExpandedState();
  (*(*(v9 - 8) + 24))(v3 + v8, a3, v9);
  return swift_endAccess();
}

uint64_t sub_10023C5B0(uint64_t a1, void *a2, void (*a3)(uint64_t, void *))
{
  v6 = type metadata accessor for TTRITreeViewExpandedState();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v20[-v11];
  v13 = qword_1007A84C0;
  swift_beginAccess();
  (*(v7 + 16))(v12, a1 + v13, v6);
  (*(v7 + 104))(v10, enum case for TTRITreeViewExpandedState.expanded(_:), v6);
  LOBYTE(v13) = static TTRITreeViewExpandedState.== infix(_:_:)();
  v14 = *(v7 + 8);
  v14(v10, v6);
  result = (v14)(v12, v6);
  if (v13)
  {
    result = swift_beginAccess();
    v16 = *(a1 + 64);
    if (v16 >> 62)
    {
      goto LABEL_14;
    }

    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      while (v17 >= 1)
      {

        v18 = 0;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v19 = *(v16 + 8 * v18 + 32);
          }

          if (__OFADD__(*a2, 1))
          {
            break;
          }

          ++v18;
          ++*a2;
          a3(v19, a2);

          if (v17 == v18)
          {
          }
        }

        __break(1u);
LABEL_14:
        result = _CocoaArrayWrapper.endIndex.getter();
        v17 = result;
        if (!result)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10023C808(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = type metadata accessor for TTRITreeViewExpandedState();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v21[-v10];
  v12 = qword_1007A84C0;
  swift_beginAccess();
  (*(v6 + 16))(v11, v2 + v12, v5);
  (*(v6 + 104))(v9, enum case for TTRITreeViewExpandedState.expanded(_:), v5);
  LOBYTE(v12) = static TTRITreeViewExpandedState.== infix(_:_:)();
  v13 = *(v6 + 8);
  v13(v9, v5);
  result = (v13)(v11, v5);
  if ((v12 & 1) == 0)
  {
    return result;
  }

  swift_beginAccess();
  v15 = *(v2 + 64);

  if (!Array.endIndex.getter())
  {
  }

  for (i = 4; ; ++i)
  {
    v17 = i - 4;
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    v19 = *(v15 + 8 * i);

    v20 = i - 3;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_10;
    }

LABEL_6:
    a1(v19);
    sub_10023C808(a1, a2);

    if (v20 == Array.endIndex.getter())
    {
    }
  }

  v19 = _ArrayBuffer._getElementSlowPath(_:)();
  v20 = i - 3;
  if (!__OFADD__(v17, 1))
  {
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_10023CA94(void (*a1)(uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    do
    {

      a1(v3);
      Strong = swift_weakLoadStrong();
    }

    while (Strong);
  }

  return result;
}

uint64_t sub_10023CB04(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    Array.subscript.getter();
    v1 = swift_endAccess();
    __chkstk_darwin(v1);
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Sequence.reduce<A>(_:_:)();
    swift_unknownObjectRelease();
    return v2;
  }

  return result;
}

uint64_t *sub_10023CC60()
{
  v1 = *v0;
  swift_weakDestroy();

  v2 = qword_1007A84C0;
  v3 = type metadata accessor for TTRITreeViewExpandedState();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 144));
  return v0;
}

uint64_t sub_10023CD30()
{
  sub_10023CC60();

  return swift_deallocClassInstance();
}

void sub_10023CDA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v9 = &v35 - v8;
  if (v2[32])
  {
    countAndFlagsBits = 0;
    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v11 = *(v2 + 3);
  countAndFlagsBits = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    if ((v6 & 1) == 0)
    {
      countAndFlagsBits = 0;
LABEL_8:
      object = 0xE000000000000000;
LABEL_9:
      v15 = 7104878;
      v16 = *(v7 + 144);
      swift_beginAccess();
      (*(v5 + 16))(v9, &v2[v16], v4);
      v17 = (*(*(v3 + 88) + 32))(v4);
      v19 = v18;
      (*(v5 + 8))(v9, v4);
      if (v2[32])
      {
        v20 = 0xE300000000000000;
        v21 = 7104878;
        if ((v2[48] & 1) == 0)
        {
LABEL_11:
          v36 = *(v2 + 5);
          v15 = dispatch thunk of CustomStringConvertible.description.getter();
          v23 = v22;
LABEL_14:
          v36 = 0;
          v37 = 0xE000000000000000;
          _StringGuts.grow(_:)(58);
          v25._countAndFlagsBits = countAndFlagsBits;
          v25._object = object;
          String.append(_:)(v25);

          v26._countAndFlagsBits = 0x3D64692865646F4ELL;
          v26._object = 0xE800000000000000;
          String.append(_:)(v26);
          v35 = *(v2 + 2);
          v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v27);

          v28._countAndFlagsBits = 0x203A6D657469202CLL;
          v28._object = 0xE900000000000022;
          String.append(_:)(v28);
          v29._countAndFlagsBits = v17;
          v29._object = v19;
          String.append(_:)(v29);

          v30._countAndFlagsBits = 0x6C6576656C202C22;
          v30._object = 0xE90000000000003DLL;
          String.append(_:)(v30);
          v31._countAndFlagsBits = v21;
          v31._object = v20;
          String.append(_:)(v31);

          v32._object = 0x8000000100678F80;
          v32._countAndFlagsBits = 0xD000000000000015;
          String.append(_:)(v32);
          v33._countAndFlagsBits = v15;
          v33._object = v23;
          String.append(_:)(v33);

          v34._countAndFlagsBits = 41;
          v34._object = 0xE100000000000000;
          String.append(_:)(v34);
          return;
        }
      }

      else
      {
        v36 = *(v2 + 3);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v20 = v24;
        if ((v2[48] & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v23 = 0xE300000000000000;
      goto LABEL_14;
    }

LABEL_6:
    v12._countAndFlagsBits = 9;
    v12._object = 0xE100000000000000;
    v13 = String.init(repeating:count:)(v12, countAndFlagsBits);
    countAndFlagsBits = v13._countAndFlagsBits;
    object = v13._object;
    v7 = *v2;
    goto LABEL_9;
  }

  __break(1u);
}

Swift::Int sub_10023D178()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(v0 + 16));
  return Hasher._finalize()();
}

Swift::Int sub_10023D204()
{
  Hasher.init(_seed:)();
  sub_10023D138();
  return Hasher._finalize()();
}

void sub_10023D284()
{
  v1 = *(v0 + 16);
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v1;
  }
}

uint64_t sub_10023D2A0()
{
  type metadata accessor for TTRCounterBasedIdentifierGenerator();
  result = TTRCounterBasedIdentifierGenerator.__allocating_init()();
  qword_100775D98 = result;
  return result;
}

uint64_t *sub_10023D2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v3[3] = 0;
  *(v3 + 32) = 1;
  v3[5] = 0;
  *(v3 + 48) = 1;
  swift_weakInit();
  v3[8] = Array.init()();
  if (qword_100767018 != -1)
  {
    swift_once();
  }

  v3[2] = TTRCounterBasedIdentifierGenerator.allocID()();
  swift_weakAssign();
  (*(*(*(v7 + 80) - 8) + 32))(v3 + *(*v3 + 144), a1);
  v8 = qword_1007A84C0;
  v9 = type metadata accessor for TTRITreeViewExpandedState();
  (*(*(v9 - 8) + 32))(v4 + v8, a3, v9);
  return v4;
}

uint64_t sub_10023D494(uint64_t result)
{
  *(result + 40) = 0;
  *(result + 48) = 1;
  return result;
}

void *sub_10023D4A4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = *result + 1;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = sub_10023C1B8(result);
    if (!__OFADD__(v3, result))
    {
      *a2 = result + v3;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10023D4FC()
{
  result = qword_10076B990;
  if (!qword_10076B990)
  {
    type metadata accessor for TTRITreeViewExpandedState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076B990);
  }

  return result;
}

uint64_t sub_10023D554()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100775E20);
  v1 = sub_100003E30(v0, qword_100775E20);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10023D61C()
{
  v1 = type metadata accessor for TTREditSectionsViewModel.OptimisticApply();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C36C((v0 + 88), *(v0 + 112));
  dispatch thunk of TTREditSectionsInteractorType.lastFetchedSections.getter();
  type metadata accessor for TTREditSectionsViewModel();
  TTREditSectionsViewModel.__allocating_init(shouldHideEmptySections:sections:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:)();
  v5 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_optimisticApply;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);

  v6 = TTREditSectionsViewModel.applying(_:)();

  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t sub_10023D7BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentSectionDisplayName + 8);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_initialSectionDisplayName + 8);
  v3 = (v1 | v2) == 0;
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (*(v0 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentSectionDisplayName) == *(v0 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_initialSectionDisplayName) && v1 == v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v6 = *(v0 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_initialSectionOrdering);
  sub_10000C36C((v0 + 88), *(v0 + 112));

  v7 = dispatch thunk of TTREditSectionsInteractorType.currentSectionOrdering.getter();
  if (v6)
  {
    if (v7)
    {
      v8 = sub_100126950(v6, v7);

      v9 = v8 ^ 1;
      goto LABEL_17;
    }
  }

  else if (!v7)
  {
    v9 = 0;
    goto LABEL_17;
  }

  v9 = 1;
LABEL_17:
  if (*(v0 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_hideEmptySectionsToggleChanged))
  {
    v10 = 1;
  }

  else
  {
    v10 = v3 ^ 1 | v9;
  }

  return v10 & 1;
}

uint64_t sub_10023D8F0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListLayout();
  v12 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, v6);
    swift_unknownObjectRelease();
    return (*(v12 + 32))(a1, v5, v3);
  }

  else
  {
    v9 = enum case for TTRRemindersListLayout.list(_:);
    v10 = *(v12 + 104);

    return v10(a1, v9, v3);
  }
}

uint64_t sub_10023DA48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v45 = a3;
  v56 = a2;
  v57 = a1;
  v52 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C36C((v3 + 88), *(v3 + 112));
  result = dispatch thunk of TTREditSectionsInteractorType.lastFetchedSections.getter();
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = v52;
  v63 = *(result + 16);
  if (!v63)
  {
  }

  v15 = 0;
  v48 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_optimisticApply;
  v44 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentRemListSection;
  v43 = (v3 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentCanonicalName);
  v54 = (v3 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_initialSectionDisplayName);
  v61 = v9 + 8;
  v62 = v9 + 16;
  v60 = (v5 + 88);
  v59 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
  v47 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
  v46 = (v5 + 96);
  v50 = v11;
  v51 = v8;
  v49 = result;
  while (v15 < *(v13 + 16))
  {
    (*(v9 + 16))(v11, v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v8);
    REMRemindersListDataView.SectionLite.type.getter();
    (*(v9 + 8))(v11, v8);
    v16 = (*v60)(v7, v14);
    if (v16 == v59)
    {
      v17 = v14;
      (*v46)(v7, v14);
      v18 = *v7;
      v19 = *(v7 + 3);
      v58 = *(v7 + 4);

      sub_10000C36C((v4 + 88), *(v4 + 112));
      v20 = v18;
      v21 = dispatch thunk of TTREditSectionsInteractorType.sectionForUserAction(with:)();
      swift_beginAccess();
      v22 = TTREditSectionsViewModel.OptimisticApply.renamedSections.getter();
      v23 = *(v22 + 16);
      v55 = v19;
      if (v23 && (v24 = sub_1002613B0(v20), (v25 & 1) != 0))
      {
        v26 = (*(v22 + 56) + 16 * v24);
        v27 = v26[1];
        v53 = *v26;
      }

      else
      {

        v53 = 0;
        v27 = 0;
      }

      swift_endAccess();

      v14 = v17;
      if (v21)
      {
        v28 = v4;
        v29 = [v21 displayName];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        if (v30 == v57 && v32 == v56)
        {

          v4 = v28;
          goto LABEL_18;
        }

        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v4 = v28;
        v14 = v52;
        if (v33)
        {

LABEL_18:
          v11 = v50;
          goto LABEL_25;
        }
      }

      if (v27)
      {
        v11 = v50;
        if (v53 == v57 && v27 == v56)
        {

          goto LABEL_25;
        }

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v34)
        {
LABEL_25:
          v35 = *(v4 + v44);
          *(v4 + v44) = v21;
          v36 = v21;

          v37 = v43;
          v38 = v58;
          *v43 = v55;
          v37[1] = v38;

          if (v38)
          {
            v39 = String._bridgeToObjectiveC()();
          }

          else
          {
            v39 = 0;
          }

          v8 = v51;
          [v45 setPlaceholder:v39];

          v14 = v52;
        }

        else
        {

          v8 = v51;
        }
      }

      else
      {

        v11 = v50;
        v8 = v51;
      }

      v13 = v49;
      if (!v54[1])
      {
        v40 = v56;
        v41 = v54;
        *v54 = v57;
        v41[1] = v40;
      }

      goto LABEL_5;
    }

    if (v16 != v47)
    {
      goto LABEL_35;
    }

LABEL_5:
    if (v63 == ++v15)
    {
    }
  }

  __break(1u);
LABEL_35:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_10023DFCC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentRemListSection;
  v5 = *(v3 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentRemListSection);
  if (v5)
  {
    v6 = v3;
    v8 = qword_100767020;
    v9 = v5;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003E30(v10, qword_100775E20);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44();

    v22 = String.validatedSectionName()();
    object = v22.name._object;
    if (v22.isValid)
    {
      countAndFlagsBits = v22.name._countAndFlagsBits;
    }

    else
    {

      if (*(v6 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentCanonicalName + 8))
      {
        countAndFlagsBits = *(v6 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentCanonicalName);
        object = *(v6 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentCanonicalName + 8);
      }

      else
      {
        v13 = [v9 displayName];
        countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        object = v14;
      }

      swift_bridgeObjectRetain_n();
      v15 = String._bridgeToObjectiveC()();
      [a3 setText:v15];
    }

    v16 = [v9 objectID];
    swift_beginAccess();
    v17 = TTREditSectionsViewModel.OptimisticApply.renamedSections.modify();
    sub_10023F078(countAndFlagsBits, object, v16);
    v17(v21, 0);
    swift_endAccess();

    sub_10000C36C((v6 + 88), *(v6 + 112));
    dispatch thunk of TTREditSectionsInteractorType.rename(_:to:)();

    v18._object = 0x8000000100679110;
    v18._countAndFlagsBits = 0xD000000000000019;
    TTRMainActorDeferredAction.scheduleNextRunLoop(reason:)(v18);

    v19 = (v6 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_currentSectionDisplayName);
    *v19 = countAndFlagsBits;
    v19[1] = object;

    v20 = *(v6 + v4);
    *(v6 + v4) = 0;
  }
}

uint64_t sub_10023E27C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100775FD8);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_100058000(&qword_100775FE0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  if (qword_100767020 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_100775E20);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  sub_10001DF64();
  sub_1001288B4();

  OrderedSet.init(_:)();
  (*(v8 + 16))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  swift_beginAccess();
  TTREditSectionsViewModel.OptimisticApply.sectionOrdering.setter();
  swift_endAccess();
  if (!*(v2 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_initialSectionOrdering))
  {
    *(v2 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_initialSectionOrdering) = a2;
  }

  *(v2 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_viewModel) = sub_10023D61C();

  sub_10000C36C((v2 + 88), *(v2 + 112));

  dispatch thunk of TTREditSectionsInteractorType.setSectionOrdering(_:initialOrderedSectionIDs:)();

  return (*(v8 + 8))(v10, v7);
}

void sub_10023E540(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRIPopoverAnchor();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767020 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100775E20);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  if (sub_10023D7BC())
  {
    static TTRLocalizableStrings.Common.confirmationMessageForDiscardingChanges.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [objc_opt_self() alertControllerWithTitle:0 message:v9 preferredStyle:0];

    static TTRLocalizableStrings.Common.alertDiscardChangesButton.getter();
    v11 = swift_allocObject();
    swift_weakInit();

    v12 = String._bridgeToObjectiveC()();
    v26 = a1;
    v13 = v12;

    aBlock[4] = sub_10023F320;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001762CC;
    aBlock[3] = &unk_10071CC38;
    v14 = _Block_copy(aBlock);

    v15 = objc_opt_self();
    v25 = v4;
    v16 = [v15 actionWithTitle:v13 style:2 handler:v14];
    _Block_release(v14);

    [v10 addAction:v16];
    static TTRLocalizableStrings.Common.alertCancelButton.getter();
    v17 = String._bridgeToObjectiveC()();

    v18 = [v15 actionWithTitle:v17 style:1 handler:0];

    [v10 addAction:v18];
    static TTRIPopoverAnchor.barButtonItem(_:permittedArrowDirections:)();
    UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
    (*(v5 + 8))(v7, v25);
    sub_10000C36C((v2 + 48), *(v2 + 72));
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      v21 = [Strong navigationController];

      if (v21)
      {
        [v21 presentViewController:v10 animated:1 completion:0];
      }
    }
  }

  else
  {
    sub_10000C36C((v1 + 48), *(v1 + 72));
    if (qword_1007674C8 != -1)
    {
      swift_once();
    }

    sub_100003E30(v8, qword_100790F18);
    sub_1003F99F4(0x6365532074696445, 0xED0000736E6F6974);
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      v26 = [v22 presentingViewController];

      if (v26)
      {
        [v26 dismissViewControllerAnimated:1 completion:0];
        v24 = v26;
      }
    }
  }
}

uint64_t sub_10023E9E4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10000B0D8(Strong + 88, v6);

    sub_10000C36C(v6, v7);
    dispatch thunk of TTREditSectionsInteractorType.editSectionsDidCancel()();
    sub_100004758(v6);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000B0D8(result + 48, v6);

    sub_10000C36C(v6, v7);
    if (qword_1007674C8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003E30(v2, qword_100790F18);
    sub_1003F99F4(0x6365532074696445, 0xED0000736E6F6974);
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 presentingViewController];

      if (v5)
      {
        [v5 dismissViewControllerAnimated:1 completion:0];
      }
    }

    return sub_100004758(v6);
  }

  return result;
}

uint64_t sub_10023EB7C()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_100004758(v0 + 48);
  sub_100004758(v0 + 88);
  v1 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_list;
  v2 = type metadata accessor for TTRListOrCustomSmartList();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_optimisticApply;
  v4 = type metadata accessor for TTREditSectionsViewModel.OptimisticApply();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_10023ECD8()
{
  sub_10023EB7C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIEditSectionsPresenter()
{
  result = qword_100775EC0;
  if (!qword_100775EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10023ED84()
{
  result = type metadata accessor for TTRListOrCustomSmartList();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTREditSectionsViewModel.OptimisticApply();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_10023EEAC()
{
  v1 = sub_100058000(&qword_100775FD8);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for TTREditSectionsViewModel.OptimisticApply();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100775FE0);
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_10023F1A0(_swiftEmptyArrayStorage);
  TTREditSectionsViewModel.OptimisticApply.init(sectionOrdering:renamedSections:)();
  v9 = OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_optimisticApply;
  swift_beginAccess();
  (*(v5 + 40))(v0 + v9, v7, v4);
  swift_endAccess();
  v10._object = 0x8000000100679110;
  v10._countAndFlagsBits = 0xD000000000000019;
  TTRMainActorDeferredAction.scheduleNextRunLoop(reason:)(v10);
}

uint64_t sub_10023F078(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v11 = sub_1002613B0(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_100549E64(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_1002613B0(a3);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    sub_10001DF64();
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = v11;
    sub_1003AE8BC();
    v11 = v20;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_10054F594(v11, a3, a1, a2, v10);
    v21 = a3;
    result = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = (v10[7] + 16 * v11);
  result = *v18;
  *v18 = a1;
  v18[1] = a2;
LABEL_11:
  *v5 = v10;
  return result;
}

unint64_t sub_10023F1A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_100775FE8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_1002613B0(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10023F2A0()
{
  *(v0 + OBJC_IVAR____TtC9Reminders25TTRIEditSectionsPresenter_viewModel) = sub_10023D61C();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ([result isViewLoaded])
    {
      sub_1002FEDCC();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t type metadata accessor for TTRIRemindersListContentConfigurationCell()
{
  result = qword_100776008;
  if (!qword_100776008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10023F3D8(_BYTE *a1, double a2, double a3, double a4, double a5)
{
  v9 = &a1[qword_100775FF0];
  *v9 = 0;
  v9[1] = 0;
  *&a1[qword_100775FF8] = _swiftEmptyArrayStorage;
  a1[qword_100776000] = 1;
  v12.receiver = a1;
  v12.super_class = type metadata accessor for TTRIRemindersListContentConfigurationCell();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a2, a3, a4, a5);
  sub_10023F8EC();

  return v10;
}

void sub_10023F498(uint64_t a1)
{
  v1 = (a1 + qword_100775FF0);
  *v1 = 0;
  v1[1] = 0;
  *(a1 + qword_100775FF8) = _swiftEmptyArrayStorage;
  *(a1 + qword_100776000) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10023F528(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRIRemindersListIntermediateViewModelObservingCell();
  v17 = method lookup function for TTRIRemindersListIntermediateViewModelObservingCell();
  v17(a1, a2);
  sub_100058000(&unk_10076B040);
  TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
  TTRIRemindersListItemIntermediateViewModel.item.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    (*(v14 + 8))(v16, v13);
    v18 = &qword_100772140;
    v19 = v8;
    return sub_1000079B4(v19, v18);
  }

  (*(v10 + 32))(v12, v8, v9);
  v21 = *(v3 + qword_100775FF0);
  if (v21)
  {

    v21(&v25, v12);
    if (!v26)
    {
      sub_1000301AC(v21);
      (*(v10 + 8))(v12, v9);
      (*(v14 + 8))(v16, v13);
      v18 = &unk_100776060;
      v19 = &v25;
      return sub_1000079B4(v19, v18);
    }

    v24 = v13;
    v22 = v27;
    sub_100005FD0(&v25, v28);
    v29 = v22;
    sub_100005FD0(v28, v30);
    sub_10000B0D8(v30, v28);
    UICollectionViewCell.contentConfiguration.setter();
    v23 = *(v3 + qword_100776000);
    *(v3 + qword_100776000) = v22;
    if (v22 != v23)
    {
      sub_10023F8EC();
    }

    sub_1000301AC(v21);
    sub_100004758(v30);
    (*(v10 + 8))(v12, v9);
    return (*(v14 + 8))(v16, v24);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    return (*(v14 + 8))(v16, v13);
  }
}

void sub_10023F8EC()
{
  v1 = v0;
  if (v0[qword_100776000] > 1u)
  {
    if (v0[qword_100776000] == 2)
    {
      v3 = [v0 layoutMarginsGuide];
      v4 = [v3 leadingAnchor];

      v5 = v4;
      v6 = 0;
    }

    else
    {
      v7 = [v0 layoutMarginsGuide];
      v8 = [v7 leadingAnchor];

      v4 = v8;
      v9 = [v1 layoutMarginsGuide];
      v6 = [v9 trailingAnchor];

      v5 = v6;
    }
  }

  else
  {
    if (v0[qword_100776000])
    {
      v2 = [v0 leadingAnchor];
    }

    else
    {
      v2 = [v0 trailingAnchor];
    }

    v5 = v2;
    v6 = 0;
    v4 = v5;
  }

  v10 = v5;
  v11 = objc_opt_self();
  v12 = qword_100775FF8;
  swift_beginAccess();
  sub_100177300();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 deactivateConstraints:isa];

  sub_100058000(&qword_10076B780);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D420;
  v15 = [v1 separatorLayoutGuide];
  v16 = [v15 leadingAnchor];

  v17 = [v16 constraintEqualToAnchor:v4];
  *(v14 + 32) = v17;
  *&v1[v12] = v14;

  if (v6)
  {
    v18 = [v1 separatorLayoutGuide];
    v19 = [v18 trailingAnchor];

    v20 = [v19 constraintEqualToAnchor:v6];
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v1[v12] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v12] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints:v21];
}

uint64_t sub_10023FC60()
{
  sub_1000301AC(*(v0 + qword_100775FF0));
}

id sub_10023FCA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIRemindersListContentConfigurationCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10023FCDC(uint64_t a1)
{
  sub_1000301AC(*(a1 + qword_100775FF0));
}

unint64_t sub_10023FD48()
{
  result = qword_100776058;
  if (!qword_100776058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100776058);
  }

  return result;
}

BOOL sub_10023FD9C(unint64_t a1, uint64_t a2)
{
  v17 = a2;
  v16 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_15:
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v19 = a1 & 0xC000000000000001;
  v15 = (v3 + 16);
  v7 = (v3 + 8);
  do
  {
    v3 = v6;
    if (v20 == v6)
    {
      break;
    }

    if (v19)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v18 + 16))
      {
        goto LABEL_14;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    sub_100003540(0, &qword_100775690);
    v10 = v16;
    (*v15)(v5, v17, v16);
    v11 = TTRRemindersListViewModel.Reminder.objectID.getter();
    (*v7)(v5, v10);
    v12 = static NSObject.== infix(_:_:)();

    v6 = v3 + 1;
  }

  while ((v12 & 1) == 0);
  return v20 != v3;
}

void *sub_10023FFA0(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(type metadata accessor for TTRRemindersListViewModel.LeadingActionConfiguration() - 8);
  v7 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v20 = *(v6 + 72);
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    result = a1(&v22, v7);
    if (v3)
    {

      return v8;
    }

    v10 = v22;
    v11 = *(v22 + 16);
    v12 = v8[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v13 <= v8[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v8 = sub_100547CB8(isUniquelyReferenced_nonNull_native, v15, 1, v8);
      if (*(v10 + 16))
      {
LABEL_15:
        v16 = (v8[3] >> 1) - v8[2];
        result = type metadata accessor for TTRReminderSwipeAction();
        if (v16 < v11)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v11)
        {
          v17 = v8[2];
          v18 = __OFADD__(v17, v11);
          v19 = v17 + v11;
          if (v18)
          {
            goto LABEL_25;
          }

          v8[2] = v19;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_4:
    v7 += v20;
    if (!--v4)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1002401A8(char a1, uint64_t a2, char a3)
{
  *(v4 + 501) = a3;
  *(v4 + 232) = a2;
  *(v4 + 240) = v3;
  *(v4 + 500) = a1;
  *(v4 + 248) = *v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  *(v4 + 256) = v5;
  *(v4 + 264) = *(v5 - 8);
  *(v4 + 272) = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  *(v4 + 280) = v6;
  *(v4 + 288) = *(v6 - 8);
  *(v4 + 296) = swift_task_alloc();
  v7 = type metadata accessor for DispatchTime();
  *(v4 + 304) = v7;
  *(v4 + 312) = *(v7 - 8);
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  v8 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  *(v4 + 336) = v8;
  *(v4 + 344) = *(v8 - 8);
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  *(v4 + 368) = swift_task_alloc();
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  *(v4 + 376) = v9;
  *(v4 + 384) = *(v9 - 8);
  *(v4 + 392) = swift_task_alloc();
  v10 = type metadata accessor for REMAnalyticsEvent();
  *(v4 + 400) = v10;
  *(v4 + 408) = *(v10 - 8);
  *(v4 + 416) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 424) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 432) = v12;
  *(v4 + 440) = v11;

  return _swift_task_switch(sub_1002404D4, v12, v11);
}

uint64_t sub_1002404D4()
{
  v1 = v0;
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 408);
  v2 = *(v0 + 416);
  v4 = *(v0 + 400);
  v77 = *(v0 + 501);
  v5 = *(v0 + 232);
  v6 = *(v0 + 500);
  v7 = type metadata accessor for Logger();
  v1[56] = sub_100003E30(v7, qword_100776068);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 32) = 0x6574656C706D6F63;
  *(inited + 16) = xmmword_10062D3F0;
  v10 = 1702195828;
  if (!v6)
  {
    v10 = 0x65736C6166;
  }

  *(inited + 40) = 0xE900000000000064;
  *(inited + 48) = v10;
  v11 = 0xE400000000000000;
  if (!v6)
  {
    v11 = 0xE500000000000000;
  }

  *(inited + 56) = v11;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0);
  *(v9 + 96) = v5;

  sub_100008E04(v9);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  type metadata accessor for TTRUserDefaults();
  v1[57] = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v12 = sub_100058000(&qword_1007757E8);
  v13 = (v2 + *(v12 + 48));
  v14 = (v2 + *(v12 + 80));
  v15 = enum case for REMUserOperation.markReminderCompletedUI(_:);
  v16 = type metadata accessor for REMUserOperation();
  (*(*(v16 - 8) + 104))(v2, v15, v16);
  *v13 = TTRUserDefaults.activitySessionId.getter();
  v13[1] = v17;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v14 = _typeName(_:qualified:)();
  v14[1] = v18;
  (*(v3 + 104))(v2, enum case for REMAnalyticsEvent.userOperation(_:), v4);
  REMAnalyticsManager.post(event:)();

  (*(v3 + 8))(v2, v4);
  if (v77)
  {

    v20 = v1[29];
    v19 = v1[30];
    v21 = *(v1 + 500);
    sub_100058000(&qword_100776298);
    v22 = swift_allocBox();
    v24 = v23;
    v25 = sub_100058000(&qword_10076DF30);
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    v26 = static TTRLocalizableStrings.UndoAction.completionChange.getter();
    v28 = v27;
    v29 = swift_task_alloc();
    *(v29 + 16) = v20;
    *(v29 + 24) = v21;
    *(v29 + 32) = v19;
    *(v29 + 40) = v22;
    v30 = sub_1002597AC(v20, v26, v28, sub_100262920, v29);

    if (v30 >= 1)
    {
      TTRDebouncedAction.schedule()();
    }

    v31 = v1[57];
    if (*(v1 + 500) == 1)
    {
      v32 = v1 + 18;
      v34 = v1[39];
      v33 = v1[40];
      v35 = v1[38];
      v68 = v1[37];
      v69 = v1[41];
      v75 = v1[36];
      v76 = v1[35];
      v36 = v1;
      v37 = v1[34];
      v73 = v36[33];
      v71 = v36[32];
      v72 = v31;
      v38 = v36[30];
      sub_100003540(0, &qword_100777780);
      v70 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v39 = *(v34 + 8);
      v39(v33, v35);
      v36[22] = sub_100262930;
      v36[23] = v38;
      v36[18] = _NSConcreteStackBlock;
      v36[19] = 1107296256;
      v36[20] = sub_10001047C;
      v36[21] = &unk_10071CEF8;
      v40 = _Block_copy(v32);

      static DispatchQoS.unspecified.getter();
      v36[28] = _swiftEmptyArrayStorage;
      sub_10026263C(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100058000(&qword_100780A50);
      sub_10000E188(&qword_10076B7E0, &qword_100780A50);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

      _Block_release(v40);
      v41 = v37;
      v1 = v36;
      (*(v73 + 8))(v41, v71);
      (*(v75 + 8))(v68, v76);
      v39(v69, v35);
    }

    else
    {
    }

    v53 = v1[1];

    return v53(v30 > 0);
  }

  else
  {
    v42 = v1[29];
    v43 = *(v42 + 16);
    if (v43)
    {
      v44 = v1[48];
      swift_getObjectType();
      v45 = *(v44 + 16);
      v44 += 16;
      v74 = v45;
      v46 = v42 + ((*(v44 + 64) + 32) & ~*(v44 + 64));
      v47 = *(v44 + 56);
      v48 = (v44 - 8);
      do
      {
        v49 = v1[49];
        v50 = v1;
        v51 = v1[47];
        v74(v49, v46, v51);
        v52 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
        (*v48)(v49, v51);
        if (v52)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        v46 += v47;
        --v43;
        v1 = v50;
      }

      while (v43);
    }

    v1[58] = _swiftEmptyArrayStorage;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v55 = v1[30];
      v56 = *(v55 + 24);
      ObjectType = swift_getObjectType();
      v58 = (*(v56 + 32))(v55, ObjectType, v56);
      v60 = v59;
      swift_unknownObjectRelease();
    }

    else
    {
      v58 = 0;
      v60 = 0;
    }

    v1[59] = v58;
    v61 = v1[45];
    v62 = v1[46];
    v63 = *(v1[30] + 72);
    v64 = swift_getObjectType();
    (*(v63 + 16))(v64, v63);
    v65 = *(v61 + 20);
    *(v1 + 124) = v65;
    v66 = swift_task_alloc();
    v1[60] = v66;
    *v66 = v1;
    v66[1] = sub_100240DF4;
    v67 = *(v1 + 500);

    return TTRSetReminderCompletedPresenterCapability.presenterUserConfirmation(forSettingCompletedTo:reminders:completionBehavior:with:)(v67, _swiftEmptyArrayStorage, v62 + v65, v58, v60);
  }
}

uint64_t sub_100240DF4(char a1)
{
  v4 = *v2;
  *(v4 + 488) = v1;

  v5 = *(v4 + 496);
  v6 = *(v4 + 368);
  if (v1)
  {
    v7 = type metadata accessor for TTRReminderListCompletionBehavior();
    (*(*(v7 - 8) + 8))(v6 + v5, v7);
    v8 = *(v4 + 432);
    v9 = *(v4 + 440);
    v10 = sub_100241448;
  }

  else
  {
    *(v4 + 502) = a1 & 1;
    v11 = type metadata accessor for TTRReminderListCompletionBehavior();
    (*(*(v11 - 8) + 8))(v6 + v5, v11);
    v8 = *(v4 + 432);
    v9 = *(v4 + 440);
    v10 = sub_100240FC8;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_100240FC8()
{
  v1 = *(v0 + 502);

  if (v1)
  {
    swift_unknownObjectRelease();
    v3 = *(v0 + 232);
    v2 = *(v0 + 240);
    v4 = *(v0 + 500);
    sub_100058000(&qword_100776298);
    v5 = swift_allocBox();
    v7 = v6;
    v8 = sub_100058000(&qword_10076DF30);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = static TTRLocalizableStrings.UndoAction.completionChange.getter();
    v11 = v10;
    v12 = swift_task_alloc();
    *(v12 + 16) = v3;
    *(v12 + 24) = v4;
    *(v12 + 32) = v2;
    *(v12 + 40) = v5;
    v13 = sub_1002597AC(v3, v9, v11, sub_100262920, v12);

    v14 = v13 > 0;
    if (v13 >= 1)
    {
      TTRDebouncedAction.schedule()();
    }

    if (*(v0 + 500) == 1)
    {
      v15 = *(v0 + 320);
      v16 = *(v0 + 304);
      v17 = *(v0 + 312);
      v29 = *(v0 + 296);
      v30 = *(v0 + 328);
      v35 = *(v0 + 288);
      v36 = *(v0 + 280);
      v32 = *(v0 + 272);
      v33 = *(v0 + 456);
      v18 = *(v0 + 256);
      v34 = *(v0 + 264);
      v19 = *(v0 + 240);
      sub_100003540(0, &qword_100777780);
      v31 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v20 = *(v17 + 8);
      v20(v15, v16);
      *(v0 + 176) = sub_100262930;
      *(v0 + 184) = v19;
      *(v0 + 144) = _NSConcreteStackBlock;
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_10001047C;
      *(v0 + 168) = &unk_10071CEF8;
      v21 = _Block_copy((v0 + 144));

      static DispatchQoS.unspecified.getter();
      *(v0 + 224) = _swiftEmptyArrayStorage;
      sub_10026263C(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100058000(&qword_100780A50);
      sub_10000E188(&qword_10076B7E0, &qword_100780A50);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

      _Block_release(v21);
      (*(v34 + 8))(v32, v18);
      (*(v35 + 8))(v29, v36);
      v20(v30, v16);
    }

    else
    {
    }
  }

  else
  {
    v22 = *(v0 + 456);
    v24 = *(v0 + 344);
    v23 = *(v0 + 352);
    v25 = *(v0 + 336);
    v26 = *(v0 + 232);
    static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
    sub_1004F1000(v23, v26);

    swift_unknownObjectRelease();
    (*(v24 + 8))(v23, v25);
    v14 = 0;
  }

  v27 = *(v0 + 8);

  return v27(v14);
}

uint64_t sub_100241448()
{
  v16 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136446210;
    swift_getErrorValue();
    v5 = Error.rem_errorDescription.getter();
    v7 = sub_100004060(v5, v6, &v15);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "TTRRemindersListPresenterCapability: error setting completed {error: %{public}s}", v3, 0xCu);
    sub_100004758(v4);
  }

  else
  {
  }

  v8 = v0[57];
  v10 = v0[43];
  v9 = v0[44];
  v11 = v0[42];
  v12 = v0[29];
  static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
  sub_1004F1000(v9, v12);

  swift_unknownObjectRelease();
  (*(v10 + 8))(v9, v11);

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_10024167C()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  isEscapingClosureAtFileLocation = *(v3 - 1);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_100776068);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10026263C(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
  v9 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  result = (*(isEscapingClosureAtFileLocation + 88))(v6, v3);
  if (result != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    goto LABEL_7;
  }

  (*(isEscapingClosureAtFileLocation + 96))(v6, v3);
  v13 = v24;
  v12 = v25;
  (*(v24 + 32))(v2, v6, v25);
  v14 = v23;
  v15 = *(v23 + 72);
  ObjectType = swift_getObjectType();
  v17 = TTRRemindersListViewModel.ReminderID.objectID.getter();
  v18 = (*(v15 + 256))(v17, ObjectType, v15);

  if (!v18)
  {
    return (*(v13 + 8))(v2, v12);
  }

  static TTRLocalizableStrings.UndoAction.addSiriSuggestedReminder.getter();
  v19 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();

  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  *(v20 + 24) = v18;
  v6 = swift_allocObject();
  *(v6 + 2) = sub_1002628DC;
  *(v6 + 3) = v20;
  aBlock[4] = sub_100068444;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_10071CED0;
  v21 = _Block_copy(aBlock);

  v22 = v18;

  [v19 withActionName:v3 block:v21];
  _Block_release(v21);

  (*(v13 + 8))(v2, v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_7:
    if (result == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || result == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      return (*(isEscapingClosureAtFileLocation + 8))(v6, v3);
    }

    else if (result != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  return result;
}

BOOL sub_100241BB8(uint64_t a1)
{
  v3 = type metadata accessor for TTRSectionID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100253A84(a1);
  if (v10 <= 1u)
  {
    if (!v10)
    {

      return 1;
    }

    v12 = 1;
LABEL_15:
    sub_1002625C0(v7, v8, v9, v12);
    return 1;
  }

  v11 = v7;
  if (v10 != 2)
  {
    if (v10 != 3)
    {
      return 0;
    }

    v12 = 3;
    goto LABEL_15;
  }

  v13 = v8;

  v14 = *(v11 + 16);

  result = v14 != 0;
  if (!v14 && (v13 & 1) != 0)
  {
    v16 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    if ((*(v16 + 104))(ObjectType, v16))
    {
      (*(v4 + 104))(v6, enum case for TTRSectionID.sectionless(_:), v3);
      v18 = sub_1002E3A40(v6, 0);
      swift_unknownObjectRelease();
      (*(v4 + 8))(v6, v3);
      if (!(v18 >> 62))
      {
LABEL_11:
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:

        return v19 != 0;
      }
    }

    else
    {
      v18 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_11;
      }
    }

    v19 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100241DC4(uint64_t a1, char a2)
{
  *(v3 + 272) = a2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  *(v3 + 168) = v4;
  *(v3 + 176) = *(v4 - 8);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 208) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 216) = v6;
  *(v3 + 224) = v5;

  return _swift_task_switch(sub_100241ED4, v6, v5);
}

uint64_t sub_100241ED4()
{
  v75 = v0;
  if (qword_100767028 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v1 = v0[19];
    v66 = type metadata accessor for Logger();
    sub_100003E30(v66, qword_100776068);
    sub_100058000(&unk_100775610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 1835365481;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 72) = sub_100058000(&qword_10076E0B0);
    *(inited + 48) = v1;

    sub_100008E04(inited);
    swift_setDeallocating();
    sub_1000079B4(inited + 32, &unk_10076BA70);
    sub_10000FD44();

    v6 = sub_100253A84(v1);
    v7 = v3;
    v8 = v4;
    v0[29] = v6;
    v0[30] = v3;
    v0[31] = v4;
    if (v5 > 1u)
    {
      break;
    }

    if (!v5)
    {
      sub_1002537A4(v3);
      v25 = swift_task_alloc();
      v0[32] = v25;
      *v25 = v0;
      v25[1] = sub_100242798;
      v26 = *(v0 + 272);

      return sub_1002552B0(v6, v7, v8 & 1, v26);
    }

    sub_1002537A4(v6);
    v30 = *(v6 + 16);
    if (!v30)
    {
      v29 = 1;
      v55 = v6;
      v56 = v7;
      v57 = v8;
LABEL_35:
      sub_1002625C0(v55, v56, v57, 1u);
      goto LABEL_36;
    }

    v62 = v7;
    v64 = v8;
    v31 = v0[22];
    v32 = *(v31 + 16);
    v31 += 16;
    v68 = v32;
    v60 = v6;
    v33 = v6 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v71 = (v31 - 8);
    v73 = *(v0[20] + 128);
    v67 = *(v31 + 56);
    while (1)
    {
      v39 = v0[25];
      v68(v39, v33, v0[21]);
      v40 = *(v73 + 40);
      ObjectType = swift_getObjectType();
      v42 = (*(v40 + 440))(v39, ObjectType, v40);
      (*(v40 + 400))(v39, ObjectType, v40);
      if (v42)
      {
        if (qword_1007673E0 != -1)
        {
          swift_once();
        }

        v69 = v30;
        sub_100003E30(v66, qword_100788800);

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = v0[24];
          v46 = v0[21];
          v47 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v74 = v65;
          *v47 = 136315138;
          TTRRemindersListEditingSessionState.item.getter();
          sub_10026263C(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
          v48 = TTRTreeStorageItem.treeItemDescription.getter();
          v50 = v49;
          (*v71)(v45, v46);
          v51 = sub_100004060(v48, v50, &v74);

          *(v47 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v43, v44, "TTRReminderListEditingPresenter: register undo for discarding uncommitted reminder {item: %s}", v47, 0xCu);
          sub_100004758(v65);
        }

        v34 = objc_opt_self();
        static TTRLocalizableStrings.UndoAction.deleteReminder.getter();
        v35 = String._bridgeToObjectiveC()();

        v36 = swift_allocObject();
        *(v36 + 16) = v73;
        *(v36 + 24) = v42;
        v37 = swift_allocObject();
        *(v37 + 16) = sub_100262634;
        *(v37 + 24) = v36;
        v0[16] = sub_100068444;
        v0[17] = v37;
        v0[12] = _NSConcreteStackBlock;
        v0[13] = 1107296256;
        v0[14] = sub_100026440;
        v0[15] = &unk_10071CDE0;
        v38 = _Block_copy(v0 + 12);

        swift_unknownObjectRetain();

        [v34 withActionName:v35 block:v38];

        _Block_release(v38);
        LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

        v30 = v69;
        if (v35)
        {
          break;
        }
      }

      (*v71)(v0[25], v0[21]);
      v33 += v67;
      if (!--v30)
      {
        v29 = 1;
        v55 = v60;
        v56 = v62;
        v57 = v64;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  if (v5 != 2)
  {
    if (v5 == 3)
    {

      sub_1002537A4(v6);
      v9 = *(v6 + 16);
      if (v9)
      {
        v61 = v7;
        v63 = v8;
        v10 = v0[22];
        v11 = *(v0[20] + 128);
        v12 = *(v10 + 16);
        v10 += 16;
        v72 = v12;
        v59 = v6;
        v13 = v6 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
        v14 = *(v10 + 56);
        v15 = (v10 - 8);
        v70 = v11;
        v12(v0[23], v13, v0[21]);
        while (1)
        {
          v16 = *(v11 + 40);
          v17 = swift_getObjectType();
          v18 = (*(v16 + 104))(v17, v16);
          if (v18)
          {
            v19 = v18;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v20 = v14;
              v21 = v0[23];
              v22 = *(v19 + 64);
              v23 = swift_getObjectType();
              v24 = v21;
              v14 = v20;
              v11 = v70;
              (*(v22 + 56))(v24, v23, v22);
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
          }

          (*v15)(v0[23], v0[21]);
          v13 += v14;
          if (!--v9)
          {
            break;
          }

          v72(v0[23], v13, v0[21]);
        }

        v52 = v59;
        v53 = v61;
        v54 = v63;
      }

      else
      {
        v52 = v6;
        v53 = v7;
        v54 = v8;
      }

      sub_1002625C0(v52, v53, v54, 3u);
      v29 = 1;
    }

    else
    {

      v29 = 0;
    }

LABEL_36:

    v58 = v0[1];

    return v58(v29);
  }

  sub_1002537A4(v4);
  v28 = swift_task_alloc();
  v0[33] = v28;
  *v28 = v0;
  v28[1] = sub_100242AD4;

  return sub_1002559A0(v6, v7 & 1, v8);
}

uint64_t sub_100242798(char a1)
{
  v2 = *v1;
  *(*v1 + 273) = a1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return _swift_task_switch(sub_1002428E4, v4, v3);
}

uint64_t sub_1002428E4()
{
  v1 = *(v0 + 273);

  if (v1 == 1 && (*(v0 + 272) & 1) == 0)
  {
    v2 = *(v0 + 160);
    *(v0 + 144) = *(v0 + 232);
    sub_100058000(&qword_10076BB08);
    sub_100003540(0, &qword_100776230);
    sub_10000E188(&unk_1007758B0, &qword_10076BB08);
    sub_1000072CC(&qword_100776238, &qword_100776230);
    v3 = Sequence.compactMapToSet<A>(_:)();

    sub_10000C36C((v2 + 184), *(v2 + 208));
    sub_1000E987C(v3);

    dispatch thunk of TTRPrivacyChecker.showReminderDeletePrivacyWarningIfNeeded(for:)();
  }

  else
  {
  }

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_100242AD4(char a1)
{
  v2 = *v1;
  *(*v1 + 274) = a1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return _swift_task_switch(sub_100242C3C, v4, v3);
}

uint64_t sub_100242C3C()
{

  v1 = *(v0 + 274);

  v2 = *(v0 + 8);

  return v2(v1);
}

Swift::Int sub_100242CC8(char a1, Swift::OpaquePointer a2)
{
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100776068);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  v6 = inited;
  *(inited + 32) = 0x64656767616C66;
  *(inited + 16) = xmmword_10062D3F0;
  v7 = a1 & 1;
  v8 = 1702195828;
  if (!v7)
  {
    v8 = 0x65736C6166;
  }

  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v8;
  v9 = 0xE400000000000000;
  if (!v7)
  {
    v9 = 0xE500000000000000;
  }

  *(inited + 56) = v9;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0);
  *(v6 + 96) = a2;

  sub_100008E04(v6);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  return TTRRemindersListPresenterCapabilityCore.request(setFlaggedTo:for:)(v7, a2);
}

uint64_t sub_100242E78(uint64_t a1, uint64_t a2)
{
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100776068);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x6E6F697461636F6CLL;
  *(inited + 40) = 0xEF72656767697254;
  v12[5] = a1;
  sub_100058000(&qword_1007762D8);
  *(inited + 48) = Optional.descriptionOrNil.getter();
  *(inited + 56) = v6;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0);
  *(inited + 96) = a2;

  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  v7 = static TTRLocalizableStrings.UndoAction.locationChange.getter();
  v9 = v8;
  __chkstk_darwin(v7);
  v12[2] = a1;
  sub_1002597AC(a2, v10, v9, sub_100262A50, v12);
}

uint64_t sub_100243084(uint64_t a1, uint64_t a2)
{
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100776068);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  strcpy((inited + 32), "vehicleTrigger");
  *(inited + 47) = -18;
  sub_100058000(&qword_1007762D0);
  *(inited + 48) = Optional.descriptionOrNil.getter();
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0);
  *(inited + 96) = a2;

  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  return TTRRemindersListPresenterCapabilityCore.request(setVehicleTriggerTo:for:)();
}

uint64_t sub_100243288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_100776068);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 32) = 0x67617468736168;
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0);
  *(inited + 96) = a3;

  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  return a6(a1, a2, a3);
}

uint64_t sub_10024343C(uint64_t a1, uint64_t a2)
{
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100776068);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x7367617468736168;
  *(inited + 40) = 0xE800000000000000;
  v6 = sub_100058000(&qword_1007762A0);
  *(inited + 48) = a1;
  *(inited + 72) = v6;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0);
  *(inited + 96) = a2;

  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  return TTRRemindersListPresenterCapabilityCore.request(updateHashtagsToMatch:for:)();
}

uint64_t sub_1002435DC()
{
  v35 = type metadata accessor for REMRemindersListBatchDeleteInvocation.CompletionDatePredicate();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v2 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v34 = v32 - v4;
  v5 = type metadata accessor for REMRemindersListBatchDeleteInvocation.ListType();
  v37 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v32 - v9;
  v11 = sub_100058000(&qword_100776388);
  v12 = *(*(type metadata accessor for TTRRemindersListViewModel.DeleteCompletedMenuItem() - 8) + 72);
  v32[1] = v11;
  v32[2] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10062D400;
  v14._countAndFlagsBits = 0xD00000000000002ELL;
  v15._countAndFlagsBits = 0x706D6F43206C6C41;
  v15._object = 0xED0000646574656CLL;
  v14._object = 0x8000000100679AF0;
  v16._object = 0x8000000100679B20;
  v16._countAndFlagsBits = 0xD000000000000031;
  TTRLocalizedString(_:value:comment:)(v14, v15, v16);
  v36 = v13;
  TTRRemindersListViewModel.DeleteCompletedMenuItem.init(title:olderThanMonths:)();
  v17 = *(v0 + 72);
  ObjectType = swift_getObjectType();
  if (!(*(v17 + 56))(ObjectType, v17))
  {
    return v36;
  }

  swift_getObjectType();
  dispatch thunk of TTRRemindersListDataModelSourceDeleteCompletedContextType.listForBatchDelete.getter();
  swift_unknownObjectRelease();
  (*(v37 + 32))(v10, v7, v5);
  swift_getObjectType();
  dispatch thunk of TTRRemindersListInteractorType.completionDatePredicateForDeletingCompletedReminders(in:)();
  v32[0] = v5;
  v19 = v33;
  (*(v33 + 32))(v34, v2, v35);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10062F800;
  v21._countAndFlagsBits = 0xD000000000000012;
  v21._object = 0x8000000100679B60;
  v22._object = 0x8000000100679B20;
  v22._countAndFlagsBits = 0xD000000000000031;
  TTRLocalizedString(_:comment:)(v21, v22);
  TTRRemindersListViewModel.DeleteCompletedMenuItem.init(title:olderThanMonths:)();
  v23._countAndFlagsBits = 0xD000000000000013;
  v23._object = 0x8000000100679B80;
  v24._object = 0x8000000100679B20;
  v24._countAndFlagsBits = 0xD000000000000031;
  TTRLocalizedString(_:comment:)(v23, v24);
  TTRRemindersListViewModel.DeleteCompletedMenuItem.init(title:olderThanMonths:)();
  v25._countAndFlagsBits = 0xD000000000000011;
  v25._object = 0x8000000100679BA0;
  v26._object = 0x8000000100679B20;
  v26._countAndFlagsBits = 0xD000000000000031;
  TTRLocalizedString(_:comment:)(v25, v26);
  v27 = TTRRemindersListViewModel.DeleteCompletedMenuItem.init(title:olderThanMonths:)();
  __chkstk_darwin(v27);
  v28 = v34;
  v32[-2] = v34;
  sub_1004B4D00(sub_100263308, &v32[-4], v20);
  v38 = v29;
  sub_100081628(v36);
  (*(v37 + 8))(v10, v32[0]);
  v30 = v38;
  (*(v19 + 8))(v28, v35);
  return v30;
}

uint64_t sub_100243BE4(uint64_t a1)
{
  v3 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  result = (*(v6 + 104))(ObjectType, v6);
  if (!result)
  {
    return result;
  }

  v9 = sub_1002E2EA8()[2];

  if (!v9 || (v17[1] = a1, sub_100058000(&qword_10076E0B0), sub_100003540(0, &qword_10076BA50), sub_10000E188(&unk_100784560, &qword_10076E0B0), (v10 = Sequence.completeCompactMap<A>(_:)()) == 0))
  {
LABEL_12:
    swift_unknownObjectRelease();
    return 0;
  }

  if (v10 >> 62)
  {
    v15 = v10;
    v16 = _CocoaArrayWrapper.endIndex.getter();
    v10 = v15;
    if (v16)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_6:
  v11 = sub_10001D5F8(v10);

  sub_1002E28FC(v11);

  (*(v6 + 152))(ObjectType, v6);
  v12 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    sub_1000079B4(v5, &unk_10078A380);
  }

  else
  {
    TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
    (*(v13 + 8))(v5, v12);
  }

  v14 = sub_1002E2EA8();
  sub_1002E31CC();
  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_100243ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v70 = a3;
  v71 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100058000(&unk_100775620);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = v60 - v8;
  v9 = sub_100058000(&unk_100775960);
  __chkstk_darwin(v9 - 8);
  v64 = v60 - v10;
  v63 = type metadata accessor for TTRSection();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRSectionID();
  v75 = *(v12 - 8);
  __chkstk_darwin(v12);
  v74 = (v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType(0);
  __chkstk_darwin(v14 - 8);
  v77 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for TTRRemindersListViewModel.Item();
  v78 = *(v82 - 8);
  __chkstk_darwin(v82);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003E30(v18, qword_100776068);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x6E6F6974636573;
  *(inited + 40) = 0xE700000000000000;
  sub_10026263C(&qword_100776318, &type metadata accessor for TTRSectionID);
  v72 = a2;
  v76 = v12;
  *(inited + 48) = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 56) = v20;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0);
  *(inited + 96) = a1;

  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  v21 = _swiftEmptyArrayStorage;
  v83 = _swiftEmptyArrayStorage;
  v22 = *(a1 + 16);
  v73 = v4;
  if (v22)
  {
    v23 = *(v4 + 64);
    v80 = *(v4 + 72);
    v81 = v23;
    ObjectType = swift_getObjectType();
    v24 = v78 + 16;
    v78 = *(v78 + 16);
    v25 = a1 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v26 = *(v24 + 56);
    v27 = (v24 - 8);
    do
    {
      v28 = v82;
      (v78)(v17, v25, v82);
      v29 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
      (*v27)(v17, v28);
      if (v29)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v60[1] = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v21 = v83;
      }

      v25 += v26;
      --v22;
    }

    while (v22);
  }

  v30 = v21;
  if (v21 >> 62)
  {
    v59 = _CocoaArrayWrapper.endIndex.getter();
    v32 = v77;
    v33 = v76;
    v34 = v75;
    v35 = v74;
    if (v59)
    {
      goto LABEL_12;
    }
  }

  v31 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v32 = v77;
  v33 = v76;
  v34 = v75;
  v35 = v74;
  if (!v31)
  {
  }

LABEL_12:
  v36 = sub_100058000(&qword_100776320);
  v37 = *(*(v36 - 8) + 56);
  v37(v32, 2, 2, v36);
  (*(v34 + 16))(v35, v72, v33);
  v38 = (*(v34 + 88))(v35, v33);
  if (v38 == enum case for TTRSectionID.sectioned(_:))
  {
    (*(v34 + 96))(v35, v33);
    v39 = *v35;
    v40 = *(v73 + 72);
    v41 = swift_getObjectType();
    v42 = (*(v40 + 104))(v41, v40);
    if (v42)
    {
      v43 = v42;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v44 = *(v43 + 64);
        v45 = swift_getObjectType();
        (*(v44 + 16))(v45, v44);
        swift_unknownObjectRelease();
        v46 = v64;
        TTRSection.init(with:store:)();
        swift_unknownObjectRelease();
        sub_100262C74(v32, type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType);
        v47 = v62;
        v48 = v63;
        if ((*(v62 + 48))(v46, 1, v63) == 1)
        {

          return sub_1000079B4(v46, &unk_100775960);
        }

        v57 = *(v47 + 32);
        v58 = v61;
        v57(v61, v46, v48);
        v57(v32, v58, v48);
        v49 = 0;
LABEL_19:
        v37(v32, v49, 2, v36);
        v50 = v66;
        v51 = v65;
        v52 = v67;
        (*(v66 + 104))(v65, enum case for TTRRelativeInsertionPosition.afterAll<A>(_:), v67);
        v53 = *(v73 + 72);
        v54 = swift_getObjectType();
        v55 = v68;
        (*(v53 + 576))(v54, v53);
        sub_1002599EC(v30, v32, v51, v55, v70);

        (*(v69 + 8))(v55, v71);
        (*(v50 + 8))(v51, v52);
        return sub_100262C74(v32, type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType);
      }

      swift_unknownObjectRelease();

      sub_100262C74(v32, type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType);
    }

    else
    {
      sub_100262C74(v32, type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType);
    }

    v46 = v64;
    (*(v62 + 56))(v64, 1, 1, v63);
    return sub_1000079B4(v46, &unk_100775960);
  }

  if (v38 == enum case for TTRSectionID.sectionless(_:))
  {
    sub_100262C74(v32, type metadata accessor for TTRRemindersListPresenterCapability.TargetSectionType);
    v49 = 1;
    goto LABEL_19;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100244974()
{
  v1 = v0;
  v2 = *(v0 + 72);
  ObjectType = swift_getObjectType();
  v4 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.reminderChangeItem(forEditing:)();
  v5 = v4;
  if (v4)
  {
    v4 = sub_100003540(0, &qword_1007756E0);
    v6 = &protocol witness table for REMReminderChangeItem;
  }

  else
  {
    v6 = 0;
  }

  v41[0] = v5;
  v41[1] = 0;
  v41[2] = 0;
  v41[3] = v4;
  v41[4] = v6;
  sub_10000794C(v41, &v37, &qword_1007699B8);
  if (v38)
  {
    sub_100005FD0(&v37, v39);
    sub_10000C36C(v39, v40);
    dispatch thunk of TTRReminderProtocol.ttrList.getter();
    if (v33)
    {
      sub_10000C36C(v32, v33);
      dispatch thunk of TTRListProtocol.ttrGroceryContext.getter();
      sub_100004758(v32);
      if (*(&v35 + 1))
      {
        sub_100005FD0(&v34, &v37);
        sub_10000C36C(&v37, v38);
        if (dispatch thunk of TTRListGroceryContextProtocol.ttrShouldCategorizeGroceryItems.getter())
        {
          v7 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_reminderIDsPreviouslyShownWithSuggestedSection;
          swift_beginAccess();
          v8 = *(v1 + v7);
          sub_10000C36C(v39, v40);

          v9 = dispatch thunk of TTRReminderProtocol.objectID.getter();
          v10 = sub_1000A9F28(v9, v8);

          if (v10)
          {
            if (qword_100767028 != -1)
            {
              swift_once();
            }

            v11 = type metadata accessor for Logger();
            sub_100003E30(v11, qword_100776068);
            v12 = Logger.logObject.getter();
            v13 = static os_log_type_t.info.getter();
            if (!os_log_type_enabled(v12, v13))
            {
              goto LABEL_40;
            }

            v14 = swift_slowAlloc();
            *v14 = 0;
            v15 = "CheckBeforeFetchingSuggestedSection: Shouldn't fetch suggested section for reminder that was previously shown a suggested section in this session";
          }

          else
          {
            if ((*(v2 + 120))(ObjectType, v2))
            {
              swift_getObjectType();
              v25 = dispatch thunk of TTRRemindersListDataModelSourceNewReminderContextType.newlyInsertedReminderIDs.getter();
              sub_10000C36C(v39, v40);
              v26 = dispatch thunk of TTRReminderProtocol.objectID.getter();
              v27 = sub_1000A9F28(v26, v25);

              if (v27)
              {
                sub_10000C36C(v39, v40);
                if ((TTRReminderProtocol.isSubtask.getter() & 1) == 0)
                {
                  sub_10025AD2C();

                  PassthroughSubject.send(_:)();
                  swift_unknownObjectRelease();

                  goto LABEL_41;
                }

                if (qword_100767028 != -1)
                {
                  swift_once();
                }

                v28 = type metadata accessor for Logger();
                sub_100003E30(v28, qword_100776068);
                v12 = Logger.logObject.getter();
                v29 = static os_log_type_t.info.getter();
                if (!os_log_type_enabled(v12, v29))
                {

                  swift_unknownObjectRelease();
                  goto LABEL_41;
                }

                v30 = swift_slowAlloc();
                *v30 = 0;
                _os_log_impl(&_mh_execute_header, v12, v29, "CheckBeforeFetchingSuggestedSection: Shouldn't fetch suggested section for subtask", v30, 2u);

                swift_unknownObjectRelease();
LABEL_40:

LABEL_41:
                sub_1000079B4(v41, &qword_1007699B8);
                sub_100004758(&v37);
                return sub_100004758(v39);
              }

              swift_unknownObjectRelease();
            }

            if (qword_100767028 != -1)
            {
              swift_once();
            }

            v31 = type metadata accessor for Logger();
            sub_100003E30(v31, qword_100776068);
            v12 = Logger.logObject.getter();
            v13 = static os_log_type_t.info.getter();
            if (!os_log_type_enabled(v12, v13))
            {
              goto LABEL_40;
            }

            v14 = swift_slowAlloc();
            *v14 = 0;
            v15 = "CheckBeforeFetchingSuggestedSection: Shouldn't fetch suggested section for reminder that wasn't recently created";
          }

          _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);

          goto LABEL_40;
        }

        sub_100004758(&v37);
LABEL_21:
        if (qword_100767028 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_100003E30(v21, qword_100776068);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v22, v23, "CheckBeforeFetchingSuggestedSection: Shouldn't fetch suggested section in list that doesn't support categorization of grocery items", v24, 2u);
        }

        sub_1000079B4(v41, &qword_1007699B8);
        return sub_100004758(v39);
      }
    }

    else
    {
      sub_1000079B4(v32, &unk_100775680);
      v34 = 0u;
      v35 = 0u;
      v36 = 0;
    }

    sub_1000079B4(&v34, &qword_1007757E0);
    goto LABEL_21;
  }

  sub_1000079B4(&v37, &qword_1007699B8);
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003E30(v16, qword_100776068);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "CheckBeforeFetchingSuggestedSection: Couldn't get reminder for item", v19, 2u);
  }

  return sub_1000079B4(v41, &qword_1007699B8);
}

void sub_100245068(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v1;
    v5 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_suggestedSectionCanonicalNameByReminderID;
    v6 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
    v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    do
    {
      v9 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
      if (!v9)
      {
        break;
      }

      v10 = v9;
      swift_beginAccess();
      if (*(v3 + v5))
      {
        v11 = v10;
        v12 = sub_1002613B0(v11);
        if (v13)
        {
          v14 = v12;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v16 = *(v3 + v5);
          *(v3 + v5) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1003AE8BC();
          }

          sub_1003ACBC4(v14, v16);

          *(v3 + v5) = v16;
        }

        else
        {
        }
      }

      swift_endAccess();

      v7 += v8;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1002451DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 72);
  ObjectType = swift_getObjectType();
  (*(v7 + 496))(&v23, a2, a3, ObjectType, v7);
  if (v24)
  {
    sub_100005FD0(&v23, v26);
    v9 = sub_10057EEDC();
    if (v9)
    {
      v10 = v9;
      v11 = v27;
      v12 = v28;
      sub_10000C36C(v26, v27);
      (*(v12 + 32))(&v23, v10, v11, v12);

      v14 = v24;
      v13 = v25;
      sub_10000C36C(&v23, v24);
      LOBYTE(v14) = (v13[2])(v14, v13) ^ 1;
LABEL_10:
      sub_100004758(&v23);
      sub_100004758(v26);
      return v14 & 1;
    }

    sub_100004758(v26);
  }

  else
  {
    sub_1000079B4(&v23, &qword_100775A10);
  }

  v14 = (*(v7 + 104))(ObjectType, v7);
  if (v14)
  {
    sub_1002E5744(a2, a3, &v23);
    if (v24)
    {
      sub_100005FD0(&v23, v26);
      *&v23 = a1;
      sub_100058000(&qword_10076E0B0);
      sub_100058000(&qword_10076F9F8);
      sub_10000E188(&unk_100784560, &qword_10076E0B0);
      v15 = Sequence.completeCompactMap<A>(_:)();
      if (v15)
      {
        v16 = v15;
        v17 = *sub_10000C36C(v26, v27);
        v18 = type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.SectionsInsertionPlan(0);
        v19 = swift_allocObject();
        *(v19 + 16) = _swiftEmptyArrayStorage;
        *(v19 + 24) = 1;
        v20 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan____lazy_storage___position;
        v21 = sub_100058000(&unk_100775A30);
        (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
        *(v19 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_filteredMoveSubjects) = 0;
        *(v19 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_filteredLocalItems) = 0;
        *(v19 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_insertionRequest) = v17;

        sub_100156D70(v16);

        v24 = v18;
        v25 = &off_1007182F0;
        swift_unknownObjectRelease();
        *&v23 = v19;
        LOBYTE(v14) = *(*sub_10000C36C(&v23, v18) + 24) ^ 1;
        goto LABEL_10;
      }

      swift_unknownObjectRelease();
      sub_100004758(v26);
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1000079B4(&v23, &unk_100775A20);
    }

    LOBYTE(v14) = 0;
  }

  return v14 & 1;
}

BOOL sub_100245568(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v13 = &v19 - v11;
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  (*(v7 + 16))(&v19 - v11, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6, v12);
  v14 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  (*(v14 + 16))(ObjectType, v14);
  v16 = v5[*(v3 + 32)];
  sub_100262C74(v5, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    (*(v7 + 32))(v9, v13, v6);
    v17 = (*(v7 + 88))(v9, v6) == enum case for TTRRemindersListViewModel.Item.reminder(_:);
    v13 = v9;
  }

  (*(v7 + 8))(v13, v6);
  return v17;
}

uint64_t sub_10024579C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 72);
  ObjectType = swift_getObjectType();
  (*(v4 + 504))(&v11, a2, ObjectType, v4);
  if (v12)
  {
    sub_100005FD0(&v11, v14);
    v6 = sub_10057EEDC();
    if (v6)
    {
      v7 = v15;
      v8 = v16;
      sub_10000C36C(v14, v15);
      (*(v8 + 32))(&v11, v6, v7, v8);

      v6 = v12;
      v9 = v13;
      sub_10000C36C(&v11, v12);
      LOBYTE(v6) = (*(v9 + 16))(v6, v9) ^ 1;
      sub_100004758(&v11);
    }

    sub_100004758(v14);
  }

  else
  {
    sub_1000079B4(&v11, &qword_100775A10);
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

uint64_t sub_1002458E8(uint64_t a1)
{
  v219 = a1;
  v2 = type metadata accessor for DateComponents();
  v208 = *(v2 - 8);
  v209 = v2;
  __chkstk_darwin(v2);
  v206 = &v192 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = v3;
  __chkstk_darwin(v4);
  v207 = &v192 - v5;
  v205 = type metadata accessor for TTRSection();
  v202 = *(v205 - 8);
  __chkstk_darwin(v205);
  v200 = &v192 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_10076DF30);
  __chkstk_darwin(v7 - 8);
  v199 = &v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v212 = &v192 - v10;
  __chkstk_darwin(v11);
  v201 = &v192 - v12;
  __chkstk_darwin(v13);
  v198 = &v192 - v14;
  v15 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
  v213 = *(v15 - 8);
  v214 = v15;
  __chkstk_darwin(v15);
  v192 = &v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v211 = &v192 - v18;
  __chkstk_darwin(v19);
  v194 = &v192 - v20;
  __chkstk_darwin(v21);
  v193 = &v192 - v22;
  v23 = sub_100058000(&unk_100775620);
  v221 = *(v23 - 1);
  v222 = v23;
  __chkstk_darwin(v23);
  v196 = &v192 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v197 = &v192 - v26;
  __chkstk_darwin(v27);
  v29 = &v192 - v28;
  __chkstk_darwin(v30);
  v203 = &v192 - v31;
  __chkstk_darwin(v32);
  v34 = &v192 - v33;
  __chkstk_darwin(v35);
  v37 = &v192 - v36;
  __chkstk_darwin(v38);
  v40 = &v192 - v39;
  v41 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
  __chkstk_darwin(v41);
  v195 = &v192 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = (&v192 - v44);
  __chkstk_darwin(v46);
  v48 = (&v192 - v47);
  v49 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v217 = *(v49 - 8);
  v218 = v49;
  __chkstk_darwin(v49);
  v210 = &v192 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v53 = &v192 - v52;
  v216 = v1;
  v54 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  v56 = *(v54 + 576);
  v220 = v53;
  v215 = ObjectType;
  v56(ObjectType, v54);
  v57 = v219;
  sub_100262D10(v219, v48, type metadata accessor for TTRRemindersListMovingRemindersParams);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v59 = *v48;
  if (EnumCaseMultiPayload <= 3)
  {
    v206 = v40;
    v207 = v37;
    v78 = v211;
    v77 = v212;
    v208 = v34;
    v209 = v59;
    if (EnumCaseMultiPayload > 1)
    {
      v92 = v221;
      if (EnumCaseMultiPayload == 2)
      {

        v93 = sub_100058000(&qword_100773398);
        v94 = v92;
        v95 = v93;
        v96 = *(v93 + 64);
        v212 = *(v48 + *(v93 + 80));
        v97 = v48 + v96;
        v98 = v94;
        v99 = v222;
        (v94[4])(v208, v97, v222);
        sub_100262D10(v57, v45, type metadata accessor for TTRRemindersListMovingRemindersParams);
        v100 = swift_getEnumCaseMultiPayload();
        if (v100 == 2)
        {

          v155 = *(v95 + 64);

          (v98)[1](v45 + v155, v99);
        }

        else
        {
          sub_100262C74(v45, type metadata accessor for TTRRemindersListMovingRemindersParams);
        }

        v83 = v217;
        v84 = v218;
        v156 = v99;
        v157 = v198;
        (*(v54 + 608))(v215, v54);
        v158 = v213;
        if ((*(v213 + 48))(v157, 1, v214) == 1)
        {

          sub_1000079B4(v157, &qword_10076DF30);
          v159 = v208;
        }

        else
        {
          LODWORD(v218) = v100 != 2;
          v169 = v193;
          v170 = (*(v158 + 32))();
          v219 = &v192;
          __chkstk_darwin(v170);
          v159 = v208;
          v171 = v209;
          *(&v192 - 8) = v216;
          *(&v192 - 7) = v171;
          v172 = v212;
          *(&v192 - 6) = v159;
          *(&v192 - 5) = v172;
          *(&v192 - 32) = v218;
          *(&v192 - 3) = v220;
          *(&v192 - 2) = v169;

          sub_1002614C8(v173, sub_100263028, (&v192 - 10));
          swift_bridgeObjectRelease_n();

          v156 = v222;
          v174 = v210;
          (*(v83 + 104))(v210, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v84);
          (*(v54 + 592))(v174, 0, v215, v54);
          (*(v83 + 8))(v174, v84);
          (*(v158 + 8))(v169, v214);
        }

        (v221)[1](v159, v156);
        v71 = 0;
        v76 = 0;
        v74 = 1;
        goto LABEL_41;
      }

      v124 = v48[1];
      v125 = v48 + *(sub_100058000(&qword_10076E908) + 64);
      v126 = v29;
      v127 = v29;
      v128 = v222;
      (v92[4])(v127, v125, v222);
      (*(v54 + 616))(v124, v215, v54);
      v130 = v213;
      v129 = v214;
      if ((*(v213 + 48))(v77, 1, v214) == 1)
      {

        sub_1000079B4(v77, &qword_10076DF30);
        v83 = v217;
        v84 = v218;
        v131 = v126;
        v86 = v220;
      }

      else
      {
        v164 = v78;
        v165 = (*(v130 + 32))(v78, v77, v129);
        __chkstk_darwin(v165);
        v166 = v209;
        *(&v192 - 6) = v216;
        *(&v192 - 5) = v166;
        *(&v192 - 4) = v126;
        *(&v192 - 24) = 0;
        v167 = v126;
        v86 = v220;
        *(&v192 - 2) = v220;
        *(&v192 - 1) = v164;

        sub_1002614C8(v168, sub_100262FE4, (&v192 - 8));
        swift_bridgeObjectRelease_n();

        (*(v130 + 8))(v164, v129);
        v83 = v217;
        v84 = v218;
        v131 = v167;
      }

      (v221)[1](v131, v128);
LABEL_49:
      v71 = 0;
      v76 = 0;
      v74 = 1;
      goto LABEL_50;
    }

    v79 = v221;
    if (!EnumCaseMultiPayload)
    {
      v219 = v48[1];
      v80 = sub_100058000(&qword_100776370);
      v81 = *(v48 + *(v80 + 80));
      v82 = v206;
      (v79[4])(v206, v48 + *(v80 + 64), v222);
      v83 = v217;
      v84 = v218;
      v85 = v210;
      (*(v217 + 104))(v210, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v218);
      v86 = v220;
      v87 = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
      v88 = (*(v83 + 8))(v85, v84);
      if (v87)
      {
        __chkstk_darwin(v88);
        v89 = v209;
        *(&v192 - 6) = v216;
        *(&v192 - 5) = v89;
        v90 = v219;
        *(&v192 - 4) = v219;
        *(&v192 - 3) = v82;
        *(&v192 - 2) = v81;

        sub_1002614C8(v91, sub_100264838, (&v192 - 8));
LABEL_29:

        swift_bridgeObjectRelease_n();

        (v79)[1](v82, v222);
        goto LABEL_49;
      }

      v90 = v219;
      v151 = (*(v54 + 624))(v219, v86, v215, v54);
      if (v151)
      {
        v215 = &v192;
        __chkstk_darwin(v151);
        v152 = v209;
        *(&v192 - 6) = v216;
        *(&v192 - 5) = v152;
        v82 = v206;
        *(&v192 - 4) = v90;
        *(&v192 - 3) = v82;
        *(&v192 - 2) = v81;
        *(&v192 - 1) = v153;

        sub_1002614C8(v154, sub_100263098, (&v192 - 8));

        goto LABEL_29;
      }

      (v79)[1](v206, v222);
      v74 = 0;
      v71 = 0;
LABEL_53:
      v76 = 0;
      goto LABEL_50;
    }

    v116 = v48[1];
    v117 = sub_100058000(&qword_100776368);
    v118 = v207;
    (v79[4])(v207, v48 + *(v117 + 64), v222);
    v83 = v217;
    v84 = v218;
    v119 = v210;
    (*(v217 + 104))(v210, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v218);
    v86 = v220;
    v120 = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
    v121 = (*(v83 + 8))(v119, v84);
    if (v120)
    {
      __chkstk_darwin(v121);
      v122 = v209;
      *(&v192 - 4) = v216;
      *(&v192 - 3) = v122;
      *(&v192 - 2) = v116;
      *(&v192 - 1) = v118;

      sub_1002614C8(v123, sub_100264834, (&v192 - 6));
    }

    else
    {
      v160 = [v116 list];
      v71 = (*(v54 + 624))();

      if (!v71)
      {

        (v79)[1](v207, v222);
        v74 = 0;
        goto LABEL_53;
      }

      __chkstk_darwin(v161);
      v162 = v209;
      *(&v192 - 6) = v216;
      *(&v192 - 5) = v162;
      v118 = v207;
      *(&v192 - 4) = v116;
      *(&v192 - 3) = v118;
      *(&v192 - 2) = v71;

      sub_1002614C8(v163, sub_100264830, (&v192 - 8));
    }

    swift_bridgeObjectRelease_n();
    (v79)[1](v118, v222);
    goto LABEL_49;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v209 = *v48;
    v101 = v221;
    if (EnumCaseMultiPayload == 4)
    {

      v102 = sub_100058000(&qword_100776360);
      v103 = v222;
      (v101[4])(v203, v48 + *(v102 + 64), v222);
      v104 = v195;
      sub_100262D10(v57, v195, type metadata accessor for TTRRemindersListMovingRemindersParams);
      LODWORD(v219) = swift_getEnumCaseMultiPayload();
      if (v219 == 2)
      {

        v175 = *(sub_100058000(&qword_100773398) + 64);

        v101[1](v104 + v175, v103);
      }

      else
      {
        sub_100262C74(v104, type metadata accessor for TTRRemindersListMovingRemindersParams);
      }

      v83 = v217;
      v84 = v218;
      v86 = v220;
      v177 = v213;
      v176 = v214;
      v178 = v201;
      (*(v54 + 608))(v215, v54);
      if ((*(v177 + 48))(v178, 1, v176) == 1)
      {

        sub_1000079B4(v178, &qword_10076DF30);
        v179 = v203;
      }

      else
      {
        LODWORD(v219) = v219 != 2;
        v186 = v194;
        v187 = (*(v177 + 32))();
        __chkstk_darwin(v187);
        v188 = v209;
        *(&v192 - 6) = v216;
        *(&v192 - 5) = v188;
        v179 = v203;
        *(&v192 - 4) = v203;
        *(&v192 - 24) = v219;
        *(&v192 - 2) = v220;
        *(&v192 - 1) = v186;

        sub_1002614C8(v189, sub_100262FF0, (&v192 - 8));
        swift_bridgeObjectRelease_n();
        v190 = v210;
        (*(v83 + 104))(v210, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v84);
        (*(v54 + 592))(v190, 0, v215, v54);
        (*(v83 + 8))(v190, v84);
        v191 = v186;
        v101 = v221;
        (*(v177 + 8))(v191, v214);
        v86 = v220;
      }

      (v101)[1](v179, v222);
    }

    else
    {
      v143 = v48[1];

      v144 = v48 + *(sub_100058000(&qword_100776358) + 80);
      v145 = v197;
      (v101[4])(v197, v144, v222);
      v146 = v199;
      v147 = v215;
      (*(v54 + 608))(v215, v54);
      v149 = v213;
      v148 = v214;
      if ((*(v213 + 48))(v146, 1, v214) == 1)
      {

        sub_1000079B4(v146, &qword_10076DF30);
        v150 = v145;
        v83 = v217;
        v84 = v218;
      }

      else
      {
        v180 = v192;
        v181 = (*(v149 + 32))(v192, v146, v148);
        __chkstk_darwin(v181);
        v182 = v143;
        v183 = v209;
        *(&v192 - 6) = v216;
        *(&v192 - 5) = v183;
        *(&v192 - 4) = v182;
        *(&v192 - 3) = v145;
        *(&v192 - 2) = v220;
        *(&v192 - 1) = v180;

        sub_1002614C8(v184, sub_10026482C, (&v192 - 8));
        swift_bridgeObjectRelease_n();
        v150 = v145;
        v83 = v217;
        v84 = v218;
        v185 = v210;
        (*(v217 + 104))(v210, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v218);
        (*(v54 + 592))(v185, 0, v147, v54);

        (*(v83 + 8))(v185, v84);
        (*(v213 + 8))(v180, v214);
      }

      v86 = v220;
      (v101)[1](v150, v222);
    }

    goto LABEL_49;
  }

  v60 = v221;
  if (EnumCaseMultiPayload == 6)
  {
    v105 = *v48;
    v106 = sub_100058000(&qword_100773378);
    v107 = v106[16];
    v108 = *(v48 + v106[20]);
    v109 = v202;
    v110 = v200;
    (*(v202 + 32))(v200, v48 + v106[12], v205);
    v111 = v48 + v107;
    v112 = v196;
    v113 = v222;
    v114 = (v60[4])(v196, v111, v222);
    LOBYTE(aBlock) = 0;
    __chkstk_darwin(v114);
    *(&v192 - 8) = &aBlock;
    *(&v192 - 7) = v216;
    *(&v192 - 6) = v105;
    *(&v192 - 5) = v110;
    *(&v192 - 4) = v112;
    v86 = v220;
    *(&v192 - 3) = v220;
    *(&v192 - 2) = v108;

    sub_1002614C8(v115, sub_100264828, (&v192 - 10));
    swift_bridgeObjectRelease_n();

    v74 = aBlock;
    (v60)[1](v112, v113);
    (*(v109 + 8))(v110, v205);
    v71 = 0;
    v76 = 0;
    v83 = v217;
    v84 = v218;
LABEL_50:
    (*(v83 + 8))(v86, v84);
    sub_1000301AC(v71);
    sub_1000301AC(v76);
    return v74;
  }

  v61 = *v48;
  if (EnumCaseMultiPayload == 7)
  {
    v62 = sub_100058000(&qword_100776350);
    v63 = v208;
    v64 = v209;
    v65 = *(v208 + 4);
    v66 = v207;
    v65(v207, v48 + *(v62 + 48), v209);
    v222 = objc_opt_self();
    static TTRLocalizableStrings.UndoAction.dueDateChange.getter();
    v221 = String._bridgeToObjectiveC()();

    v67 = v206;
    (*(v63 + 2))(v206, v66, v64);
    v68 = (v63[80] + 32) & ~v63[80];
    v69 = swift_allocObject();
    *(v69 + 16) = v216;
    *(v69 + 24) = v61;
    v65((v69 + v68), v67, v64);
    v70 = swift_allocObject();
    v71 = sub_100264824;
    *(v70 + 16) = sub_100264824;
    *(v70 + 24) = v69;
    v227 = sub_100068444;
    v228 = v70;
    aBlock = _NSConcreteStackBlock;
    v224 = 1107296256;
    v225 = sub_100026440;
    v226 = &unk_10071D240;
    v72 = _Block_copy(&aBlock);

    v73 = v221;
    [v222 withActionName:v221 block:v72];
    _Block_release(v72);

    (*(v63 + 1))(v66, v64);
    v74 = 1;
    LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

    if ((v63 & 1) == 0)
    {
      v76 = 0;
LABEL_24:
      v83 = v217;
      v84 = v218;
LABEL_41:
      v86 = v220;
      goto LABEL_50;
    }

    __break(1u);
  }

  else
  {
    v132 = sub_100058000(&qword_100776350);
    v133 = v208;
    v134 = v209;
    v135 = *(v208 + 4);
    v136 = v207;
    v135(v207, v48 + *(v132 + 48), v209);
    v222 = objc_opt_self();
    static TTRLocalizableStrings.UndoAction.dueDateChange.getter();
    v221 = String._bridgeToObjectiveC()();

    v137 = v206;
    (*(v133 + 2))(v206, v136, v134);
    v138 = (v133[80] + 32) & ~v133[80];
    v139 = swift_allocObject();
    *(v139 + 16) = v216;
    *(v139 + 24) = v61;
    v135((v139 + v138), v137, v134);
    v140 = swift_allocObject();
    v76 = sub_100264820;
    *(v140 + 16) = sub_100264820;
    *(v140 + 24) = v139;
    v227 = sub_100068444;
    v228 = v140;
    aBlock = _NSConcreteStackBlock;
    v224 = 1107296256;
    v225 = sub_100026440;
    v226 = &unk_10071D1C8;
    v141 = _Block_copy(&aBlock);

    v142 = v221;
    [v222 withActionName:v221 block:v141];
    _Block_release(v141);

    (*(v133 + 1))(v136, v134);
    v74 = 1;
    LOBYTE(v133) = swift_isEscapingClosureAtFileLocation();

    if ((v133 & 1) == 0)
    {
      v71 = 0;
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100247324(uint64_t a1)
{
  v3 = sub_100058000(&qword_10076FA08);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24[-v5];
  v7 = type metadata accessor for TTRRemindersListMovingSectionsParams(0);
  __chkstk_darwin(v7);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = 0;
  sub_100262D10(a1, v9, type metadata accessor for TTRRemindersListMovingSectionsParams);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v9;
  v12 = *(v9 + 1);
  v13 = *(v4 + 32);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = sub_100058000(&qword_10076FA18);
      v15 = v13(v6, &v9[*(v14 + 64)], v3);
      __chkstk_darwin(v15);
      v16 = &v24[-64];
      *&v24[-48] = &v25;
      *&v24[-40] = v1;
      *&v24[-32] = v11;
      *&v24[-24] = v12;
      *&v24[-16] = v6;

      v18 = sub_100263188;
    }

    else
    {
      v21 = sub_100058000(&qword_10076FA10);
      v22 = v13(v6, &v9[*(v21 + 64)], v3);
      __chkstk_darwin(v22);
      v16 = &v24[-64];
      *&v24[-48] = &v25;
      *&v24[-40] = v1;
      *&v24[-32] = v11;
      *&v24[-24] = v12;
      *&v24[-16] = v6;

      v18 = sub_10026317C;
    }
  }

  else
  {
    v19 = sub_100058000(&qword_10076FA20);
    v20 = v13(v6, &v9[*(v19 + 64)], v3);
    __chkstk_darwin(v20);
    v16 = &v24[-64];
    *&v24[-48] = &v25;
    *&v24[-40] = v1;
    *&v24[-32] = v11;
    *&v24[-24] = v12;
    *&v24[-16] = v6;

    v18 = sub_1002631BC;
  }

  sub_100261648(v17, v18, v16);

  swift_bridgeObjectRelease_n();
  (*(v4 + 8))(v6, v3);
  return v25;
}

uint64_t sub_100247638(uint64_t a1)
{
  v155 = a1;
  v2 = type metadata accessor for DateComponents();
  v148 = *(v2 - 8);
  v149 = v2;
  v3 = v148[8];
  __chkstk_darwin(v2);
  v147 = &v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v150 = &v138 - v5;
  v144 = type metadata accessor for TTRSection();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v141 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_10076DF30);
  __chkstk_darwin(v7 - 8);
  v139 = &v138 - v8;
  v146 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
  v142 = *(v146 - 8);
  __chkstk_darwin(v146);
  v140 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_100775620);
  v152 = *(v10 - 1);
  v153 = v10;
  __chkstk_darwin(v10);
  v145 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v138 - v13;
  __chkstk_darwin(v15);
  v17 = &v138 - v16;
  v18 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
  __chkstk_darwin(v18);
  v20 = (&v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v154 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v156 = *(v154 - 8);
  __chkstk_darwin(v154);
  v22 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v151 = v1;
  v24 = *(v1 + 72);
  v26 = &v138 - v25;
  ObjectType = swift_getObjectType();
  (*(v24 + 72))(ObjectType, v24);
  sub_100262D10(v155, v20, type metadata accessor for TTRRemindersListMovingRemindersParams);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = *v20;
  v157 = v26;
  if (EnumCaseMultiPayload <= 3)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v155 = v29;
      v113 = v20[2];
      v150 = v20[1];

      v114 = sub_100058000(&qword_100776358);
      v116 = v152;
      v115 = v153;
      v117 = ObjectType;
      v118 = v145;
      (*(v152 + 4))(v145, v20 + *(v114 + 80), v153);
      v119 = *(v24 + 76);
      v120 = v139;
      v149 = v117;
      v119(v117, v24);
      v121 = v142;
      v122 = v146;
      v123 = (*(v142 + 48))(v120, 1, v146);
      v17 = v156;
      if (v123 != 1)
      {
        v132 = (*(v121 + 32))(v140, v120, v122);
        v148 = &v138;
        __chkstk_darwin(v132);
        v133 = v150;
        v134 = v155;
        *(&v138 - 6) = v151;
        *(&v138 - 5) = v134;
        *(&v138 - 4) = v133;
        *(&v138 - 3) = v118;
        v135 = v140;
        *(&v138 - 2) = v157;
        *(&v138 - 1) = v135;

        sub_1002614C8(v136, sub_100262DAC, (&v138 - 8));
        swift_bridgeObjectRelease_n();
        v137 = v154;
        (*(v17 + 13))(v22, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v154);
        (*(v24 + 74))(v22, 0, v149, v24);

        (*(v17 + 1))(v22, v137);
        (*(v121 + 8))(v135, v146);
        v116[1](v145, v153);
        v83 = v137;
        v36 = 0;
        v46 = 0;
        v38 = 1;
        goto LABEL_45;
      }

      sub_1000079B4(v120, &qword_10076DF30);
      v116[1](v118, v115);
      goto LABEL_42;
    }

    v61 = v20[1];
    v17 = v156;
    if (qword_100767028 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v72 = sub_100058000(&qword_100773378);
    v73 = v72[16];
    v74 = *(v20 + v72[20]);
    v75 = v143;
    v76 = v141;
    v77 = v144;
    (*(v143 + 32))(v141, v20 + v72[12], v144);
    v78 = v152;
    v79 = v20 + v73;
    v80 = v153;
    v81 = (*(v152 + 4))(v17, v79, v153);
    LOBYTE(aBlock) = 0;
    __chkstk_darwin(v81);
    *(&v138 - 8) = &aBlock;
    *(&v138 - 7) = v151;
    *(&v138 - 6) = v29;
    *(&v138 - 5) = v76;
    *(&v138 - 4) = v17;
    *(&v138 - 3) = v157;
    *(&v138 - 2) = v74;

    sub_1002614C8(v82, sub_100262DA8, (&v138 - 10));
    swift_bridgeObjectRelease_n();

    v38 = aBlock;
    v78[1](v17, v80);
    (*(v75 + 8))(v76, v77);
    v36 = 0;
    v46 = 0;
    goto LABEL_21;
  }

  v155 = v29;
  if (EnumCaseMultiPayload != 7)
  {
    v103 = sub_100058000(&qword_100776350);
    v104 = v148;
    v105 = v149;
    v106 = v148[4];
    v107 = v150;
    v106(v150, v20 + *(v103 + 48), v149);
    v153 = objc_opt_self();
    static TTRLocalizableStrings.UndoAction.dueDateChange.getter();
    v152 = String._bridgeToObjectiveC()();

    v108 = v147;
    (v104[2])(v147, v107, v105);
    v109 = (*(v104 + 80) + 32) & ~*(v104 + 80);
    v110 = swift_allocObject();
    v111 = v155;
    *(v110 + 16) = v151;
    *(v110 + 24) = v111;
    v106((v110 + v109), v108, v105);
    v61 = swift_allocObject();
    v46 = sub_100262D78;
    v61[2] = sub_100262D78;
    v61[3] = v110;
    v163 = sub_100068444;
    v164 = v61;
    aBlock = _NSConcreteStackBlock;
    v160 = 1107296256;
    v161 = sub_100026440;
    v162 = &unk_10071D088;
    v20 = _Block_copy(&aBlock);

    v112 = v152;
    [v153 withActionName:v152 block:v20];

    _Block_release(v20);
    (v104[1])(v150, v105);
    v38 = 1;
    LOBYTE(v104) = swift_isEscapingClosureAtFileLocation();

    v17 = v156;
    if ((v104 & 1) == 0)
    {
      v36 = 0;
LABEL_44:
      v83 = v154;
      goto LABEL_45;
    }

    __break(1u);
LABEL_49:
    swift_once();
LABEL_18:
    v62 = type metadata accessor for Logger();
    sub_100003E30(v62, qword_100776068);
    v63 = v61;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.fault.getter();

    v66 = os_log_type_enabled(v64, v65);
    v67 = v152;
    if (v66)
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138412290;
      v70 = [v63 objectID];
      *(v68 + 4) = v70;
      *v69 = v70;
      _os_log_impl(&_mh_execute_header, v64, v65, "Unexpected moveInTemplate param for dropping into item {template: %@}", v68, 0xCu);
      sub_1000079B4(v69, &unk_10076DF80);

      v71 = v64;
    }

    else
    {
      v71 = v63;
      v63 = v64;
    }

    v130 = sub_100058000(&qword_100776360);
    v67[1](v20 + *(v130 + 64), v153);
LABEL_42:
    v38 = 0;
    v36 = 0;
    goto LABEL_43;
  }

  v30 = sub_100058000(&qword_100776350);
  v31 = v148;
  v29 = v149;
  v32 = v148[4];
  v24 = v150;
  v32(v150, v20 + *(v30 + 48), v149);
  v153 = objc_opt_self();
  static TTRLocalizableStrings.UndoAction.dueDateChange.getter();
  v152 = String._bridgeToObjectiveC()();

  v33 = v147;
  (v31[2])(v147, v24, v29);
  v34 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v14 = swift_allocObject();
  v35 = v155;
  *(v14 + 2) = v151;
  *(v14 + 3) = v35;
  v32(&v14[v34], v33, v29);
  v20 = swift_allocObject();
  v36 = sub_100262D90;
  v20[2] = sub_100262D90;
  v20[3] = v14;
  v163 = sub_100068444;
  v164 = v20;
  aBlock = _NSConcreteStackBlock;
  v160 = 1107296256;
  v161 = sub_100026440;
  v162 = &unk_10071D100;
  v37 = _Block_copy(&aBlock);

  v22 = v152;
  [v153 withActionName:v152 block:v37];

  _Block_release(v37);
  (v31[1])(v24, v29);
  v38 = 1;
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  v17 = v156;
  if ((v31 & 1) == 0)
  {
LABEL_43:
    v46 = 0;
    goto LABEL_44;
  }

  __break(1u);
LABEL_7:
  if (EnumCaseMultiPayload > 1)
  {
    v47 = v152;
    if (EnumCaseMultiPayload == 2)
    {

      v48 = v20[1];
      v49 = sub_100058000(&qword_100773398);

      v17 = v156;
      if (qword_100767028 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_100003E30(v50, qword_100776068);
      v51 = v48;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v155 = v49;
        v55 = v54;
        v56 = swift_slowAlloc();
        v158 = v51;
        aBlock = v56;
        *v55 = 136315138;
        type metadata accessor for REMSmartListType(0);
        v57 = v51;
        v58 = String.init<A>(describing:)();
        v60 = sub_100004060(v58, v59, &aBlock);
        v47 = v152;

        *(v55 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v52, v53, "Unexpected moveToList param for dropping into item {smartListType: %s}", v55, 0xCu);
        sub_100004758(v56);

        v49 = v155;
      }

      else
      {
      }

      v124 = *(v49 + 64);
    }

    else
    {

      v94 = v20[1];
      v17 = v156;
      if (qword_100767028 != -1)
      {
        swift_once();
      }

      v95 = type metadata accessor for Logger();
      sub_100003E30(v95, qword_100776068);
      v96 = v94;
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *v99 = 138412290;
        v101 = [v96 objectID];
        *(v99 + 4) = v101;
        *v100 = v101;
        _os_log_impl(&_mh_execute_header, v97, v98, "Unexpected moveToSmartList param for dropping into item {target: %@}", v99, 0xCu);
        sub_1000079B4(v100, &unk_10076DF80);

        v102 = v97;
      }

      else
      {
        v102 = v96;
        v96 = v97;
      }

      v124 = *(sub_100058000(&qword_10076E908) + 64);
    }

    v47[1](v20 + v124, v153);
    goto LABEL_42;
  }

  v39 = v152;
  if (!EnumCaseMultiPayload)
  {
    v40 = v20[1];
    v41 = sub_100058000(&qword_100776370);
    v42 = *(v20 + *(v41 + 80));
    v43 = v153;
    v44 = v39[4](v17, v20 + *(v41 + 64), v153);
    __chkstk_darwin(v44);
    *(&v138 - 6) = v151;
    *(&v138 - 5) = v29;
    *(&v138 - 4) = v40;
    *(&v138 - 3) = v17;
    *(&v138 - 2) = v42;

    sub_1002614C8(v45, sub_100262DCC, (&v138 - 8));

    swift_bridgeObjectRelease_n();

    (v39[1])(v17, v43);
    v36 = 0;
    v46 = 0;
    v38 = 1;
LABEL_21:
    v83 = v154;
    v17 = v156;
    goto LABEL_45;
  }

  v155 = v29;
  v150 = v20[1];
  v84 = sub_100058000(&qword_100776368);
  v85 = v14;
  v39[4](v14, v20 + *(v84 + 64), v153);
  v17 = v156;
  v86 = v154;
  (*(v156 + 13))(v22, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v154);
  v87 = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
  v88 = v22;
  v89 = v86;
  v90 = (*(v17 + 1))(v88, v86);
  if (v87)
  {
    __chkstk_darwin(v90);
    v91 = v150;
    v92 = v155;
    *(&v138 - 4) = v151;
    *(&v138 - 3) = v92;
    *(&v138 - 2) = v91;
    *(&v138 - 1) = v85;

    sub_1002614C8(v93, sub_100262DC8, (&v138 - 6));

    swift_bridgeObjectRelease_n();
    (v39[1])(v85, v153);
  }

  else
  {
    v125 = v150;
    v126 = [v150 list];
    v36 = (*(v24 + 78))();

    if (!v36)
    {

      (v39[1])(v14, v153);
      v38 = 0;
      v46 = 0;
      v83 = v89;
      goto LABEL_45;
    }

    __chkstk_darwin(v127);
    v128 = v155;
    *(&v138 - 6) = v151;
    *(&v138 - 5) = v128;
    *(&v138 - 4) = v125;
    *(&v138 - 3) = v14;
    *(&v138 - 2) = v36;

    sub_1002614C8(v129, sub_100262DB0, (&v138 - 8));

    swift_bridgeObjectRelease_n();
    (v39[1])(v14, v153);
  }

  v36 = 0;
  v46 = 0;
  v38 = 1;
  v83 = v89;
LABEL_45:
  (*(v17 + 1))(v157, v83);
  sub_1000301AC(v36);
  sub_1000301AC(v46);
  return v38;
}

uint64_t sub_100248A8C(uint64_t a1)
{
  v34 = a1;
  v35 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v29 = *(v35 - 8);
  __chkstk_darwin(v35);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v33 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  v32 = *(v14 + 16);
  v32(ObjectType, v14);
  LOBYTE(v9) = v13[*(v9 + 44)];
  sub_100262C74(v13, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v9)
  {
    return 0;
  }

  v16 = v33;
  v32(ObjectType, v14);
  v17 = *v16;
  sub_100262C74(v16, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v17 == 2)
  {
    return 0;
  }

  v27 = 0;
  v19 = 0;
  v20 = *(v34 + 16);
  v33 = (v5 + 16);
  v21 = (v29 + 11);
  LODWORD(v32) = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
  v31 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
  v30 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
  v28 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
  v22 = (v5 + 8);
  ++v29;
  while (2)
  {
    if (v19 != v20)
    {
      while (1)
      {
        if (v19 >= v20)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

        (*(v5 + 16))(v7, v34 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v4);
        v23 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_23;
        }

        TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
        v24 = (*v21)(v3, v35);
        if (v24 == v32 || v24 == v31)
        {
          break;
        }

        if (v24 == v30)
        {
          (*v22)(v7, v4);
          (*v29)(v3, v35);
        }

        else
        {
          if (v24 != v28)
          {
            goto LABEL_24;
          }

          (*v22)(v7, v4);
        }

        ++v19;
        if (v23 == v20)
        {
          return v27;
        }
      }

      (*v22)(v7, v4);
      (*v29)(v3, v35);
      ++v19;
      if (!__OFADD__(v27++, 1))
      {
        continue;
      }

      __break(1u);
    }

    return v27;
  }
}

uint64_t sub_100248EAC(uint64_t a1)
{
  v33 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  (*(v13 + 16))(ObjectType, v13);
  v15 = v12[*(v10 + 48)];
  sub_100262C74(v12, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  result = 0;
  if ((v15 & 1) == 0)
  {
    v26 = 0;
    v17 = 0;
    v18 = *(a1 + 16);
    v32 = v6 + 16;
    v19 = (v3 + 88);
    v31 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
    v30 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
    v29 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
    v27 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
    v20 = (v6 + 8);
    v28 = (v3 + 8);
    while (2)
    {
      if (v17 != v18)
      {
        while (1)
        {
          if (v17 >= v18)
          {
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            result = _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return result;
          }

          v21 = a1;
          (*(v6 + 16))(v8, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v34);
          v22 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_22;
          }

          TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
          v23 = (*v19)(v5, v33);
          v24 = v23 == v31 || v23 == v30;
          if (v24)
          {
            break;
          }

          if (v23 == v29)
          {
            (*v20)(v8, v34);
            (*v28)(v5, v33);
          }

          else
          {
            if (v23 != v27)
            {
              goto LABEL_23;
            }

            (*v20)(v8, v34);
          }

          ++v17;
          v24 = v22 == v18;
          a1 = v21;
          if (v24)
          {
            return v26;
          }
        }

        (*v20)(v8, v34);
        (*v28)(v5, v33);
        ++v17;
        v25 = __OFADD__(v26++, 1);
        a1 = v21;
        if (!v25)
        {
          continue;
        }

        __break(1u);
      }

      return v26;
    }
  }

  return result;
}

uint64_t sub_100249258(uint64_t a1)
{
  v3 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v3 - 8);
  v103 = &v88 - v4;
  v96 = type metadata accessor for TTRReminderCopyPasteItem.Reminder();
  v5 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v99 = &v88 - v8;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v117 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v88 - v13;
  __chkstk_darwin(v15);
  v100 = &v88 - v16;
  v17 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  v19 = (*(v17 + 208))(ObjectType, v17);
  v21 = v20;
  v22 = swift_getObjectType();
  v95 = v19;
  v92 = v22;
  v93 = v21;
  v104 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
  v88 = v23;

  v25 = sub_1004B602C(v24);

  v26 = (*(v17 + 264))(a1, 1, ObjectType, v17);
  v27 = *(a1 + 16);
  if (v27)
  {
    v28 = 0;
    v30 = *(v10 + 16);
    v29 = v10 + 16;
    v108 = a1 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
    v121 = *(v29 + 56);
    v122 = v30;
    v31 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 < 0)
    {
      v31 = v26;
    }

    v109 = v31;
    v114 = (v29 + 40);
    v115 = v26 & 0xC000000000000001;
    v118 = v25 + 56;
    v119 = v25;
    v32 = (v29 - 8);
    v90 = v5;
    v97 = (v5 + 32);
    v105 = _swiftEmptyArrayStorage;
    v33 = v96;
    v120 = v29;
    v34 = v100;
    v35 = v26;
    v91 = v27;
    v107 = v26;
    do
    {
      v116 = v28;
      v122(v34, v108 + v121 * v28, v9);
      v37 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
      if (!v37)
      {
        goto LABEL_7;
      }

      v36 = v37;
      if (v115)
      {
        v38 = __CocoaDictionary.lookup(_:)();
        if (!v38)
        {
          goto LABEL_6;
        }

        v125 = v38;
        sub_100003540(0, &qword_10076BB00);
        swift_dynamicCast();
        v39 = v126;
        if (!v126)
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (!*(v35 + 16))
        {
          goto LABEL_6;
        }

        v40 = v33;
        v41 = v37;
        v42 = sub_1002613B0(v37);
        v36 = v41;
        v33 = v40;
        if ((v43 & 1) == 0)
        {
          goto LABEL_6;
        }

        v39 = *(*(v35 + 56) + 8 * v42);
        if (!v39)
        {
          goto LABEL_6;
        }
      }

      v102 = v36;
      v101 = v39;
      v44 = [v39 parentReminder];
      if (v44)
      {
        v45 = v44;
        v46 = [v44 objectID];
        v47 = v46;
        if (v115)
        {
          v48 = v46;
          v49 = __CocoaDictionary.lookup(_:)();

          if (v49)
          {
            v125 = v49;
            sub_100003540(0, &qword_10076BB00);
            swift_dynamicCast();
            v50 = v126;
            goto LABEL_24;
          }
        }

        else if (*(v35 + 16))
        {
          v51 = sub_1002613B0(v46);
          if (v52)
          {
            v50 = *(*(v35 + 56) + 8 * v51);
LABEL_24:

            v27 = v91;
            v33 = v96;
            if (v50)
            {

              v36 = v102;
LABEL_6:

LABEL_7:
              (*v32)(v34, v9);
              goto LABEL_8;
            }

            goto LABEL_27;
          }
        }

        v27 = v91;
        v33 = v96;
      }

LABEL_27:
      if ((dispatch thunk of TTRRemindersListTreeContentsQueryable.hasSubtasks.getter() & 1) == 0)
      {
        goto LABEL_58;
      }

      v53 = v104;
      v54 = swift_getObjectType();
      v126 = v53;
      v55 = v103;
      v122(v103, v34, v9);
      v112 = *v114;
      v112(v55, 0, 1, v9);
      v56 = *(v88 + 8);
      v113 = v54;
      v111 = v56;
      v57 = dispatch thunk of TTRTreeContentsQueryable.numberOfChildren(of:)();
      sub_1000079B4(v55, &qword_100772140);
      v110 = v57;
      if (v57 < 1)
      {
        v33 = v96;
        goto LABEL_58;
      }

      v58 = 0;
      v125 = _swiftEmptyArrayStorage;
      v126 = _swiftEmptyArrayStorage;
      v89 = _swiftEmptyArrayStorage;
      v98 = _swiftEmptyArrayStorage;
      do
      {
        v124 = v53;
        v122(v55, v34, v9);
        v112(v55, 0, 1, v9);
        dispatch thunk of TTRTreeContentsQueryable.child(_:of:)();
        sub_1000079B4(v55, &qword_100772140);
        v59 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
        if (v59)
        {
          v60 = v59;
          if (v115)
          {
            v61 = __CocoaDictionary.lookup(_:)();
            if (!v61)
            {
              goto LABEL_30;
            }

            v123 = v61;
            sub_100003540(0, &qword_10076BB00);
            swift_dynamicCast();
            v62 = v124;
            if (!v124)
            {
              goto LABEL_30;
            }
          }

          else if (!*(v107 + 16) || (v63 = sub_1002613B0(v59), (v64 & 1) == 0) || (v62 = *(*(v107 + 56) + 8 * v63)) == 0)
          {
LABEL_30:
            (*v32)(v14, v9);

            goto LABEL_31;
          }

          v65 = v14;
          v106 = REMReminder.codable.getter();

          v66 = v119;
          if (*(v119 + 16) && (sub_10026263C(&qword_100776308, &type metadata accessor for TTRRemindersListViewModel.Item), v67 = dispatch thunk of Hashable._rawHashValue(seed:)(), v68 = -1 << *(v66 + 32), v69 = v67 & ~v68, ((*(v118 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) != 0))
          {
            v70 = ~v68;
            while (1)
            {
              v71 = v117;
              v122(v117, *(v66 + 48) + v69 * v121, v9);
              sub_10026263C(&qword_100768B68, &type metadata accessor for TTRRemindersListViewModel.Item);
              v72 = dispatch thunk of static Equatable.== infix(_:_:)();
              v73 = *v32;
              (*v32)(v71, v9);
              if (v72)
              {
                break;
              }

              v69 = (v69 + 1) & v70;
              v66 = v119;
              if (((*(v118 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
              {
                goto LABEL_46;
              }
            }

            v77 = v106;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v14 = v65;
            v73(v65, v9);
            v75 = v126;
            v76 = &v121;
          }

          else
          {
LABEL_46:
            v74 = v106;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v14 = v65;
            (*v32)(v65, v9);
            v75 = v125;
            v76 = &v127;
          }

          *(v76 - 32) = v75;
          v55 = v103;
          v53 = v104;
          v34 = v100;
        }

        else
        {
          (*v32)(v14, v9);
        }

LABEL_31:
        ++v58;
      }

      while (v58 != v110);
      if (v89 >> 62)
      {
        _CocoaArrayWrapper.endIndex.getter();
      }

      v33 = v96;
      v27 = v91;

LABEL_58:
      v78 = v101;
      REMReminder.codable.getter();
      v79 = v94;
      TTRReminderCopyPasteItem.Reminder.init(reminder:children:)();

      (*v32)(v34, v9);
      v80 = *v97;
      (*v97)(v99, v79, v33);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v81 = v105;
      }

      else
      {
        v81 = sub_10054762C(0, v105[2] + 1, 1, v105);
      }

      v83 = v81[2];
      v82 = v81[3];
      if (v83 >= v82 >> 1)
      {
        v81 = sub_10054762C(v82 > 1, v83 + 1, 1, v81);
      }

      v81[2] = v83 + 1;
      v84 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v105 = v81;
      v80(v81 + v84 + *(v90 + 72) * v83, v99, v33);
      v35 = v107;
LABEL_8:
      v28 = v116 + 1;
    }

    while (v116 + 1 != v27);
  }

  v85 = objc_allocWithZone(type metadata accessor for TTRReminderCopyPasteItem());
  v86 = TTRReminderCopyPasteItem.init(_:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v86;
}

uint64_t sub_100249E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListPostponeType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100776068);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  strcpy((inited + 32), "postponeType");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  (*(v5 + 16))(v7, a2, v4);
  *(inited + 48) = String.init<A>(describing:)();
  *(inited + 56) = v10;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0);
  *(inited + 96) = a1;

  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  static TTRLocalizableStrings.UndoAction.dueDateChange.getter();
  v11 = TTRRemindersListPresenterCapabilityCore.request(postpone:to:undoActionName:)();

  return v11;
}

uint64_t sub_10024A0F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListPostponeType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100776068);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  strcpy((inited + 32), "postponeType");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  (*(v5 + 16))(v7, a2, v4);
  *(inited + 48) = String.init<A>(describing:)();
  *(inited + 56) = v10;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  sub_100058000(&qword_100772150);
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D400;
  (*(v12 + 16))(v14 + v13, a1, v11);
  *(inited + 120) = sub_100058000(&qword_10076E0B0);
  *(inited + 96) = v14;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  static TTRLocalizableStrings.UndoAction.dueDateChange.getter();
  v15 = TTRRemindersListPresenterCapabilityCore.request(postponeRelativeToDueDate:to:undoActionName:)();

  return v15 & 1;
}

uint64_t sub_10024A3F4(unint64_t a1)
{
  v2 = v1;
  v44 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v37 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v34 - v7;
  v9 = type metadata accessor for TTRRemindersListPostponeType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767028 != -1)
  {
LABEL_30:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003E30(v13, qword_100776068);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  strcpy((inited + 32), "postponeType");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v15 = *(v10 + 16);
  v10 += 16;
  v34[1] = a1;
  v15(v12, a1, v9);
  v16 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v16;
  *(inited + 56) = v17;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v12 = *(v2 + 64);
  v9 = *(v2 + 72);
  v34[0] = v2;
  ObjectType = swift_getObjectType();
  (*(v9 + 208))(ObjectType, v9);
  swift_getObjectType();
  v19 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v47 = v19;
  TTRTreeContentsQueryable.allItems.getter();
  swift_unknownObjectRelease();
  v20 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  v21 = (*(v9 + 264))(v20, 0, ObjectType, v9);
  v43 = *(v20 + 16);
  v40 = v21;
  if (v43)
  {
    v22 = 0;
    v41 = v21 & 0xC000000000000001;
    v42 = v4 + 16;
    v23 = v21 & 0xFFFFFFFFFFFFFF8;
    if (v21 < 0)
    {
      v23 = v21;
    }

    v39 = v23;
    v36 = (v4 + 32);
    v2 = v4 + 8;
    v38 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v10 = *(v4 + 72);
      (*(v4 + 16))(v8, v20 + v9 + v10 * v22, v44);
      v24 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
      if (!v24)
      {
        goto LABEL_7;
      }

      v12 = v24;
      if (v41)
      {
        v25 = __CocoaDictionary.lookup(_:)();
        if (!v25)
        {
          goto LABEL_6;
        }

        v45 = v25;
        sub_100003540(0, &qword_10076BB00);
        swift_dynamicCast();
        v26 = v46;
        if (!v46)
        {
          goto LABEL_6;
        }
      }

      else if (!*(v40 + 16) || (v27 = sub_1002613B0(v24), (v28 & 1) == 0) || (v26 = *(*(v40 + 56) + 8 * v27)) == 0)
      {
LABEL_6:

        goto LABEL_7;
      }

      a1 = [v26 isOverdue];

      if (a1)
      {
        v35 = *v36;
        v35(v37, v8, v44);
        v29 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1004A1C48(0, v29[2] + 1, 1);
          v29 = v47;
        }

        a1 = v29[2];
        v31 = v29[3];
        v12 = (a1 + 1);
        if (a1 >= v31 >> 1)
        {
          sub_1004A1C48(v31 > 1, a1 + 1, 1);
          v29 = v47;
        }

        v29[2] = v12;
        v38 = v29;
        v35(v29 + v9 + a1 * v10, v37, v44);
        goto LABEL_8;
      }

LABEL_7:
      (*v2)(v8, v44);
LABEL_8:
      if (v43 == ++v22)
      {
        goto LABEL_25;
      }
    }
  }

  v38 = _swiftEmptyArrayStorage;
LABEL_25:

  if (v38[2])
  {
    static TTRLocalizableStrings.UndoAction.markOverdueToToday.getter();
    v32 = TTRRemindersListPresenterCapabilityCore.request(postpone:to:undoActionName:)();
  }

  else
  {

    return 0;
  }

  return v32;
}

uint64_t sub_10024A9F4(uint64_t a1, uint64_t a2)
{
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100776068);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  strcpy((inited + 32), "priorityLevel");
  *(inited + 46) = -4864;
  v5 = NSStringFromPriorityLevel();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(inited + 48) = v6;
  *(inited + 56) = v8;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0);
  *(inited + 96) = a2;

  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  return TTRRemindersListPresenterCapabilityCore.request(setPriorityLevelTo:for:)();
}

uint64_t sub_10024ABB8(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v63 = v2;
  v65 = v4;
  v5 = type metadata accessor for TTRSectionID();
  v60 = *(v5 - 8);
  v61 = v5;
  __chkstk_darwin(v5);
  v59 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100058000(&qword_100776288);
  __chkstk_darwin(v58);
  v8 = &v58 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v64);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v58 - v16;
  __chkstk_darwin(v18);
  v20 = &v58 - v19;
  v62 = a1;
  TTRRemindersListViewModel.Item.sectionCasesOnly.getter();
  TTRRemindersListViewModel.Item.SectionCasesItem.id.getter();
  (*(v10 + 8))(v12, v9);
  sub_10000794C(v20, v17, &qword_10076B070);
  v21 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v17, 1, v21) == 1)
  {
    sub_1000079B4(v17, &qword_10076B070);
    v23 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
LABEL_5:
    if (qword_100767028 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100003E30(v27, qword_100776068);
    sub_10000794C(v20, v14, &qword_10076B070);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v30 = 136315650;
      v31 = _typeName(_:qualified:)();
      v33 = sub_100004060(v31, v32, &v66);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_100004060(0xD000000000000026, 0x80000001006799B0, &v66);
      *(v30 + 22) = 2080;
      v34 = Optional.descriptionOrNil.getter();
      v36 = v35;
      sub_1000079B4(v14, &qword_10076B070);
      v37 = sub_100004060(v34, v36, &v66);

      *(v30 + 24) = v37;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s: %s - Attempted to create a new section for invalid section item %s", v30, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000079B4(v14, &qword_10076B070);
    }

    v38 = v20;
LABEL_11:
    sub_1000079B4(v38, &qword_10076B070);
    return 0;
  }

  TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
  (*(v22 + 8))(v17, v21);
  v24 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v25 = *(v24 - 8);
  (*(v25 + 56))(v8, 0, 1, v24);
  v26 = (*(v25 + 88))(v8, v24);
  if (v26 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
  {
    (*(v25 + 8))(v8, v24);
    goto LABEL_5;
  }

  if (v26 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:))
  {
    if (v26 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
    {
      sub_1000079B4(v20, &qword_10076B070);
      (*(v25 + 8))(v8, v24);
      return 1;
    }

    if (v26 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
    {
      goto LABEL_5;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_21:
    if (qword_100767028 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100003E30(v51, qword_100776068);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v54 = 136315394;
      v55 = _typeName(_:qualified:)();
      v57 = sub_100004060(v55, v56, &v66);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2080;
      *(v54 + 14) = sub_100004060(0xD000000000000026, 0x80000001006799B0, &v66);
      _os_log_impl(&_mh_execute_header, v52, v53, "%s: %s - Attempted to create a new section from the sectionless section without having a valid sections context", v54, 0x16u);
      swift_arrayDestroy();
    }

    v38 = v20;
    goto LABEL_11;
  }

  (*(v25 + 8))(v8, v24);
  v40 = v63;
  v41 = v63[9];
  ObjectType = swift_getObjectType();
  if (!(*(v41 + 104))(ObjectType, v41))
  {
    goto LABEL_21;
  }

  v44 = v59;
  v43 = v60;
  v45 = v61;
  (*(v60 + 104))(v59, enum case for TTRSectionID.sectionless(_:), v61);
  v46 = sub_1002E3A40(v44, 0);
  v47 = (*(v43 + 8))(v44, v45);
  __chkstk_darwin(v47);
  v48 = v62;
  *(&v58 - 2) = v40;
  *(&v58 - 1) = v48;
  v49 = sub_10007D8C0(sub_100262CF4, (&v58 - 4), v46);

  v50 = sub_100243BE4(v49);
  swift_unknownObjectRelease();
  sub_1000079B4(v20, &qword_10076B070);
  if (!v50)
  {

    return 0;
  }

  return v49;
}

uint64_t sub_10024B534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v6 = type metadata accessor for TTRSectionID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_10076DF38);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  v13 = type metadata accessor for TTRSectionLite();
  v59 = *(v13 - 8);
  v60 = v13;
  __chkstk_darwin(v13);
  v58 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 72);
  ObjectType = swift_getObjectType();
  result = (*(v15 + 104))(ObjectType, v15);
  if (result)
  {
    v18 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
    if (v18)
    {
      v19 = v18;
      v45 = v9;
      v46 = v7;
      v47 = v6;
      v20 = sub_100058000(&qword_100772150);
      v21 = type metadata accessor for TTRRemindersListViewModel.Item();
      v48 = a3;
      v22 = v21;
      v23 = *(v21 - 8);
      v24 = *(v23 + 80);
      v25 = a1;
      v26 = (v24 + 32) & ~v24;
      v52 = *(v23 + 72);
      v49 = v24;
      v55 = v20;
      v27 = swift_allocObject();
      v51 = xmmword_10062D400;
      *(v27 + 16) = xmmword_10062D400;
      v28 = *(v23 + 16);
      v57 = v25;
      v53 = v28;
      v54 = v23 + 16;
      v28(v27 + v26, v25, v22);
      sub_100245068(v27);
      swift_setDeallocating();
      v29 = *(v23 + 8);
      v56 = v22;
      v44 = v29;
      v29(v27 + v26, v22);
      swift_deallocClassInstance();
      sub_100058000(&qword_10076B780);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D420;
      *(inited + 32) = v19;
      v50 = v19;
      v31 = sub_10001D5F8(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v32 = sub_1002E28FC(v31);

      v33 = v61;
      v34 = v48;
      sub_1002E4288(v61, v48, v12);
      v36 = v59;
      v35 = v60;
      if ((*(v59 + 48))(v12, 1, v60) == 1)
      {
        sub_1000079B4(v12, &qword_10076DF38);
        v37 = v33;
        v38 = swift_allocObject();
        *(v38 + 16) = v51;
        v39 = v56;
        v53(v38 + v26, v57, v56);
        sub_10024F488(v38, v37, v34, v32, 1, 0, 1, 0, 0);
        swift_unknownObjectRelease();

        swift_setDeallocating();
        v44(v38 + v26, v39);
        return swift_deallocClassInstance();
      }

      else
      {
        v40 = v58;
        (*(v36 + 32))(v58, v12, v35);
        v41 = v45;
        TTRSectionLite.sectionID.getter();
        v42 = swift_allocObject();
        *(v42 + 16) = v51;
        v53(v42 + v26, v57, v56);
        sub_100243ECC(v42, v41, v32);

        swift_unknownObjectRelease();

        (*(v46 + 8))(v41, v47);
        return (*(v36 + 8))(v40, v35);
      }
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10024BAEC(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  (*(v7 + 192))(ObjectType, v7);
  v9 = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
  (*(v4 + 8))(v6, v3);
  if (v9)
  {
    result = (*(v7 + 104))(ObjectType, v7);
    if (!result)
    {
      return result;
    }

    v16[1] = a1;
    sub_100058000(&qword_10076E0B0);
    sub_100003540(0, &qword_10076BA50);
    sub_10000E188(&unk_100784560, &qword_10076E0B0);
    v11 = Sequence.completeCompactMap<A>(_:)();
    if (v11)
    {
      if (v11 >> 62)
      {
        v14 = v11;
        v15 = _CocoaArrayWrapper.endIndex.getter();
        v11 = v14;
        if (v15)
        {
          goto LABEL_6;
        }
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        v12 = sub_10001D5F8(v11);

        v13 = sub_1002E28FC(v12);

        swift_unknownObjectRelease();
        return v13;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

uint64_t sub_10024BD54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v4 - 8);
  v6 = &v50 - v5;
  v7 = sub_100058000(&qword_1007761F8);
  __chkstk_darwin(v7 - 8);
  v9 = &v50 - v8;
  v10 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v51 = (&v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v52 = &v50 - v14;
  v15 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v15 - 8);
  v17 = &v50 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.Item();
  __chkstk_darwin(v18);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v23 = v22;
  v25 = v24;
  sub_10000794C(v21, v17, &qword_100772140);
  v26 = *(v23 + 48);
  v54 = v25;
  v27 = v26(v17, 1, v25);
  v53 = v2;
  if (v27 == 1)
  {
    v28 = &qword_100772140;
    v29 = v17;
LABEL_5:
    sub_1000079B4(v29, v28);
    v32 = *(v53 + 72);
    ObjectType = swift_getObjectType();
    (*(v32 + 152))(ObjectType, v32);
    v34 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v6, 1, v34) != 1)
    {
      ShouldCategorizeGrocery = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
      (*(v35 + 8))(v6, v34);
      return ShouldCategorizeGrocery & 1;
    }

    v36 = &unk_10078A380;
    v37 = v6;
    goto LABEL_7;
  }

  (*(v23 + 32))(v20, v17, v54);
  v30 = *(v2 + 72);
  v31 = swift_getObjectType();
  (*(v30 + 320))(v20, v31, v30);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v23 + 8))(v20, v54);
    v28 = &qword_1007761F8;
    v29 = v9;
    goto LABEL_5;
  }

  v39 = v10;
  v40 = v52;
  (*(v11 + 32))(v52, v9, v10);
  v41 = v51;
  (*(v11 + 16))(v51, v40, v10);
  v42 = (*(v11 + 88))(v41, v10);
  if (v42 == enum case for TTRRemindersListTargetContainer.TargetList.listID(_:))
  {
    v43 = v11;
    (*(v11 + 96))(v41, v39);
    v44 = *v41;
    swift_getObjectType();
    v45 = dispatch thunk of TTRRemindersListInteractorType.fetchList(with:)();

    v46 = v45;
    if (!v45)
    {
      goto LABEL_17;
    }

LABEL_19:
    REMList.ttrGroceryContext.getter();

    if (v56)
    {
      sub_10000C36C(v55, v56);
      ShouldCategorizeGrocery = dispatch thunk of TTRListGroceryContextProtocol.ttrShouldCategorizeGroceryItems.getter();

      (*(v43 + 8))(v52, v39);
      (*(v23 + 8))(v20, v54);
      sub_100004758(v55);
      return ShouldCategorizeGrocery & 1;
    }

    (*(v43 + 8))(v52, v39);
    (*(v23 + 8))(v20, v54);
    v36 = &qword_1007757E0;
    v37 = v55;
LABEL_7:
    sub_1000079B4(v37, v36);
LABEL_8:
    ShouldCategorizeGrocery = 0;
    return ShouldCategorizeGrocery & 1;
  }

  if (v42 == enum case for TTRRemindersListTargetContainer.TargetList.staleList(_:) || v42 == enum case for TTRRemindersListTargetContainer.TargetList.upToDateList(_:))
  {
    v43 = v11;
    (*(v11 + 96))(v41, v39);
    v45 = *v41;
    v48 = *v41;
    if (v45)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v42 == enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:))
  {
    v43 = v11;
    swift_getObjectType();
    v45 = dispatch thunk of TTRRemindersListInteractorType.fetchDefaultList()();
    v47 = v45;
    if (v45)
    {
      goto LABEL_19;
    }

LABEL_17:
    (*(v43 + 8))(v52, v39);
    (*(v23 + 8))(v20, v54);
    goto LABEL_8;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_10024C3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a3;
  v36 = a4;
  v33 = a2;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  __chkstk_darwin(v6);
  v8 = *(v4 + 72);
  ObjectType = swift_getObjectType();
  v10 = TTRRemindersListViewModel.Reminder.objectID.getter();
  v37 = (*(v8 + 256))(v10, ObjectType, v8);

  if (!v37)
  {
    return;
  }

  v11 = [v37 siriFoundInAppsData];
  if (v11)
  {
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    sub_100003540(0, &qword_100776380);
    v16 = static SGRecordId.createFrom(data:)();
    if (v16)
    {
      v32 = v16;
      sub_100003540(0, &qword_100775690);
      v17 = [v37 list];
      v18 = [v17 objectID];

      v19 = [objc_opt_self() siriFoundInAppsListID];
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {
        v21 = [*(v5 + 240) objectForKey:v32];
        if (!v21)
        {
          v31 = [objc_opt_self() serviceForReminders];
          v24 = v34;
          (*(v34 + 16))(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v6);
          v25 = (*(v24 + 80) + 48) & ~*(v24 + 80);
          v26 = swift_allocObject();
          *(v26 + 2) = v32;
          *(v26 + 3) = v5;
          v27 = v36;
          *(v26 + 4) = v35;
          *(v26 + 5) = v27;
          (*(v24 + 32))(&v26[v25], &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
          aBlock[4] = sub_1002631C8;
          aBlock[5] = v26;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10025C35C;
          aBlock[3] = &unk_10071D2E0;
          v28 = _Block_copy(aBlock);
          v29 = v32;

          [v31 foundInStringForRecordId:v29 style:0 withCompletion:v28];

          sub_100139D84(v13, v15);
          _Block_release(v28);
          swift_unknownObjectRelease();
          return;
        }

        v22 = v21;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        TTRRemindersListViewModel.Reminder.siriFoundInAppsDescription.setter();
        sub_100139D84(v13, v15);
        v23 = v32;
        goto LABEL_10;
      }
    }

    sub_100139D84(v13, v15);
  }

  v23 = v37;
LABEL_10:
}

uint64_t sub_10024C804(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRSectionID();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076DF38);
  __chkstk_darwin(v6 - 8);
  v56 = &v48 - v7;
  v8 = type metadata accessor for TTRSectionLite();
  v57 = *(v8 - 8);
  v58 = v8;
  __chkstk_darwin(v8);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v10 - 8);
  v12 = &v48 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&qword_100776378);
  __chkstk_darwin(v17 - 8);
  v19 = (&v48 - v18);
  v20 = enum case for TTRRemindersListViewModel.SuggestedSectionDisplayStyle.hide(_:);
  v21 = type metadata accessor for TTRRemindersListViewModel.SuggestedSectionDisplayStyle();
  v22 = *(v21 - 8);
  v59 = *(v22 + 104);
  v60 = v22 + 104;
  v59(v19, v20, v21);
  v61 = *(v22 + 56);
  v62 = v21;
  v61(v19, 0, 1, v21);
  v63 = a1;
  TTRRemindersListViewModel.Reminder.suggestedSectionDisplayStyle.setter();
  v23 = *(v2 + 72);
  v64 = v2;
  ObjectType = swift_getObjectType();
  (*(v23 + 152))(ObjectType, v23);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1000079B4(v12, &unk_10078A380);
  }

  (*(v14 + 32))(v16, v12, v13);
  if ((TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter() & 1) == 0)
  {
    return (*(v14 + 8))(v16, v13);
  }

  v50 = v16;
  v51 = v14;
  v26 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_suggestedSectionCanonicalNameByReminderID;
  v27 = v64;
  swift_beginAccess();
  v28 = *(v27 + v26);
  if (!v28)
  {
    goto LABEL_13;
  }

  v64 = v13;
  v29 = TTRRemindersListViewModel.Reminder.objectID.getter();
  v30 = v29;
  if (!*(v28 + 16) || (v31 = sub_1002613B0(v29), (v32 & 1) == 0))
  {

    v13 = v64;
LABEL_13:
    swift_endAccess();
    return (*(v51 + 8))(v50, v13);
  }

  v33 = (*(v28 + 56) + 16 * v31);
  v34 = *v33;
  v35 = v33[1];

  swift_endAccess();

  v36 = (*(v23 + 104))(ObjectType, v23);
  v37 = v63;
  v13 = v64;
  if (!v36)
  {
LABEL_10:
    *v19 = v34;
    v19[1] = v35;
    v19[2] = 0;
    v19[3] = 0;
    v41 = v62;
    v59(v19, enum case for TTRRemindersListViewModel.SuggestedSectionDisplayStyle.show(_:), v62);
    v61(v19, 0, 1, v41);
    TTRRemindersListViewModel.Reminder.suggestedSectionDisplayStyle.setter();
    return (*(v51 + 8))(v50, v13);
  }

  v38 = v56;
  v49 = v34;
  sub_1002E4288(v34, v35, v56);
  v40 = v57;
  v39 = v58;
  if ((*(v57 + 48))(v38, 1, v58) == 1)
  {
    swift_unknownObjectRelease();
    sub_1000079B4(v38, &qword_10076DF38);
    v34 = v49;
    goto LABEL_10;
  }

  v42 = v55;
  (*(v40 + 32))(v55, v38, v39);
  v43 = v52;
  TTRSectionLite.sectionID.getter();
  v44 = sub_1002E3A40(v43, 1);
  (*(v53 + 8))(v43, v54);
  LOBYTE(v43) = sub_10023FD9C(v44, v37);

  if (v43)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = TTRSectionLite.displayName.getter();
    *v19 = v49;
    v19[1] = v35;
    v19[2] = v45;
    v19[3] = v46;
    v47 = v62;
    v59(v19, enum case for TTRRemindersListViewModel.SuggestedSectionDisplayStyle.show(_:), v62);
    v61(v19, 0, 1, v47);
    TTRRemindersListViewModel.Reminder.suggestedSectionDisplayStyle.setter();
    swift_unknownObjectRelease();
  }

  (*(v40 + 8))(v42, v39);
  return (*(v51 + 8))(v50, v64);
}

uint64_t sub_10024CEB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v55 = a1;
  v56 = a2;
  v60 = a3;
  v5 = type metadata accessor for TTRSharedWithYouHighlight();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_100775660);
  __chkstk_darwin(v8 - 8);
  v59 = &v52 - v9;
  v10 = sub_100058000(&qword_1007762A8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v52 - v12;
  v14 = sub_100058000(&qword_1007762B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v52 - v15;
  v17 = sub_100058000(&qword_100775700);
  v18 = __chkstk_darwin(v17 - 8);
  v57 = v6;
  v58 = v5;
  v19 = *(v6 + 56);
  v61 = &v52 - v20;
  v19(v18);
  v63 = _swiftEmptyArrayStorage;
  TTRRemindersListViewModel.SharingStatus.highlightToShow.getter();
  v21 = type metadata accessor for TTRSharedWithYouModel();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v16, 1, v21) == 1)
  {
    sub_1000079B4(v16, &qword_1007762B0);
    v23 = _swiftEmptyArrayStorage;
LABEL_7:
    v29 = v58;
    v28 = v59;
    goto LABEL_8;
  }

  v24 = TTRSharedWithYouModel.remList.getter();
  v25 = v21;
  v26 = v24;
  (*(v22 + 8))(v16, v25);
  TTRSharedWithYouProvider.highlightInfo(for:)();
  v27 = (*(v11 + 88))(v13, v10);
  if (v27 == enum case for REMAsyncOperationState.running<A>(_:))
  {
    (*(v11 + 96))(v13, v10);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v23 = v63;
    goto LABEL_7;
  }

  if (v27 != enum case for REMAsyncOperationState.succeeded<A>(_:))
  {
    if (v27 != enum case for REMAsyncOperationState.failed<A>(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v11 + 8))(v13, v10);
    v28 = v59;
    if (qword_100767028 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100003E30(v41, qword_100776068);
    v42 = v26;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();

    v45 = os_log_type_enabled(v43, v44);
    v29 = v58;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v62[0] = v53;
      *v46 = 136315138;
      v47 = [v42 displayName];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = sub_100004060(v48, v50, v62);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v43, v44, "fetchHighlight: No highlight for: %s", v46, 0xCu);
      sub_100004758(v53);
    }

    else
    {
    }

    v23 = _swiftEmptyArrayStorage;
LABEL_8:
    v30 = v57;
    if (!(v23 >> 62))
    {
      goto LABEL_9;
    }

LABEL_13:
    v35 = _CocoaArrayWrapper.endIndex.getter();
    v31 = v61;
    if (v35)
    {
      goto LABEL_10;
    }

LABEL_14:

    goto LABEL_15;
  }

  (*(v11 + 96))(v13, v10);
  v34 = v61;
  sub_1000079B4(v61, &qword_100775700);
  v30 = v57;
  v29 = v58;
  (*(v57 + 32))(v34, v13, v58);
  (v19)(v34, 0, 1, v29);
  v23 = _swiftEmptyArrayStorage;
  v28 = v59;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_13;
  }

LABEL_9:
  v31 = v61;
  if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_10:
  sub_100058000(&qword_1007762B8);
  v62[0] = v23;
  sub_100058000(&qword_1007762C0);
  sub_10000E188(&qword_1007762C8, &qword_1007762C0);
  static Promise.all<A>(_:)();

  v32 = swift_allocObject();
  *(v32 + 16) = v55;
  *(v32 + 24) = v56;

  v33 = zalgo.getter();
  dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_15:
  v36 = 1;
  if (!(*(v30 + 48))(v31, 1, v29))
  {
    v37 = v54;
    (*(v30 + 16))(v54, v31, v29);
    TTRSharedWithYouHighlight.ckShareURL.getter();
    (*(v30 + 8))(v37, v29);
    v36 = 0;
  }

  v38 = type metadata accessor for URL();
  (*(*(v38 - 8) + 56))(v28, v36, 1, v38);
  v39 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_currentShareURL;
  swift_beginAccess();
  sub_10000D184(v28, v4 + v39, &unk_100775660);
  swift_endAccess();
  sub_10000794C(v31, v60, &qword_100775700);
  return sub_1000079B4(v31, &qword_100775700);
}

uint64_t sub_10024D72C(void *a1)
{
  v2 = v1;
  v64 = a1;
  v66 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v59 = *(v66 - 8);
  __chkstk_darwin(v66);
  v61 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for TTRRemindersListViewModel.Item();
  v69 = *(v53 - 8);
  v4 = __chkstk_darwin(v53);
  v60 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v62 = &v48 - v7;
  __chkstk_darwin(v6);
  v52 = &v48 - v8;
  v9 = type metadata accessor for TTRReminderListCompletionBehavior();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v48 - v17;
  v19 = *(v1 + 64);
  v20 = *(v2 + 72);
  ObjectType = swift_getObjectType();
  v22 = *(v20 + 16);
  v67 = v20;
  v68 = v19;
  v65 = ObjectType;
  v22(ObjectType, v20);
  LOBYTE(v19) = v18[*(v13 + 44)];
  sub_100262C74(v18, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v19)
  {
    return 512;
  }

  v23 = v64;
  v24 = v64[2];
  if (!v24)
  {
    return 512;
  }

  v22(v65, v67);
  (*(v10 + 32))(v12, &v16[*(v13 + 20)], v9);
  v25 = (*(v10 + 88))(v12, v9);
  if (v25 == enum case for TTRReminderListCompletionBehavior.disallowed(_:))
  {
    (*(v10 + 96))(v12, v9);
    sub_1000079B4(v12, &qword_100776290);
    return 512;
  }

  if (v25 == enum case for TTRReminderListCompletionBehavior.default(_:) || v25 == enum case for TTRReminderListCompletionBehavior.requireConfirmationForRemindersWithSubtasks(_:))
  {
    v63 = *(v69 + 16);
    v27 = *(v69 + 72);
    v51 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v28 = v23 + v51;
    v58 = (v59 + 11);
    v57 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
    v56 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
    v55 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
    v54 = v59 + 1;
    v59 = (v69 + 8);
    v69 += 16;
    v50 = (v69 + 16);
    v64 = _swiftEmptyArrayStorage;
    v49 = v24;
    v29 = v66;
    v30 = v52;
    v31 = v53;
    v32 = v61;
    v63(v52, v28, v53);
    while (1)
    {
      TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
      v33 = (*v58)(v32, v29);
      if (v33 != v57 && v33 != v56 && v33 != v55)
      {
        if (v33 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
        {
          goto LABEL_45;
        }

LABEL_37:
        (*v59)(v30, v31);

        return 512;
      }

      (*v54)(v32, v29);
      v36 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.reminderChangeItem(forEditing:)();
      if (v36)
      {
        v37 = v36;
        if ([v36 isCompleted])
        {
          v63(v62, v30, v31);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_100547094(0, v64[2] + 1, 1, v64);
          }

          v39 = v64[2];
          v38 = v64[3];
          if (v39 >= v38 >> 1)
          {
            v64 = sub_100547094(v38 > 1, v39 + 1, 1, v64);
          }

          (*v59)(v30, v31);
          v40 = v64;
          v64[2] = v39 + 1;
          (*v50)(&v40[v51 + v39 * v27], v62, v31);
          v32 = v61;
        }

        else
        {
          (*v59)(v30, v31);
        }
      }

      else
      {
        v41 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
        if (!v41)
        {
          goto LABEL_37;
        }

        v42 = v41;
        if ([v41 isCompleted])
        {
          v63(v60, v30, v31);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_100547094(0, v64[2] + 1, 1, v64);
          }

          v44 = v64[2];
          v43 = v64[3];
          if (v44 >= v43 >> 1)
          {
            v64 = sub_100547094(v43 > 1, v44 + 1, 1, v64);
          }

          (*v59)(v30, v31);
          v45 = v64;
          v64[2] = v44 + 1;
          (*v50)(&v45[v51 + v44 * v27], v60, v31);
          v32 = v61;
        }

        else
        {
          (*v59)(v30, v31);
        }
      }

      v29 = v66;
      v28 += v27;
      if (!--v24)
      {
        break;
      }

      v63(v30, v28, v31);
    }

    v46 = v64[2];

    if (v49 == v46)
    {
      v47 = 1;
    }

    else
    {
      v47 = 258;
    }

    if (v46)
    {
      return v47;
    }

    else
    {
      return 256;
    }
  }

  else
  {
    if (v25 == enum case for TTRReminderListCompletionBehavior.requireConfirmationForRecoverReminders(_:))
    {
      return 512;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_45:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_10024DEE4(uint64_t a1)
{
  v26 = a1;
  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  (*(v8 + 152))(ObjectType, v8);
  v10 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_1000079B4(v7, &unk_10078A380);
    LODWORD(v7) = 0;
  }

  else
  {
    v12 = TTRRemindersListViewModel.ListInfo.isRecentlyDeletedList.getter();
    v13 = v7;
    LODWORD(v7) = v12;
    (*(v11 + 8))(v13, v10);
  }

  (*(v8 + 16))(ObjectType, v8);
  v14 = v4[*(v2 + 44)];
  sub_100262C74(v4, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v14 == 1 && (v7 & 1) == 0)
  {
    return 0;
  }

  sub_1002521EC(v26);
  type metadata accessor for TTRListEditor();
  v15 = static TTRListEditor.filterOutSubtasksWithParents(in:)();
  LOBYTE(v17) = v16;

  if (v15 >> 62)
  {
LABEL_21:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (!v18)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
LABEL_22:

      return 0;
    }
  }

  if (!(v7 & 1 | ((v17 & 1) == 0)))
  {
    goto LABEL_22;
  }

  LODWORD(v26) = v7;
  v19 = 0;
  v7 = &selRef_layoutIfNeeded;
  do
  {
    v17 = v19;
    if (v18 == v19)
    {
      break;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v20 = *(v15 + 8 * v19 + 32);
    }

    v21 = v20;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v22 = [v20 account];
    v23 = [v22 capabilities];

    LODWORD(v22) = [v23 supportsSubtasks];
    v19 = v17 + 1;
  }

  while (!v22);
  return v15;
}

void sub_10024E244(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v4 = v3;
  v65 = a3;
  v66 = *v3;
  v7 = type metadata accessor for REMAnalyticsEvent();
  v68 = *(v7 - 8);
  __chkstk_darwin(v7);
  v67 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for TTRRemindersListViewModel.Item();
  v69 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v14 = sub_100003E30(v10, qword_100776068);
  v15 = *(v11 + 16);
  v72 = v14;
  v15(v13);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x736D657469;
  *(inited + 40) = 0xE500000000000000;
  v17 = sub_100058000(&qword_10076E0B0);
  *(inited + 48) = a1;
  *(inited + 72) = v17;
  *(inited + 80) = 0x44497473696CLL;
  *(inited + 88) = 0xE600000000000000;
  if (a2)
  {
    v18 = a1;

    v19 = [a2 objectID];
    v77 = sub_100003540(0, &qword_10076BA50);
    *&aBlock = v19;
    sub_100007DD8(&aBlock, (inited + 96));
  }

  else
  {
    *(inited + 120) = &type metadata for String;
    *(inited + 96) = 7104878;
    *(inited + 104) = 0xE300000000000000;
    v18 = a1;
  }

  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  (*(v11 + 8))(v13, v10);
  if (a2)
  {
    v20 = a2;
  }

  else
  {
    swift_getObjectType();
    Fallback = dispatch thunk of TTRRemindersListInteractorType.fetchDefaultListOrCreateFallbackList()();
    if (!Fallback)
    {
      v20 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v20, v60, "Failed to fetch default list for reminder recovery", v61, 2u);
      }

      goto LABEL_21;
    }

    v20 = Fallback;
  }

  v22 = a2;
  v23 = REMList.accountCapabilities.getter();

  v24 = [v23 supportsRecentlyDeletedList];
  if (!v24)
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Reminder recovery for target list is not supported, should be part of CloudKit account.", v36, 2u);
    }

LABEL_21:
    return;
  }

  v62 = v20;
  v63 = v7;
  *&aBlock = _swiftEmptyArrayStorage;
  v25 = *(v18 + 16);
  v64 = v4;
  if (v25)
  {
    v26 = v4[8];
    v71 = v4[9];
    v72 = v26;
    ObjectType = swift_getObjectType();
    v27 = v69[2];
    v28 = v18 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v29 = v69[9];
    v30 = (v69 + 1);
    v69 = _swiftEmptyArrayStorage;
    v31 = v74;
    do
    {
      v32 = v73;
      v27(v73, v28, v31);
      v33 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
      (*v30)(v32, v31);
      if (v33)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v69 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v69 = aBlock;
      }

      v28 += v29;
      --v25;
    }

    while (v25);
  }

  else
  {
    v69 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for TTRUserDefaults();
  v37 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v38 = sub_100058000(&qword_1007757E8);
  v39 = v67;
  v40 = (v67 + *(v38 + 48));
  v41 = (v67 + *(v38 + 80));
  sub_10000794C(v65, v67, &qword_100775608);
  v42 = enum case for REMUserOperation.recoverReminder(_:);
  v43 = type metadata accessor for REMUserOperation();
  (*(*(v43 - 8) + 104))(v39, v42, v43);
  *v40 = TTRUserDefaults.activitySessionId.getter();
  v40[1] = v44;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v45 = _typeName(_:qualified:)();
  v47 = v46;

  *&aBlock = v45;
  *(&aBlock + 1) = v47;
  v48._object = 0x8000000100679500;
  v48._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v48);
  v49 = *(&aBlock + 1);
  *v41 = aBlock;
  v41[1] = v49;
  v50 = v68;
  v51 = v63;
  (*(v68 + 104))(v39, enum case for REMAnalyticsEvent.userOperation(_:), v63);
  REMAnalyticsManager.post(event:)();

  (*(v50 + 8))(v39, v51);
  v52 = objc_opt_self();
  static TTRLocalizableStrings.UndoAction.recoverReminder.getter();
  v53 = String._bridgeToObjectiveC()();

  v54 = swift_allocObject();
  v55 = v69;
  v54[2] = v64;
  v54[3] = v55;
  v56 = v62;
  v54[4] = v62;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_100262570;
  *(v57 + 24) = v54;
  v78 = sub_100026410;
  v79 = v57;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v76 = sub_100026440;
  v77 = &unk_10071CD68;
  v58 = _Block_copy(&aBlock);

  v59 = v56;

  [v52 withActionName:v53 block:v58];

  _Block_release(v58);
  LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

  if (v58)
  {
    __break(1u);
  }
}

void *sub_10024EC18(uint64_t a1)
{
  v75 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v3 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v53 - v6;
  v80 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v80 - 8);
  __chkstk_darwin(v80);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v53 - v12;
  __chkstk_darwin(v13);
  v58 = &v53 - v14;
  v15 = *(v1 + 64);
  v16 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  v18 = *(v16 + 208);
  v66 = ObjectType;
  v67 = v15;
  v55 = v16;
  v19 = v18(ObjectType, v16);
  v62 = v20;
  v21 = *(a1 + 16);
  if (v21)
  {
    v61 = swift_getObjectType();
    v22 = 0;
    v24 = *(v8 + 16);
    v23 = v8 + 16;
    v78 = v24;
    v54 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v72 = a1 + v54;
    v25 = *(v23 + 56);
    v26 = (v3 + 8);
    v76 = (v23 - 8);
    v77 = v25;
    v59 = v21;
    v68 = v21 + 1;
    v57 = _swiftEmptyArrayStorage;
    v27 = v58;
    v60 = v19;
    while (1)
    {
      v63 = v22;
      v78(v27, v72 + v77 * v22, v80);
      if ((dispatch thunk of TTRRemindersListTreeContentsQueryable.isReminderWithSubtasks(_:)() & 1) == 0 || (v65 = *(v55 + 8), (v29 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)()) == 0))
      {
        (*v76)(v27, v80);
        goto LABEL_4;
      }

      v56 = v29;
      result = dispatch thunk of TTRRemindersListTreeContentsQueryable.subtasks(of:)();
      v81 = _swiftEmptyArrayStorage;
      v71 = result[2];
      if (v71)
      {
        v31 = 0;
        v69 = result + v54;
        v70 = result;
        v64 = _swiftEmptyArrayStorage;
        do
        {
          if (v31 >= result[2])
          {
            __break(1u);
            return result;
          }

          v32 = v23;
          v78(v79, &v69[v31 * v77], v80);
          v73 = v31 + 1;
          v33 = v68;
          v34 = v72;
          while (--v33)
          {
            v35 = v34 + v77;
            v36 = v80;
            (v78)(v10);
            TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
            v37 = v74;
            TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
            v38 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
            v39 = *v26;
            v40 = v37;
            v41 = v75;
            (*v26)(v40, v75);
            v39(v7, v41);
            v42 = *v76;
            (*v76)(v10, v36);
            v34 = v35;
            if (v38)
            {
              v42(v79, v80);
              v23 = v32;
              goto LABEL_11;
            }
          }

          v43 = v79;
          v44 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
          (*v76)(v43, v80);
          v23 = v32;
          if (v44)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v64 = v81;
          }

LABEL_11:
          result = v70;
          v31 = v73;
        }

        while (v73 != v71);

        v45 = v64;
        if (v64 >> 62)
        {
          goto LABEL_29;
        }
      }

      else
      {

        v45 = _swiftEmptyArrayStorage;
        if (_swiftEmptyArrayStorage >> 62)
        {
LABEL_29:
          v46 = v45;
          v47 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_22;
        }
      }

      v46 = v45;
      v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:
      (*v76)(v58, v80);
      if (v47)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v48 = v57;
        }

        else
        {
          v48 = sub_1005480A8(0, v57[2] + 1, 1, v57);
        }

        v50 = v48[2];
        v49 = v48[3];
        v28 = v63;
        if (v50 >= v49 >> 1)
        {
          v52 = sub_1005480A8((v49 > 1), v50 + 1, 1, v48);
          v28 = v63;
          v48 = v52;
        }

        v48[2] = v50 + 1;
        v57 = v48;
        v51 = &v48[2 * v50];
        v51[4] = v56;
        v51[5] = v46;
        v27 = v58;
        goto LABEL_5;
      }

      v27 = v58;
LABEL_4:
      v28 = v63;
LABEL_5:
      v22 = v28 + 1;
      if (v22 == v59)
      {
        swift_unknownObjectRelease();
        return v57;
      }
    }
  }

  swift_unknownObjectRelease();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10024F250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAssigneeCandidate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100776068);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x65656E6769737361;
  *(inited + 40) = 0xE800000000000000;
  (*(v5 + 16))(v7, a1, v4);
  *(inited + 48) = String.init<A>(describing:)();
  *(inited + 56) = v10;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0);
  *(inited + 96) = a2;

  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  return TTRRemindersListPresenterCapabilityCore.request(setAssigned:for:pendingMoveTargetListForHostingReminder:)();
}

void sub_10024F488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, void (*a8)(void), char *a9)
{
  v205 = a8;
  v174 = a7;
  v173 = a6;
  v187 = a5;
  v191 = a4;
  v197 = a3;
  v196 = a2;
  v188 = type metadata accessor for REMManualOrdering.ChangeReason();
  v181 = *(v188 - 8);
  __chkstk_darwin(v188);
  v178 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v177 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_10076DF30);
  __chkstk_darwin(v12 - 8);
  v176 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v175 = &v168 - v15;
  v193 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v184 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v183 = &v168 - v18;
  v195 = sub_100058000(&unk_100775620);
  v190 = *(v195 - 8);
  __chkstk_darwin(v195);
  v189 = &v168 - v19;
  v20 = sub_100058000(&qword_100776310);
  __chkstk_darwin(v20 - 8);
  v171 = (&v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v170 = (&v168 - v23);
  __chkstk_darwin(v24);
  v182 = (&v168 - v25);
  v186 = type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection();
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v169 = &v168 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v168 = &v168 - v28;
  __chkstk_darwin(v29);
  v172 = &v168 - v30;
  v31 = sub_100058000(&qword_100775970);
  __chkstk_darwin(v31 - 8);
  v33 = &v168 - v32;
  v201 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v194 = (&v168 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v198 = &v168 - v36;
  v211 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v37 = *(v211 - 8);
  __chkstk_darwin(v211);
  v39 = &v168 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TTRRemindersListViewModel.Item();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v168 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v218 = &v168 - v45;
  __chkstk_darwin(v46);
  v219 = &v168 - v47;
  __chkstk_darwin(v48);
  v50 = &v168 - v49;
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v199 = v33;
  v202 = v43;
  v51 = type metadata accessor for Logger();
  v52 = sub_100003E30(v51, qword_100776068);
  sub_100008E04(_swiftEmptyArrayStorage);
  v203 = v52;
  sub_10000FD44();

  v53 = *(a1 + 16);
  v220 = v40;
  v206 = v41;
  if (v53)
  {
    v55 = *(v41 + 16);
    v54 = v41 + 16;
    ObjectType = v55;
    v210 = (*(v54 + 64) + 32) & ~*(v54 + 64);
    v56 = a1 + v210;
    v57 = *(v54 + 56);
    v58 = v37;
    v59 = (v37 + 88);
    LODWORD(v215) = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
    LODWORD(v214) = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
    v209 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
    v207 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
    v208 = (v54 - 8);
    v217 = v54;
    v212 = (v58 + 8);
    v213 = (v54 + 16);
    v60 = _swiftEmptyArrayStorage;
    v61 = v211;
    while (1)
    {
      v62 = v57;
      ObjectType(v50, v56, v40);
      TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
      v63 = (*v59)(v39, v61);
      if (v63 == v215 || v63 == v214)
      {
        (*v212)(v39, v61);
        v65 = *v213;
        (*v213)(v218, v50, v40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v221 = v60;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1004A1C48(0, v60[2] + 1, 1);
          v60 = v221;
        }

        v68 = v60[2];
        v67 = v60[3];
        v69 = v60;
        if (v68 >= v67 >> 1)
        {
          sub_1004A1C48(v67 > 1, v68 + 1, 1);
          v69 = v221;
        }

        v69[2] = v68 + 1;
        v70 = v69 + v210 + v68 * v62;
        v40 = v220;
        v65(v70, v218, v220);
        v60 = v69;
        v57 = v62;
        v61 = v211;
      }

      else
      {
        if (v63 == v209)
        {
          (*v212)(v39, v61);
        }

        else if (v63 != v207)
        {
          goto LABEL_97;
        }

        (*v208)(v50, v40);
      }

      v56 += v57;
      if (!--v53)
      {
        goto LABEL_22;
      }
    }
  }

  v60 = _swiftEmptyArrayStorage;
LABEL_22:
  v221 = _swiftEmptyArrayStorage;
  v71 = v60[2];
  v213 = v71;
  v214 = v60;
  if (v71)
  {
    v72 = v204[8];
    v217 = v204[9];
    v218 = v72;
    ObjectType = swift_getObjectType();
    v73 = *(v206 + 16);
    v74 = v60 + ((*(v206 + 80) + 32) & ~*(v206 + 80));
    v75 = *(v206 + 72);
    v76 = (v206 + 8);
    v215 = _swiftEmptyArrayStorage;
    do
    {
      v78 = v219;
      v77 = v220;
      v73(v219, v74, v220);
      v79 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
      (*v76)(v78, v77);
      if (v79)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v221 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v221 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v215 = *((v221 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v215 = v221;
      }

      v74 += v75;
      v71 = (v71 - 1);
    }

    while (v71);
  }

  else
  {
    v215 = _swiftEmptyArrayStorage;
  }

  v80 = v215;
  if (v215 >> 62)
  {
    v164 = _CocoaArrayWrapper.endIndex.getter();
    v81 = v220;
    if (!v164)
    {
      goto LABEL_89;
    }
  }

  else
  {
    v81 = v220;
    if (!*((v215 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_89;
    }
  }

  if ((v80 & 0xC000000000000001) != 0)
  {
    v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_96;
    }

    v82 = *(v80 + 32);
  }

  v83 = v82;
  v84 = [v82 list];

  if (v84)
  {
    if (!v213)
    {

      goto LABEL_49;
    }

    v218 = a9;
    v219 = v84;
    v85 = v214;
    if (*(v214 + 16))
    {
      v86 = v202;
      (*(v206 + 16))(v202, v214 + ((*(v206 + 80) + 32) & ~*(v206 + 80)), v81);
      v87 = v204[8];
      v88 = v204[9];
      v89 = swift_getObjectType();
      v90 = *(v88 + 104);
      v91 = v90(v89, v88);
      if (v91)
      {
        v92 = v91;
        v93 = v206;
        v94 = v90(v89, v88);
        if (!v94)
        {
          (*(v93 + 8))(v202, v220);
          swift_unknownObjectRelease();

          v99 = v199;
          (*(v200 + 56))(v199, 1, 1, v201);
          v84 = v219;
LABEL_48:
          sub_1000079B4(v99, &qword_100775970);
          goto LABEL_49;
        }

        v95 = v94;
        v96 = v89;
        v217 = v92;
        Strong = swift_unknownObjectWeakLoadStrong();
        v98 = v200;
        v99 = v199;
        if (!Strong)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          (*(v98 + 56))(v99, 1, 1, v201);
          goto LABEL_47;
        }

        v213 = v96;
        ObjectType = v87;
        v100 = *(v95 + 64);
        swift_unknownObjectRelease();
        v101 = swift_getObjectType();
        (*(v100 + 32))(v202, v101, v100);
        swift_unknownObjectRelease();
        v102 = v201;
        if ((*(v98 + 48))(v99, 1, v201) == 1)
        {
          swift_unknownObjectRelease();

LABEL_47:
          v84 = v219;
          (*(v93 + 8))(v202, v220);
          goto LABEL_48;
        }

        v103 = v198;
        (*(v98 + 32))(v198, v99, v102);
        v104 = v194;
        (*(v98 + 16))(v194, v103, v102);
        v105 = (*(v98 + 88))(v104, v102);
        v106 = v219;
        if (v105 == enum case for TTRRemindersListInteractorSectionsCapabilityTarget.list(_:))
        {
          v107 = *(v98 + 8);
          v107(v104, v102);
          v108 = v217;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v109 = *(v108 + 64);
            v110 = v182;
            sub_1002E4564(v196, v197, v108, v182);
            v111 = v186;
            if ((*(v185 + 48))(v110, 1, v186) != 1)
            {
              v124 = v110;
              v125 = v172;
              sub_100262C10(v124, v172);
              v126 = swift_getObjectType();
              (*(v109 + 64))(v125, v125 + *(v111 + 24), v85, v173 & 1, v174 & 1, v126, v109);
              swift_unknownObjectRelease();

              v123 = *(v125 + *(v111 + 20));
              sub_100262C74(v125, type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection);
              goto LABEL_71;
            }

            swift_unknownObjectRelease();

            sub_1000079B4(v110, &qword_100776310);
          }

          else
          {
          }

          v123 = 0;
LABEL_71:
          swift_getObjectType();
          v127 = v190;
          v128 = v189;
          v129 = v195;
          (*(v190 + 104))(v189, enum case for TTRRelativeInsertionPosition.afterAll<A>(_:), v195);
          v130 = v219;
          dispatch thunk of TTRRemindersListInteractorType.move(reminders:toNewSection:sectionID:targetList:position:initialSectionIDByReminderID:isFromSuggestion:moveSectionCompletion:)();
          swift_unknownObjectRelease();

          (*(v127 + 8))(v128, v129);
          v107(v198, v201);
LABEL_87:
          (*(v93 + 8))(v202, v220);
          return;
        }

        if (v105 == enum case for TTRRemindersListInteractorSectionsCapabilityTarget.smartList(_:))
        {
          (*(v98 + 96))(v104, v102);
          v112 = *v104;
          v113 = v175;
          (*(v88 + 608))(v213, v88);
          v114 = v192;
          v115 = v193;
          if ((*(v192 + 48))(v113, 1, v193) == 1)
          {

            sub_1000079B4(v113, &qword_10076DF30);
            v116 = Logger.logObject.getter();
            v117 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v116, v117))
            {
              v118 = swift_slowAlloc();
              *v118 = 0;
              v119 = "Unable to get manual ordering for custom smart list when moving reminders.";
LABEL_64:
              _os_log_impl(&_mh_execute_header, v116, v117, v119, v118, 2u);
              v102 = v201;

              goto LABEL_65;
            }

            goto LABEL_65;
          }

          v212 = v112;
          (*(v114 + 32))(v183, v113, v115);
          v131 = v217;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v132 = *(v131 + 64);
            v133 = v170;
            sub_1002E4564(v196, v197, v131, v170);
            v134 = v186;
            v135 = v88;
            if ((*(v185 + 48))(v133, 1, v186) != 1)
            {
              v145 = v133;
              v146 = v168;
              sub_100262C10(v145, v168);
              v147 = swift_getObjectType();
              (*(v132 + 64))(v146, v146 + *(v134 + 24), v85, v173 & 1, v174 & 1, v147, v132);
              swift_unknownObjectRelease();

              v143 = *(v146 + *(v134 + 20));
              sub_100262C74(v146, type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection);
              goto LABEL_83;
            }

            swift_unknownObjectRelease();

            sub_1000079B4(v133, &qword_100776310);
          }

          else
          {
            v135 = v88;
          }

          v143 = 0;
LABEL_83:
          v218 = v204[6];
          v214 = swift_getObjectType();
          v148 = v190;
          v149 = v189;
          (*(v190 + 104))(v189, enum case for TTRRelativeInsertionPosition.afterAll<A>(_:), v195);
          v150 = v177;
          (*(v135 + 576))(v213, v135);
          v151 = v181;
          v152 = v178;
          (*(v181 + 104))(v178, enum case for REMManualOrdering.ChangeReason.moveWithinList(_:), v188);
          v153 = v143;
          v154 = v212;
          dispatch thunk of TTRRemindersListInteractorType.move(reminders:toSmartListNewSection:sectionID:targetSmartList:position:initialSectionIDByReminderID:sortingStyleInPresenter:paramsForREMManualOrdering:changeReason:moveSectionCompletion:)();
          swift_unknownObjectRelease();

          (*(v151 + 8))(v152, v188);
          (*(v179 + 8))(v150, v180);
          (*(v148 + 8))(v149, v195);
          (*(v192 + 8))(v183, v193);
LABEL_86:
          (*(v200 + 8))(v198, v201);
          goto LABEL_87;
        }

        if (v105 == enum case for TTRRemindersListInteractorSectionsCapabilityTarget.template(_:))
        {
          (*(v98 + 96))(v104, v102);
          v112 = *v104;
          v120 = v176;
          (*(v88 + 608))(v213, v88);
          v121 = v192;
          v122 = v193;
          if ((*(v192 + 48))(v120, 1, v193) == 1)
          {

            sub_1000079B4(v120, &qword_10076DF30);
            v116 = Logger.logObject.getter();
            v117 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v116, v117))
            {
              v118 = swift_slowAlloc();
              *v118 = 0;
              v119 = "Unable to get manual ordering for template when moving reminders.";
              goto LABEL_64;
            }

LABEL_65:

            if (v205)
            {
              v205(0);
            }

            swift_unknownObjectRelease();

            (*(v200 + 8))(v198, v102);
            goto LABEL_87;
          }

          (*(v121 + 32))(v184, v120, v122);
          v136 = v217;
          v137 = swift_unknownObjectWeakLoadStrong();
          v212 = v112;
          if (v137)
          {
            v138 = *(v136 + 64);
            v139 = v171;
            sub_1002E4564(v196, v197, v136, v171);
            v140 = v186;
            v141 = v85;
            v142 = v88;
            if ((*(v185 + 48))(v139, 1, v186) != 1)
            {
              v155 = v169;
              sub_100262C10(v139, v169);
              v156 = swift_getObjectType();
              (*(v138 + 64))(v155, v155 + *(v140 + 24), v141, v173 & 1, v174 & 1, v156, v138);
              swift_unknownObjectRelease();

              v144 = *(v155 + *(v140 + 20));
              sub_100262C74(v155, type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection);
              goto LABEL_85;
            }

            swift_unknownObjectRelease();

            sub_1000079B4(v139, &qword_100776310);
          }

          else
          {
            v142 = v88;
          }

          v144 = 0;
LABEL_85:
          v214 = v204[6];
          v211 = swift_getObjectType();
          v157 = v190;
          v158 = v189;
          (*(v190 + 104))(v189, enum case for TTRRelativeInsertionPosition.afterAll<A>(_:), v195);
          v159 = v177;
          (*(v142 + 576))(v213, v142);
          v160 = v181;
          v161 = v178;
          (*(v181 + 104))(v178, enum case for REMManualOrdering.ChangeReason.moveWithinList(_:), v188);
          v162 = v144;
          v163 = v212;
          dispatch thunk of TTRRemindersListInteractorType.move(reminders:toTemplateNewSection:sectionID:targetTemplate:position:initialSectionIDByReminderID:sortingStyleInPresenter:paramsForREMManualOrdering:changeReason:moveSectionCompletion:)();
          swift_unknownObjectRelease();

          (*(v160 + 8))(v161, v188);
          (*(v179 + 8))(v159, v180);
          (*(v157 + 8))(v158, v195);
          (*(v192 + 8))(v184, v193);
          goto LABEL_86;
        }

LABEL_98:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      (*(v206 + 8))(v86, v81);

      v84 = v219;
LABEL_49:
      if (v205)
      {
        v205(0);
      }

      return;
    }

LABEL_96:
    __break(1u);
LABEL_97:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_98;
  }

LABEL_89:

  v165 = Logger.logObject.getter();
  v166 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v165, v166))
  {
    v167 = swift_slowAlloc();
    *v167 = 0;
    _os_log_impl(&_mh_execute_header, v165, v166, "Unable to get reminder's list to proceed with creating New Section within list.", v167, 2u);
  }

  if (v205)
  {
    v205(0);
  }
}

uint64_t sub_100250F84(uint64_t a1)
{
  v33 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v27 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v9 - 8);
  v11 = &v25[-v10];
  v12 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  (*(v12 + 152))(ObjectType, v12);
  v14 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14) == 1)
  {
    sub_1000079B4(v11, &unk_10078A380);
  }

  else
  {
    v16 = TTRRemindersListViewModel.ListInfo.isRecentlyDeletedList.getter();
    (*(v15 + 8))(v11, v14);
    if (v16)
    {
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = v6 + 16;
        v32 = *(v6 + 16);
        v19 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v30 = *(v18 + 56);
        v20 = (v27 + 88);
        v31 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
        v29 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
        v28 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
        v26 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
        v21 = (v18 - 8);
        v22 = (v27 + 8);
        v32(v8, v19, v5);
        while (1)
        {
          TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
          v23 = (*v20)(v4, v33);
          if (v23 == v31)
          {
            (*v21)(v8, v5);
            (*v22)(v4, v33);
            return 1;
          }

          if (v23 == v29 || v23 == v28)
          {
            (*v21)(v8, v5);
            (*v22)(v4, v33);
          }

          else
          {
            if (v23 != v26)
            {
              result = _diagnoseUnexpectedEnumCase<A>(type:)();
              __break(1u);
              return result;
            }

            (*v21)(v8, v5);
          }

          v19 += v30;
          if (!--v17)
          {
            return 0;
          }

          v32(v8, v19, v5);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100251370(uint64_t a1, uint64_t a2)
{
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100776068);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  strcpy((inited + 32), "listObjectID");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v5 = TTRListOrCustomSmartList.objectID.getter();
  v6 = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0);
  *(inited + 96) = a2;

  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  return TTRRemindersListPresenterCapabilityCore.request(addToList:for:)();
}

uint64_t sub_100251524(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076C6B8);
  __chkstk_darwin(v4);
  v6 = &v11[-v5];
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_100776068);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  strcpy((inited + 32), "dateComponents");
  *(inited + 47) = -18;
  sub_10000794C(a1, v6, &qword_10076C6B8);
  *(inited + 48) = String.init<A>(describing:)();
  *(inited + 56) = v9;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0);
  *(inited + 96) = a2;

  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  return TTRRemindersListPresenterCapabilityCore.request(setDueDateTo:for:)();
}

void sub_100251738(Swift::OpaquePointer a1, Swift::OpaquePointer a2)
{
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100776068);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x6E65727275636572;
  *(inited + 40) = 0xEF73656C75526563;
  type metadata accessor for TTRRecurrenceRuleModel();
  *(inited + 48) = Array.description.getter();
  *(inited + 56) = v6;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = sub_100058000(&qword_10076E0B0);
  *(inited + 96) = a2;

  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  TTRRemindersListPresenterCapabilityCore.request(setRecurrenceRulesTo:for:)(a1, a2);
}

uint64_t sub_1002518E4(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v71 = *(v3 - 8);
  __chkstk_darwin(v3);
  v70 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = &v59 - v6;
  v7 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v65 = *(v7 - 8);
  v66 = v7;
  __chkstk_darwin(v7);
  v64 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v68 = *(v9 - 8);
  v69 = v9;
  __chkstk_darwin(v9);
  v67 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_1007757C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v59 - v12;
  v14 = type metadata accessor for TTRDateChangeType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v72 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100003E30(v17, qword_100776068);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v63 = sub_10026263C(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
  v20 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v20;
  *(inited + 56) = v21;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v22 = v74;
  TTRRemindersListPresenterCapabilityCore.postponeType(relativeToDueDate:from:)();
  v23 = a1;
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000079B4(v13, &qword_1007757C0);
    v25 = v70;
    v24 = v71;
    (*(v71 + 16))(v70, v23, v3);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v75 = v29;
      *v28 = 136315138;
      v30 = TTRTreeStorageItem.treeItemDescription.getter();
      v32 = v31;
      (*(v24 + 8))(v25, v3);
      v33 = sub_100004060(v30, v32, &v75);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Couldn't get dateChangeType to update instance of a recurring reminder {item: %s}", v28, 0xCu);
      sub_100004758(v29);
    }

    else
    {

      (*(v24 + 8))(v25, v3);
    }

    return 0;
  }

  v73 = v18;
  v34 = v72;
  (*(v15 + 32))(v72, v13, v14);
  v35 = v67;
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v37 = v68;
  v36 = v69;
  v38 = (*(v68 + 88))(v35, v69);
  if (v38 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    v60 = v23;
    v61 = v15;
    v70 = v14;
    (*(v37 + 96))(v35, v36);
    v40 = v65;
    v39 = v66;
    v41 = v64;
    (*(v65 + 32))(v64, v35, v66);
    v42 = *(v22 + 72);
    ObjectType = swift_getObjectType();
    v44 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v45 = (*(v42 + 256))(v44, ObjectType, v42);

    if (v45)
    {
      swift_getObjectType();
      v46 = v72;
      dispatch thunk of TTRRemindersListInteractorType.advanceForwardAndCreateIncompleteClone(_:with:)();

      (*(v40 + 8))(v41, v39);
      (*(v61 + 8))(v46, v70);
      return 1;
    }

    v48 = v71;
    v49 = v62;
    (*(v71 + 16))(v62, v60, v3);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v75 = v53;
      *v52 = 136315138;
      v54 = TTRTreeStorageItem.treeItemDescription.getter();
      v55 = v49;
      v57 = v56;
      (*(v48 + 8))(v55, v3);
      v58 = sub_100004060(v54, v57, &v75);

      *(v52 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v50, v51, "Reminders List is requesting to update instance of a recurring reminder that doesn't exist {item: %s}", v52, 0xCu);
      sub_100004758(v53);
    }

    else
    {

      (*(v48 + 8))(v49, v3);
    }

    (*(v65 + 8))(v64, v66);
    (*(v61 + 8))(v72, v70);
    return 0;
  }

  if (v38 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v38 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    (*(v15 + 8))(v34, v14);
    (*(v37 + 8))(v35, v36);
    return 0;
  }

  if (v38 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    (*(v15 + 8))(v34, v14);
    return 0;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void *sub_1002521EC(uint64_t a1)
{
  v51 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v51 - 8);
  __chkstk_darwin(v51);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v41 - v6;
  v54 = _swiftEmptyArrayStorage;
  v8 = *(a1 + 16);
  v42 = v3;
  v43 = v1;
  v44 = a1;
  v45 = v8;
  if (v8)
  {
    v9 = *(v1 + 64);
    v49 = *(v1 + 72);
    v50 = v9;
    ObjectType = swift_getObjectType();
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v47 = v12;
    v48 = ObjectType;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v14 = *(v11 + 56);
    v15 = _swiftEmptyArrayStorage;
    v16 = v51;
    v12(v7, v13, v51);
    while (1)
    {
      v17 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
      (*(v11 - 8))(v7, v16);
      if (v17)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v41 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v15 = v54;
      }

      v13 += v14;
      if (!--v8)
      {
        break;
      }

      v47(v7, v13, v16);
    }
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v18 = v15;
  if (v15 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v45;
  v21 = v46;
  v22 = v44;
  if (v19 != v45)
  {

    v23 = *(v43 + 72);
    v24 = swift_getObjectType();
    v25 = (*(v23 + 264))(v22, 0, v24, v23);
    v54 = _swiftEmptyArrayStorage;
    v46 = v25;
    if (v20)
    {
      v26 = *(v42 + 16);
      v27 = v22 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v28 = *(v42 + 72);
      v49 = v25 & 0xC000000000000001;
      v50 = v26;
      v29 = v25 & 0xFFFFFFFFFFFFFF8;
      if (v25 < 0)
      {
        v29 = v25;
      }

      v47 = v29;
      v30 = (v42 + 8);
      v48 = _swiftEmptyArrayStorage;
      v31 = v51;
      while (1)
      {
        v50(v21, v27, v31);
        v32 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
        if (v32)
        {
          break;
        }

        (*v30)(v21, v31);
LABEL_18:
        v27 += v28;
        if (!--v20)
        {
          goto LABEL_33;
        }
      }

      v33 = v32;
      if (v49)
      {
        v34 = __CocoaDictionary.lookup(_:)();
        if (v34)
        {
          v52 = v34;
          sub_100003540(0, &qword_10076BB00);
          swift_dynamicCast();
          v35 = v53;
LABEL_26:

          goto LABEL_28;
        }
      }

      else
      {
        v36 = v46;
        if (*(v46 + 2))
        {
          v37 = sub_1002613B0(v32);
          if (v38)
          {
            v35 = *(*(v36 + 7) + 8 * v37);
            v39 = v35;
            goto LABEL_26;
          }
        }
      }

      v35 = 0;
LABEL_28:
      (*v30)(v21, v31);
      if (v35)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v48 = v54;
      }

      goto LABEL_18;
    }

    v48 = _swiftEmptyArrayStorage;
LABEL_33:

    return v48;
  }

  return v18;
}

void sub_100252618(unint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = type metadata accessor for REMAnalyticsEvent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v34 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v10 = *(a1 + 32);
  }

  v32 = v5;
  v33 = v6;
  v31 = v10;
  v11 = [v10 account];
  if (qword_100767028 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_100776068);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x7265646E696D6572;
  *(inited + 40) = 0xE900000000000073;
  v14 = sub_100058000(&qword_10076BB08);
  *(inited + 48) = a1;
  *(inited + 72) = v14;
  *(inited + 80) = 0x49746E756F636361;
  *(inited + 88) = 0xE900000000000044;

  v15 = [v11 objectID];
  *(inited + 120) = sub_100003540(0, &qword_10076BA50);
  *(inited + 96) = v15;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  type metadata accessor for TTRUserDefaults();
  v16 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v17 = sub_100058000(&qword_1007757E8);
  v18 = &v9[*(v17 + 48)];
  v19 = &v9[*(v17 + 80)];
  sub_10000794C(v34, v9, &qword_100775608);
  v20 = enum case for REMUserOperation.permanentlyDeleteReminder(_:);
  v21 = type metadata accessor for REMUserOperation();
  (*(*(v21 - 8) + 104))(v9, v20, v21);
  *v18 = TTRUserDefaults.activitySessionId.getter();
  v18[1] = v22;
  TTRUserDefaults.activitySessionBeginTime.getter();
  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v23 = _typeName(_:qualified:)();
  v25 = v24;

  v35 = v23;
  v36 = v25;
  v26._object = 0x8000000100679500;
  v26._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v26);
  v27 = v36;
  *v19 = v35;
  *(v19 + 1) = v27;
  v28 = v30;
  v29 = v33;
  (*(v30 + 104))(v9, enum case for REMAnalyticsEvent.userOperation(_:), v33);
  REMAnalyticsManager.post(event:)();

  (*(v28 + 8))(v9, v29);
  swift_getObjectType();
  dispatch thunk of TTRRemindersListInteractorType.permanentlyHide(_:account:)();
}

id sub_100252AB8(uint64_t a1)
{
  v2 = sub_100058000(&qword_100775920);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_100058000(&qword_100776328);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  sub_10025B7B4(a1, v4);
  v8 = sub_100058000(&qword_100775928);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    sub_1000079B4(v4, &qword_100775920);
    return 0;
  }

  else
  {
    v10 = *&v4[*(v8 + 48)];
    v11 = *(v5 + 48);
    v12 = type metadata accessor for TTRRemindersListViewModel.Item();
    v13 = *(v12 - 8);
    (*(v13 + 32))(v7, v4, v12);
    *&v7[v11] = v10;
    v14 = *&v7[*(v5 + 48)];
    (*(v13 + 8))(v7, v12);
    v15 = [v14 store];
    v16 = [objc_allocWithZone(REMSaveRequest) initWithStore:v15];

    if (*(a1 + 16) == 1)
    {
      v17 = [v16 updateReminder:v14];

      return v17;
    }

    else
    {
      v18 = [v14 list];
      v19 = [v16 updateList:v18];

      v20 = String._bridgeToObjectiveC()();
      v21 = [v16 addReminderWithTitle:v20 toListChangeItem:v19];

      return v21;
    }
  }
}

uint64_t sub_100252DAC()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100776068);
  v1 = sub_100003E30(v0, qword_100776068);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100252E78(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1 && *(a2 + 8) == 1)
    {
      v2 = *a1;
      v3 = *a2;

      sub_1000E8E80(v2, v3);
    }
  }

  else if (!*(a2 + 8))
  {
    sub_100003540(0, &qword_100775690);
    static NSObject.== infix(_:_:)();
  }
}

uint64_t sub_100252F2C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v81 = a2;
  v82 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v3 = *(v82 - 8);
  __chkstk_darwin(v82);
  v77 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v75 = *(v5 - 8);
  v76 = v5;
  __chkstk_darwin(v5);
  v72 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v73 = *(v7 - 8);
  v74 = v7;
  __chkstk_darwin(v7);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100776338);
  __chkstk_darwin(v10);
  v86 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v87 = &v71 - v13;
  __chkstk_darwin(v14);
  v16 = &v71 - v15;
  v17 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v90 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TTRSectionID();
  v83 = *(v20 - 8);
  v84 = v20;
  __chkstk_darwin(v20);
  v88 = (&v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = a1;
  sub_10000794C(a1, v16, &qword_100776338);
  v22 = *(v10 + 48);
  v23 = *(v10 + 64);
  v85 = v10;

  v24 = type metadata accessor for TTRRemindersListViewModel.Item();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 88))(v16, v24);
  v78 = v3;
  v79 = v25;
  v80 = v24;
  if (v26 == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    v27 = v24;
    v28 = v81;
    (*(v25 + 96))(v16, v27);
    (*(v90 + 32))(v19, v16, v17);
    v29 = *(v3 + 8);
    v92 = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = &v16[v23];
    v31 = v82;
    v29(v30, v82);
    v29(&v16[v22], v31);
    TTRRemindersListViewModel.SectionHeader.id.getter();
    v32 = v72;
    TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
    (*(v73 + 8))(v9, v74);
    v34 = v75;
    v33 = v76;
    v35 = (*(v75 + 88))(v32, v76);
    v89 = v29;
    if (v35 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
    {
      (*(v90 + 8))(v19, v17);
      (*(v34 + 96))(v32, v33);
      *v88 = *v32;
      v43 = &enum case for TTRSectionID.sectioned(_:);
      v38 = v28;
    }

    else
    {
      if (v35 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:) || v35 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
      {
        v38 = v28;
        (*(v90 + 8))(v19, v17);
        (*(v34 + 8))(v32, v33);
      }

      else
      {
        if (v35 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
        {
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

        v38 = v28;
        (*(v90 + 8))(v19, v17);
      }

      v43 = &enum case for TTRSectionID.sectionless(_:);
    }

    v42 = v92;
  }

  else
  {
    v36 = v3;
    v38 = v81;
    v37 = v82;
    v39 = v23;
    v40 = v22;
    v41 = *(v36 + 8);
    v42 = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v41(&v16[v39], v82);
    v89 = v41;
    v41(&v16[v40], v37);
    (*(v25 + 8))(v16, v24);
    v43 = &enum case for TTRSectionID.sectionless(_:);
  }

  (*(v83 + 104))(v88, *v43, v84);
  v44 = v91;
  v45 = v87;
  sub_10000794C(v91, v87, &qword_100776338);
  v46 = v85;
  v47 = *(v85 + 64);

  *v38 = TTRRemindersListViewModel.ReminderID.objectID.getter();
  v48 = v45 + v47;
  v49 = v82;
  v50 = v89;
  v89(v48, v82);
  v51 = v86;
  sub_10000794C(v44, v86, &qword_100776338);
  v52 = *(v46 + 48);

  v38[1] = TTRRemindersListViewModel.ReminderID.objectID.getter();
  v50(v51 + v52, v49);
  v53 = *&v44[*(v46 + 80)];
  v54 = *(v53 + 16);
  v55 = _swiftEmptyArrayStorage;
  v92 = v42;
  if (v54)
  {
    v93 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v56 = v77;
    v57 = *(v78 + 16);
    v58 = v53 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
    v90 = *(v78 + 72);
    v91 = v57;
    v59 = v89;
    do
    {
      (v91)(v56, v58, v49);
      TTRRemindersListViewModel.ReminderID.objectID.getter();
      v59(v56, v49);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v58 += v90;
      --v54;
    }

    while (v54);
    v55 = v93;
    v38 = v81;
  }

  v60 = *(sub_100058000(&qword_100776330) + 80);
  v61 = v84;
  v62 = *(v85 + 48);
  v63 = *(v85 + 64);
  v38[2] = v55;
  (*(v83 + 32))(v38 + v60, v88, v61);
  v64 = v86;
  v65 = v89;
  v89(v86 + v63, v49);
  v66 = *(v79 + 8);
  v67 = v64;
  v68 = v80;
  v66(v67, v80);
  v69 = v87;
  v65(v87 + v62, v49);
  return (v66)(v69, v68);
}

uint64_t sub_1002537A4(uint64_t a1)
{
  v36 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v2 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v34 = &v24 - v5;
  v33 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v31 = &v24 - v9;
  result = TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter();
  v37 = v11;
  v38 = result;
  if (result)
  {
    v12 = 0;
    v13 = *(a1 + 16);
    v29 = a1;
    v30 = v13;
    v27 = v6 + 16;
    v28 = v6;
    v25 = (v2 + 8);
    v26 = v6 + 8;
    v15 = v33;
    v14 = v34;
    while (v30 != v12)
    {
      v16 = v28;
      v17 = v31;
      (*(v28 + 16))(v31, v29 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12++, v15);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      swift_getObjectType();
      v18 = v32;
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.item.getter();
      v19 = v35;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      v20 = *(v16 + 8);
      v20(v18, v15);
      v39 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
      v21 = *v25;
      v22 = v19;
      v23 = v36;
      (*v25)(v22, v36);
      v21(v14, v23);
      v20(v17, v15);
      if (v39)
      {
        dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestAbortEditing()();
        return swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100253A84(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v3 = __chkstk_darwin(v2 - 8);
  v132 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v131 = &v126 - v6;
  __chkstk_darwin(v5);
  v130 = &v126 - v7;
  v151 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v8 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_10076E900);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v126 - v14;
  v16 = sub_100058000(&qword_100776288);
  v17 = __chkstk_darwin(v16);
  v149 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v152 = &v126 - v19;
  v20 = sub_100058000(&unk_100775960);
  __chkstk_darwin(v20 - 8);
  v158 = &v126 - v21;
  v159 = type metadata accessor for TTRSection();
  v22 = *(v159 - 8);
  v23 = __chkstk_darwin(v159);
  v146 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v145 = &v126 - v25;
  v156 = type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem();
  v26 = *(v156 - 8);
  __chkstk_darwin(v156);
  v28 = (&v126 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v173 = type metadata accessor for TTRRemindersListViewModel.Item();
  v29 = __chkstk_darwin(v173);
  v30 = __chkstk_darwin(v29);
  v144 = &v126 - v31;
  v32 = __chkstk_darwin(v30);
  v170 = &v126 - v33;
  v34 = __chkstk_darwin(v32);
  v164 = &v126 - v35;
  __chkstk_darwin(v34);
  v39 = &v126 - v38;
  v180 = _swiftEmptyArrayStorage;
  v181 = _swiftEmptyArrayStorage;
  v40 = *(a1 + 16);
  if (!v40)
  {
    v148 = 0;
    v153 = _swiftEmptyArrayStorage;
    v169 = _swiftEmptyArrayStorage;
    v162 = _swiftEmptyArrayStorage;
    v157 = _swiftEmptyArrayStorage;
    v161 = _swiftEmptyArrayStorage;
LABEL_4:
    type metadata accessor for TTRListEditor();
    v47 = static TTRListEditor.filterOutSubtasksWithParents(in:)();

    if (v47 >> 62)
    {
      v48 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = v148;
    v50 = v169;
    v51 = v157;
    if (v162 >> 62)
    {
      v52 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v52 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v53 = v50[2];
    v54 = (v51[2] != 0) | v49;
    v179 = v153[2];
    if (v48)
    {

      if (!v52 && !v53 && (v54 & 1) == 0 && !v179)
      {
        v55 = *(v172 + 72);
        ObjectType = swift_getObjectType();
        v57 = v130;
        (*(v55 + 16))(ObjectType, v55);
        LODWORD(v55) = *v57;
        sub_100262C74(v57, type metadata accessor for TTRRemindersListEditingInteractionOptions);
        if (v55 <= 1)
        {
          return v47;
        }
      }

      goto LABEL_104;
    }

    if (v52)
    {

      if (v53 || (v54 & 1) != 0 || v179 || (v61 = *(v172 + 72), v62 = swift_getObjectType(), v63 = v131, (*(v61 + 16))(v62, v61), LODWORD(v61) = *v63, sub_100262C74(v63, type metadata accessor for TTRRemindersListEditingInteractionOptions), v61 > 1))
      {
LABEL_104:

LABEL_105:

        return 0;
      }

      return v162;
    }

    else
    {

      if (!v53)
      {

        v47 = v153;
        if ((v54 & 1) == 0)
        {

          if (v179)
          {
            return v47;
          }

          goto LABEL_105;
        }

        if (!v179)
        {
          return v51;
        }

        goto LABEL_104;
      }

      if (v54)
      {
        goto LABEL_105;
      }

      if (v179)
      {
        goto LABEL_105;
      }

      v58 = *(v172 + 72);
      v59 = swift_getObjectType();
      v60 = v132;
      (*(v58 + 16))(v59, v58);
      LODWORD(v58) = *v60;
      sub_100262C74(v60, type metadata accessor for TTRRemindersListEditingInteractionOptions);
      if (v58 > 1)
      {
        goto LABEL_105;
      }

      return v50;
    }
  }

  v128 = v37;
  v126 = v16;
  v142 = v15;
  v148 = 0;
  v42 = *(v36 + 16);
  v41 = v36 + 16;
  v178 = v42;
  v166 = (*(v41 + 64) + 32) & ~*(v41 + 64);
  v43 = (a1 + v166);
  v176 = (v26 + 88);
  v175 = enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.reminder(_:);
  v168 = enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.uncommittedReminder(_:);
  v167 = enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.placeholderReminder(_:);
  v163 = enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.editableSection(_:);
  v155 = enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.uncommittedEditingSection(_:);
  v141 = enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.nonEditable(_:);
  v140 = (v8 + 8);
  v174 = (v41 - 8);
  v165 = (v41 + 16);
  v171 = (v26 + 8);
  v154 = (v26 + 96);
  v138 = (v22 + 48);
  v137 = (v22 + 32);
  v134 = (v22 + 16);
  v133 = (v22 + 8);
  v135 = v22;
  v147 = (v22 + 56);
  v139 = enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:);
  v136 = enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:);
  v129 = enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:);
  v162 = _swiftEmptyArrayStorage;
  v127 = enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:);
  v44 = _swiftEmptyArrayStorage;
  v169 = _swiftEmptyArrayStorage;
  v153 = _swiftEmptyArrayStorage;
  v161 = _swiftEmptyArrayStorage;
  v157 = _swiftEmptyArrayStorage;
  v177 = *(v41 + 56);
  v45 = v156;
  v46 = v173;
  v143 = v13;
  v179 = v41;
  v42(v39, (a1 + v166), v173);
  while (1)
  {
    TTRRemindersListViewModel.Item.editableCasesOnly.getter();
    v64 = (*v176)(v28, v45);
    if (v64 == v175)
    {
      swift_getObjectType();
      v65 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
      if (v65)
      {
        v66 = v65;
        v67 = v44;
        v68 = REMReminder.isSiriFoundInApps.getter();
        v69 = v66;
        if (v68)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v162 = v180;
          v44 = v67;
        }

        else
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v44 = v67;
          if (*((v181 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v181 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v161 = v181;
        }

        v178(v170, v39, v173);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_100547094(0, v44[2] + 1, 1, v44);
        }

        v86 = v44[2];
        v85 = v44[3];
        if (v86 >= v85 >> 1)
        {
          v44 = sub_100547094(v85 > 1, v86 + 1, 1, v44);
        }

        v46 = v173;
        (*v174)(v39, v173);
        v44[2] = v86 + 1;
        (*v165)(v44 + v166 + v86 * v177, v170, v46);
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (v64 != v168 && v64 != v167)
    {
      break;
    }

    (*v171)(v28, v45);
    swift_getObjectType();
    v71 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.reminderChangeItem(forEditing:)();
    if (!v71)
    {
      goto LABEL_101;
    }

    v178(v164, v39, v46);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v169 = sub_100547094(0, v169[2] + 1, 1, v169);
    }

    v73 = v169[2];
    v72 = v169[3];
    if (v73 >= v72 >> 1)
    {
      v169 = sub_100547094(v72 > 1, v73 + 1, 1, v169);
    }

    (*v174)(v39, v46);
    v74 = v169;
    v169[2] = v73 + 1;
    (*v165)(&v74[v166 + v73 * v177], v164, v46);
LABEL_31:
    v43 += v177;
    if (!--v40)
    {
      goto LABEL_4;
    }

    v178(v39, v43, v46);
  }

  if (v64 == v163)
  {
    v160 = v44;
    (*v154)(v28, v45);
    v75 = *v28;
    v76 = *(v172 + 72);
    v77 = swift_getObjectType();
    v78 = (*(v76 + 104))(v77, v76);
    if (!v78)
    {
      v46 = v173;
      (*v174)(v39, v173);

      v83 = v158;
      (*v147)(v158, 1, 1, v159);
      v44 = v160;
LABEL_77:
      sub_1000079B4(v83, &unk_100775960);
      goto LABEL_31;
    }

    v79 = v78;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();

      v83 = v158;
      (*v147)(v158, 1, 1, v159);
      goto LABEL_76;
    }

    v80 = *(v79 + 64);
    v81 = swift_getObjectType();
    (*(v80 + 16))(v81, v80);
    swift_unknownObjectRelease();
    v82 = v75;
    v83 = v158;
    TTRSection.init(with:store:)();
    swift_unknownObjectRelease();
    v84 = v159;
    if ((*v138)(v83, 1, v159) == 1)
    {

LABEL_76:
      v44 = v160;
      v46 = v173;
      (*v174)(v39, v173);
      goto LABEL_77;
    }

    v110 = *v137;
    v111 = v145;
    (*v137)(v145, v83, v84);
    (*v134)(v146, v111, v84);
    v112 = v157;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v112 = sub_100547428(0, v112[2] + 1, 1, v112);
    }

    v157 = v112;
    v114 = v112[2];
    v113 = v112[3];
    v115 = v135;
    v45 = v156;
    if (v114 >= v113 >> 1)
    {
      v124 = sub_100547428(v113 > 1, v114 + 1, 1, v157);
      v115 = v135;
      v157 = v124;
    }

    v116 = v157;
    v157[2] = v114 + 1;
    v110(&v116[((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v114], v146, v159);
    v178(v144, v39, v173);
    v44 = v160;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_100547094(0, v44[2] + 1, 1, v44);
    }

    v118 = v44[2];
    v117 = v44[3];
    if (v118 >= v117 >> 1)
    {
      v44 = sub_100547094(v117 > 1, v118 + 1, 1, v44);
    }

    (*v133)(v145, v159);
    v119 = v173;
    (*v174)(v39, v173);
    v44[2] = v118 + 1;
    v46 = v119;
    (*v165)(v44 + v166 + v118 * v177, v144, v119);
    goto LABEL_31;
  }

  if (v64 == v155)
  {
    TTRRemindersListViewModel.Item.sectionHeader.getter();
    v87 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
    v88 = *(v87 - 8);
    if ((*(v88 + 48))(v13, 1, v87) == 1)
    {
      v46 = v173;
      (*v174)(v39, v173);
      sub_1000079B4(v13, &qword_10076E900);
      v89 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
      (*(*(v89 - 8) + 56))(v149, 1, 1, v89);
      goto LABEL_30;
    }

    v94 = v13;
    v95 = v150;
    TTRRemindersListViewModel.SectionHeader.id.getter();
    (*(v88 + 8))(v94, v87);
    v96 = v149;
    TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
    v97 = v95;
    v98 = v96;
    (*v140)(v97, v151);
    v99 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
    v100 = *(v99 - 8);
    (*(v100 + 56))(v98, 0, 1, v99);
    v101 = (*(v100 + 88))(v98, v99);
    if (v101 == v139)
    {
      v46 = v173;
      v102 = v174;
    }

    else
    {
      v46 = v173;
      if (v101 != v136)
      {
        if (v101 == v129)
        {
          (*(v100 + 8))(v98, v99);
          v178(v128, v39, v46);
          v120 = v153;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v120 = sub_100547094(0, v120[2] + 1, 1, v120);
          }

          v13 = v143;
          v153 = v120;
          v122 = v120[2];
          v121 = v120[3];
          if (v122 >= v121 >> 1)
          {
            v153 = sub_100547094(v121 > 1, v122 + 1, 1, v153);
          }

          (*v174)(v39, v46);
          v123 = v153;
          v153[2] = v122 + 1;
          (*v165)(&v123[v166 + v122 * v177], v128, v46);
          goto LABEL_30;
        }

        v13 = v143;
        if (v101 != v127)
        {
          goto LABEL_113;
        }

LABEL_29:
        (*v174)(v39, v46);
LABEL_30:
        (*v171)(v28, v45);
        goto LABEL_31;
      }

      v102 = v174;
    }

    (*v102)(v39, v46);
    (*(v100 + 8))(v98, v99);
    v13 = v143;
    goto LABEL_30;
  }

  if (v64 != v141)
  {
    goto LABEL_113;
  }

  v90 = v142;
  TTRRemindersListViewModel.Item.sectionHeader.getter();
  v91 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v92 = *(v91 - 8);
  if ((*(v92 + 48))(v90, 1, v91) == 1)
  {
    v46 = v173;
    (*v174)(v39, v173);
    sub_1000079B4(v90, &qword_10076E900);
    v93 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
    (*(*(v93 - 8) + 56))(v152, 1, 1, v93);
LABEL_74:
    v45 = v156;
    goto LABEL_31;
  }

  v103 = v150;
  TTRRemindersListViewModel.SectionHeader.id.getter();
  (*(v92 + 8))(v90, v91);
  v104 = v152;
  TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
  (*v140)(v103, v151);
  v105 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v106 = *(v105 - 8);
  (*(v106 + 56))(v104, 0, 1, v105);
  v107 = (*(v106 + 88))(v104, v105);
  if (v107 == v139)
  {
    v108 = v173;
    (*v174)(v39, v173);
    v109 = v104;
    v46 = v108;
    (*(v106 + 8))(v109, v105);
    v13 = v143;
    goto LABEL_74;
  }

  v13 = v143;
  v45 = v156;
  if (v107 == v136)
  {
    v46 = v173;
    (*v174)(v39, v173);
    (*(v106 + 8))(v152, v105);
    v148 = 1;
    goto LABEL_31;
  }

  v46 = v173;
  if (v107 == v129)
  {
    (*v174)(v39, v173);
    (*(v106 + 8))(v152, v105);
    goto LABEL_31;
  }

  if (v107 == v127)
  {
LABEL_101:
    (*v174)(v39, v46);
    goto LABEL_31;
  }

LABEL_113:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}