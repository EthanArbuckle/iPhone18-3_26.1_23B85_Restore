uint64_t sub_1002BB0C8()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_1002BB1BC()
{
  v1[3] = v0;
  v2 = sub_100140278(&qword_1008E6048);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_100140278(&qword_1008E6050);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_100140278(&qword_1008E6058);
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_1002BB3B4, 0, 0);
}

uint64_t sub_1002BB3B4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v27 = *(v0 + 96);
  v28 = *(v0 + 72);
  v29 = *(v0 + 80);
  v30 = *(v0 + 56);
  IntentParameter.wrappedValue.getter();
  *(v0 + 128) = sub_1002EFE2C(*(v0 + 192));
  sub_1000059F8(0, &unk_1008E4070);
  sub_100140278(&unk_1008E4E50);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006D46C0;
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v2, v3);
  *(v6 + 56) = sub_1000059F8(0, &qword_1008E04E0);
  *(v6 + 64) = sub_1001DF1F0();
  *(v6 + 32) = isa;
  v8 = NSPredicate.init(format:_:)();
  *(v0 + 136) = v8;
  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();
  v11 = Bool._bridgeToObjectiveC()().super.super.isa;
  v12 = [v9 predicateForObjectsWithMetadataKey:v10 operatorType:5 value:v11];
  *(v0 + 144) = v12;

  sub_100140278(&unk_1008E4E20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006D68D0;
  *(v13 + 32) = v8;
  *(v13 + 40) = v12;
  v14 = v8;
  v15 = v12;
  v16 = Array._bridgeToObjectiveC()().super.isa;

  v17 = [objc_opt_self() andPredicateWithSubpredicates:v16];
  *(v0 + 152) = v17;

  sub_1000059F8(0, &qword_1008E04D0);
  v18 = v17;
  static HKSamplePredicate.quantitySample(type:predicate:)();

  swift_getKeyPath();
  SortDescriptor.init<A>(_:order:)();
  sub_100140278(&qword_1008E6060);
  v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1006D46C0;
  (*(v4 + 16))(v20 + v19, v27, v29);
  sub_100140278(&qword_1008E6068);
  v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1006D46C0;
  (*(v5 + 16))(v22 + v21, v28, v30);
  sub_1000059F8(0, &qword_1008EE6F0);
  HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)();
  AppDependency.wrappedValue.getter();
  v23 = *(v0 + 16);
  *(v0 + 160) = v23;
  v24 = swift_task_alloc();
  *(v0 + 168) = v24;
  *v24 = v0;
  v24[1] = sub_1002BB7D4;
  v25 = *(v0 + 32);

  return HKSampleQueryDescriptor.result(for:)(v23, v25);
}

uint64_t sub_1002BB7D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v5 = sub_1002BBAE8;
  }

  else
  {
    v5 = sub_1002BB904;
  }

  return _swift_task_switch(v5, 0, 0);
}

unint64_t sub_1002BB904()
{
  v1 = *(v0 + 176);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_10:
    v11 = *(v0 + 144);
    v13 = *(v0 + 128);
    v12 = *(v0 + 136);

    v10 = 0;
    goto LABEL_11;
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_3:
  v3 = __OFSUB__(v2, 1);
  result = v2 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v5 = *(*(v0 + 176) + 8 * result + 32);
LABEL_8:
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);

  v10 = [v5 quantity];

LABEL_11:
  v15 = *(v0 + 88);
  v14 = *(v0 + 96);
  v17 = *(v0 + 72);
  v16 = *(v0 + 80);
  v18 = *(v0 + 56);
  v19 = *(v0 + 64);
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  (*(v19 + 8))(v17, v18);
  (*(v15 + 8))(v14, v16);

  v20 = *(v0 + 8);

  return v20(v10);
}

uint64_t sub_1002BBAE8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 88);
  v14 = *(v0 + 96);
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v12, v6);
  (*(v4 + 8))(v14, v13);

  v10 = *(v0 + 8);

  return v10(0);
}

void sub_1002BBC14(id *a1)
{
  v1 = [*a1 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_1002BBC74(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  return _swift_task_switch(sub_1002BBC98, 0, 0);
}

uint64_t sub_1002BBC98()
{
  v1 = v0[23];
  sub_1000059F8(0, &unk_1008E4070);
  sub_100140278(&unk_1008E4E50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D46C0;
  isa = Date._bridgeToObjectiveC()().super.isa;
  *(v2 + 56) = sub_1000059F8(0, &qword_1008E04E0);
  *(v2 + 64) = sub_1001DF1F0();
  *(v2 + 32) = isa;
  v4 = NSPredicate.init(format:_:)();
  v0[26] = v4;
  AppDependency.wrappedValue.getter();
  v5 = v0[10];
  v0[27] = v5;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1002BBE94;
  v6 = swift_continuation_init();
  v0[17] = sub_100140278(&qword_1008E60A8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1002BC698;
  v0[13] = &unk_100850810;
  v0[14] = v6;
  [v5 deleteObjectsOfType:v1 predicate:v4 withCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002BBE94()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_1002BC008;
  }

  else
  {
    v2 = sub_1002BBFA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002BBFA4()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002BC008()
{
  v13 = v0;
  v1 = v0[27];
  v2 = v0[26];
  swift_willThrow();

  v3 = static os_log_type_t.error.getter();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    v12[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10000AFDC(0xD000000000000017, 0x8000000100752CB0, v12);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_10000AFDC(v7, v8, v12);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v5, v3, "%s error removing future goals: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002BC1C4(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return _swift_task_switch(sub_1002BC1E8, 0, 0);
}

uint64_t sub_1002BC1E8()
{
  v1 = v0;
  v2 = v0 + 10;
  isa = v1[18].super.isa;
  AppDependency.wrappedValue.getter();
  v4 = v1[10].super.isa;
  v1[21].super.isa = v4;
  if (isa >> 62)
  {
    sub_1000059F8(0, &qword_1008DE728);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000059F8(0, &qword_1008DE728);
  }

  v5 = v1[19].super.isa;
  sub_1000059F8(0, &qword_1008DE728);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v1[22].super.isa = v6.super.isa;

  if (v5 >> 62)
  {
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  v7 = Array._bridgeToObjectiveC()().super.isa;
  v1[23].super.isa = v7;

  v1[2].super.isa = v1;
  v1[3].super.isa = sub_1002BC458;
  v8 = swift_continuation_init();
  v1[17].super.isa = sub_100140278(&qword_1008E6038);
  v1[10].super.isa = _NSConcreteStackBlock;
  v1[11].super.isa = 1107296256;
  v1[12].super.isa = sub_1002BC9C8;
  v1[13].super.isa = &unk_1008507E8;
  v1[14].super.isa = v8;
  [(objc_class *)v4 saveObjects:v6.super.isa deleteObjects:v7 associations:0 completion:v2];

  return _swift_continuation_await(&v1[2]);
}

uint64_t sub_1002BC458()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1002BC5D8;
  }

  else
  {
    v2 = sub_1002BC568;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002BC568()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002BC5D8()
{
  v1 = v0[23];
  v3 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  sub_1002C1830();
  swift_allocError();
  *v4 = 5;
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002BC698(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = sub_1000066AC((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a2)
  {
    **(v8[8] + 40) = a3;
    v7 = v8;

    return _swift_continuation_throwingResume(v7);
  }

  if (!a4)
  {
    __break(1u);
    return _swift_continuation_throwingResume(v7);
  }

  sub_100140278(&qword_1008EB640);
  v9 = swift_allocError();
  *v10 = a4;
  v11 = a4;

  return _swift_continuation_throwingResumeWithError(v8, v9);
}

id sub_1002BC770()
{
  v1 = type metadata accessor for Date();
  v16 = *(v1 - 8);
  v17 = v1;
  __chkstk_darwin(v1);
  v14 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v15 = [v0 goalType];
  v3 = [v0 mondayGoal];
  v4 = [v0 tuesdayGoal];
  v5 = [v0 wednesdayGoal];
  v6 = [v0 tuesdayGoal];
  v7 = [v0 fridayGoal];
  v8 = [v0 saturdayGoal];
  v9 = [v0 sundayGoal];
  v10 = [objc_opt_self() localDevice];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v12 = [objc_opt_self() activityGoalScheduleWithDate:isa goalType:v15 mondayGoal:v3 tuesdayGoal:v4 wednesdayGoal:v5 thursdayGoal:v6 fridayGoal:v7 saturdayGoal:v8 sundayGoal:v9 device:v10 metadata:0];

  (*(v16 + 8))(v14, v17);
  return v12;
}

uint64_t sub_1002BC9C8(uint64_t a1, int a2, void *a3)
{
  v5 = sub_1000066AC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return _swift_continuation_throwingResume(v5);
  }

  if (!a3)
  {
    __break(1u);
    return _swift_continuation_throwingResume(v5);
  }

  sub_100140278(&qword_1008EB640);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return _swift_continuation_throwingResumeWithError(v6, v7);
}

uint64_t sub_1002BCAB8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_10001AC90(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1002BCB60(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_100140278(&qword_1008E60B0);
  v5 = sub_10014A6B0(&qword_1008E60B8, &qword_1008E60B0);

  return ParameterSummarySwitchCondition.init(_:_:)(KeyPath, sub_1002B1380, 0, v4, a2, v5);
}

uint64_t sub_1002BCC28(uint64_t a1)
{
  v4 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v4;
  *(v2 + 80) = v1[4];
  v5 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v5;
  v6 = swift_task_alloc();
  *(v2 + 96) = v6;
  *v6 = v2;
  v6[1] = sub_1002BCCDC;

  return sub_1002B42A8(a1);
}

uint64_t sub_1002BCCDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

__n128 sub_1002BCDD0@<Q0>(uint64_t a1@<X8>)
{
  sub_1002C0924(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002BCE18(uint64_t a1)
{
  v2 = sub_1002B4154();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1002BCE64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1002BCEAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityTrendType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityTrendType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1002BD0D0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  Descriptor = type metadata accessor for HKActivitySummaryQueryDescriptor();
  v2[5] = Descriptor;
  v2[6] = *(Descriptor - 8);
  v2[7] = swift_task_alloc();
  sub_100140278(&unk_1008E51A0);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for DateComponents();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for Calendar();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1002BD280, 0, 0);
}

uint64_t sub_1002BD280()
{
  v1 = v0[13];
  v18 = v0[8];
  v19 = v0[12];
  v17 = v0[14];
  static Calendar.current.getter();
  sub_100140278(&unk_1008E51B0);
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006D6950;
  v7 = v6 + v5;
  v8 = *(v3 + 104);
  v8(v7, enum case for Calendar.Component.day(_:), v2);
  v8(v7 + v4, enum case for Calendar.Component.month(_:), v2);
  v8(v7 + 2 * v4, enum case for Calendar.Component.year(_:), v2);
  v8(v7 + 3 * v4, enum case for Calendar.Component.era(_:), v2);
  sub_10001C970(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  Calendar.dateComponents(_:from:)();

  (*(v1 + 16))(v18, v17, v19);
  (*(v1 + 56))(v18, 0, 1, v19);
  DateComponents.calendar.setter();
  v9 = objc_opt_self();
  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  v11 = DateComponents._bridgeToObjectiveC()().super.isa;
  v12 = [v9 predicateForActivitySummariesBetweenStartDateComponents:isa endDateComponents:v11];
  v0[15] = v12;

  v13 = v12;
  HKActivitySummaryQueryDescriptor.init(predicate:)();
  AppDependency.wrappedValue.getter();
  v14 = v0[2];
  v0[16] = v14;
  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  v15[1] = sub_1002BD59C;

  return HKActivitySummaryQueryDescriptor.result(for:)(v14);
}

uint64_t sub_1002BD59C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v5 = sub_1002BD858;
  }

  else
  {
    v5 = sub_1002BD6CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002BD6CC()
{
  v1 = v0[18];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = v0[15];

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[18] + 32);
  }

  v4 = v0[15];

LABEL_9:
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v11 + 8))(v9, v10);
  (*(v7 + 8))(v6, v8);

  v12 = v0[1];

  return v12(v3);
}

uint64_t sub_1002BD858()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 40);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1002BD95C()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v23 = *(v0 - 8);
  v24 = v0;
  __chkstk_darwin(v0);
  v22 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100140278(&qword_1008DD130);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_100140278(&qword_1008E5FA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = type metadata accessor for LocalizedStringResource();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  sub_100140278(&qword_1008E5FD0);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v16 + 56))(v14, 0, 1, v15);
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  (*(v6 + 104))(v8, enum case for IntentParameter.DateKind.date<A>(_:), v5);
  v18 = type metadata accessor for IntentDialog();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  (*(v23 + 104))(v22, enum case for InputConnectionBehavior.default(_:), v24);
  v19 = IntentParameter<>.init(title:description:default:kind:requestValueDialog:inputConnectionBehavior:)();
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008E5FB8);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v19;
}

uint64_t sub_1002BDE28()
{
  v18 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v18 - 8);
  __chkstk_darwin(v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100140278(&qword_1008DD130);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_100140278(&qword_1008E5FA8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v10 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = sub_100140278(&qword_1008E5FD0);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v14 + 56))(v12, 0, 1, v13);
  (*(v7 + 104))(v9, enum case for IntentParameter.DateKind.date<A>(_:), v6);
  IntentDialog.init(stringLiteral:)();
  v15 = type metadata accessor for IntentDialog();
  (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v18);
  return IntentParameter<>.init(title:description:kind:requestValueDialog:inputConnectionBehavior:)();
}

unint64_t sub_1002BE1A8()
{
  v0 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v0 - 8);
  v2 = &v28 - v1;
  v3 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_100140278(&qword_1008E61E8);
  v8 = sub_100140278(&qword_1008E61F0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v31 = 4 * v9;
  v11 = v9;
  v37 = v9;
  v12 = swift_allocObject();
  v32 = v12;
  *(v12 + 16) = xmmword_1006D6BC0;
  v13 = v12 + v10;
  v30 = *(v8 + 48);
  *(v12 + v10) = 0;
  LocalizedStringResource.init(stringLiteral:)();
  v14 = *(v7 + 56);
  v34 = v7 + 56;
  v35 = v14;
  v33 = v6;
  v14(v5, 1, 1, v6);
  v15 = type metadata accessor for DisplayRepresentation.Image();
  v16 = *(v15 - 8);
  v29 = *(v16 + 56);
  v36 = v16 + 56;
  v29(v2, 1, 1, v15);
  v39 = v13;
  DisplayRepresentation.init(title:subtitle:image:)();
  v28 = v8;
  v30 = *(v8 + 48);
  *(v13 + v11) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  v17 = v35;
  v35(v5, 1, 1, v6);
  v38 = v15;
  v18 = v29;
  v29(v2, 1, 1, v15);
  DisplayRepresentation.init(title:subtitle:image:)();
  v19 = 2 * v37;
  v30 = *(v8 + 48);
  *(v39 + 2 * v37) = 2;
  LocalizedStringResource.init(stringLiteral:)();
  v20 = v33;
  v17(v5, 1, 1, v33);
  v18(v2, 1, 1, v15);
  v21 = v18;
  DisplayRepresentation.init(title:subtitle:image:)();
  v22 = v39;
  v23 = (v39 + v19 + v37);
  v37 = *(v28 + 48);
  *v23 = 3;
  LocalizedStringResource.init(stringLiteral:)();
  v24 = v20;
  v25 = v35;
  v35(v5, 1, 1, v24);
  v21(v2, 1, 1, v38);
  DisplayRepresentation.init(title:subtitle:image:)();
  *(v22 + v31) = 4;
  LocalizedStringResource.init(stringLiteral:)();
  v25(v5, 1, 1, v33);
  v21(v2, 1, 1, v38);
  DisplayRepresentation.init(title:subtitle:image:)();
  v26 = sub_1004CADAC(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v26;
}

unint64_t sub_1002BE71C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100844B60, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002BE768@<X0>(uint64_t *a1@<X8>)
{
  v51 = a1;
  v1 = sub_100140278(&qword_1008E5FA8);
  v49 = *(v1 - 8);
  v50 = v1;
  __chkstk_darwin(v1);
  v48 = &v35 - v2;
  v3 = sub_100140278(&qword_1008E5FB0);
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v45 = &v35 - v4;
  v55 = type metadata accessor for InputConnectionBehavior();
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008DD130);
  __chkstk_darwin(v6 - 8);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v40 = &v35 - v9;
  v10 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v54 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v54 - 8);
  __chkstk_darwin(v54);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for LocalizedStringResource();
  v37 = v18;
  v56 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  v58 = 0u;
  v59 = 0u;
  v60 = 0;
  static AppDependencyManager.shared.getter();
  v44 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008E5FB8);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  static AppDependencyManager.shared.getter();
  v42 = AppDependency.__allocating_init(key:manager:)();
  v39 = sub_100140278(&qword_1008E5FC0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v13 + 104))(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v54);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  LocalizedStringResource.init(stringLiteral:)();
  v21 = *(v56 + 56);
  v56 += 56;
  v38 = v21;
  v21(v12, 0, 1, v18);
  LOBYTE(v58) = 0;
  v22 = type metadata accessor for IntentDialog();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v53 = v24;
  v54 = v23 + 56;
  v25 = v40;
  v24(v40, 1, 1, v22);
  v24(v41, 1, 1, v22);
  v52 = enum case for InputConnectionBehavior.default(_:);
  v26 = *(v57 + 104);
  v57 += 104;
  v27 = v43;
  v28 = v55;
  v26(v43);
  v36 = v26;
  sub_1002A3318();
  v35 = v20;
  v41 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v39 = sub_100140278(&qword_1008E5FC8);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v29 = v37;
  v30 = v38;
  v38(v12, 0, 1, v37);
  *&v58 = 0;
  BYTE8(v58) = 1;
  (*(v46 + 104))(v45, enum case for IntentParameter.IntControlStyle.stepper<A>(_:), v47);
  v53(v25, 1, 1, v22);
  (v26)(v27, v52, v28);
  v47 = IntentParameter<>.init(title:description:default:controlStyle:inclusiveRange:requestValueDialog:inputConnectionBehavior:)();
  v46 = sub_100140278(&qword_1008E5FD0);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v30(v12, 0, 1, v29);
  (*(v49 + 104))(v48, enum case for IntentParameter.DateKind.date<A>(_:), v50);
  v53(v25, 1, 1, v22);
  (v36)(v27, v52, v55);
  result = IntentParameter<>.init(title:description:kind:requestValueDialog:inputConnectionBehavior:)();
  v32 = v51;
  v33 = v42;
  *v51 = v44;
  v32[1] = v33;
  v34 = v47;
  v32[2] = v41;
  v32[3] = v34;
  v32[4] = result;
  return result;
}

uint64_t sub_1002BF050@<X0>(uint64_t *a1@<X8>)
{
  v66 = a1;
  v78 = sub_100140278(&qword_1008E5FB0);
  v86 = *(v78 - 8);
  __chkstk_darwin(v78);
  v69 = &v58 - v1;
  v83 = type metadata accessor for InputConnectionBehavior();
  v73 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100140278(&qword_1008DD130);
  __chkstk_darwin(v3 - 8);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v81 = v12;
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v75 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  v88 = 0u;
  v89 = 0u;
  v90 = 0;
  static AppDependencyManager.shared.getter();
  v65 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150);
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  static AppDependencyManager.shared.getter();
  v64 = AppDependency.__allocating_init(key:manager:)();
  v72 = sub_100140278(&qword_1008E5FD8);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v76 = *(v13 + 56);
  v85 = v13 + 56;
  v76(v11, 0, 1, v12);
  v87 = 7;
  v15 = type metadata accessor for IntentDialog();
  v84 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v77 = v17;
  v80 = v16 + 56;
  v17(v8, 1, 1, v15);
  v17(v5, 1, 1, v15);
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  static AppDependencyManager.shared.getter();
  v18 = AppDependency.__allocating_init(key:manager:)();
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  static AppDependencyManager.shared.getter();
  v19 = AppDependency.__allocating_init(key:manager:)();
  *&v88 = v18;
  *(&v88 + 1) = v19;
  v74 = enum case for InputConnectionBehavior.default(_:);
  v20 = v73 + 104;
  v79 = *(v73 + 104);
  v21 = v82;
  v22 = v83;
  v79(v82);
  sub_1002BFC88();
  sub_1002BFCDC();
  v23 = v8;
  v63 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:optionsProvider:)();
  v71 = sub_100140278(&qword_1008E5FC8);
  LocalizedStringResource.init(stringLiteral:)();
  v68 = "Activity Ring to set";
  LocalizedStringResource.init(stringLiteral:)();
  v24 = v76;
  v76(v11, 0, 1, v81);
  *&v88 = 0;
  BYTE8(v88) = 1;
  v77(v8, 1, 1, v84);
  v70 = enum case for IntentParameter.IntControlStyle.stepper<A>(_:);
  v25 = *(v86 + 104);
  v86 += 104;
  v72 = v25;
  v26 = v69;
  v27 = v78;
  v25(v69);
  v28 = v74;
  v73 = v20;
  (v79)(v21, v74, v22);
  v67 = v23;
  v62 = IntentParameter<>.init(title:description:default:controlStyle:inclusiveRange:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v29 = v81;
  v24(v11, 0, 1, v81);
  *&v88 = 0;
  BYTE8(v88) = 1;
  v30 = v23;
  v31 = v77;
  v77(v30, 1, 1, v84);
  v32 = v26;
  v33 = v26;
  v34 = v70;
  v72(v33, v70, v27);
  (v79)(v82, v28, v83);
  v35 = v67;
  v61 = IntentParameter<>.init(title:description:default:controlStyle:inclusiveRange:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v76(v11, 0, 1, v29);
  *&v88 = 0;
  BYTE8(v88) = 1;
  v31(v35, 1, 1, v84);
  v36 = v34;
  v37 = v78;
  v38 = v72;
  v72(v32, v36, v78);
  v39 = v74;
  (v79)(v82, v74, v83);
  v68 = IntentParameter<>.init(title:description:default:controlStyle:inclusiveRange:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  v58 = v11;
  LocalizedStringResource.init(stringLiteral:)();
  v40 = v76;
  v76(v11, 0, 1, v81);
  *&v88 = 0;
  BYTE8(v88) = 1;
  v41 = v77;
  v77(v35, 1, 1, v84);
  v42 = v69;
  v43 = v70;
  v38(v69, v70, v37);
  v44 = v83;
  (v79)(v82, v39, v83);
  v45 = v58;
  v46 = v67;
  v60 = IntentParameter<>.init(title:description:default:controlStyle:inclusiveRange:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v47 = v45;
  v40(v45, 0, 1, v81);
  *&v88 = 0;
  BYTE8(v88) = 1;
  v41(v46, 1, 1, v84);
  v48 = v42;
  v49 = v72;
  v72(v42, v43, v78);
  v50 = v82;
  v51 = v79;
  (v79)(v82, v74, v44);
  v59 = IntentParameter<>.init(title:description:default:controlStyle:inclusiveRange:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v76(v47, 0, 1, v81);
  *&v88 = 0;
  BYTE8(v88) = 1;
  v77(v46, 1, 1, v84);
  v49(v48, v70, v78);
  (v51)(v50, v74, v83);
  result = IntentParameter<>.init(title:description:default:controlStyle:inclusiveRange:requestValueDialog:inputConnectionBehavior:)();
  v53 = v66;
  v54 = v64;
  *v66 = v65;
  v53[1] = v54;
  v55 = v62;
  v53[2] = v63;
  v53[3] = v55;
  v56 = v68;
  v53[4] = v61;
  v53[5] = v56;
  v57 = v59;
  v53[6] = v60;
  v53[7] = v57;
  v53[8] = result;
  return result;
}

unint64_t sub_1002BFC88()
{
  result = qword_1008E5FE0;
  if (!qword_1008E5FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5FE0);
  }

  return result;
}

unint64_t sub_1002BFCDC()
{
  result = qword_1008E5FE8;
  if (!qword_1008E5FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5FE8);
  }

  return result;
}

unint64_t sub_1002BFD30()
{
  v0 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v0 - 8);
  v2 = v45 - v1;
  v3 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v3 - 8);
  v5 = v45 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v54 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100140278(&qword_1008E6090);
  v10 = sub_100140278(&qword_1008E6098);
  v55 = v10;
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v50 = 8 * v11;
  v60 = v11;
  v13 = swift_allocObject();
  v48 = v13;
  *(v13 + 16) = xmmword_1006E44D0;
  v47 = *(v10 + 48);
  *(v13 + v12) = 0;
  v14 = v13 + v12;
  LocalizedStringResource.init(stringLiteral:)();
  v64 = *(v7 + 56);
  v64(v5, 1, 1, v6);
  v63 = type metadata accessor for DisplayRepresentation.Image();
  v15 = *(v63 - 8);
  v59 = *(v15 + 56);
  v56 = v15 + 56;
  v59(v2, 1, 1, v63);
  v16 = sub_100140278(&qword_1008E60A0);
  v17 = v7 + 56;
  v61 = *(v7 + 72);
  v62 = v16;
  v57 = *(v7 + 80);
  v18 = (v57 + 32) & ~v57;
  v19 = swift_allocObject();
  v66 = xmmword_1006D46C0;
  *(v19 + 16) = xmmword_1006D46C0;
  LocalizedStringResource.init(stringLiteral:)();
  v65 = v9;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v58 = v14;
  v20 = v55;
  v47 = *(v55 + 48);
  *(v14 + v11) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  v51 = v5;
  v21 = v54;
  v64(v5, 1, 1, v54);
  v59(v2, 1, 1, v63);
  *(swift_allocObject() + 16) = v66;
  LocalizedStringResource.init(stringLiteral:)();
  v49 = v2;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v47 = 2 * v60;
  v45[1] = v14 + 2 * v60;
  v46 = *(v20 + 48);
  *(v14 + v47) = 2;
  LocalizedStringResource.init(stringLiteral:)();
  v22 = v64;
  v53 = v17;
  v64(v5, 1, 1, v21);
  v23 = v63;
  v24 = v59;
  v59(v2, 1, 1, v63);
  *(swift_allocObject() + 16) = v66;
  LocalizedStringResource.init(stringLiteral:)();
  v25 = v51;
  v26 = v49;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v46 = v58 + v47 + v60;
  v47 = *(v55 + 48);
  *v46 = 3;
  LocalizedStringResource.init(stringLiteral:)();
  v27 = v25;
  v28 = v25;
  v29 = v54;
  v22(v27, 1, 1, v54);
  v24(v26, 1, 1, v23);
  *(swift_allocObject() + 16) = v66;
  LocalizedStringResource.init(stringLiteral:)();
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v47 = 4 * v60;
  v30 = v58;
  v46 = *(v55 + 48);
  *(v58 + 4 * v60) = 4;
  LocalizedStringResource.init(stringLiteral:)();
  v64(v28, 1, 1, v29);
  v31 = v59;
  v59(v26, 1, 1, v63);
  v52 = v18;
  *(swift_allocObject() + 16) = v66;
  LocalizedStringResource.init(stringLiteral:)();
  v32 = v51;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v46 = v30 + v47 + v60;
  v33 = v55;
  v47 = *(v55 + 48);
  *v46 = 5;
  LocalizedStringResource.init(stringLiteral:)();
  v34 = v32;
  v35 = v54;
  v36 = v64;
  v64(v34, 1, 1, v54);
  v37 = v63;
  v31(v26, 1, 1, v63);
  *(swift_allocObject() + 16) = v66;
  LocalizedStringResource.init(stringLiteral:)();
  v38 = v51;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v39 = v58;
  v47 = *(v33 + 48);
  *(v58 + 6 * v60) = 6;
  LocalizedStringResource.init(stringLiteral:)();
  v36(v38, 1, 1, v35);
  v59(v26, 1, 1, v37);
  *(swift_allocObject() + 16) = v66;
  LocalizedStringResource.init(stringLiteral:)();
  v40 = v49;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v41 = (v39 + v50 - v60);
  v60 = *(v55 + 48);
  *v41 = 7;
  LocalizedStringResource.init(stringLiteral:)();
  v64(v38, 1, 1, v35);
  v42 = v59;
  v59(v40, 1, 1, v63);
  *(swift_allocObject() + 16) = v66;
  LocalizedStringResource.init(stringLiteral:)();
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  *(v58 + v50) = 8;
  LocalizedStringResource.init(stringLiteral:)();
  v64(v38, 1, 1, v54);
  v42(v40, 1, 1, v63);
  *(swift_allocObject() + 16) = v66;
  LocalizedStringResource.init(stringLiteral:)();
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v43 = sub_1004CAF94(v48);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v43;
}

