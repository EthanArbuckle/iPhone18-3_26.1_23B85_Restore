char *sub_A81BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_3D68(&qword_2837B0, &qword_1F26D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_A82C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_3D68(&qword_2837A8, &qword_1F26D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_A83D4(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

id sub_A8474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16)
{
  v17 = &v16[OBJC_IVAR___BAContentData_contentID];
  *v17 = a1;
  v17[1] = a2;
  *&v16[OBJC_IVAR___BAContentData_contentType] = a3;
  v18 = &v16[OBJC_IVAR___BAContentData_contentPrivateID];
  *v18 = a4;
  v18[1] = a5;
  v19 = &v16[OBJC_IVAR___BAContentData_contentUserID];
  *v19 = a6;
  v19[1] = a7;
  *&v16[OBJC_IVAR___BAContentData_contentAcquisitionType] = a8;
  *&v16[OBJC_IVAR___BAContentData_contentSubType] = a9;
  *&v16[OBJC_IVAR___BAContentData_contentLength] = a10;
  *&v16[OBJC_IVAR___BAContentData_supplementalContentCount] = a11;
  *&v16[OBJC_IVAR___BAContentData_seriesType] = a12;
  *&v16[OBJC_IVAR___BAContentData_productionType] = a13;
  v20 = a11;
  v21 = a9;
  v22 = a10;
  if (a14)
  {
    v23 = [a14 BOOLValue];
  }

  else
  {
    v23 = 2;
  }

  v16[OBJC_IVAR___BAContentData_isUnified] = v23;
  v16[OBJC_IVAR___BAContentData_isAccoladedContent] = 2;
  v24 = &v16[OBJC_IVAR___BAContentData_contentKind];
  *v24 = a15;
  v24[1] = a16;
  v26.receiver = v16;
  v26.super_class = type metadata accessor for BridgedContentData();
  return objc_msgSendSuper2(&v26, "init");
}

unint64_t sub_A8650(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_A8684(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_A87B4(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_A88A0()
{
  result = qword_283310;
  if (!qword_283310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283310);
  }

  return result;
}

unint64_t sub_A88F8()
{
  result = qword_283318;
  if (!qword_283318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283318);
  }

  return result;
}

unint64_t sub_A8950()
{
  result = qword_283320;
  if (!qword_283320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283320);
  }

  return result;
}

unint64_t sub_A89A8()
{
  result = qword_283328;
  if (!qword_283328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283328);
  }

  return result;
}

unint64_t sub_A8A00()
{
  result = qword_283330;
  if (!qword_283330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283330);
  }

  return result;
}

unint64_t sub_A8A58()
{
  result = qword_283338;
  if (!qword_283338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283338);
  }

  return result;
}

unint64_t sub_A8AB0()
{
  result = qword_283340;
  if (!qword_283340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283340);
  }

  return result;
}

unint64_t sub_A8B08()
{
  result = qword_283348;
  if (!qword_283348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283348);
  }

  return result;
}

unint64_t sub_A8B60()
{
  result = qword_283350;
  if (!qword_283350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283350);
  }

  return result;
}

unint64_t sub_A8BB8()
{
  result = qword_283358;
  if (!qword_283358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283358);
  }

  return result;
}

unint64_t sub_A8C10()
{
  result = qword_283360;
  if (!qword_283360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283360);
  }

  return result;
}

unint64_t sub_A8C68()
{
  result = qword_283368;
  if (!qword_283368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283368);
  }

  return result;
}

unint64_t sub_A8CC0()
{
  result = qword_283370;
  if (!qword_283370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283370);
  }

  return result;
}

unint64_t sub_A8D18()
{
  result = qword_283378;
  if (!qword_283378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283378);
  }

  return result;
}

unint64_t sub_A8D70()
{
  result = qword_283380;
  if (!qword_283380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283380);
  }

  return result;
}

unint64_t sub_A8DC8()
{
  result = qword_283388;
  if (!qword_283388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283388);
  }

  return result;
}

unint64_t sub_A8E20()
{
  result = qword_283390;
  if (!qword_283390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283390);
  }

  return result;
}

unint64_t sub_A8E78()
{
  result = qword_283398;
  if (!qword_283398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283398);
  }

  return result;
}

unint64_t sub_A8ED0()
{
  result = qword_2833A0;
  if (!qword_2833A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2833A0);
  }

  return result;
}

unint64_t sub_A8F28()
{
  result = qword_2833A8;
  if (!qword_2833A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2833A8);
  }

  return result;
}

unint64_t sub_A8F80()
{
  result = qword_2833B0;
  if (!qword_2833B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2833B0);
  }

  return result;
}

unint64_t sub_A8FD8()
{
  result = qword_2833B8;
  if (!qword_2833B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2833B8);
  }

  return result;
}

unint64_t sub_A9030()
{
  result = qword_2833C0;
  if (!qword_2833C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2833C0);
  }

  return result;
}

unint64_t sub_A9088()
{
  result = qword_2833C8;
  if (!qword_2833C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2833C8);
  }

  return result;
}

unint64_t sub_A90E0()
{
  result = qword_2833D0;
  if (!qword_2833D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2833D0);
  }

  return result;
}

unint64_t sub_A9138()
{
  result = qword_2833D8;
  if (!qword_2833D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2833D8);
  }

  return result;
}

unint64_t sub_A9190()
{
  result = qword_2833E0;
  if (!qword_2833E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2833E0);
  }

  return result;
}

unint64_t sub_A91E8()
{
  result = qword_2833E8;
  if (!qword_2833E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2833E8);
  }

  return result;
}

unint64_t sub_A9240()
{
  result = qword_2833F0;
  if (!qword_2833F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2833F0);
  }

  return result;
}

unint64_t sub_A9298()
{
  result = qword_2833F8;
  if (!qword_2833F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2833F8);
  }

  return result;
}

unint64_t sub_A9A60()
{
  result = qword_283798;
  if (!qword_283798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283798);
  }

  return result;
}

double sub_A9AF0()
{
  qword_2837E8 = 0;
  result = 0.0;
  xmmword_2837C8 = 0u;
  unk_2837D8 = 0u;
  return result;
}

uint64_t sub_A9B08@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27D1D8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_A9D0C(&xmmword_2837C8, v2);
}

uint64_t EnvironmentValues._sizeProvider.getter()
{
  sub_A9BC4();

  return sub_1E1490();
}

unint64_t sub_A9BC4()
{
  result = qword_283808;
  if (!qword_283808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283808);
  }

  return result;
}

uint64_t sub_A9C58(uint64_t a1)
{
  sub_A9D0C(a1, v3);
  sub_A9D0C(v3, &v2);
  sub_A9BC4();
  sub_1E14A0();
  return sub_A9D7C(v3);
}

uint64_t EnvironmentValues._sizeProvider.setter(uint64_t a1)
{
  sub_A9D0C(a1, v3);
  sub_A9BC4();
  sub_1E14A0();
  return sub_A9D7C(a1);
}

uint64_t sub_A9D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_283810, &unk_20EAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A9D7C(uint64_t a1)
{
  v2 = sub_3D68(&qword_283810, &unk_20EAE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*EnvironmentValues._sizeProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_A9BC4();
  sub_1E1490();
  return sub_A9E74;
}

void sub_A9E74(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  v4 = *(*a1 + 128);
  if (a2)
  {
    sub_A9D0C(*a1, v2 + 40);
    sub_A9D0C(v2 + 40, v2 + 80);
    sub_1E14A0();
    sub_A9D7C(v2 + 40);
  }

  else
  {
    sub_A9D0C(*a1, v2 + 40);
    sub_1E14A0();
  }

  sub_A9D7C(v2);

  free(v2);
}

uint64_t View.appAnalyticsSizeProvider(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_5DE50(&qword_283818, &qword_1F26F0);
  v5 = sub_1E1440();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v13 - v8;
  swift_getKeyPath();
  sub_4C2BC(a1, v14);
  sub_1E1500();

  sub_A9D7C(v14);
  sub_4C2BC(a1, v14);
  v10 = swift_allocObject();
  sub_7EE7C(v14, v10 + 16);
  v11 = sub_AA218();
  v13[1] = a3;
  v13[2] = v11;
  swift_getWitnessTable();
  sub_1E14F0();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_AA134()
{
  if (qword_27D1E0 != -1)
  {
    swift_once();
  }

  v0 = sub_3D68(&qword_283828, qword_1F2720);
  sub_3B2C(v0, qword_2837F0);
  sub_3D68(&qword_283830, &qword_1F2798);
  return sub_1E1710();
}

uint64_t sub_AA1D8()
{
  sub_4E48((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_AA218()
{
  result = qword_283820;
  if (!qword_283820)
  {
    sub_5DE50(&qword_283818, &qword_1F26F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283820);
  }

  return result;
}

uint64_t sub_AA27C()
{
  v0 = sub_3D68(&qword_283828, qword_1F2720);
  sub_5F94(v0, qword_2837F0);
  sub_3B2C(v0, qword_2837F0);
  sub_3D68(&qword_283830, &qword_1F2798);
  return sub_1E1700();
}

uint64_t static MetricsFieldsContext.Property<A>.sizeProvider.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D1E0 != -1)
  {
    swift_once();
  }

  v2 = sub_3D68(&qword_283828, qword_1F2720);
  v3 = sub_3B2C(v2, qword_2837F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_AA404(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_5DE50(&qword_283818, &qword_1F26F0);
  sub_1E1440();
  sub_AA218();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t UserData.userExperience.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall UserData.init(userStorefrontID:userID:userExperience:)(BookAnalytics::UserData *__return_ptr retstr, Swift::String userStorefrontID, Swift::String userID, Swift::OpaquePointer_optional userExperience)
{
  retstr->userStorefrontID = userStorefrontID;
  retstr->userID = userID;
  retstr->userExperience.value._rawValue = userExperience.value._rawValue;
}

unint64_t sub_AA4F8()
{
  v1 = 0x444972657375;
  if (*v0 != 1)
  {
    v1 = 0x6570784572657375;
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

uint64_t sub_AA560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_AAE04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_AA588(uint64_t a1)
{
  v2 = sub_AABD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_AA5C4(uint64_t a1)
{
  v2 = sub_AABD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UserData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_283838, &qword_1F27A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v17 = v1[3];
  v18 = v10;
  v16 = v1[4];
  v11 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_AABD8();
  sub_1E1E00();
  v23 = 0;
  v12 = v19;
  sub_1E1CB0();
  if (!v12)
  {
    v14 = v16;
    v22 = 1;
    sub_1E1CB0();
    v20 = v14;
    v21 = 2;
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    sub_6E7F0(&qword_281190);
    sub_1E1C80();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t UserData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_283848, &qword_1F27A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_AABD8();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v24 = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  v20 = v11;
  v23 = 1;
  v18 = sub_1E1BE0();
  v19 = v14;
  sub_3D68(&qword_281BC0, &unk_1EDD80);
  v22 = 2;
  sub_6E7F0(&qword_2811B8);
  sub_1E1BB0();
  (*(v6 + 8))(v9, v5);
  v15 = v21;
  *a2 = v20;
  a2[1] = v13;
  v16 = v19;
  a2[2] = v18;
  a2[3] = v16;
  a2[4] = v15;

  sub_4E48(a1);
}

uint64_t _s13BookAnalytics8UserDataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_1E1D30() & 1) != 0)
  {
    v9 = v2 == v5 && v4 == v6;
    if (v9 || (sub_1E1D30() & 1) != 0)
    {
      if (v3)
      {
        if (v7 && (sub_5C5F8(v3, v7) & 1) != 0)
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_AABD8()
{
  result = qword_283840;
  if (!qword_283840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283840);
  }

  return result;
}

unint64_t sub_AAC30()
{
  result = qword_283850;
  if (!qword_283850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283850);
  }

  return result;
}

unint64_t sub_AAC88()
{
  result = qword_283858;
  if (!qword_283858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283858);
  }

  return result;
}

unint64_t sub_AAD00()
{
  result = qword_283860;
  if (!qword_283860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283860);
  }

  return result;
}

unint64_t sub_AAD58()
{
  result = qword_283868;
  if (!qword_283868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283868);
  }

  return result;
}

unint64_t sub_AADB0()
{
  result = qword_283870;
  if (!qword_283870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283870);
  }

  return result;
}

uint64_t sub_AAE04(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000000002159B0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444972657375 && a2 == 0xE600000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570784572657375 && a2 == 0xEE0065636E656972)
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

BookAnalytics::FrameName_optional __swiftcall FrameName.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2602A8;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 16;
  if (v5 < 0x10)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t FrameName.rawValue.getter()
{
  result = 0x6165526C61746F74;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
    case 4:
      result = 0x6461655274736F6DLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x64656873696E6966;
      break;
    case 7:
      result = 0x6E6946736B6F6F62;
      break;
    case 8:
      result = 0x6D6D755372616579;
      break;
    case 9:
      result = 0x626967696C656E69;
      break;
    case 0xA:
      result = 0xD000000000000013;
      break;
    case 0xB:
      result = 0xD000000000000015;
      break;
    case 0xC:
      result = 0x7472617453746567;
      break;
    case 0xD:
      result = 0xD000000000000013;
      break;
    case 0xE:
      result = 0xD000000000000019;
      break;
    case 0xF:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_AB1DC(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = FrameName.rawValue.getter();
  v4 = v3;
  if (v2 == FrameName.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1E1D30();
  }

  return v7 & 1;
}

unint64_t sub_AB27C()
{
  result = qword_283878;
  if (!qword_283878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283878);
  }

  return result;
}

Swift::Int sub_AB2D0()
{
  v1 = *v0;
  sub_1E1DC0();
  FrameName.rawValue.getter();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_AB338()
{
  v2 = *v0;
  FrameName.rawValue.getter();
  sub_1E17D0();
}

Swift::Int sub_AB39C()
{
  v1 = *v0;
  sub_1E1DC0();
  FrameName.rawValue.getter();
  sub_1E17D0();

  return sub_1E1DE0();
}

unint64_t sub_AB40C@<X0>(unint64_t *a1@<X8>)
{
  result = FrameName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_AB4F4()
{
  result = qword_283880;
  if (!qword_283880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283880);
  }

  return result;
}

BookAnalytics::WelcomeScreenType_optional __swiftcall WelcomeScreenType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260448;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t WelcomeScreenType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x7265766F63736964;
  v4 = 0x657061637365;
  if (v1 != 3)
  {
    v4 = 2003792487;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D6F636C6577;
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

unint64_t sub_AB644()
{
  result = qword_283888;
  if (!qword_283888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283888);
  }

  return result;
}

Swift::Int sub_AB698()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_AB770()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_AB834()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_AB914(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE800000000000000;
  v6 = 0x7265766F63736964;
  v7 = 0xE600000000000000;
  v8 = 0x657061637365;
  if (v2 != 3)
  {
    v8 = 2003792487;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656D6F636C6577;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_ABA68()
{
  result = qword_283890;
  if (!qword_283890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283890);
  }

  return result;
}

uint64_t sub_ABAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x654D686372616573 && a2 == 0xEC000000646F6874)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1D30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_ABB74(uint64_t a1)
{
  v2 = sub_ABD38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_ABBB0(uint64_t a1)
{
  v2 = sub_ABD38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchMethodData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_283898, &qword_1F2C60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_ABD38();
  sub_1E1E00();
  v12 = v8;
  sub_ABD8C();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_ABD38()
{
  result = qword_2838A0;
  if (!qword_2838A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2838A0);
  }

  return result;
}

unint64_t sub_ABD8C()
{
  result = qword_2838A8;
  if (!qword_2838A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2838A8);
  }

  return result;
}

uint64_t SearchMethodData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_2838B0, &qword_1F2C68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_ABD38();
  sub_1E1DF0();
  if (!v2)
  {
    sub_ABF4C();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_ABF4C()
{
  result = qword_2838B8;
  if (!qword_2838B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2838B8);
  }

  return result;
}

unint64_t sub_ABFA4()
{
  result = qword_2838C0;
  if (!qword_2838C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2838C0);
  }

  return result;
}

unint64_t sub_ABFFC()
{
  result = qword_2838C8;
  if (!qword_2838C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2838C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ListeningActionSourceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ListeningActionSourceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_AC1E4()
{
  result = qword_2838D0;
  if (!qword_2838D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2838D0);
  }

  return result;
}

unint64_t sub_AC23C()
{
  result = qword_2838D8;
  if (!qword_2838D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2838D8);
  }

  return result;
}

unint64_t sub_AC294()
{
  result = qword_2838E0;
  if (!qword_2838E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2838E0);
  }

  return result;
}

uint64_t ContextualActionSheetExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextualActionSheetExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextualActionSheetExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextualActionSheetExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextualActionSheetExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextualActionSheetExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextualActionSheetExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextualActionSheetExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextualActionSheetExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextualActionSheetExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextualActionSheetExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextualActionSheetExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextualActionSheetExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ContextualActionSheetExposureEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t ContextualActionSheetExposureEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  v3 = *(v1 + 176);
  v20 = *(v1 + 192);
  v21 = v2;
  v4 = *(v1 + 208);
  v22 = *(v1 + 224);
  v5 = *(v1 + 144);
  v7 = *(v1 + 112);
  v16 = *(v1 + 128);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 144);
  v9 = *(v1 + 176);
  v18 = *(v1 + 160);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 112);
  v15[0] = *(v1 + 96);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 224);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 240);
  *(a1 + 144) = *(v1 + 240);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_275C4(v15, v14);
}

