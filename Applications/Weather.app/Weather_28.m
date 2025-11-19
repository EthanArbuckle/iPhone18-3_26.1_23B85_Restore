uint64_t sub_1002F3038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for HistoricalComparison();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CABD10);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  sub_100035AD0(a1, &v21 - v8, &qword_100CABD10);
  v10 = type metadata accessor for HistoricalComparisons();
  if (sub_100024D10(v9, 1, v10) == 1)
  {
    result = sub_1000180EC(v9, &qword_100CABD10);
    v12 = _swiftEmptyArrayStorage;
  }

  else
  {
    v12 = HistoricalComparisons.comparisons.getter();
    result = (*(*(v10 - 8) + 8))(v9, v10);
  }

  v13 = 0;
  v14 = v12[2];
  v15 = enum case for HistoricalComparison.highTemperature(_:);
  while (1)
  {
    if (v14 == v13)
    {

      v16 = sub_10022C350(&unk_100CABCA0);
      v17 = v22;
      v18 = 1;
      return sub_10001B350(v17, v18, 1, v16);
    }

    if (v13 >= v12[2])
    {
      break;
    }

    (*(v4 + 16))(v6, v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v3);
    if ((*(v4 + 88))(v6, v3) == v15)
    {

      (*(v4 + 96))(v6, v3);
      v19 = sub_10022C350(&unk_100CABCA0);
      v20 = v22;
      (*(*(v19 - 8) + 32))(v22, v6, v19);
      v17 = v20;
      v18 = 0;
      v16 = v19;
      return sub_10001B350(v17, v18, 1, v16);
    }

    ++v13;
    result = (*(v4 + 8))(v6, v3);
  }

  __break(1u);
  return result;
}

unint64_t sub_1002F3344()
{
  result = qword_100CABCF8;
  if (!qword_100CABCF8)
  {
    sub_10022E824(&unk_100CABCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CABCF8);
  }

  return result;
}

unint64_t sub_1002F33A8()
{
  result = qword_100CA6678;
  if (!qword_100CA6678)
  {
    type metadata accessor for Location();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6678);
  }

  return result;
}