unint64_t sub_1002C08D8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100844CC0, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002C0924@<X0>(uint64_t *a1@<X8>)
{
  v75 = a1;
  v1 = sub_100140278(&qword_1008E5FB0);
  v91 = *(v1 - 8);
  v92 = v1;
  __chkstk_darwin(v1);
  v78 = &v65 - v2;
  v3 = type metadata accessor for InputConnectionBehavior();
  v94 = *(v3 - 8);
  v95 = v3;
  __chkstk_darwin(v3);
  v93 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008DD130);
  __chkstk_darwin(v5 - 8);
  v84 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v65 - v8;
  v10 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v10 - 8);
  v12 = &v65 - v11;
  v13 = type metadata accessor for LocalizedStringResource();
  v86 = v13;
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  v97 = 0u;
  v98 = 0u;
  v99 = 0;
  static AppDependencyManager.shared.getter();
  v74 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150);
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  static AppDependencyManager.shared.getter();
  v73 = AppDependency.__allocating_init(key:manager:)();
  v83 = sub_100140278(&qword_1008E5FD8);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v17 = *(v14 + 56);
  v87 = v14 + 56;
  v90 = v17;
  v17(v12, 0, 1, v13);
  v96 = 7;
  v18 = type metadata accessor for IntentDialog();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v85 = v20;
  v21 = v19 + 56;
  v20(v9, 1, 1, v18);
  v20(v84, 1, 1, v18);
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  static AppDependencyManager.shared.getter();
  v22 = AppDependency.__allocating_init(key:manager:)();
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  static AppDependencyManager.shared.getter();
  v23 = AppDependency.__allocating_init(key:manager:)();
  *&v97 = v22;
  *(&v97 + 1) = v23;
  v89 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v94 + 104);
  v94 += 104;
  v88 = v24;
  v24(v93);
  sub_1002C1668();
  sub_1002BFCDC();
  v72 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:optionsProvider:)();
  v83 = sub_100140278(&qword_1008E5FF8);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v25 = v86;
  v26 = v90;
  v90(v12, 0, 1, v86);
  LOBYTE(v97) = 8;
  v27 = v18;
  v81 = v18;
  v28 = v18;
  v29 = v85;
  v80 = v21;
  v85(v9, 1, 1, v28);
  v29(v84, 1, 1, v27);
  v30 = v93;
  v31 = v89;
  v88(v93, v89, v95);
  sub_1002B3838();
  v71 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v84 = sub_100140278(&qword_1008E5FC8);
  LocalizedStringResource.init(stringLiteral:)();
  v77 = "Activity Ring to set";
  LocalizedStringResource.init(stringLiteral:)();
  v26(v12, 0, 1, v25);
  *&v97 = 0;
  BYTE8(v97) = 1;
  v32 = v81;
  v85(v9, 1, 1, v81);
  v82 = enum case for IntentParameter.IntControlStyle.stepper<A>(_:);
  v33 = v92;
  v34 = *(v91 + 104);
  v91 += 104;
  v83 = v34;
  v35 = v78;
  v34(v78);
  v36 = v31;
  v37 = v88;
  v88(v30, v36, v95);
  v79 = v16;
  v76 = v9;
  v70 = IntentParameter<>.init(title:description:default:controlStyle:inclusiveRange:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v90(v12, 0, 1, v86);
  *&v97 = 0;
  BYTE8(v97) = 1;
  v38 = v85;
  v85(v9, 1, 1, v32);
  v39 = v82;
  v83(v35, v82, v33);
  v40 = v95;
  v37(v93, v89, v95);
  v41 = v76;
  v69 = IntentParameter<>.init(title:description:default:controlStyle:inclusiveRange:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v90(v12, 0, 1, v86);
  *&v97 = 0;
  BYTE8(v97) = 1;
  v38(v41, 1, 1, v81);
  v42 = v39;
  v43 = v83;
  v83(v35, v42, v92);
  v44 = v88;
  v88(v93, v89, v40);
  v45 = v41;
  v77 = IntentParameter<>.init(title:description:default:controlStyle:inclusiveRange:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  v66 = v12;
  LocalizedStringResource.init(stringLiteral:)();
  v46 = v86;
  v90(v12, 0, 1, v86);
  *&v97 = 0;
  BYTE8(v97) = 1;
  v47 = v45;
  v48 = v81;
  v49 = v85;
  v85(v47, 1, 1, v81);
  v43(v78, v82, v92);
  v50 = v89;
  v44(v93, v89, v95);
  v51 = v66;
  v52 = v76;
  v68 = IntentParameter<>.init(title:description:default:controlStyle:inclusiveRange:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v53 = v51;
  v54 = v51;
  v55 = v90;
  v90(v53, 0, 1, v46);
  *&v97 = 0;
  BYTE8(v97) = 1;
  v49(v52, 1, 1, v48);
  v56 = v78;
  v83(v78, v82, v92);
  v57 = v93;
  v58 = v95;
  v88(v93, v50, v95);
  v67 = IntentParameter<>.init(title:description:default:controlStyle:inclusiveRange:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v55(v54, 0, 1, v86);
  *&v97 = 0;
  BYTE8(v97) = 1;
  v85(v52, 1, 1, v81);
  v83(v56, v82, v92);
  v88(v57, v89, v58);
  result = IntentParameter<>.init(title:description:default:controlStyle:inclusiveRange:requestValueDialog:inputConnectionBehavior:)();
  v60 = v75;
  v61 = v73;
  *v75 = v74;
  v60[1] = v61;
  v62 = v71;
  v60[2] = v72;
  v60[3] = v62;
  v63 = v69;
  v60[4] = v70;
  v60[5] = v63;
  v64 = v68;
  v60[6] = v77;
  v60[7] = v64;
  v60[8] = v67;
  v60[9] = result;
  return result;
}

unint64_t sub_1002C1668()
{
  result = qword_1008E5FF0;
  if (!qword_1008E5FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5FF0);
  }

  return result;
}

uint64_t sub_1002C16BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002BBC0;

  return sub_1002BA5E4(v0 + 16);
}

unint64_t sub_1002C1788()
{
  result = qword_1008E6020;
  if (!qword_1008E6020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6020);
  }

  return result;
}

unint64_t sub_1002C17DC()
{
  result = qword_1008E6030;
  if (!qword_1008E6030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6030);
  }

  return result;
}

unint64_t sub_1002C1830()
{
  result = qword_1008E6040;
  if (!qword_1008E6040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6040);
  }

  return result;
}

unint64_t sub_1002C1884()
{
  result = qword_1008E6078;
  if (!qword_1008E6078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6078);
  }

  return result;
}

unint64_t sub_1002C18D8()
{
  result = qword_1008E6080;
  if (!qword_1008E6080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6080);
  }

  return result;
}

unint64_t sub_1002C192C()
{
  result = qword_1008E6108;
  if (!qword_1008E6108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6108);
  }

  return result;
}

unint64_t sub_1002C1980()
{
  result = qword_1008E6110;
  if (!qword_1008E6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6110);
  }

  return result;
}

uint64_t sub_1002C19E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002C19F8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002BACC;

  return sub_1002B0CB8(v2);
}

unint64_t sub_1002C1A94()
{
  result = qword_1008E6178;
  if (!qword_1008E6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6178);
  }

  return result;
}

uint64_t sub_1002C1AE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002C1B38()
{
  v1 = sub_100140278(&qword_1008E6118);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002C1BCC()
{
  sub_100140278(&qword_1008E6118);
  sub_100140278(&qword_1008E6118);
  return CheckedContinuation.resume(returning:)();
}

unint64_t sub_1002C1C70()
{
  result = qword_1008E61F8;
  if (!qword_1008E61F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E61F8);
  }

  return result;
}

unint64_t sub_1002C1CC4()
{
  result = qword_1008E6230;
  if (!qword_1008E6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6230);
  }

  return result;
}

uint64_t sub_1002C1D18(uint64_t a1)
{
  v2 = type metadata accessor for ActivitySummaryView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1002C1DEC()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setLocalizedDateFormatFromTemplate:v1];

  qword_1008E6268 = v0;
}

uint64_t sub_1002C1E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008E6288);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = sub_100140278(&qword_1008E6280);
  v10 = *(v9 - 8);
  v28 = v9;
  v29 = v10;
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  v13 = sub_100140278(&qword_1008E6278);
  v14 = *(v13 - 8);
  v30 = v13;
  v31 = v14;
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  v37 = a1;
  static Axis.Set.vertical.getter();
  sub_100140278(&qword_1008E62A8);
  sub_10014A6B0(&qword_1008E62B0, &qword_1008E62A8);
  ScrollView.init(_:showsIndicators:content:)();
  v36 = a1;
  v17 = sub_100140278(&qword_1008E6290);
  v18 = sub_10014A6B0(&qword_1008E6298, &qword_1008E6288);
  v19 = sub_10014A6B0(&qword_1008E62A0, &qword_1008E6290);
  View.toolbar<A>(content:)();
  (*(v6 + 8))(v8, v5);
  LocalizedStringKey.init(stringLiteral:)();
  v38 = v5;
  v39 = v17;
  v40 = v18;
  v41 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v28;
  View.navigationTitle(_:)();

  v22 = v21;
  (*(v29 + 8))(v12, v21);
  v23 = v32;
  v24 = v33;
  v25 = v34;
  (*(v33 + 104))(v32, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v34);
  v38 = v22;
  v39 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v26 = v30;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v24 + 8))(v23, v25);
  return (*(v31 + 8))(v16, v26);
}

uint64_t sub_1002C2344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v164 = a2;
  v3 = type metadata accessor for Calendar.Component();
  v159 = *(v3 - 8);
  v160 = v3;
  __chkstk_darwin(v3);
  v158 = &v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v161 = *(v5 - 8);
  v162 = v5;
  __chkstk_darwin(v5);
  v156 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v7 - 8);
  v157 = &v150 - v8;
  v165 = type metadata accessor for Date();
  v155 = *(v165 - 8);
  __chkstk_darwin(v165);
  v154 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v163 = &v150 - v11;
  v153 = type metadata accessor for WheelPickerStyle();
  v167 = *(v153 - 8);
  __chkstk_darwin(v153);
  v13 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100140278(&qword_1008E62F0);
  v15 = *(v14 - 8);
  v150 = v14;
  v151 = v15;
  __chkstk_darwin(v14);
  v17 = &v150 - v16;
  v18 = sub_100140278(&qword_1008E62F8);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v168 = &v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = (&v150 - v22);
  LocalizedStringKey.init(stringLiteral:)();
  v211 = *(a1 + 32);
  v166 = a1;
  v198 = *(a1 + 32);
  v152 = sub_100140278(&qword_1008DC400);
  State.projectedValue.getter();
  sub_100140278(&qword_1008E6300);
  sub_1002C4510();
  Picker<>.init(_:selection:content:)();
  WheelPickerStyle.init()();
  sub_10014A6B0(&qword_1008E6310, &qword_1008E62F0);
  v24 = v150;
  v25 = v153;
  View.pickerStyle<A>(_:)();
  v167[1](v13, v25);
  (*(v151 + 8))(v17, v24);
  LOBYTE(a1) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v23 + *(sub_100140278(&qword_1008E6318) + 36);
  *v34 = a1;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  LOBYTE(a1) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v35 = *(v19 + 44);
  v167 = v23;
  v36 = v23 + v35;
  *v36 = a1;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  v41 = v156;
  static Calendar.current.getter();
  v43 = v158;
  v42 = v159;
  v44 = v160;
  (*(v159 + 104))(v158, enum case for Calendar.Component.day(_:), v160);
  v212 = v211;
  v45 = v155;
  State.wrappedValue.getter();
  v46 = v154;
  Date.init()();
  v47 = v157;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v48 = v165;
  v49 = v46;
  v50 = *(v45 + 8);
  (v50)(v49, v165);
  (*(v42 + 8))(v43, v44);
  v161[1](v41, v162);
  if ((*(v45 + 48))(v47, 1, v48) == 1)
  {
    sub_10000EA04(v47, &unk_1008F73A0);
    sub_1002C458C(&v212);
  }

  else
  {
    v161 = v50;
    v162 = v45 + 8;
    (*(v45 + 32))(v163, v47, v48);
    v51 = [objc_opt_self() mainBundle];
    v52 = String._bridgeToObjectiveC()();

    v53 = [v51 localizedStringForKey:v52 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1006D46C0;
    if (qword_1008DA848 != -1)
    {
      swift_once();
    }

    v55 = qword_1008E6268;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v57 = [v55 stringFromDate:isa];

    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    *(v54 + 56) = &type metadata for String;
    *(v54 + 64) = sub_10000A788();
    *(v54 + 32) = v58;
    *(v54 + 40) = v60;
    v61 = String.init(format:_:)();
    v63 = v62;

    *&v212 = v61;
    *(&v212 + 1) = v63;
    sub_10000FCBC();
    v64 = Text.init<A>(_:)();
    v66 = v65;
    LOBYTE(v63) = v67;
    static Font.body.getter();
    v68 = Text.font(_:)();
    v70 = v69;
    v72 = v71;

    sub_10004642C(v64, v66, v63 & 1);

    static Font.Weight.regular.getter();
    v73 = Text.fontWeight(_:)();
    v75 = v74;
    LOBYTE(v63) = v76;
    v78 = v77;
    sub_10004642C(v68, v70, v72 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v68) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;
    LOBYTE(v70) = v63 & 1;
    LOBYTE(v212) = v63 & 1;
    LOBYTE(v198) = 0;
    LOBYTE(v63) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    (v161)(v163, v165);
    *&v198 = v73;
    *(&v198 + 1) = v75;
    LOBYTE(v199) = v70;
    *(&v199 + 1) = v78;
    *&v200 = KeyPath;
    BYTE8(v200) = 1;
    LOBYTE(v201) = v68;
    *(&v201 + 1) = v81;
    *&v202 = v83;
    *(&v202 + 1) = v85;
    *&v203 = v87;
    BYTE8(v203) = 0;
    LOBYTE(v204) = v63;
    *(&v204 + 1) = v89;
    *&v205[0] = v91;
    *(&v205[0] + 1) = v93;
    *&v205[1] = v95;
    BYTE8(v205[1]) = 0;
    ASFriendListDisplayMode.id.getter(&v198);
    v217 = v203;
    v218 = v204;
    v219[0] = v205[0];
    *(v219 + 9) = *(v205 + 9);
    v213 = v199;
    v214 = v200;
    v215 = v201;
    v216 = v202;
    v212 = v198;
  }

  LocalizedStringKey.init(stringLiteral:)();
  v96 = Text.init(_:tableName:bundle:comment:)();
  v98 = v97;
  v100 = v99;
  static Font.body.getter();
  v101 = Text.font(_:)();
  v165 = v102;
  v166 = v101;
  v104 = v103;
  v106 = v105;

  sub_10004642C(v96, v98, v100 & 1);

  static Font.Weight.regular.getter();
  v107 = v166;
  v108 = Text.fontWeight(_:)();
  v110 = v109;
  v112 = v111;
  v163 = v113;
  sub_10004642C(v107, v104, v106 & 1);

  *&v198 = static Color.secondary.getter();
  v114 = Text.foregroundStyle<A>(_:)();
  v165 = v115;
  v166 = v116;
  v118 = v117;
  sub_10004642C(v108, v110, v112 & 1);

  v119 = swift_getKeyPath();
  LODWORD(v163) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v121 = v120;
  v123 = v122;
  v125 = v124;
  v127 = v126;
  LODWORD(v162) = v118 & 1;
  v210 = v118 & 1;
  v206 = 0;
  v128 = v168;
  sub_10001B104(v167, v168, &qword_1008E62F8);
  v174 = v217;
  v175 = v218;
  v176[0] = v219[0];
  *(v176 + 9) = *(v219 + 9);
  v171 = v214;
  v172 = v215;
  v173 = v216;
  v169 = v212;
  v170 = v213;
  v129 = v128;
  v130 = v164;
  sub_10001B104(v129, v164, &qword_1008E62F8);
  v131 = sub_100140278(&qword_1008E6320);
  v132 = *(v131 + 48);
  v134 = v174;
  v133 = v175;
  v177[5] = v174;
  v177[6] = v175;
  v178[0] = v176[0];
  *(v178 + 9) = *(v176 + 9);
  v177[3] = v172;
  v177[4] = v173;
  v136 = v172;
  v135 = v173;
  v177[1] = v170;
  v177[2] = v171;
  v137 = v170;
  v138 = v169;
  v177[0] = v169;
  v139 = (v130 + v132);
  v139[2] = v171;
  v139[3] = v136;
  *(v139 + 121) = *(v176 + 9);
  v140 = v176[0];
  v139[6] = v133;
  v139[7] = v140;
  v139[4] = v135;
  v139[5] = v134;
  *v139 = v138;
  v139[1] = v137;
  v141 = (v130 + *(v131 + 64));
  v143 = v165;
  v142 = v166;
  *&v179 = v114;
  *(&v179 + 1) = v165;
  LOBYTE(v107) = v162;
  LOBYTE(v180) = v162;
  *(&v180 + 1) = *v209;
  DWORD1(v180) = *&v209[3];
  *(&v180 + 1) = v166;
  *&v181 = v119;
  v144 = v119;
  BYTE8(v181) = 1;
  HIDWORD(v181) = *&v208[3];
  *(&v181 + 9) = *v208;
  LOBYTE(v119) = v163;
  LOBYTE(v182) = v163;
  DWORD1(v182) = *&v207[3];
  *(&v182 + 1) = *v207;
  *(&v182 + 1) = v121;
  *&v183[0] = v123;
  *(&v183[0] + 1) = v125;
  *&v183[1] = v127;
  BYTE8(v183[1]) = 0;
  v145 = v180;
  *v141 = v179;
  v141[1] = v145;
  v146 = v181;
  v147 = v182;
  v148 = v183[0];
  *(v141 + 73) = *(v183 + 9);
  v141[3] = v147;
  v141[4] = v148;
  v141[2] = v146;
  sub_10001B104(v177, &v198, &qword_1008E6328);
  sub_10001B104(&v179, &v198, &qword_1008DE058);
  sub_10000EA04(v167, &qword_1008E62F8);
  v184[0] = v114;
  v184[1] = v143;
  v185 = v107;
  *v186 = *v209;
  *&v186[3] = *&v209[3];
  v187 = v142;
  v188 = v144;
  v189 = 1;
  *v190 = *v208;
  *&v190[3] = *&v208[3];
  v191 = v119;
  *&v192[3] = *&v207[3];
  *v192 = *v207;
  v193 = v121;
  v194 = v123;
  v195 = v125;
  v196 = v127;
  v197 = 0;
  sub_10000EA04(v184, &qword_1008DE058);
  v204 = v175;
  v205[0] = v176[0];
  *(v205 + 9) = *(v176 + 9);
  v200 = v171;
  v201 = v172;
  v202 = v173;
  v203 = v174;
  v198 = v169;
  v199 = v170;
  sub_10000EA04(&v198, &qword_1008E6328);
  return sub_10000EA04(v168, &qword_1008E62F8);
}

uint64_t sub_1002C3230()
{
  swift_getKeyPath();
  sub_100140278(&qword_1008E6330);
  sub_1002C45A8();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1002C32E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_opt_self() mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 localizedStringForKey:v5 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006D46C0;
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = v3;
  String.init(format:_:)();

  sub_10000FCBC();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_1002C3438@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v36 = sub_100140278(&qword_1008E62B8);
  __chkstk_darwin(v36);
  v35 = &v30 - v3;
  v4 = sub_100140278(&qword_1008E62C0);
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v30 = &v30 - v5;
  v6 = sub_100140278(&qword_1008E62C8);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v34 = &v30 - v10;
  v11 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v11 - 8);
  v12 = sub_100140278(&qword_1008E62D0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  static ToolbarItemPlacement.topBarTrailing.getter();
  v38 = a1;
  sub_100140278(&qword_1008E62D8);
  sub_10014A6B0(&qword_1008E62E0, &qword_1008E62D8);
  v31 = v18;
  ToolbarItem<>.init(placement:content:)();
  if (a1[9])
  {
    v19 = static ToolbarItemPlacement.topBarLeading.getter();
    __chkstk_darwin(v19);
    *(&v30 - 2) = a1;
    ToolbarItem<>.init(placement:content:)();
    v20 = sub_10014A6B0(&qword_1008E62E8, &qword_1008E62D0);
    v21 = v30;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v23 = v32;
    v22 = v33;
    (*(v32 + 16))(v8, v21, v33);
    (*(v23 + 56))(v8, 0, 1, v22);
    v39 = v12;
    v40 = v20;
    swift_getOpaqueTypeConformance2();
    v24 = v34;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000EA04(v8, &qword_1008E62C8);
    (*(v23 + 8))(v21, v22);
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    (*(v32 + 56))(v8, 1, 1, v33);
    v25 = sub_10014A6B0(&qword_1008E62E8, &qword_1008E62D0);
    v39 = v12;
    v40 = v25;
    swift_getOpaqueTypeConformance2();
    v24 = v34;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000EA04(v8, &qword_1008E62C8);
  }

  v26 = v35;
  v27 = *(v36 + 48);
  v28 = v31;
  (*(v13 + 16))(v35, v31, v12);
  sub_10001B104(v24, &v26[v27], &qword_1008E62C8);
  TupleToolbarContent.init(_:)();
  sub_10000EA04(v24, &qword_1008E62C8);
  return (*(v13 + 8))(v28, v12);
}

uint64_t sub_1002C39F4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v1 - 8);
  v46 = v1;
  __chkstk_darwin(v1);
  v43 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar.Component();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar();
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v49 = &v39 - v19;
  static Calendar.current.getter();
  (*(v5 + 104))(v7, enum case for Calendar.Component.day(_:), v4);
  v57 = *(v0 + 32);
  v50 = v0;
  aBlock = *(v0 + 32);
  sub_100140278(&qword_1008DC400);
  State.wrappedValue.getter();
  Date.init()();
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v40 = *(v15 + 8);
  v40(v17, v14);
  (*(v5 + 8))(v7, v4);
  (*(v47 + 8))(v10, v48);
  v20 = v14;
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v21 = sub_10000EA04(v13, &unk_1008F73A0);
    return (*(v50 + 16))(v21);
  }

  else
  {
    v23 = *(v15 + 32);
    v24 = v49;
    v23(v49, v13, v14);
    sub_1000078CC();
    v48 = v15 + 8;
    v47 = static OS_dispatch_queue.main.getter();
    v25 = v50;
    v26 = *v50;
    v39 = *(v50 + 24);
    v27 = v24;
    v28 = v20;
    (*(v15 + 16))(v17, v27, v20);
    v29 = (*(v15 + 80) + 64) & ~*(v15 + 80);
    v30 = swift_allocObject();
    v31 = v25[1];
    *(v30 + 1) = *v25;
    *(v30 + 2) = v31;
    *(v30 + 3) = v25[2];
    v32 = v28;
    v23(&v30[v29], &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
    v55 = sub_1002C44AC;
    v56 = v30;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v53 = sub_1000449A8;
    v54 = &unk_100850A90;
    v33 = _Block_copy(&aBlock);
    v34 = v26;

    sub_10001B104(&v57, &v51, &qword_1008DC400);

    v35 = v41;
    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    sub_1000261C4();
    sub_100140278(&unk_1008E7F50);
    sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
    v36 = v43;
    v37 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v38 = v47;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);

    (*(v45 + 8))(v36, v37);
    (*(v42 + 8))(v35, v44);
    return (v40)(v49, v32);
  }
}

uint64_t sub_1002C409C(uint64_t a1)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = *a1;
  v8 = *(a1 + 32);
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  v3[1] = *a1;
  v3[2] = v4;
  v3[3] = *(a1 + 32);
  v5 = v2;

  sub_10001B104(&v8, &v7, &qword_1008DC400);
  return Button<>.init(_:action:)();
}

uint64_t sub_1002C4188(uint64_t a1)
{
  v2 = *a1;
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v2 pauseRingsUntilDate:isa completionHandler:0];

  return (*(a1 + 16))();
}

