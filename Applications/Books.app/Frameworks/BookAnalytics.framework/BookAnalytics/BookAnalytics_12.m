uint64_t sub_1250E4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_11FC8C(2u);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_121AB0(sub_12781C, v2);
  }

  return result;
}

uint64_t sub_125190()
{
  v0 = sub_3D68(&qword_287EC0, &qword_205170);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v25 - v2;
  v4 = sub_1E15E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1610();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = *(Strong + OBJC_IVAR___BAAnalyticsController_workQueue);
    v29 = v3;
    v16 = Strong;
    v27 = v15;

    v17 = swift_allocObject();
    v26 = v5;
    v28 = v9;
    v18 = v17;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    aBlock[4] = sub_127824;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_11AD8C;
    aBlock[3] = &unk_26E3A8;
    v20 = _Block_copy(aBlock);

    sub_1E1600();
    v30 = _swiftEmptyArrayStorage;
    sub_127AFC(&qword_287740, &type metadata accessor for DispatchWorkItemFlags);
    sub_3D68(&unk_287C10, &qword_1FC390);
    v3 = v29;
    sub_125E1C(&qword_287748, &unk_287C10, &qword_1FC390);
    sub_1E1A70();
    v21 = v27;
    sub_1E19F0();
    _Block_release(v20);

    (*(v26 + 8))(v8, v4);
    (*(v10 + 8))(v13, v28);
  }

  v22 = sub_1E1900();
  (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_170D1C(0, 0, v3, &unk_1FD158, v23);
}

void sub_1255A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_11FC8C(0);
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      [v2 analyticsControllerDidEndSession:v1];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_125664()
{
  if (qword_27D3E0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_125728;

  return sub_1110B8();
}

uint64_t sub_125728()
{
  v1 = *(*v0 + 16);
  v3 = *v0;

  return _swift_task_switch(sub_125824, 0, 0);
}

uint64_t sub_125824()
{
  if (qword_27D030 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1360();
  sub_3B2C(v1, qword_280278);
  v2 = sub_1E1340();
  v3 = sub_1E1960();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Session flushed", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

void sub_12599C()
{
  sub_11FDF0();
  sub_11FC8C(1u);
  sub_11EF60();
}

uint64_t sub_125A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_2876E8, &qword_1FC308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_125AE4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for AnalyticsController.LockProtectedData() + 40);
  v5 = *(a1 + v4);

  *(a1 + v4) = v3;
  return result;
}

unint64_t sub_125B3C()
{
  result = qword_287BF8;
  if (!qword_287BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287BF8);
  }

  return result;
}

unint64_t sub_125B90()
{
  result = qword_287C00;
  if (!qword_287C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287C00);
  }

  return result;
}

__n128 sub_125BE4(char **a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = sub_125B3C();
  v7 = sub_125B90();
  v8 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_103008(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_103008((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[64 * v10];
  *(v11 + 4) = v5;
  result = v13;
  *(v11 + 40) = v13;
  *(v11 + 7) = &type metadata for BooksTreatmentData;
  *(v11 + 8) = v6;
  *(v11 + 9) = v7;
  *(v11 + 10) = a3;
  v11[88] = 0;
  *a1 = v8;
  return result;
}

uint64_t sub_125D44()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_125D84()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_125DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_125DCC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_125DDC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_125E1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_5DE50(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_125E78()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_125EB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_125EE4()
{
  if (qword_27D3E0 != -1)
  {
    swift_once();
  }

  v0 = (qword_2876B8 + OBJC_IVAR___BAAppManager_applicationGroupIdentifier);
  swift_beginAccess();
  if (!*(&dword_8 + v0) || (v1 = *v0, v2 = objc_allocWithZone(NSUserDefaults), , v3 = sub_1E1770(), , v4 = [v2 initWithSuiteName:v3], v3, !v4))
  {
    v4 = [objc_opt_self() standardUserDefaults];
  }

  v5 = [v4 stringForKey:@"BACustomAppBuild"];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1E1780();
  }

  else
  {

    return 0;
  }

  return v7;
}

uint64_t _s13BookAnalytics0B10ControllerC32countingAssertProviderTransition6toZeroySo019BUCountingAssertionF0C_tF_0()
{
  v1 = v0;
  v2 = sub_1E15E0();
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1610();
  v21 = *(v6 - 8);
  v22 = v6;
  v7 = *(v21 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D030 != -1)
  {
    swift_once();
  }

  v10 = sub_1E1360();
  sub_3B2C(v10, qword_280278);
  v11 = sub_1E1340();
  v12 = sub_1E1960();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "Session End", v13, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong analyticsControllerWillEndSession:v1];
    swift_unknownObjectRelease();
  }

  v15 = *(v1 + OBJC_IVAR___BAAnalyticsController_workQueue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_127814;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11AD8C;
  aBlock[3] = &unk_26E380;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  sub_1E1600();
  v24 = _swiftEmptyArrayStorage;
  sub_127AFC(&qword_287740, &type metadata accessor for DispatchWorkItemFlags);
  sub_3D68(&unk_287C10, &qword_1FC390);
  sub_125E1C(&qword_287748, &unk_287C10, &qword_1FC390);
  sub_1E1A70();
  sub_1E19F0();
  _Block_release(v17);

  (*(v23 + 8))(v5, v2);
  (*(v21 + 8))(v9, v22);
}

uint64_t _s13BookAnalytics0B10ControllerC32countingAssertProviderTransition9toNonZeroySo019BUCountingAssertionF0C_tF_0()
{
  v1 = v0;
  if (qword_27D030 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1360();
  sub_3B2C(v2, qword_280278);
  v3 = sub_1E1340();
  v4 = sub_1E1960();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Session Start", v5, 2u);
  }

  v6 = *&v1[OBJC_IVAR___BAAnalyticsController_workQueue];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1273AC;
  *(v8 + 24) = v7;
  v14[4] = sub_125EB0;
  v14[5] = v8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1259CC;
  v14[3] = &unk_26E2E0;
  v9 = _Block_copy(v14);
  v10 = v6;
  v11 = v1;

  dispatch_sync(v10, v9);

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id sub_126634@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BAAnalyticsController_applicationTracker;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1266A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BAAnalyticsController_sessionManager;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_12673C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t sub_1267A0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_126D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_3D68(&qword_2876E8, &qword_1FC308);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_126EC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_3D68(&qword_287B10, &qword_1FCF80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_3D68(&qword_2876E8, &qword_1FC308);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_127004()
{
  sub_1271EC(319, &qword_287D70, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_127190();
    if (v1 <= 0x3F)
    {
      sub_1271EC(319, &qword_287D80, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        sub_19FE0(319, &qword_287D88);
        if (v3 <= 0x3F)
        {
          sub_19FE0(319, &qword_287D90);
          if (v4 <= 0x3F)
          {
            sub_19FE0(319, &qword_287D98);
            if (v5 <= 0x3F)
            {
              sub_19FE0(319, &qword_287DA0);
              if (v6 <= 0x3F)
              {
                sub_127240();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_127190()
{
  if (!qword_287D78)
  {
    v0 = sub_1E1740();
    if (!v1)
    {
      atomic_store(v0, &qword_287D78);
    }
  }
}

void sub_1271EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E1A20();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_127240()
{
  if (!qword_287DA8)
  {
    sub_5DE50(&qword_281BC0, &unk_1EDD80);
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_287DA8);
    }
  }
}

unint64_t sub_1272A8()
{
  result = qword_287DF8;
  if (!qword_287DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287DF8);
  }

  return result;
}

uint64_t sub_1272FC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_12733C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_127374()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1273C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_287B10, &qword_1FCF80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_12743C()
{
  result = qword_287E50;
  if (!qword_287E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287E50);
  }

  return result;
}

unint64_t sub_127490()
{
  result = qword_287E58;
  if (!qword_287E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287E58);
  }

  return result;
}

unint64_t sub_1274E4()
{
  result = qword_287E60;
  if (!qword_287E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287E60);
  }

  return result;
}

unint64_t sub_127538()
{
  result = qword_287E68;
  if (!qword_287E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287E68);
  }

  return result;
}

unint64_t sub_12758C()
{
  result = qword_287E70;
  if (!qword_287E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287E70);
  }

  return result;
}

unint64_t sub_1275E0()
{
  result = qword_287E78;
  if (!qword_287E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287E78);
  }

  return result;
}

unint64_t sub_1276DC()
{
  result = qword_287E88;
  if (!qword_287E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287E88);
  }

  return result;
}

unint64_t sub_127730()
{
  result = qword_287E90;
  if (!qword_287E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287E90);
  }

  return result;
}

uint64_t sub_127784(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1277CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_12782C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_127864()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_92C90;

  return sub_125648();
}

uint64_t sub_12792C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_12796C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7E674;

  return sub_1246FC(a1, v4, v5, v6);
}

unint64_t sub_127A38()
{
  result = qword_287ED0;
  if (!qword_287ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287ED0);
  }

  return result;
}

uint64_t sub_127A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_2876E8, &qword_1FC308);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_127AFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PreorderSuccessEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderSuccessEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderSuccessEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreorderSuccessEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreorderSuccessEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderSuccessEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderSuccessEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreorderSuccessEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreorderSuccessEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderSuccessEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderSuccessEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreorderSuccessEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreorderSuccessEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PreorderSuccessEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t PreorderSuccessEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderSuccessEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderSuccessEvent.Model.init(contentData:contentStoreData:sectionData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v7;
  v8 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v8;
  v9 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v9;
  v10 = *(a2 + 48);
  *(a5 + 128) = *(a2 + 32);
  *(a5 + 144) = v10;
  v11 = *(a2 + 16);
  *(a5 + 96) = *a2;
  *(a5 + 112) = v11;
  v12 = a3[3];
  *(a5 + 200) = a3[2];
  v13 = *a3;
  *(a5 + 184) = a3[1];
  *(a5 + 168) = v13;
  v14 = a3[5];
  *(a5 + 264) = a3[6];
  v15 = a3[4];
  *(a5 + 248) = v14;
  *(a5 + 232) = v15;
  *(a5 + 157) = *(a2 + 61);
  *(a5 + 216) = v12;
  v16 = *(type metadata accessor for PreorderSuccessEvent.Model(0) + 28);
  v17 = sub_1E1150();
  v18 = *(*(v17 - 8) + 32);

  return v18(a5 + v16, a4, v17);
}