uint64_t sub_1002F3408(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1002F3448(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002F34DC(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  __chkstk_darwin(v4);
  v36 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10022C350(&qword_100CABDF8);
  __chkstk_darwin(v6);
  v8 = &v31[-v7];
  v9 = sub_10022C350(&unk_100CABD90);
  __chkstk_darwin(v9 - 8);
  v37 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v31[-v12];
  __chkstk_darwin(v14);
  v16 = &v31[-v15];
  __chkstk_darwin(v17);
  v19 = &v31[-v18];
  __chkstk_darwin(v20);
  v22 = &v31[-v21];
  v23 = type metadata accessor for DailyForecastRowViewButtonStyle(0);
  v24 = v23;
  if (a1)
  {
    sub_10019147C(a2 + *(v23 + 24), v22, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
    sub_10001B350(v22, 0, 1, v4);
    sub_1001914DC(v22, v19);
    sub_10022C350(&qword_100CABD18);
LABEL_11:
    Binding.wrappedValue.setter();
    v27 = &unk_100CABD90;
    v28 = v22;
    return sub_100018144(v28, v27);
  }

  v35 = v19;
  v34 = sub_10022C350(&qword_100CABD18);
  Binding.wrappedValue.getter();
  sub_10019147C(a2 + *(v24 + 24), v13, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
  sub_10001B350(v13, 0, 1, v4);
  v25 = *(v6 + 48);
  sub_1001914DC(v16, v8);
  sub_1001914DC(v13, &v8[v25]);
  if (sub_100024D10(v8, 1, v4) == 1)
  {
    v33 = a2;
    sub_100018144(v13, &unk_100CABD90);
    sub_100018144(v16, &unk_100CABD90);
    if (sub_100024D10(&v8[v25], 1, v4) == 1)
    {
      sub_100018144(v8, &unk_100CABD90);
LABEL_10:
      sub_10001B350(v22, 1, 1, v4);
      sub_1001914DC(v22, v35);
      goto LABEL_11;
    }
  }

  else
  {
    v26 = v37;
    sub_1001914DC(v8, v37);
    if (sub_100024D10(&v8[v25], 1, v4) != 1)
    {
      v33 = a2;
      v29 = v36;
      sub_10019141C(&v8[v25], v36, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
      v32 = sub_1001D1BB8(v26, v29);
      sub_1001B56D4(v29, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
      sub_100018144(v13, &unk_100CABD90);
      sub_100018144(v16, &unk_100CABD90);
      sub_1001B56D4(v26, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
      result = sub_100018144(v8, &unk_100CABD90);
      if ((v32 & 1) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

    sub_100018144(v13, &unk_100CABD90);
    sub_100018144(v16, &unk_100CABD90);
    sub_1001B56D4(v26, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
  }

  v27 = &qword_100CABDF8;
  v28 = v8;
  return sub_100018144(v28, v27);
}

void sub_1002F39B0(uint64_t a1)
{
  v2 = type metadata accessor for DailyForecastRowViewButtonStyle(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = sub_10022C350(&unk_100CABD90);
  __chkstk_darwin(v6 - 8);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = aBlock - v10;
  sub_10019147C(a1 + *(v3 + 32), aBlock - v10, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
  v12 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  sub_10001B350(v11, 0, 1, v12);
  sub_1001914DC(v11, v8);
  sub_10022C350(&qword_100CABD18);
  Binding.wrappedValue.setter();
  sub_100018144(v11, &unk_100CABD90);
  PrimitiveButtonStyleConfiguration.trigger()();
  v13 = objc_opt_self();
  sub_10019147C(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DailyForecastRowViewButtonStyle);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_10019141C(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for DailyForecastRowViewButtonStyle);
  aBlock[4] = sub_1002F3EB4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C4DF90;
  v16 = _Block_copy(aBlock);

  [v13 setCompletionBlock:v16];
  _Block_release(v16);
}

uint64_t sub_1002F3C64()
{
  v0 = sub_10022C350(&unk_100CABD90);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  sub_10001B350(v5, 1, 1, v6);
  type metadata accessor for DailyForecastRowViewButtonStyle(0);
  sub_1001914DC(v5, v2);
  sub_10022C350(&qword_100CABD18);
  Binding.wrappedValue.setter();
  return sub_100018144(v5, &unk_100CABD90);
}

uint64_t sub_1002F3D78(char a1)
{
  v3 = *(type metadata accessor for DailyForecastRowViewButtonStyle(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1002F34DC(a1, v4);
}

void sub_1002F3DE8()
{
  v1 = *(type metadata accessor for DailyForecastRowViewButtonStyle(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for PrimitiveButtonStyleConfiguration();

  sub_1002F39B0(v0 + v2);
}

uint64_t sub_1002F3EB4()
{
  type metadata accessor for DailyForecastRowViewButtonStyle(0);

  return sub_1002F3C64();
}

void sub_1002F3F3C()
{
  sub_1000077F0();
  if (v0 <= 0x3F)
  {
    sub_1002F3FD0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002F3FD0()
{
  if (!qword_100CABE70)
  {
    type metadata accessor for LocationComponentCornerRadiusConfiguration(255);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CABE70);
    }
  }
}

uint64_t sub_1002F4028()
{
  v1 = OBJC_IVAR____TtC7Weather27PagingContentOffsetsStorage__offsets;
  v2 = sub_10022C350(&qword_100CABFD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1002F40D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002F40F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_1002F4130(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 40))
    {
      return 0;
    }

    if (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1002F419C()
{
  v1 = sub_10022C350(&qword_100CA3538);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_10000C790();
  static Settings.LocationIntelligence.useSignificantLocationsEnabled.getter();
  sub_1000135A0();
  sub_10016F958(v3);
  Updatable.save<A>(setting:value:)();

  v4 = type metadata accessor for TaskPriority();
  sub_10001B350(v0, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_1006C0138();
}

uint64_t sub_1002F42F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_10022C350(&qword_100CA3538);
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for PredictedLocationsAuthorization();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002F4404, 0, 0);
}

uint64_t sub_1002F4404()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = Strong[22];
    v3 = Strong[23];
    sub_1000161C0(Strong + 19, v2);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_1002F4534;
    v5 = v0[11];

    return dispatch thunk of PredictedLocationsAuthorizationManagerType.fetchAuthorization()(v5, v2, v3);
  }

  else
  {

    sub_100003B14();

    return v6();
  }
}

uint64_t sub_1002F4534()
{

  return _swift_task_switch(sub_1002F4630, 0, 0);
}

uint64_t sub_1002F4630()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = type metadata accessor for TaskPriority();
  sub_10001B350(v6, 1, 1, v7);
  (*(v5 + 16))(v3, v1, v4);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = v8;
  *(v10 + 3) = &protocol witness table for MainActor;
  *(v10 + 4) = v2;
  (*(v5 + 32))(&v10[v9], v3, v4);
  sub_1006C03F4();

  (*(v5 + 8))(v1, v4);

  sub_100003B14();

  return v11();
}

uint64_t sub_1002F47C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v5[10] = type metadata accessor for MainAction();
  v5[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002F4894, v7, v6);
}

uint64_t sub_1002F4894()
{
  v1 = *(v0 + 64);

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);

    *v3 = sub_100171FAC();
    type metadata accessor for EnvironmentAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    *(v0 + 16) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    sub_10004F034(v3, v0 + 16, v2);
    sub_10002B028(v2);
    sub_1000180EC(v0 + 16, &unk_100CD81B0);
    sub_1000142B0();
    sub_10004F4C0(v3, v4);
  }

  **(v0 + 56) = v2 == 0;

  sub_100003B14();

  return v5();
}

uint64_t sub_1002F49C0(uint64_t a1)
{
  v3 = type metadata accessor for NotificationsOptInAction();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_100050B70(a1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NotificationsOptInAction);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  sub_100050048(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for NotificationsOptInAction);

  asyncMain(block:)();
}

void sub_1002F4AF8(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_10000C790();
  v6 = *(a1 + 16);
  if (v6)
  {
    a2(0);
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction();
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v9 = 0;
    memset(v8, 0, sizeof(v8));

    sub_10004F034(v2, v8, v6);
    sub_10002B028(v6);
    sub_1000180EC(v8, &unk_100CD81B0);
    sub_1000142B0();
    sub_10004F4C0(v2, v7);
  }
}

void sub_1002F4C10(uint64_t a1, char a2)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_10000C790();
  v6 = *(a1 + 16);
  if (v6)
  {
    *v2 = a2;
    type metadata accessor for ModalViewAction();
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v9 = 0;
    memset(v8, 0, sizeof(v8));

    sub_10004F034(v2, v8, v6);
    sub_10002B028(v6);
    sub_1000180EC(v8, &unk_100CD81B0);
    sub_1000142B0();
    sub_10004F4C0(v2, v7);
  }
}

uint64_t sub_1002F4D10()
{
  v0 = type metadata accessor for NotificationsOptInAction();
  __chkstk_darwin(v0);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1002F49C0(v2);
  return sub_10004F4C0(v2, type metadata accessor for NotificationsOptInAction);
}

void sub_1002F4DC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainAction();
  __chkstk_darwin(v4);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = v9 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100050B70(a2, v9 - v6, type metadata accessor for NotificationsOptInAction);
    swift_storeEnumTagMultiPayload();
    v10 = 0;
    memset(v9, 0, sizeof(v9));

    sub_10004F034(v7, v9, v8);
    sub_10002B028(v8);
    sub_1000180EC(v9, &unk_100CD81B0);
    sub_10004F4C0(v7, type metadata accessor for MainAction);
  }
}

void sub_1002F4EEC(uint64_t a1, char a2)
{
  v4 = type metadata accessor for MainAction();
  __chkstk_darwin(v4);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    *v6 = a2;
    type metadata accessor for NotificationsOptInAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v9 = 0;
    memset(v8, 0, sizeof(v8));

    sub_10004F034(v6, v8, v7);
    sub_10002B028(v7);
    sub_1000180EC(v8, &unk_100CD81B0);
    sub_10004F4C0(v6, type metadata accessor for MainAction);
  }
}

uint64_t sub_1002F5014()
{
  sub_10002B028(*(v0 + 16));
  sub_100006F14(v0 + 32);
  sub_100006F14(v0 + 72);
  sub_100006F14(v0 + 112);
  sub_100006F14(v0 + 152);

  return v0;
}

uint64_t sub_1002F5064()
{
  sub_1002F5014();

  return swift_deallocClassInstance();
}

uint64_t sub_1002F5198()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1002F5240;
  v4 = sub_10001BD10();

  return sub_1002F42F8(v4, v5, v6, v2);
}

uint64_t sub_1002F5240()
{

  sub_100003B14();

  return v0();
}

uint64_t sub_1002F5330()
{
  v2 = type metadata accessor for PredictedLocationsAuthorization();
  sub_100003810(v2);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1002F5484;
  v5 = sub_10001BD10();

  return sub_1002F47C8(v5, v6, v7, v3, v8);
}

void sub_1002F5418()
{
  v1 = type metadata accessor for NotificationsOptInAction();
  sub_100003810(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_1002F4DC0(v3, v4);
}

uint64_t sub_1002F5568(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002F55B8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = (result + 40 * v3);
    v6 = *(v4 - 1);
    v5 = *v4;
    v7 = v4[1];
    v8 = v4[2];
    v9 = v4[3];

    v10 = v7;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  return result;
}

uint64_t sub_1002F563C(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  return sub_100003940();
}

uint64_t sub_1002F5700@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = a2(0);
    sub_1000037E8();
    (*(v8 + 16))(a3, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, v7);
    sub_10000E7B0();
    v12 = v7;
  }

  else
  {
    a2(0);
    sub_100003934();
  }

  return sub_10001B350(v9, v10, v11, v12);
}

uint64_t sub_1002F57C0(uint64_t a1)
{
  sub_10051A930();
  v3 = *(*v1 + 16);
  sub_1002789D0(v3);
  v4 = *v1;
  *(*v1 + 16) = v3 + 1;
  type metadata accessor for DetailChartDataElement();
  sub_1000037E8();
  result = (*(v5 + 32))(v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3, a1);
  *v1 = v4;
  return result;
}

id sub_1002F5854()
{
  result = sub_1002F5874();
  qword_100D8FAD8 = result;
  return result;
}

id sub_1002F5874()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale:isa];

  v6 = String._bridgeToObjectiveC()();
  [v4 setLocalizedDateFormatFromTemplate:v6];

  [v4 setTimeStyle:1];
  return v4;
}

uint64_t sub_1002F59C0()
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DetailChartViewModelFactory.FormattedHoursCacheKey(0);

  return static TimeZone.== infix(_:_:)();
}

uint64_t sub_1002F5A20()
{
  type metadata accessor for Date();
  sub_1003071A0(&qword_100CA39C8, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for DetailChartViewModelFactory.FormattedHoursCacheKey(0);
  type metadata accessor for TimeZone();
  sub_1003071A0(&qword_100CAC4C8, &type metadata accessor for TimeZone);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1002F5AF8()
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_1003071A0(&qword_100CA39C8, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for DetailChartViewModelFactory.FormattedHoursCacheKey(0);
  type metadata accessor for TimeZone();
  sub_1003071A0(&qword_100CAC4C8, &type metadata accessor for TimeZone);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002F5BE8(uint64_t a1, uint64_t a2)
{
  if ((sub_10074742C(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DetailChartViewModelFactory.MarkerLabelCacheKey(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)) || *(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  return static ConditionUnits.== infix(_:_:)();
}

uint64_t sub_1002F5C70()
{
  type metadata accessor for DetailChartCondition();
  sub_1003071A0(&qword_100CA39D8, &type metadata accessor for DetailChartCondition);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for DetailChartViewModelFactory.MarkerLabelCacheKey(0);
  v2 = *(v0 + *(v1 + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  Hasher._combine(_:)(*(v0 + *(v1 + 24)));
  type metadata accessor for ConditionUnits();
  sub_1003071A0(&qword_100CAC4B0, &type metadata accessor for ConditionUnits);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1002F5D84()
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_1003071A0(&qword_100CA39C8, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_1003071A0(&qword_100CAC4C8, &type metadata accessor for TimeZone);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002F5EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtremaResult();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CAC1B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_10022C350(&qword_100CAC4B8);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  if ((sub_10074742C(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for DetailChartViewModelFactory.PeakMarkerRequestContext(0);
  if (*(a1 + *(v14 + 20)) != *(a2 + *(v14 + 20)))
  {
    return 0;
  }

  v24 = v14;
  v25 = v5;
  v15 = *(v11 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v13, 1, v4) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v13[v15], 1, v4) != 1)
    {
      v16 = v25;
      (*(v25 + 32))(v7, &v13[v15], v4);
      sub_1003071A0(&qword_100CAC4C0, &type metadata accessor for ExtremaResult);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v18 = *(v16 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1000180EC(v13, &qword_100CAC1B0);
      if ((v17 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v25 + 8))(v10, v4);
LABEL_8:
    sub_1000180EC(v13, &qword_100CAC4B8);
    return 0;
  }

  if (sub_100024D10(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v13, &qword_100CAC1B0);
LABEL_10:
  v19 = v24;
  if ((static ConditionUnits.== infix(_:_:)() & 1) == 0 || *(a1 + v19[8]) != *(a2 + v19[8]) || *(a1 + v19[9]) != *(a2 + v19[9]))
  {
    return 0;
  }

  v21 = v19[10];
  v22 = *(a2 + v21);
  if (*(a1 + v21))
  {
    if (v22)
    {

      v23 = static Color.== infix(_:_:)();

      if (v23)
      {
        return 1;
      }
    }
  }

  else if (!v22)
  {
    return 1;
  }

  return 0;
}

void sub_1002F628C()
{
  v1 = type metadata accessor for ExtremaResult();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CAC1B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  type metadata accessor for DetailChartCondition();
  sub_1003071A0(&qword_100CA39D8, &type metadata accessor for DetailChartCondition);
  dispatch thunk of Hashable.hash(into:)();
  v8 = type metadata accessor for DetailChartViewModelFactory.PeakMarkerRequestContext(0);
  Hasher._combine(_:)(*(v0 + v8[5]));
  sub_100095588();
  if (sub_100024D10(v7, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(1u);
    sub_1003071A0(&qword_100CAC4A8, &type metadata accessor for ExtremaResult);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  type metadata accessor for ConditionUnits();
  sub_1003071A0(&qword_100CAC4B0, &type metadata accessor for ConditionUnits);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v0 + v8[8]));
  Hasher._combine(_:)(*(v0 + v8[9]));
  if (*(v0 + v8[10]))
  {
    Hasher._combine(_:)(1u);
    Color.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1002F6580(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int sub_1002F6610(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

void *sub_1002F6658(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3[17] = 6;
  sub_10022C350(&qword_100CAC3B0);
  swift_allocObject();
  v3[18] = Cache.init()();
  sub_10022C350(&qword_100CAC3B8);
  swift_allocObject();
  v3[19] = Cache.init()();
  sub_10022C350(&qword_100CAC3C0);
  swift_allocObject();
  v3[20] = Cache.init()();
  sub_100013188(a1, (v3 + 2));
  sub_100013188(a2, (v3 + 7));
  sub_100013188(a3, (v3 + 12));
  return v3;
}

uint64_t sub_1002F6748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, int a6@<W5>, int a7@<W6>, unint64_t *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v12 = v10;
  LODWORD(v2333) = a7;
  LODWORD(v2304) = a6;
  object = a5;
  v2212 = a3;
  v2162 = a2;
  v2254 = a8;
  type metadata accessor for Calendar.Component();
  sub_1000037C4();
  v2057 = v18;
  v2058 = v17;
  __chkstk_darwin(v17);
  sub_1000038E4();
  v2056 = v19;
  v20 = sub_10022C350(&qword_100CAC1B0);
  sub_100003810(v20);
  sub_100003828();
  __chkstk_darwin(v21);
  sub_1000039BC();
  v2069 = v22;
  sub_1000038CC();
  type metadata accessor for HourWeather.SecondValueUseCase();
  sub_1000037C4();
  v2037 = v24;
  v2038 = v23;
  __chkstk_darwin(v23);
  sub_1000038E4();
  v2036 = v25;
  sub_1000038CC();
  type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v2033 = v27;
  v2034 = v26;
  __chkstk_darwin(v26);
  sub_1000038E4();
  v2035 = v28;
  v29 = sub_10022C350(&qword_100CAB9B0);
  sub_100003810(v29);
  sub_100003828();
  __chkstk_darwin(v30);
  sub_1000039BC();
  v2045 = v31;
  sub_1000038CC();
  type metadata accessor for WeatherValueCalculationContext();
  sub_1000037C4();
  v2039 = v33;
  v2040 = v32;
  __chkstk_darwin(v32);
  sub_1000038E4();
  v2047 = v34;
  v35 = sub_10022C350(&qword_100CAC3C8);
  sub_100003810(v35);
  sub_100003828();
  __chkstk_darwin(v36);
  sub_1000039BC();
  v2042 = v37;
  sub_1000038CC();
  v2049 = type metadata accessor for HourWeather();
  sub_1000037C4();
  v2046 = v38;
  __chkstk_darwin(v39);
  sub_100003848();
  v2044 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  sub_10000E70C();
  v2048 = v42;
  sub_1000038CC();
  type metadata accessor for DateInterval();
  sub_1000037C4();
  v2053 = v44;
  v2054 = v43;
  __chkstk_darwin(v43);
  sub_1000038E4();
  v2052 = v45;
  v2192 = sub_10022C350(&qword_100CAC3D0);
  sub_1000037C4();
  v2191 = v46;
  __chkstk_darwin(v47);
  sub_100003848();
  v2189 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_10000E70C();
  v2190 = v50;
  v51 = sub_1000038CC();
  v2271 = type metadata accessor for ChartViewModel(v51);
  sub_1000037E8();
  __chkstk_darwin(v52);
  sub_100003848();
  v2075 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v2116 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v2187 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_10000E70C();
  v2251 = v59;
  v60 = sub_10022C350(&unk_100CB2CF0);
  v61 = sub_100003810(v60);
  __chkstk_darwin(v61);
  sub_100003848();
  v2068 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v2067 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v2064 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  sub_100003878();
  v2063 = v68;
  sub_10000386C();
  __chkstk_darwin(v69);
  sub_100003878();
  v2083 = v70;
  sub_10000386C();
  __chkstk_darwin(v71);
  sub_100003878();
  v2082 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v2180 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v2170 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v2169 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v2168 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v2219 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_10000E70C();
  v2218 = v84;
  sub_1000038CC();
  v2334 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v2332 = v85;
  __chkstk_darwin(v86);
  sub_100003848();
  v2041 = v87;
  sub_10000386C();
  __chkstk_darwin(v88);
  sub_100003878();
  v2379._object = v89;
  sub_10000386C();
  __chkstk_darwin(v90);
  sub_100003878();
  v2043 = v91;
  sub_10000386C();
  __chkstk_darwin(v92);
  sub_100003878();
  v2055 = v93;
  sub_10000386C();
  __chkstk_darwin(v94);
  sub_100003878();
  v2171 = v95;
  sub_10000386C();
  __chkstk_darwin(v96);
  sub_100003878();
  v2161 = v97;
  sub_10000386C();
  __chkstk_darwin(v98);
  sub_100003878();
  v2172 = v99;
  sub_10000386C();
  __chkstk_darwin(v100);
  sub_100003878();
  v2159 = v101;
  sub_10000386C();
  __chkstk_darwin(v102);
  sub_100003878();
  v2194 = v103;
  sub_10000386C();
  __chkstk_darwin(v104);
  sub_100003878();
  v2181 = v105;
  sub_10000386C();
  __chkstk_darwin(v106);
  sub_100003878();
  v2195 = v107;
  sub_10000386C();
  __chkstk_darwin(v108);
  sub_100003878();
  v2179 = v109;
  sub_10000386C();
  __chkstk_darwin(v110);
  sub_100003878();
  v2236 = v111;
  sub_10000386C();
  __chkstk_darwin(v112);
  sub_100003878();
  v2213 = v113;
  sub_10000386C();
  __chkstk_darwin(v114);
  sub_100003878();
  v2331 = v115;
  sub_10000386C();
  __chkstk_darwin(v116);
  sub_100003878();
  v2328 = v117;
  sub_10000386C();
  __chkstk_darwin(v118);
  sub_100003878();
  *&v2325 = v119;
  sub_10000386C();
  __chkstk_darwin(v120);
  sub_100003878();
  *&v2324 = v121;
  sub_10000386C();
  __chkstk_darwin(v122);
  sub_100003878();
  v2329 = v123;
  sub_10000386C();
  __chkstk_darwin(v124);
  sub_100003878();
  *&v2327 = v125;
  sub_10000386C();
  __chkstk_darwin(v126);
  sub_100003878();
  *&v2330 = v127;
  sub_10000386C();
  __chkstk_darwin(v128);
  sub_10000E70C();
  v2326 = v129;
  v130 = sub_10022C350(&qword_100CAC3D8);
  v131 = sub_100003810(v130);
  __chkstk_darwin(v131);
  sub_100003848();
  v2085 = v132;
  sub_10000386C();
  __chkstk_darwin(v133);
  sub_100003878();
  v2188 = v134;
  sub_10000386C();
  __chkstk_darwin(v135);
  sub_10000E70C();
  v2231 = v136;
  sub_1000038CC();
  v2230 = type metadata accessor for Color.RGBColorSpace();
  sub_1000037C4();
  v2228 = v137;
  __chkstk_darwin(v138);
  sub_1000038E4();
  v2229 = v139;
  sub_1000038CC();
  v2312 = type metadata accessor for ChartPastDataTreatment();
  sub_1000037C4();
  v2303 = v140;
  __chkstk_darwin(v141);
  sub_100003848();
  v2074 = v142;
  sub_10000386C();
  __chkstk_darwin(v143);
  sub_100003878();
  v2099 = v144;
  sub_10000386C();
  __chkstk_darwin(v145);
  sub_100003878();
  v2115 = v146;
  sub_10000386C();
  __chkstk_darwin(v147);
  sub_100003878();
  v2133 = v148;
  sub_10000386C();
  __chkstk_darwin(v149);
  sub_100003878();
  v2186 = v150;
  sub_10000386C();
  __chkstk_darwin(v151);
  sub_100003878();
  v2250 = v152;
  sub_10000386C();
  __chkstk_darwin(v153);
  sub_100003878();
  v2249 = v154;
  sub_10000386C();
  __chkstk_darwin(v155);
  sub_10000E70C();
  v2203 = v156;
  v157 = sub_1000038CC();
  v158 = type metadata accessor for ChartViewModel.Background(v157);
  v159 = sub_100003810(v158);
  __chkstk_darwin(v159);
  sub_100003848();
  v2098 = v160;
  sub_10000386C();
  __chkstk_darwin(v161);
  sub_100003878();
  v2073 = v162;
  sub_10000386C();
  __chkstk_darwin(v163);
  sub_100003878();
  v2132 = v164;
  sub_10000386C();
  __chkstk_darwin(v165);
  sub_100003878();
  v2114 = v166;
  sub_10000386C();
  __chkstk_darwin(v167);
  sub_100003878();
  v2185 = v168;
  sub_10000386C();
  __chkstk_darwin(v169);
  sub_100003878();
  v2285 = v170;
  sub_10000386C();
  __chkstk_darwin(v171);
  sub_100003878();
  v2248 = v172;
  sub_10000386C();
  __chkstk_darwin(v173);
  sub_10000E70C();
  v2200 = v174;
  sub_1000038CC();
  v2269 = type metadata accessor for ConditionUnits();
  sub_1000037C4();
  v2268 = v175;
  __chkstk_darwin(v176);
  sub_10000FBD0();
  v2061 = v177;
  sub_1000E1390();
  __chkstk_darwin(v178);
  sub_10000E70C();
  v2081 = v179;
  sub_1000E1390();
  __chkstk_darwin(v180);
  sub_10000E70C();
  v2167 = v181;
  sub_1000E1390();
  __chkstk_darwin(v182);
  sub_10000E70C();
  v2222 = v183;
  v2261 = v184;
  __chkstk_darwin(v185);
  sub_10000E70C();
  v2201 = v186;
  v187 = sub_1000038CC();
  v188 = type metadata accessor for ConditionDetailChartDataInput(v187);
  sub_1000037C4();
  v2259 = v189;
  __chkstk_darwin(v190);
  sub_10000FBD0();
  v2060 = v191;
  sub_1000E1390();
  __chkstk_darwin(v192);
  sub_10000E70C();
  v2080 = v193;
  sub_1000E1390();
  __chkstk_darwin(v194);
  sub_10000E70C();
  v2166 = v195;
  sub_1000E1390();
  __chkstk_darwin(v196);
  sub_10000E70C();
  v2221 = v197;
  v2260 = v198;
  __chkstk_darwin(v199);
  sub_10000E70C();
  v2199 = v200;
  sub_1000038CC();
  v2311 = type metadata accessor for ChartPeakMarkStyle();
  sub_1000037C4();
  v2293 = v201;
  __chkstk_darwin(v202);
  sub_100003848();
  v2096 = v203;
  sub_10000386C();
  __chkstk_darwin(v204);
  sub_100003878();
  v2072 = v205;
  sub_10000386C();
  __chkstk_darwin(v206);
  sub_100003878();
  v2130 = v207;
  sub_10000386C();
  __chkstk_darwin(v208);
  sub_100003878();
  v2113 = v209;
  sub_10000386C();
  __chkstk_darwin(v210);
  sub_100003878();
  v2184 = v211;
  sub_10000386C();
  __chkstk_darwin(v212);
  sub_100003878();
  v2283 = v213;
  sub_10000386C();
  __chkstk_darwin(v214);
  sub_100003878();
  v2247 = v215;
  sub_10000386C();
  __chkstk_darwin(v216);
  sub_10000E70C();
  v2204 = v217;
  sub_1000038CC();
  v218 = type metadata accessor for ChartDateStep();
  v219 = sub_100003810(v218);
  __chkstk_darwin(v219);
  sub_100003848();
  v2095 = v220;
  sub_10000386C();
  __chkstk_darwin(v221);
  sub_100003878();
  v2097 = v222;
  sub_10000386C();
  __chkstk_darwin(v223);
  sub_100003878();
  v2129 = v224;
  sub_10000386C();
  __chkstk_darwin(v225);
  sub_100003878();
  v2131 = v226;
  sub_10000386C();
  __chkstk_darwin(v227);
  sub_100003878();
  v2216 = v228;
  sub_10000386C();
  __chkstk_darwin(v229);
  sub_100003878();
  v2211 = v230;
  sub_10000386C();
  __chkstk_darwin(v231);
  sub_100003878();
  v2282 = v232;
  sub_10000386C();
  __chkstk_darwin(v233);
  sub_100003878();
  v2284 = v234;
  sub_10000386C();
  __chkstk_darwin(v235);
  sub_10000E70C();
  v2178 = v236;
  sub_1000038CC();
  v2318 = type metadata accessor for ChartKind();
  sub_1000037C4();
  v2307 = v237;
  __chkstk_darwin(v238);
  sub_100003848();
  v2094 = v239;
  sub_10000386C();
  __chkstk_darwin(v240);
  sub_100003878();
  v2104 = v241;
  sub_10000386C();
  __chkstk_darwin(v242);
  sub_100003878();
  v2128 = v243;
  sub_10000386C();
  __chkstk_darwin(v244);
  sub_100003878();
  v2136 = v245;
  sub_10000386C();
  __chkstk_darwin(v246);
  sub_100003878();
  v2140 = v247;
  sub_10000386C();
  __chkstk_darwin(v248);
  sub_100003878();
  v2227 = v249;
  sub_10000386C();
  __chkstk_darwin(v250);
  sub_100003878();
  v2210 = v251;
  sub_10000386C();
  __chkstk_darwin(v252);
  sub_100003878();
  v2281 = v253;
  sub_10000386C();
  __chkstk_darwin(v254);
  sub_100003878();
  v2288 = v255;
  sub_10000386C();
  __chkstk_darwin(v256);
  sub_10000E70C();
  v2176 = v257;
  v258 = sub_10022C350(&qword_100CAC3E0);
  sub_100003810(v258);
  sub_100003828();
  __chkstk_darwin(v259);
  sub_1000039BC();
  v2243 = v260;
  sub_1000038CC();
  v2245 = type metadata accessor for ChartLineColor();
  sub_1000037C4();
  v2241 = v261;
  __chkstk_darwin(v262);
  sub_1000038E4();
  v2242 = v263;
  sub_1000038CC();
  v2294 = type metadata accessor for ChartLineStyle();
  sub_1000037C4();
  v2295 = v264;
  __chkstk_darwin(v265);
  sub_100003848();
  v2110 = v266;
  sub_10000386C();
  __chkstk_darwin(v267);
  sub_100003878();
  v2077 = v268;
  sub_10000386C();
  __chkstk_darwin(v269);
  sub_100003878();
  v2106 = v270;
  sub_10000386C();
  __chkstk_darwin(v271);
  sub_100003878();
  v2118 = v272;
  sub_10000386C();
  __chkstk_darwin(v273);
  sub_100003878();
  v2139 = v274;
  sub_10000386C();
  __chkstk_darwin(v275);
  sub_100003878();
  v2226 = v276;
  sub_10000386C();
  __chkstk_darwin(v277);
  sub_100003878();
  v2257 = v278;
  sub_10000386C();
  __chkstk_darwin(v279);
  sub_100003878();
  v2151 = v280;
  sub_10000386C();
  __chkstk_darwin(v281);
  sub_100003878();
  v2152 = v282;
  sub_10000386C();
  __chkstk_darwin(v283);
  sub_10000E70C();
  v2163 = v284;
  sub_1000038CC();
  v285 = type metadata accessor for TemperatureScaleConfiguration.Gradient();
  v286 = sub_100003810(v285);
  __chkstk_darwin(v286);
  sub_1000038E4();
  v2156 = v287;
  sub_1000038CC();
  v2306 = type metadata accessor for DetailChartGradientModel();
  sub_1000037C4();
  v2302 = v288;
  __chkstk_darwin(v289);
  sub_100003848();
  v2109 = v290;
  sub_10000386C();
  __chkstk_darwin(v291);
  sub_100003878();
  v2105 = v292;
  sub_10000386C();
  __chkstk_darwin(v293);
  sub_100003878();
  v2117 = v294;
  sub_10000386C();
  __chkstk_darwin(v295);
  sub_100003878();
  v2142 = v296;
  sub_10000386C();
  __chkstk_darwin(v297);
  sub_100003878();
  v2225 = v298;
  sub_10000386C();
  __chkstk_darwin(v299);
  sub_100003878();
  v2183 = v300;
  sub_10000386C();
  __chkstk_darwin(v301);
  sub_100003878();
  v2256 = v302;
  sub_10000386C();
  __chkstk_darwin(v303);
  sub_100003878();
  v2144 = v304;
  sub_10000386C();
  __chkstk_darwin(v305);
  sub_100003878();
  v2149 = v306;
  sub_10000386C();
  __chkstk_darwin(v307);
  sub_100003878();
  v2146 = v308;
  sub_10000386C();
  __chkstk_darwin(v309);
  sub_10000E70C();
  v2264 = v310;
  v311 = sub_1000038CC();
  v2160 = type metadata accessor for DetailChartViewModelFactory.PeakMarkerRequestContext(v311);
  sub_1000037E8();
  __chkstk_darwin(v312);
  sub_100003848();
  v2108 = v313;
  sub_10000386C();
  __chkstk_darwin(v314);
  sub_100003878();
  v2103 = v315;
  sub_10000386C();
  __chkstk_darwin(v316);
  sub_100003878();
  v2141 = v317;
  sub_10000386C();
  __chkstk_darwin(v318);
  sub_100003878();
  v2143 = v319;
  sub_10000386C();
  __chkstk_darwin(v320);
  sub_10000E70C();
  v2173 = v321;
  sub_1000038CC();
  v2198 = type metadata accessor for FloatingPointRoundingRule();
  sub_1000037C4();
  v2197 = v322;
  __chkstk_darwin(v323);
  sub_1000038E4();
  v2196 = v324;
  sub_1000038CC();
  v2155 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v2154 = v325;
  __chkstk_darwin(v326);
  sub_1000038E4();
  v2153 = v327;
  sub_1000038CC();
  v2148 = type metadata accessor for TemperatureScaleConfiguration();
  sub_1000037C4();
  v2147 = v328;
  __chkstk_darwin(v329);
  sub_100003848();
  v2150 = v330;
  sub_10000386C();
  __chkstk_darwin(v331);
  sub_10000E70C();
  v2174 = v332;
  sub_1000038CC();
  v2292 = type metadata accessor for DetailChartCondition();
  sub_1000037C4();
  v2305 = v333;
  __chkstk_darwin(v334);
  sub_100003848();
  v2266 = v335;
  sub_10000386C();
  __chkstk_darwin(v336);
  sub_10000E70C();
  v2265 = v337;
  sub_1000038CC();
  v2322 = type metadata accessor for ChartDarkeningScrim();
  sub_1000037C4();
  v2308 = v338;
  __chkstk_darwin(v339);
  sub_100003848();
  v2092 = v340;
  sub_10000386C();
  __chkstk_darwin(v341);
  sub_100003878();
  v2093 = v342;
  sub_10000386C();
  __chkstk_darwin(v343);
  sub_100003878();
  v2126 = v344;
  sub_10000386C();
  __chkstk_darwin(v345);
  sub_100003878();
  v2127 = v346;
  sub_10000386C();
  __chkstk_darwin(v347);
  sub_100003878();
  v2215 = v348;
  sub_10000386C();
  __chkstk_darwin(v349);
  sub_100003878();
  v2209 = v350;
  sub_10000386C();
  __chkstk_darwin(v351);
  sub_100003878();
  v2279 = v352;
  sub_10000386C();
  __chkstk_darwin(v353);
  sub_100003878();
  v2280 = v354;
  sub_10000386C();
  __chkstk_darwin(v355);
  sub_100003878();
  v2237 = v356;
  sub_10000386C();
  __chkstk_darwin(v357);
  sub_10000E70C();
  v2319 = v358;
  sub_1000038CC();
  v2298 = type metadata accessor for ChartLineStrokeStyle();
  sub_1000037C4();
  v2297 = v359;
  __chkstk_darwin(v360);
  sub_100003848();
  v2086 = v361;
  sub_10000386C();
  __chkstk_darwin(v362);
  sub_100003878();
  v2244 = v363;
  sub_10000386C();
  __chkstk_darwin(v364);
  v366 = &v2379._object - v365;
  v2290 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v2291 = v367;
  __chkstk_darwin(v368);
  sub_1000038E4();
  v2232 = v369;
  sub_1000038CC();
  v2270 = type metadata accessor for DetailChartDataElement.ValueLabel();
  sub_1000037C4();
  v2267 = v370;
  __chkstk_darwin(v371);
  sub_1000038E4();
  v2233 = v372;
  sub_1000038CC();
  v2317 = type metadata accessor for ChartViewModelInterpolationMode();
  sub_1000037C4();
  v2296 = v373;
  __chkstk_darwin(v374);
  sub_100003848();
  v2071 = v375;
  sub_10000386C();
  __chkstk_darwin(v376);
  sub_100003878();
  v2091 = v377;
  sub_10000386C();
  __chkstk_darwin(v378);
  sub_100003878();
  v2112 = v379;
  sub_10000386C();
  __chkstk_darwin(v380);
  sub_100003878();
  v2125 = v381;
  sub_10000386C();
  __chkstk_darwin(v382);
  sub_100003878();
  v2182 = v383;
  sub_10000386C();
  __chkstk_darwin(v384);
  sub_100003878();
  v2246 = v385;
  sub_10000386C();
  __chkstk_darwin(v386);
  sub_100003878();
  v2278 = v387;
  sub_10000386C();
  __chkstk_darwin(v388);
  sub_10000E70C();
  v2258 = v389;
  v390 = sub_10022C350(&qword_100CAC3E8);
  sub_100003810(v390);
  sub_100003828();
  __chkstk_darwin(v391);
  sub_1000039BC();
  countAndFlagsBits = v392;
  v393 = sub_10022C350(&qword_100CAB930);
  v394 = sub_100003810(v393);
  __chkstk_darwin(v394);
  sub_100003848();
  v2050 = v395;
  sub_10000386C();
  __chkstk_darwin(v396);
  sub_100003878();
  v2066 = v397;
  sub_10000386C();
  __chkstk_darwin(v398);
  sub_100003878();
  v2065 = v399;
  sub_10000386C();
  __chkstk_darwin(v400);
  sub_100003878();
  v2062 = v401;
  sub_10000386C();
  __chkstk_darwin(v402);
  sub_100003878();
  v2059 = v403;
  sub_10000386C();
  __chkstk_darwin(v404);
  sub_100003878();
  v2089 = v405;
  sub_10000386C();
  __chkstk_darwin(v406);
  sub_100003878();
  v2090 = v407;
  sub_10000386C();
  __chkstk_darwin(v408);
  sub_100003878();
  v2079 = v409;
  sub_10000386C();
  __chkstk_darwin(v410);
  sub_100003878();
  v2078 = v411;
  sub_10000386C();
  __chkstk_darwin(v412);
  sub_100003878();
  v2123 = v413;
  sub_10000386C();
  __chkstk_darwin(v414);
  sub_100003878();
  v2124 = v415;
  sub_10000386C();
  __chkstk_darwin(v416);
  sub_100003878();
  v2214 = v417;
  sub_10000386C();
  __chkstk_darwin(v418);
  sub_100003878();
  v2165 = v419;
  sub_10000386C();
  __chkstk_darwin(v420);
  sub_100003878();
  v2164 = v421;
  sub_10000386C();
  __chkstk_darwin(v422);
  sub_100003878();
  v2208 = v423;
  sub_10000386C();
  __chkstk_darwin(v424);
  sub_100003878();
  v2217 = v425;
  sub_10000386C();
  __chkstk_darwin(v426);
  sub_100003878();
  v2220 = v427;
  sub_10000386C();
  __chkstk_darwin(v428);
  sub_100003878();
  v2276 = v429;
  sub_10000386C();
  __chkstk_darwin(v430);
  sub_100003878();
  v2277 = v431;
  sub_10000386C();
  __chkstk_darwin(v432);
  sub_100003878();
  v2177 = v433;
  sub_10000386C();
  __chkstk_darwin(v434);
  v436 = &v2379._object - v435;
  v2321 = type metadata accessor for DetailChartExtrema();
  sub_1000037C4();
  v2301 = v437;
  __chkstk_darwin(v438);
  sub_100003848();
  v2088 = v439;
  sub_10000386C();
  __chkstk_darwin(v440);
  sub_100003878();
  v2102 = v441;
  sub_10000386C();
  __chkstk_darwin(v442);
  sub_100003878();
  v2122 = v443;
  sub_10000386C();
  __chkstk_darwin(v444);
  sub_100003878();
  v2135 = v445;
  sub_10000386C();
  __chkstk_darwin(v446);
  sub_100003878();
  v2138 = v447;
  sub_10000386C();
  __chkstk_darwin(v448);
  sub_100003878();
  v2224 = v449;
  sub_10000386C();
  __chkstk_darwin(v450);
  sub_100003878();
  v2207 = v451;
  sub_10000386C();
  __chkstk_darwin(v452);
  sub_100003878();
  v2275 = v453;
  sub_10000386C();
  __chkstk_darwin(v454);
  sub_100003878();
  v2287 = v455;
  sub_10000386C();
  __chkstk_darwin(v456);
  sub_100003878();
  v2175 = v457;
  sub_10000386C();
  __chkstk_darwin(v458);
  v460 = &v2379._object - v459;
  v2263 = type metadata accessor for Calendar();
  sub_1000037C4();
  v2262 = v461;
  __chkstk_darwin(v462);
  sub_100003848();
  v2145 = v463;
  sub_10000386C();
  __chkstk_darwin(v464);
  v466 = &v2379._object - v465;
  v2323 = type metadata accessor for Date();
  sub_1000037C4();
  v2316 = v467;
  __chkstk_darwin(v468);
  sub_100003848();
  v2084 = v469;
  sub_10000386C();
  __chkstk_darwin(v470);
  sub_100003878();
  v2051 = v471;
  sub_10000386C();
  __chkstk_darwin(v472);
  sub_100003878();
  v2070 = v473;
  sub_10000386C();
  __chkstk_darwin(v474);
  sub_100003878();
  v2107 = v475;
  sub_10000386C();
  __chkstk_darwin(v476);
  sub_100003878();
  v2119 = v477;
  sub_10000386C();
  __chkstk_darwin(v478);
  sub_100003878();
  v2076 = v479;
  sub_10000386C();
  __chkstk_darwin(v480);
  sub_100003878();
  v2100 = v481;
  sub_10000386C();
  __chkstk_darwin(v482);
  sub_100003878();
  v2087 = v483;
  sub_10000386C();
  __chkstk_darwin(v484);
  sub_100003878();
  v2101 = v485;
  sub_10000386C();
  __chkstk_darwin(v486);
  sub_100003878();
  v2111 = v487;
  sub_10000386C();
  __chkstk_darwin(v488);
  sub_100003878();
  v2120 = v489;
  sub_10000386C();
  __chkstk_darwin(v490);
  sub_100003878();
  v2121 = v491;
  sub_10000386C();
  __chkstk_darwin(v492);
  sub_100003878();
  v2134 = v493;
  sub_10000386C();
  __chkstk_darwin(v494);
  sub_100003878();
  v2137 = v495;
  sub_10000386C();
  __chkstk_darwin(v496);
  sub_100003878();
  v2223 = v497;
  sub_10000386C();
  __chkstk_darwin(v498);
  sub_100003878();
  v2202 = v499;
  sub_10000386C();
  __chkstk_darwin(v500);
  sub_100003878();
  v2205 = v501;
  sub_10000386C();
  __chkstk_darwin(v502);
  sub_100003878();
  v2206 = v503;
  sub_10000386C();
  __chkstk_darwin(v504);
  sub_100003878();
  v2240 = v505;
  sub_10000386C();
  __chkstk_darwin(v506);
  sub_100003878();
  v2273 = v507;
  sub_10000386C();
  __chkstk_darwin(v508);
  sub_100003878();
  v2274 = v509;
  sub_10000386C();
  __chkstk_darwin(v510);
  sub_100003878();
  v2286 = v511;
  sub_10000386C();
  __chkstk_darwin(v512);
  sub_100003878();
  v2234 = v513;
  sub_10000386C();
  __chkstk_darwin(v514);
  sub_100003878();
  v2238 = v515;
  sub_10000386C();
  __chkstk_darwin(v516);
  v518 = *(v517 + 16);
  v2289 = &v2379._object - v519;
  v2315 = (v517 + 16);
  v2314 = v518;
  v518();
  v2272 = v188[10];
  static Calendar.currentCalendar(with:)();
  v2360 = 0;
  v520 = 1;
  v2361 = 1;
  v2358 = 0;
  v2359 = 1;
  v2356 = 0;
  v2357 = 1;
  v2354 = 0;
  v2355 = 1;
  v2352 = 0;
  v2353 = 1;
  v2350 = 0;
  v2351 = 1;
  v521 = *(a1 + v188[11]);
  v2255 = v466;
  v2335 = v466;
  v2235 = v12;
  v2336 = v12;
  v2337 = a1;
  v2299 = a4;
  v2338 = a4;
  v2339 = a9;
  v2340 = a10;
  v2341 = v2333;
  v2342 = &v2360;
  v2343 = &v2358;
  v2344 = &v2356;
  v2345 = &v2354;
  v2346 = &v2352;
  v2347 = &v2350;
  v2193 = v521;
  sub_1008EED38();
  v523 = v522;
  v2157 = 0;
  LOBYTE(v2032) = v2351;
  v2376._object = v2350;
  LOBYTE(v2031) = v2353;
  v2030 = v2352;
  v2300 = v460;
  DetailChartExtrema.init(minValue:maxValue:minSecondValue:maxSecondValue:minThirdValue:maxThirdValue:)();
  v2320 = v188;
  v524 = *(a1 + v188[9]);
  v2313 = a1;
  v2333 = v523;
  v2239 = v524;
  v2310 = v366;
  v2309 = v436;
  if (v524 == 1)
  {
    if (v2304)
    {
      v525 = v2235[11];
      v2304 = sub_1000161C0(v2235 + 7, v2235[10]);
      v526 = v2320;
      v527 = v2313;
      (*(v2296 + 16))(v2258, v2313 + *(v2320 + 56), v2317);
      v528 = countAndFlagsBits;
      a1 = v527;
      MidpointInterpolator.InterpolationMode.init(_:)();
      v2376._object = v525;
      v523 = v2333;
      dispatch thunk of CurrentMarkerValueCalculatorType.value(for:hourlyWeather:currentWeather:dayWeather:units:timeZone:maxRange:interpolationMode:)();
      v11 = v529;
      sub_1000180EC(v528, &qword_100CAC3E8);
    }

    else
    {
      v11 = *&object;
      a1 = v2313;
      v526 = v2320;
    }

    v530 = v2270;
    v531 = v2267;
    sub_10011C13C(*(v526 + 24));
    v2304 = Double.chartValueAccessibilityDescription(for:units:)();
    v2270 = v532;
    v533 = v2323;
    sub_100087D78();
    v534();
    Double.clamped(to:)();
    a9 = v535;
    v536 = v2233;
    *v2233 = 0;
    v536[1] = 0xE000000000000000;
    (v531)[13](v536, enum case for DetailChartDataElement.ValueLabel.text(_:), v530);
    CurrentWeather.date.getter();
    static TimeZone.current.getter();
    Date.formattedHours(timeZone:forAccessibility:)();
    v460 = v537;
    v538 = sub_1000D3D24();
    v539(v538, v2290);
    v540 = sub_1000B7B80();
    v541(v540, v533);
    v2376._object = 0;
    v2032 = 0;
    v2031 = v2270;
    v2030 = v2304;
    v542 = v2309;
    DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)();
    v520 = 0;
    v366 = v2310;
    v524 = v2239;
    v436 = v542;
  }

  sub_10001B350(v436, v520, 1, v2334);
  sub_100302DAC(a1, v366);
  v2348 = 0;
  sub_1003071A0(&qword_100CAC3F0, &type metadata accessor for ChartDarkeningScrim);
  dispatch thunk of OptionSet.init(rawValue:)();
  if (!v524)
  {
    static ChartDarkeningScrim.dimmingEffect.getter();
    sub_1008B52C0();
    v543 = sub_1000B7B80();
    v544(v543, v2322);
  }

  sub_100040CA8();
  v2267 = objc_opt_self();
  v545 = [v2267 mainBundle];
  v2376._object = v460;
  sub_10003C338();
  v546._countAndFlagsBits = 1701669204;
  v546._object = 0xE400000000000000;
  v550 = NSLocalizedString(_:tableName:bundle:value:comment:)(v547, v548, v549, v546, v2362);

  v551 = v2305;
  v553 = v2305 + 16;
  v552 = *(v2305 + 2);
  v2304 = *(v2320 + 24);
  v554 = a1 + v2304;
  v555 = v2265;
  v556 = v2292;
  v2270 = v552;
  (v552)(v2265, v554, v2292);
  v557 = (*(v551 + 88))(v555, v556);
  countAndFlagsBits = v550._countAndFlagsBits;
  object = v550._object;
  if (v557 != enum case for DetailChartCondition.humidity(_:))
  {
    v602 = v557;
    v2158 = v553;
    if (v557 == enum case for DetailChartCondition.pressure(_:))
    {
      v566 = sub_1003049D0();
      sub_10022C350(&qword_100CAC3F8);
      v604 = swift_allocObject();
      v2330 = xmmword_100A2D320;
      *(v604 + 16) = xmmword_100A2D320;
      static Color.purple.getter();
      Color.opacity(_:)();
      sub_100030240();

      v605 = Gradient.Stop.init(color:location:)();
      sub_1000B90CC(v605, v606);
      static Color.purple.getter();
      *(v604 + 48) = Gradient.Stop.init(color:location:)();
      *(v604 + 56) = v607;
      v2329 = Gradient.init(stops:)();
      type metadata accessor for PressureFormatter();
      v608 = v2189;
      static PressureFormatter.minPressure.getter();
      v609 = ConditionUnits.pressure.getter();
      v610 = v2190;
      v611 = v2192;
      Measurement<>.converted(to:)();

      v612 = *(v2191 + 8);
      v612(v608, v611);
      Measurement.value.getter();
      v612(v610, v611);
      static PressureFormatter.maxPressure.getter();
      v613 = ConditionUnits.pressure.getter();
      Measurement<>.converted(to:)();

      v612(v608, v611);
      Measurement.value.getter();
      v612(v610, v611);
      v614 = v2225;
      sub_100309F94();
      DetailChartGradientModel.init(gradient:startValue:endValue:)();
      sub_1000C8BB0();
      sub_100037FA8();
      v615();
      if (qword_100CA2198 == -1)
      {
        goto LABEL_21;
      }

      goto LABEL_603;
    }

    v601 = &off_100A2C000;
    if (v557 == enum case for DetailChartCondition.precipitationTotal(_:))
    {

      sub_100304600(1, v523);
      sub_1000370D0();
      v629 = v628;
      v631 = v630;
      v2331 = sub_10030942C(v632, v633, v628, v630);
      if (!v2331)
      {
        sub_100307608(v551, v550._object, v629, v631, sub_1006A067C, &type metadata accessor for DetailChartDataElement);
        v2331 = v634;
      }

      swift_unknownObjectRelease();
      v635 = v2323;
      sub_10022C350(&qword_100CA47E8);
      v636 = swift_allocObject();
      *(v636 + 16) = xmmword_100A2C3F0;
      *(v636 + 32) = static Color.cyan.getter();
      Gradient.init(colors:)();
      v637 = v2183;
      DetailChartGradientModel.init(gradient:startValue:endValue:)();
      v638 = v2267;
      v639 = [v2267 mainBundle];
      v2376._object = 0x8000000100ABF980;
      sub_1000080F4();
      v644 = NSLocalizedString(_:tableName:bundle:value:comment:)(v640, v641, v642, v643, v2363);
      v2295 = v644._countAndFlagsBits;
      v2294 = v644._object;

      sub_100040CA8();
      v645 = [v638 mainBundle];
      v2376._object = v631;
      sub_10003C338();
      v650 = NSLocalizedString(_:tableName:bundle:value:comment:)(v646, v647, v648, v649, v2364);
      v556 = v650._countAndFlagsBits;
      v651 = v650._object;

      sub_1000B0E58();
      sub_1000236D4();
      sub_100088370();
      v652();
      *&v2330 = DetailChartCondition.id.getter();
      v2329 = v653;
      v654 = sub_10000E8F4();
      v655(v654, "itation intensity detail charts");
      v656 = v2210;
      (*(v2302 + 16))(v2210, v637, v2306);
      sub_1000E1710();
      v657(v656);
      sub_1000AF510();
      sub_100087D78();
      v658();
      sub_1000B0C44();
      sub_100042204();
      v2328 = v659;
      *&v2327 = v660;
      v660();
      sub_10022C350(&qword_100CAC408);
      *v2211 = 6;
      sub_100003934();
      sub_10001B350(v661, v662, v663, v635);
      sub_100051BBC();
      sub_1000C8FD0();
      sub_1000A404C();
      v664();
      if (qword_100CA2198 == -1)
      {
        goto LABEL_27;
      }

      goto LABEL_619;
    }

    if (v557 != enum case for DetailChartCondition.temperature(_:))
    {
      if (v557 == enum case for DetailChartCondition.temperatureFeelsLike(_:))
      {
        sub_1000161C0(v2235 + 2, v2235[5]);
        v881 = v2153;
        dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
        AppConfiguration.temperatureScale.getter();
        (*(v2154 + 8))(v881, v2155);
        *&v882 = COERCE_DOUBLE(DetailChartExtrema.maxValue.getter());
        if (v883)
        {
          Array<A>.maxValue.getter();
          v885 = v884;
        }

        else
        {
          v885 = *&v882;
        }

        v1151 = v2143;
        v1152 = v2239;
        *&v1153 = COERCE_DOUBLE(DetailChartExtrema.maxSecondValue.getter());
        if (v1154)
        {
          Array<A>.maxSecondValue.getter();
        }

        else
        {
          v1155 = *&v1153;
        }

        if (v885 > v1155)
        {
          v1196 = v885;
        }

        else
        {
          v1196 = v1155;
        }

        *&v1197 = COERCE_DOUBLE(DetailChartExtrema.minValue.getter());
        if (v1198)
        {
          Array<A>.minValue.getter();
          v1200 = v1199;
        }

        else
        {
          v1200 = *&v1197;
        }

        *&v1201 = COERCE_DOUBLE(DetailChartExtrema.minSecondValue.getter());
        if (v1202)
        {
          Array<A>.minSecondValue.getter();
        }

        else
        {
          v1203 = *&v1201;
        }

        LODWORD(v2334) = v1152 == 1;
        if (v1203 >= v1200)
        {
          v1204 = v1200;
        }

        else
        {
          v1204 = v1203;
        }

        v566 = sub_100302EA8(v1196, v1204);
        v1205 = v2197;
        v1206 = *(v2197 + 104);
        v1207 = v2196;
        v1208 = v2198;
        v1206(v2196, enum case for FloatingPointRoundingRule.down(_:), v2198);
        Double.nearestMultiple(of:roundingRule:)();
        a9 = v1209;
        v1210 = *(v1205 + 8);
        v1210(v1207, v1208);
        v1206(v1207, enum case for FloatingPointRoundingRule.up(_:), v1208);
        Double.nearestMultiple(of:roundingRule:)();
        v11 = v1211;
        v1210(v1207, v1208);
        v1212 = v2299;
        v1213 = ConditionUnits.temperature.getter();
        TemperatureScaleConfiguration.gradientValueRange(for:)();

        sub_100088370();
        v1214();
        v1215 = v2160;
        sub_100095588();
        sub_1000453D4();
        v2328 = v1217;
        *&v2327 = v1218;
        v1218(v1151 + v1216, v1212, v2269);
        *(v1151 + v1215[5]) = v2334;
        *(v1151 + v1215[8]) = 1;
        *(v1151 + v1215[9]) = 1;
        *(v1151 + v1215[10]) = 0;
        TemperatureScaleConfiguration.gradient.getter();
        Gradient.init(_:)();
        v1083 = v2149;
        DetailChartGradientModel.init(gradient:startValue:endValue:)();
        v1070 = v1151;
        sub_100037FA8();
        v2332 = v1219;
        v2329 = v1220;
        v1219();
        if (qword_100CA2198 != -1)
        {
          goto LABEL_642;
        }

        goto LABEL_270;
      }

      if (v557 == enum case for DetailChartCondition.uvIndex(_:))
      {
        *&v1027 = COERCE_DOUBLE(DetailChartExtrema.maxValue.getter());
        if (v1028)
        {
          Array<A>.maxValue.getter();
        }

        else
        {
          v1029 = *&v1027;
        }

        v556 = v2323;
        v1324 = v2310;
        v651 = v2313;
        v1325 = v2239;
        if (v1029 <= 9.0)
        {
          v566 = 11.0;
        }

        else
        {
          v566 = v1029 + 2.0;
        }

        sub_10022C350(&qword_100CAC438);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100A3B030;
        *(inited + 32) = 0;
        *(inited + 40) = static Color.green.getter();
        *(inited + 48) = 1;
        *(inited + 56) = static Color.yellow.getter();
        *(inited + 64) = 2;
        *(inited + 72) = static Color.orange.getter();
        *(inited + 80) = 3;
        *(inited + 88) = static Color.pink.getter();
        *(inited + 96) = 4;
        *(inited + 104) = static Color.purple.getter();
        sub_10030973C();
        v1327 = Dictionary.init(dictionaryLiteral:)();
        v1328 = static UVIndex.ExposureCategory.allCases.getter();
        v1329 = sub_1002789B0(v1328);
        if (v1329)
        {
          v1330 = v1329;
          if (v1329 < 1)
          {
            goto LABEL_649;
          }

          v1331 = _swiftEmptyArrayStorage;
          v1332 = 32;
          do
          {
            if (*(v1327 + 16))
            {
              sub_1002381C8(*(v1328 + v1332));
              if (v1333)
              {

                UVIndex.ExposureCategory.rangeValue.getter();
                v1334 = Gradient.Stop.init(color:location:)();
                v1336 = v1335;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_10069E7A0();
                  v1331 = v1339;
                }

                v1337 = v1331[2];
                if (v1337 >= v1331[3] >> 1)
                {
                  sub_10069E7A0();
                  v1331 = v1340;
                }

                v1331[2] = v1337 + 1;
                v1338 = &v1331[2 * v1337];
                v1338[4] = v1334;
                v1338[5] = v1336;
                v556 = v2323;
                v1324 = v2310;
              }

              v1325 = v2239;
            }

            ++v1332;
            --v1330;
          }

          while (v1330);
        }

        v1346 = v1325 == 1;
        v1347 = v2141;
        v1239 = v2292;
        sub_100088370();
        v1348();
        v1349 = v2160;
        sub_100095588();
        sub_1000453D4();
        sub_10030A04C();
        *&v2327 = v1350;
        v2326 = v1351;
        v1351();
        *(v1347 + v1349[5]) = v1346;
        *(v1347 + v1349[8]) = 1;
        *(v1347 + v1349[9]) = 0;
        *(v1347 + v1349[10]) = 0;
        Gradient.init(stops:)();
        v1254 = v2142;
        DetailChartGradientModel.init(gradient:startValue:endValue:)();
        sub_1000C8BB0();
        v1352(v2244, v1324, v2298);
        if (qword_100CA2198 != -1)
        {
          goto LABEL_645;
        }

        goto LABEL_298;
      }

      if (v557 == enum case for DetailChartCondition.visibility(_:))
      {
        v1156 = ConditionUnits.visibility.getter();
        v1157 = NSUnitLength.isMetricVisibility.getter();

        if (v1157)
        {
          v566 = 45.0;
        }

        else
        {
          v566 = 30.0;
        }

        sub_10022C350(&qword_100CAC3F8);
        v1158 = swift_allocObject();
        *(v1158 + 16) = xmmword_100A3B020;
        static Color.white.getter();
        Color.opacity(_:)();
        sub_100030240();

        v1159 = Gradient.Stop.init(color:location:)();
        sub_1000B90CC(v1159, v1160);
        static Color.white.getter();
        Color.opacity(_:)();
        sub_100030240();

        *(v1158 + 48) = Gradient.Stop.init(color:location:)();
        *(v1158 + 56) = v1161;
        static Color.white.getter();
        Color.opacity(_:)();
        sub_100030240();

        *(v1158 + 64) = Gradient.Stop.init(color:location:)();
        *(v1158 + 72) = v1162;
        static Color.white.getter();
        Color.opacity(_:)();
        sub_100030240();

        *(v1158 + 80) = Gradient.Stop.init(color:location:)();
        *(v1158 + 88) = v1163;
        Gradient.init(stops:)();
        v651 = v2117;
        DetailChartGradientModel.init(gradient:startValue:endValue:)();
        sub_1000C8BB0();
        sub_100037FA8();
        v1164();
        if (qword_100CA2198 != -1)
        {
          goto LABEL_650;
        }

        goto LABEL_250;
      }

      if (v557 == enum case for DetailChartCondition.wind(_:))
      {
        v635 = &enum case for FloatingPointRoundingRule.down(_:);
        v556 = &enum case for FloatingPointRoundingRule.up(_:);
        v566 = sub_100304B8C();
        v1341 = ConditionUnits.windSpeed.getter();
        sub_10000C70C(0, &qword_100CAC428);
        v1342 = static NSUnitSpeed.beaufort.getter();
        v1343 = static NSObject.== infix(_:_:)();

        *&v936 = COERCE_DOUBLE(DetailChartExtrema.maxValue.getter());
        if ((v1343 & 1) == 0)
        {
          goto LABEL_390;
        }

        v917 = v2298;
        if (v724)
        {
          Array<A>.maxValue.getter();
          v1345 = v1344;
          goto LABEL_460;
        }

        goto LABEL_459;
      }

      goto LABEL_340;
    }

    sub_1000161C0(v2235 + 2, v2235[5]);
    v692 = v2153;
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    AppConfiguration.temperatureScale.getter();
    (*(v2154 + 8))(v692, v2155);
    *&v693 = COERCE_DOUBLE(DetailChartExtrema.maxValue.getter());
    if (v694)
    {
      Array<A>.maxValue.getter();
      v696 = v695;
    }

    else
    {
      v696 = *&v693;
    }

    v1022 = v2239;
    *&v1023 = COERCE_DOUBLE(DetailChartExtrema.maxSecondValue.getter());
    if (v1024)
    {
      Array<A>.maxSecondValue.getter();
      v1026 = v1025;
    }

    else
    {
      v1026 = *&v1023;
    }

    *&v1030 = COERCE_DOUBLE(DetailChartExtrema.maxThirdValue.getter());
    if (v1031)
    {
      Array<A>.maxThirdValue.getter();
      v1033 = v1032;
    }

    else
    {
      v1033 = *&v1030;
    }

    sub_100302F24(_swiftEmptyArrayStorage, v696, v1026, v1033);
    v1035 = v1034;
    *&v1036 = COERCE_DOUBLE(DetailChartExtrema.minValue.getter());
    if (v1037)
    {
      Array<A>.minValue.getter();
      v1039 = v1038;
    }

    else
    {
      v1039 = *&v1036;
    }

    *&v1040 = COERCE_DOUBLE(DetailChartExtrema.minSecondValue.getter());
    if (v1041)
    {
      Array<A>.minSecondValue.getter();
      v1043 = v1042;
    }

    else
    {
      v1043 = *&v1040;
    }

    *&v1044 = COERCE_DOUBLE(DetailChartExtrema.minThirdValue.getter());
    if (v1045)
    {
      Array<A>.minThirdValue.getter();
      v1047 = v1046;
    }

    else
    {
      v1047 = *&v1044;
    }

    v1048 = v1022 == 1;
    sub_100302F58(_swiftEmptyArrayStorage, v1039, v1043, v1047);
    v566 = sub_100302EA8(v1035, v1049);
    v1050 = v2197;
    v1051 = *(v2197 + 104);
    v1052 = v2196;
    v1053 = v2198;
    v1051(v2196, enum case for FloatingPointRoundingRule.down(_:), v2198);
    Double.nearestMultiple(of:roundingRule:)();
    a9 = v1054;
    v1055 = *(v1050 + 8);
    v1055(v1052, v1053);
    v1051(v1052, enum case for FloatingPointRoundingRule.up(_:), v1053);
    Double.nearestMultiple(of:roundingRule:)();
    v11 = v1056;
    v1055(v1052, v1053);
    v1057 = v2299;
    v1058 = ConditionUnits.temperature.getter();
    TemperatureScaleConfiguration.gradientValueRange(for:)();

    sub_1000176DC();
    v917 = [v2267 mainBundle];
    sub_1001924D0();
    v2376._object = v1055;
    sub_100003CD0();
    v1059._countAndFlagsBits = 0;
    v1059._object = 0xE000000000000000;
    v1062 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1060, v1061, v917, v1059, v2369);
    v2334 = v1062._countAndFlagsBits;
    v2332 = v1062._object;

    v1063 = v2173;
    sub_1000236D4();
    sub_100088370();
    v1064();
    v1065 = v2160;
    sub_100095588();
    sub_1000453D4();
    v2331 = v1067;
    *&v2330 = v1068;
    v1068(v1063 + v1066, v1057, v2269);
    *(v1063 + v1065[5]) = v1048;
    *(v1063 + v1065[8]) = 1;
    *(v1063 + v1065[9]) = 1;
    *(v1063 + v1065[10]) = 0;
    TemperatureScaleConfiguration.gradient.getter();
    Gradient.init(_:)();
    v523 = v2264;
    DetailChartGradientModel.init(gradient:startValue:endValue:)();
    sub_1000C8BB0();
    sub_100037FA8();
    v1069();
    if (qword_100CA2198 != -1)
    {
      goto LABEL_634;
    }

LABEL_237:
    sub_100031C38();
    sub_1004B5EBC();
    v1070 = v2302 + 16;
    v1071 = *(v2302 + 16);
    v1072 = v2242;
    v1073 = v2306;
    (v1071)(v2242, v523, v2306);
    sub_1000D3BE4();
    v1074(v1072);
    v2329 = v1071;
    (v1071)(v2146, v523, v1073);
    sub_100040FF4();
    ChartAreaStyle.init(gradient:opacity:)();
    type metadata accessor for ChartAreaStyle();
    sub_10002FDE8();
    sub_10000E7B0();
    sub_10001B350(v1075, v1076, v1077, v1078);
    v1079 = v2163;
    sub_1001706B4();
    ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
    sub_1000B0E58();
    sub_100088370();
    v1080();
    v1081 = DetailChartCondition.id.getter();
    v1083 = v1082;
    v1084 = sub_10000E8F4();
    v1085(v1084, v917);
    sub_10022C350(&qword_100CAC400);
    sub_100016310();
    v1086 = v2176;
    v1087 = v2294;
    v1088(v2176, v1079, v2294);
    sub_10000E7B0();
    sub_10001B350(v1089, v1090, v1091, v1087);
    sub_100003934();
    sub_10001B350(v1092, v1093, v1094, v1087);
    sub_1000E13B4();
    v1095(v1086);
    sub_1000AF510();
    sub_100071480();
    v1096();
    v1097 = sub_1000A7BB4();
    v1098(v1097);
    v602 = v2333;
    v1099 = sub_1002789B0(v2333);
    v1100 = v1099 - 1;
    if (__OFSUB__(v1099, 1))
    {
      __break(1u);
    }

    else
    {
      *&v2327 = v1081;
      v2328 = v1083;

      sub_100302F8C(1, v1100, 2, v602);
      v2326 = v1101;
      if (a9 <= v11)
      {
        sub_10022C350(&qword_100CAC408);
        sub_10002FDD8();
        v1103 = sub_1000245D4(v1102);
        v1104(v1103, &v2272[v2313], v2290);
        sub_1004B5EE0();
        v1105 = sub_100051DC0();
        v1106(v1105);
        sub_100095588();
        *&v2325 = sub_1003032E8(v2173);
        v1107 = *(sub_10022C350(&qword_100CAC410) + 48);
        v1108 = sub_1004B5F04();
        v1109 = v2204;
        *v2204 = v1108;
        (v2329)(v1109 + v1107, v2264, v2306);
        sub_100040F64();
        v1110(v1109);
        v1111 = v2299;
        v2329 = ConditionUnits.temperature.getter();
        sub_10006A70C();
        v1112 = sub_10019239C();
        v1113(v1112);
        *&v2324 = DetailChartCondition.title.getter();
        v2320 = v1114;
        v1115 = [v2267 mainBundle];
        sub_1001924D0();
        v2376._object = 0x8000000100ABFC20;
        sub_100003CD0();
        v1119 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1116, v1117, v1115, v1118, v2370);
        v2318 = v1119._countAndFlagsBits;

        sub_10001BD24();
        sub_1001D1B40();
        v1120 = v2201;
        v1121 = v2269;
        (v2330)(v2201, v1111, v2269);
        sub_10002C5E4();
        v1124 = v2268;
        v1125 = (v2260 + *(v2268 + 80) + (v1123 & ~v1122)) & ~*(v2268 + 80);
        v850 = sub_100309F58();
        sub_10001E7CC();
        sub_1003096E4();
        (*(v1124 + 32))(v850 + v1125, v1120, v1121);
        sub_10022C350(&qword_100CAC418);
        v1126 = sub_100005508();
        sub_10001B350(v1126, v1127, v1128, v1129);
        sub_100040BDC();
        v1130 = v2203;
        v1131(v2203);
        sub_10030A08C();
        sub_1000314EC();
        v2019 = v2332;
        v2015 = v2334;
        v2011 = v2320;
        v2007 = v2324;
        sub_10030A06C();
        v2000 = v1132;
        v1998 = v2329;
        sub_100044D68();
        sub_100309F94();
        sub_10030A078();
        sub_10060D4A0(v1133, v1134, v1135, v1136, v1137, v1138, v2326, v2178, v1139, v1140, v1141, v1142, v1985, v1986, v1987, v1988, v1989, v1990, v1109, 7, 0, v1998, v2000, *(&v2000 + 1), 0, v2002, v1130, v2007, v2011, v2015, v2019, v2021, v2024, v2027, v1119._object, 0, 0, sub_100309F30, v2376._object);
        sub_1000E59C8();
        v1143(v2163, v2294);
        sub_1000377D4();
        v1144(v2264, v2306);
        sub_1000228B4();
        sub_10030968C(v2173, v1145);
        (*(v2147 + 8))(v2174, v2148);
        goto LABEL_240;
      }
    }

    __break(1u);
LABEL_637:
    __break(1u);
LABEL_638:
    __break(1u);
LABEL_639:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_641:
      __break(1u);
LABEL_642:
      sub_1000080D4();
LABEL_270:
      sub_100031C38();
      sub_1004B5EBC();
      v1221 = v2302 + 16;
      v2334 = *(v2302 + 16);
      v1222 = v2242;
      (v2334)(v2242, v1083, v2306);
      *&v2330 = *(v2241 + 104);
      v1223 = sub_1001ACFE0();
      v1224(v1223);
      v2331 = type metadata accessor for ChartAreaStyle();
      sub_100003934();
      sub_10001B350(v1225, v1226, v1227, v1228);
      sub_1001706B4();
      ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
      v2326 = sub_1003032E8(v1070);
      v1229 = Color.init(hex:)();
      sub_10022C350(&qword_100CA47E8);
      v1230 = swift_allocObject();
      *(v1230 + 16) = xmmword_100A2C3F0;
      *(v1230 + 32) = Color.opacity(_:)();
      Gradient.init(colors:)();
      v1231 = v2144;
      DetailChartGradientModel.init(gradient:startValue:endValue:)();
      sub_100037FA8();
      (v2332)();
      sub_1004B5EBC();
      *v1222 = v1229;
      v1232 = sub_1001ACFE0();
      (v2330)(v1232);
      *&v2330 = v1221;
      (v2334)(v2264, v1231, v2306);
      v2332 = v1229;

      ChartAreaStyle.init(gradient:opacity:)();
      sub_10000E7B0();
      sub_10001B350(v1233, v1234, v1235, v2331);
      sub_1001706B4();
      ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
      v1236 = v2305;
      v1237 = v2266;
      v1238 = v2292;
      (*(v2305 + 13))(v2266, v602, v2292);
      v1239 = v2313;
      sub_10074742C(v2313 + v2304, v1237);
      v1240 = *(v1236 + 1);
      v2305 = (v1236 + 8);
      v1240(v1237, v1238);
      v1241 = [v2267 mainBundle];
      sub_1000FFC34();
      sub_1000080F4();
      v1246 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1242, v1243, v1244, v1245, v2379);
      v2331 = v1246._countAndFlagsBits;
      *&v2325 = v1246._object;
      v1247 = v2323;
      v1248 = v2333;
      v1249 = v2178;
      v1250 = v2270;

      v1251 = sub_1000B0E58();
      (v1250)(v1251);
      *&v2324 = DetailChartCondition.id.getter();
      v2329 = v1252;
      v1240(v1241, v1238);
      v1253 = *(sub_10022C350(&qword_100CAC400) + 48);
      v1254 = *(v2295 + 16);
      v1255 = v2176;
      v556 = v2294;
      v1254(v2176, v2152, v2294);
      sub_10000E7B0();
      sub_10001B350(v1256, v1257, v1258, v556);
      v1254(v1255 + v1253, v2151, v556);
      sub_10000E7B0();
      sub_10001B350(v1259, v1260, v1261, v556);
      sub_1000E13B4();
      v1262(v1255);
      sub_1000AF510();
      sub_100087D78();
      v1263();
      v1264 = sub_1000A7BB4();
      v1265(v1264);
      v1266 = sub_1002789B0(v1248);
      v1267 = v1266 - 1;
      if (__OFSUB__(v1266, 1))
      {
        __break(1u);
      }

      else
      {

        sub_100302F8C(1, v1267, 2, v1248);
        v2318 = v1268;
        if (a9 <= v11)
        {
          sub_10022C350(&qword_100CAC408);
          sub_10002FDD8();
          *v1249 = v1269;
          sub_100003934();
          sub_10001B350(v1270, v1271, v1272, v1247);
          sub_1000C8FD0();
          sub_1000A404C();
          v1273();
          sub_1004B5EE0();
          v1274 = sub_100051DC0();
          v1275(v1274);
          v1276 = v2309;
          sub_100095588();
          v1277 = *(sub_10022C350(&qword_100CAC410) + 48);
          v1278 = sub_1004B5F04();
          v1279 = v2204;
          *v2204 = v1278;
          (v2334)(v1279 + v1277, v2149, v2306);
          sub_100040F64();
          v1280(v1279);
          v1281 = v2299;
          v2334 = ConditionUnits.temperature.getter();
          sub_10006A70C();
          v1282 = sub_10019239C();
          v1283(v1282);
          *&v2330 = DetailChartCondition.title.getter();
          v2320 = v1284;
          sub_10008654C();
          v1285 = [v2267 mainBundle];
          sub_1001924D0();
          v2379._object = v556;
          sub_100003CD0();
          v1289 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1286, v1287, v1285, v1288, v2380);
          v2317 = v1289._countAndFlagsBits;
          v2315 = v1289._object;

          sub_10001BD24();
          sub_1001D1B40();
          v1290 = v2201;
          v1291 = v2269;
          (v2327)(v2201, v1281, v2269);
          sub_10002C5E4();
          v1294 = v2268;
          v1295 = (v2260 + *(v2268 + 80) + (v1293 & ~v1292)) & ~*(v2268 + 80);
          v850 = swift_allocObject();
          sub_10001E7CC();
          sub_1003096E4();
          (*(v1294 + 32))(v850 + v1295, v1290, v1291);
          sub_10022C350(&qword_100CAC418);
          v1296 = sub_100005508();
          sub_10001B350(v1296, v1297, v1298, v1299);
          sub_100040BDC();
          v1300 = v2203;
          v1301(v2203);
          sub_10030A08C();
          v2030 = v2315;
          sub_1000314EC();
          v2025 = v2325;
          v2022 = v2331;
          v2020 = v2320;
          v2016 = v2330;
          sub_10030A06C();
          v2001 = v2334;
          sub_100044D68();
          sub_100309F94();
          sub_10030A078();
          sub_10060D4A0(v1302, v1303, v1304, v1305, v1306, v1307, v2318, v2178, v1308, v1309, v1310, v1311, v1987, v1988, v1989, v1990, v1992, v1995, v1279, 7, 0, v2001, 0, 0, 0, v2005, v1300, v2016, v2020, v2022, v2025, v2027, v2028, v2029, v2030, 0, 0xE000000000000000, sub_100309F30, v2379._object);

          v1312 = *(v2295 + 8);
          v1313 = v2294;
          v1312(v2151, v2294);
          v1314 = *(v2302 + 8);
          v1315 = v2306;
          v1314(v2144, v2306);
          v1312(v2152, v1313);
          v1314(v2149, v1315);
          sub_1000228B4();
          sub_10030968C(v2143, v1316);
          (*(v2147 + 8))(v2150, v2148);
          v1317 = sub_100036C9C();
          v1318(v1317);
          v1319 = sub_1000176C8();
          v1320(v1319);
          v1150 = v1276;
          goto LABEL_273;
        }
      }

      __break(1u);
LABEL_645:
      sub_1000080D4();
LABEL_298:
      sub_100031C38();
      a9 = sub_1004B5EBC();
      v1354 = v2302 + 16;
      v1353 = *(v2302 + 16);
      v1355 = v2242;
      v1356 = v2306;
      v1353(v2242, v1254, v2306);
      sub_1000D3BE4();
      v1357(v1355);
      *&v2325 = v1354;
      *&v2324 = v1353;
      v1353(v2264, v1254, v1356);
      sub_100040FF4();
      ChartAreaStyle.init(gradient:opacity:)();
      type metadata accessor for ChartAreaStyle();
      sub_10002FDE8();
      sub_10000E7B0();
      sub_10001B350(v1358, v1359, v1360, v1361);
      v1362 = v2139;
      sub_1001706B4();
      ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
      v651 = v2313;
      sub_1000B0E58();
      sub_100088370();
      v1363();
      v523 = DetailChartCondition.id.getter();
      v1365 = v1364;
      v1366 = sub_10000E8F4();
      v1367(v1366, v1239);
      sub_10022C350(&qword_100CAC400);
      sub_100016310();
      v1368 = v2140;
      v1369 = v2294;
      v1370(v2140, v1362, v2294);
      sub_10000E7B0();
      sub_10001B350(v1371, v1372, v1373, v1369);
      sub_100003934();
      sub_10001B350(v1374, v1375, v1376, v1369);
      sub_1000E13B4();
      v1377(v1368);
      sub_1000AF510();
      (v2314)(v2137, v651 + v1378, v556);
      sub_1000B0C44();
      sub_100042204();
      v1379();
      v602 = v2333;
      v1380 = sub_1002789B0(v2333);
      v614 = v1380 - 1;
      if (__OFSUB__(v1380, 1))
      {
        break;
      }

      v1381 = sub_1003094F0(1, v614, 2);
      sub_1000EFF14(_swiftEmptyArrayStorage);
      sub_100307230(v1382);
      if (v1381 < 0)
      {
        goto LABEL_647;
      }

      v1383 = v2334;
      *&v2330 = v614;
      v2288 = v1365;
      v2287 = v523;
      if (v1381)
      {
        sub_100011468();
        v2331 = v1384;
        v2329 = v1384 + v602;
        v2328 = v1385 + 16;
        v523 = v1385 + 32;
        v1386 = 1;
        while (v1386 < v614)
        {
          v651 = v1386 + 2;
          if (__OFADD__(v1386, 2))
          {
            v1387 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v1387 = v1386 + 2;
          }

          if (v1386 < 0)
          {
            goto LABEL_601;
          }

          sub_100020E7C();
          if (v687)
          {
            goto LABEL_602;
          }

          v1389 = *(v1388 + 72);
          sub_100088840();
          v1390();
          v1391 = v2349;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10000C978();
            sub_10030A02C();
          }

          v556 = *(v1391 + 16);
          sub_1000BC6B4();
          if (v687)
          {
            sub_1000135B8(v1392);
            sub_1000925F4();
            sub_10030A02C();
          }

          *(v1391 + 16) = v602;
          (*v523)(v1391 + v2331 + v556 * v1389, v2236, v1383);
          v2349 = v1391;
          v1386 = v1387;
          --v1381;
          v1393 = v2332;
          v614 = v2330;
          if (!v1381)
          {
            if (v1387 < v2330)
            {
              goto LABEL_317;
            }

            goto LABEL_367;
          }
        }

LABEL_600:
        __break(1u);
LABEL_601:
        __break(1u);
LABEL_602:
        __break(1u);
LABEL_603:
        sub_1000080D4();
LABEL_21:
        sub_100031C38();
        sub_1004B5EBC();
        v616 = static Color.purple.getter();
        v617 = v2242;
        *v2242 = v616;
        sub_1000D3BE4();
        v618(v617);
        v619 = sub_100309F80();
        v620(v619, v614, v2306);
        sub_100040FF4();
        ChartAreaStyle.init(gradient:opacity:)();
        type metadata accessor for ChartAreaStyle();
        sub_10002FDE8();
        sub_10000E7B0();
        sub_10001B350(v621, v622, v623, v624);
        sub_10022C350(&qword_100CAC430);
        v625 = sub_1000B97CC();
        *(v625 + 16) = v2330;
        *(v625 + 32) = xmmword_100A3B010;
        v626 = v2226;
        sub_1001706B4();
        ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
        DetailChartExtrema.maxValue.getter();
        if (v627)
        {
          Array<A>.maxValue.getter();
        }

        DetailChartExtrema.minValue.getter();
        if (v691)
        {
          Array<A>.minValue.getter();
        }

        v697 = v2197;
        v698 = *(v2197 + 104);
        v699 = v2196;
        v700 = v2198;
        v698(v2196, enum case for FloatingPointRoundingRule.up(_:), v2198);
        Double.nearestMultiple(of:roundingRule:)();
        a9 = v701;
        v703 = *(v697 + 8);
        v702 = v697 + 8;
        v704 = sub_100192210();
        v703(v704);
        v698(v699, enum case for FloatingPointRoundingRule.down(_:), v700);
        Double.nearestMultiple(of:roundingRule:)();
        v11 = v705;
        v706 = sub_100192210();
        v703(v706);
        sub_1000B0E58();
        sub_1000236D4();
        v2270();
        v651 = DetailChartCondition.id.getter();
        v708 = v707;
        v709 = sub_10000E8F4();
        v710(v709, v698);
        sub_10022C350(&qword_100CAC400);
        sub_100016310();
        v711 = v2227;
        v712 = v2294;
        v713(v2227, v626, v2294);
        sub_10000E7B0();
        sub_10001B350(v714, v715, v716, v712);
        v635 = v2188;
        sub_100003934();
        sub_10001B350(v717, v718, v719, v712);
        sub_100051BBC();
        sub_1000E13B4();
        v720(v711);
        sub_1000AF510();
        sub_100071480();
        v721();
        sub_1000B0C44();
        sub_100042204();
        v722();
        v723 = sub_1002789B0(v523);
        v556 = v723 - 1;
        if (__OFSUB__(v723, 1))
        {
          __break(1u);
LABEL_605:
          __break(1u);
LABEL_606:
          v1980 = v2041;
          sub_100277BBC(v702, v2041);
          v1981 = v1980;
          v1972 = v2334;
          (v556)(v1981, v2334);
LABEL_607:
          v1971 = v2332;
LABEL_608:
          v523 = v2041;
          v1982 = v2043;
          v708(v2041, v2043, v1972);
          sub_1002F57C0(v523);
          v1983 = *(v1971 + 8);
          v1983(v1982, v1972);
          v1984 = *(v651 + 8);
          v1649 = v651 + 8;
          v1984(v2047, v711);
          (*(v2046 + 8))(v2048, v2049);
          v1983(v2055, v1972);
          v556 = v2323;
          sub_100309FB4();
          v1658 = v2239;
LABEL_487:
          sub_100304FD4(&v2349);
          v1664 = v2069;
          if (!v1658)
          {
            static ChartDarkeningScrim.hashPatternEffect.getter();
            sub_1008B52C0();
            v1665 = sub_1000B7B80();
            v1666(v1665, v2322);
          }

          sub_100095588();
          v1667 = type metadata accessor for ExtremaResult();
          v1668 = sub_100016298();
          sub_1000038B4(v1668, v1669, v1667);
          if (v1684)
          {
            sub_1000180EC(v1664, &qword_100CAC1B0);
          }

          else
          {
            ExtremaResult.maxDate.getter();
            (*(*(v1667 - 8) + 8))(v1664, v1667);
            sub_100309F74();
            v1670();
            v1672 = v2056;
            v1671 = v2057;
            v1673 = v2058;
            (*(v2057 + 104))(v2056, enum case for Calendar.Component.hour(_:), v2058);
            v1674 = Calendar.isDate(_:equalTo:toGranularity:)();
            (*(v1671 + 8))(v1672, v1673);
            if (v1674)
            {
              sub_10022C350(&qword_100CAC420);
              v1675 = swift_initStackObject();
              *(v1675 + 16) = v2327;
              *(v1675 + 32) = 8;
              v2333 = sub_10022F334(v1675);
              v1676 = sub_1000D3D24();
              v1677(v1676, v556);
              goto LABEL_499;
            }

            v1686 = sub_1000D3D24();
            v1687(v1686, v556);
          }

          v2333 = 7;
LABEL_499:
          v1688 = v2294;
          v1689 = v2313;
          sub_1000B0E58();
          v1690 = v2292;
          sub_100088370();
          v1691();
          *&v2327 = DetailChartCondition.id.getter();
          v2332 = v1692;
          v1693 = sub_10000E8F4();
          v1694(v1693, v1690);
          sub_10022C350(&qword_100CAC400);
          sub_100016310();
          v1695(v523, v1649, v1688);
          sub_10000E7B0();
          sub_10001B350(v1696, v1697, v1698, v1688);
          sub_100003934();
          sub_10001B350(v1699, v1700, v1701, v1688);
          sub_1000E13B4();
          v1702(v523);
          v523 = v2314;
          (v2314)(v2238, &v1689[*(v2320 + 20)], v556);
          v1703 = v2349;
          v1704 = sub_1000A7BB4();
          v1705(v1704);
          sub_10022C350(&qword_100CAC408);
          sub_10002FDD8();
          *v2178 = v1706;
          sub_100003934();
          sub_10001B350(v1707, v1708, v1709, v556);
          sub_1000C8FD0();
          sub_1000A404C();
          v1710();
          v1711 = qword_100CA2198;
          v2334 = v1703;

          if (v1711 != -1)
          {
            goto LABEL_654;
          }

          goto LABEL_500;
        }

        if (v556 >= 2)
        {
          sub_1001711C0();
          v702 = v2332;
          while (1)
          {
            v726 = v725 + 1;
            if (__OFADD__(v725, 1))
            {
              break;
            }

            sub_10003A150();
            if (v727 >= v556)
            {
              goto LABEL_77;
            }
          }

LABEL_389:
          __break(1u);
LABEL_390:
          if (v724)
          {
            Array<A>.maxValue.getter();
          }

          v1630 = v2244;
          DetailChartExtrema.maxSecondValue.getter();
          if (v1634)
          {
            Array<A>.maxSecondValue.getter();
          }

          DetailChartExtrema.minValue.getter();
          if (v1636)
          {
            Array<A>.minValue.getter();
          }

          DetailChartExtrema.minSecondValue.getter();
          if (v1637)
          {
            Array<A>.minSecondValue.getter();
          }

          v1638 = *v635;
          v1639 = v2197;
          v1640 = *(v2197 + 104);
          v1641 = v2196;
          v1642 = v2198;
          v1640(v2196, v1638, v2198);
          Double.nearestMultiple(of:roundingRule:)();
          v1644 = v1643;
          v1645 = *(v1639 + 8);
          v1645(v1641, v1642);
          if (v1644 < 0.0)
          {
            v1646 = 0.0;
          }

          else
          {
            v1646 = v1644;
          }

          v1640(v1641, *v556, v1642);
          Double.nearestMultiple(of:roundingRule:)();
          a9 = v1647;
          v1645(v1641, v1642);
          v917 = v2298;
          goto LABEL_503;
        }

        v726 = 0;
        v702 = v2332;
LABEL_77:
        sub_1000EFF14(_swiftEmptyArrayStorage);
        sub_100307230(v726);
        if (v726 < 0)
        {
          goto LABEL_605;
        }

        v2329 = v556;
        *&v2325 = v708;
        *&v2324 = v651;
        if (v726)
        {
          sub_10006948C();
          *&v2327 = v523 + v728;
          v2326 = (v702 + 16);
          v635 = v702 + 32;
          v729 = 1;
          v730 = v2334;
          do
          {
            if (v729 >= v556)
            {
              __break(1u);
LABEL_387:
              __break(1u);
LABEL_388:
              __break(1u);
              goto LABEL_389;
            }

            v651 = v729 + 2;
            if (__OFADD__(v729, 2))
            {
              v523 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v523 = v729 + 2;
            }

            if (v729 < 0)
            {
              goto LABEL_387;
            }

            sub_100020E7C();
            if (v687)
            {
              goto LABEL_388;
            }

            (*(v702 + 16))(v2331, v2327 + *(v702 + 72) * v731, v730);
            v711 = v2349;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10000C978();
              sub_10030A008();
            }

            v733 = *(v711 + 16);
            v732 = *(v711 + 24);
            if (v733 >= v732 >> 1)
            {
              sub_1000135B8(v732);
              sub_1006A7AB4();
              sub_10030A008();
            }

            *(v711 + 16) = v733 + 1;
            v734 = sub_1000926AC();
            v735(v734, v2331, v730);
            v2349 = v711;
            v729 = v523;
            --v726;
            v702 = v2332;
            v556 = v2329;
          }

          while (v726);
          if (v523 < v2329)
          {
            goto LABEL_145;
          }

LABEL_192:
          if (v11 <= a9)
          {
            v937 = *(sub_10022C350(&qword_100CAC408) + 64);
            v938 = v2216;
            *v2216 = 6;
            v939 = v2180;
            sub_100003934();
            sub_10001B350(v940, v941, v942, v2323);
            sub_100051BBC();
            sub_1000C8FD0();
            v943(v938 + v937, &v2272[v2313], v2290);
            sub_1000522E4();
            v944();
            sub_100095588();
            v945 = v2299;
            v946 = ConditionUnits.pressure.getter();
            LOBYTE(v937) = NSUnitPressure.isMetric.getter();

            if (v937)
            {
              v2334 = 0;
              v2332 = 0;
              LODWORD(v2331) = 128;
            }

            else
            {
              v2334 = ConditionUnits.pressure.getter();
              LODWORD(v2331) = 4;
              v2332 = 1;
            }

            sub_10006A70C();
            v947 = sub_10019239C();
            v948(v947);
            *&v2330 = DetailChartCondition.title.getter();
            v2329 = v949;
            sub_100040CA8();
            v950 = v2267;
            v951 = [v2267 mainBundle];
            v2376._object = v939;
            sub_1000080F4();
            v2367._countAndFlagsBits = 0xD000000000000030;
            v956 = NSLocalizedString(_:tableName:bundle:value:comment:)(v952, v953, v954, v955, v2367);
            v2328 = v956._countAndFlagsBits;
            *&v2327 = v956._object;

            sub_1000176DC();
            v957 = [v950 mainBundle];
            v2376._object = v938;
            sub_1001924D0();
            sub_10003C338();
            v958._object = 0xE800000000000000;
            v962 = NSLocalizedString(_:tableName:bundle:value:comment:)(v959, v960, v961, v958, v2368);
            v2326 = v962._countAndFlagsBits;

            sub_10001BD24();
            sub_1001D1B40();
            v963 = v2268;
            v964 = v2201;
            v965 = v2269;
            (*(v2268 + 16))(v2201, v945, v2269);
            sub_100020634();
            sub_1000B98D8();
            v968 = v967 & ~v966;
            v969 = swift_allocObject();
            sub_10001E7CC();
            sub_1003096E4();
            (*(v963 + 32))(v969 + v968, v964, v965);
            sub_10022C350(&qword_100CAC418);
            v970 = v2200;
            sub_100003934();
            sub_10001B350(v971, v972, v973, v974);
            v975 = sub_1004B5F28();
            v976 = sub_1004B5F04();
            v977 = v2204;
            *v2204 = v976;
            sub_100040F64();
            v978(v977);
            sub_100040BDC();
            v979 = v2203;
            v980(v2203);
            sub_1000314EC();
            v2018 = v2327;
            v2014 = v2328;
            v2010 = v2329;
            v2006 = v2330;
            sub_10030A06C();
            sub_10060D4A0(v2324, v2325, v2227, v2223, v2333, v2224, v711, v2216, v2254, v11, a9, v975, *&v566, 0, v970, v2215, v2214, _swiftEmptyArrayStorage, v977, 7, 0, v2334, 0, v2332, v2331, v2002, v979, v2006, v2010, v2014, v2018, v2021, v2024, v2027, v962._object, 0, 0, sub_100309790, v969);
            sub_1000E59C8();
            v981(v2226, v2294);
            sub_1000377D4();
            v982(v2225, v2306);
            v983 = sub_100036C9C();
            v984(v983);
            v985 = sub_1000176C8();
            v986(v985);
            sub_1000180EC(v2309, &qword_100CAB930);
            v987 = sub_1000C8960();
            v988(v987);
            v850 = v2323;
            goto LABEL_274;
          }

          __break(1u);
LABEL_610:
          __break(1u);
LABEL_611:
          __break(1u);
LABEL_612:
          __break(1u);
LABEL_613:
          __break(1u);
LABEL_614:
          __break(1u);
          goto LABEL_615;
        }

        v730 = v2334;
        if (v556 <= 1)
        {
          v711 = v2349;
          goto LABEL_192;
        }

        sub_10006948C();
        v651 = 1;
LABEL_145:
        sub_1000C826C();
        v2331 = v862;
        *&v2327 = v702 + 16;
        v635 = v702 + 32;
        while (1)
        {
          v523 = v651 + 2;
          v863 = __OFADD__(v651, 2);
          if (v651 < 0)
          {
            break;
          }

          sub_10012005C();
          if (v687)
          {
            goto LABEL_401;
          }

          v556 = *(v702 + 72);
          (*(v702 + 16))(v2328, v2331 + v556 * v651, v730);
          v711 = v2349;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10000C978();
            sub_10030A008();
          }

          sub_100309F34();
          if (v687)
          {
            sub_1000135B8(v864);
            sub_100195538();
            sub_10030A008();
          }

          *(v711 + 16) = 0;
          v865 = sub_1000926AC();
          v866(v865, v2328, v730);
          v2349 = v711;
          if (v523 >= v2329)
          {
            v867 = 1;
          }

          else
          {
            v867 = v863;
          }

          v651 += 2;
          v702 = v2332;
          if (v867)
          {
            goto LABEL_192;
          }
        }

        __break(1u);
LABEL_401:
        __break(1u);
        goto LABEL_402;
      }

      if (v614 > 1)
      {
        sub_100011468();
        v2331 = v1394;
        v651 = 1;
LABEL_317:
        v2329 = (v2333 + v2331);
        v2328 = v1393 + 16;
        v556 = v1393 + 32;
        while (1)
        {
          v635 = v651 + 2;
          v523 = __OFADD__(v651, 2);
          if (v651 < 0)
          {
            goto LABEL_610;
          }

          sub_10012005C();
          if (v687)
          {
            goto LABEL_611;
          }

          v602 = *(v1395 + 72);
          sub_100088840();
          v1396();
          v1391 = v2349;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10000C978();
            sub_10030A02C();
          }

          v1397 = *(v1391 + 16);
          sub_100309F34();
          if (v687)
          {
            sub_1000135B8(v1398);
            sub_100195538();
            sub_10030A02C();
          }

          *(v1391 + 16) = 0;
          (*v556)(v1391 + v2331 + v1397 * v602, v2213, v1383);
          v2349 = v1391;
          if (v635 >= v2330)
          {
            v1399 = 1;
          }

          else
          {
            v1399 = v523;
          }

          v651 += 2;
          if (v1399)
          {
            goto LABEL_367;
          }
        }
      }

LABEL_366:
      v1391 = v2349;
LABEL_367:
      if (v566 >= 0.0)
      {
        sub_10022C350(&qword_100CAC408);
        sub_10002FDD8();
        sub_1000245D4(v1425);
        sub_10012CC58();
        v1426();
        v1427 = sub_100051DC0();
        v1428(v1427);
        sub_100095588();
        v2334 = sub_1003032E8(v2141);
        v1429 = *(sub_10022C350(&qword_100CAC410) + 48);
        v1430 = sub_1004B5F04();
        v1431 = v2204;
        *v2204 = v1430;
        (v2324)(v1431 + v1429, v2142, v2306);
        sub_100040F64();
        v1432(v1431);
        v1433 = v2304;
        v2332 = sub_1003046AC(v2333, v602 + v2304);
        sub_10006A70C();
        v1434 = sub_10019239C();
        v1435(v1434);
        v2331 = DetailChartCondition.title.getter();
        *&v2330 = v1436;
        sub_10008654C();
        v1437 = v2267;
        v1438 = [v2267 mainBundle];
        sub_1000B9E40();
        v2376._object = v556;
        sub_1000080F4();
        v2371._countAndFlagsBits = 0xD000000000000030;
        v1443 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1439, v1440, v1441, v1442, v2371);
        v2329 = v1443._countAndFlagsBits;
        v2328 = v1443._object;

        v1444 = [v1437 mainBundle];
        v2376._object = 0x8000000100ABF800;
        sub_10003C338();
        v1445._object = 0xE800000000000000;
        v1449 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1446, v1447, v1448, v1445, v2372);
        *&v2325 = v1449._countAndFlagsBits;

        sub_10001BD24();
        sub_1001D1B40();
        v1450 = v2201;
        v1451 = v2269;
        v2326(v2201, v2299, v2269);
        sub_100020634();
        v1452 = v2268;
        sub_1000B98D8();
        v1455 = v1454 & ~v1453;
        v850 = swift_allocObject();
        sub_10001E7CC();
        sub_1003096E4();
        (*(v1452 + 32))(v850 + v1455, v1450, v1451);
        sub_10022C350(&qword_100CAC418);
        v1456 = v2200;
        sub_100003934();
        sub_10001B350(v1457, v1458, v1459, v1460);
        v1461 = sub_1004B5F28();
        sub_100040BDC();
        v1462 = v2203;
        v1463(v2203);
        sub_10030A08C();
        sub_1000314EC();
        sub_100309FD4();
        v2012 = v2330;
        v2008 = v2331;
        sub_10030A06C();
        v1999 = v1464;
        v1997 = v2332;
        v1993 = v2204;
        sub_100042D34();
        sub_10060D4A0(v2287, v2288, v2140, v2137, v2333, v2138, v1391, v2178, v2254, v1467, v566, v1461, v1465, 0, v1456, v1466, v1989, v1990, v1993, 7, v1997, v1999, *(&v1999 + 1), 0, 0x80u, v2002, v1462, v2008, v2012, v2013, v2017, v2021, v2024, v2027, v1449._object, 0, 0, sub_100309F30, v2376._object);
        sub_1000E59C8();
        v1468(v2139, v2294);
        sub_1000377D4();
        v1469(v2142, v2306);
        sub_1000228B4();
        sub_10030968C(v2141, v1470);
LABEL_240:
        v1146 = sub_100036C9C();
        v1147(v1146);
        v1148 = sub_1000176C8();
        v1149(v1148);
        v1150 = v2309;
LABEL_273:
        sub_1000180EC(v1150, &qword_100CAB930);
        v1321 = sub_1000C8960();
        v1322(v1321);
LABEL_274:
        v842 = v2316;
        goto LABEL_275;
      }

LABEL_648:
      __break(1u);
LABEL_649:
      __break(1u);
LABEL_650:
      sub_1000080D4();
LABEL_250:
      sub_100031C38();
      a9 = sub_1004B5EBC();
      v1165 = static Color.white.getter();
      v1166 = v2242;
      *v2242 = v1165;
      sub_1000D3BE4();
      v1167(v1166);
      v1168 = sub_100309F80();
      v1169(v1168, v651, v2306);
      sub_100040FF4();
      ChartAreaStyle.init(gradient:opacity:)();
      type metadata accessor for ChartAreaStyle();
      sub_10002FDE8();
      sub_10000E7B0();
      sub_10001B350(v1170, v1171, v1172, v1173);
      sub_10022C350(&qword_100CAC430);
      v1174 = sub_1000B97CC();
      *(v1174 + 16) = xmmword_100A2D320;
      *(v1174 + 32) = xmmword_100A3B010;
      v651 = v2118;
      sub_1001706B4();
      ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
      v1175 = sub_1000B0E58();
      (v2270)(v1175);
      v635 = DetailChartCondition.id.getter();
      *&v2325 = v1176;
      v1177 = sub_10000E8F4();
      v1178(v1177, v556);
      sub_10022C350(&qword_100CAC400);
      sub_100016310();
      v863 = v2136;
      v1179 = sub_100192210();
      v1180 = v2294;
      v1181(v1179);
      sub_10000E7B0();
      sub_10001B350(v1182, v1183, v1184, v1180);
      sub_100003934();
      sub_10001B350(v1185, v1186, v1187, v1180);
      sub_100051BBC();
      sub_1000E1710();
      v1188(v863);
      sub_1000AF510();
      sub_100071480();
      v1189();
      sub_1000B0C44();
      sub_100042204();
      *&v2327 = v1190;
      v2326 = v1191;
      v1191();
      v1192 = sub_1002789B0(v523);
      v711 = v1192 - 1;
      if (__OFSUB__(v1192, 1))
      {
        __break(1u);
LABEL_652:
        __break(1u);
LABEL_653:
        __break(1u);
LABEL_654:
        sub_1000080D4();
LABEL_500:
        sub_100031C38();
        v1712 = sub_1004B5EE0();
        v1713 = sub_100051DC0();
        v1714(v1713);
        sub_100095588();
        v2326 = sub_1003032E8(v2108);
        v1715 = *(sub_10022C350(&qword_100CAC410) + 48);
        v1716 = v2204;
        *v2204 = 1.0;
        (v2329)(v1716 + v1715, v2109, v2306);
        sub_100040F64();
        v1717(v1716);
        (v523)(v2234, v2119, v556);
        (v523)(v2084, v2107, v556);
        v1718 = sub_10019239C();
        v1719(v1718);
        sub_100040BDC();
        v1720(v2203);
        v2329 = DetailChartCondition.title.getter();
        v2328 = v1721;
        sub_10008654C();
        v1722 = [v2267 mainBundle];
        v2376._object = v556;
        sub_1001924D0();
        sub_100003CD0();
        v1723._object = 0xE600000000000000;
        v1726 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1724, v1725, v1722, v1723, v2375);
        *&v2325 = v1726._countAndFlagsBits;
        v850 = v1726._object;

        sub_10001BD24();
        sub_1001D1B40();
        v1727 = v2201;
        v1728 = v2269;
        (v2330)(v2201, v2299, v2269);
        sub_10002C5E4();
        v1731 = v2268;
        v1732 = (v2260 + *(v2268 + 80) + (v1730 & ~v1729)) & ~*(v2268 + 80);
        v1733 = swift_allocObject();
        sub_10001E7CC();
        sub_1003096E4();
        (*(v1731 + 32))(&v1733[v1732], v1727, v1728);
        sub_10022C350(&qword_100CAC418);
        v1734 = v2200;
        v1735 = sub_100005508();
        sub_10001B350(v1735, v1736, v1737, v1738);
        v2031 = sub_100309F30;
        v2376._object = v1733;
        sub_10030A08C();
        v2029 = v2325;
        v2026 = object;
        v2023 = countAndFlagsBits;
        sub_100309FD4();
        v2004 = v2203;
        v2003 = v2258;
        v1996 = v2084;
        v1994 = v2234;
        v1991 = v2333;
        sub_100042D34();
        sub_10060E78C(v2327, v2332, v2176, v2238, v2334, v2175, 0, v2178, v2254, v1741, *(v1739 + 96), v1712, 0x3FC999999999999ALL, 0, v1734, v1740, v1987, v1988, v1716, v1991, v1994, v1996, 0, 0, 0, 0, 64, v2003, v2004, v2005, v2009, 0, 0xE000000000000000, v2023, v2026, 0, 0xE000000000000000, v2029, v2030, v2031, v2376._object);
        sub_1000E59C8();
        v1742(v2110, v2294);
        sub_1000377D4();
        v1743(v2109, v2306);
        v1744 = *(v2297 + 8);
        v1745 = v2298;
        v1744(v2086, v2298);
        v842 = v2316;
        v1746 = *(v2316 + 8);
        v1746(v2107, v1726._object);
        v1746(v2119, v1726._object);
        sub_1000228B4();
        sub_10030968C(v2108, v1747);
        v1748 = sub_100036C9C();
        v1749(v1748);
        v1744(v2310, v1745);
        sub_1000180EC(v2309, &qword_100CAB930);
        v1750 = sub_1000C8960();
        v1751(v1750);

        goto LABEL_275;
      }

      v1193 = v2332;
      if (v711 >= 2)
      {
        sub_1001711C0();
        while (1)
        {
          v917 = v1194 + 1;
          if (__OFADD__(v1194, 1))
          {
            break;
          }

          sub_10003A150();
          if (v1195 >= v711)
          {
            goto LABEL_346;
          }
        }

LABEL_622:
        __break(1u);
        goto LABEL_623;
      }

      v917 = 0;
LABEL_346:
      sub_1000EFF14(_swiftEmptyArrayStorage);
      sub_100307230(v917);
      if ((v917 & 0x8000000000000000) != 0)
      {
        goto LABEL_652;
      }

      v1420 = v2334;
      v2331 = v711;
      *&v2324 = v635;
      if (v917)
      {
        sub_10006948C();
        sub_100086738(v523 + v1421);
        v523 = v1193 + 32;
        v1422 = 1;
        while (v1422 < v711)
        {
          v651 = v1422 + 2;
          if (__OFADD__(v1422, 2))
          {
            v863 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v863 = v1422 + 2;
          }

          if (v1422 < 0)
          {
            goto LABEL_613;
          }

          sub_100020E7C();
          if (v687)
          {
            goto LABEL_614;
          }

          sub_100040EA8();
          sub_100088840();
          v1423();
          v635 = v2349;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10000C978();
            sub_10030A014();
          }

          v556 = *(v635 + 16);
          sub_1000BC6B4();
          if (v687)
          {
            sub_1000135B8(v1424);
            sub_1000925F4();
            sub_10030A014();
          }

          *(v635 + 16) = v711;
          (*v523)(v635 + v2330 + v556 * v1193, v2195, v1420);
          v2349 = v635;
          v1422 = v863;
          --v917;
          v1193 = v2332;
          v711 = v2331;
          if (!v917)
          {
            if (v863 < v2331)
            {
              goto LABEL_371;
            }

            goto LABEL_403;
          }
        }

        goto LABEL_612;
      }

      if (v711 > 1)
      {
        sub_10006948C();
        v651 = 1;
LABEL_371:
        sub_1000C826C();
        sub_100086738(v1471);
        v1472 = (v1193 + 32);
        while (1)
        {
          v863 = v651 + 2;
          v523 = __OFADD__(v651, 2);
          if (v651 < 0)
          {
            goto LABEL_625;
          }

          sub_10012005C();
          if (v687)
          {
            goto LABEL_626;
          }

          v711 = *(v1193 + 72);
          sub_100088840();
          v1473();
          v635 = v2349;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10000C978();
            sub_10030A014();
          }

          v1474 = *(v635 + 16);
          sub_100309F34();
          if (v687)
          {
            sub_1000135B8(v1475);
            sub_100195538();
            sub_10030A014();
          }

          *(v635 + 16) = 0;
          (*v1472)(v635 + v2330 + v1474 * v711, v2179, v1420);
          v2349 = v635;
          if (v863 >= v2331)
          {
            v1476 = 1;
          }

          else
          {
            v1476 = v523;
          }

          v651 += 2;
          v1193 = v2332;
          if (v1476)
          {
            goto LABEL_403;
          }
        }
      }

LABEL_402:
      v635 = v2349;
LABEL_403:
      sub_10022C350(&qword_100CAC408);
      sub_10002FDD8();
      sub_1000245D4(v1506);
      sub_10012CC58();
      v1507();
      sub_100309FE8();
      sub_1000522E4();
      v1508();
      sub_100095588();
      v1509 = v2299;
      v2292 = ConditionUnits.visibility.getter();
      sub_10003B950();
      v2328 = v1511;
      v2320 = v1512;
      v1512(v2125, v711 + v1510, v2317);
      v1513 = (v711 + v2304);
      v2304 = DetailChartCondition.title.getter();
      v2291 = v1514;
      sub_100040CA8();
      v1515 = v2267;
      v1516 = [v2267 mainBundle];
      sub_1000B9E40();
      v2376._object = v863;
      sub_1000080F4();
      v1521 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1517, v1518, v1519, v1520, v2373);
      v2290 = v1521._countAndFlagsBits;
      v2288 = v1521._object;

      sub_100040CA8();
      v1522 = [v1515 mainBundle];
      v2376._object = v863;
      v1523 = v2323;
      sub_10003C338();
      v1524._object = 0xEA00000000007974;
      v1528 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1525, v1526, v1527, v1524, v2374);
      v2287 = v1528._countAndFlagsBits;
      v2286 = v1528._object;

      sub_10001BD24();
      sub_1001D1B40();
      v1529 = v2268;
      v1530 = v2081;
      v1531 = v2269;
      (*(v2268 + 16))(v2081, v1509, v2269);
      sub_100020634();
      sub_1000B98D8();
      v1534 = v1533 & ~v1532;
      v1535 = sub_100309F58();
      sub_10001E7CC();
      sub_1003096E4();
      v1536 = *(v1529 + 32);
      v2299 = v1535;
      v1536(v1535 + v1534, v1530, v1531);
      sub_10022C350(&qword_100CAC418);
      sub_100003934();
      sub_10001B350(v1537, v1538, v1539, v1540);
      a9 = sub_1004B5F28();
      v1541 = sub_1004B5F04();
      v1542 = v2113;
      *v2113 = v1541;
      v1543 = v2293;
      v1544 = sub_100192324();
      v1545(v1544);
      sub_1000E14C8();
      v1546(v2133);
      v2305 = *(v2307 + 16);
      (v2305)(v2128, v2136, v2318);
      sub_100087D78();
      v1547();
      sub_1000B01B0();
      v1548();
      sub_1000056BC();
      sub_1001D1B40();
      sub_10000FBB8();
      sub_1001D1B40();
      (v2329)(v2126, v2127, v2322);
      sub_100095588();
      v1549 = v2334;
      v2313 = *(v1543 + 16);
      (v2313)(v2130, v1542, &qword_100D90070);
      v1550 = v2078;
      v523 = v2333;
      sub_1003DF9A4(v2333, v2078);
      sub_100003A40(v1550);
      if (v1684)
      {
        sub_1000180EC(v1550, &qword_100CAB930);
        v1556 = v2082;
        sub_100003934();
        sub_10001B350(v1551, v1552, v1553, v1523);
        static WeatherClock.date.getter();
        v1554 = sub_100016298();
        sub_1000038B4(v1554, v1555, v1523);
        v1542 = v2332;
        v1563 = v2079;
        if (!v1684)
        {
          sub_1000180EC(v1556, &unk_100CB2CF0);
        }
      }

      else
      {
        v1556 = v2082;
        v1549 = v1550;
        DetailChartDataElement.date.getter();
        v1557 = sub_1000C8D4C();
        v1558(v1557);
        sub_10000E7B0();
        sub_100043980(v1559, v1560, v1561, v1523);
        v1562(v2120, v1556, v1523);
        v1563 = v2079;
      }

      sub_100019394();
      sub_1002F5700(v523, v1564, v1563);
      sub_100003A40(v1563);
      if (v1684)
      {
        sub_1000180EC(v1563, &qword_100CAB930);
        v1565 = v2083;
        v1566 = sub_100005508();
        v923 = v2323;
        sub_10001B350(v1566, v1567, v1568, v2323);
        v651 = v2111;
        static WeatherClock.date.getter();
        v1569 = sub_10000C7F0();
        sub_1000038B4(v1569, v1570, v923);
        if (!v1684)
        {
          sub_1000180EC(v1565, &unk_100CB2CF0);
        }
      }

      else
      {
        v1571 = v2083;
        v1556 = v1549;
        DetailChartDataElement.date.getter();
        (*(v1542 + 8))(v1563, v1549);
        sub_10000E7B0();
        v923 = v2323;
        sub_100043980(v1572, v1573, v1574, v2323);
        v651 = v2111;
        v1575(v2111, v1571, v923);
      }

      (v2320)(v2112, v2125, v2317);
      (*(v2303 + 16))(v2115, v2133, v2312);
      ChartKind.showSecondLine.getter();
      v556 = v2116;
      v1576 = sub_10008870C(v2325);
      (v2305)(v1576);
      v1577 = v2314;
      (v2314)(v556 + *(v1556 + 72), v2121, v923);
      sub_100309FC0();
      sub_1000B01B0();
      v1578();
      *(v556 + *(v1556 + 32)) = v635;
      v1579 = v556 + *(v1556 + 40);
      *v1579 = 0;
      *(v1579 + 8) = v566;
      sub_1000056BC();
      sub_1001D1B40();
      v1580 = v556 + *(v1556 + 52);
      *v1580 = 0x4014000000000000;
      *(v1580 + 8) = 0;
      sub_10000FBB8();
      sub_1001D1B40();
      *(v556 + *(v1556 + 60)) = a9;
      (v2329)(v556 + *(v1556 + 64), v2126, v2322);
      sub_100095588();
      *(v556 + *(v1556 + 88)) = _swiftEmptyArrayStorage;
      (v2313)(v556 + *(v1556 + 92), v2130, v2311);
      v1581 = sub_100309F40();
      (v1577)(v1581, v2120, v923);
      (v1577)(v556 + *(v1556 + 80), v651, v923);
      v1582 = sub_10000C70C(0, &qword_100CA53F0);

      v1583 = static NSDateFormatter.prevailingPeriodSymbols.getter();
      sub_100309FA0(v1583);
      if (v820 != v603)
      {
        v917 = 0;
LABEL_417:
        sub_1000EFF14(_swiftEmptyArrayStorage);
        sub_100307230(v917);
        if ((v917 & 0x8000000000000000) != 0)
        {
          goto LABEL_653;
        }

        if (!v917)
        {
          if (v1556 < 1)
          {
            goto LABEL_456;
          }

          v635 = 0;
          sub_100011468();
          *&v2330 = v1598;
LABEL_436:
          v2329 = (v523 + v2330);
          v2328 = v1597 + 16;
          v1599 = (v1597 + 32);
          v523 = v635;
          while (1)
          {
            v1600 = __OFADD__(v523, 2);
            if (v635 < 0)
            {
              break;
            }

            sub_100087134();
            if (v523 >= v1602)
            {
              goto LABEL_624;
            }

            v1603 = *(v1601 + 72);
            (*(v1601 + 16))(v2181, &v2329[v1603 * v523], v2334);
            if ((sub_1000426F4() & 1) == 0)
            {
              sub_10000C978();
              v1582 = v2349;
            }

            v1605 = *(v1582 + 16);
            v1604 = *(v1582 + 24);
            v917 = v1605 + 1;
            if (v1605 >= v1604 >> 1)
            {
              sub_1000135B8(v1604);
              sub_100195538();
              v1582 = v2349;
            }

            *(v1582 + 16) = v917;
            sub_100021D44();
            (*v1599)(v1606 + v1605 * v1603, v2181, v2334);
            v2349 = v1582;
            v1607 = v523 + 2 >= v2331 || v1600;
            v523 += 2;
            if (v1607 == 1)
            {
              goto LABEL_450;
            }
          }

LABEL_623:
          __break(1u);
LABEL_624:
          __break(1u);
LABEL_625:
          __break(1u);
LABEL_626:
          __break(1u);
LABEL_627:
          __break(1u);
LABEL_628:
          __break(1u);
LABEL_629:
          __break(1u);
LABEL_630:
          __break(1u);
LABEL_631:
          __break(1u);
LABEL_632:
          __break(1u);
LABEL_633:
          __break(1u);
LABEL_634:
          sub_1000080D4();
          goto LABEL_237;
        }

        sub_1000C84CC();
        v2329 = (v523 + v1587);
        v556 = v1588 + 16;
        v523 = v1588 + 32;
        while (v1586 < v1556)
        {
          sub_1000E0F44();
          if (v603)
          {
            v635 = v1591;
          }

          else
          {
            v635 = v1590;
          }

          if (v1589 < 0)
          {
            goto LABEL_617;
          }

          sub_100020E7C();
          if (v687)
          {
            goto LABEL_618;
          }

          v651 = *(v1593 + 72);
          (*(v1593 + 16))(v2194, &v2329[v651 * v1592]);
          if ((sub_1000426F4() & 1) == 0)
          {
            sub_10000C978();
            v1582 = v2349;
          }

          v1595 = *(v1582 + 16);
          v1594 = *(v1582 + 24);
          if (v1595 >= v1594 >> 1)
          {
            sub_1000135B8(v1594);
            sub_1006A7AB4();
            v1582 = v2349;
          }

          *(v1582 + 16) = v1595 + 1;
          sub_100021D44();
          (*v523)(v1596 + v1595 * v651, v2194, v2334);
          sub_1000B9148();
          v1597 = v2332;
          if (v1684)
          {
            v523 = v2333;
            if (v635 < v1556)
            {
              goto LABEL_436;
            }

LABEL_450:

            v923 = v2323;
            v651 = v2111;
            goto LABEL_451;
          }
        }

        goto LABEL_616;
      }

      sub_100079494();
      while (1)
      {
        v917 = v1584 + 1;
        if (__OFADD__(v1584, 1))
        {
          break;
        }

        sub_10003A150();
        if (v1585 >= v1556)
        {
          goto LABEL_417;
        }
      }

LABEL_615:
      __break(1u);
LABEL_616:
      __break(1u);
LABEL_617:
      __break(1u);
LABEL_618:
      __break(1u);
LABEL_619:
      sub_1000080D4();
LABEL_27:
      sub_100031C38();
      v566 = sub_1004B5EE0();
      sub_1000522E4();
      v2326 = v665;
      v2305 = v666;
      v666();
      sub_100095588();
      v667 = v2164;
      sub_1003DF9A4(v2331, v2164);
      v668 = sub_100016298();
      v669 = v2334;
      sub_1000113D0(v668, v670);
      v671 = v2169;
      v672 = v2202;
      v673 = v2165;
      if (v1684)
      {
        sub_1000180EC(v667, &qword_100CAB930);
        sub_100003934();
        sub_10001B350(v674, v675, v676, v635);
        static WeatherClock.date.getter();
        sub_1000038B4(v671, 1, v635);
        if (!v1684)
        {
          sub_1000180EC(v671, &unk_100CB2CF0);
        }
      }

      else
      {
        DetailChartDataElement.date.getter();
        v669 = v2334;
        v868 = sub_100031474();
        v869(v868);
        sub_10000E7B0();
        sub_100043980(v870, v871, v872, v635);
        v873(v2205, v671, v635);
      }

      sub_100019394();
      sub_1002F5700(v2331, v874, v673);
      sub_100003A40(v673);
      v2288 = v556;
      v2287 = v651;
      if (v1684)
      {
        sub_1000180EC(v673, &qword_100CAB930);
        v875 = v2170;
        v876 = sub_100005508();
        sub_10001B350(v876, v877, v878, v635);
        static WeatherClock.date.getter();
        v879 = sub_10000C7F0();
        sub_1000038B4(v879, v880, v635);
        if (!v1684)
        {
          sub_1000180EC(v875, &unk_100CB2CF0);
        }
      }

      else
      {
        DetailChartDataElement.date.getter();
        (*(v2332 + 8))(v673, v669);
        v886 = v2145;
        static Calendar.current.getter();
        v887 = v2170;
        Date.wc_addMinutes(_:calendar:)();
        (*(v2262 + 8))(v886, v2263);
        v888 = v2316;
        v889 = sub_1000B7B80();
        v890(v889, v635);
        sub_10000E7B0();
        sub_10001B350(v891, v892, v893, v635);
        (*(v888 + 32))(v672, v887, v635);
      }

      v894 = v2313;
      v2292 = sub_1003046AC(v523, v2313 + v2304);

      sub_10003B950();
      v896(v2182, &v894[v895], v2317);
      v2320 = DetailChartCondition.title.getter();
      v2304 = v897;
      sub_10001BD24();
      sub_1001D1B40();
      v898 = v2268;
      v899 = v2167;
      v900 = v2269;
      (*(v2268 + 16))(v2167, v2299, v2269);
      sub_100020634();
      sub_1000B98D8();
      v903 = v902 & ~v901;
      v904 = swift_allocObject();
      sub_10001E7CC();
      sub_1003096E4();
      v905 = *(v898 + 32);
      v2313 = v904;
      v905(v904 + v903, v899, v900);
      sub_10022C350(&qword_100CAC418);
      sub_100003934();
      sub_10001B350(v906, v907, v908, v909);
      v910 = sub_1004B5F04();
      v911 = v2184;
      *v2184 = v910;
      v912 = v2311;
      (*(v2293 + 104))(v911, enum case for ChartPeakMarkStyle.line(_:), v2311);
      sub_1000E14C8();
      v913(v2186);
      v914 = v2210;
      ChartKind.showSecondLine.getter();
      v915 = v2187;
      v916 = v2329;
      *v2187 = v2330;
      *(v915 + 1) = v916;
      v523 = v2271;
      (*(v2307 + 16))(&v915[*(v2271 + 20)], v914, v2318);
      v917 = v2314;
      (v2314)(&v915[*(v523 + 72)], v2206, v635);
      v918 = v2331;
      *&v915[*(v523 + 24)] = v2331;
      (v2327)(&v915[*(v523 + 28)], v2207, v2321);
      *&v915[*(v523 + 32)] = 0;
      *&v915[*(v523 + 40)] = xmmword_100A3B040;
      sub_1000056BC();
      sub_1001D1B40();
      v919 = &v915[*(v523 + 52)];
      *v919 = 0x3FF0000000000000;
      v919[8] = 0;
      sub_10000FBB8();
      sub_1001D1B40();
      *&v915[*(v523 + 60)] = v566;
      (v2305)(&v915[*(v523 + 64)], v2209, v2322);
      sub_100095588();
      *&v915[*(v523 + 88)] = _swiftEmptyArrayStorage;
      (*(v2293 + 16))(&v915[*(v523 + 92)], v911, v912);
      *&v915[*(v523 + 96)] = 7;
      (v917)(&v915[*(v523 + 76)], v2205, v635);
      v920 = v2202;
      (v917)(&v915[*(v523 + 80)], v2202, v635);
      v921 = sub_10000C70C(0, &qword_100CA53F0);

      *&v915[*(v523 + 68)] = static NSDateFormatter.prevailingPeriodSymbols.getter();
      v922 = sub_1002789B0(v918);
      v651 = v922 - 1;
      if (__OFSUB__(v922, 1))
      {
        __break(1u);
LABEL_621:
        __break(1u);
        goto LABEL_622;
      }

      v923 = v920;
      v917 = v2332;
      if (v651 >= 1)
      {
        sub_100079494();
        while (1)
        {
          v925 = v924 + 1;
          if (__OFADD__(v924, 1))
          {
            break;
          }

          sub_10003A150();
          if (v926 >= v651)
          {
            goto LABEL_175;
          }
        }

        __break(1u);
        goto LABEL_453;
      }

      v925 = 0;
LABEL_175:
      sub_1000EFF14(_swiftEmptyArrayStorage);
      sub_100307230(v925);
      if (v925 < 0)
      {
        goto LABEL_621;
      }

      *&v2330 = v651;
      if (v925)
      {
        v927 = 0;
        v2333 = (*(v917 + 80) + 32) & ~*(v917 + 80);
        v2329 = (v2331 + v2333);
        v928 = (v917 + 32);
        while (v927 < v651)
        {
          sub_1000E0F44();
          if (v603)
          {
            v932 = v931;
          }

          else
          {
            v932 = v930;
          }

          if ((v929 & 0x8000000000000000) != 0)
          {
            goto LABEL_454;
          }

          if (v929 >= *(v2331 + 16))
          {
            goto LABEL_455;
          }

          v933 = *(v917 + 72);
          (*(v917 + 16))(v2325, &v2329[v933 * v929], v2334);
          if ((sub_1000426F4() & 1) == 0)
          {
            sub_10000C978();
            v921 = v2349;
          }

          v935 = *(v921 + 16);
          v934 = *(v921 + 24);
          v923 = (v935 + 1);
          if (v935 >= v934 >> 1)
          {
            sub_1000135B8(v934);
            sub_1006A7AB4();
            v921 = v2349;
          }

          *(v921 + 16) = v923;
          *&v936 = COERCE_DOUBLE((*v928)(v921 + v2333 + v935 * v933, v2325, v2334));
          v2349 = v921;
          v927 = v932;
          --v925;
          v635 = v2323;
          v917 = v2332;
          v651 = v2330;
          if (!v925)
          {
            if (v932 < v2330)
            {
              goto LABEL_199;
            }

LABEL_214:
            v923 = v2202;
            goto LABEL_215;
          }
        }

LABEL_453:
        __break(1u);
LABEL_454:
        __break(1u);
LABEL_455:
        __break(1u);
LABEL_456:

LABEL_451:
        v1608 = *(v2316 + 8);
        v1608(v651, v923);
        v1608(v2120, v923);
        sub_100199470();
        v1609(v2130, v2311);
        sub_1000180EC(v2123, &qword_100CAB930);
        v2334 = *(v2308 + 8);
        (v2334)(v2126, v2322);
        sub_1000436D0();
        sub_10030968C(v2132, v1610);
        sub_1000747A8();
        v2332 = v1611;
        sub_10030968C(v2129, v1612);
        *&v2330 = *(v2301 + 8);
        v1613 = v2321;
        (v2330)(v2122, v2321);
        v1608(v2121, v2323);
        v2329 = *(v2307 + 8);
        (v2329)(v2128, v2318);
        v842 = v2303;
        (*(v2303 + 8))(v2133, v2312);
        (v2333)(v2113, v2311);
        sub_10030968C(v2114, v923);
        v1614 = v2296;
        (*(v2296 + 8))(v2125, v2317);
        sub_1000180EC(v2124, &qword_100CAB930);
        v1615 = v2322;
        v1616 = v2334;
        (v2334)(v2127, v2322);
        sub_10030968C(v2131, v2332);
        v1617 = v1613;
        v1618 = v2330;
        (v2330)(v2135, v1617);
        (v2331)(v2134, v2323);
        (v2329)(v2136, v2318);
        sub_1000E59C8();
        v1619(v2118, v2294);
        sub_1000377D4();
        v1620(v2117, v2306);
        (v1616)(v2319, v1615);
        v850 = v2323;
        v1621 = sub_1000176C8();
        v1622(v1621);
        sub_1000180EC(v2309, &qword_100CAB930);
        v1618(v2300, v2321);
        sub_10001321C();
        v1623 = v2116;
        v1625 = sub_10030A058(v1624);
        v1626(v1625, v2115, v2312);
        sub_1000D41B4();
        *(v1627 + 8) = 0;
        *(v1627 + 16) = 0;
        *v1627 = v2292;
        *(v1627 + 24) = 1;
        (*(v1614 + 32))(v1623 + *(v1615 + 104), v2112, v2317);
        sub_1000C8E30();
        sub_1000379F4(v1628);
        sub_1000BAED4(v1629);
        *v860 = sub_100309F30;
        v861 = v2299;
        goto LABEL_142;
      }

      if (v651 < 1)
      {

LABEL_215:
        (*(v2293 + 8))(v2184, v2311);
        sub_10030968C(v2185, type metadata accessor for ChartViewModel.Background);
        v996 = *(v2316 + 8);
        v996(v923, v635);
        v996(v2205, v635);
        sub_1000180EC(v2208, &qword_100CAB930);
        v997 = *(v2308 + 8);
        v998 = v2322;
        v997(v2209, v2322);
        sub_1000747A8();
        sub_10030968C(v2211, v999);
        v1000 = *(v2301 + 8);
        v1001 = v2321;
        v1000(v2207, v2321);
        v996(v2206, v2323);
        (*(v2307 + 8))(v2210, v2318);
        sub_1000377D4();
        v1002(v2183, v2306);
        v997(v2319, v998);
        v850 = v2323;
        v1003 = sub_1000176C8();
        v1004(v1003);
        sub_1000180EC(v2309, &qword_100CAB930);
        v1000(v2300, v1001);
        sub_10001321C();
        v1005 = v2187;
        *&v2187[v1007] = v1006;
        (*(v2303 + 32))(&v1005[v1001[27]], v2186, v2312);
        *&v1005[v1001[9]] = v2292;
        v1008 = &v1005[v1001[11]];
        *(v1008 + 1) = 0;
        *(v1008 + 2) = 0;
        *v1008 = 1;
        sub_100040DB0(v1008);
        v1010(&v1005[v1009], v2182, v2317);
        v1011 = &v1005[v1001[28]];
        v1012 = v2304;
        *v1011 = v2320;
        v1011[1] = v1012;
        v1013 = &v1005[v1001[29]];
        v1014 = v2294;
        *v1013 = v2295;
        v1013[1] = v1014;
        v1015 = &v1005[v1001[30]];
        v1016 = object;
        *v1015 = countAndFlagsBits;
        v1015[1] = v1016;
        v1017 = &v1005[v1001[31]];
        v1018 = v2287;
        *v1017 = v2288;
        *(v1017 + 1) = v1018;
        v1019 = &v1005[v1001[32]];
        *v1019 = 0;
        *(v1019 + 1) = 0;
        v1020 = &v1005[v1001[33]];
        v1021 = v2313;
        *v1020 = sub_100309F30;
        *(v1020 + 1) = v1021;
        v842 = v2316;
        goto LABEL_216;
      }

      v932 = 0;
      sub_100011468();
      v2333 = v989;
LABEL_199:
      v2329 = (v2331 + v2333);
      v2328 = v917 + 16;
      v990 = (v917 + 32);
      v991 = v932;
      while (1)
      {
        v992 = __OFADD__(v991, 2);
        if (v932 < 0)
        {
          break;
        }

        if (v991 >= *(v2331 + 16))
        {
          goto LABEL_458;
        }

        v993 = *(v2332 + 72);
        (*(v2332 + 16))(v2324, &v2329[v993 * v991], v2334);
        if ((sub_1000426F4() & 1) == 0)
        {
          sub_10000C978();
          v921 = v2349;
        }

        v917 = *(v921 + 16);
        v994 = *(v921 + 24);
        if (v917 >= v994 >> 1)
        {
          sub_1000135B8(v994);
          sub_1006A7AB4();
          v921 = v2349;
        }

        *(v921 + 16) = v917 + 1;
        *&v936 = COERCE_DOUBLE((*v990)(v921 + v2333 + v917 * v993, v2324, v2334));
        v2349 = v921;
        v995 = (v991 + 2) >= v2330 || v992;
        v991 += 2;
        if (v995 == 1)
        {

          v635 = v2323;
          goto LABEL_214;
        }
      }

      __break(1u);
LABEL_458:
      __break(1u);
LABEL_459:
      v1345 = *&v936;
LABEL_460:
      v1630 = v2244;
      *&v1631 = COERCE_DOUBLE(DetailChartExtrema.maxSecondValue.getter());
      if (v1632)
      {
        Array<A>.maxSecondValue.getter();
      }

      else
      {
        v1633 = *&v1631;
      }

      if (v1345 > v1633)
      {
        v1633 = v1345;
      }

      if ((*&v1633 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_659;
      }

      if (v1633 <= -9.22337204e18)
      {
        goto LABEL_660;
      }

      if (v1633 >= 9.22337204e18)
      {
        goto LABEL_661;
      }

      if (static Beaufort.maxLevel.getter() >= v1633)
      {
        v1635 = static Beaufort.maxLevel.getter();
      }

      else
      {
        v1635 = static Beaufort.maxExtendedLevel.getter();
      }

      a9 = v1635;
      v1646 = 0.0;
LABEL_503:
      v1752 = ConditionUnits.windSpeed.getter();
      v1753 = v2105;
      static DetailChartGradientModel.windGradientModel(startValue:windSpeedUnit:)();

      sub_1000C8BB0();
      *&v2330 = v1754;
      v2329 = v1755;
      (v1755)(v1630, v2310, v917);
      if (qword_100CA2198 != -1)
      {
        sub_1000080D4();
      }

      LODWORD(v2331) = v2239 == 1;
      sub_100031C38();
      sub_1004B5EBC();
      v1756 = *(v2302 + 16);
      v1757 = v2242;
      v1758 = v2306;
      v1756(v2242, v1753, v2306);
      LODWORD(v2328) = enum case for ChartLineColor.gradient(_:);
      *&v2327 = *(v2241 + 104);
      v1759 = sub_1001ACFE0();
      v1760(v1759);
      v1756(v2264, v1753, v1758);
      ChartAreaStyle.init(gradient:opacity:)();
      v2326 = type metadata accessor for ChartAreaStyle();
      sub_10000E7B0();
      sub_10001B350(v1761, v1762, v1763, v1764);
      sub_10022C350(&qword_100CAC430);
      v1765 = sub_1000B97CC();
      v2325 = xmmword_100A2D320;
      v2324 = xmmword_100A3B010;
      *(v1765 + 16) = xmmword_100A2D320;
      *(v1765 + 32) = xmmword_100A3B010;
      sub_1001706B4();
      ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
      sub_100037FA8();
      (v2329)();
      v11 = sub_1004B5EBC();
      v1756(v1757, v2105, v1758);
      (v2327)(v1757, v2328, v2245);
      sub_100003934();
      sub_10001B350(v1766, v1767, v1768, v2326);
      v1769 = sub_1000B97CC();
      v1770 = v2324;
      *(v1769 + 16) = v2325;
      *(v1769 + 32) = v1770;
      v1771 = v2077;
      ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
      v1772 = v2103;
      sub_1000236D4();
      v1773 = v2270;
      v2270();
      v1774 = v2160;
      sub_100095588();
      sub_1000453D4();
      sub_10030A04C();
      *&v2325 = v1775;
      *&v2324 = v1776;
      v1776();
      *(v1772 + v1774[5]) = v2331;
      *(v1772 + v1774[8]) = 0;
      *(v1772 + v1774[9]) = 0;
      *(v1772 + v1774[10]) = 0;
      v1777 = sub_1000B0E58();
      (v1773)(v1777);
      v1778 = DetailChartCondition.id.getter();
      v1780 = v1779;
      v1781 = sub_10000E8F4();
      v1782(v1781, v1758);
      v1783 = *(sub_10022C350(&qword_100CAC400) + 48);
      v1784 = *(v2295 + 16);
      v1785 = v2104;
      v1786 = v2294;
      v1784(v2104, v2106, v2294);
      sub_10000E7B0();
      sub_10001B350(v1787, v1788, v1789, v1786);
      v1784(v1785 + v1783, v1771, v1786);
      sub_10000E7B0();
      sub_10001B350(v1790, v1791, v1792, v1786);
      sub_1000E1710();
      v1793(v1785);
      sub_1000AF510();
      sub_100071480();
      v1794();
      sub_1000B0C44();
      sub_100042204();
      *&v2327 = v1795;
      v2326 = v1796;
      v1796();
      v602 = v2333;
      v1797 = sub_1002789B0(v2333);
      v1083 = v1797 - 1;
      if (__OFSUB__(v1797, 1))
      {
        __break(1u);
LABEL_656:
        __break(1u);
LABEL_657:
        __break(1u);
LABEL_658:
        __break(1u);
LABEL_659:
        __break(1u);
LABEL_660:
        __break(1u);
LABEL_661:
        __break(1u);
LABEL_662:
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v1070 = v2332;
      if (v1083 >= 2)
      {
        sub_1001711C0();
        while (1)
        {
          v917 = v1798 + 1;
          if (__OFADD__(v1798, 1))
          {
            goto LABEL_637;
          }

          sub_10003A150();
          if (v1799 >= v1083)
          {
            goto LABEL_512;
          }
        }
      }

      v917 = 0;
LABEL_512:
      sub_1000EFF14(_swiftEmptyArrayStorage);
      sub_100307230(v917);
      if ((v917 & 0x8000000000000000) != 0)
      {
        goto LABEL_656;
      }

      v1800 = v2334;
      v2331 = v1083;
      v2288 = v1778;
      v2287 = v1780;
      if (v917)
      {
        sub_10006948C();
        sub_100086738(v602 + v1801);
        v523 = v1070 + 32;
        v1802 = 1;
        while (v1802 < v2331)
        {
          v1803 = v1802 + 2;
          if (__OFADD__(v1802, 2))
          {
            v1804 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v1804 = v1802 + 2;
          }

          if (v1802 < 0)
          {
            goto LABEL_628;
          }

          sub_100020E7C();
          if (v687)
          {
            goto LABEL_629;
          }

          sub_100040EA8();
          sub_100088840();
          v1805();
          v1806 = v2349;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10000C978();
            sub_100309FFC();
          }

          v1785 = *(v1806 + 16);
          sub_1000BC6B4();
          if (v687)
          {
            sub_1000135B8(v1807);
            sub_1000925F4();
            sub_100309FFC();
          }

          *(v1806 + 16) = v602;
          (*v523)(v1806 + v2330 + v1785 * v1070, v2172, v1800);
          v2349 = v1806;
          v1802 = v1804;
          --v917;
          v1070 = v2332;
          if (!v917)
          {
            if (v1804 < v2331)
            {
              goto LABEL_530;
            }

            goto LABEL_546;
          }
        }

        goto LABEL_627;
      }

      if (v1083 <= 1)
      {
        v1806 = v2349;
LABEL_546:
        if (v1646 > a9)
        {
          goto LABEL_657;
        }

        sub_10022C350(&qword_100CAC408);
        sub_10002FDD8();
        sub_1000245D4(v1815);
        sub_10012CC58();
        v1816();
        sub_100309FE8();
        sub_1000522E4();
        v1817();
        sub_100095588();
        v2328 = sub_1003032E8(v2103);
        sub_10003B950();
        v2320 = v1819;
        v2305 = v1820;
        (v1820)(v2091, v602 + v1818, v2317);
        v2304 = DetailChartCondition.title.getter();
        v2292 = v1821;
        sub_1000176DC();
        v1822 = v2267;
        v1823 = [v2267 mainBundle];
        sub_1001924D0();
        v1825 = v1824 - 4;
        v2376._object = v1070;
        sub_100003CD0();
        v1826._countAndFlagsBits = 0;
        v1826._object = 0xE000000000000000;
        v2376._countAndFlagsBits = v1825;
        v1829 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1827, v1828, v1823, v1826, v2376);
        v2291 = v1829._countAndFlagsBits;
        v2290 = v1829._object;

        sub_10008654C();
        v1830 = [v1822 mainBundle];
        sub_1001924D0();
        v2376._object = v1785;
        sub_100003CD0();
        v1834 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1831, v1832, v1830, v1833, v2377);
        v2286 = v1834._countAndFlagsBits;
        v2285 = v1834._object;

        sub_1000176DC();
        v1835 = v1822;
        v1836 = v2323;
        v1837 = [v1835 mainBundle];
        v2376._object = "t_ax_yaxis_description";
        sub_100003CD0();
        v1838._object = 0xE500000000000000;
        v1841 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1839, v1840, v1837, v1838, v2378);
        v2284 = v1841._countAndFlagsBits;
        v2283 = v1841._object;

        sub_10001BD24();
        sub_1001D1B40();
        v1842 = v2061;
        v1843 = v2269;
        (v2324)(v2061, v2299, v2269);
        sub_100020634();
        v1844 = v2268;
        sub_1000B98D8();
        v1847 = v1846 & ~v1845;
        v1848 = sub_100309F58();
        sub_10001E7CC();
        sub_1003096E4();
        v1849 = *(v1844 + 32);
        v2313 = v1848;
        v1849(v1848 + v1847, v1842, v1843);
        sub_10022C350(&qword_100CAC418);
        sub_100003934();
        sub_10001B350(v1850, v1851, v1852, v1853);
        v11 = sub_1004B5F28();
        v1854 = sub_1004B5F04();
        v1855 = v2072;
        *v2072 = v1854;
        v1856 = v2293;
        v1857 = sub_100192324();
        v1858(v1857);
        sub_1000E14C8();
        v1859(v2099);
        v1860 = *(v2307 + 16);
        v1860(v2094, v2104, v2318);
        sub_100087D78();
        v1861();
        sub_1000B01B0();
        v1862();
        sub_1000056BC();
        sub_1001D1B40();
        sub_10000FBB8();
        sub_1001D1B40();
        (v2329)(v2092, v2093, v2322);
        sub_100095588();
        v1863 = *(v1856 + 16);
        *&v2325 = v1856 + 16;
        *&v2324 = v1863;
        v1863(v2096, v1855, &qword_100D90070);
        v1864 = v2059;
        sub_1003DF9A4(v2333, v2059);
        v1865 = v2334;
        sub_1000113D0(v1864, 1);
        if (v1684)
        {
          sub_1000180EC(v1864, &qword_100CAB930);
          v1866 = v2063;
          sub_100003934();
          sub_10001B350(v1867, v1868, v1869, v1836);
          static WeatherClock.date.getter();
          v1870 = sub_100016298();
          sub_1000038B4(v1870, v1871, v1836);
          v1879 = v2062;
          if (!v1684)
          {
            sub_1000180EC(v1866, &unk_100CB2CF0);
          }
        }

        else
        {
          v1872 = v2063;
          v1865 = v1864;
          DetailChartDataElement.date.getter();
          v1873 = sub_1000C8D4C();
          v1874(v1873);
          sub_10000E7B0();
          sub_100043980(v1875, v1876, v1877, v1836);
          v1878(v2100, v1872, v1836);
          v1879 = v2062;
        }

        sub_100019394();
        v1880 = v2333;
        sub_1002F5700(v2333, v1881, v1879);
        sub_100003A40(v1879);
        if (v1684)
        {
          sub_1000180EC(v1879, &qword_100CAB930);
          v1882 = v2064;
          v1883 = sub_100005508();
          v1070 = v2323;
          sub_10001B350(v1883, v1884, v1885, v2323);
          v1894 = v2076;
          static WeatherClock.date.getter();
          v1886 = sub_10000C7F0();
          sub_1000038B4(v1886, v1887, v1070);
          if (!v1684)
          {
            sub_1000180EC(v1882, &unk_100CB2CF0);
          }
        }

        else
        {
          v1888 = v2064;
          DetailChartDataElement.date.getter();
          v1889 = sub_1000D3D24();
          v1890(v1889, v1865);
          sub_10000E7B0();
          v1070 = v2323;
          sub_100043980(v1891, v1892, v1893, v2323);
          v1894 = v2076;
          v1895(v2076, v1888, v1070);
        }

        (v2305)(v2071, v2091, v2317);
        (*(v2303 + 16))(v2074, v2099, v2312);
        v1896 = v2094;
        ChartKind.showSecondLine.getter();
        v523 = v2075;
        v1897 = v2287;
        *v2075 = v2288;
        *(v523 + 8) = v1897;
        v1898 = v2271;
        v1860(v523 + *(v2271 + 20), v1896, v2318);
        v1899 = v2314;
        (v2314)(v523 + v1898[18], v2087, v1070);
        *(v523 + v1898[6]) = v1880;
        sub_1000B01B0();
        v1900();
        *(v523 + v1898[8]) = v1806;
        v1901 = (v523 + v1898[10]);
        *v1901 = v1646;
        v1901[1] = a9;
        sub_1000056BC();
        sub_1001D1B40();
        v1902 = v523 + v1898[13];
        *v1902 = v566;
        *(v1902 + 8) = 0;
        sub_10000FBB8();
        sub_1001D1B40();
        *(v523 + v1898[15]) = v11;
        (v2329)(v523 + v1898[16], v2092, v2322);
        sub_100095588();
        *(v523 + v1898[22]) = v2328;
        (v2324)(v523 + v1898[23], v2096, v2311);
        *(v523 + v1898[24]) = 7;
        (v1899)(v523 + v1898[19], v2100, v1070);
        (v1899)(v523 + v1898[20], v1894, v1070);
        v1903 = sub_10000C70C(0, &qword_100CA53F0);

        *(v523 + v1898[17]) = static NSDateFormatter.prevailingPeriodSymbols.getter();
        v1904 = v2331;
        if (v2331 >= 1)
        {
          sub_100079494();
          v1083 = v2332;
          while (1)
          {
            v917 = v1905 + 1;
            if (__OFADD__(v1905, 1))
            {
              goto LABEL_630;
            }

            sub_10003A150();
            if (v1906 >= v1904)
            {
              goto LABEL_561;
            }
          }
        }

        v917 = 0;
        v1083 = v2332;
LABEL_561:
        sub_1000EFF14(_swiftEmptyArrayStorage);
        sub_100307230(v917);
        if ((v917 & 0x8000000000000000) != 0)
        {
          goto LABEL_658;
        }

        if (v917)
        {
          sub_1000C84CC();
          v2329 = (v1880 + v1908);
          v523 = v1083 + 32;
          while (v1907 < v1904)
          {
            sub_1000E0F44();
            if (v603)
            {
              v1912 = v1911;
            }

            else
            {
              v1912 = v1910;
            }

            if (v1909 < 0)
            {
              goto LABEL_632;
            }

            sub_100020E7C();
            if (v687)
            {
              goto LABEL_633;
            }

            v1914 = *(v1083 + 72);
            (*(v1083 + 16))(v2171, &v2329[v1914 * v1913]);
            if ((sub_1000426F4() & 1) == 0)
            {
              sub_10000C978();
              v1903 = v2349;
            }

            v1070 = *(v1903 + 16);
            v1915 = *(v1903 + 24);
            if (v1070 >= v1915 >> 1)
            {
              sub_1000135B8(v1915);
              sub_1000925F4();
              v1903 = v2349;
            }

            *(v1903 + 16) = v1070 + 1;
            sub_100021D44();
            (*v523)(v1916 + v1070 * v1914, v2171, v2334);
            sub_1000B9148();
            v1083 = v2332;
            v1904 = v2331;
            if (v1684)
            {
              v1880 = v2333;
              if (v1912 < v2331)
              {
                goto LABEL_580;
              }

              goto LABEL_592;
            }
          }

          goto LABEL_631;
        }

        if (v1904 < 1)
        {
LABEL_592:

          v1923 = *(v2316 + 8);
          v1924 = v2323;
          v1923(v2076, v2323);
          v1923(v2100, v1924);
          *&v2330 = v1923;
          v2332 = *(v2293 + 8);
          (v2332)(v2096, v2311);
          sub_1000180EC(v2089, &qword_100CAB930);
          v2333 = *(v2308 + 8);
          (v2333)(v2092, v2322);
          sub_1000436D0();
          sub_10030968C(v2098, v1925);
          sub_1000747A8();
          v2331 = v1926;
          sub_10030968C(v2095, v1927);
          v2334 = *(v2301 + 8);
          (v2334)(v2088, v2321);
          v1923(v2087, v1924);
          v2329 = *(v2307 + 8);
          v1928 = v2318;
          (v2329)(v2094, v2318);
          (*(v2303 + 8))(v2099, v2312);
          (v2332)(v2072, v2311);
          sub_10030968C(v2073, v1070);
          (*(v2296 + 8))(v2091, v2317);
          sub_1000180EC(v2090, &qword_100CAB930);
          v842 = v2333;
          (v2333)(v2093, v2322);
          sub_10030968C(v2097, v2331);
          (v2334)(v2102, v2321);
          (v2330)(v2101, v1924);
          v850 = v1924;
          (v2329)(v2104, v1928);
          sub_1000228B4();
          sub_10030968C(v2103, v1929);
          v1930 = *(v2295 + 8);
          v1931 = v2294;
          (v1930)(v2077, v2294);
          (v1930)(v2106, v1931);
          sub_1000377D4();
          v1932(v2105, v2306);
          (v842)(v2319, v2322);
          v1933 = sub_1000176C8();
          v1934(v1933);
          sub_1000180EC(v2309, &qword_100CAB930);
          (v2334)(v2300, v2321);
          sub_10001321C();
          v1935 = v2074;
          v1936 = v2075;
          *&v2075[v1938] = v1937;
          (*(v2303 + 32))(&v1936[*(v1930 + 108)], v1935, v2312);
          sub_1000D41B4();
          *v1939 = 0;
          v1939[1] = 0;
          v1939[2] = 0;
          sub_100040DB0(v1939);
          v1941(&v1936[v1940], v2071, v2317);
          v1942 = &v1936[*(v1930 + 112)];
          v1943 = v2292;
          *v1942 = v2304;
          v1942[1] = v1943;
          sub_1000379F4(&v1936[*(v1930 + 116)]);
          v1944 = v2285;
          *v1945 = v2286;
          v1945[1] = v1944;
          v1946 = &v1936[*(v1930 + 128)];
          v1947 = v2283;
          *v1946 = v2284;
          *(v1946 + 1) = v1947;
          v860 = &v1936[*(v1930 + 132)];
          goto LABEL_141;
        }

        v1912 = 0;
        sub_100011468();
        *&v2330 = v1917;
LABEL_580:
        v2329 = (v1880 + v2330);
        v2328 = v1083 + 16;
        v1918 = (v1083 + 32);
        while (1)
        {
          v602 = __OFADD__(v1912, 2);
          if (v1912 < 0)
          {
            goto LABEL_638;
          }

          sub_100087134();
          if (v1912 >= v1919)
          {
            goto LABEL_639;
          }

          v1070 = *(v1083 + 72);
          (*(v1083 + 16))(v2161, &v2329[v1070 * v1912], v2334);
          if ((sub_1000426F4() & 1) == 0)
          {
            sub_10000C978();
            v1903 = v2349;
          }

          v1921 = *(v1903 + 16);
          v1920 = *(v1903 + 24);
          if (v1921 >= v1920 >> 1)
          {
            sub_1000135B8(v1920);
            sub_100195538();
            v1903 = v2349;
          }

          *(v1903 + 16) = v1921 + 1;
          sub_100021D44();
          (*v1918)(v1922 + v1921 * v1070, v2161, v2334);
          sub_1000C85A0();
          v1083 = v2332;
          if (v1684)
          {
            goto LABEL_592;
          }
        }
      }

      sub_10006948C();
      v1803 = 1;
