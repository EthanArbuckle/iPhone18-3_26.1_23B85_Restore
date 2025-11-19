uint64_t sub_1AC6290A0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1AC629144()
{
  OUTLINED_FUNCTION_104();
  v39 = v0;
  v40 = v1;
  v38 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7(0);
  v9 = OUTLINED_FUNCTION_40(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v20 = *(v6 + 16);
  if (v20 == *(v4 + 16) && v20 && v6 != v4)
  {
    v21 = *(v11 + 80);
    OUTLINED_FUNCTION_89_0();
    v23 = v6 + v22;
    v24 = v4 + v22;
    v26 = *(v11 + 16);
    v25 = v11 + 16;
    v27 = (v25 - 8);
    v36 = *(v25 + 56);
    v37 = v26;
    while (1)
    {
      v28 = OUTLINED_FUNCTION_142();
      v29 = v37;
      (v37)(v28);
      if (!v20)
      {
        break;
      }

      v30 = v25;
      v29(v16, v24, v8);
      sub_1AC633400(v38, v39);
      OUTLINED_FUNCTION_117();
      v31 = sub_1AC79FED8();
      v32 = *v27;
      v33 = OUTLINED_FUNCTION_98();
      v32(v33);
      (v32)(v19, v8);
      if (v31)
      {
        v24 += v36;
        v23 += v36;
        v34 = v20-- == 1;
        v25 = v30;
        if (!v34)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_105();
  }
}

uint64_t sub_1AC629308(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1AC7A08E8())
  {
    if (a2 >> 62)
    {
      result = sub_1AC7A08E8();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v22 = 0;
      return v22 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v22 = 1;
      return v22 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_1AC5CF764(0, &qword_1EB56C568, off_1E797AD30);
    v25 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x1B26E95B0](v13 - 4, v25);
      }

      else
      {
        if (v15 >= *(v24 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v25 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = OUTLINED_FUNCTION_142();
        v20 = MEMORY[0x1B26E95B0](v19);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_35;
        }

        v20 = *(a2 + 8 * v13);
      }

      v21 = v20;
      v22 = sub_1AC7A0758();

      if (v22)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

void sub_1AC6294D8()
{
  OUTLINED_FUNCTION_104();
  v3 = OUTLINED_FUNCTION_78_1(v1, v2);
  if (v12 && v0 && v3 != v4)
  {
    v5 = (v3 + 32);
    v6 = (v4 + 32);
    do
    {
      v7 = *v6;
      v8 = 0xE90000000000006ELL;
      v9 = 0x6F69746174636944;
      switch(*v5)
      {
        case 1:
          v9 = 0x7463694469726953;
          v8 = 0xED00006E6F697461;
          break;
        case 2:
          v9 = 0x6372616553626557;
          v8 = 0xE900000000000068;
          break;
        case 3:
          v9 = 0xD000000000000011;
          v8 = 0x80000001AC7B47A0;
          break;
        case 4:
          v8 = 0xE90000000000006CLL;
          v9 = 0x69614D6563696F56;
          break;
        case 5:
          v9 = 0x696E6F6974706143;
          v8 = 0xEA0000000000676ELL;
          break;
        case 6:
          v9 = 0x6F69746174636944;
          v8 = 0xEB0000000043436ELL;
          break;
        case 7:
          v8 = 0xE700000000000000;
          v9 = OUTLINED_FUNCTION_52_1();
          break;
        case 8:
          v8 = 0xE800000000000000;
          v9 = 0x676E696C6C657053;
          break;
        case 9:
          v8 = 0xE500000000000000;
          v9 = 0x746F687354;
          break;
        default:
          break;
      }

      v10 = 0xE90000000000006ELL;
      v11 = 0x6F69746174636944;
      switch(v7)
      {
        case 1:
          v11 = 0x7463694469726953;
          v10 = 0xED00006E6F697461;
          break;
        case 2:
          v11 = 0x6372616553626557;
          v10 = 0xE900000000000068;
          break;
        case 3:
          v11 = 0xD000000000000011;
          v10 = 0x80000001AC7B47A0;
          break;
        case 4:
          v10 = 0xE90000000000006CLL;
          v11 = 0x69614D6563696F56;
          break;
        case 5:
          v11 = 0x696E6F6974706143;
          v10 = 0xEA0000000000676ELL;
          break;
        case 6:
          v11 = 0x6F69746174636944;
          v10 = 0xEB0000000043436ELL;
          break;
        case 7:
          v10 = 0xE700000000000000;
          v11 = 0x43436C6C657053;
          break;
        case 8:
          v10 = 0xE800000000000000;
          v11 = 0x676E696C6C657053;
          break;
        case 9:
          v10 = 0xE500000000000000;
          v11 = 0x746F687354;
          break;
        default:
          break;
      }

      v12 = v9 == v11 && v8 == v10;
      if (v12)
      {
      }

      else
      {
        v13 = sub_1AC7A0D38();

        if ((v13 & 1) == 0)
        {
          break;
        }
      }

      ++v5;
      ++v6;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC6297B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for CommandRecognizer.Argument(0);
  v27 = OUTLINED_FUNCTION_107_0(v26);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v35 = &a9 - v34;
  v36 = *(v25 + 16);
  if (v36 == *(v23 + 16) && v36 && v25 != v23)
  {
    v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v38 = v25 + v37;
    v39 = v23 + v37;
    v40 = *(v33 + 72);
    while (1)
    {
      sub_1AC633280();
      OUTLINED_FUNCTION_98();
      sub_1AC633280();
      if (*v35 != *v32)
      {
        break;
      }

      v41 = *(v35 + 1) == *(v32 + 1) && *(v35 + 2) == *(v32 + 2);
      if (!v41 && (sub_1AC7A0D38() & 1) == 0 || (MEMORY[0x1B26E8730](&v35[*(v26 + 24)], &v32[*(v26 + 24)]) & 1) == 0)
      {
        break;
      }

      v42 = MEMORY[0x1B26E8730](&v35[*(v26 + 28)], &v32[*(v26 + 28)]);
      sub_1AC6332D8();
      sub_1AC6332D8();
      if (v42)
      {
        v39 += v40;
        v38 += v40;
        if (--v36)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    sub_1AC6332D8();
    sub_1AC6332D8();
  }

LABEL_17:
  OUTLINED_FUNCTION_105();
}

void sub_1AC6299CC()
{
  OUTLINED_FUNCTION_104();
  v3 = OUTLINED_FUNCTION_78_1(v1, v2);
  if (v16 && v0 && v3 != v4)
  {
    v5 = (v3 + 32);
    v6 = (v4 + 32);
    do
    {
      v7 = *v5;
      v8 = 0xD000000000000014;
      if (v7 == 1)
      {
        v9 = 0xD000000000000014;
      }

      else
      {
        v9 = 0x74616C736E617254;
      }

      if (v7 == 1)
      {
        v10 = 0x80000001AC7B4830;
      }

      else
      {
        v10 = 0xEC00000070704165;
      }

      if (*v5)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xD000000000000011;
      }

      if (*v5)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0x80000001AC7B4810;
      }

      if (*v6 == 1)
      {
        v13 = 0x80000001AC7B4830;
      }

      else
      {
        v8 = 0x74616C736E617254;
        v13 = 0xEC00000070704165;
      }

      if (*v6)
      {
        v14 = v8;
      }

      else
      {
        v14 = 0xD000000000000011;
      }

      if (*v6)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0x80000001AC7B4810;
      }

      v16 = v11 == v14 && v12 == v15;
      if (v16)
      {
      }

      else
      {
        v17 = sub_1AC7A0D38();

        if ((v17 & 1) == 0)
        {
          break;
        }
      }

      ++v5;
      ++v6;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_105();
}

void DictationTranscriber.ModelOptions.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_25();
  v24 = sub_1AC79F7F8();
  v25 = OUTLINED_FUNCTION_40(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_6();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  if (v21[1])
  {
    v36 = *v21;
    OUTLINED_FUNCTION_83();
    sub_1AC7A0048();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  v37 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  v38 = v37[5];
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_96(v35, 1, v24);
  if (v39)
  {
    OUTLINED_FUNCTION_80_1();
  }

  else
  {
    v40 = *(v27 + 32);
    v41 = OUTLINED_FUNCTION_142();
    v42(v41);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_39_2();
    sub_1AC633400(v43, v44);
    sub_1AC79FE58();
    v45 = *(v27 + 8);
    v46 = OUTLINED_FUNCTION_117();
    v47(v46);
  }

  v48 = (v21 + v37[6]);
  if (v48[1])
  {
    v49 = *v48;
    OUTLINED_FUNCTION_83();
    sub_1AC7A0048();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  v50 = *(v21 + v37[7]);
  OUTLINED_FUNCTION_10_2();
  sub_1AC633F80(v20, v51, v52);
  v53 = *(v21 + v37[8]);
  sub_1AC7A0E98();
  v54 = *(v21 + v37[9]);
  if (v54)
  {
    OUTLINED_FUNCTION_83();
    sub_1AC6346E0(v20, v54);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  if (*(v21 + v37[10]))
  {
    OUTLINED_FUNCTION_83();
    sub_1AC633E98();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  v55 = *(v21 + v37[11]);
  sub_1AC7A0E98();
  v56 = *(v21 + v37[12]);
  sub_1AC633D0C();
  OUTLINED_FUNCTION_105();
}

uint64_t DictationTranscriber.ModelOptions.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  DictationTranscriber.ModelOptions.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC629DF0()
{
  sub_1AC7A0E78();
  DictationTranscriber.ModelOptions.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC629E48()
{
  v1 = *v0;
  sub_1AC7A0E78();
  OUTLINED_FUNCTION_134_1();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC629ED4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_134_1();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC629F1C()
{
  v2 = *v0;
  sub_1AC7A0E78();
  DictationTranscriber.ReportingOption.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t DictationTranscriber.ResultAttributeOption.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_134_1();
  return sub_1AC7A0EC8();
}

uint64_t static DictationTranscriber.supportedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for AssetsInventory();
  swift_initStaticObject();
  OUTLINED_FUNCTION_116();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC70C79C();
}

uint64_t static DictationTranscriber.supportedLocale(equivalentTo:)()
{
  v1 = OUTLINED_FUNCTION_25();
  type metadata accessor for TranscriberCommon(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1AC5C5380;

  return sub_1AC740D54();
}

uint64_t static DictationTranscriber.installedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for AssetsInventory();
  swift_initStaticObject();
  OUTLINED_FUNCTION_116();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC70D1B4(v0);
}

uint64_t DictationTranscriber.selectedLocales.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C018, &unk_1AC7A8480);
  OUTLINED_FUNCTION_25();
  v1 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40(v1);
  v3 = v2;
  v5 = *(v4 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AC7A6D00;
  (*(v3 + 16))(v7 + v6, v0 + OBJC_IVAR____TtC6Speech20DictationTranscriber_locale, v1);
  return v7;
}

uint64_t sub_1AC62A2E8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6Speech20DictationTranscriber_common);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC741794();
}

uint64_t sub_1AC62A378()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  OUTLINED_FUNCTION_50();
  v4 = *(v3 + 24);
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  OUTLINED_FUNCTION_82();

  return v7(v2);
}

uint64_t DictationTranscriber.requestResultAtEndpoints(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC62A474()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC6Speech20DictationTranscriber_common);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_109_1(v2);

  return sub_1AC742780(v3);
}

uint64_t sub_1AC62A51C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6Speech20DictationTranscriber_common);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC7429DC();
}

uint64_t sub_1AC62A5AC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC62A6A0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6Speech20DictationTranscriber_common);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC742BD0();
}

uint64_t DictationTranscriber.setLeftContextText(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC62A748()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC6Speech20DictationTranscriber_common);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_45_1(v2);

  return sub_1AC742DC4(v3, v4);
}

uint64_t DictationTranscriber.setRightContext(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC62A7F4()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC6Speech20DictationTranscriber_common);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_45_1(v2);

  return sub_1AC742FBC(v3, v4);
}

uint64_t sub_1AC62A888()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t DictationTranscriber.setSelectedText(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC62A980()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC6Speech20DictationTranscriber_common);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_45_1(v2);

  return sub_1AC743210(v3, v4);
}

