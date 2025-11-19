uint64_t sub_100327FA8(uint64_t *__dst, uint64_t *__src, uint64_t *a3, uint64_t *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v15 = (v5 + 8 * v10);
    if (v8 < 8 || __src >= v6)
    {
LABEL_21:
      v21 = v7;
      goto LABEL_53;
    }

    v16 = __src;
    while (1)
    {
      v45 = *v16;
      v44 = *v5;

      v17 = sub_100321BCC(&v45, &v44);
      if (v4)
      {

        v33 = v15 - v5 + 7;
        if ((v15 - v5) >= 0)
        {
          v33 = v15 - v5;
        }

        if (v7 < v5 || v7 >= v5 + (v33 & 0xFFFFFFFFFFFFFFF8) || v7 != v5)
        {
          v34 = 8 * (v33 >> 3);
          v35 = v7;
          goto LABEL_59;
        }

        return 1;
      }

      v18 = v17;

      if (!v18)
      {
        break;
      }

      v19 = v16;
      v20 = v7 == v16++;
      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v5 >= v15 || v16 >= v6)
      {
        goto LABEL_21;
      }
    }

    v19 = v5;
    v20 = v7 == v5;
    v5 += 8;
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v19;
    goto LABEL_19;
  }

  v21 = __src;
  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v15 = (v5 + 8 * v13);
  if (v11 < 8 || v21 <= v7)
  {
LABEL_53:
    v39 = v15 - v5 + 7;
    if ((v15 - v5) >= 0)
    {
      v39 = v15 - v5;
    }

    if (v21 >= v5 && v21 < v5 + (v39 & 0xFFFFFFFFFFFFFFF8) && v21 == v5)
    {
      return 1;
    }

    v34 = 8 * (v39 >> 3);
    v35 = v21;
LABEL_59:
    v38 = v5;
LABEL_60:
    memmove(v35, v38, v34);
    return 1;
  }

  v43 = v5;
  v22 = -v5;
  v41 = -v5;
LABEL_28:
  v42 = v21;
  v23 = v21 - 1;
  v24 = v15 + v22;
  --v6;
  v25 = v15;
  v26 = v15;
  while (1)
  {
    v27 = *--v26;
    v45 = v27;
    v28 = v23;
    v44 = *v23;

    v29 = sub_100321BCC(&v45, &v44);
    if (v4)
    {
      break;
    }

    v30 = v29;

    v31 = v6 + 1;
    if (v30)
    {
      v32 = v28;
      if (v31 != v42)
      {
        *v6 = *v28;
      }

      v5 = v43;
      v15 = v25;
      if (v25 <= v43 || (v21 = v32, v22 = v41, v32 <= v7))
      {
        v21 = v32;
        goto LABEL_53;
      }

      goto LABEL_28;
    }

    if (v31 != v25)
    {
      *v6 = *v26;
    }

    v24 -= 8;
    --v6;
    v25 = v26;
    v23 = v28;
    if (v26 <= v43)
    {
      v15 = v26;
      v21 = v42;
      v5 = v43;
      goto LABEL_53;
    }
  }

  if (v24 >= 0)
  {
    v36 = v24;
  }

  else
  {
    v36 = v24 + 7;
  }

  v37 = v36 >> 3;
  v35 = v42;
  v38 = v43;
  if (v42 < v43 || v42 >= (v43 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v42, v43, 8 * v37);
    return 1;
  }

  if (v42 != v43)
  {
    v34 = 8 * v37;
    goto LABEL_60;
  }

  return 1;
}

uint64_t sub_100328340(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = type metadata accessor for FMDeviceCellViewModel();
  v9 = __chkstk_darwin(v64);
  v10 = __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v53 - v14;
  result = __chkstk_darwin(v13);
  v19 = &v53 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_64;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_65;
  }

  v23 = (a2 - a1) / v21;
  v67 = a1;
  v66 = a4;
  v63 = v21;
  if (v23 >= v22 / v21)
  {
    v26 = v22 / v21 * v21;
    v59 = v17;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v27 = v12;
    }

    else
    {
      v27 = v12;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v36 = a4 + v26;
    v37 = v4;
    if (v26 >= 1)
    {
      v38 = -v63;
      v39 = a4 + v26;
      v56 = a4;
      v57 = a1;
      v55 = -v63;
      do
      {
        v53 = v36;
        v40 = a2 + v38;
        v58 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v67 = a2;
            v65 = v53;
            goto LABEL_62;
          }

          v62 = a3;
          v63 = v39;
          v54 = v36;
          v61 = (v39 + v38);
          sub_10032A93C(v39 + v38, v27, type metadata accessor for FMDeviceCellViewModel);
          v43 = v27;
          v44 = v59;
          sub_10032A93C(v40, v59, type metadata accessor for FMDeviceCellViewModel);
          v45 = sub_10032198C(v43, v44);
          if (v37)
          {
            sub_10032A9A4(v44, type metadata accessor for FMDeviceCellViewModel);
            sub_10032A9A4(v43, type metadata accessor for FMDeviceCellViewModel);
            v67 = v58;
            v65 = v54;
            goto LABEL_62;
          }

          v46 = v45;
          v60 = 0;
          v47 = v40;
          v48 = v62;
          v49 = v62 + v38;
          sub_10032A9A4(v44, type metadata accessor for FMDeviceCellViewModel);
          sub_10032A9A4(v43, type metadata accessor for FMDeviceCellViewModel);
          v27 = v43;
          if (v46)
          {
            break;
          }

          v50 = v61;
          v36 = v61;
          a3 = v48 + v38;
          if (v48 < v63 || v49 >= v63)
          {
            v41 = v61;
            swift_arrayInitWithTakeFrontToBack();
            v36 = v41;
            v40 = v47;
            v37 = v60;
          }

          else
          {
            v51 = v48 == v63;
            v40 = v47;
            v37 = v60;
            if (!v51)
            {
              v52 = v61;
              swift_arrayInitWithTakeBackToFront();
              v36 = v52;
            }
          }

          v39 = v36;
          a1 = v57;
          v42 = v50 > v56;
          v38 = v55;
          a2 = v58;
          if (!v42)
          {
            goto LABEL_58;
          }
        }

        a3 = v48 + v38;
        if (v48 < v58 || v49 >= v58)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v60;
          v38 = v55;
        }

        else
        {
          a2 = v47;
          v37 = v60;
          v38 = v55;
          if (v48 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v63;
        v36 = v54;
      }

      while (v63 > v56);
    }

LABEL_58:
    v67 = a2;
    v65 = v36;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v25 = v4;
    }

    else
    {
      v25 = v4;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v62 = a4 + v24;
    v65 = a4 + v24;
    if (v24 >= 1 && a2 < a3)
    {
      v29 = v63;
      v60 = v19;
      v61 = v15;
      while (1)
      {
        v30 = a3;
        sub_10032A93C(a2, v19, type metadata accessor for FMDeviceCellViewModel);
        sub_10032A93C(a4, v15, type metadata accessor for FMDeviceCellViewModel);
        v31 = sub_10032198C(v19, v15);
        if (v25)
        {
          break;
        }

        v32 = v31;
        v33 = v15;
        v34 = a4;
        sub_10032A9A4(v33, type metadata accessor for FMDeviceCellViewModel);
        sub_10032A9A4(v19, type metadata accessor for FMDeviceCellViewModel);
        if (v32)
        {
          v35 = a2 + v29;
          if (a1 < a2 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v35;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v35;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v34 + v29;
        }

        v15 = v61;
        v29 = v63;
        a1 += v63;
        v67 = a1;
        v19 = v60;
        if (a4 >= v62 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_10032A9A4(v15, type metadata accessor for FMDeviceCellViewModel);
      sub_10032A9A4(v19, type metadata accessor for FMDeviceCellViewModel);
    }
  }

LABEL_62:
  sub_10025F138(&v67, &v66, &v65);
  return 1;
}

uint64_t sub_100328970()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMItemsListDataSource: provider didInitialize", v11, 2u);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  aBlock[4] = sub_10032973C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100636CB0;
  v14 = _Block_copy(aBlock);
  v15 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A348(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v17);
}

uint64_t sub_100328D04(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v7 = *(v19 - 8);
  __chkstk_darwin(v19);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v11, v12, "FMDevicesListDataSource: didUpdate %ld devices", v13, 0xCu);
  }

  else
  {
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  aBlock[4] = sub_100329734;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100636C60;
  v16 = _Block_copy(aBlock);

  v17 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A348(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v19);
}

void sub_1003290D4(uint64_t a1)
{
  v2 = type metadata accessor for FMIPDevice();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  (*(v3 + 16))(v5, a1, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = FMIPDevice.debugDescription.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_100005B4C(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMDevicesListDataSource: didUpdate single device %s", v9, 0xCu);
    sub_100006060(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100329308()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v3;
    v14 = v13;
    aBlock[0] = v13;
    *v12 = 136315138;
    type metadata accessor for FMIPSafeLocation();
    v15 = Array.description.getter();
    v17 = sub_100005B4C(v15, v16, aBlock);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "FMMapViewDataSource: didUpdate safeLocations %s", v12, 0xCu);
    sub_100006060(v14);
    v3 = v24;
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v18 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  aBlock[4] = sub_100329714;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100636C10;
  v20 = _Block_copy(aBlock);
  v21 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A348(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v3 + 8))(v5, v2);
  return (*(v25 + 8))(v8, v26);
}

void sub_10032975C()
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
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    sub_10007EBC0(&unk_1006BBCC0);
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v5 + 4) = v7;
    v6->super.isa = v7.super.isa;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMDevicesListDataSource: itemAger itemsDidAge %@", v5, 0xCu);
    sub_100012DF0(v6, &unk_1006AF760);
  }

  v8 = *(v1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_mediator);

  v9 = FMIPManager.devices.getter();

  v10 = *(*(v8 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v11 = v10;
  sub_10031D668(v9, v10, 0);
}

uint64_t sub_10032993C(unint64_t a1)
{
  v3 = type metadata accessor for FMDeviceCellViewModel();
  result = __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel);
  v9 = *(v8 + 16);
  if (v9 < 2)
  {
    return 0;
  }

  if (v9 <= a1)
  {
    __break(1u);
    return result;
  }

  v10 = *(v8 + 8 * a1 + 32);
  if (!*(v10 + 16))
  {
    return 0;
  }

  v11 = result;
  sub_10032A93C(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMDeviceCellViewModel);
  v12 = [objc_opt_self() mainBundle];
  if (a1)
  {
    v23._object = 0x8000000100591070;
    v13._countAndFlagsBits = 0xD000000000000028;
    v13._object = 0x8000000100591040;
    v23._countAndFlagsBits = 0xD00000000000003ALL;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v23);

    sub_10007EBC0(&unk_1006B20B0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100552220;
    v16 = &v7[*(v11 + 100)];
    v18 = *v16;
    v17 = *(v16 + 1);
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_10008EE84();
    *(v15 + 32) = v18;
    *(v15 + 40) = v17;

    countAndFlagsBits = String.init(format:_:)();
  }

  else
  {
    v24._object = 0x80000001005910E0;
    v20._object = 0x80000001005910B0;
    v24._countAndFlagsBits = 0xD000000000000036;
    v20._countAndFlagsBits = 0xD000000000000024;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v12, v21, v24)._countAndFlagsBits;
  }

  sub_10032A9A4(v7, type metadata accessor for FMDeviceCellViewModel);
  return countAndFlagsBits;
}

uint64_t sub_100329BD4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    sub_10000905C(0, &qword_1006BBCB0);
    v15.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v13 + 4) = v15;
    v14->super.isa = v15.super.isa;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMDevicesListDataSource: locationProvider didUpdate locations %@", v13, 0xCu);
    sub_100012DF0(v14, &unk_1006AF760);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = a1;
  aBlock[4] = sub_100329FF0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100636D00;
  v18 = _Block_copy(aBlock);

  v19 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A348(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v22 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v21);
}

uint64_t sub_100329FF8(uint64_t a1)
{
  v3 = *(type metadata accessor for FMIPDevice() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_100324D60(a1, v6, v1 + v4, v7, v9, v10);
}

void sub_10032A0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for FMIPDevice() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = v3 + v9;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v3 + v10);

  sub_100324F14(a1, a2, a3, v3 + v8, v12, v13, v14);
}

uint64_t sub_10032A16C()
{
  v1 = *(type metadata accessor for FMIPDevice() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  type metadata accessor for IndexPath();

  sub_10032A4B4(v0 + v2);
}

uint64_t sub_10032A25C()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10032A3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for FMIPDevice() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  type metadata accessor for IndexPath();
  v11 = *(v4 + 16);

  return sub_1003243A0(a1, a2, a3, a4, v11, v4 + v10);
}

void sub_10032A4B4(uint64_t a1)
{
  v41 = type metadata accessor for FMIPDevice();
  v3 = *(v41 - 8);
  v4 = __chkstk_darwin(v41);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v36 - v7;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "FMDevicesListDataSource: Remove button pressed", v12, 2u);
  }

  v42 = v1;
  v13 = *(&v1->isa + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_tableView);
  while (1)
  {
    v14 = v13;
    v13 = [v13 nextResponder];

    if (!v13)
    {
      break;
    }

    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v40 = v15;
      v16 = v3;
      v17 = *(v3 + 16);
      v18 = v41;
      v39 = v17;
      v17(v8, a1, v41);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v37 = v6;
        v22 = v21;
        v36 = swift_slowAlloc();
        v43 = v36;
        *v22 = 136315138;
        v23 = FMIPDevice.name.getter();
        v38 = a1;
        v25 = v24;
        (*(v16 + 8))(v8, v18);
        v26 = sub_100005B4C(v23, v25, &v43);
        a1 = v38;

        *(v22 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v19, v20, "FMDeviceDetailContentViewController: Remove Accessory Device %s", v22, 0xCu);
        sub_100006060(v36);

        v6 = v37;
      }

      else
      {

        (*(v16 + 8))(v8, v18);
      }

      v39(v6, a1, v18);
      v30 = objc_allocWithZone(type metadata accessor for FMRemoveDeviceViewController());

      v32 = sub_1005047C0(v31, v6);
      v33 = objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
      v34 = v32;
      v35 = sub_1000CC510(v34, 2);
      [v35 setDelegate:v35];
      [v40 presentViewController:v35 animated:1 completion:0];

      return;
    }
  }

  v42 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v42, v27, "FMDevicesListDataSource: Cannot remove device without a view controller", v28, 2u);
  }

  v29 = v42;
}

