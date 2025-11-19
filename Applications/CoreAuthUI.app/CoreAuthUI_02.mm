unint64_t sub_100051528()
{
  result = qword_1000AF918;
  if (!qword_1000AF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF918);
  }

  return result;
}

unint64_t sub_100051584()
{
  result = qword_1000AF920;
  if (!qword_1000AF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF920);
  }

  return result;
}

unint64_t sub_1000515DC()
{
  result = qword_1000AF928;
  if (!qword_1000AF928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF928);
  }

  return result;
}

uint64_t sub_100051640(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100051678(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000AF930, &qword_100078B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000516E0(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000AF940, &qword_100078B90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000282B4(&qword_1000AF938, &qword_100078B88);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000518BC(v10, v6);
      v12 = *v6;
      v13 = v6[1];
      result = sub_10002AC0C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Logger();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
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

uint64_t sub_1000518BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000282B4(&qword_1000AF940, &qword_100078B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

CGFloat sub_1000519B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D2>, double a4@<D3>)
{
  v6 = sin(a4 * 3.14159265 * a1);
  CGAffineTransformMakeTranslation(&v10, v6 * a3, 0.0);
  result = v10.a;
  v8 = *&v10.c;
  v9 = *&v10.tx;
  *a2 = *&v10.a;
  *(a2 + 16) = 0;
  *(a2 + 24) = v8;
  *(a2 + 40) = 0;
  *(a2 + 48) = v9;
  *(a2 + 64) = 0x3FF0000000000000;
  return result;
}

unint64_t sub_100051A3C()
{
  result = qword_1000AF948;
  if (!qword_1000AF948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF948);
  }

  return result;
}

unint64_t sub_100051A94()
{
  result = qword_1000AF950;
  if (!qword_1000AF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF950);
  }

  return result;
}

CGFloat sub_100051AE8@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sin(*(v1 + 16) * 3.14159265 * *(v1 + 8));
  CGAffineTransformMakeTranslation(&v8, v3 * v4, 0.0);
  result = v8.a;
  v6 = *&v8.c;
  v7 = *&v8.tx;
  *a1 = *&v8.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v6;
  *(a1 + 40) = 0;
  *(a1 + 48) = v7;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

unint64_t sub_100051B74()
{
  result = qword_1000AF958;
  if (!qword_1000AF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF958);
  }

  return result;
}

double sub_100051BC8@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

double sub_100051BD4(double *a1)
{
  result = *a1;
  *(v1 + 16) = *a1;
  return result;
}

uint64_t sub_100051BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100051DBC();

  return static GeometryEffect._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

uint64_t sub_100051C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100051DBC();

  return static GeometryEffect._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

__n128 initializeBufferWithCopyOfBuffer for Shake(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Shake(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Shake(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_100051DBC()
{
  result = qword_1000AF960;
  if (!qword_1000AF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF960);
  }

  return result;
}

void sub_100051E10(void *a1)
{
  v2 = v1;
  v4 = [a1 userInterfaceRequest];
  v5 = [v4 identifier];

  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 != 5)
      {
        goto LABEL_13;
      }

      v8 = objc_opt_self();
      if ([v8 deviceHasFaceID])
      {
        v9 = &LACBiometryTypeFaceID;
      }

      else if ([v8 deviceHasTouchID])
      {
        v9 = &LACBiometryTypeTouchID;
      }

      else
      {
        v20 = [v8 deviceHasOpticID];
        v9 = &LACBiometryTypeNone;
        if (v20)
        {
          v9 = &LACBiometryTypeOpticID;
        }
      }

      v21 = *v9;
      v22 = sub_100003C40();
      v23 = objc_allocWithZone(type metadata accessor for LACUIDTOBiometryRequiredScenePresentationHandler());
      v7 = LACUIDTOBiometryRequiredScenePresentationHandler.init(biometryType:alertFactory:)();
      if (!v7)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }

    v11 = objc_allocWithZone(type metadata accessor for LACUIOnenessUnsatisfiablePresentationHandler());
    v12 = a1;
    v7 = LACUIOnenessUnsatisfiablePresentationHandler.init(request:)();
    if (v7)
    {
      goto LABEL_19;
    }

LABEL_13:
    v13 = [v2 scene];
    _StringGuts.grow(_:)(24);

    v14 = [a1 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    v19._countAndFlagsBits = 0x756F6620746F6E20;
    v19._object = 0xEA0000000000646ELL;
    String.append(_:)(v19);
    v24 = String._bridgeToObjectiveC()();

    [v13 deactivateWithReason:v24];
    goto LABEL_20;
  }

  if (v5 == 1)
  {
    v10 = objc_allocWithZone(type metadata accessor for LACUIDTOSensorNotTrustedScenePresentationHandler());
    v7 = LACUIDTOSensorNotTrustedScenePresentationHandler.init()();
    if (v7)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (v5 != 2)
  {
    goto LABEL_13;
  }

  v6 = objc_allocWithZone(type metadata accessor for LACUIDTOSensorNotTrustedStrictModeScenePresentationHandler());
  v7 = LACUIDTOSensorNotTrustedStrictModeScenePresentationHandler.init()();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_19:
  v24 = [objc_allocWithZone(LACUIScenePresentationContext) initWithPresenter:v2 scene:{objc_msgSend(v2, "scene")}];
  swift_unknownObjectRelease();
  [v7 handle:a1 inContext:v24];
LABEL_20:
  swift_unknownObjectRelease();
}

id sub_10005211C(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithScene:a1];
  swift_unknownObjectRelease();
  return v2;
}

id sub_100052164(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RemoteAlertRootViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithScene:", a1);
  swift_unknownObjectRelease();
  return v3;
}

id sub_100052200(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for RemoteAlertRootViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_100052320(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RemoteAlertRootViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100052400()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertRootViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100052458()
{
  result = [objc_allocWithZone(SecureUIManager) init];
  qword_1000B1028 = result;
  return result;
}

id sub_100052540()
{
  if (qword_1000B1020 != -1)
  {
    swift_once();
  }

  v0 = qword_1000B1028;

  return v0;
}

uint64_t sub_1000525E4()
{
  v1 = OBJC_IVAR___SecureUIManager_isRecording;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10005268C(char a1)
{
  v3 = OBJC_IVAR___SecureUIManager_isRecording;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1000526E0();
}

void sub_1000526E0()
{
  v1 = [v0 controllers];
  v2 = [v1 allObjects];

  sub_1000282B4(&qword_1000AFA28, &qword_100078CE8);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v6 setIsRecording:{objc_msgSend(v0, "isRecording")}];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

char *sub_1000528A8(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  type metadata accessor for SecureUIControllerDynamicIsland();
  swift_unknownObjectRetain();
  v9 = sub_100035EA8(v8, a2, a3);
  v10 = v9;
  [v10 setIsRecording:{objc_msgSend(v4, "isRecording")}];
  v11 = [v4 controllers];
  [v11 addObject:v10];

  return v9;
}

unint64_t type metadata accessor for SecureUIManager()
{
  result = qword_1000B1030;
  if (!qword_1000B1030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B1030);
  }

  return result;
}

id sub_100052A9C(void *a1)
{
  if (a1)
  {

    return a1;
  }

  else
  {
    type metadata accessor for AuthorizationViewModel();
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100052B1C()
{
  type metadata accessor for AuthorizationViewModel();
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);

  return EnvironmentObject.projectedValue.getter();
}

uint64_t sub_100052BA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002B4A4(0, &qword_1000AF5C0, UIDevice_ptr);
  if (sub_100069D50())
  {
    goto LABEL_4;
  }

  if (a1)
  {
    v4 = a1;
    sub_1000624A4();

LABEL_4:
    type metadata accessor for AuthorizationViewModel();
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
    EnvironmentObject.init()();
    sub_100052D68();
    sub_100052DBC();
    result = _ConditionalContent<>.init(storage:)();
    *a2 = v6;
    *(a2 + 16) = v7;
    return result;
  }

  type metadata accessor for AuthorizationViewModel();
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

unint64_t sub_100052D68()
{
  result = qword_1000B1040;
  if (!qword_1000B1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B1040);
  }

  return result;
}

unint64_t sub_100052DBC()
{
  result = qword_1000B1048[0];
  if (!qword_1000B1048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1048);
  }

  return result;
}

uint64_t sub_100052E10()
{
  type metadata accessor for AuthorizationViewModel();
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);

  return EnvironmentObject.init()();
}

__n128 sub_100052EA8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_100052EC8()
{
  result = qword_1000AFA30;
  if (!qword_1000AFA30)
  {
    sub_10002CC44(&qword_1000AFA38, &unk_100078DA0);
    sub_100052D68();
    sub_100052DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA30);
  }

  return result;
}

void sub_100052F98(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000282B4(&qword_1000AFAF0, &qword_100078F00);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  type metadata accessor for AuthorizationViewModel();
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
  v11 = EnvironmentObject.init()();
  if (a1)
  {
    v13 = v11;
    v14 = v12;
    v15 = a1;
    v16 = sub_10005E784();

    if (v16)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = 0.0;
    }

    *v10 = static HorizontalAlignment.center.getter();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v18 = sub_1000282B4(&qword_1000AFAF8, &qword_100078F08);
    sub_1000531E8(a1, &v10[*(v18 + 44)]);
    sub_100034F7C(v10, v8, &qword_1000AFAF0, &qword_100078F00);
    *a2 = v13;
    *(a2 + 8) = v14;
    *(a2 + 16) = sub_1000531C0;
    *(a2 + 24) = 0;
    *(a2 + 32) = v17;
    v19 = sub_1000282B4(&qword_1000AFB00, &qword_100078F10);
    sub_100034F7C(v8, a2 + *(v19 + 48), &qword_1000AFAF0, &qword_100078F00);
    v20 = v13;
    sub_10002B444(v10, &qword_1000AFAF0, &qword_100078F00);
    sub_10002B444(v8, &qword_1000AFAF0, &qword_100078F00);
  }

  else
  {
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1000531E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for MoveTransition();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  v37 = sub_1000282B4(&qword_1000AFB08, &qword_100078F18);
  v11 = *(v37 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v37);
  v14 = (&v37 - v13);
  v15 = sub_1000282B4(&qword_1000AFB10, &qword_100078F20);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v37 - v20;
  v22 = a1;
  v23 = sub_10005E784();

  if (v23)
  {
    type metadata accessor for AuthorizationViewModel();
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
    v24 = EnvironmentObject.init()();
    v26 = v25;
    MoveTransition.init(edge:)();
    (*(v4 + 16))(v8, v10, v3);
    sub_10005B42C(&qword_1000AFB20, &type metadata accessor for MoveTransition);
    v27 = AnyTransition.init<A>(_:)();
    (*(v4 + 8))(v10, v3);
    v28 = v14 + *(sub_1000282B4(&qword_1000AFB28, &qword_100078F30) + 36);
    static Material.thick.getter();
    v29 = static Edge.Set.all.getter();
    v28[*(sub_1000282B4(&qword_1000AFB30, &qword_100078F38) + 36)] = v29;
    *v14 = v24;
    v14[1] = v26;
    v14[2] = v27;
    v30 = static SafeAreaRegions.container.getter();
    v31 = static Edge.Set.bottom.getter();
    v32 = v37;
    v33 = v14 + *(v37 + 36);
    *v33 = v30;
    v33[8] = v31;
    sub_10005AE14(v14, v21, &qword_1000AFB08, &qword_100078F18);
    (*(v11 + 56))(v21, 0, 1, v32);
  }

  else
  {
    (*(v11 + 56))(v21, 1, 1, v37);
  }

  sub_100034F7C(v21, v19, &qword_1000AFB10, &qword_100078F20);
  v34 = v38;
  *v38 = 0;
  *(v34 + 8) = 1;
  v35 = sub_1000282B4(&qword_1000AFB18, &qword_100078F28);
  sub_100034F7C(v19, v34 + *(v35 + 48), &qword_1000AFB10, &qword_100078F20);
  sub_10002B444(v21, &qword_1000AFB10, &qword_100078F20);
  return sub_10002B444(v19, &qword_1000AFB10, &qword_100078F20);
}

uint64_t sub_1000535F8(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  v3 = *(v16 + 64);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
    sub_10005E7C0();
    sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
    v11 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();

    aBlock[4] = sub_100054F88;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002B620;
    aBlock[3] = &unk_100098698;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10005B42C(&qword_1000AE800, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
    sub_100034E8C(&qword_1000AE810, &unk_1000AF5B0, &unk_100079C60);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v16 + 8))(v5, v2);
    return (*(v6 + 8))(v9, v15);
  }

  else
  {
    type metadata accessor for AuthorizationViewModel();
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

id sub_100053968@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v10 = v3;
  *a1 = static Alignment.center.getter();
  a1[1] = v5;
  v6 = sub_1000282B4(&qword_1000AFAE0, &qword_100078EE8);
  sub_100052F98(v10, a1 + *(v6 + 44));
  v7 = swift_allocObject();
  *(v7 + 16) = v10;
  *(v7 + 24) = v4;
  v8 = (a1 + *(sub_1000282B4(&qword_1000AFAE8, &unk_100078EF0) + 36));
  *v8 = sub_100054EAC;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;

  return v10;
}

unsigned __int8 *sub_100053A54@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = static Alignment.center.getter();
  v8 = v7;
  sub_100053B4C(a1, a2, &v15);
  v14 = v15;
  v9 = v16;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v14;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = v9;
  *(a3 + 56) = sub_100054614;
  *(a3 + 64) = v10;
  *(a3 + 72) = sub_100054754;
  *(a3 + 80) = v11;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  v12 = a1;

  return v12;
}

void sub_100053B4C(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Material();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000282B4(&qword_1000AFA40, &qword_100078E90);
  v10 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v12 = &v44 - v11;
  v13 = sub_1000282B4(&qword_1000AFA48, &qword_100078E98);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v44 - v15;
  v44 = sub_1000282B4(&qword_1000AFA50, &qword_100078EA0);
  v17 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v19 = &v44 - v18;
  v20 = sub_1000282B4(&qword_1000AFA58, &qword_100078EA8);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v24 = &v44 - v23;
  if (a1)
  {
    v45 = v22;
    v48 = v6;
    v49 = a3;
    if (a1[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad])
    {
      type metadata accessor for AuthorizationViewModel();
      sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
      v25 = a1;
      v26 = EnvironmentObject.init()();
      v28 = v27;
      v29 = v26;
    }

    else
    {
      v26 = a1;
      v28 = 0;
      v29 = 1;
    }

    v30 = v26;
    *v16 = static HorizontalAlignment.center.getter();
    *(v16 + 1) = 0;
    v16[16] = 1;
    v31 = sub_1000282B4(&qword_1000AFA60, &qword_100078EB0);
    sub_100054068(a1, a2, &v16[*(v31 + 44)]);
    static Material.thick.getter();
    v32 = a1[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad];

    if (v32 == 1)
    {
      v33 = sub_1000624A4();

      v34 = 1.0;
      if (!v33)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v34 = 0.0;
LABEL_10:
    (*(v47 + 32))(v12, v9, v48);
    *&v12[*(v46 + 36)] = v34;
    v35 = static Edge.Set.all.getter();
    v36 = &v19[*(v44 + 36)];
    sub_10005AE14(v12, v36, &qword_1000AFA40, &qword_100078E90);
    *(v36 + *(sub_1000282B4(&qword_1000AFA68, &qword_100078EB8) + 36)) = v35;
    sub_10005AE14(v16, v19, &qword_1000AFA48, &qword_100078E98);
    v37 = sub_100061FA4();

    v38 = &v24[*(v45 + 36)];
    v39 = *(type metadata accessor for RoundedRectangle() + 20);
    v40 = enum case for RoundedCornerStyle.continuous(_:);
    v41 = type metadata accessor for RoundedCornerStyle();
    (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
    *v38 = v37;
    v38[1] = v37;
    *(v38 + *(sub_1000282B4(&qword_1000AFA70, &qword_100078EC0) + 36)) = 256;
    sub_10005AE14(v19, v24, &qword_1000AFA50, &qword_100078EA0);
    v42 = sub_1000543C0();
    sub_10002B444(v24, &qword_1000AFA58, &qword_100078EA8);
    sub_10005482C(v29);

    sub_10005483C(v29);
    v43 = v49;
    *v49 = v29;
    v43[1] = v28;
    v43[2] = v42;

    sub_10005483C(v29);
    return;
  }

  type metadata accessor for AuthorizationViewModel();
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
  EnvironmentObject.error()();
  __break(1u);
}

uint64_t sub_100054068@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AuthorizationHeaderView();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = (&v33 - v11);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  type metadata accessor for AuthorizationViewModel();
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
  v14 = a1;
  *v12 = EnvironmentObject.init()();
  v12[1] = v15;
  v12[2] = sub_100054C24;
  v12[3] = v13;
  v16 = *(v7 + 32);
  *&v43 = 0x4034000000000000;
  sub_100054C28();
  ScaledMetric.init(wrappedValue:)();
  v17 = v14;
  v36 = sub_1000624A4();
  LOBYTE(v14) = sub_100062894();
  v18 = EnvironmentObject.init()();
  v20 = v18;
  v21 = v19;
  if (v14)
  {
    v38 = v18;
    v39 = v19;
    sub_100054C7C();
    sub_100054CD0();
    v41 = 0;
    v40 = 0uLL;
    v42 = 0;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    State.init(wrappedValue:)();
    v38 = v20;
    v39 = v21;
    v40 = v43;
    v41 = v44;
    v42 = 1;
    sub_100054C7C();
    sub_100054CD0();
  }

  _ConditionalContent<>.init(storage:)();
  v22 = v45;
  v23 = v46;
  v33 = v44;
  v34 = v43;
  v24 = v43;
  v25 = v44;
  sub_100054D24(v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46);
  v35 = sub_1000624A4();

  v26 = v37;
  sub_100054D88(v12, v37);
  sub_100054D88(v26, a3);
  v27 = sub_1000282B4(&qword_1000AFAD8, &qword_100078EE0);
  v28 = a3 + v27[12];
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 9) = !v36;
  v29 = a3 + v27[16];
  v30 = v33;
  *v29 = v34;
  *(v29 + 16) = v30;
  *(v29 + 32) = v22;
  *(v29 + 40) = v23;
  v31 = a3 + v27[20];
  sub_100054D24(v24, *(&v24 + 1), v25, *(&v25 + 1), v22, v23);
  sub_100054DEC(v24, *(&v24 + 1), v25, *(&v25 + 1), v22, v23);
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 9) = !v35;
  sub_100054E50(v12);
  sub_100054DEC(v24, *(&v24 + 1), v25, *(&v25 + 1), v22, v23);
  return sub_100054E50(v26);
}

