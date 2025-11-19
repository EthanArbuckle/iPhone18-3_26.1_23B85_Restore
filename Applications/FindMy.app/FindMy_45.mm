uint64_t sub_1004B368C(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v38 = a2;
  v3 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v3 - 8);
  v36 = &v34 - v4;
  v5 = type metadata accessor for FMIPDevice();
  v37 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v35 = &v34 - v8;
  v9 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  v18 = *(*(a1 + 16) + 56);
  v19 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v18 + v19, v17, type metadata accessor for FMSelectedSection);
  sub_100027BE0(v17, v14, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
LABEL_8:
      sub_10002A100(v14, type metadata accessor for FMSelectedSection);
      goto LABEL_10;
    }

    if (EnumCaseMultiPayload != 12)
    {
LABEL_7:
      sub_10002A100(v17, type metadata accessor for FMSelectedSection);
      v21 = v14;
      return sub_10002A100(v21, type metadata accessor for FMSelectedSection);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 6)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    v22 = sub_10007EBC0(&qword_1006BEEE0);
    sub_100012DF0(&v14[*(v22 + 48)], &qword_1006B07D0);
    (*(v37 + 8))(v14, v5);
  }

LABEL_10:
  v23 = *(a1 + 56);
  if (v23 <= 2)
  {
    if (v23 - 1 < 2)
    {
      sub_1004B8C00(v38);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (v23 == 3)
  {
LABEL_14:
    sub_1004B5834(v38);
    goto LABEL_16;
  }

  sub_1004B7458(v38);
LABEL_16:
  sub_100027BE0(v17, v11, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10002A100(v17, type metadata accessor for FMSelectedSection);
    v21 = v11;
    return sub_10002A100(v21, type metadata accessor for FMSelectedSection);
  }

  v25 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
  v26 = v37;
  v27 = v35;
  v38 = *(v37 + 32);
  v38(v35, v11, v5);
  sub_100012DF0(&v11[v25], &qword_1006B07D0);

  v28 = FMIPDevice.identifier.getter();
  v29 = v36;
  sub_1000E512C(v28, v30, v36);

  if ((*(v26 + 48))(v29, 1, v5) == 1)
  {
    (*(v26 + 8))(v27, v5);
    sub_10002A100(v17, type metadata accessor for FMSelectedSection);
    return sub_100012DF0(v29, &unk_1006BBCE0);
  }

  else
  {
    v31 = v34;
    v38(v34, v29, v5);
    v32 = FMIPDevice.historicalLocations.getter();
    v33 = *(v26 + 8);
    v33(v31, v5);
    v33(v27, v5);
    result = sub_10002A100(v17, type metadata accessor for FMSelectedSection);
    if (v32)
    {

      *(a1 + 56) = 2;
    }
  }

  return result;
}

uint64_t sub_1004B3BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(a1 + 16) + 56);
  v8 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v7 + v8, v6, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 17) >= 2)
  {
    if (EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 3)
    {
      return sub_10002A100(v6, type metadata accessor for FMSelectedSection);
    }

    sub_10002A100(v6, type metadata accessor for FMSelectedSection);
  }

  if (*(a1 + 56) - 1 >= 2)
  {
    return sub_1004BF4C8(a2);
  }

  else
  {
    return sub_1004C138C(a2);
  }
}

uint64_t sub_1004B3D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(a1 + 16) + 56);
  v8 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v7 + v8, v6, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload != 8)
    {
      return sub_10002A100(v6, type metadata accessor for FMSelectedSection);
    }

    sub_10002A100(v6, type metadata accessor for FMSelectedSection);
  }

  if (*(a1 + 56) - 1 >= 2)
  {
    return sub_1004C5110(a2);
  }

  else
  {
    return sub_1004C7204(a2);
  }
}

uint64_t sub_1004B3E50(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v5 - 8);
  __chkstk_darwin(v5);
  v36 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPItem();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  (*(v9 + 16))(v11, a3, v8);
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32[0] = v5;
    v19 = v18;
    aBlock[0] = v18;
    *v16 = 138412546;
    *(v16 + 4) = v13;
    *v17 = v13;
    *(v16 + 12) = 2080;
    v20 = v13;
    v21 = FMIPItem.debugDescription.getter();
    v23 = v22;
    (*(v9 + 8))(v11, v8);
    v24 = sub_100005B4C(v21, v23, aBlock);

    *(v16 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMMapViewDataSource: didUpdate image %@ item %s", v16, 0x16u);
    sub_100012DF0(v17, &unk_1006AF760);

    sub_100006060(v19);
    v5 = v32[0];
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v25 = static OS_dispatch_queue.main.getter();
  v26 = swift_allocObject();
  v27 = v33;
  *(v26 + 16) = v32[1];
  *(v26 + 24) = v27;
  aBlock[4] = sub_1004D1F2C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100642960;
  v28 = _Block_copy(aBlock);

  v29 = v34;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  v30 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  (*(v38 + 8))(v30, v5);
  return (*(v35 + 8))(v29, v37);
}

uint64_t sub_1004B43BC(uint64_t a1)
{
  v2 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(a1 + 16) + 56);
  v6 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v5 + v6, v4, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 17) >= 2)
  {
    if (EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 3)
    {
      return sub_10002A100(v4, type metadata accessor for FMSelectedSection);
    }

    sub_10002A100(v4, type metadata accessor for FMSelectedSection);
  }

  v9 = FMIPManager.items.getter();
  if (*(a1 + 56) - 1 >= 2)
  {
    sub_1004BF4C8(v9);
  }

  else
  {
    sub_1004C138C(v9);
  }
}

uint64_t sub_1004B4520(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v5 - 8);
  __chkstk_darwin(v5);
  v36 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPDevice();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  (*(v9 + 16))(v11, a3, v8);
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32[0] = v5;
    v19 = v18;
    aBlock[0] = v18;
    *v16 = 138412546;
    *(v16 + 4) = v13;
    *v17 = v13;
    *(v16 + 12) = 2080;
    v20 = v13;
    v21 = FMIPDevice.debugDescription.getter();
    v23 = v22;
    (*(v9 + 8))(v11, v8);
    v24 = sub_100005B4C(v21, v23, aBlock);

    *(v16 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMMapViewDataSource: didUpdate image %@ device %s", v16, 0x16u);
    sub_100012DF0(v17, &unk_1006AF760);

    sub_100006060(v19);
    v5 = v32[0];
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v25 = static OS_dispatch_queue.main.getter();
  v26 = swift_allocObject();
  v27 = v33;
  *(v26 + 16) = v32[1];
  *(v26 + 24) = v27;
  aBlock[4] = sub_1004D1ED4;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100642910;
  v28 = _Block_copy(aBlock);

  v29 = v34;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  v30 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  (*(v38 + 8))(v30, v5);
  return (*(v35 + 8))(v29, v37);
}

uint64_t sub_1004B4A8C(uint64_t a1)
{
  v2 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(a1 + 16) + 56);
  v6 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v5 + v6, v4, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
LABEL_8:
      sub_10002A100(v4, type metadata accessor for FMSelectedSection);
      goto LABEL_10;
    }

    if (EnumCaseMultiPayload != 12)
    {
      return sub_10002A100(v4, type metadata accessor for FMSelectedSection);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return sub_10002A100(v4, type metadata accessor for FMSelectedSection);
      }

      goto LABEL_8;
    }

    v9 = sub_10007EBC0(&qword_1006BEEE0);
    sub_100012DF0(&v4[*(v9 + 48)], &qword_1006B07D0);
    v10 = type metadata accessor for FMIPDevice();
    (*(*(v10 - 8) + 8))(v4, v10);
  }

LABEL_10:
  v11 = FMIPManager.devices.getter();
  v12 = *(a1 + 56);
  if (v12 > 2)
  {
    if (v12 != 3)
    {
      sub_1004B7458(v11);
    }

    goto LABEL_14;
  }

  if (v12 - 1 >= 2)
  {
LABEL_14:
    sub_1004B5834(v11);
  }

  sub_1004B8C00(v11);
}

uint64_t sub_1004B4C94(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v27 = *(v8 - 8);
  v28 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v5;
    v15 = v14;
    v16 = swift_slowAlloc();
    v25 = a1;
    v17 = v16;
    aBlock[0] = v16;
    *v15 = 136315138;
    type metadata accessor for FMIPSafeLocation();
    v18 = Array.description.getter();
    v20 = sub_100005B4C(v18, v19, aBlock);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMMapViewDataSource: didUpdate safeLocations %s", v15, 0xCu);
    sub_100006060(v17);
    a1 = v25;

    v5 = v26;
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  *(v22 + 24) = a1;
  aBlock[4] = sub_1004D1ECC;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006428C0;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v5 + 8))(v7, v4);
  return (*(v27 + 8))(v10, v28);
}

uint64_t sub_1004B50CC(uint64_t a1)
{
  v2 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(a1 + 16) + 56);
  v6 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v5 + v6, v4, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 11)
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_10002A100(v4, type metadata accessor for FMSelectedSection);
        goto LABEL_8;
      }

      return sub_10002A100(v4, type metadata accessor for FMSelectedSection);
    }

    sub_10002A100(v4, type metadata accessor for FMSelectedSection);
LABEL_12:
    v11 = FMIPManager.items.getter();
    if (*(a1 + 56) - 1 >= 2)
    {
      sub_1004BF4C8(v11);
    }

    else
    {
      sub_1004C138C(v11);
    }
  }

  if (EnumCaseMultiPayload != 12)
  {
    if (EnumCaseMultiPayload != 17)
    {
      return sub_10002A100(v4, type metadata accessor for FMSelectedSection);
    }

    goto LABEL_12;
  }

LABEL_8:
  v9 = FMIPManager.devices.getter();
  v10 = *(a1 + 56);
  if (v10 > 2)
  {
    if (v10 != 3)
    {
      sub_1004B7458(v9);
    }

    goto LABEL_16;
  }

  if (v10 - 1 >= 2)
  {
LABEL_16:
    sub_1004B5834(v9);
  }

  sub_1004B8C00(v9);
}

uint64_t sub_1004B52B8(uint64_t a1)
{
  v2 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(a1 + 16) + 56);
  v6 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v5 + v6, v4, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() != 9)
  {
    return sub_10002A100(v4, type metadata accessor for FMSelectedSection);
  }

  v7 = FMIPManager.unknownItems.getter();

  if (*(a1 + 56) - 1 >= 2)
  {
    sub_1004C5110(v7);
  }

  else
  {
    sub_1004C7204(v7);
  }
}

uint64_t sub_1004B5404(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) - 1 < 2)
  {
    return sub_1004BD720(a2);
  }

  *(a1 + 57) = 0;
  return sub_100012488(a2);
}

uint64_t sub_1004B544C(uint64_t a1)
{

  v2 = dispatch thunk of FMFManager.friends.getter();

  if (*(a1 + 56) - 1 >= 2)
  {
    *(a1 + 57) = 0;
    sub_100012488(v2);
  }

  else
  {
    sub_1004BD720(v2);
  }
}

uint64_t sub_1004B54DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007EBC0(&qword_1006AF740);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  sub_100007204(a2, &v10 - v4, &qword_1006AF740);
  v6 = type metadata accessor for FMFLocation();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100012DF0(v5, &qword_1006AF740);
    v10 = 0u;
    v11 = 0u;
  }

  else
  {
    *(&v11 + 1) = v6;
    v8 = sub_100008FC0(&v10);
    (*(v7 + 32))(v8, v5, v6);
  }

  sub_1004CAF58();
  return sub_100012DF0(&v10, &unk_1006B8740);
}

uint64_t sub_1004B5640@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  if (a2 >> 62)
  {
    goto LABEL_25;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  result = swift_unknownObjectRetain();
  if (v7)
  {
    v13 = a4;
    v9 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        swift_unknownObjectRetain();
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          v7 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        a4 = v11;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v12 = sub_10000905C(0, &qword_1006B4980);
          swift_unknownObjectRetain();
          a4 = v12;
          if (static NSObject.== infix(_:_:)())
          {
            if (*a3 >> 62)
            {
              if (v9 < _CocoaArrayWrapper.endIndex.getter())
              {
LABEL_20:
                sub_100250790(v9);
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                result = swift_unknownObjectRelease_n();
                v6 = 0;
LABEL_21:
                a4 = v13;
                break;
              }
            }

            else if (v9 < *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }
          }

          swift_unknownObjectRelease();
        }
      }

      result = swift_unknownObjectRelease();
      ++v9;
      if (v10 == v7)
      {
        goto LABEL_21;
      }
    }
  }

  *a4 = v6;
  return result;
}

uint64_t sub_1004B5834(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v15 = *(v6 - 8);
  v16 = v6;
  __chkstk_darwin(v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = &_swiftEmptyDictionarySingleton;
  v10 = swift_allocObject();
  *(v10 + 16) = &_swiftEmptyDictionarySingleton;
  v14[1] = *(v1 + 88);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v1;
  v11[4] = v9;
  v11[5] = v10;
  aBlock[4] = sub_1004D1E58;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006427D0;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v17 + 8))(v5, v3);
  (*(v15 + 8))(v8, v16);
}

uint64_t sub_1004B5B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v195 = a4;
  v175 = a3;
  v187 = a2;
  v179 = 0;
  v158 = type metadata accessor for DispatchQoS();
  v160 = *(v158 - 8);
  __chkstk_darwin(v158);
  v157 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for DispatchWorkItemFlags();
  v159 = *(v156 - 8);
  __chkstk_darwin(v156);
  v155 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for FMAnnotationIdentifier();
  __chkstk_darwin(v183);
  v162 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v168 = (&v155 - v9);
  v10 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v10 - 8);
  v12 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v155 - v14;
  v167 = type metadata accessor for FMIPLocation();
  v16 = *(v167 - 8);
  __chkstk_darwin(v167);
  v18 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v155 - v20;
  i = type metadata accessor for FMIPItem();
  v22 = *(i - 8);
  __chkstk_darwin(i);
  v186 = &v155 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v24 - 8);
  v180 = &v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v155 - v27;
  __chkstk_darwin(v29);
  v185 = &v155 - v30;
  v31 = sub_10007EBC0(&unk_1006BB1C0);
  __chkstk_darwin(v31 - 8);
  v33 = &v155 - v32;
  v182 = type metadata accessor for FMIPItemGroup();
  v34 = *(v182 - 8);
  __chkstk_darwin(v182);
  v181 = &v155 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for FMIPDevice();
  v37 = __chkstk_darwin(v204);
  v201 = (&v155 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v194 = *(a1 + 16);
  if (!v194)
  {
    v46 = v195;
LABEL_51:
    swift_beginAccess();
    v111 = *(v46 + 16);
    v112 = v111 + 64;
    v113 = 1 << *(v111 + 32);
    v114 = -1;
    if (v113 < 64)
    {
      v114 = ~(-1 << v113);
    }

    v115 = v114 & *(v111 + 64);
    v116 = (v113 + 63) >> 6;
    v201 = v206;
    v200 = v160 + 8;
    v199 = (v159 + 8);
    v204 = v111;

    v117 = 0;
    for (i = v116; ; v116 = i)
    {
      if (!v115)
      {
        while (1)
        {
          v123 = v117 + 1;
          if (__OFADD__(v117, 1))
          {
            goto LABEL_76;
          }

          if (v123 >= v116)
          {

            swift_beginAccess();

            sub_100012E50(v153, _swiftEmptyArrayStorage);
          }

          v115 = *(v112 + 8 * v123);
          ++v117;
          if (v115)
          {
            v117 = v123;
            break;
          }
        }
      }

      v124 = __clz(__rbit64(v115)) | (v117 << 6);
      v125 = (*(v204 + 48) + 16 * v124);
      v126 = *v125;
      v127 = v125[1];
      v128 = *(*(v204 + 56) + 8 * v124);
      if (!(v128 >> 62))
      {
        break;
      }

      v149 = _CocoaArrayWrapper.endIndex.getter();
      if (!v149)
      {
        v129 = _swiftEmptyArrayStorage;
        goto LABEL_63;
      }

      v150 = v149;
      v129 = sub_10008FC98(v149, 0);
      swift_bridgeObjectRetain_n();
      sub_10009186C(v126, v127);
      sub_10043A9D8((v129 + 4), v150, v128);
      v152 = v151;

      if (v152 != v150)
      {
        goto LABEL_77;
      }

LABEL_64:
      aBlock[0] = v129;
      v130 = v179;
      sub_1004CB9DC(aBlock);
      if (v130)
      {
        goto LABEL_78;
      }

      sub_100091880(v126, v127);

      v131 = aBlock[0];
      v132 = *(v187 + 48);
      v203 = type metadata accessor for FMClusterAnnotation();
      v133 = objc_allocWithZone(v203);

      sub_1003F4230(v134);
      v136 = v135;
      __chkstk_darwin(v135);
      *(&v155 - 2) = v137;
      v138 = v162;
      OS_dispatch_queue.sync<A>(execute:)();
      if (*(v132 + 16) && (v139 = sub_1001B4074(v138), (v140 & 1) != 0))
      {
        v141 = *(*(v132 + 56) + 8 * v139);
        sub_10002A100(v138, type metadata accessor for FMAnnotationIdentifier);
        v142 = swift_dynamicCastClass();
        if (v142)
        {
          v198 = *(v142 + OBJC_IVAR____TtC6FindMy19FMClusterAnnotation_updateQueue);
          v143 = v155;
          v144 = v142;
          v203 = v142;
          static DispatchWorkItemFlags.barrier.getter();
          v145 = swift_allocObject();
          *(v145 + 16) = v131;
          *(v145 + 24) = v144;
          v206[2] = sub_1004D1FD8;
          v206[3] = v145;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v206[0] = sub_100004AE4;
          v206[1] = &unk_100642820;
          v146 = _Block_copy(aBlock);
          v147 = v141;
          v148 = v157;
          static DispatchQoS.unspecified.getter();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v146);

          (*v200)(v148, v158);
          (*v199)(v143, v156);

          v136 = v203;
        }

        else
        {
        }
      }

      else
      {

        v118 = sub_10002A100(v138, type metadata accessor for FMAnnotationIdentifier);
      }

      v115 &= v115 - 1;
      __chkstk_darwin(v118);
      *(&v155 - 2) = v136;
      v119 = v168;
      OS_dispatch_queue.sync<A>(execute:)();
      v179 = 0;
      v120 = v175;
      swift_beginAccess();
      v121 = v136;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v207 = *(v120 + 16);
      *(v120 + 16) = 0x8000000000000000;
      sub_1001BCC70(v121, v119, isUniquelyReferenced_nonNull_native);
      sub_10002A100(v119, type metadata accessor for FMAnnotationIdentifier);
      *(v120 + 16) = v207;
      swift_endAccess();
    }

    v129 = (v128 & 0xFFFFFFFFFFFFFF8);

LABEL_63:

    sub_10009186C(v126, v127);
    goto LABEL_64;
  }

  v174 = v15;
  v166 = v21;
  v39 = 0;
  v41 = *(v36 + 16);
  v40 = v36 + 16;
  v193 = v41;
  v192 = a1 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
  v191 = (v34 + 48);
  v171 = (v34 + 32);
  v170 = (v34 + 8);
  v196 = (v22 + 48);
  v173 = (v22 + 32);
  v199 = (v16 + 48);
  v178 = (v16 + 32);
  v164 = (v22 + 16);
  v177 = (v22 + 56);
  v176 = (v16 + 8);
  v172 = (v22 + 8);
  v188 = (v40 - 8);
  v190 = *(v40 + 56);
  v42 = v167;
  v165 = v18;
  v197 = v28;
  v43 = v182;
  v44 = v181;
  v45 = v201;
  v46 = v195;
  v47 = v12;
  v169 = v12;
  v163 = v33;
  v189 = v40;
  while (1)
  {
    v203 = v39;
    v193(v45, v192 + v190 * v39, v204, v37);
    FMIPDevice.itemGroup.getter();
    if ((*v191)(v33, 1, v43) != 1)
    {
      break;
    }

    sub_100012DF0(v33, &unk_1006BB1C0);
LABEL_37:
    v45 = v201;
    FMIPDevice.bestLocation.getter();
    if ((*v199)(v47, 1, v42) == 1)
    {
      (*v188)(v45, v204);
      sub_100012DF0(v47, &unk_1006C0220);
    }

    else
    {
      (*v178)(v18, v47, v42);
      v91 = v180;
      (*v177)(v180, 1, 1, i);
      v92 = v42;
      v93 = *(v187 + 48);

      v94 = sub_1004BB7DC(v45, v91, 0, v18, v93);

      sub_100012DF0(v91, &qword_1006B07D0);
      v95 = *&v94[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier + 8];
      if (v95)
      {
        v96 = *&v94[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
        v46 = v195;
        swift_beginAccess();
        v97 = *(*(v46 + 16) + 16);
        v98 = v94;
        sub_10009186C(v96, v95);
        if (!v97 || (sub_1001B40E0(v96, v95), (v99 & 1) == 0))
        {
          swift_endAccess();
          swift_beginAccess();
          sub_10009186C(v96, v95);
          v100 = swift_isUniquelyReferenced_nonNull_native();
          v208 = *(v46 + 16);
          *(v46 + 16) = 0x8000000000000000;
          sub_1001BCAF0(_swiftEmptyArrayStorage, v96, v95, v100);
          sub_100091880(v96, v95);
          *(v46 + 16) = v208;
        }

        swift_endAccess();
        swift_beginAccess();
        v102 = sub_1004B1F10(aBlock, v96, v95);
        if (*v101)
        {
          v103 = v101;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v18 = v165;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          (v102)(aBlock, 0);
          swift_endAccess();
        }

        else
        {
          (v102)(aBlock, 0);
          swift_endAccess();
        }

        sub_100091880(v96, v95);

        v42 = v167;
        (*v176)(v18, v167);
        v45 = v201;
        (*v188)(v201, v204);
        v43 = v182;
        v44 = v181;
        v47 = v169;
      }

      else
      {
        v104 = v94;
        v105 = FMIPDevice.identifier.getter();
        v106 = v168;
        *v168 = v105;
        *(v106 + 8) = v107;
        swift_storeEnumTagMultiPayload();
        v108 = v175;
        swift_beginAccess();
        v109 = swift_isUniquelyReferenced_nonNull_native();
        v208 = *(v108 + 16);
        *(v108 + 16) = 0x8000000000000000;
        sub_1001BCC70(v104, v106, v109);
        v110 = v106;
        v18 = v165;
        sub_10002A100(v110, type metadata accessor for FMAnnotationIdentifier);
        *(v108 + 16) = v208;
        swift_endAccess();

        (*v176)(v18, v92);
        (*v188)(v45, v204);
        v43 = v182;
        v44 = v181;
        v46 = v195;
        v42 = v92;
      }
    }

LABEL_4:
    v39 = (v203 + 1);
    if (v203 + 1 == v194)
    {
      goto LABEL_51;
    }
  }

  (*v171)(v44, v33, v43);
  if ((FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) == 0)
  {
    (*v170)(v44, v43);
    goto LABEL_37;
  }

  v48 = FMIPItemGroup.groupedItems.getter();
  v49 = 0;
  v51 = v48 + 56;
  v50 = *(v48 + 56);
  v200 = v48;
  v52 = 1 << *(v48 + 32);
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  else
  {
    v53 = -1;
  }

  v54 = v53 & v50;
  v55 = (v52 + 63) >> 6;
  v56 = v185;
  v198 = v55;
  v184 = v48 + 56;
  if ((v53 & v50) != 0)
  {
    do
    {
      while (1)
      {
        v57 = v42;
LABEL_19:
        v59 = __clz(__rbit64(v54));
        v54 &= v54 - 1;
        v60 = *(*(v200 + 48) + ((v49 << 9) | (8 * v59)));

        static FMIPItemGroup.primaryPart(group:)();
        v61 = v197;
        sub_100007204(v56, v197, &qword_1006B07D0);
        v62 = i;
        if ((*v196)(v61, 1, i) != 1)
        {
          break;
        }

        sub_100012DF0(v56, &qword_1006B07D0);

        sub_100012DF0(v61, &qword_1006B07D0);
        v42 = v57;
        v55 = v198;
        if (!v54)
        {
          goto LABEL_15;
        }
      }

      v63 = v186;
      (*v173)(v186, v61, v62);
      v64 = v174;
      FMIPItem.location.getter();
      v42 = v57;
      if ((*v199)(v64, 1, v57) == 1)
      {

        (*v172)(v63, v62);
        v56 = v185;
        sub_100012DF0(v185, &qword_1006B07D0);
        v65 = v64;
        v66 = &unk_1006C0220;
      }

      else
      {
        v67 = v166;
        (*v178)(v166, v64, v42);
        v68 = v180;
        (*v164)(v180, v63, v62);
        (*v177)(v68, 0, 1, v62);
        v69 = v42;
        v70 = *(v187 + 48);

        v71 = sub_1004BB7DC(v201, v68, v60, v67, v70);

        v72 = sub_100012DF0(v68, &qword_1006B07D0);
        v73 = *&v71[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier + 8];
        if (v73)
        {
          v74 = *&v71[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
          v75 = v195;
          swift_beginAccess();
          v76 = *(*(v75 + 16) + 16);
          v77 = v71;
          sub_10009186C(v74, v73);
          if (v76 && (sub_1001B40E0(v74, v73), (v78 & 1) != 0))
          {
            swift_endAccess();
          }

          else
          {
            swift_endAccess();
            v79 = v195;
            swift_beginAccess();
            sub_10009186C(v74, v73);
            v80 = swift_isUniquelyReferenced_nonNull_native();
            v208 = *(v79 + 16);
            *(v79 + 16) = 0x8000000000000000;
            sub_1001BCAF0(_swiftEmptyArrayStorage, v74, v73, v80);
            sub_100091880(v74, v73);
            *(v79 + 16) = v208;
            swift_endAccess();
          }

          v81 = i;
          swift_beginAccess();
          v83 = sub_1004B1F10(aBlock, v74, v73);
          if (*v82)
          {
            v84 = v82;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            (v83)(aBlock, 0);
            swift_endAccess();
            sub_100091880(v74, v73);

            v42 = v167;
            (*v176)(v166, v167);
            (*v172)(v186, i);
          }

          else
          {
            (v83)(aBlock, 0);
            swift_endAccess();

            sub_100091880(v74, v73);
            v90 = v81;
            v42 = v167;
            (*v176)(v166, v167);
            (*v172)(v186, v90);
          }

          v56 = v185;
          v65 = v185;
          v66 = &qword_1006B07D0;
        }

        else
        {
          v161 = &v155;
          __chkstk_darwin(v72);
          *(&v155 - 2) = v71;
          v85 = v71;
          v86 = v168;
          v87 = v179;
          OS_dispatch_queue.sync<A>(execute:)();
          v179 = v87;
          v88 = v175;
          swift_beginAccess();
          v89 = swift_isUniquelyReferenced_nonNull_native();
          v208 = *(v88 + 16);
          *(v88 + 16) = 0x8000000000000000;
          sub_1001BCC70(v85, v86, v89);
          sub_10002A100(v86, type metadata accessor for FMAnnotationIdentifier);
          *(v88 + 16) = v208;
          swift_endAccess();

          v42 = v69;
          (*v176)(v67, v69);
          (*v172)(v186, v62);
          v56 = v185;
          v65 = v185;
          v66 = &qword_1006B07D0;
        }
      }

      sub_100012DF0(v65, v66);
      v55 = v198;
      v51 = v184;
    }

    while (v54);
  }

LABEL_15:
  while (1)
  {
    v58 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v58 >= v55)
    {
      v44 = v181;
      v43 = v182;
      (*v170)(v181, v182);
      v45 = v201;
      (*v188)(v201, v204);

      v46 = v195;
      v47 = v169;
      v18 = v165;
      v33 = v163;
      goto LABEL_4;
    }

    v54 = *(v51 + 8 * v58);
    ++v49;
    if (v54)
    {
      v57 = v42;
      v49 = v58;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:

  __break(1u);
  return result;
}

uint64_t sub_1004B7458(uint64_t a1)
{
  v54 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v1 - 8);
  v50 = v1;
  __chkstk_darwin(v1);
  v47 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v44 - v5;
  v7 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPDevice();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v52 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v51 = &v44 - v14;
  __chkstk_darwin(v15);
  v53 = &v44 - v16;
  __chkstk_darwin(v17);
  v19 = &v44 - v18;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100005B14(v20, qword_1006D4630);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "FMMapViewDataSource: updateSelectedDevice", v23, 2u);
  }

  v24 = swift_allocObject();
  *(v24 + 16) = &_swiftEmptyDictionarySingleton;
  v25 = *(*(v55 + 16) + 56);
  v26 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v25 + v26, v9, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v27 = *(v11 + 32);
    v27(v19, v9, v10);
    v28 = FMIPDevice.shouldDisplaySeparatedLocation.getter();
    if ((v28 & 1) == 0)
    {
      sub_1004B8C00(v54);
LABEL_15:
      (*(v11 + 8))(v19, v10);
    }

    __chkstk_darwin(v28);
    *(&v44 - 2) = v19;
    sub_1001108AC(sub_1004D1FA0, v54, v6);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {
      sub_100012DF0(v6, &unk_1006BBCE0);
LABEL_14:
      v42 = v54;
      *(v55 + 58) = 0;
      sub_1004B5834(v42);
      goto LABEL_15;
    }

    v29 = v53;
    v27(v53, v6, v10);
    if ((FMIPDevice.hasLocation.getter() & 1) == 0)
    {
      (*(v11 + 8))(v29, v10);
      goto LABEL_14;
    }

    v30 = v55;
    *(v55 + 58) = 1;
    v44 = *(v30 + 88);
    v31 = *(v11 + 16);
    v31(v51, v29, v10);
    v31(v52, v19, v10);
    v32 = *(v11 + 80);
    v33 = (v32 + 16) & ~v32;
    v54 = v11;
    v34 = (v12 + v32 + v33) & ~v32;
    v35 = (v12 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v27((v36 + v33), v51, v10);
    v27((v36 + v34), v52, v10);
    *(v36 + v35) = v24;
    *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v55;
    aBlock[4] = sub_1004D1DB0;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100642780;
    v37 = _Block_copy(aBlock);

    v38 = v45;
    static DispatchQoS.unspecified.getter();
    v56 = _swiftEmptyArrayStorage;
    sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
    v39 = v47;
    v40 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);
    (*(v49 + 8))(v39, v40);
    (*(v46 + 8))(v38, v48);
    v41 = *(v54 + 8);
    v41(v53, v10);

    v41(v19, v10);
  }

  else
  {
    sub_10002A100(v9, type metadata accessor for FMSelectedSection);
  }
}

