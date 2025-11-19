uint64_t sub_2175B8790()
{
  sub_2177531E8();
  v1 = sub_217202078(v0, v35, &qword_27CB242A0, &unk_21777EEF0);
  if (v36)
  {
    OUTLINED_FUNCTION_180(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19[0], v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35[0]);
    sub_217753208();
    sub_2172DE814(v37);
    sub_2171F06D8(v19, &qword_27CB242A8, &unk_21775D570);
  }

  else
  {
    sub_217753208();
  }

  v9 = sub_217202078(v0 + 128, v35, &qword_27CB24290, &unk_21775D550);
  if (v36)
  {
    OUTLINED_FUNCTION_180(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19[0], v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35[0]);
    sub_217753208();
    sub_2172DE7FC(v37);
    sub_2171F06D8(v19, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

uint64_t sub_2175B88B0()
{
  sub_2177531E8();
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0(v4);
  sub_217202078(v0 + 104, __src, &qword_27CB24290, &unk_21775D550);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE7FC(v4);
    sub_2171F06D8(__dst, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    sub_217753208();
  }

  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0(v4);
  return sub_217753238();
}

unint64_t sub_2175B897C()
{
  result = qword_27CB2A3F0;
  if (!qword_27CB2A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A3F0);
  }

  return result;
}

uint64_t sub_2175B89DC()
{
  sub_2177531E8();
  sub_217202078(v0, __src, &qword_27CB242A0, &unk_21777EEF0);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE814(v4);
    sub_2171F06D8(__dst, &qword_27CB242A8, &unk_21775D570);
  }

  else
  {
    sub_217753208();
  }

  sub_217202078(v0 + 128, __src, &qword_27CB24290, &unk_21775D550);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE7FC(v4);
    sub_2171F06D8(__dst, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

uint64_t sub_2175B8B0C(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_2175B8BA8;

  return static MusicSubscription.currentForBackgroundUse.getter(v1 + 48);
}

uint64_t sub_2175B8BA8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = *(v2 + 32);
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    v7 = sub_2175B8D0C;
  }

  else
  {
    v7 = sub_2175B8CAC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2175B8CAC()
{
  if (*(v0 + 49))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40) != 0;
  *(v3 + 2) = *(v0 + 50) != 0;
  *v3 = v2;
  *(v3 + 3) = v4;
  return (*(v0 + 8))();
}

uint64_t sub_2175B8D0C()
{
  OUTLINED_FUNCTION_10();
  *(v0 + 16) = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 51);
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v0 + 24);
  v3 = *(v0 + 40) != 0;
  *(v2 + 2) = 0;
  *v2 = v1;
  *(v2 + 3) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t MusicSubscription.FailableUpdates.Iterator.next()(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_2175B8E80;

  return (sub_2173D92F0)(a1);
}

uint64_t sub_2175B8E80()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = *(v2 + 24);
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2175B8FA8, 0, 0);
  }

  else
  {
    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_2175B8FC8()
{
  OUTLINED_FUNCTION_10();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2174A9BF0;

  return MusicSubscription.FailableUpdates.Iterator.next()(v2);
}

uint64_t sub_2175B905C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_2174A9DA4;

  return (sub_2174E538C)(a1, a2, a3, v3 + 16);
}

uint64_t MusicSubscription.FailableUpdates.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  updated = _s14UpdateTriggersV8IteratorCMa(0);
  v3 = *(updated + 48);
  v4 = *(updated + 52);
  swift_allocObject();
  result = sub_2174E5548();
  *a1 = &unk_217780A28;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = -16777216;
  return result;
}

unint64_t sub_2175B91A4()
{
  result = qword_27CB2A3F8;
  if (!qword_27CB2A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A3F8);
  }

  return result;
}

_BYTE *_s15FailableUpdatesVwst(_BYTE *result, int a2, int a3)
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

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_2175B92B8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 28))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2175B92F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CloudSnippet.text.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t CloudSnippet.kind.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return sub_217751DE8();
}

uint64_t static CloudSnippet.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      v10 = v4 == v7 && v5 == v8;
      if (v10 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_2175B943C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

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

uint64_t sub_2175B950C(char a1)
{
  if (a1)
  {
    return 1684957547;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_2175B9534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2175B943C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2175B955C(uint64_t a1)
{
  v2 = sub_2175B9B3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175B9598(uint64_t a1)
{
  v2 = sub_2175B9B3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudSnippet.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A400, &qword_217780B20);
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v9);
  v11 = &v18 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[3];
  v19 = v1[2];
  v20 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2175B9B3C();
  sub_2177532F8();
  LOBYTE(v22) = 0;
  v16 = v21;
  sub_217752EF8();
  if (!v16)
  {
    v22 = v19;
    v23 = v20;
    v24 = 1;
    sub_2175B9B90();
    sub_217751DE8();
    sub_217752F38();
  }

  return (*(v6 + 8))(v11, v3);
}

uint64_t CloudSnippet.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  if (!v0[1])
  {
    sub_217753208();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_217753208();
  }

  v3 = *v0;
  sub_217753208();
  sub_217751FF8();
  if (!v2)
  {
    return sub_217753208();
  }

LABEL_3:
  sub_217753208();

  return sub_217751FF8();
}

uint64_t CloudSnippet.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2177531E8();
  sub_217753208();
  if (v2)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v4)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

uint64_t CloudSnippet.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A418, &qword_217780B28);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = v21 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2175B9B3C();
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v21[0]) = 0;
  v15 = sub_217752E18();
  v17 = v16;
  v22 = 1;
  sub_2175B9BE4();
  sub_217752E58();
  (*(v8 + 8))(v13, v5);
  v18 = v21[0];
  v19 = v21[1];
  *a2 = v15;
  a2[1] = v17;
  a2[2] = v18;
  a2[3] = v19;
  sub_217751DE8();
  sub_217751DE8();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2175B9AF4()
{
  v2 = *v0;
  v3 = v0[1];
  sub_2177531E8();
  CloudSnippet.hash(into:)();
  return sub_217753238();
}

unint64_t sub_2175B9B3C()
{
  result = qword_27CB2A408;
  if (!qword_27CB2A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A408);
  }

  return result;
}

unint64_t sub_2175B9B90()
{
  result = qword_27CB2A410;
  if (!qword_27CB2A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A410);
  }

  return result;
}

unint64_t sub_2175B9BE4()
{
  result = qword_27CB2A420;
  if (!qword_27CB2A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A420);
  }

  return result;
}

unint64_t sub_2175B9C3C()
{
  result = qword_27CB2A428;
  if (!qword_27CB2A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A428);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudSnippet.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2175B9D80()
{
  result = qword_27CB2A430;
  if (!qword_27CB2A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A430);
  }

  return result;
}

unint64_t sub_2175B9DD8()
{
  result = qword_27CB2A438;
  if (!qword_27CB2A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A438);
  }

  return result;
}

unint64_t sub_2175B9E30()
{
  result = qword_27CB2A440;
  if (!qword_27CB2A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A440);
  }

  return result;
}

uint64_t MusicLibraryFilteringOptions.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_217753208();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  return sub_217753208();
}

uint64_t MusicLibraryFilteringOptions.hashValue.getter()
{
  sub_2177531E8();
  MusicLibraryFilteringOptions.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2175BA1C4()
{
  sub_2177531E8();
  MusicLibraryFilteringOptions.hash(into:)();
  return sub_217753238();
}

unint64_t sub_2175BA204()
{
  result = qword_27CB2A448;
  if (!qword_27CB2A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A448);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicLibraryFilteringOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[9])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicLibraryFilteringOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CatalogRawChartKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2175BA3D8()
{
  result = qword_27CB2A450;
  if (!qword_27CB2A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A450);
  }

  return result;
}

uint64_t sub_2175BA42C(char a1)
{
  if (!a1)
  {
    return 0x616C702D74736F6DLL;
  }

  if (a1 == 1)
  {
    return 0x706F742D79746963;
  }

  return 0xD000000000000010;
}

uint64_t sub_2175BA490()
{
  v0 = sub_217752DC8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2175BA4DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2175BA490();
  *a2 = result;
  return result;
}

uint64_t sub_2175BA50C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2175BA42C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2175BA620()
{
  result = qword_27CB2A458;
  if (!qword_27CB2A458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2A460, qword_217780EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A458);
  }

  return result;
}

uint64_t Playlist.Entry.Item.id.getter()
{
  Playlist.Entry.Item.innerItem.getter();
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 8))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v3);
  return OUTLINED_FUNCTION_93();
}