uint64_t sub_1283BC(uint64_t a1)
{
  v2 = sub_1288B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1283F8(uint64_t a1)
{
  v2 = sub_1288B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PreorderSuccessEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_287F90, &qword_1FD190);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1288B4();
  sub_1E1E00();
  v10 = *(v2 + 48);
  v11 = *(v2 + 16);
  v64 = *(v2 + 32);
  v65 = v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 80);
  v66 = *(v2 + 64);
  v67 = v13;
  v14 = *(v2 + 16);
  v63[0] = *v2;
  v63[1] = v14;
  v59 = v64;
  v60 = v12;
  v15 = *(v2 + 80);
  v61 = v66;
  v62 = v15;
  v57 = v63[0];
  v58 = v11;
  v56 = 0;
  sub_13A5C(v63, &v40);
  sub_143D0();
  v16 = v68;
  sub_1E1CF0();
  if (v16)
  {
    v42 = v59;
    v43 = v60;
    v44 = v61;
    v45 = v62;
    v40 = v57;
    v41 = v58;
    sub_14424(&v40);
  }

  else
  {
    v52[2] = v59;
    v52[3] = v60;
    v52[4] = v61;
    v52[5] = v62;
    v52[0] = v57;
    v52[1] = v58;
    sub_14424(v52);
    v18 = *(v2 + 112);
    v19 = *(v2 + 144);
    v54 = *(v2 + 128);
    *v55 = v19;
    v20 = *(v2 + 112);
    v53[0] = *(v2 + 96);
    v53[1] = v20;
    v49 = v18;
    v50 = v54;
    v51[0] = *(v2 + 144);
    *&v55[13] = *(v2 + 157);
    *(v51 + 13) = *(v2 + 157);
    v48 = v53[0];
    v47 = 1;
    sub_17AA4(v53, &v40, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    sub_1E1C80();
    v38[2] = v50;
    v39[0] = v51[0];
    *(v39 + 13) = *(v51 + 13);
    v38[0] = v48;
    v38[1] = v49;
    sub_18E48(v38, &qword_27FFF0, &unk_1E9C00);
    v21 = *(v2 + 216);
    v22 = *(v2 + 248);
    v44 = *(v2 + 232);
    v45 = v22;
    v46 = *(v2 + 264);
    v23 = *(v2 + 184);
    v40 = *(v2 + 168);
    v41 = v23;
    v42 = *(v2 + 200);
    v43 = v21;
    v24 = *(v2 + 216);
    v25 = *(v2 + 248);
    v35 = *(v2 + 232);
    v36 = v25;
    v37 = *(v2 + 264);
    v26 = *(v2 + 184);
    v31 = *(v2 + 168);
    v32 = v26;
    v33 = *(v2 + 200);
    v34 = v24;
    v30 = 2;
    sub_17AA4(&v40, v29, &qword_27E490, &qword_205F90);
    sub_18544();
    sub_1E1C80();
    v29[4] = v35;
    v29[5] = v36;
    v29[6] = v37;
    v29[0] = v31;
    v29[1] = v32;
    v29[2] = v33;
    v29[3] = v34;
    sub_18E48(v29, &qword_27E490, &qword_205F90);
    v27 = *(type metadata accessor for PreorderSuccessEvent.Model(0) + 28);
    v28[15] = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1288B4()
{
  result = qword_287F98;
  if (!qword_287F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287F98);
  }

  return result;
}

uint64_t PreorderSuccessEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v32 = sub_1E1150();
  v29 = *(v32 - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin(v32);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_3D68(&qword_287FA0, &qword_1FD198);
  v31 = *(v33 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin(v33);
  v7 = type metadata accessor for PreorderSuccessEvent.Model(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v11 = a1[4];
  v56 = a1;
  sub_48B8(a1, v12);
  sub_1288B4();
  v13 = v34;
  sub_1E1DF0();
  if (v13)
  {
    return sub_4E48(v56);
  }

  v28 = v7;
  v14 = v10;
  v34 = v5;
  v15 = v31;
  v16 = v32;
  v49 = 0;
  sub_14CB8();
  sub_1E1C20();
  v17 = v53;
  v18 = v14;
  *(v14 + 2) = v52;
  *(v14 + 3) = v17;
  v19 = v55;
  *(v14 + 4) = v54;
  *(v14 + 5) = v19;
  v20 = v51;
  *v14 = v50;
  *(v14 + 1) = v20;
  v48 = 1;
  sub_4FB64();
  sub_1E1BB0();
  v21 = v45;
  v22 = v47[0];
  *(v14 + 8) = v46;
  *(v14 + 9) = v22;
  *(v14 + 157) = *(v47 + 13);
  *(v14 + 6) = v44;
  *(v14 + 7) = v21;
  v36 = 2;
  sub_18EFC();
  sub_1E1BB0();
  v23 = v39;
  *(v14 + 216) = v40;
  v24 = v42;
  *(v14 + 232) = v41;
  *(v14 + 248) = v24;
  v25 = v38;
  *(v14 + 168) = v37;
  *(v14 + 184) = v25;
  *(v14 + 200) = v23;
  *(v14 + 264) = v43;
  v35 = 3;
  sub_14E5C(&qword_27D830);
  v26 = v34;
  sub_1E1C20();
  (*(v15 + 8))(0, v33);
  (*(v29 + 32))(v18 + *(v28 + 28), v26, v16);
  sub_128DF4(v18, v30);
  sub_4E48(v56);
  return sub_128E58(v18);
}

uint64_t sub_128DF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreorderSuccessEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_128E58(uint64_t a1)
{
  v2 = type metadata accessor for PreorderSuccessEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_128F68(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
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

  v14 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_129134(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_12930C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1293CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_129484()
{
  result = qword_2880D8;
  if (!qword_2880D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2880D8);
  }

  return result;
}

unint64_t sub_1294DC()
{
  result = qword_2880E0;
  if (!qword_2880E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2880E0);
  }

  return result;
}

unint64_t sub_129534()
{
  result = qword_2880E8;
  if (!qword_2880E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2880E8);
  }

  return result;
}

unint64_t sub_1295D0()
{
  v1 = *v0;
  v2 = 0x756F72676B636162;
  v3 = 1953394534;
  v4 = 0x657A6953746E6F66;
  if (v1 != 4)
  {
    v4 = 0x656E746867697262;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1296A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_12A140(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1296C8(uint64_t a1)
{
  v2 = sub_129E8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_129704(uint64_t a1)
{
  v2 = sub_129E8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingSettingsData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_2880F0, &qword_1FD3B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v18 = v1[2];
  v19 = v10;
  v11 = *(v1 + 1);
  v17[0] = *(v1 + 2);
  v17[1] = v11;
  v13 = *(v1 + 6);
  v12 = *(v1 + 7);
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_129E8C();
  sub_1E1E00();
  v28 = v9;
  v27 = 0;
  sub_C01B0();
  sub_1E1CF0();
  if (!v2)
  {
    v15 = v18;
    v26 = v19;
    v25 = 1;
    sub_109418();
    sub_1E1CF0();
    v24 = v15;
    v23 = 2;
    sub_129EE0();
    sub_1E1CF0();
    v22 = 3;
    sub_1E1CB0();
    v21 = 4;
    sub_1E1CE0();
    v20 = 5;
    sub_1E1CE0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ReadingSettingsData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_288108, &qword_1FD3B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_129E8C();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v33 = 0;
  sub_C0204();
  sub_1E1C20();
  v11 = v34;
  v31 = 1;
  sub_1095D8();
  sub_1E1C20();
  v12 = v32;
  v29 = 2;
  sub_129F34();
  sub_1E1C20();
  v25 = v12;
  v13 = v30;
  v28 = 3;
  v14 = sub_1E1BE0();
  HIDWORD(v22) = v13;
  v23 = v14;
  v24 = v15;
  v27 = 4;
  sub_1E1C10();
  v17 = v16;
  v26 = 5;
  sub_1E1C10();
  v20 = v19;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 1) = v25;
  *(a2 + 2) = BYTE4(v22);
  v21 = v24;
  *(a2 + 8) = v23;
  *(a2 + 16) = v21;
  *(a2 + 24) = v17;
  *(a2 + 28) = v20;

  sub_4E48(a1);
}

BOOL _s13BookAnalytics19ReadingSettingsDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 2);
  v25 = *(a1 + 1);
  v7 = *(a1 + 6);
  v6 = *(a1 + 7);
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v13 = *(a2 + 24);
  v12 = *(a2 + 28);
  v14 = 0xE200000000000000;
  v15 = 28271;
  if (v2 != 1)
  {
    v15 = 6710895;
    v14 = 0xE300000000000000;
  }

  if (*a1)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  v18 = 0xE200000000000000;
  v19 = 28271;
  if (*a2 != 1)
  {
    v19 = 6710895;
    v18 = 0xE300000000000000;
  }

  if (*a2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0xE700000000000000;
  }

  if (v16 == v20 && v17 == v21)
  {
  }

  else
  {
    v22 = sub_1E1D30();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_22710(v3, v8) & 1) == 0 || (sub_22D0C(v4, v9) & 1) == 0)
  {
    return 0;
  }

  if (v25 == v10 && v5 == v11)
  {
    if (v7 != v13)
    {
      return 0;
    }

    return v6 == v12;
  }

  v24 = sub_1E1D30();
  result = 0;
  if ((v24 & 1) != 0 && v7 == v13)
  {
    return v6 == v12;
  }

  return result;
}

unint64_t sub_129E8C()
{
  result = qword_2880F8;
  if (!qword_2880F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2880F8);
  }

  return result;
}

unint64_t sub_129EE0()
{
  result = qword_288100;
  if (!qword_288100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288100);
  }

  return result;
}

unint64_t sub_129F34()
{
  result = qword_288110;
  if (!qword_288110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288110);
  }

  return result;
}

uint64_t sub_129F90(uint64_t a1, int a2)
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

uint64_t sub_129FD8(uint64_t result, int a2, int a3)
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

unint64_t sub_12A03C()
{
  result = qword_288118;
  if (!qword_288118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288118);
  }

  return result;
}

unint64_t sub_12A094()
{
  result = qword_288120;
  if (!qword_288120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288120);
  }

  return result;
}

unint64_t sub_12A0EC()
{
  result = qword_288128;
  if (!qword_288128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288128);
  }

  return result;
}

uint64_t sub_12A140(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000000002156D0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000002156F0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953394534 && a2 == 0xE400000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657A6953746E6F66 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656E746867697262 && a2 == 0xEF6C6576654C7373)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t SearchResultsReturnedEvent.searchResultsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 20);
  v4 = sub_3D68(&qword_281D68, &unk_1EE350);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultsReturnedEvent.searchResultsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 20);
  v4 = sub_3D68(&qword_281D68, &unk_1EE350);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultsReturnedEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultsReturnedEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultsReturnedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchResultsReturnedEvent(0);
  v5 = *(v4 + 20);
  v6 = enum case for EventProperty.required<A>(_:);
  v7 = sub_3D68(&qword_281D68, &unk_1EE350);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = *(v4 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v8, v6, v9);
}

uint64_t SearchResultsReturnedEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultsReturnedEvent.Model.init(searchData:searchResultsData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 32) = v6;
  v8 = *(type metadata accessor for SearchResultsReturnedEvent.Model(0) + 24);
  v9 = sub_1E1150();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

uint64_t sub_12A95C()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x746144746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6144686372616573;
  }
}

uint64_t sub_12A9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_12BA94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_12A9EC(uint64_t a1)
{
  v2 = sub_12AC8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_12AA28(uint64_t a1)
{
  v2 = sub_12AC8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchResultsReturnedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_288160, &qword_1FD5F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_12AC8C();
  sub_1E1E00();
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];
  v18 = *v3;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v17 = 0;
  sub_2EB50(v18, v11);
  sub_81E44();
  sub_1E1C80();
  sub_2F7F0(v18, v19);
  if (!v2)
  {
    v18 = v3[4];
    v17 = 1;
    sub_81EEC();

    sub_1E1CF0();

    v14 = *(type metadata accessor for SearchResultsReturnedEvent.Model(0) + 24);
    LOBYTE(v18) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_12AC8C()
{
  result = qword_288168;
  if (!qword_288168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288168);
  }

  return result;
}

uint64_t SearchResultsReturnedEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1E1150();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_288170, &qword_1FD600);
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v28 = a1;
  sub_48B8(a1, v16);
  sub_12AC8C();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v28);
  }

  v18 = v26;
  v19 = v15;
  v23 = v7;
  v31 = 0;
  sub_826DC();
  v20 = v27;
  sub_1E1BB0();
  v21 = v30;
  *v19 = v29;
  *(v19 + 16) = v21;
  v31 = 1;
  sub_82784();
  sub_1E1C20();
  *(v19 + 32) = v29;
  LOBYTE(v29) = 2;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v18 + 8))(v11, v20);
  (*(v24 + 32))(v19 + *(v12 + 24), v23, v4);
  sub_12B064(v19, v25);
  sub_4E48(v28);
  return sub_12B0C8(v19);
}

uint64_t sub_12B064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_12B0C8(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_12B1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_281D68, &unk_1EE350);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = *(a1 + 24);
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v9, v7, v10);
}

uint64_t sub_12B308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_281D58, &qword_1EE340);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_281D68, &unk_1EE350);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_12B480(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_281D58, &qword_1EE340);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_281D68, &unk_1EE350);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_12B5F0()
{
  sub_12B6FC(319, &qword_281E38, sub_826DC, sub_81E44);
  if (v0 <= 0x3F)
  {
    sub_12B6FC(319, &qword_281E48, sub_82784, sub_81EEC);
    if (v1 <= 0x3F)
    {
      sub_5684();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_12B6FC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_12B78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_12B84C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_12B8F0()
{
  sub_878A8();
  if (v0 <= 0x3F)
  {
    sub_1E1150();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_12B990()
{
  result = qword_2882A8;
  if (!qword_2882A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2882A8);
  }

  return result;
}

unint64_t sub_12B9E8()
{
  result = qword_2882B0;
  if (!qword_2882B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2882B0);
  }

  return result;
}

unint64_t sub_12BA40()
{
  result = qword_2882B8;
  if (!qword_2882B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2882B8);
  }

  return result;
}

uint64_t sub_12BA94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144686372616573 && a2 == 0xEA00000000006174;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000214680 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_12BBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000000216B40 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E1D30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_12BC78(uint64_t a1)
{
  v2 = sub_12C0CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_12BCB4(uint64_t a1)
{
  v2 = sub_12C0CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WelcomeActionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2882C0, &qword_1FD820);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_12C0CC();
  sub_1E1E00();
  v12 = v8;
  sub_12C120();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t WelcomeActionData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_2882D8, &qword_1FD828);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_12C0CC();
  sub_1E1DF0();
  if (!v2)
  {
    sub_12C174();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

uint64_t _s13BookAnalytics17WelcomeActionDataV2eeoiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1885956979;
  if (v2 != 1)
  {
    v4 = 0x65756E69746E6F63;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1885956979;
  if (*a2 != 1)
  {
    v8 = 0x65756E69746E6F63;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

unint64_t sub_12C0CC()
{
  result = qword_2882C8;
  if (!qword_2882C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2882C8);
  }

  return result;
}

unint64_t sub_12C120()
{
  result = qword_2882D0;
  if (!qword_2882D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2882D0);
  }

  return result;
}

unint64_t sub_12C174()
{
  result = qword_2882E0;
  if (!qword_2882E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2882E0);
  }

  return result;
}

unint64_t sub_12C1F4()
{
  result = qword_2882E8;
  if (!qword_2882E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2882E8);
  }

  return result;
}

unint64_t sub_12C24C()
{
  result = qword_2882F0;
  if (!qword_2882F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2882F0);
  }

  return result;
}

