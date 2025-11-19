uint64_t sub_1968()
{
  sub_4FD8(0, &qword_105F0, &type metadata accessor for OS_dispatch_queue.SchedulerOptions, &type metadata accessor for Optional);
  v2 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v41 - v3;
  sub_45B0();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  __chkstk_darwin();
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_46B0();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = *(v44 + 64);
  __chkstk_darwin();
  v43 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[2] = [objc_allocWithZone(HKHealthStore) init];
  if (&_swiftEmptyArrayStorage >> 62 && sub_8C3C())
  {
    v12 = sub_749C(&_swiftEmptyArrayStorage);
  }

  else
  {
    v12 = &_swiftEmptySetSingleton;
  }

  v46 = v0;
  v0[8] = v12;
  v13 = v0 + 8;
  v0[3] = [objc_allocWithZone(HKFeatureStatusManager) initWithFeatureIdentifier:HKFeatureIdentifierMenstrualCycles healthStore:v0[2]];
  v14 = [objc_allocWithZone(HKFeatureAvailabilityStore) initWithFeatureIdentifier:HKFeatureIdentifierMenstrualCyclesHeartRateInput healthStore:v0[2]];
  *(v13 - 4) = v14;
  *(v13 - 3) = [objc_allocWithZone(HKFeatureStatusManager) initWithFeatureAvailabilityProviding:v14 healthDataSource:*(v13 - 6) currentCountryCode:0];
  v15 = [objc_allocWithZone(HKFeatureAvailabilityStore) initWithFeatureIdentifier:HKFeatureIdentifierMenstrualCyclesWristTemperatureInput healthStore:*(v13 - 6)];
  *(v13 - 2) = v15;
  v16 = [objc_allocWithZone(HKFeatureStatusManager) initWithFeatureAvailabilityProviding:v15 healthDataSource:*(v13 - 6) currentCountryCode:0];
  *(v13 - 1) = v16;
  sub_5064(0, &qword_10630, &type metadata for Swift.AnyObject + 8, &type metadata accessor for _ContiguousArrayStorage);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_9230;
  v18 = *(v13 - 5);
  *(inited + 32) = v18;
  v19 = *(v13 - 3);
  *(inited + 40) = v19;
  *(inited + 48) = v16;
  swift_getKeyPath();
  v47 = &_swiftEmptyArrayStorage;
  v20 = v18;
  v21 = v19;
  v22 = v16;
  result = sub_8BFC();
  v24 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v25 = sub_8BBC();
  }

  else
  {
    if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_19;
    }

    v25 = *(inited + 32);
  }

  v48 = v25;
  v26 = v25;
  swift_getAtKeyPath();

  sub_8BDC();
  v27 = v47[2];
  sub_8C0C();
  sub_8C1C();
  result = sub_8BEC();
  if (!v24)
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 2uLL)
    {
      v28 = *(inited + 40);
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = sub_8BBC();
LABEL_10:
  v48 = v28;
  v29 = v28;
  swift_getAtKeyPath();

  sub_8BDC();
  v30 = v47[2];
  sub_8C0C();
  sub_8C1C();
  result = sub_8BEC();
  if (v24)
  {
    v31 = sub_8BBC();
LABEL_14:
    v32 = v31;

    v48 = v32;
    v33 = v32;
    swift_getAtKeyPath();

    sub_8BDC();
    v34 = v47[2];
    sub_8C0C();
    sub_8C1C();
    sub_8BEC();

    sub_4648();
    sub_4FD8(0, &qword_10638, sub_4648, &type metadata accessor for Array);
    sub_4780(&qword_10608, 255, sub_4648);
    sub_483C();
    sub_88FC();
    sub_4D70(0, &qword_10618, OS_dispatch_queue_ptr);
    v35 = sub_8B6C();
    v47 = v35;
    v36 = sub_8B5C();
    (*(*(v36 - 8) + 56))(v4, 1, 1, v36);
    sub_4780(&qword_10620, 255, sub_45B0);
    sub_47C8();
    v37 = v42;
    v38 = v43;
    sub_897C();
    sub_4A64(v4, &qword_105F0, &type metadata accessor for OS_dispatch_queue.SchedulerOptions);

    (*(v41 + 8))(v8, v37);
    swift_allocObject();
    v39 = v46;
    swift_weakInit();
    sub_4780(&qword_10648, 255, sub_46B0);
    v40 = v45;
    sub_898C();

    (*(v44 + 8))(v38, v40);
    swift_beginAccess();
    sub_892C();
    swift_endAccess();

    return v39;
  }

  if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 3uLL)
  {
    v31 = *(inited + 48);
    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_210C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_4D70(0, &qword_10658, HKFeatureStatusManager_ptr);
  result = sub_88AC();
  *a2 = result;
  return result;
}

