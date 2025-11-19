uint64_t OUTLINED_FUNCTION_145_3()
{
  result = v0 + 1552;
  v2 = *(v0 + 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_146_5()
{
  result = *(v0 - 136);
  v2 = *(v0 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_147_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{

  return sub_2171F3F0C(&a15, &a10);
}

uint64_t OUTLINED_FUNCTION_148_4()
{
  v2 = *(v0 + 120);

  return sub_2171FF30C(v2, v0 + 192);
}

uint64_t OUTLINED_FUNCTION_150_5()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_151_4(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_21738C4B0(a1, v3, a3, v4);
}

uint64_t OUTLINED_FUNCTION_152_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_2173D77EC(a1, v3);
}

uint64_t OUTLINED_FUNCTION_153_5(uint64_t a1)
{

  return sub_21738C4B0(a1, v1 + 192, v2, v3);
}

void *OUTLINED_FUNCTION_154_5()
{

  return memcpy((v0 + 464), (v0 + 144), 0x140uLL);
}

uint64_t OUTLINED_FUNCTION_155_7()
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_158_4@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21738C4B0(v4 + a3, v3 + 1920, a1, a2);
}

uint64_t OUTLINED_FUNCTION_159_6()
{
  v2 = *v0;
  v3 = v0[1];

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_160_5()
{
  v2 = *(v0 + 120);

  return sub_2171FF30C(v2, v0 + 1552);
}

__n128 OUTLINED_FUNCTION_169_5()
{
  v2 = *(v0 + 16);
  *(v1 - 144) = *v0;
  *(v1 - 128) = v2;
  result = *(v0 + 25);
  *(v1 - 119) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_173_6(uint64_t a1)
{
  *(v1 + 136) = v3;
  *(v4 - 72) = v2;
  *(v1 + 120) = a1;

  return type metadata accessor for CloudStation(0);
}

uint64_t OUTLINED_FUNCTION_174_4()
{
}

uint64_t OUTLINED_FUNCTION_175_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_2173D789C(a1, v3);
}

uint64_t OUTLINED_FUNCTION_176_6()
{
  v2 = *(v0 - 72);

  return sub_2171FF30C(v2, v0 - 136);
}

uint64_t OUTLINED_FUNCTION_177_4()
{
  v2 = *v0;

  return sub_217751DE8();
}

uint64_t sub_2173D90C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2173DA448;

  return static MusicSubscription.currentForBackgroundUse.getter(a1);
}

uint64_t MusicSubscription.ThrowingUpdates.Iterator.next()()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_2173D920C;

  return (sub_2173D98F0)(v2);
}

uint64_t sub_2173D920C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_2173D92F0()
{
  OUTLINED_FUNCTION_10();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27230, &qword_217769A30) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_34();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2173D9380()
{
  OUTLINED_FUNCTION_10();
  *(v0 + 40) = *(*(v0 + 24) + 16);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7_32(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_2_50(v2);

  return sub_2174E5EEC();
}

uint64_t sub_2173D93F4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6_34();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2173D94D8()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0[4];
  updated = _s13UpdateTriggerOMa(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, updated) == 1)
  {
    sub_2173DA2E4(v1);
    v3 = v0[4];
    v4 = v0[2];
    *(v0[3] + 24) = -16777216;
    *v4 = -16777216;

    OUTLINED_FUNCTION_0_2();

    return v5();
  }

  else
  {
    v7 = v0[3];
    sub_2173DA2E4(v1);
    OUTLINED_FUNCTION_1_47();
    v9 = *(v8 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[7] = v10;
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_11_32(v10);

    return v13(v12);
  }
}

uint64_t sub_2173D9608()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = *(v2 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    v7 = sub_2173D9890;
  }

  else
  {
    v7 = sub_2173D970C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2173D970C()
{
  OUTLINED_FUNCTION_30_0();
  v1 = *(v0 + 24);
  v2 = *(v1 + 24);
  if (HIBYTE(v2) == 255)
  {
    if (*(v0 + 75))
    {
      v3 = 0x1000000;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3 | *(v0 + 72) | (*(v0 + 74) << 16);
LABEL_14:
    v13 = *(v0 + 32);
    v14 = *(v0 + 16);
    *(v1 + 24) = v4;
    *v14 = v4;

    OUTLINED_FUNCTION_0_2();

    return v15();
  }

  *(v0 + 76) = v2;
  v5 = *(v0 + 72);
  v6 = *(v0 + 74);
  v7 = *(v0 + 75);
  *(v0 + 78) = BYTE2(v2);
  *(v0 + 79) = HIBYTE(v2) & 1;
  *(v0 + 82) = v6;
  *(v0 + 80) = v5;
  *(v0 + 83) = v7;
  sub_2173DA34C();
  sub_2173DA3A0();
  sub_2173DA3F4();
  if ((sub_217753288() & 1) == 0)
  {
    if (*(v0 + 75))
    {
      v12 = 0x1000000;
    }

    else
    {
      v12 = 0;
    }

    v4 = v12 | *(v0 + 72) | (*(v0 + 74) << 16);
    v1 = *(v0 + 24);
    goto LABEL_14;
  }

  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_7_32(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_2_50();

  return sub_2174E5EEC();
}

uint64_t sub_2173D9890()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_2173D98F0()
{
  OUTLINED_FUNCTION_10();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27230, &qword_217769A30) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_34();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2173D9980()
{
  OUTLINED_FUNCTION_10();
  *(v0 + 40) = *(*(v0 + 24) + 16);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7_32(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_47(v2);

  return sub_2174E5EEC();
}

uint64_t sub_2173D99F4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6_34();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2173D9AD8()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0[4];
  updated = _s13UpdateTriggerOMa(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, updated) == 1)
  {
    sub_2173DA2E4(v1);
    v4 = v0[3];
    v3 = v0[4];
    v5 = v0[2];
    *(v4 + 26) = 0;
    *(v4 + 24) = 2;
    *(v5 + 2) = 0;
    *v5 = 2;

    OUTLINED_FUNCTION_0_2();

    return v6();
  }

  else
  {
    v8 = v0[3];
    sub_2173DA2E4(v1);
    OUTLINED_FUNCTION_1_47();
    v10 = *(v9 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[7] = v11;
    *v11 = v12;
    v13 = OUTLINED_FUNCTION_11_32(v11);

    return v14(v13);
  }
}

uint64_t sub_2173D9C10()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = *(v2 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    v7 = sub_2173D9890;
  }

  else
  {
    v7 = sub_2173D9D14;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2173D9D14()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 24);
  v2 = *(v1 + 24);
  v3 = v2 | (*(v1 + 26) << 16);
  if (v2 == 2)
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 73);
    v6 = *(v0 + 74);
    goto LABEL_3;
  }

  v4 = *(v0 + 72);
  v5 = *(v0 + 73);
  v6 = *(v0 + 74);
  v15 = v4 ^ v3;
  v16 = (v3 & 0x100) == 0;
  v17 = (v3 & 0x10000) == 0;
  if ((v15 & 1) != 0 || v16 == v5 || ((v17 ^ v6) & 1) == 0)
  {
LABEL_3:
    if (v5)
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v0 + 32);
    v9 = *(v0 + 16);
    if (v6)
    {
      v10 = 0x10000;
    }

    else
    {
      v10 = 0;
    }

    v11 = HIWORD(v10);
    *(v1 + 26) = v11;
    v12 = v7 | v4;
    *(v1 + 24) = v12;
    *(v9 + 2) = v11;
    *v9 = v12;

    OUTLINED_FUNCTION_0_2();

    return v13();
  }

  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_7_32(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_3_47();

  return sub_2174E5EEC();
}

uint64_t sub_2173D9E40()
{
  OUTLINED_FUNCTION_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2173DA448;

  return MusicSubscription.ThrowingUpdates.Iterator.next()();
}

uint64_t sub_2173D9ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_2173D9F9C;

  return (sub_2174E4D44)(a1, a2, a3);
}

uint64_t sub_2173D9F9C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v4 = *(v2 + 24);
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t MusicSubscription.ThrowingUpdates.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  updated = _s14UpdateTriggersV8IteratorCMa(0);
  v3 = *(updated + 48);
  v4 = *(updated + 52);
  swift_allocObject();
  result = sub_2174E5548();
  *a1 = &unk_217769930;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 26) = 0;
  *(a1 + 24) = 2;
  return result;
}

unint64_t sub_2173DA138()
{
  result = qword_27CB27228;
  if (!qword_27CB27228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27228);
  }

  return result;
}

_BYTE *_s15ThrowingUpdatesVwst(_BYTE *result, int a2, int a3)
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

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_2173DA24C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 27))
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

uint64_t sub_2173DA28C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2173DA2E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27230, &qword_217769A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2173DA34C()
{
  result = qword_27CB27238;
  if (!qword_27CB27238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27238);
  }

  return result;
}

unint64_t sub_2173DA3A0()
{
  result = qword_27CB27240;
  if (!qword_27CB27240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27240);
  }

  return result;
}

unint64_t sub_2173DA3F4()
{
  result = qword_280BE90F8;
  if (!qword_280BE90F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE90F8);
  }

  return result;
}

MusicKit::MusicLyrics_optional __swiftcall MusicLyrics.init(rawStorageDictionary:)(Swift::OpaquePointer rawStorageDictionary)
{
  v2 = v1;
  v3 = sub_21729E890();

  sub_2173ACA8C(2, v3);
  if (v20)
  {
    if (OUTLINED_FUNCTION_0_53())
    {
      v4 = v17;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    sub_217380914(v19);
    v4 = 2;
  }

  sub_2173ACA8C(1, v3);
  if (v20)
  {
    v5 = OUTLINED_FUNCTION_0_53();
    v6 = 256;
    if (!v17)
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 512;
    }
  }

  else
  {
    sub_217380914(v19);
    v7 = 512;
  }

  sub_2173ACA8C(0, v3);
  if (v20)
  {
    v8 = OUTLINED_FUNCTION_0_53();
    v9 = 0x10000;
    if (!v17)
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x20000;
    }
  }

  else
  {
    sub_217380914(v19);
    v10 = 0x20000;
  }

  sub_2173ACA8C(3, v3);

  if (v20)
  {
    LODWORD(v11) = OUTLINED_FUNCTION_0_53();
    v15 = v17;
    v16 = v18;
    if (!v11)
    {
      v15 = 0;
      v16 = 0;
    }
  }

  else
  {
    v11 = sub_217380914(v19);
    v15 = 0;
    v16 = 0;
  }

  *v2 = v7 | v4 | v10;
  v2[1] = v15;
  v2[2] = v16;
  result.value.customLyrics.value._object = v13;
  result.value.customLyrics.value._countAndFlagsBits = v12;
  *&result.value.hasLyrics.value = v11;
  result.value.hasCustomLyrics.value = BYTE2(v11);
  result.is_nil = v14;
  return result;
}

uint64_t MusicLyrics.convertToLegacyModelStorageDictionary(for:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v5 = *(v0 + 1);
  v4 = *(v0 + 2);
  sub_2172A5380();
  v9 = sub_217751DC8();
  if (v1 == 2)
  {
    OUTLINED_FUNCTION_1_48();
  }

  else
  {
    LOBYTE(v8[0]) = v1 & 1;
  }

  OUTLINED_FUNCTION_2_51();
  (sub_21729CDD0)();
  if (v2 == 2)
  {
    OUTLINED_FUNCTION_1_48();
  }

  else
  {
    LOBYTE(v8[0]) = v2 & 1;
  }

  OUTLINED_FUNCTION_2_51();
  (sub_21729CDD0)();
  if (v3 == 2)
  {
    OUTLINED_FUNCTION_1_48();
  }

  else
  {
    LOBYTE(v8[0]) = v3 & 1;
  }

  OUTLINED_FUNCTION_2_51();
  (sub_21729CDD0)();
  if (v4)
  {
    v6 = MEMORY[0x277D837D0];
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v8[2] = 0;
  }

  v8[0] = v5;
  v8[1] = v4;
  v8[3] = v6;
  sub_217751DE8();
  sub_21729CDD0(v8, 3);
  return v9;
}

uint64_t MusicLyrics.LegacyModelLyricsPropertyKey.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_217752DC8();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t MusicLyrics.LegacyModelLyricsPropertyKey.rawValue.getter()
{
  result = 0xD000000000000025;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000028;
      break;
    case 2:
      result = 0xD000000000000023;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2173DA82C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return MusicLyrics.LegacyModelLyricsPropertyKey.init(rawValue:)(a1);
}

unint64_t sub_2173DA838@<X0>(unint64_t *a1@<X8>)
{
  result = MusicLyrics.LegacyModelLyricsPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2173DA870()
{
  result = qword_280BE7F20;
  if (!qword_280BE7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7F20);
  }

  return result;
}

unint64_t sub_2173DA8C4(uint64_t a1)
{
  *(a1 + 8) = sub_2172A5380();
  result = sub_2173DA8F4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2173DA8F4()
{
  result = qword_27CB27248;
  if (!qword_27CB27248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27248);
  }

  return result;
}

unint64_t sub_2173DA968()
{
  result = qword_27CB27250;
  if (!qword_27CB27250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27250);
  }

  return result;
}

_BYTE *_s28LegacyModelLyricsPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t MusicDataRequest._Source.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

unint64_t sub_2173DAB50()
{
  result = qword_27CB27258;
  if (!qword_27CB27258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB27260, &qword_217769B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27258);
  }

  return result;
}

unint64_t sub_2173DABB8()
{
  result = qword_27CB27268;
  if (!qword_27CB27268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27268);
  }

  return result;
}

_BYTE *_s7_SourceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2173DACE8(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return sub_217751DE8();
}

uint64_t MusicItemTypeValueCollection.catalogSearchableResourceTypes.getter()
{
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26F98, qword_217768A20);
  swift_getWitnessTable();
  sub_2173DB3EC();
  v1 = sub_2177521B8();
  sub_2173DAE08(v1, v2);
  v4 = v3;

  return v4;
}

void sub_2173DAE08(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2)
{
  v2 = 0;
  v3 = *(isUniquelyReferenced_nonNull_native + 16);
  v4 = isUniquelyReferenced_nonNull_native + 48;
  v13 = isUniquelyReferenced_nonNull_native + 48;
  v14 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v4 + 24 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_15;
    }

    v7 = *(v5 - 2);
    v6 = *(v5 - 1);
    v8 = *v5;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, a2);
    sub_217751DE8();
    if (!sub_2173DD9E8())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = *(v14 + 16);
        OUTLINED_FUNCTION_17();
        sub_2172B199C();
        v14 = isUniquelyReferenced_nonNull_native;
      }

      v10 = *(v14 + 16);
      v9 = *(v14 + 24);
      if (v10 >= v9 >> 1)
      {
        OUTLINED_FUNCTION_1_49(v9);
        sub_2172B199C();
        v14 = isUniquelyReferenced_nonNull_native;
      }

      *(v14 + 16) = v10 + 1;
      v11 = v14 + 24 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v6;
      *(v11 + 48) = v8;
      ++v2;
      v4 = v13;
      goto LABEL_2;
    }

    ++v2;
    v5 += 24;
  }
}

void sub_2173DAF84(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2)
{
  v2 = 0;
  v3 = *(isUniquelyReferenced_nonNull_native + 16);
  v4 = isUniquelyReferenced_nonNull_native + 40;
  v5 = MEMORY[0x277D84F90];
  v13 = isUniquelyReferenced_nonNull_native + 40;
LABEL_2:
  v6 = (v4 + 16 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_15;
    }

    v8 = *(v6 - 1);
    v7 = *v6;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, a2);
    sub_217751DE8();
    if (!sub_2171F8728())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = *(v5 + 16);
        OUTLINED_FUNCTION_17();
        sub_2172AFF2C();
        v5 = isUniquelyReferenced_nonNull_native;
      }

      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        OUTLINED_FUNCTION_1_49(v9);
        sub_2172AFF2C();
        v5 = isUniquelyReferenced_nonNull_native;
      }

      *(v5 + 16) = v10 + 1;
      v11 = v5 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      ++v2;
      v4 = v13;
      goto LABEL_2;
    }

    ++v2;
    v6 += 2;
  }
}

void sub_2173DB114(uint64_t a1)
{
  v1 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = sub_217751DE8();
  v4 = 0;
  v5 = isUniquelyReferenced_nonNull_native + 56;
  v15 = MEMORY[0x277D84F90];
  v14 = isUniquelyReferenced_nonNull_native + 56;
LABEL_2:
  for (i = (v5 + 32 * v4); ; i += 4)
  {
    if (v1 == v4)
    {

      return;
    }

    if (v4 >= v1)
    {
      break;
    }

    if (__OFADD__(v4, 1))
    {
      goto LABEL_15;
    }

    v8 = *(i - 1);
    v7 = *i;
    v10 = *(i - 3);
    v9 = *(i - 2);
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v3);
    sub_217751DE8();
    if (!sub_2173DDBE4())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = *(v15 + 16);
        OUTLINED_FUNCTION_17();
        sub_2172B1AC0();
        v15 = isUniquelyReferenced_nonNull_native;
      }

      v11 = *(v15 + 16);
      if (v11 >= *(v15 + 24) >> 1)
      {
        sub_2172B1AC0();
        v15 = isUniquelyReferenced_nonNull_native;
      }

      *(v15 + 16) = v11 + 1;
      v12 = (v15 + 32 * v11);
      v12[4] = v10;
      v12[5] = v9;
      v12[6] = v8;
      v12[7] = v7;
      ++v4;
      v5 = v14;
      goto LABEL_2;
    }

    ++v4;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t MusicItemTypeValue.catalogSearchableResourceTypes.getter()
{
  if (dynamic_cast_existential_1_conditional(*v0))
  {
    return (*(v1 + 8))();
  }

  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000038, 0x80000002177AD000);
  v3 = sub_217753348();
  MEMORY[0x21CEA23B0](v3);

  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_2173DB398@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  result = MusicItemTypeValue.catalogSearchableResourceTypes.getter();
  *a2 = result;
  return result;
}

unint64_t sub_2173DB3EC()
{
  result = qword_27CB27270;
  if (!qword_27CB27270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB26F98, qword_217768A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27270);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit24CatalogChartsRawResponseV7ResultsVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2173DB554(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 48))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2173DB5B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2173DB620()
{
  result = qword_27CB27278;
  if (!qword_27CB27278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27278);
  }

  return result;
}

uint64_t sub_2173DB674()
{
  v0 = sub_217752DC8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2173DB6C4(char a1)
{
  result = 0x736D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x69762D636973756DLL;
      break;
    case 2:
      result = 0x7473696C79616C70;
      break;
    case 3:
      result = 0x73676E6F73;
      break;
    case 4:
      result = 0x7261684379746963;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2173DB784(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a2;
    sub_217751DE8();
    v7 = OUTLINED_FUNCTION_240();
    sub_217270D2C(v7, v8);
    OUTLINED_FUNCTION_9_27();
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = a1[1];
  v10 = a2[1];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = a2[1];
    sub_217751DE8();
    v12 = OUTLINED_FUNCTION_240();
    sub_217270D54(v12, v13);
    OUTLINED_FUNCTION_9_27();
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = a1[2];
  v15 = a2[2];
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = a2[2];
    sub_217751DE8();
    v17 = OUTLINED_FUNCTION_240();
    sub_217270FE0(v17, v18);
    OUTLINED_FUNCTION_9_27();
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v19 = a1[3];
  v20 = a2[3];
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = a2[3];
    sub_217751DE8();
    v22 = OUTLINED_FUNCTION_240();
    sub_217271008(v22, v23);
    OUTLINED_FUNCTION_9_27();
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v24 = a1[4];
  v25 = a2[4];
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    v26 = a2[4];
    sub_217751DE8();
    v27 = OUTLINED_FUNCTION_240();
    sub_217270FE0(v27, v28);
    OUTLINED_FUNCTION_9_27();
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = a1[5];
  v30 = a2[5];
  if (v29)
  {
    if (v30)
    {
      sub_217751DE8();
      v31 = sub_217270FE0(v29, v30);

      if (v31)
      {
        return 1;
      }
    }
  }

  else if (!v30)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2173DB8E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB272C8, &qword_217769FC8);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173DCE58();
  sub_2177532F8();
  v17 = *v3;
  HIBYTE(v16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB272D8, &qword_217769FD0);
  sub_2173DCEAC();
  OUTLINED_FUNCTION_1_50();
  OUTLINED_FUNCTION_7_33();
  if (!v2)
  {
    v17 = v3[1];
    HIBYTE(v16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB272F0, &qword_217769FD8);
    sub_2173DCFB4();
    OUTLINED_FUNCTION_1_50();
    OUTLINED_FUNCTION_7_33();
    v17 = v3[2];
    HIBYTE(v16) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27308, &qword_217769FE0);
    sub_2173DD0BC();
    OUTLINED_FUNCTION_1_50();
    OUTLINED_FUNCTION_4_50();
    v17 = v3[3];
    HIBYTE(v16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27320, &qword_217769FE8);
    sub_2173DD1C4();
    OUTLINED_FUNCTION_1_50();
    OUTLINED_FUNCTION_7_33();
    v17 = v3[4];
    HIBYTE(v16) = 4;
    OUTLINED_FUNCTION_1_50();
    OUTLINED_FUNCTION_4_50();
    v17 = v3[5];
    HIBYTE(v16) = 5;
    OUTLINED_FUNCTION_1_50();
    OUTLINED_FUNCTION_4_50();
  }

  return (*(v7 + 8))(v13, v5);
}

uint64_t sub_2173DBB28(uint64_t a1)
{
  v2 = v1;
  if (*v2)
  {
    sub_217753208();
    v4 = OUTLINED_FUNCTION_35();
    sub_217281CC0(v4, v5);
  }

  else
  {
    sub_217753208();
  }

  if (v2[1])
  {
    sub_217753208();
    v6 = OUTLINED_FUNCTION_35();
    sub_217281C98(v6, v7);
  }

  else
  {
    sub_217753208();
  }

  if (v2[2])
  {
    sub_217753208();
    v8 = OUTLINED_FUNCTION_35();
    sub_217281AD8(v8, v9);
  }

  else
  {
    sub_217753208();
  }

  if (v2[3])
  {
    sub_217753208();
    v10 = OUTLINED_FUNCTION_35();
    sub_217281AB0(v10, v11);
  }

  else
  {
    sub_217753208();
  }

  if (v2[4])
  {
    sub_217753208();
    v12 = OUTLINED_FUNCTION_35();
    sub_217281AD8(v12, v13);
  }

  else
  {
    sub_217753208();
  }

  v14 = v2[5];
  if (!v14)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217281AD8(a1, v14);
}