unint64_t sub_12C2A4()
{
  result = qword_2882F8;
  if (!qword_2882F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2882F8);
  }

  return result;
}

uint64_t UnifiedMessageActionEvent.messageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_288330, &qword_1FDA50);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UnifiedMessageActionEvent.messageData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_288330, &qword_1FDA50);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UnifiedMessageActionEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnifiedMessageActionEvent(0) + 20);
  v4 = sub_3D68(&qword_288338, &unk_1FDA58);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnifiedMessageActionEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnifiedMessageActionEvent(0) + 20);
  v4 = sub_3D68(&qword_288338, &unk_1FDA58);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnifiedMessageActionEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnifiedMessageActionEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnifiedMessageActionEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnifiedMessageActionEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnifiedMessageActionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnifiedMessageActionEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnifiedMessageActionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnifiedMessageActionEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnifiedMessageActionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_288330, &qword_1FDA50);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for UnifiedMessageActionEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_288338, &unk_1FDA58);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t UnifiedMessageExposureEvent.Model.messageData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v5;
}

uint64_t UnifiedMessageActionEvent.Model.actionData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v2;
}

uint64_t UnifiedMessageActionEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 120);
  v10 = *(v1 + 104);
  v11 = v2;
  v4 = *(v1 + 152);
  v12 = *(v1 + 136);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 88);
  v9[0] = *(v1 + 72);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_437B4(v9, &v8);
}

uint64_t UnifiedMessageActionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnifiedMessageActionEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnifiedMessageActionEvent.Model.init(messageData:actionData:contentData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 48);
  v9 = *a2;
  v10 = a2[1];
  *a5 = *a1;
  *(a5 + 8) = *(a1 + 8);
  *(a5 + 24) = v7;
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v8;
  *(a5 + 56) = v9;
  *(a5 + 64) = v10;
  v11 = a3[1];
  *(a5 + 72) = *a3;
  *(a5 + 88) = v11;
  v12 = a3[2];
  v13 = a3[3];
  v14 = a3[4];
  *(a5 + 152) = a3[5];
  *(a5 + 136) = v14;
  *(a5 + 120) = v13;
  *(a5 + 104) = v12;
  v15 = *(type metadata accessor for UnifiedMessageActionEvent.Model(0) + 28);
  v16 = sub_1E1150();
  v17 = *(*(v16 - 8) + 32);

  return v17(a5 + v15, a4, v16);
}

uint64_t sub_12CC98()
{
  v1 = 0x446567617373656DLL;
  v2 = 0x44746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (*v0)
  {
    v1 = 0x61446E6F69746361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_12CD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_12E330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_12CD48(uint64_t a1)
{
  v2 = sub_12D170();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_12CD84(uint64_t a1)
{
  v2 = sub_12D170();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UnifiedMessageActionEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_288340, &qword_1FDA68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_12D170();
  sub_1E1E00();
  v10 = *(v2 + 8);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = *(v2 + 48);
  LOBYTE(v32) = *v2;
  *(&v32 + 1) = v10;
  *&v33 = v11;
  BYTE8(v33) = v12;
  v34 = *(v2 + 32);
  *&v35 = v13;
  LOBYTE(v26) = 0;
  sub_12D1C4();

  v14 = v41;
  sub_1E1CF0();

  if (!v14)
  {
    v16 = *(v2 + 64);
    v39 = *(v2 + 56);
    v40 = v16;
    v38 = 1;
    sub_12D218();

    sub_1E1CF0();

    v17 = *(v2 + 104);
    v18 = *(v2 + 136);
    v35 = *(v2 + 120);
    v36 = v18;
    v37 = *(v2 + 152);
    v19 = *(v2 + 72);
    v33 = *(v2 + 88);
    v34 = v17;
    v20 = *(v2 + 104);
    v21 = *(v2 + 136);
    v29 = *(v2 + 120);
    v30 = v21;
    v31 = *(v2 + 152);
    v32 = v19;
    v26 = *(v2 + 72);
    v27 = *(v2 + 88);
    v28 = v20;
    v25 = 2;
    sub_437B4(&v32, v24);
    sub_143D0();
    sub_1E1C80();
    v24[2] = v28;
    v24[3] = v29;
    v24[4] = v30;
    v24[5] = v31;
    v24[0] = v26;
    v24[1] = v27;
    sub_440C0(v24);
    v22 = *(type metadata accessor for UnifiedMessageActionEvent.Model(0) + 28);
    v23[15] = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_12D170()
{
  result = qword_288348;
  if (!qword_288348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288348);
  }

  return result;
}

unint64_t sub_12D1C4()
{
  result = qword_288350;
  if (!qword_288350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288350);
  }

  return result;
}

unint64_t sub_12D218()
{
  result = qword_288358;
  if (!qword_288358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288358);
  }

  return result;
}

uint64_t UnifiedMessageActionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1E1150();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_288360, &qword_1FDA70);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for UnifiedMessageActionEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v32 = a1;
  sub_48B8(a1, v15);
  sub_12D170();
  v17 = v31;
  sub_1E1DF0();
  if (v17)
  {
    return sub_4E48(v32);
  }

  v31 = v6;
  v18 = v29;
  v39 = 0;
  sub_12D6FC();
  sub_1E1C20();
  v19 = v33[24];
  v20 = v35;
  *v14 = v33[0];
  *(v14 + 8) = *&v33[8];
  v14[24] = v19;
  *(v14 + 2) = v34;
  *(v14 + 6) = v20;
  v39 = 1;
  sub_12D750();
  sub_1E1C20();
  v21 = *&v33[8];
  *(v14 + 7) = *v33;
  *(v14 + 8) = v21;
  v39 = 2;
  sub_14CB8();
  sub_1E1BB0();
  v22 = v35;
  *(v14 + 104) = v34;
  *(v14 + 120) = v22;
  v23 = v37;
  *(v14 + 136) = v36;
  *(v14 + 152) = v23;
  v24 = *&v33[16];
  *(v14 + 72) = *v33;
  *(v14 + 88) = v24;
  v38 = 3;
  sub_14E5C(&qword_27D830);
  v25 = v31;
  sub_1E1C20();
  (*(v18 + 8))(v10, v30);
  (*(v27 + 32))(&v14[*(v11 + 28)], v25, v3);
  sub_12D7A4(v14, v28);
  sub_4E48(v32);
  return sub_12D808(v14);
}

unint64_t sub_12D6FC()
{
  result = qword_288368;
  if (!qword_288368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288368);
  }

  return result;
}

unint64_t sub_12D750()
{
  result = qword_288370;
  if (!qword_288370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288370);
  }

  return result;
}

uint64_t sub_12D7A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMessageActionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_12D808(uint64_t a1)
{
  v2 = type metadata accessor for UnifiedMessageActionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_12D904@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_288330, &qword_1FDA50);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_288338, &unk_1FDA58);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v4, v12);
}

uint64_t sub_12DA9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_288330, &qword_1FDA50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_288338, &unk_1FDA58);
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

  v14 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_12DC68(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_288330, &qword_1FDA50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_288338, &unk_1FDA58);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_12DE2C()
{
  sub_12DF88(319, &qword_2883E0, sub_12D6FC, sub_12D1C4);
  if (v0 <= 0x3F)
  {
    sub_12DF88(319, &unk_2883E8, sub_12D750, sub_12D218);
    if (v1 <= 0x3F)
    {
      sub_12DF88(319, &qword_27E2C8, sub_14CB8, sub_143D0);
      if (v2 <= 0x3F)
      {
        sub_5684();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_12DF88(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_12E018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_12E0D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_12E17C()
{
  sub_45610();
  if (v0 <= 0x3F)
  {
    sub_1E1150();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_12E22C()
{
  result = qword_2884B8;
  if (!qword_2884B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2884B8);
  }

  return result;
}

unint64_t sub_12E284()
{
  result = qword_2884C0;
  if (!qword_2884C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2884C0);
  }

  return result;
}

unint64_t sub_12E2DC()
{
  result = qword_2884C8;
  if (!qword_2884C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2884C8);
  }

  return result;
}

uint64_t sub_12E330(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x446567617373656DLL && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_12E4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000000216B60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E1D30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_12E564(uint64_t a1)
{
  v2 = sub_12E8C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_12E5A0(uint64_t a1)
{
  v2 = sub_12E8C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GiftFailData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2884D0, &qword_1FDC98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_12E8C4();
  sub_1E1E00();
  v12 = v8;
  sub_12E918();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t GiftFailData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_2884E8, &qword_1FDCA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_12E8C4();
  sub_1E1DF0();
  if (!v2)
  {
    sub_12E96C();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_12E8C4()
{
  result = qword_2884D8;
  if (!qword_2884D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2884D8);
  }

  return result;
}

unint64_t sub_12E918()
{
  result = qword_2884E0;
  if (!qword_2884E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2884E0);
  }

  return result;
}

unint64_t sub_12E96C()
{
  result = qword_2884F0;
  if (!qword_2884F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2884F0);
  }

  return result;
}

unint64_t sub_12E9EC()
{
  result = qword_2884F8;
  if (!qword_2884F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2884F8);
  }

  return result;
}

unint64_t sub_12EA44()
{
  result = qword_288500;
  if (!qword_288500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288500);
  }

  return result;
}

unint64_t sub_12EA9C()
{
  result = qword_288508;
  if (!qword_288508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288508);
  }

  return result;
}

BookAnalytics::SkipDirection_optional __swiftcall SkipDirection.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2610A0;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t SkipDirection.rawValue.getter()
{
  v1 = 0x64726177726F66;
  if (*v0 != 1)
  {
    v1 = 1801675106;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_12EBA0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64726177726F66;
  if (v2 != 1)
  {
    v5 = 1801675106;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x64726177726F66;
  if (*a2 != 1)
  {
    v8 = 1801675106;
    v3 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

unint64_t sub_12EC94()
{
  result = qword_288510;
  if (!qword_288510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288510);
  }

  return result;
}

Swift::Int sub_12ECE8()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_12ED84()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_12EE0C()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_12EEB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64726177726F66;
  if (v2 != 1)
  {
    v5 = 1801675106;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_12EFC8()
{
  result = qword_288518;
  if (!qword_288518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288518);
  }

  return result;
}

uint64_t AppSessionEndEvent.sessionReadingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_288550, &qword_1FDFD0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppSessionEndEvent.sessionReadingData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_288550, &qword_1FDFD0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionEndEvent.sessionListeningData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 20);
  v4 = sub_3D68(&qword_288558, &qword_1FDFD8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.sessionListeningData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 20);
  v4 = sub_3D68(&qword_288558, &qword_1FDFD8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.sessionEndReasonData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 24);
  v4 = sub_3D68(&qword_288560, &qword_1FDFE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.sessionEndReasonData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 24);
  v4 = sub_3D68(&qword_288560, &qword_1FDFE0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.ampTreatmentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 28);
  v4 = sub_3D68(&qword_288568, &qword_1FDFE8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.ampTreatmentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 28);
  v4 = sub_3D68(&qword_288568, &qword_1FDFE8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.booksTreatmentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 32);
  v4 = sub_3D68(&qword_288570, &unk_1FDFF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.booksTreatmentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 32);
  v4 = sub_3D68(&qword_288570, &unk_1FDFF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 36);
  v4 = sub_3D68(&qword_280D78, &unk_1ED080);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 36);
  v4 = sub_3D68(&qword_280D78, &unk_1ED080);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.userEventStorageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 40);
  v4 = sub_3D68(&qword_288578, &qword_1FE000);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.userEventStorageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 40);
  v4 = sub_3D68(&qword_288578, &qword_1FE000);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 44);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 44);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_288550, &qword_1FDFD0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AppSessionEndEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_288558, &qword_1FDFD8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_288560, &qword_1FDFE0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_288568, &qword_1FDFE8);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = sub_3D68(&qword_288570, &unk_1FDFF0);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = sub_3D68(&qword_280D78, &unk_1ED080);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  v16 = sub_3D68(&qword_288578, &qword_1FE000);
  (*(*(v16 - 8) + 104))(a1 + v15, v2, v16);
  v17 = v4[11];
  v18 = enum case for EventProperty.required<A>(_:);
  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v19 - 8) + 104))(a1 + v17, v18, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v22 = *(*(v21 - 8) + 104);

  return v22(a1 + v20, v18, v21);
}

void AppSessionEndEvent.Model.sessionReadingData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 12);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
}

void AppSessionEndEvent.Model.sessionListeningData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 28);
  v4 = *(v1 + 29);
  *a1 = *(v1 + 16);
  *(a1 + 12) = v3;
  *(a1 + 8) = v2;
  *(a1 + 13) = v4;
}