uint64_t sub_1004B7C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v159 = a3;
  v150 = type metadata accessor for FMAnnotationIdentifier();
  __chkstk_darwin(v150);
  v151 = (&v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v7 - 8);
  v9 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v147 = &v122 - v11;
  v157 = type metadata accessor for FMIPLocation();
  v12 = *(v157 - 8);
  __chkstk_darwin(v157);
  v144 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v145 = &v122 - v15;
  __chkstk_darwin(v16);
  v146 = &v122 - v17;
  v153 = type metadata accessor for FMIPItem();
  v148 = *(v153 - 8);
  __chkstk_darwin(v153);
  v143 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v155 = &v122 - v20;
  v21 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v21 - 8);
  v149 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v152 = &v122 - v24;
  __chkstk_darwin(v25);
  v158 = &v122 - v26;
  v27 = sub_10007EBC0(&unk_1006BB1C0);
  __chkstk_darwin(v27 - 8);
  v29 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v122 - v31;
  v156 = a1;
  v33 = FMIPDevice.identifier.getter();
  v35 = v34;
  if (v33 == FMIPDevice.identifier.getter() && v35 == v36)
  {
  }

  else
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v37 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v154 = a4;
  v38 = v156;
  v139 = FMIPDevice.identifier.getter();
  v40 = v39;
  FMIPDevice.itemGroup.getter();
  v41 = type metadata accessor for FMIPItemGroup();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  if (v43(v32, 1, v41) == 1)
  {

    sub_100012DF0(v32, &unk_1006BB1C0);
    goto LABEL_11;
  }

  v142 = v40;
  sub_100012DF0(v32, &unk_1006BB1C0);
  if ((FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) == 0)
  {

LABEL_11:
    FMIPDevice.bestLocation.getter();
    v46 = v157;
    v47 = (*(v12 + 48))(v9, 1, v157);
    v48 = v154;
    if (v47 == 1)
    {
      sub_100012DF0(v9, &unk_1006C0220);
    }

    else
    {
      v49 = v144;
      (*(v12 + 32))(v144, v9, v46);
      v50 = FMIPDevice.identifier.getter();
      v51 = v151;
      *v151 = v50;
      *(v51 + 8) = v52;
      swift_storeEnumTagMultiPayload();
      v53 = v149;
      (*(v148 + 56))(v149, 1, 1, v153);
      v54 = *(v48 + 48);

      v55 = sub_1004BB7DC(v38, v53, 0, v49, v54);

      sub_100012DF0(v53, &qword_1006B07D0);
      v56 = v159;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v160 = *(v56 + 16);
      *(v56 + 16) = 0x8000000000000000;
      sub_1001BCC70(v55, v51, isUniquelyReferenced_nonNull_native);
      sub_10002A100(v51, type metadata accessor for FMAnnotationIdentifier);
      *(v56 + 16) = v160;
      swift_endAccess();
      (*(v12 + 8))(v49, v46);
    }

LABEL_37:
    if (qword_1006AEBE0 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_43;
  }

  FMIPDevice.itemGroup.getter();
  if (v43(v29, 1, v41) == 1)
  {
    sub_100012DF0(v29, &unk_1006BB1C0);
    v45 = _swiftEmptySetSingleton;
  }

  else
  {
    v58 = FMIPItemGroup.groupedItems.getter();
    (*(v42 + 8))(v29, v41);
    v45 = v58;
  }

  v59 = v157;
  v60 = v152;
  v61 = 0;
  v62 = v45 + 7;
  v63 = 1 << *(v45 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & v45[7];
  v66 = (v63 + 63) >> 6;
  v141 = (v148 + 48);
  v138 = (v148 + 32);
  v137 = (v12 + 48);
  v128 = (v12 + 32);
  v136 = (v148 + 16);
  v127 = (v12 + 16);
  v126 = (v12 + 8);
  v135 = (v148 + 8);
  v125 = (v148 + 56);
  *&v44 = 136315651;
  v124 = v44;
  v67 = v153;
  v148 = v66;
  v140 = v45 + 7;
  v144 = v45;
  while (v65)
  {
    v68 = v59;
LABEL_26:
    v70 = __clz(__rbit64(v65));
    v65 &= v65 - 1;
    v71 = *(v45[6] + ((v61 << 9) | (8 * v70)));

    v72 = v158;
    static FMIPItemGroup.primaryPart(group:)();
    sub_100007204(v72, v60, &qword_1006B07D0);
    if ((*v141)(v60, 1, v67) == 1)
    {
      sub_100012DF0(v72, &qword_1006B07D0);

      sub_100012DF0(v60, &qword_1006B07D0);
      v45 = v144;
      v66 = v148;
      v59 = v68;
    }

    else
    {
      v73 = v155;
      (*v138)(v155, v60, v67);
      v74 = v147;
      FMIPItem.location.getter();
      v75 = v74;
      v59 = v68;
      if ((*v137)(v74, 1, v68) == 1)
      {

        (*v135)(v73, v67);
        sub_100012DF0(v158, &qword_1006B07D0);
        v76 = v74;
        v77 = &unk_1006C0220;
      }

      else
      {
        v78 = v146;
        (*v128)(v146, v75, v68);
        v130 = v71;
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v79 = type metadata accessor for Logger();
        sub_100005B14(v79, qword_1006D4630);
        v80 = v143;
        v133 = *v136;
        v133(v143, v155, v67);
        v81 = v145;
        (*v127)(v145, v78, v68);

        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          v161 = v123;
          *v84 = v124;
          v85 = FMIPItem.debugDescription.getter();
          v86 = v59;
          v88 = v87;
          v89 = *v135;
          v134 = v135 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v129 = v89;
          v89(v80, v67);
          v90 = sub_100005B4C(v85, v88, &v161);

          *(v84 + 4) = v90;
          *(v84 + 12) = 2080;
          *(v84 + 14) = sub_100005B4C(v139, v142, &v161);
          *(v84 + 22) = 2081;
          v91 = v145;
          v92 = FMIPLocation.debugDescription.getter();
          v94 = v93;
          v95 = *v126;
          v131 = v126 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v132 = v95;
          v95(v91, v86);
          v96 = sub_100005B4C(v92, v94, &v161);

          *(v84 + 24) = v96;
          _os_log_impl(&_mh_execute_header, v82, v83, "FMMapViewDataSource: Creating annotation for item %s, groupIdentifier: %s - %{private}s", v84, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          v97 = *v126;
          v131 = v126 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v132 = v97;
          v97(v81, v59);
          v98 = *v135;
          v134 = v135 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v129 = v98;
          v98(v80, v67);
        }

        v99 = v67;
        v100 = v156;
        v101 = FMIPDevice.identifier.getter();
        v103 = v102;
        v104 = v155;
        v105 = FMIPItem.identifier.getter();
        v106 = v151;
        *v151 = v101;
        v106[1] = v103;
        v106[2] = v105;
        v106[3] = v107;
        swift_storeEnumTagMultiPayload();
        v108 = v149;
        v133(v149, v104, v99);
        (*v125)(v108, 0, 1, v99);
        v109 = *(v154 + 48);

        v110 = v100;
        v111 = v146;
        v133 = sub_1004BB7DC(v110, v108, v130, v146, v109);

        sub_100012DF0(v108, &qword_1006B07D0);
        v112 = v159;
        swift_beginAccess();
        v113 = swift_isUniquelyReferenced_nonNull_native();
        v160 = *(v112 + 16);
        *(v112 + 16) = 0x8000000000000000;
        sub_1001BCC70(v133, v106, v113);
        *(v112 + 16) = v160;
        swift_endAccess();
        sub_10002A100(v106, type metadata accessor for FMAnnotationIdentifier);
        v59 = v157;
        v132(v111, v157);
        v114 = v104;
        v67 = v153;
        v129(v114, v153);
        v76 = v158;
        v77 = &qword_1006B07D0;
      }

      sub_100012DF0(v76, v77);
      v60 = v152;
      v45 = v144;
      v66 = v148;
    }

    v62 = v140;
  }

  while (1)
  {
    v69 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v69 >= v66)
    {

      goto LABEL_37;
    }

    v65 = v62[v69];
    ++v61;
    if (v65)
    {
      v68 = v59;
      v61 = v69;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_43:
  swift_once();
LABEL_38:
  v115 = type metadata accessor for Logger();
  sub_100005B14(v115, qword_1006D4630);
  v116 = v159;

  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    *v119 = 134217984;
    swift_beginAccess();
    *(v119 + 4) = *(*(v116 + 16) + 16);

    _os_log_impl(&_mh_execute_header, v117, v118, "FMMapViewDataSource: result %ld", v119, 0xCu);
  }

  else
  {
  }

  swift_beginAccess();

  sub_100012E50(v120, _swiftEmptyArrayStorage);
}

uint64_t sub_1004B8C00(uint64_t a1)
{
  v2 = v1;
  v54 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v46 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v6 - 8);
  v8 = v42 - v7;
  v52 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v52);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMIPDevice();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v50 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v51 = v42 - v15;
  __chkstk_darwin(v16);
  v18 = v42 - v17;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100005B14(v19, qword_1006D4630);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "FMMapViewDataSource: updateSelectedDevice", v22, 2u);
  }

  v23 = swift_allocObject();
  *(v23 + 16) = _swiftEmptyArrayStorage;
  v53 = swift_allocObject();
  *(v53 + 16) = &_swiftEmptyDictionarySingleton;
  v24 = *(*(v2 + 16) + 56);
  v25 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v24 + v25, v10, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7 || EnumCaseMultiPayload == 1)
  {
    v52 = v23;
    v28 = *(v12 + 32);
    v29 = v28(v18, v10, v11);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_10002A100(v10, type metadata accessor for FMSelectedSection);
      goto LABEL_17;
    }

    v52 = v23;
    v27 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
    v28 = *(v12 + 32);
    v28(v18, v10, v11);
    v29 = sub_100012DF0(&v10[v27], &qword_1006B07D0);
  }

  __chkstk_darwin(v29);
  v42[-2] = v18;
  sub_1001108AC(sub_1004D1CD4, v54, v8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_100012DF0(v8, &unk_1006BBCE0);
LABEL_16:
    *(v2 + 58) = 0;
    sub_1004B5834(v54);
    (*(v12 + 8))(v18, v11);
    goto LABEL_17;
  }

  v30 = v51;
  v28(v51, v8, v11);
  if ((FMIPDevice.hasLocation.getter() & 1) == 0)
  {
    (*(v12 + 8))(v30, v11);
    goto LABEL_16;
  }

  *(v2 + 58) = 1;
  v42[1] = *(v2 + 88);
  (*(v12 + 16))(v50, v18, v11);
  v31 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v32 = (v13 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = v18;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = v54;
  v28((v34 + v31), v50, v11);
  *(v34 + v32) = v2;
  v35 = v52;
  *(v34 + v33) = v53;
  *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;
  aBlock[4] = sub_1004D1D08;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100642730;
  v36 = _Block_copy(aBlock);

  v37 = v44;
  static DispatchQoS.unspecified.getter();
  v55 = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  v38 = v46;
  v39 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);
  (*(v48 + 8))(v38, v39);
  (*(v45 + 8))(v37, v47);
  v40 = *(v12 + 8);
  v40(v51, v11);

  v40(v43, v11);
LABEL_17:
}

uint64_t sub_1004B9468(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5)
{
  v270 = a5;
  v317 = a3;
  v298 = a2;
  v7 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v7 - 8);
  v266 = &v251 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v268 = &v251 - v10;
  __chkstk_darwin(v11);
  v285 = &v251 - v12;
  __chkstk_darwin(v13);
  v279 = &v251 - v14;
  v305 = type metadata accessor for FMIPLocation();
  v15 = *(v305 - 8);
  __chkstk_darwin(v305);
  v261 = &v251 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v267 = &v251 - v18;
  __chkstk_darwin(v19);
  v269 = &v251 - v20;
  __chkstk_darwin(v21);
  v263 = &v251 - v22;
  __chkstk_darwin(v23);
  v278 = &v251 - v24;
  v303 = type metadata accessor for FMIPItem();
  v25 = *(v303 - 8);
  __chkstk_darwin(v303);
  v27 = &v251 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v265 = &v251 - v29;
  __chkstk_darwin(v30);
  v32 = &v251 - v31;
  __chkstk_darwin(v33);
  v296 = &v251 - v34;
  v35 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v35 - 8);
  v259 = &v251 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v258 = &v251 - v38;
  __chkstk_darwin(v39);
  v284 = &v251 - v40;
  __chkstk_darwin(v41);
  v286 = &v251 - v42;
  __chkstk_darwin(v43);
  v44 = sub_10007EBC0(&unk_1006BB1C0);
  __chkstk_darwin(v44 - 8);
  v253 = &v251 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v264 = &v251 - v47;
  __chkstk_darwin(v48);
  v262 = &v251 - v49;
  __chkstk_darwin(v50);
  v302 = &v251 - v51;
  v318 = type metadata accessor for FMAnnotationIdentifier();
  __chkstk_darwin(v318);
  v53 = (&v251 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v54);
  v313 = (&v251 - v55);
  v312 = type metadata accessor for FMIPHistoricalLocation();
  v271 = *(v312 - 8);
  __chkstk_darwin(v312);
  v311 = &v251 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = type metadata accessor for FMIPDevice();
  v59 = __chkstk_darwin(v307);
  v308 = &v251 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = *(a1 + 16);
  if (!v297)
  {
LABEL_100:
    if (qword_1006AEBE0 != -1)
    {
      goto LABEL_107;
    }

    goto LABEL_101;
  }

  v61 = 0;
  v63 = *(v57 + 16);
  v62 = v57 + 16;
  v294 = v63;
  v293 = a1 + ((*(v62 + 64) + 32) & ~*(v62 + 64));
  v301 = (v15 + 48);
  v287 = (v15 + 32);
  v288 = (v15 + 8);
  v283 = (v25 + 56);
  v291 = (v62 - 8);
  v299 = (v25 + 48);
  v280 = (v25 + 32);
  v282 = (v25 + 16);
  v281 = (v25 + 8);
  v309 = (v271 + 8);
  v310 = v271 + 16;
  v260 = (v15 + 16);
  v295 = v62;
  v292 = *(v62 + 56);
  v59.n128_u64[0] = 136315651;
  v254 = v59;
  v59.n128_u64[0] = 136315138;
  v251 = v59;
  v316 = a4;
  v252 = v27;
  v277 = v32;
  v300 = v58;
LABEL_5:
  v64 = v308;
  v294(v308, v293 + v292 * v61, v307);
  v65 = FMIPDevice.identifier.getter();
  v67 = v66;
  v68 = FMIPDevice.identifier.getter();
  v306 = v61;
  if (v65 != v68 || v67 != v69)
  {
    v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v70 = v302;
    if (v71)
    {
      goto LABEL_9;
    }

    v115 = v268;
    FMIPDevice.bestLocation.getter();
    v116 = v305;
    v315 = *v301;
    v117 = v315(v115, 1, v305);
    v118 = v267;
    if (v117 == 1)
    {
      sub_100012DF0(v115, &unk_1006C0220);
    }

    else
    {
      (*v287)(v267, v115, v116);
      if (FMIPDevice.historicalLocations.getter())
      {
      }

      else if ((FMIPDevice.pairingIncomplete.getter() & 1) == 0)
      {
        v236 = v284;
        (*v283)(v284, 1, 1, v303);
        v237 = *(v317 + 48);

        v238 = v64;
        v239 = sub_1004BB7DC(v64, v236, 0, v118, v237);

        sub_100012DF0(v236, &qword_1006B07D0);
        *v53 = FMIPDevice.identifier.getter();
        v53[1] = v240;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        v241 = v239;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v319 = *(a4 + 16);
        *(a4 + 16) = 0x8000000000000000;
        sub_1001BCC70(v241, v53, isUniquelyReferenced_nonNull_native);
        sub_10002A100(v53, type metadata accessor for FMAnnotationIdentifier);
        *(a4 + 16) = v319;
        swift_endAccess();

        (*v288)(v118, v116);
        (*v291)(v238, v307);
        goto LABEL_4;
      }

      (*v288)(v118, v116);
    }

    v189 = v264;
    FMIPDevice.itemGroup.getter();
    v190 = v189;
    v191 = type metadata accessor for FMIPItemGroup();
    v192 = *(v191 - 8);
    v193 = *(v192 + 48);
    if (v193(v190, 1, v191) == 1)
    {
      (*v291)(v64, v307);
      sub_100012DF0(v190, &unk_1006BB1C0);
      goto LABEL_98;
    }

    sub_100012DF0(v190, &unk_1006BB1C0);
    if ((FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) == 0)
    {
      (*v291)(v64, v307);
      goto LABEL_98;
    }

    v194 = v253;
    FMIPDevice.itemGroup.getter();
    if (v193(v194, 1, v191) == 1)
    {
      sub_100012DF0(v194, &unk_1006BB1C0);
      v195 = _swiftEmptySetSingleton;
    }

    else
    {
      v195 = FMIPItemGroup.groupedItems.getter();
      (*(v192 + 8))(v194, v191);
    }

    v196 = v259;
    v197 = v258;
    v198 = 0;
    v199 = (v195 + 7);
    v200 = 1 << *(v195 + 32);
    if (v200 < 64)
    {
      v201 = ~(-1 << v200);
    }

    else
    {
      v201 = -1;
    }

    v202 = v201 & v195[7];
    v203 = (v200 + 63) >> 6;
    v304 = v203;
    v290 = v195 + 7;
    v314 = v195;
    while (1)
    {
      if (!v202)
      {
        while (1)
        {
          v204 = v198 + 1;
          if (__OFADD__(v198, 1))
          {
            goto LABEL_106;
          }

          if (v204 >= v203)
          {
            break;
          }

          v202 = *(v199 + 8 * v204);
          ++v198;
          if (v202)
          {
            v198 = v204;
            goto LABEL_88;
          }
        }

        (*v291)(v308, v307);

LABEL_98:
        v61 = v306;
LABEL_4:
        if (++v61 == v297)
        {
          goto LABEL_100;
        }

        goto LABEL_5;
      }

LABEL_88:
      v205 = __clz(__rbit64(v202));
      v202 &= v202 - 1;
      v206 = *(v195[6] + ((v198 << 9) | (8 * v205)));

      static FMIPItemGroup.primaryPart(group:)();
      sub_100007204(v197, v196, &qword_1006B07D0);
      v207 = v197;
      v208 = v303;
      if ((*v299)(v196, 1, v303) == 1)
      {
        break;
      }

      v289 = v206;
      v209 = v196;
      v210 = v265;
      (*v280)(v265, v209, v208);
      FMIPItem.location.getter();
      v211 = v266;
      v212 = v305;
      if (v315(v266, 1, v305) == 1)
      {

        (*v281)(v210, v208);
        v197 = v258;
        sub_100012DF0(v258, &qword_1006B07D0);
        sub_100012DF0(v211, &unk_1006C0220);
        v196 = v259;
        goto LABEL_81;
      }

      (*v287)(v261, v211, v212);
      v195 = v314;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v213 = type metadata accessor for Logger();
      sub_100005B14(v213, qword_1006D4630);
      v214 = v252;
      v274 = *v282;
      v274(v252, v265, v303);
      v215 = Logger.logObject.getter();
      v216 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v215, v216))
      {
        v217 = v216;
        v218 = swift_slowAlloc();
        v273 = swift_slowAlloc();
        v320 = v273;
        *v218 = v251.n128_u32[0];
        v219 = FMIPItem.debugDescription.getter();
        v221 = v220;
        v222 = *v281;
        v275 = (v281 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v276 = v222;
        v222(v214, v303);
        v223 = sub_100005B4C(v219, v221, &v320);
        a4 = v316;

        *(v218 + 4) = v223;
        _os_log_impl(&_mh_execute_header, v215, v217, "FMMapViewDataSource: Creating annotation for item %s", v218, 0xCu);
        sub_100006060(v273);
      }

      else
      {

        v224 = *v281;
        v275 = (v281 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v276 = v224;
        v224(v214, v303);
      }

      v225 = v289;
      v226 = FMIPDevice.identifier.getter();
      v228 = v227;
      v229 = v265;
      v230 = FMIPItem.identifier.getter();
      *v53 = v226;
      v53[1] = v228;
      v53[2] = v230;
      v53[3] = v231;
      swift_storeEnumTagMultiPayload();
      v232 = v284;
      v233 = v303;
      v274(v284, v229, v303);
      (*v283)(v232, 0, 1, v233);
      v234 = *(v317 + 48);

      v289 = sub_1004BB7DC(v308, v232, v225, v261, v234);

      sub_100012DF0(v232, &qword_1006B07D0);
      swift_beginAccess();
      v235 = swift_isUniquelyReferenced_nonNull_native();
      v319 = *(a4 + 16);
      *(a4 + 16) = 0x8000000000000000;
      sub_1001BCC70(v289, v53, v235);
      *(a4 + 16) = v319;
      swift_endAccess();
      sub_10002A100(v53, type metadata accessor for FMAnnotationIdentifier);
      (*v288)(v261, v305);
      v276(v229, v303);
      v197 = v258;
      sub_100012DF0(v258, &qword_1006B07D0);
      v196 = v259;
LABEL_82:
      v203 = v304;
      v199 = v290;
    }

    sub_100012DF0(v207, &qword_1006B07D0);

    sub_100012DF0(v196, &qword_1006B07D0);
    v197 = v207;
LABEL_81:
    v195 = v314;
    goto LABEL_82;
  }

  v70 = v302;
