void sub_100175DA4()
{
  sub_100002A08();
  v40 = v4;
  v39 = v5;
  v7 = v6;
  v38 = v8;
  v9 = type metadata accessor for TSDataSyncDeviceState(0);
  v10 = sub_10000307C(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10000308C();
  v15 = (v13 - v14);
  __chkstk_darwin(v16);
  v18 = (&v36 - v17);
  v19 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100008158();
  sub_1001771AC(v0 + v19, v15);
  if (v7)
  {
    v20 = *v15;
    v37 = v15[1];
    v21 = v15[2];
    sub_100003D48(v9[6]);
    v22 = v9[7];
    v23 = type metadata accessor for Date();
    sub_10000307C(v23);
    (*(v24 + 16))(v18 + v22, v15 + v22);
    sub_100003D48(v9[8]);
    sub_100003D48(v9[9]);
    sub_10000B4D0();
    v26 = sub_1000C68A8(v15 + v25, v18 + v25, &qword_1002DA970, &qword_1002318B0);
    sub_100177580(v26, v18 + v9[16]);
    v27 = *(v15 + v9[17]);
    sub_100177498(v15 + v9[18]);

    sub_1000C68A8(v42, v41, &qword_1002DB2E0, &unk_10023F030);
    sub_100004CB4();
    sub_100177204();
    v28 = v37;
    *v18 = v20;
    v18[1] = v28;
    v18[2] = v21;
  }

  else
  {
    v29 = *v15;
    v37 = v15[1];
    v30 = v15[2];
    sub_100003D48(v9[6]);
    v22 = v9[7];
    v31 = type metadata accessor for Date();
    sub_10000307C(v31);
    (*(v32 + 16))(v18 + v22, v15 + v22);
    sub_100003D48(v9[8]);
    sub_100003D48(v9[9]);
    sub_10000B4D0();
    sub_100177580(v34, v18 + v33);
    sub_100003D48(v9[16]);
    v27 = *(v15 + v9[17]);
    sub_100177498(v15 + v9[18]);

    sub_1000C68A8(v42, v41, &qword_1002DB2E0, &unk_10023F030);
    sub_100004CB4();
    sub_100177204();
    v35 = v37;
    *v18 = v29;
    v18[1] = v35;
    v18[2] = v30;
  }

  *(v18 + v9[10]) = v36;
  *(v18 + v9[11]) = v1;
  *(v18 + v9[12]) = v22;
  *(v18 + v9[13]) = v2;
  *(v18 + v9[14]) = v3;
  *(v18 + v9[17]) = v27;
  sub_100002EE0(v18 + v9[18]);
  sub_100175464(v18, 0xD000000000000015, 0x8000000100274D10, v39, v40);
  sub_100004CB4();
  sub_100177204();
  sub_1000048F8();
}

void sub_1001760F0()
{
  sub_100002A08();
  v41 = v0;
  v43 = v2;
  v42 = v3;
  v5 = v4;
  v39 = v4;
  v7 = v6;
  v40 = v6;
  v8 = type metadata accessor for TSDataSyncDeviceState(0);
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_10000308C();
  sub_10000DE68();
  __chkstk_darwin(v11);
  v13 = (&v36 - v12);
  v14 = OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100008158();
  sub_1001771AC(v0 + v14, v1);
  v38 = sub_1000B1018(*(v1 + v9[19]), v7, v5);
  v15 = v1[1];
  v36 = *v1;
  v37 = v15;
  v16 = v1[2];
  sub_100177458(v9[8]);
  v17 = v9[9];
  v18 = type metadata accessor for Date();
  sub_10000307C(v18);
  (*(v19 + 16))(v13 + v17, v1 + v17, v18);
  sub_100177458(v9[10]);
  sub_100177458(v9[11]);
  v20 = *(v1 + v9[12]);
  v21 = *(v1 + v9[13]);
  v22 = *(v1 + v9[14]);
  v23 = *(v1 + v9[15]);
  v24 = *(v1 + v9[16]);
  sub_1000C68A8(v1 + v9[17], v13 + v9[17], &qword_1002DA970, &qword_1002318B0);
  sub_100177458(v9[18]);
  v25 = (v1 + v9[20]);
  v26 = v25[1];
  v27 = v25[3];
  v47 = v25[2];
  v28 = v47;
  v48 = v27;
  v29 = v25[1];
  v46[0] = *v25;
  v30 = v46[0];
  v46[1] = v29;
  v31 = v37;
  *v13 = v36;
  v13[1] = v31;
  v13[2] = v16;
  *(v13 + v9[12]) = v20;
  *(v13 + v9[13]) = v21;
  *(v13 + v9[14]) = v22;
  *(v13 + v9[15]) = v23;
  *(v13 + v9[16]) = v24;
  *(v13 + v9[19]) = v38;
  v32 = (v13 + v9[20]);
  *v32 = v30;
  v32[1] = v26;
  v33 = v25[3];
  v32[2] = v28;
  v32[3] = v33;

  sub_1000C68A8(v46, &v44, &qword_1002DB2E0, &unk_10023F030);
  sub_100177204();
  v44 = 0;
  v45 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  sub_100002860();
  v34._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v34);
  DefaultStringInterpolation.appendInterpolation<A>(optional:)();
  v35._countAndFlagsBits = 0x20726F6620;
  v35._object = 0xE500000000000000;
  String.append(_:)(v35);
  type metadata accessor for AccountIdentity();
  _print_unlocked<A, B>(_:_:)();
  sub_100175464(v13, v44, v45, v42, v43);
  sub_100177204();

  sub_1000048F8();
}

uint64_t sub_100176484(uint64_t a1)
{
  v2 = sub_1001772FC();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001764C0(uint64_t a1)
{
  v2 = sub_1001772FC();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100176518(uint64_t a1)
{
  v2 = sub_100177400();

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_100176554(uint64_t a1)
{
  v2 = sub_100177400();

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1001765AC()
{
  v1 = v0;
  v2 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  sub_1000030B8(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  v7 = v27 - v6;
  v8 = type metadata accessor for Log();
  v9 = sub_100003724(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_10000306C();
  v16 = v15 - v14;
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v17 = type metadata accessor for LogInterpolation();
  sub_100003B78(v17);
  v19 = *(v18 + 72);
  sub_10000A1F0();
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v27[3] = type metadata accessor for TSDataSyncConfigAccessActor();
  v27[0] = v1;

  v20 = AMSLogKey();
  if (v20)
  {
    v21 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v27);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v11 + 8))(v16, v8);
  v22 = objc_allocWithZone(type metadata accessor for AutoBugCaptureReport());
  AutoBugCaptureReport.init(domain:type:subtype:subtypeContext:process:thresholdValues:)();
  sub_100003F9C();
  v23 = type metadata accessor for TaskPriority();
  sub_100002728(v7, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v22;
  v25 = v22;
  sub_10018C610(0, 0, v7, &unk_10023F020, v24);

  return sub_100004E24(v7, &qword_1002DB950, &qword_100232E50);
}

uint64_t sub_1001768F8()
{
  v1 = _s18AppleMediaServices20AutoBugCaptureReportC7capture5delay6events7payload7actionsAC8ResponseCSd_SaySDys11AnyHashableVypGGSgAMSgAA23DiagnosticActionOptionsCSgtYaAA0defG5ErrorOYKFTu[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1001769A4;
  v3.n128_u64[0] = 0;

  return __s18AppleMediaServices20AutoBugCaptureReportC7capture5delay6events7payload7actionsAC8ResponseCSd_SaySDys11AnyHashableVypGGSgAMSgAA23DiagnosticActionOptionsCSgtYaAA0defG5ErrorOYKF(_swiftEmptyArrayStorage, 0, 0, v3);
}

uint64_t sub_1001769A4()
{
  sub_100004194();
  v3 = v2;
  sub_1000030F8();
  sub_10000452C();
  *v5 = v4;
  v7 = *(v6 + 16);
  v8 = *v1;
  sub_100004504();
  *v9 = v8;
  *(v10 + 24) = v3;

  if (v0)
  {

    return _swift_task_switch(sub_100176AC8, 0, 0);
  }

  else
  {

    sub_100002E08();

    return v11();
  }
}

uint64_t sub_100176AC8()
{
  sub_100004194();
  v1 = *(v0 + 24);
  sub_10013D194();
  sub_100004950();
  swift_allocError();
  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100176B40()
{
  sub_100004CB4();
  sub_100177204();
  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_defaults));

  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_generator));
  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_coordinator));
  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_metrics));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100176BC4()
{
  sub_100176B40();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for TSDataSyncConfigAccessActor()
{
  result = qword_1002DF218;
  if (!qword_1002DF218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100176C44()
{
  result = type metadata accessor for TSDataSyncDeviceState(319);
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

unint64_t sub_100176D10()
{
  result = qword_1002DF390;
  if (!qword_1002DF390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF390);
  }

  return result;
}

uint64_t sub_100176D64(void *a1)
{
  v2 = [a1 ams_altDSID];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100176DD4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000C6A64;

  return sub_1001768F8();
}

uint64_t sub_100176E88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncDeviceState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100176EEC()
{
  result = qword_1002DF398;
  if (!qword_1002DF398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF398);
  }

  return result;
}

unint64_t sub_100176F40()
{
  result = qword_1002DF3A0;
  if (!qword_1002DF3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF3A0);
  }

  return result;
}

uint64_t sub_100176F94(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for TSDataSyncConfigServerRequest(0);
  sub_100003B78(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 199) & 0xFFFFFFFFFFFFFFF8;
  v11 = type metadata accessor for Date();
  sub_1000030B8(v11);
  v13 = (v10 + *(v12 + 80) + 64) & ~*(v12 + 80);
  v14 = v1[2];
  v15 = v1[3];
  v16 = v1[4];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1000C6A64;

  return sub_100173160(a1, v14, v15, v16, v1 + v7, v1 + v9, v1 + v10);
}

uint64_t sub_10017710C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v5 = v4(v3);
  sub_10000307C(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000050CC();
  v9(v8);
  return a2;
}

uint64_t sub_100177164(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001771AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v5 = v4(v3);
  sub_10000307C(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000050CC();
  v9(v8);
  return a2;
}

uint64_t sub_100177204()
{
  v1 = sub_100002834();
  v3 = v2(v1);
  sub_10000307C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t getEnumTagSinglePayload for TSDataSyncConfigAccessActor.Errors(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TSDataSyncConfigAccessActor.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001772FC()
{
  result = qword_1002DF3C8;
  if (!qword_1002DF3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF3C8);
  }

  return result;
}

unint64_t sub_100177354()
{
  result = qword_1002DF3D0;
  if (!qword_1002DF3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF3D0);
  }

  return result;
}

unint64_t sub_1001773AC()
{
  result = qword_1002DF3D8;
  if (!qword_1002DF3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF3D8);
  }

  return result;
}

unint64_t sub_100177400()
{
  result = qword_1002DF3E0;
  if (!qword_1002DF3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF3E0);
  }

  return result;
}

uint64_t sub_100177458@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v2 + a1, v3 + a1, v4, v1);
}

uint64_t sub_100177478@<X0>(uint64_t a1@<X8>)
{

  return sub_100002728(v2 + a1, 1, 1, v1);
}

__n128 sub_100177498@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  *(v1 - 192) = *a1;
  *(v1 - 176) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(v1 - 160) = result;
  *(v1 - 144) = v4;
  return result;
}

uint64_t sub_1001774AC@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v2 + a1, v4 + a1, v3, v1);
}

uint64_t sub_1001774CC()
{

  return sub_100004E24(v2 - 120, v0, v1);
}

uint64_t sub_1001774E8()
{
  result = v0;
  v3 = *(v1 - 272);
  return result;
}

uint64_t sub_1001774F8()
{

  return swift_allocObject();
}

uint64_t sub_10017751C()
{

  return sub_100004E24(v2 - 112, v0, v1);
}

uint64_t sub_100177538()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100177560@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v5 + a1, v4 + v1, v2, v3);
}

uint64_t sub_100177580(uint64_t a1, uint64_t a2)
{
  v6 = *(v4 - 288);

  return sub_1000C68A8(v6, a2, v2, v3);
}

uint64_t sub_1001775B0()
{
  sub_100004194();
  v0[21] = v1;
  v0[22] = v2;
  v0[19] = v3;
  v0[20] = v4;
  v5 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  sub_1000030B8(v5);
  v7 = *(v6 + 64);
  v0[23] = sub_100003FA8();
  v8 = type metadata accessor for TSDataSyncConfigServerRequest(0);
  sub_1000030B8(v8);
  v10 = *(v9 + 64);
  v0[24] = sub_100003FA8();
  v11 = type metadata accessor for AccountIdentity();
  v0[25] = v11;
  sub_100003B78(v11);
  v0[26] = v12;
  v14 = *(v13 + 64);
  v0[27] = sub_100003FA8();
  v15 = type metadata accessor for TSDataSyncConfigServerResponse(0);
  v0[28] = v15;
  sub_1000030B8(v15);
  v17 = *(v16 + 64);
  v0[29] = sub_100003FA8();
  v18 = sub_100099DF4(&qword_1002DF3A8, &qword_10023F1F0);
  v0[30] = v18;
  sub_1000030B8(v18);
  v20 = *(v19 + 64);
  v0[31] = sub_100003FA8();
  sub_10000381C();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_1001776F0()
{
  sub_100004194();
  v1 = objc_allocWithZone(type metadata accessor for MetricsActivity());
  v0[32] = MetricsActivity.init(label:)();
  dispatch thunk of MetricsActivity.activate()();
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_1001777A8;
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];

  return sub_1001780A4();
}

uint64_t sub_1001777A8()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_10000452C();
  *v4 = v3;
  v6 = *(v5 + 264);
  v7 = *v1;
  *v4 = v7;
  v3[34] = v8;
  v3[35] = v0;

  if (v0)
  {
    sub_10000381C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[36] = v12;
    *v12 = v7;
    v12[1] = sub_100177908;
    v13 = v3[22];

    return sub_1001787CC();
  }
}

uint64_t sub_100177908()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v3 = v2;
  v5 = *(v4 + 288);
  *v3 = *v1;
  *(v2 + 296) = v6;
  *(v2 + 304) = v0;

  sub_10000381C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100177A0C()
{
  sub_10000AF64();
  sub_100002E38();
  v1 = v0[37];
  v2 = v0[34];
  v3 = v0[32];
  v4 = [objc_allocWithZone(type metadata accessor for AuthURLDelegate()) init];
  v0[39] = v4;
  [v1 setDelegate:v4];
  v5 = v2;
  v6 = [v1 dataTaskPromiseWithRequest:v5 activity:dispatch thunk of MetricsActivity.nwActivity.getter()];
  v0[40] = v6;
  swift_unknownObjectRelease();

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100177BA0;
  v7 = swift_continuation_init();
  v0[17] = sub_100099DF4(&qword_1002DB9E0, &qword_10023F930);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000C5D24;
  v0[13] = &unk_1002BB498;
  v0[14] = v7;
  [v6 resultWithCompletion:v0 + 10];
  sub_1000041E0();

  return _swift_continuation_await(v8);
}

uint64_t sub_100177BA0()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 328) = *(v3 + 48);
  sub_10000381C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100177CA0()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  v9 = *(v0 + 144);

  sub_1000A1B24(v8, v6);
  v10 = sub_100008170();
  sub_1001796A4(v10, v7, v11);
  (*(v4 + 32))(v3, v7, v5);
  sub_100178E28(v9, v3, v2);
  v12 = *(v0 + 312);
  v13 = *(v0 + 296);
  v14 = *(v0 + 272);
  if (v1)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    v15 = *(v0 + 240);
    **(v0 + 248) = v1;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v16 = *(v0 + 240);
    v2 = *(v0 + 248);
    v17 = *(v0 + 232);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    sub_1001796A4(v17, v2, type metadata accessor for TSDataSyncConfigServerResponse);
    swift_storeEnumTagMultiPayload();
  }

  sub_100004CCC();
  sub_10000F13C();

  sub_100004E24(v2, &qword_1002DF3A8, &qword_10023F1F0);

  sub_100002E08();

  return v18();
}

uint64_t sub_100177E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000AF64();
  sub_100002E38();
  sub_10000AC68(*(v12 + 280));
  sub_100004CCC();
  sub_10000F13C();

  sub_100004E24(v10, &qword_1002DF3A8, &qword_10023F1F0);

  sub_100002E08();
  sub_1000041E0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_100177F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000AF64();
  sub_100002E38();

  sub_10000AC68(*(v12 + 304));
  sub_100004CCC();
  sub_10000F13C();

  sub_100004E24(v10, &qword_1002DF3A8, &qword_10023F1F0);

  sub_100002E08();
  sub_1000041E0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_100177FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000AF64();
  sub_100002E38();
  v11 = v10[40];
  v12 = v10[41];
  v13 = v10[39];
  v14 = v10[37];
  v15 = v10[34];
  swift_willThrow();

  sub_10000AC68(v10[41]);
  sub_100004CCC();
  sub_10000F13C();

  sub_100004E24(v13, &qword_1002DF3A8, &qword_10023F1F0);

  sub_100002E08();
  sub_1000041E0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1001780A4()
{
  sub_100004194();
  v0[11] = v1;
  v0[12] = v2;
  v0[10] = v3;
  v4 = type metadata accessor for URL();
  v0[13] = v4;
  sub_100003B78(v4);
  v0[14] = v5;
  v7 = *(v6 + 64);
  v0[15] = sub_100003FA8();
  sub_10000381C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100178150()
{
  v1 = v0[10];
  v2 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:v0[12]];
  v0[16] = v2;
  [v2 setRequestEncoding:3];
  v3 = sub_10017919C(v1);
  v4 = v0[15];
  v5 = v0[11];
  [v2 setAccount:v3];

  v6 = v2;
  sub_1001793F8(v5, v4);
  v7 = v0[10];

  sub_100099DF4(&qword_1002DB9E8, &unk_10023F950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10022E400;
  *(inited + 32) = 0x646975472D58;
  *(inited + 40) = 0xE600000000000000;
  v9 = [objc_opt_self() deviceGUID];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(inited + 48) = v10;
  *(inited + 56) = v12;
  v13 = Dictionary.init(dictionaryLiteral:)();
  result = sub_1000A199C(v7);
  v15 = 0;
  v16 = result + 64;
  v53 = v0;
  v54 = result;
  v17 = -1;
  v18 = -1 << *(result + 32);
  if (-v18 < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & *(result + 64);
  v20 = (63 - v18) >> 6;
  v51 = v20;
  v52 = result + 64;
  while (1)
  {
    v0[17] = v13;
    if (!v19)
    {
      break;
    }

LABEL_9:
    v22 = (v15 << 10) | (16 * __clz(__rbit64(v19)));
    v23 = (*(v54 + 48) + v22);
    v25 = *v23;
    v24 = v23[1];
    v26 = (*(v54 + 56) + v22);
    v27 = v26[1];
    v55 = *v26;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_10014EB30(v25, v24);
    v30 = v13[2];
    v31 = (v29 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v33 = result;
    v34 = v29;
    sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
    result = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v32);
    if (result)
    {
      result = sub_10014EB30(v25, v24);
      if ((v34 & 1) != (v35 & 1))
      {
        sub_1000D3404();

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      v33 = result;
    }

    if (v34)
    {

      v36 = (v13[7] + 16 * v33);
      v37 = v36[1];
      *v36 = v55;
      v36[1] = v27;
    }

    else
    {
      v13[(v33 >> 6) + 8] |= 1 << v33;
      v38 = (v13[6] + 16 * v33);
      *v38 = v25;
      v38[1] = v24;
      v39 = (v13[7] + 16 * v33);
      *v39 = v55;
      v39[1] = v27;
      v40 = v13[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_26;
      }

      v13[2] = v42;
    }

    v19 &= v19 - 1;
    v16 = v52;
    v0 = v53;
    v20 = v51;
  }

  while (1)
  {
    v21 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v21);
    ++v15;
    if (v19)
    {
      v15 = v21;
      goto LABEL_9;
    }
  }

  v43 = swift_task_alloc();
  v0[18] = v43;
  *v43 = v0;
  v43[1] = sub_100178570;
  v44 = v0[15];
  sub_1000D3404();

  return sub_1001A833C(v45, v46, v47, v48);
}

uint64_t sub_100178570(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_10000452C();
  *v6 = v5;
  v7 = *(v4 + 144);
  *v6 = *v2;
  *(v5 + 152) = v1;

  v8 = *(v4 + 136);

  if (!v1)
  {
    *(v5 + 160) = a1;
  }

  sub_10000381C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001786AC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);
  v5 = *(v0 + 160);

  return v4(v5);
}

uint64_t sub_100178740()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 152);
  v5 = *(v0 + 120);

  sub_100002E08();

  return v6();
}