__n128 AppSessionEndEvent.Model.orientationData.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[4].n128_u32[0];
  result = v1[3];
  *a1 = result;
  a1[1].n128_u32[0] = v2;
  return result;
}

uint64_t AppSessionEndEvent.Model.userEventStorageData.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 72), 0x149uLL);
  memcpy(a1, (v1 + 72), 0x149uLL);
  return sub_130064(__dst, v4);
}

uint64_t sub_130064(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_288580, &qword_1FE008);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppSessionEndEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent.Model(0) + 44);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent.Model(0) + 48);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.Model.init(sessionReadingData:sessionListeningData:sessionEndReasonData:ampTreatmentData:booksTreatmentData:orientationData:userEventStorageData:eventData:timedData:)@<X0>(void *__src@<X6>, uint64_t *a2@<X0>, uint64_t *a3@<X1>, char *a4@<X2>, uint64_t *a5@<X3>, uint64_t *a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v12 = *a2;
  v13 = *(a2 + 2);
  v14 = *(a2 + 12);
  v15 = *a3;
  v16 = *(a3 + 2);
  v17 = *(a3 + 12);
  v18 = *(a3 + 13);
  v19 = *a4;
  v20 = *a5;
  v21 = *a6;
  v22 = *(a7 + 16);
  *a9 = v12;
  *(a9 + 8) = v13;
  *(a9 + 12) = v14;
  *(a9 + 16) = v15;
  *(a9 + 28) = v17;
  *(a9 + 24) = v16;
  *(a9 + 29) = v18;
  *(a9 + 30) = v19;
  *(a9 + 32) = v20;
  *(a9 + 40) = v21;
  *(a9 + 48) = *a7;
  *(a9 + 64) = v22;
  memcpy((a9 + 72), __src, 0x149uLL);
  v23 = type metadata accessor for AppSessionEndEvent.Model(0);
  v24 = *(v23 + 44);
  v25 = sub_1E1150();
  (*(*(v25 - 8) + 32))(a9 + v24, a8, v25);
  v26 = *(v23 + 48);
  v27 = sub_1E11A0();
  v28 = *(*(v27 - 8) + 32);

  return v28(a9 + v26, a10, v27);
}

unint64_t sub_130328(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0xD000000000000010;
    if (a1 == 2)
    {
      v4 = 0xD000000000000014;
    }

    v5 = 0xD000000000000012;
    if (a1)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x7461746E6569726FLL;
    v2 = 0x746144746E657665;
    if (a1 != 7)
    {
      v2 = 0x74614464656D6974;
    }

    if (a1 == 6)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 == 4)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_13046C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_13265C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_130494(uint64_t a1)
{
  v2 = sub_130994();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1304D0(uint64_t a1)
{
  v2 = sub_130994();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppSessionEndEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_288588, &qword_1FE010);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_130994();
  sub_1E1E00();
  v11 = *(v3 + 8);
  v12 = *(v3 + 12);
  *v25 = *v3;
  *&v25[8] = v11;
  v25[12] = v12;
  v24[0] = 0;
  sub_84590();
  sub_1E1C80();
  if (!v2)
  {
    v13 = *(v3 + 24);
    v14 = *(v3 + 28);
    v15 = *(v3 + 29);
    *v25 = *(v3 + 16);
    v25[12] = v14;
    *&v25[8] = v13;
    v25[13] = v15;
    v24[0] = 1;
    sub_B93EC();
    sub_1E1C80();
    v25[0] = *(v3 + 30);
    v24[0] = 2;
    sub_1309E8();
    sub_1E1C80();
    *v25 = *(v3 + 32);
    v24[0] = 3;
    sub_130A3C();

    sub_1E1C80();

    *v25 = *(v3 + 40);
    v24[0] = 4;
    sub_11923C();

    sub_1E1C80();

    v17 = *(v3 + 64);
    v27 = *(v3 + 48);
    v28 = v17;
    v26 = 5;
    sub_67CE4();
    sub_1E1C80();
    memcpy(v25, (v3 + 72), sizeof(v25));
    memcpy(v24, (v3 + 72), sizeof(v24));
    v23[335] = 6;
    sub_130064(v25, v23);
    sub_612A0();
    sub_1E1C80();
    memcpy(v23, v24, 0x149uLL);
    sub_130A90(v23);
    v18 = type metadata accessor for AppSessionEndEvent.Model(0);
    v19 = *(v18 + 44);
    v22 = 7;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v20 = *(v18 + 48);
    v22 = 8;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_130994()
{
  result = qword_288590;
  if (!qword_288590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288590);
  }

  return result;
}

unint64_t sub_1309E8()
{
  result = qword_288598;
  if (!qword_288598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288598);
  }

  return result;
}

unint64_t sub_130A3C()
{
  result = qword_2885A0;
  if (!qword_2885A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2885A0);
  }

  return result;
}

uint64_t sub_130A90(uint64_t a1)
{
  v2 = sub_3D68(&qword_288580, &qword_1FE008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppSessionEndEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = sub_1E11A0();
  v33 = *(v35 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v35);
  v36 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  __chkstk_darwin(v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3D68(&qword_2885A8, &qword_1FE018);
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  __chkstk_darwin(v9);
  v12 = v32 - v11;
  v13 = type metadata accessor for AppSessionEndEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v42 = a1;
  sub_48B8(a1, v18);
  sub_130994();
  v40 = v12;
  v19 = v41;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v42);
  }

  v41 = v8;
  v20 = v38;
  v45 = 0;
  sub_84538();
  sub_1E1BB0();
  v21 = DWORD2(v43[0]);
  v22 = BYTE12(v43[0]);
  *v16 = *&v43[0];
  *(v16 + 2) = v21;
  v16[12] = v22;
  v45 = 1;
  sub_B9394();
  sub_1E1BB0();
  v23 = v20;
  v24 = DWORD2(v43[0]);
  v25 = BYTE12(v43[0]);
  v26 = BYTE13(v43[0]);
  *(v16 + 2) = *&v43[0];
  v16[28] = v25;
  *(v16 + 6) = v24;
  v16[29] = v26;
  v45 = 2;
  sub_131210();
  sub_1E1BB0();
  v16[30] = v43[0];
  v45 = 3;
  sub_131264();
  sub_1E1BB0();
  *(v16 + 4) = *&v43[0];
  v45 = 4;
  sub_1191E4();
  sub_1E1BB0();
  *(v16 + 5) = *&v43[0];
  v45 = 5;
  sub_687E4();
  sub_1E1BB0();
  v27 = v43[1];
  *(v16 + 3) = v43[0];
  *(v16 + 16) = v27;
  v45 = 6;
  sub_61248();
  sub_1E1BB0();
  v32[1] = 0;
  memcpy(v16 + 72, v43, 0x149uLL);
  v44 = 7;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v28 = v41;
  sub_1E1C20();
  (*(v37 + 32))(&v16[*(v13 + 44)], v28, v5);
  v44 = 8;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v29 = v35;
  v30 = v36;
  sub_1E1C20();
  (*(v23 + 8))(v40, v39);
  (*(v33 + 32))(&v16[*(v13 + 48)], v30, v29);
  sub_1312B8(v16, v34);
  sub_4E48(v42);
  return sub_13131C(v16);
}

unint64_t sub_131210()
{
  result = qword_2885B0;
  if (!qword_2885B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2885B0);
  }

  return result;
}

unint64_t sub_131264()
{
  result = qword_2885B8;
  if (!qword_2885B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2885B8);
  }

  return result;
}

uint64_t sub_1312B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13131C(uint64_t a1)
{
  v2 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_131418@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_288550, &qword_1FDFD0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_288558, &qword_1FDFD8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_288560, &qword_1FDFE0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_288568, &qword_1FDFE8);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = sub_3D68(&qword_288570, &unk_1FDFF0);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = sub_3D68(&qword_280D78, &unk_1ED080);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  v17 = sub_3D68(&qword_288578, &qword_1FE000);
  (*(*(v17 - 8) + 104))(a2 + v16, v4, v17);
  v18 = a1[11];
  v19 = enum case for EventProperty.required<A>(_:);
  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v20 - 8) + 104))(a2 + v18, v19, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v23 = *(*(v22 - 8) + 104);

  return v23(a2 + v21, v19, v22);
}

uint64_t sub_131724(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_288550, &qword_1FDFD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_18:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_288558, &qword_1FDFD8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_17:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_18;
  }

  v14 = sub_3D68(&qword_288560, &qword_1FDFE0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_17;
  }

  v15 = sub_3D68(&qword_288568, &qword_1FDFE8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_17;
  }

  v16 = sub_3D68(&qword_288570, &unk_1FDFF0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_17;
  }

  v17 = sub_3D68(&qword_280D78, &unk_1ED080);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_17;
  }

  v18 = sub_3D68(&qword_288578, &qword_1FE000);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_17;
  }

  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_17;
  }

  v21 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v22 = *(*(v21 - 8) + 48);
  v23 = a1 + a3[12];

  return v22(v23, a2, v21);
}

uint64_t sub_131A94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_288550, &qword_1FDFD0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_18:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_288558, &qword_1FDFD8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_17:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_18;
  }

  v16 = sub_3D68(&qword_288560, &qword_1FDFE0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_17;
  }

  v17 = sub_3D68(&qword_288568, &qword_1FDFE8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_17;
  }

  v18 = sub_3D68(&qword_288570, &unk_1FDFF0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_17;
  }

  v19 = sub_3D68(&qword_280D78, &unk_1ED080);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_17;
  }

  v20 = sub_3D68(&qword_288578, &qword_1FE000);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_17;
  }

  v21 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_17;
  }

  v23 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v24 = *(*(v23 - 8) + 56);
  v25 = a1 + a4[12];

  return v24(v25, a2, a2, v23);
}

