unint64_t sub_1001330CC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10013318C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t *NSUserDefaults.mobileiPod.unsafeMutableAddressor()
{
  if (qword_1005FFF70 != -1)
  {
    swift_once();
  }

  return &static NSUserDefaults.mobileiPod;
}

Swift::Bool __swiftcall NSUserDefaults.BOOL(forKey:withDefault:)(Swift::String forKey, Swift::Bool withDefault)
{
  v4 = forKey;
  sub_10000E7F4();

  NSUserDefaults.subscript.getter(&v4, &v5);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      return v4._countAndFlagsBits;
    }
  }

  else
  {
    sub_10011CF58(&v5);
  }

  return withDefault;
}

void sub_100133394()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_1004BBE24();
  v2 = [v0 initWithSuiteName:v1];

  static NSUserDefaults.mobileiPod = v2;
}

uint64_t static NSUserDefaults.mobileiPod.getter()
{
  if (qword_1005FFF70 != -1)
  {
    swift_once();
  }

  v0 = static NSUserDefaults.mobileiPod;
  v1 = static NSUserDefaults.mobileiPod;
  return v0;
}

BOOL NSUserDefaults.MobileiPod.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A5478;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  return v4 != 0;
}

Swift::Int sub_1001334E0()
{
  sub_1004BDBA4();
  sub_1004BBF84();
  return sub_1004BDBF4();
}

Swift::Int sub_100133554()
{
  sub_1004BDBA4();
  sub_1004BBF84();
  return sub_1004BDBF4();
}

void (*NSUserDefaults.hasUserRequestedSubscriptionHidden.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1000F2CF0();
  *(v4 + 48) = sub_10000E7F4();
  NSUserDefaults.subscript.getter(v4);
  if (!*(v4 + 24))
  {
    sub_10011CF58(v4);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = *(v4 + 57);
LABEL_9:
  *(v4 + 56) = v5;
  return sub_1001336B8;
}

uint64_t sub_1001336E4(void (*a1)(void))
{
  a1();
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(&v3);
  if (v4)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v2;
    }
  }

  else
  {
    sub_10011CF58(&v3);
    return 0;
  }

  return result;
}

unint64_t sub_10013377C()
{
  result = qword_100604458;
  if (!qword_100604458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604458);
  }

  return result;
}

uint64_t sub_1001337F0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v7 = &type metadata for Bool;
  v6[0] = a1;
  a2(a1);
  sub_10000E7F4();
  return NSUserDefaults.subscript.setter(v6, v4, a3);
}

void (*NSUserDefaults.hasSeenDownloadPinsAlert.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_10013377C();
  *(v4 + 48) = sub_10000E7F4();
  NSUserDefaults.subscript.getter(v4);
  if (!*(v4 + 24))
  {
    sub_10011CF58(v4);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = *(v4 + 57);
LABEL_9:
  *(v4 + 56) = v5;
  return sub_100133938;
}

void sub_100133944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  v6 = &type metadata for Bool;
  v5[0] = v4;
  NSUserDefaults.subscript.setter(v5, a2, a3);

  free(v3);
}

Swift::Int sub_1001339A4()
{
  sub_1004BDBA4();
  sub_1004BBF84();
  return sub_1004BDBF4();
}

Swift::Int sub_100133A18()
{
  sub_1004BDBA4();
  sub_1004BBF84();
  return sub_1004BDBF4();
}

uint64_t sub_100133A78@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v4 = a1[1];
  v8._object = v4;
  v6 = sub_1004BD764(a2, v8);

  *a3 = v6 != 0;
  return result;
}

id MPPlaybackUserDefaults.transitionStyleForCatalogPlayback.getter()
{
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[7] = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  sub_100051DEC(v10);
  return [v0 transitionStyleForUserWithCatalogPlaybackCapability:BYTE8(v10[0]) & 1];
}

unint64_t sub_100133BE0()
{
  result = qword_100604460;
  if (!qword_100604460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604460);
  }

  return result;
}

unint64_t sub_100133C60()
{
  result = qword_100604468;
  if (!qword_100604468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604468);
  }

  return result;
}

id static ICUserIdentity.active.getter()
{
  v0 = [swift_getObjCClassFromMetadata() activeAccount];

  return v0;
}

id static ICUserIdentityStore.activeAccountDSID.getter()
{
  v0 = [swift_getObjCClassFromMetadata() defaultIdentityStore];
  v1 = [objc_opt_self() activeAccount];
  v6 = 0;
  v2 = [v0 DSIDForUserIdentity:v1 outError:&v6];

  v3 = v6;
  if (!v2)
  {
    v4 = v3;
    sub_1004B69B4();

    swift_willThrow();

    return 0;
  }

  return v2;
}

uint64_t static ICMusicKitRequestContext.music.getter()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4[4] = sub_100134E98;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10011FE68;
  v4[3] = &unk_1005B22C0;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

id static ICURLSessionManager.musicSession.getter()
{
  v0 = [objc_opt_self() highPrioritySession];

  return v0;
}

double ICURLBag.subscript.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ([v2 valueForBagKey:a1])
  {
    sub_1004BD284();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t *ICClientInfo.music.unsafeMutableAddressor()
{
  if (qword_1005FFF78 != -1)
  {
    swift_once();
  }

  return &static ICClientInfo.music;
}

void sub_100133FE8(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = sub_1004BBE24();
    v6 = sub_1004BBE24();
    v7 = [objc_opt_self() clientInfoForMusicKitRequestWithClientIdentifier:v5 clientVersion:v6];

    [v3 setClientInfo:v7];
    v8 = objc_opt_self();
    v9 = v4;
    v10 = [v8 defaultIdentityStore];
    [v3 setIdentityStore:v10];

    v11 = [objc_opt_self() activeAccount];
    [v3 setIdentity:v11];
  }
}

uint64_t static ICStoreRequestContext.default(withConfigurationBlock:)(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100134EB4;
  *(v3 + 24) = v7;
  aBlock[4] = sub_100124268;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011FE68;
  aBlock[3] = &unk_1005B2310;
  v4 = _Block_copy(aBlock);

  v5 = [v2 initWithBlock:v4];
  _Block_release(v4);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if ((v4 & 1) == 0)
  {
    return v5;
  }

  __break(1u);
  return result;
}

void sub_1001342D8(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v8 = a1;
    v5 = [v4 defaultIdentityStore];
    [v3 setIdentityStore:v5];

    v6 = [objc_opt_self() activeAccount];
    [v3 setIdentity:v6];

    [v3 setAllowsExpiredBags:1];
    v7 = [objc_allocWithZone(ICURLResponseAuthenticationProvider) initWithUserInteractionLevel:1];
    [v3 setAuthenticationProvider:v7];

    if (qword_1005FFF80 != -1)
    {
      swift_once();
    }

    [v3 setClientInfo:static ICClientInfo.storeFlow];
  }
}

void sub_10013446C(void *a1, void (*a2)(void *))
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v9 = a1;
    v7 = [v6 defaultIdentityStore];
    [v5 setIdentityStore:v7];

    v8 = [objc_opt_self() activeAccount];
    [v5 setIdentity:v8];

    a2(v5);
  }
}

id static ICStoreRequestContext.current.getter()
{
  v0 = [objc_opt_self() activeAccount];
  v1 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v0];

  return v1;
}

uint64_t static ICStoreRequestContext.storeFlow.getter()
{
  v0 = objc_allocWithZone(ICStoreRequestContext);
  v4[4] = sub_100134E94;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10011FE68;
  v4[3] = &unk_1005B2338;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t *ICClientInfo.storeFlow.unsafeMutableAddressor()
{
  if (qword_1005FFF80 != -1)
  {
    swift_once();
  }

  return &static ICClientInfo.storeFlow;
}

id sub_100134730()
{
  result = [objc_allocWithZone(ICClientInfo) initWithSystemApplicationType:0];
  static ICClientInfo.music = result;
  return result;
}

void *sub_10013478C()
{
  result = sub_1001347AC();
  static ICClientInfo.storeFlow = result;
  return result;
}

void *sub_1001347AC()
{
  v0 = [objc_allocWithZone(ICClientInfo) initWithSystemApplicationType:0];
  [v0 mutableCopy];

  sub_1004BD284();
  swift_unknownObjectRelease();
  sub_10013506C();
  swift_dynamicCast();
  v1 = sub_1004BBE24();
  [v3 setBagProfileVersion:v1];

  return v3;
}

double ICURLBag.subscript.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_1004BBE24();
  v4 = [v1 valueForBagKey:v3];

  if (v4)
  {
    sub_1004BD284();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

_OWORD *ICURLBag.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v10 = sub_1004BD174();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = a1[2];
  if (!v15)
  {
    sub_100134ECC();
    swift_allocError();
    *v34 = 0u;
    *(v34 + 16) = 0u;
    *(v34 + 32) = 0;
    *(v34 + 40) = 2;
    return swift_willThrow();
  }

  v47 = v12;
  v16 = a1[4];

  v17 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = a1;
  if (!isUniquelyReferenced_nonNull_native || (v15 - 1) > a1[3] >> 1)
  {
    a1 = sub_100018288(isUniquelyReferenced_nonNull_native, v15, 1, a1);
    v53 = a1;
  }

  sub_100132614(0, 1, 0);
  if (![v6 valueForBagKey:v17])
  {

    sub_100134ECC();
    swift_allocError();
    *v35 = v17;
    *(v35 + 40) = 0;
    return swift_willThrow();
  }

  v42 = v11;
  v43 = a3;
  v45 = v14;
  v46 = a2;
  v44 = v5;
  sub_1004BD284();
  swift_unknownObjectRelease();
  sub_10003E13C(v51, v52);
  sub_100004DE4(v52, v51);
  v19 = a1[2];
  result = v17;
  v21 = result;
  v48 = result;
  if (v19)
  {
    v22 = 0;
    v23 = v48;
    while (v22 < a1[2])
    {
      v24 = a1[v22 + 4];
      sub_100004DE4(v51, v50);
      v21 = v24;
      sub_100003ABC(&unk_100606220);
      if (!swift_dynamicCast())
      {

        sub_100134ECC();
        swift_allocError();
        v39 = v38;
        *v38 = v21;
        sub_100004DE4(v51, (v38 + 1));
        *(v39 + 40) = 1;
        goto LABEL_22;
      }

      v25 = v49;
      v26 = sub_1004BBE64();
      if (!*(v25 + 16))
      {

LABEL_21:

        sub_100134ECC();
        swift_allocError();
        *v40 = v21;
        *(v40 + 40) = 0;
LABEL_22:
        swift_willThrow();

        goto LABEL_23;
      }

      v28 = sub_1000346D4(v26, v27);
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        goto LABEL_21;
      }

      ++v22;
      sub_100004DE4(*(v25 + 56) + 32 * v28, v50);

      sub_100004C6C(v51);
      result = sub_10003E13C(v50, v51);
      v23 = v21;
      if (v19 == v22)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    sub_100004DE4(v51, v50);
    v32 = v45;
    v31 = v46;
    if (swift_dynamicCast())
    {

      sub_100004C6C(v51);
      sub_100004C6C(v52);
      v33 = *(v31 - 8);
      (*(v33 + 56))(v32, 0, 1, v31);
      return (*(v33 + 32))(v43, v32, v31);
    }

    else
    {
      (*(*(v31 - 8) + 56))(v32, 1, 1, v31);
      (*(v42 + 8))(v32, v47);
      sub_100134ECC();
      swift_allocError();
      v37 = v36;
      *v36 = v21;
      sub_100004DE4(v51, (v36 + 1));
      *(v37 + 40) = 1;
      swift_willThrow();

LABEL_23:
      sub_100004C6C(v51);
      return sub_100004C6C(v52);
    }
  }

  return result;
}

uint64_t sub_100134E9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100134ECC()
{
  result = qword_100609370;
  if (!qword_100609370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609370);
  }

  return result;
}

unint64_t sub_100134F24()
{
  result = qword_100604470;
  if (!qword_100604470)
  {
    type metadata accessor for ICEnvironmentMonitorThermalPressureLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604470);
  }

  return result;
}

uint64_t sub_100134F7C(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 sub_100134F98(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100134FAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100134FE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100135034(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_10013506C()
{
  result = qword_100604478;
  if (!qword_100604478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100604478);
  }

  return result;
}

uint64_t Gliss.Direction.init(playerDirection:layoutDirection:)(uint64_t a1, char a2, uint64_t a3)
{
  if ((a1 - 1) <= 1)
  {
    v3 = a3 == 1;
  }

  else
  {
    v3 = 2;
  }

  if ((a1 + 2) < 2)
  {
    v3 = a3 != 1;
  }

  if (a2)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

unint64_t MPCPlayerDirection.description.getter(uint64_t a1)
{
  if (a1 > 0)
  {
    if (a1 == 1)
    {
      v1 = 0xE700000000000000;
      v2 = 0x64726177726F66;
      goto LABEL_16;
    }

    if (a1 == 5)
    {
      v1 = 0xED0000797261646ELL;
      v2 = 0x756F426575657571;
      goto LABEL_16;
    }

    if (a1 != 2)
    {
LABEL_13:
      v1 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      goto LABEL_16;
    }

    v2 = 0x4A64726177726F66;
LABEL_11:
    v1 = 0xEB00000000706D75;
    goto LABEL_16;
  }

  if (a1 == -2)
  {
    v2 = 0x4A65737265766572;
    goto LABEL_11;
  }

  if (a1 == -1)
  {
    v1 = 0xE700000000000000;
    v2 = 0x65737265766572;
    goto LABEL_16;
  }

  if (a1)
  {
    goto LABEL_13;
  }

  v1 = 0xEA00000000007972;
  v2 = 0x616E6F6974617473;
LABEL_16:
  sub_1004BD404(21);

  v4._countAndFlagsBits = v2;
  v4._object = v1;
  sub_1004BC024(v4);

  return 0xD000000000000013;
}

uint64_t sub_100135288()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, qword_1006174A8);
  sub_100007084(v0, qword_1006174A8);
  return sub_1004B80A4();
}

uint64_t sub_100135308@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v35 = a2;
  v38 = a1;
  v39 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1004BD174();
  v33 = *(v9 - 8);
  v34 = v9;
  __chkstk_darwin(v9);
  v36 = &v33 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_1004BD174();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v11 - 8);
  __chkstk_darwin(v17);
  v22 = &v33 - v21;
  (*(v23 + 16))(v19, v38, a4);
  v24 = swift_dynamicCast();
  v25 = *(v20 + 56);
  if (v24)
  {
    v26 = v39;
    v25(v16, 0, 1, v11);
    (*(v20 + 32))(v22, v16, v11);
    v27 = v36;
    (*(a5 + 32))(v22, v35, a3, a5);
    v28 = AssociatedTypeWitness;
    v29 = *(AssociatedTypeWitness - 8);
    if ((*(v29 + 48))(v27, 1, AssociatedTypeWitness) == 1)
    {
      (*(v20 + 8))(v22, v11);
      result = (*(v33 + 8))(v27, v34);
      *v26 = 0u;
      v26[1] = 0u;
    }

    else
    {
      *(v26 + 3) = v28;
      v32 = sub_1000133B0(v26);
      (*(v29 + 32))(v32, v27, v28);
      return (*(v20 + 8))(v22, v11);
    }
  }

  else
  {
    v25(v16, 1, 1, v11);
    result = (*(v13 + 8))(v16, v12);
    v31 = v39;
    *v39 = 0u;
    v31[1] = 0u;
  }

  return result;
}

uint64_t sub_100135728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Gliss.Transition();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = result;
    v7 = *(a3 + 40);

    v7(v6, a2, a3);
  }

  return result;
}

uint64_t sub_100135824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Gliss.Transition();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = result;
    v7 = *(a3 + 48);

    v7(v6, a2, a3);
  }

  return result;
}

uint64_t sub_100135920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a3;
  v27 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1004BD174();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v14);
  v19 = &v26 - v18;
  (*(v20 + 16))(v16, a1, a4);
  v21 = swift_dynamicCast();
  v22 = *(v17 + 56);
  if (v21)
  {
    v22(v13, 0, 1, AssociatedTypeWitness);
    (*(v17 + 32))(v19, v13, AssociatedTypeWitness);
    if (v27)
    {
      v23 = v28;
      swift_getAssociatedConformanceWitness();
      type metadata accessor for Gliss.Transition();
      v24 = swift_dynamicCastClass();
    }

    else
    {
      v24 = 0;
      v23 = v28;
    }

    (*(a5 + 56))(v19, v24, v23, a5);
    return (*(v17 + 8))(v19, AssociatedTypeWitness);
  }

  else
  {
    v22(v13, 1, 1, AssociatedTypeWitness);
    return (*(v10 + 8))(v13, v9);
  }
}

void sub_100135C2C(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v8 = *i;
      v7 = v8;
      a1(&v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t sub_100135CC0(uint64_t result, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; ++i)
    {
      v9 = *i;
      v8 = v9;
      a2(&v10, &v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

id Gliss.Coordinator.__allocating_init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = sub_10013F944(a1, a2, a3, a4);

  sub_10003CC4C(*(a3 + 8));
  sub_10003CC4C(*(a3 + 24));
  sub_10003CC4C(*(a3 + 40));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v11;
}

id Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10013F944(a1, a2, a3, a4);

  sub_10003CC4C(*(a3 + 8));
  sub_10003CC4C(*(a3 + 24));
  sub_10003CC4C(*(a3 + 40));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v6;
}

uint64_t sub_100135F3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_100135920(a2, 0, ObjectType, AssociatedTypeWitness, v3);
}

uint64_t Gliss.Coordinator.dataSource.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*Gliss.Coordinator.dataSource.modify(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = *((swift_isaMask & *v1) + 0x60);
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_100136198;
}

void sub_100136198(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t Gliss.Coordinator.gestureConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = *(v3 + 5);
  v10 = *(v3 + 6);
  v11 = v4;
  sub_10002F518(v5);
  sub_10002F518(v7);
  result = sub_10002F518(v9);
  *a1 = v11;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return result;
}

uint64_t Gliss.Coordinator.gestureConfiguration.setter(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v14 = *(a1 + 40);
  v6 = v1 + *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 1);
  v12 = *(v6 + 3);
  v13 = *(v6 + 5);
  v9 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 1) = v9;
  *(v6 + 2) = *(a1 + 32);
  *(v6 + 6) = *(a1 + 48);
  v10 = v3;
  sub_10002F518(v4);
  sub_10002F518(v5);
  sub_10002F518(v14);

  sub_10003CC4C(v8);
  sub_10003CC4C(v12);
  sub_10003CC4C(v13);
  sub_10013BEC4();

  sub_10003CC4C(v4);
  sub_10003CC4C(v5);
  return sub_10003CC4C(v14);
}

void (*Gliss.Coordinator.gestureConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1001364B0;
}

void sub_1001364B0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_10013BEC4();
  }
}

double Gliss.Coordinator.GestureConfiguration.init(hostingView:simultaneousGestureRecognizerAllowance:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  result = 0.0;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRect:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  *a6 = a1;
  a6[1] = sub_10013FD14;
  a6[2] = result;
  a6[3] = 0;
  a6[4] = 0;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t sub_100136578(uint64_t a1, double (*a2)(uint64_t))
{
  sub_100003ABC(&qword_100604618);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004C50A0;
  *(v4 + 32) = a2(a1);
  *(v4 + 40) = v5;
  *(v4 + 48) = v6;
  *(v4 + 56) = v7;
  return v4;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRects:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = 0;
  a6[4] = 0;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitTest:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = 0;
  a6[2] = 0;
  a6[3] = a2;
  a6[4] = a3;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitRects.getter()
{
  v1 = *(v0 + 8);
  sub_10002F518(v1);
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitRects.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10003CC4C(*(v2 + 8));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.getter()
{
  v1 = *(v0 + 24);
  sub_10002F518(v1);
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10003CC4C(*(v2 + 24));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.getter()
{
  v1 = *(v0 + 40);
  sub_10002F518(v1);
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10003CC4C(*(v2 + 40));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Gliss.Coordinator.addCoordinatedView<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *((swift_isaMask & *v3) + 0x70);
  swift_beginAccess();
  v7 = *(v3 + v6);
  v8 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1000186EC(0, v7[2] + 1, 1, v7);
    *(v3 + v6) = v7;
  }

  v11 = v7[2];
  v10 = v7[3];
  if (v11 >= v10 >> 1)
  {
    v7 = sub_1000186EC((v10 > 1), v11 + 1, 1, v7);
  }

  v7[2] = v11 + 1;
  v12 = &v7[2 * v11];
  v12[4] = v8;
  v12[5] = a3;
  *(v3 + v6) = v7;
  return swift_endAccess();
}

void Gliss.Coordinator.removeCoordinatedView<A>(_:)()
{
  v1 = *((swift_isaMask & *v0) + 0x70);
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v5 = 32;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return;
      }

      v6 = *(v2 + v5);
      sub_100009130(0, &qword_100604490);
      v7 = v6;
      v8 = sub_1004BCFA4();

      if (v8)
      {
        break;
      }

      ++v4;
      v5 += 16;
      if (v3 == v4)
      {
        goto LABEL_6;
      }
    }

    swift_beginAccess();
    v9 = sub_100032CA4(v4);
    swift_endAccess();
    if (!swift_dynamicCastUnknownClass())
    {
    }
  }

  else
  {
LABEL_6:
  }
}

