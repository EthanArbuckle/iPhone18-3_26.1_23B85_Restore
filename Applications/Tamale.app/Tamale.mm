int main(int argc, const char **argv, const char **envp)
{
  static GreymatterAvailability.preheat()();
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for TamaleApp();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for TamaleAppDelegate();
  v7 = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(v7);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, v6, v8);

  return 0;
}

uint64_t sub_1000031FC()
{
  if (sub_10015CB14(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_100003264()
{
  if (sub_10015CB14(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    sub_100003358();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    sub_100004524(&qword_1001D31F8, &type metadata accessor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

unint64_t sub_100003358()
{
  result = qword_1001D31F0;
  if (!qword_1001D31F0)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D31F0);
  }

  return result;
}

uint64_t sub_1000033A8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000033F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (sub_10015CB14(2, 26, 4, 0))
  {
    v33 = a6;
    v34 = a7;
    v35 = v8;
    v32 = type metadata accessor for _TaskModifier2();
    v17 = *(v32 - 8);
    __chkstk_darwin(v32);
    v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v37[0] = 0;
      v37[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v37, "View.task @ ");
      BYTE5(v37[1]) = 0;
      HIWORD(v37[1]) = -5120;
      v24._countAndFlagsBits = a3;
      v24._object = a4;
      String.append(_:)(v24);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
      v36 = a5;
      v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v26);
    }

    v27 = type metadata accessor for TaskPriority();
    __chkstk_darwin(v27);
    (*(v29 + 16))(&v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    sub_100003734(v35, a8);
    v30 = sub_1000033A8(&qword_1001D3208);
    return (*(v17 + 32))(a8 + *(v30 + 36), v19, v32);
  }

  else
  {
    v20 = (a8 + *(sub_1000033A8(&qword_1001D3210) + 36));
    v21 = *(type metadata accessor for _TaskModifier() + 20);
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 16))(&v20[v21], a2, v22);
    *v20 = a6;
    *(v20 + 1) = a7;

    return sub_100003734(v8, a8);
  }
}

uint64_t sub_100003734(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D3200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t default argument 3 of View.mitosisCell<A>(shape:cornerRadius:inset:style:)@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for RoundedCornerStyle.continuous(_:);
  v3 = type metadata accessor for RoundedCornerStyle();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

BOOL sub_100003880(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000038B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1000038DC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000039E4(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003A5C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003ADC@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100003B44@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_100003B70@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100003B80()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100003CB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100004290(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100003CF0()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100003D78()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100003DF0@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100003E38(uint64_t a1)
{
  v2 = sub_100004524(&qword_1001D3550, type metadata accessor for CIImageOption);
  v3 = sub_100004524(&qword_1001D3558, type metadata accessor for CIImageOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003EF4(uint64_t a1)
{
  v2 = sub_100004524(&qword_1001D3540, type metadata accessor for ObjectType);
  v3 = sub_100004524(&qword_1001D3548, type metadata accessor for ObjectType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003FB0(uint64_t a1)
{
  v2 = sub_100004524(&qword_1001D3530, type metadata accessor for DeviceType);
  v3 = sub_100004524(&qword_1001D3538, type metadata accessor for DeviceType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

Swift::Int sub_100004128()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10000418C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000041C8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000421C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100004290(uint64_t a1)
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

__n128 sub_1000042DC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000042EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 sub_10000433C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100004348(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

__n128 sub_1000043A4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000043B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000043D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_10000441C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000443C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_100004524(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_100004710(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100004724(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004744(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_1000047B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000047D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_10000484C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_10000502C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10000509C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100005108()
{

  return swift_deallocClassInstance();
}

__n128 sub_10000518C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000051A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000051E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_100005250(uint64_t a1)
{
  v2 = sub_1000054F0(a1, *v1, *(v1 + 8));

  return v2;
}

uint64_t sub_1000052A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = v1[2];
  v6 = v1[5];
  type metadata accessor for LiveTextView.Coordinator();
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = *(v1 + 3);
  *(v7 + 56) = v6;
  *a1 = v7;
}

uint64_t sub_10000538C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000055DC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000053F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000055DC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100005470()
{
  sub_1000055DC();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10000549C()
{
  result = qword_1001D3930;
  if (!qword_1001D3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3930);
  }

  return result;
}

void *sub_1000054F0(uint64_t a1, void *a2, char a3)
{
  v5 = a2[4];
  [v5 setWantsAutomaticContentsRectCalculation:0];
  [v5 setDelegate:a2[3]];
  v6 = a2[2];
  [v6 addInteraction:v5];
  *(v6 + OBJC_IVAR____TtC6TamaleP33_31636EDB02EC328D3D92B71E399B2D0913HitTestUIView_shouldPassthroughUserInput) = a3;
  [v5 setActiveInteractionTypes:3];
  sub_1000033A8(&qword_1001D3938);
  UIViewRepresentableContext.coordinator.getter();
  swift_weakAssign();

  return v6;
}

unint64_t sub_1000055DC()
{
  result = qword_1001D3940;
  if (!qword_1001D3940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3940);
  }

  return result;
}

uint64_t sub_100005630(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100005640(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100005650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D3948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000056C0(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D3948);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000573C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AnnotationViewConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CameraControllerConfiguration(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for MapsConfiguration();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1000058A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for AnnotationViewConfiguration();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for CameraControllerConfiguration(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for MapsConfiguration();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for AppConfiguration()
{
  result = qword_1001D39A8;
  if (!qword_1001D39A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005A48()
{
  result = type metadata accessor for AnnotationViewConfiguration();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CameraControllerConfiguration(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MapsConfiguration();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100005B18@<X0>(uint64_t a1@<X8>)
{
  static AnnotationViewConfiguration.factorySettings.getter();
  v2 = type metadata accessor for AppConfiguration();
  sub_100038468(a1 + v2[5]);
  v3 = v2[6];
  if (qword_1001D31C0 != -1)
  {
    swift_once();
  }

  v4 = (a1 + v3);
  *v4 = byte_1001EB600;
  v4[1] = 0;
  static MapsConfiguration.factorySettings.getter();
  v5 = (a1 + v2[8]);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = v2[10];
  type metadata accessor for UserDefaultsUtility();
  UserDefaultsUtility.__allocating_init()();
  v7 = dispatch thunk of UserDefaultsUtility.enableStickers.getter();

  *(a1 + v6) = v7 & 1;
  v8 = (a1 + v2[11]);
  UserDefaultsUtility.__allocating_init()();
  v9 = dispatch thunk of UserDefaultsUtility.enableCopyPhoto.getter();

  UserDefaultsUtility.__allocating_init()();
  v10 = dispatch thunk of UserDefaultsUtility.enableSavePhoto.getter();

  *v8 = v9 & 1;
  v8[1] = v10 & 1;
  return result;
}

Swift::Int sub_100005C60()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100005CD4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100005D18()
{
  v1 = *v0;
  v2 = 0xD00000000000001ALL;
  if (v1 == 6)
  {
    v2 = 0xD000000000000015;
  }

  v3 = 0xD000000000000017;
  if (v1 == 4)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000011;
  if (v1 == 2)
  {
    v4 = 0xD000000000000014;
  }

  v5 = 0xD00000000000001DLL;
  if (!*v0)
  {
    v5 = 0xD00000000000001BLL;
  }

  if (*v0 > 1u)
  {
    v5 = v4;
  }

  if (*v0 <= 3u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100005DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000073CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100005E34(uint64_t a1)
{
  v2 = sub_100006AF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100005E70(uint64_t a1)
{
  v2 = sub_100006AF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100005EAC(void *a1)
{
  v3 = v1;
  v5 = sub_1000033A8(&qword_1001D3A60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_100006AAC(a1, a1[3]);
  sub_100006AF0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  type metadata accessor for AnnotationViewConfiguration();
  sub_100006EAC(&qword_1001D3A68, &type metadata accessor for AnnotationViewConfiguration);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for AppConfiguration();
    LOBYTE(v19) = 1;
    type metadata accessor for CameraControllerConfiguration(0);
    sub_100006EAC(&qword_1001D3A70, type metadata accessor for CameraControllerConfiguration);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + v9[6]);
    v11 = *v10;
    LOBYTE(v10) = v10[1];
    LOBYTE(v19) = v11;
    BYTE1(v19) = v10;
    v21 = 2;
    sub_100006E58();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v19) = 3;
    type metadata accessor for MapsConfiguration();
    sub_100006EAC(&qword_1001D3A80, &type metadata accessor for MapsConfiguration);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = (v3 + v9[8]);
    v14 = *v12;
    v13 = v12[1];
    v19 = v14;
    v20 = v13;
    v21 = 4;
    sub_100006EF4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v19) = 5;
    sub_100006F48();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v19) = *(v3 + v9[10]);
    v21 = 6;
    sub_100006F9C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + v9[11]);
    v16 = *v15;
    LOBYTE(v15) = v15[1];
    LOBYTE(v19) = v16;
    BYTE1(v19) = v15;
    v21 = 7;
    sub_100006FF0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100006284@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v39 = a2;
  v43 = type metadata accessor for MapsConfiguration();
  v40 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v46);
  v47 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for AnnotationViewConfiguration();
  v45 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000033A8(&qword_1001D3A10);
  v6 = *(v5 - 8);
  v50 = v5;
  v51 = v6;
  __chkstk_darwin(v5);
  v8 = &v39 - v7;
  v9 = type metadata accessor for AppConfiguration();
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AnnotationViewConfiguration.factorySettings.getter();
  v44 = v9[5];
  sub_100038468(&v11[v44]);
  v12 = &v11[v9[6]];
  if (qword_1001D31C0 != -1)
  {
    swift_once();
  }

  *v12 = byte_1001EB600;
  v12[1] = 0;
  v13 = v9[7];
  static MapsConfiguration.factorySettings.getter();
  v14 = &v11[v9[8]];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  v15 = v9[10];
  type metadata accessor for UserDefaultsUtility();
  v41 = v12;
  UserDefaultsUtility.__allocating_init()();
  v16 = dispatch thunk of UserDefaultsUtility.enableStickers.getter();

  v11[v15] = v16 & 1;
  v17 = v9[11];
  v54 = v11;
  v18 = &v11[v17];
  UserDefaultsUtility.__allocating_init()();
  v19 = dispatch thunk of UserDefaultsUtility.enableCopyPhoto.getter();

  v20 = v18;
  UserDefaultsUtility.__allocating_init()();
  LOBYTE(v18) = dispatch thunk of UserDefaultsUtility.enableSavePhoto.getter();

  *v20 = v19 & 1;
  v20[1] = v18 & 1;
  v21 = v53;
  sub_100006AAC(v53, v53[3]);
  sub_100006AF0();
  v22 = v52;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v23 = v21;
  if (v22)
  {
    v37 = v54;
  }

  else
  {
    v24 = v8;
    v52 = v13;
    LOBYTE(v55) = 0;
    sub_100006EAC(&qword_1001D3A20, &type metadata accessor for AnnotationViewConfiguration);
    v25 = v48;
    v26 = v49;
    v27 = v50;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = v25;
    v30 = v54;
    (*(v45 + 40))(v54, v29, v26);
    LOBYTE(v55) = 1;
    sub_100006EAC(&qword_1001D3A28, type metadata accessor for CameraControllerConfiguration);
    v31 = v47;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100006BEC(v31, &v30[v44]);
    v57 = 2;
    sub_100006C50();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = BYTE1(v55);
    v33 = v41;
    *v41 = v55;
    v33[1] = v32;
    LOBYTE(v55) = 3;
    sub_100006EAC(&qword_1001D3A38, &type metadata accessor for MapsConfiguration);
    v34 = v42;
    v35 = v43;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v40 + 40))(&v54[v52], v34, v35);
    v57 = 4;
    sub_100006CA4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36 = v56;
    *v14 = v55;
    *(v14 + 1) = v36;
    LOBYTE(v55) = 5;
    sub_100006CF8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v57 = 6;
    sub_100006D4C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v37 = v54;
    v54[v15] = v55;
    v57 = 7;
    sub_100006DA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v51 + 8))(v24, v27);
    v38 = BYTE1(v55);
    *v20 = v55;
    v20[1] = v38;
    sub_100006DF4(v37, v39);
  }

  sub_100006B44(v23);
  return sub_100006B90(v37);
}

void *sub_100006AAC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100006AF0()
{
  result = qword_1001D3A18;
  if (!qword_1001D3A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3A18);
  }

  return result;
}

uint64_t sub_100006B44(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100006B90(uint64_t a1)
{
  v2 = type metadata accessor for AppConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraControllerConfiguration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100006C50()
{
  result = qword_1001D3A30;
  if (!qword_1001D3A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3A30);
  }

  return result;
}

unint64_t sub_100006CA4()
{
  result = qword_1001D3A40;
  if (!qword_1001D3A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3A40);
  }

  return result;
}

unint64_t sub_100006CF8()
{
  result = qword_1001D3A48;
  if (!qword_1001D3A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3A48);
  }

  return result;
}

unint64_t sub_100006D4C()
{
  result = qword_1001D3A50;
  if (!qword_1001D3A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3A50);
  }

  return result;
}

unint64_t sub_100006DA0()
{
  result = qword_1001D3A58;
  if (!qword_1001D3A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3A58);
  }

  return result;
}

uint64_t sub_100006DF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100006E58()
{
  result = qword_1001D3A78;
  if (!qword_1001D3A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3A78);
  }

  return result;
}

uint64_t sub_100006EAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100006EF4()
{
  result = qword_1001D3A88;
  if (!qword_1001D3A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3A88);
  }

  return result;
}

unint64_t sub_100006F48()
{
  result = qword_1001D3A90;
  if (!qword_1001D3A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3A90);
  }

  return result;
}

unint64_t sub_100006F9C()
{
  result = qword_1001D3A98;
  if (!qword_1001D3A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3A98);
  }

  return result;
}

unint64_t sub_100006FF0()
{
  result = qword_1001D3AA0;
  if (!qword_1001D3AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3AA0);
  }

  return result;
}

uint64_t sub_100007044(uint64_t a1, uint64_t a2)
{
  if ((static AnnotationViewConfiguration.== infix(_:_:)() & 1) == 0)
  {
LABEL_12:
    v6 = 0;
    return v6 & 1;
  }

  v4 = type metadata accessor for AppConfiguration();
  v5 = sub_10004B234(a1 + v4[5], a2 + v4[5]);
  v6 = 0;
  if (v5)
  {
    v7 = v4[6];
    v8 = a1 + v7;
    v9 = *(a1 + v7);
    v10 = (a2 + v7);
    if (v9 == *v10 && ((*(v8 + 1) ^ v10[1]) & 1) == 0)
    {
      if (static MapsConfiguration.== infix(_:_:)())
      {
        v11 = v4[8];
        v12 = *(a1 + v11);
        v13 = *(a1 + v11 + 8);
        v14 = (a2 + v11);
        v15 = v12 == *v14 && v13 == v14[1];
        if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + v4[10]) == *(a2 + v4[10]))
        {
          v6 = (*(a1 + v4[11]) ^ *(a2 + v4[11]) | *(a1 + v4[11] + 1) ^ *(a2 + v4[11] + 1)) ^ 1;
          return v6 & 1;
        }
      }

      goto LABEL_12;
    }
  }

  return v6 & 1;
}

uint64_t getEnumTagSinglePayload for AppConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000072C8()
{
  result = qword_1001D3AA8;
  if (!qword_1001D3AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3AA8);
  }

  return result;
}

unint64_t sub_100007320()
{
  result = qword_1001D3AB0;
  if (!qword_1001D3AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3AB0);
  }

  return result;
}

unint64_t sub_100007378()
{
  result = qword_1001D3AB8;
  if (!qword_1001D3AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3AB8);
  }

  return result;
}

uint64_t sub_1000073CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001BLL && 0x800000010016B180 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000010016B1A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010016B1C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010016B1E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010016B200 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010016B220 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010016B240 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010016B260 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_100007658()
{
  swift_getKeyPath();
  sub_100007954();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_1000076C8(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100007954();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000077B0()
{
  v1 = OBJC_IVAR____TtC6Tamale13LaunchOptions___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LaunchOptions()
{
  result = qword_1001D3AF0;
  if (!qword_1001D3AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000078A0()
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_100007954()
{
  result = qword_1001D41D0;
  if (!qword_1001D41D0)
  {
    type metadata accessor for LaunchOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D41D0);
  }

  return result;
}

uint64_t sub_1000079AC(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 sub_1000079C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000079DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100007A24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_100007A6C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void sub_100007AB4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (*(v0 + 32) <= 1u)
  {
    if (*(v0 + 32))
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }

LABEL_7:
    Hasher._combine(_:)(v5);
    String.hash(into:)();

    String.hash(into:)();
    return;
  }

  if (*(v0 + 32) == 2)
  {
    v5 = 9;
    goto LABEL_7;
  }

  if (v4 | v2 | v1 | v3)
  {
    v6 = v4 | v2 | v3;
    if (v1 == 1 && v6 == 0)
    {
      v8 = 1;
    }

    else if (v1 != 2 || v6)
    {
      if (v1 != 3 || v6)
      {
        if (v1 != 4 || v6)
        {
          if (v1 != 5 || v6)
          {
            v8 = 8;
          }

          else
          {
            v8 = 7;
          }
        }

        else
        {
          v8 = 6;
        }
      }

      else
      {
        v8 = 5;
      }
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  Hasher._combine(_:)(v8);
}

uint64_t sub_100007BEC(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_100007D2C(v5, v7) & 1;
}

Swift::Int sub_100007C38()
{
  Hasher.init(_seed:)();
  sub_100007AB4();
  return Hasher._finalize()();
}

Swift::Int sub_100007C7C()
{
  Hasher.init(_seed:)();
  sub_100007AB4();
  return Hasher._finalize()();
}

uint64_t sub_100007CB8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_100007F40(v2, v3, v4, v5, v6);
}

unint64_t sub_100007CD8()
{
  result = qword_1001D3BE0;
  if (!qword_1001D3BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3BE0);
  }

  return result;
}

uint64_t sub_100007D2C(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      if (a2[2].i8[0] == 2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v12 = v5 | v4;
      if (v12 | v3 | v6)
      {
        v13 = v12 | v6;
        if (v3 == 1 && v13 == 0)
        {
          if (a2[2].i8[0] != 3 || a2->i64[0] != 1)
          {
            return 0;
          }
        }

        else if (v3 != 2 || v13)
        {
          if (v3 != 3 || v13)
          {
            if (v3 != 4 || v13)
            {
              if (v3 != 5 || v13)
              {
                if (a2[2].i8[0] != 3 || a2->i64[0] != 6)
                {
                  return 0;
                }
              }

              else if (a2[2].i8[0] != 3 || a2->i64[0] != 5)
              {
                return 0;
              }
            }

            else if (a2[2].i8[0] != 3 || a2->i64[0] != 4)
            {
              return 0;
            }
          }

          else if (a2[2].i8[0] != 3 || a2->i64[0] != 3)
          {
            return 0;
          }
        }

        else if (a2[2].i8[0] != 3 || a2->i64[0] != 2)
        {
          return 0;
        }

        if (!(a2[1].i64[0] | a2[1].i64[1] | a2->i64[1]))
        {
          return 1;
        }
      }

      else if (a2[2].i8[0] == 3)
      {
        v15 = vorrq_s8(*a2, a2[1]);
        if (!*&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (v7)
  {
    if (a2[2].i8[0] == 1)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (a2[2].i8[0])
  {
    return 0;
  }

LABEL_9:
  v8 = a2[1].i64[0];
  v9 = a2[1].i64[1];
  v10 = v3 == a2->i64[0] && v4 == a2->i64[1];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v5 == v8 && v6 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100007F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 2u)
  {
  }

  return result;
}

unint64_t sub_100007F90()
{
  result = qword_1001D3BE8[0];
  if (!qword_1001D3BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D3BE8);
  }

  return result;
}

uint64_t sub_100007FE4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10000802C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100008058(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1000080A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000815C()
{
  sub_1000033A8(&qword_1001D3E78);
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t sub_1000081B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v146 = a2;
  v5 = type metadata accessor for AccessibilityActionKind();
  v144 = *(v5 - 8);
  v145 = v5;
  __chkstk_darwin(v5);
  v143 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessibilityChildBehavior();
  v141 = *(v7 - 8);
  v142 = v7;
  __chkstk_darwin(v7);
  v140 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LongPressGesture();
  v10 = *(v9 - 8);
  v127 = v9;
  v128 = v10;
  __chkstk_darwin(v9);
  v120 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000033A8(&qword_1001D3CF0);
  v13 = *(v12 - 8);
  v129 = v12;
  v130 = v13;
  __chkstk_darwin(v12);
  v125 = &v111 - v14;
  v115 = type metadata accessor for TapGesture();
  v126 = *(v115 - 1);
  __chkstk_darwin(v115);
  v16 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1000033A8(&qword_1001D3D88);
  v149 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v111 - v17;
  v147 = sub_1000033A8(&qword_1001D3D80);
  __chkstk_darwin(v147);
  v19 = &v111 - v18;
  v20 = sub_1000033A8(&qword_1001D3D78);
  v21 = *(v20 - 8);
  v121 = v20;
  v122 = v21;
  __chkstk_darwin(v20);
  v148 = &v111 - v22;
  v23 = sub_1000033A8(&qword_1001D3DC0);
  v24 = *(v23 - 8);
  v123 = v23;
  v124 = v24;
  __chkstk_darwin(v23);
  v117 = &v111 - v25;
  v118 = sub_1000033A8(&qword_1001D3D68);
  __chkstk_darwin(v118);
  v119 = &v111 - v26;
  v27 = sub_1000033A8(&qword_1001D3DC8);
  v132 = *(v27 - 8);
  v133 = v27;
  __chkstk_darwin(v27);
  v114 = &v111 - v28;
  v135 = sub_1000033A8(&qword_1001D3D58);
  __chkstk_darwin(v135);
  v131 = &v111 - v29;
  v30 = sub_1000033A8(&qword_1001D3DD0);
  v136 = *(v30 - 8);
  v137 = v30;
  __chkstk_darwin(v30);
  v134 = &v111 - v31;
  v139 = sub_1000033A8(&qword_1001D3D50);
  __chkstk_darwin(v139);
  v138 = &v111 - v32;
  v33 = a1;
  v150 = a1;
  v34 = a1[3];
  v158 = a1[2];
  v159 = v158;
  v160 = v34;
  v36 = a1[4];
  v35 = a1[5];
  v161 = v36;
  v162 = v35;
  v155 = v36;
  v156 = v34;
  v37 = v33[6];
  v152 = v33[7];
  v163 = v37;
  v164 = v152;
  v153 = v37;
  v154 = v35;
  v38 = v33[8];
  v157 = v33[9];
  v165 = v38;
  v166 = v157;
  v151 = v38;
  v167 = v3;
  sub_1000033A8(&qword_1001D3DD8);
  sub_100013084();
  v112 = v19;
  Button.init(action:label:)();
  static Edge.Set.all.getter();
  v171 = 0u;
  v172 = 0u;
  v173 = 1;
  SafeAreaPaddingModifier.init(edges:insets:)();
  TapGesture.init(count:)();
  v39 = swift_allocObject();
  v40 = v157;
  *(v39 + 16) = v158;
  *(v39 + 24) = v34;
  *(v39 + 32) = v36;
  *(v39 + 40) = v35;
  *(v39 + 48) = v37;
  v41 = v152;
  *(v39 + 56) = v152;
  *(v39 + 64) = v38;
  *(v39 + 72) = v40;
  v42 = v3[5];
  *(v39 + 144) = v3[4];
  *(v39 + 160) = v42;
  *(v39 + 176) = *(v3 + 12);
  v43 = v3[1];
  *(v39 + 80) = *v3;
  *(v39 + 96) = v43;
  v44 = v3[3];
  v45 = v150;
  *(v39 + 112) = v3[2];
  *(v39 + 128) = v44;
  v46 = *(v45 - 1);
  v47 = *(v46 + 16);
  (v47)(&v168, v3);
  v48 = v113;
  v49 = v115;
  Gesture.onEnded(_:)();

  (*(v126 + 8))(v16, v49);
  static GestureMask.all.getter();
  v50 = sub_100012F14();
  v115 = &protocol conformance descriptor for _EndedGesture<A>;
  v111 = sub_100013608(&qword_1001D3DB0, &qword_1001D3D88);
  v51 = v147;
  v52 = v116;
  v53 = v112;
  View.highPriorityGesture<A>(_:including:)();
  v149[1](v48, v52);
  sub_10001370C(v53, &qword_1001D3D80);
  v54 = v120;
  LongPressGesture.init(minimumDuration:maximumDistance:)();
  v55 = swift_allocObject();
  v57 = v155;
  v56 = v156;
  *(v55 + 16) = v158;
  *(v55 + 24) = v56;
  v58 = v153;
  v59 = v154;
  *(v55 + 32) = v57;
  *(v55 + 40) = v59;
  *(v55 + 48) = v58;
  *(v55 + 56) = v41;
  v60 = v114;
  v61 = v157;
  *(v55 + 64) = v151;
  *(v55 + 72) = v61;
  v62 = v3[5];
  *(v55 + 144) = v3[4];
  *(v55 + 160) = v62;
  *(v55 + 176) = *(v3 + 12);
  v63 = v3[1];
  *(v55 + 80) = *v3;
  *(v55 + 96) = v63;
  v64 = v3[3];
  *(v55 + 112) = v3[2];
  *(v55 + 128) = v64;
  v149 = v47;
  v126 = v46 + 16;
  (v47)(&v168, v3, v150);
  sub_100013CE8(&qword_1001D3D20, &type metadata accessor for LongPressGesture);
  v65 = v125;
  v66 = v127;
  Gesture.onEnded(_:)();

  (*(v128 + 8))(v54, v66);
  static GestureMask.all.getter();
  *&v168 = v51;
  *(&v168 + 1) = v52;
  v169 = v50;
  v170 = v111;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = sub_100013608(&qword_1001D3D00, &qword_1001D3CF0);
  v69 = v117;
  v70 = v65;
  v71 = v121;
  v72 = v129;
  v73 = v148;
  View.simultaneousGesture<A>(_:including:)();
  (*(v130 + 8))(v70, v72);
  (*(v122 + 8))(v73, v71);
  *&v168 = v71;
  *(&v168 + 1) = v72;
  v74 = v118;
  v169 = OpaqueTypeConformance2;
  v170 = v68;
  swift_getOpaqueTypeConformance2();
  v75 = v119;
  v76 = v123;
  View.accessibilityIdentifier(_:)();
  (*(v124 + 8))(v69, v76);
  v77 = sub_100012D2C();
  View.accessibilityShowsLargeContentViewer()();
  sub_10001370C(v75, &qword_1001D3D68);
  v168 = *v3;
  LOBYTE(v169) = *(v3 + 16);
  sub_1000033A8(&qword_1001D3E78);
  Binding.wrappedValue.getter();
  LocalizedStringKey.init(stringLiteral:)();
  *&v168 = v74;
  *(&v168 + 1) = v77;
  swift_getOpaqueTypeConformance2();
  v78 = v131;
  v79 = v133;
  View.accessibilityLabel(_:)();

  (*(v132 + 8))(v60, v79);
  v80 = v140;
  static AccessibilityChildBehavior.combine.getter();
  v81 = sub_100012C34();
  v83 = v134;
  v82 = v135;
  View.accessibilityElement(children:)();
  (*(v141 + 8))(v80, v142);
  sub_10001370C(v78, &qword_1001D3D58);
  v84 = swift_allocObject();
  v86 = v155;
  v85 = v156;
  *(v84 + 16) = v158;
  *(v84 + 24) = v85;
  v88 = v153;
  v87 = v154;
  *(v84 + 32) = v86;
  *(v84 + 40) = v87;
  v90 = v151;
  v89 = v152;
  *(v84 + 48) = v88;
  *(v84 + 56) = v89;
  v91 = v157;
  *(v84 + 64) = v90;
  *(v84 + 72) = v91;
  v92 = v3[5];
  *(v84 + 144) = v3[4];
  *(v84 + 160) = v92;
  *(v84 + 176) = *(v3 + 12);
  v93 = v3[1];
  *(v84 + 80) = *v3;
  *(v84 + 96) = v93;
  v94 = v3[3];
  *(v84 + 112) = v3[2];
  *(v84 + 128) = v94;
  v95 = v150;
  (v149)(&v168, v3, v150);
  v96 = v143;
  static AccessibilityActionKind.default.getter();
  *&v168 = v82;
  *(&v168 + 1) = v81;
  swift_getOpaqueTypeConformance2();
  v97 = v137;
  v98 = v138;
  View.accessibilityAction(_:_:)();

  (*(v144 + 8))(v96, v145);
  (*(v136 + 8))(v83, v97);
  v99 = swift_allocObject();
  v101 = v155;
  v100 = v156;
  *(v99 + 16) = v158;
  *(v99 + 24) = v100;
  v103 = v153;
  v102 = v154;
  *(v99 + 32) = v101;
  *(v99 + 40) = v102;
  v105 = v151;
  v104 = v152;
  *(v99 + 48) = v103;
  *(v99 + 56) = v104;
  v106 = v157;
  *(v99 + 64) = v105;
  *(v99 + 72) = v106;
  v107 = v3[5];
  *(v99 + 144) = v3[4];
  *(v99 + 160) = v107;
  *(v99 + 176) = *(v3 + 12);
  v108 = v3[1];
  *(v99 + 80) = *v3;
  *(v99 + 96) = v108;
  v109 = v3[3];
  *(v99 + 112) = v3[2];
  *(v99 + 128) = v109;
  (v149)(&v168, v3, v95);
  ModifiedContent<>.accessibilityAction(named:_:)();

  return sub_10001370C(v98, &qword_1001D3D50);
}

uint64_t sub_10000909C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v51 = a8;
  *(&v50 + 1) = a7;
  *&v50 = a6;
  *(&v49 + 1) = a5;
  *&v49 = a4;
  v55 = a9;
  v53 = sub_1000033A8(&qword_1001D3E90);
  __chkstk_darwin(v53);
  v14 = &v46 - v13;
  v15 = type metadata accessor for Image.ResizingMode();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000033A8(&qword_1001D3DE8);
  __chkstk_darwin(v52);
  v20 = &v46 - v19;
  v54 = sub_1000033A8(&qword_1001D3E98);
  v48 = *(v54 - 8);
  __chkstk_darwin(v54);
  v47 = &v46 - v21;
  *&v64 = a2;
  *(&v64 + 1) = a3;
  v65 = v49;
  v66 = v50;
  v67 = v51;
  v68 = a10;
  type metadata accessor for MenuSplitView();
  v64 = *a1;
  LOBYTE(v65) = *(a1 + 16);
  sub_1000033A8(&qword_1001D3E78);
  Binding.wrappedValue.getter();
  if (v59 == 1)
  {
    Image.init(systemName:)();
    (*(v16 + 104))(v18, enum case for Image.ResizingMode.stretch(_:), v15);
    v22 = Image.resizable(capInsets:resizingMode:)();

    (*(v16 + 8))(v18, v15);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v58 = 1;
    *&v57[6] = v64;
    *&v57[22] = v65;
    *&v57[38] = v66;
    v59 = *(a1 + 88);
    sub_1000033A8(&qword_1001D3E88);
    State.wrappedValue.getter();
    if (v56)
    {
      v23 = 3.4906585;
    }

    else
    {
      v23 = 0.0;
    }

    static UnitPoint.center.getter();
    v25 = v24;
    v27 = v26;
    v28 = v52;
    InternalAccessoryControlViewModifier.init()();
    *v20 = v22;
    *(v20 + 1) = 0;
    *(v20 + 8) = 1;
    v29 = *&v57[16];
    *(v20 + 18) = *v57;
    *(v20 + 34) = v29;
    *(v20 + 50) = *&v57[32];
    *(v20 + 8) = *&v57[46];
    *(v20 + 9) = v23;
    *(v20 + 10) = v25;
    *(v20 + 11) = v27;
    Solarium.init()();
    v30 = sub_1000033A8(&qword_1001D3DF0);
    v31 = sub_10001318C();
    v45 = sub_1000133E4();
    v32 = v47;
    View.staticIf<A, B>(_:then:)();
    sub_10001370C(v20, &qword_1001D3DE8);
    v33 = v48;
    v34 = v54;
    (*(v48 + 16))(v14, v32, v54);
    swift_storeEnumTagMultiPayload();
    sub_1000033A8(&qword_1001D3E48);
    *&v59 = v28;
    *(&v59 + 1) = &type metadata for Solarium;
    v60 = v30;
    v61 = v31;
    v62 = &protocol witness table for Solarium;
    v63 = v45;
    swift_getOpaqueTypeConformance2();
    sub_100013470();
    _ConditionalContent<>.init(storage:)();
    return (*(v33 + 8))(v32, v34);
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v36 = v64;
    v37 = BYTE8(v64);
    v38 = v65;
    v39 = BYTE8(v65);
    v40 = v66;
    v41 = static Color.clear.getter();
    *v14 = v36;
    v14[8] = v37;
    *(v14 + 2) = v38;
    v14[24] = v39;
    *(v14 + 2) = v40;
    *(v14 + 6) = v41;
    swift_storeEnumTagMultiPayload();
    sub_1000033A8(&qword_1001D3E48);
    v42 = sub_10001276C(&qword_1001D3DF0);
    v43 = sub_10001318C();
    v44 = sub_1000133E4();
    *&v59 = v52;
    *(&v59 + 1) = &type metadata for Solarium;
    v60 = v42;
    v61 = v43;
    v62 = &protocol witness table for Solarium;
    v63 = v44;
    swift_getOpaqueTypeConformance2();
    sub_100013470();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100009758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000138BC(a1, a2, &qword_1001D3DE8);
  result = sub_1000033A8(&qword_1001D3DF0);
  v4 = a2 + *(result + 36);
  *v4 = 1;
  *(v4 + 8) = 0xD000000000000012;
  *(v4 + 16) = 0x800000010016B340;
  return result;
}

uint64_t sub_1000097D0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29 = type metadata accessor for Logger();
  v26 = *(v29 - 1);
  __chkstk_darwin(v29);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30 = a3;
  *(&v30 + 1) = a4;
  v31 = a5;
  v32 = a6;
  v27 = a7;
  v28 = a8;
  v33 = a7;
  v34 = a8;
  v35 = a9;
  v36 = a10;
  type metadata accessor for MenuSplitView();
  v30 = *a2;
  LOBYTE(v31) = *(a2 + 16);
  sub_1000033A8(&qword_1001D3E78);
  v19 = Binding.wrappedValue.getter();
  if (v37 == 1)
  {
    v29 = &v25;
    __chkstk_darwin(v19);
    *(&v25 - 10) = a3;
    *(&v25 - 9) = a4;
    *(&v25 - 8) = a5;
    *(&v25 - 7) = a6;
    v20 = v28;
    *(&v25 - 6) = v27;
    *(&v25 - 5) = v20;
    *(&v25 - 4) = a9;
    *(&v25 - 3) = a10;
    *(&v25 - 2) = a2;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  else
  {
    static Log.ui.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debug gear not visible; not toggling", v24, 2u);
    }

    return (*(v26 + 8))(v18, v29);
  }
}

uint64_t sub_100009A24()
{
  type metadata accessor for MenuSplitView();
  sub_1000033A8(&qword_1001D3E78);
  Binding.wrappedValue.getter();
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100009B44(uint64_t a1)
{
  v3 = *(a1 + 88);
  v4 = v3;
  v5 = *(&v3 + 1);
  sub_1000138BC(&v5, v2, &qword_1001D3E80);
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.getter();
  v3 = v4;
  v2[0] = !v2[0];
  State.wrappedValue.setter();
  return sub_10001370C(&v4, &qword_1001D3E88);
}

uint64_t sub_100009C14(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *&v13 = a2;
  *(&v13 + 1) = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  type metadata accessor for MenuSplitView();
  v13 = *a1;
  LOBYTE(v14) = *(a1 + 16);
  sub_1000033A8(&qword_1001D3E78);
  result = Binding.wrappedValue.getter();
  if (v20 == 1)
  {
    v11 = static HapticFeedback.generateImpactFeedback(style:)();
    v12 = &v12;
    __chkstk_darwin(v11);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_100009D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v92 = type metadata accessor for ContentMarginPlacement();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v74 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for ScrollDismissesKeyboardMode();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v86 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InsetGroupedListStyle();
  v87 = *(v5 - 8);
  __chkstk_darwin(v5);
  v85 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(a1 + 16);
  v81 = *(a1 + 48);
  *&v108 = &type metadata for Never;
  *(&v108 + 1) = v80;
  *&v109 = &protocol witness table for Never;
  *(&v109 + 1) = v81;
  v7 = type metadata accessor for List();
  v84 = *(v7 - 8);
  __chkstk_darwin(v7);
  v78 = &v54 - v8;
  WitnessTable = swift_getWitnessTable();
  *&v108 = v7;
  *(&v108 + 1) = WitnessTable;
  v10 = WitnessTable;
  v63 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v83 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v73 = &v54 - v12;
  *&v108 = v7;
  *(&v108 + 1) = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v108 = OpaqueTypeMetadata2;
  *(&v108 + 1) = v5;
  v14 = OpaqueTypeMetadata2;
  v64 = v5;
  *&v109 = OpaqueTypeConformance2;
  *(&v109 + 1) = &protocol witness table for InsetGroupedListStyle;
  v15 = OpaqueTypeConformance2;
  v65 = OpaqueTypeConformance2;
  v72 = swift_getOpaqueTypeMetadata2();
  v76 = *(v72 - 8);
  __chkstk_darwin(v72);
  v68 = &v54 - v16;
  v17 = type metadata accessor for ModifiedContent();
  v75 = *(v17 - 8);
  __chkstk_darwin(v17);
  v69 = &v54 - v18;
  *&v108 = v14;
  *(&v108 + 1) = v5;
  *&v109 = v15;
  *(&v109 + 1) = &protocol witness table for InsetGroupedListStyle;
  v66 = swift_getOpaqueTypeConformance2();
  v106 = v66;
  v107 = &protocol witness table for _PaddingLayout;
  v19 = swift_getWitnessTable();
  *&v108 = v17;
  *(&v108 + 1) = v19;
  v20 = v19;
  v60 = v19;
  v21 = swift_getOpaqueTypeMetadata2();
  v71 = *(v21 - 8);
  __chkstk_darwin(v21);
  v59 = &v54 - v22;
  *&v108 = v17;
  *(&v108 + 1) = v20;
  v23 = swift_getOpaqueTypeConformance2();
  *&v108 = v21;
  *(&v108 + 1) = v23;
  v24 = v23;
  v58 = v23;
  v25 = swift_getOpaqueTypeMetadata2();
  v70 = *(v25 - 8);
  __chkstk_darwin(v25);
  v57 = &v54 - v26;
  *&v108 = v21;
  *(&v108 + 1) = v24;
  v27 = swift_getOpaqueTypeConformance2();
  *&v108 = v25;
  *(&v108 + 1) = v27;
  v56 = v27;
  v77 = &opaque type descriptor for <<opaque return type of View.contentMargins(_:_:for:)>>;
  v28 = swift_getOpaqueTypeMetadata2();
  v61 = v28;
  v67 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v54 - v29;
  *&v108 = v25;
  *(&v108 + 1) = v27;
  v62 = swift_getOpaqueTypeConformance2();
  *&v108 = v28;
  *(&v108 + 1) = v62;
  v79 = swift_getOpaqueTypeMetadata2();
  v82 = *(v79 - 8);
  __chkstk_darwin(v79);
  v55 = &v54 - v31;
  v94 = v80;
  v95 = *(a1 + 24);
  v96 = *(a1 + 40);
  v97 = v81;
  v98 = *(a1 + 56);
  v99 = *(a1 + 72);
  v100 = v89;
  v32 = v78;
  List<>.init(content:)();
  v33 = v73;
  View.scrollContentBackground(_:)();
  (*(v84 + 8))(v32, v7);
  v34 = v85;
  InsetGroupedListStyle.init()();
  v35 = v68;
  v36 = v64;
  View.listStyle<A>(_:)();
  (*(v87 + 8))(v34, v36);
  (*(v83 + 8))(v33, v14);
  static Edge.Set.bottom.getter();
  v37 = v69;
  v38 = v72;
  View.padding(_:_:)();
  (*(v76 + 8))(v35, v38);
  v39 = v86;
  static ScrollDismissesKeyboardMode.interactively.getter();
  v40 = v59;
  View.scrollDismissesKeyboard(_:)();
  (*(v88 + 8))(v39, v90);
  (*(v75 + 8))(v37, v17);
  static Edge.Set.top.getter();
  v41 = v74;
  static ContentMarginPlacement.scrollIndicators.getter();
  v42 = v57;
  View.contentMargins(_:_:for:)();
  v43 = *(v91 + 8);
  v44 = v92;
  v43(v41, v92);
  (*(v71 + 8))(v40, v21);
  static Edge.Set.bottom.getter();
  static ContentMarginPlacement.scrollIndicators.getter();
  View.contentMargins(_:_:for:)();
  v43(v41, v44);
  (*(v70 + 8))(v42, v25);
  static Edge.Set.bottom.getter();
  static ContentMarginPlacement.scrollContent.getter();
  v45 = v55;
  v46 = v61;
  v47 = v62;
  View.contentMargins(_:_:for:)();
  v43(v41, v44);
  v48 = v46;
  (*(v67 + 8))(v30, v46);
  sub_1000033A8(&qword_1001D3ED8);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_100170800;
  static Color.clear.getter();
  *(v49 + 32) = Gradient.Stop.init(color:location:)();
  *(v49 + 40) = v50;
  static Color.black.getter();
  *(v49 + 48) = Gradient.Stop.init(color:location:)();
  *(v49 + 56) = v51;
  Gradient.init(stops:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v103 = v108;
  v104 = v109;
  v105 = v110;
  v101 = v48;
  v102 = v47;
  swift_getOpaqueTypeConformance2();
  sub_100013DE8();
  v52 = v79;
  View.mask<A>(_:)();
  sub_100013E3C(&v108);
  return (*(v82 + 8))(v45, v52);
}

uint64_t sub_10000AA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a2 - 8);
  v9 = (__chkstk_darwin)();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v17 - v13;
  (*(v12 + 24))();
  sub_100071210(v11, a2, a6);
  v15 = *(v8 + 8);
  v15(v11, a2);
  sub_100071210(v14, a2, a6);
  return (v15)(v14, a2);
}

uint64_t sub_10000AB50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v35 = type metadata accessor for NavigationPath();
  v28 = sub_10001276C(&qword_1001D3C70);
  v3 = a1[4];
  v32 = a1[3];
  v36 = v3;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v25 = &protocol conformance descriptor for _ClipEffect<A>;
  v4 = sub_100013608(&qword_1001D3C78, &qword_1001D3C70);
  v33 = a1[8];
  v34 = a1 + 7;
  v80 = v33;
  v81 = v4;
  WitnessTable = swift_getWitnessTable();
  v79 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v39 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  type metadata accessor for _BackgroundModifier();
  v29 = type metadata accessor for ModifiedContent();
  v26 = sub_10001276C(&qword_1001D3C80);
  v27 = a1;
  v5 = a1[6];
  v30 = a1[2];
  v31 = v5;
  type metadata accessor for List();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for InsetGroupedListStyle();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D3C88);
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3C90);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3C98);
  v7 = type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CA0);
  v8 = type metadata accessor for ModifiedContent();
  v74 = swift_getOpaqueTypeConformance2();
  v75 = sub_100013608(&qword_1001D3CA8, &qword_1001D3C88);
  v72 = swift_getWitnessTable();
  v73 = sub_100013608(&qword_1001D3CB0, &qword_1001D3C90);
  v70 = swift_getWitnessTable();
  v71 = &protocol witness table for _PaddingLayout;
  v68 = swift_getWitnessTable();
  v69 = &protocol witness table for _FlexFrameLayout;
  v66 = swift_getWitnessTable();
  v67 = sub_100013608(&qword_1001D3CB8, &qword_1001D3C98);
  v9 = swift_getWitnessTable();
  v64 = v66;
  v65 = sub_100013608(&qword_1001D3CC0, &qword_1001D3CA0);
  v56 = v6;
  v57 = &type metadata for Solarium;
  v58 = v7;
  v59 = v8;
  v60 = v66;
  v61 = &protocol witness table for Solarium;
  v62 = v9;
  v63 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v25 = &protocol conformance descriptor for TupleView<A>;
  swift_getWitnessTable();
  type metadata accessor for HStack();
  sub_10001276C(&qword_1001D3CC8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  v24[4] = &protocol conformance descriptor for HStack<A>;
  v54 = swift_getWitnessTable();
  v55 = sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8);
  v53 = swift_getWitnessTable();
  v24[3] = &protocol conformance descriptor for <A> A?;
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v26 = type metadata accessor for ModifiedContent();
  v24[2] = sub_10001276C(&qword_1001D3CD8);
  v24[1] = sub_10001276C(&qword_1001D3CE0);
  v28 = a1[5];
  sub_10001276C(&qword_1001D3CE8);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for ModifiedContent();
  v11 = sub_10001276C(&qword_1001D3CF0);
  v27 = a1[9];
  v51 = v27;
  v52 = sub_100013608(&qword_1001D3CF8, &qword_1001D3CE8);
  v50 = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  v49 = &protocol witness table for _PaddingLayout;
  v46 = swift_getWitnessTable();
  v47 = &protocol witness table for _PaddingLayout;
  v56 = v10;
  v57 = v11;
  v58 = swift_getWitnessTable();
  v59 = sub_100013608(&qword_1001D3D00, &qword_1001D3CF0);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  v45 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  v12 = type metadata accessor for NavigationStack();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v24 - v17;
  *&v19 = v30;
  *(&v19 + 1) = v32;
  *&v20 = v36;
  *(&v20 + 1) = v28;
  v40 = v19;
  v41 = v20;
  *&v19 = v31;
  *(&v19 + 1) = *v34;
  *&v20 = v33;
  *(&v20 + 1) = v27;
  v42 = v19;
  v43 = v20;
  v44 = v37;
  NavigationStack.init<>(root:)();
  v21 = swift_getWitnessTable();
  sub_100071210(v16, v12, v21);
  v22 = *(v13 + 8);
  v22(v16, v12);
  sub_100071210(v18, v12, v21);
  return (v22)(v18, v12);
}

uint64_t sub_10000B740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v28 = a8;
  v29 = a4;
  v30 = a1;
  v31 = a7;
  v26 = a6;
  v27 = a3;
  v34 = a5;
  v25 = a2;
  v32 = a9;
  v24[6] = a10;
  sub_10001276C(&qword_1001D3C70);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v79 = a8;
  v80 = sub_100013608(&qword_1001D3C78, &qword_1001D3C70);
  WitnessTable = swift_getWitnessTable();
  v78 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v33 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  type metadata accessor for _BackgroundModifier();
  v24[7] = type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3C80);
  type metadata accessor for List();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for InsetGroupedListStyle();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v76 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D3C88);
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3C90);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3C98);
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CA0);
  type metadata accessor for ModifiedContent();
  v73 = swift_getOpaqueTypeConformance2();
  v74 = sub_100013608(&qword_1001D3CA8, &qword_1001D3C88);
  v71 = swift_getWitnessTable();
  v72 = sub_100013608(&qword_1001D3CB0, &qword_1001D3C90);
  v69 = swift_getWitnessTable();
  v70 = &protocol witness table for _PaddingLayout;
  v67 = swift_getWitnessTable();
  v68 = &protocol witness table for _FlexFrameLayout;
  v65 = swift_getWitnessTable();
  v66 = sub_100013608(&qword_1001D3CB8, &qword_1001D3C98);
  v11 = swift_getWitnessTable();
  v63 = v65;
  v64 = sub_100013608(&qword_1001D3CC0, &qword_1001D3CA0);
  v59 = v65;
  v60 = &protocol witness table for Solarium;
  v61 = v11;
  v62 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v24[3] = &protocol conformance descriptor for TupleView<A>;
  swift_getWitnessTable();
  type metadata accessor for HStack();
  sub_10001276C(&qword_1001D3CC8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  v24[2] = &protocol conformance descriptor for HStack<A>;
  v53 = swift_getWitnessTable();
  v54 = sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8);
  v52 = swift_getWitnessTable();
  v24[1] = &protocol conformance descriptor for <A> A?;
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v24[5] = type metadata accessor for ModifiedContent();
  v24[4] = sub_10001276C(&qword_1001D3CD8);
  v24[0] = sub_10001276C(&qword_1001D3CE0);
  sub_10001276C(&qword_1001D3CE8);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  v12 = type metadata accessor for ModifiedContent();
  v13 = sub_10001276C(&qword_1001D3CF0);
  v50 = a10;
  v51 = sub_100013608(&qword_1001D3CF8, &qword_1001D3CE8);
  v49 = swift_getWitnessTable();
  v47 = swift_getWitnessTable();
  v48 = &protocol witness table for _PaddingLayout;
  v45 = swift_getWitnessTable();
  v46 = &protocol witness table for _PaddingLayout;
  v55 = v12;
  v56 = v13;
  v57 = swift_getWitnessTable();
  v58 = sub_100013608(&qword_1001D3D00, &qword_1001D3CF0);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  v44 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v14 = type metadata accessor for ZStack();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v24 - v19;
  v35 = v25;
  v36 = v27;
  v37 = v29;
  v38 = v34;
  v39 = v26;
  v40 = v31;
  v41 = v28;
  v42 = a10;
  v43 = v30;
  static Alignment.center.getter();
  ZStack.init(alignment:content:)();
  v21 = swift_getWitnessTable();
  sub_100071210(v18, v14, v21);
  v22 = *(v15 + 8);
  v22(v18, v14);
  sub_100071210(v20, v14, v21);
  return (v22)(v20, v14);
}