void sub_131DFC()
{
  sub_1320B0(319, &qword_288628, sub_84538, sub_84590);
  if (v0 <= 0x3F)
  {
    sub_1320B0(319, &qword_288630, sub_B9394, sub_B93EC);
    if (v1 <= 0x3F)
    {
      sub_1320B0(319, &qword_288638, sub_131210, sub_1309E8);
      if (v2 <= 0x3F)
      {
        sub_1320B0(319, &qword_288640, sub_131264, sub_130A3C);
        if (v3 <= 0x3F)
        {
          sub_1320B0(319, &qword_288648, sub_1191E4, sub_11923C);
          if (v4 <= 0x3F)
          {
            sub_1320B0(319, &qword_280E58, sub_687E4, sub_67CE4);
            if (v5 <= 0x3F)
            {
              sub_1320B0(319, &unk_288650, sub_61248, sub_612A0);
              if (v6 <= 0x3F)
              {
                sub_5684();
                if (v7 <= 0x3F)
                {
                  sub_5750();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1320B0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_132140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = sub_1E1150();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 44);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1E11A0();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_132284(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1323A8()
{
  sub_19FE0(319, &qword_288708);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_288710);
    if (v1 <= 0x3F)
    {
      sub_19FE0(319, &qword_288718);
      if (v2 <= 0x3F)
      {
        sub_19FE0(319, &qword_288720);
        if (v3 <= 0x3F)
        {
          sub_19FE0(319, &qword_287DA0);
          if (v4 <= 0x3F)
          {
            sub_19FE0(319, &qword_280F20);
            if (v5 <= 0x3F)
            {
              sub_19FE0(319, &unk_288728);
              if (v6 <= 0x3F)
              {
                sub_1E1150();
                if (v7 <= 0x3F)
                {
                  sub_1E11A0();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_132558()
{
  result = qword_288778;
  if (!qword_288778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288778);
  }

  return result;
}

unint64_t sub_1325B0()
{
  result = qword_288780;
  if (!qword_288780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288780);
  }

  return result;
}

unint64_t sub_132608()
{
  result = qword_288788;
  if (!qword_288788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288788);
  }

  return result;
}

uint64_t sub_13265C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000000216B80 == a2;
  if (v3 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000216BA0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000216BC0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000216BE0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000216910 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000216C00 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 8;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t ReadingAutoNightSettingChangeEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingAutoNightSettingChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingAutoNightSettingChangeEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingAutoNightSettingChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingAutoNightSettingChangeEvent.autoNightThemeSettingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingAutoNightSettingChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_2887C0, &unk_1FE270);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingAutoNightSettingChangeEvent.autoNightThemeSettingData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingAutoNightSettingChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_2887C0, &unk_1FE270);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingAutoNightSettingChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingAutoNightSettingChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingAutoNightSettingChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingAutoNightSettingChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingAutoNightSettingChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReadingAutoNightSettingChangeEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_2887C0, &unk_1FE270);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t ReadingAutoNightSettingChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingAutoNightSettingChangeEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingAutoNightSettingChangeEvent.Model.init(readingSessionData:contentData:autoNightThemeSettingData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 4);
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  v10 = *(a1 + 13);
  v11 = *(a1 + 14);
  v12 = *a3;
  *a5 = *a1;
  *(a5 + 4) = v7;
  *(a5 + 8) = v8;
  *(a5 + 12) = v9;
  *(a5 + 13) = v10;
  *(a5 + 14) = v11;
  v13 = a2[1];
  *(a5 + 16) = *a2;
  *(a5 + 32) = v13;
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[5];
  *(a5 + 80) = a2[4];
  *(a5 + 96) = v16;
  *(a5 + 48) = v14;
  *(a5 + 64) = v15;
  *(a5 + 112) = v12;
  v17 = *(type metadata accessor for ReadingAutoNightSettingChangeEvent.Model(0) + 28);
  v18 = sub_1E1150();
  v19 = *(*(v18 - 8) + 32);

  return v19(a5 + v17, a4, v18);
}

unint64_t sub_13312C()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1331C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_134524(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1331E8(uint64_t a1)
{
  v2 = sub_133560();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_133224(uint64_t a1)
{
  v2 = sub_133560();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingAutoNightSettingChangeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_2887C8, &qword_1FE280);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_133560();
  sub_1E1E00();
  v10 = *(v2 + 4);
  v11 = v2[2];
  v12 = *(v2 + 12);
  v13 = *(v2 + 13);
  v14 = *(v2 + 14);
  v41 = *v2;
  v42 = v10;
  v43 = v11;
  v44 = v12;
  v45 = v13;
  v46 = v14;
  v40 = 0;
  sub_67BE8();
  v15 = v47;
  sub_1E1CF0();
  if (!v15)
  {
    v16 = *(v2 + 3);
    v17 = *(v2 + 5);
    v37 = *(v2 + 4);
    v38 = v17;
    v18 = *(v2 + 5);
    v39 = *(v2 + 6);
    v19 = *(v2 + 1);
    v20 = *(v2 + 3);
    v35 = *(v2 + 2);
    v36 = v20;
    v21 = *(v2 + 1);
    v31 = v37;
    v32 = v18;
    v33 = *(v2 + 6);
    v34 = v21;
    v28 = v19;
    v29 = v35;
    v30 = v16;
    v27 = 1;
    sub_13A5C(&v34, v26);
    sub_143D0();
    sub_1E1CF0();
    v26[2] = v30;
    v26[3] = v31;
    v26[4] = v32;
    v26[5] = v33;
    v26[0] = v28;
    v26[1] = v29;
    sub_14424(v26);
    v25 = *(v2 + 112);
    v24[14] = 2;
    sub_109688();
    sub_1E1CF0();
    v22 = *(type metadata accessor for ReadingAutoNightSettingChangeEvent.Model(0) + 28);
    v25 = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_133560()
{
  result = qword_2887D0;
  if (!qword_2887D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2887D0);
  }

  return result;
}

uint64_t ReadingAutoNightSettingChangeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_1E1150();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_2887D8, &qword_1FE288);
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for ReadingAutoNightSettingChangeEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v34 = a1;
  sub_48B8(a1, v16);
  sub_133560();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v34);
  }

  v29 = v12;
  v18 = v32;
  v43 = 0;
  sub_686E8();
  sub_1E1C20();
  v19 = BYTE4(v35);
  v20 = DWORD2(v35);
  v21 = BYTE12(v35);
  v22 = BYTE13(v35);
  v23 = BYTE14(v35);
  *v15 = v35;
  v15[4] = v19;
  *(v15 + 2) = v20;
  v15[12] = v21;
  v15[13] = v22;
  v15[14] = v23;
  v43 = 1;
  sub_14CB8();
  sub_1E1C20();
  v24 = v38;
  *(v15 + 3) = v37;
  *(v15 + 4) = v24;
  v25 = v40;
  *(v15 + 5) = v39;
  *(v15 + 6) = v25;
  v26 = v36;
  *(v15 + 1) = v35;
  *(v15 + 2) = v26;
  v41 = 2;
  sub_109630();
  sub_1E1C20();
  v15[112] = v42;
  v42 = 3;
  sub_14E5C(&qword_27D830);
  v27 = v33;
  sub_1E1C20();
  (*(v18 + 8))(v11, v27);
  (*(v30 + 32))(&v15[*(v29 + 28)], v7, v4);
  sub_1339B4(v15, v31);
  sub_4E48(v34);
  return sub_133A18(v15);
}

uint64_t sub_1339B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingAutoNightSettingChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_133A18(uint64_t a1)
{
  v2 = type metadata accessor for ReadingAutoNightSettingChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_133B14@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_2887C0, &unk_1FE270);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_133C98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
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

  v14 = sub_3D68(&qword_2887C0, &unk_1FE270);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_133E64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_2887C0, &unk_1FE270);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_134028()
{
  sub_134184(319, &qword_280E40, sub_686E8, sub_67BE8);
  if (v0 <= 0x3F)
  {
    sub_134184(319, &qword_27E2C8, sub_14CB8, sub_143D0);
    if (v1 <= 0x3F)
    {
      sub_134184(319, &unk_288848, sub_109630, sub_109688);
      if (v2 <= 0x3F)
      {
        sub_5684();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_134184(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_134214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1342D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_134378()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_134420()
{
  result = qword_288918;
  if (!qword_288918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288918);
  }

  return result;
}

unint64_t sub_134478()
{
  result = qword_288920;
  if (!qword_288920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288920);
  }

  return result;
}

unint64_t sub_1344D0()
{
  result = qword_288928;
  if (!qword_288928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288928);
  }

  return result;
}

uint64_t sub_134524(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000000214400 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000000216C20 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t RemoteConfigChangeEvent.remoteConfigNamespaceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_288960, &unk_1FE4B0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoteConfigChangeEvent.remoteConfigNamespaceData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_288960, &unk_1FE4B0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RemoteConfigChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoteConfigChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteConfigChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoteConfigChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoteConfigChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_288960, &unk_1FE4B0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for RemoteConfigChangeEvent(0) + 20);
  v5 = enum case for EventProperty.required<A>(_:);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v7 = *(*(v6 - 8) + 104);

  return v7(a1 + v4, v5, v6);
}

uint64_t RemoteConfigChangeEvent.Model.remoteConfigNamespaceData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_134AEC(v7, &v6);
}

uint64_t sub_134AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_288968, &qword_1FE4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RemoteConfigChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoteConfigChangeEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoteConfigChangeEvent.Model.init(remoteConfigNamespaceData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 1) = v5;
  v6 = a1[3];
  *(a3 + 2) = a1[2];
  *(a3 + 3) = v6;
  v7 = *(type metadata accessor for RemoteConfigChangeEvent.Model(0) + 20);
  v8 = sub_1E1150();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a3[v7], a2, v8);
}

unint64_t sub_134C88()
{
  if (*v0)
  {
    result = 0x746144746E657665;
  }

  else
  {
    result = 0xD000000000000019;
  }

  *v0;
  return result;
}

uint64_t sub_134CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x8000000000214F30 == a2 || (sub_1E1D30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E1D30();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_134DBC(uint64_t a1)
{
  v2 = sub_135090();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_134DF8(uint64_t a1)
{
  v2 = sub_135090();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RemoteConfigChangeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_288970, &qword_1FE4C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_135090();
  sub_1E1E00();
  v11 = *v3;
  v12 = v3[2];
  v25 = v3[1];
  v26 = v12;
  v13 = v3[2];
  v27 = v3[3];
  v20 = v11;
  v21 = v25;
  v14 = *v3;
  v22 = v13;
  v23 = v3[3];
  v24 = v14;
  v19 = 0;
  sub_134AEC(&v24, v18);
  sub_EF154();
  sub_1E1C80();
  v18[0] = v20;
  v18[1] = v21;
  v18[2] = v22;
  v18[3] = v23;
  sub_1350E4(v18);
  if (!v2)
  {
    v15 = *(type metadata accessor for RemoteConfigChangeEvent.Model(0) + 20);
    v17[15] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_135090()
{
  result = qword_288978;
  if (!qword_288978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288978);
  }

  return result;
}

uint64_t sub_1350E4(uint64_t a1)
{
  v2 = sub_3D68(&qword_288968, &qword_1FE4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RemoteConfigChangeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1E1150();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_288980, &qword_1FE4D0);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for RemoteConfigChangeEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v27 = a1;
  sub_48B8(a1, v16);
  sub_135090();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v27);
  }

  v18 = v25;
  v33 = 0;
  sub_EF0FC();
  sub_1E1BB0();
  v19 = v29;
  *v15 = v28;
  *(v15 + 1) = v19;
  v20 = v31;
  *(v15 + 2) = v30;
  *(v15 + 3) = v20;
  v32 = 1;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v18 + 8))(v11, v26);
  (*(v23 + 32))(&v15[*(v12 + 20)], v7, v4);
  sub_135490(v15, v24);
  sub_4E48(v27);
  return sub_1354F4(v15);
}

uint64_t sub_135490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteConfigChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1354F4(uint64_t a1)
{
  v2 = type metadata accessor for RemoteConfigChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1355F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_288960, &unk_1FE4B0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a2 + v6, v7, v8);
}

uint64_t sub_1356E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_288960, &unk_1FE4B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_135804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_288960, &unk_1FE4B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_135944()
{
  if (!qword_2889F0)
  {
    sub_EF0FC();
    sub_EF154();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_2889F0);
    }
  }
}

uint64_t sub_1359C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    v6 = v5 <= 0;
    if (v5 < 0)
    {
      v5 = -1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v10 = sub_1E1150();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_135A90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 8) = (a2 + 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_135B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_135BF4()
{
  if (!qword_288A88)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_288A88);
    }
  }
}

unint64_t sub_135C58()
{
  result = qword_288AB8;
  if (!qword_288AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288AB8);
  }

  return result;
}

unint64_t sub_135CB0()
{
  result = qword_288AC0;
  if (!qword_288AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288AC0);
  }

  return result;
}

unint64_t sub_135D08()
{
  result = qword_288AC8;
  if (!qword_288AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288AC8);
  }

  return result;
}

uint64_t PurchaseFailData.errorCode.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

uint64_t LayoutOptionData.characterSpacing.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

uint64_t OnDevicePersonalizationPropertyData.lockedInCount.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

void __swiftcall LayoutOptionData.init(isCustomized:lineSpacing:characterSpacing:wordSpacing:isFullJustificationEanabled:)(BookAnalytics::LayoutOptionData *__return_ptr retstr, Swift::Bool_optional isCustomized, Swift::Float_optional *lineSpacing, Swift::Float_optional *characterSpacing, Swift::Float_optional *wordSpacing, Swift::Bool_optional isFullJustificationEanabled)
{
  retstr->isCustomized = isCustomized;
  *(&retstr->lineSpacing.value + 3) = lineSpacing;
  BYTE2(retstr->characterSpacing.value) = BYTE4(lineSpacing) & 1;
  *(&retstr->wordSpacing.value + 1) = characterSpacing;
  retstr->isFullJustificationEanabled.value = BYTE4(characterSpacing) & 1;
  *(&retstr[1].lineSpacing.value + 2) = wordSpacing;
  BYTE1(retstr[1].characterSpacing.value) = BYTE4(wordSpacing) & 1;
  BYTE2(retstr[1].characterSpacing.value) = isFullJustificationEanabled;
}

