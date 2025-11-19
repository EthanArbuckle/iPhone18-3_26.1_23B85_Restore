uint64_t sub_100001718()
{
  v0 = sub_100005764();
  sub_100005460(v0, qword_10000C620);
  sub_1000051E4(v0, qword_10000C620);
  return sub_100005754();
}

uint64_t sub_100001798()
{
  sub_100005400(v0 + OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportCredentialData, &qword_10000C228, &qword_100005D88);
  sub_100004FF4(*(v0 + OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData), *(v0 + OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData + 8));
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10000182C(uint64_t a1)
{
  v2 = sub_1000054C4(&qword_10000C1F0, type metadata accessor for AppMigrationHandler);

  return AppMigrationExtension.configuration.getter(a1, v2);
}

double sub_1000018A8@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = [objc_allocWithZone(NSProgress) init];
  v6 = OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportCredentialData;
  v7 = sub_100005734();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  result = 0.0;
  *(v5 + OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData) = xmmword_100005B10;
  *a1 = v5;
  return result;
}

uint64_t sub_100001960()
{
  v1[5] = v0;
  v2 = sub_100005574();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = *(*(sub_1000055F4() - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = sub_100005704();
  v1[10] = v6;
  v7 = *(v6 - 8);
  v1[11] = v7;
  v8 = *(v7 + 64) + 15;
  v1[12] = swift_task_alloc();
  v9 = sub_100004D84(&qword_10000C228, &qword_100005D88);
  v1[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v11 = sub_100005624();
  v1[16] = v11;
  v12 = *(v11 - 8);
  v1[17] = v12;
  v13 = *(v12 + 64) + 15;
  v1[18] = swift_task_alloc();
  v14 = sub_1000056F4();
  v1[19] = v14;
  v15 = *(v14 - 8);
  v1[20] = v15;
  v16 = *(v15 + 64) + 15;
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_100001BA8, 0, 0);
}

uint64_t sub_100001BA8()
{
  v1 = objc_opt_self();
  v2 = &AppMigrationHandler;
  v3 = [v1 sharedStore];
  v4 = [v3 savedAccounts];

  sub_100004E3C();
  v5 = sub_100005774();

  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100005824())
  {
    v13 = v1;
    v14 = v0;
    v2 = 0;
    v0 = &AppMigrationHandler;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v7 = sub_1000057D4();
      }

      else
      {
        if (v2 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v5 + 8 * v2 + 32);
      }

      v8 = v7;
      v1 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if ([v7 canBeExportedViaCredentialExchange])
      {
        sub_1000057E4();
        v9 = _swiftEmptyArrayStorage[2];
        sub_100005804();
        sub_100005814();
        sub_1000057F4();
      }

      else
      {
      }

      ++v2;
      if (v1 == i)
      {
        v0 = v14;
        v1 = v13;
        v2 = 0x10000C000;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
  v0[2].base_meths = _swiftEmptyArrayStorage;

  v0[2].base_prots = [v1 *(v2 + 184)];
  v10 = async function pointer to WBSSavedAccountStore.importableItems(for:)[1];
  v11 = swift_task_alloc();
  v0[2].ivars = v11;
  *v11 = v0;
  v11[1] = sub_100001DE8;

  return WBSSavedAccountStore.importableItems(for:)(_swiftEmptyArrayStorage);
}

uint64_t sub_100001DE8(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v6 = *v1;
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_100001F20, 0, 0);
}

uint64_t sub_100001F20()
{
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[18];
  v32 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v36 = v0[15];
  v42 = v0[14];
  v44 = v0[13];
  v7 = v0[11];
  v33 = v0[12];
  v34 = v0[10];
  v35 = v0[9];
  v38 = v0[8];
  v39 = v0[7];
  v41 = v0[6];
  v37 = v0[5];
  sub_100005614();
  sub_100005604();
  (*(v6 + 8))(v4, v5);
  sub_1000056E4();
  sub_100004D84(&qword_10000C238, &qword_100005D98);
  v8 = *(v2 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100005B20;
  (*(v2 + 16))(v10 + v9, v3, v32);
  (*(v7 + 104))(v33, enum case for ASExportedCredentialData.FormatVersion.v1(_:), v34);
  sub_1000055E4();
  sub_100005714();
  v11 = sub_100005734();
  (*(*(v11 - 8) + 56))(v36, 0, 1, v11);
  v12 = OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportCredentialData;
  swift_beginAccess();
  sub_100004E88(v36, v37 + v12);
  swift_endAccess();
  v13 = sub_1000055B4();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1000055A4();
  *v38 = sub_10000236C;
  v38[1] = 0;
  (*(v39 + 104))(v38, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v41);
  sub_100005584();
  sub_100004DCC(v37 + v12, v42);
  sub_100004EF8();
  v16 = sub_100005594();
  v17 = v0[20];
  v18 = v0[21];
  v20 = v0[18];
  v19 = v0[19];
  v21 = v0[14];
  v22 = v0[15];
  v23 = v0[12];
  v43 = v0[9];
  v45 = v0[8];
  v25 = v24;
  v26 = v0[5];
  v40 = v16;

  sub_100005400(v21, &qword_10000C228, &qword_100005D88);
  (*(v17 + 8))(v18, v19);
  v27 = (v26 + OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData);
  v28 = *(v26 + OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData);
  v29 = *(v26 + OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData + 8);
  *v27 = v40;
  v27[1] = v25;
  sub_100004FF4(v28, v29);

  v30 = v0[1];

  return v30();
}

uint64_t sub_10000236C(uint64_t a1, void *a2)
{
  result = sub_1000055D4();
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.22337204e18)
  {
    v5 = a2[4];
    sub_10000505C(a2, a2[3]);
    sub_100005844();
    sub_1000050A0(v6, v6[3]);
    sub_100005834();
    return sub_1000050F0(v6);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100002454()
{
  v1[5] = v0;
  v2 = *(*(sub_100004D84(&qword_10000C228, &qword_100005D88) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = sub_100005734();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100002558, 0, 0);
}

uint64_t sub_100002558()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportCredentialData;
  v0[11] = OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportCredentialData;
  swift_beginAccess();
  sub_100004DCC(v4 + v5, v3);
  v6 = *(v2 + 48);
  v0[12] = v6;
  v0[13] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v1) == 1)
  {
    sub_100005400(v0[6], &qword_10000C228, &qword_100005D88);
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_100002718;
    v8 = v0[5];

    return sub_100001960();
  }

  else
  {
    v10 = v0[10];
    v11 = v0[7];
    v12 = v0[8];
    (*(v12 + 32))(v10, v0[6], v11);
    v13 = *(sub_100005724() + 16);

    (*(v12 + 8))(v10, v11);
    v15 = v0[9];
    v14 = v0[10];
    v16 = v0[6];

    v17 = v0[1];

    return v17(v13);
  }
}

uint64_t sub_100002718()
{
  v2 = *(*v1 + 112);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_100005514;
  }

  else
  {
    v3 = sub_100002830;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100002830()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  if ((*(v0 + 96))(v4 + v2, 1, v3))
  {
    v5 = 0;
  }

  else
  {
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    (*(v7 + 16))(v6, v4 + v2, v3);
    v8 = sub_100005724();
    (*(v7 + 8))(v6, v3);
    v5 = *(v8 + 16);
  }

  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 48);

  v12 = *(v0 + 8);

  return v12(v5);
}