uint64_t sub_1002C41E8()
{
  sub_100140278(&qword_1008E6270);
  sub_100141EEC(&qword_1008E6278);
  sub_100141EEC(&qword_1008E6280);
  sub_100141EEC(&qword_1008E6288);
  sub_100141EEC(&qword_1008E6290);
  sub_10014A6B0(&qword_1008E6298, &qword_1008E6288);
  sub_10014A6B0(&qword_1008E62A0, &qword_1008E6290);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_1002C44AC()
{
  type metadata accessor for Date();

  return sub_1002C4188(v0 + 16);
}

unint64_t sub_1002C4510()
{
  result = qword_1008E6308;
  if (!qword_1008E6308)
  {
    sub_100141EEC(&qword_1008E6300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6308);
  }

  return result;
}

double sub_1002C458C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_1002C45A8()
{
  result = qword_1008E6338;
  if (!qword_1008E6338)
  {
    sub_100141EEC(&qword_1008E6330);
    sub_100183040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6338);
  }

  return result;
}

uint64_t type metadata accessor for VerticalLayoutTrendView()
{
  result = qword_1008E63A8;
  if (!qword_1008E63A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002C46A8()
{
  sub_1002C47BC(319, &qword_1008DC720, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    type metadata accessor for TrendListMetric();
    if (v1 <= 0x3F)
    {
      sub_10005C818();
      if (v2 <= 0x3F)
      {
        sub_1002C47BC(319, &qword_1008E63B8, type metadata accessor for DashboardCardCellViewCache, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002C47BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1002C483C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v3 = type metadata accessor for AttributedString();
  v132 = *(v3 - 8);
  v133 = v3;
  __chkstk_darwin(v3);
  v131 = &v125[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v139 = type metadata accessor for DynamicTypeSize();
  v155 = *(v139 - 8);
  __chkstk_darwin(v139);
  v6 = &v125[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100140278(&qword_1008E63F8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v150 = &v125[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v125[-v11];
  v13 = type metadata accessor for VerticalLayoutTrendView();
  v130 = a1 + v13[5];
  sub_100073078(v130, v12);
  v14 = (a1 + v13[6]);
  v16 = v14[3];
  v15 = v14[4];
  sub_1000066AC(v14, v16);
  v17 = (*(v15 + 24))(v16, v15);
  v18 = *(a1 + v13[7]);
  v145 = a1;
  v19 = type metadata accessor for TrendArrowIndicatorViewRepresentable();
  v12[*(v19 + 20)] = v17 & 1;
  *&v12[*(v19 + 24)] = v18;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v20 = *(sub_100140278(&qword_1008E6400) + 36);
  v149 = v12;
  v21 = &v12[v20];
  v22 = v243;
  *v21 = v242;
  v21[1] = v22;
  v21[2] = v244;
  v23 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v24 = &v12[*(v8 + 44)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v29 = v14[3];
  v30 = v14[4];
  sub_1000066AC(v14, v29);
  v31 = (*(v30 + 16))(v29, v30);
  v33 = v32;
  LOBYTE(v15) = v34;
  sub_10005491C(v6);
  v35 = v6;
  sub_10001DEC8(v6, v31, v33, v15);
  sub_10001D4F8(v31, v33, v15);
  v36 = v155 + 8;
  v144 = *(v155 + 8);
  v37 = v139;
  v144(v6, v139);
  v155 = v36;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v136 = v247;
  v137 = v245;
  v134 = v250;
  v135 = v249;
  v240 = 0;
  v239 = v246;
  v238 = v248;
  v38 = v130;
  v39 = *(v130 + 16);
  v165 = *(v130 + 8);
  v166 = v39;
  sub_10000FCBC();

  v40 = Text.init<A>(_:)();
  v146 = v41;
  v147 = v40;
  LOBYTE(v39) = v42;
  v148 = v43;
  KeyPath = swift_getKeyPath();
  v153 = swift_getKeyPath();
  v151 = v39 & 1;
  v233 = v39 & 1;
  v232 = 0;
  v152 = static Edge.Set.trailing.getter();
  v44 = v14[3];
  v45 = v14[4];
  sub_1000066AC(v14, v44);
  v46 = (*(v45 + 16))(v44, v45);
  v48 = v47;
  LOBYTE(v15) = v49;
  sub_10005491C(v35);
  sub_10001DEC8(v35, v46, v48, v15);
  sub_10001D4F8(v46, v48, v15);
  v144(v35, v37);
  EdgeInsets.init(_all:)();
  v142 = v51;
  v143 = v50;
  v140 = v53;
  v141 = v52;
  v234 = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v237[55] = v254;
  *&v237[71] = v255;
  *&v237[87] = v256;
  *&v237[103] = v257;
  *&v237[7] = v251;
  *&v237[23] = v252;
  *&v237[39] = v253;
  v54 = type metadata accessor for TrendListMetric();
  (*(v132 + 16))(v131, &v38[*(v54 + 28)], v133);
  v55 = Text.init(_:)();
  v57 = v56;
  LOBYTE(v15) = v58;
  v59 = sub_100582888(*v38);
  v60 = *&v59[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

  v165 = Color.init(uiColor:)();
  v61 = Text.foregroundStyle<A>(_:)();
  v131 = v62;
  v132 = v61;
  LOBYTE(v37) = v63;
  v133 = v64;
  sub_10004642C(v55, v57, v15 & 1);

  v130 = swift_getKeyPath();
  v129 = swift_getKeyPath();
  v127 = v37 & 1;
  v224 = v37 & 1;
  v222 = 0;
  v128 = static Edge.Set.bottom.getter();
  v65 = v14[3];
  v66 = v14[4];
  sub_1000066AC(v14, v65);
  v67 = (*(v66 + 16))(v65, v66);
  v69 = v68;
  LOBYTE(v37) = v70;
  sub_10005491C(v35);
  sub_10001DEC8(v35, v67, v69, v37);
  sub_10001D4F8(v67, v69, v37);
  v71 = v139;
  v72 = v144;
  v144(v35, v139);
  EdgeInsets.init(_all:)();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v225 = 0;
  v126 = static Edge.Set.trailing.getter();
  v81 = v14[3];
  v82 = v14[4];
  sub_1000066AC(v14, v81);
  v83 = (*(v82 + 16))(v81, v82);
  v85 = v84;
  LOBYTE(v82) = v86;
  sub_10005491C(v35);
  sub_10001DEC8(v35, v83, v85, v82);
  sub_10001D4F8(v83, v85, v82);
  v72(v35, v71);
  EdgeInsets.init(_all:)();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v155 = v93;
  v228 = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v231[55] = v261;
  *&v231[71] = v262;
  *&v231[87] = v263;
  *&v231[103] = v264;
  *&v231[7] = v258;
  *&v231[23] = v259;
  *&v231[39] = v260;
  v94 = v150;
  sub_10001B104(v149, v150, &qword_1008E63F8);
  LOBYTE(v39) = v240;
  LOBYTE(v35) = v239;
  LOBYTE(v83) = v238;
  v95 = v138;
  sub_10001B104(v94, v138, &qword_1008E63F8);
  v96 = sub_100140278(&qword_1008E6408);
  v97 = v95 + v96[12];
  *v97 = 0;
  *(v97 + 8) = v39;
  v98 = v136;
  *(v97 + 16) = v137;
  *(v97 + 24) = v35;
  *(v97 + 32) = v98;
  *(v97 + 40) = v83;
  v99 = v134;
  *(v97 + 48) = v135;
  *(v97 + 56) = v99;
  v100 = v95 + v96[16];
  v101 = v95;
  *&v156 = v147;
  *(&v156 + 1) = v146;
  LOBYTE(v157) = v151;
  *(&v157 + 1) = *v241;
  DWORD1(v157) = *&v241[3];
  *(&v157 + 1) = v148;
  *&v158 = KeyPath;
  *(&v158 + 1) = 0x3FE8000000000000;
  *&v159 = v153;
  *(&v159 + 1) = 1;
  LOBYTE(v160) = 0;
  *(&v160 + 1) = *v236;
  DWORD1(v160) = *&v236[3];
  BYTE8(v160) = v152;
  HIDWORD(v160) = *&v235[3];
  *(&v160 + 9) = *v235;
  *&v161 = v143;
  *(&v161 + 1) = v142;
  *&v162 = v141;
  *(&v162 + 1) = v140;
  v163[0] = 0;
  *&v163[49] = *&v237[48];
  *&v163[33] = *&v237[32];
  *&v163[17] = *&v237[16];
  *&v163[1] = *v237;
  *&v163[112] = *&v237[111];
  *&v163[97] = *&v237[96];
  *&v163[81] = *&v237[80];
  *&v163[65] = *&v237[64];
  v102 = v157;
  *v100 = v156;
  *(v100 + 16) = v102;
  v103 = v158;
  v104 = v159;
  v105 = v161;
  *(v100 + 64) = v160;
  *(v100 + 80) = v105;
  *(v100 + 32) = v103;
  *(v100 + 48) = v104;
  v106 = v162;
  v107 = *v163;
  v108 = *&v163[32];
  *(v100 + 128) = *&v163[16];
  *(v100 + 144) = v108;
  *(v100 + 96) = v106;
  *(v100 + 112) = v107;
  v109 = *&v163[48];
  v110 = *&v163[64];
  v111 = *&v163[80];
  v112 = *&v163[96];
  *(v100 + 224) = *&v163[112];
  *(v100 + 192) = v111;
  *(v100 + 208) = v112;
  *(v100 + 160) = v109;
  *(v100 + 176) = v110;
  v113 = v96[20];
  v115 = v131;
  v114 = v132;
  v164[0] = v132;
  v164[1] = v131;
  LOBYTE(v83) = v127;
  LOBYTE(v164[2]) = v127;
  *(&v164[2] + 1) = *v223;
  HIDWORD(v164[2]) = *&v223[3];
  v116 = v133;
  v118 = v129;
  v117 = v130;
  v164[3] = v133;
  v164[4] = v130;
  v164[5] = 0x3FE8000000000000;
  v164[6] = v129;
  v164[7] = 1;
  LOBYTE(v164[8]) = 0;
  *(&v164[8] + 1) = *v227;
  HIDWORD(v164[8]) = *&v227[3];
  LOBYTE(v72) = v128;
  LOBYTE(v164[9]) = v128;
  HIDWORD(v164[9]) = *&v226[3];
  *(&v164[9] + 1) = *v226;
  v164[10] = v74;
  v119 = v76;
  v164[11] = v76;
  v120 = v78;
  v164[12] = v78;
  v121 = v80;
  v164[13] = v80;
  LOBYTE(v164[14]) = 0;
  *(&v164[14] + 1) = *v230;
  HIDWORD(v164[14]) = *&v230[3];
  LOBYTE(v85) = v126;
  LOBYTE(v164[15]) = v126;
  HIDWORD(v164[15]) = *&v229[3];
  *(&v164[15] + 1) = *v229;
  v164[16] = v88;
  v164[17] = v90;
  v122 = v92;
  v164[18] = v92;
  v123 = v155;
  v164[19] = v155;
  LOBYTE(v164[20]) = 0;
  *(&v164[32] + 1) = *&v231[96];
  *(&v164[28] + 1) = *&v231[64];
  *(&v164[30] + 1) = *&v231[80];
  v164[34] = *&v231[111];
  *(&v164[20] + 1) = *v231;
  *(&v164[22] + 1) = *&v231[16];
  *(&v164[24] + 1) = *&v231[32];
  *(&v164[26] + 1) = *&v231[48];
  memcpy((v101 + v113), v164, 0x118uLL);
  sub_10001B104(&v156, &v165, &qword_1008E6410);
  sub_10001B104(v164, &v165, &qword_1008E6418);
  sub_10000EA04(v149, &qword_1008E63F8);
  v165 = v114;
  v166 = v115;
  v167 = v83;
  *v168 = *v223;
  *&v168[3] = *&v223[3];
  v169 = v116;
  v170 = v117;
  v171 = 0x3FE8000000000000;
  v172 = v118;
  v173 = 1;
  v174 = 0;
  *v175 = *v227;
  *&v175[3] = *&v227[3];
  v176 = v72;
  *&v177[3] = *&v226[3];
  *v177 = *v226;
  v178 = v74;
  v179 = v119;
  v180 = v120;
  v181 = v121;
  v182 = 0;
  *v183 = *v230;
  *&v183[3] = *&v230[3];
  v184 = v85;
  *&v185[3] = *&v229[3];
  *v185 = *v229;
  v186 = v88;
  v187 = v90;
  v188 = v122;
  v189 = v123;
  v190 = 0;
  *v197 = *&v231[96];
  v195 = *&v231[64];
  v196 = *&v231[80];
  *&v197[15] = *&v231[111];
  v191 = *v231;
  v192 = *&v231[16];
  v193 = *&v231[32];
  v194 = *&v231[48];
  sub_10000EA04(&v165, &qword_1008E6418);
  v198[0] = v147;
  v198[1] = v146;
  v199 = v151;
  *v200 = *v241;
  *&v200[3] = *&v241[3];
  v201 = v148;
  v202 = KeyPath;
  v203 = 0x3FE8000000000000;
  v204 = v153;
  v205 = 1;
  v206 = 0;
  *v207 = *v236;
  *&v207[3] = *&v236[3];
  v208 = v152;
  *&v209[3] = *&v235[3];
  *v209 = *v235;
  v210 = v143;
  v211 = v142;
  v212 = v141;
  v213 = v140;
  v214 = 0;
  v215 = *v237;
  v216 = *&v237[16];
  v217 = *&v237[32];
  *&v221[15] = *&v237[111];
  *v221 = *&v237[96];
  v220 = *&v237[80];
  v219 = *&v237[64];
  v218 = *&v237[48];
  sub_10000EA04(v198, &qword_1008E6410);
  return sub_10000EA04(v150, &qword_1008E63F8);
}

uint64_t sub_1002C56E8@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_100140278(&qword_1008E63F0);
  return sub_1002C483C(v1, a1 + *(v3 + 44));
}

unint64_t sub_1002C5738()
{
  result = qword_1008E6420;
  if (!qword_1008E6420)
  {
    sub_100141EEC(&qword_1008E6428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6420);
  }

  return result;
}

void sub_1002C57B0()
{
  v0 = [objc_opt_self() keyColors];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 nonGradientTextColor];
  }

  else
  {
    v2 = 0;
  }

  qword_1008E6438 = v2;
}

void sub_1002C5848(uint64_t a1, id *a2, void *a3)
{
  v5 = objc_opt_self();
  v6 = *a2;
  v7 = [v5 _preferredFontForTextStyle:v6 variant:256];

  *a3 = v7;
}

char *sub_1002C58BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  *&v3[OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_configuration] = xmmword_1006D4AB0;
  v6 = OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_insetContentView;
  v7 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v6] = v7;
  *&v3[OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_activeViews] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_videoView] = 0;
  *&v3[OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_observers] = _swiftEmptyArrayStorage;
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v18.receiver = v3;
  v18.super_class = type metadata accessor for TrendsOnBoardingActivityTile();
  v9 = objc_msgSendSuper2(&v18, "initWithStyle:reuseIdentifier:", a1, v8);

  v10 = OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_insetContentView;
  v11 = *&v9[OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_insetContentView];
  v12 = v9;
  v13 = v11;
  v14 = sub_1004313A0();
  [v13 setBackgroundColor:v14];

  v15 = [*&v9[v10] layer];
  [v15 setCornerRadius:sub_1004313CC()];

  v16 = [v12 contentView];
  [v16 addSubview:*&v9[v10]];

  sub_1002C5CBC();
  return v12;
}

id sub_1002C5B08()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_observers];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v1 + 32;

    do
    {
      sub_10000B1B4(v4, v8);
      v5 = [v3 defaultCenter];
      sub_1000066AC(v8, v8[3]);
      [v5 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      sub_100005A40(v8);
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for TrendsOnBoardingActivityTile();
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_1002C5CBC()
{
  swift_getObjectType();
  v22 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D5300;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_insetContentView];
  v3 = [v2 topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:sub_1004313D0()];
  *(v1 + 32) = v6;
  v7 = [v2 leadingAnchor];
  v8 = [v0 contentView];
  v9 = [v8 leadingAnchor];

  sub_1004313D0();
  v11 = [v7 constraintEqualToAnchor:v9 constant:v10];

  *(v1 + 40) = v11;
  v12 = [v2 trailingAnchor];
  v13 = [v0 contentView];
  v14 = [v13 trailingAnchor];

  sub_1004313D0();
  v16 = [v12 constraintEqualToAnchor:v14 constant:-v15];

  *(v1 + 48) = v16;
  v17 = [v2 bottomAnchor];
  v18 = [v0 contentView];
  v19 = [v18 bottomAnchor];

  sub_1004313D0();
  v21 = [v17 constraintEqualToAnchor:v19 constant:-v20];

  *(v1 + 56) = v21;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v22 activateConstraints:isa];
}

id sub_1002C5FBC(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_activeViews);
  if (v4 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 removeFromSuperview];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_12:

  v10 = (v2 + OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_configuration);
  v11 = *(v2 + OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_configuration);
  *v10 = a1;
  v10[1] = a2;
  result = sub_100282D3C(v11);
  if (a1 != 1)
  {
    if (a1 == 2)
    {

      return sub_1002C6DC8();
    }

    else
    {
      sub_10000B210(a1);

      return sub_1002C6158();
    }
  }

  return result;
}

id sub_1002C6158()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for TrendsSplashVideoView());
  result = sub_1000698DC();
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = result;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = v1;
  v7 = *(v1 + OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_videoView);
  v76 = v6;
  *(v6 + OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_videoView) = v4;
  v75 = v5;

  v8 = [objc_allocWithZone(UILabel) init];
  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 localizedStringForKey:v11 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = String._bridgeToObjectiveC()();
  [v8 setText:v13];

  v14 = [objc_opt_self() labelColor];
  v15 = UILabel.withTextColor(_:)();

  [v15 setLineBreakMode:0];
  [v15 setNumberOfLines:0];
  if (qword_1008DA850 != -1)
  {
    swift_once();
  }

  v16 = qword_1008E6430;
  [v15 setFont:qword_1008E6430];
  v74 = v15;
  [v74 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [objc_allocWithZone(UIButton) init];
  v18 = [v9 mainBundle];
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 localizedStringForKey:v19 value:0 table:0];

  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  [v17 setTitle:v20 forState:{objc_msgSend(v17, "state")}];
  v21 = [v17 titleLabel];
  [v21 setFont:v16];

  if (qword_1008DA858 != -1)
  {
    swift_once();
  }

  [v17 setTitleColor:qword_1008E6438 forState:{objc_msgSend(v17, "state")}];
  v73 = v17;
  [v73 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [v75 window];
  if (v22)
  {

    v23 = *&v75[OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_player];
    v24 = v76;
    if (v23)
    {
      v25 = &selRef_play;
LABEL_13:
      [v23 *v25];
    }
  }

  else
  {
    v23 = *&v75[OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_player];
    v24 = v76;
    if (v23)
    {
      v25 = &selRef_pause;
      goto LABEL_13;
    }
  }

  [v73 addTarget:v24 action:"didTapGetStartedButton" forControlEvents:64];
  v26 = *(v24 + OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_insetContentView);
  [v26 addSubview:v75];
  [v26 addSubview:v74];
  [v26 addSubview:v73];
  v72 = objc_opt_self();
  v71 = sub_100140278(&unk_1008E4E20);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1006E5ED0;
  v28 = [v75 topAnchor];
  v29 = [v26 topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v27 + 32) = v30;
  v31 = [v75 centerXAnchor];
  v32 = [v26 centerXAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v27 + 40) = v33;
  v34 = [v75 heightAnchor];
  v35 = [v34 constraintEqualToConstant:122.0];

  *(v27 + 48) = v35;
  v36 = [v74 topAnchor];
  v37 = [v75 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:4.0];

  *(v27 + 56) = v38;
  v39 = [v74 leadingAnchor];
  v40 = [v26 leadingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:16.0];

  *(v27 + 64) = v41;
  v42 = [v74 trailingAnchor];
  v43 = [v26 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:-16.0];

  *(v27 + 72) = v44;
  v45 = [v73 topAnchor];
  v46 = [v74 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v27 + 80) = v47;
  v48 = [v73 leadingAnchor];
  v49 = [v26 leadingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:16.0];

  *(v27 + 88) = v50;
  v51 = [v73 bottomAnchor];
  v52 = [v26 bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:-10.0];

  *(v27 + 96) = v53;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v72 activateConstraints:isa];

  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1006D68C0;
  *(v55 + 32) = v75;
  *(v55 + 40) = v74;
  *(v55 + 48) = v73;
  *(v76 + OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_activeViews) = v55;

  v56 = objc_opt_self();
  v57 = [v56 defaultCenter];
  if (qword_1008DA778 != -1)
  {
    swift_once();
  }

  v58 = qword_100925420;
  v59 = objc_opt_self();
  v60 = [v59 mainQueue];
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v81 = sub_1002C788C;
  v82 = v61;
  aBlock = _NSConcreteStackBlock;
  v78 = 1107296256;
  v79 = sub_100026F8C;
  v80 = &unk_100850B88;
  v62 = _Block_copy(&aBlock);

  v63 = [v57 addObserverForName:v58 object:0 queue:v60 usingBlock:v62];
  _Block_release(v62);

  v64 = [v56 defaultCenter];
  if (qword_1008DA780 != -1)
  {
    swift_once();
  }

  v65 = qword_100925428;
  v66 = [v59 mainQueue];
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v81 = sub_1002C78BC;
  v82 = v67;
  aBlock = _NSConcreteStackBlock;
  v78 = 1107296256;
  v79 = sub_100026F8C;
  v80 = &unk_100850BB0;
  v68 = _Block_copy(&aBlock);

  v69 = [v64 addObserverForName:v65 object:0 queue:v66 usingBlock:v68];
  _Block_release(v68);

  sub_100140278(&qword_1008E7590);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1006D1F70;
  *(v70 + 56) = swift_getObjectType();
  *(v70 + 32) = v63;
  *(v70 + 88) = swift_getObjectType();
  *(v70 + 64) = v69;

  *(v76 + OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_observers) = v70;
}

void sub_1002C6CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  static os_log_type_t.debug.getter();
  v6 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_player);
    v9 = Strong;
    v10 = v8;

    if (v8)
    {
      [v10 *a5];
    }
  }
}

uint64_t sub_1002C6DC8()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = String._bridgeToObjectiveC()();
  [v0 setText:v5];

  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  v8 = UILabel.withTextColor(_:)();

  [v8 setLineBreakMode:0];
  [v8 setNumberOfLines:0];
  if (qword_1008DA860 != -1)
  {
    swift_once();
  }

  [v8 setFont:qword_1008E6440];
  v9 = v8;
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [objc_allocWithZone(UILabel) init];
  v11 = [v1 mainBundle];
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 localizedStringForKey:v12 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = String._bridgeToObjectiveC()();
  [v10 setText:v14];

  v15 = [v6 secondaryLabelColor];
  v16 = UILabel.withTextColor(_:)();

  [v16 setLineBreakMode:0];
  [v16 setNumberOfLines:0];
  if (qword_1008DA868 != -1)
  {
    swift_once();
  }

  [v16 setFont:qword_1008E6448];
  v17 = v16;
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = *(v45 + OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_insetContentView);
  [v18 addSubview:v9];
  [v18 addSubview:v17];
  v44 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1006D9800;
  v20 = [v9 topAnchor];
  v21 = [v18 topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:16.0];

  *(v19 + 32) = v22;
  v23 = [v9 leadingAnchor];
  v24 = [v18 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:16.0];

  *(v19 + 40) = v25;
  v26 = [v9 trailingAnchor];
  v27 = [v18 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:-16.0];

  *(v19 + 48) = v28;
  v29 = [v17 topAnchor];
  v30 = [v9 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:4.0];

  *(v19 + 56) = v31;
  v32 = [v17 leadingAnchor];
  v33 = [v18 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:16.0];

  *(v19 + 64) = v34;
  v35 = [v17 trailingAnchor];
  v36 = [v18 trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:-16.0];

  *(v19 + 72) = v37;
  v38 = [v17 bottomAnchor];
  v39 = [v18 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:-16.0];

  *(v19 + 80) = v40;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v44 activateConstraints:isa];

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1006D68D0;
  *(v42 + 32) = v9;
  *(v42 + 40) = v17;

  *(v45 + OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_activeViews) = v42;
}

uint64_t sub_1002C7578()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for TrendsOnBoardingActivityTile();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_activeViews];
  if (v1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v4 removeFromSuperview];

      ++v3;
      if (v6 == i)
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

  [*&v0[OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_videoView] teardownPlayer];
  v7 = *&v0[OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_configuration];
  *&v0[OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_configuration] = xmmword_1006D4AB0;
  return sub_100282D3C(v7);
}

uint64_t sub_1002C7758(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002C777C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002C77E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
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

void *sub_1002C7830(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

void sub_1002C78EC()
{
  *(v0 + OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_configuration) = xmmword_1006D4AB0;
  v1 = OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_insetContentView;
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_activeViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_videoView) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp28TrendsOnBoardingActivityTile_observers) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002C79D8(uint64_t result)
{
  if ((result - 1) >= 2)
  {
    return sub_10000B210(result);
  }

  return result;
}

unint64_t sub_1002C79F8()
{
  result = qword_1008E64A0;
  if (!qword_1008E64A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E64A0);
  }

  return result;
}

unint64_t sub_1002C7A50()
{
  result = qword_1008E64A8;
  if (!qword_1008E64A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E64A8);
  }

  return result;
}

uint64_t sub_1002C7AA4()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_100925558);
  sub_10001AC90(v0, qword_100925558);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1002C7B40@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

void (*sub_1002C7BB4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100162378;
}

unint64_t sub_1002C7C28()
{
  result = qword_1008E64B0;
  if (!qword_1008E64B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E64B0);
  }

  return result;
}

uint64_t sub_1002C7C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002C8370();
  v5 = sub_1002C8418();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1002C7CE8()
{
  result = qword_1008E64B8;
  if (!qword_1008E64B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E64B8);
  }

  return result;
}

unint64_t sub_1002C7D40()
{
  result = qword_1008E64C0;
  if (!qword_1008E64C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E64C0);
  }

  return result;
}

uint64_t sub_1002C7DE4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DA870 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10001AC90(v2, qword_100925558);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1002C7E8C(uint64_t a1)
{
  v2 = sub_1002C8370();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_1002C7EC8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1002C8370();
  v6 = sub_1002C83C4();
  v7 = sub_1002C8418();
  *v4 = v2;
  v4[1] = sub_1001628E8;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1002C7F94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C8008();
  *a1 = result;
  return result;
}

