uint64_t getEnumTagSinglePayload for FeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for FeatureFlags(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x13CCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1414()
{
  result = qword_80A0;
  if (!qword_80A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80A0);
  }

  return result;
}

Swift::Int sub_14C0()
{
  sub_1E08();
  sub_1E18(0);
  return sub_1E28();
}

Swift::Int sub_150C()
{
  sub_1E08();
  sub_1E18(0);
  return sub_1E28();
}

uint64_t sub_154C()
{
  v0 = swift_allocObject();
  sub_1584();
  return v0;
}

uint64_t sub_1584()
{
  v1 = sub_1DC8();
  v2 = sub_1B3C(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_1B24();
  if (qword_8098 != -1)
  {
    sub_1B04();
  }

  v7 = sub_1A2C(v1, qword_83E8);
  (*(v4 + 16))(v0, v7, v1);
  v8 = sub_1DB8();
  v9 = sub_1DE8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Initializing ReaderFlowPlugin", v10, 2u);
  }

  (*(v4 + 8))(v0, v1);
  return v0;
}

uint64_t sub_16F4(uint64_t a1)
{
  v3 = sub_1DC8();
  v4 = sub_1B3C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_1B24();
  if (qword_8098 != -1)
  {
    sub_1B04();
  }

  v9 = sub_1A2C(v3, qword_83E8);
  (*(v6 + 16))(v1, v9, v3);
  v10 = sub_1DB8();
  v11 = sub_1DE8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "Find flow for X called", v12, 2u);
  }

  (*(v6 + 8))(v1, v3);
  v19 = &type metadata for FeatureFlags;
  v20 = sub_1A64();
  v13 = sub_1D68();
  sub_1AB8(v18);
  if ((v13 & 1) == 0)
  {
    return sub_1CE8();
  }

  v14 = sub_1DA8();
  v15 = sub_1D98();
  v19 = v14;
  v20 = &protocol witness table for ReferenceResolutionClient;
  v18[0] = v15;

  sub_1D48();
  sub_1D58();
  sub_1D88();
  swift_allocObject();
  v16 = sub_1D78();
  (*(*v16 + 120))(a1);
}

uint64_t sub_1998@<X0>(uint64_t *a1@<X8>)
{
  result = sub_154C();
  *a1 = result;
  return result;
}

unint64_t sub_19D8()
{
  result = qword_8148;
  if (!qword_8148)
  {
    type metadata accessor for ReaderFlowPlugin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8148);
  }

  return result;
}

uint64_t sub_1A2C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1A64()
{
  result = qword_8150;
  if (!qword_8150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8150);
  }

  return result;
}

uint64_t sub_1AB8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1B04()
{

  return swift_once();
}

uint64_t sub_1B50()
{
  sub_1CA4();
  result = sub_1DF8();
  qword_83E0 = result;
  return result;
}

uint64_t sub_1BB4()
{
  v0 = sub_1DC8();
  sub_1C40(v0, qword_83E8);
  sub_1A2C(v0, qword_83E8);
  if (qword_8090 != -1)
  {
    swift_once();
  }

  v1 = qword_83E0;
  return sub_1DD8();
}

uint64_t *sub_1C40(uint64_t a1, uint64_t *a2)
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

unint64_t sub_1CA4()
{
  result = qword_8158;
  if (!qword_8158)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8158);
  }

  return result;
}