uint64_t DictationTranscriber.results.getter()
{
  v1 = OUTLINED_FUNCTION_57_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_40(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49_1();
  v7 = *(v0 + OBJC_IVAR____TtC6Speech20DictationTranscriber_common);
  v8 = OUTLINED_FUNCTION_77_0();
  v9(v8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94_1();
  sub_1AC5C8B9C(v10, v11, v12);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

uint64_t sub_1AC62AB18(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = a2[6];
  v2[7] = a2[7];
  v5 = a2[8];
  v4 = a2[9];
  v2[4] = v3;
  v2[5] = v5;
  v2[6] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1AC62AB9C, 0, 0);
}

uint64_t sub_1AC62AB9C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = v0[7];
  v7 = *v4;
  v8 = v4[2];
  *(v5 + 16) = v4[1];
  *(v5 + 32) = v8;
  *v5 = v7;
  *(v5 + 48) = v3;
  *(v5 + 56) = v6;
  *(v5 + 64) = v2;
  *(v5 + 72) = v1;
  return OUTLINED_FUNCTION_34_0();
}

void DictationTranscriber.Result.text.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  if (*(v3 + 16))
  {
    v4 = sub_1AC79F5C8();
    OUTLINED_FUNCTION_80(v4);
    v6 = *(v5 + 16);
    v7 = *(v5 + 80);
    OUTLINED_FUNCTION_89_0();

    v9(a1, v3 + v10, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC62AC50(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v19.start.value = 0;
  *&v19.start.timescale = 0xE000000000000000;
  sub_1AC7A09C8();
  v20 = *&v19.start.value;
  MEMORY[0x1B26E8C40](60, 0xE100000000000000);
  MEMORY[0x1B26E8C40](a3, a4);
  MEMORY[0x1B26E8C40](0x2065676E6172203ALL, 0xE800000000000000);
  v8 = *(a1 + 16);
  *&v19.start.value = *a1;
  *&v19.start.epoch = v8;
  *&v19.duration.timescale = *(a1 + 32);
  v9 = CMTimeRangeCopyDescription(0, &v19);
  if (!v9)
  {
    v9 = OUTLINED_FUNCTION_69_2();
  }

  v19.start.value = v9;
  type metadata accessor for CFString(0);
  sub_1AC7A0AF8();

  MEMORY[0x1B26E8C40](0xD00000000000001ALL, 0x80000001AC7B59C0);
  v10 = *(a1 + 64);
  *&v19.start.value = *(a1 + 48);
  v19.start.epoch = v10;
  v11 = CMTimeCopyDescription(0, &v19.start);
  if (!v11)
  {
    v11 = OUTLINED_FUNCTION_69_2();
  }

  v19.start.value = v11;
  sub_1AC7A0AF8();

  MEMORY[0x1B26E8C40](0x6E7265746C610A2CLL, 0xEF20736576697461);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD10, &unk_1AC7A8140);
    OUTLINED_FUNCTION_25();
    v12 = sub_1AC79F5C8();
    OUTLINED_FUNCTION_22(v12);
    v14 = *(v13 + 72);
    OUTLINED_FUNCTION_106_2();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1AC7A6D00;
    sub_1AC79F508();
  }

  else
  {
    v15 = *(a1 + 72);
  }

  v16 = sub_1AC79F5C8();
  MEMORY[0x1B26E8D20](v15, v16);

  v17 = OUTLINED_FUNCTION_57_0();
  MEMORY[0x1B26E8C40](v17);

  MEMORY[0x1B26E8C40](62, 0xE100000000000000);
  return v20;
}

uint64_t static DictationTranscriber.Result.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v12 = *a1;
  v13 = a1[1];
  v2 = *(a1 + 6);
  v3 = *(a1 + 7);
  v5 = *(a1 + 8);
  v4 = *(a1 + 9);
  v14 = a1[2];
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v6 = *(a2 + 6);
  v7 = *(a2 + 7);
  v9 = *(a2 + 8);
  v8 = *(a2 + 9);
  if (sub_1AC7A0548() & 1) != 0 && (OUTLINED_FUNCTION_57_0(), (sub_1AC7A06A8()))
  {
    OUTLINED_FUNCTION_4_2();
    OUTLINED_FUNCTION_39();
    sub_1AC629144();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void DictationTranscriber.Result.hash(into:)(uint64_t a1)
{
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v3 = *(v1 + 6);
  v4 = *(v1 + 7);
  v5 = *(v1 + 8);
  v6 = *(v1 + 9);
  sub_1AC7A0568();
  OUTLINED_FUNCTION_94_1();
  sub_1AC7A06E8();
  OUTLINED_FUNCTION_4_2();
  sub_1AC633F80(a1, v6, v7);
}

uint64_t DictationTranscriber.Result.hashValue.getter()
{
  v1 = v0[1];
  v9 = *v0;
  v10 = v1;
  v11 = v0[2];
  v2 = *(v0 + 6);
  v3 = *(v0 + 7);
  v4 = *(v0 + 8);
  v5 = *(v0 + 9);
  OUTLINED_FUNCTION_85_1();
  sub_1AC7A0568();
  sub_1AC7A06E8();
  OUTLINED_FUNCTION_4_2();
  sub_1AC633F80(v8, v5, v6);
  return sub_1AC7A0EC8();
}

double sub_1AC62B174@<D0>(_OWORD *a1@<X8>)
{
  DictationTranscriber.Result.range.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1AC62B1C8()
{
  v1 = v0[1];
  v8 = *v0;
  v9 = v1;
  v10 = v0[2];
  v2 = *(v0 + 6);
  v3 = *(v0 + 7);
  v4 = *(v0 + 8);
  v5 = *(v0 + 9);
  sub_1AC7A0E78();
  sub_1AC7A0568();
  sub_1AC7A06E8();
  sub_1AC633F80(v7, v5, MEMORY[0x1E6968848]);
  return sub_1AC7A0EC8();
}

uint64_t DictationTranscriber.multisegmentResults.getter()
{
  v1 = OUTLINED_FUNCTION_57_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_40(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49_1();
  v7 = *(v0 + OBJC_IVAR____TtC6Speech20DictationTranscriber_common);
  v8 = OUTLINED_FUNCTION_77_0();
  v9(v8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94_1();
  sub_1AC5C8B9C(v10, v11, v12);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

uint64_t sub_1AC62B398(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = *(a2 + 48);
  *(v2 + 160) = *(a2 + 56);
  v5 = *(a2 + 64);
  v4 = *(a2 + 72);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  v7 = *(a2 + 80);
  v6 = *(a2 + 88);
  *(v2 + 48) = v4;
  *(v2 + 56) = v7;
  v8 = *(a2 + 96);
  *(v2 + 64) = v6;
  *(v2 + 72) = v8;
  *(v2 + 168) = *(a2 + 104);
  v9 = *(a2 + 160);
  v10 = *(a2 + 168);
  *(v2 + 80) = v9;
  *(v2 + 88) = v10;
  *(v2 + 96) = *(a2 + 176);
  *(v2 + 169) = *(a2 + 192);
  *(v2 + 112) = *(a2 + 200);
  *(v2 + 120) = *(a2 + 208);
  *(v2 + 136) = *(a2 + 224);
  *(v2 + 170) = *(a2 + 232);
  *(v2 + 144) = *(a2 + 240);
  *(v2 + 171) = *(a2 + 256);

  sub_1AC63482C(v9);

  return MEMORY[0x1EEE6DFA0](sub_1AC62B4C8, 0, 0);
}

uint64_t sub_1AC62B4C8()
{
  v1 = *(v0 + 171);
  v2 = *(v0 + 170);
  v3 = *(v0 + 169);
  v4 = *(v0 + 168);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v10 = *(v0 + 128);
  v9 = *(v0 + 144);
  v12 = *(v0 + 96);
  v11 = *(v0 + 112);
  v14 = *(v0 + 64);
  v13 = *(v0 + 80);
  v15 = *(v0 + 160);
  v16 = *(v0 + 48);
  v17 = *v7;
  v18 = v7[2];
  *(v8 + 16) = v7[1];
  *(v8 + 32) = v18;
  *v8 = v17;
  *(v8 + 48) = v6;
  *(v8 + 56) = v15;
  *(v8 + 64) = v5;
  *(v8 + 72) = v16;
  *(v8 + 88) = v14;
  *(v8 + 104) = v4;
  v19 = *(v7 + 108);
  v20 = *(v7 + 124);
  *(v8 + 140) = *(v7 + 140);
  *(v8 + 124) = v20;
  *(v8 + 108) = v19;
  *(v8 + 160) = v13;
  *(v8 + 176) = v12;
  *(v8 + 192) = v3;
  *(v8 + 200) = v11;
  *(v8 + 216) = v10;
  *(v8 + 232) = v2;
  *(v8 + 240) = v9;
  *(v8 + 256) = v1;
  return OUTLINED_FUNCTION_34_0();
}

__n128 DictationTranscriber.MultisegmentResult.init(range:resultsFinalizationTime:transcriptions:transcriptionTokens:segments:nBestChoices:earResultType:recognitionAudioRange:audioAnalytics:eosLikelihood:latticeMitigatorResult:numOneBestTokensExcludingTriggerPhrase:resultCandidateId:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, _OWORD *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  v18 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v18;
  *(a9 + 32) = a1[2];
  v19 = a11[1];
  *(a9 + 108) = *a11;
  *(a9 + 124) = v19;
  *(a9 + 140) = a11[2];
  *(a9 + 160) = *a12;
  result = *a15;
  v21 = *(a15 + 16);
  *(a9 + 200) = *a15;
  v22 = *a10;
  v23 = *(a12 + 16);
  v24 = *(a15 + 32);
  *(a9 + 48) = a2;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  *(a9 + 104) = v22;
  *(a9 + 176) = v23;
  *(a9 + 184) = a13;
  *(a9 + 192) = a14 & 1;
  *(a9 + 216) = v21;
  *(a9 + 232) = v24;
  *(a9 + 240) = a16;
  *(a9 + 248) = a17;
  *(a9 + 256) = a18 & 1;
  return result;
}

uint64_t DictationTranscriber.muxMultisegmentResults.getter()
{
  v1 = OUTLINED_FUNCTION_88_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_40(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49_1();
  v7 = *(v0 + OBJC_IVAR____TtC6Speech20DictationTranscriber_common);
  v8 = OUTLINED_FUNCTION_77_0();
  v9(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C350, &qword_1AC7A8830);
  OUTLINED_FUNCTION_7();
  sub_1AC5C8B9C(v10, &qword_1EB56C348, &qword_1AC7A8820);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

uint64_t sub_1AC62B708(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1AC62B72C, 0, 0);
}

void sub_1AC62B72C()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C560, &qword_1AC7A9290);
  sub_1AC7A0BA8();
  v2 = 0;
  v3 = *(v1 + 64);
  v49 = v1 + 64;
  v51 = v1;
  v4 = *(v1 + 32);
  OUTLINED_FUNCTION_117_0();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v50 = v11 + 64;
  if ((v7 & v6) != 0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_57_2();
LABEL_8:
      v17 = v13 | (v2 << 6);
      v18 = (*(v51 + 48) + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = 33 * v17;
      v22 = *(v51 + 56) + 264 * v17;
      v52 = *v22;
      v53 = *(v22 + 16);
      v54 = *(v22 + 32);
      v23 = *(v22 + 48);
      v24 = *(v22 + 64);
      v25 = *(v22 + 72);
      v27 = *(v22 + 80);
      v26 = *(v22 + 88);
      v28 = *(v22 + 96);
      v29 = *(v22 + 104);
      v30 = *(v22 + 160);
      v31 = *(v22 + 168);
      v32 = *(v22 + 200);
      v33 = *(v22 + 224);
      v34 = *(v22 + 232);
      *&v55[3] = *(v22 + 108);
      *&v55[19] = *(v22 + 124);
      *&v55[35] = *(v22 + 140);
      v56 = *(v22 + 192);
      v57 = *(v22 + 256);
      v35 = (v17 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v36 = *(v50 + v35) | (1 << v17);
      v37 = (v12[6] + 16 * v17);
      v38 = *(v22 + 240);
      v39 = *(v22 + 208);
      v40 = *(v22 + 176);
      v41 = *(v22 + 56);
      *(v50 + v35) = v36;
      *v37 = v20;
      v37[1] = v19;
      v42 = v12[7] + 8 * v21;
      *v42 = v52;
      *(v42 + 16) = v53;
      *(v42 + 32) = v54;
      *(v42 + 48) = v23;
      *(v42 + 56) = v41;
      *(v42 + 64) = v24;
      *(v42 + 72) = v25;
      *(v42 + 80) = v27;
      *(v42 + 88) = v26;
      *(v42 + 96) = v28;
      *(v42 + 104) = v29;
      *(v42 + 152) = *&v55[47];
      *(v42 + 137) = *&v55[32];
      *(v42 + 121) = *&v55[16];
      *(v42 + 105) = *v55;
      *(v42 + 160) = v30;
      *(v42 + 168) = v31;
      *(v42 + 176) = v40;
      *(v42 + 192) = v56;
      *(v42 + 200) = v32;
      *(v42 + 208) = v39;
      *(v42 + 224) = v33;
      *(v42 + 232) = v34;
      *(v42 + 240) = v38;
      *(v42 + 256) = v57;
      v43 = v12[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        break;
      }

      v12[2] = v45;
      v46 = v12;

      sub_1AC63482C(v30);

      v5 = v46;
      if (!v8)
      {
        goto LABEL_3;
      }
    }

LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_3:
    v14 = v2;
    while (1)
    {
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v2 >= v10)
      {
        break;
      }

      ++v14;
      if (*(v49 + 8 * v2))
      {
        OUTLINED_FUNCTION_25_0();
        v8 = v16 & v15;
        goto LABEL_8;
      }
    }

    **(v48 + 16) = v5;
    OUTLINED_FUNCTION_44();

    v47();
  }
}

__n128 DictationTranscriber.MultisegmentResult.recognitionAudioRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 124);
  *a1 = *(v1 + 108);
  *(a1 + 16) = v2;
  result = *(v1 + 140);
  *(a1 + 32) = result;
  return result;
}

uint64_t DictationTranscriber.MultisegmentResult.audioAnalytics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[20];
  v3 = v1[21];
  v4 = v1[22];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1AC63482C(v2);
}

uint64_t DictationTranscriber.MultisegmentResult.eosLikelihood.getter()
{
  result = *(v0 + 184);
  v2 = *(v0 + 192);
  return result;
}

uint64_t DictationTranscriber.MultisegmentResult.latticeMitigatorResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 232);
  *a1 = *(v1 + 200);
  *(a1 + 8) = *(v1 + 208);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

uint64_t DictationTranscriber.MultisegmentResult.resultCandidateId.getter()
{
  result = *(v0 + 248);
  v2 = *(v0 + 256);
  return result;
}

void sub_1AC62BA80()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_25();
  v7 = sub_1AC79F5C8();
  v8 = OUTLINED_FUNCTION_40(v7);
  v71 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v14 = v13 - v12;
  v72.start.value = 0;
  *&v72.start.timescale = 0xE000000000000000;
  sub_1AC7A09C8();
  v73 = 0;
  v74 = 0xE000000000000000;
  MEMORY[0x1B26E8C40](60, 0xE100000000000000);
  MEMORY[0x1B26E8C40](v4, v2);
  MEMORY[0x1B26E8C40](8250, 0xE200000000000000);
  LOBYTE(v72.start.value) = *(v0 + 104);
  sub_1AC7A0AF8();
  MEMORY[0x1B26E8C40](0x2065676E6172202CLL, 0xE800000000000000);
  v15 = *(v0 + 16);
  *&v72.start.value = *v0;
  *&v72.start.epoch = v15;
  *&v72.duration.timescale = *(v0 + 32);
  v16 = CMTimeRangeCopyDescription(0, &v72);
  if (!v16)
  {
    v16 = OUTLINED_FUNCTION_69_2();
  }

  v72.start.value = v16;
  type metadata accessor for CFString(0);
  sub_1AC7A0AF8();

  MEMORY[0x1B26E8C40](0xD00000000000001ALL, 0x80000001AC7B59C0);
  v17 = *(v0 + 64);
  v72.start.value = *(v0 + 48);
  *&v72.start.timescale = *(v0 + 56);
  v72.start.epoch = v17;
  v18 = CMTimeCopyDescription(0, &v72.start);
  if (!v18)
  {
    v18 = OUTLINED_FUNCTION_69_2();
  }

  v19 = 0x4445544341444552;
  v72.start.value = v18;
  sub_1AC7A0AF8();

  MEMORY[0x1B26E8C40](0x6E656D6765730A2CLL, 0xEB00000000207374);
  if (v6)
  {
    v20 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD08, &qword_1AC7A8138);
    v21 = (type metadata accessor for TranscriptionSegment() - 8);
    v22 = *(*v21 + 72);
    OUTLINED_FUNCTION_106_2();
    v25 = v24 & ~v23;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1AC7A6D00;
    v27 = v26 + v25;
    sub_1AC79F508();
    (*(v71 + 32))(v27, v14, v7);
    *(v27 + v21[7]) = v20;
    *(v27 + v21[8]) = v20;
    *(v27 + v21[9]) = v20;
  }

  else
  {
    v28 = *(v0 + 88);
  }

  type metadata accessor for TranscriptionSegment();
  v29 = OUTLINED_FUNCTION_93();
  MEMORY[0x1B26E8D20](v29);

  v30 = OUTLINED_FUNCTION_123_1();
  MEMORY[0x1B26E8C40](v30);

  MEMORY[0x1B26E8C40](0x43747365426E0A2CLL, 0xEF20736563696F68);
  if ((v6 & 1) == 0)
  {
    v31 = *(v0 + 96);
  }

  sub_1AC79FBC8();
  v32 = OUTLINED_FUNCTION_93();
  MEMORY[0x1B26E8D20](v32);

  v33 = OUTLINED_FUNCTION_123_1();
  MEMORY[0x1B26E8C40](v33);

  v34 = OUTLINED_FUNCTION_53_2();
  MEMORY[0x1B26E8C40](v34);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD10, &unk_1AC7A8140);
    v35 = *(v71 + 72);
    OUTLINED_FUNCTION_106_2();
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1AC7A6D00;
    sub_1AC79F508();
  }

  else
  {
    v36 = *(v0 + 72);
  }

  MEMORY[0x1B26E8D20](v36, v7);
  OUTLINED_FUNCTION_105_1();
  v37 = OUTLINED_FUNCTION_88_0();
  MEMORY[0x1B26E8C40](v37);

  MEMORY[0x1B26E8C40](0xD000000000000016, 0x80000001AC7B5A00);
  if (v6)
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD28, &qword_1AC7A8158);
    MEMORY[0x1B26E8D20](MEMORY[0x1E69E7CC0], v38);
    OUTLINED_FUNCTION_105_1();
    v39 = OUTLINED_FUNCTION_88_0();
    MEMORY[0x1B26E8C40](v39);

    v40 = OUTLINED_FUNCTION_53_2();
    MEMORY[0x1B26E8C40](v40);
    v41 = 0xE800000000000000;
  }

  else
  {
    v42 = *(v0 + 80);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD28, &qword_1AC7A8158);
    v43 = OUTLINED_FUNCTION_93();
    MEMORY[0x1B26E8D20](v43);
    OUTLINED_FUNCTION_105_1();
    v44 = OUTLINED_FUNCTION_88_0();
    MEMORY[0x1B26E8C40](v44);

    v45 = OUTLINED_FUNCTION_53_2();
    MEMORY[0x1B26E8C40](v45);
    if (*(v0 + 160))
    {
      v46 = *(v0 + 176);
      v47 = *(v0 + 168);
      v72.start.value = *(v0 + 160);
      *&v72.start.timescale = v47;
      v72.start.epoch = v46;

      v19 = sub_1AC79FFD8();
      v41 = v48;
    }

    else
    {
      v19 = 0;
      v41 = 0xE000000000000000;
    }
  }

  MEMORY[0x1B26E8C40](v19, v41);

  MEMORY[0x1B26E8C40](0xD000000000000010, 0x80000001AC7B5A40);
  v72.start.value = *(v0 + 184);
  LOBYTE(v72.start.timescale) = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C458, &qword_1AC7A90C8);
  v49 = sub_1AC79FFD8();
  MEMORY[0x1B26E8C40](v49);

  MEMORY[0x1B26E8C40](0xD000000000000026, 0x80000001AC7B5A60);
  v50 = *(v0 + 208);
  v51 = *(v0 + 220);
  v52 = *(v0 + 224);
  v53 = *(v0 + 228);
  v54 = *(v0 + 232);
  v55 = v50 == 0;
  v56 = v50 == 0;
  if (v50)
  {
    v57 = *(v0 + 216);
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v72.start.value) = v57;
  BYTE4(v72.start.value) = v56;
  if (v55)
  {
    v58 = 0;
  }

  else
  {
    v58 = v51;
  }

  if (v55)
  {
    v59 = 0;
  }

  else
  {
    v59 = v52;
  }

  if (v55)
  {
    v60 = 0;
  }

  else
  {
    v60 = v53;
  }

  if (v55)
  {
    v61 = 2;
  }

  else
  {
    v61 = v54 & 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C460, &qword_1AC7A90D0);
  v62 = sub_1AC79FFD8();
  MEMORY[0x1B26E8C40](v62);

  MEMORY[0x1B26E8C40](0xD000000000000011, 0x80000001AC7B5A90);
  LODWORD(v72.start.value) = v58;
  v63 = OUTLINED_FUNCTION_104_1();
  MEMORY[0x1B26E8C40](v63);

  MEMORY[0x1B26E8C40](0x3A656C616373202CLL, 0xE900000000000020);
  LODWORD(v72.start.value) = v59;
  v64 = OUTLINED_FUNCTION_104_1();
  MEMORY[0x1B26E8C40](v64);

  MEMORY[0x1B26E8C40](0x74657366666F202CLL, 0xEA0000000000203ALL);
  LODWORD(v72.start.value) = v60;
  v65 = OUTLINED_FUNCTION_104_1();
  MEMORY[0x1B26E8C40](v65);

  MEMORY[0x1B26E8C40](0x636F72507369202CLL, 0xEF203A6465737365);
  LOBYTE(v72.start.value) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C468, &qword_1AC7A90D8);
  v66 = sub_1AC79FFD8();
  MEMORY[0x1B26E8C40](v66);

  MEMORY[0x1B26E8C40](0xD00000000000002ALL, 0x80000001AC7B5AB0);
  v72.start.value = *(v0 + 240);
  v67 = sub_1AC7A0CC8();
  MEMORY[0x1B26E8C40](v67);

  MEMORY[0x1B26E8C40](0xD000000000000014, 0x80000001AC7B5AE0);
  if (v6)
  {
    v68 = 0;
    v69 = 0xE000000000000000;
  }

  else
  {
    v72.start.value = *(v0 + 248);
    LOBYTE(v72.start.timescale) = *(v0 + 256);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C470, &unk_1AC7A90E0);
    v68 = sub_1AC79FFD8();
    v69 = v70;
  }

  MEMORY[0x1B26E8C40](v68, v69);

  MEMORY[0x1B26E8C40](15913, 0xE200000000000000);
  OUTLINED_FUNCTION_105();
}