uint64_t Gliss.Coordinator.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_isaMask;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1004BD174();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-v8];
  v10 = *(v1 + *((v4 & v3) + 0x88));
  if (v10)
  {
    v11 = *(*v10 + 128);
    swift_beginAccess();
    if (*(v10 + v11) != 6)
    {
      v12 = *(*v10 + 112);
      swift_beginAccess();
      (*(v7 + 16))(v9, v10 + v12, v6);
      v13 = *(AssociatedTypeWitness - 8);
      if ((*(v13 + 48))(v9, 1, AssociatedTypeWitness) != 1)
      {
        return (*(v13 + 32))(a1, v9, AssociatedTypeWitness);
      }

      (*(v7 + 8))(v9, v6);
    }
  }

  return sub_100136C18(a1);
}

uint64_t sub_100136C18@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x78);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a1, &v1[v3], AssociatedTypeWitness);
}

uint64_t sub_100136CFC(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x78);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(&v1[v3], a1, AssociatedTypeWitness);
  return swift_endAccess();
}

uint64_t sub_100136DE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x80);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1004BD174();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_100136ED8(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x80);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1004BD174();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

void Gliss.Coordinator.setItem(_:animationDirection:animated:)(uint64_t a1, int a2, char a3)
{
  if (a3)
  {
    v3 = -64;
  }

  else
  {
    v3 = -2;
  }

  Gliss.Coordinator.setItem(_:animationDirection:animation:)(a1, a2, 0, 0, v3);

  sub_10013FD1C(0, 0, v3);
}

uint64_t Gliss.Coordinator.setItem(_:animationDirection:animation:)(uint64_t a1, int a2, void *a3, uint64_t a4, int a5)
{
  v112 = a5;
  v114 = a4;
  v117 = a3;
  v115 = a2;
  v7 = *((swift_isaMask & *v5) + 0x58);
  v8 = *((swift_isaMask & *v5) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = __chkstk_darwin(AssociatedTypeWitness);
  v13 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v12;
  __chkstk_darwin(v11);
  v15 = v102 - v14;
  v16 = sub_1004BD174();
  __chkstk_darwin(v16 - 8);
  v18 = v102 - v17;
  v108 = *(v10 + 56);
  v109 = v10 + 56;
  v108(v102 - v17, 1, 1, AssociatedTypeWitness);
  v110 = v18;
  sub_100136ED8(v18);
  v118 = v5;
  Gliss.Coordinator.item.getter(v15);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = sub_1004BBD84();
  v113 = v10;
  v21 = *(v10 + 8);
  v116 = v15;
  result = v21(v15, AssociatedTypeWitness);
  if ((v20 & 1) == 0)
  {
    v102[1] = AssociatedConformanceWitness;
    v106 = v8;
    if (qword_1005FFF88 != -1)
    {
      swift_once();
    }

    v23 = sub_1004B80B4();
    v24 = sub_100007084(v23, qword_1006174A8);
    v26 = v113 + 16;
    v25 = *(v113 + 16);
    v25(v13, a1, AssociatedTypeWitness);
    v119 = v24;
    v27 = sub_1004B8094();
    v28 = sub_1004BC9A4();
    v29 = os_log_type_enabled(v27, v28);
    v107 = v7;
    v105 = a1;
    v104 = v26;
    v103 = v25;
    if (v29)
    {
      v30 = AssociatedTypeWitness;
      v31 = swift_slowAlloc();
      v102[0] = swift_slowAlloc();
      v122[0] = v102[0];
      *v31 = 136446210;
      v25(v116, v13, v30);
      v32 = sub_1004BBF04();
      v34 = v33;
      v21(v13, v30);
      v35 = sub_100012018(v32, v34, v122);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Attempting to set item=%{public}s", v31, 0xCu);
      sub_100004C6C(v102[0]);

      AssociatedTypeWitness = v30;
    }

    else
    {

      v21(v13, AssociatedTypeWitness);
    }

    v36 = v118;
    v37 = sub_1004B8094();
    v38 = sub_1004BC9A4();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v112;
    v41 = v114;
    if (v39)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v122[0] = v43;
      *v42 = 136446210;
      Gliss.Coordinator.item.getter(v116);
      v44 = sub_1004BBF04();
      v46 = sub_100012018(v44, v45, v122);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "  Current Item=%{public}s", v42, 0xCu);
      sub_100004C6C(v43);
    }

    v47 = sub_1004B8094();
    v48 = sub_1004BC9A4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v122[0] = v50;
      *v49 = 136446210;
      LOBYTE(v121[0]) = v115;
      sub_100003ABC(&qword_100604488);
      v51 = sub_1004BBF04();
      v53 = sub_100012018(v51, v52, v122);

      *(v49 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "  Direction=%{public}s", v49, 0xCu);
      sub_100004C6C(v50);
    }

    v54 = v117;
    sub_10013FD44(v117, v41, v40);
    v55 = sub_1004B8094();
    v56 = sub_1004BC9A4();
    sub_10013FD1C(v54, v41, v40);
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v121[0] = v58;
      *v57 = 136446210;
      v122[0] = v54;
      v122[1] = v41;
      v123 = v40;
      sub_10013FD44(v54, v41, v40);
      sub_100003ABC(&qword_100604480);
      v59 = sub_1004BBF04();
      v61 = sub_100012018(v59, v60, v121);

      *(v57 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v55, v56, "  Animation=%{public}s", v57, 0xCu);
      sub_100004C6C(v58);
    }

    v62 = v105;
    v63 = *(v36 + *((swift_isaMask & *v36) + 0x88));
    if (v63 && (v64 = *(*v63 + 128), swift_beginAccess(), *(v63 + v64)))
    {

      v65 = sub_1004B8094();
      v66 = sub_1004BC9A4();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v122[0] = v118;
        *v67 = 136446210;
        v120 = v63;
        type metadata accessor for Gliss.Transition();
        swift_getWitnessTable();
        v68 = sub_1004BD934();
        v70 = sub_100012018(v68, v69, v122);

        *(v67 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v65, v66, "  Ongoing Transition=%{public}s", v67, 0xCu);
        sub_100004C6C(v118);
      }

      v71 = v103;
      v72 = sub_1004B8094();
      v73 = sub_1004BC9A4();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v72, v73, "  ⏳ Queueing item until ongoing transition completes", v74, 2u);
      }

      v75 = v110;
      v71(v110, v62, AssociatedTypeWitness);
      v108(v75, 0, 1, AssociatedTypeWitness);
      sub_100136ED8(v75);
      v76 = v116;
      v71(v116, v62, AssociatedTypeWitness);
      v77 = v113;
      v78 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v79 = (v78 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = (v78 + v111 + 23) & 0xFFFFFFFFFFFFFFF8;
      v81 = swift_allocObject();
      v82 = v107;
      *(v81 + 16) = v106;
      *(v81 + 24) = v82;
      (*(v77 + 32))(v81 + v78, v76, AssociatedTypeWitness);
      v83 = v81 + v79;
      *v83 = v36;
      *(v83 + 8) = v115;
      v84 = v81 + v80;
      v85 = v117;
      v86 = v114;
      *v84 = v117;
      *(v84 + 8) = v86;
      *(v84 + 16) = v40;
      v87 = v36;
      sub_10013FD44(v85, v86, v40);
      Gliss.Transition.addCompletion(_:)(sub_10013FE3C, v81);
    }

    else
    {
      v88 = sub_100138C54(v62, v115);
      v89 = v117;
      if (v40 >= 0xFEu)
      {
        v90 = 0;
      }

      else
      {
        v90 = v117;
      }

      if (v40 >= 0xFEu)
      {
        v91 = 0;
      }

      else
      {
        v91 = v41;
      }

      if (v40 >= 0xFEu)
      {
        v92 = -64;
      }

      else
      {
        v92 = v40;
      }

      v93 = v88 + *(*v88 + 136);
      v94 = *v93;
      v95 = *(v93 + 8);
      *v93 = v90;
      *(v93 + 8) = v91;
      v96 = *(v93 + 16);
      *(v93 + 16) = v92;
      sub_10013FD44(v89, v41, v40);
      sub_10013FD30(v94, v95, v96);
      sub_100139970(v88);
      v97 = v116;
      v103(v116, v62, AssociatedTypeWitness);
      sub_100136CFC(v97);
      v98 = *((swift_isaMask & *v36) + 0x70);
      v99 = swift_beginAccess();
      v100 = *(v36 + v98);
      __chkstk_darwin(v99);
      v101 = v107;
      v102[-4] = v106;
      v102[-3] = v101;
      v102[-2] = v62;
      v102[-1] = v88;

      sub_100135C2C(sub_100140B74, &v102[-6], v100);

      sub_10013AC20(v88, v40 < 0xFEu);
    }
  }

  return result;
}

void sub_100137BCC(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v71 = a8;
  v72 = a5;
  v73 = a6;
  v74 = a7;
  v87 = a4;
  v69 = *a1;
  v9 = *(v69 + 80);
  v10 = sub_1004BD174();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v77 = *(TupleTypeMetadata2 - 8);
  v11 = __chkstk_darwin(TupleTypeMetadata2);
  v13 = &v68 - v12;
  v88 = v10;
  v80 = *(v10 - 8);
  v14 = __chkstk_darwin(v11);
  v70 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v68 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v68 - v20;
  v22 = __chkstk_darwin(v19);
  v85 = &v68 - v23;
  v24 = *(v9 - 8);
  v25 = __chkstk_darwin(v22);
  v79 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v68 - v27;
  if (qword_1005FFF88 != -1)
  {
    swift_once();
  }

  v82 = v13;
  v29 = sub_1004B80B4();
  v30 = sub_100007084(v29, qword_1006174A8);
  v31 = *(v24 + 16);
  v83 = a3;
  v31(v28, a3, v9);
  v78 = v30;
  v32 = sub_1004B8094();
  v33 = sub_1004BC9A4();
  v34 = os_log_type_enabled(v32, v33);
  v84 = v24;
  v76 = v18;
  v81 = v21;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v89[0] = v36;
    *v35 = 136446210;
    v31(v79, v28, v9);
    v37 = sub_1004BBF04();
    v39 = v38;
    v75 = *(v84 + 8);
    v75(v28, v9);
    v40 = sub_100012018(v37, v39, v89);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v32, v33, "⌛️ Dequeuing item=%{public}s", v35, 0xCu);
    sub_100004C6C(v36);
    v24 = v84;

    v21 = v81;
  }

  else
  {

    v75 = *(v24 + 8);
    v75(v28, v9);
  }

  v41 = v85;
  sub_100136DE8(v85);
  v31(v21, v83, v9);
  (*(v24 + 56))(v21, 0, 1, v9);
  v42 = *(TupleTypeMetadata2 + 48);
  v43 = *(v80 + 16);
  v44 = v24;
  v45 = v80;
  v46 = v82;
  v47 = v88;
  v43(v82, v41, v88);
  v43(&v46[v42], v21, v47);
  v48 = *(v44 + 48);
  if (v48(v46, 1, v9) == 1)
  {
    v49 = *(v45 + 8);
    v50 = v21;
    v51 = v88;
    v49(v50, v88);
    v49(v41, v51);
    if (v48(&v46[v42], 1, v9) == 1)
    {
      v49(v46, v88);
LABEL_16:
      Gliss.Coordinator.setItem(_:animationDirection:animation:)(v83, v72, v73, v74, v71);
      return;
    }

    goto LABEL_11;
  }

  v52 = v76;
  v43(v76, v46, v88);
  if (v48(&v46[v42], 1, v9) == 1)
  {
    v53 = *(v45 + 8);
    v54 = v88;
    v53(v81, v88);
    v53(v85, v54);
    v75(v52, v9);
LABEL_11:
    (*(v77 + 8))(v46, TupleTypeMetadata2);
    goto LABEL_12;
  }

  v63 = v79;
  (*(v84 + 32))(v79, &v46[v42], v9);
  v64 = sub_1004BBD84();
  v65 = v75;
  v75(v63, v9);
  v66 = *(v45 + 8);
  v67 = v88;
  v66(v81, v88);
  v66(v85, v67);
  v65(v52, v9);
  v66(v46, v67);
  if (v64)
  {
    goto LABEL_16;
  }

LABEL_12:
  v55 = v87;
  v56 = sub_1004B8094();
  v57 = sub_1004BC9A4();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v89[0] = v59;
    *v58 = 136446210;
    sub_100136DE8(v70);
    v60 = sub_1004BBF04();
    v62 = sub_100012018(v60, v61, v89);

    *(v58 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v56, v57, "  ⌛️❌ Item no longer matches queued item=%{public}s", v58, 0xCu);
    sub_100004C6C(v59);
  }
}

