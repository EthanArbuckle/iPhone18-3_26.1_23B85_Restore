void sub_1744(id a1)
{
  qword_11548 = os_log_create("com.apple.urchin", "settings");

  _objc_release_x1();
}

id sub_186C(uint64_t a1)
{
  [*(a1 + 32) setSelectedLocation:?];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

void sub_1DC8(id a1)
{
  qword_11550 = objc_alloc_init(UBSLocalizedString);

  _objc_release_x1();
}

void sub_1EE4(id a1)
{
  qword_11568 = os_log_create("com.apple.urchin", "settings");

  _objc_release_x1();
}

id sub_1FF4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setLocations:a2];
  [*(a1 + 32) setSelectedLocation:v6];

  v7 = *(a1 + 32);

  return [v7 reloadSpecifiers];
}

id sub_2994(uint64_t a1, void *a2)
{
  v3 = [a2 id];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_2AAC()
{
  result = [objc_allocWithZone(type metadata accessor for LocationWrapper()) init];
  qword_116A0 = result;
  return result;
}

id sub_2B3C()
{
  v1 = v0;
  sub_606C();
  v2 = sub_612C();
  v3 = sub_611C();
  v4 = &v1[OBJC_IVAR___USLocationWrapper_staticLocationProvider];
  v4[3] = v2;
  v4[4] = &protocol witness table for SyncedPreferenceManager;
  *v4 = v3;
  v5 = &v1[OBJC_IVAR___USLocationWrapper_currentLocationProvider];
  *&v1[OBJC_IVAR___USLocationWrapper_currentLocationProvider + 24] = &type metadata for DummyCurrentLocationProvider;
  *(v5 + 32) = sub_5E04();
  sub_610C();
  sub_5E58(v5, v12);
  sub_5E58(v4, v11);
  v9 = v2;
  v10 = &protocol witness table for SyncedPreferenceManager;
  v8 = sub_611C();
  *&v1[OBJC_IVAR___USLocationWrapper_selectedLocationManager] = sub_60FC();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for LocationWrapper();
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_2C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = *(*(sub_49F4(&qword_11508, &qword_7340) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v8 = *(*(sub_49F4(&qword_11510, &qword_7380) - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v9 = sub_614C();
  v6[14] = v9;
  v10 = *(v9 - 8);
  v6[15] = v10;
  v11 = *(v10 + 64) + 15;
  v6[16] = swift_task_alloc();
  v12 = sub_60CC();
  v6[17] = v12;
  v13 = *(v12 - 8);
  v6[18] = v13;
  v14 = *(v13 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_2E3C, 0, 0);
}

uint64_t sub_2E3C()
{
  v1 = (*(v0 + 64) + OBJC_IVAR___USLocationWrapper_staticLocationProvider);
  v2 = v1[3];
  v3 = v1[4];
  sub_575C(v1, v2);
  v4 = async function pointer to dispatch thunk of StaticLocationStore.getLocations()[1];
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_2EFC;

  return dispatch thunk of StaticLocationStore.getLocations()(v2, v3);
}

uint64_t sub_2EFC(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_2FFC, 0, 0);
}

uint64_t sub_2FFC()
{
  receiver = v0[11].receiver;
  v2 = receiver[2];
  if (v2)
  {
    v3 = v0[9].receiver;
    sub_62AC();
    v5 = v3[2];
    v3 += 2;
    v4 = v5;
    v6 = receiver + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v28 = v3[7];
    v7 = (v3 - 1);
    do
    {
      super_class = v0[9].super_class;
      v9 = v0[10].receiver;
      v10 = v0[8].super_class;
      v4(v9, v6, v10);
      v4(super_class, v9, v10);
      v11 = type metadata accessor for SettingLocation();
      v12 = objc_allocWithZone(v11);
      v13 = sub_60BC();
      v14 = &v12[OBJC_IVAR____TtC20UrchinBridgeSettings15SettingLocation_id];
      *v14 = v13;
      v14[1] = v15;
      v16 = sub_60AC();
      v17 = &v12[OBJC_IVAR____TtC20UrchinBridgeSettings15SettingLocation_name];
      *v17 = v16;
      v17[1] = v18;
      v0[1].receiver = v12;
      v0[1].super_class = v11;
      objc_msgSendSuper2(v0 + 1, "init");
      v19 = *v7;
      (*v7)(super_class, v10);
      v19(v9, v10);
      sub_628C();
      v20 = _swiftEmptyArrayStorage[2];
      sub_62BC();
      sub_62CC();
      sub_629C();
      v6 += v28;
      --v2;
    }

    while (v2);
  }

  v21 = v0[11].receiver;

  v0[11].super_class = _swiftEmptyArrayStorage;
  v22 = v0[4].receiver + OBJC_IVAR___USLocationWrapper_currentLocationProvider;
  v23 = v22[3];
  v24 = v22[4];
  sub_575C(v22, v23);
  v25 = async function pointer to dispatch thunk of CurrentLocationProvider.currentLocationAuthStatus()[1];
  v26 = swift_task_alloc();
  v0[12].receiver = v26;
  *v26 = v0;
  v26[1] = sub_323C;

  return dispatch thunk of CurrentLocationProvider.currentLocationAuthStatus()(v23, v24);
}

uint64_t sub_323C(int a1)
{
  v2 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_333C, 0, 0);
}

uint64_t sub_333C()
{
  v34 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 64);
  v3 = sub_621C();
  v4 = sub_605C();
  v5 = sub_620C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 216);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 136315394;
    v9 = sub_622C();
    v11 = sub_51B4(v9, v10, &v33);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v3 & 1;
    _os_log_impl(&dword_0, v4, v5, "Current location status: %s hasCurrentLocation: %{BOOL}d.", v7, 0x12u);
    sub_5EBC(v8);
  }

  v12 = *(v0 + 184);
  if (v3)
  {
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v15 = *(v0 + 112);
    sub_49F4(&qword_11518, &qword_7398);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_7260;
    v17 = sub_609C();
    v19 = v18;
    sub_613C();
    v20 = sub_619C();
    v22 = v21;
    (*(v14 + 8))(v13, v15);
    v23 = type metadata accessor for SettingLocation();
    v24 = objc_allocWithZone(v23);
    v25 = &v24[OBJC_IVAR____TtC20UrchinBridgeSettings15SettingLocation_id];
    *v25 = v17;
    v25[1] = v19;
    v26 = &v24[OBJC_IVAR____TtC20UrchinBridgeSettings15SettingLocation_name];
    *v26 = v20;
    v26[1] = v22;
    *(v0 + 48) = v24;
    *(v0 + 56) = v23;
    *(v16 + 32) = objc_msgSendSuper2((v0 + 48), "init");
    v33 = v16;
    sub_5964(v12);
    v12 = v33;
  }

  *(v0 + 200) = v12;
  v27 = *(*(v0 + 64) + OBJC_IVAR___USLocationWrapper_selectedLocationManager);
  v28 = *(&async function pointer to dispatch thunk of SelectedLocationManager.getSelectedLocation() + 1);
  v32 = (&async function pointer to dispatch thunk of SelectedLocationManager.getSelectedLocation() + async function pointer to dispatch thunk of SelectedLocationManager.getSelectedLocation());
  v29 = swift_task_alloc();
  *(v0 + 208) = v29;
  *v29 = v0;
  v29[1] = sub_3604;
  v30 = *(v0 + 104);

  return v32(v30);
}