void static DictationTranscriber.MultisegmentResult.split(result:)()
{
  OUTLINED_FUNCTION_50_0();
  memcpy(__dst, v2, 0x101uLL);
  sub_1AC62C58C(v1, v0, __dst, sub_1AC637EC0, sub_1AC637E60, &unk_1F212F3B8, sub_1AC637EC4, nullsub_1, sub_1AC637EC4, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13]);
}

void sub_1AC62C58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t (*a23)(void *))
{
  OUTLINED_FUNCTION_129_0();
  v24 = v23;
  v607 = v25;
  v612 = v26;
  v626 = v27;
  v617 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v599 = sub_1AC79FBC8();
  v35 = OUTLINED_FUNCTION_40(v599);
  v620 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v610 = (v39 - v40);
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_26_0();
  v624 = v42;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_26_0();
  v591 = v44;
  OUTLINED_FUNCTION_34();
  v46 = MEMORY[0x1EEE9AC00](v45);
  v48 = &v563 - v47;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_91();
  v594 = v49;
  OUTLINED_FUNCTION_70_0();
  v627 = sub_1AC79F5C8();
  v50 = OUTLINED_FUNCTION_40(v627);
  v625 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5();
  v583 = v54 - v55;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_26_0();
  v584 = v57;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_26_0();
  v585 = v59;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_26_0();
  v597 = v61;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_26_0();
  v622 = v63;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_26_0();
  v606 = v65;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_26_0();
  v605 = v67;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_26_0();
  v604 = v69;
  OUTLINED_FUNCTION_34();
  v71 = MEMORY[0x1EEE9AC00](v70);
  v73 = &v563 - v72;
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_26_0();
  v603 = v74;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_26_0();
  v602 = v76;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_26_0();
  v601 = v78;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_91();
  v589 = v80;
  OUTLINED_FUNCTION_70_0();
  v81 = type metadata accessor for TranscriptionSegment();
  v82 = OUTLINED_FUNCTION_40(v81);
  v600 = v83;
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_5();
  v609 = (v86 - v87);
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_26_0();
  v592 = v89;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_26_0();
  v596 = v91;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_26_0();
  v608 = v93;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_26_0();
  v595 = v95;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_26_0();
  v588 = v97;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_26_0();
  v586 = v99;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_26_0();
  v587 = v101;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_26_0();
  v590 = v103;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_91();
  v613 = v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C4E8, &qword_1AC7A9190);
  OUTLINED_FUNCTION_167(v106);
  v108 = *(v107 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v109);
  v111 = (&v563 - v110);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C4F0, &qword_1AC7A9198);
  v113 = OUTLINED_FUNCTION_167(v112);
  v115 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_5();
  v117 = MEMORY[0x1EEE9AC00](v116);
  v118 = MEMORY[0x1EEE9AC00](v117);
  v119 = MEMORY[0x1EEE9AC00](v118);
  v120 = MEMORY[0x1EEE9AC00](v119);
  MEMORY[0x1EEE9AC00](v120);
  v127 = &v563 - v123;
  if (!*(*(v30 + 72) + 16))
  {
    goto LABEL_9;
  }

  v128 = *(v30 + 88);
  v129 = *(v128 + 16);
  if (!v129)
  {
    goto LABEL_9;
  }

  v580 = v121;
  v581 = v129;
  v582 = v48;
  v621 = v73;
  v578 = v126;
  v579 = v122;
  v576 = v125;
  v577 = v124;
  v130 = v128;
  sub_1AC625BBC(v128, &v563 - v123);
  OUTLINED_FUNCTION_96(v127, 1, v81);
  if (v131)
  {
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
    goto LABEL_278;
  }

  v132 = *&v127[v81[6]];
  v611 = v130;

  OUTLINED_FUNCTION_0_3();
  sub_1AC6332D8();
  v133 = *(v132 + 16);

  if (!v133)
  {
    goto LABEL_8;
  }

  v134 = *(v30 + 96);
  v135 = *(v134 + 16);
  if (!v135)
  {
    goto LABEL_8;
  }

  v575 = *(v30 + 96);
  sub_1AC625C74(v134, MEMORY[0x1E6969C28], v111);
  v136 = OUTLINED_FUNCTION_55_2();
  v137 = v599;
  OUTLINED_FUNCTION_96(v136, v138, v599);
  if (v131)
  {
    goto LABEL_276;
  }

  v139 = sub_1AC6244CC();
  v618 = *(v620 + 8);
  v619 = v620 + 8;
  v618(v111, v137);
  if (v139)
  {
LABEL_8:

LABEL_9:
    v617(v629);
    memcpy(v34, v629, 0x101uLL);
    memcpy(v32, v30, 0x101uLL);
    v626(v30, v628);
LABEL_10:
    OUTLINED_FUNCTION_130();
    return;
  }

  v140 = *(v30 + 108);
  v571 = v24;
  v572 = v140;
  v141 = *(v30 + 116);
  v643 = *(v30 + 120);
  v644 = *(v30 + 128);
  v641 = *(v30 + 132);
  v642 = *(v30 + 148);
  v570 = v141;
  v616 = sub_1AC7A0718();
  v614 = v142;
  v144 = v143;
  v145 = sub_1AC630440(1, v611);
  v149 = v148 >> 1;
  if (v148 >> 1 == v147)
  {
LABEL_12:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v623 = a23;
  v150 = v148 >> 1;
  v568 = v32;
  v569 = v30;
  v566 = v146;
  v567 = v34;
  v615 = v81;
  v593 = v135;
  v573 = v145;
  v564 = v148 >> 1;
  v565 = v147;
LABEL_14:
  v151 = __OFSUB__(v150, 1);
  v152 = v150 - 1;
  if (v151)
  {
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
    goto LABEL_269;
  }

  if (v152 < v147 || v152 >= v149)
  {
    goto LABEL_266;
  }

  v598 = *(v600 + 72);
  v574 = v152;
  OUTLINED_FUNCTION_1_4();
  v111 = v613;
  sub_1AC633280();
  v154 = 0;
  v30 = *(v111 + v615[6]);
  v155 = *(v30 + 16);
  for (i = (v30 + 32); ; i += 160)
  {
    if (v155 == v154)
    {
      sub_1AC6332D8();
      v147 = v565;
      v150 = v574;
      v32 = v568;
      v30 = v569;
      v34 = v567;
      v149 = v564;
      if (v574 != v565)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    if (v154 >= *(v30 + 16))
    {
      __break(1u);
LABEL_255:
      __break(1u);
LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
      goto LABEL_265;
    }

    memcpy(v629, i, 0xA0uLL);
    v157 = v629[5];
    v158 = v629[10];
    v111 = v629[7];
    v32 = v629[8];
    v159 = v629[6];
    v160 = v629[9];
    sub_1AC637BCC(v629, v628);
    v628[0] = v157;
    v628[1] = v159;
    v628[2] = v111;
    *&v631 = v32;
    *(&v631 + 1) = v160;
    *&v632 = v158;
    v161 = OUTLINED_FUNCTION_50_2();
    CMTimeSubtract(v163, v161, v162);
    v139 = sub_1AC7A06B8();
    sub_1AC637C28(v629);
    if (v139)
    {
      break;
    }

    ++v154;
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_0_3();
  sub_1AC6332D8();
  sub_1AC724624();
  v626 = v164;
  v165 = v574 + 1;
  if (__OFADD__(v574, 1))
  {
    goto LABEL_268;
  }

  if ((v165 & 0x8000000000000000) == 0)
  {
    v614 = v574 + 1;
    sub_1AC747F2C(0, v165, v611);
    v111 = v166;
    v30 = v167;
    v144 = v168;
    v32 = v169;
    if (v169)
    {
      sub_1AC7A0D68();
      swift_unknownObjectRetain_n();
      v172 = swift_dynamicCastClass();
      if (!v172)
      {
        swift_unknownObjectRelease();
        v172 = MEMORY[0x1E69E7CC0];
      }

      v173 = *(v172 + 16);

      if (__OFSUB__(v32 >> 1, v144))
      {
        goto LABEL_271;
      }

      if (v173 != (v32 >> 1) - v144)
      {
        goto LABEL_272;
      }

      v171 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v171)
      {
        goto LABEL_38;
      }

      v171 = MEMORY[0x1E69E7CC0];
      goto LABEL_37;
    }

    goto LABEL_30;
  }

LABEL_269:
  __break(1u);
  do
  {
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    swift_unknownObjectRelease();
LABEL_30:
    sub_1AC751B68(v111, v30, v144, v32);
    v171 = v170;
LABEL_37:
    swift_unknownObjectRelease();
LABEL_38:
    v573 = v171;
  }

  while (v581 < v614);
  sub_1AC747F2C(v614, v581, v611);
  v175 = v174;
  v177 = v176;
  v179 = v178;
  v181 = v180;
  if ((v180 & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_1AC7A0D68();
  swift_unknownObjectRetain_n();
  v185 = swift_dynamicCastClass();
  if (!v185)
  {
    swift_unknownObjectRelease();
    v185 = MEMORY[0x1E69E7CC0];
  }

  v186 = *(v185 + 16);

  if (__OFSUB__(v181 >> 1, v179))
  {
    __break(1u);
    goto LABEL_274;
  }

  if (v186 != (v181 >> 1) - v179)
  {
LABEL_274:
    swift_unknownObjectRelease();
LABEL_40:
    sub_1AC751B68(v175, v177, v179, v181);
    v183 = v182;
    v184 = v593;
LABEL_47:
    swift_unknownObjectRelease();
    goto LABEL_48;
  }

  v183 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v184 = v593;
  if (!v183)
  {
    v183 = MEMORY[0x1E69E7CC0];
    goto LABEL_47;
  }

LABEL_48:
  v581 = v183;
  *&v631 = MEMORY[0x1E69E7CC0];
  sub_1AC6313FC();
  v144 = v631;
  v187 = *(v620 + 16);
  v188 = *(v620 + 80);
  OUTLINED_FUNCTION_89_0();
  v612 = v189;
  v190 = v575 + v189;
  v616 = *(v191 + 56);
  v617 = v192;
  v620 = v191;
  v611 = (v191 + 16);
  v613 = (v575 + v189);
  v111 = v599;
  do
  {
    OUTLINED_FUNCTION_48_3();
    v193();
    v32 = sub_1AC633400(&qword_1EB56C4F8, MEMORY[0x1E6969C28]);
    OUTLINED_FUNCTION_87_1();
    sub_1AC7A0498();
    if (v614 < *&v635[0])
    {
      goto LABEL_255;
    }

    v628[0] = *&v635[0];
    v628[1] = v614;
    v194 = v610;
    sub_1AC7A0508();
    v195 = OUTLINED_FUNCTION_57_0();
    (v618)(v195);
    *&v631 = v144;
    v197 = *(v144 + 2);
    v196 = *(v144 + 3);
    OUTLINED_FUNCTION_97_1();
    v111 = v30;
    if (v198)
    {
      OUTLINED_FUNCTION_64_3();
      sub_1AC6313FC();
      v111 = v599;
      v144 = v631;
    }

    *(v144 + 2) = v139;
    v199 = OUTLINED_FUNCTION_122_1();
    v139 = *v611;
    (*v611)(v199, v194, v111);
    *&v631 = v144;
    v190 += v30;
    v184 = (v184 - 1);
    v200 = v593;
  }

  while (v184);
  sub_1AC752ED8();
  v575 = v201;

  *&v631 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_127_1();
  sub_1AC6313FC();
  v111 = v599;
  v144 = v631;
  v202 = v591;
  v203 = v613;
  do
  {
    OUTLINED_FUNCTION_48_3();
    v204();
    OUTLINED_FUNCTION_87_1();
    sub_1AC7A04E8();
    if (*&v635[0] < v614)
    {
      goto LABEL_256;
    }

    v613 = v203;
    v628[0] = v614;
    v628[1] = *&v635[0];
    sub_1AC7A0508();
    v205 = OUTLINED_FUNCTION_57_0();
    (v618)(v205);
    *&v631 = v144;
    v206 = *(v144 + 2);
    v111 = v30;
    if (v206 >= *(v144 + 3) >> 1)
    {
      sub_1AC6313FC();
      v111 = v599;
      v144 = v631;
    }

    *(v144 + 2) = v206 + 1;
    v207 = OUTLINED_FUNCTION_122_1();
    (v139)(v207, v202, v111);
    *&v631 = v144;
    v203 = (v613 + v30);
    v200 = (v200 - 1);
  }

  while (v200);
  sub_1AC752ED8();
  v574 = v208;

  v209 = v573;
  v634 = v573;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BEB0, &qword_1AC7A91A0);
  v210 = swift_allocObject();
  *(v210 + 16) = xmmword_1AC7A8780;
  *(v210 + 32) = 46;
  *(v210 + 40) = 0xE100000000000000;
  *(v210 + 48) = 63;
  *(v210 + 56) = 0xE100000000000000;
  v624 = v210;
  v211 = v580;
  sub_1AC68D304(v209, v580);
  v212 = v615;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v211, 1, v615);
  v614 = 32;
  if (EnumTagSinglePayload == 1)
  {

    sub_1AC5C720C(v211, &qword_1EB56C4F0, &qword_1AC7A9198);
    v613 = 0;
    v591 = v209;
    v32 = v627;
  }

  else
  {
    v214 = v590;
    sub_1AC637C7C();
    v30 = *(v214 + v212[6]);
    v593 = *(v214 + v212[7]);
    v144 = *(v30 + 16);

    v32 = 0;
    v215 = 0;
    v580 = MEMORY[0x1E69E7CC0];
LABEL_61:
    v111 = (v30 + 32 + 160 * v32);
    while (v144 != v32)
    {
      if (v32 >= *(v30 + 16))
      {
        goto LABEL_258;
      }

      memcpy(v628, v111, 0xA0uLL);
      if ((v628[17] & 1) == 0)
      {
        OUTLINED_FUNCTION_119_1();
        if (!v131)
        {
          v219 = OUTLINED_FUNCTION_50_2();
          sub_1AC637BCC(v219, v220);
LABEL_69:
          v221 = v580;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v636 = v221;
          v139 = v215;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v223 = *(v221 + 16);
            v224 = OUTLINED_FUNCTION_35_2();
            sub_1AC6313DC(v224, v225, v226);
            v221 = v636;
          }

          v228 = *(v221 + 16);
          v227 = *(v221 + 24);
          OUTLINED_FUNCTION_56_2();
          if (v198)
          {
            OUTLINED_FUNCTION_33_2();
            sub_1AC6313DC(v229, v230, v231);
            v221 = v636;
          }

          ++v32;
          *(v221 + 16) = v200;
          v580 = v221;
          OUTLINED_FUNCTION_72_1(v221 + 160 * v228);
          v215 = v139;
          goto LABEL_61;
        }
      }

      v200 = &v563;
      OUTLINED_FUNCTION_95_1();
      MEMORY[0x1EEE9AC00](v216);
      v139 = (&v563 - 4);
      *(&v563 - 2) = v635;
      v217 = OUTLINED_FUNCTION_50_2();
      sub_1AC637BCC(v217, v218);
      if (sub_1AC6F488C(v607, (&v563 - 4), v624))
      {
        goto LABEL_69;
      }

      sub_1AC637C28(v628);
      v111 += 20;
      ++v32;
    }

    v232 = v593;
    v233 = v593[2];
    v32 = MEMORY[0x1E69E7CC0];
    if (v233)
    {
      *&v636 = MEMORY[0x1E69E7CC0];
      sub_1AC6313BC(0, v233, 0);
      v111 = 0;
      v234 = v636;
      v607 = (v232 + 4);
      v591 = v233;
      while (2)
      {
        v610 = (v111 + 1);
        v611 = v234;
        v235 = OUTLINED_FUNCTION_55_2();
        sub_1AC61C258(v235, v236);
        v237 = *(v607 + v111);
        v630[0] = v32;
        v238 = *(v237 + 16);

        v139 = 0;
LABEL_77:
        v239 = v614 + 160 * v139;
        while (v238 != v139)
        {
          if (v139 >= *(v237 + 16))
          {
            __break(1u);
LABEL_253:
            v587 = v111;
            v344 = v583;
            goto LABEL_157;
          }

          memcpy(v628, (v237 + v239), 0xA0uLL);
          if ((v628[17] & 1) == 0)
          {
            OUTLINED_FUNCTION_119_1();
            if (!v131)
            {
              v243 = OUTLINED_FUNCTION_50_2();
              sub_1AC637BCC(v243, v244);
LABEL_85:
              v245 = swift_isUniquelyReferenced_nonNull_native();
              v630[0] = v32;
              v246 = v215;
              if ((v245 & 1) == 0)
              {
                v247 = *(v32 + 16);
                v111 = v630;
                v248 = OUTLINED_FUNCTION_35_2();
                sub_1AC6313DC(v248, v249, v250);
                v32 = v630[0];
              }

              v252 = *(v32 + 16);
              v251 = *(v32 + 24);
              OUTLINED_FUNCTION_56_2();
              if (v198)
              {
                v111 = v630;
                OUTLINED_FUNCTION_33_2();
                sub_1AC6313DC(v253, v254, v255);
                v32 = v630[0];
              }

              ++v139;
              *(v32 + 16) = v239;
              OUTLINED_FUNCTION_72_1(v32 + 160 * v252);
              v215 = v246;
              goto LABEL_77;
            }
          }

          OUTLINED_FUNCTION_95_1();
          MEMORY[0x1EEE9AC00](v240);
          v111 = &v563 - 4;
          *(&v563 - 2) = v635;
          v241 = OUTLINED_FUNCTION_50_2();
          sub_1AC637BCC(v241, v242);
          if (sub_1AC6F488C(v623, (&v563 - 4), v624))
          {
            goto LABEL_85;
          }

          sub_1AC637C28(v628);
          v239 += 160;
          ++v139;
        }

        v613 = v215;

        v234 = v611;
        *&v636 = v611;
        v257 = v611[2];
        v256 = v611[3];
        OUTLINED_FUNCTION_56_2();
        if (v198)
        {
          OUTLINED_FUNCTION_33_2();
          sub_1AC6313BC(v258, v259, v260);
          v234 = v636;
        }

        v234[2] = v239;
        v234[v257 + 4] = v32;
        v111 = v610;
        v215 = v613;
        v32 = MEMORY[0x1E69E7CC0];
        if (v610 != v591)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v613 = v215;
      v234 = MEMORY[0x1E69E7CC0];
    }

    v261 = v589;
    v262 = v580;
    OUTLINED_FUNCTION_86_2();
    v263 = v234[2];
    v264 = MEMORY[0x1E69E7CC0];
    v212 = v615;
    if (v263)
    {
      v628[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_63_1();
      sub_1AC631324();
      v264 = v628[0];
      v265 = v234;
      v266 = (v234 + 4);
      v32 = v625 + 32;
      v267 = v583;
      do
      {
        v268 = *v266;

        OUTLINED_FUNCTION_86_2();

        v628[0] = v264;
        v269 = *(v264 + 16);
        if (v269 >= *(v264 + 24) >> 1)
        {
          OUTLINED_FUNCTION_33_2();
          sub_1AC631324();
          v264 = v628[0];
        }

        *(v264 + 16) = v269 + 1;
        OUTLINED_FUNCTION_18_1();
        (*(v272 + 32))(v264 + (v271 & ~v270) + *(v272 + 72) * v269, v267, v627);
        v628[0] = v264;
        ++v266;
        --v263;
      }

      while (v263);
      v261 = v589;
      v212 = v615;
      v262 = v580;
      v234 = v265;
    }

    v273 = *(v625 + 16);
    v274 = v587;
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_120_1();
    v275();
    *(v274 + v212[5]) = v264;
    *(v274 + v212[6]) = v262;
    *(v274 + v212[7]) = v234;
    sub_1AC6304D8();
    OUTLINED_FUNCTION_0_3();
    sub_1AC6332D8();
    OUTLINED_FUNCTION_1_4();
    sub_1AC633280();
    v276 = v634;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_31_2();
      sub_1AC60DCAC();
      v276 = v560;
    }

    v278 = *(v276 + 16);
    v277 = *(v276 + 24);
    v591 = v276;
    if (v278 >= v277 >> 1)
    {
      sub_1AC60DCAC();
      v591 = v561;
    }

    sub_1AC6332D8();
    (*(v625 + 8))(v261, v32);
    v139 = v591;
    v591[2] = v278 + 1;
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_32_0(v139 + v279);
    sub_1AC637C7C();
    v634 = v139;
    sub_1AC6332D8();
  }

  v280 = v581;
  v281 = *(v581 + 16);
  v144 = MEMORY[0x1E69E7CC0];
  if (v281)
  {
    *&v635[0] = MEMORY[0x1E69E7CC0];
    v111 = v635;
    v607 = v281;
    sub_1AC6313BC(0, v281, 0);
    v30 = *&v635[0];
    OUTLINED_FUNCTION_106_2();
    v610 = (v280 + (v284 & ~v283));
    while (v282 < *(v280 + 16))
    {
      v32 = v282 + 1;
      v285 = v609;
      OUTLINED_FUNCTION_1_4();
      sub_1AC633280();
      v139 = *(v285 + v212[6]);
      *&v636 = v144;
      v286 = *(v139 + 16);

      v287 = 0;
LABEL_110:
      v111 = (v614 + 160 * v287);
      while (v286 != v287)
      {
        if (v287 >= *(v139 + 16))
        {
LABEL_176:
          __break(1u);
          goto LABEL_177;
        }

        memcpy(v628, v111 + v139, 0xA0uLL);
        if ((v628[17] & 1) == 0)
        {
          OUTLINED_FUNCTION_119_1();
          if (!v131)
          {
            v288 = OUTLINED_FUNCTION_50_2();
            sub_1AC637BCC(v288, v289);
            v290 = swift_isUniquelyReferenced_nonNull_native();
            *&v636 = v144;
            if ((v290 & 1) == 0)
            {
              v291 = *(v144 + 2);
              v292 = OUTLINED_FUNCTION_35_2();
              sub_1AC6313DC(v292, v293, v294);
              v144 = v636;
            }

            v296 = *(v144 + 2);
            v295 = *(v144 + 3);
            OUTLINED_FUNCTION_56_2();
            if (v198)
            {
              OUTLINED_FUNCTION_33_2();
              sub_1AC6313DC(v297, v298, v299);
              v144 = v636;
            }

            ++v287;
            *(v144 + 2) = 160;
            OUTLINED_FUNCTION_72_1(&v144[40 * v296]);
            goto LABEL_110;
          }
        }

        v111 += 20;
        ++v287;
      }

      sub_1AC6332D8();

      *&v635[0] = v30;
      v301 = *(v30 + 16);
      v300 = *(v30 + 24);
      OUTLINED_FUNCTION_97_1();
      if (v198)
      {
        v111 = v635;
        OUTLINED_FUNCTION_64_3();
        sub_1AC6313BC(v302, v303, v304);
        v30 = *&v635[0];
      }

      *(v30 + 16) = v139;
      *(v30 + 8 * v301 + 32) = v144;
      v282 = v32;
      v212 = v615;
      v280 = v581;
      v144 = MEMORY[0x1E69E7CC0];
      if (v32 == v607)
      {
        v583 = v30;
        *&v635[0] = MEMORY[0x1E69E7CC0];
        v111 = v635;
        v30 = v607;
        sub_1AC64F75C(v607);
        v305 = 0;
        while (v305 < *(v581 + 16))
        {
          v609 = v305;
          OUTLINED_FUNCTION_1_4();
          v306 = v592;
          sub_1AC633280();
          v139 = *(v306 + v212[7]);
          v307 = *(v139 + 16);
          if (v307)
          {
            *&v636 = v144;
            v111 = &v636;
            sub_1AC64F774(v307);
            v308 = 0;
            v623 = (v139 + 32);
            v611 = v307;
            while (v308 < *(v139 + 16))
            {
              v309 = (v308 + 1);
              v310 = *(v623 + v308);
              v630[0] = v144;
              v311 = *(v310 + 16);

              v287 = 0;
LABEL_131:
              v111 = (v614 + 160 * v287);
              while (v311 != v287)
              {
                if (v287 >= *(v310 + 16))
                {
                  __break(1u);
                  goto LABEL_176;
                }

                memcpy(v628, v111 + v310, 0xA0uLL);
                if ((v628[17] & 1) == 0)
                {
                  OUTLINED_FUNCTION_119_1();
                  if (!v131)
                  {
                    v312 = OUTLINED_FUNCTION_50_2();
                    sub_1AC637BCC(v312, v313);
                    v314 = swift_isUniquelyReferenced_nonNull_native();
                    v630[0] = v144;
                    if ((v314 & 1) == 0)
                    {
                      v315 = *(v144 + 2);
                      v316 = OUTLINED_FUNCTION_35_2();
                      sub_1AC6313DC(v316, v317, v318);
                      v144 = v630[0];
                    }

                    v320 = *(v144 + 2);
                    v319 = *(v144 + 3);
                    OUTLINED_FUNCTION_56_2();
                    if (v198)
                    {
                      OUTLINED_FUNCTION_33_2();
                      sub_1AC6313DC(v321, v322, v323);
                      v144 = v630[0];
                    }

                    ++v287;
                    *(v144 + 2) = 160;
                    OUTLINED_FUNCTION_72_1(&v144[40 * v320]);
                    goto LABEL_131;
                  }
                }

                v111 += 20;
                ++v287;
              }

              v32 = v636;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v324 = *(v32 + 16);
                v111 = &v636;
                v325 = OUTLINED_FUNCTION_35_2();
                sub_1AC6313BC(v325, v326, v327);
                v32 = v636;
              }

              v30 = v615;
              v328 = v611;
              v330 = *(v32 + 16);
              v329 = *(v32 + 24);
              OUTLINED_FUNCTION_56_2();
              if (v198)
              {
                v111 = &v636;
                OUTLINED_FUNCTION_33_2();
                sub_1AC6313BC(v331, v332, v333);
                v32 = v636;
              }

              *(v32 + 16) = 160;
              *(v32 + 8 * v330 + 32) = v144;
              v308 = v309;
              v144 = MEMORY[0x1E69E7CC0];
              if (v309 == v328)
              {
                sub_1AC6332D8();
                v212 = v30;
                v30 = v607;
                goto LABEL_150;
              }
            }

            goto LABEL_257;
          }

          sub_1AC6332D8();
          v32 = v144;
LABEL_150:
          v111 = *&v635[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v334 = v111[2];
            v335 = OUTLINED_FUNCTION_35_2();
            sub_1AC63139C(v335, v336, v337);
            v111 = *&v635[0];
          }

          v339 = v111[2];
          v338 = v111[3];
          OUTLINED_FUNCTION_97_1();
          if (v198)
          {
            OUTLINED_FUNCTION_64_3();
            sub_1AC63139C(v341, v342, v343);
            v340 = v609;
            v111 = *&v635[0];
          }

          v305 = (v340 + 1);
          v111[2] = v139;
          v111[v339 + 4] = v32;
          v32 = v627;
          if (v305 == v30)
          {
            goto LABEL_253;
          }
        }

        goto LABEL_267;
      }
    }

    goto LABEL_259;
  }

  v587 = MEMORY[0x1E69E7CC0];
  v344 = MEMORY[0x1E69E7CC0];
LABEL_157:
  v345 = *(v344 + 16);
  v111 = MEMORY[0x1E69E7CC0];
  v346 = v584;
  v583 = v344;
  if (v345)
  {
    v628[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_63_1();
    sub_1AC631324();
    v111 = v628[0];
    v347 = (v344 + 32);
    do
    {
      v348 = v111;
      v349 = *v347;

      OUTLINED_FUNCTION_86_2();
      v111 = v348;

      v628[0] = v348;
      v351 = v348[2];
      v350 = v348[3];
      v139 = v351 + 1;
      if (v351 >= v350 >> 1)
      {
        OUTLINED_FUNCTION_64_3();
        sub_1AC631324();
        v111 = v628[0];
      }

      v111[2] = v139;
      OUTLINED_FUNCTION_18_1();
      (*(v354 + 32))(v111 + (v353 & ~v352) + *(v354 + 72) * v351, v346, v32);
      v628[0] = v111;
      ++v347;
      --v345;
    }

    while (v345);
  }

  v144 = v587;
  v355 = *(v587 + 2);
  v287 = MEMORY[0x1E69E7CC0];
  v30 = v585;
  v586 = v111;
  if (v355)
  {
    v628[0] = MEMORY[0x1E69E7CC0];
    v356 = OUTLINED_FUNCTION_63_1();
    v611 = v357;
    sub_1AC63137C(v356, v357, 0);
    v111 = v586;
    v358 = 0;
    v359 = v628[0];
    v614 = (v144 + 8);
    v32 = v625 + 32;
    while (v358 < *(v144 + 2))
    {
      v139 = *(v614 + 8 * v358);
      v360 = *(v139 + 16);
      if (v360)
      {
        v623 = v358;
        v593 = v359;
        *&v631 = v287;

        OUTLINED_FUNCTION_127_1();
        sub_1AC631324();
        v287 = v631;
        v361 = 32;
        do
        {
          v362 = *(v139 + v361);

          OUTLINED_FUNCTION_86_2();

          *&v631 = v287;
          v363 = v30;
          v364 = *(v287 + 16);
          if (v364 >= *(v287 + 24) >> 1)
          {
            sub_1AC631324();
            v287 = v631;
          }

          *(v287 + 16) = v364 + 1;
          OUTLINED_FUNCTION_18_1();
          (*(v367 + 32))(v287 + (v366 & ~v365) + *(v367 + 72) * v364, v363, v627);
          *&v631 = v287;
          v361 += 8;
          --v360;
          v30 = v363;
        }

        while (v360);

        v111 = v586;
        v144 = v587;
        v359 = v593;
      }

      v628[0] = v359;
      v369 = v359[2];
      v368 = v359[3];
      OUTLINED_FUNCTION_97_1();
      if (v198)
      {
        OUTLINED_FUNCTION_64_3();
        v373 = v372;
        sub_1AC63137C(v374, v375, v376);
        v371 = v373;
        v370 = v611;
        v111 = v586;
        v359 = v628[0];
      }

      v358 = v371 + 1;
      v359[2] = v139;
      v359[v369 + 4] = v287;
      v287 = MEMORY[0x1E69E7CC0];
      if (v358 == v370)
      {
        goto LABEL_178;
      }
    }

    goto LABEL_260;
  }

LABEL_177:
  v359 = v287;
LABEL_178:
  v377 = v111[2];
  v139 = MEMORY[0x1E69E7CC0];
  v593 = v359;
  if (v377)
  {
    v378 = OUTLINED_FUNCTION_100_1();
    sub_1AC61C258(v378, v379);
    v380 = OUTLINED_FUNCTION_55_2();
    sub_1AC61C258(v380, v381);
    v382 = OUTLINED_FUNCTION_100_1();
    v383 = v583;
    sub_1AC61C258(v382, v384);
    v385 = OUTLINED_FUNCTION_55_2();
    sub_1AC61C258(v385, v386);
    v387 = OUTLINED_FUNCTION_100_1();
    sub_1AC61C258(v387, v388);
    v389 = OUTLINED_FUNCTION_55_2();
    sub_1AC61C258(v389, v390);
    v590 = *(v625 + 16);
    v391 = *(v625 + 80);
    OUTLINED_FUNCTION_89_0();
    v393 = (v111 + v392);
    v394 = (v383 + 32);
    v395 = (v144 + 8);
    v396 = v359 + 4;
    v589 = *(v397 + 56);
    v592 = v397;
    v588 = (v397 - 8);
    v398 = v596;
    v111 = v597;
    v399 = v590;
    do
    {
      v614 = v139;
      v623 = v377;
      v611 = v393;
      v400 = v394;
      v401 = v395;
      v399(v111);
      v609 = v400;
      v610 = v396;
      v402 = *v396;
      v403 = *v400;
      v607 = v401;
      v404 = *v401;
      v405 = OUTLINED_FUNCTION_74_0();
      v399(v405);
      v407 = v614;
      v406 = v615;
      *(v398 + v615[5]) = v402;
      *(v398 + v406[6]) = v403;
      *(v398 + v406[7]) = v404;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_31_2();
        sub_1AC60DCAC();
        v407 = v414;
      }

      v409 = *(v407 + 16);
      v408 = *(v407 + 24);
      v410 = v407;
      OUTLINED_FUNCTION_97_1();
      v411 = v596;
      v412 = v623;
      if (v198)
      {
        OUTLINED_FUNCTION_64_3();
        sub_1AC60DCAC();
        v410 = v415;
      }

      v111 = v597;
      (*v588)(v597, v627);
      *(v410 + 16) = v402;
      v139 = v410;
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_32_0(v410 + v413);
      sub_1AC637C7C();
      v395 = v607 + 8;
      v394 = v609 + 1;
      v396 = v610 + 1;
      v393 = (v611 + v589);
      v377 = (v412 - 1);
      v398 = v411;
    }

    while (v377);
  }

  v416 = v591;
  v417 = v591[2];
  v614 = v139;
  if (v417)
  {
    v30 = MEMORY[0x1E69E7CC0];
    v628[0] = MEMORY[0x1E69E7CC0];

    v418 = OUTLINED_FUNCTION_63_1();
    sub_1AC63137C(v418, v417, 0);
    OUTLINED_FUNCTION_23_0();
    v419 = v628[0];
    v607 = (v416 + v420);
    OUTLINED_FUNCTION_92_1();
    v596 = v422;
    v597 = v423;
    v144 = v615;
    v32 = v627;
    v139 = v622;
    v424 = v613;
    v609 = v417;
    while (v421 < v591[2])
    {
      v613 = v424;
      v610 = v421;
      v425 = v608;
      OUTLINED_FUNCTION_1_4();
      sub_1AC633280();
      *&v631 = v30;
      v426 = *(v425 + v144[6]);
      v427 = v605;
      OUTLINED_FUNCTION_86_2();
      (*v597)(v606, v427, v32);
      sub_1AC60DD6C();
      v429 = OUTLINED_FUNCTION_117_1(v428);
      v431 = *(v429 + 16);
      v430 = *(v429 + 24);
      OUTLINED_FUNCTION_56_2();
      v611 = v419;
      if (v198)
      {
        OUTLINED_FUNCTION_33_2();
        sub_1AC60DD6C();
        OUTLINED_FUNCTION_117_1(v445);
      }

      v427[2] = v417;
      OUTLINED_FUNCTION_18_1();
      v435 = *(v434 + 32);
      (v435)(v427 + (v433 & ~v432) + *(v434 + 72) * v431, v606, v32);
      *&v631 = v427;
      v436 = *(v608 + v615[7]);
      v437 = *(v436 + 16);
      if (v437)
      {
        *&v635[0] = MEMORY[0x1E69E7CC0];
        sub_1AC64F744(v437);
        v438 = (v436 + 32);
        v439 = *&v635[0];
        do
        {
          v440 = *v438;

          OUTLINED_FUNCTION_86_2();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v441 = *(v439 + 16);
            OUTLINED_FUNCTION_35_2();
            sub_1AC631324();
            v439 = *&v635[0];
          }

          v442 = *(v439 + 16);
          v32 = v442 + 1;
          if (v442 >= *(v439 + 24) >> 1)
          {
            sub_1AC631324();
            v439 = *&v635[0];
          }

          *(v439 + 16) = v32;
          v139 = v622;
          OUTLINED_FUNCTION_120_1();
          v435();
          *&v635[0] = v439;
          ++v438;
          --v437;
        }

        while (v437);
      }

      else
      {
        v439 = MEMORY[0x1E69E7CC0];
      }

      v111 = &v631;
      sub_1AC659050(v439);
      (*v596)(v605, v32);
      v443 = v631;
      OUTLINED_FUNCTION_0_3();
      sub_1AC6332D8();
      v419 = v611;
      v628[0] = v611;
      v444 = v611[2];
      v144 = v615;
      if (v444 >= v611[3] >> 1)
      {
        v111 = v628;
        OUTLINED_FUNCTION_33_2();
        sub_1AC63137C(v446, v447, v448);
        v419 = v628[0];
      }

      v421 = (v610 + 1);
      v419[2] = v444 + 1;
      v419[v444 + 4] = v443;
      v417 = v609;
      v424 = v613;
      v30 = MEMORY[0x1E69E7CC0];
      if (v421 == v609)
      {
        v139 = v614;
        goto LABEL_204;
      }
    }

    goto LABEL_261;
  }

  v419 = MEMORY[0x1E69E7CC0];
  v32 = v627;
  v424 = v613;
