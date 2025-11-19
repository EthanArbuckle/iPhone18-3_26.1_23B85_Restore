uint64_t sub_1AC0()
{
  v0 = sub_11BC0();
  sub_2044(v0, qword_1CF20);
  sub_20A8(v0, qword_1CF20);
  return sub_11BB0();
}

void type metadata accessor for Dataclass()
{
  if (!qword_1C6E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1C6E0);
    }
  }
}

uint64_t sub_1B90(uint64_t a1, id *a2)
{
  result = sub_12150();
  *a2 = 0;
  return result;
}

uint64_t sub_1C08(uint64_t a1, id *a2)
{
  v3 = sub_12160();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C88@<X0>(void *a1@<X8>)
{
  sub_12170();
  v2 = sub_12140();

  *a1 = v2;
  return result;
}

uint64_t sub_1CCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_12140();

  *a2 = v5;
  return result;
}

uint64_t sub_1D14@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_12170();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1D40(uint64_t a1)
{
  v2 = sub_2000(&qword_1C700);
  v3 = sub_2000(&qword_1C708);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1E40()
{
  v1 = *v0;
  sub_12170();
  v2 = sub_121B0();

  return v2;
}

uint64_t sub_1E7C()
{
  v1 = *v0;
  sub_12170();
  sub_121A0();
}

Swift::Int sub_1ED0()
{
  v1 = *v0;
  sub_12170();
  sub_122B0();
  sub_121A0();
  v2 = sub_122C0();

  return v2;
}

uint64_t sub_1F44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_12170();
  v6 = v5;
  if (v4 == sub_12170() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_122A0();
  }

  return v9 & 1;
}

uint64_t sub_2000(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Dataclass();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_2044(uint64_t a1, uint64_t *a2)
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

uint64_t sub_20A8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_20E0()
{
  swift_getKeyPath();
  sub_5154();
  sub_11AC0();

  v1 = *(v0 + 16);

  return v1;
}

void sub_2160(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_5320();
  v5 = v4;
  v6 = sub_12270();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_5154();
    sub_11AB0();
  }
}

uint64_t sub_228C()
{
  swift_getKeyPath();
  sub_5154();
  sub_11AC0();

  return *(v0 + 24);
}

uint64_t sub_22FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_5154();
  sub_11AC0();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_239C(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_5154();
    sub_11AB0();
  }

  return result;
}

uint64_t sub_2590(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_5154();
  sub_11AC0();

  return *(v2 + *a2);
}

uint64_t sub_2614@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_5154();
  sub_11AC0();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_26E8(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_5154();
    sub_11AB0();
  }

  return result;
}

uint64_t sub_27BC()
{
  v1 = v0;
  v2 = (*(*(sub_4AB4(&qword_1C960, &qword_12DC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v24 - v3;
  v5 = sub_11B80();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 0;
  sub_11C00();
  v10 = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel_appleAccountProvider;
  sub_11B70();
  *(v0 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__isDeletedDataAllowed) = 0;
  *(v0 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__deleteInProgress) = 0;
  *(v0 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__setSyncInProgress) = 0;
  sub_11AD0();
  v11 = v6[2];
  v11(v9, v0 + v10, v5);
  v12 = sub_11B40();
  v13 = v6[1];
  v13(v9, v5);
  if (v12)
  {
    *(v1 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel_account) = v12;
    v11(v9, v1 + v10, v5);
    v14 = v12;
    v15.super.isa = sub_11B30().super.isa;
    v13(v9, v5);
    v16 = [objc_allocWithZone(ACUIAccountOperationsHelper) initWithAccountStore:v15.super.isa];
    if (v16)
    {
      *(v1 + 16) = v16;
      v17 = sub_12230();
      (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v1;

      sub_2E54(0, 0, v4, &unk_12A58, v18);

      return v1;
    }

    __break(1u);
  }

  if (qword_1C6D8 != -1)
  {
    swift_once();
  }

  v20 = sub_11BC0();
  sub_20A8(v20, qword_1CF20);
  v21 = sub_11BA0();
  v22 = sub_12240();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "Couldnt find primary account.", v23, 2u);
  }

  result = sub_12280();
  __break(1u);
  return result;
}

uint64_t sub_2B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = async function pointer to EnrollmentAssetService.activate()[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_2C20;

  return EnrollmentAssetService.activate()();
}

uint64_t sub_2C20()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_2D60;
  v5 = *(v1 + 16);

  return sub_3980();
}

uint64_t sub_2D60()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_4AB4(&qword_1C960, &qword_12DC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_4CE4(a3, v26 - v10);
  v12 = sub_12230();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_51F0(v11, &qword_1C960, &qword_12DC0);
  }

  else
  {
    sub_12220();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_121E0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_12190() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_51F0(a3, &qword_1C960, &qword_12DC0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_51F0(a3, &qword_1C960, &qword_12DC0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_3144()
{
  v1[5] = v0;
  v2 = sub_11C20();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_3204, 0, 0);
}

uint64_t sub_3204()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__deleteInProgress;
  v0[9] = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__deleteInProgress;
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    v0[2] = v1;
    sub_5154();
    sub_11AB0();
  }

  v4 = v0[5];
  (*(v0[7] + 104))(v0[8], enum case for EnrollmentDataLocation.both(_:), v0[6]);
  v0[10] = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel_service;
  v5 = async function pointer to EnrollmentAssetService.deleteEnrollmentData(from:)[1];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_338C;
  v7 = v0[8];

  return EnrollmentAssetService.deleteEnrollmentData(from:)(v7);
}

uint64_t sub_338C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_3880;
  }

  else
  {
    v3 = sub_34A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_34A0()
{
  v1 = v0[9];
  v2 = v0[5];
  if (*(v2 + v1))
  {
    v3 = v0[12];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    *(v4 + 24) = 0;
    v0[4] = v2;
    sub_5154();
    sub_11AB0();
  }

  else
  {
    *(v2 + v1) = 0;
  }

  v5 = v0[10];
  v6 = v0[5];
  v7 = async function pointer to EnrollmentAssetService.canDeleteCloudData()[1];
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_35F0;

  return EnrollmentAssetService.canDeleteCloudData()();
}

uint64_t sub_35F0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_3900;
  }

  else
  {
    *(v4 + 120) = a1 & 1;
    v7 = sub_371C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_371C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  v3 = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__isDeletedDataAllowed;
  if (v1 == *(v2 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__isDeletedDataAllowed))
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    *(v2 + v3) = v1;
  }

  else
  {
    v4 = *(v0 + 112);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 48);
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v2;
    *(v8 + 24) = v1;
    *(v0 + 24) = v2;
    sub_5154();
    sub_11AB0();

    (*(v6 + 8))(v5, v7);
  }

  v9 = *(v0 + 64);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_3880()
{
  v1 = v0[12];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_3900()
{
  v1 = v0[14];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_39A0()
{
  v1 = v0[3];
  v2 = sub_11B60();
  if (v2 == *(v1 + 24))
  {
    *(v1 + 24) = v2;
  }

  else
  {
    v3 = v0[3];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    v0[2] = v3;
    sub_5154();
    sub_11AB0();
  }

  if (qword_1C6D8 != -1)
  {
    swift_once();
  }

  v5 = v0[3];
  v6 = sub_11BC0();
  sub_20A8(v6, qword_1CF20);

  v7 = sub_11BA0();
  v8 = sub_12260();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[3];
  if (v9)
  {
    v11 = swift_slowAlloc();
    *v11 = 67240192;
    swift_getKeyPath();
    v0[2] = v10;
    sub_5154();
    sub_11AC0();

    *(v11 + 4) = *(v1 + 24);

    _os_log_impl(&dword_0, v7, v8, "Refresh sync state to: %{BOOL,public}d", v11, 8u);
  }

  else
  {
    v12 = v0[3];
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_3BEC(char a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 121) = a2;
  *(v3 + 120) = a1;
  return _swift_task_switch(sub_3C14, 0, 0);
}

uint64_t sub_3C14()
{
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__setSyncInProgress;
  *(v0 + 64) = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__setSyncInProgress;
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    *(v0 + 16) = v1;
    sub_5154();
    sub_11AB0();
  }

  if (*(v0 + 121) == 1)
  {
    if (qword_1C6D8 != -1)
    {
      swift_once();
    }

    v4 = sub_11BC0();
    *(v0 + 72) = sub_20A8(v4, qword_1CF20);
    v5 = sub_11BA0();
    v6 = sub_12260();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 120);
      v8 = swift_slowAlloc();
      *v8 = 67240192;
      *(v8 + 4) = v7;
      _os_log_impl(&dword_0, v5, v6, "Setting sync state to: %{BOOL,public}d", v8, 8u);
    }

    v9 = *(v0 + 120);

    if (v9)
    {
      v10 = *(*(v0 + 56) + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel_account);
      *(v0 + 96) = v10;
      v11 = async function pointer to AppleAccountProvider.setCloudSyncState(enabled:account:)[1];
      v12 = swift_task_alloc();
      *(v0 + 104) = v12;
      *v12 = v0;
      v12[1] = sub_4228;
      v13 = *(v0 + 120);

      return AppleAccountProvider.setCloudSyncState(enabled:account:)(v13, v10);
    }

    else
    {
      v17 = async function pointer to EnrollmentAssetService.canDeleteCloudData()[1];
      v18 = swift_task_alloc();
      *(v0 + 80) = v18;
      *v18 = v0;
      v18[1] = sub_4050;

      return EnrollmentAssetService.canDeleteCloudData()();
    }
  }

  else
  {
    v14 = *(v0 + 56);
    v15 = *(v0 + 120);
    if (v15 == *(v14 + 24))
    {
      *(v14 + 24) = v15;
    }

    else
    {
      swift_getKeyPath();
      v16 = swift_task_alloc();
      *(v16 + 16) = v14;
      *(v16 + 24) = v15;
      *(v0 + 24) = v14;
      sub_5154();
      sub_11AB0();
    }

    v20 = *(v0 + 56);
    v19 = *(v0 + 64);
    if (*(v20 + v19) == 1)
    {
      swift_getKeyPath();
      v21 = swift_task_alloc();
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v0 + 32) = v20;
      sub_5154();
      sub_11AB0();
    }

    else
    {
      *(v20 + v19) = 0;
    }

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_4050()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_4530;
  }

  else
  {
    v3 = sub_4164;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_4164()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel_account);
  *(v0 + 96) = v1;
  v2 = async function pointer to AppleAccountProvider.setCloudSyncState(enabled:account:)[1];
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_4228;
  v4 = *(v0 + 120);

  return AppleAccountProvider.setCloudSyncState(enabled:account:)(v4, v1);
}

