uint64_t sub_1C98F92E0@<X0>(void *a1@<X8>)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CC190);
  sub_1C97DACE4(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1C98F90FC(v5, a1);
}

unint64_t sub_1C98F935C()
{
  result = qword_1EC3CC1A0;
  if (!qword_1EC3CC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC1A0);
  }

  return result;
}

unint64_t sub_1C98F93B4()
{
  result = qword_1EC3CC1A8;
  if (!qword_1EC3CC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC1A8);
  }

  return result;
}

unint64_t sub_1C98F9408(uint64_t a1)
{
  result = sub_1C98DDF6C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C98F9430(uint64_t a1)
{
  result = sub_1C98DDF18();
  *(a1 + 16) = result;
  return result;
}

void sub_1C98F94B0()
{
  sub_1C9A91748();
  if (v0 <= 0x3F)
  {
    sub_1C98F9534();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C98F9534()
{
  if (!qword_1EC3CC1C8)
  {
    sub_1C97AA4F0(&unk_1EC3CA040);
    v0 = sub_1C9A91DA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC3CC1C8);
    }
  }
}

_BYTE *sub_1C98F95B8(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C98F9668()
{
  result = qword_1EC3CC1D0;
  if (!qword_1EC3CC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC1D0);
  }

  return result;
}

uint64_t sub_1C98F96BC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C98F9734(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C98F9774()
{
  result = qword_1EC3CC1E0;
  if (!qword_1EC3CC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC1E0);
  }

  return result;
}

unint64_t sub_1C98F97CC()
{
  result = qword_1EC3CC1E8;
  if (!qword_1EC3CC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC1E8);
  }

  return result;
}

unint64_t sub_1C98F9824()
{
  result = qword_1EC3CC1F0;
  if (!qword_1EC3CC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC1F0);
  }

  return result;
}

unint64_t sub_1C98F987C()
{
  result = qword_1EC3CC1F8;
  if (!qword_1EC3CC1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC1F8);
  }

  return result;
}

void sub_1C98F98D0()
{
  sub_1C97BE460();
  v1 = v0;
  v2 = sub_1C988EB2C();
  sub_1C97A2CEC(v2);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97FB2C8();
  sub_1C97A2CEC(&qword_1EC3CC310);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C98FA280();
  v6(v5);
  sub_1C98FA270();
  sub_1C97AE67C(v7, v8);
  sub_1C98FA36C();
  v9 = swift_allocBox();
  v11 = sub_1C98FA2A0(v9, v10);
  v12(v11);
  *v1 = &unk_1C9AB26A0;
  v1[1] = &qword_1EC3CC308;
  sub_1C97BE478();
}

void sub_1C98F9A38()
{
  sub_1C97BE460();
  v1 = v0;
  v2 = sub_1C988EB2C();
  sub_1C97A2CEC(v2);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97FB2C8();
  sub_1C97A2CEC(&qword_1EC3CC2F0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C98FA280();
  v6(v5);
  sub_1C98FA270();
  sub_1C97AE67C(v7, v8);
  sub_1C98FA36C();
  v9 = swift_allocBox();
  v11 = sub_1C98FA2A0(v9, v10);
  v12(v11);
  *v1 = &unk_1C9AB2680;
  v1[1] = &qword_1EC3CC2E8;
  sub_1C97BE478();
}

uint64_t sub_1C98F9BA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1C98F9C04(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1C98F9C38@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CB640);
  sub_1C97DACE4(v2);
  sub_1C98FA3C8();
  result = sub_1C98C030C();
  *a1 = result;
  return result;
}

uint64_t sub_1C98F9CBC(uint64_t *a1)
{
  v2 = sub_1C97A2CEC(a1);
  sub_1C97AE9C8();
  v4 = v3;
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v4 + 8))(v1 + v5, v2);

  return swift_deallocObject();
}

uint64_t sub_1C98F9D70@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C9AE8);
  sub_1C97DACE4(v2);
  sub_1C98FA3C8();

  return sub_1C986E7C8(a1);
}

uint64_t sub_1C98F9DE0()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98FA238(v1);

  return sub_1C98F8804(v3);
}

unint64_t sub_1C98F9E64()
{
  result = qword_1EC3CC2E0;
  if (!qword_1EC3CC2E0)
  {
    sub_1C97AA4F0(&qword_1EC3C9B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC2E0);
  }

  return result;
}

uint64_t sub_1C98F9EE8()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98FA238(v1);

  return sub_1C98F8E5C(v3);
}

uint64_t sub_1C98F9F6C()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98FA238(v1);

  return sub_1C98F8BA8(v3);
}

uint64_t sub_1C98F9FF0()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98FA238(v1);

  return sub_1C98F8A70(v3);
}

uint64_t sub_1C98FA074(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C97DA940();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AccessibilitySoundActions.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        break;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C98FA1AC()
{
  result = qword_1EC3CC340;
  if (!qword_1EC3CC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC340);
  }

  return result;
}

uint64_t sub_1C98FA24C(unint64_t *a1, uint64_t *a2)
{

  return sub_1C97AE67C(a1, a2);
}

uint64_t sub_1C98FA2B8()
{

  return swift_beginAccess();
}

uint64_t sub_1C98FA2D8()
{

  return sub_1C98FA074(v0, type metadata accessor for RemoteRequest);
}

uint64_t sub_1C98FA300()
{

  return sub_1C98FA074(v0, type metadata accessor for AccessibilitySoundActions.Session);
}

uint64_t sub_1C98FA328(unint64_t *a1, uint64_t *a2)
{

  return sub_1C97AE67C(a1, a2);
}

uint64_t sub_1C98FA36C()
{

  return sub_1C9A92A68();
}

uint64_t sub_1C98FA38C()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C98FA42C@<X0>(void *__src@<X0>, uint64_t *a2@<X8>)
{
  memcpy(__dst, __src, 0x41uLL);
  if (byte_1EC3D3200 == 1)
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v4 = sub_1C9A91B58();
    sub_1C97BFF6C(v4, qword_1EC3D3108);
    v5 = sub_1C9A91B38();
    v6 = sub_1C9A92FC8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C9788000, v5, v6, "Instantiating SNSystemAudioAnalyzer with In-Process Computation", v7, 2u);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }

    memcpy(v20, __src, 0x41uLL);
    v8 = type metadata accessor for SNSystemAudioAnalyzerLocal();
    swift_allocObject();
    sub_1C97A6264(__dst, v17);
    result = sub_1C99462E0(1, v20);
    v10 = result;
    v11 = &off_1F4942160;
  }

  else
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v12 = sub_1C9A91B58();
    sub_1C97BFF6C(v12, qword_1EC3D3108);
    v13 = sub_1C9A91B38();
    v14 = sub_1C9A92FC8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C9788000, v13, v14, "Instantiating SNSystemAudioAnalyzer in Daemon", v15, 2u);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }

    v18 = &unk_1F492E330;
    v19 = &off_1F492E6A0;
    v8 = type metadata accessor for SNSystemAudioAnalyzerRemote();
    v16 = swift_allocObject();
    sub_1C97BDE74(v17, &unk_1F492E330);
    sub_1C97A6264(__dst, v20);
    v10 = sub_1C98FB8B0(__dst, v16);
    result = sub_1C97A592C(v17);
    v11 = &off_1F493F000;
  }

  a2[3] = v8;
  a2[4] = v11;
  *a2 = v10;
  return result;
}

id SNSystemAudioAnalyzer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNSystemAudioAnalyzer.init()()
{
  ObjectType = swift_getObjectType();
  v0 = MGGetProductType();
  sub_1C989B2F8(v0, v31);
  if (v31[6])
  {
    v1 = v31[0];

    sub_1C989ACF0(v1, v32);
    v2 = v35;
    v37 = v33;

    sub_1C97F9D3C(&v37, &qword_1EC3C7DB0);
    v36 = v34;
    sub_1C97F9D3C(&v36, &qword_1EC3C7DB8);

    v2(__dst, v3);

    v4 = __dst[0];
    v5 = __dst[1];
    v6 = __dst[2];
    v7 = __dst[3];
    v8 = __dst[4];
    v9 = __dst[5];
    v10 = __dst[6];
    v11 = BYTE1(__dst[6]);
    v12 = BYTE2(__dst[6]);
    v13 = BYTE3(__dst[6]);
    v14 = BYTE4(__dst[6]);
    v15 = BYTE5(__dst[6]);
    v16 = __dst[7];
    v17 = __dst[8];
  }

  else
  {
    if (qword_1EC3C5E08 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &qword_1EC3D33B0, 0x41uLL);
    v24 = __dst[7];
    v17 = __dst[8];
    v22 = BYTE4(__dst[6]);
    v23 = BYTE5(__dst[6]);
    v21 = BYTE3(__dst[6]);
    v12 = BYTE2(__dst[6]);
    v11 = BYTE1(__dst[6]);
    v10 = __dst[6];
    v8 = __dst[4];
    v9 = __dst[5];
    v6 = __dst[2];
    v7 = __dst[3];
    v4 = __dst[0];
    v5 = __dst[1];
    sub_1C97A6264(__dst, __src);
    v13 = v21;
    v14 = v22;
    v15 = v23;
    v16 = v24;
  }

  v27 = v17;
  __src[0] = v4;
  __src[1] = v5;
  __src[2] = v6;
  __src[3] = v7;
  __src[4] = v8;
  __src[5] = v9;
  LOBYTE(__src[6]) = v10;
  BYTE1(__src[6]) = v11;
  BYTE2(__src[6]) = v12;
  BYTE3(__src[6]) = v13;
  BYTE4(__src[6]) = v14;
  BYTE5(__src[6]) = v15;
  __src[7] = v16;
  LOBYTE(__src[8]) = v17;
  sub_1C98FA42C(__src, v30);
  memcpy(__dst, __src, 0x41uLL);
  sub_1C97E8084(__dst);
  v18 = objc_allocWithZone(ObjectType);
  sub_1C97D9AF8(v30, v18 + OBJC_IVAR___SNSystemAudioAnalyzer_impl);
  v26.receiver = v18;
  v26.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v26, sel_init);
  sub_1C97A592C(v30);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v19;
}

id sub_1C98FA960(char *a1)
{
  ObjectType = swift_getObjectType();
  memcpy(__dst, &a1[OBJC_IVAR___SNAudioConfiguration_impl], 0x41uLL);
  memcpy(__src, &a1[OBJC_IVAR___SNAudioConfiguration_impl], 0x41uLL);
  sub_1C97A6264(__dst, v10);
  sub_1C98FA42C(__src, v8);
  memcpy(v10, __src, 0x41uLL);
  sub_1C97E8084(v10);
  v3 = objc_allocWithZone(ObjectType);
  sub_1C97D9AF8(v8, v3 + OBJC_IVAR___SNSystemAudioAnalyzer_impl);
  v6.receiver = v3;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1C97A592C(v8);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_1C98FAA84(void *a1, void *a2)
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v5 = sub_1C9A91B58();
  sub_1C97BFF6C(v5, qword_1EC3D3108);
  v6 = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = sub_1C9A91B38();
  v8 = sub_1C9A92FC8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v7, v8))
  {
    sub_1C98FBA2C();
    v9 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v9 = 136315650;
    v10 = [v6 description];
    v11 = sub_1C9A924A8();
    v13 = v12;

    v14 = sub_1C9849140(v11, v13, &v29);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v15 = [a1 description];
    sub_1C9A924A8();
    sub_1C98FBA20();

    v16 = sub_1C97AC04C();
    v19 = sub_1C9849140(v16, v17, v18);

    *(v9 + 14) = v19;
    *(v9 + 22) = 2080;
    v20 = [a2 description];
    sub_1C9A924A8();
    sub_1C98FBA20();

    v21 = sub_1C97AC04C();
    v24 = sub_1C9849140(v21, v22, v23);

    *(v9 + 24) = v24;
    _os_log_impl(&dword_1C9788000, v7, v8, "(SNSystemAudioAnalyzer:%s) addRequest:%s withObserver:%s", v9, 0x20u);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  v25 = &v6[OBJC_IVAR___SNSystemAudioAnalyzer_impl];
  v26 = *&v6[OBJC_IVAR___SNSystemAudioAnalyzer_impl + 24];
  v27 = *&v6[OBJC_IVAR___SNSystemAudioAnalyzer_impl + 32];
  sub_1C97A5A8C(v25, v26);
  return (*(v27 + 8))(a1, a2, v26, v27);
}

uint64_t sub_1C98FADD0(void *a1, void *a2)
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v5 = sub_1C9A91B58();
  sub_1C97BFF6C(v5, qword_1EC3D3108);
  v6 = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = sub_1C9A91B38();
  v8 = sub_1C9A92FC8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v7, v8))
  {
    sub_1C98FBA2C();
    v9 = swift_slowAlloc();
    swift_slowAlloc();
    *v9 = 136315650;
    v10 = [v6 description];
    sub_1C9A924A8();
    sub_1C98FBA20();

    v11 = sub_1C97AC04C();
    v14 = sub_1C9849140(v11, v12, v13);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v15 = [a1 description];
    sub_1C9A924A8();
    sub_1C98FBA20();

    v16 = sub_1C97AC04C();
    v19 = sub_1C9849140(v16, v17, v18);

    *(v9 + 14) = v19;
    *(v9 + 22) = 2080;
    v20 = [a2 description];
    sub_1C9A924A8();
    sub_1C98FBA20();

    v21 = sub_1C97AC04C();
    v24 = sub_1C9849140(v21, v22, v23);

    *(v9 + 24) = v24;
    _os_log_impl(&dword_1C9788000, v7, v8, "(SNSystemAudioAnalyzer:%s) addRequestInBackground:%s withObserver:%s", v9, 0x20u);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  return sub_1C98FAA84(a1, a2);
}

uint64_t sub_1C98FB118(void *a1)
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v3 = sub_1C9A91B58();
  sub_1C97BFF6C(v3, qword_1EC3D3108);
  v4 = v1;
  swift_unknownObjectRetain();
  v5 = sub_1C9A91B38();
  v6 = sub_1C9A92FC8();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = [v4 description];
    v9 = sub_1C9A924A8();
    v11 = v10;

    v12 = sub_1C9849140(v9, v11, &v22);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v13 = [a1 description];
    v14 = sub_1C9A924A8();
    v16 = v15;

    v17 = sub_1C9849140(v14, v16, &v22);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_1C9788000, v5, v6, "(SNSystemAudioAnalyzer:%s) removeRequest:%s", v7, 0x16u);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  v18 = &v4[OBJC_IVAR___SNSystemAudioAnalyzer_impl];
  v19 = *&v4[OBJC_IVAR___SNSystemAudioAnalyzer_impl + 24];
  v20 = *(v18 + 4);
  sub_1C97A5A8C(v18, v19);
  return (*(v20 + 16))(a1, v19, v20);
}

uint64_t sub_1C98FB3A4()
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v1 = sub_1C9A91B58();
  sub_1C97BFF6C(v1, qword_1EC3D3108);
  v2 = v0;
  v3 = sub_1C9A91B38();
  v4 = sub_1C9A92FC8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    sub_1C98FBA2C();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v7 = [v2 description];
    v8 = sub_1C9A924A8();
    v10 = v9;

    v11 = sub_1C9849140(v8, v10, &v16);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1C9788000, v3, v4, "(SNSystemAudioAnalyzer:%s) removeAllRequests", v5, 0xCu);
    sub_1C97A592C(v6);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  v12 = &v2[OBJC_IVAR___SNSystemAudioAnalyzer_impl];
  v13 = *&v2[OBJC_IVAR___SNSystemAudioAnalyzer_impl + 24];
  v14 = *(v12 + 4);
  sub_1C97A5A8C(v12, v13);
  return (*(v14 + 24))(v13, v14);
}

void sub_1C98FB5E0(const char *a1)
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v3 = sub_1C9A91B58();
  sub_1C97BFF6C(v3, qword_1EC3D3108);
  v4 = v1;
  oslog = sub_1C9A91B38();
  v5 = sub_1C9A92FC8();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    sub_1C98FBA2C();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = [v4 description];
    v9 = sub_1C9A924A8();
    v11 = v10;

    v12 = sub_1C9849140(v9, v11, &v14);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_1C9788000, oslog, v5, a1, v6, 0xCu);
    sub_1C97A592C(v7);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }
}

id SNSystemAudioAnalyzer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C98FB8B0(const void *a1, uint64_t a2)
{
  v4 = sub_1C9A91748();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = &unk_1F492E330;
  v13 = &off_1F492E6A0;
  sub_1C97D9AF8(v11, a2 + OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_environment);
  type metadata accessor for SNSystemAudioAnalyzerRemote.State();
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v8 + 112) = MEMORY[0x1E69E7CC0];
  *(a2 + OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_state) = v8;
  sub_1C9A91738();
  sub_1C97A592C(v11);
  (*(v5 + 32))(a2 + OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_id, v7, v4);
  memcpy((a2 + OBJC_IVAR____TtC13SoundAnalysis27SNSystemAudioAnalyzerRemote_audioConfiguration), a1, 0x41uLL);
  return a2;
}

uint64_t sub_1C98FBA38(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_1C97A5A8C(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1C9A91578();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = MEMORY[0x1CCA8F240]();
    }

    else
    {
      v6 = MEMORY[0x1CCA8F260]();
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1C97A592C(v8);
  return v6;
}

uint64_t sub_1C98FBAF4(uint64_t a1, uint64_t a2)
{
  v10 = sub_1C97A2CEC(&qword_1EC3CC358);
  v11 = sub_1C97AE67C(&qword_1EC3CC360, &qword_1EC3CC358);
  v9[0] = a1;
  v9[1] = a2;
  v4 = sub_1C97A5A8C(v9, v10);
  if (*v4)
  {
    v5 = v4[1] + *v4;
  }

  else
  {
    v5 = 0;
  }

  sub_1C9901C3C(*v4, v5, &v8);
  v6 = v8;
  sub_1C97A592C(v9);
  return v6;
}

uint64_t sub_1C98FBBC4(uint64_t a1, uint64_t a2)
{
  v7[3] = MEMORY[0x1E69E6888];
  v7[4] = MEMORY[0x1E696A050];
  v7[0] = a1;
  v7[1] = a2;
  v2 = sub_1C97A5A8C(v7, MEMORY[0x1E69E6888]);
  if (*v2)
  {
    v3 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  sub_1C9901C3C(*v2, v3, &v6);
  v4 = v6;
  sub_1C97A592C(v7);
  return v4;
}

uint64_t sub_1C98FBC4C(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      if (a3 >> 32 < a3)
      {
        __break(1u);
      }

      v6 = a3;
      goto LABEL_7;
    case 2uLL:
      v6 = *(a3 + 16);
      v7 = *(a3 + 24);
LABEL_7:
      result = sub_1C9901FA0(v6, v7, a1);
      break;
    case 3uLL:
      result = sub_1C9886B10();
      break;
    default:
      v8 = a3;
      v9 = a4;
      v10 = BYTE2(a4);
      v11 = BYTE3(a4);
      v12 = BYTE4(a4);
      v13 = BYTE5(a4);
      result = a1(&v8, &v8 + BYTE6(a4));
      break;
  }

  return result;
}

uint64_t sub_1C98FBD94(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = result >> 32;
      if (result >> 32 < result)
      {
        __break(1u);
      }

      result = result;
      v4 = v3;
      goto LABEL_5;
    case 2uLL:
      v5 = *(result + 24);
      result = *(result + 16);
      v4 = v5;
LABEL_5:
      result = sub_1C9902048(result, v4);
      break;
    case 3uLL:
      if (!v2)
      {
        result = 0;
      }

      break;
    default:
      return result;
  }

  return result;
}

int64_t sub_1C98FBE48@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 < result)
      {
        __break(1u);
      }

      v15 = &v18;
      result = sub_1C99021D8(result, result >> 32, &v18);
      if (!v3)
      {
        v17 = v18;
        v5 = v19;
        v16 = vmovl_u8(__PAIR64__(v18.u32[1], v20)).u64[0];
        LOBYTE(v14) = v21;
        goto LABEL_10;
      }

      break;
    case 2uLL:
      v15 = &v22;
      result = sub_1C99021D8(*(result + 16), *(result + 24), &v22);
      if (!v3)
      {
        v17 = v22;
        v5 = v23;
        v16 = vmovl_u8(__PAIR64__(v22.u32[1], v24)).u64[0];
        LOBYTE(v14) = v25;
LABEL_10:
        memcpy(__dst, &v15[1] + 6, sizeof(__dst));
        v13 = v16;
        v11 = v17;
        goto LABEL_11;
      }

      break;
    case 3uLL:
      if (!v3)
      {
        v5 = 0;
        LOBYTE(v14) = 0;
        v11 = 0;
        v13 = 0;
        goto LABEL_11;
      }

      break;
    default:
      v6 = vdupq_n_s64(result);
      v7 = vshlq_u64(v6, xmmword_1C9AB27E0);
      v8 = vmovn_s64(vshlq_u64(v6, xmmword_1C9AB27D0));
      v8.i8[1] = v8.i8[4];
      v9 = vzip1_s16(result, v8);
      *v6.i8 = vmovn_s64(vshlq_u64(v6, xmmword_1C9AB27F0));
      v10 = vmovn_s64(v7);
      v10.i8[1] = v10.i8[4];
      v10.i8[2] = v6.i8[0];
      v10.i8[3] = v6.i8[4];
      v11 = vzip1_s32(v9, v10);
      v12 = vdupq_n_s64(a2);
      v13 = vmovn_s32(vuzp1q_s32(vshlq_u64(v12, xmmword_1C9AB2810), vshlq_u64(v12, xmmword_1C9AB2800)));
      v14 = a2 >> 40;
LABEL_11:
      *a3 = v11;
      *(a3 + 8) = v5;
      *(a3 + 9) = vuzp1_s8(v13, v13).u32[0];
      *(a3 + 13) = v14;
      result = memcpy((a3 + 14), __dst, 0x7AuLL);
      break;
  }

  return result;
}

uint64_t sub_1C98FC040(uint64_t result, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 < result)
      {
        __break(1u);
      }

      result = result;
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = v5;
      goto LABEL_5;
    case 2uLL:
      v8 = *(result + 24);
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      result = *(result + 16);
      v7 = v8;
LABEL_5:
      result = a3(result, v7, v6);
      break;
    case 3uLL:
      if (!v3)
      {
        result = 0;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C98FC100(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v4 = v5;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_9:
      result = sub_1C99022DC(result, v4);
      break;
    case 3uLL:
      result = 0;
      v2 = 0;
      goto LABEL_5;
    default:
      v2 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1C9901F28(result, v2);
      break;
  }

  return result;
}