uint64_t sub_1001787CC()
{
  sub_100004194();
  v0[21] = v1;
  v2 = type metadata accessor for IndexSet();
  v0[22] = v2;
  sub_100003B78(v2);
  v0[23] = v3;
  v5 = *(v4 + 64) + 15;
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  sub_10000381C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100178888()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = [objc_allocWithZone(AMSURLResponseDecoder) init];
  v0[26] = v3;
  sub_1001797AC(&qword_1002DB9D8, &type metadata accessor for IndexSet);
  dispatch thunk of SetAlgebra.init()();
  for (i = 200; i != 300; ++i)
  {
    v5 = v0[24];
    v6 = v0[22];
    v0[19] = i;
    dispatch thunk of SetAlgebra.insert(_:)();
  }

  v7 = v0[25];
  v8 = v0[22];
  v9 = v0[23];
  v10 = v0[21];
  (*(v9 + 32))(v7, v0[24], v8);
  IndexSet.insert(_:)(304);
  IndexSet.insert(_:)(429);
  IndexSet._bridgeToObjectiveC()(v11);
  v13 = v12;
  (*(v9 + 8))(v7, v8);
  [v3 setAllowedStatusCodes:v13];

  v14 = objc_opt_self();
  v0[27] = v14;
  v15 = [objc_opt_self() currentProcess];
  v16 = [v14 ams_configurationWithClientInfo:v15 bag:v10];
  v0[28] = v16;

  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_100178B28;
  v17 = swift_continuation_init();
  v0[17] = sub_100099DF4(&qword_1002DB918, &unk_100232B20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000C5C90;
  v0[13] = &unk_1002BB4C0;
  v0[14] = v17;
  [v16 resultWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100178B28()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  sub_10000381C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100178C28()
{
  v1 = *(v0 + 160);

  swift_unknownObjectRetain();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRetain();
  }

  else
  {
    v4 = *(v0 + 216);
    swift_unknownObjectRelease();
    v3 = [v4 defaultSessionConfiguration];
  }

  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  [v3 set_systemClientOfPrivateAccessTokens:1];
  [v3 setUsesClassicLoadingMode:0];
  v8 = [objc_allocWithZone(AMSURLSession) initWithConfiguration:v3];

  v9 = v6;
  [v8 setResponseDecoder:v9];

  swift_unknownObjectRelease();

  v10 = *(v0 + 8);

  return v10(v8);
}

uint64_t sub_100178D98()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  swift_willThrow();

  sub_100002E08();
  v7 = v0[29];

  return v6();
}

uint64_t sub_100178E28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v8 = type metadata accessor for Date();
  v9 = sub_10000C0F0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v40 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  static Date.now.getter();
  v18 = sub_10019A1E0(a1);
  if (!v18 || (v19 = sub_100197EB0(v18), , !v19))
  {
    Dictionary.init(dictionaryLiteral:)();
  }

  [a1 responseStatusCode];
  static HTTPHelpers.throwForRetryAfter(statusCode:headers:now:)();
  if (v3)
  {
    v20 = sub_100007408();
    v21(v20);
  }

  else
  {
    v37 = a2;
    v38 = a3;
    v22 = [a1 data];
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    sub_1000A1894(v39);
    sub_10000D170(v23, v25);
    v27 = v40;
    static HTTPHelpers.responseTimestamp(from:)();

    v28 = type metadata accessor for TSDataSyncConfigServerResponse(0);
    v29 = v28[5];
    v30 = v38;
    Date.addingTimeInterval(_:)();
    sub_100002728(&v30[v29], 0, 1, v4);
    sub_100002728(&v30[v28[6]], 1, 1, v4);
    (*(v11 + 16))(&v30[v28[7]], v27, v4);
    v31 = v28[8];
    v32 = type metadata accessor for AccountIdentity();
    sub_10000307C(v32);
    (*(v33 + 16))(&v30[v31], v37);
    v34 = [a1 responseStatusCode];
    v35 = *(v11 + 8);
    v35(v27, v4);
    result = (v35)(v17, v4);
    if ((v34 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v36 = v39[1];
      *v30 = v39[0];
      *(v30 + 1) = v36;
      *(v30 + 2) = v39[2];
      *&v30[v28[9]] = v34;
    }
  }

  return result;
}

id sub_10017919C(uint64_t a1)
{
  v3 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  v4 = sub_1000030B8(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v9 = v8 - v7;
  v10 = type metadata accessor for TSDataSyncConfigServerRequest(0);
  v11 = sub_1000030B8(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000306C();
  v16 = v15 - v14;
  v17 = type metadata accessor for AccountIdentity.DSID();
  v18 = sub_10000C0F0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_10000306C();
  v25 = v24 - v23;
  sub_1000A1B24(a1, v16);
  v26 = sub_100008170();
  sub_1001796A4(v26, v9, v27);
  AccountIdentity.dsid.getter();
  sub_1000A1BEC(v9);
  v28 = [objc_opt_self() ams_sharedAccountStore];
  AccountIdentity.DSID.value.getter();
  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v30 = [v28 ams_iTunesAccountWithDSID:isa];

  if (!v30)
  {
    type metadata accessor for TSDataSyncNetworkingCore.Errors();
    sub_100006F78();
    sub_1001797AC(v31, v32);
    swift_allocError();
    v34 = v33;
    v35 = *(sub_100099DF4(&qword_1002DD680, &qword_100238510) + 48);
    (*(v20 + 16))(v34, v25, v1);
    *(v34 + v35) = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  (*(v20 + 8))(v25, v1);
  return v30;
}

uint64_t sub_1001793F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100099DF4(&qword_1002DB318, &qword_10023F230);
  v5 = sub_1000030B8(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  URL.init(string:)();
  v12 = type metadata accessor for URL();
  if (sub_100004DFC(v9, 1, v12) != 1)
  {
    return (*(*(v12 - 8) + 32))(a2, v9, v12);
  }

  sub_100004E24(v9, &qword_1002DB318, &qword_10023F230);
  type metadata accessor for TSDataSyncNetworkingCore.Errors();
  sub_100006F78();
  sub_1001797AC(v13, v14);
  swift_allocError();
  *v15 = v11;
  v15[1] = v10;
  v15[2] = 2;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

uint64_t sub_10017957C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000CA15C;

  return sub_1001775B0();
}

uint64_t sub_100179634(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DF3A8, &qword_10023F1F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001796A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000307C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1001797AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001797FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountIdentity();
  v5 = sub_100003724(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v12 = v11 - v10;
  v13 = type metadata accessor for TSDataSyncConfigFileSystemStore.Errors();
  v14 = sub_10000307C(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = (&v44 - v20);
  v22 = sub_100099DF4(&qword_1002DF4C8, &qword_10023F388);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v44 - v24;
  v27 = (&v44 + *(v26 + 56) - v24);
  sub_10017A5AC(a1, &v44 - v24);
  sub_10017A5AC(a2, v27);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10017A5AC(v25, v21);
    v35 = *v21;
    v34 = v21[1];
    v36 = v21[2];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v37 = v27[2];
      if (v35 == *v27 && v34 == v27[1])
      {
        v42 = v27[1];
      }

      else
      {
        v39 = v27[1];
        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v40 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v33 = v36 == v37;
      goto LABEL_18;
    }

LABEL_8:
    sub_100004E24(v25, &qword_1002DF4C8, &qword_10023F388);
    return 0;
  }

  sub_10017A5AC(v25, v18);
  v28 = *(sub_100099DF4(&qword_1002DF4D0, &unk_10023F390) + 48);
  v29 = *&v18[v28];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v7 + 8))(v18, v4);
    goto LABEL_8;
  }

  v30 = *(v27 + v28);
  (*(v7 + 32))(v12, v27, v4);
  v31 = static AccountIdentity.== infix(_:_:)();
  v32 = *(v7 + 8);
  v32(v12, v4);
  v32(v18, v4);
  if ((v31 & 1) == 0)
  {
LABEL_14:
    sub_10017A610(v25, type metadata accessor for TSDataSyncConfigFileSystemStore.Errors);
    return 0;
  }

  v33 = v29 == v30;
LABEL_18:
  v41 = v33;
  sub_10017A610(v25, type metadata accessor for TSDataSyncConfigFileSystemStore.Errors);
  return v41;
}

uint64_t sub_100179B38(uint64_t a1)
{
  v2 = sub_10017A568(&qword_1002DF4A8);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100179B90(uint64_t a1)
{
  v2 = sub_10017A568(&qword_1002DF4A8);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100179C04(uint64_t a1)
{
  v2 = sub_10017A568(&qword_1002DF4C0);

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_100179C5C(uint64_t a1)
{
  v2 = sub_10017A568(&qword_1002DF4C0);

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100179CB8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100099DF4(&qword_1002DB318, &qword_10023F230);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for URL();
  v10 = sub_100003724(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10000306C();
  v17 = v16 - v15;
  v18 = [objc_opt_self() ams_dataVaultDirectory];
  if (v18)
  {
    v19 = v18;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  sub_100002728(v5, v20, 1, v9);
  sub_1000CAE2C(v5, v8);
  if (sub_100004DFC(v8, 1, v9) == 1)
  {
    sub_100004E24(v8, &qword_1002DB318, &qword_10023F230);
    type metadata accessor for TSDataSyncConfigFileSystemStore.Errors();
    sub_100007DA0();
    sub_10017A568(v21);
    swift_allocError();
    *v22 = 0xD000000000000016;
    v22[1] = 0x8000000100272EB0;
    v22[2] = 1;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();
    (*(v12 + 8))(v8, v9);
    return (*(v12 + 32))(a1, v17, v9);
  }
}

uint64_t sub_100179F2C()
{
  v2 = type metadata accessor for URL();
  v3 = sub_100003724(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v6 = type metadata accessor for TSDataSyncConfigStoreCore();
  v7 = sub_10000307C(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_10000306C();
  result = sub_100006B68();
  if (!v0)
  {
    v1[3] = type metadata accessor for LiveFileStore();
    v1[4] = &protocol witness table for LiveFileStore;
    sub_100007914(v1);
    LiveFileStore.init()();
    v11 = sub_100003A0C();
    v12(v11);
    sub_1000BB314();
    sub_100004CF4();
    return sub_10017A610(v1, v13);
  }

  return result;
}

uint64_t sub_10017A064()
{
  v2 = type metadata accessor for URL();
  v3 = sub_100003724(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v6 = type metadata accessor for TSDataSyncConfigStoreCore();
  v7 = sub_10000307C(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_10000306C();
  result = sub_100006B68();
  if (!v0)
  {
    v1[3] = type metadata accessor for LiveFileStore();
    v1[4] = &protocol witness table for LiveFileStore;
    sub_100007914(v1);
    LiveFileStore.init()();
    v11 = sub_100003A0C();
    v12(v11);
    sub_1000BB4C0();
    sub_100004CF4();
    return sub_10017A610(v1, v13);
  }

  return result;
}

uint64_t sub_10017A19C()
{
  v1 = type metadata accessor for URL();
  v2 = sub_100003724(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000306C();
  v9 = v8 - v7;
  v10 = type metadata accessor for TSDataSyncConfigStoreCore();
  v11 = sub_10000307C(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000306C();
  v16 = (v15 - v14);
  result = sub_100179CB8(v9);
  if (!v0)
  {
    v16[3] = type metadata accessor for LiveFileStore();
    v16[4] = &protocol witness table for LiveFileStore;
    sub_100007914(v16);
    LiveFileStore.init()();
    (*(v4 + 32))(v16 + *(v10 + 20), v9, v1);
    sub_1000BB8D0();
    sub_100004CF4();
    return sub_10017A610(v16, v18);
  }

  return result;
}

uint64_t type metadata accessor for TSDataSyncConfigFileSystemStore.Errors()
{
  result = qword_1002DF460;
  if (!qword_1002DF460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10017A378()
{
  sub_10017A3EC();
  if (v0 <= 0x3F)
  {
    sub_10017A450();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10017A3EC()
{
  if (!qword_1002DF470)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1002DF470);
    }
  }
}

void sub_10017A450()
{
  if (!qword_1002DF478)
  {
    type metadata accessor for AccountIdentity();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1002DF478);
    }
  }
}

uint64_t sub_10017A568(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TSDataSyncConfigFileSystemStore.Errors();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10017A5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncConfigFileSystemStore.Errors();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017A610(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000307C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

id sub_10017A66C(uint64_t a1)
{
  v10 = 0;
  v2 = [objc_opt_self() dataWithJSONObject:a1 options:0 error:&v10];
  v3 = v10;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = type metadata accessor for JSONDecoder();
    sub_10018C398(v7);
    JSONDecoder.init()();
    sub_10018B370();
    sub_10018C320();
    sub_10000D170(v4, v6);

    if (!v1)
    {
      return v10;
    }
  }

  else
  {
    v9 = v3;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

id sub_10017A790(uint64_t a1)
{
  v10 = 0;
  v2 = [objc_opt_self() dataWithJSONObject:a1 options:0 error:&v10];
  v3 = v10;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = type metadata accessor for JSONDecoder();
    sub_10018C398(v7);
    JSONDecoder.init()();
    sub_10018A514();
    sub_10018C320();
    sub_10000D170(v4, v6);

    if (!v1)
    {
      return v10;
    }
  }

  else
  {
    v9 = v3;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

void *sub_10017A8B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __src[0] = 0;
  v4 = [objc_opt_self() dataWithJSONObject:a1 options:0 error:__src];
  v5 = __src[0];
  if (v4)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = type metadata accessor for JSONDecoder();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_10018A4C0();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_10000D170(v6, v8);

    if (!v2)
    {
      return memcpy(a2, __src, 0xC0uLL);
    }
  }

  else
  {
    v13 = v5;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

void *sub_10017AA10(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_defaultActor_initialize();
  v8[26] = 0;
  v8[14] = a1;
  type metadata accessor for TSDataSyncDatasetGroupActorCollection();
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  type metadata accessor for TSDataSyncDatasetGroupAccessActor();
  sub_10018BA54();
  sub_10018ADEC(v17, v18);
  *(v16 + 112) = Dictionary.init(dictionaryLiteral:)();
  v8[27] = v16;
  v8[15] = a2;
  v8[16] = a3;
  sub_1000D3298(a4, (v8 + 17));
  v8[22] = a5;
  v8[23] = a6;
  v8[24] = a7;
  v8[25] = a8;
  return v8;
}

uint64_t sub_10017AB18()
{
  sub_100004194();
  v3 = v2;
  v1[26] = v0;
  v4 = type metadata accessor for Log();
  v1[27] = v4;
  sub_100003B78(v4);
  v1[28] = v5;
  v7 = *(v6 + 64);
  v1[29] = sub_100003FA8();
  swift_task_alloc();
  sub_10000DEA0();
  v1[30] = v8;
  *v8 = v9;
  v8[1] = sub_10017ABFC;

  return sub_10017AECC((v1 + 2), v3);
}

uint64_t sub_10017ABFC()
{
  sub_100007F3C();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 232);

    v10 = *(v7 + 8);

    return v10(0);
  }

  else
  {

    return _swift_task_switch(sub_10017AD34, 0, 0);
  }
}

uint64_t sub_10017AD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  sub_100008B30();
  sub_10018A46C(v14 + 16);
  if ((*(v14 + 16) & 1) == 0)
  {
    v15 = *(v14 + 224);
    v16 = *(v14 + 232);
    a10 = *(v14 + 208);
    a11 = *(v14 + 216);
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    v17 = type metadata accessor for LogInterpolation();
    sub_100003B78(v17);
    v19 = *(v18 + 72);
    sub_10018BFE0();
    *(swift_allocObject() + 16) = xmmword_1002329F0;
    v20 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for TSDataSyncCoordinatorActor();
    sub_10018BDCC();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    (*(v15 + 8))(v16, a11);
  }

  v21 = *(v14 + 232);

  v22 = *(v14 + 8);
  sub_100003BBC();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10017AECC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_100007620(sub_10017AEE8, 0);
}

uint64_t sub_10017AEE8()
{
  sub_100004194();
  v1 = sub_10009F6A8();
  v0[4] = v1;
  v2 = async function pointer to SendableBag.cachedCodableDictionary(for:)[1];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_10017AF88;
  v4 = v0[3];

  return SendableBag.cachedCodableDictionary(for:)(v1);
}

uint64_t sub_10017AF88()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_1000077D8();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  sub_100004504();
  *v10 = v9;
  v5[6] = v0;

  if (v0)
  {
    v11 = sub_10017B130;
  }

  else
  {
    v12 = v5[4];
    v5[7] = v3;

    v11 = sub_10017B0A0;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10017B0A0()
{
  v6 = v0;
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  sub_10017A8B0(v1, __src);

  if (v2)
  {
    sub_100002E08();
  }

  else
  {
    memcpy(*(v0 + 16), __src, 0xC0uLL);
    sub_100003844();
  }

  return v3();
}

uint64_t sub_10017B130()
{
  sub_100004194();
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);
  sub_100002E08();

  return v3();
}

uint64_t sub_10017B18C()
{
  sub_100004194();
  v1[41] = v2;
  v1[42] = v0;
  v1[39] = v3;
  v1[40] = v4;
  sub_10018C0D8();
  v1[43] = v5;
  v6 = type metadata accessor for TSDataSyncEntryPoint();
  v1[44] = v6;
  sub_1000030B8(v6);
  v8 = *(v7 + 64);
  v1[45] = sub_100003FA8();
  v9 = type metadata accessor for TSDataSyncExternalEvent(0);
  sub_1000030B8(v9);
  v11 = *(v10 + 64);
  v1[46] = sub_100003FA8();
  v12 = type metadata accessor for AccountIdentity();
  v1[47] = v12;
  sub_100003B78(v12);
  v1[48] = v13;
  v15 = *(v14 + 64);
  v1[49] = sub_100003FA8();
  v16 = sub_10000AA8C();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_10017B29C()
{
  sub_100004194();
  v1 = v0[43];
  v0[50] = *(v0[42] + 112);
  v2 = swift_task_alloc();
  v0[51] = v2;
  *v2 = v0;
  v2[1] = sub_10017B334;

  return sub_10017AB18();
}

uint64_t sub_10017B334()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_1000077D8();
  *v6 = v5;
  v8 = *(v7 + 408);
  v9 = *v1;
  sub_100004504();
  *v10 = v9;

  if (v0)
  {
    v11 = v5[49];
    v14 = v5 + 45;
    v12 = v5[45];
    v13 = v14[1];

    sub_100002E08();
LABEL_8:

    return v15();
  }

  if ((v3 & 1) == 0)
  {
    v20 = v5[49];
    v23 = v5 + 45;
    v21 = v5[45];
    v22 = v23[1];

    sub_100003844();
    goto LABEL_8;
  }

  swift_task_alloc();
  sub_10000DEA0();
  v5[52] = v16;
  *v16 = v17;
  v16[1] = sub_10017B4D0;
  v18 = v5[50];

  return sub_10017AECC((v5 + 2), v18);
}

uint64_t sub_10017B4D0()
{
  sub_100007F3C();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v6 = *(v5 + 416);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  v3[53] = v0;

  if (v0)
  {
    v9 = v3[49];
    v12 = v3 + 45;
    v10 = v3[45];
    v11 = v12[1];

    sub_100002E08();

    return v13();
  }

  else
  {
    v15 = v3[42];
    v16 = sub_10018C344();

    return _swift_task_switch(v16, v17, v18);
  }
}

uint64_t sub_10017B60C()
{
  sub_100007F3C();
  v1 = v0[53];
  type metadata accessor for TSDataSyncConfigAccessActor();
  sub_100172FD8(v0 + 34);
  if (v1)
  {
    sub_10018A46C((v0 + 2));
    v2 = v0[49];
    v3 = v0[45];
    v4 = v0[46];

    sub_100002E08();

    return v5();
  }

  else
  {
    v8 = v0[48];
    v7 = v0[49];
    v9 = v0[47];
    sub_10000C4FC(v0 + 34, v0[37]);
    v10 = sub_10018C3DC();
    v11(v10);
    swift_task_alloc();
    sub_10000DEA0();
    v0[54] = v12;
    *v12 = v13;
    v12[1] = sub_10017B73C;
    v14 = v0[49];
    v15 = v0[50];

    return sub_10019C724();
  }
}

uint64_t sub_10017B73C()
{
  sub_10000DB4C();
  sub_1000030F8();
  v2 = v1;
  sub_1000077D8();
  *v3 = v2;
  v5 = v4[54];
  v6 = v4[49];
  v7 = v4[48];
  v8 = v4[47];
  v9 = v4[42];
  v10 = *v0;
  sub_100004504();
  *v11 = v10;

  v12 = *(v7 + 8);
  v13 = sub_100008780();
  v14(v13);
  sub_100004118((v2 + 272));
  sub_10000AD14();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_10017B898()
{
  sub_100007F3C();
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[39];
  sub_10018B17C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      v4 = v0[45];
      v5 = v0[46];
      sub_10018B1D8();
      v6 = swift_task_alloc();
      v0[58] = v6;
      *v6 = v0;
      v6[1] = sub_10017BC68;
      v7 = v0[42];
      sub_100005040(v0[46]);

      result = sub_100182110();
      break;
    case 3u:
    case 4u:
      v9 = swift_task_alloc();
      v0[60] = v9;
      *v9 = v0;
      sub_10018B454(v9);
      v10 = v0[41];
      v11 = v0[42];
      sub_100005040(v0[40]);

      result = sub_10017C0F8();
      break;
    default:
      v12 = v0[45];
      v13 = *v12;
      v0[55] = v12[1];
      v14 = swift_task_alloc();
      v0[56] = v14;
      *v14 = v0;
      v14[1] = sub_10017BA9C;
      v15 = v0[42];

      result = sub_100180740();
      break;
  }

  return result;
}

uint64_t sub_10017BA9C()
{
  sub_100007F3C();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v6 = *(v5 + 448);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  v3[57] = v0;

  if (v0)
  {
    v9 = v3[55];
    v10 = v3[42];
    sub_100004E7C((v3 + 26), &qword_1002DF3B8, &qword_10023F050);
    sub_10018A46C((v3 + 2));

    v11 = sub_10017BF90;
    v12 = v10;
  }

  else
  {
    v13 = v3[55];
    v14 = v3[42];

    v11 = sub_10017BBE4;
    v12 = v14;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_10017BBE4()
{
  sub_100004194();
  v1 = swift_task_alloc();
  v0[60] = v1;
  *v1 = v0;
  sub_10018B454(v1);
  v2 = v0[41];
  v3 = v0[42];
  sub_100005040(v0[40]);

  return sub_10017C0F8();
}

uint64_t sub_10017BC68()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v6 = *(v5 + 464);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  v3[59] = v0;

  if (v0)
  {
    v9 = v3[46];
    v10 = v3[42];
    sub_10018BACC();
    sub_10018A46C((v3 + 2));
    sub_100004E7C((v3 + 26), &qword_1002DF3B8, &qword_10023F050);
    v11 = sub_10000AA8C();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v14 = v3[46];
    sub_10018BACC();
    v15 = swift_task_alloc();
    v3[60] = v15;
    *v15 = v7;
    sub_10018B454(v15);
    v16 = v3[41];
    v17 = v3[42];
    sub_100005040(v3[40]);

    return sub_10017C0F8();
  }
}

uint64_t sub_10017BDE0()
{
  sub_100007F3C();
  v2 = *v1;
  v3 = *v1;
  sub_100004504();
  *v4 = v3;
  v5 = *(v2 + 480);
  *v4 = *v1;
  *(v3 + 488) = v0;

  v6 = *(v2 + 336);
  sub_10018A46C(v3 + 16);
  sub_100004E7C(v3 + 208, &qword_1002DF3B8, &qword_10023F050);
  if (v0)
  {
    v7 = sub_10017C080;
  }

  else
  {
    v7 = sub_10017BF24;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10017BF24()
{
  sub_100004194();
  v1 = v0[49];
  v2 = v0[45];
  v3 = v0[46];

  sub_100003844();

  return v4();
}

uint64_t sub_10017BF90()
{
  sub_100007F3C();
  v1 = v0[57];
  v2 = v0[49];
  v4 = v0[45];
  v3 = v0[46];

  sub_100002E08();

  return v5();
}

uint64_t sub_10017C008()
{
  sub_100007F3C();
  v1 = v0[59];
  v2 = v0[49];
  v4 = v0[45];
  v3 = v0[46];

  sub_100002E08();

  return v5();
}

uint64_t sub_10017C080()
{
  sub_100007F3C();
  v1 = v0[61];
  v2 = v0[49];
  v4 = v0[45];
  v3 = v0[46];

  sub_100002E08();

  return v5();
}

uint64_t sub_10017C0F8()
{
  sub_100004194();
  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  *(v1 + 128) = v3;
  *(v1 + 136) = v4;
  *(v1 + 232) = v5;
  *(v1 + 120) = v6;
  v7 = type metadata accessor for AccountIdentity();
  *(v1 + 160) = v7;
  sub_100003B78(v7);
  *(v1 + 168) = v8;
  v10 = *(v9 + 64);
  *(v1 + 176) = sub_100003FA8();
  v11 = sub_10000AA8C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10017C1A8()
{
  sub_100004194();
  v1 = v0[19];
  type metadata accessor for TSDataSyncCoordinatorActor();
  v0[23] = *(v1 + 112);
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_10017C248;

  return sub_10017AB18();
}

uint64_t sub_10017C248()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_1000077D8();
  *v6 = v5;
  v8 = *(v7 + 192);
  v9 = *v1;
  sub_100004504();
  *v10 = v9;
  *(v5 + 200) = v0;

  if (v0)
  {
    v11 = *(v5 + 176);

    v12 = *(v9 + 8);

    return v12();
  }

  else
  {
    v14 = *(v5 + 152);
    *(v5 + 233) = v3 & 1;
    v15 = sub_10018C414();

    return _swift_task_switch(v15, v16, 0);
  }
}

uint64_t sub_10017C388()
{
  sub_100007F3C();
  if (*(v0 + 233) != 1)
  {
    v8 = *(v0 + 176);

    sub_100003844();
LABEL_7:

    return v9();
  }

  if (*(*(v0 + 144) + 8))
  {
    v1 = swift_task_alloc();
    *(v0 + 216) = v1;
    *v1 = v0;
    sub_10018B9E4(v1);
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v6 = *(v0 + 232);
    sub_100005040(*(v0 + 120));

    return sub_10017C970();
  }

  v10 = *(v0 + 200);
  type metadata accessor for TSDataSyncConfigAccessActor();
  sub_100172FD8((v0 + 80));
  if (v10)
  {
    v11 = *(v0 + 176);

    sub_100002E08();
    goto LABEL_7;
  }

  v13 = *(v0 + 168);
  v12 = *(v0 + 176);
  v14 = *(v0 + 160);
  sub_10000C4FC((v0 + 80), *(v0 + 104));
  v15 = sub_10018C3DC();
  v16(v15);
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 208) = v17;
  *v17 = v18;
  v17[1] = sub_10017C524;
  v19 = *(v0 + 176);
  v20 = *(v0 + 184);

  return sub_10019C724();
}

uint64_t sub_10017C524()
{
  sub_10000DB4C();
  v1 = *v0;
  v2 = *v0;
  sub_100004504();
  *v3 = v2;
  v4 = v1[26];
  v5 = v1[22];
  v6 = v1[21];
  v7 = v1[20];
  v8 = *v0;
  *v3 = *v0;

  sub_100004E7C((v2 + 2), &qword_1002DF3B8, &qword_10023F050);
  (*(v6 + 8))(v5, v7);
  sub_100004118(v2 + 10);
  v9 = swift_task_alloc();
  v2[27] = v9;
  *v9 = v8;
  sub_10018B9E4(v9);
  v10 = v1[19];
  v11 = v1[18];
  v12 = v1[17];
  v13 = *(v2 + 232);
  v14 = v1[16];
  sub_100005040(v1[15]);

  return sub_10017C970();
}

uint64_t sub_10017C710()
{
  sub_100007F3C();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 176);

    sub_10018BB68();

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    *(v3 + 224) = v12;
    *v12 = v7;
    v12[1] = sub_10017C874;
    v13 = *(v3 + 144);
    v14 = *(v3 + 152);
    v15 = *(v3 + 136);
    v16 = *(v3 + 232);

    return sub_10017E01C();
  }
}

uint64_t sub_10017C874()
{
  sub_100007F3C();
  sub_10018BD24();
  v2 = *(v0 + 224);
  v3 = *v1;
  sub_100004504();
  *v4 = v3;

  sub_10018BD60();
  v6 = *(v5 + 176);

  sub_10018BB68();

  return v7();
}

uint64_t sub_10017C970()
{
  sub_100004194();
  *(v1 + 200) = v2;
  *(v1 + 208) = v0;
  *(v1 + 184) = v3;
  *(v1 + 192) = v4;
  *(v1 + 468) = v5;
  *(v1 + 176) = v6;
  v7 = type metadata accessor for MetricsEvent();
  *(v1 + 216) = v7;
  sub_100003B78(v7);
  *(v1 + 224) = v8;
  v10 = *(v9 + 64);
  *(v1 + 232) = sub_100003FA8();
  v11 = type metadata accessor for FlagKeys();
  *(v1 + 240) = v11;
  sub_100003B78(v11);
  *(v1 + 248) = v12;
  v14 = *(v13 + 64);
  *(v1 + 256) = sub_100003FA8();
  v15 = type metadata accessor for TSDataSyncDeviceState(0);
  sub_1000030B8(v15);
  v17 = *(v16 + 64);
  *(v1 + 264) = sub_100003FA8();
  v18 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v18);
  v20 = *(v19 + 64);
  *(v1 + 272) = sub_100003FA8();
  v21 = type metadata accessor for Date();
  *(v1 + 280) = v21;
  sub_100003B78(v21);
  *(v1 + 288) = v22;
  v24 = *(v23 + 64);
  *(v1 + 296) = sub_1000C70D8();
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 312) = swift_task_alloc();
  v25 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v25);
  v27 = *(v26 + 64);
  *(v1 + 320) = sub_100003FA8();
  v28 = type metadata accessor for Log();
  *(v1 + 328) = v28;
  sub_100003B78(v28);
  *(v1 + 336) = v29;
  v31 = *(v30 + 64);
  *(v1 + 344) = sub_1000C70D8();
  *(v1 + 352) = swift_task_alloc();
  v32 = sub_10000AA8C();

  return _swift_task_switch(v32, v33, v34);
}

uint64_t sub_10017CB94()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 208);
  static Log.tsDataSync.getter();
  *(v0 + 360) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  *(v0 + 368) = *(v4 + 72);
  *(v0 + 464) = *(v5 + 80);
  sub_100013DAC();
  *(sub_10018BFC8() + 16) = xmmword_1002329F0;
  v6 = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v0 + 16) = v2;
  *(v0 + 376) = v6;
  *(v0 + 40) = v6;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = *(v0 + 320);
  v10 = *(v0 + 184);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 16));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD000000000000030;
  v11._object = 0x8000000100275470;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  v12 = *(v0 + 184);
  if (v10)
  {
    v13 = *(v0 + 176);
    v14 = &type metadata for String;
    v15 = *(v0 + 184);
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v14 = 0;
    *(v0 + 64) = 0;
  }

  v16 = *(v0 + 352);
  v17 = *(v0 + 328);
  v18 = *(v0 + 336);
  v19 = *(v0 + 320);
  *(v0 + 48) = v13;
  *(v0 + 56) = v15;
  *(v0 + 72) = v14;

  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E7C(v0 + 48, &unk_1002DFC10, &qword_10022E6D0);
  v20._countAndFlagsBits = 41;
  v20._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  *(v0 + 384) = *(v18 + 8);
  *(v0 + 392) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21 = sub_1000DBA50();
  v22(v21);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC();
  }

  v23 = *(v0 + 312);
  v24 = *(v0 + 208);
  *(v0 + 400) = qword_1003106E8;
  sub_100008F38(0xD000000000000017, 0x80000001002754B0);
  static Date.now.getter();
  *(v0 + 408) = sub_100188CF8();
  *(v0 + 416) = 0;
  sub_10018C344();
  sub_1000D3590();

  return _swift_task_switch(v25, v26, v27);
}

uint64_t sub_10017D258()
{
  sub_100007F3C();
  v1 = v0[51];
  v2 = v0[52];
  sub_10017139C(v0[22], v0[23], v0[24], v0[25], v0[39], v0[34]);
  v0[53] = v2;
  v3 = v0[51];
  if (v2)
  {
    v4 = v0[26];

    v5 = sub_10000AA8C();

    return _swift_task_switch(v5, v6, v7);
  }

  else
  {

    swift_task_alloc();
    sub_10000DEA0();
    v0[54] = v8;
    *v8 = v9;
    v8[1] = sub_10017D354;
    v10 = v0[33];
    v11 = v0[26];

    return sub_100188E9C(v10);
  }
}

uint64_t sub_10017D354()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v6 = *(v5 + 432);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  *(v3 + 440) = v0;

  if (v0)
  {
    v9 = *(v3 + 208);
    v10 = sub_10018C344();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = swift_task_alloc();
    *(v3 + 448) = v13;
    *v13 = v7;
    v13[1] = sub_10017D4BC;
    v14 = *(v3 + 312);
    v15 = *(v3 + 264);
    v16 = *(v3 + 200);
    v17 = *(v3 + 208);
    v18 = *(v3 + 192);
    v19 = *(v3 + 468);
    sub_100005040(*(v3 + 272));

    return sub_10017F43C();
  }
}

uint64_t sub_10017D4BC()
{
  sub_100007F3C();
  sub_10018BD24();
  sub_1000077D8();
  *v4 = v3;
  v5 = *(v1 + 448);
  *v4 = *v2;
  *(v3 + 456) = v0;

  sub_10018BD60();
  v7 = *(v6 + 208);
  sub_10018BF74();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10017D5D0()
{
  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[34];
  sub_1000067E4();
  sub_10018B234();
  sub_100004E7C(v3, &qword_1002DA970, &qword_1002318B0);
  v4 = v0[50];
  v6 = v0[43];
  v5 = v0[44];
  v7 = v0[40];
  v9 = v0[37];
  v8 = v0[38];
  v10 = v0[34];
  v13 = v0[33];
  v15 = v0[32];
  v14 = v0[29];
  (*(v1 + 8))(v0[39], v0[35]);
  sub_10018BF40(23, 0x80000001002754B0);

  sub_100003844();

  return v11();
}

uint64_t sub_10017D710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (*a18)(uint64_t), uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34)
{
  sub_10018BA04();
  a33 = v40;
  a34 = v41;
  sub_10018B944();
  a32 = v35;
  v42 = v35[53];
  v43 = sub_100010EB0();
  v39(v43);
  static Log.tsDataSync.getter();
  sub_100005170();
  sub_10018BDC0();
  *(v34 + 80) = v36;
  v44 = (v34 + 80);
  sub_10018BE4C(v45, xmmword_1002329D0);
  v46 = AMSLogKey();
  v82 = v39;
  if (v46)
  {
    LOBYTE(v36) = v46;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C168();
  }

  else
  {
    sub_1000C72E0();
  }

  sub_10018B474();

  sub_100004118(v44);
  sub_10018B6E4();
  sub_10018C0CC();
  LogInterpolation.init(stringLiteral:)();
  sub_10018B628();
  v47 = a18;
  swift_getErrorValue();
  sub_10018BEEC();
  sub_10000B4FC();
  v49 = *(v48 + 16);
  sub_10018BDD8();
  v50();
  sub_10018C150();
  sub_100004E7C((v44 + 4), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v51 = sub_10018B754();
  v52(v51);
  v54 = *(v37 + 176);
  v53 = *(v37 + 184);
  static Date.now.getter();
  v55 = sub_100002AD0();
  v56(v55);
  FlagKeys.isEnabled.getter();
  v57 = sub_100004108();
  v58(v57, a16);
  if (v36)
  {
    v59 = v35[37];
    static Date.now.getter();
    v61 = v35[36];
    v60 = v35[37];
    v62 = v35[35];
    if (v53)
    {
      sub_100002900();
      a19 = v63;
      a23 = &type metadata for String;
      sub_10018BD0C();
      a20 = v64 + 2;
      a21 = v62;
      sub_100006F54();
      sub_1001A8ED8(&a20);
      sub_10000B908();
      sub_10018B638();
      static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

      v65 = *(v38 + 160);
      v66 = *(v38 + 168);
      sub_10018B434(a10);
      sub_100008A98();
      dispatch thunk of MetricsQueue.enqueue(event:)();

      v67 = sub_10018BF98();
      v68(v67);
      v69 = sub_10018B560();
      v70 = a16;
    }

    else
    {

      v69 = sub_10018B560();
      v70 = v62;
    }

    v47 = v82;
    (v82)(v69, v70);
  }

  else
  {
    v71 = v35[36];

    sub_10018BFA8();
  }

  sub_10018B5B4();
  v72 = sub_10018BAF0();
  v47(v72);
  sub_10018BB04();

  sub_100003844();
  sub_10000F438();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, v82, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_10017DA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (*a18)(uint64_t), uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t *a32, uint64_t a33, uint64_t a34)
{
  sub_10018BA04();
  a33 = v40;
  a34 = v41;
  sub_10018B944();
  a32 = v35;
  sub_100004E7C(v35[34], &qword_1002DA970, &qword_1002318B0);
  v42 = v35[55];
  v43 = sub_100010EB0();
  v39(v43);
  static Log.tsDataSync.getter();
  sub_100005170();
  sub_10018BDC0();
  *(v34 + 80) = v36;
  v44 = (v34 + 80);
  sub_10018BE4C(v45, xmmword_1002329D0);
  v46 = AMSLogKey();
  v82 = v39;
  if (v46)
  {
    LOBYTE(v36) = v46;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C168();
  }

  else
  {
    sub_1000C72E0();
  }

  sub_10018B474();

  sub_100004118(v44);
  sub_10018B6E4();
  sub_10018C0CC();
  LogInterpolation.init(stringLiteral:)();
  sub_10018B628();
  v47 = a18;
  swift_getErrorValue();
  sub_10018BEEC();
  sub_10000B4FC();
  v49 = *(v48 + 16);
  sub_10018BDD8();
  v50();
  sub_10018C150();
  sub_100004E7C((v44 + 4), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v51 = sub_10018B754();
  v52(v51);
  v54 = *(v37 + 176);
  v53 = *(v37 + 184);
  static Date.now.getter();
  v55 = sub_100002AD0();
  v56(v55);
  FlagKeys.isEnabled.getter();
  v57 = sub_100004108();
  v58(v57, a16);
  if (v36)
  {
    v59 = v35[37];
    static Date.now.getter();
    v61 = v35[36];
    v60 = v35[37];
    v62 = v35[35];
    if (v53)
    {
      sub_100002900();
      a19 = v63;
      a23 = &type metadata for String;
      sub_10018BD0C();
      a20 = v64 + 2;
      a21 = v62;
      sub_100006F54();
      sub_1001A8ED8(&a20);
      sub_10000B908();
      sub_10018B638();
      static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

      v65 = *(v38 + 160);
      v66 = *(v38 + 168);
      sub_10018B434(a10);
      sub_100008A98();
      dispatch thunk of MetricsQueue.enqueue(event:)();

      v67 = sub_10018BF98();
      v68(v67);
      v69 = sub_10018B560();
      v70 = a16;
    }

    else
    {

      v69 = sub_10018B560();
      v70 = v62;
    }

    v47 = v82;
    (v82)(v69, v70);
  }

  else
  {
    v71 = v35[36];

    sub_10018BFA8();
  }

  sub_10018B5B4();
  v72 = sub_10018BAF0();
  v47(v72);
  sub_10018BB04();

  sub_100003844();
  sub_10000F438();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, v82, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_10017DD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (*a18)(uint64_t), uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34)
{
  sub_10018BA04();
  a33 = v39;
  a34 = v40;
  sub_10018B944();
  a32 = v34;
  v41 = v34[33];
  v42 = v34[34];
  sub_1000067E4();
  sub_10018B234();
  sub_100004E7C(v42, &qword_1002DA970, &qword_1002318B0);
  v43 = v34[57];
  v44 = sub_100010EB0();
  v38(v44);
  static Log.tsDataSync.getter();
  sub_100005170();
  sub_10018BDC0();
  *(v42 + 80) = v35;
  v45 = (v42 + 80);
  sub_10018BE4C(v46, xmmword_1002329D0);
  v47 = AMSLogKey();
  v83 = v38;
  if (v47)
  {
    LOBYTE(v35) = v47;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C168();
  }

  else
  {
    sub_1000C72E0();
  }

  sub_10018B474();

  sub_100004118(v45);
  sub_10018B6E4();
  sub_10018C0CC();
  LogInterpolation.init(stringLiteral:)();
  sub_10018B628();
  v48 = a18;
  swift_getErrorValue();
  sub_10018BEEC();
  sub_10000B4FC();
  v50 = *(v49 + 16);
  sub_10018BDD8();
  v51();
  sub_10018C150();
  sub_100004E7C((v45 + 4), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v52 = sub_10018B754();
  v53(v52);
  v55 = *(v36 + 176);
  v54 = *(v36 + 184);
  static Date.now.getter();
  v56 = sub_100002AD0();
  v57(v56);
  FlagKeys.isEnabled.getter();
  v58 = sub_100004108();
  v59(v58, a16);
  if (v35)
  {
    v60 = v34[37];
    static Date.now.getter();
    v62 = v34[36];
    v61 = v34[37];
    v63 = v34[35];
    if (v54)
    {
      sub_100002900();
      a19 = v64;
      a23 = &type metadata for String;
      sub_10018BD0C();
      a20 = v65 + 2;
      a21 = v63;
      sub_100006F54();
      sub_1001A8ED8(&a20);
      sub_10000B908();
      sub_10018B638();
      static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

      v66 = *(v37 + 160);
      v67 = *(v37 + 168);
      sub_10018B434(a10);
      sub_100008A98();
      dispatch thunk of MetricsQueue.enqueue(event:)();

      v68 = sub_10018BF98();
      v69(v68);
      v70 = sub_10018B560();
      v71 = a16;
    }

    else
    {

      v70 = sub_10018B560();
      v71 = v63;
    }

    v48 = v83;
    (v83)(v70, v71);
  }

  else
  {
    v72 = v34[36];

    sub_10018BFA8();
  }

  sub_10018B5B4();
  v73 = sub_10018BAF0();
  v48(v73);
  sub_10018BB04();

  sub_100003844();
  sub_10000F438();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16, v83, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_10017E01C()
{
  sub_100004194();
  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  *(v1 + 144) = v3;
  *(v1 + 428) = v4;
  v5 = type metadata accessor for MetricsEvent();
  *(v1 + 168) = v5;
  sub_100003B78(v5);
  *(v1 + 176) = v6;
  v8 = *(v7 + 64);
  *(v1 + 184) = sub_100003FA8();
  v9 = type metadata accessor for FlagKeys();
  *(v1 + 192) = v9;
  sub_100003B78(v9);
  *(v1 + 200) = v10;
  v12 = *(v11 + 64);
  *(v1 + 208) = sub_100003FA8();
  v13 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v13);
  v15 = *(v14 + 64);
  *(v1 + 216) = sub_100003FA8();
  v16 = sub_100099DF4(&qword_1002DC208, &qword_100234830);
  sub_1000030B8(v16);
  v18 = *(v17 + 64);
  *(v1 + 224) = sub_1000C70D8();
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  v19 = type metadata accessor for Date();
  *(v1 + 248) = v19;
  sub_100003B78(v19);
  *(v1 + 256) = v20;
  v22 = *(v21 + 64);
  *(v1 + 264) = sub_1000C70D8();
  *(v1 + 272) = swift_task_alloc();
  *(v1 + 280) = swift_task_alloc();
  v23 = type metadata accessor for TSDataSyncDeviceState(0);
  sub_1000030B8(v23);
  v25 = *(v24 + 64);
  *(v1 + 288) = sub_100003FA8();
  v26 = type metadata accessor for Log();
  *(v1 + 296) = v26;
  sub_100003B78(v26);
  *(v1 + 304) = v27;
  v29 = *(v28 + 64);
  *(v1 + 312) = sub_1000C70D8();
  *(v1 + 320) = swift_task_alloc();
  v30 = sub_10000AA8C();

  return _swift_task_switch(v30, v31, v32);
}

uint64_t sub_10017E260()
{
  sub_100003FC0();
  sub_1000051E0();
  v1 = *(v0 + 320);
  v2 = *(v0 + 160);
  static Log.tsDataSync.getter();
  *(v0 + 328) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  *(v0 + 336) = *(v4 + 72);
  *(v0 + 424) = *(v5 + 80);
  sub_100013DAC();
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v6 = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v0 + 16) = v2;
  *(v0 + 344) = v6;
  *(v0 + 40) = v6;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000C726C();
  }

  else
  {
    sub_1000033C0();
  }

  v9 = *(v0 + 320);
  v10 = *(v0 + 296);
  v11 = *(v0 + 304);
  sub_10018BD48();
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 16));
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  v12 = *(v11 + 8);
  *(v0 + 352) = v12;
  *(v0 + 360) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v10);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC();
  }

  *(v0 + 368) = qword_1003106E8;
  sub_100008F38(0xD00000000000001DLL, 0x8000000100275410);
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 376) = v13;
  *v13 = v14;
  v13[1] = sub_10017E4A8;
  v15 = *(v0 + 288);
  v16 = *(v0 + 160);
  sub_100003128();

  return sub_100188E9C(v17);
}