uint64_t sub_10000C2E4@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v152 = a8;
  v153 = a6;
  v144 = a5;
  v145 = a7;
  v151 = a4;
  v142 = a3;
  v154 = a2;
  v125 = a1;
  v135 = a9;
  v143 = a10;
  v147 = sub_10001276C(&qword_1001D3CD8);
  sub_10001276C(&qword_1001D3CE0);
  sub_10001276C(&qword_1001D3CE8);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for ModifiedContent();
  v11 = sub_10001276C(&qword_1001D3CF0);
  v214 = a10;
  v215 = sub_100013608(&qword_1001D3CF8, &qword_1001D3CE8);
  WitnessTable = swift_getWitnessTable();
  v211 = swift_getWitnessTable();
  v212 = &protocol witness table for _PaddingLayout;
  v209 = swift_getWitnessTable();
  v210 = &protocol witness table for _PaddingLayout;
  v148 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v186 = v10;
  v187 = v11;
  v188 = swift_getWitnessTable();
  v189 = sub_100013608(&qword_1001D3D00, &qword_1001D3CF0);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  v140 = &protocol conformance descriptor for TupleView<A>;
  v208 = swift_getWitnessTable();
  v150 = &protocol conformance descriptor for <A> A?;
  swift_getWitnessTable();
  v128 = type metadata accessor for HStack();
  v149 = &protocol conformance descriptor for HStack<A>;
  v129 = swift_getWitnessTable();
  v131 = type metadata accessor for _OverlayModifier();
  v127 = type metadata accessor for ModifiedContent();
  v134 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v111 - v12;
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  v132 = v13;
  v133 = v14;
  v15 = __chkstk_darwin(v13);
  v146 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v130 = &v111 - v17;
  v141 = sub_10001276C(&qword_1001D3C80);
  v186 = &type metadata for Never;
  v187 = v154;
  v188 = &protocol witness table for Never;
  v189 = v153;
  v18 = type metadata accessor for List();
  v19 = swift_getWitnessTable();
  v186 = v18;
  v187 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = type metadata accessor for InsetGroupedListStyle();
  v186 = v18;
  v187 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v186 = OpaqueTypeMetadata2;
  v187 = v21;
  v188 = OpaqueTypeConformance2;
  v189 = &protocol witness table for InsetGroupedListStyle;
  swift_getOpaqueTypeMetadata2();
  v23 = type metadata accessor for ModifiedContent();
  v186 = OpaqueTypeMetadata2;
  v187 = v21;
  v188 = OpaqueTypeConformance2;
  v189 = &protocol witness table for InsetGroupedListStyle;
  v206 = swift_getOpaqueTypeConformance2();
  v207 = &protocol witness table for _PaddingLayout;
  v24 = swift_getWitnessTable();
  v186 = v23;
  v187 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v186 = v23;
  v187 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v186 = v25;
  v187 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v186 = v25;
  v187 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  v186 = v27;
  v187 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v186 = v27;
  v187 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v186 = v29;
  v187 = v30;
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D3C88);
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3C90);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v31 = type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3C98);
  v32 = type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CA0);
  v33 = type metadata accessor for ModifiedContent();
  v186 = v29;
  v187 = v30;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = sub_100013608(&qword_1001D3CA8, &qword_1001D3C88);
  v204 = v34;
  v205 = v35;
  v36 = swift_getWitnessTable();
  v139 = &protocol conformance descriptor for _ClipEffect<A>;
  v37 = sub_100013608(&qword_1001D3CB0, &qword_1001D3C90);
  v202 = v36;
  v203 = v37;
  v200 = swift_getWitnessTable();
  v201 = &protocol witness table for _PaddingLayout;
  v198 = swift_getWitnessTable();
  v199 = &protocol witness table for _FlexFrameLayout;
  v38 = swift_getWitnessTable();
  v39 = sub_100013608(&qword_1001D3CB8, &qword_1001D3C98);
  v196 = v38;
  v197 = v39;
  v40 = swift_getWitnessTable();
  v41 = sub_100013608(&qword_1001D3CC0, &qword_1001D3CA0);
  v194 = v38;
  v195 = v41;
  v42 = swift_getWitnessTable();
  v186 = v31;
  v187 = &type metadata for Solarium;
  v188 = v32;
  v189 = v33;
  v190 = v38;
  v191 = &protocol witness table for Solarium;
  v192 = v40;
  v193 = v42;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  sub_10001276C(&qword_1001D3CC8);
  type metadata accessor for ModifiedContent();
  v43 = type metadata accessor for Optional();
  v44 = swift_getWitnessTable();
  v45 = sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8);
  v185[20] = v44;
  v185[21] = v45;
  v185[19] = swift_getWitnessTable();
  v117 = v43;
  v118 = swift_getWitnessTable();
  v119 = type metadata accessor for _OverlayModifier();
  v114 = type metadata accessor for ModifiedContent();
  v122 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v111 - v46;
  sub_10001276C(&qword_1001D3C70);
  v116 = type metadata accessor for ModifiedContent();
  v123 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v111 - v47;
  v138 = type metadata accessor for ModifiedContent();
  v124 = *(v138 - 8);
  v48 = __chkstk_darwin(v138);
  v149 = &v111 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v140 = &v111 - v51;
  v52 = v142;
  v121 = *(v142 - 8);
  __chkstk_darwin(v50);
  v54 = &v111 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v151;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v111 = sub_100013608(&qword_1001D3C78, &qword_1001D3C70);
  v56 = v152;
  v185[17] = v152;
  v185[18] = v111;
  v185[15] = swift_getWitnessTable();
  v185[16] = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v115 = swift_getWitnessTable();
  v120 = type metadata accessor for _BackgroundModifier();
  v57 = v52;
  v137 = type metadata accessor for ModifiedContent();
  v139 = *(v137 - 8);
  v58 = __chkstk_darwin(v137);
  v60 = &v111 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v58);
  v150 = &v111 - v62;
  v63 = v125;
  v64 = v54;
  (*(v125 + 40))(v61);
  v173 = v154;
  v174 = v57;
  v175 = v55;
  v66 = v144;
  v65 = v145;
  v176 = v144;
  v67 = v153;
  v177 = v153;
  v178 = v145;
  v179 = v56;
  v68 = v143;
  v180 = v143;
  v181 = v63;
  static Alignment.center.getter();
  v136 = v60;
  View.background<A>(alignment:content:)();
  v69 = v64;
  v70 = v57;
  (*(v121 + 1))(v69, v57);
  v71 = swift_getWitnessTable();
  v72 = v65;
  v185[13] = v65;
  v185[14] = v71;
  v73 = v137;
  v115 = swift_getWitnessTable();
  sub_100071210(v60, v73, v115);
  v74 = v139[1];
  v120 = (v139 + 1);
  v121 = v74;
  v74(v60, v73);
  v75 = static Color.clear.getter();
  v76 = static SafeAreaRegions.all.getter();
  v77 = static Edge.Set.all.getter();
  v186 = v75;
  LOWORD(v187) = 256;
  v188 = v76;
  LOBYTE(v189) = v77;
  v164 = v154;
  v165 = v70;
  v166 = v151;
  v167 = v66;
  v168 = v67;
  v169 = v72;
  v170 = v152;
  v171 = v68;
  v172 = v63;
  v78 = v63;
  static Alignment.center.getter();
  v79 = sub_100012814();
  v80 = v112;
  View.overlay<A>(alignment:content:)();

  v118 = &protocol conformance descriptor for _OverlayModifier<A>;
  v81 = swift_getWitnessTable();
  v185[11] = v79;
  v185[12] = v81;
  v82 = v114;
  v83 = swift_getWitnessTable();
  v84 = v113;
  View.clipped(antialiased:)();
  (*(v122 + 8))(v80, v82);
  static SafeAreaRegions.all.getter();
  static Edge.Set.all.getter();
  v185[9] = v83;
  v185[10] = v111;
  v85 = v116;
  v86 = swift_getWitnessTable();
  v87 = v149;
  View.ignoresSafeArea(_:edges:)();
  (*(v123 + 8))(v84, v85);
  v185[7] = v86;
  v185[8] = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v88 = v138;
  v122 = swift_getWitnessTable();
  sub_100071210(v87, v88, v122);
  v89 = v124;
  v90 = *(v124 + 8);
  v123 = v124 + 8;
  v141 = v90;
  v90(v87, v88);
  v186 = static Color.clear.getter();
  LOWORD(v187) = 256;
  static Alignment.topLeading.getter();
  v155 = v154;
  v156 = v142;
  v157 = v151;
  v158 = v144;
  v159 = v153;
  v160 = v145;
  v161 = v152;
  v162 = v143;
  v163 = v78;
  v91 = sub_100013608(&qword_1001D3D10, &qword_1001D3CD8);
  v92 = v126;
  View.overlay<A>(alignment:content:)();

  static SafeAreaRegions.all.getter();
  static Edge.Set.all.getter();
  v93 = swift_getWitnessTable();
  v185[5] = v91;
  v185[6] = v93;
  v94 = v127;
  v95 = swift_getWitnessTable();
  v96 = v146;
  View.ignoresSafeArea(_:edges:)();
  (*(v134 + 8))(v92, v94);
  v185[3] = v95;
  v185[4] = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v97 = v132;
  v153 = swift_getWitnessTable();
  v98 = v130;
  sub_100071210(v96, v97, v153);
  v99 = v133;
  v154 = *(v133 + 8);
  v154(v96, v97);
  v100 = v136;
  v101 = v137;
  (v139[2])(v136, v150, v137);
  v186 = v100;
  v102 = *(v89 + 16);
  v103 = v149;
  v104 = v140;
  v105 = v138;
  v102(v149, v140, v138);
  v187 = v103;
  (*(v99 + 16))(v96, v98, v97);
  v188 = v96;
  v185[0] = v101;
  v185[1] = v105;
  v106 = v105;
  v185[2] = v97;
  v182 = v115;
  v183 = v122;
  v184 = v153;
  sub_10006A7BC(&v186, 3uLL, v185);
  v107 = v154;
  v154(v98, v97);
  v108 = v141;
  v141(v104, v105);
  v109 = v121;
  v121(v150, v101);
  v107(v146, v97);
  v108(v149, v106);
  return v109(v136, v101);
}

