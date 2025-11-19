id sub_46808()
{
  sub_8397C(0);
  v20 = 0;
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  v2 = sub_8437C();
  v3 = [v1 fileExistsAtPath:v2 isDirectory:&v20];

  if (!v3)
  {
    goto LABEL_5;
  }

  if (v20)
  {
  }

  v5 = [v0 defaultManager];
  v6 = sub_8437C();
  v19 = 0;
  v7 = [v5 removeItemAtPath:v6 error:&v19];

  v8 = v19;
  if (!v7)
  {
    v12 = v8;
  }

  else
  {
LABEL_5:
    v9 = [v0 defaultManager];
    v10 = sub_8437C();

    v19 = 0;
    v11 = [v9 createDirectoryAtPath:v10 withIntermediateDirectories:0 attributes:0 error:&v19];

    result = v19;
    if (v11)
    {
      return result;
    }

    v12 = result;
  }

  sub_838DC();

  swift_willThrow();
  if (qword_CA490 != -1)
  {
    swift_once();
  }

  v13 = sub_83D6C();
  sub_2C284(v13, qword_CB3C8);
  swift_errorRetain();
  v14 = sub_83D4C();
  v15 = sub_847AC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138543362;
    v18 = sub_838CC();
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&dword_0, v14, v15, "[JSAFileStorage] Failed to create enclosing directory with error=%{public}@", v16, 0xCu);
    sub_38328(v17, &qword_CA760, &qword_A0F80);
  }

  return swift_willThrow();
}

id JSAFileStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSAFileStorage();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSAFileStorage()
{
  result = qword_CABC0;
  if (!qword_CABC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_46C84()
{
  result = sub_839CC();
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

uint64_t sub_46DD4(uint64_t a1, uint64_t a2)
{
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_46E44()
{
  result = qword_CABD0;
  if (!qword_CABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CABD0);
  }

  return result;
}

unint64_t sub_46E98()
{
  result = qword_CAD90;
  if (!qword_CAD90)
  {
    sub_847FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CAD90);
  }

  return result;
}

unint64_t sub_46EF0()
{
  result = qword_CADA0;
  if (!qword_CADA0)
  {
    sub_280F0(&qword_CA520, &unk_A1670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CADA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSAFileStorage.StorageError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSAFileStorage.StorageError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_470B8()
{
  result = qword_CABD8;
  if (!qword_CABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CABD8);
  }

  return result;
}

unint64_t sub_4710C()
{
  result = qword_CABE0;
  if (!qword_CABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CABE0);
  }

  return result;
}

id RequestEncoder.__allocating_init(tokenService:bag:cookiesToSuppress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___JSARequestEncoder_cookiesToSuppress] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  v8 = objc_msgSendSuper2(&v10, "initWithTokenService:bag:", a1, a2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

id RequestEncoder.init(tokenService:bag:cookiesToSuppress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___JSARequestEncoder_cookiesToSuppress] = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for RequestEncoder();
  v6 = objc_msgSendSuper2(&v8, "initWithTokenService:bag:", a1, a2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v6;
}

void sub_472F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = *&v2[OBJC_IVAR___JSARequestEncoder_cookiesToSuppress];
  v7 = sub_8376C();
  sub_46DD4(a2, aBlock);
  v8 = v21;
  if (v21)
  {
    v9 = sub_40E4C(aBlock, v21);
    v10 = *(v8 - 1);
    v11 = *(v10 + 64);
    __chkstk_darwin(v9);
    v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_84BDC();
    (*(v10 + 8))(v13, v8);
    sub_371A8(aBlock);
  }

  else
  {
    v14 = 0;
  }

  v15 = type metadata accessor for RequestEncoder();
  v24.receiver = v3;
  v24.super_class = v15;
  v16 = objc_msgSendSuper2(&v24, "requestByEncodingRequest:parameters:", v7, v14);

  swift_unknownObjectRelease();
  v17 = swift_allocObject();
  *(v17 + 16) = v6;
  *(v17 + 24) = ObjectType;
  v22 = sub_47A34;
  v23 = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_47C88;
  v21 = &unk_B57F0;
  v18 = _Block_copy(aBlock);

  v19 = [v16 jsa_mapWithBlock:v18];
  _Block_release(v18);

  if (!v19)
  {
    __break(1u);
  }
}

uint64_t sub_4754C(id a1, uint64_t a2)
{
  v45 = sub_837FC();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v45);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  v48 = a2;
  v8 = sub_2805C(&qword_CA970, &qword_A1290);
  v9 = sub_47F78(&qword_CAC20);
  if ((sub_8476C() & 1) == 0 || !a1 || (v10 = sub_8437C(), v11 = [a1 valueForHTTPHeaderField:v10], v10, !v11))
  {
LABEL_27:
    v40 = a1;
    return a1;
  }

  v41[1] = v9;
  v41[2] = v8;
  v42 = a1;
  v12 = sub_843AC();
  v14 = v13;

  v48 = v12;
  v49 = v14;
  v46 = (&stru_20 + 27);
  v47 = 0xE100000000000000;
  v44 = sub_3A8E8();
  v15 = sub_848FC();

  v16 = *(v15 + 16);
  if (v16)
  {
    v46 = &_swiftEmptyArrayStorage;
    sub_3B254(0, v16, 0);
    v17 = v46;
    v18 = (v4 + 8);
    v41[0] = v15;
    v19 = (v15 + 40);
    do
    {
      v20 = *v19;
      v48 = *(v19 - 1);
      v49 = v20;

      sub_837DC();
      v21 = sub_8491C();
      v23 = v22;
      (*v18)(v7, v45);

      v46 = v17;
      v25 = v17[2];
      v24 = v17[3];
      if (v25 >= v24 >> 1)
      {
        sub_3B254((v24 > 1), v25 + 1, 1);
        v17 = v46;
      }

      v17[2] = v25 + 1;
      v26 = &v17[2 * v25];
      *(v26 + 4) = v21;
      *(v26 + 5) = v23;
      v19 += 2;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = &_swiftEmptyArrayStorage;
  }

  v28 = v17[2];
  v29 = v43;
  if (!v28)
  {
    v32 = &_swiftEmptyArrayStorage;
LABEL_23:

    v48 = v32;
    if (sub_8476C())
    {
      v48 = v32;
      sub_47F78(&qword_CA980);
      sub_8436C();

      v38 = sub_8437C();

      v39 = sub_8437C();
      a1 = v42;
      [v42 setValue:v38 forHTTPHeaderField:v39];
    }

    else
    {

      v39 = sub_8437C();
      a1 = v42;
      [v42 setValue:0 forHTTPHeaderField:v39];
    }

    goto LABEL_27;
  }

  v30 = 0;
  v31 = v17 + 5;
  v32 = &_swiftEmptyArrayStorage;
  v45 = v17[2];
  while (v30 < v17[2])
  {
    v34 = *(v31 - 1);
    v33 = *v31;
    v48 = v34;
    v49 = v33;

    if (sub_47A3C(&v48, v29))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v46 = v32;
      if ((result & 1) == 0)
      {
        result = sub_3B254(0, v32[2] + 1, 1);
        v29 = v43;
        v32 = v46;
      }

      v36 = v32[2];
      v35 = v32[3];
      if (v36 >= v35 >> 1)
      {
        result = sub_3B254((v35 > 1), v36 + 1, 1);
        v29 = v43;
        v32 = v46;
      }

      v32[2] = v36 + 1;
      v37 = &v32[2 * v36];
      v37[4] = v34;
      v37[5] = v33;
      v28 = v45;
    }

    else
    {
    }

    ++v30;
    v31 += 2;
    if (v28 == v30)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_479FC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

BOOL sub_47A3C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + 40;
  v5 = *(a2 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 16;
    v18 = *(v4 - 8);
    swift_bridgeObjectRetain_n();
    v20._countAndFlagsBits = 61;
    v20._object = 0xE100000000000000;
    sub_844AC(v20);
    v7 = sub_8451C(v18);

    v4 = v6;
    if (v7)
    {
      if (qword_CA4D0 != -1)
      {
        swift_once();
      }

      v8 = sub_83D6C();
      sub_2C284(v8, qword_CB488);

      v9 = sub_83D4C();
      v10 = sub_8478C();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v19 = v12;
        *v11 = 136315138;
        sub_3A8E8();
        v13 = sub_848FC();
        if (v13[2])
        {
          v15 = v13[4];
          v14 = v13[5];
        }

        else
        {
          v14 = 0xE900000000000029;
          v15 = 0x6E776F6E6B6E7528;
        }

        v16 = sub_3A93C(v15, v14, &v19);

        *(v11 + 4) = v16;
        _os_log_impl(&dword_0, v9, v10, "Suppressing cookie %s", v11, 0xCu);
        sub_371A8(v12);
      }

      return v5 == 0;
    }
  }

  return v5 == 0;
}

id sub_47C88(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4(a2);

  return v6;
}

uint64_t sub_47CF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id RequestEncoder.__allocating_init(tokenService:bag:)(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(v2) initWithTokenService:a1 bag:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

id RequestEncoder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestEncoder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_47F78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_280F0(&qword_CA970, &qword_A1290);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_480C8(void *a1, uint64_t a2)
{
  v4 = sub_2805C(&qword_CA740, &qword_A0F60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = sub_2C284(v4, a2);
  (*(v5 + 16))(v8, v9, v4);
  sub_83BAC();
  (*(v5 + 8))(v8, v4);
  return v11;
}

uint64_t sub_481FC()
{

  v0 = sub_844BC();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_844BC();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_84BEC();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_844BC();
      v3 = v5;
    }

    while (v5);
  }

  sub_844BC();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t (*static Defaults.figaroTestingModeEnabled.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_2805C(&qword_CA718, &qword_A0F00);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_CA3E8 != -1)
  {
    swift_once();
  }

  v9 = sub_2C284(v4, qword_CAC28);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_83B9C();
  return sub_4AB58;
}

uint64_t sub_48500()
{
  v0 = sub_2805C(&qword_CA718, &qword_A0F00);
  sub_38490(v0, qword_CAC28);
  sub_2C284(v0, qword_CAC28);
  v1 = [objc_opt_self() bu_groupUserDefaults];
  return sub_83BCC();
}

uint64_t (*static Defaults.perfMemoryTestingMode.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_2805C(&qword_CA718, &qword_A0F00);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_CA3F0 != -1)
  {
    swift_once();
  }

  v9 = sub_2C284(v4, qword_CAC40);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_83B9C();
  return sub_4AB58;
}

uint64_t sub_48758()
{
  v0 = sub_2805C(&qword_CA718, &qword_A0F00);
  sub_38490(v0, qword_CAC40);
  sub_2C284(v0, qword_CAC40);
  v1 = [objc_opt_self() bu_groupUserDefaults];
  return sub_83BCC();
}

uint64_t (*static Defaults.hotReloadEnabled.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_2805C(&qword_CA718, &qword_A0F00);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_CA3F8 != -1)
  {
    swift_once();
  }

  v9 = sub_2C284(v4, qword_CAC58);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_83B9C();
  return sub_4AB58;
}

uint64_t sub_489B0()
{
  v0 = sub_2805C(&qword_CA718, &qword_A0F00);
  sub_38490(v0, qword_CAC58);
  sub_2C284(v0, qword_CAC58);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_83BCC();
}

uint64_t (*static Defaults.launchWithBundleJS.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_2805C(&qword_CA718, &qword_A0F00);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_CA400 != -1)
  {
    swift_once();
  }

  v9 = sub_2C284(v4, qword_CAC70);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_83B9C();
  return sub_4AB58;
}

uint64_t sub_48BE4()
{
  v0 = sub_2805C(&qword_CA718, &qword_A0F00);
  sub_38490(v0, qword_CAC70);
  sub_2C284(v0, qword_CAC70);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_83BCC();
}

uint64_t sub_48CB8(void *a1, uint64_t a2)
{
  v4 = sub_2805C(&qword_CA718, &qword_A0F00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = sub_2C284(v4, a2);
  (*(v5 + 16))(v8, v9, v4);
  sub_83BAC();
  (*(v5 + 8))(v8, v4);
  return v11[15];
}

uint64_t (*static Defaults.showDebugMenu.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_2805C(&qword_CA718, &qword_A0F00);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_CA408 != -1)
  {
    swift_once();
  }

  v9 = sub_2C284(v4, qword_CAC88);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_83B9C();
  return sub_48F70;
}

uint64_t sub_48F74()
{
  v0 = sub_2805C(&qword_CA718, &qword_A0F00);
  sub_38490(v0, qword_CAC88);
  sub_2C284(v0, qword_CAC88);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_83BCC();
}

uint64_t sub_49050(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_2805C(&qword_CA740, &qword_A0F60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v15 - v11;
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = sub_2C284(v8, a4);
  (*(v9 + 16))(v12, v13, v8);
  v15[0] = a1;
  v15[1] = a2;
  sub_83BBC();
  return (*(v9 + 8))(v12, v8);
}

uint64_t (*static Defaults.bootURL.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_2805C(&qword_CA740, &qword_A0F60);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_CA410 != -1)
  {
    swift_once();
  }

  v9 = sub_2C284(v4, qword_CACA0);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_83B9C();
  return sub_4AB58;
}

uint64_t sub_492F4()
{
  v0 = sub_2805C(&qword_CA740, &qword_A0F60);
  sub_38490(v0, qword_CACA0);
  sub_2C284(v0, qword_CACA0);
  v1 = [objc_opt_self() bu_groupUserDefaults];
  sub_2805C(&qword_CAD68, &unk_A1620);
  return sub_83BCC();
}

double sub_493B4@<D0>(void *a1@<X3>, uint64_t a2@<X4>, _OWORD *a3@<X8>)
{
  v6 = sub_2805C(&qword_CA740, &qword_A0F60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  if (*a1 != -1)
  {
    swift_once();
  }

  v11 = sub_2C284(v6, a2);
  (*(v7 + 16))(v10, v11, v6);
  sub_83BAC();
  (*(v7 + 8))(v10, v6);
  result = *&v13;
  *a3 = v13;
  return result;
}

uint64_t sub_494F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v9 = sub_2805C(&qword_CA740, &qword_A0F60);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v19 - v12;
  v15 = *a1;
  v14 = a1[1];
  v16 = *a5;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_2C284(v9, a6);
  (*(v10 + 16))(v13, v17, v9);
  v19[0] = v15;
  v19[1] = v14;
  sub_83BBC();
  return (*(v10 + 8))(v13, v9);
}

uint64_t (*static Defaults.lastCachedBootURL.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_2805C(&qword_CA740, &qword_A0F60);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_CA418 != -1)
  {
    swift_once();
  }

  v9 = sub_2C284(v4, qword_CACB8);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_83B9C();
  return sub_4AB58;
}

uint64_t sub_497AC()
{
  v0 = sub_2805C(&qword_CA740, &qword_A0F60);
  sub_38490(v0, qword_CACB8);
  sub_2C284(v0, qword_CACB8);
  v1 = [objc_opt_self() bu_groupUserDefaults];
  sub_2805C(&qword_CAD68, &unk_A1620);
  return sub_83BCC();
}

uint64_t (*static Defaults.alwaysReloadJS.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_2805C(&qword_CA718, &qword_A0F00);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_CA420 != -1)
  {
    swift_once();
  }

  v9 = sub_2C284(v4, qword_CACD0);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_83B9C();
  return sub_4AB58;
}

uint64_t sub_499FC()
{
  v0 = sub_2805C(&qword_CA718, &qword_A0F00);
  sub_38490(v0, qword_CACD0);
  sub_2C284(v0, qword_CACD0);
  v1 = [objc_opt_self() bu_groupUserDefaults];
  return sub_83BCC();
}

uint64_t (*static Defaults.allowUnsignedJetpack.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_2805C(&qword_CA718, &qword_A0F00);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_CA428 != -1)
  {
    swift_once();
  }

  v9 = sub_2C284(v4, qword_CACE8);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_83B9C();
  return sub_4AB58;
}

uint64_t sub_49C30()
{
  v0 = sub_2805C(&qword_CA718, &qword_A0F00);
  sub_38490(v0, qword_CACE8);
  sub_2C284(v0, qword_CACE8);
  v1 = [objc_opt_self() bu_groupUserDefaults];
  return sub_83BCC();
}

