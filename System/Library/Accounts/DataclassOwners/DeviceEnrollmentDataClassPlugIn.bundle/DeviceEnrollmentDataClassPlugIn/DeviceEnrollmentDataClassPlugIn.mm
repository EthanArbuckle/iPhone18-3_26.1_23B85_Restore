uint64_t static DeviceEnrollmentsDataClassPlugIn.dataclasses()()
{
  sub_12B4(&qword_C3C0, &unk_6C70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_6C20;
  v1 = ACAccountDataclassDeviceEnrollments;
  *(v0 + 32) = ACAccountDataclassDeviceEnrollments;
  v2 = v1;
  return v0;
}

uint64_t sub_12B4(uint64_t *a1, uint64_t *a2)
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

void sub_13A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = sub_327C(a1, a2, a3, a4);
  v6 = v5;
  oslog = sub_63A8();
  v7 = sub_6588();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446210;
    v10 = sub_3CE0(v4, v6, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_0, oslog, v7, "%{public}s", v8, 0xCu);
    sub_622C(v9);
  }

  else
  {
  }
}

Class sub_14DC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  _s31DeviceEnrollmentDataClassPlugIn0a11EnrollmentscdeF0C7actions9forAdding0I9DataclassSayypGSo9ACAccountC_So0lK0atF_0(v6);

  v9.super.isa = sub_6528().super.isa;

  return v9.super.isa;
}

Class sub_1588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();
  v5.super.isa = sub_6528().super.isa;

  return v5.super.isa;
}

uint64_t sub_15E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_6428();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = async function pointer to EnrollmentAssetService.activate()[1];
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_16D8;

  return EnrollmentAssetService.activate()();
}

uint64_t sub_16D8()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return _swift_task_switch(sub_17D4, 0, 0);
}

uint64_t sub_17D4()
{
  (*(v0[4] + 104))(v0[5], enum case for EnrollmentDataLocation.local(_:), v0[3]);
  v1 = async function pointer to EnrollmentAssetService.deleteEnrollmentData(from:)[1];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1894;
  v3 = v0[5];
  v4 = v0[2];

  return EnrollmentAssetService.deleteEnrollmentData(from:)(v3);
}

uint64_t sub_1894()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;
  v6[8] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_1A3C, 0, 0);
  }

  else
  {
    v7 = v6[5];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_1A3C()
{
  if (qword_C520 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_63C8();
  sub_5B70(v2, qword_C830);
  swift_errorRetain();
  v3 = sub_63A8();
  v4 = sub_6578();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v3, v4, "Falied to delete local enrollment data OR failure to start input recovery: %{public}@", v7, 0xCu);
    sub_602C(v8, &qword_C488, &qword_6E90);
  }

  else
  {
  }

  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_12B4(&qword_C480, &qword_6E58) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_5FBC(a3, v26 - v10);
  v12 = sub_6568();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_602C(v11, &qword_C480, &qword_6E58);
  }

  else
  {
    sub_6558();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_6548();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_6498() + 32;
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

      sub_602C(a3, &qword_C480, &qword_6E58);

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

  sub_602C(a3, &qword_C480, &qword_6E58);
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

uint64_t sub_1ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_6438();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_6428();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v11 = async function pointer to EnrollmentAssetService.activate()[1];
  v12 = swift_task_alloc();
  v4[9] = v12;
  *v12 = v4;
  v12[1] = sub_2028;

  return EnrollmentAssetService.activate()();
}

uint64_t sub_2028()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return _swift_task_switch(sub_2124, 0, 0);
}

uint64_t sub_2124()
{
  (*(v0[7] + 104))(v0[8], enum case for EnrollmentDataLocation.local(_:), v0[6]);
  v1 = async function pointer to EnrollmentAssetService.deleteEnrollmentData(from:)[1];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_21E4;
  v3 = v0[8];
  v4 = v0[2];

  return EnrollmentAssetService.deleteEnrollmentData(from:)(v3);
}