uint64_t sub_1002C7FBC(uint64_t a1)
{
  v2 = sub_1002C7C28();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1002C8008()
{
  v17 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100140278(&qword_1008DD130);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100140278(&qword_1008E64C8);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 0, 1, v12);
  v18 = 20;
  v14 = type metadata accessor for IntentDialog();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_1002C831C();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

unint64_t sub_1002C831C()
{
  result = qword_1008E64D0;
  if (!qword_1008E64D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E64D0);
  }

  return result;
}

unint64_t sub_1002C8370()
{
  result = qword_1008E64D8;
  if (!qword_1008E64D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E64D8);
  }

  return result;
}

unint64_t sub_1002C83C4()
{
  result = qword_1008E64E0;
  if (!qword_1008E64E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E64E0);
  }

  return result;
}

unint64_t sub_1002C8418()
{
  result = qword_1008E64E8;
  if (!qword_1008E64E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E64E8);
  }

  return result;
}

char *sub_1002C8470()
{
  type metadata accessor for DataLinkMonitor();
  v0 = static DataLinkMonitor.shared.getter();
  v1 = objc_allocWithZone(type metadata accessor for DataLinkMonitorBridge());
  result = sub_1002C8518(v0);
  qword_100925570 = result;
  return result;
}

char *sub_1002C8518(void *a1)
{
  v3 = OBJC_IVAR___WODataLinkMonitor_observerQueue;
  v4 = type metadata accessor for DataLinkMonitorBridge();
  v15 = v4;
  sub_100140278(&qword_1008E6540);
  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v5 = String._bridgeToObjectiveC()();
  v6 = HKCreateSerialDispatchQueue();
  swift_unknownObjectRelease();

  *&v1[v3] = v6;
  v7 = OBJC_IVAR___WODataLinkMonitor_observers;
  *&v1[v7] = [objc_opt_self() weakObjectsHashTable];
  *&v1[OBJC_IVAR___WODataLinkMonitor_bridgedValue] = a1;
  v14.receiver = v1;
  v14.super_class = v4;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v14, "init");
  v10 = *&v9[OBJC_IVAR___WODataLinkMonitor_bridgedValue];
  sub_1002C9150();
  v11 = v9;
  v12 = v10;
  dispatch thunk of DataLinkMonitor.delegate.setter();

  return v11;
}

uint64_t sub_1002C86F8(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR___WODataLinkMonitor_observerQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1002C8FB0;
  *(v5 + 24) = v4;
  v10[4] = sub_10007BD60;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1003579C0;
  v10[3] = &unk_100850C50;
  v6 = _Block_copy(v10);
  v7 = v1;
  swift_unknownObjectRetain();

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id sub_1002C88F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataLinkMonitorBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1002C89AC@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR___WODataLinkMonitor_bridgedValue);
  *a1 = v2;
  return v2;
}

uint64_t sub_1002C89C4(uint64_t a1, int a2)
{
  v31 = a2;
  v30 = a1;
  v3 = type metadata accessor for DataLinkWorkoutState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v29 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v32 = &v20[-v7];
  v33 = v2;
  sub_100140278(&qword_1008E6530);
  OS_dispatch_queue.sync<A>(execute:)();
  v8 = v35;
  if (v35 >> 62)
  {
LABEL_20:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v9 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
  }

LABEL_3:
  v10 = 0;
  v27 = v8 & 0xFFFFFFFFFFFFFF8;
  v28 = v8 & 0xC000000000000001;
  v11 = (v4 + 16);
  v26 = (v4 + 88);
  v25 = enum case for DataLinkWorkoutState.active(_:);
  v23 = enum case for DataLinkWorkoutState.waitingForFirstPublisherUpdate(_:);
  v22 = enum case for DataLinkWorkoutState.notInWorkout(_:);
  v21 = enum case for DataLinkWorkoutState.failedToEndWorkout(_:);
  v24 = (v4 + 8);
  while (1)
  {
    if (v28)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v10 >= *(v27 + 16))
      {
        goto LABEL_19;
      }

      v4 = *(v8 + 8 * v10 + 32);
      swift_unknownObjectRetain();
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    v14 = *v11;
    v15 = v32;
    (*v11)(v32, v30, v3);
    v16 = v29;
    v14(v29, v15, v3);
    v17 = (*v26)(v16, v3);
    if (v17 != v25)
    {
      break;
    }

    v12 = 0;
LABEL_5:
    (*v24)(v32, v3);
    [v4 updateWorkoutState:v12 shouldShowTimeout:v31 & 1];
    swift_unknownObjectRelease();
    ++v10;
    if (v13 == v9)
    {
    }
  }

  if (v17 == v23)
  {
    v12 = 1;
    goto LABEL_5;
  }

  if (v17 == v22)
  {
    v12 = 2;
    goto LABEL_5;
  }

  if (v17 == v21)
  {
    v12 = 3;
    goto LABEL_5;
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v35 = 0xD000000000000011;
  v36 = 0x80000001007534E0;
  v34 = DataLinkWorkoutState.rawValue.getter();
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002C8D90(void *a1)
{
  sub_100140278(&qword_1008E6530);
  result = OS_dispatch_queue.sync<A>(execute:)();
  v3 = v12;
  if (!(v12 >> 62))
  {
    v4 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v4 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      ++v5;
      v7 = type metadata accessor for WorkoutNotificationBridge();
      v8 = objc_allocWithZone(v7);
      *&v8[OBJC_IVAR___WOWorkoutNotification_bridgedNotification] = a1;
      v11.receiver = v8;
      v11.super_class = v7;
      v9 = a1;
      v10 = objc_msgSendSuper2(&v11, "init");
      [v6 displayWorkoutNotification:v10];
      swift_unknownObjectRelease();
    }

    while (v4 != v5);
  }

  __break(1u);
  return result;
}

void sub_1002C8F0C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*(a1 + OBJC_IVAR___WODataLinkMonitor_observers) allObjects];
  sub_100140278(&qword_1008E6538);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

uint64_t sub_1002C8FCC(void *a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR___WODataLinkMonitor_observerQueue];
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1002C9134;
  *(v6 + 24) = v5;
  v11[4] = sub_1002831F4;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1003579C0;
  v11[3] = &unk_100850CC8;
  v7 = _Block_copy(v11);
  v8 = a2;
  v9 = a1;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1002C9150()
{
  result = qword_1008E6548;
  if (!qword_1008E6548)
  {
    type metadata accessor for DataLinkMonitorBridge();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6548);
  }

  return result;
}

uint64_t sub_1002C91C4()
{
  result = static NotificationRequestConstants.moveModeNotificationCategory.getter();
  qword_100925578 = result;
  unk_100925580 = v1;
  return result;
}

uint64_t sub_1002C9210()
{
  result = static NotificationRequestConstants.moveModeChangeModeNotificationCategory.getter();
  qword_100925588 = result;
  unk_100925590 = v1;
  return result;
}

uint64_t sub_1002C925C()
{
  result = static NotificationRequestConstants.moveModeChangeGoalsNotificationCategory.getter();
  qword_100925598 = result;
  unk_1009255A0 = v1;
  return result;
}

id sub_1002C92A8(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

id sub_1002C934C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FitnessCoachingNotificationRequestConstantsBridging();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1002C93AC()
{
  result = qword_1008E6578;
  if (!qword_1008E6578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6578);
  }

  return result;
}

uint64_t sub_1002C9400()
{
  v1 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  LocalizedStringResource.init(stringInterpolation:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v0[1]);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v6 + 56))(v4, 0, 1, v5);

  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_1002C96D8()
{
  v0 = type metadata accessor for WorkoutActivityEntity(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008E65E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  EntityProperty.wrappedValue.getter();
  if ((*(v1 + 48))(v6, 1, v0))
  {
    sub_10000EA04(v6, &qword_1008E65E0);
LABEL_3:
    EntityProperty.wrappedValue.getter();
    return Int.localizedString.getter();
  }

  sub_1002CC590(v6, v3);
  sub_10000EA04(v6, &qword_1008E65E0);
  v8 = *&v3[*(v0 + 32)];

  sub_1002CC5F4(v3);
  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = WorkoutStep.displayString.getter();

  return v9;
}

uint64_t sub_1002C988C()
{
  v0 = sub_100140278(&qword_1008DEC58);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = sub_100140278(&qword_1008DEC88);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  EntityProperty.wrappedValue.getter();
  v14 = [objc_opt_self() meters];
  Measurement<>.converted(to:)();

  v15 = *(v8 + 8);
  v15(v10, v7);
  Measurement.value.getter();
  v17 = v16;
  v15(v13, v7);
  EntityProperty.wrappedValue.getter();
  v18 = [objc_opt_self() seconds];
  Measurement<>.converted(to:)();

  v19 = *(v1 + 8);
  v19(v3, v0);
  Measurement.value.getter();
  v21 = v20;
  v19(v6, v0);
  type metadata accessor for WorkoutDurationMetrics();
  swift_allocObject();
  return sub_1003D1A74(v17, v21);
}

__n128 sub_1002C9B4C@<Q0>(uint64_t a1@<X8>)
{
  sub_1002CA27C(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v5[6];
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_1002C9BA0()
{
  result = qword_1008E6580;
  if (!qword_1008E6580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6580);
  }

  return result;
}

unint64_t sub_1002C9BF8()
{
  result = qword_1008E6588;
  if (!qword_1008E6588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6588);
  }

  return result;
}

unint64_t sub_1002C9C50()
{
  result = qword_1008E6590;
  if (!qword_1008E6590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6590);
  }

  return result;
}

uint64_t sub_1002C9CE8(uint64_t a1)
{
  v2 = sub_1002CC650();

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

unint64_t sub_1002C9D38()
{
  result = qword_1008E65A8;
  if (!qword_1008E65A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E65A8);
  }

  return result;
}

unint64_t sub_1002C9D8C()
{
  result = qword_1008E65B0;
  if (!qword_1008E65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E65B0);
  }

  return result;
}

unint64_t sub_1002C9DE0()
{
  result = qword_1008E65B8;
  if (!qword_1008E65B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E65B8);
  }

  return result;
}

unint64_t sub_1002C9E38()
{
  result = qword_1008E65C0;
  if (!qword_1008E65C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E65C0);
  }

  return result;
}

uint64_t sub_1002C9ED4(uint64_t a1)
{
  v2 = sub_1002CC650();

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_1002C9F20()
{
  v0 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1002CA0B0(uint64_t a1)
{
  v2 = sub_1002C93AC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1002CA100()
{
  result = qword_1008E65D8;
  if (!qword_1008E65D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E65D8);
  }

  return result;
}

uint64_t sub_1002CA158(uint64_t a1)
{
  v2 = sub_1002C9E38();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_1002CA1A4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1002CA1C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1002CA210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1002CA27C@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100140278(&qword_1008DEC58);
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v46 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v45 = &v34 - v5;
  v6 = sub_100140278(&qword_1008DEC88);
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v42 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v11 = sub_100140278(&qword_1008DED40);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  v18 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v18 - 8);
  sub_100140278(&qword_1008E65E8);
  LocalizedStringResource.init(stringLiteral:)();
  v36 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008DEDD0);
  LocalizedStringResource.init(stringLiteral:)();
  v41 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008E65F0);
  LocalizedStringResource.init(stringLiteral:)();
  v37 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008DEDD8);
  LocalizedStringResource.init(stringLiteral:)();
  v40 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008E65F8);
  LocalizedStringResource.init(stringLiteral:)();
  sub_100071880(&qword_1008DEAC0, type metadata accessor for WorkoutActivityEntity);
  v39 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008E6600);
  LocalizedStringResource.init(stringLiteral:)();
  sub_1002CC35C();
  v38 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008E6610);
  LocalizedStringResource.init(stringLiteral:)();
  sub_10026A634();
  v35 = EntityProperty<>.init(title:)();
  v19 = [objc_opt_self() metersPerSecond];
  sub_1000059F8(0, &qword_1008DEE28);
  Measurement.init(value:unit:)();
  (*(v12 + 16))(v14, v17, v11);
  v20 = v36;
  EntityProperty.wrappedValue.setter();
  (*(v12 + 8))(v17, v11);
  v21 = [objc_opt_self() meters];
  sub_1000059F8(0, &qword_1008DEE38);
  Measurement.init(value:unit:)();
  v22 = v43;
  v23 = v44;
  (*(v43 + 16))(v42, v10, v44);
  v24 = v37;
  EntityProperty.wrappedValue.setter();
  (*(v22 + 8))(v10, v23);
  v25 = [objc_opt_self() seconds];
  sub_1000059F8(0, &qword_1008DEE10);
  v26 = v45;
  Measurement.init(value:unit:)();
  v27 = v47;
  v28 = v48;
  (*(v47 + 16))(v46, v26, v48);
  v29 = v40;
  EntityProperty.wrappedValue.setter();
  (*(v27 + 8))(v26, v28);
  v57[0] = 0;
  v30 = v41;
  EntityProperty.wrappedValue.setter();
  strcpy(&v50, "Workout Stat");
  BYTE13(v50) = 0;
  HIWORD(v50) = -5120;
  *&v51 = 0;
  *(&v51 + 1) = 0xE000000000000000;
  *&v52 = 0xD000000000000011;
  *(&v52 + 1) = 0x80000001007535F0;
  v53.n128_u64[0] = v20;
  v53.n128_u64[1] = v30;
  v54 = v24;
  *&v55 = v29;
  *(&v55 + 1) = v39;
  *&v56 = v38;
  *(&v56 + 1) = v35;
  strcpy(v57, "Workout Stat");
  BYTE5(v57[1]) = 0;
  HIWORD(v57[1]) = -5120;
  v57[2] = 0;
  v57[3] = 0xE000000000000000;
  v57[4] = 0xD000000000000011;
  v57[5] = 0x80000001007535F0;
  v57[6] = v20;
  v57[7] = v30;
  v57[8] = v24;
  v57[9] = 0;
  v57[10] = v29;
  v57[11] = v39;
  v57[12] = v38;
  v57[13] = v35;
  sub_1002CC3B0(&v50, &v49);
  sub_1002CC3E8(v57);
  v31 = v55;
  *(a1 + 64) = v54;
  *(a1 + 80) = v31;
  *(a1 + 96) = v56;
  v32 = v51;
  *a1 = v50;
  *(a1 + 16) = v32;
  result = v53;
  *(a1 + 32) = v52;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1002CA9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v211 = a1;
  v191 = a4;
  v192 = a3;
  v5 = *(a2 + 48);
  v239 = *(a2 + 32);
  v240 = v5;
  v241 = *(a2 + 64);
  v6 = *(a2 + 16);
  v237 = *a2;
  v238 = v6;
  v246 = *(a3 + 64);
  v7 = *(a3 + 48);
  v244 = *(a3 + 32);
  v245 = v7;
  v8 = *(a3 + 16);
  v242 = *a3;
  v243 = v8;
  v9 = sub_100140278(&qword_1008DEC58);
  v198 = *(v9 - 8);
  v199 = v9;
  __chkstk_darwin(v9);
  v196 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v197 = &v169 - v12;
  v13 = sub_100140278(&qword_1008DEC70);
  __chkstk_darwin(v13 - 8);
  v171 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v174 = &v169 - v16;
  __chkstk_darwin(v17);
  v180 = &v169 - v18;
  v19 = sub_100140278(&qword_1008DED28);
  __chkstk_darwin(v19 - 8);
  v170 = &v169 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v173 = &v169 - v22;
  __chkstk_darwin(v23);
  v179 = &v169 - v24;
  v25 = sub_100140278(&qword_1008E65E0);
  __chkstk_darwin(v25 - 8);
  v178 = &v169 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v177 = &v169 - v28;
  __chkstk_darwin(v29);
  v31 = &v169 - v30;
  v32 = type metadata accessor for WorkoutActivityEntity(0);
  v33 = *(v32 - 8);
  v200 = v32;
  v201 = v33;
  __chkstk_darwin(v32);
  v35 = &v169 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100140278(&qword_1008DED40);
  v212 = *(v36 - 8);
  __chkstk_darwin(v36);
  v172 = &v169 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v188 = &v169 - v39;
  __chkstk_darwin(v40);
  v175 = &v169 - v41;
  __chkstk_darwin(v42);
  v194 = &v169 - v43;
  __chkstk_darwin(v44);
  v182 = &v169 - v45;
  __chkstk_darwin(v46);
  v48 = &v169 - v47;
  v203 = sub_100140278(&qword_1008DEC88);
  v205 = *(v203 - 8);
  __chkstk_darwin(v203);
  v181 = &v169 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v187 = &v169 - v51;
  __chkstk_darwin(v52);
  v176 = &v169 - v53;
  __chkstk_darwin(v54);
  v195 = &v169 - v55;
  __chkstk_darwin(v56);
  v183 = &v169 - v57;
  __chkstk_darwin(v58);
  v60 = &v169 - v59;
  v61 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v61 - 8);
  sub_100140278(&qword_1008E65E8);
  LocalizedStringResource.init(stringLiteral:)();
  v210 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008DEDD0);
  LocalizedStringResource.init(stringLiteral:)();
  v190 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008E65F0);
  LocalizedStringResource.init(stringLiteral:)();
  v209 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008DEDD8);
  LocalizedStringResource.init(stringLiteral:)();
  v208 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008E65F8);
  LocalizedStringResource.init(stringLiteral:)();
  sub_100071880(&qword_1008DEAC0, type metadata accessor for WorkoutActivityEntity);
  v62 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008E6600);
  LocalizedStringResource.init(stringLiteral:)();
  sub_1002CC35C();
  v193 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008E6610);
  LocalizedStringResource.init(stringLiteral:)();
  sub_10026A634();
  v202 = EntityProperty<>.init(title:)();
  v63 = [objc_opt_self() meters];
  sub_1000059F8(0, &qword_1008DEE38);
  v206 = v60;
  Measurement.init(value:unit:)();
  v64 = [objc_opt_self() metersPerSecond];
  sub_1000059F8(0, &qword_1008DEE28);
  v207 = v48;
  v65 = v200;
  v66 = v201;
  Measurement.init(value:unit:)();
  sub_10001B104(v211, v31, &qword_1008E65E0);
  v67 = v66[6](v31, 1, v65);
  v204 = v36;
  v189 = v62;
  if (v67 != 1)
  {
    v181 = a2;
    sub_1002CC52C(v31, v35);
    v82 = sub_100198A00();
    v187 = v83;
    v188 = v82;
    v84 = sub_100198B4C();
    v185 = v85;
    v186 = v84;
    v86 = [*&v35[v65[5]] fiui_activityType];
    v184 = FIUIDistanceTypeForActivityType();

    v87 = v177;
    sub_1002CC590(v35, v177);
    (v66[7])(v87, 0, 1, v65);
    sub_10001B104(v87, v178, &qword_1008E65E0);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v87, &qword_1008E65E0);
    v88 = v179;
    EntityProperty.wrappedValue.getter();
    v89 = v212;
    v90 = *(v212 + 48);
    v91 = v36;
    if (v90(v88, 1, v36) == 1)
    {
      v92 = v89;
      v93 = *(v89 + 16);
      v93(v182, v207, v91);
      if (v90(v88, 1, v91) != 1)
      {
        sub_10000EA04(v88, &qword_1008DED28);
      }

      v91 = v204;
      v94 = v92;
      v95 = v182;
    }

    else
    {
      v95 = v182;
      (*(v89 + 32))(v182, v88, v36);
      v94 = v89;
      v93 = *(v89 + 16);
    }

    v93(v194, v95, v91);
    EntityProperty.wrappedValue.setter();
    v96 = *(v94 + 8);
    v212 = v94 + 8;
    v201 = v96;
    (v96)(v95, v91);
    v97 = v180;
    EntityProperty.wrappedValue.getter();
    v98 = v205;
    v99 = *(v205 + 48);
    v100 = v203;
    if (v99(v97, 1, v203) == 1)
    {
      v101 = *(v98 + 16);
      v101(v183, v206, v100);
      if (v99(v97, 1, v100) != 1)
      {
        sub_10000EA04(v97, &qword_1008DEC70);
      }

      v100 = v203;
      v98 = v205;
      v102 = v183;
    }

    else
    {
      v102 = v183;
      (*(v98 + 32))(v183, v97, v100);
      v101 = *(v98 + 16);
    }

    v101(v195, v102, v100);
    EntityProperty.wrappedValue.setter();
    v103 = *(v98 + 8);
    v103(v102, v100);
    v104 = v197;
    EntityProperty.wrappedValue.getter();
    v106 = v198;
    v105 = v199;
    (*(v198 + 16))(v196, v104, v199);
    EntityProperty.wrappedValue.setter();
    (*(v106 + 8))(v104, v105);
    result = EntityProperty.wrappedValue.getter();
    if (__OFADD__(v222, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    *&v222 = v222 + 1;
    v107 = v190;
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v192, &qword_1008E6618);
    sub_10000EA04(v181, &qword_1008E6620);
    sub_10000EA04(v211, &qword_1008E65E0);
    (v201)(v207, v204);
    v103(v206, v100);
    sub_1002CC5F4(v35);
    v108 = 0xEE006472616F6270;
    v109 = 0x696C632E7473696CLL;
LABEL_22:
    v110 = v191;
    v111 = v210;
    v113 = v188;
    v112 = v189;
    v76 = v193;
    v115 = v186;
    v114 = v187;
    v117 = v184;
    v116 = v185;
LABEL_37:
    *&v219[0] = v113;
    *(&v219[0] + 1) = v114;
    *&v219[1] = v115;
    *(&v219[1] + 1) = v116;
    *&v219[2] = v109;
    *(&v219[2] + 1) = v108;
    *&v219[3] = v111;
    *(&v219[3] + 1) = v107;
    *&v219[4] = v209;
    *(&v219[4] + 1) = v117;
    *&v220 = v208;
    *(&v220 + 1) = v112;
    *&v221 = v76;
    *(&v221 + 1) = v202;
    *&v222 = v113;
    *(&v222 + 1) = v114;
    *&v223 = v115;
    *(&v223 + 1) = v116;
    *&v224 = v109;
    *(&v224 + 1) = v108;
    *&v225 = v111;
    *(&v225 + 1) = v107;
    v226 = v209;
    v227 = v117;
    v228 = v208;
    v229 = v112;
    v230 = v76;
    v231 = v202;
    sub_1002CC3B0(v219, &v217);
    result = sub_1002CC3E8(&v222);
    v142 = v220;
    v110[4] = v219[4];
    v110[5] = v142;
    v110[6] = v221;
    v143 = v219[1];
    *v110 = v219[0];
    v110[1] = v143;
    v144 = v219[3];
    v110[2] = v219[2];
    v110[3] = v144;
    return result;
  }

  v68 = v212;
  sub_10000EA04(v31, &qword_1008E65E0);
  v69 = *a2;
  if (!*a2)
  {
    v118 = v192;
    if (!*v192)
    {
      v108 = 0x80000001007535F0;
      v145 = v68;
      v146 = *(v68 + 16);
      v147 = v194;
      v148 = v204;
      v146(v194, v207, v204);
      v146(v188, v147, v148);
      EntityProperty.wrappedValue.setter();
      v212 = *(v145 + 8);
      (v212)(v147, v148);
      v149 = v205;
      v150 = *(v205 + 16);
      v151 = v195;
      v152 = v203;
      v150(v195, v206, v203);
      v150(v187, v151, v152);
      EntityProperty.wrappedValue.setter();
      v205 = *(v149 + 8);
      (v205)(v151, v152);
      v153 = [objc_opt_self() seconds];
      sub_1000059F8(0, &qword_1008DEE10);
      v154 = v197;
      Measurement.init(value:unit:)();
      v156 = v198;
      v155 = v199;
      (*(v198 + 16))(v196, v154, v199);
      EntityProperty.wrappedValue.setter();
      (*(v156 + 8))(v154, v155);
      *&v222 = 0;
      v107 = v190;
      EntityProperty.wrappedValue.setter();
      sub_10000EA04(v211, &qword_1008E65E0);
      v111 = v210;
      (v212)(v207, v148);
      (v205)(v206, v152);
      v115 = 0;
      v117 = 0;
      v109 = 0xD000000000000011;
      v116 = 0xE000000000000000;
      v114 = 0xEC00000074617453;
      v113 = 0x2074756F6B726F57;
      v110 = v191;
      v112 = v189;
      v76 = v193;
      goto LABEL_37;
    }

    v232 = *v192;
    v233 = *(v192 + 1);
    v234 = *(v192 + 3);
    v235 = *(v192 + 5);
    v236 = *(v192 + 7);
    v217 = 0x2074696C7053;
    v218 = 0xE600000000000000;
    v119 = v233;
    v226 = v246;
    v224 = v244;
    v225 = v245;
    v222 = v242;
    v223 = v243;
    sub_1002CC418(&v222, v219);
    v201 = v119;
    result = EntityProperty.wrappedValue.getter();
    if (__OFADD__(*&v219[0], 1))
    {
      goto LABEL_50;
    }

    ++*&v219[0];
    v120._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v120);

    v187 = v218;
    v188 = v217;
    v121 = sub_100268500();
    v185 = v122;
    v186 = v121;
    v213 = v236;
    v108 = *(&v236 + 1);
    v109 = v236;
    v184 = v235;
    v123 = *(v118 + 48);
    v219[2] = *(v118 + 32);
    v219[3] = v123;
    *&v219[4] = *(v118 + 64);
    v124 = *(v118 + 16);
    v219[0] = *v118;
    v219[1] = v124;
    sub_10001B104(v118, &v217, &qword_1008E6618);
    sub_1002CC474(&v213, &v217);
    EntityProperty.wrappedValue.setter();
    v125 = v170;
    EntityProperty.wrappedValue.getter();
    v126 = *(v68 + 48);
    v127 = v204;
    if (v126(v125, 1, v204) == 1)
    {
      v200 = *(v68 + 16);
      (v200)(v172, v207, v127);
      if (v126(v125, 1, v127) != 1)
      {
        sub_10000EA04(v125, &qword_1008DED28);
      }

      v127 = v204;
      v128 = v172;
      (v200)(v194, v172, v204);
    }

    else
    {
      v128 = v172;
      (*(v68 + 32))(v172, v125, v127);
      (*(v68 + 16))(v194, v128, v127);
    }

    EntityProperty.wrappedValue.setter();
    v157 = *(v68 + 8);
    v212 = v68 + 8;
    v200 = v157;
    (v157)(v128, v127);
    v158 = v171;
    EntityProperty.wrappedValue.getter();
    v159 = v205;
    v160 = *(v205 + 48);
    v161 = v203;
    if (v160(v158, 1, v203) == 1)
    {
      v162 = *(v159 + 16);
      v162(v181, v206, v161);
      if (v160(v158, 1, v161) != 1)
      {
        sub_10000EA04(v158, &qword_1008DEC70);
      }

      v163 = v205;
      v164 = v181;
    }

    else
    {
      v164 = v181;
      (*(v159 + 32))(v181, v158, v161);
      v163 = v159;
      v162 = *(v159 + 16);
    }

    v162(v195, v164, v161);
    EntityProperty.wrappedValue.setter();
    v165 = *(v163 + 8);
    v165(v164, v161);
    v166 = v197;
    EntityProperty.wrappedValue.getter();
    v168 = v198;
    v167 = v199;
    (*(v198 + 16))(v196, v166, v199);
    EntityProperty.wrappedValue.setter();
    (*(v168 + 8))(v166, v167);
    result = EntityProperty.wrappedValue.getter();
    if (__OFADD__(*&v219[0], 1))
    {
      goto LABEL_51;
    }

    ++*&v219[0];
    v107 = v190;
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v118, &qword_1008E6618);
    sub_10000EA04(v118, &qword_1008E6618);
    sub_10000EA04(v211, &qword_1008E65E0);
    (v200)(v207, v204);
    v165(v206, v203);
    goto LABEL_22;
  }

  v232 = *a2;
  v233 = *(a2 + 8);
  v234 = *(a2 + 24);
  v235 = *(a2 + 40);
  v236 = *(a2 + 56);
  v213 = v233;
  v214 = v234;
  v215 = v235;
  v216 = v236;
  v217 = 0x20746E656D676553;
  v218 = 0xE800000000000000;
  v70 = v233;
  v226 = v241;
  v224 = v239;
  v225 = v240;
  v222 = v237;
  v223 = v238;
  sub_1002CC4D0(&v222, v219);
  result = EntityProperty.wrappedValue.getter();
  if (!__OFADD__(*&v219[0], 1))
  {
    v201 = v70;
    v181 = a2;
    ++*&v219[0];
    v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v72);

    v187 = v218;
    v188 = v217;
    v73 = sub_10040A250();
    v185 = v74;
    v186 = v73;
    *(v219 + 8) = v213;
    *(&v219[1] + 8) = v214;
    *(&v219[2] + 8) = v215;
    v75 = *(&v235 + 1);
    if (v236)
    {
      v75 = 0;
    }

    v184 = v75;
    *(&v219[3] + 8) = v216;
    *&v219[0] = v69;
    sub_1002CC4D0(&v222, &v217);
    v76 = v193;
    EntityProperty.wrappedValue.setter();
    v77 = v173;
    EntityProperty.wrappedValue.getter();
    v78 = *(v68 + 48);
    v79 = v204;
    if (v78(v77, 1, v204) == 1)
    {
      v80 = *(v68 + 16);
      v80(v175, v207, v79);
      if (v78(v77, 1, v79) != 1)
      {
        sub_10000EA04(v77, &qword_1008DED28);
      }

      v81 = v175;
    }

    else
    {
      v81 = v175;
      (*(v68 + 32))(v175, v77, v79);
      v80 = *(v68 + 16);
    }

    v80(v194, v81, v79);
    EntityProperty.wrappedValue.setter();
    v129 = *(v68 + 8);
    v212 = v68 + 8;
    v200 = v129;
    (v129)(v81, v79);
    v130 = v174;
    EntityProperty.wrappedValue.getter();
    v131 = v205;
    v132 = *(v205 + 48);
    v133 = v203;
    if (v132(v130, 1, v203) == 1)
    {
      v134 = *(v131 + 16);
      v134(v176, v206, v133);
      if (v132(v130, 1, v133) != 1)
      {
        sub_10000EA04(v130, &qword_1008DEC70);
      }

      v131 = v205;
      v135 = v176;
    }

    else
    {
      v135 = v176;
      (*(v131 + 32))(v176, v130, v133);
      v134 = *(v131 + 16);
    }

    v134(v195, v135, v133);
    EntityProperty.wrappedValue.setter();
    v136 = *(v131 + 8);
    v136(v135, v133);
    v137 = v197;
    EntityProperty.wrappedValue.getter();
    v138 = v198;
    v139 = v133;
    v140 = v199;
    (*(v198 + 16))(v196, v137, v199);
    EntityProperty.wrappedValue.setter();
    (*(v138 + 8))(v137, v140);
    result = EntityProperty.wrappedValue.getter();
    if (!__OFADD__(*&v219[0], 1))
    {
      ++*&v219[0];
      v107 = v190;
      EntityProperty.wrappedValue.setter();
      v141 = v181;
      sub_10000EA04(v181, &qword_1008E6620);
      sub_10000EA04(v192, &qword_1008E6618);
      sub_10000EA04(v141, &qword_1008E6620);
      sub_10000EA04(v211, &qword_1008E65E0);
      (v200)(v207, v79);
      v136(v206, v139);
      v108 = 0xE800000000000000;
      v109 = 0x656C637269632E31;
      v110 = v191;
      v113 = v188;
      v112 = v189;
      v115 = v186;
      v114 = v187;
      v117 = v184;
      v116 = v185;
      v111 = v210;
      goto LABEL_37;
    }

    goto LABEL_49;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