uint64_t sub_4228()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_46F4;
  }

  else
  {
    v3 = sub_433C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_433C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  swift_getKeyPath();
  *(v0 + 48) = v2;
  sub_5154();
  sub_11AC0();

  [*(v2 + 16) saveAccount:v1];
  v3 = *(v0 + 112);
  v4 = *(v0 + 56);
  v5 = *(v0 + 120);
  if (v5 == *(v4 + 24))
  {
    *(v4 + 24) = v5;
  }

  else
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    *(v0 + 24) = v4;
    sub_11AB0();
  }

  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  if (*(v8 + v7) == 1)
  {
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = 0;
    *(v0 + 32) = v8;
    sub_11AB0();
  }

  else
  {
    *(v8 + v7) = 0;
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_4530()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  swift_errorRetain();
  v3 = sub_11BA0();
  v4 = sub_12240();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 88);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v3, v4, "Failed to query if cloud data exists from ManagedAssets with error: %{public}@", v7, 0xCu);
    sub_51F0(v8, &qword_1C970, &qword_12AF0);
  }

  else
  {
  }

  v10 = *(*(v0 + 56) + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel_account);
  *(v0 + 96) = v10;
  v11 = async function pointer to AppleAccountProvider.setCloudSyncState(enabled:account:)[1];
  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  *v12 = v0;
  v12[1] = sub_4228;
  v13 = *(v0 + 120);

  return AppleAccountProvider.setCloudSyncState(enabled:account:)(v13, v10);
}

uint64_t sub_46F4()
{
  v2 = v0[7];
  v1 = v0[8];
  if (*(v2 + v1) == 1)
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[5] = v2;
    sub_5154();
    sub_11AB0();
  }

  else
  {
    *(v2 + v1) = 0;
  }

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_47FC()
{
  v1 = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel_service;
  v2 = sub_11C10();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel_appleAccountProvider;
  v4 = sub_11B80();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel___observationRegistrar;
  v6 = sub_11AE0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 12);
  v8 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t type metadata accessor for SettingsCloudModel()
{
  result = qword_1C758;
  if (!qword_1C758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4984()
{
  result = sub_11C10();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_11B80();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_11AE0();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_4AB4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_4AFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_4B3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_4BF0;

  return sub_2B7C(a1, v4, v5, v6);
}

uint64_t sub_4BF0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_4CE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_4AB4(&qword_1C960, &qword_12DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4D54(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4E4C;

  return v7(a1);
}

uint64_t sub_4E4C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_4F44()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4F7C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_53F0;

  return sub_4D54(a1, v5);
}

uint64_t sub_5034(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_4BF0;

  return sub_4D54(a1, v5);
}

unint64_t sub_5154()
{
  result = qword_1C968;
  if (!qword_1C968)
  {
    type metadata accessor for SettingsCloudModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C968);
  }

  return result;
}

uint64_t sub_51F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_4AB4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_5320()
{
  result = qword_1C978;
  if (!qword_1C978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C978);
  }

  return result;
}

void sub_536C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

void sub_5440()
{
  v1 = v0;
  v2 = (type metadata accessor for SettingsCloudView() - 8);
  v3 = *(*v2 + 64);
  __chkstk_darwin();
  v5 = (v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for SettingsCloudController();
  v53.receiver = v0;
  v53.super_class = v6;
  objc_msgSendSuper2(&v53, "viewDidLoad");
  v7 = type metadata accessor for SettingsCloudModel();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v52[1] = sub_27BC();
  sub_12010();
  v10 = v52[3];
  *v5 = v52[2];
  v5[1] = v10;
  v11 = v2[7];
  *(v5 + v11) = swift_getKeyPath();
  sub_4AB4(&qword_1CA40, &qword_12BC8);
  swift_storeEnumTagMultiPayload();
  v12 = v5 + v2[8];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = v5 + v2[9];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = v2[10];
  v15 = objc_allocWithZone(ISIcon);
  v16 = sub_12140();
  v17 = [v15 initWithType:v16];

  *(v5 + v14) = v17;
  v18 = objc_allocWithZone(sub_4AB4(&qword_1CA48, &qword_12C30));
  v19 = sub_11E00();
  [v1 addChildViewController:v19];
  v20 = [v1 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v20;
  v22 = [v19 view];
  if (!v22)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = v22;
  [v21 addSubview:v22];

  [v19 didMoveToParentViewController:v1];
  v24 = [v19 view];

  if (!v24)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_4AB4(&qword_1CA50, &unk_12C38);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_12B70;
  v26 = [v1 view];
  if (!v26)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = [v19 view];
  if (!v29)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v30 = [v29 topAnchor];

  v31 = [v28 constraintEqualToAnchor:v30];
  *(v25 + 32) = v31;
  v32 = [v1 view];
  if (!v32)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v33 = v32;
  v34 = [v32 trailingAnchor];

  v35 = [v19 view];
  if (!v35)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v36 = [v35 trailingAnchor];

  v37 = [v34 constraintEqualToAnchor:v36];
  *(v25 + 40) = v37;
  v38 = [v1 view];
  if (!v38)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v39 = v38;
  v40 = [v38 bottomAnchor];

  v41 = [v19 view];
  if (!v41)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v42 = [v41 bottomAnchor];

  v43 = [v40 constraintEqualToAnchor:v42];
  *(v25 + 48) = v43;
  v44 = [v1 view];
  if (!v44)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v45 = v44;
  v46 = [v44 leadingAnchor];

  v47 = [v19 view];
  if (v47)
  {
    v48 = objc_opt_self();
    v49 = [v47 leadingAnchor];

    v50 = [v46 constraintEqualToAnchor:v49];
    *(v25 + 56) = v50;
    sub_5DC8();
    isa = sub_121C0().super.isa;

    [v48 activateConstraints:isa];

    return;
  }

LABEL_23:
  __break(1u);
}

id sub_5B54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsCloudController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_5BAC@<X0>(void *a1@<X8>)
{
  result = sub_11D10();
  *a1 = v3;
  return result;
}

uint64_t sub_5C48(uint64_t a1)
{
  v2 = *(*(sub_11C70() - 8) + 64);
  __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_11D00();
}

uint64_t sub_5D14@<X0>(void *a1@<X8>)
{
  result = sub_11D10();
  *a1 = v3;
  return result;
}

uint64_t sub_5D68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_11D70();
  *a1 = result & 1;
  return result;
}

uint64_t sub_5D98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_11D70();
  *a1 = result & 1;
  return result;
}

unint64_t sub_5DC8()
{
  result = qword_1CA58;
  if (!qword_1CA58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1CA58);
  }

  return result;
}

id sub_5E14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_5154();
  sub_11AC0();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

char *AccountsViewControllerRepresentable.makeUIViewController(context:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DeviceEnrollmentViewController();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = *&v3[OBJC_IVAR____TtC17DeviceEnrollments30DeviceEnrollmentViewController_model];
  *&v3[OBJC_IVAR____TtC17DeviceEnrollments30DeviceEnrollmentViewController_model] = a2;

  swift_getKeyPath();
  sub_5154();
  sub_11AC0();

  [*(a2 + 16) setDelegate:v3];
  return v3;
}

unint64_t sub_5FE4()
{
  result = qword_1CA68;
  if (!qword_1CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA68);
  }

  return result;
}

uint64_t sub_6094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7F5C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_60F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7F5C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_6178()
{
  sub_7F5C();
  sub_11E90();
  __break(1u);
}

uint64_t sub_635C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  sub_12200();
  v6[7] = sub_121F0();
  v8 = sub_121E0();

  return _swift_task_switch(sub_63FC, v8, v7);
}

uint64_t sub_63FC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);

  *(v0 + 64) = _Block_copy(v2);
  if (v3)
  {
    v4 = *(v0 + 16);
    v5 = sub_121D0();
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 72) = v5;
  if (*(v0 + 24))
  {
    sub_12170();
  }

  else
  {
    v6 = 0;
  }

  *(v0 + 80) = v6;
  if (*(v0 + 32))
  {
    sub_12170();
  }

  else
  {
    v7 = 0;
  }

  *(v0 + 88) = v7;
  v8 = *(v0 + 48);
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_652C;
  v10 = *(v0 + 48);

  return sub_7A98(v5);
}

uint64_t sub_652C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 72);
  v8 = *(*v1 + 64);
  v9 = *(*v1 + 48);
  v10 = *v1;

  if (v8)
  {
    v11 = *(v3 + 64);
    v11[2](v11, a1);
    _Block_release(v11);
  }

  v12 = *(v10 + 8);

  return v12();
}

uint64_t sub_66E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 296) = a6;
  *(v7 + 200) = a5;
  *(v7 + 208) = v6;
  *(v7 + 184) = a3;
  *(v7 + 192) = a4;
  *(v7 + 168) = a1;
  *(v7 + 176) = a2;
  sub_12200();
  *(v7 + 216) = sub_121F0();
  v9 = sub_121E0();
  *(v7 + 224) = v9;
  *(v7 + 232) = v8;

  return _swift_task_switch(sub_6788, v9, v8);
}