uint64_t sub_10017E4A8()
{
  sub_100007F3C();
  sub_10018BD24();
  sub_1000077D8();
  *v4 = v3;
  v5 = *(v1 + 376);
  *v4 = *v2;
  *(v3 + 384) = v0;

  sub_10018BD60();
  v7 = *(v6 + 160);
  sub_10018BF74();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10017E5BC()
{
  sub_100004194();
  v1 = v0[35];
  static Date.now.getter();
  swift_task_alloc();
  sub_10000DEA0();
  v0[49] = v2;
  *v2 = v3;
  v2[1] = sub_10017E65C;
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[30];
  v7 = v0[20];
  v8 = v0[18];

  return sub_10018398C();
}

uint64_t sub_10017E65C()
{
  sub_100007F3C();
  sub_10018BD24();
  sub_1000077D8();
  *v4 = v3;
  v5 = *(v1 + 392);
  *v4 = *v2;
  *(v3 + 400) = v0;

  sub_10018BD60();
  v7 = *(v6 + 160);
  sub_10018BF74();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10017E770()
{
  sub_100007F3C();
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  sub_10018AE78();
  v3 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
  v4 = sub_100013DDC();
  if (sub_100004DFC(v4, v5, v3) == 1)
  {
    v6 = *(v0 + 248);
    v7 = *(v0 + 216);
    sub_100004E7C(*(v0 + 232), &qword_1002DC208, &qword_100234830);
    sub_100007B78();
    sub_100002728(v8, v9, v10, v6);
  }

  else
  {
    v11 = *(v0 + 232);
    v12 = *(v0 + 216);
    v13 = *(v3 + 20);
    sub_10018AE78();
    sub_10018BA6C();
    sub_10018B234();
  }

  v14 = *(v0 + 240);
  v15 = *(v0 + 224);
  sub_10018AE78();
  v16 = sub_100013DDC();
  v18 = sub_100004DFC(v16, v17, v3);
  v19 = *(v0 + 224);
  if (v18 == 1)
  {
    sub_100004E7C(v19, &qword_1002DC208, &qword_100234830);
  }

  else
  {
    v20 = *(v19 + *(v3 + 24));
    sub_10018BA6C();
    sub_10018B234();
  }

  v21 = swift_task_alloc();
  *(v0 + 408) = v21;
  *v21 = v0;
  v21[1] = sub_10017E924;
  v23 = *(v0 + 280);
  v22 = *(v0 + 288);
  v24 = *(v0 + 152);
  v25 = *(v0 + 160);
  v26 = *(v0 + 144);
  v27 = *(v0 + 428);
  sub_100005040(*(v0 + 216));

  return sub_10017F43C();
}

uint64_t sub_10017E924()
{
  sub_100007F3C();
  sub_10018BD24();
  sub_1000077D8();
  *v4 = v3;
  v5 = *(v1 + 408);
  v6 = *(v1 + 216);
  *v4 = *v2;
  *(v3 + 416) = v0;

  sub_100004E7C(v6, &qword_1002DA970, &qword_1002318B0);
  sub_10018BD60();
  v8 = *(v7 + 160);
  sub_10018BF74();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10017EA64()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[31];
  v4 = v0[32];
  sub_100004E7C(v0[30], &qword_1002DC208, &qword_100234830);
  v5 = *(v4 + 8);
  v6 = sub_100008780();
  v7(v6);
  sub_1000067E4();
  sub_10018B234();
  sub_10000DC58();
  v10 = v0[23];
  v11 = v0[26];
  sub_10018BF40(29, 0x8000000100275410);

  sub_100003844();

  return v8();
}

uint64_t sub_10017F43C()
{
  sub_100004194();
  *(v1 + 618) = v2;
  *(v1 + 496) = v3;
  *(v1 + 504) = v0;
  *(v1 + 480) = v4;
  *(v1 + 488) = v5;
  *(v1 + 617) = v6;
  *(v1 + 616) = v7;
  *(v1 + 464) = v8;
  *(v1 + 472) = v9;
  v10 = type metadata accessor for Date();
  *(v1 + 512) = v10;
  sub_100003B78(v10);
  *(v1 + 520) = v11;
  v13 = *(v12 + 64);
  *(v1 + 528) = sub_100003FA8();
  v14 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v14);
  v16 = *(v15 + 64);
  *(v1 + 536) = sub_1000C70D8();
  *(v1 + 544) = swift_task_alloc();
  v17 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v17);
  v19 = *(v18 + 64);
  *(v1 + 552) = sub_100003FA8();
  v20 = type metadata accessor for Log();
  *(v1 + 560) = v20;
  sub_100003B78(v20);
  *(v1 + 568) = v21;
  v23 = *(v22 + 64);
  *(v1 + 576) = sub_1000C70D8();
  *(v1 + 584) = swift_task_alloc();
  *(v1 + 592) = swift_task_alloc();
  v24 = sub_10000AA8C();

  return _swift_task_switch(v24, v25, v26);
}

uint64_t sub_10017F5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10018BA20();
  sub_10018BCBC();
  v26 = *(v25 + 592);
  v27 = *(v25 + 504);
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100002834();
  v28 = type metadata accessor for LogInterpolation();
  sub_100003B78(v28);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v100 = *(v29 + 72);
  v91 = *(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1002329D0;
  v33 = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v25 + 208) = v27;
  v92 = v33;
  v93 = v31;
  v34 = v32 + v31;
  *(v25 + 232) = v33;

  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C050();
  }

  else
  {
    sub_10018BD3C();
  }

  v98 = v25 + 16;
  v35 = *(v25 + 552);
  v36 = *(v25 + 544);
  v37 = *(v25 + 512);
  v38 = *(v25 + 464);
  sub_100008780();
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v25 + 208));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v39._countAndFlagsBits = 0xD00000000000002BLL;
  v39._object = 0x8000000100275350;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v39);
  sub_10018AE78();
  v40 = sub_100004DFC(v36, 1, v37);
  v41 = *(v25 + 544);
  if (v40 == 1)
  {
    sub_100004E7C(*(v25 + 544), &qword_1002DA970, &qword_1002318B0);
    *(v25 + 240) = 0u;
    *(v25 + 256) = 0u;
  }

  else
  {
    v42 = *(v25 + 520);
    v43 = *(v25 + 512);
    *(v25 + 264) = v43;
    v44 = sub_100007914((v25 + 240));
    (*(v42 + 32))(v44, v41, v43);
  }

  v45 = *(v25 + 552);
  v46 = *(v25 + 616);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E7C(v25 + 240, &unk_1002DFC10, &qword_10022E6D0);
  v47._countAndFlagsBits = sub_10018BC64();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v47);
  HIDWORD(a9) = v46;
  v99 = v34;
  if (v46 == 2)
  {
    v48 = 0;
    *(v25 + 272) = 0;
    *(v25 + 280) = 0;
    *(v25 + 288) = 0;
  }

  else
  {
    *(v25 + 272) = *(v25 + 616) & 1;
    v48 = &type metadata for Bool;
  }

  v49 = *(v25 + 592);
  v50 = *(v25 + 568);
  v51 = *(v25 + 552);
  v52 = *(v25 + 536);
  v96 = *(v25 + 560);
  v97 = *(v25 + 512);
  v53 = *(v25 + 480);
  v54 = *(v25 + 617);
  v94 = *(v25 + 472);
  v95 = *(v25 + 464);
  *(v25 + 296) = v48;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10018C550(v25 + 272);
  v55._countAndFlagsBits = 0x666E6F437369202CLL;
  v55._object = 0xEC000000203A6769;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v55);
  *(v25 + 328) = &type metadata for Bool;
  *(v25 + 304) = v54;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10018C550(v25 + 304);
  v56._countAndFlagsBits = 0x203A676162202CLL;
  v56._object = 0xE700000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v56);
  *(v25 + 360) = &unk_1002B45C8;
  v57 = swift_allocObject();
  *(v25 + 336) = v57;
  memcpy((v57 + 16), v53, 0xC0uLL);
  sub_10009FF70(v53, v98);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10018C550(v25 + 336);
  v58._countAndFlagsBits = 0x656369766564202CLL;
  v58._object = 0xEE003A6574617453;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v58);
  LogInterpolation.init(stringInterpolation:)();
  *(v25 + 392) = type metadata accessor for TSDataSyncDeviceState(0);
  sub_100007914((v25 + 368));
  sub_10018BA3C();
  sub_10018B17C();
  static LogInterpolation.sensitive(_:)();
  sub_10018C550(v25 + 368);
  Log.default(_:)();

  v59 = *(v50 + 8);
  (v59)(v49, v96);
  sub_10018AE78();
  v60 = sub_100004DFC(v52, 1, v97);
  v61 = *(v25 + 536);
  if (v60 == 1)
  {
    sub_100004E7C(*(v25 + 536), &qword_1002DA970, &qword_1002318B0);
LABEL_19:
    v71 = *(v25 + 504);
    if (*(v25 + 617) == 1)
    {
      v72 = (v25 + 584);
      v73 = *(v25 + 584);
      static Log.tsDataSync.getter();
      *(sub_10018C4A0() + 16) = xmmword_1002329F0;
      *(v25 + 456) = v92;
      *(v25 + 432) = v71;

      v74 = AMSLogKey();
      if (v74)
      {
        v75 = v74;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000C726C();
      }

      else
      {
        sub_1000033C0();
      }

      v79 = *v72;
      sub_10018BD48();
      static LogInterpolation.prefix(_:_:)();

      sub_100004118((v25 + 432));
      sub_10018C0F0();
    }

    else
    {
      v72 = (v25 + 576);
      v76 = *(v25 + 576);
      static Log.tsDataSync.getter();
      *(sub_10018C4A0() + 16) = xmmword_1002329F0;
      *(v25 + 424) = v92;
      *(v25 + 400) = v71;

      v77 = AMSLogKey();
      if (v77)
      {
        v78 = v77;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000C726C();
      }

      else
      {
        sub_1000033C0();
      }

      v80 = *v72;
      sub_10018BD48();
      static LogInterpolation.prefix(_:_:)();

      sub_100004118((v25 + 400));
      sub_10018C0F0();
    }

    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    v81 = *v72;
    v82 = *(v25 + 560);
    sub_10018BDA0();
    v59();

    sub_100003844();
    sub_10018B950();

    return v84(v83, v84, v85, v86, v87, v88, v89, v90, a9, v91, v92, v93, v24, v94, v95, v96, v97, v98, v99, v50 + 8, v100, a22, a23, a24);
  }

  (*(*(v25 + 520) + 32))(*(v25 + 528), *(v25 + 536), *(v25 + 512));
  v62 = *(v25 + 528);
  if (HIDWORD(a9) == 2)
  {
LABEL_18:
    (*(*(v25 + 520) + 8))(v62, *(v25 + 512));
    goto LABEL_19;
  }

  if (!sub_1001238EC(v62, *(v25 + 617), *(v25 + 472), *(v25 + 480), *(v25 + 496), *(v25 + 618)))
  {
    v62 = *(v25 + 528);
    goto LABEL_18;
  }

  v63 = *(v25 + 616);
  v64 = swift_task_alloc();
  *(v25 + 600) = v64;
  *v64 = v25;
  v64[1] = sub_10017FCD8;
  v65 = *(v25 + 504);
  v66 = *(v25 + 480);
  v67 = *(v25 + 488);
  v68 = *(v25 + 617);
  sub_100005040(*(v25 + 528));
  sub_10018B950();

  return sub_10017FF90();
}

uint64_t sub_10017FCD8()
{
  sub_100007F3C();
  sub_10018BD24();
  sub_1000077D8();
  *v4 = v3;
  v5 = *(v1 + 600);
  *v4 = *v2;
  *(v3 + 608) = v0;

  sub_10018BD60();
  v7 = *(v6 + 504);
  sub_10018BF74();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10017FDEC()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  (*(v0[65] + 8))(v0[66], v0[64]);

  sub_100003844();

  return v7();
}

uint64_t sub_10017FEC8()
{
  sub_10018BDA0();
  (*(v0[65] + 8))(v1, v0[64]);

  sub_100002E08();
  v3 = v0[76];

  return v2();
}