unint64_t sub_1002CC35C()
{
  result = qword_1008E6608;
  if (!qword_1008E6608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6608);
  }

  return result;
}

uint64_t sub_1002CC52C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutActivityEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002CC590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutActivityEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002CC5F4(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutActivityEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002CC650()
{
  result = qword_1008E6628;
  if (!qword_1008E6628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6628);
  }

  return result;
}

void sub_1002CC6AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (qword_1008DA658 != -1)
  {
    swift_once();
  }

  v8 = UILabel.withFont(_:)();
  v9 = objc_opt_self();
  v10 = [v9 secondaryLabelColor];
  v11 = UILabel.withTextColor(_:)();

  v12 = String._bridgeToObjectiveC()();
  [v11 setText:v12];

  v13 = UILabel.withFont(_:)();
  v14 = [v9 secondaryLabelColor];
  v15 = UILabel.withTextColor(_:)();

  v16 = objc_opt_self();
  v17 = [v16 mainBundle];
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 localizedStringForKey:v18 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = String._bridgeToObjectiveC()();
  [v15 setText:v20];

  FIUIPaceFormatForWorkoutActivityType();
  if ([a4 supportsDistanceForWorkout:a1 workoutActivity:0])
  {
    v51 = a1;
    v21 = v5;
    v22 = UILabel.withFont(_:)();
    v23 = [v9 secondaryLabelColor];
    v24 = UILabel.withTextColor(_:)();

    v25 = [v16 mainBundle];
    v26 = String._bridgeToObjectiveC()();
    v27 = [v25 localizedStringForKey:v26 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = String._bridgeToObjectiveC()();
    [v24 setText:v28];

    LODWORD(v28) = [a4 supportsPaceForWorkout:v51 workoutActivity:0];
    v29 = UILabel.withFont(_:)();
    v30 = [v9 secondaryLabelColor];
    v31 = UILabel.withTextColor(_:)();

    if (v28)
    {
      v32 = [v16 mainBundle];
      v33 = String._bridgeToObjectiveC()();
      v34 = [v32 localizedStringForKey:v33 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = String._bridgeToObjectiveC()();
      [v31 setText:v35];
    }

    else
    {
      v35 = String._bridgeToObjectiveC()();
      [v31 setText:v35];
    }
  }

  else
  {
    v21 = v5;
    v36 = UILabel.withFont(_:)();
    v37 = [v9 secondaryLabelColor];
    v38 = UILabel.withTextColor(_:)();

    if (a3 == 1)
    {
      v39 = [a4 fitnessUIFormattingManager];
      v40 = String._bridgeToObjectiveC()();
      v41 = [v39 localizationKeyForEnergyBaseKey:v40];

      if (!v41)
      {
        __break(1u);
        return;
      }

      v42 = [v16 mainBundle];
      v43 = [v42 localizedStringForKey:v41 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = String._bridgeToObjectiveC()();
      [v38 setText:v44];

      v45 = UILabel.withFont(_:)();
      v46 = [v9 secondaryLabelColor];
    }

    else
    {
      v47 = String._bridgeToObjectiveC()();
      [v38 setText:v47];

      v45 = UILabel.withFont(_:)();
      v46 = [v9 secondaryLabelColor];
    }

    v48 = v46;
    v49 = UILabel.withTextColor(_:)();

    v35 = String._bridgeToObjectiveC()();
    [v49 setText:v35];
  }

  [*(v21 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView) setHidden:1];

  sub_1002251BC();
}

void sub_1002CCE74(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8)
{
  v154 = a4;
  v16 = type metadata accessor for Date();
  __chkstk_darwin(v16 - 8);
  __chkstk_darwin(v17);
  v18 = type metadata accessor for DateInterval();
  __chkstk_darwin(v18);
  v157 = &v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v156 = a5;
    v149 = v20;
    v150 = v19;
    v22 = a1;
    v158 = a8;
    v159 = [a8 fitnessUIFormattingManager];
    sub_1002CE038(a7 & 1);
    v23 = objc_opt_self();
    v24 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
    v25 = [v23 localizedStringFromNumber:v24 numberStyle:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = *(v8 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel);

    v29 = String._bridgeToObjectiveC()();
    [v28 setText:v29];
    v152 = v27;

    v155 = v22;
    v30 = [v22 formattedDurationValueWithFormattingManager:v159];
    v151 = v8;
    if (v30)
    {
      v31 = v30;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = a3;
      v34 = v33;

      v35 = *(v8 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel);
      v153 = v34;
      a3 = v32;
      v36 = String._bridgeToObjectiveC()();
    }

    else
    {
      v36 = 0;
      v153 = 0;
      v35 = *(v8 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel);
    }

    [v35 setText:v36];

    v37 = FIUIDistanceTypeForActivityType();
    if ([v158 supportsDistanceForWorkout:a3 workoutActivity:0])
    {
      v38 = v155;
      v39 = [v155 startDate];
      if (v39)
      {
        v40 = v39;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v41 = [v38 endDate];
        v42 = v157;
        if (v41)
        {
          v43 = v41;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          DateInterval.init(start:end:)();
          v44 = [a3 workoutEvents];
          if (v44)
          {
            v45 = v44;
            sub_1000059F8(0, &qword_1008DC000);
            v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v46 = _swiftEmptyArrayStorage;
          }

          v56 = v154;
          __chkstk_darwin(v44);
          *(&v149 - 2) = v42;
          v57 = sub_100324618(sub_1002CE530, (&v149 - 4), v46);

          v58 = &selRef_currentItem;
          if ((v57 & 1) == 0)
          {
            v162 = 1;
            v65 = [v38 distance];
            if (v65)
            {
              v66 = v65;
              v67 = [objc_opt_self() meterUnit];
              [v66 doubleValueForUnit:v67];
              v69 = v68;
            }

            else
            {
              v69 = 0.0;
            }

            v91 = [v159 localizedNaturalScaleStringWithDistanceInMeters:v37 distanceType:0 unitStyle:&v162 usedUnit:v69];
            if (!v91)
            {

              v101 = v158;
              goto LABEL_45;
            }

            v78 = v37;
            v92 = v91;
            v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v82 = v93;

            v94 = [v159 localizedShortUnitStringForDistanceUnit:v162];
            if (v94)
            {
              v95 = v94;

              v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v98 = v97;

              v160 = v96;
              v161 = v98;
              sub_10000FCBC();
              v88 = StringProtocol.localizedUppercase.getter();
              v90 = v99;

              if (qword_1008DA668 == -1)
              {
                goto LABEL_37;
              }

              goto LABEL_32;
            }

LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          v59 = [objc_opt_self() defaultPrecisionForDistanceUnit:v56];
          v60 = [v38 distance];
          if (v60)
          {
            v61 = v60;
            v62 = [objc_opt_self() meterUnit];
            [v61 doubleValueForUnit:v62];
            v64 = v63;

            v58 = &selRef_currentItem;
          }

          else
          {
            v64 = 0.0;
          }

          v76 = [v159 localizedStringWithDistanceInMeters:v56 distanceUnit:0 unitStyle:v59 decimalPrecision:2 roundingMode:1 decimalTrimmingMode:v64];
          if (!v76)
          {

            v42 = v157;
            v101 = v158;
            goto LABEL_45;
          }

          v77 = v56;
          v78 = v37;
          v79 = v76;
          v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v82 = v81;

          v83 = [v159 localizedShortUnitStringForDistanceUnit:v77];
          if (v83)
          {
            v84 = v83;

            v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v87 = v86;

            v160 = v85;
            v161 = v87;
            sub_10000FCBC();
            v88 = StringProtocol.localizedUppercase.getter();
            v90 = v89;

            v42 = v157;
            if (qword_1008DA668 == -1)
            {
LABEL_37:
              v100 = sub_1004C154C(v80, v82, v88, v90, qword_1009252A0);

              [*(v151 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel) setAttributedText:v100];

              v101 = v158;
              v37 = v78;
              v58 = &selRef_currentItem;
LABEL_45:
              if (![v101 supportsPaceForWorkout:a3 workoutActivity:0])
              {
LABEL_65:

                (*(v149 + 8))(v42, v150);
                return;
              }

              v102 = FIUIPaceFormatForWorkoutActivityType();
              v103 = [v38 v58[113]];
              if (!v103)
              {
                v104 = [objc_opt_self() meterUnit];
                v103 = [objc_opt_self() quantityWithUnit:v104 doubleValue:0.0];
              }

              [v38 elapsedTime];
              v106 = v105;
              if (qword_1008DA668 != -1)
              {
                swift_once();
              }

              v107 = qword_1009252A0;
              v108 = [objc_opt_self() meterUnit];
              [v103 doubleValueForUnit:v108];
              v110 = v109;

              if (floor(v110) <= 0.0 || (v111 = [v101 fitnessUIFormattingManager], v112 = objc_msgSend(v111, "localizedPaceStringWithDistance:overDuration:paceFormat:distanceType:", v103, v102, v37, v106), v111, !v112))
              {
                v123 = sub_100691198();

LABEL_64:
                v147 = *(v151 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel);
                v148 = v123;
                [v147 setAttributedText:v148];

                v38 = v155;
                goto LABEL_65;
              }

              v113 = v37;
              v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v116 = v115;

              v117 = [v101 fitnessUIFormattingManager];
              v118 = v117;
              if (v102 != 4)
              {
                v124 = [v117 unitManager];

                if (v124)
                {
                  v125 = [v124 paceDistanceUnitForDistanceType:v113];

                  v126 = [v101 fitnessUIFormattingManager];
                  v127 = [v126 localizedShortUnitStringForDistanceUnit:v125];

                  if (v127)
                  {
                    v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v158 = v129;

                    v130 = FIUINumberOfUnitsInPaceForPaceFormat();
                    v131 = [objc_opt_self() mainBundle];
                    if (v130 < 2)
                    {
                      v140 = String._bridgeToObjectiveC()();
                      v141 = [v131 localizedStringForKey:v140 value:0 table:0];

                      v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      sub_100140278(&unk_1008E4E50);
                      v142 = swift_allocObject();
                      *(v142 + 16) = xmmword_1006D46C0;
                      v160 = v128;
                      v161 = v158;
                      sub_10000FCBC();
                      v143 = StringProtocol.localizedUppercase.getter();
                      v145 = v144;
                      *(v142 + 56) = &type metadata for String;
                      *(v142 + 64) = sub_10000A788();
                      *(v142 + 32) = v143;
                      *(v142 + 40) = v145;
                    }

                    else
                    {
                      v132 = String._bridgeToObjectiveC()();
                      v133 = v128;
                      v134 = [v131 localizedStringForKey:v132 value:0 table:0];

                      v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      sub_100140278(&unk_1008E4E50);
                      v135 = swift_allocObject();
                      *(v135 + 16) = xmmword_1006D1F70;
                      v136 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v130];
                      *(v135 + 56) = sub_1000059F8(0, &qword_1008E1750);
                      *(v135 + 64) = sub_1001983C8();
                      *(v135 + 32) = v136;
                      v160 = v133;
                      v161 = v158;
                      sub_10000FCBC();
                      v137 = StringProtocol.localizedUppercase.getter();
                      v139 = v138;
                      *(v135 + 96) = &type metadata for String;
                      *(v135 + 104) = sub_10000A788();
                      *(v135 + 72) = v137;
                      *(v135 + 80) = v139;
                    }

                    v120 = String.init(format:_:)();
                    v122 = v146;
                  }

                  else
                  {
                    v120 = 0;
                    v122 = 0xE000000000000000;
                  }

                  goto LABEL_63;
                }

                goto LABEL_73;
              }

              v119 = [v117 localizedSpeedUnitStringForDistanceType:v113 unitStyle:1];

              if (v119)
              {
                v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v122 = v121;

LABEL_63:
                v123 = sub_1004C154C(v114, v116, v120, v122, v107);

                v42 = v157;
                goto LABEL_64;
              }

LABEL_72:
              __break(1u);
LABEL_73:
              __break(1u);
              return;
            }

LABEL_32:
            swift_once();
            goto LABEL_37;
          }

LABEL_70:
          __break(1u);
          goto LABEL_71;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_68;
    }

    v47 = v155;
    if (a6 == 1)
    {
      v48 = [v159 unitManager];
      if (!v48)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v49 = v48;
      v50 = [v48 userActiveEnergyBurnedUnit];

      v51 = [v47 formattedActiveEnergyValueForUnit:v50];
      if (v51)
      {
        v52 = v51;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      v70 = *(v151 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel);
      v71 = [objc_opt_self() energyColors];
      if (!v71)
      {
        goto LABEL_69;
      }

      v72 = v71;

      v73 = [v72 nonGradientTextColor];

      [v70 setTextColor:v73];
      v74 = v70;

      if (v54)
      {
        v75 = String._bridgeToObjectiveC()();
      }

      else
      {
        v75 = 0;
      }

      v158 = v75;
      [v74 setText:?];

      v55 = v158;
    }

    else
    {

      v55 = v159;
    }
  }

  else
  {

    sub_1002CC6AC(a3, a5, a6, a8);
  }
}

uint64_t sub_1002CDE28(void **a1)
{
  v2 = type metadata accessor for DateInterval();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if ([v7 type] == 3)
  {
    v8 = [v7 dateInterval];
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = DateInterval.intersects(_:)();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

id sub_1002CE038(char a1)
{
  v2 = v1;
  if (qword_1008DA660 != -1)
  {
    swift_once();
  }

  v4 = UILabel.withFont(_:)();
  v5 = [objc_opt_self() secondaryLabelColor];
  v6 = UILabel.withTextColor(_:)();

  v7 = String._bridgeToObjectiveC()();
  [v6 setText:v7];

  if (qword_1008DA668 != -1)
  {
    swift_once();
  }

  v8 = UILabel.withFont(_:)();
  v9 = objc_opt_self();
  result = [v9 distanceColors];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = result;
  v12 = [result nonGradientTextColor];

  [v8 setTextColor:v12];
  v13 = String._bridgeToObjectiveC()();
  [v8 setText:v13];

  v14 = UILabel.withFont(_:)();
  result = [v9 elapsedTimeColors];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = result;
  v16 = [result nonGradientTextColor];

  [v14 setTextColor:v16];
  v17 = String._bridgeToObjectiveC()();
  [v14 setText:v17];

  v18 = UILabel.withFont(_:)();
  result = [v9 paceColors];
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = [result nonGradientTextColor];

  [v18 setTextColor:v20];
  v21 = String._bridgeToObjectiveC()();
  [v18 setText:v21];

  result = [*(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView) setHidden:a1 & 1];
  if (a1)
  {
    v22 = *(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorStandard);
    if (v22)
    {
      [v22 setActive:0];
    }

    v23 = *(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorLastRow);
    if (v23)
    {
      [v23 setActive:1];
    }

    result = *(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_heightAnchorHeaderFooterRow);
    if (result)
    {

      return [result setActive:1];
    }
  }

  return result;
}

id sub_1002CE4D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailFourColumnSegmentTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002CE550@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100140278(&qword_1008E66B8);
  swift_storeEnumTagMultiPayload();
  v2 = sub_100140278(&qword_1008E4B10);
  v3 = (a1 + v2[9]);
  type metadata accessor for WorkoutDetailSwimmingSplitDataSource(0);
  sub_1002D1384(&qword_1008E4B28, type metadata accessor for WorkoutDetailSwimmingSplitDataSource);
  *v3 = ObservedObject.init(wrappedValue:)();
  v3[1] = v4;
  *(a1 + v2[10]) = 0x4040000000000000;
  *(a1 + v2[11]) = 0x4010000000000000;
  *(a1 + v2[12]) = 0x4020000000000000;
  v5 = a1 + v2[13];
  GestureState.init(wrappedValue:)();
  *v5 = v10;
  *(v5 + 1) = v11;
  *(v5 + 1) = v12;
  v6 = (a1 + v2[14]);
  State.init(wrappedValue:)();
  *v6 = v10;
  v6[1] = v11;
  v7 = (a1 + v2[15]);
  State.init(wrappedValue:)();
  *v7 = v10;
  v7[1] = v11;
  v8 = (a1 + v2[16]);
  sub_100140278(&qword_1008E66C0);
  result = State.init(wrappedValue:)();
  *v8 = v10;
  v8[1] = v11;
  return result;
}

uint64_t sub_1002CE72C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100140278(&qword_1008E66B8);
  swift_storeEnumTagMultiPayload();
  v2 = sub_100140278(&qword_1008E6720);
  v3 = (a1 + v2[9]);
  type metadata accessor for WorkoutDetailSegmentDataSource();
  sub_1002D1384(&qword_1008E6730, type metadata accessor for WorkoutDetailSegmentDataSource);
  *v3 = ObservedObject.init(wrappedValue:)();
  v3[1] = v4;
  *(a1 + v2[10]) = 0x4040000000000000;
  *(a1 + v2[11]) = 0x4010000000000000;
  *(a1 + v2[12]) = 0x4020000000000000;
  v5 = a1 + v2[13];
  GestureState.init(wrappedValue:)();
  *v5 = v10;
  *(v5 + 1) = v11;
  *(v5 + 1) = v12;
  v6 = (a1 + v2[14]);
  State.init(wrappedValue:)();
  *v6 = v10;
  v6[1] = v11;
  v7 = (a1 + v2[15]);
  State.init(wrappedValue:)();
  *v7 = v10;
  v7[1] = v11;
  v8 = (a1 + v2[16]);
  sub_100140278(&qword_1008E66C0);
  result = State.init(wrappedValue:)();
  *v8 = v10;
  v8[1] = v11;
  return result;
}

uint64_t sub_1002CE908@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100140278(&qword_1008E66B8);
  swift_storeEnumTagMultiPayload();
  v2 = sub_100140278(&qword_1008E6708);
  v3 = (a1 + v2[9]);
  type metadata accessor for WorkoutDetailSplitDataSource();
  sub_1002D1384(&qword_1008E6718, type metadata accessor for WorkoutDetailSplitDataSource);
  *v3 = ObservedObject.init(wrappedValue:)();
  v3[1] = v4;
  *(a1 + v2[10]) = 0x4040000000000000;
  *(a1 + v2[11]) = 0x4010000000000000;
  *(a1 + v2[12]) = 0x4020000000000000;
  v5 = a1 + v2[13];
  GestureState.init(wrappedValue:)();
  *v5 = v10;
  *(v5 + 1) = v11;
  *(v5 + 1) = v12;
  v6 = (a1 + v2[14]);
  State.init(wrappedValue:)();
  *v6 = v10;
  v6[1] = v11;
  v7 = (a1 + v2[15]);
  State.init(wrappedValue:)();
  *v7 = v10;
  v7[1] = v11;
  v8 = (a1 + v2[16]);
  sub_100140278(&qword_1008E66C0);
  result = State.init(wrappedValue:)();
  *v8 = v10;
  v8[1] = v11;
  return result;
}

uint64_t sub_1002CEAE4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100140278(&qword_1008E66B8);
  swift_storeEnumTagMultiPayload();
  v2 = sub_100140278(&qword_1008E66F0);
  v3 = (a1 + v2[9]);
  type metadata accessor for WorkoutDetailIntervalDataSource();
  sub_1002D1384(&qword_1008E6700, type metadata accessor for WorkoutDetailIntervalDataSource);
  *v3 = ObservedObject.init(wrappedValue:)();
  v3[1] = v4;
  *(a1 + v2[10]) = 0x4040000000000000;
  *(a1 + v2[11]) = 0x4010000000000000;
  *(a1 + v2[12]) = 0x4020000000000000;
  v5 = a1 + v2[13];
  GestureState.init(wrappedValue:)();
  *v5 = v10;
  *(v5 + 1) = v11;
  *(v5 + 1) = v12;
  v6 = (a1 + v2[14]);
  State.init(wrappedValue:)();
  *v6 = v10;
  v6[1] = v11;
  v7 = (a1 + v2[15]);
  State.init(wrappedValue:)();
  *v7 = v10;
  v7[1] = v11;
  v8 = (a1 + v2[16]);
  sub_100140278(&qword_1008E66C0);
  result = State.init(wrappedValue:)();
  *v8 = v10;
  v8[1] = v11;
  return result;
}

uint64_t sub_1002CECC0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100140278(&qword_1008E66B8);
  swift_storeEnumTagMultiPayload();
  v2 = sub_100140278(&qword_1008E66C8);
  v3 = (a1 + v2[9]);
  type metadata accessor for WorkoutDetailTrackLapDataSource();
  sub_1002D1384(&qword_1008E66D8, type metadata accessor for WorkoutDetailTrackLapDataSource);
  *v3 = ObservedObject.init(wrappedValue:)();
  v3[1] = v4;
  *(a1 + v2[10]) = 0x4040000000000000;
  *(a1 + v2[11]) = 0x4010000000000000;
  *(a1 + v2[12]) = 0x4020000000000000;
  v5 = a1 + v2[13];
  GestureState.init(wrappedValue:)();
  *v5 = v10;
  *(v5 + 1) = v11;
  *(v5 + 1) = v12;
  v6 = (a1 + v2[14]);
  State.init(wrappedValue:)();
  *v6 = v10;
  v6[1] = v11;
  v7 = (a1 + v2[15]);
  State.init(wrappedValue:)();
  *v7 = v10;
  v7[1] = v11;
  v8 = (a1 + v2[16]);
  sub_100140278(&qword_1008E66C0);
  result = State.init(wrappedValue:)();
  *v8 = v10;
  v8[1] = v11;
  return result;
}

uint64_t sub_1002CEE9C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100140278(&qword_1008E66B8);
  swift_storeEnumTagMultiPayload();
  v2 = sub_100140278(&qword_1008E66A8);
  v3 = (a1 + v2[9]);
  type metadata accessor for WorkoutDetailDownhillRunDataSource();
  sub_1002D1384(&qword_1008E32E8, type metadata accessor for WorkoutDetailDownhillRunDataSource);
  *v3 = ObservedObject.init(wrappedValue:)();
  v3[1] = v4;
  *(a1 + v2[10]) = 0x4040000000000000;
  *(a1 + v2[11]) = 0x4010000000000000;
  *(a1 + v2[12]) = 0x4020000000000000;
  v5 = a1 + v2[13];
  GestureState.init(wrappedValue:)();
  *v5 = v10;
  *(v5 + 1) = v11;
  *(v5 + 1) = v12;
  v6 = (a1 + v2[14]);
  State.init(wrappedValue:)();
  *v6 = v10;
  v6[1] = v11;
  v7 = (a1 + v2[15]);
  State.init(wrappedValue:)();
  *v7 = v10;
  v7[1] = v11;
  v8 = (a1 + v2[16]);
  sub_100140278(&qword_1008E66C0);
  result = State.init(wrappedValue:)();
  *v8 = v10;
  v8[1] = v11;
  return result;
}

uint64_t sub_1002CF078@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100140278(&qword_1008E66B8);
  swift_storeEnumTagMultiPayload();
  v2 = sub_100140278(&qword_1008E6738);
  v3 = (a1 + v2[9]);
  type metadata accessor for WorkoutDetailSwimmingSetDataSource(0);
  sub_1002D1384(&qword_1008E24D8, type metadata accessor for WorkoutDetailSwimmingSetDataSource);
  *v3 = ObservedObject.init(wrappedValue:)();
  v3[1] = v4;
  *(a1 + v2[10]) = 0x4040000000000000;
  *(a1 + v2[11]) = 0x4010000000000000;
  *(a1 + v2[12]) = 0x4020000000000000;
  v5 = a1 + v2[13];
  GestureState.init(wrappedValue:)();
  *v5 = v10;
  *(v5 + 1) = v11;
  *(v5 + 1) = v12;
  v6 = (a1 + v2[14]);
  State.init(wrappedValue:)();
  *v6 = v10;
  v6[1] = v11;
  v7 = (a1 + v2[15]);
  State.init(wrappedValue:)();
  *v7 = v10;
  v7[1] = v11;
  v8 = (a1 + v2[16]);
  sub_100140278(&qword_1008E66C0);
  result = State.init(wrappedValue:)();
  *v8 = v10;
  v8[1] = v11;
  return result;
}