uint64_t sub_10032A93C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10032A9A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10032AA04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMDeviceCellViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032AA80(void (*a1)(void))
{
  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

id sub_10032AB98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMActionRowView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10032AC84()
{
  v1 = (v0 + OBJC_IVAR____TtC6FindMy15FMActionRowView_identifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC6FindMy15FMActionRowView_activityIndicator;
  *(v0 + v2) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v3 = OBJC_IVAR____TtC6FindMy15FMActionRowView_horizontalStackView;
  *(v0 + v3) = [objc_allocWithZone(UIStackView) init];
  v4 = OBJC_IVAR____TtC6FindMy15FMActionRowView_separator;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC6FindMy15FMActionRowView_titleLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = (v0 + OBJC_IVAR____TtC6FindMy15FMActionRowView_title);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy15FMActionRowView_isEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy15FMActionRowView_showActivity) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy15FMActionRowView_separated) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10032ADBC()
{
  v1 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed;
  [v0 setHidden:v0[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed]];
  v2 = 1.0;
  if (v0[v1])
  {
    v2 = 0.0;
  }

  [v0 setAlpha:v2];
  if (v0[v1] == 1)
  {
    [*&v0[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_iconImageView] transform3D];
    CATransform3DScale(&v24, &v23, 0.5, 0.5, 1.0);
  }

  else
  {
    v3 = *&CATransform3DIdentity.m33;
    *&v24.m31 = *&CATransform3DIdentity.m31;
    *&v24.m33 = v3;
    v4 = *&CATransform3DIdentity.m43;
    *&v24.m41 = *&CATransform3DIdentity.m41;
    *&v24.m43 = v4;
    v5 = *&CATransform3DIdentity.m13;
    *&v24.m11 = *&CATransform3DIdentity.m11;
    *&v24.m13 = v5;
    v6 = *&CATransform3DIdentity.m23;
    *&v24.m21 = *&CATransform3DIdentity.m21;
    *&v24.m23 = v6;
  }

  v23 = v24;
  [v0 setTransform3D:&v23];
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23.m11 = 0.0;
    *v11 = 136315394;
    v12 = 0xE000000000000000;
    v23.m12 = -2.68156159e154;
    if (v0[v1])
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (v0[v1])
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v15 = v14;
    String.append(_:)(*&v13);

    v16 = sub_100005B4C(*&v23.m11, *&v23.m12, &v22);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v17 = [*&v8[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label] text];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v20;
    }

    else
    {
      v19 = 0;
    }

    v21 = sub_100005B4C(v19, v12, &v22);

    *(v11 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMExtendedPlatterInfoView: Collapsed: %s for: %s", v11, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10032B0BC()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B3298);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-v3];
  v5 = type metadata accessor for FMPlatterIcon();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_100243148(v1 + v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_100012DF0(v4, &qword_1006B3298);
  }

  sub_10015DA28(v4, v8);
  v19 = &type metadata for SolariumFeatureFlag;
  v20 = sub_10000BD04();
  v11 = isFeatureEnabled(_:)();
  sub_100006060(v18);
  if (v11)
  {
    v12 = sub_100438138(0);
    v14 = v13;
    v15 = *(v1 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_iconImageView);
    [v15 setImage:v12];
    [v15 setTintColor:v14];
    [v15 setTintAdjustmentMode:1];
  }

  else
  {
    v16 = *(v1 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_iconImageView);
    v17 = sub_10043B9F4(v8, 0);
    [v16 setImage:v17];
  }

  return sub_1000D59F8(v8);
}

_BYTE *sub_10032B2F8(char a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_iconImageView;
  *&v3[v7] = [objc_allocWithZone(UIImageView) init];
  *&v3[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label;
  *&v3[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel;
  *&v3[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_separatorView;
  *&v3[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel;
  *&v3[v11] = [objc_allocWithZone(UILabel) init];
  v12 = &v3[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionHandler];
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_closeButton;
  *&v3[v13] = [objc_allocWithZone(UIButton) init];
  v14 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterBackgroundView;
  v15 = type metadata accessor for FMPlatterBackgroundView();
  v16 = objc_allocWithZone(v15);
  v16[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 0;
  v33.receiver = v16;
  v33.super_class = v15;
  v17 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v3[v14] = v17;
  v3[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed] = 0;
  v18 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_containerView;
  *&v3[v18] = [objc_allocWithZone(UIView) init];
  v19 = &v3[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_title];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v3[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v3[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle];
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  v23 = type metadata accessor for FMPlatterIcon();
  (*(*(v23 - 8) + 56))(&v3[v22], 1, 1, v23);
  v3[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_hasAction] = 1;
  v3[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_dismissable] = 0;
  v32.receiver = v3;
  v32.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v24[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_hasAction] = a1;
  v24[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_dismissable] = a2;
  v25 = v24;
  sub_10032B618();
  v30 = &type metadata for SolariumFeatureFlag;
  v31 = sub_10000BD04();
  v26 = isFeatureEnabled(_:)();
  sub_100006060(v29);
  if (v26)
  {
    sub_10032BFDC();
  }

  else
  {
    sub_10032D040();
  }

  v27 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v25 action:"platterTapped"];
  [v25 addGestureRecognizer:v27];

  return v25;
}

id sub_10032B618()
{
  v1 = v0;
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v2 = [v0 traitCollection];
  v3 = sub_100356E0C(v2);

  [v1 setBackgroundColor:v3];
  v4 = [v1 layer];
  v63 = &type metadata for SolariumFeatureFlag;
  v5 = sub_10000BD04();
  v64 = v5;
  v6 = isFeatureEnabled(_:)();
  sub_100006060(v62);
  v7 = _UISheetCornerRadius;
  if (v6)
  {
    v7 = 26.0;
  }

  [v4 setCornerRadius:v7];

  v8 = [v1 layer];
  [v8 setMasksToBounds:0];

  v63 = &type metadata for SolariumFeatureFlag;
  v64 = v5;
  LOBYTE(v8) = isFeatureEnabled(_:)();
  sub_100006060(v62);
  if (v8)
  {
    [v1 addSubview:*&v1[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterBackgroundView]];
    v9 = [v1 layer];
    [v9 setCornerCurve:kCACornerCurveContinuous];
  }

  else
  {
    v10 = [v1 layer];
    [v10 setShouldRasterize:1];

    v11 = [v1 layer];
    v12 = [objc_opt_self() mainScreen];
    [v12 scale];
    v14 = v13;

    [v11 setRasterizationScale:v14];
    v15 = [v1 layer];
    v16 = [objc_opt_self() blackColor];
    v17 = [v16 CGColor];

    [v15 setShadowColor:v17];
    v18 = [v1 layer];
    LODWORD(v19) = 1031127695;
    [v18 setShadowOpacity:v19];

    v20 = [v1 layer];
    [v20 setShadowRadius:16.0];

    v9 = [v1 layer];
    [v9 setShadowOffset:{0.0, 0.0}];
  }

  v21 = *&v1[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_separatorView];
  v22 = objc_opt_self();
  v23 = [v22 labelColor];
  v24 = [v23 colorWithAlphaComponent:0.1];

  [v21 setBackgroundColor:v24];
  v59 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_containerView;
  v25 = [*&v1[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_containerView] layer];
  [v25 setMasksToBounds:1];

  v26 = *&v1[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_iconImageView];
  v27 = [v22 labelColor];
  v61 = v26;
  [v26 setTintColor:v27];

  v28 = *&v1[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label];
  v29 = [v22 labelColor];
  [v28 setTextColor:v29];

  v63 = &type metadata for SolariumFeatureFlag;
  v64 = v5;
  v30 = isFeatureEnabled(_:)();
  sub_100006060(v62);
  v31 = [objc_opt_self() preferredFontForTextStyle:?];
  sub_10007EBC0(&qword_1006BA720);
  if (v30)
  {
    v32 = &UIFontWeightSemibold;
  }

  else
  {
    v32 = &UIFontWeightMedium;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = *v32;
  v34 = UIFontWeightTrait;
  v35 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_100012DF0(inited + 32, &qword_1006B47A0);
  v36 = sub_10002ACDC(v35);

  [v28 setFont:v36];

  [v28 setNumberOfLines:0];
  [v28 setAdjustsFontForContentSizeCategory:1];
  v60 = v28;
  sub_1000D5EB8();
  v37 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_closeButton;
  v38 = *&v1[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_closeButton];
  v39 = String._bridgeToObjectiveC()();
  v40 = [objc_opt_self() systemImageNamed:v39];

  [v38 setImage:v40 forState:0];
  [*&v1[v37] addTarget:v1 action:"handleCloseAction" forControlEvents:64];
  v41 = *&v1[v37];
  v42 = objc_opt_self();
  v43 = v41;
  v44 = [v42 mainBundle];
  v65._object = 0x8000000100584810;
  v45._countAndFlagsBits = 0x55425F45534F4C43;
  v45._object = 0xEC0000004E4F5454;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v65._countAndFlagsBits = 0xD00000000000001ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v65);

  v47 = String._bridgeToObjectiveC()();

  [v43 setAccessibilityLabel:v47];

  v63 = &type metadata for SolariumFeatureFlag;
  v64 = v5;
  LOBYTE(v43) = isFeatureEnabled(_:)();
  sub_100006060(v62);
  if (v43)
  {
    v48 = *&v1[v37];
    v49 = [v22 labelColor];
    v50 = [v49 colorWithAlphaComponent:0.4];

    [v48 setTintColor:v50];
  }

  v51 = *&v1[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel];
  v52 = objc_opt_self();
  v53 = [v52 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v51 setFont:v53];

  v54 = [v22 secondaryLabelColor];
  [v51 setTextColor:v54];

  [v51 setNumberOfLines:0];
  [v51 setAdjustsFontForContentSizeCategory:1];
  sub_1000D5EB8();
  v55 = *&v1[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel];
  v56 = [v52 preferredFontForTextStyle:UIFontTextStyleBody];
  [v55 setFont:v56];

  v57 = [v22 systemBlueColor];
  [v55 setTextColor:v57];

  [v55 setNumberOfLines:0];
  [v55 setAdjustsFontForContentSizeCategory:1];
  sub_1000D5EB8();
  [v21 setHidden:(v1[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_hasAction] & 1) == 0];
  [v1 addSubview:*&v1[v59]];
  [*&v1[v59] addSubview:v61];
  [*&v1[v59] addSubview:v60];
  [*&v1[v59] addSubview:v51];
  [*&v1[v59] addSubview:v55];
  [*&v1[v59] addSubview:v21];
  [*&v1[v59] addSubview:*&v1[v37]];
  return [*&v1[v37] setHidden:(v1[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_dismissable] & 1) == 0];
}

void sub_10032BFDC()
{
  v1 = v0;
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v128 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_containerView;
  [*&v0[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_containerView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_iconImageView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v125 = *&v0[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label];
  [v125 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v124 = *&v0[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel];
  [v124 setTranslatesAutoresizingMaskIntoConstraints:0];
  v123 = *&v0[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_separatorView];
  [v123 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_closeButton;
  v119 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_closeButton;
  [*&v0[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_closeButton] setTranslatesAutoresizingMaskIntoConstraints:0];
  v129 = *&v0[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterBackgroundView];
  [v129 setTranslatesAutoresizingMaskIntoConstraints:0];
  type metadata accessor for UILayoutPriority(0);
  sub_1000394CC();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v5) = v131;
  [v125 setContentHuggingPriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [*&v0[v4] setContentHuggingPriority:0 forAxis:v6];
  v127 = v2;
  LODWORD(v7) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v7];
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v8) = v131;
  [v3 setContentHuggingPriority:0 forAxis:v8];
  v9 = [v0 heightAnchor];
  v10 = [v9 constraintGreaterThanOrEqualToConstant:50.0];

  LODWORD(v11) = 1148846080;
  [v10 setPriority:v11];
  v130 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1005521F0;
  v13 = [v129 topAnchor];
  v14 = [v1 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v12 + 32) = v15;
  v16 = [v129 leadingAnchor];
  v17 = [v1 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v12 + 40) = v18;
  v19 = [v129 trailingAnchor];
  v20 = [v1 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v12 + 48) = v21;
  v22 = [v129 bottomAnchor];
  v23 = [v1 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v12 + 56) = v24;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v130 activateConstraints:isa];

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100552F00;
  *(v26 + 32) = v10;
  v27 = *&v1[v128];
  v122 = v10;
  v28 = [v27 topAnchor];
  v29 = [v1 topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v26 + 40) = v30;
  v31 = [*&v1[v128] leadingAnchor];
  v32 = [v1 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v26 + 48) = v33;
  v34 = [*&v1[v128] trailingAnchor];
  v35 = [v1 trailingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v26 + 56) = v36;
  v37 = [*&v1[v128] bottomAnchor];
  v38 = [v1 bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v26 + 64) = v39;
  v40 = Array._bridgeToObjectiveC()().super.isa;

  [v130 activateConstraints:v40];

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100552EF0;
  v42 = [*&v1[v119] topAnchor];
  v43 = [v1 topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:16.0];

  *(v41 + 32) = v44;
  v45 = [*&v1[v119] widthAnchor];
  v46 = [*&v1[v119] heightAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v41 + 40) = v47;
  v48 = [*&v1[v119] trailingAnchor];
  v49 = [*&v1[v128] trailingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:-16.0];

  *(v41 + 48) = v50;
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v130 activateConstraints:v51];

  v52 = [v125 trailingAnchor];
  v53 = [*&v1[v119] isHidden];
  v54 = v53 == 0;
  if (v53)
  {
    v55 = v128;
  }

  else
  {
    v55 = v119;
  }

  v56 = *&v1[v55];
  v57 = &selRef_leadingAnchor;
  if (!v54)
  {
    v57 = &selRef_trailingAnchor;
  }

  v58 = [v56 *v57];
  if (qword_1006AEDB0 != -1)
  {
    swift_once();
  }

  v59 = -*&qword_1006D4DC0;
  v120 = [v52 constraintEqualToAnchor:v58 constant:-*&qword_1006D4DC0];

  v60 = [v3 trailingAnchor];
  v61 = [*&v1[v128] trailingAnchor];
  v118 = [v60 constraintEqualToAnchor:v61 constant:v59];

  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_100552EF0;
  v63 = [v125 topAnchor];
  v64 = [v127 bottomAnchor];
  v65 = [v63 constraintEqualToAnchor:v64 constant:10.0];

  *(v62 + 32) = v65;
  v66 = [v125 leadingAnchor];
  v67 = [*&v1[v128] leadingAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:16.0];

  *(v62 + 40) = v68;
  *(v62 + 48) = v120;
  v121 = v120;
  v69 = Array._bridgeToObjectiveC()().super.isa;

  [v130 activateConstraints:v69];

  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1005521F0;
  v71 = [v3 topAnchor];
  v72 = [v125 bottomAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 constant:0.0];

  *(v70 + 32) = v73;
  v74 = [v3 leadingAnchor];
  v75 = [v125 leadingAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];

  *(v70 + 40) = v76;
  v77 = [v3 bottomAnchor];
  v78 = [v123 topAnchor];
  if (v1[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_hasAction])
  {
    v79 = -16.0;
  }

  else
  {
    v79 = 0.0;
  }

  v80 = [v77 constraintEqualToAnchor:v78 constant:{v79, OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_hasAction}];

  *(v70 + 48) = v80;
  *(v70 + 56) = v118;
  v126 = v118;
  v81 = Array._bridgeToObjectiveC()().super.isa;

  [v130 activateConstraints:v81];

  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_100552EF0;
  v83 = [v123 leadingAnchor];
  v84 = [*&v1[v128] leadingAnchor];
  v85 = [v83 constraintEqualToAnchor:v84 constant:14.0];

  *(v82 + 32) = v85;
  v86 = [v123 trailingAnchor];
  v87 = [*&v1[v128] trailingAnchor];
  v88 = [v86 constraintEqualToAnchor:v87 constant:-14.0];

  *(v82 + 40) = v88;
  v89 = [v123 heightAnchor];
  v90 = v89;
  v91 = 1.0;
  if (!v1[v117])
  {
    v91 = 0.0;
  }

  v92 = [v89 constraintEqualToConstant:v91];

  *(v82 + 48) = v92;
  v93 = Array._bridgeToObjectiveC()().super.isa;

  [v130 activateConstraints:v93];

  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1005521F0;
  v95 = [v124 topAnchor];
  v96 = [v123 bottomAnchor];
  if (v1[v117])
  {
    v97 = 16.0;
  }

  else
  {
    v97 = 0.0;
  }

  v98 = [v95 constraintEqualToAnchor:v96 constant:v97];

  *(v94 + 32) = v98;
  v99 = [v124 leadingAnchor];
  v100 = [v125 leadingAnchor];
  v101 = [v99 constraintEqualToAnchor:v100];

  *(v94 + 40) = v101;
  v102 = [v124 trailingAnchor];
  v103 = [*&v1[v128] trailingAnchor];
  v104 = [v102 constraintEqualToAnchor:v103];

  *(v94 + 48) = v104;
  v105 = [v124 bottomAnchor];
  v106 = [*&v1[v128] bottomAnchor];
  v107 = [v105 constraintLessThanOrEqualToAnchor:v106 constant:-16.0];

  *(v94 + 56) = v107;
  v108 = Array._bridgeToObjectiveC()().super.isa;

  [v130 activateConstraints:v108];

  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_100552EE0;
  v110 = [v127 leadingAnchor];
  v111 = [*&v1[v128] leadingAnchor];
  v112 = [v110 constraintEqualToAnchor:v111 constant:14.0];

  *(v109 + 32) = v112;
  v113 = [v127 topAnchor];
  v114 = [*&v1[v128] topAnchor];
  v115 = [v113 constraintGreaterThanOrEqualToAnchor:v114 constant:16.0];

  *(v109 + 40) = v115;
  v116 = Array._bridgeToObjectiveC()().super.isa;

  [v130 activateConstraints:v116];
}

void sub_10032D040()
{
  v1 = v0;
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v139 = &v0[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_containerView];
  [*&v0[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_containerView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_iconImageView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v0[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v135 = *&v0[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel];
  [v135 setTranslatesAutoresizingMaskIntoConstraints:0];
  v137 = *&v0[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_separatorView];
  [v137 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = &v0[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_closeButton];
  [*&v0[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_closeButton] setTranslatesAutoresizingMaskIntoConstraints:0];
  type metadata accessor for UILayoutPriority(0);
  sub_1000394CC();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v6) = v142;
  v140 = v3;
  [v3 setContentHuggingPriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [*v5 setContentHuggingPriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v8];
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v9) = v142;
  [v2 setContentCompressionResistancePriority:0 forAxis:v9];
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v10) = v142;
  v141 = v4;
  [v4 setContentHuggingPriority:0 forAxis:v10];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v11 = *&qword_1006D4798;
  v12 = [v0 heightAnchor];
  v13 = [v12 constraintGreaterThanOrEqualToConstant:50.0];

  LODWORD(v14) = 1148846080;
  [v13 setPriority:v14];
  v138 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100552F00;
  *(v15 + 32) = v13;
  v16 = *v139;
  v136 = v13;
  v17 = [v16 topAnchor];
  v18 = [v1 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v15 + 40) = v19;
  v20 = [*v139 leadingAnchor];
  v21 = [v1 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v15 + 48) = v22;
  v23 = [*v139 trailingAnchor];
  v24 = [v1 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v15 + 56) = v25;
  v26 = [*v139 bottomAnchor];
  v27 = [v1 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v15 + 64) = v28;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v138 activateConstraints:isa];

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100552EF0;
  v31 = [*v5 topAnchor];
  v32 = [v3 topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v30 + 32) = v33;
  v34 = [*v5 widthAnchor];
  v35 = [*v5 heightAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v30 + 40) = v36;
  v37 = [*v5 trailingAnchor];
  v38 = [*v139 trailingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:-*&qword_1006D4798];

  *(v30 + 48) = v39;
  v40 = Array._bridgeToObjectiveC()().super.isa;

  [v138 activateConstraints:v40];

  v41 = [v3 centerYAnchor];
  v42 = [v2 centerYAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  LODWORD(v44) = 1132068864;
  [v43 setPriority:v44];
  v45 = [v141 centerYAnchor];
  v46 = [v141 centerYAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  v129 = v47;
  LODWORD(v48) = 1132068864;
  [v47 setPriority:v48];
  v49 = [v3 trailingAnchor];
  v50 = [*v5 isHidden];
  v51 = v50 == 0;
  if (v50)
  {
    v52 = v139;
  }

  else
  {
    v52 = v5;
  }

  v53 = *v52;
  v54 = &selRef_leadingAnchor;
  if (!v51)
  {
    v54 = &selRef_trailingAnchor;
  }

  v55 = [v53 *v54];
  v128 = v1;
  if (qword_1006AEDB0 != -1)
  {
    swift_once();
  }

  v56 = -*&qword_1006D4DC0;
  v57 = [v49 constraintEqualToAnchor:v55 constant:-*&qword_1006D4DC0];

  v58 = [v141 trailingAnchor];
  v59 = [*v139 trailingAnchor];
  v131 = [v58 constraintEqualToAnchor:v59 constant:v56];

  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1005521F0;
  v61 = [v3 topAnchor];
  v62 = [*v139 topAnchor];
  v63 = [v61 constraintGreaterThanOrEqualToAnchor:v62 constant:v11 / 1.5];

  *(v60 + 32) = v63;
  v64 = [v3 leadingAnchor];
  v65 = [v2 trailingAnchor];
  v66 = [v64 constraintEqualToAnchor:v65 constant:14.0];

  *(v60 + 40) = v66;
  *(v60 + 48) = v57;
  *(v60 + 56) = v43;
  v134 = v57;
  v133 = v43;
  v67 = Array._bridgeToObjectiveC()().super.isa;

  [v138 activateConstraints:v67];

  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_100552F00;
  v69 = [v141 topAnchor];
  v70 = [v3 bottomAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:2.0];

  *(v68 + 32) = v71;
  v72 = [v141 leadingAnchor];
  v73 = [v2 trailingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73 constant:14.0];

  *(v68 + 40) = v74;
  v75 = [v141 bottomAnchor];
  v76 = [v137 topAnchor];
  v77 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_hasAction;
  if (v128[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_hasAction])
  {
    v78 = v11 / -1.5;
  }

  else
  {
    v78 = 0.0;
  }

  v79 = [v75 constraintEqualToAnchor:v76 constant:v78];

  *(v68 + 48) = v79;
  *(v68 + 56) = v131;
  *(v68 + 64) = v129;
  v132 = v131;
  v130 = v129;
  v80 = Array._bridgeToObjectiveC()().super.isa;

  [v138 activateConstraints:v80];

  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_100552F00;
  v82 = [v137 leadingAnchor];
  v83 = [v2 trailingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:14.0];

  *(v81 + 32) = v84;
  v85 = [v137 trailingAnchor];
  v86 = [*v139 trailingAnchor];
  v87 = [v85 constraintEqualToAnchor:v86];

  *(v81 + 40) = v87;
  v88 = [v137 heightAnchor];
  v89 = 0.0;
  if (v128[v77] == 1)
  {
    v90 = [objc_opt_self() mainScreen];
    [v90 scale];
    v92 = v91;

    v89 = 1.0 / v92;
  }

  v93 = [v88 constraintEqualToConstant:v89];

  *(v81 + 48) = v93;
  v94 = [v137 topAnchor];
  v95 = [v141 bottomAnchor];
  if (v128[v77])
  {
    v96 = v11 / 1.5;
  }

  else
  {
    v96 = 0.0;
  }

  v97 = [v94 constraintEqualToAnchor:v95 constant:v96];

  *(v81 + 56) = v97;
  v98 = [v137 bottomAnchor];
  v99 = [v135 topAnchor];
  if (v128[v77])
  {
    v100 = v11 / -1.5;
  }

  else
  {
    v100 = 0.0;
  }

  v101 = [v98 constraintEqualToAnchor:v99 constant:v100];

  *(v81 + 64) = v101;
  v102 = Array._bridgeToObjectiveC()().super.isa;

  [v138 activateConstraints:v102];

  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_1005521F0;
  v104 = [v135 topAnchor];
  v105 = [v137 bottomAnchor];
  v106 = [v104 constraintEqualToAnchor:v105 constant:v11 / 1.5];

  *(v103 + 32) = v106;
  v107 = [v135 leadingAnchor];
  v108 = [v2 trailingAnchor];
  v109 = [v107 constraintEqualToAnchor:v108 constant:14.0];

  *(v103 + 40) = v109;
  v110 = [v135 trailingAnchor];
  v111 = [*v139 trailingAnchor];
  v112 = [v110 constraintEqualToAnchor:v111];

  *(v103 + 48) = v112;
  v113 = [v135 bottomAnchor];
  v114 = [*v139 bottomAnchor];
  v115 = [v113 constraintLessThanOrEqualToAnchor:v114 constant:v11 / -1.5];

  *(v103 + 56) = v115;
  v116 = Array._bridgeToObjectiveC()().super.isa;

  [v138 activateConstraints:v116];

  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_100552EE0;
  v118 = [v2 leadingAnchor];
  v119 = [*v139 leadingAnchor];
  v120 = [v118 constraintEqualToAnchor:v119 constant:v11];

  *(v117 + 32) = v120;
  v121 = [v2 centerYAnchor];
  v122 = [v140 bottomAnchor];
  v123 = [v141 topAnchor];
  v124 = [v122 anchorWithOffsetToAnchor:v121];
  v125 = [v121 anchorWithOffsetToAnchor:v123];
  v126 = [v124 constraintEqualToAnchor:v125];

  *(v117 + 40) = v126;
  v127 = Array._bridgeToObjectiveC()().super.isa;

  [v138 activateConstraints:v127];
}

void sub_10032E4BC(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  ObjectType = swift_getObjectType();
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v14.receiver = v10;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, *a5, isa, v9);

  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v12 = [v10 traitCollection];
  v13 = sub_100356E0C(v12);

  [v10 setBackgroundColor:v13];
}

void sub_10032E608(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_10000905C(0, &qword_1006B0C30);
  sub_1000D5BCC();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v15.receiver = v2;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "touchesMoved:withEvent:", isa, a2);

  v7 = sub_1000F07E4(a1);
  if (v7)
  {
    v8 = v7;
    [v7 locationInView:v2];
    v10 = v9;
    v12 = v11;
    [v2 frame];
    v16.x = v10;
    v16.y = v12;
    if (CGRectContainsPoint(v17, v16) && *(v2 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_hasAction) == 1)
    {
      v13 = [objc_opt_self() secondarySystemFillColor];
    }

    else
    {
      if (qword_1006AEC30 != -1)
      {
        swift_once();
      }

      v14 = [v2 traitCollection];
      v13 = sub_100356E0C(v14);
    }

    [v2 setBackgroundColor:v13];
  }
}

uint64_t type metadata accessor for FMExtendedPlatterInfoView()
{
  result = qword_1006BBE10;
  if (!qword_1006BBE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10032EAC8()
{
  sub_1002B2F94();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10032EB98()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_iconImageView;
  *(v1 + v2) = [objc_allocWithZone(UIImageView) init];
  *(v1 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label;
  *(v1 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel;
  *(v1 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_separatorView;
  *(v1 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel;
  *(v1 + v6) = [objc_allocWithZone(UILabel) init];
  v7 = (v1 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionHandler);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_closeButton;
  *(v1 + v8) = [objc_allocWithZone(UIButton) init];
  v9 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterBackgroundView;
  v10 = type metadata accessor for FMPlatterBackgroundView();
  v11 = objc_allocWithZone(v10);
  v11[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 0;
  v19.receiver = v11;
  v19.super_class = v10;
  v12 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *(v1 + v9) = v12;
  *(v1 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = 0;
  v13 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_containerView;
  *(v1 + v13) = [objc_allocWithZone(UIView) init];
  v14 = (v1 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_title);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v1 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle);
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  v18 = type metadata accessor for FMPlatterIcon();
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  *(v1 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_hasAction) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_dismissable) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10032EE70(char a1)
{
  v2 = v1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for FMMeCardViewController();
  objc_msgSendSuper2(&v11, "viewWillAppear:", a1 & 1);
  v4 = OBJC_IVAR____TtC6FindMy22FMMeCardViewController_mediator;
  objc_allocWithZone(type metadata accessor for FMMeViewController());

  v5 = sub_100082D04();
  result = [v5 view];
  if (result)
  {
    v7 = result;
    [result setPreservesSuperviewLayoutMargins:1];

    v8 = v5;
    sub_1004DEC84(v8, v2);

    v9 = *(*&v2[v4] + 56);

    v10 = sub_1003CD47C(v2, v9);

    *&v2[OBJC_IVAR____TtC6FindMy22FMMeCardViewController_selectionSubscription] = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10032EFD0(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMSelectedSection();
  v5 = __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for FMMeCardViewController();
  v23.receiver = v2;
  v23.super_class = v10;
  objc_msgSendSuper2(&v23, "viewWillDisappear:", a1 & 1);
  v11 = *&v2[OBJC_IVAR____TtC6FindMy22FMMeCardViewController_selectionSubscription];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = *(*&v2[OBJC_IVAR____TtC6FindMy22FMMeCardViewController_mediator] + 56);
  swift_beginAccess();

  result = sub_1003CD53C((v12 + 16), v11);
  v14 = *(v12 + 16);
  if (v14 >> 62)
  {
    v21 = result;
    v15 = _CocoaArrayWrapper.endIndex.getter();
    result = v21;
    if (v15 >= v21)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15 < result)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_1003CD570(result, v15);
  swift_endAccess();

LABEL_5:
  v16 = OBJC_IVAR____TtC6FindMy22FMMeCardViewController_mediator;
  v17 = *(*&v2[OBJC_IVAR____TtC6FindMy22FMMeCardViewController_mediator] + 56);
  v18 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v17 + v18, v9);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v17) = sub_10005F7D0(v9, v7);
  sub_10005D4E4(v7);
  result = sub_10005D4E4(v9);
  if (v17)
  {
    v19 = *(*&v2[v16] + 56);
    sub_100062074(&v2[OBJC_IVAR____TtC6FindMy22FMMeCardViewController_previousSelection], v9);
    v20 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v19 + v20, v7);
    swift_beginAccess();

    sub_100058530(v9, v19 + v20);
    swift_endAccess();
    sub_100058594(v7);

    sub_10005D4E4(v7);
    return sub_10005D4E4(v9);
  }

  return result;
}

uint64_t sub_10032F2E4()
{

  sub_10005D4E4(v0 + OBJC_IVAR____TtC6FindMy22FMMeCardViewController_previousSelection);
}

id sub_10032F334()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMMeCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMMeCardViewController()
{
  result = qword_1006BBE58;
  if (!qword_1006BBE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10032F41C()
{
  result = type metadata accessor for FMSelectedSection();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10032F4C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v3);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a2) = sub_10005F7D0(a2, v5);
  sub_10005D4E4(v5);
  if ((a2 & 1) == 0)
  {
    sub_10024D71C();
  }
}

uint64_t sub_10032F568()
{
  v0 = type metadata accessor for FMIPSafeLocationType();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v15 - v5;
  FMIPSafeLocation.type.getter();
  (*(v1 + 104))(v4, enum case for FMIPSafeLocationType.home(_:), v0);
  sub_1003380B8(&qword_1006B1320, &type metadata accessor for FMIPSafeLocationType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v7(v6, v0);
  if (v15[1] == v15[0])
  {
    v8 = [objc_opt_self() mainBundle];
    v16._object = 0x800000010057D660;
    v9._countAndFlagsBits = 0xD000000000000018;
    v9._object = 0x8000000100591480;
    v10.value._object = 0x800000010057D640;
    v16._countAndFlagsBits = 0xD00000000000001BLL;
    v10.value._countAndFlagsBits = 0xD000000000000016;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v16)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    result = FMIPSafeLocation.name.getter();
    if (!v14)
    {
      return sub_10032F7B8();
    }
  }

  return result;
}

uint64_t sub_10032F7B8()
{
  v0 = sub_10007EBC0(&qword_1006BB1E0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v17 - v4;
  FMIPSafeLocation.address.getter();
  v6 = type metadata accessor for FMIPAddress();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(v5, 1, v6) == 1)
  {
    sub_100012DF0(v5, &qword_1006BB1E0);
  }

  else
  {
    countAndFlagsBits = FMIPAddress.label.getter();
    v11 = v10;
    (*(v7 + 8))(v5, v6);
    if (v11)
    {
      return countAndFlagsBits;
    }
  }

  FMIPSafeLocation.address.getter();
  if (v8(v3, 1, v6) == 1)
  {
    sub_100012DF0(v3, &qword_1006BB1E0);
LABEL_10:
    v13 = [objc_opt_self() mainBundle];
    v18._object = 0x8000000100591450;
    v14._object = 0x8000000100591430;
    v18._countAndFlagsBits = 0xD000000000000028;
    v14._countAndFlagsBits = 0xD000000000000016;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v18)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v12 = FMIPAddress.formattedAddressLines.getter();
  (*(v7 + 8))(v3, v6);
  if (!v12)
  {
    goto LABEL_10;
  }

  if (!*(v12 + 16))
  {

    goto LABEL_10;
  }

  countAndFlagsBits = *(v12 + 32);

  return countAndFlagsBits;
}

uint64_t sub_10032FA50()
{
  v0 = sub_10007EBC0(&qword_1006BB1E0);
  __chkstk_darwin(v0 - 8);
  v2 = v15 - v1;
  v3 = type metadata accessor for FMIPSafeLocationType();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  FMIPSafeLocation.type.getter();
  (*(v4 + 104))(v7, enum case for FMIPSafeLocationType.home(_:), v3);
  sub_1003380B8(&qword_1006B1320, &type metadata accessor for FMIPSafeLocationType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v10 = *(v4 + 8);
  v10(v7, v3);
  v10(v9, v3);
  if (v15[1] == v15[0])
  {
    return sub_10032F7B8();
  }

  FMIPSafeLocation.address.getter();
  v12 = type metadata accessor for FMIPAddress();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v2, 1, v12) == 1)
  {
    sub_100012DF0(v2, &qword_1006BB1E0);
    return 0;
  }

  else
  {
    v14 = FMIPAddress.displayAddress.getter();
    (*(v13 + 8))(v2, v12);
    return v14;
  }
}

void sub_10032FD2C()
{
  sub_1001A6A2C();
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_sectionLabel);
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v15._object = 0x800000010057D660;
  v4._countAndFlagsBits = 0xD000000000000037;
  v4._object = 0x8000000100591500;
  v5.value._object = 0x800000010057D640;
  v15._countAndFlagsBits = 0xD00000000000001BLL;
  v5.value._countAndFlagsBits = 0xD000000000000016;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v15);

  v7 = String._bridgeToObjectiveC()();

  [v1 setText:v7];

  v8 = *(v0 + OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_actionButton);
  v9 = [v2 mainBundle];
  v16._object = 0x800000010057D660;
  v10._countAndFlagsBits = 0xD000000000000020;
  v10._object = 0x8000000100591400;
  v11.value._object = 0x800000010057D640;
  v16._countAndFlagsBits = 0xD00000000000001BLL;
  v11.value._countAndFlagsBits = 0xD000000000000016;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v16);

  v13 = String._bridgeToObjectiveC()();

  [v8 setTitle:v13];
}

uint64_t sub_10032FEF4(uint64_t a1)
{
  v2 = v1;
  v134 = type metadata accessor for FMIPLocation();
  v4 = *(v134 - 8);
  __chkstk_darwin(v134);
  v133 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006AF748);
  v7 = __chkstk_darwin(v6 - 8);
  v131 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v116 - v9;
  v142 = type metadata accessor for FMIPSafeLocationType();
  v11 = *(v142 - 8);
  v12 = __chkstk_darwin(v142);
  v130 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v141 = &v116 - v14;
  v15 = type metadata accessor for FMIPSafeLocation();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003314E8();
  v117 = a1;
  v116 = *(a1 + 16);
  if (v116)
  {
    v140 = OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_mediator;
    v119 = OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_mapSnapshotter;
    v19 = OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_locationsRow;
    v20 = v117 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v126 = OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_snapshotMemoryCache;
    swift_beginAccess();
    v21 = v20;
    v23 = *(v16 + 16);
    v22 = v16 + 16;
    v124 = v23;
    v123 = (v11 + 104);
    v139 = (v11 + 8);
    v132 = (v4 + 8);
    v122 = *(v22 + 56);
    v127 = v22;
    v121 = (v22 - 8);
    v120 = enum case for FMIPSafeLocationType.home(_:);
    v118 = xmmword_1005521F0;
    v24 = v116;
    v129 = v10;
    v128 = v15;
    v145 = v18;
    v125 = v19;
    while (1)
    {
      v137 = v24;
      v138 = v21;
      v124(v18);
      v25 = v141;
      FMIPSafeLocation.type.getter();
      v26 = v130;
      v27 = v142;
      (*v123)(v130, v120, v142);
      sub_1003380B8(&qword_1006B1320, &type metadata accessor for FMIPSafeLocationType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v28 = *v139;
      (*v139)(v26, v27);
      v135 = v28;
      v28(v25, v27);
      v143 = v148;
      v144 = v146;

      dispatch thunk of FMFManager.myInfo.getter();

      v29 = type metadata accessor for FMFMyInfo();
      v30 = *(v29 - 8);
      v31 = *(v30 + 48);
      if (v31(v10, 1, v29) == 1)
      {
        sub_100012DF0(v10, &qword_1006AF748);
        v32 = 0;
        v33 = 0;
      }

      else
      {
        v32 = FMFMyInfo.meDeviceId.getter();
        v33 = v34;
        (*(v30 + 8))(v10, v29);
      }

      v35 = v2;

      v36 = v131;
      dispatch thunk of FMFManager.myInfo.getter();

      if (v31(v36, 1, v29) == 1)
      {
        break;
      }

      v37 = FMFMyInfo.deviceId.getter();
      v39 = v38;
      (*(v30 + 8))(v36, v29);
      v2 = v35;
      if (v33)
      {
        if (v39)
        {
          if (v32 == v37 && v33 == v39)
          {

            v40 = 1;
          }

          else
          {
            v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          goto LABEL_19;
        }

        goto LABEL_14;
      }

      if (!v39)
      {
LABEL_17:
        v40 = 1;
        goto LABEL_20;
      }

      v40 = 0;
LABEL_19:

LABEL_20:
      v41 = (v144 != v143) | v40;
      v42 = objc_allocWithZone(type metadata accessor for FMDeletableRowView());
      v136 = v41;
      v43 = sub_1002DF374(v41 & 1, 0);
      v44 = sub_10032F568();
      v46 = v45;
      v47 = &v43[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title];
      *v47 = v44;
      v47[1] = v45;

      v48 = *&v43[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_titleLabel];
      v49 = v48;
      if (v46)
      {

        v50 = String._bridgeToObjectiveC()();
      }

      else
      {
        v50 = 0;
      }

      [v48 setText:{v50, v116}];

      v51 = sub_10032FA50();
      v53 = v52;
      v54 = &v43[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_subtitle];
      *v54 = v51;
      v54[1] = v52;

      v55 = *&v43[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_secondaryLabel];
      v56 = v55;
      if (v53)
      {

        v57 = String._bridgeToObjectiveC()();
      }

      else
      {
        v57 = 0;
      }

      [v55 setText:v57];

      v58 = FMIPSafeLocation.identifier.getter();
      v59 = &v43[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_identifier];
      *v59 = v58;
      v59[1] = v60;

      v61 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_imageView;
      [*&v43[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_imageView] _setContinuousCornerRadius:4.0];
      [*&v43[v61] setContentMode:0];
      v62 = [*&v43[v61] layer];
      [v62 setMasksToBounds:1];

      v63 = v141;
      FMIPSafeLocation.type.getter();
      v64 = FMIPSafeLocationType.rawValue.getter();
      v135(v63, v142);
      *&v43[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_sortOrder] = v64;
      v65 = v133;
      FMIPSafeLocation.location.getter();
      v66 = FMIPLocation.location.getter();
      v67 = *v132;
      (*v132)(v65, v134);
      [v66 coordinate];
      [v66 coordinate];
      v146 = 0;
      v147 = 0xE000000000000000;
      Double.write<A>(to:)();
      v68._countAndFlagsBits = 45;
      v68._object = 0xE100000000000000;
      String.append(_:)(v68);
      Double.write<A>(to:)();

      v70 = v146;
      v69 = v147;
      v71 = *&v2[v126];
      if (!*(v71 + 16))
      {
        goto LABEL_30;
      }

      v72 = sub_10000726C(v70, v69);
      if ((v73 & 1) == 0)
      {

LABEL_30:
        v78 = *&v2[v119];
        v79 = v133;
        FMIPSafeLocation.location.getter();
        v80 = FMIPLocation.location.getter();
        v67(v79, v134);
        v81 = [v2 traitCollection];
        v82 = v43;
        v83 = v2;

        sub_1001219E8(v80, v81, 0, v78, v82, v83, v70, v69, 50.0, 50.0);

        swift_bridgeObjectRelease_n();
        goto LABEL_31;
      }

      v74 = v72;

      v75 = *(*(v71 + 56) + 8 * v74);

      v76 = *&v43[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_image];
      *&v43[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_image] = v75;
      v77 = v75;

      [*&v43[v61] setImage:v77];
      [v43 setNeedsLayout];

LABEL_31:
      v84 = v128;
      if (v136)
      {
        v85 = &selRef_editLocationRowTapWithSender_;
        if (v144 == v143)
        {
          v85 = &selRef_meRowTapWithSender_;
        }

        v86 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:*v85];
        [v43 addGestureRecognizer:v86];

        type metadata accessor for FMMutableGestureView();
        v87 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v88 = FMIPSafeLocation.identifier.getter();
        v89 = &v87[OBJC_IVAR____TtC6FindMy20FMMutableGestureView_identifier];
        *v89 = v88;
        v89[1] = v90;

        v91 = v87;
        v92 = v43;
        v93 = v91;
        v94 = v92;
        v95 = v93;
        [v94 addSubview:v95];
        [v95 setTranslatesAutoresizingMaskIntoConstraints:0];
        v144 = objc_opt_self();
        sub_10007EBC0(&qword_1006AFC30);
        v96 = swift_allocObject();
        *(v96 + 16) = v118;
        v97 = [v95 topAnchor];
        v98 = [v94 topAnchor];
        v99 = [v97 constraintEqualToAnchor:v98];

        *(v96 + 32) = v99;
        v100 = [v95 bottomAnchor];

        v101 = [v94 bottomAnchor];
        v102 = [v100 constraintEqualToAnchor:v101];

        *(v96 + 40) = v102;
        v103 = [v95 trailingAnchor];

        v104 = [v94 trailingAnchor];
        v105 = [v103 constraintEqualToAnchor:v104];

        *(v96 + 48) = v105;
        v106 = [v95 widthAnchor];

        v107 = [v106 constraintLessThanOrEqualToConstant:35.0];
        *(v96 + 56) = v107;
        sub_10000905C(0, &qword_1006B3A70);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v144 activateConstraints:isa];

        v109 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"deleteRowTapWithSender:"];
        [v95 addGestureRecognizer:v109];
      }

      else
      {
        v110 = v43;
        [v110 setUserInteractionEnabled:0];
        v109 = [v110 layer];

        LODWORD(v111) = 1058642330;
        [v109 setOpacity:v111];
      }

      v112 = v125;

      swift_beginAccess();
      v113 = v43;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v114 = v137;
      if (*((*&v2[v112] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v112] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      v18 = v145;
      (*v121)(v145, v84);
      v21 = v138 + v122;
      v24 = v114 - 1;
      v10 = v129;
      if (!v24)
      {
        goto LABEL_39;
      }
    }

    sub_100012DF0(v36, &qword_1006AF748);
    v2 = v35;
    if (!v33)
    {
      goto LABEL_17;
    }

LABEL_14:
    v40 = 0;
    goto LABEL_19;
  }

LABEL_39:
  sub_1003312A0();
  *&v2[OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_numSafeLocations] = v116;
  *&v2[OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_safeLocations] = v117;
}

uint64_t sub_100330EAC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v13 = *(v25 - 8);
  __chkstk_darwin(v25);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v24 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a1;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_10033832C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006373F8;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  v19 = a1;
  v20 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003380B8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v24;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v26 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v25);
}

uint64_t sub_10033119C(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *&a1[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_image];
  *&a1[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_image] = a2;
  v10 = a2;

  [*&a1[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_imageView] setImage:v10];
  [a1 setNeedsLayout];
  v11 = OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_snapshotMemoryCache;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a3 + v11);
  *(a3 + v11) = 0x8000000000000000;
  sub_1001BB8CC(v10, a4, a5, isUniquelyReferenced_nonNull_native);

  *(a3 + v11) = v14;
  return swift_endAccess();
}

uint64_t sub_1003312A0()
{
  v1 = OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_locationsRow;
  swift_beginAccess();
  v2 = *(v0 + v1);
  swift_bridgeObjectRetain_n();
  v10 = sub_1004EC14C(v2);
  sub_100336DC4(&v10);

  v3 = v10;
  if ((v10 & 0x8000000000000000) == 0 && (v10 & 0x4000000000000000) == 0)
  {
    v4 = *(v10 + 16);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
  }

LABEL_4:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(v0 + OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_contentStackView);
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      ++v5;
      [v6 addArrangedSubview:v7];
    }

    while (v4 != v5);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1003313DC(void *a1, void *a2)
{
  if (*(*a1 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_sortOrder) == 1)
  {
    v2 = 1;
  }

  else if (*(*a2 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_sortOrder) == 1)
  {
    v2 = 0;
  }

  else
  {
    v3 = (*a1 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title);
    if (v3[1])
    {
      v4 = *v3;
      v5 = v3[1];
    }

    else
    {
      v4 = 0;
      v5 = 0xE000000000000000;
    }

    v6 = (*a2 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title);
    if (v6[1])
    {
      v7 = *v6;
      v8 = v6[1];
    }

    else
    {
      v7 = 0;
      v8 = 0xE000000000000000;
    }

    if (v4 == v7 && v5 == v8)
    {
      v2 = 0;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v2 & 1;
}

uint64_t sub_1003314E8()
{
  v1 = OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_locationsRow;
  swift_beginAccess();
  v9 = v1;
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 removeFromSuperview];
      [*(v0 + OBJC_IVAR____TtC6FindMy24FMPlatterButtonGroupView_contentStackView) removeArrangedSubview:v6];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  *(v0 + v9) = _swiftEmptyArrayStorage;
}

void sub_100331634(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPLocation();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v54 = &v46 - v9;
  v10 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v10 - 8);
  v52 = &v46 - v11;
  v58 = type metadata accessor for FMIPSafeLocation();
  v12 = *(v58 - 8);
  v13 = __chkstk_darwin(v58);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v51 = &v46 - v17;
  __chkstk_darwin(v16);
  v53 = &v46 - v18;
  if (qword_1006AEBE0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v19 = type metadata accessor for Logger();
    sub_100005B14(v19, qword_1006D4630);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "FMTrustedLocationView: Row tapped, going to edit", v22, 2u);
    }

    v23 = [a1 view];
    if (!v23)
    {
      break;
    }

    v56 = v23;
    type metadata accessor for FMDeletableRowView();
    v24 = swift_dynamicCastClass();
    if (!v24 || (v25 = *(v24 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_identifier + 8)) == 0)
    {
      v28 = v56;

      return;
    }

    v47 = v8;
    v48 = v5;
    v49 = v4;
    v50 = v2;
    v26 = *(v24 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_identifier);
    a1 = *&v2[OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_safeLocations];
    v8 = a1[2];

    if (!v8)
    {
LABEL_14:

      return;
    }

    v2 = 0;
    v57 = v12 + 16;
    v55 = (v12 + 8);
    while (v2 < a1[2])
    {
      v5 = *(v12 + 16);
      (v5)(v15, a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v2, v58);
      if (FMIPSafeLocation.identifier.getter() == v26 && v25 == v27)
      {

LABEL_20:

        v29 = *(v12 + 32);
        v30 = v51;
        v31 = v15;
        v32 = v58;
        v29(v51, v31, v58);
        v33 = v53;
        v29(v53, v30, v32);
        v34 = v52;
        (v5)(v52, v33, v32);
        (*(v12 + 56))(v34, 0, 1, v32);
        v35 = OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_editingSafeLocation;
        v36 = v50;
        swift_beginAccess();
        sub_100337F9C(v34, &v36[v35]);
        swift_endAccess();
        v37 = v54;
        FMIPSafeLocation.location.getter();
        v38 = FMIPLocation.location.getter();
        v39 = v48[1];
        v40 = v37;
        v41 = v49;
        v39(v40, v49);
        v42 = v47;
        FMIPSafeLocation.location.getter();
        v43 = FMIPLocation.location.getter();
        v39(v42, v41);
        [v43 horizontalAccuracy];
        v45 = v44;

        sub_1003334F8(v38, v45);
        (*(v12 + 8))(v33, v32);
        return;
      }

      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v4)
      {

        goto LABEL_20;
      }

      ++v2;
      (*v55)(v15, v58);
      if (v8 == v2)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }
}

void sub_100331C7C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPSafeLocation();
  v92 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v86 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v76 - v8;
  v10 = __chkstk_darwin(v7);
  v84 = &v76 - v11;
  v85 = v12;
  __chkstk_darwin(v10);
  v14 = &v76 - v13;
  if (qword_1006AEBE0 != -1)
  {
LABEL_43:
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100005B14(v15, qword_1006D4630);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "FMTrustedLocationView: Delete tapped", v18, 2u);
  }

  v19 = *&v2[OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_groupBeaconUUIDs];
  if (!v19 || !*(v19 + 16))
  {
    sub_10007EBC0(&unk_1006AF770);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100552220;
    if (*&v2[OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_beaconUUID + 8])
    {
      v20 = *&v2[OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_beaconUUID];
      v21 = *&v2[OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_beaconUUID + 8];
    }

    else
    {
      v20 = 0;
      v21 = 0xE000000000000000;
    }

    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
  }

  v22 = [a1 view];
  if (!v22)
  {
    goto LABEL_25;
  }

  v89 = v22;
  type metadata accessor for FMMutableGestureView();
  v23 = swift_dynamicCastClass();
  if (!v23)
  {

    v30 = v89;

    return;
  }

  v24 = *(v23 + OBJC_IVAR____TtC6FindMy20FMMutableGestureView_identifier + 8);
  if (!v24)
  {

LABEL_25:

    return;
  }

  v81 = a1;
  v82 = v2;
  v83 = v14;
  a1 = *(v23 + OBJC_IVAR____TtC6FindMy20FMMutableGestureView_identifier);
  v25 = *&v2[OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_safeLocations];
  v2 = *(v25 + 16);

  if (v2)
  {
    v14 = 0;
    v90 = v92 + 16;
    v91 = v4;
    v88 = (v92 + 8);
    while (1)
    {
      if (v14 >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      v26 = *(v92 + 80);
      v27 = v25 + ((v26 + 32) & ~v26) + *(v92 + 72) * v14;
      v87 = *(v92 + 16);
      v87(v9, v27, v4);
      if (FMIPSafeLocation.identifier.getter() == a1 && v24 == v28)
      {

        goto LABEL_30;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        break;
      }

      ++v14;
      v4 = v91;
      (*v88)(v9, v91);
      if (v2 == v14)
      {
        goto LABEL_20;
      }
    }

    v4 = v91;
LABEL_30:
    v31 = v84;
    v80 = ~v26;
    v32 = *(v92 + 32);
    v92 += 32;
    v33 = v84;
    v84 = v32;
    (v32)(v33, v9, v4);
    (v32)(v83, v31, v4);
    v77 = "AIRPODS_DIRECTIONS_TITLE";
    v34 = objc_opt_self();
    v35 = [v34 mainBundle];
    v98._object = 0x800000010057D660;
    v36._countAndFlagsBits = 0xD000000000000031;
    v36._object = 0x80000001005915D0;
    v37.value._object = 0x800000010057D640;
    v98._countAndFlagsBits = 0xD00000000000001BLL;
    v37.value._countAndFlagsBits = 0xD000000000000016;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v35, v38, v98);

    String.init(format:_:)();

    v39 = [v82 traitCollection];
    v40 = [v39 horizontalSizeClass];

    v41 = v40 != 1;
    v42 = String._bridgeToObjectiveC()();

    v79 = [objc_opt_self() alertControllerWithTitle:0 message:v42 preferredStyle:v41];

    v43 = v34;
    v44 = [v34 mainBundle];
    v99._object = 0x800000010057D660;
    v45._countAndFlagsBits = 0xD000000000000037;
    v45._object = 0x8000000100591610;
    v46 = v77;
    v47.value._object = (v77 | 0x8000000000000000);
    v99._countAndFlagsBits = 0xD00000000000001BLL;
    v47.value._countAndFlagsBits = 0xD000000000000016;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v45, v47, v44, v48, v99);

    v49 = String._bridgeToObjectiveC()();

    v78 = objc_opt_self();
    v50 = [v78 actionWithTitle:v49 style:1 handler:0];

    v51 = [v43 mainBundle];
    v100._object = 0x800000010057D660;
    v52._countAndFlagsBits = 0xD000000000000037;
    v52._object = 0x8000000100591650;
    v53.value._object = (v46 | 0x8000000000000000);
    v100._countAndFlagsBits = 0xD00000000000001BLL;
    v53.value._countAndFlagsBits = 0xD000000000000016;
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v52, v53, v51, v54, v100);

    v55 = v86;
    v56 = v91;
    v87(v86, v83, v91);
    v57 = (v26 + 24) & v80;
    v58 = (v85 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    *(v59 + 16) = v19;
    v60 = v55;
    v61 = v79;
    (v84)(v59 + v57, v60, v56);
    v62 = v82;
    *(v59 + v58) = v82;
    v63 = v62;
    v64 = String._bridgeToObjectiveC()();

    v95 = sub_100338100;
    v96 = v59;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100017328;
    v94 = &unk_100637380;
    v65 = _Block_copy(aBlock);

    v66 = [v78 actionWithTitle:v64 style:2 handler:v65];
    _Block_release(v65);

    [v61 addAction:v66];
    [v61 addAction:v50];
    v94 = &type metadata for SolariumFeatureFlag;
    v95 = sub_10000BD04();
    LOBYTE(v64) = isFeatureEnabled(_:)();
    sub_100006060(aBlock);
    if (v64)
    {
      v67 = [v81 view];
      if (v67)
      {
        v68 = v67;
        v69 = v61;
        v70 = [v69 popoverPresentationController];
        if (v70)
        {
          v71 = v70;
          [v70 setSourceView:v68];
        }

        v72 = [v69 popoverPresentationController];

        if (v72)
        {
          [v68 bounds];
          [v72 setSourceRect:?];
        }
      }
    }

    v73 = v63;
    while (1)
    {
      v74 = v73;
      v73 = [v73 nextResponder];

      if (!v73)
      {
        break;
      }

      objc_opt_self();
      v75 = swift_dynamicCastObjCClass();
      if (v75)
      {
        [v75 presentViewController:v61 animated:1 completion:0];

        (*v88)(v83, v91);
        return;
      }
    }

    (*v88)(v83, v91);
  }

  else
  {
LABEL_20:
  }
}

uint64_t sub_1003326C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = type metadata accessor for FMIPSafeLocation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = *(v7 + 16);
  v9(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  type metadata accessor for FMIPRemoveMultipleSafeLocationItemsAction();
  swift_allocObject();

  v10 = FMIPRemoveMultipleSafeLocationItemsAction.init(beaconUUIDs:location:)();
  v9(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  (*(v7 + 32))(v12 + v11, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  v13 = a4;
  sub_1000D6C5C(v10, sub_100338264, v12);
}

void sub_10033288C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a1)
  {
    v7 = objc_opt_self();
    v8 = [v7 mainBundle];
    v37._object = 0x800000010057D660;
    v9._countAndFlagsBits = 0xD000000000000021;
    v9._object = 0x8000000100591690;
    v10.value._object = 0x800000010057D640;
    v37._countAndFlagsBits = 0xD00000000000001BLL;
    v10.value._countAndFlagsBits = 0xD000000000000016;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v37);

    v12 = [v7 mainBundle];
    v38._object = 0x800000010057D660;
    v13._countAndFlagsBits = 0xD00000000000002DLL;
    v13._object = 0x80000001005916C0;
    v14.value._object = 0x800000010057D640;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    v14.value._countAndFlagsBits = 0xD000000000000016;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v38);

    v16 = [v7 mainBundle];
    v39._object = 0x8000000100579B60;
    v17._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v17._object = 0xEF454C5449545F4ELL;
    v39._countAndFlagsBits = 0xD000000000000021;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v39);

    v19 = String._bridgeToObjectiveC()();

    v20 = String._bridgeToObjectiveC()();

    v21 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

    v22 = String._bridgeToObjectiveC()();

    oslog = [objc_opt_self() actionWithTitle:v22 style:0 handler:0];

    [v21 addAction:oslog];
    v23 = a5;
    while (1)
    {
      v24 = v23;
      v23 = [v23 nextResponder];

      if (!v23)
      {
        break;
      }

      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        [v25 presentViewController:v21 animated:1 completion:0];

        break;
      }
    }
  }

  else
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1004AD774(a6);
      swift_unknownObjectRelease();
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100005B14(v27, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v29 = 136315138;
      sub_10007EBC0(&qword_1006B9570);
      v31 = String.init<A>(describing:)();
      v33 = sub_100005B4C(v31, v32, &v35);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, oslog, v28, "FMTrustedLocationView: Remove Safe Location completed with error: %s", v29, 0xCu);
      sub_100006060(v30);

      return;
    }
  }
}

