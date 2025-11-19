uint64_t sub_1470()
{
  v0 = sub_4518();
  sub_1628(v0, static Logger.safetySession);
  sub_1548(v0, static Logger.safetySession);
  return sub_4508();
}

uint64_t Logger.safetySession.unsafeMutableAddressor()
{
  if (qword_C4B0 != -1)
  {
    sub_168C();
  }

  v0 = sub_4518();

  return sub_1548(v0, static Logger.safetySession);
}

uint64_t sub_1548(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Logger.safetySession.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_C4B0 != -1)
  {
    sub_168C();
  }

  v2 = sub_4518();
  v3 = sub_1548(v2, static Logger.safetySession);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_1628(uint64_t a1, uint64_t *a2)
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

uint64_t sub_168C()
{

  return swift_once();
}

uint64_t sub_16AC()
{
  sub_1708((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_1708(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1754@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_2444(v1 + 56, &v6);
  if (!v7)
  {
    sub_24B4(&v6, &qword_C678, &qword_4990);
    sub_2444(v1 + 16, &v4);
    if (v5)
    {
      sub_2628(&v4, &v6);
    }

    else
    {
      v7 = &type metadata for SafetySessionFlowPlugin.SharedObjectProvider;
      v8 = &off_8670;
      *&v6 = swift_allocObject();
      sub_4438();
      sub_4428();
      if (v5)
      {
        sub_24B4(&v4, &qword_C678, &qword_4990);
      }
    }

    sub_2554(&v6, &v4);
    swift_beginAccess();
    sub_25B8(&v4, v1 + 56);
    swift_endAccess();
  }

  return sub_2628(&v6, a1);
}

uint64_t sub_1888()
{
  if (qword_C4B0 != -1)
  {
    swift_once();
  }

  v0 = sub_4518();
  sub_1548(v0, static Logger.safetySession);
  v1 = sub_44F8();
  v2 = sub_4538();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "SafetySessionFlowPlugin is being initialized", v3, 2u);
  }

  type metadata accessor for SafetySessionFlowPlugin();
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  v4 = swift_allocObject();
  sub_1994(v6);
  return v4;
}

uint64_t sub_1994(uint64_t a1)
{
  v3 = *(*(sub_44E8() - 8) + 64);
  __chkstk_darwin();
  type metadata accessor for SafetySessionCATs();
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0;
  sub_44D8();
  *(v1 + 96) = sub_4468();
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  *(v1 + 48) = *(a1 + 32);
  return v1;
}

uint64_t sub_1A54()
{
  sub_1754(v7);
  v0 = sub_22E0(v7, v7[3]);
  sub_2554((v0 + 5), &v6);
  v1 = sub_4378();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();

  v4 = sub_4368();
  sub_1708(v7);
  v7[0] = v4;
  sub_4388();

  sub_4398();
}

uint64_t sub_1B30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BCC;

  return sub_1CB0();
}

uint64_t sub_1BCC()
{
  sub_26EC();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_26F8();
  *v3 = v2;

  sub_2708();

  return v4();
}