uint64_t sub_10017FF90()
{
  sub_100004194();
  *(v1 + 312) = v2;
  *(v1 + 320) = v0;
  *(v1 + 69) = v3;
  *(v1 + 68) = v4;
  *(v1 + 296) = v5;
  *(v1 + 304) = v6;
  v7 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v7);
  v9 = *(v8 + 64);
  *(v1 + 328) = sub_100003FA8();
  v10 = type metadata accessor for Date();
  *(v1 + 336) = v10;
  sub_100003B78(v10);
  *(v1 + 344) = v11;
  v13 = *(v12 + 64);
  *(v1 + 352) = sub_100003FA8();
  v14 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v14);
  v16 = *(v15 + 64);
  *(v1 + 360) = sub_100003FA8();
  v17 = type metadata accessor for Log();
  *(v1 + 368) = v17;
  sub_100003B78(v17);
  *(v1 + 376) = v18;
  v20 = *(v19 + 64);
  *(v1 + 384) = sub_100003FA8();
  v21 = sub_10000AA8C();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_1001800D8()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 320);
  v3 = *(v0 + 68);
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0;
  *(v0 + 128) = 0u;
  v46 = sub_10012370C(v0 + 128, v3);
  v45 = v4;
  sub_100004E7C(v0 + 128, &qword_1002DB958, &qword_100232B60);
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100002834();
  v5 = type metadata accessor for LogInterpolation();
  sub_100003B78(v5);
  v7 = *(v6 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(sub_10018BFC8() + 16) = xmmword_100232A10;
  v10 = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v0 + 168) = v2;
  *(v0 + 192) = v10;

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = *(v0 + 360);
  v14 = *(v0 + 344);
  v41 = *(v0 + 368);
  v42 = *(v0 + 352);
  v39 = *(v0 + 336);
  v40 = *(v0 + 384);
  v44 = *(v0 + 320);
  v43 = *(v0 + 69);
  v35 = *(v0 + 68);
  v37 = *(v0 + 296);
  v38 = *(v0 + 376);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 168));
  LogInterpolation.init(stringLiteral:)();
  *(v0 + 224) = &unk_1002BC148;
  *(v0 + 200) = v46;
  *(v0 + 208) = v45;

  static LogInterpolation.safe(_:)();
  sub_100004E7C(v0 + 200, &unk_1002DFC10, &qword_10022E6D0);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = 0x8000000100275330;
  v15._countAndFlagsBits = 0xD000000000000014;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  *(v0 + 256) = &type metadata for Bool;
  *(v0 + 232) = v35;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E7C(v0 + 232, &unk_1002DFC10, &qword_10022E6D0);
  v16._countAndFlagsBits = 0x3A7461202C29;
  v16._object = 0xE600000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  LogInterpolation.init(stringInterpolation:)();
  *(v0 + 288) = v39;
  v17 = sub_100007914((v0 + 264));
  v36 = *(v14 + 16);
  v36(v17, v37, v39);
  static LogInterpolation.safe(_:)();
  sub_100004E7C(v0 + 264, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  (*(v38 + 8))(v40, v41);
  static Date.now.getter();
  Date.distance(to:)();
  v19 = v18;
  v20 = *(v14 + 8);
  v21 = sub_100008780();
  v22(v21);
  sub_100123858(v43, v0 + 72, v19);
  v23 = *(v0 + 120);
  v24 = *(v44 + 120);
  v25 = *(v44 + 128);
  v26 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v26;
  *(v0 + 48) = *(v0 + 104);
  *(v0 + 64) = v23;
  (*(v25 + 8))(v46, v45, v0 + 16);

  *(v0 + 392) = sub_100188CF8();
  *(v0 + 400) = 0;
  v27 = *(v0 + 336);
  v36(*(v0 + 328), *(v0 + 296), v27);
  sub_10000B7B0();
  sub_100002728(v28, v29, v30, v27);
  v31 = sub_10000AA8C();

  return _swift_task_switch(v31, v32, v33);
}

uint64_t sub_100180598()
{
  sub_10000DB4C();
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v3 = *(v0 + 328);
  v4 = *(v0 + 304);
  v5 = *(v0 + 312);
  v6 = *(v0 + 68);
  sub_100175DA4();
  *(v0 + 408) = v2;
  if (!v2)
  {
    v13 = *(v0 + 384);
    v14 = *(v0 + 392);
    v16 = *(v0 + 352);
    v15 = *(v0 + 360);
    sub_100004E7C(*(v0 + 328), &qword_1002DA970, &qword_1002318B0);

    sub_100003844();
    sub_10000AD14();

    __asm { BRAA            X1, X16 }
  }

  v7 = *(v0 + 392);
  v8 = *(v0 + 320);
  sub_100004E7C(*(v0 + 328), &qword_1002DA970, &qword_1002318B0);

  sub_10000AD14();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001806BC()
{
  sub_100007F3C();
  v1 = v0[51];
  v2 = v0[48];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[41];

  sub_100002E08();

  return v6();
}

uint64_t sub_100180740()
{
  sub_100004194();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v1[22] = v5;
  v6 = type metadata accessor for MetricsEvent();
  v1[27] = v6;
  sub_100003B78(v6);
  v1[28] = v7;
  v9 = *(v8 + 64);
  v1[29] = sub_100003FA8();
  v10 = type metadata accessor for FlagKeys();
  v1[30] = v10;
  sub_100003B78(v10);
  v1[31] = v11;
  v13 = *(v12 + 64);
  v1[32] = sub_100003FA8();
  v14 = type metadata accessor for Date();
  v1[33] = v14;
  sub_100003B78(v14);
  v1[34] = v15;
  v17 = *(v16 + 64);
  v1[35] = sub_1000C70D8();
  v1[36] = swift_task_alloc();
  v18 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v18);
  v20 = *(v19 + 64);
  v1[37] = sub_100003FA8();
  v21 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v21);
  v23 = *(v22 + 64);
  v1[38] = sub_100003FA8();
  v24 = type metadata accessor for Log();
  v1[39] = v24;
  sub_100003B78(v24);
  v1[40] = v25;
  v27 = *(v26 + 64);
  v1[41] = sub_1000C70D8();
  v1[42] = swift_task_alloc();
  v28 = sub_10000AA8C();

  return _swift_task_switch(v28, v29, v30);
}

uint64_t sub_100180934()
{
  sub_10018BA04();
  sub_10018B944();
  v1 = *(v0 + 336);
  v2 = *(v0 + 208);
  static Log.tsDataSync.getter();
  *(v0 + 344) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  *(v0 + 352) = *(v4 + 72);
  *(v0 + 416) = *(v5 + 80);
  sub_100013DAC();
  *(sub_10018BFC8() + 16) = xmmword_1002329F0;
  v6 = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v0 + 16) = v2;
  *(v0 + 360) = v6;
  *(v0 + 40) = v6;

  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C084();
  }

  else
  {
    sub_10018BD30();
  }

  v7 = *(v0 + 320);
  v34 = *(v0 + 336);
  v35 = *(v0 + 312);
  v8 = *(v0 + 304);
  v9 = *(v0 + 176);
  v10 = *(v0 + 184);
  sub_10018BB5C();
  static LogInterpolation.prefix(_:_:)();

  sub_10018BF80((v0 + 16));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD000000000000016;
  v11._object = 0x8000000100275290;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  *(v0 + 72) = &type metadata for String;
  *(v0 + 48) = v9;
  *(v0 + 56) = v10;

  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  v12 = sub_100004E7C(v0 + 48, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018BE14(v12);
  LogInterpolation.init(stringInterpolation:)();
  sub_10018C3F0();
  Log.default(_:)();

  v13 = *(v7 + 8);
  *(v0 + 368) = v13;
  *(v0 + 376) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v8, v35);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC();
  }

  v15 = *(v0 + 176);
  v14 = *(v0 + 184);
  *(v0 + 384) = qword_1003106E8;
  v16 = sub_10018BD54();
  sub_100008F38(v16, v17);
  if (v15 == 0xD000000000000028 && 0x8000000100273D30 == v14)
  {
    v21 = 1;
  }

  else
  {
    v19 = *(v0 + 176);
    v20 = *(v0 + 184);
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  *(v0 + 420) = v21 & 1;
  v22 = *(v0 + 208);
  *(v0 + 392) = sub_100188CF8();
  *(v0 + 400) = 0;
  v23 = *(v0 + 296);
  v24 = *(v0 + 264);
  sub_100007B78();
  sub_100002728(v25, v26, v27, v28);
  sub_10000AA8C();
  sub_10000F438();

  return _swift_task_switch(v29, v30, v31);
}

uint64_t sub_100180F78()
{
  sub_100007F3C();
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v3 = *(v0 + 420);
  v4 = *(v0 + 296);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  sub_100175DA4();
  *(v0 + 408) = v2;
  v7 = *(v0 + 392);
  v8 = *(v0 + 208);
  sub_100004E7C(*(v0 + 296), &qword_1002DA970, &qword_1002318B0);

  sub_100003054();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10018102C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100003FC0();
  sub_1000051E0();
  sub_10018B92C();
  v13 = *(v12 + 232);
  v14 = sub_10018BC64();
  sub_1001AC540(v14, v15, 2);

  sub_100003844();
  sub_100003128();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1001813FC()
{
  sub_100004194();
  v1[54] = v2;
  v1[55] = v0;
  sub_10018C0D8();
  v1[56] = v3;
  v4 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v4);
  v6 = *(v5 + 64);
  v1[57] = sub_100003FA8();
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v7);
  v9 = *(v8 + 64);
  v1[58] = sub_100003FA8();
  v10 = type metadata accessor for Log();
  v1[59] = v10;
  sub_100003B78(v10);
  v1[60] = v11;
  v13 = *(v12 + 64);
  v1[61] = sub_1000C70D8();
  v1[62] = swift_task_alloc();
  v14 = sub_10000AA8C();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_10018151C()
{
  sub_100003FC0();
  sub_1000051E0();
  v1 = *(v0 + 496);
  v2 = *(v0 + 440);
  static Log.tsDataSync.getter();
  *(v0 + 504) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  *(v0 + 512) = *(v4 + 72);
  *(v0 + 608) = *(v5 + 80);
  sub_10018BCAC();
  *(sub_10018BFC8() + 16) = xmmword_1002329F0;
  v6 = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v0 + 520) = v6;
  *(v0 + 296) = v6;
  *(v0 + 272) = v2;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = *(v0 + 496);
  v10 = *(v0 + 480);
  v27 = *(v0 + 472);
  v11 = *(v0 + 464);
  v12 = *(v0 + 432);
  static LogInterpolation.prefix(_:_:)();

  sub_10018BF80((v0 + 272));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0xD000000000000019;
  v13._object = 0x8000000100275230;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  v14 = type metadata accessor for AccountIdentity();
  *(v0 + 328) = v14;
  sub_100007914((v0 + 304));
  sub_10000B7EC(v14);
  (*(v15 + 16))();
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  v16 = sub_100004E7C(v0 + 304, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018BE14(v16);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v17 = *(v10 + 8);
  *(v0 + 528) = v17;
  *(v0 + 536) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v9, v27);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC();
  }

  v18 = *(v0 + 440);
  *(v0 + 544) = qword_1003106E8;
  v19 = sub_100003324();
  sub_100008F38(v19, v20);
  *(v0 + 552) = *(v18 + 112);
  swift_task_alloc();
  sub_10000DEA0();
  *(v0 + 560) = v21;
  *v21 = v22;
  sub_10000BFD4(v21);
  sub_100003128();

  return sub_10017AECC(v23, v24);
}

uint64_t sub_1001817E0()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v6 = *(v5 + 560);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  v3[71] = v0;

  if (v0)
  {
    v9 = v3[55];
    v10 = sub_10018C344();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    swift_task_alloc();
    sub_10000DEA0();
    v3[72] = v13;
    *v13 = v14;
    v13[1] = sub_100181938;
    v15 = v3[69];
    v16 = v3[54];

    return sub_10019C724();
  }
}

uint64_t sub_100181938()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 576);
  v3 = *(v1 + 440);
  v4 = *v0;
  sub_100004504();
  *v5 = v4;

  v6 = sub_10000AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100181A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  sub_100008B30();
  v15 = *(v14 + 568);
  v16 = *(v14 + 440);
  *(v14 + 584) = sub_100188CF8();
  *(v14 + 592) = v15;
  if (v15)
  {
    sub_100004E7C(v14 + 208, &qword_1002DF3B8, &qword_10023F050);
    sub_10018A46C(v14 + 16);
    v17 = *(v14 + 520);
    v18 = *(v14 + 504);
    v19 = *(v14 + 512);
    v20 = *(v14 + 488);
    v21 = *(v14 + 440);
    v22 = (*(v14 + 608) + 32) & ~*(v14 + 608);
    static Log.tsDataSync.getter();
    v23 = swift_allocObject();
    sub_10018BE8C(v23, xmmword_1002329D0);
    v24 = AMSLogKey();
    if (v24)
    {
      v18 = v24;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10018C5C8();
    }

    else
    {
      sub_10018C3D0();
    }

    v47 = *(v14 + 536);
    v33 = *(v14 + 528);
    v34 = *(v14 + 512);
    sub_10018B96C();

    sub_100004118((v14 + 336));
    sub_10018BFB8();
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    sub_10018C294();
    sub_10000B7EC(v23 + v22);
    (*(v35 + 16))();
    static LogInterpolation.sensitive(_:)();
    sub_100004E7C(v14 + 368, &unk_1002DFC10, &qword_10022E6D0);
    Log.error(_:)();

    v33(v18, v21);
    sub_10018BBD4();
    v36 = sub_100003324();
    sub_1001AC540(v36, v37, 2);

    sub_100003844();
    sub_100003BBC();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, v47, a11, a12, a13, a14);
  }

  else
  {
    v25 = *(v14 + 456);
    type metadata accessor for Date();
    v26 = sub_100013DDC();
    sub_100002728(v26, v27, 1, v28);
    sub_10000AA8C();
    sub_100003BBC();

    return _swift_task_switch(v29, v30, v31);
  }
}

uint64_t sub_100181C88()
{
  sub_100007F3C();
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[57];
  v4 = v0[54];
  sub_1001760F0();
  v0[75] = v1;
  v5 = v0[73];
  v6 = v0[55];
  sub_100004E7C(v0[57], &qword_1002DA970, &qword_1002318B0);

  sub_100004E7C((v0 + 26), &qword_1002DF3B8, &qword_10023F050);
  sub_10018A46C((v0 + 2));
  sub_100003054();

  return _swift_task_switch(v7, v8, v9);
}

void sub_100181D64()
{
  sub_10000DB4C();
  sub_10018BBD4();
  v0 = sub_100003324();
  sub_1001AC540(v0, v1, 2);

  sub_100003844();
  sub_10000AD14();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100181DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100003FC0();
  sub_1000051E0();
  v16 = v13[71];
  sub_10018BDE4();
  v17 = sub_100005170();
  sub_10018BE8C(v17, xmmword_1002329D0);
  v18 = AMSLogKey();
  if (v18)
  {
    v12 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C5C8();
  }

  else
  {
    sub_10018C3D0();
  }

  v19 = v13[67];
  v20 = v13[66];
  v21 = v13[64];
  sub_10018B96C();

  sub_100004118(v13 + 42);
  sub_10018BFB8();
  LogInterpolation.init(stringLiteral:)();
  sub_10018C238();
  sub_10018C294();
  sub_10000B7EC(v17 + v15);
  (*(v22 + 16))();
  static LogInterpolation.sensitive(_:)();
  sub_100004E7C((v13 + 46), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v20(v12, v14);
  sub_10018BBD4();
  v23 = sub_100003324();
  sub_1001AC540(v23, v24, 2);

  sub_100003844();
  sub_100003128();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_100181F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100003FC0();
  sub_1000051E0();
  v16 = v13[75];
  sub_10018BDE4();
  v17 = sub_100005170();
  sub_10018BE8C(v17, xmmword_1002329D0);
  v18 = AMSLogKey();
  if (v18)
  {
    v12 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C5C8();
  }

  else
  {
    sub_10018C3D0();
  }

  v19 = v13[67];
  v20 = v13[66];
  v21 = v13[64];
  sub_10018B96C();

  sub_100004118(v13 + 42);
  sub_10018BFB8();
  LogInterpolation.init(stringLiteral:)();
  sub_10018C238();
  sub_10018C294();
  sub_10000B7EC(v17 + v15);
  (*(v22 + 16))();
  static LogInterpolation.sensitive(_:)();
  sub_100004E7C((v13 + 46), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  v20(v12, v14);
  sub_10018BBD4();
  v23 = sub_100003324();
  sub_1001AC540(v23, v24, 2);

  sub_100003844();
  sub_100003128();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_100182110()
{
  sub_100004194();
  v1[48] = v2;
  v1[49] = v0;
  v1[46] = v3;
  v1[47] = v4;
  sub_10018C0D8();
  v1[50] = v5;
  v6 = type metadata accessor for MetricsEvent();
  v1[51] = v6;
  sub_100003B78(v6);
  v1[52] = v7;
  v9 = *(v8 + 64);
  v1[53] = sub_100003FA8();
  v10 = type metadata accessor for FlagKeys();
  v1[54] = v10;
  sub_100003B78(v10);
  v1[55] = v11;
  v13 = *(v12 + 64);
  v1[56] = sub_100003FA8();
  v14 = type metadata accessor for Date();
  v1[57] = v14;
  sub_100003B78(v14);
  v1[58] = v15;
  v17 = *(v16 + 64);
  v1[59] = sub_1000C70D8();
  v1[60] = swift_task_alloc();
  v18 = type metadata accessor for TSDataSyncDeviceState(0);
  sub_1000030B8(v18);
  v20 = *(v19 + 64);
  v1[61] = sub_100003FA8();
  v21 = sub_100099DF4(&qword_1002DD528, &qword_100238250);
  v1[62] = v21;
  sub_1000030B8(v21);
  v23 = *(v22 + 64);
  v1[63] = sub_1000C70D8();
  v1[64] = swift_task_alloc();
  v24 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v24);
  v26 = *(v25 + 64);
  v1[65] = sub_100003FA8();
  v27 = type metadata accessor for Log();
  v1[66] = v27;
  sub_100003B78(v27);
  v1[67] = v28;
  v30 = *(v29 + 64);
  v1[68] = sub_1000C70D8();
  v1[69] = swift_task_alloc();
  v31 = sub_10000AA8C();

  return _swift_task_switch(v31, v32, v33);
}

uint64_t sub_100182354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  sub_100008B30();
  v15 = *(v14 + 552);
  v16 = *(v14 + 392);
  static Log.tsDataSync.getter();
  *(v14 + 560) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v17 = type metadata accessor for LogInterpolation();
  sub_100003B78(v17);
  *(v14 + 568) = *(v18 + 72);
  *(v14 + 704) = *(v19 + 80);
  sub_10018BCAC();
  *(sub_10018BFC8() + 16) = xmmword_1002329F0;
  v20 = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v14 + 208) = v16;
  *(v14 + 576) = v20;
  *(v14 + 232) = v20;

  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C084();
  }

  else
  {
    sub_10018BD30();
  }

  v21 = *(v14 + 552);
  v22 = *(v14 + 536);
  v69 = *(v14 + 528);
  v23 = *(v14 + 520);
  v24 = *(v14 + 368);
  sub_100003F40();

  sub_10018BF80((v14 + 208));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0xD000000000000011;
  v25._object = 0x80000001002751B0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
  v26 = type metadata accessor for TSDataSyncExternalEvent(0);
  *(v14 + 264) = v26;
  sub_100007914((v14 + 240));
  sub_10018B17C();
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  v27 = sub_100004E7C(v14 + 240, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018BE14(v27);
  LogInterpolation.init(stringInterpolation:)();
  sub_10018C538();

  v28 = *(v22 + 8);
  *(v14 + 584) = v28;
  *(v14 + 592) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v21, v69);
  if (qword_1002DA5B8 != -1)
  {
    sub_100006CCC();
  }

  v29 = *(v14 + 368);
  *(v14 + 600) = qword_1003106E8;
  sub_100008F38(0xD000000000000016, 0x80000001002751D0);
  v30 = *(v29 + *(v26 + 32));
  *(v14 + 608) = v30;
  v31 = *(v30 + 32);
  *(v14 + 708) = v31;
  v32 = -1;
  v33 = -1 << v31;
  if (-(-1 << v31) < 64)
  {
    v32 = ~(-1 << -v33);
  }

  v34 = v32 & *(v30 + 64);

  if (v34)
  {
    v35 = 0;
LABEL_13:
    *(v14 + 624) = v35;
    *(v14 + 616) = v34;
    v38 = *(v14 + 504);
    v37 = *(v14 + 512);
    v39 = *(v14 + 496);
    v40 = __clz(__rbit64(v34)) | (v35 << 6);
    v41 = *(v30 + 48);
    v42 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
    sub_1000030B8(v42);
    v44 = *(v43 + 72);
    sub_100004D10();
    sub_10018B17C();
    v45 = *(*(v30 + 56) + 8 * v40);
    v46 = *(v39 + 48);
    sub_100006B88();
    sub_100008780();
    sub_10018B1D8();
    *(v38 + v46) = v45;

    swift_task_alloc();
    sub_10000DEA0();
    *(v14 + 632) = v47;
    *v47 = v48;
    sub_10018B8F0(v47);
    sub_100003BBC();

    return sub_100188E9C(v49);
  }

  else
  {
    v36 = 0;
    while (((63 - v33) >> 6) - 1 != v36)
    {
      v35 = v36 + 1;
      v34 = *(v30 + 8 * v36++ + 72);
      if (v34)
      {
        goto LABEL_13;
      }
    }

    v52 = *(v14 + 600);
    v53 = *(v14 + 552);
    v54 = *(v14 + 544);
    v55 = *(v14 + 520);
    v57 = *(v14 + 504);
    v56 = *(v14 + 512);
    v59 = *(v14 + 480);
    v58 = *(v14 + 488);
    v68 = *(v14 + 472);
    v70 = *(v14 + 448);
    v71 = *(v14 + 424);
    sub_10018BF40(22, 0x80000001002751D0);

    sub_100003844();
    sub_100003BBC();

    return v61(v60, v61, v62, v63, v64, v65, v66, v67, v68, v70, v71, a12, a13, a14);
  }
}

uint64_t sub_100182794()
{
  sub_100007F3C();
  sub_10018BD24();
  sub_1000077D8();
  *v4 = v3;
  v5 = *(v1 + 632);
  *v4 = *v2;
  *(v3 + 640) = v0;

  sub_10018BD60();
  v7 = *(v6 + 392);
  sub_10018BF74();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1001828A8()
{
  sub_100004194();
  v0[81] = *(v0[49] + 112);
  swift_task_alloc();
  sub_10000DEA0();
  v0[82] = v1;
  *v1 = v2;
  v3 = sub_10000BFD4(v1);

  return sub_10017AECC(v3, v4);
}

uint64_t sub_100182938()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v6 = *(v5 + 656);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  v3[83] = v0;

  if (v0)
  {
    v9 = v3[49];
    v10 = sub_10018C344();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = swift_task_alloc();
    v3[84] = v13;
    *v13 = v7;
    v13[1] = sub_100182A90;
    v14 = v3[81];
    v15 = v3[48];
    v16 = v3[49];
    v17 = sub_100005040(v3[63]);

    return sub_100188C2C(v17, v18, v19);
  }
}

uint64_t sub_100182A90()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_1000077D8();
  *v6 = v5;
  v8 = *(v7 + 672);
  v9 = *v1;
  sub_100004504();
  *v10 = v9;
  v5[85] = v3;
  v5[86] = v0;

  if (v0)
  {
    v11 = v5[49];
    sub_10018A46C((v5 + 2));
    v12 = sub_10018C408();
    v13 = v11;
  }

  else
  {
    v12 = sub_10018C408();
    v13 = v3;
  }

  return _swift_task_switch(v12, v13, 0);
}

uint64_t sub_100182BB0()
{
  sub_100007F3C();
  v1 = v0[86];
  v2 = v0[85];
  sub_10018D3CC(v0[46], v0[61], v0 + 2, v0[48]);
  v0[87] = v1;
  v3 = v0[49];
  sub_10018A46C((v0 + 2));
  sub_100003054();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100182C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  sub_100008B30();
  v15 = *(v14 + 680);
  v16 = *(v14 + 504);
  v17 = *(v14 + 488);

  sub_1000067E4();
  sub_10018B234();
  result = sub_100004E7C(v16, &qword_1002DD528, &qword_100238250);
  v19 = *(v14 + 624);
  v20 = (*(v14 + 616) - 1) & *(v14 + 616);
  if (v20)
  {
    v21 = *(v14 + 608);
LABEL_7:
    *(v14 + 624) = v19;
    *(v14 + 616) = v20;
    v23 = *(v14 + 504);
    v24 = *(v14 + 512);
    v25 = *(v14 + 496);
    v26 = __clz(__rbit64(v20)) | (v19 << 6);
    v27 = *(v21 + 48);
    v28 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
    sub_1000030B8(v28);
    v30 = *(v29 + 72);
    sub_100004D10();
    sub_10018B17C();
    v31 = *(*(v21 + 56) + 8 * v26);
    v32 = *(v25 + 48);
    sub_100006B88();
    sub_10018B1D8();
    *(v23 + v32) = v31;

    swift_task_alloc();
    sub_10000DEA0();
    *(v14 + 632) = v33;
    *v33 = v34;
    sub_10018B8F0();
    sub_100003BBC();

    return sub_100188E9C(v35);
  }

  else
  {
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return result;
      }

      if (v22 >= (((1 << *(v14 + 708)) + 63) >> 6))
      {
        break;
      }

      v21 = *(v14 + 608);
      v20 = *(v21 + 8 * v22 + 64);
      ++v19;
      if (v20)
      {
        v19 = v22;
        goto LABEL_7;
      }
    }

    v37 = *(v14 + 608);

    sub_100008428();
    v47 = *(v14 + 424);
    v48 = v38;
    sub_10018BF40(22, 0x80000001002751D0);

    sub_100003844();
    sub_100003BBC();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, v47, v48, a12, a13, a14);
  }
}

uint64_t sub_10018398C()
{
  sub_100004194();
  v1[30] = v2;
  v1[31] = v0;
  v1[28] = v3;
  v1[29] = v4;
  v1[27] = v5;
  v6 = sub_100099DF4(&qword_1002DC208, &qword_100234830);
  sub_1000030B8(v6);
  v8 = *(v7 + 64);
  v1[32] = sub_1000C70D8();
  v1[33] = swift_task_alloc();
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v9);
  v11 = *(v10 + 64);
  v1[34] = sub_1000C70D8();
  v1[35] = swift_task_alloc();
  v12 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v12);
  v14 = *(v13 + 64);
  v1[36] = sub_100003FA8();
  v15 = type metadata accessor for AccountIdentity();
  v1[37] = v15;
  sub_100003B78(v15);
  v1[38] = v16;
  v18 = *(v17 + 64);
  v1[39] = sub_1000C70D8();
  v1[40] = swift_task_alloc();
  v19 = type metadata accessor for Log();
  v1[41] = v19;
  sub_100003B78(v19);
  v1[42] = v20;
  v22 = *(v21 + 64);
  v1[43] = sub_1000C70D8();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v23 = sub_10000AA8C();

  return _swift_task_switch(v23, v24, v25);
}