uint64_t sub_10000D6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v28 = a4;
  v26 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001276C(&qword_1001D3C70);
  v9 = type metadata accessor for ModifiedContent();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v25 - v18;
  (*(a1 + 56))(v17);
  View.clipped(antialiased:)();
  (*(v26 + 8))(v8, a2);
  static SafeAreaRegions.all.getter();
  static Edge.Set.all.getter();
  v20 = sub_100013608(&qword_1001D3C78, &qword_1001D3C70);
  v31 = a3;
  v32 = v20;
  WitnessTable = swift_getWitnessTable();
  View.ignoresSafeArea(_:edges:)();
  (*(v27 + 8))(v11, v9);
  v29 = WitnessTable;
  v30 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v22 = swift_getWitnessTable();
  sub_100071210(v16, v12, v22);
  v23 = *(v13 + 8);
  v23(v16, v12);
  sub_100071210(v19, v12, v22);
  return (v23)(v19, v12);
}

uint64_t sub_10000DA3C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v60 = a8;
  v59 = a7;
  v57 = a5;
  v56 = a4;
  v55 = a3;
  v63 = a1;
  v64 = a9;
  v54 = a2;
  v58 = a6;
  type metadata accessor for List();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for InsetGroupedListStyle();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D3C88);
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3C90);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3C98);
  v11 = type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CA0);
  v12 = type metadata accessor for ModifiedContent();
  v90 = swift_getOpaqueTypeConformance2();
  v91 = sub_100013608(&qword_1001D3CA8, &qword_1001D3C88);
  WitnessTable = swift_getWitnessTable();
  v89 = sub_100013608(&qword_1001D3CB0, &qword_1001D3C90);
  v86 = swift_getWitnessTable();
  v87 = &protocol witness table for _PaddingLayout;
  v84 = swift_getWitnessTable();
  v85 = &protocol witness table for _FlexFrameLayout;
  v82 = swift_getWitnessTable();
  v83 = sub_100013608(&qword_1001D3CB8, &qword_1001D3C98);
  v13 = swift_getWitnessTable();
  v80 = v82;
  v81 = sub_100013608(&qword_1001D3CC0, &qword_1001D3CA0);
  *&v73 = v10;
  *(&v73 + 1) = &type metadata for Solarium;
  v74 = v11;
  v75 = v12;
  v76 = v82;
  v77 = &protocol witness table for Solarium;
  v78 = v13;
  v79 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v51 = swift_getWitnessTable();
  v14 = type metadata accessor for HStack();
  v52 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  sub_10001276C(&qword_1001D3CC8);
  v62 = v14;
  v17 = type metadata accessor for ModifiedContent();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v53 = &v49 - v22;
  v61 = type metadata accessor for Optional();
  v23 = *(v61 - 8);
  v24 = __chkstk_darwin(v61);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v49 - v27;
  v29 = v63;
  v73 = *(v63 + 88);
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.getter();
  if (v72 == 1)
  {
    v49 = v28;
    v30 = static Solarium.isEnabled.getter();
    v50 = v23;
    v31 = __chkstk_darwin(v30);
    v32 = v55;
    *(&v49 - 10) = v54;
    *(&v49 - 9) = v32;
    v33 = v57;
    *(&v49 - 8) = v56;
    *(&v49 - 7) = v33;
    v34 = v59;
    *(&v49 - 6) = v58;
    *(&v49 - 5) = v34;
    *(&v49 - 4) = v60;
    *(&v49 - 3) = a10;
    *(&v49 - 2) = v29;
    *(&v49 - 8) = v31 & 1;
    static VerticalAlignment.center.getter();
    HStack.init(alignment:spacing:content:)();
    static AnyTransition.slide.getter();
    static Animation.spring(response:dampingFraction:blendDuration:)();
    AnyTransition.animation(_:)();

    static AnyTransition.move(edge:)();
    static Animation.spring(response:dampingFraction:blendDuration:)();
    AnyTransition.animation(_:)();

    static AnyTransition.asymmetric(insertion:removal:)();

    v35 = v62;
    v36 = swift_getWitnessTable();
    View.transition(_:)();

    (*(v52 + 8))(v16, v35);
    v37 = sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8);
    v65 = v36;
    v66 = v37;
    v38 = swift_getWitnessTable();
    v39 = v53;
    sub_100071210(v21, v17, v38);
    v40 = *(v18 + 8);
    v40(v21, v17);
    sub_100071210(v39, v17, v38);
    v40(v39, v17);
    v28 = v49;
    v23 = v50;
    (*(v18 + 32))(v26, v21, v17);
    (*(v18 + 56))(v26, 0, 1, v17);
  }

  else
  {
    (*(v18 + 56))(v26, 1, 1, v17);
    v41 = swift_getWitnessTable();
    v42 = sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8);
    v70 = v41;
    v71 = v42;
    swift_getWitnessTable();
  }

  sub_10006A98C(v26, v28);
  v43 = *(v23 + 8);
  v44 = v61;
  v43(v26, v61);
  v45 = swift_getWitnessTable();
  v46 = sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8);
  v68 = v45;
  v69 = v46;
  v67 = swift_getWitnessTable();
  v47 = swift_getWitnessTable();
  sub_100071210(v28, v44, v47);
  return (v43)(v28, v44);
}