uint64_t ContextualActionSheetExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextualActionSheetExposureEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextualActionSheetExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextualActionSheetExposureEvent.Model(0) + 28);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextualActionSheetExposureEvent.Model.init(contentData:linkData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v8;
  v9 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v9;
  v10 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v10;
  *(a5 + 240) = *(a2 + 144);
  v11 = *(a2 + 128);
  *(a5 + 208) = *(a2 + 112);
  *(a5 + 224) = v11;
  v12 = *(a2 + 96);
  *(a5 + 176) = *(a2 + 80);
  *(a5 + 192) = v12;
  v13 = *(a2 + 64);
  *(a5 + 144) = *(a2 + 48);
  *(a5 + 160) = v13;
  v14 = *(a2 + 32);
  *(a5 + 112) = *(a2 + 16);
  *(a5 + 128) = v14;
  *(a5 + 96) = *a2;
  v15 = type metadata accessor for ContextualActionSheetExposureEvent.Model(0);
  v16 = *(v15 + 24);
  v17 = sub_1E1150();
  (*(*(v17 - 8) + 32))(a5 + v16, a3, v17);
  v18 = *(v15 + 28);
  v19 = sub_1E11A0();
  v20 = *(*(v19 - 8) + 32);

  return v20(a5 + v18, a4, v19);
}

uint64_t sub_ACC0C()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x746144746E657665;
  if (*v0 != 2)
  {
    v2 = 0x74614464656D6974;
  }

  if (*v0)
  {
    v1 = 0x617461446B6E696CLL;
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

uint64_t sub_ACC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_AE394(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_ACCC0(uint64_t a1)
{
  v2 = sub_AD15C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_ACCFC(uint64_t a1)
{
  v2 = sub_AD15C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ContextualActionSheetExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_283918, &qword_1F2E90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_AD15C();
  sub_1E1E00();
  v10 = *(v2 + 48);
  v11 = *(v2 + 16);
  v63 = *(v2 + 32);
  v64 = v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 80);
  v65 = *(v2 + 64);
  v66 = v13;
  v14 = *(v2 + 16);
  v62[0] = *v2;
  v62[1] = v14;
  v58 = v63;
  v59 = v12;
  v15 = *(v2 + 80);
  v60 = v65;
  v61 = v15;
  v56 = v62[0];
  v57 = v11;
  v55 = 0;
  sub_13A5C(v62, &v45);
  sub_143D0();
  v16 = v67;
  sub_1E1CF0();
  if (v16)
  {
    v47 = v58;
    v48 = v59;
    v49 = v60;
    v50 = v61;
    v45 = v56;
    v46 = v57;
    sub_14424(&v45);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v67 = v5;
    v44[2] = v58;
    v44[3] = v59;
    v44[4] = v60;
    v44[5] = v61;
    v44[0] = v56;
    v44[1] = v57;
    sub_14424(v44);
    v18 = *(v2 + 208);
    v19 = *(v2 + 176);
    v51 = *(v2 + 192);
    v52 = v18;
    v20 = *(v2 + 208);
    v53 = *(v2 + 224);
    v21 = *(v2 + 144);
    v22 = *(v2 + 112);
    v47 = *(v2 + 128);
    v48 = v21;
    v23 = *(v2 + 144);
    v24 = *(v2 + 176);
    v49 = *(v2 + 160);
    v50 = v24;
    v25 = *(v2 + 112);
    v45 = *(v2 + 96);
    v46 = v25;
    v40 = v51;
    v41 = v20;
    v42 = *(v2 + 224);
    v36 = v47;
    v37 = v23;
    v38 = v49;
    v39 = v19;
    v54 = *(v2 + 240);
    v43 = *(v2 + 240);
    v34 = v45;
    v35 = v22;
    v33 = 1;
    sub_275C4(&v45, v31);
    sub_18630();
    sub_1E1CF0();
    v31[6] = v40;
    v31[7] = v41;
    v31[8] = v42;
    v32 = v43;
    v31[2] = v36;
    v31[3] = v37;
    v31[4] = v38;
    v31[5] = v39;
    v31[0] = v34;
    v31[1] = v35;
    sub_283A8(v31);
    v26 = type metadata accessor for ContextualActionSheetExposureEvent.Model(0);
    v27 = *(v26 + 24);
    v30 = 2;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v28 = *(v26 + 28);
    v30 = 3;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
    return (*(v67 + 8))(v8, v4);
  }
}

unint64_t sub_AD15C()
{
  result = qword_283920;
  if (!qword_283920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283920);
  }

  return result;
}

uint64_t ContextualActionSheetExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v40 = sub_1E11A0();
  v37 = *(v40 - 8);
  v3 = *(v37 + 64);
  __chkstk_darwin(v40);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3D68(&qword_283928, &qword_1F2E98);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v13 = type metadata accessor for ContextualActionSheetExposureEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v65 = a1;
  sub_48B8(a1, v18);
  sub_AD15C();
  v44 = v12;
  v19 = v45;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v65);
  }

  v36 = v8;
  v20 = v42;
  v45 = v16;
  v58 = 0;
  sub_14CB8();
  sub_1E1C20();
  v21 = v62;
  v22 = v45;
  *(v45 + 2) = v61;
  *(v22 + 48) = v21;
  v23 = v64;
  *(v22 + 64) = v63;
  *(v22 + 80) = v23;
  v24 = v60;
  *v22 = v59;
  *(v22 + 16) = v24;
  v47 = 1;
  sub_18FA4();
  sub_1E1C20();
  v25 = v55;
  *(v22 + 192) = v54;
  *(v22 + 208) = v25;
  *(v22 + 224) = v56;
  *(v22 + 240) = v57;
  v26 = v51;
  *(v22 + 128) = v50;
  *(v22 + 144) = v26;
  v27 = v53;
  *(v22 + 160) = v52;
  *(v22 + 176) = v27;
  v28 = v49;
  *(v22 + 96) = v48;
  *(v22 + 112) = v28;
  v46 = 2;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v35 = 0;
  sub_1E1C20();
  v29 = *(v41 + 32);
  v30 = v22 + *(v13 + 24);
  v31 = v36;
  v36 = v5;
  v29(v30, v31, v5);
  v46 = 3;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v33 = v39;
  v32 = v40;
  sub_1E1C20();
  (*(v20 + 8))(v44, v43);
  (*(v37 + 32))(v22 + *(v13 + 28), v33, v32);
  sub_AD75C(v22, v38);
  sub_4E48(v65);
  return sub_AD7C0(v22);
}

uint64_t sub_AD75C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextualActionSheetExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AD7C0(uint64_t a1)
{
  v2 = type metadata accessor for ContextualActionSheetExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_AD8BC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_ADA40(uint64_t a1, uint64_t a2, int *a3)
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

  v11 = sub_3D68(&qword_27E488, &unk_1E5F90);
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

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_ADC0C(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  v13 = sub_3D68(&qword_27E488, &unk_1E5F90);
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

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_ADDD0()
{
  sub_ADEF4(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_ADEF4(319, &unk_27E588, sub_18FA4, sub_18630);
    if (v1 <= 0x3F)
    {
      sub_5684();
      if (v2 <= 0x3F)
      {
        sub_5750();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_ADEF4(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_ADF84(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_AE0BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_AE1E0()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    result = sub_1E11A0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_AE290()
{
  result = qword_283A60;
  if (!qword_283A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283A60);
  }

  return result;
}

unint64_t sub_AE2E8()
{
  result = qword_283A68;
  if (!qword_283A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283A68);
  }

  return result;
}

unint64_t sub_AE340()
{
  result = qword_283A70;
  if (!qword_283A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283A70);
  }

  return result;
}

uint64_t sub_AE394(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
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

uint64_t CollectionRemoveEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionRemoveEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionRemoveEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollectionRemoveEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollectionRemoveEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_281010, &qword_1EC770);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for CollectionRemoveEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t CollectionRemoveEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionRemoveEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionRemoveEvent.Model.init(singleCollectionData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  v7 = *(type metadata accessor for CollectionRemoveEvent.Model(0) + 20);
  v8 = sub_1E1150();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

unint64_t sub_AE94C()
{
  if (*v0)
  {
    result = 0x746144746E657665;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_AE990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000000214460 == a2 || (sub_1E1D30() & 1) != 0)
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

uint64_t sub_AEA80(uint64_t a1)
{
  v2 = sub_AECD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_AEABC(uint64_t a1)
{
  v2 = sub_AECD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionRemoveEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_283AA8, &qword_1F30D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_AECD0();
  sub_1E1E00();
  v11 = v3[1];
  v12 = *(v3 + 4);
  v16 = *v3;
  v17 = v11;
  v18 = v12;
  v15[7] = 0;
  sub_12578();

  sub_1E1CF0();

  if (!v2)
  {
    v13 = *(type metadata accessor for CollectionRemoveEvent.Model(0) + 20);
    LOBYTE(v16) = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_AECD0()
{
  result = qword_283AB0;
  if (!qword_283AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283AB0);
  }

  return result;
}

uint64_t CollectionRemoveEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_1E1150();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v27);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_3D68(&qword_283AB8, &qword_1F30D8);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v28);
  v9 = &v22 - v8;
  v10 = type metadata accessor for CollectionRemoveEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_AECD0();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v23 = v10;
  v15 = v13;
  v17 = v26;
  v16 = v27;
  v32 = 0;
  sub_12520();
  v18 = v28;
  sub_1E1C20();
  v19 = v30;
  v20 = v31;
  *v15 = v29;
  *(v15 + 8) = v19;
  *(v15 + 16) = v20;
  LOBYTE(v29) = 1;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v9, v18);
  (*(v24 + 32))(v15 + *(v23 + 20), v6, v16);
  sub_AF03C(v15, v25);
  sub_4E48(a1);
  return sub_AF0A0(v15);
}

uint64_t sub_AF03C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionRemoveEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AF0A0(uint64_t a1)
{
  v2 = type metadata accessor for CollectionRemoveEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_AF19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_281010, &qword_1EC770);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_AF288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_281010, &qword_1EC770);
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

uint64_t sub_AF3A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_281010, &qword_1EC770);
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

void sub_AF4B8()
{
  sub_6D0D8();
  if (v0 <= 0x3F)
  {
    sub_5684();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_AF550(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_AF610(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_AF6B4()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_AF744()
{
  result = qword_283BE0;
  if (!qword_283BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283BE0);
  }

  return result;
}

unint64_t sub_AF79C()
{
  result = qword_283BE8;
  if (!qword_283BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283BE8);
  }

  return result;
}

unint64_t sub_AF7F4()
{
  result = qword_283BF0;
  if (!qword_283BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283BF0);
  }

  return result;
}

BookAnalytics::BooksGoalsData __swiftcall BooksGoalsData.init(booksCompletedCnt:lastBookCompletedDate:audioBooksCompletedCnt:lastAudioBookCompletedDate:)(Swift::Int32 booksCompletedCnt, Swift::Double lastBookCompletedDate, Swift::Int32 audioBooksCompletedCnt, Swift::Double lastAudioBookCompletedDate)
{
  *v4 = booksCompletedCnt;
  *(v4 + 8) = lastBookCompletedDate;
  *(v4 + 16) = audioBooksCompletedCnt;
  *(v4 + 24) = lastAudioBookCompletedDate;
  result.lastAudioBookCompletedDate = lastAudioBookCompletedDate;
  result.lastBookCompletedDate = lastBookCompletedDate;
  result.audioBooksCompletedCnt = audioBooksCompletedCnt;
  result.booksCompletedCnt = booksCompletedCnt;
  return result;
}

unint64_t sub_AF880()
{
  v1 = 0xD000000000000011;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_AF8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_AFFAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_AF91C(uint64_t a1)
{
  v2 = sub_AFDDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_AF958(uint64_t a1)
{
  v2 = sub_AFDDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BooksGoalsData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_283BF8, &qword_1F32E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v15 = v1[4];
  v11 = *(v1 + 3);
  v12 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_AFDDC();
  sub_1E1E00();
  v19 = 0;
  sub_1E1D00();
  if (!v2)
  {
    v18 = 1;
    sub_1E1CD0();
    v17 = 2;
    sub_1E1D00();
    v16 = 3;
    sub_1E1CD0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t BooksGoalsData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_283C08, &qword_1F32E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_AFDDC();
  sub_1E1DF0();
  if (!v2)
  {
    v22 = 0;
    v11 = sub_1E1C30();
    v21 = 1;
    sub_1E1C00();
    v13 = v12;
    v20 = 2;
    v15 = sub_1E1C30();
    v19 = 3;
    sub_1E1C00();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
    *(a2 + 24) = v17;
  }

  return sub_4E48(a1);
}

unint64_t sub_AFDDC()
{
  result = qword_283C00;
  if (!qword_283C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283C00);
  }

  return result;
}

uint64_t sub_AFE38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_AFE58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_AFEA8()
{
  result = qword_283C10;
  if (!qword_283C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283C10);
  }

  return result;
}

unint64_t sub_AFF00()
{
  result = qword_283C18;
  if (!qword_283C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283C18);
  }

  return result;
}

unint64_t sub_AFF58()
{
  result = qword_283C20;
  if (!qword_283C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283C20);
  }

  return result;
}

uint64_t sub_AFFAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000000002159D0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000000002159F0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000000215A10 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000000215A30 == a2)
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

uint64_t AudioPlaybackSpeedChangeEvent.audioPlaybackSpeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_283C58, &qword_1F3518);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.audioPlaybackSpeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_283C58, &qword_1F3518);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.listeningSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.listeningSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.listeningActionSourceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.listeningActionSourceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.bitRateData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 32);
  v4 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.bitRateData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 32);
  v4 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 36);
  v4 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 36);
  v4 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 40);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 40);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 44);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent(0) + 44);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioPlaybackSpeedChangeEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_283C58, &qword_1F3518);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  v16 = enum case for EventProperty.optional<A>(_:);
  v17 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v17 - 8) + 104))(a1 + v15, v16, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v2, v19);
}