unint64_t sub_135E80()
{
  v1 = *v0;
  v2 = 0x6D6F747375437369;
  v3 = 0xD000000000000010;
  v4 = 0x6361705364726F77;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x63617053656E696CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_135F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1367DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_135F64(uint64_t a1)
{
  v2 = sub_13659C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_135FA0(uint64_t a1)
{
  v2 = sub_13659C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LayoutOptionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_288AD0, &qword_1FE6E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  v20 = *(v1 + 1);
  v19 = v1[8];
  v18 = *(v1 + 3);
  v17 = v1[16];
  v16 = *(v1 + 5);
  HIDWORD(v15) = v1[24];
  v8 = v1[25];
  v9 = a1[4];
  v10 = *v1;
  sub_48B8(a1, a1[3]);
  sub_13659C();
  sub_1E1E00();
  v29 = 0;
  v11 = v21;
  sub_1E1C60();
  if (v11)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v12 = v17;
  v13 = BYTE4(v15);
  v28 = 1;
  v26 = v19;
  sub_1E1C70();
  v27 = 2;
  v23 = v12;
  sub_1E1C70();
  v25 = 3;
  v22 = v13;
  sub_1E1C70();
  v24 = 4;
  sub_1E1C60();
  return (*(v4 + 8))(v7, v3);
}

uint64_t LayoutOptionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_288AE0, &qword_1FE6E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_13659C();
  sub_1E1DF0();
  if (!v2)
  {
    v30 = 0;
    v11 = sub_1E1B90();
    v29 = 1;
    v12 = sub_1E1BA0();
    v13 = v12;
    v27 = BYTE4(v12) & 1;
    v28 = 2;
    v22 = sub_1E1BA0();
    v24 = BYTE4(v22) & 1;
    v26 = 3;
    v21 = sub_1E1BA0();
    v23 = BYTE4(v21) & 1;
    v25 = 4;
    v15 = sub_1E1B90();
    (*(v6 + 8))(v9, v5);
    v16 = v27;
    v17 = v24;
    v18 = v23;
    *a2 = v11;
    *(a2 + 4) = v13;
    *(a2 + 8) = v16;
    v19 = v21;
    *(a2 + 12) = v22;
    *(a2 + 16) = v17;
    *(a2 + 20) = v19;
    *(a2 + 24) = v18;
    *(a2 + 25) = v15;
  }

  return sub_4E48(a1);
}

uint64_t _s13BookAnalytics16LayoutOptionDataV2eeoiySbAC_ACtFZ_0(float *a1, float *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 8);
  v5 = a1[3];
  v6 = *(a1 + 16);
  v7 = a1[5];
  v8 = *(a1 + 24);
  v9 = *(a1 + 25);
  v10 = *a2;
  v11 = *(a2 + 25);
  if (v2 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v10 == 2 || ((v10 ^ v2) & 1) != 0)
    {
      return result;
    }
  }

  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (v3 == a2[1])
    {
      v13 = *(a2 + 8);
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (v5 == a2[3])
    {
      v14 = *(a2 + 16);
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v7 == a2[5])
    {
      v15 = *(a2 + 24);
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v9 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v11 ^ v9) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_13659C()
{
  result = qword_288AD8;
  if (!qword_288AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288AD8);
  }

  return result;
}

__n128 sub_1365F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_13660C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[26])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_13666C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1366D8()
{
  result = qword_288AE8;
  if (!qword_288AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288AE8);
  }

  return result;
}

unint64_t sub_136730()
{
  result = qword_288AF0;
  if (!qword_288AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288AF0);
  }

  return result;
}

unint64_t sub_136788()
{
  result = qword_288AF8;
  if (!qword_288AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288AF8);
  }

  return result;
}

uint64_t sub_1367DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F747375437369 && a2 == 0xEC00000064657A69;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63617053656E696CLL && a2 == 0xEB00000000676E69 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000216C40 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6361705364726F77 && a2 == 0xEB00000000676E69 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000000216C60 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t static SearchSuggestionItemTypeData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a2 + 16);
  v5 = *(a2 + 20);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_1E1D30() & 1) == 0 || v2 != v4)
  {
    return 0;
  }

  return sub_21D7C(v3, v5);
}

unint64_t sub_136A60()
{
  v1 = 0x6974736567677573;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_136ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_137330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_136AF4(uint64_t a1)
{
  v2 = sub_136D68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_136B30(uint64_t a1)
{
  v2 = sub_136D68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchSuggestionItemTypeData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_288B00, &qword_1FE920);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v16 = *(v1 + 4);
  HIDWORD(v14) = *(v1 + 20);
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_136D68();
  sub_1E1E00();
  v20 = 0;
  v11 = v15;
  sub_1E1CB0();
  if (!v11)
  {
    v13 = BYTE4(v14);
    v19 = 1;
    sub_1E1D00();
    v18 = v13;
    v17 = 2;
    sub_136DBC();
    sub_1E1CF0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_136D68()
{
  result = qword_288B08;
  if (!qword_288B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288B08);
  }

  return result;
}

unint64_t sub_136DBC()
{
  result = qword_288B10;
  if (!qword_288B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288B10);
  }

  return result;
}

uint64_t SearchSuggestionItemTypeData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_288B18, &qword_1FE928);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_136D68();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v22 = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  v14 = v11;
  v21 = 1;
  v18 = sub_1E1C30();
  v19 = 2;
  sub_137034();
  sub_1E1C20();
  (*(v6 + 8))(v9, v5);
  v16 = v20;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v18;
  *(a2 + 20) = v16;

  sub_4E48(a1);
}

unint64_t sub_137034()
{
  result = qword_288B20;
  if (!qword_288B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288B20);
  }

  return result;
}

unint64_t sub_13708C()
{
  result = qword_288B28;
  if (!qword_288B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288B28);
  }

  return result;
}

unint64_t sub_1370E4()
{
  result = qword_288B30;
  if (!qword_288B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288B30);
  }

  return result;
}

__n128 sub_137168(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_13717C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_1371C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_13722C()
{
  result = qword_288B38;
  if (!qword_288B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288B38);
  }

  return result;
}

unint64_t sub_137284()
{
  result = qword_288B40;
  if (!qword_288B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288B40);
  }

  return result;
}

unint64_t sub_1372DC()
{
  result = qword_288B48;
  if (!qword_288B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288B48);
  }

  return result;
}

uint64_t sub_137330(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000000216C80 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000216CA0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEE00657079546E6FLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static MarkedData.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return 1;
    }
  }

  else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1374C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000000215380 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E1D30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_137558(uint64_t a1)
{
  v2 = sub_137708();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_137594(uint64_t a1)
{
  v2 = sub_137708();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MarkedData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_288B50, &qword_1FEB60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  sub_48B8(a1, a1[3]);
  sub_137708();
  sub_1E1E00();
  sub_1E1C60();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_137708()
{
  result = qword_288B58;
  if (!qword_288B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288B58);
  }

  return result;
}

uint64_t MarkedData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_288B60, &qword_1FEB68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_137708();
  sub_1E1DF0();
  if (!v2)
  {
    v11 = sub_1E1B90();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return sub_4E48(a1);
}

BOOL sub_1378B8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t getEnumTagSinglePayload for MarkedData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

unint64_t sub_1379DC()
{
  result = qword_288B68;
  if (!qword_288B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288B68);
  }

  return result;
}

unint64_t sub_137A34()
{
  result = qword_288B70;
  if (!qword_288B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288B70);
  }

  return result;
}

unint64_t sub_137A8C()
{
  result = qword_288B78;
  if (!qword_288B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288B78);
  }

  return result;
}

uint64_t AccountScreenViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccountScreenViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccountScreenViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccountScreenViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AccountScreenViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for AccountScreenViewEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t AccountScreenViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccountScreenViewEvent.Model(0) + 20);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccountScreenViewEvent.Model.init(eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E1150();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for AccountScreenViewEvent.Model(0) + 20);
  v8 = sub_1E11A0();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_137F50(uint64_t a1)
{
  v2 = sub_1381C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_137F8C(uint64_t a1)
{
  v2 = sub_1381C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AccountScreenViewEvent.Model.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_288BB0, &qword_1FED90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1381C8();
  sub_1E1E00();
  v11[15] = 0;
  sub_1E1150();
  sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
  sub_1E1CF0();
  if (!v1)
  {
    v9 = *(type metadata accessor for AccountScreenViewEvent.Model(0) + 20);
    v11[14] = 1;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1381C8()
{
  result = qword_288BB8;
  if (!qword_288BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288BB8);
  }

  return result;
}

uint64_t AccountScreenViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1E11A0();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v29);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E1150();
  v28 = *(v32 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v32);
  v30 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_3D68(&qword_288BC0, &qword_1FED98);
  v31 = *(v33 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v33);
  v11 = &v24 - v10;
  v12 = type metadata accessor for AccountScreenViewEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1381C8();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v25 = v12;
  v17 = v15;
  v19 = v28;
  v18 = v29;
  v35 = 0;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v20 = v30;
  sub_1E1C20();
  v21 = *(v19 + 32);
  v24 = v17;
  v21(v17, v20, v32);
  v34 = 1;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  sub_1E1C20();
  (*(v31 + 8))(v11, v33);
  v22 = v24;
  (*(v26 + 32))(v24 + *(v25 + 20), v6, v18);
  sub_13863C(v22, v27);
  sub_4E48(a1);
  return sub_1386A0(v22);
}

uint64_t sub_13863C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountScreenViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1386A0(uint64_t a1)
{
  v2 = type metadata accessor for AccountScreenViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1387B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1388CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1389F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1150();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1E11A0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_138AF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E1150();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1E11A0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

unint64_t sub_138C08()
{
  result = qword_288CE8;
  if (!qword_288CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288CE8);
  }

  return result;
}

unint64_t sub_138C60()
{
  result = qword_288CF0;
  if (!qword_288CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288CF0);
  }

  return result;
}

unint64_t sub_138CB8()
{
  result = qword_288CF8;
  if (!qword_288CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288CF8);
  }

  return result;
}

uint64_t ReadingGoalChangedEvent.readingGoalsDurationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_288D30, &qword_1FEFA0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ReadingGoalChangedEvent.readingGoalsDurationData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_288D30, &qword_1FEFA0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ReadingGoalChangedEvent.readingGoalYearlyData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingGoalChangedEvent(0) + 20);
  v4 = sub_3D68(&qword_288D38, &unk_1FEFA8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingGoalChangedEvent.readingGoalYearlyData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingGoalChangedEvent(0) + 20);
  v4 = sub_3D68(&qword_288D38, &unk_1FEFA8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingGoalChangedEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingGoalChangedEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingGoalChangedEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingGoalChangedEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingGoalChangedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_288D30, &qword_1FEFA0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReadingGoalChangedEvent(0);
  v5 = *(v4 + 20);
  v6 = enum case for EventProperty.required<A>(_:);
  v7 = sub_3D68(&qword_288D38, &unk_1FEFA8);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = *(v4 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v8, v6, v9);
}

__n128 ReadingGoalChangedEvent.Model.readingGoalsDurationData.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ReadingGoalChangedEvent.Model.readingGoalYearlyData.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t ReadingGoalChangedEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingGoalChangedEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingGoalChangedEvent.Model.init(readingGoalsDurationData:readingGoalYearlyData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 24) = *a2;
  v7 = *(type metadata accessor for ReadingGoalChangedEvent.Model(0) + 24);
  v8 = sub_1E1150();
  v9 = *(*(v8 - 8) + 32);

  return v9(a4 + v7, a3, v8);
}

unint64_t sub_139410()
{
  v1 = 0x746144746E657665;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_13947C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_13A5CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1394A4(uint64_t a1)
{
  v2 = sub_139720();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1394E0(uint64_t a1)
{
  v2 = sub_139720();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingGoalChangedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_288D40, &qword_1FEFB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_139720();
  sub_1E1E00();
  v11 = *(v3 + 16);
  v16 = *v3;
  v17 = v11;
  v15 = 0;
  sub_139774();
  sub_1E1C80();
  if (!v2)
  {
    v16 = *(v3 + 24);
    v15 = 1;
    sub_1397C8();
    sub_1E1CF0();
    v12 = *(type metadata accessor for ReadingGoalChangedEvent.Model(0) + 24);
    LOBYTE(v16) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_139720()
{
  result = qword_288D48;
  if (!qword_288D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288D48);
  }

  return result;
}

unint64_t sub_139774()
{
  result = qword_288D50;
  if (!qword_288D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288D50);
  }

  return result;
}

unint64_t sub_1397C8()
{
  result = qword_288D58;
  if (!qword_288D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288D58);
  }

  return result;
}

uint64_t ReadingGoalChangedEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_1E1150();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_288D60, &qword_1FEFC0);
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for ReadingGoalChangedEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v31 = a1;
  sub_48B8(a1, v16);
  sub_139720();
  sub_1E1DF0();
  if (!v2)
  {
    v25 = v12;
    v26 = v7;
    v18 = v29;
    v34 = 0;
    sub_139B5C();
    v19 = v30;
    sub_1E1BB0();
    v20 = v33;
    v21 = v15;
    *v15 = v32;
    v15[16] = v20;
    v34 = 1;
    sub_139BB0();
    sub_1E1C20();
    *(v15 + 24) = v32;
    LOBYTE(v32) = 2;
    sub_14E5C(&qword_27D830);
    v23 = v26;
    sub_1E1C20();
    (*(v18 + 8))(v11, v19);
    (*(v27 + 32))(v21 + *(v25 + 24), v23, v4);
    sub_139C04(v21, v28);
  }

  return sub_4E48(v31);
}

unint64_t sub_139B5C()
{
  result = qword_288D68;
  if (!qword_288D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288D68);
  }

  return result;
}

unint64_t sub_139BB0()
{
  result = qword_288D70;
  if (!qword_288D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288D70);
  }

  return result;
}

uint64_t sub_139C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingGoalChangedEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_139D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_288D30, &qword_1FEFA0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_288D38, &unk_1FEFA8);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = *(a1 + 24);
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v9, v7, v10);
}