LABEL_9:
  v289 = FMIPDevice.identifier.getter();
  v304 = v72;
  v73 = FMIPDevice.historicalLocations.getter();
  if (v73)
  {
    v74 = *(v73 + 16);
    v290 = v73;
    if (v74)
    {
      v75 = v73 + ((*(v271 + 80) + 32) & ~*(v271 + 80));
      v76 = *(v271 + 72);
      v314 = *(v271 + 16);
      v315 = v76;
      v77 = _swiftEmptyArrayStorage;
      while (1)
      {
        v79 = v311;
        v80 = v312;
        (v314)(v311, v75, v312);
        v81 = FMIPHistoricalLocation.location.getter();
        (*v309)(v79, v80);
        v82 = objc_allocWithZone(type metadata accessor for FMTrackAnnotation());
        v83 = sub_10042620C(v81);

        v84 = OBJC_IVAR____TtC6FindMy17FMTrackAnnotation_location;
        v85 = *&v83[OBJC_IVAR____TtC6FindMy17FMTrackAnnotation_location];
        v86 = sub_1002CEAA0();
        v88 = v87;

        v89 = v313;
        *v313 = v86;
        *(v89 + 8) = v88;
        swift_storeEnumTagMultiPayload();
        v90 = *(v317 + 48);
        if (!*(v90 + 16))
        {
          goto LABEL_21;
        }

        v91 = sub_1001B4074(v89);
        if ((v92 & 1) == 0)
        {
          break;
        }

        v93 = *(*(v90 + 56) + 8 * v91);
        sub_10002A100(v89, type metadata accessor for FMAnnotationIdentifier);

        v94 = *&v83[v84];
        v95 = sub_1002CEAA0();
        v97 = v96;

        *v53 = v95;
        v53[1] = v97;
        a4 = v316;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        v98 = v93;
        v99 = swift_isUniquelyReferenced_nonNull_native();
        v319 = *(a4 + 16);
        *(a4 + 16) = 0x8000000000000000;
        sub_1001BCC70(v98, v53, v99);
        sub_10002A100(v53, type metadata accessor for FMAnnotationIdentifier);
        *(a4 + 16) = v319;
        swift_endAccess();
        [v98 coordinate];
        v101 = v100;
        v103 = v102;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_10008C658(0, *(v77 + 2) + 1, 1, v77);
        }

        v105 = *(v77 + 2);
        v104 = *(v77 + 3);
        v106 = v105 + 1;
        if (v105 >= v104 >> 1)
        {
          v77 = sub_10008C658((v104 > 1), v105 + 1, 1, v77);
        }

LABEL_13:
        *(v77 + 2) = v106;
        v78 = &v77[16 * v105];
        *(v78 + 4) = v101;
        *(v78 + 5) = v103;
        v75 += v315;
        if (!--v74)
        {
          goto LABEL_28;
        }
      }

LABEL_21:
      sub_10002A100(v89, type metadata accessor for FMAnnotationIdentifier);
      v107 = *&v83[v84];
      v108 = sub_1002CEAA0();
      v110 = v109;

      *v53 = v108;
      v53[1] = v110;
      a4 = v316;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      v98 = v83;
      v111 = swift_isUniquelyReferenced_nonNull_native();
      v319 = *(a4 + 16);
      *(a4 + 16) = 0x8000000000000000;
      sub_1001BCC70(v98, v53, v111);
      sub_10002A100(v53, type metadata accessor for FMAnnotationIdentifier);
      *(a4 + 16) = v319;
      swift_endAccess();
      [v98 coordinate];
      v101 = v112;
      v103 = v113;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_10008C658(0, *(v77 + 2) + 1, 1, v77);
      }

      v105 = *(v77 + 2);
      v114 = *(v77 + 3);
      v106 = v105 + 1;
      if (v105 >= v114 >> 1)
      {
        v77 = sub_10008C658((v114 > 1), v105 + 1, 1, v77);
      }

      goto LABEL_13;
    }

    v77 = _swiftEmptyArrayStorage;