uint64_t sub_2173DBC48()
{
  sub_2177531E8();
  sub_2173DBB28(v1);
  return sub_217753238();
}

uint64_t sub_2173DBC88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27338, &qword_21776A000);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173DCE58();
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB272D8, &qword_217769FD0);
  sub_2173DD2CC();
  OUTLINED_FUNCTION_2_52();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB272F0, &qword_217769FD8);
  sub_2173DD3D4();
  OUTLINED_FUNCTION_2_52();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27308, &qword_217769FE0);
  sub_2173DD4DC();
  sub_217752E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27320, &qword_217769FE8);
  sub_2173DD5E4();
  OUTLINED_FUNCTION_2_52();
  sub_217752E58();
  sub_217752E58();
  v11 = OUTLINED_FUNCTION_1_3();
  v12(v11);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v14;
  a2[1] = v14;
  a2[2] = v14;
  a2[3] = v14;
  a2[4] = v14;
  a2[5] = v14;
  return result;
}

BOOL sub_2173DC01C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v10 = *a2;
  v9 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  if (*a1 == 1)
  {
    if (v10 == 1)
    {
      return 1;
    }

    goto LABEL_5;
  }

  if (v10 == 1)
  {
LABEL_5:
    v17 = a2[1];
    sub_2173DC9A4(a2, v20);
    sub_2173DC9A4(a1, v20);
    sub_2173DC9DC(v3);
    sub_2173DC9DC(v10);
    return 0;
  }

  v20[0] = *a2;
  v20[1] = v9;
  v20[2] = v12;
  v20[3] = v11;
  v20[4] = v14;
  v20[5] = v13;
  v19[0] = v3;
  v19[1] = v4;
  v19[2] = v5;
  v19[3] = v6;
  v19[4] = v8;
  v19[5] = v7;
  sub_2173DC9A4(a2, v18);
  sub_2173DC9A4(a1, v18);
  v16 = sub_2173DB784(v19, v20);

  sub_2173DCA60(a1);
  return (v16 & 1) != 0;
}

uint64_t sub_2173DC194(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2173DC224(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27280, &qword_217769D98);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v12 = v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173DCA90();
  sub_2177532F8();
  v14 = v2[1];
  v16[0] = *v2;
  v16[1] = v14;
  v16[2] = v2[2];
  sub_2173DCAE4();
  sub_217752F38();
  return (*(v6 + 8))(v12, v4);
}

uint64_t sub_2173DC368(uint64_t a1)
{
  if (*v1 == 1)
  {
    return sub_217753208();
  }

  v4 = *v1;
  v5 = *(v1 + 1);
  v6 = *(v1 + 3);
  v7 = v1[5];
  sub_217753208();
  return sub_2173DBB28(a1);
}

uint64_t sub_2173DC3E0()
{
  v4 = v0[1];
  v5 = *v0;
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  sub_2177531E8();
  if (v5 == 1)
  {
    sub_217753208();
  }

  else
  {
    v7 = v5;
    v8 = v4;
    v9 = v1;
    v10 = v2;
    sub_217753208();
    sub_2173DBB28(v6);
  }

  return sub_217753238();
}

uint64_t sub_2173DC46C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27298, &qword_217769DA0);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173DCA90();
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_2173DCB38();
  sub_217752E58();
  v11 = OUTLINED_FUNCTION_1_3();
  v12(v11);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v14;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  return result;
}

uint64_t sub_2173DC5E0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_217706A3C();
}

uint64_t sub_2173DC604@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2173DB674();
  *a2 = result;
  return result;
}

unint64_t sub_2173DC634@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2173DB6C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2173DC668@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2173DB6C0();
  *a1 = result;
  return result;
}

uint64_t sub_2173DC6AC(uint64_t a1)
{
  v2 = sub_2173DCE58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2173DC6E8(uint64_t a1)
{
  v2 = sub_2173DCE58();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2173DC724@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2173DBC88(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_2173DC78C()
{
  sub_2177531E8();
  sub_2173DBB28(v1);
  return sub_217753238();
}

uint64_t sub_2173DC7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2173DC194(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2173DC7F8(uint64_t a1)
{
  v2 = sub_2173DCA90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2173DC834(uint64_t a1)
{
  v2 = sub_2173DCA90();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2173DC870@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2173DC46C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

BOOL sub_2173DC8CC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_2173DC01C(v7, v8);
}

uint64_t sub_2173DC91C()
{
  v4 = v0[1];
  v5 = *v0;
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  sub_2177531E8();
  if (v5 == 1)
  {
    sub_217753208();
  }

  else
  {
    v7 = v5;
    v8 = v4;
    v9 = v1;
    v10 = v2;
    sub_217753208();
    sub_2173DBB28(v6);
  }

  return sub_217753238();
}

uint64_t sub_2173DC9DC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_2173DCA90()
{
  result = qword_27CB27288;
  if (!qword_27CB27288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27288);
  }

  return result;
}

unint64_t sub_2173DCAE4()
{
  result = qword_27CB27290;
  if (!qword_27CB27290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27290);
  }

  return result;
}

unint64_t sub_2173DCB38()
{
  result = qword_27CB272A0;
  if (!qword_27CB272A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB272A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CatalogChartsRawResponse.CodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t sub_2173DCC38(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_2173DCC8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_2173DCCFC()
{
  result = qword_27CB272A8;
  if (!qword_27CB272A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB272A8);
  }

  return result;
}

unint64_t sub_2173DCD54()
{
  result = qword_27CB272B0;
  if (!qword_27CB272B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB272B0);
  }

  return result;
}

unint64_t sub_2173DCDAC()
{
  result = qword_27CB272B8;
  if (!qword_27CB272B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB272B8);
  }

  return result;
}

unint64_t sub_2173DCE04()
{
  result = qword_27CB272C0;
  if (!qword_27CB272C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB272C0);
  }

  return result;
}

unint64_t sub_2173DCE58()
{
  result = qword_27CB272D0;
  if (!qword_27CB272D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB272D0);
  }

  return result;
}

unint64_t sub_2173DCEAC()
{
  result = qword_27CB272E0;
  if (!qword_27CB272E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB272D8, &qword_217769FD0);
    sub_2173DCF30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB272E0);
  }

  return result;
}

unint64_t sub_2173DCF30()
{
  result = qword_27CB272E8;
  if (!qword_27CB272E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24470, &qword_217758938);
    sub_2172DFD60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB272E8);
  }

  return result;
}

unint64_t sub_2173DCFB4()
{
  result = qword_27CB272F8;
  if (!qword_27CB272F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB272F0, &qword_217769FD8);
    sub_2173DD038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB272F8);
  }

  return result;
}

unint64_t sub_2173DD038()
{
  result = qword_27CB27300;
  if (!qword_27CB27300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24478, &unk_217758940);
    sub_2172E0C7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27300);
  }

  return result;
}

unint64_t sub_2173DD0BC()
{
  result = qword_27CB27310;
  if (!qword_27CB27310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB27308, &qword_217769FE0);
    sub_2173DD140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27310);
  }

  return result;
}

unint64_t sub_2173DD140()
{
  result = qword_27CB27318;
  if (!qword_27CB27318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24488, &unk_217758950);
    sub_2172E0B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27318);
  }

  return result;
}

unint64_t sub_2173DD1C4()
{
  result = qword_27CB27328;
  if (!qword_27CB27328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB27320, &qword_217769FE8);
    sub_2173DD248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27328);
  }

  return result;
}

unint64_t sub_2173DD248()
{
  result = qword_27CB27330;
  if (!qword_27CB27330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24480, &unk_217769FF0);
    sub_217362010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27330);
  }

  return result;
}

unint64_t sub_2173DD2CC()
{
  result = qword_27CB27340;
  if (!qword_27CB27340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB272D8, &qword_217769FD0);
    sub_2173DD350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27340);
  }

  return result;
}

unint64_t sub_2173DD350()
{
  result = qword_27CB27348;
  if (!qword_27CB27348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24470, &qword_217758938);
    sub_2172E04D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27348);
  }

  return result;
}

unint64_t sub_2173DD3D4()
{
  result = qword_27CB27350;
  if (!qword_27CB27350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB272F0, &qword_217769FD8);
    sub_2173DD458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27350);
  }

  return result;
}

unint64_t sub_2173DD458()
{
  result = qword_27CB27358;
  if (!qword_27CB27358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24478, &unk_217758940);
    sub_2172E0F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27358);
  }

  return result;
}

unint64_t sub_2173DD4DC()
{
  result = qword_27CB27360;
  if (!qword_27CB27360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB27308, &qword_217769FE0);
    sub_2173DD560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27360);
  }

  return result;
}

unint64_t sub_2173DD560()
{
  result = qword_27CB27368;
  if (!qword_27CB27368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24488, &unk_217758950);
    sub_2172E0DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27368);
  }

  return result;
}

unint64_t sub_2173DD5E4()
{
  result = qword_27CB27370;
  if (!qword_27CB27370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB27320, &qword_217769FE8);
    sub_2173DD668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27370);
  }

  return result;
}

unint64_t sub_2173DD668()
{
  result = qword_27CB27378;
  if (!qword_27CB27378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24480, &unk_217769FF0);
    sub_21736217C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27378);
  }

  return result;
}

_BYTE *sub_2173DD6EC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2173DD7C8()
{
  result = qword_27CB27380;
  if (!qword_27CB27380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB27388, qword_21776A058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27380);
  }

  return result;
}

unint64_t sub_2173DD830()
{
  result = qword_27CB27390;
  if (!qword_27CB27390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27390);
  }

  return result;
}

unint64_t sub_2173DD888()
{
  result = qword_27CB27398;
  if (!qword_27CB27398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27398);
  }

  return result;
}

unint64_t sub_2173DD8E0()
{
  result = qword_27CB273A0;
  if (!qword_27CB273A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB273A0);
  }

  return result;
}

BOOL sub_2173DD938()
{
  OUTLINED_FUNCTION_4_51();
  v4 = *(v3 + 16);
  sub_217751DE8();
  for (i = 32; v4; i += 16)
  {
    v17 = *(v1 + i);
    v6 = sub_21726B87C(*(v1 + i), *(v1 + i + 8));
    v14 = OUTLINED_FUNCTION_3_48(v6, v7, v8, v9, v10, v11, v12, v13, v17);
    v15 = v2(v14);
    sub_21726B8A0(v17, *(&v17 + 1));
    if (v0 || (v15 & 1) != 0)
    {
      break;
    }

    --v4;
  }

  return v4 != 0;
}

BOOL sub_2173DD9E8()
{
  OUTLINED_FUNCTION_1_51();
  v3 = (v2 + 48);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v6 = *(v3 - 1);
    v9[0] = *(v3 - 2);
    v9[1] = v6;
    v10 = v5;
    sub_217751DE8();
    v7 = v1(v9);

    if (v0)
    {
      break;
    }

    v3 += 24;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

BOOL sub_2173DDA80()
{
  OUTLINED_FUNCTION_1_51();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = *v4++;
    v8 = sub_21726B87C(v7, *(&v7 + 1));
    v16 = OUTLINED_FUNCTION_3_48(v8, v9, v10, v11, v12, v13, v14, v15, v7);
    v17 = v1(v16);
    sub_21726B8A0(v19, *(&v7 + 1));
    if (v0)
    {
      break;
    }
  }

  while ((v17 & 1) == 0);
  return v5 != 0;
}

BOOL sub_2173DDB18()
{
  OUTLINED_FUNCTION_4_51();
  v4 = *(v3 + 16);
  sub_217751DE8();
  v5 = (v1 + 56);
  while (v4)
  {
    v18 = *(v5 - 3);
    v19 = *(v5 - 1);
    v20 = *v5;
    v6 = sub_217751DE8();
    v14 = OUTLINED_FUNCTION_3_48(v6, v7, v8, v9, v10, v11, v12, v13, v18);
    v15 = v2(v14);
    if (v0)
    {

      break;
    }

    v16 = v15;

    if (v16)
    {
      break;
    }

    v5 += 4;
    --v4;
  }

  return v4 != 0;
}

BOOL sub_2173DDBE4()
{
  OUTLINED_FUNCTION_1_51();
  v3 = (v2 + 56);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v16 = *(v3 - 3);
    v17 = *(v3 - 1);
    v18 = *v3;
    v5 = sub_217751DE8();
    v13 = OUTLINED_FUNCTION_3_48(v5, v6, v7, v8, v9, v10, v11, v12, v16);
    v14 = v1(v13);

    if (v0)
    {
      break;
    }

    v3 += 4;
  }

  while ((v14 & 1) == 0);
  return v4 != 0;
}

uint64_t sub_2173DDC78(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = sub_217204DD0(a3);
  v6 = result;
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      return v6 != v8;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x21CEA2E30](v7, a3);
      v9 = result;
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v12 = v9;
    v10 = a1(&v12);

    if (!v3)
    {
      v7 = v8 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return v6 != v8;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

id sub_2173DDD74()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2173DDDD0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2173DDE08()
{
  type metadata accessor for MusicKit_FinalClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CB8A298 = result;
  return result;
}

BOOL NSBundle.isClassicalMusicApp.getter()
{
  v1 = sub_217204AF4(v0);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    if (qword_27CB23BF0 != -1)
    {
      v1 = OUTLINED_FUNCTION_0_54();
    }

    v8[0] = v3;
    v8[1] = v4;
    MEMORY[0x28223BE20](v1, v2);
    OUTLINED_FUNCTION_11_4();
    *(v5 - 16) = v8;
    v6 = sub_2171F8728();
  }

  else
  {
    return 0;
  }

  return v6;
}

BOOL static NSBundle.isClassicalMusicAppBundleIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_27CB23BF0 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_54();
  }

  v6[0] = v3;
  v6[1] = a2;
  MEMORY[0x28223BE20](a1, a2);
  OUTLINED_FUNCTION_11_4();
  *(v4 - 16) = v6;
  return sub_2171F8728();
}

uint64_t sub_2173DDFD0()
{
  sub_2173DE158();
  result = sub_2173DE004();
  qword_27CB273A8 = result;
  return result;
}

uint64_t sub_2173DE004()
{
  result = MRMediaRemoteCopyLocalDeviceSystemClassicalRoomApplicationDisplayID();
  if (result)
  {
    v1 = result;
    v2 = sub_217751F48();
    v4 = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27780, &unk_21775A2F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_217759200;
    *(v5 + 32) = v2;
    *(v5 + 40) = v4;
    sub_217751DE8();
    v6 = sub_2173DE0B4();
    v8 = v7;

    *(v5 + 48) = v6;
    *(v5 + 56) = v8;
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2173DE0B4()
{
  sub_217751DE8();
  v1 = sub_217752108();
  sub_217752048();
  return v1;
}

unint64_t sub_2173DE158()
{
  result = qword_27CB273B0[0];
  if (!qword_27CB273B0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27CB273B0);
  }

  return result;
}

uint64_t MusicRecentlyPlayedRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  swift_beginAccess();
  v2 = off_280BEBCD0;

  (v2)(v7, v3);

  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v4, v5, a1 + 32);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  *(a1 + 72) = 0;
  return result;
}

uint64_t MusicRecentlyPlayedRequest.limit.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t MusicRecentlyPlayedRequest.limit.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t MusicRecentlyPlayedRequest.offset.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t MusicRecentlyPlayedRequest.offset.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t MusicRecentlyPlayedRequest.response()(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_217282D8C;

  return sub_2173DE3F8(a1, a2);
}

uint64_t sub_2173DE3F8(uint64_t a1, uint64_t a2)
{
  v3[86] = v2;
  v3[85] = a2;
  v3[84] = a1;
  v4 = sub_2177516D8();
  v3[87] = v4;
  v5 = *(v4 - 8);
  v3[88] = v5;
  v6 = *(v5 + 64) + 15;
  v3[89] = swift_task_alloc();
  v7 = sub_2177512F8();
  v3[90] = v7;
  v8 = *(v7 - 8);
  v3[91] = v8;
  v9 = *(v8 + 64) + 15;
  v3[92] = swift_task_alloc();
  v10 = type metadata accessor for MusicDataRequest();
  v3[93] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[94] = swift_task_alloc();
  v12 = *(*(type metadata accessor for MusicAPI.Endpoint() - 8) + 64) + 15;
  v3[95] = swift_task_alloc();
  v3[96] = swift_task_alloc();
  v3[97] = swift_task_alloc();
  v13 = sub_217751428();
  v3[98] = v13;
  v14 = *(v13 - 8);
  v3[99] = v14;
  v15 = *(v14 + 64) + 15;
  v3[100] = swift_task_alloc();
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  v3[104] = swift_task_alloc();
  v3[105] = swift_task_alloc();
  v3[106] = swift_task_alloc();
  v3[107] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2173DE640, 0, 0);
}

uint64_t sub_2173DE640()
{
  v1 = *(v0[85] + 16);
  v0[108] = v1;
  v2 = dynamic_cast_existential_1_conditional(v1);
  v0[109] = v2;
  v0[110] = v3;
  if (v2)
  {
    v4 = v0[86];
    v5 = v4[7];
    v6 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v5);
    v7 = *(v6 + 40);
    v12 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[111] = v9;
    *v9 = v0;
    v9[1] = sub_2173DE860;

    return v12(v5, v6);
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
    v11 = sub_217753348();
    MEMORY[0x21CEA23B0](v11);

    MEMORY[0x21CEA23B0](0xD000000000000061, 0x80000002177ADAA0);
    return sub_217752D08();
  }
}

uint64_t sub_2173DE860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_155();
  v19 = v18;
  OUTLINED_FUNCTION_42_0();
  *v20 = v19;
  v22 = *(v21 + 888);
  *v20 = *v17;
  v19[112] = v23;
  v19[113] = v24;

  if (v16)
  {
    v25 = v19[107];
    v26 = v19[106];
    v27 = v19[105];
    v28 = v19[104];
    v29 = v19[103];
    v30 = v19[102];
    v31 = v19[101];
    v32 = v19[100];
    v52 = v16;
    v33 = v19[97];
    v48 = v19[96];
    v49 = v19[95];
    v50 = v19[94];
    v51 = v19[92];
    v34 = v19[89];

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_13_3();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, v48, v49, v50, v51, v52, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_13_3();

    return MEMORY[0x2822009F8](v44, v45, v46);
  }
}

uint64_t sub_2173DEA48()
{
  if (v0[113])
  {
    v1 = v0[112];
    v2 = v0[107];
    v3 = v0[106];
    v4 = v0[99];
    v5 = v0[98];
    v6 = v0[113];
    sub_2177513F8();

    (*(v4 + 16))(v3, v2, v5);
    sub_2172B1A50(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = v7;
    v9 = *(v7 + 24);
    if (*(v7 + 16) >= v9 >> 1)
    {
      OUTLINED_FUNCTION_3_49(v9);
      v8 = v86;
    }

    v10 = v0[107];
    v11 = v0[106];
    OUTLINED_FUNCTION_15_27();
    v12();
    v13 = OUTLINED_FUNCTION_87_0();
    v14(v13);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v15 = v0[109];
  v16 = *(v0[110] + 24);
  v17 = *(v16() + 16);

  if (v17)
  {
    v18 = v0[110];
    v19 = v0[109];
    v20 = v0[105];
    v21 = v16();
    static URLQueryItem.requestedTypes(from:)(v21);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_8();
      v8 = v87;
    }

    OUTLINED_FUNCTION_162_0();
    if (v23)
    {
      OUTLINED_FUNCTION_3_49(v22);
      v8 = v88;
    }

    v24 = v0[105];
    OUTLINED_FUNCTION_16_29();
    *(v8 + 16) = v21;
    v26 = OUTLINED_FUNCTION_2_53(v25);
    v27(v26);
  }

  v28 = v0[86];
  if ((*(v28 + 24) & 1) == 0)
  {
    v29 = v0[104];
    v0[83] = *(v28 + 16);
    sub_217752FC8();
    v31 = v30;
    sub_2177513F8();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_8();
      v8 = v89;
    }

    OUTLINED_FUNCTION_162_0();
    if (v23)
    {
      OUTLINED_FUNCTION_3_49(v32);
      v8 = v90;
    }

    v33 = v0[104];
    OUTLINED_FUNCTION_16_29();
    *(v8 + 16) = v31;
    v35 = OUTLINED_FUNCTION_2_53(v34);
    v36(v35);
    v28 = v0[86];
  }

  if ((*(v28 + 8) & 1) == 0)
  {
    v37 = v0[103];
    v0[82] = *v28;
    sub_217752FC8();
    v39 = v38;
    sub_2177513F8();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_8();
      v8 = v91;
    }

    OUTLINED_FUNCTION_162_0();
    if (v23)
    {
      OUTLINED_FUNCTION_3_49(v40);
      v8 = v92;
    }

    v41 = v0[103];
    OUTLINED_FUNCTION_16_29();
    *(v8 + 16) = v39;
    v43 = OUTLINED_FUNCTION_2_53(v42);
    v44(v43);
    v28 = v0[86];
  }

  if (*(v28 + 72) == 1)
  {
    v45 = v0[102];
    v46 = v0[101];
    v47 = v0[99];
    v48 = v0[98];
    sub_2177513F8();
    (*(v47 + 16))(v46, v45, v48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_8();
      v8 = v93;
    }

    v49 = *(v8 + 24);
    if (*(v8 + 16) >= v49 >> 1)
    {
      OUTLINED_FUNCTION_3_49(v49);
      v8 = v94;
    }

    v50 = v0[102];
    v51 = v0[101];
    OUTLINED_FUNCTION_15_27();
    v52();
    v53 = OUTLINED_FUNCTION_87_0();
    v54(v53);
  }

  if (qword_280BE7420 != -1)
  {
    swift_once();
  }

  v55 = v0[100];
  v56 = v0[99];
  v57 = v0[98];
  v58 = __swift_project_value_buffer(v57, qword_280BE7428);
  (*(v56 + 16))(v55, v58, v57);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_8();
    v8 = v84;
  }

  v60 = *(v8 + 16);
  v59 = *(v8 + 24);
  if (v60 >= v59 >> 1)
  {
    sub_2172B1A50(v59 > 1, v60 + 1, 1, v8);
    v8 = v85;
  }

  v61 = v0[110];
  v62 = v0[109];
  v63 = v0[100];
  OUTLINED_FUNCTION_16_29();
  v64 = v0[97];
  v65 = v0[95];
  v102 = v0[93];
  v98 = v0[92];
  v99 = v0[91];
  v100 = v0[90];
  v101 = v0[94];
  v95 = v0[96];
  v96 = v0[89];
  v66 = v0[88];
  v97 = v0[87];
  v67 = v0[86];
  *(v8 + 16) = v60 + 1;
  v69 = OUTLINED_FUNCTION_2_53(v68);
  v70(v69);
  v71 = (*(v61 + 16))(v62, v61);
  MEMORY[0x21CEA23B0](v71);

  sub_2174B5E4C(v8, v67 + 32, v64);

  sub_2172CB230(v64, v95);
  sub_2172CB230(v95, v65);
  (*(v66 + 16))(v96, v65, v97);
  sub_2177512B8();
  sub_2172CB294(v65, type metadata accessor for MusicAPI.Endpoint);
  sub_217751268();
  (*(v99 + 16))(v101, v98, v100);
  v72 = (v101 + *(v102 + 20));
  swift_beginAccess();
  v73 = off_280BEBCD0;

  (v73)(v74);

  v75 = v0[63];
  v76 = v0[64];
  __swift_project_boxed_opaque_existential_1(v0 + 60, v75);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v75, v76, v72);
  (*(v99 + 8))(v98, v100);
  sub_2172CB294(v95, type metadata accessor for MusicAPI.Endpoint);
  __swift_destroy_boxed_opaque_existential_1(v0 + 60);
  sub_21725EE54(v67 + 32, v72);
  v77 = v72[3];
  v78 = v72[4];
  __swift_project_boxed_opaque_existential_1(v72, v77);
  v79 = *(v78 + 104);
  v103 = (v79 + *v79);
  v80 = v79[1];
  v81 = swift_task_alloc();
  v0[114] = v81;
  *v81 = v0;
  v81[1] = sub_2173DF1F0;
  v82 = v0[94];

  return (v103)(v0 + 78, v82, v77, v78);
}