uint64_t sub_21E4()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_25C8;
  }

  else
  {
    v6 = sub_2354;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_2354()
{
  (*(v0[4] + 104))(v0[5], enum case for DisableSyncContext.syncOffDeleteLocal(_:), v0[3]);
  v1 = async function pointer to EnrollmentAssetService.saveAVPSetupContext(option:)[1];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_2414;
  v3 = v0[5];
  v4 = v0[2];

  return EnrollmentAssetService.saveAVPSetupContext(option:)(v3);
}

uint64_t sub_2414()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;
  v6[13] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_277C, 0, 0);
  }

  else
  {
    v7 = v6[8];
    v8 = v6[5];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_25C8()
{
  v1 = v0[11];
  if (qword_C520 != -1)
  {
    swift_once();
  }

  v2 = sub_63C8();
  sub_5B70(v2, qword_C830);
  swift_errorRetain();
  v3 = sub_63A8();
  v4 = sub_6578();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v3, v4, "Falied to delete local enrollment data with error: %{public}@", v5, 0xCu);
    sub_602C(v6, &qword_C488, &qword_6E90);
  }

  else
  {
  }

  v8 = v0[8];
  v9 = v0[5];

  v10 = v0[1];

  return v10();
}

uint64_t sub_277C()
{
  v1 = v0[13];
  if (qword_C520 != -1)
  {
    swift_once();
  }

  v2 = sub_63C8();
  sub_5B70(v2, qword_C830);
  swift_errorRetain();
  v3 = sub_63A8();
  v4 = sub_6578();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v3, v4, "Falied to delete local enrollment data with error: %{public}@", v5, 0xCu);
    sub_602C(v6, &qword_C488, &qword_6E90);
  }

  else
  {
  }

  v8 = v0[8];
  v9 = v0[5];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_6438();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = async function pointer to EnrollmentAssetService.activate()[1];
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_2A24;

  return EnrollmentAssetService.activate()();
}

uint64_t sub_2A24()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return _swift_task_switch(sub_2B20, 0, 0);
}

uint64_t sub_2B20()
{
  (*(v0[4] + 104))(v0[5], enum case for DisableSyncContext.syncOffKeepLocal(_:), v0[3]);
  v1 = async function pointer to EnrollmentAssetService.saveAVPSetupContext(option:)[1];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_2BE0;
  v3 = v0[5];
  v4 = v0[2];

  return EnrollmentAssetService.saveAVPSetupContext(option:)(v3);
}

uint64_t sub_2BE0()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;
  v6[8] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return _swift_task_switch(sub_2D88, 0, 0);
  }

  else
  {
    v7 = v6[5];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_2D88()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_2DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(sub_12B4(&qword_C480, &qword_6E58) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v23 - v9;
  sub_5FBC(a3, v23 - v9);
  v11 = sub_6568();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_602C(v10, &qword_C480, &qword_6E58);
  }

  else
  {
    sub_6558();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_6548();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_6498() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_602C(a3, &qword_C480, &qword_6E58);

      return v21;
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

  sub_602C(a3, &qword_C480, &qword_6E58);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

id DeviceEnrollmentsDataClassPlugIn.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceEnrollmentsDataClassPlugIn.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceEnrollmentsDataClassPlugIn();
  return objc_msgSendSuper2(&v2, "init");
}

id DeviceEnrollmentsDataClassPlugIn.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceEnrollmentsDataClassPlugIn();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_320C()
{
  v0 = sub_63C8();
  sub_617C(v0, qword_C830);
  sub_5B70(v0, qword_C830);
  return sub_63B8();
}

uint64_t sub_327C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_62D8();
  v8 = (sub_65B8() + 16);
  if (*v8)
  {
    v9 = &v8[2 * *v8];
    a1 = *v9;
    a2 = v9[1];
  }

  else
  {
  }

  sub_34D8(46, 0xE100000000000000, a1, a2);
  sub_6518();

  v10 = sub_64A8();
  v12 = v11;

  sub_34D8(40, 0xE100000000000000, a3, a4);
  sub_6518();
  v13 = sub_64A8();
  v15 = v14;

  v16 = pthread_self();
  pthread_mach_thread_np(v16);
  v18._countAndFlagsBits = sub_65F8();
  sub_64D8(v18);

  v19._countAndFlagsBits = 8285;
  v19._object = 0xE200000000000000;
  sub_64D8(v19);
  v20._countAndFlagsBits = v10;
  v20._object = v12;
  sub_64D8(v20);

  v21._countAndFlagsBits = 14906;
  v21._object = 0xE200000000000000;
  sub_64D8(v21);
  v22._countAndFlagsBits = v13;
  v22._object = v15;
  sub_64D8(v22);

  return 91;
}

