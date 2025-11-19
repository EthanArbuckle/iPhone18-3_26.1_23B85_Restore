uint64_t sub_10008BEA4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003B1B8(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10008BF28()
{
  result = qword_100101A78;
  if (!qword_100101A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101A78);
  }

  return result;
}

unint64_t sub_10008BF7C()
{
  result = qword_100104E30[0];
  if (!qword_100104E30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100104E30);
  }

  return result;
}

unint64_t sub_10008C034()
{
  result = qword_100101A90;
  if (!qword_100101A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101A90);
  }

  return result;
}

uint64_t sub_10008C0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100030C14(&qword_100101998);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10008C19C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100030C14(&qword_100101998);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10008C268()
{
  sub_10008C478(319, &qword_1001005B0, &type metadata for Bool, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10008C3BC();
    if (v1 <= 0x3F)
    {
      sub_10008C478(319, &qword_100101B88, &type metadata for CARThemeEditor.ButtonState, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        sub_10008C414();
        if (v3 <= 0x3F)
        {
          sub_1000440A4();
          if (v4 <= 0x3F)
          {
            sub_10008C478(319, &unk_100101BA0, &type metadata for CARThemeEditor.EditingMode, &type metadata accessor for State);
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

void sub_10008C3BC()
{
  if (!qword_100101B80)
  {
    type metadata accessor for CARThemeModel();
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &qword_100101B80);
    }
  }
}

void sub_10008C414()
{
  if (!qword_100101B90)
  {
    sub_10003B1B8(&unk_100101970);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_100101B90);
    }
  }
}

void sub_10008C478(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10008C4D8()
{
  sub_10003B1B8(&qword_1001019E0);
  sub_10003B1B8(&qword_1001019D8);
  sub_10003B1B8(&qword_1001019D0);
  sub_10003B1B8(&qword_1001019C8);
  sub_10008BA88();
  sub_10008BF7C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10008C640(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CARThemeEditor() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10008C6B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030C14(&qword_100101A28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008C724()
{
  v1 = (type metadata accessor for CARThemeEditor() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_10003E550(*v2, *(v2 + 8));
  v3 = v1[7];
  v4 = sub_100030C14(&qword_100101998);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_10008C894()
{
  type metadata accessor for CARThemeEditor();
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10008C974()
{
  type metadata accessor for CARThemeEditor();
  sub_100030C14(&qword_1001019E8);
  return State.wrappedValue.setter();
}

uint64_t sub_10008C9F8()
{

  return swift_deallocObject();
}

id sub_10008CA38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  [v1 alpha];
  v5 = 0.0;
  if (v3)
  {
    v5 = v4;
    v4 = 1.0;
  }

  if (v2)
  {
    v4 = v5;
  }

  return [v1 setAlpha:v4];
}

uint64_t sub_10008CAE8()
{
  type metadata accessor for IconCustomizationModel();
  sub_10008DDE8(&qword_1000FF2A0, type metadata accessor for IconCustomizationModel);
  return Environment.init<A>(_:)();
}

uint64_t sub_10008CB7C()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_10008CBAC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100030C14(&qword_100101C08);
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v54 = *(v1 + 8);
  v41 = v1;
  v10 = *v1;
  v53 = v10;
  if (v54 == 1)
  {
    v52 = v10;
    v11 = v10;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003970C(&v53, &qword_100100C60);
    (*(v4 + 8))(v6, v3);
  }

  type metadata accessor for IconCustomizationModel();
  sub_10008DDE8(&qword_1000FF2A0, type metadata accessor for IconCustomizationModel);
  Bindable<A>.init(wrappedValue:)();
  v37 = sub_10007821C();
  v38 = v13;
  v15 = v14;
  v17 = v16;
  v18 = static Alignment.center.getter();
  v39 = v19;
  v40 = v18;
  sub_10008CF74(v9, &v44);
  v20 = v44;
  v21 = v45;
  v22 = v46;
  v23 = v47;
  v24 = v48;
  v50 = v15 & 1;
  v49 = v17 & 1;
  sub_10008D144(v44, v45, v46, v47, v48);
  sub_10008D18C(v20, v21, v22, v23, v24);
  v35 = v50;
  v36 = v49;
  v25 = static Alignment.bottom.getter();
  v27 = v26;
  v28 = a1 + *(sub_100030C14(&qword_100101C10) + 36);
  sub_10008D1E0(v9, v41, v28);
  v29 = (v28 + *(sub_100030C14(&qword_100101C18) + 36));
  *v29 = v25;
  v29[1] = v27;
  *a1 = v37;
  *(a1 + 8) = v35;
  *(a1 + 12) = *(&v44 + 3);
  *(a1 + 9) = v44;
  *(a1 + 16) = v38;
  *(a1 + 24) = v36;
  *(a1 + 28) = *&v51[3];
  *(a1 + 25) = *v51;
  *(a1 + 32) = v20;
  *(a1 + 40) = v21;
  *(a1 + 48) = v22;
  *(a1 + 56) = v23;
  v30 = v39;
  v31 = v40;
  *(a1 + 64) = v24;
  *(a1 + 72) = v31;
  *(a1 + 80) = v30;
  LOBYTE(v22) = static Edge.Set.top.getter();
  v32 = static SafeAreaRegions.all.getter();
  v33 = a1 + *(sub_100030C14(&qword_100101C20) + 36);
  *v33 = v32;
  *(v33 + 8) = v22;
  return (*(v42 + 8))(v9, v43);
}

void sub_10008CF74(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100030C14(&qword_100101C08);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v8 = *(v5 + 16);
  v8(&v24 - v6, a1, v4);
  Bindable.wrappedValue.getter();
  v9 = *(v5 + 8);
  v9(v7, v4);
  v10 = v27;
  v11 = sub_10003234C();

  if (v11)
  {
    v12 = v11;
    nullsub_9(v12, v13, v14);
    v26 = v15;
    v25 = static SafeAreaRegions.all.getter();
    v24 = static Edge.Set.all.getter();
    v16 = static Animation.default.getter();
    v17 = a1;
    v18 = v16;
    v8(v7, v17, v4);
    Bindable.wrappedValue.getter();
    v9(v7, v4);
    v19 = v27;
    v20 = sub_100031AB4();

    v22 = v25;
    v21 = v26;
    v23 = v24;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v18 = 0;
    v20 = 0;
  }

  *a2 = v21;
  a2[1] = v22;
  a2[2] = v23;
  a2[3] = v18;
  a2[4] = v20;
}

uint64_t sub_10008D144(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (result)
  {
    v5 = result;
    v6 = a5;
    v7 = v5;
  }

  return result;
}

void sub_10008D18C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
  }
}

uint64_t sub_10008D1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100030C14(&qword_100101C08);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100030C14(&qword_100101C68);
  __chkstk_darwin(v14 - 8);
  v16 = &v29 - v15;
  sub_10008D5A0(a1, &v29 - v15);
  v34 = *(a2 + 24);
  v17 = *(a2 + 16);
  v33 = v17;
  if (v34 == 1)
  {
    if (v17)
    {
LABEL_3:
      v18 = 0;
      goto LABEL_6;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v31 = v9;
    v19 = static Log.runtimeIssuesLog.getter();
    v30 = v10;
    v20 = a1;
    v21 = v19;
    v9 = v31;
    os_log(_:dso:log:_:_:)();

    a1 = v20;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003970C(&v33, &qword_100100C68);
    (*(v11 + 8))(v13, v30);
    if (v32)
    {
      goto LABEL_3;
    }
  }

  v18 = static Animation.default.getter();
LABEL_6:
  (*(v7 + 16))(v9, a1, v6);
  Bindable.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  v22 = v32;
  v23 = sub_100031AB4();

  if (v23)
  {
    v24 = [v23 icons];

    sub_10008DD9C();
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v25 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v26 = 0;
  }

  sub_10004D640(v16, a3, &qword_100101C68);
  result = sub_100030C14(&qword_100101C70);
  v28 = a3 + *(result + 36);
  *v28 = v18;
  *(v28 + 8) = v26;
  *(v28 + 16) = v23 == 0;
  return result;
}

uint64_t sub_10008D5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for MoveTransition();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = __chkstk_darwin(v3);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v41 = &v38 - v6;
  v7 = sub_100030C14(&qword_100101C78);
  v8 = *(v7 - 8);
  v44 = v7;
  v45 = v8;
  __chkstk_darwin(v7);
  v39 = (&v38 - v9);
  v10 = sub_100030C14(&qword_100101C08);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  v17 = *(v11 + 16);
  v18 = a1;
  v17(&v38 - v15, a1, v10);
  Bindable.wrappedValue.getter();
  v19 = *(v11 + 8);
  v19(v16, v10);
  v20 = v47;
  v21 = sub_100031AB4();

  if (v21)
  {

    v17(v14, v18, v10);
    Bindable.projectedValue.getter();
    v19(v14, v10);
    swift_getKeyPath();
    Bindable<A>.subscript.getter();

    v19(v16, v10);
    v22 = v39;
    sub_1000660C8(v47, v48, v49, v39);
    v23 = v41;
    MoveTransition.init(edge:)();
    v25 = v42;
    v24 = v43;
    (*(v42 + 16))(v40, v23, v43);
    sub_10008DDE8(&qword_100100B18, &type metadata accessor for MoveTransition);
    v26 = AnyTransition.init<A>(_:)();
    (*(v25 + 8))(v23, v24);
    *(v22 + *(sub_100030C14(&unk_100101C80) + 36)) = v26;
    LOBYTE(v26) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v27 = v44;
    v28 = v22 + *(v44 + 36);
    *v28 = v26;
    *(v28 + 1) = v29;
    *(v28 + 2) = v30;
    *(v28 + 3) = v31;
    *(v28 + 4) = v32;
    v28[40] = 0;
    v33 = v46;
    sub_10004D640(v22, v46, &qword_100101C78);
    v34 = 0;
    v35 = v33;
    v36 = v27;
  }

  else
  {
    v34 = 1;
    v35 = v46;
    v36 = v44;
  }

  return (*(v45 + 56))(v35, v34, 1, v36);
}

uint64_t sub_10008D9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for IconCustomizationModel();
  sub_10008DDE8(&qword_1000FF2A0, type metadata accessor for IconCustomizationModel);
  v6 = Environment.init<A>(_:)();
  v8 = v7;
  result = swift_getKeyPath();
  *a3 = v6;
  *(a3 + 8) = v8 & 1;
  *(a3 + 16) = result;
  *(a3 + 24) = 0;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_10008DAA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10008DAEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10008DB4C()
{
  result = qword_100101C28;
  if (!qword_100101C28)
  {
    sub_10003B1B8(&qword_100101C20);
    sub_10008DBD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101C28);
  }

  return result;
}

unint64_t sub_10008DBD8()
{
  result = qword_100101C30;
  if (!qword_100101C30)
  {
    sub_10003B1B8(&qword_100101C10);
    sub_10008DC90();
    sub_10003D450(&qword_100101C60, &qword_100101C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101C30);
  }

  return result;
}

unint64_t sub_10008DC90()
{
  result = qword_100101C38;
  if (!qword_100101C38)
  {
    sub_10003B1B8(&qword_100101C40);
    sub_10008DD48();
    sub_10003D450(&qword_100101C50, &qword_100101C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101C38);
  }

  return result;
}

unint64_t sub_10008DD48()
{
  result = qword_100101C48;
  if (!qword_100101C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101C48);
  }

  return result;
}

unint64_t sub_10008DD9C()
{
  result = qword_1000FF308;
  if (!qword_1000FF308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000FF308);
  }

  return result;
}

uint64_t sub_10008DDE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_10008DE4C()
{
  if (qword_100105278 != -1)
  {
    swift_once();
  }

  return &qword_100105400;
}

uint64_t sub_10008DEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_10008E230();

  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

uint64_t *sub_10008DF5C()
{
  if (qword_100105280 != -1)
  {
    swift_once();
  }

  return &qword_100105408;
}

uint64_t sub_10008E070(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = type metadata accessor for Logger();
  sub_100060BCC(v7, a2);
  sub_10005DB08(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return Logger.init(_:)();
}

uint64_t sub_10008E120(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return sub_10005DB08(v3, a2);
}

uint64_t sub_10008E198@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_10005DB08(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t sub_10008E230()
{
  result = qword_1000FF690;
  if (!qword_1000FF690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000FF690);
  }

  return result;
}

char *CARDevicePickerManager.init(pairedDevices:carSession:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC15CarPlaySettings22CARDevicePickerManager_carSession] = a2;
  type metadata accessor for CAFUIRequestContentManager();
  swift_allocObject();
  v5 = a2;
  CAFUIRequestContentManager.init(session:)();
  v6 = objc_allocWithZone(type metadata accessor for CAFUIDevicePickerViewController());
  v7 = v5;

  v8 = a1;
  *&v2[OBJC_IVAR____TtC15CarPlaySettings22CARDevicePickerManager_viewController] = CAFUIDevicePickerViewController.init(requestContentManager:pairedDevices:carSession:)();
  v16.receiver = v2;
  v16.super_class = type metadata accessor for CARDevicePickerManager();
  v9 = objc_msgSendSuper2(&v16, "init");
  v10 = *&v9[OBJC_IVAR____TtC15CarPlaySettings22CARDevicePickerManager_viewController];
  sub_10008FCCC(&unk_100101CA0, v11, type metadata accessor for CARDevicePickerManager);
  v12 = v9;
  v13 = v10;
  dispatch thunk of CAFUIDevicePickerViewController.delegate.setter();

  v14 = [v8 pairedDevicesAction];
  [v14 registerObserver:v12];

  return v12;
}

id CARDevicePickerManager.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15CarPlaySettings22CARDevicePickerManager_viewController];
  dispatch thunk of CAFUIDevicePickerViewController.delegate.setter();

  v4.receiver = v1;
  v4.super_class = type metadata accessor for CARDevicePickerManager();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void CARDevicePickerManager.shouldRequest(action:for:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for CAFDeviceAction();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = [objc_opt_self() sharedDelegate];
  if (!v13)
  {
    __break(1u);
    goto LABEL_28;
  }

  v14 = v13;
  v15 = [v13 carManager];

  if (!v15)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v16 = [v15 currentCar];

  if (v16)
  {
    v17 = [v16 pairedDevices];

    if (v17)
    {
      v53 = v10;
      v51 = sub_1000317B8(0, &qword_1000FF690);
      v18 = static OS_os_log.default.getter();
      v19 = *(v7 + 16);
      v52 = a1;
      v19(v12);
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v20))
      {
        v21 = swift_slowAlloc();
        v50 = v17;
        v22 = v21;
        v45 = swift_slowAlloc();
        aBlock = v45;
        *v22 = 136315394;
        v48 = v19;
        v23 = CAFDeviceAction.rawValue.getter();
        v49 = a2;
        v25 = v24;
        v46 = *(v7 + 8);
        v47 = a3;
        v46(v12, v6);
        v26 = sub_100037824(v23, v25, &aBlock);
        v27 = v47;
        v28 = v49;

        *(v22 + 4) = v26;
        v19 = v48;
        *(v22 + 12) = 2080;
        a2 = v28;
        v29 = v28;
        a3 = v27;
        *(v22 + 14) = sub_100037824(v29, v27, &aBlock);
        _os_log_impl(&_mh_execute_header, v18, v20, "Sending request for action: %s, device: %s.", v22, 0x16u);
        swift_arrayDestroy();

        v17 = v50;

        v30 = v46;
      }

      else
      {

        v30 = *(v7 + 8);
        v30(v12, v6);
      }

      v31 = [v17 pairedDevicesAction];
      v32 = v53;
      (v19)(v53, v52, v6);
      v33 = (*(v7 + 88))(v32, v6);
      if (v33 == enum case for CAFDeviceAction.ready(_:))
      {
        CAFUIDevicePickerViewController.resetSpinningCellAndUserInteraction()();
LABEL_24:

        goto LABEL_25;
      }

      if (v33 == enum case for CAFDeviceAction.connectRequest(_:))
      {
        if ([v31 hasConnectDevice])
        {
          v34 = String._bridgeToObjectiveC()();
          v35 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v36 = swift_allocObject();
          v36[2] = v35;
          v36[3] = a2;
          v36[4] = a3;
          v58 = sub_10008F688;
          v59 = v36;
          aBlock = _NSConcreteStackBlock;
          v55 = 1107296256;
          v56 = sub_10008EDC8;
          v57 = &unk_1000DE188;
          v37 = _Block_copy(&aBlock);

          [v31 connectDeviceWithIdentifier:v34 completion:v37];
LABEL_19:

          _Block_release(v37);
          v31 = v34;
LABEL_25:

          return;
        }
      }

      else if (v33 == enum case for CAFDeviceAction.disconnectRequest(_:))
      {
        if ([v31 hasDisconnectDevice])
        {
          v34 = String._bridgeToObjectiveC()();
          v38 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v39 = swift_allocObject();
          v39[2] = v38;
          v39[3] = a2;
          v39[4] = a3;
          v58 = sub_10008F630;
          v59 = v39;
          aBlock = _NSConcreteStackBlock;
          v55 = 1107296256;
          v56 = sub_10008EDC8;
          v57 = &unk_1000DE138;
          v37 = _Block_copy(&aBlock);

          [v31 disconnectDeviceWithIdentifier:v34 completion:v37];
          goto LABEL_19;
        }
      }

      else if (v33 == enum case for CAFDeviceAction.forgetPhoneRequest(_:))
      {
        if ([v31 hasForgetDevice])
        {
          v34 = String._bridgeToObjectiveC()();
          v40 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v41 = swift_allocObject();
          v41[2] = v40;
          v41[3] = a2;
          v41[4] = a3;
          v58 = sub_10008F1BC;
          v59 = v41;
          aBlock = _NSConcreteStackBlock;
          v55 = 1107296256;
          v56 = sub_10008EDC8;
          v57 = &unk_1000DE0E8;
          v37 = _Block_copy(&aBlock);

          [v31 forgetDeviceWithIdentifier:v34 completion:v37];
          goto LABEL_19;
        }
      }

      else
      {
        v30(v32, v6);
      }

      v42 = static OS_os_log.default.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Device action not supported.", v44, 2u);
      }

      goto LABEL_24;
    }
  }
}