uint64_t sub_3604()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return _swift_task_switch(sub_3700, 0, 0);
}

uint64_t sub_3700()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 96);
  sub_57A0(*(v0 + 104), v3, &qword_11510, &qword_7380);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_5808(*(v0 + 104), &qword_11510, &qword_7380);
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 160);
    v7 = *(v0 + 136);
    v8 = *(v0 + 144);
    v9 = *(v0 + 104);
    (*(v8 + 32))(v6, *(v0 + 96), v7);
    (*(v8 + 16))(v5, v6, v7);
    v10 = type metadata accessor for SettingLocation();
    v11 = objc_allocWithZone(v10);
    v12 = sub_60BC();
    v13 = &v11[OBJC_IVAR____TtC20UrchinBridgeSettings15SettingLocation_id];
    *v13 = v12;
    v13[1] = v14;
    v15 = sub_60AC();
    v16 = &v11[OBJC_IVAR____TtC20UrchinBridgeSettings15SettingLocation_name];
    *v16 = v15;
    v16[1] = v17;
    *(v0 + 32) = v11;
    *(v0 + 40) = v10;
    v4 = objc_msgSendSuper2((v0 + 32), "init");
    v18 = *(v8 + 8);
    v18(v5, v7);
    v18(v6, v7);
    sub_5808(v9, &qword_11510, &qword_7380);
  }

  v19 = *(v0 + 200);
  v20 = *(v0 + 152);
  v21 = *(v0 + 160);
  v31 = *(v0 + 128);
  v32 = *(v0 + 104);
  v33 = *(v0 + 96);
  v23 = *(v0 + 80);
  v22 = *(v0 + 88);
  v24 = *(v0 + 72);
  v25 = sub_61FC();
  (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
  sub_61DC();
  v26 = v4;

  v27 = sub_61CC();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = &protocol witness table for MainActor;
  v28[4] = v24;
  v28[5] = v23;
  v28[6] = v19;
  v28[7] = v4;
  sub_3AE8(0, 0, v22, &unk_7390, v28);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_39CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_61DC();
  v7[6] = sub_61CC();
  v9 = sub_61BC();

  return _swift_task_switch(sub_3A68, v9, v8);
}