LABEL_530:
      sub_1000C826C();
      sub_100086738(v1808);
      v1785 = (v1070 + 32);
      while (1)
      {
        v1083 = v1803 + 2;
        v1809 = __OFADD__(v1803, 2);
        if ((v1803 & 0x8000000000000000) != 0)
        {
          break;
        }

        sub_100087134();
        if (v1803 >= v1810)
        {
          goto LABEL_641;
        }

        v602 = *(v1070 + 72);
        sub_100088840();
        v1811();
        v1806 = v2349;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10000C978();
          sub_100309FFC();
        }

        v1812 = *(v1806 + 16);
        sub_100309F34();
        if (v687)
        {
          sub_1000135B8(v1813);
          sub_100195538();
          sub_100309FFC();
        }

        *(v1806 + 16) = 0;
        (*v1785)(v1806 + v2330 + v1812 * v602, v2159, v1800);
        v2349 = v1806;
        v1814 = v1083 >= v2331 || v1809;
        v1803 += 2;
        v1070 = v2332;
        if (v1814)
        {
          goto LABEL_546;
        }
      }
    }

    __break(1u);
LABEL_647:
    __break(1u);
    goto LABEL_648;
  }

  sub_10022C350(&qword_100CAC3F8);
  v558 = swift_allocObject();
  *(v558 + 16) = xmmword_100A3B020;
  static Color.green.getter();
  v559 = Gradient.Stop.init(color:location:)();
  sub_1000B90CC(v559, v560);
  static Color.cyan.getter();
  *(v558 + 48) = Gradient.Stop.init(color:location:)();
  *(v558 + 56) = v561;
  static Color.blue.getter();
  *(v558 + 64) = Gradient.Stop.init(color:location:)();
  *(v558 + 72) = v562;
  (*(v2228 + 104))(v2229, enum case for Color.RGBColorSpace.sRGB(_:), v2230);
  Color.init(_:red:green:blue:opacity:)();
  *(v558 + 80) = Gradient.Stop.init(color:location:)();
  *(v558 + 88) = v563;
  Gradient.init(stops:)();
  v564 = v2256;
  DetailChartGradientModel.init(gradient:startValue:endValue:)();
  sub_1000C8BB0();
  sub_100037FA8();
  v565();
  if (qword_100CA2198 != -1)
  {
    sub_1000080D4();
  }

  sub_100031C38();
  v566 = sub_1004B5EBC();
  v567 = *(v2302 + 16);
  v568 = v2306;
  v567(v2242, v564, v2306);
  sub_1000D3BE4();
  v569 = sub_1001ACFE0();
  v570(v569);
  v567(v2264, v564, v568);
  sub_100040FF4();
  ChartAreaStyle.init(gradient:opacity:)();
  type metadata accessor for ChartAreaStyle();
  sub_10002FDE8();
  sub_10000E7B0();
  sub_10001B350(v571, v572, v573, v574);
  sub_10022C350(&qword_100CAC430);
  v575 = sub_1000B97CC();
  *(v575 + 16) = xmmword_100A2D320;
  *(v575 + 32) = xmmword_100A3B010;
  v576 = v2257;
  sub_1001706B4();
  ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
  v577 = sub_1000B0E58();
  (v2270)(v577);
  v578 = DetailChartCondition.id.getter();
  v580 = v579;
  v581 = sub_10000E8F4();
  v582(v581, v556);
  sub_10022C350(&qword_100CAC400);
  sub_100016310();
  v583 = v2288;
  v584 = v576;
  v585 = v2294;
  v586(v2288, v584, v2294);
  sub_10000E7B0();
  sub_10001B350(v587, v588, v589, v585);
  v590 = v2231;
  sub_100003934();
  sub_10001B350(v591, v592, v593, v585);
  sub_100051BBC();
  sub_1000E1710();
  v594(v583);
  sub_1000AF510();
  sub_100071480();
  v595();
  sub_1000B0C44();
  sub_100042204();
  v2305 = v596;
  v2292 = v597;
  v597();
  v598 = sub_1002789B0(v523);
  v599 = v598 - 1;
  if (__OFSUB__(v598, 1))
  {
    __break(1u);
    goto LABEL_596;
  }

  if (v599 >= 4)
  {
    v600 = 0;
    v601 = 3;
    while (1)
    {
      v602 = v600 + 1;
      if (__OFADD__(v600, 1))
      {
        goto LABEL_339;
      }

      v603 = __OFADD__(v601, 6);
      v601 += 6;
      if (v603)
      {
        v601 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v600;
      if (v601 >= v599)
      {
        goto LABEL_32;
      }
    }
  }

  v602 = 0;
LABEL_32:
  sub_1000EFF14(_swiftEmptyArrayStorage);
  sub_100307230(v602);
  if (v602 < 0)
  {
LABEL_596:
    __break(1u);
    goto LABEL_597;
  }

  v2331 = v599;
  v2270 = v578;
  v2265 = v580;
  if (!v602)
  {
    v681 = v2334;
    if (v599 <= 3)
    {
      v683 = v2349;
      goto LABEL_94;
    }

    sub_100011468();
    v2328 = v685;
    v651 = 3;
    goto LABEL_50;
  }

  sub_100011468();
  v2328 = v677;
  *&v2325 = v523 + v677;
  *&v2324 = v678 + 16;
  v679 = (v678 + 32);
  v680 = 3;
  v681 = v2334;
  do
  {
    v601 = v2331;
    if (v680 >= v2331)
    {
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      if (v602 != enum case for DetailChartCondition.chanceOfRain(_:))
      {
        goto LABEL_662;
      }

      v1400 = v601;
      v1401 = v2239 == 1;
      sub_10022C350(&qword_100CAC3F8);
      v1402 = sub_1000B97CC();
      v2327 = *(v1400 + 1008);
      *(v1402 + 16) = v2327;
      static Color.cyan.getter();
      v1403 = Gradient.Stop.init(color:location:)();
      sub_1000B90CC(v1403, v1404);
      v2329 = Gradient.init(stops:)();
      v1405 = v2108;
      sub_100088370();
      v1406();
      v1407 = v2160;
      sub_100095588();
      sub_1000453D4();
      sub_10030A04C();
      v2331 = v1408;
      *&v2330 = v1409;
      v1409();
      v1410 = static Color.cyan.getter();
      *(v1405 + v1407[5]) = v1401;
      *(v1405 + v1407[8]) = 1;
      *(v1405 + v1407[9]) = 0;
      *(v1405 + v1407[10]) = v1410;
      v1411 = v2065;
      sub_1003DF9A4(v523, v2065);
      sub_1000113D0(v1411, 1);
      v1412 = v2323;
      v1413 = v2316;
      v1415 = v2067;
      v1414 = v2068;
      v1416 = v2107;
      if (v1684)
      {
        sub_1000180EC(v1411, &qword_100CAB930);
        sub_100003934();
        sub_10001B350(v1417, v1418, v1419, v1412);
        static WeatherClock.date.getter();
        sub_1000038B4(v1415, 1, v1412);
        v1483 = v2289;
        if (!v1684)
        {
          sub_1000180EC(v1415, &unk_100CB2CF0);
        }
      }

      else
      {
        DetailChartDataElement.date.getter();
        v1477 = v2334;
        v1478 = sub_1000B7B80();
        v1479(v1478, v1477);
        sub_10000E7B0();
        sub_10001B350(v1480, v1481, v1482, v1412);
        (*(v1413 + 32))(v2119, v1415, v1412);
        v1483 = v2289;
      }

      sub_100019394();
      v1484 = v2066;
      sub_1002F5700(v523, v1485, v2066);
      sub_100003A40(v1484);
      if (v1684)
      {
        sub_1000180EC(v1484, &qword_100CAB930);
        sub_100003934();
        sub_10001B350(v1486, v1487, v1488, v1412);
        static WeatherClock.date.getter();
        sub_1000038B4(v1414, 1, v1412);
        if (!v1684)
        {
          sub_1000180EC(v1414, &unk_100CB2CF0);
        }
      }

      else
      {
        DetailChartDataElement.date.getter();
        v1489 = sub_1000D3D24();
        v1490(v1489, v2334);
        sub_10000E7B0();
        sub_100043980(v1491, v1492, v1493, v1412);
        sub_100309F74();
        v1494();
      }

      if (static Date.> infix(_:_:)())
      {
        v1495 = sub_100031474();
        v1496 = v2314;
        (v2314)(v1495);
        (v1496)(v2234, v1416, v1412);
        v1497 = v2052;
        sub_100031474();
        DateInterval.init(start:end:)();
        v1498 = DateInterval.contains(_:)();
        (*(v2053 + 8))(v1497, v2054);
        v1499 = (v2297 + 104);
        if (v1498)
        {
          v1500 = v2086;
          v1501 = v2086;
          v1502 = v1483;
        }

        else
        {
          v1500 = v2086;
          v1501 = v2086;
          v1502 = v1416;
        }

        (v1496)(v1501, v1502, v1412);
        v1505 = v2298;
        (*v1499)(v1500, enum case for ChartLineStrokeStyle.solidFrom(_:), v2298);
        v1504 = v1500;
        v1503 = v2297;
      }

      else
      {
        v1503 = v2297;
        v1504 = v2086;
        v1505 = v2298;
        (*(v2297 + 104))(v2086, enum case for ChartLineStrokeStyle.solid(_:), v2298);
      }

      v1648 = v2109;
      DetailChartGradientModel.init(gradient:startValue:endValue:)();
      v1649 = v2244;
      (*(v1503 + 16))(v2244, v1504, v1505);
      v1650 = *(v2302 + 16);
      v2328 = v2302 + 16;
      v1651 = v2242;
      v1652 = v2306;
      (v1650)(v2242, v1648, v2306);
      sub_1000D3BE4();
      v1653(v1651);
      v2329 = v1650;
      (v1650)(v2264, v1648, v1652);
      ChartAreaStyle.init(gradient:opacity:)();
      type metadata accessor for ChartAreaStyle();
      sub_10000E7B0();
      sub_10001B350(v1654, v1655, v1656, v1657);
      sub_1001706B4();
      ChartLineStyle.init(strokeStyle:lineThickness:lineColor:lineDash:opacity:opacityIncreasedContrast:areaStyle:)();
      v2349 = v523;
      v1658 = v2239;
      if (v2239 != 1)
      {
        sub_100309FB4();
        v556 = v2323;
        goto LABEL_487;
      }

      v1659 = v2050;
      sub_100095588();
      v1660 = sub_10000C7F0();
      v1661 = v2334;
      sub_1000038B4(v1660, v1662, v2334);
      v1663 = v2157;
      if (v1684)
      {
        sub_1000180EC(v1659, &qword_100CAB930);
        sub_100309FB4();
        v1658 = v2239;
        v556 = v2323;
        goto LABEL_487;
      }

      v1678 = v2332;
      v1679 = v2055;
      v1680 = sub_100031474();
      v1682 = v1681(v1680);
      __chkstk_darwin(v1682);
      v2376._object = v2255;
      v2032 = v2289;
      v1649 = v2042;
      sub_1008DBAC8();
      v1683 = v2049;
      sub_1000113D0(v1649, 1);
      v556 = v2323;
      if (v1684)
      {
        v1685 = *(v1678 + 8);
        v523 = v1678 + 8;
        v1685(v1679, v1661);
        sub_1000180EC(v1649, &qword_100CAC3C8);
        sub_100309FB4();
        v1658 = v2239;
        goto LABEL_487;
      }

      v1948 = v2046;
      v1949 = v2048;
      v1950 = sub_100192210();
      v1951(v1950);
      v2157 = v1663;
      v1952 = v2313;
      v1953 = v2272;
      v1954 = v2235;
      v2326 = sub_100302190(v2289, &v2272[v2313]);
      *&v2325 = v1955;
      (*(v1948 + 16))(v2044, v1949, v1683);
      v1956 = v2320;
      sub_100095588();
      v1957 = v2304;
      sub_100088370();
      v1958();
      sub_10030A04C();
      (v2330)();
      (*(v2033 + 16))(v2035, v1952 + *(v1956 + 48), v2034);
      (*(v2291 + 16))(v2232, &v1953[v1952], v2290);
      WeatherValueCalculationContext.init(hourWeather:dayWeather:chartCondition:units:currentWeather:timeZone:)();
      v1959 = v1954[15];
      v1960 = v1954 + 12;
      v580 = v2238;
      sub_1000161C0(v1960, v1959);
      *&v2324 = dispatch thunk of DetailChartDataPointValueCalculatorType.accessibilityValueDescription(for:)();
      v2288 = v1961;
      v1962 = v2289;
      sub_100309F74();
      sub_100087D78();
      v1963();
      DetailChartDataElement.value.getter();
      v1965 = v2036;
      v1964 = v2037;
      v1966 = v2038;
      (*(v2037 + 104))(v2036, enum case for HourWeather.SecondValueUseCase.chart(_:), v2038);
      v1967 = v2299;
      HourWeather.secondValue(for:units:useCase:)();
      (*(v1964 + 8))(v1965, v1966);
      sub_100302354(v1952 + v1957, v1967, v2233);

      sub_100302C08(v1952 + v1957);
      v2032 = 0;
      v2031 = v2288;
      v2030 = v2324;
      sub_100309F94();
      v1968 = DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)();
      __chkstk_darwin(v1968);
      v2376._object = v1962;
      v556 = v2333;
      v1969 = v2157;
      v598 = sub_1008EF6B8(sub_1003095A0, &v2030, v2333);
      v2157 = v1969;
      if (v1970)
      {
        v1971 = v2332;
        v708 = *(v2332 + 16);
        v1972 = v2334;
        v651 = v2039;
        v711 = v2040;
        goto LABEL_608;
      }

LABEL_597:
      v702 = v598;
      sub_1009F3DA8(v598, 1, v556);
      v1973 = v2332;
      sub_100011468();
      v708 = v1973[2];
      v1975 = v2379._object;
      v1976 = v2334;
      v708(v2379._object, v556 + v1974 + v1973[9] * v702, v2334);
      DetailChartDataElement.date.getter();
      v556 = v1973[1];
      (v556)(v1975, v1976);
      Date.distance(to:)();
      v1978 = v1977;
      (*(v2316 + 8))(v580, v2323);
      static DetailChartCondition.chanceOfRainNowHourThreshold.getter();
      v651 = v2039;
      v711 = v2040;
      if (v1978 <= v1979)
      {
        goto LABEL_606;
      }

      v1972 = v2334;
      goto LABEL_607;
    }

    v651 = v680 + 6;
    v601 = 0x7FFFFFFFFFFFFFFFLL;
    if (__OFADD__(v680, 6))
    {
      v590 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v590 = v680 + 6;
    }

    if (v680 < 0)
    {
      goto LABEL_333;
    }

    v601 = *(v523 + 16);
    if (v680 >= v601)
    {
      goto LABEL_334;
    }

    v682 = *(v2332 + 72);
    (*(v2332 + 16))(v2330, v2325 + v682 * v680, v681);
    v683 = v2349;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000C978();
      sub_10030A020();
    }

    v556 = *(v683 + 16);
    v684 = *(v683 + 24);
    if (v556 >= v684 >> 1)
    {
      sub_1000135B8(v684);
      sub_1006A7AB4();
      sub_10030A020();
    }

    *(v683 + 16) = v556 + 1;
    (*v679)(v683 + v2328 + v556 * v682, v2330, v681);
    v2349 = v683;
    v680 = v590;
    --v602;
    v523 = v2333;
  }

  while (v602);
  if (v590 < v2331)
  {
LABEL_50:
    *&v2330 = v2333 + v2328;
    *&v2325 = v2332 + 16;
    v686 = (v2332 + 32);
    do
    {
      v590 = v651 + 6;
      v523 = __OFADD__(v651, 6);
      if (v651 < 0)
      {
        goto LABEL_364;
      }

      sub_10012005C();
      if (v687)
      {
        goto LABEL_365;
      }

      v688 = *(v2332 + 72);
      (*(v2332 + 16))(v2326, v2330 + v688 * v651, v681);
      v683 = v2349;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000C978();
        sub_10030A020();
      }

      v556 = *(v683 + 16);
      sub_1000BC6B4();
      if (v687)
      {
        sub_1000135B8(v689);
        sub_1000925F4();
        sub_10030A020();
      }

      *(v683 + 16) = 0;
      (*v686)(v683 + v2328 + v556 * v688, v2326, v681);
      v2349 = v683;
      if (v590 >= v2331)
      {
        v690 = 1;
      }

      else
      {
        v690 = v523;
      }

      v651 += 6;
    }

    while ((v690 & 1) == 0);
  }