id sub_1001383CC(SEL *a1)
{
  v3 = *((swift_isaMask & *v1) + 0x70);
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  if (!v5)
  {
  }

  v7 = 0;
  v8 = (v4 + 32);
  while (v7 < *(v4 + 16))
  {
    ++v7;
    v9 = *v8;
    v8 += 2;
    result = [v9 *a1];
    if (v5 == v7)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100138488(uint64_t a1)
{
  v2 = sub_1004B6D14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100003ABC(&qword_100604600);
  __chkstk_darwin(v6);
  v8 = &v32[-v7];
  v9 = sub_100003ABC(&qword_100604608);
  v10 = __chkstk_darwin(v9 - 8);
  v37 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v14 = &v32[-v13];
  result = __chkstk_darwin(v12);
  v17 = &v32[-v16];
  if (a1)
  {
    v34 = v5;
    v18 = v3;
    v19 = *(v3 + 16);
    v36 = a1;
    v19(&v32[-v16], a1 + direct field offset for Gliss.Transition.id, v2);
    v35 = v18;
    v20 = *(v18 + 56);
    v21 = 1;
    v20(v17, 0, 1, v2);
    v22 = *(v38 + *((swift_isaMask & *v38) + 0x88));
    if (v22)
    {
      v19(v14, v22 + direct field offset for Gliss.Transition.id, v2);
      v21 = 0;
    }

    v20(v14, v21, 1, v2);
    v23 = *(v6 + 48);
    sub_10014076C(v17, v8);
    sub_10014076C(v14, &v8[v23]);
    v24 = v35;
    v25 = *(v35 + 48);
    if (v25(v8, 1, v2) == 1)
    {
      v26 = v36;

      sub_100007214(v14, &qword_100604608);
      sub_100007214(v17, &qword_100604608);
      v27 = v26;
      if (v25(&v8[v23], 1, v2) == 1)
      {
        sub_100007214(v8, &qword_100604608);
      }
    }

    else
    {
      v28 = v37;
      sub_10014076C(v8, v37);
      if (v25(&v8[v23], 1, v2) != 1)
      {
        v30 = v34;
        (*(v24 + 32))(v34, &v8[v23], v2);
        sub_1001407DC();
        v27 = v36;

        v33 = sub_1004BBD84();
        v31 = *(v24 + 8);
        v31(v30, v2);
        sub_100007214(v14, &qword_100604608);
        sub_100007214(v17, &qword_100604608);
        v31(v37, v2);
        sub_100007214(v8, &qword_100604608);
        if (v33)
        {
        }

LABEL_10:
        v29 = *(*v27 + 128);
        swift_beginAccess();
        if (*(v27 + v29) <= 2u)
        {
          sub_100139C78(v27, 0);
        }
      }

      v27 = v36;

      sub_100007214(v14, &qword_100604608);
      sub_100007214(v17, &qword_100604608);
      (*(v24 + 8))(v28, v2);
    }

    sub_100007214(v8, &qword_100604600);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10013898C(uint64_t a1)
{
  sub_10013FF64(a1);
}

id sub_1001389C4()
{
  v1 = *((swift_isaMask & *v0) + 0x98);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_10003CC4C(v9[1]);
    sub_10003CC4C(v9[3]);
    sub_10003CC4C(v9[5]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:1 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100138AA0()
{
  v1 = *((swift_isaMask & *v0) + 0xA0);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_10003CC4C(v9[1]);
    sub_10003CC4C(v9[3]);
    sub_10003CC4C(v9[5]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:3 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100138B7C()
{
  v1 = *((swift_isaMask & *v0) + 0xA8);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_10003CC4C(v9[1]);
    sub_10003CC4C(v9[3]);
    sub_10003CC4C(v9[5]);
    v5 = [objc_opt_self() feedbackGeneratorForView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_100138C54(uint64_t a1, int a2)
{
  v3 = v2;
  v102 = a1;
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & *v2) + 0x58);
  v100 = *((swift_isaMask & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v99 = sub_1004BD174();
  v95 = *(v99 - 8);
  v9 = __chkstk_darwin(v99);
  v92 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v91 = &v86 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v86 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v86 - v17;
  v101 = *(AssociatedTypeWitness - 8);
  v19 = __chkstk_darwin(v16);
  v98 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v94 = &v86 - v22;
  v23 = __chkstk_darwin(v21);
  v97 = &v86 - v24;
  v25 = __chkstk_darwin(v23);
  v96 = &v86 - v26;
  __chkstk_darwin(v25);
  v28 = &v86 - v27;
  v29 = *(v3 + *((v6 & v5) + 0x88));
  v93 = a2;
  if (v29)
  {
    v30 = *(*v29 + 128);
    swift_beginAccess();
    if (*(v29 + v30) <= 2u)
    {
      v87 = v7;
      v31 = *(*v29 + 112);
      swift_beginAccess();
      v32 = v95;
      v33 = *(v95 + 16);
      v90 = v31;
      v89 = v33;
      v33(v18, v29 + v31, v99);
      v34 = v101;
      v88 = *(v101 + 48);
      if (v88(v18, 1, AssociatedTypeWitness) == 1)
      {
        v35 = *(v32 + 8);

        v35(v18, v99);
      }

      else
      {
        (*(v34 + 32))(v28, v18, AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();

        v36 = sub_1004BBD84();
        (*(v34 + 8))(v28, AssociatedTypeWitness);
        if (v36)
        {
          return v29;
        }
      }

      v89(v15, v29 + v90, v99);
      if (v88(v15, 1, AssociatedTypeWitness) == 1)
      {
        (*(v95 + 8))(v15, v99);
        v37 = *(*v29 + 104);
        swift_beginAccess();
        v38 = v101;
        v39 = v96;
        (*(v101 + 16))(v96, v29 + v37, AssociatedTypeWitness);
        v7 = v87;
        swift_getAssociatedConformanceWitness();
        LOBYTE(v37) = sub_1004BBD84();
        (*(v38 + 8))(v39, AssociatedTypeWitness);
        if (v37)
        {
          return v29;
        }
      }

      else
      {

        (*(v95 + 8))(v15, v99);
        v7 = v87;
      }
    }
  }

  v88 = v3;
  if (qword_1005FFF88 != -1)
  {
    swift_once();
  }

  v40 = sub_1004B80B4();
  v41 = sub_100007084(v40, qword_1006174A8);
  v42 = v101;
  v43 = *(v101 + 16);
  v44 = v97;
  v43(v97, v102, AssociatedTypeWitness);
  v90 = v41;
  v45 = sub_1004B8094();
  v46 = sub_1004BC9A4();
  v47 = os_log_type_enabled(v45, v46);
  v89 = v43;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v87 = v7;
    v49 = v48;
    v50 = swift_slowAlloc();
    v105 = v50;
    *v49 = 136446210;
    v43(v96, v44, AssociatedTypeWitness);
    v51 = sub_1004BBF04();
    v53 = v52;
    v97 = *(v101 + 8);
    (v97)(v44, AssociatedTypeWitness);
    v54 = sub_100012018(v51, v53, &v105);
    v55 = v87;

    *(v49 + 4) = v54;
    v42 = v101;
    _os_log_impl(&_mh_execute_header, v45, v46, "Creating transition for item=%{public}s", v49, 0xCu);
    sub_100004C6C(v50);
  }

  else
  {
    v55 = v7;

    v97 = *(v42 + 8);
    (v97)(v44, AssociatedTypeWitness);
  }

  v56 = v94;
  v57 = v95;
  v58 = v88;
  v59 = *(v88 + *((swift_isaMask & *v88) + 0x88));
  if (!v59)
  {
    v62 = v91;
    (*(v42 + 56))(v91, 1, 1, AssociatedTypeWitness);
    v63 = v55;
    goto LABEL_19;
  }

  v60 = *(*v59 + 112);
  swift_beginAccess();
  v61 = v59 + v60;
  v62 = v91;
  (*(v57 + 16))(v91, v61, v99);
  v63 = v55;
  if ((*(v42 + 48))(v62, 1, AssociatedTypeWitness) == 1)
  {
LABEL_19:
    Gliss.Coordinator.item.getter(v56);
    v65 = (*(v42 + 48))(v62, 1, AssociatedTypeWitness);
    v64 = v89;
    if (v65 != 1)
    {
      (*(v57 + 8))(v62, v99);
    }

    v64(v98, v56, AssociatedTypeWitness);
    goto LABEL_22;
  }

  (*(v42 + 32))(v56, v62, AssociatedTypeWitness);
  v64 = v89;
  v89(v98, v56, AssociatedTypeWitness);
LABEL_22:
  v66 = v96;
  Gliss.Coordinator.item.getter(v96);
  swift_getAssociatedConformanceWitness();
  v67 = sub_1004BBD84();
  v101 = v42 + 8;
  (v97)(v66, AssociatedTypeWitness);
  if (v67)
  {
    v68 = 1;
    v69 = v92;
  }

  else
  {
    v69 = v92;
    v64(v92, v102, AssociatedTypeWitness);
    v68 = 0;
  }

  (*(v42 + 56))(v69, v68, 1, AssociatedTypeWitness);
  type metadata accessor for Gliss.Transition();
  v70 = v69;
  v71 = *((swift_isaMask & *v58) + 0x70);
  v72 = swift_beginAccess();
  v73 = *(v58 + v71);
  __chkstk_darwin(v72);
  *(&v86 - 4) = v100;
  *(&v86 - 3) = v63;
  *(&v86 - 2) = v102;
  v74 = v93;
  *(&v86 - 8) = v93;

  v75 = sub_100135CC0(_swiftEmptyDictionarySingleton, sub_100140AEC, (&v86 - 6), v73);

  v29 = sub_100140BE4(v98, v70, v74, v75, 0.0);

  v76 = sub_1004B8094();
  v77 = sub_1004BC9A4();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = v56;
    v80 = swift_slowAlloc();
    v103 = v29;
    v104 = v80;
    *v78 = 136446210;
    swift_getWitnessTable();
    v81 = sub_1004BD934();
    v83 = sub_100012018(v81, v82, &v104);

    *(v78 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v76, v77, "   Created Transition=%{public}s", v78, 0xCu);
    sub_100004C6C(v80);

    v84 = v79;
  }

  else
  {

    v84 = v56;
  }

  (v97)(v84, AssociatedTypeWitness);
  return v29;
}

void sub_100139888(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = v6;
  sub_100135308(a3, a4, ObjectType, AssociatedTypeWitness, v7, v11);
  sub_1001C061C(v11, v10);
}

void sub_100139970(uint64_t a1)
{
  v2 = v1;
  if (qword_1005FFF88 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v4 = sub_1004B80B4();
    sub_100007084(v4, qword_1006174A8);

    v5 = sub_1004B8094();
    v6 = sub_1004BC9A4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24[0] = v8;
      *v7 = 136446210;
      type metadata accessor for Gliss.Transition();
      swift_getWitnessTable();
      v9 = sub_1004BD934();
      v11 = sub_100012018(v9, v10, v24);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Begin or Enqueue Transition=%{public}s", v7, 0xCu);
      sub_100004C6C(v8);
    }

    sub_1001418FC(2);

    sub_10013FF64(v12);

    v13 = *((swift_isaMask & *v2) + 0x70);
    swift_beginAccess();
    v14 = *(v2 + v13);
    v15 = *(v14 + 16);

    if (!v15)
    {
      break;
    }

    v16 = 0;
    v17 = (v14 + 40);
    while (v16 < *(v14 + 16))
    {
      ++v16;
      v18 = *v17;
      v19 = *(v17 - 1);
      ObjectType = swift_getObjectType();
      sub_100135728(a1, ObjectType, v18);

      v17 += 2;
      if (v15 == v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_8:

  sub_1001383C0();
  v21 = sub_1004B8094();
  v22 = sub_1004BC9A4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "   Transition Started!", v23, 2u);
  }
}

void sub_100139C78(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_1005FFF88 != -1)
  {
    swift_once();
  }

  v6 = sub_1004B80B4();
  sub_100007084(v6, qword_1006174A8);

  v7 = sub_1004B8094();
  v8 = sub_1004BC9A4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v9 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition();
    swift_getWitnessTable();
    v10 = sub_1004BD934();
    v12 = sub_100012018(v10, v11, v55);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    if (a2)
    {
      v13 = 0x6574616D696E6128;
    }

    else
    {
      v13 = 0;
    }

    if (a2)
    {
      v14 = 0xEA00000000002964;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = sub_100012018(v13, v14, v55);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to cancel transition=%{public}s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(*a1 + 128);
  swift_beginAccess();
  if (*(a1 + v16) == 2)
  {
    sub_1001418FC(4);
    sub_1001383B4();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2 & 1;
    *(v17 + 32) = v3;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = v3;
    if (a2)
    {
      v19 = direct field offset for Gliss.Transition.id;
      v20 = *((swift_isaMask & *v3) + 0x90);
      swift_beginAccess();
      v21 = *(v3 + v20);
      v22 = *(v21 + 16);
      swift_retain_n();
      v23 = v3;
      if (v22)
      {

        v24 = sub_100034820(a1 + v19);
        if (v25)
        {
          v26 = *(*(v21 + 56) + 8 * v24);

          [v26 stopAnimation:0];
        }

        else
        {
        }
      }

      v31 = a1 + *(*a1 + 136);
      v47 = v19;
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      Gliss.Coordinator.gestureConfiguration.getter(v55);
      v46 = v23;
      v36 = v55[0];
      v35 = v55[1];
      sub_10013FD58(v32, v33, v34);
      sub_10003CC4C(v35);
      sub_10003CC4C(v55[3]);
      sub_10003CC4C(v55[5]);
      v37 = sub_100140C5C(a1, v36, v32, v33, v34);

      sub_10013FD30(v32, v33, v34);
      v38 = swift_allocObject();
      *(v38 + 16) = sub_1001408D8;
      *(v38 + 24) = v17;
      v53 = sub_100009350;
      v54 = v38;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_1000D6C80;
      v52 = &unk_1005B2688;
      v39 = _Block_copy(&aBlock);

      [v37 addAnimations:v39];
      _Block_release(v39);
      v40 = swift_allocObject();
      v40[2] = sub_100140918;
      v40[3] = v18;
      v40[4] = v46;
      v40[5] = a1;
      v53 = sub_100140B3C;
      v54 = v40;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_10013ABCC;
      v52 = &unk_1005B26D8;
      v41 = _Block_copy(&aBlock);

      v42 = v46;

      [v37 addCompletion:v41];
      _Block_release(v41);
      [v37 startAnimation];
      v43 = *((swift_isaMask & *v42) + 0x90);
      swift_beginAccess();
      v44 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v42 + v43);
      *(v42 + v43) = 0x8000000000000000;
      sub_10003870C(v44, a1 + v47, isUniquelyReferenced_nonNull_native);
      *(v42 + v43) = v48;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v30 = v3;
      sub_10013B31C(a1, 0, 0.0);
      sub_10013A374(a1, v30);
    }
  }

  else
  {
    v27 = sub_1004B8094();
    v28 = sub_1004BC9A4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "   🫷Ignored (Transition Not Active)", v29, 2u);
    }
  }
}

uint64_t sub_10013A374(uint64_t a1, void *a2)
{
  v60 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v62 = a2;
  v59 = v4;
  v5 = sub_1004B6D14();
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  __chkstk_darwin(v5);
  v54 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_100604600);
  __chkstk_darwin(v8);
  v61 = &v54 - v9;
  v10 = sub_100003ABC(&qword_100604608);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v54 - v15;
  __chkstk_darwin(v14);
  v18 = (&v54 - v17);
  sub_1001418FC(6);
  if (qword_1005FFF88 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v19 = sub_1004B80B4();
    sub_100007084(v19, qword_1006174A8);

    v20 = sub_1004B8094();
    v21 = sub_1004BC9A4();

    v22 = os_log_type_enabled(v20, v21);
    v55 = v13;
    v56 = v8;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v64[0] = v24;
      *v23 = 136446210;
      v63 = a1;
      type metadata accessor for Gliss.Transition();
      swift_getWitnessTable();
      v25 = sub_1004BD934();
      v27 = sub_100012018(v25, v26, v64);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "❎ Cancelled transition=%{public}s", v23, 0xCu);
      sub_100004C6C(v24);

      v3 = &swift_isaMask;
    }

    v28 = *(v62 + *((*v3 & *v62) + 0x88));
    v30 = v57;
    v29 = v58;
    if (v28)
    {
      v31 = *(v58 + 2);
      v31(v18, v28 + direct field offset for Gliss.Transition.id, v57);
      v32 = *(v29 + 56);
      v32(v18, 0, 1, v30);
    }

    else
    {
      v32 = *(v58 + 7);
      v32(v18, 1, 1, v57);
      v31 = *(v29 + 16);
    }

    v31(v16, a1 + direct field offset for Gliss.Transition.id, v30);
    v32(v16, 0, 1, v30);
    v33 = v56[12];
    v34 = v61;
    sub_10014076C(v18, v61);
    sub_10014076C(v16, v34 + v33);
    v35 = *(v29 + 48);
    if (v35(v34, 1, v30) == 1)
    {
      sub_100007214(v16, &qword_100604608);
      v36 = v61;
      sub_100007214(v18, &qword_100604608);
      v8 = &swift_isaMask;
      if (v35(v36 + v33, 1, v30) != 1)
      {
        goto LABEL_12;
      }

      sub_100007214(v36, &qword_100604608);
      v37 = v59;
LABEL_14:
      sub_10013FF64(0);
      goto LABEL_15;
    }

    v58 = v16;
    v38 = v55;
    sub_10014076C(v34, v55);
    if (v35(v34 + v33, 1, v30) == 1)
    {
      v39 = v29;
      sub_100007214(v58, &qword_100604608);
      v36 = v61;
      sub_100007214(v18, &qword_100604608);
      (*(v39 + 8))(v38, v30);
      v8 = &swift_isaMask;
LABEL_12:
      sub_100007214(v36, &qword_100604600);
      v37 = v59;
      goto LABEL_15;
    }

    v40 = v34 + v33;
    v41 = v34;
    v42 = v54;
    (*(v29 + 32))(v54, v40, v30);
    sub_1001407DC();
    v43 = v29;
    v44 = sub_1004BBD84();
    v45 = *(v43 + 8);
    v45(v42, v30);
    sub_100007214(v58, &qword_100604608);
    sub_100007214(v18, &qword_100604608);
    v45(v38, v30);
    sub_100007214(v41, &qword_100604608);
    v8 = &swift_isaMask;
    v37 = v59;
    if (v44)
    {
      goto LABEL_14;
    }

LABEL_15:
    v46 = *(*a1 + 152);
    v47 = swift_beginAccess();
    v64[0] = *(a1 + v46);
    __chkstk_darwin(v47);
    *(&v54 - 2) = *(v37 + 80);
    *(&v54 - 2) = a1;
    type metadata accessor for Gliss.Transition();
    swift_getFunctionTypeMetadata2();
    v3 = sub_1004BC3B4();

    swift_getWitnessTable();
    sub_1004BC204();

    v48 = v62;
    v49 = *((swift_isaMask & *v62) + 0x70);
    swift_beginAccess();
    v50 = *(v48 + v49);
    v13 = *(v50 + 16);

    if (!v13)
    {
    }

    v16 = 0;
    v18 = (v50 + 40);
    while (v16 < *(v50 + 16))
    {
      ++v16;
      v51 = *v18;
      v3 = *(v18 - 1);
      ObjectType = swift_getObjectType();
      sub_100135824(a1, ObjectType, v51);

      v18 += 2;
      if (v13 == v16)
      {
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_10013ABCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_10013AC20(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_1005FFF88 != -1)
  {
    swift_once();
  }

  v6 = sub_1004B80B4();
  sub_100007084(v6, qword_1006174A8);

  v7 = sub_1004B8094();
  v8 = sub_1004BC9A4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v55[0] = swift_slowAlloc();
    *v9 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition();
    swift_getWitnessTable();
    v10 = sub_1004BD934();
    v12 = sub_100012018(v10, v11, v55);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    if (a2)
    {
      v13 = 0x6574616D696E6128;
    }

    else
    {
      v13 = 0;
    }

    if (a2)
    {
      v14 = 0xEA00000000002964;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = sub_100012018(v13, v14, v55);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to end transition=%{public}s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(*a1 + 128);
  swift_beginAccess();
  if (*(a1 + v16) == 2)
  {
    sub_1001418FC(3);
    sub_1001383B4();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2 & 1;
    *(v17 + 32) = v3;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = v3;
    if (a2)
    {
      v19 = direct field offset for Gliss.Transition.id;
      v20 = *((swift_isaMask & *v3) + 0x90);
      swift_beginAccess();
      v21 = *(v3 + v20);
      v22 = *(v21 + 16);
      swift_retain_n();
      v23 = v3;
      if (v22)
      {

        v24 = sub_100034820(a1 + v19);
        if (v25)
        {
          v26 = *(*(v21 + 56) + 8 * v24);

          [v26 stopAnimation:0];
        }

        else
        {
        }
      }

      v31 = a1 + *(*a1 + 136);
      v47 = v19;
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      Gliss.Coordinator.gestureConfiguration.getter(v55);
      v46 = v23;
      v36 = v55[0];
      v35 = v55[1];
      sub_10013FD58(v32, v33, v34);
      sub_10003CC4C(v35);
      sub_10003CC4C(v55[3]);
      sub_10003CC4C(v55[5]);
      v37 = sub_100140C5C(a1, v36, v32, v33, v34);

      sub_10013FD30(v32, v33, v34);
      v38 = swift_allocObject();
      *(v38 + 16) = sub_10014097C;
      *(v38 + 24) = v17;
      v53 = sub_1000081FC;
      v54 = v38;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_1000D6C80;
      v52 = &unk_1005B2778;
      v39 = _Block_copy(&aBlock);

      [v37 addAnimations:v39];
      _Block_release(v39);
      v40 = swift_allocObject();
      v40[2] = sub_1001409B8;
      v40[3] = v18;
      v40[4] = v46;
      v40[5] = a1;
      v53 = sub_100140A08;
      v54 = v40;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_10013ABCC;
      v52 = &unk_1005B27C8;
      v41 = _Block_copy(&aBlock);

      v42 = v46;

      [v37 addCompletion:v41];
      _Block_release(v41);
      [v37 startAnimation];
      v43 = *((swift_isaMask & *v42) + 0x90);
      swift_beginAccess();
      v44 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v42 + v43);
      *(v42 + v43) = 0x8000000000000000;
      sub_10003870C(v44, a1 + v47, isUniquelyReferenced_nonNull_native);
      *(v42 + v43) = v48;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v30 = v3;
      sub_10013B31C(a1, 0, 1.0);
      sub_10013B4F8(a1, v30);
    }
  }

  else
  {
    v27 = sub_1004B8094();
    v28 = sub_1004BC9A4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "   🫷Ignored (Transition Not Active)", v29, 2u);
    }
  }
}

id sub_10013B31C(uint64_t a1, char a2, double a3)
{
  v5 = a1 + *(*a1 + 120);
  swift_beginAccess();
  *(v5 + 8) = a3;
  if (a2)
  {
    v6 = swift_beginAccess();
    __chkstk_darwin(v6);
    type metadata accessor for Gliss.Transition();
    swift_getFunctionTypeMetadata1();
    sub_1004BC3B4();

    swift_getWitnessTable();
    sub_1004BC204();
  }

  return sub_1001383C0();
}

uint64_t sub_10013B4F8(uint64_t a1, void *a2)
{
  v60 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v62 = a2;
  v59 = v4;
  v5 = sub_1004B6D14();
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  __chkstk_darwin(v5);
  v54 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_100604600);
  __chkstk_darwin(v8);
  v61 = &v54 - v9;
  v10 = sub_100003ABC(&qword_100604608);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v54 - v15;
  __chkstk_darwin(v14);
  v18 = (&v54 - v17);
  sub_1001418FC(5);
  if (qword_1005FFF88 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v19 = sub_1004B80B4();
    sub_100007084(v19, qword_1006174A8);

    v20 = sub_1004B8094();
    v21 = sub_1004BC9A4();

    v22 = os_log_type_enabled(v20, v21);
    v55 = v13;
    v56 = v8;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v64[0] = v24;
      *v23 = 136446210;
      v63 = a1;
      type metadata accessor for Gliss.Transition();
      swift_getWitnessTable();
      v25 = sub_1004BD934();
      v27 = sub_100012018(v25, v26, v64);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "✅ End of transition=%{public}s", v23, 0xCu);
      sub_100004C6C(v24);

      v3 = &swift_isaMask;
    }

    v28 = *(v62 + *((*v3 & *v62) + 0x88));
    v30 = v57;
    v29 = v58;
    if (v28)
    {
      v31 = *(v58 + 2);
      v31(v18, v28 + direct field offset for Gliss.Transition.id, v57);
      v32 = *(v29 + 56);
      v32(v18, 0, 1, v30);
    }

    else
    {
      v32 = *(v58 + 7);
      v32(v18, 1, 1, v57);
      v31 = *(v29 + 16);
    }

    v31(v16, a1 + direct field offset for Gliss.Transition.id, v30);
    v32(v16, 0, 1, v30);
    v33 = v56[12];
    v34 = v61;
    sub_10014076C(v18, v61);
    sub_10014076C(v16, v34 + v33);
    v35 = *(v29 + 48);
    if (v35(v34, 1, v30) == 1)
    {
      sub_100007214(v16, &qword_100604608);
      v36 = v61;
      sub_100007214(v18, &qword_100604608);
      v8 = &swift_isaMask;
      if (v35(v36 + v33, 1, v30) != 1)
      {
        goto LABEL_12;
      }

      sub_100007214(v36, &qword_100604608);
      v37 = v59;
LABEL_14:
      sub_10013FF64(0);
      goto LABEL_15;
    }

    v58 = v16;
    v38 = v55;
    sub_10014076C(v34, v55);
    if (v35(v34 + v33, 1, v30) == 1)
    {
      v39 = v29;
      sub_100007214(v58, &qword_100604608);
      v36 = v61;
      sub_100007214(v18, &qword_100604608);
      (*(v39 + 8))(v38, v30);
      v8 = &swift_isaMask;
LABEL_12:
      sub_100007214(v36, &qword_100604600);
      v37 = v59;
      goto LABEL_15;
    }

    v40 = v34 + v33;
    v41 = v34;
    v42 = v54;
    (*(v29 + 32))(v54, v40, v30);
    sub_1001407DC();
    v43 = v29;
    v44 = sub_1004BBD84();
    v45 = *(v43 + 8);
    v45(v42, v30);
    sub_100007214(v58, &qword_100604608);
    sub_100007214(v18, &qword_100604608);
    v45(v38, v30);
    sub_100007214(v41, &qword_100604608);
    v8 = &swift_isaMask;
    v37 = v59;
    if (v44)
    {
      goto LABEL_14;
    }

LABEL_15:
    v46 = *(*a1 + 152);
    v47 = swift_beginAccess();
    v64[0] = *(a1 + v46);
    __chkstk_darwin(v47);
    *(&v54 - 2) = *(v37 + 80);
    *(&v54 - 2) = a1;
    type metadata accessor for Gliss.Transition();
    swift_getFunctionTypeMetadata2();
    v3 = sub_1004BC3B4();

    swift_getWitnessTable();
    sub_1004BC204();

    v48 = v62;
    v49 = *((swift_isaMask & *v62) + 0x70);
    swift_beginAccess();
    v50 = *(v48 + v49);
    v13 = *(v50 + 16);

    if (!v13)
    {
    }

    v16 = 0;
    v18 = (v50 + 40);
    while (v16 < *(v50 + 16))
    {
      ++v16;
      v51 = *v18;
      v3 = *(v18 - 1);
      ObjectType = swift_getObjectType();
      sub_100135824(a1, ObjectType, v51);

      v18 += 2;
      if (v13 == v16)
      {
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_10013BD50(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1004B6D14();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v9);
  (*(v8 + 16))(v11, a5 + direct field offset for Gliss.Transition.id, v7);
  swift_beginAccess();
  sub_1001C045C(0, v11);
  return swift_endAccess();
}

void sub_10013BE94(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0xB0);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void sub_10013BEC4()
{
  v1 = *((swift_isaMask & *v0) + 0xB0);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v16[0] = v0;
    v4 = objc_allocWithZone(UIPanGestureRecognizer);
    type metadata accessor for Gliss.Coordinator();
    v3 = [v4 initWithTarget:sub_1004BD9A4() action:"handlePanGestureRecognizer:"];
    swift_unknownObjectRelease();
    v2 = 0;
  }

  v5 = v3;
  v6 = v2;
  [v5 setDelegate:v0];
  v7 = *((swift_isaMask & *v0) + 0xB0);
  v8 = *(v0 + v7);
  *(v0 + v7) = v5;
  v9 = v5;

  [v9 setAllowedScrollTypesMask:3];
  Gliss.Coordinator.gestureConfiguration.getter(v16);
  v10 = v16[0];
  sub_10003CC4C(v16[1]);
  sub_10003CC4C(v16[3]);
  sub_10003CC4C(v16[5]);
  v11 = [v9 view];
  if (v11)
  {
    v12 = v11;
    sub_100009130(0, &qword_100604610);
    if ((sub_1004BCFA4() & 1) == 0)
    {
      [v12 removeGestureRecognizer:v9];
    }
  }

  v13 = [v9 view];

  if (!v13 || (sub_100009130(0, &qword_100604610), v14 = v10, v15 = sub_1004BCFA4(), v13, v14, (v15 & 1) == 0))
  {
    [v10 addGestureRecognizer:v9];
  }
}

void sub_10013C11C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  v6 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v6 - 8);
  v293 = v286 - v7;
  v8 = *((v5 & v4) + 0x50);
  v312 = *((v5 & v4) + 0x58);
  v309 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1004BD174();
  v310 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v294 = v286 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v297 = v286 - v14;
  v15 = __chkstk_darwin(v13);
  v296 = v286 - v16;
  v17 = __chkstk_darwin(v15);
  v298 = v286 - v18;
  v19 = __chkstk_darwin(v17);
  v301 = v286 - v20;
  v21 = __chkstk_darwin(v19);
  v300 = v286 - v22;
  v313 = AssociatedTypeWitness;
  isa = AssociatedTypeWitness[-1].isa;
  v24 = __chkstk_darwin(v21);
  v302 = v286 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v292 = v286 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = v286 - v29;
  v31 = __chkstk_darwin(v28);
  v311 = v286 - v32;
  v291 = v33;
  __chkstk_darwin(v31);
  v307 = v34;
  v308 = v286 - v35;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v39 = v286 - v38;
  v40 = Gliss.Coordinator.dataSource.getter();
  if (!v40)
  {
    if (qword_1005FFF88 != -1)
    {
      swift_once();
    }

    v57 = sub_1004B80B4();
    sub_100007084(v57, qword_1006174A8);
    v313 = sub_1004B8094();
    v58 = sub_1004BC9A4();
    if (os_log_type_enabled(v313, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v313, v58, "No Data Source Set", v59, 2u);
    }

    v60 = v313;

    return;
  }

  v41 = v40;
  Gliss.Coordinator.gestureConfiguration.getter(v317);
  v42 = v317[0];
  sub_10003CC4C(v317[1]);
  sub_10003CC4C(v317[3]);
  sub_10003CC4C(v317[5]);
  v295 = a1;
  [a1 translationInView:v42];
  v44 = v43;
  v46 = v45;

  if (v44 == 0.0)
  {
    if (qword_1005FFF88 != -1)
    {
      swift_once();
    }

    v61 = sub_1004B80B4();
    sub_100007084(v61, qword_1006174A8);
    v62 = sub_1004B8094();
    v63 = sub_1004BC9A4();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *&v65 = COERCE_DOUBLE(swift_slowAlloc());
      v314 = *&v65;
      *v64 = 136446210;
      v318 = v44;
      v319 = v46;
      type metadata accessor for CGPoint(0);
      v66 = sub_1004BBF04();
      v68 = sub_100012018(v66, v67, &v314);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v62, v63, "Unable to compute direction from gesture's translation %{public}s", v64, 0xCu);
      sub_100004C6C(v65);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return;
  }

  v305 = isa;
  v47 = *(v2 + *((swift_isaMask & *v2) + 0x88));
  v299 = TupleTypeMetadata2;
  v303 = v2;
  v304 = v41;
  v306 = v39;
  if (v47)
  {
    v48 = *(*v47 + 120);
    swift_beginAccess();
    v49 = *(v47 + v48);
    v50 = v308;
    if (v49 == 2 || (((v44 >= 0.0) ^ v49) & 1) != 0)
    {

      v2 = v303;
      sub_10013FF64(0);
      Gliss.Coordinator.item.getter(v50);
      v56 = v309;
      (v312[3].isa)(v306, &v306[*(TupleTypeMetadata2 + 48)], v50, v309);
    }

    else
    {
      v51 = *(*v47 + 104);
      swift_beginAccess();
      (v305[2])(v50, v47 + v51, v313);
      v52 = v37;
      v53 = v306;
      v54 = v312[3].isa;
      v55 = *(v299 + 48);

      v56 = v309;
      (v54)(v53, &v53[v55], v50);
      v37 = v52;
      TupleTypeMetadata2 = v299;

      v2 = v303;
    }
  }

  else
  {
    v50 = v308;
    Gliss.Coordinator.item.getter(v308);
    v69 = &v39[*(TupleTypeMetadata2 + 48)];
    v70 = v39;
    v56 = v309;
    (v312[3].isa)(v70, v69, v50, v309);
  }

  v71 = v305;
  v72 = v305[1];
  v288 = (v305 + 1);
  v289 = v37;
  v72(v50, v313);
  Gliss.Coordinator.gestureConfiguration.getter(&v318);
  v73 = v318;
  sub_10003CC4C(v319);
  sub_10003CC4C(v320);
  sub_10003CC4C(v321);
  v74 = [*&v73 effectiveUserInterfaceLayoutDirection];
  v290 = v72;
  v287 = v73;
  if (v44 < 0.0)
  {
    v75 = v311;
    if (!v74)
    {
      goto LABEL_30;
    }

    if (v74 != 1)
    {
LABEL_33:
      Gliss.Coordinator.item.getter(v30);
      goto LABEL_39;
    }

LABEL_26:
    v76 = v301;
    (*(v310 + 2))(v301, v306, v307);
    v77 = v71[6];
    if (v77(v76, 1, v313) != 1)
    {
      (v71[4])(v30, v76, v313);
      v2 = v303;
      v56 = v309;
      goto LABEL_39;
    }

    v78 = v303;
    Gliss.Coordinator.item.getter(v30);
    v79 = v77(v76, 1, v313);
    v2 = v78;
    v80 = v79 == 1;
    v81 = v76;
    v56 = v309;
    if (v80)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  v75 = v311;
  if (!v74)
  {
    goto LABEL_26;
  }

  if (v74 != 1)
  {
    goto LABEL_33;
  }

LABEL_30:
  v82 = &v306[*(TupleTypeMetadata2 + 48)];
  v83 = v300;
  (*(v310 + 2))(v300, v82, v307);
  v84 = v71[6];
  if (v84(v83, 1, v313) != 1)
  {
    (v71[4])(v30, v83, v313);
    TupleTypeMetadata2 = v299;
    v2 = v303;
    goto LABEL_39;
  }

  v85 = v303;
  Gliss.Coordinator.item.getter(v30);
  v86 = v84(v83, 1, v313);
  v2 = v85;
  v80 = v86 == 1;
  v81 = v83;
  TupleTypeMetadata2 = v299;
  if (!v80)
  {
LABEL_32:
    (*(v310 + 1))(v81, v307);
  }

LABEL_39:
  v87 = v71[4];
  v87(v75, v30, v313);
  if ((v312[4].isa)(v75, v56))
  {
    v286[1] = v71 + 4;
    v88 = TupleTypeMetadata2;
    v89 = *&v287;
    [v295 velocityInView:v89];
    v91 = v90;
    v93 = v92;
    v94 = sub_100138C54(v75, v44 >= 0.0);
    v302 = v89;
    [v89 bounds];
    Width = CGRectGetWidth(v323);
    v96 = v94 + *(*v94 + 168);
    swift_beginAccess();
    v97 = *(v96 + 32);
    v98 = v97 != 2;
    v99 = v98 & v97;
    if ((v98 & *(v96 + 33)) != 0)
    {
      v100 = 256;
    }

    else
    {
      v100 = 0;
    }

    *v96 = v44;
    *(v96 + 8) = v46;
    *(v96 + 16) = v91;
    *(v96 + 24) = v93;
    *(v96 + 32) = v100 | v99;
    v101 = *(*v94 + 128);
    swift_beginAccess();
    v102 = *(v94 + v101);
    v301 = v94;
    if (v102 <= 1)
    {
      v103 = v87;
      if (qword_1005FFF88 != -1)
      {
        swift_once();
      }

      v104 = sub_1004B80B4();
      v300 = sub_100007084(v104, qword_1006174A8);
      v105 = sub_1004B8094();
      v106 = sub_1004BC9A4();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&_mh_execute_header, v105, v106, "🤏 Swipe Gesture Began", v107, 2u);
      }

      v108 = sub_1004B8094();
      v109 = sub_1004BC9A4();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *&v111 = COERCE_DOUBLE(swift_slowAlloc());
        v314 = *&v111;
        *v110 = 136446210;
        LOBYTE(v316[0]) = v44 >= 0.0;
        v112 = sub_1004BBF04();
        v114 = sub_100012018(v112, v113, &v314);

        *(v110 + 4) = v114;
        v94 = v301;
        _os_log_impl(&_mh_execute_header, v108, v109, "   Direction=%{public}s", v110, 0xCu);
        sub_100004C6C(v111);
      }

      v115 = sub_1004B8094();
      v116 = sub_1004BC9A4();

      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *&v118 = COERCE_DOUBLE(swift_slowAlloc());
        v314 = *&v118;
        *v117 = 136446210;
        v316[0] = v94;
        swift_getAssociatedConformanceWitness();
        type metadata accessor for Gliss.Transition();
        swift_getWitnessTable();
        v119 = sub_1004BD934();
        v121 = sub_100012018(v119, v120, &v314);

        *(v117 + 4) = v121;
        v94 = v301;
        _os_log_impl(&_mh_execute_header, v115, v116, "   Transition=%{public}s", v117, 0xCu);
        sub_100004C6C(v118);
      }

      v88 = v299;
      v87 = v103;
      v2 = v303;
      sub_100139970(v94);
      v75 = v311;
    }

    v122 = [v295 state];
    if (v122 <= 2)
    {
      if (v122 < 2)
      {
        v123 = sub_1001389C4();
        [v123 prepare];

        goto LABEL_69;
      }

      v148 = v290;
      if (v122 == 2)
      {
LABEL_69:
        if (qword_1005FFF88 != -1)
        {
          swift_once();
        }

        v157 = sub_1004B80B4();
        v158 = sub_100007084(v157, qword_1006174A8);
        v159 = sub_1004B8094();
        v160 = sub_1004BC974();
        if (os_log_type_enabled(v159, v160))
        {
          v161 = swift_slowAlloc();
          *v161 = 0;
          _os_log_impl(&_mh_execute_header, v159, v160, "🤏 Swipe Gesture Updated", v161, 2u);
        }

        v162 = sub_1004B8094();
        v163 = sub_1004BC974();
        v164 = os_log_type_enabled(v162, v163);
        v312 = v158;
        if (v164)
        {
          v165 = swift_slowAlloc();
          v166 = swift_slowAlloc();
          v316[0] = v166;
          *v165 = 136446210;
          v314 = v44;
          v315 = v46;
          type metadata accessor for CGPoint(0);
          v167 = sub_1004BBF04();
          v169 = sub_100012018(v167, v168, v316);

          *(v165 + 4) = v169;
          _os_log_impl(&_mh_execute_header, v162, v163, "   Translation=%{public}s", v165, 0xCu);
          sub_100004C6C(v166);
        }

        v170 = sub_1004B8094();
        v171 = sub_1004BC974();
        v172 = os_log_type_enabled(v170, v171);
        v173 = v302;
        v174 = v310;
        if (v172)
        {
          v175 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          v316[0] = v176;
          *v175 = 136446210;
          v314 = v91;
          v315 = v93;
          type metadata accessor for CGPoint(0);
          v177 = sub_1004BBF04();
          v179 = sub_100012018(v177, v178, v316);

          *(v175 + 4) = v179;
          _os_log_impl(&_mh_execute_header, v170, v171, "   Velocity=%{public}s", v175, 0xCu);
          sub_100004C6C(v176);
        }

        v180 = v298;
        [v173 bounds];
        v181 = fabs(v44);
        v182 = v181 * (1.0 / CGRectGetWidth(v324));
        v183 = *(*v94 + 112);
        swift_beginAccess();
        v184 = *(v174 + 2);
        v309 = v183;
        v185 = v94 + v183;
        v186 = v307;
        v187 = v184;
        v184(v180, v185, v307);
        v188 = v305[6];
        v305 += 6;
        v189 = v188;
        if (v188(v180, 1, v313) == 1)
        {

          v190 = *(v174 + 1);
          v190(v180, v186);
          v191 = v186;
          v192 = v187;
          v193 = v189;
        }

        else
        {
          v190 = *(v174 + 1);
          v190(v180, v186);
          v194 = v94 + *(*v94 + 120);
          swift_beginAccess();
          v195 = *(v194 + 8);
          *(v194 + 8) = v182;
          v196 = sub_1004B8094();
          v197 = sub_1004BC974();
          if (os_log_type_enabled(v196, v197))
          {
            v198 = swift_slowAlloc();
            *v198 = 134349056;
            *(v198 + 4) = v182;
            _os_log_impl(&_mh_execute_header, v196, v197, "   Progression Value=%{public}f", v198, 0xCu);
          }

          v192 = v187;
          if (v195 >= 0.45)
          {
            v193 = v189;
            if (v195 <= 0.55)
            {
              v231 = v309;
              if (v182 < 0.45 || v182 > 0.55)
              {
                v279 = sub_1001389C4();
                [v295 locationInView:v173];
                v281 = v280;
                v283 = v282;

                [v279 impactOccurredAtLocation:{v281, v283}];
                v285 = sub_100141F70();
                if (*(v284 + 32) != 2)
                {
                  *(v284 + 32) = v182 >= 0.55;
                }

                (v285)(&v314, 0);
                v191 = v307;
              }

              else
              {

                v191 = v307;
              }

LABEL_110:
              if (v182 <= 1.0)
              {
                v233 = 0;
              }

              else
              {
                v232 = v296;
                v192(v296, &v301[v231], v191);
                v233 = v193(v232, 1, v313) != 1;
                v190(v232, v191);
              }

              v235 = sub_100141F70();
              if (*(v234 + 32) != 2)
              {
                *(v234 + 33) = v233;
              }

              (v235)(&v314, 0);
              v236 = v301;
              v237 = v297;
              v192(v297, &v301[v231], v191);
              v238 = v236;
              LODWORD(v236) = v193(v237, 1, v313) == 1;
              v190(v237, v191);
              v239 = v289;
              v240 = v290;
              v241 = v299;
              v242 = v306;
              if (((v236 | v233) & 1) == 0)
              {
                goto LABEL_125;
              }

              v243 = v302;
              [v302 bounds];
              v244 = CGRectGetWidth(v325) * 0.2;
              v245 = 0.0;
              if (v233)
              {
                [v243 bounds];
                v245 = CGRectGetWidth(v326);
              }

              v246 = v244 * ((v181 - v245) / (v244 + v244 + v181 - v245));
              [v243 bounds];
              v247 = 1.0 / CGRectGetWidth(v327) * v246;
              if (v233)
              {
                v248 = &v238[*(*v238 + 120)];
                swift_beginAccess();
                *(v248 + 1) = v247 + 1.0;

                v249 = sub_1004B8094();
                v250 = sub_1004BC974();

                if (os_log_type_enabled(v249, v250))
                {
                  v251 = swift_slowAlloc();
                  *v251 = 134349056;
                  *(v251 + 4) = *(v248 + 1);
                  v252 = "   Over-swiping Progression Value=%{public}f";
LABEL_123:
                  _os_log_impl(&_mh_execute_header, v249, v250, v252, v251, 0xCu);

                  v241 = v299;
                }
              }

              else
              {
                v253 = &v238[*(*v238 + 120)];
                swift_beginAccess();
                *(v253 + 1) = v247;

                v249 = sub_1004B8094();
                v250 = sub_1004BC974();

                if (os_log_type_enabled(v249, v250))
                {
                  v251 = swift_slowAlloc();
                  *v251 = 134349056;
                  *(v251 + 4) = *(v253 + 1);
                  v252 = "   Eased Progression Value=%{public}f";
                  goto LABEL_123;
                }
              }

LABEL_125:
              sub_1001383B4();

              swift_unknownObjectRelease();

              v240(v311, v313);
              (*(v239 + 8))(v242, v241);
              return;
            }

            v191 = v307;
          }

          else
          {

            v191 = v307;
            v193 = v189;
          }
        }

        v231 = v309;
        goto LABEL_110;
      }

      goto LABEL_92;
    }

    v147 = v305;
    if (v122 != 3)
    {
      if (v122 == 4)
      {

        v148 = v290;
        if (qword_1005FFF88 != -1)
        {
          swift_once();
        }

        v208 = sub_1004B80B4();
        sub_100007084(v208, qword_1006174A8);
        v150 = sub_1004B8094();
        v151 = sub_1004BC9A4();
        if (!os_log_type_enabled(v150, v151))
        {
          goto LABEL_98;
        }

        v152 = swift_slowAlloc();
        *v152 = 0;
        v153 = "🤏❎ Swipe Gesture Cancelled";
      }

      else
      {
        v148 = v290;
        if (v122 != 5)
        {
LABEL_92:
          swift_unknownObjectRelease();

          v207 = v302;

LABEL_99:
          v148(v75, v313);
LABEL_100:
          (*(v289 + 8))(v306, v88);
          return;
        }

        if (qword_1005FFF88 != -1)
        {
          swift_once();
        }

        v149 = sub_1004B80B4();
        sub_100007084(v149, qword_1006174A8);
        v150 = sub_1004B8094();
        v151 = sub_1004BC9A4();
        if (!os_log_type_enabled(v150, v151))
        {
LABEL_98:

          sub_100139C78(v94, 1);
          swift_unknownObjectRelease();

          goto LABEL_99;
        }

        v152 = swift_slowAlloc();
        *v152 = 0;
        v153 = "🤏❌ Swipe Gesture Failed";
      }

      _os_log_impl(&_mh_execute_header, v150, v151, v153, v152, 2u);
      v88 = v299;

      goto LABEL_98;
    }

    if (qword_1005FFF88 != -1)
    {
      swift_once();
    }

    v199 = sub_1004B80B4();
    sub_100007084(v199, qword_1006174A8);
    v200 = sub_1004B8094();
    v201 = sub_1004BC9A4();
    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      *v202 = 0;
      _os_log_impl(&_mh_execute_header, v200, v201, "🤏✅ Swipe Gesture Ended", v202, 2u);
      v147 = v305;
      v2 = v303;
    }

    if (Width * 0.5 >= fabs(v91))
    {
      v203 = v94 + *(*v94 + 120);
      swift_beginAccess();
      if (*(v203 + 8) < 0.5)
      {

        v204 = sub_1004B8094();
        v205 = sub_1004BC9A4();
        if (os_log_type_enabled(v204, v205))
        {
          v206 = swift_slowAlloc();
          *v206 = 0;
          _os_log_impl(&_mh_execute_header, v204, v205, "   Hasn't reached translation thresholds. Cancelling ❎", v206, 2u);
        }

        sub_100139C78(v94, 1);
        swift_unknownObjectRelease();

        v290(v75, v313);
        goto LABEL_139;
      }
    }

    if (v44 < 0.0)
    {
      v209 = v310;
      v210 = v294;
      if (v91 <= 0.0)
      {
LABEL_103:
        v211 = *(*v94 + 112);
        swift_beginAccess();
        v212 = v94 + v211;
        v213 = v307;
        (*(v209 + 2))(v210, v212, v307);
        if ((v147[6])(v210, 1, v313) == 1)
        {
          (*(v209 + 1))(v210, v213);
          v214 = sub_100138AA0();
          [v214 prepare];

          v215 = *(v2 + *((swift_isaMask & *v2) + 0xA0));
          v216 = v302;
          [v295 locationInView:v302];
          v218 = v217;
          v220 = v219;

          [v215 impactOccurredWithIntensity:0.5 atLocation:{v218, v220}];
          sub_100139C78(v94, 1);
          v221 = sub_10013FF04();
          if (*(v221 + 16))
          {
            v222 = direct field offset for Gliss.Transition.id;

            v223 = sub_100034820(v94 + v222);
            v224 = v290;
            if (v225)
            {
              v226 = *(*(v221 + 56) + 8 * v223);

              sub_100009130(0, &qword_100603570);
              v227 = sub_1004BCB44();
              [v226 duration];
              v228 = v224;
              v229 = swift_allocObject();
              *(v229 + 16) = v2;
              v230 = v2;
              OS_dispatch_queue.asyncAfter(_:block:)(sub_100140430, v229);

              swift_unknownObjectRelease();

              v228(v75, v313);
LABEL_139:
              (*(v289 + 8))(v306, v299);
              return;
            }
          }

          else
          {

            v224 = v290;
          }

          swift_unknownObjectRelease();

          v224(v75, v313);
          goto LABEL_139;
        }

        v258 = v210;
        v259 = v302;

        v260 = v292;
        v261 = v258;
        v262 = v313;
        v87(v292, v261, v313);
        v263 = sub_1004BC4B4();
        (*(*(v263 - 8) + 56))(v293, 1, 1, v263);
        (v147[2])(v308, v260, v262);
        sub_1004BC474();
        v310 = v259;

        v264 = v304;
        swift_unknownObjectRetain();
        v305 = v2;
        v307 = v295;
        v303 = sub_1004BC464();
        v265 = (*(v147 + 80) + 56) & ~*(v147 + 80);
        v266 = (v291 + v265 + 7) & 0xFFFFFFFFFFFFFFF8;
        v267 = (v266 + 15) & 0xFFFFFFFFFFFFFFF8;
        v268 = (v267 + 15) & 0xFFFFFFFFFFFFFFF8;
        v269 = v87;
        v270 = (v268 + 15) & 0xFFFFFFFFFFFFFFF8;
        v271 = swift_allocObject();
        v271[2] = v303;
        v271[3] = &protocol witness table for MainActor;
        v272 = v308;
        v273 = v312;
        v271[4] = v309;
        v271[5] = v273;
        v271[6] = v264;
        v274 = v271 + v265;
        v275 = v313;
        v269(v274, v272, v313);
        *(v271 + v266) = v305;
        *(v271 + v267) = v301;
        v276 = v310;
        *(v271 + v268) = v310;
        v277 = v271 + v270;
        *v277 = v91;
        *(v277 + 1) = v93;
        *(v271 + ((v270 + 23) & 0xFFFFFFFFFFFFFFF8)) = v307;
        sub_1000FD6BC(0, 0, v293, &unk_1004CF940, v271);

        swift_unknownObjectRelease();

        v278 = v290;
        v290(v292, v275);
        v278(v311, v275);
        goto LABEL_139;
      }
    }

    else
    {
      v209 = v310;
      v210 = v294;
      if (v91 >= 0.0)
      {
        goto LABEL_103;
      }
    }

    v254 = sub_1004B8094();
    v255 = sub_1004BC9A4();
    v256 = os_log_type_enabled(v254, v255);
    v88 = v299;
    if (v256)
    {
      v257 = swift_slowAlloc();
      *v257 = 0;
      _os_log_impl(&_mh_execute_header, v254, v255, "   Going opposite direction. Cancelling ❎", v257, 2u);
      v88 = v299;
    }

    sub_100139C78(v94, 1);
    swift_unknownObjectRelease();

    v290(v75, v313);
    goto LABEL_100;
  }

  v124 = v306;
  if (qword_1005FFF88 != -1)
  {
    swift_once();
  }

  v125 = sub_1004B80B4();
  sub_100007084(v125, qword_1006174A8);
  v126 = v71[2];
  v127 = v302;
  v128 = v75;
  v126(v302, v75, v313);
  v129 = sub_1004B8094();
  v130 = sub_1004BC9A4();
  v131 = os_log_type_enabled(v129, v130);
  v132 = v289;
  if (v131)
  {
    v133 = swift_slowAlloc();
    v312 = v129;
    v134 = v133;
    *&v135 = COERCE_DOUBLE(swift_slowAlloc());
    v314 = *&v135;
    *v134 = 136446210;
    v136 = v313;
    v126(v308, v127, v313);
    v137 = sub_1004BBF04();
    v138 = v136;
    v139 = v132;
    v141 = v140;
    v142 = v127;
    v143 = v290;
    v290(v142, v138);
    v144 = sub_100012018(v137, v141, &v314);

    *(v134 + 4) = v144;
    v145 = v130;
    v146 = v312;
    _os_log_impl(&_mh_execute_header, v312, v145, "DataSource doesn't allow swipe for item=%{public}s", v134, 0xCu);
    sub_100004C6C(v135);

    swift_unknownObjectRelease();
    v143(v311, v138);
    (*(v139 + 8))(v306, v299);
  }

  else
  {

    swift_unknownObjectRelease();
    v154 = v127;
    v155 = v313;
    v156 = v290;
    v290(v154, v313);
    v156(v128, v155);
    (*(v132 + 8))(v124, TupleTypeMetadata2);
  }
}

