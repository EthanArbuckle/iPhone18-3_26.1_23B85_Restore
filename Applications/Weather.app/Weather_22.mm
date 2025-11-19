uint64_t sub_100257930(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(void, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  v17 = __chkstk_darwin(v46);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100244028(v22, sub_10026B6A8, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v19, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B6A8;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C48B48;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_100263AB8(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_100257FB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(void, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  v17 = __chkstk_darwin(v46);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100244398(v22, sub_10026B714, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v19, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B714;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C48CB0;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_10026442C(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_100258640(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(id *__return_ptr, uint64_t, void), uint64_t a6, void (*a7)(id *__return_ptr, void *, void), void (*a8)(char *, uint64_t))
{
  v46 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v42 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchTime();
  v39 = *(v45 - 8);
  __chkstk_darwin(v45);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v44 = &v35 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v37 = v14;
    v38 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v26[15] = v46;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v27 = qword_100CA2BF0;

      if (v27 != -1)
      {
        swift_once();
      }

      sub_100244708(v22, sub_10026B7F0, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v36 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v46 = *(v39 + 8);
        v46(v18, v45);
        v28 = swift_allocObject();
        *(v28 + 16) = sub_10026B7F0;
        *(v28 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C48E18;
        v29 = _Block_copy(aBlock);

        v30 = v40;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v31 = v42;
        v32 = v38;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v33 = v44;
        v34 = v36;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v29);

        (*(v37 + 8))(v31, v32);
        (*(v41 + 8))(v30, v43);
        v46(v33, v45);
        return sub_1000180EC(v48, &qword_100CA48E0);
      }

      sub_100264DA0(a5, a6, v48, v22, a7);
    }

LABEL_11:

    return sub_1000180EC(v48, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_100258CC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(uint64_t, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  v17 = __chkstk_darwin(v46);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100244A7C(v22, sub_10026B8E4, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v19, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B8E4;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C48F80;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_1002651CC(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_100259350(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void, __n128), uint64_t a6, void (*a7)(void (*)(uint64_t, void, __n128), void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100244DEC(v22, sub_10026B950, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B950;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C490E8;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_100265B84(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

uint64_t sub_1002599D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(void *__return_ptr, uint64_t, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  v17 = __chkstk_darwin(v46);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_10024515C(v22, sub_10026BA08, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v19, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026BA08;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C49250;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_1002664F8(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

void *sub_10025A060(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void), uint64_t a6)
{
  v32 = a6;
  v33 = sub_10022C350(&qword_100CA48D8);
  __chkstk_darwin(v33);
  v10 = (&v30 - v9);
  v11 = sub_10022C350(&qword_100CA48E8);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for AirQualityDetailViewModel(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v30 - v18;
  result = a1(v34, a3 + 64, 0);
  v21 = v34[0];
  if (!v34[0])
  {
    return result;
  }

  v31 = v10;
  v35 = v34[0];

  v22 = sub_1002454CC();
  if (v22)
  {
    if (v21 == v22)
    {

LABEL_7:
    }

    type metadata accessor for MainState._Storage(0);
    sub_100073248();
    v24 = v23;

    if (v24)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  a5(&v35, 0);
  if (sub_100024D10(v13, 1, v14) == 1)
  {
    sub_1000180EC(v13, &qword_100CA48E8);
LABEL_14:
    sub_10022C350(&qword_100CA48F0);
    *v31 = v21;

    sub_1009883E0();

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    return swift_endAccess();
  }

  sub_1000A0AC0();
  sub_1009883E0();
  v25 = sub_1006300A0(v19, v17);
  sub_1001AFB34(v17, type metadata accessor for AirQualityDetailViewModel);
  if (v25)
  {
    sub_1001AFB34(v19, type metadata accessor for AirQualityDetailViewModel);
    goto LABEL_14;
  }

  if (qword_100CA2740 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000703C(v26, qword_100D90C18);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v29 = 136446466;
    *(v29 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v34);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_100078694(0xD000000000000019, 0x8000000100ABBD50, v34);
    _os_log_impl(&_mh_execute_header, v27, v28, "Selector observed model difference for %{public}s, %{public}s; views will update", v29, 0x16u);
    swift_arrayDestroy();
  }

  sub_10022C350(&qword_100CA48F0);
  *v31 = v21;
  sub_1001A7BF8();
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();

  sub_100097AA4();
  swift_endAccess();
  sub_10022C350(&qword_100CA48C8);
  sub_100006F64(&qword_100CA48F8, &qword_100CA48C8);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  sub_1001AFB34(v19, type metadata accessor for AirQualityDetailViewModel);
}

uint64_t sub_10025A658(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v51 = a6;
  v52 = a5;
  v55 = a4;
  v56 = a2;
  v57 = a1;
  v53 = sub_10022C350(&qword_100CA4920);
  __chkstk_darwin(v53);
  v54 = &v47 - v7;
  v8 = sub_10022C350(&qword_100CA4928);
  __chkstk_darwin(v8 - 8);
  v50 = &v47 - v9;
  v49 = type metadata accessor for MoonDetailViewModel(0);
  v10 = __chkstk_darwin(v49);
  v47 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v47 - v12;
  v13 = sub_10022C350(&qword_100CA4930);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v16 = sub_10022C350(&qword_100CA4938);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v47 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v47 - v24;
  __chkstk_darwin(v23);
  v27 = &v47 - v26;
  v28 = type metadata accessor for MoonDetailInput(0);
  v29 = __chkstk_darwin(v28);
  v31 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v47 - v32;
  v57(a3 + 64, 0);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4938);
  }

  sub_1000A0AC0();
  v57 = v33;
  sub_1001A7BF8();
  sub_10001B350(v25, 0, 1, v28);
  sub_100245758(v22);
  v35 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v35], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v41 = sub_1002B5F34(v19, v31);
      sub_1001AFB34(v31, type metadata accessor for MoonDetailInput);
      sub_1000180EC(v22, &qword_100CA4938);
      sub_1000180EC(v25, &qword_100CA4938);
      sub_1001AFB34(v19, type metadata accessor for MoonDetailInput);
      sub_1000180EC(v15, &qword_100CA4938);
      if (v41)
      {
        goto LABEL_15;
      }

LABEL_9:
      v36 = v50;
      v37 = v57;
      v52(v57, 0);
      if (sub_100024D10(v36, 1, v49) == 1)
      {
        sub_1000180EC(v36, &qword_100CA4928);
      }

      else
      {
        v38 = v48;
        sub_1000A0AC0();
        v39 = v47;
        sub_1009888D8();
        v40 = sub_100509EAC(v38, v39);
        sub_1001AFB34(v39, type metadata accessor for MoonDetailViewModel);
        if ((v40 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v43 = type metadata accessor for Logger();
          sub_10000703C(v43, qword_100D90C18);
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v58[0] = swift_slowAlloc();
            *v46 = 136446466;
            *(v46 + 4) = sub_100078694(0x617465446E6F6F4DLL, 0xEF7475706E496C69, v58);
            *(v46 + 12) = 2082;
            *(v46 + 14) = sub_100078694(0xD000000000000013, 0x8000000100ABBE40, v58);
            _os_log_impl(&_mh_execute_header, v44, v45, "Selector observed model difference for %{public}s, %{public}s; views will update", v46, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4940);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4948);
          sub_100006F64(&qword_100CA4950, &qword_100CA4948);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v38, type metadata accessor for MoonDetailViewModel);
          v42 = v37;
          return sub_1001AFB34(v42, type metadata accessor for MoonDetailInput);
        }

        sub_1001AFB34(v38, type metadata accessor for MoonDetailViewModel);
      }

      sub_10022C350(&qword_100CA4940);
      sub_1001A7BF8();
      sub_1009888D8();
      sub_1001AFB34(v37, type metadata accessor for MoonDetailInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v22, &qword_100CA4938);
    sub_1000180EC(v25, &qword_100CA4938);
    sub_1001AFB34(v19, type metadata accessor for MoonDetailInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4930);
    goto LABEL_9;
  }

  sub_1000180EC(v22, &qword_100CA4938);
  sub_1000180EC(v25, &qword_100CA4938);
  if (sub_100024D10(&v15[v35], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4938);
LABEL_15:
  v42 = v57;
  return sub_1001AFB34(v42, type metadata accessor for MoonDetailInput);
}

void *sub_10025AFD0(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3, _BYTE *a4, void (*a5)(void *__return_ptr, uint64_t *, void))
{
  result = a1(__dst, a3 + 64, 0);
  v8 = __dst[0];
  if (!__dst[0])
  {
    return result;
  }

  v24 = __dst[0];

  v9 = sub_100245AB0();
  if (v9)
  {
    if (v8 == v9)
    {

LABEL_7:
    }

    type metadata accessor for MainState._Storage(0);
    sub_100073248();
    v11 = v10;

    if (v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  a5(__src, &v24, 0);
  if ((~__src[0] & 0xF000000000000006) == 0)
  {
    memcpy(__dst, __src, 0x60uLL);
    v12 = __dst;
LABEL_14:
    sub_1000180EC(v12, &qword_100CA4958);
    v21[0] = v8;

    sub_1009880C4();

    LOBYTE(v21[13]) = 1;
    swift_beginAccess();
    memcpy(__dst, a4 + 16, 0x69uLL);
    memcpy(a4 + 16, v21, 0x69uLL);
    return sub_1000180EC(__dst, &qword_100CA4960);
  }

  memcpy(v18, __src, sizeof(v18));
  memcpy(v19, __src, sizeof(v19));
  memcpy(v25, __src, sizeof(v25));
  sub_1009880C4();
  memcpy(v26, __dst, sizeof(v26));
  v13 = sub_1003C4094(v25, v26);
  memcpy(v20, __dst, sizeof(v20));
  sub_10026AD10(v20);
  if (v13)
  {
    v12 = v18;
    goto LABEL_14;
  }

  if (qword_100CA2740 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000703C(v14, qword_100D90C18);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    __dst[0] = swift_slowAlloc();
    *v17 = 136446466;
    *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, __dst);
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_100078694(0xD000000000000016, 0x8000000100ABBE60, __dst);
    _os_log_impl(&_mh_execute_header, v15, v16, "Selector observed model difference for %{public}s, %{public}s; views will update", v17, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  memcpy(__dst, a4 + 16, 0x69uLL);

  sub_100095588();
  *(a4 + 2) = v8;
  memcpy(a4 + 24, v19, 0x60uLL);
  a4[120] = 1;
  sub_1000180EC(__dst, &qword_100CA4960);
  sub_10022C350(&qword_100CA4968);
  sub_100006F64(&qword_100CA4970, &qword_100CA4968);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  sub_1000180EC(v18, &qword_100CA4958);
}

uint64_t sub_10025B48C(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v51 = a6;
  v52 = a5;
  v55 = a4;
  v56 = a2;
  v57 = a1;
  v53 = sub_10022C350(&qword_100CA4978);
  __chkstk_darwin(v53);
  v54 = &v47 - v7;
  v8 = sub_10022C350(&qword_100CA4980);
  __chkstk_darwin(v8 - 8);
  v50 = &v47 - v9;
  v49 = type metadata accessor for ConditionDetailViewModel(0);
  v10 = __chkstk_darwin(v49);
  v47 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v47 - v12;
  v13 = sub_10022C350(&qword_100CA4988);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v16 = sub_10022C350(&qword_100CA4990);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v47 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v47 - v24;
  __chkstk_darwin(v23);
  v27 = &v47 - v26;
  v28 = type metadata accessor for ConditionDetailInput(0);
  v29 = __chkstk_darwin(v28);
  v31 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v47 - v32;
  v57(a3 + 64, 0);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4990);
  }

  sub_1000A0AC0();
  v57 = v33;
  sub_1001A7BF8();
  sub_10001B350(v25, 0, 1, v28);
  sub_100245C7C(v22);
  v35 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v35], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v41 = sub_10037BEA0();
      sub_1001AFB34(v31, type metadata accessor for ConditionDetailInput);
      sub_1000180EC(v22, &qword_100CA4990);
      sub_1000180EC(v25, &qword_100CA4990);
      sub_1001AFB34(v19, type metadata accessor for ConditionDetailInput);
      sub_1000180EC(v15, &qword_100CA4990);
      if (v41)
      {
        goto LABEL_15;
      }

LABEL_9:
      v36 = v50;
      v37 = v57;
      v52(v57, 0);
      if (sub_100024D10(v36, 1, v49) == 1)
      {
        sub_1000180EC(v36, &qword_100CA4980);
      }

      else
      {
        v38 = v48;
        sub_1000A0AC0();
        v39 = v47;
        sub_100988DA0();
        v40 = sub_10090E960(v38, v39);
        sub_1001AFB34(v39, type metadata accessor for ConditionDetailViewModel);
        if ((v40 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v43 = type metadata accessor for Logger();
          sub_10000703C(v43, qword_100D90C18);
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v58[0] = swift_slowAlloc();
            *v46 = 136446466;
            *(v46 + 4) = sub_100078694(0xD000000000000014, 0x8000000100ABBE80, v58);
            *(v46 + 12) = 2082;
            *(v46 + 14) = sub_100078694(0xD000000000000018, 0x8000000100ABBEA0, v58);
            _os_log_impl(&_mh_execute_header, v44, v45, "Selector observed model difference for %{public}s, %{public}s; views will update", v46, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4998);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA49A0);
          sub_100006F64(&qword_100CA49A8, &qword_100CA49A0);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v38, type metadata accessor for ConditionDetailViewModel);
          v42 = v37;
          return sub_1001AFB34(v42, type metadata accessor for ConditionDetailInput);
        }

        sub_1001AFB34(v38, type metadata accessor for ConditionDetailViewModel);
      }

      sub_10022C350(&qword_100CA4998);
      sub_1001A7BF8();
      sub_100988DA0();
      sub_1001AFB34(v37, type metadata accessor for ConditionDetailInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v22, &qword_100CA4990);
    sub_1000180EC(v25, &qword_100CA4990);
    sub_1001AFB34(v19, type metadata accessor for ConditionDetailInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4988);
    goto LABEL_9;
  }

  sub_1000180EC(v22, &qword_100CA4990);
  sub_1000180EC(v25, &qword_100CA4990);
  if (sub_100024D10(&v15[v35], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4990);
LABEL_15:
  v42 = v57;
  return sub_1001AFB34(v42, type metadata accessor for ConditionDetailInput);
}

uint64_t sub_10025BE00(void (*a1)(_OWORD *__return_ptr, uint64_t, void, __n128), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, void), uint64_t a6)
{
  v39 = a6;
  v40 = a5;
  v41 = sub_10022C350(&qword_100CA49B0);
  __chkstk_darwin(v41);
  v42 = &v37 - v9;
  v10 = sub_10022C350(&qword_100CA49B8);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for UnitsConfigurationViewModel(0);
  __chkstk_darwin(v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v38 = &v37 - v18;
  a1(v59, a3 + 64, 0, v17);
  if (*&v59[0] == 1)
  {
    *v47 = v59[0];
    *&v47[16] = v59[1];
    *&v47[32] = v59[2];
    *&v47[42] = *(&v59[2] + 10);
    return sub_1000180EC(v47, &qword_100CA49C0);
  }

  v60 = v59[0];
  v61 = v59[1];
  v62[0] = v59[2];
  *(v62 + 10) = *(&v59[2] + 10);
  v54[0] = v59[0];
  v54[1] = v59[1];
  v55[0] = v59[2];
  *(v55 + 10) = *(&v59[2] + 10);
  v20 = *&v59[0];
  sub_10026AE78(v54, v47);
  v37 = a4;
  sub_100245FD4(v53);
  v56 = *v53;
  v57 = *&v53[16];
  v58[0] = *&v53[32];
  *(v58 + 10) = *&v53[42];
  if (*v53 == 1)
  {
    *v47 = *v53;
    *&v47[16] = *&v53[16];
    *&v47[32] = *&v53[32];
    *&v47[42] = *&v53[42];
    sub_100095588();
    sub_1000180EC(v47, &qword_100CA49C0);
    *v47 = v20;
    *&v47[8] = *(v59 + 8);
    *&v47[24] = *(&v59[1] + 8);
    *&v47[40] = *(&v59[2] + 8);
    *&v47[56] = WORD4(v59[3]);
    v48 = 1;
    v49 = *&v53[8];
    v50 = *&v53[24];
    v51 = *&v53[40];
    v52 = *&v53[56];
    sub_1000180EC(v47, &qword_100CA49C8);
  }

  else
  {
    *&v43[0] = v56;
    *(v43 + 8) = *&v53[8];
    *(&v43[1] + 8) = *&v53[24];
    *(&v43[2] + 8) = *&v53[40];
    WORD4(v43[3]) = *&v53[56];
    *&v47[42] = *(&v43[2] + 10);
    *&v47[16] = v43[1];
    *&v47[32] = v43[2];
    *v47 = v43[0];
    v67 = WORD4(v59[3]);
    v66 = *(&v59[2] + 8);
    v65 = *(&v59[1] + 8);
    v64 = *(v59 + 8);
    v63 = v20;
    sub_10026AE78(v54, v46);
    sub_100095588();
    v28 = sub_1007FCC80(&v63, v47);
    sub_1000180EC(v43, &qword_100CA49C0);
    sub_10026AED4(v54);
    v44[0] = *v53;
    v44[1] = *&v53[16];
    v45[0] = *&v53[32];
    *(v45 + 10) = *&v53[42];
    sub_1000180EC(v44, &qword_100CA49C0);
    *v46 = v20;
    *&v46[8] = *(v59 + 8);
    *&v46[24] = *(&v59[1] + 8);
    *&v46[40] = *(&v59[2] + 8);
    *&v46[56] = WORD4(v59[3]);
    sub_1000180EC(v46, &qword_100CA49C0);
    if (v28)
    {
      *v53 = v59[0];
      *&v53[16] = v59[1];
      *&v53[32] = v59[2];
      *&v53[42] = *(&v59[2] + 10);
      return sub_10026AED4(v53);
    }
  }

  v40(&v60, 0);
  if (sub_100024D10(v12, 1, v13) == 1)
  {
    sub_1000180EC(v12, &qword_100CA49B8);
LABEL_9:
    sub_10022C350(&qword_100CA49D0);
    *&v46[42] = *(v62 + 10);
    v24 = v60;
    v25 = v61;
    *v46 = v60;
    *&v46[16] = v61;
    v26 = v62[0];
    *&v46[32] = v62[0];
    v27 = v42;
    *(v42 + 42) = *(v62 + 10);
    *v27 = v24;
    v27[1] = v25;
    v27[2] = v26;
    sub_10026AE78(v46, v53);
    sub_100988F60();
    *v53 = v60;
    *&v53[16] = v61;
    *&v53[32] = v62[0];
    *&v53[42] = *(v62 + 10);
    sub_10026AED4(v53);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    return swift_endAccess();
  }

  v21 = v38;
  sub_1000A0AC0();
  sub_100988F60();
  sub_1006FEE18();
  v23 = v22;
  sub_1001AFB34(v15, type metadata accessor for UnitsConfigurationViewModel);
  if (v23)
  {
    sub_1001AFB34(v21, type metadata accessor for UnitsConfigurationViewModel);
    goto LABEL_9;
  }

  if (qword_100CA2740 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000703C(v29, qword_100D90C18);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v53 = swift_slowAlloc();
    *v32 = 136446466;
    *(v32 + 4) = sub_100078694(0xD000000000000017, 0x8000000100ABBEC0, v53);
    *(v32 + 12) = 2082;
    *(v32 + 14) = sub_100078694(0xD00000000000001BLL, 0x8000000100ABBEE0, v53);
    _os_log_impl(&_mh_execute_header, v30, v31, "Selector observed model difference for %{public}s, %{public}s; views will update", v32, 0x16u);
    swift_arrayDestroy();
  }

  sub_10022C350(&qword_100CA49D0);
  *&v46[42] = *(v62 + 10);
  v33 = v60;
  v34 = v61;
  *v46 = v60;
  *&v46[16] = v61;
  v35 = v62[0];
  *&v46[32] = v62[0];
  v36 = v42;
  *(v42 + 42) = *(v62 + 10);
  *v36 = v33;
  v36[1] = v34;
  v36[2] = v35;
  sub_1001A7BF8();
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_10026AE78(v46, v53);
  sub_100097AA4();
  swift_endAccess();
  sub_10022C350(&qword_100CA49D8);
  sub_100006F64(&qword_100CA49E0, &qword_100CA49D8);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  sub_1001AFB34(v21, type metadata accessor for UnitsConfigurationViewModel);
  *v53 = v60;
  *&v53[16] = v61;
  *&v53[32] = v62[0];
  *&v53[42] = *(v62 + 10);
  return sub_10026AED4(v53);
}

uint64_t sub_10025C748(void (*a1)(uint64_t, void, __n128), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void (*)(uint64_t, void, __n128), void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA49E8);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA49F0);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  v50 = type metadata accessor for DayPickerViewModel(0);
  __chkstk_darwin(v50);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA49F8);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4A00);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for DayPickerInput();
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  v58(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4A00);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_1002462CC(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_1004CBB9C(v18, v30);
      sub_1001AFB34(v30, type metadata accessor for DayPickerInput);
      sub_1000180EC(v21, &qword_100CA4A00);
      sub_1000180EC(v24, &qword_100CA4A00);
      sub_1001AFB34(v18, type metadata accessor for DayPickerInput);
      sub_1000180EC(v15, &qword_100CA4A00);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v51;
      v38 = v58;
      v53(v58, 0);
      if (sub_100024D10(v37, 1, v50) == 1)
      {
        sub_1000180EC(v37, &qword_100CA49F0);
      }

      else
      {
        v39 = v49;
        sub_1000A0AC0();
        v40 = v48;
        sub_100989124();
        v41 = sub_1009CFB60();
        sub_1001AFB34(v40, type metadata accessor for DayPickerViewModel);
        if ((v41 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0x656B636950796144, 0xEE007475706E4972, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0xD000000000000012, 0x8000000100ABBF00, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4A08);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4A10);
          sub_100006F64(&qword_100CA4A18, &qword_100CA4A10);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for DayPickerViewModel);
          v43 = v38;
          return sub_1001AFB34(v43, type metadata accessor for DayPickerInput);
        }

        sub_1001AFB34(v39, type metadata accessor for DayPickerViewModel);
      }

      sub_10022C350(&qword_100CA4A08);
      sub_1001A7BF8();
      sub_100989124();
      sub_1001AFB34(v38, type metadata accessor for DayPickerInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4A00);
    sub_1000180EC(v24, &qword_100CA4A00);
    sub_1001AFB34(v18, type metadata accessor for DayPickerInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA49F8);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4A00);
  sub_1000180EC(v24, &qword_100CA4A00);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4A00);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for DayPickerInput);
}

void *sub_10025D0C0(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, __n128), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void), uint64_t a6)
{
  v33 = a6;
  v34 = sub_10022C350(&qword_100CA4A20);
  __chkstk_darwin(v34);
  v10 = (&v31 - v9);
  v11 = sub_10022C350(&qword_100CA4A28);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for VFXTestViewModel();
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v31 - v19;
  result = a1(v35, a3 + 64, 0, v18);
  v22 = v35[0];
  if (!v35[0])
  {
    return result;
  }

  v32 = v10;
  v36 = v35[0];

  v23 = sub_100246624();
  if (v23)
  {
    if (v22 == v23)
    {

LABEL_7:
    }

    type metadata accessor for MainState._Storage(0);
    sub_100073248();
    v25 = v24;

    if (v25)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  a5(&v36, 0);
  if (sub_100024D10(v13, 1, v14) == 1)
  {
    sub_1000180EC(v13, &qword_100CA4A28);
LABEL_14:
    sub_10022C350(&qword_100CA4A30);
    *v32 = v22;

    sub_100988268();

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    return swift_endAccess();
  }

  sub_1000A0AC0();
  sub_100988268();
  v26 = sub_1007488C4(v20, v16);
  sub_1001AFB34(v16, type metadata accessor for VFXTestViewModel);
  if (v26)
  {
    sub_1001AFB34(v20, type metadata accessor for VFXTestViewModel);
    goto LABEL_14;
  }

  if (qword_100CA2740 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000703C(v27, qword_100D90C18);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v30 = 136446466;
    *(v30 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v35);
    *(v30 + 12) = 2082;
    *(v30 + 14) = sub_100078694(0xD000000000000010, 0x8000000100ABBF20, v35);
    _os_log_impl(&_mh_execute_header, v28, v29, "Selector observed model difference for %{public}s, %{public}s; views will update", v30, 0x16u);
    swift_arrayDestroy();
  }

  sub_10022C350(&qword_100CA4A30);
  *v32 = v22;
  sub_1001A7BF8();
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();

  sub_100097AA4();
  swift_endAccess();
  sub_10022C350(&qword_100CA4A38);
  sub_100006F64(&qword_100CA4A40, &qword_100CA4A38);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  sub_1001AFB34(v20, type metadata accessor for VFXTestViewModel);
}

uint64_t sub_10025D6B8(void (*a1)(uint64_t, void, __n128), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void (*)(uint64_t, void, __n128), void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA4A48);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA4A50);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  v50 = type metadata accessor for WeatherMenuViewModel();
  __chkstk_darwin(v50);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA4A58);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4A60);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for WeatherMenuInput();
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  v58(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4A60);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_1002468B0(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_1005CBEA8(v18, v30);
      sub_1001AFB34(v30, type metadata accessor for WeatherMenuInput);
      sub_1000180EC(v21, &qword_100CA4A60);
      sub_1000180EC(v24, &qword_100CA4A60);
      sub_1001AFB34(v18, type metadata accessor for WeatherMenuInput);
      sub_1000180EC(v15, &qword_100CA4A60);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v51;
      v38 = v58;
      v53(v58, 0);
      if (sub_100024D10(v37, 1, v50) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4A50);
      }

      else
      {
        v39 = v49;
        sub_1000A0AC0();
        v40 = v48;
        sub_10098959C();
        v41 = sub_100431374(v39, v40);
        sub_1001AFB34(v40, type metadata accessor for WeatherMenuViewModel);
        if ((v41 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0xD000000000000010, 0x8000000100ABBF40, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0xD000000000000014, 0x8000000100ABBF60, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4A68);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4A70);
          sub_100006F64(&qword_100CA4A78, &qword_100CA4A70);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for WeatherMenuViewModel);
          v43 = v38;
          return sub_1001AFB34(v43, type metadata accessor for WeatherMenuInput);
        }

        sub_1001AFB34(v39, type metadata accessor for WeatherMenuViewModel);
      }

      sub_10022C350(&qword_100CA4A68);
      sub_1001A7BF8();
      sub_10098959C();
      sub_1001AFB34(v38, type metadata accessor for WeatherMenuInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4A60);
    sub_1000180EC(v24, &qword_100CA4A60);
    sub_1001AFB34(v18, type metadata accessor for WeatherMenuInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4A58);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4A60);
  sub_1000180EC(v24, &qword_100CA4A60);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4A60);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for WeatherMenuInput);
}