uint64_t AudioPlaybackSpeedChangeEvent.Model.listeningSessionData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 120);
  v7[0] = *(v1 + 104);
  v7[1] = v2;
  v8[0] = *(v1 + 136);
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 146);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_3D9DC(v7, &v6);
}

void AudioPlaybackSpeedChangeEvent.Model.bitRateData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 172);
  *a1 = *(v1 + 164);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
}

uint64_t AudioPlaybackSpeedChangeEvent.Model.errorData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[23];
  v3 = v1[24];
  v4 = v1[25];
  *a1 = v1[22];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t AudioPlaybackSpeedChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent.Model(0) + 44);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioPlaybackSpeedChangeEvent.Model.init(contentData:audioPlaybackSpeedData:listeningSessionData:listeningActionSourceData:bitRateData:errorData:seriesData:eventData:)@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X2>, __int16 *a4@<X3>, int *a5@<X4>, __int128 *a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = *a4;
  v12 = *a5;
  v13 = *(a5 + 4);
  v14 = a5[2];
  v15 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v15;
  v16 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v16;
  v17 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v17;
  *(a9 + 96) = *a2;
  v18 = a3[1];
  *(a9 + 104) = *a3;
  v19 = *a6;
  v20 = *(a6 + 2);
  v21 = *(a6 + 3);
  *(a9 + 120) = v18;
  *(a9 + 136) = a3[2];
  *(a9 + 146) = *(a3 + 42);
  *(a9 + 162) = v11;
  *(a9 + 164) = v12;
  *(a9 + 168) = v13;
  *(a9 + 172) = v14;
  *(a9 + 176) = v19;
  *(a9 + 192) = v20;
  *(a9 + 200) = v21;
  v22 = a7[1];
  *(a9 + 208) = *a7;
  *(a9 + 224) = v22;
  *(a9 + 240) = a7[2];
  v23 = *(type metadata accessor for AudioPlaybackSpeedChangeEvent.Model(0) + 44);
  v24 = sub_1E1150();
  v25 = *(*(v24 - 8) + 32);

  return v25(a9 + v23, a8, v24);
}

unint64_t sub_B1070()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0x6144736569726573;
  if (v1 != 6)
  {
    v3 = 0x746144746E657665;
  }

  v4 = 0x4465746152746962;
  if (v1 != 4)
  {
    v4 = 0x746144726F727265;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v1 == 2)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_B1180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_B303C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B11B4(uint64_t a1)
{
  v2 = sub_B173C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B11F0(uint64_t a1)
{
  v2 = sub_B173C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AudioPlaybackSpeedChangeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_283C60, &qword_1F3540);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_B173C();
  sub_1E1E00();
  v10 = *(v2 + 48);
  v11 = *(v2 + 16);
  v57 = *(v2 + 32);
  v58 = v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 80);
  v59 = *(v2 + 64);
  v60 = v13;
  v14 = *(v2 + 16);
  v56[0] = *v2;
  v56[1] = v14;
  v52 = v57;
  v53 = v12;
  v15 = *(v2 + 80);
  v54 = v59;
  v55 = v15;
  v50 = v56[0];
  v51 = v11;
  v49 = 0;
  sub_13A5C(v56, v48);
  sub_143D0();
  v16 = v61;
  sub_1E1CF0();
  v48[2] = v52;
  v48[3] = v53;
  v48[4] = v54;
  v48[5] = v55;
  v48[0] = v50;
  v48[1] = v51;
  sub_14424(v48);
  if (!v16)
  {
    v47 = *(v2 + 96);
    v46 = 1;
    sub_B1790();
    sub_1E1CF0();
    v18 = *(v2 + 120);
    v44[0] = *(v2 + 104);
    v44[1] = v18;
    v45[0] = *(v2 + 136);
    *(v45 + 10) = *(v2 + 146);
    v41 = *(v2 + 104);
    v19 = *(v2 + 136);
    v42 = *(v2 + 120);
    v43[0] = v19;
    *(v43 + 10) = *(v2 + 146);
    v40 = 2;
    sub_3D9DC(v44, v38);
    sub_3E638();
    sub_1E1CF0();
    v38[0] = v41;
    v38[1] = v42;
    *v39 = v43[0];
    *&v39[10] = *(v43 + 10);
    sub_3E68C(v38);
    LOWORD(v31) = *(v2 + 162);
    v37 = 3;
    sub_14520();
    sub_1E1CF0();
    v20 = *(v2 + 168);
    v21 = *(v2 + 172);
    LODWORD(v31) = *(v2 + 164);
    BYTE4(v31) = v20;
    LODWORD(v32) = v21;
    v37 = 4;
    sub_14574();
    sub_1E1CF0();
    v22 = *(v2 + 184);
    v23 = *(v2 + 192);
    v24 = *(v2 + 200);
    v31 = *(v2 + 176);
    v32 = v22;
    v33 = v23;
    v34 = v24;
    v37 = 5;
    sub_145C8();

    sub_1E1CF0();

    v25 = *(v2 + 216);
    v26 = *(v2 + 224);
    v27 = *(v2 + 232);
    v28 = *(v2 + 240);
    v29 = *(v2 + 248);
    v31 = *(v2 + 208);
    v32 = v25;
    v33 = v26;
    v34 = v27;
    v35 = v28;
    v36 = v29;
    v37 = 6;
    sub_13BDC(v31, v25, v26, v27, v28, v29);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v31, v32, v33, v34, v35, v36);
    LODWORD(v24) = *(type metadata accessor for AudioPlaybackSpeedChangeEvent.Model(0) + 44);
    LOBYTE(v31) = 7;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_B173C()
{
  result = qword_283C68;
  if (!qword_283C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283C68);
  }

  return result;
}

unint64_t sub_B1790()
{
  result = qword_283C70;
  if (!qword_283C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283C70);
  }

  return result;
}

uint64_t AudioPlaybackSpeedChangeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_1E1150();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_3D68(&qword_283C78, &qword_1F3548);
  v33 = *(v35 - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin(v35);
  v10 = &v31 - v9;
  v11 = type metadata accessor for AudioPlaybackSpeedChangeEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v52 = a1;
  sub_48B8(a1, v15);
  sub_B173C();
  v36 = v10;
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v52);
  }

  v31 = v11;
  v17 = v7;
  v18 = v14;
  v19 = v34;
  v20 = v33;
  v45 = 0;
  sub_14CB8();
  v21 = v35;
  sub_1E1C20();
  v22 = v49;
  *(v18 + 32) = v48;
  *(v18 + 48) = v22;
  v23 = v51;
  *(v18 + 64) = v50;
  *(v18 + 80) = v23;
  v24 = v47;
  *v18 = v46;
  *(v18 + 16) = v24;
  LOBYTE(v37) = 1;
  sub_B1F20();
  sub_1E1C20();
  *(v18 + 96) = v42;
  v41 = 2;
  sub_3F258();
  sub_1E1C20();
  v25 = v43;
  *(v18 + 104) = v42;
  *(v18 + 120) = v25;
  *(v18 + 136) = *v44;
  *(v18 + 146) = *&v44[10];
  v40 = 3;
  sub_14D60();
  sub_1E1C20();
  *(v18 + 162) = v37;
  v40 = 4;
  sub_14DB4();
  sub_1E1C20();
  v26 = BYTE4(v37);
  v27 = DWORD2(v37);
  *(v18 + 164) = v37;
  *(v18 + 168) = v26;
  *(v18 + 172) = v27;
  v40 = 5;
  sub_14E08();
  sub_1E1C20();
  v28 = v38;
  *(v18 + 176) = v37;
  *(v18 + 192) = v28;
  v40 = 6;
  sub_DAD8();
  sub_1E1BB0();
  v29 = v38;
  *(v18 + 208) = v37;
  *(v18 + 224) = v29;
  *(v18 + 240) = v39;
  LOBYTE(v37) = 7;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v20 + 8))(v36, v21);
  (*(v32 + 32))(v18 + *(v31 + 44), v17, v4);
  sub_B1F74(v18, v19);
  sub_4E48(v52);
  return sub_B1FD8(v18);
}

unint64_t sub_B1F20()
{
  result = qword_283C80;
  if (!qword_283C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283C80);
  }

  return result;
}

uint64_t sub_B1F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPlaybackSpeedChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B1FD8(uint64_t a1)
{
  v2 = type metadata accessor for AudioPlaybackSpeedChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B20D4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_283C58, &qword_1F3518);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  v17 = enum case for EventProperty.optional<A>(_:);
  v18 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v18 - 8) + 104))(a2 + v16, v17, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v4, v20);
}

uint64_t sub_B239C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_283C58, &qword_1F3518);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_15:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_16;
  }

  v14 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_15;
  }

  v15 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_15;
  }

  v16 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_15;
  }

  v17 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_15;
  }

  v18 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_15;
  }

  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + a3[11];

  return v21(v22, a2, v20);
}

uint64_t sub_B26B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_16:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_283C58, &qword_1F3518);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_15:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_16;
  }

  v16 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_15;
  }

  v17 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_15;
  }

  v18 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_15;
  }

  v19 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_15;
  }

  v20 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_15;
  }

  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v23 = *(*(v22 - 8) + 56);
  v24 = a1 + a4[11];

  return v23(v24, a2, a2, v22);
}

