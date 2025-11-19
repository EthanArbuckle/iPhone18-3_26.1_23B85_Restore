void sub_100068B24(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v31 = a3;
  v32 = a1;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = type metadata accessor for EnvironmentValues();
  v29 = *(v15 - 8);
  v16 = *(v29 + 64);
  __chkstk_darwin(v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  v30 = a5;
  if ((a5 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v29 + 8))(v18, v15);
  }

  v28 = v15;
  sub_1000560A8(a2);

  v20 = objc_opt_self();
  v21 = [v20 mainRunLoop];
  Date.init()();
  Date.addingTimeInterval(_:)();
  v22 = *(v8 + 8);
  v22(v12, v7);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v22(v14, v7);
  [v21 runUntilDate:isa];

  PPTTestCase.startTest()();

  if ((v30 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v29 + 8))(v18, v28);
  }

  sub_1000560A8(v31);

  v25 = [v20 mainRunLoop];
  Date.init()();
  Date.addingTimeInterval(_:)();
  v22(v12, v7);
  v26 = Date._bridgeToObjectiveC()().super.isa;
  v22(v14, v7);
  [v25 runUntilDate:v26];

  PPTTestCase.finishTest()();
}

uint64_t sub_100068F0C(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v38 - 8);
  v3 = *(v41 + 64);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  __chkstk_darwin(v5);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PPTTestCase();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = type metadata accessor for DispatchTime();
  v36 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v32 - v17;
  sub_10000A84C();
  v33 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v35 = *(v12 + 8);
  v35(v16, v11);
  (*(v9 + 16))(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v8);
  v49 = *v1;
  v50 = *(v1 + 8);
  v47 = v1[2];
  v48 = *(v1 + 24);
  v19 = v1[4];
  v46 = *(v1 + 40);
  v20 = v1[6];
  v44 = v2[7];
  v45 = v19;
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v23 = (v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = *(v2 + 1);
  *v23 = *v2;
  v23[1] = v24;
  v25 = *(v2 + 3);
  v23[2] = *(v2 + 2);
  v23[3] = v25;
  aBlock[4] = sub_10006C0C0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100067348;
  aBlock[3] = &unk_10014A860;
  v26 = _Block_copy(aBlock);
  sub_100008E68(&v49, v42, &qword_1001556F0, &unk_10010D920);
  sub_100008E68(&v47, v42, &qword_100154810, &qword_10010DF90);
  sub_100008E68(&v45, v42, &qword_1001556F8, &qword_10010D930);
  swift_unknownObjectRetain();
  sub_100008E68(&v44, v42, &qword_100155700, &qword_10010D938);

  v27 = v34;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000F210(&qword_1001556C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003AE84(&qword_1001556C8, &qword_10010DCF0);
  sub_100004880(&qword_1001556D0, &qword_1001556C8, &qword_10010DCF0);
  v29 = v37;
  v28 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = v33;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);

  (*(v41 + 8))(v29, v28);
  (*(v39 + 8))(v27, v40);
  return (v35)(v18, v36);
}

unint64_t sub_100069494(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v59[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v8 = qword_100160D68;
  v9 = String._bridgeToObjectiveC()();
  [v8 setBool:1 forKey:v9];

  PPTTestCase.startTest()();
  v10 = PPTTestCase.parameters.getter();
  v66 = 0x664F7265626D756ELL;
  v67 = 0xEF7364726F636552;
  AnyHashable.init<A>(_:)();
  if (*(v10 + 16) && (v11 = sub_100075284(&aBlock), (v12 & 1) != 0))
  {
    sub_100007314(*(v10 + 56) + 32 * v11, &v68);
    sub_10006C154(&aBlock);

    if (swift_dynamicCast())
    {
      v14 = v66;
      result = v67;
      goto LABEL_9;
    }
  }

  else
  {

    sub_10006C154(&aBlock);
  }

  result = 0xE400000000000000;
  v14 = 808464433;
LABEL_9:
  v15 = HIBYTE(result) & 0xF;
  v16 = v14 & 0xFFFFFFFFFFFFLL;
  if ((result & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(result) & 0xF;
  }

  else
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    goto LABEL_71;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    v21 = sub_10006FF4C(v14, result, 10);
    v56 = v55;

    if ((v56 & 1) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if ((result & 0x2000000000000000) != 0)
  {
    aBlock = v14;
    v61 = result & 0xFFFFFFFFFFFFFFLL;
    if (v14 == 43)
    {
      if (!v15)
      {
LABEL_87:
        __break(1u);
        return result;
      }

      v18 = (v15 - 1);
      if (v15 != 1)
      {
        v21 = 0;
        v32 = &aBlock + 1;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v18)
          {
            goto LABEL_70;
          }
        }
      }
    }

    else if (v14 == 45)
    {
      if (!v15)
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v18 = (v15 - 1);
      if (v15 != 1)
      {
        v21 = 0;
        v25 = &aBlock + 1;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v27 - v26;
          if (__OFSUB__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v18)
          {
            goto LABEL_70;
          }
        }
      }
    }

    else if (v15)
    {
      v21 = 0;
      p_aBlock = &aBlock;
      while (1)
      {
        v38 = *p_aBlock - 48;
        if (v38 > 9)
        {
          break;
        }

        v39 = 10 * v21;
        if ((v21 * 10) >> 64 != (10 * v21) >> 63)
        {
          break;
        }

        v21 = v39 + v38;
        if (__OFADD__(v39, v38))
        {
          break;
        }

        p_aBlock = (p_aBlock + 1);
        if (!--v15)
        {
LABEL_68:
          LOBYTE(v18) = 0;
          goto LABEL_70;
        }
      }
    }
  }

  else
  {
    if ((v14 & 0x1000000000000000) != 0)
    {
      v18 = ((result & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v57 = result;
      v18 = _StringObject.sharedUTF8.getter();
      result = v57;
    }

    v19 = *v18;
    if (v19 == 43)
    {
      if (v16 >= 1)
      {
        v28 = v16 - 1;
        if (v16 != 1)
        {
          v21 = 0;
          if (!v18)
          {
            goto LABEL_70;
          }

          v29 = v18 + 1;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            v31 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              break;
            }

            ++v29;
            if (!--v28)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_69;
      }

      goto LABEL_86;
    }

    if (v19 == 45)
    {
      if (v16 >= 1)
      {
        v20 = v16 - 1;
        if (v16 != 1)
        {
          v21 = 0;
          if (!v18)
          {
            goto LABEL_70;
          }

          v22 = v18 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v20)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_69;
      }

      __break(1u);
      goto LABEL_85;
    }

    if (v16)
    {
      v21 = 0;
      if (!v18)
      {
        goto LABEL_70;
      }

      while (1)
      {
        v35 = *v18 - 48;
        if (v35 > 9)
        {
          break;
        }

        v36 = 10 * v21;
        if ((v21 * 10) >> 64 != (10 * v21) >> 63)
        {
          break;
        }

        v21 = v36 + v35;
        if (__OFADD__(v36, v35))
        {
          break;
        }

        ++v18;
        if (!--v16)
        {
          goto LABEL_68;
        }
      }
    }
  }

LABEL_69:
  v21 = 0;
  LOBYTE(v18) = 1;
LABEL_70:
  LOBYTE(v68) = v18;
  v40 = v18;

  if (v40)
  {
LABEL_71:
    v21 = 1000;
  }

LABEL_72:
  v69 = *(a2 + 24);
  v68 = *(a2 + 16);
  v41 = v69;

  if ((v41 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v68, &qword_100154810, &qword_10010DF90);
    (*(v4 + 8))(v7, v3);
  }

  sub_1000E3C28(v21, 1, 1);

  v43 = *(a2 + 48);
  v44 = *(a2 + 56);
  v72 = v44;
  aBlock = v43;
  v61 = v44;
  swift_unknownObjectRetain();
  sub_100008E68(&v72, &v66, &qword_100155700, &qword_10010D938);
  sub_10003AE84(&qword_100155718, &qword_10010D950);
  State.wrappedValue.getter();
  v45 = v66;
  v46 = [objc_allocWithZone(NSNull) init];

  swift_unknownObjectRelease();
  if (v45 == v46)
  {
    v47 = [objc_opt_self() defaultCenter];
    if (qword_1001544D0 != -1)
    {
      swift_once();
    }

    v48 = qword_100160AF8;
    v49 = [objc_opt_self() mainQueue];
    v66 = *a2;
    LOBYTE(v67) = *(a2 + 8);
    v70 = *(a2 + 32);
    v71 = *(a2 + 40);
    v50 = swift_allocObject();
    v51 = *(a2 + 16);
    v50[1] = *a2;
    v50[2] = v51;
    v52 = *(a2 + 48);
    v50[3] = *(a2 + 32);
    v50[4] = v52;
    v64 = sub_10006C1A8;
    v65 = v50;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_10005628C;
    v63 = &unk_10014A8B0;
    v53 = _Block_copy(&aBlock);
    sub_100008E68(&v68, v59, &qword_100154810, &qword_10010DF90);
    swift_unknownObjectRetain();
    sub_100008E68(&v72, v59, &qword_100155700, &qword_10010D938);
    sub_100008E68(&v66, v59, &qword_1001556F0, &unk_10010D920);
    sub_100008E68(&v70, v59, &qword_1001556F8, &qword_10010D930);

    v54 = [v47 addObserverForName:v48 object:0 queue:v49 usingBlock:v53];
    _Block_release(v53);

    aBlock = v43;
    v61 = v44;
    v59[0] = v54;
    State.wrappedValue.setter();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return sub_1000035CC(&v72, &qword_100155700, &qword_10010D938);
}

uint64_t sub_100069CFC(uint64_t a1, uint64_t *a2)
{
  v36 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v36 - 8);
  v3 = *(v39 + 64);
  __chkstk_darwin(v36);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v35 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  sub_10000A84C();
  v33 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v34 = *(v11 + 8);
  v34(v15, v10);
  v52 = *a2;
  v53 = *(a2 + 8);
  v50 = a2[2];
  v51 = *(a2 + 24);
  v18 = a2[4];
  v49 = *(a2 + 40);
  v19 = a2[6];
  v32 = a2[7];
  v47 = v32;
  v48 = v18;
  v20 = swift_allocObject();
  v21 = *(a2 + 1);
  v20[1] = *a2;
  v20[2] = v21;
  v22 = *(a2 + 3);
  v20[3] = *(a2 + 2);
  v20[4] = v22;
  v45 = sub_10006C1B0;
  v46 = v20;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_100067348;
  v44 = &unk_10014A900;
  v23 = _Block_copy(&aBlock);
  sub_100008E68(&v52, v40, &qword_1001556F0, &unk_10010D920);
  sub_100008E68(&v50, v40, &qword_100154810, &qword_10010DF90);
  sub_100008E68(&v48, v40, &qword_1001556F8, &qword_10010D930);
  swift_unknownObjectRetain();
  sub_100008E68(&v47, v40, &qword_100155700, &qword_10010D938);

  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_10000F210(&qword_1001556C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003AE84(&qword_1001556C8, &qword_10010DCF0);
  sub_100004880(&qword_1001556D0, &qword_1001556C8, &qword_10010DCF0);
  v24 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v33;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);

  v26 = v5;
  v27 = v32;
  (*(v39 + 8))(v26, v24);
  (*(v37 + 8))(v9, v38);
  v34(v17, v35);
  v28 = [objc_opt_self() defaultCenter];
  aBlock = v19;
  v42 = v27;
  swift_unknownObjectRetain();
  sub_100008E68(&v47, v40, &qword_100155700, &qword_10010D938);
  sub_10003AE84(&qword_100155718, &qword_10010D950);
  State.wrappedValue.getter();
  v29 = v40[0];
  if (qword_1001544D0 != -1)
  {
    swift_once();
  }

  [v28 removeObserver:v29 name:qword_100160AF8 object:0];

  swift_unknownObjectRelease();
  v30 = [objc_allocWithZone(NSNull) init];
  aBlock = v19;
  v42 = v27;
  v40[0] = v30;
  State.wrappedValue.setter();
  swift_unknownObjectRelease();
  return sub_1000035CC(&v47, &qword_100155700, &qword_10010D938);
}

uint64_t sub_10006A2B0()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10006A31C(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 8);
  v7 = *a1;
  v21 = *a1;
  v8 = v22;

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v21, &qword_1001556F0, &unk_10010D920);
    (*(v3 + 8))(v6, v2);
    v7 = v19;
  }

  if (*(v7 + 144) == 1)
  {
    *(v7 + 144) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v18 = v2;
    __chkstk_darwin(KeyPath);
    *(&v17 - 2) = v7;
    *(&v17 - 8) = 1;
    v19 = v7;
    sub_10000F210(&qword_100154958, type metadata accessor for CalculatorLayout);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v2 = v18;
  }

  v20 = *(a1 + 40);
  v11 = a1[4];
  v19 = v11;
  v12 = v20;

  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v19, &qword_1001556F8, &qword_10010D930);
    (*(v3 + 8))(v6, v2);
    v11 = v23;
  }

  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v14 = qword_100160D98;
  sub_10000362C();
  swift_getKeyPath();
  v23 = v14;
  sub_10000F210(&qword_100154C00, type metadata accessor for AppSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v14 + 72) == 1)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    *(v15 + 24) = 1;

    sub_1000F7484(sub_10006C1F4, v15);
  }

  else
  {
    sub_100091C5C(1);
  }
}