void sub_10008EDC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10008EE34(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000317B8(0, &unk_1000FF9C0);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_10008FB9C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000416D4;
  aBlock[3] = &unk_1000DE250;
  v13 = _Block_copy(aBlock);
  swift_errorRetain();
  v14 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10008FCCC(&unk_100101D50, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100030C14(&unk_1000FF9D0);
  sub_100043C98();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

void sub_10008F108(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10008F184()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_10008F1BC(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  if (a1)
  {
    sub_1000317B8(0, &qword_1000FF690);
    swift_errorRetain();
    v7 = static OS_os_log.default.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {

      goto LABEL_9;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_100037824(v3, v4, aBlock);
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "Forget device: %s failed with error: %@", v9, 0x16u);
    sub_10003ACC8(v10);

    sub_100038D70(v11);
  }

  else
  {
    sub_1000317B8(0, &qword_1000FF690);
    v7 = static OS_os_log.default.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_100037824(v3, v4, aBlock);
      _os_log_impl(&_mh_execute_header, v7, v13, "Forget device: %s succeeded", v14, 0xCu);
      sub_100038D70(v15);
    }
  }

LABEL_9:
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  v17 = *&v6[OBJC_IVAR____TtC15CarPlaySettings22CARDevicePickerManager_carSession];
  v18 = v6;
  v19 = [v17 MFiCertificateSerialNumber];
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = [objc_allocWithZone(CRPairedVehicleManager) init];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v25 = [v23 vehicleForCertificateSerial:isa];

  if (v25)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = sub_10008F958;
    *(v26 + 24) = v16;
    aBlock[4] = sub_10008F998;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10008F108;
    aBlock[3] = &unk_1000DE200;
    v27 = _Block_copy(aBlock);

    [v23 removeVehicle:v25 completion:v27];
    _Block_release(v27);
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_1000317B8(0, &qword_1000FF690);
    v25 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  sub_100031970(v20, v22);
}

uint64_t sub_10008F618(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008F648()
{

  return swift_deallocObject();
}

void sub_10008F69C(uint64_t a1, const char *a2, const char *a3)
{
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a1)
    {
      sub_1000317B8(0, &qword_1000FF690);
      swift_errorRetain();
      v11 = static OS_os_log.default.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v22 = v15;
        *v13 = 136315394;
        *(v13 + 4) = sub_100037824(v7, v8, &v22);
        *(v13 + 12) = 2112;
        swift_errorRetain();
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 14) = v16;
        *v14 = v16;
        _os_log_impl(&_mh_execute_header, v11, v12, a2, v13, 0x16u);
        sub_10003ACC8(v14);

        sub_100038D70(v15);
      }

      v17 = *&v10[OBJC_IVAR____TtC15CarPlaySettings22CARDevicePickerManager_viewController];
      CAFUIDevicePickerViewController.resetSpinningCellAndUserInteraction()();
    }

    else
    {
      sub_1000317B8(0, &qword_1000FF690);
      v18 = static OS_os_log.default.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_100037824(v7, v8, &v22);
        _os_log_impl(&_mh_execute_header, v18, v19, a3, v20, 0xCu);
        sub_100038D70(v21);
      }
    }
  }
}