void sub_B29CC()
{
  sub_B2C68(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_B2C68(319, &unk_283CF0, sub_B1F20, sub_B1790);
    if (v1 <= 0x3F)
    {
      sub_B2C68(319, &qword_27F998, sub_3F258, sub_3E638);
      if (v2 <= 0x3F)
      {
        sub_B2C68(319, &qword_27E2D8, sub_14D60, sub_14520);
        if (v3 <= 0x3F)
        {
          sub_B2C68(319, &qword_27E2E0, sub_14DB4, sub_14574);
          if (v4 <= 0x3F)
          {
            sub_B2C68(319, &unk_27E2E8, sub_14E08, sub_145C8);
            if (v5 <= 0x3F)
            {
              sub_B2C68(319, &qword_27DE18, sub_DAD8, sub_D57C);
              if (v6 <= 0x3F)
              {
                sub_5684();
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

void sub_B2C68(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_B2CF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_B2DB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_B2E5C()
{
  sub_15D04();
  if (v0 <= 0x3F)
  {
    sub_1E1150();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_B2F38()
{
  result = qword_283DE0;
  if (!qword_283DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283DE0);
  }

  return result;
}

unint64_t sub_B2F90()
{
  result = qword_283DE8;
  if (!qword_283DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283DE8);
  }

  return result;
}

unint64_t sub_B2FE8()
{
  result = qword_283DF0;
  if (!qword_283DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283DF0);
  }

  return result;
}

uint64_t sub_B303C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000000215A50 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000213D80 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000000213970 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4465746152746962 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 7;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t ClickEvent.clickData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_283E28, &qword_1F3798);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ClickEvent.clickData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_283E28, &qword_1F3798);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ClickEvent.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 20);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.pageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 20);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClickEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClickEvent.flowcaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 28);
  v4 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.flowcaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 28);
  v4 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClickEvent.brickData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 32);
  v4 = sub_3D68(&qword_283E30, &qword_20A0C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.brickData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 32);
  v4 = sub_3D68(&qword_283E30, &qword_20A0C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClickEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 36);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 36);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClickEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClickEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClickEvent.locationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 48);
  v4 = sub_3D68(&qword_283E38, &unk_209560);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.locationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 48);
  v4 = sub_3D68(&qword_283E38, &unk_209560);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClickEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 52);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClickEvent(0) + 52);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClickEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_283E28, &qword_1F3798);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ClickEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = enum case for EventProperty.optional<A>(_:);
  v11 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_283E30, &qword_20A0C0);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v17 - 8) + 104))(a1 + v16, v10, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_283E38, &unk_209560);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v2, v23);
}

uint64_t ClickEvent.Model.clickData.getter@<X0>(_OWORD *a1@<X8>)
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
  return sub_B4464(v7, &v6);
}

uint64_t ClickEvent.Model.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 64);
  *(a1 + 8) = *(v1 + 72);
  *(a1 + 24) = v2;
}

uint64_t ClickEvent.Model.sectionData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[11];
  v13 = v1[10];
  v2 = v13;
  v14 = v3;
  v15 = v1[12];
  v4 = v15;
  v5 = v1[7];
  v10[0] = v1[6];
  v10[1] = v5;
  v6 = v1[9];
  v11 = v1[8];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_274D4(v10, &v9);
}

uint64_t ClickEvent.Model.flowcaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 256);
  v9 = *(v1 + 240);
  v10 = v2;
  v11 = *(v1 + 272);
  v3 = v11;
  v4 = *(v1 + 224);
  v8[0] = *(v1 + 208);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_17AA4(v8, v7, &qword_282CC0, &qword_1F62B0);
}

uint64_t ClickEvent.Model.brickData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[35];
  v3 = v1[36];
  v4 = v1[37];
  v5 = v1[38];
  v6 = v1[39];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_B45E0(v2, v3);
}

uint64_t sub_B45E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t ClickEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[23];
  v10 = v1[22];
  v11 = v2;
  v4 = v1[25];
  v12 = v1[24];
  v3 = v12;
  v13 = v4;
  v6 = v1[21];
  v9[0] = v1[20];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_17AA4(v9, &v8, &qword_27FD08, &qword_1E94F0);
}

uint64_t ClickEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[55];
  v3 = v1[56];
  v4 = v1[57];
  v5 = v1[58];
  v6 = v1[59];
  v7 = v1[60];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t ClickEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClickEvent.Model(0) + 52);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClickEvent.Model.init(clickData:pageData:sectionData:flowcaseData:brickData:contentData:upSellData:seriesData:locationData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a5 + 32);
  v15 = (a9 + 280);
  v16 = *(a7 + 16);
  v17 = *a10;
  v18 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v18;
  v19 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v19;
  *(a9 + 64) = *a2;
  *(a9 + 80) = v12;
  *(a9 + 88) = v13;
  v20 = a3[5];
  *(a9 + 160) = a3[4];
  *(a9 + 176) = v20;
  v21 = a3[6];
  v22 = a3[1];
  *(a9 + 96) = *a3;
  *(a9 + 112) = v22;
  v23 = a3[3];
  *(a9 + 128) = a3[2];
  *(a9 + 144) = v23;
  v24 = *a4;
  v25 = a4[1];
  *(a9 + 192) = v21;
  *(a9 + 208) = v24;
  v26 = a4[2];
  v27 = a4[3];
  *(a9 + 272) = *(a4 + 8);
  *(a9 + 240) = v26;
  *(a9 + 256) = v27;
  *(a9 + 224) = v25;
  v28 = *(a5 + 16);
  *v15 = *a5;
  v15[1] = v28;
  *(a9 + 312) = v14;
  v29 = a6[1];
  *(a9 + 320) = *a6;
  *(a9 + 336) = v29;
  v30 = a6[5];
  *(a9 + 384) = a6[4];
  *(a9 + 400) = v30;
  v31 = a6[3];
  *(a9 + 352) = a6[2];
  *(a9 + 368) = v31;
  *(a9 + 416) = *a7;
  *(a9 + 432) = v16;
  v32 = a8[1];
  v15[10] = *a8;
  v15[11] = v32;
  v15[12] = a8[2];
  *(a9 + 488) = v17;
  v33 = *(type metadata accessor for ClickEvent.Model(0) + 52);
  v34 = sub_1E1150();
  v35 = *(*(v34 - 8) + 32);

  return v35(a9 + v33, a11, v34);
}

uint64_t sub_B4870(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6144736569726573;
    v6 = 0x6E6F697461636F6CLL;
    if (a1 != 8)
    {
      v6 = 0x746144746E657665;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x44746E65746E6F63;
    if (a1 != 5)
    {
      v7 = 0x61446C6C65537075;
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
    v1 = 0x7461446B63696C63;
    v2 = 0x446E6F6974636573;
    v3 = 0x65736163776F6C66;
    if (a1 != 3)
    {
      v3 = 0x7461446B63697262;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6174614465676170;
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

uint64_t sub_B49CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_B70C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B49F4(uint64_t a1)
{
  v2 = sub_B5170();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B4A30(uint64_t a1)
{
  v2 = sub_B5170();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ClickEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_283E40, &qword_1F37A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v46 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_B5170();
  sub_1E1E00();
  v11 = v3[1];
  v102[0] = *v3;
  v102[1] = v11;
  v12 = v3[3];
  v14 = *v3;
  v13 = v3[1];
  v102[2] = v3[2];
  v102[3] = v12;
  v98 = v14;
  v99 = v13;
  v15 = v3[3];
  v100 = v3[2];
  v101 = v15;
  v109 = 0;
  sub_B4464(v102, &v87);
  sub_B51C4();
  sub_1E1CF0();
  if (v2)
  {
    v87 = v98;
    v88 = v99;
    v89 = v100;
    v90 = v101;
    sub_B5218(&v87);
  }

  else
  {
    v97[0] = v98;
    v97[1] = v99;
    v97[2] = v100;
    v97[3] = v101;
    sub_B5218(v97);
    v16 = *(v3 + 11);
    v94 = *(v3 + 8);
    v95 = *(v3 + 72);
    v96 = v16;
    v108 = 1;
    sub_18598();

    sub_1E1CF0();

    v17 = v3[9];
    v18 = v3[11];
    v91 = v3[10];
    v92 = v18;
    v19 = v3[11];
    v93 = v3[12];
    v20 = v3[7];
    v87 = v3[6];
    v88 = v20;
    v21 = v3[9];
    v23 = v3[6];
    v22 = v3[7];
    v89 = v3[8];
    v90 = v21;
    v84 = v91;
    v85 = v19;
    v86 = v3[12];
    v80 = v23;
    v81 = v22;
    v82 = v89;
    v83 = v17;
    v107 = 2;
    sub_274D4(&v87, v79);
    sub_18544();
    sub_1E1CF0();
    v79[4] = v84;
    v79[5] = v85;
    v79[6] = v86;
    v79[0] = v80;
    v79[1] = v81;
    v79[2] = v82;
    v79[3] = v83;
    sub_28354(v79);
    v24 = v3[14];
    v25 = v3[16];
    v76 = v3[15];
    v77 = v25;
    v26 = v3[14];
    v75[0] = v3[13];
    v75[1] = v26;
    v27 = v3[16];
    v72 = v76;
    v73 = v27;
    v78 = *(v3 + 34);
    v74 = *(v3 + 34);
    v70 = v75[0];
    v71 = v24;
    v106 = 3;
    sub_17AA4(v75, v58, &qword_282CC0, &qword_1F62B0);
    sub_1C860();
    sub_1E1C80();
    v68[2] = v72;
    v68[3] = v73;
    v69 = v74;
    v68[0] = v70;
    v68[1] = v71;
    sub_18E48(v68, &qword_282CC0, &qword_1F62B0);
    v28 = *(v3 + 36);
    v29 = *(v3 + 37);
    v30 = *(v3 + 38);
    v31 = *(v3 + 39);
    v63 = *(v3 + 35);
    v64 = v28;
    v65 = v29;
    v66 = v30;
    v67 = v31;
    v105 = 4;
    sub_B45E0(v63, v28);
    sub_B526C();
    sub_1E1C80();
    sub_B52C0(v63, v64);
    v32 = v3[23];
    v33 = v3[21];
    v59 = v3[22];
    v60 = v32;
    v34 = v3[23];
    v35 = v3[25];
    v61 = v3[24];
    v62 = v35;
    v36 = v3[21];
    v58[0] = v3[20];
    v58[1] = v36;
    v54 = v59;
    v55 = v34;
    v37 = v3[25];
    v56 = v61;
    v57 = v37;
    v52 = v58[0];
    v53 = v33;
    v104 = 5;
    sub_17AA4(v58, v51, &qword_27FD08, &qword_1E94F0);
    sub_143D0();
    sub_1E1C80();
    v51[2] = v54;
    v51[3] = v55;
    v51[4] = v56;
    v51[5] = v57;
    v51[0] = v52;
    v51[1] = v53;
    sub_18E48(v51, &qword_27FD08, &qword_1E94F0);
    v38 = *(v3 + 54);
    v46 = v3[26];
    v47 = v38;
    v103 = 6;
    sub_28450();

    sub_1E1C80();

    v39 = *(v3 + 56);
    v40 = *(v3 + 57);
    v41 = *(v3 + 58);
    v42 = *(v3 + 59);
    v43 = *(v3 + 60);
    *&v46 = *(v3 + 55);
    *(&v46 + 1) = v39;
    v47 = v40;
    v48 = v41;
    v49 = v42;
    v50 = v43;
    v103 = 7;
    sub_13BDC(v46, v39, v40, v41, v42, v43);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v46, *(&v46 + 1), v47, v48, v49, v50);
    LOBYTE(v46) = *(v3 + 488);
    v103 = 8;
    sub_B5304();
    sub_1E1C80();
    v44 = *(type metadata accessor for ClickEvent.Model(0) + 52);
    LOBYTE(v46) = 9;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_B5170()
{
  result = qword_283E48;
  if (!qword_283E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283E48);
  }

  return result;
}

unint64_t sub_B51C4()
{
  result = qword_283E50;
  if (!qword_283E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283E50);
  }

  return result;
}

unint64_t sub_B526C()
{
  result = qword_283E58;
  if (!qword_283E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283E58);
  }

  return result;
}

uint64_t sub_B52C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_B5304()
{
  result = qword_283E60;
  if (!qword_283E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283E60);
  }

  return result;
}

uint64_t ClickEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_1E1150();
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  __chkstk_darwin(v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_3D68(&qword_283E68, &qword_1F37A8);
  v43 = *(v45 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v45);
  v9 = v36 - v8;
  v10 = type metadata accessor for ClickEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  v46 = a1;
  sub_48B8(a1, v14);
  sub_B5170();
  v44 = v9;
  v16 = v47;
  sub_1E1DF0();
  if (v16)
  {
    return sub_4E48(v46);
  }

  v38 = v10;
  v39 = v6;
  v40 = v3;
  v47 = v13;
  v17 = v43;
  v76 = 0;
  sub_B5BB8();
  sub_1E1C20();
  v18 = v63;
  v19 = v47;
  *v47 = v62;
  v19[1] = v18;
  v20 = v65;
  v19[2] = v64;
  v19[3] = v20;
  LOBYTE(v51) = 1;
  sub_18F50();
  sub_1E1C20();
  v21 = *&v66[24];
  *(v19 + 8) = *v66;
  v37 = *&v66[8];
  *(v19 + 72) = *&v66[8];
  v36[1] = v21;
  *(v19 + 11) = v21;
  v75 = 2;
  sub_18EFC();
  sub_1E1C20();
  v22 = v70;
  v19[10] = v69;
  v19[11] = v22;
  v19[12] = v71;
  v23 = *&v66[16];
  v19[6] = *v66;
  v19[7] = v23;
  v24 = v68;
  v19[8] = v67;
  v19[9] = v24;
  v74 = 3;
  sub_1C808();
  sub_1E1BB0();
  v25 = v60;
  v19[15] = v59;
  v19[16] = v25;
  *(v19 + 34) = v61;
  v26 = v58;
  v19[13] = v57;
  v19[14] = v26;
  LOBYTE(v48) = 4;
  sub_B5C0C();
  sub_1E1BB0();
  v27 = v53;
  v28 = v52;
  *(v19 + 280) = v51;
  *(v19 + 296) = v28;
  *(v19 + 39) = v27;
  v73 = 5;
  sub_14CB8();
  sub_1E1BB0();
  v29 = v54;
  v19[22] = v53;
  v19[23] = v29;
  v30 = v56;
  v19[24] = v55;
  v19[25] = v30;
  v31 = v52;
  v19[20] = v51;
  v19[21] = v31;
  v72 = 6;
  sub_28EF4();
  sub_1E1BB0();
  LODWORD(v37) = 1;
  v32 = v49;
  v19[26] = v48;
  *(v19 + 54) = v32;
  v72 = 7;
  sub_DAD8();
  sub_1E1BB0();
  v33 = v49;
  *(v19 + 440) = v48;
  *(v19 + 456) = v33;
  *(v19 + 472) = v50;
  v72 = 8;
  sub_B5C60();
  sub_1E1BB0();
  *(v19 + 488) = v48;
  LOBYTE(v48) = 9;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v44, v45);
  v34 = v47;
  (*(v41 + 32))(v47 + *(v38 + 52), v39, v40);
  sub_B5CB4(v34, v42);
  sub_4E48(v46);
  return sub_B5D18(v34);
}

unint64_t sub_B5BB8()
{
  result = qword_283E70;
  if (!qword_283E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283E70);
  }

  return result;
}