uint64_t sub_10013E41C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 112) = v21;
  *(v9 + 104) = a1;
  *(v9 + 88) = a8;
  *(v9 + 96) = a9;
  *(v9 + 72) = a6;
  *(v9 + 80) = a7;
  v11 = *a7;
  v12 = swift_isaMask;
  v13 = *(*a8 + 80);
  *(v9 + 120) = v13;
  *(v9 + 128) = *(v13 - 8);
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = sub_1004BC474();
  *(v9 + 152) = sub_1004BC464();
  v14 = *((v12 & v11) + 0x58);
  *(v9 + 160) = v14;
  v15 = *(v14 + 40);
  v16 = *((v12 & v11) + 0x50);
  *(v9 + 168) = v16;
  v19 = (v15 + *v15);
  v17 = swift_task_alloc();
  *(v9 + 176) = v17;
  *v17 = v9;
  v17[1] = sub_10013E628;

  return v19(a6, v16, v14);
}

uint64_t sub_10013E628()
{
  *(*v1 + 184) = v0;

  v3 = sub_1004BC3E4();
  if (v0)
  {
    v4 = sub_10013EAB8;
  }

  else
  {
    v4 = sub_10013E780;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10013E780()
{
  v31 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v29 = *(v0 + 160);

  (*(v2 + 16))(v1, v6, v3);
  sub_100136CFC(v1);
  v7 = *((swift_isaMask & *v5) + 0x70);
  swift_beginAccess();
  v8 = *(v5 + v7);
  v9 = swift_task_alloc();
  v9[1] = vextq_s8(v29, v29, 8uLL);
  v9[2].i64[0] = v6;
  v9[2].i64[1] = v4;

  sub_100135C2C(sub_100140834, v9, v8);

  sub_10013AC20(v4, 1);
  v10 = v4 + *(*v4 + 168);
  swift_beginAccess();
  v11 = *(v10 + 32);
  if (v11 != 2 && (v11 & 1) == 0)
  {
    v12 = *(v0 + 112);
    v13 = *(v0 + 104);
    v14 = *(v0 + 96);
    [v14 bounds];
    v15 = fmax(fmin(fabs(v13) * (1.0 / (CGRectGetWidth(v33) * 4.0)), 1.0), 0.25);
    v16 = sub_1001389C4();
    [v12 locationInView:v14];
    [v16 impactOccurredWithIntensity:v15 atLocation:{v17, v18}];

    if (qword_1005FFF88 != -1)
    {
      swift_once();
    }

    v19 = sub_1004B80B4();
    sub_100007084(v19, qword_1006174A8);
    v20 = sub_1004B8094();
    v21 = sub_1004BC9A4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136446210;
      v24 = sub_1004BC5C4();
      v26 = sub_100012018(v24, v25, &v30);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "   Feedback Intensity=%{public}s", v22, 0xCu);
      sub_100004C6C(v23);
    }
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10013EAB8()
{
  v19 = v0;

  if (qword_1005FFF88 != -1)
  {
    swift_once();
  }

  v1 = sub_1004B80B4();
  sub_100007084(v1, qword_1006174A8);
  swift_errorRetain();
  v2 = sub_1004B8094();
  v3 = sub_1004BC984();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    v0[8] = v4;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v7 = sub_1004BBF04();
    v9 = sub_100012018(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "   ❌ Failed to commit with error=%{public}s", v5, 0xCu);
    sub_100004C6C(v6);
  }

  v10 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  v14 = sub_100138B7C();
  [v14 prepare];

  v15 = *(v13 + *((swift_isaMask & *v13) + 0xA8));
  [v10 locationInView:v11];
  [v15 notificationOccurred:2 atLocation:?];

  sub_100139C78(v12, 1);

  v16 = v0[1];

  return v16();
}

void sub_10013ED18(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10013C11C(v4);
}

Swift::Bool __swiftcall Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer a1)
{
  v2 = *(v1 + *((swift_isaMask & *v1) + 0xB0));
  if (!v2)
  {
    return 1;
  }

  sub_100009130(0, &qword_100604490);
  v4 = v2;
  if ((sub_1004BCFA4() & 1) == 0)
  {

    return 1;
  }

  v5 = [(objc_class *)a1.super.isa view];
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  [v4 velocityInView:v6];
  v8 = v7;
  v10 = v9;
  if (fabs(v9) < fabs(v7))
  {
    [(objc_class *)a1.super.isa locationInView:v6];
    v8 = v11;
    v10 = v12;

    Gliss.Coordinator.gestureConfiguration.getter(v56);
    v13 = v56[1];

    sub_10003CC4C(v56[3]);
    sub_10003CC4C(v56[5]);
    if (v13)
    {
      v14 = v13(v6);
      v15 = v14 + 56;
      v16 = -*(v14 + 16);
      v17 = -1;
      while (1)
      {
        if (v16 + v17 == -1)
        {
          sub_10003CC4C(v13);

          v20 = 0;
          goto LABEL_20;
        }

        if (++v17 >= *(v14 + 16))
        {
          break;
        }

        v18 = v15 + 32;
        v65.x = v8;
        v65.y = v10;
        v19 = CGRectContainsPoint(*(v15 - 24), v65);
        v15 = v18;
        if (v19)
        {
          sub_10003CC4C(v13);

          v20 = 1;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    [v6 bounds];
    v66.x = v8;
    v66.y = v10;
    v20 = CGRectContainsPoint(v67, v66);
LABEL_20:
    Gliss.Coordinator.gestureConfiguration.getter(v57);
    v30 = v58;
    v31 = v57[0];
    sub_10002F518(v58);

    sub_10003CC4C(v57[1]);
    sub_10003CC4C(v30);
    sub_10003CC4C(v59);
    if (v30)
    {
      v32 = v30(v6, v8, v10);
      sub_10003CC4C(v30);
      if (v20)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v32 = 1;
      if (v20)
      {
LABEL_22:
        if (v32)
        {
LABEL_23:

LABEL_37:
          return v20 & v32;
        }

LABEL_32:
        if (qword_1005FFF88 != -1)
        {
          swift_once();
        }

        v47 = sub_1004B80B4();
        sub_100007084(v47, qword_1006174A8);
        v48 = sub_1004B8094();
        v49 = sub_1004BC9A4();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v55 = v51;
          *v50 = 136446210;
          type metadata accessor for CGPoint(0);
          v52 = sub_1004BBF04();
          v54 = sub_100012018(v52, v53, &v55);

          *(v50 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v48, v49, "🤏🙂‍↔️ Swipe Gesture ignored: hit test not allowed at location %{public}s", v50, 0xCu);
          sub_100004C6C(v51);
        }

        goto LABEL_37;
      }
    }

    if (qword_1005FFF88 != -1)
    {
      swift_once();
    }

    v33 = sub_1004B80B4();
    sub_100007084(v33, qword_1006174A8);
    v34 = v1;
    v35 = sub_1004B8094();
    v36 = sub_1004BC9A4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v37 = 136446466;
      v60 = v8;
      v61 = v10;
      type metadata accessor for CGPoint(0);
      v38 = sub_1004BBF04();
      v40 = sub_100012018(v38, v39, &v55);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2082;
      Gliss.Coordinator.gestureConfiguration.getter(&v60);
      v42 = v61;
      v41 = v62;

      sub_10003CC4C(v63);
      sub_10003CC4C(v64);
      if (v42 != 0.0)
      {
        v43 = swift_allocObject();
        *(v43 + 16) = v42;
        *(v43 + 24) = v41;
      }

      sub_100003ABC(&qword_100604498);
      v44 = sub_1004BBF04();
      v46 = sub_100012018(v44, v45, &v55);

      *(v37 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v35, v36, "🤏🙂‍↔️ Swipe Gesture ignored: outside allowed areas %{public}s, %{public}s", v37, 0x16u);
      swift_arrayDestroy();
    }

    if (v32)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (qword_1005FFF88 != -1)
  {
LABEL_39:
    swift_once();
  }

  v22 = sub_1004B80B4();
  sub_100007084(v22, qword_1006174A8);
  v23 = sub_1004B8094();
  v24 = sub_1004BC9A4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v57[0] = v26;
    *v25 = 136446210;
    v60 = v8;
    v61 = v10;
    type metadata accessor for CGPoint(0);
    v27 = sub_1004BBF04();
    v29 = sub_100012018(v27, v28, v57);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "🤏🙂‍↔️ Swipe Gesture ignored: horizontal velocity too low %{public}s", v25, 0xCu);
    sub_100004C6C(v26);
  }

  return 0;
}