LABEL_94:
  sub_10022C350(&qword_100CAC408);
  sub_10002FDD8();
  v736 = v2284;
  *v2284 = v737;
  v738 = v736;
  sub_100003934();
  sub_10001B350(v739, v740, v741, v2323);
  sub_1000C8FD0();
  v742 = v2313;
  v743(&v681[v738], &v2272[v2313], v2290);
  v744 = v2308 + 16;
  *&v2330 = *(v2308 + 16);
  sub_1000522E4();
  v745();
  sub_100095588();
  sub_10003B950();
  v2326 = v747;
  *&v2325 = v748;
  v748(v2278, &v742[v746], v2317);
  v2304 = DetailChartCondition.title.getter();
  v2291 = v749;
  sub_1000176DC();
  v750 = v2267;
  v751 = [v2267 mainBundle];
  v2376._object = v590;
  sub_1000080F4();
  v2365._countAndFlagsBits = 0xD000000000000030;
  v756 = NSLocalizedString(_:tableName:bundle:value:comment:)(v752, v753, v754, v755, v2365);
  v2290 = v756._countAndFlagsBits;
  v2272 = v756._object;

  sub_1000176DC();
  v757 = [v750 mainBundle];
  v2376._object = v590;
  sub_10003C338();
  v758._object = 0xE800000000000000;
  v762 = NSLocalizedString(_:tableName:bundle:value:comment:)(v759, v760, v761, v758, v2366);
  v2267 = v762._countAndFlagsBits;
  v2266 = v762._object;

  sub_10001BD24();
  sub_1001D1B40();
  v763 = v2268;
  v764 = v2222;
  v765 = v2269;
  (*(v2268 + 16))(v2222, v2299, v2269);
  sub_100020634();
  sub_1000B98D8();
  v768 = v767 & ~v766;
  v769 = swift_allocObject();
  sub_10001E7CC();
  sub_1003096E4();
  v770 = *(v763 + 32);
  v2313 = v769;
  v771 = v769 + v768;
  v772 = v2323;
  v770(v771, v764, v765);
  sub_10022C350(&qword_100CAC418);
  sub_100003934();
  sub_10001B350(v773, v774, v775, v776);
  v566 = sub_1004B5F28();
  v777 = sub_1004B5F04();
  v778 = v2247;
  *v2247 = v777;
  v779 = v2293;
  v780 = v2311;
  (*(v2293 + 104))(v778, enum case for ChartPeakMarkStyle.line(_:), v2311);
  sub_1000E14C8();
  v602 = v2249;
  v781(v2249);
  v2320 = *(v2307 + 16);
  (v2320)(v2281, v2288, v2318);
  sub_100087D78();
  v782();
  (v2292)(v2275, v2287, v2321);
  sub_1000056BC();
  sub_1001D1B40();
  sub_10000FBB8();
  sub_1001D1B40();
  v2328 = v744;
  (v2330)(v2279, v2280, v2322);
  sub_100095588();
  v783 = v780;
  v784 = v2334;
  *&v2324 = *(v779 + 16);
  (v2324)(v2283, v778, v783);
  v785 = v2220;
  sub_1003DF9A4(v2333, v2220);
  sub_100003A40(v785);
  if (v1684)
  {
    sub_1000180EC(v785, &qword_100CAB930);
    v786 = v2218;
    sub_100003934();
    sub_10001B350(v787, v788, v789, v772);
    static WeatherClock.date.getter();
    sub_1000038B4(v786, 1, v772);
    v795 = v2217;
    if (!v1684)
    {
      sub_1000180EC(v786, &unk_100CB2CF0);
    }
  }

  else
  {
    v790 = v2218;
    DetailChartDataElement.date.getter();
    v784 = v2334;
    (*(v2332 + 8))(v785, v2334);
    sub_10000E7B0();
    sub_100043980(v791, v792, v793, v772);
    v794(v2273, v790, v772);
    v795 = v2217;
  }

  sub_100019394();
  v523 = v2333;
  sub_1002F5700(v2333, v796, v795);
  sub_100003A40(v795);
  if (v1684)
  {
    sub_1000180EC(v795, &qword_100CAB930);
    v797 = v2219;
    v798 = sub_100005508();
    v806 = v2323;
    sub_10001B350(v798, v799, v800, v2323);
    v810 = v2240;
    static WeatherClock.date.getter();
    v801 = sub_10000C7F0();
    sub_1000038B4(v801, v802, v806);
    if (!v1684)
    {
      sub_1000180EC(v797, &unk_100CB2CF0);
    }
  }

  else
  {
    v803 = v2219;
    DetailChartDataElement.date.getter();
    v804 = sub_1000D3D24();
    v805(v804, v784);
    sub_10000E7B0();
    v806 = v2323;
    sub_100043980(v807, v808, v809, v2323);
    v810 = v2240;
    v811(v2240, v803, v806);
  }

  (v2325)(v2246, v2278, v2317);
  (*(v2303 + 16))(v2250, v602, v2312);
  ChartKind.showSecondLine.getter();
  v812 = v2251;
  v813 = sub_10008870C(v2265);
  (v2320)(v813);
  v814 = v2314;
  (v2314)(v812 + *(v602 + 72), v2274, v806);
  v815 = sub_100309FC0();
  (v2292)(v815, v2275, v2321);
  *(v812 + *(v602 + 32)) = v683;
  *(v812 + *(v602 + 40)) = xmmword_100A3B050;
  sub_1000056BC();
  sub_1001D1B40();
  v816 = v812 + *(v602 + 52);
  *v816 = 0x3FC999999999999ALL;
  *(v816 + 8) = 0;
  sub_10000FBB8();
  sub_1001D1B40();
  *(v812 + *(v602 + 60)) = v566;
  (v2330)(v812 + *(v602 + 64), v2279, v2322);
  sub_100095588();
  *(v812 + *(v602 + 88)) = _swiftEmptyArrayStorage;
  (v2324)(v812 + *(v602 + 92), v2283, v2311);
  v817 = sub_100309F40();
  (v814)(v817, v2273, v806);
  (v814)(v812 + *(v602 + 80), v810, v806);
  v818 = sub_10000C70C(0, &qword_100CA53F0);

  v819 = static NSDateFormatter.prevailingPeriodSymbols.getter();
  sub_100309FA0(v819);
  if (v820 == v603)
  {
    sub_100079494();
    v614 = v2332;
    while (1)
    {
      v822 = v821 + 1;
      if (__OFADD__(v821, 1))
      {
        goto LABEL_335;
      }

      sub_10003A150();
      if (v601 >= v602)
      {
        goto LABEL_108;
      }
    }
  }

  v822 = 0;
  v614 = v2332;