void sub_100332DC4()
{
  v1 = v0;
  while (1)
  {
    v2 = v1;
    v1 = [v1 nextResponder];

    if (!v1)
    {
      break;
    }

    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 presentedViewController];

      if (v4)
      {
        v5 = swift_allocObject();
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
        v7[4] = sub_1000822F4;
        v7[5] = v5;
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 1107296256;
        v7[2] = sub_100004AE4;
        v7[3] = &unk_100637330;
        v6 = _Block_copy(v7);

        [v4 dismissViewControllerAnimated:1 completion:v6];
        _Block_release(v6);
      }

      return;
    }
  }
}

void sub_100332F64()
{
  v1 = sub_10007EBC0(&qword_1006AF740);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v4 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  if (*&v0[OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_numSafeLocations] > 19)
  {
    v12 = objc_opt_self();
    v13 = [v12 mainBundle];
    v34._object = 0x800000010057D660;
    v14._countAndFlagsBits = 0xD000000000000021;
    v14._object = 0x80000001005914A0;
    v15.value._object = 0x800000010057D640;
    v34._countAndFlagsBits = 0xD00000000000001BLL;
    v15.value._countAndFlagsBits = 0xD000000000000016;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v34);

    v17 = [v12 mainBundle];
    v35._object = 0x800000010057D660;
    v18._countAndFlagsBits = 0xD000000000000024;
    v18._object = 0x80000001005914D0;
    v19.value._object = 0x800000010057D640;
    v35._countAndFlagsBits = 0xD00000000000001BLL;
    v19.value._countAndFlagsBits = 0xD000000000000016;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v35);

    v21 = [v12 mainBundle];
    v36._object = 0x8000000100579B60;
    v22._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v22._object = 0xEF454C5449545F4ELL;
    v36._countAndFlagsBits = 0xD000000000000021;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v36);

    v24 = String._bridgeToObjectiveC()();

    v25 = String._bridgeToObjectiveC()();

    v26 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

    v27 = String._bridgeToObjectiveC()();

    v32 = [objc_opt_self() actionWithTitle:v27 style:0 handler:0];

    [v26 addAction:v32];
    v28 = v0;
    while (1)
    {
      v29 = v28;
      v28 = [v28 nextResponder];

      if (!v28)
      {
        break;
      }

      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        [v30 presentViewController:v26 animated:1 completion:0];

        break;
      }
    }

    v31 = v32;
  }

  else
  {
    v7 = type metadata accessor for FMIPSafeLocation();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_editingSafeLocation;
    swift_beginAccess();
    sub_100337F9C(v6, &v0[v8]);
    swift_endAccess();

    dispatch thunk of FMFManager.myLocation.getter();

    v9 = type metadata accessor for FMFLocation();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v3, 1, v9) == 1)
    {
      sub_100012DF0(v3, &qword_1006AF740);
      v11 = 0;
    }

    else
    {
      v11 = FMFLocation.location.getter();
      (*(v10 + 8))(v3, v9);
    }

    if (qword_1006AED88 != -1)
    {
      swift_once();
    }

    sub_1003334F8(v11, *&qword_1006D4D20);
  }
}