uint64_t sub_10013F460(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(v4);

  return a1 & 1;
}

uint64_t sub_10013F4B8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_10013FFCC(v7);

  return v9 & 1;
}

id Gliss.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Gliss.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10013F604(char *a1)
{
  swift_unknownObjectWeakDestroy();
  v2 = &a1[*((swift_isaMask & *a1) + 0x68)];
  v3 = *(v2 + 1);
  v4 = *(v2 + 3);
  v5 = *(v2 + 5);

  sub_10003CC4C(v3);
  sub_10003CC4C(v4);
  sub_10003CC4C(v5);

  v6 = *((swift_isaMask & *a1) + 0x78);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v6], AssociatedTypeWitness);
  v8 = *((swift_isaMask & *a1) + 0x80);
  v9 = sub_1004BD174();
  (*(*(v9 - 8) + 8))(&a1[v8], v9);

  v10 = *&a1[*((swift_isaMask & *a1) + 0xB0)];
}

void sub_10013F8E0(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

id sub_10013F944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = swift_isaMask;
  swift_unknownObjectWeakInit();
  v9 = *((swift_isaMask & *v4) + 0x70);
  *&v4[v9] = _swiftEmptyArrayStorage;
  v10 = *((swift_isaMask & *v4) + 0x80);
  v27 = *((v8 & v7) + 0x58);
  v26 = *((v8 & v7) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  (*(v12 + 56))(&v4[v10], 1, 1, AssociatedTypeWitness);
  *&v4[*((swift_isaMask & *v4) + 0x88)] = 0;
  v13 = *((swift_isaMask & *v4) + 0x90);
  *&v4[v13] = sub_10003D7D4(_swiftEmptyArrayStorage);
  *&v4[*((swift_isaMask & *v4) + 0x98)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xA0)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xA8)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xB0)] = 0;
  (*(v12 + 16))(&v4[*((swift_isaMask & *v4) + 0x78)], a1, AssociatedTypeWitness);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *(a3 + 24);
  v25 = *(a3 + 40);
  v17 = *(a3 + 48);
  v18 = &v4[*((swift_isaMask & *v4) + 0x68)];
  v19 = *(a3 + 16);
  *v18 = *a3;
  *(v18 + 1) = v19;
  *(v18 + 2) = *(a3 + 32);
  *(v18 + 6) = v17;
  swift_beginAccess();
  *&v4[v9] = a4;
  v20 = v14;
  sub_10002F518(v15);
  sub_10002F518(v16);
  sub_10002F518(v25);

  v30 = v26;
  v31 = v27;
  v32 = a1;
  sub_100135C2C(sub_100140B10, v29, a4);

  v21 = type metadata accessor for Gliss.Coordinator();
  v33.receiver = v4;
  v33.super_class = v21;
  v22 = objc_msgSendSuper2(&v33, "init");
  sub_10013BEC4();

  return v22;
}

uint64_t sub_10013FCDC()
{

  return swift_deallocObject();
}

void sub_10013FD1C(id a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    sub_10013FD30(a1, a2, a3);
  }
}

void sub_10013FD30(id a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
  }
}

id sub_10013FD44(id result, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_10013FD58(result, a2, a3);
  }

  return result;
}

id sub_10013FD58(id result, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
    return result;
  }

  return result;
}

uint64_t sub_10013FD6C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  v7 = *(v0 + v6 + 16);
  if (v7 <= 0xFD)
  {
    sub_10013FD30(*(v0 + v6), *(v0 + v6 + 8), v7);
  }

  return swift_deallocObject();
}

void sub_10013FE3C(uint64_t *a1, uint64_t a2)
{
  v3 = *(*(*a1 + 80) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_100137BCC(a1, a2, v2 + v4, *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_10013FED0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10013FF04()
{
  v1 = *((swift_isaMask & *v0) + 0x90);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10013FF64(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x88);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;

  sub_100138488(v3);
}

uint64_t sub_10013FFCC(void *a1)
{
  Gliss.Coordinator.gestureConfiguration.getter(v18);

  sub_10003CC4C(v18[1]);
  sub_10003CC4C(v18[3]);
  v2 = v19;
  if (!v19)
  {
    return 1;
  }

  v3 = v19(a1);
  sub_10003CC4C(v2);
  if (v3)
  {
    return 1;
  }

  if (qword_1005FFF88 != -1)
  {
    swift_once();
  }

  v5 = sub_1004B80B4();
  sub_100007084(v5, qword_1006174A8);
  v6 = a1;
  v7 = sub_1004B8094();
  v8 = sub_1004BC9A4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v11 = v6;
    v12 = [v11 description];
    v13 = sub_1004BBE64();
    v15 = v14;

    v16 = sub_100012018(v13, v15, &v17);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "🤏🙂‍↔️ Swipe Gesture ignored: conflicts with other gesture: %{public}s", v9, 0xCu);
    sub_100004C6C(v10);
  }

  return 0;
}

uint64_t sub_1001401F4()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = sub_1004BD174();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100140310()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10014034C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100140394(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1001403F8()
{

  return swift_deallocObject();
}

void sub_100140430()
{
  v0 = sub_100138AA0();
  [v0 impactOccurredWithIntensity:1.0 atLocation:{0.0, 0.0}];
}

uint64_t sub_10014048C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1001405C8(uint64_t a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v5);
  v11 = v1[6];
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_1000136EC;

  return sub_10013E41C(v14, a1, v8, v9, v11, v1 + v4, v10, v12, v13);
}

uint64_t sub_10014076C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100604608);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001407DC()
{
  result = qword_100601B40;
  if (!qword_100601B40)
  {
    sub_1004B6D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601B40);
  }

  return result;
}

uint64_t sub_10014084C(uint64_t a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *v2;
  v5 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return sub_100135920(v3, v2, ObjectType, *(v4 + 80), v5);
}