uint64_t sub_100002934(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_100002954, 0, 0);
}

uint64_t sub_100002954()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData;
  v0[6] = OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData;
  v3 = (v1 + v2);
  v4 = v3[1];
  if (v4 >> 60 == 15)
  {
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_100002AB4;
    v6 = v0[5];

    return sub_100001960();
  }

  else
  {
    v0[8] = v4;
    v8 = *v3;
    v0[9] = *v3;
    v0[2] = v8;
    v0[3] = v4;
    sub_10000513C(v8, v4);
    v9 = async function pointer to SerializedDataExportStream.append<A>(contentsOf:)[1];
    v10 = swift_task_alloc();
    v0[10] = v10;
    v11 = sub_100005190();
    *v10 = v0;
    v10[1] = sub_100002CEC;
    v12 = v0[4];

    return SerializedDataExportStream.append<A>(contentsOf:)(v0 + 2, &type metadata for Data, v11);
  }
}

uint64_t sub_100002AB4()
{
  v2 = *(*v1 + 56);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_10000551C;
  }

  else
  {
    v3 = sub_100002BCC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100002BCC()
{
  v1 = (v0[5] + v0[6]);
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[8] = v2;
    v5 = *v1;
    v0[9] = *v1;
    v0[2] = v5;
    v0[3] = v2;
    sub_10000513C(v5, v2);
    v6 = async function pointer to SerializedDataExportStream.append<A>(contentsOf:)[1];
    v7 = swift_task_alloc();
    v0[10] = v7;
    v8 = sub_100005190();
    *v7 = v0;
    v7[1] = sub_100002CEC;
    v9 = v0[4];

    return SerializedDataExportStream.append<A>(contentsOf:)(v0 + 2, &type metadata for Data, v8);
  }
}