unint64_t sub_1C98FC18C()
{
  *&v33[138] = *MEMORY[0x1E69E9840];
  result = sub_1C98FE404(2036490594, 0xE400000000000000);
  if (!v0)
  {
    v2 = result;
    v3 = sub_1C9903120();
    v4 = sub_1C9903188();
    v5 = sub_1C9903154();
    v19 = 1024;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    v18[0] = 0x1000100000001;
    v18[1] = 1;
    v20 = v2;
    __asm { FMOV            V0.2S, #0.75 }

    v21 = _D0;
    v22 = v3;
    v23 = _D0;
    v24 = v4;
    v25 = _D0;
    v26 = v5;
    v27 = _D0;
    sub_1C98FBA38(v18, v33);
    sub_1C99031F8();
    sub_1C98FEB88(v11, v12, v13, v14, v15);
    v16 = sub_1C9871794();
    return sub_1C97A5978(v16, v17);
  }

  return result;
}

uint64_t sub_1C98FC2DC()
{
  *&v45[138] = *MEMORY[0x1E69E9840];
  if (qword_1EC3C5BA8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC3C5BB0;
  v2 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  *&v3 = COERCE_DOUBLE(sub_1C99B5A00());
  if (v0)
  {

    v5 = 0.75;
  }

  else
  {
    v6 = *&v3;
    v7 = v4;

    if (v7)
    {
      v5 = 0.75;
    }

    else
    {
      v5 = v6;
    }
  }

  v8 = [v1 dictionaryRepresentation];
  sub_1C9A92328();

  v9 = COERCE_DOUBLE(sub_1C99B5A00());
  LOBYTE(v8) = v10;

  if (v8)
  {
    v11 = 0.75;
  }

  else
  {
    v11 = v9;
  }

  v12 = [v1 dictionaryRepresentation];
  sub_1C9A92328();

  v13 = COERCE_DOUBLE(sub_1C99B5A00());
  v15 = v14;

  if (v15)
  {
    v16 = 0.5;
  }

  else
  {
    v16 = v13;
  }

  v17 = sub_1C9903110();
  v18 = sub_1C99032F4(v17);
  v20 = sub_1C98FE404(v18, v19);
  v21 = sub_1C9903110();
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v30 = 0x2000100000002;
  v31 = 1;
  v32 = 2;
  v33 = v20;
  v34 = v5;
  v35 = v16;
  v36 = sub_1C98FE404(v21 & 0xFFFFFFFFFFFFLL | 0x6F6C000000000000, 0xEA0000000000676ELL);
  v37 = v11;
  v38 = v16;
  sub_1C98FBA38(&v30, v45);
  sub_1C99031F8();
  sub_1C98FEB88(v22, v23, v24, v25, v26);
  v27 = sub_1C9871794();
  return sub_1C97A5978(v27, v28);
}

uint64_t sub_1C98FC6BC(uint64_t a1, int a2)
{
  v3 = v2;
  sub_1C9A91748();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64();
  }

  v5 = sub_1C9A91B58();
  sub_1C97BFF6C(v5, qword_1EC3D3108);
  v6 = sub_1C985511C();
  v7(v6);
  v8 = sub_1C9A91B38();
  v9 = sub_1C9A92FC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22[1] = v11;
    *v10 = 136315394;
    sub_1C99030DC(&qword_1EC3C5480);
    sub_1C9A93A98();
    v12 = sub_1C99032BC();
    v13(v12);
    v14 = sub_1C988EB2C();
    v17 = sub_1C9849140(v14, v15, v16);

    *(v10 + 4) = v17;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a2;
    _os_log_impl(&dword_1C9788000, v8, v9, "AOP use-case added: uuuid: %s; type: %u", v10, 0x12u);
    sub_1C97A592C(v11);
    sub_1C9840CEC();
    sub_1C9840CEC();
  }

  else
  {

    v18 = sub_1C99032BC();
    v19(v18);
  }

  os_unfair_lock_lock(*(*(v3 + 16) + 16));
  sub_1C9903328();
  swift_isUniquelyReferenced_nonNull_native();
  v22[0] = *(v3 + 40);
  sub_1C97EF084();
  *(v3 + 40) = v22[0];
  swift_endAccess();
  sub_1C9903308();
  return sub_1C98FCD90(v22);
}

uint64_t sub_1C98FC938(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C9A91748();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v10 = v9 - v8;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64();
  }

  v11 = sub_1C9A91B58();
  sub_1C97BFF6C(v11, qword_1EC3D3108);
  (*(v6 + 16))(v10, a1, v4);
  v12 = sub_1C9A91B38();
  v13 = sub_1C9A92FC8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25[0] = v15;
    *v14 = 136315138;
    sub_1C99030DC(&qword_1EC3C5480);
    v16 = sub_1C9A93A98();
    v18 = v17;
    v19 = sub_1C9871794();
    v20(v19);
    v21 = sub_1C9849140(v16, v18, v25);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_1C9788000, v12, v13, "AOP use-case removed: uuuid: %s", v14, 0xCu);
    sub_1C97A592C(v15);
    sub_1C9840CEC();
    sub_1C9840CEC();
  }

  else
  {

    v22 = sub_1C9871794();
    v23(v22);
  }

  os_unfair_lock_lock(*(*(v2 + 16) + 16));
  sub_1C9903328();
  sub_1C97EE640();
  swift_endAccess();
  sub_1C9903308();
  return sub_1C98FCD90(v2 + 40);
}

uint64_t sub_1C98FCB84()
{
  type metadata accessor for _SNAOPClassfication(0);
  result = sub_1C9A93708();
  if (v0)
  {
    sub_1C97A2CEC(&unk_1EC3CA040);
    swift_dynamicCast();
    result = swift_willThrowTypedImpl();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C98FCC2C()
{
  result = sub_1C9A93708();
  if (v0)
  {
    sub_1C97A2CEC(&unk_1EC3CA040);
    swift_dynamicCast();
    result = swift_willThrowTypedImpl();
    __break(1u);
  }

  return result;
}

void *sub_1C98FCCE0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SafeLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *v6 = 0;
  *(v5 + 16) = v6;
  v2[2] = v5;
  v2[3] = a1;
  v2[4] = a2;
  sub_1C9A91748();
  sub_1C9901E70(&qword_1EC3CD290);
  v2[5] = sub_1C9A92348();
  v2[6] = 0;
  return v2;
}

uint64_t sub_1C98FCD90(uint64_t a1)
{
  v4 = *v1;
  sub_1C97A2CEC(&qword_1EC3CA8D0);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEA4C();
  v6 = sub_1C9A92988();
  sub_1C97ACC50(v2, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = a1;
  v7[6] = v4;

  sub_1C9A1E148(0, 0, v2, &unk_1C9AB28C8, v7);
}

uint64_t sub_1C98FCEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1C9A936D8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C98FCF60, 0, 0);
}

uint64_t sub_1C98FCF60()
{
  sub_1C9A93DE8();
  sub_1C9A93C28();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1C98FD03C;

  return sub_1C99A36F0();
}