uint64_t sub_6788()
{
  if (*(v0 + 168))
  {
    v1.super.isa = sub_121C0().super.isa;
  }

  else
  {
    v1.super.isa = 0;
  }

  *(v0 + 240) = v1;
  if (*(v0 + 184))
  {
    v2 = *(v0 + 176);
    v3 = sub_12140();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 248) = v3;
  if (*(v0 + 200))
  {
    v4 = *(v0 + 192);
    v5 = sub_12140();
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 256) = v5;
  v6 = *(v0 + 208);
  v7 = *(v0 + 296);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_6934;
  v8 = swift_continuation_init();
  *(v0 + 136) = sub_4AB4(&qword_1CA98, &qword_12DB8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_6E1C;
  *(v0 + 104) = &unk_18D98;
  *(v0 + 112) = v8;
  v9 = type metadata accessor for DeviceEnrollmentViewController();
  *(v0 + 144) = v6;
  *(v0 + 152) = v9;
  objc_msgSendSuper2((v0 + 144), "showConfirmationWithButtons:title:message:destructive:completion:", v1.super.isa, v3, v5, v7, v0 + 80);

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_6934()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *v0;

  return _swift_task_switch(sub_6A3C, v2, v1);
}

void sub_6A3C()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[20];
  v0[33] = v4;

  if (v4 == 2)
  {
    v5 = *(v0[26] + OBJC_IVAR____TtC17DeviceEnrollments30DeviceEnrollmentViewController_model);
    v0[34] = v5;
    if (v5)
    {

      v6 = swift_task_alloc();
      v0[35] = v6;
      *v6 = v0;
      v6[1] = sub_6B64;

      sub_3BEC(1, 0);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v7 = v0[27];

    v8 = v0[1];
    v9 = v0[33];

    v8(v9);
  }
}

uint64_t sub_6B64()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v9 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = v2[28];
    v5 = v2[29];
    v6 = sub_6CE4;
  }

  else
  {
    v7 = v2[34];

    v4 = v2[28];
    v5 = v2[29];
    v6 = sub_6C80;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_6C80()
{
  v1 = v0[27];

  v2 = v0[1];
  v3 = v0[33];

  return v2(v3);
}

uint64_t sub_6CE4()
{
  v1 = v0[34];
  v2 = v0[27];

  if (qword_1C6D8 != -1)
  {
    swift_once();
  }

  v3 = sub_11BC0();
  sub_20A8(v3, qword_1CF20);
  v4 = sub_11BA0();
  v5 = sub_12240();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[36];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v4, v5, "Unable to set sync state to true after cancel was selected.", v8, 2u);
  }

  v9 = v0[1];
  v10 = v0[33];

  return v9(v10);
}