uint64_t sub_1CB0()
{
  sub_26EC();
  v1[17] = v2;
  v1[18] = v0;
  v3 = *(*(sub_2298(&qword_C668, &qword_4970) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v4 = sub_4418();
  v1[20] = v4;
  v5 = *(v4 - 8);
  v1[21] = v5;
  v6 = *(v5 + 64) + 15;
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_1DA4, 0, 0);
}

uint64_t sub_1DA4()
{
  sub_26EC();
  v1 = *(v0[18] + 96);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_1E3C;
  v3 = v0[22];

  return sub_27A0(v3);
}

uint64_t sub_1E3C()
{
  sub_26EC();
  v2 = *(*v1 + 184);
  v3 = *v1;
  sub_26F8();
  *v4 = v3;
  *(v5 + 192) = v0;

  if (v0)
  {
    v6 = sub_20C0;
  }

  else
  {
    v6 = sub_1F44;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1F44()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  sub_1754(v0 + 16);
  v7 = sub_22E0((v0 + 16), *(v0 + 40));
  sub_2554(v7, v0 + 56);
  v8 = sub_4408();
  sub_2324(v3, 1, 1, v8);
  v9 = sub_4448();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v6[3] = v9;
  v6[4] = &protocol witness table for AceOutput;
  sub_234C(v6);
  sub_43F8();
  sub_24B4(v0 + 96, &qword_C670, &qword_4978);
  sub_24B4(v3, &qword_C668, &qword_4970);
  sub_1708((v0 + 56));
  (*(v2 + 8))(v1, v4);
  sub_1708((v0 + 16));

  sub_2708();

  return v10();
}

uint64_t sub_20C0()
{
  sub_26EC();
  v1 = v0[22];
  v2 = v0[19];

  sub_2708();
  v4 = v0[24];

  return v3();
}

uint64_t sub_2128()
{
  sub_24B4(v0 + 16, &qword_C678, &qword_4990);
  sub_24B4(v0 + 56, &qword_C678, &qword_4990);
  v1 = *(v0 + 96);

  return v0;
}

uint64_t sub_2188()
{
  sub_2128();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_2204@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1888();
  *a1 = result;
  return result;
}

unint64_t sub_2244()
{
  result = qword_C660;
  if (!qword_C660)
  {
    type metadata accessor for SafetySessionFlowPlugin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C660);
  }

  return result;
}

uint64_t sub_2298(uint64_t *a1, uint64_t *a2)
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

void *sub_22E0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_234C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_23AC()
{
  sub_26EC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BCC;

  return sub_1B30();
}

uint64_t sub_2444(uint64_t a1, uint64_t a2)
{
  v4 = sub_2298(&qword_C678, &qword_4990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2298(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2514()
{
  sub_1708((v0 + 16));
  sub_1708((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_2554(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2298(&qword_C678, &qword_4990);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2628(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2648(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2688(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2708()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t type metadata accessor for SafetySessionCATs()
{
  result = qword_C680;
  if (!qword_C680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27A0(uint64_t a1)
{
  v3 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v6 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2874;

  return v6(a1, 0xD000000000000020, 0x8000000000004E70, &_swiftEmptyArrayStorage);
}

uint64_t sub_2874()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2968(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_29BC(a1, a2);
}

uint64_t sub_29BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_44E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(sub_2298(&qword_C6D0, &unk_4CE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  sub_2B60(a1, &v13 - v10);
  (*(v5 + 16))(v8, a2, v4);
  v11 = sub_4458();
  (*(v5 + 8))(a2, v4);
  sub_2BD0(a1);
  return v11;
}

uint64_t sub_2B28()
{
  v0 = sub_4478();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_2B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_2298(&qword_C6D0, &unk_4CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2BD0(uint64_t a1)
{
  v2 = sub_2298(&qword_C6D0, &unk_4CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2C38(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 1701667182;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x8000000000004CE0;
  }

  if (a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 1701667182;
  }

  if (a2)
  {
    v6 = 0x8000000000004CE0;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_45A8();
  }

  return v8 & 1;
}

uint64_t sub_2CE0()
{
  sub_4528();
}

Swift::Int sub_2D48()
{
  sub_45B8();
  sub_4528();

  return sub_45C8();
}

uint64_t sub_2DC4()
{
  sub_3B14(v0 + OBJC_IVAR____TtCC23SafetySessionFlowPlugin10SirikitApp7Builder_name);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_2E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(sub_2298(&qword_C900, &qword_4B48) - 8) + 64);
  sub_3FBC();
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v10 || (result = sub_45A8(), (result & 1) != 0))
  {
    sub_3C40(v3 + OBJC_IVAR____TtC23SafetySessionFlowPlugin10SirikitApp_name, v9);
    v12 = sub_4488();
    if (sub_3CB0(v9, 1, v12) == 1)
    {
      result = sub_3B14(v9);
LABEL_8:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v12;
    v13 = sub_234C(a3);
    return (*(*(v12 - 8) + 32))(v13, v9, v12);
  }

  else
  {
    if (a1 != 0xD000000000000011 || 0x8000000000004CE0 != a2)
    {
      result = sub_45A8();
      if ((result & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v15 = *(v3 + OBJC_IVAR____TtC23SafetySessionFlowPlugin10SirikitApp_isDesignedByApple);
    *(a3 + 24) = &type metadata for Bool;
    *a3 = v15;
  }

  return result;
}

uint64_t sub_2FF4(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_8558;
  v7._object = a2;
  v4 = sub_4558(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3048(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_30A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2FF4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_30D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3048(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_3104@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2FF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_3144(uint64_t a1)
{
  v2 = sub_3B7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_3180(uint64_t a1)
{
  v2 = sub_3B7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_31BC()
{
  sub_3B14(v0 + OBJC_IVAR____TtC23SafetySessionFlowPlugin10SirikitApp_name);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_3250()
{
  sub_34E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_32F4(void *a1)
{
  v3 = v1;
  v5 = sub_2298(&qword_C920, &qword_4B58);
  sub_3FC8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_3FBC();
  __chkstk_darwin();
  v11 = &v17[-v10];
  v12 = a1[4];
  sub_22E0(a1, a1[3]);
  sub_3B7C();
  sub_45E8();
  v17[15] = 0;
  sub_4488();
  sub_3F94();
  sub_3ACC(v13, v14);
  sub_4588();
  if (!v2)
  {
    v15 = *(v3 + OBJC_IVAR____TtC23SafetySessionFlowPlugin10SirikitApp_isDesignedByApple);
    v17[14] = 1;
    sub_4598();
  }

  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_3490(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_3630(a1);
  return v5;
}

void sub_34E0()
{
  if (!qword_C710)
  {
    sub_4488();
    v0 = sub_4548();
    if (!v1)
    {
      atomic_store(v0, &qword_C710);
    }
  }
}

uint64_t sub_3560(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3598()
{
  sub_34E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id *sub_3630(uint64_t *a1)
{
  v3 = v1;
  v5 = *(*(sub_2298(&qword_C900, &qword_4B48) - 8) + 64);
  sub_3FBC();
  __chkstk_darwin();
  v7 = &v19 - v6;
  v20 = sub_2298(&qword_C908, &qword_4B50);
  sub_3FC8(v20);
  v9 = *(v8 + 64);
  sub_3FBC();
  __chkstk_darwin();
  v1[2] = 0;
  v10 = a1[4];
  sub_22E0(a1, a1[3]);
  sub_3B7C();
  sub_45D8();
  if (v2)
  {

    type metadata accessor for SirikitApp(0);
    v13 = *(*v1 + 12);
    v14 = *(*v1 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_4488();
    v22 = 0;
    sub_3F94();
    sub_3ACC(v11, v12);
    sub_4568();
    sub_3BD0(v7, v1 + OBJC_IVAR____TtC23SafetySessionFlowPlugin10SirikitApp_name);
    v21 = 1;
    v16 = sub_4578();
    v17 = sub_3FAC();
    v18(v17);
    *(v3 + OBJC_IVAR____TtC23SafetySessionFlowPlugin10SirikitApp_isDesignedByApple) = v16 & 1;
  }

  sub_1708(a1);
  return v3;
}

void *sub_38DC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_3924(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t (*sub_3970())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_39EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_3490(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_3ACC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3B14(uint64_t a1)
{
  v2 = sub_2298(&qword_C900, &qword_4B48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_3B7C()
{
  result = qword_C910;
  if (!qword_C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C910);
  }

  return result;
}

uint64_t sub_3BD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2298(&qword_C900, &qword_4B48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2298(&qword_C900, &qword_4B48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SirikitApp.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SirikitApp.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x3E3CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_3E90()
{
  result = qword_C930;
  if (!qword_C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C930);
  }

  return result;
}

unint64_t sub_3EE8()
{
  result = qword_C938;
  if (!qword_C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C938);
  }

  return result;
}

unint64_t sub_3F40()
{
  result = qword_C940;
  if (!qword_C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C940);
  }

  return result;
}

uint64_t type metadata accessor for SafetySessionCATsSimple()
{
  result = qword_C948;
  if (!qword_C948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4068(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_40BC(a1, a2);
}

uint64_t sub_40BC(uint64_t a1, uint64_t a2)
{
  v5 = sub_44E8();
  v6 = sub_4350(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2298(&qword_C6D0, &unk_4CE0);
  v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13 - 8);
  sub_2B60(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_4498();
  (*(v8 + 8))(a2, v2);
  sub_2BD0(a1);
  return v16;
}

uint64_t sub_4218(uint64_t a1, uint64_t a2)
{
  v5 = sub_44E8();
  v6 = sub_4350(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_44A8();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_4318()
{
  v0 = sub_44B8();

  return _swift_deallocClassInstance(v0, 16, 7);
}