LABEL_108:
  sub_1000EFF14(_swiftEmptyArrayStorage);
  sub_100307230(v822);
  if (v822 < 0)
  {
    __break(1u);
    goto LABEL_600;
  }

  if (v822)
  {
    sub_1000C84CC();
    v601 = v523 + v824;
    v2328 = v601;
    do
    {
      if (v823 >= v602)
      {
        goto LABEL_336;
      }

      sub_1000E0F44();
      if (v603)
      {
        v827 = v826;
      }

      else
      {
        v827 = v601;
      }

      if ((v825 & 0x8000000000000000) != 0)
      {
        goto LABEL_337;
      }

      v601 = *(v523 + 16);
      if (v825 >= v601)
      {
        goto LABEL_338;
      }

      v828 = *(v614 + 72);
      (*(v614 + 16))(v2329, v2328 + v828 * v825, v2334);
      if ((sub_1000426F4() & 1) == 0)
      {
        sub_10000C978();
        v818 = v2349;
      }

      v830 = *(v818 + 16);
      v829 = *(v818 + 24);
      if (v830 >= v829 >> 1)
      {
        sub_1000135B8(v829);
        sub_1000925F4();
        v818 = v2349;
      }

      *(v818 + 16) = v830 + 1;
      sub_100021D44();
      (*(v614 + 32))(v831 + v830 * v828, v2329, v2334);
      sub_1000B9148();
      v523 = v2333;
      v602 = v2331;
    }

    while (!v1684);
    if (v827 >= v2331)
    {
LABEL_139:

      v806 = v2323;
      v810 = v2240;
      goto LABEL_140;
    }

LABEL_127:
    sub_100086738(v523 + v2330);
    v556 = v614 + 32;
    v523 = v827;
    while (1)
    {
      v651 = v827 + 2;
      v602 = __OFADD__(v827, 2);
      if (v827 < 0)
      {
        break;
      }

      sub_100087134();
      if (v827 >= v832)
      {
        goto LABEL_363;
      }

      v833 = *(v614 + 72);
      (*(v614 + 16))(v2327, &v2329[v833 * v827], v2334);
      if ((sub_1000426F4() & 1) == 0)
      {
        sub_10000C978();
        v818 = v2349;
      }

      v834 = *(v818 + 16);
      sub_100309F34();
      if (v687)
      {
        sub_1000135B8(v835);
        sub_100195538();
        v818 = v2349;
      }

      *(v818 + 16) = v822;
      sub_100021D44();
      (*v556)(v836 + v834 * v833, v2327, v2334);
      sub_1000C85A0();
      v614 = v2332;
      if (v1684)
      {
        goto LABEL_139;
      }
    }

    __break(1u);
LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
LABEL_365:
    __break(1u);
    goto LABEL_366;
  }

  if (v602 >= 1)
  {
    v827 = 0;
    sub_10006948C();
    goto LABEL_127;
  }