uint64_t sub_10000E774@<X0>(uint64_t a1@<X0>, int a2@<W1>, ValueMetadata *a3@<X2>, ValueMetadata *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v138 = a8;
  v139 = a6;
  v141 = a5;
  v142 = a7;
  v144 = a4;
  v140 = a3;
  LODWORD(v133) = a2;
  v137 = a1;
  v134 = a9;
  v145 = a11;
  v143 = a10;
  v13 = type metadata accessor for RoundedCornerStyle();
  v131 = *(v13 - 8);
  v132 = v13;
  __chkstk_darwin(v13);
  v130 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for UnevenRoundedRectangle();
  __chkstk_darwin(v129);
  v128 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = &type metadata for Never;
  v165 = a3;
  v166 = &protocol witness table for Never;
  v167 = a7;
  v16 = type metadata accessor for List();
  WitnessTable = swift_getWitnessTable();
  v164 = v16;
  v165 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = type metadata accessor for InsetGroupedListStyle();
  v164 = v16;
  v165 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v164 = OpaqueTypeMetadata2;
  v165 = v19;
  v166 = OpaqueTypeConformance2;
  v167 = &protocol witness table for InsetGroupedListStyle;
  swift_getOpaqueTypeMetadata2();
  v21 = type metadata accessor for ModifiedContent();
  v164 = OpaqueTypeMetadata2;
  v165 = v19;
  v166 = OpaqueTypeConformance2;
  v167 = &protocol witness table for InsetGroupedListStyle;
  v173[16] = swift_getOpaqueTypeConformance2();
  v173[17] = &protocol witness table for _PaddingLayout;
  v135 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v22 = swift_getWitnessTable();
  v164 = v21;
  v165 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v164 = v21;
  v165 = v22;
  v24 = swift_getOpaqueTypeConformance2();
  v164 = v23;
  v165 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v164 = v23;
  v165 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v164 = v25;
  v165 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v164 = v25;
  v165 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  v164 = v27;
  v165 = v28;
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D3C88);
  v29 = type metadata accessor for ModifiedContent();
  v126 = *(v29 - 8);
  __chkstk_darwin(v29);
  v120 = &v100 - v30;
  sub_10001276C(&qword_1001D3C90);
  v106 = v29;
  v31 = type metadata accessor for ModifiedContent();
  v124 = *(v31 - 8);
  __chkstk_darwin(v31);
  v122 = &v100 - v32;
  v110 = v31;
  v33 = type metadata accessor for ModifiedContent();
  v125 = *(v33 - 8);
  __chkstk_darwin(v33);
  v123 = &v100 - v34;
  v114 = v33;
  v35 = type metadata accessor for ModifiedContent();
  v127 = *(v35 - 8);
  __chkstk_darwin(v35);
  v136 = &v100 - v36;
  sub_10001276C(&qword_1001D3C98);
  v37 = type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CA0);
  v101 = type metadata accessor for ModifiedContent();
  v164 = v27;
  v165 = v28;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_100013608(&qword_1001D3CA8, &qword_1001D3C88);
  v173[14] = v38;
  v173[15] = v39;
  v40 = swift_getWitnessTable();
  v102 = v40;
  v41 = sub_100013608(&qword_1001D3CB0, &qword_1001D3C90);
  v173[12] = v40;
  v173[13] = v41;
  v109 = swift_getWitnessTable();
  v173[10] = v109;
  v173[11] = &protocol witness table for _PaddingLayout;
  v112 = swift_getWitnessTable();
  v173[8] = v112;
  v173[9] = &protocol witness table for _FlexFrameLayout;
  v42 = v35;
  v43 = swift_getWitnessTable();
  v44 = sub_100013608(&qword_1001D3CB8, &qword_1001D3C98);
  v173[6] = v43;
  v173[7] = v44;
  v105 = v37;
  v45 = swift_getWitnessTable();
  v108 = v45;
  v46 = sub_100013608(&qword_1001D3CC0, &qword_1001D3CA0);
  v173[4] = v43;
  v173[5] = v46;
  v47 = v101;
  v107 = swift_getWitnessTable();
  v164 = v42;
  v165 = &type metadata for Solarium;
  v166 = v37;
  v167 = v47;
  v168 = v43;
  v169 = &protocol witness table for Solarium;
  v170 = v45;
  v171 = v107;
  v116 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>;
  v113 = swift_getOpaqueTypeMetadata2();
  v117 = *(v113 - 8);
  __chkstk_darwin(v113);
  v103 = &v100 - v48;
  v115 = type metadata accessor for ModifiedContent();
  v118 = *(v115 - 8);
  v49 = __chkstk_darwin(v115);
  v121 = &v100 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v104 = &v100 - v52;
  __chkstk_darwin(v51);
  v111 = &v100 - v53;
  v164 = v140;
  v165 = v144;
  v166 = v141;
  v167 = v139;
  v168 = v142;
  v169 = v138;
  v170 = v143;
  v171 = v145;
  v119 = type metadata accessor for MenuSplitView();
  v54 = v120;
  sub_100009D5C(v119, v120);
  v56 = v130;
  v55 = v131;
  v57 = v132;
  (*(v131 + 104))(v130, enum case for RoundedCornerStyle.continuous(_:), v132);
  v58 = v128;
  (*(v55 + 16))(&v128[*(v129 + 20)], v56, v57);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  (*(v55 + 8))(v56, v57);
  *v58 = v60;
  v58[1] = v62;
  v58[2] = v64;
  v58[3] = v66;
  sub_100013CE8(&qword_1001D3EC0, &type metadata accessor for UnevenRoundedRectangle);
  v67 = v122;
  v68 = v106;
  View.clipShape<A>(_:style:)();
  sub_100013D30(v58, &type metadata accessor for UnevenRoundedRectangle);
  (*(v126 + 8))(v54, v68);
  static Edge.Set.top.getter();
  v69 = v123;
  v70 = v110;
  View.padding(_:_:)();
  (*(v124 + 8))(v67, v70);
  static Alignment.center.getter();
  v71 = v114;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v125 + 8))(v69, v71);
  Solarium.init()();
  v133 = &v100;
  v154 = v140;
  v155 = v144;
  v156 = v141;
  v157 = v139;
  v158 = v142;
  v159 = v138;
  v160 = v143;
  v161 = v145;
  v146 = v140;
  v147 = v144;
  v148 = v141;
  v149 = v139;
  v150 = v142;
  v151 = v138;
  v152 = v143;
  v153 = v145;
  v72 = swift_checkMetadataState();
  v99 = swift_checkMetadataState();
  v73 = v43;
  v74 = v108;
  v75 = v107;
  v76 = v103;
  v77 = v136;
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v127 + 8))(v77, v42);
  v164 = v42;
  v165 = &type metadata for Solarium;
  v166 = v72;
  v167 = v99;
  v168 = v73;
  v169 = &protocol witness table for Solarium;
  v170 = v74;
  v171 = v75;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = v104;
  v80 = v113;
  View.padding(_:)();
  (*(v117 + 8))(v76, v80);
  v173[2] = v78;
  v173[3] = &protocol witness table for _PaddingLayout;
  v81 = v115;
  v82 = swift_getWitnessTable();
  v83 = v111;
  v84 = v79;
  sub_100071210(v79, v81, v82);
  v85 = v118;
  v86 = *(v118 + 8);
  v86(v84, v81);
  v87 = swift_allocObject();
  v88 = v144;
  *(v87 + 16) = v140;
  *(v87 + 24) = v88;
  v89 = v139;
  *(v87 + 32) = v141;
  *(v87 + 40) = v89;
  v91 = v137;
  v90 = v138;
  *(v87 + 48) = v142;
  *(v87 + 56) = v90;
  v92 = v145;
  *(v87 + 64) = v143;
  *(v87 + 72) = v92;
  v93 = *(v91 + 80);
  *(v87 + 144) = *(v91 + 64);
  *(v87 + 160) = v93;
  *(v87 + 176) = *(v91 + 96);
  v94 = *(v91 + 16);
  *(v87 + 80) = *v91;
  *(v87 + 96) = v94;
  v95 = *(v91 + 48);
  *(v87 + 112) = *(v91 + 32);
  *(v87 + 128) = v95;
  v96 = *(v85 + 16);
  v97 = v121;
  v96(v121, v83, v81);
  v173[0] = v97;
  v172[0] = sub_100013BDC;
  v172[1] = v87;
  v173[1] = v172;
  (*(*(v119 - 8) + 16))(&v164, v91);

  v164 = v81;
  v165 = &type metadata for TappableSpacer;
  v162 = v82;
  v163 = sub_100013C34();
  sub_10006A7BC(v173, 2uLL, &v164);

  v86(v83, v81);

  return (v86)(v97, v81);
}

uint64_t sub_10000F68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X5>, uint64_t a4@<X8>)
{
  v74 = a1;
  v75 = a4;
  v70 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v70);
  v71 = (&v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = type metadata accessor for Material._GlassVariant.Size();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Material._GlassVariant();
  v66 = *(v68 - 8);
  v9 = __chkstk_darwin(v68);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = &v55 - v11;
  v12 = type metadata accessor for Material();
  v13 = *(v12 - 8);
  v72 = v12;
  v73 = v13;
  __chkstk_darwin(v12);
  v64 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = &type metadata for Never;
  v89 = a2;
  v90 = &protocol witness table for Never;
  v91 = a3;
  v15 = type metadata accessor for List();
  WitnessTable = swift_getWitnessTable();
  v88 = v15;
  v89 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = type metadata accessor for InsetGroupedListStyle();
  v88 = v15;
  v89 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v88 = OpaqueTypeMetadata2;
  v89 = v18;
  v90 = OpaqueTypeConformance2;
  v91 = &protocol witness table for InsetGroupedListStyle;
  swift_getOpaqueTypeMetadata2();
  v20 = type metadata accessor for ModifiedContent();
  v88 = OpaqueTypeMetadata2;
  v89 = v18;
  v90 = OpaqueTypeConformance2;
  v91 = &protocol witness table for InsetGroupedListStyle;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = &protocol witness table for _PaddingLayout;
  v62 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v21 = swift_getWitnessTable();
  v88 = v20;
  v89 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v88 = v20;
  v89 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v88 = v22;
  v89 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v88 = v22;
  v89 = v23;
  v25 = swift_getOpaqueTypeConformance2();
  v88 = v24;
  v89 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v57 = v26;
  v88 = v24;
  v89 = v25;
  v56 = swift_getOpaqueTypeConformance2();
  v88 = v26;
  v89 = v56;
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D3C88);
  v55 = type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3C90);
  v58 = type metadata accessor for ModifiedContent();
  v60 = type metadata accessor for ModifiedContent();
  v59 = type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3C98);
  v27 = type metadata accessor for ModifiedContent();
  v61 = *(v27 - 8);
  v28 = __chkstk_darwin(v27);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v55 - v31;
  v33 = v63;
  static Material._GlassVariant.regular.getter();
  v34 = v67;
  v35 = v69;
  (*(v67 + 104))(v8, enum case for Material._GlassVariant.Size.large(_:), v69);
  v36 = v65;
  Material._GlassVariant.size(_:)();
  (*(v34 + 8))(v8, v35);
  v37 = *(v66 + 8);
  v38 = v68;
  v37(v33, v68);
  v39 = v64;
  static Material._glass(_:)();
  v37(v36, v38);
  v40 = *(v70 + 20);
  v41 = enum case for RoundedCornerStyle.continuous(_:);
  v42 = type metadata accessor for RoundedCornerStyle();
  v43 = v71;
  (*(*(v42 - 8) + 104))(&v71->i8[v40], v41, v42);
  *v43 = vdupq_n_s64(0x404E000000000000uLL);
  v88 = v57;
  v89 = v56;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_100013608(&qword_1001D3CA8, &qword_1001D3C88);
  v84 = v44;
  v85 = v45;
  v46 = swift_getWitnessTable();
  v47 = sub_100013608(&qword_1001D3CB0, &qword_1001D3C90);
  v82 = v46;
  v83 = v47;
  v80 = swift_getWitnessTable();
  v81 = &protocol witness table for _PaddingLayout;
  v78 = swift_getWitnessTable();
  v79 = &protocol witness table for _FlexFrameLayout;
  v48 = swift_getWitnessTable();
  sub_100013CE8(&qword_1001D3ED0, &type metadata accessor for RoundedRectangle);
  v49 = v39;
  v50 = v72;
  View.background<A, B>(_:in:fillStyle:)();
  sub_100013D30(v43, &type metadata accessor for RoundedRectangle);
  (*(v73 + 8))(v49, v50);
  v51 = sub_100013608(&qword_1001D3CB8, &qword_1001D3C98);
  v76 = v48;
  v77 = v51;
  v52 = swift_getWitnessTable();
  sub_100071210(v30, v27, v52);
  v53 = *(v61 + 8);
  v53(v30, v27);
  sub_100071210(v32, v27, v52);
  return (v53)(v32, v27);
}

uint64_t sub_10000FFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X5>, uint64_t a4@<X8>)
{
  v47 = a1;
  v48 = a4;
  v6 = type metadata accessor for Material();
  v7 = *(v6 - 8);
  v45 = v6;
  v46 = v7;
  __chkstk_darwin(v6);
  v44 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = &type metadata for Never;
  v62 = a2;
  v63 = &protocol witness table for Never;
  v64 = a3;
  v9 = type metadata accessor for List();
  WitnessTable = swift_getWitnessTable();
  v61 = v9;
  v62 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = type metadata accessor for InsetGroupedListStyle();
  v61 = v9;
  v62 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = OpaqueTypeMetadata2;
  v62 = v12;
  v63 = OpaqueTypeConformance2;
  v64 = &protocol witness table for InsetGroupedListStyle;
  swift_getOpaqueTypeMetadata2();
  v14 = type metadata accessor for ModifiedContent();
  v61 = OpaqueTypeMetadata2;
  v62 = v12;
  v63 = OpaqueTypeConformance2;
  v64 = &protocol witness table for InsetGroupedListStyle;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = &protocol witness table for _PaddingLayout;
  v43 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v15 = swift_getWitnessTable();
  v61 = v14;
  v62 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v61 = v14;
  v62 = v15;
  v17 = swift_getOpaqueTypeConformance2();
  v61 = v16;
  v62 = v17;
  v18 = swift_getOpaqueTypeMetadata2();
  v61 = v16;
  v62 = v17;
  v19 = swift_getOpaqueTypeConformance2();
  v61 = v18;
  v62 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v61 = v18;
  v62 = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v61 = v20;
  v62 = v21;
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D3C88);
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3C90);
  v41 = type metadata accessor for ModifiedContent();
  v42 = type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CA0);
  v22 = type metadata accessor for ModifiedContent();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = v40 - v27;
  v29 = v44;
  static Material.regular.getter();
  v40[1] = static Edge.Set.all.getter();
  v61 = v20;
  v62 = v21;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_100013608(&qword_1001D3CA8, &qword_1001D3C88);
  v57 = v30;
  v58 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_100013608(&qword_1001D3CB0, &qword_1001D3C90);
  v55 = v32;
  v56 = v33;
  v53 = swift_getWitnessTable();
  v54 = &protocol witness table for _PaddingLayout;
  v51 = swift_getWitnessTable();
  v52 = &protocol witness table for _FlexFrameLayout;
  v34 = swift_getWitnessTable();
  v35 = v45;
  View.background<A>(_:ignoresSafeAreaEdges:)();
  (*(v46 + 8))(v29, v35);
  v36 = sub_100013608(&qword_1001D3CC0, &qword_1001D3CA0);
  v49 = v34;
  v50 = v36;
  v37 = swift_getWitnessTable();
  sub_100071210(v26, v22, v37);
  v38 = *(v23 + 8);
  v38(v26, v22);
  sub_100071210(v28, v22, v37);
  return (v38)(v28, v22);
}

uint64_t sub_1000105FC()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10001067C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v30 = a8;
  v29 = a7;
  v28 = a6;
  v23 = a5;
  v26 = a4;
  v25 = a3;
  v24 = a2;
  v27 = a1;
  v31 = a9;
  v22 = sub_10001276C(&qword_1001D3CE0);
  sub_10001276C(&qword_1001D3CE8);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for ModifiedContent();
  v11 = sub_10001276C(&qword_1001D3CF0);
  v51 = a10;
  v52 = sub_100013608(&qword_1001D3CF8, &qword_1001D3CE8);
  WitnessTable = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  v49 = &protocol witness table for _PaddingLayout;
  v46 = swift_getWitnessTable();
  v47 = &protocol witness table for _PaddingLayout;
  v42 = v10;
  v43 = v11;
  v44 = swift_getWitnessTable();
  v45 = sub_100013608(&qword_1001D3D00, &qword_1001D3CF0);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  v41 = swift_getWitnessTable();
  swift_getWitnessTable();
  v12 = type metadata accessor for HStack();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v22 - v17;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v23;
  v36 = v28;
  v37 = v29;
  v38 = v30;
  v39 = a10;
  v40 = v27;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  v19 = swift_getWitnessTable();
  sub_100071210(v16, v12, v19);
  v20 = *(v13 + 8);
  v20(v16, v12);
  sub_100071210(v18, v12, v19);
  return (v20)(v18, v12);
}