uint64_t sub_2158()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for SettingsModel();
    sub_4780(&qword_10650, v1, type metadata accessor for SettingsModel);
    sub_894C();

    sub_895C();
  }

  return result;
}

id sub_2208()
{
  v1 = [*(v0 + 24) featureAvailabilityProviding];
  v7 = 0;
  v2 = [v1 isCurrentOnboardingVersionCompletedWithError:&v7];
  swift_unknownObjectRelease();
  if (v2)
  {
    v3 = v7;
    v4 = [v2 BOOLValue];
  }

  else
  {
    v5 = v7;
    sub_87BC();

    swift_willThrow();

    return 0;
  }

  return v4;
}

uint64_t sub_22FC()
{
  sub_4FD8(0, &qword_10688, &type metadata accessor for FeatureStatus, &type metadata accessor for Optional);
  v2 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v20[-v3];
  v5 = sub_887C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 40);
  sub_4D70(0, &qword_10658, HKFeatureStatusManager_ptr);
  sub_889C();
  (*(v6 + 56))(v4, 0, 1, v5);
  (*(v6 + 32))(v9, v4, v5);
  v11 = sub_888C();
  v12 = [v11 areAllRequirementsSatisfied];

  v13 = sub_888C();
  v14 = [v13 areAllRequirementsSatisfied];

  v15 = sub_888C();
  v16 = [v15 areAllRequirementsSatisfied];

  (*(v6 + 8))(v9, v5);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0x10000;
  }

  if (v14)
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  return v18 | v12 | v17;
}

uint64_t sub_25A0()
{
  sub_4FD8(0, &qword_10688, &type metadata accessor for FeatureStatus, &type metadata accessor for Optional);
  v2 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v20[-v3];
  v5 = sub_887C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 56);
  sub_4D70(0, &qword_10658, HKFeatureStatusManager_ptr);
  sub_889C();
  (*(v6 + 56))(v4, 0, 1, v5);
  (*(v6 + 32))(v9, v4, v5);
  v11 = sub_888C();
  v12 = [v11 areAllRequirementsSatisfied];

  v13 = sub_888C();
  v14 = [v13 areAllRequirementsSatisfied];

  v15 = sub_888C();
  v16 = [v15 areAllRequirementsSatisfied];

  (*(v6 + 8))(v9, v5);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0x10000;
  }

  if (v14)
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  return v18 | v12 | v17;
}

uint64_t sub_2864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 104) = a5;
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  v7 = sub_88DC();
  *(v6 + 40) = v7;
  v8 = *(v7 - 8);
  *(v6 + 48) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  sub_5064(0, &qword_10668, &type metadata for Bool, &type metadata accessor for HKFeatureSettings.Key);
  *(v6 + 64) = v10;
  v11 = *(v10 - 8);
  *(v6 + 72) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_29A8, 0, 0);
}

uint64_t sub_29A8()
{
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 24) + 32);
  sub_8B4C();
  v3 = async function pointer to HKFeatureAvailabilityProviding.setFeatureSetting(_:forKey:)[1];
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  v5 = sub_4D70(0, &qword_10670, HKFeatureAvailabilityStore_ptr);
  *v4 = v0;
  v4[1] = sub_2A70;
  v6 = *(v0 + 80);
  v7 = *(v0 + 104);

  return HKFeatureAvailabilityProviding.setFeatureSetting(_:forKey:)(v7, v6, v5);
}