uint64_t sub_10008F920()
{

  return swift_deallocObject();
}

uint64_t sub_10008F960()
{

  return swift_deallocObject();
}

uint64_t sub_10008F998(char a1, uint64_t a2)
{
  v3 = a2;
  v5 = *(v2 + 16);
  if ((a1 & 1) == 0 || a2)
  {
    v9 = static os_log_type_t.error.getter();
    sub_1000317B8(0, &qword_1000FF690);
    v6 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v6, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      if (v3)
      {
        swift_errorRetain();
        v12 = _swift_stdlib_bridgeErrorToNSError();
        v13 = v12;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *(v10 + 4) = v12;
      *v11 = v13;
      *(v10 + 12) = 1024;
      *(v10 + 14) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v6, v9, "Issue when trying to remove car: %@, success: %{BOOL}d.", v10, 0x12u);
      sub_10003ACC8(v11);

      goto LABEL_10;
    }
  }

  else
  {
    sub_1000317B8(0, &qword_1000FF690);
    v6 = static OS_os_log.default.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Car removed", v8, 2u);
      v3 = 0;
LABEL_10:
    }
  }

  return v5(v3);
}

uint64_t sub_10008FB5C()
{

  return swift_deallocObject();
}

void sub_10008FB9C()
{
  if (*(v0 + 16))
  {
    swift_errorRetain();
    v1 = static os_log_type_t.error.getter();
    sub_1000317B8(0, &qword_1000FF690);
    v2 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v2, v1))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, v2, v1, "Unable to remove car pairing: %@", v3, 0xCu);
      sub_10003ACC8(v4);
    }

    else
    {
    }
  }

  CAFUIDevicePickerViewController.resetSpinningCellAndUserInteraction()();
}