uint64_t sub_49CE0@<X0>(void *a1@<X3>, uint64_t a2@<X4>, _BYTE *a3@<X8>)
{
  v6 = sub_2805C(&qword_CA718, &qword_A0F00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13[-v9];
  if (*a1 != -1)
  {
    swift_once();
  }

  v11 = sub_2C284(v6, a2);
  (*(v7 + 16))(v10, v11, v6);
  sub_83BAC();
  result = (*(v7 + 8))(v10, v6);
  *a3 = v13[15];
  return result;
}

uint64_t sub_49E24(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = sub_2805C(&qword_CA718, &qword_A0F00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17[-v12];
  v14 = *a1;
  if (*a5 != -1)
  {
    swift_once();
  }

  v15 = sub_2C284(v9, a6);
  (*(v10 + 16))(v13, v15, v9);
  v17[15] = v14;
  sub_83BBC();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_49F8C(char a1, void *a2, uint64_t a3)
{
  v6 = sub_2805C(&qword_CA718, &qword_A0F00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13[-v9];
  if (*a2 != -1)
  {
    swift_once();
  }

  v11 = sub_2C284(v6, a3);
  (*(v7 + 16))(v10, v11, v6);
  v13[15] = a1 & 1;
  sub_83BBC();
  return (*(v7 + 8))(v10, v6);
}

uint64_t (*static Defaults.loadBundledJetPackFromJSRoot.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_2805C(&qword_CA718, &qword_A0F00);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_CA430 != -1)
  {
    swift_once();
  }

  v9 = sub_2C284(v4, qword_CAD00);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_83B9C();
  return sub_4AB58;
}

void sub_4A230(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_4A2A8()
{
  v0 = sub_2805C(&qword_CA718, &qword_A0F00);
  sub_38490(v0, qword_CAD00);
  sub_2C284(v0, qword_CAD00);
  v1 = [objc_opt_self() bu_groupUserDefaults];
  return sub_83BCC();
}

uint64_t sub_4A358()
{
  v0 = sub_2805C(&qword_CAD58, &qword_A1610);
  sub_38490(v0, qword_CAD18);
  sub_2C284(v0, qword_CAD18);
  v1 = [objc_opt_self() standardUserDefaults];
  sub_2805C(&qword_CAD60, &qword_A1618);
  return sub_83BCC();
}

id Defaults.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Defaults();
  return objc_msgSendSuper2(&v2, "init");
}

id Defaults.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Defaults();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s5JSApp8DefaultsC14bootURLIsLocalSbvgZ_0()
{
  v0 = sub_2805C(&qword_CA740, &qword_A0F60);
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  if (qword_CA410 != -1)
  {
    swift_once();
  }

  v5 = sub_2C284(v0, qword_CACA0);
  v6 = v1[2];
  v6(v4, v5, v0);
  sub_83BAC();
  v7 = v1[1];
  v7(v4, v0);
  if (v12 && (v8 = sub_481FC(), , (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v6(v4, v5, v0);
    sub_83BAC();
    v7(v4, v0);
    if (v12)
    {
      v9 = sub_481FC();
    }

    else
    {
      v9 = 0;
    }
  }

  return v9 & 1;
}

uint64_t sub_4AB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = sub_839CC();
  v4[19] = v5;
  v6 = *(v5 - 8);
  v4[20] = v6;
  v7 = *(v6 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  sub_8464C();
  v4[23] = sub_8463C();
  v9 = sub_8460C();
  v4[24] = v9;
  v4[25] = v8;

  return _swift_task_switch(sub_4AC5C, v9, v8);
}

uint64_t sub_4AC5C()
{
  v37 = v0;
  v1 = _sSo13UIApplicationC5JSAppE20sharedIfNotExtensionABSgvgZ_0();
  v0[26] = v1;
  if (v1)
  {
    v3 = v1;
    v4 = v0[18];
    sub_8394C(v2);
    v6 = v5;
    v7 = [v3 canOpenURL:v5];

    if (v7)
    {
      v9 = v0[18];
      sub_8394C(v8);
      v11 = v10;
      v0[27] = v10;
      sub_42938(&_swiftEmptyArrayStorage);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_57B38(&qword_CA660, type metadata accessor for OpenExternalURLOptionsKey);
      isa = sub_8433C().super.isa;
      v0[28] = isa;

      v0[2] = v0;
      v0[7] = v0 + 29;
      v0[3] = sub_4B07C;
      v13 = swift_continuation_init();
      v0[17] = sub_2805C(&unk_CAE90, &qword_A1868);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_4B404;
      v0[13] = &unk_B6150;
      v0[14] = v13;
      [v3 jsa_openExternalURL:v11 options:isa completionHandler:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v15 = v0[23];

    if (qword_CA478 != -1)
    {
      swift_once();
    }

    v17 = v0[20];
    v16 = v0[21];
    v19 = v0[18];
    v18 = v0[19];
    v20 = sub_83D6C();
    sub_2C284(v20, qword_CB380);
    (*(v17 + 16))(v16, v19, v18);
    v21 = sub_83D4C();
    v22 = sub_847AC();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[20];
    v24 = v0[21];
    v26 = v0[19];
    if (v23)
    {
      v27 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_3A93C(0xD000000000000013, 0x800000000009C920, &v36);
      *(v27 + 12) = 2080;
      v28 = sub_8391C();
      v30 = v29;
      (*(v25 + 8))(v24, v26);
      v31 = sub_3A93C(v28, v30, &v36);

      *(v27 + 14) = v31;
      _os_log_impl(&dword_0, v21, v22, "%s cannot open %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v25 + 8))(v24, v26);
    }
  }

  else
  {
    v14 = v0[23];
  }

  v33 = v0[21];
  v32 = v0[22];

  v34 = v0[1];

  return v34();
}

uint64_t sub_4B07C()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *v0;

  return _swift_task_switch(sub_4B184, v2, v1);
}

uint64_t sub_4B184()
{
  v28 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 184);

  v4 = *(v0 + 232);

  if (v4)
  {
  }

  else
  {
    if (qword_CA478 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 176);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 144);
    v9 = sub_83D6C();
    sub_2C284(v9, qword_CB380);
    (*(v7 + 16))(v5, v8, v6);
    v10 = sub_83D4C();
    v11 = sub_847AC();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 208);
    v14 = *(v0 + 176);
    v15 = *(v0 + 152);
    v16 = *(v0 + 160);
    if (v12)
    {
      v26 = *(v0 + 208);
      v17 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = sub_3A93C(0xD000000000000013, 0x800000000009C920, &v27);
      *(v17 + 12) = 2080;
      v18 = sub_8391C();
      v20 = v19;
      (*(v16 + 8))(v14, v15);
      v21 = sub_3A93C(v18, v20, &v27);

      *(v17 + 14) = v21;
      _os_log_impl(&dword_0, v10, v11, "%s failed to handle %s", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }
  }

  v23 = *(v0 + 168);
  v22 = *(v0 + 176);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_4B404(uint64_t a1, char a2)
{
  **(*(*sub_40E4C((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t sub_4B460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v26 = a3;
  v27 = a1;
  v28 = a2;
  v4 = sub_2805C(&qword_CAE70, &qword_A1820);
  v24 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v25 = &v23 - v7;
  v9 = sub_839CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v23 - v15;
  v17 = sub_8468C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v12, v26, v9);
  (*(v5 + 16))(v8, v27, v4);
  sub_8464C();

  v18 = sub_8463C();
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + *(v5 + 80) + v19) & ~*(v5 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = v18;
  *(v21 + 3) = &protocol witness table for MainActor;
  *(v21 + 4) = v28;
  (*(v10 + 32))(&v21[v19], v12, v9);
  (*(v5 + 32))(&v21[v20], v25, v24);
  *&v21[(v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8] = v23;
  sub_2D4A4(0, 0, v16, &unk_A1830, v21);
}

uint64_t sub_4B760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_2805C(&qword_CAE70, &qword_A1820);
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v7[8] = *(v9 + 64);
  v7[9] = swift_task_alloc();
  v10 = sub_839CC();
  v7[10] = v10;
  v11 = *(v10 - 8);
  v7[11] = v11;
  v12 = *(v11 + 64) + 15;
  v7[12] = swift_task_alloc();
  sub_8464C();
  v7[13] = sub_8463C();
  v14 = sub_8460C();

  return _swift_task_switch(sub_4B8C8, v14, v13);
}

uint64_t sub_4B8C8()
{
  v1 = v0[13];
  v2 = v0[2];

  switch(v2)
  {
    case 3:
      v25 = v0[6];
      v26 = v0[3];
      v27 = v0[4];
      v28 = [objc_opt_self() defaultBag];
      v29 = objc_allocWithZone(AMSUIDynamicViewController);
      sub_8394C(v30);
      v32 = v31;
      v8 = [v29 initWithBag:v28 URL:v31];

      v33 = [objc_opt_self() sharedProvider];
      v34 = [v33 activeStoreAccount];

      [v8 setAccount:v34];
      v9 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v8];
      v35 = [objc_opt_self() jsa_topMostViewControllerForWindow:0];
      [v35 present:v9 :1];
      sub_8462C();

      goto LABEL_10;
    case 2:
      v10 = v0[12];
      v11 = v0[9];
      v12 = v0[7];
      v13 = v0[8];
      v14 = v0[5];
      v15 = v0[6];
      v16 = v0[4];
      (*(v0[11] + 16))(v10, v0[3], v0[10]);
      v17 = objc_allocWithZone(type metadata accessor for AccountPageViewController());
      v18 = sub_6B560(v10, 0, 0, 0);
      (*(v12 + 16))(v11, v16, v15);
      v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v20 = swift_allocObject();
      (*(v12 + 32))(v20 + v19, v11, v15);
      v21 = &v18[OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish];
      v22 = *&v18[OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish];
      v23 = *&v18[OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish + 8];
      *v21 = sub_587E8;
      *(v21 + 1) = v20;
      sub_2C0EC(v22);
      if (v14)
      {
        v24 = v14;
      }

      else
      {
        v24 = &_swiftEmptyDictionarySingleton;
      }

      _sSo16UIViewControllerC5JSAppE7present_7options8animated10completionyAB_SDys11AnyHashableVypGSbyycSgtFZ_0(v18, v24, 1, 0, 0);

      goto LABEL_12;
    case 1:
      v3 = v0[12];
      v4 = v0[6];
      v5 = v0[4];
      (*(v0[11] + 16))(v3, v0[3], v0[10]);
      v6 = objc_allocWithZone(type metadata accessor for WebViewController());
      v7 = sub_7B208(v3);
      v8 = [objc_allocWithZone(type metadata accessor for WebNavigationController()) initWithRootViewController:v7];

      v9 = [objc_opt_self() jsa_topMostViewControllerForWindow:0];
      [v9 present:v8 :1];
      sub_8462C();
LABEL_10:

      goto LABEL_12;
  }

  v36 = v0[6];
  v37 = v0[4];
  sub_8462C();
LABEL_12:
  v38 = v0[12];
  v39 = v0[9];

  v40 = v0[1];

  return v40();
}

id sub_4BC88()
{
  result = [objc_allocWithZone(type metadata accessor for AccountController()) init];
  qword_CAD70 = result;
  return result;
}

uint64_t AccountController.add(observer:)(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR___JSAAccountController_observerQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_4BEDC;
  *(v5 + 24) = v4;
  v10[4] = sub_4BEE4;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_290C0;
  v10[3] = &unk_B5908;
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

uint64_t sub_4BE20(uint64_t a1)
{
  v2 = OBJC_IVAR___JSAAccountController_observers;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_8457C();
  if (*(&dword_10 + (*(a1 + v2) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a1 + v2) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v4 = *(&dword_10 + (*(a1 + v2) & 0xFFFFFFFFFFFFFF8));
    sub_845CC();
  }

  sub_845EC();
  return swift_endAccess();
}

uint64_t sub_4BEEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AccountController.remove(observer:)(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR___JSAAccountController_observerQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_4C160;
  *(v5 + 24) = v4;
  v10[4] = sub_5880C;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_290C0;
  v10[3] = &unk_B5980;
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

uint64_t sub_4C084(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___JSAAccountController_observers;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v5 = sub_562F4((a1 + v4), a2);
  swift_unknownObjectRelease();
  v6 = *(a1 + v4);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v9 = *(a1 + v4);
    }

    v7 = sub_84B0C();
    if (v7 >= v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (v7 >= v5)
    {
LABEL_3:
      sub_69950(v5, v7);
      return swift_endAccess();
    }
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

void sub_4C180(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t AccountController.signIn(enableAccountCreation:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  return _swift_task_switch(sub_4C21C, 0, 0);
}

uint64_t sub_4C21C()
{
  if (*(v0 + 64) == 1)
  {
    v1 = [objc_allocWithZone(AMSAuthenticateOptions) init];
    v2 = v1;
    if (v1)
    {
      [v1 setEnableAccountCreation:1];
    }
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 24) = v2;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_4C2FC;
  v4 = *(v0 + 16);

  return sub_4C510(v2);
}

uint64_t sub_4C2FC(char a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 32);
  v10 = *v4;
  *(*v4 + 40) = v3;

  if (v3)
  {
    v11 = sub_4C4A8;
  }

  else
  {
    *(v8 + 48) = a3;
    *(v8 + 56) = a2;
    *(v8 + 65) = a1 & 1;
    v11 = sub_4C43C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_4C43C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 65);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);

  return v1(v2, v3, v4);
}

uint64_t sub_4C4A8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1(0);
}

uint64_t sub_4C510(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return _swift_task_switch(sub_4C530, 0, 0);
}

uint64_t sub_4C530()
{
  v1 = [objc_msgSend(objc_opt_self() "sharedInstance")];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = v0[12];
    v3 = *&v2[OBJC_IVAR___JSAAccountController_observerQueue];
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_58310;
    *(v5 + 24) = v4;
    v0[6] = sub_5880C;
    v0[7] = v5;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_290C0;
    v0[5] = &unk_B6380;
    v6 = _Block_copy(v0 + 2);
    v7 = v0[7];
    v8 = v2;

    dispatch_sync(v3, v6);
    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }

    else
    {
      v17 = v0[11];
      v18 = objc_opt_self();
      v19 = [v18 sharedProvider];
      v20 = [v19 activeStoreAccount];

      v21 = [objc_allocWithZone(AMSAuthenticateRequest) initWithAccount:v20 options:v17];
      v0[13] = v21;

      v22 = [v18 sharedProvider];
      v23 = [v22 currentStorefront];

      if (v23)
      {
        v24 = sub_843AC();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v0[14] = v26;
      v29 = v0[12];
      v30 = swift_task_alloc();
      v0[15] = v30;
      v30[2] = v21;
      v30[3] = v29;
      v30[4] = v24;
      v30[5] = v26;
      v31 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v32 = swift_task_alloc();
      v0[16] = v32;
      v16 = sub_2805C(&qword_CAEB0, &qword_A18B0);
      *v32 = v0;
      v32[1] = sub_4C8C8;
      v14 = sub_58334;
      v12 = 0x77286E496E676973;
      v13 = 0xED0000293A687469;
      v9 = (v0 + 8);
      v10 = 0;
      v11 = 0;
      v15 = v30;
    }

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    v27 = v0[1];

    return v27(0, 0, 0xE000000000000000);
  }
}

uint64_t sub_4C8C8()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_4CA58;
  }

  else
  {
    v5 = *(v2 + 112);
    v6 = *(v2 + 120);

    v4 = sub_4C9EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_4C9EC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 8);

  return v4(v1, v2, v3);
}

uint64_t sub_4CA58()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  v3 = *(v0 + 8);
  v4 = *(v0 + 136);

  return v3(0);
}

uint64_t sub_4CC58(char a1, void *aBlock, void *a3)
{
  *(v3 + 16) = a3;
  *(v3 + 72) = a1;
  *(v3 + 24) = _Block_copy(aBlock);
  v5 = a3;

  return _swift_task_switch(sub_4CCD8, 0, 0);
}

uint64_t sub_4CCD8()
{
  if (*(v0 + 72) == 1)
  {
    v1 = [objc_allocWithZone(AMSAuthenticateOptions) init];
    v2 = v1;
    if (v1)
    {
      [v1 setEnableAccountCreation:1];
    }
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_4CDB8;
  v4 = *(v0 + 16);

  return sub_4C510(v2);
}

uint64_t sub_4CDB8(char a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  v10 = *v4;
  *(*v4 + 48) = v3;

  if (v3)
  {
    v11 = sub_4CFB8;
  }

  else
  {
    *(v8 + 56) = a3;
    *(v8 + 64) = a2;
    *(v8 + 73) = a1 & 1;
    v11 = sub_4CEF8;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_4CEF8()
{
  v1 = *(v0 + 73);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  v6 = sub_8437C();
  (v4)[2](v4, v1, v6, 0);

  _Block_release(v4);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_4CFB8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  v4 = sub_838CC();

  (v2)[2](v2, 0, 0, v4);

  _Block_release(v2);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_4D088()
{
  v1 = [objc_msgSend(objc_opt_self() "sharedInstance")];
  swift_unknownObjectRelease();
  if (v1 && (v2 = [objc_opt_self() sharedProvider], v3 = objc_msgSend(v2, "activeStoreAccount"), v0[9] = v3, v2, v3))
  {
    v4 = v0[8];
    v5 = *&v4[OBJC_IVAR___JSAAccountController_observerQueue];
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_5402C;
    *(v7 + 24) = v6;
    v0[6] = sub_5880C;
    v0[7] = v7;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_290C0;
    v0[5] = &unk_B59F8;
    v8 = _Block_copy(v0 + 2);
    v9 = v0[7];
    v10 = v4;

    dispatch_sync(v5, v8);
    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    else
    {
      v19 = v0[8];
      v20 = swift_task_alloc();
      v0[10] = v20;
      *(v20 + 16) = v3;
      *(v20 + 24) = v19;
      v21 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
      v22 = swift_task_alloc();
      v0[11] = v22;
      *v22 = v0;
      v22[1] = sub_4D37C;
      v18 = &type metadata for Bool;
      v16 = sub_54050;
      v14 = 0x2874754F6E676973;
      v11 = (v0 + 12);
      v12 = 0;
      v13 = 0;
      v15 = 0xE900000000000029;
      v17 = v20;
    }

    return withCheckedContinuation<A>(isolation:function:_:)(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    v23 = v0[1];

    return v23(v1);
  }
}

uint64_t sub_4D37C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return _swift_task_switch(sub_4D494, 0, 0);
}

uint64_t sub_4D494()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_4D4F8(uint64_t a1, void *a2)
{
  v4 = sub_2805C(&qword_CAEA8, &qword_A18A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = [a2 bu_signOut];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_58280;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_4DA54;
  aBlock[3] = &unk_B6290;
  v13 = _Block_copy(aBlock);

  [v9 addFinishBlock:v13];
  _Block_release(v13);
}

void sub_4D6F4(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR___JSAAccountController_observerQueue);
    v6 = Strong;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_58844;
    *(v8 + 24) = v7;
    aBlock[4] = sub_5880C;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_290C0;
    aBlock[3] = &unk_B6308;
    v9 = _Block_copy(aBlock);

    v10 = v6;

    dispatch_sync(v5, v9);
    _Block_release(v9);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    else
    {
      if (!a2)
      {
LABEL_8:
        LOBYTE(aBlock[0]) = a1 & 1;
        sub_2805C(&qword_CAEA8, &qword_A18A8);
        sub_8462C();

        return;
      }

      swift_errorRetain();
      if (qword_CA478 == -1)
      {
LABEL_5:
        v11 = sub_83D6C();
        sub_2C284(v11, qword_CB380);
        swift_errorRetain();
        v12 = sub_83D4C();
        v13 = sub_847AC();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          aBlock[0] = swift_slowAlloc();
          *v14 = 136315394;
          *(v14 + 4) = sub_3A93C(0x2874754F6E676973, 0xE900000000000029, aBlock);
          *(v14 + 12) = 2080;
          swift_getErrorValue();
          v15 = sub_84C5C();
          v17 = sub_3A93C(v15, v16, aBlock);

          *(v14 + 14) = v17;
          _os_log_impl(&dword_0, v12, v13, "%s Unable to sign out due to %s", v14, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        goto LABEL_8;
      }
    }

    swift_once();
    goto LABEL_5;
  }
}

void sub_4DA54(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t AccountController.presentGiftViewController(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_4DAF0, 0, 0);
}

uint64_t sub_4DAF0()
{
  v1 = *(v0 + 32);
  v6 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_4DBF4;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000024, 0x800000000009C5B0, sub_54058, v2, &type metadata for () + 8);
}

uint64_t sub_4DBF4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_4DD0C, 0, 0);
}

uint64_t sub_4DD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v7 = sub_2805C(&qword_CAE70, &qword_A1820);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v22 - v14;
  v16 = sub_8468C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  sub_8464C();

  v17 = sub_8463C();
  v18 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = v17;
  *(v20 + 3) = &protocol witness table for MainActor;
  *(v20 + 4) = v23;
  *(v20 + 5) = a3;
  (*(v8 + 32))(&v20[v18], v11, v7);
  *&v20[v19] = a4;
  sub_2D4A4(0, 0, v15, &unk_A18A0, v20);
}

uint64_t sub_4DF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_2805C(&qword_CAE70, &qword_A1820);
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v7[8] = *(v9 + 64);
  v7[9] = swift_task_alloc();
  v10 = *(*(sub_2805C(&unk_CAE60, &qword_A1800) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v11 = sub_839CC();
  v7[11] = v11;
  v12 = *(v11 - 8);
  v7[12] = v12;
  v13 = *(v12 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  sub_8464C();
  v7[15] = sub_8463C();
  v15 = sub_8460C();

  return _swift_task_switch(sub_4E104, v15, v14);
}

uint64_t sub_4E104()
{
  object = v0[5]._object;
  countAndFlagsBits = v0[6]._countAndFlagsBits;
  v3 = v0[5]._countAndFlagsBits;
  sub_843AC();
  sub_8399C();

  result = (*(countAndFlagsBits + 48))(v3, 1, object);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[7]._countAndFlagsBits;
    v5 = v0[7]._object;
    v7 = v0[5]._object;
    v8 = v0[6]._countAndFlagsBits;
    v9 = v0[5]._countAndFlagsBits;
    v10 = v0[1]._countAndFlagsBits;
    v11 = v0[1]._object;

    (*(v8 + 32))(v6, v9, v7);
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = v0[7]._countAndFlagsBits;
      sub_8395C(v0[1]);
    }

    v15 = v0[6]._object;
    v14 = v0[7]._countAndFlagsBits;
    v16 = v0[6]._countAndFlagsBits;
    v34 = v14;
    v35 = v0[5]._object;
    v36 = v0[5]._countAndFlagsBits;
    v17 = v0[3]._object;
    v32 = v0[4]._object;
    v33 = v0[4]._countAndFlagsBits;
    v18 = v0[2]._object;
    v19 = v0[3]._countAndFlagsBits;
    v20 = v0[1]._object;
    v31 = v0[2]._countAndFlagsBits;
    v21 = v0[1]._countAndFlagsBits;
    (*(v16 + 16))(v15);
    v22 = objc_allocWithZone(type metadata accessor for AccountPageViewController());

    v23 = sub_6B560(v15, 1, v21, v11);
    v17[2](v32, v31, v19);
    v24 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v25 = swift_allocObject();
    v17[4]((v25 + v24), v32, v19);
    v26 = &v23[OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish];
    v27 = *&v23[OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish];
    v28 = *&v23[OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish + 8];
    *v26 = sub_58140;
    *(v26 + 1) = v25;
    sub_2C0EC(v27);
    if (v18)
    {
      v29 = v18;
    }

    else
    {
      v29 = &_swiftEmptyDictionarySingleton;
    }

    _sSo16UIViewControllerC5JSAppE7present_7options8animated10completionyAB_SDys11AnyHashableVypGSbyycSgtFZ_0(v23, v29, 1, 0, 0);

    (*(v16 + 8))(v34, v35);

    v30 = v0->_object;

    return v30();
  }

  return result;
}

uint64_t sub_4E52C(int a1, uint64_t a2, void *aBlock)
{
  v3[2] = _Block_copy(aBlock);
  v5 = sub_843AC();
  v7 = v6;
  if (a2)
  {
    v8 = sub_8434C();
  }

  else
  {
    v8 = 0;
  }

  v3[3] = v8;
  v3[4] = v7;
  v3[5] = v5;

  return _swift_task_switch(sub_4E5F0, 0, 0);
}

uint64_t sub_4E5F0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_4E6F4;

  return withCheckedContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000024, 0x800000000009C5B0, sub_58814, v4, &type metadata for () + 8);
}

uint64_t sub_4E6F4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_4E828, 0, 0);
}

uint64_t sub_4E828()
{
  v2 = v0[2];
  v1 = v0[3];

  v2[2](v2);
  _Block_release(v2);
  v3 = v0[1];

  return v3();
}

uint64_t AccountController.presentRedeemViewController(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_4E8C4, 0, 0);
}

uint64_t sub_4E8C4()
{
  v1 = *(v0 + 32);
  v6 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_4E9C8;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000026, 0x800000000009C5E0, sub_54064, v2, &type metadata for () + 8);
}