LABEL_204:
  v144 = *(v575 + 16);
  if (v144)
  {
    v628[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_63_1();
    sub_1AC631324();
    v449 = v575;
    v30 = 0;
    v610 = v628[0];
    v450 = v575 + v612;
    v139 = v625 + 32;
    v111 = v599;
    while (v30 < *(v449 + 16))
    {
      v451 = v582;
      OUTLINED_FUNCTION_48_3();
      v452();
      sub_1AC651120(v451, v419, v604);
      v613 = v424;
      if (v424)
      {
        goto LABEL_285;
      }

      OUTLINED_FUNCTION_125_0();
      v453();
      v454 = v610;
      v628[0] = v610;
      v455 = v610[2];
      v32 = v455 + 1;
      if (v455 >= v610[3] >> 1)
      {
        sub_1AC631324();
        v111 = v599;
        v454 = v628[0];
      }

      ++v30;
      v454[2] = v32;
      v456 = *(v625 + 80);
      v457 = v454;
      OUTLINED_FUNCTION_89_0();
      v460 = v457 + v458 + *(v459 + 72) * v455;
      v461 = *(v459 + 32);
      OUTLINED_FUNCTION_120_1();
      v462();
      v610 = v457;
      v628[0] = v457;
      v450 += v616;
      v449 = v575;
      v424 = v613;
      if (v144 == v30)
      {
        v139 = v614;
        goto LABEL_213;
      }
    }

    goto LABEL_262;
  }

  v613 = v424;
  v610 = MEMORY[0x1E69E7CC0];
LABEL_213:
  v30 = *(v139 + 16);
  v463 = v595;
  v611 = v419;
  v144 = v615;
  if (v30)
  {
    v464 = MEMORY[0x1E69E7CC0];
    v628[0] = MEMORY[0x1E69E7CC0];

    v465 = OUTLINED_FUNCTION_63_1();
    sub_1AC63137C(v465, v30, 0);
    OUTLINED_FUNCTION_23_0();
    v466 = v628[0];
    v607 = (v139 + v467);
    v608 = v30;
    OUTLINED_FUNCTION_92_1();
    v605 = v469;
    v606 = v470;
    while (v468 < *(v139 + 16))
    {
      v609 = v468;
      OUTLINED_FUNCTION_1_4();
      sub_1AC633280();
      *&v631 = v464;
      v471 = *(v463 + v144[6]);
      v472 = v602;
      OUTLINED_FUNCTION_86_2();
      (*v606)(v603, v472, v32);
      sub_1AC60DD6C();
      v474 = OUTLINED_FUNCTION_117_1(v473);
      v476 = *(v474 + 16);
      v475 = *(v474 + 24);
      v622 = v466;
      if (v476 >= v475 >> 1)
      {
        OUTLINED_FUNCTION_33_2();
        sub_1AC60DD6C();
        OUTLINED_FUNCTION_117_1(v489);
      }

      *(v472 + 16) = v476 + 1;
      OUTLINED_FUNCTION_18_1();
      v480 = *(v479 + 32);
      (v480)(v472 + (v478 & ~v477) + *(v479 + 72) * v476, v603, v32);
      *&v631 = v472;
      v481 = *(v463 + v615[7]);
      v482 = *(v481 + 16);
      if (v482)
      {
        *&v635[0] = MEMORY[0x1E69E7CC0];
        sub_1AC64F744(v482);
        v483 = (v481 + 32);
        v484 = *&v635[0];
        do
        {
          v485 = *v483;

          OUTLINED_FUNCTION_86_2();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v486 = *(v484 + 16);
            OUTLINED_FUNCTION_35_2();
            sub_1AC631324();
            v484 = *&v635[0];
          }

          v487 = *(v484 + 16);
          v32 = v487 + 1;
          if (v487 >= *(v484 + 24) >> 1)
          {
            sub_1AC631324();
            v484 = *&v635[0];
          }

          *(v484 + 16) = v32;
          OUTLINED_FUNCTION_120_1();
          v480();
          *&v635[0] = v484;
          ++v483;
          --v482;
        }

        while (v482);
        v464 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v464 = MEMORY[0x1E69E7CC0];
        v484 = MEMORY[0x1E69E7CC0];
      }

      v111 = &v631;
      sub_1AC659050(v484);
      (*v605)(v602, v32);
      v30 = v631;
      OUTLINED_FUNCTION_0_3();
      v463 = v595;
      sub_1AC6332D8();
      v466 = v622;
      v628[0] = v622;
      v488 = *(v622 + 16);
      v144 = v615;
      if (v488 >= *(v622 + 24) >> 1)
      {
        v111 = v628;
        OUTLINED_FUNCTION_33_2();
        sub_1AC63137C(v490, v491, v492);
        v466 = v628[0];
      }

      v468 = (v609 + 1);
      *(v466 + 16) = v488 + 1;
      *(v466 + 8 * v488 + 32) = v30;
      v139 = v614;
      if (v468 == v608)
      {
        goto LABEL_232;
      }
    }

    goto LABEL_263;
  }

  v466 = MEMORY[0x1E69E7CC0];