uint64_t sub_2173DF1F0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v5 = *(v4 + 912);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 920) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173DF2EC()
{
  v1 = v0[115];
  v2 = v0[108];
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[78];
  v0[116] = v5;
  v6 = v0[79];
  v0[117] = v6;
  v7 = v0[80];
  v0[118] = v7;
  v8 = sub_217751348();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v0[119] = sub_217751338();
  sub_2172CA838(v3 + 32, (v0 + 65));
  JSONDecoder.dataRequestConfiguration.setter((v0 + 65));
  type metadata accessor for SharedRelatedItemStore();
  swift_allocObject();
  v11 = SharedRelatedItemStore.init()();
  v0[120] = v11;
  v12 = swift_retain_n();
  JSONDecoder.sharedRelatedItemStore.setter(v12);
  v13 = type metadata accessor for CloudResourceCollection();
  v0[121] = v13;
  v0[81] = *(v4 + 32);
  swift_getWitnessTable();
  sub_217751308();
  if (v1)
  {
    v14 = v0[97];
    v15 = v0[94];

    sub_217275694(v5, v6);

    OUTLINED_FUNCTION_1_17();
    sub_2172CB294(v14, v16);
    OUTLINED_FUNCTION_21();
    sub_2172CB294(v15, v17);
    v18 = v0[107];
    v19 = v0[106];
    v20 = v0[105];
    OUTLINED_FUNCTION_5_39();
    v21 = v0[96];
    v32 = v0[95];
    v33 = v0[94];
    v34 = v0[92];
    v35 = v0[89];

    OUTLINED_FUNCTION_20_0();

    return v22();
  }

  else
  {
    v24 = v0[108];
    v25 = v0[86];
    v26 = v0[85];
    v27 = *(v13 - 8);
    v0[122] = v27;
    (*(v27 + 16))(v0 + 18, v0 + 2, v13);
    sub_2172CA838(v25 + 32, (v0 + 70));
    v28 = *(v26 + 24);
    v0[123] = v28;
    sub_217640B30((v0 + 18), (v0 + 70), v11, &type metadata for AnyMusicDataRequestConfiguration, v28, &protocol witness table for AnyMusicDataRequestConfiguration, v0 + 34);
    v29 = swift_task_alloc();
    v0[124] = v29;
    *v29 = v0;
    v29[1] = sub_2173DF764;
    v30 = v0[86];
    v31 = v0[85];

    return sub_2173DFBEC((v0 + 47), (v0 + 34), v31);
  }
}

uint64_t sub_2173DF668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_19_16();
  v17 = v16[97];
  v18 = v16[94];
  OUTLINED_FUNCTION_1_17();
  sub_2172CB294(v19, v20);
  OUTLINED_FUNCTION_21();
  sub_2172CB294(v18, v21);
  v22 = v16[115];
  v23 = v16[107];
  v24 = v16[106];
  v25 = v16[105];
  OUTLINED_FUNCTION_5_39();
  OUTLINED_FUNCTION_10_25();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_13_3();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2173DF764()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v5 = *(v4 + 992);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 1000) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173DF860()
{
  v1 = v0[123];
  v2 = v0[122];
  v17 = v0[121];
  v3 = v0[120];
  v4 = v0[119];
  v5 = v0[118];
  v6 = v0[117];
  v7 = v0[116];
  v8 = v0[108];
  v19 = v0[107];
  v20 = v0[106];
  v21 = v0[105];
  v22 = v0[104];
  v23 = v0[103];
  v24 = v0[102];
  v25 = v0[101];
  v26 = v0[100];
  v9 = v0[97];
  v27 = v0[96];
  v28 = v0[95];
  v18 = v0[94];
  v29 = v0[92];
  v30 = v0[89];
  v10 = v0[84];

  sub_217275694(v7, v6);

  v11 = type metadata accessor for MusicRecentlyPlayedResponse();
  OUTLINED_FUNCTION_6_0(v11);
  (*(v12 + 8))(v0 + 34);
  (*(v2 + 8))(v0 + 2, v17);
  OUTLINED_FUNCTION_1_17();
  sub_2172CB294(v9, v13);
  memcpy(v10, v0 + 47, 0x68uLL);
  OUTLINED_FUNCTION_21();
  sub_2172CB294(v18, v14);

  OUTLINED_FUNCTION_20_0();

  return v15();
}

uint64_t sub_2173DFA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_19_16();
  v17 = v16[123];
  v18 = v16[122];
  v19 = v16[121];
  v20 = v16[120];
  v21 = v16[119];
  v22 = v16[118];
  v23 = v16[117];
  v24 = v16[116];
  v25 = v16[108];
  v26 = v16[97];
  v44 = v16[94];

  sub_217275694(v24, v23);

  v27 = type metadata accessor for MusicRecentlyPlayedResponse();
  OUTLINED_FUNCTION_6_0(v27);
  (*(v28 + 8))(v16 + 34);
  (*(v18 + 8))(v16 + 2, v19);
  OUTLINED_FUNCTION_1_17();
  sub_2172CB294(v26, v29);
  OUTLINED_FUNCTION_21();
  sub_2172CB294(v44, v30);
  v31 = v16[125];
  v32 = v16[107];
  v33 = v16[106];
  v34 = v16[105];
  OUTLINED_FUNCTION_5_39();
  OUTLINED_FUNCTION_10_25();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_13_3();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, v44, a14, a15, a16);
}

uint64_t sub_2173DFBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  return MEMORY[0x2822009F8](sub_2173DFC10, 0, 0);
}

uint64_t sub_2173DFC10()
{
  v1 = *(v0 + 144);
  v2 = v1[7];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v2);
  if ((*(v3 + 56))(v2, v3))
  {
    v4 = *(v0 + 136);
    *(v0 + 152) = *(v4 + 16);
    v5 = *(v4 + 24);
    *(v0 + 160) = v5;
    v6 = *(v5 + 8);
    *(v0 + 184) = 0;
    v7 = swift_task_alloc();
    *(v0 + 168) = v7;
    v8 = type metadata accessor for MusicItemCollection();
    *v7 = v0;
    v7[1] = sub_2173DFDA4;
    v9 = *(v0 + 128);

    return MusicItemCollection.libraryMapped(policy:scope:)(v0 + 16, v0 + 184, (v0 + 185), v8);
  }

  else
  {
    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    v13 = *(v0 + 120);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = type metadata accessor for MusicRecentlyPlayedResponse();
    (*(*(v16 - 8) + 16))(v13, v12, v16);
    OUTLINED_FUNCTION_20_0();

    return v17();
  }
}

uint64_t sub_2173DFDA4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173DFEA0()
{
  v7 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[15];
  memcpy(v6, v0 + 2, sizeof(v6));
  sub_2173AA804(v6, v3);
  OUTLINED_FUNCTION_20_0();

  return v4();
}

BOOL static MusicRecentlyPlayedRequest<>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  __swift_project_boxed_opaque_existential_1((a1 + 32), v6);
  v8 = *(v7 + 112);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241B8, &unk_2177583E0);
  if (v8(a2 + 32, v9, v6, v7))
  {
    return *(a1 + 72) == *(a2 + 72);
  }

  return 0;
}

uint64_t MusicRecentlyPlayedRequest<>.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8) == 1)
  {
    sub_217753208();
  }

  else
  {
    v3 = *v1;
    sub_217753208();
    MEMORY[0x21CEA3550](v3);
  }

  if (*(v1 + 24) == 1)
  {
    sub_217753208();
  }

  else
  {
    v4 = v1[2];
    sub_217753208();
    MEMORY[0x21CEA3550](v4);
  }

  v5 = v1[7];
  v6 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v5);
  (*(v6 + 120))(a1, v5, v6);
  return MEMORY[0x21CEA3550](*(v1 + 72));
}