uint64_t sub_4E9C8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_58818, 0, 0);
}

uint64_t sub_4EAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v7 = sub_2805C(&qword_CAE70, &qword_A1820);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v22 - v14;
  v16 = sub_8468C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  sub_8464C();

  v17 = sub_8463C();
  v18 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = v17;
  *(v20 + 3) = &protocol witness table for MainActor;
  *(v20 + 4) = v23;
  *(v20 + 5) = a3;
  (*(v8 + 32))(&v20[v18], v11, v7);
  *&v20[v19] = a4;
  sub_2D4A4(0, 0, v15, &unk_A1890, v20);
}

uint64_t sub_4ED18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_2805C(&qword_CAE70, &qword_A1820);
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v7[8] = *(v9 + 64);
  v7[9] = swift_task_alloc();
  v10 = *(*(sub_2805C(&unk_CAE60, &qword_A1800) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v11 = sub_839CC();
  v7[11] = v11;
  v12 = *(v11 - 8);
  v7[12] = v12;
  v13 = *(v12 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  sub_8464C();
  v7[15] = sub_8463C();
  v15 = sub_8460C();

  return _swift_task_switch(sub_4EEC4, v15, v14);
}

uint64_t sub_4EEC4()
{
  object = v0[5]._object;
  countAndFlagsBits = v0[6]._countAndFlagsBits;
  v3 = v0[5]._countAndFlagsBits;
  sub_843AC();
  sub_8399C();

  result = (*(countAndFlagsBits + 48))(v3, 1, object);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[7]._countAndFlagsBits;
    v5 = v0[7]._object;
    v7 = v0[5]._object;
    v8 = v0[6]._countAndFlagsBits;
    v9 = v0[5]._countAndFlagsBits;
    v10 = v0[1]._object;

    (*(v8 + 32))(v6, v9, v7);
    v12 = v0[1]._countAndFlagsBits;
    v11 = v0[1]._object;
    if (v10)
    {
      v13 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v13 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        v14 = v0[7]._countAndFlagsBits;
        sub_8395C(v0[1]);
        v12 = v0[1]._countAndFlagsBits;
        v11 = v0[1]._object;
      }
    }

    v16 = v0[6]._object;
    v15 = v0[7]._countAndFlagsBits;
    v17 = v0[6]._countAndFlagsBits;
    v33 = v15;
    v34 = v0[5]._object;
    v35 = v0[5]._countAndFlagsBits;
    v18 = v0[3]._object;
    v31 = v0[4]._object;
    v32 = v0[4]._countAndFlagsBits;
    v19 = v0[2]._object;
    v20 = v0[3]._countAndFlagsBits;
    v21 = v0[2]._countAndFlagsBits;
    (*(v17 + 16))(v16);
    v22 = objc_allocWithZone(type metadata accessor for AccountPageViewController());

    v23 = sub_6B560(v16, 2, v12, v11);
    v18[2](v31, v21, v20);
    v24 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v25 = swift_allocObject();
    v18[4]((v25 + v24), v31, v20);
    v26 = &v23[OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish];
    v27 = *&v23[OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish];
    v28 = *&v23[OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish + 8];
    *v26 = sub_587E8;
    *(v26 + 1) = v25;
    sub_2C0EC(v27);
    if (v19)
    {
      v29 = v19;
    }

    else
    {
      v29 = &_swiftEmptyDictionarySingleton;
    }

    _sSo16UIViewControllerC5JSAppE7present_7options8animated10completionyAB_SDys11AnyHashableVypGSbyycSgtFZ_0(v23, v29, 1, 0, 0);

    (*(v17 + 8))(v33, v34);

    v30 = v0->_object;

    return v30();
  }

  return result;
}

uint64_t sub_4F2F4(uint64_t a1, uint64_t a2, void *aBlock)
{
  v3[2] = _Block_copy(aBlock);
  if (a1)
  {
    v3[3] = sub_843AC();
    v3[4] = v6;
    if (a2)
    {
LABEL_3:
      v7 = sub_8434C();
      goto LABEL_6;
    }
  }

  else
  {
    v3[3] = 0;
    v3[4] = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v3[5] = v7;

  return _swift_task_switch(sub_4F3BC, 0, 0);
}

uint64_t sub_4F3BC()
{
  v1 = *(v0 + 40);
  v6 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_4F4C0;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000026, 0x800000000009C5E0, sub_58810, v2, &type metadata for () + 8);
}

uint64_t sub_4F4C0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_4F5F4, 0, 0);
}

uint64_t sub_4F5F4()
{
  v1 = v0[5];
  v2 = v0[2];

  v2[2](v2);
  _Block_release(v2);
  v3 = v0[1];

  return v3();
}

id AccountController.init()()
{
  ObjectType = swift_getObjectType();
  v13 = sub_8481C();
  v1 = *(v13 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v13);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_847FC();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_83DDC();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  *&v0[OBJC_IVAR___JSAAccountController_observers] = &_swiftEmptyArrayStorage;
  v12 = OBJC_IVAR___JSAAccountController_observerQueue;
  v9 = sub_280A4();
  v11[0] = "wController(for:with:)";
  v11[1] = v9;
  sub_83DAC();
  v16 = &_swiftEmptyArrayStorage;
  sub_57B38(&qword_CAD90, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_2805C(&qword_CA520, &unk_A1670);
  sub_28474(&qword_CADA0, &qword_CA520, &unk_A1670);
  sub_8496C();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *&v0[v12] = sub_8485C();
  v15.receiver = v0;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}

id sub_4F974()
{
  if (qword_CA440 != -1)
  {
    swift_once();
  }

  v1 = qword_CAD70;

  return v1;
}

id sub_4F9D4()
{
  if (qword_CA440 != -1)
  {
    swift_once();
  }

  v1 = qword_CAD70;

  return v1;
}

uint64_t sub_4FA50()
{
  v1 = *(*(sub_2805C(&qword_CA5E8, &qword_A0850) - 8) + 64) + 15;
  v0[24] = swift_task_alloc();
  v2 = sub_839CC();
  v0[25] = v2;
  v3 = *(v2 - 8);
  v0[26] = v3;
  v0[27] = *(v3 + 64);
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();

  return _swift_task_switch(sub_4FB58, 0, 0);
}

uint64_t sub_4FB58()
{
  v1 = [objc_opt_self() defaultBag];
  v2 = [v1 forgottenPassword];
  v0[30] = v2;

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_4FCBC;
  v3 = swift_continuation_init();
  v0[17] = sub_2805C(&qword_CAEA0, &qword_A1878);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_58778;
  v0[13] = &unk_B6178;
  v0[14] = v3;
  [v2 jsa_valueWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_4FCBC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_4FF90;
  }

  else
  {
    v3 = sub_4FDCC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_4FDCC()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v0 + 192);
  v7 = *(v0 + 168);

  sub_8396C();
  v8 = sub_8468C();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  (*(v5 + 16))(v2, v1, v4);
  sub_8464C();
  v9 = sub_8463C();
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v11 + v10, v2, v4);
  sub_2D4A4(0, 0, v6, &unk_A1880, v11);

  (*(v5 + 8))(v1, v4);
  v13 = *(v0 + 224);
  v12 = *(v0 + 232);
  v14 = *(v0 + 192);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_4FF90()
{
  v22 = v0;
  v1 = v0[30];
  v2 = v0[31];
  swift_willThrow();

  if (qword_CA478 != -1)
  {
    swift_once();
  }

  v3 = v0[31];
  v4 = sub_83D6C();
  sub_2C284(v4, qword_CB380);
  swift_errorRetain();
  v5 = sub_83D4C();
  v6 = sub_847AC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[31];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_3A93C(0x726F46496E65706FLL, 0xED00002928746F67, v21);
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[20];
    v13 = sub_84C5C();
    v15 = sub_3A93C(v13, v14, v21);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_0, v5, v6, "%s Unable to retrieve forgottenPassword from AMSBag due to %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v17 = v0[28];
  v16 = v0[29];
  v18 = v0[24];

  v19 = v0[1];

  return v19();
}

uint64_t sub_50200(uint64_t a1, uint64_t a2)
{
  v3 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_8468C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_2D4A4(0, 0, v6, a2, v8);
}

uint64_t sub_502EC()
{
  v1 = *(*(sub_2805C(&qword_CA5E8, &qword_A0850) - 8) + 64) + 15;
  v0[24] = swift_task_alloc();
  v2 = *(*(sub_2805C(&unk_CAE60, &qword_A1800) - 8) + 64) + 15;
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v3 = sub_839CC();
  v0[27] = v3;
  v4 = *(v3 - 8);
  v0[28] = v4;
  v0[29] = *(v4 + 64);
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();

  return _swift_task_switch(sub_50438, 0, 0);
}

uint64_t sub_50438()
{
  v1 = [objc_opt_self() defaultBag];
  v2 = [v1 p2ServiceTermsURL];
  v0[32] = v2;

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_5059C;
  v3 = swift_continuation_init();
  v0[17] = sub_2805C(&unk_CAE80, &qword_A1850);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_58778;
  v0[13] = &unk_B6100;
  v0[14] = v3;
  [v2 jsa_valueWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_5059C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_508E0;
  }

  else
  {
    v3 = sub_506AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_506AC()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 168);

  sub_843AC();
  sub_8399C();

  result = (*(v2 + 48))(v3, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v6 = *(v0 + 240);
    v7 = *(v0 + 248);
    v9 = *(v0 + 224);
    v8 = *(v0 + 232);
    v10 = *(v0 + 208);
    v11 = *(v0 + 216);
    v12 = *(v0 + 192);
    v19 = v12;
    v13 = *(v9 + 32);
    v13(v7);
    v14 = sub_8468C();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    (*(v9 + 16))(v6, v7, v11);
    sub_8464C();
    v15 = sub_8463C();
    v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = &protocol witness table for MainActor;
    (v13)(v17 + v16, v6, v11);
    sub_2D4A4(0, 0, v19, &unk_A1860, v17);

    (*(v9 + 8))(v7, v11);

    v18 = *(v0 + 8);

    return v18();
  }

  return result;
}

uint64_t sub_508E0()
{
  v35 = v0;
  v1 = v0[32];
  v2 = v0[33];
  swift_willThrow();

  if (qword_CA478 != -1)
  {
    swift_once();
  }

  v3 = v0[33];
  v4 = sub_83D6C();
  sub_2C284(v4, qword_CB380);
  swift_errorRetain();
  v5 = sub_83D4C();
  v6 = sub_847AC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[33];
    v8 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_3A93C(0xD000000000000018, 0x800000000009C900, v34);
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[20];
    v12 = sub_84C5C();
    v14 = sub_3A93C(v12, v13, v34);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_0, v5, v6, "%s Unable to retrieve p2ServiceTermsURL from AMSBag due to %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = v0[27];
  v16 = v0[28];
  v17 = v0[25];
  sub_8399C();
  result = (*(v16 + 48))(v17, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v19 = v0[33];

    v20 = v0[30];
    v21 = v0[31];
    v23 = v0[28];
    v22 = v0[29];
    v24 = v0[27];
    v25 = v0[24];
    v33 = v0[26];
    v32 = v25;
    v26 = *(v23 + 32);
    v26(v21);
    v27 = sub_8468C();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
    (*(v23 + 16))(v20, v21, v24);
    sub_8464C();
    v28 = sub_8463C();
    v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = &protocol witness table for MainActor;
    (v26)(v30 + v29, v20, v24);
    sub_2D4A4(0, 0, v32, &unk_A1860, v30);

    (*(v23 + 8))(v21, v24);

    v31 = v0[1];

    return v31();
  }

  return result;
}

uint64_t sub_50C94(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = sub_40E4C((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    sub_2805C(&qword_CA738, &qword_A1870);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return _swift_continuation_throwingResumeWithError(v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_50D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_8468C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_2D4A4(0, 0, v8, a4, v10);
}

Swift::Void __swiftcall AccountController.presentGiftViewController(for:_:_:)(Swift::String_optional a1, JSValue _, Swift::OpaquePointer_optional a3)
{
  rawValue = a3.value._rawValue;
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v8 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - v10;
  if (!object)
  {
    goto LABEL_6;
  }

  v12 = (object >> 56) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v12 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = sub_8468C();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2].super.isa = 0;
    v14[3].super.isa = 0;
    v14[4].super.isa = v3;
    v14[5].super.isa = countAndFlagsBits;
    v14[6].super.isa = object;
    v14[7].super.isa = rawValue;
    v14[8].super.isa = _.super.isa;

    v15 = v3;
    v16 = _.super.isa;
    sub_2D4A4(0, 0, v11, &unk_A16A8, v14);
  }

  else
  {
LABEL_6:
    v17 = [objc_opt_self() sharedInstance];
    v20 = sub_8437C();
    [v17 enqueueValueCall:_.super.isa arguments:0 file:v20 line:368];

    v18 = v20;
  }
}

uint64_t sub_51074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  return _swift_task_switch(sub_51098, 0, 0);
}

uint64_t sub_51098()
{
  v1 = *(v0 + 32);
  v6 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_5119C;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000024, 0x800000000009C5B0, sub_58814, v2, &type metadata for () + 8);
}