uint64_t sub_1003334F8(void *a1, double a2)
{
  v112 = a1;
  v4 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v4 - 8);
  v113 = &v97 - v5;
  v6 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v6 - 8);
  v123 = &v97 - v7;
  v8 = sub_10007EBC0(&qword_1006B0038);
  __chkstk_darwin(v8 - 8);
  v122 = &v97 - v9;
  v10 = sub_10007EBC0(&qword_1006B00C8);
  __chkstk_darwin(v10 - 8);
  v121 = &v97 - v11;
  v12 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v12 - 8);
  v120 = &v97 - v13;
  v14 = type metadata accessor for FMFLocationAlertAddressType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10007EBC0(&qword_1006AF740);
  v19 = __chkstk_darwin(v18 - 8);
  v110 = (&v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v19);
  v23 = &v97 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v97 - v25;
  __chkstk_darwin(v24);
  v28 = &v97 - v27;
  v29 = OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_mediator;

  dispatch thunk of FMFManager.myLocation.getter();

  (*(v15 + 104))(v17, enum case for FMFLocationAlertAddressType.custom(_:), v14);

  dispatch thunk of FMFManager.myLocation.getter();

  v30 = v110;
  v118 = v2;
  v31 = *&v2[v29];
  v115 = v28;
  v119 = v23;
  sub_100007204(v28, v23, &qword_1006AF740);
  v32 = type metadata accessor for FMFAddress();
  v33 = *(v32 - 8);
  v108 = *(v33 + 56);
  v107 = v33 + 56;
  v108(v120, 1, 1, v32);
  v34 = *(v15 + 16);
  v35 = v121;
  v116 = v17;
  v34(v121, v17, v14);
  v117 = v15;
  v36 = *(v15 + 56);
  v124 = v14;
  v100 = v15 + 56;
  v109 = v36;
  v36(v35, 0, 1, v14);
  v114 = v26;
  sub_100007204(v26, v30, &qword_1006AF740);
  v37 = type metadata accessor for FMFLocation();
  v38 = *(v37 - 8);
  LODWORD(v35) = (*(v38 + 48))(v30, 1, v37);
  v111 = v31;

  if (v35 == 1)
  {
    sub_100012DF0(v30, &qword_1006AF740);
    v39 = type metadata accessor for FMFLabel();
    (*(*(v39 - 8) + 56))(v122, 1, 1, v39);
  }

  else
  {
    FMFLocation.label.getter();
    (*(v38 + 8))(v30, v37);
  }

  v40 = type metadata accessor for FMFFriend();
  v41 = *(*(v40 - 8) + 56);
  v41(v123, 1, 1, v40);
  v110 = type metadata accessor for FMFenceMapViewController();
  v42 = objc_allocWithZone(v110);
  v101 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediator;
  *&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediator] = 0;
  v43 = *(v38 + 56);
  v102 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_myLocation;
  v43(&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_myLocation], 1, 1, v37);
  v44 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedLocation;
  *&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedLocation] = 0;
  v103 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_address;
  v108(&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_address], 1, 1, v32);
  v104 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressType;
  v45 = v109;
  v109(&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressType], 1, 1, v124);
  v46 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressLabel;
  v47 = type metadata accessor for FMFLabel();
  v48 = *(*(v47 - 8) + 56);
  v107 = v46;
  v48(&v42[v46], 1, 1, v47);
  v49 = &v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressRadius];
  *v49 = 0;
  v49[8] = 1;
  v106 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_friendForFence;
  v41(&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_friendForFence], 1, 1, v40);
  v108 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isNotifyMe;
  v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isNotifyMe] = 0;
  v105 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isOtherUsage;
  v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isOtherUsage] = 0;
  v50 = &v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_delegate];
  *&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v51 = &v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_doneHandler];
  *v51 = 0;
  v51[1] = 0;
  *&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_peopleSubscription] = 0;
  *&v128[8] = &type metadata for SolariumFeatureFlag;
  *&v128[16] = sub_10000BD04();
  LOBYTE(v40) = isFeatureEnabled(_:)();
  sub_100006060(&v127);
  if (v40)
  {
    if (qword_1006AED50 != -1)
    {
      swift_once();
    }

    v52 = &xmmword_1006D4BA0;
  }

  else
  {
    if (qword_1006AED48 != -1)
    {
      swift_once();
    }

    v52 = &xmmword_1006D4B40;
  }

  v53 = v52[5];
  v130 = v52[4];
  v131 = v53;
  v54 = v52[3];
  *&v128[16] = v52[2];
  v129 = v54;
  v55 = v52[1];
  v127 = *v52;
  *v128 = v55;
  v99 = v131;
  v98 = v130;
  v56 = *(&v129 + 1);
  v58 = *&v128[24];
  v57 = v129;
  v97 = *&v128[8];
  v59 = v55;
  v60 = *(&v127 + 1);
  v61 = v127;
  sub_1000BBDE8(&v127, v126);
  v62 = v122;
  v63 = &v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_style];
  *v63 = v61;
  *(v63 + 1) = v60;
  *(v63 + 2) = v59;
  *(v63 + 24) = v97;
  *(v63 + 5) = v58;
  *(v63 + 6) = v57;
  *(v63 + 7) = v56;
  v64 = v99;
  *(v63 + 4) = v98;
  *(v63 + 5) = v64;
  *&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView] = 0;
  *&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView] = 0;
  *&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView] = 0;
  *&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_doneButton] = 0;
  *&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_smallRadiusButton] = 0;
  *&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediumRadiusButton] = 0;
  *&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_largeRadiusButton] = 0;
  v65 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_radiusButtonsStackView;
  *&v42[v65] = [objc_allocWithZone(UIStackView) init];
  v66 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_locationRadiusTitleLabel;
  *&v42[v66] = [objc_allocWithZone(UILabel) init];
  *&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_userDroppedAnnotation] = 0;
  *&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedAnnotation] = 0;
  v67 = &v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion];
  *v67 = 0u;
  *(v67 + 1) = 0u;
  v67[32] = 1;
  v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_showingUserLocation] = 0;
  *&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapSearchResults] = 0;
  v45(&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSeachAddressType], 1, 1, v124);
  v68 = &v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSearchedQuery];
  *v68 = 0;
  v68[1] = 0;
  *&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_defaultSearchRecords] = 0;
  v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isResigningFromTableView] = 0;
  v69 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_contactsDataController;
  type metadata accessor for FMFContactsDataController();
  swift_allocObject();
  *&v42[v69] = FMFContactsDataController.init(isSnapshotMode:)();
  *&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchController] = 0;
  *&v42[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_filteredSearchRecords] = 0;
  *&v42[v101] = v111;

  v70 = v102;
  swift_beginAccess();
  sub_1000BBE44(v119, &v42[v70], &qword_1006AF740);
  swift_endAccess();
  v71 = *&v42[v44];
  v72 = v112;
  *&v42[v44] = v112;
  v73 = v72;

  v74 = v103;
  swift_beginAccess();
  v75 = v120;
  sub_1000BBE44(v120, &v42[v74], &qword_1006B0040);
  swift_endAccess();
  v76 = v104;
  swift_beginAccess();
  v77 = v121;
  sub_1000BBE44(v121, &v42[v76], &qword_1006B00C8);
  swift_endAccess();
  v78 = v107;
  swift_beginAccess();
  sub_1000BBE44(v62, &v42[v78], &qword_1006B0038);
  swift_endAccess();
  *v49 = a2;
  v49[8] = 0;
  v79 = v106;
  swift_beginAccess();
  v80 = v62;
  v81 = v123;
  sub_1000BBE44(v123, &v42[v79], &qword_1006B0050);
  swift_endAccess();
  v42[v105] = 0;
  *(v108 + v42) = 0;
  *(v50 + 1) = &off_100637128;
  v82 = v118;
  swift_unknownObjectWeakAssign();
  v125.receiver = v42;
  v125.super_class = v110;
  v83 = objc_msgSendSuper2(&v125, "initWithNibName:bundle:", 0, 0);

  sub_100012DF0(v81, &qword_1006B0050);
  sub_100012DF0(v80, &qword_1006B0038);
  sub_100012DF0(v77, &qword_1006B00C8);
  sub_100012DF0(v75, &qword_1006B0040);
  sub_100012DF0(v119, &qword_1006AF740);
  v84 = OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_editingSafeLocation;
  swift_beginAccess();
  v85 = v113;
  sub_100007204(v82 + v84, v113, &unk_1006BB1B0);
  v86 = type metadata accessor for FMIPSafeLocation();
  LODWORD(v84) = (*(*(v86 - 8) + 48))(v85, 1, v86);
  sub_100012DF0(v85, &unk_1006BB1B0);
  if (v84 == 1)
  {
    v87 = swift_allocObject();
    *(v87 + 16) = v82;
    *(v87 + 24) = v83;
    v88 = &v83[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_doneHandler];
    v89 = *&v83[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_doneHandler];
    *v88 = sub_100338030;
    v88[1] = v87;
    v90 = v82;
    v91 = v83;
    sub_10001835C(v89);
  }

  v92 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v83];
  [v92 setModalPresentationStyle:2];
  v93 = v82;
  while (1)
  {
    v94 = v93;
    v93 = [v93 nextResponder];

    if (!v93)
    {
      break;
    }

    objc_opt_self();
    v95 = swift_dynamicCastObjCClass();
    if (v95)
    {
      [v95 presentViewController:v92 animated:1 completion:0];

      v83 = v92;
      goto LABEL_18;
    }
  }

  v93 = v92;
LABEL_18:

  sub_100012DF0(v114, &qword_1006AF740);
  (*(v117 + 8))(v116, v124);
  return sub_100012DF0(v115, &qword_1006AF740);
}

void sub_1003344A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v73 = a3;
  v74 = a5;
  countAndFlagsBits = a1;
  v72 = a2;
  v6 = type metadata accessor for FMIPDevice();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = FMIPManager.devices.getter();

  v11 = *(v10 + 16);
  if (v11)
  {
    v69 = v10;
    v70 = a4;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v14 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v76 = *(v12 + 56);
    v77 = v13;
    v15 = (v12 - 8);
    v16 = _swiftEmptyArrayStorage;
    v75 = v12;
    v13(v9, v14, v6);
    while (1)
    {
      v18 = FMIPDevice.baIdentifier.getter();
      v20 = v19;
      (*v15)(v9, v6);
      if (v20)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_10008B9E4(0, *(v16 + 2) + 1, 1, v16);
        }

        v22 = *(v16 + 2);
        v21 = *(v16 + 3);
        if (v22 >= v21 >> 1)
        {
          v16 = sub_10008B9E4((v21 > 1), v22 + 1, 1, v16);
        }

        *(v16 + 2) = v22 + 1;
        v17 = &v16[16 * v22];
        *(v17 + 4) = v18;
        *(v17 + 5) = v20;
      }

      v14 += v76;
      if (!--v11)
      {
        break;
      }

      (v77)(v9, v14, v6);
    }

    a4 = v70;
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
  }

  v23 = *(a4 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_beaconUUID + 8);
  if (v23)
  {
    v24 = *(a4 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_beaconUUID);
    v25 = *(a4 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_beaconUUID + 8);
  }

  else
  {
    v26 = *(a4 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_groupBeaconUUIDs);
    if (!v26 || !v26[2])
    {

      LODWORD(v77) = 0;
      goto LABEL_20;
    }

    v24 = v26[4];
    v25 = v26[5];

    v23 = 0;
  }

  aBlock = v24;
  v79 = v25;
  __chkstk_darwin(v23);
  v87._object = &aBlock;

  LODWORD(v77) = sub_10008A40C(sub_10011F7D4, (&v69 - 4), v16);

LABEL_20:
  v27 = objc_opt_self();
  v28 = [v27 mainBundle];
  v87._object = 0x800000010057D660;
  v29._countAndFlagsBits = 0xD00000000000002ALL;
  v29._object = 0x8000000100586AB0;
  v30.value._object = 0x800000010057D640;
  v84._countAndFlagsBits = 0xD00000000000001BLL;
  v30.value._countAndFlagsBits = 0xD000000000000016;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v84);

  sub_10007EBC0(&unk_1006B20B0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100552220;
  if (countAndFlagsBits && (v33 = *(countAndFlagsBits + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_clPlacemark)) != 0 && (v34 = [v33 name]) != 0)
  {
    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = sub_10008EE84();
  if (v38)
  {
    v39 = v36;
  }

  else
  {
    v39 = 0;
  }

  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  *(v32 + 32) = v39;
  *(v32 + 40) = v40;
  v76 = String.init(format:_:)();

  v41 = [v27 mainBundle];
  v87._object = 0x800000010057D660;
  v42._countAndFlagsBits = 0xD000000000000030;
  v42._object = 0x8000000100586B10;
  v43.value._object = 0x800000010057D640;
  v85._countAndFlagsBits = 0xD00000000000001BLL;
  v43.value._countAndFlagsBits = 0xD000000000000016;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v43, v41, v44, v85)._countAndFlagsBits;

  v45 = [v27 mainBundle];
  v87._object = 0x800000010057D660;
  v46._countAndFlagsBits = 0xD00000000000002DLL;
  v46._object = 0x8000000100586AE0;
  v47.value._object = 0x800000010057D640;
  v86._countAndFlagsBits = 0xD00000000000001BLL;
  v47.value._countAndFlagsBits = 0xD000000000000016;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v75 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v45, v48, v86)._countAndFlagsBits;

  if (v77)
  {
    v49 = 0xD000000000000034;
  }

  else
  {
    v49 = 0xD000000000000032;
  }

  if (v77)
  {
    v50 = "TION_DESCRIPTION";
  }

  else
  {
    v50 = "NUM_EDIT_SUBTITLE";
  }

  v51 = [v27 mainBundle];
  v87._object = 0x800000010057D660;
  v52._object = (v50 | 0x8000000000000000);
  v53.value._object = 0x800000010057D640;
  v87._countAndFlagsBits = 0xD00000000000001BLL;
  v52._countAndFlagsBits = v49;
  v53.value._countAndFlagsBits = 0xD000000000000016;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v77 = NSLocalizedString(_:tableName:bundle:value:comment:)(v52, v53, v51, v54, v87)._countAndFlagsBits;

  v55 = String._bridgeToObjectiveC()();

  v56 = String._bridgeToObjectiveC()();

  v57 = [objc_opt_self() alertControllerWithTitle:v55 message:v56 preferredStyle:1];

  v58 = swift_allocObject();
  v59 = v72;
  v60 = v73;
  *(v58 + 16) = v72;
  *(v58 + 24) = v60;

  v61 = String._bridgeToObjectiveC()();

  v82 = sub_100338038;
  v83 = v58;
  aBlock = _NSConcreteStackBlock;
  v79 = 1107296256;
  v80 = sub_100017328;
  v81 = &unk_1006371F0;
  v62 = _Block_copy(&aBlock);

  v63 = objc_opt_self();
  v64 = [v63 actionWithTitle:v61 style:0 handler:v62];
  _Block_release(v62);

  [v57 addAction:v64];
  v65 = swift_allocObject();
  *(v65 + 16) = v59;
  *(v65 + 24) = v60;

  v66 = String._bridgeToObjectiveC()();

  v82 = sub_100338078;
  v83 = v65;
  aBlock = _NSConcreteStackBlock;
  v79 = 1107296256;
  v80 = sub_100017328;
  v81 = &unk_100637240;
  v67 = _Block_copy(&aBlock);

  v68 = [v63 actionWithTitle:v66 style:0 handler:v67];
  _Block_release(v67);

  [v57 addAction:v68];
  [v74 presentViewController:v57 animated:1 completion:0];
}

uint64_t sub_100334CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a5;
  v21 = a6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  __chkstk_darwin(v22);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  aBlock[4] = v20;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v21;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003380B8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v9 + 8))(v11, v8);
  return (*(v12 + 8))(v14, v22);
}

void sub_100334F80(void *a1, int a2)
{
  v131 = a2;
  v130 = type metadata accessor for UUID();
  v128 = *(v130 - 8);
  __chkstk_darwin(v130);
  v127 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v5 - 8);
  v135 = &v127 - v6;
  v7 = type metadata accessor for FMIPSafeLocation();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v138 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v137 = &v127 - v12;
  v13 = __chkstk_darwin(v11);
  v132 = &v127 - v14;
  v129 = v15;
  __chkstk_darwin(v13);
  v136 = &v127 - v16;
  v17 = type metadata accessor for Date();
  v134 = *(v17 - 8);
  __chkstk_darwin(v17);
  v133 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100005B14(v19, qword_1006D4630);
  v21 = v2;
  v141 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v142 = v21;

  v24 = os_log_type_enabled(v22, v23);
  v139 = v8;
  v140 = v7;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v144 = v26;
    *v25 = 136315138;
    *v143 = *&v142[OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_beaconUUID];
    sub_10007EBC0(&qword_1006AF8F0);
    v27 = Optional.debugDescription.getter();
    v29 = sub_100005B4C(v27, v28, &v144);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "FMTrustedLocationView: createOrUpdateFenceWithAnnotation beacon: %s", v25, 0xCu);
    sub_100006060(v26);
  }

  v30 = a1;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v143[0] = v34;
    *v33 = 136315138;
    v35 = v30;
    v36 = [v35 description];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v17;
    v40 = v39;

    v41 = sub_100005B4C(v37, v40, v143);
    v17 = v38;

    *(v33 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v31, v32, "FMTrustedLocationView: %s", v33, 0xCu);
    sub_100006060(v34);
  }

  v42 = v140;
  v43 = *&v142[OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_groupBeaconUUIDs];
  if (!v43 || !*(v43 + 16))
  {
    sub_10007EBC0(&unk_1006AF770);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100552220;
    if (*&v142[OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_beaconUUID + 8])
    {
      v44 = *&v142[OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_beaconUUID];
      v45 = *&v142[OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_beaconUUID + 8];
    }

    else
    {
      v44 = 0;
      v45 = 0xE000000000000000;
    }

    *(v43 + 32) = v44;
    *(v43 + 40) = v45;
  }

  v46 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_clPlacemark;
  v47 = *&v30[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_clPlacemark];
  if (v47)
  {
    v48 = v47;
    [v30 coordinate];
    v50 = v49;
    v52 = v51;
    v53 = *&v30[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius];
    v54 = v133;
    Date.init()();
    v55 = objc_allocWithZone(CLLocation);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v57 = [v55 initWithCoordinate:isa altitude:v50 horizontalAccuracy:v52 verticalAccuracy:-1.0 course:v53 speed:v53 timestamp:{-1.0, -1.0}];

    (*(v134 + 8))(v54, v17);
    v58 = *&v30[v46];
    if (v58 && (v59 = [v58 location]) != 0)
    {
      v60 = v59;
      v61 = [v59 referenceFrame];
    }

    else
    {
      v61 = [v57 referenceFrame];
    }

    [v57 setReferenceFrame:v61];
    v62 = OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_editingSafeLocation;
    v63 = v142;
    swift_beginAccess();
    v64 = &v63[v62];
    v65 = v135;
    sub_100007204(v64, v135, &unk_1006BB1B0);
    v66 = v139;
    if ((*(v139 + 48))(v65, 1, v42) == 1)
    {
      sub_100012DF0(v65, &unk_1006BB1B0);
      v67 = [v48 name];
      if (v67)
      {
        v68 = v67;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v104 = v48;
      v105 = v57;
      v106 = v127;
      UUID.init()();
      UUID.uuidString.getter();
      (*(v128 + 8))(v106, v130);
      FMIPSafeLocation.init(identifier:label:location:placemark:)();
      if (v131)
      {

        v107 = v139;
        (*(v139 + 16))(v137, v138, v42);
        type metadata accessor for FMIPAddSafeLocationToAllSupportedBeaconsAction();
        swift_allocObject();
        v108 = FMIPAddSafeLocationToAllSupportedBeaconsAction.init(safeLocation:)();
      }

      else
      {
        v107 = v139;
        (*(v139 + 16))(v137, v138, v42);
        FMIPSafeLocation.identifier.getter();
        type metadata accessor for FMIPAddMultipleSafeLocationsItemAction();
        swift_allocObject();
        v108 = FMIPAddMultipleSafeLocationsItemAction.init(beaconUUIDs:location:originalIdentifier:)();
      }

      v109 = v108;
      v110 = v142;
      v111 = swift_allocObject();
      v111[2] = v110;
      v111[3] = v30;
      v111[4] = v105;
      v111[5] = v104;
      v112 = v110;
      v113 = v30;
      v114 = v104;
      v115 = v105;

      sub_1000D6C5C(v109, sub_10033800C, v111);

      (*(v107 + 8))(v138, v42);
    }

    else
    {

      v141 = *(v66 + 32);
      v141(v136, v65, v42);
      FMIPSafeLocation.identifier.getter();
      v82 = [v48 name];
      if (v82)
      {
        v83 = v82;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v138 = v48;
      v135 = v57;
      v116 = v132;
      FMIPSafeLocation.init(identifier:label:location:placemark:)();
      v118 = v139;
      v117 = v140;
      v119 = *(v139 + 16);
      v120 = v137;
      v119(v137, v116, v140);
      type metadata accessor for FMIPEditSafeLocationItemAction();
      swift_allocObject();
      v121 = FMIPEditSafeLocationItemAction.init(safeLocation:)();
      v122 = v142;
      v119(v120, v116, v117);
      v123 = (*(v118 + 80) + 24) & ~*(v118 + 80);
      v124 = swift_allocObject();
      *(v124 + 16) = v122;
      v141((v124 + v123), v120, v117);
      v125 = v122;

      sub_1000D6C5C(v121, sub_100338018, v124);

      v126 = *(v118 + 8);
      v126(v116, v117);
      v126(v136, v117);
    }
  }

  else
  {

    v69 = v30;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v143[0] = swift_slowAlloc();
      *v72 = 136315394;
      v73 = v69;
      v74 = [v73 description];
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      v78 = sub_100005B4C(v75, v77, v143);

      *(v72 + 4) = v78;
      *(v72 + 12) = 2080;
      v144 = v43;
      sub_10007EBC0(&qword_1006BA7E0);
      v79 = String.init<A>(describing:)();
      v81 = sub_100005B4C(v79, v80, v143);

      *(v72 + 14) = v81;
      _os_log_impl(&_mh_execute_header, v70, v71, "FMTrustedLocationView: Unable to add or edit safe location. No placemark found, geocoding failed. annotation:%s, identifiers: %s", v72, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v84 = objc_opt_self();
    v85 = [v84 mainBundle];
    v145._object = 0x800000010057D660;
    v86._countAndFlagsBits = 0xD00000000000001ELL;
    v86._object = 0x8000000100586B90;
    v87.value._object = 0x800000010057D640;
    v145._countAndFlagsBits = 0xD00000000000001BLL;
    v87.value._countAndFlagsBits = 0xD000000000000016;
    v88._countAndFlagsBits = 0;
    v88._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v86, v87, v85, v88, v145);

    v89 = [v84 mainBundle];
    v146._object = 0x800000010057D660;
    v90._countAndFlagsBits = 0xD00000000000002ALL;
    v90._object = 0x8000000100586BB0;
    v91.value._object = 0x800000010057D640;
    v146._countAndFlagsBits = 0xD00000000000001BLL;
    v91.value._countAndFlagsBits = 0xD000000000000016;
    v92._countAndFlagsBits = 0;
    v92._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v90, v91, v89, v92, v146);

    v93 = [v84 mainBundle];
    v147._object = 0x8000000100579B60;
    v94._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v94._object = 0xEF454C5449545F4ELL;
    v147._countAndFlagsBits = 0xD000000000000021;
    v95._countAndFlagsBits = 0;
    v95._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v94, 0, v93, v95, v147);

    v96 = String._bridgeToObjectiveC()();

    v97 = String._bridgeToObjectiveC()();

    v98 = [objc_opt_self() alertControllerWithTitle:v96 message:v97 preferredStyle:1];

    v99 = String._bridgeToObjectiveC()();

    v100 = [objc_opt_self() actionWithTitle:v99 style:0 handler:0];

    [v98 addAction:v100];
    v101 = v142;
    while (1)
    {
      v102 = v101;
      v101 = [v101 nextResponder];

      if (!v101)
      {
        break;
      }

      objc_opt_self();
      v103 = swift_dynamicCastObjCClass();
      if (v103)
      {
        [v103 presentViewController:v98 animated:1 completion:0];

        break;
      }
    }
  }
}