uint64_t sub_100140920(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10014093C()
{

  return swift_deallocObject();
}

uint64_t sub_1001409C0()
{

  return swift_deallocObject();
}

uint64_t sub_100140A40(uint64_t (**a1)(uint64_t *, char *))
{
  v2 = *a1;
  v5 = *(v1 + 32);
  v4 = 1;
  return v2(&v5, &v4);
}

uint64_t sub_100140AA8(uint64_t (**a1)(uint64_t *))
{
  v2 = *a1;
  v4 = *(v1 + 32);
  return v2(&v4);
}

uint64_t sub_100140BE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v10 = swift_allocObject();
  sub_10014104C(a1, a2, a3, a4, a5);
  return v10;
}

id sub_100140C5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v39 = *&a3;
  v9 = *(*a1 + 80);
  v10 = sub_1004BD174();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v39 - v13;
  if ((a5 >> 6) > 1u)
  {
    if (a5 >> 6 == 2)
    {
      v19 = v39;

      return *&v19;
    }

    else
    {
      v24 = v12;
      if (UIAccessibilityIsReduceMotionEnabled() || (v25 = *(*a1 + 120), swift_beginAccess(), *(a1 + v25) == 2))
      {
        v26 = [objc_allocWithZone(UICubicTimingParameters) initWithAnimationCurve:0];
        v27 = objc_allocWithZone(UIViewPropertyAnimator);
        v28 = [v27 initWithDuration:v26 timingParameters:{0.25, *&v39}];
      }

      else
      {
        v29 = a1 + *(*a1 + 168);
        swift_beginAccess();
        if (*(v29 + 32) == 2)
        {
          [a2 bounds];
          v30 = CGRectGetWidth(v41) * 0.5;
        }

        else
        {
          v30 = *(v29 + 16);
        }

        v31 = fabs(v30);
        [a2 bounds];
        Width = CGRectGetWidth(v42);
        v33 = fabs(*v29);
        if (*(v29 + 32) == 2)
        {
          v33 = 0.0;
        }

        v34 = v31 / (Width - v33);
        v35 = *(*a1 + 112);
        swift_beginAccess();
        (*(v11 + 16))(v14, a1 + v35, v24);
        if ((*(*(v9 - 8) + 48))(v14, 1, v9) == 1)
        {
          v36 = 0.5;
        }

        else
        {
          v36 = 0.8;
        }

        (*(v11 + 8))(v14, v24);
        v26 = [objc_allocWithZone(UISpringTimingParameters) initWithDampingRatio:v36 initialVelocity:{v34, 0.0}];
        v37 = objc_allocWithZone(UIViewPropertyAnimator);
        v28 = [v37 initWithDuration:v26 timingParameters:{0.0, *&v39}];
      }

      v38 = v28;

      return v38;
    }
  }

  else
  {
    if (a5 >> 6)
    {
      if (a5)
      {
        v21 = 0.25;
      }

      else
      {
        v21 = *&a4;
      }

      v16 = [objc_allocWithZone(UISpringTimingParameters) initWithDuration:v21 bounce:v39];
      v22 = objc_allocWithZone(UIViewPropertyAnimator);
      v18 = [v22 initWithDuration:v16 timingParameters:{0.0, *&v39}];
    }

    else
    {
      v15 = v39;
      v16 = [objc_allocWithZone(UICubicTimingParameters) initWithAnimationCurve:0];
      v17 = objc_allocWithZone(UIViewPropertyAnimator);
      v18 = [v17 initWithDuration:v16 timingParameters:{v15, *&v39}];
    }

    v23 = v18;

    return v23;
  }
}

uint64_t Gliss.Direction.init(_:)(double a1)
{
  if (a1 > 0.0)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 >= 0.0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10014104C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v9 = *v5;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v10 = *(*v5 + 112);
  v11 = *(v9 + 80);
  v12 = *(v11 - 8);
  (*(v12 + 56))(v5 + v10, 1, 1, v11);
  *(v5 + *(*v5 + 128)) = 0;
  v13 = v5 + *(*v5 + 136);
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = -64;
  v14 = *(*v5 + 144);
  type metadata accessor for Gliss.Transition();
  swift_getFunctionTypeMetadata1();
  *(v5 + v14) = sub_1004BC304();
  v15 = *(*v5 + 152);
  swift_getFunctionTypeMetadata2();
  *(v5 + v15) = sub_1004BC304();
  v16 = v5 + *(*v5 + 168);
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 2;
  (*(v12 + 32))(v5 + *(*v5 + 104), a1, v11);
  swift_beginAccess();
  v17 = sub_1004BD174();
  (*(*(v17 - 8) + 40))(v5 + v10, a2, v17);
  swift_endAccess();
  v18 = v5 + *(*v5 + 120);
  *v18 = a3;
  *(v18 + 8) = a5;
  *(v5 + *(*v5 + 160)) = a4;
  return v5;
}

uint64_t Gliss.Transition.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for Gliss.Transition.id;
  v4 = sub_1004B6D14();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10014138C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *a1;
  v7 = *(**a1 + 104);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a4, v6 + v7, v5);
}

uint64_t sub_100141424(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7);
  v9 = *a2;
  v10 = *(*v9 + 104);
  swift_beginAccess();
  (*(v6 + 40))(v9 + v10, v8, v5);
  return swift_endAccess();
}

uint64_t Gliss.Transition.from.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1001415DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 112);
  swift_beginAccess();
  v5 = sub_1004BD174();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100141680(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1004BD174();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = *a2;
  v9 = *(*v8 + 112);
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t Gliss.Transition.to.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  v4 = sub_1004BD174();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t Gliss.Transition.progression.getter()
{
  v1 = (v0 + *(*v0 + 120));
  swift_beginAccess();
  return *v1;
}

uint64_t Gliss.Transition.state.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001418FC(char a1)
{
  v3 = *(*v1 + 128);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL Gliss.Transition.isEnding.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) == 3;
}

BOOL Gliss.Transition.isCancelling.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) == 4;
}

BOOL Gliss.Transition.hasEnded.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) > 4u;
}

BOOL Gliss.Transition.isGestureBased.getter()
{
  v1 = v0 + *(*v0 + 168);
  swift_beginAccess();
  return *(v1 + 32) != 2;
}

uint64_t Gliss.Transition.addAlongsideAnimation(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = *(v5 + 88);
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  type metadata accessor for Gliss.Transition();
  swift_getFunctionTypeMetadata1();
  sub_1004BC3B4();

  sub_1004BC364();
  return swift_endAccess();
}

uint64_t Gliss.Transition.addCompletion(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = *(v5 + 88);
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  type metadata accessor for Gliss.Transition();
  swift_getFunctionTypeMetadata2();
  sub_1004BC3B4();

  sub_1004BC364();
  return swift_endAccess();
}

uint64_t Gliss.Transition.context<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(*v2 + 160));
  if (!*(v4 + 16))
  {
    goto LABEL_5;
  }

  v6 = sub_1000348A4(a1);
  if ((v7 & 1) == 0)
  {

LABEL_5:
    memset(v11, 0, sizeof(v11));
    goto LABEL_6;
  }

  sub_100004DE4(*(v4 + 56) + 32 * v6, v11);

LABEL_6:
  sub_100003ABC(&qword_100605110);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a2, v9 ^ 1u, 1, AssociatedTypeWitness);
}

__n128 sub_100141E34@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 168);
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 sub_100141E9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *a2 + *(**a2 + 168);
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

__n128 Gliss.Transition.gestureState.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(*v1 + 168);
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t Gliss.Transition.description.getter()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = sub_1004BD174();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - v6;
  v8 = *(v2 - 8);
  v9 = __chkstk_darwin(v5);
  v18 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  strcpy(v23, "Transition(\n");
  BYTE5(v23[1]) = 0;
  HIWORD(v23[1]) = -5120;
  v22._countAndFlagsBits = 0x3A646920202020;
  v22._object = 0xE700000000000000;
  v24._countAndFlagsBits = sub_1004B6CE4();
  sub_1004BC024(v24);

  v25._countAndFlagsBits = 10;
  v25._object = 0xE100000000000000;
  sub_1004BC024(v25);
  sub_1004BC024(v22);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0x6D6F726620202020;
  v26._object = 0xEA0000000000203ALL;
  sub_1004BC024(v26);
  v13 = *(*v0 + 104);
  swift_beginAccess();
  (*(v8 + 16))(v12, v1 + v13, v2);
  sub_1004BD964();
  v14 = *(v8 + 8);
  v14(v12, v2);
  v27._countAndFlagsBits = 10;
  v27._object = 0xE100000000000000;
  sub_1004BC024(v27);
  sub_1004BC024(v21);

  v15 = *(*v1 + 112);
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v15, v3);
  if ((*(v8 + 48))(v7, 1, v2) == 1)
  {
    (*(v4 + 8))(v7, v3);
    v28._object = 0xED00000A656E6F6ELL;
    v28._countAndFlagsBits = 0x203A6F7420202020;
    sub_1004BC024(v28);
  }

  else
  {
    v16 = v18;
    (*(v8 + 32))(v18, v7, v2);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v29._countAndFlagsBits = 0x203A6F7420202020;
    v29._object = 0xE800000000000000;
    sub_1004BC024(v29);
    sub_1004BD964();
    v30._countAndFlagsBits = 10;
    v30._object = 0xE100000000000000;
    sub_1004BC024(v30);
    sub_1004BC024(v19);

    v14(v16, v2);
  }

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_1004BD404(19);

  v20._countAndFlagsBits = 0xD000000000000010;
  v20._object = 0x8000000100501960;
  swift_beginAccess();
  v31._countAndFlagsBits = Gliss.Progression.description.getter();
  sub_1004BC024(v31);

  v32._countAndFlagsBits = 10;
  v32._object = 0xE100000000000000;
  sub_1004BC024(v32);
  sub_1004BC024(v20);

  v33._countAndFlagsBits = 10528;
  v33._object = 0xE200000000000000;
  sub_1004BC024(v33);
  return v23[0];
}

uint64_t *Gliss.Transition.deinit()
{
  v1 = *v0;
  v2 = direct field offset for Gliss.Transition.id;
  v3 = sub_1004B6D14();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104), *(v1 + 80));
  v4 = *(*v0 + 112);
  v5 = sub_1004BD174();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_10013FD30(*(v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 8), *(v0 + *(*v0 + 136) + 16));

  return v0;
}

uint64_t Gliss.Transition.__deallocating_deinit()
{
  Gliss.Transition.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100142648@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for Gliss.Transition.id;
  v5 = sub_1004B6D14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1001426FC()
{

  return swift_deallocObject();
}

unint64_t Gliss.Progression.description.getter()
{
  sub_100003ABC(&qword_100604488);
  v1._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v1);

  v2._countAndFlagsBits = 8236;
  v2._object = 0xE200000000000000;
  sub_1004BC024(v2);
  v3._countAndFlagsBits = 0x6F69746365726964;
  v3._object = 0xEA00000000003D6ELL;
  sub_1004BC024(v3);

  v4._countAndFlagsBits = sub_1004BC5C4();
  sub_1004BC024(v4);

  v5._countAndFlagsBits = 0x3D65756C6176;
  v5._object = 0xE600000000000000;
  sub_1004BC024(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  sub_1004BC024(v6);
  return 0xD000000000000014;
}

unint64_t sub_100142978()
{
  result = qword_100601B38;
  if (!qword_100601B38)
  {
    sub_1004B6D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601B38);
  }

  return result;
}

unint64_t sub_1001429D4()
{
  result = qword_100604620;
  if (!qword_100604620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604620);
  }

  return result;
}

unint64_t sub_100142A2C()
{
  result = qword_100604628[0];
  if (!qword_100604628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100604628);
  }

  return result;
}

__n128 sub_100142A94(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_100142AB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 120);
  swift_beginAccess();
  result = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100142B1C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2 + *(**a2 + 120);
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_100142B94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 128);
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_100142C40(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100142C5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100142CB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_100142D14(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t sub_100142D50()
{
  result = sub_1004B6D14();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_1004BD174();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t _s11ProgressionVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t _s11ProgressionVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 sub_100142F58(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100142F6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100142FC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t EnvironmentVariable.value.getter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = 0xD000000000000013;
  v5 = [objc_opt_self() processInfo];
  v6 = [v5 environment];

  v7 = sub_1004BBC44();
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0xD000000000000017;
    }

    if (a3 == 1)
    {
      v8 = "";
    }

    else
    {
      v8 = "FEATUREFLAGS_ENABLED";
    }
  }

  else
  {
    v8 = "MUSIC_TOOLTIP_DEBUG_ALL";
  }

  if (*(v7 + 16))
  {
    v9 = sub_1000346D4(v4, v8 | 0x8000000000000000);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(v7 + 56) + 16 * v9);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

uint64_t EnvironmentVariable.isEnabled.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = EnvironmentVariable.value.getter(a1, a2, a3);
  if (!v5)
  {
    return 0;
  }

  if (a3 <= 1u)
  {
    sub_10000E7F4();
    v6 = sub_1004BD264();

    return v6 & 1;
  }

  if (v4 == 49 && v5 == 0xE100000000000000 || (v8 = v4, v9 = v5, (sub_1004BD9C4() & 1) != 0) || v8 == 1702195828 && v9 == 0xE400000000000000 || (sub_1004BD9C4() & 1) != 0 || v8 == 5457241 && v9 == 0xE300000000000000)
  {

    v6 = 1;
    return v6 & 1;
  }

  v10 = sub_1004BD9C4();

  return v10 & 1;
}

uint64_t sub_1001432EC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100143308(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100143350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100143394(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1001433C4()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, qword_1006046B0);
  sub_100007084(v0, qword_1006046B0);
  return sub_1004B80A4();
}

uint64_t static StagedInstall.current()()
{
  v0 = sub_1004B6B04();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v47 - v6;
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  if (qword_1006006D8 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall != 1)
  {
    return 2;
  }

  if (qword_1005FFF90 != -1)
  {
    swift_once();
  }

  v10 = sub_1004B80B4();
  sub_100007084(v10, qword_1006046B0);
  v11 = sub_1004B8094();
  v12 = sub_1004BC9A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Checking for a staged install of Music", v13, 2u);
  }

  sub_1004B6A14();
  v14 = [objc_opt_self() defaultManager];
  sub_1004B6AA4();
  v15 = sub_1004BBE24();

  v16 = [v14 fileExistsAtPath:v15];

  v17 = sub_1004B8094();
  if (v16)
  {
    v18 = sub_1004BC984();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Found Music.app in staged_system_apps", v19, 2u);
    }

    v20 = sub_1004B6B24();
    v25 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v25 != 2 || *(v20 + 16) == *(v20 + 24))
      {
LABEL_23:
        sub_100004D90(v20, v21);
        v17 = sub_1004B8094();
        v22 = sub_1004BC984();
        if (os_log_type_enabled(v17, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          v24 = "Unable to read data of staged executable";
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else if (v25)
    {
      if (v20 == v20 >> 32)
      {
        goto LABEL_23;
      }
    }

    else if ((v21 & 0xFF000000000000) == 0)
    {
      goto LABEL_23;
    }

    v26 = v20;
    v49 = v21;
    v27 = [objc_opt_self() mainBundle];
    v28 = [v27 executableURL];

    if (!v28)
    {
LABEL_39:
      v38 = sub_1004B8094();
      v39 = sub_1004BC984();
      if (os_log_type_enabled(v38, v39))
      {
        v31 = 2;
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Unable to read data of running executable", v40, 2u);

        sub_100004D90(v26, v49);
        (*(v1 + 8))(v9, v0);
        return v31;
      }

      sub_100004D90(v26, v49);

      goto LABEL_27;
    }

    sub_1004B6A94();

    (*(v1 + 32))(v7, v4, v0);
    v29 = sub_1004B6B24();
    v33 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v33 != 2)
      {
        goto LABEL_38;
      }

      v34 = *(v29 + 16);
      v35 = *(v29 + 24);
    }

    else
    {
      if (!v33)
      {
        if ((v30 & 0xFF000000000000) == 0)
        {
          goto LABEL_38;
        }

LABEL_42:
        v47 = v29;
        v48 = v30;
        v41 = sub_100143FEC(v29, v30, v26, v49);
        v42 = sub_1004B8094();
        if (v41)
        {
          v43 = sub_1004BC9A4();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            v45 = "Identical staged copy found";
LABEL_47:
            _os_log_impl(&_mh_execute_header, v42, v43, v45, v44, 2u);
          }
        }

        else
        {
          v43 = sub_1004BC984();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            v45 = "Found different binary in staged applications";
            goto LABEL_47;
          }
        }

        sub_100004D90(v47, v48);
        sub_100004D90(v26, v49);
        v46 = *(v1 + 8);
        v46(v7, v0);
        v46(v9, v0);
        return v41 & 1;
      }

      v34 = v29;
      v35 = v29 >> 32;
    }

    if (v34 != v35)
    {
      goto LABEL_42;
    }

LABEL_38:
    v36 = v29;
    v37 = v30;
    (*(v1 + 8))(v7, v0);
    sub_100004D90(v36, v37);
    goto LABEL_39;
  }

  v22 = sub_1004BC9A4();
  if (!os_log_type_enabled(v17, v22))
  {
LABEL_26:

LABEL_27:
    (*(v1 + 8))(v9, v0);
    return 2;
  }

  v23 = swift_slowAlloc();
  *v23 = 0;
  v24 = "✅ No staged copy found";
LABEL_25:
  _os_log_impl(&_mh_execute_header, v17, v22, v24, v23, 2u);

  (*(v1 + 8))(v9, v0);
  return 2;
}