LABEL_232:
  v493 = *(v574 + 16);
  v494 = v613;
  if (v493)
  {
    v628[0] = MEMORY[0x1E69E7CC0];
    sub_1AC64F744(v493);
    v495 = v574;
    v111 = v599;
    v30 = 0;
    v32 = v574 + v612;
    v622 = v466;
    v623 = (v625 + 32);
    while (v30 < *(v495 + 16))
    {
      v496 = v493;
      v497 = v594;
      OUTLINED_FUNCTION_48_3();
      v498();
      sub_1AC651120(v497, v466, v601);
      if (v494)
      {
        goto LABEL_285;
      }

      OUTLINED_FUNCTION_125_0();
      v499();
      v139 = v628[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v500 = *(v139 + 16);
        OUTLINED_FUNCTION_35_2();
        sub_1AC631324();
        v111 = v599;
        v139 = v628[0];
      }

      v502 = *(v139 + 16);
      v501 = *(v139 + 24);
      OUTLINED_FUNCTION_56_2();
      if (v198)
      {
        OUTLINED_FUNCTION_33_2();
        sub_1AC631324();
        v111 = v599;
        v139 = v628[0];
      }

      ++v30;
      *(v139 + 16) = v497;
      OUTLINED_FUNCTION_18_1();
      (*(v505 + 32))(v139 + (v504 & ~v503) + *(v505 + 72) * v502, v601, v627);
      v628[0] = v139;
      v32 += v616;
      v493 = v496;
      v495 = v574;
      v494 = 0;
      v466 = v622;
      if (v496 == v30)
      {
        goto LABEL_243;
      }
    }

    goto LABEL_264;
  }

  v139 = MEMORY[0x1E69E7CC0];
LABEL_243:
  v506 = v579;
  v507 = v591;
  sub_1AC625BBC(v591, v579);
  v508 = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_96(v508, v509, v144);
  if (v131)
  {
    goto LABEL_277;
  }

  v627 = v139;
  v510 = v144;
  v511 = *(v506 + v144[6]);

  OUTLINED_FUNCTION_0_3();
  sub_1AC6332D8();
  if (!v511[2])
  {
LABEL_278:

    __break(1u);
    goto LABEL_279;
  }

  v512 = OUTLINED_FUNCTION_100_1();
  sub_1AC61C258(v512, v513);
  v515 = v511[6];
  v514 = v511[7];
  v516 = v511[8];

  v517 = v578;
  sub_1AC68D304(v507, v578);
  v518 = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_96(v518, v519, v510);
  if (v131)
  {
LABEL_279:
    __break(1u);
    goto LABEL_280;
  }

  v520 = *(v517 + *(v510 + 24));

  OUTLINED_FUNCTION_0_3();
  sub_1AC6332D8();
  v521 = *(v520 + 16);
  if (!v521)
  {
LABEL_280:

    __break(1u);
    goto LABEL_281;
  }

  sub_1AC61C258(v521 - 1, 1);
  v522 = v520 + 160 * v521;
  v524 = *(v522 - 88);
  v523 = *(v522 - 80);
  v525 = *(v522 - 72);

  sub_1AC7A0578();
  v526 = v576;
  v527 = v614;
  sub_1AC625BBC(v614, v576);
  OUTLINED_FUNCTION_96(v526, 1, v510);
  if (v131)
  {
LABEL_281:
    __break(1u);
    goto LABEL_282;
  }

  v528 = *(v526 + *(v510 + 24));

  OUTLINED_FUNCTION_0_3();
  sub_1AC6332D8();
  if (!v528[2])
  {
LABEL_282:

    __break(1u);
    goto LABEL_283;
  }

  v529 = OUTLINED_FUNCTION_100_1();
  sub_1AC61C258(v529, v530);
  v531 = v528[6];
  v532 = v528[7];
  v533 = v528[8];

  v534 = v577;
  sub_1AC68D304(v527, v577);
  v535 = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_96(v535, v536, v510);
  if (v131)
  {
LABEL_283:
    __break(1u);
    goto LABEL_284;
  }

  v537 = *(v534 + *(v510 + 24));

  OUTLINED_FUNCTION_0_3();
  sub_1AC6332D8();
  v538 = *(v537 + 16);
  if (v538)
  {

    swift_setDeallocating();
    sub_1AC7240CC();

    sub_1AC61C258(v538 - 1, 1);
    memcpy(v628, (v537 + 160 * v538 - 128), 0xA0uLL);
    v539 = OUTLINED_FUNCTION_50_2();
    sub_1AC637BCC(v539, v540);

    sub_1AC637C28(v628);
    sub_1AC7A0578();
    v541 = v569;
    v639 = *(v569 + 48);
    v640 = *(v569 + 64);
    sub_1AC752B88();
    v543 = v542;

    v544 = *(v541 + 104);
    v545 = *(v541 + 216);
    v636 = *(v541 + 200);
    v637 = v545;
    v638 = *(v541 + 232);
    v546 = v635[1];
    v547 = v567;
    *v567 = v635[0];
    v547[1] = v546;
    v548 = v639;
    v547[2] = v635[2];
    v547[3] = v548;
    *(v547 + 8) = v640;
    *(v547 + 9) = v543;
    v549 = v591;
    *(v547 + 10) = MEMORY[0x1E69E7CC0];
    *(v547 + 11) = v549;
    *(v547 + 12) = v575;
    *(v547 + 104) = v544;
    *(v547 + 108) = v572;
    v550 = v570;
    *(v547 + 29) = v570;
    *(v547 + 32) = v644;
    *(v547 + 15) = v643;
    *(v547 + 148) = v642;
    *(v547 + 132) = v641;
    v547[10] = 0u;
    v547[11] = 0u;
    *(v547 + 192) = 1;
    *(v547 + 232) = *(v541 + 232);
    *(v547 + 200) = *(v541 + 200);
    *(v547 + 216) = *(v541 + 216);
    *(v547 + 30) = 0;
    *(v547 + 31) = 0;
    *(v547 + 256) = 1;
    OUTLINED_FUNCTION_131_1();
    OUTLINED_FUNCTION_131_1();
    OUTLINED_FUNCTION_74_0();
    sub_1AC752B88();
    v552 = v551;

    v553 = v632;
    v554 = v568;
    *v568 = v631;
    v554[1] = v553;
    v555 = v639;
    v554[2] = v633;
    v554[3] = v555;
    *(v554 + 132) = v641;
    v556 = v636;
    *(v554 + 216) = v637;
    *(v554 + 8) = v640;
    *(v554 + 9) = v552;
    v557 = v614;
    *(v554 + 10) = MEMORY[0x1E69E7CC0];
    *(v554 + 11) = v557;
    *(v554 + 12) = v574;
    *(v554 + 104) = v544;
    *(v554 + 108) = v572;
    *(v554 + 29) = v550;
    v558 = v643;
    *(v554 + 32) = v644;
    *(v554 + 15) = v558;
    *(v554 + 148) = v642;
    *(v554 + 20) = 0;
    *(v554 + 21) = 0;
    v559 = *(v541 + 184);
    *(v554 + 22) = 0;
    *(v554 + 23) = v559;
    *(v554 + 192) = *(v541 + 192);
    *(v554 + 232) = v638;
    *(v554 + 200) = v556;
    *(v554 + 30) = 0;
    *(v554 + 31) = 0;
    *(v554 + 256) = 1;
    v571(v547);
    goto LABEL_10;
  }

LABEL_284:

  __break(1u);
LABEL_285:
  OUTLINED_FUNCTION_125_0();
  v562();

  __break(1u);
}