unint64_t sub_34D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_6508() != a1 || v9 != a2)
  {
    v10 = sub_6608();

    if (v10)
    {
      return v8;
    }

    v8 = sub_64C8();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_35D0(uint64_t a1, id *a2)
{
  result = sub_6458();
  *a2 = 0;
  return result;
}

uint64_t sub_3648(uint64_t a1, id *a2)
{
  v3 = sub_6468();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_36C8@<X0>(void *a1@<X8>)
{
  sub_6478();
  v2 = sub_6448();

  *a1 = v2;
  return result;
}

uint64_t sub_370C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_6448();

  *a2 = v5;
  return result;
}

uint64_t sub_3754@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_6478();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_3780(uint64_t a1)
{
  v2 = sub_632C(&qword_C470, type metadata accessor for Dataclass);
  v3 = sub_632C(&qword_C478, type metadata accessor for Dataclass);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_383C()
{
  v1 = *v0;
  sub_6478();
  v2 = sub_64F8();

  return v2;
}

uint64_t sub_3878()
{
  v1 = *v0;
  sub_6478();
  sub_64B8();
}

Swift::Int sub_38CC()
{
  v1 = *v0;
  sub_6478();
  sub_6618();
  sub_64B8();
  v2 = sub_6628();

  return v2;
}

uint64_t sub_3940(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_6478();
  v6 = v5;
  if (v4 == sub_6478() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_6608();
  }

  return v9 & 1;
}

uint64_t sub_39C8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3AC0;

  return v7(a1);
}

uint64_t sub_3AC0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_3BB8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_12B4(&qword_C3C0, &unk_6C70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for Dataclass();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_3CE0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3DAC(v11, 0, 0, 1, a1, a2);
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
    sub_6278(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_622C(v11);
  return v7;
}

unint64_t sub_3DAC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_3EB8(a5, a6);
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
    result = sub_65D8();
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

char *sub_3EB8(uint64_t a1, unint64_t a2)
{
  v4 = sub_3F04(a1, a2);
  sub_4034(&off_84D0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_3F04(uint64_t a1, unint64_t a2)
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

  v6 = sub_4120(v5, 0);
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

  result = sub_65D8();
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
        v10 = sub_64E8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_4120(v10, 0);
        result = sub_65C8();
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

uint64_t sub_4034(uint64_t result)
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

  result = sub_4194(result, v12, 1, v3);
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

void *sub_4120(uint64_t a1, uint64_t a2)
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

  sub_12B4(&qword_C4A0, &qword_6EB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_4194(char *result, int64_t a2, char a3, char *a4)
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
    sub_12B4(&qword_C4A0, &qword_6EB8);
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

void *sub_4288(void *a1, int64_t a2, char a3)
{
  result = sub_42A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_42A8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_12B4(&qword_C3C0, &unk_6C70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for Dataclass();
    swift_arrayInitWithCopy();
  }

  return v10;
}

id _s31DeviceEnrollmentDataClassPlugIn0a11EnrollmentscdeF0C7actions9forAdding0I9DataclassSayypGSo9ACAccountC_So0lK0atF_0(void *a1)
{
  v2 = sub_6398();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin();
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_C520 != -1)
  {
LABEL_54:
    swift_once();
  }

  v7 = sub_63C8();
  v8 = sub_5B70(v7, qword_C830);
  sub_13A4(0xD000000000000096, 0x80000000000073B0, 0xD00000000000002DLL, 0x80000000000074B0);
  v9 = objc_opt_self();
  v10 = [v9 actionWithType:5];
  if (v10)
  {
    v11 = v10;
    v12 = [v9 actionWithType:6];
    if (v12)
    {
      v67 = v11;
      v68 = v3;
      v66 = v12;
      v13 = a1;
      v65 = v8;
      v14 = sub_63A8();
      v15 = sub_6588();

      v16 = os_log_type_enabled(v14, v15);
      v69 = v13;
      if (v16)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *&v72 = v18;
        *v17 = 136315138;
        *&v70 = [v69 enabledDataclasses];
        sub_12B4(&qword_C4B8, &qword_6EC0);
        v19 = sub_6488();
        v21 = sub_3CE0(v19, v20, &v72);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_0, v14, v15, "account.enabledDataclasses: %s", v17, 0xCu);
        sub_622C(v18);
        v13 = v69;
      }

      result = [v13 enabledDataclasses];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v23 = result;
      sub_6598();
      sub_632C(&qword_C4B0, &type metadata accessor for NSFastEnumerationIterator);
      sub_65A8();
      if (v73)
      {
        v3 = &_swiftEmptyArrayStorage;
        do
        {
          sub_6374(&v72, &v70);
          type metadata accessor for Dataclass();
          if (swift_dynamicCast())
          {
            v60 = v71;
            if (v71)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v3 = sub_3BB8(0, v3[2] + 1, 1, v3);
              }

              v62 = v3[2];
              v61 = v3[3];
              if (v62 >= v61 >> 1)
              {
                v3 = sub_3BB8((v61 > 1), v62 + 1, 1, v3);
              }

              v3[2] = v62 + 1;
              v3[v62 + 4] = v60;
            }
          }

          sub_65A8();
        }

        while (v73);
      }

      else
      {
        v3 = &_swiftEmptyArrayStorage;
      }

      (v68[1])(v6, v2);
      v32 = v3[2];
      if (!v32)
      {
        v34 = &_swiftEmptyArrayStorage;
        goto LABEL_36;
      }

      v33 = 0;
      a1 = v3 + 4;
      v68 = ACChangeTypeAdded;
      v64 = v32 - 1;
      v34 = &_swiftEmptyArrayStorage;
      v35 = v69;
      while (1)
      {
        v2 = v33;
        while (1)
        {
          if (v2 >= v3[2])
          {
            __break(1u);
            goto LABEL_54;
          }

          v6 = *(a1 + v2);
          v36 = [v35 changeTypeForEnabledDataclass:v6];
          if (!v36)
          {
            goto LABEL_19;
          }

          v37 = v36;
          v38 = sub_6478();
          v40 = v39;
          if (v38 == sub_6478() && v40 == v41)
          {
            break;
          }

          v43 = sub_6608();

          v35 = v69;
          if (v43)
          {
            goto LABEL_29;
          }

LABEL_19:
          ++v2;

          if (v32 == v2)
          {
            goto LABEL_36;
          }
        }

        v35 = v69;
LABEL_29:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v72 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_4288(0, v34[2] + 1, 1);
          v34 = v72;
        }

        v46 = v34[2];
        v45 = v34[3];
        if (v46 >= v45 >> 1)
        {
          sub_4288((v45 > 1), v46 + 1, 1);
          v34 = v72;
        }

        v33 = v2 + 1;
        v34[2] = v46 + 1;
        v34[v46 + 4] = v6;
        if (v64 == v2)
        {
LABEL_36:

          v47 = v34[2];

          v48 = sub_63A8();
          v49 = sub_6588();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 134217984;
            *(v50 + 4) = v47;
            _os_log_impl(&dword_0, v48, v49, "Dataclass ChangeType = added count: %ld", v50, 0xCu);
          }

          v51 = sub_63A8();
          v52 = sub_6588();
          v53 = os_log_type_enabled(v51, v52);
          if (v47 < 6)
          {
            if (v53)
            {
              v57 = swift_slowAlloc();
              *v57 = 0;
              _os_log_impl(&dword_0, v51, v52, "User enabled iCloud syncing. Returning only keep action.", v57, 2u);
            }

            sub_12B4(&qword_C490, &qword_6EB0);
            v58 = swift_allocObject();
            *(v58 + 16) = xmmword_6C20;
            *(v58 + 56) = sub_61E0();
            v59 = v66;
            *(v58 + 32) = v67;

            return v58;
          }

          else
          {
            if (v53)
            {
              v54 = swift_slowAlloc();
              *v54 = 0;
              _os_log_impl(&dword_0, v51, v52, "New account sign in event. Returning both keep and delete actions.", v54, 2u);
            }

            sub_12B4(&qword_C490, &qword_6EB0);
            v55 = swift_allocObject();
            *(v55 + 16) = xmmword_6C30;
            v56 = sub_61E0();
            result = v55;
            *(v55 + 32) = v67;
            *(v55 + 88) = v56;
            *(v55 + 56) = v56;
            *(v55 + 64) = v66;
          }

          return result;
        }
      }
    }

    v27 = sub_63A8();
    v28 = sub_6578();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "Could not create delete action.", v29, 2u);
    }

    sub_12B4(&qword_C490, &qword_6EB0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_6C20;
    v31 = sub_61E0();
    result = v30;
    *(v30 + 56) = v31;
    *(v30 + 32) = v11;
  }

  else
  {
    v24 = sub_63A8();
    v25 = sub_6578();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "Could not create keep action.", v26, 2u);
    }

    return &_swiftEmptyArrayStorage;
  }

  return result;
}