uint64_t sub_10025E02C(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr))
{
  result = a1(v24, a3 + 64, 0);
  if ((v24[0] & 1) == 0)
  {
    result = sub_100246C08();
    if (result)
    {
      a5(v24);
      v8 = v24[0];
      if (LOBYTE(v24[0]) == 2 || (sub_10098975C() & 1) == (v8 & 1))
      {
        v18 = sub_10098975C() & 1;
        swift_beginAccess();
        v19 = *(a4 + 16);
        v20 = *(a4 + 24);
        v21 = *(a4 + 32);
        v22 = *(a4 + 40);
        *(a4 + 16) = v18;
        *(a4 + 24) = 0;
        *(a4 + 32) = 0;
        *(a4 + 40) = 0;
        v23 = *(a4 + 48);
        *(a4 + 48) = 1;
        return sub_10026B12C(v19, v20, v21, v22, v23);
      }

      else
      {
        if (qword_100CA2740 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_10000703C(v9, qword_100D90C18);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v24[0] = swift_slowAlloc();
          *v12 = 136446466;
          *(v12 + 4) = sub_100078694(0xD000000000000019, 0x8000000100ABBF80, v24);
          *(v12 + 12) = 2082;
          *(v12 + 14) = sub_100078694(0xD00000000000001DLL, 0x8000000100ABBFA0, v24);
          _os_log_impl(&_mh_execute_header, v10, v11, "Selector observed model difference for %{public}s, %{public}s; views will update", v12, 0x16u);
          swift_arrayDestroy();
        }

        swift_beginAccess();
        v13 = *(a4 + 16);
        v14 = *(a4 + 24);
        v15 = *(a4 + 32);
        v16 = *(a4 + 40);
        *(a4 + 16) = v8 & 1;
        *(a4 + 24) = 0;
        *(a4 + 32) = 0;
        *(a4 + 40) = 0;
        v17 = *(a4 + 48);
        *(a4 + 48) = 1;
        sub_10026B12C(v13, v14, v15, v16, v17);
        sub_10022C350(&qword_100CA4A80);
        sub_100006F64(&qword_100CA4A88, &qword_100CA4A80);
        ObservableObject<>.objectWillChange.getter();
        ObservableObjectPublisher.send()();
      }
    }
  }

  return result;
}

uint64_t sub_10025E30C(void (*a1)(uint64_t, void, __n128), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void (*)(uint64_t, void, __n128), void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA4A90);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA4A98);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  v50 = type metadata accessor for LocationPreviewViewModel(0);
  __chkstk_darwin(v50);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA4AA0);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4AA8);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for LocationPreviewInput(0);
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  v58(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4AA8);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_100246CE0(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_1003C93F4(v18, v30);
      sub_1001AFB34(v30, type metadata accessor for LocationPreviewInput);
      sub_1000180EC(v21, &qword_100CA4AA8);
      sub_1000180EC(v24, &qword_100CA4AA8);
      sub_1001AFB34(v18, type metadata accessor for LocationPreviewInput);
      sub_1000180EC(v15, &qword_100CA4AA8);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v51;
      v38 = v58;
      v53(v58, 0);
      if (sub_100024D10(v37, 1, v50) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4A98);
      }

      else
      {
        v39 = v49;
        sub_1000A0AC0();
        v40 = v48;
        sub_100988BE0();
        v41 = sub_1005CAAA0(v39, v40);
        sub_1001AFB34(v40, type metadata accessor for LocationPreviewViewModel);
        if ((v41 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0xD000000000000014, 0x8000000100ABBFC0, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0xD000000000000018, 0x8000000100ABBFE0, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4AB0);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4AB8);
          sub_100006F64(&qword_100CA4AC0, &qword_100CA4AB8);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for LocationPreviewViewModel);
          v43 = v38;
          return sub_1001AFB34(v43, type metadata accessor for LocationPreviewInput);
        }

        sub_1001AFB34(v39, type metadata accessor for LocationPreviewViewModel);
      }

      sub_10022C350(&qword_100CA4AB0);
      sub_1001A7BF8();
      sub_100988BE0();
      sub_1001AFB34(v38, type metadata accessor for LocationPreviewInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4AA8);
    sub_1000180EC(v24, &qword_100CA4AA8);
    sub_1001AFB34(v18, type metadata accessor for LocationPreviewInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4AA0);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4AA8);
  sub_1000180EC(v24, &qword_100CA4AA8);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4AA8);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for LocationPreviewInput);
}

uint64_t sub_10025EC80(void (*a1)(uint64_t, void, __n128), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void (*)(uint64_t, void, __n128), void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA4AC8);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA4AD0);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  v50 = type metadata accessor for InteractiveMapViewModel();
  __chkstk_darwin(v50);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA4AD8);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4AE0);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for InteractiveMapInput();
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  v58(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4AE0);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_100247038(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_1003818E4(v18, v30);
      sub_1001AFB34(v30, type metadata accessor for InteractiveMapInput);
      sub_1000180EC(v21, &qword_100CA4AE0);
      sub_1000180EC(v24, &qword_100CA4AE0);
      sub_1001AFB34(v18, type metadata accessor for InteractiveMapInput);
      sub_1000180EC(v15, &qword_100CA4AE0);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v51;
      v38 = v58;
      v53(v58, 0);
      if (sub_100024D10(v37, 1, v50) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4AD0);
      }

      else
      {
        v39 = v49;
        sub_1000A0AC0();
        v40 = v48;
        sub_1009899B8();
        v41 = sub_10044B758(v39, v40);
        sub_1001AFB34(v40, type metadata accessor for InteractiveMapViewModel);
        if (!v41)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0xD000000000000013, 0x8000000100ABC000, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0xD000000000000017, 0x8000000100ABC020, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4AE8);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4AF0);
          sub_100006F64(&qword_100CA4AF8, &qword_100CA4AF0);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for InteractiveMapViewModel);
          v43 = v38;
          return sub_1001AFB34(v43, type metadata accessor for InteractiveMapInput);
        }

        sub_1001AFB34(v39, type metadata accessor for InteractiveMapViewModel);
      }

      sub_10022C350(&qword_100CA4AE8);
      sub_1001A7BF8();
      sub_1009899B8();
      sub_1001AFB34(v38, type metadata accessor for InteractiveMapInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4AE0);
    sub_1000180EC(v24, &qword_100CA4AE0);
    sub_1001AFB34(v18, type metadata accessor for InteractiveMapInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4AD8);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4AE0);
  sub_1000180EC(v24, &qword_100CA4AE0);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4AE0);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for InteractiveMapInput);
}

uint64_t sub_10025F5F4(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v51 = a6;
  v52 = a5;
  v55 = a4;
  v56 = a2;
  v57 = a1;
  v53 = sub_10022C350(&qword_100CA4B00);
  __chkstk_darwin(v53);
  v54 = &v47 - v7;
  v8 = sub_10022C350(&qword_100CA4B08);
  __chkstk_darwin(v8 - 8);
  v50 = &v47 - v9;
  HourPrecipitationDetailViewModel = type metadata accessor for NextHourPrecipitationDetailViewModel(0);
  v10 = __chkstk_darwin(HourPrecipitationDetailViewModel);
  v47 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v47 - v12;
  v13 = sub_10022C350(&qword_100CA4B10);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v16 = sub_10022C350(&qword_100CA4B18);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v47 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v47 - v24;
  __chkstk_darwin(v23);
  v27 = &v47 - v26;
  HourPrecipitationDetailInput = type metadata accessor for NextHourPrecipitationDetailInput(0);
  v29 = __chkstk_darwin(HourPrecipitationDetailInput);
  v31 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v47 - v32;
  v57(a3 + 64, 0);
  if (sub_100024D10(v27, 1, HourPrecipitationDetailInput) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4B18);
  }

  sub_1000A0AC0();
  v57 = v33;
  sub_1001A7BF8();
  sub_10001B350(v25, 0, 1, HourPrecipitationDetailInput);
  sub_100247390(v22);
  v35 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, HourPrecipitationDetailInput) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v35], 1, HourPrecipitationDetailInput) != 1)
    {
      sub_1000A0AC0();
      v41 = sub_10038DF90(v19, v31);
      sub_1001AFB34(v31, type metadata accessor for NextHourPrecipitationDetailInput);
      sub_1000180EC(v22, &qword_100CA4B18);
      sub_1000180EC(v25, &qword_100CA4B18);
      sub_1001AFB34(v19, type metadata accessor for NextHourPrecipitationDetailInput);
      sub_1000180EC(v15, &qword_100CA4B18);
      if (v41)
      {
        goto LABEL_15;
      }

LABEL_9:
      v36 = v50;
      v37 = v57;
      v52(v57, 0);
      if (sub_100024D10(v36, 1, HourPrecipitationDetailViewModel) == 1)
      {
        sub_1000180EC(v36, &qword_100CA4B08);
      }

      else
      {
        v38 = v48;
        sub_1000A0AC0();
        v39 = v47;
        sub_100989D38();
        v40 = sub_1003AB970(v38, v39);
        sub_1001AFB34(v39, type metadata accessor for NextHourPrecipitationDetailViewModel);
        if (!v40)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v43 = type metadata accessor for Logger();
          sub_10000703C(v43, qword_100D90C18);
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v58[0] = swift_slowAlloc();
            *v46 = 136446466;
            *(v46 + 4) = sub_100078694(0xD000000000000020, 0x8000000100ABC040, v58);
            *(v46 + 12) = 2082;
            *(v46 + 14) = sub_100078694(0xD000000000000024, 0x8000000100ABC070, v58);
            _os_log_impl(&_mh_execute_header, v44, v45, "Selector observed model difference for %{public}s, %{public}s; views will update", v46, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4B20);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4B28);
          sub_100006F64(&qword_100CA4B30, &qword_100CA4B28);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v38, type metadata accessor for NextHourPrecipitationDetailViewModel);
          v42 = v37;
          return sub_1001AFB34(v42, type metadata accessor for NextHourPrecipitationDetailInput);
        }

        sub_1001AFB34(v38, type metadata accessor for NextHourPrecipitationDetailViewModel);
      }

      sub_10022C350(&qword_100CA4B20);
      sub_1001A7BF8();
      sub_100989D38();
      sub_1001AFB34(v37, type metadata accessor for NextHourPrecipitationDetailInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v22, &qword_100CA4B18);
    sub_1000180EC(v25, &qword_100CA4B18);
    sub_1001AFB34(v19, type metadata accessor for NextHourPrecipitationDetailInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4B10);
    goto LABEL_9;
  }

  sub_1000180EC(v22, &qword_100CA4B18);
  sub_1000180EC(v25, &qword_100CA4B18);
  if (sub_100024D10(&v15[v35], 1, HourPrecipitationDetailInput) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4B18);
LABEL_15:
  v42 = v57;
  return sub_1001AFB34(v42, type metadata accessor for NextHourPrecipitationDetailInput);
}

uint64_t sub_10025FF68(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v59 = a6;
  v60 = a5;
  v63 = a4;
  v64 = a2;
  v65 = a1;
  v61 = sub_10022C350(&qword_100CA4B38);
  __chkstk_darwin(v61);
  v62 = &v55 - v7;
  v8 = sub_10022C350(&qword_100CA4B40);
  __chkstk_darwin(v8 - 8);
  v58 = &v55 - v9;
  active = type metadata accessor for ActiveLocationModel(0);
  v10 = __chkstk_darwin(active);
  v55 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v56 = &v55 - v12;
  v13 = sub_10022C350(&qword_100CA4B48);
  __chkstk_darwin(v13);
  v15 = &v55 - v14;
  v16 = sub_10022C350(&qword_100CA4B50);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v55 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v55 - v24;
  __chkstk_darwin(v23);
  v27 = &v55 - v26;
  v28 = type metadata accessor for ActiveLocationInput(0);
  v29 = __chkstk_darwin(v28);
  v31 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v55 - v32;
  v65(a3 + 64, 0);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4B50);
  }

  sub_1000A0AC0();
  v65 = v33;
  sub_1001A7BF8();
  sub_10001B350(v25, 0, 1, v28);
  sub_1002476E8(v22);
  v35 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v35], 1, v28) != 1)
    {
      sub_1000A0AC0();
      sub_100349048();
      v49 = v48;
      sub_1001AFB34(v31, type metadata accessor for ActiveLocationInput);
      sub_1000180EC(v22, &qword_100CA4B50);
      sub_1000180EC(v25, &qword_100CA4B50);
      sub_1001AFB34(v19, type metadata accessor for ActiveLocationInput);
      sub_1000180EC(v15, &qword_100CA4B50);
      if (v49)
      {
        goto LABEL_15;
      }

LABEL_9:
      v36 = v58;
      v37 = v65;
      v60(v65, 0);
      if (sub_100024D10(v36, 1, active) == 1)
      {
        sub_1000180EC(v36, &qword_100CA4B40);
      }

      else
      {
        v38 = v56;
        sub_1000A0AC0();
        v39 = v55;
        sub_1000E7B34();
        sub_1003492B8(v38, v39, v40, v41, v42, v43, v44, v45, v55, v56, active, v58, v59, v60, v61, v62, v63, v64, v65, v66[0]);
        v47 = v46;
        sub_1001AFB34(v39, type metadata accessor for ActiveLocationModel);
        if ((v47 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v51 = type metadata accessor for Logger();
          sub_10000703C(v51, qword_100D90C18);
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v66[0] = swift_slowAlloc();
            *v54 = 136446466;
            *(v54 + 4) = sub_100078694(0xD000000000000013, 0x8000000100ABC0A0, v66);
            *(v54 + 12) = 2082;
            *(v54 + 14) = sub_100078694(0xD000000000000013, 0x8000000100ABC0C0, v66);
            _os_log_impl(&_mh_execute_header, v52, v53, "Selector observed model difference for %{public}s, %{public}s; views will update", v54, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4B58);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4B60);
          sub_100006F64(&qword_100CA4B68, &qword_100CA4B60);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v38, type metadata accessor for ActiveLocationModel);
          v50 = v37;
          return sub_1001AFB34(v50, type metadata accessor for ActiveLocationInput);
        }

        sub_1001AFB34(v38, type metadata accessor for ActiveLocationModel);
      }

      sub_10022C350(&qword_100CA4B58);
      sub_1001A7BF8();
      sub_1000E7B34();
      sub_1001AFB34(v37, type metadata accessor for ActiveLocationInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v22, &qword_100CA4B50);
    sub_1000180EC(v25, &qword_100CA4B50);
    sub_1001AFB34(v19, type metadata accessor for ActiveLocationInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4B48);
    goto LABEL_9;
  }

  sub_1000180EC(v22, &qword_100CA4B50);
  sub_1000180EC(v25, &qword_100CA4B50);
  if (sub_100024D10(&v15[v35], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4B50);
LABEL_15:
  v50 = v65;
  return sub_1001AFB34(v50, type metadata accessor for ActiveLocationInput);
}

uint64_t sub_1002608D8(void (*a1)(uint64_t, void, __n128), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void (*)(uint64_t, void, __n128), void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA4BF0);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA4BF8);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  v50 = type metadata accessor for LocationViewerViewModel();
  __chkstk_darwin(v50);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA4C00);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4C08);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for LocationViewerInput();
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  v58(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4C08);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_100247A40(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_100236888(v18, v30);
      sub_1001AFB34(v30, type metadata accessor for LocationViewerInput);
      sub_1000180EC(v21, &qword_100CA4C08);
      sub_1000180EC(v24, &qword_100CA4C08);
      sub_1001AFB34(v18, type metadata accessor for LocationViewerInput);
      sub_1000180EC(v15, &qword_100CA4C08);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v51;
      v38 = v58;
      v53(v58, 0);
      if (sub_100024D10(v37, 1, v50) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4BF8);
      }

      else
      {
        v39 = v49;
        sub_1000A0AC0();
        v40 = v48;
        sub_100104794();
        v41 = sub_100132BC0(v39, v40);
        sub_1001AFB34(v40, type metadata accessor for LocationViewerViewModel);
        if ((v41 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0xD000000000000013, 0x8000000100ABC150, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0xD000000000000017, 0x8000000100ABC170, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4C10);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4C18);
          sub_100006F64(&qword_100CA4C20, &qword_100CA4C18);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for LocationViewerViewModel);
          v43 = v38;
          return sub_1001AFB34(v43, type metadata accessor for LocationViewerInput);
        }

        sub_1001AFB34(v39, type metadata accessor for LocationViewerViewModel);
      }

      sub_10022C350(&qword_100CA4C10);
      sub_1001A7BF8();
      sub_100104794();
      sub_1001AFB34(v38, type metadata accessor for LocationViewerInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4C08);
    sub_1000180EC(v24, &qword_100CA4C08);
    sub_1001AFB34(v18, type metadata accessor for LocationViewerInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4C00);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4C08);
  sub_1000180EC(v24, &qword_100CA4C08);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4C08);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for LocationViewerInput);
}