uint64_t sub_1000543C0()
{
  v1 = v0;
  v2 = sub_1000282B4(&qword_1000AFA78, &qword_100078EC8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v25 - v4;
  v6 = sub_1000282B4(&qword_1000AFA80, &qword_100078ED0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  sub_10002B4A4(0, &qword_1000AF5C0, UIDevice_ptr);
  if (sub_100069D50())
  {
    v10 = objc_opt_self();
    v11 = [v10 mainScreen];
    [v11 nativeBounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v26.origin.x = v13;
    v26.origin.y = v15;
    v26.size.width = v17;
    v26.size.height = v19;
    Width = CGRectGetWidth(v26);
    v21 = [v10 mainScreen];
    [v21 nativeScale];
    v23 = v22;

    sub_100034F7C(v1, v9, &qword_1000AFA58, &qword_100078EA8);
    *&v9[*(v6 + 36)] = Width / v23 * 0.55;
    sub_100054AF8();
  }

  else
  {
    sub_100034F7C(v0, v5, &qword_1000AFA58, &qword_100078EA8);
    sub_10005484C();
  }

  return AnyView.init<A>(_:)();
}

uint64_t sub_1000545DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100054614()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    if (*(v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad))
    {
      v2 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_expectsDismissOnIpad;
      swift_beginAccess();
      if ((*(v1 + v2) & 1) == 0)
      {
        v3 = objc_opt_self();
        v4 = LACErrorCodeUserCancel;
        v5 = v1;
        v6 = [v3 errorWithCode:v4];
        v7 = sub_100045B10();
        sub_100065254(v6, v7, v8);
      }
    }
  }

  else
  {
    v9 = *(v0 + 24);
    type metadata accessor for AuthorizationViewModel();
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100054754()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad];
    v1;
    if ((v2 & 1) != 0 || sub_1000624A4())
    {
      sub_10005F6B0();
    }
  }

  else
  {
    v3 = *(v0 + 24);
    type metadata accessor for AuthorizationViewModel();
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }

  return _objc_release_x1();
}

id sub_10005482C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_10005483C(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_10005484C()
{
  result = qword_1000AFA88;
  if (!qword_1000AFA88)
  {
    sub_10002CC44(&qword_1000AFA78, &qword_100078EC8);
    sub_1000548D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA88);
  }

  return result;
}

unint64_t sub_1000548D8()
{
  result = qword_1000AFA90;
  if (!qword_1000AFA90)
  {
    sub_10002CC44(&qword_1000AFA58, &qword_100078EA8);
    sub_100054990();
    sub_100034E8C(&qword_1000AFAC0, &qword_1000AFA70, &qword_100078EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA90);
  }

  return result;
}

unint64_t sub_100054990()
{
  result = qword_1000AFA98;
  if (!qword_1000AFA98)
  {
    sub_10002CC44(&qword_1000AFA50, &qword_100078EA0);
    sub_100054A48();
    sub_100034E8C(&qword_1000AFAB8, &qword_1000AFA68, &qword_100078EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFA98);
  }

  return result;
}

unint64_t sub_100054A48()
{
  result = qword_1000AFAA0;
  if (!qword_1000AFAA0)
  {
    sub_10002CC44(&qword_1000AFA48, &qword_100078E98);
    sub_100034E8C(&qword_1000AFAA8, &qword_1000AFAB0, &qword_100078ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFAA0);
  }

  return result;
}

unint64_t sub_100054AF8()
{
  result = qword_1000AFAC8;
  if (!qword_1000AFAC8)
  {
    sub_10002CC44(&qword_1000AFA80, &qword_100078ED0);
    sub_1000548D8();
    sub_100054B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFAC8);
  }

  return result;
}

unint64_t sub_100054B84()
{
  result = qword_1000B11D0;
  if (!qword_1000B11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B11D0);
  }

  return result;
}

uint64_t type metadata accessor for AuthorizationHeaderView()
{
  result = qword_1000B11E8;
  if (!qword_1000B11E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100054C28()
{
  result = qword_1000AFAD0;
  if (!qword_1000AFAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFAD0);
  }

  return result;
}

unint64_t sub_100054C7C()
{
  result = qword_1000B11D8;
  if (!qword_1000B11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B11D8);
  }

  return result;
}

unint64_t sub_100054CD0()
{
  result = qword_1000B11E0;
  if (!qword_1000B11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B11E0);
  }

  return result;
}

id sub_100054D24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    v7 = a1;
  }

  else
  {

    return a1;
  }
}

uint64_t sub_100054D88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthorizationHeaderView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100054DEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }
}

uint64_t sub_100054E50(uint64_t a1)
{
  v2 = type metadata accessor for AuthorizationHeaderView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100054EAC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  static Animation.easeOut(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100054F50()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100054F88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10005F6B0();
  }
}

uint64_t sub_100054FDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100054FF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100055044(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100055098(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1000550B0(void *result, int a2)
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

uint64_t sub_1000550F0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10005514C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000551DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1000282B4(&qword_1000AFB38, &qword_100079018);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1000552B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1000282B4(&qword_1000AFB38, &qword_100079018);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100055368()
{
  sub_100055404();
  if (v0 <= 0x3F)
  {
    sub_100055498();
    if (v1 <= 0x3F)
    {
      sub_1000554FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100055404()
{
  if (!qword_1000AFB98)
  {
    type metadata accessor for AuthorizationViewModel();
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AFB98);
    }
  }
}

void sub_100055498()
{
  if (!qword_1000AFBA0)
  {
    sub_10002CC44(&qword_1000AFBA8, &qword_100079038);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AFBA0);
    }
  }
}

void sub_1000554FC()
{
  if (!qword_1000AFBB0)
  {
    sub_100054C28();
    v0 = type metadata accessor for ScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AFBB0);
    }
  }
}

uint64_t sub_100055558(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000555B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_100055618()
{
  result = qword_1000AFBE8;
  if (!qword_1000AFBE8)
  {
    sub_10002CC44(&qword_1000AFBF0, &qword_100079060);
    sub_1000556A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBE8);
  }

  return result;
}

unint64_t sub_1000556A4()
{
  result = qword_1000AFBF8;
  if (!qword_1000AFBF8)
  {
    sub_10002CC44(&qword_1000AFC00, &qword_100079068);
    sub_100034E8C(&qword_1000AFC08, &qword_1000AFC10, &qword_100079070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFBF8);
  }

  return result;
}

unint64_t sub_100055760()
{
  result = qword_1000AFC18;
  if (!qword_1000AFC18)
  {
    sub_10002CC44(&qword_1000AFAE8, &unk_100078EF0);
    sub_100034E8C(&qword_1000AFC20, &qword_1000AFC28, qword_100079078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFC18);
  }

  return result;
}