void *_s31DeviceEnrollmentDataClassPlugIn0a11EnrollmentscdeF0C7actions11forDeleting0I9DataclassSayypGSo9ACAccountC_So0lK0atF_0()
{
  if (qword_C520 != -1)
  {
    swift_once();
  }

  v0 = sub_63C8();
  sub_5B70(v0, qword_C830);
  sub_13A4(0xD000000000000096, 0x80000000000073B0, 0xD000000000000022, 0x8000000000007480);
  v1 = objc_opt_self();
  v2 = [v1 actionWithType:2];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 actionWithType:3];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 actionWithType:0];
      if (v6)
      {
        v7 = v6;
        sub_12B4(&qword_C490, &qword_6EB0);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_6C40;
        v9 = sub_61E0();
        result = v8;
        *(v8 + 32) = v3;
        *(v8 + 56) = v9;
        *(v8 + 64) = v5;
        *(v8 + 120) = v9;
        *(v8 + 88) = v9;
        *(v8 + 96) = v7;
      }

      else
      {
        v19 = sub_63A8();
        v20 = sub_6578();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_0, v19, v20, "Could not create cancel action.", v21, 2u);
        }

        sub_12B4(&qword_C490, &qword_6EB0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_6C30;
        v23 = sub_61E0();
        result = v22;
        *(v22 + 32) = v3;
        *(v22 + 88) = v23;
        *(v22 + 56) = v23;
        *(v22 + 64) = v5;
      }
    }

    else
    {
      v14 = sub_63A8();
      v15 = sub_6578();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_0, v14, v15, "Could not create delete action.", v16, 2u);
      }

      sub_12B4(&qword_C490, &qword_6EB0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_6C20;
      v18 = sub_61E0();
      result = v17;
      *(v17 + 56) = v18;
      *(v17 + 32) = v3;
    }
  }

  else
  {
    v11 = sub_63A8();
    v12 = sub_6578();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "Could not create keep action.", v13, 2u);
    }

    return &_swiftEmptyArrayStorage;
  }

  return result;
}