uint64_t sub_3A68()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v5(v3, v2);
  v6 = v0[1];

  return v6();
}

uint64_t sub_3AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_49F4(&qword_11508, &qword_7340) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_57A0(a3, v26 - v10, &qword_11508, &qword_7340);
  v12 = sub_61FC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_5808(v11, &qword_11508, &qword_7340);
  }

  else
  {
    sub_61EC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_61BC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_617C() + 32;
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

      sub_5808(a3, &qword_11508, &qword_7340);

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

  sub_5808(a3, &qword_11508, &qword_7340);
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

void sub_3F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SettingLocation();
  isa = sub_61AC().super.isa;
  (*(a3 + 16))(a3, isa, a2);
}

uint64_t sub_3FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_3FC8, 0, 0);
}

uint64_t sub_3FC8()
{
  v1 = *(v0[2] + OBJC_IVAR___USLocationWrapper_selectedLocationManager);
  v2 = (v0[3] + OBJC_IVAR____TtC20UrchinBridgeSettings15SettingLocation_id);
  v3 = *(&async function pointer to dispatch thunk of SelectedLocationManager.set(selectedLocation:) + 1);
  v8 = (&async function pointer to dispatch thunk of SelectedLocationManager.set(selectedLocation:) + async function pointer to dispatch thunk of SelectedLocationManager.set(selectedLocation:));
  v4 = *v2;
  v5 = v2[1];
  v0[4] = v5;

  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_40AC;

  return v8(v4, v5);
}

uint64_t sub_40AC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

id sub_43A8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_615C();

  return v6;
}

uint64_t sub_4410(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_616C();
  v7 = (a1 + *a4);
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v9;
}

uint64_t sub_4460(uint64_t a1)
{
  sub_57A0(a1, v7, &qword_11500, &qword_7338);
  if (!v8)
  {
    sub_5808(v7, &qword_11500, &qword_7338);
    goto LABEL_14;
  }

  type metadata accessor for SettingLocation();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v4 = 0;
    return v4 & 1;
  }

  v2 = *&v6[OBJC_IVAR____TtC20UrchinBridgeSettings15SettingLocation_id] == *(v1 + OBJC_IVAR____TtC20UrchinBridgeSettings15SettingLocation_id) && *&v6[OBJC_IVAR____TtC20UrchinBridgeSettings15SettingLocation_id + 8] == *(v1 + OBJC_IVAR____TtC20UrchinBridgeSettings15SettingLocation_id + 8);
  if (!v2 && (sub_62EC() & 1) == 0)
  {

    goto LABEL_14;
  }

  if (*&v6[OBJC_IVAR____TtC20UrchinBridgeSettings15SettingLocation_name] == *(v1 + OBJC_IVAR____TtC20UrchinBridgeSettings15SettingLocation_name) && *&v6[OBJC_IVAR____TtC20UrchinBridgeSettings15SettingLocation_name + 8] == *(v1 + OBJC_IVAR____TtC20UrchinBridgeSettings15SettingLocation_name + 8))
  {

    v4 = 1;
  }

  else
  {
    v4 = sub_62EC();
  }

  return v4 & 1;
}