void sub_100183B38()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 248);
  static Log.tsDataSync.getter();
  *(v0 + 368) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  *(v0 + 376) = *(v4 + 72);
  *(v0 + 472) = *(v5 + 80);
  sub_100013DAC();
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v6 = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v0 + 56) = v2;
  *(v0 + 384) = v6;
  *(v0 + 80) = v6;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = *(v0 + 360);
  v11 = *(v0 + 328);
  v10 = *(v0 + 336);
  v89 = *(v0 + 216);
  sub_1000DBA50();
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 56));
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  v12 = *(v10 + 8);
  *(v0 + 392) = v12;
  *(v0 + 400) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v11);
  sub_10009AD10();
  v14 = v13;
  *(v0 + 408) = v13;
  *(v0 + 416) = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
  sub_100007B78();
  sub_100002728(v15, v16, v17, v18);
  v19 = *(v14 + 16);
  *(v0 + 424) = v19;
  if (v19)
  {
    v20 = 0;
    v90 = (v0 + 16);
    while (1)
    {
      sub_10018C3BC(v20);
      if (v23)
      {
        __break(1u);
        return;
      }

      v24 = *(v0 + 320);
      v26 = *(v0 + 296);
      v25 = *(v0 + 304);
      v27 = *(v0 + 288);
      v28 = *(v0 + 224);
      sub_100007974(v22 + 40 * v21 + 32, v90);
      v29 = sub_10000C4FC(v90, *(v0 + 40));
      v30 = *(v25 + 16);
      v30(v24, v29, v26);
      sub_10000C4FC(v90, *(v0 + 40));
      sub_10009B8B0();
      v31 = sub_100123DD0(v24, v27, v28);
      sub_100004E7C(v27, &qword_1002DA970, &qword_1002318B0);
      v32 = sub_10018C460(*(v25 + 8));
      v33(v32);
      if ((v31 & 1) == 0)
      {
        break;
      }

      v34 = *(v0 + 376);
      v35 = *(v0 + 384);
      sub_10018C3B0();
      v36 = *(v0 + 352);
      v37 = *(v0 + 248);
      static Log.tsDataSync.getter();
      sub_10018C114();
      *(swift_allocObject() + 16) = xmmword_1002329F0;
      *(v0 + 176) = v35;
      *(v0 + 152) = v37;

      v38 = AMSLogKey();
      if (v38)
      {
        v39 = v38;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000C726C();
      }

      else
      {
        sub_1000033C0();
      }

      v86 = *(v0 + 392);
      v88 = *(v0 + 400);
      v40 = *(v0 + 376);
      v41 = *(v0 + 352);
      v84 = *(v0 + 328);
      v42 = *(v0 + 280);
      sub_10018BD48();
      static LogInterpolation.prefix(_:_:)();

      sub_10018BF80((v0 + 152));
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      sub_10018BD0C();
      v44._countAndFlagsBits = v43 + 8;
      v44._object = 0x8000000100275190;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v44);
      v45 = *(v0 + 40);
      sub_10000C4FC(v90, v45);
      *(v0 + 208) = v45;
      sub_100007914((v0 + 184));
      sub_10000B7EC(v45);
      v47 = *(v46 + 16);
      sub_10018BD48();
      v48();
      LogInterpolation.StringInterpolation.appendInterpolation(_:)();
      sub_100004E7C(v0 + 184, &unk_1002DFC10, &qword_10022E6D0);
      v49._countAndFlagsBits = sub_10018C0CC();
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v49);
      LogInterpolation.init(stringInterpolation:)();
      Log.default(_:)();

      v86(v41, v84);
      v50 = *(v0 + 424);
      v51 = *(v0 + 432) + 1;
      sub_100004118(v90);
      if (v51 == v50)
      {
        goto LABEL_12;
      }

      v20 = *(v0 + 432) + 1;
    }

    v59 = *(v0 + 312);
    v60 = *(v0 + 296);
    v61 = sub_10000C4FC(v90, *(v0 + 40));
    v30(v59, v61, v60);
    swift_task_alloc();
    sub_10000DEA0();
    *(v0 + 456) = v62;
    *v62 = v63;
    sub_10018B890(v62);

    sub_100184AF0();
  }

  else
  {
LABEL_12:
    v52 = *(v0 + 408);
    v54 = *(v0 + 376);
    v53 = *(v0 + 384);
    sub_10018C3B0();
    v55 = *(v0 + 344);
    v56 = *(v0 + 248);

    static Log.tsDataSync.getter();
    sub_10018C114();
    *(swift_allocObject() + 16) = xmmword_1002329F0;
    *(v0 + 112) = v53;
    *(v0 + 88) = v56;

    v57 = AMSLogKey();
    if (v57)
    {
      v58 = v57;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v64 = *(v0 + 416);
    v65 = *(v0 + 272);
    v66 = *(v0 + 256);
    v67 = *(v0 + 216);
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v0 + 88));
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v68._countAndFlagsBits = sub_10018C120();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v68);
    sub_10018AE78();
    if (sub_100004DFC(v66, 1, v64) == 1)
    {
      sub_100004E7C(*(v0 + 256), &qword_1002DC208, &qword_100234830);
      *(v0 + 120) = 0u;
      *(v0 + 136) = 0u;
    }

    else
    {
      v69 = *(v0 + 256);
      *(v0 + 144) = *(v0 + 416);
      sub_100007914((v0 + 120));
      sub_10000BBA8();
    }

    v70 = *(v0 + 392);
    v71 = *(v0 + 400);
    v72 = *(v0 + 376);
    v73 = *(v0 + 360);
    v74 = *(v0 + 344);
    v75 = *(v0 + 328);
    v79 = *(v0 + 352);
    v80 = *(v0 + 320);
    v81 = *(v0 + 312);
    v82 = *(v0 + 288);
    v83 = *(v0 + 280);
    v76 = *(v0 + 272);
    v85 = *(v0 + 264);
    v87 = *(v0 + 256);
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    v77 = sub_100004E7C(v0 + 120, &unk_1002DFC10, &qword_10022E6D0);
    sub_10018BE14(v77);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    v70(v74, v75);

    sub_100003844();

    v78();
  }
}

uint64_t sub_1001842B8()
{
  sub_100007F3C();
  v2 = *v1;
  v3 = *v1;
  sub_100004504();
  *v4 = v3;
  v5 = v2[57];
  *v4 = *v1;
  v3[58] = v0;

  v6 = v2[56];
  v7 = v2[55];
  if (v0)
  {
    v8 = v3[51];
    v9 = v3[39];
    v10 = v3[37];
    v11 = v3[31];
    v7(v9, v10);

    v12 = sub_10018C414();
    v13 = v11;
  }

  else
  {
    v14 = v3[31];
    v7(v3[39], v3[37]);
    v12 = sub_10018C414();
    v13 = v14;
  }

  return _swift_task_switch(v12, v13, 0);
}

void sub_100184420()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 216);
  v3 = sub_100008780();
  sub_100004E7C(v3, v4, &qword_100234830);
  sub_1000114E8();
  while (1)
  {
    v5 = *(v0 + 424);
    v6 = *(v0 + 432) + 1;
    sub_100004118((v0 + 16));
    if (v6 == v5)
    {
      break;
    }

    sub_10018C3BC(*(v0 + 432) + 1);
    if (v9)
    {
      __break(1u);
      return;
    }

    v10 = *(v0 + 320);
    v11 = *(v0 + 296);
    v12 = *(v0 + 304);
    v13 = *(v0 + 288);
    v14 = *(v0 + 224);
    sub_100007974(v8 + 40 * v7 + 32, v0 + 16);
    v15 = sub_10000C4FC((v0 + 16), *(v0 + 40));
    v16 = *(v12 + 16);
    v16(v10, v15, v11);
    sub_10000C4FC((v0 + 16), *(v0 + 40));
    sub_10009B8B0();
    v17 = sub_100123DD0(v10, v13, v14);
    sub_100004E7C(v13, &qword_1002DA970, &qword_1002318B0);
    v18 = sub_10018C460(*(v12 + 8));
    v19(v18);
    if ((v17 & 1) == 0)
    {
      v41 = *(v0 + 312);
      v42 = *(v0 + 296);
      v43 = sub_10000C4FC((v0 + 16), *(v0 + 40));
      v16(v41, v43, v42);
      swift_task_alloc();
      sub_10000DEA0();
      *(v0 + 456) = v44;
      *v44 = v45;
      sub_10018B890();

      sub_100184AF0();
      return;
    }

    v20 = *(v0 + 376);
    v21 = *(v0 + 384);
    sub_10018C3B0();
    v22 = *(v0 + 352);
    v23 = *(v0 + 248);
    static Log.tsDataSync.getter();
    sub_10018C114();
    *(swift_allocObject() + 16) = xmmword_1002329F0;
    *(v0 + 176) = v21;
    *(v0 + 152) = v23;

    v24 = AMSLogKey();
    if (v24)
    {
      v25 = v24;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v26 = *(v0 + 392);
    v68 = *(v0 + 400);
    v27 = *(v0 + 376);
    v28 = *(v0 + 352);
    v29 = *(v0 + 328);
    v30 = *(v0 + 280);
    static LogInterpolation.prefix(_:_:)();

    sub_10018BF80((v0 + 152));
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_10018BD0C();
    v32._countAndFlagsBits = v31 + 8;
    v32._object = 0x8000000100275190;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
    v33 = *(v0 + 40);
    sub_10000C4FC((v0 + 16), v33);
    *(v0 + 208) = v33;
    sub_100007914((v0 + 184));
    sub_10000B7EC(v33);
    (*(v34 + 16))();
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E7C(v0 + 184, &unk_1002DFC10, &qword_10022E6D0);
    v35._countAndFlagsBits = sub_10018C0CC();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v35);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    v26(v28, v29);
  }

  v36 = *(v0 + 408);
  v37 = *(v0 + 376);
  v38 = *(v0 + 384);
  sub_10018C3B0();
  v39 = *(v0 + 344);
  v40 = *(v0 + 248);

  static Log.tsDataSync.getter();
  sub_10018C114();
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  *(v0 + 112) = v38;
  *(v0 + 88) = v40;

  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C050();
  }

  else
  {
    sub_10018BD3C();
  }

  v46 = *(v0 + 416);
  v47 = *(v0 + 272);
  v48 = *(v0 + 256);
  v49 = *(v0 + 216);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 88));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v50._countAndFlagsBits = sub_10018C120();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v50);
  sub_10018AE78();
  if (sub_100004DFC(v48, 1, v46) == 1)
  {
    sub_100004E7C(*(v0 + 256), &qword_1002DC208, &qword_100234830);
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0u;
  }

  else
  {
    v51 = *(v0 + 256);
    *(v0 + 144) = *(v0 + 416);
    sub_100007914((v0 + 120));
    sub_10000BBA8();
  }

  v52 = *(v0 + 392);
  v53 = *(v0 + 400);
  v54 = *(v0 + 376);
  v56 = *(v0 + 352);
  v55 = *(v0 + 360);
  v57 = *(v0 + 344);
  v58 = *(v0 + 328);
  v62 = *(v0 + 320);
  v63 = *(v0 + 312);
  v64 = *(v0 + 288);
  v65 = *(v0 + 280);
  v59 = *(v0 + 272);
  v66 = *(v0 + 264);
  v67 = *(v0 + 256);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  v60 = sub_100004E7C(v0 + 120, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018BE14(v60);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v52(v57, v58);

  sub_100003844();

  v61();
}

uint64_t sub_100184A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100003FC0();
  sub_1000051E0();
  v13 = v12[44];
  v14 = v12[45];
  v15 = v12[43];
  v17 = v12[39];
  v16 = v12[40];
  v19 = v12[35];
  v18 = v12[36];
  v21 = v12[33];
  v20 = v12[34];
  v32 = v12[32];
  sub_100004E7C(v12[27], &qword_1002DC208, &qword_100234830);
  sub_100004118(v12 + 2);

  sub_100002E08();
  v22 = v12[58];
  sub_100003128();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, a10, a11, a12);
}

uint64_t sub_100184AF0()
{
  sub_100004194();
  v1[88] = v0;
  v1[87] = v2;
  v1[86] = v3;
  v1[85] = v4;
  v1[84] = v5;
  v1[83] = v6;
  v1[82] = v7;
  v8 = type metadata accessor for MetricsEvent();
  v1[89] = v8;
  sub_100003B78(v8);
  v1[90] = v9;
  v11 = *(v10 + 64);
  v1[91] = sub_100003FA8();
  v12 = type metadata accessor for FlagKeys();
  v1[92] = v12;
  sub_100003B78(v12);
  v1[93] = v13;
  v15 = *(v14 + 64);
  v1[94] = sub_100003FA8();
  v16 = type metadata accessor for Date();
  v1[95] = v16;
  sub_100003B78(v16);
  v1[96] = v17;
  v19 = *(v18 + 64);
  v1[97] = sub_1000C70D8();
  v1[98] = swift_task_alloc();
  v20 = sub_100099DF4(&qword_1002DC208, &qword_100234830);
  sub_1000030B8(v20);
  v22 = *(v21 + 64);
  v1[99] = sub_1000C70D8();
  v1[100] = swift_task_alloc();
  v23 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v1[101] = v23;
  sub_1000030B8(v23);
  v25 = *(v24 + 64);
  v1[102] = sub_100003FA8();
  v26 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v1[103] = v26;
  sub_100003B78(v26);
  v1[104] = v27;
  v29 = *(v28 + 64);
  v1[105] = sub_1000C70D8();
  v1[106] = swift_task_alloc();
  v30 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v30);
  v32 = *(v31 + 64);
  v1[107] = sub_1000C70D8();
  v1[108] = swift_task_alloc();
  v33 = type metadata accessor for Log();
  v1[109] = v33;
  sub_100003B78(v33);
  v1[110] = v34;
  v36 = *(v35 + 64);
  v1[111] = sub_1000C70D8();
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v37 = sub_10000AA8C();

  return _swift_task_switch(v37, v38, v39);
}

uint64_t sub_100184DAC()
{
  sub_100004194();
  v0[116] = *(v0[88] + 112);
  swift_task_alloc();
  sub_10000DEA0();
  v0[117] = v1;
  *v1 = v2;
  v1[1] = sub_100184E4C;
  v3 = v0[83];

  return sub_10019C724();
}

uint64_t sub_100184E4C()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 936);
  v3 = *(v1 + 704);
  v4 = *v0;
  sub_100004504();
  *v5 = v4;

  v6 = sub_10000AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100184F44()
{
  v1 = *(v0 + 920);
  v2 = *(v0 + 704);
  v3 = *(v0 + 688);
  v4 = *(v0 + 656);
  sub_10018AE78();
  static Log.tsDataSync.getter();
  *(v0 + 944) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v5 = type metadata accessor for LogInterpolation();
  sub_100003B78(v5);
  *(v0 + 952) = *(v6 + 72);
  *(v0 + 140) = *(v7 + 80);
  sub_10018BCAC();
  v110 = xmmword_1002329F0;
  *(sub_10018BFC8() + 16) = xmmword_1002329F0;
  v8 = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v0 + 208) = v2;
  v106 = v0 + 16;
  *(v0 + 960) = v8;
  *(v0 + 232) = v8;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = *(v0 + 920);
  v12 = *(v0 + 880);
  v116 = *(v0 + 872);
  v13 = *(v0 + 864);
  v120 = *(v0 + 672);
  v14 = *(v0 + 664);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 208));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0xD000000000000020;
  v15._object = 0x8000000100275050;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  v16 = type metadata accessor for AccountIdentity();
  *(v0 + 968) = v16;
  *(v0 + 264) = v16;
  sub_100007914((v0 + 240));
  sub_10000B7EC(v16);
  v18 = *(v17 + 16);
  *(v0 + 976) = v18;
  *(v0 + 984) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18();
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  v19 = sub_100004E7C(v0 + 240, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018BE14(v19);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v20 = *(v12 + 8);
  *(v0 + 992) = v20;
  *(v0 + 1000) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v11, v116);
  v21 = *v120;
  *(v0 + 1008) = *v120;
  v22 = *(v21 + 32);
  *(v0 + 137) = v22;
  v23 = 1 << v22;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & *(v21 + 56);
  v108 = "ets for account ";
  *(v0 + 204) = enum case for FlagKeys.TSDataSyncMetricsErrorEnhancements(_:);

  v27 = 0;
  if (v25)
  {
    while (1)
    {
      v28 = *(v0 + 1008);
LABEL_12:
      *(v0 + 1024) = v27;
      *(v0 + 1016) = v25;
      v117 = *(v0 + 960);
      v30 = *(v0 + 140);
      v31 = *(v0 + 952);
      v32 = *(v0 + 944);
      sub_10018B91C();
      v33 = *(v0 + 832);
      v34 = *(v0 + 704);
      sub_10018B8E0();
      v36 = *(v35 + 72);
      sub_10000818C();
      sub_10018B17C();
      sub_1000077AC();
      static Log.tsDataSync.getter();
      v37 = swift_allocObject();
      sub_10018B670(v37, v38, v39, v40, v41, v42, v43, v44, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110);
      v45 = AMSLogKey();
      if (v45)
      {
        v46 = v45;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000C726C();
      }

      else
      {
        sub_1000033C0();
      }

      v121 = *(v0 + 1000);
      v112 = *(v0 + 952);
      v47 = *(v0 + 912);
      v114 = *(v0 + 872);
      v118 = *(v0 + 992);
      v48 = *(v0 + 864);
      v49 = *(v0 + 840);
      v50 = *(v0 + 824);
      sub_10018BD48();
      static LogInterpolation.prefix(_:_:)();

      sub_10018BF80((v0 + 272));
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v51._countAndFlagsBits = sub_10000DF94();
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v51);
      *(v0 + 328) = v50;
      sub_100007914((v0 + 304));
      sub_10000818C();
      sub_10018B17C();
      LogInterpolation.StringInterpolation.appendInterpolation(_:)();
      v52 = sub_100004E7C(v0 + 304, &unk_1002DFC10, &qword_10022E6D0);
      sub_10018BE14(v52);
      LogInterpolation.init(stringInterpolation:)();
      Log.default(_:)();

      v118(v47, v114);
      v53 = *(v49 + *(v50 + 24));
      *(v0 + 1032) = v53;
      v54 = *(v53 + 16);
      *(v0 + 1040) = v54;
      if (v54)
      {
        v76 = *(v0 + 840);
        v77 = *(v0 + 704);
        *(v0 + 138) = *(v76 + 16);
        *(v0 + 1048) = *(v76 + 24);
        *(v0 + 1056) = *(v76 + 32);
        *(v0 + 1064) = v77[24];
        v78 = v77[25];
        *(v0 + 1072) = v78;
        *(v0 + 1080) = v77[22];
        *(v0 + 1088) = v77[23];
        v79 = *(v78 + 8);
        *(v0 + 1096) = v79;
        *(v0 + 1104) = (v78 + 8) & 0xFFFFFFFFFFFFLL | 0x96B9000000000000;
        *(v0 + 1112) = 0;
        v81 = *(v53 + 48);
        v80 = *(v53 + 64);
        v82 = *(v53 + 32);
        *(v0 + 121) = *(v53 + 73);
        *(v0 + 96) = v81;
        *(v0 + 112) = v80;
        *(v0 + 80) = v82;
        sub_1000BA2CC(v0 + 80, v0 + 144);
        sub_10018C0E4();
        v122 = v83 + *v83;
        v84 = *(v79 + 4);
        v85 = swift_task_alloc();
        v86 = sub_10018C108(v85);
        *v86 = v87;
        sub_100007DB8(v86);
        sub_1000D3590();

        __asm { BRAA            X8, X9 }
      }

      result = sub_10000C108();
      v27 = *(v0 + 1024);
      v25 = (*(v0 + 1016) - 1) & *(v0 + 1016);
      if (!v25)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      return result;
    }

    if (v29 >= (((1 << *(v0 + 137)) + 63) >> 6))
    {
      break;
    }

    v25 = *(*(v0 + 1008) + 8 * v29 + 56);
    ++v27;
    if (v25)
    {
      v27 = v29;
      goto LABEL_12;
    }
  }

  v55 = *(v0 + 960);
  v56 = *(v0 + 944);
  v57 = *(v0 + 896);
  v58 = *(v0 + 704);
  v59 = ((*(v0 + 140) + 32) & ~*(v0 + 140)) + 2 * *(v0 + 952);
  sub_100004E7C(v106, &qword_1002DF3B8, &qword_10023F050);

  static Log.tsDataSync.getter();
  *(swift_allocObject() + 16) = v110;
  *(v0 + 584) = v55;
  *(v0 + 560) = v58;

  v60 = AMSLogKey();
  if (v60)
  {
    v61 = v60;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v62 = *(v0 + 856);
  v63 = *(v0 + 792);
  v64 = *(v0 + 656);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 560));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v65._countAndFlagsBits = sub_10000DF94();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v65);
  sub_10018AE78();
  v66 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
  if (sub_100004DFC(v63, 1, v66) == 1)
  {
    sub_100004E7C(*(v0 + 792), &qword_1002DC208, &qword_100234830);
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0u;
  }

  else
  {
    *(v0 + 616) = v66;
    sub_100007914((v0 + 592));
    sub_10000BBA8();
  }

  v67 = *(v0 + 1000);
  v68 = *(v0 + 992);
  v69 = *(v0 + 952);
  v70 = *(v0 + 920);
  v91 = *(v0 + 912);
  v93 = *(v0 + 904);
  v71 = *(v0 + 896);
  v72 = *(v0 + 872);
  v95 = *(v0 + 888);
  v97 = *(v0 + 864);
  v99 = *(v0 + 848);
  v101 = *(v0 + 840);
  v103 = *(v0 + 816);
  v105 = *(v0 + 800);
  v107 = *(v0 + 792);
  v109 = *(v0 + 784);
  v111 = *(v0 + 776);
  v113 = *(v0 + 752);
  v115 = *(v0 + 728);
  v73 = *(v0 + 856);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  v74 = sub_100004E7C(v0 + 592, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018BE14(v74);
  LogInterpolation.init(stringInterpolation:)();
  sub_10018C538();

  v68(v71, v72);

  sub_100003844();

  return v75();
}

uint64_t sub_10018584C()
{
  sub_10000DB4C();
  v3 = v2;
  v5 = v4;
  sub_1000030F8();
  v7 = v6;
  sub_1000077D8();
  *v8 = v7;
  v10 = *(v9 + 1120);
  v11 = *v1;
  sub_100004504();
  *v12 = v11;
  v7[141] = v0;

  if (v0)
  {
    v13 = v7[88];
    sub_1000BA304((v7 + 10));
    sub_10018C414();
  }

  else
  {
    v14 = v7[88];
    v7[142] = v3;
    v7[143] = v5;
  }

  sub_10000AD14();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_10018597C()
{
  v34 = *(v0 + 1136);
  v35 = *(v0 + 1144);
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 138);
  v4 = *(v0 + 984);
  v39 = *(v0 + 960);
  v37 = *(v0 + 944);
  v33 = *(v0 + 904);
  v5 = *(v0 + 840);
  v6 = *(v0 + 816);
  v7 = *(v0 + 704);
  v8 = ((*(v0 + 140) + 32) & ~*(v0 + 140)) + 2 * *(v0 + 952);
  v9 = *v5;
  v10 = v5[1];
  (*(v0 + 976))(v6 + *(*(v0 + 808) + 32), *(v0 + 664), *(v0 + 968));
  *v6 = v9;
  *(v6 + 8) = v10;
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  *(v6 + 32) = v1;
  *(v6 + 40) = v35;
  *(v6 + 48) = v34;

  static Log.tsDataSync.getter();
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  *(v0 + 488) = v39;
  *(v0 + 464) = v7;

  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C084();
  }

  else
  {
    sub_10018BD30();
  }

  v40 = *(v0 + 992);
  v41 = *(v0 + 1000);
  v11 = *(v0 + 904);
  v36 = *(v0 + 952);
  v38 = *(v0 + 872);
  v12 = *(v0 + 864);
  v13 = *(v0 + 816);
  v14 = *(v0 + 808);
  sub_100003F40();

  sub_10018BF80((v0 + 464));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = 0x80000001002750F0;
  v15._countAndFlagsBits = 0xD000000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  *(v0 + 520) = &type metadata for TSDataSyncDatasetConfig;
  v16 = swift_allocObject();
  *(v0 + 496) = v16;
  v17 = *(v0 + 96);
  v16[1] = *(v0 + 80);
  v16[2] = v17;
  v16[3] = *(v0 + 112);
  *(v16 + 57) = *(v0 + 121);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10018BDCC();
  sub_100004E7C(v18, v19, v20);
  v21._countAndFlagsBits = 544106784;
  v21._object = 0xE400000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  *(v0 + 552) = v14;
  sub_100007914((v0 + 528));
  sub_100004D10();
  sub_10018B17C();
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_10018BDCC();
  v25 = sub_100004E7C(v22, v23, v24);
  sub_10018BE14(v25);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v40(v11, v38);
  v26 = swift_task_alloc();
  *(v0 + 1152) = v26;
  *v26 = v0;
  v26[1] = sub_100185C80;
  v27 = *(v0 + 928);
  v28 = *(v0 + 704);
  v29 = sub_100005040(*(v0 + 816));

  return sub_100188C2C(v29, v30, v31);
}

uint64_t sub_100185C80()
{
  sub_100007F3C();
  v3 = v2;
  sub_1000030F8();
  v5 = v4;
  sub_1000077D8();
  *v6 = v5;
  v8 = *(v7 + 1152);
  v9 = *v1;
  sub_100004504();
  *v10 = v9;
  v5[145] = v3;
  v5[146] = v0;

  if (v0)
  {
    v11 = v5[88];
    v12 = sub_10018C408();
  }

  else
  {
    v12 = sub_10018C408();
    v13 = v3;
  }

  return _swift_task_switch(v12, v13, 0);
}