uint64_t sub_1C98FD03C()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1C98FD21C;
  }

  else
  {
    v5 = sub_1C98FD1AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C98FD1AC()
{
  sub_1C98FD280(*(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C98FD21C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1C98FD280(uint64_t a1)
{
  v3 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock(v3);
  sub_1C98FD2D4(a1);

  os_unfair_lock_unlock(v3);
}

void sub_1C98FD2D4(uint64_t a1)
{
  if (*(v1 + 48) == a1)
  {
    v3 = v1;
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v4 = sub_1C9A91B58();
    sub_1C97BFF6C(v4, qword_1EC3D3108);
    v5 = sub_1C9A91B38();
    v6 = sub_1C9A92F88();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = a1;
      _os_log_impl(&dword_1C9788000, v5, v6, "Flushing snapshot of AOP state (snapshot ID: %ld)", v7, 0xCu);
      sub_1C9840CEC();
    }

    v8 = *(v3 + 24);
    swift_beginAccess();

    v10 = sub_1C98FD4E8(v9);
    v12 = v11;

    sub_1C9A41AE0(v10, v12 & 0x101);
    v8();
  }

  else
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v13 = sub_1C9A91B58();
    sub_1C97BFF6C(v13, qword_1EC3D3108);
    oslog = sub_1C9A91B38();
    v14 = sub_1C9A92F88();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = a1;
      _os_log_impl(&dword_1C9788000, oslog, v14, "Skipping snapshot of AOP state (snapshot ID: %ld)", v15, 0xCu);
      sub_1C9840CEC();
    }
  }
}

uint64_t sub_1C98FD4E8(uint64_t result)
{
  v1 = 0;
  v2 = result + 64;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v1;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(result + 56) + ((v7 << 8) | (4 * v8))) == 2)
    {
LABEL_11:
      v9 = 0;
      v10 = 1 << *(result + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & *(result + 64);
      v13 = (v10 + 63) >> 6;
      while (v12)
      {
        v14 = v9;
LABEL_20:
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        if (*(*(result + 56) + ((v14 << 8) | (4 * v15))) == 1)
        {
          return *(result + 16);
        }
      }

      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_23;
        }

        if (v14 >= v13)
        {
          return *(result + 16);
        }

        v12 = *(v2 + 8 * v14);
        ++v9;
        if (v12)
        {
          v9 = v14;
          goto LABEL_20;
        }
      }
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      goto LABEL_11;
    }

    v5 = *(v2 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1C98FD620()
{

  return v0;
}

uint64_t sub_1C98FD650()
{
  sub_1C98FD620();

  return swift_deallocClassInstance();
}

void sub_1C98FD6A8()
{
  sub_1C97AEB94();
  v2 = v1;
  v53 = v3;
  v50 = type metadata accessor for SNAOPReport.Payload(0);
  v4 = MEMORY[0x1EEE9AC00](v50);
  v52 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v49 = &v43 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - v8;
  v10 = sub_1C9A916E8();
  sub_1C97AE9C8();
  v51 = v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - v19;
  type metadata accessor for SNTimeUtils();
  v21 = *v2;
  v22 = v2[2];
  v23 = sub_1C97CDA5C(*(v2 + 3));
  if (!v0)
  {
    v44 = v18;
    v45 = v15;
    v47 = v21;
    v48 = v22;
    v46 = v9;
    v24 = v52;
    v25 = v53;
    v59 = v10;
    static SNTimeUtils.timestampToDate(machContinuousTime:)(v23);
    v26 = v48;
    if (v48 < 2)
    {
      v28 = *(v2 + 31);
      v54[0] = *(v2 + 15);
      v54[1] = v28;
      *v55 = *(v2 + 47);
      *&v55[14] = *(v2 + 61);
      v29 = *(v51 + 16);
      v30 = v44;
      v29(v44, v20, v59);
      v31 = v45;
      v29(v45, v20, v59);
      v52 = sub_1C98FE19C(v54);
      v43 = 0;
      v35 = *(v51 + 32);
      v36 = v49;
      v35(v49, v30, v59);
      v37 = type metadata accessor for AOPClassificationResult();
      v35((v36 + *(v37 + 20)), v31, v59);
      v38 = v51;
      v39 = v59;
      *(v36 + *(v37 + 24)) = v52;
      type metadata accessor for SNAOPReport.SuccessPayload(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v27 = v46;
      sub_1C99023F8(v36, v46);
      v26 = v48;
LABEL_10:
      v42 = type metadata accessor for SNAOPReport(0);
      (*(v38 + 32))(&v25[v42[5]], v20, v39);
      sub_1C99023F8(v27, &v25[v42[7]]);
      *v25 = v47;
      *&v25[v42[6]] = v26;
      goto LABEL_11;
    }

    if (v48 == 2)
    {
      sub_1C98FDB10();
      v43 = 0;
      v40 = v57;
      v41 = v58;
      *v24 = v56;
      *(v24 + 8) = v40;
      *(v24 + 16) = v41;
      swift_storeEnumTagMultiPayload();
      v27 = v46;
      sub_1C99023F8(v24, v46);
      goto LABEL_9;
    }

    if (v48 == 3)
    {
      v43 = 0;
      v27 = v46;
      *v46 = *(v2 + 15);
      type metadata accessor for SNAOPReport.SuccessPayload(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
LABEL_9:
      v39 = v59;
      v38 = v51;
      goto LABEL_10;
    }

    sub_1C9902288();
    sub_1C97A7A80();
    sub_1C9813764(v32, 1);
    v33 = sub_1C99032C8();
    v34(v33);
  }

LABEL_11:
  sub_1C97AEB5C();
}

void sub_1C98FDB10()
{
  sub_1C97AEB94();
  v34 = v0;
  v2 = *(v1 + 30);
  v3 = *(v1 + 14);
  v5 = v1[5];
  v4 = v1[6];
  v7 = v1[3];
  v6 = v1[4];
  v8 = v1[1];
  v9 = v1[2];
  v10 = *v1;
  sub_1C9A93D68();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEAD8();
  v16 = v15 - v14;
  if ((v10 & 0x8000) != 0)
  {
    __break(1u);
  }

  else
  {
    v32 = v16;
    v33 = v12;
    v17 = v3 | (v2 << 32);
    *(&v18 + 1) = v17;
    *&v18 = v4;
    v31 = v18 >> 16;
    *(&v18 + 1) = v4;
    *&v18 = v5;
    v19 = v18 >> 16;
    *(&v18 + 1) = v5;
    *&v18 = v6;
    v20 = v18 >> 16;
    *(&v18 + 1) = v8;
    *&v18 = v10;
    v21 = v18 >> 16;
    *(&v18 + 1) = v9;
    *&v18 = v8;
    v22 = v18 >> 16;
    *(&v18 + 1) = v7;
    *&v18 = v9;
    v23 = v18 >> 16;
    v24 = v17 >> 16;
    v35[0] = v10 & 0x7FFF;
    *(&v18 + 1) = v6;
    *&v18 = v7;
    v25 = v13;
    sub_1C97A2CEC(&qword_1EC3CC388);
    v26 = swift_allocObject();
    *(v26 + 32) = v23;
    *(v26 + 40) = v18 >> 16;
    *(v26 + 16) = v21;
    *(v26 + 24) = v22;
    *(v26 + 48) = v20;
    *(v26 + 56) = v19;
    *(v26 + 64) = v31;
    *(v26 + 72) = v24;
    sub_1C9A93D28();
    sub_1C9A93D58();
    sub_1C98FCC2C();

    sub_1C97A2CEC(&qword_1EC3C7BF0);
    sub_1C97AE67C(&qword_1EC3C8EA0, &qword_1EC3C7BF0);
    v27 = sub_1C9A923C8();
    v29 = v28;

    sub_1C9A935B8();

    v30 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v30);

    MEMORY[0x1CCA90230](0x3A6C696174654420, 0xE900000000000020);
    MEMORY[0x1CCA90230](v27, v29);

    (*(v25 + 8))(v32, v33);
    *v34 = v35[0];
    *(v34 + 8) = 0xD000000000000012;
    *(v34 + 16) = 0x80000001C9AD91C0;
    sub_1C97AEB5C();
  }
}

uint64_t sub_1C98FDDD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C99024E8(a1, &v11);

  type metadata accessor for _SNAOPErrorDetails(0);
  if (swift_dynamicCast())
  {
    v11 = sub_1C9A93A98();
    v12 = v4;
    MEMORY[0x1CCA90230](58, 0xE100000000000000);
    v5 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v5);

    v7 = v11;
    v6 = v12;
  }

  else
  {
    v6 = 0xE100000000000000;
    v7 = 58;
  }

  sub_1C99024E8(a1, &v11);
  if (v12)
  {
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  if (v12)
  {
    v9 = v12;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  sub_1C97A592C(&v13);
  MEMORY[0x1CCA90230](v8, v9);

  MEMORY[0x1CCA90230](2112800, 0xE300000000000000);
  MEMORY[0x1CCA90230](v7, v6);

  result = MEMORY[0x1CCA90230](93, 0xE100000000000000);
  *a2 = 0x5B6C6961746564;
  a2[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_1C98FDF74(unsigned int *a1)
{
  sub_1C9A93D68();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEAD8();
  sub_1C97A2CEC(&qword_1EC3CC378);
  v10 = swift_allocObject();
  v3 = *(a1 + 5);
  *(v10 + 16) = *(a1 + 1);
  *(v10 + 32) = v3;
  *(v10 + 48) = *(a1 + 9);
  *(v10 + 64) = *(a1 + 26);
  sub_1C9A93D28();
  sub_1C9A93D58();
  v4 = *a1;
  sub_1C9A93718();

  v5 = sub_1C98FCB84();

  if (*(v5 + 16) != v4)
  {

    sub_1C9902288();
    sub_1C97A7A80();
    sub_1C9813764(v6, 2);
  }

  v7 = sub_1C97AEB30();
  v8(v7);
  return v5;
}

uint64_t sub_1C98FE11C(uint64_t a1)
{
  sub_1C99024E8(a1, &v2);

  sub_1C97A2D34(&v3, &v4);
  type metadata accessor for _SNAOPClassfication(0);
  return swift_dynamicCast();
}

uint64_t sub_1C98FE19C(unsigned int *a1)
{
  v2 = sub_1C98FDF74(a1);
  v3 = v1;
  if (v1)
  {
LABEL_12:
    sub_1C9902288();
    sub_1C97A7A80();
    sub_1C9813764(v26, 2);

    return v3;
  }

  v4 = v2;
  v5 = *(v2 + 16);
  if (!v5)
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v3 = sub_1C99F462C(v9);

    return v3;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v27 = *(v2 + 16);
  result = sub_1C97B8220(0, v5, 0);
  v7 = v27;
  v8 = 0;
  v9 = v29;
  v10 = (v4 + 33);
  while (v8 < *(v4 + 16))
  {
    v11 = *(v10 - 1);
    if (v11 > 5)
    {

      type metadata accessor for SNError();
      sub_1C9A935B8();

      sub_1C99032A8();
      v28 = v19;
      v20 = sub_1C9A93A98();
      MEMORY[0x1CCA90230](v20);

      v21 = sub_1C99031DC();
      v3 = sub_1C9929478(v21, v22, v23, v24, v25, v28);

      swift_willThrow();

      goto LABEL_12;
    }

    v12 = *v10;
    v13 = &unk_1F492A610 + 16 * v11;
    v14 = *(v13 + 4);
    v15 = *(v13 + 5);
    v17 = *(v29 + 16);
    v16 = *(v29 + 24);

    if (v17 >= v16 >> 1)
    {
      result = sub_1C97B8220(v16 > 1, v17 + 1, 1);
      v7 = v27;
    }

    ++v8;
    *(v29 + 16) = v17 + 1;
    v18 = v29 + 24 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
    *(v18 + 48) = v12;
    v10 = (v10 + 5);
    if (v7 == v8)
    {

      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C98FE404(uint64_t a1, uint64_t a2)
{
  result = sub_1C980B6CC(a1, a2, &unk_1F492A610);
  if (v3)
  {
    type metadata accessor for SNError();
    sub_1C9A935B8();

    sub_1C99032A8();
    v11 = v4;
    v5 = sub_1C97AEB30();
    MEMORY[0x1CCA90230](v5);
    MEMORY[0x1CCA90230](0x65646E69206F7420, 0xE900000000000078);
    v6 = sub_1C99031DC();
    sub_1C9929478(v6, v7, v8, v9, v10, v11);

    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result > 0xFF)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C98FE54C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v5 = HIDWORD(a3);
  v31 = a2;
  v6 = sub_1C98FBA38(&v31, &v33);
  v8 = v7;
  v31 = MEMORY[0x1CCA8F2D0](v5 + 12);
  v32 = v9;
  v29[2] = &v31;
  v29[3] = a1;
  v30 = 33;
  sub_1C98FBC4C(sub_1C990305C, v29, v6, v8);
  sub_1C97A5978(v6, v8);
  if (v3)
  {
    v10 = v31;
    v11 = v32;
LABEL_10:
    sub_1C97A5978(v10, v11);
    return v6;
  }

  sub_1C97A5978(v31, v32);
  v12 = sub_1C97BE374();
  if (MEMORY[0x1CCA8F2E0](v12) < 12)
  {
LABEL_9:
    sub_1C9902288();
    sub_1C97A7A80();
    sub_1C9813764(v27, 3);
    v10 = sub_1C97BE374();
    goto LABEL_10;
  }

  v13 = sub_1C97BE374();
  if (MEMORY[0x1CCA8F2E0](v13) < 0x800000000000000CLL)
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  v14 = sub_1C9A915D8();
  v6 = sub_1C98FC040(v14, v15, sub_1C9902158);
  v17 = v16;
  v18 = sub_1C985511C();
  sub_1C97A5978(v18, v19);
  v20 = sub_1C97BE374();
  if (MEMORY[0x1CCA8F2E0](v20) < 12)
  {
    goto LABEL_13;
  }

  v21 = sub_1C9A915D8();
  v23 = v22;
  v24 = sub_1C98FC100(v21, v22);
  sub_1C97A5978(v21, v23);
  if (*(v24 + 16) != v17)
  {

    goto LABEL_9;
  }

  v25 = sub_1C97BE374();
  sub_1C97A5978(v25, v26);
  return v6;
}

uint64_t sub_1C98FE77C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22 = sub_1C9A91568();
  v23 = v9 & 0xFFFFFFFFFFFFFFLL;
  v19[2] = &v22;
  v19[3] = a1;
  v20 = a2;
  sub_1C98FBC4C(sub_1C990305C, v19, a3, a4);
  if (v4)
  {
    v10 = v22;
    v11 = v23;
LABEL_6:
    sub_1C97A5978(v10, v11);
    return a2;
  }

  v12 = v21;
  sub_1C97A5978(v22, v23);
  v13 = sub_1C988EB2C();
  if (MEMORY[0x1CCA8F2E0](v13) != 1)
  {
    sub_1C9901ED4();
    sub_1C97A7A80();
    *v17 = 0;
    swift_willThrow();
    v10 = sub_1C988EB2C();
    goto LABEL_6;
  }

  v14 = sub_1C988EB2C();
  sub_1C98FBD94(v14, v15);
  v16 = sub_1C99030A4();
  sub_1C97A5978(v16, v12);
  return a2;
}

uint64_t sub_1C98FE888@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  sub_1C9A91348();
  swift_allocObject();
  v23 = 0x1B00000000;
  v24 = sub_1C9A91318() | 0x4000000000000000;
  v19[2] = &v23;
  v19[3] = a1;
  v20 = a2;
  sub_1C98FBC4C(sub_1C990305C, v19, a3, a4);
  if (v5)
  {
    v11 = v23;
    v12 = v24;
  }

  else
  {
    v14 = v21;
    v13 = v22;
    sub_1C97A5978(v23, v24);
    if (MEMORY[0x1CCA8F2E0](v14, v13) == 27)
    {
      switch(v13 >> 62)
      {
        case 1uLL:
          v17 = v14 >> 32;
          if (v14 >> 32 < v14)
          {
            __break(1u);
          }

          v16 = v14;
          goto LABEL_11;
        case 2uLL:
          v16 = *(v14 + 16);
          v17 = *(v14 + 24);
LABEL_11:
          sub_1C99020C4(v16, v17, a5);
          break;
        case 3uLL:
          *a5 = 0;
          a5[1] = 0;
          break;
        default:
          *a5 = v14;
          a5[1] = v13 & 0xFFFFFFFFFFFFLL;
          break;
      }
    }

    else
    {
      sub_1C9901ED4();
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }

    v11 = v14;
    v12 = v13;
  }

  return sub_1C97A5978(v11, v12);
}

uint64_t sub_1C98FEA44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v20 = sub_1C9A91568();
  v21 = v9 & 0xFFFFFFFFFFFFFFLL;
  v16[2] = &v20;
  v16[3] = a1;
  v17 = a2;
  sub_1C98FBC4C(sub_1C9901EB4, v16, a3, a4);
  if (v4)
  {
    v10 = v20;
    v11 = v21;
LABEL_6:
    sub_1C97A5978(v10, v11);
    return a2;
  }

  v12 = v18;
  v13 = v19;
  sub_1C97A5978(v20, v21);
  if (MEMORY[0x1CCA8F2E0](v12, v13) != 12)
  {
    sub_1C9901ED4();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v10 = v12;
    v11 = v13;
    goto LABEL_6;
  }

  a2 = sub_1C98FC040(v12, v13, sub_1C9902158);
  sub_1C97A5978(v12, v13);
  return a2;
}

void *sub_1C98FEB88@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1C9A91348();
  swift_allocObject();
  v21 = 0x8800000000;
  v22 = sub_1C9A91318() | 0x4000000000000000;
  v17[2] = &v21;
  v17[3] = a1;
  v18 = a2;
  sub_1C98FBC4C(sub_1C990305C, v17, a3, a4);
  if (v5)
  {
    v11 = v21;
    v12 = v22;
  }

  else
  {
    v13 = v19;
    v14 = v20;
    sub_1C97A5978(v21, v22);
    if (MEMORY[0x1CCA8F2E0](v13, v14) == 136)
    {
      sub_1C98FBE48(v13, v14, __src);
      sub_1C97A5978(v13, v14);
      return memcpy(a5, __src, 0x88uLL);
    }

    sub_1C9901ED4();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    v11 = v13;
    v12 = v14;
  }

  return sub_1C97A5978(v11, v12);
}

uint64_t sub_1C98FECE4(uint64_t a1, unint64_t a2)
{
  v7[2] = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v4 = v6;
      return sub_1C990236C(a1, v4);
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
      return sub_1C990236C(a1, v4);
    case 3uLL:
      memset(v7, 0, 14);
      v2 = v7;
      return sub_1C9901AB0(v7, v2);
    default:
      v7[0] = a1;
      LOWORD(v7[1]) = a2;
      BYTE2(v7[1]) = BYTE2(a2);
      BYTE3(v7[1]) = BYTE3(a2);
      BYTE4(v7[1]) = BYTE4(a2);
      BYTE5(v7[1]) = BYTE5(a2);
      v2 = v7 + BYTE6(a2);
      return sub_1C9901AB0(v7, v2);
  }
}

uint64_t sub_1C98FEE20(uint64_t a1, int a2)
{
  sub_1C97A2CEC(&qword_1EC3C68F0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 16) = xmmword_1C9A9EDD0;
  *(v4 + 56) = v5;
  *(v4 + 32) = 0x3A73746C75736552;
  *(v4 + 40) = 0xE900000000000020;
  sub_1C9A93CA8();

  v7 = a1;
  v8 = a2;
  type metadata accessor for _SNAOPDataReadOut(0);
  return sub_1C9903270(&v7);
}

unint64_t sub_1C98FEEF0(uint64_t a1, int a2, __int16 a3)
{
  *&v49[138] = *MEMORY[0x1E69E9840];
  result = sub_1C98FE404(2036490594, 0xE400000000000000);
  if (!v3)
  {
    v7 = result;
    v8 = sub_1C9903120();
    v9 = sub_1C9903188();
    v10 = sub_1C9903154();
    v11 = sub_1C9903110();
    v12 = sub_1C99032F4(v11);
    v14 = sub_1C98FE404(v12, v13);
    v15 = sub_1C9903110();
    v16 = sub_1C98FE404(v15 & 0xFFFFFFFFFFFFLL | 0x6F6C000000000000, 0xEA0000000000676ELL);
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v29 = a2;
    v30 = 1;
    v31 = a3;
    v32 = 1;
    v33 = 6;
    v34 = v7;
    __asm { FMOV            V0.2S, #0.75 }

    v35 = _D0;
    v36 = v8;
    v37 = _D0;
    v38 = v9;
    v39 = _D0;
    v40 = v10;
    v41 = _D0;
    v42 = v14;
    v43 = _D0;
    v44 = v16;
    v45 = _D0;
    sub_1C98FBA38(&v29, v49);
    sub_1C99031F8();
    sub_1C98FEB88(v22, v23, v24, v25, v26);
    v27 = sub_1C9871794();
    return sub_1C97A5978(v27, v28);
  }

  return result;
}

BOOL sub_1C98FF0A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = BYTE1(a4) == BYTE1(a8) && BYTE2(a4) == BYTE2(a8);
  if (a4 != a8)
  {
    v8 = 0;
  }

  return a1 == a5 && a2 == a6 && a3 == a7 && v8;
}

uint64_t sub_1C98FF0EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43656C6379436F69 && a2 == 0xEC000000746E756FLL;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x695474736574616CLL && a2 == 0xEF706D617453656DLL;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C9AD91E0 == a2;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F7272457473616CLL && a2 == 0xED00006570795472;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001C9AD9200 == a2;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E45746E65696C63 && a2 == 0xED000064656C6261;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000010 && 0x80000001C9AD9220 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C9A93B18();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C98FF344(char a1)
{
  result = 0x43656C6379436F69;
  switch(a1)
  {
    case 1:
      result = 0x695474736574616CLL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6F7272457473616CLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x6E45746E65696C63;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C98FF450()
{
  sub_1C97AEB94();
  v2 = v1;
  sub_1C97A2CEC(&qword_1EC3CC420);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEA4C();
  sub_1C97A5A8C(v2, v2[3]);
  sub_1C9902BE8();
  sub_1C9A93DD8();
  sub_1C9802174();
  sub_1C9A93A68();
  if (!v0)
  {
    sub_1C9802174();
    sub_1C9A93A68();
    sub_1C9802174();
    sub_1C9A93A58();
    sub_1C9802174();
    sub_1C9A93A58();
    sub_1C9802174();
    sub_1C9A93A48();
    sub_1C9802174();
    sub_1C9A93A48();
    sub_1C9802174();
    sub_1C9A93A48();
  }

  v4 = sub_1C97AEB30();
  v5(v4);
  sub_1C97AEB5C();
}

uint64_t sub_1C98FF638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1CCA919B0](a2);
  MEMORY[0x1CCA919B0](a3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CE8();
  sub_1C9A93CE8();
  return sub_1C9A93CE8();
}

uint64_t sub_1C98FF6C0(uint64_t a1, uint64_t a2)
{
  sub_1C97BE32C();
  MEMORY[0x1CCA919B0](a1);
  MEMORY[0x1CCA919B0](a2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CE8();
  sub_1C9A93CE8();
  sub_1C9A93CE8();
  return sub_1C9A93D18();
}

void sub_1C98FF778()
{
  sub_1C97AEB94();
  v1 = v0;
  sub_1C97A2CEC(&qword_1EC3CC400);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97A5A8C(v1, v1[3]);
  sub_1C9902BE8();
  sub_1C9A93DB8();
  sub_1C97C2CA4();
  sub_1C9A93948();
  sub_1C9903294();
  sub_1C97C2CA4();
  sub_1C9A93948();
  sub_1C97C2CA4();
  sub_1C9A93938();
  sub_1C97C2CA4();
  sub_1C9A93938();
  sub_1C97C2CA4();
  sub_1C9A93928();
  sub_1C97C2CA4();
  sub_1C9A93928();
  sub_1C97C2CA4();
  sub_1C9A93928();
  v3 = sub_1C97E89F0();
  v4(v3);
  sub_1C97A592C(v1);
  sub_1C985511C();
  sub_1C97AEB5C();
}

uint64_t sub_1C98FF9A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001C9AD9240 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C9AD9260 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1C98FFA80(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000015;
  }
}

void sub_1C98FFAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v28 = sub_1C97A2CEC(&qword_1EC3CC428);
  sub_1C97AE9C8();
  v30 = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  sub_1C97A5A8C(v27, v27[3]);
  sub_1C9902C3C();
  sub_1C9A93DD8();
  a13 = 0;
  sub_1C9A93A68();
  if (!v23)
  {
    a12 = 1;
    sub_1C9A93A58();
  }

  (*(v30 + 8))(v33, v28);
  sub_1C97AEB5C();
}

uint64_t sub_1C98FFC38(uint64_t a1)
{
  sub_1C97BE32C();
  MEMORY[0x1CCA919B0](a1);
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

uint64_t sub_1C98FFC90(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CC410);
  sub_1C97AE9C8();
  v5 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  sub_1C97A5A8C(a1, v9);
  sub_1C9902C3C();
  sub_1C9A93DB8();
  if (!v1)
  {
    v11[15] = 0;
    sub_1C9A93948();
    sub_1C9903294();
    sub_1C9A93938();
    (*(v5 + 8))(v8, v3);
  }

  sub_1C97A592C(a1);
  return v9;
}

BOOL sub_1C98FFE1C(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
    v3 = v2 && *(a1 + 20) == *(a2 + 20);
    v4 = v3 && *(a1 + 24) == *(a2 + 24);
    v5 = v4 && *(a1 + 25) == *(a2 + 25);
    v6 = v5 && *(a1 + 26) == *(a2 + 26);
    if (v6 && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1C98FFEA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6961764161746164 && a2 == 0xED0000656C62616CLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C98FFF6C(char a1)
{
  if (a1)
  {
    return 0x6961764161746164;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_1C98FFFAC(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3CC3C0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEA4C();
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99027C8();
  sub_1C9A93DD8();
  sub_1C99028C4();
  sub_1C9903230();
  if (!v1)
  {
    sub_1C9902918();
    sub_1C9903230();
  }

  v4 = sub_1C97AEB30();
  return v5(v4);
}

uint64_t sub_1C990010C()
{
  v1 = v0[1];
  MEMORY[0x1CCA919B0](*v0);
  MEMORY[0x1CCA919B0](v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CE8();
  sub_1C9A93CE8();
  sub_1C9A93CE8();
  MEMORY[0x1CCA919B0](v0[4]);
  return sub_1C9A93CF8();
}

uint64_t sub_1C99001A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  sub_1C97BE32C();
  MEMORY[0x1CCA919B0](v1);
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  sub_1C9A93CE8();
  sub_1C9A93CE8();
  sub_1C9A93CE8();
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

uint64_t sub_1C990027C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C97A2CEC(&qword_1EC3CC3A0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99027C8();
  sub_1C9A93DB8();
  if (v2)
  {
    return sub_1C97A592C(a1);
  }

  sub_1C990281C();
  sub_1C9903208();
  sub_1C9902870();
  sub_1C9903208();
  v6 = sub_1C99032BC();
  v7(v6);
  result = sub_1C97A592C(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 25) = v13;
  *(a2 + 26) = v14;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  return result;
}

uint64_t sub_1C9900470(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C99004C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98FF0EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99004EC(uint64_t a1)
{
  v2 = sub_1C9902BE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9900528(uint64_t a1)
{
  v2 = sub_1C9902BE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C9900564(uint64_t a1@<X8>)
{
  sub_1C98FF778();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 26) = BYTE2(v6);
  }
}

uint64_t sub_1C9900608()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C9A93CC8();
  sub_1C98FF638(v4, v1, v2);
  return sub_1C9A93D18();
}

uint64_t sub_1C99006C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98FF9A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99006F0(uint64_t a1)
{
  v2 = sub_1C9902C3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C990072C(uint64_t a1)
{
  v2 = sub_1C9902C3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9900768@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C98FFC90(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1C99007D0()
{
  v1 = *v0;
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](v1);
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

uint64_t sub_1C9900848(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C990089C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98FFEA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99008C4(uint64_t a1)
{
  v2 = sub_1C99027C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9900900(uint64_t a1)
{
  v2 = sub_1C99027C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C990093C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C990027C(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 12);
    *(a2 + 28) = *(v7 + 12);
  }

  return result;
}

uint64_t sub_1C99009A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  sub_1C9A93CC8();
  sub_1C98FF638(v5, v1, v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

uint64_t sub_1C9900A38@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = a2;
  v7 = sub_1C98FBA38(&v24, v25);
  v9 = v8;
  sub_1C98FE888(a1, 37, v7, v8, v25);
  result = sub_1C97A5978(v7, v9);
  if (!v3)
  {
    v11 = v25[1];
    v23 = v25[0];
    v12 = v25[2];
    v13 = v26;
    v21 = v28;
    v22 = v27;
    LODWORD(v25[0]) = a2;
    v14 = sub_1C98FBA38(v25, v25 + 4);
    v16 = sub_1C98FEA44(a1, 36, v14, v15);
    v18 = v17;
    v19 = sub_1C97E89F0();
    result = sub_1C97A5978(v19, v20);
    *a3 = v23;
    *(a3 + 8) = v11;
    *(a3 + 16) = v12;
    *(a3 + 24) = v13;
    *(a3 + 25) = v22;
    *(a3 + 26) = v21;
    *(a3 + 32) = v16;
    *(a3 + 40) = v18;
  }

  return result;
}

uint64_t sub_1C9900BA8(uint64_t a1, int a2)
{
  result = sub_1C9900A38(a1, a2, &v6);
  if (!v2)
  {
    v4 = v6;
    v5[0] = v7[0];
    *(v5 + 12) = *(v7 + 12);
    return sub_1C9903270(&v4);
  }

  return result;
}

uint64_t static SNAOPUtils.toggleAOPServiceTest(enable:)(int a1)
{
  v17 = *MEMORY[0x1E69E9840];
  type metadata accessor for IOService();
  result = sub_1C9903074(*MEMORY[0x1E696CD60], "v20@?0@HIDDevice8B16");
  if (!v1)
  {
    v4 = result;
    v5 = *(result + 16);
    connect[0] = 0;
    v6 = sub_1C9A70E98();
    v7 = IOServiceOpen(v5, v6, 0, connect);
    sub_1C9A3B42C(v7);
    sub_1C99F39D0(connect[0]);
    sub_1C99030A4();

    type metadata accessor for IOConnect();
    v8 = sub_1C99030B4();
    *(v8 + 16) = v5;
    v15 = v4;
    v16 = &off_1F494BDB8;
    *connect = v8;
    v13 = a1;
    v9 = sub_1C98FBA38(&v13, connect);
    v11 = v10;
    sub_1C99A837C(connect, 210, v9, v10);
    v12 = sub_1C99030D0();
    sub_1C97A5978(v12, v11);
    return sub_1C97A592C(connect);
  }

  return result;
}

uint64_t sub_1C9900DF8(uint64_t a1)
{
  v4 = sub_1C9903360();
  sub_1C9903074(*MEMORY[0x1E696CD60], "v20@?0@HIDDevice8B16");
  if (!v1)
  {
    v5 = sub_1C9903254();
    v6 = sub_1C99031BC(v5);
    v7 = sub_1C9A3B42C(v6);
    sub_1C9903348(v7, v8, v9, v10, v11, v12, v13, v14, v20[0]);
    sub_1C99030A4();

    type metadata accessor for IOConnect();
    *(sub_1C99030B4() + 16) = v2;
    sub_1C9903100();
    v16 = sub_1C99A842C(v15, a1, 8);
    v18 = v17;
    v4 = sub_1C98FECE4(v16, v17);
    sub_1C97A5978(v16, v18);
    sub_1C97A592C(v20);
  }

  return v4;
}

uint64_t static SNAOPUtils.readFromAOPServiceNoiseDet()()
{
  v14 = *MEMORY[0x1E69E9840];
  type metadata accessor for IOService();
  result = sub_1C9903074(*MEMORY[0x1E696CD60], "v20@?0@HIDDevice8B16");
  if (!v0)
  {
    v2 = result;
    v3 = *(result + 16);
    connect[0] = 0;
    v4 = sub_1C9A70E98();
    v5 = IOServiceOpen(v3, v4, 0, connect);
    sub_1C9A3B42C(v5);
    v6 = sub_1C99F39D0(connect[0]);
    sub_1C99030D0();

    type metadata accessor for IOConnect();
    v7 = sub_1C99030B4();
    *(v7 + 16) = v6;
    v12 = v2;
    v13 = &off_1F494BDB8;
    *connect = v7;
    v8 = sub_1C98FE54C(connect, 1, 0x6400000000uLL);
    v10 = v9;

    sub_1C98FEE20(v8, v10);
    return sub_1C97A592C(connect);
  }

  return result;
}

uint64_t sub_1C9901140(void (*a1)(void))
{
  sub_1C9903360();
  result = sub_1C9903074(*MEMORY[0x1E696CD60], "v20@?0@HIDDevice8B16");
  if (!v1)
  {
    v5 = sub_1C9903254();
    v6 = sub_1C99031BC(v5);
    v7 = sub_1C9A3B42C(v6);
    sub_1C9903348(v7, v8, v9, v10, v11, v12, v13, v14, v15[0]);
    sub_1C99030A4();

    type metadata accessor for IOConnect();
    *(sub_1C99030B4() + 16) = v2;
    sub_1C9903100();
    a1();
    return sub_1C97A592C(v15);
  }

  return result;
}

uint64_t sub_1C99012E4(int a1, __int16 a2)
{
  sub_1C9903360();
  result = sub_1C9903074(*MEMORY[0x1E696CD60], "v20@?0@HIDDevice8B16");
  if (!v2)
  {
    v6 = *(result + 16);
    v19[0] = 0;
    v7 = sub_1C9A70E98();
    v8 = IOServiceOpen(v6, v7, 0, v19);
    v9 = sub_1C9A3B42C(v8);
    v17 = sub_1C9903348(v9, v10, v11, v12, v13, v14, v15, v16, v19[0]);
    sub_1C99030D0();

    type metadata accessor for IOConnect();
    *(sub_1C99030B4() + 16) = v17;
    sub_1C9903100();
    sub_1C98FEEF0(v18, a1, a2);
    return sub_1C97A592C(v19);
  }

  return result;
}

uint64_t sub_1C99014A8(int a1, char a2)
{
  v23 = *MEMORY[0x1E69E9840];
  type metadata accessor for IOService();
  result = sub_1C9903074(*MEMORY[0x1E696CD60], "v20@?0@HIDDevice8B16");
  if (!v2)
  {
    v6 = result;
    v7 = *(result + 16);
    connect[0] = 0;
    v8 = sub_1C9A70E98();
    v9 = IOServiceOpen(v7, v8, 0, connect);
    sub_1C9A3B42C(v9);
    v10 = sub_1C99F39D0(connect[0]);
    sub_1C99030D0();

    type metadata accessor for IOConnect();
    v11 = sub_1C99030B4();
    *(v11 + 16) = v10;
    v21 = v6;
    v22 = &off_1F494BDB8;
    *connect = v11;
    v16 = a1;
    v17 = 1;
    v18 = a2;
    v12 = sub_1C98FBA38(&v16, &v19);
    v14 = v13;
    sub_1C98FE77C(connect, 35, v12, v13);
    v15 = sub_1C99030D0();
    sub_1C97A5978(v15, v14);
    return sub_1C97A592C(connect);
  }

  return result;
}

uint64_t sub_1C99018A4(int a1)
{
  sub_1C9903360();
  result = sub_1C9903074(*MEMORY[0x1E696CD60], "v20@?0@HIDDevice8B16");
  if (!v1)
  {
    v5 = sub_1C9903254();
    v6 = sub_1C99031BC(v5);
    v7 = sub_1C9A3B42C(v6);
    sub_1C9903348(v7, v8, v9, v10, v11, v12, v13, v14, v16[0]);
    sub_1C99030A4();

    type metadata accessor for IOConnect();
    *(sub_1C99030B4() + 16) = v2;
    sub_1C9903100();
    sub_1C9900BA8(v15, a1);
    return sub_1C97A592C(v16);
  }

  return result;
}

uint64_t sub_1C9901A34()
{
  swift_beginAccess();
  nullsub_1(v0 + 16);
  swift_endAccess();
  return swift_deallocClassInstance();
}

uint64_t sub_1C9901A84@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v2 = *(result + 24);
    v3 = *(result + 26);
    *a2 = *result;
    *(a2 + 16) = *(result + 16);
    *(a2 + 24) = v2;
    *(a2 + 26) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9901AB0(uint64_t a1, uint64_t a2)
{
  result = sub_1C99CCD20(a1, a2, 4);
  if (!v2)
  {
    if (result)
    {
      result = *result;
      if (v4)
      {
        if (v5 != v4)
        {
          sub_1C9886D84();
          swift_allocError();
          *v6 = 3;
          return swift_willThrow();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNAOPUtils(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C9901C3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1C9A91578();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1CCA8F240]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1CCA8F260]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1C9901CB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C9901D7C;

  return sub_1C98FCEA0(a1, v4, v5, v6, v7);
}

uint64_t sub_1C9901D7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C9901E70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C9A91748();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9901ED4()
{
  result = qword_1EC3CC368;
  if (!qword_1EC3CC368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC368);
  }

  return result;
}

void *sub_1C9901F28(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v5 = WORD2(a2);
  v4 = a2;
  return sub_1C9A08814(&v3, BYTE6(a2));
}

uint64_t sub_1C9901FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_1C9A91308();
  v7 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1C9A91328();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t sub_1C9902048(uint64_t a1, uint64_t a2)
{
  result = sub_1C9A91308();
  v5 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    v5 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  result = sub_1C9A91328();
  if (v5)
  {
    return *v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1C99020C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1C9A91308();
  v7 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v7 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_1C9A91328();
    return sub_1C9901A84(v7, a3);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C9902158(uint64_t a1, uint64_t a2)
{
  result = sub_1C9A91308();
  v5 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    v5 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  result = sub_1C9A91328();
  if (v5)
  {
    return *v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

char *sub_1C99021D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1C9A91308();
  v8 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v8 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1C9A91328();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (!v3)
  {

    return memcpy(a3, v8, 0x88uLL);
  }

  return result;
}

unint64_t sub_1C9902288()
{
  result = qword_1EC3CC370;
  if (!qword_1EC3CC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC370);
  }

  return result;
}

char *sub_1C99022DC(uint64_t a1, uint64_t a2)
{
  result = sub_1C9A91308();
  v5 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = sub_1C9A91328();
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return sub_1C9A08814(v5, v9);
}

uint64_t sub_1C990236C(uint64_t a1, uint64_t a2)
{
  result = sub_1C9A91308();
  v5 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1C9A91328();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 + v5;
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return sub_1C9901AB0(v5, v11);
}

uint64_t sub_1C99023F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SNAOPReport.Payload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

float sub_1C990245C@<S0>(void (*a1)(uint64_t *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  a1(&v5);
  if (v2)
  {
    swift_allocError();
  }

  else
  {
    result = *(&v5 + 1);
    *a2 = v5;
    *(a2 + 1) = result;
  }

  return result;
}

uint64_t sub_1C99024E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CC380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1C9902558@<X0>(void *(*a1)(void *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(v6);
  if (v2)
  {
    return swift_allocError();
  }

  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

_BYTE *sub_1C99025DC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C99026B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 44))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C99026D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 44) = v3;
  return result;
}

unint64_t sub_1C990271C()
{
  result = qword_1EC3CC390;
  if (!qword_1EC3CC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC390);
  }

  return result;
}

unint64_t sub_1C9902774()
{
  result = qword_1EC3CC398;
  if (!qword_1EC3CC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC398);
  }

  return result;
}

unint64_t sub_1C99027C8()
{
  result = qword_1EC3CC3A8;
  if (!qword_1EC3CC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3A8);
  }

  return result;
}

unint64_t sub_1C990281C()
{
  result = qword_1EC3CC3B0;
  if (!qword_1EC3CC3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3B0);
  }

  return result;
}

unint64_t sub_1C9902870()
{
  result = qword_1EC3CC3B8;
  if (!qword_1EC3CC3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3B8);
  }

  return result;
}

unint64_t sub_1C99028C4()
{
  result = qword_1EC3CC3C8;
  if (!qword_1EC3CC3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3C8);
  }

  return result;
}

unint64_t sub_1C9902918()
{
  result = qword_1EC3CC3D0;
  if (!qword_1EC3CC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3D0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SNSystemConfiguration(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SNSystemConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

__n128 sub_1C99029BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_1C99029D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 27))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C99029F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
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

  *(result + 27) = v3;
  return result;
}

unint64_t sub_1C9902A34()
{
  result = qword_1EC3CC3D8;
  if (!qword_1EC3CC3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3D8);
  }

  return result;
}

unint64_t sub_1C9902A8C()
{
  result = qword_1EC3CC3E0;
  if (!qword_1EC3CC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3E0);
  }

  return result;
}

unint64_t sub_1C9902AE4()
{
  result = qword_1EC3CC3E8;
  if (!qword_1EC3CC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3E8);
  }

  return result;
}

unint64_t sub_1C9902B3C()
{
  result = qword_1EC3CC3F0;
  if (!qword_1EC3CC3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3F0);
  }

  return result;
}

unint64_t sub_1C9902B94()
{
  result = qword_1EC3CC3F8;
  if (!qword_1EC3CC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC3F8);
  }

  return result;
}

unint64_t sub_1C9902BE8()
{
  result = qword_1EC3CC408;
  if (!qword_1EC3CC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC408);
  }

  return result;
}

unint64_t sub_1C9902C3C()
{
  result = qword_1EC3CC418;
  if (!qword_1EC3CC418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC418);
  }

  return result;
}

_BYTE *sub_1C9902C90(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *storeEnumTagSinglePayload for SNAOPUtils.AOPStatus.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        break;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9902E4C()
{
  result = qword_1EC3CC430;
  if (!qword_1EC3CC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC430);
  }

  return result;
}

unint64_t sub_1C9902EA4()
{
  result = qword_1EC3CC438;
  if (!qword_1EC3CC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC438);
  }

  return result;
}