id sub_4644(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_46F0()
{
  v1 = [*(v0 + 16) manager];
  v2 = [v1 authorizationStatus];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t USCoreLocationWrapper.getCurrentLocation()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_479C, 0, 0);
}

uint64_t sub_479C()
{
  v1 = [*(v0 + 24) manager];
  [v1 authorizationStatus];

  if (sub_621C())
  {
    v2 = *(v0 + 16);
    sub_608C();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v0 + 16);
  v5 = sub_60CC();
  (*(*(v5 - 8) + 56))(v4, v3, 1, v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_48AC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_479C, 0, 0);
}

uint64_t type metadata accessor for LocationWrapper()
{
  result = qword_11608;
  if (!qword_11608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4924()
{
  result = sub_607C();
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

uint64_t sub_49F4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_4A3C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_4A84()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_5F1C;

  return sub_3FA8(v4, v5, v6, v2, v3);
}

uint64_t sub_4B54()
{
  v1 = *(v0 + 16);
  sub_608C();
  v2 = sub_60CC();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_4BF8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4CF0;

  return v7(a1);
}

uint64_t sub_4CF0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_4DE8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4E20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_5F1C;

  return sub_4BF8(a1, v5);
}

uint64_t sub_4ED8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_4F90;

  return sub_4BF8(a1, v5);
}

uint64_t sub_4F90()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_5084()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_50C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_510C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_4F90;

  return sub_2C94(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_51B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_5280(v11, 0, 0, 1, a1, a2);
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
    sub_5A54(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_5EBC(v11);
  return v7;
}

unint64_t sub_5280(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_538C(a5, a6);
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
    result = sub_627C();
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

char *sub_538C(uint64_t a1, unint64_t a2)
{
  v4 = sub_53D8(a1, a2);
  sub_5508(&off_C670);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_53D8(uint64_t a1, unint64_t a2)
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

  v6 = sub_55F4(v5, 0);
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

  result = sub_627C();
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
        v10 = sub_618C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_55F4(v10, 0);
        result = sub_624C();
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

uint64_t sub_5508(uint64_t result)
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

  result = sub_5668(result, v12, 1, v3);
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

void *sub_55F4(uint64_t a1, uint64_t a2)
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

  sub_49F4(&qword_11520, &qword_73A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_5668(char *result, int64_t a2, char a3, char *a4)
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
    sub_49F4(&qword_11520, &qword_73A0);
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

void *sub_575C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_57A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_49F4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_5808(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_49F4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_5868()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_58B8()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_5F1C;

  return sub_39CC(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_5964(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_62DC();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_62DC();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_5AB4(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_5B54(v9 + 8 * *(&dword_10 + v9) + 32, (*(&dword_18 + v9) >> 1) - *(&dword_10 + v9), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_5A54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_5AB4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_62DC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_626C();
  *v1 = result;
  return result;
}

uint64_t sub_5B54(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_62DC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_62DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_5D58();
          for (i = 0; i != v6; ++i)
          {
            sub_49F4(&qword_11528, &qword_73A8);
            v9 = sub_5CD0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for SettingLocation();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_5CD0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_625C();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_5D50;
  }

  __break(1u);
  return result;
}

unint64_t sub_5D58()
{
  result = qword_11530;
  if (!qword_11530)
  {
    sub_5DBC(&qword_11528, &qword_73A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11530);
  }

  return result;
}

uint64_t sub_5DBC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_5E04()
{
  result = qword_11538;
  if (!qword_11538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11538);
  }

  return result;
}

uint64_t sub_5E58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_5EBC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_5FA0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[Location List] Unable to find option for %{public}@.", &v2, 0xCu);
}