uint64_t sub_1250()
{
  sub_1CB0();
  result = sub_1E24();
  qword_8198 = result;
  return result;
}

uint64_t *sub_12B8()
{
  if (qword_82B0 != -1)
  {
    sub_1CF4(&qword_82B0);
  }

  return &qword_8198;
}

id sub_12F8()
{
  if (qword_82B0 != -1)
  {
    sub_1CF4(&qword_82B0);
  }

  v1 = qword_8198;

  return v1;
}

uint64_t sub_1344@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DC4();
  v3 = sub_1DF4();
  v4 = sub_1D14(v3);
  v6 = *(v5 + 16);

  return v6(a1, v2, v4);
}

uint64_t sub_13AC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC29TranslationFlowDelegatePlugin29TranslationFlowDelegatePlugin_logger;
  v5 = sub_1DC4();
  v6 = sub_1DF4();
  sub_1D14(v6);
  (*(v7 + 16))(v3 + v4, v5);
  return v3;
}

uint64_t sub_142C()
{
  v1 = OBJC_IVAR____TtC29TranslationFlowDelegatePlugin29TranslationFlowDelegatePlugin_logger;
  v2 = sub_1DC4();
  v3 = sub_1DF4();
  sub_1D14(v3);
  (*(v4 + 16))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_1DA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_82B0 != -1)
  {
    sub_1CF4(&qword_82B0);
  }

  sub_1E14();
  sub_17E4(&qword_80C0, &qword_1F60);
  v8 = swift_allocObject();
  v20 = xmmword_1F50;
  *(v8 + 16) = xmmword_1F50;
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_1E04();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_182C();
  *(v8 + 64) = v12;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  sub_1DD4();

  v13 = sub_1DE4();
  v14 = sub_1E14();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "About to call getRCHFlow()", v15, 2u);
  }

  sub_1DB4();
  if (v23)
  {
    sub_18E8(&v22, v24);
    sub_1E14();
    v16 = swift_allocObject();
    *(v16 + 16) = v20;
    sub_1900(v24, &v22);
    sub_17E4(&qword_80D8, qword_1F70);
    v17 = sub_1E04();
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = v12;
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    sub_1DD4();

    sub_1964(v24, v24[3]);
    sub_1D24();
    sub_1D44();

    return sub_19A8(v24);
  }

  else
  {
    sub_1880(&v22);
    sub_1E14();
    sub_1DD4();
    return sub_1D34();
  }
}

uint64_t sub_17E4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_182C()
{
  result = qword_80C8;
  if (!qword_80C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80C8);
  }

  return result;
}

uint64_t sub_1880(uint64_t a1)
{
  v2 = sub_17E4(&qword_80D0, &qword_1F68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1900(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1964(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_19A8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_19F4()
{
  v1 = OBJC_IVAR____TtC29TranslationFlowDelegatePlugin29TranslationFlowDelegatePlugin_logger;
  v2 = sub_1DF4();
  sub_1D14(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1A4C()
{
  v1 = OBJC_IVAR____TtC29TranslationFlowDelegatePlugin29TranslationFlowDelegatePlugin_logger;
  v2 = sub_1DF4();
  sub_1D14(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t sub_1B24@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 88))();
  *a1 = result;
  return result;
}

unint64_t sub_1B74()
{
  result = qword_80E0;
  if (!qword_80E0)
  {
    type metadata accessor for TranslationFlowDelegatePlugin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80E0);
  }

  return result;
}

uint64_t type metadata accessor for TranslationFlowDelegatePlugin()
{
  result = qword_82A0;
  if (!qword_82A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C20()
{
  result = sub_1DF4();
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

unint64_t sub_1CB0()
{
  result = qword_8190;
  if (!qword_8190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8190);
  }

  return result;
}

uint64_t sub_1CF4(uint64_t a1)
{

  return _swift_once(a1, sub_1250);
}