uint64_t sub_2A70()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *v1;
  v6[12] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_2C24, 0, 0);
  }

  else
  {
    v7 = v6[10];
    v8 = v6[7];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_2C24()
{
  v26 = v0;
  v1 = v0[12];
  v2 = v0[7];
  sub_88BC();
  swift_errorRetain();
  v3 = sub_88CC();
  v4 = sub_8B3C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = v0[6];
    v24 = v0[7];
    v8 = v0[4];
    v7 = v0[5];
    v9 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v9 = 136446466;
    v10 = sub_8CCC();
    v12 = sub_3FD8(v10, v11, &v25);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    v0[2] = v5;
    swift_errorRetain();
    sub_4DB8();
    v13 = sub_8A5C();
    v15 = sub_3FD8(v13, v14, &v25);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_0, v3, v4, "[%{public}s] Error updating HR feature setting: %{public}s", v9, 0x16u);
    swift_arrayDestroy();

    (*(v6 + 8))(v24, v7);
  }

  else
  {
    v16 = v0[12];
    v18 = v0[6];
    v17 = v0[7];
    v19 = v0[5];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[10];
  v21 = v0[7];

  v22 = v0[1];

  return v22();
}

uint64_t sub_2E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_4FD8(0, &qword_10660, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v27 - v11;
  sub_49D0(a3, v27 - v11);
  v13 = sub_8B2C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_4A64(v12, &qword_10660, &type metadata accessor for TaskPriority);
  }

  else
  {
    sub_8B1C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_8B0C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_8A6C() + 32;
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

      sub_4A64(a3, &qword_10660, &type metadata accessor for TaskPriority);

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

  sub_4A64(a3, &qword_10660, &type metadata accessor for TaskPriority);
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

uint64_t sub_31A8(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_4FD8(0, &qword_10660, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v14 - v9;
  v11 = sub_8B2C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v3;
  *(v12 + 40) = a1;
  *(v12 + 48) = v6;

  sub_2E50(0, 0, v10, a3, v12);
}

uint64_t sub_3304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 104) = a5;
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  v7 = sub_88DC();
  *(v6 + 40) = v7;
  v8 = *(v7 - 8);
  *(v6 + 48) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  sub_5064(0, &qword_10668, &type metadata for Bool, &type metadata accessor for HKFeatureSettings.Key);
  *(v6 + 64) = v10;
  v11 = *(v10 - 8);
  *(v6 + 72) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_3448, 0, 0);
}

uint64_t sub_3448()
{
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 24) + 48);
  sub_8B4C();
  v3 = async function pointer to HKFeatureAvailabilityProviding.setFeatureSetting(_:forKey:)[1];
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  v5 = sub_4D70(0, &qword_10670, HKFeatureAvailabilityStore_ptr);
  *v4 = v0;
  v4[1] = sub_3510;
  v6 = *(v0 + 80);
  v7 = *(v0 + 104);

  return HKFeatureAvailabilityProviding.setFeatureSetting(_:forKey:)(v7, v6, v5);
}

uint64_t sub_3510()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *v1;
  v6[12] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_36C4, 0, 0);
  }

  else
  {
    v7 = v6[10];
    v8 = v6[7];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_36C4()
{
  v26 = v0;
  v1 = v0[12];
  v2 = v0[7];
  sub_88BC();
  swift_errorRetain();
  v3 = sub_88CC();
  v4 = sub_8B3C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = v0[6];
    v24 = v0[7];
    v8 = v0[4];
    v7 = v0[5];
    v9 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v9 = 136446466;
    v10 = sub_8CCC();
    v12 = sub_3FD8(v10, v11, &v25);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    v0[2] = v5;
    swift_errorRetain();
    sub_4DB8();
    v13 = sub_8A5C();
    v15 = sub_3FD8(v13, v14, &v25);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_0, v3, v4, "[%{public}s] Error updating wrist temperature feature setting: %{public}s", v9, 0x16u);
    swift_arrayDestroy();

    (*(v6 + 8))(v24, v7);
  }

  else
  {
    v16 = v0[12];
    v18 = v0[6];
    v17 = v0[7];
    v19 = v0[5];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[10];
  v21 = v0[7];

  v22 = v0[1];

  return v22();
}