uint64_t sub_100055834@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v133 = a2;
  v146 = a3;
  v4 = sub_1000282B4(&qword_1000AFC48, &qword_100079250);
  v142 = *(v4 - 8);
  v5 = *(v142 + 64);
  __chkstk_darwin(v4);
  v130 = &v116 - v6;
  v7 = sub_1000282B4(&qword_1000AFC50, &qword_100079258);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v145 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v144 = &v116 - v11;
  v124 = sub_1000282B4(&qword_1000AFC58, &qword_100079260);
  v12 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v125 = &v116 - v13;
  v140 = sub_1000282B4(&qword_1000AFC60, &qword_100079268);
  v14 = *(*(v140 - 8) + 64);
  __chkstk_darwin(v140);
  v126 = &v116 - v15;
  v131 = sub_1000282B4(&qword_1000AFC68, &qword_100079270);
  v16 = *(*(v131 - 8) + 64);
  __chkstk_darwin(v131);
  v118 = &v116 - v17;
  v119 = sub_1000282B4(&qword_1000AFC70, &qword_100079278);
  v18 = *(v119 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v119);
  v117 = &v116 - v20;
  v123 = sub_1000282B4(&qword_1000AFC78, &qword_100079280);
  v21 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v120 = &v116 - v22;
  v23 = type metadata accessor for BorderedProminentButtonStyle();
  v128 = *(v23 - 8);
  v129 = v23;
  v24 = *(v128 + 64);
  __chkstk_darwin(v23);
  v127 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000282B4(&qword_1000AFC80, &qword_100079288);
  v121 = *(v26 - 8);
  v122 = v26;
  v27 = *(v121 + 64);
  __chkstk_darwin(v26);
  v29 = &v116 - v28;
  v132 = sub_1000282B4(&qword_1000AFC88, &qword_100079290);
  v30 = *(*(v132 - 8) + 64);
  __chkstk_darwin(v132);
  v32 = &v116 - v31;
  v135 = sub_1000282B4(&qword_1000AFC90, &qword_100079298);
  v33 = *(*(v135 - 8) + 64);
  __chkstk_darwin(v135);
  v137 = &v116 - v34;
  v35 = sub_1000282B4(&qword_1000AFC98, &qword_1000792A0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v38 = (&v116 - v37);
  v136 = sub_1000282B4(&qword_1000AFCA0, &qword_1000792A8);
  v39 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v41 = &v116 - v40;
  v42 = sub_1000282B4(&qword_1000AFCA8, &qword_1000792B0);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42 - 8);
  v141 = &v116 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v147 = &v116 - v46;
  if (a1)
  {
    v134 = a1;
    v47 = a1;
    v138 = sub_100060060();
    v139 = v48;
    v49 = sub_1000622DC();
    v143 = v4;
    if (v49)
    {
      v50 = swift_allocObject();
      *(v50 + 16) = v47;
      type metadata accessor for AuthorizationViewModel();
      sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
      v51 = EnvironmentObject.init()();
      *v38 = v51;
      v38[1] = v52;
      v38[2] = sub_100059F64;
      v38[3] = v50;
      swift_storeEnumTagMultiPayload();
      sub_100059A4C();
      sub_100059AA0();
      v53 = v51;

      _ConditionalContent<>.init(storage:)();
      sub_100034F7C(v41, v137, &qword_1000AFCA0, &qword_1000792A8);
      swift_storeEnumTagMultiPayload();
      sub_1000599C0();
      sub_100059BEC();
      _ConditionalContent<>.init(storage:)();

      v54 = v41;
      v55 = &qword_1000AFCA0;
      v56 = &qword_1000792A8;
    }

    else if (sub_10005EB3C())
    {

      v57 = swift_allocObject();
      v58 = v133;
      *(v57 + 16) = v134;
      *(v57 + 24) = v58;
      __chkstk_darwin(v57);
      *(&v116 - 2) = v60;
      *(&v116 - 1) = v59;
      v61 = v47;
      Button.init(action:label:)();
      v62 = v127;
      BorderedProminentButtonStyle.init()();
      sub_100034E8C(&qword_1000AFCD0, &qword_1000AFC80, &qword_100079288);
      sub_10005B42C(&qword_1000AFCD8, &type metadata accessor for BorderedProminentButtonStyle);
      v126 = v35;
      v63 = v32;
      v64 = v122;
      v65 = v129;
      View.buttonStyle<A>(_:)();
      (*(v128 + 8))(v62, v65);
      (*(v121 + 8))(v29, v64);
      v66 = static Edge.Set.bottom.getter();
      v67 = v63 + *(v132 + 36);
      *v67 = v66;
      *(v67 + 8) = 0u;
      *(v67 + 24) = 0u;
      *(v67 + 40) = 1;
      sub_100034F7C(v63, v38, &qword_1000AFC88, &qword_100079290);
      swift_storeEnumTagMultiPayload();
      sub_100059A4C();
      sub_100059AA0();
      _ConditionalContent<>.init(storage:)();
      sub_100034F7C(v41, v137, &qword_1000AFCA0, &qword_1000792A8);
      swift_storeEnumTagMultiPayload();
      sub_1000599C0();
      sub_100059BEC();
      _ConditionalContent<>.init(storage:)();
      sub_10002B444(v41, &qword_1000AFCA0, &qword_1000792A8);
      v54 = v63;
      v55 = &qword_1000AFC88;
      v56 = &qword_100079290;
    }

    else if (sub_1000610A0())
    {
      v68 = sub_1000610A0();

      if (v68)
      {
        *&v164 = sub_10002773C();
        *(&v164 + 1) = v69;
        v70 = swift_allocObject();
        v71 = v133;
        *(v70 + 16) = v134;
        *(v70 + 24) = v71;
        sub_10004FA24();
        v72 = v47;
        v73 = v118;
        Button<>.init<A>(_:action:)();
        v74 = static Edge.Set.all.getter();
        v75 = v73 + *(v131 + 36);
        *v75 = v74;
        *(v75 + 8) = 0u;
        *(v75 + 24) = 0u;
        *(v75 + 40) = 1;
        v76 = v127;
        BorderedProminentButtonStyle.init()();
        sub_100059908();
        sub_10005B42C(&qword_1000AFCD8, &type metadata accessor for BorderedProminentButtonStyle);
        v77 = v117;
        v78 = v129;
        View.buttonStyle<A>(_:)();
        (*(v128 + 8))(v76, v78);
        sub_10002B444(v73, &qword_1000AFC68, &qword_100079270);
        v80 = v119;
        v79 = v120;
        (*(v18 + 32))(v120, v77, v119);
        (*(v18 + 56))(v79, 0, 1, v80);
      }

      else
      {
        v79 = v120;
        (*(v18 + 56))(v120, 1, 1, v119);
      }

      sub_100034F7C(v79, v125, &qword_1000AFC78, &qword_100079280);
      swift_storeEnumTagMultiPayload();
      sub_1000282B4(&qword_1000AFCB8, &qword_1000792C0);
      sub_1000597F8();
      sub_100034E8C(&qword_1000AFCE0, &qword_1000AFCB8, &qword_1000792C0);
      v91 = v126;
      _ConditionalContent<>.init(storage:)();
      sub_100034F7C(v91, v137, &qword_1000AFC60, &qword_100079268);
      swift_storeEnumTagMultiPayload();
      sub_1000599C0();
      sub_100059BEC();
      _ConditionalContent<>.init(storage:)();
      sub_10002B444(v91, &qword_1000AFC60, &qword_100079268);
      v54 = v79;
      v55 = &qword_1000AFC78;
      v56 = &qword_100079280;
    }

    else
    {

      v81 = static HorizontalAlignment.center.getter();
      v149 = 1;
      sub_100056AAC(v134, &v164);
      v160 = v165[9];
      v161[0] = v165[10];
      *(v161 + 9) = *(&v165[10] + 9);
      v156 = v165[5];
      v157 = v165[6];
      v158 = v165[7];
      v159 = v165[8];
      v152 = v165[1];
      v153 = v165[2];
      v154 = v165[3];
      v155 = v165[4];
      v150 = v164;
      v151 = v165[0];
      v162[10] = v165[9];
      v163[0] = v165[10];
      *(v163 + 9) = *(&v165[10] + 9);
      v162[6] = v165[5];
      v162[7] = v165[6];
      v162[8] = v165[7];
      v162[9] = v165[8];
      v162[2] = v165[1];
      v162[3] = v165[2];
      v162[4] = v165[3];
      v162[5] = v165[4];
      v162[0] = v164;
      v162[1] = v165[0];
      sub_100034F7C(&v150, v148, &qword_1000AFCB0, &qword_1000792B8);
      sub_10002B444(v162, &qword_1000AFCB0, &qword_1000792B8);
      *&v148[151] = v159;
      *&v148[167] = v160;
      *&v148[183] = v161[0];
      *&v148[192] = *(v161 + 9);
      *&v148[87] = v155;
      *&v148[103] = v156;
      *&v148[119] = v157;
      *&v148[135] = v158;
      *&v148[23] = v151;
      *&v148[39] = v152;
      *&v148[55] = v153;
      *&v148[71] = v154;
      *&v148[7] = v150;
      *(&v165[9] + 1) = *&v148[144];
      *(&v165[10] + 1) = *&v148[160];
      *(&v165[11] + 1) = *&v148[176];
      *(&v165[12] + 1) = *(v161 + 9);
      *(&v165[5] + 1) = *&v148[80];
      *(&v165[6] + 1) = *&v148[96];
      *(&v165[7] + 1) = *&v148[112];
      *(&v165[8] + 1) = *&v148[128];
      *(&v165[1] + 1) = *&v148[16];
      *(&v165[2] + 1) = *&v148[32];
      *(&v165[3] + 1) = *&v148[48];
      v164 = v81;
      LOBYTE(v165[0]) = v149;
      *(&v165[4] + 1) = *&v148[64];
      *(v165 + 1) = *v148;
      v82 = v165[12];
      v83 = v125;
      *(v125 + 192) = v165[11];
      *(v83 + 208) = v82;
      *(v83 + 224) = v165[13];
      v84 = v165[8];
      *(v83 + 128) = v165[7];
      *(v83 + 144) = v84;
      v85 = v165[10];
      *(v83 + 160) = v165[9];
      *(v83 + 176) = v85;
      v86 = v165[4];
      *(v83 + 64) = v165[3];
      *(v83 + 80) = v86;
      v87 = v165[6];
      *(v83 + 96) = v165[5];
      *(v83 + 112) = v87;
      v88 = v165[0];
      *v83 = v164;
      *(v83 + 16) = v88;
      v89 = v165[2];
      *(v83 + 32) = v165[1];
      *(v83 + 48) = v89;
      swift_storeEnumTagMultiPayload();
      sub_100034F7C(&v164, v148, &qword_1000AFCB8, &qword_1000792C0);
      sub_1000282B4(&qword_1000AFCB8, &qword_1000792C0);
      sub_1000597F8();
      sub_100034E8C(&qword_1000AFCE0, &qword_1000AFCB8, &qword_1000792C0);
      v90 = v126;
      _ConditionalContent<>.init(storage:)();
      sub_100034F7C(v90, v137, &qword_1000AFC60, &qword_100079268);
      swift_storeEnumTagMultiPayload();
      sub_1000599C0();
      sub_100059BEC();
      _ConditionalContent<>.init(storage:)();
      sub_10002B444(&v164, &qword_1000AFCB8, &qword_1000792C0);
      v54 = v90;
      v55 = &qword_1000AFC60;
      v56 = &qword_100079268;
    }

    sub_10002B444(v54, v55, v56);
    v92 = v144;
    v93 = sub_100061458();

    v94 = v143;
    if (v93)
    {
      v95 = sub_100062D78();
      v97 = v96;

      *&v164 = v95;
      *(&v164 + 1) = v97;
      v98 = swift_allocObject();
      v99 = v133;
      *(v98 + 16) = v134;
      *(v98 + 24) = v99;
      sub_10004FA24();
      v100 = v47;
      v101 = v130;
      Button<>.init<A>(_:action:)();
      v102 = static Edge.Set.bottom.getter();
      v103 = v101 + *(v131 + 36);
      *v103 = v102;
      *(v103 + 8) = 0u;
      *(v103 + 24) = 0u;
      *(v103 + 40) = 1;
      v104 = static Font.subheadline.getter();
      KeyPath = swift_getKeyPath();
      v106 = (v101 + *(v94 + 36));
      *v106 = KeyPath;
      v106[1] = v104;
      sub_10005AE14(v101, v92, &qword_1000AFC48, &qword_100079250);
      v107 = 0;
    }

    else
    {

      v107 = 1;
    }

    (*(v142 + 56))(v92, v107, 1, v94);
    v108 = v147;
    v109 = v141;
    sub_100034F7C(v147, v141, &qword_1000AFCA8, &qword_1000792B0);
    v110 = v145;
    sub_100034F7C(v92, v145, &qword_1000AFC50, &qword_100079258);
    v111 = v146;
    v112 = v139;
    *v146 = v138;
    v111[1] = v112;
    v113 = v92;
    v114 = sub_1000282B4(&qword_1000AFD00, &qword_1000792C8);
    sub_100034F7C(v109, v111 + *(v114 + 48), &qword_1000AFCA8, &qword_1000792B0);
    sub_100034F7C(v110, v111 + *(v114 + 64), &qword_1000AFC50, &qword_100079258);

    sub_10002B444(v113, &qword_1000AFC50, &qword_100079258);
    sub_10002B444(v108, &qword_1000AFCA8, &qword_1000792B0);
    sub_10002B444(v110, &qword_1000AFC50, &qword_100079258);
    sub_10002B444(v109, &qword_1000AFCA8, &qword_1000792B0);
  }

  else
  {
    type metadata accessor for AuthorizationViewModel();
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100056AAC@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1000282B4(&qword_1000AF8A0, &qword_1000788D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v65 = &v61[-v6];
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *&a1[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context];
  v13 = a1;
  v14 = v12;
  v15 = v13;
  v69 = sub_10005D978(v14, a1);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v71 = v140;
  LODWORD(v14) = v141;
  v73 = v142;
  LODWORD(a1) = v143;
  v67 = v145;
  v68 = v144;
  v66 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v72 = v14;
  v139 = v14;
  v74 = a1;
  v138 = a1;
  v137 = 0;
  sub_100060B68();

  sub_100051930();
  v24 = sub_10004FFD4();
  v25 = nullsub_18(v24);
  v27 = v26;
  v70 = v25;
  v29 = v28;
  v64 = sub_100062188();

  (*(v8 + 104))(v11, enum case for Font.TextStyle.subheadline(_:), v7);
  v30 = type metadata accessor for Font.Design();
  v31 = v65;
  (*(*(v30 - 8) + 56))(v65, 1, 1, v30);
  static Font.system(_:design:weight:)();
  sub_10002B444(v31, &qword_1000AF8A0, &qword_1000788D0);
  (*(v8 + 8))(v11, v7);
  v32 = Text.font(_:)();
  v63 = v33;
  v64 = v32;
  v35 = v34;
  v65 = v36;

  v62 = static Edge.Set.bottom.getter();
  v37 = sub_10006212C();

  if (v37 != 1)
  {
    v38 = v15[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad];
  }

  EdgeInsets.init(_all:)();
  v132 = v35 & 1;
  v129 = 0;
  v40 = v68;
  v39 = v69;
  *&v87 = v69;
  *(&v87 + 1) = v71;
  LOBYTE(v88) = v72;
  *(&v88 + 1) = *v136;
  DWORD1(v88) = *&v136[3];
  *(&v88 + 1) = v73;
  LOBYTE(v89) = v74;
  DWORD1(v89) = *&v135[3];
  *(&v89 + 1) = *v135;
  v41 = v67;
  *(&v89 + 1) = v68;
  *&v90 = v67;
  v42 = v66;
  BYTE8(v90) = v66;
  HIDWORD(v90) = *&v134[3];
  *(&v90 + 9) = *v134;
  *&v91 = v17;
  *(&v91 + 1) = v19;
  *&v92 = v21;
  *(&v92 + 1) = v23;
  LOBYTE(v93) = 0;
  DWORD1(v93) = *&v133[3];
  *(&v93 + 1) = *v133;
  *(&v93 + 1) = v27;
  *&v94 = v70;
  *(&v94 + 1) = v29;
  v77 = v89;
  v78 = v90;
  v75 = v87;
  v76 = v88;
  v81 = v93;
  v82 = v94;
  v79 = v91;
  v80 = v92;
  v44 = v63;
  v43 = v64;
  *&v95 = v64;
  *(&v95 + 1) = v63;
  LOBYTE(v96) = v35 & 1;
  DWORD1(v96) = *&v131[3];
  *(&v96 + 1) = *v131;
  v45 = v65;
  *(&v96 + 1) = v65;
  v46 = v62;
  LOBYTE(v97) = v62;
  DWORD1(v97) = *&v130[3];
  *(&v97 + 1) = *v130;
  *(&v97 + 1) = v47;
  *&v98[0] = v48;
  *(&v98[0] + 1) = v49;
  *&v98[1] = v50;
  BYTE8(v98[1]) = 0;
  *(v86 + 9) = *(v98 + 9);
  v85 = v97;
  v86[0] = v98[0];
  v83 = v95;
  v84 = v96;
  v51 = v87;
  v52 = v88;
  v53 = v90;
  a2[2] = v89;
  a2[3] = v53;
  *a2 = v51;
  a2[1] = v52;
  v54 = v79;
  v55 = v80;
  v56 = v82;
  a2[6] = v81;
  a2[7] = v56;
  a2[4] = v54;
  a2[5] = v55;
  v57 = v83;
  v58 = v84;
  *(a2 + 185) = *(v86 + 9);
  v59 = v86[0];
  a2[10] = v85;
  a2[11] = v59;
  a2[8] = v57;
  a2[9] = v58;
  v99[0] = v43;
  v99[1] = v44;
  v100 = v35 & 1;
  *v101 = *v131;
  *&v101[3] = *&v131[3];
  v102 = v45;
  v103 = v46;
  *v104 = *v130;
  *&v104[3] = *&v130[3];
  v105 = v47;
  v106 = v48;
  v107 = v49;
  v108 = v50;
  v109 = 0;
  sub_100034F7C(&v87, v110, &qword_1000AFD08, &qword_100079308);
  sub_100034F7C(&v95, v110, &qword_1000AFD10, &qword_100079310);
  sub_10002B444(v99, &qword_1000AFD10, &qword_100079310);
  v110[0] = v39;
  v110[1] = v71;
  v111 = v72;
  *v112 = *v136;
  *&v112[3] = *&v136[3];
  v113 = v73;
  v114 = v74;
  *v115 = *v135;
  *&v115[3] = *&v135[3];
  v116 = v40;
  v117 = v41;
  v118 = v42;
  *&v119[3] = *&v134[3];
  *v119 = *v134;
  v120 = v17;
  v121 = v19;
  v122 = v21;
  v123 = v23;
  v124 = 0;
  *v125 = *v133;
  *&v125[3] = *&v133[3];
  v126 = v27;
  v127 = v70;
  v128 = v29;
  return sub_10002B444(v110, &qword_1000AFD08, &qword_100079308);
}

uint64_t sub_1000570C0@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = sub_1000282B4(&qword_1000AFC40, &qword_100079248);
  return sub_100055834(v4, v3, (a1 + *(v5 + 44)));
}

uint64_t sub_100057124(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

void sub_100057168(char **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  v24 = *(a1 + 1);
  *&v25 = v4;
  sub_1000282B4(&qword_1000AFD18, &qword_100079318);
  State.wrappedValue.getter();
  if (v23)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = [*&v5[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration] verifyPrompt];
      if (v6)
      {
        v7 = v6;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v28 = *(a1 + 1);
      v29 = v4;
      v11 = swift_allocObject();
      *(v11 + 16) = v22;
      *(v11 + 24) = v23;
      v12 = *(a1 + 1);
      *(v11 + 32) = *a1;
      *(v11 + 48) = v12;
      *(v11 + 64) = a1[4];
      v13 = v5;
      sub_10005A23C(&v28, &v24);
      sub_100034F7C(&v29, &v24, &qword_1000AFD20, &qword_100079320);
      type metadata accessor for AuthorizationViewModel();
      sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
      v14 = EnvironmentObject.init()();

LABEL_10:
      sub_1000282B4(&qword_1000AFD28, &qword_100079328);
      sub_100034E8C(&qword_1000AFD30, &qword_1000AFD28, &qword_100079328);
      _ConditionalContent<>.init(storage:)();

      v18 = v25;
      v19 = v26;
      v20 = v27;
      *a2 = v24;
      *(a2 + 16) = v18;
      *(a2 + 32) = v19;
      *(a2 + 48) = v20;
      return;
    }
  }

  else
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = [*&v8[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration] prompt];
      if (v9)
      {
        v10 = v9;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v28 = *(a1 + 1);
      v29 = v4;
      v15 = swift_allocObject();
      v16 = *(a1 + 1);
      *(v15 + 16) = *a1;
      *(v15 + 32) = v16;
      *(v15 + 48) = a1[4];
      v17 = v8;
      sub_10005A23C(&v28, &v24);
      sub_100034F7C(&v29, &v24, &qword_1000AFD20, &qword_100079320);
      type metadata accessor for AuthorizationViewModel();
      sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
      v14 = EnvironmentObject.init()();

      goto LABEL_10;
    }
  }

  v21 = a1[1];
  type metadata accessor for AuthorizationViewModel();
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
  EnvironmentObject.error()();
  __break(1u);
}

__n128 sub_100057548@<Q0>(uint64_t a1@<X8>)
{
  v3 = static HorizontalAlignment.center.getter();
  v11 = 1;
  sub_100057168(v1, v9);
  v4 = v10;
  result = v9[0];
  v6 = v9[1];
  v7 = v9[2];
  v8 = v11;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = result;
  *(a1 + 40) = v6;
  *(a1 + 56) = v7;
  *(a1 + 72) = v4;
  return result;
}