void sub_100335EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a1)
  {
    v7 = objc_opt_self();
    v8 = [v7 mainBundle];
    v41._object = 0x800000010057D660;
    v9._countAndFlagsBits = 0xD00000000000001FLL;
    v9._object = 0x8000000100591540;
    v10.value._object = 0x800000010057D640;
    v41._countAndFlagsBits = 0xD00000000000001BLL;
    v10.value._countAndFlagsBits = 0xD000000000000016;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v41);

    v12 = [v7 mainBundle];
    v42._object = 0x800000010057D660;
    v13._countAndFlagsBits = 0xD000000000000021;
    v13._object = 0x8000000100591560;
    v14.value._object = 0x800000010057D640;
    v42._countAndFlagsBits = 0xD00000000000001BLL;
    v14.value._countAndFlagsBits = 0xD000000000000016;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v42);

    v16 = [v7 mainBundle];
    v43._object = 0x8000000100579B60;
    v17._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v17._object = 0xEF454C5449545F4ELL;
    v43._countAndFlagsBits = 0xD000000000000021;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v43);

    v19 = String._bridgeToObjectiveC()();

    v20 = String._bridgeToObjectiveC()();

    v21 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

    v22 = String._bridgeToObjectiveC()();

    v38 = [objc_opt_self() actionWithTitle:v22 style:0 handler:0];

    [v21 addAction:v38];
    v23 = a5;
    while (1)
    {
      v24 = v23;
      v23 = [v23 nextResponder];

      if (!v23)
      {
        break;
      }

      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        [v25 presentViewController:v21 animated:1 completion:0];

        break;
      }
    }
  }

  else
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1004AE960(a6);
      swift_unknownObjectRelease();
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100005B14(v27, qword_1006D4630);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      sub_10007EBC0(&qword_1006B9570);
      v32 = String.init<A>(describing:)();
      v34 = sub_100005B4C(v32, v33, &v39);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "FMTrustedLocationView: Edit Safe Location completed with error: %s", v30, 0xCu);
      sub_100006060(v31);
    }

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 67109120;
      _os_log_impl(&_mh_execute_header, v35, v36, "FMDeviceProvider: refreshSafeLocations, isCompletionNil? %{BOOL}d", v37, 8u);
    }

    FMIPManager.refreshSafeLocations(completion:)();
  }
}

void sub_100336414()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "FMTrustedLocationView: Refresh safe locations competed after edit)", v2, 2u);
  }
}

void sub_1003364FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, void *a6, void *a7, void *a8)
{
  v16 = type metadata accessor for FMIPSafeLocation();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 || !a3)
  {
    v21 = objc_opt_self();
    v22 = [v21 mainBundle];
    v58._object = 0x800000010057D660;
    v23._countAndFlagsBits = 0xD00000000000001ELL;
    v23._object = 0x8000000100586B90;
    v24.value._object = 0x800000010057D640;
    v58._countAndFlagsBits = 0xD00000000000001BLL;
    v24.value._countAndFlagsBits = 0xD000000000000016;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v58);

    v26 = [v21 mainBundle];
    v59._object = 0x800000010057D660;
    v27._countAndFlagsBits = 0xD00000000000002ALL;
    v27._object = 0x8000000100586BB0;
    v28.value._object = 0x800000010057D640;
    v59._countAndFlagsBits = 0xD00000000000001BLL;
    v28.value._countAndFlagsBits = 0xD000000000000016;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v59);

    v30 = [v21 mainBundle];
    v60._object = 0x8000000100579B60;
    v31._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v31._object = 0xEF454C5449545F4ELL;
    v60._countAndFlagsBits = 0xD000000000000021;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v60);

    v33 = String._bridgeToObjectiveC()();

    v34 = String._bridgeToObjectiveC()();

    v35 = [objc_opt_self() alertControllerWithTitle:v33 message:v34 preferredStyle:1];

    v36 = String._bridgeToObjectiveC()();

    v54 = [objc_opt_self() actionWithTitle:v36 style:0 handler:0];

    [v35 addAction:v54];
    v37 = a5;
    while (1)
    {
      v38 = v37;
      v37 = [v37 nextResponder];

      if (!v37)
      {
        break;
      }

      objc_opt_self();
      v39 = swift_dynamicCastObjCClass();
      if (v39)
      {
        [v39 presentViewController:v35 animated:1 completion:0];

        break;
      }
    }

    v40 = v54;
  }

  else
  {
    if (a4 == 2 || (a4 & 1) == 0)
    {
      v54 = v18;
      v41 = [a6 title];
      if (v41)
      {
        v42 = v41;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v43 = a7;
      v44 = a8;

      FMIPSafeLocation.init(identifier:label:location:placemark:)();
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1004AE378(v20);
        swift_unknownObjectRelease();
      }

      (*(v17 + 8))(v20, v54);
    }

    else if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1004ADD04(a2, a3);
      swift_unknownObjectRelease();
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100005B14(v45, qword_1006D4630);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v55 = 0;
      v56 = v49;
      *v48 = 136315138;
      sub_10007EBC0(&qword_1006B9570);
      v50 = String.init<A>(describing:)();
      v52 = sub_100005B4C(v50, v51, &v56);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "FMTrustedLocationView: Add Safe Location completed with error: %s", v48, 0xCu);
      sub_100006060(v49);
    }
  }
}

uint64_t sub_100336AD8()
{

  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_delegate);

  return sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_editingSafeLocation, &unk_1006BB1B0);
}

id sub_100336B90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMTrustedLocationDetailView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMTrustedLocationDetailView()
{
  result = qword_1006BBED8;
  if (!qword_1006BBED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100336CE0()
{
  sub_1002C9B30();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100336DC4(uint64_t *a1)
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
  v25 = v2 + 32;
  v30[0] = v2 + 32;
  v30[1] = v4;
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
    v24 = v4;
LABEL_10:
    v27 = v9;
    v28 = v8;
    v13 = *(v25 + 8 * v9);
    v26 = v10;
    while (1)
    {
      v15 = *v10;
      if (*&v13[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_sortOrder] == 1)
      {
        goto LABEL_11;
      }

      if (*&v15[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_sortOrder] == 1)
      {
        goto LABEL_9;
      }

      if (*&v13[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8])
      {
        v16 = *&v13[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title];
        v17 = *&v13[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8];
      }

      else
      {
        v16 = 0;
        v17 = 0xE000000000000000;
      }

      v18 = &v15[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title];
      if (*&v15[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8])
      {
        v19 = *(v18 + 1);
        if (v16 == *v18)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v19 = 0xE000000000000000;
        if (!v16)
        {
LABEL_21:
          if (v17 == v19)
          {

            v11 = v13;
            v12 = v15;

LABEL_9:
            v9 = v27 + 1;
            v10 = v26 + 8;
            v8 = v28 - 1;
            if (v27 + 1 == v24)
            {
              return specialized ContiguousArray._endMutation()();
            }

            goto LABEL_10;
          }
        }
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v21 = v13;
      v22 = v15;

      if ((v20 & 1) == 0)
      {
        goto LABEL_9;
      }

      v15 = *v10;
      v13 = *(v10 + 8);
LABEL_11:
      *v10 = v13;
      *(v10 + 8) = v15;
      v10 -= 8;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_9;
      }
    }
  }

  v6 = v5;
  if (v4 >= 2)
  {
    type metadata accessor for FMDeletableRowView();
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4 >> 1;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v29[0] = ((v7 & 0xFFFFFFFFFFFFFF8) + 32);
  v29[1] = (v4 >> 1);
  sub_100337060(v29, v31, v30, v6);
  *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

  return specialized ContiguousArray._endMutation()();
}

void sub_100337060(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_123:
    v6 = v5;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_162;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_125;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (2)
  {
    v9 = v7;
    v10 = v7 + 1;
    v108 = v7;
    if (v7 + 1 >= v6)
    {
      ++v7;
      goto LABEL_38;
    }

    v11 = *a3;
    v121 = *(*a3 + 8 * v10);
    v12 = *(v11 + 8 * v7);
    v120 = *(v11 + 8 * v9);
    v13 = v9;
    v14 = v121;
    v15 = v5;
    v16 = v12;
    v17 = sub_1003313DC(&v121, &v120);
    if (v15)
    {

      return;
    }

    v18 = v17;

    v19 = v13 + 2;
    if (v13 + 2 >= v6)
    {
      v7 = v13 + 2;
      v5 = 0;
      goto LABEL_28;
    }

    v20 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_sortOrder;
    v21 = (v11 + 8 * v13 + 16);
    v5 = 0;
    v117 = v8;
    v115 = v18;
    while (1)
    {
      v7 = v19;
      v22 = *v21;
      if (*(*v21 + v20) == 1)
      {
        if ((v18 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_9;
      }

      v112 = v19;
      v23 = *(v21 - 1);
      if (*&v23[v20] == 1)
      {
        v7 = v19;
        if (v18)
        {
          v10 = v19 - 1;
          v9 = v108;
          if (v19 >= v108)
          {
            goto LABEL_30;
          }

          goto LABEL_155;
        }

        goto LABEL_9;
      }

      if (*&v22[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8])
      {
        v24 = *&v22[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title];
        v25 = *&v22[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8];
      }

      else
      {
        v24 = 0;
        v25 = 0xE000000000000000;
      }

      v26 = &v23[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title];
      if (*&v23[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8])
      {
        v27 = *(v26 + 1);
        if (v24 != *v26)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v27 = 0xE000000000000000;
        if (v24)
        {
          goto LABEL_23;
        }
      }

      if (v25 == v27)
      {
        v28 = 0;
        goto LABEL_24;
      }

LABEL_23:
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_24:

      v29 = v22;
      v30 = v23;

      LOBYTE(v18) = v115;
      if ((v115 ^ v28))
      {
        break;
      }

      v20 = OBJC_IVAR____TtC6FindMy18FMDeletableRowView_sortOrder;
      v5 = 0;
      v8 = v117;
      v7 = v112;
LABEL_9:
      v19 = v7 + 1;
      ++v21;
      if (v6 == v7 + 1)
      {
        v10 = v7;
        v7 = v6;
        v9 = v108;
        if (v18)
        {
          goto LABEL_29;
        }

        goto LABEL_38;
      }
    }

    v7 = v112;
    v10 = v112 - 1;
    v5 = 0;
    v8 = v117;
LABEL_28:
    v9 = v108;
    if (v18)
    {
LABEL_29:
      if (v7 >= v9)
      {
LABEL_30:
        if (v9 <= v10)
        {
          v31 = 8 * v7 - 8;
          v32 = 8 * v9;
          v33 = v7;
          do
          {
            if (v9 != --v33)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_159;
              }

              v35 = *(v34 + v32);
              *(v34 + v32) = *(v34 + v31);
              *(v34 + v31) = v35;
            }

            ++v9;
            v31 -= 8;
            v32 += 8;
          }

          while (v9 < v33);
LABEL_36:
          v9 = v108;
        }

        goto LABEL_38;
      }

LABEL_155:
      __break(1u);
LABEL_156:
      v8 = sub_10025EFD4(v8);
LABEL_125:
      v122 = v8;
      v101 = *(v8 + 2);
      if (v101 >= 2)
      {
        while (*a3)
        {
          v102 = *&v8[16 * v101];
          v103 = *&v8[16 * v101 + 24];
          sub_10033790C((*a3 + 8 * v102), (*a3 + 8 * *&v8[16 * v101 + 16]), (*a3 + 8 * v103), v5);
          if (v6)
          {
            goto LABEL_133;
          }

          if (v103 < v102)
          {
            goto LABEL_149;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_10025EFD4(v8);
          }

          if (v101 - 2 >= *(v8 + 2))
          {
            goto LABEL_150;
          }

          v104 = &v8[16 * v101];
          *v104 = v102;
          *(v104 + 1) = v103;
          v122 = v8;
          sub_10025EF48(v101 - 1);
          v8 = v122;
          v101 = *(v122 + 2);
          if (v101 <= 1)
          {
            goto LABEL_133;
          }
        }

        goto LABEL_160;
      }

LABEL_133:

      return;
    }

LABEL_38:
    v36 = a3[1];
    if (v7 >= v36)
    {
      goto LABEL_68;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_152;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_67;
    }

    v9 = v108;
    v37 = v108 + a4;
    if (__OFADD__(v108, a4))
    {
      goto LABEL_153;
    }

    if (v37 >= v36)
    {
      v37 = a3[1];
    }

    if (v37 < v108)
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    if (v7 == v37)
    {
LABEL_68:
      if (v7 < v9)
      {
        goto LABEL_151;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_10008B8B8(0, *(v8 + 2) + 1, 1, v8);
      }

      v54 = *(v8 + 2);
      v53 = *(v8 + 3);
      v55 = v54 + 1;
      v56 = v108;
      if (v54 >= v53 >> 1)
      {
        v100 = sub_10008B8B8((v53 > 1), v54 + 1, 1, v8);
        v56 = v108;
        v8 = v100;
      }

      *(v8 + 2) = v55;
      v57 = &v8[16 * v54];
      *(v57 + 4) = v56;
      *(v57 + 5) = v7;
      v119 = *a1;
      if (!*a1)
      {
        goto LABEL_161;
      }

      if (!v54)
      {
LABEL_3:
        v6 = a3[1];
        if (v7 >= v6)
        {
          goto LABEL_123;
        }

        continue;
      }

      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_88:
          if (v62)
          {
            goto LABEL_140;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_143;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_146;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_147;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_109;
          }

          goto LABEL_102;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_102:
        if (v80)
        {
          goto LABEL_142;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_145;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_109:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        if (!*a3)
        {
          goto LABEL_158;
        }

        v6 = v7;
        v97 = *&v8[16 * v96 + 32];
        v98 = *&v8[16 * v58 + 40];
        sub_10033790C((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v98), v119);
        if (v5)
        {
          goto LABEL_133;
        }

        if (v98 < v97)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10025EFD4(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_137;
        }

        v99 = &v8[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        v122 = v8;
        sub_10025EF48(v58);
        v8 = v122;
        v55 = *(v122 + 2);
        v7 = v6;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_138;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_139;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_141;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_144;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_148;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_109;
      }

      goto LABEL_88;
    }

    break;
  }

  v107 = v5;
  v38 = *a3;
  v39 = *a3 + 8 * v7 - 8;
  v40 = v108 - v7;
  v116 = *a3;
  v118 = v8;
  v109 = v37;
  while (2)
  {
    v111 = v39;
    v113 = v7;
    v41 = *(v38 + 8 * v7);
    v110 = v40;
LABEL_50:
    if (*&v41[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_sortOrder] == 1)
    {
      goto LABEL_61;
    }

    v42 = *v39;
    if (*(*v39 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_sortOrder) == 1)
    {
      v8 = v118;
      goto LABEL_48;
    }

    if (*&v41[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8])
    {
      v43 = *&v41[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title];
      v6 = *&v41[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8];
    }

    else
    {
      v43 = 0;
      v6 = 0xE000000000000000;
    }

    v44 = &v42[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title];
    if (!*&v42[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8])
    {
      v45 = 0xE000000000000000;
      if (v43)
      {
        goto LABEL_60;
      }

LABEL_59:
      if (v6 != v45)
      {
        goto LABEL_60;
      }

      v51 = v41;
      v52 = v42;

      v38 = v116;
      v8 = v118;
LABEL_48:
      v7 = v113 + 1;
      v39 = v111 + 8;
      v40 = v110 - 1;
      if (v113 + 1 == v109)
      {
        v7 = v109;
        v5 = v107;
LABEL_67:
        v9 = v108;
        goto LABEL_68;
      }

      continue;
    }

    break;
  }

  v45 = *(v44 + 1);
  if (v43 == *v44)
  {
    goto LABEL_59;
  }

LABEL_60:
  v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v47 = v41;
  v48 = v42;

  v38 = v116;
  v8 = v118;
  if ((v46 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_61:
  if (v38)
  {
    v49 = *v39;
    v41 = *(v39 + 8);
    *v39 = v41;
    *(v39 + 8) = v49;
    v39 -= 8;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
}

uint64_t sub_10033790C(void **__src, void **__dst, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v30 = __dst;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v14 = &v4[v12];
    if (v10 >= 8 && v30 > v6)
    {
      v53 = v4;
LABEL_38:
      v31 = v30 - 1;
      --v5;
      v32 = v14;
      v48 = v30 - 1;
      v50 = v30;
      do
      {
        v33 = v5 + 1;
        v35 = *--v32;
        v34 = v35;
        if (*&v35[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_sortOrder] == 1)
        {
LABEL_54:
          if (v33 != v50)
          {
            *v5 = *v31;
          }

          if (v14 <= v4 || (v30 = v31, v31 <= v6))
          {
            v30 = v31;
            goto LABEL_61;
          }

          goto LABEL_38;
        }

        v36 = *v31;
        if (*(*v31 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_sortOrder) != 1)
        {
          if (*&v34[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8])
          {
            v37 = *&v34[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title];
            v38 = *&v34[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8];
          }

          else
          {
            v37 = 0;
            v38 = 0xE000000000000000;
          }

          v39 = &v36[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title];
          if (*&v36[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8])
          {
            v40 = *v39;
            v41 = *(v39 + 1);
          }

          else
          {
            v40 = 0;
            v41 = 0xE000000000000000;
          }

          v52 = v14;
          if (v37 == v40 && v38 == v41)
          {

            v42 = v34;
            v43 = v36;

            v4 = v53;
            v14 = v52;
            v31 = v48;
          }

          else
          {
            v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v44 = v34;
            v45 = v36;

            v4 = v53;
            v14 = v52;
            v31 = v48;
            if (v47)
            {
              goto LABEL_54;
            }
          }
        }

        if (v33 != v14)
        {
          *v5 = *v32;
        }

        --v5;
        v14 = v32;
      }

      while (v32 > v4);
      v14 = v32;
      v30 = v50;
    }
  }

  else
  {
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && __dst < v5)
    {
      v15 = __dst;
      while (1)
      {
        v16 = *v15;
        if (*(*v15 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_sortOrder) == 1)
        {
          break;
        }

        v19 = *v4;
        if (*(*v4 + OBJC_IVAR____TtC6FindMy18FMDeletableRowView_sortOrder) != 1)
        {
          v49 = v15;
          if (*&v16[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8])
          {
            v20 = *&v16[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title];
            v21 = *&v16[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8];
          }

          else
          {
            v20 = 0;
            v21 = 0xE000000000000000;
          }

          v22 = &v19[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title];
          if (*&v19[OBJC_IVAR____TtC6FindMy18FMDeletableRowView_title + 8])
          {
            v23 = *v22;
            v24 = *(v22 + 1);
          }

          else
          {
            v23 = 0;
            v24 = 0xE000000000000000;
          }

          v25 = v14;
          if (v20 == v23 && v21 == v24)
          {

            v26 = v16;
            v27 = v19;

            v15 = v49;
            v14 = v25;
          }

          else
          {
            v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v28 = v16;
            v29 = v19;

            v15 = v49;
            v14 = v25;
            if (v51)
            {
              break;
            }
          }
        }

        v17 = v4;
        v18 = v6 == v4++;
        if (!v18)
        {
          goto LABEL_14;
        }

LABEL_15:
        ++v6;
        if (v4 >= v14 || v15 >= v5)
        {
          goto LABEL_59;
        }
      }

      v17 = v15;
      v18 = v6 == v15++;
      if (v18)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v6 = *v17;
      goto LABEL_15;
    }

LABEL_59:
    v30 = v6;
  }

LABEL_61:
  if (v30 != v4 || v30 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v30, v4, 8 * (v14 - v4));
  }

  return 1;
}

void *sub_100337DAC(uint64_t a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_maxNumberSafeLocations) = 20;
  *(v1 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_locationsRow) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_safeLocations) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_snapshotMemoryCache) = &_swiftEmptyDictionarySingleton;
  v4 = OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_mapSnapshotter;
  type metadata accessor for FMMapSnapshotter();
  swift_allocObject();
  *(v1 + v4) = sub_10012114C();
  v5 = (v1 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_beaconUUID);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_groupBeaconUUIDs) = 0;
  v6 = OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_editingSafeLocation;
  v7 = type metadata accessor for FMIPSafeLocation();
  (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
  *(v2 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_numSafeLocations) = 0;
  *(v2 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_mediator) = a1;
  v8 = objc_opt_self();

  v9 = [v8 mainBundle];
  v16._object = 0x800000010057D660;
  v10._countAndFlagsBits = 0xD000000000000020;
  v10._object = 0x8000000100591400;
  v11.value._object = 0x800000010057D640;
  v16._countAndFlagsBits = 0xD00000000000001BLL;
  v11.value._countAndFlagsBits = 0xD000000000000016;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v16);

  return sub_1001A67B8(v13._countAndFlagsBits, v13._object);
}

uint64_t sub_100337F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006BB1B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003380B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100338100(uint64_t a1)
{
  v3 = *(type metadata accessor for FMIPSafeLocation() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003326C4(a1, v5, v1 + v4, v6);
}

uint64_t sub_1003381A0()
{
  v1 = type metadata accessor for FMIPSafeLocation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10033827C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(type metadata accessor for FMIPSafeLocation() - 8);
  v11 = *(v5 + 16);
  v12 = v5 + ((*(v10 + 80) + 24) & ~*(v10 + 80));

  return a5(a1, a2, a3, a4, v11, v12);
}

void sub_10033833C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_maxNumberSafeLocations) = 20;
  *(v0 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_locationsRow) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_safeLocations) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_snapshotMemoryCache) = &_swiftEmptyDictionarySingleton;
  v2 = OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_mapSnapshotter;
  type metadata accessor for FMMapSnapshotter();
  swift_allocObject();
  *(v0 + v2) = sub_10012114C();
  v3 = (v0 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_beaconUUID);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_groupBeaconUUIDs) = 0;
  v4 = OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_editingSafeLocation;
  v5 = type metadata accessor for FMIPSafeLocation();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + OBJC_IVAR____TtC6FindMy27FMTrustedLocationDetailView_numSafeLocations) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100338498()
{
  v1 = sub_100478F60();
  if (v1)
  {
    oslog = v1;
    v2 = objc_opt_self();
    v3 = CNContactPostalAddressesKey;
    v4 = [v2 viewControllerForContact:oslog];
    [v4 setDisplayMode:1];
    [v4 setAllowsEditing:1];
    [v4 highlightPropertyWithKey:v3 identifier:0];

    v5 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v0 action:"dismissPresentedVCWithSender:"];
    v6 = objc_allocWithZone(UINavigationController);
    v7 = v4;
    v8 = [v6 initWithRootViewController:v7];
    [v8 setModalPresentationStyle:2];
    v9 = [v7 navigationItem];
    [v9 setLeftBarButtonItem:v5 animated:1];

    v10 = [v7 view];
    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = [objc_opt_self() systemBackgroundColor];
    [v10 setBackgroundColor:v11];

    v12 = [objc_allocWithZone(CNContactStore) init];
    [v7 setContactStore:v12];

    v13 = v0;
    while (1)
    {
      v14 = v13;
      v13 = [v13 nextResponder];

      if (!v13)
      {
        break;
      }

      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        [v15 presentViewController:v8 animated:1 completion:0];

        break;
      }
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100005B14(v16, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v17, "FMTrustedLocationView: No me contact fetched. Check access.", v18, 2u);
    }
  }
}