uint64_t sub_5119C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_512B4, 0, 0);
}

uint64_t sub_512B4()
{
  v1 = *(v0 + 40);
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_8437C();
  [v2 enqueueValueCall:v1 arguments:0 file:v3 line:374];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_51580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return _swift_task_switch(sub_515A4, 0, 0);
}

uint64_t sub_515A4()
{
  if ([*(v0 + 64) isString] && (v1 = objc_msgSend(*(v0 + 64), "toString")) != 0)
  {
    v2 = v1;
    v3 = sub_843AC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v0 + 96) = v5;
  v6 = *(v0 + 80);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v6;
  v8 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_516F8;

  return withCheckedContinuation<A>(isolation:function:_:)(v9, 0, 0, 0xD000000000000026, 0x800000000009C5E0, sub_58810, v7, &type metadata for () + 8);
}

uint64_t sub_516F8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return _swift_task_switch(sub_5182C, 0, 0);
}

uint64_t sub_5182C()
{
  v1 = v0[9];
  v2 = *&v1[OBJC_IVAR___JSAAccountController_observerQueue];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_57A08;
  *(v4 + 24) = v3;
  v0[6] = sub_5880C;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_290C0;
  v0[5] = &unk_B60D8;
  v5 = _Block_copy(v0 + 2);
  v6 = v0[7];
  v7 = v1;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[11];
    v10 = [objc_opt_self() sharedInstance];
    v11 = sub_8437C();
    [v10 enqueueValueCall:v9 arguments:0 file:v11 line:384];

    v12 = v0[1];

    return v12();
  }

  return result;
}

Swift::Void __swiftcall AccountController.viewAppleID(_:_:)(JSValue a1, Swift::OpaquePointer_optional a2)
{
  rawValue = a2.value._rawValue;
  v4 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_8468C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2].super.isa = 0;
  v9[3].super.isa = 0;
  v9[4].super.isa = rawValue;
  v9[5].super.isa = a1.super.isa;

  v10 = a1.super.isa;
  sub_2D4A4(0, 0, v7, &unk_A16C8, v9);
}

uint64_t sub_51C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_51CB0, 0, 0);
}

uint64_t sub_51CB0()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_51DA4;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000000009C880, sub_577F0, v2, &type metadata for () + 8);
}

uint64_t sub_51DA4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_51EBC, 0, 0);
}

uint64_t sub_51EBC()
{
  v1 = *(v0 + 24);
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_8437C();
  [v2 enqueueValueCall:v1 arguments:0 file:v3 line:412];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_51F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2805C(&qword_CAE70, &qword_A1820);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  v9 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = sub_8468C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  sub_8464C();

  v14 = sub_8463C();
  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v17 + v15, v8, v4);
  *(v17 + v16) = a2;
  sub_2D4A4(0, 0, v12, &unk_A1848, v17);
}

uint64_t sub_521A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_2805C(&qword_CAE70, &qword_A1820);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  v8 = *(*(sub_2805C(&unk_CAE60, &qword_A1800) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = sub_839CC();
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  sub_8464C();
  v5[13] = sub_8463C();
  v13 = sub_8460C();

  return _swift_task_switch(sub_52350, v13, v12);
}

uint64_t sub_52350()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  sub_843AC();
  sub_8399C();

  result = (*(v2 + 48))(v3, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0[8];
    v10 = v0[9];
    v11 = v0[7];
    v26 = v0[6];
    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[3];
    v25 = v0[2];

    v27 = v10;
    (*(v7 + 32))(v6, v9, v10);
    (*(v7 + 16))(v8, v6, v10);
    v15 = objc_allocWithZone(type metadata accessor for AccountPageViewController());
    v16 = sub_6B560(v8, 3, 0, 0);
    v17 = v11;
    (*(v12 + 16))(v11, v25, v13);
    v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v19 = swift_allocObject();
    (*(v12 + 32))(v19 + v18, v17, v13);
    v20 = &v16[OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish];
    v21 = *&v16[OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish];
    v22 = *&v16[OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish + 8];
    *v20 = sub_587E8;
    *(v20 + 1) = v19;
    sub_2C0EC(v21);
    if (v14)
    {
      v23 = v14;
    }

    else
    {
      v23 = &_swiftEmptyDictionarySingleton;
    }

    _sSo16UIViewControllerC5JSAppE7present_7options8animated10completionyAB_SDys11AnyHashableVypGSbyycSgtFZ_0(v16, v23, 1, 0, 0);

    (*(v7 + 8))(v6, v27);

    v24 = v0[1];

    return v24();
  }

  return result;
}

Swift::Void __swiftcall AccountController.signIn(_:)(JSValue a1)
{
  v3 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = [objc_allocWithZone(AMSAuthenticateOptions) init];
  [v7 setEnableAccountCreation:1];
  v8 = sub_8468C();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2].super.isa = 0;
  v9[3].super.isa = 0;
  v9[4].super.isa = v1;
  v9[5].super.isa = v7;
  v9[6].super.isa = a1.super.isa;
  v10 = v1;
  v11 = a1.super.isa;
  sub_2D4A4(0, 0, v6, &unk_A16D8, v9);
}

uint64_t sub_52834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_528D4;

  return sub_4C510(a5);
}

uint64_t sub_528D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 24);
  v9 = *v4;
  *(*v4 + 32) = v3;

  if (v3)
  {
    v10 = sub_52B44;
  }

  else
  {
    *(v7 + 40) = a3;
    *(v7 + 48) = a2;
    v10 = sub_52A08;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_52A08()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v4 = [objc_opt_self() sharedInstance];
  sub_2805C(&unk_CADB0, &unk_A16E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_A10E0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  isa = sub_8458C().super.isa;
  v7 = sub_8437C();
  [v4 enqueueValueCall:v3 arguments:isa file:v7 line:423];

  v8 = v0[1];

  return v8();
}

uint64_t sub_52B44()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = [objc_opt_self() sharedInstance];
  sub_2805C(&unk_CADB0, &unk_A16E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_A10E0;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 32) = 0x64656C696146;
  *(v4 + 40) = 0xE600000000000000;
  isa = sub_8458C().super.isa;
  v6 = sub_8437C();
  [v3 enqueueValueCall:v2 arguments:isa file:v6 line:425];

  v7 = v0[1];

  return v7();
}

Swift::Void __swiftcall AccountController.signOut(_:)(JSValue a1)
{
  v3 = [objc_opt_self() sharedProvider];
  v4 = [v3 activeStoreAccount];

  if (v4)
  {
    v5 = *&v1[OBJC_IVAR___JSAAccountController_observerQueue];
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_58824;
    *(v7 + 24) = v6;
    v24 = sub_5880C;
    v25 = v7;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_290C0;
    v23 = &unk_B5B60;
    v8 = _Block_copy(&aBlock);
    v9 = v1;

    dispatch_sync(v5, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v11 = [v4 bu_signOut];
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      v13[2].super.isa = v12;
      v13[3].super.isa = a1.super.isa;
      v24 = sub_545DC;
      v25 = v13;
      aBlock = _NSConcreteStackBlock;
      v21 = 1107296256;
      v22 = sub_4DA54;
      v23 = &unk_B5BD8;
      v14 = _Block_copy(&aBlock);
      v15 = a1.super.isa;

      [v11 addFinishBlock:v14];
      _Block_release(v14);
    }
  }

  else
  {
    v16 = [objc_opt_self() sharedInstance];
    sub_2805C(&unk_CADB0, &unk_A16E0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_A10E0;
    *(v17 + 56) = &type metadata for Bool;
    *(v17 + 32) = 1;
    isa = sub_8458C().super.isa;
    v19 = sub_8437C();
    [v16 enqueueValueCall:a1.super.isa arguments:isa file:v19 line:439];
  }
}

void sub_53188(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR___JSAAccountController_observerQueue);
    v9 = Strong;
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_577BC;
    *(v11 + 24) = v10;
    aBlock[4] = sub_5880C;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_290C0;
    aBlock[3] = &unk_B6010;
    v12 = _Block_copy(aBlock);
    v13 = v9;

    dispatch_sync(v8, v12);
    _Block_release(v12);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
    }

    else
    {
      v14 = [objc_opt_self() sharedInstance];
      sub_2805C(&unk_CADB0, &unk_A16E0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_A1630;
      *(v15 + 56) = &type metadata for Bool;
      *(v15 + 32) = a1 & 1;
      *(v15 + 88) = sub_2805C(&qword_CAE78, &qword_A1838);
      *(v15 + 64) = a2;
      swift_errorRetain();
      isa = sub_8458C().super.isa;
      v17 = sub_8437C();
      [v14 enqueueValueCall:a4 arguments:isa file:v17 line:436];
    }
  }
}

uint64_t sub_537C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_53868;

  return sub_4C510(a5);
}

uint64_t sub_53868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 24);
  v9 = *v4;
  *(*v4 + 32) = v3;

  if (v3)
  {
    v10 = sub_53AD8;
  }

  else
  {
    *(v7 + 40) = a3;
    *(v7 + 48) = a2;
    v10 = sub_5399C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_5399C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v4 = [objc_opt_self() sharedInstance];
  sub_2805C(&unk_CADB0, &unk_A16E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_A10E0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  isa = sub_8458C().super.isa;
  v7 = sub_8437C();
  [v4 enqueueValueCall:v3 arguments:isa file:v7 line:450];

  v8 = v0[1];

  return v8();
}

uint64_t sub_53AD8()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = [objc_opt_self() sharedInstance];
  sub_2805C(&unk_CADB0, &unk_A16E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_A10E0;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 32) = 0x64656C696146;
  *(v4 + 40) = 0xE600000000000000;
  isa = sub_8458C().super.isa;
  v6 = sub_8437C();
  [v3 enqueueValueCall:v2 arguments:isa file:v6 line:452];

  v7 = v0[1];

  return v7();
}

uint64_t sub_53CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a7;
  v10 = swift_task_alloc();
  *(v7 + 24) = v10;
  *v10 = v7;
  v10[1] = sub_53D6C;

  return sub_55C78(a4, a6);
}

uint64_t sub_53D6C()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return _swift_task_switch(sub_53E68, 0, 0);
}

uint64_t sub_53E68()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_8437C();
  [v2 enqueueValueCall:v1 arguments:0 file:v3 line:465];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_53FF4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_54070()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_38510;

  return sub_4FA50();
}

uint64_t sub_5411C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_38510;

  return sub_502EC();
}

uint64_t sub_541C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_54220(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_38510;

  return sub_51074(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_54300(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_38510;

  return sub_51580(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_543D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_38510;

  return sub_51C90(a1, v4, v5, v7, v6);
}

uint64_t sub_5449C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_38510;

  return sub_52834(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_54564()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5459C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_545E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_38510;

  return sub_537C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_546AC(uint64_t a1, SEL *a2)
{
  v4 = OBJC_IVAR___JSAAccountController_observers;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6 >> 62)
  {
    result = sub_84B0C();
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return result;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_84A6C();
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v9 respondsToSelector:*a2])
      {
        [v9 *a2];
      }

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_547D0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v28 = a4;
  v8 = sub_2805C(&qword_CAEB8, &qword_A18B8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v27 - v15;
  v17 = sub_8468C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  sub_8464C();

  v18 = a2;
  v19 = a3;
  v20 = sub_8463C();
  v21 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = v20;
  *(v23 + 3) = &protocol witness table for MainActor;
  *(v23 + 4) = v18;
  *(v23 + 5) = v19;
  (*(v9 + 32))(&v23[v21], v12, v8);
  v24 = &v23[v22];
  v25 = v27;
  *v24 = v28;
  *(v24 + 1) = v25;
  sub_2D4A4(0, 0, v16, &unk_A18C8, v23);
}

uint64_t sub_54A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = sub_2805C(&qword_CAEB8, &qword_A18B8);
  v8[13] = v9;
  v10 = *(v9 - 8);
  v8[14] = v10;
  v8[15] = *(v10 + 64);
  v8[16] = swift_task_alloc();
  sub_8464C();
  v8[17] = sub_8463C();
  v12 = sub_8460C();

  return _swift_task_switch(sub_54B2C, v12, v11);
}

uint64_t sub_54B2C()
{
  v1 = v0[17];

  v2 = [objc_opt_self() jsa_topMostViewControllerForWindow:0];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 topViewController];
    if (v4)
    {
      v5 = v4;

      v2 = v5;
    }
  }

  v6 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v27 = v0[12];
  v25 = v0[15];
  v26 = v0[11];
  v10 = v0[9];
  v9 = v0[10];
  v11 = [objc_allocWithZone(AMSUIAuthenticateTask) initWithRequest:v0[8] presentingViewController:v2];
  [v11 setDelegate:v10];
  v12 = [objc_opt_self() defaultBag];
  [v11 setBag:v12];

  v24 = [v11 performAuthentication];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = v6;
  v15 = v8;
  (*(v7 + 16))(v6, v9, v8);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = (v25 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v16, v14, v15);
  v19 = (v18 + v17);
  *v19 = v26;
  v19[1] = v27;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v13;
  v0[6] = sub_58648;
  v0[7] = v18;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_7BC10;
  v0[5] = &unk_B63F8;
  v20 = _Block_copy(v0 + 2);
  v21 = v0[7];

  [v24 addFinishBlock:v20];

  _Block_release(v20);

  v22 = v0[1];

  return v22();
}

uint64_t sub_54E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_54FF0(a2, a3, a1, a4, a5);
  }

  v11 = *(Strong + OBJC_IVAR___JSAAccountController_observerQueue);
  v18 = a5;
  v12 = Strong;
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_58710;
  *(v14 + 24) = v13;
  aBlock[4] = sub_5880C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_290C0;
  aBlock[3] = &unk_B6470;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  dispatch_sync(v11, v15);
  _Block_release(v15);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  a5 = v18;

  if ((v11 & 1) == 0)
  {
    return sub_54FF0(a2, a3, a1, a4, a5);
  }

  __break(1u);
  return result;
}