uint64_t sub_1000575C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v5 = type metadata accessor for OpacityTransition();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v21 - v11;
  static Color.black.getter();
  if (a1)
  {
    v13 = a1;
    sub_100062064();

    v14 = Color.opacity(_:)();

    v15 = static SafeAreaRegions.all.getter();
    v16 = static Edge.Set.all.getter();
    OpacityTransition.init()();
    (*(v6 + 16))(v10, v12, v5);
    sub_10005B42C(&qword_1000AFDB8, &type metadata accessor for OpacityTransition);
    v17 = AnyTransition.init<A>(_:)();
    (*(v6 + 8))(v12, v5);
    v21[2] = v14;
    v21[3] = v15;
    v22 = v16;
    v23 = v17;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    v19 = v13;
    sub_1000282B4(&qword_1000AFDC0, &qword_100079410);
    sub_10005A8EC();
    View.onTapGesture(count:perform:)();
  }

  else
  {
    type metadata accessor for AuthorizationViewModel();
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10005788C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v3 = sub_1000282B4(&qword_1000AF8A0, &qword_1000788D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v118 = &v112 - v5;
  v119 = type metadata accessor for Font.TextStyle();
  v117 = *(v119 - 8);
  v6 = *(v117 + 64);
  __chkstk_darwin(v119);
  v116 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for Image.ResizingMode();
  v8 = *(v120 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v120);
  v11 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000282B4(&qword_1000AFD40, &qword_100079338);
  v121 = *(v12 - 8);
  v122 = v12;
  v13 = *(v121 + 64);
  __chkstk_darwin(v12);
  v15 = &v112 - v14;
  v16 = sub_1000282B4(&qword_1000AFD48, &qword_100079340);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v124 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v126 = &v112 - v20;
  v21 = sub_1000282B4(&qword_1000AFD50, &qword_100079348);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v112 - v24;
  v26 = sub_1000282B4(&qword_1000AFD58, &qword_100079350);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v123 = &v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v127 = &v112 - v30;
  v31 = a1;
  if (*a1)
  {
    v32 = *a1;
    v33 = sub_1000624D8();

    if (v33)
    {
      (*(v22 + 56))(v127, 1, 1, v21);
    }

    else
    {
      *v25 = static HorizontalAlignment.center.getter();
      *(v25 + 1) = 0;
      v25[16] = 0;
      v34 = sub_1000282B4(&qword_1000AFD60, &qword_100079358);
      sub_100058348(v31, &v25[*(v34 + 44)]);
      v35 = v25;
      v36 = v127;
      sub_10005AE14(v35, v127, &qword_1000AFD50, &qword_100079348);
      (*(v22 + 56))(v36, 0, 1, v21);
    }

    v37 = v32;
    v38 = sub_100062608();

    if (v38)
    {
      v115 = v38;
      Image.init(uiImage:)();
      v39 = v120;
      (*(v8 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v120);
      v114 = Image.resizable(capInsets:resizingMode:)();

      (*(v8 + 8))(v11, v39);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v120 = v161;
      v40 = v162;
      v41 = v163;
      v42 = v164;
      v43 = v165;
      v113 = v166;
      v44 = &v15[*(sub_1000282B4(&qword_1000AFD78, &qword_1000793D0) + 36)];
      v45 = *(type metadata accessor for RoundedRectangle() + 20);
      v46 = enum case for RoundedCornerStyle.continuous(_:);
      v47 = type metadata accessor for RoundedCornerStyle();
      (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
      __asm { FMOV            V0.2D, #10.0 }

      *v44 = _Q0;
      *&v44[*(sub_1000282B4(&qword_1000AFA70, &qword_100078EC0) + 36)] = 256;
      v53 = v120;
      *v15 = v114;
      *(v15 + 1) = v53;
      v15[16] = v40;
      *(v15 + 3) = v41;
      v15[32] = v42;
      v54 = v113;
      *(v15 + 5) = v43;
      *(v15 + 6) = v54;
      LOBYTE(v43) = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v62 = v61;

      v63 = v122;
      v64 = &v15[*(v122 + 36)];
      *v64 = v43;
      *(v64 + 1) = v56;
      *(v64 + 2) = v58;
      *(v64 + 3) = v60;
      *(v64 + 4) = v62;
      v64[40] = 0;
      v65 = v126;
      sub_10005AE14(v15, v126, &qword_1000AFD40, &qword_100079338);
      v66 = 0;
    }

    else
    {
      v66 = 1;
      v65 = v126;
      v63 = v122;
    }

    (*(v121 + 56))(v65, v66, 1, v63);
    v67 = v37;
    v68 = sub_100062574();
    v70 = v69;

    if (v70)
    {
      v71 = HIBYTE(v70) & 0xF;
      if ((v70 & 0x2000000000000000) == 0)
      {
        v71 = v68 & 0xFFFFFFFFFFFFLL;
      }

      if (v71)
      {
        v73 = v116;
        v72 = v117;
        v74 = v119;
        (*(v117 + 104))(v116, enum case for Font.TextStyle.body(_:), v119);
        v75 = type metadata accessor for Font.Design();
        v76 = v118;
        (*(*(v75 - 8) + 56))(v118, 1, 1, v75);
        static Font.system(_:design:weight:)();
        sub_10002B444(v76, &qword_1000AF8A0, &qword_1000788D0);
        (*(v72 + 8))(v73, v74);
        v77 = Text.font(_:)();
        v79 = v78;
        LOBYTE(v76) = v80;
        v82 = v81;

        KeyPath = swift_getKeyPath();
        v84 = static Edge.Set.vertical.getter();
        EdgeInsets.init(_all:)();
        v86 = v85;
        v88 = v87;
        v90 = v89;
        v92 = v91;
        LOBYTE(v73) = v76 & 1;
        LOBYTE(v141) = v76 & 1;
        LOBYTE(v139[0]) = 0;
        LOBYTE(v76) = static Edge.Set.horizontal.getter();
        LOBYTE(v150) = 1;
        v93 = swift_getKeyPath();
        *&v141 = v77;
        *(&v141 + 1) = v79;
        LOBYTE(v142) = v73;
        v65 = v126;
        *(&v142 + 1) = v82;
        *&v143 = KeyPath;
        BYTE8(v143) = 1;
        LOBYTE(v144) = v84;
        *(&v144 + 1) = v86;
        *&v145 = v88;
        *(&v145 + 1) = v90;
        *&v146 = v92;
        BYTE8(v146) = 0;
        LOBYTE(v147[0]) = v76;
        *(v147 + 8) = 0u;
        *(&v147[1] + 8) = 0u;
        BYTE8(v147[2]) = 1;
        *&v148 = v93;
        *(&v148 + 1) = 5;
        v149 = 0;
        nullsub_18(&v141);
        v158 = v147[2];
        v159 = v148;
        v160 = v149;
        v154 = v145;
        v155 = v146;
        v156 = v147[0];
        v157 = v147[1];
        v150 = v141;
        v151 = v142;
        v152 = v143;
        v153 = v144;
LABEL_15:
        v94 = v127;
        v95 = v123;
        sub_100034F7C(v127, v123, &qword_1000AFD58, &qword_100079350);
        v96 = v124;
        sub_100034F7C(v65, v124, &qword_1000AFD48, &qword_100079340);
        v136 = v158;
        v137 = v159;
        v138 = v160;
        v132 = v154;
        v133 = v155;
        v134 = v156;
        v135 = v157;
        v128 = v150;
        v129 = v151;
        v130 = v152;
        v131 = v153;
        v97 = v125;
        sub_100034F7C(v95, v125, &qword_1000AFD58, &qword_100079350);
        v98 = sub_1000282B4(&qword_1000AFD68, &qword_100079360);
        sub_100034F7C(v96, v97 + *(v98 + 48), &qword_1000AFD48, &qword_100079340);
        v99 = *(v98 + 64);
        v100 = v137;
        v139[8] = v136;
        v139[9] = v137;
        v101 = v132;
        v102 = v133;
        v139[4] = v132;
        v139[5] = v133;
        v104 = v134;
        v103 = v135;
        v139[6] = v134;
        v139[7] = v135;
        v105 = v128;
        v106 = v129;
        v139[0] = v128;
        v139[1] = v129;
        v108 = v130;
        v107 = v131;
        v139[2] = v130;
        v139[3] = v131;
        v109 = v97 + v99;
        *(v109 + 128) = v136;
        *(v109 + 144) = v100;
        *(v109 + 64) = v101;
        *(v109 + 80) = v102;
        *(v109 + 96) = v104;
        *(v109 + 112) = v103;
        *v109 = v105;
        *(v109 + 16) = v106;
        v140 = v138;
        *(v109 + 160) = v138;
        *(v109 + 32) = v108;
        *(v109 + 48) = v107;
        sub_100034F7C(v139, &v141, &qword_1000AFD70, &qword_100079368);
        sub_10002B444(v65, &qword_1000AFD48, &qword_100079340);
        sub_10002B444(v94, &qword_1000AFD58, &qword_100079350);
        v147[2] = v136;
        v148 = v137;
        v149 = v138;
        v145 = v132;
        v146 = v133;
        v147[0] = v134;
        v147[1] = v135;
        v141 = v128;
        v142 = v129;
        v143 = v130;
        v144 = v131;
        sub_10002B444(&v141, &qword_1000AFD70, &qword_100079368);
        sub_10002B444(v96, &qword_1000AFD48, &qword_100079340);
        return sub_10002B444(v95, &qword_1000AFD58, &qword_100079350);
      }
    }

    sub_10005A56C(&v150);
    goto LABEL_15;
  }

  v111 = *(a1 + 8);
  type metadata accessor for AuthorizationViewModel();
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100058348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v37 = type metadata accessor for Divider();
  v3 = *(v37 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v37);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  v9 = sub_1000282B4(&qword_1000AFD80, &qword_1000793D8);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  *v16 = static VerticalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = sub_1000282B4(&qword_1000AFD88, &qword_1000793E0);
  sub_10005862C(a1, &v16[*(v17 + 44)]);
  LOBYTE(a1) = static Edge.Set.horizontal.getter();
  v18 = &v16[*(sub_1000282B4(&qword_1000AFD90, &qword_1000793E8) + 36)];
  *v18 = a1;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  LOBYTE(a1) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v19 = &v16[*(v10 + 44)];
  *v19 = a1;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  Divider.init()();
  v24 = v14;
  v35 = v14;
  sub_100034F7C(v16, v14, &qword_1000AFD80, &qword_1000793D8);
  v25 = v3[2];
  v26 = v36;
  v27 = v8;
  v28 = v8;
  v29 = v37;
  v25(v36, v27, v37);
  v30 = v24;
  v31 = v38;
  sub_100034F7C(v30, v38, &qword_1000AFD80, &qword_1000793D8);
  v32 = sub_1000282B4(&qword_1000AFD98, &qword_1000793F0);
  v25((v31 + *(v32 + 48)), v26, v29);
  v33 = v3[1];
  v33(v28, v29);
  sub_10002B444(v16, &qword_1000AFD80, &qword_1000793D8);
  v33(v26, v29);
  return sub_10002B444(v35, &qword_1000AFD80, &qword_1000793D8);
}

uint64_t sub_10005862C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.TextStyle();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = *(v66 + 64);
  __chkstk_darwin(v4);
  v65 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AuthorizationHeaderView();
  v60 = *(v7 - 8);
  v8 = *(v60 + 64);
  __chkstk_darwin(v7);
  v61 = v9;
  v62 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000282B4(&qword_1000AFDA0, &qword_1000793F8);
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = *(v69 + 64);
  __chkstk_darwin(v10);
  v64 = &v59 - v12;
  v13 = sub_1000282B4(&qword_1000AFDA8, &qword_100079400);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v72 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v71 = &v59 - v17;
  v18 = sub_1000282B4(&qword_1000AF8A0, &qword_1000788D0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v59 - v20;
  if (*a1)
  {
    v22 = *a1;
    sub_100062504();

    v23 = *(v7 + 24);
    sub_1000282B4(&qword_1000AFB38, &qword_100079018);
    v63 = a1;
    ScaledMetric.wrappedValue.getter();
    static Font.Weight.semibold.getter();
    v24 = enum case for Font.Design.default(_:);
    v25 = type metadata accessor for Font.Design();
    v26 = *(v25 - 8);
    (*(v26 + 104))(v21, v24, v25);
    v59 = *(v26 + 56);
    v59(v21, 0, 1, v25);
    static Font.system(size:weight:design:)();
    sub_10002B444(v21, &qword_1000AF8A0, &qword_1000788D0);
    v27 = Text.font(_:)();
    v29 = v28;
    v68 = v30;
    v32 = v31;

    v33 = v22;
    v34 = sub_100062564();
    v36 = v35;

    if (v36)
    {
      v37 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v37 = v34 & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        v73 = v34;
        v74 = v36;
        v38 = v62;
        sub_100054D88(v63, v62);
        v39 = (*(v60 + 80) + 16) & ~*(v60 + 80);
        v40 = swift_allocObject();
        sub_10005ADAC(v38, v40 + v39, type metadata accessor for AuthorizationHeaderView);
        sub_10004FA24();
        v63 = v32;
        v41 = v64;
        Button<>.init<A>(_:action:)();
        v43 = v66;
        v42 = v67;
        v44 = *(v66 + 104);
        v62 = v27;
        v45 = v65;
        v44(v65, enum case for Font.TextStyle.body(_:), v67);
        v59(v21, 1, 1, v25);
        v46 = static Font.system(_:design:weight:)();
        sub_10002B444(v21, &qword_1000AF8A0, &qword_1000788D0);
        v47 = v45;
        v27 = v62;
        (*(v43 + 8))(v47, v42);
        KeyPath = swift_getKeyPath();
        v49 = v70;
        v50 = v71;
        v51 = &v41[*(v70 + 36)];
        *v51 = KeyPath;
        v51[1] = v46;
        v52 = v41;
        v32 = v63;
        sub_10005AE14(v52, v50, &qword_1000AFDA0, &qword_1000793F8);
        v53 = 0;
LABEL_9:
        (*(v69 + 56))(v50, v53, 1, v49);
        v54 = v72;
        sub_100034F7C(v50, v72, &qword_1000AFDA8, &qword_100079400);
        *a2 = v27;
        *(a2 + 8) = v29;
        v55 = v68 & 1;
        *(a2 + 16) = v68 & 1;
        *(a2 + 24) = v32;
        *(a2 + 32) = 0;
        *(a2 + 40) = 1;
        v56 = sub_1000282B4(&qword_1000AFDB0, &qword_100079408);
        sub_100034F7C(v54, a2 + *(v56 + 64), &qword_1000AFDA8, &qword_100079400);
        sub_10005A644(v27, v29, v55);

        sub_10002B444(v50, &qword_1000AFDA8, &qword_100079400);
        sub_10002B444(v54, &qword_1000AFDA8, &qword_100079400);
        sub_10005A654(v27, v29, v55);
      }
    }

    v53 = 1;
    v49 = v70;
    v50 = v71;
    goto LABEL_9;
  }

  v58 = *(a1 + 8);
  type metadata accessor for AuthorizationViewModel();
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100058CFC@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_1000282B4(&qword_1000AFD38, &qword_100079330);
  return sub_10005788C(v1, a1 + *(v3 + 44));
}

uint64_t sub_100058DA4@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v37 = a3;
  v38 = a2;
  v41 = a4;
  v5 = sub_1000282B4(&qword_1000AF6D8, &qword_100078558);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v30[-v7];
  v9 = type metadata accessor for PasscodeEmbeddedView(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v40 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = sub_1000282B4(&qword_1000AFE38, &qword_100079570);
  v12 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v14 = &v30[-v13];
  if (a1)
  {
    v15 = a1;
    v35 = sub_1000625F0();
    v16 = sub_1000623A4();
    v36 = LACustomPasswordTypeAlphanumeric;
    v34 = v16 == LACustomPasswordTypeAlphanumeric;
    v17 = sub_1000605E4();
    v32 = v18;
    v33 = v17;
    v31 = sub_100069D44();
    type metadata accessor for AuthorizationViewModel();
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
    v19 = EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    EnvironmentObject.Wrapper.subscript.getter();

    v20 = v42;
    v21 = v43;
    v22 = EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    EnvironmentObject.Wrapper.subscript.getter();

    v24 = v40;
    sub_100047A2C(v35, v34, v33, v32, v31, v20, *(&v20 + 1), v21, v40, v8, v38, v23);
    sub_1000623A4();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    sub_10005ADAC(v24, v14, type metadata accessor for PasscodeEmbeddedView);
    v25 = &v14[*(v39 + 36)];
    v26 = v43;
    *v25 = v42;
    v25[1] = v26;
    v25[2] = v44;
    LOBYTE(v22) = static Edge.Set.horizontal.getter();
    v27 = v41;
    sub_10005AE14(v14, v41, &qword_1000AFE38, &qword_100079570);
    result = sub_1000282B4(&qword_1000AFE40, &unk_1000795C8);
    v29 = v27 + *(result + 36);
    *v29 = v22;
    *(v29 + 8) = 0u;
    *(v29 + 24) = 0u;
    *(v29 + 40) = 1;
  }

  else
  {
    type metadata accessor for AuthorizationViewModel();
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100059188@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_10005F69C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000591B8(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_10005F6B0();
}

uint64_t sub_100059204(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_100034F7C(a1, &v10 - v6, &qword_1000B00F0, &qword_100078560);
  v8 = *a2;
  return sub_10005FBBC(v7);
}

uint64_t sub_1000592B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  sub_100058DA4(*v1, *(v1 + 16), *(v1 + 24), a1);
  v4 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = sub_1000282B4(&qword_1000AFE30, &unk_100079560);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

double sub_100059338@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_1000282B4(&qword_1000AF8A0, &qword_1000788D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v44 - v8;
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_6;
  }

  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    (*(v11 + 104))(v14, enum case for Font.TextStyle.body(_:), v10);
    v16 = type metadata accessor for Font.Design();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);

    static Font.system(_:design:weight:)();
    sub_10002B444(v9, &qword_1000AF8A0, &qword_1000788D0);
    (*(v11 + 8))(v14, v10);
    v17 = Text.font(_:)();
    v45 = v18;
    v46 = v17;
    v20 = v19;
    v22 = v21;

    KeyPath = swift_getKeyPath();
    v24 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = v20 & 1;
    LOBYTE(v67) = v20 & 1;
    LOBYTE(v47) = 0;
    v34 = static Edge.Set.horizontal.getter();
    LOBYTE(v58) = 1;
    v35 = swift_getKeyPath();
    LOBYTE(v67) = 0;
    v36 = static Color.secondary.getter();
    v37 = swift_getKeyPath();
    *&v58 = v46;
    *(&v58 + 1) = v45;
    LOBYTE(v59) = v33;
    *(&v59 + 1) = v22;
    *&v60 = KeyPath;
    BYTE8(v60) = 1;
    LOBYTE(v61) = v24;
    *(&v61 + 1) = v26;
    *&v62 = v28;
    *(&v62 + 1) = v30;
    *&v63 = v32;
    BYTE8(v63) = 0;
    LOBYTE(v64[0]) = v34;
    *(v64 + 8) = 0u;
    *(&v64[1] + 8) = 0u;
    BYTE8(v64[2]) = 1;
    *&v65 = v35;
    *(&v65 + 1) = 3;
    LOBYTE(v66[0]) = 0;
    *(&v66[0] + 1) = v37;
    *&v66[1] = v36;
    sub_10005B1C8(&v58);
  }

  else
  {
LABEL_6:
    sub_10005AE7C(&v58);
  }

  v55 = v64[2];
  v56 = v65;
  v57[0] = v66[0];
  *(v57 + 9) = *(v66 + 9);
  v51 = v62;
  v52 = v63;
  v53 = v64[0];
  v54 = v64[1];
  v47 = v58;
  v48 = v59;
  v49 = v60;
  v50 = v61;
  sub_1000282B4(&qword_1000AFE48, &qword_1000795D8);
  sub_10005AE88();
  _ConditionalContent<>.init(storage:)();
  v38 = v76;
  a3[8] = v75;
  a3[9] = v38;
  a3[10] = v77[0];
  *(a3 + 169) = *(v77 + 9);
  v39 = v72;
  a3[4] = v71;
  a3[5] = v39;
  v40 = v74;
  a3[6] = v73;
  a3[7] = v40;
  v41 = v68;
  *a3 = v67;
  a3[1] = v41;
  result = *&v69;
  v43 = v70;
  a3[2] = v69;
  a3[3] = v43;
  return result;
}

double sub_100059728@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = sub_1000282B4(&qword_1000AFC30, &qword_100079238);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(sub_1000282B4(&qword_1000AFC38, &qword_100079240) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

unint64_t sub_1000597F8()
{
  result = qword_1000AFCC0;
  if (!qword_1000AFCC0)
  {
    sub_10002CC44(&qword_1000AFC78, &qword_100079280);
    sub_10002CC44(&qword_1000AFC68, &qword_100079270);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_100059908();
    sub_10005B42C(&qword_1000AFCD8, &type metadata accessor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFCC0);
  }

  return result;
}

unint64_t sub_100059908()
{
  result = qword_1000AFCC8;
  if (!qword_1000AFCC8)
  {
    sub_10002CC44(&qword_1000AFC68, &qword_100079270);
    sub_100034E8C(&qword_1000AFCD0, &qword_1000AFC80, &qword_100079288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFCC8);
  }

  return result;
}

unint64_t sub_1000599C0()
{
  result = qword_1000AFCE8;
  if (!qword_1000AFCE8)
  {
    sub_10002CC44(&qword_1000AFCA0, &qword_1000792A8);
    sub_100059A4C();
    sub_100059AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFCE8);
  }

  return result;
}

unint64_t sub_100059A4C()
{
  result = qword_1000B1500[0];
  if (!qword_1000B1500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1500);
  }

  return result;
}

unint64_t sub_100059AA0()
{
  result = qword_1000AFCF0;
  if (!qword_1000AFCF0)
  {
    sub_10002CC44(&qword_1000AFC88, &qword_100079290);
    sub_10002CC44(&qword_1000AFC80, &qword_100079288);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_100034E8C(&qword_1000AFCD0, &qword_1000AFC80, &qword_100079288);
    sub_10005B42C(&qword_1000AFCD8, &type metadata accessor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFCF0);
  }

  return result;
}

unint64_t sub_100059BEC()
{
  result = qword_1000AFCF8;
  if (!qword_1000AFCF8)
  {
    sub_10002CC44(&qword_1000AFC60, &qword_100079268);
    sub_1000597F8();
    sub_100034E8C(&qword_1000AFCE0, &qword_1000AFCB8, &qword_1000792C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFCF8);
  }

  return result;
}

void sub_100059CA4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v4 = v1;
    canShowWhile = LACUIDTOViewController._canShowWhileLocked()();
    sub_100066068(canShowWhile);
  }

  else
  {
    v3 = *(v0 + 24);
    type metadata accessor for AuthorizationViewModel();
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

void sub_100059D58()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = v1;
    sub_100065FDC();
  }

  else
  {
    v2 = *(v0 + 24);
    type metadata accessor for AuthorizationViewModel();
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100059E04()
{
  v2 = *(v0 + 16);
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

void sub_100059E74(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3;
    v5 = sub_100062570();
    v7 = v6;

    *a1 = v5;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    *(a1 + 24) = &_swiftEmptyArrayStorage;
  }

  else
  {
    v8 = *(v1 + 24);
    type metadata accessor for AuthorizationViewModel();
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100059F2C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100059F88()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    sub_10005EB78();
  }

  else
  {
    v3 = *(v0 + 24);
    type metadata accessor for AuthorizationViewModel();
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10005A024()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10005A074(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = *(v4 + 16) == a1 && *(v4 + 24) == a2;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v10 = *(v4 + 32);
    if (v10)
    {
      v16 = *(v4 + 48);
      v18 = *(v4 + 64);
      v11 = swift_allocObject();
      v12 = *(v4 + 48);
      *(v11 + 16) = *(v4 + 32);
      *(v11 + 32) = v12;
      *(v11 + 48) = *(v4 + 64);
      *(v11 + 56) = a3;
      *(v11 + 64) = a4;
      v13 = v10;
      sub_10005A23C(&v16, v15);
      sub_100034F7C(&v18, v15, &qword_1000AFD20, &qword_100079320);

      sub_100065CC0(a1, a2, sub_10005A454, v11);
    }

    else
    {
      v14 = *(v4 + 40);
      type metadata accessor for AuthorizationViewModel();
      sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
      EnvironmentObject.error()();
      __break(1u);
    }
  }

  else
  {
    v16 = *(v4 + 48);
    v17 = *(v4 + 64);
    v15[0] = 0;
    v15[1] = 0;
    sub_1000282B4(&qword_1000AFD18, &qword_100079318);
    State.wrappedValue.setter();
    a3(0);
  }
}

uint64_t sub_10005A274()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005A2BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v7 = v5;
    if (sub_1000625F0() <= 0)
    {
    }

    else
    {
      v8 = String.count.getter();
      v9 = sub_1000625F0();

      if (v8 != v9)
      {
        v10 = 0;
        return a3(v10);
      }
    }

    v13 = *(v4 + 32);
    v14 = *(v4 + 48);

    sub_1000282B4(&qword_1000AFD18, &qword_100079318);
    State.wrappedValue.setter();
    v10 = 1;
    return a3(v10);
  }

  v12 = *(v3 + 24);
  type metadata accessor for AuthorizationViewModel();
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10005A404()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005A454(char a1)
{
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  if ((a1 & 1) == 0)
  {
    v11 = *(v1 + 32);
    v12 = *(v1 + 48);
    sub_1000282B4(&qword_1000AFD18, &qword_100079318);
    State.wrappedValue.setter();
    v8 = 0;
    return v3(v8);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = v4;
    v6 = sub_100045B10();
    sub_100065254(0, v6, v7);

    v8 = 1;
    return v3(v8);
  }

  v10 = *(v1 + 24);
  type metadata accessor for AuthorizationViewModel();
  sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

double sub_10005A56C(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10005A58C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005A5E0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10005A614(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_10005A644(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10005A654(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10005A664()
{
  v1 = type metadata accessor for AuthorizationHeaderView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  if (*(v0 + v3 + 16))
  {
    v6 = *(v5 + 24);
  }

  v7 = *(v1 + 24);
  v8 = sub_1000282B4(&qword_1000AFB38, &qword_100079018);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005A76C()
{
  v1 = type metadata accessor for AuthorizationHeaderView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 24);
    return v5();
  }

  return result;
}

void sub_10005A7D8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = LACErrorCodeUserCancel;
    v8 = v1;
    v4 = [v2 errorWithCode:v3];
    v5 = sub_100045B10();
    sub_100065254(v4, v5, v6);
  }

  else
  {
    v7 = *(v0 + 24);
    type metadata accessor for AuthorizationViewModel();
    sub_10005B42C(&qword_1000AF5D8, type metadata accessor for AuthorizationViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

unint64_t sub_10005A8EC()
{
  result = qword_1000AFDC8;
  if (!qword_1000AFDC8)
  {
    sub_10002CC44(&qword_1000AFDC0, &qword_100079410);
    sub_10005A9A4();
    sub_100034E8C(&qword_1000AFDE0, &qword_1000AFDE8, &qword_100079420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFDC8);
  }

  return result;
}

unint64_t sub_10005A9A4()
{
  result = qword_1000AFDD0;
  if (!qword_1000AFDD0)
  {
    sub_10002CC44(&qword_1000AFDD8, &qword_100079418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFDD0);
  }

  return result;
}

__n128 sub_10005AA28(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10005AA34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10005AA7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005AACC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10005AB28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10005AB8C()
{
  result = qword_1000AFDF0;
  if (!qword_1000AFDF0)
  {
    sub_10002CC44(&qword_1000AFC38, &qword_100079240);
    sub_100034E8C(&qword_1000AFDF8, &qword_1000AFC30, &qword_100079238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFDF0);
  }

  return result;
}

uint64_t sub_10005AD10()
{
  sub_10002CC44(&qword_1000AFDC0, &qword_100079410);
  sub_10005A8EC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10005ADAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005AE14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000282B4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10005AE88()
{
  result = qword_1000AFE50;
  if (!qword_1000AFE50)
  {
    sub_10002CC44(&qword_1000AFE48, &qword_1000795D8);
    sub_10005AF40();
    sub_100034E8C(&qword_1000AFEB8, &qword_1000AFEC0, &qword_100079610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFE50);
  }

  return result;
}

unint64_t sub_10005AF40()
{
  result = qword_1000AFE58;
  if (!qword_1000AFE58)
  {
    sub_10002CC44(&qword_1000AFE60, &qword_1000795E0);
    sub_10005AFF8();
    sub_100034E8C(&qword_1000AFEA8, &qword_1000AFEB0, &qword_100079608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFE58);
  }

  return result;
}

unint64_t sub_10005AFF8()
{
  result = qword_1000AFE68;
  if (!qword_1000AFE68)
  {
    sub_10002CC44(&qword_1000AFE70, &qword_1000795E8);
    sub_10005B084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFE68);
  }

  return result;
}

unint64_t sub_10005B084()
{
  result = qword_1000AFE78;
  if (!qword_1000AFE78)
  {
    sub_10002CC44(&qword_1000AFE80, &qword_1000795F0);
    sub_10005B110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFE78);
  }

  return result;
}

unint64_t sub_10005B110()
{
  result = qword_1000AFE88;
  if (!qword_1000AFE88)
  {
    sub_10002CC44(&qword_1000AFE90, &qword_1000795F8);
    sub_100034E8C(&qword_1000AFE98, &qword_1000AFEA0, &qword_100079600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFE88);
  }

  return result;
}

unint64_t sub_10005B1D4()
{
  result = qword_1000AFEC8;
  if (!qword_1000AFEC8)
  {
    sub_10002CC44(&qword_1000AFE30, &unk_100079560);
    sub_10005B260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFEC8);
  }

  return result;
}

unint64_t sub_10005B260()
{
  result = qword_1000AFED0;
  if (!qword_1000AFED0)
  {
    sub_10002CC44(&qword_1000AFED8, &qword_100079648);
    sub_10005B2E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFED0);
  }

  return result;
}

unint64_t sub_10005B2E4()
{
  result = qword_1000AFEE0;
  if (!qword_1000AFEE0)
  {
    sub_10002CC44(&qword_1000AFE40, &unk_1000795C8);
    sub_10005B370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFEE0);
  }

  return result;
}

unint64_t sub_10005B370()
{
  result = qword_1000AFEE8;
  if (!qword_1000AFEE8)
  {
    sub_10002CC44(&qword_1000AFE38, &qword_100079570);
    sub_10005B42C(&qword_1000AF6F0, type metadata accessor for PasscodeEmbeddedView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFEE8);
  }

  return result;
}

uint64_t sub_10005B42C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10005B478()
{
  result = qword_1000AFEF0;
  if (!qword_1000AFEF0)
  {
    sub_10002CC44(&qword_1000AFEF8, &unk_100079650);
    sub_10005AE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AFEF0);
  }

  return result;
}

void sub_10005B53C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "viewDidLoad");
  if ([objc_opt_self() isSharedIPad])
  {
    v1 = [objc_allocWithZone(LACLocalBackoffCounter) init];
    [v0 setBackoffCounter:v1];
  }
}