LABEL_140:
  v837 = *(v2316 + 8);
  v837(v810, v806);
  v837(v2273, v806);
  sub_100199470();
  v838(v2283, v2311);
  sub_1000180EC(v2276, &qword_100CAB930);
  v2334 = *(v2308 + 8);
  (v2334)(v2279, v2322);
  sub_10030968C(v2285, type metadata accessor for ChartViewModel.Background);
  sub_1000747A8();
  v2332 = v839;
  sub_10030968C(v2282, v840);
  *&v2330 = *(v2301 + 8);
  v841 = v2321;
  (v2330)(v2275, v2321);
  v837(v2274, v2323);
  v2329 = *(v2307 + 8);
  (v2329)(v2281, v2318);
  v842 = v2303;
  (*(v2303 + 8))(v2249, v2312);
  (v2333)(v2247, v2311);
  sub_10030968C(v2248, type metadata accessor for ChartViewModel.Background);
  v843 = v2296;
  (*(v2296 + 8))(v2278, v2317);
  sub_1000180EC(v2277, &qword_100CAB930);
  v844 = v2322;
  v845 = v2334;
  (v2334)(v2280, v2322);
  sub_10030968C(v2284, v2332);
  v846 = v841;
  v847 = v2330;
  (v2330)(v2287, v846);
  (v2331)(v2286, v2323);
  (v2329)(v2288, v2318);
  sub_1000E59C8();
  v848(v2257, v2294);
  sub_1000377D4();
  v849(v2256, v2306);
  (v845)(v2319, v844);
  v850 = v2323;
  v851 = sub_1000176C8();
  v852(v851);
  sub_1000180EC(v2309, &qword_100CAB930);
  v847(v2300, v2321);
  sub_10001321C();
  v853 = v2251;
  v855 = sub_10030A058(v854);
  v856(v855, v2250, v2312);
  sub_1000D41B4();
  *v857 = 0;
  *(v857 + 8) = 0;
  *(v857 + 16) = 0;
  *(v857 + 24) = 64;
  (*(v843 + 32))(v853 + *(v844 + 104), v2246, v2317);
  sub_1000C8E30();
  sub_1000379F4(v858);
  sub_1000BAED4(v859);