uint64_t sub_139E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_288D30, &qword_1FEFA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_288D38, &unk_1FEFA8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_139FC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_288D30, &qword_1FEFA0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_288D38, &unk_1FEFA8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_13A134()
{
  sub_13A240(319, &qword_288DE0, sub_139B5C, sub_139774);
  if (v0 <= 0x3F)
  {
    sub_13A240(319, &unk_288DE8, sub_139BB0, sub_1397C8);
    if (v1 <= 0x3F)
    {
      sub_5684();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_13A240(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_13A2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_13A35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1E1150();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_13A3D8()
{
  sub_13A464();
  if (v0 <= 0x3F)
  {
    sub_1E1150();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_13A464()
{
  if (!qword_288E88)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_288E88);
    }
  }
}

unint64_t sub_13A4C8()
{
  result = qword_288EC0;
  if (!qword_288EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288EC0);
  }

  return result;
}

unint64_t sub_13A520()
{
  result = qword_288EC8;
  if (!qword_288EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288EC8);
  }

  return result;
}

unint64_t sub_13A578()
{
  result = qword_288ED0;
  if (!qword_288ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288ED0);
  }

  return result;
}

uint64_t sub_13A5CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000000216CC0 == a2;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000000216CE0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_13A714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000000216D00 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E1D30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_13A7A8(uint64_t a1)
{
  v2 = sub_13A95C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_13A7E4(uint64_t a1)
{
  v2 = sub_13A95C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DialogActionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_288ED8, &qword_1FF1E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_13A95C();
  sub_1E1E00();
  sub_1E1CB0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_13A95C()
{
  result = qword_288EE0;
  if (!qword_288EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288EE0);
  }

  return result;
}

uint64_t DialogActionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_288EE8, &qword_1FF1E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_13A95C();
  sub_1E1DF0();
  if (!v2)
  {
    v11 = sub_1E1BE0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_13AB68()
{
  result = qword_288EF0;
  if (!qword_288EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288EF0);
  }

  return result;
}

unint64_t sub_13ABC0()
{
  result = qword_288EF8;
  if (!qword_288EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288EF8);
  }

  return result;
}

unint64_t sub_13AC18()
{
  result = qword_288F00;
  if (!qword_288F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288F00);
  }

  return result;
}

uint64_t WriteReviewEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WriteReviewEvent(0) + 20);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WriteReviewEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WriteReviewEvent(0) + 20);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WriteReviewEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WriteReviewEvent(0) + 24);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WriteReviewEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WriteReviewEvent(0) + 24);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WriteReviewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WriteReviewEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WriteReviewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WriteReviewEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WriteReviewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WriteReviewEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t WriteReviewEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 16) = v2;
}

uint64_t WriteReviewEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[15];
  v3 = v1[16];
  v4 = v1[17];
  v5 = v1[18];
  v6 = v1[19];
  v7 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t WriteReviewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WriteReviewEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WriteReviewEvent.Model.init(contentData:upSellData:seriesData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v7;
  v8 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v8;
  v9 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v9;
  *(a5 + 96) = *a2;
  v10 = a3[1];
  *(a5 + 120) = *a3;
  *(a5 + 112) = *(a2 + 16);
  *(a5 + 136) = v10;
  *(a5 + 152) = a3[2];
  v11 = *(type metadata accessor for WriteReviewEvent.Model(0) + 28);
  v12 = sub_1E1150();
  v13 = *(*(v12 - 8) + 32);

  return v13(a5 + v11, a4, v12);
}

uint64_t sub_13B468()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x6144736569726573;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (*v0)
  {
    v1 = 0x61446C6C65537075;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_13B4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_13C980(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_13B520(uint64_t a1)
{
  v2 = sub_13B8A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_13B55C(uint64_t a1)
{
  v2 = sub_13B8A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WriteReviewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_288F38, &qword_1FF420);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_13B8A8();
  sub_1E1E00();
  v11 = *(v3 + 48);
  v12 = *(v3 + 16);
  v38 = *(v3 + 32);
  v39 = v11;
  v13 = *(v3 + 48);
  v14 = *(v3 + 80);
  v40 = *(v3 + 64);
  v41 = v14;
  v15 = *(v3 + 16);
  v37[0] = *v3;
  v37[1] = v15;
  v33 = v38;
  v34 = v13;
  v16 = *(v3 + 80);
  v35 = v40;
  v36 = v16;
  v31 = v37[0];
  v32 = v12;
  v43 = 0;
  sub_13A5C(v37, v30);
  sub_143D0();
  sub_1E1CF0();
  v30[2] = v33;
  v30[3] = v34;
  v30[4] = v35;
  v30[5] = v36;
  v30[0] = v31;
  v30[1] = v32;
  sub_14424(v30);
  if (!v2)
  {
    v17 = *(v3 + 112);
    v25 = *(v3 + 96);
    v26 = v17;
    v42 = 1;
    sub_28450();

    sub_1E1C80();

    v18 = *(v3 + 128);
    v19 = *(v3 + 136);
    v20 = *(v3 + 144);
    v21 = *(v3 + 152);
    v22 = *(v3 + 160);
    *&v25 = *(v3 + 120);
    *(&v25 + 1) = v18;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v29 = v22;
    v42 = 2;
    sub_13BDC(v25, v18, v19, v20, v21, v22);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v25, *(&v25 + 1), v26, v27, v28, v29);
    v23 = *(type metadata accessor for WriteReviewEvent.Model(0) + 28);
    LOBYTE(v25) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_13B8A8()
{
  result = qword_288F40;
  if (!qword_288F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_288F40);
  }

  return result;
}

uint64_t WriteReviewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1E1150();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_3D68(&qword_288F48, &qword_1FF428);
  v28 = *(v29 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v29);
  v8 = type metadata accessor for WriteReviewEvent.Model(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v13 = a1[4];
  v31 = a1;
  sub_48B8(a1, v12);
  sub_13B8A8();
  v14 = v30;
  sub_1E1DF0();
  if (v14)
  {
    return sub_4E48(v31);
  }

  v15 = v11;
  v30 = v6;
  v16 = v28;
  v42 = 0;
  sub_14CB8();
  v17 = v29;
  sub_1E1C20();
  v18 = v38;
  v19 = v15;
  *(v15 + 2) = v37;
  *(v15 + 3) = v18;
  v20 = v40;
  *(v15 + 4) = v39;
  *(v15 + 5) = v20;
  v21 = v36;
  *v15 = v35;
  *(v15 + 1) = v21;
  v41 = 1;
  sub_28EF4();
  sub_1E1BB0();
  v22 = v33;
  *(v15 + 6) = v32;
  *(v15 + 14) = v22;
  v41 = 2;
  sub_DAD8();
  sub_1E1BB0();
  v23 = v33;
  *(v15 + 120) = v32;
  *(v15 + 136) = v23;
  *(v15 + 152) = v34;
  LOBYTE(v32) = 3;
  sub_14E5C(&qword_27D830);
  v24 = v30;
  sub_1E1C20();
  (*(v16 + 8))(0, v17);
  (*(v26 + 32))(v19 + *(v8 + 28), v24, v3);
  sub_13BDC4(v19, v27);
  sub_4E48(v31);
  return sub_13BE28(v19);
}

uint64_t sub_13BDC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WriteReviewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13BE28(uint64_t a1)
{
  v2 = type metadata accessor for WriteReviewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_13BF24@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v4, v12);
}

uint64_t sub_13C0BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
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

  v14 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_13C288(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_13C44C()
{
  sub_13C5A8(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_13C5A8(319, &qword_27EAE8, sub_28EF4, sub_28450);
    if (v1 <= 0x3F)
    {
      sub_13C5A8(319, &qword_27DE18, sub_DAD8, sub_D57C);
      if (v2 <= 0x3F)
      {
        sub_5684();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_13C5A8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_13C638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_13C6F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_13C79C()
{
  sub_19FE0(319, &qword_27EBC8);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_27E398);
    if (v1 <= 0x3F)
    {
      sub_1E1150();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_13C87C()
{
  result = qword_289080;
  if (!qword_289080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289080);
  }

  return result;
}

unint64_t sub_13C8D4()
{
  result = qword_289088;
  if (!qword_289088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289088);
  }

  return result;
}

unint64_t sub_13C92C()
{
  result = qword_289090;
  if (!qword_289090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289090);
  }

  return result;
}

uint64_t sub_13C980(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

BookAnalytics::EndReasonType_optional __swiftcall EndReasonType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261108;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t EndReasonType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0xD000000000000027;
  if (*v0 != 2)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0)
  {
    v1 = 0x756F72676B636162;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_13CC00()
{
  result = qword_289098;
  if (!qword_289098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289098);
  }

  return result;
}

Swift::Int sub_13CC54()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_13CD30()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_13CDF8()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_13CEDC(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0x8000000000212EF0;
  v5 = 0xD000000000000027;
  if (*v1 != 2)
  {
    v5 = 0x696669746E656469;
    v4 = 0xEF74657365527265;
  }

  if (*v1)
  {
    v3 = 0x756F72676B636162;
    v2 = 0xEC0000006465646ELL;
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

unint64_t sub_13D034()
{
  result = qword_2890A0;
  if (!qword_2890A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2890A0);
  }

  return result;
}

void __swiftcall WidgetData.init(widgetFamily:displayMode:isContentExposed:isStreakExposed:)(BookAnalytics::WidgetData *__return_ptr retstr, Swift::String widgetFamily, Swift::String displayMode, Swift::Bool isContentExposed, Swift::Bool isStreakExposed)
{
  retstr->widgetFamily = widgetFamily;
  retstr->displayMode = displayMode;
  retstr->isContentExposed = isContentExposed;
  retstr->isStreakExposed = isStreakExposed;
}

unint64_t sub_13D0E0()
{
  v1 = 0x6146746567646977;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x6B61657274537369;
  }

  if (*v0)
  {
    v1 = 0x4D79616C70736964;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_13D17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_13DA8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_13D1A4(uint64_t a1)
{
  v2 = sub_13D7C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_13D1E0(uint64_t a1)
{
  v2 = sub_13D7C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WidgetData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2890A8, &qword_1FF750);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15 = v1[3];
  v16 = v10;
  v18 = *(v1 + 32);
  v14[1] = *(v1 + 33);
  v11 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_13D7C0();
  sub_1E1E00();
  v22 = 0;
  v12 = v17;
  sub_1E1CB0();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v21 = 1;
  sub_1E1CB0();
  v20 = 2;
  sub_1E1CC0();
  v19 = 3;
  sub_1E1CC0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t WidgetData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_2890B8, &qword_1FF758);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_13D7C0();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v28 = 0;
  v11 = sub_1E1BE0();
  v23 = v12;
  v27 = 1;
  v21 = sub_1E1BE0();
  v22 = v13;
  v26 = 2;
  v24 = sub_1E1BF0();
  v25 = 3;
  v15 = sub_1E1BF0();
  v16 = v24 & 1;
  (*(v6 + 8))(v9, v5);
  v17 = v15 & 1;
  v19 = v22;
  v18 = v23;
  *a2 = v11;
  *(a2 + 8) = v18;
  *(a2 + 16) = v21;
  *(a2 + 24) = v19;
  *(a2 + 32) = v16;
  *(a2 + 33) = v17;

  sub_4E48(a1);
}

uint64_t _s13BookAnalytics10WidgetDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v6 && v3 == v7)
  {
    if (v4 != v8)
    {
      return 0;
    }

    return v5 ^ v9 ^ 1u;
  }

  v11 = sub_1E1D30();
  result = 0;
  if ((v11 & 1) != 0 && ((v4 ^ v8) & 1) == 0)
  {
    return v5 ^ v9 ^ 1u;
  }

  return result;
}

unint64_t sub_13D7C0()
{
  result = qword_2890B0;
  if (!qword_2890B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2890B0);
  }

  return result;
}

unint64_t sub_13D818()
{
  result = qword_2890C0;
  if (!qword_2890C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2890C0);
  }

  return result;
}

unint64_t sub_13D870()
{
  result = qword_2890C8;
  if (!qword_2890C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2890C8);
  }

  return result;
}

__n128 sub_13D8C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_13D8D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_13D920(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_13D988()
{
  result = qword_2890D0;
  if (!qword_2890D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2890D0);
  }

  return result;
}

unint64_t sub_13D9E0()
{
  result = qword_2890D8;
  if (!qword_2890D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2890D8);
  }

  return result;
}

unint64_t sub_13DA38()
{
  result = qword_2890E0;
  if (!qword_2890E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2890E0);
  }

  return result;
}

uint64_t sub_13DA8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6146746567646977 && a2 == 0xEC000000796C696DLL;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D79616C70736964 && a2 == 0xEB0000000065646FLL || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000215960 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B61657274537369 && a2 == 0xEF6465736F707845)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_13DC08()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x7544657A6F6F6E73;
  }

  *v0;
  return result;
}