void sub_10005C12C(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = [v2 presentedViewController];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    v8[2] = v2;
    v8[3] = a1;
    v8[4] = a2;
    v16 = sub_10005D03C;
    v17 = v8;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_10002B620;
    v15 = &unk_100098C28;
    v9 = _Block_copy(&v12);
    v10 = v2;
    sub_1000299DC(a1);

    [v7 dismissViewControllerAnimated:0 completion:v9];
    _Block_release(v9);
  }

  else
  {
    if (a1)
    {
      v16 = a1;
      v17 = a2;
      v12 = _NSConcreteStackBlock;
      v13 = 1107296256;
      v14 = sub_10002B620;
      v15 = &unk_100098BD8;
      v11 = _Block_copy(&v12);
    }

    else
    {
      v11 = 0;
    }

    v18.receiver = v2;
    v18.super_class = ObjectType;
    objc_msgSendSuper2(&v18, "dismissChildWithCompletionHandler:", v11);
    _Block_release(v11);
  }
}

id sub_10005C3A4(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, "initWithRequestID:endpoint:", a1, a2);

  return v5;
}

id sub_10005C464(void *a1, void *a2, uint64_t a3)
{
  v9.receiver = v3;
  v9.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v9, "initWithRequestID:endpoint:remoteAlertPresentationMode:", a1, a2, a3);

  return v7;
}

id sub_10005C534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjectType = swift_getObjectType();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14.receiver = v5;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "initWithInternalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:", isa, a2, a3, a4, a5 & 1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12;
}

id sub_10005C724(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_10005C86C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10005C950(uint64_t a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10002A658(a2, a2[3]);
  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithInternalInfo:parent:", isa, v6);

  swift_unknownObjectRelease();
  sub_10002A69C(a2);
  return v7;
}

void sub_10005CB28()
{
  v1 = [v0 mechanism];
  if (v1)
  {
    [v1 uiEvent:8 options:0];
    swift_unknownObjectRelease();
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v0 uiSuccessWithResult:isa];
}

void sub_10005CBE4()
{
  v1 = _convertErrorToNSError(_:)();
  [v0 uiFailureWithError:v1];
}

void sub_10005CCA4()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "viewDidLoad");
  type metadata accessor for PasscodeAlertContentViewController();
  v2 = *&v0[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_externalizedContext];
  v3 = *&v0[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_externalizedContext + 8];
  v4 = *&v0[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_userId];
  v5 = *&v0[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_policy];
  v6 = *&v0[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_options];
  v7 = *&v0[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_backoffCounter];
  v8 = *&v0[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_auditToken];
  sub_10002FD64(*&v1[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_externalizedContext], *&v1[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_externalizedContext + 8]);
  v9 = v4;

  swift_unknownObjectRetain();
  v10 = sub_10002E158(v2, v3, v4, v5, v6, v7, v8);
  v11 = &v1[OBJC_IVAR____TtC10CoreAuthUIP33_591C72486BB2C16BB16487A2DB3BF7FA27PasscodeAlertViewController_delegate];
  swift_unknownObjectWeakLoadStrong();
  v12 = *(v11 + 1);
  v13 = &v10[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_delegate];
  swift_beginAccess();
  *(v13 + 1) = v12;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  [v1 setContentViewController:v10];
}

uint64_t sub_10005CF4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10005CF84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong uiCancel];
  }
}

uint64_t sub_10005CFDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005CFF4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10005D03C()
{
  v2 = v0[2];
  v1 = v0[3];
  if (v1)
  {
    v3 = v0[4];
    v9 = v1;
    v10 = v3;
    v6.receiver = _NSConcreteStackBlock;
    v6.super_class = 1107296256;
    v7 = sub_10002B620;
    v8 = &unk_100098CA0;
    v4 = _Block_copy(&v6);
  }

  else
  {
    v4 = 0;
  }

  v5 = type metadata accessor for ComplementaryPasscodeViewController();
  v6.receiver = v2;
  v6.super_class = v5;
  objc_msgSendSuper2(&v6, "dismissChildWithCompletionHandler:", v4);
  _Block_release(v4);
}

uint64_t sub_10005D12C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D188()
{
  v0 = type metadata accessor for Logger();
  sub_10005D914(v0, qword_1000B1640);
  sub_10005D8DC(v0, qword_1000B1640);
  sub_10004FFD4();
  return sub_10004FFF4();
}