unint64_t sub_B5C0C()
{
  result = qword_283E78;
  if (!qword_283E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283E78);
  }

  return result;
}

unint64_t sub_B5C60()
{
  result = qword_283E80;
  if (!qword_283E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_283E80);
  }

  return result;
}

uint64_t sub_B5CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClickEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B5D18(uint64_t a1)
{
  v2 = type metadata accessor for ClickEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B5E14@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_283E28, &qword_1F3798);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = enum case for EventProperty.optional<A>(_:);
  v12 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_283E30, &qword_20A0C0);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v18 - 8) + 104))(a2 + v17, v11, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v20 - 8) + 104))(a2 + v19, v11, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_283E38, &unk_209560);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  v24 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v4, v24);
}

uint64_t sub_B6174(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_283E28, &qword_1F3798);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  v14 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  v15 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  v16 = sub_3D68(&qword_283E30, &qword_20A0C0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  v17 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  v18 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  v20 = sub_3D68(&qword_283E38, &unk_209560);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v23 = *(*(v22 - 8) + 48);
  v24 = a1 + a3[13];

  return v23(v24, a2, v22);
}

uint64_t sub_B6538(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_283E28, &qword_1F3798);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  v16 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  v17 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  v18 = sub_3D68(&qword_283E30, &qword_20A0C0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  v19 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  v20 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  v21 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  v22 = sub_3D68(&qword_283E38, &unk_209560);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  v24 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v25 = *(*(v24 - 8) + 56);
  v26 = a1 + a4[13];

  return v25(v26, a2, a2, v24);
}

void sub_B68F4()
{
  sub_B6C30(319, &qword_283EF0, sub_B5BB8, sub_B51C4);
  if (v0 <= 0x3F)
  {
    sub_B6C30(319, &qword_27E580, sub_18F50, sub_18598);
    if (v1 <= 0x3F)
    {
      sub_B6C30(319, &qword_27E578, sub_18EFC, sub_18544);
      if (v2 <= 0x3F)
      {
        sub_B6C30(319, &qword_27EF68, sub_1C808, sub_1C860);
        if (v3 <= 0x3F)
        {
          sub_B6C30(319, &qword_283EF8, sub_B5C0C, sub_B526C);
          if (v4 <= 0x3F)
          {
            sub_B6C30(319, &qword_27E2C8, sub_14CB8, sub_143D0);
            if (v5 <= 0x3F)
            {
              sub_B6C30(319, &qword_27EAE8, sub_28EF4, sub_28450);
              if (v6 <= 0x3F)
              {
                sub_B6C30(319, &qword_27DE18, sub_DAD8, sub_D57C);
                if (v7 <= 0x3F)
                {
                  sub_B6C30(319, &qword_283F00, sub_B5C60, sub_B5304);
                  if (v8 <= 0x3F)
                  {
                    sub_5684();
                    if (v9 <= 0x3F)
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
}

void sub_B6C30(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_B6CC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_B6D80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_B6E24()
{
  sub_19FE0(319, &unk_282E10);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_283FB8);
    if (v1 <= 0x3F)
    {
      sub_19FE0(319, &qword_27FE30);
      if (v2 <= 0x3F)
      {
        sub_19FE0(319, &qword_27EBC8);
        if (v3 <= 0x3F)
        {
          sub_19FE0(319, &qword_27E398);
          if (v4 <= 0x3F)
          {
            sub_19FE0(319, &unk_283FC0);
            if (v5 <= 0x3F)
            {
              sub_1E1150();
              if (v6 <= 0x3F)
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

unint64_t sub_B6FBC()
{
  result = qword_284010;
  if (!qword_284010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284010);
  }

  return result;
}

unint64_t sub_B7014()
{
  result = qword_284018;
  if (!qword_284018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284018);
  }

  return result;
}

unint64_t sub_B706C()
{
  result = qword_284020;
  if (!qword_284020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284020);
  }

  return result;
}

uint64_t sub_B70C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7461446B63696C63 && a2 == 0xE900000000000061;
  if (v3 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614465676170 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65736163776F6C66 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461446B63697262 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 9;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t DialogActionEvent.dialogData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_284058, &qword_1F3A10);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DialogActionEvent.dialogData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_284058, &qword_1F3A10);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DialogActionEvent.dialogActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DialogActionEvent(0) + 20);
  v4 = sub_3D68(&qword_284060, &unk_1F3A18);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DialogActionEvent.dialogActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DialogActionEvent(0) + 20);
  v4 = sub_3D68(&qword_284060, &unk_1F3A18);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DialogActionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DialogActionEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DialogActionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DialogActionEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DialogActionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_284058, &qword_1F3A10);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for DialogActionEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_284060, &unk_1F3A18);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t DialogActionEvent.Model.dialogActionData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t DialogActionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DialogActionEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DialogActionEvent.Model.init(dialogData:dialogActionData:eventData:)@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  *a4 = *a1;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  v8 = *(type metadata accessor for DialogActionEvent.Model(0) + 24);
  v9 = sub_1E1150();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

uint64_t sub_B7AE8()
{
  v1 = 0xD000000000000010;
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
    return 0x6144676F6C616964;
  }
}

uint64_t sub_B7B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_B8C98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B7B78(uint64_t a1)
{
  v2 = sub_B7E00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B7BB4(uint64_t a1)
{
  v2 = sub_B7E00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DialogActionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_284068, &qword_1F3A28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_B7E00();
  sub_1E1E00();
  LOBYTE(v15) = *v3;
  v17 = 0;
  sub_411FC();
  sub_1E1CF0();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v15 = *(v3 + 8);
    v16 = v11;
    v17 = 1;
    sub_B7E54();

    sub_1E1CF0();

    v12 = *(type metadata accessor for DialogActionEvent.Model(0) + 24);
    LOBYTE(v15) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_B7E00()
{
  result = qword_284070;
  if (!qword_284070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284070);
  }

  return result;
}

unint64_t sub_B7E54()
{
  result = qword_284078;
  if (!qword_284078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284078);
  }

  return result;
}

uint64_t DialogActionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = sub_1E1150();
  v26 = *(v28 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v28);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_284080, &qword_1F3A30);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for DialogActionEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_B7E00();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v25 = v11;
  v16 = a1;
  v17 = v14;
  v18 = v29;
  v19 = v6;
  v33 = 0;
  sub_411A4();
  v20 = v30;
  sub_1E1C20();
  *v17 = v31;
  v33 = 1;
  sub_B8228();
  sub_1E1C20();
  v21 = v18;
  v22 = v32;
  *(v17 + 8) = v31;
  *(v17 + 16) = v22;
  LOBYTE(v31) = 2;
  sub_14E5C(&qword_27D830);
  v23 = v28;
  sub_1E1C20();
  (*(v21 + 8))(v10, v20);
  (*(v26 + 32))(v17 + *(v25 + 24), v19, v23);
  sub_B827C(v17, v27);
  sub_4E48(v16);
  return sub_B82E0(v17);
}

unint64_t sub_B8228()
{
  result = qword_284088;
  if (!qword_284088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284088);
  }

  return result;
}

uint64_t sub_B827C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DialogActionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B82E0(uint64_t a1)
{
  v2 = type metadata accessor for DialogActionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B83DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_284058, &qword_1F3A10);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_284060, &unk_1F3A18);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_B8514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_284058, &qword_1F3A10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_284060, &unk_1F3A18);
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

uint64_t sub_B868C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_284058, &qword_1F3A10);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_284060, &unk_1F3A18);
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

void sub_B87FC()
{
  sub_B8908(319, &qword_2840F8, sub_411A4, sub_411FC);
  if (v0 <= 0x3F)
  {
    sub_B8908(319, &unk_284100, sub_B8228, sub_B7E54);
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

void sub_B8908(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_B8998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
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

uint64_t sub_B8A58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
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

uint64_t sub_B8AFC()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_B8B94()
{
  result = qword_2841D0;
  if (!qword_2841D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2841D0);
  }

  return result;
}

unint64_t sub_B8BEC()
{
  result = qword_2841D8;
  if (!qword_2841D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2841D8);
  }

  return result;
}

unint64_t sub_B8C44()
{
  result = qword_2841E0;
  if (!qword_2841E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2841E0);
  }

  return result;
}

uint64_t sub_B8C98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144676F6C616964 && a2 == 0xEA00000000006174;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000215A70 == a2 || (sub_1E1D30() & 1) != 0)
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

BookAnalytics::SessionListeningData __swiftcall SessionListeningData.init(timeSpentListening:uniqueAudiobooksListened:)(Swift::Int64 timeSpentListening, Swift::Int32_optional uniqueAudiobooksListened)
{
  *v2 = timeSpentListening;
  *(v2 + 8) = uniqueAudiobooksListened.value;
  *(v2 + 12) = uniqueAudiobooksListened.is_nil;
  result.timeSpentListening = timeSpentListening;
  result.uniqueAudiobooksListened = uniqueAudiobooksListened;
  return result;
}

uint64_t SkipData.skipInterval.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t static SessionListeningData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 12);
  if (*(a1 + 12))
  {
    if ((*(a2 + 12) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_B8E50()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_B8E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000000215800 == a2 || (sub_1E1D30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000000215820 == a2)
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

uint64_t sub_B8F70(uint64_t a1)
{
  v2 = sub_B9190();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B8FAC(uint64_t a1)
{
  v2 = sub_B9190();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SessionListeningData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_2841E8, &qword_1F3C40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = *(v1 + 2);
  v13 = *(v1 + 12);
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_B9190();
  sub_1E1E00();
  v16 = 0;
  sub_1E1D10();
  if (!v2)
  {
    v15 = 1;
    v14 = v13;
    sub_1E1C90();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_B9190()
{
  result = qword_2841F0;
  if (!qword_2841F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2841F0);
  }

  return result;
}

uint64_t SessionListeningData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_2841F8, &qword_1F3C48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_B9190();
  sub_1E1DF0();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1E1C40();
    v15 = 1;
    v13 = sub_1E1BC0();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 12) = BYTE4(v13) & 1;
  }

  return sub_4E48(a1);
}

unint64_t sub_B9394()
{
  result = qword_284200;
  if (!qword_284200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284200);
  }

  return result;
}

unint64_t sub_B93EC()
{
  result = qword_284208;
  if (!qword_284208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284208);
  }

  return result;
}

uint64_t sub_B9440(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 12);
    if (*(a1 + 12))
    {
      if (*(a2 + 12))
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

void *initializeBufferWithCopyOfBuffer for SessionListeningData(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SessionListeningData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 13))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SessionListeningData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
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

  *(result + 13) = v3;
  return result;
}

unint64_t sub_B953C()
{
  result = qword_284210;
  if (!qword_284210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284210);
  }

  return result;
}

unint64_t sub_B9594()
{
  result = qword_284218;
  if (!qword_284218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284218);
  }

  return result;
}

unint64_t sub_B95EC()
{
  result = qword_284220;
  if (!qword_284220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284220);
  }

  return result;
}

uint64_t ReportAnIssueViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAnIssueViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReportAnIssueViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportAnIssueViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReportAnIssueViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAnIssueViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReportAnIssueViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportAnIssueViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReportAnIssueViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReportAnIssueViewEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t ReportAnIssueViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAnIssueViewEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReportAnIssueViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAnIssueViewEvent.Model(0) + 24);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReportAnIssueViewEvent.Model.init(contentData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = a1[3];
  *(a4 + 2) = a1[2];
  *(a4 + 3) = v7;
  v8 = a1[5];
  *(a4 + 4) = a1[4];
  *(a4 + 5) = v8;
  v9 = a1[1];
  *a4 = *a1;
  *(a4 + 1) = v9;
  v10 = type metadata accessor for ReportAnIssueViewEvent.Model(0);
  v11 = *(v10 + 20);
  v12 = sub_1E1150();
  (*(*(v12 - 8) + 32))(&a4[v11], a2, v12);
  v13 = *(v10 + 24);
  v14 = sub_1E11A0();
  v15 = *(*(v14 - 8) + 32);

  return v15(&a4[v13], a3, v14);
}

uint64_t sub_B9CFC(uint64_t a1)
{
  v2 = sub_BA060();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B9D38(uint64_t a1)
{
  v2 = sub_BA060();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReportAnIssueViewEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_284258, &qword_1F3E68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_BA060();
  v10 = v4;
  sub_1E1E00();
  v11 = v2[2];
  v12 = v2[4];
  v40 = v2[3];
  v41 = v12;
  v13 = v2[4];
  v42 = v2[5];
  v14 = *v2;
  v15 = v2[2];
  v38 = v2[1];
  v39 = v15;
  v16 = *v2;
  v34 = v40;
  v35 = v13;
  v36 = v2[5];
  v37 = v16;
  v31 = v14;
  v32 = v38;
  v33 = v11;
  v30 = 0;
  sub_13A5C(&v37, &v24);
  sub_143D0();
  v17 = v43;
  sub_1E1CF0();
  if (v17)
  {
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v29 = v36;
    v24 = v31;
    v25 = v32;
    sub_14424(&v24);
  }

  else
  {
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v29 = v36;
    v24 = v31;
    v25 = v32;
    sub_14424(&v24);
    v18 = type metadata accessor for ReportAnIssueViewEvent.Model(0);
    v19 = *(v18 + 20);
    v23 = 1;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    v10 = v4;
    sub_1E1CF0();
    v20 = *(v18 + 24);
    v23 = 2;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v10);
}

unint64_t sub_BA060()
{
  result = qword_284260;
  if (!qword_284260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284260);
  }

  return result;
}