uint64_t sub_10026124C(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v51 = a6;
  v52 = a5;
  v55 = a4;
  v56 = a2;
  v57 = a1;
  v53 = sub_10022C350(&qword_100CA4C28);
  __chkstk_darwin(v53);
  v54 = &v47 - v7;
  v8 = sub_10022C350(&qword_100CA4C30);
  __chkstk_darwin(v8 - 8);
  v50 = &v47 - v9;
  v49 = type metadata accessor for ListViewModel();
  v10 = __chkstk_darwin(v49);
  v47 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v47 - v12;
  v13 = sub_10022C350(&qword_100CA4C38);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v16 = sub_10022C350(&qword_100CA4C40);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v47 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v47 - v24;
  __chkstk_darwin(v23);
  v27 = &v47 - v26;
  v28 = type metadata accessor for ListInput(0);
  v29 = __chkstk_darwin(v28);
  v31 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v47 - v32;
  v57(a3 + 64, 0);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4C40);
  }

  sub_1000A0AC0();
  v57 = v33;
  sub_1001A7BF8();
  sub_10001B350(v25, 0, 1, v28);
  sub_100248154(v22);
  v35 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v35], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v41 = sub_10047C434();
      sub_1001AFB34(v31, type metadata accessor for ListInput);
      sub_1000180EC(v22, &qword_100CA4C40);
      sub_1000180EC(v25, &qword_100CA4C40);
      sub_1001AFB34(v19, type metadata accessor for ListInput);
      sub_1000180EC(v15, &qword_100CA4C40);
      if (v41)
      {
        goto LABEL_15;
      }

LABEL_9:
      v36 = v50;
      v37 = v57;
      v52(v57, 0);
      if (sub_100024D10(v36, 1, v49) == 1)
      {
        sub_1000180EC(v36, &qword_100CA4C30);
      }

      else
      {
        v38 = v48;
        sub_1000A0AC0();
        v39 = v47;
        sub_100988558();
        v40 = sub_1006AB7D8(v38, v39);
        sub_1001AFB34(v39, type metadata accessor for ListViewModel);
        if (!v40)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v43 = type metadata accessor for Logger();
          sub_10000703C(v43, qword_100D90C18);
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v58[0] = swift_slowAlloc();
            *v46 = 136446466;
            *(v46 + 4) = sub_100078694(0x75706E497473694CLL, 0xE900000000000074, v58);
            *(v46 + 12) = 2082;
            *(v46 + 14) = sub_100078694(0x776569567473694CLL, 0xED00006C65646F4DLL, v58);
            _os_log_impl(&_mh_execute_header, v44, v45, "Selector observed model difference for %{public}s, %{public}s; views will update", v46, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4C48);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4C50);
          sub_100006F64(&qword_100CA4C58, &qword_100CA4C50);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v38, type metadata accessor for ListViewModel);
          v42 = v37;
          return sub_1001AFB34(v42, type metadata accessor for ListInput);
        }

        sub_1001AFB34(v38, type metadata accessor for ListViewModel);
      }

      sub_10022C350(&qword_100CA4C48);
      sub_1001A7BF8();
      sub_100988558();
      sub_1001AFB34(v37, type metadata accessor for ListInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v22, &qword_100CA4C40);
    sub_1000180EC(v25, &qword_100CA4C40);
    sub_1001AFB34(v19, type metadata accessor for ListInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4C38);
    goto LABEL_9;
  }

  sub_1000180EC(v22, &qword_100CA4C40);
  sub_1000180EC(v25, &qword_100CA4C40);
  if (sub_100024D10(&v15[v35], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4C40);
LABEL_15:
  v42 = v57;
  return sub_1001AFB34(v42, type metadata accessor for ListInput);
}

void *sub_100261BC4(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, __n128), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void), uint64_t a6)
{
  v33 = a6;
  v34 = sub_10022C350(&qword_100CA4C60);
  __chkstk_darwin(v34);
  v10 = (&v31 - v9);
  v11 = sub_10022C350(&qword_100CA4C68);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for SearchViewModel(0);
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v31 - v19;
  result = a1(v35, a3 + 64, 0, v18);
  v22 = v35[0];
  if (!v35[0])
  {
    return result;
  }

  v32 = v10;
  v36 = v35[0];

  v23 = sub_1002484AC();
  if (v23)
  {
    if (v22 == v23)
    {

LABEL_7:
    }

    type metadata accessor for MainState._Storage(0);
    sub_100073248();
    v25 = v24;

    if (v25)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  a5(&v36, 0);
  if (sub_100024D10(v13, 1, v14) == 1)
  {
    sub_1000180EC(v13, &qword_100CA4C68);
LABEL_14:
    sub_10022C350(&qword_100CA4C70);
    *v32 = v22;

    sub_100989840();

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    return swift_endAccess();
  }

  sub_1000A0AC0();
  sub_100989840();
  v26 = sub_1007BBD88(v20, v16);
  sub_1001AFB34(v16, type metadata accessor for SearchViewModel);
  if (v26)
  {
    sub_1001AFB34(v20, type metadata accessor for SearchViewModel);
    goto LABEL_14;
  }

  if (qword_100CA2740 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000703C(v27, qword_100D90C18);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v30 = 136446466;
    *(v30 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v35);
    *(v30 + 12) = 2082;
    *(v30 + 14) = sub_100078694(0x6956686372616553, 0xEF6C65646F4D7765, v35);
    _os_log_impl(&_mh_execute_header, v28, v29, "Selector observed model difference for %{public}s, %{public}s; views will update", v30, 0x16u);
    swift_arrayDestroy();
  }

  sub_10022C350(&qword_100CA4C70);
  *v32 = v22;
  sub_1001A7BF8();
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();

  sub_100097AA4();
  swift_endAccess();
  sub_10022C350(&qword_100CA4C78);
  sub_100006F64(&qword_100CA4C80, &qword_100CA4C78);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  sub_1001AFB34(v20, type metadata accessor for SearchViewModel);
}

uint64_t sub_1002621C4(void (*a1)(uint64_t, void, __n128), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, void), uint64_t a6)
{
  v57 = a6;
  v58 = a5;
  v61 = a4;
  v59 = sub_10022C350(&qword_100CA4C88);
  __chkstk_darwin(v59);
  v60 = &v55 - v8;
  v9 = sub_10022C350(&qword_100CA4C90);
  __chkstk_darwin(v9);
  v11 = &v55 - v10;
  v12 = sub_10022C350(&qword_100CA4C98);
  __chkstk_darwin(v12 - 8);
  v56 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v55 - v15;
  __chkstk_darwin(v17);
  v19 = &v55 - v18;
  __chkstk_darwin(v20);
  v22 = &v55 - v21;
  v23 = type metadata accessor for NotificationsOptInInput();
  __chkstk_darwin(v23);
  v55 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v25);
  v28 = &v55 - v27;
  a1(a3 + 64, 0, v26);
  if (sub_100024D10(v22, 1, v23) == 1)
  {
    return sub_1000180EC(v22, &qword_100CA4C98);
  }

  sub_1000A0AC0();
  sub_1001A7BF8();
  sub_10001B350(v19, 0, 1, v23);
  sub_100248738(v16);
  v30 = *(v9 + 48);
  sub_100095588();
  sub_100095588();
  v31 = v28;
  if (sub_100024D10(v11, 1, v23) == 1)
  {
    sub_1000180EC(v16, &qword_100CA4C98);
    sub_1000180EC(v19, &qword_100CA4C98);
    if (sub_100024D10(&v11[v30], 1, v23) == 1)
    {
      sub_1000180EC(v11, &qword_100CA4C98);
LABEL_13:
      v44 = v31;
      return sub_1001AFB34(v44, type metadata accessor for NotificationsOptInInput);
    }

    goto LABEL_8;
  }

  v32 = v56;
  sub_100095588();
  if (sub_100024D10(&v11[v30], 1, v23) == 1)
  {
    sub_1000180EC(v16, &qword_100CA4C98);
    sub_1000180EC(v19, &qword_100CA4C98);
    sub_1001AFB34(v32, type metadata accessor for NotificationsOptInInput);
LABEL_8:
    sub_1000180EC(v11, &qword_100CA4C90);
    goto LABEL_9;
  }

  v41 = v55;
  sub_1000A0AC0();
  v42 = v32;
  v43 = sub_1006044D4(v32, v41);
  sub_1001AFB34(v41, type metadata accessor for NotificationsOptInInput);
  sub_1000180EC(v16, &qword_100CA4C98);
  sub_1000180EC(v19, &qword_100CA4C98);
  sub_1001AFB34(v42, type metadata accessor for NotificationsOptInInput);
  sub_1000180EC(v11, &qword_100CA4C98);
  if (v43)
  {
    goto LABEL_13;
  }

LABEL_9:
  v58(v62, v31, 0);
  v33 = LODWORD(v62[0]) | ((WORD2(v62[0]) | (BYTE6(v62[0]) << 16)) << 32);
  if (v62[0] & 0xFF0000) == 0x20000 || (sub_1009892E4(), (sub_100549EA8(v33 & 0xFFFFFF000000 | ((HIWORD(v33) & 1) << 48) | (((v33 >> 16) & 1) << 16) | v33 & 0xFF00 | v33, v34 & 0x1FFFFFF01FFFFLL)))
  {
    v35 = sub_10022C350(&qword_100CA4CA0);
    v36 = &v60[*(v35 + 48)];
    sub_1001A7BF8();
    sub_1009892E4();
    v38 = v37;
    v39 = v37 >> 8;
    v40 = v37 >> 24;
    sub_1001AFB34(v31, type metadata accessor for NotificationsOptInInput);
    *v36 = v38;
    v36[1] = v39;
    v36[2] = BYTE2(v38) & 1;
    *(v36 + 3) = v40;
    v36[5] = BYTE2(v40);
    v36[6] = BYTE6(v38) & 1;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    return swift_endAccess();
  }

  v45 = v33;
  v46 = BYTE1(v33);
  v47 = (v33 >> 24) & 0xFFFFFF;
  v48 = (v33 >> 16) & 1;
  v58 = (HIWORD(v33) & 1);
  if (qword_100CA2740 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_10000703C(v49, qword_100D90C18);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v62[0] = swift_slowAlloc();
    *v52 = 136446466;
    *(v52 + 4) = sub_100078694(0xD000000000000017, 0x8000000100ABC190, v62);
    *(v52 + 12) = 2082;
    *(v52 + 14) = sub_100078694(0xD00000000000001BLL, 0x8000000100ABC1B0, v62);
    _os_log_impl(&_mh_execute_header, v50, v51, "Selector observed model difference for %{public}s, %{public}s; views will update", v52, 0x16u);
    swift_arrayDestroy();
  }

  v53 = sub_10022C350(&qword_100CA4CA0);
  v54 = &v60[*(v53 + 48)];
  sub_1001A7BF8();
  *v54 = v45;
  v54[1] = v46;
  v54[2] = v48;
  v54[5] = BYTE2(v47);
  *(v54 + 3) = v47;
  v54[6] = v58;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_100097AA4();
  swift_endAccess();
  sub_10022C350(&qword_100CA4CA8);
  sub_100006F64(&qword_100CA4CB0, &qword_100CA4CA8);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v44 = v31;
  return sub_1001AFB34(v44, type metadata accessor for NotificationsOptInInput);
}

void *sub_100262A84(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void), uint64_t a6)
{
  v32 = a6;
  v33 = sub_10022C350(&qword_100CA4CB8);
  __chkstk_darwin(v33);
  v10 = (&v30 - v9);
  v11 = sub_10022C350(&qword_100CA4CC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for MainViewModel(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v30 - v18;
  result = a1(v34, a3 + 64, 0);
  v21 = v34[0];
  if (!v34[0])
  {
    return result;
  }

  v31 = v10;
  v35 = v34[0];

  v22 = sub_1002489E8();
  if (v22)
  {
    if (v21 == v22)
    {

LABEL_7:
    }

    type metadata accessor for MainState._Storage(0);
    sub_100073248();
    v24 = v23;

    if (v24)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  a5(&v35, 0);
  if (sub_100024D10(v13, 1, v14) == 1)
  {
    sub_1000180EC(v13, &qword_100CA4CC0);
LABEL_14:
    sub_10022C350(&qword_100CA4CC8);
    *v31 = v21;

    sub_100095730();

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    return swift_endAccess();
  }

  sub_1000A0AC0();
  sub_100095730();
  v25 = sub_100880BE0(v19, v17);
  sub_1001AFB34(v17, type metadata accessor for MainViewModel);
  if (v25)
  {
    sub_1001AFB34(v19, type metadata accessor for MainViewModel);
    goto LABEL_14;
  }

  if (qword_100CA2740 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000703C(v26, qword_100D90C18);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v29 = 136446466;
    *(v29 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v34);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_100078694(0x776569566E69614DLL, 0xED00006C65646F4DLL, v34);
    _os_log_impl(&_mh_execute_header, v27, v28, "Selector observed model difference for %{public}s, %{public}s; views will update", v29, 0x16u);
    swift_arrayDestroy();
  }

  sub_10022C350(&qword_100CA4CC8);
  *v31 = v21;
  sub_1001A7BF8();
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();

  sub_100097AA4();
  swift_endAccess();
  sub_10022C350(&unk_100CE0F40);
  sub_100006F64(&qword_100CA4CD0, &unk_100CE0F40);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  sub_1001AFB34(v19, type metadata accessor for MainViewModel);
}

uint64_t sub_100263084(void (*a1)(uint64_t, void, __n128), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, void), uint64_t a6)
{
  v55 = a6;
  v56 = a5;
  v59 = a4;
  v60 = a2;
  v57 = sub_10022C350(&qword_100CA4CD8);
  __chkstk_darwin(v57);
  v58 = &v50 - v8;
  v9 = sub_10022C350(&qword_100CA4CE0);
  __chkstk_darwin(v9 - 8);
  v54 = &v50 - v10;
  v53 = type metadata accessor for AveragesDetailViewModel();
  __chkstk_darwin(v53);
  v50 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v51 = &v50 - v13;
  v14 = sub_10022C350(&qword_100CA4CE8);
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v17 = sub_10022C350(&qword_100CA4CF0);
  __chkstk_darwin(v17 - 8);
  v52 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v50 - v20;
  __chkstk_darwin(v22);
  v24 = &v50 - v23;
  __chkstk_darwin(v25);
  v27 = &v50 - v26;
  v28 = type metadata accessor for AveragesDetailInput(0);
  __chkstk_darwin(v28);
  v30 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v50 - v33;
  a1(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4CF0);
  }

  sub_1000A0AC0();
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_100248C74(v21);
  v36 = *(v14 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v16, 1, v28) != 1)
  {
    v38 = v52;
    sub_100095588();
    if (sub_100024D10(&v16[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      if ((sub_100453EEC(v38, v30) & 1) != 0 && *(v38 + *(v28 + 20)) == v30[*(v28 + 20)])
      {
        v49 = static Location.== infix(_:_:)();
        sub_1001AFB34(v30, type metadata accessor for AveragesDetailInput);
        sub_1000180EC(v21, &qword_100CA4CF0);
        sub_1000180EC(v24, &qword_100CA4CF0);
        sub_1001AFB34(v38, type metadata accessor for AveragesDetailInput);
        sub_1000180EC(v16, &qword_100CA4CF0);
        if (v49)
        {
          goto LABEL_6;
        }

LABEL_14:
        v41 = v54;
        v56(v34, 0);
        if (sub_100024D10(v41, 1, v53) == 1)
        {
          sub_1000180EC(v41, &qword_100CA4CE0);
        }

        else
        {
          v42 = v51;
          sub_1000A0AC0();
          v43 = v50;
          sub_100989EF8();
          v44 = sub_100517214(v42, v43);
          sub_1001AFB34(v43, type metadata accessor for AveragesDetailViewModel);
          if ((v44 & 1) == 0)
          {
            if (qword_100CA2740 != -1)
            {
              swift_once();
            }

            v45 = type metadata accessor for Logger();
            sub_10000703C(v45, qword_100D90C18);
            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              v61[0] = swift_slowAlloc();
              *v48 = 136446466;
              *(v48 + 4) = sub_100078694(0xD000000000000013, 0x8000000100ABC1D0, v61);
              *(v48 + 12) = 2082;
              *(v48 + 14) = sub_100078694(0xD000000000000017, 0x8000000100ABC1F0, v61);
              _os_log_impl(&_mh_execute_header, v46, v47, "Selector observed model difference for %{public}s, %{public}s; views will update", v48, 0x16u);
              swift_arrayDestroy();
            }

            sub_10022C350(&qword_100CA4CF8);
            sub_1001A7BF8();
            sub_1001A7BF8();
            swift_storeEnumTagMultiPayload();
            swift_beginAccess();
            sub_100097AA4();
            swift_endAccess();
            sub_10022C350(&qword_100CA4D00);
            sub_100006F64(&qword_100CA4D08, &qword_100CA4D00);
            ObservableObject<>.objectWillChange.getter();
            ObservableObjectPublisher.send()();

            sub_1001AFB34(v42, type metadata accessor for AveragesDetailViewModel);
            v37 = v34;
            return sub_1001AFB34(v37, type metadata accessor for AveragesDetailInput);
          }

          sub_1001AFB34(v42, type metadata accessor for AveragesDetailViewModel);
        }

        sub_10022C350(&qword_100CA4CF8);
        sub_1001A7BF8();
        sub_100989EF8();
        sub_1001AFB34(v34, type metadata accessor for AveragesDetailInput);
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_100097AA4();
        return swift_endAccess();
      }

      sub_1001AFB34(v30, type metadata accessor for AveragesDetailInput);
      sub_1000180EC(v21, &qword_100CA4CF0);
      sub_1000180EC(v24, &qword_100CA4CF0);
      sub_1001AFB34(v38, type metadata accessor for AveragesDetailInput);
      v40 = v16;
      v39 = &qword_100CA4CF0;
LABEL_13:
      sub_1000180EC(v40, v39);
      goto LABEL_14;
    }

    sub_1000180EC(v21, &qword_100CA4CF0);
    sub_1000180EC(v24, &qword_100CA4CF0);
    sub_1001AFB34(v38, type metadata accessor for AveragesDetailInput);
LABEL_9:
    v39 = &qword_100CA4CE8;
    v40 = v16;
    goto LABEL_13;
  }

  sub_1000180EC(v21, &qword_100CA4CF0);
  sub_1000180EC(v24, &qword_100CA4CF0);
  if (sub_100024D10(&v16[v36], 1, v28) != 1)
  {
    goto LABEL_9;
  }

  sub_1000180EC(v16, &qword_100CA4CF0);
LABEL_6:
  v37 = v34;
  return sub_1001AFB34(v37, type metadata accessor for AveragesDetailInput);
}

uint64_t sub_100263AB8(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v51 = a6;
  v52 = a5;
  v55 = a4;
  v56 = a2;
  v57 = a1;
  v53 = sub_10022C350(&qword_100CA4D10);
  __chkstk_darwin(v53);
  v54 = &v47 - v7;
  v8 = sub_10022C350(&qword_100CA4D18);
  __chkstk_darwin(v8 - 8);
  v50 = &v47 - v9;
  v49 = type metadata accessor for MoonScrubberViewModel();
  v10 = __chkstk_darwin(v49);
  v47 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v47 - v12;
  v13 = sub_10022C350(&qword_100CA4D20);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v16 = sub_10022C350(&qword_100CA4D28);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v47 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v47 - v24;
  __chkstk_darwin(v23);
  v27 = &v47 - v26;
  v28 = type metadata accessor for MoonScrubberInput();
  v29 = __chkstk_darwin(v28);
  v31 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v47 - v32;
  v57(a3 + 64, 0);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4D28);
  }

  sub_1000A0AC0();
  v57 = v33;
  sub_1001A7BF8();
  sub_10001B350(v25, 0, 1, v28);
  sub_100248FCC(v22);
  v35 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v35], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v41 = sub_10042568C();
      sub_1001AFB34(v31, type metadata accessor for MoonScrubberInput);
      sub_1000180EC(v22, &qword_100CA4D28);
      sub_1000180EC(v25, &qword_100CA4D28);
      sub_1001AFB34(v19, type metadata accessor for MoonScrubberInput);
      sub_1000180EC(v15, &qword_100CA4D28);
      if (v41)
      {
        goto LABEL_15;
      }