uint64_t sub_100143B74@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1004B6724();
    if (v10)
    {
      v11 = sub_1004B6754();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1004B6744();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1004B6724();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1004B6754();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1004B6744();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100143DA4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100143F34(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100004D90(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100143B74(v13, a3, a4, &v12);
  v10 = v4;
  sub_100004D90(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_100143F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1004B6724();
  v11 = result;
  if (result)
  {
    result = sub_1004B6754();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1004B6744();
  sub_100143B74(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_100143FEC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10003E428(a3, a4);
          return sub_100143DA4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for StagedInstall(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100144204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t a9@<X8>, unsigned __int8 a10)
{
  v126 = a8;
  v121 = a7;
  v139 = a6;
  v125 = a4;
  v124 = a3;
  v123 = a2;
  v122 = a1;
  LODWORD(v12) = a10;
  v136 = sub_1004B69F4();
  v13 = *(v136 - 8);
  __chkstk_darwin(v136);
  v135 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003ABC(&qword_100600DE0);
  __chkstk_darwin(v15 - 8);
  v137 = &v111 - v16;
  v17 = sub_1004B6B04();
  v144 = *(v17 - 8);
  v145 = v17;
  v18 = __chkstk_darwin(v17);
  v142 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v118 = &v111 - v21;
  v22 = __chkstk_darwin(v20);
  v140 = &v111 - v23;
  __chkstk_darwin(v22);
  v116 = &v111 - v24;
  v25 = sub_100003ABC(&qword_100603C28);
  __chkstk_darwin(v25 - 8);
  v27 = &v111 - v26;
  v28 = sub_1004B66F4();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006006D8 != -1)
  {
LABEL_71:
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_1004B66D4();
    result = (*(v29 + 48))(v27, 1, v28);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v29 + 32))(v31, v27, v28);
      if (a5 >> 62)
      {
        v27 = sub_1004BD6A4();
      }

      else
      {
        v27 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v115 = a9;
      v114 = v12;
      v113 = v28;
      v112 = v29;
      v111 = v31;
      if (v27 || *(v139 + 16))
      {
        v33 = [objc_opt_self() defaultManager];
        if (qword_1005FFF98 != -1)
        {
          swift_once();
        }

        sub_100007084(v145, static URL.tapToRadarDirectory);
        NSFileManager.createDirectoryIfNeeded(at:)();
        v141 = 0;
      }

      else
      {
        v141 = 0;
      }

      a9 = 0;
      v12 = a5 & 0xC000000000000001;
      v28 = a5 & 0xFFFFFFFFFFFFFF8;
      v134 = &_swiftEmptyArrayStorage;
      while (v27 != a9)
      {
        if (v12)
        {
          v34 = sub_1004BD484();
        }

        else
        {
          if (a9 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_70;
          }

          v34 = *(a5 + 8 * a9 + 32);
        }

        v29 = v34;
        v35 = a9 + 1;
        if (__OFADD__(a9, 1))
        {
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v31 = sub_10014586C(a9, v34);
        v37 = v36;

        ++a9;
        if (v37)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v134 = sub_100017CC8(0, *(v134 + 2) + 1, 1, v134);
          }

          v29 = *(v134 + 2);
          v38 = *(v134 + 3);
          if (v29 >= v38 >> 1)
          {
            v134 = sub_100017CC8((v38 > 1), v29 + 1, 1, v134);
          }

          v39 = v134;
          *(v134 + 2) = v29 + 1;
          v40 = &v39[16 * v29];
          *(v40 + 4) = v31;
          *(v40 + 5) = v37;
          a9 = v35;
        }
      }

      a5 = v139 + 64;
      v43 = 1 << *(v139 + 32);
      v44 = -1;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      v27 = v44 & *(v139 + 64);
      a9 = (v43 + 63) >> 6;
      v132 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v130 = (v13 + 8);
      v131 = (v13 + 104);
      v143 = (v144 + 8);
      v129 = (v144 + 56);
      v120 = (v144 + 32);
      v128 = (v144 + 48);

      v45 = 0;
      *&v46 = 136446210;
      v117 = v46;
      v119 = &_swiftEmptyArrayStorage;
      v47 = v145;
      v48 = &off_1005FF000;
      v12 = v141;
      v133 = a9;
      v127 = a5;
      while (v27)
      {
        v13 = v45;
LABEL_35:
        v141 = v12;
        v49 = (v13 << 10) | (16 * __clz(__rbit64(v27)));
        v50 = (*(v139 + 48) + v49);
        v52 = *v50;
        v51 = v50[1];
        v53 = (*(v139 + 56) + v49);
        v28 = *v53;
        v54 = v53[1];

        sub_10003E428(v28, v54);
        if (v48[499] != -1)
        {
          swift_once();
        }

        sub_100007084(v47, static URL.tapToRadarDirectory);
        v147[0] = 47;
        v147[1] = 0xE100000000000000;
        v149._countAndFlagsBits = v52;
        v138 = v51;
        v149._object = v51;
        sub_1004BC024(v149);
        v56 = v135;
        v55 = v136;
        (*v131)(v135, v132, v136);
        sub_10000E7F4();
        v57 = v140;
        sub_1004B6AF4();
        (*v130)(v56, v55);

        v12 = v141;
        sub_1004B6B84();
        v29 = v54;
        if (v12)
        {
          v58 = v145;
          if (qword_1005FFFA0 != -1)
          {
            swift_once();
          }

          v59 = sub_1004B80B4();
          sub_100007084(v59, qword_1006046C8);
          swift_errorRetain();
          v60 = sub_1004B8094();
          v61 = sub_1004BC984();

          v48 = &off_1005FF000;
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v141 = v28;
            v63 = v29;
            v64 = v62;
            v65 = swift_slowAlloc();
            v146 = v12;
            v147[0] = v65;
            *v64 = v117;
            swift_errorRetain();
            sub_100003ABC(&qword_100604C30);
            v66 = sub_1004BBF04();
            v68 = sub_100012018(v66, v67, v147);

            *(v64 + 4) = v68;
            _os_log_impl(&_mh_execute_header, v60, v61, "Tap-to-Radar Attachment file write failed with error: %{public}s", v64, 0xCu);
            sub_100004C6C(v65);
            v47 = v145;

            v29 = v63;
            v28 = v141;

            v48 = &off_1005FF000;

            (*v143)(v140, v47);
          }

          else
          {

            v47 = v58;
            (*v143)(v140, v58);
          }

          v12 = 0;
          v70 = 1;
          v69 = v137;
        }

        else
        {
          v69 = v137;
          v47 = v145;
          (*v120)(v137, v57, v145);
          v70 = 0;
          v48 = &off_1005FF000;
        }

        v31 = v138;
        v27 &= v27 - 1;
        (*v129)(v69, v70, 1, v47);

        sub_100004D90(v28, v29);
        v71 = (*v128)(v69, 1, v47);
        a5 = v127;
        if (v71 == 1)
        {
          sub_10000F7E0(v69);
          v45 = v13;
          a9 = v133;
        }

        else
        {
          v31 = 0;
          v72 = *v120;
          v29 = v116;
          (*v120)(v116, v69, v47);
          v72(v118, v29, v47);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v119 = sub_100018520(0, *(v119 + 2) + 1, 1, v119);
          }

          v28 = *(v119 + 2);
          v73 = *(v119 + 3);
          if (v28 >= v73 >> 1)
          {
            v119 = sub_100018520(v73 > 1, v28 + 1, 1, v119);
          }

          v74 = v119;
          *(v119 + 2) = v28 + 1;
          v47 = v145;
          v72(&v74[((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v28], v118, v145);
          v45 = v13;
          v12 = 0;
          a9 = v133;
        }
      }

      while (1)
      {
        v13 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          __break(1u);
          goto LABEL_69;
        }

        if (v13 >= a9)
        {
          break;
        }

        v27 = *(a5 + 8 * v13);
        ++v45;
        if (v27)
        {
          goto LABEL_35;
        }
      }

      v147[0] = v119;

      sub_100022FA8(v75);
      v76 = v147[0];
      v77 = *(v147[0] + 16);
      if (v77)
      {
        v147[0] = &_swiftEmptyArrayStorage;
        sub_100015080(0, v77, 0);
        v78 = *(v144 + 16);
        v79 = v147[0];
        v80 = (*(v144 + 80) + 32) & ~*(v144 + 80);
        v141 = v76;
        v81 = v76 + v80;
        v144 += 16;
        v82 = *(v144 + 56);
        do
        {
          v83 = v142;
          v84 = v145;
          v78(v142, v81, v145);
          v85 = sub_1004B6AA4();
          v87 = v86;
          (*v143)(v83, v84);
          v147[0] = v79;
          v89 = v79[2];
          v88 = v79[3];
          if (v89 >= v88 >> 1)
          {
            sub_100015080((v88 > 1), v89 + 1, 1);
            v79 = v147[0];
          }

          v79[2] = v89 + 1;
          v90 = &v79[2 * v89];
          *(v90 + 4) = v85;
          *(v90 + 5) = v87;
          v81 += v82;
          --v77;
        }

        while (v77);
      }

      else
      {

        v79 = &_swiftEmptyArrayStorage;
      }

      sub_100003ABC(&qword_100601328);
      v91 = *(sub_1004B6634() - 8);
      v92 = *(v91 + 72);
      v93 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_1004C5180;
      sub_1004B6604();
      sub_1004B6604();
      sub_1004B6604();
      sub_1004B6604();
      sub_1004B6604();
      v95 = [objc_opt_self() mainBundle];
      v96 = [v95 bundleIdentifier];

      v97 = v126;
      if (v96)
      {
        sub_1004BBE64();
      }

      sub_1004B6604();

      v147[0] = v134;
      v98 = sub_100003ABC(&unk_100603590);
      v99 = sub_100030FE4();
      sub_1004BBD34();
      sub_1004B6604();

      v147[0] = v79;
      v144 = v99;
      v145 = v98;
      sub_1004BBD34();
      sub_1004B6604();

      v100 = *(v97 + 16);
      v101 = &_swiftEmptyArrayStorage;
      if (v100)
      {
        v141 = v94 + v93;
        v142 = v92;
        v143 = v94;
        v147[0] = &_swiftEmptyArrayStorage;
        sub_100015080(0, v100, 0);
        v101 = v147[0];
        v102 = (v97 + 32);
        do
        {
          v103 = *v102++;
          v146 = qword_1004CFE00[v103];
          v104 = sub_1004BD934();
          v106 = v105;
          v147[0] = v101;
          v108 = v101[2];
          v107 = v101[3];
          if (v108 >= v107 >> 1)
          {
            sub_100015080((v107 > 1), v108 + 1, 1);
            v101 = v147[0];
          }

          v101[2] = v108 + 1;
          v109 = &v101[2 * v108];
          *(v109 + 4) = v104;
          *(v109 + 5) = v106;
          --v100;
        }

        while (v100);
      }

      v147[0] = v101;
      sub_1004BBD34();

      sub_1004B6604();

      v147[0] = v134;
      sub_100022EB4(v79);

      sub_1004B6604();

      sub_1004B6604();

      v110 = v111;
      sub_1004B6654();
      sub_1004B6674();
      return (*(v112 + 8))(v110, v113);
    }
  }

  else
  {
    v41 = v145;
    v42 = *(v144 + 56);

    return v42(a9, 1, 1, v41);
  }

  return result;
}

uint64_t sub_1001453E0()
{
  v0 = sub_1004B69F4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003ABC(&qword_100600DE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_1004B6B04();
  sub_100007108(v7, static URL.tapToRadarDirectory);
  sub_100007084(v7, static URL.tapToRadarDirectory);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return sub_1004B6AD4();
}

uint64_t URL.tapToRadarDirectory.unsafeMutableAddressor()
{
  if (qword_1005FFF98 != -1)
  {
    swift_once();
  }

  v0 = sub_1004B6B04();

  return sub_100007084(v0, static URL.tapToRadarDirectory);
}

uint64_t static URL.tapToRadarDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1005FFF98 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B6B04();
  v3 = sub_100007084(v2, static URL.tapToRadarDirectory);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1001456AC()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, qword_1006046C8);
  sub_100007084(v0, qword_1006046C8);
  return sub_1004B80A4();
}

Swift::Int sub_100145754()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(qword_1004CFE00[v1]);
  return sub_1004BDBF4();
}

Swift::Int sub_1001457DC()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(qword_1004CFE00[v1]);
  return sub_1004BDBF4();
}

uint64_t sub_100145828@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore3TTRO7KeywordO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10014586C(uint64_t a1, UIImage *a2)
{
  v4 = sub_1004B69F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004B6B04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005FFF98 != -1)
  {
    swift_once();
  }

  sub_100007084(v8, static URL.tapToRadarDirectory);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1004BD404(24);

  v20 = 0xD000000000000012;
  v21 = 0x8000000100501B00;
  v19[1] = a1;
  v22._countAndFlagsBits = sub_1004BD934();
  sub_1004BC024(v22);

  v23._countAndFlagsBits = 1735420462;
  v23._object = 0xE400000000000000;
  sub_1004BC024(v23);
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_10000E7F4();
  sub_1004B6AF4();
  (*(v5 + 8))(v7, v4);

  v12 = UIImageJPEGRepresentation(a2, 85.0);
  if (v12)
  {
    v13 = v12;
    v14 = sub_1004B6B74();
    v16 = v15;

    sub_1004B6B84();
    sub_100004D90(v14, v16);
  }

  v17 = sub_1004B6AA4();
  (*(v9 + 8))(v11, v8);
  return v17;
}

uint64_t _s9MusicCore3TTRO7KeywordO8rawValueAESgSi_tcfC_0(uint64_t a1)
{
  if (a1 > 1723675)
  {
    if (a1 != 1947834)
    {
      if (a1 == 1723676)
      {
        return 2;
      }

      return 4;
    }

    return 3;
  }

  else
  {
    if (a1 != 1723672)
    {
      if (a1 == 1723674)
      {
        return 1;
      }

      return 4;
    }

    return 0;
  }
}

unint64_t sub_100145D5C()
{
  result = qword_1006046E0;
  if (!qword_1006046E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006046E0);
  }

  return result;
}

uint64_t static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 89) = a1;
  *(v3 + 32) = sub_1004BC474();
  *(v3 + 40) = sub_1004BC464();
  v5 = sub_1004BC3E4();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_100145E70, v5, v4);
}

uint64_t sub_100145E70()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(v0 + 89);
  v4 = sub_1004BC464();
  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_100145F8C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 88, v4, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004FC910, sub_100052470, v5, &type metadata for Bool);
}

uint64_t sub_100145F8C()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1001501D0, v3, v2);
}