uint64_t sub_10006A75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a1;
  v19[2] = a2;
  v20 = sub_10003AE84(&qword_1001556E8, &qword_10010D918);
  v3 = *(v20 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v20);
  v6 = v19 - v5;
  v7 = v2[1];
  v22 = *v2;
  v23 = v7;
  v24 = v2[2];
  v9 = *(v2 + 6);
  v8 = *(v2 + 7);
  if (qword_1001544A0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for PPTTestCase.Name();
  sub_1000048C8(v10, qword_100160A78);
  v25 = v22;
  v26 = BYTE8(v22);
  v27 = v23;
  v28 = BYTE8(v23);
  v29 = v24;
  v30 = BYTE8(v24);
  v31[0] = v8;
  v11 = swift_allocObject();
  v12 = v23;
  *(v11 + 16) = v22;
  *(v11 + 32) = v12;
  *(v11 + 48) = v24;
  *(v11 + 64) = v9;
  *(v11 + 72) = v8;
  sub_100008E68(&v25, v21, &qword_1001556F0, &unk_10010D920);
  sub_100008E68(&v27, v21, &qword_100154810, &qword_10010DF90);
  sub_100008E68(&v29, v21, &qword_1001556F8, &qword_10010D930);
  swift_unknownObjectRetain();
  sub_100008E68(v31, v21, &qword_100155700, &qword_10010D938);
  v13 = sub_10003AE84(&qword_100155708, &unk_10010D940);
  v14 = sub_100004880(&qword_100155710, &qword_100155708, &unk_10010D940);
  View.onTest(_:handler:)();

  if (qword_1001544A8 != -1)
  {
    swift_once();
  }

  sub_1000048C8(v10, qword_100160A90);
  v15 = swift_allocObject();
  v16 = v23;
  *(v15 + 16) = v22;
  *(v15 + 32) = v16;
  *(v15 + 48) = v24;
  *(v15 + 64) = v9;
  *(v15 + 72) = v8;
  sub_100008E68(&v25, v21, &qword_1001556F0, &unk_10010D920);
  sub_100008E68(&v27, v21, &qword_100154810, &qword_10010DF90);
  sub_100008E68(&v29, v21, &qword_1001556F8, &qword_10010D930);
  swift_unknownObjectRetain();
  sub_100008E68(v31, v21, &qword_100155700, &qword_10010D938);
  v21[0] = v13;
  v21[1] = v14;
  swift_getOpaqueTypeConformance2();
  v17 = v20;
  View.onTest(_:handler:)();

  return (*(v3 + 8))(v6, v17);
}

uint64_t sub_10006AB3C(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v54 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v54 - 8);
  v3 = *(v57 + 64);
  __chkstk_darwin(v54);
  v53 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  __chkstk_darwin(v5);
  v52 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CalculatorHistoryScrollPPTTests();
  v44 = *(v8 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v8 - 8);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ScrollViewProxy();
  v10 = *(v40 - 8);
  v41 = *(v10 + 64);
  __chkstk_darwin(v40);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for PPTTestCase();
  v12 = *(v38 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v38);
  v37 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTime();
  v43 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v46 = &v37 - v20;
  PPTTestCase.startTest()();
  sub_10000A84C();
  v47 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v21 = *(v15 + 8);
  v48 = v15 + 8;
  v49 = v21;
  v21(v19, v14);
  v22 = v38;
  (*(v12 + 16))(&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v38);
  v23 = v39;
  v24 = v40;
  (*(v10 + 16))(v39, v50, v40);
  v25 = v42;
  sub_10006C410(v51, v42);
  v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v27 = (v13 + *(v10 + 80) + v26) & ~*(v10 + 80);
  v28 = (v41 + *(v44 + 80) + v27) & ~*(v44 + 80);
  v29 = swift_allocObject();
  (*(v12 + 32))(v29 + v26, v37, v22);
  (*(v10 + 32))(v29 + v27, v23, v24);
  sub_10006C474(v25, v29 + v28);
  aBlock[4] = sub_10006C640;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100067348;
  aBlock[3] = &unk_10014AAB8;
  v30 = _Block_copy(aBlock);

  v31 = v52;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000F210(&qword_1001556C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003AE84(&qword_1001556C8, &qword_10010DCF0);
  sub_100004880(&qword_1001556D0, &qword_1001556C8, &qword_10010DCF0);
  v33 = v53;
  v32 = v54;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = v46;
  v34 = v47;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v30);

  (*(v57 + 8))(v33, v32);
  (*(v55 + 8))(v31, v56);
  return v49(v35, v43);
}

uint64_t sub_10006B1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a1;
  v4 = type metadata accessor for PPTTestCase();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CalculatorHistoryScrollPPTTests();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000048C8(v11, qword_100160D38);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Start scroll test", v14, 2u);
    v7 = v20;
  }

  sub_10006C410(a3, &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, v22, v4);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = (v10 + *(v5 + 80) + v15) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_10006C474(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15);
  (*(v5 + 32))(v17 + v16, v7, v4);
  PPTTestCase.performScrollTest(_:onComplete:)();
}

void sub_10006B468()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  PPTTestCase.finishTest()();
}

void sub_10006B4DC(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  v8 = *(a1 + 40);

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  if (qword_100154728 != -1)
  {
    swift_once();
  }

  sub_10000362C();
  sub_100091C5C(0);

  v10 = a1[2];
  v11 = *(a1 + 24);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v10 = v21;
  }

  v13 = *(v10 + 16);
  sub_100044EA4();
  sub_10004EAC8();

  v14 = *a1;
  v15 = *(a1 + 8);

  if ((v15 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v14 = v21;
  }

  if (*(v14 + 144))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v20 - 2) = v14;
    *(&v20 - 8) = 0;
    v21 = v14;
    sub_10000F210(&qword_100154958, type metadata accessor for CalculatorLayout);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v14 + 144) = 0;
  }

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v18 = qword_100160D68;
  v19 = String._bridgeToObjectiveC()();
  [v18 removeObjectForKey:v19];
}