LABEL_28:

    v119 = *(v77 + 2);
    if (v119 <= 1)
    {

      v70 = v302;
    }

    else
    {
      v120 = [objc_opt_self() polylineWithCoordinates:v77 + 32 count:v119];

      v121 = v270;
      swift_beginAccess();
      v122 = v120;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v70 = v302;
      if (*((*(v121 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v121 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }

    v61 = v306;
  }

  FMIPDevice.itemGroup.getter();
  v123 = type metadata accessor for FMIPItemGroup();
  v124 = *(v123 - 8);
  v125 = *(v124 + 48);
  if (v125(v70, 1, v123) == 1)
  {

    sub_100012DF0(v70, &unk_1006BB1C0);
    goto LABEL_40;
  }

  sub_100012DF0(v70, &unk_1006BB1C0);
  if ((FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) == 0)
  {

LABEL_40:
    v128 = v285;
    v129 = v308;
    FMIPDevice.bestLocation.getter();
    v130 = v305;
    if ((*v301)(v128, 1, v305) == 1)
    {
      (*v291)(v129, v307);
      sub_100012DF0(v128, &unk_1006C0220);
    }

    else
    {
      v131 = v269;
      (*v287)(v269, v128, v130);
      *v53 = FMIPDevice.identifier.getter();
      v53[1] = v132;
      swift_storeEnumTagMultiPayload();
      v133 = v284;
      (*v283)(v284, 1, 1, v303);
      v134 = *(v317 + 48);

      v135 = sub_1004BB7DC(v129, v133, 0, v131, v134);

      sub_100012DF0(v133, &qword_1006B07D0);
      swift_beginAccess();
      v136 = swift_isUniquelyReferenced_nonNull_native();
      v319 = *(a4 + 16);
      *(a4 + 16) = 0x8000000000000000;
      sub_1001BCC70(v135, v53, v136);
      sub_10002A100(v53, type metadata accessor for FMAnnotationIdentifier);
      *(a4 + 16) = v319;
      swift_endAccess();
      (*v288)(v131, v130);
      (*v291)(v129, v307);
    }

    goto LABEL_4;
  }

  v126 = v262;
  FMIPDevice.itemGroup.getter();
  if (v125(v126, 1, v123) == 1)
  {
    sub_100012DF0(v126, &unk_1006BB1C0);
    v127 = _swiftEmptySetSingleton;
  }

  else
  {
    v127 = FMIPItemGroup.groupedItems.getter();
    (*(v124 + 8))(v126, v123);
  }

  v137 = v303;
  v138 = v286;
  a4 = 0;
  v139 = v127 + 7;
  v140 = 1 << *(v127 + 32);
  if (v140 < 64)
  {
    v141 = ~(-1 << v140);
  }

  else
  {
    v141 = -1;
  }

  v142 = v141 & v127[7];
  v143 = (v140 + 63) >> 6;
  v314 = v143;
  v315 = v127;
  while (v142)
  {
LABEL_56:
    v145 = __clz(__rbit64(v142));
    v142 &= v142 - 1;
    v146 = *(v127[6] + ((a4 << 9) | (8 * v145)));

    v147 = v300;
    static FMIPItemGroup.primaryPart(group:)();
    sub_100007204(v147, v138, &qword_1006B07D0);
    if ((*v299)(v138, 1, v137) == 1)
    {
      sub_100012DF0(v147, &qword_1006B07D0);

      sub_100012DF0(v138, &qword_1006B07D0);
    }

    else
    {
      v290 = v146;
      v148 = v296;
      (*v280)(v296, v138, v137);
      v149 = v279;
      v150 = v148;
      FMIPItem.location.getter();
      v151 = v305;
      if ((*v301)(v149, 1, v305) == 1)
      {

        (*v281)(v150, v137);
        sub_100012DF0(v300, &qword_1006B07D0);
        sub_100012DF0(v149, &unk_1006C0220);
      }

      else
      {
        v152 = v278;
        (*v287)(v278, v149, v151);
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v153 = type metadata accessor for Logger();
        sub_100005B14(v153, qword_1006D4630);
        v273 = *v282;
        v273(v277, v296, v303);
        v154 = v263;
        (*v260)(v263, v152, v151);
        v155 = v304;

        v156 = Logger.logObject.getter();
        v157 = static os_log_type_t.default.getter();

        v158 = os_log_type_enabled(v156, v157);
        v159 = v288;
        v276 = (v288 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        if (v158)
        {
          v160 = swift_slowAlloc();
          v256 = v157;
          v161 = v160;
          v257 = swift_slowAlloc();
          v320 = v257;
          *v161 = v254.n128_u32[0];
          v162 = v277;
          v163 = FMIPItem.debugDescription.getter();
          v255 = v156;
          v165 = v164;
          v166 = *v281;
          v274 = (v281 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v275 = v166;
          v166(v162, v303);
          v167 = sub_100005B4C(v163, v165, &v320);

          *(v161 + 4) = v167;
          *(v161 + 12) = 2080;
          v168 = v155;
          v169 = v305;
          *(v161 + 14) = sub_100005B4C(v289, v168, &v320);
          *(v161 + 22) = 2081;
          v170 = FMIPLocation.debugDescription.getter();
          v172 = v171;
          v272 = *v288;
          v272(v154, v169);
          v173 = sub_100005B4C(v170, v172, &v320);

          *(v161 + 24) = v173;
          v174 = v255;
          _os_log_impl(&_mh_execute_header, v255, v256, "FMMapViewDataSource: Creating annotation for item %s, groupIdentifier: %s - %{private}s", v161, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          v272 = *v159;
          v272(v154, v151);
          v175 = *v281;
          v274 = (v281 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v275 = v175;
          v175(v277, v303);
        }

        v176 = v308;
        v177 = FMIPDevice.identifier.getter();
        v179 = v178;
        v180 = v296;
        v181 = FMIPItem.identifier.getter();
        *v53 = v177;
        v53[1] = v179;
        v53[2] = v181;
        v53[3] = v182;
        swift_storeEnumTagMultiPayload();
        v183 = v284;
        v184 = v303;
        v273(v284, v180, v303);
        (*v283)(v183, 0, 1, v184);
        v185 = *(v317 + 48);

        v186 = v278;
        v273 = sub_1004BB7DC(v176, v183, v290, v278, v185);

        sub_100012DF0(v183, &qword_1006B07D0);
        v187 = v316;
        swift_beginAccess();
        v188 = swift_isUniquelyReferenced_nonNull_native();
        v319 = *(v187 + 16);
        *(v187 + 16) = 0x8000000000000000;
        sub_1001BCC70(v273, v53, v188);
        *(v187 + 16) = v319;
        swift_endAccess();
        sub_10002A100(v53, type metadata accessor for FMAnnotationIdentifier);
        v272(v186, v305);
        v275(v296, v184);
        sub_100012DF0(v300, &qword_1006B07D0);
        v137 = v184;
      }

      v138 = v286;
    }

    v143 = v314;
    v127 = v315;
  }

  while (1)
  {
    v144 = a4 + 1;
    if (__OFADD__(a4, 1))
    {
      break;
    }

    if (v144 >= v143)
    {
      (*v291)(v308, v307);

      a4 = v316;
      goto LABEL_98;
    }

    v142 = v139[v144];
    ++a4;
    if (v142)
    {
      a4 = v144;
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  swift_once();
LABEL_101:
  v243 = type metadata accessor for Logger();
  sub_100005B14(v243, qword_1006D4630);

  v244 = Logger.logObject.getter();
  v245 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v244, v245))
  {
    v246 = swift_slowAlloc();
    *v246 = 134217984;
    swift_beginAccess();
    *(v246 + 4) = *(*(a4 + 16) + 16);

    _os_log_impl(&_mh_execute_header, v244, v245, "FMMapViewDataSource: result %ld", v246, 0xCu);
  }

  else
  {
  }

  swift_beginAccess();
  v247 = *(a4 + 16);
  v248 = v270;
  swift_beginAccess();
  v249 = *(v248 + 16);

  sub_100012E50(v247, v249);
}

uint64_t sub_1004BB7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v248 = a5;
  v249 = a4;
  v250 = a2;
  v264 = a1;
  v236 = type metadata accessor for FMIPConfigValue();
  v235 = *(v236 - 8);
  __chkstk_darwin(v236);
  v234 = &v212 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v240 = *(v241 - 8);
  __chkstk_darwin(v241);
  v239 = &v212 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8 - 8);
  v238 = &v212 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for DispatchQoS();
  v222 = *(v223 - 8);
  __chkstk_darwin(v223);
  v251 = &v212 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for DispatchWorkItemFlags();
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v226 = &v212 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = type metadata accessor for FMIPItem();
  v253 = *(v257 - 8);
  __chkstk_darwin(v257);
  v232 = &v212 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v228 = &v212 - v14;
  v247 = type metadata accessor for FMAnnotationIdentifier();
  __chkstk_darwin(v247);
  v261 = (&v212 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10007EBC0(&qword_1006B07D0);
  v218 = *(v16 - 8);
  __chkstk_darwin(v16 - 8);
  v237 = &v212 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v259 = &v212 - v19;
  __chkstk_darwin(v20);
  v243 = &v212 - v21;
  __chkstk_darwin(v22);
  v252 = &v212 - v23;
  v219 = v24;
  __chkstk_darwin(v25);
  v246 = &v212 - v26;
  v27 = sub_10007EBC0(&unk_1006C2470);
  __chkstk_darwin(v27 - 8);
  v254 = &v212 - v28;
  v29 = sub_10007EBC0(&unk_1006BB1C0);
  __chkstk_darwin(v29 - 8);
  v227 = &v212 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v258 = (&v212 - v32);
  v33 = type metadata accessor for FMIPItemGroup();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v225 = &v212 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for FMIPDevice();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v262 = &v212 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = v38;
  __chkstk_darwin(v39);
  v41 = &v212 - v40;
  v245 = type metadata accessor for FMIPDeviceImageCacheRequest();
  v244 = *(v245 - 8);
  __chkstk_darwin(v245);
  v43 = (&v212 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v44);
  v242 = &v212 - v45;
  __chkstk_darwin(v46);
  v48 = &v212 - v47;
  v49 = type metadata accessor for FMIPDeviceImageSize();
  __chkstk_darwin(v49);
  __chkstk_darwin(v50);
  __chkstk_darwin(v51);
  v53 = &v212 - v52;
  v59 = __chkstk_darwin(v54);
  v230 = v33;
  v229 = v34;
  v263 = v36;
  v256 = v37;
  v233 = v41;
  v255 = v56;
  if (a3)
  {
    v60 = &v212 - v55;
    v61 = v56;
    (*(v56 + 104))(&v212 - v55, enum case for FMIPDeviceImageSize.list(_:), v49, v59);
    v258 = *(v37 + 16);
    v258(v41, v264, v36);
    v62 = *(v61 + 16);
    v224 = v60;
    v216 = v62;
    v62(v53, v60, v49);
    v63 = objc_opt_self();

    v215 = v63;
    v64 = [v63 mainScreen];
    [v64 scale];

    FMIPDeviceImageCacheRequest.init(itemParts:device:size:scale:)();
    v225 = v48;
    v65 = v49;
    dispatch thunk of FMImageCache.cachedImage(for:completion:)();
    if (aBlock[0])
    {
      v242 = aBlock[0];

      v66 = v257;
      v67 = v253;
      v68 = v250;
      v69 = v224;
      (*(v244 + 8))(v225, v245);
    }

    else
    {
      v258(v41, v264, v263);
      v231 = v49;
      v80 = v224;
      v216(v53, v224, v49);
      v81 = [v215 mainScreen];
      [v81 scale];

      v82 = v242;
      FMIPDeviceImageCacheRequest.init(device:size:scale:)();
      dispatch thunk of FMImageCache.cachedImage(for:completion:)();
      v83 = *(v244 + 8);
      v84 = v245;
      v83(v82, v245);

      v242 = v267;
      v66 = v257;
      v67 = v253;
      v68 = v250;
      v69 = v80;
      v65 = v231;
      v83(v225, v84);
    }

    (*(v255 + 8))(v69, v65);
    v79 = v264;
  }

  else
  {
    v70 = v58;
    v71 = v57;
    v216 = v43;
    v224 = v53;
    v231 = v49;
    v72 = v258;
    FMIPDevice.itemGroup.getter();
    if ((*(v34 + 48))(v72, 1, v33) != 1)
    {
      (*(v34 + 32))(v225, v72, v33);

      v93 = FMIPItemGroup.items.getter();
      v214 = sub_10053840C(v93);

      v94 = v255;
      v95 = v231;
      (*(v255 + 104))(v71, enum case for FMIPDeviceImageSize.list(_:), v231);
      v96 = *(v37 + 16);
      v97 = v233;
      v96(v233, v264, v36);
      v98 = *(v94 + 16);
      v99 = v224;
      v215 = v71;
      v213 = v98;
      v98(v224, v71, v95);
      v100 = objc_opt_self();
      v101 = [v100 mainScreen];
      [v101 scale];

      FMIPDeviceImageCacheRequest.init(itemParts:device:size:scale:)();
      dispatch thunk of FMImageCache.cachedImage(for:completion:)();
      v258 = v96;
      if (aBlock[0])
      {
        v242 = aBlock[0];

        v66 = v257;
        v68 = v250;
        v86 = v246;
        (*(v244 + 8))(v216, v245);
      }

      else
      {
        v96(v97, v264, v36);
        v213(v99, v215, v231);
        v200 = [v100 mainScreen];
        [v200 scale];

        v201 = v242;
        FMIPDeviceImageCacheRequest.init(device:size:scale:)();
        dispatch thunk of FMImageCache.cachedImage(for:completion:)();
        v202 = *(v244 + 8);
        v203 = v201;
        v204 = v245;
        v202(v203, v245);

        v242 = v267;
        v66 = v257;
        v68 = v250;
        v86 = v246;
        v202(v216, v204);
      }

      (*(v255 + 8))(v215, v231);
      (*(v229 + 8))(v225, v230);
      v67 = v253;
      v79 = v264;
      v85 = v252;
      goto LABEL_9;
    }

    sub_100012DF0(v72, &unk_1006BB1C0);
    v73 = v255;
    v74 = v224;
    v75 = v231;
    (*(v255 + 104))(v224, enum case for FMIPDeviceImageSize.list(_:), v231);
    v258 = *(v37 + 16);
    v258(v233, v264, v36);
    (*(v73 + 16))(v70, v74, v75);
    v76 = objc_opt_self();

    v77 = [v76 mainScreen];
    [v77 scale];

    v78 = v242;
    FMIPDeviceImageCacheRequest.init(device:size:scale:)();
    dispatch thunk of FMImageCache.cachedImage(for:completion:)();
    (*(v244 + 8))(v78, v245);

    v242 = aBlock[0];
    (*(v73 + 8))(v74, v75);
    v66 = v257;
    v67 = v253;
    v68 = v250;
    v79 = v264;
  }

  v85 = v252;
  v86 = v246;
LABEL_9:
  sub_100007204(v68, v86, &qword_1006B07D0);
  v260 = *(v67 + 48);
  if (v260(v86, 1, v66) == 1)
  {
    sub_100012DF0(v86, &qword_1006B07D0);
    v254 = 0;
  }

  else
  {
    FMIPItem.partInfo.getter();
    v87 = v254;
    (*(v67 + 8))(v86, v66);
    v88 = type metadata accessor for FMIPPartInfo();
    v89 = *(v88 - 8);
    if ((*(v89 + 48))(v87, 1, v88) == 1)
    {
      sub_100012DF0(v87, &unk_1006C2470);
      v254 = 0;
      v79 = v264;
    }

    else
    {
      FMIPPartInfo.symbol.getter();
      v91 = v90;
      (*(v89 + 8))(v87, v88);
      if (v91)
      {
        v92 = String._bridgeToObjectiveC()();
        v254 = [objc_opt_self() systemImageNamed:v92];
      }

      else
      {
        v254 = 0;
      }

      v79 = v264;
      v85 = v252;
    }
  }

  sub_100007204(v68, v85, &qword_1006B07D0);
  v102 = v260(v85, 1, v66);
  v255 = v67 + 48;
  if (v102 == 1)
  {
    sub_100012DF0(v85, &qword_1006B07D0);
    v103 = FMIPDevice.identifier.getter();
    v104 = v261;
    *v261 = v103;
    v104[1] = v105;
    swift_storeEnumTagMultiPayload();
    v252 = sub_1004C4B28(v79);
    v264 = v106;
  }

  else
  {
    v107 = v228;
    (*(v67 + 32))(v228, v85, v66);
    v108 = FMIPDevice.identifier.getter();
    v110 = v109;
    v111 = FMIPItem.identifier.getter();
    v112 = v261;
    *v261 = v108;
    v112[1] = v110;
    v112[2] = v111;
    v112[3] = v113;
    swift_storeEnumTagMultiPayload();
    v252 = sub_1004C43F0(v107, v79);
    v264 = v114;
    (*(v67 + 8))(v107, v66);
  }

  v115 = v262;
  v116 = v248;
  if (*(v248 + 16))
  {
    v117 = sub_1001B4074(v261);
    if (v118)
    {
      v119 = *(*(v116 + 56) + 8 * v117);
      type metadata accessor for FMDeviceAnnotation();
      v120 = swift_dynamicCastClass();
      if (v120)
      {
        v121 = v120;
        v262 = v119;
        v122 = FMIPLocation.location.getter();
        [v122 coordinate];
        v124 = v123;
        v126 = v125;

        v127 = FMIPLocation.location.getter();
        [v127 horizontalAccuracy];
        v129 = v128;

        v260 = *&v121[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_updateQueue];
        static DispatchWorkItemFlags.barrier.getter();
        v130 = v256;
        v258(v233, v79, v263);
        v131 = v243;
        sub_100007204(v68, v243, &qword_1006B07D0);
        v132 = (*(v130 + 80) + 32) & ~*(v130 + 80);
        v133 = (v217 + *(v218 + 80) + v132) & ~*(v218 + 80);
        v134 = (v219 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
        v135 = (v134 + 15) & 0xFFFFFFFFFFFFFFF8;
        v136 = (v135 + 23) & 0xFFFFFFFFFFFFFFF8;
        v137 = swift_allocObject();
        *(v137 + 16) = v129;
        *(v137 + 24) = v121;
        (*(v130 + 32))(v137 + v132, v233, v263);
        sub_100035318(v131, v137 + v133, &qword_1006B07D0);
        v138 = v242;
        *(v137 + v134) = v242;
        v139 = (v137 + v135);
        *v139 = v124;
        v139[1] = v126;
        v140 = (v137 + v136);
        v141 = v264;
        *v140 = v252;
        v140[1] = v141;
        v142 = v254;
        *(v137 + ((v136 + 23) & 0xFFFFFFFFFFFFFFF8)) = v254;
        aBlock[4] = sub_1004D1B9C;
        aBlock[5] = v137;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004AE4;
        aBlock[3] = &unk_1006426E0;
        v143 = _Block_copy(aBlock);
        v144 = v142;
        v145 = v262;
        v146 = v138;
        v147 = v251;
        static DispatchQoS.unspecified.getter();
        v148 = v226;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v143);

        (*(v222 + 8))(v147, v223);
        (*(v220 + 8))(v148, v221);
        sub_10002A100(v261, type metadata accessor for FMAnnotationIdentifier);

        return v121;
      }
    }
  }

  v149 = FMIPLocation.location.getter();
  [v149 coordinate];
  v151 = v150;
  v153 = v152;

  v154 = FMIPLocation.location.getter();
  [v154 horizontalAccuracy];
  v156 = v155;
  v157 = v155;

  v258(v115, v79, v263);
  sub_100007204(v68, v259, &qword_1006B07D0);
  v158 = objc_allocWithZone(type metadata accessor for FMDeviceAnnotation());
  v159 = OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceImage;
  *&v158[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceImage] = 0;
  v160 = OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_updateQueue;
  sub_10000905C(0, &qword_1006AEDC0);
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v240 + 104))(v239, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v241);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v158[v160] = result;
  if ((*&v157 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v156 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v156 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v162 = v235;
  v163 = v234;
  v164 = v236;
  (*(v235 + 104))(v234, enum case for FMIPConfigValue.inaccuracyRadiusThreshold(_:), v236);
  v267 = 0x7FFFFFFFFFFFFFFFLL;
  FMIPGlobalConfig<A>(_:fallback:)();
  (*(v162 + 8))(v163, v164);
  v165 = aBlock[0] < v156;
  sub_10007EBC0(&unk_1006C2480);
  v166 = swift_allocObject();
  *(v166 + ((*(*v166 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v258((v166 + *(*v166 + class metadata base offset for ManagedBuffer + 16)), v262, v263);
  *&v158[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceLock] = v166;
  v167 = v259;
  v168 = v243;
  sub_100007204(v259, v243, &qword_1006B07D0);
  sub_10007EBC0(&unk_1006BB1D0);
  v169 = swift_allocObject();
  *(v169 + ((*(*v169 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_100007204(v168, v169 + *(*v169 + class metadata base offset for ManagedBuffer + 16), &qword_1006B07D0);
  sub_100012DF0(v168, &qword_1006B07D0);
  *&v158[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_partLock] = v169;
  v170 = *&v158[v159];
  v171 = v242;
  *&v158[v159] = v242;
  v172 = v171;

  v173 = &v158[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_tempCoordinate];
  *v173 = v151;
  v173[1] = v153;
  v174 = &v158[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
  *v174 = 0;
  v174[1] = 0;
  *&v158[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
  *&v158[OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage] = 0;
  v175 = &v158[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
  v176 = v264;
  *v175 = v252;
  v175[1] = v176;
  v177 = &v158[OBJC_IVAR____TtC6FindMy12FMAnnotation_coordinate];
  *v177 = v151;
  v177[1] = v153;
  *&v158[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = v156;
  v158[OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou] = v176 == 1;
  v158[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = v165;
  v158[OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive] = 0;
  v178 = type metadata accessor for FMAnnotation();
  v266.receiver = v158;
  v266.super_class = v178;
  v179 = objc_msgSendSuper2(&v266, "init");
  v180 = *&v179[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage];
  v181 = v254;
  *&v179[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = v254;
  v182 = v179;
  v183 = v181;
  v121 = v182;

  v184 = v237;
  sub_100007204(v167, v237, &qword_1006B07D0);
  v185 = v257;
  if (v260(v184, 1, v257) == 1)
  {
    sub_100012DF0(v184, &qword_1006B07D0);
    v186 = 0;
LABEL_42:
    v205 = v259;
    v206 = v260(v259, 1, v185) != 1;
    v207 = v262;
    v208 = sub_1002642B0(v262, v205, v186, v206);
    v210 = v209;

    (*(v256 + 8))(v207, v263);
    sub_10002A100(v261, type metadata accessor for FMAnnotationIdentifier);
    v211 = &v121[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
    *v211 = v208;
    v211[1] = v210;

    sub_100012DF0(v205, &qword_1006B07D0);
    return v121;
  }

  v187 = v172;
  v188 = v253;
  v189 = v232;
  (*(v253 + 32))(v232, v184, v185);
  v190 = v227;
  FMIPDevice.itemGroup.getter();
  v191 = v229;
  v192 = v230;
  if ((*(v229 + 48))(v190, 1, v230) == 1)
  {
    sub_100012DF0(v190, &unk_1006BB1C0);
LABEL_37:
    (*(v188 + 8))(v189, v185);
    v186 = 0;
    v172 = v187;
    goto LABEL_42;
  }

  v193 = FMIPItemGroup.groupedItems.getter();
  v194 = (*(v191 + 8))(v190, v192);
  __chkstk_darwin(v194);
  *(&v212 - 2) = v189;
  v195 = sub_100110710(sub_1002F5958, (&v212 - 4), v193);
  v189 = v232;
  v196 = v195;

  if (!v196)
  {
    goto LABEL_37;
  }

  v197 = *(v196 + 16);
  v172 = v187;
  if (!v197)
  {

    v186 = _swiftEmptyArrayStorage;
    v199 = v232;
    goto LABEL_41;
  }

  v186 = sub_10008C8B4(*(v196 + 16), 0);
  v198 = sub_1004A2330(aBlock, &v186[(*(v188 + 80) + 32) & ~*(v188 + 80)], v197, v196);
  result = sub_10000BEC8();
  if (v198 == v197)
  {
    v199 = v232;
LABEL_41:
    (*(v188 + 8))(v199, v185);
    goto LABEL_42;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1004BD720(uint64_t a1)
{
  v92 = a1;
  v86 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v83 = v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchQoS();
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&qword_1006AF740);
  __chkstk_darwin(v4 - 8);
  v87 = v77 - v5;
  v6 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v6 - 8);
  v89 = (v77 - v7);
  v8 = type metadata accessor for FMFFriend();
  v91 = *(v8 - 8);
  v9 = v91[8];
  v10 = __chkstk_darwin(v8);
  v80 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v79 = v77 - v12;
  v13 = __chkstk_darwin(v11);
  v88 = v77 - v14;
  __chkstk_darwin(v13);
  v16 = v77 - v15;
  v17 = type metadata accessor for FMSelectedSection();
  v18 = __chkstk_darwin(v17);
  v90 = v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = v77 - v21;
  __chkstk_darwin(v20);
  v24 = v77 - v23;
  v95 = swift_allocObject();
  *(v95 + 16) = &_swiftEmptyDictionarySingleton;
  v93 = v1;
  v25 = *(*(v1 + 16) + 56);
  v26 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v25 + v26, v24, type metadata accessor for FMSelectedSection);
  v94 = v24;
  sub_100027BE0(v24, v22, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v27 = v91;
    v28 = v91[4];
    v29 = v28(v16, v22, v8);
    __chkstk_darwin(v29);
    v77[-2] = v16;
    v30 = v89;
    v31 = v92;
    sub_1000341A8(sub_1004D1AB0, v92, v89);
    v32 = (v27[6])(v30, 1, v8);
    v33 = v8;
    v34 = v27;
    v35 = v16;
    if (v32 == 1)
    {
      sub_100012DF0(v30, &qword_1006B0050);
LABEL_15:
      *(v93 + 58) = 0;
      sub_100012488(v31);
      sub_10002A100(v94, type metadata accessor for FMSelectedSection);
      (v34[1])(v35, v33);
    }

    v46 = v88;
    v89 = v28;
    v28(v88, v30, v33);
    v47 = v33;
    v48 = v87;
    FMFFriend.location.getter();
    v49 = v48;
    v50 = type metadata accessor for FMFLocation();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v49, 1, v50) == 1)
    {
      (v34[1])(v46, v47);
      sub_100012DF0(v49, &qword_1006AF740);
      v33 = v47;
      goto LABEL_15;
    }

    v90 = v35;
    v52 = FMFLocation.location.getter();
    (*(v51 + 8))(v49, v50);
    v87 = v52;
    if (!v52)
    {
      v33 = v47;
      (v34[1])(v46, v47);
      v35 = v90;
      goto LABEL_15;
    }

    v77[1] = *(v93 + 88);
    v53 = v34[2];
    v54 = v79;
    v78 = v47;
    v53(v79, v46, v47);
    v55 = v80;
    v53(v80, v90, v47);
    v56 = *(v34 + 80);
    v57 = (v56 + 24) & ~v56;
    v58 = v9 + 7;
    v59 = (v9 + 7 + v57) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
    v61 = (v56 + v60 + 8) & ~v56;
    v62 = (v58 + v61) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    *(v63 + 16) = v93;
    v64 = v63 + v57;
    v65 = v54;
    v66 = v78;
    v67 = v89;
    v89(v64, v65, v78);
    v68 = v87;
    *(v63 + v59) = v87;
    *(v63 + v60) = v92;
    v67(v63 + v61, v55, v66);
    *(v63 + v62) = v95;
    v100 = sub_1004D1AE4;
    v101 = v63;
    aBlock = _NSConcreteStackBlock;
    v97 = 1107296256;
    v98 = sub_100004AE4;
    v99 = &unk_100642640;
    v69 = _Block_copy(&aBlock);

    v70 = v68;

    v71 = v81;
    static DispatchQoS.unspecified.getter();
    v102 = &_swiftEmptyArrayStorage;
    sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
    v72 = v83;
    v73 = v86;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v69);

    (*(v85 + 8))(v72, v73);
    (*(v82 + 8))(v71, v84);
    v74 = v91[1];
    v75 = v78;
    v74(v88, v78);
    sub_10002A100(v94, type metadata accessor for FMSelectedSection);

    v74(v90, v75);
  }

  else
  {
    sub_10002A100(v22, type metadata accessor for FMSelectedSection);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100005B14(v36, qword_1006D4630);
    v37 = v94;
    v38 = v90;
    sub_100027BE0(v94, v90, type metadata accessor for FMSelectedSection);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v102 = v42;
      *v41 = 136315138;
      aBlock = 0;
      v97 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v43 = aBlock;
      v44 = v97;
      sub_10002A100(v38, type metadata accessor for FMSelectedSection);
      v45 = sub_100005B4C(v43, v44, &v102);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "FMMapViewDataSource: cannot fetch person value from selected section %s", v41, 0xCu);
      sub_100006060(v42);
    }

    else
    {

      sub_10002A100(v38, type metadata accessor for FMSelectedSection);
    }

    sub_10002A100(v37, type metadata accessor for FMSelectedSection);
  }
}

uint64_t sub_1004BE264(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v104 = a4;
  v105 = a5;
  v101 = a3;
  v8 = type metadata accessor for FMFFriend();
  v106 = *(v8 - 8);
  v107 = v8;
  __chkstk_darwin(v8);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMFLocationSource();
  v97 = *(v11 - 8);
  __chkstk_darwin(v11);
  v93 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_10007EBC0(&qword_1006B14A8);
  __chkstk_darwin(v96);
  v98 = &v89 - v13;
  v14 = sub_10007EBC0(&qword_1006AF740);
  v15 = __chkstk_darwin(v14 - 8);
  v100 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v95 = &v89 - v17;
  v18 = sub_10007EBC0(&unk_1006C2460);
  v19 = __chkstk_darwin(v18 - 8);
  v94 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v89 - v22;
  __chkstk_darwin(v21);
  v103 = &v89 - v24;
  v25 = type metadata accessor for FMAnnotationIdentifier();
  v26 = __chkstk_darwin(v25);
  v28 = (&v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v30 = (&v89 - v29);
  *v30 = FMFFriend.identifier.getter();
  v30[1] = v31;
  v102 = v25;
  swift_storeEnumTagMultiPayload();
  v32 = *(a1 + 48);
  if (!*(v32 + 16))
  {
    goto LABEL_7;
  }

  v33 = sub_1001B4074(v30);
  if ((v34 & 1) == 0)
  {

LABEL_7:
    sub_10002A100(v30, type metadata accessor for FMAnnotationIdentifier);
LABEL_8:
    v51 = 0;
    v52 = v104;
    goto LABEL_9;
  }

  v92 = v11;
  v35 = *(*(v32 + 56) + 8 * v33);
  sub_10002A100(v30, type metadata accessor for FMAnnotationIdentifier);

  type metadata accessor for FMPersonAnnotation();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {

    goto LABEL_8;
  }

  v37 = v36;
  v38 = v35;
  [v37 coordinate];
  v40 = v39;
  [v37 coordinate];
  v42 = v41;
  v91 = v38;

  v90 = [objc_allocWithZone(CLLocation) initWithLatitude:v40 longitude:v42];
  [v90 distanceFromLocation:v101];
  v44 = v43;
  v45 = v95;
  FMFFriend.location.getter();
  v46 = type metadata accessor for FMFLocation();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    sub_100012DF0(v45, &qword_1006AF740);
    v48 = 1;
    v49 = v92;
    v50 = v103;
  }

  else
  {
    v50 = v103;
    FMFLocation.locationSource.getter();
    (*(v47 + 8))(v45, v46);
    v48 = 0;
    v49 = v92;
  }

  v76 = v97;
  v77 = *(v97 + 56);
  v77(v50, v48, 1, v49);
  (*(v76 + 104))(v23, enum case for FMFLocationSource.secureLive(_:), v49);
  v77(v23, 0, 1, v49);
  v78 = *(v96 + 48);
  v79 = v50;
  v80 = v98;
  sub_100007204(v79, v98, &unk_1006C2460);
  v96 = v78;
  v81 = v80;
  sub_100007204(v23, v80 + v78, &unk_1006C2460);
  v82 = *(v76 + 48);
  if (v82(v81, 1, v49) != 1)
  {
    v95 = v23;
    v85 = v94;
    sub_100007204(v81, v94, &unk_1006C2460);
    if (v82(v81 + v96, 1, v49) != 1)
    {
      v86 = v97;
      v87 = v93;
      (*(v97 + 32))(v93, v81 + v96, v49);
      sub_10000A738(&qword_1006B14E0, &type metadata accessor for FMFLocationSource);
      LODWORD(v96) = dispatch thunk of static Equatable.== infix(_:_:)();
      v88 = *(v86 + 8);
      v88(v87, v49);
      sub_100012DF0(v95, &unk_1006C2460);
      sub_100012DF0(v103, &unk_1006C2460);
      v88(v94, v49);
      sub_100012DF0(v81, &unk_1006C2460);

      v52 = v104;
      if ((v96 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    sub_100012DF0(v95, &unk_1006C2460);
    v83 = v98;
    sub_100012DF0(v103, &unk_1006C2460);
    (*(v97 + 8))(v85, v49);
    v52 = v104;
LABEL_33:
    sub_100012DF0(v83, &qword_1006B14A8);

    goto LABEL_37;
  }

  sub_100012DF0(v23, &unk_1006C2460);
  v83 = v98;
  sub_100012DF0(v103, &unk_1006C2460);
  v84 = v82(v83 + v96, 1, v49);
  v52 = v104;
  if (v84 != 1)
  {
    goto LABEL_33;
  }

  sub_100012DF0(v83, &unk_1006C2460);

LABEL_35:
  if (v44 < 50000.0)
  {
    v51 = 1;
    goto LABEL_9;
  }

LABEL_37:
  v51 = 0;
LABEL_9:
  *(a1 + 57) = v51;
  *(a1 + 58) = 1;
  v53 = v52[2];
  if (v53)
  {
    v54 = *(v106 + 16);
    v55 = v52 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
    v103 = *(v106 + 72);
    v104 = v54;
    v106 += 16;
    v56 = (v106 - 8);
    v99 = a6;
    (v54)(v10, v55, v107);
    while (1)
    {
      v61 = FMFFriend.identifier.getter();
      v63 = v62;
      if (v61 == FMFFriend.identifier.getter() && v63 == v64)
      {
        break;
      }

      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v65)
      {
        goto LABEL_12;
      }

      v66 = a1;
      v67 = v100;
      FMFFriend.location.getter();
      v68 = type metadata accessor for FMFLocation();
      v69 = *(v68 - 8);
      if ((*(v69 + 48))(v67, 1, v68) == 1)
      {
        (*v56)(v10, v107);
        sub_100012DF0(v67, &qword_1006AF740);
      }

      else
      {
        v70 = FMFLocation.location.getter();
        (*(v69 + 8))(v67, v68);
        if (v70)
        {
          *v28 = FMFFriend.identifier.getter();
          v28[1] = v71;
          swift_storeEnumTagMultiPayload();
          a1 = v66;
          v72 = *(v66 + 48);

          v98 = sub_1004BEE98(v10, v70, v72);

          a6 = v99;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v108 = *(a6 + 16);
          *(a6 + 16) = 0x8000000000000000;
          sub_1001BCC70(v98, v28, isUniquelyReferenced_nonNull_native);
          sub_10002A100(v28, type metadata accessor for FMAnnotationIdentifier);
          *(a6 + 16) = v108;
          swift_endAccess();

          goto LABEL_13;
        }

        (*v56)(v10, v107);
      }

      a1 = v66;
      a6 = v99;
LABEL_14:
      v55 += v103;
      if (!--v53)
      {
        goto LABEL_25;
      }

      (v104)(v10, v55, v107);
    }

LABEL_12:
    *v28 = FMFFriend.identifier.getter();
    v28[1] = v57;
    swift_storeEnumTagMultiPayload();
    v58 = *(a1 + 48);

    v59 = sub_1004BEE98(v10, v101, v58);

    swift_beginAccess();
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v108 = *(a6 + 16);
    *(a6 + 16) = 0x8000000000000000;
    sub_1001BCC70(v59, v28, v60);
    sub_10002A100(v28, type metadata accessor for FMAnnotationIdentifier);
    *(a6 + 16) = v108;
    swift_endAccess();
LABEL_13:
    (*v56)(v10, v107);
    goto LABEL_14;
  }

LABEL_25:
  swift_beginAccess();

  sub_100012E50(v74, &_swiftEmptyArrayStorage);
}

uint64_t sub_1004BEE98(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchQoS();
  v58 = *(v6 - 8);
  v59 = v6;
  __chkstk_darwin(v6);
  v56 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v60 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&qword_1006B0050);
  v54 = *(v9 - 8);
  v10 = *(v54 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v12 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v53 - v13;
  v15 = type metadata accessor for FMAnnotationIdentifier();
  __chkstk_darwin(v15);
  v17 = (v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));

  v18 = sub_10002DCD8(a1, 0);

  *v17 = FMFFriend.identifier.getter();
  v17[1] = v19;
  swift_storeEnumTagMultiPayload();
  if (!*(a3 + 16) || (v20 = sub_1001B4074(v17), (v21 & 1) == 0))
  {
    sub_10002A100(v17, type metadata accessor for FMAnnotationIdentifier);
LABEL_6:
    [a2 coordinate];
    v44 = v43;
    v46 = v45;
    [a2 horizontalAccuracy];
    v48 = v47;
    v49 = type metadata accessor for FMFFriend();
    v50 = *(v49 - 8);
    (*(v50 + 16))(v14, a1, v49);
    (*(v50 + 56))(v14, 0, 1, v49);
    v51 = objc_allocWithZone(type metadata accessor for FMPersonAnnotation());
    v24 = sub_100339D48(v14, v18, 0, v44, v46, v48);

    return v24;
  }

  v22 = *(*(a3 + 56) + 8 * v20);
  sub_10002A100(v17, type metadata accessor for FMAnnotationIdentifier);
  type metadata accessor for FMPersonAnnotation();
  v23 = swift_dynamicCastClass();
  if (!v23)
  {

    goto LABEL_6;
  }

  v24 = v23;
  [a2 coordinate];
  v26 = v25;
  v28 = v27;
  [a2 horizontalAccuracy];
  v30 = v29;
  v31 = type metadata accessor for FMFFriend();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v14, a1, v31);
  (*(v32 + 56))(v14, 0, 1, v31);
  v53[1] = *(v24 + OBJC_IVAR____TtC6FindMy18FMPersonAnnotation_updateQueue);
  static DispatchWorkItemFlags.barrier.getter();
  v53[0] = v22;
  sub_100007204(v14, v12, &qword_1006B0050);
  v33 = (*(v54 + 80) + 25) & ~*(v54 + 80);
  v34 = (v10 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v30;
  *(v36 + 24) = 0;
  sub_100035318(v12, v36 + v33, &qword_1006B0050);
  *(v36 + v34) = v24;
  *(v36 + v35) = v18;
  v37 = (v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v37 = v26;
  v37[1] = v28;
  aBlock[4] = sub_1004D19F4;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006425F0;
  v38 = _Block_copy(aBlock);
  v39 = v18;
  v40 = v53[0];
  v41 = v56;
  static DispatchQoS.unspecified.getter();
  v42 = v60;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v38);

  (*(v58 + 8))(v41, v59);
  (*(v55 + 8))(v42, v57);
  sub_100012DF0(v14, &qword_1006B0050);

  return v24;
}

uint64_t sub_1004BF4C8(uint64_t a1)
{
  v2 = v1;
  v86 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v82 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchQoS();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v99 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_10007EBC0(&qword_1006B22E8);
  __chkstk_darwin(v112);
  v120 = &v79 - v9;
  v10 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v109 = &v79 - v14;
  __chkstk_darwin(v15);
  v108 = &v79 - v16;
  v121 = type metadata accessor for FMIPBeaconShare();
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for FMIPItem();
  v19 = *(v102 - 8);
  __chkstk_darwin(v102);
  v95 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v116 = &v79 - v22;
  v23 = swift_allocObject();
  *(v23 + 16) = &_swiftEmptyDictionarySingleton;
  v93 = *(a1 + 16);
  v80 = v23;
  if (v93)
  {
    v106 = v12;
    v111 = v6;
    v24 = 0;
    v101 = 0;
    v26 = *(v19 + 16);
    v25 = v19 + 16;
    v92 = v26;
    v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
    v98 = *(v25 + 56);
    v89 = v27;
    v91 = a1 + v27;
    v117 = (v119 + 8);
    v118 = v119 + 16;
    v110 = (v7 + 56);
    v97 = (v7 + 32);
    v104 = (v7 + 8);
    v87 = (v25 - 8);
    v94 = (v25 + 16);
    v96 = _swiftEmptyArrayStorage;
    v88 = v2;
    v105 = v18;
    v90 = v25;
    v107 = (v7 + 48);
    while (1)
    {
      v100 = v24;
      v28 = v116;
      v29 = v92(v116, v91 + v98 * v24, v102);
      v30 = *(*(v2[2] + 3) + 64);
      __chkstk_darwin(v29);
      *(&v79 - 2) = v28;

      v31 = v101;
      v32 = sub_1001048C4(sub_100109D8C, (&v79 - 4), v30);
      v101 = v31;

      v33 = *(v32 + 16);
      if (v33)
      {
        break;
      }

LABEL_21:
      v56 = *v94;
      (*v94)(v95, v116, v102);
      v57 = v96;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v57;
      aBlock = v57;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10016704C(0, v57[2] + 1, 1);
        v59 = aBlock;
      }

      v61 = v59[2];
      v60 = v59[3];
      if (v61 >= v60 >> 1)
      {
        sub_10016704C(v60 > 1, v61 + 1, 1);
        v59 = aBlock;
      }

      v59[2] = (v61 + 1);
      v96 = v59;
      v56(v59 + v89 + v61 * v98, v95, v102);
LABEL_4:
      v24 = v100 + 1;
      if (v100 + 1 == v93)
      {
        goto LABEL_27;
      }
    }

    v34 = 0;
    v35 = v32 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
    v36 = v109;
    v37 = v108;
    v38 = v107;
    v2 = &unk_1006B20C0;
    v114 = *(v32 + 16);
    v115 = v32;
    v113 = v35;
    while (1)
    {
      if (v34 >= *(v32 + 16))
      {
        __break(1u);
LABEL_35:
        swift_once();
LABEL_30:
        v70 = type metadata accessor for Logger();
        sub_100005B14(v70, qword_1006D4630);
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&_mh_execute_header, v71, v72, "FMMapViewDataSource: devicesProvider is not initialized hidding items", v73, 2u);
        }

        v127 = sub_1004D1974;
        v128 = v2;
        aBlock = _NSConcreteStackBlock;
        v124 = 1107296256;
        v125 = sub_100004AE4;
        v126 = &unk_100642500;
        v74 = _Block_copy(&aBlock);

        v75 = v81;
        static DispatchQoS.unspecified.getter();
        v122 = _swiftEmptyArrayStorage;
        sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640);
        sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
        v76 = v82;
        v77 = v86;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v74);
        (*(v85 + 8))(v76, v77);
        (*(v83 + 8))(v75, v84);
        goto LABEL_33;
      }

      (*(v119 + 16))(v18, v35 + *(v119 + 72) * v34, v121);
      if (FMIPBeaconShare.isSharedLostItem.getter())
      {
        FMIPBeaconShare.beaconIdentifier.getter();
        v39 = v111;
        (*v110)(v37, 0, 1, v111);
        FMIPItem.identifier.getter();
        UUID.init(uuidString:)();

        v40 = *(v112 + 48);
        v41 = v120;
        sub_100007204(v37, v120, &unk_1006B20C0);
        sub_100007204(v36, v41 + v40, &unk_1006B20C0);
        v42 = v18;
        v43 = *v38;
        if ((*v38)(v41, 1, v39) == 1)
        {
          sub_100012DF0(v36, &unk_1006B20C0);
          sub_100012DF0(v37, &unk_1006B20C0);
          (*v117)(v42, v121);
          v44 = v43(v120 + v40, 1, v39);
          v18 = v42;
          if (v44 == 1)
          {
            sub_100012DF0(v120, &unk_1006B20C0);
LABEL_3:

            (*v87)(v116, v102);
            v2 = v88;
            goto LABEL_4;
          }
        }

        else
        {
          v45 = v120;
          v46 = v106;
          sub_100007204(v120, v106, &unk_1006B20C0);
          if (v43(v45 + v40, 1, v39) != 1)
          {
            v49 = v99;
            (*v97)(v99, v45 + v40, v39);
            sub_10000A738(&qword_1006B22F0, &type metadata accessor for UUID);
            v103 = dispatch thunk of static Equatable.== infix(_:_:)();
            v50 = *v104;
            (*v104)(v49, v39);
            v51 = v109;
            sub_100012DF0(v109, &unk_1006B20C0);
            v52 = v108;
            sub_100012DF0(v108, &unk_1006B20C0);
            v53 = v105;
            (*v117)(v105, v121);
            v54 = v46;
            v37 = v52;
            v50(v54, v39);
            v18 = v53;
            v2 = &unk_1006B20C0;
            v55 = v45;
            v36 = v51;
            sub_100012DF0(v55, &unk_1006B20C0);
            v38 = v107;
            v33 = v114;
            v32 = v115;
            v35 = v113;
            if (v103)
            {
              goto LABEL_3;
            }

            goto LABEL_8;
          }

          v36 = v109;
          sub_100012DF0(v109, &unk_1006B20C0);
          v47 = v108;
          sub_100012DF0(v108, &unk_1006B20C0);
          v18 = v105;
          (*v117)(v105, v121);
          v48 = v46;
          v37 = v47;
          (*v104)(v48, v39);
          v38 = v107;
        }

        sub_100012DF0(v120, &qword_1006B22E8);
        v33 = v114;
        v32 = v115;
        v35 = v113;
      }

      else
      {
        (*v117)(v18, v121);
      }

LABEL_8:
      if (v33 == ++v34)
      {

        v2 = v88;
        goto LABEL_21;
      }
    }
  }

  v96 = _swiftEmptyArrayStorage;
LABEL_27:
  v62 = swift_allocObject();
  *(v62 + 16) = &_swiftEmptyDictionarySingleton;
  v63 = [v2[5] traitCollection];
  v64 = [v63 userInterfaceStyle];

  LOBYTE(v63) = FMIPManager.isInitialized.getter();

  if ((v63 & 1) == 0)
  {

    if (qword_1006AEBE0 != -1)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v65 = swift_allocObject();
  *(v65 + 16) = v96;
  *(v65 + 24) = v2;
  *(v65 + 32) = v64 == 2;
  *(v65 + 40) = v80;
  *(v65 + 48) = v62;
  v127 = sub_1004D1990;
  v128 = v65;
  aBlock = _NSConcreteStackBlock;
  v124 = 1107296256;
  v125 = sub_100004AE4;
  v126 = &unk_100642550;
  v66 = _Block_copy(&aBlock);

  v67 = v81;
  static DispatchQoS.unspecified.getter();
  v122 = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  v68 = v82;
  v69 = v86;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v66);
  (*(v85 + 8))(v68, v69);
  (*(v83 + 8))(v67, v84);
LABEL_33:
}

uint64_t sub_1004C0504(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void (**a5)(char *, uint64_t))
{
  v118 = a4;
  LODWORD(v113) = a3;
  v120 = a2;
  v102 = type metadata accessor for DispatchQoS();
  v104 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for DispatchWorkItemFlags();
  v103 = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for FMAnnotationIdentifier();
  __chkstk_darwin(v121);
  v114 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v116 = (&v98 - v11);
  v12 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v12 - 8);
  v14 = &v98 - v13;
  v15 = type metadata accessor for FMIPLocation();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v117 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = 0;
  v18 = type metadata accessor for FMIPItem();
  v20 = __chkstk_darwin(v18);
  v22 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  if (v23)
  {
    v25 = *(v19 + 16);
    v24 = (v19 + 16);
    v26 = a1 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v122 = *(v24 + 7);
    v123 = v24;
    v27 = (v24 - 8);
    v119 = (v16 + 48);
    v108 = (v16 + 32);
    v107 = (v16 + 8);
    v28 = v25;
    v115 = a5;
    v111 = v14;
    v106 = v15;
    v110 = v18;
    v109 = v25;
    v25(v22, v26, v18, v20);
    while (1)
    {
      FMIPItem.groupIdentifier.getter();
      if (v30)
      {

        (*v27)(v22, v18);
      }

      else
      {
        FMIPItem.location.getter();
        if ((*v119)(v14, 1, v15) == 1)
        {
          (*v27)(v22, v18);
          sub_100012DF0(v14, &unk_1006C0220);
        }

        else
        {
          v31 = v117;
          (*v108)(v117, v14, v15);
          v32 = *(v120 + 48);

          sub_1004C31E4(v22, v31, v32, v113 & 1);
          v34 = v33;

          v35 = v15;
          v36 = *&v34[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier + 8];
          if (v36)
          {
            v37 = *&v34[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
            swift_beginAccess();
            v38 = *(a5[2] + 2);
            v39 = v34;
            sub_10009186C(v37, v36);
            v112 = v39;
            if (v38 && (sub_1001B40E0(v37, v36), (v40 & 1) != 0))
            {
              swift_endAccess();
              a5 = v115;
            }

            else
            {
              swift_endAccess();
              a5 = v115;
              swift_beginAccess();
              sub_10009186C(v37, v36);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v127 = a5[2];
              a5[2] = 0x8000000000000000;
              sub_1001BCAF0(_swiftEmptyArrayStorage, v37, v36, isUniquelyReferenced_nonNull_native);
              sub_100091880(v37, v36);
              a5[2] = v127;
              swift_endAccess();
            }

            v18 = v110;
            swift_beginAccess();
            v43 = sub_1004B1F10(aBlock, v37, v36);
            if (*v42)
            {
              v44 = v42;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              v45 = v112;
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              (v43)(aBlock, 0);
              swift_endAccess();
              sub_100091880(v37, v36);

              v15 = v106;
              (*v107)(v117, v106);
              (*v27)(v22, v18);
              a5 = v115;
            }

            else
            {
              (v43)(aBlock, 0);
              swift_endAccess();
              v53 = v112;

              sub_100091880(v37, v36);
              v15 = v106;
              (*v107)(v117, v106);
              (*v27)(v22, v18);
            }

            v14 = v111;
          }

          else
          {
            v46 = v34;
            v47 = FMIPItem.identifier.getter();
            v48 = v116;
            *v116 = v47;
            *(v48 + 8) = v49;
            swift_storeEnumTagMultiPayload();
            v50 = v118;
            swift_beginAccess();
            v51 = swift_isUniquelyReferenced_nonNull_native();
            v127 = *(v50 + 16);
            *(v50 + 16) = 0x8000000000000000;
            sub_1001BCC70(v46, v48, v51);
            v52 = v48;
            a5 = v115;
            sub_10002A100(v52, type metadata accessor for FMAnnotationIdentifier);
            *(v50 + 16) = v127;
            swift_endAccess();

            (*v107)(v31, v35);
            v18 = v110;
            (*v27)(v22, v110);
            v14 = v111;
            v15 = v35;
          }

          v28 = v109;
        }
      }

      v26 += v122;
      if (!--v23)
      {
        break;
      }

      v28(v22, v26, v18, v29);
    }
  }

  swift_beginAccess();
  v54 = a5[2];
  v55 = v54 + 64;
  v56 = 1 << *(v54 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v54 + 8);
  v59 = (v56 + 63) >> 6;
  v117 = v125;
  v115 = (v104 + 8);
  v113 = (v103 + 8);
  v123 = v54;

  v60 = 0;
  v61 = v105;
  v119 = v59;
  while (v58)
  {
LABEL_32:
    v68 = __clz(__rbit64(v58)) | (v60 << 6);
    v69 = (*(v123 + 6) + 16 * v68);
    v70 = *v69;
    v71 = v69[1];
    v72 = *(*(v123 + 7) + 8 * v68);
    if (!(v72 >> 62))
    {
      v73 = (v72 & 0xFFFFFFFFFFFFFF8);

LABEL_34:

      sub_10009186C(v70, v71);
      goto LABEL_35;
    }

    v92 = _CocoaArrayWrapper.endIndex.getter();
    if (!v92)
    {
      v73 = _swiftEmptyArrayStorage;
      goto LABEL_34;
    }

    v93 = v92;
    v73 = sub_10008FC98(v92, 0);
    swift_bridgeObjectRetain_n();
    sub_10009186C(v70, v71);
    sub_10043A9D8((v73 + 4), v93, v72);
    v95 = v94;

    if (v95 != v93)
    {
      goto LABEL_47;
    }

LABEL_35:
    aBlock[0] = v73;
    sub_1004CB9DC(aBlock);
    if (v61)
    {
      goto LABEL_48;
    }

    sub_100091880(v70, v71);

    v74 = aBlock[0];
    v75 = *(v120 + 48);
    v122 = type metadata accessor for FMClusterAnnotation();
    v76 = objc_allocWithZone(v122);

    sub_1003F4230(v77);
    v79 = v78;
    __chkstk_darwin(v78);
    *(&v98 - 2) = v80;
    v81 = v114;
    OS_dispatch_queue.sync<A>(execute:)();
    if (*(v75 + 16) && (v82 = sub_1001B4074(v81), (v83 & 1) != 0))
    {
      v84 = *(*(v75 + 56) + 8 * v82);
      sub_10002A100(v81, type metadata accessor for FMAnnotationIdentifier);
      v85 = swift_dynamicCastClass();
      if (v85)
      {
        v112 = *(v85 + OBJC_IVAR____TtC6FindMy19FMClusterAnnotation_updateQueue);
        v86 = v99;
        v87 = v85;
        v122 = v85;
        static DispatchWorkItemFlags.barrier.getter();
        v88 = swift_allocObject();
        *(v88 + 16) = v74;
        *(v88 + 24) = v87;
        v125[2] = sub_1003F4F2C;
        v125[3] = v88;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v125[0] = sub_100004AE4;
        v125[1] = &unk_1006425A0;
        v89 = _Block_copy(aBlock);
        v90 = v84;
        v91 = v101;
        static DispatchQoS.unspecified.getter();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v89);

        (*v115)(v91, v102);
        (*v113)(v86, v100);

        v79 = v122;
      }

      else
      {
      }
    }

    else
    {

      v62 = sub_10002A100(v81, type metadata accessor for FMAnnotationIdentifier);
    }

    v58 &= v58 - 1;
    __chkstk_darwin(v62);
    *(&v98 - 2) = v79;
    v63 = v116;
    OS_dispatch_queue.sync<A>(execute:)();
    v64 = v118;
    swift_beginAccess();
    v65 = v79;
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v126 = *(v64 + 16);
    *(v64 + 16) = 0x8000000000000000;
    sub_1001BCC70(v65, v63, v66);
    sub_10002A100(v63, type metadata accessor for FMAnnotationIdentifier);
    *(v64 + 16) = v126;
    swift_endAccess();

    v59 = v119;
  }

  while (1)
  {
    v67 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v67 >= v59)
    {

      swift_beginAccess();

      sub_100012E50(v96, _swiftEmptyArrayStorage);
    }

    v58 = *(v55 + 8 * v67);
    ++v60;
    if (v58)
    {
      v60 = v67;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:

  __break(1u);
  return result;
}

uint64_t sub_1004C12AC(void *a1, void *a2)
{
  v2 = (*a1 + OBJC_IVAR____TtC6FindMy12FMAnnotation_title);
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = (*a2 + OBJC_IVAR____TtC6FindMy12FMAnnotation_title);
  if (v5[1])
  {
    v6 = v5[1];
    if (v3 != *v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0xE000000000000000;
    if (v3)
    {
LABEL_10:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_11;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:

  return v7 & 1;
}

uint64_t sub_1004C138C(uint64_t a1)
{
  v77 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v2 - 8);
  v71 = v2;
  __chkstk_darwin(v2);
  v68 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v5 - 8);
  v72 = &v59 - v6;
  v7 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v7 - 8);
  v78 = &v59 - v8;
  v9 = type metadata accessor for FMIPItem();
  v76 = *(v9 - 8);
  v10 = v76[8];
  __chkstk_darwin(v9);
  v74 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v73 = &v59 - v12;
  __chkstk_darwin(v13);
  v75 = &v59 - v14;
  __chkstk_darwin(v15);
  v17 = &v59 - v16;
  v18 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  v64 = *(v1 + 16);
  v24 = *(v64 + 56);
  v25 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v24 + v25, v23, type metadata accessor for FMSelectedSection);
  v26 = v1;
  v27 = [*(v1 + 40) traitCollection];
  v28 = [v27 userInterfaceStyle];

  sub_100027BE0(v23, v20, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() - 3 >= 2)
  {
    sub_10002A100(v23, type metadata accessor for FMSelectedSection);
    return sub_10002A100(v20, type metadata accessor for FMSelectedSection);
  }

  v61 = v28;
  v63 = v23;
  v29 = v76;
  v62 = v76[4];
  v30 = v62(v17, v20, v9);
  __chkstk_darwin(v30);
  v65 = v17;
  *(&v59 - 2) = v17;
  v31 = v77;
  v32 = v78;
  sub_10011FB64(sub_1004D1888, v77, v78);
  v33 = v9;
  if ((v29[6])(v32, 1, v9) == 1)
  {
    v34 = &qword_1006B07D0;
    v35 = v78;
LABEL_7:
    sub_100012DF0(v35, v34);
    v40 = v65;
    *(v26 + 58) = 0;
    sub_1004BF4C8(v31);
    sub_10002A100(v63, type metadata accessor for FMSelectedSection);
    return (v29[1])(v40, v33);
  }

  v37 = v75;
  v62(v75, v78, v9);
  v38 = v72;
  FMIPItem.location.getter();
  v39 = type metadata accessor for FMIPLocation();
  if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
  {
    (v29[1])(v37, v33);
    v34 = &unk_1006C0220;
    v35 = v38;
    goto LABEL_7;
  }

  LODWORD(v61) = v61 == 2;
  sub_100012DF0(v38, &unk_1006C0220);
  *(v26 + 58) = 1;
  v41 = v26;
  v60 = v26;
  v42 = v64;

  v72 = sub_1000BE020(v37, v42);

  v78 = *(v41 + 88);
  v43 = v29[2];
  v43(v73, v37, v33);
  v43(v74, v65, v33);
  v44 = *(v29 + 80);
  v45 = (v44 + 16) & ~v44;
  v46 = (v10 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = v33;
  v48 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v44 + v49 + 8) & ~v44;
  v51 = v50 + v10;
  v52 = swift_allocObject();
  v53 = v62;
  v62((v52 + v45), v73, v47);
  *(v52 + v46) = v72;
  *(v52 + v48) = v60;
  *(v52 + v49) = v77;
  v53(v52 + v50, v74, v47);
  *(v52 + v51) = v61;
  aBlock[4] = sub_1004D18BC;
  aBlock[5] = v52;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006424B0;
  v54 = _Block_copy(aBlock);

  v55 = v66;
  static DispatchQoS.unspecified.getter();
  v79 = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  v56 = v68;
  v57 = v71;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v54);
  (*(v70 + 8))(v56, v57);
  (*(v67 + 8))(v55, v69);
  v58 = v76[1];
  v58(v75, v47);
  sub_10002A100(v63, type metadata accessor for FMSelectedSection);

  return (v58)(v65, v47);
}

uint64_t sub_1004C1CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_1004C1D88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v116 = a6;
  v127 = a5;
  v108 = a4;
  v132 = a3;
  v133 = a2;
  v6 = type metadata accessor for FMIPLocation();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v107 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v112 = &v104 - v10;
  v118 = type metadata accessor for FMIPItem();
  v11 = *(v118 - 8);
  __chkstk_darwin(v118);
  v13 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for FMAnnotationIdentifier();
  __chkstk_darwin(v123);
  v122 = (&v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10007EBC0(&qword_1006B1AD8);
  __chkstk_darwin(v15 - 8);
  v121 = &v104 - v16;
  v114 = type metadata accessor for FMIPRangingParameters();
  v17 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10007EBC0(&qword_1006AF740);
  __chkstk_darwin(v19 - 8);
  v21 = &v104 - v20;
  v115 = type metadata accessor for FMFFriend();
  v22 = *(v115 - 8);
  __chkstk_darwin(v115);
  v24 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v25 - 8);
  v109 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v117 = &v104 - v28;
  __chkstk_darwin(v29);
  v31 = &v104 - v30;
  FMIPItem.location.getter();
  v124 = *(v7 + 48);
  v125 = v7 + 48;
  v32 = v124(v31, 1, v6);
  v126 = v6;
  if (v32 == 1)
  {
    sub_100012DF0(v31, &unk_1006C0220);
    v133 = &_swiftEmptyDictionarySingleton;
    v33 = v108;
    v34 = v7;
  }

  else
  {
    v128 = v11;
    v35 = FMIPLocation.location.getter();
    v105 = v7;
    (*(v7 + 8))(v31, v6);
    v36 = v133[2];
    if (v36)
    {
      v111 = v35;
      v38 = v22 + 16;
      v37 = *(v22 + 16);
      v39 = v133 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      v130 = *(v38 + 56);
      v131 = v37;
      v119 = (v17 + 48);
      v106 = (v17 + 32);
      v110 = (v17 + 8);
      v133 = &_swiftEmptyDictionarySingleton;
      v129 = (v38 - 8);
      v40 = v115;
      v120 = v38;
      v37(v24, v39, v115);
      while (1)
      {
        FMFFriend.location.getter();
        v41 = type metadata accessor for FMFLocation();
        v42 = *(v41 - 8);
        if ((*(v42 + 48))(v21, 1, v41) == 1)
        {
          (*v129)(v24, v40);
          sub_100012DF0(v21, &qword_1006AF740);
        }

        else
        {
          v43 = FMFLocation.location.getter();
          (*(v42 + 8))(v21, v41);
          if (v43)
          {

            v44 = v121;
            FMIPManager.rangingParameters.getter();
            v45 = *v119;
            v46 = v114;
            if ((*v119)(v44, 1, v114) == 1)
            {
              v47 = v113;
              FMIPRangingParameters.init()();
              v48 = v47;
              v49 = v121;

              if (v45(v49, 1, v46) != 1)
              {
                sub_100012DF0(v49, &qword_1006B1AD8);
              }
            }

            else
            {

              v48 = v113;
              (*v106)(v113, v44, v46);
            }

            FMIPRangingParameters.inBTRangeDistanceInMeters.getter();
            v51 = v50;
            (*v110)(v48, v46);
            v52 = v111;
            [v43 distanceFromLocation:v111];
            v54 = v53;
            [v43 horizontalAccuracy];
            v56 = v55;
            [v52 horizontalAccuracy];
            if (v54 / sqrt(v51 * v51 + v56 * v56 + v57 * v57) >= 1.5)
            {
              v40 = v115;
              (*v129)(v24, v115);
            }

            else
            {
              v58 = FMFFriend.identifier.getter();
              v59 = v122;
              *v122 = v58;
              *(v59 + 8) = v60;
              swift_storeEnumTagMultiPayload();
              v61 = *(v132 + 48);

              v62 = sub_1004BEE98(v24, v43, v61);

              v63 = v133;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v134 = v63;
              sub_1001BCC70(v62, v59, isUniquelyReferenced_nonNull_native);
              sub_10002A100(v59, type metadata accessor for FMAnnotationIdentifier);

              v133 = v134;
              v40 = v115;
              (*v129)(v24, v115);
            }
          }

          else
          {
            (*v129)(v24, v40);
          }
        }

        v39 += v130;
        if (!--v36)
        {
          break;
        }

        v131(v24, v39, v40);
      }
    }

    else
    {

      v133 = &_swiftEmptyDictionarySingleton;
    }

    v11 = v128;
    v33 = v108;
    v34 = v105;
  }

  v65 = *(v33 + 16);
  v66 = v118;
  v67 = v117;
  if (v65)
  {
    v70 = *(v11 + 16);
    v69 = v11 + 16;
    v68 = v70;
    v71 = v33 + ((*(v69 + 64) + 32) & ~*(v69 + 64));
    v72 = *(v69 + 56);
    v73 = (v69 - 8);
    v128 = v69;
    v129 = (v34 + 32);
    v121 = (v34 + 8);
    v130 = v72;
    v131 = v70;
    v70(v13, v71, v118);
    while (1)
    {
      FMIPItem.groupIdentifier.getter();
      if (v74)
      {

        (*v73)(v13, v66);
        goto LABEL_24;
      }

      v75 = FMIPItem.identifier.getter();
      v77 = v76;
      if (v75 == FMIPItem.identifier.getter() && v77 == v78)
      {
        break;
      }

      v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v79)
      {
        goto LABEL_31;
      }

      v93 = v109;
      FMIPItem.location.getter();
      v94 = v126;
      if (v124(v93, 1, v126) != 1)
      {
        v95 = v107;
        (*v129)(v107, v93, v94);
        v96 = *(v132 + 48);

        sub_1004C31E4(v13, v95, v96, v116 & 1);
        v120 = v97;

        v98 = FMIPItem.identifier.getter();
        v99 = v122;
        *v122 = v98;
        *(v99 + 8) = v100;
        swift_storeEnumTagMultiPayload();
        v101 = v133;
        v102 = swift_isUniquelyReferenced_nonNull_native();
        v134 = v101;
        sub_1001BCC70(v120, v99, v102);
        sub_10002A100(v99, type metadata accessor for FMAnnotationIdentifier);
        v133 = v134;
        (*v121)(v95, v94);
        goto LABEL_38;
      }

      (*v73)(v13, v66);
      v81 = v93;
LABEL_36:
      sub_100012DF0(v81, &unk_1006C0220);
LABEL_39:
      v72 = v130;
      v68 = v131;
LABEL_24:
      v71 += v72;
      if (!--v65)
      {
        goto LABEL_40;
      }

      v68(v13, v71, v66);
    }

LABEL_31:
    FMIPItem.location.getter();
    v80 = v126;
    if (v124(v67, 1, v126) != 1)
    {
      v82 = v112;
      (*v129)(v112, v67, v80);
      v83 = FMIPItem.identifier.getter();
      v84 = v122;
      *v122 = v83;
      *(v84 + 8) = v85;
      swift_storeEnumTagMultiPayload();
      v86 = *(v132 + 48);

      sub_1004C31E4(v13, v82, v86, v116 & 1);
      v88 = v87;

      v89 = v133;
      v90 = swift_isUniquelyReferenced_nonNull_native();
      v134 = v89;
      sub_1001BCC70(v88, v84, v90);
      v91 = v84;
      v67 = v117;
      sub_10002A100(v91, type metadata accessor for FMAnnotationIdentifier);
      v133 = v134;
      v92 = v82;
      v66 = v118;
      (*v121)(v92, v80);
LABEL_38:
      (*v73)(v13, v66);
      goto LABEL_39;
    }

    (*v73)(v13, v66);
    v81 = v67;
    goto LABEL_36;
  }

LABEL_40:
  sub_100012E50(v133, _swiftEmptyArrayStorage);
}

id sub_1004C2A2C(uint64_t a1, int a2)
{
  v43 = a2;
  v4 = type metadata accessor for FMIPItemImageSize();
  v44 = *(v4 - 8);
  __chkstk_darwin(v4);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for UUID();
  v48 = *(v62 - 8);
  __chkstk_darwin(v62);
  v46 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10007EBC0(&qword_1006B22E8);
  __chkstk_darwin(v52);
  v8 = &v39 - v7;
  v9 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v9 - 8);
  v55 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v59 = &v39 - v12;
  __chkstk_darwin(v13);
  v60 = &v39 - v14;
  v53 = type metadata accessor for FMIPBeaconShare();
  v61 = *(v53 - 8);
  __chkstk_darwin(v53);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v2 + 16);
  v17 = *(*(v41 + 24) + 64);
  v54 = a1;
  v64 = a1;

  v18 = sub_1001048C4(sub_1001098B0, v63, v17);

  v58 = *(v18 + 16);
  if (v58)
  {
    v40 = v4;
    v20 = 0;
    v57 = v18 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v56 = v61 + 16;
    v21 = (v61 + 8);
    v50 = (v48 + 6);
    v51 = (v48 + 7);
    v45 = (v48 + 4);
    ++v48;
    v49 = v18;
    v22 = v53;
    while (1)
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v61 + 16))(v16, v57 + *(v61 + 72) * v20, v22);
      if (FMIPBeaconShare.isSharedLostItem.getter())
      {
        v23 = v60;
        FMIPBeaconShare.beaconIdentifier.getter();
        v24 = v62;
        (*v51)(v23, 0, 1, v62);
        FMIPItem.identifier.getter();
        v25 = v59;
        UUID.init(uuidString:)();

        v26 = *(v52 + 48);
        sub_100007204(v23, v8, &unk_1006B20C0);
        sub_100007204(v25, &v8[v26], &unk_1006B20C0);
        v27 = *v50;
        if ((*v50)(v8, 1, v24) == 1)
        {
          sub_100012DF0(v59, &unk_1006B20C0);
          sub_100012DF0(v60, &unk_1006B20C0);
          v22 = v53;
          (*v21)(v16, v53);
          v28 = v27(&v8[v26], 1, v62);
          v18 = v49;
          if (v28 == 1)
          {
            sub_100012DF0(v8, &unk_1006B20C0);
LABEL_19:

            return sub_1001C91BC();
          }

          goto LABEL_12;
        }

        sub_100007204(v8, v55, &unk_1006B20C0);
        if (v27(&v8[v26], 1, v62) == 1)
        {
          sub_100012DF0(v59, &unk_1006B20C0);
          sub_100012DF0(v60, &unk_1006B20C0);
          v22 = v53;
          (*v21)(v16, v53);
          (*v48)(v55, v62);
          v18 = v49;
LABEL_12:
          result = sub_100012DF0(v8, &qword_1006B22E8);
          goto LABEL_4;
        }

        v29 = &v8[v26];
        v30 = v62;
        v31 = v46;
        (*v45)(v46, v29, v62);
        sub_10000A738(&qword_1006B22F0, &type metadata accessor for UUID);
        v47 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v48;
        v33 = v31;
        v34 = v30;
        (*v48)(v33, v30);
        v35 = v32;
        sub_100012DF0(v59, &unk_1006B20C0);
        sub_100012DF0(v60, &unk_1006B20C0);
        v22 = v53;
        (*v21)(v16, v53);
        v35(v55, v34);
        result = sub_100012DF0(v8, &unk_1006B20C0);
        v18 = v49;
        if (v47)
        {
          goto LABEL_19;
        }
      }

      else
      {
        result = (*v21)(v16, v22);
      }

LABEL_4:
      if (v58 == ++v20)
      {

        v4 = v40;
        goto LABEL_17;
      }
    }
  }

LABEL_17:
  v36 = v44;
  v37 = v42;
  (*(v44 + 104))(v42, enum case for FMIPItemImageSize.infobox(_:), v4);

  v38 = sub_1001C8A1C(v54, v37, v43 & 1);

  (*(v36 + 8))(v37, v4);
  return v38;
}

void sub_1004C31E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v97 = *&a2;
  v7 = type metadata accessor for FMIPConfigValue();
  v92 = *(v7 - 8);
  __chkstk_darwin(v7);
  v91 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v95 = *(v9 - 1);
  v96 = v9;
  __chkstk_darwin(v9);
  v94 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11 - 8);
  v93 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for DispatchQoS();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v99 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMIPItem();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v100 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DispatchWorkItemFlags();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v90 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMAnnotationIdentifier();
  __chkstk_darwin(v18);
  v20 = (&v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = sub_1004C2A2C(a1, a4);
  *v20 = FMIPItem.identifier.getter();
  v20[1] = v21;
  swift_storeEnumTagMultiPayload();
  if (*(a3 + 16) && (v22 = sub_1001B4074(v20), (v23 & 1) != 0))
  {
    v24 = *(*(a3 + 56) + 8 * v22);
    sub_10002A100(v20, type metadata accessor for FMAnnotationIdentifier);
    type metadata accessor for FMItemAnnotation();
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      v26 = v25;
      v96 = v24;
      v27 = FMIPLocation.location.getter();
      [v27 coordinate];
      v29 = v28;
      v31 = v30;

      v32 = FMIPLocation.location.getter();
      [v32 horizontalAccuracy];
      v34 = v33;

      v95 = sub_1004C3C84(a1);
      v36 = v35;
      v97 = *(v26 + OBJC_IVAR____TtC6FindMy16FMItemAnnotation_updateQueue);
      static DispatchWorkItemFlags.barrier.getter();
      v37 = v100;
      (*(v15 + 16))(v100, a1, v14);
      v38 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v39 = (v16 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
      v41 = swift_allocObject();
      *(v41 + 16) = v34;
      *(v41 + 24) = v26;
      (*(v15 + 32))(v41 + v38, v37, v14);
      v42 = v98;
      *(v41 + v39) = v98;
      v43 = (v41 + v40);
      *v43 = v29;
      v43[1] = v31;
      v44 = (v41 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v44 = v95;
      v44[1] = v36;
      aBlock[4] = sub_1004D17D4;
      aBlock[5] = v41;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100642460;
      v45 = _Block_copy(aBlock);
      v46 = v42;
      v47 = v96;
      v48 = v99;
      static DispatchQoS.unspecified.getter();
      v49 = v90;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v45);

      (*(v88 + 8))(v48, v89);
      (*(v86 + 8))(v49, v87);

      return;
    }

    v88 = v7;
  }

  else
  {
    v88 = v7;
    sub_10002A100(v20, type metadata accessor for FMAnnotationIdentifier);
  }

  v50 = FMIPLocation.location.getter();
  [v50 coordinate];
  v52 = v51;
  v54 = v53;

  v55 = FMIPLocation.location.getter();
  [v55 horizontalAccuracy];
  v57 = v56;
  v97 = v56;

  v89 = v15;
  v90 = *(v15 + 16);
  (v90)(v100, a1, v14);
  v86 = sub_1004C3C84(a1);
  v87 = v58;
  v59 = objc_allocWithZone(type metadata accessor for FMItemAnnotation());
  v60 = OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemImage;
  *&v59[OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemImage] = 0;
  v61 = v14;
  v62 = OBJC_IVAR____TtC6FindMy16FMItemAnnotation_updateQueue;
  sub_10000905C(0, &qword_1006AEDC0);
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v95 + 104))(v94, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v96);
  *&v59[v62] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v63 = v61;
  sub_10007EBC0(&unk_1006C2450);
  v64 = swift_allocObject();
  *(v64 + ((*(*v64 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (v90)(v64 + *(*v64 + class metadata base offset for ManagedBuffer + 16), v100, v61);
  *&v59[OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemLock] = v64;
  v65 = *&v59[v60];
  v66 = v98;
  *&v59[v60] = v98;
  v67 = v66;

  v68 = &v59[OBJC_IVAR____TtC6FindMy16FMItemAnnotation_tempCoordinate];
  *v68 = v52;
  v68[1] = v54;
  if ((*&v97 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v57 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v57 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v69 = v92;
  v70 = v91;
  v71 = v88;
  (*(v92 + 104))(v91, enum case for FMIPConfigValue.inaccuracyRadiusThreshold(_:), v88);
  v103 = 0x7FFFFFFFFFFFFFFFLL;
  FMIPGlobalConfig<A>(_:fallback:)();
  (*(v69 + 8))(v70, v71);
  v72 = aBlock[0] < v57;
  v73 = &v59[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
  *v73 = 0;
  v73[1] = 0;
  *&v59[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
  v74 = v72;
  *&v59[OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage] = 0;
  v75 = &v59[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
  v76 = v87;
  *v75 = v86;
  v75[1] = v76;
  v77 = &v59[OBJC_IVAR____TtC6FindMy12FMAnnotation_coordinate];
  *v77 = v52;
  v77[1] = v54;
  *&v59[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = v57;
  v59[OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou] = v76 == 1;
  v59[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = v74;
  v59[OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive] = 0;
  v78 = type metadata accessor for FMAnnotation();
  v102.receiver = v59;
  v102.super_class = v78;
  v79 = objc_msgSendSuper2(&v102, "init");
  v80 = v100;
  v81 = FMIPItem.name.getter();
  v83 = v82;

  (*(v89 + 8))(v80, v63);
  v84 = &v79[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
  *v84 = v81;
  v84[1] = v83;
}

uint64_t sub_1004C3C84(uint64_t a1)
{
  v63 = a1;
  v2 = type metadata accessor for FMIPItemState();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v52 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v51 = &v48 - v5;
  v6 = type metadata accessor for FMIPSafeLocationType();
  v61 = *(v6 - 8);
  v62 = v6;
  __chkstk_darwin(v6);
  v57 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v8 - 8);
  v60 = &v48 - v9;
  v10 = type metadata accessor for FMIPSafeLocation();
  v58 = *(v10 - 8);
  v59 = v10;
  __chkstk_darwin(v10);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for FMIPLocation();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(v1 + 56);
  v25 = *(v1 + 16);
  v26 = *(v25 + 56);
  v27 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v26 + v27, v24, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v28 = *v24;
    sub_100091880(*(v24 + 1), *(v24 + 2));
    v64[0] = FMIPItem.identifier.getter();
    v64[1] = v29;
    __chkstk_darwin(v64[0]);
    *(&v48 - 2) = v64;
    v30 = sub_10008A40C(sub_1001413D4, (&v48 - 4), v28);
  }

  else
  {
    sub_10002A100(v24, type metadata accessor for FMSelectedSection);
    v30 = 0;
  }

  v31 = *(v25 + 40);
  v32 = *(v31 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_isLocationAuthorized);
  v33 = *(v31 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
  FMIPItem.location.getter();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100012DF0(v17, &unk_1006C0220);
    if (v30)
    {
      return 0;
    }
  }

  else
  {
    v49 = v33;
    v50 = v32;
    (*(v19 + 32))(v21, v17, v18);
    v35 = v61;
    v36 = v62;
    v37 = v57;
    (*(v61 + 104))(v57, enum case for FMIPSafeLocationType.home(_:), v62);
    (*(v19 + 16))(v14, v21, v18);
    (*(v19 + 56))(v14, 0, 1, v18);

    v38 = v60;
    sub_1000E698C(v37, v14, v60);

    sub_100012DF0(v14, &unk_1006C0220);
    (*(v35 + 8))(v37, v36);
    v40 = v58;
    v39 = v59;
    if ((*(v58 + 48))(v38, 1, v59) != 1)
    {
      v46 = v55;
      (*(v40 + 32))(v55, v38, v39);
      v47 = FMIPSafeLocation.identifier.getter();
      (*(v40 + 8))(v46, v39);
      (*(v19 + 8))(v21, v18);
      return v47;
    }

    (*(v19 + 8))(v21, v18);
    sub_100012DF0(v38, &unk_1006BB1B0);
    LOBYTE(v33) = v49;
    LOBYTE(v32) = v50;
    if (v30)
    {
      return 0;
    }
  }

  if (v33 & 1 | ((v32 & 1) == 0))
  {
    return 0;
  }

  if (v56 == 1)
  {
    return 0;
  }

  v41 = v51;
  FMIPItem.state.getter();
  v42 = v52;
  static FMIPItemState.isBTConnected.getter();
  sub_10000A738(&qword_1006C0350, &type metadata accessor for FMIPItemState);
  v43 = v54;
  v44 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v45 = *(v53 + 8);
  v45(v42, v43);
  v45(v41, v43);
  if ((v44 & 1) == 0)
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C43F0(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for FMIPDeviceState();
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v51 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = v47 - v6;
  v7 = type metadata accessor for FMIPSafeLocationType();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v54 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v9 - 8);
  v57 = v47 - v10;
  v11 = type metadata accessor for FMIPSafeLocation();
  v55 = *(v11 - 8);
  v56 = v11;
  __chkstk_darwin(v11);
  v48 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v13 - 8);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v47 - v17;
  v19 = type metadata accessor for FMIPLocation();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v60 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v22);
  v24 = v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v2 + 16);
  v26 = *(v25 + 56);
  v27 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v26 + v27, v24, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v28 = *v24;
    sub_100091880(*(v24 + 1), *(v24 + 2));
    v61[0] = FMIPItem.identifier.getter();
    v61[1] = v29;
    __chkstk_darwin(v61[0]);
    *&v47[-4] = v61;
    v30 = sub_10008A40C(sub_1001413D4, &v47[-8], v28);
  }

  else
  {
    sub_10002A100(v24, type metadata accessor for FMSelectedSection);
    v30 = 0;
  }

  v31 = *(*(v25 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
  FMIPItem.location.getter();
  v32 = (*(v20 + 48))(v18, 1, v19);
  v33 = v60;
  if (v32 == 1)
  {
    sub_100012DF0(v18, &unk_1006C0220);
    if (v30)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v47[3] = v31;
  (*(v20 + 32))(v60, v18, v19);
  v36 = v58;
  v35 = v59;
  v37 = v54;
  (*(v58 + 104))(v54, enum case for FMIPSafeLocationType.home(_:), v59);
  (*(v20 + 16))(v15, v33, v19);
  (*(v20 + 56))(v15, 0, 1, v19);

  v38 = v57;
  sub_1000E698C(v37, v15, v57);

  sub_100012DF0(v15, &unk_1006C0220);
  (*(v36 + 8))(v37, v35);
  v40 = v55;
  v39 = v56;
  if ((*(v55 + 48))(v38, 1, v56) == 1)
  {
    (*(v20 + 8))(v33, v19);
    sub_100012DF0(v38, &unk_1006BB1B0);
    if (v30)
    {
      return 0;
    }

LABEL_9:
    v41 = v50;
    FMIPDevice.state.getter();
    v42 = v51;
    static FMIPDeviceState.isThisDevice.getter();
    sub_10000A738(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
    v43 = v53;
    dispatch thunk of SetAlgebra.isSuperset(of:)();
    v44 = *(v52 + 8);
    v44(v42, v43);
    v44(v41, v43);
    return 0;
  }

  v45 = v48;
  (*(v40 + 32))(v48, v38, v39);
  v46 = FMIPSafeLocation.identifier.getter();
  (*(v40 + 8))(v45, v39);
  (*(v20 + 8))(v33, v19);
  return v46;
}

uint64_t sub_1004C4B28(uint64_t a1)
{
  v3 = type metadata accessor for FMIPDeviceState();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = &v38 - v6;
  v7 = type metadata accessor for FMIPSafeLocationType();
  v47 = *(v7 - 8);
  v48 = v7;
  __chkstk_darwin(v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for FMIPSafeLocation();
  v45 = *(v13 - 8);
  v46 = v13;
  __chkstk_darwin(v13);
  v38 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v15 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  v21 = type metadata accessor for FMIPLocation();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1004CB520();
  v39 = *(*(*(v1 + 16) + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
  v40 = a1;
  FMIPDevice.bestLocation.getter();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v25 = &unk_1006C0220;
    v26 = v20;
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    v28 = v47;
    v27 = v48;
    (*(v47 + 104))(v9, enum case for FMIPSafeLocationType.home(_:), v48);
    (*(v22 + 16))(v17, v24, v21);
    (*(v22 + 56))(v17, 0, 1, v21);

    sub_1000E698C(v9, v17, v12);

    sub_100012DF0(v17, &unk_1006C0220);
    (*(v28 + 8))(v9, v27);
    v30 = v45;
    v29 = v46;
    if ((*(v45 + 48))(v12, 1, v46) != 1)
    {
      v36 = v38;
      (*(v30 + 32))(v38, v12, v29);
      v37 = FMIPSafeLocation.identifier.getter();
      (*(v30 + 8))(v36, v29);
      (*(v22 + 8))(v24, v21);
      return v37;
    }

    (*(v22 + 8))(v24, v21);
    v25 = &unk_1006BB1B0;
    v26 = v12;
  }

  sub_100012DF0(v26, v25);
  if ((v49 & 1) == 0)
  {
    v32 = v41;
    FMIPDevice.state.getter();
    v33 = v42;
    static FMIPDeviceState.isThisDevice.getter();
    sub_10000A738(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState);
    v34 = v44;
    dispatch thunk of SetAlgebra.isSuperset(of:)();
    v35 = *(v43 + 8);
    v35(v33, v34);
    v35(v32, v34);
  }

  return 0;
}

uint64_t sub_1004C5110(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 88);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1004D1490;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100642398;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_1004C53EC(uint64_t a1, unint64_t a2)
{
  v123 = a2;
  v102 = sub_10007EBC0(&qword_1006C23C0);
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v99 = &v95 - v3;
  v104 = sub_10007EBC0(&qword_1006C23C8);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v95 - v4;
  v117 = sub_10007EBC0(&unk_1006B77E0);
  v98 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v95 - v5;
  v115 = sub_10007EBC0(&qword_1006C23B8);
  v97 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = &v95 - v6;
  v113 = type metadata accessor for FMIPLocation();
  v118 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPUnknownItem();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v107 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v130 = &v95 - v12;
  __chkstk_darwin(v13);
  v15 = &v95 - v14;
  v96 = v16;
  __chkstk_darwin(v17);
  v129 = &v95 - v18;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v134 = &v95 - v24;
  __chkstk_darwin(v25);
  v27 = &v95 - v26;
  v119 = a1;
  v111 = *(a1 + 16);
  v28 = *(*(v111 + 24) + OBJC_IVAR____TtC6FindMy17FMDevicesProvider_unknownItemsDetectedNearYou);
  v29 = *(v28 + 16);
  v30 = _swiftEmptyArrayStorage;
  v131 = v8;
  v109 = v15;
  v127 = v9;
  v128 = v20;
  if (v29)
  {
    v137 = _swiftEmptyArrayStorage;
    v31 = v28;

    sub_10016748C(0, v29, 0);
    v30 = v137;
    v32 = v9 + 16;
    v132 = *(v9 + 16);
    v133 = (v9 + 16);
    v33 = v31 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v126 = *(v32 + 56);
    v34 = v20;
    v35 = (v32 - 8);
    v124 = v31;
    v125 = v34 + 32;
    do
    {
      v36 = v129;
      v132(v129, v33, v8);
      FMIPUnknownItem.identifier.getter();
      (*v35)(v36, v8);
      v137 = v30;
      v38 = v30[2];
      v37 = v30[3];
      if (v38 >= v37 >> 1)
      {
        sub_10016748C(v37 > 1, v38 + 1, 1);
        v30 = v137;
      }

      v30[2] = v38 + 1;
      (*(v128 + 32))(v30 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v38, v27, v19);
      v33 += v126;
      --v29;
      v8 = v131;
    }

    while (v29);

    v9 = v127;
    v20 = v128;
    v15 = v109;
  }

  v39 = sub_100538878(v30);

  v40 = v123;
  v124 = *(v123 + 16);
  if (v124)
  {
    v41 = 0;
    v43 = *(v9 + 16);
    v42 = v9 + 16;
    v122 = v43;
    v105 = (*(v42 + 64) + 32) & ~*(v42 + 64);
    v121 = (v123 + v105);
    v125 = *(v42 + 56);
    v132 = (v20 + 16);
    v133 = (v39 + 56);
    v44 = (v20 + 8);
    v106 = (v42 + 16);
    v110 = _swiftEmptyArrayStorage;
    v123 = v42;
    v120 = (v42 - 8);
    v108 = v44 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v134;
    (v43)(v15, v40 + v105, v8);
    while (1)
    {
      FMIPUnknownItem.identifier.getter();
      if (*(v39 + 16))
      {
        v126 = v41;
        sub_10000A738(&unk_1006C2410, &type metadata accessor for UUID);
        v46 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v47 = -1 << *(v39 + 32);
        v48 = v46 & ~v47;
        if ((*(v133 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
        {
          v49 = ~v47;
          v50 = *(v128 + 72);
          v51 = *(v128 + 16);
          while (1)
          {
            v51(v22, *(v39 + 48) + v50 * v48, v19);
            sub_10000A738(&qword_1006B22F0, &type metadata accessor for UUID);
            v52 = dispatch thunk of static Equatable.== infix(_:_:)();
            v53 = *v44;
            (*v44)(v22, v19);
            if (v52)
            {
              break;
            }

            v48 = (v48 + 1) & v49;
            if (((*(v133 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
            {
              v8 = v131;
              v15 = v109;
              v45 = v134;
              goto LABEL_19;
            }
          }

          v45 = v134;
          v53(v134, v19);
          v54 = *v106;
          v15 = v109;
          v8 = v131;
          (*v106)(v107, v109, v131);
          v55 = v110;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v57 = v55;
          v137 = v55;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100167118(0, v55[2] + 1, 1);
            v57 = v137;
          }

          v59 = v57[2];
          v58 = v57[3];
          v60 = (v59 + 1);
          if (v59 >= v58 >> 1)
          {
            v110 = (v59 + 1);
            sub_100167118(v58 > 1, v59 + 1, 1);
            v60 = v110;
            v57 = v137;
          }

          v57[2] = v60;
          v110 = v57;
          v54(v57 + v105 + v59 * v125, v107, v8);
        }

        else
        {
          v53 = *v44;
LABEL_19:
          v53(v45, v19);
          (*v120)(v15, v8);
        }

        v41 = v126;
      }

      else
      {
        (*v44)(v45, v19);
        (*v120)(v15, v8);
      }

      if (++v41 == v124)
      {
        break;
      }

      (v122)(v15, v121 + v125 * v41, v8);
    }
  }

  else
  {
    v110 = _swiftEmptyArrayStorage;
  }

  v137 = _swiftEmptyArrayStorage;
  v61 = v110[2];
  if (v61)
  {
    v62 = *(v127 + 16);
    v63 = *(v127 + 80);
    v64 = v110 + ((v63 + 32) & ~v63);
    v125 = v118 + 8;
    v126 = v118 + 16;
    v134 = *(v127 + 72);
    v128 = v63;
    v65 = (v63 + 24) & ~v63;
    v123 = (v96 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v124 = v65;
    v122 = (v127 + 32);
    v121 = (v98 + 8);
    v120 = (v97 + 8);
    v133 = (v127 + 8);
    v66 = _swiftEmptyArrayStorage;
    v67 = v130;
    v127 += 16;
    v132 = v62;
    v62(v130, v64, v8);
    while (1)
    {
      v68 = FMIPUnknownItem.locations.getter();
      v69 = *(v68 + 16);
      if (v69)
      {
        v70 = v118;
        v71 = v112;
        v72 = v62;
        v73 = v113;
        (*(v118 + 16))(v112, v68 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v118 + 72) * (v69 - 1), v113);

        v74 = FMIPLocation.location.getter();
        (*(v70 + 8))(v71, v73);
        v75 = *(v119 + 48);

        v76 = sub_1001AFD50(v130, 4u);

        v136 = v76;
        v77 = [objc_allocWithZone(UIImage) init];
        v135 = v77;
        sub_10007EBC0(&unk_1006B4D90);
        sub_100004098(&qword_1006B7800, &unk_1006B4D90);
        v78 = v116;
        Publisher.replaceError(with:)();

        v79 = v129;
        v72(v129, v130, v131);
        v80 = v123;
        v81 = swift_allocObject();
        *(v81 + 16) = v75;
        (*v122)(v81 + v124, v79, v131);
        *(v81 + v80) = v74;
        type metadata accessor for FMUnknownItemAnnotation();
        sub_100004098(&qword_1006B7808, &unk_1006B77E0);
        v82 = v74;
        v83 = v114;
        v84 = v117;
        Publisher.map<A>(_:)();

        v85 = v78;
        v67 = v130;
        (*v121)(v85, v84);
        sub_100004098(&unk_1006C2400, &qword_1006C23B8);
        v86 = v115;
        Publisher.eraseToAnyPublisher()();

        v8 = v131;
        (*v120)(v83, v86);
        (*v133)(v67, v8);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (v137[2] >= v137[3] >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v66 = v137;
        v62 = v132;
      }

      else
      {

        (*v133)(v67, v8);
      }

      v64 = &v134[v64];
      if (!--v61)
      {
        break;
      }

      v62(v67, v64, v8);
    }

    if (v66[2])
    {
      goto LABEL_37;
    }
  }

  else
  {

    v66 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_37:
      v137 = v66;
      sub_10007EBC0(&qword_1006C23D0);
      sub_10007EBC0(&qword_1006C23D8);
      v87 = v119;
      sub_100004098(&qword_1006C23E0, &qword_1006C23D0);
      sub_100004098(&qword_1006C23E8, &qword_1006C23D8);
      v88 = v99;
      Publishers.MergeMany.init<A>(_:)();
      sub_100004098(&qword_1006C23F0, &qword_1006C23C0);
      v89 = v101;
      v90 = v102;
      Publisher.collect()();
      (*(v100 + 8))(v88, v90);
      sub_100004098(&qword_1006C23F8, &qword_1006C23C8);

      v91 = v104;
      v92 = Publisher<>.sink(receiveValue:)();

      (*(v103 + 8))(v89, v91);
      *(v87 + 96) = v92;
    }
  }

  v94 = sub_1001548DC(_swiftEmptyArrayStorage);
  sub_100012E50(v94, _swiftEmptyArrayStorage);
}

uint64_t sub_1004C6468(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v24 = *(v11 - 8);
  v25 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v30 = v13;

  aBlock[0] = sub_1004EC1A4(v14);
  sub_1004CBC40(sub_1004D1628, v29);
  v15 = aBlock[0];
  v27 = v7;
  v28 = v4;
  v26 = v8;
  if ((aBlock[0] & 0x8000000000000000) != 0 || (aBlock[0] & 0x4000000000000000) != 0)
  {
    type metadata accessor for FMAnnotation();

    v16 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for FMAnnotation();
    v16 = v15;
  }

  v17 = *(a2 + 48);

  v18 = sub_1004D1648(v16, v17);

  v23 = *(a2 + 88);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1004D17CC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100642410;
  v20 = _Block_copy(aBlock);

  v21 = v18;
  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v28 + 8))(v6, v3);
  (*(v26 + 8))(v10, v27);

  return (*(v24 + 8))(v13, v25);
}

uint64_t sub_1004C68C0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v76 = a3;
  v5 = type metadata accessor for UUID();
  v90 = *(v5 - 8);
  v91 = v5;
  __chkstk_darwin(v5);
  v89 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v88 = &v73 - v8;
  v9 = type metadata accessor for FMIPUnknownItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v87 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v86 = &v73 - v13;
  __chkstk_darwin(v14);
  v82 = &v73 - v15;
  __chkstk_darwin(v16);
  v18 = &v73 - v17;
  v80 = type metadata accessor for FMIPLocation();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v74 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v73 - v21;
  v23 = type metadata accessor for Date();
  v78 = *(v23 - 8);
  __chkstk_darwin(v23);
  v75 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v85 = &v73 - v26;
  __chkstk_darwin(v27);
  v29 = &v73 - v28;
  __chkstk_darwin(v30);
  v32 = &v73 - v31;
  v33 = *a1;
  v95 = *a2;
  v34 = OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_item;
  swift_beginAccess();
  v35 = *(v10 + 16);
  v83 = v33;
  v81 = v34;
  v93 = v35;
  v94 = v10 + 16;
  v35(v18, v33 + v34, v9);
  v36 = FMIPUnknownItem.locations.getter();
  v37 = *(v10 + 8);
  v96 = v9;
  v97 = v10 + 8;
  v92 = v37;
  v37(v18, v9);
  v38 = *(v36 + 16);
  v84 = v32;
  if (v38)
  {
    v39 = v79;
    v40 = v80;
    (*(v79 + 16))(v22, v36 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v80);

    v41 = FMIPLocation.location.getter();
    (*(v39 + 8))(v22, v40);
    v42 = [v41 timestamp];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v78;
    (*(v78 + 32))(v32, v29, v23);
  }

  else
  {

    v43 = v78;
    (*(v78 + 16))(v32, v76, v23);
    v40 = v80;
    v39 = v79;
  }

  v44 = OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_item;
  v45 = v95;
  swift_beginAccess();
  v80 = v44;
  v46 = v45 + v44;
  v47 = v82;
  v48 = v96;
  v93(v82, v46, v96);
  v49 = FMIPUnknownItem.locations.getter();
  v92(v47, v48);
  v50 = *(v49 + 16);
  v77 = v23;
  if (v50)
  {
    v51 = v74;
    (*(v39 + 16))(v74, v49 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v40);

    v52 = FMIPLocation.location.getter();
    (*(v39 + 8))(v51, v40);
    v53 = [v52 timestamp];

    v54 = v75;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = v85;
    (*(v43 + 32))(v85, v54, v23);
  }

  else
  {

    v55 = v85;
    (*(v43 + 16))(v85, v76, v23);
  }

  v56 = v43;
  v57 = v86;
  v58 = v96;
  v59 = v93;
  v93(v86, v83 + v81, v96);
  v60 = v88;
  FMIPUnknownItem.identifier.getter();
  v61 = v92;
  v92(v57, v58);
  v62 = v87;
  v59(v87, v95 + v80, v58);
  v63 = v89;
  FMIPUnknownItem.identifier.getter();
  v61(v62, v58);
  v64 = v84;
  v65 = v55;
  v66 = sub_1004B1FE4(v84, v60, v55, v63);
  v67 = *(v90 + 8);
  v68 = v63;
  v69 = v91;
  v67(v68, v91);
  v67(v60, v69);
  v70 = *(v56 + 8);
  v71 = v77;
  v70(v65, v77);
  v70(v64, v71);
  return v66 & 1;
}

uint64_t sub_1004C7074(uint64_t a1, void *a2)
{
  sub_10007EBC0(&unk_1006C2420);
  v3 = (sub_10007EBC0(&qword_1006B38E8) - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100552220;
  v6 = v5 + v4;
  v7 = v3[14];
  type metadata accessor for FMAnnotationIdentifier();
  OS_dispatch_queue.sync<A>(execute:)();
  *(v6 + v7) = a2;
  v8 = a2;
  v9 = sub_1001548DC(v5);
  swift_setDeallocating();
  sub_100012DF0(v6, &qword_1006B38E8);
  swift_deallocClassInstance();
  sub_100012E50(v9, _swiftEmptyArrayStorage);
}

uint64_t sub_1004C7204(uint64_t a1)
{
  v60 = a1;
  v51 = *v1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v2 - 8);
  v57 = v2;
  __chkstk_darwin(v2);
  v54 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMIPUnknownItem();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  __chkstk_darwin(v5);
  v59 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = &v47 - v8;
  v9 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v9);
  v50 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v65 = swift_allocObject();
  *(v65 + 16) = _swiftEmptyArrayStorage;
  v17 = swift_allocObject();
  *(v17 + 16) = &_swiftEmptyDictionarySingleton;
  v58 = swift_allocObject();
  *(v58 + 16) = _swiftEmptyArrayStorage;
  v18 = *(v1[2] + 56);
  v19 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v18 + v19, v16, type metadata accessor for FMSelectedSection);
  v64 = v16;
  sub_100027BE0(v16, v13, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    v20 = v62;
    v49 = *(v62 + 32);
    v21 = v61;
    v22 = v63;
    v49(v61, v13, v63);
    v48 = v1;
    v50 = v1[11];
    (*(v20 + 16))(v59, v21, v22);
    v23 = (*(v20 + 80) + 24) & ~*(v20 + 80);
    v24 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
    v47 = v17;
    v28 = swift_allocObject();
    v29 = v48;
    v30 = v59;
    *(v28 + 16) = v60;
    v49((v28 + v23), v30, v22);
    *(v28 + v24) = v65;
    *(v28 + v25) = v47;
    *(v28 + v26) = v29;
    *(v28 + v27) = v58;
    *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v51;
    v70 = sub_1004D1300;
    v71 = v28;
    aBlock = _NSConcreteStackBlock;
    v67 = 1107296256;
    v68 = sub_100004AE4;
    v69 = &unk_100642258;
    v31 = _Block_copy(&aBlock);

    v32 = v52;
    static DispatchQoS.unspecified.getter();
    v72 = _swiftEmptyArrayStorage;
    sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
    v33 = v54;
    v34 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);
    (*(v56 + 8))(v33, v34);
    (*(v53 + 8))(v32, v55);
    (*(v62 + 8))(v61, v63);
    sub_10002A100(v64, type metadata accessor for FMSelectedSection);
  }

  else
  {
    v35 = v64;
    sub_10002A100(v13, type metadata accessor for FMSelectedSection);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100005B14(v36, qword_1006D4630);
    v37 = v50;
    sub_100027BE0(v35, v50, type metadata accessor for FMSelectedSection);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v72 = v41;
      *v40 = 136315138;
      aBlock = 0;
      v67 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v42 = aBlock;
      v43 = v67;
      sub_10002A100(v37, type metadata accessor for FMSelectedSection);
      v44 = sub_100005B4C(v42, v43, &v72);

      *(v40 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v38, v39, "FMMapViewDataSource: cannot fetch unknown item value from selected section %s", v40, 0xCu);
      sub_100006060(v41);

      v45 = v64;
    }

    else
    {

      sub_10002A100(v37, type metadata accessor for FMSelectedSection);
      v45 = v35;
    }

    sub_10002A100(v45, type metadata accessor for FMSelectedSection);
  }
}

uint64_t sub_1004C7A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v272 = a6;
  v301 = a5;
  v311 = a4;
  v255 = a3;
  v283 = a2;
  v297 = type metadata accessor for FMAnnotationIdentifier();
  v293 = *(v297 - 8);
  __chkstk_darwin(v297);
  v8 = &v246 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v302 = (&v246 - v10);
  v268 = sub_10007EBC0(&unk_1006B77E0);
  v11 = *(v268 - 8);
  __chkstk_darwin(v268);
  v267 = &v246 - v12;
  v266 = sub_10007EBC0(&qword_1006C23B8);
  v13 = *(v266 - 8);
  __chkstk_darwin(v266);
  v265 = &v246 - v14;
  v313 = type metadata accessor for Date();
  v15 = *(v313 - 8);
  __chkstk_darwin(v313);
  v312 = &v246 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FMIPLocation();
  v271 = *(v17 - 8);
  __chkstk_darwin(v17);
  v269 = &v246 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = type metadata accessor for UUID();
  v19 = *(v286 - 8);
  __chkstk_darwin(v286);
  v282 = &v246 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v285 = &v246 - v22;
  v23 = type metadata accessor for FMIPUnknownItem();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v276 = &v246 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v264 = &v246 - v27;
  __chkstk_darwin(v28);
  v275 = &v246 - v29;
  __chkstk_darwin(v30);
  v290 = &v246 - v31;
  v248 = sub_10007EBC0(&qword_1006C23C0);
  v247 = *(v248 - 8);
  __chkstk_darwin(v248);
  v246 = &v246 - v32;
  v251 = sub_10007EBC0(&qword_1006C23C8);
  v250 = *(v251 - 8);
  v33 = __chkstk_darwin(v251);
  v249 = &v246 - v34;
  v281 = *(a1 + 16);
  if (!v281)
  {
LABEL_161:
    v237 = v272;
    swift_beginAccess();
    v319 = *(v237 + 16);

    sub_10007EBC0(&qword_1006C23D0);
    sub_10007EBC0(&qword_1006C23D8);
    sub_100004098(&qword_1006C23E0, &qword_1006C23D0);
    sub_100004098(&qword_1006C23E8, &qword_1006C23D8);
    v238 = v246;
    Publishers.MergeMany.init<A>(_:)();
    sub_100004098(&qword_1006C23F0, &qword_1006C23C0);
    v239 = v249;
    v240 = v248;
    Publisher.collect()();
    (*(v247 + 8))(v238, v240);
    v241 = swift_allocObject();
    v242 = v301;
    v241[2] = v311;
    v241[3] = v242;
    v241[4] = v255;
    sub_100004098(&qword_1006C23F8, &qword_1006C23C8);

    v243 = v251;
    v244 = Publisher<>.sink(receiveValue:)();

    (*(v250 + 8))(v239, v243);
    *(v242 + 96) = v244;
  }

  v35 = 0;
  v278 = 0;
  v37 = *(v24 + 16);
  v36 = v24 + 16;
  v291 = v37;
  v38 = *(v36 + 64);
  v280 = a1 + ((v38 + 32) & ~v38);
  v284 = (v19 + 8);
  v289 = (v36 - 8);
  v305 = (v15 + 8);
  v295 = (v15 + 32);
  v261 = v38;
  v260 = (v38 + 24) & ~v38;
  v259 = (v25 + v260 + 7) & 0xFFFFFFFFFFFFFFF8;
  v258 = (v36 + 16);
  v257 = (v11 + 8);
  v256 = (v13 + 8);
  v292 = v36;
  v279 = *(v36 + 56);
  v33.n128_u64[0] = 136315138;
  v252 = v33;
  v33.n128_u64[0] = 134217984;
  v254 = v33;
  v253 = xmmword_100552220;
  v288 = vdupq_n_s64(0x400921FB54442D18uLL);
  v296 = xmmword_1005528C0;
  v287 = vdupq_n_s64(0x4066800000000000uLL);
  v307 = v8;
  v300 = v17;
  v274 = v23;
  v263 = v271 + 16;
  v262 = (v271 + 8);
  while (1)
  {
    v294 = v35;
    v39 = v290;
    v291(v290, v280 + v279 * v35, v23);
    v40 = v285;
    FMIPUnknownItem.identifier.getter();
    v41 = v282;
    FMIPUnknownItem.identifier.getter();
    v42 = static UUID.== infix(_:_:)();
    v43 = *v284;
    v44 = v41;
    v45 = v286;
    (*v284)(v44, v286);
    v43(v40, v45);
    if ((v42 & 1) == 0)
    {
      (*v289)(v39, v23);
      goto LABEL_4;
    }

    v46 = *(FMIPUnknownItem.locations.getter() + 16);

    v47 = v276;
    v48 = v275;
    if (!v46)
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_100005B14(v56, qword_1006D4630);
      v291(v47, v39, v23);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = v47;
        v60 = swift_slowAlloc();
        v315 = swift_slowAlloc();
        v320 = v315;
        *v60 = v252.n128_u32[0];
        v61 = v285;
        FMIPUnknownItem.identifier.getter();
        sub_10000A738(&qword_1006B7830, &type metadata accessor for UUID);
        v62 = v286;
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v65 = v64;
        v66 = v61;
        v23 = v274;
        v43(v66, v62);
        v67 = *v289;
        v68 = v59;
        v8 = v307;
        (*v289)(v68, v23);
        v69 = sub_100005B4C(v63, v65, &v320);

        *(v60 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v57, v58, "FMMapViewDataSource: No locations provided for %s", v60, 0xCu);
        sub_100006060(v315);

        v67(v290, v23);
      }

      else
      {

        v150 = *v289;
        (*v289)(v47, v23);
        v150(v39, v23);
      }

      goto LABEL_4;
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100005B14(v49, qword_1006D4630);
    v291(v48, v39, v23);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = v48;
      v53 = swift_slowAlloc();
      *v53 = v254.n128_u32[0];
      v54 = *(FMIPUnknownItem.locations.getter() + 16);

      v55 = v52;
      v39 = v290;
      v277 = *v289;
      v277(v55, v23);
      *(v53 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v50, v51, "FMMapViewDataSource: computing %ld location tracks", v53, 0xCu);
    }

    else
    {
      v277 = *v289;
      v277(v48, v23);
    }

    v70 = FMIPUnknownItem.locations.getter();
    v71 = v70[2];
    if (v71)
    {
      v320 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v72 = (*(v271 + 80) + 32) & ~*(v271 + 80);
      v314 = v70;
      v73 = v70 + v72;
      v315 = *(v271 + 72);
      v74 = v269;
      v75 = *(v271 + 16);
      v76 = v262;
      do
      {
        v75(v74, v73, v17);
        FMIPLocation.location.getter();
        (*v76)(v74, v17);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v73 += v315;
        --v71;
      }

      while (v71);

      v77 = v320;
      v23 = v274;
      v39 = v290;
      v8 = v307;
      if (!(v320 >> 62))
      {
LABEL_20:
        v78 = (v77 & 0xFFFFFFFFFFFFFF8);

        goto LABEL_21;
      }
    }

    else
    {

      v77 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_20;
      }
    }

    v146 = _CocoaArrayWrapper.endIndex.getter();
    if (v146)
    {
      v147 = v146;
      v78 = sub_10008FC98(v146, 0);

      sub_10043ACF8((v78 + 4), v147, v77);
      v149 = v148;

      if (v149 != v147)
      {
        goto LABEL_175;
      }
    }

    else
    {
      v78 = _swiftEmptyArrayStorage;
    }

LABEL_21:
    v320 = v78;
    v79 = v278;
    sub_1004CBCD8(&v320);
    v278 = v79;
    if (v79)
    {
      goto LABEL_177;
    }

    v80 = v320;
    v319 = _swiftEmptyArrayStorage;
    if ((v320 & 0x8000000000000000) != 0 || (v320 & 0x4000000000000000) != 0)
    {
      v310 = _CocoaArrayWrapper.endIndex.getter();
      if (!v310)
      {
LABEL_157:

        v277(v39, v23);
        goto LABEL_4;
      }
    }

    else
    {
      v310 = *(v320 + 16);
      if (!v310)
      {
        goto LABEL_157;
      }
    }

    v309 = v80 & 0xC000000000000001;
    if ((v80 & 0xC000000000000001) != 0)
    {
      v315 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v81 = &selRef__enter3DMode;
      v82 = &selRef__enter3DMode;
    }

    else
    {
      v81 = &selRef__enter3DMode;
      v82 = &selRef__enter3DMode;
      if (!*(v80 + 16))
      {
        goto LABEL_171;
      }

      v315 = *(v80 + 32);
    }

    if (v310 < 1)
    {
      goto LABEL_170;
    }

    v273 = v310 - 1;
    v83 = 0;
    v308 = v80;
    v270 = v80 + 32;
    v84 = _swiftEmptyArrayStorage;
    v314 = _swiftEmptyArrayStorage;
    do
    {
      if (v309)
      {
        v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v87 = *(v308 + 8 * v83 + 32);
      }

      v88 = v87;
      [v87 v81[242]];
      if (v89 >= 25.0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_10008C75C(0, v84[2] + 1, 1, v84);
        }

        v92 = v84[2];
        v91 = v84[3];
        if (v92 >= v91 >> 1)
        {
          v84 = sub_10008C75C((v91 > 1), v92 + 1, 1, v84);
        }

        v84[2] = v92 + 1;
        v84[v92 + 4] = v314;
        sub_10007EBC0(&qword_1006AFC30);
        v85 = swift_allocObject();
        *(v85 + 16) = v296;
        *(v85 + 32) = v88;
        v86 = v88;

        v314 = v85;
        v319 = v85;
        v315 = v86;
      }

      else
      {
        v90 = v88;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v319 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v319 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v82 = &selRef__enter3DMode;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v314 = v319;
      }

      ++v83;
    }

    while (v310 != v83);
    v318 = _swiftEmptyArrayStorage;
    v299 = v84[2];
    if (v299)
    {
      break;
    }

    *&v306.f64[0] = _swiftEmptyArrayStorage;
LABEL_107:
    v151 = v306.f64[0];
    if (*&v306.f64[0] >> 62)
    {
      v152 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v152 = *((*&v306.f64[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v153 = _swiftEmptyArrayStorage;
    if (v152)
    {
      v320 = _swiftEmptyArrayStorage;
      sub_100167684(0, v152 & ~(v152 >> 63), 0);
      if (v152 < 0)
      {
        goto LABEL_172;
      }

      v154 = 0;
      v153 = v320;
      do
      {
        if ((*&v151 & 0xC000000000000001) != 0)
        {
          v155 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v155 = *(*&v151 + 8 * v154 + 32);
        }

        v156 = v155;
        [v155 coordinate];
        v158 = v157;
        v160 = v159;

        v320 = v153;
        v162 = v153[2];
        v161 = v153[3];
        if (v162 >= v161 >> 1)
        {
          sub_100167684((v161 > 1), v162 + 1, 1);
          v153 = v320;
        }

        ++v154;
        v153[2] = v162 + 1;
        v163 = &v153[2 * v162];
        v163[4] = v158;
        v163[5] = v160;
        v8 = v307;
      }

      while (v152 != v154);
    }

    v164 = v302;
    if (v309)
    {
      v165 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v310 > *(v308 + 16))
      {
        goto LABEL_174;
      }

      v165 = *(v270 + 8 * v273);
    }

    v166 = v165;

    if (v153[2] < 2uLL)
    {
    }

    else
    {
      sub_10007EBC0(&qword_1006AF7F0);
      inited = swift_initStackObject();
      *(inited + 16) = v253;
      [v166 coordinate];
      *(inited + 32) = v168;
      *(inited + 40) = v169;
      v320 = v153;
      sub_1004947C4(inited);
      v170 = [objc_opt_self() polylineWithCoordinates:v320 + 32 count:*(v320 + 16)];

      v171 = v255;
      swift_beginAccess();
      v172 = v170;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v171 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v171 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      v164 = v302;
    }

    v314 = v166;
    if (*&v151 >> 62)
    {
      v173 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v173 = *((*&v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v300;
    v174 = v8;
    if (v173)
    {
      if (v173 < 1)
      {
        goto LABEL_173;
      }

      v175 = 0;
      v176 = *&v306.f64[0] & 0xC000000000000001;
      while (2)
      {
        if (v176)
        {
          v179 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v179 = *(*&v306.f64[0] + 8 * v175 + 32);
        }

        v180 = v179;
        v320 = 0;
        v321 = 0xE000000000000000;
        [v179 coordinate];
        Double.write<A>(to:)();
        v181._countAndFlagsBits = 45;
        v181._object = 0xE100000000000000;
        String.append(_:)(v181);
        [v180 coordinate];
        Double.write<A>(to:)();
        v182._countAndFlagsBits = 45;
        v182._object = 0xE100000000000000;
        String.append(_:)(v182);
        v183 = [v180 timestamp];
        v184 = v312;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSinceReferenceDate.getter();
        (*v305)(v184, v313);
        Double.write<A>(to:)();
        v185 = v321;
        *v164 = v320;
        v164[1] = v185;
        swift_storeEnumTagMultiPayload();
        v186 = v174;
        sub_100027BE0(v164, v174, type metadata accessor for FMAnnotationIdentifier);
        v187 = *(v301 + 48);
        if (*(v187 + 16))
        {

          v188 = sub_1001B4074(v164);
          if (v189)
          {
            v190 = *(*(v187 + 56) + 8 * v188);

            goto LABEL_143;
          }
        }

        v191 = objc_allocWithZone(type metadata accessor for FMTrackAnnotation());
        v192 = OBJC_IVAR____TtC6FindMy17FMTrackAnnotation_noImage;
        v193 = objc_allocWithZone(UIImage);
        v194 = v180;
        *&v191[v192] = [v193 init];
        *&v191[OBJC_IVAR____TtC6FindMy17FMTrackAnnotation_location] = v194;
        v195 = v194;
        v196 = [v195 timestamp];
        v197 = v312;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*v295)(&v191[OBJC_IVAR____TtC6FindMy17FMTrackAnnotation_timestamp], v197, v313);
        [v195 coordinate];
        v199 = v198;
        v201 = v200;
        [v195 horizontalAccuracy];
        v202 = &v191[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
        *v202 = 0;
        v202[1] = 0;
        *&v191[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
        *&v191[OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage] = 0;
        v203 = &v191[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
        *v203 = 0;
        v203[1] = 0;
        v204 = &v191[OBJC_IVAR____TtC6FindMy12FMAnnotation_coordinate];
        *v204 = v199;
        v204[1] = v201;
        *&v191[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = v205;
        v191[OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou] = 0;
        v191[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = 0;
        v191[OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive] = 0;
        v206 = type metadata accessor for FMAnnotation();
        v317.receiver = v191;
        v317.super_class = v206;
        v186 = v174;
        v190 = objc_msgSendSuper2(&v317, "init");

LABEL_143:
        v207 = v311;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v316 = *(v207 + 16);
        v209 = v316;
        *(v207 + 16) = 0x8000000000000000;
        v210 = sub_1001B4074(v186);
        v212 = v209[2];
        v213 = (v211 & 1) == 0;
        v214 = __OFADD__(v212, v213);
        v215 = v212 + v213;
        if (v214)
        {
          goto LABEL_163;
        }

        v216 = v211;
        if (v209[3] >= v215)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_148;
          }

          v222 = v210;
          sub_1001C0050();
          v210 = v222;
          v218 = v316;
          if (v216)
          {
            goto LABEL_133;
          }

LABEL_149:
          v218[(v210 >> 6) + 8] |= 1 << v210;
          v219 = v210;
          sub_100027BE0(v186, v218[6] + *(v293 + 72) * v210, type metadata accessor for FMAnnotationIdentifier);
          *(v218[7] + 8 * v219) = v190;
          v220 = v218[2];
          v214 = __OFADD__(v220, 1);
          v221 = v220 + 1;
          if (v214)
          {
            goto LABEL_167;
          }

          v218[2] = v221;
        }

        else
        {
          sub_1001B9890(v215, isUniquelyReferenced_nonNull_native);
          v210 = sub_1001B4074(v186);
          if ((v216 & 1) != (v217 & 1))
          {
            goto LABEL_176;
          }

LABEL_148:
          v218 = v316;
          if ((v216 & 1) == 0)
          {
            goto LABEL_149;
          }

LABEL_133:
          v177 = v218[7];
          v178 = *(v177 + 8 * v210);
          *(v177 + 8 * v210) = v190;
        }

        ++v175;
        sub_10002A100(v186, type metadata accessor for FMAnnotationIdentifier);
        *(v311 + 16) = v218;
        swift_endAccess();

        v164 = v302;
        sub_10002A100(v302, type metadata accessor for FMAnnotationIdentifier);
        v17 = v300;
        if (v173 == v175)
        {
          break;
        }

        continue;
      }
    }

    v223 = *(v301 + 48);

    v224 = v290;
    v225 = sub_1001AFD50(v290, 4u);

    v320 = v225;
    v226 = [objc_allocWithZone(UIImage) init];
    v316 = v226;
    sub_10007EBC0(&unk_1006B4D90);
    sub_100004098(&qword_1006B7800, &unk_1006B4D90);
    v227 = v267;
    Publisher.replaceError(with:)();

    v228 = v264;
    v229 = v274;
    v291(v264, v224, v274);
    v230 = v259;
    v231 = swift_allocObject();
    *(v231 + 16) = v223;
    (*v258)(v231 + v260, v228, v229);
    v232 = v314;
    *(v231 + v230) = v314;
    type metadata accessor for FMUnknownItemAnnotation();
    sub_100004098(&qword_1006B7808, &unk_1006B77E0);
    v314 = v232;
    v233 = v265;
    v234 = v268;
    Publisher.map<A>(_:)();

    (*v257)(v227, v234);
    sub_100004098(&unk_1006C2400, &qword_1006C23B8);
    v235 = v266;
    Publisher.eraseToAnyPublisher()();
    (*v256)(v233, v235);
    v236 = v272;
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(*(v236 + 16) + 16) >= *(*(v236 + 16) + 24) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    v277(v224, v229);
    v8 = v174;
    v23 = v229;
LABEL_4:
    v35 = v294 + 1;
    if (v294 + 1 == v281)
    {
      goto LABEL_161;
    }
  }

  v93 = 0;
  v298 = v84 + 4;
  *&v306.f64[0] = _swiftEmptyArrayStorage;
  while (v93 < v84[2])
  {
    v94 = v298[v93];
    if (v94 >> 62)
    {
      v95 = _CocoaArrayWrapper.endIndex.getter();
      if (!v95)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v95 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v95)
      {
        goto LABEL_46;
      }
    }

    v96 = v95 - 1;
    if (__OFSUB__(v95, 1))
    {
      goto LABEL_164;
    }

    v97 = v94 & 0xC000000000000001;
    if ((v94 & 0xC000000000000001) != 0)
    {

      v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v96 & 0x8000000000000000) != 0)
      {
        goto LABEL_165;
      }

      if (v96 >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_166;
      }

      v98 = *(v94 + 8 * v96 + 32);

      v99 = v98;
    }

    v304 = v99;
    if (v94 >> 62)
    {
      v100 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v100 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v303 = v100 & ~(v100 >> 63);
    if (v100)
    {
      v320 = _swiftEmptyArrayStorage;
      sub_100167684(0, v100 & ~(v100 >> 63), 0);
      if (v100 < 0)
      {
        goto LABEL_168;
      }

      v101 = 0;
      v102 = v320;
      do
      {
        if (v97)
        {
          v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v103 = *(v94 + 8 * v101 + 32);
        }

        v104 = v103;
        [v103 coordinate];
        v106 = v105;
        v108 = v107;

        v320 = v102;
        v110 = *&v102[1].f64[0];
        v109 = *&v102[1].f64[1];
        v111 = v110 + 1;
        if (v110 >= v109 >> 1)
        {
          sub_100167684((v109 > 1), v110 + 1, 1);
          v102 = v320;
        }

        ++v101;
        *&v102[1].f64[0] = v111;
        f64 = v102[v110].f64;
        f64[4] = v106;
        f64[5] = v108;
      }

      while (v100 != v101);
    }

    else
    {
      v102 = _swiftEmptyArrayStorage;
      v111 = _swiftEmptyArrayStorage[2];
    }

    if (v111 > 1)
    {
      v113 = &v102[2].f64[1];
      v114 = 0.0;
      v115 = v111;
      v116 = 0.0;
      v117 = 0.0;
      do
      {
        v118 = *v113 * 3.14159265 / 180.0;
        v119 = __sincos_stret(*(v113 - 1) * 3.14159265 / 180.0);
        v120 = __sincos_stret(v118);
        v117 = v117 + v119.__cosval * v120.__cosval;
        v116 = v116 + v119.__cosval * v120.__sinval;
        v114 = v114 + v119.__sinval;
        v113 += 2;
        --v115;
      }

      while (v115);

      v121.f64[0] = atan2(v116 / v111, v117 / v111);
      v306 = v121;
      v122.f64[0] = atan2(v114 / v111, sqrt(v117 / v111 * (v117 / v111) + v116 / v111 * (v116 / v111)));
      v122.f64[1] = v306.f64[0];
      v306 = vdivq_f64(vmulq_f64(v122, v287), v288);
      v82 = &selRef__enter3DMode;
LABEL_75:
      if (v100)
      {
        v320 = _swiftEmptyArrayStorage;
        sub_100167664(0, v303, 0);
        if (v100 < 0)
        {
          goto LABEL_169;
        }

        v123 = 0;
        v124 = v320;
        do
        {
          if (v97)
          {
            v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v125 = *(v94 + 8 * v123 + 32);
          }

          v126 = v125;
          [v125 v82[145]];
          v128 = v127;

          v320 = v124;
          v130 = v124[2];
          v129 = v124[3];
          if (v130 >= v129 >> 1)
          {
            sub_100167664((v129 > 1), v130 + 1, 1);
            v124 = v320;
          }

          ++v123;
          v124[2] = v130 + 1;
          v124[v130 + 4] = v128;
        }

        while (v100 != v123);
      }

      else
      {

        v124 = _swiftEmptyArrayStorage;
      }

      v131 = v124[2];
      v8 = v307;
      if (v131)
      {
        if (v131 <= 3)
        {
          v132 = 0;
          v133 = 0.0;
          goto LABEL_93;
        }

        v132 = v131 & 0x7FFFFFFFFFFFFFFCLL;
        v134 = (v124 + 6);
        v133 = 0.0;
        v135 = v131 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v133 = v133 + *(v134 - 2) + *(v134 - 1) + *v134 + v134[1];
          v134 += 4;
          v135 -= 4;
        }

        while (v135);
        if (v131 != v132)
        {
LABEL_93:
          v136 = v131 - v132;
          v137 = &v124[v132 + 4];
          do
          {
            v138 = *v137++;
            v133 = v133 + v138;
            --v136;
          }

          while (v136);
        }
      }

      else
      {
        v133 = 0.0;
      }

      v139 = v304;
      v140 = [v304 timestamp];
      v141 = v312;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v142 = objc_allocWithZone(CLLocation);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v144 = [v142 initWithCoordinate:isa altitude:v306.f64[0] horizontalAccuracy:v306.f64[1] verticalAccuracy:v133 / v100 timestamp:{12.5, 12.5}];

      (*v305)(v141, v313);
      v145 = v144;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v318 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v318 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      *&v306.f64[0] = v318;
      goto LABEL_46;
    }

    if (v111)
    {
      v306 = v102[2];

      goto LABEL_75;
    }

    v8 = v307;
LABEL_46:
    if (++v93 == v299)
    {
      goto LABEL_107;
    }
  }

  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_177:

  __break(1u);
  return result;
}

uint64_t sub_1004C9ED4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v42 = a3;
  v55 = a2;
  v54 = type metadata accessor for FMAnnotationIdentifier();
  v51 = *(v54 - 8);
  __chkstk_darwin(v54);
  v56 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = *a1;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_26:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_27:
    v34 = v42;
    v35 = swift_allocObject();
    v36 = v55;
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v43;
    aBlock[4] = sub_1004D1484;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100642348;
    v37 = _Block_copy(aBlock);

    v38 = v44;
    static DispatchQoS.unspecified.getter();
    v58 = _swiftEmptyArrayStorage;
    sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
    v39 = v46;
    v40 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);
    (*(v48 + 8))(v39, v40);
    (*(v45 + 8))(v38, v47);
  }

  v10 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_27;
  }

LABEL_3:
  v11 = 0;
  v52 = isUniquelyReferenced_nonNull_native;
  v53 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v50 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v12 = v55;
  while (1)
  {
    if (v53)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *(v50 + 16))
      {
        goto LABEL_25;
      }

      v15 = *(isUniquelyReferenced_nonNull_native + 8 * v11 + 32);
    }

    v16 = v15;
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    __chkstk_darwin(v15);
    *(&v42 - 2) = v16;
    v18 = v56;
    OS_dispatch_queue.sync<A>(execute:)();
    swift_beginAccess();
    v19 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = *(v12 + 16);
    v20 = v58;
    *(v12 + 16) = 0x8000000000000000;
    v22 = sub_1001B4074(v18);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_23;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v58;
      if (v21)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1001C0050();
      v29 = v58;
      if (v26)
      {
LABEL_4:
        v13 = v29[7];
        v14 = *(v13 + 8 * v22);
        *(v13 + 8 * v22) = v19;

        sub_10002A100(v56, type metadata accessor for FMAnnotationIdentifier);
        goto LABEL_5;
      }
    }

LABEL_18:
    v29[(v22 >> 6) + 8] |= 1 << v22;
    isUniquelyReferenced_nonNull_native = type metadata accessor for FMAnnotationIdentifier;
    v30 = v56;
    sub_100027BE0(v56, v29[6] + *(v51 + 72) * v22, type metadata accessor for FMAnnotationIdentifier);
    *(v29[7] + 8 * v22) = v19;
    sub_10002A100(v30, type metadata accessor for FMAnnotationIdentifier);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_24;
    }

    v29[2] = v33;
LABEL_5:
    *(v55 + 16) = v29;

    swift_endAccess();

    ++v11;
    isUniquelyReferenced_nonNull_native = v52;
    if (v17 == v10)
    {
      goto LABEL_27;
    }
  }

  sub_1001B9890(v25, isUniquelyReferenced_nonNull_native);
  v27 = sub_1001B4074(v56);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    v29 = v58;
    if (v26)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1004CA508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a2 + 16);
  swift_beginAccess();
  v6 = *(a3 + 16);

  sub_100012E50(v5, v6);
}

void sub_1004CA5A0(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v87 = a5;
  v88 = a4;
  v79 = type metadata accessor for DispatchWorkItemFlags();
  v78 = *(v79 - 1);
  __chkstk_darwin(v79);
  v80 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPConfigValue();
  v82 = *(v9 - 8);
  __chkstk_darwin(v9);
  v81 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v85 = *(v11 - 8);
  v86 = v11;
  __chkstk_darwin(v11);
  v84 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v13 - 8);
  v83 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for DispatchQoS();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v91 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FMIPUnknownItem();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FMAnnotationIdentifier();
  __chkstk_darwin(v20);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = *a1;
  v90 = a3;
  FMIPUnknownItem.identifier.getter();
  swift_storeEnumTagMultiPayload();
  if (*(a2 + 16) && (v23 = sub_1001B4074(v22), (v24 & 1) != 0))
  {
    v25 = *(*(a2 + 56) + 8 * v23);
    sub_10002A100(v22, type metadata accessor for FMAnnotationIdentifier);
    type metadata accessor for FMUnknownItemAnnotation();
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = v26;
      v28 = v88;
      [v88 coordinate];
      v30 = v29;
      v32 = v31;
      [v28 horizontalAccuracy];
      v34 = v33;
      v88 = *&v27[OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_updateQueue];
      static DispatchWorkItemFlags.barrier.getter();
      (*(v17 + 16))(&v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v90, v16);
      v35 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v36 = v18 + v35 + 7;
      v37 = v17;
      v38 = v36 & 0xFFFFFFFFFFFFFFF8;
      v39 = ((v36 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      *(v40 + 16) = v34;
      *(v40 + 24) = v27;
      v41 = v40 + v35;
      v42 = v87;
      (*(v37 + 32))(v41, v19, v16);
      v43 = (v40 + v38);
      *v43 = v30;
      v43[1] = v32;
      *(v40 + v39) = xmmword_10055DF60;
      v44 = v25;
      v45 = v89;
      *(v40 + ((v39 + 23) & 0xFFFFFFFFFFFFFFF8)) = v89;
      aBlock[4] = sub_1004D13D0;
      aBlock[5] = v40;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_1006422F8;
      v46 = _Block_copy(aBlock);
      v47 = v44;
      v48 = v45;
      v49 = v91;
      static DispatchQoS.unspecified.getter();
      v50 = v80;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v46);
      (*(v76 + 8))(v49, v77);
      (*(v78 + 8))(v50, v79);

LABEL_10:
      *v42 = v27;
      return;
    }

    v76 = v9;
  }

  else
  {
    v76 = v9;
    sub_10002A100(v22, type metadata accessor for FMAnnotationIdentifier);
  }

  v51 = v88;
  [v88 coordinate];
  v53 = v52;
  v55 = v54;
  [v51 horizontalAccuracy];
  v57 = v56;
  v88 = *&v56;
  v77 = v17;
  v80 = *(v17 + 16);
  (v80)(&v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v90, v16);
  v58 = objc_allocWithZone(type metadata accessor for FMUnknownItemAnnotation());
  v59 = OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_itemImage;
  *&v58[OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_itemImage] = 0;
  v90 = OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_updateQueue;
  v78 = sub_10000905C(0, &qword_1006AEDC0);
  v60 = v89;
  v79 = v89;
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v85 + 104))(v84, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v86);
  *&v58[v90] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v61 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v80)(&v58[OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_item], v61, v16);
  v62 = *&v58[v59];
  *&v58[v59] = v60;
  v63 = v79;

  v64 = &v58[OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_tempCoordinate];
  *v64 = v53;
  v64[1] = v55;
  if ((v88 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v57 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v57 < 9.22337204e18)
  {
    v65 = v82;
    v66 = v81;
    v67 = v76;
    (*(v82 + 104))(v81, enum case for FMIPConfigValue.inaccuracyRadiusThreshold(_:), v76);
    v94 = 0x7FFFFFFFFFFFFFFFLL;
    FMIPGlobalConfig<A>(_:fallback:)();
    (*(v65 + 8))(v66, v67);
    v68 = aBlock[0];
    v69 = &v58[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
    *v69 = 0;
    v69[1] = 0;
    *&v58[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
    *&v58[OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage] = 0;
    *&v58[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier] = xmmword_10055DF60;
    v70 = &v58[OBJC_IVAR____TtC6FindMy12FMAnnotation_coordinate];
    *v70 = v53;
    v70[1] = v55;
    *&v58[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = v57;
    v58[OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou] = 0;
    v58[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = v68 < v57;
    v58[OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive] = 0;
    v71 = type metadata accessor for FMAnnotation();
    v93.receiver = v58;
    v93.super_class = v71;
    v27 = objc_msgSendSuper2(&v93, "init");
    v72 = FMIPUnknownItem.name.getter();
    v74 = v73;

    (*(v77 + 8))(v61, v16);
    v75 = &v27[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
    *v75 = v72;
    v75[1] = v74;

    v42 = v87;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1004CAF58()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v0 + 16) + 56);
  v12 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v11 + v12, v10, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() - 13 >= 2)
  {
    return sub_10002A100(v10, type metadata accessor for FMSelectedSection);
  }

  v15 = *(v0 + 88);
  aBlock[4] = sub_1004D1F9C;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100642190;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v16);
}

uint64_t sub_1004CB2D8()
{
  v0 = sub_1001548DC(_swiftEmptyArrayStorage);
  sub_100012E50(v0, _swiftEmptyArrayStorage);
}

void sub_1004CB330()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMMapViewDataSource: unsubscribing all providers", v5, 2u);
  }

  if (v1[8])
  {
    v6 = *(*(v1[2] + 24) + 16);

    os_unfair_lock_lock((v6 + 24));
    sub_10008FB6C((v6 + 16));
    os_unfair_lock_unlock((v6 + 24));

    v1[8] = 0;

    if (!v1[9])
    {
      return;
    }
  }

  else if (!v1[9])
  {
    return;
  }

  v7 = *(*(v1[2] + 48) + 32);

  os_unfair_lock_lock((v7 + 24));
  sub_10008FB88((v7 + 16));
  os_unfair_lock_unlock((v7 + 24));

  v1[9] = 0;
}