uint64_t sub_10008FCCC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10008FD4C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100105328 = result;
  return result;
}

uint64_t sub_100090190(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ColorResource();
  sub_100060BCC(v3, a2);
  sub_10005DB08(v3, a2);
  if (qword_100105320 != -1)
  {
    swift_once();
  }

  v4 = qword_100105328;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1000902AC()
{
  v0 = type metadata accessor for ImageResource();
  sub_100060BCC(v0, qword_100105500);
  sub_10005DB08(v0, qword_100105500);
  if (qword_100105320 != -1)
  {
    swift_once();
  }

  v1 = qword_100105328;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1000903C4()
{
  v0 = type metadata accessor for ImageResource();
  sub_100060BCC(v0, qword_100105518);
  sub_10005DB08(v0, qword_100105518);
  if (qword_100105320 != -1)
  {
    swift_once();
  }

  v1 = qword_100105328;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1000904DC()
{
  v0 = type metadata accessor for ImageResource();
  sub_100060BCC(v0, qword_100105530);
  sub_10005DB08(v0, qword_100105530);
  if (qword_100105320 != -1)
  {
    swift_once();
  }

  v1 = qword_100105328;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1000905BC(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_10005DB08(v4, a3);
}

uint64_t sub_100090654@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_10005DB08(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

void sub_10009073C(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[Settings] #DEBUG [LIFECYCLE] CARRootPanel INIT - Object created at %p", &v2, 0xCu);
}

void sub_1000907B4(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[Settings] #DEBUG [LIFECYCLE] CARRootPanel DEALLOC - Object %p being deallocated", &v2, 0xCu);
}

void sub_1000908A0(void *a1, void *a2, NSObject *a3)
{
  *v3 = 134349312;
  *&v3[4] = *a1;
  *&v3[12] = 2050;
  *&v3[14] = *a2;
  sub_100006ABC(&_mh_execute_header, a2, a3, "[Settings] #DEBUG [LIFECYCLE] CARAnnounceNotificationsPanel INIT - Counters initialized: siri=%{public}ld, userNotifications=%{public}ld", *v3, *&v3[8], *&v3[16]);
}

void sub_100090A64()
{
  sub_100006A34();
  [v1 userNotificationsCallbackInvocationCount];
  [v0 pendingAnnounceEnablementChangeFromSiri];
  [v0 pendingAnnounceEnablementChangeFromUserNotifications];
  sub_100006A5C();
  sub_100006A0C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x22u);
}

void sub_100090B04()
{
  sub_100006A34();
  [*(v1 + 32) userNotificationsCallbackInvocationCount];
  [*(v0 + 32) pendingAnnounceEnablementChangeFromSiri];
  [*(v0 + 32) pendingAnnounceEnablementChangeFromUserNotifications];
  sub_1000069EC();
  sub_100006A0C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100090C10()
{
  sub_100006A34();
  [*v1 userNotificationsCallbackInvocationCount];
  [*v0 pendingAnnounceEnablementChangeFromSiri];
  [*v0 pendingAnnounceEnablementChangeFromUserNotifications];
  sub_1000069EC();
  sub_100006A0C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100090CB4()
{
  v0 = AFSiriCarPlayAnnounceEnablementTypeGetName();
  sub_100006A88();
  sub_100006A0C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100090D40()
{
  sub_100006A34();
  [v1 siriCallbackInvocationCount];
  [v0 pendingAnnounceEnablementChangeFromSiri];
  [v0 pendingAnnounceEnablementChangeFromUserNotifications];
  sub_100006A5C();
  sub_100006A0C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x22u);
}

void sub_100090DE0()
{
  sub_100006A34();
  [*(v1 + 32) siriCallbackInvocationCount];
  [*(v0 + 32) pendingAnnounceEnablementChangeFromSiri];
  [*(v0 + 32) pendingAnnounceEnablementChangeFromUserNotifications];
  sub_1000069EC();
  sub_100006A0C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100090EEC()
{
  sub_100006A34();
  [*v1 siriCallbackInvocationCount];
  [*v0 pendingAnnounceEnablementChangeFromSiri];
  [*v0 pendingAnnounceEnablementChangeFromUserNotifications];
  sub_1000069EC();
  sub_100006A0C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100090F90(char a1, NSObject *a2)
{
  v2[0] = 67240192;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[Settings] #DEBUG ===== NEW UPDATE CYCLE STARTED: enabled=%{public}d =====", v2, 8u);
}

void sub_100091080()
{
  sub_100006A34();
  [v1 siriCallbackInvocationCount];
  [v0 userNotificationsCallbackInvocationCount];
  sub_100006A0C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100091124()
{
  sub_100006A34();
  [v0 pendingAnnounceEnablementChangeFromSiri];
  sub_100006ADC();
  sub_100006A1C();
  sub_100006A0C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_1000911E4()
{
  sub_100006A34();
  [v0 pendingAnnounceEnablementChangeFromSiri];
  sub_100006ADC();
  sub_100006A1C();
  sub_100006A0C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_1000912D8()
{
  sub_100006A34();
  [v0 pendingAnnounceEnablementChangeFromSiri];
  sub_100006ADC();
  sub_100006A1C();
  sub_100006A0C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_100091364()
{
  sub_100006A34();
  [v0 pendingAnnounceEnablementChangeFromSiri];
  sub_100006ADC();
  sub_100006A1C();
  sub_100006A0C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_10009155C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[Settings] Error saving vehicle: %{public}@", &v2, 0xCu);
}

void sub_1000915D4(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 carSession];
  v6 = v5;
  v7 = @"Yes";
  if (!a2)
  {
    v7 = @"No";
  }

  v8 = 138412546;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[Settings] Error loading vehicle from session %@ (serial present: %{public}@)", &v8, 0x16u);
}

void sub_1000918B8(uint64_t a1, NSObject *a2)
{
  v3 = [NSNumber numberWithUnsignedInteger:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[Settings] Unrecognized analytics event %@", &v4, 0xCu);
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

uint64_t Binding.init(get:set:)()
{
  return Binding.init(get:set:)();
}

{
  return Binding.init(get:set:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}