uint64_t sub_10006B914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a1;
  v21 = a3;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v6 = sub_10003AE84(&qword_100155838, &qword_10010DA80);
  v19 = *(v6 - 8);
  v20 = v6;
  v7 = *(v19 + 64);
  __chkstk_darwin(v6);
  v22 = v18 - v8;
  if (qword_1001544A0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for PPTTestCase.Name();
  sub_1000048C8(v9, qword_100160A78);
  sub_10006C410(v3, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_10006C474(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v18[0] = v3;
  v12 = sub_10003AE84(&qword_100155840, &qword_10010DA88);
  v13 = sub_100004880(&qword_100155848, &qword_100155840, &qword_10010DA88);
  View.onTest(_:handler:)();

  if (qword_1001544A8 != -1)
  {
    swift_once();
  }

  sub_1000048C8(v9, qword_100160A90);
  sub_10006C410(v18[0], v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_10006C474(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v10);
  v23 = v12;
  v24 = v13;
  swift_getOpaqueTypeConformance2();
  v15 = v20;
  v16 = v22;
  View.onTest(_:handler:)();

  return (*(v19 + 8))(v16, v15);
}

uint64_t sub_10006BC44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006BC8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CalculatorHistoryRecordDeletionMode(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10006BCF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10006BD38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10006BD7C()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100004078(v0, qword_1001609E8);
  sub_1000048C8(v0, qword_1001609E8);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_10006BDE0()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100004078(v0, qword_100160A00);
  sub_1000048C8(v0, qword_100160A00);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_10006BE44()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100004078(v0, qword_100160A18);
  sub_1000048C8(v0, qword_100160A18);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_10006BEA8()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100004078(v0, qword_100160A30);
  sub_1000048C8(v0, qword_100160A30);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_10006BF0C()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100004078(v0, qword_100160A48);
  sub_1000048C8(v0, qword_100160A48);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_10006BF70()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100004078(v0, qword_100160A60);
  sub_1000048C8(v0, qword_100160A60);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_10006BFD4()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100004078(v0, qword_100160A78);
  sub_1000048C8(v0, qword_100160A78);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_10006C038()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100004078(v0, qword_100160A90);
  sub_1000048C8(v0, qword_100160A90);
  return PPTTestCase.Name.init(_:)();
}

unint64_t sub_10006C0C0()
{
  v1 = *(type metadata accessor for PPTTestCase() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_100069494(v0 + v2, v3);
}

uint64_t type metadata accessor for CalculatorHistoryScrollPPTTests()
{
  result = qword_1001557E0;
  if (!qword_1001557E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006C2EC()
{
  sub_1000105F4(319, &qword_1001557F0, type metadata accessor for CalculatorLayout);
  if (v0 <= 0x3F)
  {
    sub_1000105F4(319, &qword_1001557F8, type metadata accessor for CalculatorHistoryViewModel);
    if (v1 <= 0x3F)
    {
      sub_1000105F4(319, &unk_100155800, type metadata accessor for CalculatorToolbarViewModel);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ScrollViewProxy();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10006C410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorHistoryScrollPPTTests();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculatorHistoryScrollPPTTests();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C4D8()
{
  v1 = (type metadata accessor for CalculatorHistoryScrollPPTTests() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *v3;

  v5 = *(v3 + 2);

  v6 = *(v3 + 4);

  v7 = v1[9];
  v8 = type metadata accessor for ScrollViewProxy();
  (*(*(v8 - 8) + 8))(&v3[v7], v8);

  return swift_deallocObject();
}

uint64_t sub_10006C640()
{
  v1 = *(type metadata accessor for PPTTestCase() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for ScrollViewProxy() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for CalculatorHistoryScrollPPTTests() - 8);
  v8 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_10006B1A4(v0 + v2, v0 + v5, v8);
}

void sub_10006C768()
{
  v1 = *(type metadata accessor for CalculatorHistoryScrollPPTTests() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PPTTestCase() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_10006B468();
}

uint64_t sub_10006C894()
{
  v0 = type metadata accessor for Calendar.Component();
  v43 = *(v0 - 8);
  v1 = *(v43 + 64);
  __chkstk_darwin(v0);
  v42 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Date();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v44);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v38 - v8;
  v10 = type metadata accessor for Calendar();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v15 = Calendar.isDateInToday(_:)();
  v16 = *(v11 + 8);
  v16(v14, v10);
  result = 0;
  if ((v15 & 1) == 0)
  {
    static Calendar.current.getter();
    v18 = Calendar.isDateInYesterday(_:)();
    v16(v14, v10);
    if (v18)
    {
      return 0;
    }

    else
    {
      v40 = v0;
      static Date.now.getter();
      static Calendar.current.getter();
      Calendar.startOfDay(for:)();
      v16(v14, v10);
      v21 = *(v3 + 8);
      v19 = v3 + 8;
      v20 = v21;
      v22 = v9;
      v23 = v44;
      v21(v7, v44);
      v41 = v22;
      Date.addingTimeInterval(_:)();
      v24 = Date.compare(_:)();
      v21(v7, v23);
      if (v24 == 1 || (Date.addingTimeInterval(_:)(), v25 = Date.compare(_:)(), v20(v7, v23), v25 == 1))
      {
        v20(v41, v23);
        return 0;
      }

      else
      {
        v38[1] = v19;
        v39 = v20;
        v26 = v42;
        v27 = v43;
        v28 = v40;
        (*(v43 + 104))(v42, enum case for Calendar.Component.year(_:), v40);
        static Calendar.current.getter();
        v29 = Calendar.isDate(_:equalTo:toGranularity:)();
        v16(v14, v10);
        (*(v27 + 8))(v26, v28);
        if (v29)
        {
          v30 = v44;
          if (qword_100154700 != -1)
          {
            swift_once();
          }

          v31 = qword_100160D70;
          static Calendar.current.getter();
          Calendar.startOfDay(for:)();
          v16(v14, v10);
          v32.super.isa = Date._bridgeToObjectiveC()().super.isa;
          v33 = v39;
          v39(v7, v30);
          v34 = [v31 stringFromDate:v32.super.isa];
        }

        else
        {
          v30 = v44;
          if (qword_100154708 != -1)
          {
            swift_once();
          }

          v35 = qword_100160D78;
          static Calendar.current.getter();
          Calendar.startOfDay(for:)();
          v16(v14, v10);
          v32.super.isa = Date._bridgeToObjectiveC()().super.isa;
          v33 = v39;
          v39(v7, v30);
          v34 = [v35 stringFromDate:v32.super.isa];
        }

        v36 = v34;

        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33(v41, v30);
        return v37;
      }
    }
  }

  return result;
}

uint64_t sub_10006CE14()
{
  v23 = type metadata accessor for Date();
  v22 = *(v23 - 8);
  v0 = *(v22 + 64);
  __chkstk_darwin(v23);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Calendar();
  v3 = *(v21 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v21);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DateComponents();
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v20);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_10003AE84(&qword_100155850, &unk_10010DA90);
  v11 = type metadata accessor for Calendar.Component();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10010BDE0;
  (*(v12 + 104))(v15 + v14, enum case for Calendar.Component.hour(_:), v11);
  sub_1000CF36C(v15);
  swift_setDeallocating();
  (*(v12 + 8))(v15 + v14, v11);
  swift_deallocClassInstance();
  static Date.now.getter();
  Calendar.dateComponents(_:from:to:)();

  (*(v22 + 8))(v2, v23);
  (*(v3 + 8))(v6, v21);
  v16 = DateComponents.hour.getter();
  LODWORD(v12) = v17;
  (*(v7 + 8))(v10, v20);
  return (v16 < 24) & ~v12;
}

uint64_t sub_10006D154()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10006CE14())
  {
    if (qword_100154718 != -1)
    {
      swift_once();
    }

    v5 = qword_100160D88;
    isa = Date._bridgeToObjectiveC()().super.isa;
    static Date.now.getter();
    v7.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v1 + 8))(v4, v0);
    v8 = [v5 localizedStringForDate:isa relativeToDate:v7.super.isa];
  }

  else
  {
    if (qword_100154710 != -1)
    {
      swift_once();
    }

    v9 = qword_100160D80;
    v7.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v8 = [v9 stringFromDate:v7.super.isa];
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v10;
}

uint64_t sub_10006D31C(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v46 = &v46 - v4;
  v5 = type metadata accessor for URL();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10003AE84(&qword_100155078, &qword_10010DBA0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v46 - v15;
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  v20 = *(a1 + 24);
  v19 = *(a1 + 32);
  v47 = a1;
  v21 = *(a1 + 40);
  v55 = v20;
  v52 = v20;
  v53 = v19;
  v48 = v21;
  v54 = v21;
  sub_100015064(&v55, v51);

  sub_100015064(&v55, v51);

  sub_100015064(&v55, v51);

  sub_10003AE84(&qword_100155858, &qword_10010DAA0);
  Binding.wrappedValue.getter();
  if (v51[0] == 1)
  {
    if (qword_100154390 != -1)
    {
      swift_once();
    }

    v22 = qword_1001608A8;
  }

  else
  {
    if (qword_100154398 != -1)
    {
      swift_once();
    }

    v22 = qword_1001608C0;
  }

  v23 = sub_1000048C8(v9, v22);
  sub_100008E68(v23, v18, &qword_100155078, &qword_10010DBA0);
  sub_100008E68(v18, v16, &qword_100155078, &qword_10010DBA0);
  v25 = v49;
  v24 = v50;
  if ((*(v49 + 48))(v16, 1, v50) == 1)
  {
    sub_100031158(&v55);

    sub_100031158(&v55);

    sub_1000035CC(v16, &qword_100155078, &qword_10010DBA0);
    v52 = v20;
    v53 = v19;
    v54 = v48;
    v51[0] = 0;
    Binding.wrappedValue.setter();
    v26 = v18;
LABEL_10:
    sub_1000035CC(v26, &qword_100155078, &qword_10010DBA0);
    sub_100031158(&v55);
  }

  v28 = v8;
  (*(v25 + 32))(v8, v16, v24);
  if (qword_1001546C8 != -1)
  {
    swift_once();
  }

  v29 = qword_100160D28;
  swift_getKeyPath();
  v52 = v29;
  sub_10006DE24();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = v48;
  if (*(v29 + 16) == 1)
  {
    sub_100031158(&v55);

    v31 = v18;
    v32 = v49;
LABEL_16:
    sub_100031158(&v55);

    v52 = v20;
    v53 = v19;
    v54 = v30;
    v51[0] = 0;
    Binding.wrappedValue.setter();
    sub_100031158(&v55);

    v34 = v28;
    v35 = v28;
    v36 = v50;
    (*(v32 + 16))(v13, v34, v50);
    (*(v32 + 56))(v13, 0, 1, v36);
    sub_100080E84(v13);
    sub_1000035CC(v13, &qword_100155078, &qword_10010DBA0);
    (*(v32 + 8))(v35, v36);
    v37 = v31;
    return sub_1000035CC(v37, &qword_100155078, &qword_10010DBA0);
  }

  v52 = v20;
  v53 = v19;
  v54 = v48;
  Binding.wrappedValue.getter();
  v33 = v51[0];
  sub_100031158(&v55);

  v31 = v18;
  v32 = v49;
  if (v33 == 2)
  {
    goto LABEL_16;
  }

  v52 = v20;
  v53 = v19;
  v54 = v30;
  Binding.wrappedValue.getter();
  v38 = v51[0];
  sub_100031158(&v55);

  if (v38 != 1)
  {
    v52 = v20;
    v53 = v19;
    v54 = v30;
    v51[0] = 0;
    Binding.wrappedValue.setter();
    (*(v32 + 8))(v28, v50);
    v26 = v31;
    goto LABEL_10;
  }

  v52 = v20;
  v53 = v19;
  v54 = v30;
  v51[0] = 3;
  Binding.wrappedValue.setter();
  sub_100031158(&v55);

  v39 = type metadata accessor for TaskPriority();
  v40 = v46;
  (*(*(v39 - 8) + 56))(v46, 1, 1, v39);
  v41 = v47;
  v42 = v47[1];
  v52 = *v47;
  type metadata accessor for MainActor();
  sub_100015064(&v55, v51);

  sub_100015064(&v52, v51);

  v43 = static MainActor.shared.getter();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = &protocol witness table for MainActor;
  v45 = v41[1];
  *(v44 + 32) = *v41;
  *(v44 + 48) = v45;
  *(v44 + 57) = *(v41 + 25);
  sub_100050560(0, 0, v40, &unk_10010DBD8, v44);

  (*(v32 + 8))(v28, v50);
  v37 = v31;
  return sub_1000035CC(v37, &qword_100155078, &qword_10010DBA0);
}

uint64_t sub_10006DA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006DAEC, v6, v5);
}

uint64_t sub_10006DAEC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  v3 = *(v2 + 24);
  *(v0 + 32) = *(v2 + 40);
  *(v0 + 16) = v3;
  sub_10003AE84(&qword_100155858, &qword_10010DAA0);
  Binding.wrappedValue.getter();
  if (*(v0 + 33))
  {
    v4 = *(v0 + 40);
    v5 = *(v4 + 16);
    *(v0 + 16) = *v4;
    *(v0 + 32) = v5;
    *(v0 + 33) = 1;
    sub_10003AE84(&qword_100155868, &qword_10010DB60);
    Binding.wrappedValue.setter();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10006DBC4@<X0>(uint64_t a1@<X8>)
{

  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10006DC5C@<X0>(BOOL *a1@<X8>)
{
  sub_10003AE84(&qword_100155858, &qword_10010DAA0);
  result = Binding.wrappedValue.getter();
  *a1 = v3 != 0;
  return result;
}

_BYTE *sub_10006DCBC(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    sub_10003AE84(&qword_100155858, &qword_10010DAA0);
    return Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10006DD1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_10006DD64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006DDB0()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  sub_10003AE84(&qword_100155858, &qword_10010DAA0);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10006DE14@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_10006DBC4(a1);
}

unint64_t sub_10006DE24()
{
  result = qword_100154F80;
  if (!qword_100154F80)
  {
    type metadata accessor for CalculatorNetworkManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154F80);
  }

  return result;
}

uint64_t sub_10006DE7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100030CEC;

  return sub_10006DA54(a1, v4, v5, v1 + 32);
}

void sub_10006DF54()
{
  sub_100002B70();
  if (v0 <= 0x3F)
  {
    sub_100010648(319, &qword_1001557F0, type metadata accessor for CalculatorLayout);
    if (v1 <= 0x3F)
    {
      sub_100010648(319, &unk_100155800, type metadata accessor for CalculatorToolbarViewModel);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10006E028@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = type metadata accessor for CalculatorSizeClass(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (!v15)
  {
    goto LABEL_3;
  }

  sub_10000D594(v9);
  v16 = v1 + *(type metadata accessor for SidebarButton() + 20);
  sub_10000D594(v7);
  v17 = type metadata accessor for UserInterfaceSizeClass();
  v18 = *(*(v17 - 8) + 56);
  v18(v13, 1, 1, v17);
  v19 = *(v10 + 20);
  v18(&v13[v19], 1, 1, v17);
  sub_10006E758(v9, v13);
  sub_10006E758(v7, &v13[v19]);
  LOBYTE(v17) = sub_10003D448(v13);
  sub_10006E7C8(v13);
  if ((v17 & 1) == 0)
  {
    if (qword_100154438 != -1)
    {
      swift_once();
    }

    v20 = &qword_100160970;
  }

  else
  {
LABEL_3:
    if (qword_100154440 != -1)
    {
      swift_once();
    }

    v20 = &qword_100160978;
  }

  v21 = *v20;

  *a1 = result;
  return result;
}

uint64_t sub_10006E290(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000048C8(v7, qword_100160D38);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Sidebar toggled from the button", v10, 2u);
  }

  v11 = a1 + *(type metadata accessor for SidebarButton() + 28);
  v12 = *v11;
  v13 = *(v11 + 8);

  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v12 = v21;
  }

  swift_getKeyPath();
  v21 = v12;
  sub_100011630(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v12 + 16);
  v16 = v15 ^ 1;
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v17 = qword_100160D98;
  sub_10000362C();
  if ((v15 & 1) != 0 || (swift_getKeyPath(), v21 = v17, sub_100011630(&qword_100154C00, type metadata accessor for AppSettings), ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v17 + 72) != 1))
  {
    sub_100091C5C(v16);
  }

  else
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v12;
    *(v18 + 24) = v16;

    sub_1000F7484(sub_10006C1F4, v18);
  }
}

uint64_t sub_10006E630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006E694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006E6F8()
{
  v1 = *(type metadata accessor for SidebarButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10006E290(v2);
}

uint64_t sub_10006E758(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006E7C8(uint64_t a1)
{
  v2 = type metadata accessor for CalculatorSizeClass(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006E824(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 8);
  v18 = *a2;
  v9 = v19;

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v18, &qword_100154810, &qword_10010DF90);
    (*(v5 + 8))(v8, v4);
  }

  v17 = *(a2 + 56);
  v16 = a2[6];
  v11 = v17;

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v16, &qword_100155B10, &unk_10010DF98);
    (*(v5 + 8))(v8, v4);
  }

  v13 = sub_100074054();

  sub_10005D098(a1, v13);
}

uint64_t sub_10006EA70(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[2] = a5;
  v20[3] = a6;
  v20[1] = a4;
  v9 = type metadata accessor for PPTTestCase();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = type metadata accessor for AnimationCompletionCriteria();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AnimationCompletionCriteria.logicallyComplete.getter();
  v20[6] = a2;
  v21 = a3;
  (*(v10 + 16))(v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v17, v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_10006EC6C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PPTTestCase();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + 8);
  v21 = *a2;
  v14 = v22;

  if ((v14 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v21, &qword_100154810, &qword_10010DF90);
    (*(v10 + 8))(v13, v9);
  }

  sub_1000560A8(0);

  (*(v5 + 16))(v8, a1, v4);
  v16 = type metadata accessor for AppRotationPPT();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_10006F034(v8);
  sub_10006F4AC();
}

uint64_t sub_10006EEB0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 8);
  v13 = *a1;
  v9 = v14;

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v13, &qword_100154810, &qword_10010DF90);
    (*(v5 + 8))(v8, v4);
  }

  sub_1000560A8(a2);
}

uint64_t sub_10006F034(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10Calculator14AppRotationPPT_testCase;
  v5 = type metadata accessor for PPTTestCase();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2 + v4, a1, v5);
  v7 = PPTTestCase.parameters.getter();
  AnyHashable.init<A>(_:)();
  if (*(v7 + 16) && (v8 = sub_100075284(v22), (v9 & 1) != 0))
  {
    sub_100007314(*(v7 + 56) + 32 * v8, v23);
    sub_10006C154(v22);

    if (swift_dynamicCast())
    {
      v10 = 0x6F69746172657469;
      v11 = 0xEA0000000000736ELL;
      goto LABEL_7;
    }
  }

  else
  {

    sub_10006C154(v22);
  }

  v11 = 0xE100000000000000;
  v10 = 48;
LABEL_7:
  v12 = HIBYTE(v11) & 0xF;
  if (!v12)
  {
    (*(v6 + 8))(a1, v5);

LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  v22[0] = v10;
  v22[1] = v11 & 0xFFFFFFFFFFFFFFLL;
  if (v10 == 43)
  {
    if (--v12)
    {
      v13 = 0;
      v14 = v22 + 1;
      while (1)
      {
        v15 = *v14 - 48;
        if (v15 > 9)
        {
          break;
        }

        v16 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v16 + v15;
        if (__OFADD__(v16, v15))
        {
          break;
        }

        ++v14;
        if (!--v12)
        {
          goto LABEL_23;
        }
      }
    }
  }

  else
  {
    v13 = 0;
    v17 = v22;
    while (1)
    {
      v18 = *v17 - 48;
      if (v18 > 9)
      {
        break;
      }

      v19 = 10 * v13;
      if ((v13 * 10) >> 64 != (10 * v13) >> 63)
      {
        break;
      }

      v13 = v19 + v18;
      if (__OFADD__(v19, v18))
      {
        break;
      }

      ++v17;
      if (!--v12)
      {
        goto LABEL_23;
      }
    }
  }

  v13 = 0;
  LOBYTE(v12) = 1;
LABEL_23:
  v23[0] = v12;
  v20 = v12;
  (*(v6 + 8))(a1, v5);

  if (v20)
  {
    goto LABEL_24;
  }

LABEL_25:
  *(v2 + OBJC_IVAR____TtC10Calculator14AppRotationPPT_iterations) = v13;
  return v2;
}