LABEL_9:
      v36 = v50;
      v37 = v57;
      v52(v57, 0);
      if (sub_100024D10(v36, 1, v49) == 1)
      {
        sub_1000180EC(v36, &qword_100CA4D18);
      }

      else
      {
        v38 = v48;
        sub_1000A0AC0();
        v39 = v47;
        sub_100989B78();
        v40 = sub_1002AC790(v38, v39);
        sub_1001AFB34(v39, type metadata accessor for MoonScrubberViewModel);
        if ((v40 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v43 = type metadata accessor for Logger();
          sub_10000703C(v43, qword_100D90C18);
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v58[0] = swift_slowAlloc();
            *v46 = 136446466;
            *(v46 + 4) = sub_100078694(0xD000000000000011, 0x8000000100ABC210, v58);
            *(v46 + 12) = 2082;
            *(v46 + 14) = sub_100078694(0xD000000000000015, 0x8000000100ABC230, v58);
            _os_log_impl(&_mh_execute_header, v44, v45, "Selector observed model difference for %{public}s, %{public}s; views will update", v46, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4D30);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4D38);
          sub_100006F64(&qword_100CA4D40, &qword_100CA4D38);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v38, type metadata accessor for MoonScrubberViewModel);
          v42 = v37;
          return sub_1001AFB34(v42, type metadata accessor for MoonScrubberInput);
        }

        sub_1001AFB34(v38, type metadata accessor for MoonScrubberViewModel);
      }

      sub_10022C350(&qword_100CA4D30);
      sub_1001A7BF8();
      sub_100989B78();
      sub_1001AFB34(v37, type metadata accessor for MoonScrubberInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v22, &qword_100CA4D28);
    sub_1000180EC(v25, &qword_100CA4D28);
    sub_1001AFB34(v19, type metadata accessor for MoonScrubberInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4D20);
    goto LABEL_9;
  }

  sub_1000180EC(v22, &qword_100CA4D28);
  sub_1000180EC(v25, &qword_100CA4D28);
  if (sub_100024D10(&v15[v35], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4D28);
LABEL_15:
  v42 = v57;
  return sub_1001AFB34(v42, type metadata accessor for MoonScrubberInput);
}

uint64_t sub_10026442C(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA4D48);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA4D50);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  v50 = type metadata accessor for SunriseSunsetDetailViewModel();
  v10 = __chkstk_darwin(v50);
  v48 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA4D58);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4D60);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v48 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v48 - v24;
  __chkstk_darwin(v23);
  v27 = &v48 - v26;
  v28 = type metadata accessor for SunriseSunsetDetailInput(0);
  v29 = __chkstk_darwin(v28);
  v31 = &v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v48 - v32;
  v58(a3 + 64, 0);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4D60);
  }

  sub_1000A0AC0();
  v58 = v33;
  sub_1001A7BF8();
  sub_10001B350(v25, 0, 1, v28);
  sub_100249324(v22);
  v35 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v35], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_10048404C(v19, v31);
      sub_1001AFB34(v31, type metadata accessor for SunriseSunsetDetailInput);
      sub_1000180EC(v22, &qword_100CA4D60);
      sub_1000180EC(v25, &qword_100CA4D60);
      sub_1001AFB34(v19, type metadata accessor for SunriseSunsetDetailInput);
      sub_1000180EC(v15, &qword_100CA4D60);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v36 = v51;
      v37 = v58;
      v53(v58, 0);
      if (sub_100024D10(v36, 1, v50) == 1)
      {
        sub_1000180EC(v36, &qword_100CA4D50);
      }

      else
      {
        v38 = v49;
        sub_1000A0AC0();
        v39 = v48;
        sub_10098A320();
        sub_10062B964();
        v41 = v40;
        sub_1001AFB34(v39, type metadata accessor for SunriseSunsetDetailViewModel);
        if ((v41 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0xD000000000000018, 0x8000000100ABC250, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0xD00000000000001CLL, 0x8000000100ABC270, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4D68);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4D70);
          sub_100006F64(&qword_100CA4D78, &qword_100CA4D70);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v38, type metadata accessor for SunriseSunsetDetailViewModel);
          v43 = v37;
          return sub_1001AFB34(v43, type metadata accessor for SunriseSunsetDetailInput);
        }

        sub_1001AFB34(v38, type metadata accessor for SunriseSunsetDetailViewModel);
      }

      sub_10022C350(&qword_100CA4D68);
      sub_1001A7BF8();
      sub_10098A320();
      sub_1001AFB34(v37, type metadata accessor for SunriseSunsetDetailInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v22, &qword_100CA4D60);
    sub_1000180EC(v25, &qword_100CA4D60);
    sub_1001AFB34(v19, type metadata accessor for SunriseSunsetDetailInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4D58);
    goto LABEL_9;
  }

  sub_1000180EC(v22, &qword_100CA4D60);
  sub_1000180EC(v25, &qword_100CA4D60);
  if (sub_100024D10(&v15[v35], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4D60);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for SunriseSunsetDetailInput);
}

void sub_100264DA0(void (*a1)(id *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id *__return_ptr, void *, void))
{
  a1(&v52, a3 + 64, 0);
  v7 = v52;
  if (!v52)
  {
    return;
  }

  v8 = v53;
  v9 = v54;
  v55[0] = v52;
  v55[1] = v53;
  v56 = v54 & 1;
  v51 = v52;
  v10 = sub_10024967C();
  if (v10)
  {
    v13 = v10;
    v14 = sub_1008D9088(v51, v8, v9 & 1, v10, v11, v12 & 1);

    if (v14)
    {

      return;
    }
  }

  else
  {
  }

  a5(&v52, v55, 0);
  v15 = v52;
  if (!v52)
  {
LABEL_11:
    v23 = v51;
    v24 = sub_100988A98();
    v26 = v25;
    v28 = v27;

    swift_beginAccess();
    v29 = *(a4 + 16);
    v30 = *(a4 + 24);
    v31 = *(a4 + 32);
    v32 = *(a4 + 40);
    v33 = *(a4 + 48);
    *(a4 + 16) = v7;
    *(a4 + 24) = v8;
    *(a4 + 32) = v9 & 1;
    *(a4 + 40) = v24;
    *(a4 + 48) = v26;
    v34 = *(a4 + 56);
    *(a4 + 56) = v28 & 1;
    v35 = *(a4 + 57);
    *(a4 + 57) = 1;
    sub_10026B820(v29, v30, v31, v32, v33, v34, v35);
    return;
  }

  v16 = v53;
  v17 = v54;
  v18 = sub_100988A98();
  v19 = v17 & 1;
  v22 = sub_1002804F8(v15, v16, v19, v18, v21, v20 & 1);

  if (v22)
  {

    goto LABEL_11;
  }

  if (qword_100CA2740 != -1)
  {
    swift_once();
  }

  v50 = v16;
  v36 = type metadata accessor for Logger();
  sub_10000703C(v36, qword_100D90C18);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  v49 = v19;
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v39 = 136446466;
    *(v39 + 4) = sub_100078694(0x756E654D7473694CLL, 0xED00007475706E49, &v52);
    *(v39 + 12) = 2082;
    *(v39 + 14) = sub_100078694(0xD000000000000011, 0x8000000100ABC290, &v52);
    _os_log_impl(&_mh_execute_header, v37, v38, "Selector observed model difference for %{public}s, %{public}s; views will update", v39, 0x16u);
    swift_arrayDestroy();
  }

  v40 = v9 & 1;
  swift_beginAccess();
  v41 = *(a4 + 16);
  v42 = *(a4 + 24);
  v43 = *(a4 + 32);
  v44 = *(a4 + 40);
  v45 = *(a4 + 48);
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v40;
  *(a4 + 40) = v15;
  *(a4 + 48) = v50;
  v46 = *(a4 + 56);
  *(a4 + 56) = v49;
  LOBYTE(v40) = *(a4 + 57);
  *(a4 + 57) = 1;
  v47 = v51;
  v48 = v15;
  sub_10026B820(v41, v42, v43, v44, v45, v46, v40);
  sub_10022C350(&qword_100CA4D80);
  sub_100006F64(&qword_100CA4D88, &qword_100CA4D80);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();
}

uint64_t sub_1002651CC(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v51 = a6;
  v52 = a5;
  v55 = a4;
  v56 = a2;
  v57 = a1;
  v53 = sub_10022C350(&qword_100CA4D90);
  __chkstk_darwin(v53);
  v54 = &v47 - v7;
  v8 = sub_10022C350(&qword_100CA4D98);
  __chkstk_darwin(v8 - 8);
  v49 = &v47 - v9;
  v50 = type metadata accessor for MoonCalendarViewModel();
  v10 = __chkstk_darwin(v50);
  v47 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v47 - v12;
  v13 = sub_10022C350(&qword_100CA4DA0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v16 = sub_10022C350(&qword_100CA4DA8);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v47 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v47 - v24;
  __chkstk_darwin(v23);
  v27 = &v47 - v26;
  v28 = type metadata accessor for MoonCalendarInput();
  v29 = __chkstk_darwin(v28);
  v31 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v47 - v32;
  v57(a3 + 64, 0);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4DA8);
  }

  sub_1000A0AC0();
  v57 = v33;
  sub_1001A7BF8();
  sub_10001B350(v25, 0, 1, v28);
  sub_1002497C0(v22);
  v35 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v35], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v41 = sub_10061B2A0(v19, v31);
      sub_1001AFB34(v31, type metadata accessor for MoonCalendarInput);
      sub_1000180EC(v22, &qword_100CA4DA8);
      sub_1000180EC(v25, &qword_100CA4DA8);
      sub_1001AFB34(v19, type metadata accessor for MoonCalendarInput);
      sub_1000180EC(v15, &qword_100CA4DA8);
      v36 = v57;
      if (v41)
      {
        goto LABEL_16;
      }

LABEL_9:
      v37 = v49;
      v52(v36, 0);
      if (sub_100024D10(v37, 1, v50) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4D98);
LABEL_11:
        sub_10022C350(&qword_100CA4DB0);
        sub_1001A7BF8();
        sub_10098A4E0();
        sub_1001AFB34(v36, type metadata accessor for MoonCalendarInput);
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_100097AA4();
        return swift_endAccess();
      }

      v38 = v48;
      sub_1000A0AC0();
      v39 = v47;
      sub_10098A4E0();
      if (sub_10026BF50(v38, v39))
      {
        v40 = static OverviewTableViewModel.== infix(_:_:)();
        sub_1001AFB34(v39, type metadata accessor for MoonCalendarViewModel);
        if (v40)
        {
          sub_1001AFB34(v38, type metadata accessor for MoonCalendarViewModel);
          goto LABEL_11;
        }
      }

      else
      {
        sub_1001AFB34(v39, type metadata accessor for MoonCalendarViewModel);
      }

      if (qword_100CA2740 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_10000703C(v43, qword_100D90C18);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v58[0] = swift_slowAlloc();
        *v46 = 136446466;
        *(v46 + 4) = sub_100078694(0xD000000000000011, 0x8000000100ABC2B0, v58);
        *(v46 + 12) = 2082;
        *(v46 + 14) = sub_100078694(0xD000000000000015, 0x8000000100ABC2D0, v58);
        _os_log_impl(&_mh_execute_header, v44, v45, "Selector observed model difference for %{public}s, %{public}s; views will update", v46, 0x16u);
        swift_arrayDestroy();
      }

      sub_10022C350(&qword_100CA4DB0);
      sub_1001A7BF8();
      sub_1001A7BF8();
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      swift_endAccess();
      sub_10022C350(&qword_100CA4DB8);
      sub_100006F64(&qword_100CA4DC0, &qword_100CA4DB8);
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      sub_1001AFB34(v38, type metadata accessor for MoonCalendarViewModel);
      v42 = v36;
      return sub_1001AFB34(v42, type metadata accessor for MoonCalendarInput);
    }

    sub_1000180EC(v22, &qword_100CA4DA8);
    sub_1000180EC(v25, &qword_100CA4DA8);
    sub_1001AFB34(v19, type metadata accessor for MoonCalendarInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4DA0);
    v36 = v57;
    goto LABEL_9;
  }

  sub_1000180EC(v22, &qword_100CA4DA8);
  sub_1000180EC(v25, &qword_100CA4DA8);
  if (sub_100024D10(&v15[v35], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4DA8);
  v36 = v57;
LABEL_16:
  v42 = v36;
  return sub_1001AFB34(v42, type metadata accessor for MoonCalendarInput);
}

uint64_t sub_100265B84(void (*a1)(uint64_t, void, __n128), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void (*)(uint64_t, void, __n128), void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA4DC8);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA4DD0);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  v50 = type metadata accessor for HomeAndWorkRefinementViewModel(0);
  __chkstk_darwin(v50);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA4DD8);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4DE0);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for HomeAndWorkRefinementInput();
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  v58(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4DE0);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_100249B18(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_10053885C(v18, v30);
      sub_1001AFB34(v30, type metadata accessor for HomeAndWorkRefinementInput);
      sub_1000180EC(v21, &qword_100CA4DE0);
      sub_1000180EC(v24, &qword_100CA4DE0);
      sub_1001AFB34(v18, type metadata accessor for HomeAndWorkRefinementInput);
      sub_1000180EC(v15, &qword_100CA4DE0);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v51;
      v38 = v58;
      v53(v58, 0);
      if (sub_100024D10(v37, 1, v50) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4DD0);
      }

      else
      {
        v39 = v49;
        sub_1000A0AC0();
        v40 = v48;
        sub_100988718();
        v41 = sub_1009D0C5C(v39, v40);
        sub_1001AFB34(v40, type metadata accessor for HomeAndWorkRefinementViewModel);
        if ((v41 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0xD00000000000001ALL, 0x8000000100ABC2F0, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0xD00000000000001ELL, 0x8000000100ABC310, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4DE8);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4DF0);
          sub_100006F64(&qword_100CA4DF8, &qword_100CA4DF0);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for HomeAndWorkRefinementViewModel);
          v43 = v38;
          return sub_1001AFB34(v43, type metadata accessor for HomeAndWorkRefinementInput);
        }

        sub_1001AFB34(v39, type metadata accessor for HomeAndWorkRefinementViewModel);
      }

      sub_10022C350(&qword_100CA4DE8);
      sub_1001A7BF8();
      sub_100988718();
      sub_1001AFB34(v38, type metadata accessor for HomeAndWorkRefinementInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4DE0);
    sub_1000180EC(v24, &qword_100CA4DE0);
    sub_1001AFB34(v18, type metadata accessor for HomeAndWorkRefinementInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4DD8);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4DE0);
  sub_1000180EC(v24, &qword_100CA4DE0);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4DE0);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for HomeAndWorkRefinementInput);
}

uint64_t sub_1002664F8(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t, void), uint64_t a6)
{
  v44 = a6;
  v45 = a5;
  v48 = a4;
  v49 = a2;
  v50 = a1;
  v46 = sub_10022C350(&qword_100CA4E00);
  __chkstk_darwin(v46);
  v47 = &v42 - v7;
  v8 = sub_10022C350(&qword_100CA4E08);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = sub_10022C350(&qword_100CA4E10);
  v12 = __chkstk_darwin(v11 - 8);
  v43 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v42 - v18;
  __chkstk_darwin(v17);
  v21 = &v42 - v20;
  v22 = type metadata accessor for NotificationSettingsInput();
  v23 = __chkstk_darwin(v22);
  v25 = (&v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v27 = &v42 - v26;
  v50(a3 + 64, 0);
  if (sub_100024D10(v21, 1, v22) == 1)
  {
    return sub_1000180EC(v21, &qword_100CA4E10);
  }

  sub_1000A0AC0();
  v50 = v27;
  sub_1001A7BF8();
  sub_10001B350(v19, 0, 1, v22);
  sub_100249E70(v16);
  v29 = *(v8 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v10, 1, v22) != 1)
  {
    v31 = v43;
    sub_100095588();
    if (sub_100024D10(&v10[v29], 1, v22) != 1)
    {
      sub_1000A0AC0();
      v34 = sub_100352B70(v31, v25);
      sub_1001AFB34(v25, type metadata accessor for NotificationSettingsInput);
      sub_1000180EC(v16, &qword_100CA4E10);
      sub_1000180EC(v19, &qword_100CA4E10);
      sub_1001AFB34(v31, type metadata accessor for NotificationSettingsInput);
      sub_1000180EC(v10, &qword_100CA4E10);
      v30 = v50;
      if (v34)
      {
        goto LABEL_15;
      }

LABEL_9:
      v45(v55, v30, 0);
      if (LOBYTE(v55[12]) <= 0xFDu)
      {
        memcpy(v53, v55, 0x61uLL);
        memcpy(v56, v55, 0x61uLL);
        sub_10098A0B8();
        memcpy(__dst, v52, 0x61uLL);
        v33 = sub_1006F4B84(v56, __dst);
        memcpy(v54, v52, 0x61uLL);
        sub_10026BA38(v54);
        if ((v33 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          sub_10000703C(v36, qword_100D90C18);
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v52[0] = swift_slowAlloc();
            *v39 = 136446466;
            *(v39 + 4) = sub_100078694(0xD000000000000019, 0x8000000100ABC330, v52);
            *(v39 + 12) = 2082;
            *(v39 + 14) = sub_100078694(0xD00000000000001DLL, 0x8000000100ABC350, v52);
            _os_log_impl(&_mh_execute_header, v37, v38, "Selector observed model difference for %{public}s, %{public}s; views will update", v39, 0x16u);
            swift_arrayDestroy();
          }

          v40 = *(sub_10022C350(&qword_100CA4E20) + 48);
          v41 = v47;
          sub_1001A7BF8();
          memcpy(&v41[v40], v56, 0x61uLL);
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          memcpy(v52, v53, 0x61uLL);
          sub_10026BA8C(v52, &v51);
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4E28);
          sub_100006F64(&qword_100CA4E30, &qword_100CA4E28);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1000180EC(v53, &qword_100CA4E18);
          v35 = v30;
          return sub_1001AFB34(v35, type metadata accessor for NotificationSettingsInput);
        }

        v32 = v53;
      }

      else
      {
        memcpy(__dst, v55, 0x61uLL);
        v32 = __dst;
      }

      sub_1000180EC(v32, &qword_100CA4E18);
      sub_10022C350(&qword_100CA4E20);
      sub_1001A7BF8();
      sub_10098A0B8();
      sub_1001AFB34(v30, type metadata accessor for NotificationSettingsInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v16, &qword_100CA4E10);
    sub_1000180EC(v19, &qword_100CA4E10);
    sub_1001AFB34(v31, type metadata accessor for NotificationSettingsInput);
LABEL_8:
    sub_1000180EC(v10, &qword_100CA4E08);
    v30 = v50;
    goto LABEL_9;
  }

  sub_1000180EC(v16, &qword_100CA4E10);
  sub_1000180EC(v19, &qword_100CA4E10);
  if (sub_100024D10(&v10[v29], 1, v22) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v10, &qword_100CA4E10);
  v30 = v50;
LABEL_15:
  v35 = v30;
  return sub_1001AFB34(v35, type metadata accessor for NotificationSettingsInput);
}