uint64_t ReportAnIssueViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = sub_1E11A0();
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  __chkstk_darwin(v32);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1150();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_3D68(&qword_284268, &qword_1F3E70);
  v33 = *(v36 - 8);
  v10 = *(v33 + 64);
  __chkstk_darwin(v36);
  v12 = &v29 - v11;
  v13 = type metadata accessor for ReportAnIssueViewEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v38 = a1;
  sub_48B8(a1, v17);
  sub_BA060();
  v35 = v12;
  v19 = v37;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v38);
  }

  v20 = v33;
  v21 = v16;
  v37 = v5;
  v22 = v34;
  v46 = 0;
  sub_14CB8();
  sub_1E1C20();
  v23 = v43;
  v24 = v21;
  *(v21 + 2) = v42;
  *(v21 + 3) = v23;
  v25 = v45;
  *(v21 + 4) = v44;
  *(v21 + 5) = v25;
  v26 = v41;
  *v21 = v40;
  *(v21 + 1) = v26;
  v39 = 1;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  sub_1E1C20();
  (*(v22 + 32))(&v21[*(v13 + 20)], v9, v6);
  v39 = 2;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v27 = v32;
  sub_1E1C20();
  (*(v20 + 8))(v35, v36);
  (*(v30 + 32))(v24 + *(v13 + 24), v37, v27);
  sub_BA61C(v24, v31);
  sub_4E48(v38);
  return sub_BA680(v24);
}

uint64_t sub_BA61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportAnIssueViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BA680(uint64_t a1)
{
  v2 = type metadata accessor for ReportAnIssueViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BA790(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_BA908(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_BAA8C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_BABC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t sub_BACFC()
{
  result = qword_2843A0;
  if (!qword_2843A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2843A0);
  }

  return result;
}

unint64_t sub_BAD54()
{
  result = qword_2843A8;
  if (!qword_2843A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2843A8);
  }

  return result;
}

unint64_t sub_BADAC()
{
  result = qword_2843B0;
  if (!qword_2843B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2843B0);
  }

  return result;
}

char *EventReporter.emitReportAnIssueEvent(using:contentID:supplementalContentCount:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  if (a1 || (result = sub_BFB78(), (v9 = result) != 0))
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v4;
    *(v11 + 24) = a2;
    *(v11 + 32) = a3;
    *(v11 + 40) = v9;
    *(v11 + 48) = a4;
    *(v11 + 52) = BYTE4(a4) & 1;
    v12 = *&v9[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v13 = swift_allocObject();
    *(v13 + 16) = sub_BBB90;
    *(v13 + 24) = v11;
    v14 = a1;
    v15 = v4;

    v16 = v9;

    sub_1E10C0();
  }

  return result;
}

uint64_t sub_BAF34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v41[2] = a5;
  v42 = a4;
  v10 = sub_1E1640();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4C270();
  *v14 = sub_1E19E0();
  (*(v11 + 104))(v14, enum case for DispatchPredicate.notOnQueue(_:), v10);
  v15 = sub_1E1660();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v41[0] = a6;
    v41[1] = a1;
    v17 = *(a2 + OBJC_IVAR___BAEventReporter_dataProviders);
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v18 = v49;
    result = v49 + 32;
    v19 = -*(v49 + 16);
    v20 = -1;
    while (1)
    {
      v21 = v19 + v20;
      if (v19 + v20 == -1)
      {
        break;
      }

      if (++v20 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v22 = result + 40;
      sub_4C2BC(result, &v49);
      v23 = *(&v50 + 1);
      v24 = v51;
      sub_48B8(&v49, *(&v50 + 1));
      v25 = (*(v24 + 8))(a2, a3, v42, v23, v24);
      sub_4E48(&v49);
      result = v22;
      if (v25)
      {

        v26 = [v25 intValue];

        goto LABEL_8;
      }
    }

    v26 = 0;
LABEL_8:
    v27._countAndFlagsBits = a3;
    v28 = v42;
    v27._object = v42;
    v29 = BATracker.contentPrivateID(for:)(v27);
    if (v29.value._object)
    {
      countAndFlagsBits = v29.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v29.value._object)
    {
      object = v29.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v32._countAndFlagsBits = a3;
    v32._object = v28;
    v33 = BATracker.contentUserID(for:)(v32);
    v55 = BYTE4(v41[0]) & 1;
    v58 = v21 == -1;
    if (v33.value._object)
    {
      v34 = v33.value._countAndFlagsBits;
    }

    else
    {
      v34 = 0;
    }

    if (v33.value._object)
    {
      v35 = v33.value._object;
    }

    else
    {
      v35 = 0xE000000000000000;
    }

    *&v49 = a3;
    *(&v49 + 1) = v28;
    LOBYTE(v50) = 2;
    *(&v50 + 1) = v59[0];
    DWORD1(v50) = *(v59 + 3);
    *(&v50 + 1) = countAndFlagsBits;
    *&v51 = object;
    *(&v51 + 1) = v34;
    *&v52 = v35;
    WORD4(v52) = 1025;
    HIDWORD(v52) = v26;
    LOBYTE(v53) = v21 == -1;
    BYTE3(v53) = v57;
    *(&v53 + 1) = v56;
    DWORD1(v53) = v41[0];
    BYTE8(v53) = v55;
    *(&v53 + 9) = 33751300;
    BYTE13(v53) = 2;
    v54 = 0uLL;
    v47 = v53;
    v48 = 0uLL;
    v46 = v52;
    v45 = v51;
    v43 = v49;
    v44 = v50;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v36 = sub_1E0CB0();
    v37 = *(v36 - 8);
    v38 = *(v37 + 72);
    v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1E9970;
    (*(v37 + 104))(v40 + v39, enum case for DataEventTrait.onlyOnce(_:), v36);
    sub_4C164();

    sub_1E0C00();

    sub_14424(&v49);
    type metadata accessor for ReportAnIssueEvent(0);
    sub_BBCD4(&qword_2843C8, type metadata accessor for ReportAnIssueEvent);
    v43 = 0u;
    v44 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v43);
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

char *EventReporter.emitReportAnIssueCompletionEvent(using:contentID:supplementalContentCount:issueOptions:issueSelected:)(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a1;
  if (a1 || (result = sub_BFB78(), (v15 = result) != 0))
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v7;
    *(v17 + 24) = a2;
    *(v17 + 32) = a3;
    *(v17 + 40) = v15;
    *(v17 + 48) = a4;
    *(v17 + 56) = a5;
    *(v17 + 64) = a6;
    *(v17 + 72) = a7;
    v18 = *&v15[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v19 = swift_allocObject();
    *(v19 + 16) = sub_BBC48;
    *(v19 + 24) = v17;

    v20 = a1;
    v21 = v7;

    v22 = v15;
    sub_1E10C0();
  }

  return result;
}

uint64_t sub_BB560(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v58 = a5;
  v59 = a4;
  v15 = sub_1E1640();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4C270();
  *v19 = sub_1E19E0();
  (*(v16 + 104))(v19, enum case for DispatchPredicate.notOnQueue(_:), v15);
  v20 = sub_1E1660();
  result = (*(v16 + 8))(v19, v15);
  if (v20)
  {
    LODWORD(v53) = a6;
    v55 = a8;
    v56 = a7;
    v57 = a1;
    v54 = a9;
    v22 = *(a2 + OBJC_IVAR___BAEventReporter_dataProviders);
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v23 = v66;
    result = v66 + 32;
    v24 = -*(v66 + 16);
    v25 = -1;
    while (1)
    {
      v26 = v24 + v25;
      if (v24 + v25 == -1)
      {
        break;
      }

      if (++v25 >= *(v23 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v27 = result + 40;
      sub_4C2BC(result, &v66);
      v29 = *(&v67 + 1);
      v28 = v68;
      sub_48B8(&v66, *(&v67 + 1));
      v30 = (*(v28 + 8))(a2, a3, v59, v29, v28);
      sub_4E48(&v66);
      result = v27;
      if (v30)
      {

        v31 = [v30 intValue];

        goto LABEL_8;
      }
    }

    v31 = 0;
LABEL_8:
    v32 = a3;
    v33._countAndFlagsBits = a3;
    v34 = v59;
    v33._object = v59;
    v35 = BATracker.contentPrivateID(for:)(v33);
    if (v35.value._object)
    {
      countAndFlagsBits = v35.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v35.value._object)
    {
      object = v35.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v38._countAndFlagsBits = v32;
    v38._object = v34;
    v39 = BATracker.contentUserID(for:)(v38);
    v75 = v26 == -1;
    v72 = 0;
    if (v39.value._object)
    {
      v40 = v39.value._countAndFlagsBits;
    }

    else
    {
      v40 = 0;
    }

    if (v39.value._object)
    {
      v41 = v39.value._object;
    }

    else
    {
      v41 = 0xE000000000000000;
    }

    *&v66 = v32;
    *(&v66 + 1) = v34;
    LOBYTE(v67) = 2;
    *(&v67 + 1) = *v76;
    DWORD1(v67) = *&v76[3];
    *(&v67 + 1) = countAndFlagsBits;
    *&v68 = object;
    *(&v68 + 1) = v40;
    *&v69 = v41;
    WORD4(v69) = 1025;
    HIDWORD(v69) = v31;
    LOBYTE(v70) = v26 == -1;
    BYTE3(v70) = v74;
    *(&v70 + 1) = v73;
    DWORD1(v70) = v53;
    BYTE8(v70) = v72;
    *(&v70 + 9) = 33751300;
    BYTE13(v70) = 2;
    v71 = 0uLL;
    v64 = v70;
    v65 = 0uLL;
    v63 = v69;
    v62 = v68;
    v60 = v66;
    v61 = v67;
    v58 = sub_3D68(&qword_2828D0, &unk_1FD120);
    v42 = sub_1E0CB0();
    v43 = *(v42 - 8);
    v53 = *(v43 + 72);
    v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v45 = swift_allocObject();
    v52 = xmmword_1E9970;
    *(v45 + 16) = xmmword_1E9970;
    v46 = enum case for DataEventTrait.onlyOnce(_:);
    v51 = *(v43 + 104);
    v51(v45 + v44, enum case for DataEventTrait.onlyOnce(_:), v42);
    sub_4C164();

    v47 = v56;

    v48 = v54;

    sub_1E0C00();

    sub_14424(&v66);
    *&v60 = v47;
    *(&v60 + 1) = v55;
    *&v61 = v48;
    v49 = swift_allocObject();
    *(v49 + 16) = v52;
    v51(v49 + v44, v46, v42);
    sub_BBC80();
    sub_1E0C00();

    type metadata accessor for ReportAnIssueCompletionEvent(0);
    sub_BBCD4(&qword_2843C0, type metadata accessor for ReportAnIssueCompletionEvent);
    v60 = 0u;
    v61 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v60);
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_BBB48()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 53, 7);
}

uint64_t sub_BBBB8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_BBBF0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_BBC80()
{
  result = qword_2843B8;
  if (!qword_2843B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2843B8);
  }

  return result;
}

uint64_t sub_BBCD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_BBD44()
{
  v1 = *v0;
  v2 = 0x65707954746C61;
  v3 = 0x65746E6F43746C61;
  v4 = 0x6563697250746C61;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65746E6F43746C61;
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

uint64_t sub_BBE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_BCA64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_BBE2C(uint64_t a1)
{
  v2 = sub_BC66C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BBE68(uint64_t a1)
{
  v2 = sub_BC66C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AltSeriesContentTypeExposureData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_2843D0, &qword_1F4090);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - v7;
  v9 = *v1;
  v16 = v1[1];
  v10 = *(v1 + 1);
  v15[5] = *(v1 + 2);
  v15[6] = v10;
  v11 = *(v1 + 3);
  v15[3] = *(v1 + 4);
  v15[4] = v11;
  v12 = *(v1 + 6);
  v15[1] = *(v1 + 5);
  v15[2] = v12;
  v13 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_BC66C();
  sub_1E1E00();
  v23 = v9;
  v22 = 0;
  sub_BC6C0();
  sub_1E1CF0();
  if (!v2)
  {
    v21 = v16;
    v20 = 1;
    sub_C480();
    sub_1E1CF0();
    v19 = 2;
    sub_1E1C50();
    v18 = 3;
    sub_1E1C50();
    v17 = 4;
    sub_1E1C50();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t AltSeriesContentTypeExposureData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_2843E8, &qword_1F4098);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_BC66C();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1);
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_BC714();
    sub_1E1C20();
    v11 = v34[0];
    LOBYTE(v30) = 1;
    sub_C4D4();
    sub_1E1C20();
    v41 = v34[0];
    v34[0] = 2;
    v12 = sub_1E1B80();
    v14 = v13;
    v28 = v11;
    v29 = v12;
    v34[0] = 3;
    v15 = sub_1E1B80();
    v17 = v16;
    v27 = v15;
    v42 = 4;
    v18 = sub_1E1B80();
    v19 = v9;
    v21 = v20;
    (*(v6 + 8))(v19, v5);
    v22 = v28;
    LOBYTE(v30) = v28;
    BYTE1(v30) = v41;
    v23 = v29;
    *(&v30 + 1) = v29;
    *&v31 = v14;
    *(&v31 + 1) = v27;
    *&v32 = v17;
    *(&v32 + 1) = v18;
    v33 = v21;
    *(a2 + 48) = v21;
    v24 = v31;
    *a2 = v30;
    *(a2 + 16) = v24;
    *(a2 + 32) = v32;
    sub_BC768(&v30, v34);
    sub_4E48(a1);
    v34[0] = v22;
    v34[1] = v41;
    v35 = v23;
    v36 = v14;
    v37 = v27;
    v38 = v17;
    v39 = v18;
    v40 = v21;
    return sub_BC7A0(v34);
  }
}

uint64_t _s13BookAnalytics32AltSeriesContentTypeExposureDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v23 = *(a1 + 3);
  v26 = *(a1 + 4);
  v21 = *(a1 + 5);
  v25 = *(a1 + 6);
  v6 = *(a2 + 1);
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 32);
  v22 = *(a2 + 24);
  v10 = 0x65536E4965726F6DLL;
  v11 = 0xE700000000000000;
  v20 = *(a2 + 40);
  v24 = *(a2 + 48);
  if (v2 == 1)
  {
    v11 = 0xEC00000073656972;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (*a1)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0x65536E497478656ELL;
  }

  if (v2)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xEC00000073656972;
  }

  v14 = 0x65536E4965726F6DLL;
  v15 = 0xE700000000000000;
  if (*a2 == 1)
  {
    v15 = 0xEC00000073656972;
  }

  else
  {
    v14 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0x65536E497478656ELL;
  }

  if (*a2)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xEC00000073656972;
  }

  if (v12 == v16 && v13 == v17)
  {
  }

  else
  {
    v18 = sub_1E1D30();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_218F4(v3, v6))
  {
    if (v5)
    {
      if (!v7 || (v4 != v8 || v5 != v7) && (sub_1E1D30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v7)
    {
      return 0;
    }

    if (v26)
    {
      if (!v9 || (v23 != v22 || v26 != v9) && (sub_1E1D30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }

    if (v25)
    {
      if (v24 && (v21 == v20 && v25 == v24 || (sub_1E1D30() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v24)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_BC66C()
{
  result = qword_2843D8;
  if (!qword_2843D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2843D8);
  }

  return result;
}

unint64_t sub_BC6C0()
{
  result = qword_2843E0;
  if (!qword_2843E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2843E0);
  }

  return result;
}

unint64_t sub_BC714()
{
  result = qword_2843F0;
  if (!qword_2843F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2843F0);
  }

  return result;
}

unint64_t sub_BC7D4()
{
  result = qword_2843F8;
  if (!qword_2843F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2843F8);
  }

  return result;
}

unint64_t sub_BC82C()
{
  result = qword_284400;
  if (!qword_284400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284400);
  }

  return result;
}

uint64_t sub_BC880(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_BC8DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_BC960()
{
  result = qword_284408;
  if (!qword_284408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284408);
  }

  return result;
}

unint64_t sub_BC9B8()
{
  result = qword_284410;
  if (!qword_284410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284410);
  }

  return result;
}

unint64_t sub_BCA10()
{
  result = qword_284418;
  if (!qword_284418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284418);
  }

  return result;
}

uint64_t sub_BCA64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707954746C61 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E6F43746C61 && a2 == 0xEE0065707954746ELL || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746E6F43746C61 && a2 == 0xEC0000004449746ELL || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6563697250746C61 && a2 == 0xED0000746E696F50 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000215B00 == a2)
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