id sub_10006F4AC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000048C8(v6, qword_100160D38);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v0 + OBJC_IVAR____TtC10Calculator14AppRotationPPT_iterations);

    _os_log_impl(&_mh_execute_header, v7, v8, "Running Rotation Test with %ld iterations", v9, 0xCu);
  }

  else
  {
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Setting Orientation to Portrait", v12, 2u);
  }

  v13 = [objc_opt_self() sharedApplication];
  [v13 rotateIfNeeded:1];

  v14 = [objc_opt_self() mainRunLoop];
  Date.init(timeIntervalSinceNow:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v5, v1);
  [v14 runUntilDate:isa];

  PPTTestCase.startTest()();
  return sub_10006FB28();
}

uint64_t sub_10006F778()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v1 - 8);
  v2 = *(v25 + 64);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v23 = *(v5 - 8);
  v24 = v5;
  v6 = *(v23 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v22 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  sub_10000A84C();
  v20 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v21 = *(v10 + 8);
  v21(v14, v9);
  aBlock[4] = sub_10006FF40;
  v27 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100067348;
  aBlock[3] = &unk_10014AC50;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000F258(&qword_1001556C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003AE84(&qword_1001556C8, &qword_10010DCF0);
  sub_100004880(&qword_1001556D0, &qword_1001556C8, &qword_10010DCF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v20;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v17);

  (*(v25 + 8))(v4, v1);
  (*(v23 + 8))(v8, v24);
  return (v21)(v16, v22);
}

id sub_10006FB28()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10Calculator14AppRotationPPT_iterations;
  if (*(v0 + OBJC_IVAR____TtC10Calculator14AppRotationPPT_iterations))
  {
    result = [objc_opt_self() _applicationKeyWindow];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = [result interfaceOrientation];

    if (v5 == 3)
    {
      v6 = *(v1 + v2);
      v7 = __OFSUB__(v6, 1);
      v8 = v6 - 1;
      if (!v7)
      {
        *(v1 + v2) = v8;
        if (qword_1001546E8 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_1000048C8(v9, qword_100160D38);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "Setting Orientation to portrait", v12, 2u);
        }

        v13 = [objc_opt_self() sharedApplication];
        [v13 rotateIfNeeded:1];
LABEL_15:

        goto LABEL_16;
      }

      __break(1u);
    }

    else if (qword_1001546E8 == -1)
    {
LABEL_12:
      v14 = type metadata accessor for Logger();
      sub_1000048C8(v14, qword_100160D38);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Setting Orientation to landscapeRight", v17, 2u);
      }

      v13 = [objc_opt_self() sharedApplication];
      [v13 rotateIfNeeded:3];
      goto LABEL_15;
    }

    swift_once();
    goto LABEL_12;
  }

  PPTTestCase.finishTest()();
LABEL_16:

  return sub_10006F778();
}

uint64_t sub_10006FDB4()
{
  v1 = OBJC_IVAR____TtC10Calculator14AppRotationPPT_testCase;
  v2 = type metadata accessor for PPTTestCase();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppRotationPPT()
{
  result = qword_1001559A0;
  if (!qword_1001559A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006FEA4()
{
  result = type metadata accessor for PPTTestCase();
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

unsigned __int8 *sub_10006FF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000704D8();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000704D8()
{
  v0 = String.subscript.getter();
  v4 = sub_100070558(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100070558(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100007034(v9, 0);
  v12 = sub_1000706B0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000706B0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000708D0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000708D0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000708D0(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10007094C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000709A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_100070B38()
{
  v1 = type metadata accessor for PPTTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100070BC0()
{
  v1 = *(type metadata accessor for PPTTestCase() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return PPTTestCase.performResizeTest(onComplete:)();
}

unint64_t sub_100070C24()
{
  result = qword_100155B40;
  if (!qword_100155B40)
  {
    sub_10003AECC(&qword_100155B48, &qword_10010E008);
    sub_10000E6A4();
    sub_10000E6F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155B40);
  }

  return result;
}

unint64_t sub_100070CB0()
{
  result = qword_100155B60;
  if (!qword_100155B60)
  {
    sub_10003AECC(&qword_100155B30, &qword_10010E000);
    sub_10000E74C();
    sub_10000E7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155B60);
  }

  return result;
}

unint64_t sub_100070D3C()
{
  result = qword_100155B88;
  if (!qword_100155B88)
  {
    sub_10003AECC(&qword_100155B08, &qword_10010DF88);
    sub_10000B168();
    sub_10000B580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155B88);
  }

  return result;
}

uint64_t sub_100070DE4()
{
  v1 = OBJC_IVAR____TtC10Calculator22AnalyticsTimeStampInfo_appStartTime;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10Calculator22AnalyticsTimeStampInfo_lastEventUpdatedTime, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100070EB8()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);

  Date.init()();
  v8 = OBJC_IVAR____TtC10Calculator22AnalyticsTimeStampInfo_lastEventUpdatedTime;
  swift_beginAccess();
  (*(v3 + 40))(v7 + v8, v6, v2);
  swift_endAccess();

  if (qword_1001546F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000048C8(v9, qword_100160D50);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    v14 = *(v1 + 16);
    v15 = OBJC_IVAR____TtC10Calculator22AnalyticsTimeStampInfo_lastEventUpdatedTime;
    swift_beginAccess();
    (*(v3 + 16))(v6, v14 + v15, v2);
    sub_1000711DC();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v3 + 8))(v6, v2);
    v19 = sub_100006E5C(v16, v18, &v20);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "updated last event updated time to: %s", v12, 0xCu);
    sub_100003F80(v13);
  }
}

uint64_t sub_100071160(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
}

uint64_t sub_1000711A4()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1000711DC()
{
  result = qword_100155D10;
  if (!qword_100155D10)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155D10);
  }

  return result;
}

BOOL sub_100071234()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (v1)
  {
    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v2 + 16) && (v3 = sub_10007519C(0x656C646E75424643, 0xEF6E6F6973726556), (v4 & 1) != 0))
    {
      sub_100007314(*(v2 + 56) + 32 * v3, v11);

      if (swift_dynamicCast())
      {
        v5 = v10;
        v6 = *v9 & 0xFFFFFFFFFFFFLL;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v6 = 0;
  v5 = 0xE000000000000000;
LABEL_8:

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6;
  }

  return v7 == 0;
}

uint64_t sub_1000714B4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100004900();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_100071524@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100004900();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isSquareRootOnBasicCalculatorForced);
  return result;
}

uint64_t sub_100071618(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100004900();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

id sub_1000716EC()
{
  ObjectType = swift_getObjectType();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v3 = result;
    [result unregisterObserver:v0];

    v4.receiver = v0;
    v4.super_class = ObjectType;
    return objc_msgSendSuper2(&v4, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10007197C(void *a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  v3 = [a1 isCalculatorModeScientificAllowed];
  swift_getKeyPath();
  sub_100004900();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 ^ *(v1 + OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorModeScientificAllowed);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v6 = [a1 isCalculatorModeProgrammerAllowed];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v6 != *(v1 + OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorModeProgrammerAllowed))
  {
    v7 = swift_getKeyPath();
    __chkstk_darwin(v7);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v4 = 1;
  }

  v8 = [a1 isCalculatorInputModeUnitConversionAllowed];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v8 != *(v1 + OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorInputModeUnitConversionAllowed))
  {
    v9 = swift_getKeyPath();
    __chkstk_darwin(v9);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v4 = 1;
  }

  v10 = [a1 isCalculatorModeMathPaperAllowed];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v10 != *(v1 + OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorModeMathPaperAllowed))
  {
    v11 = swift_getKeyPath();
    __chkstk_darwin(v11);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v4 = 1;
  }

  v12 = [a1 isSquareRootOnBasicCalculatorForced];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v12 == *(v1 + OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isSquareRootOnBasicCalculatorForced))
  {
    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v13 = swift_getKeyPath();
    __chkstk_darwin(v13);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v14 = [objc_opt_self() defaultCenter];
  if (qword_1001544B8 != -1)
  {
    swift_once();
  }

  [v14 postNotificationName:qword_100160AE0 object:0];
}

_OWORD *sub_100071F2C(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_100008F60(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_100076A54(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_1000035CC(a1, &qword_1001551B8, &qword_10010E3E0);
    v8 = *v2;
    v9 = sub_100075218(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_100075F7C();
        v14 = v16;
      }

      sub_100008F60((*(v14 + 56) + 32 * v11), v17);
      sub_100076560(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_1000035CC(v17, &qword_1001551B8, &qword_10010E3E0);
  }

  return result;
}

uint64_t sub_100072030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  if (a1)
  {
    v12 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v5;
    sub_1000768B8(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v5 = v22;
  }

  else
  {
    v15 = *v5;
    v16 = sub_10007519C(a2, a3);
    LOBYTE(v15) = v17;

    if (v15)
    {
      v18 = *v8;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v8;
      v23 = *v8;
      if (!v19)
      {
        sub_100076278(a4, a5);
        v20 = v23;
      }

      v21 = *(*(v20 + 48) + 16 * v16 + 8);

      result = sub_1000766F4(v16, v20);
      *v8 = v20;
    }
  }

  return result;
}

id sub_100072148()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 32);
  v3 = CalculateUnitCategory.id.getter();
  v5 = v4;

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v6 = *(v1 + 40);
  if (*(v6 + 16) && (v7 = *(v1 + 40), , v8 = sub_10007519C(v3, v5), v10 = v9, , (v10 & 1) != 0))
  {
    v11 = *(*(v6 + 56) + 8 * v8);

    return v11;
  }

  else
  {

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = [*(v1 + 32) preferredFromUnit];

    return v13;
  }
}

id sub_100072328()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 32);
  v3 = CalculateUnitCategory.id.getter();
  v5 = v4;

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v6 = *(v1 + 48);
  if (*(v6 + 16) && (v7 = *(v1 + 48), , v8 = sub_10007519C(v3, v5), v10 = v9, , (v10 & 1) != 0))
  {
    v11 = *(*(v6 + 56) + 8 * v8);

    return v11;
  }

  else
  {

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = [*(v1 + 32) preferredToUnit];

    return v13;
  }
}

uint64_t sub_100072508()
{
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ([*(v0 + 32) unitType] == 16)
  {
    v1 = *(v0 + 24);
    swift_getKeyPath();
    sub_100077594(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *(v1 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__isCurrencyCacheLoaded) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id sub_100072648()
{
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);

  return v1;
}

void sub_1000726F8(void *a1)
{
  v2 = v1;
  v4 = sub_100072148();
  v5 = CalculateUnit.id.getter();
  v7 = v6;

  if (v5 == CalculateUnit.id.getter() && v7 == v8)
  {

    return;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    return;
  }

  v10 = [a1 category];
  if (!v10)
  {
    return;
  }

  v113 = v10;
  sub_100074DF8(v10);
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v2 + 32);
  v12 = CalculateUnitCategory.id.getter();
  v14 = v13;

  swift_getKeyPath();
  v15 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v16 = *(v2 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v115 = *(v2 + 40);
  *(v2 + 40) = 0x8000000000000000;
  sub_1000768B8(v15, v12, v14, isUniquelyReferenced_nonNull_native, &qword_100156000, &qword_10010E390);

  *(v2 + 40) = v115;
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v2 + 32);
  v19 = CalculateUnitCategory.id.getter();
  v21 = v20;

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (!*(*(v2 + 48) + 16))
  {
    goto LABEL_17;
  }

  v22 = *(v2 + 48);

  sub_10007519C(v19, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v2 + 32);
  v26 = CalculateUnitCategory.id.getter();
  v28 = v27;

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(*(v2 + 48) + 16))
  {
    v29 = *(v2 + 48);

    sub_10007519C(v26, v28);
    v31 = v30;

    if (v31)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v32 = *(v2 + 32);
      v33 = CalculateUnitCategory.id.getter();
      v35 = v34;

      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v36 = *(v2 + 48);
      if (*(v36 + 16))
      {
        v37 = *(v2 + 48);

        v38 = sub_10007519C(v33, v35);
        v40 = v39;

        if (v40)
        {
          v41 = *(*(v36 + 56) + 8 * v38);

          v42 = CalculateUnit.id.getter();
          v44 = v43;

          if (v42 == CalculateUnit.id.getter() && v44 == v45)
          {

LABEL_17:

            goto LABEL_18;
          }

          v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v111 & 1) == 0)
          {
            goto LABEL_42;
          }

LABEL_18:
          v46 = CalculateUnit.id.getter();
          v48 = v47;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v49 = *(v2 + 32);
          v50 = CalculateUnitCategory.id.getter();
          v52 = v51;

          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v53 = *(v2 + 48);
          if (*(v53 + 16) && (v54 = *(v2 + 48), , v55 = sub_10007519C(v50, v52), v57 = v56, , (v57 & 1) != 0))
          {
            v58 = *(*(v53 + 56) + 8 * v55);

            v59 = CalculateUnit.id.getter();
            v61 = v60;

            if (v46 == v59 && v48 == v61)
            {

              v62 = v113;
              goto LABEL_34;
            }

            v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v62 = v113;
            if (v84)
            {
LABEL_34:
              swift_getKeyPath();
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v85 = *(v2 + 32);
              v112 = CalculateUnitCategory.id.getter();
              v87 = v86;

              v88 = CalculateUnit.id.getter();
              v90 = v89;
              v91 = [v62 preferredToUnit];
              v92 = CalculateUnit.id.getter();
              v94 = v93;

              if (v88 == v92 && v90 == v94)
              {

                v95 = &selRef_preferredFromUnit;
              }

              else
              {
                v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v95 = &selRef_preferredToUnit;
                if (v96)
                {
                  v95 = &selRef_preferredFromUnit;
                }
              }

              v97 = [v113 *v95];
              swift_getKeyPath();
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              swift_getKeyPath();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();

              swift_beginAccess();
              v98 = *(v2 + 48);
              v99 = swift_isUniquelyReferenced_nonNull_native();
              v114 = *(v2 + 48);
              *(v2 + 48) = 0x8000000000000000;
              sub_1000768B8(v97, v112, v87, v99, &qword_100156000, &qword_10010E390);

              *(v2 + 48) = v114;
              goto LABEL_41;
            }
          }

          else
          {

            v62 = v113;
          }

          v63 = CalculateUnit.id.getter();
          v65 = v64;
          v66 = [v62 preferredToUnit];
          v67 = CalculateUnit.id.getter();
          v69 = v68;

          if (v63 == v67 && v65 == v69)
          {
          }

          else
          {
            v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v70 & 1) == 0)
            {
              v77 = CalculateUnit.id.getter();
              v79 = v78;
              v80 = [v113 preferredFromUnit];
              v81 = CalculateUnit.id.getter();
              v83 = v82;

              if (v77 == v81 && v79 == v83)
              {
              }

              else
              {
                v108 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v108 & 1) == 0)
                {
                  goto LABEL_42;
                }
              }

              swift_getKeyPath();
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v109 = *(v2 + 32);
              v72 = CalculateUnitCategory.id.getter();
              v74 = v110;

              v75 = [v113 preferredToUnit];
              goto LABEL_29;
            }
          }

          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v71 = *(v2 + 32);
          v72 = CalculateUnitCategory.id.getter();
          v74 = v73;

          v75 = [v113 preferredFromUnit];