void sub_10033880C(int a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7)
{
  v90 = a4;
  v92 = a2;
  LODWORD(v91) = a1;
  v12 = type metadata accessor for FMFLocationSource();
  v86 = *(v12 - 8);
  __chkstk_darwin(v12);
  v82 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_10007EBC0(&qword_1006B14A8);
  __chkstk_darwin(v85);
  v88 = &v79 - v14;
  v15 = sub_10007EBC0(&qword_1006B0050);
  v16 = __chkstk_darwin(v15 - 8);
  v89 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v83 = &v79 - v19;
  __chkstk_darwin(v18);
  v21 = &v79 - v20;
  v22 = sub_10007EBC0(&qword_1006AF740);
  v23 = __chkstk_darwin(v22 - 8);
  v81 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v79 - v25;
  v27 = sub_10007EBC0(&unk_1006C2460);
  v28 = __chkstk_darwin(v27 - 8);
  v84 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v32 = &v79 - v31;
  __chkstk_darwin(v30);
  v34 = &v79 - v33;
  v35 = type metadata accessor for FMFConfigValue();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v79 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (a5 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a5 < 9.22337204e18)
  {
    (*(v36 + 104))(v38, enum case for FMFConfigValue.inaccuracyRadiusThreshold(_:), v35);
    v93 = 0x7FFFFFFFFFFFFFFFLL;
    FMFGlobalConfig<A>(_:fallback:)();
    (*(v36 + 8))(v38, v35);
    v87 = v94;
    if (v91)
    {
      v39 = 0;
      v40 = v92;
      v41 = v89;
      goto LABEL_26;
    }

    sub_100007204(v92, v21, &qword_1006B0050);
    v42 = type metadata accessor for FMFFriend();
    v43 = *(v42 - 8);
    v44 = *(v43 + 48);
    v91 = v43 + 48;
    v80 = v44;
    v45 = v44(v21, 1, v42);
    v79 = v43;
    if (v45 == 1)
    {
      v46 = &qword_1006B0050;
      v47 = v21;
    }

    else
    {
      FMFFriend.location.getter();
      (*(v43 + 8))(v21, v42);
      v48 = type metadata accessor for FMFLocation();
      v49 = *(v48 - 8);
      if ((*(v49 + 48))(v26, 1, v48) != 1)
      {
        FMFLocation.locationSource.getter();
        (*(v49 + 8))(v26, v48);
        v50 = 0;
LABEL_12:
        v51 = v86;
        v52 = *(v86 + 56);
        v52(v34, v50, 1, v12);
        (*(v51 + 104))(v32, enum case for FMFLocationSource.secureLive(_:), v12);
        v52(v32, 0, 1, v12);
        v53 = *(v85 + 48);
        v54 = v88;
        sub_100007204(v34, v88, &unk_1006C2460);
        sub_100007204(v32, v54 + v53, &unk_1006C2460);
        v55 = *(v51 + 48);
        if (v55(v54, 1, v12) == 1)
        {
          sub_100012DF0(v32, &unk_1006C2460);
          v56 = v88;
          sub_100012DF0(v34, &unk_1006C2460);
          v57 = v55(v56 + v53, 1, v12);
          v40 = v92;
          v41 = v89;
          if (v57 == 1)
          {
            sub_100012DF0(v56, &unk_1006C2460);
LABEL_20:
            v63 = v83;
            sub_100007204(v40, v83, &qword_1006B0050);
            if (v80(v63, 1, v42) == 1)
            {
              v64 = &qword_1006B0050;
              v65 = v63;
            }

            else
            {
              v66 = v81;
              FMFFriend.location.getter();
              (*(v79 + 8))(v63, v42);
              v67 = type metadata accessor for FMFLocation();
              v68 = *(v67 - 8);
              if ((*(v68 + 48))(v66, 1, v67) != 1)
              {
                v69 = FMFLocation.isLivePaused.getter();
                (*(v68 + 8))(v66, v67);
                v39 = v69 ^ 1;
                goto LABEL_26;
              }

              v64 = &qword_1006AF740;
              v65 = v66;
            }

            sub_100012DF0(v65, v64);
            v39 = 1;
LABEL_26:
            v70 = sub_100007204(v40, v41, &qword_1006B0050);
            v71 = *(a3 + OBJC_IVAR____TtC6FindMy18FMPersonAnnotation_personLock);
            __chkstk_darwin(v70);
            *(&v79 - 2) = v41;
            v72 = *(*v71 + class metadata base offset for ManagedBuffer + 16);
            v73 = (*(*v71 + 48) + 3) & 0x1FFFFFFFCLL;

            os_unfair_lock_lock((v71 + v73));
            sub_100339CDC(v71 + v72);
            v74 = v87 < a5;
            os_unfair_lock_unlock((v71 + v73));

            sub_100012DF0(v41, &qword_1006B0050);
            v75 = *(a3 + OBJC_IVAR____TtC6FindMy18FMPersonAnnotation_personImage);
            v76 = v90;
            *(a3 + OBJC_IVAR____TtC6FindMy18FMPersonAnnotation_personImage) = v90;
            v77 = v76;

            v78 = (a3 + OBJC_IVAR____TtC6FindMy18FMPersonAnnotation_tempCoordinate);
            *v78 = a6;
            v78[1] = a7;
            *(a3 + OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy) = a5;
            *(a3 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate) = v74;
            *(a3 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive) = v39 & 1;
            sub_100339320(v40);
            return;
          }
        }

        else
        {
          v85 = v42;
          v58 = v84;
          sub_100007204(v54, v84, &unk_1006C2460);
          if (v55(v54 + v53, 1, v12) != 1)
          {
            v59 = v86;
            v60 = v82;
            (*(v86 + 32))(v82, v54 + v53, v12);
            sub_100033C30(&qword_1006B14E0);
            v61 = dispatch thunk of static Equatable.== infix(_:_:)();
            v62 = *(v59 + 8);
            v62(v60, v12);
            sub_100012DF0(v32, &unk_1006C2460);
            sub_100012DF0(v34, &unk_1006C2460);
            v62(v58, v12);
            sub_100012DF0(v88, &unk_1006C2460);
            v40 = v92;
            v41 = v89;
            v42 = v85;
            if (v61)
            {
              goto LABEL_20;
            }

LABEL_18:
            v39 = 0;
            goto LABEL_26;
          }

          sub_100012DF0(v32, &unk_1006C2460);
          v56 = v88;
          sub_100012DF0(v34, &unk_1006C2460);
          (*(v86 + 8))(v58, v12);
          v40 = v92;
          v41 = v89;
        }

        sub_100012DF0(v56, &qword_1006B14A8);
        goto LABEL_18;
      }

      v46 = &qword_1006AF740;
      v47 = v26;
    }

    sub_100012DF0(v47, v46);
    v50 = 1;
    goto LABEL_12;
  }

LABEL_29:
  __break(1u);
  os_unfair_lock_unlock(&v34[v35]);
  __break(1u);
}

void sub_100339320(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006AF740);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for FMFLocationSource();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v32 - v10;
  __chkstk_darwin(v9);
  v32 = &v32 - v12;
  v13 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v13 - 8);
  v15 = &v32 - v14;
  v16 = type metadata accessor for FMFFriend();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007204(a1, v15, &qword_1006B0050);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100012DF0(v15, &qword_1006B0050);
LABEL_8:
    v30 = 0;
    goto LABEL_9;
  }

  (*(v17 + 32))(v19, v15, v16);
  FMFFriend.location.getter();
  v20 = type metadata accessor for FMFLocation();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v4, 1, v20) == 1)
  {
    (*(v17 + 8))(v19, v16);
    sub_100012DF0(v4, &qword_1006AF740);
    goto LABEL_8;
  }

  FMFLocation.locationSource.getter();
  (*(v21 + 8))(v4, v20);
  v22 = v32;
  v23 = v33;
  v24 = v11;
  v25 = v34;
  (*(v33 + 32))(v32, v24, v34);
  (*(v23 + 104))(v8, enum case for FMFLocationSource.stewie(_:), v25);
  sub_100033C30(&qword_1006B14E8);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v26 = *(v23 + 8);
  v26(v8, v25);
  if (v37 != v36)
  {
    v26(v22, v25);
    (*(v17 + 8))(v19, v16);
    goto LABEL_8;
  }

  v27 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:1];
  v28 = v22;
  v29 = String._bridgeToObjectiveC()();
  v30 = [objc_opt_self() _systemImageNamed:v29 withConfiguration:v27];

  v26(v28, v25);
  (*(v17 + 8))(v19, v16);
LABEL_9:
  v31 = *(v35 + OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage);
  *(v35 + OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage) = v30;
}

uint64_t sub_100339840()
{
  sub_10000905C(0, &qword_1006BC2B0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

id sub_1003398C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy18FMPersonAnnotation_personImage);
  if (v3)
  {
    v4 = *(a1 + OBJC_IVAR____TtC6FindMy18FMPersonAnnotation_personImage);
  }

  else
  {
    v4 = [objc_allocWithZone(UIImage) init];
    v3 = 0;
  }

  *a2 = v4;
  return v3;
}

uint64_t sub_10033999C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FMFFriend();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = *(a1 + OBJC_IVAR____TtC6FindMy18FMPersonAnnotation_personLock);
  v12 = *(*v11 + class metadata base offset for ManagedBuffer + 16);
  v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v11 + v13));
  sub_100007204(v11 + v12, v10, &qword_1006B0050);
  os_unfair_lock_unlock((v11 + v13));

  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_100012DF0(v10, &qword_1006B0050);
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_100012DF0(v10, &qword_1006B0050);
    v14 = FMFFriend.identifier.getter();
    v15 = v16;
    (*(v5 + 8))(v7, v4);
  }

  *a2 = v14;
  a2[1] = v15;
  type metadata accessor for FMAnnotationIdentifier();
  return swift_storeEnumTagMultiPayload();
}

void sub_100339BFC()
{

  v1 = *(v0 + OBJC_IVAR____TtC6FindMy18FMPersonAnnotation_updateQueue);
}

id sub_100339C4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPersonAnnotation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100339CDC(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_100012DF0(a1, &qword_1006B0050);
  return sub_100007204(v3, a1, &qword_1006B0050);
}

uint64_t sub_100339D48(uint64_t a1, void *a2, int a3, double a4, double a5, double a6)
{
  v7 = *&v6;
  LODWORD(v104) = a3;
  v101 = a2;
  v108 = a1;
  v107 = a6;
  v97 = type metadata accessor for FMFLocationSource();
  v100 = *(v97 - 8);
  __chkstk_darwin(v97);
  v90 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_10007EBC0(&qword_1006B14A8);
  __chkstk_darwin(v96);
  v99 = &v88 - v12;
  v13 = sub_10007EBC0(&qword_1006B0050);
  v14 = __chkstk_darwin(v13 - 8);
  v106 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v91 = &v88 - v17;
  __chkstk_darwin(v16);
  v95 = &v88 - v18;
  v19 = sub_10007EBC0(&qword_1006AF740);
  v20 = __chkstk_darwin(v19 - 8);
  v89 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v92 = &v88 - v22;
  v23 = sub_10007EBC0(&unk_1006C2460);
  v24 = __chkstk_darwin(v23 - 8);
  v93 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v94 = &v88 - v27;
  __chkstk_darwin(v26);
  v98 = &v88 - v28;
  v29 = type metadata accessor for FMFConfigValue();
  v102 = *(v29 - 8);
  v103 = v29;
  __chkstk_darwin(v29);
  v31 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v36 - 8);
  v37 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v37 - 8);
  v105 = OBJC_IVAR____TtC6FindMy18FMPersonAnnotation_personImage;
  *&v6[OBJC_IVAR____TtC6FindMy18FMPersonAnnotation_personImage] = 0;
  v38 = OBJC_IVAR____TtC6FindMy18FMPersonAnnotation_updateQueue;
  sub_10000905C(0, &qword_1006AEDC0);
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v33 + 104))(v35, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v6[v38] = result;
  if ((*&v107 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (a6 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a6 < 9.22337204e18)
  {
    v41 = v102;
    v40 = v103;
    (*(v102 + 104))(v31, enum case for FMFConfigValue.inaccuracyRadiusThreshold(_:), v103);
    v110 = 0x7FFFFFFFFFFFFFFFLL;
    FMFGlobalConfig<A>(_:fallback:)();
    (*(v41 + 8))(v31, v40);
    v42 = v111;
    if (v104)
    {
      v43 = 0;
      v44 = v101;
LABEL_23:
      v71 = v42 < a6;
      v72 = v108;
      v73 = v106;
      sub_100007204(v108, v106, &qword_1006B0050);
      sub_10007EBC0(&qword_1006BBF30);
      v74 = swift_allocObject();
      *(v74 + ((*(*v74 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
      sub_1000FEB1C(v73, v74 + *(*v74 + class metadata base offset for ManagedBuffer + 16));
      *(*&v7 + OBJC_IVAR____TtC6FindMy18FMPersonAnnotation_personLock) = v74;
      v75 = *(*&v7 + v105);
      *(*&v7 + v105) = v44;
      v76 = v44;

      v77 = (*&v7 + OBJC_IVAR____TtC6FindMy18FMPersonAnnotation_tempCoordinate);
      *v77 = a4;
      v77[1] = a5;
      v78 = (*&v7 + OBJC_IVAR____TtC6FindMy12FMAnnotation_title);
      *v78 = 0;
      v78[1] = 0;
      *(*&v7 + OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage) = 0;
      *(*&v7 + OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage) = 0;
      v79 = (*&v7 + OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier);
      *v79 = 0;
      v79[1] = 0;
      v80 = (*&v7 + OBJC_IVAR____TtC6FindMy12FMAnnotation_coordinate);
      *v80 = a4;
      v80[1] = a5;
      *(*&v7 + OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy) = a6;
      *(*&v7 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou) = 0;
      *(*&v7 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate) = v71;
      *(*&v7 + OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive) = v43 & 1;
      v81 = type metadata accessor for FMAnnotation();
      *&v109.receiver = v7;
      v109.super_class = v81;
      v82 = objc_msgSendSuper2(&v109, "init");
      sub_100339320(v72);

      sub_100012DF0(v72, &qword_1006B0050);
      return v82;
    }

    v104 = v111;
    v107 = v7;
    v45 = v95;
    sub_100007204(v108, v95, &qword_1006B0050);
    v46 = type metadata accessor for FMFFriend();
    v47 = *(v46 - 8);
    v103 = *(v47 + 48);
    v48 = v103(v45, 1, v46);
    v102 = v47;
    if (v48 == 1)
    {
      sub_100012DF0(v45, &qword_1006B0050);
      v49 = 1;
      v50 = v98;
      v51 = v94;
    }

    else
    {
      v52 = v92;
      FMFFriend.location.getter();
      (*(v47 + 8))(v45, v46);
      v53 = type metadata accessor for FMFLocation();
      v54 = *(v53 - 8);
      v55 = (*(v54 + 48))(v52, 1, v53);
      v50 = v98;
      v51 = v94;
      if (v55 == 1)
      {
        sub_100012DF0(v52, &qword_1006AF740);
        v49 = 1;
      }

      else
      {
        FMFLocation.locationSource.getter();
        (*(v54 + 8))(v52, v53);
        v49 = 0;
      }
    }

    v56 = v100;
    v57 = *(v100 + 56);
    v58 = v97;
    v57(v50, v49, 1, v97);
    (*(v56 + 104))(v51, enum case for FMFLocationSource.secureLive(_:), v58);
    v57(v51, 0, 1, v58);
    v59 = v58;
    v60 = *(v96 + 48);
    v61 = v99;
    sub_100007204(v50, v99, &unk_1006C2460);
    v62 = v61;
    sub_100007204(v51, v61 + v60, &unk_1006C2460);
    v63 = *(v56 + 48);
    if (v63(v61, 1, v59) == 1)
    {
      sub_100012DF0(v51, &unk_1006C2460);
      v62 = v99;
      sub_100012DF0(v50, &unk_1006C2460);
      if (v63(v62 + v60, 1, v59) == 1)
      {
        sub_100012DF0(v62, &unk_1006C2460);
LABEL_19:
        v70 = v91;
        sub_100007204(v108, v91, &qword_1006B0050);
        if (v103(v70, 1, v46) != 1)
        {
          v83 = v89;
          FMFFriend.location.getter();
          (*(v102 + 8))(v70, v46);
          v84 = type metadata accessor for FMFLocation();
          v85 = *(v84 - 8);
          v86 = (*(v85 + 48))(v83, 1, v84);
          v44 = v101;
          if (v86 == 1)
          {
            sub_100012DF0(v83, &qword_1006AF740);
            v43 = 1;
          }

          else
          {
            v87 = FMFLocation.isLivePaused.getter();
            (*(v85 + 8))(v83, v84);
            v43 = v87 ^ 1;
          }

          v7 = v107;
          goto LABEL_22;
        }

        sub_100012DF0(v70, &qword_1006B0050);
        v43 = 1;
LABEL_21:
        v7 = v107;
        v44 = v101;
LABEL_22:
        v42 = v104;
        goto LABEL_23;
      }
    }

    else
    {
      v64 = v93;
      sub_100007204(v61, v93, &unk_1006C2460);
      if (v63(v61 + v60, 1, v59) != 1)
      {
        v65 = v100;
        v66 = v61 + v60;
        v67 = v90;
        (*(v100 + 32))(v90, v66, v59);
        sub_100033C30(&qword_1006B14E0);
        v68 = dispatch thunk of static Equatable.== infix(_:_:)();
        v69 = *(v65 + 8);
        v69(v67, v59);
        sub_100012DF0(v51, &unk_1006C2460);
        sub_100012DF0(v98, &unk_1006C2460);
        v69(v93, v59);
        sub_100012DF0(v61, &unk_1006C2460);
        if (v68)
        {
          goto LABEL_19;
        }

LABEL_17:
        v43 = 0;
        goto LABEL_21;
      }

      sub_100012DF0(v51, &unk_1006C2460);
      sub_100012DF0(v50, &unk_1006C2460);
      (*(v100 + 8))(v64, v59);
    }

    sub_100012DF0(v62, &qword_1006B14A8);
    goto LABEL_17;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_10033AB20()
{
  v1 = OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber);

  return swift_deallocClassInstance();
}

Swift::Int sub_10033ABD4()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10033AE94(&unk_1006C2410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10033AC74()
{
  type metadata accessor for UUID();
  sub_10033AE94(&unk_1006C2410, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10033ACFC()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10033AE94(&unk_1006C2410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10033AD98(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10033AE94(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10033AF04()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy11FMStatusBar_maskLayer);
  sub_10007EBC0(&qword_1006B04E8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1005528D0;
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v5 colorWithAlphaComponent:1.0];

  v7 = [v6 CGColor];
  type metadata accessor for CGColor(0);
  v9 = v8;
  *(v3 + 56) = v8;
  *(v3 + 32) = v7;
  v10 = [v4 whiteColor];
  v11 = [v10 colorWithAlphaComponent:0.8];

  v12 = [v11 CGColor];
  *(v3 + 88) = v9;
  *(v3 + 64) = v12;
  v13 = [v4 whiteColor];
  v14 = [v13 colorWithAlphaComponent:0.0];

  v15 = [v14 CGColor];
  *(v3 + 120) = v9;
  *(v3 + 96) = v15;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setColors:isa];

  sub_10007EBC0(&qword_1006AFC30);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100552EF0;
  sub_10000905C(0, &qword_1006BEF40);
  *(v17 + 32) = NSNumber.init(floatLiteral:)(0.0);
  *(v17 + 40) = NSNumber.init(floatLiteral:)(0.7);
  *(v17 + 48) = NSNumber.init(floatLiteral:)(1.0);
  v18 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setLocations:v18];

  v19 = [*(v1 + OBJC_IVAR____TtC6FindMy11FMStatusBar_blurView) layer];
  [v19 setMask:v2];
}

void sub_10033B1E0()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "FMStatusBar: user choosed to keep location precision off", v2, 2u);
  }
}

void sub_10033B2C8()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FMStatusBar: user choosed to go to settings", v3, 2u);
  }

  sub_10033C9B0();
}

uint64_t sub_10033B428(void *a1, char a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = v2;
  *(v13 + 32) = a1;
  aBlock[4] = sub_10033C21C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100637660;
  v14 = _Block_copy(aBlock);
  v15 = v2;
  v16 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v19);
}

void sub_10033B6CC(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMStatusBar: location provider update precision state limited? %{BOOL}d", v9, 8u);
  }

  if (a1)
  {
    *(a2 + OBJC_IVAR____TtC6FindMy11FMStatusBar_state) = 2;
LABEL_11:
    sub_10033B9C0();
    return;
  }

  v10 = *(a3 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_isLocationAuthorized);
  *(a2 + OBJC_IVAR____TtC6FindMy11FMStatusBar_state) = (v10 & 1) == 0;
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = [objc_opt_self() standardUserDefaults];
  v12 = String._bridgeToObjectiveC()();
  [v11 setBool:0 forKey:v12];
}

id sub_10033B8A8()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for FMStatusBar();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_pillView];
  [v1 frame];
  [v1 _setContinuousCornerRadius:v2 * 0.5];
  v6 = &type metadata for SolariumFeatureFlag;
  v7 = sub_10000BD04();
  LOBYTE(v1) = isFeatureEnabled(_:)();
  result = sub_100006060(v5);
  if (v1)
  {
    v4 = *&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_maskLayer];
    [*&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_blurView] bounds];
    return [v4 setFrame:?];
  }

  return result;
}

void sub_10033B9C0()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if ((v3 & 1) != 0 || (v4 = *&v0[OBJC_IVAR____TtC6FindMy11FMStatusBar_mediator], (sub_100056EF8() & 1) == 0) || ((v5 = *(v4 + 16), v6 = v0, v7 = sub_100057590(), v5, v7) ? (v8 = v7 == 3) : (v8 = 1), v8))
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100005B14(v9, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "FMStatusBar: NOT presenting coarse service acknowledgment since it was previously shown", v11, 2u);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100005B14(v12, qword_1006D4630);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "FMStatusBar: presenting coarse service acknowledgment", v15, 2u);
    }

    v16 = objc_opt_self();
    v17 = [v16 mainBundle];
    v37._object = 0x8000000100591910;
    v18._countAndFlagsBits = 0xD00000000000001FLL;
    v18._object = 0x80000001005918F0;
    v37._countAndFlagsBits = 0xD000000000000031;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v37);

    sub_10022E294(0xD000000000000022, 0x8000000100591950);
    v20 = String._bridgeToObjectiveC()();

    v21 = String._bridgeToObjectiveC()();

    v22 = [objc_opt_self() alertControllerWithTitle:v20 message:v21 preferredStyle:1];

    v23 = [v16 mainBundle];
    v38._object = 0x80000001005919A0;
    v24._object = 0x8000000100591980;
    v38._countAndFlagsBits = 0xD00000000000002ELL;
    v24._countAndFlagsBits = 0xD00000000000001CLL;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v38);

    v26 = swift_allocObject();
    *(v26 + 16) = v6;
    v27 = v6;
    v28 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_10033C214;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100017328;
    aBlock[3] = &unk_1006375C0;
    v29 = _Block_copy(aBlock);

    v30 = [objc_opt_self() actionWithTitle:v28 style:0 handler:v29];
    _Block_release(v29);

    [v22 addAction:v30];
    v31 = v27;
    while (1)
    {
      v32 = v31;
      v31 = [v31 nextResponder];

      if (!v31)
      {
        break;
      }

      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (v33)
      {
        [v33 presentViewController:v22 animated:1 completion:0];

        break;
      }
    }
  }
}

void sub_10033BF1C()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FMStatusBar: user acknowledged services are precise", v3, 2u);
  }

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  [v4 setBool:1 forKey:v5];
}

id sub_10033C0A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMStatusBar();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10033C1B4()
{
  result = qword_1006BC0B8;
  if (!qword_1006BC0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BC0B8);
  }

  return result;
}

void sub_10033C228()
{
  v15 = &type metadata for SolariumFeatureFlag;
  v16 = sub_10000BD04();
  v1 = isFeatureEnabled(_:)();
  sub_100006060(v14);
  if (v1)
  {
    v2 = 2.0;
  }

  else
  {
    v2 = 10.0;
  }

  v3 = objc_opt_self();
  v4 = [objc_opt_self() mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = [v3 _effectWithBlurRadius:v2 scale:v6];
  v8 = OBJC_IVAR____TtC6FindMy11FMStatusBar_blurView;
  v9 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v7];

  *(v0 + v8) = v9;
  v10 = OBJC_IVAR____TtC6FindMy11FMStatusBar_maskLayer;
  *(v0 + v10) = [objc_allocWithZone(CAGradientLayer) init];
  v11 = OBJC_IVAR____TtC6FindMy11FMStatusBar_pillView;
  *(v0 + v11) = [objc_allocWithZone(UIView) init];
  v12 = OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabel;
  *(v0 + v12) = [objc_allocWithZone(UILabel) init];
  v13 = OBJC_IVAR____TtC6FindMy11FMStatusBar_chevron;
  *(v0 + v13) = [objc_allocWithZone(UIImageView) init];
  *(v0 + OBJC_IVAR____TtC6FindMy11FMStatusBar_pillHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy11FMStatusBar_pillBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabelTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy11FMStatusBar_textLabelBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy11FMStatusBar_initialState) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy11FMStatusBar_state) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy11FMStatusBar_userDidInteractWithMap) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10033C440()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FMStatusBar: user tapped status bar pill", v3, 2u);
  }

  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v40._object = 0x8000000100591A80;
  v6._object = 0x8000000100591A60;
  v40._countAndFlagsBits = 0xD000000000000024;
  v6._countAndFlagsBits = 0xD000000000000012;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v40);

  v8 = [v4 mainBundle];
  v41._object = 0x8000000100579A00;
  v9._countAndFlagsBits = 0xD000000000000014;
  v9._object = 0x8000000100591AB0;
  v10.value._countAndFlagsBits = 0xD000000000000013;
  v10.value._object = 0x80000001005799E0;
  v41._countAndFlagsBits = 0xD000000000000018;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v41);

  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();

  v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  v15 = [v4 mainBundle];
  v42._object = 0x8000000100591AF0;
  v16._countAndFlagsBits = 0xD000000000000016;
  v16._object = 0x8000000100591AD0;
  v42._countAndFlagsBits = 0xD000000000000028;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v42);

  v18 = String._bridgeToObjectiveC()();

  v38 = sub_10033B1E0;
  v39 = 0;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100017328;
  v37 = &unk_100637688;
  v19 = _Block_copy(&aBlock);

  v20 = objc_opt_self();
  v21 = [v20 actionWithTitle:v18 style:0 handler:v19];
  _Block_release(v19);

  v22 = [v4 mainBundle];
  v43._object = 0x8000000100591B40;
  v23._countAndFlagsBits = 0xD00000000000001CLL;
  v23._object = 0x8000000100591B20;
  v43._countAndFlagsBits = 0xD00000000000002ELL;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v43);

  v25 = swift_allocObject();
  *(v25 + 16) = v33;
  v26 = v33;
  v27 = String._bridgeToObjectiveC()();

  v38 = sub_10033C9A8;
  v39 = v25;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100017328;
  v37 = &unk_1006376D8;
  v28 = _Block_copy(&aBlock);

  v29 = [v20 actionWithTitle:v27 style:0 handler:v28];
  _Block_release(v28);

  [v14 addAction:v29];
  [v14 addAction:v21];
  v30 = v26;
  while (1)
  {
    v31 = v30;
    v30 = [v30 nextResponder];

    if (!v30)
    {
      break;
    }

    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (v32)
    {
      [v32 presentViewController:v14 animated:1 completion:0];

      break;
    }
  }
}