uint64_t sub_100002CEC()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_100002E64;
  }

  else
  {
    v3 = sub_100002E00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100002E00()
{
  sub_100004FF4(v0[9], v0[8]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100002E64()
{
  sub_100004FF4(v0[9], v0[8]);
  v1 = v0[1];
  v2 = v0[11];

  return v1();
}

uint64_t sub_100002EE8()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData;
  v0[3] = OBJC_IVAR____TtC22PasswordsDataMigration19AppMigrationHandler_cachedExportData;
  v3 = (v1 + v2);
  v4 = v3[1];
  if (v4 >> 60 == 15)
  {
    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_10000302C;
    v6 = v0[2];

    return sub_100001960();
  }

  result = *v3;
  v8 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      sub_100004FF4(result, v4);
      result = 0;
      goto LABEL_15;
    }

    v10 = *(result + 16);
    v9 = *(result + 24);
    result = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    result = HIDWORD(result) - result;
    goto LABEL_15;
  }

  if (v8)
  {
    goto LABEL_12;
  }

  sub_100004FF4(result, v4);
  result = BYTE6(v4);
LABEL_15:
  v11 = v0[1];

  return v11(result);
}

uint64_t sub_10000302C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_100005510;
  }

  else
  {
    v3 = sub_100003144;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100003144()
{
  v1 = (*(v0 + 16) + *(v0 + 24));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    goto LABEL_2;
  }

  v4 = *v1;
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 != 2)
    {
LABEL_2:
      v3 = 0;
LABEL_3:
      (*(v0 + 8))(v3);
      return;
    }

    v7 = v4 + 16;
    v4 = *(v4 + 16);
    v6 = *(v7 + 8);
    v3 = v6 - v4;
    if (!__OFSUB__(v6, v4))
    {
      goto LABEL_3;
    }

    __break(1u);
  }

  else if (!v5)
  {
    (*(v0 + 8))(BYTE6(v2));
    return;
  }

  v8 = __OFSUB__(HIDWORD(v4), v4);
  v9 = HIDWORD(v4) - v4;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    (*(v0 + 8))(v9);
  }
}

uint64_t sub_1000031C0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005518;

  return sub_100002454();
}

uint64_t sub_100003250(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to DataclassSerializedDataExporting.serializedDataErrorCount.getter[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005518;

  return DataclassSerializedDataExporting.serializedDataErrorCount.getter(a1, a2);
}

uint64_t sub_1000032F8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003390;

  return sub_100002934(a1);
}

uint64_t sub_100003390()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003484()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003514;

  return sub_100002EC8();
}

uint64_t sub_100003514(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100003624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a1;
  v5[13] = a3;
  v7 = sub_100005734();
  v5[16] = v7;
  v8 = *(v7 - 8);
  v5[17] = v8;
  v9 = *(v8 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v10 = sub_100005524();
  v5[21] = v10;
  v11 = *(v10 - 8);
  v5[22] = v11;
  v12 = *(v11 + 64) + 15;
  v5[23] = swift_task_alloc();
  v13 = *(a3 - 8);
  v5[24] = v13;
  v14 = *(v13 + 64) + 15;
  v5[25] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[26] = AssociatedTypeWitness;
  v16 = *(AssociatedTypeWitness - 8);
  v5[27] = v16;
  v17 = *(v16 + 64) + 15;
  v5[28] = swift_task_alloc();

  return _swift_task_switch(sub_100003860, 0, 0);
}

uint64_t sub_100003860()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 112);
  (*(*(v0 + 192) + 16))(*(v0 + 200), *(v0 + 96), *(v0 + 104));
  sub_100005794();
  *(v0 + 80) = xmmword_100005B30;
  v3 = *(v0 + 208);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v8 = swift_task_alloc();
  *(v0 + 232) = v8;
  *v8 = v0;
  v8[1] = sub_1000039A8;
  v9 = *(v0 + 224);
  v10 = *(v0 + 208);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 288, v10, AssociatedConformanceWitness);
}