id sub_1002CF2FC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CHWorkoutDetailedBasicViewController_activityIndicator;
  *&v2[v4] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  type metadata accessor for WorkoutDetailSwimmingSetDataSource(0);
  sub_1002D1384(&qword_1008E24D8, type metadata accessor for WorkoutDetailSwimmingSetDataSource);
  v5 = a1;
  ObservedObject.init(wrappedValue:)();
  v7 = v6;
  v19 = v6;
  sub_1002D12DC();
  v8 = v7;
  v18 = AnyView.init<A>(_:)();
  v9 = objc_allocWithZone(sub_100140278(&qword_1008E66A0));
  *&v2[OBJC_IVAR___CHWorkoutDetailedBasicViewController_metricController] = UIHostingController.init(rootView:)();
  v17.receiver = v2;
  v17.super_class = type metadata accessor for WorkoutDetailedBasicViewController();
  v10 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 localizedStringForKey:v14 value:0 table:0];

  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  [v12 setTitle:v15];
  return v12;
}

id sub_1002CF538(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CHWorkoutDetailedBasicViewController_activityIndicator;
  *&v2[v4] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  type metadata accessor for WorkoutDetailSwimmingSplitDataSource(0);
  sub_1002D1384(&qword_1008E4B28, type metadata accessor for WorkoutDetailSwimmingSplitDataSource);
  v5 = a1;
  ObservedObject.init(wrappedValue:)();
  v7 = v6;
  v19 = v6;
  sub_1002D1288();
  v8 = v7;
  v18 = AnyView.init<A>(_:)();
  v9 = objc_allocWithZone(sub_100140278(&qword_1008E66A0));
  *&v2[OBJC_IVAR___CHWorkoutDetailedBasicViewController_metricController] = UIHostingController.init(rootView:)();
  v17.receiver = v2;
  v17.super_class = type metadata accessor for WorkoutDetailedBasicViewController();
  v10 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 localizedStringForKey:v14 value:0 table:0];

  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  [v12 setTitle:v15];
  return v12;
}

void sub_1002CF870()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for WorkoutDetailedBasicViewController();
  objc_msgSendSuper2(&v21, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  [v2 setBackgroundColor:v4];

  v5 = [v0 navigationItem];
  v6 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v0 action:"close"];
  [v5 setRightBarButtonItem:v6];

  v7 = *&v0[OBJC_IVAR___CHWorkoutDetailedBasicViewController_activityIndicator];
  [v7 sizeToFit];
  v8 = [v3 whiteColor];
  [v7 setColor:v8];

  [v7 setHidesWhenStopped:1];
  v9 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v7];
  [v9 _setPrefersNoPlatter:1];
  v10 = [v0 navigationItem];
  [v10 setLeftBarButtonItem:v9];

  v11 = *&v0[OBJC_IVAR___CHWorkoutDetailedBasicViewController_metricController];
  v12 = [v11 view];
  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [v11 view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [v3 clearColor];
  [v15 setBackgroundColor:v16];

  v17 = [v0 view];
  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = v17;
  v19 = [v11 view];
  if (v19)
  {
    v20 = v19;
    [v18 addSubview:v19];

    [v0 addChildViewController:v11];
    [v11 didMoveToParentViewController:v0];
    sub_1002CFDB4();

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_1002CFBB8(char a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for WorkoutDetailedBasicViewController();
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [objc_allocWithZone(UINavigationBarAppearance) init];
    [v3 configureWithOpaqueBackground];
    v4 = objc_opt_self();
    v5 = [v4 systemBackgroundColor];
    [v3 setBackgroundColor:v5];

    v6 = [v4 systemBackgroundColor];
    [v3 setShadowColor:v6];

    v7 = [v1 navigationItem];
    [v7 setScrollEdgeAppearance:v3];

    v8 = [v1 tabBarController];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 tabBar];

      v11 = [objc_allocWithZone(UITabBarAppearance) init];
      [v10 setScrollEdgeAppearance:v11];
    }
  }
}

void sub_1002CFDB4()
{
  sub_100140278(&unk_1008E4E20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D5300;
  v2 = *&v0[OBJC_IVAR___CHWorkoutDetailedBasicViewController_metricController];
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [v3 topAnchor];

  v6 = [v0 view];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v6 safeAreaLayoutGuide];

  v9 = [v8 topAnchor];
  v10 = [v5 constraintEqualToAnchor:v9];

  *(v1 + 32) = v10;
  v11 = [v2 view];
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  v13 = [v11 leadingAnchor];

  v14 = [v0 view];
  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v14;
  v16 = [v14 safeAreaLayoutGuide];

  v17 = [v16 leadingAnchor];
  v18 = [v13 constraintEqualToAnchor:v17];

  *(v1 + 40) = v18;
  v19 = [v2 view];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = v22;
  v24 = [v22 safeAreaLayoutGuide];

  v25 = [v24 trailingAnchor];
  v26 = [v21 constraintEqualToAnchor:v25];

  *(v1 + 48) = v26;
  v27 = [v2 view];
  if (!v27)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v0 view];
  if (!v30)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v31 = v30;
  v32 = objc_opt_self();
  v33 = [v31 bottomAnchor];

  v34 = [v29 constraintEqualToAnchor:v33];
  *(v1 + 56) = v34;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 activateConstraints:isa];
}

id sub_1002D01A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailedBasicViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1002D0248(void *a1)
{
  v3 = sub_100140278(&qword_1008E6720);
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v21 - v7);
  v9 = OBJC_IVAR___CHWorkoutDetailedBasicViewController_activityIndicator;
  *&v1[v9] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v10 = a1;
  sub_1002CE72C(v8);
  sub_10001B104(v8, v5, &qword_1008E6720);
  sub_1002D1330(&qword_1008E6728, &qword_1008E6720);
  v23 = AnyView.init<A>(_:)();
  v11 = objc_allocWithZone(sub_100140278(&qword_1008E66A0));
  *&v1[OBJC_IVAR___CHWorkoutDetailedBasicViewController_metricController] = UIHostingController.init(rootView:)();
  v12 = type metadata accessor for WorkoutDetailedBasicViewController();
  v22.receiver = v1;
  v22.super_class = v12;
  v13 = objc_msgSendSuper2(&v22, "initWithNibName:bundle:", 0, 0);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 localizedStringForKey:v17 value:0 table:0];

  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = String._bridgeToObjectiveC()();
  }

  [v15 setTitle:v18];
  *(v10 + OBJC_IVAR___CHWorkoutDetailSegmentDataSource_delegate + 8) = &off_100850DF8;
  v19 = swift_unknownObjectWeakAssign();
  (*((swift_isaMask & *v10) + 0x158))(v19);

  sub_10000EA04(v8, &qword_1008E6720);
  return v15;
}

id sub_1002D0528(void *a1)
{
  v3 = sub_100140278(&qword_1008E6708);
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v20 - v7);
  v9 = OBJC_IVAR___CHWorkoutDetailedBasicViewController_activityIndicator;
  *&v1[v9] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v10 = a1;
  sub_1002CE908(v8);
  sub_10001B104(v8, v5, &qword_1008E6708);
  sub_1002D1330(&qword_1008E6710, &qword_1008E6708);
  v22 = AnyView.init<A>(_:)();
  v11 = objc_allocWithZone(sub_100140278(&qword_1008E66A0));
  *&v1[OBJC_IVAR___CHWorkoutDetailedBasicViewController_metricController] = UIHostingController.init(rootView:)();
  v12 = type metadata accessor for WorkoutDetailedBasicViewController();
  v21.receiver = v1;
  v21.super_class = v12;
  v13 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 localizedStringForKey:v17 value:0 table:0];

  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = String._bridgeToObjectiveC()();
  }

  [v15 setTitle:v18];
  *&v10[OBJC_IVAR___CHWorkoutDetailSplitDataSource_delegate + 8] = &off_100850DF8;
  swift_unknownObjectWeakAssign();
  sub_100538BD8();

  sub_10000EA04(v8, &qword_1008E6708);
  return v15;
}

id sub_1002D07C4(void *a1)
{
  v3 = sub_100140278(&qword_1008E66F0);
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v20 - v7);
  v9 = OBJC_IVAR___CHWorkoutDetailedBasicViewController_activityIndicator;
  *&v1[v9] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v10 = a1;
  sub_1002CEAE4(v8);
  sub_10001B104(v8, v5, &qword_1008E66F0);
  sub_1002D1330(&qword_1008E66F8, &qword_1008E66F0);
  v22 = AnyView.init<A>(_:)();
  v11 = objc_allocWithZone(sub_100140278(&qword_1008E66A0));
  *&v1[OBJC_IVAR___CHWorkoutDetailedBasicViewController_metricController] = UIHostingController.init(rootView:)();
  v12 = type metadata accessor for WorkoutDetailedBasicViewController();
  v21.receiver = v1;
  v21.super_class = v12;
  v13 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 localizedStringForKey:v17 value:0 table:0];

  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = String._bridgeToObjectiveC()();
  }

  [v15 setTitle:v18];
  *&v10[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_delegate + 8] = &off_100850DF8;
  swift_unknownObjectWeakAssign();
  sub_1003886C8();

  sub_10000EA04(v8, &qword_1008E66F0);
  return v15;
}

id sub_1002D0A60(void *a1)
{
  v3 = sub_100140278(&qword_1008E66C8);
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v20 - v7);
  v9 = OBJC_IVAR___CHWorkoutDetailedBasicViewController_activityIndicator;
  *&v1[v9] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v10 = a1;
  sub_1002CECC0(v8);
  sub_10001B104(v8, v5, &qword_1008E66C8);
  sub_1002D1330(&qword_1008E66D0, &qword_1008E66C8);
  v22 = AnyView.init<A>(_:)();
  v11 = objc_allocWithZone(sub_100140278(&qword_1008E66A0));
  *&v1[OBJC_IVAR___CHWorkoutDetailedBasicViewController_metricController] = UIHostingController.init(rootView:)();
  v12 = type metadata accessor for WorkoutDetailedBasicViewController();
  v21.receiver = v1;
  v21.super_class = v12;
  v13 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 localizedStringForKey:v17 value:0 table:0];

  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = String._bridgeToObjectiveC()();
  }

  [v15 setTitle:v18];
  *&v10[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_delegate + 8] = &off_100850DF8;
  swift_unknownObjectWeakAssign();
  sub_10062F6DC();

  sub_10000EA04(v8, &qword_1008E66C8);
  return v15;
}

id sub_1002D0CFC(void *a1)
{
  v3 = sub_100140278(&qword_1008E66A8);
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v20 - v7);
  v9 = OBJC_IVAR___CHWorkoutDetailedBasicViewController_activityIndicator;
  *&v1[v9] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v10 = a1;
  sub_1002CEE9C(v8);
  sub_10001B104(v8, v5, &qword_1008E66A8);
  sub_1002D1330(&qword_1008E66B0, &qword_1008E66A8);
  v22 = AnyView.init<A>(_:)();
  v11 = objc_allocWithZone(sub_100140278(&qword_1008E66A0));
  *&v1[OBJC_IVAR___CHWorkoutDetailedBasicViewController_metricController] = UIHostingController.init(rootView:)();
  v12 = type metadata accessor for WorkoutDetailedBasicViewController();
  v21.receiver = v1;
  v21.super_class = v12;
  v13 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 localizedStringForKey:v17 value:0 table:0];

  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = String._bridgeToObjectiveC()();
  }

  [v15 setTitle:v18];
  sub_10000EA04(v8, &qword_1008E66A8);
  return v15;
}

id sub_1002D0F68(void *a1, CLLocationDegrees a2, CLLocationDegrees a3)
{
  v4 = v3;
  v8 = type metadata accessor for WorkoutReportTrackIssueView();
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v22 - v12);
  v14 = OBJC_IVAR___CHWorkoutDetailedBasicViewController_activityIndicator;
  *&v4[v14] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *v13 = swift_getKeyPath();
  sub_100140278(&qword_1008EE800);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TrackIssue();
  swift_allocObject();
  v15 = a1;
  sub_100144C40(a1, a2, a3);

  v16 = (v13 + *(v8 + 20));
  sub_1002D1384(&qword_1008E6690, type metadata accessor for TrackIssue);
  *v16 = ObservedObject.init(wrappedValue:)();
  v16[1] = v17;
  sub_1002D11C8(v13, v10);
  sub_1002D1384(&qword_1008E6698, type metadata accessor for WorkoutReportTrackIssueView);
  v24 = AnyView.init<A>(_:)();
  v18 = objc_allocWithZone(sub_100140278(&qword_1008E66A0));
  *&v4[OBJC_IVAR___CHWorkoutDetailedBasicViewController_metricController] = UIHostingController.init(rootView:)();
  v19 = type metadata accessor for WorkoutDetailedBasicViewController();
  v23.receiver = v4;
  v23.super_class = v19;
  v20 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
  sub_1002D122C(v13);
  return v20;
}

uint64_t sub_1002D11C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutReportTrackIssueView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D122C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutReportTrackIssueView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002D1288()
{
  result = qword_1008E66E0;
  if (!qword_1008E66E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E66E0);
  }

  return result;
}

unint64_t sub_1002D12DC()
{
  result = qword_1008E66E8;
  if (!qword_1008E66E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E66E8);
  }

  return result;
}