id sub_10005D2D0()
{
  *&v0[OBJC_IVAR____TtC10CoreAuthUI13SceneDelegate_window] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10005D35C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10005D3A0(void *a1, void *a2)
{
  v3 = v2;
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 usesFrontBoardServicesForRemoteUI];

  if (v7)
  {
    if (qword_1000B1638 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10005D8DC(v8, qword_1000B1640);
    v9 = a1;
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v13 = 138412546;
      *(v13 + 4) = v9;
      *v14 = v9;
      *(v13 + 12) = 2080;
      v16 = v9;
      v17 = [v10 persistentIdentifier];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = sub_10002FDB8(v18, v20, &v32);

      *(v13 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "scene: %@ willConnectTo session: %s", v13, 0x16u);
      sub_10002C8A0(v14);

      sub_10002A69C(v15);
    }

    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      v23 = v22;
      v24 = objc_allocWithZone(UIWindow);
      v31 = v9;
      v25 = [v24 initWithWindowScene:v23];
      v26 = OBJC_IVAR____TtC10CoreAuthUI13SceneDelegate_window;
      v27 = *(v3 + OBJC_IVAR____TtC10CoreAuthUI13SceneDelegate_window);
      *(v3 + OBJC_IVAR____TtC10CoreAuthUI13SceneDelegate_window) = v25;
      v28 = v25;

      if (v28)
      {
        v29 = [objc_allocWithZone(TransitionViewController) initWithRequestID:0 endpoint:0];
        [v28 setRootViewController:v29];
      }

      v30 = *(v3 + v26);
      [v30 makeKeyAndVisible];
    }
  }
}

void sub_10005D6B4(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 usesFrontBoardServicesForRemoteUI];

  if (v3)
  {
    if (qword_1000B1638 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10005D8DC(v4, qword_1000B1640);
    v5 = a1;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136315138;
      v9 = [v5 session];
      v10 = [v9 persistentIdentifier];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10002FDB8(v11, v13, &v16);

      *(v7 + 4) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Did disconnect from scene: %s", v7, 0xCu);
      sub_10002A69C(v8);
    }

    else
    {
    }
  }
}

uint64_t sub_10005D8DC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10005D914(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10005DA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10005DE64();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10005DADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10005DE64();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10005DB40()
{
  sub_10005DE64();
  UIViewRepresentable.body.getter();
  __break(1u);
}

char *sub_10005DB68(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = [objc_allocWithZone(LAUIAuthenticationView) initWithFrame:4 mechanisms:a1 context:{0.0, 0.0, 50.0, 50.0}];
  v8 = OBJC_IVAR____TtC10CoreAuthUI24AuthenticationParentView_authenticationView;
  *&v3[OBJC_IVAR____TtC10CoreAuthUI24AuthenticationParentView_authenticationView] = v7;
  [v7 setStyle:1];
  [*&v3[v8] setDelegate:a2];
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = *&v9[OBJC_IVAR____TtC10CoreAuthUI24AuthenticationParentView_authenticationView];
  v11 = v9;
  [v11 addSubview:v10];

  swift_unknownObjectRelease();
  return v11;
}

id sub_10005DD28(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

unint64_t sub_10005DE00()
{
  result = qword_1000B0028;
  if (!qword_1000B0028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0028);
  }

  return result;
}

unint64_t sub_10005DE64()
{
  result = qword_1000B0058;
  if (!qword_1000B0058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0058);
  }

  return result;
}

id sub_10005DFAC(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_10005E544(a1);

  return v4;
}

id sub_10005DFEC(void *a1)
{
  v2 = sub_10005E544(a1);

  return v2;
}

id sub_10005E0E4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

uint64_t sub_10005E168(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_10005E1C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_10005E240(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

Class sub_10005E308(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3);

  sub_1000282B4(&qword_1000AEBE0, &qword_100077C98);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

id sub_10005E3A4(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_10005E664(a1);

  return v4;
}

id sub_10005E3E4(void *a1)
{
  v2 = sub_10005E664(a1);

  return v2;
}

id sub_10005E48C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10005E4E0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = *(a1 + *a3 + 8);

  v9 = *(a1 + *a4);

  v10 = *(a1 + *a5);
}

id sub_10005E544(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC10CoreAuthUI28SecureUIElementFaceIDRegular_name];
  *v2 = 0xD00000000000001ALL;
  *(v2 + 1) = 0x800000010008B210;
  v3 = [objc_allocWithZone(LAUISecureFaceIDDescriptionGlyph) initWithContainerView:a1 type:0];
  sub_1000282B4(&qword_1000AEE00, &qword_100077990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100079860;
  *(v4 + 32) = v3;
  *&v1[OBJC_IVAR____TtC10CoreAuthUI28SecureUIElementFaceIDRegular_secureViews] = v4;
  v5 = v3;
  v6 = [v5 viewToCapture];
  *&v1[OBJC_IVAR____TtC10CoreAuthUI28SecureUIElementFaceIDRegular_viewToCapture] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SecureUIElementFaceIDRegular();
  v7 = objc_msgSendSuper2(&v9, "init");

  return v7;
}

id sub_10005E664(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC10CoreAuthUI32SecureUIElementFaceIdLightweight_name];
  *v2 = 0xD00000000000001ELL;
  *(v2 + 1) = 0x800000010008B230;
  v3 = [objc_allocWithZone(LAUISecureFaceIDDescriptionLightweight) initWithContainerView:a1];
  sub_1000282B4(&qword_1000AEE00, &qword_100077990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100079860;
  *(v4 + 32) = v3;
  *&v1[OBJC_IVAR____TtC10CoreAuthUI32SecureUIElementFaceIdLightweight_secureViews] = v4;
  v5 = v3;
  v6 = [v5 viewToCapture];
  *&v1[OBJC_IVAR____TtC10CoreAuthUI32SecureUIElementFaceIdLightweight_viewToCapture] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SecureUIElementFaceIdLightweight();
  v7 = objc_msgSendSuper2(&v9, "init");

  return v7;
}

uint64_t (*sub_10005E7D4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

uint64_t sub_10005E894(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10005E9CC(uint64_t *a1))()
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
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showAuthorizationView;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

uint64_t (*sub_10005EB8C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

uint64_t sub_10005EC4C(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10005ED84(uint64_t *a1))()
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
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showBiometryIntentButton;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

uint64_t (*sub_10005EF74(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10005F018;
}

uint64_t sub_10005F038(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10005F170(uint64_t *a1))()
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
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__shouldShowCustomPasswordView;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_10005F2E0;
}

uint64_t (*sub_10005F334(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

uint64_t sub_10005F3F4(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10005F52C(uint64_t *a1))()
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
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__shouldShowDevicePasscodeView;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

uint64_t (*sub_10005F6C4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

uint64_t sub_10005F784(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10005F8BC(uint64_t *a1))()
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
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__passcodeFocused;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

uint64_t sub_10005FA2C(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_100034F7C(a1, &v10 - v7, &qword_1000B00F0, &qword_100078560);
  sub_100034F7C(v8, v6, &qword_1000B00F0, &qword_100078560);
  Published.init(initialValue:)();
  sub_10002B444(a1, &qword_1000B00F0, &qword_100078560);
  return sub_10002B444(v8, &qword_1000B00F0, &qword_100078560);
}

uint64_t sub_10005FB44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10005FBBC(uint64_t a1)
{
  v3 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100034F7C(a1, v6, &qword_1000B00F0, &qword_100078560);
  v7 = v1;
  static Published.subscript.setter();
  return sub_10002B444(a1, &qword_1000B00F0, &qword_100078560);
}

uint64_t (*sub_10005FCA8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

uint64_t sub_10005FD68(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B0100, &qword_100079AB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B00F8, &qword_100079AA8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10005FEA0(uint64_t *a1))()
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
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B0100, &qword_100079AB0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__blockedUntilDate;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B00F8, &qword_100079AA8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

uint64_t sub_100060060()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_1000600D4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_100060154(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return static Published.subscript.setter();
}

uint64_t sub_1000601D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*sub_10006024C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

uint64_t sub_10006030C(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B0118, &qword_100079B10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B0110, &qword_100079B08);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100060444(uint64_t *a1))()
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
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B0118, &qword_100079B10);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__promptText;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B0110, &qword_100079B08);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

uint64_t sub_1000605E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100060658@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1000606D8(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return static Published.subscript.setter();
}

uint64_t sub_100060758()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*sub_1000607D0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

uint64_t sub_100060890(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B0128, &qword_100079B68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B0120, &qword_100079B60);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1000609C8(uint64_t *a1))()
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
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B0128, &qword_100079B68);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__passwordFieldPlaceholder;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B0120, &qword_100079B60);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

uint64_t sub_100060B68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100060BDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100060C5C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_100060CCC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*sub_100060D38(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

uint64_t sub_100060DF8(uint64_t a1)
{
  v2 = sub_1000282B4(&unk_1000B0138, &qword_100079BC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B0130, &qword_100079BB8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100060F30(uint64_t *a1))()
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
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&unk_1000B0138, &qword_100079BC0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__wrongBioAttempts;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B0130, &qword_100079BB8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

uint64_t (*sub_1000610F0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

uint64_t sub_1000611B0(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1000612E8(uint64_t *a1))()
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
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showBiometryRetryButton;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

uint64_t sub_10006146C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000614EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10006157C(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_1000615FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*sub_100061664(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100069D38;
}

void sub_100061708(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_10006178C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  sub_1000282B4(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_100061804(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10006193C(uint64_t *a1))()
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
  *(v3 + 72) = v1;
  v5 = sub_1000282B4(&qword_1000B00E8, &qword_100079930);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showFallbackButton;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100069D3C;
}

void sub_100061AAC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_100061C54()
{
  result = *(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_failureLimit);
  v2 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_failureLimit + 8);
  return result;
}

uint64_t sub_100061C6C()
{
  v1 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_failures;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100061CB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_failures;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100061D70()
{
  v1 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_expectsDismissOnIpad;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100061DB4(char a1)
{
  v3 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_expectsDismissOnIpad;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100061EAC()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_100061F0C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10003FF8C;
}

double sub_100061FA4()
{
  v1 = (v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___cornerRadius);
  if ((*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___cornerRadius + 8) & 1) == 0)
  {
    return *v1;
  }

  result = 0.0;
  if (*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad))
  {
    result = 8.0;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_100061FE8(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___cornerRadius;
  *v2 = a1;
  *(v2 + 8) = 0;
}

void *(*sub_100062000(uint64_t a1))(void *result)
{
  *(a1 + 8) = v1;
  *a1 = sub_100061FA4();
  return sub_100062048;
}

void *sub_100062048(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___cornerRadius;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

double sub_100062064()
{
  v1 = (v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___backgroundOpacity);
  if ((*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___backgroundOpacity + 8) & 1) == 0)
  {
    return *v1;
  }

  result = 0.8;
  if (*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad))
  {
    result = 0.000001;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_1000620B0(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___backgroundOpacity;
  *v2 = a1;
  *(v2 + 8) = 0;
}

void *(*sub_1000620C8(uint64_t a1))(void *result)
{
  *(a1 + 8) = v1;
  *a1 = sub_100062064();
  return sub_100062110;
}

void *sub_100062110(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___backgroundOpacity;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

id sub_10006212C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context);
  [v1 canEvaluatePolicy:1 error:0];

  return [v1 biometryType];
}

uint64_t sub_100062188()
{
  v1 = (v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___biometrySubtitle);
  if (!*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___biometrySubtitle + 8))
  {
    v4 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context);
    [v4 canEvaluatePolicy:1 error:0];
    v5 = [v4 biometryType];
    if (v5 == 1)
    {
      v6 = sub_100027AB8();
    }

    else
    {
      if (v5 != 2)
      {
        v2 = 0;
        v8 = 0xE000000000000000;
        goto LABEL_9;
      }

      v6 = sub_100027AA4();
    }

    v2 = v6;
    v8 = v7;
LABEL_9:
    v9 = v1[1];
    *v1 = v2;
    v1[1] = v8;

    goto LABEL_10;
  }

  v2 = *v1;
  v3 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___biometrySubtitle + 8);
LABEL_10:

  return v2;
}

uint64_t sub_100062258(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___biometrySubtitle);
  v4 = *(v2 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___biometrySubtitle + 8);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t (*sub_100062274(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_100062188();
  a1[1] = v3;
  return sub_1000622BC;
}

uint64_t sub_1000622BC(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = (a1[2] + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___biometrySubtitle);
  v4 = v3[1];
  *v3 = v2;
  v3[1] = v1;
}

uint64_t sub_1000622DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000623A4()
{
  v1 = (v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___passwordType);
  if (*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___passwordType + 8) != 1)
  {
    return *v1;
  }

  v2 = [*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration) passcodeLength];
  if (v2 + 1 > 7)
  {
    v3 = &LACustomPasswordTypeAlphanumeric;
  }

  else
  {
    v3 = *(&off_100099220 + v2 + 1);
  }

  result = *v3;
  *v1 = *v3;
  v1[8] = 0;
  return result;
}

uint64_t sub_100062428(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___passwordType;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void *(*sub_100062440(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_1000623A4();
  return sub_100062488;
}

void *sub_100062488(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___passwordType;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_100062504()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration) title];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_100062580(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

id sub_100062608()
{
  v1 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___appIcon;
  v2 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___appIcon);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration);
    v5 = [v4 iconPath];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() imageForPath:v5];
    }

    else
    {
      v8 = [v4 bundleIdentifier];
      if (!v8)
      {
        v12 = v0;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "The icon path and bundle identifier are nil", v15, 2u);
        }

        v3 = [objc_opt_self() genericIcon];
        v0 = v12;
        goto LABEL_7;
      }

      v6 = v8;
      v7 = [objc_opt_self() imageForBundleIdentifier:v8];
    }

    v3 = v7;

LABEL_7:
    v9 = *(v0 + v1);
    *(v0 + v1) = v3;
    v10 = v3;
    sub_10005483C(v9);
  }

  sub_10005482C(v2);
  return v3;
}

void sub_1000627B0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___appIcon);
  *(v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___appIcon) = a1;
  sub_10005483C(v2);
}

void (*sub_1000627C8(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_100062608();
  return sub_100062810;
}

void sub_100062810(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___appIcon);
  *(v3 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___appIcon) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_10005483C(v4);
  }

  else
  {

    sub_10005483C(v4);
  }
}

uint64_t sub_1000628C8()
{
  v0 = type metadata accessor for Calendar();
  v36 = *(v0 - 8);
  v1 = *(v36 + 64);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DateComponents();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  __chkstk_darwin(v4);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v31 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10002B444(v10, &qword_1000B00F0, &qword_100078560);
    return 0;
  }

  (*(v12 + 32))(v18, v10, v11);
  static Calendar.current.getter();
  sub_1000282B4(&qword_1000B0148, &qword_100079C58);
  v19 = type metadata accessor for Calendar.Component();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = *(v20 + 80);
  v32 = v0;
  v23 = (v22 + 32) & ~v22;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000776F0;
  (*(v20 + 104))(v24 + v23, enum case for Calendar.Component.minute(_:), v19);
  sub_1000682E4(v24);
  swift_setDeallocating();
  (*(v20 + 8))(v24 + v23, v19);
  swift_deallocClassInstance();
  Date.init()();
  v25 = v33;
  Calendar.dateComponents(_:from:to:)();

  v26 = *(v12 + 8);
  v26(v16, v11);
  (*(v36 + 8))(v3, v32);
  v27 = DateComponents.minute.getter();
  LOBYTE(v23) = v28;
  (*(v34 + 8))(v25, v35);
  if ((v23 & 1) != 0 || v27 < 0)
  {
    v26(v18, v11);
    return 0;
  }

  result = v27 + 1;
  if (__OFADD__(v27, 1))
  {
    __break(1u);
  }

  else
  {
    v30 = sub_100027BD8(result);
    v26(v18, v11);
    return v30;
  }

  return result;
}

uint64_t sub_100062D78()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {

    return sub_100027820();
  }

  else if (v1)
  {

    return sub_100027758();
  }

  else
  {

    return sub_1000278E8();
  }
}