BookAnalytics::SelectedSuggestionType_optional __swiftcall SelectedSuggestionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2604E0;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t SelectedSuggestionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 7368564;
  if (v1 != 6)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0x6574736567677573;
  if (v1 != 4)
  {
    v4 = 0x6574636572726F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x676E69646E657274;
  if (v1 != 2)
  {
    v5 = 0x64656863746566;
  }

  if (*v0)
  {
    v2 = 0x746E65636572;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_BCDA8()
{
  result = qword_284420;
  if (!qword_284420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284420);
  }

  return result;
}

void sub_BCE24(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE300000000000000;
  v6 = 7368564;
  if (v2 != 6)
  {
    v6 = 0xD000000000000014;
    v5 = 0x8000000000212960;
  }

  v7 = 0x6574736567677573;
  if (v2 != 4)
  {
    v7 = 0x6574636572726F63;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xED00006D72655464;
  }

  v8 = 0xE800000000000000;
  v9 = 0x676E69646E657274;
  if (v2 != 2)
  {
    v9 = 0x64656863746566;
    v8 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x746E65636572;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_BCFF4()
{
  result = qword_284428;
  if (!qword_284428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284428);
  }

  return result;
}

BookAnalytics::LinkActionType_optional __swiftcall LinkActionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2605C0;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 6;
  if (v5 < 6)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t LinkActionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6570697773;
  v4 = 0xD000000000000015;
  if (v1 != 4)
  {
    v4 = 0x776F6C6C6F66;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x696C43656C746974;
  if (v1 != 1)
  {
    v5 = 0x6B63696C63;
  }

  if (*v0)
  {
    v2 = v5;
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

unint64_t sub_BD16C()
{
  result = qword_284430;
  if (!qword_284430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284430);
  }

  return result;
}

uint64_t sub_BD1C8()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

void sub_BD2C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE500000000000000;
  v6 = 0x6570697773;
  v7 = 0x8000000000212890;
  v8 = 0xD000000000000015;
  if (v2 != 4)
  {
    v8 = 0x776F6C6C6F66;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006B63;
  v10 = 0x696C43656C746974;
  if (v2 != 1)
  {
    v10 = 0x6B63696C63;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_BD444()
{
  result = qword_284438;
  if (!qword_284438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284438);
  }

  return result;
}

uint64_t ReadingGoalReachedEvent.dailyGoalsReachedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_284470, &qword_1F4560);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ReadingGoalReachedEvent.dailyGoalsReachedData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_284470, &qword_1F4560);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ReadingGoalReachedEvent.yearlyGoalsReachedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingGoalReachedEvent(0) + 20);
  v4 = sub_3D68(&qword_284478, &unk_1F4568);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingGoalReachedEvent.yearlyGoalsReachedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingGoalReachedEvent(0) + 20);
  v4 = sub_3D68(&qword_284478, &unk_1F4568);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingGoalReachedEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingGoalReachedEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingGoalReachedEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingGoalReachedEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingGoalReachedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_284470, &qword_1F4560);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReadingGoalReachedEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_284478, &unk_1F4568);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

void ReadingGoalReachedEvent.Model.dailyGoalsReachedData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

void ReadingGoalReachedEvent.Model.yearlyGoalsReachedData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t ReadingGoalReachedEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingGoalReachedEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingGoalReachedEvent.Model.init(dailyGoalsReachedData:yearlyGoalsReachedData:eventData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = *(a2 + 1);
  *a4 = *a1;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  v9 = *(type metadata accessor for ReadingGoalReachedEvent.Model(0) + 24);
  v10 = sub_1E1150();
  v11 = *(*(v10 - 8) + 32);

  return v11(a4 + v9, a3, v10);
}

unint64_t sub_BDBA0()
{
  v1 = 0x746144746E657665;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_BDC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_BECA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_BDC28(uint64_t a1)
{
  v2 = sub_BDEAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BDC64(uint64_t a1)
{
  v2 = sub_BDEAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingGoalReachedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_284480, &qword_1F4578);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_BDEAC();
  sub_1E1E00();
  v11 = *(v3 + 8);
  v17 = *v3;
  v18 = v11;
  v16 = 0;
  sub_BDF00();
  sub_1E1CF0();
  if (!v2)
  {
    v12 = *(v3 + 24);
    v17 = *(v3 + 16);
    v18 = v12;
    v16 = 1;
    sub_46084();
    sub_1E1CF0();
    v13 = *(type metadata accessor for ReadingGoalReachedEvent.Model(0) + 24);
    v17 = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_BDEAC()
{
  result = qword_284488;
  if (!qword_284488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284488);
  }

  return result;
}

unint64_t sub_BDF00()
{
  result = qword_284490;
  if (!qword_284490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284490);
  }

  return result;
}

uint64_t ReadingGoalReachedEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1E1150();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_284498, &qword_1F4580);
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for ReadingGoalReachedEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v32 = a1;
  sub_48B8(a1, v16);
  sub_BDEAC();
  sub_1E1DF0();
  if (!v2)
  {
    v26 = v12;
    v27 = v7;
    v18 = v30;
    v35 = 0;
    sub_BE29C();
    v19 = v31;
    sub_1E1C20();
    v20 = v34;
    v21 = v15;
    *v15 = v33;
    *(v15 + 1) = v20;
    v35 = 1;
    sub_4602C();
    sub_1E1C20();
    v23 = v34;
    v15[16] = v33;
    *(v15 + 3) = v23;
    v33 = 2;
    sub_14E5C(&qword_27D830);
    v24 = v27;
    sub_1E1C20();
    (*(v18 + 8))(v11, v19);
    (*(v28 + 32))(v21 + *(v26 + 24), v24, v4);
    sub_BE2F0(v21, v29);
  }

  return sub_4E48(v32);
}

unint64_t sub_BE29C()
{
  result = qword_2844A0;
  if (!qword_2844A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2844A0);
  }

  return result;
}

uint64_t sub_BE2F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingGoalReachedEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_BE3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_284470, &qword_1F4560);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_284478, &unk_1F4568);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_BE52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_284470, &qword_1F4560);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_284478, &unk_1F4568);
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

uint64_t sub_BE6A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_284470, &qword_1F4560);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_284478, &unk_1F4568);
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

void sub_BE814()
{
  sub_BE920(319, &qword_284510, sub_BE29C, sub_BDF00);
  if (v0 <= 0x3F)
  {
    sub_BE920(319, &unk_284518, sub_4602C, sub_46084);
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

void sub_BE920(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_BE9B0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 24)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_BEA68(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_BEB08()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_BEBA0()
{
  result = qword_2845E8;
  if (!qword_2845E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2845E8);
  }

  return result;
}

unint64_t sub_BEBF8()
{
  result = qword_2845F0;
  if (!qword_2845F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2845F0);
  }

  return result;
}

unint64_t sub_BEC50()
{
  result = qword_2845F8;
  if (!qword_2845F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2845F8);
  }

  return result;
}

uint64_t sub_BECA4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000000215B20 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000000215B40 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
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

BookAnalytics::DailyReadingGoalStatus_optional __swiftcall DailyReadingGoalStatus.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260670;
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