void sub_100185E3C()
{
  sub_10018C068();
  sub_10018B944();
  v2 = *(v0 + 1160);
  v3 = *(v0 + 816);
  v4 = *(v0 + 800);
  v5 = *(v0 + 656);

  sub_100003A24();
  sub_10018B234();
  v6 = &qword_1002DC208;
  v7 = &qword_100234830;
  sub_100004E7C(v5, &qword_1002DC208, &qword_100234830);
  sub_100008780();
  sub_1000114E8();
  sub_100008CC4();
  if (!v8)
  {
    sub_10018BCFC();
    goto LABEL_16;
  }

  sub_10018C474();
LABEL_4:
  sub_10000C108();
  sub_10018B764();
  if (!v8)
  {
    v10 = *(v0 + 1008);
    goto LABEL_11;
  }

  while (1)
  {
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    sub_10000A8A0();
    if (v11 == v12)
    {
      break;
    }

    sub_10018BABC();
    if (v14)
    {
      v9 = v13;
LABEL_11:
      sub_10018BBE4(v9);
      v45 = v15;
      v16 = *(v0 + 140);
      v17 = *(v0 + 952);
      v18 = *(v0 + 944);
      sub_10018B91C();
      v19 = *(v0 + 832);
      v20 = *(v0 + 704);
      sub_10018B8E0();
      v22 = *(v21 + 72);
      sub_10000818C();
      sub_10018B17C();
      sub_1000077AC();
      static Log.tsDataSync.getter();
      sub_10018BB5C();
      v7 = swift_allocObject();
      *(v7 + 1) = xmmword_1002329F0;
      *(v0 + 296) = v45;
      *(v0 + 272) = v20;

      if (AMSLogKey())
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10018C0B4();
      }

      else
      {
        sub_10018BD18();
      }

      v46 = *(v0 + 1000);
      v23 = *(v0 + 952);
      v1 = *(v0 + 912);
      v43 = *(v0 + 872);
      v44 = *(v0 + 992);
      v6 = *(v0 + 864);
      v24 = *(v0 + 840);
      v5 = *(v0 + 824);
      static LogInterpolation.prefix(_:_:)();

      sub_10018BB28();
      v25._countAndFlagsBits = sub_10000DF94();
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
      sub_10018C4D8();
      sub_10000818C();
      sub_10018B17C();
      LogInterpolation.StringInterpolation.appendInterpolation(_:)();
      v26 = sub_100004E7C(v0 + 304, &unk_1002DFC10, &qword_10022E6D0);
      (sub_10018BE14)(v26);
      sub_10018C4C0();
      sub_10018C580();

      v44(v1, v43);
      sub_10000F420();
      if (v27)
      {
        sub_1000032CC();
LABEL_16:
        sub_10000A318(v28);
        sub_10018C0E4();
        v47 = v29 + *v29;
        v30 = *(v6 + 1);
        v31 = swift_task_alloc();
        v32 = sub_10018C108(v31);
        *v32 = v33;
        sub_100007DB8();
        sub_10000F438();

        __asm { BRAA            X8, X9 }
      }

      goto LABEL_4;
    }
  }

  sub_10000EEFC();
  sub_100004E7C(v0 + 16, &qword_1002DF3B8, &qword_10023F050);

  static Log.tsDataSync.getter();
  *(sub_10018BF58() + 16) = xmmword_1002329F0;
  *(v0 + 584) = v1;
  *(v0 + 560) = v7;

  v36 = AMSLogKey();
  if (v36)
  {
    v7 = v36;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C050();
  }

  else
  {
    sub_10018BD3C();
  }

  sub_100005014();

  sub_10018BCC8();
  v37._countAndFlagsBits = sub_10000DF94();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
  sub_10018C568();
  v38 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
  sub_100008B04(v38);
  if (v8)
  {
    sub_100004E7C(v7, &qword_1002DC208, &qword_100234830);
    sub_10018C454();
  }

  else
  {
    sub_10018C5F8();
    sub_10000BBA8();
  }

  sub_100007418();
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  v39 = sub_100004E7C(v0 + 592, &unk_1002DFC10, &qword_10022E6D0);
  (sub_10018BE14)(v39);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v40 = sub_10018C420();
  v5(v40);

  sub_100003844();
  sub_10018BAA4();

  v41();
}

void sub_100186310()
{
  sub_10018C068();
  sub_10018B944();
  sub_10000495C(*(v0 + 1128));
  v3 = sub_10018BD88();
  sub_10018BB9C(v3, xmmword_1002329D0);
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  sub_10018B3F4();
  sub_10018B9BC();

  sub_10018BC18();
  sub_10018BC88();
  sub_10018BECC();
  sub_10000B7EC(v6);
  v8 = *(v7 + 16);
  sub_10018BDCC();
  v9();
  static LogInterpolation.sensitive(_:)();
  sub_100004E7C(v0 + 368, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018C3F0();
  Log.error(_:)();

  v10 = sub_10018C030();
  v11(v10);
  v12 = *(v2 + 176);
  v13 = *(v2 + 184);
  static Date.now.getter();
  v14 = sub_100006338();
  v15(v14);
  v16 = v1;
  FlagKeys.isEnabled.getter();
  v17 = sub_10018BBC0();
  v18(v17);
  if (v1)
  {
    v19 = *(v0 + 776);
    static Date.now.getter();
    sub_10018BC74();
    if (v13)
    {
      sub_100008BFC();
      sub_10018B994();
      v16 = v20;
      sub_10018B698(&type metadata for String);
      sub_10000D454();
      v22 = *(v21 + 64);
      sub_100003FA8();
      sub_10018B8C8();
      v23();
      v24 = v3->n128_u64[0];
      v25 = v3->n128_u64[1];
      swift_isUniquelyReferenced_nonNull_native();
      sub_10018C2CC();
      sub_100013E54();

      sub_10018C368();
      sub_10000B908();
      sub_10018B7F8();

      v26 = *(v1 + 160);
      v3 = *(v1 + 168);
      sub_10018B5D8((v1 + 136));
      dispatch thunk of MetricsQueue.enqueue(event:)();

      v35 = sub_10018C000(v27, v28, v29, v30, v31, v32, v33, v34, v100, v102, v104, v106, v108, v110, v112, v114, v6, v118);
      v37 = v36(v35);
      v45 = sub_10018BBF4(v37, v38, v39, v40, v41, v42, v43, v44, v101, v103, v105, v107, v109, v111, v113, v115, v117);
      v16(v45);
      (v16)(v120, v26);
    }

    else
    {

      v48 = sub_10018BFF0();
      (v1)(v48);
      v49 = sub_100008780();
      (v1)(v49, v50);
    }
  }

  else
  {
    sub_10018BEAC();
    v46 = sub_100014108();
    v47(v46);
  }

  sub_100008CC4();
  if (!v51)
  {
    sub_10018BCFC();
    goto LABEL_25;
  }

  sub_10018C474();
  v119 = xmmword_1002329F0;
LABEL_13:
  sub_10000C108();
  sub_10018B764();
  if (!v51)
  {
    v16 = *(v0 + 1008);
    goto LABEL_20;
  }

  while (1)
  {
    if (__OFADD__(v52, 1))
    {
      __break(1u);
      return;
    }

    sub_10000A8A0();
    if (v53 == v54)
    {
      break;
    }

    sub_10018BABC();
    if (v56)
    {
      v52 = v55;
LABEL_20:
      sub_10018BBE4(v52);
      v57 = *(v0 + 140);
      v58 = *(v0 + 952);
      v59 = *(v0 + 944);
      sub_10018B91C();
      v60 = *(v0 + 832);
      v61 = *(v0 + 704);
      v3 = ((v57 + 32) & ~v57);
      sub_10018B8E0();
      v63 = *(v62 + 72);
      sub_10000818C();
      sub_10018B17C();
      sub_1000077AC();
      static Log.tsDataSync.getter();
      sub_10018BB5C();
      v1 = swift_allocObject();
      sub_10018B670(v1, v64, v65, v66, v67, v68, v69, v70, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v119);
      v71 = AMSLogKey();
      if (v71)
      {
        v16 = v71;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10018C0B4();
      }

      else
      {
        sub_10018BD18();
      }

      sub_10000BD3C();

      sub_10018BB28();
      v72._countAndFlagsBits = sub_10000DF94();
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v72);
      sub_10018C4D8();
      sub_10000818C();
      sub_10018B17C();
      LogInterpolation.StringInterpolation.appendInterpolation(_:)();
      v73 = sub_100004E7C(v0 + 304, &unk_1002DFC10, &qword_10022E6D0);
      sub_10018BE14(v73);
      sub_10018C4C0();
      sub_10018C580();

      v74 = sub_10018C010();
      v75(v74);
      sub_10000F420();
      if (v76)
      {
        sub_1000032CC();
LABEL_25:
        sub_10000A318(v77);
        sub_10018C0E4();
        v121 = v78 + *v78;
        v79 = *(v16 + 1);
        v80 = swift_task_alloc();
        v81 = sub_10018C108(v80);
        *v81 = v82;
        sub_100007DB8();
        sub_10000F438();

        __asm { BRAA            X8, X9 }
      }

      goto LABEL_13;
    }
  }

  sub_10000EEFC();
  sub_100004E7C(v0 + 16, &qword_1002DF3B8, &qword_10023F050);

  static Log.tsDataSync.getter();
  v85 = sub_10018BF58();
  sub_10000ADA4(v85, v86, v87, v88, v89, v90, v91, v92, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v119);
  v93 = AMSLogKey();
  if (v93)
  {
    v1 = v93;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C050();
  }

  else
  {
    sub_10018BD3C();
  }

  sub_100005014();

  sub_10018BCC8();
  v94._countAndFlagsBits = sub_10000DF94();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v94);
  sub_10018C568();
  v95 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
  sub_100008B04(v95);
  if (v51)
  {
    sub_100004E7C(v1, &qword_1002DC208, &qword_100234830);
    sub_10018C454();
  }

  else
  {
    sub_10018C5F8();
    sub_10000BBA8();
  }

  sub_100007418();
  sub_10018C2E8();
  v96 = sub_100004E7C(v0 + 592, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018BE14(v96);
  sub_10018C278();
  sub_10018C25C();

  v97 = sub_10018C420();
  (v3)(v97);

  sub_100003844();
  sub_10018BAA4();

  v98();
}

void sub_100186950()
{
  sub_10018C068();
  sub_10018B944();
  v3 = *(v0 + 816);
  sub_100003A24();
  sub_10018B234();
  sub_10000495C(*(v0 + 1168));
  v4 = sub_10018BD88();
  sub_10018BB9C(v4, xmmword_1002329D0);
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  sub_10018B3F4();
  sub_10018B9BC();

  sub_10018BC18();
  sub_10018BC88();
  sub_10018BECC();
  sub_10000B7EC(v7);
  v9 = *(v8 + 16);
  sub_10018BDCC();
  v10();
  static LogInterpolation.sensitive(_:)();
  sub_100004E7C(v0 + 368, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018C3F0();
  Log.error(_:)();

  v11 = sub_10018C030();
  v12(v11);
  v13 = *(v2 + 176);
  v14 = *(v2 + 184);
  static Date.now.getter();
  v15 = sub_100006338();
  v16(v15);
  v17 = v1;
  FlagKeys.isEnabled.getter();
  v18 = sub_10018BBC0();
  v19(v18);
  if (v1)
  {
    v20 = *(v0 + 776);
    static Date.now.getter();
    sub_10018BC74();
    if (v14)
    {
      sub_100008BFC();
      sub_10018B994();
      v17 = v21;
      sub_10018B698(&type metadata for String);
      sub_10000D454();
      v23 = *(v22 + 64);
      sub_100003FA8();
      sub_10018B8C8();
      v24();
      v25 = v4->n128_u64[0];
      v26 = v4->n128_u64[1];
      swift_isUniquelyReferenced_nonNull_native();
      sub_10018C2CC();
      sub_100013E54();

      sub_10018C368();
      sub_10000B908();
      sub_10018B7F8();

      v27 = *(v1 + 160);
      v4 = *(v1 + 168);
      sub_10018B5D8((v1 + 136));
      dispatch thunk of MetricsQueue.enqueue(event:)();

      v36 = sub_10018C000(v28, v29, v30, v31, v32, v33, v34, v35, v101, v103, v105, v107, v109, v111, v113, v115, v7, v119);
      v38 = v37(v36);
      v46 = sub_10018BBF4(v38, v39, v40, v41, v42, v43, v44, v45, v102, v104, v106, v108, v110, v112, v114, v116, v118);
      v17(v46);
      (v17)(v121, v27);
    }

    else
    {

      v49 = sub_10018BFF0();
      (v1)(v49);
      v50 = sub_100008780();
      (v1)(v50, v51);
    }
  }

  else
  {
    sub_10018BEAC();
    v47 = sub_100014108();
    v48(v47);
  }

  sub_100008CC4();
  if (!v52)
  {
    sub_10018BCFC();
    goto LABEL_25;
  }

  sub_10018C474();
  v120 = xmmword_1002329F0;
LABEL_13:
  sub_10000C108();
  sub_10018B764();
  if (!v52)
  {
    v17 = *(v0 + 1008);
    goto LABEL_20;
  }

  while (1)
  {
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      return;
    }

    sub_10000A8A0();
    if (v54 == v55)
    {
      break;
    }

    sub_10018BABC();
    if (v57)
    {
      v53 = v56;
LABEL_20:
      sub_10018BBE4(v53);
      v58 = *(v0 + 140);
      v59 = *(v0 + 952);
      v60 = *(v0 + 944);
      sub_10018B91C();
      v61 = *(v0 + 832);
      v62 = *(v0 + 704);
      v4 = ((v58 + 32) & ~v58);
      sub_10018B8E0();
      v64 = *(v63 + 72);
      sub_10000818C();
      sub_10018B17C();
      sub_1000077AC();
      static Log.tsDataSync.getter();
      sub_10018BB5C();
      v1 = swift_allocObject();
      sub_10018B670(v1, v65, v66, v67, v68, v69, v70, v71, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v120);
      v72 = AMSLogKey();
      if (v72)
      {
        v17 = v72;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10018C0B4();
      }

      else
      {
        sub_10018BD18();
      }

      sub_10000BD3C();

      sub_10018BB28();
      v73._countAndFlagsBits = sub_10000DF94();
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v73);
      sub_10018C4D8();
      sub_10000818C();
      sub_10018B17C();
      LogInterpolation.StringInterpolation.appendInterpolation(_:)();
      v74 = sub_100004E7C(v0 + 304, &unk_1002DFC10, &qword_10022E6D0);
      (sub_10018BE14)(v74);
      sub_10018C4C0();
      sub_10018C580();

      v75 = sub_10018C010();
      v76(v75);
      sub_10000F420();
      if (v77)
      {
        sub_1000032CC();
LABEL_25:
        sub_10000A318(v78);
        sub_10018C0E4();
        v122 = v79 + *v79;
        v80 = *(v17 + 1);
        v81 = swift_task_alloc();
        v82 = sub_10018C108(v81);
        *v82 = v83;
        sub_100007DB8();
        sub_10000F438();

        __asm { BRAA            X8, X9 }
      }

      goto LABEL_13;
    }
  }

  sub_10000EEFC();
  sub_100004E7C(v0 + 16, &qword_1002DF3B8, &qword_10023F050);

  static Log.tsDataSync.getter();
  v86 = sub_10018BF58();
  sub_10000ADA4(v86, v87, v88, v89, v90, v91, v92, v93, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v120);
  v94 = AMSLogKey();
  if (v94)
  {
    v1 = v94;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C050();
  }

  else
  {
    sub_10018BD3C();
  }

  sub_100005014();

  sub_10018BCC8();
  v95._countAndFlagsBits = sub_10000DF94();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v95);
  sub_10018C568();
  v96 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
  sub_100008B04(v96);
  if (v52)
  {
    sub_100004E7C(v1, &qword_1002DC208, &qword_100234830);
    sub_10018C454();
  }

  else
  {
    sub_10018C5F8();
    sub_10000BBA8();
  }

  sub_100007418();
  sub_10018C2E8();
  v97 = sub_100004E7C(v0 + 592, &unk_1002DFC10, &qword_10022E6D0);
  (sub_10018BE14)(v97);
  sub_10018C278();
  sub_10018C25C();

  v98 = sub_10018C420();
  (v4)(v98);

  sub_100003844();
  sub_10018BAA4();

  v99();
}

void sub_100186F9C()
{
  sub_10018C068();
  sub_10018B944();
  v3 = *(v0 + 1160);
  v4 = *(v0 + 816);

  sub_100003A24();
  sub_10018B234();
  sub_10000495C(*(v0 + 1176));
  v5 = sub_10018BD88();
  sub_10018BB9C(v5, xmmword_1002329D0);
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  sub_10018B3F4();
  sub_10018B9BC();

  sub_10018BC18();
  sub_10018BC88();
  sub_10018BECC();
  sub_10000B7EC(v8);
  v10 = *(v9 + 16);
  sub_10018BDCC();
  v11();
  static LogInterpolation.sensitive(_:)();
  sub_100004E7C(v0 + 368, &unk_1002DFC10, &qword_10022E6D0);
  sub_10018C3F0();
  Log.error(_:)();

  v12 = sub_10018C030();
  v13(v12);
  v14 = *(v2 + 176);
  v15 = *(v2 + 184);
  static Date.now.getter();
  v16 = sub_100006338();
  v17(v16);
  v18 = v1;
  FlagKeys.isEnabled.getter();
  v19 = sub_10018BBC0();
  v20(v19);
  if (v1)
  {
    v21 = *(v0 + 776);
    static Date.now.getter();
    sub_10018BC74();
    if (v15)
    {
      sub_100008BFC();
      sub_10018B994();
      v18 = v22;
      sub_10018B698(&type metadata for String);
      sub_10000D454();
      v24 = *(v23 + 64);
      sub_100003FA8();
      sub_10018B8C8();
      v25();
      v26 = v5->n128_u64[0];
      v27 = v5->n128_u64[1];
      swift_isUniquelyReferenced_nonNull_native();
      sub_10018C2CC();
      sub_100013E54();

      sub_10018C368();
      sub_10000B908();
      sub_10018B7F8();

      v28 = *(v1 + 160);
      v5 = *(v1 + 168);
      sub_10018B5D8((v1 + 136));
      dispatch thunk of MetricsQueue.enqueue(event:)();

      v37 = sub_10018C000(v29, v30, v31, v32, v33, v34, v35, v36, v102, v104, v106, v108, v110, v112, v114, v116, v8, v120);
      v39 = v38(v37);
      v47 = sub_10018BBF4(v39, v40, v41, v42, v43, v44, v45, v46, v103, v105, v107, v109, v111, v113, v115, v117, v119);
      v18(v47);
      (v18)(v122, v28);
    }

    else
    {

      v50 = sub_10018BFF0();
      (v1)(v50);
      v51 = sub_100008780();
      (v1)(v51, v52);
    }
  }

  else
  {
    sub_10018BEAC();
    v48 = sub_100014108();
    v49(v48);
  }

  sub_100008CC4();
  if (!v53)
  {
    sub_10018BCFC();
    goto LABEL_25;
  }

  sub_10018C474();
  v121 = xmmword_1002329F0;
LABEL_13:
  sub_10000C108();
  sub_10018B764();
  if (!v53)
  {
    v18 = *(v0 + 1008);
    goto LABEL_20;
  }

  while (1)
  {
    if (__OFADD__(v54, 1))
    {
      __break(1u);
      return;
    }

    sub_10000A8A0();
    if (v55 == v56)
    {
      break;
    }

    sub_10018BABC();
    if (v58)
    {
      v54 = v57;
LABEL_20:
      sub_10018BBE4(v54);
      v59 = *(v0 + 140);
      v60 = *(v0 + 952);
      v61 = *(v0 + 944);
      sub_10018B91C();
      v62 = *(v0 + 832);
      v63 = *(v0 + 704);
      v5 = ((v59 + 32) & ~v59);
      sub_10018B8E0();
      v65 = *(v64 + 72);
      sub_10000818C();
      sub_10018B17C();
      sub_1000077AC();
      static Log.tsDataSync.getter();
      sub_10018BB5C();
      v1 = swift_allocObject();
      sub_10018B670(v1, v66, v67, v68, v69, v70, v71, v72, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v121);
      v73 = AMSLogKey();
      if (v73)
      {
        v18 = v73;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10018C0B4();
      }

      else
      {
        sub_10018BD18();
      }

      sub_10000BD3C();

      sub_10018BB28();
      v74._countAndFlagsBits = sub_10000DF94();
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v74);
      sub_10018C4D8();
      sub_10000818C();
      sub_10018B17C();
      LogInterpolation.StringInterpolation.appendInterpolation(_:)();
      v75 = sub_100004E7C(v0 + 304, &unk_1002DFC10, &qword_10022E6D0);
      (sub_10018BE14)(v75);
      sub_10018C4C0();
      sub_10018C580();

      v76 = sub_10018C010();
      v77(v76);
      sub_10000F420();
      if (v78)
      {
        sub_1000032CC();
LABEL_25:
        sub_10000A318(v79);
        sub_10018C0E4();
        v123 = v80 + *v80;
        v81 = *(v18 + 1);
        v82 = swift_task_alloc();
        v83 = sub_10018C108(v82);
        *v83 = v84;
        sub_100007DB8();
        sub_10000F438();

        __asm { BRAA            X8, X9 }
      }

      goto LABEL_13;
    }
  }

  sub_10000EEFC();
  sub_100004E7C(v0 + 16, &qword_1002DF3B8, &qword_10023F050);

  static Log.tsDataSync.getter();
  v87 = sub_10018BF58();
  sub_10000ADA4(v87, v88, v89, v90, v91, v92, v93, v94, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v121);
  v95 = AMSLogKey();
  if (v95)
  {
    v1 = v95;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C050();
  }

  else
  {
    sub_10018BD3C();
  }

  sub_100005014();

  sub_10018BCC8();
  v96._countAndFlagsBits = sub_10000DF94();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v96);
  sub_10018C568();
  v97 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
  sub_100008B04(v97);
  if (v53)
  {
    sub_100004E7C(v1, &qword_1002DC208, &qword_100234830);
    sub_10018C454();
  }

  else
  {
    sub_10018C5F8();
    sub_10000BBA8();
  }

  sub_100007418();
  sub_10018C2E8();
  v98 = sub_100004E7C(v0 + 592, &unk_1002DFC10, &qword_10022E6D0);
  (sub_10018BE14)(v98);
  sub_10018C278();
  sub_10018C25C();

  v99 = sub_10018C420();
  (v5)(v99);

  sub_100003844();
  sub_10018BAA4();

  v100();
}

uint64_t sub_1001875F4()
{
  sub_100004194();
  v1[29] = v2;
  v1[30] = v0;
  v3 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v1[31] = v3;
  sub_100003B78(v3);
  v1[32] = v4;
  v6 = *(v5 + 64);
  v1[33] = sub_1000C70D8();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v7 = sub_100099DF4(&qword_1002DF738, &unk_10023F550);
  sub_1000030B8(v7);
  v9 = *(v8 + 64);
  v1[37] = sub_1000C70D8();
  v1[38] = swift_task_alloc();
  v10 = type metadata accessor for Log();
  v1[39] = v10;
  sub_100003B78(v10);
  v1[40] = v11;
  v13 = *(v12 + 64);
  v1[41] = sub_1000C70D8();
  v1[42] = swift_task_alloc();
  v14 = sub_10000AA8C();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_10018774C()
{
  sub_10000A504();
  sub_100008B30();
  v1 = *(v0 + 336);
  v2 = *(v0 + 240);
  static Log.tsDataSync.getter();
  *(v0 + 344) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  *(v0 + 352) = *(v4 + 72);
  *(v0 + 520) = *(v5 + 80);
  sub_10018BCAC();
  *(sub_10018BFC8() + 16) = xmmword_1002329D0;
  v6 = type metadata accessor for TSDataSyncCoordinatorActor();
  *(v0 + 16) = v2;
  *(v0 + 360) = v6;
  *(v0 + 40) = v6;

  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C5C8();
  }

  else
  {
    sub_10018C3D0();
  }

  v7 = *(v0 + 336);
  v8 = *(v0 + 320);
  v9 = *(v0 + 232);
  v19 = *(v0 + 312);
  v20 = *(v0 + 240);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 16));
  LogInterpolation.init(stringLiteral:)();
  v10 = type metadata accessor for AccountIdentity();
  *(v0 + 368) = v10;
  *(v0 + 72) = v10;
  sub_100007914((v0 + 48));
  sub_10000B7EC(v10);
  v12 = *(v11 + 16);
  *(v0 + 376) = v12;
  *(v0 + 384) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12();
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E7C(v0 + 48, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v13 = *(v8 + 8);
  *(v0 + 392) = v13;
  *(v0 + 400) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v7, v19);
  *(v0 + 408) = *(v20 + 216);
  sub_10018C344();
  sub_100003BBC();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_100187990()
{
  sub_100004194();
  v1 = v0[51];
  v2 = v0[30];
  v0[52] = sub_10018A194(v0[29]);

  return _swift_task_switch(sub_1001879FC, v2, 0);
}