uint64_t sub_2175BA6FC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v22[-v10 - 8];
  sub_2171FF30C(a1, v22);
  sub_217315200();
  if (!v1)
  {
    sub_2174A87A0(v11, v7, &qword_27CB247D8, &qword_217758D60);
    v12 = a1[3];
    v13 = a1[4];
    v14 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v14, v15);
    Decoder.dataRequestConfiguration.getter(v12, v13);
    v16 = a1[3];
    v17 = a1[4];
    v18 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v18, v19);
    Decoder.sharedRelatedItemStore.getter();
    sub_217336414();
    sub_2171F06D8(v11, &qword_27CB247D8, &qword_217758D60);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2175BA878(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v17[-v10 - 8];
  sub_2171FF30C(a1, v17);
  sub_217315E8C();
  if (!v1)
  {
    sub_2174A87A0(v11, v7, &qword_27CB25650, &unk_21778F830);
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    Decoder.dataRequestConfiguration.getter(v12, v13);
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    Decoder.sharedRelatedItemStore.getter();
    sub_21733718C();
    sub_2171F06D8(v11, &qword_27CB25650, &unk_21778F830);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2175BA9FC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v11[-v5 - 8];
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  Encoder.dataRequestConfiguration.getter(v7, v8);
  sub_2173385F0();
  sub_21733AB9C(v11);
  sub_21732D9E4();
  return sub_2171F06D8(v6, &qword_27CB25650, &unk_21778F830);
}

uint64_t sub_2175BAB00(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v11[-v5 - 8];
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  Encoder.dataRequestConfiguration.getter(v7, v8);
  sub_217337778();
  sub_21733AB9C(v11);
  sub_21732E104();
  return sub_2171F06D8(v6, &qword_27CB247D8, &qword_217758D60);
}

uint64_t Playlist.Entry.Item.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 48))(v51, v4, v5);
  v6 = v51[1];
  if (qword_280BE8B28 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_30_2(&qword_280BE8B30);
  v8 = v8 && v7 == v6;
  if (!v8 && (OUTLINED_FUNCTION_25_38() & 1) == 0)
  {
    if (qword_280BE8B68 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_30_2(&qword_280BE8B70);
    v10 = v8 && v9 == v6;
    if (!v10 && (OUTLINED_FUNCTION_25_38() & 1) == 0)
    {
      if (qword_280BEA1C8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_30_2(&qword_280BEA1D0);
      v26 = v8 && v25 == v6;
      if (!v26 && (OUTLINED_FUNCTION_25_38() & 1) == 0)
      {
        if (qword_280BE8B08 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_30_2(&qword_280BE8B10);
        if (!v8 || v27 != v6)
        {
          v29 = OUTLINED_FUNCTION_25_38();

          if (v29)
          {
LABEL_33:
            sub_2171FF30C(a1, v43);
            __swift_project_boxed_opaque_existential_1(v43, v44);
            v30 = OUTLINED_FUNCTION_8_49();
            v31(v30);
            v33 = v49;
            v32 = v50;
            sub_217751DE8();
            sub_217269F50(&v49);
            *&v45 = v33;
            *(&v45 + 1) = v32;
            v34 = __swift_project_boxed_opaque_existential_1(v43, v44);
            OUTLINED_FUNCTION_11_6(v34, v35, v36, v37, v38, v39, v40, v41, v42);
            __swift_destroy_boxed_opaque_existential_1(v43);
            LOBYTE(v43[0]) = 1;
            goto LABEL_16;
          }

          v42 = 36;
          sub_217752D08();
          __break(1u);
        }
      }

      goto LABEL_33;
    }
  }

  sub_2171FF30C(a1, v43);
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v11 = OUTLINED_FUNCTION_8_49();
  v12(v11);
  v14 = v49;
  v13 = v50;
  sub_217751DE8();
  sub_217269F50(&v49);
  *&v45 = v14;
  *(&v45 + 1) = v13;
  v15 = __swift_project_boxed_opaque_existential_1(v43, v44);
  OUTLINED_FUNCTION_11_6(v15, v16, v17, v18, v19, v20, v21, v22, v42);
  __swift_destroy_boxed_opaque_existential_1(v43);
  LOBYTE(v43[0]) = 0;
LABEL_16:
  v23 = v46;
  *a2 = v45;
  *(a2 + 16) = v23;
  *(a2 + 32) = v47;
  *(a2 + 48) = v48;
  *(a2 + 56) = v43[0];
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double Playlist.Entry.Item.innerItem.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  sub_21729C79C(v1, v7);
  if (v10)
  {
    v2 = &type metadata for Song;
  }

  else
  {
    v2 = &type metadata for MusicVideo;
  }

  if (v10)
  {
    v3 = &protocol witness table for Song;
  }

  else
  {
    v3 = &protocol witness table for MusicVideo;
  }

  v4 = swift_allocObject();
  v5 = v7[1];
  *(v4 + 16) = v7[0];
  *(v4 + 32) = v5;
  result = *&v8;
  *(v4 + 48) = v8;
  *(v4 + 64) = v9;
  v0[3] = v2;
  v0[4] = v3;
  *v0 = v4;
  return result;
}

uint64_t Playlist.Entry.Item.propertyProvider.getter()
{
  v0 = OUTLINED_FUNCTION_68_1();
  v1 = sub_21729C79C(v0, &v22);
  if (v27)
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    v9 = OUTLINED_FUNCTION_29(&v14);
    sub_21729C5E8(v9, v10);
    return sub_217283B58(&v14);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    v12 = OUTLINED_FUNCTION_29(&v14);
    sub_21729C5E8(v12, v13);
    return sub_217283C08(&v14);
  }
}

void *Playlist.Entry.Item.artwork.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_21729C79C(v1, &v34);
  if (v40 == 1)
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE9708 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CA860(v10, v11, v12, v13, v14, v15, v16, v17, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283B58(&v27);
  }

  else
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE6B50 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CA83C(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283C08(&v27);
  }

  return memcpy(v0, __src, 0x221uLL);
}

uint64_t Playlist.Entry.Item.albumTitle.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_45(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_5_71();
  if (v16)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    if (qword_280BE9960 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41AC();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    if (qword_280BE6DA8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4204();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v18);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Playlist.Entry.Item.artistName.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_45(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_5_71();
  if (v16)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
    if (qword_280BE9958 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41AC();
    OUTLINED_FUNCTION_21_4();
    sub_217283B58(&v18);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
    if (qword_280BE6DA0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4204();
    OUTLINED_FUNCTION_21_4();
    sub_217283C08(&v18);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Playlist.Entry.Item.artistURL.getter()
{
  v0 = OUTLINED_FUNCTION_68_1();
  sub_21729C79C(v0, &v39);
  OUTLINED_FUNCTION_5_71();
  if (v9)
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C8, &qword_21775D4A0);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_29_35();
    sub_2172E3DC0(v10, v11);
    OUTLINED_FUNCTION_7_2();
    sub_2176CA560(v12, v13, v14, v15, v16, v17, v18, v19, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, *(&v43 + 1), v44, v45, v46, v47, v48, v49, vars0, vars8);

    return sub_217283B58(&v31);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25658, &unk_2177657D0);
    swift_allocObject();
    v20 = OUTLINED_FUNCTION_29_35();
    sub_2172E3DC0(v20, v21);
    OUTLINED_FUNCTION_7_2();
    sub_2176CA63C(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, *(&v43 + 1), v44, v45, v46, v47, v48, v49, vars0, vars8);

    return sub_217283C08(&v31);
  }
}

uint64_t Playlist.Entry.Item.contentRating.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_21729C79C(v1, &v40);
  if (v46 == 1)
  {
    OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v25, v28, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
    if (qword_280BE9878 != -1)
    {
      swift_once();
    }

    sub_2176CA5B8(qword_280C02910, v10, v11, v12, v13, v14, v15, v16, v26, v29, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, *(&v44 + 1), v45, v46, v47, v48);
    result = sub_217283B58(&v32);
  }

  else
  {
    OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v25, v28, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
    if (qword_280BE6D00 != -1)
    {
      swift_once();
    }

    sub_2176CA688(qword_280C02330, v18, v19, v20, v21, v22, v23, v24, v27, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, *(&v44 + 1), v45, v46, v47, v48);
    result = sub_217283C08(&v32);
  }

  *v0 = v31;
  return result;
}

uint64_t Playlist.Entry.Item.duration.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_45(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_5_71();
  if (v17)
  {
    OUTLINED_FUNCTION_0_83(v9, v10, v11, v12, v13, v14, v15, v16, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
    if (qword_280BE96D8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41F0();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v18);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v9, v10, v11, v12, v13, v14, v15, v16, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
    if (qword_280BE6B38 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4330();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v19);
  }

  return v8;
}

double Playlist.Entry.Item.editorialNotes.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  sub_21729C79C(v1, &v36);
  OUTLINED_FUNCTION_5_71();
  if (v10)
  {
    OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
    if (qword_280BE9838 != -1)
    {
      swift_once();
    }

    sub_2176CA5AC(qword_280C028E8, v11, v12, v13, v14, v15, v16, v17, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, *(&v40 + 1), v41, v42, v43, *(&v43 + 1));
    sub_217283B58(&v28);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
    if (qword_280BE6CD8 != -1)
    {
      swift_once();
    }

    sub_2176CA67C(qword_280C02318, v18, v19, v20, v21, v22, v23, v24, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, *(&v40 + 1), v41, v42, v43, *(&v43 + 1));
    sub_217283C08(&v28);
  }

  v25 = v44;
  *v0 = v43;
  v0[1] = v25;
  result = *&v45;
  v27 = v46;
  v0[2] = v45;
  v0[3] = v27;
  return result;
}

uint64_t Playlist.Entry.Item.genreNames.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_45(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_5_71();
  if (v16)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    if (qword_280BE9948 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    v18 = sub_2172A41D4(v17);
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    sub_217283B58(&v23);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    if (qword_280BE6D98 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    v21 = sub_2172A4238(v20);
    if (v21)
    {
      v19 = v21;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    sub_217283C08(&v23);
  }

  return v19;
}

uint64_t Playlist.Entry.Item.isrc.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_45(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_5_71();
  if (v16)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    if (qword_280BE9760 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41AC();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    if (qword_280BE6BF8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4204();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v18);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Playlist.Entry.Item.playCount.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_45(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_5_71();
  if (v17)
  {
    OUTLINED_FUNCTION_0_83(v9, v10, v11, v12, v13, v14, v15, v16, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
    if (qword_280BE9690 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41C0();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v18);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v9, v10, v11, v12, v13, v14, v15, v16, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
    if (qword_280BE6B18 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4218();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v19);
  }

  return v8;
}

void *Playlist.Entry.Item.playParameters.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_21729C79C(v1, &v34);
  if (v40 == 1)
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE9800 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CAA38(v10, v11, v12, v13, v14, v15, v16, v17, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283B58(&v27);
  }

  else
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE6CA8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CAB9C(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283C08(&v27);
  }

  return memcpy(v0, __src, 0x78uLL);
}

uint64_t Playlist.Entry.Item.previewAssets.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_45(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_5_71();
  if (v17)
  {
    OUTLINED_FUNCTION_0_83(v9, v10, v11, v12, v13, v14, v15, v16, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    if (qword_280BE9858 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4534(v18);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v19);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v9, v10, v11, v12, v13, v14, v15, v16, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    if (qword_280BE6CF0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4614(v20);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v21);
  }

  return v8;
}

uint64_t Playlist.Entry.Item.title.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_45(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_5_71();
  if (v16)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
    if (qword_280BE9750 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41AC();
    OUTLINED_FUNCTION_21_4();
    sub_217283B58(&v18);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
    if (qword_280BE6BC8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4204();
    OUTLINED_FUNCTION_21_4();
    sub_217283C08(&v18);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Playlist.Entry.Item._contributorSocialProfileIDs.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_45(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_5_71();
  if (v17)
  {
    OUTLINED_FUNCTION_0_83(v9, v10, v11, v12, v13, v14, v15, v16, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    if (qword_280BE8268 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4518(v18);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v19);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v9, v10, v11, v12, v13, v14, v15, v16, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    if (qword_280BE6C20 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A45F8(v20);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v21);
  }

  return v8;
}

uint64_t static Playlist.Entry.Item.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_21729C79C(a1, v48);
  sub_21729C79C(a2, &v49);
  if (v48[56])
  {
    v3 = sub_21729C79C(v48, v46);
    if (v50 == 1)
    {
      OUTLINED_FUNCTION_2_0(v3, v4, v5, v6, v7, v8, v9, v10, v38, v39, v40, v41, v42, v43, v44, v45, v46[0]);
      v13 = v13 && v11 == v12;
      if (v13 || (sub_217753058() & 1) != 0)
      {
        v14 = v47;
        v15 = OUTLINED_FUNCTION_29(v46);
        __swift_project_boxed_opaque_existential_1(v15, v16);
        v17 = *(v14 + 104);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v18 = OUTLINED_FUNCTION_13_4();
        v19 = v17(v18);
        sub_217283B58(&v38);
        if (v19)
        {
          sub_217283B58(v46);
LABEL_21:
          sub_21729C7F8(v48);
          return 1;
        }
      }

      else
      {
        sub_217283B58(&v38);
      }

      sub_217283B58(v46);
LABEL_26:
      sub_21729C7F8(v48);
      return 0;
    }

    sub_217283B58(v46);
  }

  else
  {
    v20 = sub_21729C79C(v48, v46);
    if ((v50 & 1) == 0)
    {
      OUTLINED_FUNCTION_2_0(v20, v21, v22, v23, v24, v25, v26, v27, v38, v39, v40, v41, v42, v43, v44, v45, v46[0]);
      v30 = v13 && v28 == v29;
      if (v30 || (sub_217753058() & 1) != 0)
      {
        v31 = v47;
        v32 = OUTLINED_FUNCTION_29(v46);
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v34 = *(v31 + 104);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v35 = OUTLINED_FUNCTION_13_4();
        v36 = v34(v35);
        sub_217283C08(&v38);
        if (v36)
        {
          sub_217283C08(v46);
          goto LABEL_21;
        }
      }

      else
      {
        sub_217283C08(&v38);
      }

      sub_217283C08(v46);
      goto LABEL_26;
    }

    sub_217283C08(v46);
  }

  sub_2171F06D8(v48, &qword_27CB2A4B0, &qword_217780F68);
  return 0;
}

uint64_t Playlist.Entry.Item.hash(into:)()
{
  v1 = sub_21729C79C(v0, &v24);
  if (v29)
  {
    v9 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    MEMORY[0x21CEA3550](1, v9);
    sub_217751FF8();
    __swift_project_boxed_opaque_existential_1(&v18, v21);
    v10 = OUTLINED_FUNCTION_3_4();
    v11(v10);
    return sub_217283B58(&v16);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    MEMORY[0x21CEA3550](0, v13);
    sub_217751FF8();
    __swift_project_boxed_opaque_existential_1(&v18, v21);
    v14 = OUTLINED_FUNCTION_3_4();
    v15(v14);
    return sub_217283C08(&v16);
  }
}

uint64_t Playlist.Entry.Item.hashValue.getter()
{
  sub_2177531E8();
  Playlist.Entry.Item.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2175BC2B8()
{
  sub_2177531E8();
  Playlist.Entry.Item.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2175BC2F4@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.Entry.Item.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Playlist.Entry.Item.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_17_42(a1, a2);
  v7 = v6;
  v9 = *(v8 + 224);
  v10 = sub_2177528F8();
  v11 = OUTLINED_FUNCTION_0_39(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_20_4();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_27_41();
  if (v33 == 1)
  {
    OUTLINED_FUNCTION_3_0();
    v17 = *(v7 + 232);
    OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicAttributeProperty();
    v18 = *(v2 + 16);
    v19 = *(v2 + 24);
    MusicAttributeProperty.__allocating_init(_:)();
    v21 = v20;
    sub_217751DE8();
    Song.subscript.getter(v21);
    v22 = OUTLINED_FUNCTION_41_2();
    sub_217283B58(v22);

    if (&vars0 != 208)
    {
      return result;
    }

    v24 = OUTLINED_FUNCTION_40_0();
    v26 = v5;
  }

  else
  {
    OUTLINED_FUNCTION_3_0();
    v27 = *(v7 + 232);
    OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicAttributeProperty();
    v28 = *(v2 + 16);
    v29 = *(v2 + 24);
    MusicAttributeProperty.__allocating_init(_:)();
    v31 = v30;
    sub_217751DE8();
    MusicVideo.subscript.getter(v31);
    v32 = OUTLINED_FUNCTION_41_2();
    sub_217283C08(v32);

    if (&vars0 != 208)
    {
      return result;
    }

    v24 = OUTLINED_FUNCTION_40_0();
    v26 = v4;
  }

  return v25(v24, v26, v3);
}

{
  OUTLINED_FUNCTION_17_42(a1, a2);
  v7 = v6;
  v9 = *(v8 + 264);
  v10 = sub_2177528F8();
  v11 = OUTLINED_FUNCTION_0_39(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_20_4();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_27_41();
  if (v31 == 1)
  {
    OUTLINED_FUNCTION_3_0();
    v17 = *(v7 + 272);
    OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicExtendedAttributeProperty();
    v19 = *(v2 + 16);
    v18 = *(v2 + 24);
    sub_217751DE8();
    v20 = MusicExtendedAttributeProperty.__allocating_init(_:)();
    Song.subscript.getter(v20);
    v21 = OUTLINED_FUNCTION_41_2();
    sub_217283B58(v21);

    if (&vars0 != 208)
    {
      return result;
    }

    v23 = OUTLINED_FUNCTION_40_0();
    v25 = v5;
  }

  else
  {
    OUTLINED_FUNCTION_3_0();
    v26 = *(v7 + 272);
    OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicExtendedAttributeProperty();
    v28 = *(v2 + 16);
    v27 = *(v2 + 24);
    sub_217751DE8();
    v29 = MusicExtendedAttributeProperty.__allocating_init(_:)();
    MusicVideo.subscript.getter(v29);
    v30 = OUTLINED_FUNCTION_41_2();
    sub_217283C08(v30);

    if (&vars0 != 208)
    {
      return result;
    }

    v23 = OUTLINED_FUNCTION_40_0();
    v25 = v4;
  }

  return v24(v23, v25, v3);
}

void *Playlist.Entry.Item.subscript.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  sub_21729C79C(v2, v14);
  if (v14[56] == 1)
  {
    OUTLINED_FUNCTION_18_3();
    OUTLINED_FUNCTION_27_3(v6);
    OUTLINED_FUNCTION_31_33();
    OUTLINED_FUNCTION_42_2();
    OUTLINED_FUNCTION_35_28();
    Song.subscript.getter(v7);
    v8 = v3;
    sub_217283B58(v13);
  }

  else
  {
    OUTLINED_FUNCTION_18_3();
    OUTLINED_FUNCTION_27_3(v9);
    OUTLINED_FUNCTION_31_33();
    OUTLINED_FUNCTION_42_2();
    OUTLINED_FUNCTION_35_28();
    MusicVideo.subscript.getter(v10);
    v8 = v3;
    sub_217283C08(v13);
  }

  if (!v8)
  {
    return memcpy(a2, __src, 0x68uLL);
  }

  return result;
}

uint64_t Playlist.Entry.Item.init(from:)(uint64_t *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2175BA878(v3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Playlist.Entry.Item.description.getter()
{
  v1 = sub_21729C79C(v0, &v22);
  if (v27)
  {
    OUTLINED_FUNCTION_1_95(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    Song.description.getter();
    OUTLINED_FUNCTION_29_31();

    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_24_1();
    sub_217283B58(v9);
  }

  else
  {
    OUTLINED_FUNCTION_1_95(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    MusicVideo.description.getter();
    OUTLINED_FUNCTION_29_31();

    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_24_1();
    sub_217283C08(v10);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Playlist.Entry.Item.debugDescription.getter()
{
  sub_21729C79C(v0, v9);
  if (v9[56])
  {
    OUTLINED_FUNCTION_3_8();
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    Song.debugDescription.getter();
    OUTLINED_FUNCTION_21_1();
    v1 = OUTLINED_FUNCTION_6_2();
    v3 = v2;

    MEMORY[0x21CEA23B0](v1, v3);

    MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
    sub_217283B58(v8);
  }

  else
  {
    OUTLINED_FUNCTION_3_8();
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    MusicVideo.debugDescription.getter();
    OUTLINED_FUNCTION_21_1();
    v4 = OUTLINED_FUNCTION_6_2();
    v6 = v5;

    MEMORY[0x21CEA23B0](v4, v6);

    MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
    sub_217283C08(v8);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t sub_2175BCAE0()
{
  v1 = sub_21729C79C(v0, &v22);
  if (v27)
  {
    OUTLINED_FUNCTION_1_95(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    Song.description.getter();
    OUTLINED_FUNCTION_29_31();

    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_24_1();
    sub_217283B58(v9);
  }

  else
  {
    OUTLINED_FUNCTION_1_95(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    MusicVideo.description.getter();
    OUTLINED_FUNCTION_29_31();

    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_24_1();
    sub_217283C08(v10);
  }

  return OUTLINED_FUNCTION_93();
}

double sub_2175BCBE0()
{
  if (qword_280BEB7A0 != -1)
  {
    swift_once();
  }

  v0 = off_280BEB7A8;
  os_unfair_lock_lock(*(off_280BEB7A8 + 2));
  sub_21770FA7C(0xD000000000000013, 0x80000002177B1F30, &type metadata for Playlist.Entry.Item, &protocol witness table for Playlist.Entry.Item, &v2);
  os_unfair_lock_unlock(v0[2]);
  result = *&v2;
  xmmword_27CB2A468 = v2;
  qword_27CB2A478 = v3;
  unk_27CB2A480 = v4;
  return result;
}

uint64_t static Playlist.Entry.Item.typeValue.getter()
{
  if (qword_27CB23CF0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_27CB2A468);

  return sub_217751DE8();
}

uint64_t sub_2175BCD10()
{
  if (qword_27CB23CF0 != -1)
  {
    swift_once();
  }

  xmmword_27CB2A488 = xmmword_27CB2A468;
  xmmword_27CB2A498 = xmmword_27CB2A478;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.playlistEntryItem.getter()
{
  if (qword_27CB23CF8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_27CB2A488);

  return sub_217751DE8();
}

uint64_t sub_2175BCDF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217759200;
  if (qword_280BE6378 != -1)
  {
    swift_once();
  }

  v2 = qword_280BE6390;
  v1 = unk_280BE6398;
  *(v0 + 32) = xmmword_280BE6380;
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  v3 = qword_280BEB138;
  sub_217751DE8();
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_280BEB150;
  v4 = unk_280BEB158;
  *(v0 + 64) = xmmword_280BEB140;
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;
  qword_27CB2A4A8 = v0;

  return sub_217751DE8();
}

uint64_t static Playlist.Entry.Item.supportedTypeValues.getter()
{
  if (qword_27CB23D00 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

unint64_t sub_2175BCF4C()
{
  result = qword_27CB2A4B8;
  if (!qword_27CB2A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A4B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_21729C79C(v8, va);
}

uint64_t AnyMusicCatalogSearchSuggestionsExtendedResults.libraryMapped(policy:scope:)(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  *(v4 + 50) = *a2;
  *(v4 + 51) = *a3;
  return MEMORY[0x2822009F8](sub_2175BCFF4, 0, 0);
}

uint64_t sub_2175BCFF4()
{
  v1 = *(v0 + 51);
  v2 = *(v0 + 50);
  v3 = *(v0 + 24);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  *(v0 + 48) = v2;
  *(v0 + 49) = v1;
  OUTLINED_FUNCTION_2_89(v5);
  v12 = (v6 + *v6);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  *(v0 + 32) = v9;
  *v9 = v0;
  v9[1] = sub_21759509C;
  v10 = *(v0 + 16);

  return v12(v10, v0 + 48, v0 + 49, v4, v5);
}

uint64_t MusicCatalogSearchSuggestionsExtendedResults<>.isEqual<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35[1] = a5;
  v8 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v35 - v15;
  OUTLINED_FUNCTION_0();
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19, v20);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0();
  v24 = v23;
  v26 = *(v25 + 64);
  v29 = MEMORY[0x28223BE20](v27, v28);
  v31 = v35 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v22, a1, a3, v29);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v16, 0, 1, a2);
    (*(v24 + 32))(v31, v16, a2);
    v33 = sub_217751F08();
    (*(v24 + 8))(v31, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v16, 1, 1, a2);
    (*(v10 + 8))(v16, v8);
    v33 = 0;
  }

  return v33 & 1;
}

uint64_t static AnyMusicCatalogSearchSuggestionsExtendedResults.== infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 48);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BC8, &qword_217771958);
  return v5(a2, v6, v3, v4) & 1;
}

uint64_t sub_2175BD4A4(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 56))(a1, v3, v4);
}

uint64_t AnyMusicCatalogSearchSuggestionsExtendedResults.convertToCatalogSearchSuggestionsRawExtendedResults<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 16))(a1, a2, a3, v7, v8);
}

uint64_t AnyMusicCatalogSearchSuggestionsExtendedResults.hashValue.getter()
{
  sub_2177531E8();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 56))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_2175BD6BC()
{
  sub_2177531E8();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 56))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_2175BD744(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2172AC7B0;

  return AnyMusicCatalogSearchSuggestionsExtendedResults.libraryMapped(policy:scope:)(a1, a2, a3);
}

uint64_t sub_2175BD804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2175BDC04();

  return MusicCatalogSearchSuggestionsExtendedResults<>.isEqual<A>(to:)(a1, a3, a2, v6, v7);
}

uint64_t sub_2175BD88C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24300, &qword_217771D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL static MusicCatalogSearchSuggestionsRawExtendedResults.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2175BD88C(a1, v7);
  sub_2175BD88C(a2, v9);
  if (v8)
  {
    sub_2175BD88C(v7, v6);
    if (v9[2])
    {
      memcpy(v5, v9, sizeof(v5));
      v3 = sub_2172DE148(v6, v5);
      sub_2171F06D8(v5, &qword_27CB24308, &unk_217767A90);
      sub_2171F06D8(v6, &qword_27CB24308, &unk_217767A90);
      sub_2171F06D8(v7, &qword_27CB24300, &qword_217771D70);
      return (v3 & 1) != 0;
    }

    sub_2171F06D8(v6, &qword_27CB24308, &unk_217767A90);
  }

  else if (!v9[2])
  {
    sub_2171F06D8(v7, &qword_27CB24300, &qword_217771D70);
    return 1;
  }

  sub_2171F06D8(v7, &qword_27CB2A290, &qword_21777EF58);
  return 0;
}

uint64_t MusicCatalogSearchSuggestionsRawExtendedResults.hash(into:)(uint64_t a1)
{
  sub_2175BD88C(v1, __src);
  if (!__src[2])
  {
    return sub_217753208();
  }

  memcpy(v4, __src, sizeof(v4));
  sub_217753208();
  sub_2172DE4CC(a1);
  return sub_2171F06D8(v4, &qword_27CB24308, &unk_217767A90);
}

uint64_t MusicCatalogSearchSuggestionsRawExtendedResults.hashValue.getter()
{
  sub_2177531E8();
  sub_2175BD88C(v0, __src);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4CC(v4);
    sub_2171F06D8(__dst, &qword_27CB24308, &unk_217767A90);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

uint64_t sub_2175BDB68()
{
  sub_2177531E8();
  sub_2175BD88C(v0, __src);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4CC(v4);
    sub_2171F06D8(__dst, &qword_27CB24308, &unk_217767A90);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

unint64_t sub_2175BDC04()
{
  result = qword_27CB2A4C0;
  if (!qword_27CB2A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A4C0);
  }

  return result;
}

unint64_t sub_2175BDC5C()
{
  result = qword_27CB2A4C8;
  if (!qword_27CB2A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A4C8);
  }

  return result;
}

uint64_t dispatch thunk of MusicCatalogSearchSuggestionsExtendedResults.libraryMapped(policy:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_89(a5);
  v16 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_2172AC7B0;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit23CloudResourceCollectionVyAA0cD0VyAA24CatalogSearchRawResponseV9TopResultOGGSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2175BDEA4(uint64_t a1)
{
  v2 = sub_2175BDF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175BDEE0(uint64_t a1)
{
  v2 = sub_2175BDF60();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2175BDF60()
{
  result = qword_27CB2A4D8;
  if (!qword_27CB2A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A4D8);
  }

  return result;
}

uint64_t sub_2175BE034(uint64_t a1)
{
  v2 = sub_2175BE0F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175BE070(uint64_t a1)
{
  v2 = sub_2175BE0F0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2175BE0F0()
{
  result = qword_27CB2A4E8;
  if (!qword_27CB2A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A4E8);
  }

  return result;
}

uint64_t sub_2175BE164(uint64_t a1)
{
  v2 = sub_2175BE220();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175BE1A0(uint64_t a1)
{
  v2 = sub_2175BE220();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2175BE220()
{
  result = qword_27CB2A4F8;
  if (!qword_27CB2A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A4F8);
  }

  return result;
}

uint64_t sub_2175BE294(uint64_t a1)
{
  v2 = sub_2175BE450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175BE2D0(uint64_t a1)
{
  v2 = sub_2175BE450();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2175BE350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  v29 = OUTLINED_FUNCTION_0_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29, v34);
  v36 = &a9 - v35;
  v37 = *(v25 + 24);
  v38 = *(v25 + 32);
  v39 = OUTLINED_FUNCTION_45_4();
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v23();
  sub_2177532F8();
  (*(v31 + 8))(v36, v28);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2175BE450()
{
  result = qword_27CB2A508;
  if (!qword_27CB2A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A508);
  }

  return result;
}

uint64_t CloudArtist.PlayableItem.id.getter()
{
  v1 = type metadata accessor for CloudStation(0);
  v2 = OUTLINED_FUNCTION_45_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_70_0();
  v6 = type metadata accessor for CloudPlaylist(0);
  v7 = OUTLINED_FUNCTION_45_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  OUTLINED_FUNCTION_1();
  v13 = (v12 - v11);
  v14 = type metadata accessor for CloudAlbum(0);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_1();
  v21 = (v20 - v19);
  v22 = type metadata accessor for CloudArtist.PlayableItem();
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  OUTLINED_FUNCTION_1_99();
  v30 = OUTLINED_FUNCTION_1_5();
  sub_2175C12B0(v30, v31);
  OUTLINED_FUNCTION_47_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2175C1360(v29, v0);
      v40 = *v0;
      v41 = v0[1];
      sub_217751DE8();
      v36 = v0;
      v39 = type metadata accessor for CloudStation;
      goto LABEL_7;
    }

    v33 = type metadata accessor for CloudPlaylist;
    sub_2175C1360(v29, v13);
    v34 = *v13;
    v35 = v13[1];
    sub_217751DE8();
    v36 = v13;
  }

  else
  {
    v33 = type metadata accessor for CloudAlbum;
    sub_2175C1360(v29, v21);
    v37 = *v21;
    v38 = v21[1];
    sub_217751DE8();
    v36 = v21;
  }

  v39 = v33;
LABEL_7:
  sub_2175BEB90(v36, v39);
  return OUTLINED_FUNCTION_1_5();
}

uint64_t type metadata accessor for CloudArtist.PlayableItem()
{
  result = qword_280BE52C8;
  if (!qword_280BE52C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static CloudArtist.PlayableItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v5 = OUTLINED_FUNCTION_101();
  v6 = type metadata accessor for CloudStation(v5);
  v7 = OUTLINED_FUNCTION_45_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  OUTLINED_FUNCTION_1();
  v57 = v12 - v11;
  v13 = OUTLINED_FUNCTION_206();
  v14 = type metadata accessor for CloudPlaylist(v13);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v22 = type metadata accessor for CloudAlbum(0);
  v23 = OUTLINED_FUNCTION_45_0(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_60_0();
  v27 = type metadata accessor for CloudArtist.PlayableItem();
  v28 = OUTLINED_FUNCTION_43(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v57 - v36;
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v57 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A510, &qword_2177814C0);
  v43 = OUTLINED_FUNCTION_45_0(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46);
  OUTLINED_FUNCTION_70_0();
  v48 = *(v47 + 56);
  sub_2175C12B0(v3, v2);
  sub_2175C12B0(v58, v2 + v48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_1_99();
      sub_2175C12B0(v2, v37);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_11_58();
        sub_2175C1360(v2 + v48, v21);
        v50 = static CloudPlaylist.== infix(_:_:)();
        sub_2175BEB90(v21, v3);
        v51 = v37;
LABEL_13:
        v55 = v3;
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_3_89();
      v53 = v37;
    }

    else
    {
      OUTLINED_FUNCTION_1_99();
      sub_2175C12B0(v2, v33);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v54 = v57;
        sub_2175C1360(v2 + v48, v57);
        v50 = static CloudStation.== infix(_:_:)();
        sub_2175BEB90(v54, type metadata accessor for CloudStation);
        v51 = v33;
        v55 = type metadata accessor for CloudStation;
LABEL_14:
        sub_2175BEB90(v51, v55);
        sub_2175BEB90(v2, type metadata accessor for CloudArtist.PlayableItem);
        return v50 & 1;
      }

      OUTLINED_FUNCTION_2_96();
      v53 = v33;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_99();
    sub_2175C12B0(v2, v41);
    if (!swift_getEnumCaseMultiPayload())
    {
      v3 = type metadata accessor for CloudAlbum;
      sub_2175C1360(v2 + v48, v4);
      v50 = static CloudAlbum.== infix(_:_:)(v41, v4);
      sub_2175BEB90(v4, type metadata accessor for CloudAlbum);
      v51 = v41;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_0_110();
    v53 = v41;
  }

  sub_2175BEB90(v53, v52);
  sub_2171F0738(v2, &qword_27CB2A510, &qword_2177814C0);
  v50 = 0;
  return v50 & 1;
}

uint64_t sub_2175BEB90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t CloudArtist.PlayableItem.hash(into:)(uint64_t a1)
{
  v75 = type metadata accessor for CloudStation(0);
  v6 = OUTLINED_FUNCTION_43(v75);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_71_0();
  v11 = type metadata accessor for CloudPlaylist(v10);
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_1();
  v16 = OUTLINED_FUNCTION_31_12();
  v17 = type metadata accessor for CloudAlbum(v16);
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_60_0();
  v22 = type metadata accessor for CloudArtist.PlayableItem();
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  OUTLINED_FUNCTION_1_99();
  sub_2175C12B0(v1, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_15_52();
      sub_2175C1360(v29, v4);
      MEMORY[0x21CEA3550](1);
      v31 = *v4;
      v32 = v4[1];
      sub_217751FF8();
      v33 = v11[5];
      OUTLINED_FUNCTION_57_12();
      CloudPlaylist.Attributes.hash(into:)();
      v34 = v11[6];
      v35 = OUTLINED_FUNCTION_57_12();
      sub_217264C3C(v35);
      v36 = v11[7];
      v37 = OUTLINED_FUNCTION_57_12();
      sub_21726492C(v37);
      v38 = v11[8];
      v39 = OUTLINED_FUNCTION_57_12();
      sub_2172647B8(v39);
      v40 = v4;
    }

    else
    {
      v22 = type metadata accessor for CloudStation;
      sub_2175C1360(v29, v3);
      MEMORY[0x21CEA3550](2);
      v45 = *v3;
      v46 = v3[1];
      sub_217751FF8();
      v47 = v3 + v75[5];
      CloudStation.Attributes.hash(into:)();
      v48 = *(v3 + v75[6]);
      sub_217753208();
      v49 = *(v3 + v75[7]);
      sub_217753208();
      v50 = v3 + v75[8];
      sub_217263DE0(a1);
      v40 = v3;
    }

    v51 = v22;
  }

  else
  {
    OUTLINED_FUNCTION_4_87();
    sub_2175C1360(v29, v2);
    MEMORY[0x21CEA3550](0);
    v41 = *v2;
    v42 = v2[1];
    sub_217751FF8();
    v43 = v2 + v17[5];
    CloudAlbum.Attributes.hash(into:)();
    v44 = v2 + v17[6];
    sub_21726504C(a1);
    sub_2171F5110(v2 + v17[7], v77, &qword_27CB24AA8, &qword_217759080);
    if (v77[2] == 1)
    {
      sub_217753208();
    }

    else
    {
      memcpy(v76, v77, sizeof(v76));
      sub_217753208();
      sub_21726473C(a1, v52, v53, v54, v55, v56, v57, v58);
      sub_2172640D4(a1, v59, v60, v61, v62, v63, v64, v65);
      sub_2172640D4(a1, v66, v67, v68, v69, v70, v71, v72);
      sub_217264414(a1);
      sub_2172845E8(v76);
    }

    v73 = v17[8];
    sub_217264150(a1);
    OUTLINED_FUNCTION_0_110();
    v40 = v2;
  }

  return sub_2175BEB90(v40, v51);
}

uint64_t CloudArtist.PlayableItem.hashValue.getter()
{
  sub_2177531E8();
  CloudArtist.PlayableItem.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2175BEFA0()
{
  sub_2177531E8();
  CloudArtist.PlayableItem.hash(into:)(v1);
  return sub_217753238();
}

void CloudArtist.PlayableItem.decodeRawAttributes(from:)()
{
  OUTLINED_FUNCTION_171();
  v55 = v1;
  v56 = v6;
  v7 = type metadata accessor for CloudStation.Attributes(0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_1();
  v54 = v13 - v12;
  v14 = OUTLINED_FUNCTION_206();
  v53 = type metadata accessor for CloudStation(v14);
  v15 = OUTLINED_FUNCTION_43(v53);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_1();
  v19 = OUTLINED_FUNCTION_60_0();
  v20 = type metadata accessor for CloudPlaylist.Attributes(v19);
  v21 = OUTLINED_FUNCTION_45_0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v25 = OUTLINED_FUNCTION_7_34();
  v26 = type metadata accessor for CloudPlaylist(v25);
  v27 = OUTLINED_FUNCTION_43(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  OUTLINED_FUNCTION_1();
  v31 = OUTLINED_FUNCTION_31_12();
  v32 = type metadata accessor for CloudAlbum.Attributes(v31);
  v33 = OUTLINED_FUNCTION_45_0(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33, v36);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_70_0();
  v37 = type metadata accessor for CloudAlbum(0);
  v38 = OUTLINED_FUNCTION_43(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38, v41);
  OUTLINED_FUNCTION_1();
  v44 = v43 - v42;
  v45 = type metadata accessor for CloudArtist.PlayableItem();
  v46 = OUTLINED_FUNCTION_43(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46, v49);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_1_99();
  sub_2175C12B0(v55, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_11_58();
      sub_2175C1360(v3, v5);
      sub_2171FF30C(v56, v57);
      sub_2175C12B0(v5 + *(v26 + 20), v4);
      sub_217385674();
      OUTLINED_FUNCTION_45_1();
      v51 = v5;
    }

    else
    {
      OUTLINED_FUNCTION_14_49();
      sub_2175C1360(v3, v2);
      sub_2171FF30C(v56, v57);
      sub_2175C12B0(v2 + *(v53 + 20), v54);
      sub_2173858E4();
      OUTLINED_FUNCTION_45_1();
      v51 = v2;
    }

    v52 = v44;
  }

  else
  {
    OUTLINED_FUNCTION_16_54();
    sub_2175C1360(v3, v44);
    sub_2171FF30C(v56, v57);
    sub_2175C12B0(v44 + *(v37 + 20), v0);
    sub_217385620();
    OUTLINED_FUNCTION_45_1();
    v51 = OUTLINED_FUNCTION_1_5();
  }

  sub_2175BEB90(v51, v52);
  OUTLINED_FUNCTION_170();
}

void CloudArtist.PlayableItem.decodeRawRelationships(from:)()
{
  OUTLINED_FUNCTION_171();
  v57 = v2;
  v3 = type metadata accessor for CloudStation(0);
  v4 = OUTLINED_FUNCTION_43(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_1();
  *(&v56 + 1) = v9 - v8;
  v10 = OUTLINED_FUNCTION_206();
  v11 = type metadata accessor for CloudPlaylist(v10);
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_1();
  v16 = OUTLINED_FUNCTION_71_0();
  v17 = type metadata accessor for CloudAlbum(v16);
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_7_34();
  v22 = type metadata accessor for CloudArtist.PlayableItem();
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  v58 = sub_217751DC8();
  OUTLINED_FUNCTION_1_99();
  v30 = OUTLINED_FUNCTION_1_5();
  sub_2175C12B0(v30, v31);
  OUTLINED_FUNCTION_47_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_87();
    v36 = OUTLINED_FUNCTION_45_4();
    sub_2175C1360(v36, v37);
    sub_2171F5110(v1 + *(v17 + 24), v59, &qword_27CB243C8, &unk_21775D390);
    if (v60 == 1)
    {
      OUTLINED_FUNCTION_0_110();
      sub_2175BEB90(v1, v38);
      v34 = &qword_27CB243C8;
      v35 = &unk_21775D390;
      goto LABEL_7;
    }

    sub_2171F0738(v59, &qword_27CB243C8, &unk_21775D390);
    sub_2171FF30C(v57, v59);
    v45 = sub_217383708(&unk_28295E588);
    Dictionary<>.init(from:skippingValuesFor:)(v59, v45);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_0_110();
    v44 = v1;
LABEL_15:
    sub_2175BEB90(v44, v43);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_5_72();
    v39 = *(&v56 + 1);
    sub_2175C1360(v29, *(&v56 + 1));
    if (*(*(&v56 + 1) + *(v3 + 24)))
    {
      OUTLINED_FUNCTION_2_96();
      sub_2175BEB90(*(&v56 + 1), v40);
      goto LABEL_16;
    }

    sub_2171FF30C(v57, v59);
    if (qword_280BE4D60 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_84();
    v46 = sub_217751DE8();
    sub_217383748(v46, v47, v48, v49, v50, v51, v52, v53, v56, v57, v58, v59[0], v59[1], v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    v55 = v54;

    Dictionary<>.init(from:skippingValuesFor:)(v59, v55);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_2_96();
    v44 = v39;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_6_70();
  sub_2175C1360(v29, v0);
  sub_2171F5110(v0 + *(v11 + 24), v59, &qword_27CB24358, &unk_21775D510);
  if (v60 != 1)
  {

    sub_2171F0738(v59, &qword_27CB24358, &unk_21775D510);
    sub_2171FF30C(v57, v59);
    OUTLINED_FUNCTION_84();
    v41 = sub_217751DE8();
    v42 = sub_217383728(v41);

    Dictionary<>.init(from:skippingValuesFor:)(v59, v42);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_3_89();
    v44 = v0;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_89();
  sub_2175BEB90(v0, v33);
  v34 = &qword_27CB24358;
  v35 = &unk_21775D510;
LABEL_7:
  sub_2171F0738(v59, v34, v35);
LABEL_16:
  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_170();
}

void CloudArtist.PlayableItem.decodeRawAssociations(from:)()
{
  OUTLINED_FUNCTION_171();
  *(&v54 + 1) = v2;
  v3 = type metadata accessor for CloudStation(0);
  v4 = OUTLINED_FUNCTION_43(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_1();
  *&v54 = v9 - v8;
  v10 = OUTLINED_FUNCTION_206();
  v11 = type metadata accessor for CloudPlaylist(v10);
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_1();
  v16 = OUTLINED_FUNCTION_71_0();
  v17 = type metadata accessor for CloudAlbum(v16);
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_7_34();
  v22 = type metadata accessor for CloudArtist.PlayableItem();
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  v55 = sub_217751DC8();
  OUTLINED_FUNCTION_1_99();
  v30 = OUTLINED_FUNCTION_1_5();
  sub_2175C12B0(v30, v31);
  OUTLINED_FUNCTION_47_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_87();
    v36 = OUTLINED_FUNCTION_45_4();
    sub_2175C1360(v36, v37);
    sub_2171F5110(v1 + *(v17 + 28), v56, &qword_27CB24AA8, &qword_217759080);
    if (v57 == 1)
    {
      OUTLINED_FUNCTION_0_110();
      sub_2175BEB90(v1, v38);
      v34 = &qword_27CB24AA8;
      v35 = &qword_217759080;
      goto LABEL_7;
    }

    sub_2171F0738(v56, &qword_27CB24AA8, &qword_217759080);
    sub_2171FF30C(*(&v54 + 1), v56);
    v45 = sub_2173839EC(&unk_28295E650);
    Dictionary<>.init(from:skippingValuesFor:)(v56, v45);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_0_110();
    v44 = v1;
LABEL_15:
    sub_2175BEB90(v44, v43);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_5_72();
    v39 = v29;
    v40 = v54;
    sub_2175C1360(v39, v54);
    if (*(v54 + *(v3 + 28)))
    {
      OUTLINED_FUNCTION_2_96();
      sub_2175BEB90(v54, v41);
      goto LABEL_16;
    }

    sub_2171FF30C(*(&v54 + 1), v56);
    if (qword_27CB23E58 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2C988, v46, v47, v48, v49, v50, v51, v52, v54, v55, v56[0], v56[1], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
    Dictionary<>.init(from:skippingValuesFor:)(v56, v53);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_2_96();
    v44 = v40;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_6_70();
  sub_2175C1360(v29, v0);
  sub_2171F5110(v0 + *(v11 + 28), v56, &qword_27CB24350, &unk_21776A5D0);
  if (v57 != 1)
  {

    sub_2171F0738(v56, &qword_27CB24350, &unk_21776A5D0);
    sub_2171FF30C(*(&v54 + 1), v56);
    v42 = sub_217383A0C(&unk_28295F028);
    Dictionary<>.init(from:skippingValuesFor:)(v56, v42);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_3_89();
    v44 = v0;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_89();
  sub_2175BEB90(v0, v33);
  v34 = &qword_27CB24350;
  v35 = &unk_21776A5D0;
LABEL_7:
  sub_2171F0738(v56, v34, v35);
LABEL_16:
  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_170();
}

void CloudArtist.PlayableItem.decodeRawMetadata(from:skippingValuesFor:)()
{
  OUTLINED_FUNCTION_171();
  v40 = v3;
  v4 = type metadata accessor for CloudStation(0);
  v5 = OUTLINED_FUNCTION_43(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_1();
  v39 = v10 - v9;
  v11 = OUTLINED_FUNCTION_206();
  v12 = type metadata accessor for CloudPlaylist(v11);
  v13 = OUTLINED_FUNCTION_43(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v17 = OUTLINED_FUNCTION_7_34();
  v18 = type metadata accessor for CloudAlbum(v17);
  v19 = OUTLINED_FUNCTION_43(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_31_12();
  v23 = type metadata accessor for CloudArtist.PlayableItem();
  v24 = OUTLINED_FUNCTION_43(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  sub_217751DC8();
  OUTLINED_FUNCTION_1_99();
  OUTLINED_FUNCTION_53_23();
  v28 = OUTLINED_FUNCTION_52_24();
  if (!v28)
  {
    OUTLINED_FUNCTION_4_87();
    OUTLINED_FUNCTION_50_24();
    v33 = *(v18 + 32);
    sub_2171F5110(v2 + v33, &v42, &qword_27CB243C0, &unk_21775D3A0);
    if (v43 == 1)
    {
      OUTLINED_FUNCTION_0_110();
      sub_2175BEB90(v2, v34);
      v31 = &qword_27CB243C0;
      v32 = &unk_21775D3A0;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_46();
    sub_2171FF30C(v40, v41);
    OUTLINED_FUNCTION_48_0(v2 + v33);
    sub_217751DE8();
    OUTLINED_FUNCTION_31_16();
    sub_217387350();
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_0_110();
    v38 = v2;
LABEL_13:
    sub_2175BEB90(v38, v37);
    goto LABEL_14;
  }

  if (v28 != 1)
  {
    OUTLINED_FUNCTION_5_72();
    sub_2175C1360(v0, v39);
    v35 = *(v4 + 32);
    sub_2171F5110(v39 + v35, &v42, &qword_27CB24340, &unk_2177650B0);
    if (v43 == 1)
    {
      OUTLINED_FUNCTION_2_96();
      sub_2175BEB90(v39, v36);
      v31 = &qword_27CB24340;
      v32 = &unk_2177650B0;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_46();
    sub_2171FF30C(v40, v41);
    OUTLINED_FUNCTION_48_0(v39 + v35);
    sub_217751DE8();
    OUTLINED_FUNCTION_31_16();
    sub_2173876D0();
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_2_96();
    v38 = v39;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_6_70();
  OUTLINED_FUNCTION_51_21();
  v29 = *(v12 + 32);
  sub_2171F5110(v1 + v29, &v42, &qword_27CB24348, &unk_21775D520);
  if (v43 != 1)
  {

    OUTLINED_FUNCTION_46();
    sub_2171FF30C(v40, v41);
    OUTLINED_FUNCTION_48_0(v1 + v29);
    sub_217751DE8();
    OUTLINED_FUNCTION_31_16();
    sub_217387380();
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_3_89();
    v38 = v1;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_3_89();
  sub_2175BEB90(v1, v30);
  v31 = &qword_27CB24348;
  v32 = &unk_21775D520;
LABEL_9:
  sub_2171F0738(&v42, v31, v32);
LABEL_14:
  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_170();
}

void CloudArtist.PlayableItem.mergeAttributes(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v1;
  v34 = v6;
  v35 = v5;
  v7 = type metadata accessor for CloudStation(0);
  v8 = OUTLINED_FUNCTION_43(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v12 = type metadata accessor for CloudPlaylist(0);
  v13 = OUTLINED_FUNCTION_43(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v17 = OUTLINED_FUNCTION_7_34();
  v18 = type metadata accessor for CloudAlbum(v17);
  v19 = OUTLINED_FUNCTION_43(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v26 = type metadata accessor for CloudArtist.PlayableItem();
  v27 = OUTLINED_FUNCTION_43(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_1_99();
  sub_2175C12B0(v4, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_11_58();
      sub_2175C1360(v0, v3);
      sub_2173884CC(v3 + *(v12 + 20), v34, v35);
      OUTLINED_FUNCTION_45_1();
      v32 = v3;
    }

    else
    {
      OUTLINED_FUNCTION_14_49();
      sub_2175C1360(v0, v2);
      sub_2173885F8(v2 + *(v7 + 20), v34, v35);
      OUTLINED_FUNCTION_45_1();
      v32 = v2;
    }

    v33 = v25;
  }

  else
  {
    OUTLINED_FUNCTION_16_54();
    sub_2175C1360(v0, v25);
    sub_217388478(v25 + *(v18 + 20), v34, v35);
    OUTLINED_FUNCTION_45_1();
    v32 = OUTLINED_FUNCTION_1_5();
  }

  sub_2175BEB90(v32, v33);
  OUTLINED_FUNCTION_170();
}

void CloudArtist.PlayableItem.mergeRelationships(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v14 = OUTLINED_FUNCTION_60_1(v12, v13);
  v15 = OUTLINED_FUNCTION_43(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_1();
  v19 = OUTLINED_FUNCTION_206();
  v20 = type metadata accessor for CloudPlaylist(v19);
  v21 = OUTLINED_FUNCTION_43(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v25 = OUTLINED_FUNCTION_7_34();
  v26 = type metadata accessor for CloudAlbum(v25);
  v27 = OUTLINED_FUNCTION_43(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_31_12();
  v31 = type metadata accessor for CloudArtist.PlayableItem();
  v32 = OUTLINED_FUNCTION_43(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21_39();
  if (v36)
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_1_99();
  OUTLINED_FUNCTION_53_23();
  v37 = OUTLINED_FUNCTION_52_24();
  if (!v37)
  {
    OUTLINED_FUNCTION_4_87();
    OUTLINED_FUNCTION_50_24();
    sub_2171F5110(v11 + *(v26 + 24), v50, &qword_27CB243C8, &unk_21775D390);
    OUTLINED_FUNCTION_54();
    if (!v38)
    {

      memcpy(v51, v50, 0x300uLL);
      sub_217388868();
      OUTLINED_FUNCTION_98();
      sub_21726A4EC(v51);
      OUTLINED_FUNCTION_0_110();
      v44 = v11;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_0_110();
    sub_2175BEB90(v11, v42);
    v40 = &qword_27CB243C8;
    v41 = &unk_21775D390;
    goto LABEL_11;
  }

  if (v37 == 1)
  {
    OUTLINED_FUNCTION_6_70();
    OUTLINED_FUNCTION_51_21();
    sub_2171F5110(v10 + *(v20 + 24), v50, &qword_27CB24358, &unk_21775D510);
    OUTLINED_FUNCTION_54();
    if (!v38)
    {

      memcpy(v51, v50, 0x380uLL);
      sub_2173888A8();
      OUTLINED_FUNCTION_98();
      sub_21726A354(v51);
      OUTLINED_FUNCTION_3_89();
      v44 = v10;
LABEL_14:
      sub_2175BEB90(v44, v43);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_3_89();
    sub_2175BEB90(v10, v39);
    v40 = &qword_27CB24358;
    v41 = &unk_21775D510;
LABEL_11:
    sub_2171F0738(v50, v40, v41);
    OUTLINED_FUNCTION_53();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_5_72();
  OUTLINED_FUNCTION_43_23();
  if (*(v20 + *(v14 + 24)))
  {
    OUTLINED_FUNCTION_53();
  }

  else
  {

    sub_2171FF30C(v49, v51);
    v45 = sub_2174D4AA8(v51);
    if (!a10)
    {
      v46 = v45;
      v47 = sub_217751DE8();
      sub_2174D37FC(v47, v46);
      OUTLINED_FUNCTION_98();
    }
  }

  OUTLINED_FUNCTION_2_96();
  sub_2175BEB90(v20, v48);
LABEL_18:
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

void CloudArtist.PlayableItem.mergeAssociations(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v14 = OUTLINED_FUNCTION_60_1(v12, v13);
  v15 = OUTLINED_FUNCTION_43(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_1();
  v19 = OUTLINED_FUNCTION_206();
  v20 = type metadata accessor for CloudPlaylist(v19);
  v21 = OUTLINED_FUNCTION_43(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v25 = OUTLINED_FUNCTION_7_34();
  v26 = type metadata accessor for CloudAlbum(v25);
  v27 = OUTLINED_FUNCTION_43(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_31_12();
  v31 = type metadata accessor for CloudArtist.PlayableItem();
  v32 = OUTLINED_FUNCTION_43(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21_39();
  if (v36)
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_1_99();
  OUTLINED_FUNCTION_53_23();
  v37 = OUTLINED_FUNCTION_52_24();
  if (!v37)
  {
    OUTLINED_FUNCTION_4_87();
    OUTLINED_FUNCTION_50_24();
    sub_2171F5110(v11 + *(v26 + 28), v50, &qword_27CB24AA8, &qword_217759080);
    OUTLINED_FUNCTION_54();
    if (!v38)
    {

      OUTLINED_FUNCTION_41_28();
      OUTLINED_FUNCTION_20_38();
      sub_217388C10();
      OUTLINED_FUNCTION_98();
      sub_2172845E8(v51);
      OUTLINED_FUNCTION_0_110();
      v44 = v11;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_0_110();
    sub_2175BEB90(v11, v42);
    v40 = &qword_27CB24AA8;
    v41 = &qword_217759080;
    goto LABEL_11;
  }

  if (v37 == 1)
  {
    OUTLINED_FUNCTION_6_70();
    OUTLINED_FUNCTION_51_21();
    sub_2171F5110(v10 + *(v20 + 28), v50, &qword_27CB24350, &unk_21776A5D0);
    OUTLINED_FUNCTION_54();
    if (!v38)
    {

      OUTLINED_FUNCTION_41_28();
      OUTLINED_FUNCTION_20_38();
      sub_217388C50();
      OUTLINED_FUNCTION_98();
      sub_21726A300(v51);
      OUTLINED_FUNCTION_3_89();
      v44 = v10;
LABEL_14:
      sub_2175BEB90(v44, v43);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_3_89();
    sub_2175BEB90(v10, v39);
    v40 = &qword_27CB24350;
    v41 = &unk_21776A5D0;
LABEL_11:
    sub_2171F0738(v50, v40, v41);
    OUTLINED_FUNCTION_53();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_5_72();
  OUTLINED_FUNCTION_43_23();
  if (*(v20 + *(v14 + 28)))
  {
    OUTLINED_FUNCTION_53();
  }

  else
  {

    sub_2171FF30C(v49, v51);
    v45 = sub_2174D53F4(v51);
    if (!a10)
    {
      v46 = v45;
      v47 = sub_217751DE8();
      sub_2174D37FC(v47, v46);
      OUTLINED_FUNCTION_98();
    }
  }

  OUTLINED_FUNCTION_2_96();
  sub_2175BEB90(v20, v48);
LABEL_18:
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

void CloudArtist.PlayableItem.mergeMetadata(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v14 = OUTLINED_FUNCTION_60_1(v12, v13);
  v15 = OUTLINED_FUNCTION_43(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_1();
  v19 = OUTLINED_FUNCTION_206();
  v20 = type metadata accessor for CloudPlaylist(v19);
  v21 = OUTLINED_FUNCTION_43(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v25 = OUTLINED_FUNCTION_7_34();
  v26 = type metadata accessor for CloudAlbum(v25);
  v27 = OUTLINED_FUNCTION_43(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_31_12();
  v31 = type metadata accessor for CloudArtist.PlayableItem();
  v32 = OUTLINED_FUNCTION_43(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21_39();
  if (v36)
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_1_99();
  OUTLINED_FUNCTION_53_23();
  v37 = OUTLINED_FUNCTION_52_24();
  if (!v37)
  {
    OUTLINED_FUNCTION_4_87();
    OUTLINED_FUNCTION_50_24();
    sub_2171F5110(v11 + *(v26 + 32), v50, &qword_27CB243C0, &unk_21775D3A0);
    if (v50[6] != 1)
    {

      memcpy(v51, v50, 0x140uLL);
      OUTLINED_FUNCTION_20_38();
      sub_217388E48();
      OUTLINED_FUNCTION_98();
      sub_21726A498(v51);
      OUTLINED_FUNCTION_0_110();
      v44 = v11;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_0_110();
    sub_2175BEB90(v11, v42);
    v40 = &qword_27CB243C0;
    v41 = &unk_21775D3A0;
    goto LABEL_10;
  }

  if (v37 == 1)
  {
    OUTLINED_FUNCTION_6_70();
    OUTLINED_FUNCTION_51_21();
    sub_2171F5110(v10 + *(v20 + 28), v50, &qword_27CB24350, &unk_21776A5D0);
    OUTLINED_FUNCTION_54();
    if (!v38)
    {

      OUTLINED_FUNCTION_41_28();
      OUTLINED_FUNCTION_20_38();
      sub_217388C50();
      OUTLINED_FUNCTION_98();
      sub_21726A300(v51);
      OUTLINED_FUNCTION_3_89();
      v44 = v10;
LABEL_14:
      sub_2175BEB90(v44, v43);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_3_89();
    sub_2175BEB90(v10, v39);
    v40 = &qword_27CB24350;
    v41 = &unk_21776A5D0;
LABEL_10:
    sub_2171F0738(v50, v40, v41);
    OUTLINED_FUNCTION_53();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_5_72();
  OUTLINED_FUNCTION_43_23();
  if (*(v20 + *(v14 + 28)))
  {
    OUTLINED_FUNCTION_53();
  }

  else
  {

    sub_2171FF30C(v49, v51);
    v45 = sub_2174D53F4(v51);
    if (!a10)
    {
      v46 = v45;
      v47 = sub_217751DE8();
      sub_2174D37FC(v47, v46);
      OUTLINED_FUNCTION_98();
    }
  }

  OUTLINED_FUNCTION_2_96();
  sub_2175BEB90(v20, v48);
LABEL_18:
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2175C08D0(uint64_t a1)
{
  v2 = sub_2175C130C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175C090C(uint64_t a1)
{
  v2 = sub_2175C130C();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudArtist.PlayableItem.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v5 = v4;
  v6 = sub_217752B38();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v72 = v8;
  v73 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7, v11);
  OUTLINED_FUNCTION_1();
  v71 = v13 - v12;
  v14 = OUTLINED_FUNCTION_206();
  v15 = type metadata accessor for CloudStation(v14);
  v16 = OUTLINED_FUNCTION_45_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_1();
  v70 = v21 - v20;
  v22 = OUTLINED_FUNCTION_206();
  v23 = type metadata accessor for CloudPlaylist(v22);
  v24 = OUTLINED_FUNCTION_45_0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  OUTLINED_FUNCTION_1();
  v28 = OUTLINED_FUNCTION_60_0();
  v29 = type metadata accessor for CloudAlbum(v28);
  v30 = OUTLINED_FUNCTION_45_0(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  OUTLINED_FUNCTION_1();
  v36 = v35 - v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A518, &qword_2177814C8);
  v38 = OUTLINED_FUNCTION_0_0(v37);
  v74 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38, v42);
  OUTLINED_FUNCTION_31_12();
  v43 = type metadata accessor for CloudArtist.PlayableItem();
  v44 = OUTLINED_FUNCTION_43(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44, v47);
  OUTLINED_FUNCTION_8_4();
  v48 = *(v5 + 32);
  v82 = v5;
  __swift_project_boxed_opaque_existential_1(v5, *(v5 + 24));
  sub_2175C130C();
  sub_2177532C8();
  if (!v0)
  {
    v75 = v36;
    sub_21733BE84();
    sub_217752EA8();
    v69 = v3;
    v50 = v77;
    v49 = v78;
    v5 = v79;
    if (qword_280BE7F08 != -1)
    {
      swift_once();
    }

    if (static Array<A>.~= infix(_:_:)(off_280BE7F10, &v77))
    {
      goto LABEL_14;
    }

    if (qword_280BE5740 != -1)
    {
      swift_once();
    }

    v51 = qword_280BE5748 == v50 && unk_280BE5750 == v49;
    if (v51 || (sub_217753058() & 1) != 0)
    {
LABEL_14:

      OUTLINED_FUNCTION_104_6();
      CloudAlbum.init(from:)();
      (*(v74 + 8))(v69, v37);
      OUTLINED_FUNCTION_4_87();
      sub_2175C1360(v75, v2);
    }

    else
    {
      if (qword_280BE4610 != -1)
      {
        swift_once();
      }

      v77 = v50;
      v78 = v49;
      v79 = v5;
      if (static Array<A>.~= infix(_:_:)(off_280BE4618[0], &v77))
      {
        goto LABEL_26;
      }

      v76 = v49;
      if (qword_280BE4788 != -1)
      {
        swift_once();
      }

      v54 = qword_280BE4790 == v50 && *algn_280BE4798 == v49;
      if (v54 || (sub_217753058() & 1) != 0)
      {
LABEL_26:

        OUTLINED_FUNCTION_104_6();
        CloudPlaylist.init(from:)();
        v55 = OUTLINED_FUNCTION_27_1();
        v56(v55);
        OUTLINED_FUNCTION_6_70();
        sub_2175C1360(v1, v2);
      }

      else
      {
        if (qword_280BE4DA0 != -1)
        {
          swift_once();
        }

        v57 = v50;
        v77 = v50;
        v78 = v76;
        v79 = v5;
        if (!static Array<A>.~= infix(_:_:)(off_280BE4DA8, &v77))
        {
          v60 = v82[4];
          __swift_project_boxed_opaque_existential_1(v82, v82[3]);
          sub_217753298();
          v77 = 0;
          v78 = 0xE000000000000000;
          sub_217752AA8();
          MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177ADC50);
          v80 = 34;
          v81 = 0xE100000000000000;
          MEMORY[0x21CEA23B0](v57, v76);
          MEMORY[0x21CEA23B0](34, 0xE100000000000000);

          MEMORY[0x21CEA23B0](v80, v81);

          MEMORY[0x21CEA23B0](0xD00000000000002BLL, 0x80000002177B21C0);
          sub_217752B08();
          v61 = sub_217752B48();
          swift_allocError();
          v63 = v62;
          v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
          *v63 = v43;
          (*(v72 + 16))(v63 + v64, v71, v73);
          v65 = *(*(v61 - 8) + 104);
          v66 = v61;
          v5 = v82;
          v65(v63, *MEMORY[0x277D84160], v66);
          swift_willThrow();
          (*(v72 + 8))(v71, v73);
          v67 = OUTLINED_FUNCTION_27_1();
          v68(v67);
          goto LABEL_3;
        }

        OUTLINED_FUNCTION_104_6();
        CloudStation.init(from:)();
        v58 = OUTLINED_FUNCTION_27_1();
        v59(v58);
        OUTLINED_FUNCTION_5_72();
        sub_2175C1360(v70, v2);
      }
    }

    swift_storeEnumTagMultiPayload();
    v52 = OUTLINED_FUNCTION_47_2();
    sub_2175C1360(v52, v53);
  }

LABEL_3:
  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudArtist.PlayableItem.encode(to:)()
{
  v4 = OUTLINED_FUNCTION_101();
  v5 = type metadata accessor for CloudStation(v4);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_1();
  v12 = (v11 - v10);
  v13 = type metadata accessor for CloudPlaylist(0);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v18 = type metadata accessor for CloudAlbum(0);
  v19 = OUTLINED_FUNCTION_45_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_71_0();
  v23 = type metadata accessor for CloudArtist.PlayableItem();
  v24 = OUTLINED_FUNCTION_43(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_1_99();
  v28 = OUTLINED_FUNCTION_45_4();
  sub_2175C12B0(v28, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2175C1360(v3, v12);
      CloudStation.encode(to:)(v0);
      v31 = v12;
      v32 = type metadata accessor for CloudStation;
      return sub_2175BEB90(v31, v32);
    }

    OUTLINED_FUNCTION_15_52();
    sub_2175C1360(v3, v1);
    CloudPlaylist.encode(to:)();
    v31 = v1;
  }

  else
  {
    v12 = type metadata accessor for CloudAlbum;
    sub_2175C1360(v3, v2);
    CloudAlbum.encode(to:)();
    v31 = v2;
  }

  v32 = v12;
  return sub_2175BEB90(v31, v32);
}

uint64_t sub_2175C12B0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_101();
  v6 = v5(v4);
  OUTLINED_FUNCTION_43(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

unint64_t sub_2175C130C()
{
  result = qword_27CB2A520;
  if (!qword_27CB2A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A520);
  }

  return result;
}

uint64_t sub_2175C1360(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_101();
  v6 = v5(v4);
  OUTLINED_FUNCTION_43(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

unint64_t sub_2175C13C0()
{
  result = qword_27CB2A528;
  if (!qword_27CB2A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A528);
  }

  return result;
}

unint64_t sub_2175C1418()
{
  result = qword_27CB2A530;
  if (!qword_27CB2A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A530);
  }

  return result;
}

unint64_t sub_2175C1470()
{
  result = qword_27CB2A538;
  if (!qword_27CB2A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A538);
  }

  return result;
}

unint64_t sub_2175C14C8()
{
  result = qword_27CB2A540;
  if (!qword_27CB2A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A540);
  }

  return result;
}

unint64_t sub_2175C1520()
{
  result = qword_27CB2A548;
  if (!qword_27CB2A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A548);
  }

  return result;
}

unint64_t sub_2175C1578()
{
  result = qword_27CB2A550;
  if (!qword_27CB2A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A550);
  }

  return result;
}

unint64_t sub_2175C15D0()
{
  result = qword_27CB2A558;
  if (!qword_27CB2A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A558);
  }

  return result;
}

unint64_t sub_2175C1628()
{
  result = qword_27CB2A560;
  if (!qword_27CB2A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A560);
  }

  return result;
}

unint64_t sub_2175C1680()
{
  result = qword_27CB2A568;
  if (!qword_27CB2A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A568);
  }

  return result;
}

unint64_t sub_2175C16D8()
{
  result = qword_27CB2A570;
  if (!qword_27CB2A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A570);
  }

  return result;
}

unint64_t sub_2175C1730()
{
  result = qword_27CB2A578;
  if (!qword_27CB2A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A578);
  }

  return result;
}

unint64_t sub_2175C1788()
{
  result = qword_27CB2A580;
  if (!qword_27CB2A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A580);
  }

  return result;
}

unint64_t sub_2175C17E0()
{
  result = qword_27CB2A588;
  if (!qword_27CB2A588)
  {
    type metadata accessor for CloudArtist.PlayableItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A588);
  }

  return result;
}

_BYTE *sub_2175C1878(_BYTE *result, int a2, int a3)
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

unint64_t sub_2175C1968()
{
  result = qword_27CB2A590;
  if (!qword_27CB2A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A590);
  }

  return result;
}

unint64_t sub_2175C19C0()
{
  result = qword_27CB2A598;
  if (!qword_27CB2A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A598);
  }

  return result;
}

unint64_t sub_2175C1A18()
{
  result = qword_27CB2A5A0;
  if (!qword_27CB2A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A5A0);
  }

  return result;
}

unint64_t sub_2175C1A70()
{
  result = qword_27CB2A5A8;
  if (!qword_27CB2A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A5A8);
  }

  return result;
}

unint64_t sub_2175C1AC8()
{
  result = qword_27CB2A5B0;
  if (!qword_27CB2A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A5B0);
  }

  return result;
}

unint64_t sub_2175C1B20()
{
  result = qword_27CB2A5B8;
  if (!qword_27CB2A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A5B8);
  }

  return result;
}

unint64_t sub_2175C1B78()
{
  result = qword_27CB2A5C0;
  if (!qword_27CB2A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A5C0);
  }

  return result;
}

unint64_t sub_2175C1BD0()
{
  result = qword_27CB2A5C8;
  if (!qword_27CB2A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A5C8);
  }

  return result;
}

unint64_t sub_2175C1C28()
{
  result = qword_27CB2A5D0;
  if (!qword_27CB2A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A5D0);
  }

  return result;
}

unint64_t sub_2175C1C80()
{
  result = qword_27CB2A5D8;
  if (!qword_27CB2A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A5D8);
  }

  return result;
}

unint64_t sub_2175C1CD8()
{
  result = qword_27CB2A5E0;
  if (!qword_27CB2A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A5E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_38()
{
  result = v0 + 552;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v1 - 72);
  return result;
}

void *OUTLINED_FUNCTION_41_28()
{

  return memcpy((v0 + 552), (v0 + 40), 0x200uLL);
}

uint64_t OUTLINED_FUNCTION_43_23()
{
  v3 = *(v0 + 8);

  return sub_2175C1360(v1, v3);
}

uint64_t OUTLINED_FUNCTION_50_24()
{

  return sub_2175C1360(v0, v1);
}

uint64_t OUTLINED_FUNCTION_51_21()
{

  return sub_2175C1360(v0, v1);
}

uint64_t OUTLINED_FUNCTION_52_24()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_53_23()
{

  return sub_2175C12B0(v0, v1);
}

uint64_t MusicPersonalRecommendation.Item.id.getter()
{
  MusicPersonalRecommendation.Item.innerItem.getter(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 8))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v3);
  return OUTLINED_FUNCTION_93();
}

double MusicPersonalRecommendation.Item.innerItem.getter@<D0>(uint64_t *a1@<X8>)
{
  sub_217283ECC(v1, v8);
  v3 = off_27822A8E0[v11];
  v4 = *(&off_27822A8F8 + v11);
  a1[3] = off_27822A8C8[v11];
  a1[4] = v3;
  v5 = swift_allocObject();
  *a1 = v5;
  v6 = v8[1];
  *(v5 + 16) = v8[0];
  *(v5 + 32) = v6;
  result = *&v9;
  *(v5 + 48) = v9;
  *(v5 + 64) = v10;
  return result;
}

void *MusicPersonalRecommendation.Item.artwork.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_217283ECC(v1, &v33);
  if (v39)
  {
    if (v39 == 1)
    {
      OUTLINED_FUNCTION_2_1(v3, v4, v5, v6, v7, v8, v9, v10, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
      Playlist.artwork.getter(__src);
      sub_21726B8C4(&v26);
    }

    else
    {
      OUTLINED_FUNCTION_2_1(v3, v4, v5, v6, v7, v8, v9, v10, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
      if (qword_280BE6760 != -1)
      {
        swift_once();
      }

      sub_2176CABE4(qword_280C020A0, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, *(&v37 + 1), v38, v39, __src[0], __src[1], __src[2]);
      sub_217283DC8(&v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_1(v3, v4, v5, v6, v7, v8, v9, v10, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
    if (qword_280BE9428 != -1)
    {
      swift_once();
    }

    sub_2176CA9A8(qword_280C026F8, v11, v12, v13, v14, v15, v16, v17, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, *(&v37 + 1), v38, v39, __src[0], __src[1], __src[2]);
    sub_21725CE44(&v26);
  }

  return memcpy(a1, __src, 0x221uLL);
}

uint64_t MusicPersonalRecommendation.Item.title.getter()
{
  v1 = sub_217283ECC(v0, &v18);
  if (v23)
  {
    if (v23 == 1)
    {
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE9208 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3F14();
      OUTLINED_FUNCTION_21_4();
      sub_21726B8C4(&v10);
    }

    else
    {
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE6778 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3FDC();
      OUTLINED_FUNCTION_21_4();
      sub_217283DC8(&v10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
    if (qword_280BE9470 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4380();
    OUTLINED_FUNCTION_21_4();
    sub_21725CE44(&v10);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t MusicPersonalRecommendation.Item.subtitle.getter()
{
  v1 = sub_217283ECC(v0, &v18);
  if (v23)
  {
    if (v23 == 1)
    {
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE93B0 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3F14();
      sub_21726B8C4(&v10);
    }

    else
    {
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE67C8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3FDC();
      sub_217283DC8(&v10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
    if (qword_280BE9680 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4380();
    OUTLINED_FUNCTION_21_4();
    sub_21725CE44(&v10);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t static MusicPersonalRecommendation.Item.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_217283ECC(a1, v59);
  sub_217283ECC(a2, &v61);
  if (v60)
  {
    if (v60 == 1)
    {
      v4 = sub_217283ECC(v59, &v52);
      if (v62 == 1)
      {
        OUTLINED_FUNCTION_2_0(v4, v5, v6, v7, v8, v9, v10, v11, v44, v45, v46, v47, v48, v49, v50, v51, v52);
        v14 = v14 && v12 == v13;
        if (v14 || (sub_217753058() & 1) != 0)
        {
          OUTLINED_FUNCTION_9_2(&v52, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
          v15 = OUTLINED_FUNCTION_13_4();
          v16 = v2(v15);
          sub_21726B8C4(&v44);
          if (v16)
          {
            sub_21726B8C4(&v52);
LABEL_31:
            sub_217283F28(v59);
            return 1;
          }
        }

        else
        {
          sub_21726B8C4(&v44);
        }

        sub_21726B8C4(&v52);
        goto LABEL_38;
      }

      sub_21726B8C4(&v52);
    }

    else
    {
      v25 = sub_217283ECC(v59, &v52);
      if (v62 == 2)
      {
        OUTLINED_FUNCTION_2_0(v25, v26, v27, v28, v29, v30, v31, v32, v44, v45, v46, v47, v48, v49, v50, v51, v52);
        v35 = v14 && v33 == v34;
        if (v35 || (sub_217753058() & 1) != 0)
        {
          OUTLINED_FUNCTION_9_2(&v52, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
          v36 = OUTLINED_FUNCTION_13_4();
          v37 = v2(v36);
          sub_217283DC8(&v44);
          if (v37)
          {
            sub_217283DC8(&v52);
            goto LABEL_31;
          }
        }

        else
        {
          sub_217283DC8(&v44);
        }

        sub_217283DC8(&v52);
        goto LABEL_38;
      }

      sub_217283DC8(&v52);
    }
  }

  else
  {
    v17 = sub_217283ECC(v59, &v52);
    if (!v62)
    {
      OUTLINED_FUNCTION_2_0(v17, v18, v19, v20, v21, v22, v23, v24, v44, v45, v46, v47, v48, v49, v50, v51, v52);
      v40 = v14 && v38 == v39;
      if (v40 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v52, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v41 = OUTLINED_FUNCTION_13_4();
        v42 = v2(v41);
        sub_21725CE44(&v44);
        if (v42)
        {
          sub_21725CE44(&v52);
          goto LABEL_31;
        }
      }

      else
      {
        sub_21725CE44(&v44);
      }

      sub_21725CE44(&v52);
LABEL_38:
      sub_217283F28(v59);
      return 0;
    }

    sub_21725CE44(&v52);
  }

  sub_2175C32A8(v59);
  return 0;
}

uint64_t MusicPersonalRecommendation.Item.hash(into:)()
{
  v1 = sub_217283ECC(v0, &v27);
  if (v32)
  {
    if (v32 == 1)
    {
      v9 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
      MEMORY[0x21CEA3550](1, v9);
      sub_217751FF8();
      __swift_project_boxed_opaque_existential_1(&v21, v24);
      v10 = OUTLINED_FUNCTION_3_4();
      v11(v10);
      return sub_21726B8C4(&v19);
    }

    else
    {
      v16 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
      MEMORY[0x21CEA3550](2, v16);
      sub_217751FF8();
      __swift_project_boxed_opaque_existential_1(&v21, v24);
      v17 = OUTLINED_FUNCTION_3_4();
      v18(v17);
      return sub_217283DC8(&v19);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    MEMORY[0x21CEA3550](0, v13);
    sub_217751FF8();
    __swift_project_boxed_opaque_existential_1(&v21, v24);
    v14 = OUTLINED_FUNCTION_3_4();
    v15(v14);
    return sub_21725CE44(&v19);
  }
}

uint64_t MusicPersonalRecommendation.Item.hashValue.getter()
{
  sub_2177531E8();
  MusicPersonalRecommendation.Item.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2175C2748()
{
  sub_2177531E8();
  MusicPersonalRecommendation.Item.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2175C2784@<X0>(uint64_t *a1@<X8>)
{
  result = MusicPersonalRecommendation.Item.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicPersonalRecommendation.Item.init(from:)(uint64_t *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EED40();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicPersonalRecommendation.Item.description.getter()
{
  sub_217283ECC(v0, &v23);
  if (v28)
  {
    if (v28 == 1)
    {
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
      sub_217752AA8();

      OUTLINED_FUNCTION_11_59();
      v9 = Playlist.description.getter();
      MEMORY[0x21CEA23B0](v9);

      OUTLINED_FUNCTION_18_1();
      sub_21726B8C4(&v15);
    }

    else
    {
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
      sub_217752AA8();

      OUTLINED_FUNCTION_11_59();
      v11 = Station.description.getter();
      MEMORY[0x21CEA23B0](v11);

      OUTLINED_FUNCTION_18_1();
      sub_217283DC8(&v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
    sub_217752AA8();

    OUTLINED_FUNCTION_11_59();
    v10 = Album.description.getter();
    MEMORY[0x21CEA23B0](v10);

    OUTLINED_FUNCTION_18_1();
    sub_21725CE44(&v15);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t MusicPersonalRecommendation.Item.debugDescription.getter()
{
  sub_217283ECC(v0, v3);
  if (v4)
  {
    if (v4 == 1)
    {
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_12_43();
      Playlist.debugDescription.getter();
      OUTLINED_FUNCTION_7_51();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      sub_21726B8C4(v2);
    }

    else
    {
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_12_43();
      Station.debugDescription.getter();
      OUTLINED_FUNCTION_7_51();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      sub_217283DC8(v2);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_8();
    sub_217752AA8();

    OUTLINED_FUNCTION_12_43();
    Album.debugDescription.getter();
    OUTLINED_FUNCTION_7_51();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_15_9();
    OUTLINED_FUNCTION_17_36();

    OUTLINED_FUNCTION_16_5();
    sub_21725CE44(v2);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t MusicPersonalRecommendation.Item.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 48))(v66, v4, v5);
  v6 = v66[1];
  if (qword_280BE8A88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_30_2(&qword_280BE8A90);
  v8 = v8 && v7 == v6;
  if (!v8 && (OUTLINED_FUNCTION_25_38() & 1) == 0)
  {
    if (qword_280BE8AE8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_30_2(&qword_280BE8AF0);
    v10 = v8 && v9 == v6;
    if (!v10 && (OUTLINED_FUNCTION_25_38() & 1) == 0)
    {
      if (qword_280BE8A38 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_30_2(&qword_280BE8A40);
      v27 = v8 && v26 == v6;
      if (v27 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
      {
        goto LABEL_31;
      }

      if (qword_280BE8AA8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_30_2(&qword_280BE8AB0);
      v29 = v8 && v28 == v6;
      if (v29 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
      {
LABEL_31:

        sub_2171FF30C(a1, v58);
        __swift_project_boxed_opaque_existential_1(v58, v59);
        v30 = OUTLINED_FUNCTION_8_49();
        v31(v30);
        v33 = v64;
        v32 = v65;
        sub_217751DE8();
        sub_217269F50(&v64);
        *&v60 = v33;
        *(&v60 + 1) = v32;
        v34 = __swift_project_boxed_opaque_existential_1(v58, v59);
        OUTLINED_FUNCTION_11_6(v34, v35, v36, v37, v38, v39, v40, v41, v57);
        __swift_destroy_boxed_opaque_existential_1(v58);
        v23 = 1;
        goto LABEL_16;
      }

      if (qword_280BE8A60 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_30_2(&qword_280BE8A68);
      if (!v8 || v42 != v6)
      {
        v44 = OUTLINED_FUNCTION_25_38();

        if (v44)
        {
LABEL_41:
          sub_2171FF30C(a1, v58);
          __swift_project_boxed_opaque_existential_1(v58, v59);
          v45 = OUTLINED_FUNCTION_8_49();
          v46(v45);
          v48 = v64;
          v47 = v65;
          sub_217751DE8();
          sub_217269F50(&v64);
          *&v60 = v48;
          *(&v60 + 1) = v47;
          v49 = __swift_project_boxed_opaque_existential_1(v58, v59);
          OUTLINED_FUNCTION_11_6(v49, v50, v51, v52, v53, v54, v55, v56, v57);
          __swift_destroy_boxed_opaque_existential_1(v58);
          v23 = 2;
          goto LABEL_16;
        }

        v57 = 242;
        sub_217752D08();
        __break(1u);
      }

      goto LABEL_41;
    }
  }

  sub_2171FF30C(a1, v58);
  __swift_project_boxed_opaque_existential_1(v58, v59);
  v11 = OUTLINED_FUNCTION_8_49();
  v12(v11);
  v14 = v64;
  v13 = v65;
  sub_217751DE8();
  sub_217269F50(&v64);
  *&v60 = v14;
  *(&v60 + 1) = v13;
  v15 = __swift_project_boxed_opaque_existential_1(v58, v59);
  OUTLINED_FUNCTION_11_6(v15, v16, v17, v18, v19, v20, v21, v22, v57);
  __swift_destroy_boxed_opaque_existential_1(v58);
  v23 = 0;
LABEL_16:
  v24 = v61;
  *a2 = v60;
  *(a2 + 16) = v24;
  *(a2 + 32) = v62;
  *(a2 + 48) = v63;
  *(a2 + 56) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double sub_2175C2EF0()
{
  if (qword_280BEB7A0 != -1)
  {
    swift_once();
  }

  v0 = off_280BEB7A8;
  os_unfair_lock_lock(*(off_280BEB7A8 + 2));
  sub_21770FA7C(0xD000000000000020, 0x80000002177B0C60, &type metadata for MusicPersonalRecommendation.Item, &protocol witness table for MusicPersonalRecommendation.Item, &v2);
  os_unfair_lock_unlock(v0[2]);
  result = *&v2;
  xmmword_27CB2A5E8 = v2;
  qword_27CB2A5F8 = v3;
  unk_27CB2A600 = v4;
  return result;
}

uint64_t static MusicPersonalRecommendation.Item.typeValue.getter@<X0>(__n128 *a1@<X8>)
{
  if (qword_27CB23D08 != -1)
  {
    swift_once();
  }

  *a1 = OUTLINED_FUNCTION_1449(&xmmword_27CB2A5E8);
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v2;

  return sub_217751DE8();
}

uint64_t sub_2175C3028()
{
  if (qword_27CB23D08 != -1)
  {
    swift_once();
  }

  xmmword_27CB2A608 = xmmword_27CB2A5E8;
  xmmword_27CB2A618 = xmmword_27CB2A5F8;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.personalRecommendationItem.getter@<X0>(__n128 *a1@<X8>)
{
  if (qword_27CB23D10 != -1)
  {
    swift_once();
  }

  *a1 = OUTLINED_FUNCTION_1449(&xmmword_27CB2A608);
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v2;

  return sub_217751DE8();
}

uint64_t sub_2175C3110()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177643C0;
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = OUTLINED_FUNCTION_1449(&xmmword_280BE62F8);
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  v3 = qword_280BE6220;
  sub_217751DE8();
  if (v3 != -1)
  {
    swift_once();
  }

  *(v0 + 64) = OUTLINED_FUNCTION_1449(&xmmword_280BE6228);
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;
  v6 = qword_280BE6248;
  sub_217751DE8();
  if (v6 != -1)
  {
    swift_once();
  }

  *(v0 + 96) = OUTLINED_FUNCTION_1449(&xmmword_280BE6250);
  *(v0 + 112) = v8;
  *(v0 + 120) = v7;
  qword_27CB2A628 = v0;

  return sub_217751DE8();
}

uint64_t static MusicPersonalRecommendation.Item.supportedTypeValues.getter()
{
  if (qword_27CB23D18 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t sub_2175C32A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A630, &unk_217781C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2175C3314()
{
  result = qword_27CB2A638;
  if (!qword_27CB2A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A638);
  }

  return result;
}

uint64_t sub_2175C3374(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2175C33B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_2175C3400(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 56) = a2;
  return result;
}

void *CloudPlaylistFolder.init(id:attributes:relationships:views:meta:)@<X0>(void *__src@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, _OWORD *a4@<X2>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a5;
  v9 = *a6;
  *a7 = a2;
  *(a7 + 8) = a3;
  v10 = a4[1];
  *(a7 + 16) = *a4;
  *(a7 + 32) = v10;
  result = memcpy((a7 + 48), __src, 0x100uLL);
  *(a7 + 304) = v8;
  *(a7 + 305) = v9;
  return result;
}

uint64_t CloudPlaylistFolder.Attributes.name.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudPlaylistFolder.Attributes.dateAdded.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

MusicKit::CloudPlaylistFolder::Attributes __swiftcall CloudPlaylistFolder.Attributes.init(name:dateAdded:)(Swift::String_optional name, Swift::String_optional dateAdded)
{
  *v2 = name;
  v2[1] = dateAdded;
  result.dateAdded = dateAdded;
  result.name = name;
  return result;
}

uint64_t static CloudPlaylistFolder.Attributes.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
      {
        return 1;
      }

      OUTLINED_FUNCTION_93();
      if (sub_217753058())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2175C35AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

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

uint64_t sub_2175C367C(char a1)
{
  if (a1)
  {
    return 0x6564644165746164;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_2175C36B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2175C35AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2175C36E0(uint64_t a1)
{
  v2 = sub_2175C38B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175C371C(uint64_t a1)
{
  v2 = sub_2175C38B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudPlaylistFolder.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A650, &qword_217781F40);
  OUTLINED_FUNCTION_0_0(v4);
  v17 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v11 = v16 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v16[1] = v0[3];
  v16[2] = v14;
  v15 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2175C38B4();
  sub_2177532F8();
  sub_217752EF8();
  if (!v1)
  {
    sub_217752EF8();
  }

  (*(v17 + 8))(v11, v4);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2175C38B4()
{
  result = qword_27CB2A658;
  if (!qword_27CB2A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A658);
  }

  return result;
}

uint64_t CloudPlaylistFolder.Attributes.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  if (!v0[1])
  {
    sub_217753208();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_217753208();
  }

  v3 = *v0;
  sub_217753208();
  sub_217751FF8();
  if (!v2)
  {
    return sub_217753208();
  }

LABEL_3:
  sub_217753208();

  return sub_217751FF8();
}

uint64_t CloudPlaylistFolder.Attributes.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2177531E8();
  sub_217753208();
  if (v2)
  {
    OUTLINED_FUNCTION_171_1();
    sub_217751FF8();
  }

  sub_217753208();
  if (v4)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

void CloudPlaylistFolder.Attributes.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A660, &qword_217781F48);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v22 - v12;
  v14 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2175C38B4();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v15 = sub_217752E18();
    v17 = v16;
    v18 = sub_217752E18();
    v20 = v19;
    v21 = *(v7 + 8);
    v23 = v18;
    v21(v13, v5);
    *v4 = v15;
    v4[1] = v17;
    v4[2] = v23;
    v4[3] = v20;
    sub_217751DE8();
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2175C3C70()
{
  v2 = *v0;
  v3 = v0[1];
  sub_2177531E8();
  CloudPlaylistFolder.Attributes.hash(into:)();
  return sub_217753238();
}

void *CloudPlaylistFolder.Relationships.init(children:parent:)@<X0>(void *__src@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(a3, __src, 0x80uLL);

  return memcpy((a3 + 128), a2, 0x80uLL);
}

uint64_t CloudPlaylistFolder.Relationships.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x746E65726170;
  }

  else
  {
    result = 0x6E6572646C696863;
  }

  *v0;
  return result;
}

uint64_t sub_2175C3E08@<X0>(uint64_t *a1@<X8>)
{
  result = CloudPlaylistFolder.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2175C3E4C(uint64_t a1)
{
  v2 = sub_21738C014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175C3E88(uint64_t a1)
{
  v2 = sub_21738C014();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static CloudPlaylistFolder.Relationships.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_53(a1, v17);
  OUTLINED_FUNCTION_15_53(a2, v19);
  if (v18)
  {
    sub_2174A87A0(v17, v16, &qword_27CB24A48, &qword_217759000);
    if (v19[2])
    {
      memcpy(v15, v19, sizeof(v15));
      v4 = sub_2172DE178(v16, v15);
      OUTLINED_FUNCTION_171_1();
      sub_2171F06D8(v5, v6, v7);
      OUTLINED_FUNCTION_171_1();
      sub_2171F06D8(v8, v9, v10);
      sub_2171F06D8(v17, &qword_27CB24A48, &qword_217759000);
      if ((v4 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }

    sub_2171F06D8(v16, &qword_27CB24A50, &qword_217759008);
LABEL_12:
    v12 = &unk_27CB2A668;
    v13 = &unk_217781F50;
    goto LABEL_18;
  }

  if (v19[2])
  {
    goto LABEL_12;
  }

  sub_2171F06D8(v17, &qword_27CB24A48, &qword_217759000);
LABEL_7:
  OUTLINED_FUNCTION_15_53(a1 + 128, v17);
  OUTLINED_FUNCTION_15_53(a2 + 128, v19);
  if (v18)
  {
    sub_2174A87A0(v17, v16, &qword_27CB24380, &unk_217759010);
    if (v19[2])
    {
      memcpy(v15, v19, sizeof(v15));
      v11 = sub_2172DE190(v16, v15);
      sub_2171F06D8(v15, &qword_27CB24388, &unk_217781F60);
      sub_2171F06D8(v16, &qword_27CB24388, &unk_217781F60);
      sub_2171F06D8(v17, &qword_27CB24380, &unk_217759010);
      return (v11 & 1) != 0;
    }

    sub_2171F06D8(v16, &qword_27CB24388, &unk_217781F60);
  }

  else if (!v19[2])
  {
    sub_2171F06D8(v17, &qword_27CB24380, &unk_217759010);
    return 1;
  }

  v12 = &unk_27CB26218;
  v13 = &unk_217761D58;
LABEL_18:
  sub_2171F06D8(v17, v12, v13);
  return 0;
}

uint64_t CloudPlaylistFolder.Relationships.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A670, &qword_217781F70);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21738C014();
  sub_2177532F8();
  v16[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A50, &qword_217759008);
  OUTLINED_FUNCTION_4_9();
  sub_2175C5B74(v13);
  OUTLINED_FUNCTION_223_0();
  if (!v1)
  {
    v16[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24388, &unk_217781F60);
    OUTLINED_FUNCTION_4_9();
    sub_2175C4338(v14);
    OUTLINED_FUNCTION_223_0();
  }

  return (*(v5 + 8))(v11, v3);
}

unint64_t sub_2175C42F8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    type metadata accessor for CloudPlaylistFolderItem();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2175C4338(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24388, &unk_217781F60);
    sub_2175C43AC(v4);
    result = OUTLINED_FUNCTION_20_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2175C43AC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24A38, &unk_217758FF0);
    sub_21737B6D8();
    sub_21737B72C();
    result = OUTLINED_FUNCTION_20_2();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t CloudPlaylistFolder.Relationships.hash(into:)(uint64_t a1)
{
  v3 = sub_2174A87A0(v1, v36, &qword_27CB24A48, &qword_217759000);
  if (v37)
  {
    OUTLINED_FUNCTION_10_1(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36[0]);
    OUTLINED_FUNCTION_24();
    sub_2172DE7B4(a1);
    sub_2171F06D8(&v20, &qword_27CB24A50, &qword_217759008);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v11 = sub_2174A87A0(v1 + 128, v36, &qword_27CB24380, &unk_217759010);
  if (!v37)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36[0]);
  OUTLINED_FUNCTION_24();
  sub_2172DE79C(a1);
  return sub_2171F06D8(&v20, &qword_27CB24388, &unk_217781F60);
}

uint64_t CloudPlaylistFolder.Relationships.hashValue.getter()
{
  sub_2177531E8();
  sub_2174A87A0(v0, __src, &qword_27CB24A48, &qword_217759000);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE7B4(v4);
    sub_2171F06D8(__dst, &qword_27CB24A50, &qword_217759008);
  }

  else
  {
    sub_217753208();
  }

  sub_2174A87A0(v0 + 128, __src, &qword_27CB24380, &unk_217759010);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE79C(v4);
    sub_2171F06D8(__dst, &qword_27CB24388, &unk_217781F60);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void CloudPlaylistFolder.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A698, &qword_217781F78);
  OUTLINED_FUNCTION_0_0(v18);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v19[-v11 - 8];
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_21738C014();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v14 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A50, &qword_217759008);
    OUTLINED_FUNCTION_3_90();
    sub_2175C5B74(v15);
    OUTLINED_FUNCTION_20_5();
    v16 = v18;
    OUTLINED_FUNCTION_169_4();
    memcpy(v20, v19, sizeof(v20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24388, &unk_217781F60);
    OUTLINED_FUNCTION_3_90();
    sub_2175C4338(v17);
    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_169_4();
    (*(v14 + 8))(v12, v16);
    memcpy(v21, v19, sizeof(v21));
    sub_21738BFB8(v20, v4);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_2172841E0(v20);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2175C48B8()
{
  sub_2177531E8();
  sub_2174A87A0(v0, __src, &qword_27CB24A48, &qword_217759000);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE7B4(v4);
    sub_2171F06D8(__dst, &qword_27CB24A50, &qword_217759008);
  }

  else
  {
    sub_217753208();
  }

  sub_2174A87A0(v0 + 128, __src, &qword_27CB24380, &unk_217759010);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE79C(v4);
    sub_2171F06D8(__dst, &qword_27CB24388, &unk_217781F60);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

uint64_t sub_2175C49E8(uint64_t a1)
{
  v2 = sub_2175C5C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175C4A24(uint64_t a1)
{
  v2 = sub_2175C5C84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2175C4B28(uint64_t a1)
{
  v2 = sub_2175C5CD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175C4B64(uint64_t a1)
{
  v2 = sub_2175C5CD8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2175C4BE4()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_0_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  sub_2177532F8();
  v12 = OUTLINED_FUNCTION_1_37();
  v13(v12);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudPlaylistFolder.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudPlaylistFolder.attributes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = v2;
  sub_217751DE8();

  return sub_217751DE8();
}

uint64_t static CloudPlaylistFolder.relationshipCodingKeys.setter(void *a1)
{
  swift_beginAccess();
  off_27CB2A640 = a1;
}

uint64_t sub_2175C4E94@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27CB2A640;
  return sub_217751DE8();
}

uint64_t sub_2175C4EE4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_27CB2A640 = v1;
  sub_217751DE8();
}

uint64_t static CloudPlaylistFolder.associationCodingKeys.getter()
{
  if (qword_27CB23D20 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t sub_2175C5024()
{
  if (qword_280BE4AF0 != -1)
  {
    swift_once();
  }

  qword_280BE3B30 = qword_280BE4AF8;
  *algn_280BE3B38 = unk_280BE4B00;
  byte_280BE3B40 = byte_280BE4B08;

  return sub_217751DE8();
}

uint64_t static CloudPlaylistFolder.libraryType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280BE3B28 != -1)
  {
    swift_once();
  }

  v2 = *algn_280BE3B38;
  v3 = byte_280BE3B40;
  *a1 = qword_280BE3B30;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return sub_217751DE8();
}

uint64_t static CloudPlaylistFolder.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 32);
  v12 = *(a1 + 16);
  v13 = v5;
  v6 = *(a2 + 32);
  v11[0] = *(a2 + 16);
  v11[1] = v6;
  if ((static CloudPlaylistFolder.Attributes.== infix(_:_:)(&v12, v11) & 1) == 0)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_15_53(a1 + 48, &v12);
  OUTLINED_FUNCTION_15_53(a2 + 48, v14);
  if (v13 != 1)
  {
    sub_2174A87A0(&v12, v11, &qword_27CB24A40, &qword_217781F90);
    if (v14[2] != 1)
    {
      memcpy(v10, v14, sizeof(v10));
      v7 = static CloudPlaylistFolder.Relationships.== infix(_:_:)(v11, v10);
      sub_2172841E0(v10);
      sub_2172841E0(v11);
      sub_2171F06D8(&v12, &qword_27CB24A40, &qword_217781F90);
      if (!v7)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    sub_2172841E0(v11);
LABEL_12:
    sub_2171F06D8(&v12, &qword_27CB2A6D0, &qword_217781F98);
    goto LABEL_15;
  }

  if (v14[2] != 1)
  {
    goto LABEL_12;
  }

  sub_2171F06D8(&v12, &qword_27CB24A40, &qword_217781F90);
LABEL_14:
  if (*(a1 + 304) == *(a2 + 304))
  {
    v8 = *(a1 + 305) ^ *(a2 + 305) ^ 1;
    return v8 & 1;
  }

LABEL_15:
  v8 = 0;
  return v8 & 1;
}

uint64_t sub_2175C52B4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2175C5350(uint64_t a1)
{
  v2 = sub_2175C5D2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175C538C(uint64_t a1)
{
  v2 = sub_2175C5D2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudPlaylistFolder.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A6D8, &qword_217781FA0);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v18 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2175C5D2C();
  sub_2177532F8();
  v15 = v3[1];
  v19 = *v3;
  *&v20 = v15;
  v22 = 0;
  sub_2172E1B18();
  OUTLINED_FUNCTION_2_58();
  sub_217752F88();
  if (!v2)
  {
    v16 = v3[5];
    v19 = v3[2];
    v20 = *(v3 + 3);
    v21 = v16;
    v22 = 1;
    sub_2174D7920();
    sub_217751DE8();
    sub_217751DE8();
    sub_217752F88();

    LOBYTE(v19) = 2;
    sub_2174D78CC();
    sub_217752F38();
    LOBYTE(v19) = *(v3 + 304);
    v22 = 3;
    sub_2174D7878();
    OUTLINED_FUNCTION_2_58();
    sub_217752F38();
    LOBYTE(v19) = *(v3 + 305);
    v22 = 4;
    sub_2174D7824();
    OUTLINED_FUNCTION_2_58();
    sub_217752F38();
  }

  return (*(v7 + 8))(v13, v5);
}

uint64_t CloudPlaylistFolder.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_217751FF8();
  v5 = v1[4];
  v6 = v1[5];
  if (v1[3])
  {
    v7 = v1[2];
    OUTLINED_FUNCTION_24();
    sub_217751FF8();
    if (v6)
    {
LABEL_3:
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_171_1();
      sub_217751FF8();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_25();
LABEL_6:
  sub_2174A87A0((v1 + 6), __src, &qword_27CB24A40, &qword_217781F90);
  if (__src[2] == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    OUTLINED_FUNCTION_24();
    v8 = sub_2174A87A0(__dst, v27, &qword_27CB24A48, &qword_217759000);
    if (v28)
    {
      OUTLINED_FUNCTION_10_1(v8, v9, v10, v11, v12, v13, v14, v15, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10], v26[11], v26[12], v26[13], v26[14], v26[15], v27[0]);
      OUTLINED_FUNCTION_24();
      sub_2172DE7B4(a1);
      sub_2171F06D8(v26, &qword_27CB24A50, &qword_217759008);
    }

    else
    {
      OUTLINED_FUNCTION_25();
    }

    sub_217264E2C(a1, v16, v17, v18, v19, v20, v21, v22);
    sub_2172841E0(__dst);
  }

  v23 = *(v1 + 304);
  sub_217753208();
  v24 = *(v1 + 305);
  return sub_217753208();
}

uint64_t CloudPlaylistFolder.hashValue.getter()
{
  sub_2177531E8();
  CloudPlaylistFolder.hash(into:)(v1);
  return sub_217753238();
}

void CloudPlaylistFolder.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A6E8, &qword_217781FA8);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2175C5D2C();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_2172E1C68();
    sub_217752EA8();
    v15[0] = v13[0];
    sub_2175C5D80();
    OUTLINED_FUNCTION_1_100();
    sub_217752EA8();
    v15[1] = v13[0];
    v15[2] = v13[1];
    sub_2175C5DD4();
    OUTLINED_FUNCTION_1_100();
    sub_217752E58();
    memcpy(v16, v13, 0x100uLL);
    v14 = 3;
    sub_2175C5E28();
    OUTLINED_FUNCTION_1_100();
    sub_217752E58();
    v16[256] = v13[0];
    v14 = 4;
    sub_2175C5E7C();
    OUTLINED_FUNCTION_1_100();
    sub_217752E58();
    v11 = OUTLINED_FUNCTION_82();
    v12(v11);
    v16[257] = v13[0];
    sub_2175C5ED0(v15, v4);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_2175C5F08(v15);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2175C5B38()
{
  sub_2177531E8();
  CloudPlaylistFolder.hash(into:)(v1);
  return sub_217753238();
}

unint64_t sub_2175C5B74(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24A50, &qword_217759008);
    sub_2175C5BE8(v4);
    result = OUTLINED_FUNCTION_20_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2175C5BE8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24938, &qword_217758EC8);
    sub_2175C42F8(&unk_27CB2A688);
    sub_2175C42F8(&unk_27CB2A690);
    result = OUTLINED_FUNCTION_20_2();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2175C5C84()
{
  result = qword_27CB2A6B8;
  if (!qword_27CB2A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A6B8);
  }

  return result;
}

unint64_t sub_2175C5CD8()
{
  result = qword_27CB2A6C8;
  if (!qword_27CB2A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A6C8);
  }

  return result;
}

unint64_t sub_2175C5D2C()
{
  result = qword_27CB2A6E0;
  if (!qword_27CB2A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A6E0);
  }

  return result;
}

unint64_t sub_2175C5D80()
{
  result = qword_27CB2A6F0;
  if (!qword_27CB2A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A6F0);
  }

  return result;
}

unint64_t sub_2175C5DD4()
{
  result = qword_27CB2A6F8;
  if (!qword_27CB2A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A6F8);
  }

  return result;
}

unint64_t sub_2175C5E28()
{
  result = qword_27CB2A700;
  if (!qword_27CB2A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A700);
  }

  return result;
}

unint64_t sub_2175C5E7C()
{
  result = qword_27CB2A708;
  if (!qword_27CB2A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A708);
  }

  return result;
}

unint64_t sub_2175C5F3C()
{
  result = qword_27CB2A710;
  if (!qword_27CB2A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A710);
  }

  return result;
}

unint64_t sub_2175C5F94()
{
  result = qword_27CB2A718;
  if (!qword_27CB2A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A718);
  }

  return result;
}

unint64_t sub_2175C5FEC()
{
  result = qword_27CB2A720;
  if (!qword_27CB2A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A720);
  }

  return result;
}

unint64_t sub_2175C6044()
{
  result = qword_27CB2A728;
  if (!qword_27CB2A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A728);
  }

  return result;
}

unint64_t sub_2175C609C()
{
  result = qword_27CB2A730;
  if (!qword_27CB2A730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2A738, &qword_217782158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A730);
  }

  return result;
}

unint64_t sub_2175C6104()
{
  result = qword_27CB2A740;
  if (!qword_27CB2A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A740);
  }

  return result;
}

unint64_t sub_2175C615C()
{
  result = qword_27CB2A748;
  if (!qword_27CB2A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A748);
  }

  return result;
}

unint64_t sub_2175C61B4()
{
  result = qword_27CB2A750;
  if (!qword_27CB2A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A750);
  }

  return result;
}

unint64_t sub_2175C6230()
{
  result = qword_27CB2A758;
  if (!qword_27CB2A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A758);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit23CloudResourceCollectionVyAA0cD0VyAA0C18PlaylistFolderItemOGGSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit19CloudPlaylistFolderV13RelationshipsVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2175C62C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 306))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2175C6308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 306) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 306) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_2175C63D8(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudPlaylistFolder.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_2175C657C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2175C665C()
{
  result = qword_27CB2A760;
  if (!qword_27CB2A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A760);
  }

  return result;
}

unint64_t sub_2175C66B4()
{
  result = qword_27CB2A768;
  if (!qword_27CB2A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A768);
  }

  return result;
}

unint64_t sub_2175C670C()
{
  result = qword_27CB2A770;
  if (!qword_27CB2A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A770);
  }

  return result;
}

unint64_t sub_2175C6764()
{
  result = qword_27CB2A778;
  if (!qword_27CB2A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A778);
  }

  return result;
}

unint64_t sub_2175C67BC()
{
  result = qword_27CB2A780;
  if (!qword_27CB2A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A780);
  }

  return result;
}

unint64_t sub_2175C6814()
{
  result = qword_27CB2A788;
  if (!qword_27CB2A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A788);
  }

  return result;
}

unint64_t sub_2175C686C()
{
  result = qword_27CB2A790;
  if (!qword_27CB2A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A790);
  }

  return result;
}

unint64_t sub_2175C68C4()
{
  result = qword_27CB2A798;
  if (!qword_27CB2A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A798);
  }

  return result;
}

unint64_t sub_2175C691C()
{
  result = qword_27CB2A7A0;
  if (!qword_27CB2A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A7A0);
  }

  return result;
}

unint64_t sub_2175C6974()
{
  result = qword_27CB2A7A8;
  if (!qword_27CB2A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A7A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_53(uint64_t a1, uint64_t a2)
{

  return sub_2174A87A0(a1, a2, v2, v3);
}

BOOL AlbumPropertyProvider.containsDownloadedOrPurchasedContent.getter()
{
  v1 = type metadata accessor for AlbumPropertyProvider();
  v2 = v0 + *(v1 + 56);
  return (*(v2 + 8) & 1) == 0 && *v2 >= 1 || *(v0 + *(v1 + 128)) == 2;
}

uint64_t AlbumPropertyProvider.hasOnlyExplicitContent.getter()
{
  v5 = v0;
  v6 = type metadata accessor for AlbumPropertyProvider();
  v7 = OUTLINED_FUNCTION_43(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  OUTLINED_FUNCTION_20_4();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_190_0();
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_31_34();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_241();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v112 - v19;
  v22 = (v0 + *(v21 + 40));
  if ((v22[1] & 1) == 0)
  {
    v26 = *v22;
    if (qword_280BE8358 != -1)
    {
LABEL_68:
      OUTLINED_FUNCTION_3();
    }

    v43 = sub_217751AF8();
    __swift_project_value_buffer(v43, qword_280C02570);
    v44 = OUTLINED_FUNCTION_33_34();
    sub_2174A5E88(v44, v20);
    v45 = sub_217751AD8();
    v46 = sub_217752828();
    if (OUTLINED_FUNCTION_17_44(v46))
    {
      swift_slowAlloc();
      v132[0] = OUTLINED_FUNCTION_5_73();
      *v1 = 136315650;
      v47 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
      OUTLINED_FUNCTION_1_101(v47);
      OUTLINED_FUNCTION_24_37(v48);
      sub_2174A5EEC(v20);
      v49 = OUTLINED_FUNCTION_25_45();
      sub_21729C0E8(v49, v4, v50);
      OUTLINED_FUNCTION_40_27();
      OUTLINED_FUNCTION_34_32();
      OUTLINED_FUNCTION_10_50();
      _os_log_impl(v51, v52, v53, v54, v55, 0x20u);
      OUTLINED_FUNCTION_22_46();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_8_61();
    }

    else
    {

      sub_2174A5EEC(v20);
    }

    LOBYTE(v56) = v26 == 0;
    return v56 & 1;
  }

  sub_2171F5110(v0 + *(v6 + 212), v132, &unk_27CB28A60, &qword_217770B60);
  if (!v132[11])
  {
    v57 = &unk_27CB28A60;
    v58 = &qword_217770B60;
    v59 = v132;
LABEL_36:
    sub_2171F0738(v59, v57, v58);
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v60 = sub_217751AF8();
    __swift_project_value_buffer(v60, qword_280C02570);
    v61 = OUTLINED_FUNCTION_33_34();
    sub_2174A5E88(v61, v3);
    v62 = sub_217751AD8();
    v63 = sub_217752828();
    if (OUTLINED_FUNCTION_21_40(v63))
    {
      OUTLINED_FUNCTION_55();
      v132[0] = OUTLINED_FUNCTION_8_29();
      *v2 = 136315394;
      v64 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
      OUTLINED_FUNCTION_4_88(v64);
      OUTLINED_FUNCTION_41_29((v3 + v65));
      sub_2174A5EEC(v3);
      v66 = OUTLINED_FUNCTION_25_45();
      sub_21729C0E8(v66, v1, v67);
      OUTLINED_FUNCTION_39_22();
      *(v2 + 14) = v6;
      OUTLINED_FUNCTION_9_57();
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_28_4();
    }

    else
    {

      sub_2174A5EEC(v3);
    }

    goto LABEL_41;
  }

  memcpy(__dst, v132, 0x68uLL);
  v23 = __dst[0];
  if (LOBYTE(__dst[1]) == 1)
  {
    OUTLINED_FUNCTION_70();
    v23 = *(v23 + 56);
  }

  if (!*(v23 + 16))
  {
    v57 = &qword_27CB240D0;
    v58 = &unk_21775D400;
    v59 = __dst;
    goto LABEL_36;
  }

  v112 = v4;
  v113 = v2;
  v115 = v1;
  v116 = v5;
  v114 = v6;
  sub_2171F5110(__dst, &v129, &qword_27CB240D0, &unk_21775D400);
  sub_2171F5110(&v129, v132, &qword_27CB240D0, &unk_21775D400);
  v24 = v129;
  v25 = v130;
  sub_217283C5C(v129, v130);
  sub_2171F0738(&v129, &qword_27CB240D0, &unk_21775D400);
  sub_21725CF00(v24, v25);
  v20 = 0;
  v133 = 0;
  v26 = v132[0];
  v27 = LOBYTE(v132[1]);
  v117 = v132[0] + 32;
  v1 = &dword_27CB27E20;
  while (1)
  {
    if (v27)
    {
      swift_beginAccess();
      if (v20 == *(*(v26 + 56) + 16))
      {
        goto LABEL_43;
      }

      sub_217294634();
      v127 = v124;
      v128 = v125;
      v28 = OUTLINED_FUNCTION_50();
      sub_21725CF00(v28, 1);
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }
    }

    else
    {
      v30 = *(v26 + 16);
      if (v20 == v30)
      {
LABEL_43:
        sub_2171F0738(v132, &qword_27CB27E10, &qword_21776BCB0);
        v56 = 1;
        goto LABEL_46;
      }

      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_66;
      }

      if (v20 >= v30)
      {
        goto LABEL_67;
      }

      sub_2171F5110(v117 + (v20 << 6), &v129, &dword_27CB27E20, &unk_2177589C0);
      sub_2171F5110(&v129, v118, &dword_27CB27E20, &unk_2177589C0);
      if (v119[41])
      {
        OUTLINED_FUNCTION_42_29();
        OUTLINED_FUNCTION_37_29();

        sub_2171F0738(&v129, &dword_27CB27E20, &unk_2177589C0);
      }

      else
      {
        sub_217751DE8();
        sub_2171F0738(&v129, &dword_27CB27E20, &unk_2177589C0);
        OUTLINED_FUNCTION_34_1();
      }

      v126[0] = *v122;
      *(v126 + 9) = *&v122[9];
      v127 = v120;
      v128 = v121;
      v31 = OUTLINED_FUNCTION_50();
      sub_21725CF00(v31, 0);
      ++v20;
    }

    v133 = v20;
    sub_217275710(&v127, &v129);
    if (v131)
    {
      OUTLINED_FUNCTION_27_2();
      if (qword_280BE6D00 != -1)
      {
        swift_once();
      }

      sub_21729C5E8(v119, &v124);
      v32 = *&v126[0];
      __swift_project_boxed_opaque_existential_1(&v124, *(&v125 + 1));
      v33 = OUTLINED_FUNCTION_11_60();
      v34(v33, v32);
      v2 = *(&v121 + 1);
      v4 = *v122;
      __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
      v35 = OUTLINED_FUNCTION_23_45();
      v36(v35, &type metadata for MusicVideo, &type metadata for ContentRating, v2);
      sub_217283C08(v118);
    }

    else
    {
      OUTLINED_FUNCTION_27_2();
      if (qword_280BE9878 != -1)
      {
        swift_once();
      }

      sub_21729C5E8(v119, &v124);
      v37 = *&v126[0];
      __swift_project_boxed_opaque_existential_1(&v124, *(&v125 + 1));
      v38 = OUTLINED_FUNCTION_11_60();
      v39(v38, v37);
      v2 = *(&v121 + 1);
      v4 = *v122;
      __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
      v40 = OUTLINED_FUNCTION_23_45();
      v41(v40, &type metadata for Song, &type metadata for ContentRating, v2);
      sub_217283B58(v118);
    }

    __swift_destroy_boxed_opaque_existential_1(&v120);
    sub_21729C644(&v124);
    v42 = v123;
    v1 = &dword_27CB27E20;
    if (v123 == 2)
    {
      break;
    }

    sub_21727576C(&v127);
    if ((v42 & 1) == 0)
    {
      sub_2171F0738(v132, &qword_27CB27E10, &qword_21776BCB0);
      goto LABEL_45;
    }
  }

  sub_2171F0738(v132, &qword_27CB27E10, &qword_21776BCB0);
  sub_21727576C(&v127);
LABEL_45:
  v56 = 0;
LABEL_46:
  sub_2171F5110(&__dst[2], v132, &qword_27CB24188, &dword_217758930);
  v70 = v132[3];
  sub_2171F0738(v132, &qword_27CB24188, &dword_217758930);
  v72 = v115;
  v71 = v116;
  if (v70)
  {
    if (v56)
    {
      v73 = v114;
      if (qword_280BE8358 != -1)
      {
        OUTLINED_FUNCTION_3();
      }

      v74 = sub_217751AF8();
      v75 = OUTLINED_FUNCTION_15_54(v74, qword_280C02570);
      v76 = v112;
      sub_2174A5E88(v75, v112);
      v77 = sub_217751AD8();
      v78 = sub_217752828();
      if (os_log_type_enabled(v77, v78))
      {
        OUTLINED_FUNCTION_55();
        v132[0] = OUTLINED_FUNCTION_8_29();
        *v2 = 136315394;
        v79 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
        OUTLINED_FUNCTION_4_88(v79);
        OUTLINED_FUNCTION_41_29((v76 + v80));
        sub_2174A5EEC(v76);
        v81 = OUTLINED_FUNCTION_25_45();
        sub_21729C0E8(v81, &dword_27CB27E20, v82);
        OUTLINED_FUNCTION_39_22();
        *(v2 + 14) = v73;
        OUTLINED_FUNCTION_9_57();
        OUTLINED_FUNCTION_29_2();
        OUTLINED_FUNCTION_28_4();
      }

      else
      {

        sub_2174A5EEC(v76);
      }

      sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
LABEL_41:
      LOBYTE(v56) = AlbumPropertyProvider.hasExplicitContent.getter();
      return v56 & 1;
    }

    v97 = v114;
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v98 = sub_217751AF8();
    v99 = OUTLINED_FUNCTION_15_54(v98, qword_280C02570);
    v100 = v113;
    sub_2174A5E88(v99, v113);
    v101 = sub_217751AD8();
    v102 = sub_217752828();
    if (OUTLINED_FUNCTION_17_44(v102))
    {
      OUTLINED_FUNCTION_55();
      v132[0] = OUTLINED_FUNCTION_5_73();
      dword_27CB27E20 = 136315394;
      v103 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
      OUTLINED_FUNCTION_1_101(v103);
      OUTLINED_FUNCTION_24_37(v104);
      sub_2174A5EEC(v100);
      v105 = OUTLINED_FUNCTION_25_45();
      sub_21729C0E8(v105, v71, v106);
      OUTLINED_FUNCTION_40_27();
      *(&qword_27CB27E28 + 6) = v97;
      OUTLINED_FUNCTION_10_50();
      _os_log_impl(v107, v108, v109, v110, v111, 0x16u);
      OUTLINED_FUNCTION_22_46();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_8_61();
    }

    else
    {

      sub_2174A5EEC(v100);
    }

    sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
    LOBYTE(v56) = 0;
  }

  else
  {
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v84 = sub_217751AF8();
    v85 = OUTLINED_FUNCTION_15_54(v84, qword_280C02570);
    sub_2174A5E88(v85, v72);
    v86 = sub_217751AD8();
    v87 = sub_217752828();
    if (OUTLINED_FUNCTION_21_40(v87))
    {
      swift_slowAlloc();
      v132[0] = OUTLINED_FUNCTION_5_73();
      dword_27CB27E20 = 136315650;
      v88 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
      OUTLINED_FUNCTION_1_101(v88);
      v90 = (v72 + v89);
      v91 = *v90;
      v92 = v90[1];
      sub_217751DE8();
      sub_2174A5EEC(v72);
      v93 = OUTLINED_FUNCTION_25_45();
      sub_21729C0E8(v93, v92, v94);

      OUTLINED_FUNCTION_35_29();
      OUTLINED_FUNCTION_36_31(&dword_2171EE000, v95, v96, "%s Album<%{public}s> has tracks fully loaded, returning %{BOOL}d.");
      OUTLINED_FUNCTION_9_57();
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_8_61();
    }

    else
    {

      sub_2174A5EEC(v72);
    }

    sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
  }

  return v56 & 1;
}

uint64_t AlbumPropertyProvider.hasOnlyExplicitDownloadedContent.getter()
{
  v5 = v0;
  v6 = type metadata accessor for AlbumPropertyProvider();
  v7 = OUTLINED_FUNCTION_43(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  OUTLINED_FUNCTION_20_4();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_190_0();
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_31_34();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_241();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v105 - v19;
  v22 = (v0 + *(v21 + 36));
  if ((v22[1] & 1) == 0)
  {
    v26 = *v22;
    if (qword_280BE8358 != -1)
    {
LABEL_67:
      OUTLINED_FUNCTION_3();
    }

    v36 = sub_217751AF8();
    __swift_project_value_buffer(v36, qword_280C02570);
    v37 = OUTLINED_FUNCTION_33_34();
    sub_2174A5E88(v37, v20);
    v38 = sub_217751AD8();
    v39 = sub_217752828();
    if (OUTLINED_FUNCTION_17_44(v39))
    {
      swift_slowAlloc();
      v125[0] = OUTLINED_FUNCTION_5_73();
      *v1 = 136315650;
      v40 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
      OUTLINED_FUNCTION_1_101(v40);
      OUTLINED_FUNCTION_24_37(v41);
      sub_2174A5EEC(v20);
      v42 = OUTLINED_FUNCTION_27_42();
      sub_21729C0E8(v42, v4, v43);
      OUTLINED_FUNCTION_40_27();
      OUTLINED_FUNCTION_34_32();
      OUTLINED_FUNCTION_10_50();
      _os_log_impl(v44, v45, v46, v47, v48, 0x20u);
      OUTLINED_FUNCTION_22_46();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_8_61();
    }

    else
    {

      sub_2174A5EEC(v20);
    }

    LOBYTE(v49) = v26 == 0;
    return v49 & 1;
  }

  sub_2171F5110(v0 + *(v6 + 212), v125, &unk_27CB28A60, &qword_217770B60);
  if (!v125[11])
  {
    v50 = &unk_27CB28A60;
    v51 = &qword_217770B60;
    v52 = v125;
LABEL_33:
    sub_2171F0738(v52, v50, v51);
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v53 = sub_217751AF8();
    __swift_project_value_buffer(v53, qword_280C02570);
    v54 = OUTLINED_FUNCTION_33_34();
    sub_2174A5E88(v54, v3);
    v55 = sub_217751AD8();
    v56 = sub_217752828();
    if (OUTLINED_FUNCTION_21_40(v56))
    {
      OUTLINED_FUNCTION_55();
      v125[0] = OUTLINED_FUNCTION_8_29();
      *v2 = 136315394;
      v57 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
      OUTLINED_FUNCTION_4_88(v57);
      OUTLINED_FUNCTION_41_29((v3 + v58));
      sub_2174A5EEC(v3);
      v59 = OUTLINED_FUNCTION_27_42();
      sub_21729C0E8(v59, v1, v60);
      OUTLINED_FUNCTION_39_22();
      *(v2 + 14) = v6;
      OUTLINED_FUNCTION_9_57();
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_28_4();
    }

    else
    {

      sub_2174A5EEC(v3);
    }

    goto LABEL_38;
  }

  memcpy(__dst, v125, 0x68uLL);
  v23 = __dst[0];
  if (LOBYTE(__dst[1]) == 1)
  {
    OUTLINED_FUNCTION_70();
    v23 = *(v23 + 56);
  }

  if (!*(v23 + 16))
  {
    v50 = &qword_27CB240D0;
    v51 = &unk_21775D400;
    v52 = __dst;
    goto LABEL_33;
  }

  v106 = v1;
  v107 = v4;
  v105 = v2;
  v108 = v5;
  v109 = v6;
  sub_2171F5110(__dst, v122, &qword_27CB240D0, &unk_21775D400);
  sub_2171F5110(v122, v125, &qword_27CB240D0, &unk_21775D400);
  v24 = *&v122[0];
  v25 = BYTE8(v122[0]);
  sub_217283C5C(*&v122[0], SBYTE8(v122[0]));
  sub_2171F0738(v122, &qword_27CB240D0, &unk_21775D400);
  sub_21725CF00(v24, v25);
  v20 = 0;
  v126 = 0;
  v26 = v125[0];
  v4 = v125[0] + 32;
  v110 = LOBYTE(v125[1]);
  v1 = &dword_27CB27E20;
  while (1)
  {
    if (v110)
    {
      swift_beginAccess();
      if (v20 == *(*(v26 + 56) + 16))
      {
        goto LABEL_40;
      }

      sub_217294634();
      v120 = v117;
      v121 = v118;
      v27 = OUTLINED_FUNCTION_52_3();
      sub_21725CF00(v27, 1);
      if (__OFADD__(v20++, 1))
      {
        goto LABEL_65;
      }
    }

    else
    {
      v29 = *(v26 + 16);
      if (v20 == v29)
      {
LABEL_40:
        v49 = 1;
        goto LABEL_44;
      }

      if ((v20 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if (v20 >= v29)
      {
        goto LABEL_66;
      }

      sub_2171F5110(v4 + (v20 << 6), v122, &dword_27CB27E20, &unk_2177589C0);
      sub_2171F5110(v122, v111, &dword_27CB27E20, &unk_2177589C0);
      if (v111[57])
      {
        OUTLINED_FUNCTION_42_29();
        OUTLINED_FUNCTION_37_29();

        sub_2171F0738(v122, &dword_27CB27E20, &unk_2177589C0);
      }

      else
      {
        sub_217751DE8();
        sub_2171F0738(v122, &dword_27CB27E20, &unk_2177589C0);
        OUTLINED_FUNCTION_34_1();
      }

      v119[0] = *v114;
      *(v119 + 9) = *(&v114[1] + 1);
      v120 = v112;
      v121 = v113;
      v30 = OUTLINED_FUNCTION_52_3();
      sub_21725CF00(v30, 0);
      ++v20;
    }

    v126 = v20;
    sub_217275710(&v120, v122);
    if (v124)
    {
      OUTLINED_FUNCTION_29_7();
      sub_217283C08(v111);
    }

    else
    {
      OUTLINED_FUNCTION_29_7();
      sub_217283B58(v111);
    }

    v122[0] = *&v114[5];
    v122[1] = v115;
    v1 = v116;
    v123 = v116;
    __swift_project_boxed_opaque_existential_1(v122, *(&v115 + 1));
    v31 = OUTLINED_FUNCTION_11_60();
    v32(v31, v1);
    sub_21729C644(v122);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B40, &qword_217759400);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v33 = *(&v118 + 1);
    if (!*(&v118 + 1))
    {
      goto LABEL_42;
    }

    v34 = *&v119[0];
    __swift_project_boxed_opaque_existential_1(&v117, *(&v118 + 1));
    v35 = (*(v34 + 104))(v33, v34);
    __swift_destroy_boxed_opaque_existential_1(&v117);
    sub_21727576C(&v120);
    v1 = &dword_27CB27E20;
    if ((v35 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  *&v119[0] = 0;
  v117 = 0u;
  v118 = 0u;
LABEL_42:
  sub_2171F0738(&v117, &qword_27CB24B48, &qword_21777F0F0);
  sub_21727576C(&v120);
LABEL_43:
  v49 = 0;
LABEL_44:
  sub_2171F0738(v125, &qword_27CB27E10, &qword_21776BCB0);
  sub_2171F5110(&__dst[2], v125, &qword_27CB24188, &dword_217758930);
  v63 = v125[3];
  sub_2171F0738(v125, &qword_27CB24188, &dword_217758930);
  v65 = v107;
  v64 = v108;
  if (v63)
  {
    if (v49)
    {
      v66 = v109;
      if (qword_280BE8358 != -1)
      {
        OUTLINED_FUNCTION_3();
      }

      v67 = sub_217751AF8();
      v68 = OUTLINED_FUNCTION_15_54(v67, qword_280C02570);
      sub_2174A5E88(v68, v65);
      v69 = sub_217751AD8();
      v70 = sub_217752828();
      if (os_log_type_enabled(v69, v70))
      {
        OUTLINED_FUNCTION_55();
        v125[0] = OUTLINED_FUNCTION_8_29();
        LODWORD(dword_217758930) = 136315394;
        v71 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
        OUTLINED_FUNCTION_4_88(v71);
        OUTLINED_FUNCTION_41_29((v65 + v72));
        sub_2174A5EEC(v65);
        v73 = OUTLINED_FUNCTION_27_42();
        sub_21729C0E8(v73, v1, v74);
        OUTLINED_FUNCTION_39_22();
        *(&qword_217758938 + 6) = v66;
        OUTLINED_FUNCTION_9_57();
        OUTLINED_FUNCTION_29_2();
        OUTLINED_FUNCTION_28_4();
      }

      else
      {

        sub_2174A5EEC(v65);
      }

      sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
LABEL_38:
      LOBYTE(v49) = AlbumPropertyProvider.hasExplicitContent.getter();
      return v49 & 1;
    }

    v90 = v109;
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v91 = sub_217751AF8();
    v92 = OUTLINED_FUNCTION_15_54(v91, qword_280C02570);
    v93 = v105;
    sub_2174A5E88(v92, v105);
    v94 = sub_217751AD8();
    v95 = sub_217752828();
    if (OUTLINED_FUNCTION_17_44(v95))
    {
      OUTLINED_FUNCTION_55();
      v125[0] = OUTLINED_FUNCTION_5_73();
      *v1 = 136315394;
      v96 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
      OUTLINED_FUNCTION_1_101(v96);
      OUTLINED_FUNCTION_24_37(v97);
      sub_2174A5EEC(v93);
      v98 = OUTLINED_FUNCTION_27_42();
      sub_21729C0E8(v98, v64, v99);
      OUTLINED_FUNCTION_40_27();
      *(v1 + 14) = v90;
      OUTLINED_FUNCTION_10_50();
      _os_log_impl(v100, v101, v102, v103, v104, 0x16u);
      OUTLINED_FUNCTION_22_46();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_8_61();
    }

    else
    {

      sub_2174A5EEC(v93);
    }

    sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
    LOBYTE(v49) = 0;
  }

  else
  {
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v76 = sub_217751AF8();
    v77 = OUTLINED_FUNCTION_15_54(v76, qword_280C02570);
    v78 = v106;
    sub_2174A5E88(v77, v106);
    v79 = sub_217751AD8();
    v80 = sub_217752828();
    if (OUTLINED_FUNCTION_21_40(v80))
    {
      swift_slowAlloc();
      v125[0] = OUTLINED_FUNCTION_5_73();
      *v1 = 136315650;
      v81 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
      OUTLINED_FUNCTION_1_101(v81);
      v83 = (v78 + v82);
      v84 = *v83;
      v85 = v83[1];
      sub_217751DE8();
      sub_2174A5EEC(v78);
      v86 = OUTLINED_FUNCTION_27_42();
      sub_21729C0E8(v86, v85, v87);

      OUTLINED_FUNCTION_35_29();
      OUTLINED_FUNCTION_36_31(&dword_2171EE000, v88, v89, "%s Album<%{public}s> has tracks fully loaded, returning %{BOOL}d.");
      OUTLINED_FUNCTION_9_57();
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_8_61();
    }

    else
    {

      sub_2174A5EEC(v78);
    }

    sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
  }

  return v49 & 1;
}

BOOL AlbumPropertyProvider.isLibraryAddedContainer.getter()
{
  v1 = type metadata accessor for AlbumPropertyProvider();
  v2 = *(v0 + *(v1 + 100));
  return v2 != 2 && (v2 & 1) != 0 && *(v0 + *(v1 + 272) + 144) != 0;
}

void OUTLINED_FUNCTION_18_45(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

BOOL OUTLINED_FUNCTION_21_40(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_22_46()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_34_32()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 2050;
  *(v1 + 24) = v2;
}

uint64_t OUTLINED_FUNCTION_40_27()
{
}

uint64_t OUTLINED_FUNCTION_41_29@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_42_29()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  sub_217283C5C(v1, 0);

  return sub_217751DE8();
}

uint64_t sub_2175C8138()
{
  type metadata accessor for MusicDataRequest.Runner();
  swift_allocObject();
  result = sub_2175C81D0();
  qword_280BEB7D8 = result;
  return result;
}

uint64_t static MusicDataRequest.Runner.shared.getter()
{
  if (qword_280BEB7D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2175C81D0()
{
  v1 = [objc_opt_self() defaultSessionConfiguration];
  v2 = [objc_opt_self() sessionWithConfiguration_];

  *(v0 + 16) = v2;
  return v0;
}

uint64_t MusicDataRequest.Runner.response(for:)()
{
  OUTLINED_FUNCTION_10();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = *(*(type metadata accessor for MusicDataRequest() - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2175C82D8()
{
  sub_2175C85D0(v0[6], v0[8]);
  if (qword_27CB23C30 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  swift_beginAccess();
  v3 = qword_27CB28C58;
  v2 = unk_27CB28C60;
  v4 = _s7ContextCMa();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v7 = sub_217722344(v1, v3, v2);
  v0[9] = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[10] = v8;
  *v8 = v9;
  v8[1] = sub_2175C8414;
  v10 = v0[7];
  v11 = v0[5];

  return sub_2175C8634(v11, v7);
}

uint64_t sub_2175C8414()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2175C850C()
{
  OUTLINED_FUNCTION_10();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_0_2();

  return v3();
}

uint64_t sub_2175C856C()
{
  OUTLINED_FUNCTION_10();
  v2 = v0[8];
  v1 = v0[9];

  OUTLINED_FUNCTION_20_0();
  v4 = v0[11];

  return v3();
}

uint64_t sub_2175C85D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicDataRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2175C8634(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v5 = swift_task_alloc();
  v3[15] = v5;
  *v5 = v3;
  v5[1] = sub_2175C86D8;

  return sub_2175C8A3C((v3 + 2), a2);
}

uint64_t sub_2175C86D8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2175C87D0()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 152) = v3;
  *(v0 + 160) = v4;
  v5 = *(v0 + 48);
  *(v0 + 49) = v5;
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  *(v0 + 72) = v3;
  *(v0 + 80) = v4;
  *(v0 + 88) = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 168) = v6;
  *v6 = v7;
  v6[1] = sub_2175C8890;
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v10 = *(v0 + 96);

  return sub_2175C9DF0(v10, v8, v0 + 56);
}

uint64_t sub_2175C8890()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    sub_21758A41C(*(v3 + 136), *(v3 + 144), *(v3 + 152), *(v3 + 160), *(v3 + 49));
    OUTLINED_FUNCTION_20_0();

    return v12();
  }
}

uint64_t sub_2175C89B4()
{
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_20_0();
  return v2();
}

uint64_t sub_2175C89D8()
{
  OUTLINED_FUNCTION_10();
  sub_21758A41C(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 49));
  v1 = *(v0 + 176);
  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_2175C8A3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x2822009F8](sub_2175C8A5C, 0, 0);
}

uint64_t sub_2175C8A5C()
{
  sub_2173BAB60();
  v3 = *(v0 + 104);
  v5 = *(v3 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_tokenProvider);
  v4 = *(v3 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_tokenProvider + 8);
  v6 = (v3 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext);
  v7 = *v6;
  *(v0 + 112) = *v6;
  v8 = v6[1];
  *(v0 + 120) = v8;
  v9 = v6[2];
  *(v0 + 128) = v9;
  v10 = v6[3];
  *(v0 + 136) = v10;
  v11 = v6[4];
  *(v0 + 144) = v11;
  v12 = *(v6 + 40);
  *(v0 + 50) = v12;
  if (v12 != 255)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (v12)
        {
          OUTLINED_FUNCTION_3_91();
        }

        else
        {
          sub_217751DE8();
        }

        *(v0 + 72) = 1;
        v31 = *(*v5 + 96);
        OUTLINED_FUNCTION_3_91();
        v37 = v31 + *v31;
        v32 = v31[1];
        v33 = swift_task_alloc();
        *(v0 + 184) = v33;
        *v33 = v0;
        v33[1] = sub_2175C9044;
        OUTLINED_FUNCTION_13_3();

        __asm { BRAA            X3, X16 }
      }

      OUTLINED_FUNCTION_3_91();
      v28 = *(v0 + 96);
      *&v29 = v8;
      *(&v29 + 1) = v9;
      *&v30 = v10;
      *(&v30 + 1) = v11;
      *v28 = v29;
      *(v28 + 16) = v30;
      *(v28 + 32) = v12 & 1;
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_13_3();

      __asm { BRAA            X1, X16 }
    }

    v22 = *v5;
    *(v0 + 80) = v5;
    *(v0 + 88) = 1;
    v23 = *(v4 + 8);
    OUTLINED_FUNCTION_3_91();
    v36 = v23 + *v23;
    v24 = v23[1];
    v25 = swift_task_alloc();
    *(v0 + 152) = v25;
    *v25 = v0;
    v25[1] = sub_2175C8E84;
    OUTLINED_FUNCTION_13_3();

    __asm { BRAA            X3, X16 }
  }

  v13 = *v5;
  *(v0 + 56) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 216) = v14;
  *v14 = v15;
  v14[1] = sub_2175C91D8;
  OUTLINED_FUNCTION_13_3();

  return sub_2175D974C(v16, v17, v18, v19);
}

uint64_t sub_2175C8E84()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 152);
  *v3 = *v1;
  v2[20] = v6;
  v2[21] = v7;
  v2[22] = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2175C8F88()
{
  v1 = *(v0 + 50);
  v2 = *(v0 + 168);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 112);
  if (v1)
  {
    OUTLINED_FUNCTION_30_35();
    v7 = 0;
    v8 = v3;
  }

  else
  {
    v9 = *(v0 + 144);
    sub_217751DE8();
    OUTLINED_FUNCTION_30_35();
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
  }

  v10 = *(v0 + 96);
  *v10 = *(v0 + 160);
  *(v10 + 8) = v2;
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  *(v10 + 32) = v1 & 1;
  OUTLINED_FUNCTION_0_2();

  return v11();
}

uint64_t sub_2175C9044(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_155();
  v7 = v6;
  OUTLINED_FUNCTION_10_2();
  *v8 = v7;
  v10 = *(v9 + 184);
  v11 = *v3;
  OUTLINED_FUNCTION_13_0();
  *v12 = v11;
  v7[24] = v2;

  if (v2)
  {
    v13 = v7[16];
  }

  else
  {
    v7[25] = a2;
    v7[26] = a1;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2175C9168()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 200);
  OUTLINED_FUNCTION_20_39();
  v2 = *(v0 + 208);
  v3 = *(v0 + 96);
  *v3 = *(v0 + 120);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  OUTLINED_FUNCTION_0_2();

  return v4();
}

uint64_t sub_2175C91D8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2175C92D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = v2;
  if (v3 == 1 && v2 != 7)
  {
    v16 = *(v0 + 32);
    v17 = *(v0 + 16);
    if (qword_280BE73E0 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    v6 = sub_217751AF8();
    OUTLINED_FUNCTION_25_46(v6, qword_280C023A8);
    v7 = sub_217751AD8();
    v8 = sub_217752828();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      sub_217354318();
      OUTLINED_FUNCTION_15_4();
      *v11 = v4;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_2171EE000, v7, v8, "Failed to retrieve personalized tokens with error: %{public}@. Attempting to perform request with only the developer token.", v9, 0xCu);
      sub_2171F06D8(v10, &qword_27CB29E08, &qword_21777BFF8);
      OUTLINED_FUNCTION_23_10();
      OUTLINED_FUNCTION_28_4();
    }

    LOBYTE(v3) = 1;
    v2 = v16;
    v1 = v17;
  }

  v13 = *(v0 + 96);
  *v13 = v1;
  *(v13 + 16) = v2;
  *(v13 + 32) = v3;
  OUTLINED_FUNCTION_0_2();

  return v14();
}

uint64_t sub_2175C9458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_20_39();
  v18 = *(v16 + 176);
  OUTLINED_FUNCTION_27_43();
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  OUTLINED_FUNCTION_56_0();
  if (swift_dynamicCast())
  {

    v20 = *v15;
    if (qword_280BE73E0 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    v21 = *(v16 + 104);
    v22 = sub_217751AF8();
    OUTLINED_FUNCTION_25_46(v22, qword_280C023A8);
    sub_217751DE8();

    v23 = sub_217751AD8();
    sub_217752808();

    if (OUTLINED_FUNCTION_1234())
    {
      OUTLINED_FUNCTION_39_23();
      OUTLINED_FUNCTION_26_35();
      a9 = OUTLINED_FUNCTION_38_27();
      a10 = a9;
      *v21 = 136446722;
      OUTLINED_FUNCTION_24_38();
      sub_21729C0E8(0xD00000000000001ALL, v24, v25);

      v26 = OUTLINED_FUNCTION_23_46();
      OUTLINED_FUNCTION_32_35(v26, v27, v28);

      OUTLINED_FUNCTION_37_30();
      OUTLINED_FUNCTION_15_4();
      *v29 = v20;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 24) = v30;
      *v17 = v30;
      OUTLINED_FUNCTION_10_51();
      _os_log_impl(v31, v32, v33, v34, v35, 0x20u);
      sub_2171F06D8(v17, &qword_27CB29E08, &qword_21777BFF8);
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_21_41();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_23_10();
    }

    else
    {
    }

    sub_217354318();
    v49 = OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_40_28(v49, v50);
  }

  else
  {

    if (qword_280BE73E0 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    v36 = *(v16 + 104);
    v37 = sub_217751AF8();
    OUTLINED_FUNCTION_25_46(v37, qword_280C023A8);
    sub_217751DE8();

    v38 = sub_217751AD8();
    v39 = sub_217752808();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v16 + 104);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_13_50();
      OUTLINED_FUNCTION_42_30();
      *v36 = 136446466;
      OUTLINED_FUNCTION_24_38();
      v43 = sub_21729C0E8(0xD00000000000001ALL, v41, v42);

      OUTLINED_FUNCTION_6_71();
      v44 = sub_2177228E8();
      OUTLINED_FUNCTION_32_35(v44, v45, v46);
      OUTLINED_FUNCTION_164();
      *(v36 + 14) = v43;
      OUTLINED_FUNCTION_22_47(&dword_2171EE000, v47, v48, "Failed %{public}s for %{public}s. Unexpected error.");
      OUTLINED_FUNCTION_40_7();
      OUTLINED_FUNCTION_896();
      OUTLINED_FUNCTION_9_58();
    }

    else
    {
    }

    swift_willThrow();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_120_0();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2175C978C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_20_39();
  v18 = *(v16 + 192);
  OUTLINED_FUNCTION_27_43();
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  OUTLINED_FUNCTION_56_0();
  if (swift_dynamicCast())
  {

    v20 = *v15;
    if (qword_280BE73E0 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    v21 = *(v16 + 104);
    v22 = sub_217751AF8();
    OUTLINED_FUNCTION_25_46(v22, qword_280C023A8);
    sub_217751DE8();

    v23 = sub_217751AD8();
    sub_217752808();

    if (OUTLINED_FUNCTION_1234())
    {
      OUTLINED_FUNCTION_39_23();
      OUTLINED_FUNCTION_26_35();
      a9 = OUTLINED_FUNCTION_38_27();
      a10 = a9;
      *v21 = 136446722;
      OUTLINED_FUNCTION_24_38();
      sub_21729C0E8(0xD000000000000015, v24, v25);

      v26 = OUTLINED_FUNCTION_23_46();
      OUTLINED_FUNCTION_32_35(v26, v27, v28);

      OUTLINED_FUNCTION_37_30();
      OUTLINED_FUNCTION_15_4();
      *v29 = v20;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 24) = v30;
      *v17 = v30;
      OUTLINED_FUNCTION_10_51();
      _os_log_impl(v31, v32, v33, v34, v35, 0x20u);
      sub_2171F06D8(v17, &qword_27CB29E08, &qword_21777BFF8);
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_21_41();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_23_10();
    }

    else
    {
    }

    sub_217354318();
    v49 = OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_40_28(v49, v50);
  }

  else
  {

    if (qword_280BE73E0 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    v36 = *(v16 + 104);
    v37 = sub_217751AF8();
    OUTLINED_FUNCTION_25_46(v37, qword_280C023A8);
    sub_217751DE8();

    v38 = sub_217751AD8();
    v39 = sub_217752808();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v16 + 104);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_13_50();
      OUTLINED_FUNCTION_42_30();
      *v36 = 136446466;
      OUTLINED_FUNCTION_24_38();
      v43 = sub_21729C0E8(0xD000000000000015, v41, v42);

      OUTLINED_FUNCTION_6_71();
      v44 = sub_2177228E8();
      OUTLINED_FUNCTION_32_35(v44, v45, v46);
      OUTLINED_FUNCTION_164();
      *(v36 + 14) = v43;
      OUTLINED_FUNCTION_22_47(&dword_2171EE000, v47, v48, "Failed %{public}s for %{public}s. Unexpected error.");
      OUTLINED_FUNCTION_40_7();
      OUTLINED_FUNCTION_896();
      OUTLINED_FUNCTION_9_58();
    }

    else
    {
    }

    swift_willThrow();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_120_0();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2175C9AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  v18 = *(v16 + 224);
  OUTLINED_FUNCTION_27_43();
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  OUTLINED_FUNCTION_56_0();
  if (swift_dynamicCast())
  {

    v20 = *v15;
    if (qword_280BE73E0 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    v21 = *(v16 + 104);
    v22 = sub_217751AF8();
    OUTLINED_FUNCTION_25_46(v22, qword_280C023A8);
    sub_217751DE8();

    v23 = sub_217751AD8();
    sub_217752808();

    if (OUTLINED_FUNCTION_1234())
    {
      OUTLINED_FUNCTION_39_23();
      OUTLINED_FUNCTION_26_35();
      a9 = OUTLINED_FUNCTION_38_27();
      a10 = a9;
      *v21 = 136446722;
      OUTLINED_FUNCTION_24_38();
      sub_21729C0E8(0xD000000000000011, v24, v25);

      v26 = OUTLINED_FUNCTION_23_46();
      OUTLINED_FUNCTION_32_35(v26, v27, v28);

      OUTLINED_FUNCTION_37_30();
      OUTLINED_FUNCTION_15_4();
      *v29 = v20;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 24) = v30;
      *v17 = v30;
      OUTLINED_FUNCTION_10_51();
      _os_log_impl(v31, v32, v33, v34, v35, 0x20u);
      sub_2171F06D8(v17, &qword_27CB29E08, &qword_21777BFF8);
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_21_41();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_23_10();
    }

    else
    {
    }

    sub_217354318();
    v49 = OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_40_28(v49, v50);
  }

  else
  {

    if (qword_280BE73E0 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    v36 = *(v16 + 104);
    v37 = sub_217751AF8();
    OUTLINED_FUNCTION_25_46(v37, qword_280C023A8);
    sub_217751DE8();

    v38 = sub_217751AD8();
    v39 = sub_217752808();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v16 + 104);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_13_50();
      OUTLINED_FUNCTION_42_30();
      *v36 = 136446466;
      OUTLINED_FUNCTION_24_38();
      v43 = sub_21729C0E8(0xD000000000000011, v41, v42);

      OUTLINED_FUNCTION_6_71();
      v44 = sub_2177228E8();
      OUTLINED_FUNCTION_32_35(v44, v45, v46);
      OUTLINED_FUNCTION_164();
      *(v36 + 14) = v43;
      OUTLINED_FUNCTION_22_47(&dword_2171EE000, v47, v48, "Failed %{public}s for %{public}s. Unexpected error.");
      OUTLINED_FUNCTION_40_7();
      OUTLINED_FUNCTION_896();
      OUTLINED_FUNCTION_9_58();
    }

    else
    {
    }

    swift_willThrow();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_120_0();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2175C9DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 120) = a2;
  *(v4 + 128) = v3;
  *(v4 + 112) = a1;
  v6 = *(*(sub_217751908() - 8) + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v7 = sub_217751928();
  *(v4 + 144) = v7;
  v8 = *(v7 - 8);
  *(v4 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  v10 = sub_2177512F8();
  *(v4 + 168) = v10;
  v11 = *(v10 - 8);
  *(v4 + 176) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 184) = swift_task_alloc();
  v13 = *(a3 + 16);
  *(v4 + 192) = *a3;
  *(v4 + 208) = v13;
  *(v4 + 49) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_2175C9F50, 0, 0);
}

uint64_t sub_2175C9F50()
{
  OUTLINED_FUNCTION_142();
  v12 = v0;
  v1 = *(v0 + 49);
  v2 = *(v0 + 128);
  v8 = *(v0 + 208);
  v9 = *(v0 + 192);
  (*(*(v0 + 176) + 16))(*(v0 + 184), *(v0 + 120) + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_request, *(v0 + 168));
  v10[0] = v9;
  v10[1] = v8;
  v11 = v1;
  sub_217650AC8(v10);
  v3 = *(v2 + 16);
  v4 = *(MEMORY[0x277CC9D18] + 4);
  v5 = swift_task_alloc();
  *(v0 + 224) = v5;
  *v5 = v0;
  v5[1] = sub_2175CA044;
  v6 = *(v0 + 184);

  return MEMORY[0x28211ECF8](v6, 0);
}

uint64_t sub_2175CA044()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 224);
  *v3 = *v1;
  v2[29] = v6;
  v2[30] = v7;
  v2[31] = v8;
  v2[32] = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2175CA148()
{
  v43 = v0;
  v1 = *(v0 + 248);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  *(v0 + 264) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 232);
    v5 = *(v0 + 240);
    v6 = *(v0 + 49);
    *(v0 + 80) = v4;
    *(v0 + 88) = v5;
    *(v0 + 96) = v3;
    v7 = *(v0 + 208);
    *(v0 + 16) = *(v0 + 192);
    *(v0 + 32) = v7;
    *(v0 + 48) = v6;
    sub_21727591C(v4, v5);
    v8 = v3;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 272) = v9;
    *v9 = v10;
    v9[1] = sub_2175CA488;
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);

    return sub_2175CA8DC(v0 + 56, v0 + 80, v11, v0 + 16);
  }

  else
  {
    v14 = *(v0 + 240);
    v15 = *(v0 + 248);
    v16 = *(v0 + 232);
    v18 = *(v0 + 152);
    v17 = *(v0 + 160);
    v19 = *(v0 + 136);
    v20 = *(v0 + 144);
    sub_2177518D8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    sub_21725EDFC();
    OUTLINED_FUNCTION_56_0();
    sub_217751618();
    v21 = sub_217751918();
    (*(v18 + 8))(v17, v20);
    swift_willThrow();

    sub_217275694(v16, v14);
    if (qword_280BE73E0 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    v22 = *(v0 + 120);
    v23 = sub_217751AF8();
    OUTLINED_FUNCTION_25_46(v23, qword_280C023A8);

    v24 = v21;
    v25 = sub_217751AD8();
    v26 = sub_217752808();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 120);
      OUTLINED_FUNCTION_55();
      v42[0] = OUTLINED_FUNCTION_13_50();
      *v22 = 136446466;
      v28 = sub_2177228E8();
      sub_21729C0E8(v28, v29, v42);
      OUTLINED_FUNCTION_164();
      OUTLINED_FUNCTION_6_71();
      *(v0 + 104) = v21;
      v30 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
      v31 = sub_217751FA8();
      sub_21729C0E8(v31, v32, v42);
      OUTLINED_FUNCTION_164();
      *(v22 + 14) = v15;
      OUTLINED_FUNCTION_45_30(&dword_2171EE000, v33, v34, "Failed to perform %{public}s. Error = %{public}s");
      OUTLINED_FUNCTION_40_7();
      OUTLINED_FUNCTION_896();
      OUTLINED_FUNCTION_9_58();
    }

    v36 = *(v0 + 176);
    v35 = *(v0 + 184);
    v37 = *(v0 + 168);
    swift_willThrow();
    (*(v36 + 8))(v35, v37);
    v38 = *(v0 + 184);
    v39 = *(v0 + 160);
    v40 = *(v0 + 136);

    OUTLINED_FUNCTION_20_0();

    return v41();
  }
}

uint64_t sub_2175CA488()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  v3[35] = v0;

  v9 = v3[12];
  sub_217275694(v3[10], v3[11]);

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2175CA5A0()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  sub_217275694(*(v0 + 232), *(v0 + 240));

  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_56_0();
  v10(v9);
  v11 = *(v0 + 72);
  *v7 = *(v0 + 56);
  *(v7 + 16) = v11;

  OUTLINED_FUNCTION_0_2();

  return v12();
}

uint64_t sub_2175CA668()
{
  v2 = v0[32];
  if (qword_280BE73E0 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v3 = v0[15];
  v4 = sub_217751AF8();
  OUTLINED_FUNCTION_25_46(v4, qword_280C023A8);

  v5 = v2;
  v6 = sub_217751AD8();
  v7 = sub_217752808();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[15];
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_13_50();
    OUTLINED_FUNCTION_42_30();
    *v3 = 136446466;
    v9 = sub_2177228E8();
    OUTLINED_FUNCTION_32_35(v9, v10, v11);
    OUTLINED_FUNCTION_164();
    OUTLINED_FUNCTION_6_71();
    v0[13] = v2;
    v12 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
    v13 = sub_217751FA8();
    OUTLINED_FUNCTION_32_35(v13, v14, v15);
    OUTLINED_FUNCTION_164();
    *(v3 + 14) = v1;
    OUTLINED_FUNCTION_45_30(&dword_2171EE000, v16, v17, "Failed to perform %{public}s. Error = %{public}s");
    OUTLINED_FUNCTION_40_7();
    OUTLINED_FUNCTION_896();
    OUTLINED_FUNCTION_9_58();
  }

  v19 = v0[22];
  v18 = v0[23];
  v20 = v0[21];
  swift_willThrow();
  (*(v19 + 8))(v18, v20);
  v21 = v0[23];
  v22 = v0[20];
  v23 = v0[17];

  OUTLINED_FUNCTION_20_0();

  return v24();
}

uint64_t sub_2175CA830()
{
  v1 = v0[33];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  sub_217275694(v0[29], v0[30]);

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_56_0();
  v7(v6);
  v8 = v0[35];
  v9 = v0[23];
  v10 = v0[20];
  v11 = v0[17];

  OUTLINED_FUNCTION_20_0();

  return v12();
}

uint64_t sub_2175CA8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 464) = a3;
  *(v5 + 472) = v4;
  *(v5 + 456) = a1;
  v8 = *(*(sub_217751908() - 8) + 64) + 15;
  *(v5 + 480) = swift_task_alloc();
  v9 = sub_217751928();
  *(v5 + 488) = v9;
  v10 = *(v9 - 8);
  *(v5 + 496) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 504) = swift_task_alloc();
  *(v5 + 512) = *a2;
  *(v5 + 528) = *(a2 + 16);
  v12 = *(a4 + 16);
  *(v5 + 536) = *a4;
  *(v5 + 552) = v12;
  *(v5 + 592) = *(a4 + 32);

  return MEMORY[0x2822009F8](sub_2175CAA00, 0, 0);
}

uint64_t sub_2175CAA00()
{
  v111 = v0;
  v1 = v0[66];
  *v105 = *(v0 + 32);
  v3 = v0[62];
  v2 = v0[63];
  v4 = v0[60];
  v5 = v0[61];
  v6 = v0[59];
  sub_2177518F8();
  sub_2176D46F4(MEMORY[0x277D84F90]);
  sub_21725EDFC();
  OUTLINED_FUNCTION_56_0();
  sub_217751618();
  v7 = sub_217751918();
  v0[71] = v7;
  (*(v3 + 8))(v2, v5);
  *__dst = *v105;
  *&__dst[16] = v1;
  v8 = sub_2175CB2B0(__dst);
  v11 = &qword_280BE7000;
  if (v10)
  {
    v12 = v8;
    v13 = v10;
    v105[0] = v9;
    v14 = v7;
    v15 = *(v0 + 592);
    v16 = v0[70];
    v17 = v0[69];
    v18 = v0[68];
    v19 = v0[67];
    v20 = v0[58];
    __dst[0] = v8;
    *&__dst[8] = v19;
    *&__dst[16] = v18;
    *&__dst[24] = v17;
    *&__dst[32] = v16;
    __dst[40] = v15;
    v21 = OUTLINED_FUNCTION_33_35();
    sub_21758E1D4(v21, v22, v23, v24, v25);
    LOBYTE(v20) = sub_217722554(__dst);
    v26 = OUTLINED_FUNCTION_33_35();
    sub_21758A41C(v26, v27, v28, v29, v30);
    if (v20)
    {
      if (qword_280BE73E0 != -1)
      {
        OUTLINED_FUNCTION_4_1();
      }

      v31 = v0[58];
      v32 = sub_217751AF8();
      OUTLINED_FUNCTION_25_46(v32, qword_280C023A8);

      sub_217751DE8();
      v33 = sub_217751AD8();
      v34 = sub_217752828();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = v0[58];
        v36 = swift_slowAlloc();
        *__dst = swift_slowAlloc();
        *v36 = 136446722;
        v37 = sub_2177228E8();
        v39 = sub_21729C0E8(v37, v38, __dst);

        *(v36 + 4) = v39;
        *(v36 + 12) = 2082;
        v40 = sub_2175FA42C(v12);
        v42 = sub_21729C0E8(v40, v41, __dst);

        *(v36 + 14) = v42;
        *(v36 + 22) = 2082;
        v43 = sub_21729C0E8(v105[0], v13, __dst);

        *(v36 + 24) = v43;
        _os_log_impl(&dword_2171EE000, v33, v34, "Retrying %{public}s with reason %{public}s (%{public}s).", v36, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_28_4();
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_36_1();
      v0[72] = v101;
      *v101 = v102;
      v101[1] = sub_2175CB0CC;
      v103 = v0[58];
      v104 = v0[59];

      return sub_2175C8634(v0 + 54, v103);
    }

    v11 = &qword_280BE7000;
    if (qword_280BE73E0 != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    v44 = v0[58];
    v45 = sub_217751AF8();
    OUTLINED_FUNCTION_25_46(v45, qword_280C023A8);

    v5 = sub_217751AD8();
    v46 = sub_217752828();

    v7 = v14;
    if (os_log_type_enabled(v5, v46))
    {
      v47 = v0[58];
      OUTLINED_FUNCTION_55();
      *__dst = OUTLINED_FUNCTION_13_50();
      *v14 = 136446466;
      v48 = sub_2175FA42C(v12);
      v50 = sub_21729C0E8(v48, v49, __dst);

      *(v14 + 1) = v50;
      *(v14 + 6) = 2080;
      v51 = sub_2177228E8();
      v53 = sub_21729C0E8(v51, v52, __dst);

      *(v14 + 14) = v53;
      _os_log_impl(&dword_2171EE000, v5, v46, "Did exhaust all retry attempts with reason %{public}s for %s.", v14, 0x16u);
      swift_arrayDestroy();
      v11 = &qword_280BE7000;
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_9_58();
    }
  }

  v54 = v0[66];
  v55 = v0[65];
  v110[0] = v0[64];
  v110[1] = v55;
  v110[2] = v54;
  sub_21727591C(v110[0], v55);
  v56 = v54;
  sub_217738170(v110, (v0 + 2));
  v106 = *(v0 + 1);
  v57 = v0[5];
  v107 = v0[4];
  memcpy(__dst, v0 + 6, sizeof(__dst));
  if (v57)
  {
    if (v11[124] != -1)
    {
      OUTLINED_FUNCTION_4_1();
    }

    v58 = v0[58];
    v59 = sub_217751AF8();
    OUTLINED_FUNCTION_25_46(v59, qword_280C023A8);

    sub_2175CB5FC((v0 + 2), (v0 + 15));
    v60 = sub_217751AD8();
    sub_217752808();

    sub_2171F06D8((v0 + 2), &qword_27CB2A7B0, &qword_217782C80);
    if (OUTLINED_FUNCTION_1234())
    {
      v61 = v0[58];
      OUTLINED_FUNCTION_55();
      v62 = OUTLINED_FUNCTION_26_35();
      v63 = swift_slowAlloc();
      v110[0] = v63;
      *v5 = 136446466;
      v64 = sub_2177228E8();
      v66 = sub_21729C0E8(v64, v65, v110);

      *(v5 + 4) = v66;
      *(v5 + 12) = 2114;
      sub_2175CB66C();
      v67 = OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_19_32(v67, v68, v69, v70, v71, v72, v73, v74, v105[0], v105[1], v106, v107, v108, __dst[0]);
      memcpy(v0 + 28, v0 + 2, 0x68uLL);
      sub_2175CB6C0((v0 + 28), (v0 + 41));
      v75 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 14) = v75;
      *v62 = v75;
      OUTLINED_FUNCTION_10_51();
      _os_log_impl(v76, v77, v78, v79, v80, 0x16u);
      sub_2171F06D8(v62, &qword_27CB29E08, &qword_21777BFF8);
      OUTLINED_FUNCTION_29_2();
      __swift_destroy_boxed_opaque_existential_1(v63);
      OUTLINED_FUNCTION_896();
      OUTLINED_FUNCTION_23_10();
    }

    sub_2175CB66C();
    v81 = OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_19_32(v81, v82, v83, v84, v85, v86, v87, v88, v105[0], v105[1], v106, v107, v108, __dst[0]);

    swift_willThrow();
    v89 = v0[63];
    v90 = v0[60];

    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    v92 = v0[66];
    v93 = v0[65];
    v94 = v0[64];

    sub_21727591C(v94, v93);
    v95 = v92;
    v96 = v0[66];
    v97 = v0[63];
    v98 = v0[60];
    v99 = v0[57];
    *v99 = *(v0 + 32);
    *(v99 + 16) = v96;

    OUTLINED_FUNCTION_0_2();
  }

  return v91();
}

uint64_t sub_2175CB0CC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 584) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2175CB1C4()
{
  OUTLINED_FUNCTION_10();

  v1 = *(v0 + 504);
  v2 = *(v0 + 480);
  v3 = *(v0 + 448);
  v4 = *(v0 + 456);
  *v4 = *(v0 + 432);
  *(v4 + 16) = v3;

  OUTLINED_FUNCTION_0_2();

  return v5();
}

uint64_t sub_2175CB240()
{
  OUTLINED_FUNCTION_10();

  v1 = *(v0 + 584);
  v2 = *(v0 + 504);
  v3 = *(v0 + 480);

  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_2175CB2B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = [a1[2] statusCode];
  if (v3 >= 400)
  {
    v7 = v3;
    if (v3 == 403)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    v9 = ICURLResponseStatusCodeGetExtendedDescription();
    v10 = sub_217751F48();
    v12 = v11;

    MEMORY[0x21CEA23B0](v10, v12);

    if (v7 == 401)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v4 = sub_217751348();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_217751338();
    sub_2175CB71C();
    sub_217751308();
    if (v24 == 1 || v24 == 2)
    {
LABEL_11:

      return 0;
    }

    if (v22 == 2 || (v22 & 1) == 0)
    {

      sub_2175CB770(v22, v23, v24);
      return 0;
    }

    if (v24 && (v14 = sub_2174F1B4C(), v14 != 5))
    {
      v15 = v14;
      if (sub_2174F1B98(v14) == 0x73736563637573 && v19 == 0xE700000000000000)
      {

        return 0;
      }

      v21 = sub_217753058();

      if (v21)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v15 = 5;
    }

    sub_217752AA8();

    if (v15 == 5)
    {
      v16 = 0xE300000000000000;
      v17 = 7104878;
    }

    else
    {
      v18 = sub_2174F1B98(v15);
      MEMORY[0x21CEA23B0](v18);

      v17 = 46;
      v16 = 0xE100000000000000;
    }

    MEMORY[0x21CEA23B0](v17, v16);

    return 1;
  }
}

uint64_t MusicDataRequest.Runner.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2175CB5FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A7B0, &qword_217782C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2175CB66C()
{
  result = qword_27CB2A7B8;
  if (!qword_27CB2A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A7B8);
  }

  return result;
}

unint64_t sub_2175CB71C()
{
  result = qword_27CB2A7C0;
  if (!qword_27CB2A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A7C0);
  }

  return result;
}

uint64_t sub_2175CB770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 2)
  {
    return sub_21733B290(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_2175CB780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_21758E1D4(a2, a3, a4, a5, a6 & 1);
  }

  return result;
}

uint64_t sub_2175CB7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_21758A41C(a2, a3, a4, a5, a6 & 1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_39()
{
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);
  v7 = *(v0 + 50);

  return sub_2175CB7AC(v6, v4, v5, v2, v3, v7);
}

uint64_t OUTLINED_FUNCTION_21_41()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_22_47(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_26_35()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_40_28(uint64_t a1, _BYTE *a2)
{
  *a2 = v2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_45_30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t PlayabilityInformationProviding<>.hasOnlyExplicitDownloadedContent.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2175CC910(a1, a3, v10);
  v3 = v11;
  if (v11)
  {
    OUTLINED_FUNCTION_5_52(v10);
    v5 = *(v4 + 104);
    v6 = OUTLINED_FUNCTION_16_1();
    v8 = v7(v6);
    OUTLINED_FUNCTION_13_35(v8);
  }

  else
  {
    sub_2175CC998(v10);
  }

  return v3 & 1;
}

uint64_t PlayabilityInformationProviding<>.catalogAssetRequiresSubscription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2175CC910(a1, a3, v10);
  v3 = v11;
  if (v11)
  {
    OUTLINED_FUNCTION_5_52(v10);
    v5 = *(v4 + 8);
    v6 = OUTLINED_FUNCTION_16_1();
    v8 = v7(v6);
    OUTLINED_FUNCTION_13_35(v8);
  }

  else
  {
    sub_2175CC998(v10);
  }

  return v3 & 1;
}

uint64_t PlayabilityInformationProviding<>.catalogAssetRequiresUserUpload.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2175CC910(a1, a3, v10);
  v3 = v11;
  if (v11)
  {
    OUTLINED_FUNCTION_5_52(v10);
    v5 = *(v4 + 16);
    v6 = OUTLINED_FUNCTION_16_1();
    v8 = v7(v6);
    OUTLINED_FUNCTION_13_35(v8);
  }

  else
  {
    sub_2175CC998(v10);
  }

  return v3 & 1;
}

uint64_t PlayabilityInformationProviding<>.containsDownloadedOrPurchasedContent.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2175CC910(a1, a3, v10);
  v3 = v11;
  if (v11)
  {
    OUTLINED_FUNCTION_5_52(v10);
    v5 = *(v4 + 24);
    v6 = OUTLINED_FUNCTION_16_1();
    v8 = v7(v6);
    OUTLINED_FUNCTION_13_35(v8);
  }

  else
  {
    sub_2175CC998(v10);
  }

  return v3 & 1;
}

uint64_t PlayabilityInformationProviding<>.hasExplicitContent.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2175CC910(a1, a3, v10);
  v3 = v11;
  if (v11)
  {
    OUTLINED_FUNCTION_5_52(v10);
    v5 = *(v4 + 32);
    v6 = OUTLINED_FUNCTION_16_1();
    v8 = v7(v6);
    OUTLINED_FUNCTION_13_35(v8);
  }

  else
  {
    sub_2175CC998(v10);
  }

  return v3 & 1;
}

uint64_t sub_2175CBB1C(void (*a1)(void *__return_ptr))
{
  a1(v8);
  v1 = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_5_52(v8);
    v3 = *(v2 + 40);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6);
  }

  else
  {
    sub_2175CC998(v8);
  }

  return v1 & 1;
}