void sub_100266DEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD000000000000019, 0x8000000100ABBD50, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_10026708C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0x617465446E6F6F4DLL, 0xEF7475706E496C69, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD000000000000013, 0x8000000100ABBE40, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_10026733C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD000000000000016, 0x8000000100ABBE60, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_1002675DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0xD000000000000014, 0x8000000100ABBE80, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD000000000000018, 0x8000000100ABBEA0, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100267888(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0xD000000000000017, 0x8000000100ABBEC0, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD00000000000001BLL, 0x8000000100ABBEE0, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100267B34(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0x656B636950796144, 0xEE007475706E4972, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD000000000000012, 0x8000000100ABBF00, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100267DE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD000000000000010, 0x8000000100ABBF20, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100268084(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0xD000000000000010, 0x8000000100ABBF40, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD000000000000014, 0x8000000100ABBF60, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100268330(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0xD000000000000019, 0x8000000100ABBF80, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD00000000000001DLL, 0x8000000100ABBFA0, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_1002685DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0xD000000000000014, 0x8000000100ABBFC0, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD000000000000018, 0x8000000100ABBFE0, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100268888(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0xD000000000000013, 0x8000000100ABC000, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD000000000000017, 0x8000000100ABC020, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100268B34(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0xD000000000000020, 0x8000000100ABC040, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD000000000000024, 0x8000000100ABC070, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100268DE0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0xD000000000000013, 0x8000000100ABC0A0, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD000000000000013, 0x8000000100ABC0C0, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100269088(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0xD000000000000013, 0x8000000100ABC150, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD000000000000017, 0x8000000100ABC170, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100269334(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0xD000000000000017, 0x8000000100ABC190, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD00000000000001BLL, 0x8000000100ABC1B0, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_1002695E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v17 = *(v16 + 16);
    if (*(v17 + 16) && (v18 = sub_1000D5F5C(a2), (v19 & 1) != 0))
    {
      v20 = *(*(v17 + 56) + 8 * v18);
      swift_endAccess();
      if (v20 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v27 = *(v16 + 16);
        sub_1000D52D8();
        *(v16 + 16) = v27;
        v21 = swift_endAccess();
        a4(v21);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000703C(v22, qword_100D90C18);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v28[0] = swift_slowAlloc();
      *v25 = 136315906;
      v26 = sub_100037950();
      *(v25 + 4) = sub_100078694(v26, 0xE900000000000065, v28);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_100078694(a6, a7, v28);
      *(v25 + 22) = 2080;
      *(v25 + 24) = sub_100078694(a8, a9, v28);
      *(v25 + 32) = 2048;
      *(v25 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v23, v24, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v25, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100269878(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0xD000000000000013, 0x8000000100ABC1D0, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD000000000000017, 0x8000000100ABC1F0, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100269B24(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0xD000000000000011, 0x8000000100ABC210, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD000000000000015, 0x8000000100ABC230, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100269DD0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0xD000000000000018, 0x8000000100ABC250, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD00000000000001CLL, 0x8000000100ABC270, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_10026A07C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0x756E654D7473694CLL, 0xED00007475706E49, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD000000000000011, 0x8000000100ABC290, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_10026A32C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0xD000000000000011, 0x8000000100ABC2B0, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD000000000000015, 0x8000000100ABC2D0, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_10026A5D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0xD00000000000001ALL, 0x8000000100ABC2F0, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD00000000000001ELL, 0x8000000100ABC310, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_10026A884(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0xD000000000000019, 0x8000000100ABC330, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD00000000000001DLL, 0x8000000100ABC350, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

uint64_t sub_10026AB30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = j__swift_retain(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10026AB6C@<X0>(void (*a1)(void *__return_ptr, uint64_t *, uint64_t)@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t *__return_ptr)@<X2>, uint64_t *a4@<X8>)
{
  result = sub_10024C714(a1, a2, *a3);
  *a4 = result;
  return result;
}

uint64_t sub_10026AC78@<X0>(void (*a1)(void *__return_ptr, uint64_t *, uint64_t)@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t *__return_ptr)@<X2>, uint64_t *a4@<X8>)
{
  result = sub_10024CA54(a1, a2, *a3);
  *a4 = result;
  return result;
}

uint64_t sub_10026ADEC(_OWORD *a1, void (*a2)(_OWORD *, uint64_t))
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 10) = *(a1 + 42);
  return sub_10024F2CC(v4, a2);
}

uint64_t sub_10026AF94@<X0>(void (*a1)(void *__return_ptr, uint64_t *, uint64_t)@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t *__return_ptr)@<X2>, uint64_t *a4@<X8>)
{
  result = sub_10024D11C(a1, a2, *a3);
  *a4 = result;
  return result;
}

uint64_t sub_10026B0B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10024FA08(*(v1 + 16));
  *a1 = result & 1;
  return result;
}

uint64_t sub_10026B12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5)
  {
  }

  return result;
}

uint64_t sub_10026B414@<X0>(void (*a1)(void *__return_ptr, uint64_t *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_10009F4CC(a1, a2, *a3, *(a3 + 8), *(a3 + 16), *(a3 + 24), 0x6956686372616553, 0xEF6C65646F4D7765);
  *a4 = result;
  return result;
}

unint64_t sub_10026B50C@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  result = sub_10025040C(a1, a2);
  *a3 = result;
  *(a3 + 2) = BYTE2(result) & 1;
  *(a3 + 3) = result >> 24;
  *(a3 + 5) = BYTE5(result);
  *(a3 + 6) = BYTE6(result) & 1;
  return result;
}

uint64_t sub_10026B744@<X0>(void (*a1)(void *__return_ptr, uint64_t *, uint64_t)@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X8>)
{
  result = sub_10024E4E0(a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  return result;
}

uint64_t sub_10026B78C@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, void *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  result = sub_100250A8C(*a1, *(a1 + 8), *(a1 + 16), a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

void sub_10026B820(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != 2)
  {
    if (a7 != 1)
    {
      if (!a7)
      {
      }

      return;
    }

    a1 = a4;
  }
}

uint64_t sub_10026B9A4()
{

  sub_10001755C();

  return swift_deallocObject();
}

void sub_10026BCC4()
{
  type metadata accessor for TimeZone();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_10000BB3C();
      if (v2 <= 0x3F)
      {
        sub_10026BD98();
        if (v3 <= 0x3F)
        {
          type metadata accessor for MoonPhase.Hemisphere();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10026BD98()
{
  if (!qword_100CA4EA0)
  {
    type metadata accessor for Date();
    type metadata accessor for CalendarMoonPhaseData(255);
    sub_1001CE57C(&qword_100CA39C8, &type metadata accessor for Date);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA4EA0);
    }
  }
}

void sub_10026BE8C()
{
  sub_10000BB3C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10026BF50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  sub_10022C350(&unk_100CB2CF0);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = sub_10022C350(qword_100CA4F80);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  if ((static TimeZone.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v18 = type metadata accessor for CalendarViewModel(0);
  sub_10001136C(v18[5]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_10001136C(v18[6]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_10001136C(v18[7]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v19 = v18[8];
  v20 = *(v14 + 48);
  sub_1000D47CC(a1 + v19, v17);
  sub_1000D47CC(a2 + v19, &v17[v20]);
  sub_100003A40(v17);
  if (v21)
  {
    sub_100003A40(&v17[v20]);
    if (v21)
    {
      sub_1000180EC(v17, &unk_100CB2CF0);
      goto LABEL_15;
    }

LABEL_13:
    sub_1000180EC(v17, qword_100CA4F80);
LABEL_17:
    v27 = 0;
    return v27 & 1;
  }

  sub_1000D47CC(v17, v13);
  sub_100003A40(&v17[v20]);
  if (v21)
  {
    (*(v6 + 8))(v13, v4);
    goto LABEL_13;
  }

  (*(v6 + 32))(v10, &v17[v20], v4);
  sub_10001E620();
  sub_1001CE57C(v22, v23);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v6 + 8);
  v25(v10, v4);
  v25(v13, v4);
  sub_1000180EC(v17, &unk_100CB2CF0);
  if ((v24 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  sub_1002DC374();
  if ((v26 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_10001136C(v18[10]);
  v27 = static MoonPhase.Hemisphere.== infix(_:_:)();
  return v27 & 1;
}

BOOL sub_10026C248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v33 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&unk_100CB2CF0);
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = sub_10022C350(qword_100CA4F80);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  v17 = MoonPhase.rawValue.getter();
  v19 = v18;
  v21 = v17 == MoonPhase.rawValue.getter() && v19 == v20;
  if (v21)
  {

LABEL_8:
    v24 = *(type metadata accessor for CalendarMoonPhaseData(0) + 20);
    v25 = *(v13 + 48);
    sub_1000D47CC(a1 + v24, v16);
    sub_1000D47CC(a2 + v24, &v16[v25]);
    sub_100003A40(v16);
    if (v21)
    {
      sub_100003A40(&v16[v25]);
      if (v21)
      {
        sub_1000180EC(v16, &unk_100CB2CF0);
        return 1;
      }
    }

    else
    {
      sub_1000D47CC(v16, v12);
      sub_100003A40(&v16[v25]);
      if (!v26)
      {
        v27 = v33;
        (*(v33 + 32))(v9, &v16[v25], v4);
        sub_10001E620();
        sub_1001CE57C(v28, v29);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        v31 = *(v27 + 8);
        v31(v9, v4);
        v31(v12, v4);
        sub_1000180EC(v16, &unk_100CB2CF0);
        return (v30 & 1) != 0;
      }

      (*(v33 + 8))(v12, v4);
    }

    sub_1000180EC(v16, qword_100CA4F80);
    return 0;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v22)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_10026C558()
{
  v1 = type metadata accessor for Date();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  sub_10022C350(&unk_100CB2CF0);
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  MoonPhase.rawValue.getter();
  String.hash(into:)();

  v11 = type metadata accessor for CalendarMoonPhaseData(0);
  sub_1000D47CC(v0 + *(v11 + 20), v10);
  if (sub_100024D10(v10, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v7, v10, v1);
    Hasher._combine(_:)(1u);
    sub_10001E620();
    sub_1001CE57C(v12, v13);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v7, v1);
  }
}

Swift::Int sub_10026C724()
{
  Hasher.init(_seed:)();
  sub_10026C558();
  return Hasher._finalize()();
}

Swift::Int sub_10026C774()
{
  Hasher.init(_seed:)();
  sub_10026C558();
  return Hasher._finalize()();
}

uint64_t sub_10026C8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v339 = a6;
  v337 = a3;
  v296 = a7;
  v11 = sub_10022C350(&qword_100CA5008);
  __chkstk_darwin(v11 - 8);
  v278 = &v271 - v12;
  v276 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v276);
  sub_100003848();
  v305 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v294 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v18 = &v271 - v17;
  __chkstk_darwin(v19);
  sub_100003878();
  v291 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v290 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v288 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v301 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v285 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v300 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v282 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v297 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v279 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003878();
  v272 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  v41 = &v271 - v40;
  v333 = *(a5 - 8);
  __chkstk_darwin(v42);
  sub_100003848();
  v295 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_100003878();
  v315 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_100003878();
  v314 = v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  sub_100003878();
  v313 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_100003878();
  v312 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v311 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v310 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v309 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_100003878();
  v308 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_100003878();
  v307 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  sub_100003878();
  v292 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  v306 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_100003878();
  v289 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  v70 = &v271 - v69;
  __chkstk_darwin(v71);
  sub_100003878();
  v287 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v331 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v286 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v330 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v284 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v329 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v283 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v327 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v281 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v326 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v280 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v325 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v277 = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v324 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v275 = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v323 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v274 = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v322 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  sub_100003878();
  v273 = v108;
  sub_10000386C();
  __chkstk_darwin(v109);
  sub_100003878();
  v321 = v110;
  sub_10000386C();
  __chkstk_darwin(v111);
  sub_100003878();
  v334 = v112;
  sub_10000386C();
  __chkstk_darwin(v113);
  v115 = &v271 - v114;
  v336 = type metadata accessor for Optional();
  v302 = *(v336 - 8);
  __chkstk_darwin(v336);
  sub_100003848();
  v304 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v303 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v320 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v319 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  v125 = &v271 - v124;
  __chkstk_darwin(v126);
  v318 = &v271 - v127;
  v338 = a2;
  sub_100566A24(a2, v358);
  v328 = v115;
  v335 = v125;
  v298 = a1;
  v299 = a4;
  v332 = v70;
  v293 = v18;
  if (v359)
  {
    v128 = 1;
    v129 = v41;
  }

  else
  {
    v317 = v358[3];
    v130 = v358[2];
    v131 = v358[1];
    v132 = a1;
    v133 = v358[0];
    v129 = v41;
    sub_1001B3B30(v132 + OBJC_IVAR____TtCV7Weather24ElevatedAqiSevereContent8_Storage_severeAlert, v41);
    v134 = v333;
    v337(v41, v133, v131, v130, v317);
    sub_1001B4354(v41);
    v135 = sub_100007EE8();
    sub_1000495EC(v135, v136);
    v137 = *(v134 + 8);
    v138 = sub_100007EE8();
    v137(v138);
    v139 = sub_100003A60();
    sub_1000833D8(v139, v140, v41);
    v141 = sub_100003A60();
    v137(v141);
    v125 = v335;
    v142 = sub_10002276C();
    v143(v142);
    v128 = 0;
  }

  v144 = 1;
  sub_10001B350(v125, v128, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v145, v146);
  v316 = *(v302 + 8);
  v317 = v302 + 8;
  v316(v125, v336);
  sub_100566A40(v338, v360);
  if ((v361 & 1) == 0)
  {
    v147 = v360[3];
    v148 = v360[2];
    v149 = v360[1];
    v150 = v360[0];
    sub_1001B3B30(v298 + OBJC_IVAR____TtCV7Weather24ElevatedAqiSevereContent8_Storage_airQuality, v129);
    v151 = v333;
    v337(v129, v150, v149, v148, v147);
    sub_1001B4354(v129);
    v152 = v328;
    v153 = sub_100007EE8();
    sub_1000495EC(v153, v154);
    v155 = *(v151 + 8);
    v156 = sub_100007EE8();
    v155(v156);
    sub_1000833D8(v152, a5, v41);
    (v155)(v152, a5);
    v125 = v335;
    v157 = sub_10002276C();
    v158(v157);
    v144 = 0;
  }

  sub_10001B350(v125, v144, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v159, v160);
  v316(v125, v336);
  v161 = OBJC_IVAR____TtCV7Weather24ElevatedAqiSevereContent8_Storage_map;
  v162 = v298;
  swift_beginAccess();
  v163 = v278;
  sub_10026E174(v162 + v161, v278);
  v164 = sub_100024D10(v163, 1, v276) == 1;
  v165 = v297;
  if (v164)
  {
    sub_10026E1E4(v163);
    v166 = 1;
LABEL_11:
    v169 = v335;
    goto LABEL_13;
  }

  v167 = v272;
  sub_10026E24C(v163, v272);
  sub_100566A5C(v338, v362);
  v168 = v328;
  if (v363)
  {
    sub_1001B4354(v167);
    v166 = 1;
    goto LABEL_11;
  }

  v337(v167, v362[0], v362[1], v362[2], v362[3]);
  sub_1001B4354(v167);
  v170 = sub_100007EE8();
  sub_1000495EC(v170, v171);
  v172 = *(v333 + 8);
  v173 = sub_100007EE8();
  v172(v173);
  v174 = sub_100003A60();
  sub_1000833D8(v174, v175, v162);
  v165 = v297;
  (v172)(v168, a5);
  v169 = v335;
  v176 = sub_10002276C();
  v177(v176);
  v166 = 0;
LABEL_13:
  sub_10001B350(v169, v166, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v178, v179);
  v316(v169, v336);
  v180 = v279;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v279);
  sub_100566A78(v338, v364);
  if (v365)
  {
    goto LABEL_31;
  }

  v337(v180, v364[0], v364[1], v364[2], v364[3]);
  sub_1001B4354(v180);
  v181 = sub_100007EE8();
  sub_1000833D8(v181, v182, v339);
  v183 = *(v333 + 8);
  v184 = sub_100007EE8();
  v183(v184);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v165);
  sub_100566A94(v338, v366);
  if (v366[32])
  {
    goto LABEL_31;
  }

  v185 = sub_1000053F4();
  v186(v185);
  sub_1001B4354(v165);
  v187 = sub_100007EE8();
  sub_1000833D8(v187, v188, v339);
  v189 = sub_100007EE8();
  v183(v189);
  v190 = v282;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v282);
  sub_100566AB0(v338, v367);
  if (v367[32])
  {
    goto LABEL_34;
  }

  v191 = sub_1000053F4();
  v192(v191);
  sub_1001B4354(v190);
  v193 = sub_100007EE8();
  sub_1000833D8(v193, v194, v339);
  v195 = sub_100007EE8();
  v183(v195);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v300);
  sub_100566ACC(v338, v368);
  if (v368[32])
  {
    goto LABEL_31;
  }

  v196 = v300;
  v197 = sub_1000280EC();
  v198(v197);
  sub_1001B4354(v196);
  sub_1000140F4();
  sub_1000833D8(v199, v200, v201);
  v202 = sub_100003A60();
  v183(v202);
  v203 = v285;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v285);
  sub_100566AE8(v338, v369);
  if (v369[32])
  {
    goto LABEL_34;
  }

  v204 = sub_1000280EC();
  v205(v204);
  sub_1001B4354(v203);
  sub_1000140F4();
  sub_1000833D8(v206, v207, v208);
  v209 = sub_100003A60();
  v183(v209);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v301);
  sub_100566B04(v338, v370);
  if (v370[32])
  {
    goto LABEL_31;
  }

  v210 = v301;
  v211 = sub_1000280EC();
  v212(v211);
  sub_1001B4354(v210);
  sub_1000140F4();
  sub_1000833D8(v213, v214, v215);
  v216 = sub_100003A60();
  v183(v216);
  v217 = v288;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v288);
  sub_100566B20(v338, v371);
  if (v371[32])
  {
    goto LABEL_31;
  }

  v218 = sub_1000053F4();
  v219(v218);
  sub_1001B4354(v217);
  v220 = sub_100007EE8();
  sub_1000833D8(v220, v221, v339);
  v222 = sub_100007EE8();
  v183(v222);
  v223 = v290;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v290);
  sub_100566B3C(v338, v372);
  if (v372[32])
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v224 = sub_1000053F4();
  v225(v224);
  sub_1001B4354(v223);
  v226 = sub_100007EE8();
  sub_1000833D8(v226, v227, v339);
  v228 = sub_100007EE8();
  v183(v228);
  v229 = v291;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v291);
  sub_100566B58(v338, &v373);
  if ((v374 & 1) == 0)
  {
    v230 = sub_1000053F4();
    v231(v230);
    sub_1001B4354(v229);
    v232 = sub_100007EE8();
    sub_1000833D8(v232, v233, v339);
    v234 = sub_100007EE8();
    v183(v234);
    v235 = v293;
    sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v293);
    sub_100566B74(v338, &v375);
    if ((v376 & 1) == 0)
    {
      v236 = sub_1000053F4();
      v237(v236);
      sub_1001B4354(v235);
      v238 = sub_100007EE8();
      sub_1000833D8(v238, v239, v339);
      v240 = sub_100007EE8();
      v183(v240);
      v241 = v294;
      sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v294);
      sub_100566B90(v338, &v377);
      if ((v378 & 1) == 0)
      {
        v242 = sub_1000280EC();
        v243(v242);
        sub_1001B4354(v241);
        sub_1000140F4();
        sub_1000833D8(v244, v245, v246);
        v247 = sub_100003A60();
        v183(v247);
        sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v305);
        sub_100566BAC(v338, v379);
        if ((v380 & 1) == 0)
        {
          v248 = v292;
          v249 = v305;
          v337(v305, v379[0], v379[1], v379[2], v379[3]);
          sub_1001B4354(v249);
          sub_1000495EC(v248, a5);
          (v183)(v248, a5);
          v250 = *(v302 + 16);
          v251 = v335;
          v252 = v336;
          v250(v335, v318, v336);
          v357[0] = v251;
          v253 = v303;
          v250(v303, v319, v252);
          v357[1] = v253;
          v254 = v304;
          v250(v304, v320, v252);
          v357[2] = v254;
          v255 = *(v333 + 16);
          v256 = v328;
          v255(v328, v321, a5);
          v357[3] = v256;
          v257 = v334;
          v255(v334, v322, a5);
          v357[4] = v257;
          v258 = v307;
          v255(v307, v323, a5);
          v357[5] = v258;
          v259 = v308;
          v255(v308, v324, a5);
          v357[6] = v259;
          v260 = v309;
          v255(v309, v325, a5);
          v357[7] = v260;
          v261 = v310;
          v255(v310, v326, a5);
          v357[8] = v261;
          v262 = v311;
          v255(v311, v327, a5);
          v357[9] = v262;
          v263 = v312;
          v255(v312, v329, a5);
          v357[10] = v263;
          v264 = v313;
          v255(v313, v330, a5);
          v357[11] = v264;
          v265 = v314;
          v255(v314, v331, a5);
          v357[12] = v265;
          v266 = v315;
          v255(v315, v332, a5);
          v357[13] = v266;
          v267 = v295;
          v255(v295, v306, a5);
          v357[14] = v267;
          v356[0] = v252;
          v356[1] = v252;
          v356[2] = v252;
          v356[3] = a5;
          v356[4] = a5;
          v356[5] = a5;
          v356[6] = a5;
          v356[7] = a5;
          v356[8] = a5;
          v356[9] = a5;
          v356[10] = a5;
          v356[11] = a5;
          v356[12] = a5;
          v356[13] = a5;
          v356[14] = a5;
          v340 = v249;
          WitnessTable = swift_getWitnessTable();
          v342 = WitnessTable;
          v343 = WitnessTable;
          v344 = v249;
          v345 = v249;
          v346 = v249;
          v347 = v249;
          v348 = v249;
          v349 = v249;
          v350 = v249;
          v351 = v249;
          v352 = v249;
          v353 = v249;
          v354 = v249;
          v355 = v249;
          sub_10012E24C(v357, 15, v356);
          v268 = sub_100007EE8();
          v183(v268);
          (v183)(v332, a5);
          (v183)(v331, a5);
          (v183)(v330, a5);
          (v183)(v329, a5);
          (v183)(v327, a5);
          (v183)(v326, a5);
          (v183)(v325, a5);
          (v183)(v324, a5);
          (v183)(v323, a5);
          (v183)(v322, a5);
          (v183)(v321, a5);
          v269 = v316;
          v316(v320, v252);
          v269(v319, v252);
          v269(v318, v252);
          (v183)(v267, a5);
          (v183)(v315, a5);
          (v183)(v314, a5);
          (v183)(v313, a5);
          (v183)(v312, a5);
          (v183)(v311, a5);
          (v183)(v310, a5);
          (v183)(v309, a5);
          (v183)(v308, a5);
          (v183)(v307, a5);
          (v183)(v334, a5);
          (v183)(v328, a5);
          v269(v304, v252);
          v269(v303, v252);
          return (v269)(v335, v252);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10026E0C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10026E174(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA5008);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10026E1E4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10026E24C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationComponentContainerViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MapContentStatusBanner()
{
  result = qword_100CA5070;
  if (!qword_100CA5070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10026E324()
{
  sub_10026E47C(319, &qword_100CA5080, type metadata accessor for ContentStatusBanner, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10026E420();
    if (v1 <= 0x3F)
    {
      sub_10026E47C(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10026E420()
{
  result = qword_100CA5088;
  if (!qword_100CA5088)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CA5088);
  }

  return result;
}

void sub_10026E47C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

BOOL sub_10026E4FC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContentStatusBanner();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = (v6 - v5);
  v8 = sub_10022C350(&qword_100CA5010);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  v12 = sub_10022C350(&qword_100CA50C0);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  v17 = *(v16 + 56);
  sub_1000955E0(a1, &v22 - v14, &qword_100CA5010);
  sub_1000955E0(a2, &v15[v17], &qword_100CA5010);
  sub_100005404(v15);
  if (!v19)
  {
    sub_1000955E0(v15, v11, &qword_100CA5010);
    sub_100005404(&v15[v17]);
    if (!v19)
    {
      sub_10026EDA4(&v15[v17], v7);
      v18 = sub_100133BA0(v11, v7);
      sub_10026F088(v7, type metadata accessor for ContentStatusBanner);
      sub_10026F088(v11, type metadata accessor for ContentStatusBanner);
      sub_1000180EC(v15, &qword_100CA5010);
      return v18;
    }

    sub_10000F9D4();
    sub_10026F088(v11, v20);
LABEL_9:
    sub_1000180EC(v15, &qword_100CA50C0);
    return 0;
  }

  sub_100005404(&v15[v17]);
  if (!v19)
  {
    goto LABEL_9;
  }

  sub_1000180EC(v15, &qword_100CA5010);
  return 1;
}

uint64_t sub_10026E72C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v78 = sub_10022C350(&qword_100CA50C8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v69 - v4;
  v6 = type metadata accessor for DisplayMetrics();
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000037D8();
  v75 = v9 - v8;
  v10 = sub_10022C350(&qword_100CA50D0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = (&v69 - v12);
  v72 = sub_10022C350(&qword_100CA50D8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v14);
  v74 = &v69 - v15;
  v16 = sub_10022C350(&qword_100CA50E0);
  sub_1000037E8();
  __chkstk_darwin(v17);
  v73 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v76 = &v69 - v20;
  v21 = sub_10022C350(&qword_100CA5010);
  sub_100003810(v21);
  sub_100003828();
  __chkstk_darwin(v22);
  v24 = &v69 - v23;
  v25 = type metadata accessor for ContentStatusBanner();
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000037D8();
  v29 = v28 - v27;
  sub_1000955E0(v2, v24, &qword_100CA5010);
  if (sub_100024D10(v24, 1, v25) == 1)
  {
    sub_1000180EC(v24, &qword_100CA5010);
    v30 = static Color.clear.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v31 = v79;
    v32 = v80;
    v33 = v81;
    v34 = v82;
    *v5 = v30;
    *(v5 + 1) = v31;
    v5[16] = v32;
    *(v5 + 3) = v33;
    v5[32] = v34;
    *(v5 + 40) = v83;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CA50E8);
    sub_10001BAF4();
    sub_10026EE38(v35, v36, v37, v38);
    sub_10026F004();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v71 = v16;
    sub_10026EDA4(v24, v29);
    v70 = type metadata accessor for MapContentStatusBanner();
    sub_1000161C0((v2 + *(v70 + 20)), *(v2 + *(v70 + 20) + 24));
    sub_10010A228(v29, v13);
    v40 = static Color.primary.getter();
    KeyPath = swift_getKeyPath();
    v42 = (v13 + *(v10 + 36));
    *v42 = KeyPath;
    v42[1] = v40;
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v44 = static Edge.Set.leading.getter();
    *(inited + 32) = v44;
    v45 = static Edge.Set.trailing.getter();
    *(inited + 33) = v45;
    v46 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    v47 = v13;
    if (Edge.Set.init(rawValue:)() != v44)
    {
      v46 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    v48 = Edge.Set.init(rawValue:)();
    v49 = v71;
    if (v48 != v45)
    {
      v46 = Edge.Set.init(rawValue:)();
    }

    v50 = v74;
    sub_10002F758(v47, v74, &qword_100CA50D0);
    v51 = v50 + *(v72 + 36);
    *v51 = v46;
    *(v51 + 8) = 0u;
    *(v51 + 24) = 0u;
    *(v51 + 40) = 1;
    v52 = static Edge.Set.bottom.getter();
    v53 = v75;
    sub_1000FC9C8();
    v54 = [objc_opt_self() currentDevice];
    [v54 userInterfaceIdiom];

    sub_10026F088(v53, type metadata accessor for DisplayMetrics);
    EdgeInsets.init(_all:)();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = v73;
    sub_10002F758(v50, v73, &qword_100CA50D8);
    v64 = v63 + *(v49 + 36);
    *v64 = v52;
    *(v64 + 8) = v56;
    *(v64 + 16) = v58;
    *(v64 + 24) = v60;
    *(v64 + 32) = v62;
    *(v64 + 40) = 0;
    v65 = v76;
    sub_10002F758(v63, v76, &qword_100CA50E0);
    sub_1000955E0(v65, v5, &qword_100CA50E0);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CA50E8);
    sub_10001BAF4();
    sub_10026EE38(v66, &qword_100CA50E0, &unk_100A2F310, v67);
    sub_10026F004();
    _ConditionalContent<>.init(storage:)();
    sub_1000180EC(v65, &qword_100CA50E0);
    sub_10000F9D4();
    return sub_10026F088(v29, v68);
  }
}

uint64_t sub_10026EDA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentStatusBanner();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10026EE38(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10026EEBC()
{
  result = qword_100CA5100;
  if (!qword_100CA5100)
  {
    sub_10022E824(&qword_100CA50D0);
    sub_10026EF48();
    sub_10026EFA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA5100);
  }

  return result;
}

unint64_t sub_10026EF48()
{
  result = qword_100CA5108;
  if (!qword_100CA5108)
  {
    type metadata accessor for ContentStatusBannerView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA5108);
  }

  return result;
}

unint64_t sub_10026EFA0()
{
  result = qword_100CE0FF0;
  if (!qword_100CE0FF0)
  {
    sub_10022E824(&qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE0FF0);
  }

  return result;
}

unint64_t sub_10026F004()
{
  result = qword_100CA5118;
  if (!qword_100CA5118)
  {
    sub_10022E824(&qword_100CA50E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA5118);
  }

  return result;
}

uint64_t sub_10026F088(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_10026F0E0()
{
  result = qword_100CA5120;
  if (!qword_100CA5120)
  {
    sub_10022E824(&qword_100CA5128);
    sub_10026EE38(&qword_100CA50F0, &qword_100CA50E0, &unk_100A2F310, sub_10026EE08);
    sub_10026F004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA5120);
  }

  return result;
}

uint64_t sub_10026F1E0()
{
  sub_10026F4C0(319, &qword_100CA51A8, &type metadata accessor for DetailChartDataElement, &type metadata accessor for Array);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_10000C70C(319, &qword_100CA51B0);
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for TemperatureScaleConfiguration();
      if (v4 <= 0x3F)
      {
        sub_10026F418();
        v1 = v5;
        if (v6 <= 0x3F)
        {
          sub_10026F470();
          if (v8 > 0x3F)
          {
            return v7;
          }

          sub_10026F4C0(319, &qword_100CA51C8, type metadata accessor for TemperatureAveragesHeroChartViewModel.PeakMarkModel, &type metadata accessor for Optional);
          if (v9 > 0x3F)
          {
            return v7;
          }

          sub_10026F4C0(319, &unk_100CA51D0, type metadata accessor for PeakUpperMarkModel, &type metadata accessor for Optional);
          if (v10 > 0x3F)
          {
            return v7;
          }

          v7 = type metadata accessor for DetailHeroChartLollipopModel(319);
          if (v11 > 0x3F)
          {
            return v7;
          }

          v7 = type metadata accessor for Date();
          if (v12 > 0x3F)
          {
            return v7;
          }

          v7 = type metadata accessor for DetailChartGradientModel();
          if (v13 > 0x3F)
          {
            return v7;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_10026F418()
{
  if (!qword_100CA51B8)
  {
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA51B8);
    }
  }
}

void sub_10026F470()
{
  if (!qword_100CA51C0)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA51C0);
    }
  }
}

void sub_10026F4C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10026F56C(uint64_t a1, void *a2)
{
  v4 = sub_1000038D8();
  v73 = type metadata accessor for PeakUpperMarkModel(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v69 = v6;
  sub_10022C350(&qword_100CA5138);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v70 = v8;
  v72 = sub_10022C350(&qword_100CA52D0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v74 = v10;
  v77 = type metadata accessor for TemperatureAveragesHeroChartViewModel.PeakMarkModel(0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000038E4();
  v71 = v12;
  sub_10022C350(&qword_100CA5130);
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000039BC();
  v75 = v14;
  v76 = sub_10022C350(&qword_100CA52D8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  v78 = v16;
  v79 = v2;
  v17 = *v2;
  v18 = v2[1];
  v19 = v2[2];
  v20 = v2[3];
  v22 = v2[4];
  v21 = v2[5];
  v81 = v2[7];
  v82 = v2[6];
  v23 = a2[2];
  v24 = a2[3];
  v25 = a2[4];
  v26 = a2[5];
  v27 = v17 == *a2 && v18 == a2[1];
  v80 = a2;
  v28 = a2[6];
  v29 = a2[7];
  if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v30 = v19 == v23 && v20 == v24;
  if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v31 = v22 == v25 && v21 == v26;
  if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v32 = v82 == v28 && v81 == v29;
  if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1009E9B70();
  if ((v33 & 1) == 0)
  {
    return 0;
  }

  sub_1009E9B70();
  if ((v34 & 1) == 0)
  {
    return 0;
  }

  v35 = v79[11];
  v36 = v79[12];
  v37 = *(v79 + 104);
  v38 = v80[11];
  v39 = v80[12];
  v40 = *(v80 + 104);
  sub_1009E9C0C();
  if ((v41 & 1) == 0)
  {
    return 0;
  }

  if (v35 == v38 && v36 == v39)
  {
    if (v37 != v40)
    {
      return 0;
    }
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if (v43 & 1) == 0 || ((v37 ^ v40))
    {
      return result;
    }
  }

  sub_10000C70C(0, &qword_100CA52E0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v45 = type metadata accessor for TemperatureAveragesHeroChartViewModel(0);
  if ((static TemperatureScaleConfiguration.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v46 = v45[10];
  v47 = *(v79 + v46);
  v48 = *(v79 + v46 + 8);
  v49 = (v80 + v46);
  if (v47 != *v49 || v48 != v49[1])
  {
    return 0;
  }

  if ((sub_1009E9BB8(*(v79 + v45[11]), *(v80 + v45[11])) & 1) == 0)
  {
    return 0;
  }

  v51 = v45[12];
  if (!sub_100696458(*(v79 + v51), *(v79 + v51 + 8), *(v79 + v51 + 16), *(v79 + v51 + 24), *(v80 + v51), *(v80 + v51 + 8), *(v80 + v51 + 16), *(v80 + v51 + 24)))
  {
    return 0;
  }

  v52 = *(v76 + 48);
  v53 = v78;
  sub_100035AD0(v79 + v45[13], v78, &qword_100CA5130);
  sub_10007463C();
  if (sub_100024D10(v78, 1, v77) == 1)
  {
    sub_100005424();
    if (!v27)
    {
      goto LABEL_48;
    }

    sub_1000180EC(v78, &qword_100CA5130);
    goto LABEL_51;
  }

  sub_100035AD0(v78, v75, &qword_100CA5130);
  sub_100005424();
  if (v27)
  {
    sub_10026FCBC(v75, type metadata accessor for TemperatureAveragesHeroChartViewModel.PeakMarkModel);
LABEL_48:
    v54 = &qword_100CA52D8;
LABEL_60:
    sub_1000180EC(v53, v54);
    return 0;
  }

  sub_10026FD14(v78 + v52, v71);
  v55 = static Date.== infix(_:_:)();
  if ((v55 & 1) == 0)
  {
    sub_10001BB0C();
    sub_10026FCBC(v71, v61);
    sub_10026FCBC(v75, v77);
    v54 = &qword_100CA5130;
    goto LABEL_60;
  }

  v56 = *(v77 + 20);
  v57 = *(v75 + v56);
  v58 = *(v71 + v56);
  sub_10001BB0C();
  sub_10026FCBC(v71, v59);
  sub_10026FCBC(v75, v77);
  sub_1000180EC(v78, &qword_100CA5130);
  if (v57 != v58)
  {
    return 0;
  }

LABEL_51:
  v60 = *(v72 + 48);
  v53 = v74;
  sub_100035AD0(v79 + v45[14], v74, &qword_100CA5138);
  sub_10007463C();
  if (sub_100024D10(v74, 1, v73) == 1)
  {
    sub_100005424();
    if (!v27)
    {
      goto LABEL_58;
    }

    sub_1000180EC(v74, &qword_100CA5138);
  }

  else
  {
    sub_100035AD0(v74, v70, &qword_100CA5138);
    sub_100005424();
    if (v27)
    {
      sub_10026FCBC(v70, type metadata accessor for PeakUpperMarkModel);
LABEL_58:
      v54 = &qword_100CA52D0;
      goto LABEL_60;
    }

    sub_10026FD14(v74 + v60, v69);
    v62 = sub_10082A328(v70, v69);
    sub_10026FCBC(v69, type metadata accessor for PeakUpperMarkModel);
    sub_10026FCBC(v70, type metadata accessor for PeakUpperMarkModel);
    sub_1000180EC(v74, &qword_100CA5138);
    if ((v62 & 1) == 0)
    {
      return 0;
    }
  }

  sub_100007EF4(v45[15]);
  if ((sub_10048F310() & 1) == 0)
  {
    return 0;
  }

  sub_100007EF4(v45[16]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_100007EF4(v45[17]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_100007EF4(v45[18]);
  if ((static DetailChartGradientModel.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_100014100(v45[19]);
  if (!v27 || v63 != v64)
  {
    return 0;
  }

  sub_100014100(v45[20]);
  v68 = v27;
  if (v66 == v67)
  {
    return v68;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10026FC64(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TemperatureAveragesHeroChartViewModel.PeakMarkModel(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_10026FCBC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10026FD14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_10026FD70(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10026FD88(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_10026FDB8(uint64_t a1@<X8>)
{
  type metadata accessor for UVIndex();
  sub_1000037C4();
  v47 = v3;
  v48 = v2;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v6 = v5 - v4;
  type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v50 = v8;
  v51 = v7;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = type metadata accessor for Calendar();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  static Calendar.currentCalendar(with:)();
  v19 = Calendar.isDateInToday(_:)();
  v20 = *(v14 + 8);
  v20(v18, v12);
  if (v19)
  {
    v21 = [objc_opt_self() mainBundle];
    sub_100005448(0x4025202C776F4ELL, 0xE700000000000000);

    sub_10022C350(&qword_100CA40C8);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100A2C3F0;
    v23 = Date.formattedTime(timeZone:)();
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100035744();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    v46 = static String.localizedStringWithFormat(_:_:)();
    v27 = v26;

    v28 = v27;

    v29 = sub_1000161C0(v49, v49[3]);
    CurrentWeather.uvIndex.getter();
    v30 = v29;
    v31 = v46;
    dispatch thunk of UVISummaryStringBuilderType.makeTodayDescription(from:timeZone:currentUVIndex:hourlyForecast:)();
    (*(v47 + 8))(v6, v48);
    type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_1000191C4();
    v33 = sub_10001BB24(v32);
    sub_10001B350(v33, v34, v35, v51);
    (*(v50 + 32))(a1 + *(v30 + 7), v11, v51);
  }

  else
  {
    static Calendar.currentCalendar(with:)();
    v36 = Calendar.isDateInYesterday(_:)();
    v20(v18, v12);
    v31 = Date.formattedMonthDayYear(timeZone:)();
    v28 = v37;
    v30 = sub_1000161C0(v49, v49[3]);
    if (v36)
    {
      dispatch thunk of UVISummaryStringBuilderType.makeYesterdayDescription(from:timeZone:extrema:)();
    }

    else
    {
      dispatch thunk of UVISummaryStringBuilderType.makeFutureDayDescription(from:timeZone:hourlyForecast:)();
    }

    type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_1000191C4();
    v39 = sub_10001BB24(v38);
    sub_10001B350(v39, v40, v41, v51);
    (*(v50 + 32))(a1 + *(v30 + 7), v11, v51);
  }

  v42 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  swift_storeEnumTagMultiPayload();
  v43 = sub_10001BB24(*(v30 + 8));
  sub_10001B350(v43, v44, v45, v42);
  sub_100014120();
  *(a1 + 24) = v31;
  *(a1 + 32) = v28;
  sub_100003A6C();
}

uint64_t sub_100270214@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v50 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for Calendar();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  static Calendar.currentCalendar(with:)();
  v17 = Calendar.isDateInToday(_:)();
  v18 = *(v12 + 8);
  v18(v16, v10);
  v49 = v4;
  if (v17)
  {
    v19 = [objc_opt_self() mainBundle];
    sub_100005448(0x25202C7961646F54, 0xE900000000000040);

    sub_10022C350(&qword_100CA40C8);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100A2C3F0;
    v21 = Date.formattedTime(timeZone:)();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100035744();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    v47 = static String.localizedStringWithFormat(_:_:)();
    v25 = v24;

    sub_1000161C0(v51, v51[3]);
    sub_100007F04();
    type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_1000191C4();
    v27 = sub_10001BB24(v26);
    sub_10001B350(v27, v28, v29, v49);
    (*(v50 + 32))(a2 + *(v21 + 28), v9, v49);
    type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    sub_10002277C();
    v30 = sub_10001BB24(*(v21 + 32));
    sub_10001B350(v30, v31, v32, v49);
    sub_100014120();
    *(a2 + 24) = v47;
    *(a2 + 32) = v25;
    sub_100003A6C();
LABEL_6:
    v35 = a2;
    v36 = 0;
    v34 = v21;
    return sub_10001B350(v35, v36, 1, v34);
  }

  static Calendar.currentCalendar(with:)();
  v33 = Calendar.isDateInYesterday(_:)();
  v18(v16, v10);
  if ((v33 & 1) == 0)
  {
    v21 = a1;
    v37 = Date.formattedMonthDayTime(timeZone:)();
    v48 = v38;
    sub_1000161C0(v51, v51[3]);
    sub_100007F04();
    type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_1000191C4();
    v40 = sub_10001BB24(v39);
    sub_10001B350(v40, v41, v42, v49);
    (*(v50 + 32))(a2 + a1[7], v9, v49);
    type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    sub_10002277C();
    v43 = sub_10001BB24(a1[8]);
    sub_10001B350(v43, v44, v45, v49);
    sub_100014120();
    *(a2 + 24) = v37;
    *(a2 + 32) = v48;
    *(a2 + a1[9]) = 1;
    *(a2 + a1[10]) = 1;
    goto LABEL_6;
  }

  v34 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v35 = a2;
  v36 = 1;
  return sub_10001B350(v35, v36, 1, v34);
}

uint64_t sub_1002705E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100270624(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for CalendarDayMoonPhase()
{
  result = qword_100CA5340;
  if (!qword_100CA5340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002706F0()
{
  result = type metadata accessor for MoonPhase.Hemisphere();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100270790@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v38 = sub_10022C350(&unk_100CE1680);
  sub_1000037E8();
  __chkstk_darwin(v3);
  v5 = &v34 - v4;
  v6 = sub_10022C350(&qword_100CA5380);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - v8;
  v45 = sub_10022C350(&qword_100CA5388);
  sub_1000037E8();
  __chkstk_darwin(v10);
  v43 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v44 = &v34 - v13;
  v14 = *v1;
  type metadata accessor for CalendarDayMoonPhase();
  v42 = v14;
  MoonPhase.symbolName(for:)();
  v15 = Image.init(systemName:)();
  v16 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  v18 = static Color.secondary.getter();
  v19 = swift_getKeyPath();
  v40 = v16;
  v41 = v15;
  v48 = v15;
  v49 = KeyPath;
  v39 = KeyPath;
  v50 = v16;
  v51 = v19;
  v37 = v18;
  v52 = v18;
  v20 = enum case for DynamicTypeSize.large(_:);
  v21 = type metadata accessor for DynamicTypeSize();
  sub_1000037E8();
  (*(v22 + 104))(v5, v20, v21);
  sub_100270F84(&qword_100CA5390, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v24 = sub_10022C350(&qword_100CA5398);
    v25 = sub_100270BC8();
    v35 = v2;
    v26 = v25;
    v27 = sub_100006F64(&qword_100CA53C8, &unk_100CE1680);
    v28 = v38;
    View.dynamicTypeSize<A>(_:)();
    sub_100270D38(v5);

    v46 = MoonPhase.accessibilityDescription.getter();
    v47 = v29;
    v48 = v24;
    v49 = v28;
    v50 = v26;
    v51 = v27;
    swift_getOpaqueTypeConformance2();
    sub_10002D5A4();
    v30 = v43;
    View.accessibilityValue<A>(_:)();

    (*(v7 + 8))(v9, v6);
    LODWORD(v24) = v35[1];
    v31 = v44;
    ModifiedContent<>.accessibilityHidden(_:)();
    sub_1001D5904(v30);
    if (v24)
    {
      v32 = 1.0;
    }

    else
    {
      v32 = 0.0;
    }

    v33 = v36;
    sub_1001D5964(v31, v36);
    result = sub_10022C350(&qword_100CA53D0);
    *(v33 + *(result + 36)) = v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100270BC8()
{
  result = qword_100CA53A0;
  if (!qword_100CA53A0)
  {
    sub_10022E824(&qword_100CA5398);
    sub_100270C80();
    sub_100006F64(&qword_100CE0FF0, &qword_100CA5110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA53A0);
  }

  return result;
}

unint64_t sub_100270C80()
{
  result = qword_100CA53A8;
  if (!qword_100CA53A8)
  {
    sub_10022E824(&qword_100CA53B0);
    sub_100006F64(&qword_100CA53B8, &qword_100CA53C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA53A8);
  }

  return result;
}

uint64_t sub_100270D38(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CE1680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100270DA0()
{
  result = qword_100CA53D8;
  if (!qword_100CA53D8)
  {
    sub_10022E824(&qword_100CA53D0);
    sub_100270E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA53D8);
  }

  return result;
}

unint64_t sub_100270E2C()
{
  result = qword_100CA53E0;
  if (!qword_100CA53E0)
  {
    sub_10022E824(&qword_100CA5388);
    sub_10022E824(&qword_100CA5398);
    sub_10022E824(&unk_100CE1680);
    sub_100270BC8();
    sub_100006F64(&qword_100CA53C8, &unk_100CE1680);
    swift_getOpaqueTypeConformance2();
    sub_100270F84(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA53E0);
  }

  return result;
}

uint64_t sub_100270F84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100270FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  countAndFlagsBits = a1;
  v126 = a2;
  v2 = type metadata accessor for AttributedString();
  __chkstk_darwin(v2 - 8);
  sub_1000038E4();
  v111 = v3;
  sub_1000038CC();
  v113 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v112 = v4;
  __chkstk_darwin(v5);
  sub_1000038E4();
  v110 = v6;
  sub_1000038CC();
  v7 = type metadata accessor for TemperatureScaleConfiguration.Gradient();
  __chkstk_darwin(v7 - 8);
  sub_1000038E4();
  v115 = v8;
  v9 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v9 - 8);
  v125 = &v108 - v10;
  sub_1000038CC();
  v131 = type metadata accessor for Date();
  sub_1000037C4();
  v124 = v11;
  __chkstk_darwin(v12);
  sub_100003848();
  v123 = v13;
  __chkstk_darwin(v14);
  v129 = &v108 - v15;
  sub_1000038CC();
  v130 = type metadata accessor for DateComponents();
  sub_1000037C4();
  v134 = v16;
  __chkstk_darwin(v17);
  sub_100003848();
  v122 = v18;
  __chkstk_darwin(v19);
  v21 = &v108 - v20;
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v127 = v23;
  v128 = v22;
  __chkstk_darwin(v22);
  sub_1000038E4();
  v133 = v24;
  Calendar.timeZone.getter();
  v120 = sub_10022C350(&qword_100CA53E8);
  v25 = type metadata accessor for Calendar.Component();
  sub_1000037C4();
  v27 = v26;
  v29 = *(v28 + 72);
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v119 = v30 + 2 * v29;
  v31 = v29;
  object = v29;
  v32 = swift_allocObject();
  v118 = xmmword_100A2D320;
  *(v32 + 16) = xmmword_100A2D320;
  LODWORD(v117) = enum case for Calendar.Component.year(_:);
  v33 = *(v27 + 104);
  v33(v32 + v30);
  v34 = enum case for Calendar.Component.month(_:);
  (v33)(&v31[v32 + v30], enum case for Calendar.Component.month(_:), v25);
  sub_10004BCB0(v32);
  v114 = type metadata accessor for MonthlyAveragesChartInput();
  v132 = v21;
  v35 = countAndFlagsBits;
  Calendar.dateComponents(_:from:)();

  v36 = swift_allocObject();
  *(v36 + 16) = v118;
  v37 = v36 + v30;
  v38 = v130;
  (v33)(v37, v117, v25);
  v39 = &object[v37];
  v40 = v131;
  (v33)(v39, v34, v25);
  v41 = v124;
  v42 = v134;
  sub_10004BCB0(v36);
  v43 = v123;
  Date.startOfDay.getter();
  v44 = v122;
  Calendar.dateComponents(_:from:)();

  v45 = v41[1];
  v45(v43, v40);
  v46 = v125;
  Calendar.date(from:)();
  v47 = v46;
  v50 = *(v42 + 8);
  v48 = v42 + 8;
  v49 = v50;
  v50(v44, v38);
  if (sub_100024D10(v47, 1, v40) == 1)
  {
    v49(v132, v38);
    v51 = sub_10000F9EC();
    v52(v51);
    sub_10003FDF4(v47, &unk_100CB2CF0);
    type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_100003934();
    return sub_10001B350(v53, v54, v55, v56);
  }

  else
  {
    v122 = v49;
    v123 = v45;
    v58 = v129;
    (v41[4])(v129, v47, v40);
    sub_100119F7C();
    v59 = static NSDateFormatter.shortMonthNameFormatter(with:)();
    v60 = static NSDateFormatter.longMonthNameFormatter(with:)();
    v61 = static NSDateFormatter.longMonthNameFormatter(with:)();
    __chkstk_darwin(v61);
    *(&v108 - 6) = v35;
    *(&v108 - 5) = v58;
    v124 = v60;
    v125 = v59;
    *(&v108 - 4) = v59;
    *(&v108 - 3) = v60;
    v120 = v62;
    v141._object = v62;
    sub_100744690(sub_100272E84, (&v108 - 8), 1, 12, v63, v64, v65, v66, v108, v109, v110, v111, v112, v113, v114, v115, object, v117, v118, *(&v118 + 1));
    v68 = v67;
    v69 = v115;
    TemperatureScaleConfiguration.gradient.getter();
    v70 = sub_100100224(v69);
    sub_10064C8F0(1, v68, v70, v136);
    if (v137)
    {
      v72 = v139;
      v71 = v140;
      v119 = v138;
      LODWORD(v118) = v136[0];
      v73 = v110;
      v117 = v137;
      sub_1002725A4(v132, v109, v110);
      v134 = v48;
      v74 = [objc_opt_self() mainBundle];
      v141._object = 0x8000000100ABCA10;
      v75._object = 0x8000000100ABC9F0;
      v141._countAndFlagsBits = 0xD00000000000006ELL;
      v75._countAndFlagsBits = 0xD000000000000010;
      v76._countAndFlagsBits = 0;
      v76._object = 0xE000000000000000;
      v77 = NSLocalizedString(_:tableName:bundle:value:comment:)(v75, 0, v74, v76, v141);
      countAndFlagsBits = v77._countAndFlagsBits;
      object = v77._object;

      v78 = type metadata accessor for ConditionDetailPlatterViewModel(0);
      v79 = v126;
      sub_100003934();
      v80 = v113;
      sub_10001B350(v81, v82, v83, v113);
      v84 = v79 + v78[7];
      static Font.body.getter();
      WeatherDescription.formatted(font:color:)();

      v85 = Text.init(_:)();
      v87 = v86;
      v89 = v88;
      v91 = v90;

      (*(v112 + 8))(v73, v80);
      v122(v132, v130);
      v92 = sub_10000F9EC();
      v93(v92);
      v135 = 0;
      *v84 = v85;
      *(v84 + 8) = v87;
      *(v84 + 16) = v89 & 1;
      *(v84 + 24) = v91;
      *(v84 + 32) = v118;
      v94 = v119;
      *(v84 + 40) = v117;
      *(v84 + 48) = v94;
      *(v84 + 56) = v72;
      *(v84 + 64) = v71;
      *(v84 + 89) = 0;
      v95 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
      swift_storeEnumTagMultiPayload();
      sub_100003934();
      sub_10001B350(v96, v97, v98, v95);
      *v79 = xmmword_100A2F600;
      *(v79 + 16) = 2;
      v99 = object;
      *(v79 + 24) = countAndFlagsBits;
      *(v79 + 32) = v99;
      *(v79 + v78[9]) = 0;
      *(v79 + v78[10]) = 0;
      sub_10001B350(v79, 0, 1, v78);
      v100 = v129;
      v101 = v131;
    }

    else
    {

      v122(v132, v38);
      v102 = sub_10000F9EC();
      v103(v102);
      type metadata accessor for ConditionDetailPlatterViewModel(0);
      sub_100003934();
      sub_10001B350(v104, v105, v106, v107);
      v100 = v129;
      v101 = v40;
    }

    return v123(v100, v101);
  }
}

uint64_t sub_100271980@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X4>, void *a5@<X5>, void *a6@<X8>)
{
  v82 = a4;
  v83 = a5;
  v81 = a3;
  v100 = a2;
  v102 = a6;
  v99 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  __chkstk_darwin(v99);
  v98 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(qword_100CA5418);
  __chkstk_darwin(v8 - 8);
  v89 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v90 = &v76 - v11;
  __chkstk_darwin(v12);
  v86 = &v76 - v13;
  v91 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
  __chkstk_darwin(v91);
  v92 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CA53F8);
  v87 = *(v15 - 8);
  v88 = v15;
  __chkstk_darwin(v15);
  v84 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v85 = &v76 - v18;
  __chkstk_darwin(v19);
  v96 = &v76 - v20;
  __chkstk_darwin(v21);
  v97 = &v76 - v22;
  v23 = sub_10022C350(&qword_100CA5400);
  __chkstk_darwin(v23 - 8);
  v93 = &v76 - v24;
  v101 = type metadata accessor for MonthTemperatureStatistics();
  v95 = *(v101 - 8);
  __chkstk_darwin(v101);
  v94 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Calendar.Component();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v30 - 8);
  v32 = &v76 - v31;
  v33 = type metadata accessor for Date();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = &v76 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 104))(v29, enum case for Calendar.Component.month(_:), v26, v35);
  Calendar.date(bySetting:value:of:)();
  (*(v27 + 8))(v29, v26);
  if (sub_100024D10(v32, 1, v33) == 1)
  {
    sub_10003FDF4(v32, &unk_100CB2CF0);
  }

  else
  {
    (*(v34 + 32))(v37, v32, v33);
    v38 = type metadata accessor for MonthlyAveragesChartInput();
    __chkstk_darwin(v38);
    *(&v76 - 2) = a1;
    *(&v76 - 1) = v37;
    v39 = v93;
    v40 = v103;
    sub_1008DB828();
    if (sub_100024D10(v39, 1, v101) != 1)
    {
      v103 = v40;
      v100 = v33;
      v80 = v34;
      (*(v95 + 32))(v94, v39, v101);
      v47 = v97;
      MonthTemperatureStatistics.averageLowTemperature.getter();
      v48 = v96;
      MonthTemperatureStatistics.averageHighTemperature.getter();
      isa = Date._bridgeToObjectiveC()().super.isa;
      v50 = [v81 stringFromDate:isa];

      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v51;

      v52 = Date._bridgeToObjectiveC()().super.isa;
      v53 = [v82 stringFromDate:v52];

      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v54;

      v93 = v37;
      v55 = Date._bridgeToObjectiveC()().super.isa;
      v56 = [v83 stringFromDate:v55];

      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v57;

      v59 = v87;
      v58 = v88;
      v60 = *(v87 + 16);
      v61 = v85;
      v60(v85, v47, v88);
      v62 = v84;
      v60(v84, v48, v58);
      v63 = v86;
      sub_10001B350(v86, 1, 1, v58);
      Measurement<>.converted(rounded:)();
      Measurement<>.converted(rounded:)();
      v64 = v89;
      sub_100272EE8(v63, v89);
      if (sub_100024D10(v64, 1, v58) == 1)
      {
        sub_10003FDF4(v63, qword_100CA5418);
        v65 = *(v59 + 8);
        v65(v62, v58);
        v65(v61, v58);
        v65(v96, v58);
        v65(v97, v58);
        (*(v95 + 8))(v94, v101);
        sub_10003FDF4(v64, qword_100CA5418);
        v66 = 1;
        v67 = v90;
      }

      else
      {
        v67 = v90;
        Measurement<>.converted(rounded:)();
        sub_10003FDF4(v63, qword_100CA5418);
        v68 = *(v59 + 8);
        v68(v62, v58);
        v68(v61, v58);
        v68(v96, v58);
        v68(v97, v58);
        (*(v95 + 8))(v94, v101);
        v68(v64, v58);
        v66 = 0;
      }

      sub_10001B350(v67, v66, 1, v58);
      v69 = v98;
      sub_100272F58(v67, &v98[*(v99 + 24)]);
      v70 = v92;
      sub_100272FC8(v69, v92, type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature);
      swift_storeEnumTagMultiPayload();
      v71 = v102;
      v72 = v79;
      *v102 = v81;
      v71[1] = v72;
      v73 = v78;
      v71[2] = v82;
      v71[3] = v73;
      v74 = v77;
      v71[4] = v83;
      v71[5] = v74;
      v75 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
      sub_100272FC8(v70, v71 + *(v75 + 20), type metadata accessor for ComparisonCapsuleViewModel.Row.Body);
      *(v71 + *(v75 + 24)) = 1;
      sub_10001B350(v71, 0, 1, v75);
      return (*(v80 + 8))(v93, v100);
    }

    sub_10003FDF4(v39, &qword_100CA5400);
    (*(v34 + 8))(v37, v33);
  }

  if (qword_100CA2720 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_10000703C(v41, qword_100D90BB8);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Failed to find this month's temperature averages for the Averages L2 Chart summary.", v44, 2u);
  }

  v45 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  return sub_10001B350(v102, 1, 1, v45);
}

BOOL sub_10027247C()
{
  v0 = type metadata accessor for Calendar.Component();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MonthTemperatureStatistics.month.getter();
  (*(v1 + 104))(v3, enum case for Calendar.Component.month(_:), v0);
  v5 = Calendar.component(_:from:)();
  (*(v1 + 8))(v3, v0);
  return v4 == v5;
}

uint64_t sub_1002725A4@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v77 = a2;
  v80 = a3;
  v79 = type metadata accessor for WeatherFormatPlaceholder();
  v71 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v55[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v74 = *(v5 - 8);
  v75 = v5;
  __chkstk_darwin(v5);
  v73 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Calendar.Identifier();
  v69 = *(v7 - 8);
  v70 = v7;
  __chkstk_darwin(v7);
  v9 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v55[-v11];
  v81 = sub_10022C350(&qword_100CA53F8);
  v72 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v55[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v55[-v15];
  v17 = sub_10022C350(&qword_100CA5400);
  __chkstk_darwin(v17 - 8);
  v19 = &v55[-v18];
  v20 = type metadata accessor for MonthTemperatureStatistics();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v55[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for MonthlyAveragesChartInput();
  v82 = a1;
  sub_1008DB828();
  if (sub_100024D10(v19, 1, v20) == 1)
  {
    sub_10003FDF4(v19, &qword_100CA5400);
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000703C(v24, qword_100D90B68);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to find this month's temperature averages for the Averages L2 Chart summary.", v27, 2u);
    }

    return static WeatherDescription.string(_:)();
  }

  else
  {
    v67 = v21;
    v68 = v20;
    (*(v21 + 32))(v23, v19, v20);
    sub_1000161C0(v77, v77[3]);
    MonthTemperatureStatistics.averageLowTemperature.getter();
    MonthTemperatureStatistics.averageHighTemperature.getter();
    v29 = MonthTemperatureStatistics.month.getter();
    Calendar.identifier.getter();
    v31 = v69;
    v30 = v70;
    (*(v69 + 104))(v9, enum case for Calendar.Identifier.gregorian(_:), v70);
    v32 = static Calendar.Identifier.== infix(_:_:)();
    v33 = *(v31 + 8);
    v33(v9, v30);
    v33(v12, v30);
    v66 = v23;
    if (v32)
    {
      v34 = sub_100502D28(v29);
    }

    else
    {
      v34 = sub_100502AB8(v29);
    }

    v69 = v34;
    v65 = v35;
    sub_10022C350(&qword_100CA5408);
    v70 = type metadata accessor for WeatherDescription.Argument();
    v77 = *(v70 - 8);
    v62 = v77[9];
    v36 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v37 = swift_allocObject();
    v64 = v37;
    *(v37 + 16) = xmmword_100A2D320;
    v38 = (v37 + v36);
    v39 = v73;
    static WeatherFormatStyle<>.weather.getter();
    v61 = enum case for WeatherFormatPlaceholder.none(_:);
    v40 = v71;
    v60 = *(v71 + 104);
    v41 = v76;
    v42 = v79;
    v60(v76);
    v59 = type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    v58 = sub_100114168();
    v43 = v75;
    v63 = v16;
    v44 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v46 = v45;

    v71 = *(v40 + 8);
    (v71)(v41, v42);
    v74 = *(v74 + 8);
    (v74)(v39, v43);
    *v38 = v44;
    v38[1] = v46;
    v56 = enum case for WeatherDescription.Argument.measurement(_:);
    v47 = v77[13];
    v77 += 13;
    v57 = v47;
    v47(v38);
    v48 = (v38 + v62);
    static WeatherFormatStyle<>.weather.getter();
    (v60)(v41, v61, v42);
    static UnitManager.standard.getter();
    v49 = v78;
    v50 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v52 = v51;

    (v71)(v41, v79);
    (v74)(v39, v43);
    *v48 = v50;
    v48[1] = v52;
    v57(v48, v56, v70);
    WeatherDescription.init(format:_:)();
    v53 = *(v72 + 8);
    v54 = v81;
    v53(v49, v81);
    v53(v63, v54);
    return (*(v67 + 8))(v66, v68);
  }
}

uint64_t sub_100272E34()
{
  v0 = MonthTemperatureStatistics.month.getter();
  v1 = v0 == DateComponents.month.getter();
  return v1 & ~v2;
}

uint64_t sub_100272EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(qword_100CA5418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100272F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(qword_100CA5418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100272FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100273040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, void (*)(void, void))@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v363 = a6;
  v358 = a4;
  v362 = a3;
  v357 = a2;
  v339 = a1;
  v320 = a7;
  v8 = sub_10022C350(&qword_100CA5008);
  __chkstk_darwin(v8 - 8);
  v299 = v296 - v9;
  v297 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v297);
  sub_100003848();
  v318 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  v13 = v296 - v12;
  __chkstk_darwin(v14);
  v16 = v296 - v15;
  __chkstk_darwin(v17);
  sub_100003878();
  v315 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_100003878();
  v314 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v312 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v310 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v308 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v306 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v304 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v302 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v300 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v296[0] = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  v39 = v296 - v38;
  v40 = *(a5 - 8);
  __chkstk_darwin(v41);
  sub_100003848();
  v319 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  v337 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v336 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_100003878();
  v335 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_100003878();
  v334 = v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  sub_100003878();
  v333 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_100003878();
  v332 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v331 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v330 = v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  sub_100003878();
  v329 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  sub_100003878();
  v316 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v328 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v313 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  v69 = v296 - v68;
  __chkstk_darwin(v70);
  sub_100003878();
  v311 = v71;
  sub_10000386C();
  __chkstk_darwin(v72);
  sub_100003878();
  v353 = v73;
  sub_10000386C();
  __chkstk_darwin(v74);
  sub_100003878();
  v309 = v75;
  sub_10000386C();
  __chkstk_darwin(v76);
  sub_100003878();
  v352 = v77;
  sub_10000386C();
  __chkstk_darwin(v78);
  sub_100003878();
  v307 = v79;
  sub_10000386C();
  __chkstk_darwin(v80);
  sub_100003878();
  v351 = v81;
  sub_10000386C();
  __chkstk_darwin(v82);
  sub_100003878();
  v305 = v83;
  sub_10000386C();
  __chkstk_darwin(v84);
  sub_100003878();
  v350 = v85;
  sub_10000386C();
  __chkstk_darwin(v86);
  sub_100003878();
  v303 = v87;
  sub_10000386C();
  __chkstk_darwin(v88);
  sub_100003878();
  v349 = v89;
  sub_10000386C();
  __chkstk_darwin(v90);
  sub_100003878();
  v301 = v91;
  sub_10000386C();
  __chkstk_darwin(v92);
  sub_100003878();
  v348 = v93;
  sub_10000386C();
  __chkstk_darwin(v94);
  sub_100003878();
  v298 = v95;
  sub_10000386C();
  __chkstk_darwin(v96);
  sub_100003878();
  v347 = v97;
  sub_10000386C();
  __chkstk_darwin(v98);
  sub_100003878();
  v296[3] = v99;
  sub_10000386C();
  __chkstk_darwin(v100);
  sub_100003878();
  v346 = v101;
  sub_10000386C();
  __chkstk_darwin(v102);
  sub_100003878();
  v296[2] = v103;
  sub_10000386C();
  __chkstk_darwin(v104);
  sub_100003878();
  v345 = v105;
  sub_10000386C();
  __chkstk_darwin(v106);
  sub_100003878();
  v296[1] = v107;
  sub_10000386C();
  __chkstk_darwin(v108);
  sub_100003878();
  v344 = v109;
  sub_10000386C();
  __chkstk_darwin(v110);
  v112 = v296 - v111;
  __chkstk_darwin(v113);
  v115 = v296 - v114;
  v361 = type metadata accessor for Optional();
  v322 = *(v361 - 8);
  __chkstk_darwin(v361);
  sub_100003848();
  v326 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v325 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v324 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v343 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  sub_100003878();
  v342 = v124;
  sub_10000386C();
  __chkstk_darwin(v125);
  sub_100003878();
  v341 = v126;
  sub_10000386C();
  __chkstk_darwin(v127);
  v129 = v296 - v128;
  __chkstk_darwin(v130);
  v340 = v296 - v131;
  sub_100566A24(v357, v383);
  v327 = v40;
  v356 = v112;
  v360 = v115;
  v323 = v13;
  v321 = v39;
  v354 = v69;
  v317 = v16;
  if (v384)
  {
    v132 = 1;
  }

  else
  {
    v359 = v383[3];
    v133 = v383[2];
    v134 = v383[1];
    v135 = v383[0];
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_severeAlert, v39);
    v362(v39, v135, v134, v133, v359);
    sub_1001B4354(v39);
    v136 = sub_100007EE8();
    v137 = v363;
    sub_1000833D8(v136, v138, v363);
    v139 = *(v40 + 8);
    v140 = sub_100007EE8();
    v139(v140);
    v141 = sub_100005474();
    sub_1000833D8(v141, v142, v137);
    v143 = sub_100005474();
    v139(v143);
    (*(v40 + 32))(v129, v112, a5);
    v132 = 0;
  }

  v144 = v129;
  v145 = 1;
  sub_100017568(v129, v132);
  sub_100007F30();
  sub_1003E7FD4(v146, v147);
  v148 = v322 + 8;
  v359 = *(v322 + 8);
  v359(v129, v361);
  sub_100566A40(v357, v385);
  v355 = v129;
  v338 = v148;
  if ((v385[32] & 1) == 0)
  {
    v149 = v321;
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_airQuality, v321);
    v150 = v356;
    sub_10004E364();
    v151();
    sub_1001B4354(v149);
    v152 = sub_100007EE8();
    v153 = v363;
    sub_1000833D8(v152, v154, v363);
    v155 = v327;
    v156 = *(v327 + 8);
    v157 = sub_100007EE8();
    v156(v157);
    v158 = sub_100005480();
    sub_1000833D8(v158, v159, v153);
    v160 = sub_100005480();
    v156(v160);
    v144 = v355;
    (*(v155 + 32))(v355, v150, a5);
    v145 = 0;
  }

  v161 = 1;
  sub_100017568(v144, v145);
  sub_100007F30();
  sub_1003E7FD4(v162, v163);
  v164 = sub_100049604();
  v165(v164);
  v166 = v357;
  sub_100566BC8(v357, v386);
  v167 = v321;
  if ((v386[32] & 1) == 0)
  {
    sub_1001B3B30(v339 + OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_newsArticle, v321);
    v166 = v357;
    sub_10004E364();
    v168();
    sub_1001B4354(v167);
    v169 = sub_100003A80();
    v170 = v363;
    sub_1000833D8(v169, v171, v363);
    v144 = *(v327 + 8);
    v172 = sub_100003A80();
    (v144)(v172);
    v173 = sub_100005474();
    sub_1000833D8(v173, v174, v170);
    v175 = sub_100005474();
    (v144)(v175);
    v176 = sub_1000280F8();
    v177(v176);
    v161 = 0;
  }

  sub_100017568(v144, v161);
  sub_100007F30();
  sub_1003E7FD4(v178, v179);
  v180 = sub_100049604();
  v181(v180);
  v182 = OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_map;
  v183 = v339;
  swift_beginAccess();
  v184 = v183 + v182;
  v185 = v299;
  sub_10026E174(v184, v299);
  if (sub_100024D10(v185, 1, v297) == 1)
  {
    sub_10026E1E4(v185);
    v186 = 1;
    v187 = v327;
  }

  else
  {
    v188 = v185;
    v189 = v296[0];
    sub_10026E24C(v188, v296[0]);
    sub_100566A5C(v166, v387);
    v187 = v327;
    if (v388)
    {
      sub_1001B4354(v189);
      v186 = 1;
    }

    else
    {
      v362(v189, v387[0], v387[1], v387[2], v387[3]);
      sub_1001B4354(v189);
      v190 = sub_100003A80();
      v191 = v363;
      sub_1000833D8(v190, v192, v363);
      v144 = *(v187 + 8);
      v193 = sub_100003A80();
      (v144)(v193);
      sub_1000833D8(v360, a5, v191);
      (v144)(v360, a5);
      v194 = sub_1000280F8();
      v195(v194);
      v186 = 0;
    }
  }

  v196 = v300;
  sub_100017568(v144, v186);
  sub_100007F30();
  sub_1003E7FD4(v197, v198);
  v199 = sub_100049604();
  v200(v199);
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v196);
  sub_100566A78(v166, v389);
  if (v390)
  {
    goto LABEL_31;
  }

  v362(v196, v389[0], v389[1], v389[2], v389[3]);
  sub_1001B4354(v196);
  sub_100007F30();
  sub_1000833D8(v201, v202, v203);
  v204 = *(v187 + 8);
  v205 = sub_100003A80();
  v204(v205);
  v206 = v302;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v302);
  sub_100566A94(v166, v391);
  if (v391[32])
  {
    goto LABEL_31;
  }

  v207 = sub_100014130();
  v208(v207);
  sub_1001B4354(v206);
  v209 = sub_100005474();
  sub_1000833D8(v209, v210, v363);
  v211 = sub_100005474();
  v204(v211);
  v212 = v304;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v304);
  sub_100566AB0(v166, v392);
  if (v392[32])
  {
    goto LABEL_34;
  }

  v213 = sub_100014130();
  v214(v213);
  sub_1001B4354(v212);
  v215 = sub_100005474();
  sub_1000833D8(v215, v216, v363);
  v217 = sub_100005474();
  v204(v217);
  v218 = v306;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v306);
  sub_100566ACC(v166, v393);
  if (v393[32])
  {
    goto LABEL_31;
  }

  v219 = sub_10002279C();
  v220(v219);
  sub_1001B4354(v218);
  sub_100007F30();
  sub_1000833D8(v221, v222, v223);
  v224 = sub_100003A80();
  v204(v224);
  v225 = v308;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v308);
  sub_100566AE8(v166, v394);
  if (v394[32])
  {
    goto LABEL_34;
  }

  v226 = sub_10002279C();
  v227(v226);
  sub_1001B4354(v225);
  sub_100007F30();
  sub_1000833D8(v228, v229, v230);
  v231 = sub_100003A80();
  v204(v231);
  v232 = v310;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v310);
  sub_100566B04(v166, v395);
  if (v395[32])
  {
    goto LABEL_31;
  }

  v233 = sub_10002279C();
  v234(v233);
  sub_1001B4354(v232);
  sub_100007F30();
  sub_1000833D8(v235, v236, v237);
  v238 = sub_100003A80();
  v204(v238);
  v239 = v312;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v312);
  sub_100566B20(v166, v396);
  if (v396[32])
  {
    goto LABEL_31;
  }

  v240 = sub_100014130();
  v241(v240);
  sub_1001B4354(v239);
  v242 = sub_100005474();
  sub_1000833D8(v242, v243, v363);
  v244 = sub_100005474();
  v204(v244);
  v245 = v314;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v314);
  sub_100566B3C(v166, v397);
  if (v397[32])
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v246 = sub_100014130();
  v247(v246);
  sub_1001B4354(v245);
  v248 = sub_100005474();
  sub_1000833D8(v248, v249, v363);
  v250 = sub_100005474();
  v204(v250);
  v251 = v315;
  sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v315);
  sub_100566B58(v166, &v398);
  if ((v399 & 1) == 0)
  {
    v252 = sub_10002279C();
    v253(v252);
    sub_1001B4354(v251);
    sub_100007F30();
    sub_1000833D8(v254, v255, v256);
    v257 = sub_100003A80();
    v204(v257);
    v258 = v317;
    sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v317);
    sub_100566B74(v166, &v400);
    if ((v401 & 1) == 0)
    {
      v259 = sub_100014130();
      v260(v259);
      sub_1001B4354(v258);
      v261 = sub_100005474();
      sub_1000833D8(v261, v262, v363);
      v263 = sub_100005474();
      v204(v263);
      sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v323);
      sub_100566B90(v166, v402);
      if ((v403 & 1) == 0)
      {
        v264 = v323;
        v362(v323, v402[0], v402[1], v402[2], v402[3]);
        sub_1001B4354(v264);
        v265 = sub_100005474();
        sub_1000833D8(v265, v266, v363);
        v267 = sub_100005474();
        v204(v267);
        v268 = v318;
        sub_1001B3B30(*(v183 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v318);
        sub_100566BAC(v166, v404);
        if ((v405 & 1) == 0)
        {
          v362(v268, v404[0], v404[1], v404[2], v404[3]);
          sub_1001B4354(v268);
          v269 = sub_100005480();
          v270 = v363;
          sub_1000833D8(v269, v271, v363);
          v272 = sub_100005480();
          v204(v272);
          v273 = *(v322 + 16);
          v274 = v355;
          v275 = v361;
          v273(v355, v340, v361);
          v382[0] = v274;
          v276 = v324;
          v273(v324, v341, v275);
          v382[1] = v276;
          v277 = v325;
          v273(v325, v342, v275);
          v382[2] = v277;
          v278 = v326;
          v273(v326, v343, v275);
          v382[3] = v278;
          v279 = *(v187 + 16);
          v280 = v360;
          v279(v360, v344, a5);
          v382[4] = v280;
          v281 = v356;
          v279(v356, v345, a5);
          v382[5] = v281;
          v282 = v329;
          v279(v329, v346, a5);
          v382[6] = v282;
          v283 = v330;
          v279(v330, v347, a5);
          v382[7] = v283;
          v284 = v331;
          v279(v331, v348, a5);
          v382[8] = v284;
          v285 = v332;
          v279(v332, v349, a5);
          v382[9] = v285;
          v286 = v333;
          v279(v333, v350, a5);
          v382[10] = v286;
          v287 = v334;
          v279(v334, v351, a5);
          v382[11] = v287;
          v288 = v335;
          v279(v335, v352, a5);
          v382[12] = v288;
          v289 = v336;
          v279(v336, v353, a5);
          v382[13] = v289;
          v290 = v337;
          v279(v337, v354, a5);
          v382[14] = v290;
          v291 = v319;
          v279(v319, v328, a5);
          v382[15] = v291;
          v381[0] = v275;
          v381[1] = v275;
          v381[2] = v275;
          v381[3] = v275;
          v381[4] = a5;
          v381[5] = a5;
          v381[6] = a5;
          v381[7] = a5;
          v381[8] = a5;
          v381[9] = a5;
          v381[10] = a5;
          v381[11] = a5;
          v381[12] = a5;
          v381[13] = a5;
          v381[14] = a5;
          v381[15] = a5;
          v364 = v270;
          WitnessTable = swift_getWitnessTable();
          v366 = WitnessTable;
          v367 = WitnessTable;
          v368 = WitnessTable;
          v369 = v270;
          v370 = v270;
          v371 = v270;
          v372 = v270;
          v373 = v270;
          v374 = v270;
          v375 = v270;
          v376 = v270;
          v377 = v270;
          v378 = v270;
          v379 = v270;
          v380 = v270;
          sub_10012E24C(v382, 16, v381);
          v292 = sub_100005480();
          v204(v292);
          (v204)(v354, a5);
          (v204)(v353, a5);
          (v204)(v352, a5);
          (v204)(v351, a5);
          (v204)(v350, a5);
          (v204)(v349, a5);
          (v204)(v348, a5);
          (v204)(v347, a5);
          (v204)(v346, a5);
          (v204)(v345, a5);
          (v204)(v344, a5);
          v293 = v359;
          v359(v343, v275);
          v293(v342, v275);
          v293(v341, v275);
          v293(v340, v275);
          v294 = sub_100007EE8();
          v204(v294);
          (v204)(v337, a5);
          (v204)(v336, a5);
          (v204)(v335, a5);
          (v204)(v334, a5);
          (v204)(v333, a5);
          (v204)(v332, a5);
          (v204)(v331, a5);
          (v204)(v330, a5);
          (v204)(v329, a5);
          (v204)(v356, a5);
          (v204)(v360, a5);
          v293(v326, v275);
          v293(v325, v275);
          v293(v324, v275);
          return (v293)(v355, v275);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002749B8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100274A64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100274AA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100274B0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46[2] = a1;
  v3 = type metadata accessor for DetailViewVisibilityTrackerModel();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = sub_10022C350(&qword_100CA54A0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  v11 = (v46 - v10);
  v12 = type metadata accessor for HomeAndWorkRefinementContentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = (v15 - v14);
  v46[1] = sub_10022C350(&qword_100CA54A8);
  sub_1000037E8();
  __chkstk_darwin(v17);
  v19 = v46 - v18;
  v20 = type metadata accessor for HomeAndWorkRefinementViewModel(0);
  __chkstk_darwin(v20 - 8);
  sub_1000037D8();
  v23 = v22 - v21;
  sub_100988718();
  if (sub_100024D10(v23, 1, v12) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_10001BB34();
    sub_100006F64(v24, v25);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_100275DE0(v23, v16);
    v27 = enum case for DetailType.homeAndWorkRefinement(_:);
    type metadata accessor for DetailType();
    sub_1000037E8();
    (*(v28 + 104))(v7, v27);
    v29 = *(v12 + 20);
    v30 = *(v3 + 20);
    type metadata accessor for Location();
    sub_1000037E8();
    (*(v31 + 16))(v7 + v30, &v16[v29]);
    v32 = *(v3 + 24);
    v33 = enum case for DetailViewOrigin.unknown(_:);
    type metadata accessor for DetailViewOrigin();
    sub_1000037E8();
    (*(v34 + 104))(v7 + v32, v33);
    v35 = v2[5];
    v36 = v2[6];
    v37 = sub_1000161C0(v2 + 2, v35);
    v47[3] = v35;
    v47[4] = *(v36 + 8);
    v38 = sub_100042FB0(v47);
    (*(*(v35 - 8) + 16))(v38, v37, v35);
    v40 = *v16;
    v39 = *(v16 + 1);
    *v11 = swift_getKeyPath();
    sub_10022C350(&qword_100CA54B0);
    swift_storeEnumTagMultiPayload();
    sub_100275E44(v7, v11 + v8[9]);
    v41 = sub_100035B30(v47, v11 + v8[10]);
    v42 = (v11 + v8[11]);
    *v42 = v40;
    v42[1] = v39;
    v43 = (v11 + v8[12]);
    *v43 = 0;
    v43[1] = 0;
    *(v11 + v8[13]) = 0;
    v44 = (v11 + v8[14]);
    *v44 = 0;
    v44[1] = 0;
    *(v11 + v8[15]) = 1;
    __chkstk_darwin(v41);
    v46[-2] = v16;
    v46[-1] = v2;

    sub_10022C350(&qword_100CA54B8);
    sub_100275EB0();
    List<>.init(content:)();
    sub_1002760E4(v7, type metadata accessor for DetailViewVisibilityTrackerModel);
    sub_100006F14(v47);
    sub_100035AD0(v11, v19, &qword_100CA54A0);
    swift_storeEnumTagMultiPayload();
    sub_10001BB34();
    sub_100006F64(v45, &qword_100CA54A0);
    _ConditionalContent<>.init(storage:)();
    sub_1000180EC(v11, &qword_100CA54A0);
    return sub_1002760E4(v16, type metadata accessor for HomeAndWorkRefinementContentViewModel);
  }
}

uint64_t sub_100275010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA54F0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v32 = sub_10022C350(&qword_100CA54E0);
  __chkstk_darwin(v32);
  v13 = &v32 - v12;
  v34 = a1;
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = sub_10022C350(&qword_100CA5520);
  sub_100275528(a1, a2, &v13[*(v14 + 44)]);
  v15 = type metadata accessor for HomeAndWorkRefinementContentViewModel(0);
  (*(v6 + 16))(v8, a1 + *(v15 + 28), v5);
  v16 = Text.init(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  KeyPath = swift_getKeyPath();
  sub_100276144(a2, v35);
  v24 = swift_allocObject();
  v25 = v35[1];
  *(v24 + 16) = v35[0];
  *(v24 + 32) = v25;
  *(v24 + 48) = v35[2];
  *(v24 + 64) = v36;
  v26 = &v11[*(v9 + 36)];
  sub_10022C350(&qword_100CA5500);
  OpenURLAction.init(handler:)();
  *v26 = KeyPath;
  *v11 = v16;
  *(v11 + 1) = v18;
  v11[16] = v20 & 1;
  *(v11 + 3) = v22;
  sub_100006F64(&qword_100CA54D8, &qword_100CA54E0);
  sub_10027602C();
  v27 = v33;
  Section<>.init(header:footer:content:)();
  v28 = (v27 + *(sub_10022C350(&qword_100CA54B8) + 36));
  v29 = *(sub_10022C350(&qword_100CA5510) + 28);
  v30 = type metadata accessor for Text.Case();
  sub_10001B350(v28 + v29, 1, 1, v30);
  result = swift_getKeyPath();
  *v28 = result;
  return result;
}

uint64_t sub_100275384@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Location();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HomeAndWorkRefinementContentViewModel(0);
  v6 = LocationOfInterest.fullAddress.getter();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    LocationOfInterest.location.getter();
    v8 = Location.inlineName.getter();
    v9 = v10;
    (*(v3 + 8))(v5, v2);
  }

  v24[2] = v8;
  v24[3] = v9;
  sub_10002D5A4();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  static Color.secondary.getter();
  v16 = Text.foregroundColor(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_10010CD64(v11, v13, v15 & 1);

  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v22;
  return result;
}

uint64_t sub_100275528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a2;
  v57 = a3;
  v4 = type metadata accessor for BorderlessButtonStyle();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CA5528);
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v49 = &v45 - v7;
  v59 = sub_10022C350(&qword_100CA5530);
  v48 = *(v59 - 8);
  __chkstk_darwin(v59);
  v47 = &v45 - v8;
  v9 = sub_10022C350(&qword_100CA5538);
  __chkstk_darwin(v9 - 8);
  v58 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = type metadata accessor for LocationOfInterestType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HomeAndWorkRefinementContentViewModel(0);
  LocationOfInterest.type.getter();
  v19 = LocationOfInterestType.title.getter();
  v21 = v20;
  (*(v15 + 8))(v17, v14);
  *&v60[0] = v19;
  *(&v60[0] + 1) = v21;
  sub_10002D5A4();
  v22 = Text.init<A>(_:)();
  v24 = v23;
  LOBYTE(v15) = v25;
  static Color.secondary.getter();
  v26 = Text.foregroundColor(_:)();
  v28 = v27;
  v55 = v29;
  v56 = v30;

  sub_10010CD64(v22, v24, v15 & 1);

  v31 = 1;
  if (*(a1 + *(v18 + 32)) == 1)
  {
    sub_100276144(v46, v60);
    v32 = swift_allocObject();
    v33 = v60[1];
    *(v32 + 16) = v60[0];
    *(v32 + 32) = v33;
    *(v32 + 48) = v60[2];
    *(v32 + 64) = v61;
    v34 = v49;
    Button.init(action:label:)();
    v35 = v52;
    BorderlessButtonStyle.init()();
    sub_100006F64(&qword_100CA5548, &qword_100CA5528);
    sub_100276188();
    v36 = v47;
    v37 = v51;
    v38 = v54;
    View.buttonStyle<A>(_:)();
    (*(v53 + 8))(v35, v38);
    (*(v50 + 8))(v34, v37);
    (*(v48 + 32))(v13, v36, v59);
    v31 = 0;
  }

  sub_10001B350(v13, v31, 1, v59);
  v39 = v58;
  sub_100035AD0(v13, v58, &qword_100CA5538);
  v41 = v56;
  v40 = v57;
  *v57 = v26;
  v40[1] = v28;
  v42 = v55 & 1;
  *(v40 + 16) = v55 & 1;
  v40[3] = v41;
  v40[4] = 0;
  *(v40 + 40) = 1;
  v43 = sub_10022C350(&qword_100CA5540);
  sub_100035AD0(v39, v40 + *(v43 + 64), &qword_100CA5538);
  sub_10010CD54(v26, v28, v42);

  sub_1000180EC(v13, &qword_100CA5538);
  sub_1000180EC(v39, &qword_100CA5538);
  sub_10010CD64(v26, v28, v42);
}

uint64_t sub_100275AE4@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v1 = sub_10022C350(&qword_100CA4020);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - v2;
  v31 = type metadata accessor for Font.TextStyle();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v7 = Text.init(_:tableName:bundle:comment:)();
  v9 = v8;
  v11 = v10;
  static Color.accentColor.getter();
  v12 = Text.foregroundColor(_:)();
  v29 = v13;
  v30 = v12;
  v15 = v14;
  v17 = v16;

  sub_10010CD64(v7, v9, v11 & 1);

  v18 = v31;
  (*(v4 + 104))(v6, enum case for Font.TextStyle.footnote(_:), v31);
  v19 = type metadata accessor for Font.Design();
  sub_10001B350(v3, 1, 1, v19);
  static Font.system(_:design:weight:)();
  sub_1002761E0(v3);
  (*(v4 + 8))(v6, v18);
  v20 = v30;
  v21 = Text.font(_:)();
  v23 = v22;
  LOBYTE(v6) = v24;
  v26 = v25;

  sub_10010CD64(v20, v15, v17 & 1);

  v28 = v32;
  *v32 = v21;
  v28[1] = v23;
  *(v28 + 16) = v6 & 1;
  v28[3] = v26;
  return result;
}

uint64_t sub_100275D80(uint64_t a1, uint64_t a2)
{
  sub_1000161C0((a2 + 16), *(a2 + 40));
  sub_1008A5918();

  return static OpenURLAction.Result.systemAction.getter();
}

uint64_t sub_100275DE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAndWorkRefinementContentViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100275E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailViewVisibilityTrackerModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100275EB0()
{
  result = qword_100CA54C0;
  if (!qword_100CA54C0)
  {
    sub_10022E824(&qword_100CA54B8);
    sub_100275F68();
    sub_100006F64(&qword_100CA5508, &qword_100CA5510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA54C0);
  }

  return result;
}

unint64_t sub_100275F68()
{
  result = qword_100CA54C8;
  if (!qword_100CA54C8)
  {
    sub_10022E824(&qword_100CA54D0);
    sub_100006F64(&qword_100CA54D8, &qword_100CA54E0);
    sub_10027602C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA54C8);
  }

  return result;
}

unint64_t sub_10027602C()
{
  result = qword_100CA54E8;
  if (!qword_100CA54E8)
  {
    sub_10022E824(&qword_100CA54F0);
    sub_100006F64(&qword_100CA54F8, &qword_100CA5500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA54E8);
  }

  return result;
}

uint64_t sub_1002760E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_100276188()
{
  result = qword_100CA5550;
  if (!qword_100CA5550)
  {
    type metadata accessor for BorderlessButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA5550);
  }

  return result;
}