uint64_t MusicRecentlyPlayedRequest<>.hashValue.getter()
{
  sub_2177531E8();
  MusicRecentlyPlayedRequest<>.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2173E0148()
{
  sub_2177531E8();
  MusicRecentlyPlayedRequest<>.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2173E01CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2173E0208(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_2173E0248(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit7ArtworkV13_TextGradientVSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit7ArtworkV9_GradientVSg(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit7ArtworkVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit0A6PlayerC5QueueC5EntryV4ItemOSg(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_8MusicKit08PlayableA4Item_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2173E0364(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 729))
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

uint64_t sub_2173E03A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 728) = 0;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 729) = 1;
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

    *(result + 729) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2173E04B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  HIDWORD(v124) = a5;
  v123 = a4;
  HIDWORD(v122) = a3;
  v121 = a2;
  v9 = v126;
  v10 = sub_217751818();
  v11 = OUTLINED_FUNCTION_18_7(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11, v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  sub_217751808();
  v20 = sub_2177517E8();
  v22 = v21;
  (*(v13 + 8))(v19, v6);
  sub_2172A497C(v139);
  v137 = 0u;
  memset(v138, 0, 24);
  v136 = 0u;
  BYTE8(v138[1]) = -1;
  OUTLINED_FUNCTION_35_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27448, &unk_21776A590);
  v120 = a1;
  if (OUTLINED_FUNCTION_12_23())
  {
    v23 = v20;
    OUTLINED_FUNCTION_2_54();
    if (qword_280BE9470 != -1)
    {
      swift_once();
    }

    v22 = &v133;
    sub_2172A4380();
    OUTLINED_FUNCTION_31_15();
    v20 = 0xE000000000000000;
    if (v25)
    {
      v26 = 0xE000000000000000;
    }

    else
    {
      v26 = v24;
    }

    if (qword_280BE9680 != -1)
    {
      swift_once();
    }

    sub_2172A4380();
    OUTLINED_FUNCTION_32_19();
    if (!v25)
    {
      v20 = v27;
    }

    if (qword_280BE9428 != -1)
    {
      swift_once();
    }

    sub_2176CA9A8(qword_280C026F8, v27, v28, v29, v30, v31, v32, v33, v112, v115, v120, v121, v122, v123, v124, v125[0], v125[1], v125[2], v125[3], v125[4], v125[5], v125[6], v125[7], v125[8], v125[9], v125[10]);
    sub_21725CE44(&v133);
    goto LABEL_78;
  }

  OUTLINED_FUNCTION_3_50();
  sub_2171F0738(&v129, &unk_27CB275E0, &qword_2177589D0);
  OUTLINED_FUNCTION_35_14();
  if (OUTLINED_FUNCTION_12_23())
  {
    OUTLINED_FUNCTION_2_54();
    if (qword_280BE9208 != -1)
    {
      swift_once();
    }

    v23 = v20;
    v22 = &v133;
    sub_2172A3F14();
    OUTLINED_FUNCTION_31_15();
    if (v25)
    {
      v26 = 0xE000000000000000;
    }

    else
    {
      v26 = v34;
    }

    if (qword_280BE93B0 != -1)
    {
      swift_once();
    }

    sub_2172A3F14();
    OUTLINED_FUNCTION_28_20();
    Playlist.artwork.getter(v35);
    sub_21726B8C4(&v133);
    goto LABEL_78;
  }

  OUTLINED_FUNCTION_3_50();
  sub_2171F0738(&v129, &unk_27CB28A90, &qword_217758F90);
  OUTLINED_FUNCTION_35_14();
  if (OUTLINED_FUNCTION_12_23())
  {
    v23 = v20;
    v36 = OUTLINED_FUNCTION_2_54();
    v9 = Playlist.Entry.title.getter(v36);
    v26 = v37;
    Playlist.Entry.artistName.getter();
    OUTLINED_FUNCTION_28_20();
    Playlist.Entry.artwork.getter(v38, v39, v40, v41, v42, v43, v44, v45);
    sub_2172758B4(&v133);
LABEL_78:
    *a6 = v23;
    *(a6 + 8) = v6;
    goto LABEL_79;
  }

  OUTLINED_FUNCTION_3_50();
  sub_2171F0738(&v129, &unk_27CB2ACC0, &qword_217758AA8);
  OUTLINED_FUNCTION_35_14();
  if (OUTLINED_FUNCTION_12_23())
  {
    v23 = v20;
    OUTLINED_FUNCTION_2_54();
    if (qword_280BE9750 != -1)
    {
      OUTLINED_FUNCTION_18_2();
    }

    v22 = &v133;
    v46 = sub_2172A41AC();
    if (v47)
    {
      v48 = v46;
    }

    else
    {
      v48 = 0;
    }

    v116 = v48;
    v20 = 0xE000000000000000;
    if (v47)
    {
      v26 = v47;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    if (qword_280BE9958 != -1)
    {
      OUTLINED_FUNCTION_17_18();
    }

    sub_2172A41AC();
    OUTLINED_FUNCTION_32_19();
    if (!v25)
    {
      v20 = v49;
    }

    if (qword_280BE9708 != -1)
    {
      OUTLINED_FUNCTION_6_35();
    }

    sub_2176CA860(qword_280C02840, v49, v50, v51, v52, v53, v54, v55, v112, v116, v120, v121, v122, v123, v124, v125[0], v125[1], v125[2], v125[3], v125[4], v125[5], v125[6], v125[7], v125[8], v125[9], v125[10]);
    sub_2171F0738(&v136, &qword_27CB245B8, &qword_217758AE0);
    v136 = v133;
    v137 = v134;
    v138[0] = v135[0];
    *&v138[1] = *&v135[1];
    BYTE8(v138[1]) = 0;
    v9 = v117;
    goto LABEL_78;
  }

  OUTLINED_FUNCTION_3_50();
  sub_2171F0738(&v129, &qword_27CB277F0, &unk_21775A2B0);
  sub_2171FF30C(a1, v132);
  v56 = OUTLINED_FUNCTION_34_17();
  if (v56)
  {
    v23 = v20;
    v6 = v22;
    v133 = v129;
    v134 = v130;
    v135[0] = v131[0];
    *(v135 + 9) = *(v131 + 9);
    v64 = Track.title.getter(v56, v57, v58, v59, v60, v61, v62, v63);
    v113 = v65;
    v118 = v64;
    v22 = Track.artistName.getter(v64, v65, v66, v67, v68, v69, v70, v71);
    v20 = v72;
    sub_217275710(&v133, v127);
    if (v128)
    {
      OUTLINED_FUNCTION_4_52();
      if (qword_280BE6B50 != -1)
      {
        OUTLINED_FUNCTION_82_7();
      }

      OUTLINED_FUNCTION_30_20();
      sub_2176CA83C(v73, v74, v75, v76, v77, v78, v79, v80, v113, v118, a1, v121, v122, v123, v124, v125[0], v125[1], v125[2], v125[3], v125[4], v125[5], v125[6], v125[7], v125[8], v125[9], v125[10]);
      sub_217283C08(v126);
    }

    else
    {
      OUTLINED_FUNCTION_4_52();
      if (qword_280BE9708 != -1)
      {
        OUTLINED_FUNCTION_6_35();
      }

      OUTLINED_FUNCTION_30_20();
      sub_2176CA860(v91, v92, v93, v94, v95, v96, v97, v98, v113, v118, a1, v121, v122, v123, v124, v125[0], v125[1], v125[2], v125[3], v125[4], v125[5], v125[6], v125[7], v125[8], v125[9], v125[10]);
      sub_217283B58(v126);
    }

    sub_2171F0738(&v136, &qword_27CB245B8, &qword_217758AE0);
    v26 = v114;
    v9 = v119;
    OUTLINED_FUNCTION_29_20();
    *&v138[1] = *&v135[1];
    BYTE8(v138[1]) = v99 & 1;
    goto LABEL_78;
  }

  OUTLINED_FUNCTION_3_50();
  BYTE8(v131[1]) = -1;
  sub_2171F0738(&v129, &unk_27CB28AA0, &qword_21775A020);
  sub_2171FF30C(a1, v132);
  if (OUTLINED_FUNCTION_34_17())
  {
    v133 = v129;
    v134 = v130;
    v135[0] = v131[0];
    *(v135 + 9) = *(v131 + 9);
    sub_21729C6EC(&v133, v127);
    if (v128)
    {
      v23 = v20;
      v6 = v22;
      OUTLINED_FUNCTION_4_52();
      if (qword_280BE6BC8 != -1)
      {
        swift_once();
      }

      v22 = v126;
      sub_2172A4204();
      OUTLINED_FUNCTION_31_15();
      v20 = 0xE000000000000000;
      if (v25)
      {
        v26 = 0xE000000000000000;
      }

      else
      {
        v26 = v81;
      }

      if (qword_280BE6DA0 != -1)
      {
        swift_once();
      }

      sub_2172A4204();
      OUTLINED_FUNCTION_32_19();
      if (!v25)
      {
        v20 = v82;
      }

      if (qword_280BE6B50 != -1)
      {
        OUTLINED_FUNCTION_82_7();
      }

      OUTLINED_FUNCTION_30_20();
      sub_2176CA83C(v83, v84, v85, v86, v87, v88, v89, v90, v112, v115, v120, v121, v122, v123, v124, v125[0], v125[1], v125[2], v125[3], v125[4], v125[5], v125[6], v125[7], v125[8], v125[9], v125[10]);
      sub_217283C08(v126);
    }

    else
    {
      v23 = v20;
      v6 = v22;
      OUTLINED_FUNCTION_4_52();
      if (qword_280BE9750 != -1)
      {
        OUTLINED_FUNCTION_18_2();
      }

      v22 = v126;
      sub_2172A41AC();
      OUTLINED_FUNCTION_31_15();
      v20 = 0xE000000000000000;
      if (v25)
      {
        v26 = 0xE000000000000000;
      }

      else
      {
        v26 = v100;
      }

      if (qword_280BE9958 != -1)
      {
        OUTLINED_FUNCTION_17_18();
      }

      sub_2172A41AC();
      OUTLINED_FUNCTION_32_19();
      if (!v25)
      {
        v20 = v101;
      }

      if (qword_280BE9708 != -1)
      {
        OUTLINED_FUNCTION_6_35();
      }

      OUTLINED_FUNCTION_30_20();
      sub_2176CA860(v102, v103, v104, v105, v106, v107, v108, v109, v112, v115, v120, v121, v122, v123, v124, v125[0], v125[1], v125[2], v125[3], v125[4], v125[5], v125[6], v125[7], v125[8], v125[9], v125[10]);
      sub_217283B58(v126);
    }

    sub_2171F0738(&v136, &qword_27CB245B8, &qword_217758AE0);
    OUTLINED_FUNCTION_29_20();
    *(v138 + 9) = *(v135 + 9);
    goto LABEL_78;
  }

  OUTLINED_FUNCTION_3_50();
  BYTE8(v131[1]) = -1;
  sub_2171F0738(&v129, &qword_27CB245B8, &qword_217758AE0);
  *a6 = v20;
  *(a6 + 8) = v22;
  memcpy(v125, v139, 0x221uLL);
  v9 = 0;
  v22 = 0;
  v20 = 0;
  v26 = 0xE000000000000000;
LABEL_79:
  *(a6 + 16) = v9;
  *(a6 + 24) = v26;
  *(a6 + 32) = v22;
  *(a6 + 40) = v20;
  memcpy((a6 + 48), v125, 0x221uLL);
  v110 = v137;
  *(a6 + 600) = v136;
  *(a6 + 616) = v110;
  *(a6 + 632) = v138[0];
  *(a6 + 641) = *(v138 + 9);
  result = sub_2171F3F0C(v120, a6 + 664);
  *(a6 + 704) = v121;
  *(a6 + 712) = BYTE4(v122) & 1;
  *(a6 + 720) = v123;
  *(a6 + 728) = BYTE4(v124) & 1;
  return result;
}

double sub_2173E0D6C@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v310 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for SongPropertyProvider();
  v6 = OUTLINED_FUNCTION_43(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_1();
  v12 = (v11 - v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v290 = &v278 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v289 = &v278 - v19;
  v291 = type metadata accessor for MusicVideoPropertyProvider();
  v20 = OUTLINED_FUNCTION_43(v291);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v27 = sub_217751818();
  v28 = OUTLINED_FUNCTION_18_7(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28, v33);
  OUTLINED_FUNCTION_1();
  v36 = v35 - v34;
  v293 = a1;
  v37 = sub_2173E2DD0(a1, &selRef_identifier);
  if (v38)
  {
    v39 = v37;
    v40 = v38;
  }

  else
  {
    sub_217751808();
    v39 = sub_2177517E8();
    v40 = v41;
    (*(v30 + 8))(v36, v2);
  }

  *a2 = v39;
  a2[1] = v40;
  v42 = v293;
  v43 = sub_2173E2DD0(v293, &selRef_title);
  if (v44)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0;
  }

  v46 = 0xE000000000000000;
  if (v44)
  {
    v46 = v44;
  }

  a2[2] = v45;
  a2[3] = v46;
  a2[4] = sub_2173E2DD0(v42, &selRef_subtitle);
  a2[5] = v47;
  sub_2172A497C(v309);
  if ([v42 artworkCatalog])
  {
    swift_getObjectType();
    v48 = sub_217717634();
    swift_unknownObjectRelease();
    v308[4] = &off_28297F3C8;
    v308[3] = &type metadata for SoftLinking_ArtworkCatalog;
    v308[0] = v48;
    swift_unknownObjectRetain();
    v49 = sub_2173E2DD0(v42, &selRef_title);
    *v306 = 1;
    memset(&v306[8], 0, 24);
    Artwork.init(_:alternateText:existingColorAnalysis:)(v308, v49, v50, v306, v294);
    swift_unknownObjectRelease();
    memcpy(v306, v294, sizeof(v306));
    nullsub_1(v306, v51);
    v52 = v306;
  }

  else
  {
    v52 = v309;
  }

  memcpy(v308, v52, 0x221uLL);
  memcpy(a2 + 6, v308, 0x221uLL);
  sub_2171F5110(v308, v306, &qword_27CB24400, &unk_21775E9A0);
  v53 = sub_2173E2D64(v42);
  v292 = a2;
  if (v53)
  {
    v54 = objc_opt_self();
    v55 = sub_217751D88();

    *v306 = 0;
    v56 = [v54 dataWithJSONObject:v55 options:0 error:v306];

    v57 = *v306;
    if (v56)
    {
      v58 = sub_217751768();
      v60 = v59;

      v61 = sub_217751348();
      v62 = *(v61 + 48);
      v63 = *(v61 + 52);
      swift_allocObject();
      sub_217751338();
      sub_2172DFAC8();
      sub_217751308();

      sub_217275694(v58, v60);
      memcpy(v307, v306, sizeof(v307));
      goto LABEL_17;
    }

    v64 = v57;
    v65 = sub_217751638();

    swift_willThrow();
  }

  memset(v307, 0, sizeof(v307));
LABEL_17:
  sub_21733B708(v294);
  v66 = [v42 underlyingItemCatalogID];
  if (v66)
  {
    v67 = v66;
    sub_21750DA18(v67, v304);
    v68 = v42;
    v69 = v304[0];
    v70 = v304[1];
    v71 = v304[2];
    if ([v68 isMusicVideo])
    {
      if (qword_280BE6378 != -1)
      {
        OUTLINED_FUNCTION_15_0();
      }

      v72 = &xmmword_280BE6380;
    }

    else
    {
      if (qword_280BEB138 != -1)
      {
        OUTLINED_FUNCTION_14_1();
      }

      v72 = &xmmword_280BEB140;
    }

    v81 = *(v72 + 2);
    v80 = *(v72 + 3);
    v288 = *v72;
    sub_217751DE8();
    sub_217751DE8();

    *v306 = v69;
    *&v306[8] = v70;
    *&v306[16] = v69;
    *&v306[24] = v70;
    v306[32] = v71;
    bzero(&v306[40], 0xE0uLL);
    *&v306[264] = MEMORY[0x277D84FA0];
    v306[272] = 0;
    *&v306[288] = v288;
    *&v306[280] = &unk_28295F590;
    *&v306[304] = v81;
    *&v306[312] = v80;
    memset(&v306[320], 0, 32);
    v306[352] = 4;
    nullsub_1(v306, v82);
    v83 = OUTLINED_FUNCTION_33_17();
    memcpy(v83, v84, 0x161uLL);
    v78 = v292;
    v42 = v293;
  }

  else
  {
    v73 = sub_2173E2DD0(v42, &selRef_underlyingItemLibraryID);
    if (v74)
    {
      v75 = v73;
      v76 = v74;
      v77 = [v42 isMusicVideo];
      v78 = v292;
      if (v77)
      {
        if (qword_280BE6378 != -1)
        {
          OUTLINED_FUNCTION_15_0();
        }

        v79 = &xmmword_280BE6380;
      }

      else
      {
        if (qword_280BEB138 != -1)
        {
          OUTLINED_FUNCTION_14_1();
        }

        v79 = &xmmword_280BEB140;
      }

      v86 = *(v79 + 2);
      v85 = *(v79 + 3);
      v288 = *v79;
      sub_217751DE8();
      sub_217751DE8();

      *v306 = v75;
      *&v306[8] = v76;
      memset(&v306[16], 0, 17);
      *&v306[40] = v75;
      *&v306[48] = v76;
      bzero(&v306[56], 0xD0uLL);
      *&v306[264] = MEMORY[0x277D84FA0];
      v306[272] = 1;
      *&v306[288] = v288;
      *&v306[280] = &unk_28295F5C0;
      *&v306[304] = v86;
      *&v306[312] = v85;
      memset(&v306[320], 0, 32);
      v306[352] = 4;
      nullsub_1(v306, v87);
      v88 = OUTLINED_FUNCTION_33_17();
      memcpy(v88, v89, 0x161uLL);
      v42 = v293;
    }

    else
    {
      memcpy(v305, v294, 0x161uLL);
      v78 = v292;
    }
  }

  memset(v303, 0, 24);
  v302 = 0u;
  v301 = 0u;
  BYTE8(v303[1]) = -1;
  memcpy(v304, v305, 0x161uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v304) == 1)
  {
    sub_2171F0738(v308, &qword_27CB24400, &unk_21775E9A0);
    sub_2171F0738(v307, &qword_27CB244D0, &unk_21775D620);
  }

  else
  {
    if ([v42 isMusicVideo])
    {
      if (LOBYTE(v304[34]))
      {
        if (qword_280BE8B68 != -1)
        {
          swift_once();
        }

        v90 = &qword_280BE8B70;
      }

      else
      {
        if (qword_280BE8B28 != -1)
        {
          swift_once();
        }

        v90 = &qword_280BE8B30;
      }

      v92 = *(v90 + 16);
      v93 = v90[1];
      v286 = *v90;
      v300[0] = v286;
      v300[1] = v93;
      LODWORD(v288) = v92;
      LOBYTE(v300[2]) = v92;
      v94 = v304[0];
      v95 = v304[1];
      swift_bridgeObjectRetain_n();
      v96 = OUTLINED_FUNCTION_33_17();
      sub_2171F5110(v96, v97, &qword_27CB25468, &qword_21775CD00);
      v98.rawValue._countAndFlagsBits = v94;
      v98.rawValue._object = v95;
      v99 = ResourceType.hrefForResource(with:)(v98);
      object = v99.value._object;
      countAndFlagsBits = v99.value._countAndFlagsBits;
      sub_2171F0738(v305, &qword_27CB25468, &qword_21775CD00);
      v287 = v93;

      OUTLINED_FUNCTION_5();
      v283 = sub_217751DC8();
      OUTLINED_FUNCTION_5();
      v282 = sub_217751DC8();
      OUTLINED_FUNCTION_5();
      v280 = sub_217751DC8();
      OUTLINED_FUNCTION_5();
      v279 = sub_217751DC8();
      memcpy(v26, v309, 0x221uLL);
      memcpy((v26 + 552), v294, 0x161uLL);
      *(v26 + 928) = 0;
      *(v26 + 936) = 1;
      v100 = v291;
      v101 = v291[9];
      v102 = sub_2177516D8();
      OUTLINED_FUNCTION_5_5();
      __swift_storeEnumTagSinglePayload(v103, v104, v105, v102);
      v106 = v26 + v100[10];
      *(v106 + 4) = 0;
      *v106 = 512;
      v281 = v100[11];
      *(v26 + v281) = 2;
      *(v26 + v100[13]) = 0;
      v107 = (v26 + v100[14]);
      *v107 = xmmword_2177586D0;
      v107[1] = 0u;
      v107[2] = 0u;
      v107[3] = 0u;
      *(v26 + v100[15]) = 0;
      *(v26 + v100[16]) = 0;
      *(v26 + v100[19]) = 2;
      v108 = OUTLINED_FUNCTION_9_28(v100[20]);
      __swift_storeEnumTagSinglePayload(v108, v109, v110, v102);
      *(v26 + v100[21]) = 2;
      v111 = v26 + v100[23];
      *v111 = 0;
      *(v111 + 8) = 0;
      *(v111 + 16) = 0;
      v112 = (v26 + v100[24]);
      *v112 = 0;
      v112[1] = 0;
      v112[2] = 1;
      memcpy((v26 + v100[25]), v309, 0x221uLL);
      *(v26 + v100[26]) = 0;
      v113 = (v26 + v100[27]);
      v113[14] = 0;
      *(v113 + 5) = 0u;
      *(v113 + 6) = 0u;
      *(v113 + 3) = 0u;
      *(v113 + 4) = 0u;
      *(v113 + 1) = 0u;
      *(v113 + 2) = 0u;
      *v113 = 0u;
      *(v26 + v100[28]) = 0;
      v114 = v100[29];
      v115 = sub_2177517D8();
      v290 = v114;
      OUTLINED_FUNCTION_5_5();
      __swift_storeEnumTagSinglePayload(v116, v117, v118, v115);
      OUTLINED_FUNCTION_11_33(v26 + v100[30]);
      v119 = OUTLINED_FUNCTION_9_28(v100[33]);
      __swift_storeEnumTagSinglePayload(v119, v120, v121, v102);
      v122 = (v26 + v100[34]);
      *v122 = 0;
      v122[1] = 0;
      v123 = OUTLINED_FUNCTION_9_28(v100[35]);
      __swift_storeEnumTagSinglePayload(v123, v124, v125, v115);
      *(v26 + v100[36]) = 3;
      *(v26 + v100[37]) = 2;
      *(v26 + v100[38]) = 2;
      *(v26 + v100[39]) = 2;
      *(v26 + v100[40]) = 5;
      *(v26 + v100[41]) = 7;
      OUTLINED_FUNCTION_11_33(v26 + v100[42]);
      v126 = OUTLINED_FUNCTION_9_28(v100[43]);
      __swift_storeEnumTagSinglePayload(v126, v127, v128, v115);
      v129 = OUTLINED_FUNCTION_9_28(v100[44]);
      __swift_storeEnumTagSinglePayload(v129, v130, v131, v115);
      OUTLINED_FUNCTION_11_33(v26 + v100[45]);
      *(v26 + v100[46]) = 2;
      *(v26 + v100[47]) = 10;
      OUTLINED_FUNCTION_11_33(v26 + v100[48]);
      v132 = (v26 + v100[49]);
      v132[6].n128_u64[0] = 0;
      OUTLINED_FUNCTION_1_0(v132, 0);
      OUTLINED_FUNCTION_0_55((v26 + v100[50]), v133);
      OUTLINED_FUNCTION_0_55((v26 + v100[51]), v134);
      OUTLINED_FUNCTION_0_55((v26 + v100[52]), v135);
      OUTLINED_FUNCTION_0_55((v26 + v100[53]), v136);
      OUTLINED_FUNCTION_0_55((v26 + v100[54]), v137);
      OUTLINED_FUNCTION_0_55((v26 + v100[55]), v138);
      OUTLINED_FUNCTION_0_55((v26 + v100[56]), v139);
      *(v26 + v100[57]) = 0;
      v140 = v26 + v100[58];
      *v140 = 0;
      *(v140 + 8) = 1;
      *(v26 + v100[59]) = 0;
      if (qword_280BE5E60 != -1)
      {
        swift_once();
      }

      v141 = qword_280C01FE0;
      if (qword_280C01FE0 >> 62)
      {
        type metadata accessor for AnyMusicProperty();
        sub_217751DE8();
        v277 = sub_217752D28();

        v141 = v277;
      }

      else
      {
        sub_217751DE8();
        sub_217753128();
        type metadata accessor for AnyMusicProperty();
      }

      *(v26 + v100[60]) = v141;
      v142 = (v26 + v100[63]);
      memcpy((v26 + v100[61]), v304, 0x161uLL);
      v143 = v26 + v100[62];
      v144 = v287;
      *v143 = v286;
      *(v143 + 8) = v144;
      *(v143 + 16) = v288;
      v145 = object;
      *v142 = countAndFlagsBits;
      v142[1] = v145;
      v146 = v282;
      *(v26 + v100[64]) = v283;
      *(v26 + v100[65]) = v146;
      v147 = v279;
      *(v26 + v100[66]) = v280;
      *(v26 + v100[67]) = v147;
      memcpy(v306, v26, sizeof(v306));
      sub_2171F0738(v306, &qword_27CB24400, &unk_21775E9A0);
      memcpy(v26, v308, 0x221uLL);
      *(v26 + 912) = sub_2173E2DD0(v42, &selRef_albumTitle);
      *(v26 + 920) = v148;
      *(v26 + 944) = sub_2173E2DD0(v42, &selRef_artistName);
      *(v26 + 952) = v149;
      v150 = [v42 isExplicit];
      *(v26 + v281) = v150;
      v151 = [v42 duration];
      if (v151)
      {
        v152 = v151;
        v153 = sub_2177525B8();
        v155 = v154;
      }

      else
      {
        v153 = 0;
        v155 = 1;
      }

      v226 = v291;
      v227 = v26 + v291[12];
      *v227 = v153;
      *(v227 + 8) = v155 & 1;
      v228 = [v42 has4K];
      if (v228)
      {
        v229 = v228;
        v230 = [v228 BOOLValue];
      }

      else
      {
        v230 = 2;
      }

      *(v26 + v226[17]) = v230;
      v237 = [v293 hasHDR];
      if (v237)
      {
        v238 = v237;
        v239 = [v237 BOOLValue];
      }

      else
      {
        v239 = 2;
      }

      v246 = (v26 + v226[22]);
      *(v26 + v226[18]) = v239;
      *v246 = 0;
      v246[1] = 0;
      memcpy(v300, v113, 0x78uLL);
      sub_2171F0738(v300, &qword_27CB244D0, &unk_21775D620);
      memcpy(v113, v307, 0x78uLL);
      v247 = v293;
      v248 = [v293 releaseDate];
      if (v248)
      {
        v249 = v248;
        v250 = v289;
        sub_2177517C8();

        v251 = 0;
      }

      else
      {
        v251 = 1;
        v250 = v289;
      }

      __swift_storeEnumTagSinglePayload(v250, v251, 1, v115);
      v257 = (v26 + v226[31]);
      sub_2173E2E30(v250, &v290[v26]);
      *v257 = sub_2173E2DD0(v247, &selRef_title);
      v257[1] = v258;
      v259 = [v247 trackNumber];
      v260 = v259;
      if (v259)
      {
        v261 = [v259 integerValue];
      }

      else
      {
        v261 = 0;
      }

      v269 = v26 + v226[32];
      *v269 = v261;
      *(v269 + 8) = v260 == 0;
      *&v299[40] = v226;
      *&v299[48] = &protocol witness table for MusicVideoPropertyProvider;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v299[16]);
      v264 = type metadata accessor for MusicVideoPropertyProvider;
      sub_2173E2EA0(v26, boxed_opaque_existential_0, type metadata accessor for MusicVideoPropertyProvider);

      v271 = (boxed_opaque_existential_0 + v226[61]);
      v273 = *v271;
      v272 = v271[1];
      sub_217751DE8();
      sub_2171F0738(&v301, &qword_27CB245B8, &qword_217758AE0);
      *v299 = v273;
      *&v299[8] = v272;
      v303[0] = *&v299[32];
      *&v303[1] = *&v299[48];
      v302 = *&v299[16];
      v301 = *v299;
      BYTE8(v303[1]) = 1;
      v268 = v26;
    }

    else
    {
      if (LOBYTE(v304[34]))
      {
        if (qword_280BE8B08 != -1)
        {
          swift_once();
        }

        v91 = &qword_280BE8B10;
      }

      else
      {
        if (qword_280BEA1C8 != -1)
        {
          swift_once();
        }

        v91 = &xmmword_280BEA1D0;
      }

      v156 = *(v91 + 16);
      v157 = v91[1];
      *&v288 = *v91;
      v300[0] = v288;
      v300[1] = v157;
      LODWORD(v289) = v156;
      LOBYTE(v300[2]) = v156;
      v158 = v304[0];
      v159 = v304[1];
      sub_217751DE8();
      v160 = OUTLINED_FUNCTION_33_17();
      sub_2171F5110(v160, v161, &qword_27CB25468, &qword_21775CD00);
      sub_217751DE8();
      v162.rawValue._countAndFlagsBits = v158;
      v162.rawValue._object = v159;
      v163 = ResourceType.hrefForResource(with:)(v162);
      v286 = v163.value._object;
      v287 = v163.value._countAndFlagsBits;
      sub_2171F0738(v305, &qword_27CB25468, &qword_21775CD00);

      OUTLINED_FUNCTION_5();
      countAndFlagsBits = sub_217751DC8();
      OUTLINED_FUNCTION_5();
      object = sub_217751DC8();
      OUTLINED_FUNCTION_5();
      v283 = sub_217751DC8();
      OUTLINED_FUNCTION_5();
      v282 = sub_217751DC8();
      memcpy(v12, v309, 0x221uLL);
      memcpy(v12 + 69, v294, 0x161uLL);
      v164 = v5[8];
      v165 = sub_2177516D8();
      OUTLINED_FUNCTION_5_5();
      __swift_storeEnumTagSinglePayload(v166, v167, v168, v165);
      *(v12 + v5[9]) = 0;
      OUTLINED_FUNCTION_19_17(v5[10]);
      *(v12 + v5[11]) = 0;
      v169 = v12 + v5[12];
      v169[4] = 0;
      *v169 = 512;
      OUTLINED_FUNCTION_19_17(v5[13]);
      v281 = v5[14];
      *(v12 + v281) = 2;
      *(v12 + v5[17]) = 0;
      v170 = (v12 + v5[18]);
      *v170 = xmmword_2177586D0;
      v170[1] = 0u;
      v170[2] = 0u;
      v170[3] = 0u;
      *(v12 + v5[19]) = 0;
      *(v12 + v5[20]) = 0;
      *(v12 + v5[21]) = 2;
      *(v12 + v5[22]) = 2;
      *(v12 + v5[24]) = 2;
      OUTLINED_FUNCTION_19_17(v5[25]);
      *(v171 + 16) = 0;
      OUTLINED_FUNCTION_19_17(v5[26]);
      *(v172 + 16) = 1;
      memcpy(v12 + v5[27], v309, 0x221uLL);
      OUTLINED_FUNCTION_8_34(v5[28]);
      OUTLINED_FUNCTION_19_17(v5[29]);
      OUTLINED_FUNCTION_8_34(v5[30]);
      *(v12 + v5[31]) = 0;
      v173 = (v12 + v5[32]);
      v173[14] = 0;
      *(v173 + 5) = 0u;
      *(v173 + 6) = 0u;
      *(v173 + 3) = 0u;
      *(v173 + 4) = 0u;
      *(v173 + 1) = 0u;
      *(v173 + 2) = 0u;
      *v173 = 0u;
      *(v12 + v5[33]) = 0;
      v174 = v5[34];
      v175 = sub_2177517D8();
      v291 = v174;
      OUTLINED_FUNCTION_5_5();
      __swift_storeEnumTagSinglePayload(v176, v177, v178, v175);
      OUTLINED_FUNCTION_8_34(v5[35]);
      *(v12 + v5[36]) = 2;
      v179 = v5[37];
      sub_21733B710(v300);
      memcpy(v12 + v179, v300, 0xB0uLL);
      *(v12 + v5[38]) = 2;
      v180 = v5[41];
      OUTLINED_FUNCTION_5_5();
      __swift_storeEnumTagSinglePayload(v181, v182, v183, v165);
      OUTLINED_FUNCTION_19_17(v5[42]);
      v184 = v5[43];
      OUTLINED_FUNCTION_5_5();
      __swift_storeEnumTagSinglePayload(v185, v186, v187, v175);
      *(v12 + v5[44]) = 3;
      *(v12 + v5[45]) = 2;
      *(v12 + v5[46]) = 2;
      *(v12 + v5[47]) = 2;
      *(v12 + v5[48]) = 5;
      *(v12 + v5[49]) = 7;
      OUTLINED_FUNCTION_8_34(v5[50]);
      v188 = v5[51];
      OUTLINED_FUNCTION_5_5();
      __swift_storeEnumTagSinglePayload(v189, v190, v191, v175);
      v192 = v5[52];
      OUTLINED_FUNCTION_5_5();
      __swift_storeEnumTagSinglePayload(v193, v194, v195, v175);
      OUTLINED_FUNCTION_8_34(v5[53]);
      *(v12 + v5[54]) = 2;
      *(v12 + v5[55]) = 10;
      OUTLINED_FUNCTION_8_34(v5[56]);
      v196 = (v12 + v5[57]);
      v196[6].n128_u64[0] = 0;
      OUTLINED_FUNCTION_1_0(v196, 0);
      OUTLINED_FUNCTION_0_55((v12 + v5[58]), v197);
      OUTLINED_FUNCTION_0_55((v12 + v5[59]), v198);
      v199 = (v12 + v5[60]);
      v199[6] = v200;
      v199[7] = v200;
      OUTLINED_FUNCTION_1_0(v199, v200);
      OUTLINED_FUNCTION_0_55((v12 + v5[61]), v201);
      OUTLINED_FUNCTION_0_55((v12 + v5[62]), v202);
      v203 = (v12 + v5[63]);
      v203[6] = v204;
      v203[7] = v204;
      OUTLINED_FUNCTION_1_0(v203, v204);
      v205 = (v12 + v5[64]);
      v205[6] = v206;
      v205[7] = v206;
      OUTLINED_FUNCTION_1_0(v205, v206);
      OUTLINED_FUNCTION_0_55((v12 + v5[65]), v207);
      OUTLINED_FUNCTION_0_55((v12 + v5[66]), v208);
      OUTLINED_FUNCTION_0_55((v12 + v5[67]), v209);
      OUTLINED_FUNCTION_0_55((v12 + v5[68]), v210);
      *(v12 + v5[69]) = 0;
      v211 = v12 + v5[70];
      *v211 = 0;
      v211[8] = 1;
      *(v12 + v5[71]) = 0;
      v212 = sub_217536388();
      if (v212 >> 62)
      {
        type metadata accessor for AnyMusicProperty();
        v213 = sub_217752D28();
      }

      else
      {
        sub_217751DE8();
        sub_217753128();
        type metadata accessor for AnyMusicProperty();
        v213 = v212;
      }

      v214 = v293;

      *(v12 + v5[72]) = v213;
      v215 = (v12 + v5[75]);
      memcpy(v12 + v5[73], v304, 0x161uLL);
      v216 = v12 + v5[74];
      *v216 = v288;
      *(v216 + 1) = v157;
      v216[16] = v289;
      v217 = v286;
      *v215 = v287;
      v215[1] = v217;
      v218 = object;
      *(v12 + v5[76]) = countAndFlagsBits;
      *(v12 + v5[77]) = v218;
      v219 = v282;
      *(v12 + v5[78]) = v283;
      *(v12 + v5[79]) = v219;
      memcpy(v306, v12, sizeof(v306));
      sub_2171F0738(v306, &qword_27CB24400, &unk_21775E9A0);
      memcpy(v12, v308, 0x221uLL);
      v12[114] = sub_2173E2DD0(v214, &selRef_albumTitle);
      v12[115] = v220;
      v12[116] = sub_2173E2DD0(v214, &selRef_artistName);
      v12[117] = v221;
      v222 = [v214 isExplicit];
      *(v12 + v281) = v222;
      v223 = [v214 discNumber];
      v224 = v223;
      if (v223)
      {
        v225 = [v223 integerValue];
      }

      else
      {
        v225 = 0;
      }

      v231 = v12 + v5[15];
      *v231 = v225;
      v231[8] = v224 == 0;
      v232 = [v214 duration];
      if (v232)
      {
        v233 = v232;
        v234 = sub_2177525B8();
        v236 = v235;
      }

      else
      {
        v234 = 0;
        v236 = 1;
      }

      v240 = v12 + v5[16];
      v241 = (v12 + v5[23]);
      *v240 = v234;
      v240[8] = v236 & 1;
      *v241 = 0;
      v241[1] = 0;
      memcpy(v299, v173, sizeof(v299));
      sub_2171F0738(v299, &qword_27CB244D0, &unk_21775D620);
      memcpy(v173, v307, 0x78uLL);
      v242 = [v214 releaseDate];
      if (v242)
      {
        v243 = v242;
        v244 = v290;
        sub_2177517C8();

        v245 = 0;
        v78 = v292;
      }

      else
      {
        v245 = 1;
        v78 = v292;
        v244 = v290;
      }

      __swift_storeEnumTagSinglePayload(v244, v245, 1, v175);
      v252 = (v12 + v5[39]);
      sub_2173E2E30(v244, v291 + v12);
      *v252 = sub_2173E2DD0(v214, &selRef_title);
      v252[1] = v253;
      v254 = [v214 trackNumber];
      v255 = v254;
      if (v254)
      {
        v256 = [v254 integerValue];
      }

      else
      {
        v256 = 0;
      }

      v262 = v12 + v5[40];
      *v262 = v256;
      v262[8] = v255 == 0;
      *(&v297 + 1) = v5;
      v298 = &protocol witness table for SongPropertyProvider;
      v263 = __swift_allocate_boxed_opaque_existential_0(&v296);
      v264 = type metadata accessor for SongPropertyProvider;
      sub_2173E2EA0(v12, v263, type metadata accessor for SongPropertyProvider);

      v265 = (v263 + v5[73]);
      v267 = *v265;
      v266 = v265[1];
      sub_217751DE8();
      sub_2171F0738(&v301, &qword_27CB245B8, &qword_217758AE0);
      *&v295 = v267;
      *(&v295 + 1) = v266;
      v303[0] = v297;
      *&v303[1] = v298;
      v302 = v296;
      v301 = v295;
      BYTE8(v303[1]) = 0;
      v268 = v12;
    }

    sub_2173E2F00(v268, v264);
  }

  v274 = v302;
  *(v78 + 75) = v301;
  *(v78 + 77) = v274;
  *(v78 + 79) = v303[0];
  *(v78 + 641) = *(v303 + 9);
  result = 0.0;
  *(v78 + 83) = 0u;
  *(v78 + 85) = 0u;
  *(v78 + 87) = 0u;
  *(v78 + 712) = 1;
  v78[90] = 0;
  *(v78 + 728) = 1;
  v276 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_2173E2640(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v6 = *v2 == *v3 && *(v2 + 1) == v3[1];
  if (!v6 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 2) == v4[2] && *(v5 + 3) == v4[3];
  if (!v7 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v5 + 5);
  v9 = v4[5];
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *(v5 + 4) == v4[4] && v8 == v9;
    if (!v10 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = OUTLINED_FUNCTION_22_22();
  memcpy(v11, v5 + 6, 0x221uLL);
  v12 = OUTLINED_FUNCTION_21_21();
  memcpy(v12, v4 + 6, 0x221uLL);
  memcpy(__dst, v5 + 6, 0x221uLL);
  memcpy(&__dst[34] + 8, v4 + 6, 0x221uLL);
  memcpy(v37, v5 + 6, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v37) == 1)
  {
    memcpy(v33, &__dst[34] + 8, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v33) == 1)
    {
      OUTLINED_FUNCTION_25_25(v34);
      v13 = OUTLINED_FUNCTION_22_22();
      OUTLINED_FUNCTION_23_2(v13, v32);
      v14 = OUTLINED_FUNCTION_21_21();
      OUTLINED_FUNCTION_23_2(v14, v32);
      sub_2171F0738(v34, &qword_27CB24400, &unk_21775E9A0);
      goto LABEL_28;
    }

    v17 = OUTLINED_FUNCTION_22_22();
    sub_2171F5110(v17, v34, &qword_27CB24400, &unk_21775E9A0);
    v18 = OUTLINED_FUNCTION_21_21();
    sub_2171F5110(v18, v34, &qword_27CB24400, &unk_21775E9A0);
LABEL_26:
    memcpy(v33, __dst, 0x449uLL);
    v19 = &unk_27CB25C18;
    v20 = &unk_21775ECE0;
    v21 = v33;
LABEL_39:
    sub_2171F0738(v21, v19, v20);
    return 0;
  }

  OUTLINED_FUNCTION_25_25(v34);
  OUTLINED_FUNCTION_25_25(v32);
  memcpy(v33, &__dst[34] + 8, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v33) == 1)
  {
    OUTLINED_FUNCTION_25_25(__src);
    v15 = OUTLINED_FUNCTION_22_22();
    OUTLINED_FUNCTION_24_20(v15);
    v16 = OUTLINED_FUNCTION_21_21();
    OUTLINED_FUNCTION_24_20(v16);
    OUTLINED_FUNCTION_24_20(v34);
    sub_217284084(__src);
    goto LABEL_26;
  }

  memcpy(__src, &__dst[34] + 8, 0x221uLL);
  v22 = OUTLINED_FUNCTION_22_22();
  OUTLINED_FUNCTION_23_2(v22, v30);
  v23 = OUTLINED_FUNCTION_21_21();
  OUTLINED_FUNCTION_23_2(v23, v30);
  OUTLINED_FUNCTION_23_2(v34, v30);
  v24 = static Artwork.== infix(_:_:)(v32, __src);
  memcpy(v29, __src, 0x221uLL);
  sub_217284084(v29);
  memcpy(v30, v32, 0x221uLL);
  sub_217284084(v30);
  OUTLINED_FUNCTION_25_25(__src);
  sub_2171F0738(__src, &qword_27CB24400, &unk_21775E9A0);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_28:
  OUTLINED_FUNCTION_23_2((v5 + 75), __dst);
  OUTLINED_FUNCTION_23_2((v4 + 75), &__dst[4]);
  if (BYTE8(__dst[3]) != 255)
  {
    sub_2171F5110(__dst, v33, &qword_27CB245B8, &qword_217758AE0);
    if (BYTE8(__dst[7]) != 255)
    {
      v34[0] = __dst[4];
      v34[1] = __dst[5];
      v35[0] = __dst[6];
      *(v35 + 9) = *(&__dst[6] + 9);
      v25 = static MusicPlayer.Queue.Entry.Item.== infix(_:_:)(v33, v34);
      sub_21729C748(v34);
      sub_21729C748(v33);
      sub_2171F0738(__dst, &qword_27CB245B8, &qword_217758AE0);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_34;
    }

    sub_21729C748(v33);
    goto LABEL_38;
  }

  if (BYTE8(__dst[7]) != 255)
  {
LABEL_38:
    v19 = &unk_27CB27440;
    v20 = &unk_21776A580;
    v21 = __dst;
    goto LABEL_39;
  }

  sub_2171F0738(__dst, &qword_27CB245B8, &qword_217758AE0);
LABEL_34:
  v26 = *(v4 + 712);
  if (v5[89])
  {
    if ((v4[89] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v4[89] & 1) != 0 || v5[88] != *(v4 + 88))
  {
    return 0;
  }

  v28 = *(v4 + 728);
  if (v5[91])
  {
    if (v4[91])
    {
      return 1;
    }
  }

  else if ((v4[91] & 1) == 0)
  {
    return v5[90] == *(v4 + 90);
  }

  return 0;
}

uint64_t sub_2173E2AB8(const void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_217751FF8();
  v5 = v1[2];
  v6 = v1[3];
  sub_217751FF8();
  if (v1[5])
  {
    v7 = v1[4];
    OUTLINED_FUNCTION_24();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  memcpy(__dst, v1 + 6, sizeof(__dst));
  memcpy(v17, v1 + 6, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v17) == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(__src, __dst, sizeof(__src));
    OUTLINED_FUNCTION_24();
    memcpy(v14, __dst, sizeof(v14));
    sub_217284028(v14, v15);
    Artwork.hash(into:)(a1);
    memcpy(v15, __src, sizeof(v15));
    sub_217284084(v15);
  }

  sub_2171F5110((v1 + 75), v15, &qword_27CB245B8, &qword_217758AE0);
  if (v15[56] == 255)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    *v14 = *v15;
    *&v14[16] = *&v15[16];
    *&v14[32] = *&v15[32];
    *&v14[41] = *&v15[41];
    OUTLINED_FUNCTION_24();
    MusicPlayer.Queue.Entry.Item.hash(into:)();
    sub_21729C748(v14);
  }

  if (*(v1 + 712) == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    v8 = v1[88];
    OUTLINED_FUNCTION_24();
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x21CEA3580](v9);
  }

  if (*(v1 + 728) == 1)
  {
    return OUTLINED_FUNCTION_25();
  }

  v11 = v1[90];
  OUTLINED_FUNCTION_24();
  if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return MEMORY[0x21CEA3580](v12);
}