uint64_t sub_38F0()
{
  v1 = *(v0 + 64);

  return v0;
}

uint64_t sub_3940()
{
  sub_38F0();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_39A4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SettingsModel();
  result = sub_894C();
  *a1 = result;
  return result;
}

uint64_t sub_39E8(uint64_t a1, id *a2)
{
  result = sub_8A1C();
  *a2 = 0;
  return result;
}

uint64_t sub_3A60(uint64_t a1, id *a2)
{
  v3 = sub_8A2C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_3AE0@<X0>(void *a1@<X8>)
{
  sub_8A3C();
  v2 = sub_89FC();

  *a1 = v2;
  return result;
}

uint64_t sub_3B24()
{
  v1 = *v0;
  sub_8A3C();
  v2 = sub_8AAC();

  return v2;
}

uint64_t sub_3B60()
{
  v1 = *v0;
  sub_8A3C();
  sub_8A7C();
}

Swift::Int sub_3BB4()
{
  v1 = *v0;
  sub_8A3C();
  sub_8CAC();
  sub_8A7C();
  v2 = sub_8CBC();

  return v2;
}

uint64_t sub_3C28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_8A3C();
  v6 = v5;
  if (v4 == sub_8A3C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_8C9C();
  }

  return v9 & 1;
}

uint64_t sub_3CB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_89FC();

  *a2 = v5;
  return result;
}