unint64_t sub_1C9902EFC()
{
  result = qword_1EC3CC440;
  if (!qword_1EC3CC440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC440);
  }

  return result;
}

unint64_t sub_1C9902F54()
{
  result = qword_1EC3CC448;
  if (!qword_1EC3CC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC448);
  }

  return result;
}

unint64_t sub_1C9902FAC()
{
  result = qword_1EC3CC450;
  if (!qword_1EC3CC450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC450);
  }

  return result;
}

unint64_t sub_1C9903004()
{
  result = qword_1EC3CC458;
  if (!qword_1EC3CC458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC458);
  }

  return result;
}

uint64_t sub_1C9903074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1C99F24F8(a1, 0xD000000000000011, a2 | 0x8000000000000000, 0x706F616E73, 0xE500000000000000);
}

uint64_t sub_1C99030B4()
{

  return swift_allocObject();
}

uint64_t sub_1C99030DC(unint64_t *a1)
{

  return sub_1C9901E70(a1);
}

unint64_t sub_1C9903120()
{

  return sub_1C98FE404(0x72615F7265746177, 0xEE00746361666974);
}

unint64_t sub_1C9903154()
{

  return sub_1C98FE404(0x615F657665656C73, 0xEF74636166697472);
}

unint64_t sub_1C9903188()
{

  return sub_1C98FE404(0x7472615F646E6977, 0xED00007463616669);
}

uint64_t sub_1C99031BC(task_port_t owningTask, ...)
{
  va_start(va, owningTask);

  return IOServiceOpen(v1, owningTask, 0, va);
}

uint64_t sub_1C9903208()
{

  return sub_1C9A938F8();
}

uint64_t sub_1C9903230()
{

  return sub_1C9A93A18();
}

uint64_t sub_1C9903254()
{

  return sub_1C9A70E98();
}

uint64_t sub_1C9903270(uint64_t a1)
{

  return MEMORY[0x1EEE6B538](a1, 0, 0, 0, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL);
}

void sub_1C9903308()
{
  ++*(v0 + 48);

  os_unfair_lock_unlock(v1);
}

uint64_t sub_1C9903328()
{

  return swift_beginAccess();
}

uint64_t sub_1C9903348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{

  return sub_1C99F39D0(a9);
}

uint64_t sub_1C9903360()
{

  return type metadata accessor for IOService();
}

uint64_t sub_1C9903378()
{
  v1 = sub_1C97A2CEC(&qword_1EC3CC488);
  sub_1C97AE9C8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = *(v0 + 16);
  v8 = swift_allocObject();
  v8[2] = sub_1C97AE650;
  v8[3] = v0;
  v8[4] = v7;

  sub_1C97A2CEC(&qword_1EC3C8C70);
  sub_1C97AE67C(&qword_1EC3C8C78, &qword_1EC3C8C70);
  sub_1C9A91EF8();
  sub_1C97AE67C(&qword_1EC3CC490, &qword_1EC3CC488);
  v9 = sub_1C9A91F28();
  (*(v3 + 8))(v6, v1);
  return v9;
}

uint64_t sub_1C9903544(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CC478);
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9903F38();
  sub_1C9A93DD8();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1C990364C(uint64_t a1)
{
  v2 = sub_1C9903F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9903688(uint64_t a1)
{
  v2 = sub_1C9903F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C9903700(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v37 = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v8 = sub_1C9A91748();
  sub_1C97AE9C8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9A91738();
  v14 = type metadata accessor for IOConnect();
  v35 = v14;
  v36 = &off_1F494BDB8;
  v34[0] = a1;

  sub_1C98FC668(v34);
  if (v3)
  {
    v15 = sub_1C9904084();
    v16(v15, v8);

    sub_1C97A592C(v34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = v7;
    v28 = v8;
    v29 = a2;
    sub_1C97A592C(v34);
    v35 = v14;
    v36 = &off_1F494BDB8;
    v34[0] = a1;
    v30 = 1;

    v17 = sub_1C98FBA38(&v30, &v31);
    v19 = v18;
    sub_1C99A837C(v34, 210, v17, v18);
    sub_1C97A5978(v17, v19);
    sub_1C97A592C(v34);
    v35 = v14;
    v36 = &off_1F494BDB8;
    v34[0] = a1;
    v30 = 0;
    v31 = 1;
    v32 = 1;

    v20 = sub_1C98FBA38(&v30, &v33);
    v22 = v21;
    sub_1C98FE77C(v34, 35, v20, v21);
    sub_1C97A5978(v20, v22);
    sub_1C97A592C(v34);
    *(v4 + OBJC_IVAR____TtCV13SoundAnalysis20SharedAOPDebugStream15AOPSubscription_connect) = a1;
    v24 = v28;
    (*(v10 + 16))(v4 + OBJC_IVAR____TtCV13SoundAnalysis20SharedAOPDebugStream15AOPSubscription_trackingID, v13, v28);
    *(v4 + OBJC_IVAR____TtCV13SoundAnalysis20SharedAOPDebugStream15AOPSubscription_analytics) = v29;

    sub_1C98FC6BC(v13, 0);

    v25 = sub_1C9904084();
    v26(v25, v24);
  }

  return v4;
}

uint64_t sub_1C9903A94()
{
  v1 = v0;
  v29 = *MEMORY[0x1E69E9840];
  v2 = sub_1C9A91748();
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = OBJC_IVAR____TtCV13SoundAnalysis20SharedAOPDebugStream15AOPSubscription_analytics;
  v8 = *(v4 + 16);
  v21[0] = OBJC_IVAR____TtCV13SoundAnalysis20SharedAOPDebugStream15AOPSubscription_trackingID;
  v8(v7, v0 + OBJC_IVAR____TtCV13SoundAnalysis20SharedAOPDebugStream15AOPSubscription_trackingID, v2);

  sub_1C98FC938(v7);

  v9 = *(v4 + 8);
  v9(v7, v2);
  v10 = OBJC_IVAR____TtCV13SoundAnalysis20SharedAOPDebugStream15AOPSubscription_connect;
  v11 = *(v0 + OBJC_IVAR____TtCV13SoundAnalysis20SharedAOPDebugStream15AOPSubscription_connect);
  v12 = type metadata accessor for IOConnect();
  v27 = v12;
  v28 = &off_1F494BDB8;
  v26[0] = v11;
  v22 = 0;

  v13 = sub_1C98FBA38(&v22, &v23);
  v15 = v14;
  sub_1C99A837C(v26, 210, v13, v14);
  sub_1C97A5978(v13, v15);
  sub_1C97A592C(v26);
  v16 = *(v1 + v10);
  v27 = v12;
  v28 = &off_1F494BDB8;
  v26[0] = v16;
  v22 = 0;
  v23 = 1;
  v24 = 0;

  v17 = sub_1C98FBA38(&v22, &v25);
  v19 = v18;
  sub_1C98FE77C(v26, 35, v17, v18);
  sub_1C97A5978(v17, v19);
  sub_1C97A592C(v26);
  v9((v1 + v21[0]), v2);

  return v1;
}

uint64_t sub_1C9903D74()
{
  sub_1C9903A94();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharedAOPDebugStream.AOPSubscription()
{
  result = qword_1EC3CC460;
  if (!qword_1EC3CC460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9903E20()
{
  result = sub_1C9A91748();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C9903EE4()
{
  result = qword_1EC3CC470;
  if (!qword_1EC3CC470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC470);
  }

  return result;
}

unint64_t sub_1C9903F38()
{
  result = qword_1EC3CC480;
  if (!qword_1EC3CC480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC480);
  }

  return result;
}

uint64_t sub_1C9903F8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98C051C();
  *a1 = result;
  return result;
}

unint64_t sub_1C9903FD8()
{
  result = qword_1EC3CC498;
  if (!qword_1EC3CC498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC498);
  }

  return result;
}

unint64_t sub_1C9904030()
{
  result = qword_1EC3CC4A0;
  if (!qword_1EC3CC4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC4A0);
  }

  return result;
}

id sub_1C9904090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC13SoundAnalysis18SNResultsForwarder_resultsHandler];
  *v10 = a3;
  *(v10 + 1) = a4;
  v11 = &v4[OBJC_IVAR____TtC13SoundAnalysis18SNResultsForwarder_completionHandler];
  *v11 = a1;
  *(v11 + 1) = a2;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_1C99043D4()
{
  sub_1C99045AC();
  v3();
  return v0(v2, v1);
}

uint64_t sub_1C9904420()
{
  sub_1C99045AC();
  v3();
  return v0(v2, v1);
}

void sub_1C990446C(uint64_t a1, void *a2)
{
  sub_1C99045C4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a2)
    {
      if ([Strong respondsToSelector_])
      {
        v6 = a2;
        v7 = sub_1C9A913B8();
        [v5 request:v2 didFailWithError:v7];

        swift_unknownObjectRelease();
        return;
      }
    }

    else if ([Strong respondsToSelector_])
    {
      [v5 requestDidComplete_];
    }

    swift_unknownObjectRelease();
  }
}

void *sub_1C9904548(uint64_t a1, uint64_t a2)
{
  sub_1C99045C4();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result request:v2 didProduceResult:a2];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C99045C4()
{

  return swift_beginAccess();
}

uint64_t sub_1C99045E8()
{
  swift_beginAccess();
  nullsub_1(v0 + 16);
  swift_endAccess();
  return swift_deallocClassInstance();
}

uint64_t sub_1C990465C()
{
  swift_beginAccess();
  nullsub_1(v0 + 16);
  swift_endAccess();
  return swift_deallocClassInstance();
}

uint64_t sub_1C99046D0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v35 = a2;
  v36 = a4;
  v34 = a1;
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v30 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v30 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v30 - v19;
  (*(v21 + 8))(v22, v21);
  v23 = *(v9 + 16);
  v23(a6, v34, a3);
  v23(v18, v35, a3);
  if (sub_1C9A92438())
  {
    v24 = *(v9 + 8);
    v24(v18, a3);
  }

  else
  {
    v25 = *(v36 + 8);
    v31 = v23;
    v32 = v25;
    v33 = v36 + 8;
    v34 = a5;
    v26 = (v9 + 8);
    v35 = v20;
    v27 = (v9 + 32);
    v30[1] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    do
    {
      v31(v15, v18, a3);
      v32(a6, v18, a3, v36);
      v24 = *v26;
      (*v26)(v18, a3);
      v24(a6, a3);
      v28 = *v27;
      (*v27)(v18, v12, a3);
      v28(a6, v15, a3);
    }

    while ((sub_1C9A92438() & 1) == 0);
    v20 = v35;
    v24(v18, a3);
  }

  return (v24)(v20, a3);
}

uint64_t *sub_1C9904970@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a2;
  if (*a2)
  {
    if (*result != 0x8000000000000000 || v3 != -1)
    {
      *a3 = *result % v3;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C99049A4@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a2;
  if (*a2)
  {
    if (*result != 0x8000000000000000 || v3 != -1)
    {
      *a3 = *result / v3;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for SNNumberUtils.DomainError(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C9904A84()
{
  result = qword_1EC3CC4C0;
  if (!qword_1EC3CC4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC4C0);
  }

  return result;
}

uint64_t sub_1C9904B10(uint64_t a1, uint64_t (*a2)(uint64_t, void *, id))
{
  v40 = a2;
  v29 = v2;
  v3 = MGGetProductType();
  sub_1C989B2F8(v3, v32);
  if (v32[6])
  {
    v4 = v32[0];

    sub_1C989ACF0(v4, v33);
    v5 = v36;
    v38 = v34;

    sub_1C97DA1E0(&v38, &qword_1EC3C7DB0);
    v37 = v35;
    sub_1C97DA1E0(&v37, &qword_1EC3C7DB8);

    v5(__dst, v6);

    v7 = __dst[0];
    v8 = __dst[1];
    v9 = __dst[2];
    v10 = __dst[3];
    v12 = __dst[4];
    v11 = __dst[5];
    v13 = __dst[6];
    v14 = BYTE1(__dst[6]);
    v15 = BYTE2(__dst[6]);
    v16 = BYTE3(__dst[6]);
    v17 = BYTE4(__dst[6]);
    v18 = BYTE5(__dst[6]);
    v19 = __dst[7];
    v20 = __dst[8];
  }

  else
  {
    if (qword_1EC3C5E08 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &qword_1EC3D33B0, 0x41uLL);
    v28 = __dst[7];
    v26 = BYTE5(__dst[6]);
    v27 = __dst[8];
    v24 = BYTE3(__dst[6]);
    v25 = BYTE4(__dst[6]);
    v15 = BYTE2(__dst[6]);
    v14 = BYTE1(__dst[6]);
    v13 = __dst[6];
    v12 = __dst[4];
    v11 = __dst[5];
    v9 = __dst[2];
    v10 = __dst[3];
    v7 = __dst[0];
    v8 = __dst[1];
    sub_1C97A6264(__dst, __src);
    v16 = v24;
    v17 = v25;
    v18 = v26;
    v20 = v27;
    v19 = v28;
  }

  __src[0] = v7;
  __src[1] = v8;
  __src[2] = v9;
  __src[3] = v10;
  __src[4] = v12;
  __src[5] = v11;
  LOBYTE(__src[6]) = v13;
  BYTE1(__src[6]) = v14;
  BYTE2(__src[6]) = v15;
  BYTE3(__src[6]) = v16;
  BYTE4(__src[6]) = v17;
  BYTE5(__src[6]) = v18;
  __src[7] = v19;
  LOBYTE(__src[8]) = v20;
  memcpy(__dst, __src, 0x41uLL);
  v21 = v29;
  v22 = v40(a1, __dst, v21);
  sub_1C97E8084(__src);

  return v22;
}

uint64_t sub_1C9904DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C97AA4F0(&unk_1EC3D0A80);
  sub_1C97AE9EC();
  sub_1C97AE67C(v13, &unk_1EC3D0A80);
  v22 = a7;
  v14 = sub_1C9A91CB8();
  sub_1C97AE9C8();
  v16 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97FB2C8();
  v18 = sub_1C97CB094();
  sub_1C990CA40(v18, v19, a4, a5, a6, a8);
  if (!v24)
  {
    v20 = swift_allocObject();
    v20[2] = a6;
    v20[3] = v22;
    v20[4] = a8;
    sub_1C9A92048();

    swift_getWitnessTable();
    a1 = sub_1C9A91F28();
    (*(v16 + 8))(&qword_1C9AB34D8, v14);
  }

  return a1;
}

uint64_t *sub_1C9905030(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = (a1 & 0x7FFFFFFFFFFFFFFFLL);
    type metadata accessor for SNSoundPrintFeatureExtractor();
    swift_allocObject();
    v5 = sub_1C99C45E8(v7);
    v8 = v7;
  }

  else
  {
    type metadata accessor for SNLogMelBasedFeatureExtractor();
    v3 = swift_allocObject();
    v4 = a1;
    v5 = v3;
    v6 = sub_1C9843614(v4);
    if (!v1)
    {
      return v6;
    }
  }

  return v5;
}

uint64_t sub_1C99050E0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  else if (a2 < 0)
  {
    return 0;
  }

  sub_1C97BD318(0, &qword_1EC3C54A0);
  return sub_1C9A931E8() & 1;
}

uint64_t sub_1C9905198(unint64_t a1)
{
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](a1 >> 63);
  sub_1C9A931F8();
  return sub_1C9A93D18();
}