uint64_t sub_13DC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7544657A6F6F6E73 && a2 == 0xEE006E6F69746172;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000216D20 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1D30();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_13DD40(uint64_t a1)
{
  v2 = sub_13DF4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_13DD7C(uint64_t a1)
{
  v2 = sub_13DF4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AudioSnoozeData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2890E8, &qword_1FF990);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_13DF4C();
  sub_1E1E00();
  v16 = 0;
  v12 = v14[3];
  sub_1E1CB0();
  if (!v12)
  {
    v15 = 1;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_13DF4C()
{
  result = qword_2890F0;
  if (!qword_2890F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2890F0);
  }

  return result;
}

uint64_t AudioSnoozeData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_2890F8, &qword_1FF998);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_13DF4C();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v21 = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1E1BE0();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  sub_4E48(a1);
}

unint64_t sub_13E1FC()
{
  result = qword_289100;
  if (!qword_289100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289100);
  }

  return result;
}

unint64_t sub_13E254()
{
  result = qword_289108;
  if (!qword_289108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289108);
  }

  return result;
}

unint64_t sub_13E2AC()
{
  result = qword_289110;
  if (!qword_289110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289110);
  }

  return result;
}

uint64_t ReportAnIssueCompletionEvent.optionListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAnIssueCompletionEvent(0) + 20);
  v4 = sub_3D68(&qword_289148, &unk_1FFBD8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReportAnIssueCompletionEvent.optionListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportAnIssueCompletionEvent(0) + 20);
  v4 = sub_3D68(&qword_289148, &unk_1FFBD8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReportAnIssueCompletionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAnIssueCompletionEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReportAnIssueCompletionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportAnIssueCompletionEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReportAnIssueCompletionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReportAnIssueCompletionEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_289148, &unk_1FFBD8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t ReportAnIssueCompletionEvent.Model.optionListData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 16) = v2;
}

uint64_t ReportAnIssueCompletionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAnIssueCompletionEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReportAnIssueCompletionEvent.Model.init(contentData:optionListData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 16);
  v7 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v7;
  v8 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v8;
  v9 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v9;
  *(a4 + 96) = *a2;
  *(a4 + 112) = v6;
  v10 = *(type metadata accessor for ReportAnIssueCompletionEvent.Model(0) + 24);
  v11 = sub_1E1150();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t sub_13E948()
{
  v1 = 0x694C6E6F6974706FLL;
  if (*v0 != 1)
  {
    v1 = 0x746144746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44746E65746E6F63;
  }
}

uint64_t sub_13E9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_13FC64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_13E9E4(uint64_t a1)
{
  v2 = sub_13ED1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_13EA20(uint64_t a1)
{
  v2 = sub_13ED1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReportAnIssueCompletionEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_289150, &qword_1FFBE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_13ED1C();
  sub_1E1E00();
  v10 = *(v2 + 48);
  v11 = *(v2 + 16);
  v37 = *(v2 + 32);
  v38 = v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 80);
  v39 = *(v2 + 64);
  v40 = v13;
  v14 = *(v2 + 16);
  v36[0] = *v2;
  v36[1] = v14;
  v32 = v37;
  v33 = v12;
  v15 = *(v2 + 80);
  v34 = v39;
  v35 = v15;
  v30 = v36[0];
  v31 = v11;
  v29 = 0;
  sub_13A5C(v36, &v23);
  sub_143D0();
  v16 = v41;
  sub_1E1CF0();
  if (v16)
  {
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v23 = v30;
    v24 = v31;
    sub_14424(&v23);
  }

  else
  {
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v23 = v30;
    v24 = v31;
    sub_14424(&v23);
    v17 = *(v2 + 112);
    v21 = *(v2 + 96);
    v22 = v17;
    v20[15] = 1;
    sub_13ED70();

    sub_1E1CF0();

    v18 = *(type metadata accessor for ReportAnIssueCompletionEvent.Model(0) + 24);
    LOBYTE(v21) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_13ED1C()
{
  result = qword_289158;
  if (!qword_289158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289158);
  }

  return result;
}

unint64_t sub_13ED70()
{
  result = qword_289160;
  if (!qword_289160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289160);
  }

  return result;
}

uint64_t ReportAnIssueCompletionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1E1150();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_3D68(&qword_289168, &qword_1FFBF0);
  v27 = *(v28 - 8);
  v8 = *(v27 + 64);
  __chkstk_darwin(v28);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ReportAnIssueCompletionEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v29 = a1;
  sub_48B8(a1, v15);
  sub_13ED1C();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v29);
  }

  v17 = v27;
  v24 = v7;
  v39 = 0;
  sub_14CB8();
  v18 = v28;
  sub_1E1C20();
  v19 = v35;
  *(v14 + 2) = v34;
  *(v14 + 3) = v19;
  v20 = v37;
  *(v14 + 4) = v36;
  *(v14 + 5) = v20;
  v21 = v33;
  *v14 = v32;
  *(v14 + 1) = v21;
  v38 = 1;
  sub_13F1F4();
  sub_1E1C20();
  v22 = v31;
  *(v14 + 6) = v30;
  *(v14 + 14) = v22;
  LOBYTE(v30) = 2;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v10, v18);
  (*(v25 + 32))(&v14[*(v11 + 24)], v24, v4);
  sub_13F248(v14, v26);
  sub_4E48(v29);
  return sub_13F2AC(v14);
}

unint64_t sub_13F1F4()
{
  result = qword_289170;
  if (!qword_289170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_289170);
  }

  return result;
}

uint64_t sub_13F248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportAnIssueCompletionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13F2AC(uint64_t a1)
{
  v2 = type metadata accessor for ReportAnIssueCompletionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_13F3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_289148, &unk_1FFBD8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_13F4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_289148, &unk_1FFBD8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_13F658(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_289148, &unk_1FFBD8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_13F7C8()
{
  sub_13F8D4(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_13F8D4(319, &unk_2891E0, sub_13F1F4, sub_13ED70);
    if (v1 <= 0x3F)
    {
      sub_5684();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_13F8D4(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_13F964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_13FA24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_13FAC8()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_13FB60()
{
  result = qword_2892B0;
  if (!qword_2892B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2892B0);
  }

  return result;
}

unint64_t sub_13FBB8()
{
  result = qword_2892B8;
  if (!qword_2892B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2892B8);
  }

  return result;
}

unint64_t sub_13FC10()
{
  result = qword_2892C0;
  if (!qword_2892C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2892C0);
  }

  return result;
}

uint64_t sub_13FC64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x694C6E6F6974706FLL && a2 == 0xEE00617461447473 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t ListeningSessionData.remainingBufferTime.setter(uint64_t result)
{
  *(v1 + 44) = result;
  *(v1 + 48) = BYTE4(result) & 1;
  return result;
}

uint64_t ListeningSessionData.percentCompletionEnd.setter(uint64_t result)
{
  *(v1 + 52) = result;
  *(v1 + 56) = BYTE4(result) & 1;
  return result;
}

void __swiftcall ListeningSessionData.init(startTime:endTime:playbackSpeed:listeningID:isPreview:isStreaming:remainingBufferTime:isBackgrounded:percentCompletionEnd:isSnoozeTimeReached:)(BookAnalytics::ListeningSessionData *__return_ptr retstr, Swift::Float_optional *startTime, Swift::Float_optional *endTime, Swift::Float playbackSpeed, Swift::String_optional listeningID, Swift::Bool isPreview, Swift::Bool isStreaming, Swift::Int32_optional remainingBufferTime, Swift::Bool isBackgrounded, Swift::Float_optional *percentCompletionEnd, Swift::Bool_optional isSnoozeTimeReached)
{
  LODWORD(retstr->startTime.value) = startTime;
  retstr->startTime.is_nil = BYTE4(startTime) & 1;
  *(&retstr->endTime.value + 3) = endTime;
  LOBYTE(retstr->playbackSpeed) = BYTE4(endTime) & 1;
  *&retstr->listeningID.value._countAndFlagsBits = playbackSpeed;
  *&retstr->listeningID.value._object = listeningID;
  LOBYTE(retstr->percentCompletionEnd.value) = isPreview;
  BYTE1(retstr->percentCompletionEnd.value) = isStreaming;
  *&retstr->percentCompletionEnd.is_nil = remainingBufferTime.value;
  LOBYTE(retstr[1].startTime.value) = remainingBufferTime.is_nil;
  BYTE1(retstr[1].startTime.value) = isBackgrounded;
  *&retstr[1].startTime.is_nil = percentCompletionEnd;
  HIBYTE(retstr[1].endTime.value) = BYTE4(percentCompletionEnd) & 1;
  retstr[1].endTime.is_nil = isSnoozeTimeReached.value;
}

unint64_t sub_13FF18(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x72676B6361427369;
    if (a1 == 8)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6D61657274537369;
    if (a1 != 5)
    {
      v7 = 0xD000000000000013;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6D69547472617473;
    v2 = 0x6B63616279616C70;
    v3 = 0x6E696E657473696CLL;
    if (a1 != 3)
    {
      v3 = 0x6569766572507369;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656D6954646E65;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_14008C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_140D3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1400B4(uint64_t a1)
{
  v2 = sub_140ADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1400F0(uint64_t a1)
{
  v2 = sub_140ADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ListeningSessionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2892C8, &qword_1FFE10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 4);
  v27 = v1[2];
  v26 = *(v1 + 12);
  v10 = v1[4];
  v11 = *(v1 + 3);
  v24 = *(v1 + 4);
  v25 = v11;
  LODWORD(v11) = *(v1 + 40);
  v22 = *(v1 + 41);
  v23 = v11;
  v21 = v1[11];
  LODWORD(v11) = *(v1 + 48);
  v19 = *(v1 + 49);
  v20 = v11;
  v18 = v1[13];
  LODWORD(v11) = *(v1 + 56);
  v16[2] = *(v1 + 57);
  v17 = v11;
  v12 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_140ADC();
  sub_1E1E00();
  v42 = 0;
  v41 = v9;
  v13 = v28;
  sub_1E1C70();
  if (!v13)
  {
    v14 = v20;
    v40 = 1;
    v39 = v26;
    sub_1E1C70();
    v38 = 2;
    sub_1E1CE0();
    v37 = 3;
    sub_1E1C50();
    v36 = 4;
    sub_1E1CC0();
    v35 = 5;
    sub_1E1CC0();
    v34 = 6;
    v33 = v14;
    sub_1E1C90();
    v32 = 7;
    sub_1E1CC0();
    v31 = 8;
    v30 = v17;
    sub_1E1C70();
    v29 = 9;
    sub_1E1C60();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ListeningSessionData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_2892D8, &qword_1FFE18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_140ADC();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1);
  }

  else
  {
    LOBYTE(v41) = 0;
    v11 = sub_1E1BA0();
    v60 = BYTE4(v11) & 1;
    LOBYTE(v41) = 1;
    v37 = sub_1E1BA0();
    v59 = BYTE4(v37) & 1;
    LOBYTE(v41) = 2;
    sub_1E1C10();
    v13 = v12;
    LOBYTE(v41) = 3;
    v14 = sub_1E1B80();
    v16 = v15;
    v36 = v14;
    LOBYTE(v41) = 4;
    v35 = sub_1E1BF0();
    LOBYTE(v41) = 5;
    v34 = sub_1E1BF0();
    LOBYTE(v41) = 6;
    v33 = sub_1E1BC0();
    v58 = BYTE4(v33) & 1;
    LOBYTE(v41) = 7;
    v32 = sub_1E1BF0();
    LOBYTE(v41) = 8;
    v31 = sub_1E1BA0();
    v57 = BYTE4(v31) & 1;
    v56 = 9;
    v30 = sub_1E1B90();
    v17 = v35 & 1;
    v27 = v35 & 1;
    v35 = v34 & 1;
    v34 = v32 & 1;
    (*(v6 + 8))(v9, v5);
    v29 = v11;
    LODWORD(v38) = v11;
    v32 = v60;
    BYTE4(v38) = v60;
    DWORD2(v38) = v37;
    v28 = v59;
    BYTE12(v38) = v59;
    LODWORD(v39) = v13;
    v18 = v36;
    *(&v39 + 1) = v36;
    *v40 = v16;
    v40[8] = v17;
    v40[9] = v35;
    v19 = v33;
    *&v40[12] = v33;
    HIDWORD(v26) = v58;
    v40[16] = v58;
    v40[17] = v34;
    LODWORD(v11) = v31;
    *&v40[20] = v31;
    v20 = v57;
    v40[24] = v57;
    v21 = v30;
    v40[25] = v30;
    v22 = v38;
    v23 = v39;
    v24 = *v40;
    *(a2 + 42) = *&v40[10];
    a2[1] = v23;
    a2[2] = v24;
    *a2 = v22;
    sub_3D9DC(&v38, &v41);
    sub_4E48(a1);
    v41 = v29;
    v42 = v32;
    v43 = v37;
    v44 = v28;
    v45 = v13;
    v46 = v18;
    v47 = v16;
    v48 = v27;
    v49 = v35;
    v50 = v19;
    v51 = BYTE4(v26);
    v52 = v34;
    v53 = v11;
    v54 = v20;
    v55 = v21;
    return sub_3E68C(&v41);
  }
}