uint64_t sub_3CF8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_8A3C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_3D24(uint64_t a1)
{
  v2 = sub_4780(&qword_106B0, 255, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_4780(&qword_106B8, 255, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_3DE8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3EE0;

  return v7(a1);
}

uint64_t sub_3EE0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_3FD8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_40A4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_4E68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_4E1C(v11);
  return v7;
}

unint64_t sub_40A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_41B0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_8BCC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_41B0(uint64_t a1, unint64_t a2)
{
  v4 = sub_41FC(a1, a2);
  sub_432C(&off_C8E0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_41FC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_4418(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_8BCC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_8A9C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_4418(v10, 0);
        result = sub_8BAC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_432C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_44A4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_4418(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_5064(0, &qword_10680, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_44A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_5064(0, &qword_10680, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_45B0()
{
  if (!qword_105F8)
  {
    sub_4648();
    sub_4780(&qword_10608, 255, sub_4648);
    v0 = sub_88EC();
    if (!v1)
    {
      atomic_store(v0, &qword_105F8);
    }
  }
}

void sub_4648()
{
  if (!qword_10600)
  {
    sub_887C();
    v0 = sub_891C();
    if (!v1)
    {
      atomic_store(v0, &qword_10600);
    }
  }
}

void sub_46B0()
{
  if (!qword_10610)
  {
    sub_45B0();
    sub_4D70(255, &qword_10618, OS_dispatch_queue_ptr);
    sub_4780(&qword_10620, 255, sub_45B0);
    sub_47C8();
    v0 = sub_890C();
    if (!v1)
    {
      atomic_store(v0, &qword_10610);
    }
  }
}

uint64_t sub_4780(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_47C8()
{
  result = qword_10628;
  if (!qword_10628)
  {
    sub_4D70(255, &qword_10618, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10628);
  }

  return result;
}

unint64_t sub_483C()
{
  result = qword_10640;
  if (!qword_10640)
  {
    sub_4FD8(255, &qword_10638, sub_4648, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10640);
  }

  return result;
}

uint64_t sub_48C4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4904(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_51A0;

  return sub_3304(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_49D0(uint64_t a1, uint64_t a2)
{
  sub_4FD8(0, &qword_10660, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4A64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_4FD8(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_4AD4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4B0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_51A0;

  return sub_3DE8(a1, v5);
}

uint64_t sub_4BC4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_4C7C;

  return sub_3DE8(a1, v5);
}

uint64_t sub_4C7C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_4D70(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_4DB8()
{
  result = qword_10678;
  if (!qword_10678)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10678);
  }

  return result;
}

uint64_t sub_4E1C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_4E68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_4ECC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_4F0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_4C7C;

  return sub_2864(a1, v4, v5, v6, v7, v8);
}

void sub_4FD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_5064(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

char *sub_51A4(uint64_t a1, uint64_t a2, void *a3)
{

  v5 = OBJC_IVAR____TtC36NanoMenstrualCyclesCompanionSettings22SettingsViewController_model;
  type metadata accessor for SettingsModel();
  swift_allocObject();
  *&v3[v5] = sub_1968();
  if (&_swiftEmptyArrayStorage >> 62 && sub_8C3C())
  {
    v6 = sub_749C(&_swiftEmptyArrayStorage);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC36NanoMenstrualCyclesCompanionSettings22SettingsViewController_subscriptions] = v6;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for SettingsViewController();
  v7 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", 0, 0);
  v8 = *&v7[OBJC_IVAR____TtC36NanoMenstrualCyclesCompanionSettings22SettingsViewController_model];
  sub_8700(&qword_10650, type metadata accessor for SettingsModel);
  v9 = v7;

  sub_894C();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_896C();
  sub_898C();

  swift_beginAccess();
  sub_892C();
  swift_endAccess();

  return v9;
}

void sub_539C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong reloadSpecifiers];
  }
}

void sub_5474(char a1)
{
  sub_84B8(0, &qword_106F8, &type metadata accessor for URL, &type metadata accessor for Optional);
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v33 = v29 - v5;
  v6 = *(*(sub_883C() - 8) + 64);
  __chkstk_darwin();
  v34 = sub_87CC();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = (v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(*(sub_89DC() - 8) + 64);
  __chkstk_darwin();
  v12 = sub_87DC();
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = *(v30 + 64);
  __chkstk_darwin();
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SettingsViewController();
  v32 = v1;
  v36.receiver = v1;
  v36.super_class = v16;
  objc_msgSendSuper2(&v36, "viewWillAppear:", a1 & 1);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v19 = [v18 bundleIdentifier];
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  v20 = v19;
  v29[1] = sub_8A3C();

  sub_89CC();
  *v10 = v16;
  (*(v7 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v34);
  sub_882C();
  sub_87EC();
  strcpy(v35, "bridge:root=");
  HIBYTE(v35[6]) = 0;
  v35[7] = -5120;
  v21 = [v18 bundleIdentifier];
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v22 = v21;
  v23 = sub_8A3C();
  v25 = v24;

  v37._countAndFlagsBits = v23;
  v37._object = v25;
  sub_8A8C(v37);

  v26 = v33;
  sub_880C();

  v27 = sub_881C();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v26, 1, v27) != 1)
  {
    sub_885C();
    sub_884C();

    (*(v30 + 8))(v15, v31);
    (*(v28 + 8))(v26, v27);
    [v32 reloadSpecifiers];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_5950()
{
  v1 = v0;
  v2 = *(*(sub_883C() - 8) + 64);
  __chkstk_darwin();
  v3 = *(*(sub_89DC() - 8) + 64);
  __chkstk_darwin();
  v64 = &_swiftEmptyArrayStorage;
  sub_69F4();
  sub_8ABC();
  if (*(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v64 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v49 = *(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8));
    sub_8ADC();
  }

  sub_8AEC();
  v4 = *&v0[OBJC_IVAR____TtC36NanoMenstrualCyclesCompanionSettings22SettingsViewController_model];
  v5 = &_s7Combine10PublishersO9MergeManyVMa_ptr;
  if (sub_2208())
  {
    v6 = objc_opt_self();
    v7 = sub_89FC();
    v61 = v6;
    v8 = [v6 groupSpecifierWithID:v7];

    if (!v8)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    sub_89EC();
    v55 = type metadata accessor for SettingsViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v59 = objc_opt_self();
    v60 = ObjCClassFromMetadata;
    v10 = [v59 bundleForClass:ObjCClassFromMetadata];
    sub_882C();
    sub_8A4C();
    v11 = sub_89FC();

    v56 = PSFooterTextGroupKey;
    [v8 setProperty:v11 forKey:?];

    v12 = sub_22FC();
    v58 = v8;
    if ((v12 & 0x100) != 0)
    {
      v13 = v12;
      v14 = v8;
      sub_8ABC();
      if (*(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v64 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v52 = *(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8));
        sub_8ADC();
      }

      sub_8AEC();
      sub_89EC();
      v15 = [v59 bundleForClass:{ObjCClassFromMetadata, v14}];
      sub_882C();
      sub_8A4C();
      v16 = sub_89FC();
      v17 = [v61 preferenceSpecifierNamed:v16 target:v1 set:"setWithUseHeartRate:specifier:" get:"useHeartRateWithSpecifier:" detail:0 cell:6 edit:0];

      if (!v17)
      {
        goto LABEL_34;
      }

      isa = sub_8AFC().super.super.isa;
      [v17 setProperty:isa forKey:PSAllowMultilineTitleKey];

      v19 = sub_8AFC().super.super.isa;
      [v17 setProperty:v19 forKey:PSEnabledKey];

      v20 = v17;
      sub_8ABC();
      if (*(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v64 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_8ADC();
      }

      sub_8AEC();
      if ((v13 & 0x10000) != 0)
      {
        sub_89EC();
        v21 = [v59 bundleForClass:v60];
        sub_882C();
        v22 = sub_8A4C();
        v24 = v23;
        v63 = v55;
        v62[0] = v1;
        v25 = v1;
        sub_63AC(v22, v24, v62, "openHeartRateLearnMore");

        sub_4E1C(v62);
      }

      else
      {
      }

      v5 = &_s7Combine10PublishersO9MergeManyVMa_ptr;
      v8 = v58;
    }

    v26 = sub_25A0();
    if ((v26 & 0x100) != 0)
    {
      v27 = v26;
      v28 = sub_89FC();
      v29 = [v61 groupSpecifierWithID:v28];

      if (!v29)
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      sub_89EC();
      v30 = [v59 bundleForClass:v60];
      sub_882C();
      sub_8A4C();
      v31 = sub_89FC();

      [v29 setProperty:v31 forKey:v56];

      v32 = v29;
      sub_8ABC();
      if (*(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v64 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v53 = *(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8));
        sub_8ADC();
      }

      v57 = v32;
      sub_8AEC();
      sub_89EC();
      v33 = [v59 bundleForClass:v60];
      sub_882C();
      sub_8A4C();
      v34 = sub_89FC();
      v35 = [v61 preferenceSpecifierNamed:v34 target:v1 set:"setWithUseWristTemperature:specifier:" get:"useWristTemperatureWithSpecifier:" detail:0 cell:6 edit:0];

      if (!v35)
      {
        goto LABEL_36;
      }

      v36 = sub_8AFC().super.super.isa;
      [v35 setProperty:v36 forKey:PSAllowMultilineTitleKey];

      v37 = sub_8AFC().super.super.isa;
      [v35 setProperty:v37 forKey:PSEnabledKey];

      v5 = &_s7Combine10PublishersO9MergeManyVMa_ptr;
      if ((v27 & 0x10000) != 0)
      {
        sub_89EC();
        v38 = [v59 bundleForClass:v60];
        sub_882C();
        v39 = sub_8A4C();
        v41 = v40;
        v63 = v55;
        v62[0] = v1;
        v42 = v1;
        sub_63AC(v39, v41, v62, "openWristTemperatureLearnMore");

        sub_4E1C(v62);
      }

      v8 = v35;
      sub_8ABC();
      if (*(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v64 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v54 = *(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8));
        sub_8ADC();
      }

      sub_8AEC();
    }
  }

  v43 = v5[180];
  v44 = objc_opt_self();
  v45 = sub_89FC();
  v46 = [v44 groupSpecifierWithID:v45];

  if (!v46)
  {
    __break(1u);
    goto LABEL_33;
  }

  sub_8ABC();
  if (*(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v64 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v50 = *(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8));
    sub_8ADC();
  }

  sub_8AEC();
  sub_6D80();
  sub_8ABC();
  if (*(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v64 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v51 = *(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8));
    sub_8ADC();
  }

  sub_8AEC();
  v47 = v64;
  sub_6788(v64);
  v48 = sub_8ACC().super.isa;

  [v1 setSpecifiers:v48];

  sub_6788(v47);
}

void sub_63AC(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  v7 = *(*(sub_883C() - 8) + 64);
  __chkstk_darwin();
  v8 = *(*(sub_89DC() - 8) + 64);
  __chkstk_darwin();
  sub_89EC();
  type metadata accessor for SettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_882C();
  v11 = sub_8A4C();
  v13 = v12;
  sub_84B8(0, &qword_10710, sub_851C, &type metadata accessor for _ContiguousArrayStorage);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_9550;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_8580();
  *(v14 + 32) = v11;
  *(v14 + 40) = v13;

  sub_8A0C();

  v15 = sub_89FC();

  v16 = sub_89FC();

  v17 = [v15 rangeOfString:v16];
  v19 = v18;

  v26.location = v17;
  v26.length = v19;
  v20 = NSStringFromRange(v26);
  if (!v20)
  {
    sub_8A3C();
    v20 = sub_89FC();
  }

  sub_4D70(0, &qword_10728, PSFooterHyperlinkView_ptr);
  v21 = swift_getObjCClassFromMetadata();
  v22 = NSStringFromClass(v21);
  if (!v22)
  {
    sub_8A3C();
    v22 = sub_89FC();
  }

  [v4 setProperty:v22 forKey:PSFooterCellClassGroupKey];

  [v4 setProperty:v15 forKey:PSFooterHyperlinkViewTitleKey];
  [v4 setProperty:v20 forKey:PSFooterHyperlinkViewLinkRangeKey];

  sub_85D4(a3, a3[3]);
  v23 = sub_8C8C();
  v24 = [objc_opt_self() valueWithNonretainedObject:v23];
  swift_unknownObjectRelease();
  [v4 setProperty:v24 forKey:PSFooterHyperlinkViewTargetKey];

  v25 = NSStringFromSelector(a4);
  if (!v25)
  {
    sub_8A3C();
    v25 = sub_89FC();
  }

  [v4 setProperty:v25 forKey:PSFooterHyperlinkViewActionKey];
}

char *sub_6788(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_8C3C();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_71E0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_8BBC();
        sub_4D70(0, &qword_10730, PSSpecifier_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_71E0((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_84A8(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_4D70(0, &qword_10730, PSSpecifier_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_71E0((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_84A8(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_69F4()
{
  swift_getObjectType();
  v0 = *(*(sub_883C() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_89DC() - 8) + 64);
  __chkstk_darwin();
  v2 = objc_opt_self();
  v3 = sub_89FC();
  v4 = [v2 groupSpecifierWithID:v3];

  if (v4)
  {
    sub_886C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v6)
    {
      sub_8A3C();
      v6 = sub_89FC();
    }

    [v4 setProperty:v6 forKey:PSHeaderCellClassGroupKey];

    v7 = swift_getObjCClassFromMetadata();
    v8 = objc_opt_self();
    v9 = [v8 bundleForClass:v7];
    v10 = sub_89FC();
    v11 = [objc_opt_self() imageNamed:v10 inBundle:v9];

    [v4 setProperty:v11 forKey:PSIconImageKey];
    sub_89EC();
    type metadata accessor for SettingsViewController();
    v12 = swift_getObjCClassFromMetadata();
    v13 = [v8 bundleForClass:v12];
    sub_882C();
    sub_8A4C();
    v14 = sub_89FC();

    [v4 setProperty:v14 forKey:PSTitleKey];

    sub_89EC();
    v15 = [v8 bundleForClass:v12];
    sub_882C();
    sub_8A4C();
    v16 = sub_89FC();

    [v4 setProperty:v16 forKey:PSStaticHeaderTextKey];
  }

  else
  {
    __break(1u);
  }
}

void sub_6D80()
{
  v1 = v0;
  v2 = *(*(sub_883C() - 8) + 64);
  __chkstk_darwin();
  v3 = *(*(sub_89DC() - 8) + 64);
  __chkstk_darwin();
  v4 = *(v0 + OBJC_IVAR____TtC36NanoMenstrualCyclesCompanionSettings22SettingsViewController_model);
  v5 = sub_2208();
  v6 = objc_opt_self();
  sub_89EC();
  type metadata accessor for SettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_882C();
  sub_8A4C();
  v9 = sub_89FC();

  v10 = [v6 preferenceSpecifierNamed:v9 target:v1 set:0 get:0 detail:0 cell:13 edit:0];

  if (v10)
  {
    isa = sub_8AFC().super.super.isa;
    [v10 setProperty:isa forKey:PSAllowMultilineTitleKey];

    v12 = &selRef_openHealthAppOnboarding;
    if (v5)
    {
      v12 = &selRef_openHealthAppSettings;
    }

    [v10 setButtonAction:*v12];
  }

  else
  {
    __break(1u);
  }
}

void sub_702C(char *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = *&a1[OBJC_IVAR____TtC36NanoMenstrualCyclesCompanionSettings22SettingsViewController_model];
  v9 = a3;
  v8 = a1;
  a5([v9 BOOLValue]);
}

Class sub_70C4(char *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = *&a1[OBJC_IVAR____TtC36NanoMenstrualCyclesCompanionSettings22SettingsViewController_model];
  v6 = a1;
  a4();
  v7.super.super.isa = sub_8AFC().super.super.isa;

  return v7.super.super.isa;
}

id sub_713C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_71E0(char *a1, int64_t a2, char a3)
{
  result = sub_7200(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_7200(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_8618();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_7304(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_8A3C();
  sub_8CAC();
  sub_8A7C();
  v4 = sub_8CBC();

  return sub_7398(a1, v4);
}

unint64_t sub_7398(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_8A3C();
      v9 = v8;
      if (v7 == sub_8A3C() && v9 == v10)
      {
        break;
      }

      v12 = sub_8C9C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_749C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_8C3C();
    if (result)
    {
LABEL_3:
      sub_866C();
      result = sub_8B8C();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_8C3C();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = sub_8BBC();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    sub_893C();
    sub_8700(&qword_10748, &type metadata accessor for AnyCancellable);
    result = sub_89AC();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_8700(&qword_10750, &type metadata accessor for AnyCancellable);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = sub_89BC();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_7724()
{
  v1 = OBJC_IVAR____TtC36NanoMenstrualCyclesCompanionSettings22SettingsViewController_model;
  type metadata accessor for SettingsModel();
  swift_allocObject();
  *(v0 + v1) = sub_1968();
  if (&_swiftEmptyArrayStorage >> 62 && sub_8C3C())
  {
    v2 = sub_749C(&_swiftEmptyArrayStorage);
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC36NanoMenstrualCyclesCompanionSettings22SettingsViewController_subscriptions) = v2;
  sub_8C2C();
  __break(1u);
}

unint64_t sub_77F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_8338();
    v3 = sub_8C4C();
    v4 = a1 + 32;

    while (1)
    {
      sub_83D8(v4, &v11);
      v5 = v11;
      result = sub_7304(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_84A8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void sub_8338()
{
  if (!qword_10700)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    sub_8700(&qword_106B0, type metadata accessor for OpenExternalURLOptionsKey);
    v0 = sub_8C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_10700);
    }
  }
}

uint64_t sub_83D8(uint64_t a1, uint64_t a2)
{
  sub_843C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_843C()
{
  if (!qword_10708)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10708);
    }
  }
}

_OWORD *sub_84A8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_84B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_851C()
{
  result = qword_10718;
  if (!qword_10718)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10718);
  }

  return result;
}

unint64_t sub_8580()
{
  result = qword_10720;
  if (!qword_10720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10720);
  }

  return result;
}

void *sub_85D4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_8618()
{
  if (!qword_10738)
  {
    v0 = sub_8C7C();
    if (!v1)
    {
      atomic_store(v0, &qword_10738);
    }
  }
}

void sub_866C()
{
  if (!qword_10740)
  {
    sub_893C();
    sub_8700(&qword_10748, &type metadata accessor for AnyCancellable);
    v0 = sub_8B9C();
    if (!v1)
    {
      atomic_store(v0, &qword_10740);
    }
  }
}

uint64_t sub_8700(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_8748()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}