uint64_t sub_1004CB520()
{
  v1 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v1);
  v3 = &v12[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(v0 + 16) + 56);
  v5 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v4 + v5, v3, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_10002A100(v3, type metadata accessor for FMSelectedSection);
LABEL_6:
    v9 = 0;
    return v9 & 1;
  }

  v6 = *v3;
  sub_100091880(*(v3 + 1), *(v3 + 2));
  v7 = FMIPDevice.baIdentifier.getter();
  if (!v8)
  {

    goto LABEL_6;
  }

  v12[0] = v7;
  v12[1] = v8;
  __chkstk_darwin(v7);
  *(&v11 - 2) = v12;
  v9 = sub_10008A40C(sub_10011F7D4, (&v11 - 4), v6);

  return v9 & 1;
}

uint64_t sub_1004CB6BC()
{

  sub_10005CD20(v0 + 24);

  return v0;
}

uint64_t sub_1004CB71C()
{
  sub_1004CB6BC();

  return swift_deallocClassInstance();
}

unint64_t sub_1004CB774()
{
  result = qword_1006C2340;
  if (!qword_1006C2340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2340);
  }

  return result;
}

unint64_t sub_1004CB7CC()
{
  result = qword_1006C2348;
  if (!qword_1006C2348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2348);
  }

  return result;
}