void sub_100062E20(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v82 = a8;
  v81 = a7;
  v99 = a6;
  v97 = a1;
  v98 = a5;
  v94 = a4;
  v95 = a2;
  v96 = a3;
  v100 = a10;
  v101 = a11;
  v12 = sub_1000282B4(&qword_1000B0130, &qword_100079BB8);
  v92 = *(v12 - 8);
  v93 = v12;
  v13 = *(v92 + 64);
  __chkstk_darwin(v12);
  v91 = &v81 - v14;
  v90 = sub_1000282B4(&qword_1000B0110, &qword_100079B08);
  v89 = *(v90 - 8);
  v15 = *(v89 + 64);
  __chkstk_darwin(v90);
  v88 = &v81 - v16;
  v87 = sub_1000282B4(&qword_1000B00F8, &qword_100079AA8);
  v86 = *(v87 - 8);
  v17 = *(v86 + 64);
  __chkstk_darwin(v87);
  v19 = &v81 - v18;
  v85 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  v20 = *(*(v85 - 8) + 64);
  v21 = __chkstk_darwin(v85);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v81 - v24;
  v26 = sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v81 - v29;
  v83 = v11;
  v31 = objc_allocWithZone(v11);
  v32 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showAuthorizationView;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33 = *(v27 + 32);
  v33(&v31[v32], v30, v26);
  v34 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showBiometryIntentButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v31[v34], v30, v26);
  v35 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__shouldShowCustomPasswordView;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v31[v35], v30, v26);
  v36 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__shouldShowDevicePasscodeView;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v31[v36], v30, v26);
  v37 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__passcodeFocused;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v31[v37], v30, v26);
  v84 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__blockedUntilDate;
  v38 = type metadata accessor for Date();
  (*(*(v38 - 8) + 56))(v25, 1, 1, v38);
  sub_100034F7C(v25, v23, &qword_1000B00F0, &qword_100078560);
  Published.init(initialValue:)();
  sub_10002B444(v25, &qword_1000B00F0, &qword_100078560);
  (*(v86 + 32))(&v31[v84], v19, v87);
  v39 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__promptText;
  aBlock = 0;
  v103 = 0;
  sub_1000282B4(&qword_1000B0108, &qword_100079AB8);
  v40 = v88;
  Published.init(initialValue:)();
  (*(v89 + 32))(&v31[v39], v40, v90);
  v41 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__wrongBioAttempts;
  aBlock = 0;
  v42 = v91;
  Published.init(initialValue:)();
  (*(v92 + 32))(&v31[v41], v42, v93);
  v43 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showBiometryRetryButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v31[v43], v30, v26);
  v44 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showFallbackButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v31[v44], v30, v26);
  v45 = v94;
  v46 = &v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion];
  *v46 = 0;
  v46[1] = 0;
  *&v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_dismissAnimationDuration] = 0x3FC3333333333333;
  v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_dismissed] = 0;
  v47 = sub_10004FFDC();
  sub_10004FFF4(*v47);
  v48 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad;
  sub_10002B4A4(0, &qword_1000AF5C0, UIDevice_ptr);
  v31[v48] = sub_100069D50();
  *&v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_failures] = 0;
  v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_expectsDismissOnIpad] = 0;
  swift_unknownObjectWeakInit();
  v49 = &v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___cornerRadius];
  *v49 = 0;
  v49[8] = 1;
  v50 = &v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___backgroundOpacity];
  *v50 = 0;
  v50[8] = 1;
  v51 = &v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___biometrySubtitle];
  *v51 = 0;
  v51[1] = 0;
  v52 = &v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___passwordType];
  *v52 = 0;
  v52[8] = 1;
  *&v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___appIcon] = 1;
  v53 = *v46;
  v54 = v46[1];
  v55 = v100;
  v56 = v101;
  *v46 = v100;
  v46[1] = v56;
  sub_1000299DC(v55);
  sub_10002AA04(v53);
  v58 = v95;
  v57 = v96;
  *&v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_auditToken] = v95;
  *&v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_backoffCounter] = v45;
  *&v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_cachedContext] = v57;
  v60 = v97;
  v59 = v98;
  *&v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration] = v97;
  v61 = &v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_failureLimit];
  *v61 = v59;
  v61[8] = v99 & 1;
  v62 = v57;
  v63 = v58;
  swift_unknownObjectRetain();
  v64 = v60;
  v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_fallbackMethod] = sub_100032EAC([v64 requirement]);
  v65 = [v64 contextData];
  v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;

  v69 = objc_allocWithZone(LAContext);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10002AFD0(v66, v68);
  v71 = [v69 initWithExternalizedContext:isa];

  if (v71)
  {
    *&v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context] = v71;
    *&v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_policy] = v81;
    v72 = v82;
    *&v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_userId] = v82;
    *&v31[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_options] = a9;
    v73 = v72;
    v74 = [v64 passwordFieldPlaceholder];
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    swift_beginAccess();
    v109 = v75;
    v110 = v77;
    Published.init(initialValue:)();
    swift_endAccess();
    v108.receiver = v31;
    v108.super_class = v83;
    v78 = objc_msgSendSuper2(&v108, "init");
    sub_100064208();
    sub_100064500(0);
    v79 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v106 = sub_10006863C;
    v107 = v79;
    aBlock = _NSConcreteStackBlock;
    v103 = 1107296256;
    v104 = sub_10002F4C0;
    v105 = &unk_100098D60;
    v80 = _Block_copy(&aBlock);

    [v45 currentBackoffErrorWithReply:v80];
    _Block_release(v80);
    sub_10002AA04(v100);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_100063814(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v82 = a8;
  v81 = a7;
  v99 = a6;
  v97 = a1;
  v98 = a5;
  v94 = a4;
  v95 = a2;
  v96 = a3;
  v100 = a10;
  v101 = a11;
  ObjectType = swift_getObjectType();
  v13 = sub_1000282B4(&qword_1000B0130, &qword_100079BB8);
  v92 = *(v13 - 8);
  v93 = v13;
  v14 = *(v92 + 64);
  __chkstk_darwin(v13);
  v91 = &v81 - v15;
  v90 = sub_1000282B4(&qword_1000B0110, &qword_100079B08);
  v89 = *(v90 - 8);
  v16 = *(v89 + 64);
  __chkstk_darwin(v90);
  v88 = &v81 - v17;
  v87 = sub_1000282B4(&qword_1000B00F8, &qword_100079AA8);
  v86 = *(v87 - 8);
  v18 = *(v86 + 64);
  __chkstk_darwin(v87);
  v20 = &v81 - v19;
  v85 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  v21 = *(*(v85 - 8) + 64);
  v22 = __chkstk_darwin(v85);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v81 - v25;
  v27 = sub_1000282B4(&qword_1000B00E0, &qword_100079928);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v81 - v30;
  v32 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showAuthorizationView;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33 = *(v28 + 32);
  v33(&v11[v32], v31, v27);
  v34 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showBiometryIntentButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v11[v34], v31, v27);
  v35 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__shouldShowCustomPasswordView;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v11[v35], v31, v27);
  v36 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__shouldShowDevicePasscodeView;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v11[v36], v31, v27);
  v37 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__passcodeFocused;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v11[v37], v31, v27);
  v84 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__blockedUntilDate;
  v38 = type metadata accessor for Date();
  (*(*(v38 - 8) + 56))(v26, 1, 1, v38);
  sub_100034F7C(v26, v24, &qword_1000B00F0, &qword_100078560);
  Published.init(initialValue:)();
  sub_10002B444(v26, &qword_1000B00F0, &qword_100078560);
  (*(v86 + 32))(&v11[v84], v20, v87);
  v39 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__promptText;
  aBlock = 0;
  v103 = 0;
  sub_1000282B4(&qword_1000B0108, &qword_100079AB8);
  v40 = v88;
  Published.init(initialValue:)();
  (*(v89 + 32))(&v12[v39], v40, v90);
  v41 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__wrongBioAttempts;
  aBlock = 0;
  v42 = v91;
  Published.init(initialValue:)();
  (*(v92 + 32))(&v12[v41], v42, v93);
  v43 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showBiometryRetryButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v12[v43], v31, v27);
  v44 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel__showFallbackButton;
  LOBYTE(aBlock) = 0;
  Published.init(initialValue:)();
  v33(&v12[v44], v31, v27);
  v45 = v94;
  v46 = &v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion];
  *v46 = 0;
  v46[1] = 0;
  *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_dismissAnimationDuration] = 0x3FC3333333333333;
  v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_dismissed] = 0;
  v47 = *sub_10004FFDC();
  sub_10004FFF4();
  v48 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad;
  sub_10002B4A4(0, &qword_1000AF5C0, UIDevice_ptr);
  v12[v48] = sub_100069D50();
  *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_failures] = 0;
  v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_expectsDismissOnIpad] = 0;
  swift_unknownObjectWeakInit();
  v49 = &v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___cornerRadius];
  *v49 = 0;
  v49[8] = 1;
  v50 = &v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___backgroundOpacity];
  *v50 = 0;
  v50[8] = 1;
  v51 = &v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___biometrySubtitle];
  *v51 = 0;
  v51[1] = 0;
  v52 = &v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___passwordType];
  *v52 = 0;
  v52[8] = 1;
  *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel____lazy_storage___appIcon] = 1;
  v53 = *v46;
  v54 = v46[1];
  v55 = v100;
  v56 = v101;
  *v46 = v100;
  v46[1] = v56;
  sub_1000299DC(v55);
  sub_10002AA04(v53);
  v58 = v95;
  v57 = v96;
  *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_auditToken] = v95;
  *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_backoffCounter] = v45;
  *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_cachedContext] = v57;
  v60 = v97;
  v59 = v98;
  *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration] = v97;
  v61 = &v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_failureLimit];
  *v61 = v59;
  v61[8] = v99 & 1;
  v62 = v57;
  v63 = v58;
  swift_unknownObjectRetain();
  v64 = v60;
  v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_fallbackMethod] = sub_100032EAC([v64 requirement]);
  v65 = [v64 contextData];
  v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;

  v69 = objc_allocWithZone(LAContext);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10002AFD0(v66, v68);
  v71 = [v69 initWithExternalizedContext:isa];

  if (v71)
  {
    *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context] = v71;
    *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_policy] = v81;
    v72 = v82;
    *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_userId] = v82;
    *&v12[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_options] = a9;
    v73 = v72;
    v74 = [v64 passwordFieldPlaceholder];
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    swift_beginAccess();
    v109 = v75;
    v110 = v77;
    Published.init(initialValue:)();
    swift_endAccess();
    v108.receiver = v12;
    v108.super_class = ObjectType;
    v78 = objc_msgSendSuper2(&v108, "init");
    sub_100064208();
    sub_100064500(0);
    v79 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v106 = sub_100069D40;
    v107 = v79;
    aBlock = _NSConcreteStackBlock;
    v103 = 1107296256;
    v104 = sub_10002F4C0;
    v105 = &unk_100098D88;
    v80 = _Block_copy(&aBlock);

    [v45 currentBackoffErrorWithReply:v80];
    _Block_release(v80);
    sub_10002AA04(v100);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100064208()
{
  v1 = *&v0[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration];
  result = [v1 requirement];
  if (result > 3)
  {
    if (result != 4)
    {
      if (result == 5)
      {
        goto LABEL_13;
      }

      if (result != 6)
      {
        return result;
      }
    }

    v5 = [objc_opt_self() currentPasscode];
    v6 = [v5 type];

    if ((v6 - 1) > 3)
    {
      v7 = &LACustomPasswordTypeAlphanumeric;
    }

    else
    {
      v7 = *(&off_100099260 + (v6 - 1));
    }

    [v1 setPasscodeLength:*v7];
    goto LABEL_13;
  }

  if (result == 1)
  {
LABEL_13:
    v8 = *&v0[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context];
    [v8 canEvaluatePolicy:1 error:0];
    if ([v8 biometryType] == 2)
    {
      [v1 requiresIntent];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v0;
    return static Published.subscript.setter();
  }

  if (result != 2)
  {
    if (result != 3)
    {
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v0;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;
    return static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v0;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  static Published.subscript.setter();
  v12 = [objc_opt_self() currentPasscode];
  v13 = [v12 type];

  if ((v13 - 1) > 3)
  {
    v14 = &LACustomPasswordTypeAlphanumeric;
  }

  else
  {
    v14 = *(&off_100099260 + (v13 - 1));
  }

  return [v1 setPasscodeLength:*v14];
}

uint64_t sub_100064500(char a1)
{
  if (a1)
  {
    sub_100027AF4();
LABEL_19:
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v1;
    return static Published.subscript.setter();
  }

  v2 = *&v1[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_configuration];
  if ([v2 mode])
  {
    goto LABEL_4;
  }

  v5 = [v2 prompt];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      goto LABEL_4;
    }
  }

  if (v1[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_fallbackMethod] == 2)
  {
    goto LABEL_4;
  }

  v21 = v1[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_fallbackMethod];
  sub_100033020();
  v11 = v1;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v21 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v21 != 1)
    {
LABEL_4:
      v3 = [v2 prompt];
      if (v3)
      {
        v4 = v3;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      goto LABEL_19;
    }
  }

  v12 = sub_1000623A4();
  v13 = LACustomPasswordTypeFourDigits;
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v13 == v12 || LACustomPasswordTypeSixDigits == v12)
  {
    if (v15 == 1)
    {
      sub_100027820();
    }

    else if (v15)
    {
      sub_100027758();
    }

    else
    {
      sub_1000278E8();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v11;
  }

  else
  {
    if (v15 == 1)
    {
      sub_100027820();
    }

    else if (v15)
    {
      sub_100027758();
    }

    else
    {
      sub_1000278E8();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v11;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v19;
  }

  return static Published.subscript.setter();
}

uint64_t sub_100064880(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
    swift_errorRetain();
    v18 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = a1;
    aBlock[4] = sub_100069C48;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002B620;
    aBlock[3] = &unk_1000991F8;
    v16 = _Block_copy(aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000692F4(&qword_1000AE800, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
    sub_10002CBE0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = v18;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v12, v7);
  }

  return result;
}

uint64_t sub_100064BA8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = sub_10006865C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002B620;
  aBlock[3] = &unk_100098DD8;
  v15 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000692F4(&qword_1000AE800, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
  sub_10002CBE0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100064E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = __chkstk_darwin(v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_dismissed) & 1) == 0)
  {
    *(a2 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_dismissed) = 1;
    v15 = *(a2 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad);
    sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
    v22 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    if (v15)
    {
      v17[2] = v16;
      v17[3] = a1;
      v17[4] = nullsub_18;
      v17[5] = 0;
      v27 = sub_100069D48;
      v28 = v17;
      aBlock = _NSConcreteStackBlock;
      v24 = 1107296256;
      v18 = &unk_100099108;
    }

    else
    {
      v17[2] = 0x3FC3333333333333;
      v17[3] = v16;
      v17[4] = a1;
      v17[5] = nullsub_18;
      v17[6] = 0;
      v27 = sub_100069CF0;
      v28 = v17;
      aBlock = _NSConcreteStackBlock;
      v24 = 1107296256;
      v18 = &unk_1000990B8;
    }

    v25 = sub_10002B620;
    v26 = v18;
    v19 = _Block_copy(&aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_1000692F4(&qword_1000AE800, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
    sub_10002CBE0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v22;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v14, v9);
  }

  return result;
}

uint64_t sub_100065254(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_dismissed))
  {
    return a2(v15);
  }

  v27 = v15;
  v28 = v8;
  *(v3 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_dismissed) = 1;
  v19 = *(v3 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_isPad);
  sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
  v26 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  if (v19 == 1)
  {
    v21[2] = v20;
    v21[3] = a1;
    v21[4] = a2;
    v21[5] = a3;
    v33 = sub_100068668;
    v34 = v21;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v22 = &unk_100098E78;
  }

  else
  {
    v21[2] = 0x3FC3333333333333;
    v21[3] = v20;
    v21[4] = a1;
    v21[5] = a2;
    v21[6] = a3;
    v33 = sub_100068664;
    v34 = v21;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v22 = &unk_100098E28;
  }

  v31 = sub_10002B620;
  v32 = v22;
  v23 = _Block_copy(&aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_1000692F4(&qword_1000AE800, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
  sub_10002CBE0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v26;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v28 + 8))(v11, v7);
  return (*(v13 + 8))(v17, v27);
}

uint64_t sub_100065618(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_expectsDismissOnIpad;
    v7 = Strong;
    swift_beginAccess();
    v7[v6] = 1;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = (v8 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
    v11 = *(v8 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
    if (v11)
    {
      v12 = v10[1];

      v11(a2);
      sub_10002AA04(v11);
      v13 = *v10;
      v14 = v10[1];
      *v10 = 0;
      v10[1] = 0;
      sub_10002AA04(v13);
    }
  }

  return a3();
}

uint64_t sub_100065784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v36 = a3;
  v35 = a2;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v39 - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin(v39);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v33 - v16;
  __chkstk_darwin(v15);
  v19 = &v33 - v18;
  static Animation.easeIn(duration:)();
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1000282B4(&unk_1000B0240, &qword_100078718);
  withAnimation<A>(_:_:)();

  sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v10 + 8);
  v33 = v9;
  v22(v14, v9);
  + infix(_:_:)();
  v22(v17, v9);
  v23 = swift_allocObject();
  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v25 = swift_allocObject();
  v26 = v35;
  v25[2] = v23;
  v25[3] = v26;
  v27 = v37;
  v25[4] = v36;
  v25[5] = v27;
  aBlock[4] = sub_100069B8C;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002B620;
  aBlock[3] = &unk_100099158;
  v28 = _Block_copy(aBlock);
  swift_errorRetain();

  v29 = v34;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000692F4(&qword_1000AE800, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
  sub_10002CBE0();
  v31 = v38;
  v30 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v28);

  (*(v42 + 8))(v31, v30);
  (*(v40 + 8))(v29, v41);
  return (v22)(v19, v33);
}