uint64_t DailyReadingGoalStatus.rawValue.getter()
{
  v1 = 16718;
  v2 = 0x6572676F72506E69;
  if (*v0 != 2)
  {
    v2 = 0x7472617453746F6ELL;
  }

  if (*v0)
  {
    v1 = 0x64656863616572;
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

unint64_t sub_BEEBC()
{
  result = qword_284600;
  if (!qword_284600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284600);
  }

  return result;
}

Swift::Int sub_BEF10()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_BEFD4()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_BF084()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_BF150(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 16718;
  v4 = 0xEA00000000007373;
  v5 = 0x6572676F72506E69;
  if (*v1 != 2)
  {
    v5 = 0x7472617453746F6ELL;
    v4 = 0xEA00000000006465;
  }

  if (*v1)
  {
    v3 = 0x64656863616572;
    v2 = 0xE700000000000000;
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

unint64_t sub_BF290()
{
  result = qword_284608;
  if (!qword_284608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284608);
  }

  return result;
}

char *sub_BF2E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1E1640();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a1 isOwned])
  {
    if ([a1 isStoreAsset])
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    v42 = v11;
  }

  else
  {
    v42 = 0;
  }

  result = [a1 assetID];
  if (!result)
  {
    goto LABEL_33;
  }

  v13 = result;
  v14 = sub_1E1780();
  v16 = v15;

  v17 = [a1 assetType];
  sub_4C270();
  *v10 = sub_1E19E0();
  (*(v7 + 104))(v10, enum case for DispatchPredicate.notOnQueue(_:), v6);
  v18 = sub_1E1660();
  result = (*(v7 + 8))(v10, v6);
  if ((v18 & 1) == 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  v40[0] = v17;
  v40[1] = a2;
  v41 = a3;
  v19 = *(v43 + OBJC_IVAR___BAEventReporter_dataProviders);
  sub_3D68(&qword_281B70, &qword_1E9980);
  sub_1E1330();
  v20 = v44[0];
  result = (v44[0] + 32);
  v21 = -*(v44[0] + 16);
  v22 = -1;
  while (1)
  {
    v23 = v21 + v22;
    if (v21 + v22 == -1)
    {
      break;
    }

    if (++v22 >= *(v20 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    v24 = result + 40;
    sub_4C2BC(result, v44);
    v25 = v45;
    v26 = v46;
    sub_48B8(v44, v45);
    v27 = (*(v26 + 8))(v43, v14, v16, v25, v26);
    sub_4E48(v44);
    result = v24;
    if (v27)
    {

      v28 = [v27 intValue];

      goto LABEL_15;
    }
  }

  v28 = 0;
LABEL_15:
  v29 = v23 == -1;
  if (v40[0] >= 7uLL)
  {
    v30 = 0;
  }

  else
  {
    v30 = 0x2000503040100uLL >> (8 * LOBYTE(v40[0]));
  }

  v31._countAndFlagsBits = v14;
  v31._object = v16;
  v32 = BATracker.contentPrivateID(for:)(v31);
  if (v32.value._object)
  {
    countAndFlagsBits = v32.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (v32.value._object)
  {
    object = v32.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  v35._countAndFlagsBits = v14;
  v35._object = v16;
  v36 = BATracker.contentUserID(for:)(v35);
  result = v36.value._countAndFlagsBits;
  v37 = v41;
  *v41 = v14;
  v37[1] = v16;
  if (v36.value._object)
  {
    v38 = v36.value._countAndFlagsBits;
  }

  else
  {
    v38 = 0;
  }

  if (v36.value._object)
  {
    v39 = v36.value._object;
  }

  else
  {
    v39 = 0xE000000000000000;
  }

  *(v37 + 16) = v30;
  v37[3] = countAndFlagsBits;
  v37[4] = object;
  v37[5] = v38;
  v37[6] = v39;
  *(v37 + 56) = v42;
  *(v37 + 57) = 4;
  *(v37 + 15) = v28;
  *(v37 + 64) = v29;
  *(v37 + 17) = 0;
  *(v37 + 72) = 1;
  *(v37 + 73) = 33751044;
  *(v37 + 77) = 2;
  v37[10] = 0;
  v37[11] = 0;
  return result;
}

uint64_t EventReporter.userEmbeddingData()(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return _swift_task_switch(sub_BF66C, 0, 0);
}

uint64_t sub_BF66C()
{
  v1 = *(v0[10] + OBJC_IVAR___BAEventReporter_dataProviders);
  sub_3D68(&qword_281B70, &qword_1E9980);
  sub_1E1330();
  result = v0[7];
  v0[11] = result;
  v3 = *(result + 16);
  v0[12] = v3;
  if (v3)
  {
    v0[13] = 0;
    if (*(result + 16))
    {
      sub_4C2BC(result + 32, (v0 + 2));
      v4 = v0[5];
      v5 = v0[6];
      sub_48B8(v0 + 2, v4);
      v6 = *(v5 + 16);
      v12 = (v6 + *v6);
      v7 = v6[1];
      v8 = swift_task_alloc();
      v0[14] = v8;
      *v8 = v0;
      v8[1] = sub_BF848;
      v9 = v0[10];

      return (v12)(v0 + 8, v9, v4, v5);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v10 = v0[9];

    *v10 = 0;
    v11 = v0[1];

    return v11();
  }

  return result;
}

uint64_t sub_BF848()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    sub_4E48((v2 + 16));

    v5 = sub_BFB60;
  }

  else
  {
    sub_4E48((v2 + 16));
    v5 = sub_BF978;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_BF978()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[11];
    v3 = v0[9];

    *v3 = v1;
LABEL_5:
    v7 = v0[1];

    v7();
    return;
  }

  v4 = v0[13] + 1;
  if (v4 == v0[12])
  {
    v5 = v0[11];
    v6 = v0[9];

    *v6 = 0;
    goto LABEL_5;
  }

  v0[13] = v4;
  v8 = v0[11];
  if (v4 >= *(v8 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_4C2BC(v8 + 40 * v4 + 32, (v0 + 2));
    v9 = v0[5];
    v10 = v0[6];
    sub_48B8(v0 + 2, v9);
    v11 = *(v10 + 16);
    v15 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = sub_BF848;
    v14 = v0[10];

    (v15)(v0 + 8, v14, v9, v10);
  }
}

id sub_BFB78()
{
  if (qword_27D050 != -1)
  {
    swift_once();
  }

  v0 = sub_1E1360();
  sub_3B2C(v0, qword_2802D8);
  v1 = sub_1E1340();
  v2 = sub_1E1990();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Fallback tracker should only be computed on main thread for thread-safety", v3, 2u);
  }

  result = [objc_opt_self() _applicationKeyWindow];
  if (result)
  {
    v5 = result;
    v6 = [result rootViewController];

    if (v6)
    {
      v7 = swift_dynamicCastObjCProtocolConditional();
      if (v7 && (v8 = [v7 ba_deepestVisibleChildViewControllerIncludePresented:1]) != 0)
      {
        v9 = v8;
        v10 = swift_dynamicCastObjCProtocolConditional();
        if (v10)
        {
          v11 = v10;
          v12 = v9;
          v13 = [v11 ba_effectiveAnalyticsTracker];

          return v13;
        }
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_BFD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000000002156D0 == a2)
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

uint64_t sub_BFDFC(uint64_t a1)
{
  v2 = sub_C015C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BFE38(uint64_t a1)
{
  v2 = sub_C015C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScrollViewSettingData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_284670, &qword_1F48E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_C015C();
  sub_1E1E00();
  v12 = v8;
  sub_C01B0();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ScrollViewSettingData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_284688, &qword_1F48E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_C015C();
  sub_1E1DF0();
  if (!v2)
  {
    sub_C0204();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_C015C()
{
  result = qword_284678;
  if (!qword_284678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284678);
  }

  return result;
}

unint64_t sub_C01B0()
{
  result = qword_284680;
  if (!qword_284680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284680);
  }

  return result;
}

unint64_t sub_C0204()
{
  result = qword_284690;
  if (!qword_284690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284690);
  }

  return result;
}

unint64_t sub_C025C()
{
  result = qword_284698;
  if (!qword_284698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284698);
  }

  return result;
}

unint64_t sub_C02B4()
{
  result = qword_2846A0;
  if (!qword_2846A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2846A0);
  }

  return result;
}

unint64_t sub_C032C()
{
  result = qword_2846A8;
  if (!qword_2846A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2846A8);
  }

  return result;
}

unint64_t sub_C0384()
{
  result = qword_2846B0;
  if (!qword_2846B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2846B0);
  }

  return result;
}

unint64_t sub_C03DC()
{
  result = qword_2846B8;
  if (!qword_2846B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2846B8);
  }

  return result;
}

uint64_t GenreExposureEvent.genreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GenreExposureEvent.genreData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GenreExposureEvent.exposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenreExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27F4F8, &unk_210310);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenreExposureEvent.exposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GenreExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27F4F8, &unk_210310);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GenreExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenreExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenreExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GenreExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GenreExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenreExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenreExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GenreExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GenreExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenreExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenreExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GenreExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GenreExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for GenreExposureEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t GenreExposureEvent.Model.genreData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v4;
}

uint64_t SeriesExposureEvent.Model.exposureData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v7[0] = v1[3];
  v7[1] = v2;
  v4 = v1[6];
  v8 = v1[5];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_17AA4(v7, &v6, &qword_27F500, &unk_210330);
}

uint64_t SeriesExposureEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 192);
  v20 = *(v1 + 208);
  v21 = v2;
  v4 = *(v1 + 224);
  v22 = *(v1 + 240);
  v5 = *(v1 + 160);
  v7 = *(v1 + 128);
  v16 = *(v1 + 144);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 160);
  v9 = *(v1 + 192);
  v18 = *(v1 + 176);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 128);
  v15[0] = *(v1 + 112);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 240);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 256);
  *(a1 + 144) = *(v1 + 256);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_17AA4(v15, v14, &qword_27E4A0, &qword_1E8860);
}

uint64_t GenreExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenreExposureEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenreExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenreExposureEvent.Model(0) + 32);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenreExposureEvent.Model.init(genreData:exposureData:linkData:eventData:timedData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 8);
  *a6 = *a1;
  *(a6 + 8) = v9;
  v10 = *(a1 + 32);
  *(a6 + 16) = *(a1 + 16);
  *(a6 + 32) = v10;
  v11 = a2[1];
  *(a6 + 48) = *a2;
  *(a6 + 64) = v11;
  v12 = a2[3];
  *(a6 + 80) = a2[2];
  *(a6 + 96) = v12;
  v13 = *(a3 + 16);
  *(a6 + 112) = *a3;
  *(a6 + 128) = v13;
  v14 = *(a3 + 32);
  v15 = *(a3 + 48);
  v16 = *(a3 + 80);
  *(a6 + 176) = *(a3 + 64);
  *(a6 + 192) = v16;
  *(a6 + 144) = v14;
  *(a6 + 160) = v15;
  v17 = *(a3 + 96);
  v18 = *(a3 + 112);
  v19 = *(a3 + 128);
  *(a6 + 256) = *(a3 + 144);
  *(a6 + 224) = v18;
  *(a6 + 240) = v19;
  *(a6 + 208) = v17;
  v20 = type metadata accessor for GenreExposureEvent.Model(0);
  v21 = *(v20 + 28);
  v22 = sub_1E1150();
  (*(*(v22 - 8) + 32))(a6 + v21, a4, v22);
  v23 = *(v20 + 32);
  v24 = sub_1E11A0();
  v25 = *(*(v24 - 8) + 32);

  return v25(a6 + v23, a5, v24);
}

uint64_t sub_C10BC()
{
  v1 = *v0;
  v2 = 0x74614465726E6567;
  v3 = 0x617461446B6E696CLL;
  v4 = 0x746144746E657665;
  if (v1 != 3)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657275736F707865;
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

uint64_t sub_C1158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_C2C88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_C1180(uint64_t a1)
{
  v2 = sub_C16EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C11BC(uint64_t a1)
{
  v2 = sub_C16EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GenreExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_2846F0, &qword_1F4B18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_C16EC();
  sub_1E1E00();
  v10 = v2[1];
  v11 = v2[2];
  v12 = v2[5];
  v64 = *v2;
  v65 = v10;
  v66 = v11;
  v67 = *(v2 + 3);
  v68 = v12;
  v63 = 0;
  sub_81F40();

  v13 = v8;

  v14 = v69;
  sub_1E1CF0();
  if (v14)
  {
  }

  else
  {
    v69 = v8;

    v15 = *(v2 + 4);
    v62[0] = *(v2 + 3);
    v62[1] = v15;
    v16 = *(v2 + 6);
    v18 = *(v2 + 3);
    v17 = *(v2 + 4);
    v62[2] = *(v2 + 5);
    v62[3] = v16;
    v58 = v18;
    v59 = v17;
    v19 = *(v2 + 6);
    v60 = *(v2 + 5);
    v61 = v19;
    v57 = 1;
    sub_17AA4(v62, v48, &qword_27F500, &unk_210330);
    sub_38C28();
    sub_1E1C80();
    v47[0] = v58;
    v47[1] = v59;
    v47[2] = v60;
    v47[3] = v61;
    sub_18E48(v47, &qword_27F500, &unk_210330);
    v20 = *(v2 + 14);
    v21 = *(v2 + 12);
    v53 = *(v2 + 13);
    v54 = v20;
    v22 = *(v2 + 14);
    v55 = *(v2 + 15);
    v23 = *(v2 + 10);
    v24 = *(v2 + 8);
    v49 = *(v2 + 9);
    v50 = v23;
    v25 = *(v2 + 10);
    v26 = *(v2 + 12);
    v51 = *(v2 + 11);
    v52 = v26;
    v27 = *(v2 + 8);
    v48[0] = *(v2 + 7);
    v48[1] = v27;
    v43 = v53;
    v44 = v22;
    v45 = *(v2 + 15);
    v39 = v49;
    v40 = v25;
    v41 = v51;
    v42 = v21;
    v56 = v2[32];
    v46 = v2[32];
    v37 = v48[0];
    v38 = v24;
    v36 = 2;
    sub_17AA4(v48, v34, &qword_27E4A0, &qword_1E8860);
    sub_18630();
    sub_1E1C80();
    v34[6] = v43;
    v34[7] = v44;
    v34[8] = v45;
    v35 = v46;
    v34[2] = v39;
    v34[3] = v40;
    v34[4] = v41;
    v34[5] = v42;
    v34[0] = v37;
    v34[1] = v38;
    sub_18E48(v34, &qword_27E4A0, &qword_1E8860);
    v29 = type metadata accessor for GenreExposureEvent.Model(0);
    v30 = *(v29 + 28);
    v33 = 3;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v31 = *(v29 + 32);
    v33 = 4;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    v13 = v69;
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v13, v4);
}

unint64_t sub_C16EC()
{
  result = qword_2846F8;
  if (!qword_2846F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2846F8);
  }

  return result;
}

uint64_t GenreExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = sub_1E11A0();
  v33 = *(v35 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v35);
  v36 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  __chkstk_darwin(v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_3D68(&qword_284700, &qword_1F4B20);
  v38 = *(v39 - 8);
  v9 = *(v38 + 64);
  __chkstk_darwin(v39);
  v11 = v31 - v10;
  v12 = type metadata accessor for GenreExposureEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_C16EC();
  v40 = v11;
  v17 = v58;
  sub_1E1DF0();
  if (v17)
  {
    return sub_4E48(a1);
  }

  v18 = v38;
  v32 = v12;
  v58 = v5;
  LOBYTE(v54) = 0;
  sub_827D8();
  sub_1E1C20();
  v19 = *(&v43 + 1);
  *v15 = v43;
  *(v15 + 1) = v19;
  v20 = v45;
  *(v15 + 1) = v44;
  *(v15 + 2) = v20;
  v53 = 1;
  sub_393C4();
  sub_1E1BB0();
  v21 = v55;
  *(v15 + 3) = v54;
  *(v15 + 4) = v21;
  v22 = v57;
  *(v15 + 5) = v56;
  *(v15 + 6) = v22;
  v42 = 2;
  sub_18FA4();
  v31[1] = 0;
  sub_1E1BB0();
  v23 = v50;
  *(v15 + 13) = v49;
  *(v15 + 14) = v23;
  *(v15 + 15) = v51;
  *(v15 + 32) = v52;
  v24 = v46;
  *(v15 + 9) = v45;
  *(v15 + 10) = v24;
  v25 = v48;
  *(v15 + 11) = v47;
  *(v15 + 12) = v25;
  v26 = v44;
  *(v15 + 7) = v43;
  *(v15 + 8) = v26;
  v41 = 3;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v27 = v58;
  sub_1E1C20();
  (*(v37 + 32))(&v15[*(v32 + 28)], v8, v27);
  v41 = 4;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v28 = v36;
  v29 = v35;
  sub_1E1C20();
  (*(v18 + 8))(v40, v39);
  (*(v33 + 32))(&v15[*(v32 + 32)], v28, v29);
  sub_C1EB0(v15, v34);
  sub_4E48(a1);
  return sub_C1F14(v15);
}

uint64_t sub_C1EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenreExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C1F14(uint64_t a1)
{
  v2 = type metadata accessor for GenreExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C2010@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_C21F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F4F8, &unk_210310);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_C2414(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F4F8, &unk_210310);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_C262C()
{
  sub_C27A0(319, &unk_281E50, sub_827D8, sub_81F40);
  if (v0 <= 0x3F)
  {
    sub_C27A0(319, &unk_27F598, sub_393C4, sub_38C28);
    if (v1 <= 0x3F)
    {
      sub_C27A0(319, &unk_27E588, sub_18FA4, sub_18630);
      if (v2 <= 0x3F)
      {
        sub_5684();
        if (v3 <= 0x3F)
        {
          sub_5750();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}