uint64_t sub_2173E2C84()
{
  sub_2177531E8();
  sub_2173E2AB8(v1);
  return sub_217753238();
}

uint64_t sub_2173E2CD0()
{
  sub_2177531E8();
  sub_2173E2AB8(v1);
  return sub_217753238();
}

unint64_t sub_2173E2D10()
{
  result = qword_27CB27438;
  if (!qword_27CB27438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27438);
  }

  return result;
}

uint64_t sub_2173E2D64(void *a1)
{
  v1 = [a1 playParametersDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_217751D98();

  return v3;
}

uint64_t sub_2173E2DD0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_217751F48();

  return v4;
}

uint64_t sub_2173E2E30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2173E2EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_43(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2173E2F00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

__n128 OUTLINED_FUNCTION_29_20()
{
  v1 = *(v0 + 16);
  *(v0 + 64) = *v0;
  *(v0 + 80) = v1;
  result = *(v0 + 32);
  *(v0 + 96) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_17()
{

  return swift_dynamicCast();
}

uint64_t sub_2173E2FB4(uint64_t a1)
{
  v2 = sub_2173E3070();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2173E2FF0(uint64_t a1)
{
  v2 = sub_2173E3070();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2173E3070()
{
  result = qword_27CB27458;
  if (!qword_27CB27458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27458);
  }

  return result;
}

uint64_t sub_2173E3144(uint64_t a1)
{
  v2 = sub_2173E3200();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2173E3180(uint64_t a1)
{
  v2 = sub_2173E3200();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2173E3200()
{
  result = qword_27CB27468;
  if (!qword_27CB27468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27468);
  }

  return result;
}

uint64_t sub_2173E3274(uint64_t a1)
{
  v2 = sub_2173E3330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2173E32B0(uint64_t a1)
{
  v2 = sub_2173E3330();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2173E3330()
{
  result = qword_27CB27478;
  if (!qword_27CB27478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27478);
  }

  return result;
}

uint64_t sub_2173E33A4(uint64_t a1)
{
  v2 = sub_2173E355C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2173E33E0(uint64_t a1)
{
  v2 = sub_2173E355C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2173E3460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_0_0(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33, v34);
  v36 = &a9 - v35;
  v37 = *(v25 + 24);
  v38 = *(v25 + 32);
  v39 = OUTLINED_FUNCTION_45_4();
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v23();
  sub_2177532F8();
  (*(v30 + 8))(v36, v28);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2173E355C()
{
  result = qword_27CB27488;
  if (!qword_27CB27488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27488);
  }

  return result;
}

uint64_t CloudRecentlyPlayedMusicItem.id.getter()
{
  v2 = type metadata accessor for CloudStation(0);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_70_0();
  v7 = type metadata accessor for CloudPlaylist(0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_1();
  v14 = (v13 - v12);
  v15 = type metadata accessor for CloudAlbum(0);
  v16 = OUTLINED_FUNCTION_45_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_1();
  v22 = (v21 - v20);
  v23 = type metadata accessor for CloudRecentlyPlayedMusicItem();
  v24 = OUTLINED_FUNCTION_43(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_1_52();
  v28 = OUTLINED_FUNCTION_1_5();
  sub_2173E7200(v28, v29);
  OUTLINED_FUNCTION_47_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2173E71A4(v1, v0);
      v38 = *v0;
      v39 = v0[1];
      sub_217751DE8();
      v34 = v0;
      v37 = type metadata accessor for CloudStation;
      goto LABEL_7;
    }

    v31 = type metadata accessor for CloudPlaylist;
    sub_2173E71A4(v1, v14);
    v32 = *v14;
    v33 = v14[1];
    sub_217751DE8();
    v34 = v14;
  }

  else
  {
    v31 = type metadata accessor for CloudAlbum;
    sub_2173E71A4(v1, v22);
    v35 = *v22;
    v36 = v22[1];
    sub_217751DE8();
    v34 = v22;
  }

  v37 = v31;
LABEL_7:
  sub_2173E3C54(v34, v37);
  return OUTLINED_FUNCTION_1_5();
}

uint64_t type metadata accessor for CloudRecentlyPlayedMusicItem()
{
  result = qword_27CB27518;
  if (!qword_27CB27518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static CloudRecentlyPlayedMusicItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v56 = v3;
  v4 = OUTLINED_FUNCTION_101();
  v5 = type metadata accessor for CloudStation(v4);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_81();
  v55 = v10;
  v11 = OUTLINED_FUNCTION_206();
  v12 = type metadata accessor for CloudPlaylist(v11);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = type metadata accessor for CloudAlbum(0);
  v21 = OUTLINED_FUNCTION_45_0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  OUTLINED_FUNCTION_11_2();
  v25 = type metadata accessor for CloudRecentlyPlayedMusicItem();
  v26 = OUTLINED_FUNCTION_43(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  OUTLINED_FUNCTION_6_1();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v55 - v35;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v55 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27490, &unk_21776A5C0);
  OUTLINED_FUNCTION_45_0(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44, v45);
  OUTLINED_FUNCTION_70_0();
  v47 = *(v46 + 56);
  OUTLINED_FUNCTION_26_22();
  sub_2173E7200(v1, v0);
  sub_2173E7200(v56, v0 + v47);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_1_52();
      sub_2173E7200(v0, v36);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_14_24();
        sub_2173E71A4(v0 + v47, v19);
        static CloudPlaylist.== infix(_:_:)();
        sub_2173E3C54(v19, v1);
        v49 = v36;
LABEL_13:
        v53 = v1;
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_3_51();
      v51 = v36;
    }

    else
    {
      OUTLINED_FUNCTION_1_52();
      sub_2173E7200(v0, v32);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v52 = v55;
        sub_2173E71A4(v0 + v47, v55);
        static CloudStation.== infix(_:_:)();
        sub_2173E3C54(v52, type metadata accessor for CloudStation);
        v49 = v32;
        v53 = type metadata accessor for CloudStation;
LABEL_14:
        sub_2173E3C54(v49, v53);
        OUTLINED_FUNCTION_13_27();
        sub_2173E3C54(v0, v54);
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_2_55();
      v51 = v32;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_52();
    sub_2173E7200(v0, v40);
    if (!swift_getEnumCaseMultiPayload())
    {
      v1 = type metadata accessor for CloudAlbum;
      sub_2173E71A4(v0 + v47, v2);
      static CloudAlbum.== infix(_:_:)();
      sub_2173E3C54(v2, type metadata accessor for CloudAlbum);
      v49 = v40;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_0_56();
    v51 = v40;
  }

  sub_2173E3C54(v51, v50);
  sub_2171F0738(v0, &qword_27CB27490, &unk_21776A5C0);
LABEL_15:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2173E3C54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void CloudRecentlyPlayedMusicItem.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v5 = v4;
  v81 = type metadata accessor for CloudStation(0);
  v6 = OUTLINED_FUNCTION_43(v81);
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
  OUTLINED_FUNCTION_11_2();
  v22 = type metadata accessor for CloudRecentlyPlayedMusicItem();
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  OUTLINED_FUNCTION_1_52();
  sub_2173E7200(v0, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_24_21();
      sub_2173E71A4(v29, v3);
      MEMORY[0x21CEA3550](1);
      v31 = *v3;
      v32 = v3[1];
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
      v40 = v3;
    }

    else
    {
      v22 = type metadata accessor for CloudStation;
      sub_2173E71A4(v29, v2);
      MEMORY[0x21CEA3550](2);
      v45 = *v2;
      v46 = v2[1];
      sub_217751FF8();
      v47 = v2 + v81[5];
      CloudStation.Attributes.hash(into:)();
      v48 = *(v2 + v81[6]);
      sub_217753208();
      v49 = *(v2 + v81[7]);
      sub_217753208();
      v50 = v2 + v81[8];
      sub_217263DE0(v5);
      v40 = v2;
    }

    v51 = v22;
  }

  else
  {
    OUTLINED_FUNCTION_4_53();
    sub_2173E71A4(v29, v1);
    MEMORY[0x21CEA3550](0);
    v41 = *v1;
    v42 = v1[1];
    sub_217751FF8();
    v43 = v1 + v17[5];
    CloudAlbum.Attributes.hash(into:)();
    v44 = v1 + v17[6];
    sub_21726504C(v5);
    sub_2171F5110(v1 + v17[7], v83, &qword_27CB24AA8, &qword_217759080);
    if (v83[2] == 1)
    {
      sub_217753208();
    }

    else
    {
      memcpy(v82, v83, sizeof(v82));
      sub_217753208();
      sub_21726473C(v5, v52, v53, v54, v55, v56, v57, v58);
      sub_2172640D4(v5, v59, v60, v61, v62, v63, v64, v65);
      sub_2172640D4(v5, v66, v67, v68, v69, v70, v71, v72);
      sub_217264414(v5, v73, v74, v75, v76, v77, v78, v79);
      sub_2172845E8(v82);
    }

    v80 = v1 + v17[8];
    sub_217264150(v5);
    OUTLINED_FUNCTION_0_56();
    v40 = v1;
  }

  sub_2173E3C54(v40, v51);
  OUTLINED_FUNCTION_13();
}

uint64_t CloudRecentlyPlayedMusicItem.hashValue.getter()
{
  sub_2177531E8();
  CloudRecentlyPlayedMusicItem.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2173E4054()
{
  sub_2177531E8();
  CloudRecentlyPlayedMusicItem.hash(into:)();
  return sub_217753238();
}

void CloudRecentlyPlayedMusicItem.decodeRawAttributes(from:)()
{
  OUTLINED_FUNCTION_171();
  v53 = v1;
  v54 = v6;
  v7 = type metadata accessor for CloudStation.Attributes(0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_81();
  v52 = v12;
  v13 = OUTLINED_FUNCTION_206();
  v51 = type metadata accessor for CloudStation(v13);
  v14 = OUTLINED_FUNCTION_43(v51);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  OUTLINED_FUNCTION_11_2();
  v18 = type metadata accessor for CloudPlaylist.Attributes(0);
  v19 = OUTLINED_FUNCTION_45_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v23 = OUTLINED_FUNCTION_7_34();
  v24 = type metadata accessor for CloudPlaylist(v23);
  v25 = OUTLINED_FUNCTION_43(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  OUTLINED_FUNCTION_1();
  v29 = OUTLINED_FUNCTION_31_12();
  v30 = type metadata accessor for CloudAlbum.Attributes(v29);
  v31 = OUTLINED_FUNCTION_45_0(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_70_0();
  v35 = type metadata accessor for CloudAlbum(0);
  v36 = OUTLINED_FUNCTION_43(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  OUTLINED_FUNCTION_1();
  v42 = v41 - v40;
  v43 = type metadata accessor for CloudRecentlyPlayedMusicItem();
  v44 = OUTLINED_FUNCTION_43(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44, v47);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_1_52();
  sub_2173E7200(v53, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_14_24();
      sub_2173E71A4(v3, v5);
      sub_2171FF30C(v54, v55);
      sub_2173E7200(v5 + *(v24 + 20), v4);
      sub_217385674();
      OUTLINED_FUNCTION_45_1();
      v49 = v5;
    }

    else
    {
      OUTLINED_FUNCTION_23_24();
      sub_2173E71A4(v3, v2);
      sub_2171FF30C(v54, v55);
      sub_2173E7200(v2 + *(v51 + 20), v52);
      sub_2173858E4();
      OUTLINED_FUNCTION_45_1();
      v49 = v2;
    }

    v50 = v42;
  }

  else
  {
    OUTLINED_FUNCTION_25_26();
    sub_2173E71A4(v3, v42);
    sub_2171FF30C(v54, v55);
    sub_2173E7200(v42 + *(v35 + 20), v0);
    sub_217385620();
    OUTLINED_FUNCTION_45_1();
    v49 = OUTLINED_FUNCTION_1_5();
  }

  sub_2173E3C54(v49, v50);
  OUTLINED_FUNCTION_170();
}

void CloudRecentlyPlayedMusicItem.decodeRawRelationships(from:)()
{
  OUTLINED_FUNCTION_171();
  v54 = v3;
  v4 = type metadata accessor for CloudStation(0);
  v5 = OUTLINED_FUNCTION_43(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_81();
  *(&v53 + 1) = v9;
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
  v22 = type metadata accessor for CloudRecentlyPlayedMusicItem();
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_11_2();
  v55 = sub_217751DC8();
  OUTLINED_FUNCTION_1_52();
  v27 = OUTLINED_FUNCTION_1_5();
  sub_2173E7200(v27, v28);
  OUTLINED_FUNCTION_47_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_53();
    v33 = OUTLINED_FUNCTION_45_4();
    sub_2173E71A4(v33, v34);
    sub_2171F5110(v2 + *(v17 + 24), v56, &qword_27CB243C8, &unk_21775D390);
    if (v57 == 1)
    {
      OUTLINED_FUNCTION_0_56();
      sub_2173E3C54(v2, v35);
      v31 = &qword_27CB243C8;
      v32 = &unk_21775D390;
      goto LABEL_7;
    }

    sub_2171F0738(v56, &qword_27CB243C8, &unk_21775D390);
    sub_2171FF30C(v54, v56);
    v42 = sub_217383708(&unk_28295E588);
    Dictionary<>.init(from:skippingValuesFor:)(v56, v42);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_0_56();
    v41 = v2;
LABEL_15:
    sub_2173E3C54(v41, v40);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_5_40();
    v36 = *(&v53 + 1);
    sub_2173E71A4(v0, *(&v53 + 1));
    if (*(*(&v53 + 1) + *(v4 + 24)))
    {
      OUTLINED_FUNCTION_2_55();
      sub_2173E3C54(*(&v53 + 1), v37);
      goto LABEL_16;
    }

    sub_2171FF30C(v54, v56);
    if (qword_280BE4D60 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_84();
    v43 = sub_217751DE8();
    sub_217383748(v43, v44, v45, v46, v47, v48, v49, v50, v53, v54, v55, v56[0], v56[1], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
    v52 = v51;

    Dictionary<>.init(from:skippingValuesFor:)(v56, v52);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_2_55();
    v41 = v36;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_6_36();
  sub_2173E71A4(v0, v1);
  sub_2171F5110(v1 + *(v11 + 24), v56, &qword_27CB24358, &unk_21775D510);
  if (v57 != 1)
  {

    sub_2171F0738(v56, &qword_27CB24358, &unk_21775D510);
    sub_2171FF30C(v54, v56);
    OUTLINED_FUNCTION_84();
    v38 = sub_217751DE8();
    v39 = sub_217383728(v38);

    Dictionary<>.init(from:skippingValuesFor:)(v56, v39);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_3_51();
    v41 = v1;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_51();
  sub_2173E3C54(v1, v30);
  v31 = &qword_27CB24358;
  v32 = &unk_21775D510;
LABEL_7:
  sub_2171F0738(v56, v31, v32);
LABEL_16:
  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_170();
}

void CloudRecentlyPlayedMusicItem.decodeRawAssociations(from:)()
{
  OUTLINED_FUNCTION_171();
  *(&v51 + 1) = v3;
  v4 = type metadata accessor for CloudStation(0);
  v5 = OUTLINED_FUNCTION_43(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_81();
  *&v51 = v9;
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
  v22 = type metadata accessor for CloudRecentlyPlayedMusicItem();
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_11_2();
  v52 = sub_217751DC8();
  OUTLINED_FUNCTION_1_52();
  v27 = OUTLINED_FUNCTION_1_5();
  sub_2173E7200(v27, v28);
  OUTLINED_FUNCTION_47_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_53();
    v33 = OUTLINED_FUNCTION_45_4();
    sub_2173E71A4(v33, v34);
    sub_2171F5110(v2 + *(v17 + 28), v53, &qword_27CB24AA8, &qword_217759080);
    if (v54 == 1)
    {
      OUTLINED_FUNCTION_0_56();
      sub_2173E3C54(v2, v35);
      v31 = &qword_27CB24AA8;
      v32 = &qword_217759080;
      goto LABEL_7;
    }

    sub_2171F0738(v53, &qword_27CB24AA8, &qword_217759080);
    sub_2171FF30C(*(&v51 + 1), v53);
    v42 = sub_2173839EC(&unk_28295E650);
    Dictionary<>.init(from:skippingValuesFor:)(v53, v42);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_0_56();
    v41 = v2;
LABEL_15:
    sub_2173E3C54(v41, v40);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_5_40();
    v36 = v0;
    v37 = v51;
    sub_2173E71A4(v36, v51);
    if (*(v51 + *(v4 + 28)))
    {
      OUTLINED_FUNCTION_2_55();
      sub_2173E3C54(v51, v38);
      goto LABEL_16;
    }

    sub_2171FF30C(*(&v51 + 1), v53);
    if (qword_27CB23E58 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2C988, v43, v44, v45, v46, v47, v48, v49, v51, v52, v53[0], v53[1], v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
    Dictionary<>.init(from:skippingValuesFor:)(v53, v50);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_2_55();
    v41 = v37;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_6_36();
  sub_2173E71A4(v0, v1);
  sub_2171F5110(v1 + *(v11 + 28), v53, &qword_27CB24350, &unk_21776A5D0);
  if (v54 != 1)
  {

    sub_2171F0738(v53, &qword_27CB24350, &unk_21776A5D0);
    sub_2171FF30C(*(&v51 + 1), v53);
    v39 = sub_217383A0C(&unk_28295F028);
    Dictionary<>.init(from:skippingValuesFor:)(v53, v39);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_3_51();
    v41 = v1;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_51();
  sub_2173E3C54(v1, v30);
  v31 = &qword_27CB24350;
  v32 = &unk_21776A5D0;
LABEL_7:
  sub_2171F0738(v53, v31, v32);
LABEL_16:
  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_170();
}

void CloudRecentlyPlayedMusicItem.decodeRawMetadata(from:skippingValuesFor:)()
{
  OUTLINED_FUNCTION_171();
  v41 = v3;
  v4 = type metadata accessor for CloudStation(0);
  v5 = OUTLINED_FUNCTION_43(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_81();
  v40 = v9;
  v10 = OUTLINED_FUNCTION_206();
  v11 = type metadata accessor for CloudPlaylist(v10);
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = OUTLINED_FUNCTION_7_34();
  v17 = type metadata accessor for CloudAlbum(v16);
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_31_12();
  v22 = type metadata accessor for CloudRecentlyPlayedMusicItem();
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  sub_217751DC8();
  OUTLINED_FUNCTION_1_52();
  v27 = OUTLINED_FUNCTION_135();
  sub_2173E7200(v27, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_53();
    sub_2173E71A4(v0, v2);
    v34 = *(v17 + 32);
    sub_2171F5110(v2 + v34, &v43, &qword_27CB243C0, &unk_21775D3A0);
    if (v44 == 1)
    {
      OUTLINED_FUNCTION_0_56();
      sub_2173E3C54(v2, v35);
      v32 = &qword_27CB243C0;
      v33 = &unk_21775D3A0;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_46();
    sub_2171FF30C(v41, v42);
    OUTLINED_FUNCTION_48_0(v2 + v34);
    sub_217751DE8();
    OUTLINED_FUNCTION_31_16();
    sub_217387350();
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_0_56();
    v39 = v2;
LABEL_13:
    sub_2173E3C54(v39, v38);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_5_40();
    sub_2173E71A4(v0, v40);
    v36 = *(v4 + 32);
    sub_2171F5110(v40 + v36, &v43, &qword_27CB24340, &unk_2177650B0);
    if (v44 == 1)
    {
      OUTLINED_FUNCTION_2_55();
      sub_2173E3C54(v40, v37);
      v32 = &qword_27CB24340;
      v33 = &unk_2177650B0;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_46();
    sub_2171FF30C(v41, v42);
    OUTLINED_FUNCTION_48_0(v40 + v36);
    sub_217751DE8();
    OUTLINED_FUNCTION_31_16();
    sub_2173876D0();
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_2_55();
    v39 = v40;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_6_36();
  sub_2173E71A4(v0, v1);
  v30 = *(v11 + 32);
  sub_2171F5110(v1 + v30, &v43, &qword_27CB24348, &unk_21775D520);
  if (v44 != 1)
  {

    OUTLINED_FUNCTION_46();
    sub_2171FF30C(v41, v42);
    OUTLINED_FUNCTION_48_0(v1 + v30);
    sub_217751DE8();
    OUTLINED_FUNCTION_31_16();
    sub_217387380();
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_3_51();
    v39 = v1;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_3_51();
  sub_2173E3C54(v1, v31);
  v32 = &qword_27CB24348;
  v33 = &unk_21775D520;
LABEL_9:
  sub_2171F0738(&v43, v32, v33);
LABEL_14:
  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_170();
}

void CloudRecentlyPlayedMusicItem.mergeAttributes(with:for:)()
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
  v26 = type metadata accessor for CloudRecentlyPlayedMusicItem();
  v27 = OUTLINED_FUNCTION_43(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_1_52();
  sub_2173E7200(v4, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_14_24();
      sub_2173E71A4(v0, v3);
      sub_2173884CC(v3 + *(v12 + 20), v34, v35);
      OUTLINED_FUNCTION_45_1();
      v32 = v3;
    }

    else
    {
      OUTLINED_FUNCTION_23_24();
      sub_2173E71A4(v0, v2);
      sub_2173885F8(v2 + *(v7 + 20), v34, v35);
      OUTLINED_FUNCTION_45_1();
      v32 = v2;
    }

    v33 = v25;
  }

  else
  {
    OUTLINED_FUNCTION_25_26();
    sub_2173E71A4(v0, v25);
    sub_217388478(v25 + *(v18 + 20), v34, v35);
    OUTLINED_FUNCTION_45_1();
    v32 = OUTLINED_FUNCTION_1_5();
  }

  sub_2173E3C54(v32, v33);
  OUTLINED_FUNCTION_170();
}

void CloudRecentlyPlayedMusicItem.mergeRelationships(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v15 = OUTLINED_FUNCTION_60_1(v13, v14);
  v16 = OUTLINED_FUNCTION_43(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_81();
  v52 = v20;
  v21 = OUTLINED_FUNCTION_206();
  v22 = type metadata accessor for CloudPlaylist(v21);
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v27 = OUTLINED_FUNCTION_7_34();
  v28 = type metadata accessor for CloudAlbum(v27);
  v29 = OUTLINED_FUNCTION_43(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_31_12();
  v33 = type metadata accessor for CloudRecentlyPlayedMusicItem();
  v34 = OUTLINED_FUNCTION_43(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  if (*(v10 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_1_52();
  v38 = OUTLINED_FUNCTION_135();
  sub_2173E7200(v38, v39);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_53();
    sub_2173E71A4(v10, v12);
    sub_2171F5110(v12 + *(v28 + 24), v54, &qword_27CB243C8, &unk_21775D390);
    OUTLINED_FUNCTION_54();
    if (!v41)
    {

      memcpy(v55, v54, 0x300uLL);
      OUTLINED_FUNCTION_52_15();
      sub_217388868();
      OUTLINED_FUNCTION_98();
      sub_21726A4EC(v55);
      OUTLINED_FUNCTION_0_56();
      v47 = v12;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_0_56();
    sub_2173E3C54(v12, v45);
    v43 = &qword_27CB243C8;
    v44 = &unk_21775D390;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_6_36();
    sub_2173E71A4(v10, v11);
    sub_2171F5110(v11 + *(v22 + 24), v54, &qword_27CB24358, &unk_21775D510);
    OUTLINED_FUNCTION_54();
    if (!v41)
    {

      memcpy(v55, v54, 0x380uLL);
      OUTLINED_FUNCTION_52_15();
      sub_2173888A8();
      OUTLINED_FUNCTION_98();
      sub_21726A354(v55);
      OUTLINED_FUNCTION_3_51();
      v47 = v11;
LABEL_14:
      sub_2173E3C54(v47, v46);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_3_51();
    sub_2173E3C54(v11, v42);
    v43 = &qword_27CB24358;
    v44 = &unk_21775D510;
LABEL_11:
    sub_2171F0738(v54, v43, v44);
    OUTLINED_FUNCTION_53();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_5_40();
  sub_2173E71A4(v10, v52);
  if (*(v52 + *(v15 + 24)))
  {
    OUTLINED_FUNCTION_53();
  }

  else
  {

    sub_2171FF30C(v53, v55);
    v48 = sub_2174D4AA8(v55);
    if (!a10)
    {
      v49 = v48;
      v50 = sub_217751DE8();
      sub_2174D37FC(v50, v49);
      OUTLINED_FUNCTION_98();
    }
  }

  OUTLINED_FUNCTION_2_55();
  sub_2173E3C54(v52, v51);
LABEL_18:
  OUTLINED_FUNCTION_170();
}

void CloudRecentlyPlayedMusicItem.mergeAssociations(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v15 = OUTLINED_FUNCTION_60_1(v13, v14);
  v16 = OUTLINED_FUNCTION_43(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_81();
  v52 = v20;
  v21 = OUTLINED_FUNCTION_206();
  v22 = type metadata accessor for CloudPlaylist(v21);
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v27 = OUTLINED_FUNCTION_7_34();
  v28 = type metadata accessor for CloudAlbum(v27);
  v29 = OUTLINED_FUNCTION_43(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_31_12();
  v33 = type metadata accessor for CloudRecentlyPlayedMusicItem();
  v34 = OUTLINED_FUNCTION_43(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  if (*(v10 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_1_52();
  v38 = OUTLINED_FUNCTION_135();
  sub_2173E7200(v38, v39);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_53();
    sub_2173E71A4(v10, v12);
    sub_2171F5110(v12 + *(v28 + 28), v54, &qword_27CB24AA8, &qword_217759080);
    OUTLINED_FUNCTION_54();
    if (!v41)
    {

      memcpy(v55, v54, 0x200uLL);
      OUTLINED_FUNCTION_52_15();
      sub_217388C10();
      OUTLINED_FUNCTION_98();
      sub_2172845E8(v55);
      OUTLINED_FUNCTION_0_56();
      v47 = v12;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_0_56();
    sub_2173E3C54(v12, v45);
    v43 = &qword_27CB24AA8;
    v44 = &qword_217759080;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_6_36();
    sub_2173E71A4(v10, v11);
    sub_2171F5110(v11 + *(v22 + 28), v54, &qword_27CB24350, &unk_21776A5D0);
    OUTLINED_FUNCTION_54();
    if (!v41)
    {

      memcpy(v55, v54, 0x200uLL);
      OUTLINED_FUNCTION_52_15();
      sub_217388C50();
      OUTLINED_FUNCTION_98();
      sub_21726A300(v55);
      OUTLINED_FUNCTION_3_51();
      v47 = v11;
LABEL_14:
      sub_2173E3C54(v47, v46);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_3_51();
    sub_2173E3C54(v11, v42);
    v43 = &qword_27CB24350;
    v44 = &unk_21776A5D0;
LABEL_11:
    sub_2171F0738(v54, v43, v44);
    OUTLINED_FUNCTION_53();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_5_40();
  sub_2173E71A4(v10, v52);
  if (*(v52 + *(v15 + 28)))
  {
    OUTLINED_FUNCTION_53();
  }

  else
  {

    sub_2171FF30C(v53, v55);
    v48 = sub_2174D53F4(v55);
    if (!a10)
    {
      v49 = v48;
      v50 = sub_217751DE8();
      sub_2174D37FC(v50, v49);
      OUTLINED_FUNCTION_98();
    }
  }

  OUTLINED_FUNCTION_2_55();
  sub_2173E3C54(v52, v51);
LABEL_18:
  OUTLINED_FUNCTION_170();
}

void CloudRecentlyPlayedMusicItem.mergeMetadata(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = type metadata accessor for CloudStation(0);
  v5 = OUTLINED_FUNCTION_43(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_81();
  v39 = v9;
  v10 = OUTLINED_FUNCTION_206();
  v11 = type metadata accessor for CloudPlaylist(v10);
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = OUTLINED_FUNCTION_7_34();
  v17 = type metadata accessor for CloudAlbum(v16);
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_31_12();
  v22 = type metadata accessor for CloudRecentlyPlayedMusicItem();
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_11_2();
  if (*(v3 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_1_52();
  v27 = OUTLINED_FUNCTION_1_5();
  sub_2173E7200(v27, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_53();
    sub_2173E71A4(v3, v1);
    sub_2171F5110(v1 + *(v17 + 32), v40, &qword_27CB243C0, &unk_21775D3A0);
    if (v41 == 1)
    {
      OUTLINED_FUNCTION_0_56();
      sub_2173E3C54(v1, v35);
      v33 = &qword_27CB243C0;
      v34 = &unk_21775D3A0;
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_50_11();
    OUTLINED_FUNCTION_43_8();
    sub_217388E48();
    OUTLINED_FUNCTION_75_7();
    sub_21726A498(v42);
    OUTLINED_FUNCTION_0_56();
    v38 = v1;
LABEL_15:
    sub_2173E3C54(v38, v37);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_5_40();
    sub_2173E71A4(v3, v39);
    sub_2171F5110(v39 + *(v4 + 32), v40, &qword_27CB24340, &unk_2177650B0);
    if (v41 == 1)
    {
      OUTLINED_FUNCTION_2_55();
      sub_2173E3C54(v39, v36);
      v33 = &qword_27CB24340;
      v34 = &unk_2177650B0;
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_50_11();
    OUTLINED_FUNCTION_43_8();
    sub_217388F30();
    OUTLINED_FUNCTION_75_7();
    sub_21726A258(v42);
    OUTLINED_FUNCTION_2_55();
    v38 = v39;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_6_36();
  v30 = OUTLINED_FUNCTION_45_4();
  sub_2173E71A4(v30, v31);
  sub_2171F5110(v0 + *(v11 + 32), v40, &qword_27CB24348, &unk_21775D520);
  if (v41 != 1)
  {

    OUTLINED_FUNCTION_50_11();
    OUTLINED_FUNCTION_43_8();
    sub_217388E88();
    OUTLINED_FUNCTION_75_7();
    sub_21726A2AC(v42);
    OUTLINED_FUNCTION_3_51();
    v38 = v0;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_51();
  sub_2173E3C54(v0, v32);
  v33 = &qword_27CB24348;
  v34 = &unk_21775D520;
LABEL_11:
  sub_2171F0738(v40, v33, v34);
LABEL_16:
  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2173E5A30(uint64_t a1)
{
  v2 = sub_2173E7150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2173E5A6C(uint64_t a1)
{
  v2 = sub_2173E7150();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudRecentlyPlayedMusicItem.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v5 = v4;
  v6 = sub_217752B38();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v69 = v8;
  v70 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7, v11);
  OUTLINED_FUNCTION_81();
  v68 = v12;
  v13 = OUTLINED_FUNCTION_206();
  v14 = type metadata accessor for CloudStation(v13);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_81();
  v67 = v19;
  v20 = OUTLINED_FUNCTION_206();
  v21 = type metadata accessor for CloudPlaylist(v20);
  v22 = OUTLINED_FUNCTION_45_0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  OUTLINED_FUNCTION_11_2();
  v26 = type metadata accessor for CloudAlbum(0);
  v27 = OUTLINED_FUNCTION_45_0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27498, &unk_21776A5E0);
  OUTLINED_FUNCTION_0_0(v34);
  v71 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v38, v39);
  OUTLINED_FUNCTION_31_12();
  v40 = type metadata accessor for CloudRecentlyPlayedMusicItem();
  v41 = OUTLINED_FUNCTION_43(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41, v44);
  OUTLINED_FUNCTION_8_4();
  v45 = *(v5 + 32);
  v79 = v5;
  __swift_project_boxed_opaque_existential_1(v5, *(v5 + 24));
  sub_2173E7150();
  sub_2177532C8();
  if (!v0)
  {
    v72 = v33;
    sub_21733BE84();
    sub_217752EA8();
    v66 = v3;
    v47 = v74;
    v46 = v75;
    v5 = v76;
    if (qword_280BE7F08 != -1)
    {
      swift_once();
    }

    if (static Array<A>.~= infix(_:_:)(off_280BE7F10, &v74))
    {
      goto LABEL_14;
    }

    if (qword_280BE5740 != -1)
    {
      swift_once();
    }

    v48 = qword_280BE5748 == v47 && unk_280BE5750 == v46;
    if (v48 || (sub_217753058() & 1) != 0)
    {
LABEL_14:

      OUTLINED_FUNCTION_104_6();
      CloudAlbum.init(from:)();
      (*(v71 + 8))(v66, v34);
      OUTLINED_FUNCTION_4_53();
      sub_2173E71A4(v72, v2);
    }

    else
    {
      if (qword_280BE4610 != -1)
      {
        swift_once();
      }

      v74 = v47;
      v75 = v46;
      v76 = v5;
      if (static Array<A>.~= infix(_:_:)(off_280BE4618[0], &v74))
      {
        goto LABEL_26;
      }

      v73 = v46;
      if (qword_280BE4788 != -1)
      {
        swift_once();
      }

      v51 = qword_280BE4790 == v47 && *algn_280BE4798 == v46;
      if (v51 || (sub_217753058() & 1) != 0)
      {
LABEL_26:

        OUTLINED_FUNCTION_104_6();
        CloudPlaylist.init(from:)();
        v52 = OUTLINED_FUNCTION_27_1();
        v53(v52);
        OUTLINED_FUNCTION_6_36();
        sub_2173E71A4(v1, v2);
      }

      else
      {
        if (qword_280BE4DA0 != -1)
        {
          swift_once();
        }

        v54 = v47;
        v74 = v47;
        v75 = v73;
        v76 = v5;
        if (!static Array<A>.~= infix(_:_:)(off_280BE4DA8, &v74))
        {
          v57 = v79[4];
          __swift_project_boxed_opaque_existential_1(v79, v79[3]);
          sub_217753298();
          v74 = 0;
          v75 = 0xE000000000000000;
          sub_217752AA8();
          MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177ADC50);
          v77 = 34;
          v78 = 0xE100000000000000;
          MEMORY[0x21CEA23B0](v54, v73);
          MEMORY[0x21CEA23B0](34, 0xE100000000000000);

          MEMORY[0x21CEA23B0](v77, v78);

          MEMORY[0x21CEA23B0](0xD00000000000002FLL, 0x80000002177ADC70);
          sub_217752B08();
          v58 = sub_217752B48();
          swift_allocError();
          v60 = v59;
          v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
          *v60 = v40;
          (*(v69 + 16))(v60 + v61, v68, v70);
          v62 = *(*(v58 - 8) + 104);
          v63 = v58;
          v5 = v79;
          v62(v60, *MEMORY[0x277D84160], v63);
          swift_willThrow();
          (*(v69 + 8))(v68, v70);
          v64 = OUTLINED_FUNCTION_27_1();
          v65(v64);
          goto LABEL_3;
        }

        OUTLINED_FUNCTION_104_6();
        CloudStation.init(from:)();
        v55 = OUTLINED_FUNCTION_27_1();
        v56(v55);
        OUTLINED_FUNCTION_5_40();
        sub_2173E71A4(v67, v2);
      }
    }

    swift_storeEnumTagMultiPayload();
    v49 = OUTLINED_FUNCTION_47_2();
    sub_2173E71A4(v49, v50);
  }

LABEL_3:
  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudRecentlyPlayedMusicItem.encode(to:)()
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
  v23 = type metadata accessor for CloudRecentlyPlayedMusicItem();
  v24 = OUTLINED_FUNCTION_43(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_1_52();
  v28 = OUTLINED_FUNCTION_45_4();
  sub_2173E7200(v28, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2173E71A4(v3, v12);
      CloudStation.encode(to:)(v0);
      v31 = v12;
      v32 = type metadata accessor for CloudStation;
      return sub_2173E3C54(v31, v32);
    }

    OUTLINED_FUNCTION_24_21();
    sub_2173E71A4(v3, v1);
    CloudPlaylist.encode(to:)();
    v31 = v1;
  }

  else
  {
    v12 = type metadata accessor for CloudAlbum;
    sub_2173E71A4(v3, v2);
    CloudAlbum.encode(to:)();
    v31 = v2;
  }

  v32 = v12;
  return sub_2173E3C54(v31, v32);
}

void RecentlyPlayedMusicItem.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  v170 = v0;
  v171 = v1;
  v3 = v2;
  v172 = v4;
  v6 = v5;
  v174 = v7;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  v8 = OUTLINED_FUNCTION_43(v160);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_6_1();
  v161 = v12 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v162 = &v152 - v16;
  v17 = OUTLINED_FUNCTION_206();
  v18 = type metadata accessor for CloudStation(v17);
  v19 = OUTLINED_FUNCTION_45_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_81();
  v165 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  v25 = OUTLINED_FUNCTION_43(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  OUTLINED_FUNCTION_6_1();
  v159 = v29 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v152 - v33;
  v35 = type metadata accessor for CloudPlaylist(0);
  v36 = OUTLINED_FUNCTION_45_0(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  OUTLINED_FUNCTION_81();
  v164 = v40;
  v173 = v3;
  v169 = *(v3 - 8);
  v41 = *(v169 + 64);
  MEMORY[0x28223BE20](v42, v43);
  OUTLINED_FUNCTION_81();
  v167 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  v46 = OUTLINED_FUNCTION_43(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46, v49);
  OUTLINED_FUNCTION_6_1();
  v158 = v50 - v51;
  MEMORY[0x28223BE20](v52, v53);
  v55 = &v152 - v54;
  v56 = type metadata accessor for CloudAlbum(0);
  v57 = OUTLINED_FUNCTION_45_0(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57, v60);
  OUTLINED_FUNCTION_81();
  v163 = v61;
  OUTLINED_FUNCTION_206();
  v62 = type metadata accessor for CloudRecentlyPlayedMusicItem();
  v63 = OUTLINED_FUNCTION_43(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63, v66);
  OUTLINED_FUNCTION_6_1();
  v69 = v67 - v68;
  MEMORY[0x28223BE20](v70, v71);
  v73 = &v152 - v72;
  OUTLINED_FUNCTION_26_22();
  v166 = v6;
  sub_2173E7200(v6, v73);
  v168 = v73;
  sub_2173E7200(v73, v69);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_6_36();
      v165 = v75;
      v76 = v164;
      sub_2173E71A4(v69, v164);
      sub_2173E7200(v76, v34);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257C0, &qword_21775D8A8);
      v78 = v77[10];
      v79 = v34;
      v80 = v166;
      v81 = v166 + v77[9];
      v82 = *v81;
      v161 = *(v81 + 8);
      v83 = v161;
      LODWORD(v155) = *(v81 + 16);
      v84 = v166 + v78;
      v85 = *(v166 + v78);
      v86 = *(v84 + 8);
      v156 = v82;
      v157 = v85;
      v158 = v86;
      v154 = v77[11];
      memcpy(v176, (v166 + v154), 0x180uLL);
      v87 = v77[13];
      v160 = *(v166 + v77[12]);
      v88 = v160;
      v89 = *(v166 + v87);
      v90 = *(v166 + v77[14]);
      v91 = *(v166 + v77[15]);
      v162 = v90;
      v163 = v91;
      v92 = v79 + v24[9];
      *v92 = v156;
      *(v92 + 8) = v83;
      *(v92 + 16) = v155;
      v93 = (v79 + v24[10]);
      *v93 = v157;
      v93[1] = v86;
      memcpy((v79 + v24[11]), (v80 + v154), 0x180uLL);
      *(v79 + v24[12]) = v88;
      *(v79 + v24[13]) = v89;
      *(v79 + v24[14]) = v90;
      *(v79 + v24[15]) = v91;
      sub_2171F5110(v79, v159, &qword_27CB24790, &unk_21775A220);
      v94 = OUTLINED_FUNCTION_44_12();
      v95(v94, v172, v173);
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F5110(v176, v175, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      Playlist.init<A>(_:configuration:sharedRelatedItemStore:)();
      v96 = *(v90 + 8);
      v97 = OUTLINED_FUNCTION_135();
      v98(v97);
      sub_2171F0738(v80, &qword_27CB257C0, &qword_21775D8A8);
      sub_2171F0738(v79, &qword_27CB24790, &unk_21775A220);
      sub_2173E3C54(v164, v165);
      OUTLINED_FUNCTION_13_27();
      sub_2173E3C54(v168, v99);
      OUTLINED_FUNCTION_15_28();
      v101 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_5_40();
      v164 = v126;
      v127 = v165;
      sub_2173E71A4(v69, v165);
      v128 = v162;
      sub_2173E7200(v127, v162);
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257C0, &qword_21775D8A8);
      v130 = v129[10];
      v131 = v166;
      v132 = v166 + v129[9];
      v133 = *v132;
      v158 = *(v132 + 8);
      v134 = v158;
      v153 = *(v132 + 16);
      v135 = v166 + v130;
      v136 = *(v166 + v130);
      v137 = *(v135 + 8);
      v154 = v133;
      v155 = v136;
      v156 = v137;
      v152 = v129[11];
      memcpy(v176, (v166 + v152), 0x180uLL);
      v138 = v129[13];
      v157 = *(v166 + v129[12]);
      v139 = v157;
      v140 = *(v166 + v138);
      v141 = v129[15];
      v159 = *(v166 + v129[14]);
      v142 = v159;
      v163 = *(v166 + v141);
      v143 = v163;
      v144 = v160;
      v145 = v128 + v160[9];
      *v145 = v154;
      *(v145 + 8) = v134;
      *(v145 + 16) = v153;
      v146 = (v128 + v144[10]);
      *v146 = v155;
      v146[1] = v137;
      memcpy((v128 + v144[11]), (v131 + v152), 0x180uLL);
      *(v128 + v144[12]) = v139;
      *(v128 + v144[13]) = v140;
      *(v128 + v144[14]) = v142;
      *(v128 + v144[15]) = v143;
      sub_2171F5110(v128, v161, &qword_27CB24738, &qword_217758CC0);
      v147 = OUTLINED_FUNCTION_44_12();
      v149 = v172;
      v148 = v173;
      v150(v147, v172, v173);
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F5110(v176, v175, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      Station.init<A>(_:configuration:sharedRelatedItemStore:)();
      (*(v139 + 8))(v149, v148);
      sub_2171F0738(v131, &qword_27CB257C0, &qword_21775D8A8);
      sub_2171F0738(v128, &qword_27CB24738, &qword_217758CC0);
      sub_2173E3C54(v165, v164);
      OUTLINED_FUNCTION_13_27();
      sub_2173E3C54(v168, v151);
      OUTLINED_FUNCTION_15_28();
      v101 = 2;
    }

    *(v100 + 56) = v101;
  }

  else
  {
    OUTLINED_FUNCTION_4_53();
    v165 = v102;
    v103 = v163;
    sub_2173E71A4(v69, v163);
    sub_2173E7200(v103, v55);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257C0, &qword_21775D8A8);
    v105 = v104[10];
    v106 = v166;
    v107 = v166 + v104[9];
    v108 = *v107;
    v161 = *(v107 + 8);
    v109 = v161;
    LODWORD(v155) = *(v107 + 16);
    v110 = *(v166 + v105 + 8);
    v159 = *(v166 + v105);
    v156 = v108;
    v157 = v110;
    v111 = v104[11];
    memcpy(v176, (v166 + v111), 0x180uLL);
    v112 = v104[13];
    v160 = *(v166 + v104[12]);
    v113 = v160;
    v114 = *(v166 + v112);
    v115 = v104[15];
    v162 = *(v166 + v104[14]);
    v116 = v162;
    v164 = *(v166 + v115);
    v117 = v164;
    v118 = &v55[v45[9]];
    *v118 = v156;
    *(v118 + 1) = v109;
    v118[16] = v155;
    v119 = &v55[v45[10]];
    v120 = v157;
    *v119 = v159;
    *(v119 + 1) = v120;
    memcpy(&v55[v45[11]], (v106 + v111), 0x180uLL);
    *&v55[v45[12]] = v113;
    *&v55[v45[13]] = v114;
    *&v55[v45[14]] = v116;
    *&v55[v45[15]] = v117;
    sub_2171F5110(v55, v158, &qword_27CB247F0, &qword_21775D360);
    v121 = v169;
    v123 = v172;
    v122 = v173;
    (*(v169 + 16))(v167, v172, v173);
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F5110(v176, v175, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    Album.init<A>(_:configuration:sharedRelatedItemStore:)();
    (*(v121 + 8))(v123, v122);
    sub_2171F0738(v106, &qword_27CB257C0, &qword_21775D8A8);
    sub_2171F0738(v55, &qword_27CB247F0, &qword_21775D360);
    sub_2173E3C54(v163, v165);
    OUTLINED_FUNCTION_13_27();
    sub_2173E3C54(v168, v124);
    OUTLINED_FUNCTION_15_28();
    *(v125 + 56) = 0;
  }

  OUTLINED_FUNCTION_13();
}

void RecentlyPlayedMusicItem.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  v82 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  OUTLINED_FUNCTION_43(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v79 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  OUTLINED_FUNCTION_43(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v79 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  OUTLINED_FUNCTION_43(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v79 - v23;
  sub_21733C220(v0, &v84);
  if (v85)
  {
    if (v85 == 1)
    {
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_40_1();
      Playlist.convertToCloudResource<A>(configuration:)();
      sub_21726B8C4(v83);
      OUTLINED_FUNCTION_6_36();
      sub_2173E71A4(v17, v3);
      type metadata accessor for CloudRecentlyPlayedMusicItem();
      swift_storeEnumTagMultiPayload();
      v25 = v11[10];
      v26 = &v17[v11[9]];
      v27 = *v26;
      v28 = *(v26 + 1);
      v29 = v26[16];
      v30 = *&v17[v11[12]];
      v81 = v11[11];
      v82 = v30;
      v31 = v11[14];
      v80 = *&v17[v11[13]];
      v33 = *&v17[v25];
      v32 = *&v17[v25 + 8];
      v34 = *&v17[v31];
      v35 = *&v17[v11[15]];
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257C0, &qword_21775D8A8);
      v37 = OUTLINED_FUNCTION_79_6(v36);
      *v38 = v27;
      *(v38 + 8) = v28;
      *(v38 + 16) = v29;
      v39 = (v3 + *(v37 + 40));
      *v39 = v33;
      v39[1] = v32;
      v40 = OUTLINED_FUNCTION_41_14(v37);
      memcpy(v40, &v17[v41], 0x180uLL);
      OUTLINED_FUNCTION_18_0();
      *(v3 + v42) = v34;
      *(v3 + *(v0 + 60)) = v35;
    }

    else
    {
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_40_1();
      Station.convertToCloudResource<A>(configuration:)();
      sub_217283DC8(v83);
      OUTLINED_FUNCTION_5_40();
      sub_2173E71A4(v10, v3);
      type metadata accessor for CloudRecentlyPlayedMusicItem();
      swift_storeEnumTagMultiPayload();
      v61 = v4[10];
      v62 = &v10[v4[9]];
      v63 = *v62;
      v64 = *(v62 + 1);
      v65 = v62[16];
      v66 = *&v10[v4[12]];
      v81 = v4[11];
      v82 = v66;
      v67 = v4[14];
      v80 = *&v10[v4[13]];
      v69 = *&v10[v61];
      v68 = *&v10[v61 + 8];
      v70 = *&v10[v67];
      v71 = *&v10[v4[15]];
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257C0, &qword_21775D8A8);
      v73 = OUTLINED_FUNCTION_79_6(v72);
      *v74 = v63;
      *(v74 + 8) = v64;
      *(v74 + 16) = v65;
      v75 = (v3 + *(v73 + 40));
      *v75 = v69;
      v75[1] = v68;
      v76 = OUTLINED_FUNCTION_41_14(v73);
      memcpy(v76, &v10[v77], 0x180uLL);
      OUTLINED_FUNCTION_18_0();
      *(v3 + v78) = v70;
      *(v3 + *(v0 + 60)) = v71;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_40_1();
    Album.convertToCloudResource<A>(configuration:)();
    sub_21725CE44(v83);
    OUTLINED_FUNCTION_4_53();
    sub_2173E71A4(v24, v3);
    type metadata accessor for CloudRecentlyPlayedMusicItem();
    swift_storeEnumTagMultiPayload();
    v43 = v18[10];
    v44 = &v24[v18[9]];
    v45 = *v44;
    v46 = *(v44 + 1);
    v47 = v44[16];
    v48 = *&v24[v18[12]];
    v81 = v18[11];
    v82 = v48;
    v49 = v18[14];
    v80 = *&v24[v18[13]];
    v51 = *&v24[v43];
    v50 = *&v24[v43 + 8];
    v52 = *&v24[v49];
    v53 = *&v24[v18[15]];
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257C0, &qword_21775D8A8);
    v55 = OUTLINED_FUNCTION_79_6(v54);
    *v56 = v45;
    *(v56 + 8) = v46;
    *(v56 + 16) = v47;
    v57 = (v3 + *(v55 + 40));
    *v57 = v51;
    v57[1] = v50;
    v58 = OUTLINED_FUNCTION_41_14(v55);
    memcpy(v58, &v24[v59], 0x180uLL);
    OUTLINED_FUNCTION_18_0();
    *(v3 + v60) = v52;
    *(v3 + *(v0 + 60)) = v53;
  }

  OUTLINED_FUNCTION_13();
}

unint64_t sub_2173E7150()
{
  result = qword_27CB274A0;
  if (!qword_27CB274A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB274A0);
  }

  return result;
}

uint64_t sub_2173E71A4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_101();
  v6 = v5(v4);
  OUTLINED_FUNCTION_43(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2173E7200(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_101();
  v6 = v5(v4);
  OUTLINED_FUNCTION_43(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

unint64_t sub_2173E7260()
{
  result = qword_27CB274A8;
  if (!qword_27CB274A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB274A8);
  }

  return result;
}

unint64_t sub_2173E72B8()
{
  result = qword_27CB274B0;
  if (!qword_27CB274B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB274B0);
  }

  return result;
}

unint64_t sub_2173E7310()
{
  result = qword_27CB274B8;
  if (!qword_27CB274B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB274B8);
  }

  return result;
}

unint64_t sub_2173E7368()
{
  result = qword_27CB274C0;
  if (!qword_27CB274C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB274C0);
  }

  return result;
}

unint64_t sub_2173E73C0()
{
  result = qword_27CB274C8;
  if (!qword_27CB274C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB274C8);
  }

  return result;
}

unint64_t sub_2173E7418()
{
  result = qword_27CB274D0;
  if (!qword_27CB274D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB274D0);
  }

  return result;
}

unint64_t sub_2173E7470()
{
  result = qword_27CB274D8;
  if (!qword_27CB274D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB274D8);
  }

  return result;
}

unint64_t sub_2173E74C8()
{
  result = qword_27CB274E0;
  if (!qword_27CB274E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB274E0);
  }

  return result;
}

unint64_t sub_2173E7520()
{
  result = qword_27CB274E8;
  if (!qword_27CB274E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB274E8);
  }

  return result;
}

unint64_t sub_2173E7578()
{
  result = qword_27CB274F0;
  if (!qword_27CB274F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB274F0);
  }

  return result;
}

unint64_t sub_2173E75D0()
{
  result = qword_27CB274F8;
  if (!qword_27CB274F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB274F8);
  }

  return result;
}

unint64_t sub_2173E7628()
{
  result = qword_27CB27500;
  if (!qword_27CB27500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27500);
  }

  return result;
}

uint64_t sub_2173E76E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CloudRecentlyPlayedMusicItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2173E7728()
{
  result = type metadata accessor for CloudAlbum(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CloudPlaylist(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for CloudStation(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

_BYTE *sub_2173E77F0(_BYTE *result, int a2, int a3)
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

unint64_t sub_2173E78E0()
{
  result = qword_27CB27528;
  if (!qword_27CB27528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27528);
  }

  return result;
}

unint64_t sub_2173E7938()
{
  result = qword_27CB27530;
  if (!qword_27CB27530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27530);
  }

  return result;
}

unint64_t sub_2173E7990()
{
  result = qword_27CB27538;
  if (!qword_27CB27538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27538);
  }

  return result;
}

unint64_t sub_2173E79E8()
{
  result = qword_27CB27540;
  if (!qword_27CB27540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27540);
  }

  return result;
}

unint64_t sub_2173E7A40()
{
  result = qword_27CB27548;
  if (!qword_27CB27548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27548);
  }

  return result;
}

unint64_t sub_2173E7A98()
{
  result = qword_27CB27550;
  if (!qword_27CB27550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27550);
  }

  return result;
}

unint64_t sub_2173E7AF0()
{
  result = qword_27CB27558;
  if (!qword_27CB27558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27558);
  }

  return result;
}

unint64_t sub_2173E7B48()
{
  result = qword_27CB27560;
  if (!qword_27CB27560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27560);
  }

  return result;
}

unint64_t sub_2173E7BA0()
{
  result = qword_27CB27568;
  if (!qword_27CB27568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27568);
  }

  return result;
}

unint64_t sub_2173E7BF8()
{
  result = qword_27CB27570;
  if (!qword_27CB27570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27570);
  }

  return result;
}

unint64_t sub_2173E7C50()
{
  result = qword_27CB27578;
  if (!qword_27CB27578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27578);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_15_28()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  *v2 = *(v0 + 184);
  *(v2 + 16) = v1;
  result = *(v0 + 216);
  *(v2 + 32) = result;
  *(v2 + 48) = *(v0 + 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_14(uint64_t a1)
{
  result = v1 + *(a1 + 44);
  v4 = *(v2 - 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_8()
{
  result = v0 + 360;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v1 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_49_14()
{

  return sub_217752D08();
}

void *OUTLINED_FUNCTION_50_11()
{

  return memcpy((v0 + 360), (v0 + 40), 0x140uLL);
}

void OUTLINED_FUNCTION_52_15()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 - 72);
}

void sub_2173E7DEC(uint64_t a1@<X8>)
{
  if (qword_280BE8C28 != -1)
  {
    OUTLINED_FUNCTION_98_11();
  }

  v2 = qword_280BE8C30;
  v3 = objc_opt_self();

  v4 = [v3 mainBundle];
  v5 = NSBundle.isMusicApp.getter();

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v2;
  *(a1 + 22) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = MEMORY[0x277D84F90];
  *(a1 + 48) = MEMORY[0x277D84F90];
  *(a1 + 56) = v6;
  *(a1 + 64) = v6;
  *(a1 + 72) = v5;
}

uint64_t sub_2173E7EA4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1249(v0);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2173E7F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_173_0();
  a18 = v21;
  a19 = v22;
  OUTLINED_FUNCTION_209();
  a17 = v20;
  static MusicAuthorization.currentStatus.getter(&a12);
  switch(a12)
  {
    case 1:
      OUTLINED_FUNCTION_903();
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_611();
      goto LABEL_4;
    case 3:
      OUTLINED_FUNCTION_1527();
      goto LABEL_9;
    default:
LABEL_4:
      OUTLINED_FUNCTION_655();
      OUTLINED_FUNCTION_1328();
      if (v19)
      {
LABEL_9:
        OUTLINED_FUNCTION_902();
        sub_217487780(&type metadata for Track, 32, sub_217471690);
        OUTLINED_FUNCTION_1149();
        v20[51] = v34;
        v20[2] = v35;
        OUTLINED_FUNCTION_1488();
        v36 = OUTLINED_FUNCTION_1027();
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
        OUTLINED_FUNCTION_343(v37);
        OUTLINED_FUNCTION_1300(COERCE_DOUBLE(1107296256));
        OUTLINED_FUNCTION_246();
        v20[13] = v38;
        v20[14] = v36;
        OUTLINED_FUNCTION_1530(v39, sel_performWithCompletionHandler_);
        OUTLINED_FUNCTION_1385();

        return MEMORY[0x282200938](v40);
      }

      else
      {
        sub_21728FC9C();
        OUTLINED_FUNCTION_955();
        v23 = swift_allocError();
        OUTLINED_FUNCTION_714(v23, v24);
        OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_1385();

        return v26(v25, v26, v27, v28, v29, v30, v31, v32);
      }
  }
}

uint64_t sub_2173E80A4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 416) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2173E85F0(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  memcpy(v2 + 23, v1, 0x49uLL);

  return MEMORY[0x2822009F8](sub_2173E8664, 0, 0);
}

uint64_t sub_2173E8664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_173_0();
  a18 = v21;
  a19 = v22;
  OUTLINED_FUNCTION_209();
  a17 = v20;
  static MusicAuthorization.currentStatus.getter(&a12);
  switch(a12)
  {
    case 1:
      OUTLINED_FUNCTION_903();
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_611();
      goto LABEL_4;
    case 3:
      OUTLINED_FUNCTION_1527();
      goto LABEL_9;
    default:
LABEL_4:
      OUTLINED_FUNCTION_655();
      OUTLINED_FUNCTION_1328();
      if (v19)
      {
LABEL_9:
        OUTLINED_FUNCTION_902();
        sub_217487780(&type metadata for Playlist, 17, sub_2174719C0);
        OUTLINED_FUNCTION_1149();
        v20[51] = v34;
        v20[2] = v35;
        OUTLINED_FUNCTION_1488();
        v36 = OUTLINED_FUNCTION_1027();
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
        OUTLINED_FUNCTION_343(v37);
        OUTLINED_FUNCTION_1300(COERCE_DOUBLE(1107296256));
        OUTLINED_FUNCTION_246();
        v20[13] = v38;
        v20[14] = v36;
        OUTLINED_FUNCTION_1530(v39, sel_performWithCompletionHandler_);
        OUTLINED_FUNCTION_1385();

        return MEMORY[0x282200938](v40);
      }

      else
      {
        sub_21728FC9C();
        OUTLINED_FUNCTION_955();
        v23 = swift_allocError();
        OUTLINED_FUNCTION_714(v23, v24);
        OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_1385();

        return v26(v25, v26, v27, v28, v29, v30, v31, v32);
      }
  }
}

uint64_t sub_2173E8808()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 416) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2173E8D88()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1249(v0);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2173E8DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_173_0();
  a18 = v21;
  a19 = v22;
  OUTLINED_FUNCTION_209();
  a17 = v20;
  static MusicAuthorization.currentStatus.getter(&a12);
  switch(a12)
  {
    case 1:
      OUTLINED_FUNCTION_903();
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_611();
      goto LABEL_4;
    case 3:
      OUTLINED_FUNCTION_1527();
      goto LABEL_9;
    default:
LABEL_4:
      OUTLINED_FUNCTION_655();
      OUTLINED_FUNCTION_1328();
      if (v19)
      {
LABEL_9:
        OUTLINED_FUNCTION_902();
        sub_217487780(&type metadata for Album, 0, sub_217472354);
        OUTLINED_FUNCTION_1149();
        v20[51] = v34;
        v20[2] = v35;
        OUTLINED_FUNCTION_1488();
        v36 = OUTLINED_FUNCTION_1027();
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
        OUTLINED_FUNCTION_343(v37);
        OUTLINED_FUNCTION_1300(COERCE_DOUBLE(1107296256));
        OUTLINED_FUNCTION_246();
        v20[13] = v38;
        v20[14] = v36;
        OUTLINED_FUNCTION_1530(v39, sel_performWithCompletionHandler_);
        OUTLINED_FUNCTION_1385();

        return MEMORY[0x282200938](v40);
      }

      else
      {
        sub_21728FC9C();
        OUTLINED_FUNCTION_955();
        v23 = swift_allocError();
        OUTLINED_FUNCTION_714(v23, v24);
        OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_1385();

        return v26(v25, v26, v27, v28, v29, v30, v31, v32);
      }
  }
}

uint64_t sub_2173E8F88()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 416) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2173E9504()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1249(v0);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2173E9560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_173_0();
  a18 = v21;
  a19 = v22;
  OUTLINED_FUNCTION_209();
  a17 = v20;
  static MusicAuthorization.currentStatus.getter(&a12);
  switch(a12)
  {
    case 1:
      OUTLINED_FUNCTION_903();
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_611();
      goto LABEL_4;
    case 3:
      OUTLINED_FUNCTION_1527();
      goto LABEL_9;
    default:
LABEL_4:
      OUTLINED_FUNCTION_655();
      OUTLINED_FUNCTION_1328();
      if (v19)
      {
LABEL_9:
        OUTLINED_FUNCTION_902();
        sub_217487780(&type metadata for MusicVideo, 14, sub_217472024);
        OUTLINED_FUNCTION_1149();
        v20[51] = v34;
        v20[2] = v35;
        OUTLINED_FUNCTION_1488();
        v36 = OUTLINED_FUNCTION_1027();
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
        OUTLINED_FUNCTION_343(v37);
        OUTLINED_FUNCTION_1300(COERCE_DOUBLE(1107296256));
        OUTLINED_FUNCTION_246();
        v20[13] = v38;
        v20[14] = v36;
        OUTLINED_FUNCTION_1530(v39, sel_performWithCompletionHandler_);
        OUTLINED_FUNCTION_1385();

        return MEMORY[0x282200938](v40);
      }

      else
      {
        sub_21728FC9C();
        OUTLINED_FUNCTION_955();
        v23 = swift_allocError();
        OUTLINED_FUNCTION_714(v23, v24);
        OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_1385();

        return v26(v25, v26, v27, v28, v29, v30, v31, v32);
      }
  }
}

uint64_t sub_2173E9704()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 416) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2173E9C84()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_209();
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  swift_willThrow();
  sub_21728FC9C();
  OUTLINED_FUNCTION_955();
  swift_allocError();
  *v3 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_1385();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_2173E9D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_217204DD0(a1);
  v7 = result;
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x21CEA2E30](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_2174710E4(a2, a3, &qword_27CB27688, &qword_21776B0E8);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2173E9E18(uint64_t a1, uint64_t *a2)
{
  result = sub_217204DD0(a1);
  v5 = 0;
  v23 = a1 & 0xC000000000000001;
  v24 = result;
  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  v22 = a1;
  while (v24 != v5)
  {
    if (v23)
    {
      result = MEMORY[0x21CEA2E30](v5, v22);
      v6 = result;
    }

    else
    {
      if (v5 >= *(v21 + 16))
      {
        goto LABEL_22;
      }

      v6 = *(v22 + 8 * v5 + 32);
    }

    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v7 = *(v6 + 40);
    if (v7)
    {
      v8 = *(v6 + 32);
      v10 = *a2;
      v9 = a2[1];
      v11 = a2[2];
      v12 = *(v9 + 16);
      if (*a2)
      {
        v13 = *(v6 + 40);
        sub_217751DE8();

        sub_2172CA228(v8, v7, v9 + 32, v12, (v10 + 16));
        v15 = v14;
        v17 = v16;

        if (v17)
        {
          goto LABEL_10;
        }

LABEL_12:
        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_23;
        }

        if (v15 >= *(v11 + 16))
        {
          goto LABEL_24;
        }

        v25 = *(v11 + 8 * v15 + 32);
        sub_217751DE8();
      }

      else
      {
        v15 = sub_2172CA130(*(v6 + 32), *(v6 + 40), v9 + 32, *(v9 + 16));
        v19 = v18;
        result = sub_217751DE8();
        if ((v19 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_10:
        v25 = MEMORY[0x277D84F90];
      }

      MEMORY[0x21CEA25D0](v20);
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2177522F8();
      }

      sub_217752378();
      sub_217487168(v25, v8, v7);
    }

    ++v5;
  }

  return result;
}

uint64_t sub_2173EA010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_217204DD0(a1);
  v7 = result;
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x21CEA2E30](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_2174710E4(a2, a3, &qword_27CB27F68, &qword_21776BE90);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2173EA108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_217204DD0(a1);
  v7 = result;
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x21CEA2E30](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_2174710E4(a2, a3, &qword_27CB27F80, &qword_21776BEA8);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2173EA200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_217204DD0(a1);
  v7 = result;
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x21CEA2E30](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_217471288(a2, a3, &qword_27CB27BA0, &qword_21776B870);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2173EA2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_217204DD0(a1);
  v7 = result;
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x21CEA2E30](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_217471288(a2, a3, &qword_27CB27B70, &qword_21776B840);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2173EA4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unsigned __int8 a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v10 = a5;
  v86 = a6;
  v103 = a5;
  v11 = a5 >> 8;
  v102 = BYTE1(a5);
  v12 = a5 >> 16;
  v101 = BYTE2(a5);
  v13 = a5 >> 24;
  v100 = BYTE3(a5);
  v14 = HIDWORD(a5);
  v99 = BYTE4(a5);
  v15 = a5 >> 40;
  v98 = BYTE5(a5);
  v16 = HIWORD(a5);
  v97 = BYTE6(a5);
  v17 = HIBYTE(a5);
  v96 = HIBYTE(a5);
  v18 = a6 & 1;
  v95 = a6;
  v19 = dynamic_cast_existential_1_conditional(a7);
  if (v19)
  {
    v86 = v10;
    v87 = v11;
    v88 = v12;
    v89 = v13;
    v90 = v14;
    v91 = v15;
    v92 = v16;
    v93 = v17;
    v94 = v18;
    v21 = v20;
    v22 = (*(v20 + 8))(a1, a2, &v86, v19, v20);
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v34 = 256;
      if (!v102)
      {
        v34 = 0;
      }

      v35 = v34 | v103;
      v36 = 0x10000;
      if (!v101)
      {
        v36 = 0;
      }

      v37 = 0x1000000;
      if (!v100)
      {
        v37 = 0;
      }

      v38 = v35 | v36 | v37;
      v39 = 0x100000000;
      if (!v99)
      {
        v39 = 0;
      }

      v40 = 0x10000000000;
      if (!v98)
      {
        v40 = 0;
      }

      v41 = 0x1000000000000;
      if (!v97)
      {
        v41 = 0;
      }

      v42 = v39 | v40;
      v43 = 0x100000000000000;
      if (!v96)
      {
        v43 = 0;
      }

      a10(a1, a2, v38 | v42 | v41 | v43, v95);
      v86 = v103;
      v87 = v102;
      v88 = v101;
      v89 = v100;
      v90 = v99;
      v91 = v98;
      v92 = v97;
      v93 = v96;
      v94 = v95;
      v23 = (*(v21 + 16))();
    }
  }

  else
  {
    v24 = 256;
    if (((v10 >> 8) & 1) == 0)
    {
      v24 = 0;
    }

    v25 = v24 & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
    v26 = 0x10000;
    if ((v10 & 0x10000) == 0)
    {
      v26 = 0;
    }

    v27 = 0x1000000;
    if ((v10 & 0x1000000) == 0)
    {
      v27 = 0;
    }

    v28 = v25 | v26 | v27;
    v29 = 0x100000000;
    if ((v14 & 1) == 0)
    {
      v29 = 0;
    }

    v30 = 0x10000000000;
    if ((v15 & 1) == 0)
    {
      v30 = 0;
    }

    v31 = 0x1000000000000;
    if ((v16 & 1) == 0)
    {
      v31 = 0;
    }

    v32 = v29 | v30;
    v33 = 0x100000000000000;
    if ((v17 & 1) == 0)
    {
      v33 = 0;
    }

    v23 = a10(a1, a2, v28 | v32 | v31 | v33, v18);
  }

  (*(*v23 + 328))();
  objc_opt_self();
  OUTLINED_FUNCTION_188_2();
  v44 = swift_dynamicCastObjCClass();
  if (v44)
  {
    v45 = v44;
    OUTLINED_FUNCTION_6();
    swift_beginAccess();
    v46 = *(v23 + 16);
    sub_217751DE8();
    v47 = sub_2172146A4(5, v46);

    OUTLINED_FUNCTION_6();
    swift_beginAccess();
    v48 = *(v23 + 72);
    sub_217751DE8();
    v49 = sub_2172146A4(5, v48);

    OUTLINED_FUNCTION_6();
    swift_beginAccess();
    v50 = *(v23 + 48);
    v51 = *(v50 + 16);
    v52 = MEMORY[0x277D84F90];
    if (v51)
    {
      v74 = v49;
      v76 = v47;
      v78 = v45;
      v85 = MEMORY[0x277D84F90];
      sub_217751DE8();
      sub_217752BF8();
      v53 = (v50 + 56);
      do
      {
        v54 = *(v53 - 3);
        v55 = *(v53 - 2);
        v56 = *(v53 - 1);
        v57 = *v53;
        v53 += 32;
        v58 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryRequestPropertyFilter);
        OUTLINED_FUNCTION_44_1();
        sub_217751DE8();
        sub_217751DE8();
        v59 = OUTLINED_FUNCTION_1487();
        sub_217491DD8(v59, v60, v56, v57);
        sub_217752BC8();
        v61 = *(v85 + 16);
        sub_217752C08();
        sub_217752C18();
        sub_217752BD8();
        --v51;
      }

      while (v51);

      v52 = v85;
      v47 = v76;
      v45 = v78;
      v49 = v74;
    }

    OUTLINED_FUNCTION_6();
    swift_beginAccess();
    v62 = *(v23 + 24);
    OUTLINED_FUNCTION_6();
    swift_beginAccess();
    v63 = *(v23 + 32);
    if (sub_217204DD0(v47))
    {
      sub_217504048(0, (v47 & 0xC000000000000001) == 0, v47);
      if ((v47 & 0xC000000000000001) != 0)
      {
        sub_217751DE8();
        sub_217751DE8();
        v65 = MEMORY[0x21CEA2E30](0, v47);
      }

      else
      {
        v64 = *(v47 + 32);
        sub_217751DE8();
        sub_217751DE8();
        v65 = v64;
      }

      v66 = v65;
      v67 = [v65 modelObjectType];
    }

    else
    {
      if (!sub_217204DD0(v49))
      {
        sub_217751DE8();
        sub_217751DE8();

        v67 = 0;
        v71 = 1;
        goto LABEL_48;
      }

      sub_217504048(0, (v49 & 0xC000000000000001) == 0, v49);
      if ((v49 & 0xC000000000000001) != 0)
      {
        sub_217751DE8();
        sub_217751DE8();
        v69 = MEMORY[0x21CEA2E30](0, v49);
      }

      else
      {
        v68 = *(v49 + 32);
        sub_217751DE8();
        sub_217751DE8();
        v69 = v68;
      }

      v70 = v69;
      v67 = [v69 modelObjectType];
    }

    v71 = 0;
LABEL_48:
    OUTLINED_FUNCTION_6();
    swift_beginAccess();
    v72 = *(v23 + 40);
    OUTLINED_FUNCTION_6();
    swift_beginAccess();
    v83 = *(v23 + 56);
    v84 = *(v23 + 64);
    sub_217751DE8();

    *a9 = a8;
    *(a9 + 8) = v45;
    *(a9 + 16) = v62;
    *(a9 + 24) = v63;
    *(a9 + 32) = v47;
    *(a9 + 40) = v49;
    *(a9 + 48) = v67;
    *(a9 + 56) = v71;
    *(a9 + 64) = v72;
    *(a9 + 72) = v83;
    *(a9 + 80) = v84;
    *(a9 + 88) = a3;
    *(a9 + 96) = a4;
    *(a9 + 104) = v52;
    return sub_217751DE8();
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_893();
  OUTLINED_FUNCTION_422();
  result = sub_217752D08();
  __break(1u);
  return result;
}

void sub_2173EAB38()
{
  OUTLINED_FUNCTION_12();
  v121 = v1;
  v122 = v0;
  v3 = v2;
  v4 = *v2;
  v125 = v5;
  v126 = v2[4];
  v111 = v2[11];
  v120 = v2[12];
  v118 = v6;
  v119 = v2[13];
  v7 = *(v5 + 16);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    __dst[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_482();
    sub_217275C90();
    v9 = __dst[0];
    v10 = (v7 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      __dst[0] = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      sub_217751DE8();
      if (v14 >= v13 >> 1)
      {
        sub_217275C90();
        v9 = __dst[0];
      }

      *(v9 + 16) = v14 + 1;
      v15 = v9 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v10 += 2;
      --v8;
    }

    while (v8);
  }

  v16 = v3[1];
  v123 = v3;
  v131 = v4;
  if (v16)
  {
    v17 = v3[2];
    v18 = *(v17 + 16);
    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      __dst[0] = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_482();
      sub_217275C90();
      v19 = __dst[0];
      v20 = (v17 + 40);
      do
      {
        v22 = *(v20 - 1);
        v21 = *v20;
        __dst[0] = v19;
        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        sub_217751DE8();
        if (v24 >= v23 >> 1)
        {
          sub_217275C90();
          v19 = __dst[0];
        }

        *(v19 + 16) = v24 + 1;
        v25 = v19 + 16 * v24;
        *(v25 + 32) = v22;
        *(v25 + 40) = v21;
        v20 += 2;
        --v18;
      }

      while (v18);
      v4 = v131;
      v3 = v123;
    }
  }

  else
  {
    v19 = 0;
  }

  v26 = *(v125 + 24);
  v27 = *(v26 + 16);
  v28 = MEMORY[0x277D84F90];
  if (!v27)
  {
    v117 = MEMORY[0x277D84F90];
    if (v16)
    {
      goto LABEL_18;
    }

LABEL_23:
    v138 = v28;
    v139 = v28;
    v37 = v125;
    v4 = *(v125 + 48);
    v36 = v28;
    v38 = v28;
    v128 = *(v125 + 56);
    goto LABEL_26;
  }

  v136 = MEMORY[0x277D84F90];
  sub_217752BF8();
  v29 = *v125;
  v30 = (v26 + 32);
  do
  {
    memcpy(__dst, v30, 0x161uLL);
    LOBYTE(v134) = 5;
    sub_2172B7F78(v29, &v134);
    sub_217752BC8();
    v31 = *(v136 + 16);
    sub_217752C08();
    OUTLINED_FUNCTION_83();
    sub_217752C18();
    sub_217752BD8();
    v30 += 360;
    --v27;
  }

  while (v27);
  v117 = v136;
  v4 = v131;
  v3 = v123;
  v28 = MEMORY[0x277D84F90];
  if (!v16)
  {
    goto LABEL_23;
  }

LABEL_18:
  v32 = v3[3];
  v33 = *(v32 + 16);
  if (v33)
  {
    v136 = v28;
    sub_217752BF8();
    v34 = (v32 + 32);
    do
    {
      memcpy(__dst, v34, 0x161uLL);
      LOBYTE(v134) = 5;
      sub_2172B7F78(v4, &v134);
      sub_217752BC8();
      v35 = *(v136 + 16);
      sub_217752C08();
      OUTLINED_FUNCTION_172_2();
      sub_217752C18();
      sub_217752BD8();
      v34 += 360;
      --v33;
    }

    while (v33);
    v36 = v136;
    v139 = v136;
  }

  else
  {
    v139 = v28;
    v36 = v28;
  }

  v138 = v28;
  v38 = v126;
  sub_217751DE8();
  v128 = 0;
  v37 = v125;
LABEL_26:
  __dst[0] = *(v37 + 32);
  sub_217751DE8();
  sub_217215144(v38);
  v39 = __dst[0];
  v132 = v4;
  if (sub_217204DD0(__dst[0]))
  {
    OUTLINED_FUNCTION_1472();
    if (v41 != v42)
    {
      __break(1u);
      return;
    }

    v43 = 0;
    v127 = v40;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v44 = OUTLINED_FUNCTION_83();
        v45 = MEMORY[0x21CEA2E30](v44);
      }

      else
      {
        v45 = *(v39 + 8 * v43 + 32);
      }

      v46 = v45;
      v47 = [v45 modelObjectType];
      v48 = v128;
      if (v47 != v132)
      {
        v48 = 1;
      }

      if (v48)
      {
        v49 = v46;
        MEMORY[0x21CEA25D0]();
        OUTLINED_FUNCTION_1351(v138);
        if (v50)
        {
          sub_2177522F8();
        }

        OUTLINED_FUNCTION_86();
        sub_217752378();

        v127 = v138;
      }

      else
      {
        v51 = [v46 legacyIdentifierSet];
        MEMORY[0x21CEA25D0]();
        OUTLINED_FUNCTION_1351(v139);
        if (v50)
        {
          sub_2177522F8();
        }

        OUTLINED_FUNCTION_205_0();
        sub_217752378();

        v36 = v139;
      }

      ++v43;
    }

    while (v38 != v43);
  }

  else
  {
    v127 = MEMORY[0x277D84F90];
  }

  v136 = *(v125 + 72);
  v137 = *(v125 + 80);
  v53 = v123[1];
  if (v53)
  {
    v54 = *(v123 + 80);
    v55 = v123[9];
  }

  else
  {
    v54 = 0;
    v55 = 2;
  }

  v134 = v55;
  v135 = v54;
  *&v52.value.includeOnlyDownloadedContent = &v134;
  MusicLibraryFilteringOptions.merging(_:)(v52);
  v114 = LOBYTE(__dst[0]);
  v112 = BYTE1(__dst[0]);
  v113 = BYTE2(__dst[0]);
  v56 = BYTE4(__dst[0]);
  v57 = BYTE5(__dst[0]);
  v58 = BYTE6(__dst[0]);
  v59 = HIBYTE(__dst[0]);
  v115 = BYTE3(__dst[0]);
  v116 = __dst[1];
  if (v128)
  {

    if (v118)
    {
      v60 = *(v118 + 16);
      v61 = v60;
    }

    else
    {
      v60 = 0;
    }

    v76 = *(v125 + 8);
    v77 = *(v125 + 64);
    v78 = *(v125 + 96);
    v130 = *v125;
    v133 = *(v125 + 88);
    v79 = *(v125 + 104);
    objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryRequest);
    v80 = 256;
    if (!v112)
    {
      v80 = 0;
    }

    v81 = v80 | v114;
    v82 = 0x10000;
    if (!v113)
    {
      v82 = 0;
    }

    v83 = 0x1000000;
    if (!v115)
    {
      v83 = 0;
    }

    v84 = v81 | v82 | v83;
    v85 = 0x100000000;
    if (!v56)
    {
      v85 = 0;
    }

    v86 = 0x10000000000;
    if (!v57)
    {
      v86 = 0;
    }

    v87 = 0x1000000000000;
    if (!v58)
    {
      v87 = 0;
    }

    v88 = v85 | v86;
    v89 = 0x100000000000000;
    if (!v59)
    {
      v89 = 0;
    }

    v90 = v84 | v88 | v87 | v89;
    v91 = v76;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2174920E8(v130, v91, v9, v117, v77, v133, v78, v79, v121, v122, v90, v116, v60);
  }

  else
  {
    v110 = BYTE6(__dst[0]);
    v129 = HIBYTE(__dst[0]);
    if (v53)
    {
      v62 = v53;
    }

    if (v19)
    {
      v63 = v19;
    }

    else
    {
      v63 = MEMORY[0x277D84F90];
    }

    v108 = v63;
    v64 = MEMORY[0x277D84F90];
    v65 = *(v125 + 8);
    v66 = *(v125 + 40);
    __dst[0] = v127;
    v107 = v65;
    sub_217751DE8();
    v67 = sub_217751DE8();
    sub_217215144(v67);
    v68 = __dst[0];
    if (v53)
    {
      v64 = v123[5];
      sub_217751DE8();
    }

    v69 = v56;
    v109 = v57;
    __dst[0] = v68;
    sub_217215144(v64);
    v106 = __dst[0];
    if (v53)
    {
      v70 = v123[8];
      v71 = *(v125 + 96);
      v124 = *(v125 + 88);
      v72 = *(v125 + 104);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v73 = v125;
      v74 = v70;
      v75 = v71;
    }

    else
    {
      v111 = 0;
      v120 = 0;
      v124 = *(v125 + 88);
      v72 = *(v125 + 104);
      v73 = v125;
      v119 = MEMORY[0x277D84F90];
      v74 = MEMORY[0x277D84F90];
      v75 = *(v125 + 96);
    }

    sub_217751DE8();
    sub_217751DE8();
    v92 = *(v73 + 64);
    sub_217751DE8();

    if (v118)
    {
      v93 = *(v118 + 16);
      v94 = v93;
    }

    else
    {
      v93 = 0;
    }

    v95 = *v125;
    objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryRequest);
    v96 = 256;
    if (!v112)
    {
      v96 = 0;
    }

    v97 = v96 | v114;
    v98 = 0x10000;
    if (!v113)
    {
      v98 = 0;
    }

    v99 = 0x1000000;
    if (!v115)
    {
      v99 = 0;
    }

    v100 = v97 | v98 | v99;
    v101 = 0x100000000;
    if (!v69)
    {
      v101 = 0;
    }

    v102 = 0x10000000000;
    if (!v109)
    {
      v102 = 0;
    }

    v103 = 0x1000000000000;
    if (!v110)
    {
      v103 = 0;
    }

    v104 = v101 | v102;
    v105 = 0x100000000000000;
    if (!v129)
    {
      v105 = 0;
    }

    sub_217215468(v95, v132, v107, v53, v9, v108, v117, v36, v106, v92, v74, v124, v75, v111, v120, v72, v119, v121, v122, v100 | v104 | v103 | v105, v116, v93);
  }

  OUTLINED_FUNCTION_13();
}