uint64_t sub_1001879FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10018BA04();
  sub_10018B944();
  v27 = *(v26 + 416);
  v28 = *(v26 + 256);
  v29 = *(v27 + 32);
  *(v26 + 528) = v29;
  v30 = -1;
  v31 = -1 << v29;
  v32 = *(v27 + 64);
  if (-v31 < 64)
  {
    v30 = ~(-1 << -v31);
  }

  *(v26 + 424) = 0;
  *(v26 + 432) = _swiftEmptyArrayStorage;
  v33 = v30 & v32;
  if (v33)
  {
    v34 = 0;
LABEL_8:
    v37 = *(v26 + 288);
    v38 = *(v26 + 296);
    v39 = (v33 - 1) & v33;
    v40 = __clz(__rbit64(v33)) | (v34 << 6);
    v41 = *(v27 + 48);
    v42 = *(v28 + 72);
    sub_100004D10();
    sub_10018B17C();
    v43 = *(*(v27 + 56) + 8 * v40);
    v44 = sub_100099DF4(&qword_1002DF730, &qword_10023F548);
    v45 = *(v44 + 48);
    sub_100006B88();
    sub_1000050CC();
    sub_10018B1D8();
    *(v38 + v45) = v43;
    sub_10000B7B0();
    sub_100002728(v46, v47, v48, v44);

    v36 = v34;
  }

  else
  {
    v35 = 0;
    v36 = ((63 - v31) >> 6) - 1;
    while (v36 != v35)
    {
      v34 = v35 + 1;
      v33 = *(v27 + 72 + 8 * v35++);
      if (v33)
      {
        goto LABEL_8;
      }
    }

    v65 = *(v26 + 296);
    sub_100099DF4(&qword_1002DF730, &qword_10023F548);
    sub_100007B78();
    sub_100002728(v66, v67, v68, v69);
    v39 = 0;
  }

  *(v26 + 440) = v39;
  *(v26 + 448) = v36;
  v49 = *(v26 + 296);
  v50 = *(v26 + 304);
  sub_1000114E8();
  v51 = sub_100099DF4(&qword_1002DF730, &qword_10023F548);
  v52 = sub_100013DDC();
  if (sub_100004DFC(v52, v53, v51) != 1)
  {
    v60 = *(v26 + 280);
    *(v26 + 456) = *(*(v26 + 304) + *(v51 + 48));
    sub_100006B88();
    sub_10018B1D8();
    goto LABEL_13;
  }

  v54 = *(v26 + 416);

  v55 = _swiftEmptyArrayStorage[2];
  *(v26 + 472) = v55;
  if (v55)
  {
    v56 = *(v26 + 408);
    v58 = *(v26 + 256);
    v57 = *(v26 + 264);
    *(v26 + 524) = *(v58 + 80);
    *(v26 + 480) = *(v58 + 72);
    *(v26 + 488) = 0;
    v59 = *(v26 + 432);
    sub_100004D10();
    sub_10018B17C();
LABEL_13:
    sub_10000F438();

    return _swift_task_switch(v61, v62, v63);
  }

  v70 = *(v26 + 424);
  v71 = *(v26 + 240);
  *(v26 + 496) = sub_100188CF8();
  *(v26 + 504) = v70;
  if (!v70)
  {
    sub_100005D84();
    goto LABEL_13;
  }

  v73 = *(v26 + 352);
  v72 = *(v26 + 360);
  sub_10000D5B4();
  static Log.tsDataSync.getter();
  v74 = sub_10018BD88();
  sub_10018BE6C(v74, xmmword_1002381F0);
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C084();
  }

  else
  {
    sub_10018BD30();
  }

  sub_10000C6E0();

  sub_100004118((v26 + 80));
  sub_10018BB78();
  sub_10018C21C();
  sub_10018C020();
  v72();
  sub_10018C350();
  sub_10018C1DC();
  sub_10018BD6C();
  sub_10018BE2C();
  sub_10018C1C0();
  sub_10000B7EC(v72);
  (*(v75 + 16))();
  static LogInterpolation.sensitive(_:)();
  sub_10018C1A4();
  sub_100002CCC();
  Log.error(_:)();

  v76 = sub_10018C040();
  v77(v76);
  swift_willThrow();

  sub_100002E08();
  sub_10000F438();

  return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_100187DF8()
{
  sub_100007F3C();
  v1 = v0[57];
  v2 = v0[53];
  sub_100194348();
  v0[58] = v2;
  if (v2)
  {
    v3 = v0[54];
    v4 = v0[30];

    v5 = sub_100188A20;
    v6 = v4;
  }

  else
  {
    v6 = v0[30];
    v5 = sub_100187E94;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100187E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10018BA04();
  sub_10018B944();
  v27 = *(v26 + 432);
  v29 = *(v26 + 272);
  v28 = *(v26 + 280);
  sub_100004D10();
  sub_10018B17C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v26 + 432);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v33 = *(v31 + 16);
    v32 = *(v31 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_10013C77C(v32 > 1, v33 + 1, 1, v31);
      v31 = v91;
    }

    v34 = *(v26 + 456);
    v36 = *(v26 + 272);
    v35 = *(v26 + 280);
    v37 = *(v26 + 256);

    sub_100003A24();
    sub_10018B234();
    *(v31 + 16) = v33 + 1;
    v38 = v31 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v39 = *(v37 + 72);
    sub_100006B88();
    sub_10018B1D8();
    v40 = *(v26 + 440);
    v41 = *(v26 + 448);
    *(v26 + 424) = *(v26 + 464);
    *(v26 + 432) = v31;
    if (v40)
    {
      break;
    }

    while (1)
    {
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v43 >= (((1 << *(v26 + 528)) + 63) >> 6))
      {
        v70 = *(v26 + 296);
        sub_100099DF4(&qword_1002DF730, &qword_10023F548);
        v71 = sub_100013DDC();
        sub_100002728(v71, v72, 1, v73);
        v46 = 0;
        goto LABEL_11;
      }

      v42 = *(v26 + 416);
      v40 = *(v42 + 8 * v43 + 64);
      ++v41;
      if (v40)
      {
        v41 = v43;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_28:
    sub_10013C77C(0, *(v31 + 16) + 1, 1, v31);
    v31 = v90;
  }

  v42 = *(v26 + 416);
LABEL_10:
  v45 = *(v26 + 288);
  v44 = *(v26 + 296);
  v46 = (v40 - 1) & v40;
  v47 = __clz(__rbit64(v40)) | (v41 << 6);
  v48 = *(v42 + 48);
  v49 = *(*(v26 + 256) + 72);
  sub_100004D10();
  sub_10018B17C();
  v50 = *(*(v42 + 56) + 8 * v47);
  v51 = sub_100099DF4(&qword_1002DF730, &qword_10023F548);
  v52 = *(v51 + 48);
  sub_100006B88();
  sub_10018B1D8();
  *(v44 + v52) = v50;
  sub_10000B7B0();
  sub_100002728(v53, v54, v55, v51);

LABEL_11:
  *(v26 + 440) = v46;
  *(v26 + 448) = v41;
  v56 = *(v26 + 296);
  v57 = *(v26 + 304);
  sub_1000114E8();
  v58 = sub_100099DF4(&qword_1002DF730, &qword_10023F548);
  if (sub_100004DFC(v57, 1, v58) != 1)
  {
    v65 = *(v26 + 280);
    *(v26 + 456) = *(*(v26 + 304) + *(v58 + 48));
    sub_100006B88();
    sub_10018B1D8();
    goto LABEL_15;
  }

  v59 = *(v26 + 416);

  v60 = *(v31 + 16);
  *(v26 + 472) = v60;
  if (v60)
  {
    v61 = *(v26 + 408);
    v63 = *(v26 + 256);
    v62 = *(v26 + 264);
    *(v26 + 524) = *(v63 + 80);
    *(v26 + 480) = *(v63 + 72);
    *(v26 + 488) = 0;
    v64 = *(v26 + 432);
    sub_100004D10();
    sub_10018B17C();
LABEL_15:
    sub_10000F438();

    return _swift_task_switch(v66, v67, v68);
  }

  v74 = *(v26 + 424);
  v75 = *(v26 + 240);
  *(v26 + 496) = sub_100188CF8();
  *(v26 + 504) = v74;
  if (!v74)
  {
    sub_100005D84();
    goto LABEL_15;
  }

  v77 = *(v26 + 352);
  v76 = *(v26 + 360);
  sub_10000D5B4();
  static Log.tsDataSync.getter();
  v78 = sub_10018BD88();
  sub_10018BE6C(v78, xmmword_1002381F0);
  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C084();
  }

  else
  {
    sub_10018BD30();
  }

  sub_10000C6E0();

  sub_100004118((v26 + 80));
  sub_10018BB78();
  sub_10018C21C();
  sub_10018C020();
  v76();
  sub_10018C350();
  sub_10018C1DC();
  sub_10018BD6C();
  sub_10018BE2C();
  sub_10018C1C0();
  sub_10000B7EC(v76);
  (*(v79 + 16))();
  static LogInterpolation.sensitive(_:)();
  sub_10018C1A4();
  sub_100002CCC();
  Log.error(_:)();

  v80 = sub_10018C040();
  v81(v80);
  swift_willThrow();

  sub_100002E08();
  sub_10000F438();

  return v83(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_100188324()
{
  v1 = v0[51];
  v2 = v0[33];
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = sub_10014EC40();
  if (v5)
  {
    v6 = v4;
    v7 = v0[60];
    v8 = v0[51];
    v9 = v0[31];
    v10 = *(v8 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v8 + 112);
    *(v8 + 112) = 0x8000000000000000;
    v12 = v22[3];
    sub_100099DF4(&unk_1002DEA40, &unk_10023B990);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);
    v13 = v22[6];
    sub_100003A24();
    sub_10018B234();
    v14 = *(v22[7] + 8 * v6);

    type metadata accessor for TSDataSyncDatasetGroupAccessActor();
    sub_10018BA54();
    sub_10018ADEC(v15, v16);
    sub_1000050CC();
    _NativeDictionary._delete(at:)();
    *(v8 + 112) = v22;
  }

  v17 = v0[30];
  swift_endAccess();
  v18 = sub_10000AA8C();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_10018848C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10018BA04();
  sub_10018B944();
  v27 = *(v26 + 472);
  v28 = *(v26 + 264);
  v29 = *(v26 + 488) + 1;
  sub_100003A24();
  sub_10018B234();
  if (v29 == v27)
  {
    v30 = *(v26 + 432);

    v31 = *(v26 + 424);
    v32 = *(v26 + 240);
    *(v26 + 496) = sub_100188CF8();
    *(v26 + 504) = v31;
    if (v31)
    {
      v34 = *(v26 + 352);
      v33 = *(v26 + 360);
      sub_10000D5B4();
      static Log.tsDataSync.getter();
      v35 = sub_10018BD88();
      sub_10018BE6C(v35, xmmword_1002381F0);
      if (AMSLogKey())
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10018C084();
      }

      else
      {
        sub_10018BD30();
      }

      sub_10000C6E0();

      sub_100004118((v26 + 80));
      sub_10018BB78();
      sub_10018C21C();
      sub_10018C020();
      v33();
      sub_10018C350();
      sub_10018C1DC();
      sub_10018BD6C();
      sub_10018BE2C();
      sub_10018C1C0();
      sub_10000B7EC(v33);
      (*(v45 + 16))();
      static LogInterpolation.sensitive(_:)();
      sub_10018C1A4();
      sub_100002CCC();
      Log.error(_:)();

      v46 = sub_10018C040();
      v47(v46);
      swift_willThrow();

      sub_100002E08();
      sub_10000F438();

      return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
    }

    sub_100005D84();
  }

  else
  {
    v36 = *(v26 + 480);
    ++*(v26 + 488);
    v37 = *(v26 + 524);
    v38 = *(v26 + 432);
    v39 = *(v26 + 408);
    v40 = *(v26 + 264);
    sub_100004D10();
    sub_10018B17C();
  }

  sub_10000F438();

  return _swift_task_switch(v41, v42, v43);
}

uint64_t sub_1001886F0()
{
  sub_1000051E0();
  v1 = v0[63];
  v2 = (v0[62] + OBJC_IVAR____TtC12amsaccountsd27TSDataSyncConfigAccessActor_store);
  v3 = *v2;
  (*(v2[1] + 24))();
  v0[64] = v1;
  v4 = v0[62];
  if (v1)
  {
    v5 = v0[30];

    v6 = sub_10000AA8C();

    return _swift_task_switch(v6, v7, v8);
  }

  else
  {
    v9 = v0[41];
    v10 = v0[42];
    v12 = v0[37];
    v11 = v0[38];
    v14 = v0[35];
    v13 = v0[36];
    v16 = v0[33];
    v15 = v0[34];

    sub_100003844();

    return v17();
  }
}

uint64_t sub_100188838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10018BA04();
  sub_10018B944();
  v49 = v27[64];
  v30 = v27[44];
  v29 = v27[45];
  sub_10000D5B4();
  static Log.tsDataSync.getter();
  v31 = sub_10018BD88();
  v27[10] = v28;
  *(v31 + 16) = xmmword_1002381F0;
  v27[13] = v29;

  v32 = AMSLogKey();
  if (v32)
  {
    v33 = v32;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10018B778();

  sub_100004118(v27 + 10);
  sub_10018C1F8();
  v27[17] = v28;
  sub_100007914(v27 + 14);
  sub_10018BD48();
  v26();
  sub_10018C350();
  sub_10018C508((v27 + 14));
  sub_10018BD6C();
  sub_10018C180();
  v34 = v27[25];
  v27[21] = v27[26];
  sub_100007914(v27 + 18);
  sub_10000B4FC();
  v36 = *(v35 + 16);
  sub_1000C7198();
  v37();
  static LogInterpolation.sensitive(_:)();
  sub_10018C508((v27 + 18));
  sub_100002CCC();
  Log.error(_:)();

  v38 = sub_10018B754();
  v39(v38);
  swift_willThrow();

  sub_100002E08();
  sub_10000F438();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v49, a23, a24, a25, a26);
}

uint64_t sub_100188A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10018BA04();
  sub_10018B944();
  v29 = v27[57];
  v30 = v27[52];
  v31 = v27[35];

  sub_100003A24();
  sub_10018B234();
  v52 = v27[58];
  v33 = v27[44];
  v32 = v27[45];
  sub_10000D5B4();
  static Log.tsDataSync.getter();
  v34 = sub_10018BD88();
  v27[10] = v28;
  *(v34 + 16) = xmmword_1002381F0;
  v27[13] = v32;

  v35 = AMSLogKey();
  if (v35)
  {
    v36 = v35;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10018B778();

  sub_100004118(v27 + 10);
  sub_10018C1F8();
  v27[17] = v28;
  sub_100007914(v27 + 14);
  sub_10018BD48();
  v26();
  sub_10018C350();
  sub_10018C508((v27 + 14));
  sub_10018BD6C();
  sub_10018C180();
  v37 = v27[25];
  v27[21] = v27[26];
  sub_100007914(v27 + 18);
  sub_10000B4FC();
  v39 = *(v38 + 16);
  sub_1000C7198();
  v40();
  static LogInterpolation.sensitive(_:)();
  sub_10018C508((v27 + 18));
  sub_100002CCC();
  Log.error(_:)();

  v41 = sub_10018B754();
  v42(v41);
  swift_willThrow();

  sub_100002E08();
  sub_10000F438();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v52, a23, a24, a25, a26);
}

uint64_t sub_100188C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_10000AA8C();
  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100188C58()
{
  v1 = *(*(v0 + 40) + 216);
  *(v0 + 48) = v1;
  return sub_100007620(sub_100188C78, v1);
}

uint64_t sub_100188C78()
{
  sub_100007F3C();
  v1 = *(v0 + 48);
  v2 = sub_100189F20(*(v0 + 16), *(v0 + 24), *(v0 + 40), *(v0 + 40) + 136);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100188CF8()
{
  if (*(v0 + 208))
  {
    v2 = *(v0 + 208);
  }

  else
  {
    v3 = v0;
    v4 = *(v0 + 112);
    v21[3] = type metadata accessor for TSDataSyncCoordinatorActor();
    v21[4] = &off_1002BB528;
    v21[0] = v0;
    sub_100007974(v0 + 136, v20);
    v5 = type metadata accessor for LiveTransactionStore();
    v6 = type metadata accessor for DeviceDetails();
    v7 = objc_allocWithZone(AMSDefaults);
    v8 = v4;

    v9 = [v7 init];
    v19[3] = sub_10018AE34();
    v19[4] = &protocol witness table for AMSDefaults;
    v19[0] = v9;
    v17 = &type metadata for SystemRandomNumberGenerator;
    v18 = &protocol witness table for SystemRandomNumberGenerator;
    v10 = type metadata accessor for TSDataSyncConfigAccessActor();
    v11 = sub_10018C398(v10);
    v12 = v5;
    v2 = v11;
    v13 = sub_100170734(&type metadata for TSDataSyncConfigNetworking, &off_1002BB488, &type metadata for TSDataSyncConfigFileSystemStore, &off_1002BB4E8, &type metadata for AccountsFrameworkFinder, &off_1002B44E0, v12, &off_1002BBE38, v6, &protocol witness table for DeviceDetails, v19, v8, v16, v21, v20);
    if (v1)
    {
      return v2;
    }

    v2 = v13;
    v15 = *(v3 + 208);
    *(v3 + 208) = v13;
  }

  return v2;
}

uint64_t sub_100188E9C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_100007620(sub_100188EB8, v1);
}

uint64_t sub_100188EB8()
{
  sub_100007F3C();
  v1 = *(v0 + 48);
  *(v0 + 56) = sub_100188CF8();
  v2 = sub_10018C344();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100188F60()
{
  sub_100007F3C();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  swift_beginAccess();
  sub_10018BA3C();
  sub_10018B17C();

  sub_100003844();

  return v3();
}

uint64_t sub_100188FF8()
{
  sub_100004118((v0 + 136));
  v1 = *(v0 + 208);

  v2 = *(v0 + 216);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100189038()
{
  sub_100188FF8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100189088()
{
  sub_100004194();
  v1[38] = v0;
  sub_10018C0D8();
  v1[39] = v2;
  v3 = type metadata accessor for Log();
  v1[40] = v3;
  sub_100003B78(v3);
  v1[41] = v4;
  v6 = *(v5 + 64);
  v1[42] = sub_100003FA8();
  v7 = sub_10000AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100189150()
{
  sub_100003FC0();
  sub_1000051E0();
  v1 = v0[42];
  v2 = v0[38];
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100002834();
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  v5 = *(v4 + 72);
  sub_10018BFE0();
  *(sub_10018BFC8() + 16) = xmmword_1002329F0;
  v0[37] = type metadata accessor for TSDataSyncCoordinatorActor();
  v0[34] = v2;

  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C050();
  }

  else
  {
    sub_10018BD3C();
  }

  v7 = v0[41];
  v6 = v0[42];
  v8 = v0[40];
  v9 = v0[38];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v0 + 34);
  LogInterpolation.init(stringLiteral:)();
  sub_10018C538();

  v10 = *(v7 + 8);
  v11 = sub_1000DBA50();
  v12(v11);
  v13 = *(v9 + 112);
  swift_task_alloc();
  sub_10000DEA0();
  v0[43] = v14;
  *v14 = v15;
  sub_10000BFD4(v14);
  sub_100003128();

  return sub_10017AECC(v16, v17);
}

uint64_t sub_100189308()
{
  sub_100007F3C();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v6 = *(v5 + 344);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 336);

    sub_10018BB68();

    return v10();
  }

  else
  {
    *(v3 + 240) = 0u;
    *(v3 + 256) = 0u;
    *(v3 + 208) = 0u;
    *(v3 + 224) = 0u;
    v12 = swift_task_alloc();
    *(v3 + 352) = v12;
    *v12 = v7;
    v12[1] = sub_100189480;
    v13 = *(v3 + 304);

    return sub_10017C0F8();
  }
}

uint64_t sub_100189480()
{
  sub_100007F3C();
  sub_10018BD24();
  sub_100004504();
  *v2 = v0;
  v3 = *(v0 + 352);
  *v2 = *v1;

  sub_10018A46C(v0 + 16);
  sub_10018BD60();
  v5 = *(v4 + 336);

  sub_10018BB68();

  return v6();
}

uint64_t sub_100189580()
{
  sub_100004194();
  v1[49] = v2;
  v1[50] = v0;
  v1[47] = v3;
  v1[48] = v4;
  v1[46] = v5;
  sub_10018C0D8();
  v1[51] = v6;
  v7 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v7);
  v9 = *(v8 + 64);
  v1[52] = sub_1000C70D8();
  v1[53] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v1[54] = v10;
  sub_100003B78(v10);
  v1[55] = v11;
  v13 = *(v12 + 64);
  v1[56] = sub_100003FA8();
  v14 = type metadata accessor for Log();
  v1[57] = v14;
  sub_100003B78(v14);
  v1[58] = v15;
  v17 = *(v16 + 64);
  v1[59] = sub_100003FA8();
  v18 = sub_10000AA8C();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_1001896D4()
{
  sub_100003FC0();
  sub_1000051E0();
  v1 = v0[59];
  v2 = v0[50];
  static Log.tsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100002834();
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  v5 = *(v4 + 72);
  sub_10018BFE0();
  *(sub_10018BFC8() + 16) = xmmword_1002329F0;
  v0[45] = type metadata accessor for TSDataSyncCoordinatorActor();
  v0[42] = v2;

  if (AMSLogKey())
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10018C050();
  }

  else
  {
    sub_10018BD3C();
  }

  v7 = v0[58];
  v6 = v0[59];
  v8 = v0[57];
  v9 = v0[50];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v0 + 42);
  LogInterpolation.init(stringLiteral:)();
  sub_10018C538();

  v10 = *(v7 + 8);
  v11 = sub_1000DBA50();
  v12(v11);
  v13 = *(v9 + 112);
  swift_task_alloc();
  sub_10000DEA0();
  v0[60] = v14;
  *v14 = v15;
  sub_10000BFD4(v14);
  sub_100003128();

  return sub_10017AECC(v16, v17);
}

uint64_t sub_10018988C()
{
  sub_100007F3C();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v6 = *(v5 + 480);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;
  v3[61] = v0;

  if (v0)
  {
    v9 = v3[59];
    v10 = v3[56];
    v13 = v3 + 52;
    v11 = v3[52];
    v12 = v13[1];

    sub_100002E08();

    return v14();
  }

  else
  {
    v16 = v3[50];
    v17 = sub_10018C344();

    return _swift_task_switch(v17, v18, v19);
  }
}

uint64_t sub_1001899D4()
{
  sub_10000DB4C();
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 384);
  sub_10018AE78();
  v4 = sub_100013DDC();
  if (sub_100004DFC(v4, v5, v2) == 1)
  {
    sub_100004E7C(*(v0 + 424), &qword_1002DA970, &qword_1002318B0);
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    v6 = swift_task_alloc();
    *(v0 + 520) = v6;
    *v6 = v0;
    sub_100003EE8(v6);

    return sub_10017C0F8();
  }

  else
  {
    v8 = *(v0 + 488);
    v9 = *(v0 + 400);
    (*(*(v0 + 440) + 32))(*(v0 + 448), *(v0 + 424), *(v0 + 432));
    *(v0 + 496) = sub_100188CF8();
    *(v0 + 504) = v8;
    v10 = *(v0 + 440);
    v11 = *(v0 + 432);
    if (v8)
    {
      (*(v10 + 8))(*(v0 + 448), *(v0 + 432));
      sub_10018A46C(v0 + 16);
      v12 = *(v0 + 472);
      v13 = *(v0 + 448);
      v15 = *(v0 + 416);
      v14 = *(v0 + 424);

      sub_100002E08();

      return v16();
    }

    else
    {
      (*(v10 + 16))(*(v0 + 416), *(v0 + 448), *(v0 + 432));
      sub_10000B7B0();
      sub_100002728(v17, v18, v19, v11);
      *(v0 + 240) = 0u;
      *(v0 + 256) = 0u;
      *(v0 + 208) = 0u;
      *(v0 + 224) = 0u;
      v20 = sub_10000AA8C();

      return _swift_task_switch(v20, v21, v22);
    }
  }
}

uint64_t sub_100189BD0()
{
  sub_100007F3C();
  v1 = v0[62];
  v2 = v0[63];
  v3 = v0[52];
  v4 = v0[49];
  sub_1001760F0();
  v0[64] = v2;
  v5 = v0[62];
  v6 = v0[50];
  sub_100004E7C(v0[52], &qword_1002DA970, &qword_1002318B0);

  if (v2)
  {
    sub_10018A46C((v0 + 2));
  }

  sub_100003054();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100189C90()
{
  sub_100004194();
  (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 520) = v1;
  *v1 = v0;
  sub_100003EE8(v1);

  return sub_10017C0F8();
}

void sub_100189D20()
{
  sub_10000DB4C();
  sub_1000030F8();
  v3 = v2;
  sub_1000077D8();
  *v4 = v3;
  v6 = *(v5 + 520);
  v7 = *v1;
  sub_100004504();
  *v8 = v7;

  if (v0)
  {
    sub_10018A46C((v3 + 2));
    v9 = v3[59];
    v10 = v3[56];
    v13 = v3 + 52;
    v11 = v3[52];
    v12 = v13[1];
  }

  else
  {
    v15 = v3[59];
    v16 = v3[56];
    v18 = v3[52];
    v17 = v3[53];
    sub_10018A46C((v3 + 2));
  }

  v14 = *(v7 + 8);
  sub_10000AD14();

  __asm { BRAA            X0, X16 }
}

uint64_t sub_100189E84()
{
  sub_100007F3C();
  (*(v0[55] + 8))(v0[56], v0[54]);
  v1 = v0[64];
  v2 = v0[59];
  v3 = v0[56];
  v5 = v0[52];
  v4 = v0[53];

  sub_100002E08();

  return v6();
}

char *sub_100189F20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v11 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v12 = sub_1000030B8(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v17 = *(v4 + 112);
  if (*(v17 + 16))
  {

    v18 = sub_10014EC40();
    if (v19)
    {
      v16 = *(*(v17 + 56) + 8 * v18);

      return v16;
    }
  }

  sub_100004D10();
  sub_10018B17C();
  v34[3] = type metadata accessor for TSDataSyncCoordinatorActor();
  v34[4] = &off_1002BB528;
  v34[0] = a3;
  sub_100007974(a4, v33);
  v20 = type metadata accessor for LiveTransactionStore();
  v21 = type metadata accessor for DeviceDetails();
  v22 = objc_allocWithZone(AMSDefaults);

  v23 = [v22 init];
  v31 = sub_10018AE34();
  v32 = &protocol witness table for AMSDefaults;
  v30[0] = v23;
  v24 = type metadata accessor for TSDataSyncDatasetGroupAccessActor();
  sub_10018C398(v24);
  v25 = a2;
  sub_10018C9D4(v16, &type metadata for TSDataSyncDatasetGroupFileSystemStore, &off_1002BB768, &type metadata for TSDataSyncDatasetGroupNetworking, &off_1002BB708, v25, &type metadata for TSDataSyncWriteExternalData, &off_1002BB7C8, v20, &off_1002BBE38, v21, &protocol witness table for DeviceDetails, v30, v34, v33, v29, v30[0], v30[1], v30[2], v31, v32, v33[0], v33[1], v33[2], v33[3], v33[4], v34[0]);
  if (!v6)
  {
    v16 = v26;
    swift_beginAccess();

    v27 = *(v7 + 112);
    swift_isUniquelyReferenced_nonNull_native();
    v33[0] = *(v7 + 112);
    sub_100150204();
    *(v7 + 112) = v33[0];
    swift_endAccess();
  }

  return v16;
}

unint64_t *sub_10018A194(unint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  v6[2] = a1;

  v4 = sub_10018A588(sub_10018A568, v6, v3);

  return v4;
}

uint64_t sub_10018A21C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v21[1] = a3;
  v4 = type metadata accessor for AccountIdentity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100099DF4(&qword_1002DF730, &qword_10023F548);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v21 - v15;
  v17 = *a2;
  sub_10018B17C();
  *&v16[*(v10 + 56)] = v17;
  sub_10018AE78();
  v18 = *&v13[*(v10 + 56)];

  v19 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  (*(v5 + 16))(v8, &v13[*(v19 + 32)], v4);
  sub_10018B234();
  LOBYTE(v10) = static AccountIdentity.== infix(_:_:)();
  (*(v5 + 8))(v8, v4);
  sub_100004E7C(v16, &qword_1002DF730, &qword_10023F548);
  return v10 & 1;
}