id sub_100065CC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (aBlock == 1)
  {
    v10 = *(v4 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_cachedContext);
    if (v10 && (result = [v10 externalizedContext]) != 0 || (result = objc_msgSend(*(v4 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context), "externalizedContext")) != 0)
    {
      v12 = result;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      sub_100030844(a1, a2, v13, v15, *(v4 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_userId), *(v4 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_policy), *(v4 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_options), *(v4 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_auditToken), a3, a4, ObjectType, &off_100098F40);
      return sub_10002AFD0(v13, v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return a3(0);
  }

  return result;
}

uint64_t sub_100065F88(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_100065FDC()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return [*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context) retryProcessedEvent:7 reply:0];
}

uint64_t sub_100066068(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v26 - v18;
  if (a1)
  {
    v20 = static Animation.linear(duration:)();
    __chkstk_darwin(v20);
    *(&v26 - 2) = v1;
    withAnimation<A>(_:_:)();
  }

  else
  {
    v22 = *(v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context);
    [v22 canEvaluatePolicy:1 error:0];
    [v22 biometryType];
    sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
    v27 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v28 = *(v13 + 8);
    v28(v17, v12);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100068728;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002B620;
    aBlock[3] = &unk_100098EC8;
    v24 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000692F4(&qword_1000AE800, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
    sub_10002CBE0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v25 = v27;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v24);

    (*(v4 + 8))(v7, v3);
    (*(v29 + 8))(v11, v30);
    return (v28)(v19, v12);
  }
}

uint64_t sub_1000664D8()
{
  if (*(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_fallbackMethod) == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v0 = v0;
    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t sub_100066608(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v54 = *(v3 - 8);
  v4 = v54[8];
  (__chkstk_darwin)();
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_1000282B4(&qword_1000B00F0, &qword_100078560) - 8) + 64);
  v8 = (__chkstk_darwin)();
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v52 = &v50 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v50 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v50 - v16;
  __chkstk_darwin(v15);
  v53 = &v50 - v18;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 0;
    static Published.subscript.setter();
  }

  v50 = a2;
  v19 = _convertErrorToNSError(_:)();
  v20 = [v19 userInfo];

  v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v21 + 16))
  {
    v24 = sub_10002AC0C(v22, v23);
    v26 = v25;

    if (v26)
    {
      sub_10002B308(*(v21 + 56) + 32 * v24, aBlock);

      v27 = v53;
      v28 = swift_dynamicCast();
      v29 = v54;
      v30 = v54[7];
      v30(v27, v28 ^ 1u, 1, v3);
      goto LABEL_8;
    }
  }

  else
  {
  }

  v27 = v53;
  v29 = v54;
  v30 = v54[7];
  v30(v53, 1, 1, v3);
LABEL_8:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    sub_100034F7C(v27, v17, &qword_1000B00F0, &qword_100078560);
    if ((v29[6])(v17, 1, v3) == 1)
    {
      sub_10002B444(v17, &qword_1000B00F0, &qword_100078560);
      v33 = 0;
    }

    else
    {
      Date.init()();
      v34 = Date.compare(_:)();
      v35 = v54[1];
      v35(v6, v3);
      v35(v17, v3);
      v36 = v34 == 1;
      v27 = v53;
      v29 = v54;
      v33 = v36;
    }

    sub_100064500(v33);
  }

  sub_100034F7C(v27, v14, &qword_1000B00F0, &qword_100078560);
  if ((v29[6])(v14, 1, v3) == 1)
  {
    sub_10002B444(v14, &qword_1000B00F0, &qword_100078560);
LABEL_21:
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v48 = v52;
      v30(v52, 1, 1, v3);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100034F7C(v48, v51, &qword_1000B00F0, &qword_100078560);
      static Published.subscript.setter();
      sub_10002B444(v48, &qword_1000B00F0, &qword_100078560);
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v56 = 1;
      static Published.subscript.setter();
    }

    return sub_10002B444(v27, &qword_1000B00F0, &qword_100078560);
  }

  v37 = v29;
  Date.init()();
  v38 = Date.compare(_:)();
  v39 = v37[1];
  v39(v6, v3);
  v39(v14, v3);
  if (v38 != 1)
  {
    goto LABEL_21;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v40 = v52;
    sub_100034F7C(v27, v52, &qword_1000B00F0, &qword_100078560);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100034F7C(v40, v51, &qword_1000B00F0, &qword_100078560);
    static Published.subscript.setter();
    sub_10002B444(v40, &qword_1000B00F0, &qword_100078560);
  }

  v41 = objc_opt_self();
  v42 = swift_allocObject();
  swift_beginAccess();
  v43 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v44 = swift_allocObject();
  v45 = v50;
  *(v44 + 16) = v42;
  *(v44 + 24) = v45;
  aBlock[4] = sub_100069C48;
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002F86C;
  aBlock[3] = &unk_1000991A8;
  v46 = _Block_copy(aBlock);
  swift_errorRetain();

  v47 = [v41 scheduledTimerWithTimeInterval:0 repeats:v46 block:1.0];
  _Block_release(v46);

  return sub_10002B444(v27, &qword_1000B00F0, &qword_100078560);
}

void sub_100066DC4()
{
  v1 = (v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
  v2 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
  if (v2)
  {
    v3 = v1[1];

    v2(0);
    sub_10002AA04(v2);
    v4 = *v1;
    v5 = v1[1];
    *v1 = 0;
    v1[1] = 0;

    sub_10002AA04(v4);
  }
}

void *sub_100066E48()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if ([result respondsToSelector:"viewModelDidRejectDevicePasscode:"])
    {
      [v2 viewModelDidRejectDevicePasscode:v0];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100066ED4(uint64_t result)
{
  v2 = (v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
  v3 = *(v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
  if (v3)
  {
    v4 = result;
    v5 = v2[1];

    v3(v4);
    sub_10002AA04(v3);
    v6 = *v2;
    v7 = v2[1];
    *v2 = 0;
    v2[1] = 0;

    return sub_10002AA04(v6);
  }

  return result;
}

uint64_t sub_100067318@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100067418()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100068CD4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002B620;
  aBlock[3] = &unk_100098EF0;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000692F4(&qword_1000AE800, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
  sub_10002CBE0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100067728()
{
  v1 = sub_1000282B4(&qword_1000B0150, &qword_100078578);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_100067B18(0, 0, v4, &unk_100079C78, v6);
}

uint64_t sub_10006782C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10006784C, 0, 0);
}

uint64_t sub_10006784C()
{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000678E0, v2, v1);
}

uint64_t sub_1000678E0()
{
  v2 = v0[3];
  v1 = v0[4];

  sub_100067980(v2);
  v3 = v0[1];

  return v3();
}

void (*sub_100067980(uint64_t a1))(id *, void)
{
  v2 = *(a1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context);
  [v2 canEvaluatePolicy:1 error:0];
  result = [v2 biometryType];
  if (result == 2)
  {
    v4 = *(a1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context);
    v9[0] = 0;
    [v4 canEvaluatePolicy:1 error:v9];
    v5 = v9[0];
    v6 = v9[0];
    if (v5)
    {
      sub_1000688AC(v6);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      result = static Published.subscript.modify();
      if (__OFADD__(*v7, 1))
      {
        __break(1u);
      }

      else
      {
        ++*v7;
        result(v9, 0);

        __chkstk_darwin(v8);
        static Animation.default.getter();
        withAnimation<A>(_:_:)();
      }
    }
  }

  return result;
}

uint64_t sub_100067B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000282B4(&qword_1000B0150, &qword_100078578);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100034F7C(a3, v27 - v11, &qword_1000B0150, &qword_100078578);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10002B444(v12, &qword_1000B0150, &qword_100078578);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10002B444(a3, &qword_1000B0150, &qword_100078578);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002B444(a3, &qword_1000B0150, &qword_100078578);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100067F28(uint64_t a1, uint64_t a2)
{
  result = static Int._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100067F7C(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100067FD4@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_100067FFC()
{
  v2 = *v0;
  sub_1000692F4(&qword_1000B0230, type metadata accessor for LACustomPasswordType);
  sub_1000692F4(&qword_1000B0238, type metadata accessor for LACustomPasswordType);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000680F4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000681EC;

  return v7(a1);
}

uint64_t sub_1000681EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_1000682E4(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1000282B4(&qword_1000B0260, qword_100079F80);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1000692F4(&qword_1000B0268, &type metadata accessor for Calendar.Component);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1000692F4(&unk_1000B0270, &type metadata accessor for Calendar.Component);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100068604()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068644(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100068674()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100068728()
{
  static Animation.linear(duration:)();
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  withAnimation<A>(_:_:)();
}

uint64_t sub_1000687EC()
{
  v1 = *(v0 + 16);
  sub_1000664D8();
  sub_100064500(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1000688AC(uint64_t a1)
{
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v28 - 8);
  v3 = *(v31 + 64);
  __chkstk_darwin(v28);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v27 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v18 = *(v1 + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context);
  [v18 canEvaluatePolicy:1 error:0];
  [v18 biometryType];
  sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
  v19 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v11 + 8);
  v20(v15, v10);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = a1;
  aBlock[4] = sub_100069830;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002B620;
  aBlock[3] = &unk_100099068;
  v23 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000692F4(&qword_1000AE800, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
  sub_10002CBE0();
  v24 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);

  (*(v31 + 8))(v5, v24);
  (*(v29 + 8))(v9, v30);
  return (v20)(v17, v27);
}

void sub_100068CD4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context;
    v2 = Strong;
    [*(Strong + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_context) canEvaluatePolicy:1 error:0];
    v3 = [*&v2[v1] biometryType];

    if (v3 == 1)
    {
      v4 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:2];
      [v4 impactOccurred];

      swift_allocObject();
      swift_beginAccess();
      v5 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      static Animation.default.getter();
      sub_1000282B4(&unk_1000B0240, &qword_100078718);
      withAnimation<A>(_:_:)();
    }
  }
}

uint64_t sub_100068E38(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004AAC0;

  return sub_10006782C(a1, v5, v6, v4);
}

uint64_t type metadata accessor for AuthorizationViewModel()
{
  result = qword_1000B1960;
  if (!qword_1000B1960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100068F38()
{
  sub_10006925C(319, &qword_1000B0180, &type metadata for Bool, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_10003F748(319, &qword_1000B0188, &qword_1000B00F0, &qword_100078560);
    if (v4 <= 0x3F)
    {
      v13 = *(v3 - 8) + 64;
      sub_10003F748(319, &qword_1000B0190, &qword_1000B0108, &qword_100079AB8);
      if (v6 <= 0x3F)
      {
        v14 = *(v5 - 8) + 64;
        sub_10006925C(319, &qword_1000B0198, &type metadata for String, &type metadata accessor for Published);
        if (v8 <= 0x3F)
        {
          v15 = *(v7 - 8) + 64;
          sub_10006925C(319, &qword_1000B01A0, &type metadata for Int, &type metadata accessor for Published);
          if (v10 <= 0x3F)
          {
            v16 = *(v9 - 8) + 64;
            v11 = type metadata accessor for Logger();
            if (v12 <= 0x3F)
            {
              v17 = *(v11 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_10006925C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1000692F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000693D0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004A568;

  return sub_10006782C(a1, v5, v6, v4);
}

uint64_t sub_100069470()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000694A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10004AAC0;

  return sub_1000680F4(a1, v5);
}

uint64_t sub_100069560(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10004A568;

  return sub_1000680F4(a1, v5);
}

uint64_t sub_100069618()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6 >= 2)
  {
    v3 = v2[OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_fallbackMethod] != 2;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  return static Published.subscript.setter();
}

void sub_100069744(BOOL *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = static Published.subscript.modify();
  if (!__OFADD__(*v4, 1))
  {
    ++*v4;
    v3(v5, 0);

LABEL_4:
    *a1 = Strong == 0;
    return;
  }

  __break(1u);
}

void sub_100069830()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      if (*(Strong + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_fallbackMethod) == 2)
      {
        sub_100064E98(v2, Strong);
      }

      else
      {
        sub_100066068(0);
      }
    }

    else
    {
      v5 = (Strong + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
      v6 = *(Strong + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
      if (v6)
      {
        v7 = v5[1];

        v6(0);
        sub_10002AA04(v6);
        v8 = *v5;
        v9 = v5[1];
        *v5 = 0;
        v5[1] = 0;
        sub_10002AA04(v8);
      }
    }
  }
}

uint64_t sub_100069908()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100069964()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000664D8();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_100064500(0);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_100069AA8@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = result;
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    result = static Published.subscript.setter();
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_100069B44()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100069B8C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = (Strong + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
    v8 = *(Strong + OBJC_IVAR____TtC10CoreAuthUI22AuthorizationViewModel_completion);
    if (v8)
    {
      v9 = v7[1];

      v8(v2);
      sub_10002AA04(v8);
      v10 = *v7;
      v11 = v7[1];
      *v7 = 0;
      v7[1] = 0;
      sub_10002AA04(v10);
    }
  }

  return v4();
}

void sub_100069C48()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100064BA8(v1);
  }
}

BOOL sub_100069D50()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 1;
}

id sub_100069DAC()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1000B1C78 = result;
  return result;
}

uint64_t sub_100069E84(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ImageResource();
  sub_10005D914(v3, a2);
  sub_10005D8DC(v3, a2);
  if (qword_1000B1C70 != -1)
  {
    swift_once();
  }

  v4 = qword_1000B1C78;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100069F4C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for ImageResource();

  return sub_10005D8DC(v3, a2);
}

uint64_t sub_100069FC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ImageResource();
  v6 = sub_10005D8DC(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void sub_10006A080(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid FaceIdLightweightTrailingViewState: %d", v2, 8u);
}

void sub_10006A0F8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to open URL: %{public}@ error: %{public}@", &v3, 0x16u);
}

void sub_10006A180(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to unarchive tint color: %{public}@", &v2, 0xCu);
}

void sub_10006A1F8(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Won't hide secure glyph because %.3f sec minimum display time remains", &v2, 0xCu);
}

void sub_10006A2CC()
{
  WeakRetained = objc_loadWeakRetained(&qword_1000B0330);
  sub_100013F60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10006A378()
{
  WeakRetained = objc_loadWeakRetained(&qword_1000B0330);
  sub_100013F54();
  sub_100013F60();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10006A528(uint64_t a1)
{
  v1 = [*(a1 + 32) requestID];
  sub_100013F54();
  sub_100013F60();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10006A5D0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 48);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "executing part 1, tid:%u", v3, 8u);
}

void sub_10006A64C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 48);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "executing part 2, tid:%u", v3, 8u);
}

void sub_10006A730(char a1, uint64_t a2, os_log_t log)
{
  v3 = "portrait";
  if (a1)
  {
    v3 = "all";
  }

  v4 = "YES";
  if (!*(a2 + 24))
  {
    v4 = "NO";
  }

  v5 = 136315394;
  v6 = v3;
  v7 = 2080;
  v8 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "supportedInterfaceOrientations: %s, _allowsLandscape: %s", &v5, 0x16u);
}

void sub_10006A85C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  sub_100013F54();
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Found error (%{public}@) while destroying %{public}@", v5, 0x16u);
}

void sub_10006A928(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to unarchive tint color. Received: '%{public}@'.", &v2, 0xCu);
}

void sub_10006AAA0(uint64_t a1, id *a2)
{
  [*a2 count];
  sub_10001C450();
  sub_10001C4A0(&_mh_execute_header, v2, v3, "%{public}@ was revoked and will complete when the presentable disappears, tracking %u completion handlers.", v4, v5, v6, v7, v8);
}

void sub_10006AB88(uint64_t a1, id *a2)
{
  [*a2 count];
  sub_10001C450();
  sub_10001C4A0(&_mh_execute_header, v2, v3, "%{public}@ already being revoked, tracking %u completion handlers.", v4, v5, v6, v7, v8);
}

void sub_10006AC1C(uint64_t a1, NSObject *a2)
{
  v3 = NSStringFromLAPasscodeType();
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unrecognized passcode type: %@", &v4, 0xCu);
}

void sub_10006ACB4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected type of secure UI controller: %@", &v2, 0xCu);
}

void sub_10006AD70(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@ watchdog for secure UI transitions triggered, dismissing now", &v2, 0xCu);
}

void sub_10006AE10(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not set credential (%@)", &v1, 0xCu);
}

void sub_10006AE90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = 138412546;
  v4 = v2;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not send action: %@ error: %@", &v3, 0x16u);
}

void sub_10006AF20(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not obtain remote proxy: %@", &v1, 0xCu);
}

void sub_10006AFA0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@ already verifying passcode", &v2, 0xCu);
}

void sub_10006B044(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}