void static DictationTranscriber.MultisegmentResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_129_0();
  v1 = v0[1];
  v76 = *v0;
  v77 = v1;
  v78 = v0[2];
  v2 = *(v0 + 6);
  v3 = *(v0 + 7);
  v5 = *(v0 + 8);
  v4 = *(v0 + 9);
  v64 = *(v0 + 11);
  v65 = *(v0 + 10);
  v63 = *(v0 + 12);
  v61 = *(v0 + 104);
  v6 = *(v0 + 124);
  v70 = *(v0 + 108);
  v71 = v6;
  v72 = *(v0 + 140);
  v57 = *(v0 + 20);
  v58 = *(v0 + 21);
  v59 = *(v0 + 22);
  v7 = *(v0 + 23);
  v53 = *(v0 + 192);
  v49 = *(v0 + 216);
  v50 = *(v0 + 200);
  v48 = *(v0 + 232);
  v47 = *(v0 + 30);
  v39 = *(v0 + 31);
  v41 = *(v0 + 256);
  v9 = v8[1];
  v79 = *v8;
  v80 = v9;
  v81 = v8[2];
  v11 = *(v8 + 6);
  v10 = *(v8 + 7);
  v13 = *(v8 + 8);
  v12 = *(v8 + 9);
  v15 = *(v8 + 10);
  v14 = *(v8 + 11);
  v62 = *(v8 + 12);
  v60 = *(v8 + 104);
  v16 = *(v8 + 140);
  v17 = *(v8 + 108);
  v74 = *(v8 + 124);
  v75 = v16;
  v73 = v17;
  v54 = *(v8 + 20);
  v55 = *(v8 + 21);
  v56 = *(v8 + 22);
  v18 = *(v8 + 23);
  v52 = *(v8 + 192);
  v51 = *(v8 + 26);
  v42 = *(v8 + 25);
  v43 = *(v8 + 27);
  v44 = *(v8 + 28);
  v45 = *(v8 + 232);
  v46 = *(v8 + 30);
  v38 = *(v8 + 31);
  v40 = *(v8 + 256);
  if ((sub_1AC7A0548() & 1) == 0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_77();
  if ((sub_1AC7A06A8() & 1) == 0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_4_2();
  sub_1AC629144();
  if ((v19 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1AC628640();
  if ((v20 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1AC628938();
  if ((v21 & 1) == 0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_11_4();
  sub_1AC629144();
  if ((v22 & 1) == 0 || v61 != v60 || (sub_1AC7A0548() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v57)
  {
    if (v54)
    {
      v23 = OUTLINED_FUNCTION_15();
      sub_1AC63482C(v23);
      v24 = OUTLINED_FUNCTION_16_2();
      sub_1AC63482C(v24);
      v25 = OUTLINED_FUNCTION_15();
      sub_1AC63482C(v25);
      sub_1AC6305D8();
      if (v26)
      {
        sub_1AC6306C8(v58, v55);
        v28 = v27;
        v29 = OUTLINED_FUNCTION_16_2();
        sub_1AC63486C(v29);

        v30 = OUTLINED_FUNCTION_15();
        sub_1AC63486C(v30);
        if ((v28 & 1) == 0 || v59 != v56)
        {
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      v36 = OUTLINED_FUNCTION_16_2();
      sub_1AC63486C(v36);

      v35 = OUTLINED_FUNCTION_15();
LABEL_20:
      sub_1AC63486C(v35);
      goto LABEL_21;
    }

    v32 = OUTLINED_FUNCTION_15();
    sub_1AC63482C(v32);
    sub_1AC63482C(0);
    v33 = OUTLINED_FUNCTION_15();
    sub_1AC63482C(v33);

LABEL_18:
    v34 = OUTLINED_FUNCTION_15();
    sub_1AC63486C(v34);
    v35 = OUTLINED_FUNCTION_16_2();
    goto LABEL_20;
  }

  sub_1AC63482C(0);
  if (v54)
  {
    v31 = OUTLINED_FUNCTION_16_2();
    sub_1AC63482C(v31);
    goto LABEL_18;
  }

  sub_1AC63482C(0);
  sub_1AC63486C(0);
LABEL_23:
  if (v53)
  {
    if (!v52)
    {
      goto LABEL_21;
    }

LABEL_29:
    if (*(&v50 + 1))
    {
      v68[0] = v50;
      v68[1] = v49;
      v69 = v48;
      if (v51)
      {
        v66[0] = v42;
        v66[1] = v51;
        v66[2] = v43;
        v66[3] = v44;
        v67 = v45 & 1;
        static TranscriptionLatticeMitigatorResult.== infix(_:_:)(v68, v66);
        swift_bridgeObjectRetain_n();

        goto LABEL_21;
      }
    }

    else if (!v51)
    {

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v37 = v52;
  if (v7 != v18)
  {
    v37 = 1;
  }

  if ((v37 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_21:
  OUTLINED_FUNCTION_130();
}

uint64_t DictationTranscriber.MultisegmentResult.hash(into:)(const void *a1)
{
  v34 = *v1;
  v35 = v1[1];
  v36 = v1[2];
  v3 = *(v1 + 6);
  v4 = *(v1 + 7);
  v5 = *(v1 + 8);
  v6 = *(v1 + 9);
  v7 = *(v1 + 10);
  v8 = *(v1 + 11);
  v9 = *(v1 + 12);
  v26 = *(v1 + 104);
  v32 = *(v1 + 124);
  v33 = *(v1 + 140);
  v31 = *(v1 + 108);
  v10 = *(v1 + 20);
  v20 = *(v1 + 21);
  v21 = *(v1 + 22);
  v27 = *(v1 + 192);
  v22 = *(v1 + 25);
  v23 = *(v1 + 27);
  v24 = *(v1 + 28);
  v25 = *(v1 + 232);
  v28 = *(v1 + 26);
  v29 = *(v1 + 30);
  v18 = *(v1 + 23);
  v19 = *(v1 + 31);
  v30 = *(v1 + 256);
  sub_1AC7A0568();
  sub_1AC7A06E8();
  OUTLINED_FUNCTION_4_2();
  sub_1AC633F80(a1, v6, v11);
  sub_1AC633C28();
  sub_1AC6337D8();
  OUTLINED_FUNCTION_11_4();
  sub_1AC633F80(a1, v9, v12);
  MEMORY[0x1B26E9A40](v26);
  sub_1AC7A0568();
  if (v10)
  {
    OUTLINED_FUNCTION_83();
    v13 = OUTLINED_FUNCTION_118_1();
    sub_1AC63459C(v13, v14);
    sub_1AC634414(a1, v20);
    if ((v21 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v21;
    }

    else
    {
      v15 = 0;
    }

    MEMORY[0x1B26E9A70](v15);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  if (v27)
  {
    OUTLINED_FUNCTION_80_1();
    if (v28)
    {
LABEL_9:
      OUTLINED_FUNCTION_83();

      TranscriptionLatticeMitigatorResult.hash(into:)();

      goto LABEL_15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_83();
    if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v16 = v18;
    }

    else
    {
      v16 = 0;
    }

    MEMORY[0x1B26E9A70](v16);
    if (v28)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_80_1();
LABEL_15:
  MEMORY[0x1B26E9A40](v29);
  if (v30)
  {
    return OUTLINED_FUNCTION_80_1();
  }

  OUTLINED_FUNCTION_83();
  return MEMORY[0x1B26E9A40](v19);
}

uint64_t DictationTranscriber.MultisegmentResult.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  DictationTranscriber.MultisegmentResult.hash(into:)(v1);
  return sub_1AC7A0EC8();
}

double sub_1AC62F6D4@<D0>(_OWORD *a1@<X8>)
{
  DictationTranscriber.MultisegmentResult.range.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1AC62F728()
{
  sub_1AC7A0E78();
  DictationTranscriber.MultisegmentResult.hash(into:)(v1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC62F778()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6Speech20DictationTranscriber_common);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC7432EC();
}

uint64_t sub_1AC62F81C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6Speech20DictationTranscriber_common);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC74338C();
}

uint64_t sub_1AC62F8AC()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  OUTLINED_FUNCTION_82();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1AC62F9AC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6Speech20DictationTranscriber_common);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC743518();
}

uint64_t sub_1AC62FA3C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC62FA50()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC6Speech20DictationTranscriber_common);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_109_1(v2);

  return sub_1AC743644();
}

uint64_t sub_1AC62FB10()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return static DictationTranscriber.supportedLocales.getter();
}

uint64_t sub_1AC62FB94()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v3 = *(v1 + 24);
  v6 = *v0;
  *(v2 + 32) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1AC62FC8C, 0, 0);
}

uint64_t sub_1AC62FC8C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC6Speech20DictationTranscriber_locale;
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_1AC6F47B8(sub_1AC637BAC, v3, v1);

  OUTLINED_FUNCTION_82();

  return v5(v4);
}

uint64_t sub_1AC62FDD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Speech20DictationTranscriber_common);
  sub_1AC744558();
  return v2 & 1;
}

uint64_t DictationTranscriber.deinit()
{
  v1 = OBJC_IVAR____TtC6Speech20DictationTranscriber_locale;
  v2 = sub_1AC79FB18();
  OUTLINED_FUNCTION_80(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC6Speech20DictationTranscriber_contentHints);

  sub_1AC6332D8();
  v5 = *(v0 + OBJC_IVAR____TtC6Speech20DictationTranscriber_transcriptionOptions);

  v6 = *(v0 + OBJC_IVAR____TtC6Speech20DictationTranscriber_reportingOptions);

  v7 = *(v0 + OBJC_IVAR____TtC6Speech20DictationTranscriber_resultAttributeOptions);

  v8 = *(v0 + OBJC_IVAR____TtC6Speech20DictationTranscriber_common);

  return v0;
}

uint64_t DictationTranscriber.__deallocating_deinit()
{
  DictationTranscriber.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC630070()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC637EE4;

  return DictationTranscriber.availableCompatibleAudioFormats.getter();
}

uint64_t sub_1AC6300FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AC5C5380;

  return sub_1AC62FA3C(a1);
}

uint64_t sub_1AC630194()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC60D7F0;

  return sub_1AC62FB10();
}

uint64_t sub_1AC6302C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC60D7F0;

  return static DictationTranscriber.supportedLocales.getter();
}

uint64_t sub_1AC630350()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;

  return static DictationTranscriber.supportedLocale(equivalentTo:)();
}

uint64_t sub_1AC630440(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1AC5C9008(0, (v3 - result) & ~((v3 - result) >> 63), v3, a2);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      sub_1AC747F2C(0, v5, a2);
      v7 = v6;

      return v7;
    }
  }

  __break(1u);
  return result;
}