LABEL_141:
  *v860 = sub_100309F30;
  v861 = v2313;
LABEL_142:
  *(v860 + 1) = v861;
LABEL_216:
  sub_1003096E4();
LABEL_275:
  (*(v2262 + 8))(v2255, v2263);
  return (*(v842 + 8))(v2289, v850);
}

uint64_t sub_100301560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v117 = a3;
  v113 = a7;
  v114 = a8;
  LODWORD(v112) = a6;
  v120 = a5;
  v122 = a4;
  v118 = a2;
  v116 = a9;
  v14 = type metadata accessor for DetailChartDataElement.ValueLabel();
  __chkstk_darwin(v14 - 8);
  v115 = (&v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for HourWeather.SecondValueUseCase();
  v108 = *(v16 - 8);
  v109 = v16;
  __chkstk_darwin(v16);
  v106 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for TimeZone();
  v100 = *(v103 - 8);
  __chkstk_darwin(v103);
  v99 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for CurrentWeather();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for ConditionUnits();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v94 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for DetailChartCondition();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v89 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&qword_100CAB9B0);
  __chkstk_darwin(v22 - 8);
  v86 = &v80 - v23;
  v82 = type metadata accessor for HourWeather();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v85 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for WeatherValueCalculationContext();
  v110 = *(v25 - 8);
  v111 = v25;
  __chkstk_darwin(v25);
  v119 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Calendar.Component();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v31 - 8);
  v33 = &v80 - v32;
  v34 = type metadata accessor for Date();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v38 = &v80 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v40 = &v80 - v39;
  (*(v28 + 104))(v30, enum case for Calendar.Component.minute(_:), v27);
  v121 = a1;
  HourWeather.date.getter();
  Calendar.date(bySetting:value:of:)();
  v41 = *(v35 + 8);
  v104 = v38;
  v102 = v35 + 8;
  v101 = v41;
  v41(v38, v34);
  (*(v28 + 8))(v30, v27);
  v42 = sub_100024D10(v33, 1, v34);
  v107 = v34;
  v98 = v35;
  if (v42 == 1)
  {
    v43 = v121;
    HourWeather.date.getter();
    if (sub_100024D10(v33, 1, v34) != 1)
    {
      sub_1000180EC(v33, &unk_100CB2CF0);
    }
  }

  else
  {
    (*(v35 + 32))(v40, v33, v34);
    v43 = v121;
  }

  v84 = a11;
  v83 = a10;
  v44 = type metadata accessor for ConditionDetailChartDataInput(0);
  v45 = v44[10];
  v46 = v122;
  v105 = v40;
  v47 = v117;
  v91 = sub_100302190(v40, v122 + v45);
  v90 = v48;
  (*(v81 + 16))(v85, v43, v82);
  sub_100095588();
  v118 = v44[6];
  (*(v87 + 16))(v89, v46 + v118, v88);
  (*(v92 + 16))(v94, v120, v93);
  (*(v95 + 16))(v96, v46 + v44[12], v97);
  (*(v100 + 16))(v99, v46 + v45, v103);
  WeatherValueCalculationContext.init(hourWeather:dayWeather:chartCondition:units:currentWeather:timeZone:)();
  sub_1000161C0((v47 + 96), *(v47 + 120));
  dispatch thunk of DetailChartDataPointValueCalculatorType.value(for:)();
  Double.clamped(to:)();
  v50 = v49;
  LODWORD(v103) = enum case for HourWeather.SecondValueUseCase.chart(_:);
  v51 = v108;
  v100 = *(v108 + 104);
  v52 = v106;
  v53 = v109;
  (v100)(v106);
  HourWeather.secondValue(for:units:useCase:)();
  v54 = *(v51 + 8);
  v54(v52, v53);
  Double.clamped(to:)();
  v56 = v55;
  (v100)(v52, v103, v53);
  v57 = COERCE_DOUBLE(HourWeather.thirdValue(for:units:useCase:)());
  v59 = v58;
  v54(v52, v53);
  if ((v59 & 1) == 0)
  {
    Double.clamped(to:)();
    v57 = v60;
  }

  v61 = v105;
  if (v112)
  {
    sub_1000161C0((v117 + 96), *(v117 + 120));
    v112 = dispatch thunk of DetailChartDataPointValueCalculatorType.accessibilityValueDescription(for:)();
    v109 = v62;
  }

  else
  {
    v112 = 0;
    v109 = 0xE000000000000000;
  }

  v63 = v98;
  v65 = v113;
  v64 = v114;
  v66 = *v113;
  if (*v113 >= v50)
  {
    v66 = v50;
  }

  if (*(v113 + 8))
  {
    v66 = v50;
  }

  *v113 = v66;
  *(v65 + 8) = 0;
  v67 = *v64;
  if (v50 > *v64)
  {
    v67 = v50;
  }

  if (*(v64 + 8))
  {
    v67 = v50;
  }

  *v64 = v67;
  *(v64 + 8) = 0;
  v68 = v83;
  v69 = *v83;
  if (*v83 >= v56)
  {
    v69 = v56;
  }

  if (*(v83 + 8))
  {
    v69 = v56;
  }

  *v83 = v69;
  *(v68 + 8) = 0;
  v70 = v84;
  v71 = *v84;
  if (v56 > *v84)
  {
    v71 = v56;
  }

  if (*(v84 + 8))
  {
    v71 = v56;
  }

  *v84 = v71;
  *(v70 + 8) = 0;
  LODWORD(v117) = v59;
  if ((v59 & 1) == 0)
  {
    v72 = v57;
    v73 = *a12;
    if (*a12 >= v57)
    {
      v73 = v57;
    }

    if (*(a12 + 8))
    {
      v73 = v57;
    }

    *a12 = v73;
    *(a12 + 8) = 0;
    v74 = *a13;
    if (*a13 < v57)
    {
      v74 = v57;
    }

    if (!*(a13 + 8))
    {
      v72 = v74;
    }

    *a13 = v72;
    *(a13 + 8) = 0;
  }

  v75 = v107;
  (*(v63 + 16))(v104, v61, v107);
  v76 = v61;
  v77 = v122;
  v78 = v118;
  sub_100302354(v122 + v118, v120, v115);

  sub_100302C08(v77 + v78);
  DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)();
  (*(v110 + 8))(v119, v111);
  return v101(v76, v75);
}

uint64_t sub_100302190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartViewModelFactory.FormattedHoursCacheKey(0);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  v10 = *(v5 + 28);
  v11 = type metadata accessor for TimeZone();
  (*(*(v11 - 8) + 16))(&v8[v10], a2, v11);
  Cache.subscript.getter();
  if (v17)
  {
    v12 = v16;
  }

  else
  {
    v12 = Date.formattedHours(timeZone:forAccessibility:)();
    v14 = v13;
    sub_1001D1B40();
    v16 = v12;
    v17 = v14;

    Cache.subscript.setter();
  }

  sub_10030968C(v8, type metadata accessor for DetailChartViewModelFactory.FormattedHoursCacheKey);
  return v12;
}

uint64_t sub_100302354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v91 = a1;
  v87 = a2;
  v92 = a3;
  sub_10022C350(&qword_100CAC450);
  sub_1000037C4();
  v82 = v4;
  v83 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000039BC();
  v81 = v6;
  sub_1000038CC();
  type metadata accessor for Wind();
  sub_1000037C4();
  v79 = v8;
  v80 = v7;
  __chkstk_darwin(v7);
  sub_1000038E4();
  v78 = v9;
  sub_10022C350(&qword_100CAB938);
  sub_1000037C4();
  v85 = v11;
  v86 = v10;
  v12 = __chkstk_darwin(v10);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  sub_10000E70C();
  v84 = v15;
  sub_1000038CC();
  type metadata accessor for UVIndex();
  sub_1000037C4();
  v89 = v17;
  v90 = v16;
  __chkstk_darwin(v16);
  sub_1000038E4();
  v88 = v18;
  sub_1000038CC();
  v19 = type metadata accessor for PressureTrend();
  sub_1000037C4();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_1000037D8();
  v25 = v24 - v23;
  v26 = type metadata accessor for WeatherCondition();
  sub_1000037C4();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_1000037D8();
  v32 = v31 - v30;
  v33 = type metadata accessor for DetailChartCondition();
  sub_1000037C4();
  v35 = v34;
  __chkstk_darwin(v36);
  sub_1000037D8();
  v39 = v38 - v37;
  (*(v35 + 16))(v38 - v37, v91, v33);
  v40 = (*(v35 + 88))(v39, v33);
  if (v40 == enum case for DetailChartCondition.humidity(_:))
  {
    sub_10000C70C(0, &qword_100CA72F8);
    isa = static NSNumberFormatter.percent.getter();
    HourWeather.humidity.getter();
    v42.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
    v43 = [isa stringFromNumber:v42.super.super.isa];
    goto LABEL_3;
  }

  if (v40 == enum case for DetailChartCondition.pressure(_:))
  {
    v45 = *(sub_10022C350(&qword_100CAC458) + 48);
    HourWeather.pressureTrend.getter();
    v46 = PressureTrend.symbolName.getter();
    v48 = v47;
    (*(v21 + 8))(v25, v19);
    v49 = v92;
    *v92 = v46;
    v49[1] = v48;
    v50 = type metadata accessor for Image.TemplateRenderingMode();
    v51 = v49 + v45;
    v52 = 1;
LABEL_20:
    sub_10001B350(v51, v52, 1, v50);
    v60 = &enum case for DetailChartDataElement.ValueLabel.systemImage(_:);
LABEL_28:
    v70 = *v60;
    type metadata accessor for DetailChartDataElement.ValueLabel();
    sub_1000037E8();
    return (*(v71 + 104))(v49, v70);
  }

  if (v40 == enum case for DetailChartCondition.precipitationTotal(_:) || v40 == enum case for DetailChartCondition.temperature(_:) || v40 == enum case for DetailChartCondition.temperatureFeelsLike(_:))
  {
    HourWeather.condition.getter();
    v55 = HourWeather.isDaylight.getter();
    v56 = WeatherCondition.conditionIconName(isDaytime:)(v55 & 1);
    (*(v28 + 8))(v32, v26);
    countAndFlagsBits = 0x2E78616D2E6E7573;
    if (v56.value._object)
    {
      countAndFlagsBits = v56.value._countAndFlagsBits;
    }

    object = 0xEC0000006C6C6966;
    if (v56.value._object)
    {
      object = v56.value._object;
    }

    v49 = v92;
    *v92 = countAndFlagsBits;
    v49[1] = object;
    v59 = *(sub_10022C350(&qword_100CAC458) + 48);
    static Image.TemplateRenderingMode.macSafeOriginal.getter();
    v50 = type metadata accessor for Image.TemplateRenderingMode();
    v51 = v49 + v59;
    v52 = 0;
    goto LABEL_20;
  }

  if (v40 == enum case for DetailChartCondition.uvIndex(_:))
  {
    sub_10000C70C(0, &qword_100CA72F8);
    isa = static NSNumberFormatter.digits.getter();
    v61 = v88;
    HourWeather.uvIndex.getter();
    v62 = UVIndex.value.getter();
    v63 = v90;
    v64 = *(v89 + 8);
    v64(v61, v90);
    v42.super.super.isa = [objc_allocWithZone(NSNumber) initWithInteger:v62];
    v44 = [isa stringFromNumber:v42.super.super.isa];

    if (!v44)
    {
      HourWeather.uvIndex.getter();
      v65 = UVIndex.value.getter();
      v64(v61, v63);
      v93 = v65;
      v42.super.super.isa = &v93;
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_1000370D0();
      goto LABEL_27;
    }

LABEL_4:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000370D0();

LABEL_27:
    v49 = v92;
    *v92 = v42.super.super.isa;
    v49[1] = isa;
    v60 = &enum case for DetailChartDataElement.ValueLabel.text(_:);
    goto LABEL_28;
  }

  if (v40 == enum case for DetailChartCondition.visibility(_:))
  {
    HourWeather.visibility.getter();
    v66 = ConditionUnits.visibility.getter();
    v67 = v86;
    Measurement<>.converted(to:)();

    v68 = *(v85 + 8);
    v68(v14, v67);
    Measurement.value.getter();
    v69 = sub_10000810C();
    (v68)(v69);
    sub_10000C70C(0, &qword_100CA72F8);
    v42.super.super.isa = static NSNumberFormatter.decimal.getter();
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    v44 = [(objc_class *)v42.super.super.isa stringFromNumber:isa];

    if (v44)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  if (v40 == enum case for DetailChartCondition.wind(_:))
  {
    v73 = v78;
    HourWeather.wind.getter();
    v74 = v81;
    Wind.direction.getter();
    (*(v79 + 8))(v73, v80);
    v75 = v83;
    Measurement.value.getter();
    v77 = v76;
    (*(v82 + 8))(v74, v75);
    v49 = v92;
    *v92 = v77;
    v60 = &enum case for DetailChartDataElement.ValueLabel.windDirectionImage(_:);
    goto LABEL_28;
  }

  if (v40 == enum case for DetailChartCondition.chanceOfRain(_:))
  {
    sub_10000C70C(0, &qword_100CA72F8);
    isa = static NSNumberFormatter.percent.getter();
    HourWeather.precipitationChance.getter();
    v42.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
    v43 = [isa stringFromNumber:v42.super.super.isa];
LABEL_3:
    v44 = v43;

    if (v44)
    {
      goto LABEL_4;
    }

LABEL_26:
    v42.super.super.isa = 0;
    isa = 0xE000000000000000;
    goto LABEL_27;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100302C08(uint64_t a1)
{
  v2 = type metadata accessor for Precipitation();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for DetailChartCondition();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D8();
  (*(v11 + 16))(v14 - v13, a1, v9);
  v15 = sub_10000810C();
  v17 = v16(v15);
  v18 = enum case for DetailChartCondition.precipitationTotal(_:);
  v19 = sub_10000810C();
  v20(v19);
  v21 = 0;
  if (v17 == v18)
  {
    HourWeather.precipitation.getter();
    v21 = Precipitation.chartColor.getter();
    (*(v4 + 8))(v8, v2);
  }

  return v21;
}

uint64_t sub_100302DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ConditionDetailChartDataInput(0);
  if (!*(a1 + *(v4 + 36)))
  {
    v5 = *(v4 + 32);
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 16))(a2, a1 + v5, v6);
    goto LABEL_5;
  }

  if (*(a1 + *(v4 + 36)) == 1)
  {
    CurrentWeather.date.getter();
LABEL_5:
    v7 = &enum case for ChartLineStrokeStyle.dashed(_:);
    goto LABEL_7;
  }

  v7 = &enum case for ChartLineStrokeStyle.solid(_:);
LABEL_7:
  v8 = *v7;
  v9 = type metadata accessor for ChartLineStrokeStyle();
  v10 = *(*(v9 - 8) + 104);

  return v10(a2, v8, v9);
}