Swift::Int sub_1004CB91C(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  type metadata accessor for FMIPUnknownItem();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_10025F3A4(v5);
  }

  result = sub_1004CBD54(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_1004CB9DC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000573A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v26 = v2 + 32;
  v31[0] = v2 + 32;
  v31[1] = v4;
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 < 2)
    {
      return specialized ContiguousArray._endMutation()();
    }

    v8 = -1;
    v9 = 1;
    v10 = v2 + 32;
    v25 = v4;
LABEL_10:
    v28 = v9;
    v29 = v8;
    v13 = *(v26 + 8 * v9);
    v27 = v10;
    while (1)
    {
      if (*&v13[OBJC_IVAR____TtC6FindMy12FMAnnotation_title + 8])
      {
        v14 = *&v13[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
        v15 = *&v13[OBJC_IVAR____TtC6FindMy12FMAnnotation_title + 8];
      }

      else
      {
        v14 = 0;
        v15 = 0xE000000000000000;
      }

      v16 = *v10;
      v17 = (*v10 + OBJC_IVAR____TtC6FindMy12FMAnnotation_title);
      if (v17[1])
      {
        v18 = v17[1];
        if (v14 != *v17)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v18 = 0xE000000000000000;
        if (v14)
        {
          goto LABEL_19;
        }
      }

      if (v15 == v18)
      {

        v11 = v13;
        v12 = v16;

LABEL_9:
        v9 = v28 + 1;
        v10 = v27 + 8;
        v8 = v29 - 1;
        if (v28 + 1 == v25)
        {
          return specialized ContiguousArray._endMutation()();
        }

        goto LABEL_10;
      }

LABEL_19:
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v20 = v13;
      v21 = v16;

      if (v19)
      {
        v22 = *v10;
        v13 = *(v10 + 8);
        *v10 = v13;
        *(v10 + 8) = v22;
        v10 -= 8;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  v6 = v5;
  if (v4 >= 2)
  {
    type metadata accessor for FMAnnotation();
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4 >> 1;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v30[0] = ((v7 & 0xFFFFFFFFFFFFFF8) + 32);
  v30[1] = (v4 >> 1);
  sub_1004CD2D0(v30, v32, v31, v6);
  *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_1004CBC40(uint64_t (*a1)(id *, id *), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *v3 = sub_1000573A8(v6);
  }

  sub_1004CBE90(a1, a2);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_1004CBCD8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000573A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1004CBFA4(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_1004CBD54(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FMIPUnknownItem();
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v8;
      }

      v10 = *(type metadata accessor for FMIPUnknownItem() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_1004CC6C4(v11, v12, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1004CC0B8(0, v5, 1, a1, a2);
  }

  return result;
}

void sub_1004CBE90(uint64_t (*a1)(id *, id *), uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = _minimumMergeRunLength(_:)(v5);
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FMUnknownItemAnnotation();
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      sub_1004CDA90(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1004CC3A4(0, v5, 1, a1);
  }
}

void sub_1004CBFA4(uint64_t *a1)
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
        sub_10000905C(0, &qword_1006BBCB0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1004CE15C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1004CC4A4(0, v2, 1, a1);
  }
}

uint64_t sub_1004CC0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v52 = a5;
  v53 = a4;
  v11 = type metadata accessor for FMIPUnknownItem();
  v12 = __chkstk_darwin(v11);
  v47 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v54 = &v38 - v15;
  result = __chkstk_darwin(v14);
  v39 = a2;
  if (a3 != a2)
  {
    v50 = &v38 - v17;
    v19 = *v5;
    v21 = *(v18 + 16);
    v20 = v18 + 16;
    v22 = *(v20 + 56);
    v48 = v21;
    v49 = (v20 - 8);
    v51 = v20;
    v45 = (v20 + 16);
    v46 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v44 = -v22;
    v24 = a1 - a3;
    v38 = v22;
    v25 = v19 + v22 * a3;
    v26 = v54;
    while (2)
    {
      v42 = v23;
      v43 = a3;
      v40 = v25;
      v41 = v24;
      v27 = v23;
      while (1)
      {
        v28 = v50;
        v29 = v48;
        v48(v50, v25, v11);
        v29(v26, v27, v11);
        v30 = v53(v28, v26);
        if (v7)
        {
          v37 = *v49;
          (*v49)(v26, v11);
          return (v37)(v28, v11);
        }

        v31 = v30;
        v32 = v26;
        v33 = *v49;
        (*v49)(v32, v11);
        result = (v33)(v28, v11);
        if ((v31 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return result;
        }

        v34 = *v45;
        v35 = v47;
        (*v45)(v47, v25, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = (v34)(v27, v35, v11);
        v27 += v44;
        v25 += v44;
        v36 = __CFADD__(v24++, 1);
        v26 = v54;
        v7 = 0;
        if (v36)
        {
          goto LABEL_11;
        }
      }

      v26 = v54;
      v7 = 0;
LABEL_11:
      a3 = v43 + 1;
      v23 = v42 + v38;
      v24 = v41 - 1;
      v25 = v40 + v38;
      if (v43 + 1 != v39)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1004CC3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1004CC4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for Date();
  __chkstk_darwin(v35);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = [v20 timestamp];
      v23 = v34;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v22) = static Date.< infix(_:_:)();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1004CC6C4(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v141 = a1;
  v162 = type metadata accessor for FMIPUnknownItem();
  v12 = __chkstk_darwin(v162);
  v145 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v148 = &v133 - v15;
  v16 = __chkstk_darwin(v14);
  v17 = __chkstk_darwin(v16);
  v18 = __chkstk_darwin(v17);
  v20 = &v133 - v19;
  v21 = __chkstk_darwin(v18);
  v139 = &v133 - v22;
  __chkstk_darwin(v21);
  result = __chkstk_darwin(&v133 - v23);
  v160 = v26;
  v161 = a3;
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = _swiftEmptyArrayStorage;
    v32 = a4;
LABEL_104:
    a4 = *v141;
    if (*v141)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v140 = &v133 - v25;
  v138 = result;
  v150 = v20;
  v146 = v28;
  v147 = v27;
  v136 = a6;
  v30 = 0;
  v158 = (v26 + 8);
  v159 = v26 + 16;
  v154 = (v26 + 32);
  v31 = _swiftEmptyArrayStorage;
  v155 = a5;
  v32 = a4;
  v157 = a4;
  while (1)
  {
    v33 = v30;
    v142 = v31;
    if ((v30 + 1) < v29)
    {
      v143 = v30;
      v144 = v29;
      v34 = *v161;
      v35 = *(v160 + 72);
      a4 = *v161 + v35 * (v30 + 1);
      v36 = *(v160 + 16);
      v37 = v162;
      v36(v140, a4, v162);
      v156 = v35;
      v137 = v34;
      v38 = &v34[v35 * v143];
      v39 = v138;
      v151 = v36;
      v36(v138, v38, v37);
      v40 = v140;
      LODWORD(v153) = v32(v140, v39);
      if (v7)
      {
        v132 = *v158;
        (*v158)(v39, v37);
        v132(v40, v37);
      }

      v163 = 0;
      v41 = *v158;
      (*v158)(v39, v37);
      v149 = v41;
      result = (v41)(v40, v37);
      v135 = v144 - 1;
      v152 = v144 - 2;
      v42 = v143;
      a5 = v155;
      v43 = v156;
      v44 = &v137[v156 * (v143 + 2)];
      v45 = v139;
      while (v152 != v42)
      {
        v46 = v162;
        v47 = v151;
        (v151)(v45, v44, v162);
        v48 = a5;
        v49 = v150;
        (v47)(v150, a4, v46);
        v50 = v48;
        v51 = v163;
        v52 = v157(v45, v49);
        v163 = v51;
        if (v51)
        {
          v130 = v149;
          (v149)(v49, v46);
          v130(v45, v46);
        }

        v53 = v52;
        v54 = v149;
        (v149)(v49, v46);
        result = v54(v45, v46);
        ++v42;
        v43 = v156;
        v44 += v156;
        a4 += v156;
        a5 = v50;
        if ((v153 ^ v53))
        {
          v55 = v42 + 1;
          goto LABEL_12;
        }
      }

      v42 = v135;
      v55 = v144;
LABEL_12:
      v33 = v143;
      if (v153)
      {
        if (v55 < v143)
        {
          goto LABEL_141;
        }

        v31 = v162;
        if (v143 <= v42)
        {
          a4 = v43 * (v55 - 1);
          v56 = v55;
          v57 = v55 * v43;
          v144 = v56;
          v58 = v56;
          v59 = v143;
          v60 = v143 * v43;
          do
          {
            if (v59 != --v58)
            {
              v62 = *v161;
              if (!*v161)
              {
                goto LABEL_145;
              }

              v63 = *v154;
              (*v154)(v145, &v62[v60], v162);
              if (v60 < a4 || &v62[v60] >= &v62[v57])
              {
                v61 = v162;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v61 = v162;
                if (v60 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v63)(&v62[a4], v145, v61);
              a5 = v155;
              v43 = v156;
              v31 = v61;
            }

            ++v59;
            a4 -= v43;
            v57 -= v43;
            v60 += v43;
          }

          while (v59 < v58);
          v7 = v163;
          v32 = v157;
          v33 = v143;
          v55 = v144;
        }

        else
        {
          v7 = v163;
          v32 = v157;
        }
      }

      else
      {
        v31 = v162;
        v7 = v163;
        v32 = v157;
      }
    }

    else
    {
      v55 = (v30 + 1);
      v31 = v162;
    }

    v64 = v161[1];
    if (v55 < v64)
    {
      if (__OFSUB__(v55, v33))
      {
        goto LABEL_137;
      }

      if (v55 - v33 < v136)
      {
        if (__OFADD__(v33, v136))
        {
          __break(1u);
        }

        else
        {
          v144 = v55;
          if (&v33[v136] >= v64)
          {
            v65 = v64;
          }

          else
          {
            v65 = &v33[v136];
          }

          if (v65 >= v33)
          {
            if (v144 == v65)
            {
              v55 = v144;
              goto LABEL_38;
            }

            v163 = v7;
            v112 = *v161;
            v113 = *(v160 + 72);
            v156 = *(v160 + 16);
            v114 = (v112 + v113 * (v144 - 1));
            v152 = -v113;
            v153 = v112;
            v143 = v33;
            v115 = &v33[-v144];
            v134 = v113;
            a4 = v112 + v144 * v113;
            v151 = v65;
            while (1)
            {
              v135 = a4;
              v137 = v115;
              v149 = v114;
              while (1)
              {
                v116 = v146;
                v117 = v156;
                (v156)(v146, a4, v31);
                v118 = v147;
                v117(v147, v114, v31);
                v119 = v163;
                v120 = v157(v116, v118);
                v163 = v119;
                if (v119)
                {
                  v131 = *v158;
                  (*v158)(v118, v31);
                  v131(v116, v31);
                }

                v121 = v120;
                v122 = *v158;
                (*v158)(v118, v31);
                result = (v122)(v116, v31);
                if ((v121 & 1) == 0)
                {
                  break;
                }

                if (!v153)
                {
                  goto LABEL_143;
                }

                v123 = *v154;
                v124 = v148;
                v31 = v162;
                (*v154)(v148, a4, v162);
                swift_arrayInitWithTakeFrontToBack();
                v123(v114, v124, v31);
                v114 += v152;
                a4 += v152;
                v125 = __CFADD__(v115++, 1);
                a5 = v155;
                if (v125)
                {
                  goto LABEL_101;
                }
              }

              a5 = v155;
              v31 = v162;
LABEL_101:
              v114 = &v149[v134];
              v115 = v137 - 1;
              a4 = v135 + v134;
              v55 = v151;
              if (++v144 == v151)
              {
                v32 = v157;
                v7 = v163;
                v33 = v143;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v31 = v142;
    if (v55 < v33)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    a4 = v32;
    if ((result & 1) == 0)
    {
      result = sub_10008B8B8(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v67 = *(v31 + 2);
    v66 = *(v31 + 3);
    v68 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      result = sub_10008B8B8((v66 > 1), v67 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v68;
    v69 = &v31[16 * v67];
    *(v69 + 4) = v33;
    *(v69 + 5) = v55;
    v151 = v55;
    v70 = *v141;
    if (!*v141)
    {
      goto LABEL_146;
    }

    if (v67)
    {
      break;
    }

    a5 = v155;
    v32 = a4;
LABEL_90:
    v29 = v161[1];
    v30 = v151;
    if (v151 >= v29)
    {
      goto LABEL_104;
    }
  }

  a5 = v155;
  v32 = a4;
  while (1)
  {
    a4 = v68 - 1;
    if (v68 >= 4)
    {
      v75 = &v31[16 * v68 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_123;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_124;
      }

      v82 = &v31[16 * v68];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_126;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_129;
      }

      if (v86 >= v78)
      {
        v104 = &v31[16 * a4 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_135;
        }

        if (v73 < v107)
        {
          a4 = v68 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v68 == 3)
    {
      v71 = *(v31 + 4);
      v72 = *(v31 + 5);
      v81 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      v74 = v81;
LABEL_59:
      if (v74)
      {
        goto LABEL_125;
      }

      v87 = &v31[16 * v68];
      v89 = *v87;
      v88 = *(v87 + 1);
      v90 = __OFSUB__(v88, v89);
      v91 = v88 - v89;
      v92 = v90;
      if (v90)
      {
        goto LABEL_128;
      }

      v93 = &v31[16 * a4 + 32];
      v95 = *v93;
      v94 = *(v93 + 1);
      v81 = __OFSUB__(v94, v95);
      v96 = v94 - v95;
      if (v81)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v91, v96))
      {
        goto LABEL_132;
      }

      if (v91 + v96 >= v73)
      {
        if (v73 < v96)
        {
          a4 = v68 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v97 = &v31[16 * v68];
    v99 = *v97;
    v98 = *(v97 + 1);
    v81 = __OFSUB__(v98, v99);
    v91 = v98 - v99;
    v92 = v81;
LABEL_73:
    if (v92)
    {
      goto LABEL_127;
    }

    v100 = &v31[16 * a4];
    v102 = *(v100 + 4);
    v101 = *(v100 + 5);
    v81 = __OFSUB__(v101, v102);
    v103 = v101 - v102;
    if (v81)
    {
      goto LABEL_130;
    }

    if (v103 < v91)
    {
      goto LABEL_90;
    }

LABEL_80:
    v108 = a4 - 1;
    if (a4 - 1 >= v68)
    {
      break;
    }

    if (!*v161)
    {
      goto LABEL_142;
    }

    v109 = *&v31[16 * v108 + 32];
    v110 = *&v31[16 * a4 + 40];
    sub_1004CE9CC(*v161 + *(v160 + 72) * v109, *v161 + *(v160 + 72) * *&v31[16 * a4 + 32], *v161 + *(v160 + 72) * v110, v70, v32, a5);
    if (v7)
    {
    }

    if (v110 < v109)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_10025EFD4(v31);
    }

    if (v108 >= *(v31 + 2))
    {
      goto LABEL_122;
    }

    v111 = &v31[16 * v108];
    *(v111 + 4) = v109;
    *(v111 + 5) = v110;
    v164 = v31;
    result = sub_10025EF48(a4);
    v31 = v164;
    v68 = *(v164 + 2);
    if (v68 <= 1)
    {
      goto LABEL_90;
    }
  }

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
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  result = sub_10025EFD4(v31);
  v31 = result;
LABEL_106:
  v164 = v31;
  v126 = *(v31 + 2);
  if (v126 < 2)
  {
  }

  while (*v161)
  {
    v127 = *&v31[16 * v126];
    v128 = *&v31[16 * v126 + 24];
    sub_1004CE9CC(*v161 + *(v160 + 72) * v127, *v161 + *(v160 + 72) * *&v31[16 * v126 + 16], *v161 + *(v160 + 72) * v128, a4, v32, a5);
    if (v7)
    {
    }

    if (v128 < v127)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_10025EFD4(v31);
    }

    if (v126 - 2 >= *(v31 + 2))
    {
      goto LABEL_134;
    }

    v129 = &v31[16 * v126];
    *v129 = v127;
    *(v129 + 1) = v128;
    v164 = v31;
    result = sub_10025EF48(v126 - 1);
    v31 = v164;
    v126 = *(v164 + 2);
    if (v126 <= 1)
    {
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

void sub_1004CD2D0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_107:
    v4 = v7;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_109:
      v113 = v4;
      v92 = *(v4 + 2);
      if (v92 >= 2)
      {
        while (*a3)
        {
          v93 = *&v4[16 * v92];
          v94 = *&v4[16 * v92 + 24];
          sub_1004CF0C4((*a3 + 8 * v93), (*a3 + 8 * *&v4[16 * v92 + 16]), (*a3 + 8 * v94), v7);
          if (v108)
          {
            goto LABEL_117;
          }

          if (v94 < v93)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_10025EFD4(v4);
          }

          if (v92 - 2 >= *(v4 + 2))
          {
            goto LABEL_134;
          }

          v95 = &v4[16 * v92];
          *v95 = v93;
          *(v95 + 1) = v94;
          v113 = v4;
          sub_10025EF48(v92 - 1);
          v4 = v113;
          v92 = *(v113 + 2);
          if (v92 <= 1)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_144;
      }

LABEL_117:

      return;
    }

LABEL_140:
    v4 = sub_10025EFD4(v4);
    goto LABEL_109;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (2)
  {
    v8 = v6;
    v104 = v7;
    if (v6 + 1 >= v5)
    {
      ++v6;
      goto LABEL_29;
    }

    v106 = v5;
    v9 = *a3;
    v112 = *(*a3 + 8 * (v6 + 1));
    v10 = v6;
    v111 = *(v9 + 8 * v6);
    v11 = v111;
    v12 = v112;
    v13 = v11;
    v109 = sub_1004C12AC(&v112, &v111);
    if (v108)
    {

      return;
    }

    v14 = v10 + 2;
    v97 = v10;
    v102 = 8 * v10;
    v4 = (v9 + 8 * v10 + 16);
    while (1)
    {
      v6 = v106;
      v7 = v104;
      if (v106 == v14)
      {
        break;
      }

      v18 = *v4;
      v19 = (*v4 + OBJC_IVAR____TtC6FindMy12FMAnnotation_title);
      if (v19[1])
      {
        v20 = *v19;
        v21 = v19[1];
      }

      else
      {
        v20 = 0;
        v21 = 0xE000000000000000;
      }

      v22 = *(v4 - 1);
      v23 = &v22[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
      if (*&v22[OBJC_IVAR____TtC6FindMy12FMAnnotation_title + 8])
      {
        v24 = *(v23 + 1);
        if (v20 != *v23)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v24 = 0xE000000000000000;
        if (v20)
        {
          goto LABEL_7;
        }
      }

      if (v21 == v24)
      {
        v15 = 0;
        goto LABEL_8;
      }

LABEL_7:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_8:

      v16 = v18;
      v17 = v22;

      ++v14;
      v4 += 8;
      if ((v109 ^ v15))
      {
        v6 = v14 - 1;
        v7 = v104;
        break;
      }
    }

    v8 = v97;
    v25 = v102;
    if ((v109 & 1) == 0)
    {
      goto LABEL_29;
    }

    if (v6 < v97)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (v97 < v6)
    {
      v26 = 8 * v6 - 8;
      v27 = v6;
      v28 = v97;
      do
      {
        if (v28 != --v27)
        {
          v29 = *a3;
          if (!*a3)
          {
            goto LABEL_143;
          }

          v30 = *(v29 + v25);
          *(v29 + v25) = *(v29 + v26);
          *(v29 + v26) = v30;
        }

        ++v28;
        v26 -= 8;
        v25 += 8;
      }

      while (v28 < v27);
    }

LABEL_29:
    v31 = a3[1];
    if (v6 >= v31)
    {
      goto LABEL_55;
    }

    if (__OFSUB__(v6, v8))
    {
      goto LABEL_136;
    }

    if (v6 - v8 >= a4)
    {
LABEL_55:
      if (v6 < v8)
      {
        goto LABEL_135;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_10008B8B8(0, *(v7 + 2) + 1, 1, v7);
      }

      v47 = *(v7 + 2);
      v46 = *(v7 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v7 = sub_10008B8B8((v46 > 1), v47 + 1, 1, v7);
      }

      *(v7 + 2) = v48;
      v49 = &v7[16 * v47];
      *(v49 + 4) = v8;
      *(v49 + 5) = v6;
      v4 = *a1;
      if (!*a1)
      {
        goto LABEL_145;
      }

      if (!v47)
      {
LABEL_3:
        v5 = a3[1];
        if (v6 >= v5)
        {
          goto LABEL_107;
        }

        continue;
      }

      while (1)
      {
        v50 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v51 = *(v7 + 4);
          v52 = *(v7 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_75:
          if (v54)
          {
            goto LABEL_124;
          }

          v67 = &v7[16 * v48];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_127;
          }

          v73 = &v7[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_131;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v48 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v77 = &v7[16 * v48];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_89:
        if (v72)
        {
          goto LABEL_126;
        }

        v80 = &v7[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_129;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_96:
        v88 = v50 - 1;
        if (v50 - 1 >= v48)
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v89 = *&v7[16 * v88 + 32];
        v90 = *&v7[16 * v50 + 40];
        sub_1004CF0C4((*a3 + 8 * v89), (*a3 + 8 * *&v7[16 * v50 + 32]), (*a3 + 8 * v90), v4);
        if (v108)
        {
          goto LABEL_117;
        }

        if (v90 < v89)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10025EFD4(v7);
        }

        if (v88 >= *(v7 + 2))
        {
          goto LABEL_121;
        }

        v91 = &v7[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        v113 = v7;
        sub_10025EF48(v50);
        v7 = v113;
        v48 = *(v113 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v7[16 * v48 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_122;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_123;
      }

      v62 = &v7[16 * v48];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_125;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_128;
      }

      if (v66 >= v58)
      {
        v84 = &v7[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_132;
        }

        if (v53 < v87)
        {
          v50 = v48 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

    break;
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_137;
  }

  if (v8 + a4 < v31)
  {
    v31 = v8 + a4;
  }

  if (v31 < v8)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v6 == v31)
  {
    goto LABEL_55;
  }

  v100 = v31;
  v110 = *a3;
  v32 = *a3 + 8 * v6 - 8;
  v98 = v8;
  v33 = v8 - v6;
  while (2)
  {
    v107 = v6;
    v36 = *(v110 + 8 * v6);
    v101 = v33;
    v103 = v32;
LABEL_41:
    if (*&v36[OBJC_IVAR____TtC6FindMy12FMAnnotation_title + 8])
    {
      v37 = *&v36[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
      v4 = *&v36[OBJC_IVAR____TtC6FindMy12FMAnnotation_title + 8];
    }

    else
    {
      v37 = 0;
      v4 = 0xE000000000000000;
    }

    v38 = *v32;
    v39 = (*v32 + OBJC_IVAR____TtC6FindMy12FMAnnotation_title);
    if (v39[1])
    {
      v40 = v39[1];
      if (v37 != *v39)
      {
        break;
      }
    }

    else
    {
      v40 = 0xE000000000000000;
      if (v37)
      {
        break;
      }
    }

    if (v4 == v40)
    {

      v34 = v36;
      v35 = v38;

LABEL_39:
      v6 = v107 + 1;
      v32 = v103 + 8;
      v33 = v101 - 1;
      if (v107 + 1 == v100)
      {
        v7 = v104;
        v6 = v100;
        v8 = v98;
        goto LABEL_55;
      }

      continue;
    }

    break;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v42 = v36;
  v43 = v38;

  if ((v41 & 1) == 0)
  {
    goto LABEL_39;
  }

  if (v110)
  {
    v44 = *v32;
    v36 = *(v32 + 8);
    *v32 = v36;
    *(v32 + 8) = v44;
    v32 -= 8;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_39;
    }

    goto LABEL_41;
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}