void sub_10033C9B0()
{
  v0 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100012DF0(v2, &unk_1006B0120);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100005B14(v7, qword_1006D4630);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "FMStatusBar: Error opening settings. Invalid URL", v10, 2u);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v11 = [objc_opt_self() defaultWorkspace];
    if (v11)
    {
      v13 = v11;
      URL._bridgeToObjectiveC()(v12);
      v15 = v14;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v13 openSensitiveURL:v15 withOptions:isa];
    }

    (*(v4 + 8))(v6, v3);
  }
}

char *sub_10033CC8C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryFoundMultipleCard_continueAction] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryFoundMultipleCard_continueActionCancellable] = 0;
  swift_unknownObjectWeakInit();
  v7 = [objc_allocWithZone(UITableView) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  objc_allocWithZone(sub_10007EBC0(&unk_1006BC1C0));

  v8 = v7;

  v9 = sub_100515A1C(a3, v8, a2);
  *&v4[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryFoundMultipleCard_tableView] = v8;
  *&v4[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryFoundMultipleCard_dataSource] = v9;
  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryFoundMultipleCard_discoveryController] = a3;
  v10 = objc_allocWithZone(PRXScrollableContentView);

  v30 = v8;
  v31 = v9;
  v29 = [v10 initWithCardStyle:0 scrollView:v30];
  v33.receiver = v4;
  v33.super_class = type metadata accessor for FMAccessoryDiscoveryFoundMultipleCard();
  v11 = objc_msgSendSuper2(&v33, "initWithContentView:", v29);
  v12 = OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryFoundMultipleCard_tableView;
  v13 = *&v11[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryFoundMultipleCard_tableView];
  v14 = objc_opt_self();
  v15 = v11;
  v16 = [v14 clearColor];
  [v13 setBackgroundColor:v16];

  [*&v11[v12] setDelegate:v15];
  [v15 setDismissalType:3];
  v17 = objc_opt_self();
  v18 = [v17 mainBundle];
  v34._object = 0x8000000100579A00;
  v19._countAndFlagsBits = 0xD000000000000031;
  v19._object = 0x8000000100591C70;
  v20.value._object = 0x80000001005799E0;
  v34._countAndFlagsBits = 0xD000000000000018;
  v20.value._countAndFlagsBits = 0xD000000000000013;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v34);

  v22 = String._bridgeToObjectiveC()();

  [v15 setTitle:v22];

  v23 = [v17 mainBundle];
  v35._object = 0x8000000100579A00;
  v24._countAndFlagsBits = 0xD000000000000034;
  v24._object = 0x8000000100591CB0;
  v25.value._object = 0x80000001005799E0;
  v35._countAndFlagsBits = 0xD000000000000018;
  v25.value._countAndFlagsBits = 0xD000000000000013;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v35);

  v27 = String._bridgeToObjectiveC()();

  [v15 setSubtitle:v27];

  sub_10033D030();

  return v15;
}

uint64_t sub_10033D030()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B64E0);
  __chkstk_darwin(v2 - 8);
  v35 = &v34 - v3;
  v4 = sub_10007EBC0(&qword_1006BC160);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  v8 = sub_10007EBC0(&qword_1006BC168);
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  __chkstk_darwin(v8);
  v11 = &v34 - v10;
  v12 = sub_10007EBC0(&unk_1006BC170);
  v13 = *(v12 - 8);
  v38 = v12;
  v39 = v13;
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  v16 = [objc_opt_self() mainBundle];
  v41._object = 0x8000000100579A00;
  v17._countAndFlagsBits = 0xD000000000000023;
  v17._object = 0x8000000100591C10;
  v18.value._object = 0x80000001005799E0;
  v41._countAndFlagsBits = 0xD000000000000018;
  v18.value._countAndFlagsBits = 0xD000000000000013;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v41);

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v21 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10033E860;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_100637728;
  v22 = _Block_copy(aBlock);
  v23 = objc_opt_self();

  v24 = [v23 actionWithTitle:v21 style:0 handler:v22];

  _Block_release(v22);

  v25 = [v1 addAction:v24];

  [v24 setEnabled:0];
  swift_beginAccess();
  sub_10007EBC0(&unk_1006C3A20);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100004098(&qword_1006BC180, &qword_1006BC160);
  v26 = Publisher.eraseToAnyPublisher()();
  (*(v5 + 8))(v7, v4);
  aBlock[0] = v26;
  sub_10007EBC0(&qword_1006BC188);
  sub_100004098(&unk_1006BC190, &qword_1006BC188);
  Publisher.map<A>(_:)();

  v27 = [objc_opt_self() mainRunLoop];
  aBlock[0] = v27;
  v28 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v29 = v35;
  (*(*(v28 - 8) + 56))(v35, 1, 1, v28);
  sub_10011060C();
  sub_100004098(&unk_1006BC1A0, &qword_1006BC168);
  sub_10033E868(&qword_1006B2928, sub_10011060C);
  v30 = v36;
  Publisher.receive<A>(on:options:)();
  sub_100012DF0(v29, &qword_1006B64E0);

  (*(v37 + 8))(v11, v30);
  swift_getKeyPath();
  aBlock[0] = v24;
  sub_100004098(&unk_1006BC1B0, &unk_1006BC170);
  v31 = v38;
  v32 = Publisher<>.assign<A>(to:on:)();

  (*(v39 + 8))(v15, v31);

  *&v1[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryFoundMultipleCard_continueActionCancellable] = v32;
}

uint64_t sub_10033D77C()
{
  v0 = type metadata accessor for FMAccessoryDiscoveryCoordinator.Event(0);
  __chkstk_darwin(v0);
  v2 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10007EBC0(&qword_1006B8DC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - v4;
  v6 = type metadata accessor for FMIPDiscoveredAccessory();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&unk_1006BC140);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v38 = v5;
    v39 = v14;
    v40 = v13;
    v41 = v7;
    v36 = v2;
    v37 = v9;
    v42 = v6;
    v35 = v0;
    __chkstk_darwin(result);
    v18 = type metadata accessor for FMIPAccessoryDiscoveryController();
    *(&v35 - 4) = v18;
    v19 = sub_10033E868(&unk_1006BC150, &type metadata accessor for FMIPAccessoryDiscoveryController);
    *(&v35 - 3) = v19;
    *(&v35 - 2) = &off_1006294F8;
    *(&v35 - 1) = &off_10062C610;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v35 - 4) = v18;
    *(&v35 - 3) = v19;
    *(&v35 - 2) = &off_1006294F8;
    *(&v35 - 1) = &off_10062C610;
    swift_getKeyPath();
    static Published.subscript.getter();

    v21 = sub_10007EBC0(&qword_1006B4190);
    if ((*(*(v21 - 8) + 48))(v12, 1, v21) == 1)
    {

      v22 = &unk_1006BC140;
LABEL_6:
      v24 = v12;
      return sub_100012DF0(v24, v22);
    }

    v23 = sub_10007EBC0(&qword_1006B76D0);
    if ((*(*(v23 - 8) + 48))(v12, 1, v23) == 1)
    {

      v22 = &qword_1006B4190;
      goto LABEL_6;
    }

    v26 = v39;
    v25 = v40;
    v27 = v43;
    (*(v39 + 32))(v43, v12, v40);

    v28 = v38;
    dispatch thunk of FMIPAccessoryDiscoveryController.accessory(with:)();

    v30 = v41;
    v29 = v42;
    if ((*(v41 + 48))(v28, 1, v42) == 1)
    {
      (*(v26 + 8))(v27, v25);

      v22 = &qword_1006B8DC0;
      v24 = v28;
      return sub_100012DF0(v24, v22);
    }

    v31 = v37;
    (*(v30 + 32))(v37, v28, v29);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v33 = Strong;
      v34 = v36;
      (*(v30 + 16))(v36, v31, v29);
      swift_storeEnumTagMultiPayload();
      sub_10026E410(v34);

      sub_1002531B8(v34);
    }

    else
    {
    }

    (*(v30 + 8))(v31, v29);
    return (*(v26 + 8))(v27, v25);
  }

  return result;
}

uint64_t sub_10033DD78@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_10007EBC0(&qword_1006B4190);
  result = (*(*(v4 - 8) + 48))(a1, 1, v4);
  *a2 = result != 1;
  return result;
}

id sub_10033DE20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryDiscoveryFoundMultipleCard();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10033DF04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10007EBC0(&qword_1006B4190);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_10007EBC0(&unk_1006C2670);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(&qword_1006B76D0);
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  dispatch thunk of UITableViewDiffableDataSource.indexPath(for:)();
  sub_100012DF0(v6, &qword_1006B4190);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100012DF0(v9, &unk_1006C2670);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = static IndexPath.== infix(_:_:)();
    (*(v11 + 8))(v13, v10);
    if ((v15 & 1) == 0)
    {
      (*(v11 + 16))(a2, a1, v10);
      v16 = 0;
      return (*(v11 + 56))(a2, v16, 1, v10);
    }
  }

  v16 = 1;
  return (*(v11 + 56))(a2, v16, 1, v10);
}

uint64_t sub_10033E460()
{
  v1 = sub_10007EBC0(&unk_1006BC140);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = v22 - v6;
  __chkstk_darwin(v5);
  v9 = v22 - v8;
  v10 = sub_10007EBC0(&qword_1006B4190);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryFoundMultipleCard_dataSource);
  dispatch thunk of UITableViewDiffableDataSource.itemIdentifier(for:)();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v15 = &unk_1006BC140;
    v16 = v9;
  }

  else
  {
    sub_10033E7F0(v9, v13);
    v22[1] = *(v14 + *((swift_isaMask & *v14) + qword_1006D3DA0 + 48));
    sub_100007204(v13, v7, &qword_1006B4190);
    v17 = (*(v11 + 56))(v7, 0, 1, v10);
    __chkstk_darwin(v17);
    v18 = type metadata accessor for FMIPAccessoryDiscoveryController();
    v22[-4] = v18;
    v19 = sub_10033E868(&unk_1006BC150, &type metadata accessor for FMIPAccessoryDiscoveryController);
    v22[-3] = v19;
    v22[-2] = &off_1006294F8;
    v22[-1] = &off_10062C610;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v22[-4] = v18;
    v22[-3] = v19;
    v22[-2] = &off_1006294F8;
    v22[-1] = &off_10062C610;
    swift_getKeyPath();
    sub_100007204(v7, v4, &unk_1006BC140);

    static Published.subscript.setter();
    sub_100012DF0(v7, &unk_1006BC140);
    v16 = v13;
    v15 = &qword_1006B4190;
  }

  return sub_100012DF0(v16, v15);
}

uint64_t sub_10033E7F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B4190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033E868(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10033E8CC()
{
  result = [objc_opt_self() systemFontOfSize:50.0];
  qword_1006BC1D0 = result;
  return result;
}

void sub_10033E94C()
{
  if (qword_1006AEC08 != -1)
  {
    swift_once();
  }

  [qword_1006BC1D0 pointSize];
  v1 = [objc_opt_self() configurationWithPointSize:3 weight:2 scale:v0];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  qword_1006BC1F0 = v3;
}

void sub_10033EAF0()
{
  if ([v0 isSelected])
  {
    v1 = [v0 tintColor];
  }

  else
  {
    if (qword_1006AEC18 != -1)
    {
      swift_once();
    }

    v1 = qword_1006BC1E0;
  }

  v4 = v1;
  v2 = [v0 layer];
  if (v4)
  {
    v3 = [v4 CGColor];
  }

  else
  {
    v3 = 0;
  }

  [v2 setBorderColor:v3];

  [v0 setNeedsDisplay];
}

id sub_10033EC10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = *&v2[OBJC_IVAR____TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField_hiddenTextField];

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
    a1 = 0;
    v5 = *&v2[OBJC_IVAR____TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField_hiddenTextField];
  }

  [v5 setText:v6];

  v7 = *&v2[OBJC_IVAR____TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField_placeholderView];
  if (a2)
  {
    v10[1] = a1;
    v10[2] = a2;

    sub_10033ED68(v2, v10);
    swift_bridgeObjectRelease_n();
    v8 = v10[0];
  }

  else
  {
    if (qword_1006AEC28 != -1)
    {
      swift_once();
    }

    v8 = qword_1006BC1F0;
  }

  [v7 setImage:v8];

  return [v2 sendActionsForControlEvents:0x20000];
}

void sub_10033ED68(id a1@<X1>, void *a2@<X8>)
{
  v3 = [a1 window];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 screen];
  }

  else
  {
    v5 = [objc_opt_self() mainScreen];
  }

  [v5 scale];
  v7 = v6;

  sub_10000905C(0, &qword_1006BC2B0);
  if (qword_1006AEC08 != -1)
  {
    swift_once();
  }

  [qword_1006BC1D0 pointSize];
  v9 = sub_1003F71FC(v7 * v8);
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(UIImage) initWithCGImage:v9 scale:0 orientation:v7];
  }

  else
  {
    v11 = 0;
  }

  *a2 = v11;
}

id sub_10033EFA0(void *a1)
{
  v3 = OBJC_IVAR____TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField_hiddenTextField;
  *&v1[v3] = [objc_allocWithZone(UITextField) init];
  v4 = OBJC_IVAR____TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField_placeholderView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  *&v1[OBJC_IVAR____TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField_borderColor] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FMAccessoryPairingEmojiSelectionTextField();
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_10033F138();
  }

  return v6;
}

id sub_10033F138()
{
  sub_10033F208();
  sub_10033F35C();
  v1 = [objc_allocWithZone(UITapGestureRecognizer) init];
  [v1 addTarget:v0 action:"becomeFirstResponder"];
  [v0 addGestureRecognizer:v1];

  sub_10033EC10(0, 0);
  v2 = *&v0[OBJC_IVAR____TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField_hiddenTextField];
  [v2 setHidden:1];
  [v2 setDelegate:v0];

  return [v2 setKeyboardType:124];
}

id sub_10033F208()
{
  if (qword_1006AEC20 != -1)
  {
    swift_once();
  }

  [v0 setBackgroundColor:qword_1006BC1E8];
  if (qword_1006AEC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1006BC1E0;
  v2 = qword_1006BC1E0;
  sub_1003409D0(v1);

  v3 = [v0 layer];
  [v3 setBorderWidth:3.0];

  [*&v0[OBJC_IVAR____TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField_placeholderView] setTintColor:v2];
  if (qword_1006AEC10 != -1)
  {
    swift_once();
  }

  v4 = qword_1006BC1D8;

  return [v0 setTintColor:v4];
}

void sub_10033F35C()
{
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EE0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField_hiddenTextField];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField_placeholderView];
  *(inited + 40) = v3;
  v4 = v2;
  v28 = v3;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  for (i = v4; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v6 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];
    [v0 addSubview:v6];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v7 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v8];

  swift_setDeallocating();
  swift_arrayDestroy();
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100555280;
  v11 = [v4 centerXAnchor];
  v12 = [v0 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v10 + 32) = v13;
  v14 = [v4 centerYAnchor];
  v15 = [v0 centerYAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v10 + 40) = v16;
  v17 = [v28 centerXAnchor];
  v18 = [v0 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v10 + 48) = v19;
  v20 = [v28 centerYAnchor];
  v21 = [v0 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v10 + 56) = v22;
  v23 = [v0 widthAnchor];
  v24 = [v23 constraintEqualToConstant:80.0];

  *(v10 + 64) = v24;
  v25 = [v0 heightAnchor];
  v26 = [v25 constraintEqualToConstant:80.0];

  *(v10 + 72) = v26;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 activateConstraints:isa];
}

void sub_10033F934()
{
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005528C0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy36FMAccessoryPairingEmojiSelectionCard_emojiSelectionView];
  *(inited + 32) = v2;
  v3 = v2;
  v4 = v3;
  if ((inited & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_4;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = v3;
LABEL_4:
    v6 = v5;
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    swift_setDeallocating();
    swift_arrayDestroy();
    v24 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100552EF0;
    v8 = [v4 centerXAnchor];
    v9 = [v0 contentView];
    v10 = [v9 mainContentGuide];

    v11 = [v10 centerXAnchor];
    v12 = [v8 constraintEqualToAnchor:v11];

    *(v7 + 32) = v12;
    v13 = [v4 topAnchor];
    v14 = [v0 contentView];
    v15 = [v14 mainContentGuide];

    v16 = [v15 topAnchor];
    v17 = [v13 constraintEqualToAnchor:v16];

    *(v7 + 40) = v17;
    v18 = [v4 bottomAnchor];
    v19 = [v0 contentView];
    v20 = [v19 mainContentGuide];

    v21 = [v20 bottomAnchor];
    v22 = [v18 constraintEqualToAnchor:v21];

    *(v7 + 48) = v22;
    sub_10000905C(0, &qword_1006B3A70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v24 activateConstraints:isa];

    return;
  }

  __break(1u);
}

id sub_10033FC60(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_10007EBC0(&qword_1006B3028);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for FMIPItemRole();
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v31._object = 0x8000000100579A00;
  v10._countAndFlagsBits = 0xD000000000000020;
  v10._object = 0x8000000100591E20;
  v11.value._object = 0x80000001005799E0;
  v31._countAndFlagsBits = 0xD000000000000018;
  v11.value._countAndFlagsBits = 0xD000000000000013;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v31);

  v13 = String._bridgeToObjectiveC()();

  [v2 setTitle:v13];

  v14 = [v8 mainBundle];
  v32._object = 0x8000000100579A00;
  v15 = v29;
  v16._countAndFlagsBits = 0xD000000000000026;
  v16._object = 0x8000000100591E50;
  v17.value._object = 0x80000001005799E0;
  v32._countAndFlagsBits = 0xD000000000000018;
  v17.value._countAndFlagsBits = 0xD000000000000013;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v14, v18, v32);

  v19 = String._bridgeToObjectiveC()();

  [v2 setSubtitle:v19];

  sub_1003408F8(v30, v5);
  if ((*(v15 + 48))(v5, 1, v6) == 1)
  {
    sub_100340968(v5);
  }

  else
  {
    v20 = v28;
    (*(v15 + 32))(v28, v5, v6);
    v21 = FMIPItemRole.emoji.getter();
    v23 = sub_1000F06AC(v21, v22);
    v25 = v24;

    sub_10033EC10(v23, v25);
    (*(v15 + 8))(v20, v6);
  }

  return [v2 setDismissalType:3];
}

void sub_10033FF9C()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v40._object = 0x8000000100579A00;
  v3._countAndFlagsBits = 0xD00000000000002ALL;
  v3._object = 0x8000000100591DC0;
  v4.value._object = 0x80000001005799E0;
  v40._countAndFlagsBits = 0xD000000000000018;
  v4.value._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v40);

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = String._bridgeToObjectiveC()();

  v38 = sub_1003408E8;
  v39 = v6;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100017328;
  v37 = &unk_1006377F8;
  v8 = _Block_copy(&aBlock);
  v9 = objc_opt_self();

  v10 = [v9 actionWithTitle:v7 style:0 handler:v8];

  _Block_release(v8);

  v11 = [v0 addAction:v10];

  v12 = OBJC_IVAR____TtC6FindMy36FMAccessoryPairingEmojiSelectionCard_continueAction;
  v13 = *&v0[OBJC_IVAR____TtC6FindMy36FMAccessoryPairingEmojiSelectionCard_continueAction];
  *&v0[OBJC_IVAR____TtC6FindMy36FMAccessoryPairingEmojiSelectionCard_continueAction] = v10;

  v14 = [v1 mainBundle];
  v41._object = 0x8000000100579A00;
  v15._countAndFlagsBits = 0xD000000000000026;
  v15._object = 0x8000000100591DF0;
  v16.value._object = 0x80000001005799E0;
  v41._countAndFlagsBits = 0xD000000000000018;
  v16.value._countAndFlagsBits = 0xD000000000000013;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v41);

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = String._bridgeToObjectiveC()();

  v38 = sub_1003408F0;
  v39 = v18;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100017328;
  v37 = &unk_100637820;
  v20 = _Block_copy(&aBlock);

  v21 = [v9 actionWithTitle:v19 style:1 handler:v20];

  _Block_release(v20);

  v22 = [v0 addAction:v21];

  v23 = *&v0[v12];
  if (v23)
  {
    v24 = *(*&v0[OBJC_IVAR____TtC6FindMy36FMAccessoryPairingEmojiSelectionCard_emojiSelectionView] + OBJC_IVAR____TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField_hiddenTextField);
    v25 = v23;
    v26 = [v24 text];
    if (v26 && (v27 = v26, v28 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v30 = v29, v27, sub_1000F06AC(v28, v30), v32 = v31, , v32))
    {

      v33 = 1;
    }

    else
    {
      v33 = 0;
    }

    [v25 setEnabled:v33];
  }
}

void sub_1003403D8()
{
  v0 = type metadata accessor for FMAccessoryPairingCoordinator.Event(0);
  __chkstk_darwin(v0);
  v2 = (&v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [*(*(Strong + OBJC_IVAR____TtC6FindMy36FMAccessoryPairingEmojiSelectionCard_emojiSelectionView) + OBJC_IVAR____TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField_hiddenTextField) text];
    if (v5 && (v6 = v5, v7 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v9 = v8, v6, v10 = sub_1000F06AC(v7, v9), v12 = v11, , v12))
    {
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = v13;
        *v2 = v10;
        v2[1] = v12;
        swift_storeEnumTagMultiPayload();
        sub_100123FF0(v2);

        sub_10017C894(v2);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_10034054C()
{
  v0 = type metadata accessor for FMAccessoryPairingCoordinator.Event(0);
  __chkstk_darwin(v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      swift_storeEnumTagMultiPayload();
      sub_100123FF0(v2);

      sub_10017C894(v2);
    }
  }
}

void sub_100340630()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy36FMAccessoryPairingEmojiSelectionCard_continueAction);
  if (v1)
  {
    v2 = *(*(v0 + OBJC_IVAR____TtC6FindMy36FMAccessoryPairingEmojiSelectionCard_emojiSelectionView) + OBJC_IVAR____TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField_hiddenTextField);
    v11 = v1;
    v3 = [v2 text];
    if (v3 && (v4 = v3, v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v7 = v6, v4, sub_1000F06AC(v5, v7), v9 = v8, , v9))
    {

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    [v11 setEnabled:v10];
  }
}

id sub_100340830(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003408F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B3028);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100340968(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B3028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1003409D0(void *a1)
{
  v2 = OBJC_IVAR____TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField_borderColor;
  v3 = *&v1[OBJC_IVAR____TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField_borderColor];
  *&v1[OBJC_IVAR____TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField_borderColor] = a1;
  v4 = a1;

  v5 = [v1 layer];
  v6 = *&v1[v2];
  if (v6)
  {
    v7 = [v6 CGColor];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v5 setBorderColor:?];
}

uint64_t type metadata accessor for FMAccessoryPairingEmojiSelectionCard.ViewModel()
{
  result = qword_1006BC310;
  if (!qword_1006BC310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100340AF8()
{
  sub_100340B64();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100340B64()
{
  if (!qword_1006BC320)
  {
    type metadata accessor for FMIPItemRole();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006BC320);
    }
  }
}

void sub_100340BC4()
{
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityIdentifier:v2];

  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    sub_10047F330();
  }

  v5 = [objc_opt_self() boldButton];
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v8._countAndFlagsBits = 0xD000000000000011;
  v38._object = 0x80000001005920F0;
  v8._object = 0x800000010057A1A0;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0xD000000000000023;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v38);

  v10 = String._bridgeToObjectiveC()();

  [v5 setTitle:v10 forState:0];

  v11 = v5;
  v12 = String._bridgeToObjectiveC()();
  [v11 setAccessibilityIdentifier:v12];

  sub_10000905C(0, &qword_1006AF730);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v13;
  v14 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v11 addAction:v14 forControlEvents:{64, 0, 0, 0, sub_100343520, v34}];

  v15 = *&v1[OBJC_IVAR____TtC6FindMy21FMEmailViewController_nextButton];
  *&v1[OBJC_IVAR____TtC6FindMy21FMEmailViewController_nextButton] = v11;
  v36 = v11;

  v16 = [v1 buttonTray];
  [v16 addButton:v36];

  v17 = [objc_opt_self() linkButton];
  v18 = [v6 mainBundle];
  v39._object = 0x8000000100592150;
  v19._object = 0x8000000100592120;
  v39._countAndFlagsBits = 0xD000000000000035;
  v19._countAndFlagsBits = 0xD000000000000023;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v39);

  v21 = String._bridgeToObjectiveC()();

  [v17 setTitle:v21 forState:0];

  v22 = v17;
  v23 = String._bridgeToObjectiveC()();
  [v22 setAccessibilityIdentifier:v23];

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v22 addAction:v25 forControlEvents:{64, 0, 0, 0, sub_100343528, v24}];

  v26 = [v1 buttonTray];
  [v26 addButton:v22];

  v27 = *&v1[OBJC_IVAR____TtC6FindMy21FMEmailViewController_tableView];
  [v27 _setSectionContentInsetFollowsLayoutMargins:1];
  [v27 setDataSource:v1];
  [v27 setDelegate:v1];
  [v27 setKeyboardDismissMode:2];
  [v27 setScrollEnabled:0];
  [v27 setAllowsSelection:0];
  v28 = [objc_opt_self() clearColor];
  [v27 setBackgroundColor:v28];

  [v27 setRowHeight:UITableViewAutomaticDimension];
  v29 = String._bridgeToObjectiveC()();
  [v27 setAccessibilityIdentifier:v29];

  [v27 setDirectionalLayoutMargins:{0.0, 1.0, 0.0, 1.0}];
  type metadata accessor for FMEmailTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = String._bridgeToObjectiveC()();
  [v27 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v31];

  v32 = [v1 contentView];
  [v32 addSubview:v27];

  v33 = [v1 contentView];
  v35 = String._bridgeToObjectiveC()();
  [v33 setAccessibilityIdentifier:v35];
}