void sub_1001460EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100146158(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003ABC(&qword_100601C18);
    v2 = sub_1004BD6F4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100004DE4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10003E13C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10003E13C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10003E13C(v31, v32);
    result = sub_1004BD384(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10003E13C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100146420(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003ABC(&qword_100601C18);
    v2 = sub_1004BD6F4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_10003E13C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_10003E13C(v29, v30);
    result = sub_1004BD384(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_10003E13C(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t *CloudLibrary.EnablementContext.action.unsafeMutableAddressor()
{
  if (qword_1005FFFA8 != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.EnablementContext.action;
}

uint64_t *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor()
{
  if (qword_1005FFFB0 != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.StatusObserver.shared;
}

uint64_t CloudLibrary.EnablementContext.title.getter(unsigned __int8 a1)
{
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  if (a1 > 6u)
  {
    sub_1004BBDA4();
    (*(v4 + 16))(v7, v9, v3);
    if (qword_1005FFD30 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  sub_1004BBDA4();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_1005FFD30 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v10 = qword_100617118;
  sub_1004B6DF4();
  v11 = sub_1004BBED4();
  (*(v4 + 8))(v9, v3);
  return v11;
}

uint64_t CloudLibrary.EnablementContext.message.getter(unsigned __int8 a1)
{
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = (v4 + 16);
  if (a1 > 6u)
  {
    sub_1004BBDA4();
    (*v10)(v7, v9, v3);
    if (qword_1005FFD30 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  sub_1004BBDA4();
  (*v10)(v7, v9, v3);
  if (qword_1005FFD30 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v11 = qword_100617118;
  sub_1004B6DF4();
  v12 = sub_1004BBED4();
  (*(v4 + 8))(v9, v3);
  return v12;
}

Swift::Int sub_100146E80()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(~v1);
  return sub_1004BDBF4();
}

Swift::Int sub_100146EF8()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(~v1);
  return sub_1004BDBF4();
}

uint64_t sub_100146F3C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t CloudLibrary.Status.shouldDisplayBanner.getter(uint64_t a1)
{
  if (qword_1005FFFB0 != -1)
  {
    swift_once();
  }

  v2 = static CloudLibrary.StatusObserver.shared;
  swift_beginAccess();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v8 = *(v2 + 16);
  v9 = v3;
  v10 = v4;
  v5 = sub_100003ABC(&qword_100604708);
  UserDefault.wrappedValue.getter(v5, &v7);
  if (v7 != 2 && (v7 & 1) != 0)
  {
LABEL_8:
    LOBYTE(a1) = 0;
    return a1 & 1;
  }

  if (a1 >> 30 != 1)
  {
    if (a1 >> 30 != 2 || (a1 - 0x80000000) >= 3)
    {
      LOBYTE(a1) = 1;
      return a1 & 1;
    }

    goto LABEL_8;
  }

  return a1 & 1;
}

uint64_t CloudLibrary.Status.shouldShowActionButton.getter(unint64_t a1)
{
  v1 = a1 >> 1 == 1073741825;
  if (a1 >> 30 != 2)
  {
    v1 = 0;
  }

  return !(a1 >> 30) || v1;
}

void (*CloudLibrary.Status.action.getter(unint64_t a1))()
{
  v1 = sub_100147118;
  if (a1 >> 30)
  {
    if (a1 >> 30 != 2)
    {
      return 0;
    }

    v1 = sub_100147118;
    if (a1 >> 1 != 1073741825)
    {
      return 0;
    }
  }

  return v1;
}

void sub_100147118()
{
  if (qword_1005FFFB0 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(0, 0);
}

unint64_t CloudLibrary.Status.progress.getter(unint64_t a1)
{
  v1 = HIDWORD(a1);
  if ((a1 & 0xC0000000) != 0x40000000)
  {
    v1 = 0;
  }

  return v1 | (((a1 & 0xC0000000) != 0x40000000) << 32);
}

uint64_t sub_1001471EC()
{
  v0 = sub_1004B6E64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v13[-v6];
  sub_1004BBDA4();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v8 = qword_100617118;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  v11 = v10;
  result = (*(v2 + 8))(v7, v1);
  static CloudLibrary.EnablementContext.action = v9;
  *algn_1006174E8 = v11;
  return result;
}

uint64_t static CloudLibrary.EnablementContext.action.getter()
{
  if (qword_1005FFFA8 != -1)
  {
    swift_once();
  }

  v0 = static CloudLibrary.EnablementContext.action;

  return v0;
}

uint64_t sub_100147438()
{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  swift_allocObject();
  result = sub_1001474D4();
  static CloudLibrary.StatusObserver.shared = result;
  return result;
}

uint64_t static CloudLibrary.StatusObserver.shared.getter()
{
  if (qword_1005FFFB0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1001474D4()
{
  v1 = v0;
  v2 = sub_100003ABC(&unk_100604728);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30[-v4];
  v32 = 2;
  v31[0] = 0xD000000000000014;
  v31[1] = 0x80000001004FC250;
  v6 = [objc_opt_self() standardUserDefaults];
  sub_10000E7F4();
  UserDefault.init(wrappedValue:defaults:key:)(&v32, v6, v31, &type metadata for String, &v33);
  v7 = v34;
  v8 = v35;
  *(v1 + 16) = v33;
  *(v1 + 32) = v7;
  *(v1 + 40) = v8;
  *(v1 + 48) = &_swiftEmptyArrayStorage;
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  *(v1 + 56) = static ApplicationCapabilities.Controller.shared;
  *(v1 + 64) = &_swiftEmptyArrayStorage;
  *(v1 + 72) = &_swiftEmptyArrayStorage;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  v9 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver__status;
  *&v33 = 0x80000000;

  sub_1004B8564();
  (*(v3 + 32))(v1 + v9, v5, v2);
  *(v1 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;
  sub_100003ABC(&unk_1006035A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C5070;
  if (qword_1005FFE70 != -1)
  {
    swift_once();
  }

  v11 = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v12.location = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v12.length = *(v1 + 56);
  v13 = CFRange.init(_:)(v12);
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v13;
  v14 = qword_1005FFE90;
  v15 = v11;

  if (v14 != -1)
  {
    swift_once();
  }

  v16 = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v17.location = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v17.length = *(v1 + 56);
  v18 = CFRange.init(_:)(v17);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v18;
  v19 = MPCloudControllerCloudLibraryFailureDidChangeNotification;
  v20 = CFRange.init(_:)(MPCloudControllerCloudLibraryFailureDidChangeNotification);
  *(inited + 136) = &type metadata for NotificationTrigger;
  *(inited + 144) = &protocol witness table for NotificationTrigger;
  *(inited + 112) = v20;
  v21 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v22 = v16;

  v23 = v19;

  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_10014FF48, v21);

  swift_beginAccess();
  sub_1004BC274();
  if (*((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004BC2E4();
  }

  sub_1004BC334();
  swift_endAccess();
  v24 = MPCloudControllerIsUpdateInProgressDidChangeNotification;
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 sharedCloudController];
  v28 = swift_allocObject();
  swift_weakInit();

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v1 + 80) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v26, v27, 1, 1, sub_10014FF50, v28);

  return v1;
}

void sub_1001479D8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v23[4] = v19;
    v23[5] = v20;
    v24 = v21;
    v25 = v22;
    v23[0] = v15;
    v23[1] = v16;
    v23[2] = v17;
    v23[3] = v18;
    sub_100051DEC(v23);
    if (v24 == 2)
    {
    }

    else
    {
      v2 = sub_1004BD9C4();

      if ((v2 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1004B85A4();

        v6 = v15;
        swift_getKeyPath();
        swift_getKeyPath();
        *&v15 = 2147483649;

        sub_1004B85B4();
        sub_1001493C0(v6);
        goto LABEL_9;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    sub_100051DEC(&v15);
    if ((BYTE2(v15) & 1) == 0)
    {
      v3 = [objc_opt_self() sharedCloudController];
      if (v3)
      {
        v4 = v3;
        *&v9 = sub_10014FF58;
        *(&v9 + 1) = v1;
        *&v7 = _NSConcreteStackBlock;
        *(&v7 + 1) = 1107296256;
        *&v8 = sub_1000E26FC;
        *(&v8 + 1) = &unk_1005B3598;
        v5 = _Block_copy(&v7);

        [v4 loadLastKnownEnableICMLErrorStatusWithCompletionHander:v5];

        _Block_release(v5);
      }

      else
      {
        __break(1u);
      }

      return;
    }

LABEL_9:
  }
}

uint64_t sub_100147D3C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004BA8F4();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004BA924();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009130(0, &qword_100603570);
  v12 = sub_1004BCB44();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_10014FFA8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005B35E8;
  v14 = _Block_copy(aBlock);
  swift_errorRetain();
  v15 = a1;

  sub_1004BA914();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10014FE00(&qword_100606F40, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003ABC(&unk_100604C00);
  sub_1000206D4(&qword_100606F50, &unk_100604C00);
  sub_1004BD2D4();
  sub_1004BCB54();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_10014804C(uint64_t a1, void *a2)
{
  if (a1 || !a2)
  {
    goto LABEL_5;
  }

  v2 = a2;
  if (_s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0([v2 integerValue]) == 6)
  {

LABEL_5:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_1004B85B4();
    sub_1001493C0(v3);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85B4();
  sub_1001493C0(v3);
}

uint64_t sub_1001481EC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100149AB4();
  }

  return result;
}

uint64_t sub_100148244()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = v1;
  v9 = v2;
  v3 = sub_100003ABC(&qword_100604708);
  result = UserDefault.wrappedValue.getter(v3, &v6);
  if (v6 != 2 && (v6 & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v5 = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v7 = 2147483650;

    sub_1004B85B4();
    return sub_1001493C0(v5);
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.hasDisregardedBanner.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = v1;
  v8 = v2;
  v3 = sub_100003ABC(&qword_100604708);
  UserDefault.wrappedValue.getter(v3, &v5);
  return v5;
}

uint64_t CloudLibrary.StatusObserver.hasDisregardedBanner.setter(char a1)
{
  v3 = a1;
  swift_beginAccess();
  v1 = sub_100003ABC(&qword_100604708);
  UserDefault.wrappedValue.setter(&v3, v1);
  swift_endAccess();
  return sub_100148244();
}

void (*CloudLibrary.StatusObserver.hasDisregardedBanner.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  swift_beginAccess();
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *v4 = *(v1 + 16);
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  v7 = sub_100003ABC(&qword_100604708);
  *(v4 + 64) = v7;
  UserDefault.wrappedValue.getter(v7, v4 + 25);
  return sub_10014851C;
}

void sub_10014851C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *a1;
  *(*a1 + 26) = *(*a1 + 25);
  swift_beginAccess();
  UserDefault.wrappedValue.setter(v3 + 26, v2);
  swift_endAccess();
  sub_100148244();

  free(v1);
}

void CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    swift_beginAccess();
    v6 = *(v2 + 48);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 48) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_1000186A0(0, v6[2] + 1, 1, v6);
      *(v2 + 48) = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_1000186A0((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = sub_10014E80C;
    v10[5] = v5;
    *(v2 + 48) = v6;
    swift_endAccess();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v11 = v21[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v21[0] = 2147483652;

  sub_1004B85B4();
  sub_1001493C0(v11);
  sub_100003ABC(&qword_100604718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50C0;
  *(inited + 32) = sub_1004BBE64();
  *(inited + 40) = v13;
  *(inited + 48) = 1;
  *(inited + 56) = sub_1004BBE64();
  *(inited + 64) = v14;
  *(inited + 72) = 1;
  v15 = sub_10003D6C4(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_100604720);
  swift_arrayDestroy();
  v16 = [objc_opt_self() sharedCloudController];
  if (v16)
  {
    v17 = v16;
    sub_100146420(v15);

    isa = sub_1004BBC24().super.isa;

    v19 = swift_allocObject();
    swift_weakInit();
    v21[4] = sub_10014E7EC;
    v21[5] = v19;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_1001460EC;
    v21[3] = &unk_1005B2E50;
    v20 = _Block_copy(v21);

    [v17 enableCloudLibraryWithOptions:isa completionHandler:v20];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100148938(uint64_t a1)
{
  v2 = sub_1004BA8F4();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004BA924();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_1005FFFB8 != -1)
    {
      swift_once();
    }

    v17 = sub_1004B80B4();
    sub_100007084(v17, qword_1006046F0);
    v9 = sub_1004B8094();
    v18 = sub_1004BC9A4();
    if (os_log_type_enabled(v9, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v9, v18, "Successfully enabled Cloud Library", v19, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1005FFFB8 != -1)
  {
    swift_once();
  }

  v8 = sub_1004B80B4();
  sub_100007084(v8, qword_1006046F0);
  swift_errorRetain();
  v9 = sub_1004B8094();
  v10 = sub_1004BC984();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v2;
    v13 = v12;
    aBlock[0] = v12;
    *v11 = 136315138;
    aBlock[6] = a1;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v14 = sub_1004BBF04();
    v16 = sub_100012018(v14, v15, aBlock);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to enable Cloud Library with error=%s", v11, 0xCu);
    sub_100004C6C(v13);
    v2 = v26;

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_100009130(0, &qword_100603570);
    v22 = sub_1004BCB44();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = a1;
    aBlock[4] = sub_10014FF40;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D6C80;
    aBlock[3] = &unk_1005B3570;
    v24 = _Block_copy(aBlock);
    swift_errorRetain();

    sub_1004BA914();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10014FE00(&qword_100606F40, &type metadata accessor for DispatchWorkItemFlags);
    sub_100003ABC(&unk_100604C00);
    sub_1000206D4(&qword_100606F50, &unk_100604C00);
    sub_1004BD2D4();
    sub_1004BCB54();
    _Block_release(v24);

    (*(v29 + 8))(v4, v2);
    return (*(v27 + 8))(v7, v28);
  }

  return result;
}

uint64_t sub_100148E84(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 48);
  *(a1 + 48) = &_swiftEmptyArrayStorage;
  v6 = *(v5 + 16);
  if (!v6)
  {
  }

  v7 = 0;
  v8 = v5 + 40;
  while (v7 < *(v5 + 16))
  {
    ++v7;
    v9 = *(v8 - 8);
    v10 = a2 == 0;

    v9(&v10);

    v8 += 16;
    if (v6 == v7)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t CloudLibrary.StatusObserver.add(updateObserver:)(id *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v3 + 64);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;

    v9 = 0;
    while (v9 < *(v6 + 16))
    {
      sub_10014E838(v8, v16);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_10014E870(v16);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {
        }
      }

      ++v9;
      v8 += 16;
      if (v7 == v9)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v19 = a2;
  swift_unknownObjectWeakInit();
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  (*(a2 + 8))(v16[0], ObjectType, a2);
  sub_10014E838(v18, v17);
  swift_beginAccess();
  a1 = *(v3 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 64) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a1 = sub_100018710(0, a1[2] + 1, 1, a1);
    *(v3 + 64) = a1;
  }

  v15 = a1[2];
  v14 = a1[3];
  if (v15 >= v14 >> 1)
  {
    a1 = sub_100018710((v14 > 1), v15 + 1, 1, a1);
  }

  a1[2] = (v15 + 1);
  sub_10003E278(v17, &a1[2 * v15 + 4]);
  *(v3 + 64) = a1;
  swift_endAccess();
  return sub_10014E870(v18);
}

uint64_t CloudLibrary.StatusObserver.remove(updateObserver:)(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 64);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;

    v7 = 0;
    while (v7 < *(v4 + 16))
    {
      sub_10014E838(v6, v9);
      Strong = swift_unknownObjectWeakLoadStrong();
      result = sub_10014E870(v9);
      if (Strong)
      {
        result = swift_unknownObjectRelease();
        if (Strong == a1)
        {

          swift_beginAccess();
          sub_100032D30(v7, v10);
          sub_10014E870(v10);
          return swift_endAccess();
        }
      }

      ++v7;
      v6 += 16;
      if (v5 == v7)
      {
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100149274@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a1 = v3;
  return result;
}

uint64_t sub_1001492F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85B4();
  return sub_1001493C0(v1);
}

uint64_t sub_1001493C0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  result = _s9MusicCore12CloudLibraryO6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(v11, a1);
  if ((result & 1) == 0)
  {
    if (qword_1005FFFB8 != -1)
    {
      swift_once();
    }

    v3 = sub_1004B80B4();
    sub_100007084(v3, qword_1006046F0);

    v4 = sub_1004B8094();
    v5 = sub_1004BC9A4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004B85A4();

      v8 = sub_1004BBF04();
      v10 = sub_100012018(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Status did change: %s", v6, 0xCu);
      sub_100004C6C(v7);
    }

    return sub_10014A780();
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.status.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

uint64_t sub_100149644()
{
  swift_beginAccess();
  sub_100003ABC(&unk_100604728);
  sub_1004B8574();
  return swift_endAccess();
}

uint64_t sub_1001496BC(uint64_t a1)
{
  v2 = sub_100003ABC(&unk_100604C10);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100003ABC(&unk_100604728);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t CloudLibrary.StatusObserver.$status.getter()
{
  swift_beginAccess();
  sub_100003ABC(&unk_100604728);
  sub_1004B8574();
  return swift_endAccess();
}

float sub_1001498B4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
  if (a1 == 2)
  {
    if (v2 == 2)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v2 == 2)
  {
LABEL_6:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_1004B85B4();
    sub_1001493C0(v4);
    return result;
  }

  if (((v2 ^ a1) & 1) != 0 || (result = *(&v2 + 1), *(&a1 + 1) != *(&v2 + 1)))
  {
LABEL_3:
    if ((v2 & 1) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

  return result;
}

float (*sub_100149A50(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext;
  *a1 = v1;
  a1[1] = v2;
  a1[2] = *(v1 + v2);
  return sub_100149A84;
}

float sub_100149A84(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = *(*a1 + v1);
  *(v2 + v1) = v3;
  return sub_1001498B4(v4);
}

void sub_100149AB4()
{
  v1 = sub_1004BA8F4();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin(v1);
  v53 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1004BA924();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004BA8E4();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = __chkstk_darwin(v4);
  v48 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v46 = (&v42 - v7);
  v47 = sub_1004BA954();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004BCBC4();
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004BA904();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_opt_self();
  v17 = [v16 sharedCloudController];
  if (!v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  v19 = [v17 isUpdateInProgress];

  v20 = [v16 sharedCloudController];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v21 = v20;
  v22 = [v20 isInitialImport];

  v23 = v19 & v22;
  v24 = *(v0 + 88);
  if (v23 == 1)
  {
    if (!v24)
    {
      v25 = *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
      *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 1;
      v42 = v0;
      sub_1001498B4(v25);
      sub_100009130(0, &unk_100604BD0);
      sub_100009130(0, &qword_100603570);
      (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.userInteractive(_:), v12);
      v26 = sub_1004BCB84();
      (*(v13 + 8))(v15, v12);
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_10014FE00(&unk_100604BE0, &type metadata accessor for OS_dispatch_source.TimerFlags);
      sub_100003ABC(&qword_100606F30);
      sub_1000206D4(&unk_100604BF0, &qword_100606F30);
      sub_1004BD2D4();
      v27 = sub_1004BCBD4();

      (*(v43 + 8))(v11, v9);
      swift_getObjectType();
      v28 = v44;
      sub_1004BA944();
      v29 = v46;
      *v46 = 1;
      v31 = v49;
      v30 = v50;
      v32 = *(v49 + 104);
      v32(v29, enum case for DispatchTimeInterval.seconds(_:), v50);
      v33 = v48;
      *v48 = 1;
      v32(v33, enum case for DispatchTimeInterval.nanoseconds(_:), v30);
      sub_1004BCD34();
      v34 = *(v31 + 8);
      v34(v33, v30);
      v34(v29, v30);
      (*(v45 + 8))(v28, v47);
      v35 = v42;
      aBlock[4] = sub_10014FE48;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000D6C80;
      aBlock[3] = &unk_1005B3340;
      v36 = _Block_copy(aBlock);
      v37 = v35;

      v38 = v51;
      sub_1001FAF30();
      v39 = v53;
      sub_1001FAF34();
      sub_1004BCBE4();
      _Block_release(v36);
      (*(v55 + 8))(v39, v56);
      (*(v52 + 8))(v38, v54);

      v40 = *(v35 + 88);
      *(v37 + 88) = v27;
      if (v40)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1004BCBF4();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      sub_1004BCC04();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    *(v0 + 88) = 0;
    if (v24)
    {
      swift_getObjectType();
      sub_1004BCBF4();
      swift_unknownObjectRelease();
    }

    v41 = *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
    *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;

    sub_1001498B4(v41);
  }
}

void sub_10014A284(uint64_t a1)
{
  v2 = [objc_opt_self() sharedCloudController];
  if (v2)
  {
    v3 = v2;
    v5[4] = sub_10014FE50;
    v5[5] = a1;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10014A72C;
    v5[3] = &unk_1005B3368;
    v4 = _Block_copy(v5);

    [v3 loadCloudMusicLibraryUpdateProgressWithCompletionHandler:v4];
    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10014A378(float a1)
{
  v2 = sub_1004BA8F4();
  v14 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004BA924();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009130(0, &qword_100603570);
  v8 = sub_1004BCB44();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_10014FE90;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005B33B8;
  v11 = _Block_copy(aBlock);

  sub_1004BA914();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10014FE00(&qword_100606F40, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003ABC(&unk_100604C00);
  sub_1000206D4(&qword_100606F50, &unk_100604C00);
  sub_1004BD2D4();
  sub_1004BCB54();
  _Block_release(v11);

  (*(v14 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v13);
}

uint64_t sub_10014A698(float a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_100149A50(v5);
    if (*v3 != 2)
    {
      *(v3 + 4) = a1;
    }

    (v4)(v5, 0);
  }

  return result;
}

uint64_t sub_10014A72C(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

uint64_t sub_10014A780()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v1 = v10;
  result = swift_beginAccess();
  v3 = *(v0 + 64);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    do
    {
      sub_10014E838(v5, v8);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = v9;
        ObjectType = swift_getObjectType();
        (*(v6 + 8))(v1, ObjectType, v6);
        swift_unknownObjectRelease();
      }

      sub_10014E870(v8);
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.deinit()
{
  v1 = *(v0 + 16);

  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver__status;
  v3 = sub_100003ABC(&unk_100604728);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t CloudLibrary.StatusObserver.__deallocating_deinit()
{
  CloudLibrary.StatusObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10014A99C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  result = sub_1004B8534();
  *a1 = result;
  return result;
}

uint64_t CloudLibrary.Status.message.getter(uint64_t a1)
{
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  if (a1 >> 30 > 1 && (a1 - 0x80000000) < 3)
  {
    return 0;
  }

  sub_1004BBDA4();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v10 = qword_100617118;
  sub_1004B6DF4();
  v11 = sub_1004BBED4();
  (*(v4 + 8))(v9, v3);
  return v11;
}

uint64_t CloudLibrary.Status.actionTitle.getter(uint64_t a1)
{
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  if (a1 >> 30 && (a1 >> 30 == 1 || a1 != 2147483651))
  {
    return 0;
  }

  sub_1004BBDA4();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v11 = qword_100617118;
  sub_1004B6DF4();
  v12 = sub_1004BBED4();
  (*(v4 + 8))(v9, v3);
  return v12;
}

uint64_t static CloudLibrary.PresentationStyle.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  sub_100009130(0, &qword_100604490);
  return sub_1004BCFA4() & 1;
}

uint64_t sub_10014AEEC(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return !v2;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  sub_100009130(0, &qword_100604490);
  return sub_1004BCFA4() & 1;
}

void sub_10014AF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (qword_1005FFFB0 != -1)
  {
    swift_once();
    v4 = a2;
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(v4, a3);
}

uint64_t sub_10014AFE8(uint64_t a1, unsigned __int8 a2, uint64_t a3, void *a4)
{
  v8 = sub_100003ABC(&qword_1006020A0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(a2, a3, a4, sub_100150200, v13);
}

void static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:cloudLibraryEnabledCompletion:)(unsigned __int8 a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v27[4] = v23;
  v27[5] = v24;
  v27[6] = v25;
  v27[7] = v26;
  v27[0] = v19;
  v27[1] = v20;
  v27[2] = v21;
  v27[3] = v22;
  sub_100051DEC(v27);
  if (BYTE2(v27[0]))
  {
    if (!a4)
    {
      return;
    }

    v10 = 1;
LABEL_9:
    a4(v10);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  sub_100051DEC(&v19);
  if ((BYTE9(v19) & 1) == 0)
  {
    if (!a4)
    {
      return;
    }

    v10 = 0;
    goto LABEL_9;
  }

  _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(a1, a2, a3, a4, a5);
}

uint64_t static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 89) = a1;
  *(v3 + 32) = sub_1004BC474();
  *(v3 + 40) = sub_1004BC464();
  v5 = sub_1004BC3E4();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_10014B3A0, v5, v4);
}

uint64_t sub_10014B3A0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(v0 + 89);
  v4 = sub_1004BC464();
  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_10014B4BC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 88, v4, &protocol witness table for MainActor, 0xD000000000000045, 0x80000001005020F0, sub_10014F370, v5, &type metadata for Bool);
}

uint64_t sub_10014B4BC()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10014B61C, v3, v2);
}

uint64_t sub_10014B61C()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10014B680(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v5 = sub_100003ABC(&qword_1006020A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v12 = &v22[-v11];
  __chkstk_darwin(v10);
  v14 = &v22[-v13];
  v15 = *(v6 + 16);
  v15(&v22[-v13], a1, v5);
  v15(v12, v14, v5);
  v15(v9, v14, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, v14, v5);
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v42[4] = v38;
  v42[5] = v39;
  v42[6] = v40;
  v42[7] = v41;
  v42[0] = v34;
  v42[1] = v35;
  v42[2] = v36;
  v42[3] = v37;
  sub_100051DEC(v42);
  if (BYTE2(v42[0]))
  {
    v18 = *(v6 + 8);
    v18(v12, v5);
    LOBYTE(v34) = 1;
    sub_1004BC404();

    return (v18)(v9, v5);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v38 = v30;
    v39 = v31;
    v40 = v32;
    v41 = v33;
    v34 = v26;
    v35 = v27;
    v36 = v28;
    v37 = v29;
    sub_100051DEC(&v34);
    if (BYTE9(v34))
    {
      v21 = *(v6 + 8);
      v21(v12, v5);
      _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(v23, v24, v25, sub_10014FEA0, v17);

      return (v21)(v9, v5);
    }

    else
    {
      LOBYTE(v26) = 0;
      sub_1004BC404();

      v20 = *(v6 + 8);
      v20(v9, v5);
      return (v20)(v12, v5);
    }
  }
}

char *sub_10014BA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + qword_100604948) = 0;
  type metadata accessor for EnableCloudLibraryView.Model(0);
  v13 = swift_allocObject();
  v14 = (v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  *v14 = 0;
  v14[1] = 0;
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a5;
  v13[7] = a6;
  swift_beginAccess();
  sub_10002F518(a5);
  type metadata accessor for UIUserInterfaceSizeClass(0);
  sub_1004B8564();
  swift_endAccess();
  v15 = (v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v16 = *(v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  *v15 = 0;
  v15[1] = 0;
  sub_10003CC4C(v16);
  *(v6 + qword_100604940) = v13;
  sub_10014FE00(&qword_100604C20, type metadata accessor for EnableCloudLibraryView.Model);
  swift_retain_n();
  v30 = sub_1004B8B74();
  v31 = v17;
  v18 = sub_1004B93F4();
  v19 = *&v18[qword_100604940];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = (v19 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v22 = *(v19 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  *v21 = sub_10014FEF8;
  v21[1] = v20;
  v23 = v18;

  sub_10003CC4C(v22);

  sub_10014C088();
  v24 = [v23 presentingViewController];
  if (v24)
  {
    v25 = v24;
    sub_100003ABC(&qword_100604C28);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1004C50A0;
    *(v26 + 32) = sub_1004B8374();
    *(v26 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    sub_1004BCA64();
    swift_unknownObjectRelease();
  }

  v27 = [v23 presentationController];

  if (v27)
  {
    sub_100003ABC(&qword_100604C28);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1004C50A0;
    *(v28 + 32) = sub_1004B8374();
    *(v28 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    sub_1004BCD44();

    sub_10003CC4C(a5);
    swift_unknownObjectRelease();
  }

  else
  {

    sub_10003CC4C(a5);
  }

  return v23;
}

void sub_10014BD6C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10014BDD0(uint64_t a1)
{
  *(a1 + qword_100604948) = 0;
  sub_1004BD624();
  __break(1u);
}

void sub_10014BE38(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for CloudLibraryViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v2 = [v1 navigationItem];
  v3 = sub_10014BF00();
  [v2 setLeftBarButtonItem:v3];

  v4 = [v1 navigationItem];
  [v4 setLargeTitleDisplayMode:2];
}