void sub_1AC6304D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C4F0, &qword_1AC7A9198);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v6 - v3;
  if (*(*v0 + 16))
  {
    sub_1AC706AD8(&v6 - v3);
    v5 = type metadata accessor for TranscriptionSegment();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      sub_1AC5C720C(v4, &qword_1EB56C4F0, &qword_1AC7A9198);
      sub_1AC630B24(*(*v0 + 16) - 1);
    }

    else
    {
      sub_1AC637C7C();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1AC6305D8()
{
  OUTLINED_FUNCTION_129_0();
  if (v3 != v4 && (OUTLINED_FUNCTION_29_2(v3, v4), v5))
  {
    v6 = 0;
    v7 = *(v0 + 64);
    v8 = *(v0 + 32);
    OUTLINED_FUNCTION_117_0();
    v11 = v10 & v9;
    OUTLINED_FUNCTION_108_1();
    while (v11)
    {
      v12 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v12 | (v6 << 6);
      v17 = (*(v0 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v0 + 56) + 8 * v16);

      OUTLINED_FUNCTION_57_0();
      v21 = sub_1AC6E0808();
      v23 = v22;

      if ((v23 & 1) == 0 || *(*(v1 + 56) + 8 * v21) != v20)
      {
        goto LABEL_14;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v2)
      {
        goto LABEL_14;
      }

      ++v13;
      if (*(v0 + 64 + 8 * v6))
      {
        OUTLINED_FUNCTION_25_0();
        v11 = v15 & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_130();
  }
}

void sub_1AC6306C8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_29_2(a1, a2);
    if (v30)
    {
      v4 = 0;
      v5 = *(v2 + 64);
      v6 = *(v2 + 32);
      OUTLINED_FUNCTION_117_0();
      v9 = v8 & v7;
      v11 = (v10 + 63) >> 6;
      while (v9)
      {
        OUTLINED_FUNCTION_101_1();
LABEL_12:
        v16 = v12 | (v4 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(v2 + 56) + 16 * v16;
        v21 = *v20;
        v22 = *(v20 + 8);

        if (!v18)
        {
          return;
        }

        OUTLINED_FUNCTION_117();
        v23 = sub_1AC6E0808();
        v25 = v24;

        if ((v25 & 1) == 0 || (v26 = (*(v3 + 56) + 16 * v23), v27 = *v26, v28 = *(*v26 + 16), v28 != *(v21 + 16)))
        {
LABEL_26:

          return;
        }

        v29 = v26[1];
        if (v28)
        {
          v30 = v27 == v21;
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          v31 = 32;
          while (v28)
          {
            if (*(v27 + v31) != *(v21 + v31))
            {
              goto LABEL_26;
            }

            v31 += 8;
            if (!--v28)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_29;
        }

LABEL_23:

        v9 = v32;
        if (v29 != v22)
        {
          return;
        }
      }

      v13 = v4;
      while (1)
      {
        v4 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v4 >= v11)
        {
          return;
        }

        ++v13;
        if (*(v2 + 64 + 8 * v4))
        {
          OUTLINED_FUNCTION_25_0();
          v32 = v15 & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
    }
  }
}

void sub_1AC630858(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v5 = a1 + 64;
    v4 = *(a1 + 64);
    v6 = *(a1 + 32);
    OUTLINED_FUNCTION_117_0();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
    while (v9)
    {
      OUTLINED_FUNCTION_101_1();
LABEL_11:
      v17 = v13 | (v3 << 6);
      v18 = (*(v12 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = (*(v12 + 56) + 16 * v17);
      v23 = *v21;
      v22 = v21[1];

      OUTLINED_FUNCTION_77();
      v24 = sub_1AC6E0808();
      v26 = v25;

      if ((v26 & 1) == 0)
      {

        return;
      }

      v27 = (*(a2 + 56) + 16 * v24);
      if (*v27 == v23 && v27[1] == v22)
      {

        v9 = v30;
      }

      else
      {
        v29 = sub_1AC7A0D38();

        v9 = v30;
        if ((v29 & 1) == 0)
        {
          return;
        }
      }
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v11)
      {
        return;
      }

      ++v14;
      if (*(v5 + 8 * v3))
      {
        OUTLINED_FUNCTION_25_0();
        v30 = v16 & v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1AC6309C8()
{
  OUTLINED_FUNCTION_104();
  if (v2 != v3 && (OUTLINED_FUNCTION_29_2(v2, v3), v26))
  {
    v4 = 0;
    v5 = *(v0 + 64);
    v6 = *(v0 + 32);
    OUTLINED_FUNCTION_117_0();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_57_2();
LABEL_11:
        v16 = v12 | (v4 << 6);
        v17 = (*(v0 + 48) + 16 * v16);
        v18 = *v17;
        v19 = v17[1];
        v20 = *(*(v0 + 56) + 8 * v16);

        OUTLINED_FUNCTION_88_0();
        v21 = sub_1AC6E0808();
        v23 = v22;

        if ((v23 & 1) == 0 || (v24 = *(*(v1 + 56) + 8 * v21), v25 = *(v24 + 16), v25 != *(v20 + 16)))
        {
LABEL_28:

          goto LABEL_29;
        }

        v26 = !v25 || v24 == v20;
        if (!v26)
        {
          break;
        }

LABEL_25:

        if (!v9)
        {
          goto LABEL_6;
        }
      }

      v27 = (v24 + 40);
      v28 = (v20 + 40);
      while (v25)
      {
        v29 = *(v27 - 1) == *(v28 - 1) && *v27 == *v28;
        if (!v29 && (sub_1AC7A0D38() & 1) == 0)
        {
          goto LABEL_28;
        }

        v27 += 2;
        v28 += 2;
        if (!--v25)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
      v13 = v4;
      while (1)
      {
        v4 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v4 >= v11)
        {
          goto LABEL_29;
        }

        ++v13;
        if (*(v0 + 64 + 8 * v4))
        {
          OUTLINED_FUNCTION_25_0();
          v9 = v15 & v14;
          goto LABEL_11;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    OUTLINED_FUNCTION_105();
  }
}

void sub_1AC630B24(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1AC704568(v3);
    v3 = v8;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = *(type metadata accessor for TranscriptionSegment() - 8);
    v6 = *(v5 + 72);
    v7 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v6 * a1;
    sub_1AC637C7C();
    sub_1AC703EF8(v7 + v6, v4 - 1 - a1, v7);
    *(v3 + 16) = v4 - 1;
    *v1 = v3;
  }
}

void sub_1AC630C28()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v3 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1AC7045B0(v3);
    v3 = v12;
  }

  v4 = *(v3 + 16);
  if (v4 <= v2)
  {
    __break(1u);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_77();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    OUTLINED_FUNCTION_22(v7);
    v10 = *(v9 + 72);
    v11 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v10 * v2;
    sub_1AC637E08();
    sub_1AC70400C(v11 + v10, v4 - 1 - v2, v11);
    *(v3 + 16) = v4 - 1;
    *v0 = v3;
    OUTLINED_FUNCTION_105();
  }
}

uint64_t sub_1AC630D20(uint64_t a1, unint64_t a2)
{
  v4 = sub_1AC630D6C(a1, a2);
  sub_1AC630E84(&unk_1F212ECB0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1AC630D6C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1AC7A00A8())
  {
    result = sub_1AC630F68(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1AC7A0998();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1AC7A0A48();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AC630E84(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1AC630FD8(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1AC630F68(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C570, &qword_1AC7A9298);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1AC630FD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C570, &qword_1AC7A9298);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_1AC6310CC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1AC6318A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AC6310EC(void *a1, int64_t a2, char a3)
{
  result = sub_1AC6319A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1AC63110C()
{
  v1 = *v0;
  sub_1AC632FE0();
  *v0 = v2;
}

void sub_1AC631164()
{
  v1 = *v0;
  sub_1AC631AB0();
  *v0 = v2;
}

void sub_1AC6311A8()
{
  v1 = *v0;
  sub_1AC632FE0();
  *v0 = v2;
}

void sub_1AC631200()
{
  v1 = *v0;
  sub_1AC632FE0();
  *v0 = v2;
}

void sub_1AC631258()
{
  v1 = *v0;
  sub_1AC632C44();
  *v0 = v2;
}

void sub_1AC63129C()
{
  v1 = *v0;
  sub_1AC632C44();
  *v0 = v2;
}

void sub_1AC6312E0()
{
  v1 = *v0;
  sub_1AC631AB0();
  *v0 = v2;
}

void sub_1AC631324()
{
  v1 = *v0;
  sub_1AC632FE0();
  *v0 = v2;
}

uint64_t sub_1AC63137C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1AC631B7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC63139C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1AC631C8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC6313BC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1AC631D9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC6313DC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1AC631EAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1AC6313FC()
{
  v1 = *v0;
  sub_1AC632FE0();
  *v0 = v2;
}

uint64_t sub_1AC631454(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1AC631FB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1AC631474()
{
  v1 = *v0;
  sub_1AC632B3C();
  *v0 = v2;
}

uint64_t sub_1AC6314B8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1AC6320C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC6314D8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1AC6321C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AC6314F8(void *a1, int64_t a2, char a3)
{
  result = sub_1AC6322D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AC631518(void *a1, int64_t a2, char a3)
{
  result = sub_1AC6323E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC631538(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1AC6324F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1AC631558()
{
  v1 = *v0;
  sub_1AC632C44();
  *v0 = v2;
}

void sub_1AC63159C()
{
  v1 = *v0;
  sub_1AC632C44();
  *v0 = v2;
}

uint64_t sub_1AC6315E0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1AC632600(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC631600(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1AC632700(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC631620(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1AC632804(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AC631660(void *a1, int64_t a2, char a3)
{
  result = sub_1AC63291C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AC631680(void *a1, int64_t a2, char a3)
{
  result = sub_1AC632A2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1AC6316C0()
{
  v1 = *v0;
  sub_1AC632B3C();
  *v0 = v2;
}

void sub_1AC631704()
{
  v1 = *v0;
  sub_1AC632FE0();
  *v0 = v2;
}

void sub_1AC63175C()
{
  v1 = *v0;
  sub_1AC632C44();
  *v0 = v2;
}

size_t sub_1AC6317A0(size_t a1, int64_t a2, char a3)
{
  result = sub_1AC632D04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC6317C0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1AC632ED0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1AC6317E0()
{
  v1 = *v0;
  sub_1AC632FE0();
  *v0 = v2;
}

uint64_t sub_1AC631838(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1AC633170(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1AC631858()
{
  v1 = *v0;
  OUTLINED_FUNCTION_67_3();
  sub_1AC632FE0();
  *v0 = v2;
}

uint64_t sub_1AC6318A0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BEB0, &qword_1AC7A91A0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1AC5D93E8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1AC6319A0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD80, &unk_1AC7A81A0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1AC706D1C(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD88, &qword_1AC7B1D40);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1AC631AB0()
{
  OUTLINED_FUNCTION_133();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_131_0(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_156_0(v10, v11, v12, v13, v14, v15);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v3;
      v16[3] = 2 * ((v17 - 32) / 8);
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_127();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_9;
      }
    }

    memcpy(v16 + 4, (v0 + 32), 8 * v3);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1AC631B7C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C508, &qword_1AC7A91B0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1AC706D20((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C510, &qword_1AC7A91B8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC631C8C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C518, &qword_1AC7A91C0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1AC706D20((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C520, &qword_1AC7A91C8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC631D9C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD20, &qword_1AC7A8150);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1AC706D20((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD28, &qword_1AC7A8158);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC631EAC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C440, &qword_1AC7A90A8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 160);
      if (v5)
      {
LABEL_13:
        sub_1AC703F10((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC631FB4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C448, &qword_1AC7A90B8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1AC706D20((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C450, &qword_1AC7A90C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC6320C4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C4C8, &qword_1AC7AFBE0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1AC703F78((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC6321C8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C4D0, &unk_1AC7A9160);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1AC706D20((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C650, &unk_1AC7AB400);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1AC6322D8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C010, &unk_1AC7A9210);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1AC706D1C(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFA8, &qword_1AC7A83B8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1AC6323E8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFB0, &unk_1AC7A9220);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1AC706D1C(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCD0, &qword_1AC7AB4A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC6324F8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C478, &unk_1AC7A90F0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 72);
      if (v5)
      {
LABEL_13:
        sub_1AC703FBC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC632600(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C4B0, &qword_1AC7A9138);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1AC5D9408((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC632700(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCD8, &qword_1AC7A8100);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1AC5D9428((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 24 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC632804(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF78, &unk_1AC7A9270);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1AC703FE4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF80, &qword_1AC7A8390);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1AC63291C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C558, qword_1AC7A9238);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1AC706D1C(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCD0, &qword_1AC7AB4A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1AC632A2C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF68, &unk_1AC7A9280);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1AC706D1C(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF70, &unk_1AC7A8380);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1AC632B3C()
{
  OUTLINED_FUNCTION_133();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_131_0(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_156_0(v10, v11, v12, v13, v14, v15);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v3;
      v16[3] = 2 * ((v17 - 32) / 16);
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_127();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_9;
      }
    }

    memcpy(v16 + 4, (v0 + 32), 16 * v3);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1AC632C44()
{
  OUTLINED_FUNCTION_133();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_2();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_131_0(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_156_0(v10, v11, v12, v13, v14, v15);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v3;
      v16[3] = 2 * v17 - 64;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_127();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_9;
      }
    }

    memcpy(v16 + 4, (v0 + 32), v3);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_1AC632D04(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C548, &qword_1AC7A91F8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C550, &unk_1AC7A9200) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C550, &unk_1AC7A9200) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1AC704108(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1AC632ED0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C540, &unk_1AC7A91E8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1AC706D20((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B948, &unk_1AC7A73C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1AC632FE0()
{
  OUTLINED_FUNCTION_104();
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v11 = v0;
  if (v2)
  {
    OUTLINED_FUNCTION_13_2();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_51_0();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v12 = v1;
  }

  v15 = *(v10 + 16);
  if (v12 <= v15)
  {
    v16 = *(v10 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_156_0(v0, v1, v2, v3, v4, v5);
  v17 = v9(0);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(*(v9(0) - 8) + 80);
  OUTLINED_FUNCTION_89_0();
  if (v11)
  {
    v7(v10 + v26, v15, v22 + v26);
    *(v10 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC633170(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C490, &qword_1AC7A9118);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1AC706D20((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C498, &qword_1AC7A9120);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC633280()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_39();
  v6(v5);
  return v0;
}

uint64_t sub_1AC6332D8()
{
  v1 = OUTLINED_FUNCTION_25();
  v3 = v2(v1);
  OUTLINED_FUNCTION_80(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1AC63332C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC633390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC633400(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_93();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AC633444()
{
  OUTLINED_FUNCTION_78_0();
  v3 = sub_1AC61C24C(v2);
  MEMORY[0x1B26E9A40](v3);
  result = sub_1AC61C24C(v0);
  if (result)
  {
    v5 = result;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v5; ++i)
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1B26E95B0](i, v0);
        }

        else
        {
          v7 = *(v0 + 8 * i + 32);
        }

        (*(*v7 + 96))(v1);
      }
    }
  }

  return result;
}

void sub_1AC63350C()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_24_3(v2, v3);
  if (v0)
  {
    v4 = 0;
    v5 = v1 + 32;
    do
    {
      v6 = (v5 + 24 * v4);
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[2];

      sub_1AC7A0048();
      MEMORY[0x1B26E9A40](*(v9 + 16));
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = (v9 + 40);
        do
        {
          v12 = *(v11 - 1);
          v13 = *v11;

          sub_1AC7A0048();

          v11 += 2;
          --v10;
        }

        while (v10);
      }

      ++v4;
    }

    while (v4 != v0);
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC6335D8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24_3(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      OUTLINED_FUNCTION_94_1();
      sub_1AC7A0048();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_1AC63363C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24_3(a1, a2);
  if (v2)
  {
    v4 = (v3 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v4 += 3;

      OUTLINED_FUNCTION_94_1();
      sub_1AC7A0048();
      MEMORY[0x1B26E9A40](v7);

      --v2;
    }

    while (v2);
  }
}

void sub_1AC633738(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24_3(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 == 0.0)
      {
        v6 = 0.0;
      }

      MEMORY[0x1B26E9A70](*&v6);
      --v2;
    }

    while (v2);
  }
}

void sub_1AC6337D8()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v2 = sub_1AC79F5C8();
  v3 = OUTLINED_FUNCTION_40(v2);
  v44 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6();
  v9 = v8 - v7;
  v10 = type metadata accessor for TranscriptionSegment();
  v11 = OUTLINED_FUNCTION_40(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v18 = v17 - v16;
  v19 = *(v1 + 16);
  MEMORY[0x1B26E9A40](v19);
  v51 = v19;
  if (v19)
  {
    v20 = 0;
    v48 = v10[6];
    v49 = v10[5];
    v21 = v10[7];
    v22 = *(v13 + 80);
    OUTLINED_FUNCTION_89_0();
    v47 = v23;
    v45 = v9;
    v46 = *(v13 + 72);
    v50 = v2;
    v53 = v18;
    do
    {
      v52 = v20;
      OUTLINED_FUNCTION_1_4();
      sub_1AC633280();
      OUTLINED_FUNCTION_37_2();
      sub_1AC633400(&qword_1EB56BD58, v24);
      sub_1AC79FE58();
      v25 = *(v18 + v49);
      MEMORY[0x1B26E9A40](*(v25 + 16));
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = *(v44 + 80);
        OUTLINED_FUNCTION_89_0();
        v29 = v25 + v28;
        v31 = *(v30 + 72);
        v32 = *(v30 + 16);
        do
        {
          v32(v9, v29, v2);
          sub_1AC79FE58();
          (*(v44 + 8))(v9, v2);
          v29 += v31;
          --v26;
        }

        while (v26);
      }

      v33 = *(v53 + v48);
      MEMORY[0x1B26E9A40](*(v33 + 16));
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = (v33 + 32);
        do
        {
          memcpy(v55, v35, sizeof(v55));
          memcpy(v57, v35, sizeof(v57));
          sub_1AC637BCC(v55, v56);
          TranscriptionToken.hash(into:)();
          memcpy(v56, v57, sizeof(v56));
          sub_1AC637C28(v56);
          v35 += 160;
          --v34;
        }

        while (v34);
      }

      v36 = *(v53 + v47);
      MEMORY[0x1B26E9A40](*(v36 + 16));
      v37 = *(v36 + 16);
      v9 = v45;
      if (v37)
      {
        v38 = 0;
        v39 = v36 + 32;
        do
        {
          v40 = *(v39 + 8 * v38);
          MEMORY[0x1B26E9A40](*(v40 + 16));
          v41 = *(v40 + 16);
          if (v41)
          {

            v42 = v41 - 1;
            for (i = 32; ; i += 160)
            {
              memcpy(v55, (v40 + i), sizeof(v55));
              memcpy(v57, (v40 + i), sizeof(v57));
              sub_1AC637BCC(v55, &v54);
              TranscriptionToken.hash(into:)();
              memcpy(v56, v57, sizeof(v56));
              sub_1AC637C28(v56);
              if (!v42)
              {
                break;
              }

              --v42;
            }
          }

          ++v38;
        }

        while (v38 != v37);
      }

      v18 = v53;
      v20 = v52 + 1;
      OUTLINED_FUNCTION_0_3();
      sub_1AC6332D8();
      v2 = v50;
    }

    while (v52 + 1 != v51);
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC633B88(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_68_2(a1, a2);
  if (v2)
  {
    v4 = (a2 + 32);
    do
    {
      memcpy(v5, v4, sizeof(v5));
      memcpy(__dst, v4, sizeof(__dst));
      sub_1AC637BCC(v5, v6);
      TranscriptionToken.hash(into:)();
      memcpy(v6, __dst, sizeof(v6));
      sub_1AC637C28(v6);
      v4 += 160;
      --v2;
    }

    while (v2);
  }
}

void sub_1AC633C28()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  OUTLINED_FUNCTION_68_2(v3, v1);
  if (v0)
  {
    v4 = 0;
    v5 = v2 + 32;
    do
    {
      v6 = *(v5 + 8 * v4);
      MEMORY[0x1B26E9A40](*(v6 + 16));
      v7 = *(v6 + 16);
      if (v7)
      {

        v8 = v7 - 1;
        for (i = 32; ; i += 160)
        {
          memcpy(__dst, (v6 + i), sizeof(__dst));
          memcpy(v13, (v6 + i), sizeof(v13));
          sub_1AC637BCC(__dst, &v10);
          TranscriptionToken.hash(into:)();
          memcpy(v12, v13, sizeof(v12));
          sub_1AC637C28(v12);
          if (!v8)
          {
            break;
          }

          --v8;
        }
      }

      ++v4;
    }

    while (v4 != v0);
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC633D0C()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_24_3(v2, v3);
  if (v0)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      sub_1AC7A0048();

      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC633E98()
{
  OUTLINED_FUNCTION_78_0();
  v2 = sub_1AC61C24C(v1);
  MEMORY[0x1B26E9A40](v2);
  v3 = sub_1AC61C24C(v0);
  if (v3)
  {
    v4 = v3;
    if (v3 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v4; ++i)
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1B26E95B0](i, v0);
        }

        else
        {
          v6 = *(v0 + 8 * i + 32);
        }

        v7 = v6;
        sub_1AC7A0768();
      }
    }
  }
}

void sub_1AC633F80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_68_2(a1, a2);
  if (v3)
  {
    v6 = *(a3(0) - 8);
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    v9 = OUTLINED_FUNCTION_16_2();
    sub_1AC633400(v9, v10);
    do
    {
      sub_1AC79FE58();
      v7 += v8;
      --v3;
    }

    while (v3);
  }
}

void sub_1AC63405C()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_25();
  v3 = type metadata accessor for CommandRecognizer.Argument(v2);
  v4 = OUTLINED_FUNCTION_40(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v11 = (v10 - v9);
  v12 = *(v1 + 16);
  MEMORY[0x1B26E9A40](v12);
  if (v12)
  {
    v13 = *(v3 + 24);
    v14 = *(v3 + 28);
    v15 = *(v6 + 80);
    OUTLINED_FUNCTION_89_0();
    v17 = v1 + v16;
    v18 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_124_0();
      sub_1AC633280();
      MEMORY[0x1B26E9A40](*v11);
      v19 = *(v11 + 1);
      v20 = *(v11 + 2);
      sub_1AC7A0048();
      sub_1AC79FBA8();
      sub_1AC633400(&qword_1EB56C538, MEMORY[0x1E6969B50]);
      OUTLINED_FUNCTION_118_1();
      sub_1AC79FE58();
      OUTLINED_FUNCTION_118_1();
      sub_1AC79FE58();
      sub_1AC6332D8();
      v17 += v18;
      --v12;
    }

    while (v12);
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC6341DC()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_24_3(v2, v3);
  if (v0)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      sub_1AC7A0048();

      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC634294(const void *a1, uint64_t a2)
{
  v5 = a2 + 64;
  v4 = *(a2 + 64);
  v6 = *(a2 + 32);
  OUTLINED_FUNCTION_117_0();
  v9 = v8 & v7;
  OUTLINED_FUNCTION_108_1();

  v11 = 0;
  v12 = 0;
  if (!v9)
  {
    goto LABEL_3;
  }

  do
  {
    v24 = v11;
LABEL_7:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a2 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(a2 + 56) + 8 * v14);
    memcpy(__dst, a1, sizeof(__dst));

    sub_1AC7A0048();

    MEMORY[0x1B26E9A40](*(v18 + 16));
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 40);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;

        sub_1AC7A0048();

        v20 += 2;
        --v19;
      }

      while (v19);
    }

    v9 &= v9 - 1;

    result = sub_1AC7A0EC8();
    v11 = result ^ v24;
  }

  while (v9);
LABEL_3:
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v2)
    {

      return MEMORY[0x1B26E9A40](v11);
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v24 = v11;
      v12 = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC634414(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v3 = *(a2 + 64);
  v5 = *(a2 + 32);
  OUTLINED_FUNCTION_117_0();
  v8 = v7 & v6;
  OUTLINED_FUNCTION_108_1();

  v10 = 0;
  v11 = 0;
  if (!v8)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v8)));
    v14 = (*(a2 + 48) + v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (*(a2 + 56) + v13);
    v19 = *v17;
    v18 = v17[1];

    if (!v15)
    {
LABEL_17:

      return MEMORY[0x1B26E9A40](v10);
    }

    memcpy(__dst, a1, sizeof(__dst));
    sub_1AC7A0048();

    MEMORY[0x1B26E9A40](*(v19 + 16));
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 32);
      do
      {
        v22 = *v21++;
        v23 = v22;
        if (v22 == 0.0)
        {
          v23 = 0.0;
        }

        MEMORY[0x1B26E9A70](*&v23);
        --v20;
      }

      while (v20);
    }

    v8 &= v8 - 1;
    if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v24 = v18;
    }

    else
    {
      v24 = 0;
    }

    MEMORY[0x1B26E9A70](v24);

    result = sub_1AC7A0EC8();
    v10 ^= result;
  }

  while (v8);
LABEL_2:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v2)
    {
      goto LABEL_17;
    }

    v8 = *(v4 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC63459C(const void *a1, uint64_t a2)
{
  v5 = a2 + 64;
  v4 = *(a2 + 64);
  v6 = *(a2 + 32);
  OUTLINED_FUNCTION_117_0();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;

  v13 = 0;
  v14 = 0;
  if (!v9)
  {
    goto LABEL_3;
  }

  do
  {
    v15 = v14;
LABEL_7:
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = v16 | (v15 << 6);
    v18 = (*(a2 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(*(a2 + 56) + 8 * v17);
    memcpy(__dst, a1, sizeof(__dst));

    sub_1AC7A0048();

    if (v21 == 0.0)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = v21;
    }

    MEMORY[0x1B26E9A70](*&v22);
    result = sub_1AC7A0EC8();
    v13 ^= result;
  }

  while (v9);
LABEL_3:
  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      return MEMORY[0x1B26E9A40](v13);
    }

    v9 = *(v5 + 8 * v15);
    ++v14;
    if (v9)
    {
      v14 = v15;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC6346E0(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v3 = *(a2 + 64);
  v5 = *(a2 + 32);
  OUTLINED_FUNCTION_117_0();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v12 = 0;
  for (i = 0; v8; v12 ^= result)
  {
    v14 = i;
LABEL_7:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = (v14 << 10) | (16 * v15);
    v17 = (*(a2 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(a2 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    memcpy(__dst, a1, sizeof(__dst));

    sub_1AC7A0048();

    sub_1AC7A0048();

    result = sub_1AC7A0EC8();
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return MEMORY[0x1B26E9A40](v12);
    }

    v8 = *(v4 + 8 * v14);
    ++i;
    if (v8)
    {
      i = v14;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC63482C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AC63486C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1AC6348F8()
{
  result = qword_1EB56C368;
  if (!qword_1EB56C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C368);
  }

  return result;
}

unint64_t sub_1AC6349DC()
{
  result = qword_1EB56C388;
  if (!qword_1EB56C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C388);
  }

  return result;
}

unint64_t sub_1AC634A78()
{
  result = qword_1EB56C3A0;
  if (!qword_1EB56C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C3A0);
  }

  return result;
}

unint64_t sub_1AC634B14()
{
  result = qword_1EB56C3B8;
  if (!qword_1EB56C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C3B8);
  }

  return result;
}

unint64_t sub_1AC634B6C()
{
  result = qword_1EB56C3C0;
  if (!qword_1EB56C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C3C0);
  }

  return result;
}

unint64_t sub_1AC634BC4()
{
  result = qword_1EB56C3C8;
  if (!qword_1EB56C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C3C8);
  }

  return result;
}

uint64_t sub_1AC634C40(uint64_t a1)
{
  *(a1 + 8) = sub_1AC633400(&qword_1EB56C3D0, type metadata accessor for DictationTranscriber);
  result = sub_1AC633400(&qword_1EB56C3D8, type metadata accessor for DictationTranscriber);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AC634CE4(uint64_t a1)
{
  result = sub_1AC633400(&qword_1EB56C3D8, type metadata accessor for DictationTranscriber);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC634D3C(uint64_t a1)
{
  result = sub_1AC633400(&qword_1EB56C3D0, type metadata accessor for DictationTranscriber);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC634DE4()
{
  result = sub_1AC79FB18();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for DictationTranscriber.ModelOptions(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DictationTranscriber.Preset(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v5 = a1;
    v6 = a2[2];
    a1[1] = a2[1];
    a1[2] = v6;
    a1[3] = a2[3];
    v7 = *(a3 + 32);
    v8 = a1 + v7;
    v9 = a2 + v7;
    v10 = *(a2 + v7 + 8);
    *v8 = *(a2 + v7);
    *(v8 + 1) = v10;
    v11 = type metadata accessor for DictationTranscriber.ModelOptions(0);
    v12 = v11[5];
    v13 = sub_1AC79F7F8();

    if (__swift_getEnumTagSinglePayload(&v9[v12], 1, v13))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
      memcpy(&v8[v12], &v9[v12], *(*(v14 - 8) + 64));
    }

    else
    {
      (*(*(v13 - 8) + 16))(&v8[v12], &v9[v12], v13);
      __swift_storeEnumTagSinglePayload(&v8[v12], 0, 1, v13);
    }

    v15 = v11[6];
    v16 = &v8[v15];
    v17 = &v9[v15];
    v18 = *(v17 + 1);
    *v16 = *v17;
    *(v16 + 1) = v18;
    *&v8[v11[7]] = *&v9[v11[7]];
    v8[v11[8]] = v9[v11[8]];
    *&v8[v11[9]] = *&v9[v11[9]];
    *&v8[v11[10]] = *&v9[v11[10]];
    v8[v11[11]] = v9[v11[11]];
    *&v8[v11[12]] = *&v9[v11[12]];
  }

  return v5;
}

uint64_t destroy for DictationTranscriber.Preset(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];

  v6 = a1[2];

  v7 = a1[3];

  v8 = a1 + *(a2 + 32);
  v9 = *(v8 + 1);

  v10 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  v11 = v10[5];
  v12 = sub_1AC79F7F8();
  if (!__swift_getEnumTagSinglePayload(&v8[v11], 1, v12))
  {
    (*(*(v12 - 8) + 8))(&v8[v11], v12);
  }

  v13 = *&v8[v10[6] + 8];

  v14 = *&v8[v10[7]];

  v15 = *&v8[v10[9]];

  v16 = *&v8[v10[10]];

  v17 = *&v8[v10[12]];
}

void *initializeWithCopy for DictationTranscriber.Preset(void *a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = *(a3 + 32);
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = *(a2 + v5 + 8);
  *v6 = *(a2 + v5);
  *(v6 + 1) = v8;
  v9 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  v10 = v9[5];
  v11 = sub_1AC79F7F8();

  if (__swift_getEnumTagSinglePayload(&v7[v10], 1, v11))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&v6[v10], &v7[v10], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(*(v11 - 8) + 16))(&v6[v10], &v7[v10], v11);
    __swift_storeEnumTagSinglePayload(&v6[v10], 0, 1, v11);
  }

  v13 = v9[6];
  v14 = &v6[v13];
  v15 = &v7[v13];
  v16 = *(v15 + 1);
  *v14 = *v15;
  *(v14 + 1) = v16;
  *&v6[v9[7]] = *&v7[v9[7]];
  v6[v9[8]] = v7[v9[8]];
  *&v6[v9[9]] = *&v7[v9[9]];
  *&v6[v9[10]] = *&v7[v9[10]];
  v6[v9[11]] = v7[v9[11]];
  *&v6[v9[12]] = *&v7[v9[12]];

  return a1;
}

uint64_t *assignWithCopy for DictationTranscriber.Preset(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a1[1];
  a1[1] = a2[1];

  v8 = a1[2];
  a1[2] = a2[2];

  v9 = a1[3];
  a1[3] = a2[3];

  v10 = *(a3 + 32);
  v11 = a1 + v10;
  v12 = a2 + v10;
  *v11 = *(a2 + v10);
  v13 = *(a1 + v10 + 8);
  *(v11 + 1) = *(a2 + v10 + 8);

  v14 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  v15 = v14[5];
  v16 = sub_1AC79F7F8();
  LODWORD(v9) = __swift_getEnumTagSinglePayload(&v11[v15], 1, v16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v12[v15], 1, v16);
  if (!v9)
  {
    v18 = *(v16 - 8);
    if (!EnumTagSinglePayload)
    {
      (*(v18 + 24))(&v11[v15], &v12[v15], v16);
      goto LABEL_7;
    }

    (*(v18 + 8))(&v11[v15], v16);
    goto LABEL_6;
  }

  if (EnumTagSinglePayload)
  {
LABEL_6:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&v11[v15], &v12[v15], *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v16 - 8) + 16))(&v11[v15], &v12[v15], v16);
  __swift_storeEnumTagSinglePayload(&v11[v15], 0, 1, v16);
LABEL_7:
  v20 = v14[6];
  v21 = &v11[v20];
  v22 = &v12[v20];
  *v21 = *v22;
  v23 = *(v21 + 1);
  *(v21 + 1) = *(v22 + 1);

  v24 = v14[7];
  v25 = *&v11[v24];
  *&v11[v24] = *&v12[v24];

  v11[v14[8]] = v12[v14[8]];
  v26 = v14[9];
  v27 = *&v11[v26];
  *&v11[v26] = *&v12[v26];

  v28 = v14[10];
  v29 = *&v11[v28];
  *&v11[v28] = *&v12[v28];

  v11[v14[11]] = v12[v14[11]];
  v30 = v14[12];
  v31 = *&v11[v30];
  *&v11[v30] = *&v12[v30];

  return a1;
}

_OWORD *initializeWithTake for DictationTranscriber.Preset(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 32);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *(a1 + v5) = *(a2 + v5);
  v8 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  v9 = v8[5];
  v10 = sub_1AC79F7F8();
  if (__swift_getEnumTagSinglePayload(&v7[v9], 1, v10))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&v6[v9], &v7[v9], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(*(v10 - 8) + 32))(&v6[v9], &v7[v9], v10);
    __swift_storeEnumTagSinglePayload(&v6[v9], 0, 1, v10);
  }

  *&v6[v8[6]] = *&v7[v8[6]];
  *&v6[v8[7]] = *&v7[v8[7]];
  v6[v8[8]] = v7[v8[8]];
  *&v6[v8[9]] = *&v7[v8[9]];
  *&v6[v8[10]] = *&v7[v8[10]];
  v6[v8[11]] = v7[v8[11]];
  *&v6[v8[12]] = *&v7[v8[12]];
  return a1;
}

uint64_t *assignWithTake for DictationTranscriber.Preset(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a1[1];
  a1[1] = a2[1];

  v8 = a1[2];
  a1[2] = a2[2];

  v9 = a1[3];
  a1[3] = a2[3];

  v10 = *(a3 + 32);
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = *(a2 + v10 + 8);
  v14 = *(a1 + v10 + 8);
  *v11 = *(a2 + v10);
  *(v11 + 1) = v13;

  v15 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  v16 = v15[5];
  v17 = sub_1AC79F7F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v11[v16], 1, v17);
  v19 = __swift_getEnumTagSinglePayload(&v12[v16], 1, v17);
  if (!EnumTagSinglePayload)
  {
    v20 = *(v17 - 8);
    if (!v19)
    {
      (*(v20 + 40))(&v11[v16], &v12[v16], v17);
      goto LABEL_7;
    }

    (*(v20 + 8))(&v11[v16], v17);
    goto LABEL_6;
  }

  if (v19)
  {
LABEL_6:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&v11[v16], &v12[v16], *(*(v21 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v17 - 8) + 32))(&v11[v16], &v12[v16], v17);
  __swift_storeEnumTagSinglePayload(&v11[v16], 0, 1, v17);
LABEL_7:
  v22 = v15[6];
  v23 = &v11[v22];
  v24 = &v12[v22];
  v26 = *v24;
  v25 = *(v24 + 1);
  v27 = *(v23 + 1);
  *v23 = v26;
  *(v23 + 1) = v25;

  v28 = v15[7];
  v29 = *&v11[v28];
  *&v11[v28] = *&v12[v28];

  v11[v15[8]] = v12[v15[8]];
  v30 = v15[9];
  v31 = *&v11[v30];
  *&v11[v30] = *&v12[v30];

  v32 = v15[10];
  v33 = *&v11[v32];
  *&v11[v32] = *&v12[v32];

  v11[v15[11]] = v12[v15[11]];
  v34 = v15[12];
  v35 = *&v11[v34];
  *&v11[v34] = *&v12[v34];

  return a1;
}

uint64_t sub_1AC635A5C()
{
  result = type metadata accessor for DictationTranscriber.ModelOptions(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void destroy for DictationTranscriber.ContentHint(void **a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
  }
}

void **assignWithCopy for DictationTranscriber.ContentHint(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 >= 3)
  {
    if (v4 >= 3)
    {
      *a1 = v4;
      v7 = v4;

      return a1;
    }

    v4 = *a2;
    goto LABEL_6;
  }

  if (v4 < 3)
  {
LABEL_6:
    *a1 = v4;
    return a1;
  }

  *a1 = v4;
  v5 = v4;
  return a1;
}

void **assignWithTake for DictationTranscriber.ContentHint(void **a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 >= 3)
  {
    if (v4 >= 3)
    {
      *a1 = v4;

      return a1;
    }
  }

  *a1 = v4;
  return a1;
}

uint64_t getEnumTagSinglePayload for DictationTranscriber.ContentHint(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFD && *(a1 + 8))
    {
      v2 = *a1 + 2147483644;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 3;
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

uint64_t storeEnumTagSinglePayload for DictationTranscriber.ContentHint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for DictationTranscriber.ModelOptions(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = a3[5];
    v9 = sub_1AC79F7F8();

    if (__swift_getEnumTagSinglePayload(&a2[v8], 1, v9))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
      memcpy(&v4[v8], &a2[v8], *(*(v10 - 8) + 64));
    }

    else
    {
      (*(*(v9 - 8) + 16))(&v4[v8], &a2[v8], v9);
      __swift_storeEnumTagSinglePayload(&v4[v8], 0, 1, v9);
    }

    v12 = a3[6];
    v13 = a3[7];
    v14 = &v4[v12];
    v15 = &a2[v12];
    v16 = *(v15 + 1);
    *v14 = *v15;
    *(v14 + 1) = v16;
    *&v4[v13] = *&a2[v13];
    v17 = a3[9];
    v4[a3[8]] = a2[a3[8]];
    *&v4[v17] = *&a2[v17];
    v18 = a3[11];
    *&v4[a3[10]] = *&a2[a3[10]];
    v4[v18] = a2[v18];
    *&v4[a3[12]] = *&a2[a3[12]];
  }

  return v4;
}

uint64_t destroy for DictationTranscriber.ModelOptions(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);

  v5 = a2[5];
  v6 = sub_1AC79F7F8();
  if (!__swift_getEnumTagSinglePayload(a1 + v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(a1 + v5, v6);
  }

  v7 = *(a1 + a2[6] + 8);

  v8 = *(a1 + a2[7]);

  v9 = *(a1 + a2[9]);

  v10 = *(a1 + a2[10]);

  v11 = *(a1 + a2[12]);
}

char *initializeWithCopy for DictationTranscriber.ModelOptions(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = sub_1AC79F7F8();

  if (__swift_getEnumTagSinglePayload(&a2[v7], 1, v8))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&a1[v7], &a2[v7], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
    __swift_storeEnumTagSinglePayload(&a1[v7], 0, 1, v8);
  }

  v10 = a3[6];
  v11 = a3[7];
  v12 = &a1[v10];
  v13 = &a2[v10];
  v14 = *(v13 + 1);
  *v12 = *v13;
  *(v12 + 1) = v14;
  *&a1[v11] = *&a2[v11];
  v15 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  *&a1[v15] = *&a2[v15];
  v16 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  a1[v16] = a2[v16];
  *&a1[a3[12]] = *&a2[a3[12]];

  return a1;
}

char *assignWithCopy for DictationTranscriber.ModelOptions(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v7 = a3[5];
  v8 = sub_1AC79F7F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&a1[v7], 1, v8);
  v10 = __swift_getEnumTagSinglePayload(&a2[v7], 1, v8);
  if (!EnumTagSinglePayload)
  {
    v11 = *(v8 - 8);
    if (!v10)
    {
      (*(v11 + 24))(&a1[v7], &a2[v7], v8);
      goto LABEL_7;
    }

    (*(v11 + 8))(&a1[v7], v8);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&a1[v7], &a2[v7], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
  __swift_storeEnumTagSinglePayload(&a1[v7], 0, 1, v8);
LABEL_7:
  v13 = a3[6];
  v14 = &a1[v13];
  v15 = &a2[v13];
  *v14 = *v15;
  v16 = *(v14 + 1);
  *(v14 + 1) = *(v15 + 1);

  v17 = a3[7];
  v18 = *&a1[v17];
  *&a1[v17] = *&a2[v17];

  a1[a3[8]] = a2[a3[8]];
  v19 = a3[9];
  v20 = *&a1[v19];
  *&a1[v19] = *&a2[v19];

  v21 = a3[10];
  v22 = *&a1[v21];
  *&a1[v21] = *&a2[v21];

  a1[a3[11]] = a2[a3[11]];
  v23 = a3[12];
  v24 = *&a2[v23];
  v25 = *&a1[v23];
  *&a1[v23] = v24;

  return a1;
}

char *initializeWithTake for DictationTranscriber.ModelOptions(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1AC79F7F8();
  if (__swift_getEnumTagSinglePayload(&a2[v6], 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&a1[v6], &a2[v6], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
    __swift_storeEnumTagSinglePayload(&a1[v6], 0, 1, v7);
  }

  v9 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v9] = *&a2[v9];
  v10 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  *&a1[v10] = *&a2[v10];
  v11 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  a1[v11] = a2[v11];
  *&a1[a3[12]] = *&a2[a3[12]];
  return a1;
}

char *assignWithTake for DictationTranscriber.ModelOptions(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = a3[5];
  v9 = sub_1AC79F7F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&a1[v8], 1, v9);
  v11 = __swift_getEnumTagSinglePayload(&a2[v8], 1, v9);
  if (!EnumTagSinglePayload)
  {
    v12 = *(v9 - 8);
    if (!v11)
    {
      (*(v12 + 40))(&a1[v8], &a2[v8], v9);
      goto LABEL_7;
    }

    (*(v12 + 8))(&a1[v8], v9);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&a1[v8], &a2[v8], *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
  __swift_storeEnumTagSinglePayload(&a1[v8], 0, 1, v9);
LABEL_7:
  v14 = a3[6];
  v15 = &a1[v14];
  v16 = &a2[v14];
  v18 = *v16;
  v17 = *(v16 + 1);
  v19 = *(v15 + 1);
  *v15 = v18;
  *(v15 + 1) = v17;

  v20 = a3[7];
  v21 = *&a1[v20];
  *&a1[v20] = *&a2[v20];

  v22 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  v23 = *&a1[v22];
  *&a1[v22] = *&a2[v22];

  v24 = a3[10];
  v25 = *&a1[v24];
  *&a1[v24] = *&a2[v24];

  v26 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  v27 = *&a1[v26];
  *&a1[v26] = *&a2[v26];

  return a1;
}

void sub_1AC636604()
{
  sub_1AC622E1C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

uint64_t getEnumTagSinglePayload for DictationTranscriber.TranscriptionOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DictationTranscriber.TranscriptionOption(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DictationTranscriber.ReportingOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DictationTranscriber.ReportingOption(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DictationTranscriber.ResultAttributeOption(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DictationTranscriber.ResultAttributeOption(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s6ResultVwcp(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;

  return a1;
}

uint64_t _s6ResultVwca(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  v3 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t _s6ResultVwta(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v3 = *(a2 + 72);
  v4 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;

  return a1;
}

uint64_t _s6ResultVwet(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t _s6ResultVwst(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

uint64_t _s18MultisegmentResultVwxx(void *a1)
{
  v2 = a1[9];

  v3 = a1[10];

  v4 = a1[11];

  v5 = a1[12];

  if (a1[20])
  {

    v6 = a1[21];
  }

  v7 = a1[26];
}

uint64_t _s18MultisegmentResultVwcp(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  v6 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v6;
  v7 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v7;
  *(a1 + 96) = *(a2 + 96);
  v9 = a2 + 160;
  v8 = *(a2 + 160);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 140) = *(a2 + 140);

  if (v8)
  {
    v11 = *(a2 + 168);
    v10 = *(a2 + 176);
    *(a1 + 160) = v8;
    *(a1 + 168) = v11;
    *(a1 + 176) = v10;
  }

  else
  {
    *(a1 + 160) = *v9;
    *(a1 + 176) = *(v9 + 16);
  }

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  v12 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v12;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 256) = *(a2 + 256);
  v13 = *(a2 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v13;

  return a1;
}

uint64_t _s18MultisegmentResultVwca(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);

  v5 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);

  v6 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  v7 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);

  v8 = (a1 + 160);
  v9 = *(a1 + 160);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  v11 = (a2 + 160);
  v10 = *(a2 + 160);
  if (v9)
  {
    if (v10)
    {
      *(a1 + 160) = v10;

      v12 = *(a1 + 168);
      *(a1 + 168) = *(a2 + 168);

      *(a1 + 176) = *(a2 + 176);
    }

    else
    {
      sub_1AC6370B8(a1 + 160);
      v13 = *(a2 + 176);
      *v8 = *v11;
      *(a1 + 176) = v13;
    }
  }

  else if (v10)
  {
    *(a1 + 160) = v10;
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
  }

  else
  {
    v14 = *v11;
    *(a1 + 176) = *(a2 + 176);
    *v8 = v14;
  }

  v15 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v15;
  *(a1 + 200) = *(a2 + 200);
  v16 = *(a1 + 208);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 228) = *(a2 + 228);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  v17 = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 248) = v17;
  return a1;
}

uint64_t _s18MultisegmentResultVwta(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 72);
  v5 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v4;

  v6 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);

  v7 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  v8 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);

  v9 = *(a2 + 160);
  v10 = *(a1 + 160);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 148) = *(a2 + 148);
  if (!v10)
  {
    goto LABEL_5;
  }

  if (!v9)
  {
    sub_1AC6370B8(a1 + 160);
LABEL_5:
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    goto LABEL_6;
  }

  *(a1 + 160) = v9;

  v11 = *(a1 + 168);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
LABEL_6:
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  v12 = *(a2 + 208);
  v13 = *(a1 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v12;

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  v14 = *(a2 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v14;
  *(a1 + 256) = *(a2 + 256);
  return a1;
}

uint64_t _s18MultisegmentResultVwet(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 257))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t _s18MultisegmentResultVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *(result + 256) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 257) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 257) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DictationTranscriber.ModelOptions.TaskName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DictationTranscriber.ModelOptions.TaskName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}