void sub_100341258()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + 0x238))();
  }
}

void sub_1003412E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + 0x240))();
  }
}

void sub_100341370()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy21FMEmailViewController_tableView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1005521F0;
  v4 = [v1 topAnchor];
  v5 = [v0 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6];
  *(v3 + 32) = v7;
  v8 = [v1 leadingAnchor];
  v9 = [v0 contentView];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:-1.0];
  *(v3 + 40) = v11;
  v12 = [v1 trailingAnchor];
  v13 = [v0 contentView];
  v14 = [v13 trailingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:1.0];
  *(v3 + 48) = v15;
  v16 = [v1 heightAnchor];
  v17 = [v0 contentView];
  v18 = [v17 heightAnchor];

  v19 = [v16 constraintEqualToAnchor:v18];
  LODWORD(v20) = 1132068864;
  [v19 setPriority:v20];
  *(v3 + 56) = v19;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

void sub_100341670()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for FMEmailViewController();
  objc_msgSendSuper2(&v18, "viewDidLayoutSubviews");
  if ((*(v0 + OBJC_IVAR____TtC6FindMy21FMEmailViewController_originalHeight + 8) & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC6FindMy21FMEmailViewController_paddingHeight + 8))
    {
      if (*(v0 + OBJC_IVAR____TtC6FindMy21FMEmailViewController_hasAdjustedKeyboardHeight))
      {
        return;
      }

      *(v0 + OBJC_IVAR____TtC6FindMy21FMEmailViewController_hasAdjustedKeyboardHeight) = 1;
      v1 = [v0 scrollView];
      if (v1)
      {
        v2 = v1;
        [v1 contentSize];
        [v2 setContentSize:?];

        v3 = [v0 scrollView];
        if (v3)
        {
          v4 = v3;
LABEL_12:
          [v4 contentInset];
          [v4 setContentInset:?];

          return;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v5 = [v0 scrollView];
      if (v5)
      {
        v6 = v5;
        [v5 contentSize];
        [v6 setContentSize:?];

        if (*(v0 + OBJC_IVAR____TtC6FindMy21FMEmailViewController_hasAdjustedKeyboardHeight))
        {
          return;
        }

        *(v0 + OBJC_IVAR____TtC6FindMy21FMEmailViewController_hasAdjustedKeyboardHeight) = 1;
        v7 = [v0 scrollView];
        if (v7)
        {
          v4 = v7;
          v8 = [v0 scrollView];
          if (v8)
          {
            v9 = v8;
            [v8 bounds];
            v11 = v10;
            v13 = v12;
            v15 = v14;
            v17 = v16;

            v19.origin.x = v11;
            v19.origin.y = v13;
            v19.size.width = v15;
            v19.size.height = v17;
            CGRectGetMaxY(v19);
            goto LABEL_12;
          }

LABEL_18:
          __break(1u);
          return;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }
}

uint64_t sub_10034199C()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v17 = sub_100343530;
  v18 = v3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10046DEDC;
  v16 = &unk_100637900;
  v4 = _Block_copy(&v13);
  v5 = v0;

  v6 = [v2 addObserverForName:UIKeyboardWillHideNotification object:0 queue:0 usingBlock:v4];
  _Block_release(v4);

  *&v5[OBJC_IVAR____TtC6FindMy21FMEmailViewController_keyboardWillHideObserver] = v6;
  swift_unknownObjectRelease();
  v7 = [v1 defaultCenter];
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v17 = sub_100343578;
  v18 = v8;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10046DEDC;
  v16 = &unk_100637950;
  v9 = _Block_copy(&v13);
  v10 = v5;

  v11 = [v7 addObserverForName:UIKeyboardWillChangeFrameNotification object:0 queue:0 usingBlock:v9];
  _Block_release(v9);

  *&v10[OBJC_IVAR____TtC6FindMy21FMEmailViewController_keyboardWillChangeFrameObserver] = v11;
  return swift_unknownObjectRelease();
}

void sub_100341C88()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy21FMEmailViewController_keyboardWillHideObserver);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + OBJC_IVAR____TtC6FindMy21FMEmailViewController_keyboardWillChangeFrameObserver);
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver:v4];
    swift_unknownObjectRelease();
  }
}

id sub_100341E5C(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v4 = [a1 dequeueReusableCellWithIdentifier:v2 forIndexPath:isa];

  type metadata accessor for FMEmailTableViewCell();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    *(v5 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_delegate + 8) = &off_100637848;
    swift_unknownObjectWeakAssign();
    *(v6 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_textFieldIsEnabled) = 1;
    v7 = *(v6 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_textField);
    v8 = v4;
    v9 = [v7 superview];
    if (v9)
    {
    }

    else
    {
      sub_1003C2058();
    }

    v10 = objc_opt_self();
    v11 = v8;
    v12 = [v10 mainBundle];
    v19._object = 0x8000000100592090;
    v13._countAndFlagsBits = 0xD000000000000026;
    v13._object = 0x8000000100592060;
    v19._countAndFlagsBits = 0xD000000000000038;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v19);

    *(v6 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_placeHolderText) = v15;

    v16 = *(v6 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_placeHolderLabel);
    v17 = String._bridgeToObjectiveC()();

    [v16 setText:v17];

    sub_1003C28F0();
  }

  return v4;
}

id sub_1003421A0()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC6FindMy21FMEmailViewController_tableView);
  IndexPath.init(row:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  v7 = [v5 cellForRowAtIndexPath:isa];

  result = 0;
  if (v7)
  {
    type metadata accessor for FMEmailTableViewCell();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_textField);

      return v10;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_1003422F4()
{
  v1 = sub_1003421A0();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 text];

    if (v3)
    {
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;

      v6 = objc_opt_self();
      v7 = [v6 mainBundle];
      v33._object = 0x8000000100591F70;
      v8._countAndFlagsBits = 0xD000000000000022;
      v8._object = 0x8000000100591F40;
      v33._countAndFlagsBits = 0xD000000000000034;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v33);

      v10 = [v6 mainBundle];
      v34._object = 0x8000000100591FE0;
      v11._countAndFlagsBits = 0xD000000000000024;
      v11._object = 0x8000000100591FB0;
      v34._countAndFlagsBits = 0xD000000000000036;
      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v34);

      sub_10007EBC0(&unk_1006B20B0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100552220;
      *(v13 + 56) = &type metadata for String;
      *(v13 + 64) = sub_10008EE84();
      *(v13 + 32) = v31;
      *(v13 + 40) = v5;

      String.init(format:_:)();

      v14 = String._bridgeToObjectiveC()();

      v15 = String._bridgeToObjectiveC()();

      v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

      v17 = [v6 mainBundle];
      v35._object = 0x800000010057B8F0;
      v18._object = 0x800000010057B8D0;
      v35._countAndFlagsBits = 0xD000000000000025;
      v18._countAndFlagsBits = 0xD000000000000013;
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v35);

      v20 = String._bridgeToObjectiveC()();

      v21 = objc_opt_self();
      v22 = [v21 actionWithTitle:v20 style:1 handler:0];

      [v16 addAction:v22];
      v23 = [v6 mainBundle];
      v36._object = 0x8000000100592020;
      v36._countAndFlagsBits = 0xD000000000000015;
      v24._countAndFlagsBits = 5457241;
      v24._object = 0xE300000000000000;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v36);

      v26 = swift_allocObject();
      v26[2] = v0;
      v26[3] = v31;
      v26[4] = v5;
      v27 = v0;
      v28 = String._bridgeToObjectiveC()();

      aBlock[4] = sub_10034308C;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100017328;
      aBlock[3] = &unk_100637888;
      v29 = _Block_copy(aBlock);

      v30 = [v21 actionWithTitle:v28 style:0 handler:v29];
      _Block_release(v29);

      [v16 addAction:v30];
      [v27 presentViewController:v16 animated:1 completion:0];
    }
  }
}

void sub_10034282C(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC6FindMy21FMEmailViewController_emailAddressWarning];
  *v3 = a1;
  *(v3 + 1) = a2;

  v4 = [v2 buttonTray];

  v5 = String._bridgeToObjectiveC()();

  [v4 setCaptionText:v5];
}

id sub_1003428F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC6FindMy21FMEmailViewController_mediator] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy21FMEmailViewController_passcode] = xmmword_100558510;
  v11 = &v7[OBJC_IVAR____TtC6FindMy21FMEmailViewController_style];
  if (qword_1006AECA0 != -1)
  {
    swift_once();
  }

  v12 = qword_1006D4A48;
  v13 = qword_1006D4A60;
  v14 = *algn_1006D4A50;
  *v11 = qword_1006D4A48;
  *(v11 + 8) = v14;
  *(v11 + 3) = v13;
  v15 = OBJC_IVAR____TtC6FindMy21FMEmailViewController_tableView;
  v16 = objc_allocWithZone(type metadata accessor for OBTableView());
  v17 = v12;
  *&v7[v15] = [v16 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v7[OBJC_IVAR____TtC6FindMy21FMEmailViewController_tableViewHeighConstraint] = 0;
  v18 = OBJC_IVAR____TtC6FindMy21FMEmailViewController_warningLabel;
  *&v7[v18] = [objc_allocWithZone(UILabel) init];
  v7[OBJC_IVAR____TtC6FindMy21FMEmailViewController_hasAdjustedKeyboardHeight] = 0;
  v19 = &v7[OBJC_IVAR____TtC6FindMy21FMEmailViewController_originalHeight];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v7[OBJC_IVAR____TtC6FindMy21FMEmailViewController_paddingHeight];
  *v20 = 0;
  v20[8] = 1;
  *&v7[OBJC_IVAR____TtC6FindMy21FMEmailViewController_keyboardMinY] = 0;
  v7[OBJC_IVAR____TtC6FindMy21FMEmailViewController_isKeyboardVisible] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy21FMEmailViewController_keyboardWillChangeFrameObserver] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy21FMEmailViewController_keyboardWillHideObserver] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy21FMEmailViewController_nextButton] = 0;
  v21 = &v7[OBJC_IVAR____TtC6FindMy21FMEmailViewController_emailAddressWarning];
  *v21 = 0;
  v21[1] = 0;
  v22 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v23 = 0;
    if (a6)
    {
      goto LABEL_5;
    }

LABEL_7:
    v24 = 0;
    goto LABEL_8;
  }

  v23 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_5:
  v24 = String._bridgeToObjectiveC()();

LABEL_8:
  v27.receiver = v7;
  v27.super_class = type metadata accessor for FMEmailViewController();
  v25 = objc_msgSendSuper2(&v27, "initWithTitle:detailText:symbolName:contentLayout:", v22, v23, v24, a7);

  return v25;
}

id sub_100342C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC6FindMy21FMEmailViewController_mediator] = 0;
  *&v6[OBJC_IVAR____TtC6FindMy21FMEmailViewController_passcode] = xmmword_100558510;
  v10 = &v6[OBJC_IVAR____TtC6FindMy21FMEmailViewController_style];
  if (qword_1006AECA0 != -1)
  {
    swift_once();
  }

  v11 = qword_1006D4A48;
  v12 = qword_1006D4A60;
  v13 = *algn_1006D4A50;
  *v10 = qword_1006D4A48;
  *(v10 + 8) = v13;
  *(v10 + 3) = v12;
  v14 = OBJC_IVAR____TtC6FindMy21FMEmailViewController_tableView;
  v15 = objc_allocWithZone(type metadata accessor for OBTableView());
  v16 = v11;
  *&v6[v14] = [v15 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v6[OBJC_IVAR____TtC6FindMy21FMEmailViewController_tableViewHeighConstraint] = 0;
  v17 = OBJC_IVAR____TtC6FindMy21FMEmailViewController_warningLabel;
  *&v6[v17] = [objc_allocWithZone(UILabel) init];
  v6[OBJC_IVAR____TtC6FindMy21FMEmailViewController_hasAdjustedKeyboardHeight] = 0;
  v18 = &v6[OBJC_IVAR____TtC6FindMy21FMEmailViewController_originalHeight];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v6[OBJC_IVAR____TtC6FindMy21FMEmailViewController_paddingHeight];
  *v19 = 0;
  v19[8] = 1;
  *&v6[OBJC_IVAR____TtC6FindMy21FMEmailViewController_keyboardMinY] = 0;
  v6[OBJC_IVAR____TtC6FindMy21FMEmailViewController_isKeyboardVisible] = 0;
  *&v6[OBJC_IVAR____TtC6FindMy21FMEmailViewController_keyboardWillChangeFrameObserver] = 0;
  *&v6[OBJC_IVAR____TtC6FindMy21FMEmailViewController_keyboardWillHideObserver] = 0;
  *&v6[OBJC_IVAR____TtC6FindMy21FMEmailViewController_nextButton] = 0;
  v20 = &v6[OBJC_IVAR____TtC6FindMy21FMEmailViewController_emailAddressWarning];
  *v20 = 0;
  v20[1] = 0;
  v21 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  v25.receiver = v6;
  v25.super_class = type metadata accessor for FMEmailViewController();
  v23 = objc_msgSendSuper2(&v25, "initWithTitle:detailText:icon:contentLayout:", v21, v22, a5, a6);

  return v23;
}

id sub_100342EE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMEmailViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003430F0()
{
  v1 = v0;
  v2 = Notification.userInfo.getter();
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_10004CC50(v58), (v5 & 1) == 0))
  {

    sub_10004CDB8(v58);
LABEL_16:
    v59 = 0u;
    v60 = 0u;
    goto LABEL_17;
  }

  sub_100006004(*(v3 + 56) + 32 * v4, &v59);
  sub_10004CDB8(v58);

  if (!*(&v60 + 1))
  {
LABEL_17:
    sub_10000D2C0(&v59);
    return;
  }

  sub_10000905C(0, &unk_1006BC3F0);
  if (swift_dynamicCast())
  {
    v6 = v58[0];
    [v58[0] CGRectValue];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v1 view];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 window];

      if (!v17 || (v18 = [v17 screen], v17, v19 = objc_msgSend(v18, "coordinateSpace"), v18, !v19))
      {
        v20 = [objc_opt_self() mainScreen];
        v19 = [v20 coordinateSpace];
      }

      v21 = [v1 scrollView];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 coordinateSpace];

        [v19 convertRect:v23 toCoordinateSpace:{v8, v10, v12, v14}];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        swift_unknownObjectRelease();
        v32 = [v1 buttonTray];
        [v32 frame];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v61.origin.x = v25;
        v61.origin.y = v27;
        v61.size.width = v29;
        v61.size.height = v31;
        v64.origin.x = v34;
        v64.origin.y = v36;
        v64.size.width = v38;
        v64.size.height = v40;
        if (!CGRectIntersectsRect(v61, v64))
        {
          swift_unknownObjectRelease();

          v57 = &v1[OBJC_IVAR____TtC6FindMy21FMEmailViewController_paddingHeight];
          *v57 = 0;
          v57[8] = 1;
          v1[OBJC_IVAR____TtC6FindMy21FMEmailViewController_hasAdjustedKeyboardHeight] = 0;
          return;
        }

        v41 = &v1[OBJC_IVAR____TtC6FindMy21FMEmailViewController_paddingHeight];
        if (v1[OBJC_IVAR____TtC6FindMy21FMEmailViewController_paddingHeight + 8] != 1)
        {

          swift_unknownObjectRelease();
          return;
        }

        v1[OBJC_IVAR____TtC6FindMy21FMEmailViewController_hasAdjustedKeyboardHeight] = 0;
        v42 = [v1 scrollView];
        if (v42)
        {
          v43 = v42;
          [v42 contentSize];
          v45 = v44;

          v46 = &v1[OBJC_IVAR____TtC6FindMy21FMEmailViewController_originalHeight];
          *v46 = v45;
          v46[8] = 0;
          v62.origin.x = v25;
          v62.origin.y = v27;
          v62.size.width = v29;
          v62.size.height = v31;
          *&v1[OBJC_IVAR____TtC6FindMy21FMEmailViewController_keyboardMinY] = CGRectGetMinY(v62);
          v47 = [v1 buttonTray];
          [v47 frame];
          v49 = v48;
          v51 = v50;
          v53 = v52;
          v55 = v54;

          v63.origin.x = v49;
          v63.origin.y = v51;
          v63.size.width = v53;
          v63.size.height = v55;
          Height = CGRectGetHeight(v63);
          swift_unknownObjectRelease();

          *v41 = Height;
          *(v41 + 8) = 0;
          return;
        }

        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_100343530()
{
  v1 = *(v0 + 16);
  v2 = v1 + OBJC_IVAR____TtC6FindMy21FMEmailViewController_paddingHeight;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy21FMEmailViewController_hasAdjustedKeyboardHeight) = 0;
  sub_1003430F0();
}

id sub_1003435AC(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_contentStackView;
  *&v2[v5] = [objc_allocWithZone(UIStackView) init];
  v6 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_button;
  *&v2[v6] = [objc_opt_self() buttonWithType:1];
  v7 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_scrollView;
  *&v2[v7] = [objc_allocWithZone(UIScrollView) init];
  v8 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_scrollContentView;
  *&v2[v8] = [objc_allocWithZone(UIView) init];
  *&v2[OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_heightConstraint] = 0;
  v2[OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_cancelable] = a2;
  *&v2[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = a1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for FMMediatedViewController();
  return objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
}

void sub_1003436C8()
{
  p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v5 = [v4 systemGroupedBackgroundColor];
    [v3 setBackgroundColor:v5];

    v6 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_scrollView;
    [*&v0[OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_scrollView] setPreservesSuperviewLayoutMargins:1];
    v7 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_scrollContentView;
    [*&v0[OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_scrollContentView] setPreservesSuperviewLayoutMargins:1];
    v8 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_contentStackView;
    [*&v0[OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_contentStackView] setAxis:1];
    [*&v0[v8] setDistribution:3];
    updated = &type metadata for SolariumFeatureFlag;
    v41 = sub_10000BD04();
    LOBYTE(v3) = isFeatureEnabled(_:)();
    sub_100006060(v39);
    if (v3)
    {
      v9 = [v0 navigationItem];
      v10 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v0 action:"backAction"];
      [v9 setLeftBarButtonItem:{v10, v38}];
    }

    else if (v0[OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_cancelable])
    {
      v11 = [objc_opt_self() mainBundle];
      v42._object = 0x800000010057B4A0;
      v12._countAndFlagsBits = 0x425F4C45434E4143;
      v12._object = 0xED00004E4F545455;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v42._countAndFlagsBits = 0xD00000000000001FLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v42);

      updated = type metadata accessor for FMSettingsUpdateViewController();
      v39[0] = v0;
      v14 = v0;
      v15 = String._bridgeToObjectiveC()();

      v16 = updated;
      if (updated)
      {
        v17 = sub_1000244BC(v39, updated);
        v38 = &v38;
        Description = v16[-1].Description;
        __chkstk_darwin(v17);
        v20 = &v39[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        Description[2](v20);
        v21 = _bridgeAnythingToObjectiveC<A>(_:)();
        v22 = v20;
        p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
        (Description[1])(v22, v16);
        sub_100006060(v39);
      }

      else
      {
        v21 = 0;
      }

      v9 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v15 style:0 target:v21 action:"backAction"];

      swift_unknownObjectRelease();
      v10 = [v14 navigationItem];
      [v10 setLeftBarButtonItem:{v9, v38}];
    }

    else
    {
      v23 = *&v0[OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_button];
      v9 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v23];
      if (qword_1006AEC30 != -1)
      {
        swift_once();
      }

      v38 = qword_1006D47A0;
      v24 = [objc_opt_self() mainBundle];
      v43._object = 0x8000000100592230;
      v25._countAndFlagsBits = 0xD000000000000027;
      v25._object = 0x8000000100592200;
      v43._countAndFlagsBits = 0xD000000000000039;
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v43);

      v27 = String._bridgeToObjectiveC()();

      [v23 setTitle:v27 forState:0];

      v28 = [v23 titleLabel];
      if (v28)
      {
        v29 = v28;
        v30 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
        [v29 setFont:v30];
      }

      if (v38 == 1)
      {
        v31 = 10.0;
      }

      else
      {
        v31 = -10.0;
      }

      if (v38 == 1)
      {
        v32 = -10.0;
      }

      else
      {
        v32 = 10.0;
      }

      [v23 setImageEdgeInsets:{0.0, v31, 0.0, v32, v38}];
      v33 = String._bridgeToObjectiveC()();
      v34 = [objc_opt_self() imageNamed:v33];

      [v23 setImage:v34 forState:0];
      [v23 addTarget:v0 action:"backAction" forControlEvents:64];
      v35 = [v4 systemBlueColor];
      [v9 setTintColor:v35];

      v10 = [v0 navigationItem];
      [v10 setLeftBarButtonItem:v9];
      p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
    }

    [*&v0[v7] addSubview:*&v0[v8]];
    [*&v0[v6] addSubview:*&v0[v7]];
    v36 = [v0 p_ivar_lyt[433]];
    if (v36)
    {
      v37 = v36;
      [v36 addSubview:*&v0[v6]];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100343D80()
{
  v1 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_scrollView;
  [*&v0[OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_scrollView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_scrollContentView;
  [*&v0[OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_scrollContentView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_contentStackView;
  [*&v0[OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_contentStackView] setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10007EBC0(&qword_1006AFC30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1005521F0;
  v5 = [*&v0[v1] topAnchor];
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 topAnchor];

  v9 = [v5 constraintEqualToAnchor:v8];
  *(v4 + 32) = v9;
  v10 = [*&v0[v1] bottomAnchor];
  v11 = [v0 view];
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v11;
  v13 = [v11 bottomAnchor];

  v14 = [v10 constraintEqualToAnchor:v13];
  *(v4 + 40) = v14;
  v15 = [*&v0[v1] leadingAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v63 = v3;
  v18 = [v16 leadingAnchor];

  v19 = [v15 constraintEqualToAnchor:v18];
  *(v4 + 48) = v19;
  v20 = [*&v0[v1] trailingAnchor];
  v21 = [v0 view];
  if (!v21)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v22 = v21;
  v64 = objc_opt_self();
  v23 = [v22 trailingAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v4 + 56) = v24;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v64 activateConstraints:isa];

  v26 = [*&v0[v2] heightAnchor];
  v61 = [v26 constraintGreaterThanOrEqualToConstant:480.0];

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100552F00;
  v28 = [*&v0[v2] topAnchor];
  v29 = v2;
  v30 = [*&v0[v1] topAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];

  *(v27 + 32) = v31;
  v32 = [*&v0[v29] bottomAnchor];
  v33 = [*&v0[v1] bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v27 + 40) = v34;
  v35 = [*&v0[v29] leadingAnchor];
  v36 = [*&v0[v1] layoutMarginsGuide];
  v37 = [v36 leadingAnchor];

  v38 = [v35 constraintEqualToAnchor:v37];
  *(v27 + 48) = v38;
  v39 = [*&v0[v29] trailingAnchor];
  v40 = [*&v0[v1] layoutMarginsGuide];
  v41 = [v40 trailingAnchor];

  v42 = [v39 constraintEqualToAnchor:v41];
  *(v27 + 56) = v42;
  *(v27 + 64) = v61;
  v43 = v61;
  v44 = Array._bridgeToObjectiveC()().super.isa;

  [v64 activateConstraints:v44];

  v45 = *&v0[OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_heightConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_heightConstraint] = v43;
  v62 = v43;

  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1005521F0;
  v47 = [*&v0[v63] topAnchor];
  v48 = [*&v0[v29] topAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:14.0];

  *(v46 + 32) = v49;
  v50 = [*&v0[v63] leadingAnchor];
  v51 = [*&v0[v1] layoutMarginsGuide];
  v52 = [v51 leadingAnchor];

  v53 = [v50 constraintEqualToAnchor:v52];
  *(v46 + 40) = v53;
  v54 = [*&v0[v63] trailingAnchor];
  v55 = [*&v0[v1] layoutMarginsGuide];
  v56 = [v55 trailingAnchor];

  v57 = [v54 constraintEqualToAnchor:v56];
  *(v46 + 48) = v57;
  v58 = [*&v0[v63] bottomAnchor];
  v59 = [*&v0[v29] bottomAnchor];
  v60 = [v58 constraintLessThanOrEqualToAnchor:v59];

  *(v46 + 56) = v60;
  v65 = Array._bridgeToObjectiveC()().super.isa;

  [v64 activateConstraints:v65];
}