uint64_t sub_1002D1330(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002D1384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002D13F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = type metadata accessor for LargeAwardsCardView();
  v43 = *(v3 - 8);
  v48 = *(v43 + 64);
  __chkstk_darwin(v3 - 8);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v12 = type metadata accessor for AdaptiveStackType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100140278(&qword_1008E6800);
  v44 = *(v16 - 8);
  v45 = v16;
  __chkstk_darwin(v16);
  v40 = &v38 - v17;
  v42 = sub_100140278(&qword_1008E6808) - 8;
  __chkstk_darwin(v42);
  v41 = &v38 - v18;
  v39 = v1;
  sub_10005491C(v11);
  (*(v6 + 104))(v8, enum case for DynamicTypeSize.xxLarge(_:), v5);
  sub_10005BD44(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  v19 = dispatch thunk of static Comparable.< infix(_:_:)();
  v20 = *(v6 + 8);
  v20(v8, v5);
  v20(v11, v5);
  v21 = &enum case for AdaptiveStackType.horizontal(_:);
  if ((v19 & 1) == 0)
  {
    v21 = &enum case for AdaptiveStackType.vertical(_:);
  }

  (*(v13 + 104))(v15, *v21, v12);
  static VerticalAlignment.top.getter();
  static HorizontalAlignment.center.getter();
  v22 = v2;
  v23 = v47;
  sub_1002D3FD4(v22, v47);
  v24 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v25 = swift_allocObject();
  sub_1002D4038(v23, v25 + v24);
  sub_100140278(&qword_1008E6810);
  sub_10014A6B0(&qword_1008E6818, &qword_1008E6810);
  v26 = v40;
  AdaptiveStack.init(type:verticalAlignment:horizontalAlignment:spacing:content:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v27 = v41;
  (*(v44 + 32))(v41, v26, v45);
  v28 = (v27 + *(v42 + 44));
  v29 = v54;
  v28[4] = v53;
  v28[5] = v29;
  v28[6] = v55;
  v30 = v50;
  *v28 = v49;
  v28[1] = v30;
  v31 = v52;
  v28[2] = v51;
  v28[3] = v31;
  v32 = v47;
  sub_1002D3FD4(v39, v47);
  v33 = swift_allocObject();
  sub_1002D4038(v32, v33 + v24);
  v34 = sub_100140278(&qword_1008E6820);
  v35 = v46;
  v36 = (v46 + *(v34 + 36));
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v36 = &unk_1006E6800;
  v36[1] = v33;
  return sub_10008D6C0(v27, v35);
}

uint64_t sub_1002D19AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = type metadata accessor for LargeAwardsCardView();
  v92 = *(v3 - 8);
  v91 = *(v92 + 64);
  __chkstk_darwin(v3);
  v89 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DynamicTypeSize();
  v98 = *(v5 - 8);
  __chkstk_darwin(v5);
  v95 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v79 - v8;
  v10 = sub_100140278(&qword_1008DC7F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v79 - v11;
  v13 = sub_100140278(&qword_1008E6828);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v79 - v15;
  v88 = sub_100140278(&qword_1008E6830);
  __chkstk_darwin(v88);
  v18 = &v79 - v17;
  v19 = sub_100140278(&qword_1008E6838);
  v84 = *(v19 - 8);
  v85 = v19;
  __chkstk_darwin(v19);
  v94 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v93 = &v79 - v22;
  sub_100140278(&qword_1008DC6B0);
  v87 = a1;
  State.projectedValue.getter();
  sub_10001B104(v12, v16, &qword_1008DC7F0);
  sub_1002D24B8(a1, &v16[*(v14 + 44)]);
  sub_10000EA04(v12, &qword_1008DC7F0);
  v23 = v9;
  sub_10005491C(v9);
  v96 = enum case for DynamicTypeSize.xxLarge(_:);
  v24 = v98;
  v25 = v98 + 104;
  v90 = *(v98 + 104);
  v26 = v95;
  v90(v95);
  v97 = sub_10005BD44(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  v27 = v23;
  v80 = v23;
  v28 = dispatch thunk of static Comparable.< infix(_:_:)();
  v29 = *(v24 + 8);
  v98 = v24 + 8;
  v29(v26, v5);
  v29(v27, v5);
  if (v28)
  {
    v30 = 0;
  }

  else
  {
    v30 = 0x402E000000000000;
  }

  if (v28)
  {
    v31 = 0x402E000000000000;
  }

  else
  {
    v31 = 0;
  }

  v32 = static Edge.Set.all.getter();
  sub_1002D41D8(v16, v18);
  v33 = &v18[*(v88 + 36)];
  *v33 = v32;
  *(v33 + 8) = xmmword_1006E6740;
  *(v33 + 3) = v30;
  *(v33 + 4) = v31;
  v34 = v87;
  v33[40] = 0;
  v35 = v89;
  sub_1002D3FD4(v34, v89);
  v36 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v37 = swift_allocObject();
  sub_1002D4038(v35, v37 + v36);
  sub_1002D42A8();
  View.onTapGesture(count:perform:)();

  sub_10000EA04(v18, &qword_1008E6830);
  v38 = v80;
  sub_10005491C(v80);
  v39 = v95;
  v91 = v25;
  (v90)(v95, v96, v5);
  LOBYTE(v36) = dispatch thunk of static Comparable.< infix(_:_:)();
  v29(v39, v5);
  v40 = v38;
  v83 = v29;
  v29(v38, v5);
  if (v36)
  {
    v41 = static HorizontalAlignment.leading.getter();
  }

  else
  {
    v41 = static HorizontalAlignment.center.getter();
  }

  v92 = v41;
  v130 = 0;
  sub_1002D2A3C(v34, &v105);
  v124 = *&v106[80];
  v125 = *&v106[96];
  v126[0] = *&v106[112];
  *(v126 + 9) = *&v106[121];
  v120 = *&v106[16];
  v121 = *&v106[32];
  v122 = *&v106[48];
  v123 = *&v106[64];
  v118 = v105;
  v119 = *v106;
  v127[6] = *&v106[80];
  v127[7] = *&v106[96];
  v128[0] = *&v106[112];
  *(v128 + 9) = *&v106[121];
  v127[2] = *&v106[16];
  v127[3] = *&v106[32];
  v127[4] = *&v106[48];
  v127[5] = *&v106[64];
  v127[0] = v105;
  v127[1] = *v106;
  sub_10001B104(&v118, &v99, &qword_1008E6850);
  sub_10000EA04(v127, &qword_1008E6850);
  *(&v129[6] + 7) = v124;
  *(&v129[7] + 7) = v125;
  *(&v129[8] + 7) = v126[0];
  v129[9] = *(v126 + 9);
  *(&v129[2] + 7) = v120;
  *(&v129[3] + 7) = v121;
  *(&v129[4] + 7) = v122;
  *(&v129[5] + 7) = v123;
  *(v129 + 7) = v118;
  *(&v129[1] + 7) = v119;
  LODWORD(v89) = v130;
  v82 = static Edge.Set.top.getter();
  sub_10005491C(v38);
  v42 = v95;
  v43 = v96;
  v44 = v90;
  (v90)(v95, v96, v5);
  dispatch thunk of static Comparable.< infix(_:_:)();
  v45 = v83;
  v83(v42, v5);
  v45(v40, v5);
  EdgeInsets.init(_all:)();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v131 = 0;
  sub_10005491C(v40);
  v44(v42, v43, v5);
  v54 = dispatch thunk of static Comparable.< infix(_:_:)();
  v45(v42, v5);
  v45(v40, v5);
  LODWORD(v88) = (v54 & 1) == 0;
  KeyPath = swift_getKeyPath();
  sub_10005491C(v40);
  v44(v42, v96, v5);
  LODWORD(v97) = dispatch thunk of static Comparable.< infix(_:_:)();
  v45(v42, v5);
  v45(v40, v5);
  v56 = v84;
  v55 = v85;
  v57 = *(v84 + 16);
  v59 = v93;
  v58 = v94;
  v57(v94, v93, v85);
  v60 = v86;
  v57(v86, v58, v55);
  v61 = sub_100140278(&qword_1008E6858);
  v62 = v60 + *(v61 + 48);
  v99 = v92;
  LOBYTE(v100[0]) = v89;
  *(&v100[6] + 1) = v129[6];
  *(&v100[7] + 1) = v129[7];
  *(&v100[8] + 1) = v129[8];
  *(&v100[9] + 1) = v129[9];
  *(&v100[2] + 1) = v129[2];
  *(&v100[3] + 1) = v129[3];
  *(&v100[4] + 1) = v129[4];
  *(&v100[5] + 1) = v129[5];
  *(&v100[1] + 1) = v129[1];
  *(v100 + 1) = v129[0];
  *(&v100[10] + 1) = *v133;
  DWORD1(v100[10]) = *&v133[3];
  LOBYTE(v58) = v82;
  BYTE8(v100[10]) = v82;
  HIDWORD(v100[10]) = *&v132[3];
  *(&v100[10] + 9) = *v132;
  *&v101 = v47;
  *(&v101 + 1) = v49;
  *&v102 = v51;
  *(&v102 + 1) = v53;
  LOBYTE(v103) = 0;
  DWORD1(v103) = *(v134 + 3);
  *(&v103 + 1) = v134[0];
  v63 = KeyPath;
  *(&v103 + 1) = KeyPath;
  v104 = v88;
  v64 = v101;
  v65 = v102;
  v66 = v103;
  *(v62 + 240) = v88;
  *(v62 + 208) = v65;
  *(v62 + 224) = v66;
  *(v62 + 192) = v64;
  v67 = v99;
  v68 = v100[0];
  v69 = v100[2];
  *(v62 + 32) = v100[1];
  *(v62 + 48) = v69;
  *v62 = v67;
  *(v62 + 16) = v68;
  v70 = v100[3];
  v71 = v100[4];
  v72 = v100[6];
  *(v62 + 96) = v100[5];
  *(v62 + 112) = v72;
  *(v62 + 64) = v70;
  *(v62 + 80) = v71;
  v73 = v100[7];
  v74 = v100[8];
  v75 = v100[10];
  *(v62 + 160) = v100[9];
  *(v62 + 176) = v75;
  *(v62 + 128) = v73;
  *(v62 + 144) = v74;
  v76 = v60 + *(v61 + 64);
  *v76 = 0;
  *(v76 + 8) = 0;
  *(v76 + 9) = (v97 & 1) == 0;
  sub_10001B104(&v99, &v105, &qword_1008E6860);
  v77 = *(v56 + 8);
  v77(v59, v55);
  *&v106[97] = v129[6];
  *&v106[113] = v129[7];
  *&v106[129] = v129[8];
  *&v106[145] = v129[9];
  *&v106[33] = v129[2];
  *&v106[49] = v129[3];
  *&v106[65] = v129[4];
  *&v106[81] = v129[5];
  *&v106[1] = v129[0];
  v105 = v92;
  v106[0] = v89;
  *&v106[17] = v129[1];
  *v107 = *v133;
  *&v107[3] = *&v133[3];
  v108 = v58;
  *v109 = *v132;
  *&v109[3] = *&v132[3];
  v110 = v47;
  v111 = v49;
  v112 = v51;
  v113 = v53;
  v114 = 0;
  *v115 = v134[0];
  *&v115[3] = *(v134 + 3);
  v116 = v63;
  v117 = v88;
  sub_10000EA04(&v105, &qword_1008E6860);
  return (v77)(v94, v55);
}

__n128 sub_1002D24B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LargeAwardsCardView();
  v33 = *(a1 + *(v4 + 56));
  sub_100140278(&qword_1008E0038);
  State.wrappedValue.getter();
  if (v24)
  {
    v5 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = (a1 + *(v4 + 60));
    v15 = *v14;
    v16 = *(v14 + 1);
    LOBYTE(v33) = v15;
    *(&v33 + 1) = v16;

    sub_100140278(&qword_1008DDBB8);
    State.wrappedValue.getter();
    v17 = 1.0;
    if (!v24)
    {
      v17 = 0.0;
    }

    v32 = 0;
    *&v20 = v24;
    BYTE8(v20) = v5;
    v21.n128_u64[0] = v7;
    v21.n128_u64[1] = v9;
    *&v22 = v11;
    *(&v22 + 1) = v13;
    LOBYTE(v23) = 0;
    *(&v23 + 1) = v17;
    v33 = v20;
    v34 = v21;
    v35 = v22;
    v36 = v23;
    v31 = 0;
    v37 = 0;
    sub_10001B104(&v20, &v24, &qword_1008E0098);
    sub_100140278(&qword_1008E0098);
    sub_100140278(&qword_1008E0090);
    sub_1002D43D4();
    sub_1001D1144();
    _ConditionalContent<>.init(storage:)();

    sub_10000EA04(&v20, &qword_1008E0098);
    v35 = v26;
    v36 = v27;
    v37 = v28;
    v33 = v24;
    v34 = v25;
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v31 = 1;
    v30 = BYTE8(v20);
    v29 = v21.n128_u8[8];
    v32 = 1;
    *&v24 = 0;
    BYTE8(v24) = 1;
    v25.n128_u64[0] = v20;
    v25.n128_u8[8] = BYTE8(v20);
    *&v26 = v21.n128_u64[0];
    BYTE8(v26) = v21.n128_u8[8];
    v27 = v22;
    v28 = 1;
    sub_100140278(&qword_1008E0098);
    sub_100140278(&qword_1008E0090);
    sub_1002D43D4();
    sub_1001D1144();
    _ConditionalContent<>.init(storage:)();
  }

  v18 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v18;
  *(a2 + 64) = v37;
  result = v34;
  *a2 = v33;
  *(a2 + 16) = result;
  return result;
}

void sub_1002D279C(uint64_t a1)
{
  v2 = type metadata accessor for LargeAwardsCardView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = *(a1 + *(v6 + 24));
  if (v7)
  {
    v8 = v7;
    v9 = sub_1002D34EC();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    sub_1002D3FD4(a1, &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
    v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v17 = swift_allocObject();
    sub_1002D4038(&v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v17 + v16);
    sub_1002D3FD4(a1, &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
    v18 = swift_allocObject();
    sub_1002D4038(v5, v18 + v16);
    *&v33 = v9;
    *(&v33 + 1) = v11;
    *&v34 = v13;
    *(&v34 + 1) = v15;
    *&v35 = v8;
    *(&v35 + 1) = sub_1002D4360;
    *&v36 = v17;
    *(&v36 + 1) = sub_1002D43CC;
    v37 = v18;
    sub_10001B104(a1 + *(v2 + 44), v31, &qword_1008DC808);
    if (v32)
    {
      v19 = sub_1000066AC(v31, v32);
      v20 = (a1 + *(v2 + 20));
      v30[3] = &type metadata for AwardViewActionContext;
      v21 = swift_allocObject();
      v30[0] = v21;
      v22 = v36;
      *(v21 + 48) = v35;
      *(v21 + 64) = v22;
      *(v21 + 80) = v37;
      v23 = v34;
      *(v21 + 16) = v33;
      *(v21 + 32) = v23;
      v24 = *v19;
      v25 = v20[3];
      v26 = v20[4];
      v27 = sub_1000066AC(v20, v25);
      sub_1001D1294(&v33, v29);
      sub_100607BA4(v27, v30, v24, v25, v26);
      sub_1001D1240(&v33);
      sub_10000EA04(v30, &qword_1008E51F0);
      sub_100005A40(v31);
    }

    else
    {
      sub_1001D1240(&v33);
      sub_10000EA04(v31, &qword_1008DC808);
    }
  }
}

uint64_t sub_1002D2A3C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1;
  v68 = a1;
  v72 = a2;
  v3 = type metadata accessor for Font.Leading();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for LargeAwardsCardView();
  v7 = (v2 + *(v67 + 32));
  v8 = v7[1];
  v106 = *v7;
  v107 = v8;
  v66 = sub_10000FCBC();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v74 = v14;
  static Font.caption2.getter();
  v65 = enum case for Font.Leading.tight(_:);
  v64 = *(v4 + 104);
  v62 = v3;
  v64(v6);
  Font.leading(_:)();

  v63 = *(v4 + 8);
  v63(v6, v3);
  v15 = Text.font(_:)();
  v69 = v16;
  v70 = v15;
  LOBYTE(v2) = v17;
  v71 = v18;

  sub_10004642C(v9, v11, v13 & 1);

  LODWORD(v74) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v73 = v2 & 1;
  LOBYTE(v106) = v2 & 1;
  LOBYTE(v95[0]) = 0;
  v27 = (v68 + *(v67 + 36));
  v28 = v27[1];
  v106 = *v27;
  v107 = v28;

  v29 = Text.init<A>(_:)();
  v31 = v30;
  LOBYTE(v3) = v32;
  static Font.caption2.getter();
  v33 = v62;
  (v64)(v6, v65, v62);
  Font.leading(_:)();

  v63(v6, v33);
  v34 = Text.font(_:)();
  v36 = v35;
  LOBYTE(v6) = v37;

  sub_10004642C(v29, v31, v3 & 1);

  LODWORD(v106) = static HierarchicalShapeStyle.secondary.getter();
  v38 = Text.foregroundStyle<A>(_:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_10004642C(v34, v36, v6 & 1);

  LOBYTE(v29) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v106) = v42 & 1;
  v46 = v69;
  v45 = v70;
  *&v87 = v70;
  *(&v87 + 1) = v69;
  LOBYTE(v88) = v73;
  *(&v88 + 1) = *v86;
  DWORD1(v88) = *&v86[3];
  v47 = v71;
  *(&v88 + 1) = v71;
  LOBYTE(v89) = v74;
  DWORD1(v89) = *&v85[3];
  *(&v89 + 1) = *v85;
  *(&v89 + 1) = v20;
  *&v90[0] = v22;
  *(&v90[0] + 1) = v24;
  *&v90[1] = v26;
  BYTE8(v90[1]) = 0;
  *(v78 + 9) = *(v90 + 9);
  v77 = v89;
  v78[0] = v90[0];
  v75 = v87;
  v76 = v88;
  *&v91 = v38;
  *(&v91 + 1) = v40;
  LOBYTE(v92) = v42 & 1;
  DWORD1(v92) = *(v84 + 3);
  *(&v92 + 1) = v84[0];
  *(&v92 + 1) = v44;
  LOBYTE(v93) = v29;
  DWORD1(v93) = *&v83[3];
  *(&v93 + 1) = *v83;
  *(&v93 + 1) = v48;
  *&v94[0] = v49;
  *(&v94[0] + 1) = v50;
  *&v94[1] = v51;
  BYTE8(v94[1]) = 0;
  *(v82 + 9) = *(v94 + 9);
  v81 = v93;
  v82[0] = v94[0];
  v79 = v91;
  v80 = v92;
  v52 = v88;
  v53 = v72;
  *v72 = v87;
  v53[1] = v52;
  v54 = v77;
  v55 = v78[0];
  v56 = v79;
  v53[4] = v78[1];
  v53[5] = v56;
  v53[2] = v54;
  v53[3] = v55;
  v57 = v80;
  v58 = v81;
  v59 = v82[0];
  *(v53 + 137) = *(v82 + 9);
  v53[7] = v58;
  v53[8] = v59;
  v53[6] = v57;
  v95[0] = v38;
  v95[1] = v40;
  v96 = v42 & 1;
  *v97 = v84[0];
  *&v97[3] = *(v84 + 3);
  v98 = v44;
  v99 = v29;
  *v100 = *v83;
  *&v100[3] = *&v83[3];
  v101 = v48;
  v102 = v49;
  v103 = v50;
  v104 = v51;
  v105 = 0;
  sub_10001B104(&v87, &v106, &qword_1008DC4C0);
  sub_10001B104(&v91, &v106, &qword_1008DC4C0);
  sub_10000EA04(v95, &qword_1008DC4C0);
  v106 = v45;
  v107 = v46;
  v108 = v73;
  *v109 = *v86;
  *&v109[3] = *&v86[3];
  v110 = v47;
  v111 = v74;
  *v112 = *v85;
  *&v112[3] = *&v85[3];
  v113 = v20;
  v114 = v22;
  v115 = v24;
  v116 = v26;
  v117 = 0;
  return sub_10000EA04(&v106, &qword_1008DC4C0);
}

uint64_t sub_1002D2F84()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001D0380;

  return sub_1002D3030();
}

uint64_t sub_1002D3030()
{
  v1[21] = v0;
  type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v3;
  v1[24] = v2;

  return _swift_task_switch(sub_1002D30C8, v3, v2);
}

uint64_t sub_1002D30C8()
{
  v1 = v0[21];
  v2 = type metadata accessor for LargeAwardsCardView();
  v0[25] = v2;
  v3 = *(v1 + *(v2 + 24));
  v0[26] = v3;
  if (v3 && (v4 = *(v1 + *(v2 + 40))) != 0)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1002D326C;
    v5 = swift_continuation_init();
    v0[17] = sub_100140278(&qword_1008E0028);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001D09D8;
    v0[13] = &unk_100850E60;
    v0[14] = v5;
    [v4 thumbnailImageForAchievement:v3 size:v0 + 10 completion:{90.0, 90.0}];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1002D326C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return _swift_task_switch(sub_1002D3374, v2, v1);
}

uint64_t sub_1002D3374()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 144);

  if (v2)
  {
    v3 = *(v0 + 200);
    v4 = *(v0 + 208);
    v5 = *(v0 + 168);
    [v2 size];
    v6 = v5 + *(v3 + 52);
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    *(v0 + 80) = *v6;
    *(v0 + 96) = v7;
    *(v0 + 104) = v8;
    *(v0 + 144) = v9;
    *(v0 + 152) = v10;
    *(v0 + 160) = 0;
    sub_100140278(&qword_1008E0030);
    State.wrappedValue.setter();
    v11 = v2;
    v12 = Image.init(uiImage:)();
    v13 = (v5 + *(v3 + 56));
    v14 = v13[1];
    *(v0 + 80) = *v13;
    *(v0 + 88) = v14;
    *(v0 + 144) = v12;

    sub_100140278(&qword_1008E0038);
    State.wrappedValue.setter();
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

double sub_1002D34EC()
{
  v91 = type metadata accessor for GlobalCoordinateSpace();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v86 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v97 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v96 = &v86 - v6;
  v7 = type metadata accessor for LocalCoordinateSpace();
  v95 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GeometryProxy();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100140278(&unk_1008DC740);
  __chkstk_darwin(v14 - 8);
  v93 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v94 = &v86 - v17;
  __chkstk_darwin(v18);
  v92 = &v86 - v19;
  __chkstk_darwin(v20);
  v22 = &v86 - v21;
  v98 = type metadata accessor for LargeAwardsCardView();
  sub_100140278(&qword_1008DC7F0);
  v99 = v0;
  Binding.wrappedValue.getter();
  v103 = *(v11 + 48);
  v23 = v103(v22, 1, v10);
  v101 = v13;
  v102 = v11;
  v100 = v10;
  v88 = v7;
  v87 = v9;
  if (v23)
  {
    sub_10000EA04(v22, &unk_1008DC740);
  }

  else
  {
    (*(v11 + 16))(v13, v22, v10);
    sub_10000EA04(v22, &unk_1008DC740);
    static CoordinateSpaceProtocol<>.local.getter();
    GeometryProxy.frame<A>(in:)();
    (*(v95 + 8))(v9, v7);
    (*(v11 + 8))(v13, v10);
  }

  v24 = v96;
  v25 = v99;
  sub_10005491C(v96);
  v26 = v97;
  (*(v3 + 104))(v97, enum case for DynamicTypeSize.xxLarge(_:), v2);
  sub_10005BD44(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  v27 = dispatch thunk of static Comparable.< infix(_:_:)();
  v28 = *(v3 + 8);
  v28(v26, v2);
  v28(v24, v2);
  v29 = v98;
  v30 = sub_100140278(&qword_1008DC6B0);
  if (v27)
  {
    v31 = v92;
    v97 = v30;
    State.wrappedValue.getter();
    v32 = v100;
    v33 = v103(v31, 1, v100);
    v34 = v101;
    v35 = v102;
    if (v33)
    {
      sub_10000EA04(v31, &unk_1008DC740);
      v36 = -15.0;
    }

    else
    {
      (*(v102 + 16))(v101, v31, v32);
      sub_10000EA04(v31, &unk_1008DC740);
      v42 = v89;
      static CoordinateSpaceProtocol<>.global.getter();
      v43 = v91;
      GeometryProxy.frame<A>(in:)();
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      (*(v90 + 8))(v42, v43);
      (*(v35 + 8))(v34, v32);
      v108.origin.x = v45;
      v108.origin.y = v47;
      v108.size.width = v49;
      v108.size.height = v51;
      v36 = CGRectGetMinX(v108) + -20.0 + 5.0;
    }

    v52 = (v25 + *(v29 + 52));
    v53 = *v52;
    v54 = v52[1];
    v55 = *(v52 + 16);
    v56 = v52[3];
    v104 = *v52;
    v105 = v54;
    v106 = v55;
    v107 = v56;
    sub_100140278(&qword_1008E0030);
    State.wrappedValue.getter();
    v57 = v94;
    State.wrappedValue.getter();
    if (v103(v57, 1, v32))
    {
      sub_10000EA04(v57, &unk_1008DC740);
    }

    else
    {
      v74 = v101;
      v73 = v102;
      (*(v102 + 16))(v101, v57, v32);
      sub_10000EA04(v57, &unk_1008DC740);
      v75 = v87;
      static CoordinateSpaceProtocol<>.local.getter();
      v76 = v88;
      GeometryProxy.frame<A>(in:)();
      v78 = v77;
      v80 = v79;
      v82 = v81;
      v84 = v83;
      (*(v95 + 8))(v75, v76);
      (*(v73 + 8))(v74, v32);
      v110.origin.x = v78;
      v110.origin.y = v80;
      v110.size.width = v82;
      v110.size.height = v84;
      CGRectGetMinY(v110);
    }

    v104 = v53;
    v105 = v54;
    v106 = v55;
    v107 = v56;
    State.wrappedValue.getter();
    v104 = v53;
    v105 = v54;
    v106 = v55;
    v107 = v56;
    State.wrappedValue.getter();
  }

  else
  {
    v37 = v93;
    State.wrappedValue.getter();
    v38 = v100;
    v39 = v103(v37, 1, v100);
    v41 = v101;
    v40 = v102;
    if (v39)
    {
      sub_10000EA04(v37, &unk_1008DC740);
      v36 = -15.0;
    }

    else
    {
      (*(v102 + 16))(v101, v37, v38);
      sub_10000EA04(v37, &unk_1008DC740);
      v58 = v89;
      static CoordinateSpaceProtocol<>.global.getter();
      v59 = v91;
      GeometryProxy.frame<A>(in:)();
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v67 = v66;
      (*(v90 + 8))(v58, v59);
      (*(v40 + 8))(v41, v38);
      v109.origin.x = v61;
      v109.origin.y = v63;
      v109.size.width = v65;
      v109.size.height = v67;
      v36 = CGRectGetMinX(v109) + -20.0 + 5.0;
    }

    v68 = (v25 + *(v29 + 52));
    v70 = v68[1];
    v71 = *(v68 + 16);
    v72 = v68[3];
    v104 = *v68;
    v69 = v104;
    v105 = v70;
    v106 = v71;
    v107 = v72;
    sub_100140278(&qword_1008E0030);
    State.wrappedValue.getter();
    v104 = v69;
    v105 = v70;
    v106 = v71;
    v107 = v72;
    State.wrappedValue.getter();
  }

  return v36;
}

uint64_t sub_1002D3F5C()
{
  type metadata accessor for LargeAwardsCardView();
  sub_100140278(&qword_1008DDBB8);
  return State.wrappedValue.setter();
}

uint64_t sub_1002D3FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LargeAwardsCardView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D4038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LargeAwardsCardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D409C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LargeAwardsCardView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1002D19AC(v4, a1);
}

uint64_t sub_1002D410C()
{
  type metadata accessor for LargeAwardsCardView();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BACC;

  return sub_1002D2F84();
}

uint64_t sub_1002D41D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E6828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002D4248()
{
  v1 = *(type metadata accessor for LargeAwardsCardView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1002D279C(v2);
}

unint64_t sub_1002D42A8()
{
  result = qword_1008E6840;
  if (!qword_1008E6840)
  {
    sub_100141EEC(&qword_1008E6830);
    sub_10014A6B0(&qword_1008E6848, &qword_1008E6828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6840);
  }

  return result;
}

unint64_t sub_1002D43D4()
{
  result = qword_1008E00A0;
  if (!qword_1008E00A0)
  {
    sub_100141EEC(&qword_1008E0098);
    sub_10015ECA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E00A0);
  }

  return result;
}

uint64_t type metadata accessor for SleepingSampleSingleMetricChartPoint()
{
  result = qword_1008E68D8;
  if (!qword_1008E68D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002D44D4()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002D4558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static Date.== infix(_:_:)() & 1) == 0 || *(a1 + *(a3 + 20)) != *(a2 + *(a3 + 20)))
  {
    return 0;
  }

  return static Color.== infix(_:_:)();
}

uint64_t sub_1002D45D4()
{
  v0 = sub_1004CB17C(&off_1008426A0);
  sub_100140278(&qword_1008E6918);
  result = swift_arrayDestroy();
  qword_1009255A8 = v0;
  return result;
}

BOOL sub_1002D4640(uint64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for TrendListMetric();
  v4 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v26 = sub_100140278(&qword_1008E6AD0);
  __chkstk_darwin(v26);
  v14 = &v24 - v13;
  v27 = a1;
  v28 = a2;
  v15 = *(a1 + 16);
  v29 = *(a2 + 16);
  if (v29 != v15)
  {
    return 0;
  }

  v16 = 0;
  do
  {
    v18 = v29 == v16;
    if (v29 == v16)
    {
      break;
    }

    v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v20 = *(v4 + 72) * v16;
    sub_100073078(v28 + v19 + v20, v12);
    v21 = v27 + v19;
    v22 = *(v26 + 48);
    sub_10025D2D0(v12, v14);
    sub_100073078(v21 + v20, &v14[v22]);
    sub_10025D2D0(v14, v9);
    sub_10025D2D0(&v14[v22], v6);
    if (*v9 != *v6 || v9[1] != v6[1] || (*(v9 + 1) != *(v6 + 1) || *(v9 + 2) != *(v6 + 2)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_100073174(v6);
      sub_100073174(v9);
      return 0;
    }

    type metadata accessor for AttributedString();
    sub_1002D81F4(&qword_1008E6AD8, &type metadata accessor for AttributedString);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_100073174(v6);
    sub_100073174(v9);
    ++v16;
  }

  while ((v17 & 1) != 0);
  return v18;
}

uint64_t sub_1002D4928()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = v1;
  if (v2 == 1)
  {
    if (qword_1008DAFA0 != -1)
    {
      swift_once();
    }

    v4 = byte_1008F8688;
    static os_log_type_t.info.getter();
    v5 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    if (v4)
    {
      v6 = 0xE600000000000000;
      v3 = 0x736978656C41;
    }

    else
    {
      v7 = FIUICopyUserFirstNameFromAddressBook();
      if (v7)
      {
        v8 = v7;
        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = v9;
      }

      else
      {
        v3 = 0;
        v6 = 0;
      }
    }

    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    *(v0 + 48) = v3;
    *(v0 + 56) = v6;

    sub_1002D8294(v10, v11);
  }

  sub_1002D82A8(v1, v2);
  return v3;
}

uint64_t *sub_1002D4A6C(void *a1, void *a2, void *a3, void *a4, char a5)
{
  v6 = v5;
  v34 = a1;
  v30 = *v6;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v35 - 8);
  __chkstk_darwin(v35);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v36 = *(v13 - 8);
  v37 = v13;
  __chkstk_darwin(v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 3) = xmmword_1006E6990;
  v6[8] = 0;
  v6[9] = 0;
  *(v6 + 80) = 1;
  v6[11] = 0;
  *(v6 + 96) = 3;
  v6[13] = 0;
  v6[14] = 0;
  v6[15] = _swiftEmptyArrayStorage;
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  *(v6 + 40) = a5;
  v33 = a2;
  v32 = a3;
  v31 = a4;
  sub_1002D55E4();
  sub_1000078CC();
  (*(v17 + 104))(v19, enum case for DispatchQoS.QoSClass.userInitiated(_:), v16);
  v29 = static OS_dispatch_queue.global(qos:)();
  (*(v17 + 8))(v19, v16);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v22 = v34;
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v30;
  aBlock[4] = sub_1002D82BC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100851330;
  v23 = _Block_copy(aBlock);

  v24 = v22;
  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_1002D81F4(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  v25 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v29;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v38 + 8))(v12, v25);
  (*(v36 + 8))(v15, v37);

  return v6;
}

uint64_t sub_1002D4F0C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v7 = *(v19 - 8);
  __chkstk_darwin(v19);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1008DAFA0 != -1)
  {
    swift_once();
  }

  v10 = byte_1008F8688;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    *(Strong + 64) = sub_1002D82C8(a2, v10);
    *(v12 + 72) = v13;
    *(v12 + 80) = v14 & 1;
  }

  sub_1000078CC();
  v15 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1002D89B0;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100851358;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002D81F4(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v19);
}

uint64_t sub_1002D525C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1002D5C84();
    v2 = *(v1 + 24);
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1002D89B8;
    *(v4 + 24) = v3;
    v5 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_observers;
    swift_beginAccess();
    v6 = v2;

    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *&v2[v5];
    *&v2[v5] = 0x8000000000000000;
    sub_10048FCBC(sub_10007BD60, v4, v1, isUniquelyReferenced_nonNull_native);
    *&v2[v5] = v8;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1002D53C0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1002D5C84();
  }

  return result;
}

uint64_t sub_1002D5418()
{
  v1 = v0;
  v2 = *(v0 + 24);
  swift_beginAccess();
  v3 = v2;
  sub_100559A44(0, 0, v1);
  swift_endAccess();

  v4 = *(v1 + 120);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v4 + 32;

    do
    {
      sub_10000B1B4(v7, v10);
      v8 = [v6 defaultCenter];
      sub_1000066AC(v10, v10[3]);
      [v8 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      sub_100005A40(v10);
      v7 += 32;
      --v5;
    }

    while (v5);
  }

  sub_1002D8294(*(v1 + 48), *(v1 + 56));

  sub_1000245E0(*(v1 + 104));

  return v1;
}

uint64_t sub_1002D558C()
{
  sub_1002D5418();

  return swift_deallocClassInstance();
}

uint64_t sub_1002D55E4()
{
  result = sub_10013AA50();
  if ((result & 1) == 0)
  {
    v2 = objc_opt_self();
    v3 = [v2 defaultCenter];
    if (qword_1008DAD60 != -1)
    {
      swift_once();
    }

    v4 = qword_100925E00;
    v5 = objc_opt_self();
    v6 = [v5 mainQueue];
    v7 = swift_allocObject();
    swift_weakInit();
    v27 = sub_1002D823C;
    v28 = v7;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100026F8C;
    v26 = &unk_100851290;
    v8 = _Block_copy(&aBlock);

    v22 = [v3 addObserverForName:v4 object:0 queue:v6 usingBlock:v8];
    _Block_release(v8);

    v9 = [v2 defaultCenter];
    if (qword_1008DA5A0 != -1)
    {
      swift_once();
    }

    v10 = qword_100925168;
    v11 = [v5 mainQueue];
    v12 = swift_allocObject();
    swift_weakInit();
    v27 = sub_1002D8264;
    v28 = v12;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100026F8C;
    v26 = &unk_1008512B8;
    v13 = _Block_copy(&aBlock);

    v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
    _Block_release(v13);

    v15 = [v2 defaultCenter];
    v16 = kFIUIFitnessUnitPreferencesDidChangeNotification;
    v17 = [v5 mainQueue];
    v18 = swift_allocObject();
    swift_weakInit();
    v27 = sub_1002D826C;
    v28 = v18;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100026F8C;
    v26 = &unk_1008512E0;
    v19 = _Block_copy(&aBlock);

    v20 = [v15 addObserverForName:v16 object:0 queue:v17 usingBlock:v19];
    _Block_release(v19);

    sub_100140278(&qword_1008E7590);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1006D64F0;
    *(v21 + 56) = swift_getObjectType();
    *(v21 + 32) = v22;
    *(v21 + 88) = swift_getObjectType();
    *(v21 + 64) = v14;
    *(v21 + 120) = swift_getObjectType();
    *(v21 + 96) = v20;
    *(v0 + 120) = v21;
  }

  return result;
}