unint64_t sub_10018A4C0()
{
  result = qword_1002DF718;
  if (!qword_1002DF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF718);
  }

  return result;
}

unint64_t sub_10018A514()
{
  result = qword_1002DF720;
  if (!qword_1002DF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF720);
  }

  return result;
}

unint64_t *sub_10018A588(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a2 = sub_10018A94C(v12, v8, a3, v6);

      return a2;
    }
  }

  __chkstk_darwin(a1);
  v9 = (&v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1000EA578(0, v8, v9);
  sub_10018A70C(v9, v8, a3, v6);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a2;
}

void sub_10018A70C(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t *))
{
  v32 = a4;
  v27 = a2;
  v28 = a1;
  v5 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin(v5 - 8);
  v29 = 0;
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v33 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v34 = (v14 - 1) & v14;
LABEL_11:
    v19 = v16 | (v8 << 6);
    v20 = v33;
    v21 = v30;
    v22 = v33[6] + *(v31 + 72) * v19;
    sub_10018B17C();
    v36 = *(v20[7] + 8 * v19);

    v23 = v35;
    v24 = v32(v21, &v36);

    sub_10018B234();
    v35 = v23;
    if (v23)
    {
      return;
    }

    v14 = v34;
    if (v24)
    {
      *(v28 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_16:
        sub_10018A9DC(v28, v27, v29, v33);
        return;
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_16;
    }

    v18 = v10[v8];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_10018A94C(unint64_t *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10018A70C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_10018A9DC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v46 = &v44 - v13;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100099DF4(&qword_1002DF728, &qword_10023F540);
  result = static _DictionaryStorage.allocate(capacity:)();
  v15 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v18 = result + 64;
  v45 = a4;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v49 = (v16 - 1) & v16;
LABEL_16:
    v22 = v19 | (v17 << 6);
    v23 = a4[6];
    v50 = *(v47 + 72);
    sub_10018B17C();
    v24 = *(a4[7] + 8 * v22);
    sub_10018B1D8();
    v25 = *(v15 + 40);
    Hasher.init(_seed:)();
    v26 = *v11;
    v27 = *(v11 + 1);

    String.hash(into:)();
    if (v11[16])
    {
      v28 = v11[16] == 1;
    }

    String.hash(into:)();

    v29 = *(v11 + 3);
    v30 = *(v11 + 4);
    String.hash(into:)();
    v31 = *(v11 + 5);
    v32 = *(v11 + 6);
    String.hash(into:)();
    v33 = *(v48 + 32);
    type metadata accessor for AccountIdentity();
    sub_10018ADEC(&qword_1002DE9E0, &type metadata accessor for AccountIdentity);
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v34 = -1 << *(v15 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v18 + 8 * (v35 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v34) >> 6;
      a4 = v45;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v18 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_32;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v18 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    a4 = v45;
LABEL_27:
    *(v18 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v42 = *(v15 + 48);
    result = sub_10018B1D8();
    *(*(v15 + 56) + 8 * v37) = v24;
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_33;
    }

    v16 = v49;
    if (!a3)
    {
      return v15;
    }
  }

  v20 = v17;
  while (1)
  {
    v17 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v15;
    }

    v21 = a1[v17];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v49 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_10018ADEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10018AE34()
{
  result = qword_1002DBBB8;
  if (!qword_1002DBBB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002DBBB8);
  }

  return result;
}

uint64_t sub_10018AE78()
{
  sub_100002FBC();
  v3 = sub_100099DF4(v1, v2);
  sub_10000B7EC(v3);
  v5 = *(v4 + 16);
  v6 = sub_1000050CC();
  v7(v6);
  return v0;
}

_OWORD *sub_10018AED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v31 = &type metadata for String;
  *&v30 = a1;
  *(&v30 + 1) = a2;
  v10 = *a6;
  v11 = sub_10014EB30(a3, a4);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v11;
  v17 = v12;
  sub_100099DF4(&unk_1002E0020, &qword_1002403E0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *a6;
  v19 = sub_10014EB30(a3, a4);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *a6;
  if (v17)
  {
    v22 = (v21[7] + 32 * v16);
    sub_100004118(v22);
    return sub_1001514B8(&v30, v22);
  }

  else
  {
    v24 = sub_100008494(&v30, &type metadata for String);
    v25 = *(*(&type metadata for String - 1) + 64);
    v26 = __chkstk_darwin(v24);
    v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28, v26);
    sub_10018B0AC(v16, a3, a4, *v28, v28[1], v21);
    sub_100004118(&v30);
  }
}

_OWORD *sub_10018B0AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = &type metadata for String;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_1001514B8(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t type metadata accessor for TSDataSyncEntryPoint()
{
  result = qword_1002DF7B8;
  if (!qword_1002DF7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10018B17C()
{
  sub_100002FBC();
  v2 = v1(0);
  sub_10000B7EC(v2);
  v4 = *(v3 + 16);
  v5 = sub_1000050CC();
  v6(v5);
  return v0;
}

uint64_t sub_10018B1D8()
{
  sub_100002FBC();
  v2 = v1(0);
  sub_10000B7EC(v2);
  v4 = *(v3 + 32);
  v5 = sub_1000050CC();
  v6(v5);
  return v0;
}

uint64_t sub_10018B234()
{
  v1 = sub_100002834();
  v3 = v2(v1);
  sub_10000B7EC(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void sub_10018B28C()
{
  sub_10018B300();
  if (v0 <= 0x3F)
  {
    sub_10018B328();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void *sub_10018B300()
{
  result = qword_1002DF7C8;
  if (!qword_1002DF7C8)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1002DF7C8);
  }

  return result;
}

void sub_10018B328()
{
  if (!qword_1002DF7D0)
  {
    v0 = type metadata accessor for TSDataSyncExternalEvent(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1002DF7D0);
    }
  }
}

unint64_t sub_10018B370()
{
  result = qword_1002DF800;
  if (!qword_1002DF800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DF800);
  }

  return result;
}

uint64_t sub_10018B3C8()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 544);
  result = *(v0 + 504);
  v6 = *(v0 + 392);
  v7 = (*(v0 + 704) + 32) & ~*(v0 + 704);
  return result;
}

void sub_10018B3F4()
{
  *(v1 - 88) = *(v0 + 204);
  v2 = *(v0 + 952);
  v5 = *(v0 + 888);
  v6 = *(v0 + 872);
  v7 = *(v0 + 992);
  v8 = *(v0 + 784);
  v9 = *(v0 + 1000);
  v3 = *(v0 + 752);
  v4 = *(v0 + 744);
  v10 = *(v0 + 736);
}

uint64_t sub_10018B474()
{
  v2 = v0[46];
  v9 = v0[41];
  v10 = v0[48];
  v11 = v0[38];
  v12 = v0[49];
  v4 = v0[31];
  v3 = v0[32];
  v13 = v0[30];
  v7 = v0[26];
  v8 = v0[43];
  v5 = v0[24];

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10018B4D8()
{
  v2 = v0[42];
  v9 = v0[37];
  v10 = v0[44];
  v11 = v0[34];
  v12 = v0[45];
  v4 = v0[25];
  v3 = v0[26];
  v13 = v0[24];
  v7 = v0[20];
  v8 = v0[39];
  v5 = v0[18];

  return static LogInterpolation.prefix(_:_:)();
}

void sub_10018B52C()
{
  v2 = v0[52];
  v3 = v0[53];
  v6 = v0[51];
  v4 = v0[48];
  v5 = v0[49];

  sub_10011DE50();
}

uint64_t sub_10018B574@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 424);

  return sub_1001AC540(0xD000000000000016, (a1 - 32) | 0x8000000000000000, 2);
}

void sub_10018B5B4()
{
  v1 = v0[50];
  v3 = v0[43];
  v2 = v0[44];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];
  v7 = v0[35];
  v9 = v0[37];
  v10 = v0[34];
  v8 = v0[33];
  v11 = v0[32];
}

uint64_t sub_10018B5FC()
{

  return static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();
}

uint64_t sub_10018B648()
{

  return static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();
}

uint64_t sub_10018B670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{
  *(a1 + 16) = a19;
  *(v19 + 296) = *(v21 - 80);
  *(v19 + 272) = v20;
}

uint64_t sub_10018B698@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 424) = a1;
  *(v2 + 400) = 0xD000000000000012;
  *(v2 + 408) = v1;
  sub_1001514B8((v2 + 400), (v2 + 432));
  v3 = *(v2 + 456);

  return sub_100008494(v2 + 432, v3);
}

uint64_t sub_10018B6F4@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 184);

  return sub_1001AC540(0xD00000000000001DLL, (a1 - 32) | 0x8000000000000000, 2);
}

uint64_t sub_10018B724()
{
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);
  v4 = *(v0 + 328);
  v5 = *(v0 + 312);
  v6 = *(v0 + 160);
  v7 = (*(v0 + 424) + 32) & ~*(v0 + 424);

  return static Log.tsDataSync.getter();
}

uint64_t sub_10018B778()
{
  v15 = *(v0 + 400);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  v5 = *(v0 + 368);
  v13 = *(v0 + 392);
  v14 = *(v0 + 336);
  v11 = *(v0 + 328);
  v12 = *(v0 + 312);
  v16 = *(v0 + 304);
  v17 = *(v0 + 296);
  v18 = *(v0 + 288);
  v10 = 3 * *(v0 + 352);
  v6 = *(v0 + 272);
  v19 = *(v0 + 280);
  v7 = v1 + ((*(v0 + 520) + 32) & ~*(v0 + 520));
  v8 = *(v0 + 232);

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10018B7F8()
{
  v2 = *(v0 - 88);

  return static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();
}

uint64_t sub_10018B824()
{

  return swift_getErrorValue();
}

uint64_t sub_10018B848()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_10018B86C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 296) = v4;
  *(v2 + 272) = v3;
}

uint64_t sub_10018B890(uint64_t a1)
{
  *(a1 + 8) = sub_1001842B8;
  v2 = v1[39];
  result = v1[33];
  v4 = v1[30];
  v5 = v1[31];
  v6 = v1[28];
  v7 = v1[29];
  v8 = v1[27];
  return result;
}

uint64_t sub_10018B8F0(uint64_t a1)
{
  *(a1 + 8) = sub_100182794;
  result = *(v1 + 488);
  v3 = *(v1 + 392);
  return result;
}

void sub_10018B91C()
{
  v1 = v0[114];
  v2 = v0[106];
  v3 = v0[105];
}

void sub_10018B92C()
{
  v1 = v0[48];
  v3 = v0[41];
  v2 = v0[42];
  v5 = v0[37];
  v4 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[32];
}

uint64_t sub_10018B96C()
{
  v2 = *(v0 + 488);
  v3 = *(v0 + 472);

  return static LogInterpolation.prefix(_:_:)();
}

void sub_10018B994()
{

  sub_10011DE50();
}

uint64_t sub_10018B9BC()
{
  v2 = *(v0 + 680);

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10018BA84()
{

  return swift_allocObject();
}

uint64_t sub_10018BACC()
{

  return sub_10018B234();
}

uint64_t sub_10018BB04()
{

  return sub_1001AC540(0xD000000000000017, v0 | 0x8000000000000000, 2);
}

uint64_t sub_10018BB28()
{
  sub_100004118((v0 + 272));

  return LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

uint64_t sub_10018BB68()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10018BB78()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_10018BB9C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v3 + 360) = v4;
  *(v3 + 336) = v2;
}

void sub_10018BBD4()
{
  v1 = v0[68];
  v3 = v0[61];
  v2 = v0[62];
  v5 = v0[57];
  v4 = v0[58];
}

void sub_10018BBE4(uint64_t a1@<X8>)
{
  v2[128] = a1;
  v2[127] = v1;
  v3 = v2[120];
}

uint64_t sub_10018BC18()
{
  sub_100004118((v0 + 336));

  return LogInterpolation.init(stringLiteral:)();
}

void sub_10018BC74()
{
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[95];
}

uint64_t sub_10018BC88()
{
  v2 = *(v0 - 80);

  return swift_getErrorValue();
}

uint64_t sub_10018BCC8()
{
  sub_100004118((v0 + 560));

  return LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

void sub_10018BCFC()
{
  v1 = v0[138];
  v2 = v0[137];
  v3 = v0[129];
}

uint64_t sub_10018BD6C()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_10018BD88()
{

  return swift_allocObject();
}

void sub_10018BDA0()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
}

uint64_t sub_10018BDE4()
{
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v5 = *(v0 + 488);
  v6 = *(v0 + 440);
  v7 = (*(v0 + 608) + 32) & ~*(v0 + 608);

  return static Log.tsDataSync.getter();
}

uint64_t sub_10018BE2C()
{

  return swift_getErrorValue();
}

uint64_t sub_10018BE4C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 24) = v3;
}

uint64_t sub_10018BE6C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 104) = v4;
  *(v2 + 80) = v3;
}

uint64_t sub_10018BE8C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 360) = v4;
  *(v2 + 336) = v3;
}

uint64_t sub_10018BEAC()
{
  v2 = v0[98];
  v3 = v0[96];
  v4 = v0[95];
}

uint64_t *sub_10018BECC()
{
  v2 = v0[78];
  v0[49] = v0[79];

  return sub_100007914(v0 + 46);
}

uint64_t *sub_10018BEEC()
{
  v3 = v1[18];
  v1[17] = v1[19];

  return sub_100007914((v0 + 32));
}

uint64_t sub_10018BF08()
{
  v2 = v0[60];
  v3 = v0[57];
  v4 = v0[58];
}

uint64_t *sub_10018BF24()
{
  v2 = v0[42];
  v0[41] = v0[43];

  return sub_100007914(v0 + 38);
}

uint64_t sub_10018BF40(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_1001AC540(v3, a2, 2);
}

uint64_t sub_10018BF58()
{

  return swift_allocObject();
}

uint64_t sub_10018BFC8()
{

  return swift_allocObject();
}

uint64_t sub_10018C010()
{
  result = v0;
  v4 = *(v1 - 88);
  v3 = *(v1 - 80);
  return result;
}

void sub_10018C050()
{
}

void sub_10018C084()
{
}

uint64_t sub_10018C09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_1001A8ED8(va);
}

void sub_10018C0B4()
{
}

void sub_10018C138()
{
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[36];
}

uint64_t sub_10018C150()
{

  return static LogInterpolation.sensitive(_:)();
}

void sub_10018C168()
{
}

uint64_t sub_10018C180()
{
  v2 = *(v0 - 88);

  return swift_getErrorValue();
}

uint64_t sub_10018C1A4()
{

  return sub_100004E7C(v0 + 144, v1, v2);
}

uint64_t *sub_10018C1C0()
{
  v2 = v0[25];
  v0[21] = v0[26];

  return sub_100007914(v0 + 18);
}

uint64_t sub_10018C1DC()
{

  return sub_100004E7C(v0 + 112, v1, v2);
}

uint64_t sub_10018C1F8()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t *sub_10018C21C()
{
  *(v0 + 136) = v1;

  return sub_100007914((v0 + 112));
}

uint64_t sub_10018C238()
{

  return swift_getErrorValue();
}

uint64_t sub_10018C25C()
{
  v2 = *(v0 - 80);

  return Log.default(_:)();
}

uint64_t sub_10018C278()
{
  v3 = *(v1 - 88) + v0;

  return LogInterpolation.init(stringInterpolation:)();
}

uint64_t *sub_10018C294()
{
  v2 = v0[50];
  v0[49] = v0[51];

  return sub_100007914(v0 + 46);
}

uint64_t sub_10018C2B0()
{
  v2 = v0[34];
  v3 = v0[31];
  v4 = v0[32];
}

uint64_t sub_10018C2CC()
{
  *(v1 + 24) = v0;
}

uint64_t sub_10018C2E8()
{

  return LogInterpolation.StringInterpolation.appendInterpolation(_:)();
}

uint64_t *sub_10018C304()
{
  v3 = v1[14];
  v1[13] = v1[15];

  return sub_100007914((v0 + 32));
}

uint64_t sub_10018C320()
{

  return dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

uint64_t sub_10018C350()
{

  return static LogInterpolation.traceableSensitive(_:)();
}

uint64_t sub_10018C368()
{
  v2 = *(v1 + 24);
  sub_100004118((v0 + 432));
}

uint64_t sub_10018C398(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

void sub_10018C3FC()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[57];
  v4 = v0[58];
}

double sub_10018C454()
{
  result = 0.0;
  *(v0 + 592) = 0u;
  *(v0 + 608) = 0u;
  return result;
}

uint64_t sub_10018C460@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 440) = a1;
  *(v2 + 448) = v1 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v3;
}

uint64_t sub_10018C480()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_10018C4A0()
{

  return swift_allocObject();
}

uint64_t sub_10018C4C0()
{

  return LogInterpolation.init(stringInterpolation:)();
}

uint64_t *sub_10018C4D8()
{
  *(v1 + 328) = v0;

  return sub_100007914((v1 + 304));
}

uint64_t sub_10018C4F0()
{

  return Log.error(_:)();
}

uint64_t sub_10018C508(uint64_t a1)
{

  return sub_100004E7C(a1, v1, v2);
}

uint64_t sub_10018C520()
{
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);

  return static Date.now.getter();
}

uint64_t sub_10018C538()
{

  return Log.default(_:)();
}

uint64_t sub_10018C550(uint64_t a1)
{

  return sub_100004E7C(a1, v2, v1);
}

uint64_t sub_10018C568()
{

  return sub_10018AE78();
}

uint64_t sub_10018C580()
{

  return Log.default(_:)();
}

uint64_t sub_10018C598()
{
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);

  return static Date.now.getter();
}

uint64_t sub_10018C5B0()
{

  return swift_getErrorValue();
}

void sub_10018C5C8()
{
}

uint64_t sub_10018C5E0()
{

  return static LogInterpolation.sensitive(_:)();
}

uint64_t *sub_10018C5F8()
{
  *(v1 + 616) = v0;

  return sub_100007914((v1 + 592));
}

uint64_t sub_10018C610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100002CC0();
  v10 = sub_100099DF4(v8, v9);
  sub_1000030B8(v10);
  v12 = *(v11 + 64);
  sub_100003774();
  __chkstk_darwin(v13);
  v15 = v30 - v14;
  sub_1000C68A8(a3, v30 - v14, &qword_1002DB950, &qword_100232E50);
  v16 = type metadata accessor for TaskPriority();
  v17 = sub_10000A218();
  v19 = sub_100004DFC(v17, v18, v16);

  if (v19 == 1)
  {
    sub_100004E24(v15, &qword_1002DB950, &qword_100232E50);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_10000B7EC(v16);
    (*(v20 + 8))(v15, v16);
  }

  v22 = *(a5 + 16);
  v21 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v22)
  {
    swift_getObjectType();
    v23 = dispatch thunk of Actor.unownedExecutor.getter();
    v25 = v24;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26 = String.utf8CString.getter() + 32;

      if (v25 | v23)
      {
        v31[0] = 0;
        v31[1] = 0;
        v27 = v31;
        v31[2] = v23;
        v31[3] = v25;
      }

      else
      {
        v27 = 0;
      }

      v30[1] = 7;
      v30[2] = v27;
      v30[3] = v26;
      v28 = sub_1000051F8();

      return v28;
    }
  }

  else
  {
    v23 = 0;
    v25 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v25 | v23)
  {
    v31[4] = 0;
    v31[5] = 0;
    v31[6] = v23;
    v31[7] = v25;
  }

  return sub_1000051F8();
}

BOOL sub_10018C82C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    return a8 & (a1 == a5);
  }

  if (a8)
  {
    return 0;
  }

  v11 = a1 == a5 && a2 == a6;
  return (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && a3 == a7;
}

uint64_t sub_10018C8A4(uint64_t a1)
{
  v2 = sub_100197A34();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10018C8E0(uint64_t a1)
{
  v2 = sub_100197A34();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10018C938(uint64_t a1)
{
  v2 = sub_100197B38();

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_10018C974(uint64_t a1)
{
  v2 = sub_100197B38();

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

void sub_10018C9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100004868();
  v137 = v29;
  v138 = v28;
  v30 = v27;
  v141 = v31;
  v142 = v32;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v139 = a23;
  v140 = a24;
  v135 = v41;
  v136 = a22;
  v134 = a21;
  v124 = type metadata accessor for URL();
  v42 = sub_100003724(v124);
  v123 = v43;
  v45 = *(v44 + 64);
  __chkstk_darwin(v42);
  sub_1000030E4();
  sub_100008280(v46);
  v133 = type metadata accessor for FileStoreError();
  v47 = sub_100003724(v133);
  v125 = v48;
  v50 = *(v49 + 64);
  __chkstk_darwin(v47);
  sub_1000030E4();
  v132 = v51;
  sub_100013FAC();
  v52 = type metadata accessor for Log();
  v53 = sub_100003724(v52);
  v130 = v54;
  v131 = v53;
  v56 = *(v55 + 64);
  __chkstk_darwin(v53);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v57);
  sub_10000D478();
  v59 = sub_100008280(v58);
  v60 = type metadata accessor for TSDataSyncDatasetGroupState(v59);
  v61 = sub_10000307C(v60);
  v63 = *(v62 + 64);
  __chkstk_darwin(v61);
  sub_1000037D4();
  v129 = v64;
  sub_100005238();
  __chkstk_darwin(v65);
  v67 = &v121 - v66;
  swift_defaultActor_initialize();
  sub_10000B0F8();
  v121 = v68;
  sub_100197820(v40, v30 + v68);
  v69 = (v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_store);
  *v69 = v38;
  v69[1] = v36;
  v128 = v69;
  v70 = (v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_requester);
  v71 = v137;
  *v70 = v135;
  v70[1] = v71;
  v137 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_bag;
  *(v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_bag) = v34;
  v72 = (v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_externalWriter);
  v73 = v142;
  *v72 = v141;
  v72[1] = v73;
  v74 = (v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_transactionStore);
  v75 = v136;
  *v74 = v134;
  v74[1] = v75;
  v76 = (v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_deviceInformation);
  v77 = v140;
  *v76 = v139;
  v76[1] = v77;
  v136 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_defaults;
  v141 = a25;
  sub_100007974(a25, v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_defaults);
  v135 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_coordinator;
  v140 = a26;
  sub_100007974(a26, v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_coordinator);
  v134 = OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_metrics;
  sub_100007974(a27, v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_metrics);
  v78 = *(v36 + 8);
  v139 = v34;
  v142 = v40;
  v79 = v138;
  v78(v40, v38, v36);
  if (!v79)
  {
    sub_100197914(v67, v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_state);
    v93 = v127;
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v94 = type metadata accessor for LogInterpolation();
    sub_100003B78(v94);
    v96 = *(v95 + 72);
    sub_100005D98();
    sub_1000C71D4();
    *(swift_allocObject() + 16) = xmmword_1002329F0;
    v144 = type metadata accessor for TSDataSyncDatasetGroupAccessActor();
    v143[0] = v30;

    v97 = AMSLogKey();
    if (v97)
    {
      v98 = v97;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(v143);
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    goto LABEL_12;
  }

  v143[0] = v79;
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  v81 = v132;
  v80 = v133;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    type metadata accessor for TSDataSyncDatasetState(0);
    sub_1000D6484();
    v99 = Dictionary.init(dictionaryLiteral:)();
    v100 = v30 + OBJC_IVAR____TtC12amsaccountsd33TSDataSyncDatasetGroupAccessActor_state;
    v101 = v60[6];
    v102 = type metadata accessor for Date();
    sub_100007B78();
    sub_100002728(v103, v104, v105, v102);
    v106 = v60[7];
    sub_100007B78();
    sub_100002728(v107, v108, v109, v102);
    sub_10000B0F8();
    sub_100197820(v142, v100);
    *(v100 + v60[5]) = v99;
    *(v100 + v60[8]) = _swiftEmptyArrayStorage;
    *(v100 + v60[9]) = _swiftEmptyArrayStorage;
    v110 = v100 + v60[10];
    *v110 = xmmword_100234820;
    *(v110 + 16) = 0;
    *(v110 + 24) = 0;
    v111 = *v128;
    v112 = v128[1];
    sub_1000109B8();
    swift_beginAccess();
    sub_100006F90();
    sub_100197820(v100, v129);
    v113 = *(v112 + 16);
    v114 = sub_100002CC0();
    v115(v114);
    sub_100004D28();
    sub_100197878();
    static Log.tsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v116 = type metadata accessor for LogInterpolation();
    sub_100003B78(v116);
    v118 = *(v117 + 72);
    sub_100005D98();
    sub_1000C71D4();
    *(swift_allocObject() + 16) = xmmword_1002329F0;
    v144 = type metadata accessor for TSDataSyncDatasetGroupAccessActor();
    v143[0] = v30;

    v119 = AMSLogKey();
    if (v119)
    {
      v120 = v119;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(v143);
    LogInterpolation.init(stringLiteral:)();
    v93 = v126;
    Log.default(_:)();

LABEL_12:
    sub_100197CDC();
    sub_100008EE8();
    sub_100197878();
    (*(v130 + 8))(v93, v131);
    goto LABEL_13;
  }

  v82 = v125;
  v83 = (*(v125 + 88))(v81, v80);
  if (v83 != enum case for FileStoreError.fileIsLockedAwaitingFirstDeviceUnlock(_:))
  {
    (*(v82 + 8))(v81, v80);
    goto LABEL_8;
  }

  v84 = v83;

  (*(v82 + 96))(v81, v80);
  v85 = v123;
  v86 = v122;
  v87 = v124;
  (*(v123 + 32))(v122, v81, v124);
  sub_1001978CC(&qword_1002DB900, &type metadata accessor for FileStoreError);
  sub_100004950();
  swift_allocError();
  v89 = v88;
  v90 = *(sub_100099DF4(&qword_1002DB908, &unk_100232B00) + 48);
  (*(v85 + 16))(v89, v86, v87);
  *(v89 + v90) = default argument 1 of FileStoreError.fileIsLockedAwaitingFirstDeviceUnlock(_:)();
  (*(v82 + 104))(v89, v84, v133);
  swift_willThrow();
  (*(v85 + 8))(v86, v87);

  sub_100197878();

  sub_100004118((v30 + v136));
  sub_100004118((v30 + v135));
  sub_100004118((v30 + v134));
  type metadata accessor for TSDataSyncDatasetGroupAccessActor();
  swift_defaultActor_destroy();

  sub_100197CDC();
  sub_100197878();
  v91 = *(*v30 + 48);
  v92 = *(*v30 + 52);
  swift_deallocPartialClassInstance();
LABEL_13:
  sub_100005074();
}