uint64_t sub_1000039A8()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_100004510;
  }

  else
  {
    v3 = sub_100003AE8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100003AE8()
{
  if (*(v0 + 289))
  {
    if (qword_10000C280 != -1)
    {
      swift_once();
    }

    v1 = sub_100005764();
    *(v0 + 248) = sub_1000051E4(v1, qword_10000C620);
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    sub_10000513C(v2, v3);
    v4 = sub_100005744();
    v5 = sub_1000057A4();
    if (!os_log_type_enabled(v4, v5))
    {
      sub_100005008(v2, v3);
LABEL_23:
      v23 = *(v0 + 240);
      v25 = *(v0 + 176);
      v24 = *(v0 + 184);
      v26 = *(v0 + 160);
      v27 = *(v0 + 168);
      v28 = *(v0 + 128);

      v29 = sub_100005564();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      *(v0 + 256) = sub_100005554();
      (*(v25 + 104))(v24, enum case for JSONDecoder.DateDecodingStrategy.secondsSince1970(_:), v27);
      sub_100005534();
      swift_beginAccess();
      v32 = *(v0 + 80);
      v33 = *(v0 + 88);
      sub_1000054C4(&qword_10000C258, &type metadata accessor for ASExportedCredentialData);
      sub_100005544();
      if (v23)
      {
        (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

        sub_100005008(*(v0 + 80), *(v0 + 88));
        v34 = *(v0 + 224);
        v35 = *(v0 + 200);
        v36 = *(v0 + 184);
        v38 = *(v0 + 152);
        v37 = *(v0 + 160);
        v39 = *(v0 + 144);

        v40 = *(v0 + 8);
      }

      else
      {
        v41 = *(*(v0 + 136) + 16);
        v41(*(v0 + 152), *(v0 + 160), *(v0 + 128));
        v42 = sub_100005744();
        v43 = sub_1000057A4();
        v44 = os_log_type_enabled(v42, v43);
        v45 = *(v0 + 152);
        v46 = *(v0 + 128);
        v47 = *(v0 + 136);
        if (v44)
        {
          v48 = swift_slowAlloc();
          *v48 = 134217984;
          v67 = v41;
          v49 = *(sub_100005724() + 16);

          v50 = *(v47 + 8);
          v50(v45, v46);
          *(v48 + 4) = v49;
          v41 = v67;
          _os_log_impl(&_mh_execute_header, v42, v43, "During import, decoded %ld items", v48, 0xCu);
        }

        else
        {
          v50 = *(v47 + 8);
          v50(*(v0 + 152), *(v0 + 128));
        }

        *(v0 + 264) = v50;
        v51 = *(v0 + 120);

        v52 = sub_100005744();
        v53 = sub_1000057A4();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "Starting import of decoded items", v54, 2u);
        }

        v55 = *(v0 + 160);
        v56 = *(v0 + 144);
        v57 = *(v0 + 120);
        v58 = *(v0 + 128);

        v41(v56, v55, v58);
        v59 = [objc_opt_self() sharedStore];
        v60 = sub_1000056C4();
        v61 = *(v60 + 48);
        v62 = *(v60 + 52);
        swift_allocObject();

        *(v0 + 272) = sub_100005694();
        v63 = *(&async function pointer to dispatch thunk of PMCredentialExchangeDataImportModel.startImportAsync() + 1);
        v64 = async function pointer to dispatch thunk of PMCredentialExchangeDataImportModel.startImportAsync();
        v65 = swift_task_alloc();
        *(v0 + 280) = v65;
        *v65 = v0;
        v65[1] = sub_100004208;
        v40 = (&async function pointer to dispatch thunk of PMCredentialExchangeDataImportModel.startImportAsync() + v64);
      }

      return v40();
    }

    v6 = swift_slowAlloc();
    *v6 = 134217984;
    v7 = v3 >> 62;
    if ((v3 >> 62) <= 1)
    {
      if (v7)
      {
        LODWORD(v8) = HIDWORD(v2) - v2;
        if (__OFSUB__(HIDWORD(v2), v2))
        {
          __break(1u);
        }

        v8 = v8;
      }

      else
      {
        v8 = BYTE6(v3);
      }

      goto LABEL_22;
    }

    if (v7 != 2)
    {
      v8 = 0;
LABEL_22:
      *(v6 + 4) = v8;
      v22 = v6;
      sub_100005008(v2, v3);
      _os_log_impl(&_mh_execute_header, v4, v5, "Starting import with %ld bytes of data", v22, 0xCu);

      goto LABEL_23;
    }

    v11 = *(v2 + 16);
    v10 = *(v2 + 24);
    v12 = __OFSUB__(v10, v11);
    v8 = v10 - v11;
    if (!v12)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
    LOBYTE(v3) = *(v0 + 288);
    if (*(v0 + 88) >> 62 == 2)
    {
      v9 = *(*(v0 + 80) + 24);
    }
  }

  v13 = sub_100004D84(&qword_10000C260, &qword_100005DB8);
  *(v0 + 40) = v13;
  *(v0 + 48) = sub_10000539C();
  *(v0 + 16) = v3;
  *(v0 + 290) = *sub_10000505C((v0 + 16), v13);
  sub_1000055C4();
  sub_1000050F0((v0 + 16));
  v14 = *(v0 + 208);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v19 = swift_task_alloc();
  *(v0 + 232) = v19;
  *v19 = v0;
  v19[1] = sub_1000039A8;
  v20 = *(v0 + 224);
  v21 = *(v0 + 208);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 288, v21, AssociatedConformanceWitness);
}