void *_s31DeviceEnrollmentDataClassPlugIn0a11EnrollmentscdeF0C28actionsForDisablingDataclass2on03forK0SayypGSo9ACAccountC_So0nK0atF_0()
{
  if (qword_C520 != -1)
  {
    swift_once();
  }

  v0 = sub_63C8();
  sub_5B70(v0, qword_C830);
  sub_13A4(0xD000000000000096, 0x80000000000073B0, 0xD00000000000002ELL, 0x8000000000007450);
  v1 = objc_opt_self();
  v2 = [v1 actionWithType:2];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 actionWithType:3];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 actionWithType:0];
      if (v6)
      {
        v7 = v6;
        sub_12B4(&qword_C490, &qword_6EB0);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_6C40;
        v9 = sub_61E0();
        result = v8;
        *(v8 + 32) = v3;
        *(v8 + 56) = v9;
        *(v8 + 64) = v5;
        *(v8 + 120) = v9;
        *(v8 + 88) = v9;
        *(v8 + 96) = v7;
      }

      else
      {
        v19 = sub_63A8();
        v20 = sub_6578();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_0, v19, v20, "Could not create cancel action.", v21, 2u);
        }

        sub_12B4(&qword_C490, &qword_6EB0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_6C30;
        v23 = sub_61E0();
        result = v22;
        *(v22 + 32) = v3;
        *(v22 + 88) = v23;
        *(v22 + 56) = v23;
        *(v22 + 64) = v5;
      }
    }

    else
    {
      v14 = sub_63A8();
      v15 = sub_6578();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_0, v14, v15, "Could not create delete action.", v16, 2u);
      }

      sub_12B4(&qword_C490, &qword_6EB0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_6C20;
      v18 = sub_61E0();
      result = v17;
      *(v17 + 56) = v18;
      *(v17 + 32) = v3;
    }
  }

  else
  {
    v11 = sub_63A8();
    v12 = sub_6578();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "Could not create keep action.", v13, 2u);
    }

    return &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t _s31DeviceEnrollmentDataClassPlugIn0a11EnrollmentscdeF0C7perform_3for12withChildren0I9DataclassSbSo17ACDataclassActionCSg_So9ACAccountCSgSayypGSgSo0oL0aSgtF_0(void *a1)
{
  v2 = (*(*(sub_12B4(&qword_C480, &qword_6E58) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v4 = &v39 - v3;
  v5 = sub_6418();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v9 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = &v39 - v11;
  if (a1)
  {
    v13 = [a1 type];
    if (v13 > 4)
    {
      if (v13 == &dword_4 + 1)
      {
        if (qword_C520 != -1)
        {
          swift_once();
        }

        v35 = sub_63C8();
        sub_5B70(v35, qword_C830);
        v36 = sub_63A8();
        v37 = sub_6588();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_0, v36, v37, "Keeping local data during sign in.", v38, 2u);
        }

        return 1;
      }

      if (v13 == &dword_4 + 2)
      {
        if (qword_C520 != -1)
        {
          swift_once();
        }

        v22 = sub_63C8();
        sub_5B70(v22, qword_C830);
        v23 = sub_63A8();
        v24 = sub_6588();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_0, v23, v24, "Deleting local data upon account sign in.", v25, 2u);
        }

        sub_6408();
        v26 = sub_6568();
        (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
        (*(v6 + 16))(v9, v12, v5);
        v27 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = 0;
        *(v20 + 24) = 0;
        (*(v6 + 32))(v20 + v27, v9, v5);
        v21 = &unk_6E88;
        goto LABEL_17;
      }
    }

    else
    {
      if (v13 == &dword_0 + 2)
      {
        if (qword_C520 != -1)
        {
          swift_once();
        }

        v28 = sub_63C8();
        sub_5B70(v28, qword_C830);
        v29 = sub_63A8();
        v30 = sub_6588();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_0, v29, v30, "Keeping local data during sign out.", v31, 2u);
        }

        sub_6408();
        v32 = sub_6568();
        (*(*(v32 - 8) + 56))(v4, 1, 1, v32);
        (*(v6 + 16))(v9, v12, v5);
        v33 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = 0;
        *(v34 + 24) = 0;
        (*(v6 + 32))(v34 + v33, v9, v5);
        sub_2DEC(0, 0, v4, &unk_6E68, v34);
        goto LABEL_23;
      }

      if (v13 == &dword_0 + 3)
      {
        if (qword_C520 != -1)
        {
          swift_once();
        }

        v14 = sub_63C8();
        sub_5B70(v14, qword_C830);
        v15 = sub_63A8();
        v16 = sub_6588();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_0, v15, v16, "Deleting local data during sign out.", v17, 2u);
        }

        sub_6408();
        v18 = sub_6568();
        (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
        (*(v6 + 16))(v9, v12, v5);
        v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = 0;
        *(v20 + 24) = 0;
        (*(v6 + 32))(v20 + v19, v9, v5);
        v21 = &unk_6E78;
LABEL_17:
        sub_1BE8(0, 0, v4, v21, v20);
LABEL_23:

        (*(v6 + 8))(v12, v5);
      }
    }

    return 1;
  }

  __break(1u);
  return result;
}

void type metadata accessor for Dataclass()
{
  if (!qword_C450)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_C450);
    }
  }
}

uint64_t sub_5B70(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_5BAC()
{
  v2 = *(sub_6418() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_5C74;

  return sub_2930(v4, v5, v6, v0 + v3);
}

uint64_t sub_5C74()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_5D68()
{
  v2 = *(sub_6418() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_5C74;

  return sub_1ED8(v4, v5, v6, v0 + v3);
}

uint64_t sub_5E30()
{
  v1 = sub_6418();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_5EF4()
{
  v2 = *(sub_6418() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_6394;

  return sub_15E4(v4, v5, v6, v0 + v3);
}

uint64_t sub_5FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_12B4(&qword_C480, &qword_6E58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_602C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_12B4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_608C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_60C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_6394;

  return sub_39C8(a1, v5);
}

uint64_t *sub_617C(uint64_t a1, uint64_t *a2)
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

unint64_t sub_61E0()
{
  result = qword_C498;
  if (!qword_C498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C498);
  }

  return result;
}

uint64_t sub_622C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_6278(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_62D8()
{
  result = qword_C4A8;
  if (!qword_C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4A8);
  }

  return result;
}

uint64_t sub_632C(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_6374(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}