LABEL_29:
          v76 = v75;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          ObservationRegistrar.willSet<A, B>(_:keyPath:)();

          swift_beginAccess();
          sub_100072030(v76, v72, v74, &qword_100156000, &qword_10010E390);
LABEL_41:
          swift_endAccess();
          swift_getKeyPath();
          ObservationRegistrar.didSet<A, B>(_:keyPath:)();

          goto LABEL_42;
        }

        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  else
  {
  }

LABEL_42:
  v100 = *(v2 + 16);
  v15;
  sub_1000AA29C(v15);
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v101 = qword_100160D68;
  CalculateUnit.id.getter();
  v102 = String._bridgeToObjectiveC()();

  v103 = String._bridgeToObjectiveC()();
  [v101 setObject:v102 forKey:v103];

  v104 = sub_100072328();
  v105 = v104;
  sub_1000AA58C(v104);
  CalculateUnit.id.getter();
  v106 = String._bridgeToObjectiveC()();

  v107 = String._bridgeToObjectiveC()();
  [v101 setObject:v106 forKey:v107];
}

void sub_1000733A8(void *a1)
{
  v2 = v1;
  v4 = sub_100072328();
  v5 = CalculateUnit.id.getter();
  v7 = v6;

  if (v5 == CalculateUnit.id.getter() && v7 == v8)
  {

    return;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    return;
  }

  v10 = [a1 category];
  if (!v10)
  {
    return;
  }

  v113 = v10;
  sub_100074DF8(v10);
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v2 + 32);
  v12 = CalculateUnitCategory.id.getter();
  v14 = v13;

  swift_getKeyPath();
  v15 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v16 = *(v2 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v115 = *(v2 + 48);
  *(v2 + 48) = 0x8000000000000000;
  sub_1000768B8(v15, v12, v14, isUniquelyReferenced_nonNull_native, &qword_100156000, &qword_10010E390);

  *(v2 + 48) = v115;
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v2 + 32);
  v19 = CalculateUnitCategory.id.getter();
  v21 = v20;

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (!*(*(v2 + 40) + 16))
  {
    goto LABEL_17;
  }

  v22 = *(v2 + 40);

  sub_10007519C(v19, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v2 + 32);
  v26 = CalculateUnitCategory.id.getter();
  v28 = v27;

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(*(v2 + 40) + 16))
  {
    v29 = *(v2 + 40);

    sub_10007519C(v26, v28);
    v31 = v30;

    if (v31)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v32 = *(v2 + 32);
      v33 = CalculateUnitCategory.id.getter();
      v35 = v34;

      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v36 = *(v2 + 40);
      if (*(v36 + 16))
      {
        v37 = *(v2 + 40);

        v38 = sub_10007519C(v33, v35);
        v40 = v39;

        if (v40)
        {
          v41 = *(*(v36 + 56) + 8 * v38);

          v42 = CalculateUnit.id.getter();
          v44 = v43;

          if (v42 == CalculateUnit.id.getter() && v44 == v45)
          {

LABEL_17:

            goto LABEL_18;
          }

          v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v111 & 1) == 0)
          {
            goto LABEL_42;
          }

LABEL_18:
          v46 = CalculateUnit.id.getter();
          v48 = v47;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v49 = *(v2 + 32);
          v50 = CalculateUnitCategory.id.getter();
          v52 = v51;

          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v53 = *(v2 + 40);
          if (*(v53 + 16) && (v54 = *(v2 + 40), , v55 = sub_10007519C(v50, v52), v57 = v56, , (v57 & 1) != 0))
          {
            v58 = *(*(v53 + 56) + 8 * v55);

            v59 = CalculateUnit.id.getter();
            v61 = v60;

            if (v46 == v59 && v48 == v61)
            {

              v62 = v113;
              goto LABEL_34;
            }

            v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v62 = v113;
            if (v84)
            {
LABEL_34:
              swift_getKeyPath();
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v85 = *(v2 + 32);
              v112 = CalculateUnitCategory.id.getter();
              v87 = v86;

              v88 = CalculateUnit.id.getter();
              v90 = v89;
              v91 = [v62 preferredFromUnit];
              v92 = CalculateUnit.id.getter();
              v94 = v93;

              if (v88 == v92 && v90 == v94)
              {

                v95 = &selRef_preferredToUnit;
              }

              else
              {
                v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v95 = &selRef_preferredFromUnit;
                if (v96)
                {
                  v95 = &selRef_preferredToUnit;
                }
              }

              v97 = [v113 *v95];
              swift_getKeyPath();
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              swift_getKeyPath();
              ObservationRegistrar.willSet<A, B>(_:keyPath:)();

              swift_beginAccess();
              v98 = *(v2 + 40);
              v99 = swift_isUniquelyReferenced_nonNull_native();
              v114 = *(v2 + 40);
              *(v2 + 40) = 0x8000000000000000;
              sub_1000768B8(v97, v112, v87, v99, &qword_100156000, &qword_10010E390);

              *(v2 + 40) = v114;
              goto LABEL_41;
            }
          }

          else
          {

            v62 = v113;
          }

          v63 = CalculateUnit.id.getter();
          v65 = v64;
          v66 = [v62 preferredFromUnit];
          v67 = CalculateUnit.id.getter();
          v69 = v68;

          if (v63 == v67 && v65 == v69)
          {
          }

          else
          {
            v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v70 & 1) == 0)
            {
              v77 = CalculateUnit.id.getter();
              v79 = v78;
              v80 = [v113 preferredFromUnit];
              v81 = CalculateUnit.id.getter();
              v83 = v82;

              if (v77 == v81 && v79 == v83)
              {
              }

              else
              {
                v108 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v108 & 1) == 0)
                {
                  goto LABEL_42;
                }
              }

              swift_getKeyPath();
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v109 = *(v2 + 32);
              v72 = CalculateUnitCategory.id.getter();
              v74 = v110;

              v75 = [v113 preferredFromUnit];
              goto LABEL_29;
            }
          }

          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v71 = *(v2 + 32);
          v72 = CalculateUnitCategory.id.getter();
          v74 = v73;

          v75 = [v113 preferredToUnit];
LABEL_29:
          v76 = v75;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          ObservationRegistrar.willSet<A, B>(_:keyPath:)();

          swift_beginAccess();
          sub_100072030(v76, v72, v74, &qword_100156000, &qword_10010E390);
LABEL_41:
          swift_endAccess();
          swift_getKeyPath();
          ObservationRegistrar.didSet<A, B>(_:keyPath:)();

          goto LABEL_42;
        }

        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  else
  {
  }

LABEL_42:
  v100 = *(v2 + 16);
  v15;
  sub_1000AA58C(v15);
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v101 = qword_100160D68;
  CalculateUnit.id.getter();
  v102 = String._bridgeToObjectiveC()();

  v103 = String._bridgeToObjectiveC()();
  [v101 setObject:v102 forKey:v103];

  v104 = sub_100072148();
  v105 = v104;
  sub_1000AA29C(v104);
  CalculateUnit.id.getter();
  v106 = String._bridgeToObjectiveC()();

  v107 = String._bridgeToObjectiveC()();
  [v101 setObject:v106 forKey:v107];
}

uint64_t sub_100074054()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for CalculatorUnitConversionViewModel(0);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    v1 = swift_allocObject();
    sub_100074930();
    v6 = *(v2 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_1000740C8()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC10Calculator40CalculatorUnitConversionViewModelWrapper___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100074174(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 32);
    *(v2 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000742E0()
{
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t sub_100074398@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_100074458(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);

  sub_100076D90(v4, a1);
  v6 = v5;

  if (v6)
  {
    v7 = *(v1 + 40);
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000745A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 40);
  *(a1 + 40) = a2;
}

uint64_t sub_100074608()
{
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_1000746C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_100074780(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);

  sub_100076D90(v4, a1);
  v6 = v5;

  if (v6)
  {
    v7 = *(v1 + 48);
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000748C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(a1 + 48) = a2;
}

uint64_t sub_100074930()
{
  v1 = v0;
  v2 = sub_10003AE84(&qword_100154F60, &qword_10010C620);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v25 = &v25 - v4;
  if (qword_1001546A0 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = qword_100160D00;
  v5 = qword_100154378;

  if (v5 != -1)
  {
    swift_once();
  }

  *(v1 + 24) = qword_100160888;

  *(v1 + 40) = sub_100077118(&_swiftEmptyArrayStorage, &qword_100156000, &qword_10010E390);
  *(v1 + 48) = sub_100077118(&_swiftEmptyArrayStorage, &qword_100156000, &qword_10010E390);
  ObservationRegistrar.init()();
  v6 = *(v1 + 16);
  *(v1 + 32) = sub_1000A8918();
  swift_getKeyPath();
  v28 = v1;
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v1 + 32);
  v26 = CalculateUnitCategory.id.getter();
  v9 = v8;

  v10 = *(v1 + 16);
  v11 = sub_1000A8DB8();
  swift_getKeyPath();
  v28 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v12 = *(v1 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v1 + 40);
  *(v1 + 40) = 0x8000000000000000;
  sub_1000768B8(v11, v26, v9, isUniquelyReferenced_nonNull_native, &qword_100156000, &qword_10010E390);

  *(v1 + 40) = v27;
  swift_endAccess();
  v28 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v28 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v1 + 32);
  v15 = CalculateUnitCategory.id.getter();
  v17 = v16;

  v18 = *(v1 + 16);
  v19 = sub_1000A9128();
  swift_getKeyPath();
  v28 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v20 = *(v1 + 48);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v1 + 48);
  *(v1 + 48) = 0x8000000000000000;
  sub_1000768B8(v19, v15, v17, v21, &qword_100156000, &qword_10010E390);

  *(v1 + 48) = v27;
  swift_endAccess();
  v28 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v28 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ([*(v1 + 32) unitType] == 16)
  {
    v22 = *(v1 + 24);
    v23 = v25;
    sub_100050A28(v25);
    sub_1000035CC(v23, &qword_100154F60, &qword_10010C620);
  }

  return v1;
}

id sub_100074DF8(void *a1)
{
  v2 = v1;
  v4 = sub_10003AE84(&qword_100154F60, &qword_10010C620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  swift_getKeyPath();
  v22 = v1;
  sub_100077594(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v1 + 32);
  v9 = CalculateUnitCategory.id.getter();
  v11 = v10;

  if (v9 == CalculateUnitCategory.id.getter() && v11 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      v15 = a1;
      sub_100074174(v15);
      v16 = *(v2 + 16);
      v15;
      sub_1000A9FAC(v15);
      if (qword_1001546F8 != -1)
      {
        swift_once();
      }

      v17 = qword_100160D68;
      CalculateUnitCategory.id.getter();
      v18 = String._bridgeToObjectiveC()();

      v19 = String._bridgeToObjectiveC()();
      [v17 setObject:v18 forKey:v19];

      swift_getKeyPath();
      v22 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      result = [*(v2 + 32) unitType];
      if (result == 16)
      {
        v20 = *(v2 + 24);
        sub_100050A28(v7);
        return sub_1000035CC(v7, &qword_100154F60, &qword_10010C620);
      }
    }
  }

  return result;
}

uint64_t sub_100075098()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = OBJC_IVAR____TtC10Calculator33CalculatorUnitConversionViewModel___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100075164()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

unint64_t sub_10007519C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000752C8(a1, a2, v6);
}

unint64_t sub_100075218(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_100075380(a1, v4);
}

unint64_t sub_100075284(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000753F0(a1, v4);
}