uint64_t sub_6E1C(uint64_t a1, uint64_t a2)
{
  **(*(*sub_70B8((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

id sub_6FB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceEnrollmentViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_7008(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_706C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_70B8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_70FC()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_7154()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_4BF0;

  return sub_635C(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_722C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_53F0;

  return v7();
}

uint64_t sub_7314()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_53F0;

  return sub_722C(v2, v3, v5);
}

uint64_t sub_73D4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_4BF0;

  return v8();
}

uint64_t sub_74C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_7500(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_53F0;

  return sub_73D4(a1, v4, v5, v7);
}

uint64_t sub_75CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_4AB4(&qword_1C960, &qword_12DC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_4CE4(a3, v24 - v10);
  v12 = sub_12230();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_7888(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_12220();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_121E0();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_12190() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_7888(a3);

    return v22;
  }

LABEL_8:
  sub_7888(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_7888(uint64_t a1)
{
  v2 = sub_4AB4(&qword_1C960, &qword_12DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_78F0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7928(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_53F0;

  return sub_4D54(a1, v5);
}

uint64_t sub_79E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_4BF0;

  return sub_4D54(a1, v5);
}

uint64_t sub_7A98(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_11AA0() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(sub_12130() - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  sub_12200();
  v2[6] = sub_121F0();
  v6 = sub_121E0();
  v2[7] = v6;
  v2[8] = v5;

  return _swift_task_switch(sub_7B88, v6, v5);
}

uint64_t sub_7B88()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_12120();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass:ObjCClassFromMetadata];
  sub_11A90();
  v6 = sub_12180();
  v8 = v7;
  v0[9] = v7;
  sub_12120();
  v9 = [v4 bundleForClass:ObjCClassFromMetadata];
  sub_11A90();
  v10 = sub_12180();
  v12 = v11;
  v0[10] = v11;
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_7D7C;
  v14 = v0[2];
  v15 = v0[3];

  return sub_66E4(v14, v6, v8, v10, v12, 1);
}

uint64_t sub_7D7C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 96) = a1;

  v6 = *(v2 + 64);
  v7 = *(v2 + 56);

  return _swift_task_switch(sub_7EE4, v7, v6);
}

uint64_t sub_7EE4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v4 = v0[1];
  v5 = v0[12];

  return v4(v5);
}

unint64_t sub_7F5C()
{
  result = qword_1CAA0;
  if (!qword_1CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAA0);
  }

  return result;
}

uint64_t sub_7FB8@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = sub_11CA0();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsCloudManageDataView();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_4AB4(&qword_1CB78, &qword_12EE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v31 - v10;
  v12 = sub_4AB4(&qword_1CB80, &qword_12EE8);
  v13 = *(v12 - 8);
  v36 = v12;
  v37 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v32 = &v31 - v15;
  *v11 = sub_11DF0();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v16 = *(sub_4AB4(&qword_1CB88, &qword_12EF0) + 44);
  v39 = v1;
  sub_4AB4(&qword_1CB90, &qword_12EF8);
  sub_BE5C(&qword_1CB98, &qword_1CB90, &qword_12EF8);
  sub_11F40();
  sub_B9F0(v1, &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v18 = swift_allocObject();
  sub_BA64(&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = &v11[*(v8 + 36)];
  v20 = &v19[*(sub_11CC0() + 20)];
  sub_12210();
  *v19 = &unk_12F10;
  *(v19 + 1) = v18;
  sub_11C90();
  v21 = sub_BB94();
  v22 = v32;
  sub_11FC0();
  (*(v34 + 8))(v5, v35);
  sub_BC7C(v11);
  sub_11DD0();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v25 = sub_11F80();
  v27 = v26;
  LOBYTE(v5) = v28;
  v40 = v8;
  v41 = v21;
  swift_getOpaqueTypeConformance2();
  v29 = v36;
  sub_11FE0();
  sub_BCE4(v25, v27, v5 & 1);

  return (*(v37 + 8))(v22, v29);
}

uint64_t sub_8438@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v57 = sub_4AB4(&qword_1CBC8, &qword_12F58);
  v56 = *(v57 - 8);
  v3 = *(v56 + 64);
  v4 = __chkstk_darwin(v57);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v60 = &v51 - v6;
  v7 = sub_4AB4(&qword_1CBD0, &qword_12F60);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v51 - v9;
  v54 = sub_4AB4(&qword_1CBD8, &qword_12F68);
  v59 = *(v54 - 8);
  v11 = v59[8];
  v12 = __chkstk_darwin(v54);
  v53 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  *v10 = sub_11DC0();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v16 = sub_4AB4(&qword_1CBE0, &qword_12F70);
  sub_B0A4(a1, &v10[*(v16 + 44)]);
  sub_4AB4(&qword_1CBE8, &qword_12F78);
  sub_BE5C(&qword_1CBF0, &qword_1CBD0, &qword_12F60);
  sub_BE5C(&qword_1CBF8, &qword_1CBE8, &qword_12F78);
  v17 = v15;
  v52 = v15;
  sub_120B0();
  v61 = a1;
  sub_11DD0();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v20 = sub_11F80();
  v22 = v21;
  v24 = v23;
  sub_11F30();
  v25 = sub_11F70();
  v27 = v26;
  LOBYTE(v15) = v28;
  v30 = v29;

  sub_BCE4(v20, v22, v24 & 1);

  v70 = v25;
  v71 = v27;
  v72 = v15 & 1;
  v73 = v30;
  sub_4AB4(&qword_1CC00, &qword_12F80);
  v31 = sub_B9A8(&qword_1CC08, &qword_12F88);
  v32 = sub_B9A8(&qword_1CC10, &qword_12F90);
  v33 = sub_BD24();
  v34 = sub_BE08();
  v35 = sub_BE5C(&qword_1CC48, &qword_1CC10, &qword_12F90);
  v62 = v31;
  v63 = &type metadata for String;
  v64 = v32;
  v65 = &type metadata for Text;
  v66 = v33;
  v67 = v34;
  v68 = v35;
  v69 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v36 = v60;
  sub_120D0();
  v37 = v59[2];
  v38 = v53;
  v39 = v17;
  v40 = v54;
  v37(v53, v39, v54);
  v41 = v56;
  v42 = *(v56 + 16);
  v43 = v55;
  v44 = v36;
  v45 = v57;
  v42(v55, v44, v57);
  v46 = v58;
  v37(v58, v38, v40);
  v47 = sub_4AB4(&qword_1CC50, &qword_12FA8);
  v42(&v46[*(v47 + 48)], v43, v45);
  v48 = *(v41 + 8);
  v48(v60, v45);
  v49 = v59[1];
  v49(v52, v40);
  v48(v43, v45);
  return (v49)(v38, v40);
}

uint64_t sub_8A54@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(sub_4AB4(&qword_1CCB8, &qword_13070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v25 - v3;
  v25 = sub_11DF0();
  sub_11DD0();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7 = sub_11F80();
  v9 = v8;
  v11 = v10;
  v26 = sub_11E20();
  v12 = sub_11F60();
  v14 = v13;
  v16 = v15;
  sub_BCE4(v7, v9, v11 & 1);

  v17 = sub_11EF0();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  sub_11F10();
  sub_51F0(v4, &qword_1CCB8, &qword_13070);
  v18 = sub_11F70();
  v20 = v19;
  LOBYTE(v4) = v21;
  v23 = v22;

  sub_BCE4(v12, v14, v16 & 1);

  *a1 = v25;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = v20;
  *(a1 + 40) = v4 & 1;
  *(a1 + 48) = v23;
  return result;
}

uint64_t sub_8CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28[1] = a2;
  v3 = sub_11AA0();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_12130();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_4AB4(&qword_1CC08, &qword_12F88);
  v28[0] = v7;
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v28 - v9;
  *v10 = sub_11DC0();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_4AB4(&qword_1CC58, &qword_12FB0);
  sub_9110(a1, &v10[*(v11 + 44)]);
  v12 = type metadata accessor for SettingsCloudManageDataView();
  v13 = (a1 + *(v12 + 32));
  v15 = *v13;
  v14 = v13[1];
  v29 = v15;
  v30 = v14;
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  v16 = v33;
  swift_getKeyPath();
  v29 = v16;
  sub_BECC(&qword_1C968, type metadata accessor for SettingsCloudModel);
  sub_11AC0();

  v17 = *(v16 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__isDeletedDataAllowed);

  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = (v17 & 1) == 0;
  v20 = &v10[*(v7 + 36)];
  *v20 = KeyPath;
  v20[1] = sub_BEBC;
  v20[2] = v19;
  sub_12120();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_11A90();
  v33 = sub_12180();
  v34 = v23;
  v24 = a1 + *(v12 + 28);
  v25 = *v24;
  v26 = *(v24 + 8);
  v31 = v25;
  v32 = v26;
  sub_4AB4(&qword_1CC60, &qword_13330);
  sub_12040();
  v28[4] = a1;
  sub_4AB4(&qword_1CC10, &qword_12F90);
  sub_BD24();
  sub_BE08();
  sub_BE5C(&qword_1CC48, &qword_1CC10, &qword_12F90);
  sub_12000();

  return sub_51F0(v10, &qword_1CC08, &qword_12F88);
}

uint64_t sub_9110@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v78 = a2;
  v3 = sub_4AB4(&qword_1CC98, &qword_13028);
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  __chkstk_darwin(v3);
  v70 = (&v65 - v5);
  v6 = sub_11B10();
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  v8 = __chkstk_darwin(v6);
  v67 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v66 = &v65 - v10;
  v11 = sub_4AB4(&qword_1CCA0, &qword_13030);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v75 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v74 = &v65 - v15;
  v16 = type metadata accessor for SettingsCloudManageDataView();
  v17 = v16 - 8;
  v71 = *(v16 - 8);
  v18 = *(v71 + 64);
  __chkstk_darwin(v16);
  v19 = sub_4AB4(&qword_1CC70, &qword_12FF8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v65 - v21;
  v23 = sub_11AA0();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v25 = sub_12130();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v72 = sub_4AB4(&qword_1CC68, &qword_12FF0);
  v27 = *(v72 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v72);
  v73 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v65 - v31;
  sub_12120();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_11A90();
  v80 = sub_12180();
  v81 = v35;
  sub_11C30();
  v36 = sub_11C50();
  (*(*(v36 - 8) + 56))(v22, 0, 1, v36);
  v37 = a1;
  sub_B9F0(a1, &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v39 = swift_allocObject();
  sub_BA64(&v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v38);
  sub_BE08();
  v40 = v32;
  sub_12050();
  v41 = (v37 + *(v17 + 40));
  v43 = *v41;
  v42 = v41[1];
  v80 = v43;
  v81 = v42;
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  v44 = v79;
  swift_getKeyPath();
  v80 = v44;
  sub_BECC(&qword_1C968, type metadata accessor for SettingsCloudModel);
  sub_11AC0();

  v45 = *(v44 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__deleteInProgress);

  if (v45 == 1)
  {
    v46 = v66;
    sub_11B00();
    LOBYTE(v80) = 1;
    v48 = v67;
    v47 = v68;
    v49 = *(v68 + 16);
    v50 = v69;
    v49(v67, v46, v69);
    v51 = v80;
    v52 = v70;
    *v70 = 0;
    *(v52 + 8) = v51;
    v53 = sub_4AB4(&qword_1CCB0, &qword_13068);
    v49((v52 + *(v53 + 48)), v48, v50);
    v54 = *(v47 + 8);
    v54(v46, v50);
    v54(v48, v50);
    v55 = v74;
    sub_C1B0(v52, v74, &qword_1CC98, &qword_13028);
    (*(v76 + 56))(v55, 0, 1, v77);
  }

  else
  {
    v55 = v74;
    (*(v76 + 56))(v74, 1, 1, v77);
  }

  v56 = v27;
  v57 = *(v27 + 16);
  v58 = v72;
  v59 = v73;
  v57(v73, v40, v72);
  v60 = v75;
  sub_C224(v55, v75, &qword_1CCA0, &qword_13030);
  v61 = v78;
  v57(v78, v59, v58);
  v62 = sub_4AB4(&qword_1CCA8, &qword_13060);
  sub_C224(v60, &v61[*(v62 + 48)], &qword_1CCA0, &qword_13030);
  sub_51F0(v55, &qword_1CCA0, &qword_13030);
  v63 = *(v56 + 8);
  v63(v40, v58);
  sub_51F0(v60, &qword_1CCA0, &qword_13030);
  return (v63)(v59, v58);
}

uint64_t sub_98DC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for SettingsCloudManageDataView() + 28));
  v2 = *v1;
  v3 = *(v1 + 1);

  sub_4AB4(&qword_1CC60, &qword_13330);
  sub_12020();
  sub_12030();
}

uint64_t sub_9988@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v64 = a1;
  v69 = a2;
  v2 = sub_11AA0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v67 = (&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_12130();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v65 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = sub_4AB4(&qword_1CC68, &qword_12FF0);
  v74 = *(v68 - 8);
  v8 = v74[8];
  v9 = __chkstk_darwin(v68);
  v75 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v73 = &v58 - v11;
  v12 = type metadata accessor for SettingsCloudManageDataView();
  v62 = *(v12 - 8);
  v13 = *(v62 + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_4AB4(&qword_1CC70, &qword_12FF8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v58 - v16;
  v66 = sub_4AB4(&qword_1CC78, &qword_13000);
  v71 = *(v66 - 8);
  v18 = v71[8];
  v19 = __chkstk_darwin(v66);
  v72 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v58 - v21;
  v23 = sub_120A0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_4AB4(&qword_1CC80, &qword_13008);
  v61 = *(v63 - 8);
  v28 = v61;
  v29 = *(v61 + 64);
  v30 = __chkstk_darwin(v63);
  v70 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v58 - v32;
  sub_12090();
  sub_11CB0();
  sub_BECC(&qword_1CC88, &type metadata accessor for Divider);
  v60 = v33;
  sub_11FF0();
  (*(v24 + 8))(v27, v23);
  sub_11C30();
  v34 = sub_11C50();
  v35 = *(*(v34 - 8) + 56);
  v35(v17, 0, 1, v34);
  sub_B9F0(v64, &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v37 = swift_allocObject();
  sub_BA64(&v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36);
  v38 = v22;
  v59 = v22;
  sub_11AF0();
  sub_12120();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_11A90();
  v76 = sub_12180();
  v77 = v41;
  sub_11C40();
  v35(v17, 0, 1, v34);
  sub_BE08();
  v42 = v73;
  sub_12050();
  v43 = *(v28 + 16);
  v44 = v70;
  v45 = v63;
  v43(v70, v33, v63);
  v46 = v72;
  v67 = v71[2];
  v47 = v66;
  v67(v72, v38, v66);
  v65 = v74[2];
  v48 = v42;
  v49 = v68;
  v65(v75, v48, v68);
  v50 = v69;
  v43(v69, v44, v45);
  v51 = sub_4AB4(&qword_1CC90, &qword_13020);
  v67(&v50[*(v51 + 48)], v46, v47);
  v52 = &v50[*(v51 + 64)];
  v53 = v75;
  v65(v52, v75, v49);
  v54 = v74[1];
  v54(v73, v49);
  v55 = v71[1];
  v55(v59, v47);
  v56 = *(v61 + 8);
  v56(v60, v45);
  v54(v53, v49);
  v55(v72, v47);
  return (v56)(v70, v45);
}

uint64_t sub_A15C(uint64_t a1)
{
  v1[8] = a1;
  sub_12200();
  v1[9] = sub_121F0();
  v3 = sub_121E0();
  v1[10] = v3;
  v1[11] = v2;

  return _swift_task_switch(sub_A1F4, v3, v2);
}

uint64_t sub_A1F4()
{
  v1 = v0[8];
  v2 = (v1 + *(type metadata accessor for SettingsCloudManageDataView() + 32));
  v3 = *v2;
  v0[12] = *v2;
  v4 = v2[1];
  v0[13] = v4;
  v0[2] = v3;
  v0[3] = v4;
  v0[14] = sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  v0[15] = v0[6];
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_A2D8;

  return sub_3144();
}

uint64_t sub_A2D8()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_A648;
  }

  else
  {
    v7 = v2[15];

    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_A3F4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_A3F4()
{
  v2 = v0[13];
  v1 = v0[14];
  v0[4] = v0[12];
  v0[5] = v2;
  sub_12020();
  v0[18] = v0[7];
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_A4A4;

  return sub_3980();
}

uint64_t sub_A4A4()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return _swift_task_switch(sub_A5E8, v5, v4);
}

uint64_t sub_A5E8()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_A648()
{
  v1 = v0[15];
  v2 = v0[9];

  if (qword_1C6D8 != -1)
  {
    swift_once();
  }

  v3 = v0[17];
  v4 = sub_11BC0();
  sub_20A8(v4, qword_1CF20);
  swift_errorRetain();
  v5 = sub_11BA0();
  v6 = sub_12240();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[17];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_0, v5, v6, "Error deleting data: %{public}@", v9, 0xCu);
    sub_51F0(v10, &qword_1C970, &qword_12AF0);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_A800@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_11AA0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_12130();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_12120();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_11A90();
  sub_12180();
  sub_BE08();
  result = sub_11F90();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_A968@<X0>(uint64_t a1@<X8>)
{
  sub_11DD0();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  result = sub_11F80();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_AA40(uint64_t a1)
{
  v1[6] = a1;
  sub_12200();
  v1[7] = sub_121F0();
  v3 = sub_121E0();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_AAD8, v3, v2);
}

uint64_t sub_AAD8()
{
  v1 = v0[6];
  v2 = (v1 + *(type metadata accessor for SettingsCloudManageDataView() + 32));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  v0[10] = v0[4];
  v5 = async function pointer to EnrollmentAssetService.canDeleteCloudData()[1];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_ABC0;

  return EnrollmentAssetService.canDeleteCloudData()();
}

uint64_t sub_ABC0(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_AE34;
  }

  else
  {
    v5 = sub_ACD8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_ACD8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  if (v1 == *(v2 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__isDeletedDataAllowed))
  {
    *(v2 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__isDeletedDataAllowed) = v1;
  }

  else
  {
    v3 = *(v0 + 96);
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;
    *(v0 + 40) = v2;
    sub_BECC(&qword_1C968, type metadata accessor for SettingsCloudModel);
    sub_11AB0();
  }

  v5 = *(v0 + 64);
  v6 = *(v0 + 72);

  return _swift_task_switch(sub_B044, v5, v6);
}

uint64_t sub_AE34()
{
  v1 = v0[10];

  v2 = v0[8];
  v3 = v0[9];

  return _swift_task_switch(sub_AE98, v2, v3);
}

uint64_t sub_AE98()
{
  v1 = v0[7];

  if (qword_1C6D8 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = sub_11BC0();
  sub_20A8(v3, qword_1CF20);
  swift_errorRetain();
  v4 = sub_11BA0();
  v5 = sub_12260();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v4, v5, "Error updating isDeleteAllowed state: %{public}@", v8, 0xCu);
    sub_51F0(v9, &qword_1C970, &qword_12AF0);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_B044()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_B0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_11DB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (__chkstk_darwin)();
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_4AB4(&qword_1CCC0, &qword_13078);
  v10 = *(*(v9 - 8) + 64);
  v11 = (__chkstk_darwin)();
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v28 - v14;
  v16 = type metadata accessor for SettingsCloudManageDataView();
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + *(v16 + 36));
  if (v18 == 1)
  {
    v20 = *&v17;
  }

  else
  {
    sub_C218(v17, 0);
    sub_12250();
    v21 = sub_11EC0();
    v28[0] = v4;
    v22 = v21;
    sub_11B90();

    sub_11DA0();
    swift_getAtKeyPath();
    sub_BA58(v17, 0);
    (*(v5 + 8))(v8, v28[0]);
    v20 = *&v28[1];
  }

  [objc_allocWithZone(ISImageDescriptor) initWithSize:75.0 scale:{75.0, v20}];
  sub_11B20();
  v23 = sub_11ED0();
  v24 = &v15[*(v9 + 36)];
  *v24 = v23;
  *(v24 + 8) = xmmword_12E20;
  *(v24 + 24) = xmmword_12E20;
  v24[40] = 0;
  sub_C224(v15, v13, &qword_1CCC0, &qword_13078);
  *a2 = 0;
  *(a2 + 8) = 1;
  v25 = sub_4AB4(&qword_1CCC8, &unk_13080);
  sub_C224(v13, a2 + *(v25 + 48), &qword_1CCC0, &qword_13078);
  v26 = a2 + *(v25 + 64);
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_51F0(v15, &qword_1CCC0, &qword_13078);
  return sub_51F0(v13, &qword_1CCC0, &qword_13078);
}

void sub_B398(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  sub_12010();
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  v4 = type metadata accessor for SettingsCloudManageDataView();
  sub_C1B0(a1, a2 + v4[6], &qword_1CAA8, &unk_12E60);
  v5 = a2 + v4[7];
  sub_12010();
  *v5 = v11;
  *(v5 + 8) = v12;
  v6 = (a2 + v4[8]);
  type metadata accessor for SettingsCloudModel();
  sub_12010();
  *v6 = v11;
  v6[1] = v12;
  v7 = v4[9];
  v8 = objc_allocWithZone(ISIcon);
  v9 = sub_12140();
  v10 = [v8 initWithType:v9];

  *(a2 + v7) = v10;
}

uint64_t type metadata accessor for SettingsCloudManageDataView()
{
  result = qword_1CB08;
  if (!qword_1CB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4AB4(&qword_1CAA8, &unk_12E60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_B644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_4AB4(&qword_1CAA8, &unk_12E60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_B70C()
{
  sub_B884(319, &qword_1CB18, &type metadata for CGFloat, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_B884(319, &qword_1CB20, &type metadata for Bool, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_B8D4(319, &qword_1CB28, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_B8D4(319, &qword_1CB30, type metadata accessor for SettingsCloudModel, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_B938();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_B884(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_B8D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_B938()
{
  result = qword_1CB38;
  if (!qword_1CB38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1CB38);
  }

  return result;
}

uint64_t sub_B9A8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_B9F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsCloudManageDataView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BA58(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_BA64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsCloudManageDataView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_BAC8()
{
  v2 = *(type metadata accessor for SettingsCloudManageDataView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_53F0;

  return sub_AA40(v0 + v3);
}

unint64_t sub_BB94()
{
  result = qword_1CBA0;
  if (!qword_1CBA0)
  {
    sub_B9A8(&qword_1CB78, &qword_12EE0);
    sub_BE5C(&qword_1CBA8, &qword_1CBB0, &qword_12F18);
    sub_BECC(&qword_1CBB8, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CBA0);
  }

  return result;
}

uint64_t sub_BC7C(uint64_t a1)
{
  v2 = sub_4AB4(&qword_1CB78, &qword_12EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BCE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_BD24()
{
  result = qword_1CC18;
  if (!qword_1CC18)
  {
    sub_B9A8(&qword_1CC08, &qword_12F88);
    sub_BE5C(&qword_1CC20, &qword_1CC28, &qword_12F98);
    sub_BE5C(&qword_1CC30, &qword_1CC38, &qword_12FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CC18);
  }

  return result;
}

unint64_t sub_BE08()
{
  result = qword_1CC40;
  if (!qword_1CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CC40);
  }

  return result;
}

uint64_t sub_BE5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_B9A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_BECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_BF14()
{
  v2 = *(type metadata accessor for SettingsCloudManageDataView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_4BF0;

  return sub_A15C(v0 + v3);
}

uint64_t sub_BFE0()
{
  v1 = type metadata accessor for SettingsCloudManageDataView();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_BA58(*(v0 + v4), *(v0 + v4 + 8));
  v6 = *(v0 + v4 + 24);

  v7 = v1[6];
  sub_4AB4(&qword_1CA40, &qword_12BC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_11C70();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = *(v5 + v1[7] + 8);

  v11 = (v5 + v1[8]);
  v12 = *v11;

  v13 = v11[1];

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_C148()
{
  v1 = *(type metadata accessor for SettingsCloudManageDataView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_98DC(v2);
}

uint64_t sub_C1B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4AB4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_C218(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_C224(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4AB4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_C28C()
{
  sub_B9A8(&qword_1CB80, &qword_12EE8);
  sub_B9A8(&qword_1CB78, &qword_12EE0);
  sub_BB94();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_C348(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4AB4(&qword_1CAA8, &unk_12E60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_C418(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_4AB4(&qword_1CAA8, &unk_12E60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SettingsCloudView()
{
  result = qword_1CD28;
  if (!qword_1CD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_C514()
{
  sub_C660(319, &qword_1CB30, type metadata accessor for SettingsCloudModel, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_C660(319, &qword_1CB28, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_C6C4(319, &qword_1CB18);
      if (v2 <= 0x3F)
      {
        sub_C6C4(319, &unk_1CD38);
        if (v3 <= 0x3F)
        {
          sub_B938();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_C660(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_C6C4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_11C80();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

double sub_C72C()
{
  v1 = sub_11DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for SettingsCloudView() + 24));
  v7 = *v6;
  if (v6[8] == 1)
  {
    return *v6;
  }

  sub_12250();
  v9 = sub_11EC0();
  sub_11B90();

  sub_11DA0();
  swift_getAtKeyPath();
  sub_BA58(v7, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t sub_C888@<X0>(uint64_t *a1@<X2>, _BYTE *a2@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  swift_getKeyPath();
  sub_10CF0(&qword_1C968, type metadata accessor for SettingsCloudModel);
  sub_11AC0();

  v3 = *(v5 + 24);

  *a2 = v3;
  return result;
}

uint64_t sub_C960(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SettingsCloudView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_4AB4(&qword_1C960, &qword_12DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  LOBYTE(a1) = *a1;
  v14 = sub_12230();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1008C(a4, v9);
  sub_12200();
  v15 = sub_121F0();
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = v16 + v8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = &protocol witness table for MainActor;
  sub_10254(v9, v18 + v16);
  *(v18 + v17) = a1;
  sub_CE8C(0, 0, v13, &unk_13248, v18);
}

uint64_t sub_CB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 40) = a4;
  sub_12200();
  *(v5 + 48) = sub_121F0();
  v7 = sub_121E0();
  *(v5 + 56) = v7;
  *(v5 + 64) = v6;

  return _swift_task_switch(sub_CBCC, v7, v6);
}

uint64_t sub_CBCC()
{
  v1 = *(v0 + 40);
  v3 = *v1;
  v2 = v1[1];
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  *(v0 + 72) = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_CC9C;
  v5 = *(v0 + 96);

  return sub_3BEC(v5, 1);
}

uint64_t sub_CC9C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_CE1C;
  }

  else
  {
    v7 = v2[9];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_CDB8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_CDB8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_CE1C()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_CE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_4AB4(&qword_1C960, &qword_12DC0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_C224(a3, v24 - v10, &qword_1C960, &qword_12DC0);
  v12 = sub_12230();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_51F0(v11, &qword_1C960, &qword_12DC0);
  }

  else
  {
    sub_12220();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_121E0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_12190() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_51F0(a3, &qword_1C960, &qword_12DC0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_51F0(a3, &qword_1C960, &qword_12DC0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_D138@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v33 = sub_11CA0();
  v2 = *(v33 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v33);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsCloudView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_4AB4(&qword_1CD78, &qword_130F8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v32 - v11);
  v34 = sub_4AB4(&qword_1CD80, &qword_13100);
  v13 = *(v34 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v34);
  v16 = &v32 - v15;
  *v12 = sub_120E0();
  v12[1] = v17;
  v18 = sub_4AB4(&qword_1CD88, &qword_13108);
  sub_D54C(v1, v12 + *(v18 + 44));
  sub_1008C(v1, &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  sub_10254(&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v21 = (v12 + *(v9 + 36));
  v22 = v21 + *(sub_11CC0() + 20);
  sub_12210();
  *v21 = &unk_13120;
  v21[1] = v20;
  sub_11C90();
  v23 = sub_10384();
  sub_11FC0();
  (*(v2 + 8))(v5, v33);
  sub_51F0(v12, &qword_1CD78, &qword_130F8);
  sub_11DD0();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v26 = sub_11F80();
  v28 = v27;
  LOBYTE(v8) = v29;
  v36 = v9;
  v37 = v23;
  swift_getOpaqueTypeConformance2();
  v30 = v34;
  sub_11FE0();
  sub_BCE4(v26, v28, v8 & 1);

  return (*(v13 + 8))(v16, v30);
}

uint64_t sub_D54C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4AB4(&qword_1CDA8, &qword_13138);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v22[-v10];
  v23 = a1;
  sub_4AB4(&qword_1CDB0, &qword_13140);
  sub_BE5C(&qword_1CDB8, &qword_1CDB0, &qword_13140);
  sub_11F40();
  v12 = sub_11EE0();
  sub_11C60();
  v13 = &v11[*(v5 + 44)];
  *v13 = v12;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  v18 = a1[1];
  v25 = *a1;
  v26 = v18;
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  v19 = v24;
  sub_C224(v11, v9, &qword_1CDA8, &qword_13138);
  sub_C224(v9, a2, &qword_1CDA8, &qword_13138);
  v20 = (a2 + *(sub_4AB4(&qword_1CDC0, &qword_13148) + 48));
  *v20 = v19;
  v20[1] = 0;

  sub_51F0(v11, &qword_1CDA8, &qword_13138);

  return sub_51F0(v9, &qword_1CDA8, &qword_13138);
}

uint64_t sub_D754@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_4AB4(&qword_1CDC8, &qword_13150);
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  v5 = __chkstk_darwin(v3);
  v59 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58 = &v49 - v7;
  v56 = sub_4AB4(&qword_1CDD0, &qword_13158);
  v52 = *(v56 - 8);
  v8 = *(v52 + 64);
  __chkstk_darwin(v56);
  v51 = &v49 - v9;
  v54 = sub_4AB4(&qword_1CDD8, &qword_13160);
  v10 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v12 = &v49 - v11;
  v55 = sub_4AB4(&qword_1CDE0, &qword_13168);
  v50 = *(v55 - 8);
  v13 = *(v50 + 64);
  __chkstk_darwin(v55);
  v15 = &v49 - v14;
  v16 = sub_11DB0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_4AB4(&qword_1CDE8, &qword_13170);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v57 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v49 - v25;
  v27 = type metadata accessor for SettingsCloudView();
  v28 = a1 + *(v27 + 28);
  v29 = *v28;
  if (v28[8] != 1)
  {

    sub_12250();
    v35 = sub_11EC0();
    sub_11B90();

    sub_11DA0();
    swift_getAtKeyPath();
    sub_BA58(v29, 0);
    v27 = (*(v17 + 8))(v20, v16);
    if (LOBYTE(v63[0]) != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    __chkstk_darwin(v27);
    v30 = a1;
    *(&v49 - 2) = a1;
    sub_4AB4(&qword_1CE10, &qword_13180);
    sub_BE5C(&qword_1CE08, &qword_1CE10, &qword_13180);
    sub_120C0();
    v36 = v50;
    v37 = v55;
    (*(v50 + 16))(v12, v15, v55);
    swift_storeEnumTagMultiPayload();
    sub_1047C();
    sub_10538();
    sub_11E10();
    v34 = (*(v36 + 8))(v15, v37);
    goto LABEL_6;
  }

  if (v29)
  {
    goto LABEL_5;
  }

LABEL_3:
  __chkstk_darwin(v27);
  v30 = a1;
  *(&v49 - 2) = a1;
  sub_4AB4(&qword_1CDF0, &qword_13178);
  sub_BE5C(&qword_1CDF8, &qword_1CDF0, &qword_13178);
  v31 = v51;
  sub_120C0();
  v32 = v52;
  v33 = v56;
  (*(v52 + 16))(v12, v31, v56);
  swift_storeEnumTagMultiPayload();
  sub_1047C();
  sub_10538();
  sub_11E10();
  v34 = (*(v32 + 8))(v31, v33);
LABEL_6:
  v53 = v26;
  __chkstk_darwin(v34);
  *(&v49 - 2) = v30;
  sub_FAD0(v30, v63);
  sub_4AB4(&qword_1CE20, &qword_13188);
  sub_4AB4(&qword_1CE28, &qword_13190);
  sub_105FC();
  sub_10798();
  v38 = v58;
  sub_120D0();
  v39 = v26;
  v40 = v57;
  sub_C224(v39, v57, &qword_1CDE8, &qword_13170);
  v42 = v61;
  v41 = v62;
  v43 = *(v61 + 16);
  v44 = v59;
  v43(v59, v38, v62);
  v45 = v60;
  sub_C224(v40, v60, &qword_1CDE8, &qword_13170);
  v46 = sub_4AB4(&qword_1CE70, &qword_131B8);
  v43((v45 + *(v46 + 48)), v44, v41);
  v47 = *(v42 + 8);
  v47(v38, v41);
  sub_51F0(v53, &qword_1CDE8, &qword_13170);
  v47(v44, v41);
  return sub_51F0(v40, &qword_1CDE8, &qword_13170);
}

uint64_t sub_DF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_11DF0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_4AB4(&qword_1CE78, &qword_131C0);
  return sub_DF78(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_DF78@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v66 = a1;
  v73 = a2;
  v2 = type metadata accessor for SettingsCloudView();
  v67 = *(v2 - 8);
  v65 = *(v67 + 64);
  __chkstk_darwin(v2 - 8);
  v64 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_11AA0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v63[2] = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_12130();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v63[1] = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_4AB4(&qword_1CE80, &qword_131C8);
  v11 = *(v10 - 8);
  v71 = v10 - 8;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v72 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v75 = v63 - v15;
  v70 = sub_120A0();
  v78 = *(v70 - 8);
  v16 = v78[8];
  v17 = __chkstk_darwin(v70);
  v69 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v74 = v63 - v19;
  v68 = sub_12110();
  v77 = *(v68 - 8);
  v20 = v77[8];
  v21 = __chkstk_darwin(v68);
  v76 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v79 = v63 - v23;
  sub_11DD0();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = objc_opt_self();
  v26 = [v25 bundleForClass:ObjCClassFromMetadata];
  sub_11F80();
  sub_11DD0();
  v27 = [v25 bundleForClass:ObjCClassFromMetadata];
  sub_11F80();
  sub_12100();
  v28 = v74;
  sub_12090();
  sub_12120();
  v29 = [v25 bundleForClass:ObjCClassFromMetadata];
  sub_11A90();
  v82 = sub_12180();
  v83 = v30;
  v31 = v66;
  v32 = v64;
  sub_1008C(v66, v64);
  sub_12200();
  v33 = sub_121F0();
  v34 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = &protocol witness table for MainActor;
  sub_10254(v32, v35 + v34);
  sub_1008C(v31, v32);
  v36 = sub_121F0();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = &protocol witness table for MainActor;
  sub_10254(v32, v37 + v34);
  sub_12080();
  sub_BE08();
  v38 = v75;
  sub_12060();
  v39 = v31[1];
  v80 = *v31;
  v81 = v39;
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  v40 = v82;
  swift_getKeyPath();
  v80 = v40;
  sub_10CF0(&qword_1C968, type metadata accessor for SettingsCloudModel);
  sub_11AC0();

  v41 = *(v40 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__setSyncInProgress);

  KeyPath = swift_getKeyPath();
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  v44 = (v38 + *(sub_4AB4(&qword_1CE88, &qword_13228) + 36));
  *v44 = KeyPath;
  v44[1] = sub_10904;
  v44[2] = v43;
  LOBYTE(KeyPath) = sub_11EE0();
  sub_11C60();
  v45 = v38 + *(v71 + 44);
  *v45 = KeyPath;
  *(v45 + 8) = v46;
  *(v45 + 16) = v47;
  *(v45 + 24) = v48;
  *(v45 + 32) = v49;
  *(v45 + 40) = 0;
  v50 = v76;
  v51 = v77[2];
  v52 = v68;
  v51(v76, v79, v68);
  v53 = v78[2];
  v54 = v69;
  v55 = v28;
  v56 = v70;
  v53(v69, v55, v70);
  v57 = v72;
  sub_C224(v38, v72, &qword_1CE80, &qword_131C8);
  v58 = v73;
  v51(v73, v50, v52);
  v59 = sub_4AB4(&qword_1CE90, &unk_13230);
  v53(&v58[*(v59 + 48)], v54, v56);
  sub_C224(v57, &v58[*(v59 + 64)], &qword_1CE80, &qword_131C8);
  sub_51F0(v75, &qword_1CE80, &qword_131C8);
  v60 = v78[1];
  v60(v74, v56);
  v61 = v77[1];
  v61(v79, v52);
  sub_51F0(v57, &qword_1CE80, &qword_131C8);
  v60(v54, v56);
  return (v61)(v76, v52);
}

uint64_t sub_E870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_11DF0();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = sub_4AB4(&qword_1CED0, &qword_132E8);
  return sub_E8C8(a1, a2 + *(v4 + 44));
}

uint64_t sub_E8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = type metadata accessor for SettingsCloudView();
  v4 = v3 - 8;
  v113 = *(v3 - 8);
  v112 = *(v113 + 64);
  __chkstk_darwin(v3);
  v111 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_4AB4(&qword_1CE88, &qword_13228);
  v7 = *(v6 - 8);
  v114 = v6 - 8;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v116 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v127 = &v104 - v11;
  v115 = sub_120A0();
  v130 = *(v115 - 8);
  v12 = v130[8];
  v13 = __chkstk_darwin(v115);
  v129 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v131 = &v104 - v15;
  v16 = sub_4AB4(&qword_1CCB8, &qword_13070);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v122 = &v104 - v18;
  v19 = sub_11AA0();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v108 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_12130();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v106 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_4AB4(&qword_1CCC0, &qword_13078);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  v28 = __chkstk_darwin(v25);
  v126 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v104 - v30;
  v32 = *(v4 + 40);
  v109 = a1;
  v33 = *(a1 + v32);
  [objc_allocWithZone(ISImageDescriptor) initWithSize:50.0 scale:{50.0, sub_C72C()}];
  v128 = v31;
  sub_11B20();
  v34 = sub_11ED0();
  v35 = &v31[*(v26 + 44)];
  *v35 = v34;
  *(v35 + 1) = 0x4010000000000000;
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  *(v35 + 4) = 0;
  v35[40] = 0;
  sub_11DD0();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v118 = objc_opt_self();
  v105 = ObjCClassFromMetadata;
  v37 = [v118 bundleForClass:ObjCClassFromMetadata];
  v38 = sub_11F80();
  v40 = v39;
  v42 = v41;
  sub_11F20();
  v43 = sub_11F70();
  v45 = v44;
  v47 = v46;

  sub_BCE4(v38, v40, v42 & 1);

  sub_11F00();
  v48 = sub_11F50();
  v50 = v49;
  v52 = v51;
  sub_BCE4(v43, v45, v47 & 1);

  LODWORD(v132) = sub_11E20();
  v124 = sub_11F60();
  v123 = v53;
  v110 = v54;
  v125 = v55;
  sub_BCE4(v48, v50, v52 & 1);

  sub_12120();
  v56 = [v118 bundleForClass:ObjCClassFromMetadata];
  sub_11A90();
  sub_12180();
  sub_11DE0();
  v57 = sub_11F80();
  v59 = v58;
  v61 = v60;
  LODWORD(v132) = sub_11E20();
  v62 = sub_11F60();
  v64 = v63;
  LOBYTE(v38) = v65;
  sub_BCE4(v57, v59, v61 & 1);

  v66 = sub_11EF0();
  v67 = v122;
  (*(*(v66 - 8) + 56))(v122, 1, 1, v66);
  sub_11F10();
  sub_51F0(v67, &qword_1CCB8, &qword_13070);
  v121 = sub_11F70();
  v120 = v68;
  v107 = v69;
  v122 = v70;

  sub_BCE4(v62, v64, v38 & 1);

  KeyPath = swift_getKeyPath();
  sub_12090();
  sub_12120();
  v71 = [v118 bundleForClass:v105];
  sub_11A90();
  v134 = sub_12180();
  v135 = v72;
  v73 = v109;
  v74 = v111;
  sub_1008C(v109, v111);
  sub_12200();
  v75 = sub_121F0();
  v76 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = v75;
  *(v77 + 24) = &protocol witness table for MainActor;
  sub_10254(v74, v77 + v76);
  sub_1008C(v73, v74);
  v78 = sub_121F0();
  v79 = swift_allocObject();
  *(v79 + 16) = v78;
  *(v79 + 24) = &protocol witness table for MainActor;
  sub_10254(v74, v79 + v76);
  sub_12080();
  sub_BE08();
  v80 = v127;
  sub_12060();
  v81 = v73[1];
  v132 = *v73;
  v133 = v81;
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  v82 = v134;
  swift_getKeyPath();
  v132 = v82;
  sub_10CF0(&qword_1C968, type metadata accessor for SettingsCloudModel);
  sub_11AC0();

  LOBYTE(v64) = *(v82 + OBJC_IVAR____TtC17DeviceEnrollments18SettingsCloudModel__setSyncInProgress);

  v83 = swift_getKeyPath();
  v84 = swift_allocObject();
  *(v84 + 16) = v64;
  v85 = (v80 + *(v114 + 44));
  *v85 = v83;
  v85[1] = sub_11174;
  v85[2] = v84;
  v86 = v126;
  sub_C224(v128, v126, &qword_1CCC0, &qword_13078);
  LOBYTE(v132) = v110 & 1;
  LOBYTE(v134) = v107 & 1;
  v118 = v130[2];
  v87 = v129;
  v88 = v115;
  (v118)(v129, v131, v115);
  v89 = v116;
  sub_C224(v80, v116, &qword_1CE88, &qword_13228);
  v90 = v117;
  sub_C224(v86, v117, &qword_1CCC0, &qword_13078);
  v91 = sub_4AB4(&qword_1CED8, &unk_13320);
  v92 = v90 + v91[12];
  LOBYTE(v86) = v132;
  v94 = v124;
  v93 = v125;
  v95 = v123;
  *v92 = v124;
  *(v92 + 8) = v95;
  *(v92 + 16) = v86;
  *(v92 + 24) = v93;
  v96 = v90 + v91[16];
  v97 = v134;
  LODWORD(v114) = v134;
  v98 = v120;
  *v96 = v121;
  *(v96 + 8) = v98;
  *(v96 + 16) = v97;
  v99 = KeyPath;
  *(v96 + 24) = v122;
  *(v96 + 32) = v99;
  *(v96 + 40) = 1;
  (v118)(v90 + v91[20], v87, v88);
  sub_C224(v89, v90 + v91[24], &qword_1CE88, &qword_13228);
  sub_110A8(v94, v95, v86);

  v100 = v121;
  v101 = v120;
  sub_110A8(v121, v120, v114);

  sub_51F0(v127, &qword_1CE88, &qword_13228);
  v102 = v130[1];
  v102(v131, v88);
  sub_51F0(v128, &qword_1CCC0, &qword_13078);
  sub_51F0(v89, &qword_1CE88, &qword_13228);
  v102(v129, v88);
  sub_BCE4(v100, v101, v134);

  sub_BCE4(v124, v123, v132);

  return sub_51F0(v126, &qword_1CCC0, &qword_13078);
}

uint64_t sub_F5B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_4AB4(&qword_1CAA8, &unk_12E60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v30 - v5);
  v7 = type metadata accessor for SettingsCloudManageDataView();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4AB4(&qword_1CE40, &qword_13198);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = a1[1];
  v32 = *a1;
  v17 = v32;
  v33 = v16;
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  *v6 = swift_getKeyPath();
  sub_4AB4(&qword_1CA40, &qword_12BC8);
  swift_storeEnumTagMultiPayload();
  sub_B398(v6, v10);
  sub_4AB4(&qword_1CE98, &qword_132A8);
  sub_10BB4();
  sub_10CF0(&qword_1CEC8, type metadata accessor for SettingsCloudManageDataView);
  sub_11CD0();
  v32 = v17;
  v33 = v16;
  sub_12020();
  v18 = v31;
  swift_getKeyPath();
  v32 = v18;
  sub_10CF0(&qword_1C968, type metadata accessor for SettingsCloudModel);
  sub_11AC0();

  v19 = *(v18 + 24);

  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = (v19 & 1) == 0;
  v22 = &v15[*(v12 + 44)];
  *v22 = KeyPath;
  v22[1] = sub_11174;
  v22[2] = v21;
  v32 = v17;
  v33 = v16;
  sub_12020();
  v23 = v31;
  swift_getKeyPath();
  v32 = v23;
  sub_11AC0();

  LODWORD(v16) = *(v23 + 24);

  if (v16)
  {
    v24 = 0;
  }

  else
  {
    v24 = 2;
  }

  v25 = swift_getKeyPath();
  v26 = v15;
  v27 = v30;
  sub_10D8C(v26, v30);
  result = sub_4AB4(&qword_1CE20, &qword_13188);
  v29 = v27 + *(result + 36);
  *v29 = v25;
  *(v29 + 8) = v24;
  return result;
}

__n128 sub_F978@<Q0>(uint64_t a1@<X8>)
{
  sub_11DD0();
  _s27SettingsCloudBundleSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_11F80();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_120F0();
  sub_11CE0();
  v11 = sub_11E20();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  *(a1 + 96) = v17;
  *(a1 + 112) = v18;
  *(a1 + 128) = v19;
  *(a1 + 32) = v13;
  *(a1 + 48) = v14;
  result = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v16;
  *(a1 + 144) = v11;
  return result;
}

uint64_t sub_FAD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = *a1;
  v22 = a1[1];
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  swift_getKeyPath();
  sub_10CF0(&qword_1C968, type metadata accessor for SettingsCloudModel);
  sub_11AC0();

  v3 = *(v20 + 24);

  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    sub_11DD0();
    _s27SettingsCloudBundleSentinelCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v11 = sub_11F80();
    v13 = v12;
    v15 = v14;
    sub_11F30();
    v5 = sub_11F70();
    v6 = v16;
    v18 = v17;
    v8 = v19;

    sub_BCE4(v11, v13, v15 & 1);

    v7 = v18 & 1;
  }

  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

uint64_t sub_FCCC(uint64_t a1)
{
  v1[5] = a1;
  sub_12200();
  v1[6] = sub_121F0();
  v3 = sub_121E0();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_FD64, v3, v2);
}

uint64_t sub_FD64()
{
  if (qword_1C6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_11BC0();
  sub_20A8(v1, qword_1CF20);
  v2 = sub_11BA0();
  v3 = sub_12260();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Refreshing sync state on appear", v4, 2u);
  }

  v5 = v0[5];

  v6 = v5[1];
  v0[2] = *v5;
  v0[3] = v6;
  sub_4AB4(&qword_1CBC0, &unk_12F20);
  sub_12020();
  v0[9] = v0[4];
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_FEE4;

  return sub_3980();
}

uint64_t sub_FEE4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return _swift_task_switch(sub_10028, v5, v4);
}

uint64_t sub_10028()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1008C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsCloudView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100F0()
{
  v1 = type metadata accessor for SettingsCloudView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = v1[5];
  sub_4AB4(&qword_1CA40, &qword_12BC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_11C70();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  sub_BA58(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  sub_BA58(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsCloudView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_102B8()
{
  v2 = *(type metadata accessor for SettingsCloudView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_4BF0;

  return sub_FCCC(v0 + v3);
}

unint64_t sub_10384()
{
  result = qword_1CD90;
  if (!qword_1CD90)
  {
    sub_B9A8(&qword_1CD78, &qword_130F8);
    sub_BE5C(&qword_1CD98, &qword_1CDA0, &unk_13128);
    sub_10CF0(&qword_1CBB8, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CD90);
  }

  return result;
}

unint64_t sub_1047C()
{
  result = qword_1CE00;
  if (!qword_1CE00)
  {
    sub_B9A8(&qword_1CDE0, &qword_13168);
    sub_BE5C(&qword_1CE08, &qword_1CE10, &qword_13180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE00);
  }

  return result;
}

unint64_t sub_10538()
{
  result = qword_1CE18;
  if (!qword_1CE18)
  {
    sub_B9A8(&qword_1CDD0, &qword_13158);
    sub_BE5C(&qword_1CDF8, &qword_1CDF0, &qword_13178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE18);
  }

  return result;
}

unint64_t sub_105FC()
{
  result = qword_1CE30;
  if (!qword_1CE30)
  {
    sub_B9A8(&qword_1CE20, &qword_13188);
    sub_106B4();
    sub_BE5C(&qword_1CE58, &qword_1CE60, &qword_131B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE30);
  }

  return result;
}

unint64_t sub_106B4()
{
  result = qword_1CE38;
  if (!qword_1CE38)
  {
    sub_B9A8(&qword_1CE40, &qword_13198);
    sub_BE5C(&qword_1CE48, &qword_1CE50, &unk_131A0);
    sub_BE5C(&qword_1CC30, &qword_1CC38, &qword_12FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE38);
  }

  return result;
}

unint64_t sub_10798()
{
  result = qword_1CE68;
  if (!qword_1CE68)
  {
    sub_B9A8(&qword_1CE28, &qword_13190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE68);
  }

  return result;
}

uint64_t sub_10830@<X0>(_BYTE *a1@<X8>)
{
  result = sub_11D80();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10860@<X0>(_BYTE *a1@<X8>)
{
  result = sub_11D80();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1091C()
{
  v1 = type metadata accessor for SettingsCloudView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 8);

  v9 = v1[5];
  sub_4AB4(&qword_1CA40, &qword_12BC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_11C70();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
    v11 = *(v6 + v9);
  }

  sub_BA58(*(v6 + v1[6]), *(v6 + v1[6] + 8));
  sub_BA58(*(v6 + v1[7]), *(v6 + v1[7] + 8));

  return _swift_deallocObject(v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_10A8C(uint64_t a1)
{
  v4 = *(type metadata accessor for SettingsCloudView() - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_4BF0;

  return sub_CB30(a1, v5, v6, v7, v8);
}

unint64_t sub_10BB4()
{
  result = qword_1CEA0;
  if (!qword_1CEA0)
  {
    sub_B9A8(&qword_1CE98, &qword_132A8);
    sub_10C6C();
    sub_BE5C(&qword_1CEB8, &qword_1CEC0, &qword_132B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CEA0);
  }

  return result;
}

unint64_t sub_10C6C()
{
  result = qword_1CEA8;
  if (!qword_1CEA8)
  {
    sub_B9A8(&qword_1CEB0, &qword_132B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CEA8);
  }

  return result;
}

uint64_t sub_10CF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10D38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_11D50();
  *a1 = result;
  return result;
}

uint64_t sub_10D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4AB4(&qword_1CE40, &qword_13198);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10DFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_11D30();
  *a1 = result;
  return result;
}

uint64_t sub_10E54@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsCloudView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_C888(v6, a1);
}

uint64_t sub_10EC8()
{
  v1 = type metadata accessor for SettingsCloudView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 8);

  v9 = v1[5];
  sub_4AB4(&qword_1CA40, &qword_12BC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_11C70();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
    v11 = *(v6 + v9);
  }

  sub_BA58(*(v6 + v1[6]), *(v6 + v1[6] + 8));
  sub_BA58(*(v6 + v1[7]), *(v6 + v1[7] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_11034(_BYTE *a1)
{
  v3 = *(type metadata accessor for SettingsCloudView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_C960(a1, v4, v5, v6);
}

uint64_t sub_110A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_110B8()
{
  sub_B9A8(&qword_1CD80, &qword_13100);
  sub_B9A8(&qword_1CD78, &qword_130F8);
  sub_10384();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t DeviceEnrollmentsBundle.toggle.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle__toggle);
  v4 = *(v0 + OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle__toggle + 8);
  sub_4AB4(&qword_1CC60, &qword_13330);
  sub_12020();
  return v2;
}

uint64_t DeviceEnrollmentsBundle.toggle.setter()
{
  v2 = *(v0 + OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle__toggle);
  v3 = *(v0 + OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle__toggle + 8);
  sub_4AB4(&qword_1CC60, &qword_13330);
  return sub_12030();
}

void (*DeviceEnrollmentsBundle.toggle.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1 + OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle__toggle;
  v6 = *(v1 + OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle__toggle);
  *(v3 + 50) = v6;
  v7 = *(v5 + 8);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = sub_4AB4(&qword_1CC60, &qword_13330);
  sub_12020();
  return sub_11338;
}

void sub_11338(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v4;
  *(v1 + 49) = v2;
  sub_12030();

  free(v1);
}

uint64_t DeviceEnrollmentsBundle.$toggle.getter()
{
  v3 = *(v0 + OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle__toggle);
  v4 = *(v0 + OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle__toggle + 8);
  sub_4AB4(&qword_1CC60, &qword_13330);
  sub_12040();
  return v2;
}

id DeviceEnrollmentsBundle.__allocating_init(account:dataclass:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle__toggle];
  v11 = 0;
  sub_12010();
  v7 = v13;
  *v6 = v12;
  *(v6 + 1) = v7;
  *&v5[OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle_dataclass] = a2;
  v10.receiver = v5;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, "init");

  return v8;
}

id DeviceEnrollmentsBundle.init(account:dataclass:)(void *a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle__toggle];
  v10 = 0;
  sub_12010();
  v6 = v12;
  *v5 = v11;
  *(v5 + 1) = v6;
  *&v2[OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle_dataclass] = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for DeviceEnrollmentsBundle();
  v7 = objc_msgSendSuper2(&v9, "init");

  return v7;
}

id DeviceEnrollmentsBundle.init(accountManager:dataclass:)(void *a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle__toggle];
  v11 = 0;
  sub_12010();
  v6 = v13;
  *v5 = v12;
  *(v5 + 1) = v6;
  if (a2)
  {
    *&v2[OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle_dataclass] = a2;
    v10.receiver = v2;
    v10.super_class = type metadata accessor for DeviceEnrollmentsBundle();
    v7 = objc_msgSendSuper2(&v10, "init");
  }

  else
  {

    v8 = *(v5 + 1);

    type metadata accessor for DeviceEnrollmentsBundle();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v7;
}

id DeviceEnrollmentsBundle.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceEnrollmentsBundle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceEnrollmentsBundle();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_117A4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceEnrollmentsBundle();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle__toggle];
  v11 = 0;
  sub_12010();
  v7 = v13;
  *v6 = v12;
  *(v6 + 1) = v7;
  *&v5[OBJC_IVAR____TtC17DeviceEnrollments23DeviceEnrollmentsBundle_dataclass] = a2;
  v10.receiver = v5;
  v10.super_class = v4;
  v8 = objc_msgSendSuper2(&v10, "init");

  return v8;
}

uint64_t _s17DeviceEnrollments0aB6BundleC5sheet7SwiftUI7AnyViewVvg_0()
{
  v0 = type metadata accessor for SettingsCloudView();
  v1 = *(*(v0 - 1) + 64);
  __chkstk_darwin(v0);
  v3 = (v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for SettingsCloudModel();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v16[1] = sub_27BC();
  sub_12010();
  v7 = v16[3];
  *v3 = v16[2];
  v3[1] = v7;
  v8 = v0[5];
  *(v3 + v8) = swift_getKeyPath();
  sub_4AB4(&qword_1CA40, &qword_12BC8);
  swift_storeEnumTagMultiPayload();
  v9 = v3 + v0[6];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = v3 + v0[7];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = v0[8];
  v12 = objc_allocWithZone(ISIcon);
  v13 = sub_12140();
  v14 = [v12 initWithType:v13];

  *(v3 + v11) = v14;
  sub_11A38();
  return sub_12070();
}

unint64_t sub_11A38()
{
  result = qword_1CF18;
  if (!qword_1CF18)
  {
    type metadata accessor for SettingsCloudView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CF18);
  }

  return result;
}