uint64_t sub_100004208()
{
  v1 = *(*v0 + 280);
  v3 = *v0;

  return _swift_task_switch(sub_100004330, 0, 0);
}

uint64_t sub_100004330()
{
  v1 = v0[31];
  v2 = sub_100005744();
  v3 = sub_1000057A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished import", v4, 2u);
  }

  v5 = v0[34];
  v6 = v0[32];
  v8 = v0[27];
  v7 = v0[28];
  v17 = v0[33];
  v18 = v0[26];
  v19 = v0[25];
  v20 = v0[23];
  v9 = v0[20];
  v10 = v0[17];
  v21 = v0[19];
  v22 = v0[18];
  v12 = v0[15];
  v11 = v0[16];

  v16 = sub_1000056B4();
  v13 = sub_1000056A4();

  v17(v9, v11);
  (*(v8 + 8))(v7, v18);
  sub_100005008(v0[10], v0[11]);

  v14 = v0[1];

  return v14(v16, v13);
}

uint64_t sub_100004510()
{
  (*(v0[27] + 8))(v0[28], v0[26]);
  sub_100005008(v0[10], v0[11]);
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100004610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1000046C0;

  return sub_100003624(a1, v11, a3, a4);
}

uint64_t sub_1000046C0(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_1000047D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to DataclassSerializedDataImporting.importSerializedData<A>(from:request:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1000054C4(&qword_10000C278, type metadata accessor for AppMigrationHandler);
  *v12 = v5;
  v12[1] = sub_10000550C;

  return DataclassSerializedDataImporting.importSerializedData<A>(from:request:)(a1, a2, a5, a3, v13, a4);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppMigrationHandler();
  sub_1000054C4(&qword_10000C130, type metadata accessor for AppMigrationHandler);
  sub_1000056D4();
  return 0;
}

uint64_t type metadata accessor for AppMigrationHandler()
{
  result = qword_10000C288;
  if (!qword_10000C288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000049C4()
{
  sub_100004A6C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100004A6C()
{
  if (!qword_10000C160)
  {
    sub_100005734();
    v0 = sub_1000057C4();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C160);
    }
  }
}

uint64_t sub_100004D84(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D84(&qword_10000C228, &qword_100005D88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100004E3C()
{
  result = qword_10000C230;
  if (!qword_10000C230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C230);
  }

  return result;
}

uint64_t sub_100004E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D84(&qword_10000C228, &qword_100005D88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100004EF8()
{
  result = qword_10000C240;
  if (!qword_10000C240)
  {
    sub_100004FAC(&qword_10000C228, &qword_100005D88);
    sub_1000054C4(&qword_10000C248, &type metadata accessor for ASExportedCredentialData);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C240);
  }

  return result;
}

uint64_t sub_100004FAC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004FF4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005008(a1, a2);
  }

  return a1;
}

uint64_t sub_100005008(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_10000505C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000050A0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000050F0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000513C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100005190()
{
  result = qword_10000C250;
  if (!qword_10000C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C250);
  }

  return result;
}

uint64_t sub_1000051E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_10000521C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v3 + 16);
  [v5 setTotalUnitCount:a2];
  [v5 setCompletedUnitCount:a1];
  if (qword_10000C280 != -1)
  {
    swift_once();
  }

  v6 = sub_100005764();
  sub_1000051E4(v6, qword_10000C620);

  oslog = sub_100005744();
  v7 = sub_1000057A4();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v7, "During import, progress updated to %@", v8, 0xCu);
    sub_100005400(v9, &qword_10000C270, &qword_100005DC0);
  }
}

unint64_t sub_10000539C()
{
  result = qword_10000C268;
  if (!qword_10000C268)
  {
    sub_100004FAC(&qword_10000C260, &qword_100005DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C268);
  }

  return result;
}

uint64_t sub_100005400(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004D84(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_100005460(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000054C4(unint64_t *a1, void (*a2)(uint64_t))
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