uint64_t sub_100010AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v146 = a8;
  v145 = a7;
  v144 = a6;
  v142 = a4;
  v150 = a3;
  v149 = a2;
  v138 = a1;
  v148 = a9;
  v151 = sub_10001276C(&qword_1001D3CE0);
  sub_10001276C(&qword_1001D3CE8);
  v143 = a5;
  v11 = type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  v12 = type metadata accessor for ModifiedContent();
  v13 = sub_10001276C(&qword_1001D3CF0);
  v141 = a10;
  v173 = a10;
  v174 = sub_100013608(&qword_1001D3CF8, &qword_1001D3CE8);
  v135 = v11;
  WitnessTable = swift_getWitnessTable();
  v172 = WitnessTable;
  v124 = swift_getWitnessTable();
  v170 = v124;
  v171 = &protocol witness table for _PaddingLayout;
  v127 = swift_getWitnessTable();
  v168 = v127;
  v169 = &protocol witness table for _PaddingLayout;
  v159 = v12;
  v160 = v13;
  v137 = swift_getWitnessTable();
  v161 = v137;
  v136 = sub_100013608(&qword_1001D3D00, &qword_1001D3CF0);
  v162 = v136;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  v15 = type metadata accessor for TupleView();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v107 - v17;
  v134 = type metadata accessor for LongPressGesture();
  v131 = *(v134 - 8);
  v19 = __chkstk_darwin(v134);
  v129 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v13;
  v132 = *(v13 - 8);
  __chkstk_darwin(v19);
  v130 = &v107 - v21;
  v120 = swift_checkMetadataState();
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v116 = &v107 - v22;
  v119 = swift_checkMetadataState();
  v117 = *(v119 - 8);
  __chkstk_darwin(v119);
  v115 = &v107 - v23;
  v122 = swift_checkMetadataState();
  v121 = *(v122 - 8);
  v24 = __chkstk_darwin(v122);
  v147 = &v107 - v25;
  v139 = OpaqueTypeMetadata2;
  v126 = *(OpaqueTypeMetadata2 - 8);
  v26 = __chkstk_darwin(v24);
  v133 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v128 = &v107 - v28;
  v29 = sub_1000033A8(&qword_1001D3D18);
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v107 - v32;
  v34 = __chkstk_darwin(v31);
  v123 = &v107 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v152 = &v107 - v36;
  v37 = type metadata accessor for Optional();
  v38 = *(v37 - 8);
  v39 = __chkstk_darwin(v37);
  v41 = &v107 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v43 = &v107 - v42;
  if (static SystemVariantSupport.isInternalBuild.getter())
  {
    v108 = v41;
    v109 = v38;
    v110 = v43;
    v111 = v37;
    v112 = v18;
    v113 = v15;
    v114 = v16;
    type metadata accessor for InternalSettings();
    v44 = dispatch thunk of static InternalSettings.showDeveloperMenu.getter();
    v45 = 1;
    v46 = v138;
    if (v44)
    {
      v159 = v149;
      v160 = v150;
      v161 = v142;
      v162 = v143;
      v163 = v144;
      v164 = v145;
      v165 = v146;
      v166 = v141;
      v47 = type metadata accessor for MenuSplitView();
      sub_1000081B4(v47, v33);
      v48 = static Edge.Set.leading.getter();
      EdgeInsets.init(_all:)();
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;
      v57 = &v33[*(sub_1000033A8(&qword_1001D3D40) + 36)];
      *v57 = v48;
      *(v57 + 1) = v50;
      *(v57 + 2) = v52;
      *(v57 + 3) = v54;
      *(v57 + 4) = v56;
      v57[40] = 0;
      v58 = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v59 = &v33[*(v29 + 36)];
      *v59 = v58;
      *(v59 + 1) = v60;
      *(v59 + 2) = v61;
      *(v59 + 3) = v62;
      *(v59 + 4) = v63;
      v59[40] = 0;
      sub_100012FFC(v33, v152);
      v45 = 0;
    }

    v64 = (*(v30 + 56))(v152, v45, 1, v29);
    __chkstk_darwin(v64);
    v65 = v150;
    *(&v107 - 10) = v149;
    *(&v107 - 9) = v65;
    v66 = v142;
    v67 = v143;
    *(&v107 - 8) = v142;
    *(&v107 - 7) = v67;
    v68 = v144;
    v69 = v145;
    *(&v107 - 6) = v144;
    *(&v107 - 5) = v69;
    v70 = v146;
    v71 = v141;
    *(&v107 - 4) = v146;
    *(&v107 - 3) = v71;
    *(&v107 - 2) = v46;
    swift_checkMetadataState();
    v72 = v116;
    Group<A>.init(content:)();
    static Edge.Set.trailing.getter();
    v73 = v115;
    v74 = v120;
    View.padding(_:_:)();
    (*(v118 + 8))(v72, v74);
    static Edge.Set.top.getter();
    v75 = v119;
    View.padding(_:_:)();
    (*(v117 + 8))(v73, v75);
    v76 = v129;
    LongPressGesture.init(minimumDuration:maximumDistance:)();
    v77 = swift_allocObject();
    v78 = v149;
    v79 = v150;
    *(v77 + 16) = v149;
    *(v77 + 24) = v79;
    *(v77 + 32) = v66;
    *(v77 + 40) = v67;
    *(v77 + 48) = v68;
    *(v77 + 56) = v69;
    *(v77 + 64) = v70;
    *(v77 + 72) = v71;
    v80 = *(v46 + 80);
    *(v77 + 144) = *(v46 + 64);
    *(v77 + 160) = v80;
    *(v77 + 176) = *(v46 + 96);
    v81 = *(v46 + 16);
    *(v77 + 80) = *v46;
    *(v77 + 96) = v81;
    v82 = *(v46 + 48);
    *(v77 + 112) = *(v46 + 32);
    *(v77 + 128) = v82;
    v159 = v78;
    v160 = v79;
    v161 = v66;
    v162 = v67;
    v163 = v68;
    v164 = v69;
    v165 = v70;
    v166 = v71;
    v83 = type metadata accessor for MenuSplitView();
    (*(*(v83 - 8) + 16))(&v159, v46, v83);
    sub_100013CE8(&qword_1001D3D20, &type metadata accessor for LongPressGesture);
    v84 = v130;
    v85 = v134;
    Gesture.onEnded(_:)();

    (*(v131 + 8))(v76, v85);
    static GestureMask.all.getter();
    v86 = v133;
    v87 = v122;
    v88 = v140;
    v89 = v137;
    v90 = v136;
    v91 = v147;
    View.simultaneousGesture<A>(_:including:)();
    (*(v132 + 8))(v84, v88);
    (*(v121 + 8))(v91, v87);
    v159 = v87;
    v160 = v88;
    v161 = v89;
    v162 = v90;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v93 = v128;
    v94 = v139;
    sub_100071210(v86, v139, OpaqueTypeConformance2);
    v95 = v126;
    v96 = *(v126 + 8);
    v96(v86, v94);
    v97 = v123;
    sub_100012930(v152, v123);
    v157 = 0;
    v158 = 1;
    v159 = v97;
    v160 = &v157;
    (*(v95 + 16))(v86, v93, v94);
    v161 = v86;
    v156[0] = v151;
    v156[1] = &type metadata for Spacer;
    v156[2] = v94;
    v153 = sub_1000129A0();
    v154 = &protocol witness table for Spacer;
    v155 = OpaqueTypeConformance2;
    v98 = v112;
    sub_10006A7BC(&v159, 3uLL, v156);
    v96(v93, v94);
    sub_10001370C(v152, &qword_1001D3CE0);
    v96(v86, v94);
    sub_10001370C(v97, &qword_1001D3CE0);
    v99 = v114;
    v100 = v108;
    v101 = v113;
    (*(v114 + 32))(v108, v98, v113);
    (*(v99 + 56))(v100, 0, 1, v101);
    swift_getWitnessTable();
    v43 = v110;
    sub_10006A98C(v100, v110);
    v102 = *(v109 + 8);
    v103 = v100;
    v37 = v111;
    v102(v103, v111);
  }

  else
  {
    (*(v16 + 56))(v41, 1, 1, v15);
    swift_getWitnessTable();
    sub_10006A98C(v41, v43);
    v104 = v41;
    v102 = *(v38 + 8);
    v102(v104, v37);
  }

  v167 = swift_getWitnessTable();
  v105 = swift_getWitnessTable();
  sub_100071210(v43, v37, v105);
  return (v102)(v43, v37);
}

uint64_t sub_100011B2C@<X0>(__int128 *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v50 = a9;
  v18 = sub_1000033A8(&qword_1001D3CE8);
  v45 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v41 = &v39 - v20;
  v40 = *(a5 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v39 = &v39 - v24;
  v48 = v25;
  v47 = type metadata accessor for _ConditionalContent();
  v49 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v39 - v26;
  v42 = a2;
  v43 = a3;
  *&v53 = a2;
  *(&v53 + 1) = a3;
  v44 = a4;
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v57 = a7;
  v58 = a8;
  v59 = a10;
  type metadata accessor for MenuSplitView();
  v53 = *a1;
  LOBYTE(v54) = *(a1 + 16);
  sub_1000033A8(&qword_1001D3E78);
  v27 = Binding.wrappedValue.getter();
  if (v60 == 1 && (type metadata accessor for InternalSettings(), v27 = dispatch thunk of static InternalSettings.showTapToRadar.getter(), (v27 & 1) != 0))
  {
    (*(a1 + 9))();
    v28 = v39;
    v29 = a10;
    sub_100071210(v23, a5, a10);
    v30 = *(v40 + 8);
    v30(v23, a5);
    sub_100071210(v28, a5, a10);
    sub_100013608(&qword_1001D3CF8, &qword_1001D3CE8);
    v31 = v46;
    sub_1000648C8(v23, a5);
    v30(v23, a5);
    v30(v28, a5);
  }

  else
  {
    __chkstk_darwin(v27);
    v32 = v43;
    *(&v39 - 10) = v42;
    *(&v39 - 9) = v32;
    *(&v39 - 8) = v44;
    *(&v39 - 7) = a5;
    *(&v39 - 6) = a6;
    *(&v39 - 5) = a7;
    *(&v39 - 4) = a8;
    *(&v39 - 3) = a10;
    v29 = a10;
    *(&v39 - 2) = a1;
    sub_1000033A8(&qword_1001D3EA0);
    sub_10001393C();
    v33 = v41;
    Button.init(action:label:)();
    sub_100013608(&qword_1001D3CF8, &qword_1001D3CE8);
    v31 = v46;
    v34 = v48;
    sub_1000649C0(v33, a5, v48);
    (*(v45 + 8))(v33, v34);
  }

  v35 = sub_100013608(&qword_1001D3CF8, &qword_1001D3CE8);
  v51 = v29;
  v52 = v35;
  v36 = v47;
  WitnessTable = swift_getWitnessTable();
  sub_100071210(v31, v36, WitnessTable);
  return (*(v49 + 8))(v31, v36);
}

uint64_t sub_100012038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v49 = a8;
  v48 = a7;
  v47 = a6;
  v46 = a5;
  v45 = a4;
  v44 = a3;
  v43 = a2;
  v53 = a9;
  v41 = a10;
  v52 = type metadata accessor for AccessibilityActionKind();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000033A8(&qword_1001D3EB8);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  v42 = sub_1000033A8(&qword_1001D3EA0);
  __chkstk_darwin(v42);
  v40 = &v39 - v15;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v16 = v54[13];
  v17 = v55;
  v18 = v56;
  v19 = v57;
  v20 = v58;
  v21 = v59;
  v22 = static Color.clear.getter();
  static Edge.Set.all.getter();
  v60 = 0u;
  v61 = 0u;
  v62 = 1;
  SafeAreaPaddingModifier.init(edges:insets:)();
  *v14 = v16;
  v14[8] = v17;
  *(v14 + 2) = v18;
  v14[24] = v19;
  *(v14 + 4) = v20;
  *(v14 + 5) = v21;
  *(v14 + 6) = v22;
  LocalizedStringKey.init(stringLiteral:)();
  sub_1000139F8();
  v23 = v40;
  View.accessibilityLabel(_:)();

  sub_10001370C(v14, &qword_1001D3EB8);
  v24 = swift_allocObject();
  v25 = v43;
  v26 = v44;
  *(v24 + 16) = v43;
  *(v24 + 24) = v26;
  v27 = v45;
  v28 = v46;
  *(v24 + 32) = v45;
  *(v24 + 40) = v28;
  v29 = v47;
  v30 = v48;
  *(v24 + 48) = v47;
  *(v24 + 56) = v30;
  v31 = v49;
  v32 = v41;
  *(v24 + 64) = v49;
  *(v24 + 72) = v32;
  v33 = *(a1 + 80);
  *(v24 + 144) = *(a1 + 64);
  *(v24 + 160) = v33;
  *(v24 + 176) = *(a1 + 96);
  v34 = *(a1 + 16);
  *(v24 + 80) = *a1;
  *(v24 + 96) = v34;
  v35 = *(a1 + 48);
  *(v24 + 112) = *(a1 + 32);
  *(v24 + 128) = v35;
  v54[0] = v25;
  v54[1] = v26;
  v54[2] = v27;
  v54[3] = v28;
  v54[4] = v29;
  v54[5] = v30;
  v54[6] = v31;
  v54[7] = v32;
  v36 = type metadata accessor for MenuSplitView();
  (*(*(v36 - 8) + 16))(v54, a1, v36);
  v37 = v50;
  static AccessibilityActionKind.default.getter();
  ModifiedContent<>.accessibilityAction(_:_:)();

  (*(v51 + 8))(v37, v52);
  return sub_10001370C(v23, &qword_1001D3EA0);
}

uint64_t sub_100012488()
{
  type metadata accessor for MenuSplitView();
  sub_1000033A8(&qword_1001D3E78);
  Binding.wrappedValue.getter();
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1000125A8()
{
  static HapticFeedback.generateImpactFeedback(style:)();
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100012658(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v10 = v2;
  v7 = v2;
  v8 = v1;
  v9 = v3;
  sub_10001376C(&v10, v5);

  sub_1000033A8(&qword_1001D3E78);
  Binding.wrappedValue.getter();
  v5[0] = v2;
  v5[1] = v1;
  v6 = v3;
  Binding.wrappedValue.setter();
  sub_1000137C8(&v10);
}

uint64_t sub_10001276C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100012814()
{
  result = qword_1001D3D08;
  if (!qword_1001D3D08)
  {
    sub_10001276C(&qword_1001D3C80);
    sub_100013608(&qword_1001D3D10, &qword_1001D3CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3D08);
  }

  return result;
}

uint64_t sub_100012930(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D3CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000129A0()
{
  result = qword_1001D3D28;
  if (!qword_1001D3D28)
  {
    sub_10001276C(&qword_1001D3CE0);
    sub_100012A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3D28);
  }

  return result;
}

unint64_t sub_100012A24()
{
  result = qword_1001D3D30;
  if (!qword_1001D3D30)
  {
    sub_10001276C(&qword_1001D3D18);
    sub_100012AB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3D30);
  }

  return result;
}

unint64_t sub_100012AB0()
{
  result = qword_1001D3D38;
  if (!qword_1001D3D38)
  {
    sub_10001276C(&qword_1001D3D40);
    sub_100012B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3D38);
  }

  return result;
}

unint64_t sub_100012B3C()
{
  result = qword_1001D3D48;
  if (!qword_1001D3D48)
  {
    sub_10001276C(&qword_1001D3D50);
    sub_10001276C(&qword_1001D3D58);
    sub_100012C34();
    swift_getOpaqueTypeConformance2();
    sub_100013CE8(&qword_1001D3DB8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3D48);
  }

  return result;
}

unint64_t sub_100012C34()
{
  result = qword_1001D3D60;
  if (!qword_1001D3D60)
  {
    sub_10001276C(&qword_1001D3D58);
    sub_10001276C(&qword_1001D3D68);
    sub_100012D2C();
    swift_getOpaqueTypeConformance2();
    sub_100013CE8(&qword_1001D3DB8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3D60);
  }

  return result;
}

unint64_t sub_100012D2C()
{
  result = qword_1001D3D70;
  if (!qword_1001D3D70)
  {
    sub_10001276C(&qword_1001D3D68);
    sub_10001276C(&qword_1001D3D78);
    sub_10001276C(&qword_1001D3CF0);
    sub_10001276C(&qword_1001D3D80);
    sub_10001276C(&qword_1001D3D88);
    sub_100012F14();
    sub_100013608(&qword_1001D3DB0, &qword_1001D3D88);
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D3D00, &qword_1001D3CF0);
    swift_getOpaqueTypeConformance2();
    sub_100013CE8(&qword_1001D3DB8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3D70);
  }

  return result;
}

unint64_t sub_100012F14()
{
  result = qword_1001D3D90;
  if (!qword_1001D3D90)
  {
    sub_10001276C(&qword_1001D3D80);
    sub_100013608(&qword_1001D3D98, &qword_1001D3DA0);
    sub_100013CE8(&qword_1001D3DA8, &type metadata accessor for SafeAreaPaddingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3D90);
  }

  return result;
}

uint64_t sub_100012FFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D3D18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100013084()
{
  result = qword_1001D3DE0;
  if (!qword_1001D3DE0)
  {
    sub_10001276C(&qword_1001D3DD8);
    sub_10001276C(&qword_1001D3DE8);
    sub_10001276C(&qword_1001D3DF0);
    sub_10001318C();
    sub_1000133E4();
    swift_getOpaqueTypeConformance2();
    sub_100013470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3DE0);
  }

  return result;
}

unint64_t sub_10001318C()
{
  result = qword_1001D3DF8;
  if (!qword_1001D3DF8)
  {
    sub_10001276C(&qword_1001D3DE8);
    sub_100013248();
    sub_100013CE8(&qword_1001D3E30, &type metadata accessor for InternalAccessoryControlViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3DF8);
  }

  return result;
}

unint64_t sub_100013248()
{
  result = qword_1001D3E00;
  if (!qword_1001D3E00)
  {
    sub_10001276C(&qword_1001D3E08);
    sub_1000132D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3E00);
  }

  return result;
}

unint64_t sub_1000132D4()
{
  result = qword_1001D3E10;
  if (!qword_1001D3E10)
  {
    sub_10001276C(&qword_1001D3E18);
    sub_100013360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3E10);
  }

  return result;
}

unint64_t sub_100013360()
{
  result = qword_1001D3E20;
  if (!qword_1001D3E20)
  {
    sub_10001276C(&qword_1001D3E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3E20);
  }

  return result;
}

unint64_t sub_1000133E4()
{
  result = qword_1001D3E38;
  if (!qword_1001D3E38)
  {
    sub_10001276C(&qword_1001D3DF0);
    sub_10001318C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3E38);
  }

  return result;
}

unint64_t sub_100013470()
{
  result = qword_1001D3E40;
  if (!qword_1001D3E40)
  {
    sub_10001276C(&qword_1001D3E48);
    sub_100013528();
    sub_100013608(&qword_1001D3E68, &qword_1001D3E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3E40);
  }

  return result;
}

unint64_t sub_100013528()
{
  result = qword_1001D3E50;
  if (!qword_1001D3E50)
  {
    sub_10001276C(&qword_1001D3E58);
    sub_1000135B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3E50);
  }

  return result;
}

unint64_t sub_1000135B4()
{
  result = qword_1001D3E60;
  if (!qword_1001D3E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3E60);
  }

  return result;
}

uint64_t sub_100013608(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10001276C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001370C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000033A8(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000138BC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000033A8(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10001393C()
{
  result = qword_1001D3EA8;
  if (!qword_1001D3EA8)
  {
    sub_10001276C(&qword_1001D3EA0);
    sub_1000139F8();
    sub_100013CE8(&qword_1001D3DB8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3EA8);
  }

  return result;
}

unint64_t sub_1000139F8()
{
  result = qword_1001D3EB0;
  if (!qword_1001D3EB0)
  {
    sub_10001276C(&qword_1001D3EB8);
    sub_100013470();
    sub_100013CE8(&qword_1001D3DA8, &type metadata accessor for SafeAreaPaddingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3EB0);
  }

  return result;
}

uint64_t sub_100013B74()
{

  return swift_deallocObject();
}

unint64_t sub_100013C34()
{
  result = qword_1001D3EC8;
  if (!qword_1001D3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3EC8);
  }

  return result;
}

uint64_t sub_100013CE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100013D30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100013DE8()
{
  result = qword_1001D3EE0;
  if (!qword_1001D3EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3EE0);
  }

  return result;
}

uint64_t sub_100013E90()
{
  type metadata accessor for NavigationPath();
  sub_10001276C(&qword_1001D3C70);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_100013608(&qword_1001D3C78, &qword_1001D3C70);
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for _BackgroundModifier();
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3C80);
  type metadata accessor for List();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for InsetGroupedListStyle();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D3C88);
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3C90);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3C98);
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CA0);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_100013608(&qword_1001D3CA8, &qword_1001D3C88);
  swift_getWitnessTable();
  sub_100013608(&qword_1001D3CB0, &qword_1001D3C90);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100013608(&qword_1001D3CB8, &qword_1001D3C98);
  swift_getWitnessTable();
  sub_100013608(&qword_1001D3CC0, &qword_1001D3CA0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  sub_10001276C(&qword_1001D3CC8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getWitnessTable();
  sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CD8);
  sub_10001276C(&qword_1001D3CE0);
  sub_10001276C(&qword_1001D3CE8);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CF0);
  sub_100013608(&qword_1001D3CF8, &qword_1001D3CE8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100013608(&qword_1001D3D00, &qword_1001D3CF0);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for NavigationStack();
  return swift_getWitnessTable();
}