uint64_t sub_1C99051FC()
{
  v1 = *v0;
  sub_1C9A93CC8();
  sub_1C9905154(v3, v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C990524C(__int128 *a1, uint64_t a2, void *a3)
{
  v82 = a1;
  v4 = sub_1C97A2CEC(&qword_1EC3CC4D8);
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v75 = v64 - v5;
  v6 = sub_1C97A2CEC(&unk_1EC3C9910);
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v72 = (v64 - v7);
  v8 = sub_1C9A91C28();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C97A2CEC(&qword_1EC3C8240);
  v74 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v64 - v12;
  v14 = sub_1C97A2CEC(&unk_1EC3CC4E0);
  v73 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v64 - v15;
  v17 = sub_1C97A2CEC(&qword_1EC3C8460);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v64 - v18;
  v20 = a3;
  v21 = v83;
  result = sub_1C97C0DDC();
  if (v21)
  {

    return v19;
  }

  v69 = v10;
  v67 = v16;
  v70 = v13;
  v83 = 0;
  v68 = v14;
  v71 = v19;
  v24 = v82[1];
  v84 = *v82;
  v85 = v24;
  v25 = v82[3];
  v86 = v82[2];
  v87 = v25;
  v26 = *(&v84 + 1);
  if ((*(&v84 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(*(&v84 + 1)))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = v85;
  v28 = result;
  v29 = v23;
  ObjectType = swift_getObjectType();
  v31 = *(v29 + 8);
  v32 = v83;
  (*(v31 + 8))(v26, ObjectType, v31, v27);
  if (v32)
  {

    swift_unknownObjectRelease();
    return v19;
  }

  v19 = (*(v31 + 16))(ObjectType, v31);
  sub_1C9A69F34(v19);
  (*(v29 + 32))(ObjectType, v29);
  v33 = v20;
  if (sub_1C9A6B6A4(v19) != 1 || (v34 = sub_1C9A6BD8C(v19)) == 0)
  {
LABEL_17:
    sub_1C986EE54();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    return v19;
  }

  v35 = v34;
  if (sub_1C9A64668(v34) != 1)
  {

    goto LABEL_17;
  }

  sub_1C9A6681C(v35, 0);
  v37 = v36;
  v38 = v36;
  result = sub_1C9A66CAC(v35, 0);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v37 < 9.22337204e18)
  {
    sub_1C97DD3BC(result, v37);
    v83 = 0;
    v40 = sub_1C98BF080();
    v64[1] = v40;

    v88 = v40;
    (*(v78 + 104))(v69, *MEMORY[0x1E695BD20], v79);
    v41 = v72;
    *v72 = sub_1C990DC68;
    v41[1] = 0;
    (*(v80 + 104))(v41, *MEMORY[0x1E695BD48], v81);
    v82 = v33;
    v66 = v35;
    sub_1C97A2CEC(&unk_1EC3C7390);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
    v42 = v69;
    sub_1C9A92018();
    (*(v80 + 8))(v41, v81);
    (*(v78 + 8))(v42, v79);

    v43 = swift_allocObject();
    v65 = v19;
    *(v43 + 16) = sub_1C98063A0;
    *(v43 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240);
    v44 = v67;
    v45 = v70;
    sub_1C9A91F68();

    (*(v74 + 8))(v45, v11);
    v46 = sub_1C9A69970(v19);
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    v48 = v71;
    (*(v73 + 32))(v71, v44, v68);
    v49 = v48 + *(v17 + 84);
    *v49 = 0;
    *(v49 + 8) = 0;
    *(v49 + 16) = 2;
    v50 = (v48 + *(v17 + 88));
    *v50 = sub_1C991136C;
    v50[1] = v47;
    v51 = swift_allocObject();
    *(v51 + 16) = v27;
    v52 = v51;
    v53 = swift_allocObject();
    *(v53 + 16) = v28;
    *(v53 + 24) = v29;
    v54 = swift_allocObject();
    *(v54 + 16) = v28;
    *(v54 + 24) = v29;
    v55 = swift_allocObject();
    *(v55 + 24) = v29;
    swift_unknownObjectWeakInit();
    v56 = swift_allocObject();
    v64[2] = v28;
    v57 = v56;
    v56[2] = v55;
    v56[3] = sub_1C98714C8;
    v56[4] = v52;
    v81 = v52;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1C99113C4;
    *(v58 + 24) = v53;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1C991133C;
    *(v59 + 24) = v54;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1C9911370;
    *(v60 + 24) = v57;
    v61 = swift_allocObject();
    v61[2] = sub_1C987141C;
    v61[3] = v58;
    v61[4] = sub_1C99113AC;
    v61[5] = v59;
    v61[6] = sub_1C9911388;
    v61[7] = v60;
    swift_unknownObjectRetain_n();

    v62 = v75;
    sub_1C990E0A8(0, sub_1C9911354, v61, v75);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8);
    v63 = v77;
    v19 = sub_1C9A91F28();
    swift_unknownObjectRelease();

    (*(v76 + 8))(v62, v63);
    sub_1C97DA1E0(v71, &qword_1EC3C8460);

    return v19;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1C9905D68(__int128 *a1, uint64_t a2, void *a3)
{
  v82 = a1;
  v4 = sub_1C97A2CEC(&qword_1EC3CC4D8);
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v75 = v64 - v5;
  v6 = sub_1C97A2CEC(&unk_1EC3C9910);
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v72 = (v64 - v7);
  v8 = sub_1C9A91C28();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C97A2CEC(&qword_1EC3C8240);
  v74 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v64 - v12;
  v14 = sub_1C97A2CEC(&unk_1EC3CC4E0);
  v73 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v64 - v15;
  v17 = sub_1C97A2CEC(&qword_1EC3C8460);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v64 - v18;
  v20 = a3;
  v21 = v83;
  result = sub_1C97C3610();
  if (v21)
  {

    return v19;
  }

  v69 = v10;
  v67 = v16;
  v70 = v13;
  v83 = 0;
  v68 = v14;
  v71 = v19;
  v24 = v82[1];
  v84 = *v82;
  v85 = v24;
  v25 = v82[3];
  v86 = v82[2];
  v87 = v25;
  v26 = *(&v84 + 1);
  if ((*(&v84 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(*(&v84 + 1)))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = v85;
  v28 = result;
  v29 = v23;
  ObjectType = swift_getObjectType();
  v31 = *(v29 + 8);
  v32 = v83;
  (*(v31 + 8))(v26, ObjectType, v31, v27);
  if (v32)
  {

    swift_unknownObjectRelease();
    return v19;
  }

  v19 = (*(v31 + 16))(ObjectType, v31);
  sub_1C9A69F34(v19);
  (*(v29 + 32))(ObjectType, v29);
  v33 = v20;
  if (sub_1C9A6B6A4(v19) != 1 || (v34 = sub_1C9A6BD8C(v19)) == 0)
  {
LABEL_17:
    sub_1C986EE54();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    return v19;
  }

  v35 = v34;
  if (sub_1C9A64668(v34) != 1)
  {

    goto LABEL_17;
  }

  sub_1C9A6681C(v35, 0);
  v37 = v36;
  v38 = v36;
  result = sub_1C9A66CAC(v35, 0);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v37 < 9.22337204e18)
  {
    sub_1C97DD3BC(result, v37);
    v83 = 0;
    v40 = sub_1C98BF080();
    v64[1] = v40;

    v88 = v40;
    (*(v78 + 104))(v69, *MEMORY[0x1E695BD20], v79);
    v41 = v72;
    *v72 = sub_1C990DC68;
    v41[1] = 0;
    (*(v80 + 104))(v41, *MEMORY[0x1E695BD48], v81);
    v82 = v33;
    v66 = v35;
    sub_1C97A2CEC(&unk_1EC3C7390);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
    v42 = v69;
    sub_1C9A92018();
    (*(v80 + 8))(v41, v81);
    (*(v78 + 8))(v42, v79);

    v43 = swift_allocObject();
    v65 = v19;
    *(v43 + 16) = sub_1C98063A0;
    *(v43 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240);
    v44 = v67;
    v45 = v70;
    sub_1C9A91F68();

    (*(v74 + 8))(v45, v11);
    v46 = sub_1C9A69970(v19);
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    v48 = v71;
    (*(v73 + 32))(v71, v44, v68);
    v49 = v48 + *(v17 + 84);
    *v49 = 0;
    *(v49 + 8) = 0;
    *(v49 + 16) = 2;
    v50 = (v48 + *(v17 + 88));
    *v50 = sub_1C991136C;
    v50[1] = v47;
    v51 = swift_allocObject();
    *(v51 + 16) = v27;
    v52 = v51;
    v53 = swift_allocObject();
    *(v53 + 16) = v28;
    *(v53 + 24) = v29;
    v54 = swift_allocObject();
    *(v54 + 16) = v28;
    *(v54 + 24) = v29;
    v55 = swift_allocObject();
    *(v55 + 24) = v29;
    swift_unknownObjectWeakInit();
    v56 = swift_allocObject();
    v64[2] = v28;
    v57 = v56;
    v56[2] = v55;
    v56[3] = sub_1C98714C8;
    v56[4] = v52;
    v81 = v52;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1C99113C4;
    *(v58 + 24) = v53;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1C991133C;
    *(v59 + 24) = v54;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1C9911370;
    *(v60 + 24) = v57;
    v61 = swift_allocObject();
    v61[2] = sub_1C987141C;
    v61[3] = v58;
    v61[4] = sub_1C99113AC;
    v61[5] = v59;
    v61[6] = sub_1C9911388;
    v61[7] = v60;
    swift_unknownObjectRetain_n();

    v62 = v75;
    sub_1C990E0A8(0, sub_1C9911354, v61, v75);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8);
    v63 = v77;
    v19 = sub_1C9A91F28();
    swift_unknownObjectRelease();

    (*(v76 + 8))(v62, v63);
    sub_1C97DA1E0(v71, &qword_1EC3C8460);

    return v19;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1C9906884(__int128 *a1, uint64_t a2, char *a3)
{
  v85 = a1;
  v86 = a3;
  v84 = sub_1C97A2CEC(&qword_1EC3CC4D8);
  v77 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = v65 - v4;
  v81 = sub_1C97A2CEC(&unk_1EC3C9910);
  v78 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v82 = (v65 - v5);
  v80 = sub_1C9A91C28();
  v76 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v7 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C97A2CEC(&qword_1EC3C8240);
  v75 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v65 - v9;
  v11 = sub_1C97A2CEC(&unk_1EC3CC4E0);
  v79 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v65 - v12;
  v14 = sub_1C97A2CEC(&qword_1EC3C8460);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v65 - v15;
  type metadata accessor for SNSoundActionsDetector();
  swift_allocObject();
  v86 = v86;
  sub_1C99D2E34(v86);
  if (v3)
  {

    return v14;
  }

  v18 = v17;
  v73 = v7;
  v19 = v82;
  v69 = v14;
  v70 = v13;
  v71 = v10;
  v72 = v11;
  v74 = v16;
  v20 = v83;
  v21 = v84;
  v22 = v85[1];
  v87 = *v85;
  v88 = v22;
  v23 = v85[3];
  v89 = v85[2];
  v90 = v23;
  result = *(&v87 + 1);
  if ((*(&v87 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(*(&v87 + 1)))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25 = v88;
  v26 = v18;
  sub_1C99D3BA8();
  v27 = sub_1C99D3B54();
  v68 = v26;
  sub_1C9A69F34(v27);
  if (sub_1C9A6B6A4(v27) != 1)
  {
    goto LABEL_15;
  }

  v28 = sub_1C9A6BD8C(v27);
  if (!v28)
  {
    goto LABEL_15;
  }

  v14 = v28;
  if (sub_1C9A64668(v28) != 1)
  {

LABEL_15:
    sub_1C986EE54();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();

    return v14;
  }

  sub_1C9A6681C(v14, 0);
  v30 = v29;
  v31 = v14;
  v32 = v29;
  v33 = v31;
  result = sub_1C9A66CAC(v31, 0);
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v85 = v27;
  if (v30 < 9.22337204e18)
  {
    v34 = v33;
    v35 = v19;
    sub_1C97DD3BC(result, v30);
    v36 = v81;
    v66 = v8;
    v38 = v80;
    v39 = sub_1C98BF080();
    v65[2] = v39;

    v91 = v39;
    v40 = v76;
    (*(v76 + 104))(v73, *MEMORY[0x1E695BD20], v38);
    *v35 = sub_1C990DC68;
    v35[1] = 0;
    v41 = v78;
    (*(v78 + 104))(v35, *MEMORY[0x1E695BD48], v36);
    v67 = v34;
    v65[1] = sub_1C97A2CEC(&unk_1EC3C7390);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
    v42 = v35;
    v43 = v71;
    v44 = v73;
    sub_1C9A92018();
    (*(v41 + 8))(v42, v81);
    (*(v40 + 8))(v44, v80);

    v45 = swift_allocObject();
    *(v45 + 16) = sub_1C98063A0;
    *(v45 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240);
    v46 = v70;
    v47 = v66;
    sub_1C9A91F68();

    (*(v75 + 8))(v43, v47);
    v48 = sub_1C9A69970(v85);
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    v50 = v74;
    (*(v79 + 32))(v74, v46, v72);
    v51 = v69;
    v52 = v50 + v69[21];
    *v52 = 0;
    *(v52 + 8) = 0;
    *(v52 + 16) = 2;
    v53 = (v50 + v51[22]);
    *v53 = sub_1C991136C;
    v53[1] = v49;
    v82 = swift_allocObject();
    v82[2] = v25;
    v54 = swift_allocObject();
    v55 = v68;
    *(v54 + 16) = v68;
    *(v54 + 24) = &off_1F4949830;
    v56 = v54;
    v81 = v54;
    v57 = swift_allocObject();
    *(v57 + 16) = v55;
    *(v57 + 24) = &off_1F4949830;
    v58 = swift_allocObject();
    *(v58 + 24) = &off_1F4949830;
    swift_unknownObjectWeakInit();
    v59 = swift_allocObject();
    v59[2] = v58;
    v59[3] = sub_1C98714C8;
    v59[4] = v82;
    v60 = swift_allocObject();
    v80 = v60;
    *(v60 + 16) = sub_1C99113C4;
    *(v60 + 24) = v56;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_1C991133C;
    *(v61 + 24) = v57;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_1C9911370;
    *(v62 + 24) = v59;
    v63 = swift_allocObject();
    v64 = v80;
    v63[2] = sub_1C987141C;
    v63[3] = v64;
    v63[4] = sub_1C99113AC;
    v63[5] = v61;
    v63[6] = sub_1C9911388;
    v63[7] = v62;
    swift_retain_n();

    sub_1C990E0A8(0, sub_1C9911354, v63, v20);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8);
    v14 = sub_1C9A91F28();

    (*(v77 + 8))(v20, v21);
    sub_1C97DA1E0(v74, &qword_1EC3C8460);

    return v14;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C99073BC(__int128 *a1, uint64_t a2, void *a3)
{
  v82 = a1;
  v4 = sub_1C97A2CEC(&qword_1EC3CC4D8);
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v75 = v64 - v5;
  v6 = sub_1C97A2CEC(&unk_1EC3C9910);
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v72 = (v64 - v7);
  v8 = sub_1C9A91C28();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C97A2CEC(&qword_1EC3C8240);
  v74 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v64 - v12;
  v14 = sub_1C97A2CEC(&unk_1EC3CC4E0);
  v73 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v64 - v15;
  v17 = sub_1C97A2CEC(&qword_1EC3C8460);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v64 - v18;
  v20 = a3;
  v21 = v83;
  result = sub_1C985A6AC();
  if (v21)
  {

    return v19;
  }

  v69 = v10;
  v67 = v16;
  v70 = v13;
  v83 = 0;
  v68 = v14;
  v71 = v19;
  v24 = v82[1];
  v84 = *v82;
  v85 = v24;
  v25 = v82[3];
  v86 = v82[2];
  v87 = v25;
  v26 = *(&v84 + 1);
  if ((*(&v84 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(*(&v84 + 1)))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = v85;
  v28 = result;
  v29 = v23;
  ObjectType = swift_getObjectType();
  v31 = *(v29 + 8);
  v32 = v83;
  (*(v31 + 8))(v26, ObjectType, v31, v27);
  if (v32)
  {

    swift_unknownObjectRelease();
    return v19;
  }

  v19 = (*(v31 + 16))(ObjectType, v31);
  sub_1C9A69F34(v19);
  (*(v29 + 32))(ObjectType, v29);
  v33 = v20;
  if (sub_1C9A6B6A4(v19) != 1 || (v34 = sub_1C9A6BD8C(v19)) == 0)
  {
LABEL_17:
    sub_1C986EE54();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    return v19;
  }

  v35 = v34;
  if (sub_1C9A64668(v34) != 1)
  {

    goto LABEL_17;
  }

  sub_1C9A6681C(v35, 0);
  v37 = v36;
  v38 = v36;
  result = sub_1C9A66CAC(v35, 0);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v37 < 9.22337204e18)
  {
    sub_1C97DD3BC(result, v37);
    v83 = 0;
    v40 = sub_1C98BF080();
    v64[1] = v40;

    v88 = v40;
    (*(v78 + 104))(v69, *MEMORY[0x1E695BD20], v79);
    v41 = v72;
    *v72 = sub_1C990DC68;
    v41[1] = 0;
    (*(v80 + 104))(v41, *MEMORY[0x1E695BD48], v81);
    v82 = v33;
    v66 = v35;
    sub_1C97A2CEC(&unk_1EC3C7390);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
    v42 = v69;
    sub_1C9A92018();
    (*(v80 + 8))(v41, v81);
    (*(v78 + 8))(v42, v79);

    v43 = swift_allocObject();
    v65 = v19;
    *(v43 + 16) = sub_1C98063A0;
    *(v43 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240);
    v44 = v67;
    v45 = v70;
    sub_1C9A91F68();

    (*(v74 + 8))(v45, v11);
    v46 = sub_1C9A69970(v19);
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    v48 = v71;
    (*(v73 + 32))(v71, v44, v68);
    v49 = v48 + *(v17 + 84);
    *v49 = 0;
    *(v49 + 8) = 0;
    *(v49 + 16) = 2;
    v50 = (v48 + *(v17 + 88));
    *v50 = sub_1C991136C;
    v50[1] = v47;
    v51 = swift_allocObject();
    *(v51 + 16) = v27;
    v52 = v51;
    v53 = swift_allocObject();
    *(v53 + 16) = v28;
    *(v53 + 24) = v29;
    v54 = swift_allocObject();
    *(v54 + 16) = v28;
    *(v54 + 24) = v29;
    v55 = swift_allocObject();
    *(v55 + 24) = v29;
    swift_unknownObjectWeakInit();
    v56 = swift_allocObject();
    v64[2] = v28;
    v57 = v56;
    v56[2] = v55;
    v56[3] = sub_1C98714C8;
    v56[4] = v52;
    v81 = v52;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1C99113C4;
    *(v58 + 24) = v53;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1C991133C;
    *(v59 + 24) = v54;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1C9911370;
    *(v60 + 24) = v57;
    v61 = swift_allocObject();
    v61[2] = sub_1C987141C;
    v61[3] = v58;
    v61[4] = sub_1C99113AC;
    v61[5] = v59;
    v61[6] = sub_1C9911388;
    v61[7] = v60;
    swift_unknownObjectRetain_n();

    v62 = v75;
    sub_1C990E0A8(0, sub_1C9911354, v61, v75);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8);
    v63 = v77;
    v19 = sub_1C9A91F28();
    swift_unknownObjectRelease();

    (*(v76 + 8))(v62, v63);
    sub_1C97DA1E0(v71, &qword_1EC3C8460);

    return v19;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1C9907ED8(__int128 *a1, uint64_t a2, void *a3)
{
  v82 = a1;
  v4 = sub_1C97A2CEC(&qword_1EC3CC4D8);
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v75 = v64 - v5;
  v6 = sub_1C97A2CEC(&unk_1EC3C9910);
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v72 = (v64 - v7);
  v8 = sub_1C9A91C28();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C97A2CEC(&qword_1EC3C8240);
  v74 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v64 - v12;
  v14 = sub_1C97A2CEC(&unk_1EC3CC4E0);
  v73 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v64 - v15;
  v17 = sub_1C97A2CEC(&qword_1EC3C8460);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v64 - v18;
  v20 = a3;
  v21 = v83;
  result = sub_1C985533C();
  if (v21)
  {

    return v19;
  }

  v69 = v10;
  v67 = v16;
  v70 = v13;
  v83 = 0;
  v68 = v14;
  v71 = v19;
  v24 = v82[1];
  v84 = *v82;
  v85 = v24;
  v25 = v82[3];
  v86 = v82[2];
  v87 = v25;
  v26 = *(&v84 + 1);
  if ((*(&v84 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(*(&v84 + 1)))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = v85;
  v28 = result;
  v29 = v23;
  ObjectType = swift_getObjectType();
  v31 = *(v29 + 8);
  v32 = v83;
  (*(v31 + 8))(v26, ObjectType, v31, v27);
  if (v32)
  {

    swift_unknownObjectRelease();
    return v19;
  }

  v19 = (*(v31 + 16))(ObjectType, v31);
  sub_1C9A69F34(v19);
  (*(v29 + 32))(ObjectType, v29);
  v33 = v20;
  if (sub_1C9A6B6A4(v19) != 1 || (v34 = sub_1C9A6BD8C(v19)) == 0)
  {
LABEL_17:
    sub_1C986EE54();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    return v19;
  }

  v35 = v34;
  if (sub_1C9A64668(v34) != 1)
  {

    goto LABEL_17;
  }

  sub_1C9A6681C(v35, 0);
  v37 = v36;
  v38 = v36;
  result = sub_1C9A66CAC(v35, 0);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v37 < 9.22337204e18)
  {
    sub_1C97DD3BC(result, v37);
    v83 = 0;
    v40 = sub_1C98BF080();
    v64[1] = v40;

    v88 = v40;
    (*(v78 + 104))(v69, *MEMORY[0x1E695BD20], v79);
    v41 = v72;
    *v72 = sub_1C990DC68;
    v41[1] = 0;
    (*(v80 + 104))(v41, *MEMORY[0x1E695BD48], v81);
    v82 = v33;
    v66 = v35;
    sub_1C97A2CEC(&unk_1EC3C7390);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
    v42 = v69;
    sub_1C9A92018();
    (*(v80 + 8))(v41, v81);
    (*(v78 + 8))(v42, v79);

    v43 = swift_allocObject();
    v65 = v19;
    *(v43 + 16) = sub_1C98063A0;
    *(v43 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240);
    v44 = v67;
    v45 = v70;
    sub_1C9A91F68();

    (*(v74 + 8))(v45, v11);
    v46 = sub_1C9A69970(v19);
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    v48 = v71;
    (*(v73 + 32))(v71, v44, v68);
    v49 = v48 + *(v17 + 84);
    *v49 = 0;
    *(v49 + 8) = 0;
    *(v49 + 16) = 2;
    v50 = (v48 + *(v17 + 88));
    *v50 = sub_1C991136C;
    v50[1] = v47;
    v51 = swift_allocObject();
    *(v51 + 16) = v27;
    v52 = v51;
    v53 = swift_allocObject();
    *(v53 + 16) = v28;
    *(v53 + 24) = v29;
    v54 = swift_allocObject();
    *(v54 + 16) = v28;
    *(v54 + 24) = v29;
    v55 = swift_allocObject();
    *(v55 + 24) = v29;
    swift_unknownObjectWeakInit();
    v56 = swift_allocObject();
    v64[2] = v28;
    v57 = v56;
    v56[2] = v55;
    v56[3] = sub_1C98714C8;
    v56[4] = v52;
    v81 = v52;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1C99113C4;
    *(v58 + 24) = v53;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1C991133C;
    *(v59 + 24) = v54;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1C9911370;
    *(v60 + 24) = v57;
    v61 = swift_allocObject();
    v61[2] = sub_1C987141C;
    v61[3] = v58;
    v61[4] = sub_1C99113AC;
    v61[5] = v59;
    v61[6] = sub_1C9911388;
    v61[7] = v60;
    swift_unknownObjectRetain_n();

    v62 = v75;
    sub_1C990E0A8(0, sub_1C9911354, v61, v75);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8);
    v63 = v77;
    v19 = sub_1C9A91F28();
    swift_unknownObjectRelease();

    (*(v76 + 8))(v62, v63);
    sub_1C97DA1E0(v71, &qword_1EC3C8460);

    return v19;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1C99089F4(__int128 *a1, uint64_t a2, char *a3)
{
  v79 = a3;
  v77 = a1;
  v76 = sub_1C97A2CEC(&qword_1EC3CC4D8);
  v71 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = v61 - v3;
  v72 = sub_1C97A2CEC(&unk_1EC3C9910);
  v75 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v68 = (v61 - v4);
  v5 = sub_1C9A91C28();
  v73 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C97A2CEC(&qword_1EC3C8240);
  v70 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v61 - v9;
  v11 = sub_1C97A2CEC(&unk_1EC3CC4E0);
  v69 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v61 - v12;
  v14 = sub_1C97A2CEC(&qword_1EC3C8460);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v61 - v15;
  type metadata accessor for SNAudioOffsetEstimator();
  swift_allocObject();
  v17 = v78;
  result = sub_1C99C57EC();
  if (v17)
  {

    return v10;
  }

  v65 = v7;
  v67 = v5;
  v62 = v14;
  v63 = v13;
  v78 = v10;
  v64 = v11;
  v66 = v16;
  v19 = v76;
  v20 = v79;
  v21 = v77[1];
  v80 = *v77;
  v81 = v21;
  v22 = v77[3];
  v82 = v77[2];
  v83 = v22;
  if ((*(&v80 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (HIDWORD(*(&v80 + 1)))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v81;
  v24 = result;
  v25 = sub_1C99C5FC8();
  sub_1C9A69F34(v25);
  v10 = v20;
  if (sub_1C9A6B6A4(v25) != 1)
  {
    goto LABEL_13;
  }

  v26 = sub_1C9A6BD8C(v25);
  if (!v26)
  {
    goto LABEL_13;
  }

  v27 = v26;
  if (sub_1C9A64668(v26) != 1)
  {

LABEL_13:
    sub_1C986EE54();
    swift_allocError();
    *v33 = 0;
    swift_willThrow();

    return v10;
  }

  sub_1C9A6681C(v27, 0);
  v29 = v28;
  v30 = v28;
  result = sub_1C9A66CAC(v27, 0);
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v31 = v75;
  if (v29 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v77 = v27;
  v32 = v67;
  if (v29 < 9.22337204e18)
  {
    sub_1C97DD3BC(result, v29);
    v61[3] = 0;
    v34 = sub_1C98BF080();
    v61[1] = v34;

    v84 = v34;
    (*(v73 + 104))(v65, *MEMORY[0x1E695BD20], v32);
    v35 = v68;
    *v68 = sub_1C990DC68;
    v35[1] = 0;
    (v31)[13](v35, *MEMORY[0x1E695BD48], v72);
    v61[0] = sub_1C97A2CEC(&unk_1EC3C7390);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
    v36 = v65;
    sub_1C9A92018();
    (v31[1])(v35, v72);
    (*(v73 + 8))(v36, v67);

    v37 = swift_allocObject();
    *(v37 + 16) = sub_1C98063A0;
    *(v37 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240);
    v38 = v63;
    v39 = v78;
    sub_1C9A91F68();

    (*(v70 + 8))(v39, v8);
    v40 = sub_1C9A69970(v25);
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    v42 = v66;
    (*(v69 + 32))(v66, v38, v64);
    v43 = v62;
    v44 = v42 + *(v62 + 84);
    *v44 = 0;
    *(v44 + 8) = 0;
    *(v44 + 16) = 2;
    v45 = (v42 + *(v43 + 88));
    *v45 = sub_1C991136C;
    v45[1] = v41;
    v46 = swift_allocObject();
    *(v46 + 16) = v23;
    v47 = v46;
    v48 = swift_allocObject();
    *(v48 + 16) = v24;
    *(v48 + 24) = &off_1F4948898;
    v61[2] = v24;
    v49 = v48;
    v72 = v48;
    v50 = swift_allocObject();
    v78 = v50;
    *(v50 + 16) = v24;
    *(v50 + 24) = &off_1F4948898;
    v51 = swift_allocObject();
    *(v51 + 24) = &off_1F4948898;
    swift_unknownObjectWeakInit();
    v52 = swift_allocObject();
    v52[2] = v51;
    v52[3] = sub_1C98714C8;
    v73 = v47;
    v52[4] = v47;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_1C99113C4;
    *(v53 + 24) = v49;
    v54 = v53;
    v55 = swift_allocObject();
    v56 = v78;
    *(v55 + 16) = sub_1C991133C;
    *(v55 + 24) = v56;
    v57 = swift_allocObject();
    v75 = v25;
    v58 = v57;
    *(v57 + 16) = sub_1C9911370;
    *(v57 + 24) = v52;
    v59 = swift_allocObject();
    v59[2] = sub_1C987141C;
    v59[3] = v54;
    v70 = v54;
    v59[4] = sub_1C99113AC;
    v59[5] = v55;
    v59[6] = sub_1C9911388;
    v59[7] = v58;
    swift_retain_n();

    sub_1C990E0A8(0, sub_1C9911354, v59, v74);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8);
    v60 = v74;
    v10 = sub_1C9A91F28();

    (*(v71 + 8))(v60, v19);
    sub_1C97DA1E0(v66, &qword_1EC3C8460);

    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1C99094EC(__int128 *a1, uint64_t a2, void *a3)
{
  v82 = a1;
  v4 = sub_1C97A2CEC(&qword_1EC3CC4D8);
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v75 = v64 - v5;
  v6 = sub_1C97A2CEC(&unk_1EC3C9910);
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v72 = (v64 - v7);
  v8 = sub_1C9A91C28();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C97A2CEC(&qword_1EC3C8240);
  v74 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v64 - v12;
  v14 = sub_1C97A2CEC(&unk_1EC3CC4E0);
  v73 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v64 - v15;
  v17 = sub_1C97A2CEC(&qword_1EC3C8460);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v64 - v18;
  v20 = a3;
  v21 = v83;
  result = sub_1C9800210();
  if (v21)
  {

    return v19;
  }

  v69 = v10;
  v67 = v16;
  v70 = v13;
  v83 = 0;
  v68 = v14;
  v71 = v19;
  v24 = v82[1];
  v84 = *v82;
  v85 = v24;
  v25 = v82[3];
  v86 = v82[2];
  v87 = v25;
  v26 = *(&v84 + 1);
  if ((*(&v84 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(*(&v84 + 1)))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = v85;
  v28 = result;
  v29 = v23;
  ObjectType = swift_getObjectType();
  v31 = *(v29 + 8);
  v32 = v83;
  (*(v31 + 8))(v26, ObjectType, v31, v27);
  if (v32)
  {

    swift_unknownObjectRelease();
    return v19;
  }

  v19 = (*(v31 + 16))(ObjectType, v31);
  sub_1C9A69F34(v19);
  (*(v29 + 32))(ObjectType, v29);
  v33 = v20;
  if (sub_1C9A6B6A4(v19) != 1 || (v34 = sub_1C9A6BD8C(v19)) == 0)
  {
LABEL_17:
    sub_1C986EE54();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    return v19;
  }

  v35 = v34;
  if (sub_1C9A64668(v34) != 1)
  {

    goto LABEL_17;
  }

  sub_1C9A6681C(v35, 0);
  v37 = v36;
  v38 = v36;
  result = sub_1C9A66CAC(v35, 0);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v37 < 9.22337204e18)
  {
    sub_1C97DD3BC(result, v37);
    v83 = 0;
    v40 = sub_1C98BF080();
    v64[1] = v40;

    v88 = v40;
    (*(v78 + 104))(v69, *MEMORY[0x1E695BD20], v79);
    v41 = v72;
    *v72 = sub_1C990DC68;
    v41[1] = 0;
    (*(v80 + 104))(v41, *MEMORY[0x1E695BD48], v81);
    v82 = v33;
    v66 = v35;
    sub_1C97A2CEC(&unk_1EC3C7390);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
    v42 = v69;
    sub_1C9A92018();
    (*(v80 + 8))(v41, v81);
    (*(v78 + 8))(v42, v79);

    v43 = swift_allocObject();
    v65 = v19;
    *(v43 + 16) = sub_1C98063A0;
    *(v43 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240);
    v44 = v67;
    v45 = v70;
    sub_1C9A91F68();

    (*(v74 + 8))(v45, v11);
    v46 = sub_1C9A69970(v19);
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    v48 = v71;
    (*(v73 + 32))(v71, v44, v68);
    v49 = v48 + *(v17 + 84);
    *v49 = 0;
    *(v49 + 8) = 0;
    *(v49 + 16) = 2;
    v50 = (v48 + *(v17 + 88));
    *v50 = sub_1C991136C;
    v50[1] = v47;
    v51 = swift_allocObject();
    *(v51 + 16) = v27;
    v52 = v51;
    v53 = swift_allocObject();
    *(v53 + 16) = v28;
    *(v53 + 24) = v29;
    v54 = swift_allocObject();
    *(v54 + 16) = v28;
    *(v54 + 24) = v29;
    v55 = swift_allocObject();
    *(v55 + 24) = v29;
    swift_unknownObjectWeakInit();
    v56 = swift_allocObject();
    v64[2] = v28;
    v57 = v56;
    v56[2] = v55;
    v56[3] = sub_1C98714C8;
    v56[4] = v52;
    v81 = v52;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1C99113C4;
    *(v58 + 24) = v53;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1C991133C;
    *(v59 + 24) = v54;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1C9911370;
    *(v60 + 24) = v57;
    v61 = swift_allocObject();
    v61[2] = sub_1C987141C;
    v61[3] = v58;
    v61[4] = sub_1C99113AC;
    v61[5] = v59;
    v61[6] = sub_1C9911388;
    v61[7] = v60;
    swift_unknownObjectRetain_n();

    v62 = v75;
    sub_1C990E0A8(0, sub_1C9911354, v61, v75);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8);
    v63 = v77;
    v19 = sub_1C9A91F28();
    swift_unknownObjectRelease();

    (*(v76 + 8))(v62, v63);
    sub_1C97DA1E0(v71, &qword_1EC3C8460);

    return v19;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1C990A008(__int128 *a1, uint64_t a2, void *a3)
{
  v67 = a3;
  v5 = sub_1C97A2CEC(&qword_1EC3CC4D8);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v52 - v6;
  v7 = sub_1C97A2CEC(&unk_1EC3C9910);
  v64 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v52 - v8);
  v10 = sub_1C9A91C28();
  v63 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1C97A2CEC(&qword_1EC3C8240);
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v65 = &v52 - v13;
  v58 = sub_1C97A2CEC(&unk_1EC3CC4E0);
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v15 = &v52 - v14;
  v16 = sub_1C97A2CEC(&qword_1EC3C8460);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v52 - v17;
  type metadata accessor for SNSpeechEmotionEstimator();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = a1[1];
  v68 = *a1;
  v69 = v19;
  v20 = a1[3];
  v70 = a1[2];
  v71 = v20;
  result = *(&v68 + 1);
  if ((*(&v68 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(*(&v68 + 1)))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = v69;
  sub_1C9A445B0();
  if (v3)
  {

    return v12;
  }

  v23 = sub_1C9A44554();
  sub_1C9A69F34(v23);
  if (sub_1C9A6B6A4(v23) != 1 || (v24 = sub_1C9A6BD8C(v23)) == 0)
  {
LABEL_15:
    sub_1C986EE54();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();

    return v12;
  }

  v55 = v24;
  if (sub_1C9A64668(v24) != 1)
  {

    goto LABEL_15;
  }

  v54 = v23;
  v25 = v55;
  sub_1C9A6681C(v55, 0);
  v27 = v26;
  v53 = *&v26;
  result = sub_1C9A66CAC(v25, 0);
  if ((v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v27 < 9.22337204e18)
  {
    v52 = sub_1C97DD3BC(result, v27);
    v29 = sub_1C98BF080();
    v53 = v29;

    v72 = v29;
    (*(v63 + 104))(v12, *MEMORY[0x1E695BD20], v10);
    *v9 = sub_1C990DC68;
    v9[1] = 0;
    (*(v64 + 104))(v9, *MEMORY[0x1E695BD48], v7);
    v52 = sub_1C97A2CEC(&unk_1EC3C7390);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
    sub_1C9A92018();
    (*(v64 + 8))(v9, v7);
    (*(v63 + 8))(v12, v10);

    v30 = swift_allocObject();
    *(v30 + 16) = sub_1C98063A0;
    *(v30 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240);
    v31 = v59;
    v32 = v65;
    sub_1C9A91F68();

    (*(v57 + 8))(v32, v31);
    v33 = sub_1C9A69970(v54);
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    v35 = v66;
    (*(v56 + 32))(v66, v15, v58);
    v36 = v35 + *(v16 + 84);
    *v36 = 0;
    *(v36 + 8) = 0;
    *(v36 + 16) = 2;
    v37 = (v35 + *(v16 + 88));
    *v37 = sub_1C991136C;
    v37[1] = v34;
    v38 = swift_allocObject();
    *(v38 + 16) = v22;
    v39 = v38;
    v40 = swift_allocObject();
    *(v40 + 16) = v18;
    *(v40 + 24) = &off_1F4950810;
    v41 = v40;
    v63 = v40;
    v42 = swift_allocObject();
    v65 = v42;
    *(v42 + 16) = v18;
    *(v42 + 24) = &off_1F4950810;
    v43 = swift_allocObject();
    *(v43 + 24) = &off_1F4950810;
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v44[2] = v43;
    v44[3] = sub_1C98714C8;
    v64 = v39;
    v44[4] = v39;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_1C99113C4;
    *(v45 + 24) = v41;
    v46 = swift_allocObject();
    v47 = v65;
    *(v46 + 16) = sub_1C991133C;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1C9911370;
    *(v48 + 24) = v44;
    v49 = swift_allocObject();
    v49[2] = sub_1C987141C;
    v49[3] = v45;
    v59 = v45;
    v49[4] = sub_1C99113AC;
    v49[5] = v46;
    v49[6] = sub_1C9911388;
    v49[7] = v48;
    swift_retain_n();

    v50 = v60;
    sub_1C990E0A8(0, sub_1C9911354, v49, v60);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8);
    v51 = v62;
    v12 = sub_1C9A91F28();

    (*(v61 + 8))(v50, v51);
    sub_1C97DA1E0(v66, &qword_1EC3C8460);

    return v12;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C990AAB8(__int128 *a1, uint64_t a2, void *a3)
{
  v67 = a3;
  v5 = sub_1C97A2CEC(&qword_1EC3CC4D8);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v52 - v6;
  v7 = sub_1C97A2CEC(&unk_1EC3C9910);
  v64 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v52 - v8);
  v10 = sub_1C9A91C28();
  v63 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1C97A2CEC(&qword_1EC3C8240);
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v65 = &v52 - v13;
  v58 = sub_1C97A2CEC(&unk_1EC3CC4E0);
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v15 = &v52 - v14;
  v16 = sub_1C97A2CEC(&qword_1EC3C8460);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v52 - v17;
  type metadata accessor for SNDistanceEstimator();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = a1[1];
  v68 = *a1;
  v69 = v19;
  v20 = a1[3];
  v70 = a1[2];
  v71 = v20;
  result = *(&v68 + 1);
  if ((*(&v68 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(*(&v68 + 1)))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = v69;
  sub_1C97FCB00(SDWORD2(v68), v69);
  if (v3)
  {

    return v12;
  }

  v23 = sub_1C97FCAAC();
  sub_1C9A69F34(v23);
  if (sub_1C9A6B6A4(v23) != 1 || (v24 = sub_1C9A6BD8C(v23)) == 0)
  {
LABEL_15:
    sub_1C986EE54();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();

    return v12;
  }

  v55 = v24;
  if (sub_1C9A64668(v24) != 1)
  {

    goto LABEL_15;
  }

  v54 = v23;
  v25 = v55;
  sub_1C9A6681C(v55, 0);
  v27 = v26;
  v53 = *&v26;
  result = sub_1C9A66CAC(v25, 0);
  if ((v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v27 < 9.22337204e18)
  {
    v52 = sub_1C97DD3BC(result, v27);
    v29 = sub_1C98BF080();
    v53 = v29;

    v72 = v29;
    (*(v63 + 104))(v12, *MEMORY[0x1E695BD20], v10);
    *v9 = sub_1C990DC68;
    v9[1] = 0;
    (*(v64 + 104))(v9, *MEMORY[0x1E695BD48], v7);
    v52 = sub_1C97A2CEC(&unk_1EC3C7390);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
    sub_1C9A92018();
    (*(v64 + 8))(v9, v7);
    (*(v63 + 8))(v12, v10);

    v30 = swift_allocObject();
    *(v30 + 16) = sub_1C98063A0;
    *(v30 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240);
    v31 = v59;
    v32 = v65;
    sub_1C9A91F68();

    (*(v57 + 8))(v32, v31);
    v33 = sub_1C9A69970(v54);
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    v35 = v66;
    (*(v56 + 32))(v66, v15, v58);
    v36 = v35 + *(v16 + 84);
    *v36 = 0;
    *(v36 + 8) = 0;
    *(v36 + 16) = 2;
    v37 = (v35 + *(v16 + 88));
    *v37 = sub_1C991136C;
    v37[1] = v34;
    v38 = swift_allocObject();
    *(v38 + 16) = v22;
    v39 = v38;
    v40 = swift_allocObject();
    *(v40 + 16) = v18;
    *(v40 + 24) = &off_1F49306F8;
    v41 = v40;
    v63 = v40;
    v42 = swift_allocObject();
    v65 = v42;
    *(v42 + 16) = v18;
    *(v42 + 24) = &off_1F49306F8;
    v43 = swift_allocObject();
    *(v43 + 24) = &off_1F49306F8;
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v44[2] = v43;
    v44[3] = sub_1C98714C8;
    v64 = v39;
    v44[4] = v39;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_1C99113C4;
    *(v45 + 24) = v41;
    v46 = swift_allocObject();
    v47 = v65;
    *(v46 + 16) = sub_1C991133C;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1C9911370;
    *(v48 + 24) = v44;
    v49 = swift_allocObject();
    v49[2] = sub_1C987141C;
    v49[3] = v45;
    v59 = v45;
    v49[4] = sub_1C99113AC;
    v49[5] = v46;
    v49[6] = sub_1C9911388;
    v49[7] = v48;
    swift_retain_n();

    v50 = v60;
    sub_1C990E0A8(0, sub_1C9911354, v49, v60);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8);
    v51 = v62;
    v12 = sub_1C9A91F28();

    (*(v61 + 8))(v50, v51);
    sub_1C97DA1E0(v66, &qword_1EC3C8460);

    return v12;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C990B568(__int128 *a1, uint64_t a2, void *a3)
{
  v6 = sub_1C97A2CEC(&qword_1EC3CC4D8);
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v63 = v55 - v7;
  v8 = sub_1C97A2CEC(&unk_1EC3C9910);
  v67 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v55 - v9);
  v11 = sub_1C9A91C28();
  v66 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1C97A2CEC(&qword_1EC3C8240);
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v68 = v55 - v14;
  v61 = sub_1C97A2CEC(&unk_1EC3CC4E0);
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = v55 - v15;
  v16 = sub_1C97A2CEC(&qword_1EC3C8460);
  MEMORY[0x1EEE9AC00](v16);
  v69 = v55 - v17;
  type metadata accessor for SNShazamSignatureGenerator();
  swift_allocObject();
  v70 = a3;
  v18 = sub_1C9994CFC(v70);
  v19 = a1[1];
  v71 = *a1;
  v72 = v19;
  v20 = a1[3];
  v73 = a1[2];
  v74 = v20;
  result = *(&v71 + 1);
  if ((*(&v71 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(*(&v71 + 1)))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = v72;
  sub_1C99955D8(SDWORD2(v71), v72);
  if (v3)
  {

    return v13;
  }

  v23 = sub_1C999557C();
  sub_1C9A69F34(v23);
  if (sub_1C9A6B6A4(v23) != 1 || (v24 = sub_1C9A6BD8C(v23)) == 0)
  {
LABEL_15:
    sub_1C986EE54();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();

    return v13;
  }

  v25 = v24;
  if (sub_1C9A64668(v24) != 1)
  {

    goto LABEL_15;
  }

  sub_1C9A6681C(v25, 0);
  v27 = v26;
  v28 = v25;
  v29 = v26;
  v57 = v28;
  result = sub_1C9A66CAC(v28, 0);
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v27 < 9.22337204e18)
  {
    v56 = sub_1C97DD3BC(result, v27);
    v31 = sub_1C98BF080();
    v55[2] = v31;

    v75 = v31;
    (*(v66 + 104))(v13, *MEMORY[0x1E695BD20], v11);
    *v10 = sub_1C990DC68;
    v10[1] = 0;
    (*(v67 + 104))(v10, *MEMORY[0x1E695BD48], v8);
    v56 = v23;
    v55[1] = sub_1C97A2CEC(&unk_1EC3C7390);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
    sub_1C9A92018();
    (*(v67 + 8))(v10, v8);
    (*(v66 + 8))(v13, v11);

    v32 = swift_allocObject();
    *(v32 + 16) = sub_1C98063A0;
    *(v32 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240);
    v33 = v58;
    v34 = v62;
    v35 = v68;
    sub_1C9A91F68();

    (*(v60 + 8))(v35, v34);
    v36 = sub_1C9A69970(v56);
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    v38 = v69;
    (*(v59 + 32))(v69, v33, v61);
    v39 = v38 + *(v16 + 84);
    *v39 = 0;
    *(v39 + 8) = 0;
    *(v39 + 16) = 2;
    v40 = (v38 + *(v16 + 88));
    *v40 = sub_1C991136C;
    v40[1] = v37;
    v41 = swift_allocObject();
    *(v41 + 16) = v22;
    v42 = v41;
    v43 = swift_allocObject();
    *(v43 + 16) = v18;
    *(v43 + 24) = &off_1F4945ED8;
    v44 = v43;
    v66 = v43;
    v45 = swift_allocObject();
    v68 = v45;
    *(v45 + 16) = v18;
    *(v45 + 24) = &off_1F4945ED8;
    v46 = swift_allocObject();
    *(v46 + 24) = &off_1F4945ED8;
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v47[2] = v46;
    v47[3] = sub_1C98714C8;
    v67 = v42;
    v47[4] = v42;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1C99113C4;
    *(v48 + 24) = v44;
    v49 = swift_allocObject();
    v50 = v68;
    *(v49 + 16) = sub_1C991133C;
    *(v49 + 24) = v50;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1C9911370;
    *(v51 + 24) = v47;
    v52 = swift_allocObject();
    v52[2] = sub_1C987141C;
    v52[3] = v48;
    v62 = v48;
    v52[4] = sub_1C99113AC;
    v52[5] = v49;
    v52[6] = sub_1C9911388;
    v52[7] = v51;
    swift_retain_n();

    v53 = v63;
    sub_1C990E0A8(0, sub_1C9911354, v52, v63);

    sub_1C97AE67C(&qword_1EC3CC4F0, &qword_1EC3CC4D8);
    v54 = v65;
    v13 = sub_1C9A91F28();

    (*(v64 + 8))(v53, v54);
    sub_1C97DA1E0(v69, &qword_1EC3C8460);

    return v13;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_1C990C018(__int128 *a1, uint64_t a2, void *a3)
{
  v94 = a1;
  sub_1C97A2CEC(&qword_1EC3CC4D8);
  sub_1C97AE9C8();
  v88 = v6;
  v89 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AC02C();
  v87 = v8;
  sub_1C97A2CEC(&unk_1EC3C9910);
  sub_1C97AE9C8();
  v92 = v10;
  v93 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AC02C();
  v84 = v12;
  sub_1C9A91C28();
  sub_1C97AE9C8();
  v90 = v14;
  v91 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C97A2CEC(&qword_1EC3C8240);
  sub_1C97AE9C8();
  v86 = v18;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v76 - v20);
  v22 = sub_1C97A2CEC(&unk_1EC3CC4E0);
  sub_1C97AE9C8();
  v85 = v23;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C97E86E4();
  v25 = sub_1C97A2CEC(&qword_1EC3C8460);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v76 - v27;
  v29 = a3;
  v30 = v95;
  sub_1C997DC98();
  if (v30)
  {

LABEL_8:
    sub_1C97E87F4();
    return;
  }

  v81 = v16;
  v79 = v3;
  v82 = v21;
  v95 = 0;
  v80 = v22;
  v83 = v28;
  v33 = v94[1];
  v96 = *v94;
  v97 = v33;
  v34 = v94[3];
  v98 = v94[2];
  v99 = v34;
  v35 = *(&v96 + 1);
  if ((*(&v96 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(*(&v96 + 1)))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v36 = v97;
  v37 = v31;
  v38 = v32;
  ObjectType = swift_getObjectType();
  v40 = *(v38 + 8);
  v41 = v95;
  (*(v40 + 8))(v35, ObjectType, v40, v36);
  if (v41)
  {

    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v42 = (*(v40 + 16))(ObjectType, v40);
  sub_1C9A69F34(v42);
  (*(v38 + 32))(ObjectType, v38);
  v43 = v29;
  if (sub_1C9A6B6A4(v42) != 1 || (v44 = sub_1C9A6BD8C(v42)) == 0)
  {
LABEL_17:
    sub_1C986EE54();
    swift_allocError();
    *v50 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v45 = v44;
  if (sub_1C9A64668(v44) != 1)
  {

    goto LABEL_17;
  }

  sub_1C9A6681C(v45, 0);
  v47 = v46;
  v48 = v46;
  v49 = sub_1C9A66CAC(v45, 0);
  if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v47 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v47 < 9.22337204e18)
  {
    sub_1C97DD3BC(v49, v47);
    v95 = 0;
    v51 = sub_1C98BF080();
    v76[1] = v51;

    v100 = v51;
    (*(v90 + 104))(v81, *MEMORY[0x1E695BD20], v91);
    v52 = v84;
    *v84 = sub_1C990DC68;
    v52[1] = 0;
    (*(v92 + 104))(v52, *MEMORY[0x1E695BD48], v93);
    v94 = v43;
    v78 = v45;
    sub_1C97A2CEC(&unk_1EC3C7390);
    sub_1C97AE9EC();
    sub_1C97AE67C(v53, &unk_1EC3C7390);
    v54 = v81;
    sub_1C9A92018();
    (*(v92 + 8))(v52, v93);
    (*(v90 + 8))(v54, v91);

    sub_1C97AA878();
    swift_allocObject();
    v77 = v42;
    sub_1C9911450();
    *(v55 + 16) = v56;
    *(v55 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430);
    sub_1C98FA328(&unk_1EC3C9950, &qword_1EC3C8240);
    v57 = v79;
    v58 = v82;
    sub_1C9A91F68();

    (*(v86 + 8))(v58, v17);
    sub_1C9A69970(v42);
    sub_1C97F07FC();
    v59 = swift_allocObject();
    sub_1C99114E4(v59);
    v60 = v83;
    v61(v83, v57, v80);
    sub_1C99114FC(*(v25 + 84));
    v62 = (v60 + *(v25 + 88));
    *v62 = sub_1C991136C;
    v62[1] = v58;
    sub_1C97F07FC();
    v63 = swift_allocObject();
    *(v63 + 16) = v36;
    v64 = v63;
    sub_1C97AA878();
    v65 = swift_allocObject();
    *(v65 + 16) = v37;
    *(v65 + 24) = v38;
    sub_1C97AA878();
    v66 = swift_allocObject();
    *(v66 + 16) = v37;
    *(v66 + 24) = v38;
    sub_1C97AA878();
    v67 = swift_allocObject();
    *(v67 + 24) = v38;
    swift_unknownObjectWeakInit();
    v68 = swift_allocObject();
    v76[2] = v37;
    v69 = v68;
    v68[2] = v67;
    v68[3] = sub_1C98714C8;
    v68[4] = v64;
    v93 = v64;
    sub_1C97AA878();
    v70 = swift_allocObject();
    *(v70 + 16) = sub_1C99113C4;
    *(v70 + 24) = v65;
    sub_1C97AA878();
    v71 = swift_allocObject();
    *(v71 + 16) = sub_1C991133C;
    *(v71 + 24) = v66;
    sub_1C97AA878();
    v72 = swift_allocObject();
    *(v72 + 16) = sub_1C9911370;
    *(v72 + 24) = v69;
    v73 = swift_allocObject();
    v73[2] = sub_1C987141C;
    v73[3] = v70;
    v73[4] = sub_1C99113AC;
    v73[5] = v71;
    v73[6] = sub_1C9911388;
    v73[7] = v72;
    swift_unknownObjectRetain_n();

    v74 = v87;
    sub_1C990E0A8(0, sub_1C9911354, v73, v87);

    sub_1C98352F0(&qword_1EC3CC4F0, &qword_1EC3CC4D8);
    v75 = v89;
    sub_1C9A91F28();
    swift_unknownObjectRelease();

    (*(v88 + 8))(v74, v75);
    sub_1C97DA1E0(v83, &qword_1EC3C8460);

    goto LABEL_8;
  }

LABEL_22:
  __break(1u);
}

void *sub_1C990CA40(void *a1, const void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v107 = a2;
  v108 = a6;
  v109 = a1;
  v110 = a5;
  sub_1C97A2CEC(&qword_1EC3CC4D8);
  sub_1C97AE9C8();
  v103 = v8;
  v104 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AC02C();
  v102 = v10;
  v106 = sub_1C97A2CEC(&unk_1EC3C9910);
  sub_1C97AE9C8();
  v99 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AC02C();
  v98 = v13;
  v105 = sub_1C9A91C28();
  sub_1C97AE9C8();
  v97 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C97A2CEC(&qword_1EC3C8240);
  sub_1C97AE9C8();
  v101 = v19;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v89 - v21);
  v23 = sub_1C97A2CEC(&unk_1EC3CC4E0);
  sub_1C97AE9C8();
  v100 = v24;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v89 - v26;
  v28 = sub_1C97A2CEC(&qword_1EC3C8460);
  sub_1C97DA940();
  sub_1C97ABFF0();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v89 - v31;
  v33 = v112;
  v34 = a3(v30);
  if (v33)
  {
    return sub_1C97E87F4();
  }

  v36 = v34;
  v91 = v17;
  v92 = v28;
  v93 = v27;
  v95 = v22;
  v94 = v23;
  v112 = v35;
  v96 = v32;
  v37 = v107;
  memcpy(__dst, v107, 0x41uLL);
  v38 = v108;
  v39 = (*(v108 + 8))(__dst, v110, v108);
  v41 = v40;
  v42 = v39;
  v43 = v36;
  ObjectType = swift_getObjectType();
  v45 = v112[1];
  (*(v45 + 8))(v42, ObjectType, v45, v41);
  v47 = (*(v45 + 16))(ObjectType, v45);
  sub_1C9A69F34(v47);
  (v112[4])(ObjectType);
  if (sub_1C9A6B6A4(v47) != 1)
  {
    goto LABEL_12;
  }

  v48 = sub_1C9A6BD8C(v47);
  if (!v48)
  {
    goto LABEL_12;
  }

  v49 = v48;
  if (sub_1C9A64668(v48) != 1)
  {

LABEL_12:
    sub_1C986EE54();
    swift_allocError();
    *v56 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    return sub_1C97E87F4();
  }

  v50 = v43;
  sub_1C9A6681C(v49, 0);
  v52 = v51;
  v53 = v51;
  v54 = sub_1C9A66CAC(v49, 0);
  result = memcpy(__dst, v37, 0x41uLL);
  if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  v55 = v106;
  if (v52 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v52 < 9.22337204e18)
  {
    (*(v38 + 16))(__dst, v54, v52, v110, v38);
    v110 = 0;
    v57 = sub_1C98BF080();
    v108 = v57;

    __dst[0] = v57;
    v58 = v97;
    v59 = v91;
    (*(v97 + 104))(v91, *MEMORY[0x1E695BD20], v105);
    v60 = v50;
    v61 = v98;
    *v98 = sub_1C990DC68;
    v61[1] = 0;
    v62 = v99;
    (*(v99 + 104))(v61, *MEMORY[0x1E695BD48], v55);
    v90 = v60;
    sub_1C97A2CEC(&unk_1EC3C7390);
    v109 = v49;
    sub_1C97AE9EC();
    sub_1C97AE67C(v63, &unk_1EC3C7390);
    sub_1C9A92018();
    (*(v62 + 8))(v61, v55);
    (*(v58 + 8))(v59, v105);

    sub_1C97AA878();
    swift_allocObject();
    sub_1C9911450();
    *(v64 + 16) = v65;
    *(v64 + 24) = 0;
    sub_1C97A2CEC(&unk_1EC3C7430);
    sub_1C98FA328(&unk_1EC3C9950, &qword_1EC3C8240);
    v66 = v93;
    v67 = v95;
    sub_1C9A91F68();

    (*(v101 + 8))(v67, v18);
    sub_1C9A69970(v47);
    sub_1C97F07FC();
    v68 = swift_allocObject();
    sub_1C99114E4(v68);
    v69 = v96;
    v70(v96, v66, v94);
    sub_1C99114FC(*(v92 + 84));
    v72 = (v69 + *(v71 + 88));
    *v72 = sub_1C9812ECC;
    v72[1] = v67;
    sub_1C97F07FC();
    v73 = swift_allocObject();
    *(v73 + 16) = v41;
    v74 = v73;
    sub_1C97AA878();
    v75 = swift_allocObject();
    v76 = v90;
    v77 = v112;
    *(v75 + 16) = v90;
    *(v75 + 24) = v77;
    v78 = v75;
    sub_1C97AA878();
    v79 = swift_allocObject();
    *(v79 + 16) = v76;
    *(v79 + 24) = v77;
    sub_1C97AA878();
    v80 = swift_allocObject();
    *(v80 + 24) = v77;
    swift_unknownObjectWeakInit();
    v81 = swift_allocObject();
    v81[2] = v80;
    v81[3] = sub_1C986EE20;
    v108 = v74;
    v81[4] = v74;
    sub_1C97AA878();
    v82 = swift_allocObject();
    *(v82 + 16) = sub_1C9910B04;
    *(v82 + 24) = v78;
    sub_1C97AA878();
    v83 = swift_allocObject();
    v112 = v47;
    v84 = v83;
    *(v83 + 16) = sub_1C9910B20;
    *(v83 + 24) = v79;
    sub_1C97AA878();
    v85 = swift_allocObject();
    *(v85 + 16) = sub_1C9910B3C;
    *(v85 + 24) = v81;
    v86 = swift_allocObject();
    v86[2] = sub_1C98068D4;
    v86[3] = v82;
    v86[4] = sub_1C9812F18;
    v86[5] = v84;
    v86[6] = sub_1C9910B5C;
    v86[7] = v85;
    swift_unknownObjectRetain_n();

    v87 = v102;
    sub_1C990E0A8(0, sub_1C9910B84, v86, v102);

    sub_1C98352F0(&qword_1EC3CC4F0, &qword_1EC3CC4D8);
    v88 = v104;
    sub_1C9A91F28();
    swift_unknownObjectRelease();

    (*(v103 + 8))(v87, v88);
    sub_1C97DA1E0(v96, &qword_1EC3C8460);
    return sub_1C97E87F4();
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C990D4F4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1C9911468(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14[0]);
  v10 = *(v9 + 32);
  v11 = sub_1C97DD31C(v14);
  if (v8)
  {
    return v10;
  }

  v10 = *(v11 + 24);

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v10))
  {
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C990D56C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v12 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97FB2C8();
  memcpy(__dst, a1, 0x41uLL);
  (*(a4 + 16))(a2, a4);
  v14 = (*(a5 + 8))(__dst, AssociatedTypeWitness, a5);
  (*(v12 + 8))(v5, AssociatedTypeWitness);
  return v14;
}

uint64_t sub_1C990D6C8()
{
  sub_1C99114B4();
  v3 = v2;
  memcpy(__dst, v2, 0x41uLL);
  v7 = v1;
  v8 = v0;
  sub_1C97A6264(v3, &v5);
  sub_1C97DD36C(__dst);
  sub_1C97DA1E0(__dst, &unk_1EC3C9940);
  return sub_1C97E87F4();
}

uint64_t sub_1C990D758(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v14 = v13;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &__dst[-v16 - 8];
  memcpy(__dst, a1, 0x41uLL);
  (*(a6 + 16))(a4, a6);
  v18 = (*(a7 + 16))(__dst, a2, v20, AssociatedTypeWitness, a7);
  (*(v14 + 8))(v17, AssociatedTypeWitness);
  return v18;
}

uint64_t sub_1C990D8BC()
{
  sub_1C99D6788();
  if (v1)
  {
    return v0;
  }

  v0 = v2;

  if ((v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v0))
  {
    return v0;
  }

  __break(1u);
  return result;
}

void sub_1C990D920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C97E80D8();
  sub_1C97E812C();
  v7 = sub_1C97E8180();
  sub_1C98BEFD0(v7, a2, a3, &type metadata for EmptyAudioSourceConfiguration, &v15);
  v14 = v15;
  WitnessTable = swift_getWitnessTable();
  sub_1C98BF4E8(&v14, a4, WitnessTable, v9, v10, v11, v12, v13, v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v17, v18, v19, v20, v21, vars0, vars8);
}

uint64_t sub_1C990DAE8()
{
  sub_1C99114B4();
  v3 = v2;
  memcpy(__dst, v2, 0x41uLL);
  memcpy(v6, v3, 0x41uLL);
  v7 = v1;
  v8 = v0;
  sub_1C97A6264(__dst, v5);
  sub_1C97DD36C(v6);
  sub_1C97DA1E0(v6, &unk_1EC3C9940);
  return sub_1C97E87F4();
}

uint64_t sub_1C990DBB8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1C9911468(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19[0]);
  v9 = v8[1];
  v20 = *v8;
  v21 = v9;
  v22 = *(v8 + 4);
  return sub_1C990D4F4(v19, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1C990DC00()
{
  sub_1C99114B4();
  memcpy(__dst, v1, sizeof(__dst));
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = *(v0 + 4);
  return sub_1C990D6C8();
}

uint64_t sub_1C990DC68@<X0>(uint64_t *a1@<X8>)
{
  sub_1C986EE54();
  result = swift_allocError();
  *a1 = result;
  *v3 = 3;
  return result;
}

uint64_t sub_1C990DD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(a4 + 24);
    ObjectType = swift_getObjectType();
    a6 = (*(v11 + 16))(a2, a3, a5, a6, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C986EE54();
    swift_allocError();
    *v13 = 4;
    swift_willThrow();
  }

  return a6;
}

uint64_t sub_1C990DE5C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1C9A93258();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  v12[1] = *a1;
  swift_unknownObjectRetain();
  sub_1C97A2CEC(&unk_1EC3C8670);
  if (swift_dynamicCast())
  {
    sub_1C97ACC50(v9, 0, 1, a2);
    return (*(*(a2 - 8) + 32))(a3, v9, a2);
  }

  else
  {
    sub_1C97ACC50(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    sub_1C986EE54();
    swift_allocError();
    *v11 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1C990E0A8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v19[1] = a4;
  v9 = sub_1C97A2CEC(&qword_1EC3CC4F8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - v10;
  v19[0] = sub_1C97A2CEC(&qword_1EC3CC500);
  MEMORY[0x1EEE9AC00](v19[0]);
  v13 = v19 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a1;
  sub_1C9812F64(v5, v11, &qword_1EC3C8460);
  v15 = &v11[*(v9 + 52)];
  *v15 = sub_1C9910B9C;
  v15[1] = v14;
  v16 = &v11[*(v9 + 56)];
  *v16 = sub_1C99109CC;
  *(v16 + 1) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1C9910A1C;
  *(v17 + 24) = 0;

  sub_1C97A2CEC(&qword_1EC3CC508);
  sub_1C97AE67C(&qword_1EC3CC510, &qword_1EC3CC4F8);
  sub_1C97AE67C(&qword_1EC3CC518, &qword_1EC3CC508);
  sub_1C9A92078();

  sub_1C97DA1E0(v11, &qword_1EC3CC4F8);
  sub_1C97A2CEC(&unk_1EC3C8670);
  sub_1C97AE67C(&unk_1EC3CC520, &qword_1EC3CC500);
  sub_1C9A92048();
  return sub_1C97DA1E0(v13, &qword_1EC3CC500);
}

uint64_t sub_1C990E3A4@<X0>(uint64_t a1@<X8>)
{
  sub_1C9911438(a1);
  v6 = sub_1C97A2CEC(&qword_1EC3CC570);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C99114D4();
  sub_1C97A2CEC(&unk_1EC3CC578);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97E86E4();
  sub_1C9911528();
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v5;
  *(v9 + 32) = v3;
  v10 = sub_1C97CB094();
  sub_1C9812F64(v10, v11, v12);
  v13 = (v1 + *(v6 + 52));
  *v13 = sub_1C9910C6C;
  v13[1] = v9;
  v14 = (v1 + *(v6 + 56));
  *v14 = sub_1C9910C1C;
  v14[1] = 0;
  sub_1C97AA878();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1C9910CAC;
  *(v15 + 24) = 0;

  sub_1C97A2CEC(&qword_1EC3CC588);
  sub_1C99113F4();
  sub_1C991151C();
  sub_1C97AE67C(v16, v17);
  sub_1C991140C(&qword_1EC3CC598);
  sub_1C9911488();

  sub_1C991151C();
  sub_1C97DA1E0(v18, v19);
  sub_1C99113DC();
  sub_1C97AE67C(v20, &unk_1EC3CC578);
  sub_1C99114C4();
  sub_1C9A92048();
  return sub_1C97DA1E0(v4, &unk_1EC3CC578);
}

uint64_t sub_1C990E5E0@<X0>(uint64_t a1@<X8>)
{
  sub_1C9911438(a1);
  v6 = sub_1C97A2CEC(&qword_1EC3CC5C8);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C99114D4();
  sub_1C97A2CEC(&unk_1EC3CC5D0);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97E86E4();
  sub_1C9911528();
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v5;
  *(v9 + 32) = v3;
  v10 = sub_1C97CB094();
  sub_1C9812F64(v10, v11, v12);
  v13 = (v1 + *(v6 + 52));
  *v13 = sub_1C9910D5C;
  v13[1] = v9;
  v14 = (v1 + *(v6 + 56));
  *v14 = sub_1C99109CC;
  v14[1] = 0;
  sub_1C97AA878();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1C9910D9C;
  *(v15 + 24) = 0;

  sub_1C97A2CEC(&qword_1EC3CC5E0);
  sub_1C99113F4();
  sub_1C991151C();
  sub_1C97AE67C(v16, v17);
  sub_1C991140C(&qword_1EC3CC5F0);
  sub_1C9911488();

  sub_1C991151C();
  sub_1C97DA1E0(v18, v19);
  sub_1C99113DC();
  sub_1C97AE67C(v20, &unk_1EC3CC5D0);
  sub_1C99114C4();
  sub_1C9A92048();
  return sub_1C97DA1E0(v4, &unk_1EC3CC5D0);
}

uint64_t sub_1C990E81C@<X0>(uint64_t a1@<X8>)
{
  sub_1C9911438(a1);
  v6 = sub_1C97A2CEC(&qword_1EC3CC630);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C99114D4();
  sub_1C97A2CEC(&qword_1EC3CC638);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97FB2C8();
  sub_1C9911528();
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v5;
  *(v9 + 32) = v3;
  v10 = sub_1C97CB094();
  sub_1C9812F64(v10, v11, v12);
  v13 = (v1 + *(v6 + 52));
  *v13 = sub_1C9910EDC;
  v13[1] = v9;
  v14 = (v1 + *(v6 + 56));
  *v14 = sub_1C99109CC;
  v14[1] = 0;
  sub_1C97AA878();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1C9910F1C;
  *(v15 + 24) = 0;

  sub_1C97A2CEC(&qword_1EC3CC640);
  sub_1C99113F4();
  sub_1C97AE67C(v16, &qword_1EC3CC630);
  sub_1C991140C(&unk_1EC3CC650);
  sub_1C9A92078();

  sub_1C97DA1E0(v1, &qword_1EC3CC630);
  sub_1C97BD318(0, &qword_1EC3C56D8);
  sub_1C99113DC();
  sub_1C97AE67C(v17, &qword_1EC3CC638);
  sub_1C99114C4();
  sub_1C9A92048();
  return sub_1C97DA1E0(v4, &qword_1EC3CC638);
}

void *sub_1C990EA94(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, _DWORD *, char *, uint64_t *, uint64_t, void *, void **, uint64_t, uint64_t, int64_t *, int *, uint64_t *), void (*a6)(void *, void **, char *, uint64_t, uint64_t, int64_t *, int *, uint64_t *))
{
  v59[3] = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v54 = *(a1 + 8);
  v12 = &v53;
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v52 = 0;
  v53 = v11;
  v55 = v13;
  v56 = v14;
  v57 = v15;
  v58 = v16;
  v17 = *(a1 + 56);
  v18 = v16 - v15;
  if (v16 < v15)
  {
    goto LABEL_38;
  }

  if (__OFSUB__(v16, v15))
  {
    goto LABEL_39;
  }

  v6 = a2;
  v45 = a5;
  v48 = v7;
  v47 = v17;
  v46 = a6;
  v19 = *a2;
  sub_1C9812F64(a1, v51, a3);
  sub_1C9A6C564(v19);
  if (sub_1C9A6BA18(v19))
  {
    result = sub_1C9A6C178(v19);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v21 = result;
    v22 = sub_1C9A65F04(result, 0);

    v9 = v22;
  }

  else
  {
    v9 = 0;
  }

  v10 = v52;
  v8 = v9 * v52;
  v23 = (v9 * v52) >> 64;
  v24 = v23 != (v9 * v52) >> 63;
  if (v23 != (v9 * v52) >> 63)
  {
    goto LABEL_40;
  }

  if (v8 < 0)
  {
    goto LABEL_41;
  }

  isStackAllocationSafe = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    v27 = 0;
    v26 = v52;
    if (!v24)
    {
      goto LABEL_11;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  isStackAllocationSafe = sub_1C9A92838();
  *(isStackAllocationSafe + 16) = v8;
  v26 = v52;
  v27 = v9 * v52;
  if ((v9 * v52) >> 64 != (v9 * v52) >> 63)
  {
    goto LABEL_34;
  }

LABEL_11:
  if (v8 < v27)
  {
    goto LABEL_42;
  }

  *(isStackAllocationSafe + 16) = v27;
  v51[0] = isStackAllocationSafe;
  v51[1] = v9;
  v51[2] = v10;
  v50 = 0;
  if ((v26 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  if (HIDWORD(v26))
  {
    goto LABEL_44;
  }

  v49 = v26;
  v10 = v14 - v13;
  if (__OFSUB__(v14, v13))
  {
    goto LABEL_45;
  }

  v9 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_46;
  }

  if (v9 > 0x7FFFFFFFFFFFFFFLL)
  {
    goto LABEL_47;
  }

  v28 = 16 * (v9 & ~(v9 >> 63));
  v8 = v28 + 24;
  if (__OFADD__(v28, 24))
  {
    goto LABEL_48;
  }

  if (v8 < 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v8 >= 1025)
  {
    goto LABEL_49;
  }

  do
  {
    v14 = &v44;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v13 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v10))
    {
      *v13 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v11;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      goto LABEL_54;
    }

    __break(1u);
LABEL_54:
    sub_1C97E72E0();
    v11 = v42;
    v53 = v42;
LABEL_23:
    v30 = *(v11 + 16);
    v12[7] = v11 + 32;
    v12[8] = v30;
    v31 = v48;
    v32 = sub_1C97E4D08(v10, &v53, v59);
    v12 = v32;
    if (!v10)
    {
LABEL_30:
      v46(v51, v6, &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v47, &v52, &v49, &v50);

      v53 = v11;
      if (!v31)
      {
        goto LABEL_58;
      }

      swift_willThrow();
      goto LABEL_32;
    }

    if (v9 >= *(v32 + 16))
    {
      __break(1u);
      goto LABEL_56;
    }

    v33 = v13 + 4;
    v34 = (v32 + 40);
    v35 = (v32 + 40);
    while (1)
    {
      v37 = *v35;
      v35 += 2;
      v36 = v37;
      if ((v37 - 0x2000000000000000) >> 62 != 3)
      {
        break;
      }

      v38 = 4 * v36;
      if ((v38 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      if (HIDWORD(v38))
      {
        goto LABEL_37;
      }

      v39 = *(v34 - 1);
      *(v33 - 2) = 1;
      *(v33 - 1) = v38;
      *v33 = v39;
      v33 += 2;
      v34 = v35;
      if (!--v10)
      {
        goto LABEL_30;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
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
LABEL_49:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v40 = swift_slowAlloc();
  v41 = v48;
  v45(v40, v40 + v8, v13, v14, &v53, 4, v51, v6, v18, v47, &v52, &v49, &v50);
  sub_1C98135FC();
  if (v41)
  {
    MEMORY[0x1CCA93280]();
LABEL_32:

    return v6;
  }

LABEL_57:
  MEMORY[0x1CCA93280]();
LABEL_58:
  v43 = v6[2];
  swift_beginAccess();
  v6 = v43[2];

  v43[2] = MEMORY[0x1E69E7CC0];

  return v6;
}

void *sub_1C990EF14(uint64_t (*a1)(id *, uint64_t, uint64_t), uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  sub_1C97A2CEC(a4);
  sub_1C97F07FC();
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x1E69E7CC0];

  v11 = a1(&v41, a6, v10);

  if (v6)
  {

    return v11;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_22;
  }

  if (qword_1EC3C57B8 != -1)
  {
    swift_once();
  }

  if (byte_1EC3D3138 != 1)
  {
    goto LABEL_22;
  }

  if (qword_1EC3C5BA8 != -1)
  {
    swift_once();
  }

  v12 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  v13 = sub_1C99B590C();
  v15 = v14;

  v16 = 0;
  if ((v15 & 1) != 0 || !v13)
  {
    goto LABEL_23;
  }

  v17 = objc_opt_self();
  v18 = sub_1C9A72724(v17, v11);
  type metadata accessor for SNUtils();
  sub_1C9A16CF4(&v40);
  sub_1C9812F64(&v40, v39, &unk_1EC3C5E60);
  if (!v39[3])
  {
    sub_1C97DA1E0(v39, &unk_1EC3C5E60);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v19 = 0;
    goto LABEL_17;
  }

  if (v18 & 1 | ((v38 & 1) == 0))
  {
    v19 = v38 & 1;
LABEL_17:
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v20 = sub_1C9A91B58();
    sub_1C97BFF6C(v20, qword_1EC3D3108);
    v21 = v11;
    v22 = sub_1C9A91B38();
    v23 = sub_1C9A92FA8();

    if (os_log_type_enabled(v22, v23))
    {
      v36 = v19;
      v24 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39[0] = v37;
      *v24 = 136315650;
      v25 = sub_1C9A6B3E4(v21);
      v35 = v18;
      v26 = sub_1C9A924A8();
      v28 = v27;

      v29 = sub_1C9849140(v26, v28, v39);

      *(v24 + 4) = v29;
      *(v24 + 12) = 1024;
      *(v24 + 14) = v35 ^ 1;
      *(v24 + 18) = 1024;
      *(v24 + 20) = v36;
      _os_log_impl(&dword_1C9788000, v22, v23, "Refusing to publish graph for tuning: %s. Boxes can be tuned? %{BOOL}d; Process is entitled? %{BOOL}d", v24, 0x18u);
      sub_1C97A592C(v37);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }

    sub_1C97DA1E0(&v40, &unk_1EC3C5E60);
LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

  v33 = objc_allocWithZone(SNTunableDSPGraphHost);
  v16 = sub_1C994AE00(v11);
  sub_1C97DA1E0(&v40, &unk_1EC3C5E60);
  v34 = v16;
LABEL_23:
  v30 = v41;
  if (sub_1C9A6B6A4(v11) == 1 && (!sub_1C9A6BA18(v11) || sub_1C9A6BA18(v11) == 1) && sub_1C9A69A24(v11) && (sub_1C9A69AD8(v11) & 1) != 0)
  {
  }

  else
  {
    sub_1C97E7A18();
    swift_allocError();
    *v31 = 1;
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1C990F4FC(uint64_t a1)
{
  sub_1C97A2CEC(&qword_1EC3C7688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  v4 = *(a1 + 16);
  v3 = *(a1 + 32);
  v5 = *a1;
  *(inited + 77) = *(a1 + 45);
  *(inited + 48) = v4;
  *(inited + 64) = v3;
  *(inited + 32) = v5;
  swift_beginAccess();
  sub_1C9812F64(a1, v7, &qword_1EC3C7680);
  sub_1C98CFB18(inited);
  return swift_endAccess();
}

uint64_t sub_1C990F5B8(const void *a1)
{
  sub_1C97A2CEC(&unk_1EC3CC620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  memcpy((inited + 32), a1, 0x41uLL);
  swift_beginAccess();
  sub_1C9812F64(a1, v4, &unk_1EC3C7730);
  sub_1C98CFBD4(inited);
  return swift_endAccess();
}

uint64_t sub_1C990F66C(uint64_t a1, char a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), void (*a7)(uint64_t))
{
  sub_1C97A2CEC(a4);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = a1;
  v12 = a2 & 1;
  *(inited + 40) = v12;
  swift_beginAccess();
  a6(a1, v12);
  a7(inited);
  return swift_endAccess();
}

uint64_t sub_1C990F720(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CC530);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = a1;
  sub_1C97A2CEC(&qword_1EC3CC538);
  sub_1C97AE67C(&qword_1EC3CC540, &qword_1EC3CC538);
  sub_1C9A92658();
  sub_1C97A2CEC(&unk_1EC3CA040);
  sub_1C9A91CE8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C990F88C(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CC5A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = a1;
  sub_1C97A2CEC(&qword_1EC3CC5B0);
  sub_1C97AE67C(&qword_1EC3CC5B8, &qword_1EC3CC5B0);
  sub_1C9A92658();
  sub_1C97A2CEC(&unk_1EC3CA040);
  sub_1C9A91CE8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C990F9F8(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CC600);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = a1;
  sub_1C97A2CEC(&qword_1EC3CC608);
  sub_1C97AE67C(&qword_1EC3CC610, &qword_1EC3CC608);
  sub_1C9A92658();
  sub_1C97A2CEC(&unk_1EC3CA040);
  sub_1C9A91CE8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C990FB64(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CC668);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = a1;
  sub_1C97A2CEC(&qword_1EC3CC670);
  sub_1C97AE67C(&qword_1EC3CC678, &qword_1EC3CC670);
  sub_1C9A92658();
  sub_1C97A2CEC(&unk_1EC3CA040);
  sub_1C9A91CE8();
  return (*(v3 + 8))(v5, v2);
}

id sub_1C990FCD0(id a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    sub_1C97A2CEC(&unk_1EC3CA040);
    swift_willThrowTypedImpl();
  }

  else
  {
    swift_unknownObjectRetain();
  }

  return a1;
}

__n128 sub_1C990FD3C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (*(a1 + 52))
  {
    v3 = v2;
    sub_1C97A2CEC(&unk_1EC3CA040);
    swift_willThrowTypedImpl();
  }

  else
  {
    *a2 = v2;
    *(a2 + 8) = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    result = *(a1 + 36);
    *(a2 + 36) = result;
  }

  return result;
}

uint64_t sub_1C990FDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (*(a1 + 64))
  {
    v13 = *a1;
    v3 = v2;
    sub_1C97A2CEC(&unk_1EC3CA040);
    return swift_willThrowTypedImpl();
  }

  else
  {
    *a2 = v2;
    v5 = *(a1 + 8);
    *(a2 + 8) = v5;
    v6 = *(a1 + 24);
    *(a2 + 24) = v6;
    v7 = *(a1 + 40);
    *(a2 + 40) = v7;
    *(a2 + 56) = *(a1 + 56);
    v9 = v2;
    v10 = v5;
    v11 = v6;
    v12[0] = v7;
    *(v12 + 9) = *(a1 + 49);
    return sub_1C97A6844(&v9, &v8);
  }
}

void *sub_1C990FFE0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v18 = a4();
  v19 = v18;
  if (!v12)
  {
    v30 = a6(v18);
    v20 = swift_allocEmptyBox();
    v29 = objc_opt_self();
    sub_1C97F07FC();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1C97F07FC();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v21;
    v23[3] = v22;
    v23[4] = a8;
    v23[5] = a9;
    v23[6] = v20;
    v23[7] = a2;
    v23[8] = a3;
    aBlock[4] = a11;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C994A9C4;
    aBlock[3] = a12;
    v24 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v25 = sub_1C9A77384(v29, v30, v24, aBlock);
    _Block_release(v24);
    if (v25)
    {
      v26 = aBlock[0];

      *a1 = v30;
    }

    else
    {
      v27 = aBlock[0];
      sub_1C9A913C8();

      swift_willThrow();
    }
  }

  return v19;
}

void sub_1C9910234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, void (*a7)(uint64_t *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = a4(v11, v12, a1);
      v15 = sub_1C97BDEE0(v14);
      for (i = 0; ; ++i)
      {
        if (v15 == i)
        {

          goto LABEL_12;
        }

        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1CCA912B0](i, v14);
        }

        else
        {
          if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v17 = *(v14 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        v18 = v17;
        v19 = 0;
        swift_unknownObjectRetain();
        a7(&v18);
        swift_unknownObjectRelease_n();
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    else
    {
LABEL_12:
    }
  }
}

void sub_1C99103E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, void (*a7)(__int128 *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = a4(v11, v12, a1);
      v19 = v13;
      v15 = 0;
      v16 = *(v14 + 16);
      for (i = 32; ; i += 56)
      {
        if (v16 == v15)
        {

          goto LABEL_8;
        }

        if (v15 >= *(v14 + 16))
        {
          break;
        }

        v18 = *(v14 + i + 16);
        v20 = *(v14 + i);
        v21 = v18;
        *v22 = *(v14 + i + 32);
        *&v22[16] = *(v14 + i + 48);
        ++v15;
        v23 = 0;
        v22[20] = 0;
        a7(&v20);
        v24[0] = v20;
        v24[1] = v21;
        v25[0] = *v22;
        *(v25 + 13) = *&v22[13];
        sub_1C97DA1E0(v24, &qword_1EC3C7680);
      }

      __break(1u);
    }

    else
    {
LABEL_8:
    }
  }
}

void sub_1C99105D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, void (*a7)(_BYTE *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = a4(v11, v12, a1);
      v23 = v13;
      v15 = 0;
      v16 = *(v14 + 16);
      for (i = 32; ; i += 64)
      {
        if (v16 == v15)
        {

          goto LABEL_8;
        }

        if (v15 >= *(v14 + 16))
        {
          break;
        }

        v18 = *(v14 + i);
        v19 = *(v14 + i + 16);
        v20 = *(v14 + i + 48);
        v24[2] = *(v14 + i + 32);
        v24[3] = v20;
        v24[0] = v18;
        v24[1] = v19;
        ++v15;
        v21 = *(v14 + i + 16);
        *__src = *(v14 + i);
        *&__src[16] = v21;
        v22 = *(v14 + i + 48);
        *&__src[32] = *(v14 + i + 32);
        *&__src[48] = v22;
        v25 = 0;
        __src[64] = 0;
        sub_1C97A6844(v24, __dst);
        sub_1C97A6844(v24, __dst);
        a7(__src);
        memcpy(__dst, __src, 0x41uLL);
        sub_1C97DA1E0(__dst, &unk_1EC3C7730);
        sub_1C9841CB4(v24);
      }

      __break(1u);
    }

    else
    {
LABEL_8:
    }
  }
}

void sub_1C99107D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, void (*a7)(id *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = a4(v11, v12, a1);
      v15 = sub_1C97BDEE0(v14);
      for (i = 0; ; ++i)
      {
        if (v15 == i)
        {

          goto LABEL_12;
        }

        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1CCA912B0](i, v14);
        }

        else
        {
          if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v17 = *(v14 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        v19 = v17;
        v20 = 0;
        v18 = v17;
        a7(&v19);
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    else
    {
LABEL_12:
    }
  }
}

id sub_1C9910A24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1C990FCD0(*a1, *(a1 + 8));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C9910AC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C97E84A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C9910C04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1C9910CB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = *(a1 + 32);
  *(v5 + 13) = *(a1 + 45);
  *&result = sub_1C990FD3C(v4, a2).n128_u64[0];
  return result;
}

uint64_t sub_1C9910D00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = *(a1 + 32);
  *(v4 + 13) = *(a1 + 45);
  return sub_1C990F4FC(v3);
}

void *sub_1C9910E64@<X0>(_OWORD *a1@<X0>, void **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t, _DWORD *, char *, uint64_t *, uint64_t, void *, void **, uint64_t, uint64_t, int64_t *, int *, uint64_t *)@<X4>, void (*a6)(void *, void **, char *, uint64_t, uint64_t, int64_t *, int *, uint64_t *)@<X5>, void *a7@<X8>)
{
  v9 = a1[1];
  v12[0] = *a1;
  v12[1] = v9;
  v10 = a1[3];
  v12[2] = a1[2];
  v12[3] = v10;
  result = sub_1C990EA94(v12, a2, a3, a4, a5, a6);
  if (!v7)
  {
    *a7 = result;
  }

  return result;
}

void *sub_1C9910EAC@<X0>(uint64_t (*a1)(id *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = sub_1C990EF14(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    *a7 = result;
    a7[1] = v10;
    a7[2] = v11;
    a7[3] = v12;
  }

  return result;
}

uint64_t sub_1C9910F9C()
{

  return swift_deallocObject();
}

uint64_t sub_1C991107C()
{

  return swift_deallocObject();
}

_BYTE *storeEnumTagSinglePayload for ProcessingUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C99111A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C99111F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1C9911280()
{
  result = qword_1EC3CC690;
  if (!qword_1EC3CC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC690);
  }

  return result;
}

unint64_t sub_1C99112D8()
{
  result = qword_1EC3CC698;
  if (!qword_1EC3CC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC698);
  }

  return result;
}

uint64_t sub_1C991140C(unint64_t *a1)
{

  return sub_1C97AE67C(a1, v1);
}

void *sub_1C9911468(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{

  return memcpy(&__dst, __src, 0x41uLL);
}

uint64_t sub_1C9911488()
{

  return sub_1C9A92078();
}

void sub_1C99114FC(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 2;
}

uint64_t sub_1C9911534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20 = a1;
  v18 = a2;
  v19 = a3;
  v21 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1C9A93D88();
  sub_1C9A91C58();
  sub_1C9A91E98();
  sub_1C9912278();
  swift_getWitnessTable();
  sub_1C9912294();
  sub_1C9A91C68();
  swift_getWitnessTable();
  v22 = sub_1C9A91C18();
  v23 = a4;
  WitnessTable = swift_getWitnessTable();
  v25 = a6;
  v12 = sub_1C9A91CC8();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &AssociatedTypeWitness - v13;
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = v18;
  v15[7] = v19;

  sub_1C9A92078();

  swift_getWitnessTable();
  return sub_1C997529C(v14, v12, v21);
}

uint64_t sub_1C99117B4(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1C9A93D88();
  v4 = sub_1C9A91C58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1C9A91F68();

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1C9A91E98();
  sub_1C9912278();
  swift_getWitnessTable();
  sub_1C9912294();
  sub_1C9A91FC8();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C99119D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1C9A93D88();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C9911AD8(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = sub_1C9A93D88();
  MEMORY[0x1EEE9AC00](v3);
  (*(*(AssociatedTypeWitness - 8) + 16))(&v6 - v4, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  return sub_1C9A91EA8();
}

uint64_t sub_1C9911C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a5 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  sub_1C99117B4(a5, a7);
  return (*(v9 + 8))(v12, a5);
}

void sub_1C9911D10()
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v0 = sub_1C9A91B58();
  sub_1C97BFF6C(v0, qword_1EC3D3108);

  oslog = sub_1C9A91B38();
  v1 = sub_1C9A92FC8();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *(v2 + 4) = sub_1C99122E0(4.8751e-34, v10);
    sub_1C99122C0(&dword_1C9788000, v3, v4, "%{public}sreceive subscription", v5, v6, v7, v8, oslog);
    sub_1C97A592C(v10);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }
}

void sub_1C9911E34()
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v0 = sub_1C9A91B58();
  sub_1C97BFF6C(v0, qword_1EC3D3108);

  oslog = sub_1C9A91B38();
  v1 = sub_1C9A92FC8();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *(v2 + 4) = sub_1C99122E0(4.8751e-34, v10);
    sub_1C99122C0(&dword_1C9788000, v3, v4, "%{public}scancelled", v5, v6, v7, v8, oslog);
    sub_1C97A592C(v10);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }
}

void sub_1C9911F68(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  v10 = *a1;
  if ((*(a2 + 8) & 1) == 0)
  {
    v12 = *a2 + a3;
    if ((v10 - v12) >= 0x7FFFFFFF)
    {
      v13 = 0x7FFFFFFFLL;
    }

    else
    {
      v13 = v10 - v12;
    }

    if (v10 != v12 && v13 > a4)
    {
      if (qword_1EC3C5520 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_29;
    }

    while (1)
    {
      v23 = *(a2 + 24);
      v25 = __CFADD__(v23, 1);
      v24 = v23 + 1;
      if (!v25)
      {
        break;
      }

      __break(1u);
LABEL_29:
      sub_1C98134D8();
      swift_once();
LABEL_11:
      v15 = sub_1C9A91B58();
      sub_1C97BFF6C(v15, qword_1EC3D3108);
      v16 = sub_1C9A91B38();
      v17 = sub_1C9A92F98();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v7;
        v32 = v30;
        *v18 = 136315394;
        v19 = a6;
        v20 = sub_1C9849140(0x6461656861, 0xE500000000000000, &v32);

        *(v18 + 4) = v20;
        a6 = v19;
        *(v18 + 12) = 1024;
        *(v18 + 14) = v13;
        _os_log_impl(&dword_1C9788000, v16, v17, "Timestamp is %s by %d samples", v18, 0x12u);
        v13 = v30;
        sub_1C97A592C(v30);
        v7 = v31;
        sub_1C98135FC();
        MEMORY[0x1CCA93280]();
        sub_1C98135FC();
        MEMORY[0x1CCA93280]();
      }

      v21 = *(a2 + 16);
      v25 = __CFADD__(v21, 1);
      v22 = v21 + 1;
      if (v25)
      {
        __break(1u);
LABEL_31:
        sub_1C98134D8();
        swift_once();
LABEL_23:
        v26 = sub_1C9A91B58();
        sub_1C97BFF6C(v26, qword_1EC3D3108);
        v27 = sub_1C9A91B38();
        v28 = sub_1C9A92FA8();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 134218240;
          *(v29 + 4) = v13;
          *(v29 + 12) = 2048;
          *(v29 + 14) = a5;
          _os_log_impl(&dword_1C9788000, v27, v28, "Detected %lu timestamp deviations in the last %ld timestamps", v29, 0x16u);
          sub_1C98135FC();
          MEMORY[0x1CCA93280]();
        }

        *(a2 + 16) = 0;
LABEL_26:
        *(a2 + 24) = 0;
        goto LABEL_27;
      }

      *(a2 + 16) = v22;
    }

    *(a2 + 24) = v24;
    v25 = a5 < 1 || v24 >= a5;
    if (v25)
    {
      v13 = *(a2 + 16);
      if (v13)
      {
        if (qword_1EC3C5520 != -1)
        {
          goto LABEL_31;
        }

        goto LABEL_23;
      }

      goto LABEL_26;
    }
  }

LABEL_27:
  *a2 = v10;
  *(a2 + 8) = 0;
  *a6 = v10;
}