uint64_t sub_54FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_errorRetain();
    sub_2805C(&qword_CAEB8, &qword_A18B8);
    return sub_8461C();
  }

  else
  {
    if (a3)
    {
      v8 = [objc_opt_self() sharedProvider];
      v9 = [v8 currentStorefront];

      if (v9)
      {
        v10 = sub_843AC();
        v12 = v11;

        if (a5)
        {
          if (v10 != a4 || v12 != a5)
          {
            sub_84BEC();
          }
        }
      }
    }

    sub_2805C(&qword_CAEB8, &qword_A18B8);
    return sub_8462C();
  }
}

void sub_551A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() jsa_topMostViewControllerForWindow:0];
  v7 = [objc_allocWithZone(AMSUIAlertDialogTask) initWithRequest:a1 presentingViewController:v6];

  v8 = [v7 present];
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_7BC10;
  v10[3] = &unk_B5F20;
  v9 = _Block_copy(v10);

  [v8 addFinishBlock:v9];
  _Block_release(v9);
}

uint64_t sub_55394(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_38510;

  return v7();
}

uint64_t sub_5547C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2C958;

  return v8();
}

uint64_t sub_55564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_3EDCC(a3, v25 - v11);
  v13 = sub_8468C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_38328(v12, &qword_CA5E8, &qword_A0850);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_8467C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_8460C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_8442C() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_38328(a3, &qword_CA5E8, &qword_A0850);

    return v23;
  }

LABEL_8:
  sub_38328(a3, &qword_CA5E8, &qword_A0850);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

unint64_t sub_55854(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_84CCC();
  sub_8446C();
  v6 = sub_84D0C();

  return sub_559F4(a1, a2, v6);
}

unint64_t sub_558CC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_843AC();
  sub_84CCC();
  sub_8446C();
  v4 = sub_84D0C();

  return sub_55B74(a1, v4);
}

unint64_t sub_5595C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_849DC(*(v2 + 40));

  return sub_55AAC(a1, v4);
}

unint64_t sub_559F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_84BEC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_55AAC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_57760(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_849EC();
      sub_559A0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_55B74(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_843AC();
      v9 = v8;
      if (v7 == sub_843AC() && v9 == v10)
      {
        break;
      }

      v12 = sub_84BEC();

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

uint64_t sub_55C78(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_55C98, 0, 0);
}

uint64_t sub_55C98()
{
  if (qword_CA3D8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_55DB8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x726F662865707974, 0xEA0000000000293ALL, sub_3E18C, v2, &type metadata for URLParser.ParserURLType);
}

uint64_t sub_55DB8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_55ED0, 0, 0);
}

uint64_t sub_55ED0()
{
  v17 = v0;
  v1 = v0[2];
  if (qword_CA478 != -1)
  {
    swift_once();
  }

  v2 = sub_83D6C();
  sub_2C284(v2, qword_CB380);
  v3 = sub_83D4C();
  v4 = sub_847CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v0[3] = v1;
    v7 = sub_8441C();
    v9 = sub_3A93C(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Handling commerce URL: %s", v5, 0xCu);
    sub_371A8(v6);
  }

  v11 = v0[4];
  v10 = v0[5];
  v12 = swift_task_alloc();
  v0[8] = v12;
  v12[2] = v1;
  v12[3] = v11;
  v12[4] = v10;
  v13 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_560F4;

  return withCheckedContinuation<A>(isolation:function:_:)(v14, 0, 0, 0xD000000000000014, 0x800000000009C860, sub_57444, v12, &type metadata for () + 8);
}

uint64_t sub_560F4()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_58818, 0, 0);
}

unint64_t sub_5620C(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_84B0C();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = sub_84A6C();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v7 == a2)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_562F4(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_5620C(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_84B0C();
    }

    return *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_84B0C())
      {
        return v10;
      }
    }

    else if (v11 == *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v15 = sub_84A6C();
      goto LABEL_17;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_42;
    }

    v15 = *(v7 + 8 * v11 + 32);
    swift_unknownObjectRetain();
LABEL_17:
    swift_unknownObjectRelease();
    if (v15 != a2)
    {
      if (v10 != v11)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v3 = sub_84A6C();
          v16 = sub_84A6C();
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v17 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
          if (v10 >= v17)
          {
            goto LABEL_47;
          }

          if (v11 >= v17)
          {
            goto LABEL_48;
          }

          v3 = *(v7 + 32 + 8 * v10);
          v16 = *(v7 + 32 + 8 * v11);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_697DC(v7);
          v18 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v19 = *(&stru_20.cmd + 8 * v10 + (v7 & 0xFFFFFFFFFFFFFF8));
        *(&stru_20.cmd + 8 * v10 + (v7 & 0xFFFFFFFFFFFFFF8)) = v16;
        swift_unknownObjectRelease();
        if ((v7 & 0x8000000000000000) != 0 || v18)
        {
          v7 = sub_697DC(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;
        swift_unknownObjectRelease();
        *a1 = v7;
      }

      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_44;
      }
    }

    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return sub_84B0C();
}

uint64_t _s5JSApp17AccountControllerC04showb4ViewC04with__ySS_So7JSValueCSDys11AnyHashableVypGSgtF_0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v36 - v9;
  v11 = sub_2805C(&unk_CAE60, &qword_A1800);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v36 - v13;
  v15 = sub_839CC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(a1);
  v19 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v18);
  v22 = &v36 - v21;
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    sub_8399C();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      return sub_38328(v14, &unk_CAE60, &qword_A1800);
    }

    else
    {
      v25 = *(v16 + 32);
      v39 = v16 + 32;
      v40 = v25;
      v41 = a3;
      v25(v22, v14, v15);
      v44 = sub_8398C();
      v45 = v26;
      v42 = 0xD000000000000048;
      v43 = 0x800000000009C810;
      sub_3A8E8();
      v27 = sub_8494C();

      if (v27)
      {
        v28 = 4;
      }

      else
      {
        v28 = 0;
      }

      v38 = v28;
      v29 = sub_8468C();
      (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
      (*(v16 + 16))(v19, v22, v15);
      v30 = a4;
      v31 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v32 = v31 + v17;
      v37 = v10;
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      v40(v33 + v31, v19, v15);
      *(v33 + v32) = v38;
      *(v33 + (v32 & 0xFFFFFFFFFFFFFFF8) + 8) = v30;
      v34 = v41;
      *(v33 + (((v32 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) = v41;

      v35 = v34;
      sub_2D4A4(0, 0, v37, &unk_A1810, v33);

      return (*(v16 + 8))(v22, v15);
    }
  }

  return result;
}

uint64_t sub_568E0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_83D9C();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_83DDC();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_280A4();
  v14 = sub_8482C();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  aBlock[4] = sub_57204;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_283C0;
  aBlock[3] = &unk_B5EF8;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  sub_83DAC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_57B38(&qword_CA538, &type metadata accessor for DispatchWorkItemFlags);
  sub_2805C(&unk_CAE50, &unk_A0420);
  sub_28474(&qword_CA540, &unk_CAE50, &unk_A0420);
  sub_8496C();
  sub_8484C();
  _Block_release(v16);

  (*(v20 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v19);
}

uint64_t sub_56BE8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_56C28()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_56C78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_56CC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_56D18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_56D54()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_38510;

  return sub_4F2F4(v2, v3, v5);
}

uint64_t sub_56E18()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_56E50(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_38510;

  return sub_3DF8C(a1, v5);
}

uint64_t sub_56F08(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2C958;

  return sub_3DF8C(a1, v5);
}

uint64_t sub_56FC0()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_57010()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_38510;

  return sub_4E52C(v2, v3, v5);
}

uint64_t sub_570D0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_57110()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_38510;

  return sub_4CC58(v2, v4, v3);
}