uint64_t sub_100014940()
{
  type metadata accessor for PPTHelper();
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC6Tamale9PPTHelper___finishLaunchTest;
  *(v0 + v1) = swift_getKeyPath();
  sub_1000033A8(&qword_1001D3FE0);
  result = swift_storeEnumTagMultiPayload();
  *(v0 + OBJC_IVAR____TtC6Tamale9PPTHelper_armed) = 1;
  qword_1001EB4D0 = v0;
  return result;
}

uint64_t sub_1000149C8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC6Tamale9PPTHelper_armed;
  if (*(v0 + OBJC_IVAR____TtC6Tamale9PPTHelper_armed) == 1)
  {
    v17 = result;
    sub_100014FBC();
    v16 = static OS_dispatch_queue.main.getter();
    v11 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100015040;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B5F04;
    aBlock[3] = &unk_1001BF860;
    v12 = _Block_copy(aBlock);
    v15 = v0;
    v13 = v12;

    static DispatchQoS.unspecified.getter();
    v18 = _swiftEmptyArrayStorage;
    sub_100015060();
    sub_1000033A8(&unk_1001D8010);
    sub_1000150B8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v14 = v16;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v17);

    *(v15 + v10) = 0;
  }

  return result;
}

uint64_t sub_100014C84()
{
  v0 = sub_1000033A8(&qword_1001D3FE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for FinishLaunchTestAction();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10001511C(result + OBJC_IVAR____TtC6Tamale9PPTHelper___finishLaunchTest, v2);
    sub_100053FE8(v6);

    sub_10001518C(v2);
    FinishLaunchTestAction.callAsFunction()();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_100014DF0()
{
  sub_10001518C(v0 + OBJC_IVAR____TtC6Tamale9PPTHelper___finishLaunchTest);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PPTHelper()
{
  result = qword_1001D3F20;
  if (!qword_1001D3F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100014EA8()
{
  sub_100014F40();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100014F40()
{
  if (!qword_1001D3F30)
  {
    type metadata accessor for FinishLaunchTestAction();
    v0 = type metadata accessor for Environment.Content();
    if (!v1)
    {
      atomic_store(v0, &qword_1001D3F30);
    }
  }
}

unint64_t sub_100014FBC()
{
  result = qword_1001D6B40;
  if (!qword_1001D6B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001D6B40);
  }

  return result;
}

uint64_t sub_100015008()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100015048(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100015060()
{
  result = qword_1001D6B10;
  if (!qword_1001D6B10)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6B10);
  }

  return result;
}

unint64_t sub_1000150B8()
{
  result = qword_1001D6B20;
  if (!qword_1001D6B20)
  {
    sub_10001276C(&unk_1001D8010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6B20);
  }

  return result;
}

uint64_t sub_10001511C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D3FE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001518C(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D3FE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000151F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000138BC(a3, v25 - v10, &qword_1001D41B0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001370C(v11, &qword_1001D41B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10001370C(a3, &qword_1001D41B0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001370C(a3, &qword_1001D41B0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000154EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000138BC(a3, v25 - v10, &qword_1001D41B0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001370C(v11, &qword_1001D41B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10001370C(a3, &qword_1001D41B0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001370C(a3, &qword_1001D41B0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000157EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000138BC(a3, v25 - v10, &qword_1001D41B0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001370C(v11, &qword_1001D41B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1000033A8(&unk_1001D4230);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10001370C(a3, &qword_1001D41B0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001370C(a3, &qword_1001D41B0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1000033A8(&unk_1001D4230);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100015B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000138BC(a3, v25 - v10, &qword_1001D41B0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001370C(v11, &qword_1001D41B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10001370C(a3, &qword_1001D41B0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001370C(a3, &qword_1001D41B0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100015DF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100019490(&qword_1001D41D0, type metadata accessor for LaunchOptions);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

id sub_100015F20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC6Tamale13SceneDelegate_window] = 0;
  v3 = &v0[OBJC_IVAR____TtC6Tamale13SceneDelegate__launchOptions];
  type metadata accessor for LaunchOptions();
  *(swift_allocObject() + 16) = 0;
  ObservationRegistrar.init()();
  State.init(wrappedValue:)();
  v4 = v14;
  *v3 = v13;
  *(v3 + 1) = v4;
  v5 = &v0[OBJC_IVAR____TtC6Tamale13SceneDelegate__siriRequestStateResponder];
  type metadata accessor for SiriRequestStateResponder();
  v6 = swift_allocObject();
  *(v6 + 16) = 2;
  ObservationRegistrar.init()();
  v12 = v6;
  State.init(wrappedValue:)();
  v7 = v14;
  *v5 = v13;
  *(v5 + 1) = v7;
  v8 = OBJC_IVAR____TtC6Tamale13SceneDelegate_timeOfLastBackground;
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  *&v1[OBJC_IVAR____TtC6Tamale13SceneDelegate_contextRetentionWindow] = 0x403E000000000000;
  type metadata accessor for NewSaliencyModel();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC6Tamale13SceneDelegate_saliencyModel] = NewSaliencyModel.init()();
  *&v1[OBJC_IVAR____TtC6Tamale13SceneDelegate_sheetAssistant] = [objc_allocWithZone(type metadata accessor for SheetTrackingAssistant()) init];
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_1000160FC(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_100018B08(a1);
  (*(*(*(v2 + qword_1001EB4F8) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_10001620C(uint64_t a1)
{
  v2 = v1;
  v41[0] = a1;
  v43 = 0;
  v3 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v3 - 8);
  v42 = v41 - v4;
  v5 = sub_1000033A8(&qword_1001D41C0);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v41 - v13;
  v41[1] = OBJC_IVAR____TtC6Tamale13SceneDelegate_saliencyModel;

  NewSaliencyModel.analytics.getter();

  dispatch thunk of SessionAnalytics.start()();

  v15 = OBJC_IVAR____TtC6Tamale13SceneDelegate_timeOfLastBackground;
  swift_beginAccess();
  sub_1000138BC(v2 + v15, v7, &qword_1001D41C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001370C(v7, &qword_1001D41C0);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v17 = v16;
    v18 = *(v9 + 8);
    v18(v12, v8);
    if (v17 > 30.0)
    {
      objc_opt_self();
      v19 = v41[0];
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v21 = v20;
        v22 = v19;
        if ([v21 delegate])
        {
          v44 = &OBJC_PROTOCOL___UIWindowSceneDelegate;
          v23 = swift_dynamicCastObjCProtocolConditional();
          if (v23 && (v24 = v23, ([v23 respondsToSelector:"window"] & 1) != 0) && (v25 = objc_msgSend(v24, "window")) != 0)
          {
            v26 = v25;
            v27 = [v25 rootViewController];

            swift_unknownObjectRelease();
            if (v27)
            {
              v28 = [v27 sheetPresentationController];
              if (v28)
              {

                [v27 dismissViewControllerAnimated:0 completion:0];
              }
            }
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }

        else
        {
        }
      }

      NewSaliencyModel.reset()();

      v29 = *(v2 + OBJC_IVAR____TtC6Tamale13SceneDelegate__launchOptions + 8);
      v46 = *(v2 + OBJC_IVAR____TtC6Tamale13SceneDelegate__launchOptions);
      v47 = v29;
      sub_1000033A8(&qword_1001D41C8);
      State.wrappedValue.getter();
      v30 = v45;
      if (*(v45 + 16) == 1)
      {
        *(v45 + 16) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v41[-2] = v30;
        LOBYTE(v41[-1]) = 1;
        v46 = v30;
        sub_100019490(&qword_1001D41D0, type metadata accessor for LaunchOptions);
        v32 = v43;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        v43 = v32;
      }

      v33 = type metadata accessor for TaskPriority();
      v34 = v42;
      (*(*(v33 - 8) + 56))(v42, 1, 1, v33);
      type metadata accessor for MainActor();
      v35 = static MainActor.shared.getter();
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(v36 + 24) = &protocol witness table for MainActor;
      sub_1000154EC(0, 0, v34, &unk_100170C00, v36);
    }

    v18(v14, v8);
  }

  result = MKBGetDeviceLockState();
  if (result && result != 3)
  {
    v38 = *(v2 + OBJC_IVAR____TtC6Tamale13SceneDelegate__launchOptions + 8);
    v46 = *(v2 + OBJC_IVAR____TtC6Tamale13SceneDelegate__launchOptions);
    v47 = v38;
    sub_1000033A8(&qword_1001D41C8);
    State.wrappedValue.getter();
    v39 = v45;
    if (*(v45 + 16) == 1)
    {
      *(v45 + 16) = 1;
    }

    else
    {
      v40 = swift_getKeyPath();
      __chkstk_darwin(v40);
      v41[-2] = v39;
      LOBYTE(v41[-1]) = 1;
      v46 = v39;
      sub_100019490(&qword_1001D41D0, type metadata accessor for LaunchOptions);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_1000168FC()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100016990, v2, v1);
}

uint64_t sub_100016990()
{
  type metadata accessor for GeoLookup();
  *(v0 + 40) = static GeoLookup.shared.getter();
  sub_100019490(&qword_1001D41D8, &type metadata accessor for GeoLookup);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100016A54, v2, v1);
}

uint64_t sub_100016A54()
{
  dispatch thunk of GeoLookup.clearContextIfNecessary()();

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return _swift_task_switch(sub_100016AC0, v1, v2);
}

uint64_t sub_100016AC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for SceneDelegate()
{
  result = qword_1001D40F0;
  if (!qword_1001D40F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100016CF0()
{
  sub_100016DC0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100016DC0()
{
  if (!qword_1001D4100)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001D4100);
    }
  }
}

void *sub_10001701C(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_1001EB4F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = UIHostingController.init(coder:rootView:)();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_100017154(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1000171E8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100017288(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v7 - 8);
  v9 = v23 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.ui.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, a1, v16, 2u);
  }

  (*(v11 + 8))(v13, v10);
  v17 = *(v6 + OBJC_IVAR____TtC6Tamale13SceneDelegate__siriRequestStateResponder + 8);
  v23[2] = *(v6 + OBJC_IVAR____TtC6Tamale13SceneDelegate__siriRequestStateResponder);
  v23[3] = v17;
  sub_1000033A8(&qword_1001D41B8);
  State.wrappedValue.getter();
  v18 = v23[1];
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  type metadata accessor for MainActor();

  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &protocol witness table for MainActor;
  v21[4] = v18;
  sub_1000154EC(0, 0, v9, a3, v21);
}

uint64_t sub_100017618(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100019774;

  return sub_1000E054C(a1, v4, v5, v6);
}

uint64_t sub_1000176CC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100017718(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100017810;

  return v6(a1);
}

uint64_t sub_100017810()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100017908(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100019774;

  return sub_100017718(a1, v4);
}

uint64_t sub_1000179C0()
{

  return swift_deallocObject();
}

uint64_t sub_1000179F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100019774;

  return sub_1000E0158(a1, v4, v5, v6);
}

uint64_t sub_100017AAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100019774;

  return sub_1000E09A8(a1, v4, v5, v6);
}

uint64_t sub_100017B60(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100017C54;

  return v5(v2 + 32);
}

uint64_t sub_100017C54()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100017D68(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100017E5C;

  return v5(v2 + 16);
}

uint64_t sub_100017E5C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100017F8C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100018080;

  return v5(v2 + 32);
}

uint64_t sub_100018080()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100018194(void *a1)
{
  v2 = v1;
  v86 = a1;
  v3 = type metadata accessor for ContentView();
  __chkstk_darwin(v3);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000033A8(&qword_1001D41E0);
  v70 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v67 - v7;
  v9 = sub_1000033A8(&qword_1001D41E8);
  v10 = *(v9 - 8);
  v73 = v9;
  v74 = v10;
  __chkstk_darwin(v9);
  v12 = &v67 - v11;
  v13 = sub_1000033A8(&qword_1001D41F0);
  v14 = *(v13 - 8);
  v78 = v13;
  v79 = v14;
  __chkstk_darwin(v13);
  v72 = &v67 - v15;
  v81 = sub_1000033A8(&qword_1001D41F8);
  v84 = *(v81 - 8);
  __chkstk_darwin(v81);
  v75 = &v67 - v16;
  v17 = sub_1000033A8(&qword_1001D4200);
  v18 = *(v17 - 8);
  v82 = v17;
  v83 = v18;
  __chkstk_darwin(v17);
  v77 = &v67 - v19;
  v85 = sub_1000033A8(&qword_1001D4208);
  v80 = *(v85 - 8);
  v20 = __chkstk_darwin(v85);
  v68 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v69 = &v67 - v23;
  __chkstk_darwin(v22);
  v76 = &v67 - v24;
  v25 = OBJC_IVAR____TtC6Tamale13SceneDelegate_saliencyModel;
  v71 = OBJC_IVAR____TtC6Tamale13SceneDelegate_saliencyModel;

  NewSaliencyModel.analytics.getter();

  dispatch thunk of SessionAnalytics.start()();

  v26 = *(v1 + v25);
  v27 = *(v2 + OBJC_IVAR____TtC6Tamale13SceneDelegate_sheetAssistant);

  sub_1000F5908(v26, v27, v5);
  v28 = sub_100019490(&qword_1001D4210, type metadata accessor for ContentView);
  View.statusBar(hidden:)();
  sub_100019434(v5);
  v87 = v3;
  v88 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.allowsSecureDrawing()();
  (*(v70 + 8))(v8, v6);
  v30 = *(v2 + OBJC_IVAR____TtC6Tamale13SceneDelegate__launchOptions + 8);
  v87 = *(v2 + OBJC_IVAR____TtC6Tamale13SceneDelegate__launchOptions);
  v88 = v30;
  sub_1000033A8(&qword_1001D41C8);
  State.wrappedValue.getter();
  v31 = type metadata accessor for LaunchOptions();
  v87 = v6;
  v88 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_100019490(&qword_1001D41D0, type metadata accessor for LaunchOptions);
  v35 = v72;
  v34 = v73;
  View.environment<A>(_:)();

  (*(v74 + 8))(v12, v34);
  v36 = v2;
  v37 = *(v2 + OBJC_IVAR____TtC6Tamale13SceneDelegate__siriRequestStateResponder + 8);
  v87 = *(v2 + OBJC_IVAR____TtC6Tamale13SceneDelegate__siriRequestStateResponder);
  v88 = v37;
  sub_1000033A8(&qword_1001D41B8);
  State.wrappedValue.getter();
  v38 = type metadata accessor for SiriRequestStateResponder();
  v87 = v34;
  v88 = v31;
  v89 = v32;
  v90 = v33;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_100019490(&qword_1001D4218, type metadata accessor for SiriRequestStateResponder);
  v41 = v75;
  v42 = v78;
  View.environment<A>(_:)();
  v43 = v36;

  v44 = v42;
  (*(v79 + 8))(v35, v42);

  NewSaliencyModel.analytics.getter();

  v45 = type metadata accessor for SessionAnalytics();
  v87 = v44;
  v88 = v38;
  v89 = v39;
  v90 = v40;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_100019490(&qword_1001D4220, &type metadata accessor for SessionAnalytics);
  v48 = v77;
  v49 = v81;
  View.environment<A>(_:)();

  (*(v84 + 8))(v41, v49);
  v87 = v49;
  v88 = v45;
  v50 = v76;
  v89 = v46;
  v90 = v47;
  v51 = v86;
  swift_getOpaqueTypeConformance2();
  v52 = v82;
  View.allowsOpeningSensitiveURLs()();
  (*(v83 + 8))(v48, v52);
  objc_opt_self();
  v53 = swift_dynamicCastObjCClass();
  if (!v53)
  {
    return (*(v80 + 8))(v50, v85);
  }

  v54 = v53;
  v55 = objc_allocWithZone(type metadata accessor for SecureWindow());
  v86 = v51;
  v56 = [v55 initWithWindowScene:v54];
  v57 = v80;
  v58 = *(v80 + 16);
  v59 = v69;
  v60 = v85;
  v58(v69, v50, v85);
  v61 = objc_allocWithZone(sub_1000033A8(&qword_1001D4228));
  v58(v68, v59, v60);
  v62 = v56;
  v63 = UIHostingController.init(rootView:)();
  v64 = *(v57 + 8);
  v64(v59, v60);
  [v62 setRootViewController:v63];

  v65 = *(v43 + OBJC_IVAR____TtC6Tamale13SceneDelegate_window);
  *(v43 + OBJC_IVAR____TtC6Tamale13SceneDelegate_window) = v62;

  [v62 makeKeyAndVisible];
  return (v64)(v50, v60);
}

uint64_t sub_100018B08(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v4 - v1);
  return UIHostingController.init(rootView:)();
}

uint64_t sub_100018BF0()
{
  v1 = v0;
  v2 = sub_1000033A8(&qword_1001D41C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-v3];
  v5 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19[-v6];
  v8 = *(v0 + OBJC_IVAR____TtC6Tamale13SceneDelegate__siriRequestStateResponder + 8);
  v20 = *(v0 + OBJC_IVAR____TtC6Tamale13SceneDelegate__siriRequestStateResponder);
  v21 = v8;
  sub_1000033A8(&qword_1001D41B8);
  State.wrappedValue.getter();
  v9 = v22;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v9;
  sub_1000154EC(0, 0, v7, &unk_100170BC0, v12);

  NewSaliencyModel.analytics.getter();

  dispatch thunk of SessionAnalytics.publishAndReset()();

  static Date.now.getter();
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
  v14 = OBJC_IVAR____TtC6Tamale13SceneDelegate_timeOfLastBackground;
  swift_beginAccess();
  sub_1000191A0(v4, v1 + v14);
  swift_endAccess();
  v15 = *(v1 + OBJC_IVAR____TtC6Tamale13SceneDelegate__launchOptions + 8);
  v20 = *(v1 + OBJC_IVAR____TtC6Tamale13SceneDelegate__launchOptions);
  v21 = v15;
  sub_1000033A8(&qword_1001D41C8);
  State.wrappedValue.getter();
  v16 = v22;
  if (*(v22 + 16))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v19[-16] = v16;
    v19[-8] = 0;
    v20 = v16;
    sub_100019490(&qword_1001D41D0, type metadata accessor for LaunchOptions);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v22 + 16) = 0;
  }
}

uint64_t sub_100018F74()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.ui.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "### siriDidActivate was deprecated", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000190A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100019774;

  return sub_100017F8C(a1, v4);
}

uint64_t sub_100019160()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000191A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D41C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001925C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100019294()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100019340;

  return sub_1000168FC();
}

uint64_t sub_100019340()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100019434(uint64_t a1)
{
  v2 = type metadata accessor for ContentView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100019490(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000194D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100019774;

  return sub_100017B60(a1, v4);
}

uint64_t sub_1000195C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100019774;

  return sub_100017D68(a1, v4);
}

uint64_t sub_100019678(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100019340;

  return sub_100017D68(a1, v4);
}

id sub_1000197BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptySceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100019848()
{
  result = qword_1001D42C8;
  if (!qword_1001D42C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001D42C8);
  }

  return result;
}

BOOL AskACMESource.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001BEB08, v2);

  return v3 != 0;
}

Swift::Int sub_100019920()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10001998C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000199DC@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1001BEB40, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100019A64()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  sub_100019848();
  if (!NSBundle.init(__dsoHandle:)())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

unint64_t sub_100019BA4()
{
  result = qword_1001D42D0;
  if (!qword_1001D42D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D42D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AskACMESource(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AskACMESource(_WORD *result, int a2, int a3)
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

uint64_t sub_100019CE0(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = a2 != 0;

  v2(v3);
}

uint64_t sub_100019D38(uint64_t a1)
{
  v2 = sub_1000033A8(qword_1001D42D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = aBlock - v7;
  v9 = *(v3 + 16);
  v9(aBlock - v7, a1, v2);
  v9(v6, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v8, v2);
  v12 = MKBGetDeviceLockState();
  if (v12 != 3 && v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_10001A028;
    *(v13 + 24) = v11;
    aBlock[4] = sub_10001A104;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019CE0;
    aBlock[3] = &unk_1001BFC28;
    v14 = _Block_copy(aBlock);

    SBSRequestPasscodeUnlockUI();
    _Block_release(v14);
  }

  else
  {
    LOBYTE(aBlock[0]) = 1;
    CheckedContinuation.resume(returning:)();
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100019F94()
{
  v1 = sub_1000033A8(qword_1001D42D8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10001A028()
{
  sub_1000033A8(qword_1001D42D8);
  sub_1000033A8(qword_1001D42D8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10001A0CC()
{

  return swift_deallocObject();
}

uint64_t sub_10001A12C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t SendableTransfer.unwrapped<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[2] = *(*(a1 + 16) + 16);
  v3 = type metadata accessor for SendableTransfer();
  return sub_10001A390(sub_10001A370, v6, &type metadata for Never, v3, v4, a2);
}

uint64_t sub_10001A288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  return (*(v5 + 32))(a3, v7, a2);
}

uint64_t sub_10001A390@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = __chkstk_darwin(a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

Swift::Int SendableTransfer<A>.hashValue.getter()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10001A6F4()
{
  Hasher.init(_seed:)();
  SendableTransfer<A>.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001A798()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001A808(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_10001A948(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

id sub_10001AC8C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_10001ACE8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10001AD44(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_name = &stru_1001CFFF8.name;
  v7 = [a1 role];
  static Log.ui.getter();
  v8 = v7;
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v42 = v2;
    v13 = v12;
    v44 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v8;
    v16 = sub_1000E0FE0(v14, v15, &v44);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = [v9 persistentIdentifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_1000E0FE0(v18, v20, &v44);

    *(v13 + 14) = v21;
    v8 = v43;
    _os_log_impl(&_mh_execute_header, v10, v11, "Connecting new scene session. role=%s; id=%s", v13, 0x16u);
    swift_arrayDestroy();
    p_name = (&stru_1001CFFF8 + 8);

    (*(v3 + 8))(v5, v42);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v22 = [v9 p_name[109]];
  v23 = objc_allocWithZone(UISceneConfiguration);
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 initWithName:v24 sessionRole:v22];

  v26 = [objc_opt_self() processInfo];
  v27 = [v26 environment];

  v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v28 + 16) && (v29 = sub_100095C20(0xD000000000000017, 0x800000010016B590), (v30 & 1) != 0))
  {
    v31 = (*(v28 + 56) + 16 * v29);
    v33 = *v31;
    v32 = v31[1];

    if (v33 == 1702195828 && v32 == 0xE400000000000000)
    {

LABEL_16:
      type metadata accessor for SceneDelegate();
      goto LABEL_17;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {

    goto LABEL_16;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
    goto LABEL_16;
  }

  type metadata accessor for EmptySceneDelegate();
LABEL_17:
  [v25 setDelegateClass:swift_getObjCClassFromMetadata()];

  return v25;
}

void sub_10001B1CC()
{
  sub_10001B504();
  if (v0 <= 0x3F)
  {
    sub_10001B55C();
    if (v1 <= 0x3F)
    {
      sub_10001B5AC();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AnnotationViewConfiguration();
        if (v3 <= 0x3F)
        {
          sub_10001B610();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10001B2B4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000033A8(qword_1001D4410);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[11];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for AnnotationViewConfiguration();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[12];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[14]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_10001B3DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000033A8(qword_1001D4410);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[11];
  }

  else
  {
    result = type metadata accessor for AnnotationViewConfiguration();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[14]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[12];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_10001B504()
{
  if (!qword_1001D4498)
  {
    type metadata accessor for CameraController();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1001D4498);
    }
  }
}

void sub_10001B55C()
{
  if (!qword_1001D44A0)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1001D44A0);
    }
  }
}

void sub_10001B5AC()
{
  if (!qword_1001D44A8)
  {
    sub_10001276C(&qword_1001D44B0);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1001D44A8);
    }
  }
}

unint64_t sub_10001B610()
{
  result = qword_1001D44B8;
  if (!qword_1001D44B8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1001D44B8);
  }

  return result;
}

uint64_t sub_10001B6A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v35 = type metadata accessor for BundleSelector.Configuration();
  v32 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v4 - 8);
  v38 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CameraSourceFrameMetadata();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActionPredictor.Output();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000033A8(&qword_1001D44D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  swift_getKeyPath();
  v16 = OBJC_IVAR____TtC6Tamale16CameraController___observationRegistrar;
  v40 = v2;
  v36 = sub_100020B0C(&qword_1001D44C0, type metadata accessor for CameraController);
  v37 = v16;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = OBJC_IVAR____TtC6Tamale16CameraController__latestActionPredictorOutput;
  swift_beginAccess();
  sub_1000138BC(v2 + v17, v15, &qword_1001D44D0);
  if ((*(v10 + 48))(v15, 1, v9))
  {
    sub_10001370C(v15, &qword_1001D44D0);
    v18 = v35;
    v20 = v32;
    v19 = v33;
  }

  else
  {
    (*(v10 + 16))(v12, v15, v9);
    sub_10001370C(v15, &qword_1001D44D0);
    ActionPredictor.Output.latestFrameMetadata.getter();
    (*(v10 + 8))(v12, v9);
    v21 = CameraSourceFrameMetadata.isHighResolutionStill.getter();
    (*(v30 + 8))(v8, v31);
    v18 = v35;
    v20 = v32;
    v19 = v33;
    if (v21)
    {
      swift_getKeyPath();
      v39 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v22 = OBJC_IVAR____TtC6Tamale16CameraController__configuration;
      swift_beginAccess();
      v23 = v38;
      sub_10001FFF8(v2 + v22, v38);
      SaliencyStreamConfiguration.bundleSelectorConfiguration.getter();
      sub_10002005C(v23);
      v24 = BundleSelector.Configuration.forceAllFramesAreStreaming.getter();
      v25 = *(v20 + 8);
      v25(v19, v18);
      if ((v24 & 1) == 0)
      {
        swift_getKeyPath();
        v39 = v2;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v29 = v38;
        sub_10001FFF8(v2 + v22, v38);
        SaliencyStreamConfiguration.bundleSelectorConfiguration.getter();
        sub_10002005C(v29);
        BundleSelector.Configuration.stillRankingAlgorithm.getter();
        return (v25)(v19, v18);
      }
    }
  }

  swift_getKeyPath();
  v39 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = OBJC_IVAR____TtC6Tamale16CameraController__configuration;
  swift_beginAccess();
  v27 = v38;
  sub_10001FFF8(v2 + v26, v38);
  SaliencyStreamConfiguration.bundleSelectorConfiguration.getter();
  sub_10002005C(v27);
  BundleSelector.Configuration.streamingRankingAlgorithm.getter();
  return (*(v20 + 8))(v19, v18);
}

uint64_t sub_10001BC00()
{
  v1 = v0;
  v2 = type metadata accessor for BundleManager.Configuration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = v0;
  sub_100020B0C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC6Tamale16CameraController__configuration;
  swift_beginAccess();
  sub_10001FFF8(v1 + v9, v8);
  SaliencyStreamConfiguration.bundleManagerConfiguration.getter();
  sub_10002005C(v8);
  v10 = BundleManager.Configuration.classificationTypesEnabled.getter();
  (*(v3 + 8))(v5, v2);
  return v10;
}

double sub_10001BDCC()
{
  v1 = v0;
  v2 = type metadata accessor for BundleSelector.Configuration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = v0;
  sub_100020B0C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC6Tamale16CameraController__configuration;
  swift_beginAccess();
  sub_10001FFF8(v1 + v9, v8);
  SaliencyStreamConfiguration.bundleSelectorConfiguration.getter();
  sub_10002005C(v8);
  BundleSelector.Configuration.pinPresentableUIArea.getter();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  return v11;
}

uint64_t sub_10001BFC0()
{
  v1 = v0;
  v2 = type metadata accessor for BundleSelector.Configuration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12 = v0;
  sub_100020B0C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC6Tamale16CameraController__configuration;
  swift_beginAccess();
  sub_10001FFF8(v1 + v9, v8);
  SaliencyStreamConfiguration.bundleSelectorConfiguration.getter();
  sub_10002005C(v8);
  BundleSelector.Configuration.streamingRankingAlgorithm.getter();
  return (*(v3 + 8))(v5, v2);
}

double sub_10001C228(uint64_t a1, uint64_t a2, double (*a3)(uint64_t))
{
  v4 = type metadata accessor for BundleRankerConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BundleSelector.Configuration.RankingAlgorithmPreset();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B6A4(v11);
  BundleSelector.Configuration.RankingAlgorithmPreset.configuration.getter();
  v12 = (*(v9 + 8))(v11, v8);
  v13 = a3(v12);
  (*(v5 + 8))(v7, v4);
  return v13;
}

uint64_t sub_10001C4BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_100020B0C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC6Tamale16CameraController__selectedSubject;
  swift_beginAccess();
  return sub_1000138BC(v3 + v4, a1, &qword_1001D44C8);
}

uint64_t sub_10001C594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v32 = a2;
  v28 = type metadata accessor for AnnotationViewConfiguration();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EntryPoint();
  __chkstk_darwin(v4 - 8);
  v30 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SaliencyStreamConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EnvironmentValues();
  v25 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v2;
  v29 = v2;
  v17 = *(v2 + 8);

  v18 = v16;
  if ((v17 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v25 + 8))(v15, v13);
    v18 = v33;
  }

  v24 = v13;
  swift_getKeyPath();
  v33 = v18;
  sub_100020B0C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = OBJC_IVAR____TtC6Tamale16CameraController__configuration;
  swift_beginAccess();
  sub_10001FFF8(v18 + v20, v12);

  (*(v7 + 16))(v9, v12, v6);
  sub_10002005C(v12);
  SaliencyStreamConfiguration.entryPoint.getter();
  (*(v7 + 8))(v9, v6);
  (*(v26 + 16))(v31, v29 + *(v27 + 48), v28);

  if ((v17 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v25 + 8))(v15, v24);
    v16 = v33;
  }

  v34 = type metadata accessor for CameraController();
  v35 = sub_100020B0C(&qword_1001D4528, type metadata accessor for CameraController);
  v33 = v16;
  return VIUIAnnotationCanvas.init(entryPoint:configuration:renderable:)();
}

uint64_t sub_10001CA70@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = type metadata accessor for EntryPoint();
  __chkstk_darwin(v2 - 8);
  v50 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SaliencyStreamConfiguration();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v6 - 8);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SelectedSubjectReticuleView();
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000033A8(&qword_1001D4530);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CVBundle();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v44 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v51 = &v42 - v21;
  v22 = *v1;
  v23 = *(v1 + 8);

  v24 = v22;
  if ((v23 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
    v24 = v55;
  }

  v42 = v14;
  v43 = v13;
  v55 = v24;
  type metadata accessor for CameraController();
  sub_100020B0C(&qword_1001D4528, type metadata accessor for CameraController);
  VIUIAnnotationCanvasRenderable.selectedSubjectBundle.getter();
  if ((*(v18 + 48))(v12, 1, v17) == 1)
  {
    sub_10001370C(v12, &qword_1001D4530);

    v26 = 1;
    v28 = v53;
    v27 = v54;
    v29 = v52;
  }

  else
  {
    (*(v18 + 32))(v51, v12, v17);

    v30 = v22;
    if ((v23 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v31 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v42 + 8))(v16, v43);
      v30 = v55;
    }

    v56 = v30;
    VIUIAnnotationCanvasRenderable.contentsRect.getter();

    if ((v23 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v32 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v42 + 8))(v16, v43);
      v22 = v55;
    }

    swift_getKeyPath();
    v55 = v22;
    sub_100020B0C(&qword_1001D44C0, type metadata accessor for CameraController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = OBJC_IVAR____TtC6Tamale16CameraController__configuration;
    swift_beginAccess();
    v34 = v45;
    sub_10001FFF8(v22 + v33, v45);

    v35 = v47;
    v36 = v48;
    v37 = v49;
    (*(v48 + 16))(v47, v34, v49);
    sub_10002005C(v34);
    SaliencyStreamConfiguration.entryPoint.getter();
    (*(v36 + 8))(v35, v37);
    v38 = v51;
    (*(v18 + 16))(v44, v51, v17);
    v39 = v46;
    SelectedSubjectReticuleView.init(contentsRect:entryPoint:selectedSubjectBundle:)();
    (*(v18 + 8))(v38, v17);
    v29 = v52;
    v27 = v54;
    v40 = v39;
    v28 = v53;
    (*(v52 + 32))(v54, v40, v53);
    v26 = 0;
  }

  return (*(v29 + 56))(v27, v26, 1, v28);
}

uint64_t sub_10001D208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001276C(&qword_1001D44D8);
  v28 = *(a1 + 16);
  v29 = v7;
  sub_10001276C(&qword_1001D44E0);
  sub_10001276C(&qword_1001D44E8);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v30 = type metadata accessor for ZStack();
  WitnessTable = swift_getWitnessTable();
  v32 = type metadata accessor for _OverlayModifier();
  v8 = type metadata accessor for ModifiedContent();
  v33 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = *(a1 + 52);
  v26 = v2;
  v27 = *(v2 + v14);
  (*(v4 + 16))(v6, v2, a1);
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  v17 = *(a1 + 24);
  v18 = v28;
  *(v16 + 16) = v28;
  *(v16 + 24) = v17;
  (*(v4 + 32))(v16 + v15, v6, a1);
  type metadata accessor for CameraController();
  sub_100020B0C(&qword_1001D44C0, type metadata accessor for CameraController);
  v40 = Environment.init<A>(_:)();
  v41 = v19 & 1;
  v42 = sub_100020130;
  v43 = v16;
  v44 = v27;
  v35 = v18;
  v36 = v17;
  v37 = v26;
  static Alignment.center.getter();
  v20 = sub_100013608(&qword_1001D44F0, &qword_1001D44D8);
  View.overlay<A>(alignment:content:)();

  v21 = swift_getWitnessTable();
  v38 = v20;
  v39 = v21;
  v22 = swift_getWitnessTable();
  sub_100071210(v11, v8, v22);
  v23 = *(v33 + 8);
  v23(v11, v8);
  sub_100071210(v13, v8, v22);
  return (v23)(v13, v8);
}

uint64_t sub_10001D670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a1;
  v90 = a4;
  v89 = sub_1000033A8(&qword_1001D4538);
  __chkstk_darwin(v89);
  v7 = v68 - v6;
  v8 = a2;
  v9 = a3;
  v78 = type metadata accessor for AnnotatedVideoView();
  v75 = *(v78 - 8);
  v10 = *(v75 + 64);
  __chkstk_darwin(v78);
  v12 = v68 - v11;
  v84 = sub_1000033A8(&qword_1001D4540);
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = v68 - v13;
  v79 = sub_1000033A8(&qword_1001D4548);
  __chkstk_darwin(v79);
  v85 = v68 - v14;
  v83 = sub_1000033A8(&qword_1001D4550);
  __chkstk_darwin(v83);
  v16 = v68 - v15;
  v81 = sub_1000033A8(&qword_1001D4558);
  __chkstk_darwin(v81);
  v87 = v68 - v17;
  v18 = sub_1000033A8(&qword_1001D4560);
  v19 = __chkstk_darwin(v18);
  v86 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = v68 - v21;
  if (static SystemVariantSupport.isInternalBuild.getter())
  {
    v74 = v18;
    v23 = static Alignment.center.getter();
    v69 = v24;
    v70 = v23;
    v25 = v88;
    v76 = v9;
    v77 = v8;
    sub_10001E004(v88, v122);
    v104 = v122[12];
    v105[0] = v122[13];
    *(v105 + 9) = *(&v122[13] + 9);
    v100 = v122[8];
    v101 = v122[9];
    v102 = v122[10];
    v103 = v122[11];
    v96 = v122[4];
    v97 = v122[5];
    v98 = v122[6];
    v99 = v122[7];
    v92 = v122[0];
    v93 = v122[1];
    v94 = v122[2];
    v95 = v122[3];
    v106[12] = v122[12];
    v107[0] = v122[13];
    *(v107 + 9) = *(&v122[13] + 9);
    v106[8] = v122[8];
    v106[9] = v122[9];
    v106[10] = v122[10];
    v106[11] = v122[11];
    v106[4] = v122[4];
    v106[5] = v122[5];
    v106[6] = v122[6];
    v106[7] = v122[7];
    v106[0] = v122[0];
    v106[1] = v122[1];
    v106[2] = v122[2];
    v106[3] = v122[3];
    v71 = v16;
    sub_1000138BC(&v92, v91, &qword_1001D45C8);
    sub_10001370C(v106, &qword_1001D45C8);
    v120 = v104;
    v121[0] = v105[0];
    *(v121 + 9) = *(v105 + 9);
    v116 = v100;
    v117 = v101;
    v119 = v103;
    v118 = v102;
    v113 = v97;
    v115 = v99;
    v114 = v98;
    v108 = v92;
    v109 = v93;
    v111 = v95;
    v112 = v96;
    v110 = v94;
    v73 = v22;
    v26 = v75;
    v68[1] = v10;
    v27 = *(v75 + 16);
    v28 = v25;
    v29 = v78;
    v27(v12, v28, v78);
    v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v31 = swift_allocObject();
    v32 = v76;
    *(v31 + 16) = v77;
    *(v31 + 24) = v32;
    v72 = v7;
    v33 = *(v26 + 32);
    v33(v31 + v30, v12, v29);
    *&v91[0] = v70;
    *(&v91[0] + 1) = v69;
    v91[13] = v120;
    v91[14] = v121[0];
    *(&v91[14] + 9) = *(v121 + 9);
    v91[9] = v116;
    v91[10] = v117;
    v91[11] = v118;
    v91[12] = v119;
    v91[5] = v112;
    v91[6] = v113;
    v91[7] = v114;
    v91[8] = v115;
    v91[1] = v108;
    v91[2] = v109;
    v91[3] = v110;
    v91[4] = v111;
    *&v91[16] = sub_100020804;
    *(&v91[16] + 1) = v31;
    v91[17] = 0uLL;
    v27(v12, v88, v29);
    v34 = swift_allocObject();
    v35 = v76;
    *(v34 + 16) = v77;
    *(v34 + 24) = v35;
    v33(v34 + v30, v12, v29);
    sub_1000033A8(&qword_1001D4590);
    sub_1000206C8();
    v36 = v80;
    View.onSceneStateChange(_:)();

    memcpy(v122, v91, 0x120uLL);
    sub_10001370C(v122, &qword_1001D4590);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v37 = v85;
    (*(v82 + 32))(v85, v36, v84);
    v38 = (v37 + *(v79 + 36));
    v39 = v91[5];
    v38[4] = v91[4];
    v38[5] = v39;
    v38[6] = v91[6];
    v40 = v91[1];
    *v38 = v91[0];
    v38[1] = v40;
    v41 = v91[3];
    v38[2] = v91[2];
    v38[3] = v41;
    LOBYTE(v29) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = v71;
    sub_10002091C(v37, v71, &qword_1001D4548);
    v51 = v50 + *(v83 + 36);
    *v51 = v29;
    *(v51 + 8) = v43;
    *(v51 + 16) = v45;
    *(v51 + 24) = v47;
    *(v51 + 32) = v49;
    *(v51 + 40) = 0;
    v52 = v87;
    v53 = &v87[*(v81 + 36)];
    v54 = *(sub_1000033A8(&qword_1001D45B8) + 28);
    v55 = enum case for ColorScheme.dark(_:);
    v56 = type metadata accessor for ColorScheme();
    (*(*(v56 - 8) + 104))(v53 + v54, v55, v56);
    *v53 = swift_getKeyPath();
    sub_10002091C(v50, v52, &qword_1001D4550);
    v57 = static SafeAreaRegions.all.getter();
    LOBYTE(v53) = static Edge.Set.all.getter();
    v58 = v52;
    v59 = v86;
    sub_10002091C(v58, v86, &qword_1001D4558);
    v60 = v59 + *(v74 + 36);
    *v60 = v57;
    *(v60 + 8) = v53;
    v61 = v59;
    v62 = v73;
    sub_10002091C(v61, v73, &qword_1001D4560);
    sub_100020984(v62, v72);
    swift_storeEnumTagMultiPayload();
    sub_1000033A8(&qword_1001D4568);
    sub_100020430();
    sub_100020780();
    _ConditionalContent<>.init(storage:)();
    return sub_1000209F4(v62);
  }

  else
  {
    v64 = [objc_opt_self() blackColor];
    v65 = Color.init(_:)();
    v66 = static SafeAreaRegions.all.getter();
    v67 = static Edge.Set.all.getter();
    *v7 = v65;
    *(v7 + 1) = v66;
    v7[16] = v67;
    swift_storeEnumTagMultiPayload();
    sub_1000033A8(&qword_1001D4568);
    sub_100020430();
    sub_100020780();
    return _ConditionalContent<>.init(storage:)();
  }
}

double sub_10001E004@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v31 = 0;
  sub_10001E310(&v19);
  v40 = v27;
  v41 = v28;
  v42[0] = v29[0];
  *(v42 + 9) = *(v29 + 9);
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v43[8] = v27;
  v43[9] = v28;
  v44[0] = v29[0];
  *(v44 + 9) = *(v29 + 9);
  v43[4] = v23;
  v43[5] = v24;
  v43[6] = v25;
  v43[7] = v26;
  v43[0] = v19;
  v43[1] = v20;
  v43[2] = v21;
  v43[3] = v22;
  sub_1000138BC(&v32, &v18, &qword_1001D45D0);
  sub_10001370C(v43, &qword_1001D45D0);
  *(&v30[8] + 7) = v40;
  *(&v30[9] + 7) = v41;
  *(&v30[10] + 7) = v42[0];
  v30[11] = *(v42 + 9);
  *(&v30[4] + 7) = v36;
  *(&v30[5] + 7) = v37;
  *(&v30[6] + 7) = v38;
  *(&v30[7] + 7) = v39;
  *(v30 + 7) = v32;
  *(&v30[1] + 7) = v33;
  *(&v30[2] + 7) = v34;
  *(&v30[3] + 7) = v35;
  v5 = v31;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  LOBYTE(v19) = v6;
  *(&v19 + 1) = v7;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.getter();
  if (v18)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  LOBYTE(v19) = v6;
  *(&v19 + 1) = v7;
  State.wrappedValue.getter();
  v9 = static Animation.linear(duration:)();
  LOBYTE(v19) = v6;
  *(&v19 + 1) = v7;
  State.wrappedValue.getter();
  v10 = v30[9];
  *(a2 + 145) = v30[8];
  *(a2 + 161) = v10;
  v11 = v30[11];
  *(a2 + 177) = v30[10];
  *(a2 + 193) = v11;
  v12 = v30[5];
  *(a2 + 81) = v30[4];
  *(a2 + 97) = v12;
  v13 = v30[7];
  *(a2 + 113) = v30[6];
  *(a2 + 129) = v13;
  v14 = v30[1];
  *(a2 + 17) = v30[0];
  *(a2 + 33) = v14;
  result = *&v30[2];
  v16 = v30[3];
  *(a2 + 49) = v30[2];
  v17 = v18;
  *a2 = v4;
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = v5;
  *(a2 + 65) = v16;
  *(a2 + 216) = v8;
  *(a2 + 224) = v9;
  *(a2 + 232) = v17;
  return result;
}

uint64_t sub_10001E310@<X0>(uint64_t a1@<X8>)
{
  static Font.headline.getter();
  v2 = Text.font(_:)();
  v4 = v3;
  v6 = v5;

  static HierarchicalShapeStyle.primary.getter();
  v44 = Text.foregroundStyle<A>(_:)();
  v45 = v7;
  v42 = v8;
  v46 = v9;
  sub_100020D44(v2, v4, v6 & 1);

  KeyPath = swift_getKeyPath();
  static Font.subheadline.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  static HierarchicalShapeStyle.secondary.getter();
  v15 = Text.foregroundStyle<A>(_:)();
  v40 = v16;
  v41 = v15;
  v39 = v17;
  v19 = v18;
  sub_100020D44(v10, v12, v14 & 1);

  v38 = swift_getKeyPath();
  static Font.subheadline.getter();
  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;

  static HierarchicalShapeStyle.secondary.getter();
  v25 = Text.foregroundStyle<A>(_:)();
  v27 = v26;
  LOBYTE(v10) = v28;
  v30 = v29;
  sub_100020D44(v20, v22, v24 & 1);

  v31 = swift_getKeyPath();
  v32 = static Edge.Set.top.getter();
  v51 = v42 & 1;
  v50 = v42 & 1;
  v19 &= 1u;
  v49 = v19;
  *&v55 = v25;
  *(&v55 + 1) = v27;
  LOBYTE(v56) = v10 & 1;
  DWORD1(v56) = *(v54 + 3);
  *(&v56 + 1) = v54[0];
  *(&v56 + 1) = v30;
  *&v57 = v31;
  BYTE8(v57) = 1;
  HIDWORD(v57) = *&v53[3];
  *(&v57 + 9) = *v53;
  v58[0] = v32;
  *&v58[4] = *&v52[3];
  *&v58[1] = *v52;
  memset(&v58[8], 0, 32);
  v58[40] = 1;
  *&v48[23] = v56;
  *&v48[7] = v55;
  *&v48[80] = *&v58[25];
  *&v48[71] = *&v58[16];
  *&v48[55] = *v58;
  *&v48[39] = v57;
  *a1 = v44;
  *(a1 + 8) = v45;
  *(a1 + 16) = v42 & 1;
  *(a1 + 24) = v46;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = v41;
  *(a1 + 56) = v39;
  *(a1 + 64) = v19;
  *(a1 + 72) = v40;
  *(a1 + 80) = v38;
  *(a1 + 88) = 1;
  v33 = *v48;
  *(a1 + 105) = *&v48[16];
  *(a1 + 89) = v33;
  v34 = *&v48[32];
  v35 = *&v48[48];
  v36 = *&v48[64];
  *(a1 + 169) = *&v48[80];
  *(a1 + 153) = v36;
  *(a1 + 137) = v35;
  *(a1 + 121) = v34;
  v59[0] = v25;
  v59[1] = v27;
  v60 = v10 & 1;
  *&v61[3] = *(v54 + 3);
  *v61 = v54[0];
  v62 = v30;
  v63 = v31;
  v64 = 1;
  *&v65[3] = *&v53[3];
  *v65 = *v53;
  v66 = v32;
  *&v67[3] = *&v52[3];
  *v67 = *v52;
  v69 = 0u;
  v68 = 0u;
  v70 = 1;
  sub_100020D5C(v44, v45, v42 & 1);

  sub_100020D5C(v41, v39, v19);

  sub_1000138BC(&v55, v47, &qword_1001D45D8);
  sub_10001370C(v59, &qword_1001D45D8);
  sub_100020D44(v41, v39, v19);

  sub_100020D44(v44, v45, v51);
}

uint64_t sub_10001E788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v36 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AnnotatedVideoView();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for DispatchTime();
  v33 = v11;
  v29 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v17 = *(a1 + 40);
  LOBYTE(aBlock) = *(a1 + 32);
  v42 = v17;
  LOBYTE(v40) = 1;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.setter();
  v18 = *(a1 + 24);
  LOBYTE(aBlock) = *(a1 + 16);
  v42 = v18;
  LOBYTE(v40) = 0;
  State.wrappedValue.setter();
  sub_100014FBC();
  v30 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v29 + 8);
  v19(v14, v11);
  (*(v8 + 16))(v10, a1, v7);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  v22 = v32;
  *(v21 + 16) = v31;
  *(v21 + 24) = v22;
  (*(v8 + 32))(v21 + v20, v10, v7);
  v45 = sub_100020D2C;
  v46 = v21;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_1000B5F04;
  v44 = &unk_1001BFDF0;
  v23 = _Block_copy(&aBlock);
  v24 = v34;
  static DispatchQoS.unspecified.getter();
  v40 = &_swiftEmptyArrayStorage;
  sub_100020B0C(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  v26 = v35;
  v25 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = v30;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);

  (*(v39 + 8))(v26, v25);
  (*(v37 + 8))(v24, v38);
  v19(v16, v33);
}

uint64_t sub_10001EC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v44 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a3;
  v39 = a4;
  v11 = type metadata accessor for AnnotatedVideoView();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v48 = type metadata accessor for DispatchTime();
  v41 = *(v48 - 8);
  v15 = __chkstk_darwin(v48);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v40 = &v37 - v18;
  v19 = type metadata accessor for SceneState();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v22, a1, v19);
  result = (*(v20 + 88))(v22, v19);
  if (result == enum case for SceneState.didEnterBackground(_:))
  {
    v24 = *(a2 + 40);
    LOBYTE(aBlock) = *(a2 + 32);
    v51 = v24;
    LOBYTE(v49) = 0;
    sub_1000033A8(&qword_1001D3E88);
    State.wrappedValue.setter();
    v25 = *(a2 + 24);
    LOBYTE(aBlock) = *(a2 + 16);
    v51 = v25;
    LOBYTE(v49) = 0;
    return State.wrappedValue.setter();
  }

  else if (result != enum case for SceneState.didBecomeActive(_:))
  {
    if (result == enum case for SceneState.willEnterForeground(_:))
    {
      v26 = *(a2 + 40);
      LOBYTE(aBlock) = *(a2 + 32);
      v51 = v26;
      LOBYTE(v49) = 1;
      sub_1000033A8(&qword_1001D3E88);
      State.wrappedValue.setter();
      v27 = *(a2 + 24);
      LOBYTE(aBlock) = *(a2 + 16);
      v51 = v27;
      LOBYTE(v49) = 0;
      State.wrappedValue.setter();
      sub_100014FBC();
      v37 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v28 = v40;
      + infix(_:_:)();
      v41 = *(v41 + 8);
      (v41)(v17, v48);
      (*(v12 + 16))(v14, a2, v11);
      v29 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v30 = swift_allocObject();
      v31 = v39;
      *(v30 + 16) = v38;
      *(v30 + 24) = v31;
      (*(v12 + 32))(v30 + v29, v14, v11);
      v54 = sub_100020A5C;
      v55 = v30;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_1000B5F04;
      v53 = &unk_1001BFDA0;
      v32 = _Block_copy(&aBlock);
      v33 = v42;
      static DispatchQoS.unspecified.getter();
      v49 = &_swiftEmptyArrayStorage;
      sub_100020B0C(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000033A8(&unk_1001D8010);
      sub_100013608(&qword_1001D6B20, &unk_1001D8010);
      v34 = v44;
      v35 = v47;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v36 = v37;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v32);

      (*(v46 + 8))(v34, v35);
      (*(v43 + 8))(v33, v45);
      (v41)(v28, v48);
    }

    else
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10001F310()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10001F374()
{
  sub_1000033A8(&qword_1001D3E88);
  result = State.wrappedValue.getter();
  if (v1 == 1)
  {
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10001F414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10001276C(&qword_1001D44E0);
  sub_10001276C(&qword_1001D44E8);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for ZStack();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v16[-v11];
  v17 = a2;
  v18 = a3;
  v19 = a1;
  static Alignment.center.getter();
  ZStack.init(alignment:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_100071210(v10, v6, WitnessTable);
  v14 = *(v7 + 8);
  v14(v10, v6);
  sub_100071210(v12, v6, WitnessTable);
  return (v14)(v12, v6);
}

uint64_t sub_10001F628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a4;
  v7 = sub_1000033A8(&qword_1001D44F8);
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v41 = &v40 - v8;
  v51 = sub_1000033A8(&qword_1001D44E8);
  v9 = __chkstk_darwin(v51);
  v52 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v55 = &v40 - v11;
  v43 = type metadata accessor for VIUIAnnotationCanvas();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000033A8(&qword_1001D44E0);
  v13 = __chkstk_darwin(v46);
  v48 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v40 - v16;
  v18 = *(a2 - 8);
  v19 = __chkstk_darwin(v15);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v40 - v22;
  v24 = type metadata accessor for AnnotatedVideoView();
  (*(a1 + *(v24 + 56)))();
  v45 = v23;
  v53 = a3;
  sub_100071210(v21, a2, a3);
  v25 = *(v18 + 8);
  v47 = a2;
  v44 = v25;
  v25(v21, a2);
  if (AnnotationViewConfiguration.wantsAnnotationCanvas.getter())
  {
    v26 = v40;
    sub_10001C594(v24, v40);
    v27 = v42;
    (*(v42 + 32))(v17, v26, v43);
    v28 = v17;
    v29 = v27;
  }

  else
  {
    v28 = v17;
    v29 = v42;
  }

  v30 = 1;
  v31 = v28;
  (*(v29 + 56))();
  if (AnnotationViewConfiguration.showSelectedSubjectReticule.getter())
  {
    v32 = v41;
    sub_10001CA70(v41);
    sub_1000203C0(v32, v55);
    v30 = 0;
  }

  v33 = v55;
  (*(v49 + 56))(v55, v30, 1, v50);
  v34 = v45;
  v35 = v47;
  (*(v18 + 16))(v21, v45, v47);
  v60[0] = v21;
  v36 = v48;
  sub_1000138BC(v31, v48, &qword_1001D44E0);
  v60[1] = v36;
  v37 = v52;
  sub_1000138BC(v33, v52, &qword_1001D44E8);
  v60[2] = v37;
  v59[0] = v35;
  v59[1] = v46;
  v59[2] = v51;
  v56 = v53;
  v57 = sub_1000201D4();
  v58 = sub_100020288();
  sub_10006A7BC(v60, 3uLL, v59);
  sub_10001370C(v33, &qword_1001D44E8);
  sub_10001370C(v31, &qword_1001D44E0);
  v38 = v44;
  v44(v34, v35);
  sub_10001370C(v37, &qword_1001D44E8);
  sub_10001370C(v36, &qword_1001D44E0);
  return v38(v21, v35);
}

uint64_t sub_10001FC00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100020B0C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC6Tamale16CameraController__configuration;
  swift_beginAccess();
  return sub_10001FFF8(v3 + v4, a2);
}

uint64_t sub_10001FCC8(uint64_t a1)
{
  v2 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001FFF8(a1, v4);
  return sub_100149484(v4);
}

uint64_t sub_10001FD78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_100020B0C(&qword_1001D44C0, type metadata accessor for CameraController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *a2;
  swift_beginAccess();
  return sub_1000138BC(v7 + v8, a4, a3);
}

uint64_t sub_10001FF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = sub_1000033A8(a5);
  __chkstk_darwin(v10 - 8);
  v12 = &v14 - v11;
  sub_1000138BC(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t sub_10001FFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraControllerConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002005C(uint64_t a1)
{
  v2 = type metadata accessor for CameraControllerConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100020130@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for AnnotatedVideoView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_10001D670(v6, v3, v4, a1);
}

unint64_t sub_1000201D4()
{
  result = qword_1001D4500;
  if (!qword_1001D4500)
  {
    sub_10001276C(&qword_1001D44E0);
    sub_100020B0C(&qword_1001D4508, &type metadata accessor for VIUIAnnotationCanvas);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4500);
  }

  return result;
}

unint64_t sub_100020288()
{
  result = qword_1001D4510;
  if (!qword_1001D4510)
  {
    sub_10001276C(&qword_1001D44E8);
    sub_10002030C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4510);
  }

  return result;
}

unint64_t sub_10002030C()
{
  result = qword_1001D4518;
  if (!qword_1001D4518)
  {
    sub_10001276C(&qword_1001D44F8);
    sub_100020B0C(&qword_1001D4520, &type metadata accessor for SelectedSubjectReticuleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4518);
  }

  return result;
}

uint64_t sub_1000203C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D44F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100020430()
{
  result = qword_1001D4570;
  if (!qword_1001D4570)
  {
    sub_10001276C(&qword_1001D4560);
    sub_1000204BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4570);
  }

  return result;
}

unint64_t sub_1000204BC()
{
  result = qword_1001D4578;
  if (!qword_1001D4578)
  {
    sub_10001276C(&qword_1001D4558);
    sub_100020574();
    sub_100013608(&qword_1001D45B0, &qword_1001D45B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4578);
  }

  return result;
}

unint64_t sub_100020574()
{
  result = qword_1001D4580;
  if (!qword_1001D4580)
  {
    sub_10001276C(&qword_1001D4550);
    sub_100020600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4580);
  }

  return result;
}

unint64_t sub_100020600()
{
  result = qword_1001D4588;
  if (!qword_1001D4588)
  {
    sub_10001276C(&qword_1001D4548);
    sub_10001276C(&qword_1001D4590);
    sub_1000206C8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4588);
  }

  return result;
}

unint64_t sub_1000206C8()
{
  result = qword_1001D4598;
  if (!qword_1001D4598)
  {
    sub_10001276C(&qword_1001D4590);
    sub_100013608(&qword_1001D45A0, &qword_1001D45A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4598);
  }

  return result;
}

unint64_t sub_100020780()
{
  result = qword_1001D45C0;
  if (!qword_1001D45C0)
  {
    sub_10001276C(&qword_1001D4568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D45C0);
  }

  return result;
}

uint64_t sub_100020804()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for AnnotatedVideoView() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10001E788(v4, v1, v2);
}

uint64_t sub_100020888(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for AnnotatedVideoView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_10001EC94(a1, v6, v3, v4);
}

uint64_t sub_10002091C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000033A8(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100020984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D4560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000209F4(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D4560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100020AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100020B0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100020B74()
{
  v1 = type metadata accessor for AnnotatedVideoView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 44);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  sub_1000033A8(qword_1001D4410);

  v6 = *(v1 + 48);
  v7 = type metadata accessor for AnnotationViewConfiguration();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_100020D44(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100020D5C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100020D6C()
{
  sub_10001276C(&qword_1001D44D8);
  sub_10001276C(&qword_1001D44E0);
  sub_10001276C(&qword_1001D44E8);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  sub_100013608(&qword_1001D44F0, &qword_1001D44D8);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for AppleDepthAllowableAspectRatio(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleDepthAllowableAspectRatio(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100021080()
{
  result = qword_1001D45E0;
  if (!qword_1001D45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D45E0);
  }

  return result;
}

id sub_1000210D4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6)
{
  CGAffineTransformMakeTranslation(&t1, -a1, -a2);
  tx = t1.tx;
  ty = t1.ty;
  v39 = *&t1.c;
  v40 = *&t1.a;
  Angle.radians.getter();
  CGAffineTransformMakeRotation(&t1, -v14);
  v15 = *&t1.a;
  v16 = *&t1.c;
  v17 = *&t1.tx;
  *&t1.a = v40;
  *&t1.c = v39;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v15;
  *&t2.c = v16;
  *&t2.tx = v17;
  CGAffineTransformConcat(&v41, &t1, &t2);
  a = v41.a;
  *&v40 = v41.b;
  d = v41.d;
  *&v39 = v41.c;
  v36 = v41.ty;
  v37 = v41.tx;
  t1 = v41;
  v44.origin.x = a1;
  v44.origin.y = a2;
  v44.size.width = a3;
  v44.size.height = a4;
  v45 = CGRectApplyAffineTransform(v44, &t1);
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  v23 = -CGRectGetMinX(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  MinY = CGRectGetMinY(v46);
  CGAffineTransformMakeTranslation(&t1, v23, -MinY);
  v25 = *&t1.tx;
  v32 = *&t1.c;
  v33 = *&t1.a;
  v26 = [objc_allocWithZone(CIImage) initWithCVPixelBuffer:v6];
  v27 = [v26 imageByCroppingToRect:{a1, a2, a3, a4}];

  t1.a = a;
  *&t1.b = v40;
  *&t1.c = v39;
  t1.d = d;
  t1.tx = v37;
  t1.ty = v36;
  *&t2.a = v33;
  *&t2.c = v32;
  *&t2.tx = v25;
  CGAffineTransformConcat(&v41, &t1, &t2);
  t1 = v41;
  v28 = [v27 imageByApplyingTransform:&t1];

  v29 = v28;
  v30 = sub_1000282F4(v28, a6);

  return v30;
}

uint64_t getEnumTagSinglePayload for StickerConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StickerConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_10002144C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000214B8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10002151C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7453656C62616E65 && a2 == 0xEE007372656B6369)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000215B8(uint64_t a1)
{
  v2 = sub_100021D58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000215F4(uint64_t a1)
{
  v2 = sub_100021D58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100021630@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for UserDefaultsUtility();
  UserDefaultsUtility.__allocating_init()();
  v2 = dispatch thunk of UserDefaultsUtility.enableStickers.getter();

  *a1 = v2 & 1;
  return result;
}

uint64_t sub_100021688@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100021BE4(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1000216B8(void *a1)
{
  v2 = sub_1000033A8(&qword_1001D4620);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100006AAC(a1, a1[3]);
  sub_100021D58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_10002180C()
{
  result = qword_1001D45E8;
  if (!qword_1001D45E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D45E8);
  }

  return result;
}

unint64_t sub_100021864()
{
  result = qword_1001D45F0;
  if (!qword_1001D45F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D45F0);
  }

  return result;
}

unint64_t sub_1000218BC()
{
  result = qword_1001D45F8;
  if (!qword_1001D45F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D45F8);
  }

  return result;
}

uint64_t sub_100021910(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v5 = HIBYTE(a3);
  v8 = a3 & 1;
  sub_1000033A8(&qword_1001D4608);
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = v8;
  *(v9 + 33) = v5 & 1;
  *(v9 + 40) = a4;

  return ConfigToggle.init(_:isOn:initialValue:onChange:)();
}

uint64_t sub_100021A7C@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  type metadata accessor for UserDefaultsUtility();
  result = UserDefaultsUtility.__allocating_init()();
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 17) = v7;
  *(a3 + 24) = result;
  return result;
}

uint64_t sub_100021AF4()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_100021910(*v0, *(v0 + 8), v1 | *(v0 + 16), *(v0 + 24));
}

unint64_t sub_100021B24()
{
  result = qword_1001D4600;
  if (!qword_1001D4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4600);
  }

  return result;
}

uint64_t sub_100021B78()
{

  return swift_deallocObject();
}

uint64_t sub_100021BE4(void *a1)
{
  v3 = sub_1000033A8(&qword_1001D4610);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  type metadata accessor for UserDefaultsUtility();
  UserDefaultsUtility.__allocating_init()();
  dispatch thunk of UserDefaultsUtility.enableStickers.getter();

  v7 = sub_100006AAC(a1, a1[3]);
  sub_100021D58();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100006B44(a1);
  return v7 & 1;
}