uint64_t sub_1002D5A3C()
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v1 = result;
    AnyHashable.init<A>(_:)();
    if (*(v1 + 16) && (v2 = sub_1004C5BC0(v6), (v3 & 1) != 0))
    {
      sub_10000B1B4(*(v1 + 56) + 32 * v2, v7);
      sub_100282EF8(v6);

      result = swift_dynamicCast();
      if (result)
      {
        static os_log_type_t.default.getter();
        v4 = HKLogActivity;
        os_log(_:dso:log:_:_:)();

        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          *(Strong + 40) = 16;
        }

        swift_beginAccess();
        result = swift_weakLoadStrong();
        if (result)
        {
          sub_1002D5C84();
        }
      }
    }

    else
    {

      return sub_100282EF8(v6);
    }
  }

  return result;
}

uint64_t sub_1002D5BCC()
{
  static os_log_type_t.default.getter();
  v0 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1002D5C84();
  }

  return result;
}

void sub_1002D5C84()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v5 = *(v18 - 8);
  __chkstk_darwin(v18);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1002D6224();
  v10 = v8;
  v11 = *(v0 + 88);
  if (*(v1 + 96) <= 1u)
  {
    if (*(v1 + 96))
    {
      if (v8 == 1)
      {
        goto LABEL_9;
      }
    }

    else if (!v8)
    {
      goto LABEL_9;
    }

LABEL_12:
    sub_1000078CC();
    v13 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v9;
    *(v15 + 24) = v10;
    *(v15 + 32) = v14;
    aBlock[4] = sub_1002D81E4;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_100851268;
    v16 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1002D81F4(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100140278(&unk_1008E7F50);
    sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    v19[1](v4, v2);
    (*(v5 + 8))(v7, v18);
    return;
  }

  if (*(v1 + 96) != 2)
  {
    if (v8 >= 3u)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v8 != 2)
  {
    goto LABEL_12;
  }

LABEL_9:

  v12 = sub_1002D4640(v9, v11);

  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_13:
  static os_log_type_t.default.getter();
  v19 = HKLogActivity;
  os_log(_:dso:log:_:_:)();
  v17 = v19;
}

uint64_t sub_1002D6094(uint64_t a1, unsigned __int8 a2)
{
  static os_log_type_t.default.getter();
  v4 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006D46C0;
  v6 = v4;
  v7 = sub_1000728E0(a1, a2);
  v9 = v8;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10000A788();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 88) = a1;
    *(Strong + 96) = a2;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + 104);
    sub_10000B210(v12);

    if (v12)
    {
      v12(result);
      return sub_1000245E0(v12);
    }
  }

  return result;
}

void *sub_1002D6224()
{
  v1 = v0;
  v2 = sub_100140278(&unk_1008EE8E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v168 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v190 = &v168 - v6;
  __chkstk_darwin(v7);
  v9 = &v168 - v8;
  v206 = type metadata accessor for AttributedString();
  v10 = *(v206 - 8);
  __chkstk_darwin(v206);
  v12 = (&v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v196 = (&v168 - v14);
  __chkstk_darwin(v15);
  *&v201 = &v168 - v16;
  v17 = type metadata accessor for TrendListMetric();
  v203 = *(v17 - 8);
  v204 = v17;
  __chkstk_darwin(v17);
  v19 = &v168 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v189 = &v168 - v21;
  __chkstk_darwin(v22);
  v24 = (&v168 - v23);
  v25 = [objc_opt_self() standardUserDefaults];
  v26 = [v25 BOOLForKey:@"ActivityDidDisplayTrendsOnboarding"];

  if ((v26 & 1) == 0)
  {
    if (qword_1008DAFA0 != -1)
    {
      goto LABEL_98;
    }

    goto LABEL_4;
  }

  v27 = 0;
  while (2)
  {
    v28 = *(*(v1 + 16) + OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability);
    sub_100140278(&qword_1008E6AE0);
    if (v28 >= 2)
    {
      result = _swiftEmptyArrayStorage;
    }

    else
    {
      result = 0;
    }

    if (v28 < 2 || (v27 & 1) != 0)
    {
      return result;
    }

    if (v28 == 2)
    {
      return _swiftEmptyArrayStorage;
    }

    v168 = v10;
    v169 = v19;
    v170 = v12;
    if (v28 != 3)
    {
      goto LABEL_101;
    }

    v10 = &v212;
    v19 = *(v1 + 24);
    v30 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedValidUpTrends;
    swift_beginAccess();
    v12 = *&v19[v30];
    isa = v12[2].isa;
    v198 = v1;
    v202 = v19;
    v171 = v4;
    if (!isa)
    {
      v199 = _swiftEmptyArrayStorage;
      *&v205 = 0;
      goto LABEL_47;
    }

    v182 = v9;
    *&v329[0] = _swiftEmptyArrayStorage;

    sub_10007DD44(0, isa, 0);
    v199 = *&v329[0];
    sub_100011DA0(&v309);
    if (!v12[2].isa)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v32 = 0;
    *&v205 = 0;
    v188 = &v253;
    v185 = &v213;
    v181 = v168 + 7;
    v187 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsByTrendType90;
    v173 = v168 + 1;
    v175 = v168 + 1;
    v184 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsByTrendType365;
    v172 = (isa - 1);
    v183 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_mannKendallTestByTrendType90;
    v178 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_pregnancyStateProvider;
    v179 = (v168 + 2);
    v180 = *(v1 + 32);
    v176 = OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter;
    v177 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_unitManager;
    v174 = v24;
    v186 = v12;
    while (1)
    {
      v191 = v32;
      v33 = v32[v12 + 32];
      v34 = sub_1002D4928();
      v197 = v35;
      v36 = *(v1 + 72);
      v193 = *(v1 + 64);
      v194 = v34;
      v192 = v36;
      v9 = *(v1 + 80);
      LODWORD(v195) = *(v1 + 40);
      v37 = *(v187 + v19);
      v274 = v318;
      v275 = v319;
      v276 = v320;
      v277 = v321;
      v271 = v315;
      v272 = v316;
      v273 = v317;
      v267 = v311;
      v268 = v312;
      v269 = v313;
      v270 = v314;
      v265 = v309;
      v266 = v310;
      v12 = *(v37 + 24);
      v38 = swift_allocObject();
      *(v38 + 16) = &v265;
      *(v38 + 24) = v37;
      *&v200 = v33;
      *(v38 + 32) = v33;
      v1 = swift_allocObject();
      *(v1 + 16) = sub_10028E41C;
      *(v1 + 24) = v38;
      *&v254 = sub_10007BD60;
      *(&v254 + 1) = v1;
      *&v252 = _NSConcreteStackBlock;
      *(&v252 + 1) = 1107296256;
      *&v253 = sub_1003579C0;
      *(&v253 + 1) = &unk_100851088;
      v24 = _Block_copy(&v252);
      v4 = *(&v254 + 1);
      swift_retain_n();

      dispatch_sync(v12, v24);

      _Block_release(v24);
      LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

      if (v37)
      {
        goto LABEL_95;
      }

      v287 = v274;
      v288 = v275;
      v289 = v276;
      v283 = v270;
      v284 = v271;
      v285 = v272;
      v286 = v273;
      v279 = v266;
      v280 = v267;
      v281 = v268;
      v282 = v269;
      v278 = v265;
      v300 = v274;
      v301 = v275;
      v302 = v276;
      v296 = v270;
      v297 = v271;
      v298 = v272;
      v299 = v273;
      v292 = v266;
      v293 = v267;
      v294 = v268;
      v295 = v269;
      v290 = v277;
      v303 = v277;
      v291 = v265;
      if (sub_100013184(&v291) == 1)
      {

        goto LABEL_41;
      }

      v39 = *(v184 + v19);
      v1 = v200;
      v236 = v319;
      v237 = v320;
      v238 = v321;
      v232 = v315;
      v233 = v316;
      v234 = v317;
      v235 = v318;
      v228 = v311;
      v229 = v312;
      v230 = v313;
      v231 = v314;
      v226 = v309;
      v227 = v310;
      v24 = *(v39 + 24);
      v40 = swift_allocObject();
      *(v40 + 16) = &v226;
      *(v40 + 24) = v39;
      *(v40 + 32) = v1;
      v12 = swift_allocObject();
      v12[2].isa = sub_10028E444;
      v12[3].isa = v40;
      *&v214 = sub_1002831F4;
      *(&v214 + 1) = v12;
      *&v212 = _NSConcreteStackBlock;
      *(&v212 + 1) = 1107296256;
      *&v213 = sub_1003579C0;
      *(&v213 + 1) = &unk_100851100;
      v4 = _Block_copy(&v212);
      v19 = *(&v214 + 1);
      swift_retain_n();

      dispatch_sync(v24, v4);

      _Block_release(v4);
      LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

      if (v39)
      {
        goto LABEL_96;
      }

      v249 = v236;
      v250 = v237;
      v245 = v232;
      v246 = v233;
      v247 = v234;
      v248 = v235;
      v241 = v228;
      v242 = v229;
      v243 = v230;
      v244 = v231;
      v239 = v226;
      v240 = v227;
      v262 = v236;
      v263 = v237;
      v258 = v232;
      v259 = v233;
      v260 = v234;
      v261 = v235;
      v254 = v228;
      v255 = v229;
      v256 = v230;
      v257 = v231;
      v251 = v238;
      v264 = v238;
      v252 = v226;
      v253 = v227;
      if (sub_100013184(&v252) == 1)
      {

        sub_10000EA04(&v278, &qword_1008E5710);
LABEL_41:

LABEL_43:
        sub_10006CB8C();
        swift_allocError();
        *v77 = 1;
LABEL_45:
        swift_willThrow();
LABEL_87:

        v160 = static os_log_type_t.error.getter();
        v161 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, v160))
        {
          v162 = v161;
          v163 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          *&v278 = v164;
          *v163 = 136315138;
          swift_getErrorValue();
          v165 = Error.localizedDescription.getter();
          v167 = sub_10000AFDC(v165, v166, &v278);

          *(v163 + 4) = v167;
          _os_log_impl(&_mh_execute_header, v162, v160, "TrendsActivityTileDataModel failed to generate trends type with error: %s", v163, 0xCu);
          sub_100005A40(v164);
        }

        else
        {
        }

        return 0;
      }

      v41 = v202;

      sub_100357B7C(v1, v304);

      if (v305)
      {

        sub_10000EA04(&v239, &qword_1008E5710);
        sub_10000EA04(&v278, &qword_1008E5710);
        goto LABEL_43;
      }

      v42 = *&v304[1];
      v43 = *&v304[4];
      sub_10000EA04(&v278, &qword_1008E5710);
      v44 = *&v291;
      v45 = sub_1003D2500(byte_1006E6B2A[v200]);
      v46 = [objc_opt_self() quantityWithUnit:v45 doubleValue:v44];

      v47 = v182;
      v48 = v180;
      v49 = v205;
      sub_100603B5C(v46, v1, 2, v182);
      if (v49)
      {

        sub_10000EA04(&v239, &qword_1008E5710);

        (*v181)(v47, 1, 1, v206);
        sub_10000EA04(v47, &unk_1008EE8E0);
        sub_1002D8190();
        swift_allocError();
        *v78 = 0;
        goto LABEL_45;
      }

      v50 = v1;

      v51 = v206;
      (*v181)(v47, 0, 1, v206);
      (*v179)(v201, v47, v51);
      v52 = [*(v178 + v41) currentModel];
      if (v52)
      {
        v53 = v52;
        v54 = [v52 state];

        v55 = v54 == 1;
      }

      else
      {
        v55 = 0;
      }

      v57 = v192;
      v56 = v193;
      if (v9)
      {
        v56 = 0;
        v57 = 0;
      }

      LOBYTE(v226) = v9;
      LOBYTE(v212) = v9;
      *&v339 = v194;
      *(&v339 + 1) = v197;
      v340 = v57;
      v341 = v9;
      v342 = v56;
      v343 = v9;
      v344 = v195;
      v345 = v55;
      v58 = *&v41[v177];
      v59 = sub_1005831C0(v58, v50, v44);
      v60 = sub_1005831C0(v58, v50, *&v252) > v59;
      v61 = v253;
      v205 = v255;
      v200 = v254;
      v62 = v256;

      sub_10000EA04(&v239, &qword_1008E5710);
      if (v43 < 0.9)
      {
LABEL_28:
        v63 = 1;
        goto LABEL_33;
      }

      if (v42 <= 0.0)
      {
        if (v42 >= 0.0)
        {
          goto LABEL_28;
        }

        v63 = 2;
      }

      else
      {
        v63 = 0;
      }

LABEL_33:
      LOBYTE(v210[0]) = 1;
      v64 = 2 * v60;
      LOBYTE(v322) = 1;
      v346[0] = v61;
      v346[1] = v200;
      v346[2] = v205;
      v347 = v62;
      v348 = 2 * v60;
      v349 = v63;
      v65 = v50;
      v350 = v50;
      v351 = 0x3FF199999999999ALL;
      v352 = 0;
      v353 = 1;
      v354 = 0;
      v355 = 1;
      sub_1001AAC54(&v339, v346, *(v48 + v176), v306);
      *&v205 = 0;
      *&v200 = sub_10007C29C();
      v197 = v66;
      v67 = v204;
      v24 = v174;
      v68 = v201;
      v9 = v206;
      (*v173)(v174 + SHIDWORD(v204[3].isa), v201, v206);
      v69 = sub_1001A0380(0, 0);
      v71 = v70;
      sub_1001AB3B0(v306);
      (*v175)(v68, v9);
      LOBYTE(v24->isa) = v65;
      BYTE1(v24->isa) = v64;
      v72 = v199;
      v73 = v197;
      v24[1].isa = v200;
      v24[2].isa = v73;
      v74 = (v24 + SLODWORD(v67[4].isa));
      *v74 = v69;
      v74[1] = v71;
      *&v329[0] = v72;
      v4 = v72[2];
      v75 = v72[3];
      if (v4 >= v75 >> 1)
      {
        sub_10007DD44(v75 > 1, v4 + 1, 1);
        v72 = *&v329[0];
      }

      v72[2] = v4 + 1;
      v76 = (*(v203 + 80) + 32) & ~*(v203 + 80);
      v199 = v72;
      sub_10025D2D0(v24, v72 + v76 + *(v203 + 72) * v4);
      v1 = v198;
      v19 = v202;
      v12 = v186;
      if (v172 == v191)
      {
        break;
      }

      v32 = v191 + 1;
      if ((v191 + 1) >= *(v186 + 16))
      {
        goto LABEL_93;
      }
    }

    v4 = v171;
LABEL_47:
    v79 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedValidDownTrends;
    swift_beginAccess();
    v12 = *&v19[v79];
    v80 = v12[2].isa;
    if (!v80)
    {
      v195 = _swiftEmptyArrayStorage;
LABEL_78:
      v138 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedInvalidTrends;
      swift_beginAccess();
      v12 = *&v19[v138];
      v139 = v12[2].isa;
      v19 = _swiftEmptyArrayStorage;
      if (!v139)
      {
LABEL_92:
        v207 = v199;
        sub_10007EBE0(v195);
        sub_10007EBE0(v19);
        return v207;
      }

      *&v278 = _swiftEmptyArrayStorage;

      sub_10007DD44(0, v139, 0);
      v10 = 0;
      v19 = v278;
      v140 = *(v1 + 32);
      v193 = v12;
      v194 = v140;
      v196 = v168 + 7;
      v191 = (v168 + 2);
      v192 = v139;
      while (v10 < v12[2].isa)
      {
        v202 = v19;
        v9 = *(v10 + v12 + 32);
        v141 = sub_10007C29C();
        v143 = v142;
        v144 = v205;
        sub_10007B084(v9, 2, v4);
        *&v205 = v144;
        if (v144)
        {

          (*v196)(v4, 1, 1, v206);
          sub_10000EA04(v4, &unk_1008EE8E0);
          sub_1002D8190();
          swift_allocError();
          *v159 = 0;
          swift_willThrow();
          goto LABEL_87;
        }

        v145 = v4;
        v146 = v4;
        v147 = v206;
        (*v196)(v145, 0, 1, v206);
        *&v200 = v141;
        v24 = v191;
        *&v201 = v143;
        v148 = *v191;
        v149 = v170;
        (*v191)(v170, v146, v147);
        v150 = sub_10007CA9C();
        v197 = v151;
        v152 = v204;
        v153 = v169;
        v148(&v169[SHIDWORD(v204[3].isa)], v149, v147);
        *v153 = v9;
        *(v153 + 1) = 1;
        v154 = v201;
        *(v153 + 8) = v200;
        *(v153 + 16) = v154;
        v155 = (v153 + SLODWORD(v152[4].isa));
        v156 = v197;
        *v155 = v150;
        v155[1] = v156;
        v19 = v202;
        *&v278 = v202;
        v158 = *(v202 + 2);
        v157 = *(v202 + 3);
        if (v158 >= v157 >> 1)
        {
          sub_10007DD44(v157 > 1, v158 + 1, 1);
          v19 = v278;
        }

        v10 = (v10 + 1);
        *(v19 + 2) = v158 + 1;
        sub_10025D2D0(v153, &v19[((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v158]);
        v12 = v193;
        v4 = v171;
        v1 = v198;
        if (v192 == v10)
        {

          goto LABEL_92;
        }
      }

      goto LABEL_97;
    }

    v225 = _swiftEmptyArrayStorage;

    sub_10007DD44(0, v80, 0);
    v81 = v225;
    sub_100011DA0(&v291);
    if (!v12[2].isa)
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      swift_once();
LABEL_4:
      v27 = byte_1008F8688 ^ 1;
      continue;
    }

    break;
  }

  v82 = 0;
  v187 = &v240;
  v184 = v211;
  v181 = v168 + 7;
  v178 = (v168 + 2);
  v186 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsByTrendType90;
  v179 = v168 + 1;
  v183 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsByTrendType365;
  v173 = (v80 - 1);
  v174 = (v168 + 1);
  v182 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_mannKendallTestByTrendType90;
  v176 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_unitManager;
  v177 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_pregnancyStateProvider;
  v180 = *(v1 + 32);
  v175 = OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter;
  v185 = v12;
  while (1)
  {
    v195 = v81;
    v188 = v82;
    v83 = *(v82 + v12 + 32);
    v84 = sub_1002D4928();
    v197 = v85;
    v86 = *(v1 + 72);
    v192 = *(v1 + 64);
    v193 = v84;
    v191 = v86;
    v87 = *(v1 + 80);
    LODWORD(v194) = *(v1 + 40);
    v88 = *&v19[v186];
    v262 = v301;
    v263 = v302;
    v264 = v303;
    v258 = v297;
    v259 = v298;
    v260 = v299;
    v261 = v300;
    v254 = v293;
    v255 = v294;
    v256 = v295;
    v257 = v296;
    v252 = v291;
    v253 = v292;
    v89 = *(v88 + 24);
    v90 = swift_allocObject();
    *(v90 + 16) = &v252;
    *(v90 + 24) = v88;
    *&v201 = v83;
    *(v90 + 32) = v83;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_10028E444;
    *(v91 + 24) = v90;
    *&v241 = sub_1002831F4;
    *(&v241 + 1) = v91;
    *&v239 = _NSConcreteStackBlock;
    *(&v239 + 1) = 1107296256;
    *&v240 = sub_1003579C0;
    *(&v240 + 1) = &unk_100851178;
    v92 = _Block_copy(&v239);
    swift_retain_n();

    dispatch_sync(v89, v92);

    _Block_release(v92);
    LOBYTE(v88) = swift_isEscapingClosureAtFileLocation();

    if (v88)
    {
      break;
    }

    v274 = v261;
    v275 = v262;
    v276 = v263;
    v271 = v258;
    v272 = v259;
    v273 = v260;
    v267 = v254;
    v268 = v255;
    v269 = v256;
    v270 = v257;
    v265 = v252;
    v266 = v253;
    v287 = v261;
    v288 = v262;
    v289 = v263;
    v283 = v257;
    v284 = v258;
    v285 = v259;
    v286 = v260;
    v279 = v253;
    v280 = v254;
    v281 = v255;
    v282 = v256;
    v277 = v264;
    v290 = v264;
    v278 = v252;
    if (sub_100013184(&v278) == 1)
    {

      goto LABEL_41;
    }

    v93 = *&v19[v183];
    v94 = v201;
    v222 = v301;
    v223 = v302;
    v224 = v303;
    v218 = v297;
    v219 = v298;
    v220 = v299;
    v221 = v300;
    v214 = v293;
    v215 = v294;
    v216 = v295;
    v217 = v296;
    v212 = v291;
    v213 = v292;
    v95 = *(v93 + 24);
    v96 = swift_allocObject();
    *(v96 + 16) = &v212;
    *(v96 + 24) = v93;
    LODWORD(v200) = v94;
    *(v96 + 32) = v94;
    v97 = swift_allocObject();
    *(v97 + 16) = sub_10028E444;
    *(v97 + 24) = v96;
    v211[2] = sub_1002831F4;
    v211[3] = v97;
    v210[0] = _NSConcreteStackBlock;
    v210[1] = 1107296256;
    v211[0] = sub_1003579C0;
    v211[1] = &unk_1008511F0;
    v98 = _Block_copy(v210);
    swift_retain_n();

    dispatch_sync(v95, v98);

    _Block_release(v98);
    LOBYTE(v93) = swift_isEscapingClosureAtFileLocation();

    if (v93)
    {
      goto LABEL_100;
    }

    v236 = v222;
    v237 = v223;
    v232 = v218;
    v233 = v219;
    v234 = v220;
    v235 = v221;
    v228 = v214;
    v229 = v215;
    v230 = v216;
    v231 = v217;
    v226 = v212;
    v227 = v213;
    v249 = v222;
    v250 = v223;
    v245 = v218;
    v246 = v219;
    v247 = v220;
    v248 = v221;
    v241 = v214;
    v242 = v215;
    v243 = v216;
    v244 = v217;
    v238 = v224;
    v251 = v224;
    v239 = v212;
    v240 = v213;
    if (sub_100013184(&v239) == 1)
    {

      sub_10000EA04(&v265, &qword_1008E5710);
      goto LABEL_41;
    }

    v99 = v202;

    v100 = v200;
    sub_100357B7C(v200, v307);

    v101 = v197;
    if (v308)
    {

      sub_10000EA04(&v226, &qword_1008E5710);
      sub_10000EA04(&v265, &qword_1008E5710);
      goto LABEL_43;
    }

    v102 = *&v307[1];
    v103 = *&v307[4];
    sub_10000EA04(&v265, &qword_1008E5710);
    v104 = *&v278;
    v105 = sub_1003D2500(byte_1006E6B2A[v201]);
    v106 = [objc_opt_self() quantityWithUnit:v105 doubleValue:v104];

    v107 = v190;
    v108 = v100;
    v109 = v180;
    v110 = v205;
    sub_100603B5C(v106, v108, 2, v190);
    if (v110)
    {

      sub_10000EA04(&v226, &qword_1008E5710);

      (*v181)(v107, 1, 1, v206);
      sub_10000EA04(v107, &unk_1008EE8E0);
      sub_1002D8190();
      swift_allocError();
      *v137 = 0;
      goto LABEL_45;
    }

    v111 = v206;
    (*v181)(v107, 0, 1, v206);
    (*v178)(v196, v107, v111);
    v112 = [*&v99[v177] currentModel];
    if (v112)
    {
      v113 = v112;
      v114 = [v112 state];

      v115 = v114 == 1;
    }

    else
    {
      v115 = 0;
    }

    v117 = v191;
    v116 = v192;
    if (v87)
    {
      v116 = 0;
      v117 = 0;
    }

    LOBYTE(v212) = v87;
    LOBYTE(v210[0]) = v87;
    *&v322 = v193;
    *(&v322 + 1) = v101;
    v323 = v117;
    v324 = v87;
    v325 = v116;
    v326 = v87;
    v327 = v194;
    v328 = v115;
    v118 = *&v99[v176];
    v119 = v200;
    v120 = sub_1005831C0(v118, v200, v104);
    v121 = sub_1005831C0(v118, v119, *&v239) > v120;
    v122 = v240;
    v205 = v242;
    v201 = v241;
    v123 = v243;

    sub_10000EA04(&v226, &qword_1008E5710);
    if (v103 < 0.9)
    {
LABEL_62:
      v124 = 1;
      goto LABEL_67;
    }

    if (v102 <= 0.0)
    {
      if (v102 >= 0.0)
      {
        goto LABEL_62;
      }

      v124 = 2;
    }

    else
    {
      v124 = 0;
    }

LABEL_67:
    v209 = 1;
    v125 = 2 * v121;
    v208 = 1;
    v329[0] = v122;
    v329[1] = v201;
    v329[2] = v205;
    v330 = v123;
    v331 = 2 * v121;
    v332 = v124;
    v333 = v119;
    v334 = 0x3FF199999999999ALL;
    v335 = 0;
    v336 = 1;
    v337 = 0;
    v338 = 1;
    sub_1001AAC54(&v322, v329, *(v175 + v109), &v309);
    *&v205 = 0;
    *&v201 = sub_10007C29C();
    v197 = v126;
    v127 = v119;
    v24 = v204;
    v128 = v189;
    v9 = v196;
    v129 = v206;
    (*v174)(&v189[SHIDWORD(v204[3].isa)], v196, v206);
    v130 = sub_1001A0380(0, 0);
    v132 = v131;
    sub_1001AB3B0(&v309);
    (*v179)(v9, v129);
    v133 = v128;
    *v128 = v127;
    v128[1] = v125;
    v134 = v197;
    *(v128 + 1) = v201;
    *(v128 + 2) = v134;
    v135 = &v128[SLODWORD(v24[4].isa)];
    *v135 = v130;
    v135[1] = v132;
    v81 = v195;
    v225 = v195;
    v4 = v195[2];
    v136 = v195[3];
    if (v4 >= v136 >> 1)
    {
      sub_10007DD44(v136 > 1, v4 + 1, 1);
      v133 = v189;
      v81 = v225;
    }

    v81[2] = v4 + 1;
    sub_10025D2D0(v133, v81 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v4);
    v1 = v198;
    v19 = v202;
    v12 = v185;
    if (v173 == v188)
    {
      v195 = v81;

      v4 = v171;
      goto LABEL_78;
    }

    v82 = (v188 + 1);
    if ((v188 + 1) >= v185[2].isa)
    {
      goto LABEL_94;
    }
  }

  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}