double sub_100302EA8(double a1, double a2)
{
  v2 = a1 - a2;
  result = 15.0;
  if (v2 <= 72.0)
  {
    result = 12.0;
    if (v2 <= 60.0)
    {
      result = 10.0;
      if (v2 <= 48.0)
      {
        result = 8.0;
        if (v2 <= 36.0)
        {
          result = 6.0;
          if (v2 <= 30.0)
          {
            result = 3.0;
            if (v2 > 18.0)
            {
              return 5.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100302F24(uint64_t result, double a2, double a3, double a4)
{
  if (a2 <= a3)
  {
    a2 = a3;
  }

  if (a2 <= a4)
  {
    a2 = a4;
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (a2 <= v6)
      {
        a2 = v7;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_100302F58(uint64_t result, double a2, double a3, double a4)
{
  if (a3 < a2)
  {
    a2 = a3;
  }

  if (a2 > a4)
  {
    a2 = a4;
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 < a2)
      {
        a2 = v7;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_100302F8C(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v45 = v8;
  v10 = __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  sub_10000E70C();
  v36 = v13;
  v43 = a2;
  v44 = a3;
  v14 = sub_1003094F0(a1, a2, a3);
  v46 = _swiftEmptyArrayStorage;
  sub_1006A7AB4();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = v46;
    v42 = a4;
    if (v14)
    {
      v41 = v12;
      sub_100011468();
      v39 = v17;
      v38 = a4 + v17;
      v37 = v18 + 16;
      v19 = (v18 + 32);
      while (1)
      {
        v20 = a1 <= v43;
        if (v16 > 0)
        {
          v20 = a1 >= v43;
        }

        if (v20)
        {
          break;
        }

        if (__OFADD__(a1, v16))
        {
          v21 = ((a1 + v16) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v21 = a1 + v16;
        }

        if (a1 < 0)
        {
          goto LABEL_33;
        }

        if (a1 >= *(a4 + 16))
        {
          goto LABEL_34;
        }

        v22 = *(v45 + 72);
        v23 = v40;
        v24 = v41;
        (*(v45 + 16))(v41, v38 + v22 * a1, v40);
        v46 = v15;
        v25 = v15[2];
        if (v25 >= v15[3] >> 1)
        {
          sub_1006A7AB4();
          v15 = v46;
        }

        v15[2] = v25 + 1;
        (*v19)(v15 + v39 + v25 * v22, v24, v23);
        a1 = v21;
        --v14;
        a4 = v42;
        v16 = v44;
        if (!v14)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v21 = a1;
      v16 = v44;
LABEL_17:
      v41 = (v45 + 16);
      v26 = (v45 + 32);
      v27 = v36;
      v28 = v40;
      while (1)
      {
        v29 = v21 <= v43;
        if (v16 > 0)
        {
          v29 = v21 >= v43;
        }

        if (v29)
        {

          return;
        }

        v30 = __OFADD__(v21, v16) ? ((v21 + v16) >> 63) ^ 0x8000000000000000 : v21 + v16;
        if (v21 < 0)
        {
          break;
        }

        if (v21 >= *(a4 + 16))
        {
          goto LABEL_31;
        }

        v31 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v32 = a4 + v31;
        v33 = *(v45 + 72);
        (*(v45 + 16))(v27, v32 + v33 * v21, v28);
        v46 = v15;
        v34 = v15[2];
        if (v34 >= v15[3] >> 1)
        {
          sub_1006A7AB4();
          v15 = v46;
        }

        v15[2] = v34 + 1;
        (*v26)(v15 + v31 + v34 * v33, v27, v28);
        v21 = v30;
        a4 = v42;
        v16 = v44;
      }

      __break(1u);
LABEL_31:
      __break(1u);
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
}

void *sub_1003032E8(uint64_t a1)
{
  v2 = type metadata accessor for DetailChartDataElement();
  v154 = *(v2 - 8);
  v155 = v2;
  __chkstk_darwin(v2);
  v157 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CAC460);
  __chkstk_darwin(v4 - 8);
  v132 = &v117 - v5;
  v130 = type metadata accessor for TimeZone();
  v128 = *(v130 - 8);
  __chkstk_darwin(v130);
  v127 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DetailChartDataElement.ValueLabel();
  __chkstk_darwin(v7 - 8);
  v131 = (&v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = type metadata accessor for Date();
  v125 = *(v126 - 8);
  v9 = __chkstk_darwin(v126);
  v124 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v137 = &v117 - v11;
  v147 = type metadata accessor for ExtremaResult();
  v145 = *(v147 - 8);
  v12 = __chkstk_darwin(v147);
  v129 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v142 = &v117 - v14;
  v15 = sub_10022C350(&qword_100CAB930);
  v138 = *(v15 - 8);
  v16 = __chkstk_darwin(v15 - 8);
  v153 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v156 = &v117 - v19;
  v20 = __chkstk_darwin(v18);
  v146 = &v117 - v21;
  __chkstk_darwin(v20);
  v148 = &v117 - v22;
  v23 = type metadata accessor for DetailChartViewModelFactory.PeakMarkerRequestContext(0);
  __chkstk_darwin(v23);
  v143 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ConditionUnits();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10022C350(&qword_100CAC1B0);
  v30 = __chkstk_darwin(v29 - 8);
  v136 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v135 = &v117 - v33;
  v34 = __chkstk_darwin(v32);
  v133 = &v117 - v35;
  v36 = __chkstk_darwin(v34);
  v141 = &v117 - v37;
  __chkstk_darwin(v36);
  v39 = &v117 - v38;
  v40 = type metadata accessor for DetailChartCondition();
  v41 = *(v40 - 8);
  v42 = __chkstk_darwin(v40);
  v44 = &v117 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v46 = &v117 - v45;
  (*(v41 + 16))(&v117 - v45, a1, v40);
  LODWORD(v134) = *(a1 + v23[5]);
  sub_100095588();
  v47 = v23[7];
  v151 = v25;
  v152 = v26;
  v48 = v26 + 16;
  v49 = *(v26 + 16);
  v50 = v28;
  v123 = v48;
  v122 = v49;
  v49(v28, a1 + v47, v25);
  v119 = v23;
  v51 = v23[9];
  v121 = *(a1 + v23[8]);
  v150 = a1;
  v120 = *(a1 + v51);
  v52 = *(v41 + 104);
  LODWORD(v144) = enum case for DetailChartCondition.chanceOfRain(_:);
  v52(v44);
  sub_1003071A0(&qword_100CA39E0, &type metadata accessor for DetailChartCondition);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v55 = *(v41 + 8);
  v53 = v41 + 8;
  v54 = v55;
  v55(v44, v40);
  if (a1)
  {
    (*(v152 + 8))(v50, v151);
    v56 = v39;
LABEL_3:
    sub_1000180EC(v56, &qword_100CAC1B0);
    v54(v46, v40);
    return _swiftEmptyArrayStorage;
  }

  v139 = v39;
  v140 = v50;
  (v52)(v44, enum case for DetailChartCondition.temperature(_:), v40);
  v58 = sub_10074742C(v46, v44);
  v54(v44, v40);
  if ((v58 & 1) == 0)
  {
    (v52)(v44, v144, v40);
    v59 = sub_10074742C(v46, v44);
    v54(v44, v40);
    if ((v59 & 1) == 0)
    {
      (v52)(v44, enum case for DetailChartCondition.temperatureFeelsLike(_:), v40);
      v78 = sub_10074742C(v46, v44);
      v54(v44, v40);
      if (v134)
      {
        if ((v78 & 1) == 0)
        {
          (*(v152 + 8))(v140, v151);
          v56 = v139;
          goto LABEL_3;
        }
      }
    }
  }

  v134 = v53;
  v144 = v40;
  v60 = *(v149 + 160);
  Cache.subscript.getter();
  v57 = v158;
  if (v158)
  {
    (*(v152 + 8))(v140, v151);
    v61 = v139;
LABEL_8:
    sub_1000180EC(v61, &qword_100CAC1B0);
    v54(v46, v144);
    return v57;
  }

  v62 = v139;
  v63 = v141;
  sub_100095588();
  v64 = v147;
  v65 = sub_100024D10(v63, 1, v147);
  v66 = v152;
  if (v65 == 1 || (ExtremaResult.minValue.getter(), v64 = v147, v68 = v67, v69 = *(v145 + 8), v69(v63, v147), v63 = v133, sub_100095588(), sub_100024D10(v63, 1, v64) == 1))
  {
    v70 = v145;
    sub_1000180EC(v63, &qword_100CAC1B0);
    v71 = v142;
  }

  else
  {
    ExtremaResult.maxValue.getter();
    v64 = v147;
    v91 = v90;
    v69(v63, v147);
    v70 = v145;
    v71 = v142;
    if (v91 <= v68)
    {
      sub_1001D1B40();
      v92 = v62;
      v57 = _swiftEmptyArrayStorage;
      v158 = _swiftEmptyArrayStorage;
      Cache.subscript.setter();
      (*(v66 + 8))(v140, v151);
      v61 = v92;
      goto LABEL_8;
    }
  }

  v72 = v135;
  sub_100095588();
  v73 = sub_100024D10(v72, 1, v64);
  v142 = v46;
  if (v73 == 1)
  {
    sub_1000180EC(v72, &qword_100CAC1B0);
    v74 = 1;
    v75 = v148;
    v76 = v140;
    v77 = v136;
  }

  else
  {
    (*(v70 + 32))(v71, v72, v64);
    v76 = v140;
    if (v120)
    {
      v79 = v140;
      ExtremaResult.minDate.getter();
      ExtremaResult.minValue.getter();
      ExtremaResult.minValue.getter();
      sub_1003050D4(v46, 0, v79, v131, v80);
      v81 = v71;
      v82 = v124;
      ExtremaResult.minDate.getter();
      v83 = v127;
      static TimeZone.current.getter();
      v141 = Date.formattedHours(timeZone:forAccessibility:)();
      v135 = v84;
      (*(v128 + 8))(v83, v130);
      (*(v125 + 8))(v82, v126);
      ExtremaResult.minValue.getter();
      v86 = v85;
      v87 = v132;
      v88 = v151;
      v122(v132, v79, v151);
      sub_10001B350(v87, 0, 1, v88);
      sub_1003053F8(v46, 0, v87, v86);
      sub_1000180EC(v87, &qword_100CAC460);
      v46 = v142;
      v76 = v79;
      v64 = v147;
      v89 = v148;
      v70 = v145;
      DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)();
      (*(v70 + 8))(v81, v64);
      v74 = 0;
      v77 = v136;
      v75 = v89;
    }

    else
    {
      (*(v70 + 8))(v71, v64);
      v74 = 1;
      v77 = v136;
      v75 = v148;
    }
  }

  sub_10001B350(v75, v74, 1, v155);
  sub_100095588();
  v93 = sub_100024D10(v77, 1, v64);
  v118 = v54;
  v117 = v60;
  if (v93 == 1)
  {
    sub_1000180EC(v77, &qword_100CAC1B0);
  }

  else
  {
    v94 = v129;
    (*(v70 + 32))(v129, v77, v64);
    if (v121)
    {
      v95 = v76;
      ExtremaResult.maxDate.getter();
      ExtremaResult.maxValue.getter();
      ExtremaResult.maxValue.getter();
      sub_1003050D4(v46, 1, v76, v131, v96);
      v97 = v124;
      ExtremaResult.maxDate.getter();
      v98 = v127;
      static TimeZone.current.getter();
      Date.formattedHours(timeZone:forAccessibility:)();
      v149 = v99;
      (*(v128 + 8))(v98, v130);
      (*(v125 + 8))(v97, v126);
      ExtremaResult.maxValue.getter();
      v101 = v100;
      v102 = v132;
      v103 = v151;
      v122(v132, v95, v151);
      sub_10001B350(v102, 0, 1, v103);
      sub_1003053F8(v46, 1, v102, v101);
      sub_1000180EC(v102, &qword_100CAC460);

      DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)();
      (*(v70 + 8))(v94, v147);
      v104 = 0;
      goto LABEL_28;
    }

    (*(v70 + 8))(v94, v64);
  }

  v104 = 1;
LABEL_28:
  v105 = v155;
  sub_10001B350(v146, v104, 1, v155);
  sub_10022C350(&qword_100CAC468);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_100A2D320;
  v149 = v106;
  sub_100095588();
  sub_100095588();
  v107 = 0;
  v108 = v153;
  v109 = (v154 + 32);
  v57 = _swiftEmptyArrayStorage;
  do
  {
    v110 = v107;
    sub_100095588();
    sub_100051BBC();
    if (sub_100024D10(v108, 1, v105) == 1)
    {
      sub_1000180EC(v108, &qword_100CAB930);
    }

    else
    {
      v111 = *v109;
      (*v109)(v157, v108, v105);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069E354();
        v57 = v114;
      }

      v112 = v57[2];
      if (v112 >= v57[3] >> 1)
      {
        sub_10069E354();
        v57 = v115;
      }

      v57[2] = v112 + 1;
      v113 = v57 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v112;
      v105 = v155;
      v111(v113, v157, v155);
      v108 = v153;
    }

    v107 = 1;
  }

  while ((v110 & 1) == 0);
  swift_setDeallocating();
  sub_1005C1E6C();
  sub_1001D1B40();
  v158 = v57;

  Cache.subscript.setter();
  sub_1000180EC(v146, &qword_100CAB930);
  sub_1000180EC(v148, &qword_100CAB930);
  (*(v152 + 8))(v140, v151);
  sub_1000180EC(v139, &qword_100CAC1B0);
  v118(v142, v144);
  return v57;
}

uint64_t sub_100304600(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_100100844(0, (v3 - result) & ~((v3 - result) >> 63), v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_1001008F4(0, v5, a2, &type metadata accessor for DetailChartDataElement);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003046AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartCondition();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v21[-v13];
  if (*(a1 + 16))
  {
    type metadata accessor for DetailChartDataElement();
    DetailChartDataElement.date.getter();
    (*(v9 + 32))(v14, v12, v8);
    (*(v5 + 16))(v7, a2, v4);
    v15 = (*(v5 + 88))(v7, v4);
    if (v15 == enum case for DetailChartCondition.precipitationTotal(_:))
    {
      v16 = static ApparentPrecipitationIntensityCategory.allCases.getter();
      __chkstk_darwin(v16);
      *&v21[-16] = v14;
      sub_1008EEB9C();
    }

    else
    {
      if (v15 != enum case for DetailChartCondition.uvIndex(_:))
      {
        (*(v5 + 8))(v7, v4);
        v18 = 0;
        goto LABEL_9;
      }

      v19 = static UVIndex.ExposureCategory.allCases.getter();
      __chkstk_darwin(v19);
      *&v21[-16] = v14;
      sub_1008EEBC8();
    }

    v18 = v17;

LABEL_9:
    (*(v9 + 8))(v14, v8);
    return v18;
  }

  return 0;
}

double sub_1003049D0()
{
  v0 = ConditionUnits.pressure.getter();
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 inchesOfMercury];
  sub_10000C70C(0, &qword_100CAC448);
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {

    return 0.5;
  }

  else
  {
    v6 = v2;
    v7 = [v1 hectopascals];
    v8 = static NSObject.== infix(_:_:)();

    if (v8 & 1) != 0 || (v6 = v6, v9 = [v1 millibars], v10 = static NSObject.== infix(_:_:)(), v6, v9, (v10))
    {

      return 15.0;
    }

    else
    {
      v11 = v6;
      v12 = [v1 millimetersOfMercury];
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {

        return 10.0;
      }

      else
      {
        v14 = [v1 kilopascals];
        v15 = static NSObject.== infix(_:_:)();

        result = 1.0;
        if (v15)
        {
          return 1.5;
        }
      }
    }
  }

  return result;
}

double sub_100304B8C()
{
  v0 = ConditionUnits.windSpeed.getter();
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 metersPerSecond];
  sub_10000C70C(0, &qword_100CAC428);
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {

    return 2.0;
  }

  else
  {
    v6 = v2;
    v7 = [v1 kilometersPerHour];
    v8 = static NSObject.== infix(_:_:)();

    if (v8 & 1) != 0 || (v6 = v6, v9 = [v1 milesPerHour], v10 = static NSObject.== infix(_:_:)(), v6, v9, (v10) || (v6 = v6, v11 = objc_msgSend(v1, "knots"), v12 = static NSObject.== infix(_:_:)(), v6, v11, (v12))
    {

      return 5.0;
    }

    else
    {
      v13 = static NSUnitSpeed.beaufort.getter();
      v14 = static NSObject.== infix(_:_:)();

      result = 5.0;
      if (v14)
      {
        return 1.0;
      }
    }
  }

  return result;
}

uint64_t sub_100304D28()
{
  v0 = type metadata accessor for Calendar.Component();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  HourWeather.date.getter();
  (*(v1 + 104))(v3, enum case for Calendar.Component.hour(_:), v0);
  v8 = Calendar.isDate(_:equalTo:toGranularity:)();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v8 & 1;
}

uint64_t sub_100304EE8()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailChartDataElement.date.getter();
  v4 = static Date.> infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

Swift::Int sub_100304FD4(uint64_t *a1)
{
  v2 = *(type metadata accessor for DetailChartDataElement() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1008FBAB8();
    v3 = v6;
  }

  v4 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v4;
  result = sub_1003076E8(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_100305080()
{
  sub_100003A00();
  type metadata accessor for ConditionDetailChartDataInput(0);

  return Double.chartValueAccessibilityDescription(for:units:)();
}

uint64_t sub_1003050D4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v29 = a4;
  v9 = sub_10022C350(&qword_100CAC478);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = type metadata accessor for DetailChartViewModelFactory.MarkerLabelCacheKey(0);
  v16 = (v15 - 8);
  v17 = __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  v19 = &v28 - v18;
  v20 = type metadata accessor for DetailChartCondition();
  v21 = *(*(v20 - 8) + 16);
  v28 = a1;
  v21(v19, a1, v20);
  v22 = v16[9];
  v23 = type metadata accessor for ConditionUnits();
  (*(*(v23 - 8) + 16))(&v19[v22], a3, v23);
  *&v19[v16[7]] = a5;
  v19[v16[8]] = a2;
  Cache.subscript.getter();
  v24 = type metadata accessor for DetailChartDataElement.ValueLabel();
  if (sub_100024D10(v14, 1, v24) == 1)
  {
    sub_1000180EC(v14, &qword_100CAC478);
    v25 = a2 & 1;
    v26 = v29;
    sub_100305F94(v28, v25, v29, a5);
    sub_1001D1B40();
    (*(*(v24 - 8) + 16))(v12, v26, v24);
    sub_10001B350(v12, 0, 1, v24);
    Cache.subscript.setter();
    return sub_10030968C(v19, type metadata accessor for DetailChartViewModelFactory.MarkerLabelCacheKey);
  }

  else
  {
    sub_10030968C(v19, type metadata accessor for DetailChartViewModelFactory.MarkerLabelCacheKey);
    return (*(*(v24 - 8) + 32))(v29, v14, v24);
  }
}

uint64_t sub_1003053F8(char *a1, int a2, char *a3, double a4)
{
  v89 = a1;
  v90 = a3;
  v77 = a2;
  v5 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v5 - 8);
  v79 = &v69 - v6;
  v7 = type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle();
  v83 = *(v7 - 8);
  v84 = v7;
  v8 = __chkstk_darwin(v7);
  v82 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v78 = &v69 - v10;
  v11 = sub_10022C350(&qword_100CAC3D0);
  v80 = *(v11 - 8);
  v81 = v11;
  __chkstk_darwin(v11);
  v87 = &v69 - v12;
  v88 = type metadata accessor for WeatherFormatPlaceholder();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v75 = *(v14 - 8);
  v76 = v14;
  __chkstk_darwin(v14);
  v74 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10022C350(&qword_100CA53F8);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v17 = &v69 - v16;
  v18 = sub_10022C350(&qword_100CAC460);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v69 - v22;
  v24 = type metadata accessor for ConditionUnits();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v69 - v29;
  v31 = type metadata accessor for DetailChartCondition();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v34, v89, v31);
  result = (*(v32 + 88))(v34, v31);
  if (result == enum case for DetailChartCondition.pressure(_:))
  {
    sub_100095588();
    if (sub_100024D10(v21, 1, v24) != 1)
    {
      v71 = v25;
      v40 = *(v25 + 32);
      v70 = v24;
      v40(v28, v21, v24);
      ConditionUnits.pressure.getter();
      sub_10000C70C(0, &qword_100CAC448);
      Measurement.init(value:unit:)();
      v41 = type metadata accessor for Locale();
      v42 = v79;
      sub_10001B350(v79, 1, 1, v41);
      static Set<>.full.getter();
      v43 = v78;
      static WeatherFormatStyle<>.weather(_:locale:)();

      sub_1000180EC(v42, &qword_100CAA9F0);
      v44 = v82;
      NSUnitPressure.BaseWeatherFormatStyle.accessible.getter();
      v45 = v84;
      v90 = *(v83 + 8);
      (v90)(v43, v84);
      v47 = v85;
      v46 = v86;
      (*(v86 + 104))(v85, enum case for WeatherFormatPlaceholder.none(_:), v88);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_1003071A0(&qword_100CAC470, &type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle);
      v48 = v81;
      v49 = v87;
      v39 = Measurement.formatted<A>(_:placeholder:unitManager:)();
      v89 = v28;

      (*(v46 + 8))(v47, v88);
      (v90)(v44, v45);
      (*(v80 + 8))(v49, v48);
      (*(v71 + 8))(v89, v70);
      return v39;
    }

    v36 = v21;
LABEL_11:
    sub_1000180EC(v36, &qword_100CAC460);
    return 0;
  }

  if (result == enum case for DetailChartCondition.temperature(_:) || result == enum case for DetailChartCondition.temperatureFeelsLike(_:))
  {
    sub_100095588();
    v38 = v24;
    if (sub_100024D10(v23, 1, v24) != 1)
    {
      v71 = v25;
      (*(v25 + 32))(v30, v23, v24);
      v90 = v30;
      ConditionUnits.temperature.getter();
      sub_10000C70C(0, &qword_100CA51B0);
      Measurement.init(value:unit:)();
      v50 = v74;
      static WeatherFormatStyle<>.weather.getter();
      v52 = v85;
      v51 = v86;
      v53 = v88;
      (*(v86 + 104))(v85, enum case for WeatherFormatPlaceholder.none(_:), v88);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_1003071A0(&qword_100CA5410, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
      v54 = v73;
      v55 = v76;
      v56 = Measurement.formatted<A>(_:placeholder:unitManager:)();
      v89 = v57;

      (*(v51 + 8))(v52, v53);
      (*(v75 + 8))(v50, v55);
      (*(v72 + 8))(v17, v54);
      v58 = [objc_opt_self() mainBundle];
      if (v77)
      {
        v68 = 0x8000000100ABFDA0;
        v59 = 0x20666F2068676948;
        v60 = 0xD000000000000046;
        v61 = 0xEA00000000004025;
        v62.super.isa = v58;
        v63 = 0;
        v64 = 0xE000000000000000;
      }

      else
      {
        v68 = 0x8000000100ABFD50;
        v59 = 0x2520666F20776F4CLL;
        v61 = 0xE900000000000040;
        v62.super.isa = v58;
        v63 = 0;
        v64 = 0xE000000000000000;
        v60 = 0xD000000000000045;
      }

      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v59, 0, v62, *&v63, *&v60);

      sub_10022C350(&qword_100CA40C8);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_100A2C3F0;
      *(v66 + 56) = &type metadata for String;
      *(v66 + 64) = sub_100035744();
      v67 = v89;
      *(v66 + 32) = v56;
      *(v66 + 40) = v67;
      v39 = static String.localizedStringWithFormat(_:_:)();

      (*(v71 + 8))(v90, v38);
      return v39;
    }

    v36 = v23;
    goto LABEL_11;
  }

  if (result == enum case for DetailChartCondition.uvIndex(_:))
  {
    v91 = *&a4;
    sub_10014AB54();
    return BinaryFloatingPoint.formatted()()._countAndFlagsBits;
  }

  v65 = round(a4);
  if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v65 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v65 < 9.22337204e18)
  {
    v91 = v65;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v32 + 8))(v34, v31);
    return v39;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100305F94@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v64 = a2;
  v70 = a3;
  v6 = type metadata accessor for WeatherFormatPlaceholder();
  v68 = *(v6 - 8);
  v69 = v6;
  __chkstk_darwin(v6);
  v8 = &v63[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v63[-v10];
  v12 = type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle();
  v66 = *(v12 - 8);
  v67 = v12;
  __chkstk_darwin(v12);
  v14 = &v63[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_10022C350(&qword_100CAC3D0);
  v65 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v63[-v16];
  v18 = type metadata accessor for DetailChartCondition();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v63[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v19 + 16))(v21, a1, v18);
  result = (*(v19 + 88))(v21, v18);
  if (result == enum case for DetailChartCondition.pressure(_:))
  {
    ConditionUnits.pressure.getter();
    sub_10000C70C(0, &qword_100CAC448);
    Measurement.init(value:unit:)();
    static Set<>.value.getter();
    v23 = type metadata accessor for Locale();
    sub_10001B350(v11, 1, 1, v23);
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_1000180EC(v11, &qword_100CAA9F0);
    v25 = v68;
    v24 = v69;
    (*(v68 + 104))(v8, enum case for WeatherFormatPlaceholder.none(_:), v69);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_1003071A0(&qword_100CAC470, &type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle);
    v26 = v67;
    v27 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v29 = v28;

    (*(v25 + 8))(v8, v24);
    (*(v66 + 8))(v14, v26);
    (*(v65 + 8))(v17, v15);
    v30 = v70;
LABEL_19:
    *v30 = v27;
    v30[1] = v29;
    v51 = enum case for DetailChartDataElement.ValueLabel.text(_:);
    v52 = type metadata accessor for DetailChartDataElement.ValueLabel();
    return (*(*(v52 - 8) + 104))(v30, v51, v52);
  }

  v30 = v70;
  if (result == enum case for DetailChartCondition.temperature(_:) || result == enum case for DetailChartCondition.temperatureFeelsLike(_:))
  {
    v32 = [objc_opt_self() mainBundle];
    if (v64)
    {
      v62 = 0x8000000100ABFE20;
      v33 = 0xD000000000000026;
      v34 = 72;
      v35 = 0xE100000000000000;
      v36.super.isa = v32;
      v37 = 0;
      v38 = 0xE000000000000000;
    }

    else
    {
      v62 = 0x8000000100ABFDF0;
      v34 = 76;
      v35 = 0xE100000000000000;
      v36.super.isa = v32;
      v37 = 0;
      v38 = 0xE000000000000000;
      v33 = 0xD000000000000025;
    }

    v50 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v34, 0, v36, *&v37, *&v33);
    object = v50._object;
    countAndFlagsBits = v50._countAndFlagsBits;
    goto LABEL_18;
  }

  if (result != enum case for DetailChartCondition.uvIndex(_:))
  {
    if (result != enum case for DetailChartCondition.chanceOfRain(_:))
    {
      v55 = round(a4);
      if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v55 > -9.22337204e18)
        {
          if (v55 < 9.22337204e18)
          {
            v71 = v55;
            *v30 = dispatch thunk of CustomStringConvertible.description.getter();
            v30[1] = v56;
            v57 = enum case for DetailChartDataElement.ValueLabel.text(_:);
            v58 = type metadata accessor for DetailChartDataElement.ValueLabel();
            (*(*(v58 - 8) + 104))(v30, v57, v58);
            return (*(v19 + 8))(v21, v18);
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return result;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    sub_10000C70C(0, &qword_100CA72F8);
    v53 = static NSNumberFormatter.percent.getter();
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    v32 = [v53 stringFromNumber:isa];

    if (!v32)
    {
      v27 = 0;
      v29 = 0xE000000000000000;
      goto LABEL_19;
    }

    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_18:
    v27 = countAndFlagsBits;
    v29 = object;

    goto LABEL_19;
  }

  sub_10000C70C(0, &qword_100CA72F8);
  result = static NSNumberFormatter.digits.getter();
  v39 = round(a4);
  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v40 = result;
  v41 = v30;
  v42 = v39;
  v43 = [objc_allocWithZone(NSNumber) initWithInteger:v39];
  v44 = [v40 stringFromNumber:v43];

  if (v44)
  {
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;
  }

  else
  {
    v71 = v42;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v59;
  }

  *v41 = v45;
  v41[1] = v47;
  v60 = enum case for DetailChartDataElement.ValueLabel.text(_:);
  v61 = type metadata accessor for DetailChartDataElement.ValueLabel();
  return (*(*(v61 - 8) + 104))(v41, v60, v61);
}

uint64_t sub_1003067CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20 = a2;
  v17 = a1;
  v2 = type metadata accessor for TimeZone();
  v18 = *(v2 - 8);
  v19 = v2;
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DetailChartDataElement.ValueLabel();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ApparentPrecipitationIntensityCategory.rangeValue.getter();
  v12 = ApparentPrecipitationIntensityCategory.standaloneDescription.getter();
  v14 = v13;
  (*(v9 + 16))(v11, v17, v8);
  *v7 = v12;
  v7[1] = v14;
  (*(v5 + 104))(v7, enum case for DetailChartDataElement.ValueLabel.text(_:), v16);

  static TimeZone.current.getter();
  Date.formattedHours(timeZone:forAccessibility:)();
  (*(v18 + 8))(v4, v19);
  return DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)();
}

uint64_t sub_100306A68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for TimeZone();
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetailChartDataElement.ValueLabel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  UVIndex.ExposureCategory.rangeValue.getter();
  (*(v11 + 16))(v13, a1, v10);
  *v9 = UVIndex.ExposureCategory.localizedString.getter();
  v9[1] = v14;
  (*(v7 + 104))(v9, enum case for DetailChartDataElement.ValueLabel.text(_:), v6);
  static TimeZone.current.getter();
  Date.formattedHours(timeZone:forAccessibility:)();
  (*(v16 + 8))(v5, v17);
  UVIndex.ExposureCategory.localizedString.getter();
  return DetailChartDataElement.init(date:value:secondValue:thirdValue:valueLabel:dateLabel:accessibilityDateString:accessibilityValueDescription:color:textColor:)();
}

uint64_t sub_100306D0C()
{
  sub_100006F14(v0 + 16);
  sub_100006F14(v0 + 56);
  sub_100006F14(v0 + 96);

  return v0;
}

uint64_t sub_100306D54()
{
  sub_100306D0C();

  return swift_deallocClassInstance();
}

void sub_100306DF4()
{
  type metadata accessor for DetailChartCondition();
  if (v0 <= 0x3F)
  {
    sub_100306EB8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ConditionUnits();
      if (v2 <= 0x3F)
      {
        sub_100306F10();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100306EB8()
{
  if (!qword_100CAC220)
  {
    type metadata accessor for ExtremaResult();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CAC220);
    }
  }
}

void sub_100306F10()
{
  if (!qword_100CAC228)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CAC228);
    }
  }
}

uint64_t sub_100306FA8()
{
  result = type metadata accessor for DetailChartCondition();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ConditionUnits();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10030708C()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TimeZone();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003071A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100307230(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {

    sub_1006A7AB4();
  }
}

void *sub_100307320(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = sub_10000810C();
  v10 = sub_10022C350(v9);
  sub_100003810(v10);
  sub_100011468();
  v12 = a5(&v14, v8 + v11, v5, a1);

  sub_100309F74();
  sub_10027FAE8();
  if (v12 != v5)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v8;
}

void *sub_10030744C(uint64_t *a1)
{
  sub_10022C350(&qword_100CAC490);
  sub_100003828();
  __chkstk_darwin(v2);
  v3 = sub_10022C350(&qword_100CAC498);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = v17 - v5;
  v7 = *a1;
  v17[0] = a1[1];
  v17[1] = v7;
  sub_10022C350(&qword_100CA7030);
  sub_1000BCDDC(&qword_100CA7040);
  v8 = dispatch thunk of Collection.distance(from:to:)();
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = v8;
  sub_1006A06A4(v8, 0);
  v11 = v10;
  v12 = type metadata accessor for HourWeather();
  sub_100003810(v12);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  sub_100095588();
  v15 = sub_1003097D4(v6, v11 + v14, v9);
  sub_1000180EC(v6, &qword_100CAC498);
  if (v15 != v9)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v11;
}

void sub_100307608(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(unint64_t, void), void (*a6)(void))
{
  v6 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    a5((a4 >> 1) - a3, 0);
    if (v6 != a3)
    {
      a6(0);
      sub_100003DDC();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

Swift::Int sub_1003076E8(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for DetailChartDataElement();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for DetailChartDataElement() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100307BB0(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100307818(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100307818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = type metadata accessor for Date();
  v8 = *(v60 - 8);
  v9 = __chkstk_darwin(v60);
  v59 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v41 - v11;
  v12 = type metadata accessor for DetailChartDataElement();
  v13 = __chkstk_darwin(v12);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v57 = &v41 - v16;
  result = __chkstk_darwin(v15);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
    while (2)
    {
      v46 = v24;
      v47 = a3;
      v44 = v26;
      v45 = v25;
      v61 = v25;
      do
      {
        v28 = v56;
        v29 = v54;
        v54(v56, v26, v12);
        v30 = v12;
        v31 = v57;
        v29(v57, v24, v30);
        DetailChartDataElement.date.getter();
        v32 = v59;
        DetailChartDataElement.date.getter();
        v62 = static Date.< infix(_:_:)();
        v33 = *v53;
        v34 = v32;
        v35 = v60;
        (*v53)(v34, v60);
        v33(v27, v35);
        v36 = *v52;
        v37 = v31;
        v12 = v30;
        (*v52)(v37, v30);
        result = v36(v28, v30);
        if ((v62 & 1) == 0)
        {
          break;
        }

        if (!v50)
        {
          __break(1u);
          return result;
        }

        v38 = *v49;
        v39 = v51;
        (*v49)(v51, v26, v30);
        swift_arrayInitWithTakeFrontToBack();
        result = v38(v24, v39, v30);
        v24 += v48;
        v26 += v48;
      }

      while (!__CFADD__(v61++, 1));
      a3 = v47 + 1;
      v24 = &v46[v42];
      v25 = v45 - 1;
      v26 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_100307BB0(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v161 = type metadata accessor for Date();
  v8 = *(v161 - 8);
  v9 = __chkstk_darwin(v161);
  v160 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v159 = &v134 - v11;
  v12 = type metadata accessor for DetailChartDataElement();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v140 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v151 = &v134 - v17;
  v18 = __chkstk_darwin(v16);
  v158 = &v134 - v19;
  __chkstk_darwin(v18);
  v162 = &v134 - v20;
  v146 = a3;
  v21 = a3[1];
  v141 = v13;
  if (v21 < 1)
  {
    v23 = _swiftEmptyArrayStorage;
LABEL_101:
    v163 = *v137;
    if (!v163)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v126 = v23 + 16;
      v127 = *(v23 + 2);
      while (v127 >= 2)
      {
        if (!*v146)
        {
          goto LABEL_139;
        }

        v128 = v23;
        v129 = &v23[16 * v127];
        v130 = *v129;
        v131 = &v126[2 * v127];
        v132 = v131[1];
        sub_1003087A4(*v146 + *(v141 + 9) * *v129, *v146 + *(v141 + 9) * *v131, *v146 + *(v141 + 9) * v132, v163);
        if (v5)
        {
          break;
        }

        if (v132 < v130)
        {
          goto LABEL_127;
        }

        if (v127 - 2 >= *v126)
        {
          goto LABEL_128;
        }

        *v129 = v130;
        *(v129 + 1) = v132;
        v133 = *v126 - v127;
        if (*v126 < v127)
        {
          goto LABEL_129;
        }

        v127 = *v126 - 1;
        memmove(v131, v131 + 2, 16 * v133);
        *v126 = v127;
        v23 = v128;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v23 = sub_100308E24();
    goto LABEL_103;
  }

  v135 = a4;
  v22 = 0;
  v155 = (v8 + 8);
  v156 = v13 + 16;
  v153 = (v13 + 32);
  v154 = (v13 + 8);
  v23 = _swiftEmptyArrayStorage;
  v157 = v12;
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    if (v22 + 1 < v21)
    {
      v136 = v23;
      v26 = v22;
      v138 = v22;
      v147 = v5;
      v148 = v22 + 1;
      v27 = *v146;
      v163 = v27;
      v28 = v13;
      v29 = *(v13 + 9);
      v149 = v21;
      v150 = v29;
      v30 = v27 + v29 * v25;
      v31 = v12;
      v32 = *(v28 + 2);
      v32(v162, v30, v12);
      v33 = v158;
      v144 = v32;
      v32(v158, v27 + v29 * v26, v31);
      v5 = v159;
      v34 = v162;
      DetailChartDataElement.date.getter();
      v35 = v160;
      DetailChartDataElement.date.getter();
      LODWORD(v145) = static Date.< infix(_:_:)();
      v36 = *v155;
      v37 = v161;
      (*v155)(v35, v161);
      v143 = v36;
      (v36)(v5, v37);
      v38 = *(v141 + 1);
      v38(v33, v31);
      v142 = v38;
      v38(v34, v31);
      v39 = v149;
      v40 = v138 + 2;
      v41 = v163 + v150 * (v138 + 2);
      while (1)
      {
        v42 = v40;
        if (++v148 >= v39)
        {
          break;
        }

        v5 = v162;
        v43 = v157;
        v44 = v144;
        v163 = v40;
        (v144)(v162, v41, v157);
        v45 = v158;
        v44(v158, v30, v43);
        v46 = v159;
        DetailChartDataElement.date.getter();
        v47 = v160;
        DetailChartDataElement.date.getter();
        LOBYTE(v152) = static Date.< infix(_:_:)() & 1;
        LODWORD(v152) = v152;
        v48 = v47;
        v49 = v161;
        v50 = v143;
        (v143)(v48, v161);
        v50(v46, v49);
        v51 = v142;
        v142(v45, v43);
        v51(v5, v43);
        v42 = v163;
        v39 = v149;
        v41 += v150;
        v30 += v150;
        v40 = v163 + 1;
        if ((v145 & 1) != v152)
        {
          goto LABEL_9;
        }
      }

      v148 = v39;
LABEL_9:
      if (v145)
      {
        v25 = v148;
        v24 = v138;
        v12 = v157;
        if (v148 < v138)
        {
          goto LABEL_133;
        }

        if (v138 >= v148)
        {
          v5 = v147;
          v13 = v141;
          v23 = v136;
          goto LABEL_32;
        }

        if (v39 >= v42)
        {
          v52 = v42;
        }

        else
        {
          v52 = v39;
        }

        v53 = v150 * (v52 - 1);
        v54 = v150 * v52;
        v55 = v138;
        v56 = v138 * v150;
        v5 = v147;
        v13 = v141;
        do
        {
          if (v55 != --v25)
          {
            v57 = v5;
            v58 = *v146;
            if (!*v146)
            {
              goto LABEL_140;
            }

            v163 = *v153;
            (v163)(v140, v58 + v56, v12);
            v59 = v56 < v53 || v58 + v56 >= v58 + v54;
            if (v59)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v56 != v53)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v163)(v58 + v53, v140, v12);
            v5 = v57;
            v13 = v141;
          }

          ++v55;
          v53 -= v150;
          v54 -= v150;
          v56 += v150;
        }

        while (v55 < v25);
        v23 = v136;
      }

      else
      {
        v5 = v147;
        v13 = v141;
        v23 = v136;
        v12 = v157;
      }

      v25 = v148;
      v24 = v138;
    }

LABEL_32:
    v60 = v146[1];
    if (v25 < v60)
    {
      if (__OFSUB__(v25, v24))
      {
        goto LABEL_132;
      }

      if (v25 - v24 < v135)
      {
        break;
      }
    }

LABEL_48:
    if (v25 < v24)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10011E564();
      v23 = v124;
    }

    v80 = *(v23 + 2);
    v81 = v80 + 1;
    if (v80 >= *(v23 + 3) >> 1)
    {
      sub_10011E564();
      v23 = v125;
    }

    *(v23 + 2) = v81;
    v82 = v23 + 32;
    v83 = &v23[16 * v80 + 32];
    *v83 = v24;
    *(v83 + 1) = v25;
    v163 = *v137;
    if (!v163)
    {
      goto LABEL_141;
    }

    v148 = v25;
    if (v80)
    {
      v152 = v23 + 32;
      while (1)
      {
        v84 = v81 - 1;
        v85 = &v82[16 * v81 - 16];
        v86 = &v23[16 * v81];
        if (v81 >= 4)
        {
          break;
        }

        if (v81 == 3)
        {
          v87 = *(v23 + 4);
          v88 = *(v23 + 5);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_69:
          if (v90)
          {
            goto LABEL_118;
          }

          v102 = *v86;
          v101 = *(v86 + 1);
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_121;
          }

          v106 = *(v85 + 1);
          v107 = v106 - *v85;
          if (__OFSUB__(v106, *v85))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v104, v107))
          {
            goto LABEL_126;
          }

          if (v104 + v107 >= v89)
          {
            if (v89 < v107)
            {
              v84 = v81 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v81 < 2)
        {
          goto LABEL_120;
        }

        v109 = *v86;
        v108 = *(v86 + 1);
        v97 = __OFSUB__(v108, v109);
        v104 = v108 - v109;
        v105 = v97;
LABEL_84:
        if (v105)
        {
          goto LABEL_123;
        }

        v111 = *v85;
        v110 = *(v85 + 1);
        v97 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v97)
        {
          goto LABEL_125;
        }

        if (v112 < v104)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v84 - 1 >= v81)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
          goto LABEL_135;
        }

        if (!*v146)
        {
          goto LABEL_138;
        }

        v116 = &v82[16 * v84 - 16];
        v117 = *v116;
        v118 = v84;
        v119 = &v82[16 * v84];
        v120 = *(v119 + 1);
        sub_1003087A4(*v146 + *(v13 + 9) * *v116, *v146 + *(v13 + 9) * *v119, *v146 + *(v13 + 9) * v120, v163);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v120 < v117)
        {
          goto LABEL_113;
        }

        v147 = 0;
        v5 = v13;
        v121 = v23;
        v122 = *(v23 + 2);
        if (v118 > v122)
        {
          goto LABEL_114;
        }

        *v116 = v117;
        *(v116 + 1) = v120;
        if (v118 >= v122)
        {
          goto LABEL_115;
        }

        v81 = v122 - 1;
        memmove(v119, v119 + 16, 16 * (v122 - 1 - v118));
        *(v121 + 2) = v122 - 1;
        v123 = v122 > 2;
        v23 = v121;
        v13 = v5;
        v5 = v147;
        v82 = v152;
        if (!v123)
        {
          goto LABEL_98;
        }
      }

      v91 = &v82[16 * v81];
      v92 = *(v91 - 8);
      v93 = *(v91 - 7);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_116;
      }

      v96 = *(v91 - 6);
      v95 = *(v91 - 5);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_117;
      }

      v98 = *(v86 + 1);
      v99 = v98 - *v86;
      if (__OFSUB__(v98, *v86))
      {
        goto LABEL_119;
      }

      v97 = __OFADD__(v89, v99);
      v100 = v89 + v99;
      if (v97)
      {
        goto LABEL_122;
      }

      if (v100 >= v94)
      {
        v114 = *v85;
        v113 = *(v85 + 1);
        v97 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v97)
        {
          goto LABEL_130;
        }

        if (v89 < v115)
        {
          v84 = v81 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v21 = v146[1];
    v22 = v148;
    if (v148 >= v21)
    {
      goto LABEL_101;
    }
  }

  v61 = (v24 + v135);
  if (__OFADD__(v24, v135))
  {
    goto LABEL_134;
  }

  if (v61 >= v60)
  {
    v61 = v146[1];
  }

  if (v61 < v24)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v25 == v61)
  {
    goto LABEL_48;
  }

  v136 = v23;
  v147 = v5;
  v62 = *v146;
  v63 = *(v13 + 9);
  v152 = *(v13 + 2);
  v64 = v62 + v63 * (v25 - 1);
  v149 = -v63;
  v138 = v24;
  v65 = (v24 - v25);
  v150 = v62;
  v139 = v63;
  v66 = (v62 + v25 * v63);
  v142 = v61;
LABEL_41:
  v148 = v25;
  v143 = v66;
  v144 = v65;
  v145 = v64;
  v67 = v64;
  while (1)
  {
    v68 = v162;
    v69 = v152;
    (v152)(v162, v66, v12);
    v70 = v158;
    (v69)(v158, v67, v12);
    v71 = v159;
    DetailChartDataElement.date.getter();
    v72 = v160;
    DetailChartDataElement.date.getter();
    LODWORD(v163) = static Date.< infix(_:_:)();
    v73 = *v155;
    v74 = v72;
    v75 = v161;
    (*v155)(v74, v161);
    v76 = v71;
    v12 = v157;
    v73(v76, v75);
    v77 = *v154;
    (*v154)(v70, v12);
    v77(v68, v12);
    if ((v163 & 1) == 0)
    {
LABEL_46:
      v25 = v148 + 1;
      v64 = v145 + v139;
      v65 = v144 - 1;
      v66 = &v143[v139];
      if ((v148 + 1) == v142)
      {
        v25 = v142;
        v5 = v147;
        v13 = v141;
        v23 = v136;
        v24 = v138;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v150)
    {
      break;
    }

    v78 = *v153;
    v79 = v151;
    (*v153)(v151, v66, v12);
    swift_arrayInitWithTakeFrontToBack();
    v78(v67, v79, v12);
    v67 += v149;
    v66 += v149;
    v59 = __CFADD__(v65++, 1);
    if (v59)
    {
      goto LABEL_46;
    }
  }

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
}