unint64_t sub_1000752C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100075380(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000753F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000775DC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10006C154(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1000754B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10003AE84(&qword_100156030, &qword_10010E3E8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_100008F60(v22, v33);
      }

      else
      {
        sub_100007314(v22, v33);
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      result = sub_100008F60(v33, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10007574C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10003AE84(&qword_100156010, &unk_100114000);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_100008F60(v23, v38);
      }

      else
      {
        sub_100007314(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_100008F60(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100075A1C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_10003AE84(a3, a4);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_100075CB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10003AE84(&qword_100156008, &qword_10010E398);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v38 = *(*(v5 + 56) + v22);
      if ((v37 & 1) == 0)
      {

        v26 = v38;
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v38;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_100075F7C()
{
  v1 = v0;
  sub_10003AE84(&qword_100156030, &qword_10010E3E8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        sub_100007314(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_100008F60(v19, (*(v4 + 56) + 32 * v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1000760F8()
{
  v1 = v0;
  sub_10003AE84(&qword_100156010, &unk_100114000);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_100007314(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100008F60(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_100076278(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10003AE84(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1000763D4()
{
  v1 = v0;
  sub_10003AE84(&qword_100156008, &qword_10010E398);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v23 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v23;

        v22 = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_100076560(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000766F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000768B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_10007519C(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_100075A1C(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_10007519C(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v23 = v15;
      sub_100076278(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return _objc_release_x1();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

_OWORD *sub_100076A54(_OWORD *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100075218(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100075F7C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1000754B8(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_100075218(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 32 * v9);
    sub_100003F80(v21);

    return sub_100008F60(a1, v21);
  }

  else
  {

    return sub_100076CC0(v9, a2, a1, v20);
  }
}

_OWORD *sub_100076B80(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100008ED0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1000760F8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10007574C(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_100008ED0(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CalculateKey(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    sub_100003F80(v20);

    return sub_100008F60(a1, v20);
  }

  else
  {
    sub_100076D28(v8, a2, a1, v19);

    return a2;
  }
}

_OWORD *sub_100076CC0(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_100008F60(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_100076D28(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100008F60(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void sub_100076D90(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_10007519C(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = static NSObject.== infix(_:_:)();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

unint64_t sub_100076F38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003AE84(&qword_100156048, &qword_10010E400);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008E68(v4, v13, &qword_100156050, &qword_10010E408);
      result = sub_100075284(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100008F60(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_100077098(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

unint64_t sub_100077118(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10003AE84(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_10007519C(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_100077214(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_100077240()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100077214(v2);
}

unint64_t sub_1000772A0(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100156038, &qword_10010E3F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10003AE84(&qword_100156040, &qword_10010E3F8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100008E68(v9, v6, &qword_100156038, &qword_10010E3F0);
      result = sub_100077240();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      v15 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v6, v15);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10007746C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003AE84(&qword_100156008, &qword_10010E398);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = *i;

      v7 = v14;

      result = sub_10007519C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 16 * result) = v14;
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

uint64_t sub_100077594(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100077648@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = CalculateUnitCategory.id.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100077674(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = CalculateUnitCategory.id.getter();
  v6 = v5;
  if (v4 == CalculateUnitCategory.id.getter() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_100077758()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100077828()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000778F4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000557C(*a1);
  *a2 = result;
  return result;
}

void sub_100077924(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6369736162;
  v4 = 0xE900000000000072;
  v5 = 0x657061506874616DLL;
  if (*v1 != 2)
  {
    v5 = 0x6D6D6172676F7270;
    v4 = 0xEA00000000007265;
  }

  if (*v1)
  {
    v3 = 0x6669746E65696373;
    v2 = 0xEA00000000006369;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_100077A74()
{
  result = qword_100156088;
  if (!qword_100156088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156088);
  }

  return result;
}

uint64_t sub_100077AC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 12337;
  if (v2 != 1)
  {
    v3 = 13873;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 56;
  }

  if (v2)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE100000000000000;
  }

  v6 = 12337;
  if (*a2 != 1)
  {
    v6 = 13873;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 56;
  }

  if (*a2)
  {
    v8 = 0xE200000000000000;
  }

  else
  {
    v8 = 0xE100000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_100077B94()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100077C14()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100077C80()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100077CFC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000782B8(*a1);
  *a2 = result;
  return result;
}

void sub_100077D2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 12337;
  if (v2 != 1)
  {
    v4 = 13873;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 56;
  }

  if (!v5)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_100077DAC()
{
  result = qword_1001560A0;
  if (!qword_1001560A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001560A0);
  }

  return result;
}

unint64_t sub_100077E04()
{
  result = qword_1001560A8;
  if (!qword_1001560A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001560A8);
  }

  return result;
}

uint64_t sub_100077E58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x4949435341;
  if (v2 != 1)
  {
    v4 = 0x65646F63696E55;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x4949435341;
  if (*a2 != 1)
  {
    v8 = 0x65646F63696E55;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100077F4C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100077FE4()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100078068()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000780FC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10007826C(*a1);
  *a2 = result;
  return result;
}

void sub_10007812C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x4949435341;
  if (v2 != 1)
  {
    v5 = 0x65646F63696E55;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000781C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100078218()
{
  result = qword_1001560C0;
  if (!qword_1001560C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001560C0);
  }

  return result;
}

unint64_t sub_10007826C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100149018, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000782B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100149118, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100078304()
{
  result = qword_1001560C8;
  if (!qword_1001560C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001560C8);
  }

  return result;
}

uint64_t sub_100078368(uint64_t a1, char a2)
{
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  if (a2)
  {
    LocalizedStringKey.init(stringLiteral:)();
  }

  else
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v5._countAndFlagsBits = 0x206573656854;
    v5._object = 0xE600000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v6._object = 0x8000000100106890;
    v6._countAndFlagsBits = 0xD00000000000003CLL;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v6);
    LocalizedStringKey.init(stringInterpolation:)();
  }

  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t getEnumTagSinglePayload for CalculatorHistoryRecordDeletionMode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CalculatorHistoryRecordDeletionMode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10007851C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100078538(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_10007856C()
{
  result = qword_1001560D8;
  if (!qword_1001560D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001560D8);
  }

  return result;
}

uint64_t sub_1000786A0()
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  sub_10007BB74(&qword_100154BD0, &type metadata accessor for Date);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t sub_10007881C()
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100078948()
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_100078A68()
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  sub_10007BBE4(&qword_100154C38);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100078B8C()
{
  v0 = type metadata accessor for Schema.Version();
  sub_100004078(v0, qword_100160AC8);
  sub_1000048C8(v0, qword_100160AC8);
  return Schema.Version.init(_:_:_:)();
}

uint64_t sub_100078BE4()
{
  sub_10003AE84(&qword_100154C20, &qword_10010C110);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10010BDE0;
  v1 = type metadata accessor for SchemaV1.HistoryRecord();
  v2 = sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t sub_100078C78@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001544B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Schema.Version();
  v3 = sub_1000048C8(v2, qword_100160AC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100078D2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100078E54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100078F1C()
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_100079004@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v5;
  return result;
}

uint64_t sub_10007912C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000791F4()
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  PersistentModel.setValue<A>(forKey:to:)();
}

double sub_100079374@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  sub_10007BBE4(&qword_100154C38);
  PersistentModel.getValue<A>(forKey:)();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1000794E4()
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  sub_10007BBE4(&qword_100156220);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1000795BC(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  sub_10007BB74(&qword_100154BD0, &type metadata accessor for Date);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t sub_1000796F4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10007987C()
{
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  sub_10007BB74(&qword_100155650, &type metadata accessor for Date);
  PersistentModel.setValue<A>(forKey:to:)();
}

unint64_t sub_100079954(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Date();
  v59 = *(v5 - 8);
  v6 = *(v59 + 64);
  __chkstk_darwin(v5);
  v58 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[6] = sub_10003AE84(&qword_100156228, &qword_100114350);
  v8 = sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  *&v65 = v4;
  *(&v65 + 1) = v4;
  v66 = v8;
  v67 = v8;
  v2[7] = swift_getOpaqueTypeConformance2();
  sub_100019850(v2 + 3);
  static PersistentModel.createBackingData<A>()();
  v9 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  *&v65 = 0x6369736162;
  *(&v65 + 1) = 0xE500000000000000;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v10 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v65) = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v11 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v65) = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v12 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v65) = 1;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 8) = 257;
  result = ObservationRegistrar.init()();
  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_37;
  }

  result = sub_100075218(0);
  if ((v14 & 1) == 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_100007314(*(a1 + 56) + 32 * result, v64);
  sub_100008F60(v64, &v65);
  swift_dynamicCast();
  v15 = v62;
  v16 = v63;
  v17 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  v60 = v15;
  v61 = v16;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  if (!*(a1 + 16))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  result = sub_100075218(1u);
  if ((v18 & 1) == 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_100007314(*(a1 + 56) + 32 * result, v64);
  sub_100008F60(v64, &v65);
  swift_dynamicCast();
  v19 = v62;
  v20 = v63;
  v21 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  v60 = v19;
  v61 = v20;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  if (!*(a1 + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  result = sub_100075218(2u);
  if ((v22 & 1) == 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_100007314(*(a1 + 56) + 32 * result, v64);
  sub_100008F60(v64, &v65);
  swift_dynamicCast();
  v23 = v62;
  v24 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v60) = v23;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  if (!*(a1 + 16))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  result = sub_100075218(3u);
  if ((v25 & 1) == 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_100007314(*(a1 + 56) + 32 * result, v64);
  sub_100008F60(v64, &v65);
  swift_dynamicCast();
  v26 = v62;
  v27 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v60) = v26;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  if (!*(a1 + 16))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  result = sub_100075218(4u);
  if ((v28 & 1) == 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  sub_100007314(*(a1 + 56) + 32 * result, v64);
  sub_100008F60(v64, &v65);
  swift_dynamicCast();
  v29 = v62;
  v30 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v60) = v29;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  if (!*(a1 + 16))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  result = sub_100075218(5u);
  if ((v31 & 1) == 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  sub_100007314(*(a1 + 56) + 32 * result, v64);
  sub_100008F60(v64, &v65);
  swift_dynamicCast();
  v32 = v62;
  v33 = v63;
  v34 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  v60 = v32;
  v61 = v33;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  if (!*(a1 + 16))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  result = sub_100075218(6u);
  if ((v35 & 1) == 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_100007314(*(a1 + 56) + 32 * result, v64);
  sub_100008F60(v64, &v65);
  swift_dynamicCast();
  v36 = v62;
  v37 = v63;
  v38 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  v60 = v36;
  v61 = v37;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  if (*(a1 + 16) && (v39 = sub_100075218(7u), (v40 & 1) != 0))
  {
    sub_100007314(*(a1 + 56) + 32 * v39, &v65);
    v41 = swift_dynamicCast();
    if (v41)
    {
      v42 = *&v64[0];
    }

    else
    {
      v42 = 0;
    }

    if (v41)
    {
      v43 = *(&v64[0] + 1);
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  v44 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  *&v65 = v42;
  *(&v65 + 1) = v43;
  sub_10003AE84(&qword_100154C40, &qword_10010CFA0);
  sub_10007BBE4(&qword_100156220);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 16) = 0;
  v45 = *(a1 + 16);
  v57 = v5;
  if (v45 && (v46 = sub_100075218(8u), (v47 & 1) != 0))
  {
    sub_100007314(*(a1 + 56) + 32 * v46, &v65);
    v48 = swift_dynamicCast();
    if (v48)
    {
      v49 = *&v64[0];
    }

    else
    {
      v49 = 0;
    }

    if (v48)
    {
      v50 = *(&v64[0] + 1);
    }

    else
    {
      v50 = 0;
    }
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v51 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  *&v65 = v49;
  *(&v65 + 1) = v50;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 17) = 0;
  if (!*(a1 + 16))
  {
    goto LABEL_50;
  }

  result = sub_100075218(9u);
  if (v52)
  {
    sub_100007314(*(a1 + 56) + 32 * result, v64);

    sub_100008F60(v64, &v65);
    v53 = v57;
    v54 = v58;
    swift_dynamicCast();
    v55 = v2[7];
    sub_100017F20(v2 + 3, v2[6]);
    swift_getKeyPath();
    sub_10007BB74(&qword_100155650, &type metadata accessor for Date);
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    (*(v59 + 8))(v54, v53);
    return v2;
  }

LABEL_51:
  __break(1u);
  return result;
}

unint64_t *sub_10007A434(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v51 = type metadata accessor for Date();
  v52 = *(v51 - 8);
  v5 = *(v52 + 64);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[6] = sub_10003AE84(&qword_100156228, &qword_100114350);
  v49 = type metadata accessor for SchemaV1.HistoryRecord;
  v7 = sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  v61 = v4;
  v62 = v4;
  v63 = v7;
  v64 = v7;
  v2[7] = swift_getOpaqueTypeConformance2();
  sub_100019850(v2 + 3);
  static PersistentModel.createBackingData<A>()();
  v8 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  v61 = 0x6369736162;
  v62 = 0xE500000000000000;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v9 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v61) = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v10 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v61) = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v11 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v61) = 1;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 8) = 257;
  v48 = OBJC_IVAR____TtCO10Calculator8SchemaV113HistoryRecord___observationRegistrar;
  ObservationRegistrar.init()();
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  v61 = v12;
  v62 = v13;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  v61 = v15;
  v62 = v16;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  LOBYTE(v15) = *(a1 + 32);
  v18 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v61) = v15;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  LOBYTE(v15) = *(a1 + 33);
  v19 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v61) = v15;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  LOBYTE(v15) = *(a1 + 34);
  v20 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  LOBYTE(v61) = v15;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v21 = *(a1 + 48);
  v22 = sub_100080254(*(a1 + 40));
  v24 = v23;
  v25 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  v61 = v22;
  v62 = v24;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v26 = *(a1 + 64);
  v27 = sub_100080254(*(a1 + 56));
  v29 = v28;
  v30 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  v61 = v27;
  v62 = v29;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v47 = *(type metadata accessor for GenericRecord() + 52);
  v31 = v52;
  v46 = *(v52 + 16);
  v32 = v50;
  v33 = v51;
  v46(v50, a1 + v47, v51);
  v34 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  sub_10007BB74(&qword_100155650, &type metadata accessor for Date);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v35 = *(v31 + 8);
  v52 = v31 + 8;
  v45 = v35;
  v35(v32, v33);
  v36 = *(a1 + 72);
  v37 = *(a1 + 80);
  v61 = v2;
  swift_getKeyPath();
  v58 = v2;
  v59 = v36;
  v60 = v37;
  sub_10007BB74(&qword_100154BC0, v49);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v38 = a1;
  v39 = *(a1 + 88);
  v40 = *(a1 + 96);
  v61 = v2;
  swift_getKeyPath();
  v55 = v2;
  v56 = v39;
  v57 = v40;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v41 = a1 + v47;
  v42 = v50;
  v43 = v51;
  v46(v50, v41, v51);
  v61 = v2;
  swift_getKeyPath();
  v53 = v2;
  v54 = v42;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v45(v42, v43);
  sub_10004B55C(v38);
  return v2;
}

void *sub_10007AC68(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[6] = sub_10003AE84(&qword_100156228, &qword_100114350);
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  v2[7] = swift_getOpaqueTypeConformance2();
  sub_100019850(v2 + 3);
  static PersistentModel.createBackingData<A>()();
  v5 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v6 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v7 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v8 = v2[7];
  sub_100017F20(v2 + 3, v2[6]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 8) = 257;
  ObservationRegistrar.init()();
  *(v2 + 8) = 0;
  swift_beginAccess();
  sub_100003F80(v2 + 3);
  sub_10007BD68(a1, (v2 + 3));
  swift_endAccess();
  return v2;
}

uint64_t sub_10007AF14()
{
  sub_100003F80(v0 + 3);
  v1 = OBJC_IVAR____TtCO10Calculator8SchemaV113HistoryRecord___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SchemaV1.HistoryRecord()
{
  result = qword_100156110;
  if (!qword_100156110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007B00C()
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

uint64_t sub_10007B0F4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  PersistentModel.getValue<A>(forKey:)();

  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t sub_10007B200(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_10007AC68(a1);
  return v5;
}

uint64_t sub_10007B288(__int128 *a1)
{
  swift_beginAccess();
  sub_100003F80((v1 + 24));
  sub_10007BD68(a1, v1 + 24);
  return swift_endAccess();
}

void (*sub_10007B2E0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100062B18(v1 + 24, v4);
  return sub_10007B370;
}

void sub_10007B370(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_100062B18(*a1, v2 + 40);
    swift_beginAccess();
    sub_100003F80((v3 + 24));
    sub_10007BD68((v2 + 40), v3 + 24);
    swift_endAccess();
    sub_100003F80(v2);
  }

  else
  {
    swift_beginAccess();
    sub_100003F80((v3 + 24));
    sub_10007BD68(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

Swift::Int sub_10007B42C()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10007B490()
{
  v1 = *v0;
  sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  return PersistentModel.hash(into:)();
}

Swift::Int sub_10007B504()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10007B564(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10007BB74(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t sub_10007B74C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_100078F1C();
}

uint64_t sub_10007B774()
{
  sub_10003AE84(&qword_100156218, &qword_10010EC90);
  v0 = *(type metadata accessor for Schema.PropertyMetadata() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10010EA10;
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v3;
}

uint64_t sub_10007BB58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10007987C();
}

uint64_t sub_10007BB74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007BBBC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1000794E4();
}

uint64_t sub_10007BBE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(&qword_100154C40, &qword_10010CFA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007BC50()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1000794E4();
}

uint64_t sub_10007BC78()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_100078F1C();
}

uint64_t sub_10007BCA0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_100078F1C();
}

uint64_t sub_10007BCC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000791F4();
}

uint64_t sub_10007BCF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000791F4();
}

uint64_t sub_10007BD18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000791F4();
}

uint64_t sub_10007BD40()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_100078F1C();
}

uint64_t sub_10007BD68(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

NSString sub_10007BDC8()
{
  result = String._bridgeToObjectiveC()();
  qword_100160AE8 = result;
  return result;
}

NSString sub_10007BE00()
{
  result = String._bridgeToObjectiveC()();
  qword_100160AF0 = result;
  return result;
}

NSString sub_10007BE38()
{
  result = String._bridgeToObjectiveC()();
  qword_100160AF8 = result;
  return result;
}

NSString sub_10007BE70()
{
  result = String._bridgeToObjectiveC()();
  qword_100160B08 = result;
  return result;
}

NSString sub_10007BEA8()
{
  result = String._bridgeToObjectiveC()();
  qword_100160B10 = result;
  return result;
}

NSString sub_10007BEE0()
{
  result = String._bridgeToObjectiveC()();
  qword_100160B20 = result;
  return result;
}

NSString sub_10007BF18()
{
  result = String._bridgeToObjectiveC()();
  qword_100160B28 = result;
  return result;
}

uint64_t sub_10007BF50()
{
  swift_getKeyPath();
  sub_10007C7AC(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10007C7AC(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  sub_10004B3E8();
  PersistentModel.getValue<A>(forKey:)();

  result = v1;
  if (v1)
  {

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    return 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HistoryRecordKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HistoryRecordKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for GenericRecord()
{
  result = qword_100156288;
  if (!qword_100156288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007C2A0()
{
  sub_10007C350();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10007C350()
{
  if (!qword_100156298)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100156298);
    }
  }
}

uint64_t sub_10007C3A0()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 32));
  Hasher._combine(_:)(*(v0 + 33));
  Hasher._combine(_:)(*(v0 + 34));
  v5 = v0[5];
  v6 = v0[6];
  String.hash(into:)();
  v7 = v0[7];
  v8 = v0[8];
  String.hash(into:)();
  if (!v0[10])
  {
    Hasher._combine(_:)(0);
    if (v0[12])
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    goto LABEL_6;
  }

  v9 = v0[9];
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v0[12])
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = v0[11];
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_6:
  v11 = *(type metadata accessor for GenericRecord() + 52);
  type metadata accessor for Date();
  sub_10007C7AC(&qword_1001562F8, &type metadata accessor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_10007C4F0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_10007C4FC()
{
  Hasher.init(_seed:)();
  sub_10007C3A0();
  return Hasher._finalize()();
}

Swift::Int sub_10007C540()
{
  Hasher.init(_seed:)();
  sub_10007C3A0();
  return Hasher._finalize()();
}

unint64_t sub_10007C5CC()
{
  result = qword_1001562F0;
  if (!qword_1001562F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001562F0);
  }

  return result;
}

uint64_t sub_10007C620(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || *(a1 + 33) != *(a2 + 33) || *(a1 + 34) != *(a2 + 34) || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 80);
  v8 = *(a2 + 80);
  if (v7)
  {
    if (!v8 || (*(a1 + 72) != *(a2 + 72) || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = *(a1 + 96);
  v10 = *(a2 + 96);
  if (v9)
  {
    if (v10 && (*(a1 + 88) == *(a2 + 88) && v9 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_35;
    }

    return 0;
  }

  if (v10)
  {
    return 0;
  }

LABEL_35:
  v11 = *(type metadata accessor for GenericRecord() + 52);

  return static Date.== infix(_:_:)(a1 + v11, a2 + v11);
}

uint64_t sub_10007C7AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for CalculatorAppView(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CalculatorAppView(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10007C8E8()
{
  result = qword_100156300;
  if (!qword_100156300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156300);
  }

  return result;
}

unint64_t sub_10007C948()
{
  result = qword_100156308;
  if (!qword_100156308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100156308);
  }

  return result;
}

Swift::Int sub_10007C99C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10007C9E0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10007CA34()
{
  result = sub_100027954(&off_1001491D0);
  static CalculatorButtonRepresentable.shiftableButtons = result;
  return result;
}

uint64_t *CalculatorButtonRepresentable.shiftableButtons.unsafeMutableAddressor()
{
  if (qword_100154508 != -1)
  {
    swift_once();
  }

  return &static CalculatorButtonRepresentable.shiftableButtons;
}

Swift::Int sub_10007CAD0()
{
  result = sub_100027954(&off_100149200);
  static CalculatorButtonRepresentable.alternateRPNButtons = result;
  return result;
}

uint64_t *CalculatorButtonRepresentable.alternateRPNButtons.unsafeMutableAddressor()
{
  if (qword_100154510 != -1)
  {
    swift_once();
  }

  return &static CalculatorButtonRepresentable.alternateRPNButtons;
}

Swift::Int sub_10007CB6C()
{
  result = sub_100027954(&off_100149228);
  static CalculatorButtonRepresentable.swappableButtons = result;
  return result;
}

uint64_t *CalculatorButtonRepresentable.swappableButtons.unsafeMutableAddressor()
{
  if (qword_100154518 != -1)
  {
    swift_once();
  }

  return &static CalculatorButtonRepresentable.swappableButtons;
}

Swift::Int sub_10007CC08()
{
  result = sub_100027954(&off_100149250);
  static CalculatorButtonRepresentable.attributedTitledButtons = result;
  return result;
}

uint64_t *CalculatorButtonRepresentable.attributedTitledButtons.unsafeMutableAddressor()
{
  if (qword_100154520 != -1)
  {
    swift_once();
  }

  return &static CalculatorButtonRepresentable.attributedTitledButtons;
}

uint64_t sub_10007CCA4(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

unint64_t sub_10007CD10@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10Calculator0A19ButtonRepresentableO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

Calculator::CalculatorButtonRepresentable __swiftcall CalculatorButtonRepresentable.shiftedButton(isRPN:)(Swift::Bool isRPN)
{
  result = Calculator_CalculatorButtonRepresentable_exponentialBase2;
  switch(v1)
  {
    case Calculator_CalculatorButtonRepresentable_power:
      v4 = !isRPN;
      v5 = Calculator_CalculatorButtonRepresentable_power;
      goto LABEL_14;
    case Calculator_CalculatorButtonRepresentable_exponential:
      if (isRPN)
      {
        result = Calculator_CalculatorButtonRepresentable_power;
      }

      else
      {
        result = Calculator_CalculatorButtonRepresentable_exponentialBaseY;
      }

      break;
    case Calculator_CalculatorButtonRepresentable_exponentialBase10:
      return result;
    case Calculator_CalculatorButtonRepresentable_logarithmNatural:
      result = Calculator_CalculatorButtonRepresentable_logarithm;
      break;
    case Calculator_CalculatorButtonRepresentable_logarithmBase10:
      result = Calculator_CalculatorButtonRepresentable_logarithmBase2;
      break;
    case Calculator_CalculatorButtonRepresentable_sine:
      result = Calculator_CalculatorButtonRepresentable_inverseSine;
      break;
    case Calculator_CalculatorButtonRepresentable_cosine:
      result = Calculator_CalculatorButtonRepresentable_inverseCosine;
      break;
    case Calculator_CalculatorButtonRepresentable_tangent:
      result = Calculator_CalculatorButtonRepresentable_inverseTangent;
      break;
    case Calculator_CalculatorButtonRepresentable_hyperbolicSine:
      result = Calculator_CalculatorButtonRepresentable_inverseHyperbolicSine;
      break;
    case Calculator_CalculatorButtonRepresentable_hyperbolicCosine:
      result = Calculator_CalculatorButtonRepresentable_inverseHyperbolicCosine;
      break;
    case Calculator_CalculatorButtonRepresentable_hyperbolicTangent:
      result = Calculator_CalculatorButtonRepresentable_inverseHyperbolicTangent;
      break;
    case Calculator_CalculatorButtonRepresentable_exponentialBaseY:
      v4 = !isRPN;
      v5 = Calculator_CalculatorButtonRepresentable_exponential;
LABEL_14:
      if (v4)
      {
        result = v5;
      }

      else
      {
        result = Calculator_CalculatorButtonRepresentable_exponentialBaseY;
      }

      break;
    case Calculator_CalculatorButtonRepresentable_exponentialBase2:
      result = Calculator_CalculatorButtonRepresentable_exponentialBase10;
      break;
    case Calculator_CalculatorButtonRepresentable_logarithm:
      result = Calculator_CalculatorButtonRepresentable_logarithmNatural;
      break;
    case Calculator_CalculatorButtonRepresentable_logarithmBase2:
      result = Calculator_CalculatorButtonRepresentable_logarithmBase10;
      break;
    case Calculator_CalculatorButtonRepresentable_inverseSine:
      result = Calculator_CalculatorButtonRepresentable_sine;
      break;
    case Calculator_CalculatorButtonRepresentable_inverseCosine:
      result = Calculator_CalculatorButtonRepresentable_cosine;
      break;
    case Calculator_CalculatorButtonRepresentable_inverseTangent:
      result = Calculator_CalculatorButtonRepresentable_tangent;
      break;
    case Calculator_CalculatorButtonRepresentable_inverseHyperbolicSine:
      result = Calculator_CalculatorButtonRepresentable_hyperbolicSine;
      break;
    case Calculator_CalculatorButtonRepresentable_inverseHyperbolicCosine:
      result = Calculator_CalculatorButtonRepresentable_hyperbolicCosine;
      break;
    case Calculator_CalculatorButtonRepresentable_inverseHyperbolicTangent:
      result = Calculator_CalculatorButtonRepresentable_hyperbolicTangent;
      break;
    default:
      result = v1;
      break;
  }

  return result;
}

Calculator::CalculatorButtonRepresentable __swiftcall CalculatorButtonRepresentable.alternateRPNButton()()
{
  if (result > Calculator_CalculatorButtonRepresentable_cubeRoot)
  {
    if (result == Calculator_CalculatorButtonRepresentable_root)
    {
      return 38;
    }

    else if (result == Calculator_CalculatorButtonRepresentable_exponentialBaseY)
    {
      return 31;
    }
  }

  else if (result == Calculator_CalculatorButtonRepresentable_equals)
  {
    return 93;
  }

  else if (result == Calculator_CalculatorButtonRepresentable_power)
  {
    return 56;
  }

  return result;
}

Calculator::CalculatorButtonRepresentable __swiftcall CalculatorButtonRepresentable.editableButton(_:)(Swift::Bool a1)
{
  if (v1 == Calculator_CalculatorButtonRepresentable_allClear)
  {
    v2 = Calculator_CalculatorButtonRepresentable_clear;
  }

  else
  {
    v2 = v1;
  }

  if (v1 == Calculator_CalculatorButtonRepresentable_clear)
  {
    v3 = Calculator_CalculatorButtonRepresentable_allClear;
  }

  else
  {
    v3 = v1;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::String __swiftcall CalculatorButtonRepresentable.stringValue()()
{
  v1 = v0;
  v2 = 0xE100000000000000;
  v3 = 48;
  switch(v1)
  {
    case 1:
      v2 = 0xE200000000000000;
      v3 = 17217;
      break;
    case 2:
    case 68:
      v3 = 67;
      break;
    case 3:
      v2 = 0xE300000000000000;
      v3 = 2961195;
      break;
    case 4:
      v2 = 0xE700000000000000;
      v3 = 0x746E6563726570;
      break;
    case 5:
      v2 = 0xA200000000000000;
      v3 = 47043;
      break;
    case 6:
      v2 = 0xA200000000000000;
      v3 = 38851;
      break;
    case 7:
      v2 = 0xA300000000000000;
      v3 = 9603298;
      break;
    case 8:
      v3 = 43;
      break;
    case 9:
      v3 = 61;
      break;
    case 10:
      v2 = 0xE700000000000000;
      v3 = 0x6C616D69636564;
      break;
    case 11:
      v2 = 0xE400000000000000;
      v3 = 1701080941;
      break;
    case 12:
      break;
    case 13:
      v3 = 49;
      break;
    case 14:
      v3 = 50;
      break;
    case 15:
      v3 = 51;
      break;
    case 16:
      v3 = 52;
      break;
    case 17:
      v3 = 53;
      break;
    case 18:
      v3 = 54;
      break;
    case 19:
      v3 = 55;
      break;
    case 20:
      v3 = 56;
      break;
    case 21:
      v3 = 57;
      break;
    case 22:
      v2 = 0xA400000000000000;
      v3 = 680427746;
      break;
    case 23:
      v2 = 0xA400000000000000;
      v3 = 697204962;
      break;
    case 24:
      v2 = 0xE200000000000000;
      v3 = 25453;
      break;
    case 25:
      v2 = 0xE200000000000000;
      v3 = 11117;
      break;
    case 26:
      v2 = 0xE200000000000000;
      v3 = 11629;
      break;
    case 27:
      v2 = 0xE200000000000000;
      v3 = 29293;
      break;
    case 28:
      v3 = 6581810;
      v2 = 0xE300000000000000;
      break;
    case 29:
      v2 = 0xA300000000000000;
      v3 = 11715192;
      break;
    case 30:
      v3 = 11780728;
      v2 = 0xA300000000000000;
      break;
    case 31:
      v2 = 0xA300000000000000;
      v3 = 12110456;
      break;
    case 32:
      v3 = 10734437;
      v2 = 0xA300000000000000;
      break;
    case 33:
      v2 = 0xA400000000000000;
      v3 = 2748002353;
      break;
    case 34:
      v2 = 0xE300000000000000;
      v3 = 7876401;
      break;
    case 35:
      v3 = 1953657203;
      v2 = 0xE400000000000000;
      break;
    case 36:
      v2 = 0xE400000000000000;
      v3 = 1953653347;
      break;
    case 37:
      v2 = 0xA500000000000000;
      v3 = 0x789A88E279;
      break;
    case 38:
      v2 = 0xA500000000000000;
      v3 = 0x799A88E278;
      break;
    case 39:
      v2 = 0xE200000000000000;
      v3 = 28268;
      break;
    case 40:
      v3 = 6778732;
      v2 = 0xE300000000000000;
      break;
    case 41:
      v2 = 0xE90000000000006CLL;
      v3 = 0x6169726F74636166;
      break;
    case 42:
      v3 = 7235955;
      v2 = 0xE300000000000000;
      break;
    case 43:
      v2 = 0xE300000000000000;
      v3 = 7565155;
      break;
    case 44:
      v2 = 0xE300000000000000;
      v3 = 7233908;
      break;
    case 45:
      v3 = 101;
      break;
    case 46:
      v2 = 0xE200000000000000;
      v3 = 17733;
      break;
    case 47:
      v2 = 0xE300000000000000;
      v3 = 6578546;
      break;
    case 48:
      v3 = 1752066419;
      v2 = 0xE400000000000000;
      break;
    case 49:
      v2 = 0xE400000000000000;
      v3 = 1752395619;
      break;
    case 50:
      v2 = 0xE400000000000000;
      v3 = 1752064372;
      break;
    case 51:
      v2 = 0xE200000000000000;
      v3 = 26992;
      break;
    case 52:
      v2 = 0xE600000000000000;
      v3 = 0x6D6F646E6152;
      break;
    case 53:
      v2 = 0xE600000000000000;
      v3 = 0x6574656C6564;
      break;
    case 54:
      v2 = 0xE500000000000000;
      v3 = 0x616D6D6F63;
      break;
    case 55:
      v2 = 0xE300000000000000;
      v3 = 6776164;
      break;
    case 56:
      v3 = 10734457;
      v2 = 0xA300000000000000;
      break;
    case 57:
      v2 = 0xA300000000000000;
      v3 = 10734386;
      break;
    case 58:
      v2 = 0xE400000000000000;
      v3 = 2036821868;
      break;
    case 59:
      v2 = 0xE400000000000000;
      v3 = 845639532;
      break;
    case 60:
      v2 = 0xE400000000000000;
      v3 = 1852404577;
      break;
    case 61:
      v2 = 0xE400000000000000;
      v3 = 1936679777;
      break;
    case 62:
      v2 = 0xE400000000000000;
      v3 = 1851880545;
      break;
    case 63:
      v2 = 0xE500000000000000;
      v3 = 0x686E697361;
      break;
    case 64:
      v2 = 0xE500000000000000;
      v3 = 0x68736F6361;
      break;
    case 65:
      v2 = 0xE500000000000000;
      v3 = 0x686E617461;
      break;
    case 66:
      v3 = 65;
      break;
    case 67:
      v3 = 66;
      break;
    case 69:
      v3 = 68;
      break;
    case 70:
      v3 = 69;
      break;
    case 71:
      v3 = 70;
      break;
    case 72:
      v2 = 0xE200000000000000;
      v3 = 17990;
      break;
    case 73:
      v2 = 0xE200000000000000;
      v3 = 12336;
      break;
    case 74:
      v2 = 0xE300000000000000;
      v3 = 4476481;
      break;
    case 75:
      v2 = 0xE200000000000000;
      v3 = 21071;
      break;
    case 76:
      v2 = 0xE300000000000000;
      v3 = 5394254;
      break;
    case 77:
      v3 = 5394264;
      v2 = 0xE300000000000000;
      break;
    case 78:
      v2 = 0xA500000000000000;
      v3 = 0x3E3E8E80E2;
      break;
    case 79:
      v2 = 0xA500000000000000;
      v3 = 0x3C3C8E80E2;
      break;
    case 80:
      v2 = 0xE400000000000000;
      v3 = 1497251416;
      break;
    case 81:
      v2 = 0xE400000000000000;
      v3 = 1497119832;
      break;
    case 82:
      v2 = 0xE300000000000000;
      v3 = 5402450;
      break;
    case 83:
      v2 = 0xE300000000000000;
      v3 = 5009234;
      break;
    case 84:
      v2 = 0xA700000000000000;
      v3 = 0x8882E270696C66;
      break;
    case 85:
      v2 = 0xAA00000000008682;
      v3 = 0xE28182E270696C66;
      break;
    case 86:
      v2 = 0xE300000000000000;
      v3 = 4670798;
      break;
    case 87:
      v2 = 0xE300000000000000;
      v3 = 5525326;
      break;
    case 88:
      v3 = 6582125;
      v2 = 0xE300000000000000;
      break;
    case 89:
      v2 = 0xE400000000000000;
      v3 = 1886351972;
      break;
    case 90:
      v2 = 0xA500000000000000;
      v3 = 0x799486E278;
      break;
    case 91:
      v2 = 0xA400000000000000;
      v3 = 2441536082;
      break;
    case 92:
      v2 = 0xA400000000000000;
      v3 = 2475090514;
      break;
    case 93:
      v2 = 0xE500000000000000;
      v3 = 0x7265746E65;
      break;
    default:
      v2 = 0xE400000000000000;
      v3 = 1701736302;
      break;
  }

  result._object = v2;
  result._countAndFlagsBits = v3;
  return result;
}

void sub_10007D46C(uint64_t a1, char a2)
{
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  switch(a2)
  {
    case 4:
      if (qword_100154728 != -1)
      {
        swift_once();
      }

      v10 = sub_100003D58();
      v9 = [v10 percentSymbol];

      if (!v9)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    case 10:
      if (qword_100154728 != -1)
      {
        swift_once();
      }

      v8 = sub_100003D58();
      v9 = [v8 decimalSeparator];

      if (v9)
      {
LABEL_11:
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
LABEL_13:
        __break(1u);
      }

      break;
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 73:
      countAndFlagsBits = CalculatorButtonRepresentable.stringValue()()._countAndFlagsBits;
      sub_10007E118(countAndFlagsBits);

      break;
    case 89:
    case 93:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      break;
    default:
      return;
  }
}

void sub_10007DBB4(char a1)
{
  switch(a1)
  {
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 46:
    case 48:
    case 49:
    case 50:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
      return;
    default:
      sub_10007D46C(0, a1);
      break;
  }
}

uint64_t sub_10007DDB0@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_10003AE84(&qword_100156320, &unk_10010F210);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for CalculateExpression.CalculatorButton();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_100025E90(a1))
  {
    if (a1 <= 0x1Au)
    {
      switch(a1)
      {
        case 0x18u:
          v16 = &enum case for CalculateExpression.CalculatorButton.memoryClear(_:);
          goto LABEL_22;
        case 0x19u:
          v16 = &enum case for CalculateExpression.CalculatorButton.memoryAdd(_:);
          goto LABEL_22;
        case 0x1Au:
          v16 = &enum case for CalculateExpression.CalculatorButton.memorySubtract(_:);
          goto LABEL_22;
      }
    }

    else if (a1 > 0x2Eu)
    {
      if (a1 == 55)
      {
        v16 = &enum case for CalculateExpression.CalculatorButton.degrees(_:);
        goto LABEL_22;
      }

      if (a1 == 47)
      {
        v16 = &enum case for CalculateExpression.CalculatorButton.radians(_:);
        goto LABEL_22;
      }
    }

    else
    {
      if (a1 == 27)
      {
        v16 = &enum case for CalculateExpression.CalculatorButton.memoryRecall(_:);
        goto LABEL_22;
      }

      if (a1 == 28)
      {
        v16 = &enum case for CalculateExpression.CalculatorButton.second(_:);
LABEL_22:
        (*(v9 + 104))(v7, *v16, v8);
        (*(v9 + 56))(v7, 0, 1, v8);
        (*(v9 + 32))(v12, v7, v8);
        CalculateExpression.label(for:fontSize:)();
        (*(v9 + 8))(v12, v8);
        v18 = type metadata accessor for CalculateExpression.Label();
        return (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
      }
    }

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_10007E2C4(v7);
    v17 = type metadata accessor for CalculateExpression.Label();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  CalculateExpression.label(for:fontSize:)();

  v13 = type metadata accessor for CalculateExpression.Label();
  v14 = *(*(v13 - 8) + 56);

  return v14(a2, 0, 1, v13);
}

uint64_t sub_10007E118(uint64_t a1)
{
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D58();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 numberFromString:v3];

  if (!v4)
  {
    v4 = v2;
LABEL_8:

    return a1;
  }

  v5 = [v2 stringFromNumber:v4];
  if (!v5)
  {

    goto LABEL_8;
  }

  v6 = v5;
  a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return a1;
}