uint64_t sub_571C4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_57210()
{
  v1 = sub_839CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_57300(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_839CC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);
  v11 = *(v1 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_38510;

  return sub_53CCC(a1, v8, v9, v1 + v6, v12, v10, v11);
}

uint64_t sub_57450()
{
  v1 = sub_839CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_2805C(&qword_CAE70, &qword_A1820);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_575C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_839CC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_2805C(&qword_CAE70, &qword_A1820) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_38510;

  return sub_4B760(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

uint64_t sub_577F8()
{
  v1 = sub_2805C(&qword_CAE70, &qword_A1820);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_578DC(uint64_t a1)
{
  v4 = *(sub_2805C(&qword_CAE70, &qword_A1820) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_38510;

  return sub_521A8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_57A48(uint64_t a1)
{
  v4 = *(sub_839CC() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_38510;

  return sub_4AB5C(a1, v6, v7, v1 + v5);
}

uint64_t sub_57B38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_57B80()
{
  v1 = sub_839CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_57C44(uint64_t a1)
{
  v4 = *(sub_839CC() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2C958;

  return sub_4AB5C(a1, v6, v7, v1 + v5);
}

uint64_t sub_57D38(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2805C(&qword_CAE70, &qword_A1820) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_38510;

  return sub_4ED18(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_57E7C()
{
  v1 = sub_2805C(&qword_CAE70, &qword_A1820);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_57F68(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2805C(&qword_CAE70, &qword_A1820) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_38510;

  return sub_4DF58(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_580AC()
{
  v1 = sub_2805C(&qword_CAE70, &qword_A1820);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_58144()
{
  v1 = *(sub_2805C(&qword_CAE70, &qword_A1820) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_8462C();
}

uint64_t sub_581B0()
{
  v1 = sub_2805C(&qword_CAEA8, &qword_A18A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_58280(char a1, uint64_t a2)
{
  v5 = *(*(sub_2805C(&qword_CAEA8, &qword_A18A8) - 8) + 80);
  v6 = *(v2 + 16);

  sub_4D6F4(a1, a2);
}

uint64_t sub_58340()
{
  v1 = sub_2805C(&qword_CAEB8, &qword_A18B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_58438(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2805C(&qword_CAEB8, &qword_A18B8) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_38510;

  return sub_54A1C(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_5858C()
{
  v1 = sub_2805C(&qword_CAEB8, &qword_A18B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_58648(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2805C(&qword_CAEB8, &qword_A18B8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);

  return sub_54E24(a1, a2, v2 + v6, v10, v11);
}

uint64_t sub_58864()
{
  sub_2805C(&qword_CAFC0, &qword_A1918);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_A18D0;
  v1 = sub_83C3C();
  v2 = sub_592DC(&qword_CAFC8, &type metadata accessor for BooksAppleAccountFeatureFlag);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_83BEC();
  v4 = sub_592DC(&qword_CAFD0, &type metadata accessor for BooksFeatureFlag);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_83BFC();
  result = sub_592DC(&qword_CAFD8, &type metadata accessor for BooksUIKitFeatureFlag);
  *(v0 + 64) = v5;
  *(v0 + 72) = result;
  off_CAF80 = v0;
  return result;
}

uint64_t sub_58984()
{
  if (qword_CA448 != -1)
  {
    swift_once();
  }

  v0 = off_CAF80;
  v1 = *(&dword_10 + off_CAF80);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = &_swiftEmptyArrayStorage;

    sub_3B274(0, v1, 0);
    v3 = 8;
    v2 = &_swiftEmptyArrayStorage;
    do
    {
      v14 = *&v0[v3];
      sub_83C2C();
      v4 = sub_84A5C();
      v15 = v2;
      v7 = *(v2 + 2);
      v6 = *(v2 + 3);
      if (v7 >= v6 >> 1)
      {
        v9 = v4;
        v10 = v5;
        sub_3B274((v6 > 1), v7 + 1, 1);
        v5 = v10;
        v4 = v9;
        v2 = v15;
      }

      *(v2 + 2) = v7 + 1;
      v8 = &v2[8 * v7];
      *(v8 + 4) = v4;
      *(v8 + 5) = v5;
      *(v8 + 3) = v14;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  if (*(v2 + 2))
  {
    sub_2805C(&qword_CAFB8, &unk_A1908);
    v11 = sub_84B3C();
  }

  else
  {
    v11 = &_swiftEmptyDictionarySingleton;
  }

  v15 = v11;

  sub_58C18(v12, 1, &v15);

  off_CAF88 = v15;
  return result;
}

uint64_t sub_58C18(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  LOBYTE(v6) = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v38 = *(a1 + 48);
  v9 = *a3;

  v10 = sub_55854(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_6EE94(v15, v6 & 1);
    v17 = *a3;
    v10 = sub_55854(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_84C2C();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_6E798();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_2805C(&qword_CA738, &qword_A1870);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  *(v21[7] + 16 * v10) = v38;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_84A4C(30);
    v39._object = 0x800000000009CB40;
    v39._countAndFlagsBits = 0xD00000000000001BLL;
    sub_844AC(v39);
    sub_84AEC();
    v40._countAndFlagsBits = 39;
    v40._object = 0xE100000000000000;
    sub_844AC(v40);
    result = sub_84AFC();
    __break(1u);
    return result;
  }

  v21[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 80);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v38 = *v6;
      v26 = *a3;

      v27 = sub_55854(v8, v7);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_6EE94(v31, 1);
        v32 = *a3;
        v27 = sub_55854(v8, v7);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v8;
      v35[1] = v7;
      *(v34[7] + 16 * v27) = v38;
      v36 = v34[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v37;
      v6 += 2;
      if (v4 == v25)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_58FA4(int a1, int a2, id a3)
{
  v4 = 0x736B6F6F42;
  if ([a3 isString] && (v5 = objc_msgSend(a3, "toString")) != 0)
  {
    v6 = v5;
    v4 = sub_843AC();
    v8 = v7;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (qword_CA450 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = off_CAF88;
  if (*(&dword_10 + off_CAF88) && (v10 = sub_55854(v4, v8), (v11 & 1) != 0))
  {
    v24 = *(*&stru_20.segname[v9 + 16] + 16 * v10);
    swift_endAccess();

    v12 = v24;
    v13 = sub_848DC();
    v14 = *(v13 - 8);
    v15 = *(v14 + 64);
    __chkstk_darwin(v13);
    v17 = &v25[-2] - v16;

    sub_83C1C();
    v18 = *(v12 - 8);
    if ((*(v18 + 48))(v17, 1, v12) != 1)
    {
      *&v25[3] = v24;
      v21 = sub_382A8(v25);
      (*(v18 + 32))(v21, v17, v12);
      sub_371F4(v25, v26);
      v22 = v26[4];
      sub_40E4C(v26, v26[3]);
      v23 = *(v22 + 8);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_83C0C();
      swift_getWitnessTable();
      v19 = sub_8455C();
      sub_371A8(v26);
      return v19 & 1;
    }

    (*(v14 + 8))(v17, v13);
  }

  else
  {
    swift_endAccess();
  }

  v19 = 0;
  return v19 & 1;
}

uint64_t sub_592DC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_5936C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_843AC();
  v10 = v9;
  v11 = sub_843AC();
  sub_59650(a1, v8, v10, v11, v12, a6);
  v14 = v13;

  if (v14)
  {
    v15 = sub_8437C();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t sub_59458(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74754F6C6C657073 && a2 == 0xE800000000000000 || (sub_84BEC() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 1819047270 && a2 == 0xE400000000000000 || (sub_84BEC() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x74726F6873 && a2 == 0xE500000000000000 || (sub_84BEC() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x6665697262 && a2 == 0xE500000000000000 || (sub_84BEC() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x6169766572626261 && a2 == 0xEB00000000646574 || (sub_84BEC() & 1) != 0)
  {
    return 1;
  }

  if (a1 != 0x6E6F697469736F70 || a2 != 0xEA00000000006C61)
  {
    sub_84BEC();
  }

  return 0;
}

uint64_t sub_59650(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_2805C(&qword_CB008, &unk_A1950);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_83ABC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_83AAC();

  sub_83A5C();
  v19 = sub_83A7C();
  (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  sub_83A9C();
  v20 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v20 setAllowedUnits:a6];
  [v20 setUnitsStyle:{sub_59458(a4, a5)}];
  isa = sub_83A8C().super.isa;
  [v20 setCalendar:isa];

  v22 = [v20 stringFromTimeInterval:a1];
  if (v22)
  {
    v23 = v22;
    v24 = sub_843AC();

    (*(v15 + 8))(v18, v14);
  }

  else
  {
    (*(v15 + 8))(v18, v14);

    return 0;
  }

  return v24;
}

id static ProcessEnvironment.current.getter()
{
  if (qword_CA458 != -1)
  {
    swift_once();
  }

  v1 = qword_CB010;

  return v1;
}

unint64_t ProcessEnvironmentVariant.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_59958@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id sub_59974()
{
  result = [objc_allocWithZone(type metadata accessor for ProcessEnvironment()) init];
  qword_CB010 = result;
  return result;
}

id ProcessEnvironment.init()()
{
  *&v0[OBJC_IVAR___JSAProcessEnvironment__variant] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessEnvironment();
  return objc_msgSendSuper2(&v2, "init");
}

void sub_59AD0()
{
  v1 = v0;
  v2 = sub_83E0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_280A4();
  *v6 = sub_8482C();
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = sub_83E2C();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v8 = [objc_opt_self() processInfo];
    v9 = [v8 environment];

    v10 = sub_8434C();
    if (*(v10 + 16))
    {
      sub_55854(0xD00000000000001BLL, 0x800000000009CC80);
      v12 = v11;

      if (v12)
      {
        v13 = 2;
LABEL_10:
        *(v1 + OBJC_IVAR___JSAProcessEnvironment__variant) = v13;
        return;
      }
    }

    else
    {
    }

    v14 = _sSo13UIApplicationC5JSAppE20sharedIfNotExtensionABSgvgZ_0();
    v13 = 0;
    if (v14)
    {
      v15 = v14;
      v16 = [v14 launchedToTest];

      if (v16)
      {
        v13 = 1;
      }
    }

    goto LABEL_10;
  }

  __break(1u);
}

id ProcessEnvironment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessEnvironment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_59D4C()
{
  result = qword_CB020;
  if (!qword_CB020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CB020);
  }

  return result;
}

id Package.__allocating_init(jetPack:name:isBundled:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  sub_38138(a1, &v9[OBJC_IVAR___JSAPackage_jetPack]);
  v10 = &v9[OBJC_IVAR___JSAPackage_nameForJSContext];
  *v10 = a2;
  v10[1] = a3;
  v9[OBJC_IVAR___JSAPackage_isBundled] = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, "init");
  sub_3819C(a1);
  return v11;
}

uint64_t sub_59ED4()
{
  v0 = sub_83D9C();
  v25 = *(v0 - 8);
  v26 = v0;
  v1 = *(v25 + 64);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_83DDC();
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = *(v23 + 64);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2805C(&qword_CA740, &qword_A0F60);
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  result = [objc_opt_self() isInternalBuild];
  if (result)
  {
    result = Package.isSupported.getter();
    if ((result & 1) == 0)
    {
      if (qword_CA410 != -1)
      {
        swift_once();
      }

      v14 = sub_2C284(v8, qword_CACA0);
      v15 = v9[2];
      v15(v12, v14, v8);
      sub_83BAC();
      v16 = v9[1];
      v16(v12, v8);
      result = v28;
      if (v28)
      {

        v15(v12, v14, v8);
        sub_83BAC();
        v16(v12, v8);
        v17 = v28;
        if (!v28)
        {
          goto LABEL_10;
        }

        v18 = aBlock;

        v19 = HIBYTE(v17) & 0xF;
        if ((v17 & 0x2000000000000000) == 0)
        {
          v19 = v18 & 0xFFFFFFFFFFFFLL;
        }

        if (v19)
        {
LABEL_10:
          sub_280A4();
          v20 = sub_8482C();
          v31 = sub_5C814;
          v32 = 0;
          aBlock = _NSConcreteStackBlock;
          v28 = 1107296256;
          v29 = sub_283C0;
          v30 = &unk_B64C8;
          v21 = _Block_copy(&aBlock);
          sub_83DAC();
          aBlock = &_swiftEmptyArrayStorage;
          sub_5CBB4(&qword_CA538, &type metadata accessor for DispatchWorkItemFlags);
          sub_2805C(&unk_CAE50, &unk_A0420);
          sub_5CBFC();
          v22 = v26;
          sub_8496C();
          sub_8484C();
          _Block_release(v21);

          (*(v25 + 8))(v3, v22);
          return (*(v23 + 8))(v7, v24);
        }
      }
    }
  }

  return result;
}

uint64_t Package.version.getter()
{
  type metadata accessor for BooksJetPackResourceBundle();
  sub_5CBB4(&qword_CA768, type metadata accessor for BooksJetPackResourceBundle);
  result = sub_83FCC();
  if (!v1)
  {
    return 0x302E302E30;
  }

  return result;
}

uint64_t Package.isSupported.getter()
{
  type metadata accessor for BooksJetPackResourceBundle();
  sub_5CBB4(&qword_CA768, type metadata accessor for BooksJetPackResourceBundle);
  sub_83FCC();
  sub_3A8E8();
  v0 = sub_8494C();

  if (v0)
  {
    goto LABEL_11;
  }

  v1 = sub_83FCC();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 0x302E302E30;
    v3 = 0xE500000000000000;
  }

  if (v1 == 0x302E302E30 && v3 == 0xE500000000000000)
  {

LABEL_11:
    v5 = 1;
    return v5 & 1;
  }

  v5 = sub_84BEC();

  return v5 & 1;
}

uint64_t Package.nameForJSContext.getter()
{
  v1 = *(v0 + OBJC_IVAR___JSAPackage_nameForJSContext);
  v2 = *(v0 + OBJC_IVAR___JSAPackage_nameForJSContext + 8);

  return v1;
}

uint64_t sub_5A5AC()
{
  v0 = sub_2805C(&unk_CAE60, &qword_A1800);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_839CC();
  sub_38490(v4, qword_CEEC8);
  v5 = sub_2C284(v4, qword_CEEC8);
  sub_8399C();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id Package.init(jetPack:name:isBundled:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  sub_38138(a1, &v4[OBJC_IVAR___JSAPackage_jetPack]);
  v10 = &v4[OBJC_IVAR___JSAPackage_nameForJSContext];
  *v10 = a2;
  v10[1] = a3;
  v4[OBJC_IVAR___JSAPackage_isBundled] = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "init");
  sub_3819C(a1);
  return v11;
}

uint64_t Package.metadata(withName:)()
{
  v1 = sub_2805C(&qword_CA7A8, &qword_A0FE0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v13[-v3];
  v5 = sub_83EAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + OBJC_IVAR___JSAPackage_jetPack);
  sub_83CEC();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_38328(v4, &qword_CA7A8, &qword_A0FE0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v12 = sub_83E8C();
    (*(v6 + 8))(v9, v5);
    return v12;
  }
}

uint64_t Package.data(atPath:)(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  v34 = sub_8390C();
  v32 = *(v34 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v34);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_839CC();
  v31 = *(v35 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin(v35);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2805C(&qword_CA7A8, &qword_A0FE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = sub_83EAC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_8405C();
  v37 = *(v17 - 8);
  v38 = v17;
  v18 = *(v37 + 64);
  __chkstk_darwin(v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (v2 + OBJC_IVAR___JSAPackage_jetPack);

  sub_8406C();
  v22 = *v21;
  sub_83CEC();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_38328(v11, &qword_CA7A8, &qword_A0FE0);
    v23 = *(type metadata accessor for BooksJetPackResourceBundle() + 20);
    v39 = sub_8404C();
    v40 = v24;
    v25 = v32;
    v26 = v34;
    (*(v32 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v34);
    sub_3A8E8();
    v27 = v33;
    sub_839AC();
    (*(v25 + 8))(v5, v26);

    v28 = sub_839DC();
    (*(v31 + 8))(v27, v35);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v28 = sub_83E9C();
    (*(v13 + 8))(v16, v12);
  }

  (*(v37 + 8))(v20, v38);
  return v28;
}

void *sub_5AF90(uint64_t a1)
{
  v40 = a1;
  v37 = sub_8390C();
  v35 = *(v37 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v37);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_839CC();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  __chkstk_darwin(v4);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2805C(&qword_CA7A8, &qword_A0FE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  v11 = sub_83EAC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_8405C();
  v16 = *(v41 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v41);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v1 + OBJC_IVAR___JSAPackage_jetPack);

  sub_8406C();
  v21 = *v20;
  sub_83CEC();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_38328(v10, &qword_CA7A8, &qword_A0FE0);
    v22 = *(type metadata accessor for BooksJetPackResourceBundle() + 20);
    v42 = sub_8404C();
    v43 = v23;
    v24 = v34;
    v25 = v35;
    v26 = v37;
    (*(v35 + 104))(v34, enum case for URL.DirectoryHint.inferFromPath(_:), v37);
    sub_3A8E8();
    v27 = v36;
    sub_839AC();
    (*(v25 + 8))(v24, v26);

    v28 = sub_839DC();
    v30 = v29;
    (*(v38 + 8))(v27, v39);
    (*(v16 + 8))(v19, v41);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v28 = sub_83E9C();
    v30 = v31;
    (*(v12 + 8))(v15, v11);
    (*(v16 + 8))(v19, v41);
    if (v30 >> 60 == 15)
    {
      return 0;
    }
  }

  return sub_5B460(v28, v30);
}

void *sub_5B460(uint64_t a1, unint64_t a2)
{
  v4 = sub_83A2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_3BB74(a1, a2);
      return &_swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_5CA04(v11, 0);
      v15 = sub_839EC();
      sub_3BB74(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

Swift::String_optional __swiftcall Package.string(atPath:)(Swift::String atPath)
{
  countAndFlagsBits = atPath._countAndFlagsBits;
  v2 = sub_843EC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v44 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_8390C();
  v46 = *(v48 - 8);
  v5 = *(v46 + 64);
  __chkstk_darwin(v48);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_839CC();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  __chkstk_darwin(v7);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2805C(&qword_CA7A8, &qword_A0FE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  v14 = sub_83EAC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_8405C();
  v19 = *(v52 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v52);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = (v1 + OBJC_IVAR___JSAPackage_jetPack);

  sub_8406C();
  v24 = *v23;
  sub_83CEC();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_38328(v13, &qword_CA7A8, &qword_A0FE0);
    v25 = *(type metadata accessor for BooksJetPackResourceBundle() + 20);
    v53 = sub_8404C();
    v54 = v26;
    v27 = v45;
    v28 = v46;
    v29 = v48;
    (*(v46 + 104))(v45, enum case for URL.DirectoryHint.inferFromPath(_:), v48);
    sub_3A8E8();
    v30 = v47;
    sub_839AC();
    (*(v28 + 8))(v27, v29);

    v31 = sub_839DC();
    v36 = v35;
    v37 = v31;
    (*(v49 + 8))(v30, v50);
    (*(v19 + 8))(v22, v52);
LABEL_6:
    v39 = v37;
    v53 = v37;
    v54 = v36;
    sub_843DC();
    sub_5C7C0();
    v40 = sub_843BC();
    v42 = v41;
    sub_3BB74(v39, v36);
    v34 = v42;
    v33 = v40;
    goto LABEL_7;
  }

  (*(v15 + 32))(v18, v13, v14);
  v32 = sub_83E9C();
  v36 = v38;
  v37 = v32;
  (*(v15 + 8))(v18, v14);
  (*(v19 + 8))(v22, v52);
  if (v36 >> 60 != 15)
  {
    goto LABEL_6;
  }

  v33 = 0;
  v34 = 0;
LABEL_7:
  result.value._object = v34;
  result.value._countAndFlagsBits = v33;
  return result;
}

void *Package.dir(atPath:)()
{
  v0 = sub_8405C();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;

  sub_8406C();
  v8 = BooksJetPackResourceBundle.contentsOfDirectory(atPath:)(v7);
  v26 = v1[1];
  v27 = v1 + 1;
  v26(v7, v0);
  v9 = v8[2];
  if (v9)
  {
    v28 = &_swiftEmptyArrayStorage;
    sub_3B254(0, v9, 0);
    v11 = v1[2];
    v10 = v1 + 2;
    v12 = v28;
    v13 = *(v10 + 64);
    v22 = v8;
    v14 = v8 + ((v13 + 32) & ~v13);
    v23 = v10[7];
    v24 = v11;
    v25 = v10;
    do
    {
      v24(v5, v14, v0);
      v15 = sub_8404C();
      v17 = v16;
      v26(v5, v0);
      v28 = v12;
      v19 = v12[2];
      v18 = v12[3];
      if (v19 >= v18 >> 1)
      {
        sub_3B254((v18 > 1), v19 + 1, 1);
        v12 = v28;
      }

      v12[2] = v19 + 1;
      v20 = &v12[2 * v19];
      v20[4] = v15;
      v20[5] = v17;
      v14 += v23;
      --v9;
    }

    while (v9);
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return v12;
}

uint64_t Package.allLocalizationPaths.getter()
{
  result = Package.dir(atPath:)();
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = result + 40;
    v14 = &_swiftEmptyArrayStorage;
    v13 = result + 40;
    do
    {
      v5 = (v4 + 16 * v3);
      v6 = v3;
      while (1)
      {
        if (v6 >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v8 = *(v5 - 1);
        v7 = *v5;
        v3 = v6 + 1;
        sub_3A8E8();

        if (sub_8494C())
        {
          break;
        }

        v5 += 2;
        ++v6;
        if (v2 == v3)
        {
          goto LABEL_15;
        }
      }

      v9 = v14;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_3B254(0, v14[2] + 1, 1);
        v9 = v14;
      }

      v11 = v9[2];
      v10 = v9[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_3B254((v10 > 1), v11 + 1, 1);
        v9 = v14;
      }

      v9[2] = v11 + 1;
      v14 = v9;
      v12 = &v9[2 * v11];
      v12[4] = v8;
      v12[5] = v7;
      v4 = v13;
    }

    while (v2 - 1 != v6);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

LABEL_15:

  return v14;
}

Class sub_5C140(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5.super.isa = sub_8458C().super.isa;

  return v5.super.isa;
}

void Package.allLocales.getter()
{
  v0 = Package.allLocalizationPaths.getter();
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_3B254(0, v1, 0);
    v2 = 0;
    v3 = (v0 + 40);
    while (v2 < *(v0 + 16))
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      v6 = sub_8437C();
      v7 = [v6 lastPathComponent];
      if (!v7)
      {
        goto LABEL_11;
      }

      v8 = v7;

      v9 = [v8 stringByDeletingPathExtension];
      v10 = sub_843AC();
      v12 = v11;

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_3B254((v13 > 1), v14 + 1, 1);
      }

      ++v2;
      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[2 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v12;
      v3 += 2;
      if (v1 == v2)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_8:
  }
}

Swift::String __swiftcall Package.localizationPath(forLocale:)(Swift::String forLocale)
{
  object = forLocale._object;
  countAndFlagsBits = forLocale._countAndFlagsBits;
  v3 = objc_opt_self();
  Package.allLocales.getter();
  isa = sub_8458C().super.isa;

  sub_2805C(&qword_CA8A0, &qword_A1CA0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_A10E0;
  *(v5 + 32) = countAndFlagsBits;
  *(v5 + 40) = object;

  v6 = sub_8458C().super.isa;

  v7 = [v3 preferredLocalizationsFromArray:isa forPreferences:v6];

  sub_845AC();
  v8 = Package.allLocalizationPaths.getter();
  v10 = v8;
  v11 = *(v8 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v8 + 40);
    while (v12 < *(v10 + 16))
    {
      v15 = *(v13 - 1);
      v14 = *v13;

      v18._countAndFlagsBits = sub_845BC();
      sub_844AC(v18);

      v19._countAndFlagsBits = 46;
      v19._object = 0xE100000000000000;
      sub_844AC(v19);
      sub_3A8E8();
      v16 = sub_8494C();

      if (v16)
      {
        goto LABEL_7;
      }

      ++v12;
      v13 += 2;
      if (v11 == v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v15 = 0;
    v14 = 0xE000000000000000;
LABEL_7:

    v8 = v15;
    v9 = v14;
  }

  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

Swift::Void __swiftcall Package.startEviction()()
{
  BooksJetPackResourceBundle.evict()();
  if (v0)
  {
    if (qword_CA4A0 != -1)
    {
      swift_once();
    }

    v1 = sub_83D6C();
    sub_2C284(v1, qword_CB3F8);
    swift_errorRetain();
    oslog = sub_83D4C();
    v2 = sub_847AC();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&dword_0, oslog, v2, "In-memory JetPack eviction failed: %@", v3, 0xCu);
      sub_38328(v4, &qword_CA760, &qword_A0F80);
    }

    else
    {
    }
  }
}

unint64_t sub_5C7C0()
{
  result = qword_CB050;
  if (!qword_CB050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CB050);
  }

  return result;
}

uint64_t sub_5C814()
{
  v0 = sub_8437C();
  v1 = sub_8437C();
  v2 = [objc_opt_self() alertControllerWithTitle:v0 message:v1 preferredStyle:1];

  v3 = sub_8437C();
  v4 = [objc_opt_self() actionWithTitle:v3 style:0 handler:0];

  [v2 addAction:v4];
  v5 = sub_42A60(&_swiftEmptyArrayStorage);
  _sSo16UIViewControllerC5JSAppE7present_7options8animated10completionyAB_SDys11AnyHashableVypGSbyycSgtFZ_0(v2, v5, 1, 0, 0);
}

void *sub_5CA04(uint64_t a1, uint64_t a2)
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

  sub_2805C(&qword_CA8C0, &unk_A10B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t type metadata accessor for Package()
{
  result = qword_CB080;
  if (!qword_CB080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5CACC()
{
  result = type metadata accessor for BooksJetPackResourceBundle();
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

uint64_t sub_5CB9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5CBB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_5CBFC()
{
  result = qword_CA540;
  if (!qword_CA540)
  {
    sub_280F0(&unk_CAE50, &unk_A0420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA540);
  }

  return result;
}

id sub_5CD30()
{
  v1 = *&v0[OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA222HotReloadStatusHUDView_activityIndicatorView];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  [v0 frame];
  v6 = (CGRectGetHeight(v13) - v5) * 0.5;
  [v1 setFrame:{10.0, v6, v3, v5}];
  v14.origin.x = 10.0;
  v14.origin.y = v6;
  v14.size.width = v3;
  v14.size.height = v5;
  v7 = CGRectGetMaxY(v14) + 10.0;
  [v0 frame];
  v9 = v8 + -10.0 - v7;
  [v0 frame];
  v10 = *&v0[OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA222HotReloadStatusHUDView_label];

  return [v10 setFrame:{v7, 0.0, v9}];
}

char *sub_5CE34(double a1, double a2, double a3, double a4)
{
  v9 = [objc_allocWithZone(UIActivityIndicatorView) initWithFrame:{a1, a2, 50.0, 50.0}];
  *&v4[OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA222HotReloadStatusHUDView_activityIndicatorView] = v9;
  v10 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  *&v4[OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA222HotReloadStatusHUDView_label] = v10;
  v30.receiver = v4;
  v30.super_class = type metadata accessor for HotReloadStatusHUDView();
  v11 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 secondarySystemBackgroundColor];
  [v13 setBackgroundColor:v14];

  v15 = [v13 layer];
  [v15 setCornerRadius:15.0];

  v16 = [v13 layer];
  v17 = [v12 blackColor];
  v18 = [v17 CGColor];

  [v16 setShadowColor:v18];
  v19 = [v13 layer];
  [v19 setShadowOffset:{0.0, 1.0}];

  v20 = [v13 layer];
  [v20 setShadowRadius:10.0];

  v21 = [v13 layer];
  LODWORD(v22) = 0.25;
  [v21 setShadowOpacity:v22];

  v23 = OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA222HotReloadStatusHUDView_activityIndicatorView;
  [*&v13[OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA222HotReloadStatusHUDView_activityIndicatorView] startAnimating];
  [v13 addSubview:*&v13[v23]];
  v24 = OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA222HotReloadStatusHUDView_label;
  v25 = *&v13[OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA222HotReloadStatusHUDView_label];
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 boldSystemFontOfSize:18.0];
  [v27 setFont:v28];

  [*&v13[v24] setAdjustsFontSizeToFitWidth:1];
  [v13 addSubview:*&v13[v24]];

  return v13;
}

void sub_5D258()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for HotReloadStatusHUDViewController();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v1 = [objc_allocWithZone(type metadata accessor for HotReloadStatusHUDView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_hudView;
  v3 = *&v0[OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_hudView];
  *&v0[OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_hudView] = v1;
  v4 = v1;

  if (v4)
  {
    v5 = *&v4[OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA222HotReloadStatusHUDView_label];
    if (*&v0[OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_text + 8])
    {
      v6 = *&v0[OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_text];
      v7 = *&v0[OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_text + 8];

      v8 = sub_8437C();
    }

    else
    {
      v8 = 0;
    }

    [v5 setText:v8];
  }

  v9 = [v0 view];
  if (v9)
  {
    if (*&v0[v2])
    {
      v10 = v9;
      [v9 addSubview:?];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_5D3E0()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for HotReloadStatusHUDViewController();
  objc_msgSendSuper2(&v21, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_hudView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v22.origin.x = v6;
      v22.origin.y = v8;
      v22.size.width = v10;
      v22.size.height = v12;
      Width = CGRectGetWidth(v22);
      v14 = v2;
      [v14 layoutMargins];
      v16 = Width - v15;
      [v14 layoutMargins];
      if (v16 - v17 <= 330.0)
      {
        v18 = v16 - v17;
      }

      else
      {
        v18 = 330.0;
      }

      [v14 layoutMargins];
      v20 = v19;

      [v14 setFrame:{(Width - v18) * 0.5, v20 + 5.0, v18, 60.0}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_5D774(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA224HotReloadStatusHUDWindow_hudViewController);
  v4 = (v3 + OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_text);
  v5 = *(v3 + OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_text + 8);
  *v4 = a1;
  v4[1] = a2;

  v6 = *(v3 + OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA232HotReloadStatusHUDViewController_hudView);
  if (v6)
  {
    v7 = *&v6[OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA222HotReloadStatusHUDView_label];
    if (v4[1])
    {
      v8 = *v4;
      v9 = v6;

      v11 = sub_8437C();
    }

    else
    {
      v10 = v6;
      v11 = 0;
    }

    [v7 setText:v11];
  }
}

char *sub_5D860(void *a1)
{
  type metadata accessor for HotReloadStatusHUDViewController();
  *&v1[OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA224HotReloadStatusHUDWindow_hudViewController] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17.receiver = v1;
  v17.super_class = type metadata accessor for HotReloadStatusHUDWindow();
  v3 = objc_msgSendSuper2(&v17, "initWithWindowScene:", a1);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v5 setBounds:{v8, v10, v12, v14}];
  [v5 setRootViewController:*&v5[OBJC_IVAR____TtC5JSAppP33_E222B00B621AE7255E22C290E7F82EA224HotReloadStatusHUDWindow_hudViewController]];
  type metadata accessor for Level(0);
  sub_5E594();
  sub_83D7C();
  [v5 setWindowLevel:v16];

  [v5 makeKeyWindow];
  return v5;
}

id sub_5DBB4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_5DC28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_83E0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = (&aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_280A4();
  *v10 = sub_8482C();
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = sub_83E2C();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v12 = *(v3 + 16);

  sub_5D774(a1, a2);
  if (*(v3 + 74))
  {
    if (qword_CA498 == -1)
    {
LABEL_4:
      v13 = sub_83D6C();
      sub_2C284(v13, qword_CB3E0);
      v14 = sub_83D4C();
      v15 = sub_8478C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
      }

      return;
    }

LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  if ((*(v3 + 72) & 1) == 0 && (*(v3 + 73) & 1) == 0)
  {
    *(v3 + 72) = 1;
    [v12 frame];
    [v12 setFrame:?];
    [v12 setHidden:0];
    v17 = objc_opt_self();
    v24 = sub_5E52C;
    v25 = v3;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_283C0;
    v23 = &unk_B6568;
    v18 = _Block_copy(&aBlock);

    v24 = sub_5E588;
    v25 = v3;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_5DFC0;
    v23 = &unk_B6590;
    v19 = _Block_copy(&aBlock);

    [v17 animateWithDuration:0 delay:v18 usingSpringWithDamping:v19 initialSpringVelocity:0.5 options:0.0 animations:0.9 completion:0.1];
    _Block_release(v19);
    _Block_release(v18);
  }
}

uint64_t sub_5DFC0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_5E014(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_83E0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = (&aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_280A4();
  *v10 = sub_8482C();
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = sub_83E2C();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    a1 = sub_61964(0, a1[2] + 1, 1, a1);
    *(v3 + 80) = a1;
    goto LABEL_4;
  }

  if (!a1)
  {
    goto LABEL_7;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  swift_beginAccess();
  a1 = *(v3 + 80);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 80) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13 >> 1)
  {
    a1 = sub_61964((v13 > 1), v14 + 1, 1, a1);
  }

  a1[2] = v14 + 1;
  v15 = &a1[2 * v14];
  v15[4] = sub_29098;
  v15[5] = v11;
  *(v3 + 80) = a1;
  swift_endAccess();
LABEL_7:
  if ((*(v3 + 74) & 1) == 0)
  {
    *(v3 + 73) = 256;
    v16 = objc_opt_self();
    v23 = sub_5E478;
    v24 = v3;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_283C0;
    v22 = &unk_B64F0;
    v17 = _Block_copy(&aBlock);

    v23 = sub_5E4EC;
    v24 = v3;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_5DFC0;
    v22 = &unk_B6518;
    v18 = _Block_copy(&aBlock);

    [v16 animateWithDuration:0 delay:v17 usingSpringWithDamping:v18 initialSpringVelocity:0.5 options:0.0 animations:0.9 completion:0.1];
    _Block_release(v18);
    _Block_release(v17);
  }
}

uint64_t sub_5E354(uint64_t a1, uint64_t a2)
{
  [*(a2 + 16) setHidden:1];
  swift_beginAccess();
  v3 = *(a2 + 80);
  v4 = *(v3 + 16);

  if (!v4)
  {
  }

  v6 = 0;
  v7 = (v3 + 40);
  while (v6 < *(v3 + 16))
  {
    ++v6;
    v9 = *(v7 - 1);
    v8 = *v7;

    v9(v10);

    v7 += 2;
    if (v4 == v6)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_5E414()
{
  v1 = *(v0 + 80);

  return _swift_deallocClassInstance(v0, 88, 7);
}

id sub_5E478()
{
  v1 = *(v0 + 16);
  [v1 frame];

  return [v1 setFrame:?];
}

uint64_t sub_5E4D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5E4F4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_5E52C()
{
  v1 = *(v0 + 16);
  [v1 frame];

  return [v1 setFrame:?];
}

unint64_t sub_5E594()
{
  result = qword_CB298[0];
  if (!qword_CB298[0])
  {
    type metadata accessor for Level(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_CB298);
  }

  return result;
}

uint64_t sub_5E604()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_5E64C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5E66C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

id sub_5E738()
{
  result = sub_5E75C();
  byte_CB320 = result & 1;
  return result;
}

id sub_5E75C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_8437C();
  v2 = [v0 BOOLForKey:v1];

  if (v2)
  {
    if (qword_CA4C0 != -1)
    {
      swift_once();
    }

    v3 = sub_83D6C();
    sub_2C284(v3, qword_CB458);
    v4 = sub_83D4C();
    v5 = sub_847CC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "Generating the offline cache", v6, 2u);
    }
  }

  return v2;
}

uint64_t (*static OfflineCache.generateCache.modify())()
{
  if (qword_CA468 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_5E9B8()
{
  result = sub_5E9DC();
  byte_CB321 = result & 1;
  return result;
}

uint64_t sub_5E9DC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_8437C();
  v2 = [v0 BOOLForKey:v1];

  if (!v2)
  {
    return 0;
  }

  if (qword_CA468 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_CB320)
  {
    return 0;
  }

  if (qword_CA4C0 != -1)
  {
    swift_once();
  }

  v4 = sub_83D6C();
  sub_2C284(v4, qword_CB458);
  v5 = sub_83D4C();
  v6 = sub_847CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Running from offline cache", v7, 2u);
  }

  return 1;
}

uint64_t sub_5EBA8(void *a1, unsigned __int8 *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return *a2;
}

uint64_t sub_5EC24(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return *a4;
}

uint64_t sub_5ECA4(char a1, void *a2, _BYTE *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a3 = a1 & 1;
  return result;
}

uint64_t sub_5ED2C(uint64_t a1, uint64_t a2, char a3, void *a4, _BYTE *a5)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a5 = a3;
  return result;
}

uint64_t (*static OfflineCache.runFromCache.modify())()
{
  if (qword_CA470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_5EE18@<X0>(void *a1@<X3>, _BYTE *a2@<X4>, _BYTE *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a3 = *a2;
  return result;
}

uint64_t sub_5EE7C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6)
{
  v7 = *a1;
  if (*a5 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a6 = v7;
  return result;
}

uint64_t sub_5EEE0(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_61A98(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_5EFD4(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_61A98(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_70258(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = (*(result + 48) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v38 = sub_61A98((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[16 * v13 + 32];
    *v33 = v29;
    *(v33 + 1) = v28;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = (*(result + 48) + ((v2 << 10) | (16 * v36)));
    v29 = *v37;
    v28 = v37[1];

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_40AE0();
  *v1 = v4;
  return result;
}

uint64_t sub_5F2A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  sub_2805C(&qword_CA8A0, &qword_A1CA0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_A1630;
  sub_84A4C(34);

  v13._countAndFlagsBits = v2;
  v13._object = v3;
  sub_844AC(v13);
  v14._countAndFlagsBits = 0x7473696C702ELL;
  v14._object = 0xE600000000000000;
  sub_844AC(v14);
  v15._countAndFlagsBits = 0xD00000000000001ALL;
  v15._object = 0x800000000009D380;
  v5 = sub_8443C(v15);
  v7 = v6;

  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_84A4C(24);

  v16._countAndFlagsBits = v2;
  v16._object = v3;
  sub_844AC(v16);
  v17._countAndFlagsBits = 0x7473696C702ELL;
  v17._object = 0xE600000000000000;
  sub_844AC(v17);
  v18._countAndFlagsBits = 0xD000000000000010;
  v18._object = 0x800000000009D3A0;
  v8 = sub_8443C(v18);
  v10 = v9;

  *(v4 + 48) = v8;
  *(v4 + 56) = v10;
  *a2 = v4;
  return result;
}

uint64_t sub_5F4B4(void (*a1)(uint64_t *__return_ptr, void *, uint64_t))
{
  v3 = v1;
  v4 = _s5JSApp12OfflineCacheC011alternativeC5NamesSaySSGyFZ_0();
  v5 = v4;
  v6 = _swiftEmptyArrayStorage;
  v14 = _swiftEmptyArrayStorage;
  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v4 + 40);
    while (v8 < *(v5 + 16))
    {
      v10 = *v9;
      v13[0] = *(v9 - 1);
      v13[1] = v10;

      a1(&v12, v13, v3);

      ++v8;
      sub_5EEE0(v12);
      v9 += 2;
      if (v7 == v8)
      {
        v6 = v14;
        goto LABEL_6;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_6:

    return v6;
  }

  return result;
}

uint64_t sub_5F5A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  sub_2805C(&qword_CA8A0, &qword_A1CA0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_A1630;
  sub_84A4C(34);

  v13._countAndFlagsBits = v2;
  v13._object = v3;
  sub_844AC(v13);
  v14._countAndFlagsBits = 0x7473696C702ELL;
  v14._object = 0xE600000000000000;
  sub_844AC(v14);
  v15._countAndFlagsBits = 0xD00000000000001ALL;
  v15._object = 0x800000000009D300;
  v5 = sub_8443C(v15);
  v7 = v6;

  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_84A4C(24);

  v16._countAndFlagsBits = v2;
  v16._object = v3;
  sub_844AC(v16);
  v17._countAndFlagsBits = 0x7473696C702ELL;
  v17._object = 0xE600000000000000;
  sub_844AC(v17);
  v18._countAndFlagsBits = 0xD000000000000010;
  v18._object = 0x800000000009D320;
  v8 = sub_8443C(v18);
  v10 = v9;

  *(v4 + 48) = v8;
  *(v4 + 56) = v10;
  *a2 = v4;
  return result;
}

Class sub_5F764(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_getObjCClassMetadata();
  a3();
  v4.super.isa = sub_8458C().super.isa;

  return v4.super.isa;
}

Class sub_5F7E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3.super.isa = sub_8458C().super.isa;

  return v3.super.isa;
}

id OfflineCache.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OfflineCache();
  return objc_msgSendSuper2(&v2, "init");
}

id OfflineCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OfflineCache();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_5F8E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return static String._fromUTF8Repairing(_:)(a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return static String._fromUTF8Repairing(_:)(a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return static String._fromUTF8Repairing(_:)(a1, a2);
}

uint64_t sub_5F92C()
{
  v5 = 0;
  sysctlbyname("hw.model", 0, &v5, 0, 0);
  v0 = v5;
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (v5)
  {
    v1 = sub_845DC();
    v1[2] = v0;
    bzero(v1 + 4, v0);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  sysctlbyname("hw.model", v1 + 4, &v5, 0, 0);
  v3 = sub_5F8E0(v1, v2);

  return v3;
}

uint64_t _s5JSApp12OfflineCacheC011alternativeC5NamesSaySSGyFZ_0()
{
  v1 = sub_5F92C();
  v3 = v2;
  v42 = _swiftEmptyArrayStorage;
  v4 = &off_B3F78;
  v5 = sub_42B9C(&off_B3F78);
  sub_2805C(&qword_CB350, &unk_A1C20);
  swift_arrayDestroy();
  if (*(v5 + 16) && (v6 = sub_55854(v1, v3), (v7 & 1) != 0))
  {
    v1 = *(*(v5 + 56) + 8 * v6);

    v8 = v1;
  }

  else
  {

    sub_2805C(&qword_CA8A0, &qword_A1CA0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_A10E0;
    *(v8 + 32) = v1;
    *(v8 + 40) = v3;
  }

  sub_5EEE0(v8);
  v9 = [objc_opt_self() mainScreen];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  [v9 scale];
  if (v11 > v13)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  v16 = v14 * v15;
  if (v13 >= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v13;
  }

  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v18 = v14 * v17;
  v40 = sub_84BBC();
  v41 = v19;
  v43._countAndFlagsBits = 120;
  v43._object = 0xE100000000000000;
  sub_844AC(v43);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v18 < 9.22337204e18)
  {
    v44._countAndFlagsBits = sub_84BBC();
    sub_844AC(v44);

    v4 = v40;
    v0 = v41;
    v1 = v42;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  v1 = sub_61A98(0, *(v1 + 16) + 1, 1, v1);
LABEL_18:
  v21 = *(v1 + 16);
  v20 = *(v1 + 24);
  if (v21 >= v20 >> 1)
  {
    v1 = sub_61A98((v20 > 1), v21 + 1, 1, v1);
  }

  *(v1 + 16) = v21 + 1;
  v22 = v1 + 16 * v21;
  *(v22 + 32) = v4;
  *(v22 + 40) = v0;
  v23 = [objc_opt_self() currentDevice];
  v24 = [v23 userInterfaceIdiom];

  v25 = v24 == &dword_0 + 1;
  if (v24 == &dword_0 + 1)
  {
    v26 = 1684099177;
  }

  else
  {
    v26 = 0x656E6F685069;
  }

  if (v25)
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE600000000000000;
  }

  v29 = *(v1 + 16);
  v28 = *(v1 + 24);
  if (v29 >= v28 >> 1)
  {
    v1 = sub_61A98((v28 > 1), v29 + 1, 1, v1);
  }

  *(v1 + 16) = v29 + 1;
  v30 = v1 + 16 * v29;
  *(v30 + 32) = v26;
  *(v30 + 40) = v27;
  if (qword_CA4C0 != -1)
  {
    swift_once();
  }

  v31 = sub_83D6C();
  sub_2C284(v31, qword_CB458);

  v32 = sub_83D4C();
  v33 = sub_847CC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v34 = 136446210;
    v36 = sub_845BC();
    v38 = sub_3A93C(v36, v37, &v40);

    *(v34 + 4) = v38;

    _os_log_impl(&dword_0, v32, v33, "Offline Cache names to try: %{public}s", v34, 0xCu);
    sub_371A8(v35);
  }

  else
  {
  }

  return v1;
}

void *_s5JSApp12OfflineCacheC35cacheDirCandidatesForHTTPPostLaunchSaySSGyFZ_0()
{
  v0 = _s5JSApp12OfflineCacheC011alternativeC5NamesSaySSGyFZ_0();
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_3B254(0, v1, 0);
    v2 = (v0 + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;

      sub_84A4C(29);

      v12._countAndFlagsBits = v3;
      v12._object = v4;
      sub_844AC(v12);
      v13._countAndFlagsBits = 0xD00000000000001BLL;
      v13._object = 0x800000000009D360;
      v5 = sub_8443C(v13);
      v7 = v6;

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_3B254((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v9];
      v10[4] = v5;
      v10[5] = v7;
      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *_s5JSApp12OfflineCacheC25cacheFileCandidatesForBagSaySSGyFZ_0()
{
  v0 = _s5JSApp12OfflineCacheC011alternativeC5NamesSaySSGyFZ_0();
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_3B254(0, v1, 0);
    v2 = (v0 + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;

      sub_84A4C(27);

      v12._countAndFlagsBits = v3;
      v12._object = v4;
      sub_844AC(v12);
      v13._countAndFlagsBits = 0x7473696C702ELL;
      v13._object = 0xE600000000000000;
      sub_844AC(v13);
      v14._countAndFlagsBits = 0xD000000000000013;
      v14._object = 0x800000000009D340;
      v5 = sub_8443C(v14);
      v7 = v6;

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_3B254((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v9];
      v10[4] = v5;
      v10[5] = v7;
      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *_s5JSApp12OfflineCacheC34cacheDirCandidatesForTUIPostLaunchSaySSGyFZ_0()
{
  v0 = _s5JSApp12OfflineCacheC011alternativeC5NamesSaySSGyFZ_0();
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_3B254(0, v1, 0);
    v2 = (v0 + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;

      sub_84A4C(29);

      v12._countAndFlagsBits = v3;
      v12._object = v4;
      sub_844AC(v12);
      v13._countAndFlagsBits = 0xD00000000000001BLL;
      v13._object = 0x800000000009D2E0;
      v5 = sub_8443C(v13);
      v7 = v6;

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_3B254((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v9];
      v10[4] = v5;
      v10[5] = v7;
      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

id HarConfiguration.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HarConfiguration();
  return objc_msgSendSuper2(&v2, "init");
}

id HarConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HarConfiguration();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id _s5JSApp16HarConfigurationC5setupyyFZ_0()
{
  v0 = sub_2805C(&qword_CA718, &qword_A0F00);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12[-v3];
  v5 = [objc_opt_self() isInternalBuild];
  v6 = objc_opt_self();
  v7 = v6;
  if (v5)
  {
    [v6 setIncludeFullResponseInHARLogging:1];
    if (qword_CA3E8 != -1)
    {
      swift_once();
    }

    v8 = sub_2C284(v0, qword_CAC28);
    (*(v1 + 16))(v4, v8, v0);
    sub_83BAC();
    (*(v1 + 8))(v4, v0);
    v9 = v12[15];
    v10 = objc_opt_self();
    if (v9 == 1)
    {
      [v10 setHARLoggingItemLimit:200];
      return [v7 setIncludeFullRequestInHARLogging:1];
    }

    else
    {
      [v10 setHARLoggingItemLimit:50];
      return [v7 setIncludeFullRequestInHARLogging:0];
    }
  }

  else
  {
    [v6 setIncludeFullResponseInHARLogging:0];

    return [v7 setIncludeFullRequestInHARLogging:0];
  }
}

uint64_t sub_60740()
{
  v0 = sub_83D6C();
  sub_38490(v0, qword_CB380);
  sub_2C284(v0, qword_CB380);
  return sub_83D5C();
}

uint64_t sub_607E4()
{
  v0 = sub_83D6C();
  sub_38490(v0, qword_CB398);
  sub_2C284(v0, qword_CB398);
  return sub_83D5C();
}

uint64_t sub_60884()
{
  v0 = sub_83D6C();
  sub_38490(v0, qword_CB3B0);
  sub_2C284(v0, qword_CB3B0);
  return sub_83D5C();
}

uint64_t sub_60928()
{
  v0 = sub_83D6C();
  sub_38490(v0, qword_CB3C8);
  sub_2C284(v0, qword_CB3C8);
  return sub_83D5C();
}

uint64_t sub_60A6C()
{
  v0 = sub_83D6C();
  sub_38490(v0, qword_CB410);
  sub_2C284(v0, qword_CB410);
  return sub_83D5C();
}

uint64_t sub_60BAC()
{
  v0 = sub_83D6C();
  sub_38490(v0, qword_CB458);
  sub_2C284(v0, qword_CB458);
  return sub_83D5C();
}

uint64_t sub_60C50()
{
  v0 = sub_83D6C();
  sub_38490(v0, qword_CB470);
  sub_2C284(v0, qword_CB470);
  return sub_83D5C();
}

uint64_t sub_60CF4()
{
  v0 = sub_83D6C();
  sub_38490(v0, qword_CB488);
  sub_2C284(v0, qword_CB488);
  return sub_83D5C();
}

uint64_t sub_60D98()
{
  v0 = sub_83D6C();
  sub_38490(v0, qword_CB4A0);
  sub_2C284(v0, qword_CB4A0);
  return sub_83D5C();
}

uint64_t sub_60E6C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_83D6C();
  sub_38490(v3, a2);
  sub_2C284(v3, a2);
  return sub_83D5C();
}

uint64_t sub_60F08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_83D6C();
  v6 = sub_2C284(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

id JSValue.isNullish.getter()
{
  if ([v0 isUndefined])
  {
    return &dword_0 + 1;
  }

  else
  {
    return [v0 isNull];
  }
}

uint64_t sub_61154(uint64_t a1)
{
  v2 = sub_2805C(&unk_CAE60, &qword_A1800);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25 - v4;
  v6 = sub_839CC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + 32;
    v13 = (v9 + 56);
    v14 = (v9 + 48);
    v28 = v9;
    v29 = (v9 + 32);
    v15 = _swiftEmptyArrayStorage;
    v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      sub_381F8(v12, v32);
      sub_381F8(v32, v31);
      sub_62048();
      if (swift_dynamicCast())
      {
        v16 = v30;
        v17 = [v30 activityItem];
        sub_8495C();

        swift_unknownObjectRelease();
        sub_371A8(v32);
      }

      else
      {
        sub_42FB4(v32, v31);
      }

      v18 = swift_dynamicCast();
      (*v13)(v5, v18 ^ 1u, 1, v6);
      if ((*v14)(v5, 1, v6) == 1)
      {
        sub_62094(v5);
      }

      else
      {
        v19 = *v29;
        (*v29)(v10, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_61BA4(0, v15[2] + 1, 1, v15);
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          v15 = sub_61BA4(v20 > 1, v21 + 1, 1, v15);
        }

        v15[2] = v21 + 1;
        v22 = v15 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v21;
        v10 = v27;
        v19(v22, v27, v6);
      }

      v12 += 32;
      --v11;
    }

    while (v11);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v23 = *(v26 + OBJC_IVAR___JSACopyLinkActivity_items);
  *(v26 + OBJC_IVAR___JSACopyLinkActivity_items) = v15;
}

id sub_614E4()
{
  v1 = v0;
  v2 = sub_839CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR___JSACopyLinkActivity_items];
  if (v7 && *(v7 + 16))
  {
    v8 = objc_opt_self();

    result = [v8 generalPasteboard];
    if (*(v7 + 16))
    {
      v10 = result;
      (*(v3 + 16))(v6, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

      sub_8391C();
      (*(v3 + 8))(v6, v2);
      v11 = sub_8437C();

      [v10 setString:v11];

      return [v1 activityDidFinish:1];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return [v1 activityDidFinish:1];
  }

  return result;
}

id CopyLinkActivity.init()()
{
  *&v0[OBJC_IVAR___JSACopyLinkActivity_items] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CopyLinkActivity();
  return objc_msgSendSuper2(&v2, "init");
}

id CopyLinkActivity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CopyLinkActivity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_617E4(void *result, int64_t a2, char a3, void *a4)
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
    sub_2805C(&qword_CA8C8, qword_A10C0);
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
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      sub_2805C(&qword_CA5E0, &qword_A0848);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      sub_2805C(&qword_CA5E0, &qword_A0848);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    sub_2805C(&qword_CA5E0, &qword_A0848);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_61964(void *result, int64_t a2, char a3, void *a4)
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
    sub_2805C(&qword_CB508, &qword_A1C90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2805C(&qword_CB510, &qword_A1C98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_61A98(char *result, int64_t a2, char a3, char *a4)
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
    sub_2805C(&qword_CA8A0, &qword_A1CA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_61BA4(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_2805C(&qword_CB518, &qword_A1CA8);
  v10 = *(sub_839CC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_839CC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_61D7C()
{
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = sub_8437C();
  v3 = sub_8437C();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = sub_843AC();
  return v5;
}

uint64_t sub_61E58(uint64_t a1)
{
  v2 = sub_839CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_381F8(i, v18);
    sub_381F8(v18, v17);
    sub_62048();
    if (swift_dynamicCast())
    {
      break;
    }

    sub_42FB4(v18, v17);
    if (swift_dynamicCast())
    {
      (*(v3 + 8))(v7, v2);
      return 1;
    }

LABEL_4:
    if (!--v10)
    {
      return 0;
    }
  }

  v12 = v16;
  v13 = [v16 activityItem];
  sub_8495C();

  swift_unknownObjectRelease();
  sub_371A8(v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_4;
  }

  (*(v3 + 8))(v9, v2);
  return 1;
}

unint64_t sub_62048()
{
  result = qword_CB4D0;
  if (!qword_CB4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_CB4D0);
  }

  return result;
}

uint64_t sub_62094(uint64_t a1)
{
  v2 = sub_2805C(&unk_CAE60, &qword_A1800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_622B0()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = type metadata accessor for FigaroEventViewController();
  objc_msgSendSuper2(&v29, "viewDidLoad");
  v2 = [v0 navigationItem];
  v3 = *&v0[OBJC_IVAR____TtC5JSApp25FigaroEventViewController_event];
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);

  v25 = sub_63194(1);
  v26 = v6;
  v27 = v7;
  v28 = v8;
  sub_63230();
  v9 = sub_8490C();
  v11 = v10;

  v12 = sub_63284(1uLL, v4, v5);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v24 = v12;
  sub_63334();
  sub_8449C();

  v19 = sub_8437C();

  [v2 setTitle:{v19, v24, v14, v16, v18, v9, v11, v25, v26, v27, v28}];

  v20 = [v1 tableView];
  if (v20)
  {
    v21 = v20;
    type metadata accessor for FigaroEventCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = sub_8437C();
    [v21 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v23];
  }

  else
  {
    __break(1u);
  }
}

id sub_62584(void *a1)
{
  v2 = v1;
  v4 = sub_8437C();
  v5.super.isa = sub_83AFC().super.isa;
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5.super.isa];

  if (sub_83B2C())
  {
    v2 = *(v1 + OBJC_IVAR____TtC5JSApp25FigaroEventViewController_baseFields);
    v7 = sub_83B1C();
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v7 < *(v2 + 16))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v2 + OBJC_IVAR____TtC5JSApp25FigaroEventViewController_eventFields);
  v7 = sub_83B1C();
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v7 >= *(v2 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_7:
  v8 = (v2 + 24 * v7);
  v9 = v8[4];
  v10 = v8[5];
  v11 = v8[6];

  swift_unknownObjectRetain();
  v12 = [v6 textLabel];
  if (v12)
  {
    v13 = v12;

    v14 = sub_8437C();

    [v13 setText:v14];
  }

  swift_unknownObjectRetain_n();
  sub_2805C(&qword_CA978, &qword_A1298);
  if (swift_dynamicCast())
  {
    swift_unknownObjectRetain();
    sub_2805C(&qword_CA970, &qword_A1290);
    if (swift_dynamicCast())
    {

      v15 = [v6 detailTextLabel];
      if (v15)
      {
        v16 = v15;
        sub_40AFC();
        sub_8436C();

        v17 = sub_8437C();

        [v16 setText:v17];

LABEL_21:
        v21 = 1;
        goto LABEL_22;
      }

LABEL_20:

      goto LABEL_21;
    }

    v22 = [v6 detailTextLabel];
    if (!v22)
    {
      goto LABEL_20;
    }

    v5.super.isa = v22;
    if (!(v26 >> 62))
    {
      v23 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
LABEL_19:

      sub_84BBC();
      v27._countAndFlagsBits = 0x746E656D656C6520;
      v27._object = 0xEB00000000297328;
      sub_844AC(v27);
      v24 = sub_8437C();

      [(objc_class *)v5.super.isa setText:v24];

      goto LABEL_21;
    }

LABEL_26:
    sub_84B0C();
    goto LABEL_19;
  }

  v18 = [v6 detailTextLabel];
  if (v18)
  {
    v19 = v18;
    sub_84AEC();
    v20 = sub_8437C();

    [v19 setText:v20];
  }

  v21 = 0;
LABEL_22:
  [v6 setAccessoryType:v21];

  swift_unknownObjectRelease_n();
  return v6;
}

unint64_t sub_62AB8(void *a1)
{
  v2 = v1;
  isa = sub_83AFC().super.isa;
  [a1 deselectRowAtIndexPath:isa animated:1];

  if (!sub_83B2C())
  {
LABEL_5:
    v5 = *&v2[OBJC_IVAR____TtC5JSApp25FigaroEventViewController_eventFields];
    result = sub_83B1C();
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < *(v5 + 16))
      {
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
      return result;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = *&v2[OBJC_IVAR____TtC5JSApp25FigaroEventViewController_baseFields];
  result = sub_83B1C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result >= *(v5 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_7:
  v7 = v5 + 24 * result;
  v8 = *(v7 + 40);
  v18 = *(v7 + 48);
  swift_unknownObjectRetain_n();

  sub_2805C(&qword_CB588, &unk_A1CF0);
  if (swift_dynamicCast())
  {
    if (*(v17 + 16))
    {
      v9 = objc_allocWithZone(type metadata accessor for FigaroEventFieldViewController());
      v10 = sub_3F2B4(v17);
      v11 = [v10 navigationItem];
      v12 = sub_83AFC().super.isa;
      v13 = [a1 cellForRowAtIndexPath:v12];

      if (!v13 || (v14 = [v13 textLabel], v13, !v14) || (v15 = objc_msgSend(v14, "text"), v14, !v15))
      {
        v15 = 0;
      }

      [v11 setTitle:v15];

      v16 = [v2 navigationController];
      [v16 pushViewController:v10 animated:1];
    }

    else
    {
    }
  }

  swift_unknownObjectRelease();
}

id sub_62E90(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_62F48(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC5JSApp25FigaroEventViewController_event] = a1;
  swift_beginAccess();
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v14 = v1;
  if (v4)
  {
    v5 = sub_6CD6C(v4, 0);
    v6 = sub_6FCE0(&v16, v5 + 4, v4, v3);
    swift_bridgeObjectRetain_n();

    sub_40AE0();
    if (v6 != v4)
    {
      __break(1u);
      goto LABEL_11;
    }

    v1 = v14;
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v16 = v5;
  sub_3FE78(&v16);

  v7 = sub_63388(v16);

  *&v1[OBJC_IVAR____TtC5JSApp25FigaroEventViewController_eventFields] = v7;
  swift_beginAccess();
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  if (!v9)
  {

    v10 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  v10 = sub_6CD6C(*(v8 + 16), 0);
  v11 = sub_6FCE0(&v16, v10 + 4, v9, v8);
  swift_bridgeObjectRetain_n();
  sub_40AE0();
  if (v11 == v9)
  {
    v1 = v14;
LABEL_9:
    v16 = v10;
    sub_3FE78(&v16);

    v12 = sub_63388(v16);

    *&v1[OBJC_IVAR____TtC5JSApp25FigaroEventViewController_baseFields] = v12;
    v15.receiver = v1;
    v15.super_class = type metadata accessor for FigaroEventViewController();
    return objc_msgSendSuper2(&v15, "initWithStyle:", 2);
  }

LABEL_11:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_63194(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_8448C();

    return sub_8454C();
  }

  return result;
}

unint64_t sub_63230()
{
  result = qword_CB590;
  if (!qword_CB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CB590);
  }

  return result;
}